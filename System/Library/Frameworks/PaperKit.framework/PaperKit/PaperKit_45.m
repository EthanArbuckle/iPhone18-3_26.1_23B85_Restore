uint64_t closure #1 in CanvasElementViewController.updateViewForPaper(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[5] = type metadata accessor for MainActor();
  v5[6] = static MainActor.shared.getter();
  v7 = swift_task_alloc();
  v5[7] = v7;
  *v7 = v5;
  v7[1] = closure #1 in CanvasElementViewController.updateViewForPaper(_:);

  return closure #1 in Image.imageSize(applyingCrop:)(a5);
}

uint64_t closure #1 in CanvasElementViewController.updateViewForPaper(_:)(double a1, double a2)
{
  v6 = *v3;
  *(*v3 + 64) = v2;

  if (v2)
  {

    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
    v10 = closure #1 in CanvasElementViewController.updateViewForPaper(_:);
  }

  else
  {
    *(v6 + 72) = a2;
    *(v6 + 80) = a1;
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v11;
    v10 = closure #1 in CanvasElementViewController.updateViewForPaper(_:);
  }

  return MEMORY[0x1EEE6DFA0](v10, v7, v9);
}

uint64_t closure #1 in CanvasElementViewController.updateViewForPaper(_:)()
{
  v2 = v0[9];
  v1 = v0[10];
  v0[11] = v0[8];
  CanvasElementViewController._imageSize.setter(v1, v2);
  v3 = swift_task_alloc();
  *(v0 + 12) = v3;
  *v3 = v0;
  v3[1] = closure #1 in CanvasElementViewController.updateViewForPaper(_:);

  return Image.cgImageSource()();
}

{
  *(v0 + 88) = 0;
  CanvasElementViewController._imageSize.setter(0.0, 0.0);
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = closure #1 in CanvasElementViewController.updateViewForPaper(_:);

  return Image.cgImageSource()();
}

{
  v1 = *(v0 + 104);
  if (v1 && (v2 = specialized static ImageHDRInfo.info(for:)(*(v0 + 104)), v4 = v3, v1, v4))
  {
  }

  else
  {
    v2 = 0;
  }

  *(v0 + 112) = v2;
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 120) = v6;
  *(v0 + 128) = v5;

  return MEMORY[0x1EEE6DFA0](closure #1 in CanvasElementViewController.updateViewForPaper(_:), v6, v5);
}

{
  v17 = v0;
  CanvasElementViewController._imageHeadroom.setter(*(v0 + 112));
  if (CanvasElementViewController._imageHeadroom.getter() <= 1.0)
  {
    v15 = swift_task_alloc();
    *(v0 + 136) = v15;
    *v15 = v0;
    v15[1] = closure #1 in CanvasElementViewController.updateViewForPaper(_:);

    return Image.supportsSavingAsHDR()();
  }

  else
  {

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 24);
    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, logger);
    v3 = v1;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v16 = v7;
      *v6 = 136315650;
      if (CanvasElementViewController._imageHeadroom.getter() <= 1.0)
      {
        v8 = 5391443;
      }

      else
      {
        v8 = 5391432;
      }

      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, 0xE300000000000000, &v16);

      *(v6 + 4) = v9;
      *(v6 + 12) = 2080;
      CanvasElementViewController._imageSize.getter();
      v10 = CGSize.debugDescription.getter();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v16);

      *(v6 + 14) = v12;
      *(v6 + 22) = 2048;
      *(v6 + 24) = CanvasElementViewController._imageHeadroom.getter();
      _os_log_impl(&dword_1D38C4000, v4, v5, "Loaded %s image with size: %s, headroom: %f", v6, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA6D0660](v7, -1, -1);
      MEMORY[0x1DA6D0660](v6, -1, -1);
    }

    v13 = *(v0 + 8);

    return v13();
  }
}

{
  v22 = v0;
  if ((*(v0 + 144) & 1) != 0 || (v1 = specialized CanvasElementViewController.canvasView.getter(&unk_1D40727A8, &direct field offset for CanvasElementViewController._canvasView)) == 0)
  {
  }

  else
  {
    v2 = v1;
    v3 = OBJC_IVAR____TtC8PaperKit9AnyCanvas___allowHDR;
    if (*(v1 + OBJC_IVAR____TtC8PaperKit9AnyCanvas___allowHDR))
    {
      swift_getKeyPath();
      v4 = swift_task_alloc();
      *(v4 + 16) = v2;
      *(v4 + 24) = 0;
      *(v0 + 16) = v2;
      _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
      v5 = v2;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
      v20 = v1;

      *(v2 + v3) = 0;
    }
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 24);
  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, logger);
  v8 = v6;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21[0] = v12;
    *v11 = 136315650;
    if (CanvasElementViewController._imageHeadroom.getter() <= 1.0)
    {
      v13 = 5391443;
    }

    else
    {
      v13 = 5391432;
    }

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, 0xE300000000000000, v21);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    CanvasElementViewController._imageSize.getter();
    v15 = CGSize.debugDescription.getter();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v21);

    *(v11 + 14) = v17;
    *(v11 + 22) = 2048;
    *(v11 + 24) = CanvasElementViewController._imageHeadroom.getter();
    _os_log_impl(&dword_1D38C4000, v9, v10, "Loaded %s image with size: %s, headroom: %f", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA6D0660](v12, -1, -1);
    MEMORY[0x1DA6D0660](v11, -1, -1);
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t closure #1 in CanvasElementViewController.updateViewForPaper(_:)(uint64_t a1)
{
  *(*v1 + 104) = a1;

  return MEMORY[0x1EEE6DFA0](closure #1 in CanvasElementViewController.updateViewForPaper(_:), 0, 0);
}

uint64_t closure #1 in CanvasElementViewController.updateViewForPaper(_:)(char a1)
{
  v2 = *v1;
  *(*v1 + 144) = a1;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);

  return MEMORY[0x1EEE6DFA0](closure #1 in CanvasElementViewController.updateViewForPaper(_:), v4, v3);
}

Swift::Void __swiftcall CanvasElementViewController.createNavigationBack(tintColor:)(UIColor tintColor)
{
  v3 = [objc_opt_self() configurationWithPointSize:5 weight:2 scale:25.0];
  v4 = MEMORY[0x1DA6CCED0](0x2E6E6F7276656863, 0xEC0000007466656CLL);
  v5 = [objc_opt_self() systemImageNamed:v4 withConfiguration:v3];

  v6 = [objc_opt_self() buttonWithType_];
  [v6 addTarget:v1 action:sel_close_ forControlEvents:64];
  [v6 setImage:v5 forState:0];
  v7 = MEMORY[0x1DA6CCED0](1801675074, 0xE400000000000000);
  [v6 setTitle:v7 forState:0];

  [v6 setTitleColor:tintColor.super.isa forState:0];
  v8 = specialized CanvasElementViewController.canvasView.getter(&unk_1D40727A8, &direct field offset for CanvasElementViewController._canvasView);
  if (v8)
  {
    [v8 addSubview_];
  }

  v9 = v6;
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  v10 = [v9 leftAnchor];
  v11 = [v1 view];
  if (!v11)
  {
    __break(1u);
    goto LABEL_9;
  }

  v12 = v11;
  v13 = [v11 leftAnchor];

  v14 = [v10 constraintEqualToAnchor:v13 constant:10.0];
  [v14 setActive_];

  v15 = [v9 topAnchor];
  v16 = [v1 view];
  if (!v16)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v17 = v16;
  v18 = [v16 safeAreaLayoutGuide];

  v19 = [v18 topAnchor];
  v20 = [v15 constraintEqualToAnchor_];

  [v20 setActive_];
}

uint64_t @objc CanvasElementViewController.close(_:)(void *a1)
{
  swift_unknownObjectRetain();
  v2 = a1;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  CanvasElementViewController.close(_:)();

  return __swift_destroy_boxed_opaque_existential_0(&v4);
}

Swift::Bool __swiftcall CanvasElementViewController.isTouchInBannerView(_:)(UITouch a1)
{
  v2 = specialized CanvasElementViewController.canvasView.getter(&unk_1D4072FC0, &direct field offset for CanvasElementViewController._bannerView);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  [(objc_class *)a1.super.isa locationInView:v3];
  v4 = [v3 pointInside:0 withEvent:?];

  return v4;
}

void *CanvasElementViewController.viewAcceptSingleTouch(_:)(UITouch a1)
{
  result = specialized CanvasElementViewController.canvasView.getter(&unk_1D40727A8, &direct field offset for CanvasElementViewController._canvasView);
  if (result)
  {
    v3 = result;
    v4 = AnyCanvas.acceptSingleTouch(_:)(a1);

    return v4;
  }

  return result;
}

Swift::Bool __swiftcall CanvasElementViewController.acceptSingleTouch(_:)(UITouch a1)
{
  if (CanvasElementViewController.isTouchInBannerView(_:)(a1))
  {
    return 1;
  }

  v3.super.isa = a1.super.isa;

  return CanvasElementViewController.viewAcceptSingleTouch(_:)(v3);
}

uint64_t (*CanvasElementViewController.rootElement.modify(void *a1))()
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
  CanvasElementViewController.rootElement.getter();
  return CanvasElementViewController.rootElement.modify;
}

uint64_t CanvasElementViewController.rootElement.getter@<X0>(uint64_t a1@<X8>)
{
  if (specialized CanvasElementViewController.canvasView.getter(&unk_1D40727A8, &direct field offset for CanvasElementViewController._canvasView))
  {
    Canvas.updatablePaper2.getter(a1);
    v2 = 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = type metadata accessor for Capsule();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1, v2, 1, v3);
}

uint64_t CanvasElementViewController.rootElement.setter(uint64_t a1, void (*a2)(void))
{
  a2();
  type metadata accessor for Capsule();
  v3 = type metadata accessor for Optional();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1, v3);
}

uint64_t (*CanvasElementViewController.paper.modify(void *a1))()
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
  CanvasElementViewController.rootElement.getter();
  return CanvasElementViewController.paper.modify;
}

void CanvasElementViewController.rootElement.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    CanvasElementViewController.updateViewForPaper(_:)(v3);
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    CanvasElementViewController.updateViewForPaper(_:)(*(*a1 + 32));
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

void CanvasElementViewController.merge<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a1;
  v5 = type metadata accessor for Capsule();
  v6 = type metadata accessor for Optional();
  v27 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  v29 = a3;
  v12 = type metadata accessor for Capsule();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - v14;
  v28 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v26 - v17;
  v19 = specialized CanvasElementViewController.canvasView.getter(&unk_1D40727A8, &direct field offset for CanvasElementViewController._canvasView);
  if (v19)
  {
    v31 = 3;
    v20 = v19;
    AnyCanvas.merge<A>(_:from:)(v30, &v31, a2, v29);
  }

  else
  {
    v21 = v8;
    v22 = v27;
    (*(v13 + 16))(v15, v30, v12);
    v23 = swift_dynamicCast();
    v24 = v28;
    v25 = *(v28 + 56);
    if (v23)
    {
      v25(v11, 0, 1, v5);
      (*(v24 + 32))(v18, v11, v5);
      (*(v24 + 16))(v21, v18, v5);
      v25(v21, 0, 1, v5);
      CanvasElementViewController.updateViewForPaper(_:)(v21);
      (*(v22 + 8))(v21, v6);
      (*(v24 + 8))(v18, v5);
    }

    else
    {
      v25(v11, 1, 1, v5);
      (*(v22 + 8))(v11, v6);
    }
  }
}

uint64_t CanvasElementViewController.publisher.getter()
{
  type metadata accessor for Capsule();
  type metadata accessor for PassthroughSubject();

  swift_getWitnessTable();
  return AnyPublisher.init<A>(_:)();
}

Swift::Void __swiftcall CanvasElementViewController.updatePlusButton()()
{
  v1 = (*MEMORY[0x1E69E7D40] & *v0);
  CanvasElementViewController.editingMode.getter(&v15);
  v2 = *(v0 + direct field offset for CanvasElementViewController.plusButton);
  if (v15 == 1)
  {
    v3 = [*(v0 + direct field offset for CanvasElementViewController.plusButton) superview];
    if (v3)
    {

      [v2 removeFromSuperview];
    }

    v4 = specialized CanvasElementViewController.canvasView.getter(&unk_1D40727A8, &direct field offset for CanvasElementViewController._canvasView);
    if (v4)
    {
      [v4 addSubview_];
    }

    v5 = [v0 view];
    if (v5)
    {
      v6 = v5;
      FormPlusButtonView.setConstraintsBasedOn(_:)(v5);

      v7 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v8 = swift_allocObject();
      v9 = v1[15];
      v8[2] = v9;
      v10 = v1[16];
      v8[3] = v10;
      v11 = v1[17];
      v8[4] = v11;
      v8[5] = v7;
      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v13 = swift_allocObject();
      v13[2] = v9;
      v13[3] = v10;
      v13[4] = v11;
      v13[5] = v12;

      FormPlusButtonView.setMenuWithActions(addTextBoxHandler:addSignatureHandler:)();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v14 = *(v0 + direct field offset for CanvasElementViewController.plusButton);

    [v14 removeFromSuperview];
  }
}

void closure #1 in CanvasElementViewController.updatePlusButton()()
{
  v0 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v240 = v194 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd);
  v257 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v241 = v194 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v194 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v249 = v194 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
  v238 = *(v9 - 8);
  v239 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v237 = v194 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v235 = *(v11 - 8);
  v236 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v234 = v194 - v12;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v13 = *(v233 - 8);
  MEMORY[0x1EEE9AC00](v233);
  v232 = v194 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
  v229 = *(v15 - 8);
  v230 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v228 = v194 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v226 = *(v17 - 8);
  v227 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v224 = v194 - v18;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6ShadowVSgMd);
  v19 = MEMORY[0x1EEE9AC00](v223);
  v222 = v194 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v221 = v194 - v21;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11StrokeStyleOSgMd);
  v22 = MEMORY[0x1EEE9AC00](v220);
  v219 = v194 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v218 = v194 - v24;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  v25 = MEMORY[0x1EEE9AC00](v217);
  v246 = v194 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v245 = v194 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  v29 = MEMORY[0x1EEE9AC00](v28 - 8);
  v225 = v194 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v251 = v194 - v31;
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  v32 = MEMORY[0x1EEE9AC00](v244);
  v34 = v194 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v32);
  v37 = v194 - v36;
  v38 = MEMORY[0x1EEE9AC00](v35);
  v250 = v194 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v256 = (v194 - v40);
  v248 = type metadata accessor for ShapeType(0);
  v41 = MEMORY[0x1EEE9AC00](v248);
  v216 = v194 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x1EEE9AC00](v41);
  v242 = v194 - v44;
  MEMORY[0x1EEE9AC00](v43);
  v254 = v194 - v45;
  v243 = type metadata accessor for Shape(0);
  v46 = MEMORY[0x1EEE9AC00](v243);
  v231 = v194 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x1EEE9AC00](v46);
  v50 = v194 - v49;
  MEMORY[0x1EEE9AC00](v48);
  v247 = v194 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v252 = *(v52 - 8);
  v253 = v52;
  v53 = MEMORY[0x1EEE9AC00](v52);
  v215 = v194 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v255 = v194 - v55;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v57 = Strong;
  if (!specialized CanvasElementViewController.canvasView.getter(&unk_1D40727A8, &direct field offset for CanvasElementViewController._canvasView) || (v208 = v13, v58 = Canvas.editingView.getter(), v59 = (*((*MEMORY[0x1E69E7D40] & *v58) + 0x90))(), v58, (v214 = v59) == 0))
  {

    return;
  }

  v213 = v7;
  v207 = v2;
  v60 = v57;
  v61 = [v60 view];
  if (!v61)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v62 = v61;
  [v61 center];
  v64 = v63;
  v66 = v65;

  v67 = *MEMORY[0x1E69E7D40] & *v214;
  v211 = *(v67 + 0x440);
  v212 = v67 + 1088;
  v68 = v211();
  v69 = [v60 view];
  v206 = v60;

  [v68 convertRect:v69 fromView:{v64 + -75.0, v66 + -12.5, 150.0, 25.0}];
  v71 = v70;
  v73 = v72;
  v75 = v74;
  v77 = v76;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D405FD70;
  v79 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  *(inited + 64) = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIFont);
  v80 = v79;
  specialized static FormFillingView.fontThatFits(frame:)(v71, v73, v75, v77);
  v81 = MEMORY[0x1E69DB688];
  *(inited + 40) = v82;
  v83 = *v81;
  *(inited + 72) = *v81;
  v84 = objc_allocWithZone(MEMORY[0x1E69DB7C8]);
  v85 = v83;
  v86 = [v84 init];
  [v86 setAlignment_];
  v87 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSMutableParagraphStyle);
  *(inited + 80) = v86;
  v88 = *MEMORY[0x1E69DB660];
  *(inited + 104) = v87;
  *(inited + 112) = v88;
  *(inited + 144) = MEMORY[0x1E69E7DE0];
  *(inited + 120) = 0;
  v89 = v88;
  v90 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSAttributedStringKeya_yptMd);
  swift_arrayDestroy();
  v91 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v92 = MEMORY[0x1DA6CCED0](0, 0xE000000000000000);
  type metadata accessor for NSAttributedStringKey(0);
  _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  [v91 initWithString:v92 attributes:isa];

  MEMORY[0x1EEE9AC00](v94);
  v95 = lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
  CRAttributedString.init(_:transformAttributes:)();
  swift_storeEnumTagMultiPayload();
  v96 = type metadata accessor for Color(0);
  v97 = *(v96 + 20);
  v98 = type metadata accessor for UnknownValueProperties();
  (*(*(v98 - 8) + 56))(v256 + v97, 1, 1, v98);
  if (one-time initialization token for extendedSRGBColorSpace != -1)
  {
    swift_once();
  }

  v99 = CGColorCreate(static Color.extendedSRGBColorSpace, dbl_1F4F51320);
  if (!v99)
  {
    goto LABEL_23;
  }

  v100 = v99;
  v204 = v95;
  v205 = v90;
  v210 = v37;
  CGColorRef.calculateMinimumHeadroom.getter();
  v101 = CGColorCreateWithContentHeadroom();
  if (!v101)
  {
LABEL_24:
    __break(1u);
    return;
  }

  v102 = v101;

  *v256 = v102;
  v103 = *(v96 - 8);
  v104 = *(v103 + 56);
  v105 = v103 + 56;
  v104();
  (v104)(v250, 1, 1, v96);
  v196 = v96;
  v197 = v105;
  v106 = v104;
  v202 = v104;
  v107 = v251;
  v108 = v252;
  v109 = v253;
  (*(v252 + 16))(v251, v255);
  (*(v108 + 56))(v107, 0, 1, v109);
  type metadata accessor for CGRect(0);
  v201 = v110;
  v200 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
  v258 = 0u;
  v259 = 0u;
  CRRegister.init(wrappedValue:)();
  v111 = v243;
  *&v258 = 0;
  v209 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  CRRegister.init(_:)();
  v203 = v111[6];
  v112 = v210;
  (v106)(v210, 1, 1, v96);
  outlined init with copy of Date?(v112, v34, &_s8PaperKit5ColorVSgMd);
  v198 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v112, &_s8PaperKit5ColorVSgMd);
  v199 = v111[7];
  (v202)(v112, 1, 1, v196);
  outlined init with copy of Date?(v112, v34, &_s8PaperKit5ColorVSgMd);
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v112, &_s8PaperKit5ColorVSgMd);
  v197 = v111[8];
  *&v258 = 0x4014000000000000;
  CRRegister.init(wrappedValue:)();
  v195 = v111[9];
  v113 = v242;
  swift_storeEnumTagMultiPayload();
  v196 = type metadata accessor for ShapeType;
  _s8PaperKit9ShapeTypeOWOcTm_2(v113, v216, type metadata accessor for ShapeType);
  v194[1] = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, type metadata accessor for ShapeType);
  CRRegister.init(wrappedValue:)();
  _s8PaperKit5ImageVWOhTm_1(v113, type metadata accessor for ShapeType);
  *&v258 = 0x3FF0000000000000;
  CRRegister.init(wrappedValue:)();
  *&v258 = 0;
  BYTE8(v258) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
  CRRegister.init(wrappedValue:)();
  *&v258 = 0;
  BYTE8(v258) = 0;
  CRRegister.init(wrappedValue:)();
  v194[0] = v111[13];
  CRAttributedString.init(_:)();
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
  v115 = *(v114 - 8);
  v116 = *(v115 + 56);
  v117 = v245;
  v216 = v114;
  v204 = v116;
  v202 = (v115 + 56);
  (v116)(v245, 1, 1);
  outlined init with copy of Date?(v117, v246, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v117, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  v118 = v111[15];
  *&v258 = 0;
  v119 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
  v217 = v118;
  v194[2] = v119;
  CRRegister.init(wrappedValue:)();
  *&v258 = 0;
  lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
  CRRegister.init(wrappedValue:)();
  v120 = type metadata accessor for StrokeStyle(0);
  v121 = v218;
  (*(*(v120 - 8) + 56))(v218, 1, 1, v120);
  outlined init with copy of Date?(v121, v219, &_s8PaperKit11StrokeStyleOSgMd);
  lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v121, &_s8PaperKit11StrokeStyleOSgMd);
  v122 = type metadata accessor for Shadow();
  v123 = v221;
  (*(*(v122 - 8) + 56))(v221, 1, 1, v122);
  outlined init with copy of Date?(v123, v222, &_s8PaperKit6ShadowVSgMd);
  lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v123, &_s8PaperKit6ShadowVSgMd);
  v259 = 0u;
  v260 = 0u;
  v258 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
  lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  UnknownProperties.init()();
  *&v258 = v71;
  *(&v258 + 1) = v73;
  *&v259 = v75;
  *(&v259 + 1) = v77;
  v124 = v224;
  CRRegister.init(_:)();
  (*(v226 + 40))(v50, v124, v227);
  _s8PaperKit9ShapeTypeOWOcTm_2(v254, v113, v196);
  v125 = v228;
  CRRegister.init(_:)();
  (*(v229 + 40))(&v50[v195], v125, v230);
  *&v258 = 0x4014000000000000;
  v126 = v232;
  CRRegister.init(_:)();
  (*(v208 + 40))(&v50[v197], v126, v233);
  v127 = v210;
  outlined init with copy of Date?(v256, v210, &_s8PaperKit5ColorVSgMd);
  v128 = v234;
  CRRegister.init(_:)();
  v129 = v236;
  v130 = *(v235 + 40);
  v130(&v50[v199], v128, v236);
  outlined init with copy of Date?(v250, v127, &_s8PaperKit5ColorVSgMd);
  v131 = v252;
  CRRegister.init(_:)();
  v130(&v50[v203], v128, v129);
  v132 = v253;
  v133 = v225;
  outlined init with copy of Date?(v251, v225, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  if ((*(v131 + 48))(v133, 1, v132) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v133, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  }

  else
  {
    v134 = v215;
    (*(v131 + 32))(v215, v133, v132);
    (*(v131 + 40))(&v50[v194[0]], v134, v132);
  }

  v135 = v257;
  v136 = v239;
  v137 = v237;
  v138 = v238;
  *&v258 = 2;
  CRRegister.init(_:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v251, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v250, &_s8PaperKit5ColorVSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v256, &_s8PaperKit5ColorVSgMd);
  _s8PaperKit5ImageVWOhTm_1(v254, type metadata accessor for ShapeType);
  (*(v138 + 40))(&v50[v217], v137, v136);
  v139 = v247;
  _s8PaperKit5ShapeVWObTm_2(v50, v247, type metadata accessor for Shape);
  LOBYTE(v258) = 1;
  Shape.formContentType.setter(&v258);
  v140 = v245;
  CRAttributedString.Attributes<>.init(nsAttributes:darkMode:)(v205, 0, v245);
  v204(v140, 0, 1, v216);
  outlined init with copy of Date?(v140, v246, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
  CRRegister.wrappedValue.setter();
  outlined destroy of StocksKitCurrencyCache.Provider?(v140, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  _s8PaperKit9ShapeTypeOWOcTm_2(v139, v231, type metadata accessor for Shape);
  static CRKeyPath.unique.getter();
  _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type Shape and conformance Shape, type metadata accessor for Shape);
  v141 = v249;
  Capsule.init(_:id:)();
  v142 = *(v135 + 16);
  v143 = v213;
  v144 = v207;
  v142(v213, v141, v207);
  v145 = objc_allocWithZone(type metadata accessor for ShapeView());
  *(v145 + direct field offset for ShapeView.$__lazy_storage_$_shapeLayer) = 0;
  *(v145 + direct field offset for ShapeView.$__lazy_storage_$_endLineEndLayer) = 0;
  *(v145 + direct field offset for ShapeView.$__lazy_storage_$_startLineEndLayer) = 0;
  *(v145 + direct field offset for ShapeView.$__lazy_storage_$_groupLayer) = 0;
  v146 = direct field offset for ShapeView.showsSignaturePopover;
  *(v145 + direct field offset for ShapeView.showsSignaturePopover) = 0;
  v147 = direct field offset for ShapeView.analytics_inputSource;
  *(v145 + direct field offset for ShapeView.analytics_inputSource) = 68;
  v148 = direct field offset for ShapeView.analytics_documentType;
  *(v145 + direct field offset for ShapeView.analytics_documentType) = 68;
  *(v145 + direct field offset for ShapeView._textBoxView) = 0;
  *(v145 + direct field offset for ShapeView.appearanceStreamView) = 0;
  *(v145 + v146) = 0;
  *(v145 + v147) = 11;
  *(v145 + v148) = 5;
  v149 = v241;
  v142(v241, v143, v144);
  v150 = MEMORY[0x1E69E7D40];
  (*(v257 + 56))(v145 + *((*MEMORY[0x1E69E7D40] & *v145) + 0x3F8), 1, 1, v144);
  *(v145 + *((*v150 & *v145) + 0x400)) = 0;
  *(v145 + *((*v150 & *v145) + 0x408)) = 0;
  *(v145 + *((*v150 & *v145) + 0x410)) = 0;
  *(v145 + *((*v150 & *v145) + 0x418)) = 0;
  *(v145 + *((*v150 & *v145) + 0x420)) = 0;
  v142(v145 + *((*v150 & *v145) + 0x3F0), v149, v144);
  v151 = v214;
  v256 = v214;
  v152 = AnyCanvasElementView.init(frame:canvas:parentCanvasElement:)(v151, 0, 0.0, 0.0, 0.0, 0.0);
  specialized CanvasElementView.setupAccessibility()();
  (*((*v150 & *v152) + 0x520))();
  v153 = *(v257 + 8);
  v257 += 8;
  v153(v149, v144);
  v154 = v152;
  specialized AppearanceStreamViewSupport.setupAppearanceStreamIfNeeded()();
  v155 = *((*v150 & *v154) + 0x3F0);
  v156 = v249;
  swift_beginAccess();
  v142(v149, &v154[v155], v144);
  LOBYTE(v155) = specialized Capsule<>.isTextBox.getter();

  v153(v149, v144);
  if (v155)
  {
    goto LABEL_16;
  }

  v157 = v153;
  [v154 setIsAccessibilityElement_];
  v158 = 0x80000001D40850C0;
  if (one-time initialization token for paperKitBundle != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v261._object = v158;
    v159._countAndFlagsBits = 0x4025206570616853;
    v160.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v160.value._object = 0xEB00000000656C62;
    v159._object = 0xE800000000000000;
    v161._countAndFlagsBits = 0;
    v161._object = 0xE000000000000000;
    v261._countAndFlagsBits = 0xD00000000000005FLL;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v159, v160, paperKitBundle, v161, v261);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v162 = swift_allocObject();
    *(v162 + 16) = xmmword_1D4058CF0;
    swift_getKeyPath();
    v163 = v242;
    v164 = v207;
    Capsule.subscript.getter();

    ShapeType.any.getter(&v258);
    _s8PaperKit5ImageVWOhTm_1(v163, type metadata accessor for ShapeType);
    v165 = *(&v259 + 1);
    v166 = v260;
    __swift_project_boxed_opaque_existential_1(&v258, *(&v259 + 1));
    v167 = (*(v166 + 48))(v165, v166);
    v169 = v168;
    *(v162 + 56) = MEMORY[0x1E69E6158];
    *(v162 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v162 + 32) = v167;
    *(v162 + 40) = v169;
    __swift_destroy_boxed_opaque_existential_0(&v258);
    v170 = static String.localizedStringWithFormat(_:_:)();
    v172 = v171;
    v144 = v164;

    v173 = MEMORY[0x1DA6CCED0](v170, v172);

    [v154 setAccessibilityLabel_];

    v156 = v249;
    v153 = v157;
LABEL_16:
    v153(v213, v144);
    v153(v156, v144);
    _s8PaperKit5ImageVWOhTm_1(v247, type metadata accessor for Shape);
    v174 = (*(v252 + 8))(v255, v253);
    v154[OBJC_IVAR____TtC8PaperKit20AnyCanvasElementView_isDetectedFormField] = 1;
    v154[OBJC_IVAR____TtC8PaperKit20AnyCanvasElementView_startsNewAutofillContext] = 0;
    v175 = v256;
    v176 = (v211)(v174);
    v178 = v177;
    ObjectType = swift_getObjectType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v180 = swift_initStackObject();
    *(v180 + 16) = xmmword_1D405CEB0;
    *(v180 + 32) = v154;
    v157 = *(v178 + 200);
    v181 = v154;
    (v157)(v180, 0, ObjectType, v178);

    swift_setDeallocating();
    swift_arrayDestroy();
    v154 = v181;
    v182 = specialized CanvasMembers.init(_:)(v154);
    AnyCanvas.selection.setter(v182, v184, v185, v183 & 1);
    v186 = v211();
    v188 = v187;
    v189 = swift_getObjectType();
    v158 = (*(v188 + 168))(v189, v188);

    if (!v158)
    {
      break;
    }

    v190 = *&v158[OBJC_IVAR____TtC8PaperKit15FormFillingView_analytics];

    v191 = *(v190 + 48);
    v192 = __OFADD__(v191, 1);
    v193 = v191 + 1;
    if (!v192)
    {
      *(v190 + 48) = v193;

      return;
    }

    __break(1u);
LABEL_21:
    swift_once();
  }
}

void closure #2 in CanvasElementViewController.updatePlusButton()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = *(Strong + direct field offset for CanvasElementViewController.plusButton);
    v11 = v10;
    [v11 bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = swift_allocObject();
    v21[2] = a3;
    v21[3] = a4;
    v21[4] = a5;
    v21[5] = v20;
    v22 = one-time initialization token for SignatureLogger;

    if (v22 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, SignatureLogger);
    v24 = v9;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138477827;
      *(v27 + 4) = v24;
      *v28 = v9;
      v29 = v24;
      _os_log_impl(&dword_1D38C4000, v25, v26, "show signature panel on viewController: %{private}@", v27, 0xCu);
      outlined destroy of StocksKitCurrencyCache.Provider?(v28, &_sSo8NSObjectCSgMd);
      MEMORY[0x1DA6D0660](v28, -1, -1);
      MEMORY[0x1DA6D0660](v27, -1, -1);
    }

    v30 = specialized SignatureManager.signatureViewController(_:_:_:_:_:)(v9, 0, v10, partial apply for closure #1 in closure #2 in CanvasElementViewController.updatePlusButton(), v21, v13, v15, v17, v19);
    [v24 presentViewController:v30 animated:1 completion:0];
  }
}

void closure #1 in closure #2 in CanvasElementViewController.updatePlusButton()(void *a1)
{
  v2 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = type metadata accessor for Signature(0);
  MEMORY[0x1EEE9AC00](v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit9SignatureVGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if (a1)
    {
      v10 = a1;
      if (specialized CanvasElementViewController.canvasView.getter(&unk_1D40727A8, &direct field offset for CanvasElementViewController._canvasView) && (v11 = Canvas.editingView.getter(), v12 = (*((*MEMORY[0x1E69E7D40] & *v11) + 0x90))(), v11, v12))
      {
        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        v28 = v5;
        v13 = [v9 view];
        if (v13)
        {
          v14 = v13;
          [v13 center];
          v16 = v15;
          v18 = v17;

          v19 = SignatureItem.size.getter();
          v21 = 400.0 / v19;
          if (400.0 / v19 > 1.0)
          {
            v21 = 1.0;
          }

          v22 = v19 * v21;
          v23 = v20 * v21;
          v24 = 72.0 / v23;
          if (72.0 / v23 > 1.0)
          {
            v24 = 1.0;
          }

          v29[0] = v22 * v24;
          v29[1] = v23 * v24;
          Signature.init()();
          static CRKeyPath.unique.getter();
          v25 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type Signature and conformance Signature, type metadata accessor for Signature);
          v26 = Capsule.init(_:id:)();
          MEMORY[0x1EEE9AC00](v26);
          *(&v27 - 4) = v10;
          *(&v27 - 3) = v16;
          *(&v27 - 2) = v18;
          *(&v27 - 1) = v29;
          Capsule.callAsFunction<A>(_:)();
          (*((*MEMORY[0x1E69E7D40] & *v12) + 0x700))(v7, 1, 0, 0, v3, v25, &protocol witness table for Signature);

          (*(v28 + 8))(v7, v4);
        }

        else
        {
          __break(1u);
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

uint64_t CanvasElementViewController.isUpdatingBannerConfiguration.getter()
{
  swift_getKeyPath();
  CanvasElementViewController.access<A>(keyPath:)();

  return *(v0 + direct field offset for CanvasElementViewController._isUpdatingBannerConfiguration);
}

uint64_t key path getter for CanvasElementViewController.isUpdatingBannerConfiguration : <A>CanvasElementViewController<A>@<X0>(_BYTE *a1@<X8>)
{
  result = CanvasElementViewController.isUpdatingBannerConfiguration.getter();
  *a1 = result & 1;
  return result;
}

uint64_t CanvasElementViewController._bannerViewConfiguration.didset()
{
  v1 = *MEMORY[0x1E69E7D40] & *v0;
  result = CanvasElementViewController.isUpdatingBannerConfiguration.getter();
  if (result)
  {
    return result;
  }

  CanvasElementViewController.isUpdatingBannerConfiguration.setter(1);
  CanvasElementViewController.bannerViewConfiguration.getter(&aBlock);
  v3 = aBlock;
  v4 = v53;
  v5 = v54;
  v6 = v55;
  v7 = v56;
  v8 = v57;
  v9 = v58;
  v10 = specialized CanvasElementViewController.canvasView.getter(&unk_1D4072FC0, &direct field offset for CanvasElementViewController._bannerView);
  if (v3 == 1)
  {
    if (v10)
    {
      [v10 removeFromSuperview];
    }

    goto LABEL_8;
  }

  if (!v10 || (v11 = [v10 superview]) == 0)
  {
    v12 = specialized CanvasElementViewController.canvasView.getter(&unk_1D4072FC0, &direct field offset for CanvasElementViewController._bannerView);
    if (!v12)
    {
      outlined consume of BannerViewConfiguration?(v3, v4, v5, v6, v7, v8, v9);
      return CanvasElementViewController.isUpdatingBannerConfiguration.setter(0);
    }

    v13 = v12;
    v14 = specialized CanvasElementViewController.canvasView.getter(&unk_1D40727A8, &direct field offset for CanvasElementViewController._canvasView);
    if (v14)
    {
      [v14 addSubview_];
    }

    v47 = v5;
    if (v5)
    {
      v5 = MEMORY[0x1DA6CCED0](v4, v5);
    }

    v49 = v7;
    v46 = v4;
    if (v7)
    {
      v7 = MEMORY[0x1DA6CCED0](v6, v7);
    }

    v48 = v6;
    v50 = v8;
    v51 = v9;
    v15 = [objc_opt_self() configurationWithImage:v3 title:v5 subtitle:v7 primaryAction:v8 dismissAction:v9];

    [v13 populateWithConfiguration_];
    v16 = v13;
    [v16 setTranslatesAutoresizingMaskIntoConstraints_];
    v17 = [v16 bottomAnchor];
    result = [v0 view];
    if (result)
    {
      v18 = result;
      v19 = [result safeAreaLayoutGuide];

      v20 = [v19 topAnchor];
      v21 = [v17 constraintEqualToAnchor_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1D405B630;
      *(v22 + 32) = v21;
      v45 = v21;
      v23 = [v16 leadingAnchor];
      result = [v0 view];
      if (result)
      {
        v24 = result;
        v25 = [result leadingAnchor];

        v26 = [v23 constraintEqualToAnchor:v25 constant:8.0];
        *(v22 + 40) = v26;
        v27 = [v16 leadingAnchor];
        result = [v0 view];
        if (result)
        {
          v28 = result;
          v29 = [result safeAreaLayoutGuide];

          v30 = [v29 leadingAnchor];
          v31 = [v27 constraintGreaterThanOrEqualToAnchor:v30 constant:8.0];

          *(v22 + 48) = v31;
          v32 = [v16 trailingAnchor];

          result = [v0 view];
          if (result)
          {
            v33 = result;
            v34 = objc_opt_self();
            v35 = [v33 safeAreaLayoutGuide];

            v36 = [v35 trailingAnchor];
            v37 = [v32 constraintEqualToAnchor:v36 constant:-8.0];

            *(v22 + 56) = v37;
            type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSLayoutConstraint);
            isa = Array._bridgeToObjectiveC()().super.isa;

            [v34 activateConstraints_];

            result = [v0 view];
            if (result)
            {
              v39 = result;
              [result layoutIfNeeded];

              v40 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v41 = swift_allocObject();
              *(v41 + 16) = *(v1 + 120);
              *(v41 + 32) = *(v1 + 136);
              *(v41 + 40) = v40;
              *(v41 + 48) = v45;
              *(v41 + 56) = v16;
              v56 = partial apply for closure #1 in CanvasElementViewController._bannerViewConfiguration.didset;
              v57 = v41;
              aBlock = MEMORY[0x1E69E9820];
              v53 = 1107296256;
              v54 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
              v55 = &block_descriptor_274;
              v42 = _Block_copy(&aBlock);
              v43 = v16;
              v44 = v45;

              [v43 showWithAnimations_];
              outlined consume of BannerViewConfiguration?(v3, v46, v47, v48, v49, v50, v51);
              _Block_release(v42);

              return CanvasElementViewController.isUpdatingBannerConfiguration.setter(0);
            }

LABEL_31:
            __break(1u);
            return result;
          }

LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_29;
  }

  outlined consume of BannerViewConfiguration?(v3, v4, v5, v6, v7, v8, v9);
LABEL_8:

  return CanvasElementViewController.isUpdatingBannerConfiguration.setter(0);
}

id CanvasElementViewController._bannerViewConfiguration.getter@<X0>(void *a1@<X8>)
{
  v3 = v1 + direct field offset for CanvasElementViewController._bannerViewConfiguration;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  v10 = *(v3 + 48);
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
  a1[6] = v10;
  return outlined copy of BannerViewConfiguration?(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t CanvasElementViewController._bannerViewConfiguration.setter(uint64_t a1)
{
  v14 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = v1 + direct field offset for CanvasElementViewController._bannerViewConfiguration;
  swift_beginAccess();
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(v4 + 32);
  v10 = *(v4 + 40);
  v11 = *(v4 + 48);
  v12 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v12;
  *(v4 + 32) = v14;
  *(v4 + 48) = v3;
  outlined consume of BannerViewConfiguration?(v5, v6, v7, v8, v9, v10, v11);
  return CanvasElementViewController._bannerViewConfiguration.didset();
}

uint64_t (*CanvasElementViewController._bannerViewConfiguration.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return CanvasElementViewController._bannerViewConfiguration.modify;
}

uint64_t CanvasElementViewController._liveStreamMessenger.modify(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

double key path getter for CanvasElementViewController.bannerViewConfiguration : <A>CanvasElementViewController<A>@<D0>(uint64_t a1@<X8>)
{
  CanvasElementViewController.bannerViewConfiguration.getter(v5);
  v2 = v7;
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = *&v6;
  *(a1 + 32) = v6;
  *(a1 + 48) = v2;
  return result;
}

uint64_t key path setter for CanvasElementViewController.bannerViewConfiguration : <A>CanvasElementViewController<A>(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8[0] = *a1;
  v8[1] = v1;
  v8[2] = v2;
  v8[3] = v3;
  v8[4] = v4;
  v8[5] = v5;
  v8[6] = v6;
  outlined copy of BannerViewConfiguration?(v8[0], v1, v2, v3, v4, v5, v6);
  return CanvasElementViewController.bannerViewConfiguration.setter(v8);
}

id CanvasElementViewController.bannerViewConfiguration.getter@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  CanvasElementViewController.access<A>(keyPath:)();

  return CanvasElementViewController._bannerViewConfiguration.getter(a1);
}

void (*CanvasElementViewController.bannerViewConfiguration.modify(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = v1;
  MEMORY[0x1EEE9AC00](v3);
  swift_getKeyPath();
  CanvasElementViewController.access<A>(keyPath:)();

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v5);
  swift_getKeyPath();
  type metadata accessor for CanvasElementViewController();
  swift_getWitnessTable();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[5] = CanvasElementViewController._bannerViewConfiguration.modify(v4);
  return CanvasElementViewController.bannerViewConfiguration.modify;
}

void CanvasElementViewController._bannerView.setter(uint64_t a1)
{
  v2 = *(v1 + direct field offset for CanvasElementViewController._bannerView);
  *(v1 + direct field offset for CanvasElementViewController._bannerView) = a1;
}

void *CanvasElementViewController.bannerView.getter()
{
  v0 = specialized CanvasElementViewController.canvasView.getter(&unk_1D4072FC0, &direct field offset for CanvasElementViewController._bannerView);
  v1 = v0;
  return v0;
}

void CanvasElementViewController.__rulerHostingDelegate.setter(uint64_t a1)
{
  v2 = *(v1 + direct field offset for CanvasElementViewController.__rulerHostingDelegate);
  *(v1 + direct field offset for CanvasElementViewController.__rulerHostingDelegate) = a1;
}

void *CanvasElementViewController._rulerHostingDelegate.getter()
{
  v0 = specialized CanvasElementViewController.canvasView.getter(&unk_1D4072F80, &direct field offset for CanvasElementViewController.__rulerHostingDelegate);
  v1 = v0;
  return v0;
}

id key path getter for CanvasElementViewController._rulerHostingDelegate : <A>CanvasElementViewController<A>@<X0>(void *a1@<X8>)
{
  v2 = specialized CanvasElementViewController.canvasView.getter(&unk_1D4072F80, &direct field offset for CanvasElementViewController.__rulerHostingDelegate);
  *a1 = v2;

  return v2;
}

void key path setter for CanvasElementViewController._rulerHostingDelegate : <A>CanvasElementViewController<A>(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  CanvasElementViewController._rulerHostingDelegate.setter(v1);
}

void CanvasElementViewController._rulerHostView.didset(void *a1)
{
  v2 = specialized CanvasElementViewController.canvasView.getter(&unk_1D4072C60, &direct field offset for CanvasElementViewController._rulerHostView);
  v3 = v2;
  if (a1)
  {
    if (v2)
    {
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIView);
      v4 = v3;
      v5 = a1;
      v6 = static NSObject.== infix(_:_:)();

      if (v6)
      {
        return;
      }
    }
  }

  else if (!v2)
  {
    return;
  }

  v7 = specialized CanvasElementViewController.canvasView.getter(&unk_1D4072C60, &direct field offset for CanvasElementViewController._rulerHostView);
  if (v7)
  {
    v8 = v7;
    v9 = type metadata accessor for RulerHostingDelegate();
    v10 = objc_allocWithZone(v9);
    swift_unknownObjectWeakInit();
    v10[OBJC_IVAR____TtC8PaperKit20RulerHostingDelegate_sharedRuler] = 1;
    swift_unknownObjectWeakAssign();
    v15.receiver = v10;
    v15.super_class = v9;
    v11 = v8;
    v12 = objc_msgSendSuper2(&v15, sel_init);
    CanvasElementViewController._rulerHostingDelegate.setter(v12);
  }

  else
  {
    CanvasElementViewController._rulerHostingDelegate.setter(0);
  }

  if (specialized CanvasElementViewController.canvasView.getter(&unk_1D40727A8, &direct field offset for CanvasElementViewController._canvasView))
  {
    v13 = specialized CanvasView.tiledView.getter();
    if (v13)
    {
      v14 = v13;
      [v14 setRulerHostingDelegate_];
    }
  }
}

void (*CanvasElementViewController._rulerHostView.modify(void *a1))(void **a1, char a2)
{
  v2 = *(v1 + direct field offset for CanvasElementViewController._rulerHostView);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return CanvasElementViewController._rulerHostView.modify;
}

void CanvasElementViewController._rulerHostView.modify(void **a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = v4;
    specialized CanvasElementViewController._rulerHostView.setter(v4);

    v3 = v2;
  }

  else
  {
    specialized CanvasElementViewController._rulerHostView.setter(*a1);
    v3 = v4;
  }
}

id key path getter for CanvasElementViewController.rulerHostView : <A>CanvasElementViewController<A>@<X0>(void *a1@<X8>)
{
  v2 = specialized CanvasElementViewController.canvasView.getter(&unk_1D4072C60, &direct field offset for CanvasElementViewController._rulerHostView);
  *a1 = v2;

  return v2;
}

void key path setter for CanvasElementViewController.rulerHostView : <A>CanvasElementViewController<A>(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  CanvasElementViewController.rulerHostView.setter(v1);
}

void *CanvasElementViewController.rulerHostView.getter()
{
  v0 = specialized CanvasElementViewController.canvasView.getter(&unk_1D4072C60, &direct field offset for CanvasElementViewController._rulerHostView);
  v1 = v0;
  return v0;
}

void (*CanvasElementViewController.rulerHostView.modify(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = v1;
  MEMORY[0x1EEE9AC00](v3);
  swift_getKeyPath();
  CanvasElementViewController.access<A>(keyPath:)();

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v5);
  swift_getKeyPath();
  type metadata accessor for CanvasElementViewController();
  swift_getWitnessTable();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[5] = CanvasElementViewController._rulerHostView.modify(v4);
  return CanvasElementViewController.rulerHostView.modify;
}

void CanvasElementViewController.MediaAnalysisObserver.contextAnalysisDidChange(_:)(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    CanvasElementViewController.analysis.setter([a1 analysis]);
  }
}

void CanvasElementViewController.MediaAnalysisObserver.contextDidCompleteSubjectAnalysis(_:)(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (CanvasElementViewController.delegate.getter())
    {
      v4 = v3;
      ObjectType = swift_getObjectType();
      (*(v4 + 40))(v6, [a1 isSubjectHighlightAvailable], ObjectType, v4);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t @objc CanvasElementViewController.MediaAnalysisObserver.contextAnalysisDidChange(_:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();

  a4(a3);
  swift_unknownObjectRelease();
}

void (*CanvasElementViewController._formDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = direct field offset for CanvasElementViewController._formDelegate;
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

uint64_t key path getter for CanvasElementViewController.formDelegate : <A>CanvasElementViewController<A>@<X0>(uint64_t *a1@<X8>)
{
  result = CanvasElementViewController.formDelegate.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t key path setter for CanvasElementViewController.liveStreamMessenger : <A>CanvasElementViewController<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  v7 = swift_unknownObjectRetain();
  return a5(v7, v6);
}

uint64_t CanvasElementViewController.participantDetailsDataSource.getter(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  swift_getKeyPath();
  CanvasElementViewController.access<A>(keyPath:)();

  return a2(v3);
}

void (*CanvasElementViewController.formDelegate.modify(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = v1;
  MEMORY[0x1EEE9AC00](v3);
  swift_getKeyPath();
  CanvasElementViewController.access<A>(keyPath:)();

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v5);
  swift_getKeyPath();
  type metadata accessor for CanvasElementViewController();
  swift_getWitnessTable();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[5] = CanvasElementViewController._formDelegate.modify(v4);
  return CanvasElementViewController.formDelegate.modify;
}

uint64_t $defer #1 <A>() in CanvasElementViewController.liveStreamMessenger.modify()
{
  swift_getKeyPath();
  type metadata accessor for CanvasElementViewController();
  swift_getWitnessTable();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();
}

void CanvasElementViewController._analysis.didset(uint64_t a1)
{
  v2 = v1;
  v4 = specialized CanvasElementViewController.canvasView.getter(&unk_1D4072F38, &direct field offset for CanvasElementViewController._analysis);
  if (v4)
  {
    v5 = v4 == a1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return;
  }

  v50 = v4;
  v6 = CanvasElementViewController.delegate.getter();
  v8 = &selRef_hasSubstrokes;
  if (!v6)
  {
    v29 = v50;
    goto LABEL_47;
  }

  v9 = v7;
  v10 = v50;
  v11 = [v10 formRegions];
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for VKCFormRegion);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v12 >> 62)
  {
    goto LABEL_33;
  }

  v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_10:
  v49 = v13;

  v10 = [v10 v8[157]];
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v52 = MEMORY[0x1E69E7CC0];
  if (v14 >> 62)
  {
    v15 = __CocoaSet.count.getter();
    if (v15)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
LABEL_12:
      v47 = v9;
      v48 = v2;
      v2 = 0;
      v51 = v14 & 0xC000000000000001;
      v16 = v14 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v51)
        {
          v17 = MEMORY[0x1DA6CE0C0](v2, v14);
        }

        else
        {
          if (v2 >= *(v16 + 16))
          {
            goto LABEL_32;
          }

          v17 = *(v14 + 8 * v2 + 32);
        }

        v18 = v17;
        v19 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          v13 = __CocoaSet.count.getter();
          goto LABEL_10;
        }

        v20 = [v17 autoFillContentType];
        if (v20)
        {
          v10 = v20;
          v9 = v14;
          v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v23 = v22;
          v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v8 = v25;
          if (v21 == v24 && v23 == v25)
          {

            v14 = v9;
LABEL_27:

            goto LABEL_14;
          }

          v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v14 = v9;
          if (v27)
          {
            goto LABEL_27;
          }
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v10 = &v52;
        specialized ContiguousArray._endMutation()();
LABEL_14:
        ++v2;
        if (v19 == v15)
        {
          v28 = v52;
          v8 = &selRef_hasSubstrokes;
          v2 = v48;
          v9 = v47;
          goto LABEL_36;
        }
      }
    }
  }

  v28 = MEMORY[0x1E69E7CC0];
LABEL_36:

  if (v28 < 0 || (v28 & 0x4000000000000000) != 0)
  {
    v30 = __CocoaSet.count.getter();
  }

  else
  {
    v30 = *(v28 + 16);
  }

  ObjectType = swift_getObjectType();
  (*(v9 + 48))(v2, v49 > 0, v30 != 0, ObjectType, v9);
  if (v30)
  {
    v32 = specialized CanvasElementViewController.canvasView.getter(&unk_1D40727A8, &direct field offset for CanvasElementViewController._canvasView);
    v33 = v32;
    swift_unknownObjectRelease();
    if (!v32)
    {
      goto LABEL_47;
    }

    v34 = specialized CanvasView.formAnalytics.getter();

    v35 = 45;
LABEL_45:
    *(v34 + 18) = v35;

    goto LABEL_47;
  }

  if (v49 >= 1)
  {
    v36 = specialized CanvasElementViewController.canvasView.getter(&unk_1D40727A8, &direct field offset for CanvasElementViewController._canvasView);
    v37 = v36;
    swift_unknownObjectRelease();
    if (!v36)
    {
      goto LABEL_47;
    }

    v34 = specialized CanvasView.formAnalytics.getter();

    v35 = 44;
    goto LABEL_45;
  }

  swift_unknownObjectRelease();
LABEL_47:
  CanvasElementViewController.updateFormFillingIfNeeded()();
  if (specialized CanvasElementViewController.canvasView.getter(&unk_1D40727A8, &direct field offset for CanvasElementViewController._canvasView) && (v38 = Canvas.editingView.getter(), v40 = v39, v41 = swift_getObjectType(), v42 = (*(v40 + 168))(v41, v40), v38, v42))
  {
    v43 = [v50 v8[157]];
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for VKCFormRegion);
    v44 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    *&v42[OBJC_IVAR____TtC8PaperKit15FormFillingView_vkcFormRegions] = v44;

    v45 = *&v42[OBJC_IVAR____TtC8PaperKit15FormFillingView_vkcAnalysis];
    *&v42[OBJC_IVAR____TtC8PaperKit15FormFillingView_vkcAnalysis] = v50;

    v46 = v45;
  }

  else
  {
    v46 = v50;
  }
}

void *CanvasElementViewController.analysis.getter()
{
  v0 = specialized CanvasElementViewController.canvasView.getter(&unk_1D4072F38, &direct field offset for CanvasElementViewController._analysis);
  v1 = v0;
  return v0;
}

id key path getter for CanvasElementViewController.analysis : <A>CanvasElementViewController<A>@<X0>(void *a1@<X8>)
{
  v2 = specialized CanvasElementViewController.canvasView.getter(&unk_1D4072F38, &direct field offset for CanvasElementViewController._analysis);
  *a1 = v2;

  return v2;
}

void key path setter for CanvasElementViewController.analysis : <A>CanvasElementViewController<A>(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  CanvasElementViewController.analysis.setter(v1);
}

void CanvasElementViewController.clearFormFillingFields()()
{
  v0 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v59 = &v42 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v42 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v58 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v57 = &v42 - v9;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v60 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v55 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v54 = &v42 - v12;
  if (!specialized CanvasElementViewController.canvasView.getter(&unk_1D40727A8, &direct field offset for CanvasElementViewController._canvasView))
  {
    return;
  }

  v66 = Canvas.editingView.getter();
  v14 = v13;
  ObjectType = swift_getObjectType();
  v16 = (*(v14 + 168))(ObjectType, v14);
  if (v16)
  {
    v17 = v16;
    v18 = FormFillingView.formFields.getter();
    v19 = v18;
    if (v18 >> 62)
    {
      v20 = __CocoaSet.count.getter();
      v21 = v66;
      if (v20)
      {
LABEL_5:
        v43 = v17;
        if (v20 < 1)
        {
          __break(1u);
        }

        else
        {
          v22 = 0;
          v63 = *(v14 + 96);
          v64 = v14 + 96;
          v61 = (v6 + 48);
          v62 = v19 & 0xC000000000000001;
          v50 = (v6 + 32);
          v49 = (v6 + 16);
          v48 = (v6 + 8);
          v47 = v60 + 32;
          v46 = v60 + 16;
          v45 = v60 + 8;
          v44 = xmmword_1D4058CF0;
          v52 = v4;
          v53 = v14;
          v51 = v19;
          v65 = v20;
          do
          {
            if (v62)
            {
              v24 = MEMORY[0x1DA6CE0C0](v22, v19);
            }

            else
            {
              v24 = *(v19 + 8 * v22 + 32);
            }

            v25 = *((*MEMORY[0x1E69E7D40] & *v24) + 0xF0);
            v26 = v24;
            v25();
            if ((*v61)(v4, 1, v5) == 1)
            {
              outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);

              v23 = MEMORY[0x1E69E7CD0];
            }

            else
            {
              v27 = v57;
              (*v50)(v57, v4, v5);
              v28 = v58;
              (*v49)(v58, v27, v5);
              WeakTagged_10.tag.getter();
              v67 = v69;
              v68 = v70;
              MEMORY[0x1DA6CB7A0](v5);
              lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
              v29 = v55;
              WeakTagged_10.init(_:id:)();
              v30 = *v48;
              (*v48)(v28, v5);
              v30(v27, v5);
              v31 = v60;
              v32 = ObjectType;
              v33 = v54;
              v34 = v29;
              v35 = v56;
              (*(v60 + 32))(v54, v34, v56);
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9Coherence13WeakTagged_10Vy8PaperKit0F13CanvasElementVGGMd);
              v36 = (*(v31 + 80) + 32) & ~*(v31 + 80);
              v37 = swift_allocObject();
              *(v37 + 16) = v44;
              (*(v31 + 16))(v37 + v36, v33, v35);
              v23 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9Coherence13WeakTagged_10Vy8PaperKit0G13CanvasElementVG_Tt0g5Tf4g_n(v37);
              swift_setDeallocating();
              v38 = *(v31 + 8);
              v38(v37 + v36, v35);
              swift_deallocClassInstance();

              v39 = v33;
              ObjectType = v32;
              v40 = v35;
              v19 = v51;
              v4 = v52;
              v38(v39, v40);
            }

            ++v22;
            v63(v23);
          }

          while (v65 != v22);
        }

        return;
      }
    }

    else
    {
      v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v21 = v66;
      if (v20)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
    v41 = v66;
  }
}

void CanvasElementViewController.updateFormFillingIfNeeded()()
{
  v0 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v293 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v293 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v376 = &v293 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v374 = &v293 - v10;
  v363 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
  v397 = *(v363 - 8);
  MEMORY[0x1EEE9AC00](v363);
  v362 = &v293 - v11;
  v361 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  *&v396 = *(v361 - 8);
  MEMORY[0x1EEE9AC00](v361);
  v360 = &v293 - v12;
  v359 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  *&v395 = *(v359 - 8);
  MEMORY[0x1EEE9AC00](v359);
  v358 = &v293 - v13;
  v357 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
  v14 = *(v357 - 8);
  MEMORY[0x1EEE9AC00](v357);
  v356 = &v293 - v15;
  v355 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v16 = *(v355 - 8);
  MEMORY[0x1EEE9AC00](v355);
  v354 = &v293 - v17;
  v353 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6ShadowVSgMd);
  v18 = MEMORY[0x1EEE9AC00](v353);
  v352 = &v293 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v351 = &v293 - v20;
  v350 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11StrokeStyleOSgMd);
  v21 = MEMORY[0x1EEE9AC00](v350);
  v349 = &v293 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v348 = &v293 - v23;
  v347 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  v24 = MEMORY[0x1EEE9AC00](v347);
  v373 = &v293 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v372 = &v293 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  v28 = MEMORY[0x1EEE9AC00](v27 - 8);
  v346 = &v293 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v379 = &v293 - v30;
  v371 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  v31 = MEMORY[0x1EEE9AC00](v371);
  v345 = &v293 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v370 = &v293 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v378 = &v293 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v383 = (&v293 - v37);
  v382 = type metadata accessor for ShapeType(0);
  v38 = MEMORY[0x1EEE9AC00](v382);
  v344 = &v293 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v375 = &v293 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v381 = &v293 - v42;
  v385 = type metadata accessor for Shape(0);
  v43 = MEMORY[0x1EEE9AC00](v385);
  v343 = &v293 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x1EEE9AC00](v43);
  v387 = &v293 - v46;
  MEMORY[0x1EEE9AC00](v45);
  v369 = &v293 - v47;
  v377 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  a_low = *(v377 - 8);
  v49 = MEMORY[0x1EEE9AC00](v377);
  v342 = &v293 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v380 = &v293 - v51;
  v52 = specialized CanvasElementViewController.canvasView.getter(&unk_1D40727A8, &direct field offset for CanvasElementViewController._canvasView);
  if (!v52)
  {
    return;
  }

  v53 = v52;
  v398 = v52;
  v54 = specialized CanvasElementViewController.canvasView.getter(&unk_1D4072F38, &direct field offset for CanvasElementViewController._analysis);
  if (!v54)
  {
    v253 = v398;

    return;
  }

  v55 = v54;
  v318 = v53;
  v365 = v7;
  v366 = v3;
  v56 = v398;
  v57 = v55;
  v58 = AnyCanvas.formFieldElements.getter();
  v392 = v56;

  v401 = MEMORY[0x1E69E7CC0];
  v317 = v57;
  v59 = [v57 formRegions];
  v384 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for VKCFormRegion);
  v60 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v319 = v2;
  if (v60 >> 62)
  {
    goto LABEL_141;
  }

  v391 = v60 & 0xFFFFFFFFFFFFFF8;
  v61 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  if (v58 < 0)
  {
    v62 = v58;
  }

  else
  {
    v62 = v58 & 0xFFFFFFFFFFFFFF8;
  }

  v301 = v60;
  if (!v61)
  {
    v340 = MEMORY[0x1E69E7CC0];
    countAndFlagsBits = MEMORY[0x1E69E7CC0];
LABEL_107:

    v254 = v392;
    v255 = Canvas.editingView.getter();
    v257 = v256;
    ObjectType = swift_getObjectType();
    v58 = *(v257 + 192);
    v259 = v254;
    (v58)(countAndFlagsBits, ObjectType, v257);

    v260 = Canvas.editingView.getter();
    v262 = v261;
    v263 = swift_getObjectType();
    (*(v262 + 208))(v340, v263, v262);

    v264 = Canvas.editingView.getter();
    v265 = (*((*MEMORY[0x1E69E7D40] & *v264) + 0x90))();

    a_low = MEMORY[0x1E69E7CC0];
    if (v265)
    {
      if (one-time initialization token for manager != -1)
      {
        swift_once();
      }

      specialized FormAnalytics.recordLatencyEvent(timestamps:endToEnd:)(v266, 1);
    }

    v267 = Canvas.editingView.getter();
    v269 = v268;

    v270 = swift_getObjectType();
    v4 = (*(v269 + 168))(v270, v269);

    if (!v4)
    {

      return;
    }

    *&v395 = v259;
    v271 = [v317 formRegions];
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    *&v400.a = a_low;
    *&v394 = v4;
    if (v16 >> 62)
    {
      v272 = __CocoaSet.count.getter();
      if (v272)
      {
        goto LABEL_114;
      }
    }

    else
    {
      v272 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v272)
      {
LABEL_114:
        v60 = 0;
        v398 = (v16 & 0xC000000000000001);
        v397 = (v16 & 0xFFFFFFFFFFFFFF8);
        *&v396 = *MEMORY[0x1E698E130];
        do
        {
          if (v398)
          {
            v273 = MEMORY[0x1DA6CE0C0](v60, v16);
          }

          else
          {
            if (v60 >= *(v397 + 2))
            {
              goto LABEL_138;
            }

            v273 = *(v16 + 8 * v60 + 32);
          }

          v274 = v273;
          v58 = v60 + 1;
          if (__OFADD__(v60, 1))
          {
            goto LABEL_137;
          }

          v275 = [v273 autoFillContentType];
          if (!v275)
          {
            goto LABEL_115;
          }

          v276 = v275;
          v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          a_low = v277;
          v278 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v14 = v279;
          if (v4 == v278 && a_low == v279)
          {

            goto LABEL_116;
          }

          v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v4)
          {
LABEL_115:
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v4 = *(*&v400.a + 16);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

LABEL_116:
          ++v60;
        }

        while (v58 != v272);
      }
    }

    v281 = OBJC_IVAR____TtC8PaperKit15FormFillingView_analytics;
    v282 = v394;
    v283 = *(v394 + OBJC_IVAR____TtC8PaperKit15FormFillingView_analytics);
    if ((*&v400.a & 0x8000000000000000) != 0 || (*&v400.a & 0x4000000000000000) != 0)
    {
      v284 = __CocoaSet.count.getter();
    }

    else
    {
      v284 = *(*&v400.a + 16);
    }

    v285 = countAndFlagsBits;

    *(v283 + 32) = v284;

    v286 = *&v282[v281];
    if (v285 >> 62)
    {
      *(v286 + 24) = __CocoaSet.count.getter();
      v287 = v395;
      v292 = specialized CanvasView.formAnalytics.getter();
      v289 = __CocoaSet.count.getter();
      v288 = v292;
    }

    else
    {
      *(v286 + 24) = *((v285 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v287 = v395;
      v288 = specialized CanvasView.formAnalytics.getter();
      v289 = *((v285 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v290 = v288;

    if (v289)
    {
      v291 = 41;
    }

    else
    {
      v291 = 39;
    }

    *(v290 + 17) = v291;

    return;
  }

  v294 = v62;
  v63 = 0;
  v390 = v60 & 0xC000000000000001;
  v389 = v60 + 32;
  v60 = v58 & 0xC000000000000001;
  v315 = *MEMORY[0x1E69DB648];
  v311 = (a_low + 16);
  v310 = (a_low + 56);
  v314 = *MEMORY[0x1E69DB688];
  v308 = v14 + 5;
  v309 = (v16 + 40);
  v313 = *MEMORY[0x1E69DB660];
  v306 = (v396 + 40);
  v307 = (v395 + 40);
  v297 = (a_low + 40);
  v298 = (a_low + 32);
  v304 = (v397 + 40);
  v305 = (a_low + 48);
  v364 = (v4 + 16);
  v341 = (v4 + 8);
  v296 = 0x80000001D40850C0;
  v302 = (a_low + 8);
  v303 = (v4 + 56);
  v312 = xmmword_1D405FD70;
  v295 = xmmword_1D4058CF0;
  countAndFlagsBits = MEMORY[0x1E69E7CC0];
  v340 = MEMORY[0x1E69E7CC0];
  v388 = v61;
  while (1)
  {
    if (v390)
    {
      v65 = MEMORY[0x1DA6CE0C0](v63, v301);
      v66 = __OFADD__(v63, 1);
      v67 = v63 + 1;
      if (v66)
      {
        goto LABEL_135;
      }
    }

    else
    {
      if (v63 >= *(v391 + 16))
      {
        goto LABEL_136;
      }

      v65 = *(v389 + 8 * v63);
      v66 = __OFADD__(v63, 1);
      v67 = v63 + 1;
      if (v66)
      {
        goto LABEL_135;
      }
    }

    v393 = v67;
    v397 = v65;
    v68 = [v65 quad];
    if (!v68)
    {
      break;
    }

    v69 = v68;
    [v68 boundingBox];
    v71 = v70;
    v73 = v72;
    v75 = v74;
    v77 = v76;

    v78 = v392;
    v79 = Canvas.editingView.getter();
    a_low = *((*MEMORY[0x1E69E7D40] & *v79) + 0x2A0);
    v398 = v78;
    (a_low)(v402);
    v395 = v402[1];
    v396 = v402[0];
    v394 = v402[2];

    *&v400.a = v396;
    *&v400.c = v395;
    *&v400.tx = v394;
    v406.origin.x = v71;
    v406.origin.y = v73;
    v406.size.width = v75;
    v406.size.height = v77;
    v407 = CGRectApplyAffineTransform(v406, &v400);
    x = v407.origin.x;
    y = v407.origin.y;
    width = v407.size.width;
    height = v407.size.height;
    if (v58 >> 62)
    {
      v84 = __CocoaSet.count.getter();
    }

    else
    {
      v84 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v4 = 0;
    v16 = MEMORY[0x1E69E7D40];
    while (v84 != v4)
    {
      if (v60)
      {
        v85 = MEMORY[0x1DA6CE0C0](v4, v58);
      }

      else
      {
        if (v4 >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_132;
        }

        v85 = *(v58 + 8 * v4 + 32);
      }

      v86 = v85;
      if (__OFADD__(v4, 1))
      {
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
        v391 = v60 & 0xFFFFFFFFFFFFFF8;
        v61 = __CocoaSet.count.getter();
        goto LABEL_5;
      }

      v408.origin.x = (*((*v16 & *v85) + 0x170))();
      v413.origin.x = x;
      v413.origin.y = y;
      v413.size.width = width;
      v413.size.height = height;
      a_low = CGRectIntersectsRect(v408, v413);

      ++v4;
      if (a_low)
      {

        v64 = v388;
        goto LABEL_10;
      }
    }

    v87 = v397;
    v88 = [v397 autoFillContentType];
    if (v88)
    {
      v89 = v88;
      v90 = v87;
      if ([v87 regionType] == 4)
      {

        a_low = 50;
        goto LABEL_33;
      }

      v91 = v89;
    }

    else
    {
      v91 = [v87 autoFillContentType];
      if (!v91)
      {
        goto LABEL_158;
      }

      v90 = v87;
    }

    FormContentType.init(_:)(v91);
    a_low = LOBYTE(v400.a);
LABEL_33:
    [v90 suggestedLineHeight];
    *&v396 = v92;
    v93 = Canvas.editingView.getter();
    [v93 frame];
    v95 = v94;
    v97 = v96;
    v99 = v98;
    v101 = v100;

    v409.origin.x = v95;
    v409.origin.y = v97;
    v409.size.width = v99;
    v409.size.height = v101;
    v102 = CGRectGetHeight(v409);
    if (one-time initialization token for formFieldFont != -1)
    {
      v250 = v102;
      swift_once();
      v102 = v250;
    }

    v14 = [static UIConstants.formFieldFont fontWithSize_];
    v103 = [v90 children];
    if (!v103)
    {
      goto LABEL_156;
    }

    v104 = v103;
    v105 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v105 >> 62)
    {
      v106 = __CocoaSet.count.getter();
    }

    else
    {
      v106 = *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v106)
    {
      v399 = MEMORY[0x1E69E7CC0];
      v112 = [v397 children];
      if (!v112)
      {
        goto LABEL_162;
      }

      v113 = v112;
      v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (!(v4 >> 62))
      {
        v339 = v4 & 0xFFFFFFFFFFFFFF8;
        v114 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v293 = v4;
        if (v114)
        {
          goto LABEL_47;
        }

        goto LABEL_97;
      }

      v339 = v4 & 0xFFFFFFFFFFFFFF8;
      v114 = __CocoaSet.count.getter();
      v293 = v4;
      if (!v114)
      {
LABEL_97:
        v16 = MEMORY[0x1E69E7CC0];
LABEL_98:

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v340 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v340[2] + 1, 1, v340);
        }

        v64 = v388;
        v4 = v340[2];
        v251 = v340[3];
        if (v4 >= v251 >> 1)
        {
          v340 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v251 > 1), v4 + 1, 1, v340);
        }

        v252 = v340;
        v340[2] = v4 + 1;
        v252[v4 + 4] = v16;
        goto LABEL_10;
      }

LABEL_47:
      a_low = 0;
      v337 = v4 + 32;
      v338 = v4 & 0xC000000000000001;
      v16 = MEMORY[0x1E69E7CC0];
      v299 = v60;
      v300 = v14;
      v336 = v114;
      while (2)
      {
        if (v338)
        {
          v115 = MEMORY[0x1DA6CE0C0](a_low, v293);
          v66 = __OFADD__(a_low++, 1);
          if (v66)
          {
            goto LABEL_139;
          }
        }

        else
        {
          if (a_low >= *(v339 + 16))
          {
            goto LABEL_140;
          }

          v115 = *(v337 + 8 * a_low);
          v66 = __OFADD__(a_low++, 1);
          if (v66)
          {
            goto LABEL_139;
          }
        }

        v367 = a_low;
        *&v396 = v115;
        v116 = [v115 quad];
        if (!v116)
        {
          goto LABEL_157;
        }

        v117 = v116;
        [v116 boundingBox];
        v119 = v118;
        v121 = v120;
        v123 = v122;
        v125 = v124;

        v126 = Canvas.editingView.getter();
        (*((*MEMORY[0x1E69E7D40] & *v126) + 0x2A0))(v403);
        v394 = v403[1];
        v395 = v403[0];
        v368 = v403[2];

        *&v400.a = v395;
        *&v400.c = v394;
        *&v400.tx = v368;
        v410.origin.x = v119;
        v410.origin.y = v121;
        v410.size.width = v123;
        v410.size.height = v125;
        v411 = CGRectApplyAffineTransform(v410, &v400);
        v127 = v411.origin.x;
        v128 = v411.origin.y;
        v129 = v411.size.width;
        v130 = v411.size.height;
        v4 = 0;
        while (v84 != v4)
        {
          if (v60)
          {
            v131 = MEMORY[0x1DA6CE0C0](v4, v58);
          }

          else
          {
            if (v4 >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_134;
            }

            v131 = *(v58 + 8 * v4 + 32);
          }

          v132 = v131;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_133;
          }

          v412.origin.x = (*((*MEMORY[0x1E69E7D40] & *v131) + 0x170))();
          v414.origin.x = v127;
          v414.origin.y = v128;
          v414.size.width = v129;
          v414.size.height = v130;
          a_low = CGRectIntersectsRect(v412, v414);

          ++v4;
          if (a_low)
          {

            goto LABEL_48;
          }
        }

        v133 = v396;
        v134 = [v396 autoFillContentType];
        if (v134)
        {
          v135 = v134;
          v136 = v133;
          if ([v133 regionType] == 4)
          {

            v137 = 50;
            goto LABEL_69;
          }

          v138 = v135;
        }

        else
        {
          v138 = [v133 autoFillContentType];
          if (!v138)
          {
            goto LABEL_161;
          }

          v136 = v133;
        }

        FormContentType.init(_:)(v138);
        v137 = LOBYTE(v400.a);
LABEL_69:
        LODWORD(countAndFlagsBits) = v137;
        v139 = v14;
        v335 = [v136 autofillNewContextStart];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd);
        inited = swift_initStackObject();
        *(inited + 16) = v312;
        v141 = v315;
        *(inited + 32) = v315;
        *&v395 = inited + 32;
        v142 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIFont);
        *(inited + 40) = v139;
        v143 = v314;
        *(inited + 64) = v142;
        *(inited + 72) = v143;
        v144 = objc_allocWithZone(MEMORY[0x1E69DB7C8]);
        v334 = v139;
        v145 = v141;
        v146 = v143;
        v147 = [v144 init];
        [v147 setAlignment_];
        v148 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSMutableParagraphStyle);
        *(inited + 80) = v147;
        v149 = v313;
        *(inited + 104) = v148;
        *(inited + 112) = v149;
        *(inited + 144) = MEMORY[0x1E69E7DE0];
        *(inited + 120) = 0;
        v150 = v149;
        v151 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSAttributedStringKeya_yptMd);
        swift_arrayDestroy();
        v152 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
        v153 = MEMORY[0x1DA6CCED0](0, 0xE000000000000000);
        type metadata accessor for NSAttributedStringKey(0);
        _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;
        [v152 initWithString:v153 attributes:isa];

        MEMORY[0x1EEE9AC00](v155);
        v156 = lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
        CRAttributedString.init(_:transformAttributes:)();
        swift_storeEnumTagMultiPayload();
        v157 = type metadata accessor for Color(0);
        v158 = *(v157 + 20);
        v159 = type metadata accessor for UnknownValueProperties();
        (*(*(v159 - 8) + 56))(v383 + v158, 1, 1, v159);
        if (one-time initialization token for extendedSRGBColorSpace != -1)
        {
          swift_once();
        }

        v160 = CGColorCreate(static Color.extendedSRGBColorSpace, dbl_1F4F51320);
        if (!v160)
        {
          goto LABEL_160;
        }

        v161 = v160;
        v332 = v156;
        object = v151;
        CGColorRef.calculateMinimumHeadroom.getter();
        v162 = CGColorCreateWithContentHeadroom();
        if (!v162)
        {
          goto LABEL_159;
        }

        v163 = v162;

        *v383 = v163;
        v164 = *(v157 - 8);
        v165 = *(v164 + 56);
        *&v368 = v164 + 56;
        v165();
        (v165)(v378, 1, 1, v157);
        v166 = v165;
        v330 = v165;
        v167 = v379;
        v168 = v377;
        (*v311)(v379, v380, v377);
        (*v310)(v167, 0, 1, v168);
        type metadata accessor for CGRect(0);
        v329 = v169;
        v328 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
        memset(&v400, 0, 32);
        CRRegister.init(wrappedValue:)();
        v170 = v385;
        v400.a = 0.0;
        *&v394 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
        CRRegister.init(_:)();
        v326 = v157;
        v331 = *(v170 + 24);
        v171 = v370;
        (v166)(v370, 1, 1, v157);
        v172 = v171;
        v173 = v171;
        v174 = v345;
        outlined init with copy of Date?(v172, v345, &_s8PaperKit5ColorVSgMd);
        *&v395 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v173, &_s8PaperKit5ColorVSgMd);
        v327 = *(v385 + 28);
        (v330)(v173, 1, 1, v326);
        outlined init with copy of Date?(v173, v174, &_s8PaperKit5ColorVSgMd);
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v173, &_s8PaperKit5ColorVSgMd);
        v175 = v385;
        v326 = *(v385 + 32);
        v400.a = 5.0;
        CRRegister.init(wrappedValue:)();
        v323 = *(v175 + 36);
        v176 = v375;
        swift_storeEnumTagMultiPayload();
        v324 = type metadata accessor for ShapeType;
        _s8PaperKit9ShapeTypeOWOcTm_2(v176, v344, type metadata accessor for ShapeType);
        v322 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, type metadata accessor for ShapeType);
        CRRegister.init(wrappedValue:)();
        _s8PaperKit5ImageVWOhTm_1(v176, type metadata accessor for ShapeType);
        v177 = v385;
        v400.a = 1.0;
        CRRegister.init(wrappedValue:)();
        v178 = v177;
        v400.a = 0.0;
        LOBYTE(v400.b) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
        CRRegister.init(wrappedValue:)();
        v400.a = 0.0;
        LOBYTE(v400.b) = 0;
        CRRegister.init(wrappedValue:)();
        v316 = v177[13];
        CRAttributedString.init(_:)();
        v325 = v177[14];
        v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
        v180 = *(v179 - 8);
        v181 = *(v180 + 56);
        v182 = v372;
        *&v368 = v179;
        v332 = v181;
        v330 = (v180 + 56);
        v181(v372, 1, 1);
        outlined init with copy of Date?(v182, v373, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
        lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
        v183 = v387;
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v182, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
        v184 = v183;
        v185 = v183 + v178[15];
        v400.a = 0.0;
        v186 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
        v325 = v185;
        v321 = v186;
        CRRegister.init(wrappedValue:)();
        v400.a = 0.0;
        lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
        CRRegister.init(wrappedValue:)();
        v320 = v178[17];
        v187 = type metadata accessor for StrokeStyle(0);
        v188 = v348;
        (*(*(v187 - 8) + 56))(v348, 1, 1, v187);
        outlined init with copy of Date?(v188, v349, &_s8PaperKit11StrokeStyleOSgMd);
        lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v188, &_s8PaperKit11StrokeStyleOSgMd);
        v320 = v178[18];
        v189 = type metadata accessor for Shadow();
        v190 = v351;
        (*(*(v189 - 8) + 56))(v351, 1, 1, v189);
        outlined init with copy of Date?(v190, v352, &_s8PaperKit6ShadowVSgMd);
        lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v190, &_s8PaperKit6ShadowVSgMd);
        memset(&v400, 0, sizeof(v400));
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
        lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        UnknownProperties.init()();
        v400.a = v127;
        v400.b = v128;
        v400.c = v129;
        v400.d = v130;
        v191 = v354;
        CRRegister.init(_:)();
        (*v309)(v184, v191, v355);
        _s8PaperKit9ShapeTypeOWOcTm_2(v381, v375, v324);
        v192 = v356;
        CRRegister.init(_:)();
        (*v308)(v184 + v323, v192, v357);
        v400.a = 5.0;
        v193 = v358;
        CRRegister.init(_:)();
        v194 = v184;
        (*v307)(v184 + v326, v193, v359);
        v195 = v370;
        outlined init with copy of Date?(v383, v370, &_s8PaperKit5ColorVSgMd);
        v196 = v360;
        CRRegister.init(_:)();
        v197 = *v306;
        v198 = v194 + v327;
        v199 = v361;
        (*v306)(v198, v196, v361);
        outlined init with copy of Date?(v378, v195, &_s8PaperKit5ColorVSgMd);
        CRRegister.init(_:)();
        v197(v387 + v331, v196, v199);
        v200 = v377;
        v201 = v346;
        outlined init with copy of Date?(v379, v346, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
        if ((*v305)(v201, 1, v200) == 1)
        {
          outlined destroy of StocksKitCurrencyCache.Provider?(v201, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
        }

        else
        {
          v202 = v342;
          (*v298)(v342, v201, v200);
          (*v297)(v387 + v316, v202, v200);
        }

        *&v400.a = 2;
        v203 = v362;
        CRRegister.init(_:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v379, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
        outlined destroy of StocksKitCurrencyCache.Provider?(v378, &_s8PaperKit5ColorVSgMd);
        outlined destroy of StocksKitCurrencyCache.Provider?(v383, &_s8PaperKit5ColorVSgMd);
        _s8PaperKit5ImageVWOhTm_1(v381, type metadata accessor for ShapeType);
        (*v304)(v325, v203, v363);
        v204 = v369;
        _s8PaperKit5ShapeVWObTm_2(v387, v369, type metadata accessor for Shape);
        LOBYTE(v400.a) = countAndFlagsBits;
        Shape.formContentType.setter(&v400);
        v205 = v372;
        CRAttributedString.Attributes<>.init(nsAttributes:darkMode:)(object, 0, v372);
        v332(v205, 0, 1, v368);
        outlined init with copy of Date?(v205, v373, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
        CRRegister.wrappedValue.setter();
        outlined destroy of StocksKitCurrencyCache.Provider?(v205, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
        _s8PaperKit9ShapeTypeOWOcTm_2(v204, v343, type metadata accessor for Shape);
        static CRKeyPath.unique.getter();
        _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type Shape and conformance Shape, type metadata accessor for Shape);
        v206 = v374;
        Capsule.init(_:id:)();
        *&v395 = *v364;
        v207 = v376;
        v208 = v366;
        (v395)(v376, v206, v366);
        LOBYTE(v206) = countAndFlagsBits == 50;
        v209 = objc_allocWithZone(type metadata accessor for ShapeView());
        *(v209 + direct field offset for ShapeView.$__lazy_storage_$_shapeLayer) = 0;
        *(v209 + direct field offset for ShapeView.$__lazy_storage_$_endLineEndLayer) = 0;
        *(v209 + direct field offset for ShapeView.$__lazy_storage_$_startLineEndLayer) = 0;
        *(v209 + direct field offset for ShapeView.$__lazy_storage_$_groupLayer) = 0;
        v210 = direct field offset for ShapeView.showsSignaturePopover;
        *(v209 + direct field offset for ShapeView.showsSignaturePopover) = 0;
        v211 = direct field offset for ShapeView.analytics_inputSource;
        *(v209 + direct field offset for ShapeView.analytics_inputSource) = 68;
        v212 = direct field offset for ShapeView.analytics_documentType;
        *(v209 + direct field offset for ShapeView.analytics_documentType) = 68;
        *(v209 + direct field offset for ShapeView._textBoxView) = 0;
        *(v209 + direct field offset for ShapeView.appearanceStreamView) = 0;
        *(v209 + v210) = v206;
        *(v209 + v211) = 9;
        *(v209 + v212) = 5;
        v213 = v395;
        (v395)(v365, v207, v208);
        v214 = MEMORY[0x1E69E7D40];
        v215 = v208;
        (*v303)(v209 + *((*MEMORY[0x1E69E7D40] & *v209) + 0x3F8), 1, 1, v208);
        *(v209 + *((*v214 & *v209) + 0x400)) = 0;
        *(v209 + *((*v214 & *v209) + 0x408)) = 0;
        *(v209 + *((*v214 & *v209) + 0x410)) = 0;
        *(v209 + *((*v214 & *v209) + 0x418)) = 0;
        *(v209 + *((*v214 & *v209) + 0x420)) = 0;
        v216 = v365;
        v213(v209 + *((*v214 & *v209) + 0x3F0), v365, v215);
        *&v368 = v398;
        v217 = AnyCanvasElementView.init(frame:canvas:parentCanvasElement:)(v318, 0, 0.0, 0.0, 0.0, 0.0);
        specialized CanvasElementView.setupAccessibility()();
        v218 = MEMORY[0x1E69E7D40];
        (*((*MEMORY[0x1E69E7D40] & *v217) + 0x520))();
        *&v394 = *v341;
        v219 = v216;
        v220 = v366;
        (v394)(v219, v366);
        v221 = v217;
        specialized AppearanceStreamViewSupport.setupAppearanceStreamIfNeeded()();
        v222 = *((*v218 & *v221) + 0x3F0);
        v223 = v221;
        swift_beginAccess();
        v224 = v221 + v222;
        v225 = v365;
        v226 = v220;
        (v395)(v365, v224, v220);
        v227 = v225;
        LOBYTE(v225) = specialized Capsule<>.isTextBox.getter();

        v228 = v227;
        v229 = v394;
        (v394)(v228, v226);
        v60 = v299;
        if (v225)
        {
          v230 = v366;
          v231 = v335;
          v232 = v334;
        }

        else
        {
          [v223 setIsAccessibilityElement_];
          *&v395 = v223;
          if (one-time initialization token for paperKitBundle != -1)
          {
            swift_once();
          }

          v405._object = v296;
          v233._countAndFlagsBits = 0x4025206570616853;
          v233._object = 0xE800000000000000;
          v234.value._countAndFlagsBits = 0x617A696C61636F4CLL;
          v234.value._object = 0xEB00000000656C62;
          v235._countAndFlagsBits = 0;
          v235._object = 0xE000000000000000;
          v405._countAndFlagsBits = 0xD00000000000005FLL;
          v236 = NSLocalizedString(_:tableName:bundle:value:comment:)(v233, v234, paperKitBundle, v235, v405);
          countAndFlagsBits = v236._countAndFlagsBits;
          object = v236._object;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
          v237 = swift_allocObject();
          *(v237 + 16) = v295;
          swift_getKeyPath();
          v238 = v375;
          v230 = v366;
          Capsule.subscript.getter();

          ShapeType.any.getter(&v400);
          _s8PaperKit5ImageVWOhTm_1(v238, type metadata accessor for ShapeType);
          d = v400.d;
          tx = v400.tx;
          __swift_project_boxed_opaque_existential_1(&v400, *&v400.d);
          v241 = (*(*&tx + 48))(COERCE_CGFLOAT(*&d), COERCE_CGFLOAT(*&tx));
          v243 = v242;
          *(v237 + 56) = MEMORY[0x1E69E6158];
          *(v237 + 64) = lazy protocol witness table accessor for type String and conformance String();
          *(v237 + 32) = v241;
          *(v237 + 40) = v243;
          __swift_destroy_boxed_opaque_existential_0(&v400);
          v244 = static String.localizedStringWithFormat(_:_:)();
          v246 = v245;

          v232 = MEMORY[0x1DA6CCED0](v244, v246);

          v223 = v395;
          [v395 setAccessibilityLabel_];

          v229 = v394;
          v231 = v335;
        }

        v229(v376, v230);
        v229(v374, v230);
        _s8PaperKit5ImageVWOhTm_1(v369, type metadata accessor for Shape);
        (*v302)(v380, v377);
        *(v223 + OBJC_IVAR____TtC8PaperKit20AnyCanvasElementView_isDetectedFormField) = 1;
        *(v223 + OBJC_IVAR____TtC8PaperKit20AnyCanvasElementView_startsNewAutofillContext) = v231;
        v247 = v223;
        MEMORY[0x1DA6CD190]();
        v14 = v300;
        if (*((v401 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v401 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        countAndFlagsBits = v401;
        v4 = v247;
        MEMORY[0x1DA6CD190]();
        if (*((v399 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v399 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v16 = v399;
        if (one-time initialization token for manager != -1)
        {
          swift_once();
        }

        v248 = Canvas.editingView.getter();
        v249 = (*((*MEMORY[0x1E69E7D40] & *v248) + 0x90))();

        specialized FormAnalytics.addFielde2eEvent(canvas:)(v249);
LABEL_48:
        a_low = v367;
        if (v367 == v336)
        {
          goto LABEL_98;
        }

        continue;
      }
    }

    LOBYTE(v400.a) = a_low;
    v4 = v14;
    v107 = v397;
    v108 = [v397 maxCharacterCount];
    v109 = [v107 autofillNewContextStart];
    v110 = specialized static FormFillingView.createFormFieldView(canvas:frame:text:font:alignment:textContentType:maxCharacterCount:detectedFormField:startsNewAutofillContext:analytics_inputSource:analytics_documentType:)(v398, 0, 0, v14, 0, 1, &v400, v108, x, y, width, height, 1u, v109, 9u, 5u);

    a_low = v110;
    MEMORY[0x1DA6CD190]();
    if (*((v401 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v401 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v16 = MEMORY[0x1E69E7D40];
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    countAndFlagsBits = v401;
    v64 = v388;
    if (one-time initialization token for manager != -1)
    {
      swift_once();
    }

    v14 = v398;
    v111 = Canvas.editingView.getter();

    v16 = (*((*v16 & *v111) + 0x90))();
    specialized FormAnalytics.addFielde2eEvent(canvas:)(v16);

LABEL_10:
    v63 = v393;
    if (v393 == v64)
    {
      goto LABEL_107;
    }
  }

  __break(1u);
LABEL_156:
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
}

void @objc CanvasElementViewController.toolPickerSelectedToolDidChange(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  CanvasElementViewController.toolPickerSelectedToolDidChange(_:)(v4);
}

void CanvasElementViewController.drawingPolicy.setter(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = specialized CanvasElementViewController.canvasView.getter(&unk_1D40727A8, &direct field offset for CanvasElementViewController._canvasView);
  if (v4)
  {
    v5 = v4;
    a2(a1);
  }
}

void @objc CanvasElementViewController.toolPickerSelectedToolItemDidChange(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  CanvasElementViewController.toolPickerSelectedToolItemDidChange(_:)(v4);
}

void @objc CanvasElementViewController.toolPickerIsRulerActiveDidChange(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  CanvasElementViewController.toolPickerIsRulerActiveDidChange(_:)(v4);
}

id CanvasElementViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

void @objc CanvasElementViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;

  specialized CanvasElementViewController.init(nibName:bundle:)();
}

void key path setter for CanvasView<>.alwaysUseMaxResolutionImage : CanvasView<Image>(unsigned __int8 *a1, void *a2)
{
  v2 = *a1;
  v3 = *(*a2 + direct field offset for Canvas.paperView);
  v4 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x668);
  v5 = v3;
  v4(v2);
}

void CanvasView<>.alwaysUseMaxResolutionImage.setter(uint64_t a1)
{
  v3 = *(v1 + direct field offset for Canvas.paperView);
  v4 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x668);
  v5 = v3;
  v4(a1);
}

void (*CanvasView<>.alwaysUseMaxResolutionImage.modify(uint64_t a1))(uint64_t a1)
{
  v2 = direct field offset for Canvas.paperView;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = (*((*MEMORY[0x1E69E7D40] & **(v1 + v2)) + 0x660))() & 1;
  return CanvasView<>.alwaysUseMaxResolutionImage.modify;
}

void CanvasView<>.alwaysUseMaxResolutionImage.modify(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(*a1 + *(a1 + 8));
  v3 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x668);
  v4 = v2;
  v3(v1);
}

uint64_t CanvasElementViewController<>.imageDescription.getter()
{
  type metadata accessor for Image(0);
  _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
  swift_getKeyPath();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + direct field offset for CanvasElementViewController._canvasView);
  if (v1)
  {
    v2 = *&v1[direct field offset for Canvas._canvasElementController];
    v3 = v2;
    if (v2)
    {
LABEL_3:
      v4 = &v3[OBJC_IVAR____TtC8PaperKit23CanvasElementController_delegate];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v5 = *(v4 + 1);
        ObjectType = swift_getObjectType();
        v7 = *(v5 + 8);
        v8 = v2;
        v9 = v7(ObjectType, v5);
        v10 = swift_unknownObjectRelease();
        if (v9)
        {
          v11 = (*((*MEMORY[0x1E69E7D40] & *v9) + 0x5A0))(v10);

          return v11;
        }
      }

      else
      {
        v19 = v2;
      }

      return 0;
    }

    v13 = *&v1[direct field offset for CanvasView.canvasTiledView];
    if (v13)
    {
      v14 = swift_getObjectType();
      result = swift_conformsToProtocol2();
      if (!result)
      {
        return result;
      }

      v15 = *(result + 48);
      v16 = result;
      v17 = v1;
      v18 = v13;
      v3 = v15(v14, v16);

      goto LABEL_3;
    }
  }

  return 0;
}

void CanvasElementViewController<>.imageDescription.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Image(0);
  _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
  swift_getKeyPath();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v2 + direct field offset for CanvasElementViewController._canvasView);
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = *&v5[direct field offset for Canvas._canvasElementController];
  v7 = v6;
  if (!v6)
  {
    v14 = *&v5[direct field offset for CanvasView.canvasTiledView];
    if (!v14)
    {
      goto LABEL_11;
    }

    ObjectType = swift_getObjectType();
    v16 = swift_conformsToProtocol2();
    if (!v16)
    {
      goto LABEL_11;
    }

    v17 = *(v16 + 48);
    v18 = v16;
    v19 = v5;
    v20 = v14;
    v7 = v17(ObjectType, v18);
  }

  v8 = &v7[OBJC_IVAR____TtC8PaperKit23CanvasElementController_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 1);
    v10 = swift_getObjectType();
    v11 = *(v9 + 8);
    v12 = v6;
    v13 = v11(v10, v9);
    swift_unknownObjectRelease();
    if (v13)
    {
      (*((*MEMORY[0x1E69E7D40] & *v13) + 0x5A8))(a1, a2);

      return;
    }
  }

  else
  {
    v21 = v6;
  }

LABEL_11:
}

uint64_t (*CanvasElementViewController<>.imageDescription.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = CanvasElementViewController<>.imageDescription.getter();
  a1[1] = v3;
  return CanvasElementViewController<>.imageDescription.modify;
}

uint64_t CanvasElementViewController<>.imageCaption.getter()
{
  type metadata accessor for Image(0);
  _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
  swift_getKeyPath();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + direct field offset for CanvasElementViewController._canvasView);
  if (v1)
  {
    v2 = *&v1[direct field offset for Canvas._canvasElementController];
    v3 = v2;
    if (v2)
    {
LABEL_3:
      v4 = &v3[OBJC_IVAR____TtC8PaperKit23CanvasElementController_delegate];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v5 = *(v4 + 1);
        ObjectType = swift_getObjectType();
        v7 = *(v5 + 8);
        v8 = v2;
        v9 = v7(ObjectType, v5);
        v10 = swift_unknownObjectRelease();
        if (v9)
        {
          v11 = (*((*MEMORY[0x1E69E7D40] & *v9) + 0x5B8))(v10);

          return v11;
        }
      }

      else
      {
        v19 = v2;
      }

      return 0;
    }

    v13 = *&v1[direct field offset for CanvasView.canvasTiledView];
    if (v13)
    {
      v14 = swift_getObjectType();
      result = swift_conformsToProtocol2();
      if (!result)
      {
        return result;
      }

      v15 = *(result + 48);
      v16 = result;
      v17 = v1;
      v18 = v13;
      v3 = v15(v14, v16);

      goto LABEL_3;
    }
  }

  return 0;
}

void CanvasElementViewController<>.imageCaption.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Image(0);
  _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
  swift_getKeyPath();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v2 + direct field offset for CanvasElementViewController._canvasView);
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = *&v5[direct field offset for Canvas._canvasElementController];
  v7 = v6;
  if (!v6)
  {
    v14 = *&v5[direct field offset for CanvasView.canvasTiledView];
    if (!v14)
    {
      goto LABEL_11;
    }

    ObjectType = swift_getObjectType();
    v16 = swift_conformsToProtocol2();
    if (!v16)
    {
      goto LABEL_11;
    }

    v17 = *(v16 + 48);
    v18 = v16;
    v19 = v5;
    v20 = v14;
    v7 = v17(ObjectType, v18);
  }

  v8 = &v7[OBJC_IVAR____TtC8PaperKit23CanvasElementController_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 1);
    v10 = swift_getObjectType();
    v11 = *(v9 + 8);
    v12 = v6;
    v13 = v11(v10, v9);
    swift_unknownObjectRelease();
    if (v13)
    {
      (*((*MEMORY[0x1E69E7D40] & *v13) + 0x5C0))(a1, a2);

      return;
    }
  }

  else
  {
    v21 = v6;
  }

LABEL_11:
}

uint64_t (*CanvasElementViewController<>.imageCaption.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = CanvasElementViewController<>.imageCaption.getter();
  a1[1] = v3;
  return CanvasElementViewController<>.imageCaption.modify;
}

uint64_t CanvasElementViewController<>.imageDescription.modify(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    return a3(*a1, v4);
  }

  a3(v5, v4);
}

uint64_t CanvasElementViewController<>.imageSize()()
{
  v1[12] = v0;
  v2 = type metadata accessor for CRKeyPath();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = type metadata accessor for Image(0);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  v1[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit5ImageVGSgMd);
  v1[20] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit5ImageVGMd);
  v1[21] = v3;
  v1[22] = *(v3 - 8);
  v1[23] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd);
  v1[24] = v4;
  v1[25] = *(v4 - 8);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[29] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[30] = v6;
  v1[31] = v5;

  return MEMORY[0x1EEE6DFA0](CanvasElementViewController<>.imageSize(), v6, v5);
}

{
  v1 = v0[16];
  v2 = v0[12];
  v3 = swift_task_alloc();
  *v3 = v1;
  v4 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
  v3[1] = v4;
  v3[2] = &protocol witness table for Image;
  swift_getKeyPath();

  v0[8] = v2;
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = (v2 + direct field offset for CanvasElementViewController.__imageSize);
  if (*(v2 + direct field offset for CanvasElementViewController.__imageSize) != 0.0 || v5[1] != 0.0)
  {
    v30 = v0[16];
    v31 = v0[12];

    v32 = swift_task_alloc();
    *v32 = v30;
    v32[1] = v4;
    v32[2] = &protocol witness table for Image;
    swift_getKeyPath();

    v0[9] = v31;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v33 = *v5;
    v34 = *(v5 + 1);
LABEL_13:

    v38 = v0[1];
    v39.n128_f64[0] = v33;
    v40.n128_u64[0] = v34;

    return v38(v39, v40);
  }

  v6 = v0[16];
  v7 = v0[12];
  v8 = swift_task_alloc();
  *v8 = v6;
  v8[1] = v4;
  v8[2] = &protocol witness table for Image;
  swift_getKeyPath();

  v0[10] = v7;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v55 = v7;
  v9 = *(v7 + direct field offset for CanvasElementViewController._canvasView);
  if (!v9)
  {

LABEL_12:
    v33 = 0.0;
    v34 = 0;
    goto LABEL_13;
  }

  v10 = v0[27];
  v12 = v0[24];
  v11 = v0[25];
  v49 = v0[28];
  v50 = v0[16];
  v51 = v0[12];
  v52 = direct field offset for CanvasElementViewController._canvasView;
  v13 = *(v9 + direct field offset for Canvas.paperView);
  v54 = v4;
  v14 = *((*MEMORY[0x1E69E7D40] & *v13) + 0x3F0);
  swift_beginAccess();
  v48 = *(v11 + 16);
  v48(v10, &v13[v14], v12);
  (*(v11 + 32))(v49, v10, v12);
  v15 = swift_task_alloc();
  *v15 = v50;
  v15[1] = v54;
  v15[2] = &protocol witness table for Image;
  swift_getKeyPath();

  v0[11] = v51;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = *(v55 + v52);
  if (!v16)
  {
    v35 = v0[28];
    v36 = v0[24];
    v37 = v0[25];

    (*(v37 + 8))(v35, v36);
    goto LABEL_10;
  }

  v17 = v0[25];
  v18 = v0[26];
  v19 = v0[24];
  v20 = v0[18];
  v21 = v0[19];
  v56 = v21;
  v22 = v0[15];
  v23 = v0[14];
  v53 = v0[13];
  v24 = *(v16 + direct field offset for Canvas.paperView);
  v25 = *((*MEMORY[0x1E69E7D40] & *v24) + 0x3F0);
  swift_beginAccess();
  v48(v18, &v24[v25], v19);
  Capsule.root.getter();
  Capsule.rootID.getter();
  off_1F4F5EE70(v22, v21);
  (*(v23 + 8))(v22, v53);
  _s8PaperKit5ImageVWOhTm_1(v20, type metadata accessor for Image);
  v26 = *(v17 + 8);
  v0[32] = v26;
  v0[33] = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v26(v18, v19);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v56, 1, v27) == 1)
  {
    v29 = v0[19];
    v26(v0[28], v0[24]);

    outlined destroy of StocksKitCurrencyCache.Provider?(v29, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
LABEL_10:
    (*(v0[22] + 56))(v0[20], 1, 1, v0[21]);
LABEL_11:
    outlined destroy of StocksKitCurrencyCache.Provider?(v0[20], &_s9Coherence3RefVy8PaperKit5ImageVGSgMd);
    goto LABEL_12;
  }

  v42 = v0[21];
  v43 = v0[22];
  v44 = v0[19];
  v45 = v0[20];
  SharedTagged_10.tagged2.getter();
  (*(v28 + 8))(v44, v27);
  if ((*(v43 + 48))(v45, 1, v42) == 1)
  {
    v26(v0[28], v0[24]);

    goto LABEL_11;
  }

  (*(v0[22] + 32))(v0[23], v0[20], v0[21]);
  Ref.subscript.getter();
  v46 = swift_task_alloc();
  v0[34] = v46;
  *v46 = v0;
  v46[1] = CanvasElementViewController<>.imageSize();
  v47 = v0[17];

  return closure #1 in Image.imageSize(applyingCrop:)(v47);
}

{
  _s8PaperKit5ImageVWOhTm_1(v0[17], type metadata accessor for Image);
  v1 = v0[30];
  v2 = v0[31];

  return MEMORY[0x1EEE6DFA0](CanvasElementViewController<>.imageSize(), v1, v2);
}

{
  v1 = v0[32];
  v2 = v0[28];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[21];
  v6 = v0[22];

  (*(v6 + 8))(v4, v5);
  v1(v2, v3);
  v8 = v0[35];
  v7 = v0[36];

  v9 = v0[1];
  v10.n128_u64[0] = v7;
  v11.n128_u64[0] = v8;

  return v9(v10, v11);
}

{
  v1 = v0[32];
  v2 = v0[28];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[21];
  v6 = v0[22];

  (*(v6 + 8))(v4, v5);
  v1(v2, v3);

  v7 = v0[1];
  v8.n128_u64[0] = 0;
  v9.n128_u64[0] = 0;

  return v7(v8, v9);
}

uint64_t CanvasElementViewController<>.imageSize()(double a1, double a2)
{
  v6 = *v3;

  if (v2)
  {
    v7 = *(v6 + 136);

    _s8PaperKit5ImageVWOhTm_1(v7, type metadata accessor for Image);
    v8 = *(v6 + 240);
    v9 = *(v6 + 248);
    v10 = CanvasElementViewController<>.imageSize();
  }

  else
  {
    *(v6 + 280) = a2;
    *(v6 + 288) = a1;
    v10 = CanvasElementViewController<>.imageSize();
    v8 = 0;
    v9 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v10, v8, v9);
}

uint64_t CanvasElementViewController<>.alwaysUseMaxResolutionImage.getter()
{
  type metadata accessor for Image(0);
  _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
  swift_getKeyPath();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v0 + direct field offset for CanvasElementViewController._canvasView);
  if (v2)
  {
    v3 = (*((*MEMORY[0x1E69E7D40] & **(v2 + direct field offset for Canvas.paperView)) + 0x660))(v1);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void CanvasElementViewController<>.alwaysUseMaxResolutionImage.setter(char a1)
{
  type metadata accessor for Image(0);
  _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
  swift_getKeyPath();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v1 + direct field offset for CanvasElementViewController._canvasView);
  if (v3)
  {
    v4 = *&v3[direct field offset for Canvas.paperView];
    v5 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x668);
    v6 = v3;
    v7 = v4;
    v5(a1 & 1);
  }
}

void (*CanvasElementViewController<>.alwaysUseMaxResolutionImage.modify(uint64_t *a1))(uint64_t a1)
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
  *(v3 + 8) = v1;
  MEMORY[0x1EEE9AC00](v3);
  *(v4 + 16) = type metadata accessor for Image(0);
  *(v4 + 24) = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
  swift_getKeyPath();
  *(v4 + 32) = direct field offset for CanvasElementViewController._$observationRegistrar;
  *v4 = v1;
  *(v4 + 40) = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = direct field offset for CanvasElementViewController._canvasView;
  *(v4 + 48) = direct field offset for CanvasElementViewController._canvasView;
  v7 = *(v1 + v6);
  if (v7)
  {
    v8 = (*((*MEMORY[0x1E69E7D40] & **(v7 + direct field offset for Canvas.paperView)) + 0x660))(v5);
  }

  else
  {
    v8 = 0;
  }

  *(v4 + 56) = v8 & 1;
  return CanvasElementViewController<>.alwaysUseMaxResolutionImage.modify;
}

void CanvasElementViewController<>.alwaysUseMaxResolutionImage.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 56);
  swift_getKeyPath();
  v3 = v1[6];
  v4 = v1[1];
  *v1 = v4;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v4 + v3);
  if (v5)
  {
    v6 = *&v5[direct field offset for Canvas.paperView];
    v7 = *((*MEMORY[0x1E69E7D40] & *v6) + 0x668);
    v8 = v5;
    v9 = v6;
    v7(v2);
  }

  free(v1);
}

uint64_t closure #1 in CanvasElementViewController<>.updateImageZoomScale(in:animated:zoomable:)(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  v8[2] = type metadata accessor for MainActor();
  v8[3] = static MainActor.shared.getter();
  v13 = swift_task_alloc();
  v8[4] = v13;
  *v13 = v8;
  v13[1] = closure #2 in PaperDocumentViewController.passwordViewController(_:shouldUnlockWithPassword:);

  return CanvasElementViewController<>.updateImageZoomScale(in:animated:zoomable:)(a7, a8, a1, a2);
}

BOOL specialized closure #1 in CanvasElementView.setupAccessibility()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x90))();
  v4 = v3 != 0;
  if (v3)
  {
    v5 = v3;
    v18 = MEMORY[0x1EEE9AC00](v3);
    (*((*v2 & *v18) + 0x6E8))(0, 0, partial apply for specialized closure #1 in closure #1 in CanvasElementView.setupAccessibility());
    v6 = *MEMORY[0x1E69DD888];
    if (one-time initialization token for paperKitBundle != -1)
    {
      swift_once();
    }

    v22._object = 0x80000001D408B0B0;
    v7.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v7.value._object = 0xEB00000000656C62;
    v8._object = 0x80000001D408B090;
    v22._countAndFlagsBits = 0xD000000000000040;
    v8._countAndFlagsBits = 0xD000000000000016;
    v9._countAndFlagsBits = 0;
    v9._object = 0xE000000000000000;
    v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v7, paperKitBundle, v9, v22);
    (*((*v2 & *v1) + 0x2A0))(v21, v10._countAndFlagsBits, v10._object);
    CGAffineTransform.decompose(initialRotation:)(v19, 0.0);
    v11 = v20 / 3.14159265 * 180.0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1D4058CF0;
    *(v12 + 56) = MEMORY[0x1E69E7DE0];
    *(v12 + 64) = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    *(v12 + 32) = v11;
    v13 = static String.localizedStringWithFormat(_:_:)();
    v15 = v14;

    v16 = MEMORY[0x1DA6CCED0](v13, v15);

    UIAccessibilityPostNotification(v6, v16);

    v1 = v5;
  }

  return v4;
}

BOOL specialized closure #1 in CanvasElementView.setupAccessibility()(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v6 = Strong;
  v7 = MEMORY[0x1E69E7D40];
  v8 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x90))();
  v9 = v8 != 0;
  if (v8)
  {
    v10 = MEMORY[0x1EEE9AC00](v8);
    v12 = *v7 & *v11;
    v13 = v11;
    (*(v12 + 1768))(0, 0, a2, v10);
    v14 = *MEMORY[0x1E69DD888];
    v15 = a3(0);
    v16 = MEMORY[0x1DA6CCED0](v15);

    UIAccessibilityPostNotification(v14, v16);

    v6 = v13;
  }

  return v9;
}

uint64_t specialized closure #1 in closure #1 in CanvasElementView.setupAccessibility()(char *a1, void *a2, double a3)
{
  v42 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit7TextBoxVGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - v7;
  v9 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x3F0);
  swift_beginAccess();
  v10 = *(v6 + 16);
  v39 = v9;
  v10(v8, &a1[v9], v5);
  v38 = v6 + 16;
  v46 = type metadata accessor for TextBox(0);
  v11 = v46;
  v41 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type TextBox and conformance TextBox, type metadata accessor for TextBox);
  v47 = v41;
  v48 = &protocol witness table for TextBox;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v40 = *(v6 + 8);
  v40(v8, v5);
  a = t1.a;
  b = t1.b;
  c = t1.c;
  d = t1.d;
  v52.origin.x = t1.a;
  v52.origin.y = t1.b;
  v52.size.width = t1.c;
  v52.size.height = t1.d;
  MidX = CGRectGetMidX(v52);
  v53.origin.x = a;
  v53.origin.y = b;
  v53.size.width = c;
  v53.size.height = d;
  MidY = CGRectGetMidY(v53);
  CGAffineTransformMakeRotation(&t1, a3 * 3.14159265 / 180.0);
  tx = t1.tx;
  ty = t1.ty;
  v37 = *&t1.a;
  v36 = *&t1.c;
  CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
  v20 = t1.a;
  v21 = t1.b;
  v22 = t1.c;
  v23 = t1.d;
  v24 = t1.tx;
  v25 = t1.ty;
  *&t2.c = v36;
  *&t2.a = v37;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v49, &t1, &t2);
  v26 = v49.tx;
  v27 = v49.ty;
  v37 = *&v49.a;
  v36 = *&v49.c;
  t1.a = v20;
  t1.b = v21;
  t1.c = v22;
  t1.d = v23;
  t1.tx = v24;
  t1.ty = v25;
  CGAffineTransformInvert(&t2, &t1);
  *&t1.a = v37;
  *&t1.c = v36;
  t1.tx = v26;
  t1.ty = v27;
  CGAffineTransformConcat(&v49, &t1, &t2);
  v28 = v49.tx;
  v29 = v49.ty;
  v37 = *&v49.a;
  v36 = *&v49.c;
  v10(v8, &a1[v9], v5);
  v30 = v11;
  v43 = v11;
  v31 = v41;
  v44 = v41;
  v45 = &protocol witness table for TextBox;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v32 = v40;
  v40(v8, v5);
  t2 = t1;
  *&v49.c = v36;
  *&v49.a = v37;
  v49.tx = v28;
  v49.ty = v29;
  CGAffineTransformConcat(&t1, &t2, &v49);
  specialized CanvasElementView.modelCoordinateSpace.setter(&t1);
  v10(v8, &a1[v39], v5);
  LOBYTE(t2.a) = 3;
  v33 = v42;
  v34 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v42) + 0x7D8))(v8, &t2, v30, v31);
  LOBYTE(t2.a) = 3;
  (*((*v34 & *v33) + 0x7B0))(&t2);
  return v32(v8, v5);
}

{
  v42 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit12LoupeElementVGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - v7;
  v9 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x3F0);
  swift_beginAccess();
  v10 = *(v6 + 16);
  v39 = v9;
  v10(v8, &a1[v9], v5);
  v38 = v6 + 16;
  v46 = type metadata accessor for LoupeElement(0);
  v11 = v46;
  v41 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type LoupeElement and conformance LoupeElement, type metadata accessor for LoupeElement);
  v47 = v41;
  v48 = &protocol witness table for LoupeElement;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v40 = *(v6 + 8);
  v40(v8, v5);
  a = t1.a;
  b = t1.b;
  c = t1.c;
  d = t1.d;
  v52.origin.x = t1.a;
  v52.origin.y = t1.b;
  v52.size.width = t1.c;
  v52.size.height = t1.d;
  MidX = CGRectGetMidX(v52);
  v53.origin.x = a;
  v53.origin.y = b;
  v53.size.width = c;
  v53.size.height = d;
  MidY = CGRectGetMidY(v53);
  CGAffineTransformMakeRotation(&t1, a3 * 3.14159265 / 180.0);
  tx = t1.tx;
  ty = t1.ty;
  v37 = *&t1.a;
  v36 = *&t1.c;
  CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
  v20 = t1.a;
  v21 = t1.b;
  v22 = t1.c;
  v23 = t1.d;
  v24 = t1.tx;
  v25 = t1.ty;
  *&t2.c = v36;
  *&t2.a = v37;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v49, &t1, &t2);
  v26 = v49.tx;
  v27 = v49.ty;
  v37 = *&v49.a;
  v36 = *&v49.c;
  t1.a = v20;
  t1.b = v21;
  t1.c = v22;
  t1.d = v23;
  t1.tx = v24;
  t1.ty = v25;
  CGAffineTransformInvert(&t2, &t1);
  *&t1.a = v37;
  *&t1.c = v36;
  t1.tx = v26;
  t1.ty = v27;
  CGAffineTransformConcat(&v49, &t1, &t2);
  v28 = v49.tx;
  v29 = v49.ty;
  v37 = *&v49.a;
  v36 = *&v49.c;
  v10(v8, &a1[v9], v5);
  v30 = v11;
  v43 = v11;
  v31 = v41;
  v44 = v41;
  v45 = &protocol witness table for LoupeElement;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v32 = v40;
  v40(v8, v5);
  t2 = t1;
  *&v49.c = v36;
  *&v49.a = v37;
  v49.tx = v28;
  v49.ty = v29;
  CGAffineTransformConcat(&t1, &t2, &v49);
  specialized CanvasElementView.modelCoordinateSpace.setter(&t1);
  v10(v8, &a1[v39], v5);
  LOBYTE(t2.a) = 3;
  v33 = v42;
  v34 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v42) + 0x7D8))(v8, &t2, v30, v31);
  LOBYTE(t2.a) = 3;
  (*((*v34 & *v33) + 0x7B0))(&t2);
  return v32(v8, v5);
}

{
  v42 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - v7;
  v9 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x3F0);
  swift_beginAccess();
  v10 = *(v6 + 16);
  v39 = v9;
  v10(v8, &a1[v9], v5);
  v38 = v6 + 16;
  v46 = type metadata accessor for Image(0);
  v11 = v46;
  v41 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
  v47 = v41;
  v48 = &protocol witness table for Image;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v40 = *(v6 + 8);
  v40(v8, v5);
  a = t1.a;
  b = t1.b;
  c = t1.c;
  d = t1.d;
  v52.origin.x = t1.a;
  v52.origin.y = t1.b;
  v52.size.width = t1.c;
  v52.size.height = t1.d;
  MidX = CGRectGetMidX(v52);
  v53.origin.x = a;
  v53.origin.y = b;
  v53.size.width = c;
  v53.size.height = d;
  MidY = CGRectGetMidY(v53);
  CGAffineTransformMakeRotation(&t1, a3 * 3.14159265 / 180.0);
  tx = t1.tx;
  ty = t1.ty;
  v37 = *&t1.a;
  v36 = *&t1.c;
  CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
  v20 = t1.a;
  v21 = t1.b;
  v22 = t1.c;
  v23 = t1.d;
  v24 = t1.tx;
  v25 = t1.ty;
  *&t2.c = v36;
  *&t2.a = v37;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v49, &t1, &t2);
  v26 = v49.tx;
  v27 = v49.ty;
  v37 = *&v49.a;
  v36 = *&v49.c;
  t1.a = v20;
  t1.b = v21;
  t1.c = v22;
  t1.d = v23;
  t1.tx = v24;
  t1.ty = v25;
  CGAffineTransformInvert(&t2, &t1);
  *&t1.a = v37;
  *&t1.c = v36;
  t1.tx = v26;
  t1.ty = v27;
  CGAffineTransformConcat(&v49, &t1, &t2);
  v28 = v49.tx;
  v29 = v49.ty;
  v37 = *&v49.a;
  v36 = *&v49.c;
  v10(v8, &a1[v9], v5);
  v30 = v11;
  v43 = v11;
  v31 = v41;
  v44 = v41;
  v45 = &protocol witness table for Image;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v32 = v40;
  v40(v8, v5);
  t2 = t1;
  *&v49.c = v36;
  *&v49.a = v37;
  v49.tx = v28;
  v49.ty = v29;
  CGAffineTransformConcat(&t1, &t2, &v49);
  specialized CanvasElementView.modelCoordinateSpace.setter(&t1);
  v10(v8, &a1[v39], v5);
  LOBYTE(t2.a) = 3;
  v33 = v42;
  v34 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v42) + 0x7D8))(v8, &t2, v30, v31);
  LOBYTE(t2.a) = 3;
  (*((*v34 & *v33) + 0x7B0))(&t2);
  return v32(v8, v5);
}

{
  v42 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit12GraphElementVGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - v7;
  v9 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x3F0);
  swift_beginAccess();
  v10 = *(v6 + 16);
  v39 = v9;
  v10(v8, &a1[v9], v5);
  v38 = v6 + 16;
  v46 = type metadata accessor for GraphElement(0);
  v11 = v46;
  v41 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type GraphElement and conformance GraphElement, type metadata accessor for GraphElement);
  v47 = v41;
  v48 = &protocol witness table for GraphElement;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v40 = *(v6 + 8);
  v40(v8, v5);
  a = t1.a;
  b = t1.b;
  c = t1.c;
  d = t1.d;
  v52.origin.x = t1.a;
  v52.origin.y = t1.b;
  v52.size.width = t1.c;
  v52.size.height = t1.d;
  MidX = CGRectGetMidX(v52);
  v53.origin.x = a;
  v53.origin.y = b;
  v53.size.width = c;
  v53.size.height = d;
  MidY = CGRectGetMidY(v53);
  CGAffineTransformMakeRotation(&t1, a3 * 3.14159265 / 180.0);
  tx = t1.tx;
  ty = t1.ty;
  v37 = *&t1.a;
  v36 = *&t1.c;
  CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
  v20 = t1.a;
  v21 = t1.b;
  v22 = t1.c;
  v23 = t1.d;
  v24 = t1.tx;
  v25 = t1.ty;
  *&t2.c = v36;
  *&t2.a = v37;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v49, &t1, &t2);
  v26 = v49.tx;
  v27 = v49.ty;
  v37 = *&v49.a;
  v36 = *&v49.c;
  t1.a = v20;
  t1.b = v21;
  t1.c = v22;
  t1.d = v23;
  t1.tx = v24;
  t1.ty = v25;
  CGAffineTransformInvert(&t2, &t1);
  *&t1.a = v37;
  *&t1.c = v36;
  t1.tx = v26;
  t1.ty = v27;
  CGAffineTransformConcat(&v49, &t1, &t2);
  v28 = v49.tx;
  v29 = v49.ty;
  v37 = *&v49.a;
  v36 = *&v49.c;
  v10(v8, &a1[v9], v5);
  v30 = v11;
  v43 = v11;
  v31 = v41;
  v44 = v41;
  v45 = &protocol witness table for GraphElement;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v32 = v40;
  v40(v8, v5);
  t2 = t1;
  *&v49.c = v36;
  *&v49.a = v37;
  v49.tx = v28;
  v49.ty = v29;
  CGAffineTransformConcat(&t1, &t2, &v49);
  specialized CanvasElementView.modelCoordinateSpace.setter(&t1);
  v10(v8, &a1[v39], v5);
  LOBYTE(t2.a) = 3;
  v33 = v42;
  v34 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v42) + 0x7D8))(v8, &t2, v30, v31);
  LOBYTE(t2.a) = 3;
  (*((*v34 & *v33) + 0x7B0))(&t2);
  return v32(v8, v5);
}

{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v38 - v8;
  v10 = MEMORY[0x1E69E7D40];
  v43 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x3F0);
  v11 = v43;
  swift_beginAccess();
  v42 = *(v7 + 16);
  v42(v9, &a1[v11], v6);
  v44 = type metadata accessor for Shape(0);
  v45 = v44;
  v41 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type Shape and conformance Shape, type metadata accessor for Shape);
  v46 = v41;
  v47 = &protocol witness table for Shape;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v40 = *(v7 + 8);
  v40(v9, v6);
  a = t1.a;
  b = t1.b;
  c = t1.c;
  d = t1.d;
  v52.origin.x = t1.a;
  v52.origin.y = t1.b;
  v52.size.width = t1.c;
  v52.size.height = t1.d;
  MidX = CGRectGetMidX(v52);
  v53.origin.x = a;
  v53.origin.y = b;
  v53.size.width = c;
  v53.size.height = d;
  MidY = CGRectGetMidY(v53);
  CGAffineTransformMakeRotation(&t1, a3 * 3.14159265 / 180.0);
  tx = t1.tx;
  ty = t1.ty;
  v39 = *&t1.a;
  v38 = *&t1.c;
  CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
  v20 = t1.a;
  v21 = t1.b;
  v22 = t1.c;
  v23 = t1.d;
  v24 = t1.tx;
  v25 = t1.ty;
  *&t2.c = v38;
  *&t2.a = v39;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v49, &t1, &t2);
  v26 = v49.tx;
  v27 = v49.ty;
  v39 = *&v49.a;
  v38 = *&v49.c;
  t1.a = v20;
  t1.b = v21;
  t1.c = v22;
  t1.d = v23;
  t1.tx = v24;
  t1.ty = v25;
  CGAffineTransformInvert(&t2, &t1);
  *&t1.a = v39;
  *&t1.c = v38;
  t1.tx = v26;
  t1.ty = v27;
  CGAffineTransformConcat(&v49, &t1, &t2);
  v28 = v49.tx;
  v29 = v49.ty;
  v39 = *&v49.a;
  v38 = *&v49.c;
  v30 = (*((*v10 & *a1) + 0x2B0))(v48);
  v32 = v31;
  v33 = v31[1];
  v34 = v31[2];
  *&t1.a = *v31;
  *&t1.c = v33;
  *&t1.tx = v34;
  *&t2.c = v38;
  *&t2.a = v39;
  t2.tx = v28;
  t2.ty = v29;
  CGAffineTransformConcat(&v49, &t1, &t2);
  v35 = *&v49.c;
  v36 = *&v49.tx;
  *v32 = *&v49.a;
  v32[1] = v35;
  v32[2] = v36;
  v30(v48, 0);
  v42(v9, &a1[v43], v6);
  LOBYTE(t1.a) = 3;
  (*((*v10 & *a2) + 0x7D8))(v9, &t1, v44, v41);
  LOBYTE(t1.a) = 3;
  (*((*v10 & *a2) + 0x7B0))(&t1);
  return (v40)(v9, v6);
}

{
  v42 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit4LinkVGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - v7;
  v9 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x3F0);
  swift_beginAccess();
  v10 = *(v6 + 16);
  v39 = v9;
  v10(v8, &a1[v9], v5);
  v38 = v6 + 16;
  v46 = type metadata accessor for Link(0);
  v11 = v46;
  v41 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type Link and conformance Link, type metadata accessor for Link);
  v47 = v41;
  v48 = &protocol witness table for Link;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v40 = *(v6 + 8);
  v40(v8, v5);
  a = t1.a;
  b = t1.b;
  c = t1.c;
  d = t1.d;
  v52.origin.x = t1.a;
  v52.origin.y = t1.b;
  v52.size.width = t1.c;
  v52.size.height = t1.d;
  MidX = CGRectGetMidX(v52);
  v53.origin.x = a;
  v53.origin.y = b;
  v53.size.width = c;
  v53.size.height = d;
  MidY = CGRectGetMidY(v53);
  CGAffineTransformMakeRotation(&t1, a3 * 3.14159265 / 180.0);
  tx = t1.tx;
  ty = t1.ty;
  v37 = *&t1.a;
  v36 = *&t1.c;
  CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
  v20 = t1.a;
  v21 = t1.b;
  v22 = t1.c;
  v23 = t1.d;
  v24 = t1.tx;
  v25 = t1.ty;
  *&t2.c = v36;
  *&t2.a = v37;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v49, &t1, &t2);
  v26 = v49.tx;
  v27 = v49.ty;
  v37 = *&v49.a;
  v36 = *&v49.c;
  t1.a = v20;
  t1.b = v21;
  t1.c = v22;
  t1.d = v23;
  t1.tx = v24;
  t1.ty = v25;
  CGAffineTransformInvert(&t2, &t1);
  *&t1.a = v37;
  *&t1.c = v36;
  t1.tx = v26;
  t1.ty = v27;
  CGAffineTransformConcat(&v49, &t1, &t2);
  v28 = v49.tx;
  v29 = v49.ty;
  v37 = *&v49.a;
  v36 = *&v49.c;
  v10(v8, &a1[v9], v5);
  v30 = v11;
  v43 = v11;
  v31 = v41;
  v44 = v41;
  v45 = &protocol witness table for Link;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v32 = v40;
  v40(v8, v5);
  t2 = t1;
  *&v49.c = v36;
  *&v49.a = v37;
  v49.tx = v28;
  v49.ty = v29;
  CGAffineTransformConcat(&t1, &t2, &v49);
  specialized CanvasElementView.modelCoordinateSpace.setter(&t1);
  v10(v8, &a1[v39], v5);
  LOBYTE(t2.a) = 3;
  v33 = v42;
  v34 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v42) + 0x7D8))(v8, &t2, v30, v31);
  LOBYTE(t2.a) = 3;
  (*((*v34 & *v33) + 0x7B0))(&t2);
  return v32(v8, v5);
}

{
  v42 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit9SignatureVGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - v7;
  v9 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x3F0);
  swift_beginAccess();
  v10 = *(v6 + 16);
  v39 = v9;
  v10(v8, &a1[v9], v5);
  v38 = v6 + 16;
  v46 = type metadata accessor for Signature(0);
  v11 = v46;
  v41 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type Signature and conformance Signature, type metadata accessor for Signature);
  v47 = v41;
  v48 = &protocol witness table for Signature;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v40 = *(v6 + 8);
  v40(v8, v5);
  a = t1.a;
  b = t1.b;
  c = t1.c;
  d = t1.d;
  v52.origin.x = t1.a;
  v52.origin.y = t1.b;
  v52.size.width = t1.c;
  v52.size.height = t1.d;
  MidX = CGRectGetMidX(v52);
  v53.origin.x = a;
  v53.origin.y = b;
  v53.size.width = c;
  v53.size.height = d;
  MidY = CGRectGetMidY(v53);
  CGAffineTransformMakeRotation(&t1, a3 * 3.14159265 / 180.0);
  tx = t1.tx;
  ty = t1.ty;
  v37 = *&t1.a;
  v36 = *&t1.c;
  CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
  v20 = t1.a;
  v21 = t1.b;
  v22 = t1.c;
  v23 = t1.d;
  v24 = t1.tx;
  v25 = t1.ty;
  *&t2.c = v36;
  *&t2.a = v37;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v49, &t1, &t2);
  v26 = v49.tx;
  v27 = v49.ty;
  v37 = *&v49.a;
  v36 = *&v49.c;
  t1.a = v20;
  t1.b = v21;
  t1.c = v22;
  t1.d = v23;
  t1.tx = v24;
  t1.ty = v25;
  CGAffineTransformInvert(&t2, &t1);
  *&t1.a = v37;
  *&t1.c = v36;
  t1.tx = v26;
  t1.ty = v27;
  CGAffineTransformConcat(&v49, &t1, &t2);
  v28 = v49.tx;
  v29 = v49.ty;
  v37 = *&v49.a;
  v36 = *&v49.c;
  v10(v8, &a1[v9], v5);
  v30 = v11;
  v43 = v11;
  v31 = v41;
  v44 = v41;
  v45 = &protocol witness table for Signature;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v32 = v40;
  v40(v8, v5);
  t2 = t1;
  *&v49.c = v36;
  *&v49.a = v37;
  v49.tx = v28;
  v49.ty = v29;
  CGAffineTransformConcat(&t1, &t2, &v49);
  specialized CanvasElementView.modelCoordinateSpace.setter(&t1);
  v10(v8, &a1[v39], v5);
  LOBYTE(t2.a) = 3;
  v33 = v42;
  v34 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v42) + 0x7D8))(v8, &t2, v30, v31);
  LOBYTE(t2.a) = 3;
  (*((*v34 & *v33) + 0x7B0))(&t2);
  return v32(v8, v5);
}

{
  v42 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - v7;
  v9 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x3F0);
  swift_beginAccess();
  v10 = *(v6 + 16);
  v39 = v9;
  v10(v8, &a1[v9], v5);
  v38 = v6 + 16;
  v46 = type metadata accessor for Paper(0);
  v11 = v46;
  v41 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper);
  v47 = v41;
  v48 = &protocol witness table for Paper;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v40 = *(v6 + 8);
  v40(v8, v5);
  a = t1.a;
  b = t1.b;
  c = t1.c;
  d = t1.d;
  v52.origin.x = t1.a;
  v52.origin.y = t1.b;
  v52.size.width = t1.c;
  v52.size.height = t1.d;
  MidX = CGRectGetMidX(v52);
  v53.origin.x = a;
  v53.origin.y = b;
  v53.size.width = c;
  v53.size.height = d;
  MidY = CGRectGetMidY(v53);
  CGAffineTransformMakeRotation(&t1, a3 * 3.14159265 / 180.0);
  tx = t1.tx;
  ty = t1.ty;
  v37 = *&t1.a;
  v36 = *&t1.c;
  CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
  v20 = t1.a;
  v21 = t1.b;
  v22 = t1.c;
  v23 = t1.d;
  v24 = t1.tx;
  v25 = t1.ty;
  *&t2.c = v36;
  *&t2.a = v37;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v49, &t1, &t2);
  v26 = v49.tx;
  v27 = v49.ty;
  v37 = *&v49.a;
  v36 = *&v49.c;
  t1.a = v20;
  t1.b = v21;
  t1.c = v22;
  t1.d = v23;
  t1.tx = v24;
  t1.ty = v25;
  CGAffineTransformInvert(&t2, &t1);
  *&t1.a = v37;
  *&t1.c = v36;
  t1.tx = v26;
  t1.ty = v27;
  CGAffineTransformConcat(&v49, &t1, &t2);
  v28 = v49.tx;
  v29 = v49.ty;
  v37 = *&v49.a;
  v36 = *&v49.c;
  v10(v8, &a1[v9], v5);
  v30 = v11;
  v43 = v11;
  v31 = v41;
  v44 = v41;
  v45 = &protocol witness table for Paper;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v32 = v40;
  v40(v8, v5);
  t2 = t1;
  *&v49.c = v36;
  *&v49.a = v37;
  v49.tx = v28;
  v49.ty = v29;
  CGAffineTransformConcat(&t1, &t2, &v49);
  specialized CanvasElementView.modelCoordinateSpace.setter(&t1);
  v10(v8, &a1[v39], v5);
  LOBYTE(t2.a) = 3;
  v33 = v42;
  v34 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v42) + 0x7D8))(v8, &t2, v30, v31);
  LOBYTE(t2.a) = 3;
  (*((*v34 & *v33) + 0x7B0))(&t2);
  return v32(v8, v5);
}

{
  v42 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C12DocumentPageVGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - v7;
  v9 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x3F0);
  swift_beginAccess();
  v10 = *(v6 + 16);
  v39 = v9;
  v10(v8, &a1[v9], v5);
  v38 = v6 + 16;
  v46 = type metadata accessor for PaperDocumentPage(0);
  v11 = v46;
  v41 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentPage and conformance PaperDocumentPage, type metadata accessor for PaperDocumentPage);
  v47 = v41;
  v48 = &protocol witness table for PaperDocumentPage;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v40 = *(v6 + 8);
  v40(v8, v5);
  a = t1.a;
  b = t1.b;
  c = t1.c;
  d = t1.d;
  v52.origin.x = t1.a;
  v52.origin.y = t1.b;
  v52.size.width = t1.c;
  v52.size.height = t1.d;
  MidX = CGRectGetMidX(v52);
  v53.origin.x = a;
  v53.origin.y = b;
  v53.size.width = c;
  v53.size.height = d;
  MidY = CGRectGetMidY(v53);
  CGAffineTransformMakeRotation(&t1, a3 * 3.14159265 / 180.0);
  tx = t1.tx;
  ty = t1.ty;
  v37 = *&t1.a;
  v36 = *&t1.c;
  CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
  v20 = t1.a;
  v21 = t1.b;
  v22 = t1.c;
  v23 = t1.d;
  v24 = t1.tx;
  v25 = t1.ty;
  *&t2.c = v36;
  *&t2.a = v37;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v49, &t1, &t2);
  v26 = v49.tx;
  v27 = v49.ty;
  v37 = *&v49.a;
  v36 = *&v49.c;
  t1.a = v20;
  t1.b = v21;
  t1.c = v22;
  t1.d = v23;
  t1.tx = v24;
  t1.ty = v25;
  CGAffineTransformInvert(&t2, &t1);
  *&t1.a = v37;
  *&t1.c = v36;
  t1.tx = v26;
  t1.ty = v27;
  CGAffineTransformConcat(&v49, &t1, &t2);
  v28 = v49.tx;
  v29 = v49.ty;
  v37 = *&v49.a;
  v36 = *&v49.c;
  v10(v8, &a1[v9], v5);
  v30 = v11;
  v43 = v11;
  v31 = v41;
  v44 = v41;
  v45 = &protocol witness table for PaperDocumentPage;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v32 = v40;
  v40(v8, v5);
  t2 = t1;
  *&v49.c = v36;
  *&v49.a = v37;
  v49.tx = v28;
  v49.ty = v29;
  CGAffineTransformConcat(&t1, &t2, &v49);
  specialized CanvasElementView.modelCoordinateSpace.setter(&t1);
  v10(v8, &a1[v39], v5);
  LOBYTE(t2.a) = 3;
  v33 = v42;
  v34 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v42) + 0x7D8))(v8, &t2, v30, v31);
  LOBYTE(t2.a) = 3;
  (*((*v34 & *v33) + 0x7B0))(&t2);
  return v32(v8, v5);
}

{
  v42 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit20UnknownCanvasElementVGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - v7;
  v9 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x3F0);
  swift_beginAccess();
  v10 = *(v6 + 16);
  v39 = v9;
  v10(v8, &a1[v9], v5);
  v38 = v6 + 16;
  v46 = type metadata accessor for UnknownCanvasElement(0);
  v11 = v46;
  v41 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type UnknownCanvasElement and conformance UnknownCanvasElement, type metadata accessor for UnknownCanvasElement);
  v47 = v41;
  v48 = &protocol witness table for UnknownCanvasElement;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v40 = *(v6 + 8);
  v40(v8, v5);
  a = t1.a;
  b = t1.b;
  c = t1.c;
  d = t1.d;
  v52.origin.x = t1.a;
  v52.origin.y = t1.b;
  v52.size.width = t1.c;
  v52.size.height = t1.d;
  MidX = CGRectGetMidX(v52);
  v53.origin.x = a;
  v53.origin.y = b;
  v53.size.width = c;
  v53.size.height = d;
  MidY = CGRectGetMidY(v53);
  CGAffineTransformMakeRotation(&t1, a3 * 3.14159265 / 180.0);
  tx = t1.tx;
  ty = t1.ty;
  v37 = *&t1.a;
  v36 = *&t1.c;
  CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
  v20 = t1.a;
  v21 = t1.b;
  v22 = t1.c;
  v23 = t1.d;
  v24 = t1.tx;
  v25 = t1.ty;
  *&t2.c = v36;
  *&t2.a = v37;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v49, &t1, &t2);
  v26 = v49.tx;
  v27 = v49.ty;
  v37 = *&v49.a;
  v36 = *&v49.c;
  t1.a = v20;
  t1.b = v21;
  t1.c = v22;
  t1.d = v23;
  t1.tx = v24;
  t1.ty = v25;
  CGAffineTransformInvert(&t2, &t1);
  *&t1.a = v37;
  *&t1.c = v36;
  t1.tx = v26;
  t1.ty = v27;
  CGAffineTransformConcat(&v49, &t1, &t2);
  v28 = v49.tx;
  v29 = v49.ty;
  v37 = *&v49.a;
  v36 = *&v49.c;
  v10(v8, &a1[v9], v5);
  v30 = v11;
  v43 = v11;
  v31 = v41;
  v44 = v41;
  v45 = &protocol witness table for UnknownCanvasElement;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v32 = v40;
  v40(v8, v5);
  t2 = t1;
  *&v49.c = v36;
  *&v49.a = v37;
  v49.tx = v28;
  v49.ty = v29;
  CGAffineTransformConcat(&t1, &t2, &v49);
  specialized CanvasElementView.modelCoordinateSpace.setter(&t1);
  v10(v8, &a1[v39], v5);
  LOBYTE(t2.a) = 3;
  v33 = v42;
  v34 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v42) + 0x7D8))(v8, &t2, v30, v31);
  LOBYTE(t2.a) = 3;
  (*((*v34 & *v33) + 0x7B0))(&t2);
  return v32(v8, v5);
}

BOOL specialized closure #2 in CanvasElementView.setupAccessibility()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x90))();
  v4 = v3 != 0;
  if (v3)
  {
    v5 = v3;
    v25 = MEMORY[0x1EEE9AC00](v3);
    (*((*v2 & *v25) + 0x6E8))(0, 0, partial apply for specialized closure #1 in closure #2 in CanvasElementView.setupAccessibility());
    v6 = *MEMORY[0x1E69DD888];
    if (one-time initialization token for paperKitBundle != -1)
    {
      swift_once();
    }

    v28._object = 0x80000001D408B050;
    v7.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v7.value._object = 0xEB00000000656C62;
    v8._object = 0x80000001D408B030;
    v28._countAndFlagsBits = 0xD00000000000003CLL;
    v8._countAndFlagsBits = 0xD000000000000012;
    v9._countAndFlagsBits = 0;
    v9._object = 0xE000000000000000;
    v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v7, paperKitBundle, v9, v28);
    (*((*v2 & *v1) + 0x2A0))(v27, v10._countAndFlagsBits, v10._object);
    CGAffineTransform.decompose(initialRotation:)(v26, 0.0);
    v11 = *v26;
    v12 = *&v26[1];
    v13 = *&v26[2];
    v14 = *&v26[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1D405C990;
    v29.origin.x = v11;
    v29.origin.y = v12;
    v29.size.width = v13;
    v29.size.height = v14;
    Width = CGRectGetWidth(v29);
    v17 = MEMORY[0x1E69E7DE0];
    *(v15 + 56) = MEMORY[0x1E69E7DE0];
    v18 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    *(v15 + 64) = v18;
    *(v15 + 32) = Width;
    v30.origin.x = v11;
    v30.origin.y = v12;
    v30.size.width = v13;
    v30.size.height = v14;
    Height = CGRectGetHeight(v30);
    *(v15 + 96) = v17;
    *(v15 + 104) = v18;
    *(v15 + 72) = Height;
    v20 = static String.localizedStringWithFormat(_:_:)();
    v22 = v21;

    v23 = MEMORY[0x1DA6CCED0](v20, v22);

    UIAccessibilityPostNotification(v6, v23);

    v1 = v5;
  }

  return v4;
}

BOOL specialized closure #2 in CanvasElementView.setupAccessibility()(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v6 = Strong;
  v7 = MEMORY[0x1E69E7D40];
  v8 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x90))();
  v9 = v8 != 0;
  if (v8)
  {
    v10 = MEMORY[0x1EEE9AC00](v8);
    v12 = *v7 & *v11;
    v13 = v11;
    (*(v12 + 1768))(0, 0, a2, v10);
    v14 = *MEMORY[0x1E69DD888];
    v15 = a3(1);
    v16 = MEMORY[0x1DA6CCED0](v15);

    UIAccessibilityPostNotification(v14, v16);

    v6 = v13;
  }

  return v9;
}

uint64_t specialized closure #1 in closure #2 in CanvasElementView.setupAccessibility()(char *a1, void *a2, CGFloat a3)
{
  v32 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit7TextBoxVGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - v7;
  v9 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x3F0);
  swift_beginAccess();
  v10 = *(v6 + 16);
  v28 = v9;
  v10(v8, &a1[v9], v5);
  v29 = v10;
  v36 = type metadata accessor for TextBox(0);
  v11 = v36;
  v31 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type TextBox and conformance TextBox, type metadata accessor for TextBox);
  v37 = v31;
  v38 = &protocol witness table for TextBox;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v30 = *(v6 + 8);
  v30(v8, v5);
  a = v41.a;
  b = v41.b;
  c = v41.c;
  d = v41.d;
  v42.origin.x = v41.a;
  v42.origin.y = v41.b;
  v42.size.width = v41.c;
  v42.size.height = v41.d;
  MidX = CGRectGetMidX(v42);
  v43.origin.x = a;
  v43.origin.y = b;
  v43.size.width = c;
  v43.size.height = d;
  MidY = CGRectGetMidY(v43);
  v41.a = 1.0;
  v41.b = 0.0;
  v41.c = 0.0;
  v41.d = 1.0;
  v41.tx = 0.0;
  v41.ty = 0.0;
  CGAffineTransformScale(&t1, &v41, a3, a3);
  v41 = t1;
  CGAffineTransformTranslate(&t1, &v41, -(MidX * (a3 + -1.0)), -(MidY * (a3 + -1.0)));
  tx = t1.tx;
  ty = t1.ty;
  v27 = *&t1.a;
  v26 = *&t1.c;
  v10(v8, &a1[v9], v5);
  v20 = v11;
  v33 = v11;
  v21 = v31;
  v34 = v31;
  v35 = &protocol witness table for TextBox;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v22 = v30;
  v30(v8, v5);
  t1 = v41;
  *&t2.c = v26;
  *&t2.a = v27;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v41, &t1, &t2);
  specialized CanvasElementView.modelCoordinateSpace.setter(&v41);
  v29(v8, &a1[v28], v5);
  LOBYTE(t1.a) = 3;
  v23 = v32;
  v24 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v32) + 0x7D8))(v8, &t1, v20, v21);
  LOBYTE(t1.a) = 3;
  (*((*v24 & *v23) + 0x7B0))(&t1);
  return v22(v8, v5);
}

{
  v32 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit12LoupeElementVGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - v7;
  v9 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x3F0);
  swift_beginAccess();
  v10 = *(v6 + 16);
  v28 = v9;
  v10(v8, &a1[v9], v5);
  v29 = v10;
  v36 = type metadata accessor for LoupeElement(0);
  v11 = v36;
  v31 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type LoupeElement and conformance LoupeElement, type metadata accessor for LoupeElement);
  v37 = v31;
  v38 = &protocol witness table for LoupeElement;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v30 = *(v6 + 8);
  v30(v8, v5);
  a = v41.a;
  b = v41.b;
  c = v41.c;
  d = v41.d;
  v42.origin.x = v41.a;
  v42.origin.y = v41.b;
  v42.size.width = v41.c;
  v42.size.height = v41.d;
  MidX = CGRectGetMidX(v42);
  v43.origin.x = a;
  v43.origin.y = b;
  v43.size.width = c;
  v43.size.height = d;
  MidY = CGRectGetMidY(v43);
  v41.a = 1.0;
  v41.b = 0.0;
  v41.c = 0.0;
  v41.d = 1.0;
  v41.tx = 0.0;
  v41.ty = 0.0;
  CGAffineTransformScale(&t1, &v41, a3, a3);
  v41 = t1;
  CGAffineTransformTranslate(&t1, &v41, -(MidX * (a3 + -1.0)), -(MidY * (a3 + -1.0)));
  tx = t1.tx;
  ty = t1.ty;
  v27 = *&t1.a;
  v26 = *&t1.c;
  v10(v8, &a1[v9], v5);
  v20 = v11;
  v33 = v11;
  v21 = v31;
  v34 = v31;
  v35 = &protocol witness table for LoupeElement;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v22 = v30;
  v30(v8, v5);
  t1 = v41;
  *&t2.c = v26;
  *&t2.a = v27;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v41, &t1, &t2);
  specialized CanvasElementView.modelCoordinateSpace.setter(&v41);
  v29(v8, &a1[v28], v5);
  LOBYTE(t1.a) = 3;
  v23 = v32;
  v24 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v32) + 0x7D8))(v8, &t1, v20, v21);
  LOBYTE(t1.a) = 3;
  (*((*v24 & *v23) + 0x7B0))(&t1);
  return v22(v8, v5);
}

{
  v32 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - v7;
  v9 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x3F0);
  swift_beginAccess();
  v10 = *(v6 + 16);
  v28 = v9;
  v10(v8, &a1[v9], v5);
  v29 = v10;
  v36 = type metadata accessor for Image(0);
  v11 = v36;
  v31 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
  v37 = v31;
  v38 = &protocol witness table for Image;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v30 = *(v6 + 8);
  v30(v8, v5);
  a = v41.a;
  b = v41.b;
  c = v41.c;
  d = v41.d;
  v42.origin.x = v41.a;
  v42.origin.y = v41.b;
  v42.size.width = v41.c;
  v42.size.height = v41.d;
  MidX = CGRectGetMidX(v42);
  v43.origin.x = a;
  v43.origin.y = b;
  v43.size.width = c;
  v43.size.height = d;
  MidY = CGRectGetMidY(v43);
  v41.a = 1.0;
  v41.b = 0.0;
  v41.c = 0.0;
  v41.d = 1.0;
  v41.tx = 0.0;
  v41.ty = 0.0;
  CGAffineTransformScale(&t1, &v41, a3, a3);
  v41 = t1;
  CGAffineTransformTranslate(&t1, &v41, -(MidX * (a3 + -1.0)), -(MidY * (a3 + -1.0)));
  tx = t1.tx;
  ty = t1.ty;
  v27 = *&t1.a;
  v26 = *&t1.c;
  v10(v8, &a1[v9], v5);
  v20 = v11;
  v33 = v11;
  v21 = v31;
  v34 = v31;
  v35 = &protocol witness table for Image;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v22 = v30;
  v30(v8, v5);
  t1 = v41;
  *&t2.c = v26;
  *&t2.a = v27;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v41, &t1, &t2);
  specialized CanvasElementView.modelCoordinateSpace.setter(&v41);
  v29(v8, &a1[v28], v5);
  LOBYTE(t1.a) = 3;
  v23 = v32;
  v24 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v32) + 0x7D8))(v8, &t1, v20, v21);
  LOBYTE(t1.a) = 3;
  (*((*v24 & *v23) + 0x7B0))(&t1);
  return v22(v8, v5);
}

{
  v32 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit12GraphElementVGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - v7;
  v9 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x3F0);
  swift_beginAccess();
  v10 = *(v6 + 16);
  v28 = v9;
  v10(v8, &a1[v9], v5);
  v29 = v10;
  v36 = type metadata accessor for GraphElement(0);
  v11 = v36;
  v31 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type GraphElement and conformance GraphElement, type metadata accessor for GraphElement);
  v37 = v31;
  v38 = &protocol witness table for GraphElement;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v30 = *(v6 + 8);
  v30(v8, v5);
  a = v41.a;
  b = v41.b;
  c = v41.c;
  d = v41.d;
  v42.origin.x = v41.a;
  v42.origin.y = v41.b;
  v42.size.width = v41.c;
  v42.size.height = v41.d;
  MidX = CGRectGetMidX(v42);
  v43.origin.x = a;
  v43.origin.y = b;
  v43.size.width = c;
  v43.size.height = d;
  MidY = CGRectGetMidY(v43);
  v41.a = 1.0;
  v41.b = 0.0;
  v41.c = 0.0;
  v41.d = 1.0;
  v41.tx = 0.0;
  v41.ty = 0.0;
  CGAffineTransformScale(&t1, &v41, a3, a3);
  v41 = t1;
  CGAffineTransformTranslate(&t1, &v41, -(MidX * (a3 + -1.0)), -(MidY * (a3 + -1.0)));
  tx = t1.tx;
  ty = t1.ty;
  v27 = *&t1.a;
  v26 = *&t1.c;
  v10(v8, &a1[v9], v5);
  v20 = v11;
  v33 = v11;
  v21 = v31;
  v34 = v31;
  v35 = &protocol witness table for GraphElement;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v22 = v30;
  v30(v8, v5);
  t1 = v41;
  *&t2.c = v26;
  *&t2.a = v27;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v41, &t1, &t2);
  specialized CanvasElementView.modelCoordinateSpace.setter(&v41);
  v29(v8, &a1[v28], v5);
  LOBYTE(t1.a) = 3;
  v23 = v32;
  v24 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v32) + 0x7D8))(v8, &t1, v20, v21);
  LOBYTE(t1.a) = 3;
  (*((*v24 & *v23) + 0x7B0))(&t1);
  return v22(v8, v5);
}

{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - v8;
  v10 = MEMORY[0x1E69E7D40];
  v11 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x3F0);
  swift_beginAccess();
  v33 = *(v7 + 16);
  v33(v9, &a1[v11], v6);
  v34 = type metadata accessor for Shape(0);
  v35 = v34;
  v32 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type Shape and conformance Shape, type metadata accessor for Shape);
  v36 = v32;
  v37 = &protocol witness table for Shape;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v31 = *(v7 + 8);
  v31(v9, v6);
  a = t1.a;
  b = t1.b;
  c = t1.c;
  d = t1.d;
  v42.origin.x = t1.a;
  v42.origin.y = t1.b;
  v42.size.width = t1.c;
  v42.size.height = t1.d;
  MidX = CGRectGetMidX(v42);
  v43.origin.x = a;
  v43.origin.y = b;
  v43.size.width = c;
  v43.size.height = d;
  MidY = CGRectGetMidY(v43);
  t1.a = 1.0;
  t1.b = 0.0;
  t1.c = 0.0;
  t1.d = 1.0;
  t1.tx = 0.0;
  t1.ty = 0.0;
  CGAffineTransformScale(&t2, &t1, a3, a3);
  t1 = t2;
  CGAffineTransformTranslate(&t2, &t1, -(MidX * (a3 + -1.0)), -(MidY * (a3 + -1.0)));
  tx = t2.tx;
  ty = t2.ty;
  v30 = *&t2.a;
  v29 = *&t2.c;
  v20 = (*((*v10 & *a1) + 0x2B0))(v39);
  v22 = v21;
  v23 = v21[1];
  v24 = v21[2];
  *&t1.a = *v21;
  *&t1.c = v23;
  *&t1.tx = v24;
  *&t2.a = v30;
  *&t2.c = v29;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v38, &t1, &t2);
  v25 = *&v38.c;
  v26 = *&v38.tx;
  *v22 = *&v38.a;
  v22[1] = v25;
  v22[2] = v26;
  v20(v39, 0);
  v33(v9, &a1[v11], v6);
  LOBYTE(t1.a) = 3;
  v27 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *a2) + 0x7D8))(v9, &t1, v34, v32);
  LOBYTE(t1.a) = 3;
  (*((*v27 & *a2) + 0x7B0))(&t1);
  return (v31)(v9, v6);
}

{
  v32 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit4LinkVGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - v7;
  v9 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x3F0);
  swift_beginAccess();
  v10 = *(v6 + 16);
  v28 = v9;
  v10(v8, &a1[v9], v5);
  v29 = v10;
  v36 = type metadata accessor for Link(0);
  v11 = v36;
  v31 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type Link and conformance Link, type metadata accessor for Link);
  v37 = v31;
  v38 = &protocol witness table for Link;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v30 = *(v6 + 8);
  v30(v8, v5);
  a = v41.a;
  b = v41.b;
  c = v41.c;
  d = v41.d;
  v42.origin.x = v41.a;
  v42.origin.y = v41.b;
  v42.size.width = v41.c;
  v42.size.height = v41.d;
  MidX = CGRectGetMidX(v42);
  v43.origin.x = a;
  v43.origin.y = b;
  v43.size.width = c;
  v43.size.height = d;
  MidY = CGRectGetMidY(v43);
  v41.a = 1.0;
  v41.b = 0.0;
  v41.c = 0.0;
  v41.d = 1.0;
  v41.tx = 0.0;
  v41.ty = 0.0;
  CGAffineTransformScale(&t1, &v41, a3, a3);
  v41 = t1;
  CGAffineTransformTranslate(&t1, &v41, -(MidX * (a3 + -1.0)), -(MidY * (a3 + -1.0)));
  tx = t1.tx;
  ty = t1.ty;
  v27 = *&t1.a;
  v26 = *&t1.c;
  v10(v8, &a1[v9], v5);
  v20 = v11;
  v33 = v11;
  v21 = v31;
  v34 = v31;
  v35 = &protocol witness table for Link;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v22 = v30;
  v30(v8, v5);
  t1 = v41;
  *&t2.c = v26;
  *&t2.a = v27;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v41, &t1, &t2);
  specialized CanvasElementView.modelCoordinateSpace.setter(&v41);
  v29(v8, &a1[v28], v5);
  LOBYTE(t1.a) = 3;
  v23 = v32;
  v24 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v32) + 0x7D8))(v8, &t1, v20, v21);
  LOBYTE(t1.a) = 3;
  (*((*v24 & *v23) + 0x7B0))(&t1);
  return v22(v8, v5);
}

{
  v32 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit9SignatureVGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - v7;
  v9 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x3F0);
  swift_beginAccess();
  v10 = *(v6 + 16);
  v28 = v9;
  v10(v8, &a1[v9], v5);
  v29 = v10;
  v36 = type metadata accessor for Signature(0);
  v11 = v36;
  v31 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type Signature and conformance Signature, type metadata accessor for Signature);
  v37 = v31;
  v38 = &protocol witness table for Signature;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v30 = *(v6 + 8);
  v30(v8, v5);
  a = v41.a;
  b = v41.b;
  c = v41.c;
  d = v41.d;
  v42.origin.x = v41.a;
  v42.origin.y = v41.b;
  v42.size.width = v41.c;
  v42.size.height = v41.d;
  MidX = CGRectGetMidX(v42);
  v43.origin.x = a;
  v43.origin.y = b;
  v43.size.width = c;
  v43.size.height = d;
  MidY = CGRectGetMidY(v43);
  v41.a = 1.0;
  v41.b = 0.0;
  v41.c = 0.0;
  v41.d = 1.0;
  v41.tx = 0.0;
  v41.ty = 0.0;
  CGAffineTransformScale(&t1, &v41, a3, a3);
  v41 = t1;
  CGAffineTransformTranslate(&t1, &v41, -(MidX * (a3 + -1.0)), -(MidY * (a3 + -1.0)));
  tx = t1.tx;
  ty = t1.ty;
  v27 = *&t1.a;
  v26 = *&t1.c;
  v10(v8, &a1[v9], v5);
  v20 = v11;
  v33 = v11;
  v21 = v31;
  v34 = v31;
  v35 = &protocol witness table for Signature;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v22 = v30;
  v30(v8, v5);
  t1 = v41;
  *&t2.c = v26;
  *&t2.a = v27;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v41, &t1, &t2);
  specialized CanvasElementView.modelCoordinateSpace.setter(&v41);
  v29(v8, &a1[v28], v5);
  LOBYTE(t1.a) = 3;
  v23 = v32;
  v24 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v32) + 0x7D8))(v8, &t1, v20, v21);
  LOBYTE(t1.a) = 3;
  (*((*v24 & *v23) + 0x7B0))(&t1);
  return v22(v8, v5);
}

{
  v32 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - v7;
  v9 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x3F0);
  swift_beginAccess();
  v10 = *(v6 + 16);
  v28 = v9;
  v10(v8, &a1[v9], v5);
  v29 = v10;
  v36 = type metadata accessor for Paper(0);
  v11 = v36;
  v31 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper);
  v37 = v31;
  v38 = &protocol witness table for Paper;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v30 = *(v6 + 8);
  v30(v8, v5);
  a = v41.a;
  b = v41.b;
  c = v41.c;
  d = v41.d;
  v42.origin.x = v41.a;
  v42.origin.y = v41.b;
  v42.size.width = v41.c;
  v42.size.height = v41.d;
  MidX = CGRectGetMidX(v42);
  v43.origin.x = a;
  v43.origin.y = b;
  v43.size.width = c;
  v43.size.height = d;
  MidY = CGRectGetMidY(v43);
  v41.a = 1.0;
  v41.b = 0.0;
  v41.c = 0.0;
  v41.d = 1.0;
  v41.tx = 0.0;
  v41.ty = 0.0;
  CGAffineTransformScale(&t1, &v41, a3, a3);
  v41 = t1;
  CGAffineTransformTranslate(&t1, &v41, -(MidX * (a3 + -1.0)), -(MidY * (a3 + -1.0)));
  tx = t1.tx;
  ty = t1.ty;
  v27 = *&t1.a;
  v26 = *&t1.c;
  v10(v8, &a1[v9], v5);
  v20 = v11;
  v33 = v11;
  v21 = v31;
  v34 = v31;
  v35 = &protocol witness table for Paper;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v22 = v30;
  v30(v8, v5);
  t1 = v41;
  *&t2.c = v26;
  *&t2.a = v27;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v41, &t1, &t2);
  specialized CanvasElementView.modelCoordinateSpace.setter(&v41);
  v29(v8, &a1[v28], v5);
  LOBYTE(t1.a) = 3;
  v23 = v32;
  v24 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v32) + 0x7D8))(v8, &t1, v20, v21);
  LOBYTE(t1.a) = 3;
  (*((*v24 & *v23) + 0x7B0))(&t1);
  return v22(v8, v5);
}

{
  v32 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C12DocumentPageVGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - v7;
  v9 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x3F0);
  swift_beginAccess();
  v10 = *(v6 + 16);
  v28 = v9;
  v10(v8, &a1[v9], v5);
  v29 = v10;
  v36 = type metadata accessor for PaperDocumentPage(0);
  v11 = v36;
  v31 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentPage and conformance PaperDocumentPage, type metadata accessor for PaperDocumentPage);
  v37 = v31;
  v38 = &protocol witness table for PaperDocumentPage;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v30 = *(v6 + 8);
  v30(v8, v5);
  a = v41.a;
  b = v41.b;
  c = v41.c;
  d = v41.d;
  v42.origin.x = v41.a;
  v42.origin.y = v41.b;
  v42.size.width = v41.c;
  v42.size.height = v41.d;
  MidX = CGRectGetMidX(v42);
  v43.origin.x = a;
  v43.origin.y = b;
  v43.size.width = c;
  v43.size.height = d;
  MidY = CGRectGetMidY(v43);
  v41.a = 1.0;
  v41.b = 0.0;
  v41.c = 0.0;
  v41.d = 1.0;
  v41.tx = 0.0;
  v41.ty = 0.0;
  CGAffineTransformScale(&t1, &v41, a3, a3);
  v41 = t1;
  CGAffineTransformTranslate(&t1, &v41, -(MidX * (a3 + -1.0)), -(MidY * (a3 + -1.0)));
  tx = t1.tx;
  ty = t1.ty;
  v27 = *&t1.a;
  v26 = *&t1.c;
  v10(v8, &a1[v9], v5);
  v20 = v11;
  v33 = v11;
  v21 = v31;
  v34 = v31;
  v35 = &protocol witness table for PaperDocumentPage;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v22 = v30;
  v30(v8, v5);
  t1 = v41;
  *&t2.c = v26;
  *&t2.a = v27;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v41, &t1, &t2);
  specialized CanvasElementView.modelCoordinateSpace.setter(&v41);
  v29(v8, &a1[v28], v5);
  LOBYTE(t1.a) = 3;
  v23 = v32;
  v24 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v32) + 0x7D8))(v8, &t1, v20, v21);
  LOBYTE(t1.a) = 3;
  (*((*v24 & *v23) + 0x7B0))(&t1);
  return v22(v8, v5);
}

{
  v32 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit20UnknownCanvasElementVGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - v7;
  v9 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x3F0);
  swift_beginAccess();
  v10 = *(v6 + 16);
  v28 = v9;
  v10(v8, &a1[v9], v5);
  v29 = v10;
  v36 = type metadata accessor for UnknownCanvasElement(0);
  v11 = v36;
  v31 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type UnknownCanvasElement and conformance UnknownCanvasElement, type metadata accessor for UnknownCanvasElement);
  v37 = v31;
  v38 = &protocol witness table for UnknownCanvasElement;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v30 = *(v6 + 8);
  v30(v8, v5);
  a = v41.a;
  b = v41.b;
  c = v41.c;
  d = v41.d;
  v42.origin.x = v41.a;
  v42.origin.y = v41.b;
  v42.size.width = v41.c;
  v42.size.height = v41.d;
  MidX = CGRectGetMidX(v42);
  v43.origin.x = a;
  v43.origin.y = b;
  v43.size.width = c;
  v43.size.height = d;
  MidY = CGRectGetMidY(v43);
  v41.a = 1.0;
  v41.b = 0.0;
  v41.c = 0.0;
  v41.d = 1.0;
  v41.tx = 0.0;
  v41.ty = 0.0;
  CGAffineTransformScale(&t1, &v41, a3, a3);
  v41 = t1;
  CGAffineTransformTranslate(&t1, &v41, -(MidX * (a3 + -1.0)), -(MidY * (a3 + -1.0)));
  tx = t1.tx;
  ty = t1.ty;
  v27 = *&t1.a;
  v26 = *&t1.c;
  v10(v8, &a1[v9], v5);
  v20 = v11;
  v33 = v11;
  v21 = v31;
  v34 = v31;
  v35 = &protocol witness table for UnknownCanvasElement;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v22 = v30;
  v30(v8, v5);
  t1 = v41;
  *&t2.c = v26;
  *&t2.a = v27;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v41, &t1, &t2);
  specialized CanvasElementView.modelCoordinateSpace.setter(&v41);
  v29(v8, &a1[v28], v5);
  LOBYTE(t1.a) = 3;
  v23 = v32;
  v24 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v32) + 0x7D8))(v8, &t1, v20, v21);
  LOBYTE(t1.a) = 3;
  (*((*v24 & *v23) + 0x7B0))(&t1);
  return v22(v8, v5);
}

BOOL specialized closure #7 in CanvasElementView.setupAccessibility()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
    v2 = *MEMORY[0x1E69DD888];
    v3 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x538))();
    if (v4)
    {
      v5 = MEMORY[0x1DA6CCED0](v3);
    }

    else
    {
      v5 = 0;
    }

    UIAccessibilityPostNotification(v2, v5);
    swift_unknownObjectRelease();
  }

  return v1 != 0;
}

BOOL specialized closure #7 in CanvasElementView.setupAccessibility()(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *MEMORY[0x1E69DD888];
    v6 = a3(2);
    v8 = v7;
    v9 = a3(1);
    v11 = v10;
    v12 = a3(0);
    v14 = v13;
    MEMORY[0x1DA6CD010](8236, 0xE200000000000000);
    MEMORY[0x1DA6CD010](v9, v11);

    MEMORY[0x1DA6CD010](8236, 0xE200000000000000);
    MEMORY[0x1DA6CD010](v12, v14);

    v15 = MEMORY[0x1DA6CCED0](v6, v8);

    UIAccessibilityPostNotification(v5, v15);
  }

  return Strong != 0;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomAction) -> (@unowned Bool)(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

uint64_t specialized CanvasElementViewController.contentViewController.getter()
{
  swift_getKeyPath();
  CanvasElementViewController.access<A>(keyPath:)();

  v1 = direct field offset for CanvasElementViewController._contentViewController;
  swift_beginAccess();
  return *(v0 + v1);
}

void specialized CanvasElementViewController._canvasView.setter(void *a1)
{
  v2 = *(v1 + direct field offset for CanvasElementViewController._canvasView);
  *(v1 + direct field offset for CanvasElementViewController._canvasView) = a1;
  v3 = a1;

  CanvasElementViewController._canvasView.didset();
}

uint64_t specialized CanvasElementViewController.liveStreamMessenger.getter()
{
  swift_getKeyPath();
  CanvasElementViewController.access<A>(keyPath:)();

  v1 = v0 + direct field offset for CanvasElementViewController._liveStreamMessenger;
  swift_beginAccess();
  return *v1;
}

uint64_t partial apply for closure #1 in CanvasElementViewController.liveStreamMessenger.setter(void (*a1)(uint64_t, uint64_t))
{
  v3 = *(v1 + 32);
  v4 = swift_unknownObjectRetain();
  a1(v4, v3);
  return swift_unknownObjectRelease();
}

uint64_t _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type UIViewController? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type UIViewController? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type UIViewController? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo16UIViewControllerCSgMd);
    lazy protocol witness table accessor for type PPKQuickLookBannerView and conformance NSObject(&lazy protocol witness table cache variable for type UIViewController and conformance NSObject, &lazy cache variable for type metadata for UIViewController);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIViewController? and conformance <A> A?);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type PPKQuickLookBannerView and conformance NSObject(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PKMathRecognitionItemAttributes(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized CanvasElementViewController.MediaAnalysisObserver.__allocating_init(viewController:)()
{
  type metadata accessor for CanvasElementViewController.MediaAnalysisObserver();
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  return v0;
}

void specialized CanvasElementViewController._analysis.setter(void *a1)
{
  v3 = *(v1 + direct field offset for CanvasElementViewController._analysis);
  *(v1 + direct field offset for CanvasElementViewController._analysis) = a1;
  v2 = a1;
  CanvasElementViewController._analysis.didset(v3);
}

void *specialized CanvasElementViewController._liveStreamMessenger.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + direct field offset for CanvasElementViewController._liveStreamMessenger);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return CanvasElementViewController._liveStreamMessenger.didset();
}

void *specialized CanvasElementViewController._participantDetailsDataSource.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + direct field offset for CanvasElementViewController._participantDetailsDataSource;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return CanvasElementViewController._participantDetailsDataSource.didset();
}

void specialized CanvasElementViewController._contentViewController.setter(void *a1)
{
  v3 = direct field offset for CanvasElementViewController._contentViewController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  CanvasElementViewController._contentViewController.didset();
}

void partial apply for closure #1 in CanvasElementViewController.contentViewController.setter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  specialized CanvasElementViewController._contentViewController.setter(v1);
}

unint64_t lazy protocol witness table accessor for type CanvasEditingMode and conformance CanvasEditingMode()
{
  result = lazy protocol witness table cache variable for type CanvasEditingMode and conformance CanvasEditingMode;
  if (!lazy protocol witness table cache variable for type CanvasEditingMode and conformance CanvasEditingMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CanvasEditingMode and conformance CanvasEditingMode);
  }

  return result;
}

void partial apply for closure #1 in CanvasElementViewController.editingMode.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + direct field offset for CanvasElementViewController._editingMode);
  *(v1 + direct field offset for CanvasElementViewController._editingMode) = *(v0 + 24);
  v3 = v2;
  CanvasElementViewController._editingMode.didset(&v3);
}

uint64_t partial apply for closure #1 in CanvasElementViewController.allowsContentSnapping.setter(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = *(v4 + 16);
  v9 = *(v4 + 24);
  v10 = *a1;
  swift_beginAccess();
  *(v8 + v10) = v9;
  return a4(a2, a3);
}

uint64_t partial apply for closure #1 in CanvasElementViewController.showParticipantCursors.setter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *a1;
  v7 = swift_beginAccess();
  *(v4 + v6) = v5;
  return a2(v7);
}

void partial apply for closure #1 in CanvasElementViewController.canEditVellumOpacity.setter(uint64_t *a1, uint64_t (*a2)(void), void *a3, void *a4)
{
  v8 = *(v4 + 16);
  v9 = *(v4 + 24);
  v10 = *a1;
  swift_beginAccess();
  *(v8 + v10) = v9;
  CanvasElementViewController._canEditVellumOpacity.didset(a2, a3, a4);
}

uint64_t partial apply for closure #1 in CanvasElementViewController.bannerViewConfiguration.setter()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  v5[0] = *v1;
  v5[1] = v2;
  v5[2] = *(v1 + 32);
  v6 = *(v1 + 48);
  outlined init with copy of Date?(v1, v4, &_s8PaperKit23BannerViewConfigurationVSgMd);
  return CanvasElementViewController._bannerViewConfiguration.setter(v5);
}

unint64_t lazy protocol witness table accessor for type UIView? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type UIView? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type UIView? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo6UIViewCSgMd);
    lazy protocol witness table accessor for type PPKQuickLookBannerView and conformance NSObject(&lazy protocol witness table cache variable for type UIView and conformance NSObject, &lazy cache variable for type metadata for UIView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIView? and conformance <A> A?);
  }

  return result;
}

uint64_t specialized CanvasElementViewController.canvasView.getter(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  CanvasElementViewController.access<A>(keyPath:)();

  return *(v2 + *a2);
}

void specialized CanvasElementViewController._rulerHostView.setter(void *a1)
{
  v3 = *(v1 + direct field offset for CanvasElementViewController._rulerHostView);
  *(v1 + direct field offset for CanvasElementViewController._rulerHostView) = a1;
  v2 = a1;
  CanvasElementViewController._rulerHostView.didset(v3);
}

void partial apply for closure #1 in CanvasElementViewController.rulerHostView.setter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  specialized CanvasElementViewController._rulerHostView.setter(v1);
}

uint64_t partial apply for closure #1 in CanvasElementViewController.formDelegate.setter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16) + direct field offset for CanvasElementViewController._formDelegate;
  swift_beginAccess();
  *(v2 + 8) = v1;
  return swift_unknownObjectWeakAssign();
}

void specialized CanvasElementViewController.init(coder:)()
{
  v1 = v0;
  *(v0 + direct field offset for CanvasElementViewController._canvasView) = 0;
  v2 = (v0 + direct field offset for CanvasElementViewController._liveStreamMessenger);
  *v2 = 0;
  v2[1] = 0;
  v3 = v0 + direct field offset for CanvasElementViewController._participantDetailsDataSource;
  CanvasElementViewController.participantDetailsDataSource.init(0, v3);
  *(v3 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + direct field offset for CanvasElementViewController._showParticipantCursors) = 0;
  *(v1 + direct field offset for CanvasElementViewController._mediaAnalysisObserver) = 0;
  *(v1 + direct field offset for CanvasElementViewController._allowsContentSnapping) = 0;
  *(v1 + direct field offset for CanvasElementViewController._contentViewController) = 0;
  *(v1 + direct field offset for CanvasElementViewController._canvasSubscribeCancellable) = 0;
  v4 = direct field offset for CanvasElementViewController.passThroughSubject;
  type metadata accessor for Capsule();
  type metadata accessor for PassthroughSubject();
  *(v1 + v4) = PassthroughSubject.__allocating_init()();
  v5 = (v1 + direct field offset for CanvasElementViewController.__imageSize);
  *v5 = 0;
  v5[1] = 0;
  *(v1 + direct field offset for CanvasElementViewController.__imageHeadroom) = 0;
  *(v1 + direct field offset for CanvasElementViewController._liveStreamDrawings) = 0;
  *(v1 + direct field offset for CanvasElementViewController._isSixChannelBlendingEnabled) = 1;
  *(v1 + direct field offset for CanvasElementViewController._sixChannelBlendingDisableSnapshotting) = 0;
  *(v1 + direct field offset for CanvasElementViewController._sixChannelBlendingRendersTransparent) = 0;
  *(v1 + direct field offset for CanvasElementViewController._canEditVellumOpacity) = 0;
  *(v1 + direct field offset for CanvasElementViewController._isImageAnalysisEnabled) = 1;
  *(v1 + direct field offset for CanvasElementViewController._canEditDescription) = 1;
  v6 = direct field offset for CanvasElementViewController.plusButton;
  type metadata accessor for FormPlusButtonView();
  *(v1 + v6) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + direct field offset for CanvasElementViewController._isUpdatingBannerConfiguration) = 0;
  v7 = v1 + direct field offset for CanvasElementViewController._bannerViewConfiguration;
  *v7 = 1;
  *(v7 + 40) = 0u;
  *(v7 + 24) = 0u;
  *(v7 + 8) = 0u;
  v8 = [objc_allocWithZone(PPKQuickLookBannerView) init];
  *(v1 + direct field offset for CanvasElementViewController._bannerView) = v8;
  *(v1 + direct field offset for CanvasElementViewController.__rulerHostingDelegate) = 0;
  *(v1 + direct field offset for CanvasElementViewController._rulerHostView) = 0;
  v9 = v1 + direct field offset for CanvasElementViewController._formDelegate;
  CanvasElementViewController.participantDetailsDataSource.init(0, v1 + direct field offset for CanvasElementViewController._formDelegate);
  *(v9 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + direct field offset for CanvasElementViewController._analysis) = 0;
  ObservationRegistrar.init()();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t specialized CanvasElementViewController.scrollView.getter()
{
  result = specialized CanvasElementViewController.canvasView.getter(&unk_1D40727A8, &direct field offset for CanvasElementViewController._canvasView);
  if (!result)
  {
    __break(1u);
    goto LABEL_5;
  }

  result = *(result + direct field offset for CanvasView.canvasScrollView);
  if (!result)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t partial apply for closure #1 in CanvasElementViewController<>.updateImageZoomScale(in:animated:zoomable:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 57);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in CanvasElementViewController<>.updateImageZoomScale(in:animated:zoomable:)(v7, v8, a1, v4, v5, v6, v9, v10);
}

uint64_t keypath_set_195Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t type metadata completion function for CanvasElementViewController()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t _s8PaperKit5ImageVWOhTm_1(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL partial apply for specialized closure #1 in CanvasElementView.setupAccessibility()()
{
  return specialized closure #1 in CanvasElementView.setupAccessibility()();
}

{
  return specialized closure #1 in CanvasElementView.setupAccessibility()(v0, partial apply for specialized closure #1 in closure #1 in CanvasElementView.setupAccessibility(), specialized CanvasElementView.accessibilityDescriptionForAttribute(_:));
}

{
  return specialized closure #1 in CanvasElementView.setupAccessibility()(v0, partial apply for specialized closure #1 in closure #1 in CanvasElementView.setupAccessibility(), specialized CanvasElementView.accessibilityDescriptionForAttribute(_:));
}

{
  return specialized closure #1 in CanvasElementView.setupAccessibility()(v0, partial apply for specialized closure #1 in closure #1 in CanvasElementView.setupAccessibility(), specialized CanvasElementView.accessibilityDescriptionForAttribute(_:));
}

{
  return specialized closure #1 in CanvasElementView.setupAccessibility()(v0, partial apply for specialized closure #1 in closure #1 in CanvasElementView.setupAccessibility(), specialized CanvasElementView.accessibilityDescriptionForAttribute(_:));
}

{
  return specialized closure #1 in CanvasElementView.setupAccessibility()(v0, partial apply for specialized closure #1 in closure #1 in CanvasElementView.setupAccessibility(), specialized CanvasElementView.accessibilityDescriptionForAttribute(_:));
}

{
  return specialized closure #1 in CanvasElementView.setupAccessibility()(v0, partial apply for specialized closure #1 in closure #1 in CanvasElementView.setupAccessibility(), specialized CanvasElementView.accessibilityDescriptionForAttribute(_:));
}

{
  return specialized closure #1 in CanvasElementView.setupAccessibility()(v0, partial apply for specialized closure #1 in closure #1 in CanvasElementView.setupAccessibility(), specialized CanvasElementView.accessibilityDescriptionForAttribute(_:));
}

{
  return specialized closure #1 in CanvasElementView.setupAccessibility()(v0, partial apply for specialized closure #1 in closure #1 in CanvasElementView.setupAccessibility(), specialized CanvasElementView.accessibilityDescriptionForAttribute(_:));
}

{
  return specialized closure #1 in CanvasElementView.setupAccessibility()(v0, partial apply for specialized closure #1 in closure #1 in CanvasElementView.setupAccessibility(), specialized CanvasElementView.accessibilityDescriptionForAttribute(_:));
}

BOOL partial apply for specialized closure #2 in CanvasElementView.setupAccessibility()()
{
  return specialized closure #2 in CanvasElementView.setupAccessibility()();
}

{
  return specialized closure #2 in CanvasElementView.setupAccessibility()(v0, partial apply for specialized closure #1 in closure #2 in CanvasElementView.setupAccessibility(), specialized CanvasElementView.accessibilityDescriptionForAttribute(_:));
}

{
  return specialized closure #2 in CanvasElementView.setupAccessibility()(v0, partial apply for specialized closure #1 in closure #2 in CanvasElementView.setupAccessibility(), specialized CanvasElementView.accessibilityDescriptionForAttribute(_:));
}

{
  return specialized closure #2 in CanvasElementView.setupAccessibility()(v0, partial apply for specialized closure #1 in closure #2 in CanvasElementView.setupAccessibility(), specialized CanvasElementView.accessibilityDescriptionForAttribute(_:));
}

{
  return specialized closure #2 in CanvasElementView.setupAccessibility()(v0, partial apply for specialized closure #1 in closure #2 in CanvasElementView.setupAccessibility(), specialized CanvasElementView.accessibilityDescriptionForAttribute(_:));
}

{
  return specialized closure #2 in CanvasElementView.setupAccessibility()(v0, partial apply for specialized closure #1 in closure #2 in CanvasElementView.setupAccessibility(), specialized CanvasElementView.accessibilityDescriptionForAttribute(_:));
}

{
  return specialized closure #2 in CanvasElementView.setupAccessibility()(v0, partial apply for specialized closure #1 in closure #2 in CanvasElementView.setupAccessibility(), specialized CanvasElementView.accessibilityDescriptionForAttribute(_:));
}

{
  return specialized closure #2 in CanvasElementView.setupAccessibility()(v0, partial apply for specialized closure #1 in closure #2 in CanvasElementView.setupAccessibility(), specialized CanvasElementView.accessibilityDescriptionForAttribute(_:));
}

{
  return specialized closure #2 in CanvasElementView.setupAccessibility()(v0, partial apply for specialized closure #1 in closure #2 in CanvasElementView.setupAccessibility(), specialized CanvasElementView.accessibilityDescriptionForAttribute(_:));
}

{
  return specialized closure #2 in CanvasElementView.setupAccessibility()(v0, partial apply for specialized closure #1 in closure #2 in CanvasElementView.setupAccessibility(), specialized CanvasElementView.accessibilityDescriptionForAttribute(_:));
}

uint64_t block_copy_helper_53(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for specialized closure #1 in closure #2 in CanvasElementView.setupAccessibility()()
{
  return specialized closure #1 in closure #2 in CanvasElementView.setupAccessibility()(*(v0 + 16), *(v0 + 32), *(v0 + 24));
}

{
  return specialized closure #1 in closure #2 in CanvasElementView.setupAccessibility()(*(v0 + 16), *(v0 + 32), *(v0 + 24));
}

{
  return specialized closure #1 in closure #2 in CanvasElementView.setupAccessibility()(*(v0 + 16), *(v0 + 32), *(v0 + 24));
}

{
  return specialized closure #1 in closure #2 in CanvasElementView.setupAccessibility()(*(v0 + 16), *(v0 + 32), *(v0 + 24));
}

{
  return specialized closure #1 in closure #2 in CanvasElementView.setupAccessibility()(*(v0 + 16), *(v0 + 32), *(v0 + 24));
}

{
  return specialized closure #1 in closure #2 in CanvasElementView.setupAccessibility()(*(v0 + 16), *(v0 + 32), *(v0 + 24));
}

{
  return specialized closure #1 in closure #2 in CanvasElementView.setupAccessibility()(*(v0 + 16), *(v0 + 32), *(v0 + 24));
}

{
  return specialized closure #1 in closure #2 in CanvasElementView.setupAccessibility()(*(v0 + 16), *(v0 + 32), *(v0 + 24));
}

{
  return specialized closure #1 in closure #2 in CanvasElementView.setupAccessibility()(*(v0 + 16), *(v0 + 32), *(v0 + 24));
}

{
  return specialized closure #1 in closure #2 in CanvasElementView.setupAccessibility()(*(v0 + 16), *(v0 + 32), *(v0 + 24));
}

uint64_t partial apply for specialized closure #1 in closure #1 in CanvasElementView.setupAccessibility()()
{
  return specialized closure #1 in closure #1 in CanvasElementView.setupAccessibility()(*(v0 + 24), *(v0 + 32), *(v0 + 16));
}

{
  return specialized closure #1 in closure #1 in CanvasElementView.setupAccessibility()(*(v0 + 24), *(v0 + 32), *(v0 + 16));
}

{
  return specialized closure #1 in closure #1 in CanvasElementView.setupAccessibility()(*(v0 + 24), *(v0 + 32), *(v0 + 16));
}

{
  return specialized closure #1 in closure #1 in CanvasElementView.setupAccessibility()(*(v0 + 24), *(v0 + 32), *(v0 + 16));
}

{
  return specialized closure #1 in closure #1 in CanvasElementView.setupAccessibility()(*(v0 + 24), *(v0 + 32), *(v0 + 16));
}

{
  return specialized closure #1 in closure #1 in CanvasElementView.setupAccessibility()(*(v0 + 24), *(v0 + 32), *(v0 + 16));
}

{
  return specialized closure #1 in closure #1 in CanvasElementView.setupAccessibility()(*(v0 + 24), *(v0 + 32), *(v0 + 16));
}

{
  return specialized closure #1 in closure #1 in CanvasElementView.setupAccessibility()(*(v0 + 24), *(v0 + 32), *(v0 + 16));
}

{
  return specialized closure #1 in closure #1 in CanvasElementView.setupAccessibility()(*(v0 + 24), *(v0 + 32), *(v0 + 16));
}

{
  return specialized closure #1 in closure #1 in CanvasElementView.setupAccessibility()(*(v0 + 24), *(v0 + 32), *(v0 + 16));
}

unint64_t lazy protocol witness table accessor for type VKCImageAnalysis? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type VKCImageAnalysis? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type VKCImageAnalysis? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo16VKCImageAnalysisCSgMd);
    lazy protocol witness table accessor for type PPKQuickLookBannerView and conformance NSObject(&lazy protocol witness table cache variable for type VKCImageAnalysis and conformance NSObject, &lazy cache variable for type metadata for VKCImageAnalysis);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VKCImageAnalysis? and conformance <A> A?);
  }

  return result;
}

void partial apply for closure #1 in CanvasElementViewController.analysis.setter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  specialized CanvasElementViewController._analysis.setter(v1);
}

unint64_t lazy protocol witness table accessor for type RulerHostingDelegate? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type RulerHostingDelegate? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type RulerHostingDelegate? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s8PaperKit20RulerHostingDelegateCSgMd);
    _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type RulerHostingDelegate and conformance NSObject, type metadata accessor for RulerHostingDelegate);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RulerHostingDelegate? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PPKQuickLookBannerView? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type PPKQuickLookBannerView? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type PPKQuickLookBannerView? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo22PPKQuickLookBannerViewCSgMd);
    lazy protocol witness table accessor for type PPKQuickLookBannerView and conformance NSObject(&lazy protocol witness table cache variable for type PPKQuickLookBannerView and conformance NSObject, &lazy cache variable for type metadata for PPKQuickLookBannerView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PPKQuickLookBannerView? and conformance <A> A?);
  }

  return result;
}

void partial apply for closure #1 in CanvasElementViewController.bannerView.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + direct field offset for CanvasElementViewController._bannerView);
  *(v1 + direct field offset for CanvasElementViewController._bannerView) = v2;
  v4 = v2;
}

uint64_t _s8PaperKit9ShapeTypeOWOcTm_2(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s8PaperKit5ShapeVWObTm_2(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in CanvasElementViewController.updateViewForPaper(_:)(uint64_t a1)
{
  v4 = *(type metadata accessor for Image(0) - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[7];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return closure #1 in CanvasElementViewController.updateViewForPaper(_:)(a1, v6, v7, v8, v1 + v5);
}

double partial apply for closure #1 in CanvasElementViewController._imageHeadroom.setter()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + direct field offset for CanvasElementViewController.__imageHeadroom) = result;
  return result;
}

__n128 partial apply for closure #1 in CanvasElementViewController._imageSize.setter()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + direct field offset for CanvasElementViewController.__imageSize) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type AnyCancellable? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type AnyCancellable? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type AnyCancellable? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine14AnyCancellableCSgMd);
    _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x1E695BF10]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyCancellable? and conformance <A> A?);
  }

  return result;
}

uint64_t keypath_get_309Tm@<X0>(uint64_t a1@<X3>, void *a2@<X4>, uint64_t *a3@<X8>)
{
  *a3 = specialized CanvasElementViewController.canvasView.getter(a1, a2);
}

uint64_t partial apply for closure #1 in CanvasElementViewController.canvasSubscribeCancellable.setter(void *a1)
{
  *(*(v1 + 16) + *a1) = *(v1 + 24);
}

void partial apply for closure #1 in CanvasElementViewController.canvasView.setter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  specialized CanvasElementViewController._canvasView.setter(v1);
}

uint64_t partial apply for closure #1 in CanvasElementViewController.updateToolPickerVisibility()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in CanvasElementViewController.updateToolPickerVisibility()(a1, v4, v5, v6);
}

BOOL partial apply for specialized closure #7 in CanvasElementView.setupAccessibility()(uint64_t a1)
{
  return specialized closure #7 in CanvasElementView.setupAccessibility()(a1, v1, specialized CanvasElementView.accessibilityDescriptionForAttribute(_:));
}

{
  return specialized closure #7 in CanvasElementView.setupAccessibility()(a1, v1, specialized CanvasElementView.accessibilityDescriptionForAttribute(_:));
}

{
  return specialized closure #7 in CanvasElementView.setupAccessibility()(a1, v1, specialized CanvasElementView.accessibilityDescriptionForAttribute(_:));
}

{
  return specialized closure #7 in CanvasElementView.setupAccessibility()(a1, v1, specialized CanvasElementView.accessibilityDescriptionForAttribute(_:));
}

{
  return specialized closure #7 in CanvasElementView.setupAccessibility()(a1, v1, specialized CanvasElementView.accessibilityDescriptionForAttribute(_:));
}

{
  return specialized closure #7 in CanvasElementView.setupAccessibility()(a1, v1, specialized CanvasElementView.accessibilityDescriptionForAttribute(_:));
}

{
  return specialized closure #7 in CanvasElementView.setupAccessibility()(a1, v1, specialized CanvasElementView.accessibilityDescriptionForAttribute(_:));
}

{
  return specialized closure #7 in CanvasElementView.setupAccessibility()(a1, v1, specialized CanvasElementView.accessibilityDescriptionForAttribute(_:));
}

{
  return specialized closure #7 in CanvasElementView.setupAccessibility()(a1, v1, specialized CanvasElementView.accessibilityDescriptionForAttribute(_:));
}

uint64_t closure #1 in AnyCanvas.delegate.setterpartial apply()
{
  return partial apply for closure #1 in AnyCanvas.delegate.setter();
}

{
  return _s8PaperKit9AnyCanvasC8delegateAA0D8Delegate_pSgvsyyXEfU_TA_0();
}

uint64_t one-time initialization function for dynamicRangeLogger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, dynamicRangeLogger);
  __swift_project_value_buffer(v0, dynamicRangeLogger);
  return Logger.init(subsystem:category:)();
}

void CGImageSourceRef.dynamicRangeComponents.getter(uint64_t a1@<X8>)
{
  v3 = CGImageSourceRef.decodedHDRComponent.getter();
  if (!v1)
  {
    if (v3)
    {
      v6 = v4;
      v7 = v5;
      v8 = v3;
      v9 = specialized closure #1 in CGImageSourceRef.dynamicRangeComponents.getter(v3);
      CGImageSourceRef.decodedSDRComponent.getter();
      if (v10)
      {
        v14 = v10;

        if (v9)
        {
          *a1 = v14;
          *(a1 + 8) = v8;
          *(a1 + 16) = v6;
          *(a1 + 24) = v7;
          *(a1 + 32) = 2;
          return;
        }
      }

      *a1 = v8;
      *(a1 + 8) = v6;
      *(a1 + 16) = v7;
      *(a1 + 24) = 0;
      *(a1 + 32) = 1;
    }

    else
    {
      CGImageSourceRef.decodedSDRComponent.getter();
      if (v12)
      {
        *a1 = v12;
        *(a1 + 8) = v13;
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
        *(a1 + 32) = 0;
      }

      else
      {
        if (one-time initialization token for dynamicRangeLogger != -1)
        {
          swift_once();
        }

        v15 = type metadata accessor for Logger();
        __swift_project_value_buffer(v15, dynamicRangeLogger);
        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&dword_1D38C4000, v16, v17, "Image source is missing both SDR and HDR components", v18, 2u);
          MEMORY[0x1DA6D0660](v18, -1, -1);
        }

        lazy protocol witness table accessor for type CGImageSourceRef.DynamicRangeComponents.Errors and conformance CGImageSourceRef.DynamicRangeComponents.Errors();
        swift_allocError();
        *v19 = 1;
        swift_willThrow();
      }
    }
  }
}

void CGImageSourceRef.decodedSDRComponent.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_ADtGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D4058CF0;
  v2 = *MEMORY[0x1E696E018];
  *(inited + 32) = *MEMORY[0x1E696E018];
  v3 = *MEMORY[0x1E696E030];
  *(inited + 40) = *MEMORY[0x1E696E030];
  v4 = v2;
  v5 = v3;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ADTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of StocksKitCurrencyCache.Provider?(inited + 32, &_sSo11CFStringRefa_ABtMd);
  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
  v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  ImageAtIndex = CGImageSourceCreateImageAtIndex(v0, 0, v6.super.isa);
  if (ImageAtIndex && (v8 = ImageAtIndex, !CGImageGetColorSpace(ImageAtIndex)))
  {
    if (one-time initialization token for dynamicRangeLogger != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, dynamicRangeLogger);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1D38C4000, v10, v11, "SDR image does not have a color space", v12, 2u);
      MEMORY[0x1DA6D0660](v12, -1, -1);
    }

    lazy protocol witness table accessor for type CGImageSourceRef.DynamicRangeComponents.Errors and conformance CGImageSourceRef.DynamicRangeComponents.Errors();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
  }

  else
  {
  }
}

CGImage *CGImageSourceRef.decodedHDRComponent.getter()
{
  v1 = v0;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v2 = *MEMORY[0x1E696E020];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_SbtGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D4058CF0;
  v4 = *MEMORY[0x1E696D208];
  *(inited + 32) = *MEMORY[0x1E696D208];
  *(inited + 40) = 1;
  v5 = v4;
  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_SbTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of StocksKitCurrencyCache.Provider?(inited + 32, &_sSo11CFStringRefa_SbtMd);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo11CFStringRefaSbGMd);
  *&v27 = v6;
  outlined init with take of Any(&v27, v26);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v26, v2, isUniquelyReferenced_nonNull_native);
  v8 = *MEMORY[0x1E696E018];
  v9 = *MEMORY[0x1E696E028];
  type metadata accessor for CFStringRef(0);
  v28 = v10;
  *&v27 = v9;
  outlined init with take of Any(&v27, v26);
  v11 = v9;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v26, v8, v12);
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  ImageAtIndex = CGImageSourceCreateImageAtIndex(v1, 0, isa);

  if (!ImageAtIndex)
  {

    return ImageAtIndex;
  }

  v15 = CGImageGetColorSpace(ImageAtIndex);
  if (v15)
  {
    v16 = v15;
    if (MEMORY[0x1DA6CEC30]())
    {
    }

    else
    {
      v22 = CGColorSpaceUsesExtendedRange(v16);

      if (!v22)
      {
        goto LABEL_16;
      }
    }

    CGImageGetContentHeadroom();
    v24 = v23;
    if (v23 == 0.0 && CGImageGetBitsPerComponent(ImageAtIndex) > 15 || v24 > 1.0)
    {
      return ImageAtIndex;
    }

LABEL_16:

    return 0;
  }

  if (one-time initialization token for dynamicRangeLogger != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, dynamicRangeLogger);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1D38C4000, v18, v19, "HDR image does not have a color space", v20, 2u);
    MEMORY[0x1DA6D0660](v20, -1, -1);
  }

  lazy protocol witness table accessor for type CGImageSourceRef.DynamicRangeComponents.Errors and conformance CGImageSourceRef.DynamicRangeComponents.Errors();
  swift_allocError();
  *v21 = 0;
  swift_willThrow();

  return ImageAtIndex;
}

unint64_t lazy protocol witness table accessor for type CGImageSourceRef.DynamicRangeComponents.Errors and conformance CGImageSourceRef.DynamicRangeComponents.Errors()
{
  result = lazy protocol witness table cache variable for type CGImageSourceRef.DynamicRangeComponents.Errors and conformance CGImageSourceRef.DynamicRangeComponents.Errors;
  if (!lazy protocol witness table cache variable for type CGImageSourceRef.DynamicRangeComponents.Errors and conformance CGImageSourceRef.DynamicRangeComponents.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGImageSourceRef.DynamicRangeComponents.Errors and conformance CGImageSourceRef.DynamicRangeComponents.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CGImageSourceRef.DynamicRangeComponents.Errors and conformance CGImageSourceRef.DynamicRangeComponents.Errors;
  if (!lazy protocol witness table cache variable for type CGImageSourceRef.DynamicRangeComponents.Errors and conformance CGImageSourceRef.DynamicRangeComponents.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGImageSourceRef.DynamicRangeComponents.Errors and conformance CGImageSourceRef.DynamicRangeComponents.Errors);
  }

  return result;
}

uint64_t specialized closure #1 in CGImageSourceRef.dynamicRangeComponents.getter(CGImage *a1)
{
  v1 = CGImageGetUTType(a1);
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      static String._conditionallyBridgeFromObjectiveC(_:result:)();
    }
  }

  return 0;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CGImageSourceRef.DynamicRangeComponents(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
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

uint64_t storeEnumTagSinglePayload for CGImageSourceRef.DynamicRangeComponents(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

void CanvasElementResizeViewMoreButton.init()()
{
  *&v0[OBJC_IVAR____TtC8PaperKit33CanvasElementResizeViewMoreButton_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1 = MEMORY[0x1DA6CCED0](0xD000000000000014, 0x80000001D408E410);
  v2 = [objc_opt_self() systemImageNamed_];

  if (v2)
  {
    v3 = OBJC_IVAR____TtC8PaperKit33CanvasElementResizeViewMoreButton_imageView;
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];

    *&v0[v3] = v4;
    v22.receiver = v0;
    v22.super_class = type metadata accessor for CanvasElementResizeViewMoreButton();
    v5 = objc_msgSendSuper2(&v22, sel_initWithFrame_, 0.0, 0.0, 22.0, 22.0);
    v6 = OBJC_IVAR____TtC8PaperKit33CanvasElementResizeViewMoreButton_imageView;
    v7 = *&v5[OBJC_IVAR____TtC8PaperKit33CanvasElementResizeViewMoreButton_imageView];
    v8 = v5;
    v9 = v7;
    [v8 bounds];
    [v9 setFrame_];

    v10 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
    v11 = v8;
    [v11 frame];
    x = v23.origin.x;
    y = v23.origin.y;
    width = v23.size.width;
    height = v23.size.height;
    MidX = CGRectGetMidX(v23);
    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.width = width;
    v24.size.height = height;
    [v10 setCenter_];
    v17 = [objc_opt_self() systemBackgroundColor];
    [v10 setBackgroundColor_];

    [v11 addSubview_];
    [v11 addSubview_];
    [v11 setIsAccessibilityElement_];
    [v11 setAccessibilityTraits_];
    v18 = MEMORY[0x1DA6CCED0](0xD000000000000031, 0x80000001D408E470);
    [v11 setAccessibilityIdentifier_];

    v19 = v11;
    v20 = MEMORY[0x1DA6CCED0](0xD000000000000011, 0x80000001D408E4B0);
    [v19 setAccessibilityLabel_];

    [v19 setContextMenuInteractionEnabled_];
    [v19 setShowsMenuAsPrimaryAction_];
    v21 = [objc_allocWithZone(MEMORY[0x1E69DCDB0]) initWithDelegate_];

    [v19 addInteraction_];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall CanvasElementResizeViewMoreButton.didMoveToWindow()()
{
  v1 = [v0 window];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC8PaperKit33CanvasElementResizeViewMoreButton_imageView];
    v3 = v1;
    v4 = [v3 tintColor];
    if (!v4)
    {
      if (one-time initialization token for resizeHandleColor != -1)
      {
        swift_once();
      }

      v4 = static UIConstants.resizeHandleColor;
    }

    v5 = v4;

    [v2 setTintColor_];
  }
}

id CanvasElementResizeViewMoreButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CanvasElementResizeViewMoreButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void specialized CanvasElementResizeViewMoreButton.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC8PaperKit33CanvasElementResizeViewMoreButton_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = MEMORY[0x1DA6CCED0](0xD000000000000014, 0x80000001D408E410);
  v2 = [objc_opt_self() systemImageNamed_];

  if (!v2)
  {
    __break(1u);
  }

  v3 = OBJC_IVAR____TtC8PaperKit33CanvasElementResizeViewMoreButton_imageView;
  v4 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];

  *(v0 + v3) = v4;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id specialized CanvasElementResizeViewMoreButton.pointerInteraction(_:styleFor:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit14UIPointerShapeOSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v17 - v3;
  v5 = type metadata accessor for UIPointerEffect();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x1EEE9AC00](v5).n128_u64[0];
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = [a1 view];
  if (result)
  {
    v11 = result;
    v12 = [result window];
    if (v12)
    {

      v13 = [objc_allocWithZone(MEMORY[0x1E69DD070]) initWithView_];
      type metadata accessor for UIPointerStyle();
      *v9 = v13;
      (*(v6 + 104))(v9, *MEMORY[0x1E69DBF70], v5);
      v14 = type metadata accessor for UIPointerShape();
      (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
      v15 = v13;
      v16 = UIPointerStyle.init(effect:shape:)();

      return v16;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

unint64_t type metadata accessor for UIPointerStyle()
{
  result = lazy cache variable for type metadata for UIPointerStyle;
  if (!lazy cache variable for type metadata for UIPointerStyle)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIPointerStyle);
  }

  return result;
}

id PPKPDFThumbnailView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PPKPDFThumbnailView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

PaperKit::TouchMode_Internal_optional __swiftcall TouchMode_Internal.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 5)
  {
    v2 = 1;
  }

  else
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

Swift::Int CanvasEditingMode.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1DA6CE810](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type TouchMode_Internal and conformance TouchMode_Internal()
{
  result = lazy protocol witness table cache variable for type TouchMode_Internal and conformance TouchMode_Internal;
  if (!lazy protocol witness table cache variable for type TouchMode_Internal and conformance TouchMode_Internal)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TouchMode_Internal and conformance TouchMode_Internal);
  }

  return result;
}

uint64_t specialized Sequence.allSatisfy(_:)(uint64_t (*a1)(char *), char a2, uint64_t a3)
{
  v24 = a1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  MEMORY[0x1EEE9AC00](v23);
  v21 = v5;
  v22 = v20 - v6;
  v7 = *(a3 + 56);
  v20[0] = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v7;
  v11 = (v8 + 63) >> 6;
  v20[1] = v5 + 8;
  v20[2] = v5 + 16;
  v25 = a3;

  v13 = 0;
  while (v10)
  {
LABEL_9:
    v15 = v21;
    v16 = v22;
    v17 = v23;
    (*(v21 + 16))(v22, *(v25 + 48) + *(v21 + 72) * (__clz(__rbit64(v10)) | (v13 << 6)), v23);
    v18 = v26;
    v19 = v24(v16);
    result = (*(v15 + 8))(v16, v17);
    v26 = v18;
    if (v18)
    {
      goto LABEL_13;
    }

    v10 &= v10 - 1;
    if ((v19 & 1) == 0)
    {
      a2 = 0;
LABEL_13:

      return a2 & 1;
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      a2 = 1;
      goto LABEL_13;
    }

    v10 = *(v20[0] + 8 * v14);
    ++v13;
    if (v10)
    {
      v13 = v14;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized CRAttributedString<>.updateAttribute<A>(in:newValue:keypath:)(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5)
{
  v76 = a5;
  v79 = a3;
  v80 = a4;
  v74 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v75 = &v55 - v7;
  v8 = type metadata accessor for UnknownValueProperties();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v58 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence22UnknownValuePropertiesVSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v55 - v12;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence22UnknownValuePropertiesVSg_ADtMd);
  MEMORY[0x1EEE9AC00](v65);
  v64 = &v55 - v14;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
  v70 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v77 = &v55 - v15;
  v86 = type metadata accessor for Color(0);
  v67 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GMd);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v81 = &v55 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v83 = &v55 - v22;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV9SubstringVy8PaperKit18TextAttributeScopeV_GMd);
  v23 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v25 = &v55 - v24;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd);
  v26 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v84 = &v55 - v27;
  result = NSNotFound.getter();
  if (result == a1)
  {
    goto LABEL_35;
  }

  v63 = v8;
  if (__OFADD__(a1, v74))
  {
LABEL_36:
    __break(1u);
    return result;
  }

  v56 = v26;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  CRAttributedString.subscript.getter();
  v29 = v82;
  CRAttributedString.Substring.runs.getter();
  (*(v23 + 8))(v25, v29);
  v30 = v83;
  CRAttributedString.Runs.next()();
  v72 = *(v19 + 48);
  v73 = v19 + 48;
  if (v72(v30, 1, v18) != 1)
  {
    v33 = *(v19 + 32);
    v32 = v19 + 32;
    v71 = v33;
    ++v70;
    v62 = (v9 + 48);
    v57 = (v9 + 32);
    v60 = (v9 + 8);
    v67 += 7;
    v66 = (v32 - 24);
    v31 = MEMORY[0x1E69E7CC0];
    v34 = v81;
    v61 = v13;
    v69 = v18;
    v68 = v32;
    while (1)
    {
      v71(v34, v30, v18);
      v35 = v77;
      CRAttributedString.Runs.Run.attributes.getter();
      v79(v35);
      (*v70)(v35, v78);
      result = CRAttributedString.Runs.Run.range.getter();
      v37 = v36 - result;
      if (__OFSUB__(v36, result))
      {
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
        goto LABEL_36;
      }

      v38 = result;
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v39 = __swift_project_value_buffer(v86, static TextAttributeScope.ColorAttribute.defaultValue);
      type metadata accessor for CGColorRef(0);
      v40 = v17;
      _sSo10CGColorRefaAB14CoreFoundation9_CFObjectSCWlTm_0(&lazy protocol witness table cache variable for type CGColorRef and conformance CGColorRef, type metadata accessor for CGColorRef);
      result = static _CFObject.== infix(_:_:)();
      if ((result & 1) == 0)
      {
        goto LABEL_17;
      }

      v41 = *(v86 + 20);
      v42 = *(v65 + 48);
      v43 = v64;
      outlined init with copy of Date?(&v17[v41], v64, &_s9Coherence22UnknownValuePropertiesVSgMd);
      outlined init with copy of Date?(v39 + v41, v43 + v42, &_s9Coherence22UnknownValuePropertiesVSgMd);
      v44 = *v62;
      v45 = v63;
      if ((*v62)(v43, 1, v63) == 1)
      {
        break;
      }

      v46 = v61;
      outlined init with copy of Date?(v43, v61, &_s9Coherence22UnknownValuePropertiesVSgMd);
      if (v44(v43 + v42, 1, v45) == 1)
      {
        (*v60)(v46, v45);
LABEL_16:
        result = outlined destroy of StocksKitCurrencyCache.Provider?(v43, &_s9Coherence22UnknownValuePropertiesVSg_ADtMd);
        goto LABEL_17;
      }

      v53 = v58;
      (*v57)(v58, v43 + v42, v45);
      _sSo10CGColorRefaAB14CoreFoundation9_CFObjectSCWlTm_0(&lazy protocol witness table cache variable for type UnknownValueProperties and conformance UnknownValueProperties, MEMORY[0x1E6995350]);
      v59 = dispatch thunk of static Equatable.== infix(_:_:)();
      v54 = *v60;
      (*v60)(v53, v45);
      v54(v46, v45);
      result = outlined destroy of StocksKitCurrencyCache.Provider?(v43, &_s9Coherence22UnknownValuePropertiesVSgMd);
      if (v59)
      {
        goto LABEL_27;
      }

LABEL_17:
      if (__OFADD__(v38, v37))
      {
        goto LABEL_31;
      }

      if (v38 + v37 < v38)
      {
        goto LABEL_32;
      }

      v47 = v75;
      _s8PaperKit5ColorVWOcTm_0(v40, v75, type metadata accessor for Color);
      (*v67)(v47, 0, 1, v86);
LABEL_20:

      v48 = CRAttributedString.subscript.modify();
      lazy protocol witness table accessor for type TextAttributeScope.ColorAttribute and conformance TextAttributeScope.ColorAttribute();
      CRAttributedString.Substring.subscript.setter();
      v48(v87, 0);
      outlined destroy of Shape(v40, type metadata accessor for Color);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = v40;
      v18 = v69;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 2) + 1, 1, v31);
      }

      v51 = *(v31 + 2);
      v50 = *(v31 + 3);
      v34 = v81;
      if (v51 >= v50 >> 1)
      {
        v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v31);
        v34 = v81;
      }

      (*v66)(v34, v18);
      *(v31 + 2) = v51 + 1;
      v52 = &v31[16 * v51];
      *(v52 + 4) = v38;
      *(v52 + 5) = v37;
      v30 = v83;
      CRAttributedString.Runs.next()();
      if (v72(v30, 1, v18) == 1)
      {
        goto LABEL_5;
      }
    }

    if (v44(v43 + v42, 1, v45) == 1)
    {
      result = outlined destroy of StocksKitCurrencyCache.Provider?(v43, &_s9Coherence22UnknownValuePropertiesVSgMd);
LABEL_27:
      if (__OFADD__(v38, v37))
      {
        goto LABEL_33;
      }

      if (v38 + v37 < v38)
      {
        goto LABEL_34;
      }

      (*v67)(v75, 1, 1, v86);
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  v31 = MEMORY[0x1E69E7CC0];
LABEL_5:
  (*(v56 + 8))(v84, v85);
  return v31;
}

uint64_t CanvasFormattingProxy.supportsFillColor.getter(uint64_t a1)
{
  v24 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - v4;
  v6 = v1[1];
  if (!*(v6 + 16) || (specialized Set.contains(_:)(4, *(*v1 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_supportedFeatureSet + 8)) & 1) == 0)
  {
    return 0;
  }

  v22 = v1;
  v23 = v2;
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 56);
  v10 = (v7 + 63) >> 6;
  v20 = v3 + 16;
  v21 = (v3 + 8);

  v11 = 0;
  while (v9)
  {
LABEL_11:
    v13 = *(v6 + 48) + *(v3 + 72) * (__clz(__rbit64(v9)) | (v11 << 6));
    v14 = v3;
    v15 = *(v3 + 16);
    v16 = v23;
    v15(v5, v13, v23);
    v17 = closure #1 in CanvasFormattingProxy.supportsFillColor.getter(v5, v22, *(v24 + 16), *(v24 + 24));
    v9 &= v9 - 1;
    (*v21)(v5, v16);
    v3 = v14;
    if (!v17)
    {
      v18 = 0;
LABEL_15:

      return v18;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      v18 = 1;
      goto LABEL_15;
    }

    v9 = *(v6 + 56 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_11;
    }
  }

  __break(1u);

  result = (*v21)(v5, v3);
  __break(1u);
  return result;
}

BOOL closure #1 in CanvasFormattingProxy.supportsFillColor.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a2;
  v31 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v31);
  v32 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v30 = &v29 - v8;
  v36 = a3;
  v37 = a4;
  v9 = type metadata accessor for Capsule();
  v33 = *(v9 - 8);
  v34 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v29 - v16;
  v18 = type metadata accessor for Shape(0);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  WeakTagged_10.tagged6.getter();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd);
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v14, 1, v22) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v14, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
    (*(v19 + 56))(v17, 1, 1, v18);
LABEL_4:
    outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s8PaperKit5ShapeVSgMd);
    return 0;
  }

  Canvas.updatablePaper2.getter(v11);
  WeakRef.subscript.getter();
  (*(v33 + 8))(v11, v34);
  (*(v23 + 8))(v14, v22);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    goto LABEL_4;
  }

  _s8PaperKit5ShapeVWObTm_3(v17, v21, type metadata accessor for Shape);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
  v25 = v30;
  CRRegister.wrappedValue.getter();
  v26 = v25;
  v27 = v32;
  _s8PaperKit5ShapeVWObTm_3(v26, v32, type metadata accessor for ShapeType);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    outlined destroy of Shape(v21, type metadata accessor for Shape);
    return 0;
  }

  outlined destroy of Shape(v27, type metadata accessor for ShapeType);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
  CRRegister.wrappedValue.getter();
  v28 = v38;
  outlined destroy of Shape(v21, type metadata accessor for Shape);
  return v28 == 0;
}

uint64_t CanvasFormattingProxy.supportsStrokeColor.getter(uint64_t a1)
{
  v20 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - v4;
  v6 = v1[1];
  v7 = *(v1[2] + 16);
  if (!*(v6 + 16))
  {
    return v7 != 0;
  }

  if (v7)
  {
    return 1;
  }

  v18 = specialized Set.contains(_:)(5, *(*v1 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_supportedFeatureSet + 8));
  v8 = 1 << *(v6 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v6 + 56);
  v11 = (v8 + 63) >> 6;
  v19 = v3;
  v16 = v3 + 16;
  v17 = (v3 + 8);

  v12 = 0;
  while (v10)
  {
LABEL_11:
    (*(v19 + 16))(v5, *(v6 + 48) + *(v19 + 72) * (__clz(__rbit64(v10)) | (v12 << 6)), v2);
    v14 = closure #1 in CanvasFormattingProxy.supportsStrokeColor.getter(v5, v18 & 1, v1, *(v20 + 16), *(v20 + 24));
    v10 &= v10 - 1;
    (*v17)(v5, v2);
    if (!v14)
    {

      return 0;
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v11)
    {

      return 1;
    }

    v10 = *(v6 + 56 + 8 * v13);
    ++v12;
    if (v10)
    {
      v12 = v13;
      goto LABEL_11;
    }
  }

  __break(1u);

  result = (*v17)(v5, v2);
  __break(1u);
  return result;
}

BOOL closure #1 in CanvasFormattingProxy.supportsStrokeColor.getter(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a3;
  v42 = a2;
  v37 = a4;
  v38 = a5;
  v5 = type metadata accessor for Capsule();
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v33 = &v32 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v41 = &v32 - v11;
  v12 = type metadata accessor for Shape(0);
  v39 = *(v12 - 8);
  v40 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v32 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit12LoupeElementVGSgMd);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v32 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit9SignatureVGSgMd);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v32 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  WeakTagged_10.tagged7.getter();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit9SignatureVGMd);
  v21 = 1;
  v22 = (*(*(v20 - 8) + 48))(v19, 1, v20);
  outlined destroy of StocksKitCurrencyCache.Provider?(v19, &_s9Coherence7WeakRefVy8PaperKit9SignatureVGSgMd);
  if (v22 == 1)
  {
    WeakTagged_10.tagged10.getter();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit12LoupeElementVGMd);
    v24 = (*(*(v23 - 8) + 48))(v16, 1, v23);
    outlined destroy of StocksKitCurrencyCache.Provider?(v16, &_s9Coherence7WeakRefVy8PaperKit12LoupeElementVGSgMd);
    v21 = v24 != 1;
    if (v24 == 1 && (v42 & 1) != 0)
    {
      WeakTagged_10.tagged6.getter();
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd);
      v26 = *(v25 - 8);
      if ((*(v26 + 48))(v9, 1, v25) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
        v27 = v41;
        (*(v39 + 56))(v41, 1, 1, v40);
      }

      else
      {
        v28 = v33;
        Canvas.updatablePaper2.getter(v33);
        v27 = v41;
        WeakRef.subscript.getter();
        (*(v35 + 8))(v28, v36);
        (*(v26 + 8))(v9, v25);
        if ((*(v39 + 48))(v27, 1, v40) != 1)
        {
          v29 = v32;
          _s8PaperKit5ShapeVWObTm_3(v27, v32, type metadata accessor for Shape);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
          CRRegister.wrappedValue.getter();
          v30 = v43;
          outlined destroy of Shape(v29, type metadata accessor for Shape);
          return v30 == 0;
        }
      }

      outlined destroy of StocksKitCurrencyCache.Provider?(v27, &_s8PaperKit5ShapeVSgMd);
      return 0;
    }
  }

  return v21;
}

BOOL closure #1 in CanvasFormattingProxy.supportsFontColor.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[2] = a4;
  v21[1] = a2;
  v4 = type metadata accessor for Capsule();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v21 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  WeakTagged_10.tagged6.getter();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd);
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v10, 1, v14) == 1)
  {
    v16 = &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd;
    v17 = v10;
LABEL_5:
    outlined destroy of StocksKitCurrencyCache.Provider?(v17, v16);
    return 0;
  }

  Canvas.updatablePaper2.getter(v7);
  WeakRef.subscript.getter();
  (*(v5 + 8))(v7, v4);
  (*(v15 + 8))(v10, v14);
  v18 = type metadata accessor for Shape(0);
  if ((*(*(v18 - 8) + 48))(v13, 1, v18) == 1)
  {
    v16 = &_s8PaperKit5ShapeVSgMd;
    v17 = v13;
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
  CRRegister.wrappedValue.getter();
  v20 = v21[5] != 0;
  outlined destroy of Shape(v13, type metadata accessor for Shape);
  return v20;
}

uint64_t closure #1 in CanvasFormattingProxy.supportsTextStyle.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a2;
  v30 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v30);
  v29 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v28 = &v28 - v8;
  v34 = a3;
  v35 = a4;
  v9 = type metadata accessor for Capsule();
  v31 = *(v9 - 8);
  v32 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v28 - v16;
  v18 = type metadata accessor for Shape(0);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  WeakTagged_10.tagged6.getter();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd);
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v14, 1, v22) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v14, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
    (*(v19 + 56))(v17, 1, 1, v18);
LABEL_4:
    outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s8PaperKit5ShapeVSgMd);
    return 0;
  }

  Canvas.updatablePaper2.getter(v11);
  WeakRef.subscript.getter();
  (*(v31 + 8))(v11, v32);
  (*(v23 + 8))(v14, v22);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    goto LABEL_4;
  }

  _s8PaperKit5ShapeVWObTm_3(v17, v21, type metadata accessor for Shape);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
  v25 = v28;
  CRRegister.wrappedValue.getter();
  outlined destroy of Shape(v21, type metadata accessor for Shape);
  v26 = v25;
  v27 = v29;
  _s8PaperKit5ShapeVWObTm_3(v26, v29, type metadata accessor for ShapeType);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    return 0;
  }

  outlined destroy of Shape(v27, type metadata accessor for ShapeType);
  return 1;
}

BOOL closure #1 in CanvasFormattingProxy.supportsOpacity.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v25 - v7;
  v30 = a3;
  v31 = a4;
  v9 = type metadata accessor for Capsule();
  v27 = *(v9 - 8);
  v28 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - v10;
  v12 = type metadata accessor for Shape(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v26 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v25 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v25 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  WeakTagged_10.tagged6.getter();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
    return 0;
  }

  else
  {
    (*(v19 + 32))(v21, v17, v18);
    Canvas.updatablePaper2.getter(v11);
    WeakRef.subscript.getter();
    (*(v27 + 8))(v11, v28);
    if ((*(v13 + 48))(v8, 1, v12) == 1)
    {
      (*(v19 + 8))(v21, v18);
      outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_s8PaperKit5ShapeVSgMd);
      return 1;
    }

    else
    {
      v23 = v8;
      v24 = v26;
      _s8PaperKit5ShapeVWObTm_3(v23, v26, type metadata accessor for Shape);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
      CRRegister.wrappedValue.getter();
      outlined destroy of Shape(v24, type metadata accessor for Shape);
      (*(v19 + 8))(v21, v18);
      return v32 == 0;
    }
  }
}

uint64_t CanvasFormattingProxy.supportsFontColor.getter(void *a1, uint64_t (*a2)(char *, uint64_t, void, void, void))
{
  v28 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v23 - v7;
  v27 = v2;
  v9 = *(v2 + 8);
  if (*(v9 + 16))
  {
    v25 = v6;
    v26 = v5;
    v10 = v9 + 56;
    v11 = 1 << *(v9 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v9 + 56);
    v14 = (v11 + 63) >> 6;
    v23[1] = v6 + 16;
    v24 = (v6 + 8);

    v15 = 0;
    while (v13)
    {
LABEL_10:
      v17 = v9;
      v18 = *(v9 + 48);
      v19 = v26;
      (*(v25 + 16))(v8, v18 + *(v25 + 72) * (__clz(__rbit64(v13)) | (v15 << 6)), v26);
      v20 = v28(v8, v27, a1[2], a1[3], a1[4]);
      v13 &= v13 - 1;
      (*v24)(v8, v19);
      v9 = v17;
      if ((v20 & 1) == 0)
      {
        v21 = 0;
LABEL_13:

        return v21;
      }
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
        v21 = 1;
        goto LABEL_13;
      }

      v13 = *(v10 + 8 * v16);
      ++v15;
      if (v13)
      {
        v15 = v16;
        goto LABEL_10;
      }
    }

    __break(1u);

    result = (*v24)(v8, v9);
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t closure #1 in CanvasFormattingProxy.supportsLineEnds.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a2;
  v30 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v30);
  v29 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v28 = &v28 - v8;
  v34 = a3;
  v35 = a4;
  v9 = type metadata accessor for Capsule();
  v31 = *(v9 - 8);
  v32 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v28 - v16;
  v18 = type metadata accessor for Shape(0);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  WeakTagged_10.tagged6.getter();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd);
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v14, 1, v22) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v14, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
    (*(v19 + 56))(v17, 1, 1, v18);
LABEL_4:
    outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s8PaperKit5ShapeVSgMd);
    return 0;
  }

  Canvas.updatablePaper2.getter(v11);
  WeakRef.subscript.getter();
  (*(v31 + 8))(v11, v32);
  (*(v23 + 8))(v14, v22);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    goto LABEL_4;
  }

  _s8PaperKit5ShapeVWObTm_3(v17, v21, type metadata accessor for Shape);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
  v25 = v28;
  CRRegister.wrappedValue.getter();
  outlined destroy of Shape(v21, type metadata accessor for Shape);
  v26 = v25;
  v27 = v29;
  _s8PaperKit5ShapeVWObTm_3(v26, v29, type metadata accessor for ShapeType);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    outlined destroy of Shape(v27, type metadata accessor for ShapeType);
    return 0;
  }

  return 1;
}

uint64_t CanvasFormattingProxy.supportsImages.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v14 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ImageVGSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(v0 + 8);
  if (*(v7 + 16) == 1)
  {
    specialized Collection.first.getter(v7, v3);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v3, 1, v8) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v3, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ImageVGMd);
      (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
    }

    else
    {
      WeakTagged_10.tagged2.getter();
      (*(v9 + 8))(v3, v8);
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ImageVGMd);
      v11 = 1;
      if ((*(*(v12 - 8) + 48))(v6, 1, v12) != 1)
      {
LABEL_7:
        outlined destroy of StocksKitCurrencyCache.Provider?(v6, &_s9Coherence7WeakRefVy8PaperKit5ImageVGSgMd);
        return v11;
      }
    }

    v11 = 0;
    goto LABEL_7;
  }

  return 0;
}

uint64_t CanvasFormattingProxy.supportsImageRegeneration.getter(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = type metadata accessor for Capsule();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ImageVGSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ImageVSgMd);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v28 - v16;
  if (!CanvasFormattingProxy.supportsImageGeneration.getter(a1))
  {
    return 0;
  }

  v28[0] = v6;
  v28[1] = v4;
  specialized Collection.first.getter(*(v2 + 8), v11);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v11, 1, v18) == 1)
  {
    v20 = &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMd;
    v21 = v11;
LABEL_8:
    outlined destroy of StocksKitCurrencyCache.Provider?(v21, v20);
    return 0;
  }

  WeakTagged_10.tagged2.getter();
  (*(v19 + 8))(v11, v18);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ImageVGMd);
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v14, 1, v22) == 1)
  {
    v20 = &_s9Coherence7WeakRefVy8PaperKit5ImageVGSgMd;
    v21 = v14;
    goto LABEL_8;
  }

  Canvas.updatablePaper2.getter(v8);
  WeakRef.subscript.getter();
  (*(v28[0] + 8))(v8, v5);
  (*(v23 + 8))(v14, v22);
  v24 = type metadata accessor for Image(0);
  if ((*(*(v24 - 8) + 48))(v17, 1, v24) == 1)
  {
    v20 = &_s8PaperKit5ImageVSgMd;
    v21 = v17;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd);
  CRRegister.wrappedValue.getter();
  v26 = v28[2];
  v27 = v28[3];
  outlined destroy of Shape(v17, type metadata accessor for Image);
  if (v27 >> 60 != 15)
  {
    outlined consume of Data?(v26, v27);
    return 1;
  }

  return 0;
}

BOOL CanvasFormattingProxy.supportsImageGeneration.getter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ImageVGSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  if ((CanvasFormattingProxy.supportsMagicGenerativePlaygroundForSelection.getter(a1) & 1) == 0)
  {
    return 0;
  }

  CanvasMembers.singleImageSelected()(*(v1 + 8), *(v1 + 16), v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ImageVGMd);
  v7 = (*(*(v6 - 8) + 48))(v5, 1, v6) != 1;
  outlined destroy of StocksKitCurrencyCache.Provider?(v5, &_s9Coherence7WeakRefVy8PaperKit5ImageVGSgMd);
  return v7;
}

uint64_t CanvasFormattingProxy.supportsMagicGenerativePlaygroundForSelection.getter(uint64_t a1)
{
  v2 = v1;
  v29 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v30 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v26 - v5;
  v7 = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x468))(v4);
  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = v7;
  type metadata accessor for TiledTextView();
  if (!swift_dynamicCastClass())
  {

LABEL_5:
    v12 = 1;
    goto LABEL_6;
  }

  v9 = TiledTextView.canvasGenerationToolOverlayController.getter();
  v10 = CanvasGenerationToolOverlayController.imageGenerationController.getter();
  v11 = [v10 shouldShowImageGenerationUI];

  v12 = v11 ^ 1;
LABEL_6:
  v13 = MGCopyAnswer();
  v14 = [v13 BOOLValue];

  v15 = 0;
  if (v14 & 1) != 0 || (v12)
  {
    return v15;
  }

  v16 = *(v2 + 8);
  if (!*(v16 + 16) && !*(*(v2 + 16) + 16) && (*(v2 + 32) & 1) == 0)
  {
    return 0;
  }

  v27 = v2;
  v28 = v3;
  v17 = 1 << *(v16 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v16 + 56);
  v20 = (v17 + 63) >> 6;
  v26 = v30 + 16;
  v21 = (v30 + 8);

  v22 = 0;
  while (v19)
  {
LABEL_19:
    v2 = v28;
    (*(v30 + 16))(v6, *(v16 + 48) + *(v30 + 72) * (__clz(__rbit64(v19)) | (v22 << 6)), v28);
    v24 = closure #1 in implicit closure #3 in CanvasFormattingProxy.supportsMagicGenerativePlaygroundForSelection.getter(v6, v27, *(v29 + 16), *(v29 + 24));
    v19 &= v19 - 1;
    (*v21)(v6, v2);
    if ((v24 & 1) == 0)
    {
      v15 = 0;
LABEL_22:

      return v15;
    }
  }

  while (1)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v23 >= v20)
    {
      v15 = 1;
      goto LABEL_22;
    }

    v19 = *(v16 + 56 + 8 * v23);
    ++v22;
    if (v19)
    {
      v22 = v23;
      goto LABEL_19;
    }
  }

  __break(1u);

  result = (*v21)(v6, v2);
  __break(1u);
  return result;
}

uint64_t closure #1 in implicit closure #3 in CanvasFormattingProxy.supportsMagicGenerativePlaygroundForSelection.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v45 = &v43 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v44 = &v43 - v9;
  v49 = a3;
  v50 = a4;
  v47 = type metadata accessor for Capsule();
  v46 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v43 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v43 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit7TextBoxVGSgMd);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v43 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit7TextBoxVSgMd);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v43 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit12GraphElementVGSgMd);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v43 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  WeakTagged_10.tagged3.getter();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit12GraphElementVGMd);
  LODWORD(a3) = (*(*(v23 - 8) + 48))(v22, 1, v23);
  outlined destroy of StocksKitCurrencyCache.Provider?(v22, &_s9Coherence7WeakRefVy8PaperKit12GraphElementVGSgMd);
  if (a3 != 1)
  {
    v28 = 0;
    return v28 & 1;
  }

  WeakTagged_10.tagged4.getter();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit7TextBoxVGMd);
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v16, 1, v24) == 1)
  {
    v26 = &_s9Coherence7WeakRefVy8PaperKit7TextBoxVGSgMd;
    v27 = v16;
  }

  else
  {
    Canvas.updatablePaper2.getter(v13);
    WeakRef.subscript.getter();
    (*(v46 + 8))(v13, v47);
    (*(v25 + 8))(v16, v24);
    v29 = type metadata accessor for TextBox(0);
    if ((*(*(v29 - 8) + 48))(v19, 1, v29) != 1)
    {
      *(&v52 + 1) = v29;
      v53 = &protocol witness table for TextBox;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v51);
      _s8PaperKit5ShapeVWObTm_3(v19, boxed_opaque_existential_1, type metadata accessor for TextBox);
      outlined init with take of PaperKitHashable(&v51, &v54);
      goto LABEL_16;
    }

    v26 = &_s8PaperKit7TextBoxVSgMd;
    v27 = v19;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v27, v26);
  v53 = 0;
  v51 = 0u;
  v52 = 0u;
  v30 = v45;
  WeakTagged_10.tagged6.getter();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd);
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v30, 1, v31) == 1)
  {
    v33 = &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd;
    v34 = v30;
  }

  else
  {
    v35 = v43;
    Canvas.updatablePaper2.getter(v43);
    v36 = v44;
    WeakRef.subscript.getter();
    (*(v46 + 8))(v35, v47);
    (*(v32 + 8))(v30, v31);
    v37 = type metadata accessor for Shape(0);
    if ((*(*(v37 - 8) + 48))(v36, 1, v37) != 1)
    {
      *(&v55 + 1) = v37;
      v56 = &protocol witness table for Shape;
      v39 = __swift_allocate_boxed_opaque_existential_1(&v54);
      _s8PaperKit5ShapeVWObTm_3(v36, v39, type metadata accessor for Shape);
      if (!*(&v52 + 1))
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    v33 = &_s8PaperKit5ShapeVSgMd;
    v34 = v36;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v34, v33);
  v56 = 0;
  v54 = 0u;
  v55 = 0u;
  if (*(&v52 + 1))
  {
LABEL_15:
    outlined destroy of StocksKitCurrencyCache.Provider?(&v51, &_s8PaperKit12ShapeTextBox_pSgMd);
  }

LABEL_16:
  if (*(&v55 + 1))
  {
    outlined init with take of PaperKitHashable(&v54, v57);
    v40 = v58;
    v41 = v59;
    __swift_project_boxed_opaque_existential_1(v57, v58);
    v28 = (*(v41 + 72))(v40, v41) ^ 1;
    __swift_destroy_boxed_opaque_existential_0(v57);
  }

  else
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(&v54, &_s8PaperKit12ShapeTextBox_pSgMd);
    v28 = 1;
  }

  return v28 & 1;
}

uint64_t CanvasFormattingProxy.fillColor.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v64 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v64);
  v63 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v62 = &v56 - v6;
  v7 = *(a1 + 16);
  v75 = *(a1 + 24);
  v76 = v7;
  v74 = type metadata accessor for Capsule();
  v8 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v58 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v71 = &v56 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v59 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v84 = &v56 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v56 - v17;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd);
  v19 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v21 = &v56 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v80 = &v56 - v27;
  v72 = v2;
  v28 = v2[1];
  v29 = v18;
  v30 = v28 + 56;
  v31 = 1 << *(v28 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(v28 + 56);
  v34 = (v31 + 63) >> 6;
  v78 = v26 + 32;
  v79 = v26 + 16;
  v77 = (v19 + 48);
  v73 = (v8 + 8);
  v66 = (v19 + 32);
  v67 = (v19 + 8);
  v35 = v21;
  v81 = v26;
  v82 = (v26 + 8);
  v83 = v28;

  v36 = 0;
  v69 = v22;
  v70 = v21;
  v68 = v24;
  if (!v33)
  {
LABEL_6:
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v34)
      {

        goto LABEL_20;
      }

      v33 = *(v30 + 8 * v37);
      ++v36;
      if (v33)
      {
        v36 = v37;
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  while (1)
  {
LABEL_10:
    while (1)
    {
      v38 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
      v40 = v80;
      v39 = v81;
      (*(v81 + 16))(v80, *(v83 + 48) + *(v81 + 72) * (v38 | (v36 << 6)), v22);
      (*(v39 + 32))(v24, v40, v22);
      v41 = v29;
      WeakTagged_10.tagged6.getter();
      if ((*v77)(v29, 1, v85) != 1)
      {
        break;
      }

      (*v82)(v24, v22);
      outlined destroy of StocksKitCurrencyCache.Provider?(v29, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
      if (!v33)
      {
        goto LABEL_6;
      }
    }

    (*v66)(v35, v29, v85);
    v42 = v84;
    v43 = v71;
    v65 = *v72;
    Canvas.updatablePaper2.getter(v71);
    WeakRef.subscript.getter();
    v44 = *v73;
    (*v73)(v43, v74);
    v45 = type metadata accessor for Shape(0);
    v46 = *(v45 - 8);
    v47 = *(v46 + 48);
    v48 = v46 + 48;
    if (v47(v42, 1, v45) != 1)
    {
      break;
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v84, &_s8PaperKit5ShapeVSgMd);
LABEL_15:
    v24 = v68;
    v22 = v69;
LABEL_17:
    v35 = v70;
    (*v67)(v70, v85);
    (*v82)(v24, v22);
    v29 = v41;
    if (!v33)
    {
      goto LABEL_6;
    }
  }

  v60 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
  v49 = v62;
  CRRegister.wrappedValue.getter();
  v50 = v63;
  _s8PaperKit5ShapeVWObTm_3(v49, v63, type metadata accessor for ShapeType);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    outlined destroy of Shape(v84, type metadata accessor for Shape);
    goto LABEL_15;
  }

  v57 = v47;
  outlined destroy of Shape(v50, type metadata accessor for ShapeType);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
  v51 = v84;
  CRRegister.wrappedValue.getter();
  v52 = v86;
  outlined destroy of Shape(v51, type metadata accessor for Shape);
  v24 = v68;
  v22 = v69;
  if (v52)
  {
    goto LABEL_17;
  }

  v55 = v58;
  Canvas.updatablePaper2.getter(v58);
  v34 = v59;
  v33 = v70;
  WeakRef.subscript.getter();
  v44(v55, v74);
  if (v57(v34, 1, v45) != 1)
  {
LABEL_24:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
    CRRegister.wrappedValue.getter();

    (*v67)(v33, v85);
    (*v82)(v24, v22);
    return outlined destroy of Shape(v34, type metadata accessor for Shape);
  }

  (*v67)(v33, v85);
  (*v82)(v24, v22);
  outlined destroy of StocksKitCurrencyCache.Provider?(v34, &_s8PaperKit5ShapeVSgMd);
LABEL_20:
  v53 = type metadata accessor for Color(0);
  return (*(*(v53 - 8) + 56))(v61, 1, 1, v53);
}

uint64_t closure #1 in closure #1 in CanvasFormattingProxy.fillColor.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v51 = a3;
  v64 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v52 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v50 = &v47 - v7;
  v56 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v56);
  v55 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v54 = &v47 - v10;
  v65 = type metadata accessor for Shape(0);
  v11 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v57 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v61 = &v47 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v47 - v16;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd);
  v18 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v71 = &v47 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v70 = &v47 - v25;
  v26 = *(a2 + 8);
  v27 = v26 + 56;
  v28 = 1 << *(v26 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v26 + 56);
  v31 = (v28 + 63) >> 6;
  v68 = v21 + 32;
  v69 = v21 + 16;
  v63 = (v11 + 48);
  v58 = (v18 + 8);
  v59 = (v18 + 32);
  v66 = (v21 + 8);
  v67 = (v18 + 48);
  v72 = v26;

  v33 = 0;
  v62 = v17;
  for (i = v23; v30; result = (*v66)(v23, v20))
  {
LABEL_10:
    while (1)
    {
      v35 = __clz(__rbit64(v30));
      v30 &= v30 - 1;
      v36 = v70;
      (*(v21 + 16))(v70, *(v72 + 48) + *(v21 + 72) * (v35 | (v33 << 6)), v20);
      (*(v21 + 32))(v23, v36, v20);
      WeakTagged_10.tagged6.getter();
      v37 = v74;
      if ((*v67)(v17, 1, v74) != 1)
      {
        break;
      }

      (*v66)(v23, v20);
      result = outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
      if (!v30)
      {
        goto LABEL_6;
      }
    }

    (*v59)(v71, v17, v37);
    v38 = v61;
    WeakRef.subscript.getter();
    v39 = *v63;
    if ((*v63)(v38, 1, v65))
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v38, &_s8PaperKit5ShapeVSgMd);
      v17 = v62;
      v23 = i;
    }

    else
    {
      v53 = v21;
      _s8PaperKit5ColorVWOcTm_0(v38, v57, type metadata accessor for Shape);
      outlined destroy of StocksKitCurrencyCache.Provider?(v38, &_s8PaperKit5ShapeVSgMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
      v40 = v54;
      CRRegister.wrappedValue.getter();
      v41 = v55;
      _s8PaperKit5ShapeVWObTm_3(v40, v55, type metadata accessor for ShapeType);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        outlined destroy of Shape(v57, type metadata accessor for Shape);
        v17 = v62;
        v23 = i;
        v21 = v53;
      }

      else
      {
        v49 = v39;
        outlined destroy of Shape(v41, type metadata accessor for ShapeType);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
        v42 = v57;
        CRRegister.wrappedValue.getter();
        v43 = v73[0];
        outlined destroy of Shape(v42, type metadata accessor for Shape);
        v17 = v62;
        v23 = i;
        v21 = v53;
        if (!v43)
        {
          v48 = WeakRef.subscript.modify();
          if (!v49(v44, 1, v65))
          {
            v45 = v50;
            outlined init with copy of Date?(v51, v50, &_s8PaperKit5ColorVSgMd);
            outlined init with copy of Date?(v45, v52, &_s8PaperKit5ColorVSgMd);
            v49 = *(v65 + 24);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
            CRRegister.wrappedValue.setter();
            v46 = v45;
            v17 = v62;
            outlined destroy of StocksKitCurrencyCache.Provider?(v46, &_s8PaperKit5ColorVSgMd);
          }

          v48(v73, 0);
        }
      }
    }

    (*v58)(v71, v74);
  }

LABEL_6:
  while (1)
  {
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v34 >= v31)
    {
    }

    v30 = *(v27 + 8 * v34);
    ++v33;
    if (v30)
    {
      v33 = v34;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t CanvasFormattingProxy.strokeColor.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v179 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v178 = &v159 - v6;
  v177 = type metadata accessor for PKStrokeInheritedProperties(0);
  MEMORY[0x1EEE9AC00](v177);
  v184 = &v159 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v176 = &v159 - v9;
  v10 = type metadata accessor for PKStrokeStruct(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v191 = &v159 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = type metadata accessor for TaggedStroke(0);
  MEMORY[0x1EEE9AC00](v183);
  v190 = &v159 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v182 = &v159 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGSgMd);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v212 = &v159 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v181 = &v159 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd);
  v172 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v175 = &v159 - v20;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v209 = *(v196 - 8);
  MEMORY[0x1EEE9AC00](v196);
  v195 = &v159 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit12LoupeElementVSgMd);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v166 = &v159 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit12LoupeElementVGSgMd);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v200 = &v159 - v25;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit12LoupeElementVGMd);
  v26 = *(v197 - 8);
  MEMORY[0x1EEE9AC00](v197);
  v164 = &v159 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9SignatureVSgMd);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v170 = &v159 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit9SignatureVGSgMd);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v199 = &v159 - v31;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit9SignatureVGMd);
  v32 = *(v207 - 1);
  MEMORY[0x1EEE9AC00](v207);
  v168 = &v159 - v33;
  v34 = *(a1 + 24);
  v216 = *(a1 + 16);
  v217 = v34;
  v215 = type metadata accessor for Capsule();
  v35 = *(v215 - 8);
  MEMORY[0x1EEE9AC00](v215);
  v174 = &v159 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v220 = &v159 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v173 = &v159 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v194 = &v159 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v163 = &v159 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v167 = &v159 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v161 = &v159 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v189 = &v159 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd);
  MEMORY[0x1EEE9AC00](v51 - 8);
  v162 = &v159 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v188 = &v159 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
  MEMORY[0x1EEE9AC00](v55 - 8);
  v57 = &v159 - v56;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd);
  v59 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v205 = &v159 - v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  MEMORY[0x1EEE9AC00](v61);
  v219 = &v159 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v63);
  v204 = &v159 - v66;
  v68 = v3[1];
  v67 = v3[2];
  v214 = v3;
  v211 = v67;
  v69 = v68 + 56;
  v70 = 1 << *(v68 + 32);
  v71 = -1;
  if (v70 < 64)
  {
    v71 = ~(-1 << v70);
  }

  v72 = v71 & *(v68 + 56);
  v73 = (v70 + 63) >> 6;
  v202 = v65 + 32;
  v203 = v65 + 16;
  v201 = (v59 + 48);
  v186 = (v59 + 32);
  v74 = (v35 + 8);
  v75 = v57;
  v218 = v74;
  v187 = (v59 + 8);
  v76 = v64;
  v169 = v32;
  v198 = (v32 + 48);
  v165 = v26;
  v193 = (v26 + 48);
  v77 = v65;
  v206 = (v65 + 8);
  v210 = v68;

  v79 = 0;
  v213 = v58;
  v192 = v75;
  v208 = v76;
  v185 = v77;
  if (!v72)
  {
LABEL_5:
    v82 = v219;
    while (1)
    {
      v81 = v79 + 1;
      if (__OFADD__(v79, 1))
      {
        __break(1u);
        goto LABEL_57;
      }

      if (v81 >= v73)
      {
        break;
      }

      v72 = *(v69 + 8 * v81);
      ++v79;
      if (v72)
      {
        v80 = v75;
        goto LABEL_10;
      }
    }

    v98 = *(v211 + 56);
    v205 = (v211 + 56);
    v99 = 1 << *(v211 + 32);
    v100 = -1;
    if (v99 < 64)
    {
      v100 = ~(-1 << v99);
    }

    v101 = v100 & v98;
    v204 = ((v99 + 63) >> 6);
    v210 = v209 + 16;
    v208 = v209 + 8;
    v102 = (v172 + 48);
    v103 = (v172 + 8);
    v219 = (v172 + 32);

    v104 = 0;
    v180 = v19;
    v206 = v102;
    while (v101)
    {
LABEL_29:
      v106 = __clz(__rbit64(v101));
      v101 &= v101 - 1;
      v107 = v209;
      v108 = v195;
      v109 = v196;
      (*(v209 + 16))(v195, *(v211 + 48) + *(v209 + 72) * (v106 | (v104 << 6)), v196);
      v110 = *v214;
      v111 = v194;
      Canvas.updatablePaper2.getter(v194);
      v112 = v212;
      WeakRef.subscript.getter();
      v113 = v112;
      (*(v107 + 8))(v108, v109);
      v114 = *v218;
      (*v218)(v111, v215);
      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
      v115 = *(v77 - 8);
      if ((*(v115 + 48))(v113, 1, v77) == 1)
      {
        v78 = outlined destroy of StocksKitCurrencyCache.Provider?(v113, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGSgMd);
      }

      else
      {
        v207 = v114;
        v213 = v110;
        v116 = v182;
        CRRegister.value.getter();
        v117 = v190;
        _s8PaperKit5ShapeVWObTm_3(v116, v190, type metadata accessor for TaggedStroke);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v119 = v180;
        v120 = v206;
        if (EnumCaseMultiPayload)
        {
          outlined destroy of Shape(v117, type metadata accessor for TaggedStroke);
          v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
          v122 = v181;
          (*(*(v121 - 8) + 56))(v181, 1, 1, v121);
        }

        else
        {
          v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
          v123 = *(v203 - 8);
          v124 = v181;
          (*(v123 + 32))(v181, v190, v203);
          (*(v123 + 56))(v124, 0, 1, v203);
          v122 = v124;
        }

        (*(v115 + 8))(v212, v77);
        v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
        v125 = *(v77 - 8);
        if ((*(v125 + 48))(v122, 1, v77) == 1)
        {
          v78 = outlined destroy of StocksKitCurrencyCache.Provider?(v122, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd);
        }

        else
        {
          v126 = v173;
          v127 = v122;
          Canvas.updatablePaper2.getter(v173);
          Ref.subscript.getter();
          v128 = v215;
          v207(v126, v215);
          (*(v125 + 8))(v127, v77);
          Canvas.updatablePaper2.getter(v220);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd);
          v129 = v175;
          CRRegister.wrappedValue.getter();
          v130 = v178;
          v131 = v176;
          while (1)
          {
            swift_getWitnessTable();
            Ref.subscript.getter();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd);
            CRRegister.wrappedValue.getter();
            outlined destroy of Shape(v131, type metadata accessor for PKStrokeInheritedProperties);
            if ((*v120)(v130, 1, v119) == 1)
            {
              break;
            }

            (*v103)(v129, v119);
            (*v219)(v129, v130, v119);
          }

          outlined destroy of StocksKitCurrencyCache.Provider?(v130, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd);
          outlined destroy of Shape(v191, type metadata accessor for PKStrokeStruct);
          v132 = v207;
          v207(v220, v128);
          v133 = v174;
          Canvas.updatablePaper2.getter(v174);
          Ref.subscript.getter();
          v132(v133, v128);
          (*v103)(v129, v119);
          v77 = *(v177 + 20);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd);
          v134 = v184;
          CRRegister.wrappedValue.getter();
          v78 = outlined destroy of Shape(v134, type metadata accessor for PKStrokeInheritedProperties);
          v135 = v221;
          if (v221)
          {
            v77 = [v221 color];

            if (v77)
            {
              v78 = [v77 CGColor];
              if (v78)
              {
                goto LABEL_58;
              }
            }
          }
        }
      }
    }

    while (1)
    {
      v105 = v104 + 1;
      if (__OFADD__(v104, 1))
      {
        break;
      }

      if (v105 >= v204)
      {

        goto LABEL_43;
      }

      v101 = *&v205[8 * v105];
      ++v104;
      if (v101)
      {
        v104 = v105;
        goto LABEL_29;
      }
    }

LABEL_57:
    __break(1u);
LABEL_58:
    v157 = v78;
    v158 = v78;
    Color.init(cgColor:)(v157, v179);
  }

  while (1)
  {
    v80 = v75;
    v81 = v79;
    v82 = v219;
LABEL_10:
    v83 = v204;
    (*(v77 + 16))(v204, *(v210 + 48) + *(v77 + 72) * (__clz(__rbit64(v72)) | (v81 << 6)), v76);
    (*(v77 + 32))(v82, v83, v76);
    WeakTagged_10.tagged6.getter();
    v84 = v77;
    v85 = v213;
    if ((*v201)(v80, 1, v213) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v80, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
      v86 = v200;
      v77 = v84;
      goto LABEL_16;
    }

    (*v186)(v205, v80, v85);
    v87 = v189;
    v171 = *v214;
    Canvas.updatablePaper2.getter(v189);
    v88 = v188;
    WeakRef.subscript.getter();
    v89 = v88;
    v90 = *v218;
    (*v218)(v87, v215);
    v91 = type metadata accessor for Shape(0);
    v92 = *(*(v91 - 8) + 48);
    if (v92(v89, 1, v91) != 1)
    {
      break;
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v89, &_s8PaperKit5ShapeVSgMd);
LABEL_15:
    (*v187)(v205, v213);
    v86 = v200;
    v77 = v185;
LABEL_16:
    v95 = v199;
    v96 = v208;
    v97 = v219;
    WeakTagged_10.tagged7.getter();
    if ((*v198)(v95, 1, v207) != 1)
    {
      v138 = v169;
      v139 = v168;
      v140 = v207;
      (*(v169 + 32))(v168, v95, v207);
      v141 = v167;
      Canvas.updatablePaper2.getter(v167);
      v142 = v170;
      WeakRef.subscript.getter();
      (*v218)(v141, v215);
      v143 = type metadata accessor for Signature(0);
      if ((*(*(v143 - 8) + 48))(v142, 1, v143) == 1)
      {

        (*(v138 + 8))(v139, v140);
        (*v206)(v219, v208);
        v144 = &_s8PaperKit9SignatureVSgMd;
        goto LABEL_48;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
      CRRegister.wrappedValue.getter();

      (*(v138 + 8))(v139, v140);
      (*v206)(v219, v208);
      v151 = type metadata accessor for Signature;
      return outlined destroy of Shape(v142, v151);
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v95, &_s9Coherence7WeakRefVy8PaperKit9SignatureVGSgMd);
    WeakTagged_10.tagged10.getter();
    if ((*v193)(v86, 1, v197) != 1)
    {
      v145 = v165;
      v146 = v164;
      v147 = v197;
      (*(v165 + 32))(v164, v86, v197);
      v148 = v163;
      Canvas.updatablePaper2.getter(v163);
      v142 = v166;
      WeakRef.subscript.getter();
      (*v218)(v148, v215);
      v149 = type metadata accessor for LoupeElement(0);
      if ((*(*(v149 - 8) + 48))(v142, 1, v149) == 1)
      {

        (*(v145 + 8))(v146, v147);
        (*v206)(v219, v208);
        v144 = &_s8PaperKit12LoupeElementVSgMd;
LABEL_48:
        v150 = v142;
LABEL_49:
        outlined destroy of StocksKitCurrencyCache.Provider?(v150, v144);
LABEL_43:
        v136 = type metadata accessor for Color(0);
        return (*(*(v136 - 8) + 56))(v179, 1, 1, v136);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
      CRRegister.wrappedValue.getter();

      (*(v145 + 8))(v146, v147);
      (*v206)(v219, v208);
      v151 = type metadata accessor for LoupeElement;
      return outlined destroy of Shape(v142, v151);
    }

    v72 &= v72 - 1;
    (*v206)(v97, v96);
    v78 = outlined destroy of StocksKitCurrencyCache.Provider?(v86, &_s9Coherence7WeakRefVy8PaperKit12LoupeElementVGSgMd);
    v79 = v81;
    v76 = v96;
    v75 = v192;
    if (!v72)
    {
      goto LABEL_5;
    }
  }

  v160 = v92;
  v93 = v89;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
  CRRegister.wrappedValue.getter();
  v94 = v221;
  outlined destroy of Shape(v93, type metadata accessor for Shape);
  if (v94)
  {
    goto LABEL_15;
  }

  v152 = v90;
  v153 = v161;
  Canvas.updatablePaper2.getter(v161);
  v154 = v162;
  v155 = v213;
  v156 = v205;
  WeakRef.subscript.getter();
  v152(v153, v215);
  if (v160(v154, 1, v91) == 1)
  {

    (*v187)(v156, v155);
    (*v206)(v219, v208);
    v144 = &_s8PaperKit5ShapeVSgMd;
    v150 = v154;
    goto LABEL_49;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  CRRegister.wrappedValue.getter();

  (*v187)(v156, v155);
  (*v206)(v219, v208);
  return outlined destroy of Shape(v154, type metadata accessor for Shape);
}

uint64_t closure #1 in closure #1 in CanvasFormattingProxy.strokeColor.setter(void *a1, uint64_t a2, uint64_t a3)
{
  v194 = a3;
  v167 = type metadata accessor for PKStrokeInheritedProperties(0);
  MEMORY[0x1EEE9AC00](v167);
  v160 = &v152 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd);
  v164 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v155 = &v152 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v159 = &v152 - v8;
  v9 = type metadata accessor for PKStrokeStruct(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v154 = &v152 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v158 = &v152 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit5PKInkVSgMd);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v156 = &v152 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v157 = &v152 - v16;
  v165 = type metadata accessor for PKInk();
  v163 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v153 = &v152 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = type metadata accessor for TaggedStroke(0);
  MEMORY[0x1EEE9AC00](v172);
  v171 = &v152 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v170 = &v152 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  v162 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v169 = &v152 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGSgMd);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v190 = &v152 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v189 = &v152 - v26;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
  v161 = *(v198 - 8);
  MEMORY[0x1EEE9AC00](v198);
  v168 = &v152 - v27;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v197 = *(v188 - 8);
  MEMORY[0x1EEE9AC00](v188);
  v187 = &v152 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit12LoupeElementVGSgMd);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v186 = &v152 - v30;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit12LoupeElementVGMd);
  v31 = *(v200 - 8);
  MEMORY[0x1EEE9AC00](v200);
  v185 = &v152 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit9SignatureVGSgMd);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v204 = (&v152 - v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit9SignatureVGMd);
  v218 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v203 = &v152 - v36;
  v196 = type metadata accessor for Shape(0);
  v214 = *(v196 - 8);
  MEMORY[0x1EEE9AC00](v196);
  v173 = &v152 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v193 = &v152 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v181 = &v152 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v180 = &v152 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v178 = &v152 - v45;
  v177 = type metadata accessor for Color(0);
  v176 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177);
  v179 = (&v152 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
  MEMORY[0x1EEE9AC00](v47 - 8);
  v215 = &v152 - v48;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd);
  v49 = *(v217 - 1);
  MEMORY[0x1EEE9AC00](v217);
  v212 = &v152 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v152 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v210 = &v152 - v56;
  v57 = *(a2 + 8);
  v201 = *(a2 + 16);
  v58 = v57 + 56;
  v59 = 1 << *(v57 + 32);
  v60 = -1;
  if (v59 < 64)
  {
    v60 = ~(-1 << v59);
  }

  v61 = v60 & *(v57 + 56);
  v62 = (v59 + 63) >> 6;
  v208 = (v55 + 32);
  v209 = (v55 + 16);
  v207 = (v49 + 48);
  v192 = (v49 + 32);
  v195 = (v214 + 48);
  v191 = (v49 + 8);
  v211 = v55;
  v205 = (v55 + 8);
  v202 = (v218 + 48);
  v184 = (v218 + 32);
  v183 = (v218 + 8);
  v182 = (v31 + 48);
  v175 = (v31 + 32);
  v174 = (v31 + 8);
  v214 = v57;

  v64 = 0;
  v213 = a1;
  v199 = v21;
  v65 = v51;
  v218 = v53;
  v219 = v51;
  v206 = v62;
  v216 = v35;
  while (v61)
  {
    v66 = v215;
LABEL_11:
    v68 = __clz(__rbit64(v61));
    v61 &= v61 - 1;
    v70 = v210;
    v69 = v211;
    (*(v211 + 16))(v210, *(v214 + 48) + *(v211 + 72) * (v68 | (v64 << 6)), v65);
    (*(v69 + 32))(v53, v70, v65);
    WeakTagged_10.tagged6.getter();
    v71 = v217;
    if ((*v207)(v66, 1, v217) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v66, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
      goto LABEL_17;
    }

    (*v192)(v212, v66, v71);
    v72 = v193;
    WeakRef.subscript.getter();
    v73 = *v195;
    if ((*v195)(v72, 1, v196))
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v72, &_s8PaperKit5ShapeVSgMd);
LABEL_16:
      (*v191)(v212, v217);
LABEL_17:
      v77 = v204;
      v53 = v218;
      v78 = v219;
      WeakTagged_10.tagged7.getter();
      v79 = v77;
      v80 = v216;
      if ((*v202)(v77, 1, v216) != 1)
      {
        (*v184)(v203, v77, v80);
        v86 = WeakRef.subscript.modify();
        v88 = v87;
        v89 = type metadata accessor for Signature(0);
        if (!(*(*(v89 - 8) + 48))(v88, 1, v89))
        {
          v90 = v180;
          outlined init with copy of Date?(v194, v180, &_s8PaperKit5ColorVSgMd);
          outlined init with copy of Date?(v90, v181, &_s8PaperKit5ColorVSgMd);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
          CRRegister.wrappedValue.setter();
          outlined destroy of StocksKitCurrencyCache.Provider?(v90, &_s8PaperKit5ColorVSgMd);
        }

        v86(v220, 0);
        v62 = v206;
        (*v183)(v203, v216);
        goto LABEL_26;
      }

      v81 = a1;
      outlined destroy of StocksKitCurrencyCache.Provider?(v79, &_s9Coherence7WeakRefVy8PaperKit9SignatureVGSgMd);
      v82 = v186;
      WeakTagged_10.tagged10.getter();
      v83 = v82;
      v84 = v82;
      v85 = v200;
      if ((*v182)(v84, 1, v200) != 1)
      {
        (*v175)(v185, v83, v85);
        v91 = WeakRef.subscript.modify();
        v93 = v92;
        v94 = type metadata accessor for LoupeElement(0);
        if (!(*(*(v94 - 8) + 48))(v93, 1, v94))
        {
          v95 = v180;
          outlined init with copy of Date?(v194, v180, &_s8PaperKit5ColorVSgMd);
          outlined init with copy of Date?(v95, v181, &_s8PaperKit5ColorVSgMd);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
          CRRegister.wrappedValue.setter();
          outlined destroy of StocksKitCurrencyCache.Provider?(v95, &_s8PaperKit5ColorVSgMd);
        }

        v91(v220, 0);
        v62 = v206;
        (*v174)(v185, v200);
LABEL_26:
        v96 = *v205;
        v53 = v218;
        goto LABEL_27;
      }

      (*v205)(v53, v78);
      result = outlined destroy of StocksKitCurrencyCache.Provider?(v83, &_s9Coherence7WeakRefVy8PaperKit12LoupeElementVGSgMd);
      a1 = v81;
      v65 = v78;
      v62 = v206;
    }

    else
    {
      v74 = v173;
      _s8PaperKit5ColorVWOcTm_0(v72, v173, type metadata accessor for Shape);
      outlined destroy of StocksKitCurrencyCache.Provider?(v72, &_s8PaperKit5ShapeVSgMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
      CRRegister.wrappedValue.getter();
      v75 = v220[0];
      v76 = v74;
      a1 = v213;
      outlined destroy of Shape(v76, type metadata accessor for Shape);
      if (v75)
      {
        goto LABEL_16;
      }

      v97 = WeakRef.subscript.modify();
      if (!v73(v98, 1, v196))
      {
        v99 = v180;
        outlined init with copy of Date?(v194, v180, &_s8PaperKit5ColorVSgMd);
        outlined init with copy of Date?(v99, v181, &_s8PaperKit5ColorVSgMd);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
        CRRegister.wrappedValue.setter();
        outlined destroy of StocksKitCurrencyCache.Provider?(v99, &_s8PaperKit5ColorVSgMd);
      }

      v97(v220, 0);
      v62 = v206;
      (*v191)(v212, v217);
      v96 = *v205;
LABEL_27:
      v65 = v219;
      result = (v96)(v53, v219);
      a1 = v213;
    }
  }

  v66 = v215;
  while (1)
  {
    v67 = v64 + 1;
    if (__OFADD__(v64, 1))
    {
      __break(1u);
      goto LABEL_59;
    }

    if (v67 >= v62)
    {
      break;
    }

    v61 = *(v58 + 8 * v67);
    ++v64;
    if (v61)
    {
      v64 = v67;
      goto LABEL_11;
    }
  }

  v100 = v178;
  outlined init with copy of Date?(v194, v178, &_s8PaperKit5ColorVSgMd);
  if ((*(v176 + 48))(v100, 1, v177) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v100, &_s8PaperKit5ColorVSgMd);
  }

  _s8PaperKit5ShapeVWObTm_3(v100, v179, type metadata accessor for Color);
  v101 = v201 + 56;
  v102 = 1 << *(v201 + 32);
  v103 = -1;
  if (v102 < 64)
  {
    v103 = ~(-1 << v102);
  }

  v104 = v103 & *(v201 + 56);
  v105 = (v102 + 63) >> 6;
  v218 = (v197 + 8);
  v219 = v197 + 16;
  v217 = (v162 + 48);
  v216 = (v161 + 56);
  v214 = v162 + 16;
  v210 = (v161 + 32);
  v211 = v161 + 48;
  v212 = (v162 + 8);
  v208 = (v164 + 8);
  v209 = (v163 + 56);
  v204 = (v163 + 8);
  v205 = (v163 + 32);
  v206 = (v161 + 8);
  v207 = (v163 + 48);

  v106 = 0;
  v215 = v105;
  while (v104)
  {
    v107 = v199;
    v108 = a1;
LABEL_42:
    v110 = __clz(__rbit64(v104));
    v104 &= v104 - 1;
    v111 = v197;
    v112 = v187;
    v113 = v188;
    (*(v197 + 16))(v187, *(v201 + 48) + *(v197 + 72) * (v110 | (v106 << 6)), v188);
    v114 = v190;
    WeakRef.subscript.getter();
    (*(v111 + 8))(v112, v113);
    if ((*v217)(v114, 1, v107))
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v114, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGSgMd);
      v115 = v189;
      (*v216)(v189, 1, 1, v198);
      a1 = v108;
LABEL_48:
      result = outlined destroy of StocksKitCurrencyCache.Provider?(v115, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd);
      v105 = v215;
      continue;
    }

    v116 = v169;
    v117 = v199;
    (*v214)(v169, v114, v199);
    outlined destroy of StocksKitCurrencyCache.Provider?(v114, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGSgMd);
    v118 = v170;
    CRRegister.value.getter();
    (*v212)(v116, v117);
    v119 = v118;
    v120 = v171;
    _s8PaperKit5ShapeVWObTm_3(v119, v171, type metadata accessor for TaggedStroke);
    if (swift_getEnumCaseMultiPayload())
    {
      outlined destroy of Shape(v120, type metadata accessor for TaggedStroke);
      v121 = 1;
      v115 = v189;
      v122 = v198;
    }

    else
    {
      v115 = v189;
      v123 = v120;
      v122 = v198;
      (*v210)(v189, v123, v198);
      v121 = 0;
    }

    a1 = v108;
    (*v216)(v115, v121, 1, v122);
    if ((*v211)(v115, 1, v122) == 1)
    {
      goto LABEL_48;
    }

    v124 = v168;
    v125 = v198;
    (*v210)(v168, v115, v198);
    v126 = Ref.subscript.modify();
    PKStrokeStruct.uniqueInheritedPropertiesIfNeeded<A>(in:)(a1);
    v126(v220, 0);
    v127 = v158;
    v128 = v125;
    v129 = v124;
    Ref.subscript.getter();
    v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd);
    v131 = v159;
    v202 = v130;
    CRRegister.wrappedValue.getter();
    outlined destroy of Shape(v127, type metadata accessor for PKStrokeStruct);
    v132 = v160;
    v133 = v166;
    Ref.subscript.getter();
    v203 = *v208;
    (v203)(v131, v133);
    v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd);
    CRRegister.wrappedValue.getter();
    outlined destroy of Shape(v132, type metadata accessor for PKStrokeInheritedProperties);
    v135 = v220[0];
    if (!v220[0])
    {
      (*v206)(v129, v128);
      v143 = v157;
      (*v209)(v157, 1, 1, v165);
      a1 = v213;
      goto LABEL_55;
    }

    v200 = v134;
    v136 = *v209;
    v137 = 1;
    v138 = v156;
    v139 = v165;
    (*v209)(v156, 1, 1, v165);
    _sSo10CGColorRefaAB14CoreFoundation9_CFObjectSCWlTm_0(&lazy protocol witness table cache variable for type PKInk and conformance PKInk, MEMORY[0x1E69783B0]);
    dispatch thunk of static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:)();

    v140 = v139;
    v141 = *v207;
    v142 = (*v207)(v138, 1, v140);
    v143 = v157;
    if (v142 != 1)
    {
      (*v205)(v157, v156, v140);
      v137 = 0;
    }

    v136(v143, v137, 1, v140);
    v144 = v141(v143, 1, v140);
    v145 = v140;
    a1 = v213;
    if (v144 == 1)
    {
      (*v206)(v168, v198);
LABEL_55:
      v105 = v215;
      result = outlined destroy of StocksKitCurrencyCache.Provider?(v143, &_s9PencilKit5PKInkVSgMd);
      continue;
    }

    v146 = v153;
    (*v205)(v153, v143, v145);
    [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
    PKInk.color.setter();
    v147 = v154;
    Ref.subscript.getter();
    v148 = v155;
    CRRegister.wrappedValue.getter();
    outlined destroy of Shape(v147, type metadata accessor for PKStrokeStruct);
    isa = PKInk._bridgeToObjectiveC()().super.isa;
    v150 = v166;
    v151 = Ref.subscript.modify();
    v220[6] = isa;
    CRRegister.wrappedValue.setter();
    v151(v220, 0);
    a1 = v213;
    (v203)(v148, v150);
    (*v204)(v146, v165);
    result = (*v206)(v168, v198);
    v105 = v215;
  }

  while (1)
  {
    v109 = v106 + 1;
    if (__OFADD__(v106, 1))
    {
      break;
    }

    if (v109 >= v105)
    {

      return outlined destroy of Shape(v179, type metadata accessor for Color);
    }

    v104 = *(v101 + 8 * v109);
    ++v106;
    if (v104)
    {
      v107 = v199;
      v108 = a1;
      v106 = v109;
      goto LABEL_42;
    }
  }

LABEL_59:
  __break(1u);
  return result;
}
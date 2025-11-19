uint64_t specialized SetAlgebra<>.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

BOOL _s18_SpriteKit_SwiftUI0A4ViewV7OptionsVs10SetAlgebraAAsAFP6insertySb8inserted_7ElementQz17memberAfterInserttAKnFTW_0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *_s18_SpriteKit_SwiftUI0A4ViewV7OptionsVs10SetAlgebraAAsAFP6removey7ElementQzSgAJFTW_0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *_s18_SpriteKit_SwiftUI0A4ViewV7OptionsVs10SetAlgebraAAsAFP6update4with7ElementQzSgAKn_tFTW_0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *_s18_SpriteKit_SwiftUI0A4ViewV7OptionsVSYAASY8rawValuexSg03RawH0Qz_tcfCTW_0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

double SpriteView.init(scene:transition:isPaused:preferredFramesPerSecond:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *&result = 4;
  *(a5 + 32) = xmmword_23B96DCD0;
  *(a5 + 48) = closure #1 in SpriteView.init(scene:transition:isPaused:preferredFramesPerSecond:);
  *(a5 + 56) = 0;
  return result;
}

uint64_t SpriteView.init(scene:transition:isPaused:preferredFramesPerSecond:options:shouldRender:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *a5;
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = v8;
  *(a8 + 40) = 0;
  *(a8 + 48) = a6;
  *(a8 + 56) = a7;
  return result;
}

uint64_t SpriteView.init(scene:transition:isPaused:preferredFramesPerSecond:options:debugOptions:shouldRender:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v9 = *a5;
  v10 = *a6;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = v9;
  *(a9 + 40) = v10;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  return result;
}

__n128 SpriteView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v16 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = type metadata accessor for SpriteKitViewDelegate();
  v10 = objc_allocWithZone(v9);
  v11 = &v10[OBJC_IVAR____TtC18_SpriteKit_SwiftUIP33_4A29C38A751B2448A1E2FA85CDDEAA5321SpriteKitViewDelegate_callback];
  *v11 = v7;
  *(v11 + 1) = v8;
  v17.receiver = v10;
  v17.super_class = v9;
  v12 = v3;
  v13 = v4;

  v14 = objc_msgSendSuper2(&v17, sel_init);
  *a1 = v12;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  result = v16;
  *(a1 + 24) = v16;
  *(a1 + 40) = v6;
  *(a1 + 48) = v14;
  return result;
}

unint64_t lazy protocol witness table accessor for type SpriteView.Options and conformance SpriteView.Options()
{
  result = lazy protocol witness table cache variable for type SpriteView.Options and conformance SpriteView.Options;
  if (!lazy protocol witness table cache variable for type SpriteView.Options and conformance SpriteView.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpriteView.Options and conformance SpriteView.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpriteView.Options and conformance SpriteView.Options;
  if (!lazy protocol witness table cache variable for type SpriteView.Options and conformance SpriteView.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpriteView.Options and conformance SpriteView.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpriteView.Options and conformance SpriteView.Options;
  if (!lazy protocol witness table cache variable for type SpriteView.Options and conformance SpriteView.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpriteView.Options and conformance SpriteView.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpriteView.Options and conformance SpriteView.Options;
  if (!lazy protocol witness table cache variable for type SpriteView.Options and conformance SpriteView.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpriteView.Options and conformance SpriteView.Options);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpriteView.DebugOptions and conformance SpriteView.DebugOptions()
{
  result = lazy protocol witness table cache variable for type SpriteView.DebugOptions and conformance SpriteView.DebugOptions;
  if (!lazy protocol witness table cache variable for type SpriteView.DebugOptions and conformance SpriteView.DebugOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpriteView.DebugOptions and conformance SpriteView.DebugOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpriteView.DebugOptions and conformance SpriteView.DebugOptions;
  if (!lazy protocol witness table cache variable for type SpriteView.DebugOptions and conformance SpriteView.DebugOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpriteView.DebugOptions and conformance SpriteView.DebugOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpriteView.DebugOptions and conformance SpriteView.DebugOptions;
  if (!lazy protocol witness table cache variable for type SpriteView.DebugOptions and conformance SpriteView.DebugOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpriteView.DebugOptions and conformance SpriteView.DebugOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpriteView.DebugOptions and conformance SpriteView.DebugOptions;
  if (!lazy protocol witness table cache variable for type SpriteView.DebugOptions and conformance SpriteView.DebugOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpriteView.DebugOptions and conformance SpriteView.DebugOptions);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for SpriteView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for SpriteView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s18_SpriteKit_SwiftUI0A4ViewV7OptionsVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s18_SpriteKit_SwiftUI0A4ViewV7OptionsVwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

id SKView.assignState(state:)(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v6 = *(a1 + 32);
  v9 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10 = [v1 scene];
  if (!v10)
  {
    goto LABEL_4;
  }

  v11 = v10;
  type metadata accessor for SKScene();
  v12 = v3;
  v23 = v6;
  v13 = v3;
  v14 = v8;
  v15 = v4;
  v16 = v7;
  v17 = v5;
  v18 = v12;
  v19 = static NSObject.== infix(_:_:)();

  v5 = v17;
  v7 = v16;
  v4 = v15;
  v8 = v14;
  v3 = v13;
  v6 = v23;
  if ((v19 & 1) == 0)
  {
LABEL_4:
    [v2 frame];
    if (v21 != 0.0 || v20 != 0.0)
    {
      if (v4)
      {
        [v2 presentScene:v3 transition:v4];
      }

      else
      {
        [v2 presentScene_];
      }
    }
  }

  [v2 setDelegate_];
  [v2 setAllowsTransparency_];
  [v2 setIgnoresSiblingOrder_];
  [v2 setShouldCullNonVisibleNodes_];
  [v2 setPreferredFramesPerSecond_];
  [v2 setPaused_];
  [v2 setShowsFPS_];
  [v2 setShowsDrawCount_];
  [v2 setShowsNodeCount_];
  [v2 setShowsQuadCount_];
  [v2 setShowsPhysics_];

  return [v2 setShowsFields_];
}

id SpriteKitViewCoordinator.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC18_SpriteKit_SwiftUIP33_4A29C38A751B2448A1E2FA85CDDEAA5324SpriteKitViewCoordinator_deferredState];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 2) = 0u;
  *(v3 + 6) = 0;
  outlined consume of SpriteKitViewState?(0, 0, 0, 0, 0, 0, 0);
  v6.receiver = v1;
  v6.super_class = type metadata accessor for SpriteKitViewCoordinator();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id SpriteKitViewDelegate.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type UIKitSpriteKitView and conformance UIKitSpriteKitView()
{
  result = lazy protocol witness table cache variable for type UIKitSpriteKitView and conformance UIKitSpriteKitView;
  if (!lazy protocol witness table cache variable for type UIKitSpriteKitView and conformance UIKitSpriteKitView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIKitSpriteKitView and conformance UIKitSpriteKitView);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UIKitSpriteKitView and conformance UIKitSpriteKitView;
  if (!lazy protocol witness table cache variable for type UIKitSpriteKitView and conformance UIKitSpriteKitView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIKitSpriteKitView and conformance UIKitSpriteKitView);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SpriteKitViewState(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SpriteKitViewState(uint64_t result, int a2, int a3)
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

char *protocol witness for UIViewRepresentable.makeUIView(context:) in conformance UIKitSpriteKitView()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v15 = *(v0 + 40);
  v16 = *(v0 + 24);
  swift_unknownObjectRetain();
  v4 = v1;
  v5 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI26UIViewRepresentableContextVy011_SpriteKit_aB005UIKitfG4View33_4A29C38A751B2448A1E2FA85CDDEAA53LLVGMd, &_s7SwiftUI26UIViewRepresentableContextVy011_SpriteKit_aB005UIKitfG4View33_4A29C38A751B2448A1E2FA85CDDEAA53LLVGMR);
  UIViewRepresentableContext.coordinator.getter();
  v6 = &v17[OBJC_IVAR____TtC18_SpriteKit_SwiftUIP33_4A29C38A751B2448A1E2FA85CDDEAA5324SpriteKitViewCoordinator_deferredState];
  v7 = *&v17[OBJC_IVAR____TtC18_SpriteKit_SwiftUIP33_4A29C38A751B2448A1E2FA85CDDEAA5324SpriteKitViewCoordinator_deferredState];
  v8 = *&v17[OBJC_IVAR____TtC18_SpriteKit_SwiftUIP33_4A29C38A751B2448A1E2FA85CDDEAA5324SpriteKitViewCoordinator_deferredState + 8];
  v9 = *&v17[OBJC_IVAR____TtC18_SpriteKit_SwiftUIP33_4A29C38A751B2448A1E2FA85CDDEAA5324SpriteKitViewCoordinator_deferredState + 16];
  v10 = *&v17[OBJC_IVAR____TtC18_SpriteKit_SwiftUIP33_4A29C38A751B2448A1E2FA85CDDEAA5324SpriteKitViewCoordinator_deferredState + 24];
  v11 = *&v17[OBJC_IVAR____TtC18_SpriteKit_SwiftUIP33_4A29C38A751B2448A1E2FA85CDDEAA5324SpriteKitViewCoordinator_deferredState + 32];
  v12 = *&v17[OBJC_IVAR____TtC18_SpriteKit_SwiftUIP33_4A29C38A751B2448A1E2FA85CDDEAA5324SpriteKitViewCoordinator_deferredState + 40];
  v13 = *&v17[OBJC_IVAR____TtC18_SpriteKit_SwiftUIP33_4A29C38A751B2448A1E2FA85CDDEAA5324SpriteKitViewCoordinator_deferredState + 48];
  *v6 = v1;
  *(v6 + 1) = v2;
  *(v6 + 2) = v3;
  *(v6 + 24) = v16;
  *(v6 + 40) = v15;
  outlined consume of SpriteKitViewState?(v7, v8, v9, v10, v11, v12, v13);

  UIViewRepresentableContext.coordinator.getter();
  return v17;
}

void protocol witness for UIViewRepresentable.updateUIView(_:context:) in conformance UIKitSpriteKitView()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v14 = *(v0 + 40);
  v15 = *(v0 + 24);
  swift_unknownObjectRetain();
  v4 = v1;
  v5 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI26UIViewRepresentableContextVy011_SpriteKit_aB005UIKitfG4View33_4A29C38A751B2448A1E2FA85CDDEAA53LLVGMd, &_s7SwiftUI26UIViewRepresentableContextVy011_SpriteKit_aB005UIKitfG4View33_4A29C38A751B2448A1E2FA85CDDEAA53LLVGMR);
  UIViewRepresentableContext.coordinator.getter();
  v6 = &v16[OBJC_IVAR____TtC18_SpriteKit_SwiftUIP33_4A29C38A751B2448A1E2FA85CDDEAA5324SpriteKitViewCoordinator_deferredState];
  v7 = *&v16[OBJC_IVAR____TtC18_SpriteKit_SwiftUIP33_4A29C38A751B2448A1E2FA85CDDEAA5324SpriteKitViewCoordinator_deferredState];
  v8 = *&v16[OBJC_IVAR____TtC18_SpriteKit_SwiftUIP33_4A29C38A751B2448A1E2FA85CDDEAA5324SpriteKitViewCoordinator_deferredState + 8];
  v9 = *&v16[OBJC_IVAR____TtC18_SpriteKit_SwiftUIP33_4A29C38A751B2448A1E2FA85CDDEAA5324SpriteKitViewCoordinator_deferredState + 16];
  v10 = *&v16[OBJC_IVAR____TtC18_SpriteKit_SwiftUIP33_4A29C38A751B2448A1E2FA85CDDEAA5324SpriteKitViewCoordinator_deferredState + 24];
  v11 = *&v16[OBJC_IVAR____TtC18_SpriteKit_SwiftUIP33_4A29C38A751B2448A1E2FA85CDDEAA5324SpriteKitViewCoordinator_deferredState + 32];
  v12 = *&v16[OBJC_IVAR____TtC18_SpriteKit_SwiftUIP33_4A29C38A751B2448A1E2FA85CDDEAA5324SpriteKitViewCoordinator_deferredState + 40];
  v13 = *&v16[OBJC_IVAR____TtC18_SpriteKit_SwiftUIP33_4A29C38A751B2448A1E2FA85CDDEAA5324SpriteKitViewCoordinator_deferredState + 48];
  *v6 = v1;
  *(v6 + 1) = v2;
  *(v6 + 2) = v3;
  *(v6 + 24) = v15;
  *(v6 + 40) = v14;
  outlined consume of SpriteKitViewState?(v7, v8, v9, v10, v11, v12, v13);
}

id protocol witness for UIViewRepresentable.makeCoordinator() in conformance UIKitSpriteKitView@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for SpriteKitViewCoordinator()) init];
  *a1 = result;
  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance UIKitSpriteKitView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type UIKitSpriteKitView and conformance UIKitSpriteKitView();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance UIKitSpriteKitView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type UIKitSpriteKitView and conformance UIKitSpriteKitView();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance UIKitSpriteKitView()
{
  lazy protocol witness table accessor for type UIKitSpriteKitView and conformance UIKitSpriteKitView();
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *outlined consume of SpriteKitViewState?(void *result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result)
  {

    return MEMORY[0x2821FEBE0](a7);
  }

  return result;
}

unint64_t type metadata accessor for SKScene()
{
  result = lazy cache variable for type metadata for SKScene;
  if (!lazy cache variable for type metadata for SKScene)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SKScene);
  }

  return result;
}
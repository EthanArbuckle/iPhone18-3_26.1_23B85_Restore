uint64_t specialized _ViewTest.setSafeAreaInsets(_:)(double a1, double a2, double a3, double a4)
{
  result = static _TestApp.host.getter();
  if (result)
  {
    v10 = v9;
    ObjectType = swift_getObjectType();
    (*(v10 + 24))(ObjectType, v10, a1, a2, a3, a4);

    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized _ViewTest.render(host:seconds:options:)(double a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  if (*a4)
  {
    ObjectType = swift_getObjectType();
    v10 = MEMORY[0x1EEE9AC00](ObjectType);
    (*(a3 + 120))(partial apply for closure #1 in _ViewTest.render(host:seconds:options:), v10);
    return 1;
  }

  else
  {
    v7 = swift_getObjectType();
    if ((v6 & 2) != 0)
    {
      return (*(*(a3 + 8) + 16))(v7, a1) & 1;
    }

    else
    {
      (*(a3 + 128))(v7, a3, a1);
      return 1;
    }
  }
}

uint64_t specialized _ViewTest.render(seconds:)(double a1)
{
  static _TestApp.renderOptions.getter();
  if ((v4 & 8) == 0)
  {
    result = static _TestApp.host.getter();
    if (result)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  result = static _TestApp.comparisonHost.getter();
  if (!result)
  {
    __break(1u);
    return result;
  }

LABEL_5:
  specialized _ViewTest.render(host:seconds:options:)(a1, result, v3, &v4);

  return swift_unknownObjectRelease();
}

uint64_t specialized _ViewTest.resetEvents()()
{
  result = static _TestApp.host.getter();
  if (result)
  {
    v2 = v1;
    ObjectType = swift_getObjectType();
    (*(v2 + 48))(ObjectType, v2);

    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Error and conformance Error()
{
  result = lazy protocol witness table cache variable for type Error and conformance Error;
  if (!lazy protocol witness table cache variable for type Error and conformance Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Error and conformance Error);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for Error(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *(a2 + 16);
  outlined copy of TabCustomizationID.Base();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for Error(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *(a2 + 16);
  outlined copy of TabCustomizationID.Base();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  outlined consume of TabCustomizationID.Base();
  return a1;
}

uint64_t assignWithTake for Error(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  outlined consume of TabCustomizationID.Base();
  return a1;
}

void type metadata accessor for Binding<_TestApp.RootView.StateType>()
{
  if (!lazy cache variable for type metadata for Binding<_TestApp.RootView.StateType>)
  {
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Binding<_TestApp.RootView.StateType>);
    }
  }
}

uint64_t outlined consume of Binding<_TestApp.RootView.StateType>?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t *UIViewSnapshotResponder.hitTestPolicy(options:)@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  if (*(v2 + 264))
  {
    v4 = *result;
    type metadata accessor for DefaultLayoutViewResponder();
    v3 = method lookup function for ViewResponder();
    return v3(&v4);
  }

  else
  {
    *a2 = 1;
  }

  return result;
}

double UIViewSnapshotResponder.transform.getter@<D0>(_OWORD *a1@<X8>)
{
  AGGraphClearUpdate();
  LOBYTE(v7) = 17;
  type metadata accessor for ViewTransform?(0, &lazy cache variable for type metadata for ViewTransform?, MEMORY[0x1E697E228], MEMORY[0x1E69E6720]);
  static Update.dispatchImmediately<A>(reason:_:)();
  AGGraphSetUpdate();
  if (v4 == 1)
  {
    ViewTransform.init()();
  }

  else
  {
    v7 = v4;
    v8 = v5;
    v9 = v6;
  }

  ViewTransform.appendPosition(_:)(v1[15]);
  *a1 = v7;
  a1[1] = v8;
  result = *&v9;
  a1[2] = v9;
  return result;
}

uint64_t UIViewSnapshotResponder.contentPath.getter@<X0>(uint64_t a1@<X8>)
{
  v13 = 0u;
  v14 = 0u;
  v15 = 6;
  (*(*v1 + class metadata base offset for UIViewSnapshotResponder + 88))(&v12);
  *&v9[0] = v1[27];
  v11 = 1;
  dispatch thunk of ViewResponder.addContentPath(to:kind:in:observer:)();
  outlined destroy of CoordinateSpace(v9);
  v7 = v13;
  v8 = v14;
  v9[0] = v13;
  v9[1] = v14;
  v3 = v15;
  v10 = v15;
  result = Path.isEmpty.getter();
  v5 = v7;
  v6 = v8;
  if (result)
  {
    result = outlined destroy of Path(v9);
    v3 = -1;
    v5 = 0uLL;
    v6 = 0uLL;
  }

  *a1 = v5;
  *(a1 + 16) = v6;
  *(a1 + 32) = v3;
  return result;
}

__C::CGRect __swiftcall UIViewSnapshotResponder.convertRectToTargetSpace(_:host:preferredContainer:)(__C::CGRect _, UIView *host, UIView_optional *preferredContainer)
{
  v31 = _;
  type metadata accessor for HostingScrollViewResponder();
  ResponderNode.firstAncestor<A>(ofType:)();
  if (!v27)
  {
    goto LABEL_9;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (!Strong)
  {
    goto LABEL_9;
  }

  type metadata accessor for HostingScrollView.PlatformContainer();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {

    goto LABEL_9;
  }

  v8 = *(v7 + OBJC_IVAR____TtCC7SwiftUI17HostingScrollView17PlatformContainer_scrollView);

  v9 = [(UIView *)v8 window];
  if (!v9)
  {

LABEL_9:
    hostingViewCoordinateSpace.getter();
    v30[40] = 1;
    AGGraphClearUpdate();
    LOBYTE(v27) = 17;
    type metadata accessor for ViewTransform?(0, &lazy cache variable for type metadata for ViewTransform?, MEMORY[0x1E697E228], MEMORY[0x1E69E6720]);
    static Update.dispatchImmediately<A>(reason:_:)();
    AGGraphSetUpdate();
    if (v24 == 1)
    {
      ViewTransform.init()();
    }

    else
    {
      v27 = v24;
      v28 = v25;
      v29 = v26;
    }

    ViewTransform.appendPosition(_:)(v3[15]);
    CGRect.convert(to:transform:)();

    outlined destroy of CoordinateSpace(v30);
    v8 = host;
    if (!preferredContainer)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  AGGraphClearUpdate();
  LOBYTE(v27) = 17;
  type metadata accessor for ViewTransform?(0, &lazy cache variable for type metadata for ViewTransform?, MEMORY[0x1E697E228], MEMORY[0x1E69E6720]);
  static Update.dispatchImmediately<A>(reason:_:)();
  AGGraphSetUpdate();
  if (v24 == 1)
  {
    ViewTransform.init()();
  }

  else
  {
    v27 = v24;
    v28 = v25;
    v29 = v26;
  }

  ViewTransform.appendPosition(_:)(v3[15]);
  v22 = v29;
  v23 = v28;
  static CoordinateSpace.scrollViewSafeArea.getter();
  CGRect.convert(to:transform:)();
  outlined destroy of CoordinateSpace(&v24);

  if (!preferredContainer)
  {
LABEL_16:

    x = v31.origin.x;
    y = v31.origin.y;
    width = v31.size.width;
    height = v31.size.height;
    goto LABEL_17;
  }

LABEL_13:
  [(UIView *)v8 convertRect:preferredContainer toCoordinateSpace:v31.origin.x, v31.origin.y, v31.size.width, v31.size.height, v22, v23];
  x = v10;
  y = v12;
  width = v14;
  height = v16;

LABEL_17:
  v18 = x;
  v19 = y;
  v20 = width;
  v21 = height;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

uint64_t closure #1 in closure #1 in UIViewSnapshotResponder.transform.getter@<X0>(uint64_t a1@<X8>)
{
  result = AGGraphGetWeakValue();
  if (result)
  {
    v3 = *result;
    v7 = *(result + 8);
    v8 = *(result + 24);
    v4 = *(result + 40);

    v5 = v7;
    v6 = v8;
  }

  else
  {
    v4 = 0;
    v5 = 0uLL;
    v3 = 1;
    v6 = 0uLL;
  }

  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 24) = v6;
  *(a1 + 40) = v4;
  return result;
}

double UIViewSnapshotResponder.portalContainer(centeringPortalRect:inHost:options:preferredContainer:)(int8x16_t *a1, void *a2, char a3, id a4)
{
  if (a1[2].i8[0])
  {
    v8 = -1;
  }

  else
  {
    v8 = 0;
  }

  v9 = vdupq_n_s64(v8);
  v10 = vbicq_s8(a1[1], v9);
  v36.origin = vbicq_s8(*a1, v9);
  v36.size = v10;
  type metadata accessor for HostingScrollViewResponder();
  ResponderNode.firstAncestor<A>(ofType:)();
  if (!v32 || (swift_beginAccess(), Strong = swift_unknownObjectWeakLoadStrong(), , !Strong))
  {
LABEL_12:
    hostingViewCoordinateSpace.getter();
    v35[40] = 1;
    AGGraphClearUpdate();
    LOBYTE(v32) = 17;
    type metadata accessor for ViewTransform?(0, &lazy cache variable for type metadata for ViewTransform?, MEMORY[0x1E697E228], MEMORY[0x1E69E6720]);
    static Update.dispatchImmediately<A>(reason:_:)();
    AGGraphSetUpdate();
    if (v29 == 1)
    {
      ViewTransform.init()();
    }

    else
    {
      v32 = v29;
      v33 = v30;
      v34 = v31;
    }

    ViewTransform.appendPosition(_:)(v4[15]);
    CGRect.convert(to:transform:)();

    outlined destroy of CoordinateSpace(v35);
    y = v36.origin.y;
    x = v36.origin.x;
    size = v36.size;
    v18 = x + CGRectGetWidth(v36) * 0.5;
    v37.origin.x = x;
    v37.origin.y = y;
    v37.size = size;
    v19 = y + CGRectGetHeight(v37) * 0.5;
    v20 = a2;
    goto LABEL_16;
  }

  type metadata accessor for HostingScrollView.PlatformContainer();
  v12 = swift_dynamicCastClass();
  if (!v12)
  {
LABEL_11:

    goto LABEL_12;
  }

  v13 = *(v12 + OBJC_IVAR____TtCC7SwiftUI17HostingScrollView17PlatformContainer_scrollView);

  Strong = v13;
  v14 = [Strong window];
  if (!v14)
  {

    goto LABEL_11;
  }

  AGGraphClearUpdate();
  LOBYTE(v32) = 17;
  type metadata accessor for ViewTransform?(0, &lazy cache variable for type metadata for ViewTransform?, MEMORY[0x1E697E228], MEMORY[0x1E69E6720]);
  static Update.dispatchImmediately<A>(reason:_:)();
  AGGraphSetUpdate();
  if (v29 == 1)
  {
    ViewTransform.init()();
  }

  else
  {
    v32 = v29;
    v33 = v30;
    v34 = v31;
  }

  ViewTransform.appendPosition(_:)(v4[15]);
  static CoordinateSpace.scrollViewSafeArea.getter();
  CGRect.convert(to:transform:)();
  outlined destroy of CoordinateSpace(&v29);

  v24 = v36.origin.y;
  v23 = v36.origin.x;
  v25 = v36.size;
  v20 = Strong;
  v38.origin.x = v23;
  v38.origin.y = v24;
  v38.size = v25;
  v18 = v23 + CGRectGetWidth(v38) * 0.5;
  v39.origin.x = v23;
  v39.origin.y = v24;
  v39.size = v25;
  v19 = v24 + CGRectGetHeight(v39) * 0.5;
  if (a3)
  {
    v26 = [v20 superview];

    if (v26)
    {
      [v20 convertPoint:v26 toCoordinateSpace:{v18, v19}];
      v18 = v27;
      v19 = v28;

      v20 = v26;
    }

    else
    {
    }
  }

  else
  {
  }

LABEL_16:
  if (a4 && v20 != a4)
  {
    [v20 convertPoint:a4 toCoordinateSpace:{v18, v19}];
    v18 = v21;
  }

  return v18;
}

float64_t closure #1 in closure #1 in UIViewSnapshotResponder.portalPreviewTarget<A>(inHost:portalResult:options:preferredContainer:)(char a1, uint64_t a2, CGPoint *a3, float64x2_t a4, float64_t a5)
{
  v9.f64[0] = a4.f64[0];
  v9.f64[1] = a5;
  if ((a1 & 2) == 0 && (*(a2 + 32) & 1) == 0)
  {
    a4.f64[1] = a5;
    v9 = vaddq_f64(*a2, a4);
  }

  hostingViewCoordinateSpace.getter();
  v8[40] = 1;
  AGGraphClearUpdate();
  type metadata accessor for ViewTransform?(0, &lazy cache variable for type metadata for ViewTransform?, MEMORY[0x1E697E228], MEMORY[0x1E69E6720]);
  static Update.dispatchImmediately<A>(reason:_:)();
  AGGraphSetUpdate();
  if (v7 == 1)
  {
    ViewTransform.init()();
  }

  ViewTransform.appendPosition(_:)(a3[15]);
  type metadata accessor for CGPoint(0);
  ApplyViewTransform.convert(to:transform:)();

  outlined destroy of CoordinateSpace(v8);
  return v9.f64[0];
}

uint64_t closure #1 in UIViewSnapshotResponder.canPortal.getter@<X0>(BOOL *a1@<X8>)
{
  result = AGGraphGetWeakValue();
  if (result)
  {
    v3 = (*(result + 8) & 0x200) == 0;
  }

  else
  {
    v3 = 1;
  }

  *a1 = v3;
  return result;
}

void closure #1 in UIViewSnapshotResponder.snapshotView(host:)(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for ViewTransform?(0, &lazy cache variable for type metadata for DisplayList?, MEMORY[0x1E697DCB0], MEMORY[0x1E69E6720]);
  static Update.ensure<A>(_:)();
  if (v28)
  {
    v6 = WORD4(v28);
    v7 = HIDWORD(*(&v28 + 1));
    v8 = *(a1 + 224);
    v9 = *(a1 + 232);
    v10 = *(a1 + 280);
    v11 = *(a1 + 288);
    v12 = type metadata accessor for DisplayListView();
    v13 = objc_allocWithZone(v12);
    v14 = &v13[OBJC_IVAR____TtC7SwiftUI15DisplayListView_displayList];
    *v14 = v28;
    *(v14 + 4) = v6;
    *(v14 + 3) = v7;
    v15 = &v13[OBJC_IVAR____TtC7SwiftUI15DisplayListView_displayListPosition];
    *v15 = v10;
    *(v15 + 1) = v11;
    v24.receiver = v13;
    v24.super_class = v12;
    v16 = objc_msgSendSuper2(&v24, sel_initWithFrame_, 0.0, 0.0, v8, v9);
    v17 = objc_opt_self();
    v18 = v16;
    v19 = [v17 clearColor];
    [v18 setBackgroundColor_];

LABEL_8:
    *a3 = v18;
    return;
  }

  v32 = 0.0;
  v33 = 0.0;
  v34 = *(a1 + 224);
  hostingViewCoordinateSpace.getter();
  v31[40] = 1;
  AGGraphClearUpdate();
  LOBYTE(v28) = 17;
  type metadata accessor for ViewTransform?(0, &lazy cache variable for type metadata for ViewTransform?, MEMORY[0x1E697E228], MEMORY[0x1E69E6720]);
  static Update.dispatchImmediately<A>(reason:_:)();
  AGGraphSetUpdate();
  if (v25 == 1)
  {
    ViewTransform.init()();
  }

  else
  {
    v28 = v25;
    v29 = v26;
    v30 = v27;
  }

  ViewTransform.appendPosition(_:)(*(a1 + 240));
  CGRect.convert(to:transform:)();

  outlined destroy of CoordinateSpace(v31);
  v20 = v32;
  v21 = v33;
  v22 = v34;
  v23 = [a2 resizableSnapshotViewFromRect:0 afterScreenUpdates:v32 withCapInsets:{v33, v34, *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
  if (v23)
  {
    v18 = v23;
    [v23 setContentMode_];
    [v18 setFrame_];
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t closure #1 in closure #1 in UIViewSnapshotResponder.snapshotView(host:)@<X0>(uint64_t *a1@<X8>)
{
  result = AGGraphGetWeakValue();
  if (result)
  {
    v3 = *(result + 8) | (*(result + 12) << 32);
  }

  else
  {
    v3 = 0;
  }

  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t UIViewSnapshotResponder.__deallocating_deinit()
{
  DefaultLayoutViewResponder.deinit();

  return swift_deallocClassInstance();
}

uint64_t UIViewSnapshotResponder.Transform.value.getter@<X0>(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = *(Value + 8);
  *a1 = *Value;
  *(a1 + 8) = v3;
  v4 = *(Value + 32);
  *(a1 + 16) = *(Value + 16);
  *(a1 + 32) = v4;
  type metadata accessor for CGPoint(0);

  v5 = AGGraphGetValue();
  ViewTransform.appendPosition(_:)(*v5);
  return ViewTransform.appendCoordinateSpace(id:)();
}

uint64_t closure #1 in DisplayListView.draw(_:)()
{
  type metadata accessor for DisplayList.GraphicsRenderer();
  swift_allocObject();
  DisplayList.GraphicsRenderer.init(platformViewMode:)();
  GraphicsContext.translateBy(x:y:)();

  DisplayList.GraphicsRenderer.renderDisplayList(_:at:in:)();
}

uint64_t specialized DisplayListView.draw(_:)()
{
  v0 = UIGraphicsGetCurrentContext();
  if (v0)
  {
    v1 = v0;
    MEMORY[0x1EEE9AC00](v0);
    EnvironmentValues.init()();
    static GraphicsContext.renderingTo(cgContext:environment:deviceScale:content:)();
  }

  else
  {
    type metadata accessor for ViewTransform?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_18CD63400;
    _StringGuts.grow(_:)(38);

    *&v6 = 0xD00000000000001ELL;
    *(&v6 + 1) = 0x800000018CD48450;
    v4 = StaticString.description.getter();
    MEMORY[0x18D00C9B0](v4);

    MEMORY[0x18D00C9B0](58, 0xE100000000000000);
    v5 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v5);

    MEMORY[0x18D00C9B0](0xD00000000000001CLL, 0x800000018CD400F0);
    *(v3 + 56) = MEMORY[0x1E69E6158];
    *(v3 + 32) = v6;
    print(_:separator:terminator:)();
  }
}

uint64_t View.textInputFormattingControlVisibility(_:for:)(char a1, uint64_t *a2)
{
  v3 = *a2;
  swift_getKeyPath();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  View.transformEnvironment<A>(_:transform:)();
}

uint64_t EnvironmentValues.textInputFormattingControlVisibility.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_textInputFormattingControlVisibility>();
    lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<TextInputFormattingControlPlacement.Set> and conformance _EnvironmentKeyTransformModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_textInputFormattingControlVisibility> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_textInputFormattingControlVisibility>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_textInputFormattingControlVisibility>();
    lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<TextInputFormattingControlPlacement.Set> and conformance _EnvironmentKeyTransformModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_textInputFormattingControlVisibility> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_textInputFormattingControlVisibility>);

    return PropertyList.subscript.getter();
  }
}

uint64_t key path getter for EnvironmentValues.textInputFormattingControlVisibility : EnvironmentValues@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_textInputFormattingControlVisibility>();
    lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<TextInputFormattingControlPlacement.Set> and conformance _EnvironmentKeyTransformModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_textInputFormattingControlVisibility> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_textInputFormattingControlVisibility>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_textInputFormattingControlVisibility>();
    lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<TextInputFormattingControlPlacement.Set> and conformance _EnvironmentKeyTransformModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_textInputFormattingControlVisibility> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_textInputFormattingControlVisibility>);
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.textInputFormattingControlVisibility : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_textInputFormattingControlVisibility>();
  lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<TextInputFormattingControlPlacement.Set> and conformance _EnvironmentKeyTransformModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_textInputFormattingControlVisibility> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_textInputFormattingControlVisibility>);

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t *partial apply for closure #1 in View.textInputFormattingControlVisibility(_:for:)(uint64_t *result)
{
  v2 = *(v1 + 24);
  v3 = *result;
  if (*(v1 + 16) > 1u)
  {
    v4 = v3 & ~v2;
  }

  else
  {
    if ((v2 & ~v3) == 0)
    {
      return result;
    }

    v4 = v3 | v2;
  }

  *result = v4;
  return result;
}

unint64_t lazy protocol witness table accessor for type TextInputFormattingControlPlacement.Set and conformance TextInputFormattingControlPlacement.Set()
{
  result = lazy protocol witness table cache variable for type TextInputFormattingControlPlacement.Set and conformance TextInputFormattingControlPlacement.Set;
  if (!lazy protocol witness table cache variable for type TextInputFormattingControlPlacement.Set and conformance TextInputFormattingControlPlacement.Set)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextInputFormattingControlPlacement.Set and conformance TextInputFormattingControlPlacement.Set);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextInputFormattingControlPlacement.Set and conformance TextInputFormattingControlPlacement.Set;
  if (!lazy protocol witness table cache variable for type TextInputFormattingControlPlacement.Set and conformance TextInputFormattingControlPlacement.Set)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextInputFormattingControlPlacement.Set and conformance TextInputFormattingControlPlacement.Set);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextInputFormattingControlPlacement.Set and conformance TextInputFormattingControlPlacement.Set;
  if (!lazy protocol witness table cache variable for type TextInputFormattingControlPlacement.Set and conformance TextInputFormattingControlPlacement.Set)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextInputFormattingControlPlacement.Set and conformance TextInputFormattingControlPlacement.Set);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextInputFormattingControlPlacement.Set and conformance TextInputFormattingControlPlacement.Set;
  if (!lazy protocol witness table cache variable for type TextInputFormattingControlPlacement.Set and conformance TextInputFormattingControlPlacement.Set)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextInputFormattingControlPlacement.Set and conformance TextInputFormattingControlPlacement.Set);
  }

  return result;
}

void type metadata accessor for _EnvironmentKeyTransformModifier<TextInputFormattingControlPlacement.Set>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<TextInputFormattingControlPlacement.Set>)
  {
    v0 = type metadata accessor for _EnvironmentKeyTransformModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<TextInputFormattingControlPlacement.Set>);
    }
  }
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_textInputFormattingControlVisibility>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_textInputFormattingControlVisibility>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_textInputFormattingControlVisibility>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<TextInputFormattingControlPlacement.Set> and conformance _EnvironmentKeyTransformModifier<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t protocol witness for static _SceneModifier._makeScene(modifier:inputs:body:) in conformance _EnvironmentKeyTransformModifier<A>(int *a1, _OWORD *a2, void (*a3)(uint64_t, __int128 *), uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static _SceneModifier<>._makeScene(modifier:inputs:body:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t static _SceneModifier._makeScene(modifier:inputs:body:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a1;
  v8 = a2[1];
  v35 = *a2;
  v36 = v8;
  v37[0] = a2[2];
  *(v37 + 12) = *(a2 + 44);
  static DynamicPropertyCache.fields(of:)();
  v9 = v41;
  v10 = v42;
  v32 = v35;
  v33 = v36;
  v34[0] = v37[0];
  *(v34 + 12) = *(v37 + 12);
  v19 = DWORD1(v42);
  v20 = v7;
  v38 = v41;
  LOBYTE(v39) = v42;
  DWORD1(v39) = DWORD1(v42);
  outlined init with copy of _SceneInputs(&v35, &v41);
  static _SceneModifier.makeBody(modifier:inputs:fields:)();
  v18 = v41;
  v21 = v42;
  *&v41 = a3;
  *(&v41 + 1) = a4;
  v11 = type metadata accessor for _SceneModifier_Content.BodyInput();
  type metadata accessor for (_:_:)();
  swift_getWitnessTable();
  _SceneInputs.append<A, B>(_:to:)(&v41, v11, v11);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = v32;
  v39 = v33;
  v40[0] = v34[0];
  *(v40 + 12) = *(v34 + 12);
  v28 = v32;
  v29 = v33;
  *v30 = v34[0];
  *&v30[12] = *(v34 + 12);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = *(AssociatedConformanceWitness + 32);
  outlined init with copy of _SceneInputs(&v38, &v41);
  v14(&v23, v31, &v28, AssociatedTypeWitness, AssociatedConformanceWitness);
  v41 = v28;
  v42 = v29;
  v43[0] = *v30;
  *(v43 + 12) = *&v30[12];
  outlined destroy of _SceneInputs(&v41);
  v15 = v23;
  v16 = DWORD2(v23);
  if ((v21 & 1) == 0)
  {
    v27 = v18;
    v26 = v20;
    v23 = v9;
    v24 = v10;
    v25 = v19;
    _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();
  }

  v28 = v32;
  v29 = v33;
  *v30 = v34[0];
  *&v30[12] = *(v34 + 12);
  outlined destroy of _SceneInputs(&v28);
  result = outlined consume of DynamicPropertyCache.Fields.Layout();
  *a5 = v15;
  *(a5 + 8) = v16;
  return result;
}

void _s7SwiftUI14_SceneModifierPAAE14sceneBodyErrors5NeverOyFAA05EmptyD0V_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x18D00C9B0](0x646F4D7974706D45, 0xED00007265696669);
  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI14_SceneModifierPAAE14sceneBodyErrors5NeverOyFAA017_AppearanceActionD0V_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x18D00C9B0](0xD000000000000019, 0x800000018CD485B0);
  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t static EmptyModifier._makeScene(modifier:inputs:body:)(uint64_t a1, _OWORD *a2, uint64_t (*a3)(uint64_t, _OWORD *))
{
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  v6[0] = a2[2];
  *(v6 + 12) = *(a2 + 44);
  return a3(a1, v5);
}

uint64_t protocol witness for static _SceneModifier._makeScene(modifier:inputs:body:) in conformance EmptyModifier(uint64_t a1, _OWORD *a2, uint64_t (*a3)(uint64_t, _OWORD *))
{
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  v6[0] = a2[2];
  *(v6 + 12) = *(a2 + 44);
  return a3(a1, v5);
}

void ModifiedContent<>.body.getter()
{
  specialized ModifiedContent<>.body.getter();
}

{
  specialized ModifiedContent<>.body.getter();
}

{
  specialized ModifiedContent<>.body.getter();
}

{
  specialized ModifiedContent<>.body.getter();
}

uint64_t static ModifiedContent<>._makeScene(modifier:inputs:body:)(int *a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *a1;
  v15 = a2[1];
  v21[0] = *a2;
  v21[1] = v15;
  v22[0] = a2[2];
  *(v22 + 12) = *(a2 + 44);
  v20 = v14;
  type metadata accessor for ModifiedContent();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  *(v16 + 24) = a6;
  *(v16 + 32) = a7;
  *(v16 + 40) = a8;
  *(v16 + 48) = v14;
  *(v16 + 56) = a3;
  *(v16 + 64) = a4;
  v17 = *(a8 + 32);

  v17(v19, v21, partial apply for closure #2 in static ModifiedContent<>._makeScene(modifier:inputs:body:), v16, a6, a8);
}

uint64_t closure #2 in static ModifiedContent<>._makeScene(modifier:inputs:body:)(uint64_t a1, _OWORD *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a2[1];
  v16[0] = *a2;
  v16[1] = v12;
  v17[0] = a2[2];
  *(v17 + 12) = *(a2 + 44);
  v15 = a3;
  type metadata accessor for ModifiedContent();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  return (*(a8 + 32))(v14, v16, a4, a5, a6, a8);
}

uint64_t static _SceneModifier_Content._makeScene(scene:inputs:)(uint64_t a1, _OWORD *a2)
{
  v2 = a2[1];
  v21[0] = *a2;
  v21[1] = v2;
  v4 = *a2;
  v3 = a2[1];
  v22[0] = a2[2];
  *(v22 + 12) = *(a2 + 44);
  v18 = v4;
  v19 = v3;
  v20[0] = a2[2];
  *(v20 + 12) = *(a2 + 44);
  type metadata accessor for _SceneModifier_Content.BodyInput();
  outlined init with copy of _SceneInputs(v21, v15);
  type metadata accessor for (_:_:)();
  swift_getWitnessTable();
  _SceneInputs.popLast<A, B>(_:)();
  v5 = v17;
  if (v17)
  {
    v11[0] = v18;
    v11[1] = v19;
    v12[0] = v20[0];
    *(v12 + 12) = *(v20 + 12);
    v8 = v18;
    v9 = v19;
    v10[0] = v20[0];
    *(v10 + 12) = *(v20 + 12);
    v6 = outlined init with copy of _SceneInputs(v11, v15);
    v5(v6, &v8);
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v5);
    v13[0] = v8;
    v13[1] = v9;
    v14[0] = v10[0];
    *(v14 + 12) = *(v10 + 12);
    outlined destroy of _SceneInputs(v13);
  }

  else
  {
    PreferencesOutputs.init()();
  }

  v15[0] = v18;
  v15[1] = v19;
  v16[0] = v20[0];
  *(v16 + 12) = *(v20 + 12);
  return outlined destroy of _SceneInputs(v15);
}

uint64_t static _SceneModifier_Content.BodyInput.defaultValue.getter()
{
  v0 = type metadata accessor for (_:_:)();

  return MEMORY[0x1EEDE4450](v0);
}

uint64_t static _SceneModifier.makeBody(modifier:inputs:fields:)()
{
  if (AGTypeID.isValueType.getter())
  {
    type metadata accessor for AppModifierBodyAccessor();
    swift_getWitnessTable();
    return BodyAccessor.makeBody(container:inputs:fields:)();
  }

  else
  {
    _StringGuts.grow(_:)(39);

    v1 = _typeName(_:qualified:)();
    MEMORY[0x18D00C9B0](v1);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t AppModifierBodyAccessor.updateBody(of:changed:)(uint64_t result, char a2)
{
  if (a2)
  {
    MEMORY[0x1EEE9AC00](result);
    type metadata accessor for AppModifierBodyAccessor();
    swift_getWitnessTable();
    return BodyAccessor.setBody(_:)();
  }

  return result;
}

void specialized _SceneModifier.sceneBodyError()()
{
  _StringGuts.grow(_:)(34);

  v0 = _typeName(_:qualified:)();
  MEMORY[0x18D00C9B0](v0);

  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t type metadata accessor for (_:_:)()
{
  result = lazy cache variable for type metadata for (_:_:);
  if (!lazy cache variable for type metadata for (_:_:))
  {
    result = swift_getFunctionTypeMetadata2();
    atomic_store(result, &lazy cache variable for type metadata for (_:_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:_:);
  if (!lazy cache variable for type metadata for (_:_:))
  {
    result = swift_getFunctionTypeMetadata2();
    atomic_store(result, &lazy cache variable for type metadata for (_:_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:_:);
  if (!lazy cache variable for type metadata for (_:_:))
  {
    result = swift_getFunctionTypeMetadata2();
    atomic_store(result, &lazy cache variable for type metadata for (_:_:));
  }

  return result;
}

void specialized ModifiedContent<>.body.getter()
{
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  specialized Scene.sceneBodyError()();
}

{
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  specialized WidgetConfiguration.widgetConfigurationBodyError()();
}

{
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  specialized ControlWidgetConfiguration.controlWidgetConfigurationBodyError()();
}

{
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  specialized ControlWidgetTemplate.controlWidgetTemplateBodyError()();
}

uint64_t instantiation function for generic protocol witness table for _SceneModifier_Content<A>.BodyInput(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t specialized MutableCollection<>.sort(by:)(char **a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = *(a2 + 48);
  *(v4 + 48) = *(a2 + 32);
  *(v4 + 64) = v5;
  *(v4 + 80) = *(a2 + 64);
  v6 = *(a2 + 16);
  *(v4 + 16) = *a2;
  *(v4 + 32) = v6;
  v7 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v7);
  }

  v8 = *(v7 + 2);
  v10[0] = (v7 + 32);
  v10[1] = v8;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v10, a2);
  *a1 = v7;
}

Swift::Int specialized MutableCollection<>.sort(by:)(void **a1, char a2)
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
  }

  v5 = v4[2];
  v21[0] = (v4 + 4);
  v21[1] = v5;
  result = _minimumMergeRunLength(_:)(v5);
  if (result >= v5)
  {
    if (v5 >= 2)
    {
      v10 = -1;
      v11 = 1;
      v12 = v4 + 4;
      do
      {
        v13 = v4[2 * v11 + 4];
        v14 = v12;
        v15 = v10;
        do
        {
          v16 = (v13 + OBJC_IVAR____TtC7SwiftUIP33_60C465D0E37117769FC505C04DE5239A24UIKitFocusableFillerItem_logicalFrame);
          if (a2)
          {
            v16 = (v13 + OBJC_IVAR____TtC7SwiftUIP33_60C465D0E37117769FC505C04DE5239A24UIKitFocusableFillerItem_logicalFrame + 8);
          }

          v17 = (*v14 + OBJC_IVAR____TtC7SwiftUIP33_60C465D0E37117769FC505C04DE5239A24UIKitFocusableFillerItem_logicalFrame);
          if (a2)
          {
            ++v17;
          }

          if (*v16 >= *v17)
          {
            break;
          }

          v18 = v14[3];
          *(v14 + 1) = *v14;
          *v14 = v13;
          v14[1] = v18;
          v14 -= 2;
        }

        while (!__CFADD__(v15++, 1));
        ++v11;
        --v10;
        v12 += 2;
      }

      while (v11 != v5);
    }
  }

  else
  {
    v7 = result;
    v8 = v5 >> 1;
    if (v5 >= 2)
    {
      type metadata accessor for UIKitProxyFocusItem();
      v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v9 + 16) = v8;
    }

    else
    {
      v9 = MEMORY[0x1E69E7CC0];
    }

    v20[0] = v9 + 32;
    v20[1] = v8;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v20, v22, v21, v7, a2 & 1);
    *(v9 + 16) = 0;
  }

  *a1 = v4;
  return result;
}

__n128 one-time initialization function for zero()
{
  static HostingScrollView.PlatformGroupContainer.Viewport.zero = 0u;
  *&qword_1EAB09D20 = 0u;
  result = *MEMORY[0x1E69DDCE0];
  v1 = *(MEMORY[0x1E69DDCE0] + 16);
  xmmword_1EAB09D30 = *MEMORY[0x1E69DDCE0];
  *&qword_1EAB09D40 = v1;
  return result;
}

double HostingScrollView.PlatformGroupContainer.visibleBounds.getter()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v10.receiver = Strong;
    v10.super_class = type metadata accessor for HostingScrollView();
    objc_msgSendSuper2(&v10, sel_bounds);
    v2 = v1;
    [v2 contentOffset];
    v4 = v3;
    [v2 adjustedContentInset];
  }

  else
  {
    if (one-time initialization token for zero != -1)
    {
      swift_once();
    }

    v4 = *&qword_1EAB09D20;
  }

  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    v7 = type metadata accessor for HostingScrollView();
    v11.receiver = v6;
    v11.super_class = v7;
    objc_msgSendSuper2(&v11, sel_bounds);
    v8 = v6;
    [v8 contentOffset];
    [v8 adjustedContentInset];
  }

  else if (one-time initialization token for zero != -1)
  {
    swift_once();
  }

  return v4;
}

double HostingScrollView.PlatformGroupContainer.pageBounds.getter()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v36.receiver = Strong;
    v36.super_class = type metadata accessor for HostingScrollView();
    objc_msgSendSuper2(&v36, sel_bounds);
    v2 = v1;
    [v2 contentOffset];
    v35 = v3;
    [v2 adjustedContentInset];
  }

  else
  {
    if (one-time initialization token for zero != -1)
    {
      swift_once();
    }

    v35 = *&qword_1EAB09D20;
  }

  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    v6 = type metadata accessor for HostingScrollView();
    v37.receiver = v5;
    v37.super_class = v6;
    objc_msgSendSuper2(&v37, sel_bounds);
    v7 = v5;
    [v7 contentOffset];
    [v7 adjustedContentInset];
    v9 = v8;
  }

  else
  {
    if (one-time initialization token for zero != -1)
    {
      swift_once();
    }

    v9 = *(&xmmword_1EAB09D30 + 1);
  }

  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    v12 = type metadata accessor for HostingScrollView();
    v38.receiver = v11;
    v38.super_class = v12;
    objc_msgSendSuper2(&v38, sel_bounds);
    v13 = v11;
    [v13 contentOffset];
    [v13 adjustedContentInset];
  }

  else if (one-time initialization token for zero != -1)
  {
    swift_once();
  }

  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    v16 = type metadata accessor for HostingScrollView();
    v39.receiver = v15;
    v39.super_class = v16;
    objc_msgSendSuper2(&v39, sel_bounds);
    v17 = v15;
    [v17 contentOffset];
    [v17 adjustedContentInset];
  }

  else if (one-time initialization token for zero != -1)
  {
    swift_once();
  }

  v18 = swift_unknownObjectWeakLoadStrong();
  if (v18)
  {
    v19 = v18;
    v20 = type metadata accessor for HostingScrollView();
    v40.receiver = v19;
    v40.super_class = v20;
    objc_msgSendSuper2(&v40, sel_bounds);
    v21 = v19;
    [v21 contentOffset];
    [v21 adjustedContentInset];
  }

  else if (one-time initialization token for zero != -1)
  {
    swift_once();
  }

  v22 = swift_unknownObjectWeakLoadStrong();
  if (v22)
  {
    v23 = v22;
    v24 = type metadata accessor for HostingScrollView();
    v41.receiver = v23;
    v41.super_class = v24;
    objc_msgSendSuper2(&v41, sel_bounds);
    v25 = v23;
    [v25 contentOffset];
    [v25 adjustedContentInset];
  }

  else if (one-time initialization token for zero != -1)
  {
    swift_once();
  }

  v26 = swift_unknownObjectWeakLoadStrong();
  if (v26)
  {
    v27 = v26;
    v28 = type metadata accessor for HostingScrollView();
    v42.receiver = v27;
    v42.super_class = v28;
    objc_msgSendSuper2(&v42, sel_bounds);
    v29 = v27;
    [v29 contentOffset];
    [v29 adjustedContentInset];
  }

  else if (one-time initialization token for zero != -1)
  {
    swift_once();
  }

  v30 = swift_unknownObjectWeakLoadStrong();
  if (v30)
  {
    v31 = v30;
    v32 = type metadata accessor for HostingScrollView();
    v43.receiver = v31;
    v43.super_class = v32;
    objc_msgSendSuper2(&v43, sel_bounds);
    v33 = v31;
    [v33 contentOffset];
    [v33 adjustedContentInset];
  }

  else if (one-time initialization token for zero != -1)
  {
    swift_once();
  }

  return v35 + v9;
}

id HostingScrollView.PlatformGroupContainer.updateFocusScrollBoundaryMetrics(_:for:)(void *a1, id a2)
{
  result = [a2 parentFocusEnvironment];
  if (result)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = v6;
      [a2 frame];
      v8 = [v7 convertRect:v2 toView:?];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v37 = 1;
      v36 = 1;
      v35 = 1;
      v34 = 1;
      MEMORY[0x1EEE9AC00](v8);
      static Update.ensure<A>(_:)();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v18 = Strong;
        v33.receiver = Strong;
        v33.super_class = type metadata accessor for HostingScrollView();
        objc_msgSendSuper2(&v33, sel_bounds);
        v20 = v19;
        v21 = v18;
        [v21 contentOffset];
        v23 = v22;
        [v21 adjustedContentInset];
        v25 = v24;
        v27 = v26;
      }

      else
      {
        if (one-time initialization token for zero != -1)
        {
          swift_once();
        }

        v20 = *(&static HostingScrollView.PlatformGroupContainer.Viewport.zero + 1);
        v23 = *&qword_1EAB09D28;
        v25 = *&xmmword_1EAB09D30;
        v27 = *&qword_1EAB09D40;
      }

      v32 = v20 - (v25 + v27);
      if (v36)
      {
        v28 = 1;
        if (v34)
        {
          goto LABEL_19;
        }

LABEL_16:
        v40.origin.x = v10;
        v40.origin.y = v12;
        v40.size.width = v14;
        v40.size.height = v16;
        if (v20 + v23 - v27 <= CGRectGetMaxY(v40))
        {
          v43.origin.x = v10;
          v43.origin.y = v12;
          v43.size.width = v14;
          v43.size.height = v16;
          MinY = CGRectGetMinY(v43);
          [v2 bounds];
          v29 = CGRectGetMaxY(v44) - v32 <= MinY;
        }

        else
        {
          v29 = 0;
        }

        goto LABEL_21;
      }

      v39.origin.x = v10;
      v39.origin.y = v12;
      v39.size.width = v14;
      v39.size.height = v16;
      if (CGRectGetMinY(v39) <= v23 + v25)
      {
        v41.origin.x = v10;
        v41.origin.y = v12;
        v41.size.width = v14;
        v41.size.height = v16;
        MaxY = CGRectGetMaxY(v41);
        [v2 bounds];
        v28 = MaxY <= v32 + CGRectGetMinY(v42);
        if ((v34 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v28 = 0;
        if ((v34 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

LABEL_19:
      v29 = 1;
LABEL_21:
      [a1 setIsMinX_];
      [a1 setIsMinY_];
      [a1 setIsMaxX_];
      [a1 setIsMaxY_];
      return swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void closure #1 in HostingScrollView.PlatformGroupContainer.updateFocusScrollBoundaryMetrics(_:for:)(void *a1, BOOL *a2, BOOL *a3, BOOL *a4, BOOL *a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  swift_beginAccess();
  type metadata accessor for FocusableBorder?(0, &lazy cache variable for type metadata for FocusableBorder?, MEMORY[0x1E697E768], MEMORY[0x1E69E6720]);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue && (*(WeakValue + 64) & 1) == 0)
  {
    v42 = a9;
    v20 = *(WeakValue + 32);
    v19 = *(WeakValue + 40);
    v21 = *(WeakValue + 48);
    v22 = *(WeakValue + 56);
    v23 = [a1 traitCollection];
    [v23 displayScale];
    v25 = v24;

    v47 = v20;
    v48 = v22;
    v49 = v21;
    v26 = 1.0 / v25;
    FocusableBorder.bounds.getter();
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v45 = v33;
    v50.origin.x = a6;
    v50.origin.y = a7;
    v50.size.width = a8;
    v50.size.height = v42;
    MinX = CGRectGetMinX(v50);
    if (v26 == 1.0)
    {
      v46 = ceil(MinX);
      v51.origin.x = a6;
      v51.origin.y = a7;
      v51.size.width = a8;
      v51.size.height = v42;
      v44 = ceil(CGRectGetMinY(v51));
      v52.origin.x = a6;
      v52.origin.y = a7;
      v52.size.width = a8;
      v52.size.height = v42;
      v41 = floor(CGRectGetMaxX(v52));
      v53.origin.x = a6;
      v53.origin.y = a7;
      v53.size.width = a8;
      v53.size.height = v42;
      v35 = floor(CGRectGetMaxY(v53));
    }

    else
    {
      v46 = v26 * ceil(MinX / v26);
      v54.origin.x = a6;
      v54.origin.y = a7;
      v54.size.width = a8;
      v54.size.height = v42;
      v44 = v26 * ceil(CGRectGetMinY(v54) / v26);
      v55.origin.x = a6;
      v55.origin.y = a7;
      v55.size.width = a8;
      v55.size.height = v42;
      v41 = v26 * floor(CGRectGetMaxX(v55) / v26);
      v56.origin.x = a6;
      v56.origin.y = a7;
      v56.size.width = a8;
      v56.size.height = v42;
      v35 = v26 * floor(CGRectGetMaxY(v56) / v26);
    }

    v43 = v35;
    v57.origin.x = v28;
    v57.origin.y = v30;
    v57.size.width = v32;
    v57.size.height = v45;
    v36 = v19 + CGRectGetMinX(v57);
    if (v26 == 1.0)
    {
      v37 = ceil(v36);
      v58.origin.x = v28;
      v58.origin.y = v30;
      v58.size.width = v32;
      v58.size.height = v45;
      v38 = ceil(v47 + CGRectGetMinY(v58));
      v59.origin.x = v28;
      v59.origin.y = v30;
      v59.size.width = v32;
      v59.size.height = v45;
      v39 = floor(CGRectGetMaxX(v59) - v48);
      v60.origin.x = v28;
      v60.origin.y = v30;
      v60.size.width = v32;
      v60.size.height = v45;
      v40 = floor(CGRectGetMaxY(v60) - v49);
    }

    else
    {
      v37 = v26 * ceil(v36 / v26);
      v61.origin.x = v28;
      v61.origin.y = v30;
      v61.size.width = v32;
      v61.size.height = v45;
      v38 = v26 * ceil((v47 + CGRectGetMinY(v61)) / v26);
      v62.origin.x = v28;
      v62.origin.y = v30;
      v62.size.width = v32;
      v62.size.height = v45;
      v39 = v26 * floor((CGRectGetMaxX(v62) - v48) / v26);
      v63.origin.x = v28;
      v63.origin.y = v30;
      v63.size.width = v32;
      v63.size.height = v45;
      v40 = v26 * floor((CGRectGetMaxY(v63) - v49) / v26);
    }

    *a2 = v41 <= v37;
    *a3 = v43 <= v38;
    *a4 = v39 <= v46;
    *a5 = v40 <= v44;
  }
}

double HostingScrollView.PlatformGroupContainer.preferredFocusEnvironments.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCC7SwiftUI17HostingScrollView22PlatformGroupContainer_requestedFocusItem);
  if (v1)
  {
    ObjectType = swift_getObjectType();
    v3 = swift_conformsToProtocol2();
    if (v3)
    {
      v4 = *(v3 + 64);
      v5 = v3;
      swift_unknownObjectRetain_n();
      v4(ObjectType, v5);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRetain();
    }

    type metadata accessor for FocusableBorder?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v6 = swift_allocObject();
    *&result = 1;
    *(v6 + 16) = xmmword_18CD69590;
    *(v6 + 32) = v1;
  }

  return result;
}

uint64_t closure #1 in HostingScrollView.PlatformGroupContainer.focusItems(in:)@<X0>(void *a1@<X0>, unint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v7 = v6;
  v12 = a1;
  v49.receiver = a1;
  v49.super_class = type metadata accessor for HostingScrollView.PlatformGroupContainer();
  v14 = objc_msgSendSuper2(&v49, sel_focusItemsInRect_, a3, a4, a5, a6);
  type metadata accessor for _UISceneBSActionHandler(0, &lazy cache variable for type metadata for UIFocusItem);
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v48 = MEMORY[0x1E69E7CC0];
  if (v15 >> 62)
  {
LABEL_16:
    v16 = __CocoaSet.count.getter();
    v46 = a2;
    v47 = v12;
    if (v16)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v46 = a2;
    v47 = v12;
    if (v16)
    {
LABEL_3:
      v45 = v7;
      v17 = 0;
      a2 = v15 & 0xC000000000000001;
      v7 = v15 & 0xFFFFFFFFFFFFFF8;
      v50 = v15 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (a2)
        {
          MEMORY[0x18D00E9C0](v17, v15);
          v12 = (v17 + 1);
          if (__OFADD__(v17, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v12 = v47;
            v18 = v48;
            goto LABEL_18;
          }
        }

        else
        {
          if (v17 >= *(v7 + 16))
          {
            __break(1u);
            goto LABEL_16;
          }

          swift_unknownObjectRetain();
          v12 = (v17 + 1);
          if (__OFADD__(v17, 1))
          {
            goto LABEL_13;
          }
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          swift_unknownObjectRelease();
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v7 = v50;
        }

        ++v17;
        if (v12 == v16)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v18 = MEMORY[0x1E69E7CC0];
LABEL_18:

  *v46 = v18;
  v20 = specialized UIFocusEnvironment.nearestRenderer()(v19);
  if (!v20)
  {
    v32 = MEMORY[0x1E69E7CC0];
    goto LABEL_43;
  }

  v22 = v20;
  v23 = v21;
  ObjectType = swift_getObjectType();
  v25 = (*(v23 + 24))(ObjectType, v23);
  if (v22 == v12)
  {
LABEL_25:
    swift_unknownObjectRelease();
    if (v25)
    {
      goto LABEL_42;
    }

LABEL_40:
    v32 = MEMORY[0x1E69E7CC0];
    goto LABEL_43;
  }

  swift_getObjectType();
  v26 = swift_conformsToProtocol2();
  if (v26 && v12)
  {
    v27 = v26;
    v28 = swift_getObjectType();
    v29 = v12;
    v30 = UIFocusEnvironment.nearestRenderer()();
    if (v30)
    {
      v31 = v30;
      swift_unknownObjectRelease();
      if (v31 == v22)
      {
        v25 = (*(v27 + 56))(v28, v27);

        goto LABEL_25;
      }
    }

    v12 = v47;
  }

  for (i = v12; ; i = v39)
  {
    swift_getObjectType();
    v34 = swift_conformsToProtocol2();
    if (v34)
    {
      if (i)
      {
        v35 = v34;
        v36 = swift_getObjectType();
        v37 = (*(v35 + 8))(v36, v35);
        if (v37)
        {
          break;
        }
      }
    }

    swift_unknownObjectRelease();
LABEL_37:
    v39 = [i parentFocusEnvironment];
    swift_unknownObjectRelease();
    if (!v39)
    {
      swift_unknownObjectRelease();
      goto LABEL_40;
    }

    swift_unknownObjectRetain();
  }

  v25 = v37;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectRelease();
  if (!Strong || (swift_unknownObjectRelease(), Strong != v22))
  {

    goto LABEL_37;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
LABEL_42:
  v40 = v22 != v47;
  v41 = v47;
  v42 = specialized static FocusBridge.focusItems(responderNode:rect:host:skipRoot:)(v25, v41, v40, a3, a4, a5, a6);

  v32 = v42;
LABEL_43:
  specialized Array.append<A>(contentsOf:)(v32);
  v43 = HostingScrollView.PlatformGroupContainer.fillerFocusItems(in:)(a3, a4, a5, a6);
  return specialized Array.append<A>(contentsOf:)(v43);
}

unint64_t HostingScrollView.PlatformGroupContainer.fillerFocusItems(in:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  type metadata accessor for Logger?();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = HostingScrollView.PlatformGroupContainer.fillerAxis.getter();
  v66 = v12;
  v13 = MEMORY[0x1E69E7CC0];
  if (v12 == 2)
  {
    return v13;
  }

  MEMORY[0x1EEE9AC00](v12);
  *(&v59 - 2) = v4;
  type metadata accessor for [FocusableBounds]?(0, &lazy cache variable for type metadata for [FocusableFillerBounds]?, &lazy cache variable for type metadata for [FocusableFillerBounds], MEMORY[0x1E697FC28]);
  static Update.ensure<A>(_:)();
  v14 = v73;
  if (!v73)
  {
    v14 = v13;
  }

  v61 = v14;
  v15 = *(v14 + 16);
  if (!v15)
  {

    goto LABEL_34;
  }

  v62 = v4;
  v60 = v11;
  v67 = v66 & 1;
  v70 = v15 - 1;
  for (i = (v61 + 72); ; i += 14)
  {
    v17 = *(i - 3);
    v87 = *(i - 5);
    v88 = v17;
    v19 = *(i - 1);
    v18 = *i;
    v21 = i[1];
    v20 = i[2];
    v22 = *(i + 24);
    v23 = *(i + 25);
    *(v86 + 3) = *(i + 7);
    v86[0] = v23;
    v25 = i[4];
    v24 = i[5];
    v27 = i[6];
    v26 = i[7];
    v28 = *(i + 64);
    v29 = *(i - 5);
    v74 = *(i - 3);
    v73 = v29;
    v75 = v19;
    v76 = v18;
    v77 = v21;
    v78 = v20;
    v79 = v22;
    v30 = *(i + 25);
    *&v80[3] = *(i + 7);
    *v80 = v30;
    v81 = v25;
    v82 = v24;
    v68 = v27;
    v83 = v27;
    v84 = v26;
    v69 = v26;
    v85 = v28;
    FocusableFillerBounds.bounds.getter();
    v91.origin.x = v31;
    v91.origin.y = v32;
    v91.size.width = v33;
    v91.size.height = v34;
    v89.origin.x = a1;
    v89.origin.y = a2;
    v89.size.width = a3;
    v89.size.height = a4;
    v90 = CGRectIntersection(v89, v91);
    if (CGRectIsEmpty(v90))
    {
      goto LABEL_30;
    }

    if (v66)
    {
      v35 = v28;
    }

    else
    {
      v35 = v22;
    }

    if ((v35 & 1) == 0)
    {
      if (v66)
      {
        v37 = v69;
      }

      else
      {
        v37 = v20;
      }

      *&v65 = v37;
      if (v66)
      {
        v38 = v68;
      }

      else
      {
        v38 = v21;
      }

      *&v64 = v38;
      if (v66)
      {
        v39 = v24;
      }

      else
      {
        v39 = v18;
      }

      *(&v63 + 1) = v39;
      if (v66)
      {
        v40 = v25;
      }

      else
      {
        v40 = v19;
      }

      *&v63 = v40;
      v73 = v87;
      v74 = v88;
      v75 = v19;
      v76 = v18;
      v77 = v21;
      v78 = v20;
      v79 = v22;
      *v80 = v86[0];
      *&v80[3] = *(v86 + 3);
      v81 = v25;
      v82 = v24;
      v83 = v68;
      v84 = v69;
      v85 = v28;
      FocusableFillerBounds.bounds.getter();
      v71 = v63;
      *&v72 = v64;
      *(&v72 + 1) = v65;
      goto LABEL_29;
    }

    if (v67)
    {
      v36 = v22;
    }

    else
    {
      v36 = v28;
    }

    if ((v36 & 1) == 0)
    {
      v73 = v87;
      v74 = v88;
      v75 = v19;
      v76 = v18;
      v77 = v21;
      v78 = v20;
      v79 = v22;
      *v80 = v86[0];
      *&v80[3] = *(v86 + 3);
      v81 = v25;
      v82 = v24;
      v83 = v68;
      v84 = v69;
      v85 = v28;
      FocusableFillerBounds.bounds.getter();
      default argument 2 of FocusableFillerBounds.Metrics.init(size:spacing:lowerInset:upperInset:)();
      default argument 3 of FocusableFillerBounds.Metrics.init(size:spacing:lowerInset:upperInset:)();
      FocusableFillerBounds.Metrics.init(size:spacing:lowerInset:upperInset:)();
      v65 = v71;
      v64 = v72;
      v73 = v87;
      v74 = v88;
      v75 = v19;
      v76 = v18;
      v77 = v21;
      v78 = v20;
      v79 = v22;
      *v80 = v86[0];
      *&v80[3] = *(v86 + 3);
      v81 = v25;
      v82 = v24;
      v83 = v68;
      v84 = v69;
      v85 = v28;
      FocusableFillerBounds.bounds.getter();
      v72 = v64;
      v71 = v65;
LABEL_29:
      HostingScrollView.PlatformGroupContainer.addFillerItems(in:bounds:axis:metrics:)(v67, &v71);
    }

LABEL_30:
    if (!v70)
    {
      break;
    }

    --v70;
  }

  v11 = v60;
  v4 = v62;
LABEL_34:
  v13 = HostingScrollView.PlatformGroupContainer.queryFillerItems(in:)(a1, a2, a3, a4);
  static Log.focus.getter();
  v41 = type metadata accessor for Logger();
  v42 = *(v41 - 8);
  if ((*(v42 + 48))(v11, 1, v41) == 1)
  {
    outlined destroy of Logger?(v11);
  }

  else
  {

    v43 = v4;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v60 = v11;
      v46 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *&v87 = v70;
      *v46 = 134218498;
      if (v13 >> 62)
      {
        v47 = __CocoaSet.count.getter();
      }

      else
      {
        v47 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v46 + 4) = v47;

      *(v46 + 12) = 2080;
      MEMORY[0x18D00DFC0](&v73, v48, a1, a2, a3, a4);
      v49 = LoggableRect.description.getter();
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, &v87);

      *(v46 + 14) = v51;
      *(v46 + 22) = 2080;
      v52 = v43;
      v53 = _s7SwiftUI25UIKitFocusItemDescriptionVyACyxGxcfCAA17HostingScrollViewC22PlatformGroupContainerC_Tt0g5Tf4g_n();
      v55 = v54;

      v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v55, &v87);

      *(v46 + 24) = v56;
      _os_log_impl(&dword_18BD4A000, v44, v45, "filler items queried: %ld in: %s for: %s", v46, 0x20u);
      v57 = v70;
      swift_arrayDestroy();
      MEMORY[0x18D0110E0](v57, -1, -1);
      MEMORY[0x18D0110E0](v46, -1, -1);

      v11 = v60;
    }

    else
    {
    }

    (*(v42 + 8))(v11, v41);
  }

  return v13;
}

uint64_t HostingScrollView.PlatformGroupContainer.fillerAxis.getter()
{
  [v0 bounds];
  Height = CGRectGetHeight(v4);
  v5.origin.x = HostingScrollView.PlatformGroupContainer.pageBounds.getter();
  if (CGRectGetHeight(v5) < Height)
  {
    return 1;
  }

  [v0 bounds];
  Width = CGRectGetWidth(v6);
  v7.origin.x = HostingScrollView.PlatformGroupContainer.pageBounds.getter();
  return 2 * (CGRectGetWidth(v7) >= Width);
}

uint64_t HostingScrollView.PlatformGroupContainer.addFillerItems(in:bounds:axis:metrics:)(char a1, uint64_t *a2)
{
  v3 = v2;
  v123 = *a2;
  v122 = a2[1];
  v121 = a2[2];
  v120 = a2[3];
  v4 = a1 & 1;
  CGRect.range(in:)();
  v6 = v5;
  v8 = v7;
  CGRect.range(in:)();
  v118 = v10;
  v119 = v9;
  HostingScrollView.PlatformGroupContainer.visibleBounds.getter();
  CGRect.range(in:)();
  v12 = v11;
  v14 = v13;
  type metadata accessor for [FocusableBounds]?(0, &lazy cache variable for type metadata for [FocusableBounds]?, &lazy cache variable for type metadata for [FocusableBounds], MEMORY[0x1E697E780]);
  v15 = 0;
  static Update.ensure<A>(_:)();
  v16 = MEMORY[0x1E69E7CC0];
  if (v132)
  {
    v17 = v132;
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  v137 = v17;
  CGRect.range(in:)();
  v126 = v6;
  if (v18 > v6)
  {
    v20 = v18;
  }

  else
  {
    v20 = v6;
  }

  v117 = v8;
  if (v8 >= v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = v8;
  }

  if (v20 >= v21)
  {
  }

  if (v20 > v21)
  {
    goto LABEL_167;
  }

  v136[0] = v16;
  v116 = OBJC_IVAR____TtCC7SwiftUI17HostingScrollView22PlatformGroupContainer_fillerItems;

  v23 = specialized _ArrayProtocol.filter(_:)(v22, &v137, v20, v21, v4, v136);

  specialized MutableCollection<>.sort(by:)(v136, v4);
  v135 = v16;
  FocusableFillerBounds.Metrics.size.getter();
  v128 = v24;
  FocusableFillerBounds.Metrics.spacing.getter();
  v125 = v25;
  *&v132 = v123;
  *(&v132 + 1) = v122;
  *&v133 = v121;
  *(&v133 + 1) = v120;
  FocusableFillerBounds.Metrics.minSize.getter();
  v124 = v26;
  v15 = *(v137 + 2);
  if (v15)
  {
    v27 = v137 + 64;
    while (1)
    {
      v29 = *v27;
      v132 = *(v27 - 2);
      v133 = *(v27 - 1);
      v134 = v29;
      FocusableBounds.bounds.getter();
      CGRect.range(in:)();
      v32 = v30;
      v33 = v31;
      if (v30 <= v12)
      {
        v30 = v12;
      }

      if (v14 < v31)
      {
        v31 = v14;
      }

      if (v30 < v31)
      {
        break;
      }

      if ((v29 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_15:
      v27 += 40;
      if (!--v15)
      {
        goto LABEL_28;
      }
    }

    if (v30 > v31)
    {
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
      __break(1u);

      __break(1u);
      return result;
    }

LABEL_24:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
    }

    v35 = *(v16 + 2);
    v34 = *(v16 + 3);
    if (v35 >= v34 >> 1)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v16);
    }

    *(v16 + 2) = v35 + 1;
    v28 = &v16[16 * v35];
    *(v28 + 4) = v32;
    *(v28 + 5) = v33;
    goto LABEL_15;
  }

LABEL_28:
  v15 = *(v16 + 2);
  if (v15)
  {
    v36 = (v16 + 32);
    v37 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (*v36 > v20)
      {
        v38 = *v36;
      }

      else
      {
        v38 = v20;
      }

      v39 = v36[1];
      if (v21 < v39)
      {
        v39 = v21;
      }

      if (v38 < v39)
      {
        if (v38 > v39)
        {
          goto LABEL_165;
        }

        v129 = *v36;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v37 + 2) + 1, 1, v37);
        }

        v41 = *(v37 + 2);
        v40 = *(v37 + 3);
        v42 = v129;
        if (v41 >= v40 >> 1)
        {
          v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1, v37);
          v42 = v129;
          v37 = v43;
        }

        *(v37 + 2) = v41 + 1;
        *&v37[16 * v41 + 32] = v42;
      }

      v36 += 2;
      if (!--v15)
      {
        goto LABEL_44;
      }
    }
  }

  v37 = MEMORY[0x1E69E7CC0];
LABEL_44:

  if (v20 >= v12)
  {
    goto LABEL_96;
  }

  *&v132 = v37;

  v15 = 0;
  specialized MutableCollection<>.sort(by:)(&v132);
  if (v12 >= v21)
  {
    v44 = v21;
  }

  else
  {
    v44 = v12;
  }

  if (v20 > v44)
  {
    goto LABEL_168;
  }

  v45 = v132;
  *&v132 = v123;
  *(&v132 + 1) = v122;
  *&v133 = v121;
  *(&v133 + 1) = v120;
  FocusableFillerBounds.Metrics.lowerInset.getter();
  v47 = floor((v20 - v126 - v46 - v128) / (v128 + v125) + 1.0);
  if (v47 <= 0.0)
  {
    v47 = 0.0;
  }

  v48 = v126 + v46 + (v128 + v125) * v47;
  if (v48 >= v44)
  {

LABEL_96:
    v49 = MEMORY[0x1E69E7CC0];
    if (v14 >= v21)
    {
      goto LABEL_150;
    }

    goto LABEL_97;
  }

  v49 = MEMORY[0x1E69E7CC0];
  v127 = v44;
  do
  {
    v52 = *(v45 + 2);
    if (!v52)
    {
LABEL_56:
      v53 = v128;
LABEL_57:
      if (v4)
      {
        v54 = v118 - v119;
      }

      else
      {
        v54 = v53;
      }

      if (v4)
      {
        v55 = v53;
      }

      else
      {
        v55 = v118 - v119;
      }

      if (v4)
      {
        v56 = 0.0;
      }

      else
      {
        v56 = v48;
      }

      if (v4)
      {
        v57 = v48;
      }

      else
      {
        v57 = 0.0;
      }

      v58 = v136[0];
      v59 = v136[0][2];
      if (v59)
      {
        v60 = v136[0][4];
        swift_unknownObjectRetain();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || (v59 - 1) > v58[3] >> 1)
        {
          v58 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v59, 1, v58);
          v136[0] = v58;
        }

        specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 1, 0);
        v136[0] = v58;
      }

      else
      {
        v64 = type metadata accessor for UIKitFocusableFillerItem();
        v65 = objc_allocWithZone(v64);
        swift_unknownObjectWeakInit();
        v66 = &v65[OBJC_IVAR____TtC7SwiftUIP33_60C465D0E37117769FC505C04DE5239A24UIKitFocusableFillerItem_logicalFrame];
        *v66 = 0u;
        v66[1] = 0u;
        v67 = &v65[OBJC_IVAR____TtC7SwiftUIP33_60C465D0E37117769FC505C04DE5239A24UIKitFocusableFillerItem_focusableFrame];
        *v67 = 0u;
        *(v67 + 1) = 0u;
        v67[32] = 1;
        swift_unknownObjectWeakAssign();
        v65[OBJC_IVAR____TtC7SwiftUIP33_60C465D0E37117769FC505C04DE5239A24UIKitFocusableFillerItem_axis] = v4;
        v130.receiver = v65;
        v130.super_class = v64;
        v68 = objc_msgSendSuper2(&v130, sel_init);
        swift_beginAccess();
        v60 = v68;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v49[2] + 1, 1, v49);
        }

        v70 = v49[2];
        v69 = v49[3];
        if (v70 >= v69 >> 1)
        {
          v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v69 > 1), v70 + 1, 1, v49);
        }

        v49[2] = v70 + 1;
        v71 = &v49[2 * v70];
        v71[4] = v60;
        v71[5] = &protocol witness table for UIKitFocusableFillerItem;
        v135 = v49;
        swift_endAccess();
      }

      swift_unknownObjectRetain();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23[2] + 1, 1, v23);
      }

      v73 = v23[2];
      v72 = v23[3];
      if (v73 >= v72 >> 1)
      {
        v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v72 > 1), v73 + 1, 1, v23);
      }

      v23[2] = v73 + 1;
      v50 = &v23[2 * v73];
      v50[4] = v60;
      v50[5] = &protocol witness table for UIKitFocusableFillerItem;
      v51 = &v60[OBJC_IVAR____TtC7SwiftUIP33_60C465D0E37117769FC505C04DE5239A24UIKitFocusableFillerItem_logicalFrame];
      *v51 = v56;
      v51[1] = v57;
      v51[2] = v54;
      v51[3] = v55;
      swift_unknownObjectRelease();
      v44 = v127;
      goto LABEL_54;
    }

    while (*(v45 + 5) <= v48)
    {
      v63 = swift_isUniquelyReferenced_nonNull_native();
      if (!v63 || (v52 - 1) > *(v45 + 3) >> 1)
      {
        v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v63, v52, 1, v45);
      }

      v62 = *(v45 + 2);
      memmove(v45 + 32, v45 + 48, 16 * v62 - 16);
      v52 = v62 - 1;
      *(v45 + 2) = v52;
      if (!v52)
      {
        goto LABEL_56;
      }
    }

    v53 = *(v45 + 4) - v125 - v48;
    if (v44 - v48 < v53)
    {
      v53 = v44 - v48;
    }

    if (v124 <= v53)
    {
      if (v128 < v53)
      {
        v53 = v128;
      }

      goto LABEL_57;
    }

LABEL_54:
    v48 = v128 + v125 + v48;
  }

  while (v48 < v44);

  if (v14 < v21)
  {
LABEL_97:
    *&v132 = v37;

    v15 = 0;
    specialized MutableCollection<>.sort(by:)(&v132);

    if (v20 > v14)
    {
      v74 = v20;
    }

    else
    {
      v74 = v14;
    }

    if (v74 > v21)
    {
      goto LABEL_169;
    }

    v15 = v132;
    *&v132 = v123;
    *(&v132 + 1) = v122;
    *&v133 = v121;
    *(&v133 + 1) = v120;
    FocusableFillerBounds.Metrics.upperInset.getter();
    v76 = v117 - v75;
    v77 = v128 + v125;
    v78 = floor((v76 - v21 - v128) / (v128 + v125) + 1.0);
    if (v78 <= 0.0)
    {
      v78 = 0.0;
    }

    v79 = v76 - v77 * v78;
    if (v74 >= v79)
    {

      goto LABEL_151;
    }

    do
    {
      v82 = v15 + 16;
      v83 = *(v15 + 2);
      if (v83)
      {
        while (v79 <= *&v82[2 * v83])
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v15 = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
          }

          v82 = v15 + 16;
          v84 = *(v15 + 2);
          if (!v84)
          {
            __break(1u);
            goto LABEL_164;
          }

          v83 = v84 - 1;
          *v82 = v83;
          if (!v83)
          {
            goto LABEL_113;
          }
        }

        v85 = v79 - *&v82[2 * v83 + 1] - v125;
        if (v79 - v74 < v85)
        {
          v85 = v79 - v74;
        }

        if (v124 > v85)
        {
          goto LABEL_106;
        }

        if (v128 < v85)
        {
          v85 = v128;
        }
      }

      else
      {
LABEL_113:
        v85 = v128;
      }

      if (v4)
      {
        v86 = v118 - v119;
      }

      else
      {
        v86 = v85;
      }

      if (v4)
      {
        v87 = v85;
      }

      else
      {
        v87 = v118 - v119;
      }

      if (v4)
      {
        v88 = 0.0;
      }

      else
      {
        v88 = v79 - v85;
      }

      if (v4)
      {
        v89 = v79 - v85;
      }

      else
      {
        v89 = 0.0;
      }

      v90 = v136[0];
      if (v136[0][2])
      {
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v91 = v90[2];
          if (!v91)
          {
            goto LABEL_166;
          }
        }

        else
        {
          v90 = specialized _ArrayBuffer._consumeAndCreateNew()(v90);
          v91 = v90[2];
          if (!v91)
          {
            goto LABEL_166;
          }
        }

        v92 = v91 - 1;
        v93 = v90[2 * v92 + 4];
        v90[2] = v92;
        v136[0] = v90;
      }

      else
      {
        v94 = type metadata accessor for UIKitFocusableFillerItem();
        v95 = objc_allocWithZone(v94);
        swift_unknownObjectWeakInit();
        v96 = &v95[OBJC_IVAR____TtC7SwiftUIP33_60C465D0E37117769FC505C04DE5239A24UIKitFocusableFillerItem_logicalFrame];
        *v96 = 0u;
        v96[1] = 0u;
        v97 = &v95[OBJC_IVAR____TtC7SwiftUIP33_60C465D0E37117769FC505C04DE5239A24UIKitFocusableFillerItem_focusableFrame];
        *v97 = 0u;
        *(v97 + 1) = 0u;
        v97[32] = 1;
        swift_unknownObjectWeakAssign();
        v95[OBJC_IVAR____TtC7SwiftUIP33_60C465D0E37117769FC505C04DE5239A24UIKitFocusableFillerItem_axis] = v4;
        v131.receiver = v95;
        v131.super_class = v94;
        v98 = objc_msgSendSuper2(&v131, sel_init);
        swift_beginAccess();
        v93 = v98;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v49[2] + 1, 1, v49);
        }

        v100 = v49[2];
        v99 = v49[3];
        if (v100 >= v99 >> 1)
        {
          v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v99 > 1), v100 + 1, 1, v49);
        }

        v49[2] = v100 + 1;
        v101 = &v49[2 * v100];
        v101[4] = v93;
        v101[5] = &protocol witness table for UIKitFocusableFillerItem;
        v135 = v49;
        swift_endAccess();
      }

      swift_unknownObjectRetain();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23[2] + 1, 1, v23);
      }

      v103 = v23[2];
      v102 = v23[3];
      if (v103 >= v102 >> 1)
      {
        v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v102 > 1), v103 + 1, 1, v23);
      }

      v23[2] = v103 + 1;
      v80 = &v23[2 * v103];
      v80[4] = v93;
      v80[5] = &protocol witness table for UIKitFocusableFillerItem;
      v81 = &v93[OBJC_IVAR____TtC7SwiftUIP33_60C465D0E37117769FC505C04DE5239A24UIKitFocusableFillerItem_logicalFrame];
      *v81 = v88;
      v81[1] = v89;
      v81[2] = v86;
      v81[3] = v87;
      swift_unknownObjectRelease();
LABEL_106:
      v79 = v79 - v77;
    }

    while (v74 < v79);
  }

LABEL_150:

LABEL_151:
  v104 = v136[0];
  v105 = v136[0][2];
  if (v105)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIFocusSystem);
    v106 = v104 + 4;
    do
    {
      v107 = *v106;
      swift_unknownObjectRetain();
      v108 = static UIFocusSystem.focusSystem(for:)();
      if (v108)
      {
        v109 = v108;
        [v108 _focusEnvironmentWillDisappear_];
      }

      swift_unknownObjectRelease();
      v106 += 2;
      --v105;
    }

    while (v105);
  }

  *(v3 + v116) = v23;

  v110 = v49[2];
  if (v110)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIFocusSystem);
    v111 = v49 + 4;
    do
    {
      v112 = *v111;
      swift_unknownObjectRetain();
      v113 = static UIFocusSystem.focusSystem(for:)();
      if (v113)
      {
        v114 = v113;
        [v113 _focusEnvironmentDidAppear_];
      }

      swift_unknownObjectRelease();
      v111 += 2;
      --v110;
    }

    while (v110);
  }
}

uint64_t HostingScrollView.PlatformGroupContainer.queryFillerItems(in:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = *(v4 + OBJC_IVAR____TtCC7SwiftUI17HostingScrollView22PlatformGroupContainer_fillerItems);
  v10 = *(v9 + 16);

  if (v10)
  {
    v12 = 0;
    v13 = MEMORY[0x1E69E7CC0];
    do
    {
      v14 = v12;
      while (1)
      {
        if (v14 >= *(v9 + 16))
        {
          __break(1u);
          return result;
        }

        v12 = v14 + 1;
        v48 = *(v9 + 32 + 16 * v14);
        v15 = *(v48 + OBJC_IVAR____TtC7SwiftUIP33_60C465D0E37117769FC505C04DE5239A24UIKitFocusableFillerItem_logicalFrame);
        v16 = *(v48 + OBJC_IVAR____TtC7SwiftUIP33_60C465D0E37117769FC505C04DE5239A24UIKitFocusableFillerItem_logicalFrame + 8);
        v17 = *(v48 + OBJC_IVAR____TtC7SwiftUIP33_60C465D0E37117769FC505C04DE5239A24UIKitFocusableFillerItem_logicalFrame + 16);
        v18 = *(v48 + OBJC_IVAR____TtC7SwiftUIP33_60C465D0E37117769FC505C04DE5239A24UIKitFocusableFillerItem_logicalFrame + 24);
        swift_unknownObjectRetain();
        v49.origin.x = v15;
        v49.origin.y = v16;
        v49.size.width = v17;
        v49.size.height = v18;
        v52.origin.x = a1;
        v52.origin.y = a2;
        v52.size.width = a3;
        v52.size.height = a4;
        v50 = CGRectIntersection(v49, v52);
        if (!CGRectIsEmpty(v50))
        {
          break;
        }

        result = swift_unknownObjectRelease();
        ++v14;
        if (v10 == v12)
        {
          goto LABEL_15;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 16) + 1, 1);
      }

      v19 = v48;
      v21 = *(v13 + 16);
      v20 = *(v13 + 24);
      if (v21 >= v20 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
        v19 = v48;
      }

      *(v13 + 16) = v21 + 1;
      *(v13 + 16 * v21 + 32) = v19;
    }

    while (v10 - 1 != v14);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

LABEL_15:

  v22 = *(v13 + 16);
  if (v22)
  {
    v23 = (v13 + 32);
    do
    {
      v25 = *v23;
      v23 += 2;
      v24 = v25;
      v26 = *(v25 + OBJC_IVAR____TtC7SwiftUIP33_60C465D0E37117769FC505C04DE5239A24UIKitFocusableFillerItem_axis);
      v27 = *(v25 + OBJC_IVAR____TtC7SwiftUIP33_60C465D0E37117769FC505C04DE5239A24UIKitFocusableFillerItem_logicalFrame);
      v28 = *(v25 + OBJC_IVAR____TtC7SwiftUIP33_60C465D0E37117769FC505C04DE5239A24UIKitFocusableFillerItem_logicalFrame + 8);
      v29 = *(v25 + OBJC_IVAR____TtC7SwiftUIP33_60C465D0E37117769FC505C04DE5239A24UIKitFocusableFillerItem_logicalFrame + 16);
      v30 = *(v25 + OBJC_IVAR____TtC7SwiftUIP33_60C465D0E37117769FC505C04DE5239A24UIKitFocusableFillerItem_logicalFrame + 24);
      swift_unknownObjectRetain();
      v51.origin.x = a1;
      v51.origin.y = a2;
      v51.size.width = a3;
      v51.size.height = a4;
      v53.origin.x = v27;
      v53.origin.y = v28;
      v53.size.width = v29;
      v53.size.height = v30;
      CGRectIntersection(v51, v53);
      CGRect.range(in:)();
      v31 = a2;
      v32 = a4;
      v34 = v33;
      v35 = a1;
      v36 = a3;
      v38 = v37;
      CGRect.range(in:)();
      v40 = v38 - v34;
      a3 = v36;
      a1 = v35;
      v42 = v41 - v39;
      if (v26)
      {
        v43 = v39;
      }

      else
      {
        v43 = v34;
      }

      if (v26)
      {
        v39 = v34;
      }

      a4 = v32;
      a2 = v31;
      if (v26)
      {
        v44 = v42;
      }

      else
      {
        v44 = v40;
      }

      v45 = v24 + OBJC_IVAR____TtC7SwiftUIP33_60C465D0E37117769FC505C04DE5239A24UIKitFocusableFillerItem_focusableFrame;
      *v45 = v43;
      *(v45 + 8) = v39;
      if (v26)
      {
        v46 = v40;
      }

      else
      {
        v46 = v42;
      }

      *(v45 + 16) = v44;
      *(v45 + 24) = v46;
      *(v45 + 32) = 0;
      swift_unknownObjectRelease();
      --v22;
    }

    while (v22);
  }

  v47 = specialized _arrayForceCast<A, B>(_:)(v13);

  return v47;
}

void HostingScrollView.PlatformGroupContainer.SubstitutionStrategy.searchRect.getter()
{
  v2 = *(v0 + 8);
  v1 = *(v0 + 16);
  if ((*(v0 + 64) & 1) == 0)
  {
    goto LABEL_6;
  }

  if (v1 <= *(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  if (v2 > v1)
  {
    __break(1u);
LABEL_6:
    if (*(v0 + 24) < v2)
    {
      v2 = *(v0 + 24);
    }

    if (v2 > v1)
    {
      __break(1u);
    }
  }
}

uint64_t closure #1 in HostingScrollView.PlatformGroupContainer.pruneFillerItems()(uint64_t *a1, id a2, void **a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v12 = *a1;
  v13 = *a1 + OBJC_IVAR____TtC7SwiftUIP33_60C465D0E37117769FC505C04DE5239A24UIKitFocusableFillerItem_logicalFrame;
  v14 = *v13;
  v15 = *(v13 + 8);
  v16 = *(v13 + 16);
  v17 = *(v13 + 24);
  [a2 bounds];
  v28.origin.x = v14;
  v28.origin.y = v15;
  v28.size.width = v16;
  v28.size.height = v17;
  v25 = CGRectIntersection(v24, v28);
  v29.origin.x = v14;
  v29.origin.y = v15;
  v29.size.width = v16;
  v29.size.height = v17;
  if (CGRectEqualToRect(v25, v29))
  {
    v26.origin.x = a4;
    v26.origin.y = a5;
    v26.size.width = a6;
    v26.size.height = a7;
    v30.origin.x = v14;
    v30.origin.y = v15;
    v30.size.width = v16;
    v30.size.height = v17;
    v27 = CGRectIntersection(v26, v30);
    if (CGRectIsEmpty(v27))
    {
      return 1;
    }
  }

  v19 = *a3;
  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19[2] + 1, 1, v19);
    *a3 = v19;
  }

  v22 = v19[2];
  v21 = v19[3];
  if (v22 >= v21 >> 1)
  {
    v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v19);
    *a3 = v19;
  }

  result = 0;
  v19[2] = v22 + 1;
  v23 = &v19[2 * v22];
  v23[4] = v12;
  v23[5] = &protocol witness table for UIKitFocusableFillerItem;
  return result;
}

uint64_t HostingScrollView.PlatformGroupContainer.querySubstitute(for:)(_BYTE *a1)
{
  v1 = a1[OBJC_IVAR____TtC7SwiftUIP33_60C465D0E37117769FC505C04DE5239A24UIKitFocusableFillerItem_axis];
  [a1 frame];
  CGRect.range(in:)();
  ClosedRange<>.meanBound.getter();
  v22 = v2;
  CGRect.range(in:)();
  v4 = v3;
  v6 = v5;
  HostingScrollView.PlatformGroupContainer.visibleBounds.getter();
  CGRect.range(in:)();
  v8 = v7;
  v10 = v9;
  HostingScrollView.PlatformGroupContainer.visibleBounds.getter();
  CGRect.range(in:)();
  v12 = v11;
  v14 = v13;
  ClosedRange<>.meanBound.getter();
  v16 = v15;
  ClosedRange<>.meanBound.getter();
  v18 = v17;
  LOBYTE(v25) = v1;
  *(&v25 + 1) = v4;
  *&v26 = v6;
  *(&v26 + 1) = v8;
  *&v27 = v10;
  *(&v27 + 1) = v12;
  *&v28 = v14;
  *(&v28 + 1) = v22;
  v29 = v16 >= v17;
  result = HostingScrollView.PlatformGroupContainer.queryDeepestFocusableItem(strategy:)(&v25);
  if (!result)
  {
    if (v4 > v8)
    {
      v20 = v4;
    }

    else
    {
      v20 = v8;
    }

    if (v10 >= v6)
    {
      v21 = v6;
    }

    else
    {
      v21 = v10;
    }

    if (v20 >= v21)
    {
      return 0;
    }

    if (v20 > v21)
    {
      __break(1u);
    }

    else
    {
      if ((v6 - v4) * 0.5 > v21 - v20)
      {
        return 0;
      }

      v23[0] = v25;
      v23[1] = v26;
      v23[2] = v27;
      v23[3] = v28;
      v24 = v16 < v18;
      return HostingScrollView.PlatformGroupContainer.queryDeepestFocusableItem(strategy:)(v23);
    }
  }

  return result;
}

uint64_t HostingScrollView.PlatformGroupContainer.queryDeepestFocusableItem(strategy:)(uint64_t a1)
{
  v2 = v1;
  v79 = a1;
  HostingScrollView.PlatformGroupContainer.SubstitutionStrategy.searchRect.getter();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = specialized UIFocusEnvironment.nearestRenderer()();
  if (!v11)
  {
    goto LABEL_22;
  }

  v13 = v11;
  v14 = v12;
  ObjectType = swift_getObjectType();
  v16 = (*(v14 + 24))(ObjectType, v14);
  if (v13 == v1)
  {
LABEL_8:
    swift_unknownObjectRelease();
    if (v16)
    {
      goto LABEL_75;
    }

LABEL_22:
    v30 = MEMORY[0x1E69E7CC0];
    if (MEMORY[0x1E69E7CC0] >> 62)
    {
      goto LABEL_76;
    }

    goto LABEL_23;
  }

  swift_getObjectType();
  v17 = swift_conformsToProtocol2();
  if (v17 && v1)
  {
    v18 = v17;
    v19 = swift_getObjectType();
    v20 = v1;
    v21 = UIFocusEnvironment.nearestRenderer()();
    if (v21)
    {
      v22 = v21;
      swift_unknownObjectRelease();
      if (v22 == v13)
      {
        v16 = (*(v18 + 56))(v19, v18);

        goto LABEL_8;
      }
    }
  }

  for (i = v2; ; i = v29)
  {
    swift_getObjectType();
    v24 = swift_conformsToProtocol2();
    if (v24)
    {
      if (i)
      {
        v25 = v24;
        v26 = swift_getObjectType();
        v27 = (*(v25 + 8))(v26, v25);
        if (v27)
        {
          break;
        }
      }
    }

    swift_unknownObjectRelease();
LABEL_19:
    v29 = [i parentFocusEnvironment];
    swift_unknownObjectRelease();
    if (!v29)
    {
      swift_unknownObjectRelease();
      goto LABEL_22;
    }

    swift_unknownObjectRetain();
  }

  v16 = v27;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectRelease();
  if (!Strong || (swift_unknownObjectRelease(), Strong != v13))
  {

    goto LABEL_19;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
LABEL_75:
  v77 = v13 != v2;
  v78 = v2;
  v30 = specialized static FocusBridge.focusItems(responderNode:rect:host:skipRoot:)(v16, v78, v77, v4, v6, v8, v10);

  if (!(v30 >> 62))
  {
LABEL_23:
    v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_24;
  }

LABEL_76:
  v31 = __CocoaSet.count.getter();
LABEL_24:
  v32 = MEMORY[0x1E69E7CC0];
  if (!v31)
  {
LABEL_70:
    v82 = v32;

    specialized MutableCollection<>.sort(by:)(&v82, v79);

    if (*(v82 + 2))
    {
      v75 = *(v82 + 4);
      swift_unknownObjectRetain();
    }

    else
    {
      v75 = 0;
    }

    return v75;
  }

  v80 = v10;
  v81 = v8;
  while (2)
  {
    v33 = v30 >> 62;
    if (v30 >> 62)
    {
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_83;
      }

      if (!__CocoaSet.count.getter())
      {
        goto LABEL_84;
      }

LABEL_28:
      if ((v30 & 0xC000000000000001) != 0)
      {
        v34 = MEMORY[0x18D00E9C0](0, v30);
        v35 = v30 & 0xFFFFFFFFFFFFFF8;
        if (!v33)
        {
LABEL_31:
          v36 = *(v35 + 16);
          if (!v36)
          {
            goto LABEL_81;
          }

          goto LABEL_40;
        }
      }

      else
      {
        if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_78;
        }

        v34 = *(v30 + 32);
        swift_unknownObjectRetain();
        v35 = v30 & 0xFFFFFFFFFFFFFF8;
        if (!v33)
        {
          goto LABEL_31;
        }
      }

      if (!__CocoaSet.count.getter())
      {
        goto LABEL_81;
      }

      if (__CocoaSet.count.getter() < 1)
      {
        goto LABEL_82;
      }

      v36 = __CocoaSet.count.getter();
LABEL_40:
      v37 = v36 - 1;
      if (__OFSUB__(v36, 1))
      {
        goto LABEL_79;
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v33)
        {
          v38 = (v30 & 0xFFFFFFFFFFFFFF8);
          if (v37 <= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_48;
          }

          goto LABEL_47;
        }
      }

      else if (!v33)
      {
LABEL_47:
        v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v38 = (v30 & 0xFFFFFFFFFFFFFF8);
LABEL_48:
        swift_unknownObjectRelease();
        if (v30 >> 62)
        {
          v73 = __CocoaSet.count.getter();
          if (__OFSUB__(v73, 1))
          {
            goto LABEL_85;
          }

          memmove(v38 + 4, v38 + 5, 8 * (v73 - 1));
          v74 = __CocoaSet.count.getter();
          v40 = v74 - 1;
          if (__OFSUB__(v74, 1))
          {
            goto LABEL_80;
          }
        }

        else
        {
          v39 = v38[2];
          memmove(v38 + 4, v38 + 5, 8 * v39 - 8);
          v40 = v39 - 1;
          if (__OFSUB__(v39, 1))
          {
            goto LABEL_80;
          }
        }

        v38[2] = v40;
        v83 = v30;
        if (([swift_unknownObjectRetain() canBecomeFocused] & 1) != 0 && (v41 = objc_msgSend(v34, sel_parentFocusEnvironment)) != 0)
        {
          v42 = [v41 focusItemContainer];
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          if (v42)
          {
            v43 = v6;
            v44 = v4;
            v45 = [v42 coordinateSpace];
            [v34 frame];
            [v45 convertRect:objc_msgSend(v2 toCoordinateSpace:{sel_coordinateSpace), v46, v47, v48, v49}];
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            CGRect.range(in:)();
            v51 = v50;
            v53 = v52;
            CGRect.range(in:)();
            v55 = v54;
            v57 = v56;
            swift_unknownObjectRelease();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v32 + 2) + 1, 1, v32);
            }

            v59 = *(v32 + 2);
            v58 = *(v32 + 3);
            if (v59 >= v58 >> 1)
            {
              v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v59 + 1, 1, v32);
            }

            *(v32 + 2) = v59 + 1;
            v60 = &v32[40 * v59];
            *(v60 + 4) = v34;
            *(v60 + 5) = v51;
            *(v60 + 6) = v53;
            *(v60 + 7) = v55;
            *(v60 + 8) = v57;
            v4 = v44;
            v6 = v43;
            v10 = v80;
            v8 = v81;
            goto LABEL_62;
          }
        }

        else
        {
          swift_unknownObjectRelease();
        }

        v61 = [v34 focusItemContainer];
        if (v61)
        {
          v62 = v61;
          [objc_msgSend(v61 coordinateSpace)];
          v64 = v63;
          v66 = v65;
          v68 = v67;
          v70 = v69;
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v71 = [v62 focusItemsInRect_];
          type metadata accessor for _UISceneBSActionHandler(0, &lazy cache variable for type metadata for UIFocusItem);
          v72 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          specialized Array.append<A>(contentsOf:)(v72);
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
LABEL_62:
        v30 = v83;
        if (v83 >> 62)
        {
          if (!__CocoaSet.count.getter())
          {
            goto LABEL_70;
          }
        }

        else if (!*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_70;
        }

        continue;
      }

      __CocoaSet.count.getter();
      goto LABEL_47;
    }

    break;
  }

  if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_28;
  }

  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t closure #1 in HostingScrollView.PlatformGroupContainer.fillerFocusItems(in:)@<X0>(unint64_t *a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  swift_beginAccess();
  type metadata accessor for FocusableBorder?(0, a1, a2, MEMORY[0x1E69E62F8]);
  result = AGGraphGetWeakValue();
  if (result)
  {
  }

  *a3 = result;
  return result;
}

uint64_t FocusableBoundsTransform.value.getter()
{
  Value = AGGraphGetValue();
  v1 = *(Value + 8);
  v16 = *Value;
  v17 = v1;
  v2 = *(Value + 32);
  v18 = *(Value + 16);
  v19 = v2;
  type metadata accessor for CGPoint(0);

  v3 = AGGraphGetValue();
  ViewTransform.appendPosition(_:)(*v3);
  v4 = AGGraphGetValue();
  v12 = 0;
  v13 = 0;
  v14 = MEMORY[0x18D00B390](v4, v5, v6, v7);
  v15 = v8;
  static CoordinateSpace.scrollViewContent.getter();

  CGRect.convert(to:transform:)();

  outlined destroy of CoordinateSpace(v11);
  type metadata accessor for FocusableBorder?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<FocusableBounds>, MEMORY[0x1E697E780], MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_18CD63400;
  FocusableBounds.init(bounds:isLazyContainer:)();

  return v9;
}

uint64_t protocol witness for Rule.value.getter in conformance FocusableBoundsTransform@<X0>(uint64_t *a1@<X8>)
{
  result = FocusableBoundsTransform.value.getter();
  *a1 = result;
  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v11 = *(a5 + 48);
  *(v10 + 48) = *(a5 + 32);
  *(v10 + 64) = v11;
  *(v10 + 80) = *(a5 + 64);
  v12 = *(a5 + 16);
  *(v10 + 16) = *a5;
  *(v10 + 32) = v12;
  v34 = a2;
  if (a3 == a2)
  {
  }

  v13 = *a4;
  v36 = *(a5 + 56);
  v14 = *(a5 + 64);
  v15 = (v13 + 40 * a3);
  v16 = a1 - a3;
LABEL_4:
  v35 = a3;
  v17 = v13 + 40 * a3;
  v19 = *(v17 + 8);
  v18 = *(v17 + 16);
  v20 = v16;
  v21 = v15;
  while (1)
  {
    v22 = *(v21 - 3);
    v37 = *(v21 - 4);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    ClosedRange<>.meanBound.getter();
    v24 = vabdd_f64(v23, v36);
    ClosedRange<>.meanBound.getter();
    v26 = v25;
    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
    v28 = vabdd_f64(v26, v36);
    if (v14)
    {
      if (v19 != v37)
      {
        if (v19 >= v37)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }

LABEL_10:
      if (v24 >= v28)
      {
        goto LABEL_3;
      }

      goto LABEL_13;
    }

    if (v18 == v22)
    {
      goto LABEL_10;
    }

    if (v22 >= v18)
    {
      goto LABEL_3;
    }

LABEL_13:
    if (!v13)
    {
      break;
    }

    v29 = *v21;
    v19 = v21[1];
    v18 = v21[2];
    v30 = *(v21 + 3);
    v31 = *(v21 + 4);
    v32 = *(v21 - 3);
    *v21 = *(v21 - 5);
    *(v21 + 1) = v32;
    v21[4] = *(v21 - 1);
    *(v21 - 4) = v19;
    *(v21 - 3) = v18;
    *(v21 - 2) = v30;
    *(v21 - 1) = v31;
    *(v21 - 5) = v29;
    v21 -= 5;
    if (__CFADD__(v20++, 1))
    {
LABEL_3:
      ++a3;
      v15 += 5;
      --v16;
      if (v35 + 1 == v34)
      {
      }

      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  result = swift_allocObject();
  v11 = *(a5 + 48);
  *(result + 48) = *(a5 + 32);
  *(result + 64) = v11;
  *(result + 80) = *(a5 + 64);
  v12 = *(a5 + 16);
  *(result + 16) = *a5;
  *(result + 32) = v12;
  v13 = a3[1];
  v140 = a5;
  v142 = a3;
  if (v13 < 1)
  {
    v15 = MEMORY[0x1E69E7CC0];
LABEL_111:
    v17 = *a1;
    if (!*a1)
    {
      goto LABEL_151;
    }

    a4 = v15;
    v127 = swift_allocObject();
    v128 = *(a5 + 48);
    *(v127 + 48) = *(a5 + 32);
    *(v127 + 64) = v128;
    *(v127 + 80) = *(a5 + 64);
    v129 = *(a5 + 16);
    *(v127 + 16) = *a5;
    *(v127 + 32) = v129;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v130 = a4;
    }

    else
    {
LABEL_145:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(a4);
      v130 = result;
    }

    v131 = *(v130 + 16);
    if (v131 >= 2)
    {
      a4 = 40;
      while (*v142)
      {
        v132 = *(v130 + 16 * v131);
        v133 = v130;
        v134 = *(v130 + 16 * (v131 - 1) + 40);
        specialized _merge<A>(low:mid:high:buffer:by:)((*v142 + 40 * v132), (*v142 + 40 * *(v130 + 16 * (v131 - 1) + 32)), *v142 + 40 * v134, v17, v140);
        if (v6)
        {
          goto LABEL_123;
        }

        if (v134 < v132)
        {
          goto LABEL_138;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v133 = specialized _ArrayBuffer._consumeAndCreateNew()(v133);
        }

        if (v131 - 2 >= *(v133 + 2))
        {
          goto LABEL_139;
        }

        v135 = &v133[16 * v131];
        *v135 = v132;
        *(v135 + 1) = v134;
        result = specialized Array.remove(at:)(v131 - 1);
        v130 = v133;
        v131 = *(v133 + 2);
        if (v131 <= 1)
        {
          goto LABEL_123;
        }
      }

      goto LABEL_149;
    }

LABEL_123:
  }

  v14 = 0;
  v15 = MEMORY[0x1E69E7CC0];
  v138 = a4;
  while (1)
  {
    v16 = v14;
    v17 = v14 + 1;
    v143 = v15;
    if (v14 + 1 < v13)
    {
      v18 = *a3;
      v19 = v14 + 1;
      v20 = v18 + 40 * v17;
      v17 = *v20;
      v21 = *(v20 + 16);
      v148 = *(v20 + 8);
      v22 = v18 + 40 * v16;
      v23 = *(v22 + 8);
      v24 = *(v22 + 16);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      ClosedRange<>.meanBound.getter();
      v25 = *(a5 + 56);
      v27 = vabdd_f64(v26, v25);
      ClosedRange<>.meanBound.getter();
      v29 = v28;
      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      v146 = v25;
      v30 = *(a5 + 64);
      v136 = v6;
      v31 = v27 < vabdd_f64(v29, v25);
      if (v30)
      {
        v32 = v148 == v23;
        v33 = v148 < v23;
      }

      else
      {
        v33 = v24 < v21;
        v32 = v21 == v24;
      }

      if (v32)
      {
        v34 = v31;
      }

      else
      {
        v34 = v33;
      }

      v35 = 0;
      v36 = v16 + 2;
      a4 = v18 + 40 * v16 + 56;
      v37 = v19;
      do
      {
        v6 = v36;
        v41 = v37;
        v42 = v35;
        if (v36 >= v13)
        {
          break;
        }

        v17 = *(a4 + 24);
        v43 = *(a4 + 40);
        v149 = *(a4 + 32);
        v44 = *(a4 - 8);
        v45 = *a4;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        ClosedRange<>.meanBound.getter();
        v47 = vabdd_f64(v46, v146);
        ClosedRange<>.meanBound.getter();
        v49 = v48;
        swift_unknownObjectRelease();
        result = swift_unknownObjectRelease();
        v50 = v47 < vabdd_f64(v49, v146);
        if (v30)
        {
          v38 = v149 == v44;
          v39 = v149 < v44;
        }

        else
        {
          v39 = v45 < v43;
          v38 = v43 == v45;
        }

        v40 = v38 ? v50 : v39;
        v36 = v6 + 1;
        a4 += 40;
        v37 = v41 + 1;
        v35 = v42 + 40;
      }

      while (v34 == v40);
      if (v34)
      {
        if (v6 < v16)
        {
          goto LABEL_142;
        }

        if (v16 >= v6)
        {
          v17 = v6;
          v6 = v136;
          a4 = v138;
        }

        else
        {
          v51 = 0;
          v52 = v16;
          a4 = v138;
          do
          {
            if (v52 != v41)
            {
              if (!*v142)
              {
                goto LABEL_148;
              }

              v53 = *v142 + 40 * v16;
              v54 = v53 + v51;
              v55 = *(v53 + v51);
              v56 = v53 + v42;
              v57 = *(v54 + 8);
              v58 = *(v54 + 24);
              v59 = *(v56 + 72);
              v60 = *(v56 + 56);
              *v54 = *(v56 + 40);
              *(v54 + 16) = v60;
              *(v54 + 32) = v59;
              *(v56 + 40) = v55;
              *(v56 + 48) = v57;
              *(v56 + 64) = v58;
            }

            ++v52;
            v42 -= 40;
            v51 += 40;
          }

          while (v52 < v41--);
          v17 = v6;
          v6 = v136;
        }

        a5 = v140;
      }

      else
      {
        v17 = v6;
        v6 = v136;
        a4 = v138;
        a5 = v140;
      }

      a3 = v142;
    }

    v62 = a3[1];
    if (v17 < v62)
    {
      if (__OFSUB__(v17, v16))
      {
        goto LABEL_141;
      }

      if ((v17 - v16) < a4)
      {
        v63 = v16 + a4;
        if (__OFADD__(v16, a4))
        {
          goto LABEL_143;
        }

        if (v63 >= v62)
        {
          v63 = a3[1];
        }

        if (v63 < v16)
        {
LABEL_144:
          __break(1u);
          goto LABEL_145;
        }

        if (v17 != v63)
        {
          break;
        }
      }
    }

LABEL_58:
    if (v17 < v16)
    {
      goto LABEL_140;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v145 = v17;
    if (result)
    {
      v15 = v143;
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v143 + 16) + 1, 1, v143);
      v15 = result;
    }

    a4 = *(v15 + 16);
    v83 = *(v15 + 24);
    v17 = a4 + 1;
    if (a4 >= v83 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v83 > 1), a4 + 1, 1, v15);
      v15 = result;
    }

    *(v15 + 16) = v17;
    v84 = v15 + 16 * a4;
    *(v84 + 32) = v16;
    *(v84 + 40) = v145;
    v85 = *a1;
    if (!*a1)
    {
      goto LABEL_150;
    }

    if (a4)
    {
      while (1)
      {
        v86 = v17 - 1;
        if (v17 >= 4)
        {
          break;
        }

        if (v17 == 3)
        {
          v87 = *(v15 + 32);
          v88 = *(v15 + 40);
          v97 = __OFSUB__(v88, v87);
          v89 = v88 - v87;
          v90 = v97;
LABEL_78:
          if (v90)
          {
            goto LABEL_129;
          }

          v103 = (v15 + 16 * v17);
          v105 = *v103;
          v104 = v103[1];
          v106 = __OFSUB__(v104, v105);
          v107 = v104 - v105;
          v108 = v106;
          if (v106)
          {
            goto LABEL_132;
          }

          v109 = (v15 + 32 + 16 * v86);
          v111 = *v109;
          v110 = v109[1];
          v97 = __OFSUB__(v110, v111);
          v112 = v110 - v111;
          if (v97)
          {
            goto LABEL_135;
          }

          if (__OFADD__(v107, v112))
          {
            goto LABEL_136;
          }

          if (v107 + v112 >= v89)
          {
            if (v89 < v112)
            {
              v86 = v17 - 2;
            }

            goto LABEL_99;
          }

          goto LABEL_92;
        }

        v113 = (v15 + 16 * v17);
        v115 = *v113;
        v114 = v113[1];
        v97 = __OFSUB__(v114, v115);
        v107 = v114 - v115;
        v108 = v97;
LABEL_92:
        if (v108)
        {
          goto LABEL_131;
        }

        v116 = v15 + 16 * v86;
        v118 = *(v116 + 32);
        v117 = *(v116 + 40);
        v97 = __OFSUB__(v117, v118);
        v119 = v117 - v118;
        if (v97)
        {
          goto LABEL_134;
        }

        if (v119 < v107)
        {
          goto LABEL_3;
        }

LABEL_99:
        a4 = v86 - 1;
        if (v86 - 1 >= v17)
        {
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
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
          goto LABEL_144;
        }

        if (!*a3)
        {
          goto LABEL_147;
        }

        v17 = v15;
        v124 = *(v15 + 32 + 16 * a4);
        v125 = *(v15 + 32 + 16 * v86 + 8);
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 40 * v124), (*a3 + 40 * *(v15 + 32 + 16 * v86)), *a3 + 40 * v125, v85, a5);
        if (v6)
        {
        }

        if (v125 < v124)
        {
          goto LABEL_125;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew()(v17);
        }

        if (a4 >= *(v17 + 16))
        {
          goto LABEL_126;
        }

        v126 = v17 + 16 * a4;
        *(v126 + 32) = v124;
        *(v126 + 40) = v125;
        result = specialized Array.remove(at:)(v86);
        v15 = v17;
        v17 = *(v17 + 16);
        if (v17 <= 1)
        {
          goto LABEL_3;
        }
      }

      v91 = v15 + 32 + 16 * v17;
      v92 = *(v91 - 64);
      v93 = *(v91 - 56);
      v97 = __OFSUB__(v93, v92);
      v94 = v93 - v92;
      if (v97)
      {
        goto LABEL_127;
      }

      v96 = *(v91 - 48);
      v95 = *(v91 - 40);
      v97 = __OFSUB__(v95, v96);
      v89 = v95 - v96;
      v90 = v97;
      if (v97)
      {
        goto LABEL_128;
      }

      v98 = (v15 + 16 * v17);
      v100 = *v98;
      v99 = v98[1];
      v97 = __OFSUB__(v99, v100);
      v101 = v99 - v100;
      if (v97)
      {
        goto LABEL_130;
      }

      v97 = __OFADD__(v89, v101);
      v102 = v89 + v101;
      if (v97)
      {
        goto LABEL_133;
      }

      if (v102 >= v94)
      {
        v120 = (v15 + 32 + 16 * v86);
        v122 = *v120;
        v121 = v120[1];
        v97 = __OFSUB__(v121, v122);
        v123 = v121 - v122;
        if (v97)
        {
          goto LABEL_137;
        }

        if (v89 < v123)
        {
          v86 = v17 - 2;
        }

        goto LABEL_99;
      }

      goto LABEL_78;
    }

LABEL_3:
    v13 = a3[1];
    v14 = v145;
    a4 = v138;
    if (v145 >= v13)
    {
      goto LABEL_111;
    }
  }

  v137 = v6;
  v64 = *a3;
  v147 = *(a5 + 56);
  v65 = *(a5 + 64);
  a4 = *a3 + 40 * v17;
  v66 = v16 - v17;
  v141 = v63;
LABEL_44:
  v144 = v17;
  v67 = v64 + 40 * v17;
  v69 = *(v67 + 8);
  v68 = *(v67 + 16);
  v70 = v66;
  v71 = a4;
  while (1)
  {
    v72 = *(v71 - 24);
    v150 = *(v71 - 32);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    ClosedRange<>.meanBound.getter();
    v74 = vabdd_f64(v73, v147);
    ClosedRange<>.meanBound.getter();
    v76 = v75;
    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
    v77 = vabdd_f64(v76, v147);
    if (v65)
    {
      if (v69 != v150)
      {
        if (v69 >= v150)
        {
          goto LABEL_43;
        }

        goto LABEL_53;
      }

LABEL_50:
      if (v74 >= v77)
      {
        goto LABEL_43;
      }

      goto LABEL_53;
    }

    if (v68 == v72)
    {
      goto LABEL_50;
    }

    if (v72 >= v68)
    {
      goto LABEL_43;
    }

LABEL_53:
    if (!v64)
    {
      break;
    }

    v78 = *v71;
    v69 = *(v71 + 8);
    v68 = *(v71 + 16);
    v79 = *(v71 + 24);
    v80 = *(v71 + 32);
    v81 = *(v71 - 24);
    *v71 = *(v71 - 40);
    *(v71 + 16) = v81;
    *(v71 + 32) = *(v71 - 8);
    *(v71 - 32) = v69;
    *(v71 - 24) = v68;
    *(v71 - 16) = v79;
    *(v71 - 8) = v80;
    *(v71 - 40) = v78;
    v71 -= 40;
    if (__CFADD__(v70++, 1))
    {
LABEL_43:
      v17 = v144 + 1;
      a4 += 40;
      --v66;
      if (v144 + 1 != v141)
      {
        goto LABEL_44;
      }

      v17 = v141;
      v6 = v137;
      a5 = v140;
      a3 = v142;
      goto LABEL_58;
    }
  }

  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
  return result;
}

unint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, char a5)
{
  v129 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_148:
    v5 = *v129;
    if (*v129)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_181;
      }

      goto LABEL_150;
    }

    goto LABEL_186;
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v10 = &unk_1EAA24000;
  while (1)
  {
    v11 = v8 + 1;
    if (v8 + 1 < v7)
    {
      v12 = 16 * v8;
      v13 = (*a3 + 16 * v8);
      v16 = *v13;
      v14 = v13 + 4;
      v15 = v16;
      v17 = v10[94];
      v18 = (*(*a3 + 16 * v11) + v17);
      v20 = *v18;
      v19 = v18[1];
      if (a5)
      {
        v21 = v18[1];
      }

      else
      {
        v21 = *v18;
      }

      v22 = (v15 + v17);
      v23 = v15 + v17 + 8;
      if (a5)
      {
        v22 = v23;
      }

      v24 = *v22;
      v25 = v8 + 2;
      while (v7 != v25)
      {
        v26 = *v14;
        v14 += 2;
        v27 = (v26 + v17);
        if ((a5 & 1) == 0)
        {
          v19 = v20;
        }

        v20 = *v27;
        v28 = v27[1];
        if (a5)
        {
          v29 = v27[1];
        }

        else
        {
          v29 = *v27;
        }

        v30 = v29 >= v19;
        ++v25;
        v19 = v28;
        if ((((v21 < v24) ^ v30) & 1) == 0)
        {
          v11 = v25 - 1;
          if (v21 >= v24)
          {
            goto LABEL_29;
          }

          goto LABEL_21;
        }
      }

      v11 = v7;
      if (v21 >= v24)
      {
        goto LABEL_29;
      }

LABEL_21:
      if (v11 < v8)
      {
        goto LABEL_177;
      }

      if (v8 < v11)
      {
        v31 = 16 * v11 - 16;
        v32 = v11;
        v33 = v8;
        do
        {
          if (v33 != --v32)
          {
            v34 = *a3;
            if (!*a3)
            {
LABEL_183:
              __break(1u);
              goto LABEL_184;
            }

            v35 = *(v34 + v12);
            *(v34 + v12) = *(v34 + v31);
            *(v34 + v31) = v35;
          }

          ++v33;
          v31 -= 16;
          v12 += 16;
        }

        while (v33 < v32);
        v7 = a3[1];
      }
    }

LABEL_29:
    if (v11 < v7)
    {
      if (__OFSUB__(v11, v8))
      {
        goto LABEL_176;
      }

      if (v11 - v8 < a4)
      {
        break;
      }
    }

LABEL_50:
    if (v11 < v8)
    {
      goto LABEL_173;
    }

    v131 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
    }

    v48 = *(v9 + 2);
    v47 = *(v9 + 3);
    v49 = v48 + 1;
    if (v48 >= v47 >> 1)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, v9);
    }

    *(v9 + 2) = v49;
    v50 = &v9[16 * v48];
    *(v50 + 4) = v8;
    *(v50 + 5) = v131;
    result = *v129;
    if (!*v129)
    {
LABEL_184:
      __break(1u);
      goto LABEL_185;
    }

    if (v48)
    {
      v138 = *v129;
      while (1)
      {
        v51 = v49 - 1;
        if (v49 >= 4)
        {
          break;
        }

        if (v49 == 3)
        {
          v52 = *(v9 + 4);
          v53 = *(v9 + 5);
          v62 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          v55 = v62;
LABEL_71:
          if (v55)
          {
            goto LABEL_164;
          }

          v68 = &v9[16 * v49];
          v70 = *v68;
          v69 = *(v68 + 1);
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_167;
          }

          v74 = &v9[16 * v51 + 32];
          v76 = *v74;
          v75 = *(v74 + 1);
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_170;
          }

          if (__OFADD__(v72, v77))
          {
            goto LABEL_171;
          }

          if (v72 + v77 >= v54)
          {
            if (v54 < v77)
            {
              v51 = v49 - 2;
            }

            goto LABEL_92;
          }

          goto LABEL_85;
        }

        v78 = &v9[16 * v49];
        v80 = *v78;
        v79 = *(v78 + 1);
        v62 = __OFSUB__(v79, v80);
        v72 = v79 - v80;
        v73 = v62;
LABEL_85:
        if (v73)
        {
          goto LABEL_166;
        }

        v81 = &v9[16 * v51];
        v83 = *(v81 + 4);
        v82 = *(v81 + 5);
        v62 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v62)
        {
          goto LABEL_169;
        }

        if (v84 < v72)
        {
          goto LABEL_3;
        }

LABEL_92:
        if (v51 - 1 >= v49)
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
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
          goto LABEL_179;
        }

        v89 = *a3;
        if (!*a3)
        {
          __break(1u);
          goto LABEL_183;
        }

        v136 = v9;
        v137 = v51;
        v133 = v51 - 1;
        v90 = *&v9[16 * v51 + 16];
        v91 = *&v9[16 * v51 + 32];
        v134 = *&v9[16 * v51 + 40];
        v135 = v90;
        v92 = 16 * v90;
        v93 = (v89 + 16 * v90);
        v9 = (16 * v91);
        v94 = (v89 + 16 * v91);
        v95 = (v89 + 16 * v134);
        v96 = 16 * v91 - 16 * v90;
        v97 = 16 * v134 - 16 * v91;
        if (v96 < v97)
        {
          if (v93 != result || v94 <= result)
          {
            memmove(result, (v89 + 16 * v90), 16 * v91 - 16 * v90);
            result = v138;
          }

          v98 = (result + v96);
          v99 = v137;
          if (v96 < 1 || 16 * v134 <= v9)
          {
            v101 = result;
            v111 = v93;
            v102 = v136;
LABEL_136:
            v103 = v134;
            v5 = v135;
            goto LABEL_138;
          }

          v100 = OBJC_IVAR____TtC7SwiftUIP33_60C465D0E37117769FC505C04DE5239A24UIKitFocusableFillerItem_logicalFrame;
          v101 = result;
          v5 = v135;
          v102 = v136;
          v103 = v134;
          while (2)
          {
            v104 = *v101;
            v105 = (*v94 + v100);
            if (a5)
            {
              ++v105;
            }

            v106 = *v105;
            v107 = (v104 + v100);
            v108 = v104 + v100 + 8;
            if (a5)
            {
              v107 = v108;
            }

            if (v106 >= *v107)
            {
              v109 = v101;
              v110 = v93 == v101;
              v101 += 16;
              if (!v110)
              {
                goto LABEL_110;
              }
            }

            else
            {
              v109 = v94;
              v110 = v93 == v94;
              v94 += 16;
              if (!v110)
              {
LABEL_110:
                *v93 = *v109;
              }
            }

            v93 += 16;
            if (v101 >= v98 || v94 >= v95)
            {
              v111 = v93;
              goto LABEL_138;
            }

            continue;
          }
        }

        if (v94 != result || v95 <= result)
        {
          memmove(result, (v89 + 16 * v91), 16 * v134 - 16 * v91);
          result = v138;
        }

        v98 = (result + v97);
        if (v97 < 1 || v9 <= v92)
        {
          v101 = result;
          v111 = v94;
          v102 = v136;
          v99 = v137;
          goto LABEL_136;
        }

        v112 = OBJC_IVAR____TtC7SwiftUIP33_60C465D0E37117769FC505C04DE5239A24UIKitFocusableFillerItem_logicalFrame;
        v102 = v136;
        v99 = v137;
        v103 = v134;
        v5 = v135;
        do
        {
          v111 = v94 - 16;
          v95 -= 16;
          v113 = v98;
          v101 = v138;
          while (1)
          {
            v114 = *(v113 - 2);
            v113 -= 16;
            v115 = v95 + 16;
            v116 = *v111;
            v117 = (v114 + v112);
            v118 = v114 + v112 + 8;
            if (a5)
            {
              v117 = v118;
            }

            v119 = *v117;
            v120 = (v116 + v112);
            v121 = v116 + v112 + 8;
            if (a5)
            {
              v120 = v121;
            }

            if (v119 < *v120)
            {
              break;
            }

            if (v115 != v98)
            {
              *v95 = *v113;
            }

            v95 -= 16;
            v98 = v113;
            if (v113 <= v138)
            {
              v98 = v113;
              v111 = v94;
              goto LABEL_138;
            }
          }

          if (v115 != v94)
          {
            *v95 = *v111;
          }

          if (v98 <= v138)
          {
            break;
          }

          v94 -= 16;
        }

        while (v93 < v111);
LABEL_138:
        v122 = v98 - v101 + (v98 - v101 < 0 ? 0xFuLL : 0);
        if (v111 != v101 || v111 >= &v101[v122 & 0xFFFFFFFFFFFFFFF0])
        {
          memmove(v111, v101, 16 * (v122 >> 4));
        }

        if (v103 < v5)
        {
          goto LABEL_160;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v102 = specialized _ArrayBuffer._consumeAndCreateNew()(v102);
        }

        if (v99 > *(v102 + 2))
        {
          goto LABEL_161;
        }

        v123 = &v102[16 * v133];
        *(v123 + 4) = v5;
        *(v123 + 5) = v103;
        specialized Array.remove(at:)(v99);
        v9 = v102;
        v49 = *(v102 + 2);
        result = v138;
        if (v49 <= 1)
        {
          goto LABEL_3;
        }
      }

      v56 = &v9[16 * v49 + 32];
      v57 = *(v56 - 64);
      v58 = *(v56 - 56);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_162;
      }

      v61 = *(v56 - 48);
      v60 = *(v56 - 40);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_163;
      }

      v63 = &v9[16 * v49];
      v65 = *v63;
      v64 = *(v63 + 1);
      v62 = __OFSUB__(v64, v65);
      v66 = v64 - v65;
      if (v62)
      {
        goto LABEL_165;
      }

      v62 = __OFADD__(v54, v66);
      v67 = v54 + v66;
      if (v62)
      {
        goto LABEL_168;
      }

      if (v67 >= v59)
      {
        v85 = &v9[16 * v51 + 32];
        v87 = *v85;
        v86 = *(v85 + 1);
        v62 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v62)
        {
          goto LABEL_172;
        }

        if (v54 < v88)
        {
          v51 = v49 - 2;
        }

        goto LABEL_92;
      }

      goto LABEL_71;
    }

LABEL_3:
    v8 = v131;
    v7 = a3[1];
    v10 = &unk_1EAA24000;
    if (v131 >= v7)
    {
      goto LABEL_148;
    }
  }

  if (__OFADD__(v8, a4))
  {
    goto LABEL_178;
  }

  if (v8 + a4 < v7)
  {
    v7 = v8 + a4;
  }

  if (v7 >= v8)
  {
    if (v11 != v7)
    {
      v36 = *a3;
      v37 = v8 - v11;
      v38 = *a3 + 16 * v11 - 16;
      do
      {
        v39 = *(v36 + 16 * v11);
        v40 = v38;
        v41 = v37;
        do
        {
          v42 = v10[94];
          v43 = (v39 + v42);
          if (a5)
          {
            v43 = (v39 + v42 + 8);
          }

          v44 = (*v40 + v42);
          if (a5)
          {
            ++v44;
          }

          if (*v43 >= *v44)
          {
            break;
          }

          if (!v36)
          {
            goto LABEL_180;
          }

          v45 = *(v40 + 24);
          *(v40 + 16) = *v40;
          *v40 = v39;
          *(v40 + 8) = v45;
          v40 -= 16;
        }

        while (!__CFADD__(v41++, 1));
        ++v11;
        --v37;
        v38 += 16;
      }

      while (v11 != v7);
      v11 = v7;
    }

    goto LABEL_50;
  }

LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  result = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
  v9 = result;
LABEL_150:
  v124 = *(v9 + 2);
  if (v124 < 2)
  {
  }

  while (*a3)
  {
    v125 = *&v9[16 * v124];
    v126 = *&v9[16 * v124 + 24];
    specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * v125), (*a3 + 16 * *&v9[16 * v124 + 16]), (*a3 + 16 * v126), v5, a5 & 1);
    if (v130)
    {
    }

    if (v126 < v125)
    {
      goto LABEL_174;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
    }

    if (v124 - 2 >= *(v9 + 2))
    {
      goto LABEL_175;
    }

    v127 = &v9[16 * v124];
    *v127 = v125;
    *(v127 + 1) = v126;
    result = specialized Array.remove(at:)(v124 - 1);
    v124 = *(v9 + 2);
    if (v124 <= 1)
    {
    }
  }

LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(double *a1, double *a2, unint64_t a3, double *a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v11 = *(a5 + 48);
  *(v10 + 48) = *(a5 + 32);
  *(v10 + 64) = v11;
  *(v10 + 80) = *(a5 + 64);
  v12 = *(a5 + 16);
  *(v10 + 16) = *a5;
  *(v10 + 32) = v12;
  v13 = (a2 - a1) / 40;
  v14 = (a3 - a2) / 40;
  if (v13 < v14)
  {
    if (a4 != a1 || &a1[5 * v13] <= a4)
    {
      memmove(a4, a1, 40 * v13);
    }

    v15 = &a4[5 * v13];
    if (a2 - a1 < 40)
    {
LABEL_6:
      a2 = a1;
      goto LABEL_45;
    }

    while (1)
    {
      if (a2 >= a3)
      {
        goto LABEL_6;
      }

      v20 = a2[2];
      v46 = a2[1];
      v22 = a4[1];
      v21 = a4[2];
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      ClosedRange<>.meanBound.getter();
      v23 = *(a5 + 56);
      v25 = vabdd_f64(v24, v23);
      ClosedRange<>.meanBound.getter();
      v27 = v26;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v28 = vabdd_f64(v27, v23);
      if (*(a5 + 64))
      {
        break;
      }

      if (v20 == v21)
      {
        goto LABEL_16;
      }

      if (v21 >= v20)
      {
LABEL_19:
        v16 = a4;
        v17 = a1 == a4;
        a4 += 5;
        if (v17)
        {
          goto LABEL_9;
        }

LABEL_8:
        v18 = *v16;
        v19 = *(v16 + 1);
        a1[4] = v16[4];
        *a1 = v18;
        *(a1 + 1) = v19;
        goto LABEL_9;
      }

LABEL_7:
      v16 = a2;
      v17 = a1 == a2;
      a2 += 5;
      if (!v17)
      {
        goto LABEL_8;
      }

LABEL_9:
      a1 += 5;
      if (a4 >= v15)
      {
        goto LABEL_6;
      }
    }

    if (v46 != v22)
    {
      if (v46 >= v22)
      {
        goto LABEL_19;
      }

      goto LABEL_7;
    }

LABEL_16:
    if (v25 >= v28)
    {
      goto LABEL_19;
    }

    goto LABEL_7;
  }

  if (a4 != a2 || &a2[5 * v14] <= a4)
  {
    memmove(a4, a2, 40 * v14);
  }

  v15 = &a4[5 * v14];
  if ((a3 - a2) >= 40 && a2 > a1)
  {
    while (2)
    {
      v45 = a2 - 5;
      a3 -= 40;
      v29 = v15;
      while (1)
      {
        v29 -= 40;
        v30 = *(v29 + 16);
        v47 = *(v29 + 8);
        v32 = *(a2 - 4);
        v31 = *(a2 - 3);
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        ClosedRange<>.meanBound.getter();
        v33 = *(a5 + 56);
        v35 = vabdd_f64(v34, v33);
        ClosedRange<>.meanBound.getter();
        v37 = v36;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v38 = vabdd_f64(v37, v33);
        if ((*(a5 + 64) & 1) == 0)
        {
          break;
        }

        if (v47 == v32)
        {
          goto LABEL_34;
        }

        if (v47 < v32)
        {
          goto LABEL_39;
        }

LABEL_37:
        if ((a3 + 40) != v15)
        {
          v39 = *v29;
          v40 = *(v29 + 16);
          *(a3 + 32) = *(v29 + 32);
          *a3 = v39;
          *(a3 + 16) = v40;
        }

        a3 -= 40;
        v15 = v29;
        if (v29 <= a4)
        {
          v15 = v29;
          goto LABEL_45;
        }
      }

      if (v30 != v31)
      {
        if (v31 < v30)
        {
LABEL_39:
          if ((a3 + 40) != a2)
          {
            v41 = *v45;
            v42 = *(a2 - 3);
            *(a3 + 32) = *(a2 - 1);
            *a3 = v41;
            *(a3 + 16) = v42;
          }

          if (v15 <= a4 || (a2 -= 5, v45 <= a1))
          {
            a2 = v45;
            goto LABEL_45;
          }

          continue;
        }

        goto LABEL_37;
      }

      break;
    }

LABEL_34:
    if (v35 < v38)
    {
      goto LABEL_39;
    }

    goto LABEL_37;
  }

LABEL_45:
  v43 = (v15 - a4) / 40;
  if (a2 != a4 || a2 >= &a4[5 * v43])
  {
    memmove(a2, a4, 40 * v43);
  }

  return 1;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *__src, char *a3, char *a4, char a5)
{
  v5 = a4;
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v10 = __src - __dst;
  v11 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v11 = __src - __dst;
  }

  v12 = v11 >> 4;
  v13 = a3 - __src;
  v14 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v14 = a3 - __src;
  }

  v15 = v14 >> 4;
  if (v12 >= v14 >> 4)
  {
    if (a4 != __src || &__src[16 * v15] <= a4)
    {
      memmove(a4, __src, 16 * v15);
    }

    v16 = &v5[16 * v15];
    if (v13 >= 16 && v7 > v8)
    {
      v25 = OBJC_IVAR____TtC7SwiftUIP33_60C465D0E37117769FC505C04DE5239A24UIKitFocusableFillerItem_logicalFrame;
LABEL_31:
      v26 = v7 - 16;
      v6 -= 16;
      v27 = v16;
      do
      {
        v28 = *(v27 - 2);
        v27 -= 16;
        v29 = v6 + 16;
        v30 = *v26;
        v31 = (v28 + v25);
        v32 = v28 + v25 + 8;
        if (a5)
        {
          v31 = v32;
        }

        v33 = *v31;
        v34 = (v30 + v25);
        v35 = v30 + v25 + 8;
        if (a5)
        {
          v34 = v35;
        }

        if (v33 < *v34)
        {
          if (v29 != v7)
          {
            *v6 = *v26;
          }

          if (v16 <= v5 || (v7 -= 16, v26 <= v8))
          {
            v7 = v26;
            goto LABEL_46;
          }

          goto LABEL_31;
        }

        if (v29 != v16)
        {
          *v6 = *v27;
        }

        v6 -= 16;
        v16 = v27;
      }

      while (v27 > v5);
      v16 = v27;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[16 * v12] <= a4)
    {
      memmove(a4, __dst, 16 * v12);
    }

    v16 = &v5[16 * v12];
    if (v10 >= 16 && v7 < v6)
    {
      v17 = OBJC_IVAR____TtC7SwiftUIP33_60C465D0E37117769FC505C04DE5239A24UIKitFocusableFillerItem_logicalFrame;
      while (1)
      {
        v18 = *v5;
        v19 = (*v7 + v17);
        if (a5)
        {
          ++v19;
        }

        v20 = *v19;
        v21 = (v18 + v17);
        v22 = v18 + v17 + 8;
        if (a5)
        {
          v21 = v22;
        }

        if (v20 >= *v21)
        {
          break;
        }

        v23 = v7;
        v24 = v8 == v7;
        v7 += 16;
        if (!v24)
        {
          goto LABEL_21;
        }

LABEL_22:
        v8 += 16;
        if (v5 >= v16 || v7 >= v6)
        {
          goto LABEL_24;
        }
      }

      v23 = v5;
      v24 = v8 == v5;
      v5 += 16;
      if (v24)
      {
        goto LABEL_22;
      }

LABEL_21:
      *v8 = *v23;
      goto LABEL_22;
    }

LABEL_24:
    v7 = v8;
  }

LABEL_46:
  v36 = v16 - v5 + (v16 - v5 < 0 ? 0xFuLL : 0);
  if (v7 != v5 || v7 >= &v5[v36 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v7, v5, 16 * (v36 >> 4));
  }

  return 1;
}

uint64_t specialized _ArrayProtocol.filter(_:)(uint64_t result, void *a2, void **a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v8 = result;
  v9 = *(result + 16);
  if (v9)
  {
    v16 = 0;
    v17 = MEMORY[0x1E69E7CC0];
    while (v16 < *(v8 + 16))
    {
      v21 = *(v8 + 16 * v16 + 32);
      v22 = v21;
      swift_unknownObjectRetain();
      v18 = closure #1 in HostingScrollView.PlatformGroupContainer.pruneFillerItems()(&v22, a2, a3, a4, a5, a6, a7);
      if (v7)
      {

        swift_unknownObjectRelease();
        return v17;
      }

      if (v18)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v23 = v17;
        if ((result & 1) == 0)
        {
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 16) + 1, 1);
          v17 = v23;
        }

        v20 = *(v17 + 16);
        v19 = *(v17 + 24);
        if (v20 >= v19 >> 1)
        {
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
          v17 = v23;
        }

        *(v17 + 16) = v20 + 1;
        *(v17 + 16 * v20 + 32) = v21;
      }

      else
      {
        result = swift_unknownObjectRelease();
      }

      if (v9 == ++v16)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
LABEL_14:

    return v17;
  }

  return result;
}

uint64_t specialized _ArrayProtocol.filter(_:)(uint64_t result, char **a2, double a3, double a4, uint64_t a5, void **a6)
{
  v6 = *(result + 16);
  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v10 = 0;
  v11 = result + 32;
  v12 = MEMORY[0x1E69E7CC0];
  do
  {
    v29 = v12;
    for (i = v10; ; ++i)
    {
      if (i >= v6)
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        return result;
      }

      v10 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_33;
      }

      v30 = *(v11 + 16 * i);
      type metadata accessor for UIKitFocusableFillerItem();
      swift_unknownObjectRetain();
      if (UIFocusItem.isFocused.getter())
      {
        break;
      }

      result = CGRect.range(in:)();
      if (v14 <= a3)
      {
        v14 = a3;
      }

      if (v15 > a4)
      {
        v15 = a4;
      }

      if (v14 >= v15)
      {
        goto LABEL_24;
      }

      if (v14 > v15)
      {
        goto LABEL_34;
      }

      v16 = *a6;
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a6 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16[2] + 1, 1, v16);
        *a6 = v16;
      }

      v19 = v16[2];
      v18 = v16[3];
      if (v19 >= v18 >> 1)
      {
        v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v16);
        *a6 = v16;
      }

      v16[2] = v19 + 1;
      v20 = &v16[2 * v19];
      v20[4] = v30;
      v20[5] = &protocol witness table for UIKitFocusableFillerItem;
      result = swift_unknownObjectRelease();
      if (v10 == v6)
      {
        return v12;
      }
    }

    FocusableBounds.init(bounds:isLazyContainer:)();
    v21 = *a2;
    v22 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v21;
    if ((v22 & 1) == 0)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 2) + 1, 1, v21);
      *a2 = v21;
    }

    v24 = *(v21 + 2);
    v23 = *(v21 + 3);
    if (v24 >= v23 >> 1)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v21);
      *a2 = v21;
    }

    *(v21 + 2) = v24 + 1;
    v25 = &v21[40 * v24];
    *(v25 + 2) = v31;
    *(v25 + 3) = v32;
    v25[64] = v33;
LABEL_24:
    v12 = v29;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 16) + 1, 1);
      v12 = v29;
    }

    v27 = *(v12 + 16);
    v26 = *(v12 + 24);
    if (v27 >= v26 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1);
      v12 = v29;
    }

    *(v12 + 16) = v27 + 1;
    *(v12 + 16 * v27 + 32) = v30;
  }

  while (v10 != v6);
  return v12;
}

uint64_t _s7SwiftUI25UIKitFocusItemDescriptionVyACyxGxcfCSo07UIFocusE0_p_Tt0g5Tf4e_nAA0c15FocusableFillerE033_60C465D0E37117769FC505C04DE5239ALLC_Tg5Tf4g_n(void *a1)
{
  swift_getObjectType();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
  v2 = dynamic_cast_existential_1_superclass_conditional(a1);
  if (v2)
  {
    v4 = v2;
    v5 = v3;
  }

  else
  {
    swift_getObjectType();
    v6 = swift_conformsToProtocol2();
    if (v6 && a1)
    {
      v5 = v6 | 0x4000000000000000;
    }

    else
    {
      v7 = swift_conformsToProtocol2();
      v8 = v7 | 0x8000000000000000;
      if (!a1)
      {
        v8 = 0xC000000000000000;
      }

      if (v7)
      {
        v5 = v8;
      }

      else
      {
        v5 = 0xC000000000000000;
      }
    }

    v4 = a1;
  }

  swift_unknownObjectRetain();
  MEMORY[0x18D00C9B0](60, 0xE100000000000000);
  v9 = specialized UIKitFocusItemDescription.Category.name.getter(v4, v5);
  MEMORY[0x18D00C9B0](v9);

  MEMORY[0x18D00C9B0](8250, 0xE200000000000000);
  _print_unlocked<A, B>(_:_:)();
  v10 = specialized UIKitFocusItemDescription.Category.attributes.getter(v4, v5);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = (v10 + 40);
    do
    {
      v13 = *(v12 - 1);
      v14 = *v12;

      MEMORY[0x18D00C9B0](v13, v14);

      MEMORY[0x18D00C9B0](8251, 0xE200000000000000);

      v12 += 2;
      --v11;
    }

    while (v11);
  }

  MEMORY[0x18D00C9B0](62, 0xE100000000000000);

  return 0;
}

void specialized HostingScrollView.PlatformGroupContainer.didUpdateFocus(in:with:)(void *a1)
{
  type metadata accessor for Logger?();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - v8;
  v10 = OBJC_IVAR____TtCC7SwiftUI17HostingScrollView22PlatformGroupContainer_requestedFocusItem;
  if (*&v1[OBJC_IVAR____TtCC7SwiftUI17HostingScrollView22PlatformGroupContainer_requestedFocusItem] || [a1 previouslyFocusedItem] && (swift_getObjectType(), swift_unknownObjectRelease(), swift_conformsToProtocol2()))
  {
    static Log.focus.getter();
    v11 = type metadata accessor for Logger();
    v12 = *(v11 - 8);
    v13 = *(v12 + 48);
    if (v13(v5, 1, v11) == 1)
    {
      outlined destroy of Logger?(v5);
LABEL_21:
      *&v1[v10] = 0;
      swift_unknownObjectRelease();
      HostingScrollView.PlatformGroupContainer.pruneFillerItems()();
      return;
    }

    v14 = [a1 nextFocusedItem];
    v15 = *&v1[v10];
    if (v14)
    {
      if (!v15)
      {
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        v17 = 1;
        goto LABEL_16;
      }

      v16 = v14;
      swift_unknownObjectRelease();
      if (v16 == v15)
      {
LABEL_15:
        (*(v12 + 16))(v9, v5, v11);
        v17 = 0;
LABEL_16:
        (*(v12 + 56))(v9, v17, 1, v11);
        v18 = *(v12 + 8);
        v18(v5, v11);
        if (v13(v9, 1, v11) == 1)
        {
          outlined destroy of Logger?(v9);
        }

        else
        {
          v32 = v1;
          v19 = v1;
          v20 = Logger.logObject.getter();
          v21 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            v31 = v21;
            v23 = v22;
            v30 = swift_slowAlloc();
            v33 = v30;
            *v23 = 136315138;
            v24 = v19;
            v25 = _s7SwiftUI25UIKitFocusItemDescriptionVyACyxGxcfCAA17HostingScrollViewC22PlatformGroupContainerC_Tt0g5Tf4g_n();
            v27 = v26;

            v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v33);

            *(v23 + 4) = v28;
            _os_log_impl(&dword_18BD4A000, v20, v31, "filler substituted in: %s", v23, 0xCu);
            v29 = v30;
            __swift_destroy_boxed_opaque_existential_1(v30);
            MEMORY[0x18D0110E0](v29, -1, -1);
            MEMORY[0x18D0110E0](v23, -1, -1);
          }

          v18(v9, v11);
          v1 = v32;
        }

        goto LABEL_21;
      }
    }

    else if (!v15)
    {
      swift_unknownObjectRetain();
      goto LABEL_15;
    }

    v17 = 1;
    goto LABEL_16;
  }
}

uint64_t specialized UIKitFocusableFillerItem.didUpdateFocus(in:with:)()
{
  type metadata accessor for Logger?();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.focus.getter();
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return outlined destroy of Logger?(v3);
  }

  v7 = v0;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315138;
    v12 = v7;
    v13 = _s7SwiftUI25UIKitFocusItemDescriptionVyACyxGxcfCAA0c15FocusableFillerE033_60C465D0E37117769FC505C04DE5239ALLC_Tt0g5Tf4g_n(v12);
    v15 = v14;

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v18);

    *(v10 + 4) = v16;
    _os_log_impl(&dword_18BD4A000, v8, v9, "focus changed for: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x18D0110E0](v11, -1, -1);
    MEMORY[0x18D0110E0](v10, -1, -1);
  }

  return (*(v5 + 8))(v3, v4);
}

void type metadata accessor for [FocusableBounds]?(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    type metadata accessor for FocusableBorder?(255, a3, a4, MEMORY[0x1E69E62F8]);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for ClosedRange<CGFloat>()
{
  if (!lazy cache variable for type metadata for ClosedRange<CGFloat>)
  {
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    v0 = type metadata accessor for ClosedRange();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ClosedRange<CGFloat>);
    }
  }
}

unint64_t type metadata accessor for UIKitProxyFocusItem()
{
  result = lazy cache variable for type metadata for UIKitProxyFocusItem;
  if (!lazy cache variable for type metadata for UIKitProxyFocusItem)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIKitProxyFocusItem);
  }

  return result;
}

void type metadata accessor for FocusableBorder?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t initializeWithCopy for HostingScrollView.PlatformGroupContainer.SubstitutionCandidate(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  swift_unknownObjectRetain();
  return a1;
}

void *assignWithCopy for HostingScrollView.PlatformGroupContainer.SubstitutionCandidate(void *a1, void *a2)
{
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];
  return a1;
}

uint64_t assignWithTake for HostingScrollView.PlatformGroupContainer.SubstitutionCandidate(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  swift_unknownObjectRelease();
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t getEnumTagSinglePayload for HostingScrollView.PlatformGroupContainer.SubstitutionStrategy(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[65])
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

uint64_t storeEnumTagSinglePayload for HostingScrollView.PlatformGroupContainer.SubstitutionStrategy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HostingScrollView.PlatformGroupContainer.SubstitutionStrategy.SortOrder and conformance HostingScrollView.PlatformGroupContainer.SubstitutionStrategy.SortOrder()
{
  result = lazy protocol witness table cache variable for type HostingScrollView.PlatformGroupContainer.SubstitutionStrategy.SortOrder and conformance HostingScrollView.PlatformGroupContainer.SubstitutionStrategy.SortOrder;
  if (!lazy protocol witness table cache variable for type HostingScrollView.PlatformGroupContainer.SubstitutionStrategy.SortOrder and conformance HostingScrollView.PlatformGroupContainer.SubstitutionStrategy.SortOrder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HostingScrollView.PlatformGroupContainer.SubstitutionStrategy.SortOrder and conformance HostingScrollView.PlatformGroupContainer.SubstitutionStrategy.SortOrder);
  }

  return result;
}

uint64_t outlined copy of HoverEffectGroupInfo.Identifier(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 - 1 <= 1)
  {
  }

  return result;
}

uint64_t destroy for ContentHoverEffect(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 != 3)
  {
    outlined consume of HoverEffectGroupInfo.Identifier(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24));
    if ((v1 - 1) >= 2)
    {
    }
  }
}

uint64_t outlined consume of HoverEffectGroupInfo.Identifier(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 - 1 <= 1)
  {
  }

  return result;
}

uint64_t initializeWithCopy for ContentHoverEffect(uint64_t a1, uint64_t *a2)
{
  v4 = a2[5];
  if (v4 == 3)
  {
    v5 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v5;
    *(a1 + 32) = *(a2 + 2);
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    v8 = a2[2];
    v9 = *(a2 + 24);
    outlined copy of HoverEffectGroupInfo.Identifier(*a2, v7, v8, v9);
    *a1 = v6;
    *(a1 + 8) = v7;
    *(a1 + 16) = v8;
    *(a1 + 24) = v9;
    *(a1 + 25) = *(a2 + 25);
    if ((v4 - 1) >= 2)
    {
      *(a1 + 32) = a2[4];
      *(a1 + 40) = v4;
    }

    else
    {
      *(a1 + 32) = *(a2 + 2);
    }
  }

  *(a1 + 48) = *(a2 + 48);
  v10 = a2[8];
  *(a1 + 56) = a2[7];
  *(a1 + 64) = v10;

  return a1;
}

uint64_t assignWithCopy for ContentHoverEffect(uint64_t a1, uint64_t *a2)
{
  v4 = a2[5];
  if (*(a1 + 40) != 3)
  {
    if (v4 == 3)
    {
      outlined destroy of HoverEffectGroup(a1);
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      *a1 = *a2;
      *(a1 + 16) = v8;
      *(a1 + 32) = v7;
      goto LABEL_13;
    }

    v14 = *a2;
    v15 = a2[1];
    v16 = a2[2];
    v17 = *(a2 + 24);
    outlined copy of HoverEffectGroupInfo.Identifier(*a2, v15, v16, v17);
    v18 = *a1;
    v19 = *(a1 + 8);
    v20 = *(a1 + 16);
    *a1 = v14;
    *(a1 + 8) = v15;
    *(a1 + 16) = v16;
    v21 = *(a1 + 24);
    *(a1 + 24) = v17;
    outlined consume of HoverEffectGroupInfo.Identifier(v18, v19, v20, v21);
    *(a1 + 25) = *(a2 + 25);
    v13 = a2[5] - 1;
    if ((*(a1 + 40) - 1) >= 2)
    {
      if (v13 >= 2)
      {
        *(a1 + 32) = a2[4];
        *(a1 + 40) = a2[5];

        goto LABEL_13;
      }

      outlined destroy of String?(a1 + 32);
      goto LABEL_12;
    }

LABEL_8:
    if (v13 >= 2)
    {
      *(a1 + 32) = a2[4];
      *(a1 + 40) = a2[5];

      goto LABEL_13;
    }

LABEL_12:
    *(a1 + 32) = *(a2 + 2);
    goto LABEL_13;
  }

  if (v4 != 3)
  {
    v9 = *a2;
    v10 = a2[1];
    v11 = a2[2];
    v12 = *(a2 + 24);
    outlined copy of HoverEffectGroupInfo.Identifier(*a2, v10, v11, v12);
    *a1 = v9;
    *(a1 + 8) = v10;
    *(a1 + 16) = v11;
    *(a1 + 24) = v12;
    *(a1 + 25) = *(a2 + 25);
    v13 = a2[5] - 1;
    goto LABEL_8;
  }

  v5 = *a2;
  v6 = *(a2 + 2);
  *(a1 + 16) = *(a2 + 1);
  *(a1 + 32) = v6;
  *a1 = v5;
LABEL_13:
  *(a1 + 48) = *(a2 + 48);
  v22 = a2[8];
  *(a1 + 56) = a2[7];
  *(a1 + 64) = v22;

  return a1;
}

uint64_t outlined destroy of String?(uint64_t a1)
{
  type metadata accessor for String?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t assignWithTake for ContentHoverEffect(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == 3)
  {
    goto LABEL_4;
  }

  v4 = *(a2 + 40);
  if (v4 == 3)
  {
    outlined destroy of HoverEffectGroup(a1);
LABEL_4:
    v5 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v5;
    *(a1 + 32) = *(a2 + 32);
    goto LABEL_5;
  }

  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v7;
  v12 = *(a1 + 24);
  *(a1 + 24) = v8;
  outlined consume of HoverEffectGroupInfo.Identifier(v9, v10, v11, v12);
  *(a1 + 25) = *(a2 + 25);
  if ((*(a1 + 40) - 1) >= 2)
  {
    if ((v4 - 1) >= 2)
    {
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = v4;

      goto LABEL_5;
    }

    outlined destroy of String?(a1 + 32);
  }

  *(a1 + 32) = *(a2 + 32);
LABEL_5:
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t getEnumTagSinglePayload for ContentHoverEffect(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t storeEnumTagSinglePayload for ContentHoverEffect(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata completion function for _DefaultOverlayViewHoverEffect()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for _DefaultOverlayViewHoverEffect(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  if (v5 <= 7 && (*(v4 + 80) & 0x100000) == 0 && ((-17 - v5) | v5) - *(*(*(a3 + 16) - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    (*(v4 + 16))((a1 + v5 + 16) & ~v5, (a2 + v5 + 16) & ~v5);
  }

  else
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v5 & 0xF8 ^ 0x1F8) & (v5 + 16)));
  }

  return v3;
}

_OWORD *initializeWithCopy for _DefaultOverlayViewHoverEffect(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 16))((a1 + *(v4 + 80) + 16) & ~*(v4 + 80), (a2 + *(v4 + 80) + 16) & ~*(v4 + 80));
  return a1;
}

void *assignWithCopy for _DefaultOverlayViewHoverEffect(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 24))((a1 + *(v4 + 80) + 16) & ~*(v4 + 80), (a2 + *(v4 + 80) + 16) & ~*(v4 + 80));
  return a1;
}

_OWORD *assignWithTake for _DefaultOverlayViewHoverEffect(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 40))((a1 + *(v4 + 80) + 16) & ~*(v4 + 80), (a2 + *(v4 + 80) + 16) & ~*(v4 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for _DefaultOverlayViewHoverEffect(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
  }

  v8 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void storeEnumTagSinglePayload for _DefaultOverlayViewHoverEffect(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 16) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = &a1[v8 + 16] & ~v8;

  v18(v19);
}

uint64_t type metadata completion function for _OverlayViewHoverEffect()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for _OverlayViewHoverEffect(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = v6 + v9;
  v11 = ((((-17 - v5) | v5) - (v6 + v9)) | v9) - *(v8 + 64);
  if ((v9 | v5) <= 7 && ((*(v8 + 80) | *(v4 + 80)) & 0x100000) == 0 && v11 >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    v15 = (a1 + v5 + 16) & ~v5;
    v16 = (a2 + v5 + 16) & ~v5;
    (*(v4 + 16))(v15, v16);
    (*(v8 + 16))((v15 + v10) & ~v9, (v16 + v10) & ~v9, v7);
  }

  else
  {
    v14 = *a2;
    *v3 = *a2;
    v3 = (v14 + (((v9 | v5) & 0xF8 ^ 0x1F8) & ((v9 | v5) + 16)));
  }

  return v3;
}

uint64_t destroy for _OverlayViewHoverEffect(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8);
  v4 = v3 + 8;
  v5 = (a1 + *(v3 + 80) + 16) & ~*(v3 + 80);
  (*(v3 + 8))(v5);
  v6 = *(*(a2 + 24) - 8);
  v7 = *(v6 + 8);
  v8 = (v5 + *(v4 + 56) + *(v6 + 80)) & ~*(v6 + 80);

  return v7(v8);
}

_OWORD *initializeWithCopy for _OverlayViewHoverEffect(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(*(a3 + 16) - 8);
  v6 = v5 + 16;
  v7 = *(v5 + 80);
  v8 = (a1 + v7 + 16) & ~v7;
  v9 = (a2 + v7 + 16) & ~v7;
  (*(v5 + 16))(v8, v9);
  v10 = *(*(a3 + 24) - 8);
  (*(v10 + 16))((*(v6 + 48) + *(v10 + 80) + v8) & ~*(v10 + 80), (*(v6 + 48) + *(v10 + 80) + v9) & ~*(v10 + 80));
  return a1;
}

void *assignWithCopy for _OverlayViewHoverEffect(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v5 = *(*(a3 + 16) - 8);
  v6 = v5 + 24;
  v7 = *(v5 + 80);
  v8 = (a1 + v7 + 16) & ~v7;
  v9 = (a2 + v7 + 16) & ~v7;
  (*(v5 + 24))(v8, v9);
  v10 = *(*(a3 + 24) - 8);
  (*(v10 + 24))((*(v6 + 40) + *(v10 + 80) + v8) & ~*(v10 + 80), (*(v6 + 40) + *(v10 + 80) + v9) & ~*(v10 + 80));
  return a1;
}

_OWORD *initializeWithTake for _OverlayViewHoverEffect(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(*(a3 + 16) - 8);
  v6 = v5 + 32;
  v7 = *(v5 + 80);
  v8 = (a1 + v7 + 16) & ~v7;
  v9 = (a2 + v7 + 16) & ~v7;
  (*(v5 + 32))(v8, v9);
  v10 = *(*(a3 + 24) - 8);
  (*(v10 + 32))((*(v6 + 32) + *(v10 + 80) + v8) & ~*(v10 + 80), (*(v6 + 32) + *(v10 + 80) + v9) & ~*(v10 + 80));
  return a1;
}

_OWORD *assignWithTake for _OverlayViewHoverEffect(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(*(a3 + 16) - 8);
  v6 = v5 + 40;
  v7 = *(v5 + 80);
  v8 = (a1 + v7 + 16) & ~v7;
  v9 = (a2 + v7 + 16) & ~v7;
  (*(v5 + 40))(v8, v9);
  v10 = *(*(a3 + 24) - 8);
  (*(v10 + 40))((*(v6 + 24) + *(v10 + 80) + v8) & ~*(v10 + 80), (*(v6 + 24) + *(v10 + 80) + v9) & ~*(v10 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for _OverlayViewHoverEffect(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  v11 = *(v7 + 80);
  if (v8 <= v5)
  {
    v12 = *(v4 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = a2 - v12;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = ((v10 + v11 + ((v9 + 16) & ~v9)) & ~v11) + *(*(v6 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        v21 = (a1 + v9 + 16) & ~v9;
        if (v5 >= v8)
        {
          return (*(v4 + 48))(v21);
        }

        else
        {
          return (*(v7 + 48))((v21 + v10 + v11) & ~v11, v8, v6);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void storeEnumTagSinglePayload for _OverlayViewHoverEffect(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(a4 + 24);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v6 + 80);
  v12 = *(v6 + 64);
  v13 = *(v9 + 80);
  if (v10 <= v7)
  {
    v14 = *(v6 + 84);
  }

  else
  {
    v14 = *(v9 + 84);
  }

  v15 = ((v12 + v13 + ((v11 + 16) & ~v11)) & ~v13) + *(*(v8 - 8) + 64);
  v16 = a3 >= v14;
  v17 = a3 - v14;
  if (v17 != 0 && v16)
  {
    if (v15 <= 3)
    {
      v21 = ((v17 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
      if (HIWORD(v21))
      {
        v18 = 4;
      }

      else
      {
        if (v21 < 0x100)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v21 >= 2)
        {
          v18 = v22;
        }

        else
        {
          v18 = 0;
        }
      }
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  if (v14 < a2)
  {
    v19 = ~v14 + a2;
    if (v15 < 4)
    {
      v20 = (v19 >> (8 * v15)) + 1;
      if (v15)
      {
        v23 = v19 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_46:
              if (v18 == 2)
              {
                *&a1[v15] = v20;
              }

              else
              {
                *&a1[v15] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v18)
    {
      a1[v15] = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v15] = 0;
  }

  else if (v18)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  v24 = &a1[v11 + 16] & ~v11;
  if (v7 >= v10)
  {
    v27 = *(v6 + 56);

    v27(v24);
  }

  else
  {
    v25 = *(v9 + 56);
    v26 = (v24 + v12 + v13) & ~v13;

    v25(v26);
  }
}

uint64_t OpenImmersiveSpaceAction.callAsFunction(id:)()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](OpenWindowAction.callAsFunction<A>(value:sharingBehavior:), v1, v0);
}

uint64_t OpenImmersiveSpaceAction.callAsFunction<A>(value:)()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](OpenWindowAction.callAsFunction<A>(value:sharingBehavior:), v1, v0);
}

uint64_t OpenImmersiveSpaceAction.callAsFunction<A>(id:value:)()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](OpenWindowAction.callAsFunction<A>(value:sharingBehavior:), v1, v0);
}

uint64_t OpenImmersiveSpaceAction.callAsFunction(id:forRemoteSession:)()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](OpenWindowAction.callAsFunction(id:destination:), v1, v0);
}

uint64_t OpenImmersiveSpaceAction.callAsFunction(id:forRemoteSessionInfo:initialData:)()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](OpenWindowAction.callAsFunction<A>(value:sharingBehavior:), v1, v0);
}

unint64_t lazy protocol witness table accessor for type OpenImmersiveSpaceAction.Result and conformance OpenImmersiveSpaceAction.Result()
{
  result = lazy protocol witness table cache variable for type OpenImmersiveSpaceAction.Result and conformance OpenImmersiveSpaceAction.Result;
  if (!lazy protocol witness table cache variable for type OpenImmersiveSpaceAction.Result and conformance OpenImmersiveSpaceAction.Result)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpenImmersiveSpaceAction.Result and conformance OpenImmersiveSpaceAction.Result);
  }

  return result;
}

uint64_t View.accessibilityRespondsToUserInteraction(_:isEnabled:)@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for ModifiedContent();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v15 - v12;
  if (a2)
  {
    if (a1)
    {
      v16 = 21;
      View.accessibilityAddTraits(_:)(&v16, a3, a4);
    }

    else
    {
      v17 = 21;
      View.accessibilityRemoveTraits(_:)(&v17, a3, a4);
    }

    return (*(v11 + 32))(a5, v13, v10);
  }

  else
  {

    return View.accessibility()(a3, a4);
  }
}

uint64_t _s7SwiftUI15TupleDescriptorPAAE16tupleDescriptionyAA0c4TypeF0VyxGSo07AGTupleG0aFZAA011TableColumnD0V_Tt1g5@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = static TableColumnDescriptor.typeCache;
  if (*(static TableColumnDescriptor.typeCache + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
  {
    *a2 = *(*(v4 + 56) + 8 * v5);
  }

  else
  {
    lazy protocol witness table accessor for type TableColumnDescriptor and conformance TableColumnDescriptor();
    TupleTypeDescription.init(_:)();
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = static TableColumnDescriptor.typeCache;
    static TableColumnDescriptor.typeCache = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, a1, isUniquelyReferenced_nonNull_native);
    static TableColumnDescriptor.typeCache = v9;
    result = swift_endAccess();
    *a2 = v10;
  }

  return result;
}

uint64_t _s7SwiftUI15TupleDescriptorPAAE16tupleDescriptionyAA0c4TypeF0VyxGSo07AGTupleG0aFZAA08TableRowD0V_Tt1g5@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = static TableRowDescriptor.typeCache;
  if (*(static TableRowDescriptor.typeCache + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
  {
    *a2 = *(*(v4 + 56) + 8 * v5);
  }

  else
  {
    lazy protocol witness table accessor for type TableRowDescriptor and conformance TableRowDescriptor();
    TupleTypeDescription.init(_:)();
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = static TableRowDescriptor.typeCache;
    static TableRowDescriptor.typeCache = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, a1, isUniquelyReferenced_nonNull_native);
    static TableRowDescriptor.typeCache = v9;
    result = swift_endAccess();
    *a2 = v10;
  }

  return result;
}

uint64_t _s7SwiftUI15TupleDescriptorPAAE16tupleDescriptionyAA0c4TypeF0VyxGSo07AGTupleG0aFZAA021NavigationDestinationD0V_Tt1g5@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = static NavigationDestinationDescriptor.typeCache;
  if (*(static NavigationDestinationDescriptor.typeCache + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
  {
    *a2 = *(*(v4 + 56) + 8 * v5);
  }

  else
  {
    lazy protocol witness table accessor for type NavigationDestinationDescriptor and conformance NavigationDestinationDescriptor();
    TupleTypeDescription.init(_:)();
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = static NavigationDestinationDescriptor.typeCache;
    static NavigationDestinationDescriptor.typeCache = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, a1, isUniquelyReferenced_nonNull_native);
    static NavigationDestinationDescriptor.typeCache = v9;
    result = swift_endAccess();
    *a2 = v10;
  }

  return result;
}

uint64_t _s7SwiftUI15TupleDescriptorPAAE16tupleDescriptionyAA0c4TypeF0VyxGSo07AGTupleG0aFZAA025AccessibilityRotorContentD0V_Tt1g5@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = static AccessibilityRotorContentDescriptor.typeCache;
  if (*(static AccessibilityRotorContentDescriptor.typeCache + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
  {
    *a2 = *(*(v4 + 56) + 8 * v5);
  }

  else
  {
    lazy protocol witness table accessor for type AccessibilityRotorContentDescriptor and conformance AccessibilityRotorContentDescriptor();
    TupleTypeDescription.init(_:)();
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = static AccessibilityRotorContentDescriptor.typeCache;
    static AccessibilityRotorContentDescriptor.typeCache = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, a1, isUniquelyReferenced_nonNull_native);
    static AccessibilityRotorContentDescriptor.typeCache = v9;
    result = swift_endAccess();
    *a2 = v10;
  }

  return result;
}

uint64_t _s7SwiftUI15TupleDescriptorPAAE16tupleDescriptionyAA0c4TypeF0VyxGSo07AGTupleG0aFZAA06WidgetD0V_Tt1g5@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = static WidgetDescriptor.typeCache;
  if (*(static WidgetDescriptor.typeCache + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
  {
    *a2 = *(*(v4 + 56) + 8 * v5);
  }

  else
  {
    lazy protocol witness table accessor for type WidgetDescriptor and conformance WidgetDescriptor();
    TupleTypeDescription.init(_:)();
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = static WidgetDescriptor.typeCache;
    static WidgetDescriptor.typeCache = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, a1, isUniquelyReferenced_nonNull_native);
    static WidgetDescriptor.typeCache = v9;
    result = swift_endAccess();
    *a2 = v10;
  }

  return result;
}

uint64_t static TupleWidgetConfiguration._makeWidgetConfiguration(widget:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a2[1];
  v38 = *a2;
  v5 = *a1;
  v39 = v4;
  *v40 = a2[2];
  *&v40[12] = *(a2 + 44);
  _s7SwiftUI15TupleDescriptorPAAE16tupleDescriptionyAA0c4TypeF0VyxGSo07AGTupleG0aFZAA06WidgetD0V_Tt1g5(a3, v36);
  v6 = *v36;
  *&v36[52] = *&v40[12];
  *&v36[40] = *v40;
  *&v36[24] = v39;
  *&v36[8] = v38;
  *v36 = v5;
  *&v36[72] = 0;
  v37 = MEMORY[0x1E69E7CC0];
  v7 = *(v6 + 16);
  if (v7)
  {
    outlined init with copy of _WidgetInputs(&v38, v34);
    v8 = (v6 + 40);
    do
    {
      v9 = *v8;
      v8 = (v8 + 24);
      *&v36[72] = AGTupleElementOffset();
      v34[0] = v9;
      List = type metadata accessor for TupleWidgetConfiguration.MakeList();
      TypeConformance<>.visitType<A>(visitor:)(v36, List, &protocol witness table for TupleWidgetConfiguration<A>.MakeList);
      --v7;
    }

    while (v7);

    v11 = v37;
  }

  else
  {
    outlined init with copy of _WidgetInputs(&v38, v34);

    v11 = MEMORY[0x1E69E7CC0];
  }

  v12 = *(v11 + 16);
  if (v12)
  {
    *&v34[0] = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
    v13 = *&v34[0];
    v14 = (v11 + 40);
    do
    {
      v15 = *(v14 - 1);
      v16 = *v14;
      *&v34[0] = v13;
      v17 = *(v13 + 16);
      v18 = *(v13 + 24);

      if (v17 >= v18 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v17 + 1, 1);
        v13 = *&v34[0];
      }

      v14 += 4;
      *(v13 + 16) = v17 + 1;
      v19 = v13 + 16 * v17;
      *(v19 + 32) = v15;
      *(v19 + 40) = v16;
      --v12;
    }

    while (v12);
  }

  PreferencesOutputs.init()();
  v32 = *&v34[0];
  v33 = DWORD2(v34[0]);
  v20 = *(*&v40[16] + 16);
  if (v20)
  {
    lazy protocol witness table accessor for type PreferenceKeys and conformance PreferenceKeys();

    v21 = -v20;
    v22 = 1;
    v23 = MEMORY[0x1E69809D0];
    v24 = MEMORY[0x1E69809D8];
    do
    {
      v25 = protocol witness for Collection.subscript.read in conformance PreferenceKeys();
      v27 = *v26;
      v28 = v26[1];
      v25(v34, 0);
      (*(v23 + 8))(v27, v27, v28, v24, v23);
      ++v22;
    }

    while (v21 + v22 != 1);
  }

  else
  {
  }

  *a4 = v32;
  *(a4 + 8) = v33;
  v34[2] = *&v36[32];
  v34[3] = *&v36[48];
  v34[4] = *&v36[64];
  v35 = v37;
  v34[0] = *v36;
  v34[1] = *&v36[16];
  v29 = type metadata accessor for TupleWidgetConfiguration.MakeList();
  return (*(*(v29 - 8) + 8))(v34, v29);
}

uint64_t type metadata completion function for TupleWidget()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t initializeWithCopy for TupleWidgetConfiguration.MakeList(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v3 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v3;
  *(a1 + 64) = *(a2 + 64);
  v4 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v4;

  return a1;
}

uint64_t assignWithCopy for TupleWidgetConfiguration.MakeList(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);

  return a1;
}

uint64_t assignWithTake for TupleWidgetConfiguration.MakeList(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 64) = *(a2 + 64);
  v4 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v4;

  return a1;
}

uint64_t getEnumTagSinglePayload for TupleWidgetConfiguration.MakeList(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TupleWidgetConfiguration.MakeList(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void specialized AttributedTextStorage.text.getter()
{
  v1 = type metadata accessor for BindingStorage.Storage(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v16[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for Binding<AttributedString>();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>();
  v17 = *(v0 + *(v8 + 44));
  _sypSgMaTm_1(0, &lazy cache variable for type metadata for AtomicBox<ChangedValues>, &type metadata for ChangedValues, MEMORY[0x1E6981D80]);
  AtomicBox.wrappedValue.getter();
  if ((v16[7] & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      v11 = [Strong textStorage];

      if (v11)
      {
        ObjectType = swift_getObjectType();
        v13 = swift_conformsToProtocol2();
        if (v13)
        {
          (*(v13 + 16))(ObjectType, v13);

          return;
        }

        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  outlined init with copy of ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(v0, v3, type metadata accessor for BindingStorage.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for (Binding<AttributedString>, MutableBox<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, MutableBox<AttributedTextSelection>), type metadata accessor for MutableBox<AttributedTextSelection>);

    outlined init with take of ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(v3, v7, type metadata accessor for Binding<AttributedString>);
  }

  else
  {
    type metadata accessor for (Binding<AttributedString>, MutableBox<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, Binding<AttributedTextSelection>), type metadata accessor for Binding<AttributedTextSelection>);
    v15 = *(v14 + 48);
    outlined init with take of ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(v3, v7, type metadata accessor for Binding<AttributedString>);
    outlined destroy of (String, Any)(&v3[v15], type metadata accessor for Binding<AttributedTextSelection>);
  }

  MEMORY[0x18D00ACC0](v5);
  outlined destroy of (String, Any)(v7, type metadata accessor for Binding<AttributedString>);
}

void specialized AttributedTextStorage.updateEditorText<A>(replacing:with:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v40 - v13;
  outlined init with copy of ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(v3, v40 - v13, type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>);
  v44[0] = *&v14[v9[11]];
  _sypSgMaTm_1(0, &lazy cache variable for type metadata for AtomicBox<ChangedValues>, &type metadata for ChangedValues, MEMORY[0x1E6981D80]);
  v16 = v15;
  AtomicBox.wrappedValue.getter();
  v17 = v45;
  outlined destroy of (String, Any)(v14, type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>);
  if ((v17 & 3) != 0)
  {
    goto LABEL_25;
  }

  v18 = v9[12];
  if (*(v4 + v18))
  {
LABEL_7:
    v42 = v4 + v9[10];
    v43 = v16;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v23 = Strong;
      v24 = a1;
      v40[1] = a3;
      v41 = a2;
      v25 = [Strong textStorage];

      if (v25)
      {
        v26 = v11;
        ObjectType = swift_getObjectType();
        v40[0] = &protocol descriptor for SwiftTextStorage;
        v28 = swift_conformsToProtocol2();
        if (v28)
        {
          v29 = v28;
          v30 = *(v28 + 40);
          v31 = type metadata accessor for AttributedString();
          v32 = _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_3(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848]);
          v30(v24, v41, v31, v32, ObjectType, v29);

          outlined init with copy of ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(v4, v26, type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>);
          v45 = *(v26 + v9[11]);
          v34 = AtomicBox.wrappedValue.modify();
          if ((*v33 & 4) == 0)
          {
            *v33 |= 4u;
          }

          v34(v44, 0);
          outlined destroy of (String, Any)(v26, type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>);
          v35 = swift_unknownObjectWeakLoadStrong();
          if (v35)
          {
            v36 = v35;
            v37 = [v35 textStorage];

            if (v37)
            {
              v38 = swift_getObjectType();
              v39 = swift_conformsToProtocol2();
              if (v39)
              {
                (*(v39 + 16))(v38, v39);

                return;
              }

              goto LABEL_21;
            }

LABEL_20:
            __break(1u);
LABEL_21:
            __break(1u);
            goto LABEL_22;
          }

LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

LABEL_18:
        __break(1u);
        goto LABEL_19;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_18;
  }

  *(v4 + v18) = 1;
  v19 = swift_unknownObjectWeakLoadStrong();
  if (!v19)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v20 = v19;
  v21 = [v19 textStorage];

  if (!v21)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  swift_getObjectType();
  if (swift_conformsToProtocol2())
  {
    [v21 beginEditing];

    goto LABEL_7;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t one-time initialization function for _instances()
{
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo16UIPasteboardNamea_10Foundation16AttributedStringV7SwiftUIE15PasteboardOwnerCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  type metadata accessor for [UIPasteboardName : AttributedString.PasteboardOwner]();
  return AtomicBox.init(wrappedValue:)();
}

uint64_t AttributedString.PasteboardOwner.crossProcessData()()
{
  v14 = type metadata accessor for AttributeScopeCodableConfiguration();
  v1 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CodingUserInfoKey();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  static CodingUserInfoKey.environment.getter();
  v7 = (v0 + OBJC_IVAR____TtCE7SwiftUIV10Foundation16AttributedString15PasteboardOwner_environment);
  swift_beginAccess();
  v9 = *v7;
  v8 = v7[1];
  v16[3] = MEMORY[0x1E697F230];
  v16[0] = v9;
  v16[1] = v8;

  v10 = dispatch thunk of JSONEncoder.userInfo.modify();
  specialized Dictionary.subscript.setter(v16, v6);
  v10(v15, 0);
  v16[5] = *(v0 + OBJC_IVAR____TtCE7SwiftUIV10Foundation16AttributedString15PasteboardOwner_content);
  swift_beginAccess();

  EnvironmentValues.attributeScopeContext.getter();
  AttributeScopeContext.scope.getter();
  swift_endAccess();

  dispatch thunk of static AttributeScope.encodingConfiguration.getter();
  type metadata accessor for [AttributedString](0);
  lazy protocol witness table accessor for type [AttributedString] and conformance <A> [A](&lazy protocol witness table cache variable for type [AttributedString] and conformance <A> [A]);
  v11 = dispatch thunk of JSONEncoder.encode<A>(_:configuration:)();

  (*(v1 + 8))(v3, v14);

  return v11;
}

Swift::Void __swiftcall AttributedString.PasteboardOwner.pasteboard(provideDataTo:)(UIPasteboard provideDataTo)
{
  v2 = v1;
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_2(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v48 - v5;
  v7 = type metadata accessor for UTType();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v11 = [(objc_class *)provideDataTo.super.isa name];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = [(objc_class *)provideDataTo.super.isa changeCount];
  v53 = v12;
  v54 = v14;
  v55 = v15;
  lazy protocol witness table accessor for type AttributedString.PasteboardOwner.InProcessData and conformance AttributedString.PasteboardOwner.InProcessData();
  v16 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v52 = v6;
  v49 = v16;
  v48 = v17;

  v18 = MEMORY[0x1E69E6F90];
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_2(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<[String : Any]>, type metadata accessor for [String : Any], MEMORY[0x1E69E6F90]);
  v19 = swift_allocObject();
  v50 = xmmword_18CD63400;
  *(v19 + 16) = xmmword_18CD63400;
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_2(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>, type metadata accessor for (String, Any), v18);
  inited = swift_initStackObject();
  *&v51 = provideDataTo;
  v21 = inited;
  *(inited + 16) = v50;
  *&v50 = v2;
  v22 = v8;
  (*(v8 + 56))(v6, 1, 1, v7);
  UTType.init(exportedAs:conformingTo:)();
  v23 = UTType.identifier.getter();
  v25 = v24;
  (*(v22 + 8))(v10, v7);
  v21[4] = v23;
  v26 = (v21 + 4);
  v21[9] = MEMORY[0x1E6969080];
  v27 = v49;
  v21[5] = v25;
  v21[6] = v27;
  v28 = v48;
  v21[7] = v48;
  outlined copy of Data._Representation(v27, v28);
  v29 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v21);
  v30 = v51;
  swift_setDeallocating();
  outlined destroy of (String, Any)(v26, type metadata accessor for (String, Any));
  *(v19 + 32) = v29;
  type metadata accessor for [String : Any]();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v30 addItems_];

  outlined consume of Data._Representation(v27, v28);
  v32 = AttributedString.PasteboardOwner.crossProcessData()();
  v33 = v22;
  v34 = MEMORY[0x1E69E6F90];
  v35 = v32;
  v36 = v30;
  v38 = v37;
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_2(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<[String : Any]>, type metadata accessor for [String : Any], MEMORY[0x1E69E6F90]);
  v39 = swift_allocObject();
  v51 = xmmword_18CD63400;
  *(v39 + 16) = xmmword_18CD63400;
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_2(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>, type metadata accessor for (String, Any), v34);
  v40 = v7;
  v41 = swift_initStackObject();
  *(v41 + 16) = v51;
  v42 = v52;
  static UTType.data.getter();
  (*(v33 + 56))(v42, 0, 1, v40);
  UTType.init(exportedAs:conformingTo:)();
  v43 = UTType.identifier.getter();
  v45 = v44;
  (*(v33 + 8))(v10, v40);
  *(v41 + 32) = v43;
  *(v41 + 72) = MEMORY[0x1E6969080];
  *(v41 + 40) = v45;
  *(v41 + 48) = v35;
  *(v41 + 56) = v38;
  outlined copy of Data._Representation(v35, v38);
  v46 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v41);
  swift_setDeallocating();
  outlined destroy of (String, Any)(v41 + 32, type metadata accessor for (String, Any));
  *(v39 + 32) = v46;
  type metadata accessor for [String : Any]();
  v47 = Array._bridgeToObjectiveC()().super.isa;

  [v36 addItems_];

  outlined consume of Data._Representation(v35, v38);
}

uint64_t AttributedString.PasteboardOwner.register(pasteboard:to:)(void *a1, void *a2)
{
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_2(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v26 - v6;
  v26[0] = type metadata accessor for UTType();
  v8 = *(v26[0] - 8);
  v9 = MEMORY[0x1EEE9AC00](v26[0]);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a2 dragSession];
  v13 = [a1 name];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17 = [a1 changeCount];
  v26[1] = v14;
  v26[2] = v16;
  v26[3] = v17;
  [v12 setLocalContext_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v18 = [a2 suggestedItems];
  type metadata accessor for UIDragItem();
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v19 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result)
    {
      goto LABEL_3;
    }
  }

  result = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
  }

LABEL_3:
  if ((v19 & 0xC000000000000001) != 0)
  {
    v21 = MEMORY[0x18D00E9C0](0, v19);
    goto LABEL_6;
  }

  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v21 = *(v19 + 32);
LABEL_6:
    v22 = v21;

    v23 = [v22 itemProvider];
    static UTType.data.getter();
    v24 = v26[0];
    (*(v8 + 56))(v7, 0, 1, v26[0]);
    UTType.init(exportedAs:conformingTo:)();
    *(swift_allocObject() + 16) = v2;
    v25 = v2;
    NSItemProvider.registerDataRepresentation(for:visibility:loadHandler:)();

    return (*(v8 + 8))(v11, v24);
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in AttributedString.PasteboardOwner.register(pasteboard:to:)(void (*a1)(uint64_t, unint64_t, void))
{
  v2 = AttributedString.PasteboardOwner.crossProcessData()();
  v4 = v3;
  outlined copy of Data._Representation(v2, v3);
  a1(v2, v4, 0);
  outlined consume of Data._Representation(v2, v4);
  outlined consume of Data._Representation(v2, v4);
  return 0;
}

uint64_t AttributedString.PasteboardOwner.InProcessData.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  type metadata accessor for KeyedDecodingContainer<AttributedString.PasteboardOwner.InProcessData.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<AttributedString.PasteboardOwner.InProcessData.CodingKeys>, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AttributedString.PasteboardOwner.InProcessData.CodingKeys and conformance AttributedString.PasteboardOwner.InProcessData.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance AttributedString.PasteboardOwner.InProcessData.CodingKeys()
{
  if (*v0)
  {
    return 0x6F4365676E616863;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AttributedString.PasteboardOwner.InProcessData.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F4365676E616863 && a2 == 0xEB00000000746E75)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AttributedString.PasteboardOwner.InProcessData.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AttributedString.PasteboardOwner.InProcessData.CodingKeys and conformance AttributedString.PasteboardOwner.InProcessData.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttributedString.PasteboardOwner.InProcessData.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AttributedString.PasteboardOwner.InProcessData.CodingKeys and conformance AttributedString.PasteboardOwner.InProcessData.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance AttributedString.PasteboardOwner.InProcessData@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized AttributedString.PasteboardOwner.InProcessData.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

id specialized AttributedString.PasteboardOwner.Item.init(withItemProviderData:)(uint64_t a1, unint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for AttributeScopeCodableConfiguration();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  type metadata accessor for [AttributedString](0);
  type metadata accessor for AttributeScopes.SwiftUIAttributes();
  _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_3(&lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes and conformance AttributeScopes.SwiftUIAttributes, MEMORY[0x1E697D930]);
  dispatch thunk of static AttributeScope.decodingConfiguration.getter();
  lazy protocol witness table accessor for type [AttributedString] and conformance <A> [A](&lazy protocol witness table cache variable for type [AttributedString] and conformance <A> [A]);
  dispatch thunk of JSONDecoder.decode<A>(_:from:configuration:)();
  (*(v7 + 8))(v9, v6);

  *&v2[direct field offset for AttributedString.PasteboardOwner.Item.content] = v13;
  v12.receiver = v2;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  outlined consume of Data._Representation(a1, a2);
  return v10;
}

id AttributedString.PasteboardOwner.Item.init(withItemProviderData:)(uint64_t a1, unint64_t a2)
{
  v11 = a2;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for AttributeScopeCodableConfiguration();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  type metadata accessor for [AttributedString](0);
  v8 = v11;
  dispatch thunk of static AttributeScope.decodingConfiguration.getter();
  lazy protocol witness table accessor for type [AttributedString] and conformance <A> [A](&lazy protocol witness table cache variable for type [AttributedString] and conformance <A> [A]);
  dispatch thunk of JSONDecoder.decode<A>(_:from:configuration:)();
  (*(v5 + 8))(v7, v4);

  *&v2[direct field offset for AttributedString.PasteboardOwner.Item.content] = v14;
  v13.receiver = v2;
  v13.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v13, sel_init);
  outlined consume of Data._Representation(a1, v8);
  return v9;
}

Swift::Void __swiftcall UIKitRichTextEditorCoordinator.copy(isCut:)(Swift::Bool isCut)
{
  v80 = isCut;
  type metadata accessor for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v81 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AttributedSubstring();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v79 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>?(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v86 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RangeSet<AttributedString.Index>.Ranges(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>.Ranges, MEMORY[0x1E69E7BA8]);
  v91 = v8;
  v84 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v83 = &v76 - v9;
  type metadata accessor for Range<AttributedString.Index>();
  v85 = v10;
  v82 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v97 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AttributedTextSelection(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v89 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for AttributedTextSelection.Indices(0);
  MEMORY[0x1EEE9AC00](v88);
  v90 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RangeSet<AttributedString.Index>.Ranges(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
  v94 = v15;
  v92 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v93 = &v76 - v16;
  type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>();
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v87 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v76 - v22;
  type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>?(0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v96 = &v76 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v76 - v27;
  v95 = type metadata accessor for AttributedString();
  v100 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v30 = &v76 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v76 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v76 - v35;
  v37 = [objc_opt_self() generalPasteboard];
  v99 = v1;
  UIKitRichTextEditorCoordinator.storage.getter(v28);
  v38 = *(v19 + 48);
  v98 = v18;
  if (v38(v28, 1, v18))
  {

    outlined destroy of (String, Any)(v28, type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>?);
  }

  else
  {
    v78 = v37;
    v77 = v30;
    v39 = v97;
    outlined init with copy of ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(v28, v23, type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>);
    outlined destroy of (String, Any)(v28, type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>?);
    specialized AttributedTextStorage.text.getter();
    outlined destroy of (String, Any)(v23, type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>);
    v40 = v100;
    v41 = v95;
    (*(v100 + 32))(v36, v33, v95);
    v42 = v96;
    v43 = v99;
    UIKitRichTextEditorCoordinator.storage.getter(v96);
    v44 = v98;
    if (v38(v42, 1, v98))
    {

      outlined destroy of (String, Any)(v42, type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>?);
      (*(v40 + 8))(v36, v41);
    }

    else
    {
      v45 = v43;
      v46 = v87;
      outlined init with copy of ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(v42, v87, type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>);
      outlined destroy of (String, Any)(v42, type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>?);
      v101[3] = *(v46 + *(v44 + 44));
      _sypSgMaTm_1(0, &lazy cache variable for type metadata for AtomicBox<ChangedValues>, &type metadata for ChangedValues, MEMORY[0x1E6981D80]);
      AtomicBox.wrappedValue.getter();
      v47 = v89;
      if ((v101[0] & 2) != 0)
      {
        BindingStorage.selection.getter(v89);
      }

      else
      {
        PlatformTextViewEditorStorage.selection.getter(v89);
      }

      v48 = v39;
      v49 = v93;
      v50 = v91;
      outlined destroy of (String, Any)(v46, type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>);
      v51 = v90;
      AttributedTextSelection.indices(in:)(v36, v90);
      outlined destroy of (String, Any)(v47, type metadata accessor for AttributedTextSelection);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v53 = v94;
      v54 = v92;
      if (EnumCaseMultiPayload == 1)
      {
        v55 = v48;
        v98 = v36;
        (*(v92 + 32))(v49, v51, v94);
        v56 = v83;
        RangeSet.ranges.getter();
        v57 = v86;
        specialized Collection.first.getter(v86);
        (*(v84 + 8))(v56, v50);
        if ((*(v82 + 48))(v57, 1, v85) == 1)
        {
          (*(v54 + 8))(v49, v53);

          outlined destroy of (String, Any)(v57, type metadata accessor for Range<AttributedString.Index>?);
          (*(v100 + 8))(v98, v41);
        }

        else
        {
          v58 = v55;
          outlined init with take of ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(v57, v55, type metadata accessor for Range<AttributedString.Index>);
          _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_3(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>);
          AttributedString.subscript.getter();
          v59 = v77;
          AttributedString.init(_:)();
          _s22UniformTypeIdentifiers6UTTypeVSgMaTm_2(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E69E6F90]);
          v60 = v100;
          v61 = (*(v100 + 80) + 32) & ~*(v100 + 80);
          v62 = swift_allocObject();
          *(v62 + 16) = xmmword_18CD63400;
          (*(v60 + 16))(v62 + v61, v59, v41);
          v63 = (v45 + OBJC_IVAR____TtC7SwiftUI30UIKitRichTextEditorCoordinator_environment);
          swift_beginAccess();
          v64 = *v63;
          if (*v63 == 1)
          {
            __break(1u);
          }

          else
          {
            v65 = v63[1];
            v101[0] = *v63;
            v101[1] = v65;
            outlined copy of EnvironmentValues?(v64);
            v66 = v78;
            v67 = specialized static AttributedString.PasteboardOwner.instance(for:with:in:)(v78, v62, v101);

            v68 = v66;

            AttributedString.PasteboardOwner.pasteboard(provideDataTo:)(v66);
            v69 = v81;
            if (v80)
            {
              v70 = OBJC_IVAR____TtC7SwiftUI30UIKitRichTextEditorCoordinator__storage;
              swift_beginAccess();
              outlined init with copy of ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(v45 + v70, v69, type metadata accessor for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>);
              v71 = v68;
              v72 = _s7SwiftUI21ExclusivelyAccessibleV19withExclusiveAccessyAC10CompletionVyx_qd__qd_0_Gqd__xzqd_0_YKXEs5ErrorRd_0_r0_lFAA21AttributedTextStorageVyAA08Platformk10ViewEditorL0VG_yts5NeverOTg503_s7a13UI30UIKitRichko35CoordinatorC4copy5isCutySb_tFyAA010j2E7L31VyAA08Platforme4ViewfL0VGzXEfU_10Foundation0J6StringVSnyAS5IndexVGTf1cn_n(v69, v98, v55);
              v74 = v73;
              swift_beginAccess();
              outlined destroy of (String, Any)(v45 + v70, type metadata accessor for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>);
              outlined init with take of ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(v69, v45 + v70, type metadata accessor for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>);
              swift_endAccess();
              _s7SwiftUI21ExclusivelyAccessibleV10CompletionV14callAsFunctionqd__Sgyqd_0_YKFAA21AttributedTextStorageVyAA08Platformj10ViewEditorK0VG_yts5NeverOTg5(v72, v74);
            }

            else
            {
            }

            v75 = *(v100 + 8);
            v75(v77, v41);
            (*(v54 + 8))(v93, v94);
            outlined destroy of (String, Any)(v58, type metadata accessor for Range<AttributedString.Index>);
            v75(v98, v41);
          }
        }
      }

      else
      {

        outlined destroy of (String, Any)(v51, type metadata accessor for AttributedTextSelection.Indices);
        (*(v100 + 8))(v36, v41);
      }
    }
  }
}

id RichTextEditorTextView.cut(_:)(uint64_t a1, char a2)
{
  ObjectType = swift_getObjectType();
  outlined init with copy of Any?(a1, v16);
  v6 = v17;
  if (v17)
  {
    v7 = __swift_project_boxed_opaque_existential_1(v16, v17);
    v8 = *(v6 - 8);
    v9 = MEMORY[0x1EEE9AC00](v7);
    v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11, v9);
    v12 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v8 + 8))(v11, v6);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    v12 = 0;
  }

  v15.receiver = v2;
  v15.super_class = ObjectType;
  objc_msgSendSuper2(&v15, sel_copy_, v12);
  swift_unknownObjectRelease();
  v14.receiver = v2;
  v14.super_class = ObjectType;
  result = objc_msgSendSuper2(&v14, sel_delegate);
  if (result)
  {
    type metadata accessor for UIKitRichTextEditorCoordinator(0);
    if (swift_dynamicCastClass())
    {
      UIKitRichTextEditorCoordinator.copy(isCut:)(a2 & 1);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t @objc RichTextEditorTextView.cut(_:)(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  RichTextEditorTextView.cut(_:)(v9, a4 & 1);

  return outlined destroy of Any?(v9);
}

void RichTextEditorTextView.paste(_:)(uint64_t a1)
{
  v2 = v1;
  v105 = a1;
  ObjectType = swift_getObjectType();
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_2(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v110 = &v95 - v5;
  v111 = type metadata accessor for UTType();
  v104 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v101 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v109 = &v95 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v102 = &v95 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v95 - v12;
  v14 = [objc_opt_self() generalPasteboard];
  v119.receiver = v1;
  v119.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v119, sel_delegate);
  if (!v15)
  {
LABEL_23:
    outlined init with copy of Any?(v105, v117);
    v50 = v118;
    if (v118)
    {
      v51 = __swift_project_boxed_opaque_existential_1(v117, v118);
      v52 = *(v50 - 8);
      v53 = MEMORY[0x1EEE9AC00](v51);
      v55 = &v95 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v52 + 16))(v55, v53);
      v56 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v52 + 8))(v55, v50);
      __swift_destroy_boxed_opaque_existential_1(v117);
    }

    else
    {
      v56 = 0;
    }

    v116.receiver = v2;
    v116.super_class = ObjectType;
    objc_msgSendSuper2(&v116, sel_paste_, v56);

    swift_unknownObjectRelease();
    return;
  }

  v16 = v15;
  type metadata accessor for UIKitRichTextEditorCoordinator(0);
  v17 = swift_dynamicCastClass();
  if (!v17)
  {
    swift_unknownObjectRelease();
    goto LABEL_23;
  }

  v99 = v16;
  v97 = ObjectType;
  v100 = v2;
  v96 = v17;
  v103 = v14;
  v18 = [v14 items];
  type metadata accessor for [String : Any]();
  v98 = v19;
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v106 = *(v20 + 16);
  if (v106)
  {
    v21 = 0;
    v107 = "I.AttributedString";
    v22 = (v104 + 56);
    v108 = (v104 + 8);
    while (v21 < *(v20 + 16))
    {
      v23 = *(v20 + 8 * v21 + 32);
      v24 = *v22;
      v25 = v111;
      (*v22)(v110, 1, 1, v111);
      swift_bridgeObjectRetain_n();
      UTType.init(exportedAs:conformingTo:)();
      v26 = UTType.identifier.getter();
      v28 = v27;
      v29 = *v108;
      (*v108)(v13, v25);
      if (*(v23 + 16))
      {
        specialized __RawDictionaryStorage.find<A>(_:)(v26, v28);
        v31 = v30;

        if (v31)
        {

          v57 = v111;
          v24(v110, 1, 1, v111);
          v58 = v102;
          UTType.init(exportedAs:conformingTo:)();
          v59 = UTType.identifier.getter();
          v61 = v60;
          v29(v58, v57);
          if (!*(v23 + 16))
          {

            goto LABEL_11;
          }

          v62 = specialized __RawDictionaryStorage.find<A>(_:)(v59, v61);
          v64 = v63;

          v65 = v103;
          if (v64)
          {
            outlined init with copy of Any(*(v23 + 56) + 32 * v62, v117);

            if (swift_dynamicCast())
            {
              v66 = v113;
              v67 = v114;
              v68 = type metadata accessor for AttributedString.PasteboardOwner.InProcessItem();
              v69 = objc_allocWithZone(v68);
              type metadata accessor for JSONDecoder();
              swift_allocObject();
              outlined copy of Data._Representation(v66, v67);
              JSONDecoder.init()();
              lazy protocol witness table accessor for type AttributedString.PasteboardOwner.InProcessData and conformance AttributedString.PasteboardOwner.InProcessData();
              dispatch thunk of JSONDecoder.decode<A>(_:from:)();

              v91 = specialized static AttributedString.PasteboardOwner.inProcessInstance(for:)(v117[0], v117[1], v117[2]);

              if (v91)
              {
                v92 = *&v91[OBJC_IVAR____TtCE7SwiftUIV10Foundation16AttributedString15PasteboardOwner_content];

                *&v69[OBJC_IVAR____TtCCE7SwiftUIV10Foundation16AttributedString15PasteboardOwner13InProcessItem_content] = v92;
                v112.receiver = v69;
                v112.super_class = v68;
                v93 = objc_msgSendSuper2(&v112, sel_init);
                outlined consume of Data._Representation(v66, v67);

                UIKitRichTextEditorCoordinator.paste(_:in:)(v94, v100);

                swift_unknownObjectRelease();

                outlined consume of Data._Representation(v66, v67);
                return;
              }

              outlined consume of Data._Representation(v66, v67);
              outlined consume of Data._Representation(v66, v67);
              swift_deallocPartialClassInstance();
            }
          }

          else
          {
          }

          v32 = v65;
          goto LABEL_12;
        }
      }

      else
      {
        swift_bridgeObjectRelease_n();
      }

      if (v106 == ++v21)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
  }

  else
  {
LABEL_11:

    v32 = v103;
LABEL_12:
    v33 = [v32 items];
    v34 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v106 = *(v34 + 16);
    if (v106)
    {
      v35 = 0;
      v107 = "asteboardOwner13InProcessItem";
      v36 = (v104 + 56);
      v108 = (v104 + 8);
      do
      {
        if (v35 >= *(v34 + 16))
        {
          goto LABEL_52;
        }

        v37 = *(v34 + 8 * v35 + 32);
        swift_bridgeObjectRetain_n();
        v38 = v110;
        static UTType.data.getter();
        v39 = *v36;
        v40 = v111;
        (*v36)(v38, 0, 1, v111);
        v41 = v109;
        UTType.init(exportedAs:conformingTo:)();
        v42 = UTType.identifier.getter();
        v44 = v43;
        v45 = *v108;
        (*v108)(v41, v40);
        if (*(v37 + 16))
        {
          specialized __RawDictionaryStorage.find<A>(_:)(v42, v44);
          v47 = v46;

          if (v47)
          {

            v70 = v110;
            static UTType.data.getter();
            v71 = v111;
            v39(v70, 0, 1, v111);
            v72 = v101;
            UTType.init(exportedAs:conformingTo:)();
            v73 = UTType.identifier.getter();
            v75 = v74;
            v45(v72, v71);
            if (*(v37 + 16))
            {
              v76 = specialized __RawDictionaryStorage.find<A>(_:)(v73, v75);
              v78 = v77;

              v48 = v100;
              v49 = v103;
              if (v78)
              {
                outlined init with copy of Any(*(v37 + 56) + 32 * v76, v117);
                if (swift_dynamicCast())
                {
                  v80 = v113;
                  v79 = v114;
                  v81 = OBJC_IVAR____TtC7SwiftUI30UIKitRichTextEditorCoordinator_environment;
                  v82 = v96;
                  swift_beginAccess();
                  if (*(v82 + v81) == 1)
                  {
                    goto LABEL_53;
                  }

                  EnvironmentValues.attributeScopeContext.getter();
                  AttributeScopeContext.scope.getter();
                  swift_endAccess();

                  v83 = static AttributeScope.readItem(from:)(v80, v79);
                  if (v83)
                  {
                    UIKitRichTextEditorCoordinator.paste(_:in:)(v83, v100);

                    swift_unknownObjectRelease();

                    outlined consume of Data._Representation(v80, v79);
                    return;
                  }

                  outlined consume of Data._Representation(v80, v79);
                  goto LABEL_21;
                }
              }
            }

            else
            {

              v48 = v100;
              v49 = v103;
            }

            goto LABEL_41;
          }
        }

        else
        {
          swift_bridgeObjectRelease_n();
        }

        ++v35;
      }

      while (v106 != v35);
    }

LABEL_21:
    v48 = v100;
    v49 = v103;
LABEL_41:
    outlined init with copy of Any?(v105, v117);
    v84 = v118;
    if (v118)
    {
      v85 = __swift_project_boxed_opaque_existential_1(v117, v118);
      v86 = *(v84 - 8);
      v87 = MEMORY[0x1EEE9AC00](v85);
      v89 = &v95 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v86 + 16))(v89, v87);
      v90 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v86 + 8))(v89, v84);
      __swift_destroy_boxed_opaque_existential_1(v117);
    }

    else
    {
      v90 = 0;
    }

    v115.receiver = v48;
    v115.super_class = v97;
    objc_msgSendSuper2(&v115, sel_paste_, v90);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall UIKitRichTextEditorCoordinator.paste(_:in:)(Swift::OpaquePointer _, UITextView *in)
{
  rawValue = _._rawValue;
  v19 = in;
  v3 = type metadata accessor for AttributedString();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - v8;
  v10 = (v2 + OBJC_IVAR____TtC7SwiftUI30UIKitRichTextEditorCoordinator_environment);
  swift_beginAccess();
  v11 = *v10;
  if (*v10 == 1)
  {
    __break(1u);
  }

  else
  {
    v12 = v10[1];

    AttributedString.init(stringLiteral:)();
    v26 = v11;
    v27 = v12;
    EnvironmentValues.attributeScopeContext.getter();
    v20[2] = v23;
    v17 = v24;
    v21 = v24;
    v22 = v25;
    AttributeScopeContext.scope.getter();

    v20[0] = v11;
    v20[1] = v12;
    v13 = static AttributeScope.storage(wrapping:in:)(v9, v20);
    v15 = v14;
    v16 = *(v4 + 8);
    v16(v9, v3);
    outlined consume of EnvironmentValues?(v11);
    *&v17 = swift_getObjectType();
    v23 = rawValue;
    AttributedString.init(stringLiteral:)();
    type metadata accessor for [AttributedString](0);
    _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_3(&lazy protocol witness table cache variable for type [AttributedString] and conformance [A], type metadata accessor for [AttributedString]);
    _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_3(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848]);
    Sequence<>.joined<A>(separator:)();
    v16(v6, v3);
    (*(v15 + 24))(v9, v17, v15);
    [(UITextView *)v19 _pasteAttributedString:v13 pasteAsRichText:1];
  }
}

uint64_t static AttributeScope.readItem(from:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for AttributedString.PasteboardOwner.Item();
  outlined copy of Data._Representation(a1, a2);
  v5 = objc_allocWithZone(v4);
  v6 = AttributedString.PasteboardOwner.Item.init(withItemProviderData:)(a1, a2);
  if (!v6)
  {
    return 0;
  }

  v7 = *&v6[direct field offset for AttributedString.PasteboardOwner.Item.content];
  v8 = v6;

  return v7;
}

uint64_t UIKitRichTextEditorCoordinator.textDroppableView(_:willPerformDrop:)(uint64_t a1, void *a2)
{
  v59 = a1;
  type metadata accessor for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v58 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UTType();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v67 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69E8450];
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_2(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v57 - v11;
  v60 = a2;
  v13 = [a2 dropSession];
  swift_getObjectType();
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_2(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<UTType>, v8, MEMORY[0x1E69E6F90]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_18CD63410;
  v72 = v6;
  v15 = *(v6 + 7);
  v15(v12, 1, 1, v5);
  v66 = "I.AttributedString";
  UTType.init(exportedAs:conformingTo:)();
  static UTType.data.getter();
  v69 = v15;
  v70 = v6 + 56;
  v15(v12, 0, 1, v5);
  v68 = "asteboardOwner13InProcessItem";
  v73 = v12;
  UTType.init(exportedAs:conformingTo:)();
  v74 = v5;
  v16 = UIDropSession.itemProviders(for:)(v14);
  swift_unknownObjectRelease();
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (!(v16 >> 62))
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_3;
    }
  }

LABEL_27:
  v17 = __CocoaSet.count.getter();
  if (!v17)
  {
  }

LABEL_3:
  v18 = 0;
  v65 = v16 & 0xC000000000000001;
  v64 = v16 & 0xFFFFFFFFFFFFFF8;
  v19 = (v72 + 8);
  v63 = v16;
  v62 = v17;
  while (1)
  {
    if (v65)
    {
      v20 = MEMORY[0x18D00E9C0](v18, v16);
    }

    else
    {
      if (v18 >= *(v64 + 16))
      {
        goto LABEL_26;
      }

      v20 = *(v16 + 8 * v18 + 32);
    }

    v21 = v69;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v71 = v18 + 1;
    v22 = v20;
    v23 = v74;
    v69(v73, 1, 1, v74);
    v24 = v67;
    UTType.init(exportedAs:conformingTo:)();
    v25 = UTType.identifier.getter();
    v27 = v26;
    v72 = *v19;
    (v72)(v24, v23);
    v28 = MEMORY[0x18D00C850](v25, v27);

    LOBYTE(v27) = [v22 hasItemConformingToTypeIdentifier_];

    if (v27)
    {
      break;
    }

    v29 = v73;
    static UTType.data.getter();
    v30 = v74;
    v21(v29, 0, 1, v74);
    UTType.init(exportedAs:conformingTo:)();
    v31 = UTType.identifier.getter();
    v33 = v32;
    (v72)(v24, v30);
    v34 = MEMORY[0x18D00C850](v31, v33);

    LOBYTE(v33) = [v22 hasItemConformingToTypeIdentifier_];

    if (v33)
    {
      break;
    }

    ++v18;
    v16 = v63;
    if (v71 == v62)
    {
    }
  }

  v35 = v22;

  objc_opt_self();
  v36 = swift_dynamicCastObjCClassUnconditional();
  v37 = [v36 beginningOfDocument];
  v38 = v60;
  v39 = [v60 dropPosition];
  v40 = [v36 offsetFromPosition:v37 toPosition:v39];

  v41 = [objc_msgSend(v38 dropSession)];
  swift_unknownObjectRelease();
  v42 = v73;
  v43 = v74;
  v44 = v72;
  if (v41)
  {
    if ([v41 localContext])
    {
      _bridgeAnyObjectToAny(_:)();
      v42 = v73;
      v43 = v74;
      swift_unknownObjectRelease();
    }

    else
    {
      v78 = 0u;
      v79 = 0u;
    }

    v80[0] = v78;
    v80[1] = v79;
    if (*(&v79 + 1))
    {
      if (swift_dynamicCast())
      {
        v45 = specialized static AttributedString.PasteboardOwner.inProcessInstance(for:)(v75, v76, v77);

        if (v45)
        {
          v46 = *&v45[OBJC_IVAR____TtCE7SwiftUIV10Foundation16AttributedString15PasteboardOwner_content];

          v47 = [v38 isSameView];
          v48 = OBJC_IVAR____TtC7SwiftUI30UIKitRichTextEditorCoordinator__storage;
          v49 = v61;
          swift_beginAccess();
          v50 = v58;
          outlined init with copy of ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(v49 + v48, v58, type metadata accessor for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>);
          v51 = _s7SwiftUI21ExclusivelyAccessibleV19withExclusiveAccessyAC10CompletionVyx_qd__qd_0_Gqd__xzqd_0_YKXEs5ErrorRd_0_r0_lFAA21AttributedTextStorageVyAA08Platformk10ViewEditorL0VG_yts5NeverOTg503_s7a13UI30UIKitRichko67CoordinatorC15performDropWith4text2at10isSameViewySay10Foundation16j32StringVG_So8_NSRangeVSbtFyAA0qE7L27VyAA08PlatformeofT0VGzXEfU_So8_NSRangeVSay10Foundation0J6StringVGSbTf1cn_nTf4nngn_n(v50, v40, 0, v46, v47);
          LOBYTE(v47) = v52;

          swift_beginAccess();
          outlined destroy of (String, Any)(v49 + v48, type metadata accessor for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>);
          outlined init with take of ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(v50, v49 + v48, type metadata accessor for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>);
          swift_endAccess();
          _s7SwiftUI21ExclusivelyAccessibleV10CompletionV14callAsFunctionqd__Sgyqd_0_YKFAA21AttributedTextStorageVyAA08Platformj10ViewEditorK0VG_yts5NeverOTg5(v51, v47);
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
        v42 = v73;
        v43 = v74;
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      swift_unknownObjectRelease();
      outlined destroy of Any?(v80);
    }
  }

  static UTType.data.getter();
  v69(v42, 0, 1, v43);
  UTType.init(exportedAs:conformingTo:)();
  v53 = swift_allocObject();
  v54 = v61;
  v53[2] = v61;
  v53[3] = v40;
  v53[4] = 0;
  v55 = v54;

  return v44(v24, v43);
}

void closure #2 in UIKitRichTextEditorCoordinator.textDroppableView(_:willPerformDrop:)(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_2(0, &lazy cache variable for type metadata for TaskPriority?, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v24 - v12;
  if (a2 >> 60 != 15)
  {
    type metadata accessor for AttributedString.PasteboardOwner.Item<AttributeScopes.SwiftUIAttributes>();
    v15 = objc_allocWithZone(v14);
    outlined copy of Data._Representation(a1, a2);
    outlined copy of Data._Representation(a1, a2);
    v16 = specialized AttributedString.PasteboardOwner.Item.init(withItemProviderData:)(a1, a2);
    if (v16)
    {
      v17 = v16;
      v18 = type metadata accessor for TaskPriority();
      (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
      type metadata accessor for MainActor();
      v19 = a4;
      v20 = v17;
      v21 = static MainActor.shared.getter();
      v22 = swift_allocObject();
      v23 = MEMORY[0x1E69E85E0];
      v22[2] = v21;
      v22[3] = v23;
      v22[4] = v19;
      v22[5] = v20;
      v22[6] = a5;
      v22[7] = a6;
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v13, &async function pointer to partial apply for closure #1 in closure #2 in UIKitRichTextEditorCoordinator.textDroppableView(_:willPerformDrop:), v22);
      outlined consume of Data?(a1, a2);
    }

    else
    {

      outlined consume of Data?(a1, a2);
    }
  }
}

uint64_t closure #1 in closure #2 in UIKitRichTextEditorCoordinator.textDroppableView(_:willPerformDrop:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  type metadata accessor for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(0);
  v7[12] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[13] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in UIKitRichTextEditorCoordinator.textDroppableView(_:willPerformDrop:), v9, v8);
}

uint64_t closure #1 in closure #2 in UIKitRichTextEditorCoordinator.textDroppableView(_:willPerformDrop:)()
{
  v1 = v0[12];
  v3 = v0[10];
  v2 = v0[11];
  v5 = v0[8];
  v4 = v0[9];

  v6 = *(v4 + direct field offset for AttributedString.PasteboardOwner.Item.content);
  v7 = OBJC_IVAR____TtC7SwiftUI30UIKitRichTextEditorCoordinator__storage;
  swift_beginAccess();
  outlined init with copy of ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(v5 + v7, v1, type metadata accessor for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>);

  v8 = _s7SwiftUI21ExclusivelyAccessibleV19withExclusiveAccessyAC10CompletionVyx_qd__qd_0_Gqd__xzqd_0_YKXEs5ErrorRd_0_r0_lFAA21AttributedTextStorageVyAA08Platformk10ViewEditorL0VG_yts5NeverOTg503_s7a13UI30UIKitRichko67CoordinatorC15performDropWith4text2at10isSameViewySay10Foundation16j32StringVG_So8_NSRangeVSbtFyAA0qE7L27VyAA08PlatformeofT0VGzXEfU_So8_NSRangeVSay10Foundation0J6StringVGSbTf1cn_nTf4nngn_n(v1, v3, v2, v6, 0);
  LOBYTE(v3) = v9;

  swift_beginAccess();
  outlined destroy of (String, Any)(v5 + v7, type metadata accessor for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>);
  outlined init with take of ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(v1, v5 + v7, type metadata accessor for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>);
  swift_endAccess();
  _s7SwiftUI21ExclusivelyAccessibleV10CompletionV14callAsFunctionqd__Sgyqd_0_YKFAA21AttributedTextStorageVyAA08Platformj10ViewEditorK0VG_yts5NeverOTg5(v8, v3);

  v10 = v0[1];

  return v10();
}

uint64_t closure #1 in UIKitRichTextEditorCoordinator.performDropWith(text:at:isSameView:)(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, int a5)
{
  v148 = a5;
  v175 = a4;
  v179 = a2;
  v180 = a3;
  type metadata accessor for AttributedTextSelection?(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v170 = &v142 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = type metadata accessor for AttributedString.CharacterView();
  v166 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v158 = &v142 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for AttributedSubstring();
  v165 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v153 = &v142 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index)();
  v157 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v150 = &v142 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v156 = &v142 - v13;
  v152 = type metadata accessor for AttributedString.Index();
  v167 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v146 = &v142 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v151 = &v142 - v16;
  type metadata accessor for RangeSet<AttributedString.Index>.Ranges(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>.Ranges, MEMORY[0x1E69E7BA8]);
  v164 = v17;
  v163 = *(v17 - 1);
  MEMORY[0x1EEE9AC00](v17);
  v162 = &v142 - v18;
  type metadata accessor for RangeSet<AttributedString.Index>.Ranges(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
  v168 = *(v19 - 8);
  v169 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v171 = &v142 - v20;
  v21 = type metadata accessor for AttributedTextSelection(0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v174 = &v142 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = type metadata accessor for AttributedTextSelection.Indices(0);
  MEMORY[0x1EEE9AC00](v173);
  v181 = &v142 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>?(0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v161 = &v142 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v142 - v27;
  type metadata accessor for Range<AttributedString.Index>();
  v30 = v29;
  v31 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v149 = &v142 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v176 = &v142 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v142 - v36;
  v38 = type metadata accessor for AttributedString();
  v39 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v147 = &v142 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v184 = &v142 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v142 - v44;
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v142 - v47;
  v177 = a1;
  specialized AttributedTextStorage.text.getter();
  v182 = v39;
  v183 = v48;
  v49 = v48;
  v50 = v38;
  (*(v39 + 16))(v45, v49, v38);
  v51 = _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_3(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848]);
  Range<>.init<A>(_:in:)();
  v52 = *(v31 + 48);
  v172 = v30;
  v160 = (v31 + 48);
  v159 = v52;
  result = (v52)(v28, 1, v30);
  if (result == 1)
  {
    goto LABEL_28;
  }

  v180 = v37;
  outlined init with take of ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(v28, v37, type metadata accessor for Range<AttributedString.Index>);
  v186 = v175;
  AttributedString.init(stringLiteral:)();
  type metadata accessor for [AttributedString](0);
  _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_3(&lazy protocol witness table cache variable for type [AttributedString] and conformance [A], type metadata accessor for [AttributedString]);
  v145 = v51;
  Sequence<>.joined<A>(separator:)();
  v55 = v182 + 8;
  v54 = *(v182 + 8);
  v175 = v45;
  v179 = v54;
  v54(v45, v50);
  type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>();
  v57 = v177;
  v186 = *(v177 + *(v56 + 44));
  _sypSgMaTm_1(0, &lazy cache variable for type metadata for AtomicBox<ChangedValues>, &type metadata for ChangedValues, MEMORY[0x1E6981D80]);
  AtomicBox.wrappedValue.getter();
  v178 = v50;
  v58 = v174;
  if ((v185 & 2) != 0)
  {
    BindingStorage.selection.getter(v174);
  }

  else
  {
    PlatformTextViewEditorStorage.selection.getter(v174);
  }

  v59 = v181;
  v60 = v183;
  AttributedTextSelection.indices(in:)(v183, v181);
  outlined destroy of (String, Any)(v58, type metadata accessor for AttributedTextSelection);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v71 = v175;
    v72 = v180;
    v73 = v184;
    specialized AttributedTextStorage.updateEditorText<A>(replacing:with:)(v180, v184, v175);
    v74 = v178;
    v75 = v179;
    v179(v60, v178);
    (*(v182 + 32))(v60, v71, v74);
    v76 = v170;
    specialized AttributedTextStorage.updateEditorSelection(_:)(v57, v72);
    outlined destroy of (String, Any)(v76, type metadata accessor for AttributedTextSelection?);
    specialized AttributedTextStorage.commit()();
    v75(v73, v74);
    v75(v60, v74);
    v77 = type metadata accessor for AttributedTextSelection.Indices;
    v78 = v181;
LABEL_9:
    outlined destroy of (String, Any)(v78, v77);
    return outlined destroy of (String, Any)(v72, type metadata accessor for Range<AttributedString.Index>);
  }

  v174 = v55;
  v61 = v168;
  v62 = v171;
  v63 = v59;
  v64 = v169;
  (*(v168 + 32))(v171, v63, v169);
  v65 = v162;
  RangeSet.ranges.getter();
  v66 = v161;
  specialized Collection.first.getter(v161);
  (*(v163 + 8))(v65, v164);
  if (v159(v66, 1, v172) == 1)
  {
    (*(v61 + 8))(v62, v64);
    v67 = v178;
    v68 = v179;
    v179(v184, v178);
    v68(v183, v67);
    v69 = type metadata accessor for Range<AttributedString.Index>?;
    v70 = v66;
LABEL_22:
    outlined destroy of (String, Any)(v70, v69);
    v72 = v180;
    return outlined destroy of (String, Any)(v72, type metadata accessor for Range<AttributedString.Index>);
  }

  v79 = v176;
  outlined init with take of ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(v66, v176, type metadata accessor for Range<AttributedString.Index>);
  v80 = _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_3(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8]);
  v72 = v180;
  v81 = v152;
  v181 = v80;
  v82 = dispatch thunk of static Comparable.<= infix(_:_:)();
  v84 = v178;
  v83 = v179;
  if (v82 & 1) != 0 && (dispatch thunk of static Comparable.< infix(_:_:)())
  {
    (*(v61 + 8))(v171, v64);
    v83(v184, v84);
    v83(v183, v84);
    v77 = type metadata accessor for Range<AttributedString.Index>;
    v78 = v79;
    goto LABEL_9;
  }

  v85 = v151;
  AttributedString.startIndex.getter();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  v86 = v167;
  v87 = v167 + 32;
  v88 = *(v167 + 32);
  v89 = v156;
  v88(v156, v85, v81);
  v90 = v157;
  v91 = *(v86 + 16);
  v92 = v89 + *(v157 + 48);
  v161 = v86 + 16;
  v160 = v91;
  v91(v92, v79, v81);
  v93 = v150;
  outlined init with copy of ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(v89, v150, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
  v164 = *(v90 + 48);
  v94 = v149;
  v88(v149, v93, v81);
  v95 = *(v86 + 8);
  v95(&v164[v93], v81);
  outlined init with take of ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(v89, v93, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
  v96 = *(v90 + 48);
  v97 = v172;
  v98 = v94 + *(v172 + 36);
  v162 = v88;
  v163 = v87;
  v88(v98, (v93 + v96), v81);
  v173 = v95;
  v167 = v86 + 8;
  v95(v93, v81);
  v99 = _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_3(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>);
  v100 = v153;
  v159 = v99;
  AttributedString.subscript.getter();
  v101 = v94;
  outlined destroy of (String, Any)(v94, type metadata accessor for Range<AttributedString.Index>);
  v102 = v158;
  AttributedSubstring.characters.getter();
  v144 = *(v165 + 8);
  v165 += 8;
  v144(v100, v154);
  v143 = AttributedString.CharacterView._count.getter();
  v103 = *(v166 + 8);
  v166 += 8;
  v164 = v103;
  (v103)(v102, v155);
  v104 = v176 + *(v97 + 36);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v105 = v156;
  v106 = v160;
  v160(v156, v176, v81);
  v107 = v157;
  v108 = v105 + *(v157 + 48);
  v142 = v104;
  v106(v108, v104, v81);
  outlined init with copy of ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(v105, v93, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
  v109 = *(v107 + 48);
  v110 = v162;
  (v162)(v101, v93, v81);
  v111 = v173;
  v173(v93 + v109, v81);
  outlined init with take of ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(v105, v93, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
  v110(v101 + *(v172 + 36), v93 + *(v107 + 48), v81);
  v111(v93, v81);
  v112 = v153;
  v113 = v183;
  AttributedString.subscript.getter();
  outlined destroy of (String, Any)(v101, type metadata accessor for Range<AttributedString.Index>);
  v114 = v158;
  AttributedSubstring.characters.getter();
  v144(v112, v154);
  v165 = AttributedString.CharacterView._count.getter();
  v115 = v114;
  v116 = v155;
  (v164)(v115, v155);
  v117 = v175;
  v118 = v177;
  specialized AttributedTextStorage.updateEditorText<A>(replacing:with:)(v180, v184, v175);
  v119 = v178;
  v120 = v179;
  v179(v113, v178);
  v121 = v182 + 32;
  v172 = *(v182 + 32);
  (v172)(v113, v117, v119);
  v122 = v116;
  v123 = v113;
  v124 = v173;
  if ((v148 & 1) == 0)
  {
LABEL_21:
    v140 = v170;
    v141 = v176;
    specialized AttributedTextStorage.updateEditorSelection(_:)(v118, v176);
    outlined destroy of (String, Any)(v140, type metadata accessor for AttributedTextSelection?);
    specialized AttributedTextStorage.commit()();
    (*(v168 + 8))(v171, v169);
    v120(v184, v119);
    v120(v123, v119);
    v69 = type metadata accessor for Range<AttributedString.Index>;
    v70 = v141;
    goto LABEL_22;
  }

  v125 = v122;
  v182 = v121;
  v126 = v152;
  if ((dispatch thunk of static Comparable.> infix(_:_:)() & 1) == 0)
  {
LABEL_20:
    v139 = v147;
    AttributedString.init()();
    specialized AttributedTextStorage.updateEditorText<A>(replacing:with:)(v176, v139, v117);
    v120 = v179;
    v179(v139, v119);
    v120(v123, v119);
    (v172)(v123, v117, v119);
    goto LABEL_21;
  }

  v127 = v126;
  v128 = v146;
  AttributedString.startIndex.getter();
  v129 = v158;
  AttributedString.characters.getter();
  v130 = AttributedString.CharacterView._count.getter();
  result = (v164)(v129, v125);
  if (!__OFADD__(v143, v130))
  {
    v131 = v151;
    AttributedStringProtocol.index(_:offsetByCharacters:)();
    v124(v128, v127);
    AttributedStringProtocol.index(_:offsetByCharacters:)();
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    v132 = v157;
    v133 = v156;
    v134 = v162;
    if (result)
    {
      (v162)(v156, v131, v127);
      v134(v133 + *(v132 + 48), v128, v127);
      v135 = v150;
      outlined init with copy of ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(v133, v150, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
      v136 = v133;
      v137 = *(v132 + 48);
      v138 = v176;
      outlined destroy of (String, Any)(v176, type metadata accessor for Range<AttributedString.Index>);
      v134(v138, v135, v127);
      v124((v135 + v137), v127);
      outlined init with take of ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(v136, v135, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
      v134(v142, (v135 + *(v132 + 48)), v127);
      v124(v135, v127);
      v118 = v177;
      v119 = v178;
      v123 = v183;
      v117 = v175;
      goto LABEL_20;
    }

    goto LABEL_27;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}
uint64_t type metadata accessor for UIViewPlatformViewDefinition()
{
  result = type metadata singleton initialization cache for UIViewPlatformViewDefinition;
  if (!type metadata singleton initialization cache for UIViewPlatformViewDefinition)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for SortableTableHeaderButton(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata accessor for CommandOperation?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void _s7SwiftUI16CommandOperationVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s7SwiftUI16CommandOperationVSgMaTm_1(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void _s7SwiftUI16CommandOperationVSgMaTm_2(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s7SwiftUI16CommandOperationVSgMaTm_3(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI12PropertyListVTt0g5Tf4g_n(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  type metadata accessor for _DictionaryStorage<ObjectIdentifier, PropertyList>();
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t initializeWithCopy for FocusedValues(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

void *initializeBufferWithCopyOfBuffer for FocusStore(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  return a1;
}

void one-time initialization function for configuredForPlatform()
{
  type metadata accessor for ViewGraphHost();
  static ViewGraphHost.defaultEnvironment.getter();
  EnvironmentValues._configureForPlatform(traitCollection:)(0);
}

double UIUserInterfaceIdiom.idiom.getter@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (a1 > 2)
  {
    if (a1 <= 6)
    {
      goto LABEL_6;
    }

LABEL_5:
    *a2 = 0;
    a2[1] = 0;
    return result;
  }

  if (a1 > 2)
  {
    goto LABEL_5;
  }

LABEL_6:
  AnyInterfaceIdiom.init<A>(_:)();
  result = *&v4;
  *a2 = v4;
  return result;
}

void EnvironmentValues._configureForPlatform(traitCollection:)(void *a1)
{
  v3 = type metadata accessor for DesignIdiom();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16[-v8];
  type metadata accessor for SwiftUIPlatformProvidersDefinition();
  EnvironmentValues.platformProvidersDefinition.setter();
  EnvironmentValues.hasSystemOpenURLAction.setter();
  v10 = v1[1];
  *&v21[0] = *v1;
  *(&v21[0] + 1) = v10;

  static OpenURLAction.updateDefaultActions(env:)(v21);

  v11 = [objc_opt_self() mainScreen];
  if (a1)
  {
    v12 = [a1 userInterfaceIdiom];
  }

  else
  {
    v13 = [objc_opt_self() currentDevice];
    v12 = [v13 userInterfaceIdiom];
  }

  v14.n128_f64[0] = UIUserInterfaceIdiom.idiom.getter(v12, v21);
  if (*&v21[0])
  {
    v17 = v21[0];
    AnyInterfaceIdiom.interfaceIdiom.getter();
    EnvironmentValues.viewGraphIdiom.setter();
  }

  if (v12 > 6)
  {
    v15 = MEMORY[0x1E6999C38];
  }

  else
  {
    v15 = qword_1E7237918[v12];
  }

  (*(v4 + 104))(v6, *v15, v3, v14);
  (*(v4 + 32))(v9, v6, v3);
  EnvironmentValues.designIdiom.setter();
  [v11 _referenceBounds];
  [v11 _pointsPerInch];
  ViewGraphHost.AssetCatalogConfiguration.init(referenceBounds:pointsPerInch:preferredArtworkSubtype:)();
  v17 = v21[0];
  v18 = v21[1];
  v19 = v22;
  v20 = v23;
  EnvironmentValues.viewGraphAssetCatalogConfiguration.setter();
}

uint64_t type metadata accessor for SwiftUIPlatformProvidersDefinition()
{
  result = type metadata singleton initialization cache for SwiftUIPlatformProvidersDefinition;
  if (!type metadata singleton initialization cache for SwiftUIPlatformProvidersDefinition)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static OpenURLAction.updateDefaultActions(env:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  static OpenURLAction.defaultAction.getter();
  if (v9 == -1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v5 = partial apply for closure #1 in static OpenURLAction._defaultAction(env:);
    v6 = v3;
    v7 = 0;
    v8 = 0;
    v9 = 0;

    static OpenURLAction.defaultAction.setter();
  }

  else
  {
    outlined consume of OpenURLAction?(v5, v6, v7, v8, v9);
  }

  static OpenURLAction.defaultSensitiveAction.getter();
  return outlined consume of OpenURLAction?(v5, v6, v7, v8, v9);
}

uint64_t sub_18BD4D1B8()
{

  return swift_deallocObject();
}

void type metadata accessor for AnyAccessibilityValue?(uint64_t a1, unint64_t *a2)
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

void type metadata accessor for SceneList.Item?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata accessor for Any?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata accessor for PPTTestCase?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _sypSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata accessor for ViewTransform?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _sypSgMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _sypSgMaTm_2(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _sypSgMaTm_3(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _sypSgMaTm_4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _sypSgMaTm_5(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _sypSgMaTm_6(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _sypSgMaTm_7(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _sypSgMaTm_8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t type metadata completion function for SwiftUIGlue2()
{
  return type metadata completion function for SwiftUIGlue2();
}

{
  return swift_initClassMetadata2();
}

id @objc SwiftUIGlue2.init()(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

void SwiftUIGlue2.configureEmptyEnvironment(_:)(uint64_t *a1)
{
  v1 = *a1;
  if (one-time initialization token for configuredForPlatform != -1)
  {
    swift_once();
  }

  if (v1)
  {
    if (static EnvironmentValues.configuredForPlatform)
    {
      v2 = v1 == static EnvironmentValues.configuredForPlatform;
    }

    else
    {
      v2 = 0;
    }

    if (!v2)
    {
      EnvironmentValues._configureForPlatform(traitCollection:)(0);
    }
  }

  else if (static EnvironmentValues.configuredForPlatform)
  {

    EnvironmentValues.plist.setter();
  }
}

void type metadata completion function for SwiftUISearchController()
{
  _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0(319, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0(319, &lazy cache variable for type metadata for SearchFieldConfiguration?, type metadata accessor for SearchFieldConfiguration, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata completion function for SearchFieldConfiguration()
{
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_5(319, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void type metadata accessor for ToolbarStorage.SearchItem?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata completion function for ToolbarStorage.SearchItem()
{
  _s7SwiftUI16CommandOperationVSgMaTm_2(319, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t type metadata completion function for SearchFieldState()
{
  result = type metadata accessor for AttributedString();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void type metadata accessor for Binding<SearchFieldState>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_2(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_3(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_5(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *_UIHostingView.init(rootView:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = specialized _UIHostingView.init(rootView:)(a1);
  (*(*(*((v4 & v3) + 0x50) - 8) + 8))(a1);
  return v5;
}

void static UIViewPlatformViewDefinition.makePlatformView(view:kind:)(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClassUnconditional();
  v4 = v2;
  specialized static UIViewPlatformViewDefinition.initView(_:kind:)(v3, &v4);
}

id static UIViewPlatformViewDefinition.makeLayerView(type:kind:)(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if (v2 > 0x12)
  {
    goto LABEL_7;
  }

  if (((1 << v2) & 0x57C21) == 0)
  {
    if (v2 == 3)
    {
      type metadata accessor for _UIShapeHitTestingView();
      goto LABEL_4;
    }

LABEL_7:
    type metadata accessor for _UIGraphicsView();
    goto LABEL_4;
  }

  type metadata accessor for _UIInheritedView();
LABEL_4:
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = _UIKitCreateCustomView(ObjCClassFromMetadata, v4);

  v7 = v2;
  specialized static UIViewPlatformViewDefinition.initView(_:kind:)(v5, &v7);
  return v5;
}

id _UIKitCreateCustomView(objc_class *a1, void *a2)
{
  v3 = a2;
  v4 = [[a1 alloc] _initWithLayer:v3];

  return v4;
}

void specialized static UIViewPlatformViewDefinition.initView(_:kind:)(id a1, unsigned __int8 *a2)
{
  v3 = *a2;
  if (v3 - 15 >= 2)
  {
    [a1 setAutoresizesSubviews_];
    if (v3 > 0x12 || ((1 << v3) & 0x47C21) == 0)
    {
      [a1 _setFocusInteractionEnabled_];
    }
  }

  v5 = [a1 layer];
  [v5 setAnchorPoint_];

  if (v3 <= 0x12)
  {
    if (((1 << v3) & 0x47801) != 0)
    {
      v6 = [a1 layer];
      [v6 setAllowsGroupOpacity_];
      [v6 setAllowsGroupBlending_];
    }

    else
    {
      if (((1 << v3) & 0xE) == 0)
      {
        return;
      }

      v6 = [a1 layer];
      [v6 setAllowsEdgeAntialiasing_];
    }
  }
}

id static UIViewPlatformViewDefinition.makeView(kind:)(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 > 0x12)
  {
    goto LABEL_9;
  }

  if (((1 << v1) & 0x53C21) != 0)
  {
    type metadata accessor for _UIInheritedView();
LABEL_4:
    v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
LABEL_5:
    v13 = v1;
    specialized static UIViewPlatformViewDefinition.initView(_:kind:)(v2, &v13);

    return v2;
  }

  if (v1 != 14)
  {
LABEL_9:
    type metadata accessor for _UIGraphicsView();
    goto LABEL_4;
  }

  type metadata accessor for _UIInheritedView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v6 = objc_allocWithZone(ObjCClassFromMetadata);
  v7 = v5;
  v8 = [v6 init];
  [v7 setMaskView_];

  v9 = v7;
  result = [v7 maskView];
  if (result)
  {
    v10 = result;
    [result setAutoresizesSubviews_];
    v11 = [v10 layer];
    [v11 setAnchorPoint_];

    v12 = [v10 layer];
    [v12 setAllowsGroupOpacity_];
    [v12 setAllowsGroupBlending_];

    v2 = v9;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t type metadata completion function for _UIHostingView()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t type metadata completion function for DeprecatedAlertBridge()
{
  result = type metadata accessor for Optional();
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

id EditMenuBridge.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_host + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_interaction] = 0;
  *&v0[OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_editMenuPresentationSeed] = 0;
  v2 = &v0[OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_lastEditMenuPresentation];
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 2) = 0u;
  v3 = &v0[OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu];
  *(v3 + 4) = 0;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 40) = xmmword_18CD6A6D0;
  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

void *specialized _UIHostingView.init(rootView:)(uint64_t a1)
{
  v2 = v1;
  v190 = a1;
  v211 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v4 = MEMORY[0x1E69E7D40];
  v5 = *v1;
  v6 = *MEMORY[0x1E69E7D40] & *v1;
  v184 = *MEMORY[0x1E69E7D40];
  v7 = v184;
  v182 = v6;
  v187 = type metadata accessor for UIHostingViewBase.Options();
  v189 = *(v187 - 8);
  MEMORY[0x1EEE9AC00](v187);
  v183 = &v176 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v178 = &v176 - v10;
  v188 = type metadata accessor for UIHostingViewBase.Configuration();
  v186 = *(v188 - 8);
  MEMORY[0x1EEE9AC00](v188);
  v180 = &v176 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v185 = &v176 - v13;
  *(v2 + *((v7 & v5) + 0x70)) = 0;
  v14 = *((*v4 & *v2) + 0x78);
  type metadata accessor for EventBindingManager();
  v15 = EventBindingManager.__allocating_init()();
  v181 = v14;
  *(v2 + v14) = v15;
  *(v2 + *((*v4 & *v2) + 0x80)) = 0;
  *(v2 + *((*v4 & *v2) + 0x88)) = 0;
  *(v2 + *((*v4 & *v2) + 0x90)) = 1;
  *(v2 + *((*v4 & *v2) + 0x98)) = 0;
  *(v2 + *((*v4 & *v2) + 0xA0)) = 0;
  v16 = v2 + *((*v4 & *v2) + 0xA8);
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v16[32] = 1;
  v17 = v2 + *((*v4 & *v2) + 0xB0);
  *v17 = 0u;
  *(v17 + 1) = 0u;
  v17[32] = 1;
  *(v2 + *((*v4 & *v2) + 0xB8)) = 0;
  *(v2 + *((*v4 & *v2) + 0xC0)) = 0;
  *(v2 + *((*v4 & *v2) + 0xC8)) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v4 & *v2) + 0xD8)) = 0;
  v18 = v2 + *((*v4 & *v2) + 0xE8);
  *v18 = 0;
  v18[8] = 1;
  *(v2 + *((*v4 & *v2) + 0xF0)) = 0;
  *(v2 + *((*v4 & *v2) + 0xF8)) = 2;
  v19 = *((*v4 & *v2) + 0x100);
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v3VGMaTm_1(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<Alert.Presentation>, &type metadata for Alert.Presentation, &protocol witness table for Alert.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v21 = v20;
  v22 = objc_allocWithZone(v20);
  *(v22 + *((*v4 & *v22) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v22 + *((*v4 & *v22) + 0x68)) = 0;
  *(v22 + *((*v4 & *v22) + 0x70)) = 0;
  *(v22 + *((*v4 & *v22) + 0x78)) = 0;
  EnvironmentValues.init()();
  v23 = v22 + *((*v4 & *v22) + 0x88);
  *v23 = 0u;
  *(v23 + 1) = 0u;
  *(v23 + 2) = 0u;
  *(v23 + 3) = 0u;
  *(v23 + 4) = 0u;
  *(v23 + 5) = 0u;
  *(v23 + 6) = 0u;
  *(v23 + 7) = 0u;
  *(v23 + 8) = 0u;
  *(v23 + 9) = 0u;
  *(v23 + 10) = 0u;
  *(v23 + 11) = 0u;
  *(v23 + 12) = 0u;
  *(v23 + 13) = 0u;
  *(v23 + 14) = 0u;
  *(v23 + 15) = 0u;
  *(v23 + 16) = 0u;
  *(v23 + 34) = 0;
  *(v22 + *((*v4 & *v22) + 0x90)) = 0;
  *(v22 + *((*v4 & *v22) + 0x98)) = 1;
  v195.receiver = v22;
  v195.super_class = v21;
  *(v2 + v19) = objc_msgSendSuper2(&v195, sel_init);
  v24 = *((*v4 & *v2) + 0x108);
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v3VGMaTm_1(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<ActionSheet.Presentation>, &type metadata for ActionSheet.Presentation, &protocol witness table for ActionSheet.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v26 = v25;
  v27 = objc_allocWithZone(v25);
  *(v27 + *((*v4 & *v27) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v27 + *((*v4 & *v27) + 0x68)) = 0;
  *(v27 + *((*v4 & *v27) + 0x70)) = 0;
  *(v27 + *((*v4 & *v27) + 0x78)) = 0;
  EnvironmentValues.init()();
  v28 = v27 + *((*v4 & *v27) + 0x88);
  *v28 = 0u;
  *(v28 + 1) = 0u;
  *(v28 + 2) = 0u;
  *(v28 + 3) = 0u;
  *(v28 + 4) = 0u;
  *(v28 + 5) = 0u;
  *(v28 + 6) = 0u;
  *(v28 + 7) = 0u;
  *(v28 + 8) = 0u;
  *(v28 + 9) = 0u;
  *(v28 + 20) = 0;
  *(v27 + *((*v4 & *v27) + 0x90)) = 0;
  *(v27 + *((*v4 & *v27) + 0x98)) = 0;
  v194.receiver = v27;
  v194.super_class = v26;
  *(v2 + v24) = objc_msgSendSuper2(&v194, sel_init);
  *(v2 + *((*v4 & *v2) + 0x110)) = 1;
  v29 = *((*v4 & *v2) + 0x118);
  type metadata accessor for FocusBridge();
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *(v30 + 32) = 0;
  *(v30 + 40) = 0;
  swift_unknownObjectWeakInit();
  v31 = MEMORY[0x1E69E7CC0];
  v32 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI12PropertyListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v30 + 48) = 0;
  *(v30 + 56) = v31;
  *(v30 + 64) = v32;
  EnvironmentValues.init()();
  *(v30 + 120) = 0u;
  *(v30 + 104) = 0u;
  *(v30 + 88) = 0u;
  v176 = xmmword_18CD6A6D0;
  *(v30 + 136) = xmmword_18CD6A6D0;
  swift_weakInit();
  *(v30 + 160) = 0;
  *(v30 + 168) = 0;
  *(v30 + 176) = 1;
  *(v2 + v29) = v30;
  v33 = *((*v4 & *v2) + 0x120);
  *(v2 + v33) = [objc_allocWithZone(type metadata accessor for DragAndDropBridge()) init];
  *(v2 + *((*v4 & *v2) + 0x128)) = 0;
  v34 = *((*v4 & *v2) + 0x130);
  *(v2 + v34) = [objc_allocWithZone(type metadata accessor for TooltipBridge()) init];
  v35 = *((*v4 & *v2) + 0x138);
  *(v2 + v35) = [objc_allocWithZone(type metadata accessor for EditMenuBridge()) init];
  *(v2 + *((*v4 & *v2) + 0x140)) = 0;
  *(v2 + *((*v4 & *v2) + 0x148)) = 0;
  v36 = *((*v4 & *v2) + 0x150);
  type metadata accessor for UIKitStatusBarBridge();
  v37 = swift_allocObject();
  *(v37 + 16) = 514;
  *(v37 + 24) = v31;
  *(v37 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + v36) = v37;
  swift_weakInit();
  *(v2 + *((*v4 & *v2) + 0x160)) = 0;
  v38 = *((*v4 & *v2) + 0x168);
  *(v2 + v38) = [objc_allocWithZone(type metadata accessor for AVKitCaptureButtonBridge()) init];
  v39 = *((*v4 & *v2) + 0x170);
  *(v2 + v39) = [objc_allocWithZone(type metadata accessor for PencilEventsBridge()) init];
  *(v2 + *((*v4 & *v2) + 0x178)) = 0;
  *(v2 + *((*v4 & *v2) + 0x180)) = 0;
  v40 = *((*v4 & *v2) + 0x188);
  *(v2 + v40) = [objc_allocWithZone(type metadata accessor for ContextMenuBridge()) init];
  v41 = *((*v4 & *v2) + 0x190);
  type metadata accessor for InteractiveResizeBridge();
  v42 = swift_allocObject();
  *(v42 + 16) = 0;
  *(v42 + 20) = 0;
  *(v42 + 24) = 0;
  v177 = v41;
  *(v2 + v41) = v42;
  *(v2 + *((*v4 & *v2) + 0x198)) = 0;
  v43 = *((*v4 & *v2) + 0x1A0);
  *(v2 + v43) = [objc_allocWithZone(type metadata accessor for UILargeContentViewerInteractionBridge()) init];
  *(v2 + *((*v4 & *v2) + 0x1A8)) = 0;
  *(v2 + *((*v4 & *v2) + 0x1B0)) = 0;
  *(v2 + *((*v4 & *v2) + 0x1B8)) = 0;
  *(v2 + *((*v4 & *v2) + 0x1C0) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v4 & *v2) + 0x1C8)) = 0;
  v44 = v2 + *((*v4 & *v2) + 0x1D0);
  *v44 = 0;
  v44[8] = 0;
  *(v44 + 1) = xmmword_18CD76350;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v4 & *v2) + 0x1E0)) = 0;
  *(v2 + *((*v4 & *v2) + 0x1E8)) = 0;
  *(v2 + *((*v4 & *v2) + 0x1F0)) = 0;
  *(v2 + *((*v4 & *v2) + 0x1F8)) = 0;
  *(v2 + *((*v4 & *v2) + 0x200)) = 0;
  v45 = *((v184 & v5) + 0x50);
  v46 = (*(*(v45 - 8) + 16))(v2 + *((*v4 & *v2) + 0x60), v190, v45);
  MEMORY[0x18D00ABE0](v46);
  type metadata accessor for PlatformColorDefinition();
  type metadata accessor for UIKitPlatformColorDefinition();
  static PlatformSystemDefinition.uiKit.getter();
  static PlatformColorDefinition.setInternalDefinition(_:system:)();
  type metadata accessor for PlatformScrollEdgeEffectTagDefinition();
  type metadata accessor for ScrollEdgeEffectTagModifierDefinition();
  static PlatformScrollEdgeEffectTagDefinition.setDefinition(_:)();
  type metadata accessor for PlatformItemsDefinition();
  type metadata accessor for UIKitPlatformItemsDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  v47 = static PlatformItemsDefinition.setDefinition(_:system:)();
  v48 = *(ObjectType + 1384);
  v179 = ObjectType;
  v48(&v198, v47);
  type metadata accessor for PlatformViewDefinition();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
  if (!static PlatformViewDefinition.for (_:)())
  {
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  type metadata accessor for ViewGraphHost();
  v49 = *(v182 + 88);
  swift_allocObject();
  v182 = v45;
  v184 = v49;
  v50 = ViewGraphHost.init<A>(rootViewType:outputs:viewDefinition:)();
  v190 = *(v50 + 88);

  v51 = v185;
  v52 = UIHostingViewBase.Configuration.init()();
  v53 = v183;
  MEMORY[0x18D001BC0](v52);
  v54 = UIHostingViewBase.Configuration.options.modify();
  v55 = v178;
  specialized OptionSet<>.insert(_:)(v178, v53);
  v56 = (v189 + 8);
  v57 = *(v189 + 1);
  v58 = v187;
  v57(v53, v187);
  v189 = v56;
  v57(v55, v58);
  v59 = v54(&v198, 0);
  v60 = v51;
  if (((*(v179 + 1408))(v59) & 1) == 0)
  {
    v61 = v183;
    static UIHostingViewBase.Options.allowUnregisteredGeometryChanges.getter();
    v179 = UIHostingViewBase.Configuration.options.modify();
    specialized OptionSet<>.insert(_:)(v55, v61);
    v62 = v187;
    v57(v61, v187);
    v63 = v62;
    v60 = v51;
    v57(v55, v63);
    (v179)(&v198, 0);
  }

  (*(v186 + 16))(v180, v60, v188);
  v64 = objc_allocWithZone(type metadata accessor for UIHostingViewBase());

  v179 = v50;
  v65 = UIHostingViewBase.init(viewGraph:configuration:)();
  v66 = MEMORY[0x1E69E7D40];
  *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x68)) = v65;
  v67 = v190;

  *&v198 = specialized FocusViewGraph.init(graph:)(v68);
  *(&v198 + 1) = v69;
  LOWORD(v199) = v70 & 0x101;
  BYTE2(v199) = v71 & 1;
  lazy protocol witness table accessor for type FocusViewGraph and conformance FocusViewGraph();
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type PlatformItemListViewGraph and conformance PlatformItemListViewGraph();
  *&v198 = 0;
  WORD4(v198) = 0;
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput();
  if (static UserDefaultKeyedFeature.isEnabled.getter())
  {
    v72 = *MEMORY[0x1E698D3F8];
    v196 = 0uLL;
    *v197 = v72;
    memset(&v197[8], 0, 64);
    *&v197[72] = v176;
    lazy protocol witness table accessor for type ViewGraphBridgePropertiesFeature and conformance ViewGraphBridgePropertiesFeature();
    ViewGraph.append<A>(feature:)();
    v201 = *&v197[32];
    v202 = *&v197[48];
    v203 = *&v197[64];
    v204 = *&v197[80];
    v198 = v196;
    v199 = *v197;
    v200 = *&v197[16];
    outlined destroy of ViewGraphBridgePropertiesFeature(&v198);
  }

  if (_UIUpdateAdaptiveRateNeeded())
  {
    destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(v182, v184, v73, v74);
    type metadata accessor for _UIHostingView.EnableVFDFeature();
    swift_getWitnessTable();
    ViewGraph.append<A>(feature:)();
  }

  AccessibilityViewGraph.init(graph:)(v75, &v196);
  aBlock = v196;
  v208 = *v197;
  v209 = *&v197[16];
  v210 = *&v197[32];
  lazy protocol witness table accessor for type AccessibilityViewGraph and conformance AccessibilityViewGraph();
  ViewGraph.append<A>(feature:)();
  v198 = aBlock;
  v199 = v208;
  v200 = v209;
  *&v201 = v210;
  outlined destroy of AccessibilityViewGraph(&v198);
  v76 = *(v2 + v177);
  v77 = AGSubgraphGetCurrent();
  swift_beginAccess();

  AGSubgraphSetCurrent();
  LOBYTE(aBlock) = 0;
  v78 = Attribute.init<A>(body:value:flags:update:)();
  AGSubgraphSetCurrent();

  *&aBlock = v76;
  DWORD2(aBlock) = v78;
  lazy protocol witness table accessor for type InteractiveResizeChangeViewGraphFeature and conformance InteractiveResizeChangeViewGraphFeature();
  ViewGraph.append<A>(feature:)();

  v79 = MEMORY[0x1E69E7CC0];
  v80 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E7BindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(&v208 + 1) = &type metadata for HoverEventDispatcher;
  *&v209 = lazy protocol witness table accessor for type HoverEventDispatcher and conformance HoverEventDispatcher();
  *&aBlock = v80;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v208 + 1) = &type metadata for PencilDoubleTapEventDispatcher;
  *&v209 = lazy protocol witness table accessor for type PencilDoubleTapEventDispatcher and conformance PencilDoubleTapEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v208 + 1) = &type metadata for PencilSqueezeEventDispatcher;
  *&v209 = lazy protocol witness table accessor for type PencilSqueezeEventDispatcher and conformance PencilSqueezeEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v81 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_SayAC8KeyPressV7HandlerVGTt0g5Tf4g_n(v79);
  *(&v208 + 1) = &type metadata for KeyEventDispatcher;
  *&v209 = lazy protocol witness table accessor for type KeyEventDispatcher and conformance KeyEventDispatcher();
  *&aBlock = v81;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  type metadata accessor for UIKitEventBindingBridge();
  swift_allocObject();

  *(v2 + *((*v66 & *v2) + 0xE0)) = UIKitEventBindingBridge.init(eventBindingManager:)();
  v82 = type metadata accessor for _UIHostingView();
  v193.receiver = v2;
  v193.super_class = v82;
  v189 = v82;
  v83 = objc_msgSendSuper2(&v193, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v84 = v83;
  swift_unknownObjectWeakInit();

  v85 = type metadata accessor for _UIHostingView.HostViewGraph();
  swift_getWitnessTable();
  ViewGraph.append<A>(feature:)();
  v86 = (*(*(v85 - 8) + 8))(&aBlock, v85);
  (*((*v66 & *v84) + 0x5C0))(v86);
  v87 = _UIHostingView.base.getter();
  UIHostingViewBase.setUp()();

  static RepresentableContextValues.current.getter();
  v88 = aBlock;
  if (aBlock != 1)
  {
    v89 = *(&aBlock + 1);
    v90 = v208;
    v91 = v209;
    if (aBlock)
    {

      v92 = v189;
      WitnessTable = swift_getWitnessTable();
      ViewRendererHost.setPreferenceBridge(_:)(v88, v92, WitnessTable);
    }

    *&aBlock = v88;
    *(&aBlock + 1) = v89;
    v208 = v90;
    LOBYTE(v209) = v91 & 1;
    RepresentableContextValues.environment.getter();
    v206 = v205;
    UIHostingViewBase.initialInheritedEnvironment.setter();
    outlined consume of RepresentableContextValues?(v88, v89, v90, *(&v90 + 1), v91);
    v67 = v190;
  }

  specialized _UIHostingView.feedbackCache.getter();
  swift_unknownObjectWeakAssign();
  v94 = v84;

  v95 = *(v94 + *((*v66 & *v94) + 0x150));
  v96 = swift_getWitnessTable();
  *(v95 + 40) = v96;
  swift_unknownObjectWeakAssign();

  UIKitStatusBarBridge.addPreferences(to:)();

  v183 = *((*v66 & *v94) + 0x188);
  *(*&v183[v94] + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host + 8) = v96;
  swift_unknownObjectWeakAssign();
  v97 = *(v94 + *((*v66 & *v94) + 0x100));
  *(v97 + *((*v97 & *v66) + 0x60) + 8) = v96;
  swift_unknownObjectWeakAssign();

  GraphHost.addPreference<A>(_:)();
  v98 = *(v94 + *((*v66 & *v94) + 0x108));
  *(v98 + *((*v98 & *v66) + 0x60) + 8) = v96;
  swift_unknownObjectWeakAssign();

  GraphHost.addPreference<A>(_:)();
  v99 = _UIHostingView.sheetBridge.getter();
  if (v99)
  {
    *&v99[direct field offset for SheetBridge.host + 8] = v96;
    v100 = v99;
    swift_unknownObjectWeakAssign();
  }

  v101 = *v66 & *v94;
  v102 = *(v94 + *(v101 + 0x110));
  if (v102)
  {
    v103 = *((*v102 & *v66) + 0x210);
    v104 = v102;
    v103(v67);
    outlined consume of SheetBridge<SheetPreference.Key>??(v102);
    v101 = *v66 & *v94;
  }

  v105 = *(v94 + *(v101 + 280));
  v106 = swift_getWitnessTable();
  *(v105 + 32) = &protocol witness table for _UIHostingView<A>;
  *(v105 + 40) = v106;
  swift_unknownObjectWeakAssign();

  v107 = FocusBridge.host.getter();
  if (v107)
  {
    v109 = v107;
    v110 = v108;
    v111 = swift_getObjectType();
    (*(*(*(v110 + 8) + 8) + 8))(v111);

    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v112 = *((*v66 & *v94) + 0x120);
  *(*(v94 + v112) + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host + 8) = v96;
  swift_unknownObjectWeakAssign();
  v113 = *(v94 + v112);
  v114 = &v113[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_39;
  }

  v115 = *(v114 + 1);
  v116 = swift_getObjectType();
  v117 = *(*(v115 + 16) + 8);
  v118 = v113;
  LOBYTE(v116) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v116, v117);
  swift_unknownObjectRelease();
  if (v116)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  GraphHost.addPreference<A>(_:)();
  *(*(v94 + *((*v66 & *v94) + 0x130)) + OBJC_IVAR____TtC7SwiftUI13TooltipBridge_host + 8) = v96;
  swift_unknownObjectWeakAssign();
  v119 = v94;
  GraphHost.addPreference<A>(_:)();
  *(*(v119 + *((*v66 & *v119) + 0x138)) + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_host + 8) = v96;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  GraphHost.addPreference<A>(_:)();
  *(*(v119 + *((*v66 & *v119) + 0x170)) + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_host + 8) = v96;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  v120 = *v66 & *v119;
  v187 = v83;
  v121 = *(v120 + 360);
  *(*(v119 + v121) + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host + 8) = v96;
  swift_unknownObjectWeakAssign();

  v122 = *(v119 + v121);
  v123 = &v122[OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_40;
  }

  v124 = *(v123 + 1);
  v125 = swift_getObjectType();
  v126 = *(v124 + 8);
  v127 = *(v126 + 8);
  v128 = v122;
  v127(v125, v126);
  swift_unknownObjectRelease();
  GraphHost.addPreference<A>(_:)();

  v129 = [v119 traitCollection];

  v130 = [v129 userInterfaceIdiom];
  if (v130 == 1 || (v131 = [v119 traitCollection], v132 = objc_msgSend(v131, sel_userInterfaceIdiom), v131, v132 == 6))
  {
    v133 = [objc_allocWithZone(type metadata accessor for PointerBridge()) init];
    *&v133[OBJC_IVAR____TtC7SwiftUI13PointerBridge_host + 8] = v96;
    swift_unknownObjectWeakAssign();
    GraphHost.addPreference<A>(_:)();
    v134 = *((*MEMORY[0x1E69E7D40] & *v119) + 0x178);
    v135 = *(v119 + v134);
    *(v119 + v134) = v133;
  }

  v136 = *&v183[v94];
  v137 = &v136[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host];
  Strong = swift_unknownObjectWeakLoadStrong();
  v139 = v188;
  if (!Strong)
  {
LABEL_41:
    __break(1u);
  }

  v140 = *(v137 + 1);
  v141 = swift_getObjectType();
  v142 = *(*(v140 + 16) + 8);
  v143 = v136;
  LOBYTE(v141) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v141, v142);
  swift_unknownObjectRelease();
  v144 = v190;
  if (v141)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v145 = MEMORY[0x1E69E7D40];
  v146 = *((*MEMORY[0x1E69E7D40] & *v119) + 0x1A0);
  *(*(v119 + v146) + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_host + 8) = v96;
  v147 = swift_unknownObjectWeakAssign();
  v148 = *(v119 + v146);
  MEMORY[0x1EEE9AC00](v147);
  *(&v176 - 2) = v148;
  *(&v176 - 1) = v144;
  v149 = v119;
  v150 = v148;
  static Update.ensure<A>(_:)();

  v151 = *((*v145 & *v149) + 0x78);
  v152 = *(v149 + v151);
  v153 = swift_getWitnessTable();
  swift_beginAccess();
  *(v152 + 24) = v153;
  swift_unknownObjectWeakAssign();

  v154 = *(v149 + v151);
  v155 = *((*v145 & *v149) + 0xE0);
  swift_beginAccess();
  *(v154 + 40) = MEMORY[0x1E697F3C8];
  swift_unknownObjectWeakAssign();
  v156 = *(v149 + v155);
  v157 = *(v156 + 32);

  if (v157)
  {
    [v149 addGestureRecognizer_];
  }

  [v149 addGestureRecognizer_];

  _UIHostingView.legacySetupKeyboardAvoidanceNotifications()();
  if (isAppleInternalBuild()() && (_UIHostingView.isWindowRoot.getter() & 1) != 0)
  {
    v192[0] = 0;
    v158 = getpid();
    LODWORD(v189) = v158;
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(16);

    strcpy(&aBlock, "NameLayerTree-");
    HIBYTE(aBlock) = -18;
    v191 = v158;
    v159 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v159);

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v160 = static OS_dispatch_queue.main.getter();
    v161 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v162 = swift_allocObject();
    v163 = v184;
    v162[2] = v182;
    v162[3] = v163;
    v162[4] = v161;
    *&v209 = partial apply for closure #1 in _UIHostingView.init(rootView:);
    *(&v209 + 1) = v162;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v208 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
    *(&v208 + 1) = &block_descriptor_115_1;
    v164 = _Block_copy(&aBlock);

    v165 = String.utf8CString.getter();

    notify_register_dispatch((v165 + 32), v192 + 1, v160, v164);

    _Block_release(v164);

    v166 = static OS_dispatch_queue.main.getter();
    v167 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v168 = swift_allocObject();
    *(v168 + 16) = v182;
    *(v168 + 24) = v163;
    v139 = v188;
    *(v168 + 32) = v189;
    *(v168 + 40) = v167;
    *&v209 = partial apply for closure #2 in _UIHostingView.init(rootView:);
    *(&v209 + 1) = v168;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v208 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
    *(&v208 + 1) = &block_descriptor_122;
    v169 = _Block_copy(&aBlock);

    notify_register_dispatch("NameLayerTree", v192, v166, v169);
    _Block_release(v169);

    v170 = v149 + *((*MEMORY[0x1E69E7D40] & *v149) + 0xE8);
    *v170 = HIDWORD(v192[0]) | (LODWORD(v192[0]) << 32);
    v170[8] = 0;
  }

  v171 = [objc_opt_self() defaultCenter];
  [v171 addObserver:v149 selector:sel_accessibilityFocusedElementDidChange_ name:*MEMORY[0x1E69DD8C0] object:0];
  v172 = one-time initialization token for didUpdateListLayout;
  v173 = v149;
  if (v172 != -1)
  {
    swift_once();
  }

  [v171 addObserver:v173 selector:sel_clarityUISettingDidChange_ name:static ClarityUI.didUpdateListLayout object:0];

  _UIHostingView.addToHostingViewRegistry()();
  v174 = v185;
  if ((static Spacing.hasSetupDefaultValue & 1) == 0)
  {
    static Spacing.hasSetupDefaultValue = 1;
  }

  (*(v186 + 8))(v174, v139);
  static Update.end()();
  return v173;
}

{
  v2 = v1;
  v209 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v186 = type metadata accessor for UIHostingViewBase.Options();
  v178 = *(v186 - 8);
  MEMORY[0x1EEE9AC00](v186);
  v180 = &v173 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v185 = &v173 - v7;
  v8 = type metadata accessor for UIHostingViewBase.Configuration();
  v182 = *(v8 - 8);
  v183 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v177 = &v173 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v184 = &v173 - v11;
  v12 = MEMORY[0x1E69E7D40];
  *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x70)) = 0;
  v13 = *((*v12 & *v1) + 0x78);
  type metadata accessor for EventBindingManager();
  v14 = EventBindingManager.__allocating_init()();
  v179 = v13;
  *(v1 + v13) = v14;
  *(v1 + *((*v12 & *v1) + 0x80)) = 0;
  *(v1 + *((*v12 & *v1) + 0x88)) = 0;
  *(v1 + *((*v12 & *v1) + 0x90)) = 1;
  *(v1 + *((*v12 & *v1) + 0x98)) = 0;
  *(v1 + *((*v12 & *v1) + 0xA0)) = 0;
  v15 = v2 + *((*v12 & *v2) + 0xA8);
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v15[32] = 1;
  v16 = v2 + *((*v12 & *v2) + 0xB0);
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v16[32] = 1;
  *(v1 + *((*v12 & *v1) + 0xB8)) = 0;
  *(v1 + *((*v12 & *v1) + 0xC0)) = 0;
  *(v1 + *((*v12 & *v1) + 0xC8)) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + *((*v12 & *v1) + 0xD8)) = 0;
  v17 = v2 + *((*v12 & *v2) + 0xE8);
  *v17 = 0;
  v17[8] = 1;
  *(v1 + *((*v12 & *v1) + 0xF0)) = 0;
  *(v1 + *((*v12 & *v1) + 0xF8)) = 2;
  v18 = *((*v12 & *v1) + 0x100);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<Alert.Presentation>, &type metadata for Alert.Presentation, &protocol witness table for Alert.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v20 = v19;
  v21 = objc_allocWithZone(v19);
  *(v21 + *((*v12 & *v21) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v21 + *((*v12 & *v21) + 0x68)) = 0;
  *(v21 + *((*v12 & *v21) + 0x70)) = 0;
  *(v21 + *((*v12 & *v21) + 0x78)) = 0;
  EnvironmentValues.init()();
  v22 = v21 + *((*v12 & *v21) + 0x88);
  *v22 = 0u;
  *(v22 + 1) = 0u;
  *(v22 + 2) = 0u;
  *(v22 + 3) = 0u;
  *(v22 + 4) = 0u;
  *(v22 + 5) = 0u;
  *(v22 + 6) = 0u;
  *(v22 + 7) = 0u;
  *(v22 + 8) = 0u;
  *(v22 + 9) = 0u;
  *(v22 + 10) = 0u;
  *(v22 + 11) = 0u;
  *(v22 + 12) = 0u;
  *(v22 + 13) = 0u;
  *(v22 + 14) = 0u;
  *(v22 + 15) = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 34) = 0;
  *(v21 + *((*v12 & *v21) + 0x90)) = 0;
  *(v21 + *((*v12 & *v21) + 0x98)) = 1;
  v191.receiver = v21;
  v191.super_class = v20;
  *(v1 + v18) = objc_msgSendSuper2(&v191, sel_init);
  v23 = *((*v12 & *v1) + 0x108);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<ActionSheet.Presentation>, &type metadata for ActionSheet.Presentation, &protocol witness table for ActionSheet.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v25 = v24;
  v26 = objc_allocWithZone(v24);
  *(v26 + *((*v12 & *v26) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v26 + *((*v12 & *v26) + 0x68)) = 0;
  *(v26 + *((*v12 & *v26) + 0x70)) = 0;
  *(v26 + *((*v12 & *v26) + 0x78)) = 0;
  EnvironmentValues.init()();
  v27 = v26 + *((*v12 & *v26) + 0x88);
  *v27 = 0u;
  *(v27 + 1) = 0u;
  *(v27 + 2) = 0u;
  *(v27 + 3) = 0u;
  *(v27 + 4) = 0u;
  *(v27 + 5) = 0u;
  *(v27 + 6) = 0u;
  *(v27 + 7) = 0u;
  *(v27 + 8) = 0u;
  *(v27 + 9) = 0u;
  *(v27 + 20) = 0;
  *(v26 + *((*v12 & *v26) + 0x90)) = 0;
  *(v26 + *((*v12 & *v26) + 0x98)) = 0;
  v190.receiver = v26;
  v190.super_class = v25;
  *(v2 + v23) = objc_msgSendSuper2(&v190, sel_init);
  *(v2 + *((*v12 & *v2) + 0x110)) = 1;
  v28 = *((*v12 & *v2) + 0x118);
  type metadata accessor for FocusBridge();
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 32) = 0;
  *(v29 + 40) = 0;
  swift_unknownObjectWeakInit();
  v30 = MEMORY[0x1E69E7CC0];
  v31 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI12PropertyListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v29 + 48) = 0;
  *(v29 + 56) = v30;
  *(v29 + 64) = v31;
  EnvironmentValues.init()();
  *(v29 + 120) = 0u;
  *(v29 + 104) = 0u;
  *(v29 + 88) = 0u;
  v173 = xmmword_18CD6A6D0;
  *(v29 + 136) = xmmword_18CD6A6D0;
  swift_weakInit();
  *(v29 + 160) = 0;
  *(v29 + 168) = 0;
  *(v29 + 176) = 1;
  *(v2 + v28) = v29;
  v32 = *((*v12 & *v2) + 0x120);
  *(v2 + v32) = [objc_allocWithZone(type metadata accessor for DragAndDropBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x128)) = 0;
  v33 = *((*v12 & *v2) + 0x130);
  *(v2 + v33) = [objc_allocWithZone(type metadata accessor for TooltipBridge()) init];
  v34 = *((*v12 & *v2) + 0x138);
  *(v2 + v34) = [objc_allocWithZone(type metadata accessor for EditMenuBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x140)) = 0;
  *(v2 + *((*v12 & *v2) + 0x148)) = 0;
  v35 = *((*v12 & *v2) + 0x150);
  type metadata accessor for UIKitStatusBarBridge();
  v36 = swift_allocObject();
  *(v36 + 16) = 514;
  *(v36 + 24) = v30;
  *(v36 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + v35) = v36;
  swift_weakInit();
  *(v2 + *((*v12 & *v2) + 0x160)) = 0;
  v37 = *((*v12 & *v2) + 0x168);
  *(v2 + v37) = [objc_allocWithZone(type metadata accessor for AVKitCaptureButtonBridge()) init];
  v38 = *((*v12 & *v2) + 0x170);
  *(v2 + v38) = [objc_allocWithZone(type metadata accessor for PencilEventsBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x178)) = 0;
  *(v2 + *((*v12 & *v2) + 0x180)) = 0;
  v39 = *((*v12 & *v2) + 0x188);
  *(v2 + v39) = [objc_allocWithZone(type metadata accessor for ContextMenuBridge()) init];
  v40 = *((*v12 & *v2) + 0x190);
  type metadata accessor for InteractiveResizeBridge();
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 20) = 0;
  *(v41 + 24) = 0;
  v175 = v40;
  *(v2 + v40) = v41;
  *(v2 + *((*v12 & *v2) + 0x198)) = 0;
  v42 = *((*v12 & *v2) + 0x1A0);
  *(v2 + v42) = [objc_allocWithZone(type metadata accessor for UILargeContentViewerInteractionBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x1A8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1B0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1B8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1C0) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v12 & *v2) + 0x1C8)) = 0;
  v43 = v2 + *((*v12 & *v2) + 0x1D0);
  *v43 = 0;
  v43[8] = 0;
  *(v43 + 1) = xmmword_18CD76350;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v12 & *v2) + 0x1E0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1E8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1F0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1F8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x200)) = 0;
  v44 = v2 + *((*v12 & *v2) + 0x60);
  v174 = a1;
  v45 = outlined init with copy of ModifiedContent<TableRowView, CollectionViewCellModifier>(a1, v44, &lazy cache variable for type metadata for ModifiedContent<AnyView, RootModifier>, MEMORY[0x1E6981910], &type metadata for RootModifier);
  MEMORY[0x18D00ABE0](v45);
  type metadata accessor for PlatformColorDefinition();
  type metadata accessor for UIKitPlatformColorDefinition();
  static PlatformSystemDefinition.uiKit.getter();
  static PlatformColorDefinition.setInternalDefinition(_:system:)();
  type metadata accessor for PlatformScrollEdgeEffectTagDefinition();
  type metadata accessor for ScrollEdgeEffectTagModifierDefinition();
  static PlatformScrollEdgeEffectTagDefinition.setDefinition(_:)();
  type metadata accessor for PlatformItemsDefinition();
  type metadata accessor for UIKitPlatformItemsDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  v46 = static PlatformItemsDefinition.setDefinition(_:system:)();
  v47 = *(ObjectType + 1384);
  v176 = ObjectType;
  v47(&v194, v46);
  v48 = v194;
  type metadata accessor for PlatformViewDefinition();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
  if (!static PlatformViewDefinition.for (_:)())
  {
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for ModifiedContent<AnyView, RootModifier>, MEMORY[0x1E6981910], &type metadata for RootModifier, MEMORY[0x1E697E830]);
  LOBYTE(v192) = v48;
  type metadata accessor for ViewGraphHost();
  swift_allocObject();
  lazy protocol witness table accessor for type ModifiedContent<AnyView, DocumentSceneRootBoxModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<AnyView, RootModifier> and conformance <> ModifiedContent<A, B>, &lazy cache variable for type metadata for ModifiedContent<AnyView, RootModifier>, &type metadata for RootModifier, lazy protocol witness table accessor for type RootModifier and conformance RootModifier);
  v181 = ViewGraphHost.init<A>(rootViewType:outputs:viewDefinition:)();
  v49 = *(v181 + 88);

  v50 = v184;
  v51 = UIHostingViewBase.Configuration.init()();
  v52 = v180;
  MEMORY[0x18D001BC0](v51);
  v53 = UIHostingViewBase.Configuration.options.modify();
  v54 = v185;
  specialized OptionSet<>.insert(_:)(v185, v52);
  v55 = *(v178 + 8);
  v56 = v186;
  v55(v52, v186);
  v55(v54, v56);
  v57 = v53(&v194, 0);
  v58 = v50;
  if (((*(v176 + 1408))(v57) & 1) == 0)
  {
    v59 = v180;
    static UIHostingViewBase.Options.allowUnregisteredGeometryChanges.getter();
    v60 = UIHostingViewBase.Configuration.options.modify();
    v61 = v58;
    v62 = v185;
    specialized OptionSet<>.insert(_:)(v185, v59);
    v63 = v186;
    v55(v59, v186);
    v64 = v62;
    v58 = v61;
    v55(v64, v63);
    v60(&v194, 0);
  }

  (*(v182 + 16))(v177, v58, v183);
  v65 = objc_allocWithZone(type metadata accessor for UIHostingViewBase());

  v66 = UIHostingViewBase.init(viewGraph:configuration:)();
  v67 = MEMORY[0x1E69E7D40];
  *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x68)) = v66;

  *&v194 = specialized FocusViewGraph.init(graph:)(v68);
  *(&v194 + 1) = v69;
  LOWORD(v195) = v70 & 0x101;
  BYTE2(v195) = v71 & 1;
  lazy protocol witness table accessor for type FocusViewGraph and conformance FocusViewGraph();
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type PlatformItemListViewGraph and conformance PlatformItemListViewGraph();
  *&v194 = 0;
  WORD4(v194) = 0;
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput();
  if (static UserDefaultKeyedFeature.isEnabled.getter())
  {
    v72 = *MEMORY[0x1E698D3F8];
    v192 = 0uLL;
    *v193 = v72;
    memset(&v193[8], 0, 64);
    *&v193[72] = v173;
    lazy protocol witness table accessor for type ViewGraphBridgePropertiesFeature and conformance ViewGraphBridgePropertiesFeature();
    ViewGraph.append<A>(feature:)();
    v197 = *&v193[32];
    v198 = *&v193[48];
    v199 = *&v193[64];
    v200 = *&v193[80];
    v194 = v192;
    v195 = *v193;
    v196 = *&v193[16];
    outlined destroy of ViewGraphBridgePropertiesFeature(&v194);
  }

  if (_UIUpdateAdaptiveRateNeeded())
  {
    type metadata accessor for _UIHostingView<ModifiedContent<AnyView, RootModifier>>.EnableVFDFeature();
    lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<AnyView, RootModifier>>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature, type metadata accessor for _UIHostingView<ModifiedContent<AnyView, RootModifier>>.EnableVFDFeature);
    ViewGraph.append<A>(feature:)();
  }

  AccessibilityViewGraph.init(graph:)(v73, &v192);
  aBlock = v192;
  v206 = *v193;
  v207 = *&v193[16];
  v208 = *&v193[32];
  lazy protocol witness table accessor for type AccessibilityViewGraph and conformance AccessibilityViewGraph();
  ViewGraph.append<A>(feature:)();
  v194 = aBlock;
  v195 = v206;
  v196 = v207;
  *&v197 = v208;
  outlined destroy of AccessibilityViewGraph(&v194);
  v74 = *(v2 + v175);
  v75 = AGSubgraphGetCurrent();
  swift_beginAccess();

  AGSubgraphSetCurrent();
  LOBYTE(aBlock) = 0;
  v76 = Attribute.init<A>(body:value:flags:update:)();
  AGSubgraphSetCurrent();

  *&aBlock = v74;
  DWORD2(aBlock) = v76;
  lazy protocol witness table accessor for type InteractiveResizeChangeViewGraphFeature and conformance InteractiveResizeChangeViewGraphFeature();
  ViewGraph.append<A>(feature:)();

  v77 = MEMORY[0x1E69E7CC0];
  v78 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E7BindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(&v206 + 1) = &type metadata for HoverEventDispatcher;
  *&v207 = lazy protocol witness table accessor for type HoverEventDispatcher and conformance HoverEventDispatcher();
  *&aBlock = v78;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v206 + 1) = &type metadata for PencilDoubleTapEventDispatcher;
  *&v207 = lazy protocol witness table accessor for type PencilDoubleTapEventDispatcher and conformance PencilDoubleTapEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v206 + 1) = &type metadata for PencilSqueezeEventDispatcher;
  *&v207 = lazy protocol witness table accessor for type PencilSqueezeEventDispatcher and conformance PencilSqueezeEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v79 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_SayAC8KeyPressV7HandlerVGTt0g5Tf4g_n(v77);
  *(&v206 + 1) = &type metadata for KeyEventDispatcher;
  *&v207 = lazy protocol witness table accessor for type KeyEventDispatcher and conformance KeyEventDispatcher();
  *&aBlock = v79;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  type metadata accessor for UIKitEventBindingBridge();
  swift_allocObject();

  *(v2 + *((*v67 & *v2) + 0xE0)) = UIKitEventBindingBridge.init(eventBindingManager:)();
  type metadata accessor for _UIHostingView<ModifiedContent<AnyView, RootModifier>>();
  v189.receiver = v2;
  v189.super_class = v80;
  v81 = objc_msgSendSuper2(&v189, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  swift_unknownObjectWeakInit();
  type metadata accessor for _UIHostingView<ModifiedContent<AnyView, RootModifier>>.HostViewGraph();
  lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<AnyView, RootModifier>>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph, type metadata accessor for _UIHostingView<ModifiedContent<AnyView, RootModifier>>.HostViewGraph);
  v82 = v81;
  ViewGraph.append<A>(feature:)();
  v83 = outlined destroy of _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>.HostViewGraph(&aBlock, type metadata accessor for _UIHostingView<ModifiedContent<AnyView, RootModifier>>.HostViewGraph);
  (*((*v67 & *v82) + 0x5C0))(v83);
  v84 = specialized _UIHostingView.base.getter();
  UIHostingViewBase.setUp()();

  static RepresentableContextValues.current.getter();
  v85 = aBlock;
  v185 = v49;
  v186 = v81;
  if (aBlock != 1)
  {
    v86 = *(&aBlock + 1);
    v87 = v206;
    v88 = v207;
    if (aBlock)
    {

      specialized ViewRendererHost.setPreferenceBridge(_:)(v89);
    }

    *&aBlock = v85;
    *(&aBlock + 1) = v86;
    v206 = v87;
    LOBYTE(v207) = v88 & 1;
    RepresentableContextValues.environment.getter();
    v203 = v204;
    UIHostingViewBase.initialInheritedEnvironment.setter();
    outlined consume of RepresentableContextValues?(v85, v86, v87, *(&v87 + 1), v88);
    v49 = v185;
  }

  specialized _UIHostingView.feedbackCache.getter();
  swift_unknownObjectWeakAssign();
  v90 = v82;

  v91 = *(v90 + *((*v67 & *v90) + 0x150));
  v92 = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<AnyView, RootModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<AnyView, RootModifier>>);
  *(v91 + 40) = v92;
  swift_unknownObjectWeakAssign();

  UIKitStatusBarBridge.addPreferences(to:)();

  v180 = *((*v67 & *v90) + 0x188);
  *(*&v180[v90] + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host + 8) = v92;
  swift_unknownObjectWeakAssign();
  v93 = *(v90 + *((*v67 & *v90) + 0x100));
  *(v93 + *((*v93 & *v67) + 0x60) + 8) = v92;
  swift_unknownObjectWeakAssign();

  GraphHost.addPreference<A>(_:)();
  v94 = *(v90 + *((*v67 & *v90) + 0x108));
  *(v94 + *((*v94 & *v67) + 0x60) + 8) = v92;
  swift_unknownObjectWeakAssign();

  GraphHost.addPreference<A>(_:)();
  v95 = specialized _UIHostingView.sheetBridge.getter();
  if (v95)
  {
    *&v95[direct field offset for SheetBridge.host + 8] = v92;
    v96 = v95;
    swift_unknownObjectWeakAssign();
  }

  v97 = *v67 & *v90;
  v98 = *(v90 + *(v97 + 0x110));
  if (v98)
  {
    v99 = *((*v98 & *v67) + 0x210);
    v100 = v98;
    v99(v49);
    outlined consume of SheetBridge<SheetPreference.Key>??(v98);
    v97 = *v67 & *v90;
  }

  v101 = *(v90 + *(v97 + 280));
  v102 = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<AnyView, RootModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<AnyView, RootModifier>>);
  *(v101 + 32) = &protocol witness table for _UIHostingView<A>;
  *(v101 + 40) = v102;
  swift_unknownObjectWeakAssign();

  v103 = FocusBridge.host.getter();
  if (v103)
  {
    v105 = v103;
    v106 = v104;
    v107 = swift_getObjectType();
    (*(*(*(v106 + 8) + 8) + 8))(v107);

    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v108 = *((*v67 & *v90) + 0x120);
  *(*(v90 + v108) + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host + 8) = v92;
  swift_unknownObjectWeakAssign();
  v109 = *(v90 + v108);
  v110 = &v109[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_45;
  }

  v111 = *(v110 + 1);
  v112 = swift_getObjectType();
  v113 = *(*(v111 + 16) + 8);
  v114 = v109;
  LOBYTE(v112) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v112, v113);
  swift_unknownObjectRelease();
  if (v112)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  GraphHost.addPreference<A>(_:)();
  *(*(v90 + *((*v67 & *v90) + 0x130)) + OBJC_IVAR____TtC7SwiftUI13TooltipBridge_host + 8) = v92;
  swift_unknownObjectWeakAssign();
  v115 = v90;
  GraphHost.addPreference<A>(_:)();
  *(*(v115 + *((*v67 & *v115) + 0x138)) + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_host + 8) = v92;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  GraphHost.addPreference<A>(_:)();
  *(*(v115 + *((*v67 & *v115) + 0x170)) + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_host + 8) = v92;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  v116 = *((*v67 & *v115) + 0x168);
  *(*(v115 + v116) + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host + 8) = v92;
  swift_unknownObjectWeakAssign();

  v117 = *(v115 + v116);
  v118 = &v117[OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_46;
  }

  v119 = *(v118 + 1);
  v120 = swift_getObjectType();
  v121 = *(v119 + 8);
  v122 = *(v121 + 8);
  v123 = v117;
  v122(v120, v121);
  swift_unknownObjectRelease();
  GraphHost.addPreference<A>(_:)();

  v124 = [v115 traitCollection];

  v125 = [v124 userInterfaceIdiom];
  v126 = MEMORY[0x1E69E7D40];
  if (v125 == 1 || (v127 = [v115 traitCollection], v128 = objc_msgSend(v127, sel_userInterfaceIdiom), v127, v128 == 6))
  {
    v129 = [objc_allocWithZone(type metadata accessor for PointerBridge()) init];
    *&v129[OBJC_IVAR____TtC7SwiftUI13PointerBridge_host + 8] = v92;
    swift_unknownObjectWeakAssign();
    GraphHost.addPreference<A>(_:)();
    v130 = *((*v126 & *v115) + 0x178);
    v131 = *(v115 + v130);
    *(v115 + v130) = v129;
  }

  v132 = *&v180[v90];
  v133 = &v132[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host];
  Strong = swift_unknownObjectWeakLoadStrong();
  v135 = v184;
  if (!Strong)
  {
LABEL_47:
    __break(1u);
  }

  v136 = *(v133 + 1);
  v137 = swift_getObjectType();
  v138 = *(*(v136 + 16) + 8);
  v139 = v132;
  LOBYTE(v137) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v137, v138);
  swift_unknownObjectRelease();
  v140 = v185;
  if (v137)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v141 = *((*v126 & *v115) + 0x1A0);
  *(*(v115 + v141) + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_host + 8) = v92;
  v142 = swift_unknownObjectWeakAssign();
  v143 = *(v115 + v141);
  MEMORY[0x1EEE9AC00](v142);
  *(&v173 - 2) = v143;
  *(&v173 - 1) = v140;
  v144 = v115;
  v145 = v143;
  static Update.ensure<A>(_:)();

  v146 = *((*v126 & *v144) + 0x78);
  v147 = *(v144 + v146);
  v148 = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<AnyView, RootModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<AnyView, RootModifier>>);
  swift_beginAccess();
  *(v147 + 24) = v148;
  swift_unknownObjectWeakAssign();

  v149 = *(v144 + v146);
  v150 = *((*v126 & *v144) + 0xE0);
  swift_beginAccess();
  *(v149 + 40) = MEMORY[0x1E697F3C8];
  swift_unknownObjectWeakAssign();
  v151 = *(v144 + v150);
  v152 = *(v151 + 32);

  if (v152)
  {
    [v144 addGestureRecognizer_];
  }

  [v144 addGestureRecognizer_];

  specialized _UIHostingView.legacySetupKeyboardAvoidanceNotifications()();
  if (isAppleInternalBuild()())
  {
    v153 = [v144 window];
    if (v153)
    {
      v154 = v153;
      v155 = [v153 rootViewController];

      if (v155)
      {
        v156 = [v155 viewIfLoaded];

        if (v156)
        {

          if (v156 == v144)
          {
            v201 = 0;
            v188[0] = 0;
            v157 = getpid();
            LODWORD(v180) = v157;
            *&aBlock = 0;
            *(&aBlock + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(16);

            strcpy(&aBlock, "NameLayerTree-");
            HIBYTE(aBlock) = -18;
            v187 = v157;
            v158 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x18D00C9B0](v158);

            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
            v159 = static OS_dispatch_queue.main.getter();
            v160 = swift_allocObject();
            swift_unknownObjectWeakInit();
            *&v207 = partial apply for specialized closure #1 in _UIHostingView.init(rootView:);
            *(&v207 + 1) = v160;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v206 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v206 + 1) = &block_descriptor_197;
            v161 = _Block_copy(&aBlock);

            v162 = String.utf8CString.getter();

            notify_register_dispatch((v162 + 32), &v201, v159, v161);

            _Block_release(v161);

            v163 = static OS_dispatch_queue.main.getter();
            v164 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v165 = swift_allocObject();
            *(v165 + 16) = v180;
            *(v165 + 24) = v164;
            *&v207 = partial apply for specialized closure #2 in _UIHostingView.init(rootView:);
            *(&v207 + 1) = v165;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v206 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v206 + 1) = &block_descriptor_204;
            v166 = _Block_copy(&aBlock);

            notify_register_dispatch("NameLayerTree", v188, v163, v166);
            _Block_release(v166);

            v167 = v144 + *((*v126 & *v144) + 0xE8);
            *v167 = v201 | (v188[0] << 32);
            v167[8] = 0;
          }
        }
      }
    }
  }

  v168 = [objc_opt_self() defaultCenter];
  [v168 addObserver:v144 selector:sel_accessibilityFocusedElementDidChange_ name:*MEMORY[0x1E69DD8C0] object:0];
  v169 = one-time initialization token for didUpdateListLayout;
  v170 = v144;
  if (v169 != -1)
  {
    swift_once();
  }

  [v168 addObserver:v170 selector:sel_clarityUISettingDidChange_ name:static ClarityUI.didUpdateListLayout object:0];

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v202 = 0;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(&v201, v170);
  swift_endAccess();
  if (static Spacing.hasSetupDefaultValue == 1)
  {
    (*(v182 + 8))(v135, v183);
  }

  else
  {
    static Spacing.hasSetupDefaultValue = 1;

    (*(v182 + 8))(v135, v183);
  }

  v171 = v174;
  static Update.end()();
  outlined destroy of ModifiedContent<AnyView, RootModifier>(v171);
  return v170;
}

{
  v2 = v1;
  v207 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v178 = type metadata accessor for UIHostingViewBase.Options();
  v183 = *(v178 - 8);
  MEMORY[0x1EEE9AC00](v178);
  v173 = &v170 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v175 = &v170 - v7;
  v8 = type metadata accessor for UIHostingViewBase.Configuration();
  v180 = *(v8 - 8);
  v181 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v176 = &v170 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v182 = &v170 - v11;
  v12 = MEMORY[0x1E69E7D40];
  *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x70)) = 0;
  v13 = *((*v12 & *v1) + 0x78);
  type metadata accessor for EventBindingManager();
  v14 = EventBindingManager.__allocating_init()();
  v177 = v13;
  *(v1 + v13) = v14;
  *(v1 + *((*v12 & *v1) + 0x80)) = 0;
  *(v1 + *((*v12 & *v1) + 0x88)) = 0;
  *(v1 + *((*v12 & *v1) + 0x90)) = 1;
  *(v1 + *((*v12 & *v1) + 0x98)) = 0;
  *(v1 + *((*v12 & *v1) + 0xA0)) = 0;
  v15 = v2 + *((*v12 & *v2) + 0xA8);
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v15[32] = 1;
  v16 = v2 + *((*v12 & *v2) + 0xB0);
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v16[32] = 1;
  *(v1 + *((*v12 & *v1) + 0xB8)) = 0;
  *(v1 + *((*v12 & *v1) + 0xC0)) = 0;
  *(v1 + *((*v12 & *v1) + 0xC8)) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + *((*v12 & *v1) + 0xD8)) = 0;
  v17 = v2 + *((*v12 & *v2) + 0xE8);
  *v17 = 0;
  v17[8] = 1;
  *(v1 + *((*v12 & *v1) + 0xF0)) = 0;
  *(v1 + *((*v12 & *v1) + 0xF8)) = 2;
  v18 = *((*v12 & *v1) + 0x100);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<Alert.Presentation>, &type metadata for Alert.Presentation, &protocol witness table for Alert.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v20 = v19;
  v21 = objc_allocWithZone(v19);
  *(v21 + *((*v12 & *v21) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v21 + *((*v12 & *v21) + 0x68)) = 0;
  *(v21 + *((*v12 & *v21) + 0x70)) = 0;
  *(v21 + *((*v12 & *v21) + 0x78)) = 0;
  EnvironmentValues.init()();
  v22 = v21 + *((*v12 & *v21) + 0x88);
  *v22 = 0u;
  *(v22 + 1) = 0u;
  *(v22 + 2) = 0u;
  *(v22 + 3) = 0u;
  *(v22 + 4) = 0u;
  *(v22 + 5) = 0u;
  *(v22 + 6) = 0u;
  *(v22 + 7) = 0u;
  *(v22 + 8) = 0u;
  *(v22 + 9) = 0u;
  *(v22 + 10) = 0u;
  *(v22 + 11) = 0u;
  *(v22 + 12) = 0u;
  *(v22 + 13) = 0u;
  *(v22 + 14) = 0u;
  *(v22 + 15) = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 34) = 0;
  *(v21 + *((*v12 & *v21) + 0x90)) = 0;
  *(v21 + *((*v12 & *v21) + 0x98)) = 1;
  v189.receiver = v21;
  v189.super_class = v20;
  *(v1 + v18) = objc_msgSendSuper2(&v189, sel_init);
  v23 = *((*v12 & *v1) + 0x108);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<ActionSheet.Presentation>, &type metadata for ActionSheet.Presentation, &protocol witness table for ActionSheet.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v25 = v24;
  v26 = objc_allocWithZone(v24);
  *(v26 + *((*v12 & *v26) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v26 + *((*v12 & *v26) + 0x68)) = 0;
  *(v26 + *((*v12 & *v26) + 0x70)) = 0;
  *(v26 + *((*v12 & *v26) + 0x78)) = 0;
  EnvironmentValues.init()();
  v27 = v26 + *((*v12 & *v26) + 0x88);
  *v27 = 0u;
  *(v27 + 1) = 0u;
  *(v27 + 2) = 0u;
  *(v27 + 3) = 0u;
  *(v27 + 4) = 0u;
  *(v27 + 5) = 0u;
  *(v27 + 6) = 0u;
  *(v27 + 7) = 0u;
  *(v27 + 8) = 0u;
  *(v27 + 9) = 0u;
  *(v27 + 20) = 0;
  *(v26 + *((*v12 & *v26) + 0x90)) = 0;
  *(v26 + *((*v12 & *v26) + 0x98)) = 0;
  v188.receiver = v26;
  v188.super_class = v25;
  *(v2 + v23) = objc_msgSendSuper2(&v188, sel_init);
  *(v2 + *((*v12 & *v2) + 0x110)) = 1;
  v28 = *((*v12 & *v2) + 0x118);
  type metadata accessor for FocusBridge();
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 32) = 0;
  *(v29 + 40) = 0;
  swift_unknownObjectWeakInit();
  v30 = MEMORY[0x1E69E7CC0];
  v31 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI12PropertyListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v29 + 48) = 0;
  *(v29 + 56) = v30;
  *(v29 + 64) = v31;
  EnvironmentValues.init()();
  *(v29 + 120) = 0u;
  *(v29 + 104) = 0u;
  *(v29 + 88) = 0u;
  v170 = xmmword_18CD6A6D0;
  *(v29 + 136) = xmmword_18CD6A6D0;
  swift_weakInit();
  *(v29 + 160) = 0;
  *(v29 + 168) = 0;
  *(v29 + 176) = 1;
  *(v2 + v28) = v29;
  v32 = *((*v12 & *v2) + 0x120);
  *(v2 + v32) = [objc_allocWithZone(type metadata accessor for DragAndDropBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x128)) = 0;
  v33 = *((*v12 & *v2) + 0x130);
  *(v2 + v33) = [objc_allocWithZone(type metadata accessor for TooltipBridge()) init];
  v34 = *((*v12 & *v2) + 0x138);
  *(v2 + v34) = [objc_allocWithZone(type metadata accessor for EditMenuBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x140)) = 0;
  *(v2 + *((*v12 & *v2) + 0x148)) = 0;
  v35 = *((*v12 & *v2) + 0x150);
  type metadata accessor for UIKitStatusBarBridge();
  v36 = swift_allocObject();
  *(v36 + 16) = 514;
  *(v36 + 24) = v30;
  *(v36 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + v35) = v36;
  swift_weakInit();
  *(v2 + *((*v12 & *v2) + 0x160)) = 0;
  v37 = *((*v12 & *v2) + 0x168);
  *(v2 + v37) = [objc_allocWithZone(type metadata accessor for AVKitCaptureButtonBridge()) init];
  v38 = *((*v12 & *v2) + 0x170);
  *(v2 + v38) = [objc_allocWithZone(type metadata accessor for PencilEventsBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x178)) = 0;
  *(v2 + *((*v12 & *v2) + 0x180)) = 0;
  v39 = *((*v12 & *v2) + 0x188);
  *(v2 + v39) = [objc_allocWithZone(type metadata accessor for ContextMenuBridge()) init];
  v40 = *((*v12 & *v2) + 0x190);
  type metadata accessor for InteractiveResizeBridge();
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 20) = 0;
  *(v41 + 24) = 0;
  v172 = v40;
  *(v2 + v40) = v41;
  *(v2 + *((*v12 & *v2) + 0x198)) = 0;
  v42 = *((*v12 & *v2) + 0x1A0);
  *(v2 + v42) = [objc_allocWithZone(type metadata accessor for UILargeContentViewerInteractionBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x1A8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1B0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1B8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1C0) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v12 & *v2) + 0x1C8)) = 0;
  v43 = v2 + *((*v12 & *v2) + 0x1D0);
  *v43 = 0;
  v43[8] = 0;
  *(v43 + 1) = xmmword_18CD76350;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v12 & *v2) + 0x1E0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1E8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1F0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1F8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x200)) = 0;
  *(v2 + *((*v12 & *v2) + 0x60)) = a1;
  v171 = a1;

  MEMORY[0x18D00ABE0](v44);
  type metadata accessor for PlatformColorDefinition();
  type metadata accessor for UIKitPlatformColorDefinition();
  static PlatformSystemDefinition.uiKit.getter();
  static PlatformColorDefinition.setInternalDefinition(_:system:)();
  type metadata accessor for PlatformScrollEdgeEffectTagDefinition();
  type metadata accessor for ScrollEdgeEffectTagModifierDefinition();
  static PlatformScrollEdgeEffectTagDefinition.setDefinition(_:)();
  type metadata accessor for PlatformItemsDefinition();
  type metadata accessor for UIKitPlatformItemsDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  v45 = static PlatformItemsDefinition.setDefinition(_:system:)();
  v46 = *(ObjectType + 1384);
  v174 = ObjectType;
  v46(&v192, v45);
  v47 = v192;
  type metadata accessor for PlatformViewDefinition();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
  if (!static PlatformViewDefinition.for (_:)())
  {
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  LOBYTE(v190) = v47;
  type metadata accessor for ViewGraphHost();
  swift_allocObject();
  v179 = ViewGraphHost.init<A>(rootViewType:outputs:viewDefinition:)();
  v184 = *(v179 + 88);

  v48 = v182;
  v49 = UIHostingViewBase.Configuration.init()();
  v50 = v173;
  MEMORY[0x18D001BC0](v49);
  v51 = UIHostingViewBase.Configuration.options.modify();
  v52 = v175;
  specialized OptionSet<>.insert(_:)(v175, v50);
  v54 = (v183 + 1);
  v53 = v183[1];
  v55 = v178;
  v53(v50, v178);
  v183 = v54;
  v53(v52, v55);
  v56 = v51(&v192, 0);
  v57 = v48;
  if (((*(v174 + 1408))(v56) & 1) == 0)
  {
    static UIHostingViewBase.Options.allowUnregisteredGeometryChanges.getter();
    v58 = UIHostingViewBase.Configuration.options.modify();
    specialized OptionSet<>.insert(_:)(v52, v50);
    v59 = v178;
    v53(v50, v178);
    v53(v52, v59);
    v58(&v192, 0);
    v57 = v182;
  }

  (*(v180 + 16))(v176, v57, v181);
  v60 = objc_allocWithZone(type metadata accessor for UIHostingViewBase());

  *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x68)) = UIHostingViewBase.init(viewGraph:configuration:)();
  v61 = v184;

  *&v192 = specialized FocusViewGraph.init(graph:)(v62);
  *(&v192 + 1) = v63;
  LOWORD(v193) = v64 & 0x101;
  BYTE2(v193) = v65 & 1;
  lazy protocol witness table accessor for type FocusViewGraph and conformance FocusViewGraph();
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type PlatformItemListViewGraph and conformance PlatformItemListViewGraph();
  *&v192 = 0;
  WORD4(v192) = 0;
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput();
  if (static UserDefaultKeyedFeature.isEnabled.getter())
  {
    v66 = *MEMORY[0x1E698D3F8];
    v190 = 0uLL;
    *v191 = v66;
    memset(&v191[8], 0, 64);
    *&v191[72] = v170;
    lazy protocol witness table accessor for type ViewGraphBridgePropertiesFeature and conformance ViewGraphBridgePropertiesFeature();
    ViewGraph.append<A>(feature:)();
    v195 = *&v191[32];
    v196 = *&v191[48];
    v197 = *&v191[64];
    v198 = *&v191[80];
    v192 = v190;
    v193 = *v191;
    v194 = *&v191[16];
    outlined destroy of ViewGraphBridgePropertiesFeature(&v192);
  }

  if (_UIUpdateAdaptiveRateNeeded())
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for _UIHostingView<AnyView>.EnableVFDFeature, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for _UIHostingView.EnableVFDFeature);
    lazy protocol witness table accessor for type _UIHostingView<AnyView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature();
    ViewGraph.append<A>(feature:)();
  }

  AccessibilityViewGraph.init(graph:)(v67, &v190);
  aBlock = v190;
  v204 = *v191;
  v205 = *&v191[16];
  v206 = *&v191[32];
  lazy protocol witness table accessor for type AccessibilityViewGraph and conformance AccessibilityViewGraph();
  ViewGraph.append<A>(feature:)();
  v192 = aBlock;
  v193 = v204;
  v194 = v205;
  *&v195 = v206;
  outlined destroy of AccessibilityViewGraph(&v192);
  v68 = *(v2 + v172);
  v69 = AGSubgraphGetCurrent();
  swift_beginAccess();

  AGSubgraphSetCurrent();
  LOBYTE(aBlock) = 0;
  v70 = Attribute.init<A>(body:value:flags:update:)();
  AGSubgraphSetCurrent();

  *&aBlock = v68;
  DWORD2(aBlock) = v70;
  lazy protocol witness table accessor for type InteractiveResizeChangeViewGraphFeature and conformance InteractiveResizeChangeViewGraphFeature();
  ViewGraph.append<A>(feature:)();

  v71 = MEMORY[0x1E69E7CC0];
  v72 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E7BindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(&v204 + 1) = &type metadata for HoverEventDispatcher;
  *&v205 = lazy protocol witness table accessor for type HoverEventDispatcher and conformance HoverEventDispatcher();
  *&aBlock = v72;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v204 + 1) = &type metadata for PencilDoubleTapEventDispatcher;
  *&v205 = lazy protocol witness table accessor for type PencilDoubleTapEventDispatcher and conformance PencilDoubleTapEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v204 + 1) = &type metadata for PencilSqueezeEventDispatcher;
  *&v205 = lazy protocol witness table accessor for type PencilSqueezeEventDispatcher and conformance PencilSqueezeEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v73 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_SayAC8KeyPressV7HandlerVGTt0g5Tf4g_n(v71);
  *(&v204 + 1) = &type metadata for KeyEventDispatcher;
  *&v205 = lazy protocol witness table accessor for type KeyEventDispatcher and conformance KeyEventDispatcher();
  *&aBlock = v73;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  type metadata accessor for UIKitEventBindingBridge();
  swift_allocObject();

  v74 = UIKitEventBindingBridge.init(eventBindingManager:)();
  v75 = MEMORY[0x1E69E7D40];
  *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0xE0)) = v74;
  v76 = MEMORY[0x1E6981910];
  v77 = MEMORY[0x1E6981900];
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for _UIHostingView<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for _UIHostingView);
  v187.receiver = v2;
  v187.super_class = v78;
  v79 = v75;
  v80 = objc_msgSendSuper2(&v187, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  swift_unknownObjectWeakInit();
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for _UIHostingView<AnyView>.HostViewGraph, v76, v77, type metadata accessor for _UIHostingView.HostViewGraph);
  lazy protocol witness table accessor for type _UIHostingView<AnyView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph();
  v81 = v80;
  ViewGraph.append<A>(feature:)();
  v82 = outlined destroy of _UIHostingView<AnyView>.HostViewGraph(&aBlock);
  (*((*v75 & *v81) + 0x5C0))(v82);
  v83 = specialized _UIHostingView.base.getter();
  UIHostingViewBase.setUp()();

  static RepresentableContextValues.current.getter();
  v84 = aBlock;
  v183 = v80;
  if (aBlock != 1)
  {
    v85 = *(&aBlock + 1);
    v86 = v204;
    v87 = v205;
    if (aBlock)
    {

      specialized ViewRendererHost.setPreferenceBridge(_:)(v88);
    }

    *&aBlock = v84;
    *(&aBlock + 1) = v85;
    v204 = v86;
    LOBYTE(v205) = v87 & 1;
    RepresentableContextValues.environment.getter();
    v201 = v202;
    UIHostingViewBase.initialInheritedEnvironment.setter();
    outlined consume of RepresentableContextValues?(v84, v85, v86, *(&v86 + 1), v87);
    v61 = v184;
  }

  specialized _UIHostingView.feedbackCache.getter();
  swift_unknownObjectWeakAssign();
  v89 = v81;

  v90 = *(v89 + *((*v79 & *v89) + 0x150));
  v91 = lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>();
  *(v90 + 40) = v91;
  swift_unknownObjectWeakAssign();

  UIKitStatusBarBridge.addPreferences(to:)();

  v178 = *((*v79 & *v89) + 0x188);
  *(*(v89 + v178) + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host + 8) = v91;
  swift_unknownObjectWeakAssign();
  v92 = *(v89 + *((*v79 & *v89) + 0x100));
  *(v92 + *((*v92 & *v79) + 0x60) + 8) = v91;
  swift_unknownObjectWeakAssign();

  GraphHost.addPreference<A>(_:)();
  v93 = *(v89 + *((*v79 & *v89) + 0x108));
  *(v93 + *((*v93 & *v79) + 0x60) + 8) = v91;
  swift_unknownObjectWeakAssign();

  GraphHost.addPreference<A>(_:)();
  v94 = specialized _UIHostingView.sheetBridge.getter();
  if (v94)
  {
    *&v94[direct field offset for SheetBridge.host + 8] = v91;
    v95 = v94;
    swift_unknownObjectWeakAssign();
  }

  v96 = *v79 & *v89;
  v97 = *(v89 + *(v96 + 0x110));
  if (v97)
  {
    v98 = *((*v97 & *v79) + 0x210);
    v99 = v97;
    v98(v61);
    outlined consume of SheetBridge<SheetPreference.Key>??(v97);
    v96 = *v79 & *v89;
  }

  v100 = *(v89 + *(v96 + 280));
  v101 = lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>();
  *(v100 + 32) = &protocol witness table for _UIHostingView<A>;
  *(v100 + 40) = v101;
  swift_unknownObjectWeakAssign();

  v102 = FocusBridge.host.getter();
  if (v102)
  {
    v104 = v102;
    v105 = v103;
    v106 = swift_getObjectType();
    (*(*(*(v105 + 8) + 8) + 8))(v106);

    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v107 = *((*v79 & *v89) + 0x120);
  *(*(v89 + v107) + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host + 8) = v91;
  swift_unknownObjectWeakAssign();
  v108 = *(v89 + v107);
  v109 = &v108[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_45;
  }

  v110 = *(v109 + 1);
  v111 = swift_getObjectType();
  v112 = *(*(v110 + 16) + 8);
  v113 = v108;
  LOBYTE(v111) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v111, v112);
  swift_unknownObjectRelease();
  if (v111)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  GraphHost.addPreference<A>(_:)();
  *(*(v89 + *((*v79 & *v89) + 0x130)) + OBJC_IVAR____TtC7SwiftUI13TooltipBridge_host + 8) = v91;
  swift_unknownObjectWeakAssign();
  v114 = v89;
  GraphHost.addPreference<A>(_:)();
  *(*(v114 + *((*v79 & *v114) + 0x138)) + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_host + 8) = v91;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  GraphHost.addPreference<A>(_:)();
  *(*(v114 + *((*v79 & *v114) + 0x170)) + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_host + 8) = v91;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  v115 = *((*v79 & *v114) + 0x168);
  *(*(v114 + v115) + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host + 8) = v91;
  swift_unknownObjectWeakAssign();

  v116 = *(v114 + v115);
  v117 = &v116[OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_46;
  }

  v118 = *(v117 + 1);
  v119 = swift_getObjectType();
  v120 = *(v118 + 8);
  v121 = *(v120 + 8);
  v122 = v116;
  v121(v119, v120);
  swift_unknownObjectRelease();
  GraphHost.addPreference<A>(_:)();

  v123 = [v114 traitCollection];

  v124 = [v123 userInterfaceIdiom];
  v125 = MEMORY[0x1E69E7D40];
  if (v124 == 1 || (v126 = [v114 traitCollection], v127 = objc_msgSend(v126, sel_userInterfaceIdiom), v126, v127 == 6))
  {
    v128 = [objc_allocWithZone(type metadata accessor for PointerBridge()) init];
    *&v128[OBJC_IVAR____TtC7SwiftUI13PointerBridge_host + 8] = v91;
    swift_unknownObjectWeakAssign();
    GraphHost.addPreference<A>(_:)();
    v129 = *((*v125 & *v114) + 0x178);
    v130 = *(v114 + v129);
    *(v114 + v129) = v128;
  }

  v131 = *(v89 + v178);
  v132 = &v131[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
LABEL_47:
    __break(1u);
  }

  v133 = *(v132 + 1);
  v134 = v131;

  v135 = swift_getObjectType();
  v136 = ViewGraphDelegate.shouldCreateUIInteractions.getter(v135, *(*(v133 + 16) + 8));
  swift_unknownObjectRelease();
  v137 = v184;
  if (v136)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v138 = *((*v125 & *v114) + 0x1A0);
  *(*(v114 + v138) + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_host + 8) = v91;
  v139 = swift_unknownObjectWeakAssign();
  v140 = *(v114 + v138);
  MEMORY[0x1EEE9AC00](v139);
  *(&v170 - 2) = v140;
  *(&v170 - 1) = v137;
  v141 = v114;
  v142 = v140;
  static Update.ensure<A>(_:)();

  v143 = *((*v125 & *v141) + 0x78);
  v144 = *(v141 + v143);
  v145 = lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>();
  swift_beginAccess();
  *(v144 + 24) = v145;
  swift_unknownObjectWeakAssign();

  v146 = *(v141 + v143);
  v147 = *((*v125 & *v141) + 0xE0);
  swift_beginAccess();
  *(v146 + 40) = MEMORY[0x1E697F3C8];
  swift_unknownObjectWeakAssign();
  v148 = *(v141 + v147);
  v149 = *(v148 + 32);

  if (v149)
  {
    [v141 addGestureRecognizer_];
  }

  [v141 addGestureRecognizer_];

  specialized _UIHostingView.legacySetupKeyboardAvoidanceNotifications()();
  if (isAppleInternalBuild()())
  {
    v150 = [v141 window];
    if (v150)
    {
      v151 = v150;
      v152 = [v150 rootViewController];

      if (v152)
      {
        v153 = [v152 viewIfLoaded];

        if (v153)
        {

          if (v153 == v141)
          {
            v199 = 0;
            v186[0] = 0;
            v154 = getpid();
            *&aBlock = 0;
            *(&aBlock + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(16);

            strcpy(&aBlock, "NameLayerTree-");
            HIBYTE(aBlock) = -18;
            v185 = v154;
            v155 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x18D00C9B0](v155);

            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
            v156 = static OS_dispatch_queue.main.getter();
            v157 = swift_allocObject();
            swift_unknownObjectWeakInit();
            *&v205 = partial apply for specialized closure #1 in _UIHostingView.init(rootView:);
            *(&v205 + 1) = v157;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v204 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v204 + 1) = &block_descriptor_113;
            v158 = _Block_copy(&aBlock);

            v159 = String.utf8CString.getter();

            notify_register_dispatch((v159 + 32), &v199, v156, v158);

            _Block_release(v158);

            v160 = static OS_dispatch_queue.main.getter();
            v161 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v162 = swift_allocObject();
            *(v162 + 16) = v154;
            *(v162 + 24) = v161;
            *&v205 = partial apply for specialized closure #2 in _UIHostingView.init(rootView:);
            *(&v205 + 1) = v162;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v204 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v204 + 1) = &block_descriptor_120;
            v163 = _Block_copy(&aBlock);

            notify_register_dispatch("NameLayerTree", v186, v160, v163);
            _Block_release(v163);

            v164 = v141 + *((*v125 & *v141) + 0xE8);
            *v164 = v199 | (v186[0] << 32);
            v164[8] = 0;
          }
        }
      }
    }
  }

  v165 = [objc_opt_self() defaultCenter];
  [v165 addObserver:v141 selector:sel_accessibilityFocusedElementDidChange_ name:*MEMORY[0x1E69DD8C0] object:0];
  v166 = one-time initialization token for didUpdateListLayout;
  v167 = v141;
  if (v166 != -1)
  {
    swift_once();
  }

  [v165 addObserver:v167 selector:sel_clarityUISettingDidChange_ name:static ClarityUI.didUpdateListLayout object:0];

  v168 = v182;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v200 = 0;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(&v199, v167);
  swift_endAccess();
  if (static Spacing.hasSetupDefaultValue == 1)
  {
    (*(v180 + 8))(v168, v181);
  }

  else
  {
    static Spacing.hasSetupDefaultValue = 1;

    (*(v180 + 8))(v168, v181);
  }

  static Update.end()();
  return v167;
}

{
  v2 = v1;
  v209 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v186 = type metadata accessor for UIHostingViewBase.Options();
  v178 = *(v186 - 8);
  MEMORY[0x1EEE9AC00](v186);
  v180 = &v173 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v185 = &v173 - v7;
  v8 = type metadata accessor for UIHostingViewBase.Configuration();
  v182 = *(v8 - 8);
  v183 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v177 = &v173 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v184 = &v173 - v11;
  v12 = MEMORY[0x1E69E7D40];
  *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x70)) = 0;
  v13 = *((*v12 & *v1) + 0x78);
  type metadata accessor for EventBindingManager();
  v14 = EventBindingManager.__allocating_init()();
  v179 = v13;
  *(v1 + v13) = v14;
  *(v1 + *((*v12 & *v1) + 0x80)) = 0;
  *(v1 + *((*v12 & *v1) + 0x88)) = 0;
  *(v1 + *((*v12 & *v1) + 0x90)) = 1;
  *(v1 + *((*v12 & *v1) + 0x98)) = 0;
  *(v1 + *((*v12 & *v1) + 0xA0)) = 0;
  v15 = v2 + *((*v12 & *v2) + 0xA8);
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v15[32] = 1;
  v16 = v2 + *((*v12 & *v2) + 0xB0);
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v16[32] = 1;
  *(v1 + *((*v12 & *v1) + 0xB8)) = 0;
  *(v1 + *((*v12 & *v1) + 0xC0)) = 0;
  *(v1 + *((*v12 & *v1) + 0xC8)) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + *((*v12 & *v1) + 0xD8)) = 0;
  v17 = v2 + *((*v12 & *v2) + 0xE8);
  *v17 = 0;
  v17[8] = 1;
  *(v1 + *((*v12 & *v1) + 0xF0)) = 0;
  *(v1 + *((*v12 & *v1) + 0xF8)) = 2;
  v18 = *((*v12 & *v1) + 0x100);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<Alert.Presentation>, &type metadata for Alert.Presentation, &protocol witness table for Alert.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v20 = v19;
  v21 = objc_allocWithZone(v19);
  *(v21 + *((*v12 & *v21) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v21 + *((*v12 & *v21) + 0x68)) = 0;
  *(v21 + *((*v12 & *v21) + 0x70)) = 0;
  *(v21 + *((*v12 & *v21) + 0x78)) = 0;
  EnvironmentValues.init()();
  v22 = v21 + *((*v12 & *v21) + 0x88);
  *v22 = 0u;
  *(v22 + 1) = 0u;
  *(v22 + 2) = 0u;
  *(v22 + 3) = 0u;
  *(v22 + 4) = 0u;
  *(v22 + 5) = 0u;
  *(v22 + 6) = 0u;
  *(v22 + 7) = 0u;
  *(v22 + 8) = 0u;
  *(v22 + 9) = 0u;
  *(v22 + 10) = 0u;
  *(v22 + 11) = 0u;
  *(v22 + 12) = 0u;
  *(v22 + 13) = 0u;
  *(v22 + 14) = 0u;
  *(v22 + 15) = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 34) = 0;
  *(v21 + *((*v12 & *v21) + 0x90)) = 0;
  *(v21 + *((*v12 & *v21) + 0x98)) = 1;
  v191.receiver = v21;
  v191.super_class = v20;
  *(v1 + v18) = objc_msgSendSuper2(&v191, sel_init);
  v23 = *((*v12 & *v1) + 0x108);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<ActionSheet.Presentation>, &type metadata for ActionSheet.Presentation, &protocol witness table for ActionSheet.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v25 = v24;
  v26 = objc_allocWithZone(v24);
  *(v26 + *((*v12 & *v26) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v26 + *((*v12 & *v26) + 0x68)) = 0;
  *(v26 + *((*v12 & *v26) + 0x70)) = 0;
  *(v26 + *((*v12 & *v26) + 0x78)) = 0;
  EnvironmentValues.init()();
  v27 = v26 + *((*v12 & *v26) + 0x88);
  *v27 = 0u;
  *(v27 + 1) = 0u;
  *(v27 + 2) = 0u;
  *(v27 + 3) = 0u;
  *(v27 + 4) = 0u;
  *(v27 + 5) = 0u;
  *(v27 + 6) = 0u;
  *(v27 + 7) = 0u;
  *(v27 + 8) = 0u;
  *(v27 + 9) = 0u;
  *(v27 + 20) = 0;
  *(v26 + *((*v12 & *v26) + 0x90)) = 0;
  *(v26 + *((*v12 & *v26) + 0x98)) = 0;
  v190.receiver = v26;
  v190.super_class = v25;
  *(v2 + v23) = objc_msgSendSuper2(&v190, sel_init);
  *(v2 + *((*v12 & *v2) + 0x110)) = 1;
  v28 = *((*v12 & *v2) + 0x118);
  type metadata accessor for FocusBridge();
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 32) = 0;
  *(v29 + 40) = 0;
  swift_unknownObjectWeakInit();
  v30 = MEMORY[0x1E69E7CC0];
  v31 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI12PropertyListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v29 + 48) = 0;
  *(v29 + 56) = v30;
  *(v29 + 64) = v31;
  EnvironmentValues.init()();
  *(v29 + 120) = 0u;
  *(v29 + 104) = 0u;
  *(v29 + 88) = 0u;
  v173 = xmmword_18CD6A6D0;
  *(v29 + 136) = xmmword_18CD6A6D0;
  swift_weakInit();
  *(v29 + 160) = 0;
  *(v29 + 168) = 0;
  *(v29 + 176) = 1;
  *(v2 + v28) = v29;
  v32 = *((*v12 & *v2) + 0x120);
  *(v2 + v32) = [objc_allocWithZone(type metadata accessor for DragAndDropBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x128)) = 0;
  v33 = *((*v12 & *v2) + 0x130);
  *(v2 + v33) = [objc_allocWithZone(type metadata accessor for TooltipBridge()) init];
  v34 = *((*v12 & *v2) + 0x138);
  *(v2 + v34) = [objc_allocWithZone(type metadata accessor for EditMenuBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x140)) = 0;
  *(v2 + *((*v12 & *v2) + 0x148)) = 0;
  v35 = *((*v12 & *v2) + 0x150);
  type metadata accessor for UIKitStatusBarBridge();
  v36 = swift_allocObject();
  *(v36 + 16) = 514;
  *(v36 + 24) = v30;
  *(v36 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + v35) = v36;
  swift_weakInit();
  *(v2 + *((*v12 & *v2) + 0x160)) = 0;
  v37 = *((*v12 & *v2) + 0x168);
  *(v2 + v37) = [objc_allocWithZone(type metadata accessor for AVKitCaptureButtonBridge()) init];
  v38 = *((*v12 & *v2) + 0x170);
  *(v2 + v38) = [objc_allocWithZone(type metadata accessor for PencilEventsBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x178)) = 0;
  *(v2 + *((*v12 & *v2) + 0x180)) = 0;
  v39 = *((*v12 & *v2) + 0x188);
  *(v2 + v39) = [objc_allocWithZone(type metadata accessor for ContextMenuBridge()) init];
  v40 = *((*v12 & *v2) + 0x190);
  type metadata accessor for InteractiveResizeBridge();
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 20) = 0;
  *(v41 + 24) = 0;
  v175 = v40;
  *(v2 + v40) = v41;
  *(v2 + *((*v12 & *v2) + 0x198)) = 0;
  v42 = *((*v12 & *v2) + 0x1A0);
  *(v2 + v42) = [objc_allocWithZone(type metadata accessor for UILargeContentViewerInteractionBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x1A8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1B0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1B8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1C0) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v12 & *v2) + 0x1C8)) = 0;
  v43 = v2 + *((*v12 & *v2) + 0x1D0);
  *v43 = 0;
  v43[8] = 0;
  *(v43 + 1) = xmmword_18CD76350;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v12 & *v2) + 0x1E0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1E8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1F0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1F8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x200)) = 0;
  v44 = v2 + *((*v12 & *v2) + 0x60);
  v174 = a1;
  v45 = outlined init with copy of ModifiedContent<TableRowView, CollectionViewCellModifier>(a1, v44, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, CollectionViewCellModifier>, MEMORY[0x1E697D9F0], &type metadata for CollectionViewCellModifier);
  MEMORY[0x18D00ABE0](v45);
  type metadata accessor for PlatformColorDefinition();
  type metadata accessor for UIKitPlatformColorDefinition();
  static PlatformSystemDefinition.uiKit.getter();
  static PlatformColorDefinition.setInternalDefinition(_:system:)();
  type metadata accessor for PlatformScrollEdgeEffectTagDefinition();
  type metadata accessor for ScrollEdgeEffectTagModifierDefinition();
  static PlatformScrollEdgeEffectTagDefinition.setDefinition(_:)();
  type metadata accessor for PlatformItemsDefinition();
  type metadata accessor for UIKitPlatformItemsDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  v46 = static PlatformItemsDefinition.setDefinition(_:system:)();
  v47 = *(ObjectType + 1384);
  v176 = ObjectType;
  v47(&v194, v46);
  v48 = v194;
  type metadata accessor for PlatformViewDefinition();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
  if (!static PlatformViewDefinition.for (_:)())
  {
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, CollectionViewCellModifier>, MEMORY[0x1E697D9F0], &type metadata for CollectionViewCellModifier, MEMORY[0x1E697E830]);
  LOBYTE(v192) = v48;
  type metadata accessor for ViewGraphHost();
  swift_allocObject();
  lazy protocol witness table accessor for type ModifiedContent<_ViewList_View, CollectionViewCellModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<_ViewList_View, CollectionViewCellModifier> and conformance <> ModifiedContent<A, B>, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, CollectionViewCellModifier>, &type metadata for CollectionViewCellModifier, lazy protocol witness table accessor for type CollectionViewCellModifier and conformance CollectionViewCellModifier);
  v181 = ViewGraphHost.init<A>(rootViewType:outputs:viewDefinition:)();
  v49 = *(v181 + 88);

  v50 = v184;
  v51 = UIHostingViewBase.Configuration.init()();
  v52 = v180;
  MEMORY[0x18D001BC0](v51);
  v53 = UIHostingViewBase.Configuration.options.modify();
  v54 = v185;
  specialized OptionSet<>.insert(_:)(v185, v52);
  v55 = *(v178 + 8);
  v56 = v186;
  v55(v52, v186);
  v55(v54, v56);
  v57 = v53(&v194, 0);
  v58 = v50;
  if (((*(v176 + 1408))(v57) & 1) == 0)
  {
    v59 = v180;
    static UIHostingViewBase.Options.allowUnregisteredGeometryChanges.getter();
    v60 = UIHostingViewBase.Configuration.options.modify();
    v61 = v58;
    v62 = v185;
    specialized OptionSet<>.insert(_:)(v185, v59);
    v63 = v186;
    v55(v59, v186);
    v64 = v62;
    v58 = v61;
    v55(v64, v63);
    v60(&v194, 0);
  }

  (*(v182 + 16))(v177, v58, v183);
  v65 = objc_allocWithZone(type metadata accessor for UIHostingViewBase());

  v66 = UIHostingViewBase.init(viewGraph:configuration:)();
  v67 = MEMORY[0x1E69E7D40];
  *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x68)) = v66;

  *&v194 = specialized FocusViewGraph.init(graph:)(v68);
  *(&v194 + 1) = v69;
  LOWORD(v195) = v70 & 0x101;
  BYTE2(v195) = v71 & 1;
  lazy protocol witness table accessor for type FocusViewGraph and conformance FocusViewGraph();
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type PlatformItemListViewGraph and conformance PlatformItemListViewGraph();
  *&v194 = 0;
  WORD4(v194) = 0;
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput();
  if (static UserDefaultKeyedFeature.isEnabled.getter())
  {
    v72 = *MEMORY[0x1E698D3F8];
    v192 = 0uLL;
    *v193 = v72;
    memset(&v193[8], 0, 64);
    *&v193[72] = v173;
    lazy protocol witness table accessor for type ViewGraphBridgePropertiesFeature and conformance ViewGraphBridgePropertiesFeature();
    ViewGraph.append<A>(feature:)();
    v197 = *&v193[32];
    v198 = *&v193[48];
    v199 = *&v193[64];
    v200 = *&v193[80];
    v194 = v192;
    v195 = *v193;
    v196 = *&v193[16];
    outlined destroy of ViewGraphBridgePropertiesFeature(&v194);
  }

  if (_UIUpdateAdaptiveRateNeeded())
  {
    type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>>.EnableVFDFeature();
    lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature, type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>>.EnableVFDFeature);
    ViewGraph.append<A>(feature:)();
  }

  AccessibilityViewGraph.init(graph:)(v73, &v192);
  aBlock = v192;
  v206 = *v193;
  v207 = *&v193[16];
  v208 = *&v193[32];
  lazy protocol witness table accessor for type AccessibilityViewGraph and conformance AccessibilityViewGraph();
  ViewGraph.append<A>(feature:)();
  v194 = aBlock;
  v195 = v206;
  v196 = v207;
  *&v197 = v208;
  outlined destroy of AccessibilityViewGraph(&v194);
  v74 = *(v2 + v175);
  v75 = AGSubgraphGetCurrent();
  swift_beginAccess();

  AGSubgraphSetCurrent();
  LOBYTE(aBlock) = 0;
  v76 = Attribute.init<A>(body:value:flags:update:)();
  AGSubgraphSetCurrent();

  *&aBlock = v74;
  DWORD2(aBlock) = v76;
  lazy protocol witness table accessor for type InteractiveResizeChangeViewGraphFeature and conformance InteractiveResizeChangeViewGraphFeature();
  ViewGraph.append<A>(feature:)();

  v77 = MEMORY[0x1E69E7CC0];
  v78 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E7BindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(&v206 + 1) = &type metadata for HoverEventDispatcher;
  *&v207 = lazy protocol witness table accessor for type HoverEventDispatcher and conformance HoverEventDispatcher();
  *&aBlock = v78;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v206 + 1) = &type metadata for PencilDoubleTapEventDispatcher;
  *&v207 = lazy protocol witness table accessor for type PencilDoubleTapEventDispatcher and conformance PencilDoubleTapEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v206 + 1) = &type metadata for PencilSqueezeEventDispatcher;
  *&v207 = lazy protocol witness table accessor for type PencilSqueezeEventDispatcher and conformance PencilSqueezeEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v79 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_SayAC8KeyPressV7HandlerVGTt0g5Tf4g_n(v77);
  *(&v206 + 1) = &type metadata for KeyEventDispatcher;
  *&v207 = lazy protocol witness table accessor for type KeyEventDispatcher and conformance KeyEventDispatcher();
  *&aBlock = v79;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  type metadata accessor for UIKitEventBindingBridge();
  swift_allocObject();

  *(v2 + *((*v67 & *v2) + 0xE0)) = UIKitEventBindingBridge.init(eventBindingManager:)();
  type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>>();
  v189.receiver = v2;
  v189.super_class = v80;
  v81 = objc_msgSendSuper2(&v189, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  swift_unknownObjectWeakInit();
  type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>>.HostViewGraph();
  lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph, type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>>.HostViewGraph);
  v82 = v81;
  ViewGraph.append<A>(feature:)();
  v83 = outlined destroy of _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>.HostViewGraph(&aBlock, type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>>.HostViewGraph);
  (*((*v67 & *v82) + 0x5C0))(v83);
  v84 = specialized _UIHostingView.base.getter();
  UIHostingViewBase.setUp()();

  static RepresentableContextValues.current.getter();
  v85 = aBlock;
  v185 = v49;
  v186 = v81;
  if (aBlock != 1)
  {
    v86 = *(&aBlock + 1);
    v87 = v206;
    v88 = v207;
    if (aBlock)
    {

      specialized ViewRendererHost.setPreferenceBridge(_:)(v89);
    }

    *&aBlock = v85;
    *(&aBlock + 1) = v86;
    v206 = v87;
    LOBYTE(v207) = v88 & 1;
    RepresentableContextValues.environment.getter();
    v203 = v204;
    UIHostingViewBase.initialInheritedEnvironment.setter();
    outlined consume of RepresentableContextValues?(v85, v86, v87, *(&v87 + 1), v88);
    v49 = v185;
  }

  specialized _UIHostingView.feedbackCache.getter();
  swift_unknownObjectWeakAssign();
  v90 = v82;

  v91 = *(v90 + *((*v67 & *v90) + 0x150));
  v92 = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>>);
  *(v91 + 40) = v92;
  swift_unknownObjectWeakAssign();

  UIKitStatusBarBridge.addPreferences(to:)();

  v180 = *((*v67 & *v90) + 0x188);
  *(*&v180[v90] + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host + 8) = v92;
  swift_unknownObjectWeakAssign();
  v93 = *(v90 + *((*v67 & *v90) + 0x100));
  *(v93 + *((*v93 & *v67) + 0x60) + 8) = v92;
  swift_unknownObjectWeakAssign();

  GraphHost.addPreference<A>(_:)();
  v94 = *(v90 + *((*v67 & *v90) + 0x108));
  *(v94 + *((*v94 & *v67) + 0x60) + 8) = v92;
  swift_unknownObjectWeakAssign();

  GraphHost.addPreference<A>(_:)();
  v95 = specialized _UIHostingView.sheetBridge.getter();
  if (v95)
  {
    *&v95[direct field offset for SheetBridge.host + 8] = v92;
    v96 = v95;
    swift_unknownObjectWeakAssign();
  }

  v97 = *v67 & *v90;
  v98 = *(v90 + *(v97 + 0x110));
  if (v98)
  {
    v99 = *((*v98 & *v67) + 0x210);
    v100 = v98;
    v99(v49);
    outlined consume of SheetBridge<SheetPreference.Key>??(v98);
    v97 = *v67 & *v90;
  }

  v101 = *(v90 + *(v97 + 280));
  v102 = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>>);
  *(v101 + 32) = &protocol witness table for _UIHostingView<A>;
  *(v101 + 40) = v102;
  swift_unknownObjectWeakAssign();

  v103 = FocusBridge.host.getter();
  if (v103)
  {
    v105 = v103;
    v106 = v104;
    v107 = swift_getObjectType();
    (*(*(*(v106 + 8) + 8) + 8))(v107);

    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v108 = *((*v67 & *v90) + 0x120);
  *(*(v90 + v108) + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host + 8) = v92;
  swift_unknownObjectWeakAssign();
  v109 = *(v90 + v108);
  v110 = &v109[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_45;
  }

  v111 = *(v110 + 1);
  v112 = swift_getObjectType();
  v113 = *(*(v111 + 16) + 8);
  v114 = v109;
  LOBYTE(v112) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v112, v113);
  swift_unknownObjectRelease();
  if (v112)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  GraphHost.addPreference<A>(_:)();
  *(*(v90 + *((*v67 & *v90) + 0x130)) + OBJC_IVAR____TtC7SwiftUI13TooltipBridge_host + 8) = v92;
  swift_unknownObjectWeakAssign();
  v115 = v90;
  GraphHost.addPreference<A>(_:)();
  *(*(v115 + *((*v67 & *v115) + 0x138)) + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_host + 8) = v92;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  GraphHost.addPreference<A>(_:)();
  *(*(v115 + *((*v67 & *v115) + 0x170)) + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_host + 8) = v92;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  v116 = *((*v67 & *v115) + 0x168);
  *(*(v115 + v116) + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host + 8) = v92;
  swift_unknownObjectWeakAssign();

  v117 = *(v115 + v116);
  v118 = &v117[OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_46;
  }

  v119 = *(v118 + 1);
  v120 = swift_getObjectType();
  v121 = *(v119 + 8);
  v122 = *(v121 + 8);
  v123 = v117;
  v122(v120, v121);
  swift_unknownObjectRelease();
  GraphHost.addPreference<A>(_:)();

  v124 = [v115 traitCollection];

  v125 = [v124 userInterfaceIdiom];
  v126 = MEMORY[0x1E69E7D40];
  if (v125 == 1 || (v127 = [v115 traitCollection], v128 = objc_msgSend(v127, sel_userInterfaceIdiom), v127, v128 == 6))
  {
    v129 = [objc_allocWithZone(type metadata accessor for PointerBridge()) init];
    *&v129[OBJC_IVAR____TtC7SwiftUI13PointerBridge_host + 8] = v92;
    swift_unknownObjectWeakAssign();
    GraphHost.addPreference<A>(_:)();
    v130 = *((*v126 & *v115) + 0x178);
    v131 = *(v115 + v130);
    *(v115 + v130) = v129;
  }

  v132 = *&v180[v90];
  v133 = &v132[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host];
  Strong = swift_unknownObjectWeakLoadStrong();
  v135 = v184;
  if (!Strong)
  {
LABEL_47:
    __break(1u);
  }

  v136 = *(v133 + 1);
  v137 = swift_getObjectType();
  v138 = *(*(v136 + 16) + 8);
  v139 = v132;
  LOBYTE(v137) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v137, v138);
  swift_unknownObjectRelease();
  v140 = v185;
  if (v137)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v141 = *((*v126 & *v115) + 0x1A0);
  *(*(v115 + v141) + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_host + 8) = v92;
  v142 = swift_unknownObjectWeakAssign();
  v143 = *(v115 + v141);
  MEMORY[0x1EEE9AC00](v142);
  *(&v173 - 2) = v143;
  *(&v173 - 1) = v140;
  v144 = v115;
  v145 = v143;
  static Update.ensure<A>(_:)();

  v146 = *((*v126 & *v144) + 0x78);
  v147 = *(v144 + v146);
  v148 = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>>);
  swift_beginAccess();
  *(v147 + 24) = v148;
  swift_unknownObjectWeakAssign();

  v149 = *(v144 + v146);
  v150 = *((*v126 & *v144) + 0xE0);
  swift_beginAccess();
  *(v149 + 40) = MEMORY[0x1E697F3C8];
  swift_unknownObjectWeakAssign();
  v151 = *(v144 + v150);
  v152 = *(v151 + 32);

  if (v152)
  {
    [v144 addGestureRecognizer_];
  }

  [v144 addGestureRecognizer_];

  specialized _UIHostingView.legacySetupKeyboardAvoidanceNotifications()();
  if (isAppleInternalBuild()())
  {
    v153 = [v144 window];
    if (v153)
    {
      v154 = v153;
      v155 = [v153 rootViewController];

      if (v155)
      {
        v156 = [v155 viewIfLoaded];

        if (v156)
        {

          if (v156 == v144)
          {
            v201 = 0;
            v188[0] = 0;
            v157 = getpid();
            LODWORD(v180) = v157;
            *&aBlock = 0;
            *(&aBlock + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(16);

            strcpy(&aBlock, "NameLayerTree-");
            HIBYTE(aBlock) = -18;
            v187 = v157;
            v158 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x18D00C9B0](v158);

            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
            v159 = static OS_dispatch_queue.main.getter();
            v160 = swift_allocObject();
            swift_unknownObjectWeakInit();
            *&v207 = partial apply for specialized closure #1 in _UIHostingView.init(rootView:);
            *(&v207 + 1) = v160;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v206 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v206 + 1) = &block_descriptor_312;
            v161 = _Block_copy(&aBlock);

            v162 = String.utf8CString.getter();

            notify_register_dispatch((v162 + 32), &v201, v159, v161);

            _Block_release(v161);

            v163 = static OS_dispatch_queue.main.getter();
            v164 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v165 = swift_allocObject();
            *(v165 + 16) = v180;
            *(v165 + 24) = v164;
            *&v207 = partial apply for specialized closure #2 in _UIHostingView.init(rootView:);
            *(&v207 + 1) = v165;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v206 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v206 + 1) = &block_descriptor_319;
            v166 = _Block_copy(&aBlock);

            notify_register_dispatch("NameLayerTree", v188, v163, v166);
            _Block_release(v166);

            v167 = v144 + *((*v126 & *v144) + 0xE8);
            *v167 = v201 | (v188[0] << 32);
            v167[8] = 0;
          }
        }
      }
    }
  }

  v168 = [objc_opt_self() defaultCenter];
  [v168 addObserver:v144 selector:sel_accessibilityFocusedElementDidChange_ name:*MEMORY[0x1E69DD8C0] object:0];
  v169 = one-time initialization token for didUpdateListLayout;
  v170 = v144;
  if (v169 != -1)
  {
    swift_once();
  }

  [v168 addObserver:v170 selector:sel_clarityUISettingDidChange_ name:static ClarityUI.didUpdateListLayout object:0];

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v202 = 0;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(&v201, v170);
  swift_endAccess();
  if (static Spacing.hasSetupDefaultValue == 1)
  {
    (*(v182 + 8))(v135, v183);
  }

  else
  {
    static Spacing.hasSetupDefaultValue = 1;

    (*(v182 + 8))(v135, v183);
  }

  v171 = v174;
  static Update.end()();
  outlined destroy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(v171);
  return v170;
}

{
  v2 = v1;
  v208 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v185 = type metadata accessor for UIHostingViewBase.Options();
  v177 = *(v185 - 8);
  MEMORY[0x1EEE9AC00](v185);
  v179 = &v172 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v184 = &v172 - v7;
  v8 = type metadata accessor for UIHostingViewBase.Configuration();
  v182 = *(v8 - 8);
  v183 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v176 = &v172 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v181 = &v172 - v11;
  v12 = MEMORY[0x1E69E7D40];
  *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x70)) = 0;
  v13 = *((*v12 & *v1) + 0x78);
  type metadata accessor for EventBindingManager();
  v14 = EventBindingManager.__allocating_init()();
  v178 = v13;
  *(v1 + v13) = v14;
  *(v1 + *((*v12 & *v1) + 0x80)) = 0;
  *(v1 + *((*v12 & *v1) + 0x88)) = 0;
  *(v1 + *((*v12 & *v1) + 0x90)) = 1;
  *(v1 + *((*v12 & *v1) + 0x98)) = 0;
  *(v1 + *((*v12 & *v1) + 0xA0)) = 0;
  v15 = v2 + *((*v12 & *v2) + 0xA8);
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v15[32] = 1;
  v16 = v2 + *((*v12 & *v2) + 0xB0);
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v16[32] = 1;
  *(v1 + *((*v12 & *v1) + 0xB8)) = 0;
  *(v1 + *((*v12 & *v1) + 0xC0)) = 0;
  *(v1 + *((*v12 & *v1) + 0xC8)) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + *((*v12 & *v1) + 0xD8)) = 0;
  v17 = v2 + *((*v12 & *v2) + 0xE8);
  *v17 = 0;
  v17[8] = 1;
  *(v1 + *((*v12 & *v1) + 0xF0)) = 0;
  *(v1 + *((*v12 & *v1) + 0xF8)) = 2;
  v18 = *((*v12 & *v1) + 0x100);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<Alert.Presentation>, &type metadata for Alert.Presentation, &protocol witness table for Alert.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v20 = v19;
  v21 = objc_allocWithZone(v19);
  *(v21 + *((*v12 & *v21) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v21 + *((*v12 & *v21) + 0x68)) = 0;
  *(v21 + *((*v12 & *v21) + 0x70)) = 0;
  *(v21 + *((*v12 & *v21) + 0x78)) = 0;
  EnvironmentValues.init()();
  v22 = v21 + *((*v12 & *v21) + 0x88);
  *v22 = 0u;
  *(v22 + 1) = 0u;
  *(v22 + 2) = 0u;
  *(v22 + 3) = 0u;
  *(v22 + 4) = 0u;
  *(v22 + 5) = 0u;
  *(v22 + 6) = 0u;
  *(v22 + 7) = 0u;
  *(v22 + 8) = 0u;
  *(v22 + 9) = 0u;
  *(v22 + 10) = 0u;
  *(v22 + 11) = 0u;
  *(v22 + 12) = 0u;
  *(v22 + 13) = 0u;
  *(v22 + 14) = 0u;
  *(v22 + 15) = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 34) = 0;
  *(v21 + *((*v12 & *v21) + 0x90)) = 0;
  *(v21 + *((*v12 & *v21) + 0x98)) = 1;
  v190.receiver = v21;
  v190.super_class = v20;
  *(v1 + v18) = objc_msgSendSuper2(&v190, sel_init);
  v23 = *((*v12 & *v1) + 0x108);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<ActionSheet.Presentation>, &type metadata for ActionSheet.Presentation, &protocol witness table for ActionSheet.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v25 = v24;
  v26 = objc_allocWithZone(v24);
  *(v26 + *((*v12 & *v26) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v26 + *((*v12 & *v26) + 0x68)) = 0;
  *(v26 + *((*v12 & *v26) + 0x70)) = 0;
  *(v26 + *((*v12 & *v26) + 0x78)) = 0;
  EnvironmentValues.init()();
  v27 = v26 + *((*v12 & *v26) + 0x88);
  *v27 = 0u;
  *(v27 + 1) = 0u;
  *(v27 + 2) = 0u;
  *(v27 + 3) = 0u;
  *(v27 + 4) = 0u;
  *(v27 + 5) = 0u;
  *(v27 + 6) = 0u;
  *(v27 + 7) = 0u;
  *(v27 + 8) = 0u;
  *(v27 + 9) = 0u;
  *(v27 + 20) = 0;
  *(v26 + *((*v12 & *v26) + 0x90)) = 0;
  *(v26 + *((*v12 & *v26) + 0x98)) = 0;
  v189.receiver = v26;
  v189.super_class = v25;
  *(v2 + v23) = objc_msgSendSuper2(&v189, sel_init);
  *(v2 + *((*v12 & *v2) + 0x110)) = 1;
  v28 = *((*v12 & *v2) + 0x118);
  type metadata accessor for FocusBridge();
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 32) = 0;
  *(v29 + 40) = 0;
  swift_unknownObjectWeakInit();
  v30 = MEMORY[0x1E69E7CC0];
  v31 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI12PropertyListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v29 + 48) = 0;
  *(v29 + 56) = v30;
  *(v29 + 64) = v31;
  EnvironmentValues.init()();
  *(v29 + 120) = 0u;
  *(v29 + 104) = 0u;
  *(v29 + 88) = 0u;
  v172 = xmmword_18CD6A6D0;
  *(v29 + 136) = xmmword_18CD6A6D0;
  swift_weakInit();
  *(v29 + 160) = 0;
  *(v29 + 168) = 0;
  *(v29 + 176) = 1;
  *(v2 + v28) = v29;
  v32 = *((*v12 & *v2) + 0x120);
  *(v2 + v32) = [objc_allocWithZone(type metadata accessor for DragAndDropBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x128)) = 0;
  v33 = *((*v12 & *v2) + 0x130);
  *(v2 + v33) = [objc_allocWithZone(type metadata accessor for TooltipBridge()) init];
  v34 = *((*v12 & *v2) + 0x138);
  *(v2 + v34) = [objc_allocWithZone(type metadata accessor for EditMenuBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x140)) = 0;
  *(v2 + *((*v12 & *v2) + 0x148)) = 0;
  v35 = *((*v12 & *v2) + 0x150);
  type metadata accessor for UIKitStatusBarBridge();
  v36 = swift_allocObject();
  *(v36 + 16) = 514;
  *(v36 + 24) = v30;
  *(v36 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + v35) = v36;
  swift_weakInit();
  *(v2 + *((*v12 & *v2) + 0x160)) = 0;
  v37 = *((*v12 & *v2) + 0x168);
  *(v2 + v37) = [objc_allocWithZone(type metadata accessor for AVKitCaptureButtonBridge()) init];
  v38 = *((*v12 & *v2) + 0x170);
  *(v2 + v38) = [objc_allocWithZone(type metadata accessor for PencilEventsBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x178)) = 0;
  *(v2 + *((*v12 & *v2) + 0x180)) = 0;
  v39 = *((*v12 & *v2) + 0x188);
  *(v2 + v39) = [objc_allocWithZone(type metadata accessor for ContextMenuBridge()) init];
  v40 = *((*v12 & *v2) + 0x190);
  type metadata accessor for InteractiveResizeBridge();
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 20) = 0;
  *(v41 + 24) = 0;
  v174 = v40;
  *(v2 + v40) = v41;
  *(v2 + *((*v12 & *v2) + 0x198)) = 0;
  v42 = *((*v12 & *v2) + 0x1A0);
  *(v2 + v42) = [objc_allocWithZone(type metadata accessor for UILargeContentViewerInteractionBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x1A8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1B0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1B8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1C0) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v12 & *v2) + 0x1C8)) = 0;
  v43 = v2 + *((*v12 & *v2) + 0x1D0);
  *v43 = 0;
  v43[8] = 0;
  *(v43 + 1) = xmmword_18CD76350;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v12 & *v2) + 0x1E0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1E8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1F0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1F8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x200)) = 0;
  *(v2 + *((*v12 & *v2) + 0x60)) = a1;
  v173 = a1;

  MEMORY[0x18D00ABE0](v44);
  type metadata accessor for PlatformColorDefinition();
  type metadata accessor for UIKitPlatformColorDefinition();
  static PlatformSystemDefinition.uiKit.getter();
  static PlatformColorDefinition.setInternalDefinition(_:system:)();
  type metadata accessor for PlatformScrollEdgeEffectTagDefinition();
  type metadata accessor for ScrollEdgeEffectTagModifierDefinition();
  static PlatformScrollEdgeEffectTagDefinition.setDefinition(_:)();
  type metadata accessor for PlatformItemsDefinition();
  type metadata accessor for UIKitPlatformItemsDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  v45 = static PlatformItemsDefinition.setDefinition(_:system:)();
  v46 = *(ObjectType + 1384);
  v175 = ObjectType;
  v46(&v193, v45);
  v47 = v193;
  type metadata accessor for PlatformViewDefinition();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
  if (!static PlatformViewDefinition.for (_:)())
  {
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v48 = MEMORY[0x1E697E108];
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for ModifiedContent<AnyView, EmptyModifier>, MEMORY[0x1E6981910], MEMORY[0x1E697E108], MEMORY[0x1E697E830]);
  LOBYTE(v191) = v47;
  type metadata accessor for ViewGraphHost();
  swift_allocObject();
  lazy protocol witness table accessor for type ModifiedContent<AnyView, _SafeAreaInsetsModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<AnyView, EmptyModifier> and conformance <> ModifiedContent<A, B>, &lazy cache variable for type metadata for ModifiedContent<AnyView, EmptyModifier>, v48);
  v180 = ViewGraphHost.init<A>(rootViewType:outputs:viewDefinition:)();
  v49 = *(v180 + 88);

  v50 = v181;
  v51 = UIHostingViewBase.Configuration.init()();
  v52 = v179;
  MEMORY[0x18D001BC0](v51);
  v53 = UIHostingViewBase.Configuration.options.modify();
  v54 = v184;
  specialized OptionSet<>.insert(_:)(v184, v52);
  v55 = *(v177 + 8);
  v56 = v185;
  v55(v52, v185);
  v55(v54, v56);
  v57 = v53(&v193, 0);
  v58 = v50;
  if (((*(v175 + 1408))(v57) & 1) == 0)
  {
    v59 = v179;
    static UIHostingViewBase.Options.allowUnregisteredGeometryChanges.getter();
    v60 = UIHostingViewBase.Configuration.options.modify();
    v61 = v58;
    v62 = v184;
    specialized OptionSet<>.insert(_:)(v184, v59);
    v63 = v185;
    v55(v59, v185);
    v64 = v62;
    v58 = v61;
    v55(v64, v63);
    v60(&v193, 0);
  }

  (*(v182 + 16))(v176, v58, v183);
  v65 = objc_allocWithZone(type metadata accessor for UIHostingViewBase());

  *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x68)) = UIHostingViewBase.init(viewGraph:configuration:)();

  *&v193 = specialized FocusViewGraph.init(graph:)(v66);
  *(&v193 + 1) = v67;
  LOWORD(v194) = v68 & 0x101;
  BYTE2(v194) = v69 & 1;
  lazy protocol witness table accessor for type FocusViewGraph and conformance FocusViewGraph();
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type PlatformItemListViewGraph and conformance PlatformItemListViewGraph();
  *&v193 = 0;
  WORD4(v193) = 0;
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput();
  if (static UserDefaultKeyedFeature.isEnabled.getter())
  {
    v70 = *MEMORY[0x1E698D3F8];
    v191 = 0uLL;
    *v192 = v70;
    memset(&v192[8], 0, 64);
    *&v192[72] = v172;
    lazy protocol witness table accessor for type ViewGraphBridgePropertiesFeature and conformance ViewGraphBridgePropertiesFeature();
    ViewGraph.append<A>(feature:)();
    v196 = *&v192[32];
    v197 = *&v192[48];
    v198 = *&v192[64];
    v199 = *&v192[80];
    v193 = v191;
    v194 = *v192;
    v195 = *&v192[16];
    outlined destroy of ViewGraphBridgePropertiesFeature(&v193);
  }

  if (_UIUpdateAdaptiveRateNeeded())
  {
    type metadata accessor for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>.EnableVFDFeature();
    lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature, type metadata accessor for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>.EnableVFDFeature);
    ViewGraph.append<A>(feature:)();
  }

  AccessibilityViewGraph.init(graph:)(v71, &v191);
  aBlock = v191;
  v205 = *v192;
  v206 = *&v192[16];
  v207 = *&v192[32];
  lazy protocol witness table accessor for type AccessibilityViewGraph and conformance AccessibilityViewGraph();
  ViewGraph.append<A>(feature:)();
  v193 = aBlock;
  v194 = v205;
  v195 = v206;
  *&v196 = v207;
  outlined destroy of AccessibilityViewGraph(&v193);
  v72 = *(v2 + v174);
  v73 = AGSubgraphGetCurrent();
  swift_beginAccess();

  AGSubgraphSetCurrent();
  LOBYTE(aBlock) = 0;
  v74 = Attribute.init<A>(body:value:flags:update:)();
  AGSubgraphSetCurrent();

  *&aBlock = v72;
  DWORD2(aBlock) = v74;
  lazy protocol witness table accessor for type InteractiveResizeChangeViewGraphFeature and conformance InteractiveResizeChangeViewGraphFeature();
  ViewGraph.append<A>(feature:)();

  v75 = MEMORY[0x1E69E7CC0];
  v76 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E7BindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(&v205 + 1) = &type metadata for HoverEventDispatcher;
  *&v206 = lazy protocol witness table accessor for type HoverEventDispatcher and conformance HoverEventDispatcher();
  *&aBlock = v76;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v205 + 1) = &type metadata for PencilDoubleTapEventDispatcher;
  *&v206 = lazy protocol witness table accessor for type PencilDoubleTapEventDispatcher and conformance PencilDoubleTapEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v205 + 1) = &type metadata for PencilSqueezeEventDispatcher;
  *&v206 = lazy protocol witness table accessor for type PencilSqueezeEventDispatcher and conformance PencilSqueezeEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v77 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_SayAC8KeyPressV7HandlerVGTt0g5Tf4g_n(v75);
  *(&v205 + 1) = &type metadata for KeyEventDispatcher;
  *&v206 = lazy protocol witness table accessor for type KeyEventDispatcher and conformance KeyEventDispatcher();
  *&aBlock = v77;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  type metadata accessor for UIKitEventBindingBridge();
  swift_allocObject();

  v78 = UIKitEventBindingBridge.init(eventBindingManager:)();
  v79 = MEMORY[0x1E69E7D40];
  *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0xE0)) = v78;
  type metadata accessor for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>();
  v188.receiver = v2;
  v188.super_class = v80;
  v81 = v79;
  v82 = objc_msgSendSuper2(&v188, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  swift_unknownObjectWeakInit();
  type metadata accessor for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>.HostViewGraph();
  lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph, type metadata accessor for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>.HostViewGraph);
  v83 = v82;
  ViewGraph.append<A>(feature:)();
  v84 = outlined destroy of _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>.HostViewGraph(&aBlock, type metadata accessor for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>.HostViewGraph);
  (*((*v79 & *v83) + 0x5C0))(v84);
  v85 = specialized _UIHostingView.base.getter();
  UIHostingViewBase.setUp()();

  static RepresentableContextValues.current.getter();
  v86 = aBlock;
  v184 = v49;
  v185 = v82;
  if (aBlock != 1)
  {
    v87 = *(&aBlock + 1);
    v88 = v205;
    v89 = v206;
    if (aBlock)
    {

      specialized ViewRendererHost.setPreferenceBridge(_:)(v90);
    }

    *&aBlock = v86;
    *(&aBlock + 1) = v87;
    v205 = v88;
    LOBYTE(v206) = v89 & 1;
    RepresentableContextValues.environment.getter();
    v202 = v203;
    UIHostingViewBase.initialInheritedEnvironment.setter();
    outlined consume of RepresentableContextValues?(v86, v87, v88, *(&v88 + 1), v89);
    v49 = v184;
  }

  specialized _UIHostingView.feedbackCache.getter();
  swift_unknownObjectWeakAssign();
  v91 = v83;

  v92 = *(v91 + *((*v81 & *v91) + 0x150));
  v93 = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<AnyView, EmptyModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>);
  *(v92 + 40) = v93;
  swift_unknownObjectWeakAssign();

  UIKitStatusBarBridge.addPreferences(to:)();

  v179 = *((*v81 & *v91) + 0x188);
  *(*&v179[v91] + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host + 8) = v93;
  swift_unknownObjectWeakAssign();
  v94 = *(v91 + *((*v81 & *v91) + 0x100));
  *(v94 + *((*v94 & *v81) + 0x60) + 8) = v93;
  swift_unknownObjectWeakAssign();

  GraphHost.addPreference<A>(_:)();
  v95 = *(v91 + *((*v81 & *v91) + 0x108));
  *(v95 + *((*v95 & *v81) + 0x60) + 8) = v93;
  swift_unknownObjectWeakAssign();

  GraphHost.addPreference<A>(_:)();
  v96 = specialized _UIHostingView.sheetBridge.getter();
  if (v96)
  {
    *&v96[direct field offset for SheetBridge.host + 8] = v93;
    v97 = v96;
    swift_unknownObjectWeakAssign();
  }

  v98 = *v81 & *v91;
  v99 = *(v91 + *(v98 + 0x110));
  if (v99)
  {
    v100 = *((*v99 & *v81) + 0x210);
    v101 = v99;
    v100(v49);
    outlined consume of SheetBridge<SheetPreference.Key>??(v99);
    v98 = *v81 & *v91;
  }

  v102 = *(v91 + *(v98 + 280));
  v103 = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<AnyView, EmptyModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>);
  *(v102 + 32) = &protocol witness table for _UIHostingView<A>;
  *(v102 + 40) = v103;
  swift_unknownObjectWeakAssign();

  v104 = FocusBridge.host.getter();
  if (v104)
  {
    v106 = v104;
    v107 = v105;
    v108 = swift_getObjectType();
    (*(*(*(v107 + 8) + 8) + 8))(v108);

    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v109 = *((*v81 & *v91) + 0x120);
  *(*(v91 + v109) + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host + 8) = v93;
  swift_unknownObjectWeakAssign();
  v110 = *(v91 + v109);
  v111 = &v110[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_45;
  }

  v112 = *(v111 + 1);
  v113 = swift_getObjectType();
  v114 = *(*(v112 + 16) + 8);
  v115 = v110;
  LOBYTE(v113) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v113, v114);
  swift_unknownObjectRelease();
  if (v113)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  GraphHost.addPreference<A>(_:)();
  *(*(v91 + *((*v81 & *v91) + 0x130)) + OBJC_IVAR____TtC7SwiftUI13TooltipBridge_host + 8) = v93;
  swift_unknownObjectWeakAssign();
  v116 = v91;
  GraphHost.addPreference<A>(_:)();
  *(*(v116 + *((*v81 & *v116) + 0x138)) + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_host + 8) = v93;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  GraphHost.addPreference<A>(_:)();
  *(*(v116 + *((*v81 & *v116) + 0x170)) + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_host + 8) = v93;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  v117 = *((*v81 & *v116) + 0x168);
  *(*(v116 + v117) + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host + 8) = v93;
  swift_unknownObjectWeakAssign();

  v118 = *(v116 + v117);
  v119 = &v118[OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_46;
  }

  v120 = *(v119 + 1);
  v121 = swift_getObjectType();
  v122 = *(v120 + 8);
  v123 = *(v122 + 8);
  v124 = v118;
  v123(v121, v122);
  swift_unknownObjectRelease();
  GraphHost.addPreference<A>(_:)();

  v125 = [v116 traitCollection];

  v126 = [v125 userInterfaceIdiom];
  v127 = MEMORY[0x1E69E7D40];
  if (v126 == 1 || (v128 = [v116 traitCollection], v129 = objc_msgSend(v128, sel_userInterfaceIdiom), v128, v129 == 6))
  {
    v130 = [objc_allocWithZone(type metadata accessor for PointerBridge()) init];
    *&v130[OBJC_IVAR____TtC7SwiftUI13PointerBridge_host + 8] = v93;
    swift_unknownObjectWeakAssign();
    GraphHost.addPreference<A>(_:)();
    v131 = *((*v127 & *v116) + 0x178);
    v132 = *(v116 + v131);
    *(v116 + v131) = v130;
  }

  v133 = *&v179[v91];
  v134 = &v133[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
LABEL_47:
    __break(1u);
  }

  v135 = *(v134 + 1);
  v136 = v133;

  v137 = swift_getObjectType();
  v138 = ViewGraphDelegate.shouldCreateUIInteractions.getter(v137, *(*(v135 + 16) + 8));
  swift_unknownObjectRelease();
  v139 = v184;
  if (v138)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v140 = *((*v127 & *v116) + 0x1A0);
  *(*(v116 + v140) + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_host + 8) = v93;
  v141 = swift_unknownObjectWeakAssign();
  v142 = *(v116 + v140);
  MEMORY[0x1EEE9AC00](v141);
  *(&v172 - 2) = v142;
  *(&v172 - 1) = v139;
  v143 = v116;
  v144 = v142;
  static Update.ensure<A>(_:)();

  v145 = *((*v127 & *v143) + 0x78);
  v146 = *(v143 + v145);
  v147 = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<AnyView, EmptyModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>);
  swift_beginAccess();
  *(v146 + 24) = v147;
  swift_unknownObjectWeakAssign();

  v148 = *(v143 + v145);
  v149 = *((*v127 & *v143) + 0xE0);
  swift_beginAccess();
  *(v148 + 40) = MEMORY[0x1E697F3C8];
  swift_unknownObjectWeakAssign();
  v150 = *(v143 + v149);
  v151 = *(v150 + 32);

  if (v151)
  {
    [v143 addGestureRecognizer_];
  }

  [v143 addGestureRecognizer_];

  specialized _UIHostingView.legacySetupKeyboardAvoidanceNotifications()();
  if (isAppleInternalBuild()())
  {
    v152 = [v143 window];
    if (v152)
    {
      v153 = v152;
      v154 = [v152 rootViewController];

      if (v154)
      {
        v155 = [v154 viewIfLoaded];

        if (v155)
        {

          if (v155 == v143)
          {
            v200 = 0;
            v187[0] = 0;
            v156 = getpid();
            *&aBlock = 0;
            *(&aBlock + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(16);

            strcpy(&aBlock, "NameLayerTree-");
            HIBYTE(aBlock) = -18;
            v186 = v156;
            v157 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x18D00C9B0](v157);

            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
            v158 = static OS_dispatch_queue.main.getter();
            v159 = swift_allocObject();
            swift_unknownObjectWeakInit();
            *&v206 = partial apply for specialized closure #1 in _UIHostingView.init(rootView:);
            *(&v206 + 1) = v159;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v205 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v205 + 1) = &block_descriptor_8;
            v160 = _Block_copy(&aBlock);

            v161 = String.utf8CString.getter();

            notify_register_dispatch((v161 + 32), &v200, v158, v160);

            _Block_release(v160);

            v162 = static OS_dispatch_queue.main.getter();
            v163 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v164 = swift_allocObject();
            *(v164 + 16) = v156;
            *(v164 + 24) = v163;
            *&v206 = partial apply for specialized closure #2 in _UIHostingView.init(rootView:);
            *(&v206 + 1) = v164;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v205 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v205 + 1) = &block_descriptor_8;
            v165 = _Block_copy(&aBlock);

            notify_register_dispatch("NameLayerTree", v187, v162, v165);
            _Block_release(v165);

            v166 = v143 + *((*v127 & *v143) + 0xE8);
            *v166 = v200 | (v187[0] << 32);
            v166[8] = 0;
          }
        }
      }
    }
  }

  v167 = [objc_opt_self() defaultCenter];
  [v167 addObserver:v143 selector:sel_accessibilityFocusedElementDidChange_ name:*MEMORY[0x1E69DD8C0] object:0];
  v168 = one-time initialization token for didUpdateListLayout;
  v169 = v143;
  if (v168 != -1)
  {
    swift_once();
  }

  [v167 addObserver:v169 selector:sel_clarityUISettingDidChange_ name:static ClarityUI.didUpdateListLayout object:0];

  v170 = v181;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v201 = 0;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(&v200, v169);
  swift_endAccess();
  if (static Spacing.hasSetupDefaultValue == 1)
  {
    (*(v182 + 8))(v170, v183);
  }

  else
  {
    static Spacing.hasSetupDefaultValue = 1;

    (*(v182 + 8))(v170, v183);
  }

  static Update.end()();
  return v169;
}

{
  v2 = v1;
  v178 = a1;
  v203 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for UIHostingViewBase.Options();
  v170 = *(v3 - 8);
  v171 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v174 = &v167 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v173 = &v167 - v6;
  v7 = type metadata accessor for UIHostingViewBase.Configuration();
  v176 = *(v7 - 8);
  v177 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v169 = &v167 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v175 = &v167 - v10;
  v11 = MEMORY[0x1E69E7D40];
  *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x70)) = 0;
  v12 = *((*v11 & *v1) + 0x78);
  type metadata accessor for EventBindingManager();
  v13 = EventBindingManager.__allocating_init()();
  v172 = v12;
  *(v1 + v12) = v13;
  *(v1 + *((*v11 & *v1) + 0x80)) = 0;
  *(v1 + *((*v11 & *v1) + 0x88)) = 0;
  *(v1 + *((*v11 & *v1) + 0x90)) = 1;
  *(v1 + *((*v11 & *v1) + 0x98)) = 0;
  *(v1 + *((*v11 & *v1) + 0xA0)) = 0;
  v14 = v2 + *((*v11 & *v2) + 0xA8);
  *v14 = 0u;
  *(v14 + 1) = 0u;
  v14[32] = 1;
  v15 = v2 + *((*v11 & *v2) + 0xB0);
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v15[32] = 1;
  *(v1 + *((*v11 & *v1) + 0xB8)) = 0;
  *(v1 + *((*v11 & *v1) + 0xC0)) = 0;
  *(v1 + *((*v11 & *v1) + 0xC8)) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + *((*v11 & *v1) + 0xD8)) = 0;
  v16 = v2 + *((*v11 & *v2) + 0xE8);
  *v16 = 0;
  v16[8] = 1;
  *(v1 + *((*v11 & *v1) + 0xF0)) = 0;
  *(v1 + *((*v11 & *v1) + 0xF8)) = 2;
  v17 = *((*v11 & *v1) + 0x100);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<Alert.Presentation>, &type metadata for Alert.Presentation, &protocol witness table for Alert.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v19 = v18;
  v20 = objc_allocWithZone(v18);
  *(v20 + *((*v11 & *v20) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v20 + *((*v11 & *v20) + 0x68)) = 0;
  *(v20 + *((*v11 & *v20) + 0x70)) = 0;
  *(v20 + *((*v11 & *v20) + 0x78)) = 0;
  EnvironmentValues.init()();
  v21 = v20 + *((*v11 & *v20) + 0x88);
  *v21 = 0u;
  *(v21 + 1) = 0u;
  *(v21 + 2) = 0u;
  *(v21 + 3) = 0u;
  *(v21 + 4) = 0u;
  *(v21 + 5) = 0u;
  *(v21 + 6) = 0u;
  *(v21 + 7) = 0u;
  *(v21 + 8) = 0u;
  *(v21 + 9) = 0u;
  *(v21 + 10) = 0u;
  *(v21 + 11) = 0u;
  *(v21 + 12) = 0u;
  *(v21 + 13) = 0u;
  *(v21 + 14) = 0u;
  *(v21 + 15) = 0u;
  *(v21 + 16) = 0u;
  *(v21 + 34) = 0;
  *(v20 + *((*v11 & *v20) + 0x90)) = 0;
  *(v20 + *((*v11 & *v20) + 0x98)) = 1;
  v185.receiver = v20;
  v185.super_class = v19;
  *(v1 + v17) = objc_msgSendSuper2(&v185, sel_init);
  v22 = *((*v11 & *v1) + 0x108);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<ActionSheet.Presentation>, &type metadata for ActionSheet.Presentation, &protocol witness table for ActionSheet.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v24 = v23;
  v25 = objc_allocWithZone(v23);
  *(v25 + *((*v11 & *v25) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v25 + *((*v11 & *v25) + 0x68)) = 0;
  *(v25 + *((*v11 & *v25) + 0x70)) = 0;
  *(v25 + *((*v11 & *v25) + 0x78)) = 0;
  EnvironmentValues.init()();
  v26 = v25 + *((*v11 & *v25) + 0x88);
  *v26 = 0u;
  *(v26 + 1) = 0u;
  *(v26 + 2) = 0u;
  *(v26 + 3) = 0u;
  *(v26 + 4) = 0u;
  *(v26 + 5) = 0u;
  *(v26 + 6) = 0u;
  *(v26 + 7) = 0u;
  *(v26 + 8) = 0u;
  *(v26 + 9) = 0u;
  *(v26 + 20) = 0;
  *(v25 + *((*v11 & *v25) + 0x90)) = 0;
  *(v25 + *((*v11 & *v25) + 0x98)) = 0;
  v184.receiver = v25;
  v184.super_class = v24;
  *(v2 + v22) = objc_msgSendSuper2(&v184, sel_init);
  *(v2 + *((*v11 & *v2) + 0x110)) = 1;
  v27 = *((*v11 & *v2) + 0x118);
  type metadata accessor for FocusBridge();
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 32) = 0;
  *(v28 + 40) = 0;
  swift_unknownObjectWeakInit();
  v29 = MEMORY[0x1E69E7CC0];
  v30 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI12PropertyListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v28 + 48) = 0;
  *(v28 + 56) = v29;
  *(v28 + 64) = v30;
  EnvironmentValues.init()();
  *(v28 + 120) = 0u;
  *(v28 + 104) = 0u;
  *(v28 + 88) = 0u;
  v167 = xmmword_18CD6A6D0;
  *(v28 + 136) = xmmword_18CD6A6D0;
  swift_weakInit();
  *(v28 + 160) = 0;
  *(v28 + 168) = 0;
  *(v28 + 176) = 1;
  *(v2 + v27) = v28;
  v31 = *((*v11 & *v2) + 0x120);
  *(v2 + v31) = [objc_allocWithZone(type metadata accessor for DragAndDropBridge()) init];
  *(v2 + *((*v11 & *v2) + 0x128)) = 0;
  v32 = *((*v11 & *v2) + 0x130);
  *(v2 + v32) = [objc_allocWithZone(type metadata accessor for TooltipBridge()) init];
  v33 = *((*v11 & *v2) + 0x138);
  *(v2 + v33) = [objc_allocWithZone(type metadata accessor for EditMenuBridge()) init];
  *(v2 + *((*v11 & *v2) + 0x140)) = 0;
  *(v2 + *((*v11 & *v2) + 0x148)) = 0;
  v34 = *((*v11 & *v2) + 0x150);
  type metadata accessor for UIKitStatusBarBridge();
  v35 = swift_allocObject();
  *(v35 + 16) = 514;
  *(v35 + 24) = v29;
  *(v35 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + v34) = v35;
  swift_weakInit();
  *(v2 + *((*v11 & *v2) + 0x160)) = 0;
  v36 = *((*v11 & *v2) + 0x168);
  *(v2 + v36) = [objc_allocWithZone(type metadata accessor for AVKitCaptureButtonBridge()) init];
  v37 = *((*v11 & *v2) + 0x170);
  *(v2 + v37) = [objc_allocWithZone(type metadata accessor for PencilEventsBridge()) init];
  *(v2 + *((*v11 & *v2) + 0x178)) = 0;
  *(v2 + *((*v11 & *v2) + 0x180)) = 0;
  v38 = *((*v11 & *v2) + 0x188);
  *(v2 + v38) = [objc_allocWithZone(type metadata accessor for ContextMenuBridge()) init];
  v39 = *((*v11 & *v2) + 0x190);
  type metadata accessor for InteractiveResizeBridge();
  v40 = swift_allocObject();
  *(v40 + 16) = 0;
  *(v40 + 20) = 0;
  *(v40 + 24) = 0;
  v168 = v39;
  *(v2 + v39) = v40;
  *(v2 + *((*v11 & *v2) + 0x198)) = 0;
  v41 = *((*v11 & *v2) + 0x1A0);
  *(v2 + v41) = [objc_allocWithZone(type metadata accessor for UILargeContentViewerInteractionBridge()) init];
  *(v2 + *((*v11 & *v2) + 0x1A8)) = 0;
  *(v2 + *((*v11 & *v2) + 0x1B0)) = 0;
  *(v2 + *((*v11 & *v2) + 0x1B8)) = 0;
  *(v2 + *((*v11 & *v2) + 0x1C0) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v11 & *v2) + 0x1C8)) = 0;
  v42 = v2 + *((*v11 & *v2) + 0x1D0);
  *v42 = 0;
  v42[8] = 0;
  *(v42 + 1) = xmmword_18CD76350;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v11 & *v2) + 0x1E0)) = 0;
  *(v2 + *((*v11 & *v2) + 0x1E8)) = 0;
  *(v2 + *((*v11 & *v2) + 0x1F0)) = 0;
  *(v2 + *((*v11 & *v2) + 0x1F8)) = 0;
  *(v2 + *((*v11 & *v2) + 0x200)) = 0;
  v43 = outlined init with copy of TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>(v178, v2 + *((*v11 & *v2) + 0x60), &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0);
  MEMORY[0x18D00ABE0](v43);
  type metadata accessor for PlatformColorDefinition();
  type metadata accessor for UIKitPlatformColorDefinition();
  static PlatformSystemDefinition.uiKit.getter();
  static PlatformColorDefinition.setInternalDefinition(_:system:)();
  type metadata accessor for PlatformScrollEdgeEffectTagDefinition();
  type metadata accessor for ScrollEdgeEffectTagModifierDefinition();
  static PlatformScrollEdgeEffectTagDefinition.setDefinition(_:)();
  type metadata accessor for PlatformItemsDefinition();
  type metadata accessor for UIKitPlatformItemsDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  v44 = static PlatformItemsDefinition.setDefinition(_:system:)();
  (*(ObjectType + 1384))(&v188, v44);
  v45 = v188;
  type metadata accessor for PlatformViewDefinition();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
  if (!static PlatformViewDefinition.for (_:)())
  {
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  type metadata accessor for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>(0, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0);
  LOBYTE(v186) = v45;
  type metadata accessor for ViewGraphHost();
  swift_allocObject();
  lazy protocol witness table accessor for type TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0> and conformance TestIDView<A, B>(&lazy protocol witness table cache variable for type TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0> and conformance TestIDView<A, B>, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0);
  v46 = ViewGraphHost.init<A>(rootViewType:outputs:viewDefinition:)();
  v180 = *(v46 + 88);

  v47 = v175;
  v48 = UIHostingViewBase.Configuration.init()();
  v49 = v174;
  MEMORY[0x18D001BC0](v48);
  v50 = UIHostingViewBase.Configuration.options.modify();
  v51 = v173;
  specialized OptionSet<>.insert(_:)(v173, v49);
  v52 = *(v170 + 8);
  v53 = v49;
  v54 = v171;
  v52(v53, v171);
  v52(v51, v54);
  v55 = v50(&v188, 0);
  v56 = v47;
  if (((*(ObjectType + 1408))(v55) & 1) == 0)
  {
    v57 = v174;
    static UIHostingViewBase.Options.allowUnregisteredGeometryChanges.getter();
    ObjectType = UIHostingViewBase.Configuration.options.modify();
    v58 = v173;
    specialized OptionSet<>.insert(_:)(v173, v57);
    v52(v57, v54);
    v52(v58, v54);
    (ObjectType)(&v188, 0);
  }

  (*(v176 + 16))(v169, v56, v177);
  v59 = objc_allocWithZone(type metadata accessor for UIHostingViewBase());

  v173 = v46;
  v60 = UIHostingViewBase.init(viewGraph:configuration:)();
  v61 = MEMORY[0x1E69E7D40];
  *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x68)) = v60;
  v62 = v180;

  *&v188 = specialized FocusViewGraph.init(graph:)(v63);
  *(&v188 + 1) = v64;
  LOWORD(v189) = v65 & 0x101;
  BYTE2(v189) = v66 & 1;
  lazy protocol witness table accessor for type FocusViewGraph and conformance FocusViewGraph();
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type PlatformItemListViewGraph and conformance PlatformItemListViewGraph();
  *&v188 = 0;
  WORD4(v188) = 0;
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput();
  if (static UserDefaultKeyedFeature.isEnabled.getter())
  {
    v67 = *MEMORY[0x1E698D3F8];
    v186 = 0uLL;
    *v187 = v67;
    memset(&v187[8], 0, 64);
    *&v187[72] = v167;
    lazy protocol witness table accessor for type ViewGraphBridgePropertiesFeature and conformance ViewGraphBridgePropertiesFeature();
    ViewGraph.append<A>(feature:)();
    v191 = *&v187[32];
    v192 = *&v187[48];
    v193 = *&v187[64];
    v194 = *&v187[80];
    v188 = v186;
    v189 = *v187;
    v190 = *&v187[16];
    outlined destroy of ViewGraphBridgePropertiesFeature(&v188);
  }

  if (_UIUpdateAdaptiveRateNeeded())
  {
    type metadata accessor for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>.EnableVFDFeature();
    lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature, type metadata accessor for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>.EnableVFDFeature);
    ViewGraph.append<A>(feature:)();
  }

  AccessibilityViewGraph.init(graph:)(v68, &v186);
  aBlock = v186;
  v200 = *v187;
  v201 = *&v187[16];
  v202 = *&v187[32];
  lazy protocol witness table accessor for type AccessibilityViewGraph and conformance AccessibilityViewGraph();
  ViewGraph.append<A>(feature:)();
  v188 = aBlock;
  v189 = v200;
  v190 = v201;
  *&v191 = v202;
  outlined destroy of AccessibilityViewGraph(&v188);
  v69 = *(v2 + v168);
  v70 = AGSubgraphGetCurrent();
  swift_beginAccess();

  AGSubgraphSetCurrent();
  LOBYTE(aBlock) = 0;
  v71 = Attribute.init<A>(body:value:flags:update:)();
  AGSubgraphSetCurrent();

  *&aBlock = v69;
  DWORD2(aBlock) = v71;
  lazy protocol witness table accessor for type InteractiveResizeChangeViewGraphFeature and conformance InteractiveResizeChangeViewGraphFeature();
  ViewGraph.append<A>(feature:)();

  v72 = MEMORY[0x1E69E7CC0];
  v73 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E7BindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(&v200 + 1) = &type metadata for HoverEventDispatcher;
  *&v201 = lazy protocol witness table accessor for type HoverEventDispatcher and conformance HoverEventDispatcher();
  *&aBlock = v73;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v200 + 1) = &type metadata for PencilDoubleTapEventDispatcher;
  *&v201 = lazy protocol witness table accessor for type PencilDoubleTapEventDispatcher and conformance PencilDoubleTapEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v200 + 1) = &type metadata for PencilSqueezeEventDispatcher;
  *&v201 = lazy protocol witness table accessor for type PencilSqueezeEventDispatcher and conformance PencilSqueezeEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v74 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_SayAC8KeyPressV7HandlerVGTt0g5Tf4g_n(v72);
  *(&v200 + 1) = &type metadata for KeyEventDispatcher;
  *&v201 = lazy protocol witness table accessor for type KeyEventDispatcher and conformance KeyEventDispatcher();
  *&aBlock = v74;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  type metadata accessor for UIKitEventBindingBridge();
  swift_allocObject();

  *(v2 + *((*v61 & *v2) + 0xE0)) = UIKitEventBindingBridge.init(eventBindingManager:)();
  type metadata accessor for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>();
  v183.receiver = v2;
  v183.super_class = v75;
  v76 = objc_msgSendSuper2(&v183, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  swift_unknownObjectWeakInit();
  type metadata accessor for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>.HostViewGraph();
  lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph, type metadata accessor for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>.HostViewGraph);
  v77 = v76;
  ViewGraph.append<A>(feature:)();
  v78 = outlined destroy of _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>.HostViewGraph(&aBlock, type metadata accessor for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>.HostViewGraph);
  (*((*v61 & *v77) + 0x5C0))(v78);
  v79 = specialized _UIHostingView.base.getter();
  UIHostingViewBase.setUp()();

  static RepresentableContextValues.current.getter();
  v80 = aBlock;
  ObjectType = v76;
  if (aBlock != 1)
  {
    v81 = *(&aBlock + 1);
    v82 = v200;
    v83 = v201;
    if (aBlock)
    {

      specialized ViewRendererHost.setPreferenceBridge(_:)(v84);
    }

    *&aBlock = v80;
    *(&aBlock + 1) = v81;
    v200 = v82;
    LOBYTE(v201) = v83 & 1;
    RepresentableContextValues.environment.getter();
    v197 = v198;
    UIHostingViewBase.initialInheritedEnvironment.setter();
    outlined consume of RepresentableContextValues?(v80, v81, v82, *(&v82 + 1), v83);
    v62 = v180;
  }

  specialized _UIHostingView.feedbackCache.getter();
  swift_unknownObjectWeakAssign();
  v85 = v77;

  v86 = *(v85 + *((*v61 & *v85) + 0x150));
  v87 = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>);
  *(v86 + 40) = v87;
  swift_unknownObjectWeakAssign();

  UIKitStatusBarBridge.addPreferences(to:)();

  v174 = *((*v61 & *v85) + 0x188);
  *(*&v174[v85] + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host + 8) = v87;
  swift_unknownObjectWeakAssign();
  v88 = *(v85 + *((*v61 & *v85) + 0x100));
  *(v88 + *((*v88 & *v61) + 0x60) + 8) = v87;
  swift_unknownObjectWeakAssign();

  GraphHost.addPreference<A>(_:)();
  v89 = *(v85 + *((*v61 & *v85) + 0x108));
  *(v89 + *((*v89 & *v61) + 0x60) + 8) = v87;
  swift_unknownObjectWeakAssign();

  GraphHost.addPreference<A>(_:)();
  v90 = specialized _UIHostingView.sheetBridge.getter();
  if (v90)
  {
    *&v90[direct field offset for SheetBridge.host + 8] = v87;
    v91 = v90;
    swift_unknownObjectWeakAssign();
  }

  v92 = *v61 & *v85;
  v93 = *(v85 + *(v92 + 0x110));
  if (v93)
  {
    v94 = *((*v93 & *v61) + 0x210);
    v95 = v93;
    v94(v62);
    outlined consume of SheetBridge<SheetPreference.Key>??(v93);
    v92 = *v61 & *v85;
  }

  v96 = *(v85 + *(v92 + 280));
  v97 = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>);
  *(v96 + 32) = &protocol witness table for _UIHostingView<A>;
  *(v96 + 40) = v97;
  swift_unknownObjectWeakAssign();

  v98 = FocusBridge.host.getter();
  if (v98)
  {
    v100 = v98;
    v101 = v99;
    v102 = swift_getObjectType();
    (*(*(*(v101 + 8) + 8) + 8))(v102);

    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v103 = *((*v61 & *v85) + 0x120);
  *(*(v85 + v103) + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host + 8) = v87;
  swift_unknownObjectWeakAssign();
  v104 = *(v85 + v103);
  v105 = &v104[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_45;
  }

  v106 = *(v105 + 1);
  v107 = swift_getObjectType();
  v108 = *(*(v106 + 16) + 8);
  v109 = v104;
  LOBYTE(v107) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v107, v108);
  swift_unknownObjectRelease();
  if (v107)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  GraphHost.addPreference<A>(_:)();
  *(*(v85 + *((*v61 & *v85) + 0x130)) + OBJC_IVAR____TtC7SwiftUI13TooltipBridge_host + 8) = v87;
  swift_unknownObjectWeakAssign();
  v110 = v85;
  GraphHost.addPreference<A>(_:)();
  *(*(v110 + *((*v61 & *v110) + 0x138)) + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_host + 8) = v87;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  GraphHost.addPreference<A>(_:)();
  *(*(v110 + *((*v61 & *v110) + 0x170)) + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_host + 8) = v87;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  v111 = *((*v61 & *v110) + 0x168);
  *(*(v110 + v111) + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host + 8) = v87;
  swift_unknownObjectWeakAssign();

  v112 = *(v110 + v111);
  v113 = &v112[OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_46;
  }

  v114 = *(v113 + 1);
  v115 = swift_getObjectType();
  v116 = *(v114 + 8);
  v117 = *(v116 + 8);
  v118 = v112;
  v117(v115, v116);
  swift_unknownObjectRelease();
  GraphHost.addPreference<A>(_:)();

  v119 = [v110 traitCollection];

  v120 = [v119 userInterfaceIdiom];
  v121 = MEMORY[0x1E69E7D40];
  if (v120 == 1 || (v122 = [v110 traitCollection], v123 = objc_msgSend(v122, sel_userInterfaceIdiom), v122, v123 == 6))
  {
    v124 = [objc_allocWithZone(type metadata accessor for PointerBridge()) init];
    *&v124[OBJC_IVAR____TtC7SwiftUI13PointerBridge_host + 8] = v87;
    swift_unknownObjectWeakAssign();
    GraphHost.addPreference<A>(_:)();
    v125 = *((*v121 & *v110) + 0x178);
    v126 = *(v110 + v125);
    *(v110 + v125) = v124;
  }

  v127 = *&v174[v85];
  v128 = &v127[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
LABEL_47:
    __break(1u);
  }

  v129 = *(v128 + 1);
  v130 = swift_getObjectType();
  v131 = *(*(v129 + 16) + 8);
  v132 = v127;
  LOBYTE(v130) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v130, v131);
  swift_unknownObjectRelease();
  v133 = v180;
  if (v130)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v134 = *((*v121 & *v110) + 0x1A0);
  *(*(v110 + v134) + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_host + 8) = v87;
  v135 = swift_unknownObjectWeakAssign();
  v136 = *(v110 + v134);
  MEMORY[0x1EEE9AC00](v135);
  *(&v167 - 2) = v136;
  *(&v167 - 1) = v133;
  v137 = v110;
  v138 = v136;
  static Update.ensure<A>(_:)();

  v139 = *((*v121 & *v137) + 0x78);
  v140 = *(v137 + v139);
  v141 = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>);
  swift_beginAccess();
  *(v140 + 24) = v141;
  swift_unknownObjectWeakAssign();

  v142 = *(v137 + v139);
  v143 = *((*v121 & *v137) + 0xE0);
  swift_beginAccess();
  *(v142 + 40) = MEMORY[0x1E697F3C8];
  swift_unknownObjectWeakAssign();
  v144 = *(v137 + v143);
  v145 = *(v144 + 32);

  if (v145)
  {
    [v137 addGestureRecognizer_];
  }

  [v137 addGestureRecognizer_];

  specialized _UIHostingView.legacySetupKeyboardAvoidanceNotifications()();
  if (isAppleInternalBuild()())
  {
    v146 = [v137 window];
    if (v146)
    {
      v147 = v146;
      v148 = [v146 rootViewController];

      if (v148)
      {
        v149 = [v148 viewIfLoaded];

        if (v149)
        {

          if (v149 == v137)
          {
            v195 = 0;
            v182[0] = 0;
            v150 = getpid();
            LODWORD(v174) = v150;
            *&aBlock = 0;
            *(&aBlock + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(16);

            strcpy(&aBlock, "NameLayerTree-");
            HIBYTE(aBlock) = -18;
            v181 = v150;
            v151 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x18D00C9B0](v151);

            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
            v152 = static OS_dispatch_queue.main.getter();
            v153 = swift_allocObject();
            swift_unknownObjectWeakInit();
            *&v201 = partial apply for specialized closure #1 in _UIHostingView.init(rootView:);
            *(&v201 + 1) = v153;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v200 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v200 + 1) = &block_descriptor_255;
            v154 = _Block_copy(&aBlock);

            v155 = String.utf8CString.getter();

            notify_register_dispatch((v155 + 32), &v195, v152, v154);

            _Block_release(v154);

            v156 = static OS_dispatch_queue.main.getter();
            v157 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v158 = swift_allocObject();
            *(v158 + 16) = v174;
            *(v158 + 24) = v157;
            *&v201 = partial apply for specialized closure #2 in _UIHostingView.init(rootView:);
            *(&v201 + 1) = v158;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v200 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v200 + 1) = &block_descriptor_262;
            v159 = _Block_copy(&aBlock);

            notify_register_dispatch("NameLayerTree", v182, v156, v159);
            _Block_release(v159);

            v160 = v137 + *((*v121 & *v137) + 0xE8);
            *v160 = v195 | (v182[0] << 32);
            v160[8] = 0;
          }
        }
      }
    }
  }

  v161 = [objc_opt_self() defaultCenter];
  [v161 addObserver:v137 selector:sel_accessibilityFocusedElementDidChange_ name:*MEMORY[0x1E69DD8C0] object:0];
  v162 = one-time initialization token for didUpdateListLayout;
  v163 = v137;
  if (v162 != -1)
  {
    swift_once();
  }

  [v161 addObserver:v163 selector:sel_clarityUISettingDidChange_ name:static ClarityUI.didUpdateListLayout object:0];

  v164 = v175;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v196 = 0;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(&v195, v163);
  swift_endAccess();
  if (static Spacing.hasSetupDefaultValue == 1)
  {
    (*(v176 + 8))(v164, v177);
  }

  else
  {
    static Spacing.hasSetupDefaultValue = 1;

    (*(v176 + 8))(v164, v177);
  }

  v165 = v178;
  static Update.end()();
  outlined destroy of TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>(v165, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0);
  return v163;
}

{
  v2 = v1;
  v178 = a1;
  v203 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for UIHostingViewBase.Options();
  v170 = *(v3 - 8);
  v171 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v174 = &v167 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v173 = &v167 - v6;
  v7 = type metadata accessor for UIHostingViewBase.Configuration();
  v176 = *(v7 - 8);
  v177 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v169 = &v167 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v175 = &v167 - v10;
  v11 = MEMORY[0x1E69E7D40];
  *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x70)) = 0;
  v12 = *((*v11 & *v1) + 0x78);
  type metadata accessor for EventBindingManager();
  v13 = EventBindingManager.__allocating_init()();
  v172 = v12;
  *(v1 + v12) = v13;
  *(v1 + *((*v11 & *v1) + 0x80)) = 0;
  *(v1 + *((*v11 & *v1) + 0x88)) = 0;
  *(v1 + *((*v11 & *v1) + 0x90)) = 1;
  *(v1 + *((*v11 & *v1) + 0x98)) = 0;
  *(v1 + *((*v11 & *v1) + 0xA0)) = 0;
  v14 = v2 + *((*v11 & *v2) + 0xA8);
  *v14 = 0u;
  *(v14 + 1) = 0u;
  v14[32] = 1;
  v15 = v2 + *((*v11 & *v2) + 0xB0);
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v15[32] = 1;
  *(v1 + *((*v11 & *v1) + 0xB8)) = 0;
  *(v1 + *((*v11 & *v1) + 0xC0)) = 0;
  *(v1 + *((*v11 & *v1) + 0xC8)) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + *((*v11 & *v1) + 0xD8)) = 0;
  v16 = v2 + *((*v11 & *v2) + 0xE8);
  *v16 = 0;
  v16[8] = 1;
  *(v1 + *((*v11 & *v1) + 0xF0)) = 0;
  *(v1 + *((*v11 & *v1) + 0xF8)) = 2;
  v17 = *((*v11 & *v1) + 0x100);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<Alert.Presentation>, &type metadata for Alert.Presentation, &protocol witness table for Alert.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v19 = v18;
  v20 = objc_allocWithZone(v18);
  *(v20 + *((*v11 & *v20) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v20 + *((*v11 & *v20) + 0x68)) = 0;
  *(v20 + *((*v11 & *v20) + 0x70)) = 0;
  *(v20 + *((*v11 & *v20) + 0x78)) = 0;
  EnvironmentValues.init()();
  v21 = v20 + *((*v11 & *v20) + 0x88);
  *v21 = 0u;
  *(v21 + 1) = 0u;
  *(v21 + 2) = 0u;
  *(v21 + 3) = 0u;
  *(v21 + 4) = 0u;
  *(v21 + 5) = 0u;
  *(v21 + 6) = 0u;
  *(v21 + 7) = 0u;
  *(v21 + 8) = 0u;
  *(v21 + 9) = 0u;
  *(v21 + 10) = 0u;
  *(v21 + 11) = 0u;
  *(v21 + 12) = 0u;
  *(v21 + 13) = 0u;
  *(v21 + 14) = 0u;
  *(v21 + 15) = 0u;
  *(v21 + 16) = 0u;
  *(v21 + 34) = 0;
  *(v20 + *((*v11 & *v20) + 0x90)) = 0;
  *(v20 + *((*v11 & *v20) + 0x98)) = 1;
  v185.receiver = v20;
  v185.super_class = v19;
  *(v1 + v17) = objc_msgSendSuper2(&v185, sel_init);
  v22 = *((*v11 & *v1) + 0x108);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<ActionSheet.Presentation>, &type metadata for ActionSheet.Presentation, &protocol witness table for ActionSheet.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v24 = v23;
  v25 = objc_allocWithZone(v23);
  *(v25 + *((*v11 & *v25) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v25 + *((*v11 & *v25) + 0x68)) = 0;
  *(v25 + *((*v11 & *v25) + 0x70)) = 0;
  *(v25 + *((*v11 & *v25) + 0x78)) = 0;
  EnvironmentValues.init()();
  v26 = v25 + *((*v11 & *v25) + 0x88);
  *v26 = 0u;
  *(v26 + 1) = 0u;
  *(v26 + 2) = 0u;
  *(v26 + 3) = 0u;
  *(v26 + 4) = 0u;
  *(v26 + 5) = 0u;
  *(v26 + 6) = 0u;
  *(v26 + 7) = 0u;
  *(v26 + 8) = 0u;
  *(v26 + 9) = 0u;
  *(v26 + 20) = 0;
  *(v25 + *((*v11 & *v25) + 0x90)) = 0;
  *(v25 + *((*v11 & *v25) + 0x98)) = 0;
  v184.receiver = v25;
  v184.super_class = v24;
  *(v2 + v22) = objc_msgSendSuper2(&v184, sel_init);
  *(v2 + *((*v11 & *v2) + 0x110)) = 1;
  v27 = *((*v11 & *v2) + 0x118);
  type metadata accessor for FocusBridge();
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 32) = 0;
  *(v28 + 40) = 0;
  swift_unknownObjectWeakInit();
  v29 = MEMORY[0x1E69E7CC0];
  v30 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI12PropertyListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v28 + 48) = 0;
  *(v28 + 56) = v29;
  *(v28 + 64) = v30;
  EnvironmentValues.init()();
  *(v28 + 120) = 0u;
  *(v28 + 104) = 0u;
  *(v28 + 88) = 0u;
  v167 = xmmword_18CD6A6D0;
  *(v28 + 136) = xmmword_18CD6A6D0;
  swift_weakInit();
  *(v28 + 160) = 0;
  *(v28 + 168) = 0;
  *(v28 + 176) = 1;
  *(v2 + v27) = v28;
  v31 = *((*v11 & *v2) + 0x120);
  *(v2 + v31) = [objc_allocWithZone(type metadata accessor for DragAndDropBridge()) init];
  *(v2 + *((*v11 & *v2) + 0x128)) = 0;
  v32 = *((*v11 & *v2) + 0x130);
  *(v2 + v32) = [objc_allocWithZone(type metadata accessor for TooltipBridge()) init];
  v33 = *((*v11 & *v2) + 0x138);
  *(v2 + v33) = [objc_allocWithZone(type metadata accessor for EditMenuBridge()) init];
  *(v2 + *((*v11 & *v2) + 0x140)) = 0;
  *(v2 + *((*v11 & *v2) + 0x148)) = 0;
  v34 = *((*v11 & *v2) + 0x150);
  type metadata accessor for UIKitStatusBarBridge();
  v35 = swift_allocObject();
  *(v35 + 16) = 514;
  *(v35 + 24) = v29;
  *(v35 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + v34) = v35;
  swift_weakInit();
  *(v2 + *((*v11 & *v2) + 0x160)) = 0;
  v36 = *((*v11 & *v2) + 0x168);
  *(v2 + v36) = [objc_allocWithZone(type metadata accessor for AVKitCaptureButtonBridge()) init];
  v37 = *((*v11 & *v2) + 0x170);
  *(v2 + v37) = [objc_allocWithZone(type metadata accessor for PencilEventsBridge()) init];
  *(v2 + *((*v11 & *v2) + 0x178)) = 0;
  *(v2 + *((*v11 & *v2) + 0x180)) = 0;
  v38 = *((*v11 & *v2) + 0x188);
  *(v2 + v38) = [objc_allocWithZone(type metadata accessor for ContextMenuBridge()) init];
  v39 = *((*v11 & *v2) + 0x190);
  type metadata accessor for InteractiveResizeBridge();
  v40 = swift_allocObject();
  *(v40 + 16) = 0;
  *(v40 + 20) = 0;
  *(v40 + 24) = 0;
  v168 = v39;
  *(v2 + v39) = v40;
  *(v2 + *((*v11 & *v2) + 0x198)) = 0;
  v41 = *((*v11 & *v2) + 0x1A0);
  *(v2 + v41) = [objc_allocWithZone(type metadata accessor for UILargeContentViewerInteractionBridge()) init];
  *(v2 + *((*v11 & *v2) + 0x1A8)) = 0;
  *(v2 + *((*v11 & *v2) + 0x1B0)) = 0;
  *(v2 + *((*v11 & *v2) + 0x1B8)) = 0;
  *(v2 + *((*v11 & *v2) + 0x1C0) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v11 & *v2) + 0x1C8)) = 0;
  v42 = v2 + *((*v11 & *v2) + 0x1D0);
  *v42 = 0;
  v42[8] = 0;
  *(v42 + 1) = xmmword_18CD76350;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v11 & *v2) + 0x1E0)) = 0;
  *(v2 + *((*v11 & *v2) + 0x1E8)) = 0;
  *(v2 + *((*v11 & *v2) + 0x1F0)) = 0;
  *(v2 + *((*v11 & *v2) + 0x1F8)) = 0;
  *(v2 + *((*v11 & *v2) + 0x200)) = 0;
  v43 = outlined init with copy of TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>(v178, v2 + *((*v11 & *v2) + 0x60), &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.rootViewIdentifier>>.0);
  MEMORY[0x18D00ABE0](v43);
  type metadata accessor for PlatformColorDefinition();
  type metadata accessor for UIKitPlatformColorDefinition();
  static PlatformSystemDefinition.uiKit.getter();
  static PlatformColorDefinition.setInternalDefinition(_:system:)();
  type metadata accessor for PlatformScrollEdgeEffectTagDefinition();
  type metadata accessor for ScrollEdgeEffectTagModifierDefinition();
  static PlatformScrollEdgeEffectTagDefinition.setDefinition(_:)();
  type metadata accessor for PlatformItemsDefinition();
  type metadata accessor for UIKitPlatformItemsDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  v44 = static PlatformItemsDefinition.setDefinition(_:system:)();
  (*(ObjectType + 1384))(&v188, v44);
  v45 = v188;
  type metadata accessor for PlatformViewDefinition();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
  if (!static PlatformViewDefinition.for (_:)())
  {
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  type metadata accessor for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>(0, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.rootViewIdentifier>>.0);
  LOBYTE(v186) = v45;
  type metadata accessor for ViewGraphHost();
  swift_allocObject();
  lazy protocol witness table accessor for type TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0> and conformance TestIDView<A, B>(&lazy protocol witness table cache variable for type TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0> and conformance TestIDView<A, B>, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.rootViewIdentifier>>.0);
  v46 = ViewGraphHost.init<A>(rootViewType:outputs:viewDefinition:)();
  v180 = *(v46 + 88);

  v47 = v175;
  v48 = UIHostingViewBase.Configuration.init()();
  v49 = v174;
  MEMORY[0x18D001BC0](v48);
  v50 = UIHostingViewBase.Configuration.options.modify();
  v51 = v173;
  specialized OptionSet<>.insert(_:)(v173, v49);
  v52 = *(v170 + 8);
  v53 = v49;
  v54 = v171;
  v52(v53, v171);
  v52(v51, v54);
  v55 = v50(&v188, 0);
  v56 = v47;
  if (((*(ObjectType + 1408))(v55) & 1) == 0)
  {
    v57 = v174;
    static UIHostingViewBase.Options.allowUnregisteredGeometryChanges.getter();
    ObjectType = UIHostingViewBase.Configuration.options.modify();
    v58 = v173;
    specialized OptionSet<>.insert(_:)(v173, v57);
    v52(v57, v54);
    v52(v58, v54);
    (ObjectType)(&v188, 0);
  }

  (*(v176 + 16))(v169, v56, v177);
  v59 = objc_allocWithZone(type metadata accessor for UIHostingViewBase());

  v173 = v46;
  v60 = UIHostingViewBase.init(viewGraph:configuration:)();
  v61 = MEMORY[0x1E69E7D40];
  *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x68)) = v60;
  v62 = v180;

  *&v188 = specialized FocusViewGraph.init(graph:)(v63);
  *(&v188 + 1) = v64;
  LOWORD(v189) = v65 & 0x101;
  BYTE2(v189) = v66 & 1;
  lazy protocol witness table accessor for type FocusViewGraph and conformance FocusViewGraph();
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type PlatformItemListViewGraph and conformance PlatformItemListViewGraph();
  *&v188 = 0;
  WORD4(v188) = 0;
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput();
  if (static UserDefaultKeyedFeature.isEnabled.getter())
  {
    v67 = *MEMORY[0x1E698D3F8];
    v186 = 0uLL;
    *v187 = v67;
    memset(&v187[8], 0, 64);
    *&v187[72] = v167;
    lazy protocol witness table accessor for type ViewGraphBridgePropertiesFeature and conformance ViewGraphBridgePropertiesFeature();
    ViewGraph.append<A>(feature:)();
    v191 = *&v187[32];
    v192 = *&v187[48];
    v193 = *&v187[64];
    v194 = *&v187[80];
    v188 = v186;
    v189 = *v187;
    v190 = *&v187[16];
    outlined destroy of ViewGraphBridgePropertiesFeature(&v188);
  }

  if (_UIUpdateAdaptiveRateNeeded())
  {
    type metadata accessor for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>(0, &lazy cache variable for type metadata for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>.EnableVFDFeature, type metadata accessor for _UIHostingView.EnableVFDFeature);
    lazy protocol witness table accessor for type _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph(&lazy protocol witness table cache variable for type _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature, &lazy cache variable for type metadata for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>.EnableVFDFeature, type metadata accessor for _UIHostingView.EnableVFDFeature);
    ViewGraph.append<A>(feature:)();
  }

  AccessibilityViewGraph.init(graph:)(v68, &v186);
  aBlock = v186;
  v200 = *v187;
  v201 = *&v187[16];
  v202 = *&v187[32];
  lazy protocol witness table accessor for type AccessibilityViewGraph and conformance AccessibilityViewGraph();
  ViewGraph.append<A>(feature:)();
  v188 = aBlock;
  v189 = v200;
  v190 = v201;
  *&v191 = v202;
  outlined destroy of AccessibilityViewGraph(&v188);
  v69 = *(v2 + v168);
  v70 = AGSubgraphGetCurrent();
  swift_beginAccess();

  AGSubgraphSetCurrent();
  LOBYTE(aBlock) = 0;
  v71 = Attribute.init<A>(body:value:flags:update:)();
  AGSubgraphSetCurrent();

  *&aBlock = v69;
  DWORD2(aBlock) = v71;
  lazy protocol witness table accessor for type InteractiveResizeChangeViewGraphFeature and conformance InteractiveResizeChangeViewGraphFeature();
  ViewGraph.append<A>(feature:)();

  v72 = MEMORY[0x1E69E7CC0];
  v73 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E7BindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(&v200 + 1) = &type metadata for HoverEventDispatcher;
  *&v201 = lazy protocol witness table accessor for type HoverEventDispatcher and conformance HoverEventDispatcher();
  *&aBlock = v73;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v200 + 1) = &type metadata for PencilDoubleTapEventDispatcher;
  *&v201 = lazy protocol witness table accessor for type PencilDoubleTapEventDispatcher and conformance PencilDoubleTapEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v200 + 1) = &type metadata for PencilSqueezeEventDispatcher;
  *&v201 = lazy protocol witness table accessor for type PencilSqueezeEventDispatcher and conformance PencilSqueezeEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v74 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_SayAC8KeyPressV7HandlerVGTt0g5Tf4g_n(v72);
  *(&v200 + 1) = &type metadata for KeyEventDispatcher;
  *&v201 = lazy protocol witness table accessor for type KeyEventDispatcher and conformance KeyEventDispatcher();
  *&aBlock = v74;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  type metadata accessor for UIKitEventBindingBridge();
  swift_allocObject();

  *(v2 + *((*v61 & *v2) + 0xE0)) = UIKitEventBindingBridge.init(eventBindingManager:)();
  type metadata accessor for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>(0, &lazy cache variable for type metadata for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>, type metadata accessor for _UIHostingView);
  v183.receiver = v2;
  v183.super_class = v75;
  v76 = objc_msgSendSuper2(&v183, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  swift_unknownObjectWeakInit();
  type metadata accessor for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>(0, &lazy cache variable for type metadata for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>.HostViewGraph, type metadata accessor for _UIHostingView.HostViewGraph);
  lazy protocol witness table accessor for type _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph(&lazy protocol witness table cache variable for type _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph, &lazy cache variable for type metadata for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>.HostViewGraph, type metadata accessor for _UIHostingView.HostViewGraph);
  v77 = v76;
  ViewGraph.append<A>(feature:)();
  v78 = sub_18C0B1D84(&aBlock);
  (*((*v61 & *v77) + 0x5C0))(v78);
  v79 = specialized _UIHostingView.base.getter();
  UIHostingViewBase.setUp()();

  static RepresentableContextValues.current.getter();
  v80 = aBlock;
  ObjectType = v76;
  if (aBlock != 1)
  {
    v81 = *(&aBlock + 1);
    v82 = v200;
    v83 = v201;
    if (aBlock)
    {

      specialized ViewRendererHost.setPreferenceBridge(_:)(v84);
    }

    *&aBlock = v80;
    *(&aBlock + 1) = v81;
    v200 = v82;
    LOBYTE(v201) = v83 & 1;
    RepresentableContextValues.environment.getter();
    v197 = v198;
    UIHostingViewBase.initialInheritedEnvironment.setter();
    outlined consume of RepresentableContextValues?(v80, v81, v82, *(&v82 + 1), v83);
    v62 = v180;
  }

  specialized _UIHostingView.feedbackCache.getter();
  swift_unknownObjectWeakAssign();
  v85 = v77;

  v86 = *(v85 + *((*v61 & *v85) + 0x150));
  v87 = lazy protocol witness table accessor for type _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph(&lazy protocol witness table cache variable for type _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>> and conformance _UIHostingView<A>, &lazy cache variable for type metadata for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>, type metadata accessor for _UIHostingView);
  *(v86 + 40) = v87;
  swift_unknownObjectWeakAssign();

  UIKitStatusBarBridge.addPreferences(to:)();

  v174 = *((*v61 & *v85) + 0x188);
  *(*&v174[v85] + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host + 8) = v87;
  swift_unknownObjectWeakAssign();
  v88 = *(v85 + *((*v61 & *v85) + 0x100));
  *(v88 + *((*v88 & *v61) + 0x60) + 8) = v87;
  swift_unknownObjectWeakAssign();

  GraphHost.addPreference<A>(_:)();
  v89 = *(v85 + *((*v61 & *v85) + 0x108));
  *(v89 + *((*v89 & *v61) + 0x60) + 8) = v87;
  swift_unknownObjectWeakAssign();

  GraphHost.addPreference<A>(_:)();
  v90 = specialized _UIHostingView.sheetBridge.getter();
  if (v90)
  {
    *&v90[direct field offset for SheetBridge.host + 8] = v87;
    v91 = v90;
    swift_unknownObjectWeakAssign();
  }

  v92 = *v61 & *v85;
  v93 = *(v85 + *(v92 + 0x110));
  if (v93)
  {
    v94 = *((*v93 & *v61) + 0x210);
    v95 = v93;
    v94(v62);
    outlined consume of SheetBridge<SheetPreference.Key>??(v93);
    v92 = *v61 & *v85;
  }

  v96 = *(v85 + *(v92 + 280));
  v97 = lazy protocol witness table accessor for type _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph(&lazy protocol witness table cache variable for type _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>> and conformance _UIHostingView<A>, &lazy cache variable for type metadata for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>, type metadata accessor for _UIHostingView);
  *(v96 + 32) = &protocol witness table for _UIHostingView<A>;
  *(v96 + 40) = v97;
  swift_unknownObjectWeakAssign();

  v98 = FocusBridge.host.getter();
  if (v98)
  {
    v100 = v98;
    v101 = v99;
    v102 = swift_getObjectType();
    (*(*(*(v101 + 8) + 8) + 8))(v102);

    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v103 = *((*v61 & *v85) + 0x120);
  *(*(v85 + v103) + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host + 8) = v87;
  swift_unknownObjectWeakAssign();
  v104 = *(v85 + v103);
  v105 = &v104[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_45;
  }

  v106 = *(v105 + 1);
  v107 = swift_getObjectType();
  v108 = *(*(v106 + 16) + 8);
  v109 = v104;
  LOBYTE(v107) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v107, v108);
  swift_unknownObjectRelease();
  if (v107)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  GraphHost.addPreference<A>(_:)();
  *(*(v85 + *((*v61 & *v85) + 0x130)) + OBJC_IVAR____TtC7SwiftUI13TooltipBridge_host + 8) = v87;
  swift_unknownObjectWeakAssign();
  v110 = v85;
  GraphHost.addPreference<A>(_:)();
  *(*(v110 + *((*v61 & *v110) + 0x138)) + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_host + 8) = v87;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  GraphHost.addPreference<A>(_:)();
  *(*(v110 + *((*v61 & *v110) + 0x170)) + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_host + 8) = v87;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  v111 = *((*v61 & *v110) + 0x168);
  *(*(v110 + v111) + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host + 8) = v87;
  swift_unknownObjectWeakAssign();

  v112 = *(v110 + v111);
  v113 = &v112[OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_46;
  }

  v114 = *(v113 + 1);
  v115 = swift_getObjectType();
  v116 = *(v114 + 8);
  v117 = *(v116 + 8);
  v118 = v112;
  v117(v115, v116);
  swift_unknownObjectRelease();
  GraphHost.addPreference<A>(_:)();

  v119 = [v110 traitCollection];

  v120 = [v119 userInterfaceIdiom];
  v121 = MEMORY[0x1E69E7D40];
  if (v120 == 1 || (v122 = [v110 traitCollection], v123 = objc_msgSend(v122, sel_userInterfaceIdiom), v122, v123 == 6))
  {
    v124 = [objc_allocWithZone(type metadata accessor for PointerBridge()) init];
    *&v124[OBJC_IVAR____TtC7SwiftUI13PointerBridge_host + 8] = v87;
    swift_unknownObjectWeakAssign();
    GraphHost.addPreference<A>(_:)();
    v125 = *((*v121 & *v110) + 0x178);
    v126 = *(v110 + v125);
    *(v110 + v125) = v124;
  }

  v127 = *&v174[v85];
  v128 = &v127[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
LABEL_47:
    __break(1u);
  }

  v129 = *(v128 + 1);
  v130 = swift_getObjectType();
  v131 = *(*(v129 + 16) + 8);
  v132 = v127;
  LOBYTE(v130) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v130, v131);
  swift_unknownObjectRelease();
  v133 = v180;
  if (v130)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v134 = *((*v121 & *v110) + 0x1A0);
  *(*(v110 + v134) + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_host + 8) = v87;
  v135 = swift_unknownObjectWeakAssign();
  v136 = *(v110 + v134);
  MEMORY[0x1EEE9AC00](v135);
  *(&v167 - 2) = v136;
  *(&v167 - 1) = v133;
  v137 = v110;
  v138 = v136;
  static Update.ensure<A>(_:)();

  v139 = *((*v121 & *v137) + 0x78);
  v140 = *(v137 + v139);
  v141 = lazy protocol witness table accessor for type _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph(&lazy protocol witness table cache variable for type _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>> and conformance _UIHostingView<A>, &lazy cache variable for type metadata for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>, type metadata accessor for _UIHostingView);
  swift_beginAccess();
  *(v140 + 24) = v141;
  swift_unknownObjectWeakAssign();

  v142 = *(v137 + v139);
  v143 = *((*v121 & *v137) + 0xE0);
  swift_beginAccess();
  *(v142 + 40) = MEMORY[0x1E697F3C8];
  swift_unknownObjectWeakAssign();
  v144 = *(v137 + v143);
  v145 = *(v144 + 32);

  if (v145)
  {
    [v137 addGestureRecognizer_];
  }

  [v137 addGestureRecognizer_];

  specialized _UIHostingView.legacySetupKeyboardAvoidanceNotifications()();
  if (isAppleInternalBuild()())
  {
    v146 = [v137 window];
    if (v146)
    {
      v147 = v146;
      v148 = [v146 rootViewController];

      if (v148)
      {
        v149 = [v148 viewIfLoaded];

        if (v149)
        {

          if (v149 == v137)
          {
            v195 = 0;
            v182[0] = 0;
            v150 = getpid();
            LODWORD(v174) = v150;
            *&aBlock = 0;
            *(&aBlock + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(16);

            strcpy(&aBlock, "NameLayerTree-");
            HIBYTE(aBlock) = -18;
            v181 = v150;
            v151 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x18D00C9B0](v151);

            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
            v152 = static OS_dispatch_queue.main.getter();
            v153 = swift_allocObject();
            swift_unknownObjectWeakInit();
            *&v201 = partial apply for specialized closure #1 in _UIHostingView.init(rootView:);
            *(&v201 + 1) = v153;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v200 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v200 + 1) = &block_descriptor_240;
            v154 = _Block_copy(&aBlock);

            v155 = String.utf8CString.getter();

            notify_register_dispatch((v155 + 32), &v195, v152, v154);

            _Block_release(v154);

            v156 = static OS_dispatch_queue.main.getter();
            v157 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v158 = swift_allocObject();
            *(v158 + 16) = v174;
            *(v158 + 24) = v157;
            *&v201 = partial apply for specialized closure #2 in _UIHostingView.init(rootView:);
            *(&v201 + 1) = v158;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v200 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v200 + 1) = &block_descriptor_247;
            v159 = _Block_copy(&aBlock);

            notify_register_dispatch("NameLayerTree", v182, v156, v159);
            _Block_release(v159);

            v160 = v137 + *((*v121 & *v137) + 0xE8);
            *v160 = v195 | (v182[0] << 32);
            v160[8] = 0;
          }
        }
      }
    }
  }

  v161 = [objc_opt_self() defaultCenter];
  [v161 addObserver:v137 selector:sel_accessibilityFocusedElementDidChange_ name:*MEMORY[0x1E69DD8C0] object:0];
  v162 = one-time initialization token for didUpdateListLayout;
  v163 = v137;
  if (v162 != -1)
  {
    swift_once();
  }

  [v161 addObserver:v163 selector:sel_clarityUISettingDidChange_ name:static ClarityUI.didUpdateListLayout object:0];

  v164 = v175;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v196 = 0;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(&v195, v163);
  swift_endAccess();
  if (static Spacing.hasSetupDefaultValue == 1)
  {
    (*(v176 + 8))(v164, v177);
  }

  else
  {
    static Spacing.hasSetupDefaultValue = 1;

    (*(v176 + 8))(v164, v177);
  }

  v165 = v178;
  static Update.end()();
  outlined destroy of TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>(v165, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.rootViewIdentifier>>.0);
  return v163;
}

{
  v2 = v1;
  v209 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v186 = type metadata accessor for UIHostingViewBase.Options();
  v178 = *(v186 - 8);
  MEMORY[0x1EEE9AC00](v186);
  v180 = &v173 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v185 = &v173 - v7;
  v8 = type metadata accessor for UIHostingViewBase.Configuration();
  v182 = *(v8 - 8);
  v183 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v177 = &v173 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v184 = &v173 - v11;
  v12 = MEMORY[0x1E69E7D40];
  *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x70)) = 0;
  v13 = *((*v12 & *v1) + 0x78);
  type metadata accessor for EventBindingManager();
  v14 = EventBindingManager.__allocating_init()();
  v179 = v13;
  *(v1 + v13) = v14;
  *(v1 + *((*v12 & *v1) + 0x80)) = 0;
  *(v1 + *((*v12 & *v1) + 0x88)) = 0;
  *(v1 + *((*v12 & *v1) + 0x90)) = 1;
  *(v1 + *((*v12 & *v1) + 0x98)) = 0;
  *(v1 + *((*v12 & *v1) + 0xA0)) = 0;
  v15 = v2 + *((*v12 & *v2) + 0xA8);
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v15[32] = 1;
  v16 = v2 + *((*v12 & *v2) + 0xB0);
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v16[32] = 1;
  *(v1 + *((*v12 & *v1) + 0xB8)) = 0;
  *(v1 + *((*v12 & *v1) + 0xC0)) = 0;
  *(v1 + *((*v12 & *v1) + 0xC8)) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + *((*v12 & *v1) + 0xD8)) = 0;
  v17 = v2 + *((*v12 & *v2) + 0xE8);
  *v17 = 0;
  v17[8] = 1;
  *(v1 + *((*v12 & *v1) + 0xF0)) = 0;
  *(v1 + *((*v12 & *v1) + 0xF8)) = 2;
  v18 = *((*v12 & *v1) + 0x100);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<Alert.Presentation>, &type metadata for Alert.Presentation, &protocol witness table for Alert.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v20 = v19;
  v21 = objc_allocWithZone(v19);
  *(v21 + *((*v12 & *v21) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v21 + *((*v12 & *v21) + 0x68)) = 0;
  *(v21 + *((*v12 & *v21) + 0x70)) = 0;
  *(v21 + *((*v12 & *v21) + 0x78)) = 0;
  EnvironmentValues.init()();
  v22 = v21 + *((*v12 & *v21) + 0x88);
  *v22 = 0u;
  *(v22 + 1) = 0u;
  *(v22 + 2) = 0u;
  *(v22 + 3) = 0u;
  *(v22 + 4) = 0u;
  *(v22 + 5) = 0u;
  *(v22 + 6) = 0u;
  *(v22 + 7) = 0u;
  *(v22 + 8) = 0u;
  *(v22 + 9) = 0u;
  *(v22 + 10) = 0u;
  *(v22 + 11) = 0u;
  *(v22 + 12) = 0u;
  *(v22 + 13) = 0u;
  *(v22 + 14) = 0u;
  *(v22 + 15) = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 34) = 0;
  *(v21 + *((*v12 & *v21) + 0x90)) = 0;
  *(v21 + *((*v12 & *v21) + 0x98)) = 1;
  v191.receiver = v21;
  v191.super_class = v20;
  *(v1 + v18) = objc_msgSendSuper2(&v191, sel_init);
  v23 = *((*v12 & *v1) + 0x108);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<ActionSheet.Presentation>, &type metadata for ActionSheet.Presentation, &protocol witness table for ActionSheet.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v25 = v24;
  v26 = objc_allocWithZone(v24);
  *(v26 + *((*v12 & *v26) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v26 + *((*v12 & *v26) + 0x68)) = 0;
  *(v26 + *((*v12 & *v26) + 0x70)) = 0;
  *(v26 + *((*v12 & *v26) + 0x78)) = 0;
  EnvironmentValues.init()();
  v27 = v26 + *((*v12 & *v26) + 0x88);
  *v27 = 0u;
  *(v27 + 1) = 0u;
  *(v27 + 2) = 0u;
  *(v27 + 3) = 0u;
  *(v27 + 4) = 0u;
  *(v27 + 5) = 0u;
  *(v27 + 6) = 0u;
  *(v27 + 7) = 0u;
  *(v27 + 8) = 0u;
  *(v27 + 9) = 0u;
  *(v27 + 20) = 0;
  *(v26 + *((*v12 & *v26) + 0x90)) = 0;
  *(v26 + *((*v12 & *v26) + 0x98)) = 0;
  v190.receiver = v26;
  v190.super_class = v25;
  *(v2 + v23) = objc_msgSendSuper2(&v190, sel_init);
  *(v2 + *((*v12 & *v2) + 0x110)) = 1;
  v28 = *((*v12 & *v2) + 0x118);
  type metadata accessor for FocusBridge();
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 32) = 0;
  *(v29 + 40) = 0;
  swift_unknownObjectWeakInit();
  v30 = MEMORY[0x1E69E7CC0];
  v31 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI12PropertyListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v29 + 48) = 0;
  *(v29 + 56) = v30;
  *(v29 + 64) = v31;
  EnvironmentValues.init()();
  *(v29 + 120) = 0u;
  *(v29 + 104) = 0u;
  *(v29 + 88) = 0u;
  v173 = xmmword_18CD6A6D0;
  *(v29 + 136) = xmmword_18CD6A6D0;
  swift_weakInit();
  *(v29 + 160) = 0;
  *(v29 + 168) = 0;
  *(v29 + 176) = 1;
  *(v2 + v28) = v29;
  v32 = *((*v12 & *v2) + 0x120);
  *(v2 + v32) = [objc_allocWithZone(type metadata accessor for DragAndDropBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x128)) = 0;
  v33 = *((*v12 & *v2) + 0x130);
  *(v2 + v33) = [objc_allocWithZone(type metadata accessor for TooltipBridge()) init];
  v34 = *((*v12 & *v2) + 0x138);
  *(v2 + v34) = [objc_allocWithZone(type metadata accessor for EditMenuBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x140)) = 0;
  *(v2 + *((*v12 & *v2) + 0x148)) = 0;
  v35 = *((*v12 & *v2) + 0x150);
  type metadata accessor for UIKitStatusBarBridge();
  v36 = swift_allocObject();
  *(v36 + 16) = 514;
  *(v36 + 24) = v30;
  *(v36 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + v35) = v36;
  swift_weakInit();
  *(v2 + *((*v12 & *v2) + 0x160)) = 0;
  v37 = *((*v12 & *v2) + 0x168);
  *(v2 + v37) = [objc_allocWithZone(type metadata accessor for AVKitCaptureButtonBridge()) init];
  v38 = *((*v12 & *v2) + 0x170);
  *(v2 + v38) = [objc_allocWithZone(type metadata accessor for PencilEventsBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x178)) = 0;
  *(v2 + *((*v12 & *v2) + 0x180)) = 0;
  v39 = *((*v12 & *v2) + 0x188);
  *(v2 + v39) = [objc_allocWithZone(type metadata accessor for ContextMenuBridge()) init];
  v40 = *((*v12 & *v2) + 0x190);
  type metadata accessor for InteractiveResizeBridge();
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 20) = 0;
  *(v41 + 24) = 0;
  v175 = v40;
  *(v2 + v40) = v41;
  *(v2 + *((*v12 & *v2) + 0x198)) = 0;
  v42 = *((*v12 & *v2) + 0x1A0);
  *(v2 + v42) = [objc_allocWithZone(type metadata accessor for UILargeContentViewerInteractionBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x1A8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1B0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1B8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1C0) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v12 & *v2) + 0x1C8)) = 0;
  v43 = v2 + *((*v12 & *v2) + 0x1D0);
  *v43 = 0;
  v43[8] = 0;
  *(v43 + 1) = xmmword_18CD76350;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v12 & *v2) + 0x1E0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1E8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1F0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1F8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x200)) = 0;
  v44 = v2 + *((*v12 & *v2) + 0x60);
  v174 = a1;
  v45 = outlined init with copy of ModifiedContent<TableRowView, CollectionViewCellModifier>(a1, v44, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, ListTableCellModifier>, MEMORY[0x1E697D9F0], &type metadata for ListTableCellModifier);
  MEMORY[0x18D00ABE0](v45);
  type metadata accessor for PlatformColorDefinition();
  type metadata accessor for UIKitPlatformColorDefinition();
  static PlatformSystemDefinition.uiKit.getter();
  static PlatformColorDefinition.setInternalDefinition(_:system:)();
  type metadata accessor for PlatformScrollEdgeEffectTagDefinition();
  type metadata accessor for ScrollEdgeEffectTagModifierDefinition();
  static PlatformScrollEdgeEffectTagDefinition.setDefinition(_:)();
  type metadata accessor for PlatformItemsDefinition();
  type metadata accessor for UIKitPlatformItemsDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  v46 = static PlatformItemsDefinition.setDefinition(_:system:)();
  v47 = *(ObjectType + 1384);
  v176 = ObjectType;
  v47(&v194, v46);
  v48 = v194;
  type metadata accessor for PlatformViewDefinition();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
  if (!static PlatformViewDefinition.for (_:)())
  {
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, ListTableCellModifier>, MEMORY[0x1E697D9F0], &type metadata for ListTableCellModifier, MEMORY[0x1E697E830]);
  LOBYTE(v192) = v48;
  type metadata accessor for ViewGraphHost();
  swift_allocObject();
  lazy protocol witness table accessor for type ModifiedContent<_ViewList_View, CollectionViewCellModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<_ViewList_View, ListTableCellModifier> and conformance <> ModifiedContent<A, B>, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, ListTableCellModifier>, &type metadata for ListTableCellModifier, lazy protocol witness table accessor for type ListTableCellModifier and conformance ListTableCellModifier);
  v181 = ViewGraphHost.init<A>(rootViewType:outputs:viewDefinition:)();
  v49 = *(v181 + 88);

  v50 = v184;
  v51 = UIHostingViewBase.Configuration.init()();
  v52 = v180;
  MEMORY[0x18D001BC0](v51);
  v53 = UIHostingViewBase.Configuration.options.modify();
  v54 = v185;
  specialized OptionSet<>.insert(_:)(v185, v52);
  v55 = *(v178 + 8);
  v56 = v186;
  v55(v52, v186);
  v55(v54, v56);
  v57 = v53(&v194, 0);
  v58 = v50;
  if (((*(v176 + 1408))(v57) & 1) == 0)
  {
    v59 = v180;
    static UIHostingViewBase.Options.allowUnregisteredGeometryChanges.getter();
    v60 = UIHostingViewBase.Configuration.options.modify();
    v61 = v58;
    v62 = v185;
    specialized OptionSet<>.insert(_:)(v185, v59);
    v63 = v186;
    v55(v59, v186);
    v64 = v62;
    v58 = v61;
    v55(v64, v63);
    v60(&v194, 0);
  }

  (*(v182 + 16))(v177, v58, v183);
  v65 = objc_allocWithZone(type metadata accessor for UIHostingViewBase());

  v66 = UIHostingViewBase.init(viewGraph:configuration:)();
  v67 = MEMORY[0x1E69E7D40];
  *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x68)) = v66;

  *&v194 = specialized FocusViewGraph.init(graph:)(v68);
  *(&v194 + 1) = v69;
  LOWORD(v195) = v70 & 0x101;
  BYTE2(v195) = v71 & 1;
  lazy protocol witness table accessor for type FocusViewGraph and conformance FocusViewGraph();
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type PlatformItemListViewGraph and conformance PlatformItemListViewGraph();
  *&v194 = 0;
  WORD4(v194) = 0;
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput();
  if (static UserDefaultKeyedFeature.isEnabled.getter())
  {
    v72 = *MEMORY[0x1E698D3F8];
    v192 = 0uLL;
    *v193 = v72;
    memset(&v193[8], 0, 64);
    *&v193[72] = v173;
    lazy protocol witness table accessor for type ViewGraphBridgePropertiesFeature and conformance ViewGraphBridgePropertiesFeature();
    ViewGraph.append<A>(feature:)();
    v197 = *&v193[32];
    v198 = *&v193[48];
    v199 = *&v193[64];
    v200 = *&v193[80];
    v194 = v192;
    v195 = *v193;
    v196 = *&v193[16];
    outlined destroy of ViewGraphBridgePropertiesFeature(&v194);
  }

  if (_UIUpdateAdaptiveRateNeeded())
  {
    type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>.EnableVFDFeature();
    lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature, type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>.EnableVFDFeature);
    ViewGraph.append<A>(feature:)();
  }

  AccessibilityViewGraph.init(graph:)(v73, &v192);
  aBlock = v192;
  v206 = *v193;
  v207 = *&v193[16];
  v208 = *&v193[32];
  lazy protocol witness table accessor for type AccessibilityViewGraph and conformance AccessibilityViewGraph();
  ViewGraph.append<A>(feature:)();
  v194 = aBlock;
  v195 = v206;
  v196 = v207;
  *&v197 = v208;
  outlined destroy of AccessibilityViewGraph(&v194);
  v74 = *(v2 + v175);
  v75 = AGSubgraphGetCurrent();
  swift_beginAccess();

  AGSubgraphSetCurrent();
  LOBYTE(aBlock) = 0;
  v76 = Attribute.init<A>(body:value:flags:update:)();
  AGSubgraphSetCurrent();

  *&aBlock = v74;
  DWORD2(aBlock) = v76;
  lazy protocol witness table accessor for type InteractiveResizeChangeViewGraphFeature and conformance InteractiveResizeChangeViewGraphFeature();
  ViewGraph.append<A>(feature:)();

  v77 = MEMORY[0x1E69E7CC0];
  v78 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E7BindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(&v206 + 1) = &type metadata for HoverEventDispatcher;
  *&v207 = lazy protocol witness table accessor for type HoverEventDispatcher and conformance HoverEventDispatcher();
  *&aBlock = v78;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v206 + 1) = &type metadata for PencilDoubleTapEventDispatcher;
  *&v207 = lazy protocol witness table accessor for type PencilDoubleTapEventDispatcher and conformance PencilDoubleTapEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v206 + 1) = &type metadata for PencilSqueezeEventDispatcher;
  *&v207 = lazy protocol witness table accessor for type PencilSqueezeEventDispatcher and conformance PencilSqueezeEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v79 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_SayAC8KeyPressV7HandlerVGTt0g5Tf4g_n(v77);
  *(&v206 + 1) = &type metadata for KeyEventDispatcher;
  *&v207 = lazy protocol witness table accessor for type KeyEventDispatcher and conformance KeyEventDispatcher();
  *&aBlock = v79;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  type metadata accessor for UIKitEventBindingBridge();
  swift_allocObject();

  *(v2 + *((*v67 & *v2) + 0xE0)) = UIKitEventBindingBridge.init(eventBindingManager:)();
  type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>();
  v189.receiver = v2;
  v189.super_class = v80;
  v81 = objc_msgSendSuper2(&v189, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  swift_unknownObjectWeakInit();
  type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>.HostViewGraph();
  lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph, type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>.HostViewGraph);
  v82 = v81;
  ViewGraph.append<A>(feature:)();
  v83 = outlined destroy of _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>.HostViewGraph(&aBlock, type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>.HostViewGraph);
  (*((*v67 & *v82) + 0x5C0))(v83);
  v84 = specialized _UIHostingView.base.getter();
  UIHostingViewBase.setUp()();

  static RepresentableContextValues.current.getter();
  v85 = aBlock;
  v185 = v49;
  v186 = v81;
  if (aBlock != 1)
  {
    v86 = *(&aBlock + 1);
    v87 = v206;
    v88 = v207;
    if (aBlock)
    {

      specialized ViewRendererHost.setPreferenceBridge(_:)(v89);
    }

    *&aBlock = v85;
    *(&aBlock + 1) = v86;
    v206 = v87;
    LOBYTE(v207) = v88 & 1;
    RepresentableContextValues.environment.getter();
    v203 = v204;
    UIHostingViewBase.initialInheritedEnvironment.setter();
    outlined consume of RepresentableContextValues?(v85, v86, v87, *(&v87 + 1), v88);
    v49 = v185;
  }

  specialized _UIHostingView.feedbackCache.getter();
  swift_unknownObjectWeakAssign();
  v90 = v82;

  v91 = *(v90 + *((*v67 & *v90) + 0x150));
  v92 = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>);
  *(v91 + 40) = v92;
  swift_unknownObjectWeakAssign();

  UIKitStatusBarBridge.addPreferences(to:)();

  v180 = *((*v67 & *v90) + 0x188);
  *(*&v180[v90] + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host + 8) = v92;
  swift_unknownObjectWeakAssign();
  v93 = *(v90 + *((*v67 & *v90) + 0x100));
  *(v93 + *((*v93 & *v67) + 0x60) + 8) = v92;
  swift_unknownObjectWeakAssign();

  GraphHost.addPreference<A>(_:)();
  v94 = *(v90 + *((*v67 & *v90) + 0x108));
  *(v94 + *((*v94 & *v67) + 0x60) + 8) = v92;
  swift_unknownObjectWeakAssign();

  GraphHost.addPreference<A>(_:)();
  v95 = specialized _UIHostingView.sheetBridge.getter();
  if (v95)
  {
    *&v95[direct field offset for SheetBridge.host + 8] = v92;
    v96 = v95;
    swift_unknownObjectWeakAssign();
  }

  v97 = *v67 & *v90;
  v98 = *(v90 + *(v97 + 0x110));
  if (v98)
  {
    v99 = *((*v98 & *v67) + 0x210);
    v100 = v98;
    v99(v49);
    outlined consume of SheetBridge<SheetPreference.Key>??(v98);
    v97 = *v67 & *v90;
  }

  v101 = *(v90 + *(v97 + 280));
  v102 = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>);
  *(v101 + 32) = &protocol witness table for _UIHostingView<A>;
  *(v101 + 40) = v102;
  swift_unknownObjectWeakAssign();

  v103 = FocusBridge.host.getter();
  if (v103)
  {
    v105 = v103;
    v106 = v104;
    v107 = swift_getObjectType();
    (*(*(*(v106 + 8) + 8) + 8))(v107);

    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v108 = *((*v67 & *v90) + 0x120);
  *(*(v90 + v108) + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host + 8) = v92;
  swift_unknownObjectWeakAssign();
  v109 = *(v90 + v108);
  v110 = &v109[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_45;
  }

  v111 = *(v110 + 1);
  v112 = swift_getObjectType();
  v113 = *(*(v111 + 16) + 8);
  v114 = v109;
  LOBYTE(v112) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v112, v113);
  swift_unknownObjectRelease();
  if (v112)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  GraphHost.addPreference<A>(_:)();
  *(*(v90 + *((*v67 & *v90) + 0x130)) + OBJC_IVAR____TtC7SwiftUI13TooltipBridge_host + 8) = v92;
  swift_unknownObjectWeakAssign();
  v115 = v90;
  GraphHost.addPreference<A>(_:)();
  *(*(v115 + *((*v67 & *v115) + 0x138)) + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_host + 8) = v92;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  GraphHost.addPreference<A>(_:)();
  *(*(v115 + *((*v67 & *v115) + 0x170)) + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_host + 8) = v92;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  v116 = *((*v67 & *v115) + 0x168);
  *(*(v115 + v116) + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host + 8) = v92;
  swift_unknownObjectWeakAssign();

  v117 = *(v115 + v116);
  v118 = &v117[OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_46;
  }

  v119 = *(v118 + 1);
  v120 = swift_getObjectType();
  v121 = *(v119 + 8);
  v122 = *(v121 + 8);
  v123 = v117;
  v122(v120, v121);
  swift_unknownObjectRelease();
  GraphHost.addPreference<A>(_:)();

  v124 = [v115 traitCollection];

  v125 = [v124 userInterfaceIdiom];
  v126 = MEMORY[0x1E69E7D40];
  if (v125 == 1 || (v127 = [v115 traitCollection], v128 = objc_msgSend(v127, sel_userInterfaceIdiom), v127, v128 == 6))
  {
    v129 = [objc_allocWithZone(type metadata accessor for PointerBridge()) init];
    *&v129[OBJC_IVAR____TtC7SwiftUI13PointerBridge_host + 8] = v92;
    swift_unknownObjectWeakAssign();
    GraphHost.addPreference<A>(_:)();
    v130 = *((*v126 & *v115) + 0x178);
    v131 = *(v115 + v130);
    *(v115 + v130) = v129;
  }

  v132 = *&v180[v90];
  v133 = &v132[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host];
  Strong = swift_unknownObjectWeakLoadStrong();
  v135 = v184;
  if (!Strong)
  {
LABEL_47:
    __break(1u);
  }

  v136 = *(v133 + 1);
  v137 = swift_getObjectType();
  v138 = *(*(v136 + 16) + 8);
  v139 = v132;
  LOBYTE(v137) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v137, v138);
  swift_unknownObjectRelease();
  v140 = v185;
  if (v137)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v141 = *((*v126 & *v115) + 0x1A0);
  *(*(v115 + v141) + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_host + 8) = v92;
  v142 = swift_unknownObjectWeakAssign();
  v143 = *(v115 + v141);
  MEMORY[0x1EEE9AC00](v142);
  *(&v173 - 2) = v143;
  *(&v173 - 1) = v140;
  v144 = v115;
  v145 = v143;
  static Update.ensure<A>(_:)();

  v146 = *((*v126 & *v144) + 0x78);
  v147 = *(v144 + v146);
  v148 = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>);
  swift_beginAccess();
  *(v147 + 24) = v148;
  swift_unknownObjectWeakAssign();

  v149 = *(v144 + v146);
  v150 = *((*v126 & *v144) + 0xE0);
  swift_beginAccess();
  *(v149 + 40) = MEMORY[0x1E697F3C8];
  swift_unknownObjectWeakAssign();
  v151 = *(v144 + v150);
  v152 = *(v151 + 32);

  if (v152)
  {
    [v144 addGestureRecognizer_];
  }

  [v144 addGestureRecognizer_];

  specialized _UIHostingView.legacySetupKeyboardAvoidanceNotifications()();
  if (isAppleInternalBuild()())
  {
    v153 = [v144 window];
    if (v153)
    {
      v154 = v153;
      v155 = [v153 rootViewController];

      if (v155)
      {
        v156 = [v155 viewIfLoaded];

        if (v156)
        {

          if (v156 == v144)
          {
            v201 = 0;
            v188[0] = 0;
            v157 = getpid();
            LODWORD(v180) = v157;
            *&aBlock = 0;
            *(&aBlock + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(16);

            strcpy(&aBlock, "NameLayerTree-");
            HIBYTE(aBlock) = -18;
            v187 = v157;
            v158 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x18D00C9B0](v158);

            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
            v159 = static OS_dispatch_queue.main.getter();
            v160 = swift_allocObject();
            swift_unknownObjectWeakInit();
            *&v207 = partial apply for specialized closure #1 in _UIHostingView.init(rootView:);
            *(&v207 + 1) = v160;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v206 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v206 + 1) = &block_descriptor_298;
            v161 = _Block_copy(&aBlock);

            v162 = String.utf8CString.getter();

            notify_register_dispatch((v162 + 32), &v201, v159, v161);

            _Block_release(v161);

            v163 = static OS_dispatch_queue.main.getter();
            v164 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v165 = swift_allocObject();
            *(v165 + 16) = v180;
            *(v165 + 24) = v164;
            *&v207 = partial apply for specialized closure #2 in _UIHostingView.init(rootView:);
            *(&v207 + 1) = v165;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v206 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v206 + 1) = &block_descriptor_305;
            v166 = _Block_copy(&aBlock);

            notify_register_dispatch("NameLayerTree", v188, v163, v166);
            _Block_release(v166);

            v167 = v144 + *((*v126 & *v144) + 0xE8);
            *v167 = v201 | (v188[0] << 32);
            v167[8] = 0;
          }
        }
      }
    }
  }

  v168 = [objc_opt_self() defaultCenter];
  [v168 addObserver:v144 selector:sel_accessibilityFocusedElementDidChange_ name:*MEMORY[0x1E69DD8C0] object:0];
  v169 = one-time initialization token for didUpdateListLayout;
  v170 = v144;
  if (v169 != -1)
  {
    swift_once();
  }

  [v168 addObserver:v170 selector:sel_clarityUISettingDidChange_ name:static ClarityUI.didUpdateListLayout object:0];

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v202 = 0;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(&v201, v170);
  swift_endAccess();
  if (static Spacing.hasSetupDefaultValue == 1)
  {
    (*(v182 + 8))(v135, v183);
  }

  else
  {
    static Spacing.hasSetupDefaultValue = 1;

    (*(v182 + 8))(v135, v183);
  }

  v171 = v174;
  static Update.end()();
  outlined destroy of ModifiedContent<_ViewList_View, ListTableCellModifier>(v171);
  return v170;
}

{
  return specialized _UIHostingView.init(rootView:)(a1, type metadata accessor for ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>, type metadata accessor for ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for _UIHostingView<ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>>.EnableVFDFeature, &lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature, type metadata accessor for _UIHostingView<ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>>.EnableVFDFeature, type metadata accessor for _UIHostingView<ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>>, type metadata accessor for _UIHostingView<ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>>.HostViewGraph, &lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph, type metadata accessor for _UIHostingView<ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>>.HostViewGraph, type metadata accessor for _UIHostingView<ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>>.HostViewGraph, specialized _UIHostingView.base.getter, &lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>>, &lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>> and conformance _UIHostingView<A>, closure #1 in UILargeContentViewerInteractionBridge.updateRequestedPreferences(for:)partial apply, &lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>> and conformance _UIHostingView<A>, &unk_1EFF9D958, partial apply for specialized closure #1 in _UIHostingView.init(rootView:), &block_descriptor_155, qword_1EFF9D9A8, partial apply for specialized closure #2 in _UIHostingView.init(rootView:), &block_descriptor_162, type metadata accessor for ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>);
}

{
  return specialized _UIHostingView.init(rootView:)(a1, type metadata accessor for ModifiedContent<AnyView, DocumentBaseModifier>, type metadata accessor for ModifiedContent<AnyView, DocumentBaseModifier>, lazy protocol witness table accessor for type ModifiedContent<AnyView, DocumentBaseModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for _UIHostingView<ModifiedContent<AnyView, DocumentBaseModifier>>.EnableVFDFeature, &lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<AnyView, DocumentBaseModifier>>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature, type metadata accessor for _UIHostingView<ModifiedContent<AnyView, DocumentBaseModifier>>.EnableVFDFeature, type metadata accessor for _UIHostingView<ModifiedContent<AnyView, DocumentBaseModifier>>, type metadata accessor for _UIHostingView<ModifiedContent<AnyView, DocumentBaseModifier>>.HostViewGraph, &lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<AnyView, DocumentBaseModifier>>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph, type metadata accessor for _UIHostingView<ModifiedContent<AnyView, DocumentBaseModifier>>.HostViewGraph, type metadata accessor for _UIHostingView<ModifiedContent<AnyView, DocumentBaseModifier>>.HostViewGraph, specialized _UIHostingView.base.getter, &lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<AnyView, DocumentBaseModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<AnyView, DocumentBaseModifier>>, &lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<AnyView, DocumentBaseModifier>> and conformance _UIHostingView<A>, closure #1 in UILargeContentViewerInteractionBridge.updateRequestedPreferences(for:)partial apply, &lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<AnyView, DocumentBaseModifier>> and conformance _UIHostingView<A>, &unk_1EFF9D598, partial apply for specialized closure #1 in _UIHostingView.init(rootView:), &block_descriptor_71, qword_1EFF9D5E8, partial apply for specialized closure #2 in _UIHostingView.init(rootView:), &block_descriptor_78, type metadata accessor for ModifiedContent<AnyView, DocumentBaseModifier>);
}

{
  return specialized _UIHostingView.init(rootView:)(a1, lazy protocol witness table accessor for type TabBarBottomAccessoryView and conformance TabBarBottomAccessoryView, &type metadata for TabBarBottomAccessoryView, &lazy cache variable for type metadata for _UIHostingView<TabBarBottomAccessoryView>.EnableVFDFeature, lazy protocol witness table accessor for type TabBarBottomAccessoryView and conformance TabBarBottomAccessoryView, lazy protocol witness table accessor for type _UIHostingView<TabBarBottomAccessoryView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature, &lazy cache variable for type metadata for _UIHostingView<TabBarBottomAccessoryView>, &lazy cache variable for type metadata for _UIHostingView<TabBarBottomAccessoryView>.HostViewGraph, lazy protocol witness table accessor for type _UIHostingView<TabBarBottomAccessoryView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph, outlined destroy of _UIHostingView<TabBarBottomAccessoryView>.HostViewGraph, specialized _UIHostingView.base.getter, lazy protocol witness table accessor for type _UIHostingView<TabBarBottomAccessoryView> and conformance _UIHostingView<A>, lazy protocol witness table accessor for type _UIHostingView<TabBarBottomAccessoryView> and conformance _UIHostingView<A>, closure #1 in UILargeContentViewerInteractionBridge.updateRequestedPreferences(for:)partial apply, lazy protocol witness table accessor for type _UIHostingView<TabBarBottomAccessoryView> and conformance _UIHostingView<A>, &unk_1EFF9D818, partial apply for specialized closure #1 in _UIHostingView.init(rootView:), block_descriptor_127, &unk_1EFF9D868, partial apply for specialized closure #2 in _UIHostingView.init(rootView:), &block_descriptor_134);
}

{
  v2 = v1;
  v205 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v176 = type metadata accessor for UIHostingViewBase.Options();
  v181 = *(v176 - 8);
  MEMORY[0x1EEE9AC00](v176);
  v171 = &v168 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v173 = &v168 - v7;
  v8 = type metadata accessor for UIHostingViewBase.Configuration();
  v178 = *(v8 - 8);
  v179 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v174 = &v168 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v180 = &v168 - v11;
  v12 = MEMORY[0x1E69E7D40];
  *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x70)) = 0;
  v13 = *((*v12 & *v1) + 0x78);
  type metadata accessor for EventBindingManager();
  v14 = EventBindingManager.__allocating_init()();
  v175 = v13;
  *(v1 + v13) = v14;
  *(v1 + *((*v12 & *v1) + 0x80)) = 0;
  *(v1 + *((*v12 & *v1) + 0x88)) = 0;
  *(v1 + *((*v12 & *v1) + 0x90)) = 1;
  *(v1 + *((*v12 & *v1) + 0x98)) = 0;
  *(v1 + *((*v12 & *v1) + 0xA0)) = 0;
  v15 = v2 + *((*v12 & *v2) + 0xA8);
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v15[32] = 1;
  v16 = v2 + *((*v12 & *v2) + 0xB0);
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v16[32] = 1;
  *(v1 + *((*v12 & *v1) + 0xB8)) = 0;
  *(v1 + *((*v12 & *v1) + 0xC0)) = 0;
  *(v1 + *((*v12 & *v1) + 0xC8)) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + *((*v12 & *v1) + 0xD8)) = 0;
  v17 = v2 + *((*v12 & *v2) + 0xE8);
  *v17 = 0;
  v17[8] = 1;
  *(v1 + *((*v12 & *v1) + 0xF0)) = 0;
  *(v1 + *((*v12 & *v1) + 0xF8)) = 2;
  v18 = *((*v12 & *v1) + 0x100);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<Alert.Presentation>, &type metadata for Alert.Presentation, &protocol witness table for Alert.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v20 = v19;
  v21 = objc_allocWithZone(v19);
  *(v21 + *((*v12 & *v21) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v21 + *((*v12 & *v21) + 0x68)) = 0;
  *(v21 + *((*v12 & *v21) + 0x70)) = 0;
  *(v21 + *((*v12 & *v21) + 0x78)) = 0;
  EnvironmentValues.init()();
  v22 = v21 + *((*v12 & *v21) + 0x88);
  *v22 = 0u;
  *(v22 + 1) = 0u;
  *(v22 + 2) = 0u;
  *(v22 + 3) = 0u;
  *(v22 + 4) = 0u;
  *(v22 + 5) = 0u;
  *(v22 + 6) = 0u;
  *(v22 + 7) = 0u;
  *(v22 + 8) = 0u;
  *(v22 + 9) = 0u;
  *(v22 + 10) = 0u;
  *(v22 + 11) = 0u;
  *(v22 + 12) = 0u;
  *(v22 + 13) = 0u;
  *(v22 + 14) = 0u;
  *(v22 + 15) = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 34) = 0;
  *(v21 + *((*v12 & *v21) + 0x90)) = 0;
  *(v21 + *((*v12 & *v21) + 0x98)) = 1;
  v187.receiver = v21;
  v187.super_class = v20;
  *(v1 + v18) = objc_msgSendSuper2(&v187, sel_init);
  v23 = *((*v12 & *v1) + 0x108);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<ActionSheet.Presentation>, &type metadata for ActionSheet.Presentation, &protocol witness table for ActionSheet.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v25 = v24;
  v26 = objc_allocWithZone(v24);
  *(v26 + *((*v12 & *v26) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v26 + *((*v12 & *v26) + 0x68)) = 0;
  *(v26 + *((*v12 & *v26) + 0x70)) = 0;
  *(v26 + *((*v12 & *v26) + 0x78)) = 0;
  EnvironmentValues.init()();
  v27 = v26 + *((*v12 & *v26) + 0x88);
  *v27 = 0u;
  *(v27 + 1) = 0u;
  *(v27 + 2) = 0u;
  *(v27 + 3) = 0u;
  *(v27 + 4) = 0u;
  *(v27 + 5) = 0u;
  *(v27 + 6) = 0u;
  *(v27 + 7) = 0u;
  *(v27 + 8) = 0u;
  *(v27 + 9) = 0u;
  *(v27 + 20) = 0;
  *(v26 + *((*v12 & *v26) + 0x90)) = 0;
  *(v26 + *((*v12 & *v26) + 0x98)) = 0;
  v186.receiver = v26;
  v186.super_class = v25;
  *(v2 + v23) = objc_msgSendSuper2(&v186, sel_init);
  *(v2 + *((*v12 & *v2) + 0x110)) = 1;
  v28 = *((*v12 & *v2) + 0x118);
  type metadata accessor for FocusBridge();
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 32) = 0;
  *(v29 + 40) = 0;
  swift_unknownObjectWeakInit();
  v30 = MEMORY[0x1E69E7CC0];
  v31 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI12PropertyListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v29 + 48) = 0;
  *(v29 + 56) = v30;
  *(v29 + 64) = v31;
  EnvironmentValues.init()();
  *(v29 + 120) = 0u;
  *(v29 + 104) = 0u;
  *(v29 + 88) = 0u;
  v168 = xmmword_18CD6A6D0;
  *(v29 + 136) = xmmword_18CD6A6D0;
  swift_weakInit();
  *(v29 + 160) = 0;
  *(v29 + 168) = 0;
  *(v29 + 176) = 1;
  *(v2 + v28) = v29;
  v32 = *((*v12 & *v2) + 0x120);
  *(v2 + v32) = [objc_allocWithZone(type metadata accessor for DragAndDropBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x128)) = 0;
  v33 = *((*v12 & *v2) + 0x130);
  *(v2 + v33) = [objc_allocWithZone(type metadata accessor for TooltipBridge()) init];
  v34 = *((*v12 & *v2) + 0x138);
  *(v2 + v34) = [objc_allocWithZone(type metadata accessor for EditMenuBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x140)) = 0;
  *(v2 + *((*v12 & *v2) + 0x148)) = 0;
  v35 = *((*v12 & *v2) + 0x150);
  type metadata accessor for UIKitStatusBarBridge();
  v36 = swift_allocObject();
  *(v36 + 16) = 514;
  *(v36 + 24) = v30;
  *(v36 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + v35) = v36;
  swift_weakInit();
  *(v2 + *((*v12 & *v2) + 0x160)) = 0;
  v37 = *((*v12 & *v2) + 0x168);
  *(v2 + v37) = [objc_allocWithZone(type metadata accessor for AVKitCaptureButtonBridge()) init];
  v38 = *((*v12 & *v2) + 0x170);
  *(v2 + v38) = [objc_allocWithZone(type metadata accessor for PencilEventsBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x178)) = 0;
  *(v2 + *((*v12 & *v2) + 0x180)) = 0;
  v39 = *((*v12 & *v2) + 0x188);
  *(v2 + v39) = [objc_allocWithZone(type metadata accessor for ContextMenuBridge()) init];
  v40 = *((*v12 & *v2) + 0x190);
  type metadata accessor for InteractiveResizeBridge();
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 20) = 0;
  *(v41 + 24) = 0;
  v170 = v40;
  *(v2 + v40) = v41;
  *(v2 + *((*v12 & *v2) + 0x198)) = 0;
  v42 = *((*v12 & *v2) + 0x1A0);
  *(v2 + v42) = [objc_allocWithZone(type metadata accessor for UILargeContentViewerInteractionBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x1A8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1B0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1B8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1C0) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v12 & *v2) + 0x1C8)) = 0;
  v43 = v2 + *((*v12 & *v2) + 0x1D0);
  *v43 = 0;
  v43[8] = 0;
  *(v43 + 1) = xmmword_18CD76350;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v12 & *v2) + 0x1E0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1E8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1F0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1F8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x200)) = 0;
  *(v2 + *((*v12 & *v2) + 0x60)) = a1;
  v169 = a1;

  MEMORY[0x18D00ABE0](v44);
  type metadata accessor for PlatformColorDefinition();
  type metadata accessor for UIKitPlatformColorDefinition();
  static PlatformSystemDefinition.uiKit.getter();
  static PlatformColorDefinition.setInternalDefinition(_:system:)();
  type metadata accessor for PlatformScrollEdgeEffectTagDefinition();
  type metadata accessor for ScrollEdgeEffectTagModifierDefinition();
  static PlatformScrollEdgeEffectTagDefinition.setDefinition(_:)();
  type metadata accessor for PlatformItemsDefinition();
  type metadata accessor for UIKitPlatformItemsDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  v45 = static PlatformItemsDefinition.setDefinition(_:system:)();
  v46 = *(ObjectType + 1384);
  v172 = ObjectType;
  v46(&v190, v45);
  v47 = v190;
  type metadata accessor for PlatformViewDefinition();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
  if (!static PlatformViewDefinition.for (_:)())
  {
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  LOBYTE(v188) = v47;
  type metadata accessor for ViewGraphHost();
  swift_allocObject();
  lazy protocol witness table accessor for type InputAccessoryBar and conformance InputAccessoryBar();
  v177 = ViewGraphHost.init<A>(rootViewType:outputs:viewDefinition:)();
  v182 = *(v177 + 88);

  v48 = v180;
  v49 = UIHostingViewBase.Configuration.init()();
  v50 = v171;
  MEMORY[0x18D001BC0](v49);
  v51 = UIHostingViewBase.Configuration.options.modify();
  v52 = v173;
  specialized OptionSet<>.insert(_:)(v173, v50);
  v54 = (v181 + 1);
  v53 = v181[1];
  v55 = v176;
  v53(v50, v176);
  v181 = v54;
  v53(v52, v55);
  v56 = v51(&v190, 0);
  v57 = v48;
  if (((*(v172 + 1408))(v56) & 1) == 0)
  {
    static UIHostingViewBase.Options.allowUnregisteredGeometryChanges.getter();
    v58 = UIHostingViewBase.Configuration.options.modify();
    specialized OptionSet<>.insert(_:)(v52, v50);
    v59 = v176;
    v53(v50, v176);
    v53(v52, v59);
    v58(&v190, 0);
    v57 = v180;
  }

  (*(v178 + 16))(v174, v57, v179);
  v60 = objc_allocWithZone(type metadata accessor for UIHostingViewBase());

  *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x68)) = UIHostingViewBase.init(viewGraph:configuration:)();
  v61 = v182;

  *&v190 = specialized FocusViewGraph.init(graph:)(v62);
  *(&v190 + 1) = v63;
  LOWORD(v191) = v64 & 0x101;
  BYTE2(v191) = v65 & 1;
  lazy protocol witness table accessor for type FocusViewGraph and conformance FocusViewGraph();
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type PlatformItemListViewGraph and conformance PlatformItemListViewGraph();
  *&v190 = 0;
  WORD4(v190) = 0;
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput();
  if (static UserDefaultKeyedFeature.isEnabled.getter())
  {
    v66 = *MEMORY[0x1E698D3F8];
    v188 = 0uLL;
    *v189 = v66;
    memset(&v189[8], 0, 64);
    *&v189[72] = v168;
    lazy protocol witness table accessor for type ViewGraphBridgePropertiesFeature and conformance ViewGraphBridgePropertiesFeature();
    ViewGraph.append<A>(feature:)();
    v193 = *&v189[32];
    v194 = *&v189[48];
    v195 = *&v189[64];
    v196 = *&v189[80];
    v190 = v188;
    v191 = *v189;
    v192 = *&v189[16];
    outlined destroy of ViewGraphBridgePropertiesFeature(&v190);
  }

  if (_UIUpdateAdaptiveRateNeeded())
  {
    type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<InputAccessoryBar>.EnableVFDFeature, lazy protocol witness table accessor for type InputAccessoryBar and conformance InputAccessoryBar, &type metadata for InputAccessoryBar, type metadata accessor for _UIHostingView.EnableVFDFeature);
    lazy protocol witness table accessor for type _UIHostingView<InputAccessoryBar>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature();
    ViewGraph.append<A>(feature:)();
  }

  AccessibilityViewGraph.init(graph:)(v67, &v188);
  aBlock = v188;
  v202 = *v189;
  v203 = *&v189[16];
  v204 = *&v189[32];
  lazy protocol witness table accessor for type AccessibilityViewGraph and conformance AccessibilityViewGraph();
  ViewGraph.append<A>(feature:)();
  v190 = aBlock;
  v191 = v202;
  v192 = v203;
  *&v193 = v204;
  outlined destroy of AccessibilityViewGraph(&v190);
  v68 = *(v2 + v170);
  v69 = AGSubgraphGetCurrent();
  swift_beginAccess();

  AGSubgraphSetCurrent();
  LOBYTE(aBlock) = 0;
  v70 = Attribute.init<A>(body:value:flags:update:)();
  AGSubgraphSetCurrent();

  *&aBlock = v68;
  DWORD2(aBlock) = v70;
  lazy protocol witness table accessor for type InteractiveResizeChangeViewGraphFeature and conformance InteractiveResizeChangeViewGraphFeature();
  ViewGraph.append<A>(feature:)();

  v71 = MEMORY[0x1E69E7CC0];
  v72 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E7BindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(&v202 + 1) = &type metadata for HoverEventDispatcher;
  *&v203 = lazy protocol witness table accessor for type HoverEventDispatcher and conformance HoverEventDispatcher();
  *&aBlock = v72;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v202 + 1) = &type metadata for PencilDoubleTapEventDispatcher;
  *&v203 = lazy protocol witness table accessor for type PencilDoubleTapEventDispatcher and conformance PencilDoubleTapEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v202 + 1) = &type metadata for PencilSqueezeEventDispatcher;
  *&v203 = lazy protocol witness table accessor for type PencilSqueezeEventDispatcher and conformance PencilSqueezeEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v73 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_SayAC8KeyPressV7HandlerVGTt0g5Tf4g_n(v71);
  *(&v202 + 1) = &type metadata for KeyEventDispatcher;
  *&v203 = lazy protocol witness table accessor for type KeyEventDispatcher and conformance KeyEventDispatcher();
  *&aBlock = v73;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  type metadata accessor for UIKitEventBindingBridge();
  swift_allocObject();

  v74 = UIKitEventBindingBridge.init(eventBindingManager:)();
  v75 = MEMORY[0x1E69E7D40];
  *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0xE0)) = v74;
  type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<InputAccessoryBar>, lazy protocol witness table accessor for type InputAccessoryBar and conformance InputAccessoryBar, &type metadata for InputAccessoryBar, type metadata accessor for _UIHostingView);
  v185.receiver = v2;
  v185.super_class = v76;
  v77 = v75;
  v78 = objc_msgSendSuper2(&v185, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  swift_unknownObjectWeakInit();
  type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<InputAccessoryBar>.HostViewGraph, lazy protocol witness table accessor for type InputAccessoryBar and conformance InputAccessoryBar, &type metadata for InputAccessoryBar, type metadata accessor for _UIHostingView.HostViewGraph);
  lazy protocol witness table accessor for type _UIHostingView<InputAccessoryBar>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph();
  v79 = v78;
  ViewGraph.append<A>(feature:)();
  v80 = outlined destroy of _UIHostingView<InputAccessoryBar>.HostViewGraph(&aBlock);
  (*((*v75 & *v79) + 0x5C0))(v80);
  v81 = specialized _UIHostingView.base.getter();
  UIHostingViewBase.setUp()();

  static RepresentableContextValues.current.getter();
  v82 = aBlock;
  v181 = v78;
  if (aBlock != 1)
  {
    v83 = *(&aBlock + 1);
    v84 = v202;
    v85 = v203;
    if (aBlock)
    {

      specialized ViewRendererHost.setPreferenceBridge(_:)(v86);
    }

    *&aBlock = v82;
    *(&aBlock + 1) = v83;
    v202 = v84;
    LOBYTE(v203) = v85 & 1;
    RepresentableContextValues.environment.getter();
    v199 = v200;
    UIHostingViewBase.initialInheritedEnvironment.setter();
    outlined consume of RepresentableContextValues?(v82, v83, v84, *(&v84 + 1), v85);
    v61 = v182;
  }

  specialized _UIHostingView.feedbackCache.getter();
  swift_unknownObjectWeakAssign();
  v87 = v79;

  v88 = *(v87 + *((*v77 & *v87) + 0x150));
  v89 = lazy protocol witness table accessor for type _UIHostingView<InputAccessoryBar> and conformance _UIHostingView<A>();
  *(v88 + 40) = v89;
  swift_unknownObjectWeakAssign();

  UIKitStatusBarBridge.addPreferences(to:)();

  v176 = *((*v77 & *v87) + 0x188);
  *(*(v87 + v176) + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host + 8) = v89;
  swift_unknownObjectWeakAssign();
  v90 = *(v87 + *((*v77 & *v87) + 0x100));
  *(v90 + *((*v90 & *v77) + 0x60) + 8) = v89;
  swift_unknownObjectWeakAssign();

  GraphHost.addPreference<A>(_:)();
  v91 = *(v87 + *((*v77 & *v87) + 0x108));
  *(v91 + *((*v91 & *v77) + 0x60) + 8) = v89;
  swift_unknownObjectWeakAssign();

  GraphHost.addPreference<A>(_:)();
  v92 = specialized _UIHostingView.sheetBridge.getter();
  if (v92)
  {
    *&v92[direct field offset for SheetBridge.host + 8] = v89;
    v93 = v92;
    swift_unknownObjectWeakAssign();
  }

  v94 = *v77 & *v87;
  v95 = *(v87 + *(v94 + 0x110));
  if (v95)
  {
    v96 = *((*v95 & *v77) + 0x210);
    v97 = v95;
    v96(v61);
    outlined consume of SheetBridge<SheetPreference.Key>??(v95);
    v94 = *v77 & *v87;
  }

  v98 = *(v87 + *(v94 + 280));
  v99 = lazy protocol witness table accessor for type _UIHostingView<InputAccessoryBar> and conformance _UIHostingView<A>();
  *(v98 + 32) = &protocol witness table for _UIHostingView<A>;
  *(v98 + 40) = v99;
  swift_unknownObjectWeakAssign();

  v100 = FocusBridge.host.getter();
  if (v100)
  {
    v102 = v100;
    v103 = v101;
    v104 = swift_getObjectType();
    (*(*(*(v103 + 8) + 8) + 8))(v104);

    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v105 = *((*v77 & *v87) + 0x120);
  *(*(v87 + v105) + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host + 8) = v89;
  swift_unknownObjectWeakAssign();
  v106 = *(v87 + v105);
  v107 = &v106[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_45;
  }

  v108 = *(v107 + 1);
  v109 = swift_getObjectType();
  v110 = *(*(v108 + 16) + 8);
  v111 = v106;
  LOBYTE(v109) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v109, v110);
  swift_unknownObjectRelease();
  if (v109)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  GraphHost.addPreference<A>(_:)();
  *(*(v87 + *((*v77 & *v87) + 0x130)) + OBJC_IVAR____TtC7SwiftUI13TooltipBridge_host + 8) = v89;
  swift_unknownObjectWeakAssign();
  v112 = v87;
  GraphHost.addPreference<A>(_:)();
  *(*(v112 + *((*v77 & *v112) + 0x138)) + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_host + 8) = v89;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  GraphHost.addPreference<A>(_:)();
  *(*(v112 + *((*v77 & *v112) + 0x170)) + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_host + 8) = v89;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  v113 = *((*v77 & *v112) + 0x168);
  *(*(v112 + v113) + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host + 8) = v89;
  swift_unknownObjectWeakAssign();

  v114 = *(v112 + v113);
  v115 = &v114[OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_46;
  }

  v116 = *(v115 + 1);
  v117 = swift_getObjectType();
  v118 = *(v116 + 8);
  v119 = *(v118 + 8);
  v120 = v114;
  v119(v117, v118);
  swift_unknownObjectRelease();
  GraphHost.addPreference<A>(_:)();

  v121 = [v112 traitCollection];

  v122 = [v121 userInterfaceIdiom];
  v123 = MEMORY[0x1E69E7D40];
  if (v122 == 1 || (v124 = [v112 traitCollection], v125 = objc_msgSend(v124, sel_userInterfaceIdiom), v124, v125 == 6))
  {
    v126 = [objc_allocWithZone(type metadata accessor for PointerBridge()) init];
    *&v126[OBJC_IVAR____TtC7SwiftUI13PointerBridge_host + 8] = v89;
    swift_unknownObjectWeakAssign();
    GraphHost.addPreference<A>(_:)();
    v127 = *((*v123 & *v112) + 0x178);
    v128 = *(v112 + v127);
    *(v112 + v127) = v126;
  }

  v129 = *(v87 + v176);
  v130 = &v129[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
LABEL_47:
    __break(1u);
  }

  v131 = *(v130 + 1);
  v132 = v129;

  v133 = swift_getObjectType();
  v134 = ViewGraphDelegate.shouldCreateUIInteractions.getter(v133, *(*(v131 + 16) + 8));
  swift_unknownObjectRelease();
  v135 = v182;
  if (v134)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v136 = *((*v123 & *v112) + 0x1A0);
  *(*(v112 + v136) + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_host + 8) = v89;
  v137 = swift_unknownObjectWeakAssign();
  v138 = *(v112 + v136);
  MEMORY[0x1EEE9AC00](v137);
  *(&v168 - 2) = v138;
  *(&v168 - 1) = v135;
  v139 = v112;
  v140 = v138;
  static Update.ensure<A>(_:)();

  v141 = *((*v123 & *v139) + 0x78);
  v142 = *(v139 + v141);
  v143 = lazy protocol witness table accessor for type _UIHostingView<InputAccessoryBar> and conformance _UIHostingView<A>();
  swift_beginAccess();
  *(v142 + 24) = v143;
  swift_unknownObjectWeakAssign();

  v144 = *(v139 + v141);
  v145 = *((*v123 & *v139) + 0xE0);
  swift_beginAccess();
  *(v144 + 40) = MEMORY[0x1E697F3C8];
  swift_unknownObjectWeakAssign();
  v146 = *(v139 + v145);
  v147 = *(v146 + 32);

  if (v147)
  {
    [v139 addGestureRecognizer_];
  }

  [v139 addGestureRecognizer_];

  specialized _UIHostingView.legacySetupKeyboardAvoidanceNotifications()();
  if (isAppleInternalBuild()())
  {
    v148 = [v139 window];
    if (v148)
    {
      v149 = v148;
      v150 = [v148 rootViewController];

      if (v150)
      {
        v151 = [v150 viewIfLoaded];

        if (v151)
        {

          if (v151 == v139)
          {
            v197 = 0;
            v184[0] = 0;
            v152 = getpid();
            *&aBlock = 0;
            *(&aBlock + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(16);

            strcpy(&aBlock, "NameLayerTree-");
            HIBYTE(aBlock) = -18;
            v183 = v152;
            v153 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x18D00C9B0](v153);

            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
            v154 = static OS_dispatch_queue.main.getter();
            v155 = swift_allocObject();
            swift_unknownObjectWeakInit();
            *&v203 = partial apply for specialized closure #1 in _UIHostingView.init(rootView:);
            *(&v203 + 1) = v155;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v202 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v202 + 1) = &block_descriptor_43;
            v156 = _Block_copy(&aBlock);

            v157 = String.utf8CString.getter();

            notify_register_dispatch((v157 + 32), &v197, v154, v156);

            _Block_release(v156);

            v158 = static OS_dispatch_queue.main.getter();
            v159 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v160 = swift_allocObject();
            *(v160 + 16) = v152;
            *(v160 + 24) = v159;
            *&v203 = partial apply for specialized closure #2 in _UIHostingView.init(rootView:);
            *(&v203 + 1) = v160;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v202 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v202 + 1) = &block_descriptor_50;
            v161 = _Block_copy(&aBlock);

            notify_register_dispatch("NameLayerTree", v184, v158, v161);
            _Block_release(v161);

            v162 = v139 + *((*v123 & *v139) + 0xE8);
            *v162 = v197 | (v184[0] << 32);
            v162[8] = 0;
          }
        }
      }
    }
  }

  v163 = [objc_opt_self() defaultCenter];
  [v163 addObserver:v139 selector:sel_accessibilityFocusedElementDidChange_ name:*MEMORY[0x1E69DD8C0] object:0];
  v164 = one-time initialization token for didUpdateListLayout;
  v165 = v139;
  if (v164 != -1)
  {
    swift_once();
  }

  [v163 addObserver:v165 selector:sel_clarityUISettingDidChange_ name:static ClarityUI.didUpdateListLayout object:0];

  v166 = v180;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v198 = 0;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(&v197, v165);
  swift_endAccess();
  if (static Spacing.hasSetupDefaultValue == 1)
  {
    (*(v178 + 8))(v166, v179);
  }

  else
  {
    static Spacing.hasSetupDefaultValue = 1;

    (*(v178 + 8))(v166, v179);
  }

  static Update.end()();
  return v165;
}

{
  return specialized _UIHostingView.init(rootView:)(a1, lazy protocol witness table accessor for type PreparedCompactColumn and conformance PreparedCompactColumn, &type metadata for PreparedCompactColumn, &lazy cache variable for type metadata for _UIHostingView<PreparedCompactColumn>.EnableVFDFeature, lazy protocol witness table accessor for type PreparedCompactColumn and conformance PreparedCompactColumn, lazy protocol witness table accessor for type _UIHostingView<PreparedCompactColumn>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature, &lazy cache variable for type metadata for _UIHostingView<PreparedCompactColumn>, &lazy cache variable for type metadata for _UIHostingView<PreparedCompactColumn>.HostViewGraph, lazy protocol witness table accessor for type _UIHostingView<PreparedCompactColumn>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph, outlined destroy of _UIHostingView<PreparedCompactColumn>.HostViewGraph, specialized _UIHostingView.base.getter, lazy protocol witness table accessor for type _UIHostingView<PreparedCompactColumn> and conformance _UIHostingView<A>, lazy protocol witness table accessor for type _UIHostingView<PreparedCompactColumn> and conformance _UIHostingView<A>, closure #1 in UILargeContentViewerInteractionBridge.updateRequestedPreferences(for:)partial apply, lazy protocol witness table accessor for type _UIHostingView<PreparedCompactColumn> and conformance _UIHostingView<A>, &unk_1EFF9E178, partial apply for specialized closure #1 in _UIHostingView.init(rootView:), block_descriptor_340, &unk_1EFF9E1C8, partial apply for specialized closure #2 in _UIHostingView.init(rootView:), &block_descriptor_347);
}

{
  return specialized _UIHostingView.init(rootView:)(a1, lazy protocol witness table accessor for type MainContentView and conformance MainContentView, &type metadata for MainContentView, &lazy cache variable for type metadata for _UIHostingView<MainContentView>.EnableVFDFeature, lazy protocol witness table accessor for type MainContentView and conformance MainContentView, lazy protocol witness table accessor for type _UIHostingView<MainContentView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature, &lazy cache variable for type metadata for _UIHostingView<MainContentView>, &lazy cache variable for type metadata for _UIHostingView<MainContentView>.HostViewGraph, lazy protocol witness table accessor for type _UIHostingView<MainContentView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph, outlined destroy of _UIHostingView<MainContentView>.HostViewGraph, specialized _UIHostingView.base.getter, lazy protocol witness table accessor for type _UIHostingView<MainContentView> and conformance _UIHostingView<A>, lazy protocol witness table accessor for type _UIHostingView<MainContentView> and conformance _UIHostingView<A>, closure #1 in UILargeContentViewerInteractionBridge.updateRequestedPreferences(for:)partial apply, lazy protocol witness table accessor for type _UIHostingView<MainContentView> and conformance _UIHostingView<A>, &unk_1EFF9D6D8, partial apply for specialized closure #1 in _UIHostingView.init(rootView:), block_descriptor_99, &unk_1EFF9D728, partial apply for specialized closure #2 in _UIHostingView.init(rootView:), &block_descriptor_106);
}

uint64_t sub_18BD50DF8()
{

  return swift_deallocObject();
}

id DragAndDropBridge.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_hasDragItemsSeed] = 0;
  *&v0[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_dragTimingsSeed] = 0;
  *&v0[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_dragInteraction] = 0;
  *&v0[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_canDropSeed] = 0;
  *&v0[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_dropInteraction] = 0;
  *&v0[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_canSpringLoadSeed] = 0;
  *&v0[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_springLoadedInteraction] = 0;
  *&v0[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_activeSpringLoadedResponder] = 0;
  v2 = &v0[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_activeDrop];
  *v2 = xmmword_18CD633F0;
  *(v2 + 1) = 0u;
  *(v2 + 2) = 0u;
  *(v2 + 3) = 0u;
  *(v2 + 57) = 0u;
  v3 = &v0[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_onSessionBegan];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v0[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_onSessionEnded];
  *v4 = 0;
  *(v4 + 1) = 0;
  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

id ContextMenuBridge.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_interaction] = 0;
  v0[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_menuOrder] = 0;
  *&v0[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_hasContextMenuSeed] = 0;
  *&v0[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_menuOrderSeed] = 0;
  *&v0[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_popoverBridgeToken] = 0;
  v2 = &v0[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_presentedMenu];
  *v2 = 0;
  v2[4] = 0;
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_init);
}

void type metadata completion function for FileImportOperation()
{
  _s10Foundation3URLVSgMaTm_7(319, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0]);
  if (v0 <= 0x3F)
  {
    _s10Foundation3URLVSgMaTm_7(319, &lazy cache variable for type metadata for Predicate<Pack{URL}>?, type metadata accessor for Predicate<Pack{URL}>);
    if (v1 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

uint64_t ContainerBackgroundBridge.init()()
{
  swift_unknownObjectWeakInit();
  *(v0 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 52) = 1;
  *(v0 + 64) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  *(v0 + 96) = 1;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 104) = 0;
  *(v0 + 125) = 0;
  *(v0 + 133) = 1;
  *(v0 + 136) = 0;
  *(v0 + 144) = 1280;
  return v0;
}

uint64_t type metadata accessor for UIKitPlatformColorDefinition()
{
  result = type metadata singleton initialization cache for UIKitPlatformColorDefinition;
  if (!type metadata singleton initialization cache for UIKitPlatformColorDefinition)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for NSObject(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void type metadata completion function for FileExportOperation()
{
  type metadata accessor for FileExportOperation.Mode(319);
  if (v0 <= 0x3F)
  {
    _s10Foundation3URLVSgMaTm_3(319, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      _s10Foundation3URLVSgMaTm_3(319, &lazy cache variable for type metadata for Predicate<Pack{URL}>?, type metadata accessor for Predicate<Pack{URL}>, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_initStructMetadata();
      }
    }
  }
}

uint64_t type metadata completion function for FileExportOperation.Mode()
{
  result = type metadata accessor for FileExportOperation.Move(319);
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for FileExportOperation.Move()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

id specialized UIHostingController.init(rootView:)(uint64_t a1)
{
  v2 = v1;
  *&v1[direct field offset for UIHostingController.allowedBehaviors] = 0;
  *&v1[direct field offset for UIHostingController.requiredBridges] = 0;
  v4 = &v1[direct field offset for UIHostingController.overrides];
  *v4 = xmmword_18CD874C0;
  *(v4 + 2) = 0;
  v4[24] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v4[48] = 2;
  *&v2[direct field offset for UIHostingController.customTabItem] = 0;
  swift_unknownObjectWeakInit();
  *&v2[direct field offset for UIHostingController.toolbarBridge] = 0;
  *&v2[direct field offset for UIHostingController.inspectorBridgeV5] = 0;
  *&v2[direct field offset for UIHostingController.barAppearanceBridge] = 0;
  v5 = direct field offset for UIHostingController.dialogBridge;
  type metadata accessor for UIKitDialogBridge();
  swift_allocObject();
  *&v2[v5] = UIKitDialogBridge.init()();
  *&v2[direct field offset for UIHostingController.testBridge] = 0;
  *&v2[direct field offset for UIHostingController.contentScrollViewBridge] = 0;
  v6 = direct field offset for UIHostingController.modernNavigationBridge;
  type metadata accessor for ModernNavigationBridge();
  v7 = swift_allocObject();
  *(v7 + 16) = -1;
  *&v2[v6] = v7;
  *&v2[direct field offset for UIHostingController.alwaysOnBridge] = 0;
  v8 = direct field offset for UIHostingController.fileImportExportBridge;
  *&v2[v8] = [objc_allocWithZone(type metadata accessor for FileImportExportBridge(0)) init];
  *&v2[direct field offset for UIHostingController.deferredEdges] = 256;
  v9 = MEMORY[0x1E69E7CC0];
  *&v2[direct field offset for UIHostingController.screenEdgesSystemGestureSeedTracker] = MEMORY[0x1E69E7CC0];
  v2[direct field offset for UIHostingController.shouldDeferScreenEdgesSystemGestureToChildViewController] = 0;
  v10 = &v2[direct field offset for UIHostingController.persistentSystemOverlays];
  *v10 = 512;
  v10[2] = 3;
  *&v2[direct field offset for UIHostingController.persistentSystemOverlaysSeedTracker] = v9;
  v2[direct field offset for UIHostingController.shouldDeferPersistentSystemOverlaysToChildViewController] = 0;
  v11 = direct field offset for UIHostingController.backgroundBridge;
  type metadata accessor for ContainerBackgroundBridge();
  swift_allocObject();
  *&v2[v11] = ContainerBackgroundBridge.init()();
  *&v2[direct field offset for UIHostingController.navigationBridge] = 0;
  *&v2[direct field offset for UIHostingController.keyboardShortcutBridge] = 0;
  *&v2[direct field offset for UIHostingController.sizingOptions] = 0;
  type metadata accessor for _UIHostingView();
  *&v2[direct field offset for UIHostingController.host] = specialized _UIHostingView.__allocating_init(rootView:)(a1);
  v14.receiver = v2;
  v14.super_class = type metadata accessor for UIHostingController();
  v12 = objc_msgSendSuper2(&v14, sel_initWithNibName_bundle_, 0, 0);
  UIHostingController._commonInit()();

  return v12;
}

{
  v2 = v1;
  *&v1[direct field offset for UIHostingController.allowedBehaviors] = 0;
  *&v1[direct field offset for UIHostingController.requiredBridges] = 0;
  v4 = &v1[direct field offset for UIHostingController.overrides];
  *v4 = xmmword_18CD874C0;
  *(v4 + 2) = 0;
  v4[24] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v4[48] = 2;
  *&v2[direct field offset for UIHostingController.customTabItem] = 0;
  swift_unknownObjectWeakInit();
  *&v2[direct field offset for UIHostingController.toolbarBridge] = 0;
  *&v2[direct field offset for UIHostingController.inspectorBridgeV5] = 0;
  *&v2[direct field offset for UIHostingController.barAppearanceBridge] = 0;
  v5 = direct field offset for UIHostingController.dialogBridge;
  type metadata accessor for UIKitDialogBridge();
  swift_allocObject();
  *&v2[v5] = UIKitDialogBridge.init()();
  *&v2[direct field offset for UIHostingController.testBridge] = 0;
  *&v2[direct field offset for UIHostingController.contentScrollViewBridge] = 0;
  v6 = direct field offset for UIHostingController.modernNavigationBridge;
  type metadata accessor for ModernNavigationBridge();
  v7 = swift_allocObject();
  *(v7 + 16) = -1;
  *&v2[v6] = v7;
  *&v2[direct field offset for UIHostingController.alwaysOnBridge] = 0;
  v8 = direct field offset for UIHostingController.fileImportExportBridge;
  *&v2[v8] = [objc_allocWithZone(type metadata accessor for FileImportExportBridge(0)) init];
  *&v2[direct field offset for UIHostingController.deferredEdges] = 256;
  v9 = MEMORY[0x1E69E7CC0];
  *&v2[direct field offset for UIHostingController.screenEdgesSystemGestureSeedTracker] = MEMORY[0x1E69E7CC0];
  v2[direct field offset for UIHostingController.shouldDeferScreenEdgesSystemGestureToChildViewController] = 0;
  v10 = &v2[direct field offset for UIHostingController.persistentSystemOverlays];
  *v10 = 512;
  v10[2] = 3;
  *&v2[direct field offset for UIHostingController.persistentSystemOverlaysSeedTracker] = v9;
  v2[direct field offset for UIHostingController.shouldDeferPersistentSystemOverlaysToChildViewController] = 0;
  v11 = direct field offset for UIHostingController.backgroundBridge;
  type metadata accessor for ContainerBackgroundBridge();
  swift_allocObject();
  *&v2[v11] = ContainerBackgroundBridge.init()();
  *&v2[direct field offset for UIHostingController.navigationBridge] = 0;
  *&v2[direct field offset for UIHostingController.keyboardShortcutBridge] = 0;
  *&v2[direct field offset for UIHostingController.sizingOptions] = 0;
  outlined init with copy of ModifiedContent<AnyView, RootModifier>(a1, v18);
  _s7SwiftUI19UIHostingControllerCyAA15ModifiedContentVyAA7AnyViewVAA12RootModifierVGGMaTm_0(0, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<AnyView, RootModifier>>, type metadata accessor for _UIHostingView);
  v13 = objc_allocWithZone(v12);
  *&v2[direct field offset for UIHostingController.host] = specialized _UIHostingView.init(rootView:)(v18);
  _s7SwiftUI19UIHostingControllerCyAA15ModifiedContentVyAA7AnyViewVAA12RootModifierVGGMaTm_0(0, &lazy cache variable for type metadata for UIHostingController<ModifiedContent<AnyView, RootModifier>>, type metadata accessor for UIHostingController);
  v17.receiver = v2;
  v17.super_class = v14;
  v15 = objc_msgSendSuper2(&v17, sel_initWithNibName_bundle_, 0, 0);
  specialized UIHostingController._commonInit()(&lazy cache variable for type metadata for _UIHostingView<ModifiedContent<AnyView, RootModifier>>, type metadata accessor for _UIHostingView, _s7SwiftUI19UIHostingControllerCyAA15ModifiedContentVyAA7AnyViewVAA12RootModifierVGGMaTm_0, &lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<AnyView, RootModifier>> and conformance _UIHostingView<A>, _s7SwiftUI19UIHostingControllerCyAA15ModifiedContentVyAA7AnyViewVAA12RootModifierVGGMaTm_0);

  outlined destroy of ModifiedContent<AnyView, RootModifier>(a1);
  return v15;
}

{
  v2 = v1;
  type metadata accessor for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>(0, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - v5;
  *&v1[direct field offset for UIHostingController.allowedBehaviors] = 0;
  *&v1[direct field offset for UIHostingController.requiredBridges] = 0;
  v7 = direct field offset for UIHostingController.overrides;
  v21 = xmmword_18CD874C0;
  v22 = 0;
  v23 = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v24 = 2;
  outlined init with take of HostingControllerOverrides(&v21, &v2[v7]);
  *&v2[direct field offset for UIHostingController.customTabItem] = 0;
  swift_unknownObjectWeakInit();
  *&v2[direct field offset for UIHostingController.toolbarBridge] = 0;
  *&v2[direct field offset for UIHostingController.inspectorBridgeV5] = 0;
  *&v2[direct field offset for UIHostingController.barAppearanceBridge] = 0;
  v8 = direct field offset for UIHostingController.dialogBridge;
  type metadata accessor for UIKitDialogBridge();
  swift_allocObject();
  *&v2[v8] = UIKitDialogBridge.init()();
  *&v2[direct field offset for UIHostingController.testBridge] = 0;
  *&v2[direct field offset for UIHostingController.contentScrollViewBridge] = 0;
  v9 = direct field offset for UIHostingController.modernNavigationBridge;
  type metadata accessor for ModernNavigationBridge();
  v10 = swift_allocObject();
  *(v10 + 16) = -1;
  *&v2[v9] = v10;
  *&v2[direct field offset for UIHostingController.alwaysOnBridge] = 0;
  v11 = direct field offset for UIHostingController.fileImportExportBridge;
  *&v2[v11] = [objc_allocWithZone(type metadata accessor for FileImportExportBridge(0)) init];
  *&v2[direct field offset for UIHostingController.deferredEdges] = 256;
  v12 = MEMORY[0x1E69E7CC0];
  *&v2[direct field offset for UIHostingController.screenEdgesSystemGestureSeedTracker] = MEMORY[0x1E69E7CC0];
  v2[direct field offset for UIHostingController.shouldDeferScreenEdgesSystemGestureToChildViewController] = 0;
  v13 = &v2[direct field offset for UIHostingController.persistentSystemOverlays];
  *v13 = 512;
  v13[2] = 3;
  *&v2[direct field offset for UIHostingController.persistentSystemOverlaysSeedTracker] = v12;
  v2[direct field offset for UIHostingController.shouldDeferPersistentSystemOverlaysToChildViewController] = 0;
  v14 = direct field offset for UIHostingController.backgroundBridge;
  type metadata accessor for ContainerBackgroundBridge();
  swift_allocObject();
  *&v2[v14] = ContainerBackgroundBridge.init()();
  *&v2[direct field offset for UIHostingController.navigationBridge] = 0;
  *&v2[direct field offset for UIHostingController.keyboardShortcutBridge] = 0;
  *&v2[direct field offset for UIHostingController.sizingOptions] = 0;
  outlined init with copy of TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>(a1, v6, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0);
  type metadata accessor for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>(0, &lazy cache variable for type metadata for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>, type metadata accessor for _UIHostingView);
  v16 = objc_allocWithZone(v15);
  *&v2[direct field offset for UIHostingController.host] = specialized _UIHostingView.init(rootView:)(v6);
  type metadata accessor for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>(0, &lazy cache variable for type metadata for UIHostingController<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>, type metadata accessor for UIHostingController);
  v20.receiver = v2;
  v20.super_class = v17;
  v18 = objc_msgSendSuper2(&v20, sel_initWithNibName_bundle_, 0, 0);
  specialized UIHostingController._commonInit()(&lazy cache variable for type metadata for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>, type metadata accessor for _UIHostingView, type metadata accessor for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>, &lazy protocol witness table cache variable for type _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>);

  outlined destroy of TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>(a1, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0);
  return v18;
}

{
  v2 = v1;
  type metadata accessor for TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[direct field offset for UIHostingController.allowedBehaviors] = 0;
  *&v1[direct field offset for UIHostingController.requiredBridges] = 0;
  v7 = direct field offset for UIHostingController.overrides;
  v21 = xmmword_18CD874C0;
  v22 = 0;
  v23 = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v24 = 2;
  outlined init with take of HostingControllerOverrides(&v21, &v2[v7]);
  *&v2[direct field offset for UIHostingController.customTabItem] = 0;
  swift_unknownObjectWeakInit();
  *&v2[direct field offset for UIHostingController.toolbarBridge] = 0;
  *&v2[direct field offset for UIHostingController.inspectorBridgeV5] = 0;
  *&v2[direct field offset for UIHostingController.barAppearanceBridge] = 0;
  v8 = direct field offset for UIHostingController.dialogBridge;
  type metadata accessor for UIKitDialogBridge();
  swift_allocObject();
  *&v2[v8] = UIKitDialogBridge.init()();
  *&v2[direct field offset for UIHostingController.testBridge] = 0;
  *&v2[direct field offset for UIHostingController.contentScrollViewBridge] = 0;
  v9 = direct field offset for UIHostingController.modernNavigationBridge;
  type metadata accessor for ModernNavigationBridge();
  v10 = swift_allocObject();
  *(v10 + 16) = -1;
  *&v2[v9] = v10;
  *&v2[direct field offset for UIHostingController.alwaysOnBridge] = 0;
  v11 = direct field offset for UIHostingController.fileImportExportBridge;
  *&v2[v11] = [objc_allocWithZone(type metadata accessor for FileImportExportBridge(0)) init];
  *&v2[direct field offset for UIHostingController.deferredEdges] = 256;
  v12 = MEMORY[0x1E69E7CC0];
  *&v2[direct field offset for UIHostingController.screenEdgesSystemGestureSeedTracker] = MEMORY[0x1E69E7CC0];
  v2[direct field offset for UIHostingController.shouldDeferScreenEdgesSystemGestureToChildViewController] = 0;
  v13 = &v2[direct field offset for UIHostingController.persistentSystemOverlays];
  *v13 = 512;
  v13[2] = 3;
  *&v2[direct field offset for UIHostingController.persistentSystemOverlaysSeedTracker] = v12;
  v2[direct field offset for UIHostingController.shouldDeferPersistentSystemOverlaysToChildViewController] = 0;
  v14 = direct field offset for UIHostingController.backgroundBridge;
  type metadata accessor for ContainerBackgroundBridge();
  swift_allocObject();
  *&v2[v14] = ContainerBackgroundBridge.init()();
  *&v2[direct field offset for UIHostingController.navigationBridge] = 0;
  *&v2[direct field offset for UIHostingController.keyboardShortcutBridge] = 0;
  *&v2[direct field offset for UIHostingController.sizingOptions] = 0;
  sub_18C0A9F94(a1, v6);
  type metadata accessor for _UIHostingView<TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>(0);
  v16 = objc_allocWithZone(v15);
  *&v2[direct field offset for UIHostingController.host] = specialized _UIHostingView.init(rootView:)(v6);
  _s7SwiftUI19UIHostingControllerCyAA10TestIDViewVyAA4ViewPAAE14truePreferenceyQrqd__mAA0I3KeyRd__Sb5ValueRtd__lFQOyAA01_E3AppV04RootG0V_AA030HostingGestureOverlayAuthorityJ0VQo_AM04rootG10IdentifierQrvpZQOy_Qo_GGMaTm_0(0, &lazy cache variable for type metadata for UIHostingController<TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>, type metadata accessor for UIHostingController);
  v20.receiver = v2;
  v20.super_class = v17;
  v18 = objc_msgSendSuper2(&v20, sel_initWithNibName_bundle_, 0, 0);
  specialized UIHostingController._commonInit()(specialized _UIHostingView.updateBackgroundColor(), lazy protocol witness table accessor for type _UIHostingView<TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>> and conformance _UIHostingView<A>);

  sub_18C104F3C(a1);
  return v18;
}

{
  v2 = v1;
  type metadata accessor for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>(0, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.rootViewIdentifier>>.0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - v5;
  *&v1[direct field offset for UIHostingController.allowedBehaviors] = 0;
  *&v1[direct field offset for UIHostingController.requiredBridges] = 0;
  v7 = &v1[direct field offset for UIHostingController.overrides];
  *v7 = xmmword_18CD874C0;
  *(v7 + 2) = 0;
  v7[24] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v7[48] = 2;
  *&v2[direct field offset for UIHostingController.customTabItem] = 0;
  swift_unknownObjectWeakInit();
  *&v2[direct field offset for UIHostingController.toolbarBridge] = 0;
  *&v2[direct field offset for UIHostingController.inspectorBridgeV5] = 0;
  *&v2[direct field offset for UIHostingController.barAppearanceBridge] = 0;
  v8 = direct field offset for UIHostingController.dialogBridge;
  type metadata accessor for UIKitDialogBridge();
  swift_allocObject();
  *&v2[v8] = UIKitDialogBridge.init()();
  *&v2[direct field offset for UIHostingController.testBridge] = 0;
  *&v2[direct field offset for UIHostingController.contentScrollViewBridge] = 0;
  v9 = direct field offset for UIHostingController.modernNavigationBridge;
  type metadata accessor for ModernNavigationBridge();
  v10 = swift_allocObject();
  *(v10 + 16) = -1;
  *&v2[v9] = v10;
  *&v2[direct field offset for UIHostingController.alwaysOnBridge] = 0;
  v11 = direct field offset for UIHostingController.fileImportExportBridge;
  *&v2[v11] = [objc_allocWithZone(type metadata accessor for FileImportExportBridge(0)) init];
  *&v2[direct field offset for UIHostingController.deferredEdges] = 256;
  v12 = MEMORY[0x1E69E7CC0];
  *&v2[direct field offset for UIHostingController.screenEdgesSystemGestureSeedTracker] = MEMORY[0x1E69E7CC0];
  v2[direct field offset for UIHostingController.shouldDeferScreenEdgesSystemGestureToChildViewController] = 0;
  v13 = &v2[direct field offset for UIHostingController.persistentSystemOverlays];
  *v13 = 512;
  v13[2] = 3;
  *&v2[direct field offset for UIHostingController.persistentSystemOverlaysSeedTracker] = v12;
  v2[direct field offset for UIHostingController.shouldDeferPersistentSystemOverlaysToChildViewController] = 0;
  v14 = direct field offset for UIHostingController.backgroundBridge;
  type metadata accessor for ContainerBackgroundBridge();
  swift_allocObject();
  *&v2[v14] = ContainerBackgroundBridge.init()();
  *&v2[direct field offset for UIHostingController.navigationBridge] = 0;
  *&v2[direct field offset for UIHostingController.keyboardShortcutBridge] = 0;
  *&v2[direct field offset for UIHostingController.sizingOptions] = 0;
  outlined init with copy of TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>(a1, v6, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.rootViewIdentifier>>.0);
  _s7SwiftUI14_UIHostingViewCyAA10TestIDViewVyAA01_E3AppV04RootD0VAG04rootD10IdentifierQrvpZQOy_Qo_GGMaTm_0(0, &lazy cache variable for type metadata for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>, type metadata accessor for _UIHostingView);
  v16 = objc_allocWithZone(v15);
  *&v2[direct field offset for UIHostingController.host] = specialized _UIHostingView.init(rootView:)(v6);
  _s7SwiftUI14_UIHostingViewCyAA10TestIDViewVyAA01_E3AppV04RootD0VAG04rootD10IdentifierQrvpZQOy_Qo_GGMaTm_0(0, &lazy cache variable for type metadata for UIHostingController<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>, type metadata accessor for UIHostingController);
  v20.receiver = v2;
  v20.super_class = v17;
  v18 = objc_msgSendSuper2(&v20, sel_initWithNibName_bundle_, 0, 0);
  specialized UIHostingController._commonInit()(&lazy cache variable for type metadata for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>, type metadata accessor for _UIHostingView, _s7SwiftUI14_UIHostingViewCyAA10TestIDViewVyAA01_E3AppV04RootD0VAG04rootD10IdentifierQrvpZQOy_Qo_GGMaTm_0, &lazy protocol witness table cache variable for type _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>> and conformance _UIHostingView<A>, _s7SwiftUI14_UIHostingViewCyAA10TestIDViewVyAA01_E3AppV04RootD0VAG04rootD10IdentifierQrvpZQOy_Qo_GGMaTm_0);

  outlined destroy of TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>(a1, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.rootViewIdentifier>>.0);
  return v18;
}

{
  v2 = v1;
  *&v1[direct field offset for UIHostingController.allowedBehaviors] = 0;
  *&v1[direct field offset for UIHostingController.requiredBridges] = 0;
  v4 = &v1[direct field offset for UIHostingController.overrides];
  *v4 = xmmword_18CD874C0;
  *(v4 + 2) = 0;
  v4[24] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v4[48] = 2;
  *&v2[direct field offset for UIHostingController.customTabItem] = 0;
  swift_unknownObjectWeakInit();
  *&v2[direct field offset for UIHostingController.toolbarBridge] = 0;
  *&v2[direct field offset for UIHostingController.inspectorBridgeV5] = 0;
  *&v2[direct field offset for UIHostingController.barAppearanceBridge] = 0;
  v5 = direct field offset for UIHostingController.dialogBridge;
  type metadata accessor for UIKitDialogBridge();
  swift_allocObject();
  *&v2[v5] = UIKitDialogBridge.init()();
  *&v2[direct field offset for UIHostingController.testBridge] = 0;
  *&v2[direct field offset for UIHostingController.contentScrollViewBridge] = 0;
  v6 = direct field offset for UIHostingController.modernNavigationBridge;
  type metadata accessor for ModernNavigationBridge();
  v7 = swift_allocObject();
  *(v7 + 16) = -1;
  *&v2[v6] = v7;
  *&v2[direct field offset for UIHostingController.alwaysOnBridge] = 0;
  v8 = direct field offset for UIHostingController.fileImportExportBridge;
  *&v2[v8] = [objc_allocWithZone(type metadata accessor for FileImportExportBridge(0)) init];
  *&v2[direct field offset for UIHostingController.deferredEdges] = 256;
  v9 = MEMORY[0x1E69E7CC0];
  *&v2[direct field offset for UIHostingController.screenEdgesSystemGestureSeedTracker] = MEMORY[0x1E69E7CC0];
  v2[direct field offset for UIHostingController.shouldDeferScreenEdgesSystemGestureToChildViewController] = 0;
  v10 = &v2[direct field offset for UIHostingController.persistentSystemOverlays];
  *v10 = 512;
  v10[2] = 3;
  *&v2[direct field offset for UIHostingController.persistentSystemOverlaysSeedTracker] = v9;
  v2[direct field offset for UIHostingController.shouldDeferPersistentSystemOverlaysToChildViewController] = 0;
  v11 = direct field offset for UIHostingController.backgroundBridge;
  type metadata accessor for ContainerBackgroundBridge();
  swift_allocObject();
  *&v2[v11] = ContainerBackgroundBridge.init()();
  *&v2[direct field offset for UIHostingController.navigationBridge] = 0;
  *&v2[direct field offset for UIHostingController.keyboardShortcutBridge] = 0;
  *&v2[direct field offset for UIHostingController.sizingOptions] = 0;
  type metadata accessor for UIHostingController<AnyView>(0, &lazy cache variable for type metadata for _UIHostingView<BoundInputsView>, &type metadata for BoundInputsView, &protocol witness table for BoundInputsView, type metadata accessor for _UIHostingView);
  v13 = objc_allocWithZone(v12);
  *&v2[direct field offset for UIHostingController.host] = specialized _UIHostingView.init(rootView:)(a1);
  type metadata accessor for UIHostingController<AnyView>(0, &lazy cache variable for type metadata for UIHostingController<BoundInputsView>, &type metadata for BoundInputsView, &protocol witness table for BoundInputsView, type metadata accessor for UIHostingController);
  v17.receiver = v2;
  v17.super_class = v14;
  v15 = objc_msgSendSuper2(&v17, sel_initWithNibName_bundle_, 0, 0);
  specialized UIHostingController._commonInit()(specialized _UIHostingView.updateBackgroundColor(), lazy protocol witness table accessor for type _UIHostingView<BoundInputsView> and conformance _UIHostingView<A>);

  return v15;
}

{
  v2 = v1;
  *&v1[direct field offset for UIHostingController.allowedBehaviors] = 0;
  *&v1[direct field offset for UIHostingController.requiredBridges] = 0;
  v4 = &v1[direct field offset for UIHostingController.overrides];
  *v4 = xmmword_18CD874C0;
  *(v4 + 2) = 0;
  v4[24] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v4[48] = 2;
  *&v2[direct field offset for UIHostingController.customTabItem] = 0;
  swift_unknownObjectWeakInit();
  *&v2[direct field offset for UIHostingController.toolbarBridge] = 0;
  *&v2[direct field offset for UIHostingController.inspectorBridgeV5] = 0;
  *&v2[direct field offset for UIHostingController.barAppearanceBridge] = 0;
  v5 = direct field offset for UIHostingController.dialogBridge;
  type metadata accessor for UIKitDialogBridge();
  swift_allocObject();
  *&v2[v5] = UIKitDialogBridge.init()();
  *&v2[direct field offset for UIHostingController.testBridge] = 0;
  *&v2[direct field offset for UIHostingController.contentScrollViewBridge] = 0;
  v6 = direct field offset for UIHostingController.modernNavigationBridge;
  type metadata accessor for ModernNavigationBridge();
  v7 = swift_allocObject();
  *(v7 + 16) = -1;
  *&v2[v6] = v7;
  *&v2[direct field offset for UIHostingController.alwaysOnBridge] = 0;
  v8 = direct field offset for UIHostingController.fileImportExportBridge;
  *&v2[v8] = [objc_allocWithZone(type metadata accessor for FileImportExportBridge(0)) init];
  *&v2[direct field offset for UIHostingController.deferredEdges] = 256;
  v9 = MEMORY[0x1E69E7CC0];
  *&v2[direct field offset for UIHostingController.screenEdgesSystemGestureSeedTracker] = MEMORY[0x1E69E7CC0];
  v2[direct field offset for UIHostingController.shouldDeferScreenEdgesSystemGestureToChildViewController] = 0;
  v10 = &v2[direct field offset for UIHostingController.persistentSystemOverlays];
  *v10 = 512;
  v10[2] = 3;
  *&v2[direct field offset for UIHostingController.persistentSystemOverlaysSeedTracker] = v9;
  v2[direct field offset for UIHostingController.shouldDeferPersistentSystemOverlaysToChildViewController] = 0;
  v11 = direct field offset for UIHostingController.backgroundBridge;
  type metadata accessor for ContainerBackgroundBridge();
  swift_allocObject();
  *&v2[v11] = ContainerBackgroundBridge.init()();
  *&v2[direct field offset for UIHostingController.navigationBridge] = 0;
  *&v2[direct field offset for UIHostingController.keyboardShortcutBridge] = 0;
  *&v2[direct field offset for UIHostingController.sizingOptions] = 0;
  outlined init with copy of DocumentGroupsIntroRootView(a1, v18);
  type metadata accessor for _UIHostingView<BridgedPresentation.RootView>(0, &lazy cache variable for type metadata for _UIHostingView<DocumentGroupsIntroRootView>, lazy protocol witness table accessor for type DocumentGroupsIntroRootView and conformance DocumentGroupsIntroRootView, &type metadata for DocumentGroupsIntroRootView, type metadata accessor for _UIHostingView);
  v13 = objc_allocWithZone(v12);
  *&v2[direct field offset for UIHostingController.host] = specialized _UIHostingView.init(rootView:)(v18);
  type metadata accessor for _UIHostingView<BridgedPresentation.RootView>(0, &lazy cache variable for type metadata for UIHostingController<DocumentGroupsIntroRootView>, lazy protocol witness table accessor for type DocumentGroupsIntroRootView and conformance DocumentGroupsIntroRootView, &type metadata for DocumentGroupsIntroRootView, type metadata accessor for UIHostingController);
  v17.receiver = v2;
  v17.super_class = v14;
  v15 = objc_msgSendSuper2(&v17, sel_initWithNibName_bundle_, 0, 0);
  specialized UIHostingController._commonInit()(&lazy cache variable for type metadata for _UIHostingView<DocumentGroupsIntroRootView>, lazy protocol witness table accessor for type DocumentGroupsIntroRootView and conformance DocumentGroupsIntroRootView, &type metadata for DocumentGroupsIntroRootView, lazy protocol witness table accessor for type _UIHostingView<DocumentGroupsIntroRootView> and conformance _UIHostingView<A>);

  outlined destroy of DocumentGroupsIntroRootView(a1);
  return v15;
}

{
  v2 = v1;
  type metadata accessor for ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[direct field offset for UIHostingController.allowedBehaviors] = 0;
  *&v1[direct field offset for UIHostingController.requiredBridges] = 0;
  v7 = &v1[direct field offset for UIHostingController.overrides];
  *v7 = xmmword_18CD874C0;
  *(v7 + 2) = 0;
  v7[24] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v7[48] = 2;
  *&v2[direct field offset for UIHostingController.customTabItem] = 0;
  swift_unknownObjectWeakInit();
  *&v2[direct field offset for UIHostingController.toolbarBridge] = 0;
  *&v2[direct field offset for UIHostingController.inspectorBridgeV5] = 0;
  *&v2[direct field offset for UIHostingController.barAppearanceBridge] = 0;
  v8 = direct field offset for UIHostingController.dialogBridge;
  type metadata accessor for UIKitDialogBridge();
  swift_allocObject();
  *&v2[v8] = UIKitDialogBridge.init()();
  *&v2[direct field offset for UIHostingController.testBridge] = 0;
  *&v2[direct field offset for UIHostingController.contentScrollViewBridge] = 0;
  v9 = direct field offset for UIHostingController.modernNavigationBridge;
  type metadata accessor for ModernNavigationBridge();
  v10 = swift_allocObject();
  *(v10 + 16) = -1;
  *&v2[v9] = v10;
  *&v2[direct field offset for UIHostingController.alwaysOnBridge] = 0;
  v11 = direct field offset for UIHostingController.fileImportExportBridge;
  *&v2[v11] = [objc_allocWithZone(type metadata accessor for FileImportExportBridge(0)) init];
  *&v2[direct field offset for UIHostingController.deferredEdges] = 256;
  v12 = MEMORY[0x1E69E7CC0];
  *&v2[direct field offset for UIHostingController.screenEdgesSystemGestureSeedTracker] = MEMORY[0x1E69E7CC0];
  v2[direct field offset for UIHostingController.shouldDeferScreenEdgesSystemGestureToChildViewController] = 0;
  v13 = &v2[direct field offset for UIHostingController.persistentSystemOverlays];
  *v13 = 512;
  v13[2] = 3;
  *&v2[direct field offset for UIHostingController.persistentSystemOverlaysSeedTracker] = v12;
  v2[direct field offset for UIHostingController.shouldDeferPersistentSystemOverlaysToChildViewController] = 0;
  v14 = direct field offset for UIHostingController.backgroundBridge;
  type metadata accessor for ContainerBackgroundBridge();
  swift_allocObject();
  *&v2[v14] = ContainerBackgroundBridge.init()();
  *&v2[direct field offset for UIHostingController.navigationBridge] = 0;
  *&v2[direct field offset for UIHostingController.keyboardShortcutBridge] = 0;
  *&v2[direct field offset for UIHostingController.sizingOptions] = 0;
  outlined init with copy of ModifiedContent<AnyView, DocumentBaseModifier>(a1, v6, type metadata accessor for ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>);
  type metadata accessor for _UIHostingView<ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>>(0);
  v16 = objc_allocWithZone(v15);
  *&v2[direct field offset for UIHostingController.host] = specialized _UIHostingView.init(rootView:)(v6);
  _s7SwiftUI14_UIHostingViewCyAA15ModifiedContentVyAA03AnyD0VAA20DocumentBaseModifierVGGMaTm_0(0, &lazy cache variable for type metadata for UIHostingController<ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>>, type metadata accessor for ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for UIHostingController);
  v20.receiver = v2;
  v20.super_class = v17;
  v18 = objc_msgSendSuper2(&v20, sel_initWithNibName_bundle_, 0, 0);
  specialized UIHostingController._commonInit()(specialized _UIHostingView.updateBackgroundColor(), lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>> and conformance _UIHostingView<A>);

  outlined destroy of ModifiedContent<AnyView, DocumentBaseModifier>(a1, type metadata accessor for ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>);
  return v18;
}

{
  v2 = v1;
  type metadata accessor for ModifiedContent<AnyView, DocumentBaseModifier>();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[direct field offset for UIHostingController.allowedBehaviors] = 0;
  *&v1[direct field offset for UIHostingController.requiredBridges] = 0;
  v7 = &v1[direct field offset for UIHostingController.overrides];
  *v7 = xmmword_18CD874C0;
  *(v7 + 2) = 0;
  v7[24] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v7[48] = 2;
  *&v2[direct field offset for UIHostingController.customTabItem] = 0;
  swift_unknownObjectWeakInit();
  *&v2[direct field offset for UIHostingController.toolbarBridge] = 0;
  *&v2[direct field offset for UIHostingController.inspectorBridgeV5] = 0;
  *&v2[direct field offset for UIHostingController.barAppearanceBridge] = 0;
  v8 = direct field offset for UIHostingController.dialogBridge;
  type metadata accessor for UIKitDialogBridge();
  swift_allocObject();
  *&v2[v8] = UIKitDialogBridge.init()();
  *&v2[direct field offset for UIHostingController.testBridge] = 0;
  *&v2[direct field offset for UIHostingController.contentScrollViewBridge] = 0;
  v9 = direct field offset for UIHostingController.modernNavigationBridge;
  type metadata accessor for ModernNavigationBridge();
  v10 = swift_allocObject();
  *(v10 + 16) = -1;
  *&v2[v9] = v10;
  *&v2[direct field offset for UIHostingController.alwaysOnBridge] = 0;
  v11 = direct field offset for UIHostingController.fileImportExportBridge;
  *&v2[v11] = [objc_allocWithZone(type metadata accessor for FileImportExportBridge(0)) init];
  *&v2[direct field offset for UIHostingController.deferredEdges] = 256;
  v12 = MEMORY[0x1E69E7CC0];
  *&v2[direct field offset for UIHostingController.screenEdgesSystemGestureSeedTracker] = MEMORY[0x1E69E7CC0];
  v2[direct field offset for UIHostingController.shouldDeferScreenEdgesSystemGestureToChildViewController] = 0;
  v13 = &v2[direct field offset for UIHostingController.persistentSystemOverlays];
  *v13 = 512;
  v13[2] = 3;
  *&v2[direct field offset for UIHostingController.persistentSystemOverlaysSeedTracker] = v12;
  v2[direct field offset for UIHostingController.shouldDeferPersistentSystemOverlaysToChildViewController] = 0;
  v14 = direct field offset for UIHostingController.backgroundBridge;
  type metadata accessor for ContainerBackgroundBridge();
  swift_allocObject();
  *&v2[v14] = ContainerBackgroundBridge.init()();
  *&v2[direct field offset for UIHostingController.navigationBridge] = 0;
  *&v2[direct field offset for UIHostingController.keyboardShortcutBridge] = 0;
  *&v2[direct field offset for UIHostingController.sizingOptions] = 0;
  outlined init with copy of ModifiedContent<AnyView, DocumentBaseModifier>(a1, v6, type metadata accessor for ModifiedContent<AnyView, DocumentBaseModifier>);
  type metadata accessor for _UIHostingView<ModifiedContent<AnyView, DocumentBaseModifier>>(0);
  v16 = objc_allocWithZone(v15);
  *&v2[direct field offset for UIHostingController.host] = specialized _UIHostingView.init(rootView:)(v6);
  _s7SwiftUI14_UIHostingViewCyAA15ModifiedContentVyAA03AnyD0VAA20DocumentBaseModifierVGGMaTm_0(0, &lazy cache variable for type metadata for UIHostingController<ModifiedContent<AnyView, DocumentBaseModifier>>, type metadata accessor for ModifiedContent<AnyView, DocumentBaseModifier>, lazy protocol witness table accessor for type ModifiedContent<AnyView, DocumentBaseModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for UIHostingController);
  v20.receiver = v2;
  v20.super_class = v17;
  v18 = objc_msgSendSuper2(&v20, sel_initWithNibName_bundle_, 0, 0);
  specialized UIHostingController._commonInit()(specialized _UIHostingView.updateBackgroundColor(), lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<AnyView, DocumentBaseModifier>> and conformance _UIHostingView<A>);

  outlined destroy of ModifiedContent<AnyView, DocumentBaseModifier>(a1, type metadata accessor for ModifiedContent<AnyView, DocumentBaseModifier>);
  return v18;
}

{
  v2 = v1;
  *&v1[direct field offset for UIHostingController.allowedBehaviors] = 0;
  *&v1[direct field offset for UIHostingController.requiredBridges] = 0;
  v4 = &v1[direct field offset for UIHostingController.overrides];
  *v4 = xmmword_18CD874C0;
  *(v4 + 2) = 0;
  v4[24] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v4[48] = 2;
  *&v2[direct field offset for UIHostingController.customTabItem] = 0;
  swift_unknownObjectWeakInit();
  *&v2[direct field offset for UIHostingController.toolbarBridge] = 0;
  *&v2[direct field offset for UIHostingController.inspectorBridgeV5] = 0;
  *&v2[direct field offset for UIHostingController.barAppearanceBridge] = 0;
  v5 = direct field offset for UIHostingController.dialogBridge;
  type metadata accessor for UIKitDialogBridge();
  swift_allocObject();
  *&v2[v5] = UIKitDialogBridge.init()();
  *&v2[direct field offset for UIHostingController.testBridge] = 0;
  *&v2[direct field offset for UIHostingController.contentScrollViewBridge] = 0;
  v6 = direct field offset for UIHostingController.modernNavigationBridge;
  type metadata accessor for ModernNavigationBridge();
  v7 = swift_allocObject();
  *(v7 + 16) = -1;
  *&v2[v6] = v7;
  *&v2[direct field offset for UIHostingController.alwaysOnBridge] = 0;
  v8 = direct field offset for UIHostingController.fileImportExportBridge;
  *&v2[v8] = [objc_allocWithZone(type metadata accessor for FileImportExportBridge(0)) init];
  *&v2[direct field offset for UIHostingController.deferredEdges] = 256;
  v9 = MEMORY[0x1E69E7CC0];
  *&v2[direct field offset for UIHostingController.screenEdgesSystemGestureSeedTracker] = MEMORY[0x1E69E7CC0];
  v2[direct field offset for UIHostingController.shouldDeferScreenEdgesSystemGestureToChildViewController] = 0;
  v10 = &v2[direct field offset for UIHostingController.persistentSystemOverlays];
  *v10 = 512;
  v10[2] = 3;
  *&v2[direct field offset for UIHostingController.persistentSystemOverlaysSeedTracker] = v9;
  v2[direct field offset for UIHostingController.shouldDeferPersistentSystemOverlaysToChildViewController] = 0;
  v11 = direct field offset for UIHostingController.backgroundBridge;
  type metadata accessor for ContainerBackgroundBridge();
  swift_allocObject();
  *&v2[v11] = ContainerBackgroundBridge.init()();
  *&v2[direct field offset for UIHostingController.navigationBridge] = 0;
  *&v2[direct field offset for UIHostingController.keyboardShortcutBridge] = 0;
  *&v2[direct field offset for UIHostingController.sizingOptions] = 0;
  outlined init with copy of BridgedNavigationView.RootView(a1, v18);
  type metadata accessor for _UIHostingView<BridgedPresentation.RootView>(0, &lazy cache variable for type metadata for _UIHostingView<BridgedNavigationView.RootView>, lazy protocol witness table accessor for type BridgedNavigationView.RootView and conformance BridgedNavigationView.RootView, &type metadata for BridgedNavigationView.RootView, type metadata accessor for _UIHostingView);
  v13 = objc_allocWithZone(v12);
  *&v2[direct field offset for UIHostingController.host] = specialized _UIHostingView.init(rootView:)(v18);
  type metadata accessor for _UIHostingView<BridgedPresentation.RootView>(0, &lazy cache variable for type metadata for UIHostingController<BridgedNavigationView.RootView>, lazy protocol witness table accessor for type BridgedNavigationView.RootView and conformance BridgedNavigationView.RootView, &type metadata for BridgedNavigationView.RootView, type metadata accessor for UIHostingController);
  v17.receiver = v2;
  v17.super_class = v14;
  v15 = objc_msgSendSuper2(&v17, sel_initWithNibName_bundle_, 0, 0);
  specialized UIHostingController._commonInit()(&lazy cache variable for type metadata for _UIHostingView<BridgedNavigationView.RootView>, lazy protocol witness table accessor for type BridgedNavigationView.RootView and conformance BridgedNavigationView.RootView, &type metadata for BridgedNavigationView.RootView, lazy protocol witness table accessor for type _UIHostingView<BridgedNavigationView.RootView> and conformance _UIHostingView<A>);

  outlined destroy of BridgedNavigationView.RootView(a1);
  return v15;
}

{
  v2 = v1;
  *&v1[direct field offset for UIHostingController.allowedBehaviors] = 0;
  *&v1[direct field offset for UIHostingController.requiredBridges] = 0;
  v4 = &v1[direct field offset for UIHostingController.overrides];
  *v4 = xmmword_18CD874C0;
  *(v4 + 2) = 0;
  v4[24] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v4[48] = 2;
  *&v2[direct field offset for UIHostingController.customTabItem] = 0;
  swift_unknownObjectWeakInit();
  *&v2[direct field offset for UIHostingController.toolbarBridge] = 0;
  *&v2[direct field offset for UIHostingController.inspectorBridgeV5] = 0;
  *&v2[direct field offset for UIHostingController.barAppearanceBridge] = 0;
  v5 = direct field offset for UIHostingController.dialogBridge;
  type metadata accessor for UIKitDialogBridge();
  swift_allocObject();
  *&v2[v5] = UIKitDialogBridge.init()();
  *&v2[direct field offset for UIHostingController.testBridge] = 0;
  *&v2[direct field offset for UIHostingController.contentScrollViewBridge] = 0;
  v6 = direct field offset for UIHostingController.modernNavigationBridge;
  type metadata accessor for ModernNavigationBridge();
  v7 = swift_allocObject();
  *(v7 + 16) = -1;
  *&v2[v6] = v7;
  *&v2[direct field offset for UIHostingController.alwaysOnBridge] = 0;
  v8 = direct field offset for UIHostingController.fileImportExportBridge;
  *&v2[v8] = [objc_allocWithZone(type metadata accessor for FileImportExportBridge(0)) init];
  *&v2[direct field offset for UIHostingController.deferredEdges] = 256;
  v9 = MEMORY[0x1E69E7CC0];
  *&v2[direct field offset for UIHostingController.screenEdgesSystemGestureSeedTracker] = MEMORY[0x1E69E7CC0];
  v2[direct field offset for UIHostingController.shouldDeferScreenEdgesSystemGestureToChildViewController] = 0;
  v10 = &v2[direct field offset for UIHostingController.persistentSystemOverlays];
  *v10 = 512;
  v10[2] = 3;
  *&v2[direct field offset for UIHostingController.persistentSystemOverlaysSeedTracker] = v9;
  v2[direct field offset for UIHostingController.shouldDeferPersistentSystemOverlaysToChildViewController] = 0;
  v11 = direct field offset for UIHostingController.backgroundBridge;
  type metadata accessor for ContainerBackgroundBridge();
  swift_allocObject();
  *&v2[v11] = ContainerBackgroundBridge.init()();
  *&v2[direct field offset for UIHostingController.navigationBridge] = 0;
  *&v2[direct field offset for UIHostingController.keyboardShortcutBridge] = 0;
  *&v2[direct field offset for UIHostingController.sizingOptions] = 0;
  type metadata accessor for _UIHostingView<BridgedPresentation.RootView>(0, &lazy cache variable for type metadata for _UIHostingView<PreparedCompactColumn>, lazy protocol witness table accessor for type PreparedCompactColumn and conformance PreparedCompactColumn, &type metadata for PreparedCompactColumn, type metadata accessor for _UIHostingView);
  v13 = objc_allocWithZone(v12);
  *&v2[direct field offset for UIHostingController.host] = specialized _UIHostingView.init(rootView:)(a1);
  type metadata accessor for _UIHostingView<BridgedPresentation.RootView>(0, &lazy cache variable for type metadata for UIHostingController<PreparedCompactColumn>, lazy protocol witness table accessor for type PreparedCompactColumn and conformance PreparedCompactColumn, &type metadata for PreparedCompactColumn, type metadata accessor for UIHostingController);
  v17.receiver = v2;
  v17.super_class = v14;
  v15 = objc_msgSendSuper2(&v17, sel_initWithNibName_bundle_, 0, 0);
  specialized UIHostingController._commonInit()(&lazy cache variable for type metadata for _UIHostingView<PreparedCompactColumn>, lazy protocol witness table accessor for type PreparedCompactColumn and conformance PreparedCompactColumn, &type metadata for PreparedCompactColumn, lazy protocol witness table accessor for type _UIHostingView<PreparedCompactColumn> and conformance _UIHostingView<A>);

  return v15;
}

{
  v2 = v1;
  *&v1[direct field offset for UIHostingController.allowedBehaviors] = 0;
  *&v1[direct field offset for UIHostingController.requiredBridges] = 0;
  v4 = &v1[direct field offset for UIHostingController.overrides];
  *v4 = xmmword_18CD874C0;
  *(v4 + 2) = 0;
  v4[24] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v4[48] = 2;
  *&v2[direct field offset for UIHostingController.customTabItem] = 0;
  swift_unknownObjectWeakInit();
  *&v2[direct field offset for UIHostingController.toolbarBridge] = 0;
  *&v2[direct field offset for UIHostingController.inspectorBridgeV5] = 0;
  *&v2[direct field offset for UIHostingController.barAppearanceBridge] = 0;
  v5 = direct field offset for UIHostingController.dialogBridge;
  type metadata accessor for UIKitDialogBridge();
  swift_allocObject();
  *&v2[v5] = UIKitDialogBridge.init()();
  *&v2[direct field offset for UIHostingController.testBridge] = 0;
  *&v2[direct field offset for UIHostingController.contentScrollViewBridge] = 0;
  v6 = direct field offset for UIHostingController.modernNavigationBridge;
  type metadata accessor for ModernNavigationBridge();
  v7 = swift_allocObject();
  *(v7 + 16) = -1;
  *&v2[v6] = v7;
  *&v2[direct field offset for UIHostingController.alwaysOnBridge] = 0;
  v8 = direct field offset for UIHostingController.fileImportExportBridge;
  *&v2[v8] = [objc_allocWithZone(type metadata accessor for FileImportExportBridge(0)) init];
  *&v2[direct field offset for UIHostingController.deferredEdges] = 256;
  v9 = MEMORY[0x1E69E7CC0];
  *&v2[direct field offset for UIHostingController.screenEdgesSystemGestureSeedTracker] = MEMORY[0x1E69E7CC0];
  v2[direct field offset for UIHostingController.shouldDeferScreenEdgesSystemGestureToChildViewController] = 0;
  v10 = &v2[direct field offset for UIHostingController.persistentSystemOverlays];
  *v10 = 512;
  v10[2] = 3;
  *&v2[direct field offset for UIHostingController.persistentSystemOverlaysSeedTracker] = v9;
  v2[direct field offset for UIHostingController.shouldDeferPersistentSystemOverlaysToChildViewController] = 0;
  v11 = direct field offset for UIHostingController.backgroundBridge;
  type metadata accessor for ContainerBackgroundBridge();
  swift_allocObject();
  *&v2[v11] = ContainerBackgroundBridge.init()();
  *&v2[direct field offset for UIHostingController.navigationBridge] = 0;
  *&v2[direct field offset for UIHostingController.keyboardShortcutBridge] = 0;
  *&v2[direct field offset for UIHostingController.sizingOptions] = 0;
  type metadata accessor for _UIHostingView<BridgedPresentation.RootView>(0, &lazy cache variable for type metadata for _UIHostingView<MainContentView>, lazy protocol witness table accessor for type MainContentView and conformance MainContentView, &type metadata for MainContentView, type metadata accessor for _UIHostingView);
  v13 = objc_allocWithZone(v12);
  *&v2[direct field offset for UIHostingController.host] = specialized _UIHostingView.init(rootView:)(a1);
  type metadata accessor for _UIHostingView<BridgedPresentation.RootView>(0, &lazy cache variable for type metadata for UIHostingController<MainContentView>, lazy protocol witness table accessor for type MainContentView and conformance MainContentView, &type metadata for MainContentView, type metadata accessor for UIHostingController);
  v17.receiver = v2;
  v17.super_class = v14;
  v15 = objc_msgSendSuper2(&v17, sel_initWithNibName_bundle_, 0, 0);
  specialized UIHostingController._commonInit()(&lazy cache variable for type metadata for _UIHostingView<MainContentView>, lazy protocol witness table accessor for type MainContentView and conformance MainContentView, &type metadata for MainContentView, lazy protocol witness table accessor for type _UIHostingView<MainContentView> and conformance _UIHostingView<A>);

  return v15;
}

{
  v2 = v1;
  *&v1[direct field offset for UIHostingController.allowedBehaviors] = 0;
  *&v1[direct field offset for UIHostingController.requiredBridges] = 0;
  v4 = &v1[direct field offset for UIHostingController.overrides];
  *v4 = xmmword_18CD874C0;
  *(v4 + 2) = 0;
  v4[24] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v4[48] = 2;
  *&v2[direct field offset for UIHostingController.customTabItem] = 0;
  swift_unknownObjectWeakInit();
  *&v2[direct field offset for UIHostingController.toolbarBridge] = 0;
  *&v2[direct field offset for UIHostingController.inspectorBridgeV5] = 0;
  *&v2[direct field offset for UIHostingController.barAppearanceBridge] = 0;
  v5 = direct field offset for UIHostingController.dialogBridge;
  type metadata accessor for UIKitDialogBridge();
  swift_allocObject();
  *&v2[v5] = UIKitDialogBridge.init()();
  *&v2[direct field offset for UIHostingController.testBridge] = 0;
  *&v2[direct field offset for UIHostingController.contentScrollViewBridge] = 0;
  v6 = direct field offset for UIHostingController.modernNavigationBridge;
  type metadata accessor for ModernNavigationBridge();
  v7 = swift_allocObject();
  *(v7 + 16) = -1;
  *&v2[v6] = v7;
  *&v2[direct field offset for UIHostingController.alwaysOnBridge] = 0;
  v8 = direct field offset for UIHostingController.fileImportExportBridge;
  *&v2[v8] = [objc_allocWithZone(type metadata accessor for FileImportExportBridge(0)) init];
  *&v2[direct field offset for UIHostingController.deferredEdges] = 256;
  v9 = MEMORY[0x1E69E7CC0];
  *&v2[direct field offset for UIHostingController.screenEdgesSystemGestureSeedTracker] = MEMORY[0x1E69E7CC0];
  v2[direct field offset for UIHostingController.shouldDeferScreenEdgesSystemGestureToChildViewController] = 0;
  v10 = &v2[direct field offset for UIHostingController.persistentSystemOverlays];
  *v10 = 512;
  v10[2] = 3;
  *&v2[direct field offset for UIHostingController.persistentSystemOverlaysSeedTracker] = v9;
  v2[direct field offset for UIHostingController.shouldDeferPersistentSystemOverlaysToChildViewController] = 0;
  v11 = direct field offset for UIHostingController.backgroundBridge;
  type metadata accessor for ContainerBackgroundBridge();
  swift_allocObject();
  *&v2[v11] = ContainerBackgroundBridge.init()();
  *&v2[direct field offset for UIHostingController.navigationBridge] = 0;
  *&v2[direct field offset for UIHostingController.keyboardShortcutBridge] = 0;
  *&v2[direct field offset for UIHostingController.sizingOptions] = 0;
  v12 = MEMORY[0x1E6981910];
  v13 = MEMORY[0x1E6981900];
  type metadata accessor for UIHostingController<AnyView>(0, &lazy cache variable for type metadata for _UIHostingView<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for _UIHostingView);
  v15 = objc_allocWithZone(v14);
  *&v2[direct field offset for UIHostingController.host] = specialized _UIHostingView.init(rootView:)(a1);
  type metadata accessor for UIHostingController<AnyView>(0, &lazy cache variable for type metadata for UIHostingController<AnyView>, v12, v13, type metadata accessor for UIHostingController);
  v19.receiver = v2;
  v19.super_class = v16;
  v17 = objc_msgSendSuper2(&v19, sel_initWithNibName_bundle_, 0, 0);
  specialized UIHostingController._commonInit()(specialized _UIHostingView.updateBackgroundColor(), lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>);

  return v17;
}

id UIHostingController.init(rootView:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = specialized UIHostingController.init(rootView:)(a1);
  (*(*(*((v4 & v3) + 0x50) - 8) + 8))(a1);
  return v5;
}

uint64_t type metadata accessor for UIKitDialogBridge()
{
  result = type metadata singleton initialization cache for UIKitDialogBridge;
  if (!type metadata singleton initialization cache for UIKitDialogBridge)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for UIKitDialogBridge()
{
  type metadata accessor for DialogActionContext?(319, &lazy cache variable for type metadata for DialogActionContext?, type metadata accessor for DialogActionContext);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for DialogActionContext?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void type metadata completion function for DialogActionContext()
{
  _s7SwiftUI16CommandOperationVSgMaTm_1(319, &lazy cache variable for type metadata for DialogActionContext.CancelType?, type metadata accessor for DialogActionContext.CancelType);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void type metadata completion function for DialogActionContext.CancelType()
{
  _s7SwiftUI16CommandOperationVSgMaTm_1(319, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
  if (v0 <= 0x3F)
  {
    type metadata accessor for PlatformItemList.Item();
    if (v1 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
    }
  }
}

uint64_t type metadata accessor for PlatformItemList.Item()
{
  result = type metadata singleton initialization cache for PlatformItemList.Item;
  if (!type metadata singleton initialization cache for PlatformItemList.Item)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for PlatformItemList.Item()
{
  _s7SwiftUI16CommandOperationVSgMaTm_0(319, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void *sub_18BD5241C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    _s7SwiftUI16CommandOperationVSgMaTm_1(0, &lazy cache variable for type metadata for DialogActionContext.CancelType?, type metadata accessor for DialogActionContext.CancelType);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t type metadata accessor for CommandOperation()
{
  result = type metadata singleton initialization cache for CommandOperation;
  if (!type metadata singleton initialization cache for CommandOperation)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for CommandOperation()
{
  result = type metadata accessor for CommandGroupPlacement(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for CommandGroupPlacement()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t UIKitDialogBridge.init()()
{
  swift_unknownObjectWeakInit();
  *(v0 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 40) = 0;
  *(v0 + 44) = 2;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  EnvironmentValues.init()();
  v1 = OBJC_IVAR____TtC7SwiftUI17UIKitDialogBridge_lastActionContext;
  v2 = type metadata accessor for DialogActionContext(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC7SwiftUI17UIKitDialogBridge_lastPlatformItemList) = 0;
  *(v0 + OBJC_IVAR____TtC7SwiftUI17UIKitDialogBridge_actionsChangeDetector) = 0;
  return v0;
}

uint64_t type metadata completion function for FileImportExportBridge()
{
  result = type metadata accessor for FileImportExportBridge.PresentationState(319);
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void type metadata accessor for URL?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void _s10Foundation3URLVSgMaTm_0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void _s10Foundation3URLVSgMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s10Foundation3URLVSgMaTm_2(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s10Foundation3URLVSgMaTm_3(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s10Foundation3URLVSgMaTm_4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s10Foundation3URLVSgMaTm_5(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void _s10Foundation3URLVSgMaTm_6(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s10Foundation3URLVSgMaTm_7(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void type metadata completion function for FileImportExportBridge.PresentationState()
{
  type metadata accessor for FileImportExportBridge.Presentation?(319);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t type metadata completion function for FileImportExportBridge.Presentation()
{
  result = type metadata accessor for FileImportOperation(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FileExportOperation(319);
    if (v2 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

void type metadata accessor for Predicate<Pack{URL}>()
{
  if (!lazy cache variable for type metadata for Predicate<Pack{URL}>)
  {
    type metadata accessor for URL();
    v0 = type metadata accessor for Predicate();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Predicate<Pack{URL}>);
    }
  }
}

id UILargeContentViewerInteractionBridge.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_host + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_interaction] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_simultaneousGesture] = 0;
  v2 = &v0[OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_activeItem];
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 4) = 0;
  *&v0[OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTreeSeed] = 0;
  v3 = &v0[OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree];
  _s7SwiftUI33AccessibilityLargeContentViewTreeOWOi1_(v18);
  v4 = v18[13];
  *(v3 + 12) = v18[12];
  *(v3 + 13) = v4;
  *(v3 + 14) = v18[14];
  *(v3 + 120) = v19;
  v5 = v18[9];
  *(v3 + 8) = v18[8];
  *(v3 + 9) = v5;
  v6 = v18[11];
  *(v3 + 10) = v18[10];
  *(v3 + 11) = v6;
  v7 = v18[5];
  *(v3 + 4) = v18[4];
  *(v3 + 5) = v7;
  v8 = v18[7];
  *(v3 + 6) = v18[6];
  *(v3 + 7) = v8;
  v9 = v18[1];
  *v3 = v18[0];
  *(v3 + 1) = v9;
  v10 = v18[3];
  *(v3 + 2) = v18[2];
  *(v3 + 3) = v10;
  v11 = OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_showLargeContentViewer;
  v0[v11] = [objc_opt_self() isEnabled];
  v17.receiver = v0;
  v17.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v17, sel_init);
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 defaultCenter];
  [v15 addObserver:v14 selector:sel_enabledStatusDidChange name:*MEMORY[0x1E69DE088] object:0];

  return v14;
}

double _s7SwiftUI33AccessibilityLargeContentViewTreeOWOi1_(uint64_t a1)
{
  result = 0.0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 240) = 0x8000;
  return result;
}

void type metadata accessor for FocusItem?()
{
  if (!lazy cache variable for type metadata for FocusItem?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for FocusItem?);
    }
  }
}

uint64_t outlined destroy of FocusItem?(uint64_t a1)
{
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for FocusItem?);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for FocusItem(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 48) & 0xF000000000000007) != 0)
  {
    v2 = *(a1 + 40) & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void type metadata accessor for (inserted: Bool, memberAfterInsert: UIHostingViewBase.Options)(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t specialized OptionSet<>.insert(_:)(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  type metadata accessor for (inserted: Bool, memberAfterInsert: UIHostingViewBase.Options)(0, &lazy cache variable for type metadata for (inserted: Bool, memberAfterInsert: UIHostingViewBase.Options), MEMORY[0x1E69DC028]);
  v30 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - v7;
  v9 = type metadata accessor for UIHostingViewBase.Options();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - v15;
  v17 = *(v10 + 16);
  v29 = v2;
  v17(v12, v2, v9, v14);
  v18 = MEMORY[0x1E69DC028];
  v27 = lazy protocol witness table accessor for type GlassMaterialProvider.Options and conformance GlassMaterialProvider.Options(&lazy protocol witness table cache variable for type UIHostingViewBase.Options and conformance UIHostingViewBase.Options, MEMORY[0x1E69DC028]);
  dispatch thunk of SetAlgebra.intersection(_:)();
  v19 = v18;
  v20 = v30;
  lazy protocol witness table accessor for type GlassMaterialProvider.Options and conformance GlassMaterialProvider.Options(&lazy protocol witness table cache variable for type UIHostingViewBase.Options and conformance UIHostingViewBase.Options, v19);
  v28 = a2;
  v21 = dispatch thunk of static Equatable.== infix(_:_:)();
  v22 = *(v20 + 48);
  *v8 = (v21 & 1) == 0;
  if (v21)
  {
    (*(v10 + 32))(&v8[v22], v16, v9);
  }

  else
  {
    (*(v10 + 8))(v16, v9);
    v23 = v28;
    (v17)(&v8[v22], v28, v9);
    (v17)(v12, v23, v9);
    dispatch thunk of SetAlgebra.formUnion(_:)();
  }

  v24 = v31;
  outlined init with take of (inserted: Bool, memberAfterInsert: UIHostingViewBase.Options)(v8, v31, &lazy cache variable for type metadata for (inserted: Bool, memberAfterInsert: UIHostingViewBase.Options), MEMORY[0x1E69DC028]);
  v25 = *v24;
  (*(v10 + 32))(v32, &v24[*(v20 + 48)], v9);
  return v25;
}

{
  v32 = a1;
  type metadata accessor for (inserted: Bool, memberAfterInsert: UIHostingViewBase.Options)(0, &lazy cache variable for type metadata for (inserted: Bool, memberAfterInsert: GlassMaterialProvider.Options), MEMORY[0x1E6999DB8]);
  v30 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - v7;
  v9 = type metadata accessor for GlassMaterialProvider.Options();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - v15;
  v17 = *(v10 + 16);
  v29 = v2;
  v17(v12, v2, v9, v14);
  v18 = MEMORY[0x1E6999DB8];
  v27 = lazy protocol witness table accessor for type GlassMaterialProvider.Options and conformance GlassMaterialProvider.Options(&lazy protocol witness table cache variable for type GlassMaterialProvider.Options and conformance GlassMaterialProvider.Options, MEMORY[0x1E6999DB8]);
  dispatch thunk of SetAlgebra.intersection(_:)();
  v19 = v18;
  v20 = v30;
  lazy protocol witness table accessor for type GlassMaterialProvider.Options and conformance GlassMaterialProvider.Options(&lazy protocol witness table cache variable for type GlassMaterialProvider.Options and conformance GlassMaterialProvider.Options, v19);
  v28 = a2;
  v21 = dispatch thunk of static Equatable.== infix(_:_:)();
  v22 = *(v20 + 48);
  *v8 = (v21 & 1) == 0;
  if (v21)
  {
    (*(v10 + 32))(&v8[v22], v16, v9);
  }

  else
  {
    (*(v10 + 8))(v16, v9);
    v23 = v28;
    (v17)(&v8[v22], v28, v9);
    (v17)(v12, v23, v9);
    dispatch thunk of SetAlgebra.formUnion(_:)();
  }

  v24 = v31;
  outlined init with take of (inserted: Bool, memberAfterInsert: UIHostingViewBase.Options)(v8, v31, &lazy cache variable for type metadata for (inserted: Bool, memberAfterInsert: GlassMaterialProvider.Options), MEMORY[0x1E6999DB8]);
  v25 = *v24;
  (*(v10 + 32))(v32, &v24[*(v20 + 48)], v9);
  return v25;
}

uint64_t outlined init with take of (inserted: Bool, memberAfterInsert: UIHostingViewBase.Options)(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  type metadata accessor for (inserted: Bool, memberAfterInsert: UIHostingViewBase.Options)(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t specialized FocusViewGraph.init(graph:)(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = AGSubgraphGetCurrent();
  swift_beginAccess();
  AGSubgraphSetCurrent();
  swift_beginAccess();
  if ((*(a1 + 361) & 0x20) != 0)
  {
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = xmmword_18CD6A6D0;
    type metadata accessor for FocusItem?();
    Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of FocusItem?(&v8);
    v4 = static CustomEventTrace.recordNamedProperty<A>(_:_:)();
    *&v8 = 0;
    BYTE8(v8) = 0;
    v9 = xmmword_18CD76350;
    Attribute.init<A>(body:value:flags:update:)();
    v3 = v4 | (static CustomEventTrace.recordNamedProperty<A>(_:_:)() << 32);
    v5 = MEMORY[0x1E69E7CC0];
    v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI12PropertyListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    *&v8 = 0;
    *(&v8 + 1) = v5;
    *&v9 = v6;
    Attribute.init<A>(body:value:flags:update:)();

    static CustomEventTrace.recordNamedProperty<A>(_:_:)();
    static CoreTesting.isRunning.getter();
    LOBYTE(v8) = 0;
    Attribute.init<A>(body:value:flags:update:)();
  }

  else
  {
    v3 = *MEMORY[0x1E698D3F8] | (*MEMORY[0x1E698D3F8] << 32);
  }

  AGSubgraphSetCurrent();

  return v3;
}

unint64_t lazy protocol witness table accessor for type FocusViewGraph and conformance FocusViewGraph()
{
  result = lazy protocol witness table cache variable for type FocusViewGraph and conformance FocusViewGraph;
  if (!lazy protocol witness table cache variable for type FocusViewGraph and conformance FocusViewGraph)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FocusViewGraph and conformance FocusViewGraph);
  }

  return result;
}

__n128 __swift_memcpy19_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type PlatformItemListViewGraph and conformance PlatformItemListViewGraph()
{
  result = lazy protocol witness table cache variable for type PlatformItemListViewGraph and conformance PlatformItemListViewGraph;
  if (!lazy protocol witness table cache variable for type PlatformItemListViewGraph and conformance PlatformItemListViewGraph)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItemListViewGraph and conformance PlatformItemListViewGraph);
  }

  return result;
}

uint64_t __swift_memcpy10_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t AccessibilityViewGraph.init(graph:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = AGSubgraphGetCurrent();
  swift_beginAccess();
  AGSubgraphSetCurrent();
  swift_beginAccess();
  if ((*(a1 + 361) & 0x20) != 0)
  {
    v7 = MEMORY[0x1E69E7CC0];
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI30AccessibilityEnabledTechnologyO_SDyAC0E5FocusV5MatchOShyAC8UniqueIDVGGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v5 = Attribute.init<A>(body:value:flags:update:)();

    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI30AccessibilityEnabledTechnologyO_AC0E5FocusV6TargetVTt0g5Tf4g_n(v7);

    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI30AccessibilityEnabledTechnologyO_AC0E5FocusV6TargetVTt0g5Tf4g_n(v7);
    v6 = Attribute.init<A>(body:value:flags:update:)();
  }

  else
  {
    v5 = *MEMORY[0x1E698D3F8];
    v6 = *MEMORY[0x1E698D3F8];
  }

  AGSubgraphSetCurrent();

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 24) = 0;
  *(a2 + 16) = 0;
  *(a2 + 28) = 0;
  *(a2 + 32) = 0;
  *(a2 + 36) = v5;
  *(a2 + 40) = v6;
  *(a2 + 44) = 1;
  *(a2 + 48) = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityViewGraph and conformance AccessibilityViewGraph()
{
  result = lazy protocol witness table cache variable for type AccessibilityViewGraph and conformance AccessibilityViewGraph;
  if (!lazy protocol witness table cache variable for type AccessibilityViewGraph and conformance AccessibilityViewGraph)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityViewGraph and conformance AccessibilityViewGraph);
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

uint64_t initializeWithCopy for AccessibilityViewGraph(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t lazy protocol witness table accessor for type HoverEventDispatcher and conformance HoverEventDispatcher()
{
  result = lazy protocol witness table cache variable for type HoverEventDispatcher and conformance HoverEventDispatcher;
  if (!lazy protocol witness table cache variable for type HoverEventDispatcher and conformance HoverEventDispatcher)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HoverEventDispatcher and conformance HoverEventDispatcher);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HoverEvent and conformance HoverEvent()
{
  result = lazy protocol witness table cache variable for type HoverEvent and conformance HoverEvent;
  if (!lazy protocol witness table cache variable for type HoverEvent and conformance HoverEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HoverEvent and conformance HoverEvent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PencilDoubleTapEventDispatcher and conformance PencilDoubleTapEventDispatcher()
{
  result = lazy protocol witness table cache variable for type PencilDoubleTapEventDispatcher and conformance PencilDoubleTapEventDispatcher;
  if (!lazy protocol witness table cache variable for type PencilDoubleTapEventDispatcher and conformance PencilDoubleTapEventDispatcher)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PencilDoubleTapEventDispatcher and conformance PencilDoubleTapEventDispatcher);
  }

  return result;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E7BindingVTt0g5Tf4g_n(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  type metadata accessor for _DictionaryStorage<Edge, Bool>(0, &lazy cache variable for type metadata for _DictionaryStorage<EventID, EventBinding>, lazy protocol witness table accessor for type EventID and conformance EventID);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v12 = (v3[6] + 16 * v9);
    *v12 = v4;
    v12[1] = v5;
    *(v3[7] + 8 * v9) = result;
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

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v5);
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

unint64_t lazy protocol witness table accessor for type PencilDoubleTapEvent and conformance PencilDoubleTapEvent()
{
  result = lazy protocol witness table cache variable for type PencilDoubleTapEvent and conformance PencilDoubleTapEvent;
  if (!lazy protocol witness table cache variable for type PencilDoubleTapEvent and conformance PencilDoubleTapEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PencilDoubleTapEvent and conformance PencilDoubleTapEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PencilDoubleTapEvent and conformance PencilDoubleTapEvent;
  if (!lazy protocol witness table cache variable for type PencilDoubleTapEvent and conformance PencilDoubleTapEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PencilDoubleTapEvent and conformance PencilDoubleTapEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PencilDoubleTapEvent and conformance PencilDoubleTapEvent;
  if (!lazy protocol witness table cache variable for type PencilDoubleTapEvent and conformance PencilDoubleTapEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PencilDoubleTapEvent and conformance PencilDoubleTapEvent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PencilSqueezeEventDispatcher and conformance PencilSqueezeEventDispatcher()
{
  result = lazy protocol witness table cache variable for type PencilSqueezeEventDispatcher and conformance PencilSqueezeEventDispatcher;
  if (!lazy protocol witness table cache variable for type PencilSqueezeEventDispatcher and conformance PencilSqueezeEventDispatcher)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PencilSqueezeEventDispatcher and conformance PencilSqueezeEventDispatcher);
  }

  return result;
}

uint64_t UIKitEventBindingBridge.init(eventBindingManager:)()
{
  v0[4] = 0;
  v0[6] = 0;
  if ((MEMORY[0x18D008800]() & 1) == 0)
  {
    v1 = [objc_allocWithZone(type metadata accessor for UIKitGestureRecognizer()) init];
    v2 = v0[4];
    v0[4] = v1;
  }

  v0[5] = [objc_allocWithZone(type metadata accessor for UIKitHoverGestureRecognizer()) init];

  v3 = EventBindingBridge.init(eventBindingManager:)();
  v4 = *(v3 + 32);
  if (v4)
  {
    swift_weakAssign();
    Strong = swift_weakLoadStrong();
    v6 = *((*MEMORY[0x1E69E7D40] & *v4) + 0xF0);

    v7 = v4;
    v6(Strong);
  }

  else
  {
  }

  swift_weakAssign();

  return v3;
}

unint64_t lazy protocol witness table accessor for type PencilSqueezeEvent and conformance PencilSqueezeEvent()
{
  result = lazy protocol witness table cache variable for type PencilSqueezeEvent and conformance PencilSqueezeEvent;
  if (!lazy protocol witness table cache variable for type PencilSqueezeEvent and conformance PencilSqueezeEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PencilSqueezeEvent and conformance PencilSqueezeEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PencilSqueezeEvent and conformance PencilSqueezeEvent;
  if (!lazy protocol witness table cache variable for type PencilSqueezeEvent and conformance PencilSqueezeEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PencilSqueezeEvent and conformance PencilSqueezeEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PencilSqueezeEvent and conformance PencilSqueezeEvent;
  if (!lazy protocol witness table cache variable for type PencilSqueezeEvent and conformance PencilSqueezeEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PencilSqueezeEvent and conformance PencilSqueezeEvent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KeyEventDispatcher and conformance KeyEventDispatcher()
{
  result = lazy protocol witness table cache variable for type KeyEventDispatcher and conformance KeyEventDispatcher;
  if (!lazy protocol witness table cache variable for type KeyEventDispatcher and conformance KeyEventDispatcher)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KeyEventDispatcher and conformance KeyEventDispatcher);
  }

  return result;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_SayAC8KeyPressV7HandlerVGTt0g5Tf4g_n(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  type metadata accessor for _DictionaryStorage<NavigationState.ListKey, [Binding<Bool>]>(0, &lazy cache variable for type metadata for _DictionaryStorage<EventID, [KeyPress.Handler]>, type metadata accessor for [KeyPress.Handler], lazy protocol witness table accessor for type EventID and conformance EventID);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v12 = (v3[6] + 16 * v9);
    *v12 = v4;
    v12[1] = v5;
    *(v3[7] + 8 * v9) = result;
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

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v5);
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

unint64_t lazy protocol witness table accessor for type KeyEvent and conformance KeyEvent()
{
  result = lazy protocol witness table cache variable for type KeyEvent and conformance KeyEvent;
  if (!lazy protocol witness table cache variable for type KeyEvent and conformance KeyEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KeyEvent and conformance KeyEvent);
  }

  return result;
}

uint64_t type metadata accessor for UIKitEventBindingBridge()
{
  result = type metadata singleton initialization cache for UIKitEventBindingBridge;
  if (!type metadata singleton initialization cache for UIKitEventBindingBridge)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _UIHostingView.as<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v48 = a3;
  v43 = *MEMORY[0x1E69E7D40] & *v3;
  v46 = type metadata accessor for Optional();
  v6 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v47 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v40 - v9;
  v11 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v42 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v40 - v15;
  UIHostingViewBase._as<A>(_:)();
  v17 = *(v11 + 48);
  if (v17(v10, 1, a2) != 1)
  {
    v30 = *(v11 + 32);
    v30(v16, v10, a2);
    v29 = v48;
    v30(v48, v16, a2);
    v31 = 0;
    v24 = a2;
    return (*(v11 + 56))(v29, v31, 1, v24);
  }

  v44 = v11;
  v41 = a2;
  v18 = *(v6 + 8);
  v19 = v46;
  v18(v10, v46);
  v40 = v3;
  v20 = _UIHostingView.viewController.getter();
  if (v20)
  {
    v21 = v20;
    v22 = v47;
    v23 = a1;
    v24 = v41;
    UIHostingController._as<A>(_:)(a1, v41, v47);

    v25 = v22;
    if (v17(v22, 1, v24) != 1)
    {
      v11 = v44;
      v26 = v25;
      v27 = *(v44 + 32);
      v28 = v42;
      v27(v42, v26, v24);
      v29 = v48;
      v27(v48, v28, v24);
LABEL_61:
      v31 = 0;
      return (*(v11 + 56))(v29, v31, 1, v24);
    }
  }

  else
  {
    v25 = v47;
    v24 = v41;
    (*(v44 + 56))(v47, 1, 1, v41);
    v23 = a1;
  }

  v18(v25, v19);
  if (type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for FocusHost) == v23)
  {
    type metadata accessor for _UIHostingView();
    result = swift_getWitnessTable();
    v49 = v40;
    v50 = result;
    v11 = v44;
    if (v45 == 16)
    {
      v29 = v48;
      (*(v44 + 16))(v48, &v49, v24);
      goto LABEL_61;
    }

    __break(1u);
    goto LABEL_64;
  }

  v32 = type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for PlatformItemListHost);
  v11 = v44;
  if (v32 == v23)
  {
    v49 = v40;
    v50 = &protocol witness table for _UIHostingView<A>;
    v29 = v48;
    if (v45 == 16)
    {
      goto LABEL_60;
    }

    __break(1u);
    goto LABEL_31;
  }

  v33 = type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for AccessibilityHost);
  v29 = v48;
  if (v33 == v23)
  {
LABEL_31:
    v49 = v40;
    v50 = &protocol witness table for _UIHostingView<A>;
    if (v45 == 16)
    {
      goto LABEL_60;
    }

    __break(1u);
    goto LABEL_33;
  }

  if (type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for UICoreViewControllerProvider) == v23)
  {
LABEL_33:
    type metadata accessor for _UIHostingView();
    WitnessTable = swift_getWitnessTable();
    v49 = v40;
    v50 = WitnessTable;
    if (v45 == 16)
    {
      goto LABEL_60;
    }

    __break(1u);
    goto LABEL_35;
  }

  if (type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for EventGraphHost) == v23)
  {
LABEL_35:
    type metadata accessor for _UIHostingView();
    v36 = swift_getWitnessTable();
    v49 = v40;
    v50 = v36;
    if (v45 == 16)
    {
      goto LABEL_60;
    }

    __break(1u);
    goto LABEL_37;
  }

  if (type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for PointerHost) == v23)
  {
LABEL_37:
    v49 = v40;
    v50 = &protocol witness table for _UIHostingView<A>;
    if (v45 == 16)
    {
      goto LABEL_60;
    }

    __break(1u);
    goto LABEL_39;
  }

  if (type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for WindowLayoutHost) == v23)
  {
LABEL_39:
    v49 = v40;
    v50 = &protocol witness table for _UIHostingView<A>;
    if (v45 == 16)
    {
      goto LABEL_60;
    }

    __break(1u);
    goto LABEL_41;
  }

  if (type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView) == v23)
  {
LABEL_41:
    v49 = v40;
    if (v45 == 8)
    {
      goto LABEL_60;
    }

    __break(1u);
    goto LABEL_43;
  }

  if (type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for CurrentEventProvider) == v23)
  {
LABEL_43:
    v49 = v40;
    v50 = &protocol witness table for _UIHostingView<A>;
    if (v45 == 16)
    {
      goto LABEL_60;
    }

    __break(1u);
    goto LABEL_45;
  }

  if (type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for FallbackResponderProvider) == v23)
  {
LABEL_45:
    v49 = v40;
    v50 = &protocol witness table for _UIHostingView<A>;
    if (v45 == 16)
    {
      goto LABEL_60;
    }

    __break(1u);
    goto LABEL_47;
  }

  if (type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for ContainerBackgroundHost) == v23)
  {
LABEL_47:
    v49 = v40;
    v50 = &protocol witness table for _UIHostingView<A>;
    if (v45 == 16)
    {
      goto LABEL_60;
    }

    __break(1u);
LABEL_49:
    v51 = type metadata accessor for _UIHostingView();
    result = swift_getWitnessTable();
    v52 = result;
    v37 = v40;
    v49 = v40;
    if (v45 != 40)
    {
      __break(1u);
      goto LABEL_69;
    }

    goto LABEL_50;
  }

  if (type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for RootTransformAdjuster) == v23)
  {
    goto LABEL_49;
  }

  if (type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for RootTransformUpdater) == v23)
  {
    v49 = v40;
    v50 = &protocol witness table for _UIHostingView<A>;
    if (v45 == 16)
    {
      goto LABEL_60;
    }

    __break(1u);
    goto LABEL_53;
  }

  if (type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for ViewRendererHost) == v23)
  {
LABEL_53:
    type metadata accessor for _UIHostingView();
    v39 = swift_getWitnessTable();
    v49 = v40;
    v50 = v39;
    if (v45 == 16)
    {
      goto LABEL_60;
    }

    __break(1u);
    goto LABEL_55;
  }

  if (type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for UIHostingViewProvider) == v23)
  {
LABEL_55:
    v49 = v40;
    v50 = &protocol witness table for _UIHostingView<A>;
    if (v45 != 16)
    {
      __break(1u);
LABEL_57:
      v51 = type metadata accessor for _UIHostingView();
      result = swift_getWitnessTable();
      v52 = result;
      v37 = v40;
      v49 = v40;
      if (v45 != 40)
      {
        __break(1u);
LABEL_59:
        v49 = v40;
        v50 = &protocol witness table for _UIHostingView<A>;
        if (v45 == 16)
        {
          goto LABEL_60;
        }

LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

LABEL_50:
      (*(v11 + 16))(v29, &v49, v24);
      v38 = v37;
      __swift_destroy_boxed_opaque_existential_1(&v49);
      goto LABEL_61;
    }

LABEL_60:
    (*(v11 + 16))(v29, &v49, v24);
    goto LABEL_61;
  }

  if (type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for ViewGraphRenderObserver) == v23)
  {
    goto LABEL_57;
  }

  result = type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for ToolbarInputFeatureDelegate);
  if (result == v23)
  {
    goto LABEL_59;
  }

  result = type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for ViewGraphBridgePropertiesDelegate);
  if (result == v23)
  {
LABEL_64:
    v49 = v40;
    v50 = &protocol witness table for _UIHostingView<A>;
    if (v45 == 16)
    {
LABEL_67:
      v11 = v44;
      v29 = v48;
      v24 = v41;
      (*(v44 + 16))(v48, &v49, v41);
      goto LABEL_61;
    }

    __break(1u);
    goto LABEL_66;
  }

  result = type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for SensoryFeedbackCacheHost);
  if (result != v23)
  {
    v31 = 1;
    v24 = v41;
    v29 = v48;
    v11 = v44;
    return (*(v11 + 56))(v29, v31, 1, v24);
  }

LABEL_66:
  v49 = v40;
  v50 = &protocol witness table for _UIHostingView<A>;
  if (v45 == 16)
  {
    goto LABEL_67;
  }

LABEL_70:
  __break(1u);
  return result;
}

void _UIHostingView.frame.setter(SEL *a1, SEL *a2, double a3, double a4, double a5, double a6)
{
  if (*(v6 + *((*MEMORY[0x1E69E7D40] & *v6) + 0x90)) == 1)
  {
    [v6 *a1];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21.receiver = v6;
    v21.super_class = type metadata accessor for _UIHostingView();
    objc_msgSendSuper2(&v21, *a2, a3, a4, a5, a6);
    v20 = _UIHostingView.base.getter();
    v22.origin.x = v13;
    v22.origin.y = v15;
    v22.size.width = v17;
    v22.size.height = v19;
    UIHostingViewBase.frameDidChange(oldValue:)(v22);
  }
}

double @objc _UIHostingView.frame.getter(void *a1, uint64_t a2, SEL *a3)
{
  v4 = a1;
  _UIHostingView.frame.getter(a3);
  v6 = v5;

  return v6;
}

id _UIHostingView.frame.getter(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for _UIHostingView();
  return objc_msgSendSuper2(&v4, *a1);
}

void @objc _UIHostingView.frame.setter(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  _UIHostingView.frame.setter(&selRef_frame, &selRef_setFrame_, a2, a3, a4, a5);
}

void *_UIHostingView.base.getter()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x70);
  v3 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x68));
  if (*(v0 + v2))
  {
    *(v0 + v2) = 1;
    v4 = v3;
    return v3;
  }

  v5 = v3;
  v6 = UIHostingViewBase.uiView.getter();
  if (v6)
  {

    if (UIHostingViewBase.delegate.getter())
    {
      goto LABEL_5;
    }

LABEL_8:
    type metadata accessor for _UIHostingView();
    swift_getWitnessTable();
    swift_unknownObjectRetain();
    UIHostingViewBase.delegate.setter();
    if (UIHostingViewBase.updateDelegate.getter())
    {
      goto LABEL_6;
    }

LABEL_9:
    type metadata accessor for _UIHostingView();
    swift_getWitnessTable();
    swift_unknownObjectRetain();
    UIHostingViewBase.updateDelegate.setter();
    goto LABEL_10;
  }

  v7 = v0;
  UIHostingViewBase.uiView.setter();
  if (!UIHostingViewBase.delegate.getter())
  {
    goto LABEL_8;
  }

LABEL_5:
  swift_unknownObjectRelease();
  if (!UIHostingViewBase.updateDelegate.getter())
  {
    goto LABEL_9;
  }

LABEL_6:
  swift_unknownObjectRelease();
LABEL_10:
  UIHostingViewBase.viewGraph.getter();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    UIHostingViewBase.viewGraph.getter();

    type metadata accessor for _UIHostingView();
    swift_getWitnessTable();
    swift_unknownObjectRetain();
    DisplayList.ViewRenderer.host.setter();
  }

  *(v0 + *((*v1 & *v0) + 0x70)) = 1;
  return v3;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI15SensoryFeedbackV0F4TypeO_So19UIFeedbackGeneratorCTt0g5Tf4g_n(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  type metadata accessor for _DictionaryStorage<SensoryFeedback.FeedbackType, UIFeedbackGenerator>();
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  result = specialized __RawDictionaryStorage.find<A>(_:)(v4, v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v18 = v6;
    return v3;
  }

  v9 = (a1 + 9);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v10 = (v3[6] + 16 * result);
    *v10 = v4;
    v10[1] = v5;
    *(v3[7] + 8 * result) = v6;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v9 + 3;
    v4 = *(v9 - 2);
    v5 = *(v9 - 1);
    v15 = *v9;
    v16 = v6;
    result = specialized __RawDictionaryStorage.find<A>(_:)(v4, v5);
    v9 = v14;
    v6 = v15;
    if (v17)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized _UIHostingView.feedbackCache.getter()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x180);
  if (*(v0 + v1))
  {
    v2 = *(v0 + v1);
  }

  else
  {
    type metadata accessor for UIKitSensoryFeedbackCache();
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v2 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI15SensoryFeedbackV0F4TypeO_So19UIFeedbackGeneratorCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t UIKitStatusBarBridge.addPreferences(to:)()
{
  v1 = v0;
  GraphHost.addPreference<A>(_:)();
  swift_beginAccess();
  v2 = *(v0 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 24) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
    *(v1 + 24) = v2;
  }

  v5 = *(v2 + 2);
  v4 = *(v2 + 3);
  if (v5 >= v4 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v2);
  }

  *(v2 + 2) = v5 + 1;
  v6 = &v2[24 * v5];
  *(v6 + 4) = &type metadata for StatusBarKey;
  *(v6 + 5) = &protocol witness table for StatusBarKey;
  *(v6 + 12) = -1;
  *(v1 + 24) = v2;
  swift_endAccess();
  static Semantics.v7.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) == 0)
  {
    swift_beginAccess();
    v7 = *(v1 + 24);
    v8 = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 24) = v7;
    if ((v8 & 1) == 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
      *(v1 + 24) = v7;
    }

    v10 = *(v7 + 2);
    v9 = *(v7 + 3);
    if (v10 >= v9 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v7);
    }

    *(v7 + 2) = v10 + 1;
    v11 = &v7[24 * v10];
    *(v11 + 4) = &type metadata for HostingGestureOverlayAuthorityKey;
    *(v11 + 5) = &protocol witness table for HostingGestureOverlayAuthorityKey;
    *(v11 + 12) = -1;
    *(v1 + 24) = v7;
    swift_endAccess();
  }

  swift_beginAccess();
  VersionSeedSetTracker.updateSeedsToEmpty()();
  return swift_endAccess();
}
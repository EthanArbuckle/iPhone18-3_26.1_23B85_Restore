SwiftUI::BorderedListStyle __swiftcall BorderedListStyle.init()()
{
  result.options.rawValue = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

void __swiftcall UIKitButtonAdaptorCoordinator.makeMenu()(UIMenu_optional *__return_ptr retstr)
{
  v2 = type metadata accessor for MenuVisitor(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v1 + OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_menuAttribute + 8) & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](0);
    static Update.ensure<A>(_:)();
    v5 = v43;
    if (*(v43 + 16))
    {
      v6 = OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_effectiveLabelStyle;
      v7 = *(v1 + OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_effectiveLabelStyle);
      KeyPath = swift_getKeyPath();
      v9 = swift_getKeyPath();
      v10 = swift_getKeyPath();
      outlined consume of Environment<CGFloat?>.Content(KeyPath, 0, 0);
      outlined consume of Environment<CGFloat?>.Content(v9, 0, 0);
      outlined consume of Environment<CGFloat?>.Content(v10, 0, 0);
      if (v7 == &type metadata for TitleAndIconLabelStyle)
      {
        v11 = 16;
      }

      else
      {
        v11 = 16 * (*(v1 + v6) == &type metadata for IconOnlyLabelStyle);
      }

      static Semantics.v6.getter();
      if ((isLinkedOnOrAfter(_:)() & 1) == 0)
      {
        v11 = 0;
      }

      v12 = *(v1 + OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_menuTitle);
      v13 = *(v1 + OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_menuTitle + 8);
      v42 = v1;
      if (v13)
      {
        type metadata accessor for UIMenu();
        v14 = MEMORY[0x1E69E7CC0];
        v43 = MEMORY[0x1E69E7CC0];

        v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_7SwiftUI16PlatformItemListVTt0g5Tf4g_n(v14);
        v16 = MEMORY[0x1E69E7CC8];
        v4[8] = 0;
        *(v4 + 2) = v16;
        *(v4 + 3) = v15;
        *(v4 + 4) = v14;
        *(v4 + 5) = v16;
        v4[48] = 0;
        type metadata accessor for _ContiguousArrayStorage<MenuVisitor.MenuStackGroup>();
        v17 = type metadata accessor for MenuVisitor.MenuStackGroup(0);
        v18 = (*(*(v17 - 8) + 80) + 32) & ~*(*(v17 - 8) + 80);
        v19 = swift_allocObject();
        *(v19 + 16) = xmmword_18CD63400;
        if (one-time initialization token for empty != -1)
        {
          swift_once();
        }

        v20 = __swift_project_value_buffer(v17, static MenuVisitor.MenuStackGroup.empty);
        outlined init with copy of MenuVisitor.MenuStackGroup(v20, v19 + v18);
        *(v4 + 7) = v19;
        v21 = *(v2 + 32);
        v22 = type metadata accessor for HashableCommandGroupPlacementWrapper(0);
        (*(*(v22 - 8) + 56))(&v4[v21], 1, 1, v22);
        *v4 = 0;
        MenuVisitor.visit(_:uniqueNames:)(v5, &v43);

        v23 = *(v4 + 4);

        outlined destroy of MenuVisitor(v4);
        v24._countAndFlagsBits = v12;
        v24._object = v13;
        v44.value.super.isa = 0;
        v44.is_nil = 0;
        UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v25, v24, 0, v44, v11, 0xFFFFFFFFFFFFFFFFLL, v23, v40);
      }

      else
      {
        type metadata accessor for UIMenu();
        v27 = MEMORY[0x1E69E7CC0];
        v43 = MEMORY[0x1E69E7CC0];
        v28 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_7SwiftUI16PlatformItemListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v29 = MEMORY[0x1E69E7CC8];
        v4[8] = 0;
        *(v4 + 2) = v29;
        *(v4 + 3) = v28;
        *(v4 + 4) = v27;
        *(v4 + 5) = v29;
        v4[48] = 0;
        type metadata accessor for _ContiguousArrayStorage<MenuVisitor.MenuStackGroup>();
        v30 = type metadata accessor for MenuVisitor.MenuStackGroup(0);
        v31 = (*(*(v30 - 8) + 80) + 32) & ~*(*(v30 - 8) + 80);
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_18CD63400;
        if (one-time initialization token for empty != -1)
        {
          swift_once();
        }

        v33 = __swift_project_value_buffer(v30, static MenuVisitor.MenuStackGroup.empty);
        outlined init with copy of MenuVisitor.MenuStackGroup(v33, v32 + v31);
        *(v4 + 7) = v32;
        v34 = *(v2 + 32);
        v35 = type metadata accessor for HashableCommandGroupPlacementWrapper(0);
        (*(*(v35 - 8) + 56))(&v4[v34], 1, 1, v35);
        *v4 = 0;
        MenuVisitor.visit(_:uniqueNames:)(v5, &v43);

        v36 = *(v4 + 4);

        outlined destroy of MenuVisitor(v4);
        v37._countAndFlagsBits = 0;
        v37._object = 0xE000000000000000;
        v45.value.super.isa = 0;
        v45.is_nil = 0;
        UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v38, v37, v12, v45, v11, 0xFFFFFFFFFFFFFFFFLL, v36, v40);
      }

      v39 = *(v42 + OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_menuControlGroupSize);
      if (v39 != 2)
      {
        [v26 setPreferredElementSize_];
      }
    }

    else
    {
    }
  }
}

uint64_t UIKitButtonAdaptorCoordinator.__ivar_destroyer()
{
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(*(v0 + OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_action));

  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(*(v0 + OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_onMenuPresentationChanged));
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

id UIKitButtonAdaptorCoordinator.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_sheetBridgeToken];
  if (v2)
  {
    v3 = objc_opt_self();
    swift_unknownObjectRetain_n();
    v4 = [v3 defaultCenter];
    [v4 removeObserver_];
    swift_unknownObjectRelease_n();
  }

  v5 = *&v0[OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_popoverBridgeToken];
  if (v5)
  {
    v6 = objc_opt_self();
    swift_unknownObjectRetain_n();
    v7 = [v6 defaultCenter];
    [v7 removeObserver_];
    swift_unknownObjectRelease_n();
  }

  v9.receiver = v0;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_dealloc);
}

Swift::Void __swiftcall UIKitButtonAdaptorCoordinator.setupNotifications(_:)(UIButton *a1)
{
  v2 = [objc_opt_self() defaultCenter];
  if (one-time initialization token for willDismiss != -1)
  {
    swift_once();
  }

  v3 = static SheetBridgeNotifications.willDismiss;
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = partial apply for closure #1 in UIKitButtonAdaptorCoordinator.setupNotifications(_:);
  v16 = v4;
  v11 = MEMORY[0x1E69E9820];
  v12 = 1107296256;
  v13 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
  v14 = &block_descriptor_75;
  v5 = _Block_copy(&v11);

  v6 = [v2 addObserverForName:v3 object:0 queue:0 usingBlock:v5];
  _Block_release(v5);
  if (one-time initialization token for willPresent != -1)
  {
    swift_once();
  }

  v7 = static SheetPopoverBridgeNotifications.willPresent;
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = partial apply for closure #2 in UIKitButtonAdaptorCoordinator.setupNotifications(_:);
  v16 = v8;
  v11 = MEMORY[0x1E69E9820];
  v12 = 1107296256;
  v13 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
  v14 = &block_descriptor_6_0;
  v9 = _Block_copy(&v11);

  v10 = [v2 addObserverForName:v7 object:0 queue:0 usingBlock:v9];

  _Block_release(v9);
  *(v1 + OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_sheetBridgeToken) = v6;
  swift_unknownObjectRelease();
  *(v1 + OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_popoverBridgeToken) = v10;
  swift_unknownObjectRelease();
}

uint64_t closure #1 in UIKitButtonAdaptorCoordinator.makeMenu()@<X0>(uint64_t *a1@<X8>)
{
  if (AGGraphGetWeakValue())
  {
  }

  else
  {
    result = MEMORY[0x1E69E7CC0];
  }

  *a1 = result;
  return result;
}

Swift::Void __swiftcall UIKitButtonAdaptorCoordinator.menuWillShow(interaction:)(UIContextMenuInteraction interaction)
{
  if (*(v1 + OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_menuAttribute + 8))
  {
    v2 = (v1 + OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_menuChangeDetector);
    swift_beginAccess();
    *v2 = 0;
  }

  else
  {
    v3 = *(v1 + OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_menuAttribute);
    swift_beginAccess();
    MenuChangeDetectorHelper.startTrackingUpdatesIfNeeded(menuInteration:itemListAttr:)(interaction.super.isa, v3);
    swift_endAccess();
    v5 = *(v1 + OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_onMenuPresentationChanged);
    if (v5)
    {
      v6 = *(v1 + OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_onMenuPresentationChanged + 8);
      v7 = swift_allocObject();
      *(v7 + 16) = v5;
      *(v7 + 24) = v6;
      outlined copy of AppIntentExecutor?(v5);

      static Update.enqueueAction(reason:_:)();
      outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v5);
    }
  }
}

Swift::Void __swiftcall UIKitButtonAdaptorCoordinator.menuWillDismiss()()
{
  v1 = *(v0 + OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_onMenuPresentationChanged);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_onMenuPresentationChanged + 8);
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    outlined copy of AppIntentExecutor?(v1);

    static Update.enqueueAction(reason:_:)();
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v1);
  }

  swift_beginAccess();
  if (AGWeakAttributeGetAttribute() != *MEMORY[0x1E698D3F8])
  {
    AGGraphGetFlags();
    AGGraphSetFlags();
  }

  swift_endAccess();
}

void closure #1 in UIKitButtonAdaptorCoordinator.setupNotifications(_:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong contextMenuInteraction];

    [v2 dismissMenu];
  }
}

unint64_t type metadata accessor for UIMenu()
{
  result = lazy cache variable for type metadata for UIMenu;
  if (!lazy cache variable for type metadata for UIMenu)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIMenu);
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<MenuVisitor.MenuStackGroup>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<MenuVisitor.MenuStackGroup>)
  {
    type metadata accessor for MenuVisitor.MenuStackGroup(255);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<MenuVisitor.MenuStackGroup>);
    }
  }
}

uint64_t type metadata completion function for OutlinePrimitive()
{
  result = type metadata accessor for OutlinePrimitive.Base();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for OutlinePrimitive(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  if (*(*(v5 - 8) + 64) <= *(v7 + 64))
  {
    v8 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v8 = *(*(v5 - 8) + 64);
  }

  v9 = *(*(v5 - 8) + 80) | *(v7 + 80);
  if ((v9 & 0x1000F8) != 0 || (((((((((((((v8 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v15 = *a2;
    *a1 = *a2;
    a1 = (v15 + (((v9 & 0xF8 | 7u) + 16) & ~(v9 & 0xF8 | 7u)));

    return a1;
  }

  v10 = v8 + 1;
  v11 = *(a2 + v8);
  v12 = v11 - 2;
  if (v11 >= 2)
  {
    if (v8 <= 3)
    {
      v13 = v8;
    }

    else
    {
      v13 = 4;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        v14 = *a2;
      }

      else if (v13 == 3)
      {
        v14 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v14 = *a2;
      }

LABEL_19:
      v16 = (v14 | (v12 << (8 * v8))) + 2;
      v11 = v14 + 2;
      if (v8 < 4)
      {
        v11 = v16;
      }

      goto LABEL_21;
    }

    if (v13)
    {
      v14 = *a2;
      goto LABEL_19;
    }
  }

LABEL_21:
  v17 = v11 == 1;
  if (v11 == 1)
  {
    v7 = *(v5 - 8);
    v18 = v5;
  }

  else
  {
    v18 = AssociatedTypeWitness;
  }

  (*(v7 + 16))(a1, a2, v18);
  *(a1 + v8) = v17;
  v19 = ((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  v20 = ((a2 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  v21 = v20[1];
  *v19 = *v20;
  v19[1] = v21;
  v22 = ((v19 + 23) & 0xFFFFFFFFFFFFFFF8);
  v23 = ((v20 + 23) & 0xFFFFFFFFFFFFFFF8);
  v24 = v23[1];
  *v22 = *v23;
  v22[1] = v24;
  v25 = ((v22 + 23) & 0xFFFFFFFFFFFFFFF8);
  v26 = ((v23 + 23) & 0xFFFFFFFFFFFFFFF8);
  v27 = v26[1];
  *v25 = *v26;
  v25[1] = v27;
  v28 = ((v25 + 23) & 0xFFFFFFFFFFFFFFF8);
  v29 = ((v26 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v28 = *v29;
  v30 = ((v28 + 15) & 0xFFFFFFFFFFFFFFF8);
  v31 = ((v29 + 15) & 0xFFFFFFFFFFFFFFF8);
  v32 = v31[1];
  *v30 = *v31;
  v30[1] = v32;
  v33 = ((v30 + 23) & 0xFFFFFFFFFFFFFFF8);
  v34 = ((v31 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v33 = *v34;
  v33[1] = v34[1];
  v33[2] = v34[2];
  *((v33 + 31) & 0xFFFFFFFFFFFFFFF8) = *((v34 + 31) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t destroy for OutlinePrimitive(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  if (*(*(v3 - 8) + 64) <= *(v5 + 64))
  {
    v6 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v6 = *(*(v3 - 8) + 64);
  }

  v7 = a1[v6];
  v8 = v7 - 2;
  if (v7 < 2)
  {
    goto LABEL_18;
  }

  if (v6 <= 3)
  {
    v9 = v6;
  }

  else
  {
    v9 = 4;
  }

  if (v9 <= 1)
  {
    if (!v9)
    {
      goto LABEL_18;
    }

    v10 = *a1;
  }

  else if (v9 == 2)
  {
    v10 = *a1;
  }

  else if (v9 == 3)
  {
    v10 = *a1 | (a1[2] << 16);
  }

  else
  {
    v10 = *a1;
  }

  v11 = (v10 | (v8 << (8 * v6))) + 2;
  v7 = v10 + 2;
  if (v6 < 4)
  {
    v7 = v11;
  }

LABEL_18:
  if (v7 == 1)
  {
    v5 = *(v3 - 8);
    v12 = v3;
  }

  else
  {
    v12 = AssociatedTypeWitness;
  }

  (*(v5 + 8))(a1, v12);
}

uint64_t initializeWithCopy for OutlinePrimitive(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  if (*(*(v5 - 8) + 64) <= *(v7 + 64))
  {
    v8 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v8 = *(*(v5 - 8) + 64);
  }

  v9 = a2[v8];
  v10 = v9 - 2;
  if (v9 < 2)
  {
    goto LABEL_18;
  }

  if (v8 <= 3)
  {
    v11 = v8;
  }

  else
  {
    v11 = 4;
  }

  if (v11 <= 1)
  {
    if (!v11)
    {
      goto LABEL_18;
    }

    v12 = *a2;
  }

  else if (v11 == 2)
  {
    v12 = *a2;
  }

  else if (v11 == 3)
  {
    v12 = *a2 | (a2[2] << 16);
  }

  else
  {
    v12 = *a2;
  }

  v13 = (v12 | (v10 << (8 * v8))) + 2;
  v9 = v12 + 2;
  if (v8 < 4)
  {
    v9 = v13;
  }

LABEL_18:
  v14 = v9 == 1;
  if (v9 == 1)
  {
    v7 = *(v5 - 8);
    v15 = v5;
  }

  else
  {
    v15 = AssociatedTypeWitness;
  }

  (*(v7 + 16))(a1, a2, v15);
  *(a1 + v8) = v14;
  v16 = ((v8 + 8 + a1) & 0xFFFFFFFFFFFFFFF8);
  v17 = (&a2[v8 + 8] & 0xFFFFFFFFFFFFFFF8);
  v18 = v17[1];
  *v16 = *v17;
  v16[1] = v18;
  v19 = ((v16 + 23) & 0xFFFFFFFFFFFFFFF8);
  v20 = ((v17 + 23) & 0xFFFFFFFFFFFFFFF8);
  v21 = v20[1];
  *v19 = *v20;
  v19[1] = v21;
  v22 = ((v19 + 23) & 0xFFFFFFFFFFFFFFF8);
  v23 = ((v20 + 23) & 0xFFFFFFFFFFFFFFF8);
  v24 = v23[1];
  *v22 = *v23;
  v22[1] = v24;
  v25 = ((v22 + 23) & 0xFFFFFFFFFFFFFFF8);
  v26 = ((v23 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v25 = *v26;
  v27 = ((v25 + 15) & 0xFFFFFFFFFFFFFFF8);
  v28 = ((v26 + 15) & 0xFFFFFFFFFFFFFFF8);
  v29 = v28[1];
  *v27 = *v28;
  v27[1] = v29;
  v30 = ((v27 + 23) & 0xFFFFFFFFFFFFFFF8);
  v31 = ((v28 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v30 = *v31;
  v30[1] = v31[1];
  v30[2] = v31[2];
  *((v30 + 31) & 0xFFFFFFFFFFFFFFF8) = *((v31 + 31) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

unsigned __int8 *assignWithCopy for OutlinePrimitive(unsigned __int8 *a1, unsigned __int16 *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = AssociatedTypeWitness;
  if (a1 != a2)
  {
    v8 = *(AssociatedTypeWitness - 8);
    v9 = *(v5 - 8);
    if (*(v9 + 64) <= *(v8 + 64))
    {
      v10 = *(*(AssociatedTypeWitness - 8) + 64);
    }

    else
    {
      v10 = *(*(v5 - 8) + 64);
    }

    v11 = a1[v10];
    v12 = v11 - 2;
    if (v11 >= 2)
    {
      if (v10 <= 3)
      {
        v13 = v10;
      }

      else
      {
        v13 = 4;
      }

      if (v13 <= 1)
      {
        if (!v13)
        {
          goto LABEL_19;
        }

        v14 = *a1;
      }

      else if (v13 == 2)
      {
        v14 = *a1;
      }

      else if (v13 == 3)
      {
        v14 = *a1 | (a1[2] << 16);
      }

      else
      {
        v14 = *a1;
      }

      v15 = (v14 | (v12 << (8 * v10))) + 2;
      v11 = v14 + 2;
      if (v10 < 4)
      {
        v11 = v15;
      }
    }

LABEL_19:
    if (v11 == 1)
    {
      v16 = *(v5 - 8);
    }

    else
    {
      v16 = *(AssociatedTypeWitness - 8);
    }

    if (v11 == 1)
    {
      v17 = v5;
    }

    else
    {
      v17 = AssociatedTypeWitness;
    }

    (*(v16 + 8))(a1, v17);
    v18 = *(a2 + v10);
    v19 = v18 - 2;
    if (v18 >= 2)
    {
      if (v10 <= 3)
      {
        v20 = v10;
      }

      else
      {
        v20 = 4;
      }

      if (v20 > 1)
      {
        if (v20 == 2)
        {
          v21 = *a2;
        }

        else if (v20 == 3)
        {
          v21 = *a2 | (*(a2 + 2) << 16);
        }

        else
        {
          v21 = *a2;
        }

LABEL_37:
        v22 = (v21 | (v19 << (8 * v10))) + 2;
        v18 = v21 + 2;
        if (v10 < 4)
        {
          v18 = v22;
        }

        goto LABEL_39;
      }

      if (v20)
      {
        v21 = *a2;
        goto LABEL_37;
      }
    }

LABEL_39:
    v23 = v18 == 1;
    if (v18 == 1)
    {
      v24 = v9;
    }

    else
    {
      v24 = v8;
    }

    if (v18 == 1)
    {
      v25 = v5;
    }

    else
    {
      v25 = v7;
    }

    (*(v24 + 16))(a1, a2, v25);
    a1[v10] = v23;
  }

  v26 = *(*(v7 - 8) + 64);
  if (*(*(v5 - 8) + 64) > v26)
  {
    v26 = *(*(v5 - 8) + 64);
  }

  v27 = v26 + 8;
  v28 = (&a1[v27] & 0xFFFFFFFFFFFFFFF8);
  v29 = ((a2 + v27) & 0xFFFFFFFFFFFFFFF8);
  v30 = v29[1];
  *v28 = *v29;
  v28[1] = v30;

  v31 = ((v28 + 23) & 0xFFFFFFFFFFFFFFF8);
  v32 = ((v29 + 23) & 0xFFFFFFFFFFFFFFF8);
  v33 = v32[1];
  *v31 = *v32;
  v31[1] = v33;

  v34 = ((v31 + 23) & 0xFFFFFFFFFFFFFFF8);
  v35 = ((v32 + 23) & 0xFFFFFFFFFFFFFFF8);
  v36 = v35[1];
  *v34 = *v35;
  v34[1] = v36;

  v37 = ((v34 + 23) & 0xFFFFFFFFFFFFFFF8);
  v38 = ((v35 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v37 = *v38;

  v39 = ((v37 + 15) & 0xFFFFFFFFFFFFFFF8);
  v40 = ((v38 + 15) & 0xFFFFFFFFFFFFFFF8);
  v41 = v40[1];
  *v39 = *v40;
  v39[1] = v41;

  v42 = ((v39 + 23) & 0xFFFFFFFFFFFFFFF8);
  v43 = ((v40 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v42 = *v43;

  v42[1] = v43[1];

  v42[2] = v43[2];

  *((v42 + 31) & 0xFFFFFFFFFFFFFFF8) = *((v43 + 31) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t initializeWithTake for OutlinePrimitive(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  if (*(*(v5 - 8) + 64) <= *(v7 + 64))
  {
    v8 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v8 = *(*(v5 - 8) + 64);
  }

  v9 = a2[v8];
  v10 = v9 - 2;
  if (v9 < 2)
  {
    goto LABEL_18;
  }

  if (v8 <= 3)
  {
    v11 = v8;
  }

  else
  {
    v11 = 4;
  }

  if (v11 <= 1)
  {
    if (!v11)
    {
      goto LABEL_18;
    }

    v12 = *a2;
  }

  else if (v11 == 2)
  {
    v12 = *a2;
  }

  else if (v11 == 3)
  {
    v12 = *a2 | (a2[2] << 16);
  }

  else
  {
    v12 = *a2;
  }

  v13 = (v12 | (v10 << (8 * v8))) + 2;
  v9 = v12 + 2;
  if (v8 < 4)
  {
    v9 = v13;
  }

LABEL_18:
  v14 = v9 == 1;
  if (v9 == 1)
  {
    v7 = *(v5 - 8);
    v15 = v5;
  }

  else
  {
    v15 = AssociatedTypeWitness;
  }

  (*(v7 + 32))(a1, a2, v15);
  *(a1 + v8) = v14;
  v16 = ((v8 + 8 + a1) & 0xFFFFFFFFFFFFFFF8);
  v17 = (&a2[v8 + 8] & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  v18 = ((v16 + 23) & 0xFFFFFFFFFFFFFFF8);
  v19 = ((v17 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v18 = *v19;
  v20 = ((v18 + 23) & 0xFFFFFFFFFFFFFFF8);
  v21 = ((v19 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v20 = *v21;
  v22 = ((v20 + 23) & 0xFFFFFFFFFFFFFFF8);
  v23 = ((v21 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v22 = *v23;
  v24 = ((v22 + 15) & 0xFFFFFFFFFFFFFFF8);
  v25 = ((v23 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v24 = *v25;
  v26 = (v24 + 23) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v25 + 23) & 0xFFFFFFFFFFFFFFF8;
  v28 = *v27;
  *(v26 + 16) = *(v27 + 16);
  *v26 = v28;
  *((v26 + 31) & 0xFFFFFFFFFFFFFFF8) = *((v27 + 31) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

unsigned __int8 *assignWithTake for OutlinePrimitive(unsigned __int8 *a1, unsigned __int16 *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = AssociatedTypeWitness;
  if (a1 != a2)
  {
    v8 = *(AssociatedTypeWitness - 8);
    v9 = *(v5 - 8);
    if (*(v9 + 64) <= *(v8 + 64))
    {
      v10 = *(*(AssociatedTypeWitness - 8) + 64);
    }

    else
    {
      v10 = *(*(v5 - 8) + 64);
    }

    v11 = a1[v10];
    v12 = v11 - 2;
    if (v11 >= 2)
    {
      if (v10 <= 3)
      {
        v13 = v10;
      }

      else
      {
        v13 = 4;
      }

      if (v13 <= 1)
      {
        if (!v13)
        {
          goto LABEL_19;
        }

        v14 = *a1;
      }

      else if (v13 == 2)
      {
        v14 = *a1;
      }

      else if (v13 == 3)
      {
        v14 = *a1 | (a1[2] << 16);
      }

      else
      {
        v14 = *a1;
      }

      v15 = (v14 | (v12 << (8 * v10))) + 2;
      v11 = v14 + 2;
      if (v10 < 4)
      {
        v11 = v15;
      }
    }

LABEL_19:
    if (v11 == 1)
    {
      v16 = *(v5 - 8);
    }

    else
    {
      v16 = *(AssociatedTypeWitness - 8);
    }

    if (v11 == 1)
    {
      v17 = v5;
    }

    else
    {
      v17 = AssociatedTypeWitness;
    }

    (*(v16 + 8))(a1, v17);
    v18 = *(a2 + v10);
    v19 = v18 - 2;
    if (v18 >= 2)
    {
      if (v10 <= 3)
      {
        v20 = v10;
      }

      else
      {
        v20 = 4;
      }

      if (v20 > 1)
      {
        if (v20 == 2)
        {
          v21 = *a2;
        }

        else if (v20 == 3)
        {
          v21 = *a2 | (*(a2 + 2) << 16);
        }

        else
        {
          v21 = *a2;
        }

LABEL_37:
        v22 = (v21 | (v19 << (8 * v10))) + 2;
        v18 = v21 + 2;
        if (v10 < 4)
        {
          v18 = v22;
        }

        goto LABEL_39;
      }

      if (v20)
      {
        v21 = *a2;
        goto LABEL_37;
      }
    }

LABEL_39:
    v23 = v18 == 1;
    if (v18 == 1)
    {
      v24 = v9;
    }

    else
    {
      v24 = v8;
    }

    if (v18 == 1)
    {
      v25 = v5;
    }

    else
    {
      v25 = v7;
    }

    (*(v24 + 32))(a1, a2, v25);
    a1[v10] = v23;
  }

  v26 = *(*(v7 - 8) + 64);
  if (*(*(v5 - 8) + 64) > v26)
  {
    v26 = *(*(v5 - 8) + 64);
  }

  v27 = v26 + 8;
  v28 = (&a1[v27] & 0xFFFFFFFFFFFFFFF8);
  v29 = a2 + v27;
  v30 = (v29 & 0xFFFFFFFFFFFFFFF8) + 23;
  *v28 = *(v29 & 0xFFFFFFFFFFFFFFF8);

  v31 = ((v28 + 23) & 0xFFFFFFFFFFFFFFF8);
  v30 &= 0xFFFFFFFFFFFFFFF8;
  *v31 = *v30;

  v32 = ((v31 + 23) & 0xFFFFFFFFFFFFFFF8);
  v33 = ((v30 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v32 = *v33;

  v34 = ((v32 + 23) & 0xFFFFFFFFFFFFFFF8);
  v35 = ((v33 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v34 = *v35;

  v36 = ((v34 + 15) & 0xFFFFFFFFFFFFFFF8);
  v37 = ((v35 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v36 = *v37;

  v38 = ((v36 + 23) & 0xFFFFFFFFFFFFFFF8);
  v39 = ((v37 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v38 = *v39;

  v38[1] = v39[1];

  v38[2] = v39[2];

  *((v38 + 31) & 0xFFFFFFFFFFFFFFF8) = *((v39 + 31) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for OutlinePrimitive(_DWORD *a1, int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (*(*(v5 - 8) + 64) > v6)
  {
    v6 = *(*(v5 - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  v9 = (((((((((((((v6 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
  v10 = v9 & 0xFFFFFFF8;
  v11 = a2 - 2147483646;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12;
  }

  if (v13 == 4)
  {
    v14 = *(a1 + v9);
    if (!v14)
    {
      goto LABEL_5;
    }
  }

  else if (v13 == 2)
  {
    v14 = *(a1 + v9);
    if (!v14)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v14 = *(a1 + v9);
    if (!v14)
    {
LABEL_5:
      v7 = *((a1 + v6 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v7 >= 0xFFFFFFFF)
      {
        LODWORD(v7) = -1;
      }

      return (v7 + 1);
    }
  }

  v15 = v14 - 1;
  if (v10)
  {
    v15 = 0;
    LODWORD(v10) = *a1;
  }

  return (v10 | v15) ^ 0x80000000;
}

void storeEnumTagSinglePayload for OutlinePrimitive(int *a1, int a2, int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (*(*(v7 - 8) + 64) > v8)
  {
    v8 = *(*(v7 - 8) + 64);
  }

  v9 = (((((((((((((v8 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (a3 < 0)
  {
    v11 = a3 - 2147483646;
    if ((((((((((((((v8 & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v10 = 1;
    }

    else
    {
      v10 = v12;
    }

    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_18:
    v13 = a2 & 0x7FFFFFFF;
    if ((((((((((((((v8 & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 1;
    }

    if ((((((((((((((v8 & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      bzero(a1, v9);
      *a1 = v13;
    }

    if (v10 > 1)
    {
      if (v10 == 2)
      {
        *(a1 + v9) = v14;
      }

      else
      {
        *(a1 + v9) = v14;
      }
    }

    else if (v10)
    {
      *(a1 + v9) = v14;
    }

    return;
  }

  v10 = 0;
  if (a2 < 0)
  {
    goto LABEL_18;
  }

LABEL_5:
  if (v10 <= 1)
  {
    if (v10)
    {
      *(a1 + v9) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_29;
    }

LABEL_28:
    if (!a2)
    {
      return;
    }

    goto LABEL_29;
  }

  if (v10 == 2)
  {
    *(a1 + v9) = 0;
    goto LABEL_28;
  }

  *(a1 + v9) = 0;
  if (a2)
  {
LABEL_29:
    *((a1 + v8 + 8) & 0xFFFFFFFFFFFFFFF8) = (a2 - 1);
  }
}

uint64_t type metadata completion function for OutlinePrimitive.Base()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for OutlinePrimitive.Base(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v5 - 8);
  if (*(v8 + 64) <= *(v7 + 64))
  {
    v9 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v9 = *(*(v5 - 8) + 64);
  }

  v10 = (*(v8 + 80) | *(v7 + 80));
  if (v10 > 7 || (v9 + 1) > 0x18 || ((*(v8 + 80) | *(v7 + 80)) & 0x100000) != 0)
  {
    v13 = *a2;
    *a1 = *a2;
    a1 = (v13 + ((v10 + 16) & ~v10));

    return a1;
  }

  v14 = *(a2 + v9);
  v15 = v14 - 2;
  if (v14 >= 2)
  {
    if (v9 <= 3)
    {
      v16 = v9;
    }

    else
    {
      v16 = 4;
    }

    if (v16 > 1)
    {
      if (v16 == 2)
      {
        v17 = *a2;
      }

      else if (v16 == 3)
      {
        v17 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v17 = *a2;
      }

LABEL_24:
      v18 = (v17 | (v15 << (8 * v9))) + 2;
      v14 = v17 + 2;
      if (v9 < 4)
      {
        v14 = v18;
      }

      goto LABEL_26;
    }

    if (v16)
    {
      v17 = *a2;
      goto LABEL_24;
    }
  }

LABEL_26:
  if (v14 == 1)
  {
    (*(v8 + 16))(a1, a2, v5);
    *(a1 + v9) = 1;
  }

  else
  {
    (*(v7 + 16))(a1, a2, AssociatedTypeWitness);
    *(a1 + v9) = 0;
  }

  return a1;
}

uint64_t destroy for OutlinePrimitive.Base(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(v3 - 8) + 64);
  if (v5 <= *(*(AssociatedTypeWitness - 8) + 64))
  {
    v5 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  v6 = a1[v5];
  v7 = v6 - 2;
  if (v6 >= 2)
  {
    if (v5 <= 3)
    {
      v8 = v5;
    }

    else
    {
      v8 = 4;
    }

    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_17;
      }

      v9 = *a1;
    }

    else if (v8 == 2)
    {
      v9 = *a1;
    }

    else if (v8 == 3)
    {
      v9 = *a1 | (a1[2] << 16);
    }

    else
    {
      v9 = *a1;
    }

    v10 = (v9 | (v7 << (8 * v5))) + 2;
    v6 = v9 + 2;
    if (v5 < 4)
    {
      v6 = v10;
    }
  }

LABEL_17:
  if (v6 == 1)
  {
    v11 = *(v3 - 8);
  }

  else
  {
    v11 = *(AssociatedTypeWitness - 8);
  }

  if (v6 == 1)
  {
    v12 = v3;
  }

  else
  {
    v12 = AssociatedTypeWitness;
  }

  v13 = *(v11 + 8);

  return v13(a1, v12);
}

uint64_t initializeWithCopy for OutlinePrimitive.Base(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = a2;
  v8 = *(AssociatedTypeWitness - 8);
  if (*(*(v5 - 8) + 64) <= *(v8 + 64))
  {
    v9 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v9 = *(*(v5 - 8) + 64);
  }

  v10 = v7[v9];
  v11 = v10 - 2;
  if (v10 >= 2)
  {
    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    if (v12 <= 1)
    {
      if (!v12)
      {
        goto LABEL_18;
      }

      v13 = *v7;
    }

    else if (v12 == 2)
    {
      v13 = *v7;
    }

    else if (v12 == 3)
    {
      v13 = *v7 | (v7[2] << 16);
    }

    else
    {
      v13 = *v7;
    }

    v14 = (v13 | (v11 << (8 * v9))) + 2;
    v10 = v13 + 2;
    if (v9 < 4)
    {
      v10 = v14;
    }
  }

LABEL_18:
  v15 = v10 == 1;
  if (v10 == 1)
  {
    v8 = *(v5 - 8);
  }

  (*(v8 + 16))(a1);
  *(a1 + v9) = v15;
  return a1;
}

unsigned __int8 *assignWithCopy for OutlinePrimitive.Base(unsigned __int8 *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = AssociatedTypeWitness;
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v5 - 8);
  if (*(v9 + 64) <= *(v8 + 64))
  {
    v10 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v10 = *(*(v5 - 8) + 64);
  }

  v11 = a1[v10];
  v12 = v11 - 2;
  if (v11 >= 2)
  {
    if (v10 <= 3)
    {
      v13 = v10;
    }

    else
    {
      v13 = 4;
    }

    if (v13 <= 1)
    {
      if (!v13)
      {
        goto LABEL_19;
      }

      v14 = *a1;
    }

    else if (v13 == 2)
    {
      v14 = *a1;
    }

    else if (v13 == 3)
    {
      v14 = *a1 | (a1[2] << 16);
    }

    else
    {
      v14 = *a1;
    }

    v15 = (v14 | (v12 << (8 * v10))) + 2;
    v11 = v14 + 2;
    if (v10 < 4)
    {
      v11 = v15;
    }
  }

LABEL_19:
  if (v11 == 1)
  {
    v16 = *(v5 - 8);
  }

  else
  {
    v16 = *(AssociatedTypeWitness - 8);
  }

  if (v11 == 1)
  {
    v17 = v5;
  }

  else
  {
    v17 = AssociatedTypeWitness;
  }

  (*(v16 + 8))(a1, v17);
  v18 = *(a2 + v10);
  v19 = v18 - 2;
  if (v18 >= 2)
  {
    if (v10 <= 3)
    {
      v20 = v10;
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 1)
    {
      if (v20 == 2)
      {
        v21 = *a2;
      }

      else if (v20 == 3)
      {
        v21 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v21 = *a2;
      }

LABEL_37:
      v22 = (v21 | (v19 << (8 * v10))) + 2;
      v18 = v21 + 2;
      if (v10 < 4)
      {
        v18 = v22;
      }

      goto LABEL_39;
    }

    if (v20)
    {
      v21 = *a2;
      goto LABEL_37;
    }
  }

LABEL_39:
  v23 = v18 == 1;
  if (v18 == 1)
  {
    v24 = v9;
  }

  else
  {
    v24 = v8;
  }

  if (v18 == 1)
  {
    v25 = v5;
  }

  else
  {
    v25 = v7;
  }

  (*(v24 + 16))(a1, a2, v25);
  a1[v10] = v23;
  return a1;
}

uint64_t initializeWithTake for OutlinePrimitive.Base(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = a2;
  v8 = *(AssociatedTypeWitness - 8);
  if (*(*(v5 - 8) + 64) <= *(v8 + 64))
  {
    v9 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v9 = *(*(v5 - 8) + 64);
  }

  v10 = v7[v9];
  v11 = v10 - 2;
  if (v10 >= 2)
  {
    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    if (v12 <= 1)
    {
      if (!v12)
      {
        goto LABEL_18;
      }

      v13 = *v7;
    }

    else if (v12 == 2)
    {
      v13 = *v7;
    }

    else if (v12 == 3)
    {
      v13 = *v7 | (v7[2] << 16);
    }

    else
    {
      v13 = *v7;
    }

    v14 = (v13 | (v11 << (8 * v9))) + 2;
    v10 = v13 + 2;
    if (v9 < 4)
    {
      v10 = v14;
    }
  }

LABEL_18:
  v15 = v10 == 1;
  if (v10 == 1)
  {
    v8 = *(v5 - 8);
  }

  (*(v8 + 32))(a1);
  *(a1 + v9) = v15;
  return a1;
}

unsigned __int8 *assignWithTake for OutlinePrimitive.Base(unsigned __int8 *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = AssociatedTypeWitness;
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v5 - 8);
  if (*(v9 + 64) <= *(v8 + 64))
  {
    v10 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v10 = *(*(v5 - 8) + 64);
  }

  v11 = a1[v10];
  v12 = v11 - 2;
  if (v11 >= 2)
  {
    if (v10 <= 3)
    {
      v13 = v10;
    }

    else
    {
      v13 = 4;
    }

    if (v13 <= 1)
    {
      if (!v13)
      {
        goto LABEL_19;
      }

      v14 = *a1;
    }

    else if (v13 == 2)
    {
      v14 = *a1;
    }

    else if (v13 == 3)
    {
      v14 = *a1 | (a1[2] << 16);
    }

    else
    {
      v14 = *a1;
    }

    v15 = (v14 | (v12 << (8 * v10))) + 2;
    v11 = v14 + 2;
    if (v10 < 4)
    {
      v11 = v15;
    }
  }

LABEL_19:
  if (v11 == 1)
  {
    v16 = *(v5 - 8);
  }

  else
  {
    v16 = *(AssociatedTypeWitness - 8);
  }

  if (v11 == 1)
  {
    v17 = v5;
  }

  else
  {
    v17 = AssociatedTypeWitness;
  }

  (*(v16 + 8))(a1, v17);
  v18 = *(a2 + v10);
  v19 = v18 - 2;
  if (v18 >= 2)
  {
    if (v10 <= 3)
    {
      v20 = v10;
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 1)
    {
      if (v20 == 2)
      {
        v21 = *a2;
      }

      else if (v20 == 3)
      {
        v21 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v21 = *a2;
      }

LABEL_37:
      v22 = (v21 | (v19 << (8 * v10))) + 2;
      v18 = v21 + 2;
      if (v10 < 4)
      {
        v18 = v22;
      }

      goto LABEL_39;
    }

    if (v20)
    {
      v21 = *a2;
      goto LABEL_37;
    }
  }

LABEL_39:
  v23 = v18 == 1;
  if (v18 == 1)
  {
    v24 = v9;
  }

  else
  {
    v24 = v8;
  }

  if (v18 == 1)
  {
    v25 = v5;
  }

  else
  {
    v25 = v7;
  }

  (*(v24 + 32))(a1, a2, v25);
  a1[v10] = v23;
  return a1;
}

uint64_t getEnumTagSinglePayload for OutlinePrimitive.Base(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v7 = *(*(v5 - 8) + 64);
  if (v7 <= v6)
  {
    v7 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v8 = v7 + 1;
  v9 = 8 * (v7 + 1);
  if ((v7 + 1) <= 3)
  {
    v12 = ((a2 + ~(-1 << v9) - 254) >> v9) + 1;
    if (HIWORD(v12))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v12 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v12 < 2)
    {
LABEL_25:
      v14 = *(a1 + v7);
      if (v14 >= 2)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_25;
  }

LABEL_14:
  v13 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v13 = 0;
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

  return (v8 | v13) + 255;
}

void storeEnumTagSinglePayload for OutlinePrimitive.Base(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (*(*(v7 - 8) + 64) > v8)
  {
    v8 = *(*(v7 - 8) + 64);
  }

  v9 = v8 + 1;
  if (a3 < 0xFF)
  {
    v10 = 0;
  }

  else if (v9 <= 3)
  {
    v13 = ((a3 + ~(-1 << (8 * v9)) - 254) >> (8 * v9)) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if (a2 > 0xFE)
  {
    v11 = a2 - 255;
    if (v9 >= 4)
    {
      bzero(a1, v8 + 1);
      *a1 = v11;
      v12 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v12 = (v11 >> (8 * v9)) + 1;
    if (v8 != -1)
    {
      v15 = v11 & ~(-1 << (8 * v9));
      bzero(a1, v9);
      if (v9 != 3)
      {
        if (v9 == 2)
        {
          *a1 = v15;
          if (v10 > 1)
          {
LABEL_39:
            if (v10 == 2)
            {
              *&a1[v9] = v12;
            }

            else
            {
              *&a1[v9] = v12;
            }

            return;
          }
        }

        else
        {
          *a1 = v11;
          if (v10 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v10)
        {
          a1[v9] = v12;
        }

        return;
      }

      *a1 = v15;
      a1[2] = BYTE2(v15);
    }

    if (v10 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v10 <= 1)
  {
    if (v10)
    {
      a1[v9] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v8] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v10 == 2)
  {
    *&a1[v9] = 0;
    goto LABEL_24;
  }

  *&a1[v9] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t getEnumTag for OutlinePrimitive.Base(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (*(*(v3 - 8) + 64) > v4)
  {
    v4 = *(*(v3 - 8) + 64);
  }

  result = a1[v4];
  if (result >= 2)
  {
    if (v4 <= 3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 4;
    }

    if (v6 <= 1)
    {
      if (!v6)
      {
        return result;
      }

      v7 = *a1;
    }

    else if (v6 == 2)
    {
      v7 = *a1;
    }

    else if (v6 == 3)
    {
      v7 = *a1 | (a1[2] << 16);
    }

    else
    {
      v7 = *a1;
    }

    v8 = (v7 | ((result - 2) << (8 * v4))) + 2;
    v9 = v7 + 2;
    if (v4 >= 4)
    {
      return v9;
    }

    else
    {
      return v8;
    }
  }

  return result;
}

void destructiveInjectEnumTag for OutlinePrimitive.Base(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  if (a2 > 1)
  {
    if (*(*(v5 - 8) + 64) <= *(v6 + 64))
    {
      v8 = *(v6 + 64);
    }

    else
    {
      v8 = *(*(v5 - 8) + 64);
    }

    v9 = a2 - 2;
    if (v8 < 4)
    {
      a1[v8] = (v9 >> (8 * v8)) + 2;
      if (v8)
      {
        v10 = v9 & ~(-1 << (8 * v8));
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v10;
          a1[2] = BYTE2(v10);
        }

        else if (v8 == 2)
        {
          *a1 = v10;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      a1[v8] = 2;
      bzero(a1, v8);
      *a1 = v9;
    }
  }

  else
  {
    v7 = *(v6 + 64);
    if (*(*(v5 - 8) + 64) > v7)
    {
      v7 = *(*(v5 - 8) + 64);
    }

    a1[v7] = a2;
  }
}

uint64_t OutlinePrimitive.init(base:id:children:expandedElements:parentContent:leafContent:grouping:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v17 = type metadata accessor for OutlinePrimitive.Base();
  v18 = *(v17 - 8);
  (*(v18 + 16))(a9, a1, v17);
  v19 = type metadata accessor for OutlinePrimitive();
  *(a9 + v19[22]) = a2;
  v20 = (a9 + v19[23]);
  *v20 = a3;
  v20[1] = a4;
  v21 = (a9 + v19[24]);
  *v21 = a5;
  v21[1] = a6;
  v21[2] = a7;
  v22 = (a9 + v19[19]);
  *v22 = a8;
  v22[1] = a10;
  v23 = (a9 + v19[20]);
  *v23 = a11;
  v23[1] = a12;
  v24 = (a9 + v19[21]);
  *v24 = a13;
  v24[1] = a14;
  v25 = dynamicContentID++;
  result = (*(v18 + 8))(a1, v17);
  *(a9 + v19[25]) = v25;
  return result;
}

uint64_t OutlinePrimitive.Base.count.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v10, v2);
    v11 = dispatch thunk of Collection.count.getter();
    (*(v3 + 8))(v5, v2);
    return v11;
  }

  else
  {
    (*(v7 + 8))(v10, a1);
    return 1;
  }
}

uint64_t OutlinePrimitive.Base.itemAt(index:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = *(AssociatedTypeWitness - 8);
  v32 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v29 - v9;
  v30 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (OutlinePrimitive.Base.count.getter(a2) <= a1)
  {
    v25 = swift_getAssociatedTypeWitness();
    v26 = *(*(v25 - 8) + 56);

    return v26(a3, 1, 1, v25);
  }

  else
  {
    (*(v14 + 16))(v17, v3, a2);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v18 = v30;
      (*(v30 + 32))(v13, v17, v7);
      Collection.index(atOffset:)();
      v19 = dispatch thunk of Collection.subscript.read();
      v21 = v20;
      v22 = swift_getAssociatedTypeWitness();
      v23 = *(v22 - 8);
      (*(v23 + 16))(a3, v21, v22);
      v19(v33, 0);
      (*(v31 + 8))(v10, v32);
      (*(v18 + 8))(v13, v7);
      return (*(v23 + 56))(a3, 0, 1, v22);
    }

    else
    {
      v27 = swift_getAssociatedTypeWitness();
      v28 = *(v27 - 8);
      (*(v28 + 32))(a3, v17, v27);
      return (*(v28 + 56))(a3, 0, 1, v27);
    }
  }
}

uint64_t OutlinePrimitive.$expandedElements.getter()
{
  type metadata accessor for Set();
  type metadata accessor for Binding();
  Binding.projectedValue.getter();
  return v1;
}

uint64_t OutlinePrimitive<>.ExpansionProjection.set(base:newValue:)(uint64_t a1, char a2, uint64_t a3)
{
  v19[1] = a1;
  v5 = *(a3 + 24);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v19 - v8;
  v10 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v19 - v16;
  if (a2)
  {
    (*(v10 + 16))(v13, v3, v5, v15);
    type metadata accessor for Set();
    Set.insert(_:)();
    return (*(v10 + 8))(v17, v5);
  }

  else
  {
    type metadata accessor for Set();
    Set.remove(_:)();
    return (*(v7 + 8))(v9, v6);
  }
}

Swift::Int OutlinePrimitive<>.ExpansionProjection.hashValue.getter()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance OutlinePrimitive<A, B, C, D, E><>.ExpansionProjection()
{
  Hasher.init(_seed:)();
  OutlinePrimitive<>.ExpansionProjection.hash(into:)();
  return Hasher._finalize()();
}

uint64_t OutlinePrimitive<>.root.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  v17 = *(a1 + 16);
  v18 = v17;
  v19 = v6;
  v20 = v5;
  v16 = *(a1 + 56);
  v21 = v16;
  v7 = type metadata accessor for OutlinePrimitive.Base();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - v10;
  (*(v8 + 16))(&v16 - v10, v3, v7, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 8))(v11, v7);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    return (*(*(AssociatedTypeWitness - 8) + 56))(a2, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    v14 = swift_getAssociatedTypeWitness();
    v15 = *(v14 - 8);
    (*(v15 + 32))(a2, v11, v14);
    return (*(v15 + 56))(a2, 0, 1, v14);
  }
}

uint64_t OutlinePrimitive<>.nodes.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 64);
  v6 = *(a1 + 32);
  v16[0] = *(a1 + 16);
  v16[1] = v16[0];
  v7 = *(a1 + 48);
  v16[2] = v6;
  v16[3] = v7;
  v17 = v5;
  v8 = type metadata accessor for OutlinePrimitive.Base();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v16 - v11;
  (*(v9 + 16))(v16 - v11, v3, v8, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *(*&v16[0] - 8);
    (*(v13 + 32))(a2, v12);
    v14 = 0;
  }

  else
  {
    (*(v9 + 8))(v12, v8);
    v13 = *(*&v16[0] - 8);
    v14 = 1;
  }

  return (*(v13 + 56))(a2, v14, 1, *&v16[0]);
}

uint64_t OutlinePrimitive<>.body.getter@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _UNKNOWN **a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v284 = a4;
  v277 = a5;
  v215 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v212 = v8;
  v213 = &v209 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 56);
  v293 = *(v9 + 64);
  *(&v323 + 1) = v10;
  *&v324 = v293;
  v290 = v11 + 1;
  v12 = *(v9 + 16);
  v294 = v12;
  *v11 = v12;
  v288 = *(&v12 + 1);
  *&v323 = v9;
  v13 = type metadata accessor for ForEach();
  v218 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v217 = &v209 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v216 = &v209 - v16;
  type metadata accessor for ModifiedContent<EmptyView, _TraitWritingModifier<IsLeafTraitKey>>();
  v289 = v13;
  v253 = v17;
  v286 = type metadata accessor for _ConditionalContent();
  v255 = *(v286 - 8);
  MEMORY[0x1EEE9AC00](v286);
  v254 = &v209 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v279 = &v209 - v20;
  type metadata accessor for _TraitWritingModifier<IsLeafTraitKey>(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v5>, MEMORY[0x1E697DF50], MEMORY[0x1E697DF48], MEMORY[0x1E697EC20]);
  v22 = v21;
  v23 = *(a1 + 40);
  v24 = type metadata accessor for HStack();
  v248 = v22;
  v25 = type metadata accessor for StaticIf();
  v249 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v245 = &v209 - v26;
  type metadata accessor for _TraitWritingModifier<IsLeafTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<IsLeafTraitKey>, MEMORY[0x1E697E3B0], MEMORY[0x1E697E3A8], MEMORY[0x1E697FDB8]);
  v27 = type metadata accessor for ModifiedContent();
  v247 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v244 = &v209 - v28;
  v29 = lazy protocol witness table accessor for type _SemanticFeature<Semantics_v5> and conformance _SemanticFeature<A>();
  v246 = v24;
  WitnessTable = swift_getWitnessTable();
  v239 = v29;
  v331 = v29;
  v332 = a3;
  v30 = a3;
  v333 = WitnessTable;
  v250 = v25;
  v31 = swift_getWitnessTable();
  IsLeafTrait = lazy protocol witness table accessor for type _TraitWritingModifier<IsLeafTraitKey> and conformance _TraitWritingModifier<A>();
  v240 = v31;
  v329 = v31;
  v330 = IsLeafTrait;
  v292 = MEMORY[0x1E697E858];
  v33 = swift_getWitnessTable();
  *v290 = *(&v294 + 1);
  v291 = v27;
  *&v322 = v27;
  v280 = v33;
  v34 = v293;
  *&v323 = v33;
  *(&v323 + 1) = v293;
  v285 = &opaque type descriptor for <<opaque return type of View.tag<A>(_:includeOptional:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v243 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v242 = &v209 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v241 = &v209 - v37;
  v271 = *(v288 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v270 = &v209 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *(a1 + 32);
  v41 = *(a1 + 48);
  *&v42 = v40;
  v258 = v23;
  *(&v42 + 1) = v23;
  *&v43 = v41;
  *(&v43 + 1) = v10;
  v261 = v43;
  v262 = v42;
  v323 = v42;
  v324 = v43;
  v322 = v294;
  v325 = v34;
  v326 = a2;
  v327 = a3;
  v44 = v284;
  v328 = v284;
  v234 = type metadata accessor for OutlinePrimitive<>.ExpansionProjection();
  v231 = *(v234 - 8);
  MEMORY[0x1EEE9AC00](v234);
  v228 = &v209 - v45;
  v214 = v10;
  v252 = *(*(v10 + 8) + 8);
  v46 = v294;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *&v322 = AssociatedTypeWitness;
  *(&v322 + 1) = v40;
  *&v323 = v41;
  *(&v323 + 1) = a2;
  *&v324 = v44;
  v48 = type metadata accessor for _OutlineGenerator_Configuration();
  MEMORY[0x1EEE9AC00](v48 - 8);
  v233 = &v209 - v49;
  *&v322 = AssociatedTypeWitness;
  *(&v322 + 1) = v40;
  *&v323 = v41;
  *(&v323 + 1) = a2;
  *&v324 = v44;
  v50 = type metadata accessor for _OutlineGenerator_Configuration.Subtree();
  v51 = lazy protocol witness table accessor for type OutlineSubgroupChildren and conformance OutlineSubgroupChildren();
  *&v322 = AssociatedTypeWitness;
  *(&v322 + 1) = v40;
  v256 = v40;
  v257 = v41;
  *&v323 = v41;
  *(&v323 + 1) = &type metadata for OutlineSubgroupChildren;
  *&v324 = v50;
  *(&v324 + 1) = a2;
  v325 = v44;
  v326 = v51;
  v230 = v51;
  v327 = &protocol witness table for _OutlineGenerator_Configuration<A, B, C>.Subtree;
  v52 = type metadata accessor for OutlineGenerator();
  v235 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v232 = &v209 - v53;
  v54 = swift_getWitnessTable();
  v267 = a2;
  v268 = v30;
  v319 = a2;
  v320 = v30;
  v321 = v44;
  v55 = swift_getWitnessTable();
  v237 = v50;
  *&v322 = v50;
  *(&v322 + 1) = a1;
  v227 = v54;
  *&v323 = v54;
  *(&v323 + 1) = v55;
  v287 = v55;
  type metadata accessor for StaticSourceWriter();
  v56 = type metadata accessor for ModifiedContent();
  v226 = *(v56 - 1);
  MEMORY[0x1EEE9AC00](v56);
  v223 = &v209 - v57;
  v236 = v52;
  v221 = swift_getWitnessTable();
  v317 = v221;
  v318 = &protocol witness table for StaticSourceWriter<A, B>;
  v58 = swift_getWitnessTable();
  *(&v322 + 1) = *(&v294 + 1);
  v290 = v56;
  *&v322 = v56;
  v292 = v58;
  v323 = __PAIR128__(v293, v58);
  v59 = swift_getOpaqueTypeMetadata2();
  v229 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v225 = &v209 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61);
  v224 = &v209 - v62;
  v63 = type metadata accessor for Optional();
  v219 = *(v63 - 8);
  v220 = v63;
  MEMORY[0x1EEE9AC00](v63);
  v65 = &v209 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v66);
  v260 = &v209 - v67;
  v283 = v46;
  v282 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v251 = &v209 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v70);
  v272 = &v209 - v71;
  MEMORY[0x1EEE9AC00](v72);
  v269 = &v209 - v73;
  v263 = v59;
  v74 = type metadata accessor for _ConditionalContent();
  v266 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v265 = &v209 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v76);
  v264 = &v209 - v77;
  v78 = type metadata accessor for Optional();
  v79 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v81 = &v209 - v80;
  v82 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v83);
  v259 = &v209 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v85);
  v285 = &v209 - v86;
  v276 = v74;
  v275 = type metadata accessor for _ConditionalContent();
  v274 = *(v275 - 8);
  MEMORY[0x1EEE9AC00](v275);
  v273 = &v209 - v87;
  v88 = v278;
  OutlinePrimitive<>.root.getter(a1, v81);
  v89 = v82;
  if ((*(v82 + 48))(v81, 1, AssociatedTypeWitness) != 1)
  {
    v102 = *(v82 + 32);
    v103 = v285;
    v102(v285, v81, AssociatedTypeWitness);
    v104 = AssociatedTypeWitness;
    v105 = v260;
    (*&v88[*(a1 + 92)])(v103);
    v106 = v282;
    v107 = v283;
    v108 = (*(v282 + 48))(v105, 1, v283);
    v211 = v89;
    v222 = v104;
    if (v108 == 1)
    {
      v109 = (*(v219 + 8))(v105, v220);
      MEMORY[0x1EEE9AC00](v109);
      v110 = v261;
      *(&v209 - 5) = v262;
      *(&v209 - 4) = v110;
      *(&v209 - 6) = v294;
      v111 = v293;
      v112 = v285;
      *&v114 = MEMORY[0x1EEE9AC00](v113);
      *(&v209 - 5) = v115;
      *(&v209 - 4) = v116;
      *(&v209 - 6) = v114;
      v203 = v111;
      v204 = v117;
      v208 = v112;
      v206 = v118;
      v207 = WitnessTable;
      v205 = v239;
      v119 = v245;
      StaticIf<>.init(_:then:else:)();
      LOBYTE(v322) = 1;
      v120 = v244;
      v121 = v250;
      View._trait<A>(_:_:)();
      (*(v249 + 8))(v119, v121);
      v122 = v270;
      swift_getAtKeyPath();
      v123 = v242;
      v124 = v291;
      v125 = v288;
      v126 = v280;
      View.tag<A>(_:includeOptional:)(v122, 1, v291, v288, v280);
      (*(v271 + 8))(v122, v125);
      (*(v247 + 8))(v120, v124);
      *&v322 = v124;
      *(&v322 + 1) = v125;
      *&v323 = v126;
      *(&v323 + 1) = v111;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v128 = v241;
      v129 = OpaqueTypeMetadata2;
      static ViewBuilder.buildExpression<A>(_:)(v123, OpaqueTypeMetadata2, OpaqueTypeConformance2);
      v130 = *(v243 + 8);
      v130(v123, v129);
      static ViewBuilder.buildExpression<A>(_:)(v128, v129, OpaqueTypeConformance2);
      *&v322 = v290;
      *(&v322 + 1) = v125;
      *&v323 = v292;
      *(&v323 + 1) = v111;
      swift_getOpaqueTypeConformance2();
      v131 = v264;
      static ViewBuilder.buildEither<A, B>(second:)(v123, v263, v129);
      v130(v123, v129);
      v130(v128, v129);
    }

    else
    {
      (*(v106 + 32))(v269, v105, v107);
      (*(v89 + 16))(v259, v285, v104);
      v132 = OutlinePrimitive.$expandedElements.getter();
      v210 = a1;
      *&v322 = v132;
      *(&v322 + 1) = v133;
      *&v323 = v134;
      v279 = *&v88[*(a1 + 88)];
      v135 = v270;
      swift_getAtKeyPath();
      v136 = v228;
      (*(v271 + 32))(v228, v135, v288);
      type metadata accessor for Set();
      type metadata accessor for Binding();
      v137 = v234;
      swift_getWitnessTable();
      Binding.projecting<A>(_:)();
      (*(v231 + 8))(v136, v137);

      v138 = v284;
      v139 = v267;
      v140 = v222;
      v141 = v233;
      _OutlineGenerator_Configuration.init(element:isExpanded:grouping:parentContent:)(v259, v295, v296, v297, *&v88[*(v210 + 84)], *&v88[*(v210 + 84) + 8], *&v88[*(v210 + 76)], *&v88[*(v210 + 76) + 8], v233, v222);

      v142 = v232;
      v143 = OutlineGenerator<>.init(configuration:)(v141, v140, v232);
      MEMORY[0x1EEE9AC00](v143);
      v144 = v261;
      *(&v209 - 6) = v294;
      *(&v209 - 5) = v262;
      *(&v209 - 4) = v144;
      v111 = v293;
      v203 = v293;
      v204 = v139;
      v205 = v268;
      v206 = v138;
      v208 = v88;
      v207 = v287;
      v145 = v223;
      v146 = v236;
      v125 = v288;
      View.viewAlias<A, B>(_:_:)(v237, partial apply for closure #1 in OutlinePrimitive<>.body.getter, (&v209 - 14), v236, v237, v210, v221);
      (*(v235 + 8))(v142, v146);
      v147 = v270;
      swift_getAtKeyPath();
      v148 = v225;
      v149 = v290;
      v150 = v292;
      View.tag<A>(_:includeOptional:)(v147, 1, v290, v125, v292);
      (*(v271 + 8))(v147, v125);
      (*(v226 + 8))(v145, v149);
      *&v322 = v149;
      *(&v322 + 1) = v125;
      *&v323 = v150;
      *(&v323 + 1) = v111;
      v151 = swift_getOpaqueTypeConformance2();
      v152 = v224;
      v153 = v263;
      static ViewBuilder.buildExpression<A>(_:)(v148, v263, v151);
      v154 = *(v229 + 8);
      v154(v148, v153);
      static ViewBuilder.buildExpression<A>(_:)(v152, v153, v151);
      *&v322 = v291;
      *(&v322 + 1) = v125;
      *&v323 = v280;
      *(&v323 + 1) = v111;
      swift_getOpaqueTypeConformance2();
      v131 = v264;
      static ViewBuilder.buildEither<A, B>(first:)(v148, v153);
      v154(v148, v153);
      v154(v152, v153);
      (*(v282 + 8))(v269, v283);
    }

    *&v322 = v290;
    *(&v322 + 1) = v125;
    *&v323 = v292;
    *(&v323 + 1) = v111;
    v155 = swift_getOpaqueTypeConformance2();
    *&v322 = v291;
    *(&v322 + 1) = v125;
    v156 = v280;
    *&v323 = v280;
    *(&v323 + 1) = v293;
    v157 = swift_getOpaqueTypeConformance2();
    v301 = v155;
    v302 = v157;
    v158 = v276;
    v159 = swift_getWitnessTable();
    v160 = v265;
    static ViewBuilder.buildExpression<A>(_:)(v131, v158, v159);
    v300 = v287;
    v161 = v131;
    v162 = swift_getWitnessTable();
    v163 = lazy protocol witness table accessor for type ModifiedContent<EmptyView, _TraitWritingModifier<IsLeafTraitKey>> and conformance <> ModifiedContent<A, B>();
    v298 = v162;
    v299 = v163;
    swift_getWitnessTable();
    v164 = v273;
    static ViewBuilder.buildEither<A, B>(first:)(v160, v158);
    v165 = *(v266 + 8);
    v165(v160, v158);
    v166 = v161;
    v167 = v156;
    v168 = v293;
    v165(v166, v158);
    (*(v211 + 8))(v285, v222);
    goto LABEL_11;
  }

  (*(v79 + 8))(v81, v78);
  OutlinePrimitive<>.nodes.getter(a1, v65);
  v90 = v282;
  v91 = v283;
  result = (*(v282 + 48))(v65, 1, v283);
  if (result != 1)
  {
    v93 = v88;
    v94 = v90;
    v95 = v272;
    (*(v90 + 32))(v272, v65, v91);
    v96 = dispatch thunk of Collection.isEmpty.getter();
    v97 = v287;
    v98 = v292;
    v99 = v279;
    if (v96)
    {
      LOBYTE(v322) = 1;
      v100 = v287;
      v303 = v287;
      v101 = v289;
      swift_getWitnessTable();
      lazy protocol witness table accessor for type ModifiedContent<EmptyView, _TraitWritingModifier<IsLeafTraitKey>> and conformance <> ModifiedContent<A, B>();
      static ViewBuilder.buildEither<A, B>(second:)(&v322, v101, v253);
    }

    else
    {
      (*(v94 + 16))(v251, v95, v91);
      v285 = *&v93[*(a1 + 88)];
      v169 = a1;
      v170 = v215;
      v171 = v213;
      (*(v215 + 16))(v213, v93, v169);
      v172 = (*(v170 + 80) + 96) & ~*(v170 + 80);
      v173 = swift_allocObject();
      *&v174 = v256;
      v175 = v257;
      *(&v174 + 1) = v258;
      *(v173 + 32) = v174;
      *(v173 + 16) = v294;
      v176 = v214;
      *(v173 + 48) = v175;
      *(v173 + 56) = v176;
      v177 = v267;
      v178 = v268;
      *(v173 + 64) = v293;
      *(v173 + 72) = v177;
      v179 = v284;
      *(v173 + 80) = v178;
      *(v173 + 88) = v179;
      (*(v170 + 32))(v173 + v172, v171, v169);

      v207 = v97;
      v180 = v217;
      v98 = v292;
      v99 = v279;
      v100 = v97;
      ForEach<>.init(_:id:content:)();
      v316 = v97;
      v181 = v289;
      v182 = swift_getWitnessTable();
      v183 = v216;
      static ViewBuilder.buildExpression<A>(_:)(v180, v181, v182);
      v184 = *(v218 + 8);
      v184(v180, v181);
      static ViewBuilder.buildExpression<A>(_:)(v183, v181, v182);
      lazy protocol witness table accessor for type ModifiedContent<EmptyView, _TraitWritingModifier<IsLeafTraitKey>> and conformance <> ModifiedContent<A, B>();
      static ViewBuilder.buildEither<A, B>(first:)(v180, v181);
      v184(v180, v181);
      v184(v183, v181);
    }

    v185 = v290;
    v315 = v100;
    v186 = swift_getWitnessTable();
    v187 = lazy protocol witness table accessor for type ModifiedContent<EmptyView, _TraitWritingModifier<IsLeafTraitKey>> and conformance <> ModifiedContent<A, B>();
    v313 = v186;
    v314 = v187;
    v188 = v286;
    v189 = swift_getWitnessTable();
    v190 = v254;
    static ViewBuilder.buildExpression<A>(_:)(v99, v188, v189);
    v125 = v288;
    *&v322 = v185;
    *(&v322 + 1) = v288;
    v168 = v293;
    *&v323 = v98;
    *(&v323 + 1) = v293;
    v191 = swift_getOpaqueTypeConformance2();
    *&v322 = v291;
    *(&v322 + 1) = v125;
    v167 = v280;
    *&v323 = v280;
    *(&v323 + 1) = v168;
    v192 = swift_getOpaqueTypeConformance2();
    v311 = v191;
    v312 = v192;
    v193 = v276;
    swift_getWitnessTable();
    v164 = v273;
    static ViewBuilder.buildEither<A, B>(second:)(v190, v193, v188);
    v194 = *(v255 + 8);
    v194(v190, v188);
    v194(v279, v188);
    (*(v282 + 8))(v272, v283);
LABEL_11:
    *&v322 = v290;
    *(&v322 + 1) = v125;
    *&v323 = v292;
    *(&v323 + 1) = v168;
    v195 = swift_getOpaqueTypeConformance2();
    *&v322 = v291;
    *(&v322 + 1) = v125;
    *&v323 = v167;
    *(&v323 + 1) = v168;
    v196 = swift_getOpaqueTypeConformance2();
    v309 = v195;
    v310 = v196;
    v197 = swift_getWitnessTable();
    v308 = v287;
    v198 = swift_getWitnessTable();
    v199 = lazy protocol witness table accessor for type ModifiedContent<EmptyView, _TraitWritingModifier<IsLeafTraitKey>> and conformance <> ModifiedContent<A, B>();
    v306 = v198;
    v307 = v199;
    v200 = swift_getWitnessTable();
    v304 = v197;
    v305 = v200;
    v201 = v275;
    v202 = swift_getWitnessTable();
    static ViewBuilder.buildExpression<A>(_:)(v164, v201, v202);
    return (*(v274 + 8))(v164, v201);
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in OutlinePrimitive<>.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11, uint64_t a12)
{
  v52 = a1;
  v63 = a9;
  v62 = a12;
  v61 = a11;
  v59 = a5;
  v56 = a7;
  v57 = a6;
  v55 = a8;
  v54 = a10;
  v19 = type metadata accessor for OutlinePrimitive.Base();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v47 - v20;
  v66 = a3;
  v67 = a4;
  v68 = a5;
  v69 = a6;
  v70 = a7;
  v71 = a8;
  v72 = a10;
  v22 = type metadata accessor for OutlinePrimitive();
  v60 = *(v22 - 1);
  MEMORY[0x1EEE9AC00](v22);
  v53 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v58 = &v47 - v26;
  (*(*(a3 - 8) + 16))(v21, v52, a3, v25);
  swift_storeEnumTagMultiPayload();
  v27 = *(a2 + v22[22]);
  v28 = (a2 + v22[23]);
  v29 = v28[1];
  v52 = *v28;

  v51 = OutlinePrimitive.$expandedElements.getter();
  v50 = v30;
  v49 = v31;
  v32 = v22[20];
  v33 = (a2 + v22[19]);
  v34 = v33[1];
  v48 = *v33;
  v36 = *(a2 + v32);
  v35 = *(a2 + v32 + 8);
  v37 = (a2 + v22[21]);
  v39 = *v37;
  v38 = v37[1];

  v46 = v38;
  v40 = v53;
  OutlinePrimitive.init(base:id:children:expandedElements:parentContent:leafContent:grouping:)(v21, v27, v52, v29, v51, v50, v49, v48, v53, v34, v36, v35, v39, v46);
  v64 = v61;
  v65 = v62;
  WitnessTable = swift_getWitnessTable();
  v42 = v58;
  v43 = v40;
  static ViewBuilder.buildExpression<A>(_:)(v40, v22, WitnessTable);
  v44 = *(v60 + 8);
  v44(v43, v22);
  static ViewBuilder.buildExpression<A>(_:)(v42, v22, WitnessTable);
  return (v44)(v42, v22);
}

uint64_t closure #3 in OutlinePrimitive<>.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v31 = a8;
  v32 = a2;
  v28 = a5;
  v29 = a7;
  v30 = a1;
  v33 = a9;
  v27 = a13;
  v16 = type metadata accessor for HStack();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v26 - v21;
  v34 = a3;
  v35 = a4;
  v36 = v28;
  v37 = a6;
  v38 = v29;
  v39 = v31;
  v40 = a10;
  v41 = a11;
  v42 = a12;
  v43 = v27;
  v44 = v30;
  v45 = v32;
  static VerticalAlignment.center.getter();
  HStack.init(alignment:spacing:content:)();
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v19, v16, WitnessTable);
  v24 = *(v17 + 8);
  v24(v19, v16);
  static ViewBuilder.buildExpression<A>(_:)(v22, v16, WitnessTable);
  return (v24)(v22, v16);
}

uint64_t closure #2 in OutlinePrimitive<>.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v30 - v18;
  v30[1] = v20;
  v30[2] = v21;
  v30[3] = v22;
  v30[4] = v23;
  v30[5] = v24;
  v30[6] = v25;
  v30[7] = v26;
  v27 = type metadata accessor for OutlinePrimitive();
  (*(a1 + *(v27 + 80)))(a2);
  static ViewBuilder.buildExpression<A>(_:)(v16, a6, a11);
  v28 = *(v14 + 8);
  v28(v16, a6);
  static ViewBuilder.buildExpression<A>(_:)(v19, a6, a11);
  return (v28)(v19, a6);
}

uint64_t closure #4 in OutlinePrimitive<>.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11, uint64_t a12)
{
  v54 = a1;
  v64 = a9;
  v63 = a12;
  v62 = a11;
  v60 = a5;
  v57 = a7;
  v58 = a6;
  v56 = a10;
  v19 = type metadata accessor for OutlinePrimitive.Base();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v48 - v20;
  v67 = a3;
  v68 = a4;
  v52 = a3;
  v69 = a5;
  v70 = a6;
  v71 = a7;
  v72 = a8;
  v53 = a8;
  v73 = a10;
  v22 = type metadata accessor for OutlinePrimitive();
  v61 = *(v22 - 1);
  MEMORY[0x1EEE9AC00](v22);
  v55 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v59 = &v48 - v25;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(v21, v54, AssociatedTypeWitness);
  swift_storeEnumTagMultiPayload();
  v27 = *(a2 + v22[22]);
  v28 = (a2 + v22[23]);
  v29 = v28[1];
  v54 = *v28;

  v51 = OutlinePrimitive.$expandedElements.getter();
  v50 = v30;
  v49 = v31;
  v32 = v22[20];
  v33 = (a2 + v22[19]);
  v34 = *v33;
  v35 = v33[1];
  v37 = *(a2 + v32);
  v36 = *(a2 + v32 + 8);
  v38 = (a2 + v22[21]);
  v40 = *v38;
  v39 = v38[1];

  v47 = v39;
  v41 = v55;
  OutlinePrimitive.init(base:id:children:expandedElements:parentContent:leafContent:grouping:)(v21, v27, v54, v29, v51, v50, v49, v34, v55, v35, v37, v36, v40, v47);
  v65 = v62;
  v66 = v63;
  WitnessTable = swift_getWitnessTable();
  v43 = v59;
  v44 = v41;
  static ViewBuilder.buildExpression<A>(_:)(v41, v22, WitnessTable);
  v45 = *(v61 + 8);
  v45(v44, v22);
  static ViewBuilder.buildExpression<A>(_:)(v43, v22, WitnessTable);
  return (v45)(v43, v22);
}

void type metadata accessor for ModifiedContent<EmptyView, _TraitWritingModifier<IsLeafTraitKey>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<EmptyView, _TraitWritingModifier<IsLeafTraitKey>>)
  {
    type metadata accessor for _TraitWritingModifier<IsLeafTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<IsLeafTraitKey>, MEMORY[0x1E697E3B0], MEMORY[0x1E697E3A8], MEMORY[0x1E697FDB8]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<EmptyView, _TraitWritingModifier<IsLeafTraitKey>>);
    }
  }
}

void type metadata accessor for _TraitWritingModifier<IsLeafTraitKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _TraitWritingModifier<IsLeafTraitKey> and conformance _TraitWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _TraitWritingModifier<IsLeafTraitKey> and conformance _TraitWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _TraitWritingModifier<IsLeafTraitKey> and conformance _TraitWritingModifier<A>)
  {
    type metadata accessor for _TraitWritingModifier<IsLeafTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<IsLeafTraitKey>, MEMORY[0x1E697E3B0], MEMORY[0x1E697E3A8], MEMORY[0x1E697FDB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _TraitWritingModifier<IsLeafTraitKey> and conformance _TraitWritingModifier<A>);
  }

  return result;
}

uint64_t partial apply for closure #4 in OutlinePrimitive<>.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  v7 = *(v2 + 40);
  v8 = *(v2 + 48);
  v9 = *(v2 + 56);
  v10 = *(v2 + 64);
  v14 = *(v2 + 72);
  v11 = *(v2 + 88);
  v12 = *(type metadata accessor for OutlinePrimitive() - 8);
  return closure #4 in OutlinePrimitive<>.body.getter(a1, v2 + ((*(v12 + 80) + 96) & ~*(v12 + 80)), v4, v5, v6, v7, v8, v9, a2, v10, v14, v11);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<EmptyView, _TraitWritingModifier<IsLeafTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<EmptyView, _TraitWritingModifier<IsLeafTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<EmptyView, _TraitWritingModifier<IsLeafTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<EmptyView, _TraitWritingModifier<IsLeafTraitKey>>();
    lazy protocol witness table accessor for type _TraitWritingModifier<IsLeafTraitKey> and conformance _TraitWritingModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<EmptyView, _TraitWritingModifier<IsLeafTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t type metadata completion function for OutlinePrimitive<>.ExpansionProjection()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t specialized static TableRowContent._makeRows(content:inputs:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  static DynamicPropertyCache.fields(of:)();
  v3 = v36;
  v4 = v37;
  v5 = DWORD1(v37);
  v6 = *(a1 + 112);
  v32 = *(a1 + 96);
  v33 = v6;
  v34 = *(a1 + 128);
  v35 = *(a1 + 144);
  v7 = *(a1 + 48);
  v28 = *(a1 + 32);
  v29 = v7;
  v8 = *(a1 + 80);
  v30 = *(a1 + 64);
  v31 = v8;
  v9 = *(a1 + 16);
  v26 = *a1;
  v27 = v9;
  outlined init with copy of _TableRowInputs(a1, &v36);
  if (AGTypeID.isValueType.getter())
  {
    v36 = v3;
    LOBYTE(v37) = v4;
    DWORD1(v37) = v5;
    _sSnySiGMaTm_4(0, &lazy cache variable for type metadata for TableRowContentBodyAccessor<Never>, MEMORY[0x1E69E73E0], &protocol witness table for Never, type metadata accessor for TableRowContentBodyAccessor);
    lazy protocol witness table accessor for type TableRowContentBodyAccessor<Never> and conformance TableRowContentBodyAccessor<A>();
    BodyAccessor.makeBody(container:inputs:fields:)();
    v10 = v17;
    v42 = v32;
    v43 = v33;
    v44 = v34;
    v45 = v35;
    v38 = v28;
    v39 = v29;
    v40 = v30;
    v41 = v31;
    v36 = v26;
    v37 = v27;
    outlined init with copy of _TableRowInputs(&v36, &v16);
    specialized static TableRowContent._makeRows(content:inputs:)(&v16, v15, &v36);
    outlined destroy of _TableRowInputs(&v36);
    v11 = v16;
    v12 = DWORD2(v16);
    if ((v10 & 1) == 0)
    {
      _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();
    }

    v22 = v32;
    v23 = v33;
    v24 = v34;
    v25 = v35;
    v18 = v28;
    v19 = v29;
    v20 = v30;
    v21 = v31;
    v16 = v26;
    v17 = v27;
    outlined destroy of _TableRowInputs(&v16);
    result = outlined consume of DynamicPropertyCache.Fields.Layout();
    *a2 = v11;
    *(a2 + 8) = v12;
  }

  else
  {
    *&v36 = 0;
    *(&v36 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(75);
    MEMORY[0x18D00C9B0](0xD00000000000003DLL, 0x800000018CD57630);
    MEMORY[0x18D00C9B0](0x726576654ELL, 0xE500000000000000);
    MEMORY[0x18D00C9B0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t static TableRowContent._makeRows(content:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = a2[7];
  v53 = a2[6];
  v54 = v4;
  v55 = a2[8];
  v56 = *(a2 + 18);
  v5 = a2[3];
  v49 = a2[2];
  v50 = v5;
  v6 = a2[5];
  v51 = a2[4];
  v52 = v6;
  v7 = a2[1];
  v47 = *a2;
  v48 = v7;
  static DynamicPropertyCache.fields(of:)();
  v8 = v67;
  v9 = v68;
  v43 = v53;
  v44 = v54;
  v45 = v55;
  v46 = v56;
  v39 = v49;
  v40 = v50;
  v41 = v51;
  v42 = v52;
  v37 = v47;
  v38 = v48;
  v19 = DWORD1(v68);
  v20 = v3;
  v57 = v67;
  LOBYTE(v58) = v68;
  DWORD1(v58) = DWORD1(v68);
  outlined init with copy of _TableRowInputs(&v47, &v67);
  static TableRowContent.makeContent(content:inputs:fields:)();
  v10 = *(&v67 + 1);
  v18 = v67;
  v11 = v68;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v63 = v43;
  v64 = v44;
  v65 = v45;
  v59 = v39;
  v60 = v40;
  v61 = v41;
  v62 = v42;
  v57 = v37;
  v58 = v38;
  v33 = v43;
  v34 = v44;
  v35 = v45;
  v29 = v39;
  v30 = v40;
  v31 = v41;
  v32 = v42;
  v66 = v46;
  v36 = v46;
  v27 = v37;
  v28 = v38;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = *(AssociatedConformanceWitness + 48);
  outlined init with copy of _TableRowInputs(&v57, &v67);
  v14(&v22, v26, &v27, AssociatedTypeWitness, AssociatedConformanceWitness);
  v73 = v33;
  v74 = v34;
  v75 = v35;
  v76 = v36;
  v69 = v29;
  v70 = v30;
  v71 = v31;
  v72 = v32;
  v67 = v27;
  v68 = v28;
  outlined destroy of _TableRowInputs(&v67);
  v15 = v22;
  v16 = DWORD2(v22);
  if ((v11 & 1) == 0)
  {
    v26[0] = v18;
    v26[1] = v10;
    v25 = v20;
    v22 = v8;
    v23 = v9;
    v24 = v19;
    _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();
  }

  v33 = v43;
  v34 = v44;
  v35 = v45;
  v36 = v46;
  v29 = v39;
  v30 = v40;
  v31 = v41;
  v32 = v42;
  v27 = v37;
  v28 = v38;
  outlined destroy of _TableRowInputs(&v27);
  result = outlined consume of DynamicPropertyCache.Fields.Layout();
  *a3 = v15;
  *(a3 + 8) = v16;
  return result;
}

uint64_t static TableRowContent._tableRowCount(inputs:)(uint64_t a1)
{
  v1 = *(a1 + 112);
  v8[6] = *(a1 + 96);
  v8[7] = v1;
  v8[8] = *(a1 + 128);
  v9 = *(a1 + 144);
  v2 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v2;
  v3 = *(a1 + 80);
  v8[4] = *(a1 + 64);
  v8[5] = v3;
  v4 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 56))(v8, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t static TableRowContent._containsOutlineSymbol(inputs:)(uint64_t a1)
{
  v1 = *(a1 + 112);
  v8[6] = *(a1 + 96);
  v8[7] = v1;
  v8[8] = *(a1 + 128);
  v9 = *(a1 + 144);
  v2 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v2;
  v3 = *(a1 + 80);
  v8[4] = *(a1 + 64);
  v8[5] = v3;
  v4 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 64))(v8, AssociatedTypeWitness, AssociatedConformanceWitness) & 1;
}

uint64_t protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance TableRowList.Key(__int128 *a1, uint64_t (*a2)(void))
{
  type metadata accessor for _ContiguousArrayStorage<TableRowList>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<TableRowList>, &type metadata for TableRowList, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = *a1;
  v6 = a1[1];
  *(v4 + 16) = xmmword_18CD63410;
  *(v4 + 32) = v5;
  *(v4 + 48) = v6;
  *(v4 + 64) = *(a1 + 4);
  result = a2();
  *(a1 + 3) = &type metadata for MergedTableRowGenerator;
  *(a1 + 4) = &protocol witness table for MergedTableRowGenerator;
  *a1 = v4;
  return result;
}

unint64_t TableRowID.description.getter()
{
  outlined init with copy of TableRowID(v0, v7);
  if (v9)
  {
    v5[0] = v7[0];
    v5[1] = v7[1];
    v6 = v8;
    _StringGuts.grow(_:)(22);

    v1 = AnyHashable.description.getter();
    MEMORY[0x18D00C9B0](v1);

    v2 = 0xD000000000000014;
    outlined destroy of AnyHashable(v5);
  }

  else
  {
    _StringGuts.grow(_:)(21);

    *(&v5[0] + 1) = 0x800000018CD57610;
    v3 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v3);

    return 0xD000000000000013;
  }

  return v2;
}

Swift::Int TableRowID.hashValue.getter()
{
  Hasher.init(_seed:)();
  outlined init with copy of TableRowID(v0, v5);
  if (v7)
  {
    v3[0] = v5[0];
    v3[1] = v5[1];
    v4 = v6;
    MEMORY[0x18D00F6F0](1);
    AnyHashable.hash(into:)();
    outlined destroy of AnyHashable(v3);
  }

  else
  {
    v1 = *&v5[0];
    MEMORY[0x18D00F6F0](0);
    MEMORY[0x18D00F6F0](v1);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TableRowID()
{
  outlined init with copy of TableRowID(v0, v5);
  if (v7)
  {
    v3[0] = v5[0];
    v3[1] = v5[1];
    v4 = v6;
    MEMORY[0x18D00F6F0](1);
    AnyHashable.hash(into:)();
    return outlined destroy of AnyHashable(v3);
  }

  else
  {
    v2 = *&v5[0];
    MEMORY[0x18D00F6F0](0);
    return MEMORY[0x18D00F6F0](v2);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TableRowID()
{
  Hasher.init(_seed:)();
  outlined init with copy of TableRowID(v0, v5);
  if (v7)
  {
    v3[0] = v5[0];
    v3[1] = v5[1];
    v4 = v6;
    MEMORY[0x18D00F6F0](1);
    AnyHashable.hash(into:)();
    outlined destroy of AnyHashable(v3);
  }

  else
  {
    v1 = *&v5[0];
    MEMORY[0x18D00F6F0](0);
    MEMORY[0x18D00F6F0](v1);
  }

  return Hasher._finalize()();
}

Swift::Int __swiftcall AnyTableRowIDs.index(before:)(Swift::Int before)
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::Int __swiftcall AnyTableRowIDs.index(after:)(Swift::Int after)
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for BidirectionalCollection.index(before:) in conformance AnyTableRowIDs@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**v2 + 112))(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance AnyTableRowIDs(uint64_t *a1)
{
  result = (*(**v1 + 112))(*a1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for Collection.startIndex.getter in conformance AnyTableRowIDs@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 88))();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Collection.endIndex.getter in conformance AnyTableRowIDs@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 96))();
  *a1 = result;
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance AnyTableRowIDs(uint64_t *a1, void *a2))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x29uLL);
  }

  *a1 = v5;
  (*(**v2 + 104))(*a2);
  return protocol witness for Collection.subscript.read in conformance AnyTableRowIDs;
}

void protocol witness for Collection.subscript.read in conformance AnyTableRowIDs(uint64_t *a1)
{
  v1 = *a1;
  outlined destroy of TableRowID(*a1);

  free(v1);
}

uint64_t protocol witness for Collection.subscript.getter in conformance AnyTableRowIDs@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *v2;
  v7 = (*(*v6 + 88))();
  result = (*(*v6 + 96))();
  if (result < v7)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (result < v5)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
}

uint64_t protocol witness for Collection.indices.getter in conformance AnyTableRowIDs@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = (*(*v3 + 88))();
  result = (*(*v3 + 96))();
  if (result < v4)
  {
    __break(1u);
  }

  else
  {
    *a1 = v4;
    a1[1] = result;
  }

  return result;
}

void *protocol witness for RandomAccessCollection.index(_:offsetBy:) in conformance AnyTableRowIDs@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    v6 = *v3;
    v7 = (*(*v6 + 88))();
    result = (*(*v6 + 96))();
    if (v5 >= v7 && result >= v5)
    {
      *a3 = v5;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance AnyTableRowIDs@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t protocol witness for RandomAccessCollection.distance(from:to:) in conformance AnyTableRowIDs(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *v2;
  v6 = *(*v5 + 88);
  v7 = v6();
  v8 = *(*v5 + 96);
  result = v8();
  if (v3 < v7 || result < v3)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = (v6)(result);
  result = v8();
  if (v4 < v11 || result < v4)
  {
    goto LABEL_12;
  }

  result = v4 - v3;
  if (__OFSUB__(v4, v3))
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for Collection.index(after:) in conformance AnyTableRowIDs@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**v2 + 120))(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for Collection.formIndex(after:) in conformance AnyTableRowIDs(uint64_t *a1)
{
  result = (*(**v1 + 120))(*a1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance AnyTableRowIDs@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = (*(*v3 + 88))();
  *a1 = v3;
  a1[1] = result;
  return result;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance AnyTableRowIDs(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance AnyTableRowIDs()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0);

  return v1;
}

uint64_t WrappedTableRowIDs.startIndex.getter(void (*a1)(uint64_t *__return_ptr, uint64_t, void))
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - v6;
  v8 = *(v3 + 144);
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  a1(&v10, v4, *(*(*(v3 + 136) + 8) + 8));
  (*(v5 + 8))(v7, v4);
  return v10;
}

uint64_t WrappedTableRowIDs.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(*v2 + 128);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v14[-v8];
  v10 = *(v5 + 144);
  swift_beginAccess();
  (*(v7 + 16))(v9, v2 + v10, v6);
  v15 = a1;
  v11 = dispatch thunk of Collection.subscript.read();
  outlined init with copy of TableRowID(v12, a2);
  v11(v14, 0);
  return (*(v7 + 8))(v9, v6);
}

Swift::Int __swiftcall WrappedTableRowIDs.index(before:)(Swift::Int before)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](before);
  v7 = v10 - v6;
  v8 = *(v3 + 144);
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  v10[1] = before;
  dispatch thunk of BidirectionalCollection.index(before:)();
  (*(v5 + 8))(v7, v4);
  return v10[5];
}

Swift::Int __swiftcall WrappedTableRowIDs.index(after:)(Swift::Int after)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](after);
  v7 = v10 - v6;
  v8 = *(v3 + 144);
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  v10[1] = after;
  dispatch thunk of Collection.index(after:)();
  (*(v5 + 8))(v7, v4);
  return v10[5];
}

uint64_t MergedTableRowGenerator.visitRows<A>(applying:from:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a3 + 16);
  if (!v5)
  {
    return 1;
  }

  v8 = 0;
  v9 = *a2;
  for (i = a3 + 32; ; i += 40)
  {
    outlined init with copy of TableRowList(i, v20);
    v11 = v21;
    v12 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    result = (*(v12 + 16))(v11, v12);
    v14 = v8 + result;
    if (__OFADD__(v8, result))
    {
      break;
    }

    if (v9 >= v14)
    {
      outlined destroy of TableRowList(v20);
    }

    else
    {
      if (__OFSUB__(v9, v8))
      {
        goto LABEL_13;
      }

      v19 = (v9 - v8) & ~((v9 - v8) >> 63);
      v15 = v21;
      v16 = v22;
      __swift_project_boxed_opaque_existential_1(v20, v21);
      v17 = (*(v16 + 8))(a1, &v19, a4, a5, v15, v16);
      outlined destroy of TableRowList(v20);
      if ((v17 & 1) == 0)
      {
        return 0;
      }
    }

    v8 = v14;
    if (!--v5)
    {
      return 1;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t MergedTableRowGenerator.count.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    for (i = a1 + 32; ; i += 40)
    {
      outlined init with copy of TableRowList(i, v11);
      outlined init with copy of _Benchmark(v11, v8);
      outlined destroy of TableRowList(v11);
      v4 = v9;
      v5 = v10;
      __swift_project_boxed_opaque_existential_1(v8, v9);
      result = (*(v5 + 16))(v4, v5);
      v7 = __OFADD__(v2, result);
      v2 += result;
      if (v7)
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_1(v8);
      if (!--v1)
      {
        return v2;
      }
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t MergedTableRowGenerator.rowIDs.getter(uint64_t a1)
{
  type metadata accessor for WrappedTableRowIDs<[TableRowID]>();
  v2 = swift_allocObject();
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  v3 = *(a1 + 16);
  if (v3)
  {
    for (i = a1 + 32; ; i += 40)
    {
      outlined init with copy of TableRowList(i, v10);
      v5 = v11;
      v6 = v12;
      __swift_project_boxed_opaque_existential_1(v10, v11);
      v7 = (*(v6 + 24))(v5, v6);
      if (!v7)
      {
        break;
      }

      v8 = v7;
      swift_beginAccess();
      specialized Array.append<A>(contentsOf:)(v8);
      swift_endAccess();
      outlined destroy of TableRowList(v10);
      if (!--v3)
      {
        return v2;
      }
    }

    outlined destroy of TableRowList(v10);
    return 0;
  }

  return v2;
}

uint64_t static TableRowContent.makeContent(content:inputs:fields:)()
{
  if (AGTypeID.isValueType.getter())
  {
    type metadata accessor for TableRowContentBodyAccessor();
    swift_getWitnessTable();
    return BodyAccessor.makeBody(container:inputs:fields:)();
  }

  else
  {
    _StringGuts.grow(_:)(75);
    MEMORY[0x18D00C9B0](0xD00000000000003DLL, 0x800000018CD57630);
    v1 = _typeName(_:qualified:)();
    MEMORY[0x18D00C9B0](v1);

    MEMORY[0x18D00C9B0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t TableRowContentBodyAccessor.updateBody(of:changed:)(uint64_t result, char a2)
{
  if (a2)
  {
    MEMORY[0x1EEE9AC00](result);
    type metadata accessor for TableRowContentBodyAccessor();
    swift_getWitnessTable();
    return BodyAccessor.setBody(_:)();
  }

  return result;
}

uint64_t protocol witness for static TableRowContent._makeRows(content:inputs:) in conformance Never@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 112);
  v7[6] = *(a1 + 96);
  v7[7] = v2;
  v7[8] = *(a1 + 128);
  v8 = *(a1 + 144);
  v3 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v3;
  v4 = *(a1 + 80);
  v7[4] = *(a1 + 64);
  v7[5] = v4;
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  return specialized static TableRowContent._makeRows(content:inputs:)(v7, a2);
}

uint64_t protocol witness for static TupleDescriptor.typeCache.getter in conformance TableRowDescriptor()
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t protocol witness for static TupleDescriptor.typeCache.setter in conformance TableRowDescriptor(uint64_t a1)
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static TableRowDescriptor.typeCache = a1;
}

uint64_t (*protocol witness for static TupleDescriptor.typeCache.modify in conformance TableRowDescriptor())()
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return protocol witness for static UserDefaultKeyedFeature.cachedValue.modify in conformance ViewGraphBridgePropertiesAreInput;
}

uint64_t default associated conformance accessor for TableRowContent.TableRowContent.TableRowValue: Identifiable()
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t destroy for _TableRowInputs()
{
}

uint64_t initializeWithCopy for _TableRowInputs(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v3;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  v4 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v4;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);

  return a1;
}

uint64_t assignWithCopy for _TableRowInputs(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);

  *(a1 + 144) = *(a2 + 144);
  *(a1 + 148) = *(a2 + 148);
  return a1;
}

uint64_t assignWithTake for _TableRowInputs(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);

  *(a1 + 88) = *(a2 + 88);

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);

  *(a1 + 144) = *(a2 + 144);
  return a1;
}

uint64_t initializeWithCopy for TableRowID(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  if (v2 >= 2)
  {
    v2 = *a2 + 2;
  }

  if (v2 == 1)
  {
    v3 = *(a2 + 24);
    *(result + 24) = v3;
    v4 = result;
    (**(v3 - 8))();
    result = v4;
    *(v4 + 40) = 1;
  }

  else
  {
    *result = *a2;
    *(result + 40) = 0;
  }

  return result;
}

uint64_t assignWithCopy for TableRowID(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = *(result + 40);
    if (v2 >= 2)
    {
      v2 = *result + 2;
    }

    if (v2 == 1)
    {
      v3 = result;
      v4 = a2;
      __swift_destroy_boxed_opaque_existential_1(result);
      a2 = v4;
      result = v3;
    }

    v5 = *(a2 + 40);
    if (v5 >= 2)
    {
      v5 = *a2 + 2;
    }

    if (v5 == 1)
    {
      v6 = *(a2 + 24);
      *(result + 24) = v6;
      *(result + 32) = *(a2 + 32);
      v7 = result;
      (**(v6 - 8))();
      result = v7;
      v8 = 1;
    }

    else
    {
      v8 = 0;
      *result = *a2;
    }

    *(result + 40) = v8;
  }

  return result;
}

uint64_t assignWithTake for TableRowID(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = *(result + 40);
    if (v2 >= 2)
    {
      v2 = *result + 2;
    }

    if (v2 == 1)
    {
      v3 = result;
      v4 = a2;
      __swift_destroy_boxed_opaque_existential_1(result);
      a2 = v4;
      result = v3;
    }

    v5 = *(a2 + 40);
    if (v5 >= 2)
    {
      v5 = *a2 + 2;
    }

    if (v5 == 1)
    {
      v6 = *(a2 + 16);
      *result = *a2;
      *(result + 16) = v6;
      *(result + 32) = *(a2 + 32);
      v7 = 1;
    }

    else
    {
      v7 = 0;
      *result = *a2;
    }

    *(result + 40) = v7;
  }

  return result;
}

void type metadata accessor for IndexingIterator<AnyTableRowIDs>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for AnyTableRowIDs();
    v8 = lazy protocol witness table accessor for type IndexingIterator<AnyTableRowIDs> and conformance IndexingIterator<A>(&lazy protocol witness table cache variable for type AnyTableRowIDs and conformance AnyTableRowIDs, v7, type metadata accessor for AnyTableRowIDs);
    v9 = a3(a1, v6, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t _sSnySiGSnyxGSlsSxRzSZ6StrideRpzrlWlTm_4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    _sSnySiGMaTm_4(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    lazy protocol witness table accessor for type Int and conformance Int();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type AnyTableRowIDs and conformance AnyTableRowIDs(uint64_t a1, uint64_t a2)
{
  return lazy protocol witness table accessor for type IndexingIterator<AnyTableRowIDs> and conformance IndexingIterator<A>(&lazy protocol witness table cache variable for type AnyTableRowIDs and conformance AnyTableRowIDs, a2, type metadata accessor for AnyTableRowIDs);
}

{
  return lazy protocol witness table accessor for type IndexingIterator<AnyTableRowIDs> and conformance IndexingIterator<A>(&lazy protocol witness table cache variable for type AnyTableRowIDs and conformance AnyTableRowIDs, a2, type metadata accessor for AnyTableRowIDs);
}

uint64_t lazy protocol witness table accessor for type Slice<AnyTableRowIDs> and conformance <> Slice<A>(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Slice<AnyTableRowIDs>(255);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type IndexingIterator<AnyTableRowIDs> and conformance IndexingIterator<A>(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #1 in TableRowList.visitRows<A>(applying:from:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v9 = v4;
  v6 = v3[3];
  v7 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v6);
  return (*(v7 + 8))(v5, &v9, v1, v2, v6, v7);
}

uint64_t specialized static TableRowID.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of TableRowID(a1, v11);
  outlined init with copy of TableRowID(a2, v12);
  if ((v11[40] & 1) == 0)
  {
    outlined init with copy of TableRowID(v11, v9);
    if ((v14 & 1) == 0)
    {
      v3 = *&v9[0] == *&v12[0];
      goto LABEL_6;
    }

LABEL_8:
    outlined destroy of (TableRowID, TableRowID)(v11);
    v3 = 0;
    return v3 & 1;
  }

  outlined init with copy of TableRowID(v11, v9);
  if (v14 != 1)
  {
    outlined destroy of AnyHashable(v9);
    goto LABEL_8;
  }

  v7[0] = v9[0];
  v7[1] = v9[1];
  v8 = v10;
  v5[0] = v12[0];
  v5[1] = v12[1];
  v6 = v13;
  v3 = MEMORY[0x18D00E7E0](v7, v5);
  outlined destroy of AnyHashable(v5);
  outlined destroy of AnyHashable(v7);
LABEL_6:
  outlined destroy of TableRowID(v11);
  return v3 & 1;
}

uint64_t outlined destroy of (TableRowID, TableRowID)(uint64_t a1)
{
  type metadata accessor for (TableRowID, TableRowID)();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for (TableRowID, TableRowID)()
{
  if (!lazy cache variable for type metadata for (TableRowID, TableRowID))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (TableRowID, TableRowID));
    }
  }
}

unint64_t lazy protocol witness table accessor for type TableRowContentBodyAccessor<Never> and conformance TableRowContentBodyAccessor<A>()
{
  result = lazy protocol witness table cache variable for type TableRowContentBodyAccessor<Never> and conformance TableRowContentBodyAccessor<A>;
  if (!lazy protocol witness table cache variable for type TableRowContentBodyAccessor<Never> and conformance TableRowContentBodyAccessor<A>)
  {
    _sSnySiGMaTm_4(255, &lazy cache variable for type metadata for TableRowContentBodyAccessor<Never>, MEMORY[0x1E69E73E0], &protocol witness table for Never, type metadata accessor for TableRowContentBodyAccessor);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableRowContentBodyAccessor<Never> and conformance TableRowContentBodyAccessor<A>);
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<TableRowList>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t _IdentifiedViewTree.forEach(_:)(void (*a1)(_OWORD *), uint64_t a2)
{
  result = outlined init with copy of _IdentifiedViewTree(v2, v10);
  if (v12)
  {
    if (v12 == 1)
    {
      v6 = *(*&v10[0] + 16);
      if (v6)
      {
        v7 = *&v10[0] + 32;
        do
        {
          outlined init with copy of _IdentifiedViewTree(v7, v8);
          _IdentifiedViewTree.forEach(_:)(a1, a2);
          outlined destroy of _IdentifiedViewTree(v8);
          v7 += 176;
          --v6;
        }

        while (v6);
      }
    }
  }

  else
  {
    v8[8] = v10[8];
    v8[9] = v10[9];
    v9 = v11;
    v8[4] = v10[4];
    v8[5] = v10[5];
    v8[6] = v10[6];
    v8[7] = v10[7];
    v8[0] = v10[0];
    v8[1] = v10[1];
    v8[2] = v10[2];
    v8[3] = v10[3];
    a1(v8);
    return outlined destroy of _IdentifiedViewProxy(v8);
  }

  return result;
}

uint64_t View._identified<A>(by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for _IdentifiedModifier();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  (*(v8 + 16))(v10, a1, a3, v13);
  (*(v8 + 32))(v15, v10, a3);
  MEMORY[0x18D00A570](v15, a2, v11, a4);
  return (*(v12 + 8))(v15, v11);
}

double _IdentifiedViewProxy.accessibilityNode.getter@<D0>(uint64_t a1@<X8>)
{
  outlined init with copy of Any?(v1 + 136, &v23);
  if (v24)
  {
    outlined init with take of Any(&v23, v12);
    swift_dynamicCast();
    return destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(a1, v3, v4, v5);
  }

  else
  {
    _s7SwiftUI22AccessibilityNodeProxyVSgWOi0_(v12);
    v7 = v20;
    *(a1 + 128) = v19;
    *(a1 + 144) = v7;
    *(a1 + 160) = v21;
    *(a1 + 176) = v22;
    v8 = v16;
    *(a1 + 64) = v15;
    *(a1 + 80) = v8;
    v9 = v18;
    *(a1 + 96) = v17;
    *(a1 + 112) = v9;
    v10 = v12[1];
    *a1 = v12[0];
    *(a1 + 16) = v10;
    result = *&v13;
    v11 = v14;
    *(a1 + 32) = v13;
    *(a1 + 48) = v11;
  }

  return result;
}

uint64_t static _IdentifiedViewsKey.defaultValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
    v2 = a1;
  }

  return outlined init with copy of _IdentifiedViewTree(&static _IdentifiedViewsKey.defaultValue, v2);
}

uint64_t protocol witness for static PreferenceKey.defaultValue.getter in conformance _IdentifiedViewsKey@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
    v2 = a1;
  }

  return outlined init with copy of _IdentifiedViewTree(&static _IdentifiedViewsKey.defaultValue, v2);
}

double _s7SwiftUI22AccessibilityNodeProxyVSgWOi0_(uint64_t a1)
{
  *(a1 + 176) = 0;
  result = 0.0;
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
  return result;
}

uint64_t static _IdentifiedModifier._makeView(modifier:inputs:body:)@<X0>(void (*a1)(void *__return_ptr)@<X2>, void *a2@<X8>)
{
  a1(a2);
  type metadata accessor for _IdentifiedModifier();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  swift_beginAccess();
  CachedEnvironment.animatedSize(for:)();
  swift_endAccess();
  _ViewInputs.animatedPosition()();
  PreferencesOutputs.subscript.getter();

  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
}

uint64_t implicit closure #1 in static _IdentifiedModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = a3;
  v9 = type metadata accessor for IdentifiedViewTransform();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Attribute<(_:)>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v7, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_34, v8, v9, MEMORY[0x1E69E73E0], v3, MEMORY[0x1E69E7410], v4);
  return v6;
}

uint64_t IdentifiedViewTransform.modifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _IdentifiedModifier();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t IdentifiedViewTransform.environment.getter@<X0>(void *a1@<X8>)
{
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  *a1 = v4;
  a1[1] = v3;
}

uint64_t IdentifiedViewTransform.nodeList.getter@<X0>(uint64_t *a1@<X8>)
{
  if (*(v1 + 20) == *MEMORY[0x1E698D3F8])
  {
    result = 0;
    v4 = 0;
  }

  else
  {
    v4 = *(AGGraphGetValue() + 8);
  }

  *a1 = result;
  a1[1] = v4;
  return result;
}

double (*IdentifiedViewTransform.value.getter(uint64_t a1))(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = type metadata accessor for _IdentifiedModifier();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v27 - v4;
  v7 = *v1;
  v6 = v1[1];
  v8 = v1[2];
  LODWORD(v4) = v1[3];
  v9 = v1[5];
  v29 = v1[4];
  v30 = v4;
  v28 = v9;
  v60 = v7;
  v61 = v6;
  v62 = v8;
  v63 = v4;
  v64 = v29;
  v65 = v9;
  IdentifiedViewTransform.modifier.getter(v5);
  _convertToAnyHashable<A>(_:)();
  (*(*(v2 - 8) + 8))(v5, v2);
  Value = AGGraphGetValue();
  v11 = Value[1];
  v58 = *Value;
  v59 = v11;
  MEMORY[0x18D00B390]();
  type metadata accessor for CGPoint(0);
  AGGraphGetValue();
  v52 = v7;
  v53 = v6;
  v54 = v8;
  v12 = v29;
  LODWORD(v2) = v30;
  v55 = v30;
  v56 = v29;
  LODWORD(v5) = v28;
  v57 = v28;
  AccessibilityLargeContentViewModifier.AccessibilityLargeContentViewTransform.transform.getter(v51);
  v48 = v51[0];
  v49 = v51[1];
  v50 = v51[2];
  *&v68 = __PAIR64__(v6, v7);
  *(&v68 + 1) = __PAIR64__(v2, v8);
  *&v69 = __PAIR64__(v5, v12);
  IdentifiedViewTransform.nodeList.getter(&v45);
  v44 = v45;
  *&v31 = __PAIR64__(v6, v7);
  *(&v31 + 1) = __PAIR64__(v2, v8);
  *&v32 = __PAIR64__(v5, v12);
  IdentifiedViewTransform.environment.getter(&v43);
  v42 = v43;
  static AccessibilityNodeProxy.makeProxyForIdentifiedView(with:environment:)(&v44, &v42, v66);

  v76 = v66[8];
  v77 = v66[9];
  v78 = v66[10];
  v79 = v67;
  v72 = v66[4];
  v73 = v66[5];
  v74 = v66[6];
  v75 = v66[7];
  v68 = v66[0];
  v69 = v66[1];
  v70 = v66[2];
  v71 = v66[3];
  if (_s7SwiftUI22AccessibilityNodeProxyVSgWOg(&v68) == 1)
  {
    v13 = 0;
    v14 = 0;
    *(&v45 + 1) = 0;
    v46 = 0;
  }

  else
  {
    v13 = swift_allocObject();
    v15 = v77;
    *(v13 + 144) = v76;
    *(v13 + 160) = v15;
    *(v13 + 176) = v78;
    *(v13 + 192) = v79;
    v16 = v73;
    *(v13 + 80) = v72;
    *(v13 + 96) = v16;
    v17 = v75;
    *(v13 + 112) = v74;
    *(v13 + 128) = v17;
    v18 = v69;
    *(v13 + 16) = v68;
    *(v13 + 32) = v18;
    v19 = v71;
    *(v13 + 48) = v70;
    *(v13 + 64) = v19;
    v14 = &type metadata for AccessibilityNodeProxy;
  }

  *&v45 = v13;
  v47 = v14;
  _IdentifiedViewProxy.init(identifier:size:position:transform:accessibilityNode:platform:)();
  v20 = swift_allocObject();
  v21 = v40;
  *(v20 + 144) = v39;
  *(v20 + 160) = v21;
  *(v20 + 176) = v41;
  v22 = v36;
  *(v20 + 80) = v35;
  *(v20 + 96) = v22;
  v23 = v38;
  *(v20 + 112) = v37;
  *(v20 + 128) = v23;
  v24 = v32;
  *(v20 + 16) = v31;
  *(v20 + 32) = v24;
  v25 = v34;
  *(v20 + 48) = v33;
  *(v20 + 64) = v25;
  return partial apply for closure #1 in IdentifiedViewTransform.value.getter;
}

__n128 closure #1 in IdentifiedViewTransform.value.getter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SceneList.Item?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_IdentifiedViewTree>, &type metadata for _IdentifiedViewTree, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_18CD63410;
  outlined init with copy of _IdentifiedViewProxy(a2, v4 + 32);
  *(v4 + 200) = 0;
  v5 = *(a1 + 144);
  *(v4 + 336) = *(a1 + 128);
  *(v4 + 352) = v5;
  *(v4 + 361) = *(a1 + 153);
  v6 = *(a1 + 80);
  *(v4 + 272) = *(a1 + 64);
  *(v4 + 288) = v6;
  v7 = *(a1 + 112);
  *(v4 + 304) = *(a1 + 96);
  *(v4 + 320) = v7;
  v8 = *(a1 + 16);
  *(v4 + 208) = *a1;
  *(v4 + 224) = v8;
  result = *(a1 + 48);
  *(v4 + 240) = *(a1 + 32);
  *(v4 + 256) = result;
  *a1 = v4;
  *(a1 + 168) = 1;
  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance IdentifiedViewTransform<A>@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = IdentifiedViewTransform.value.getter(a1);
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@inout AccessibilityLargeContentViewTree) -> ();
  a2[1] = result;
  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance IdentifiedViewTransform<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE9B8](a1, WitnessTable);
}

uint64_t specialized _IdentifiedViewTree.forEach(_:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *), uint64_t a5)
{
  result = outlined init with copy of _IdentifiedViewTree(a1, v15);
  if (v17)
  {
    if (v17 == 1)
    {
      v10 = *(*&v15[0] + 16);
      if (v10)
      {
        v11 = *&v15[0] + 32;

        do
        {
          outlined init with copy of _IdentifiedViewTree(v11, v13);

          specialized _IdentifiedViewTree.forEach(_:)(v13, a2, a3, a4, a5);

          outlined destroy of _IdentifiedViewTree(v13);
          v11 += 176;
          --v10;
        }

        while (v10);
      }
    }
  }

  else
  {
    v13[8] = v15[8];
    v13[9] = v15[9];
    v14 = v16;
    v13[4] = v15[4];
    v13[5] = v15[5];
    v13[6] = v15[6];
    v13[7] = v15[7];
    v13[0] = v15[0];
    v13[1] = v15[1];
    v13[2] = v15[2];
    v13[3] = v15[3];
    outlined init with copy of _IdentifiedViewProxy(v13, v12);

    _IdentifiedViewProxy.adjustment.setter();
    a4(v12);
    outlined destroy of _IdentifiedViewProxy(v12);
    return outlined destroy of _IdentifiedViewProxy(v13);
  }

  return result;
}

uint64_t specialized static _IdentifiedViewsKey.reduce(value:nextValue:)(uint64_t a1, void (*a2)(_OWORD *__return_ptr))
{
  a2(v46);
  outlined init with copy of _IdentifiedViewTree(a1, &v35);
  *&v45[153] = *&v47[9];
  *&v45[128] = v46[8];
  *&v45[144] = *v47;
  *&v45[64] = v46[4];
  *&v45[80] = v46[5];
  *&v45[96] = v46[6];
  *&v45[112] = v46[7];
  *v45 = v46[0];
  *&v45[16] = v46[1];
  *&v45[32] = v46[2];
  *&v45[48] = v46[3];
  if (v47[24] == 2)
  {
    v3 = vorrq_s8(vorrq_s8(vorrq_s8(vorrq_s8(*&v45[40], *&v45[104]), vorrq_s8(*&v45[72], *&v45[136])), vorrq_s8(vorrq_s8(*&v45[56], *&v45[120]), vorrq_s8(*&v45[88], *&v45[152]))), vorrq_s8(*&v45[8], *&v45[24]));
    if (!(*&vorr_s8(*v3.i8, *&vextq_s8(v3, v3, 8uLL)) | *v45))
    {
      return outlined destroy of _IdentifiedViewTree(&v35);
    }
  }

  result = outlined destroy of _IdentifiedViewTree(a1);
  if (!v44[24])
  {
    if (v45[168] != 1)
    {
      v33 = v43;
      v34[0] = *v44;
      *(v34 + 9) = *&v44[9];
      v29 = v39;
      v30 = v40;
      v31 = v41;
      v32 = v42;
      v25 = v35;
      v26 = v36;
      v27 = v37;
      v28 = v38;
      v23 = *&v45[128];
      *v24 = *&v45[144];
      *&v24[9] = *&v45[153];
      v19 = *&v45[64];
      v20 = *&v45[80];
      v21 = *&v45[96];
      v22 = *&v45[112];
      v15 = *v45;
      v16 = *&v45[16];
      v17 = *&v45[32];
      v18 = *&v45[48];
      type metadata accessor for SceneList.Item?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_IdentifiedViewTree>, &type metadata for _IdentifiedViewTree, MEMORY[0x1E69E6F90]);
      v13 = swift_allocObject();
      v13[1] = xmmword_18CD63410;
      outlined init with copy of _IdentifiedViewTree(&v25, (v13 + 2));
      v13[21] = v23;
      v13[22] = *v24;
      *(v13 + 361) = *&v24[9];
      v13[17] = v19;
      v13[18] = v20;
      v13[19] = v21;
      v13[20] = v22;
      v13[13] = v15;
      v13[14] = v16;
      v13[15] = v17;
      v13[16] = v18;
      result = outlined destroy of _IdentifiedViewTree(&v25);
      *a1 = v13;
      goto LABEL_14;
    }

    v6 = *v45;
    v33 = v43;
    v34[0] = *v44;
    *(v34 + 9) = *&v44[9];
    v29 = v39;
    v30 = v40;
    v31 = v41;
    v32 = v42;
    v25 = v35;
    v26 = v36;
    v27 = v37;
    v28 = v38;
    type metadata accessor for SceneList.Item?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_IdentifiedViewTree>, &type metadata for _IdentifiedViewTree, MEMORY[0x1E69E6F90]);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_18CD63400;
    outlined init with copy of _IdentifiedViewTree(&v25, v7 + 32);
    v14 = v7;
    goto LABEL_12;
  }

  if (v44[24] != 1)
  {
    v8 = *&v45[144];
    *(a1 + 128) = *&v45[128];
    *(a1 + 144) = v8;
    *(a1 + 153) = *&v45[153];
    v9 = *&v45[80];
    *(a1 + 64) = *&v45[64];
    *(a1 + 80) = v9;
    v10 = *&v45[112];
    *(a1 + 96) = *&v45[96];
    *(a1 + 112) = v10;
    v11 = *&v45[16];
    *a1 = *v45;
    *(a1 + 16) = v11;
    v12 = *&v45[48];
    *(a1 + 32) = *&v45[32];
    *(a1 + 48) = v12;
    return result;
  }

  v5 = v35;
  if (v45[168] != 1)
  {
    v33 = *&v45[128];
    v34[0] = *&v45[144];
    *(v34 + 9) = *&v45[153];
    v29 = *&v45[64];
    v30 = *&v45[80];
    v31 = *&v45[96];
    v32 = *&v45[112];
    v25 = *v45;
    v26 = *&v45[16];
    v27 = *&v45[32];
    v28 = *&v45[48];
    type metadata accessor for SceneList.Item?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_IdentifiedViewTree>, &type metadata for _IdentifiedViewTree, MEMORY[0x1E69E6F90]);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18CD63400;
    outlined init with copy of _IdentifiedViewTree(&v25, v6 + 32);
    v14 = v5;
LABEL_12:
    specialized Array.append<A>(contentsOf:)(v6);
    result = outlined destroy of _IdentifiedViewTree(&v25);
    *a1 = v14;
    goto LABEL_14;
  }

  *&v25 = v35;
  result = specialized Array.append<A>(contentsOf:)(*v45);
  *a1 = v25;
LABEL_14:
  *(a1 + 168) = 1;
  return result;
}

uint64_t destroy for _IdentifiedViewTree(uint64_t result)
{
  v1 = result;
  v2 = *(result + 168);
  if (v2 >= 2)
  {
    v2 = *result + 2;
  }

  if (v2 == 1)
  {
  }

  else if (!v2)
  {
    __swift_destroy_boxed_opaque_existential_1(result);

    if (*(v1 + 120))
    {
    }

    if (*(v1 + 160))
    {
      return __swift_destroy_boxed_opaque_existential_1(v1 + 136);
    }
  }

  return result;
}

uint64_t initializeWithCopy for _IdentifiedViewTree(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 168);
  if (v4 >= 2)
  {
    v4 = *a2 + 2;
  }

  if (v4 == 1)
  {
    *a1 = *a2;
    *(a1 + 168) = 1;
  }

  else
  {
    if (!v4)
    {
      v5 = *(a2 + 24);
      *(a1 + 24) = v5;
      (**(v5 - 8))(a1, a2);
      v6 = *(a2 + 120);
      v7 = *(a2 + 56);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = v7;
      v8 = *(a2 + 80);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 80) = v8;
      v9 = *(a2 + 104);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 104) = v9;

      if (v6)
      {
        v10 = *(a2 + 128);
        *(a1 + 120) = v6;
        *(a1 + 128) = v10;

        v11 = *(a2 + 160);
        if (v11)
        {
LABEL_7:
          *(a1 + 160) = v11;
          (**(v11 - 8))(a1 + 136, a2 + 136);
LABEL_12:
          *(a1 + 168) = 0;
          return a1;
        }
      }

      else
      {
        *(a1 + 120) = *(a2 + 120);
        v11 = *(a2 + 160);
        if (v11)
        {
          goto LABEL_7;
        }
      }

      *(a1 + 136) = *(a2 + 136);
      *(a1 + 152) = *(a2 + 152);
      goto LABEL_12;
    }

    v12 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v12;
    *(a1 + 153) = *(a2 + 153);
    v13 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v13;
    v14 = *(a2 + 112);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = v14;
    v15 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v15;
    v16 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v16;
  }

  return a1;
}

uint64_t assignWithCopy for _IdentifiedViewTree(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 168);
    if (v4 >= 2)
    {
      v4 = *a1 + 2;
    }

    if (v4 == 1)
    {
    }

    else if (!v4)
    {
      __swift_destroy_boxed_opaque_existential_1(a1);

      if (*(a1 + 120))
      {
      }

      if (*(a1 + 160))
      {
        __swift_destroy_boxed_opaque_existential_1(a1 + 136);
      }
    }

    v5 = *(a2 + 168);
    if (v5 >= 2)
    {
      v5 = *a2 + 2;
    }

    if (v5 == 1)
    {
      *a1 = *a2;
      *(a1 + 168) = 1;
    }

    else
    {
      if (!v5)
      {
        v6 = *(a2 + 3);
        *(a1 + 24) = v6;
        *(a1 + 32) = *(a2 + 4);
        (**(v6 - 8))(a1, a2);
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 72) = *(a2 + 9);
        *(a1 + 80) = *(a2 + 10);
        *(a1 + 88) = *(a2 + 88);
        *(a1 + 104) = *(a2 + 104);
        v7 = *(a2 + 15);

        if (v7)
        {
          v8 = *(a2 + 16);
          *(a1 + 120) = v7;
          *(a1 + 128) = v8;

          v9 = *(a2 + 20);
          if (v9)
          {
LABEL_17:
            *(a1 + 160) = v9;
            (**(v9 - 8))(a1 + 136, a2 + 136);
LABEL_22:
            *(a1 + 168) = 0;
            return a1;
          }
        }

        else
        {
          *(a1 + 120) = *(a2 + 120);
          v9 = *(a2 + 20);
          if (v9)
          {
            goto LABEL_17;
          }
        }

        v18 = *(a2 + 136);
        *(a1 + 152) = *(a2 + 152);
        *(a1 + 136) = v18;
        goto LABEL_22;
      }

      v10 = *a2;
      v11 = a2[2];
      *(a1 + 16) = a2[1];
      *(a1 + 32) = v11;
      *a1 = v10;
      v12 = a2[3];
      v13 = a2[4];
      v14 = a2[6];
      *(a1 + 80) = a2[5];
      *(a1 + 96) = v14;
      *(a1 + 48) = v12;
      *(a1 + 64) = v13;
      v15 = a2[7];
      v16 = a2[8];
      v17 = a2[9];
      *(a1 + 153) = *(a2 + 153);
      *(a1 + 128) = v16;
      *(a1 + 144) = v17;
      *(a1 + 112) = v15;
    }
  }

  return a1;
}

__n128 assignWithTake for _IdentifiedViewTree(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return result;
  }

  v3 = *(a1 + 168);
  if (v3 >= 2)
  {
    v3 = *a1 + 2;
  }

  if (v3 == 1)
  {
    v4 = a1;
  }

  else
  {
    if (v3)
    {
      goto LABEL_12;
    }

    v4 = a1;
    __swift_destroy_boxed_opaque_existential_1(a1);

    a1 = v4;
    if (*(v4 + 120))
    {

      a1 = v4;
    }

    if (!*(a1 + 160))
    {
      goto LABEL_12;
    }

    __swift_destroy_boxed_opaque_existential_1(v4 + 136);
  }

  a1 = v4;
LABEL_12:
  v6 = *(a2 + 168);
  if (v6 >= 2)
  {
    v6 = *a2 + 2;
  }

  if (v6 == 1)
  {
    *a1 = *a2;
    *(a1 + 168) = 1;
  }

  else
  {
    v7 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v7;
    if (v6)
    {
      *(a1 + 153) = *(a2 + 153);
      v11 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v11;
      v12 = *(a2 + 112);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 112) = v12;
      v13 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v13;
      result = *(a2 + 48);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = result;
    }

    else
    {
      *(a1 + 160) = *(a2 + 160);
      v8 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v8;
      v9 = *(a2 + 112);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 112) = v9;
      v10 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v10;
      result = *(a2 + 48);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = result;
      *(a1 + 168) = 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _IdentifiedViewTree(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 169))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 168);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for _IdentifiedViewTree(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 153) = 0u;
    *(result + 128) = 0u;
    *(result + 144) = 0u;
    *(result + 96) = 0u;
    *(result + 112) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 169) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 169) = 0;
    }

    if (a2)
    {
      *(result + 168) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for _IdentifiedViewTree(uint64_t a1)
{
  result = *(a1 + 168);
  if (result >= 2)
  {
    return (*a1 + 2);
  }

  return result;
}

uint64_t destructiveInjectEnumTag for _IdentifiedViewTree(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 160) = 0;
    *(result + 128) = 0u;
    *(result + 144) = 0u;
    *(result + 96) = 0u;
    *(result + 112) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 168) = a2;
  return result;
}

uint64_t _s7SwiftUI22AccessibilityNodeProxyVSgWOg(uint64_t a1)
{
  v1 = *(a1 + 144);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t static MultiEventListener._makeGesture(gesture:inputs:)(int *a1, __int128 *a2, uint64_t a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a2[3];
  v5 = a2[5];
  v29 = a2[4];
  *v30 = v5;
  *&v30[12] = *(a2 + 92);
  v6 = a2[1];
  v26 = *a2;
  *v27 = v6;
  v7 = a2[3];
  v9 = *a2;
  v8 = a2[1];
  *&v27[16] = a2[2];
  v28 = v7;
  v10 = a2[5];
  v38 = v29;
  *v39 = v10;
  *&v39[12] = *(a2 + 92);
  v35 = v9;
  *v36 = v8;
  v11 = *a1;
  v13 = *(a2 + 27);
  v12 = *(a2 + 28);
  v15 = *(a2 + 29);
  v14 = *(a2 + 30);
  *&v36[16] = *&v27[16];
  v37 = v4;
  v40 = v13;
  v41 = v12;
  v42 = v15;
  v43 = v14;
  v16 = _GestureInputs.animatedPosition()();
  v31 = v13;
  v32 = v12;
  v33 = v15;
  v34 = v14;
  v17 = _GestureInputs.transform.getter();
  LODWORD(v35) = v11;
  type metadata accessor for MultiEventListener();
  type metadata accessor for _GraphValue();
  *&v26 = __PAIR64__(v16, v13);
  *(&v26 + 1) = __PAIR64__(v12, v17);
  *v27 = _GraphValue.value.getter();
  v27[4] = v14 & 1;
  v27[5] = (v14 & 2) != 0;
  *&v27[8] = default argument 7 of MultiEventListenerPhase.init(events:position:transform:resetSeed:listener:preconvertedEventLocations:allowsIncompleteEventSequences:latestEvents:endedEventIDs:lastResetSeed:)(a3);
  *&v27[16] = MEMORY[0x1E69E7CD0];
  *&v27[24] = 0;
  lazy protocol witness table accessor for type EventID and conformance EventID();
  type metadata accessor for Dictionary();
  v23 = type metadata accessor for GesturePhase();
  v18 = type metadata accessor for MultiEventListenerPhase();
  v24 = v18;
  WitnessTable = swift_getWitnessTable();
  v19 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v26, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_2, v22, v18, MEMORY[0x1E69E73E0], v19, MEMORY[0x1E69E7410], v20);
  v35 = v26;
  *v36 = *v27;
  *&v36[12] = *&v27[12];
  (*(*(v18 - 8) + 8))(&v35, v18);
  return _GestureOutputs.init(phase:)();
}

uint64_t default argument 7 of MultiEventListenerPhase.init(events:position:transform:resetSeed:listener:preconvertedEventLocations:allowsIncompleteEventSequences:latestEvents:endedEventIDs:lastResetSeed:)(uint64_t a1)
{
  v2 = MEMORY[0x1E69819B0];
  swift_getTupleTypeMetadata2();
  v3 = static Array._allocateUninitialized(_:)();
  v4 = lazy protocol witness table accessor for type EventID and conformance EventID();
  v5 = specialized Dictionary.init(dictionaryLiteral:)(v3, v2, a1, v4);

  return v5;
}

uint64_t MultiEventListenerPhase.transform.getter@<X0>(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = *(Value + 8);
  *a1 = *Value;
  *(a1 + 8) = v3;
  v4 = *(Value + 32);
  *(a1 + 16) = *(Value + 16);
  *(a1 + 32) = v4;
}

uint64_t MultiEventListenerPhase.resetPhase()(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  lazy protocol witness table accessor for type EventID and conformance EventID();
  type metadata accessor for Dictionary();
  Dictionary.removeAll(keepingCapacity:)(0);

  *(v1 + 32) = MEMORY[0x1E69E7CD0];
  v9 = 0;
  v10 = 0;
  v7 = a1;
  WitnessTable = swift_getWitnessTable();
  v3 = type metadata accessor for GesturePhase();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v9, closure #1 in StatefulRule.value.setterpartial apply, v6, v3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v4);
  return outlined consume of GesturePhase<[EventID : A]><A>(v9, v10);
}

uint64_t MultiEventListenerPhase.updateValue()(uint64_t a1)
{
  v149 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v131 = type metadata accessor for Optional();
  v118 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v6 = &v115[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v115[-v8];
  v10 = *(v3 - 1);
  MEMORY[0x1EEE9AC00](v11);
  v135 = &v115[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v126 = &v115[-v14];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v115[-v16];
  v138 = type metadata accessor for Optional();
  v18 = *(v138 - 1);
  MEMORY[0x1EEE9AC00](v138);
  v122 = &v115[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v139 = &v115[-v21];
  MEMORY[0x1EEE9AC00](v22);
  v119 = &v115[-v23];
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v115[-v25];
  swift_getWitnessTable();
  v123 = a1;
  result = ResettableGestureRule.resetIfNeeded()();
  if ((result & 1) == 0)
  {
    return result;
  }

  v127 = v9;
  v128 = v6;
  v129 = TupleTypeMetadata2;
  v116 = *(v1 + 20);
  v140 = v1;
  LODWORD(v136) = *(v1 + 21);
  type metadata accessor for [EventID : EventType]();
  v28 = *AGGraphGetValue();
  v29 = v10;
  v30 = v28 + 64;
  v31 = 1 << *(v28 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(v28 + 64);
  v34 = (v31 + 63) >> 6;
  i = (v29 + 48);
  v134 = v18 + 8;
  v132 = (v29 + 32);
  v125 = (v29 + 16);
  v117 = (v29 + 56);
  v124 = v29;
  v130 = (v29 + 8);
  v133 = v28;

  LODWORD(v120) = 0;
  v141 = v3;
  v121 = v17;
  v35 = 0;
  if (!v33)
  {
LABEL_6:
    if (v34 <= v35 + 1)
    {
      v37 = v35 + 1;
    }

    else
    {
      v37 = v34;
    }

    v38 = v37 - 1;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v34)
      {
        v33 = 0;
        v145 = 0;
        memset(v144, 0, sizeof(v144));
        goto LABEL_14;
      }

      v33 = *(v30 + 8 * v36);
      ++v35;
      if (v33)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_68:

    v110 = 2;
    v109 = v3;
LABEL_69:
    *&v146 = v109;
    BYTE8(v146) = v110;
    MEMORY[0x1EEE9AC00](Value);
    v113 = v123;
    WitnessTable = swift_getWitnessTable();
    type metadata accessor for Dictionary();
    v111 = type metadata accessor for GesturePhase();
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v146, closure #1 in StatefulRule.value.setterpartial apply, &v115[-32], v111, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v112);
    outlined consume of GesturePhase<[EventID : A]><A>(v146, BYTE8(v146));
  }

  while (1)
  {
    v36 = v35;
LABEL_13:
    v39 = __clz(__rbit64(v33));
    v33 &= v33 - 1;
    v40 = v39 | (v36 << 6);
    v41 = (*(v133 + 48) + 16 * v40);
    v42 = *v41;
    v43 = v41[1];
    outlined init with copy of _Benchmark(*(v133 + 56) + 40 * v40, v143);
    *&v144[0] = v42;
    *(&v144[0] + 1) = v43;
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v143, &v144[1]);
    v38 = v36;
LABEL_14:
    v146 = v144[0];
    v147[0] = v144[1];
    v147[1] = v144[2];
    v148 = v145;
    v44 = *&v144[0];
    if (!*&v144[0])
    {
      break;
    }

    v45 = *(&v146 + 1);
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v147, v144);
    if (v136)
    {
      goto LABEL_23;
    }

    v3 = *(&v144[1] + 1);
    v46 = *&v144[2];
    __swift_project_boxed_opaque_existential_1(v144, *(&v144[1] + 1));
    (*(v46 + 24))(v143, v3, v46);
    if (*&v143[0])
    {

      v50 = *(v140 + 24);
      *&v143[0] = v44;
      *(&v143[0] + 1) = v45;
      v51 = lazy protocol witness table accessor for type EventID and conformance EventID();
      v52 = v119;
      v53 = v50;
      v54 = v141;
      MEMORY[0x18D00C560](v143, v53, MEMORY[0x1E69819B0], v141, v51);
      LODWORD(v54) = (*i)(v52, 1, v54);
      (*v134)(v52, v138);
      if (v54 == 1)
      {
        v55 = *(&v144[1] + 1);
        v56 = *&v144[2];
        __swift_project_boxed_opaque_existential_1(v144, *(&v144[1] + 1));
        (*(v56 + 8))(v143, v55, v56);
        if (LOBYTE(v143[0]))
        {
LABEL_73:

          goto LABEL_33;
        }
      }

LABEL_23:
      outlined init with copy of _Benchmark(v144, v143);
      v57 = *(*(v123 + 24) + 56);
      v58 = v141;
      v120 = *(v123 + 24);
      v57(v143, v141);
      v59 = v139;
      if ((*i)(v139, 1, v58) == 1)
      {

        (*v134)(v59, v138);
        goto LABEL_33;
      }

      (*v132)(v121, v59, v58);
      (*(v120 + 24))(v143, v58);
      if (!*&v143[0])
      {

        (*v130)(v121, v58);
        goto LABEL_33;
      }

      v60 = v122;
      v3 = v121;
      (*v125)(v122, v121, v58);
      (*v117)(v60, 0, 1, v58);
      *&v143[0] = v44;
      *(&v143[0] + 1) = v45;
      lazy protocol witness table accessor for type EventID and conformance EventID();
      type metadata accessor for Dictionary();
      Dictionary.subscript.setter();
      (*(v120 + 8))(v143, v58);
      if (!LOBYTE(v143[0]))
      {
        specialized Set._Variant.remove(_:)(v44, v45, v143);
      }

      (*v130)(v121, v58);
      __swift_destroy_boxed_opaque_existential_1(v144);
      LODWORD(v120) = 1;
      v35 = v38;
      if (!v33)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v47 = *(v140 + 24);
      *&v143[0] = v44;
      *(&v143[0] + 1) = v45;
      v48 = lazy protocol witness table accessor for type EventID and conformance EventID();
      v49 = v141;
      MEMORY[0x18D00C560](v143, v47, MEMORY[0x1E69819B0], v141, v48);
      if ((*i)(v26, 1, v49) != 1)
      {

        (*v134)(v26, v138);
LABEL_33:
        v65 = __swift_destroy_boxed_opaque_existential_1(v144);
        *&v146 = 0;
        BYTE8(v146) = 3;
        MEMORY[0x1EEE9AC00](v65);
        v113 = v123;
        WitnessTable = swift_getWitnessTable();
        lazy protocol witness table accessor for type EventID and conformance EventID();
        type metadata accessor for Dictionary();
        v66 = type metadata accessor for GesturePhase();
        _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v146, closure #1 in StatefulRule.value.setterpartial apply, &v115[-32], v66, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v67);
        return outlined consume of GesturePhase<[EventID : A]><A>(v146, BYTE8(v146));
      }

      (*v134)(v26, v138);
      __swift_destroy_boxed_opaque_existential_1(v144);
      v35 = v38;
      if (!v33)
      {
        goto LABEL_6;
      }
    }
  }

  if ((v120 & 1) == 0)
  {
    lazy protocol witness table accessor for type EventID and conformance EventID();
    type metadata accessor for Dictionary();
    v68 = type metadata accessor for GesturePhase();
    result = AGGraphGetOutputValue();
    if (!result)
    {
      *&v146 = 0;
      BYTE8(v146) = 0;
      MEMORY[0x1EEE9AC00](0);
      v113 = v123;
      WitnessTable = swift_getWitnessTable();
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v146, partial apply for closure #1 in StatefulRule.value.setter, &v115[-32], v68, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v69);
      return outlined consume of GesturePhase<[EventID : A]><A>(v146, BYTE8(v146));
    }

    return result;
  }

  v61 = v140;
  *&v143[0] = *(v140 + 24);
  v62 = v141;
  if (v116)
  {

    v64 = *(v123 + 24);
  }

  else
  {

    AGGraphClearUpdate();
    v64 = *(v123 + 24);
    closure #1 in MultiEventListenerPhase.updateValue()(v61, &v146);
    AGGraphSetUpdate();
    *&v144[0] = 1;
    memset(v144 + 8, 0, 32);
    BYTE8(v144[2]) = 2;
    defaultConvertEventLocations<A>(_:coordinateSpace:transform:)();
    outlined consume of EnvironmentValues?(v146);
    v63 = outlined destroy of CoordinateSpace?(v144);
  }

  v70 = v129;
  v71 = v118;
  MEMORY[0x1EEE9AC00](v63);
  *&v115[-32] = v62;
  *&v115[-24] = v64;
  v113 = v61;
  v122 = lazy protocol witness table accessor for type EventID and conformance EventID();
  v72 = Dictionary.optimisticFilter(_:)();

  v73 = 0;
  v75 = (v72 + 64);
  v74 = *(v72 + 64);
  v134 = v72;
  v76 = 1 << *(v72 + 32);
  v77 = -1;
  if (v76 < 64)
  {
    v77 = ~(-1 << v76);
  }

  v78 = v77 & v74;
  v79 = (v76 + 63) >> 6;
  v139 = (v70 - 8);
  v138 = (v71 + 32);
  v136 = v64 + 8;
  v80 = v62;
  v81 = v64;
  v133 = v64;
  for (i = (v72 + 64); ; v75 = i)
  {
    if (!v78)
    {
      if (v79 <= v73 + 1)
      {
        v83 = v73 + 1;
      }

      else
      {
        v83 = v79;
      }

      v84 = v83 - 1;
      while (1)
      {
        v82 = v73 + 1;
        if (__OFADD__(v73, 1))
        {
          break;
        }

        if (v82 >= v79)
        {
          v78 = 0;
          v94 = 1;
          v73 = v84;
          v93 = v128;
          goto LABEL_53;
        }

        v78 = v75[v82];
        ++v73;
        if (v78)
        {
          v73 = v82;
          goto LABEL_52;
        }
      }

      __break(1u);
      goto LABEL_73;
    }

    v82 = v73;
LABEL_52:
    v85 = __clz(__rbit64(v78));
    v78 &= v78 - 1;
    v86 = v85 | (v82 << 6);
    v87 = (*(v134 + 48) + 16 * v86);
    v88 = *v87;
    v89 = v87[1];
    v90 = v124;
    v91 = v126;
    (*(v124 + 16))(v126, *(v134 + 56) + *(v124 + 72) * v86, v80);
    v92 = *(v70 + 48);
    v93 = v128;
    *v128 = v88;
    *(v93 + 1) = v89;
    (*(v90 + 32))(&v93[v92], v91, v80);
    v94 = 0;
    v81 = v133;
LABEL_53:
    v95 = *(v70 - 8);
    (*(v95 + 56))(v93, v94, 1, v70);
    v96 = v127;
    (*v138)(v127, v93, v131);
    if ((*(v95 + 48))(v96, 1, v70) == 1)
    {
      break;
    }

    v97 = v70;
    v98 = *v96;
    v99 = v96[1];
    (*v132)(v135, v96 + *(v97 + 48), v80);
    (*(v81 + 8))(&v146, v80, v81);
    if (v146 == 2 || v146 == 3)
    {
      specialized Set._Variant.insert(_:)(&v146, v98, v99);
    }

    v80 = v141;
    (*v130)(v135, v141);
    v70 = v129;
  }

  v3 = v134;

  *&v146 = v3;
  v142 = 3;
  MEMORY[0x1EEE9AC00](v100);
  v113 = v80;
  WitnessTable = v81;
  type metadata accessor for Dictionary.Values();

  swift_getWitnessTable();
  Sequence.reduce<A>(_:_:)();

  if (LOBYTE(v144[0]) > 2u)
  {
    type metadata accessor for MultiEventListener();
    Value = AGGraphGetValue();
    if ((*Value & 1) == 0)
    {
      goto LABEL_68;
    }

    v109 = 0;
    v110 = 3;
    goto LABEL_69;
  }

  if (LOBYTE(v144[0]) == 1)
  {
    *&v146 = v3;
    BYTE8(v146) = 1;
    MEMORY[0x1EEE9AC00](v101);
    v102 = &v115[-32];
    v113 = v123;
    WitnessTable = swift_getWitnessTable();
    type metadata accessor for Dictionary();
    v103 = type metadata accessor for GesturePhase();

    v105 = MEMORY[0x1E69E7CA8];
    v106 = MEMORY[0x1E69E73E0];
    v107 = MEMORY[0x1E69E7410];
LABEL_65:
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v146, closure #1 in StatefulRule.value.setterpartial apply, v102, v103, v106, v105 + 8, v107, v104);
    outlined consume of GesturePhase<[EventID : A]><A>(v146, BYTE8(v146));
  }

  if (LOBYTE(v144[0]) == 2)
  {
    *&v146 = v3;
    BYTE8(v146) = 2;
    MEMORY[0x1EEE9AC00](v101);
    v102 = &v115[-32];
    v113 = v123;
    WitnessTable = swift_getWitnessTable();
    type metadata accessor for Dictionary();
    v103 = type metadata accessor for GesturePhase();

    v105 = MEMORY[0x1E69E7CA8];
    v106 = MEMORY[0x1E69E73E0];
    v107 = MEMORY[0x1E69E7410];
    goto LABEL_65;
  }

  LODWORD(WitnessTable) = 0;
  v113 = 167;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void closure #1 in MultiEventListenerPhase.updateValue()(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v16 = *a1;
  v17[0] = v4;
  *(v17 + 12) = *(a1 + 28);
  v5 = type metadata accessor for MultiEventListenerPhase();
  v6 = *(v5 - 8);
  v7 = *(v6 + 16);
  v7(&v14, &v16, v5);
  MultiEventListenerPhase.transform.getter(a2);
  v8 = *(v6 + 8);
  v8(&v16, v5);
  v9 = a1[1];
  v14 = *a1;
  v15[0] = v9;
  *(v15 + 12) = *(a1 + 28);
  v7(&v13, &v14, v5);
  type metadata accessor for CGPoint(0);
  Value = AGGraphGetValue();
  v11 = *Value;
  v12 = Value[1];
  v8(&v14, v5);
  ViewTransform.appendPosition(_:)(__PAIR128__(v12, v11));
}

void *closure #3 in MultiEventListenerPhase.updateValue()@<X0>(void *result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v5 = *result;
  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v9 = *(a3 + 8);
    result = v9((&v10 + 2), a2, a3);
    if (BYTE2(v10))
    {
      result = v9((&v10 + 1), a2, a3);
      v6 = BYTE1(v10);
      if (BYTE1(v10) != 1)
      {
        if (v5 == 2)
        {
          v6 = 2;
        }

        else
        {
          result = v9(&v10, a2, a3);
          v6 = v10;
          if (v10 != 2)
          {
            v6 = v5;
          }
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  *a4 = v6;
  return result;
}

uint64_t specialized MultiEventListenerPhase.description.getter()
{
  _StringGuts.grow(_:)(17);

  strcpy(v2, "MultiListener[");
  v0 = _typeName(_:qualified:)();
  MEMORY[0x18D00C9B0](v0);

  MEMORY[0x18D00C9B0](93, 0xE100000000000000);
  return v2[0];
}

uint64_t destroy for MultiEventListenerPhase()
{
}

uint64_t initializeWithCopy for MultiEventListenerPhase(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  v3 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v3;
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t assignWithCopy for MultiEventListenerPhase(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 21) = *(a2 + 21);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t assignWithTake for MultiEventListenerPhase(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 21) = *(a2 + 21);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t getEnumTagSinglePayload for MultiEventListenerPhase(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 44))
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

uint64_t storeEnumTagSinglePayload for MultiEventListenerPhase(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 44) = 1;
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

    *(result + 44) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined destroy of CoordinateSpace?(uint64_t a1)
{
  type metadata accessor for CoordinateSpace?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for CoordinateSpace?()
{
  if (!lazy cache variable for type metadata for CoordinateSpace?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CoordinateSpace?);
    }
  }
}

uint64_t assignWithCopy for NavigationLinkSelectionIdentifier(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 3);
  if (*(a1 + 24))
  {
    if (v4)
    {
      __swift_assign_boxed_opaque_existential_1(a1, a2);
    }

    else
    {
      outlined destroy of AnyNavigationLinkPresentedValue(a1);
      v5 = *(a2 + 4);
      v6 = a2[1];
      *a1 = *a2;
      *(a1 + 16) = v6;
      *(a1 + 32) = v5;
    }
  }

  else if (v4)
  {
    *(a1 + 24) = v4;
    *(a1 + 32) = *(a2 + 4);
    (**(v4 - 8))(a1, a2);
  }

  else
  {
    v7 = *a2;
    v8 = a2[1];
    *(a1 + 32) = *(a2 + 4);
    *a1 = v7;
    *(a1 + 16) = v8;
  }

  v9 = *(a2 + 6);
  if (*(a1 + 48) != 1)
  {
    if (v9 != 1)
    {
      *(a1 + 40) = *(a2 + 10);
      *(a1 + 44) = *(a2 + 11);
      *(a1 + 48) = *(a2 + 6);

      goto LABEL_15;
    }

    outlined destroy of _ViewList_ID.Canonical(a1 + 40);
    goto LABEL_13;
  }

  if (v9 == 1)
  {
LABEL_13:
    *(a1 + 40) = *(a2 + 40);
    goto LABEL_15;
  }

  *(a1 + 40) = *(a2 + 10);
  *(a1 + 44) = *(a2 + 11);
  *(a1 + 48) = *(a2 + 6);

LABEL_15:
  *(a1 + 56) = *(a2 + 7);
  return a1;
}

uint64_t assignWithTake for NavigationLinkSelectionIdentifier(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    if (*(a2 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
    }

    else
    {
      outlined destroy of AnyNavigationLinkPresentedValue(a1);
    }
  }

  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  if (*(a1 + 48) != 1)
  {
    v5 = *(a2 + 48);
    if (v5 != 1)
    {
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 48) = v5;

      goto LABEL_10;
    }

    outlined destroy of _ViewList_ID.Canonical(a1 + 40);
  }

  *(a1 + 40) = *(a2 + 40);
LABEL_10:
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t assignWithCopy for NavigationLinkTraitValueModifier(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 3);
  if (*(a1 + 24))
  {
    if (v4)
    {
      __swift_assign_boxed_opaque_existential_1(a1, a2);
    }

    else
    {
      outlined destroy of AnyNavigationLinkPresentedValue(a1);
      v5 = *(a2 + 4);
      v6 = a2[1];
      *a1 = *a2;
      *(a1 + 16) = v6;
      *(a1 + 32) = v5;
    }
  }

  else if (v4)
  {
    *(a1 + 24) = v4;
    *(a1 + 32) = *(a2 + 4);
    (**(v4 - 8))(a1, a2);
  }

  else
  {
    v7 = *a2;
    v8 = a2[1];
    *(a1 + 32) = *(a2 + 4);
    *a1 = v7;
    *(a1 + 16) = v8;
  }

  *(a1 + 40) = *(a2 + 5);
  return a1;
}

__n128 assignWithTake for NavigationLinkTraitValueModifier(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    v3 = a1;
    if (*(a2 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
    }

    else
    {
      outlined destroy of AnyNavigationLinkPresentedValue(a1);
    }

    a1 = v3;
  }

  result = *a2;
  v5 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  v6 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v6;
  return result;
}

uint64_t NavigationLinkSelectionIdentifier.matches(_:)(void *a1)
{
  outlined init with copy of AnyNavigationLinkPresentedValue?(v1, &v14);
  if (*(&v15 + 1))
  {
    v17 = v14;
    v18 = v15;
    v19 = v16;
    outlined init with copy of AnyNavigationLinkPresentedValue?(a1, &v11);
    if (*(&v12 + 1))
    {
      v14 = v11;
      v15 = v12;
      v16 = v13;
      v3 = *(&v18 + 1);
      v4 = v19;
      __swift_project_boxed_opaque_existential_1(&v17, *(&v18 + 1));
      v5 = (*(v4 + 112))(&v14, v3, v4);
      outlined destroy of AnyNavigationLinkPresentedValue(&v14);
      outlined destroy of AnyNavigationLinkPresentedValue(&v17);
      return v5 & 1;
    }

    outlined destroy of AnyNavigationLinkPresentedValue(&v17);
    v6 = &v11;
  }

  else
  {
    v6 = &v14;
  }

  _s7SwiftUI31AnyNavigationLinkPresentedValueVSg_ADtWOhTm_0(v6, type metadata accessor for AnyNavigationLinkPresentedValue?);
  v7 = v1[6];
  if (v7 == 1 || (v8 = a1[6], v8 == 1))
  {
    v5 = v1[7] == a1[7];
  }

  else
  {
    v9 = a1[5];
    *&v17 = v1[5];
    *(&v17 + 1) = v7;
    *&v14 = v9;
    *(&v14 + 1) = v8;
    v5 = MEMORY[0x18D003E10](&v17, &v14);
  }

  return v5 & 1;
}

uint64_t NavigationLinkSelectionIdentifier.hash(into:)()
{
  outlined init with copy of AnyNavigationLinkPresentedValue?(v0, &v9);
  if (*(&v10 + 1))
  {
    v6 = v9;
    v7 = v10;
    v8 = v11;
    Hasher._combine(_:)(1u);
    v1 = *(&v7 + 1);
    v2 = v8;
    __swift_project_boxed_opaque_existential_1(&v6, *(&v7 + 1));
    (*(v2 + 24))(v5, v1, v2);
    AnyHashable.hash(into:)();
    outlined destroy of AnyHashable(v5);
    outlined destroy of AnyNavigationLinkPresentedValue(&v6);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v3 = v0[6];
  if (v3 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    *&v9 = v0[5];
    *(&v9 + 1) = v3;
    Hasher._combine(_:)(1u);

    _ViewList_ID.Canonical.hash(into:)();
  }

  return MEMORY[0x18D00F6F0](v0[7]);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NavigationLinkSelectionIdentifier()
{
  Hasher.init(_seed:)();
  NavigationLinkSelectionIdentifier.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NavigationLinkSelectionIdentifier()
{
  Hasher.init(_seed:)();
  NavigationLinkSelectionIdentifier.hash(into:)();
  return Hasher._finalize()();
}

uint64_t NavigationLinkSelectionIdentifier.description.getter()
{
  *&v11 = 0;
  *(&v11 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(67);
  v14 = v11;
  MEMORY[0x18D00C9B0](0xD000000000000016, 0x800000018CD576A0);
  outlined init with copy of AnyNavigationLinkPresentedValue?(v0, &v11);
  if (*(&v12 + 1))
  {
    v9[0] = v11;
    v9[1] = v12;
    v10 = v13;
    __swift_project_boxed_opaque_existential_1(v9, *(&v12 + 1));
    v1 = dispatch thunk of CustomStringConvertible.description.getter();
    v3 = v2;
    outlined destroy of AnyNavigationLinkPresentedValue(v9);
  }

  else
  {
    v3 = 0xED000065756C6176;
    v1 = 0x206B6E696C206F4ELL;
  }

  MEMORY[0x18D00C9B0](v1, v3);

  MEMORY[0x18D00C9B0](0xD000000000000018, 0x800000018CD576C0);
  v4 = v0[6];
  if (v4 == 1)
  {
    v5 = 0xEB00000000747369;
    v6 = 0x4C206E6920746F4ELL;
  }

  else
  {
    *&v11 = v0[5];
    *(&v11 + 1) = v4;
    v6 = _ViewList_ID.Canonical.description.getter();
    v5 = v7;
  }

  MEMORY[0x18D00C9B0](v6, v5);

  MEMORY[0x18D00C9B0](0x617073656D614E0ALL, 0xEF203A44492E6563);
  *&v11 = v0[7];
  _print_unlocked<A, B>(_:_:)();
  return v14;
}

double protocol witness for static _ViewTraitKey.defaultValue.getter in conformance LinkValueTraitKey@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  return result;
}

BOOL specialized static NavigationLinkSelectionIdentifier.== infix(_:_:)(uint64_t *a1, void *a2)
{
  outlined init with copy of AnyNavigationLinkPresentedValue?(a1, v18);
  outlined init with copy of AnyNavigationLinkPresentedValue?(a2, &v19);
  if (v18[3])
  {
    outlined init with copy of AnyNavigationLinkPresentedValue?(v18, v15);
    if (*(&v20 + 1))
    {
      v13[0] = v19;
      v13[1] = v20;
      v14 = v21;
      v4 = v16;
      v5 = v17;
      __swift_project_boxed_opaque_existential_1(v15, v16);
      v6 = (*(v5 + 112))(v13, v4, v5);
      outlined destroy of AnyNavigationLinkPresentedValue(v13);
      outlined destroy of AnyNavigationLinkPresentedValue(v15);
      _s7SwiftUI31AnyNavigationLinkPresentedValueVSg_ADtWOhTm_0(v18, type metadata accessor for AnyNavigationLinkPresentedValue?);
      if ((v6 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_7;
    }

    outlined destroy of AnyNavigationLinkPresentedValue(v15);
LABEL_11:
    _s7SwiftUI31AnyNavigationLinkPresentedValueVSg_ADtWOhTm_0(v18, type metadata accessor for (AnyNavigationLinkPresentedValue?, AnyNavigationLinkPresentedValue?));
    return 0;
  }

  if (*(&v20 + 1))
  {
    goto LABEL_11;
  }

  _s7SwiftUI31AnyNavigationLinkPresentedValueVSg_ADtWOhTm_0(v18, type metadata accessor for AnyNavigationLinkPresentedValue?);
LABEL_7:
  v7 = a1[5];
  v8 = a1[6];
  v9 = a2[5];
  v10 = a2[6];
  if (v8 == 1)
  {
    outlined copy of Text.LineStyle?(a1[5], 1);
    if (v10 == 1)
    {
      outlined copy of Text.LineStyle?(v9, 1);
      outlined consume of Text.LineStyle?(v7, 1);
      return a1[7] == a2[7];
    }

    outlined copy of Text.LineStyle?(v9, v10);
    goto LABEL_15;
  }

  v18[0] = a1[5];
  v18[1] = v8;
  if (v10 == 1)
  {
    outlined copy of Text.LineStyle?(v7, v8);
    outlined copy of Text.LineStyle?(v9, 1);
    outlined copy of Text.LineStyle?(v7, v8);

LABEL_15:
    outlined consume of Text.LineStyle?(v7, v8);
    outlined consume of Text.LineStyle?(v9, v10);
    return 0;
  }

  v15[0] = v9;
  v15[1] = v10;
  outlined copy of Text.LineStyle?(v7, v8);
  outlined copy of Text.LineStyle?(v9, v10);
  outlined copy of Text.LineStyle?(v7, v8);
  v12 = MEMORY[0x18D003E10](v18, v15);

  outlined consume of Text.LineStyle?(v7, v8);
  if (v12)
  {
    return a1[7] == a2[7];
  }

  return 0;
}

void type metadata accessor for (AnyNavigationLinkPresentedValue?, AnyNavigationLinkPresentedValue?)()
{
  if (!lazy cache variable for type metadata for (AnyNavigationLinkPresentedValue?, AnyNavigationLinkPresentedValue?))
  {
    type metadata accessor for AnyNavigationLinkPresentedValue?();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (AnyNavigationLinkPresentedValue?, AnyNavigationLinkPresentedValue?));
    }
  }
}

uint64_t View.transformIdentifiedPreference<A>(_:transform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10[0] = a2;
  v10[1] = a3;
  v8 = type metadata accessor for IdentifiedPreferenceTransformModifier();

  MEMORY[0x18D00A570](v10, a4, v8, a6);
}

uint64_t static IdentifiedPreferenceTransformModifier._makeView(modifier:inputs:body:)(uint64_t a1, __int128 *a2, void (*a3)(uint64_t, __int128 *))
{
  v22 = *a2;
  v23 = *(a2 + 2);
  v4 = *(a2 + 6);
  v20 = *(a2 + 28);
  v21 = *(a2 + 11);
  v5 = *(a2 + 6);
  v6 = *(a2 + 14);
  v18 = *(a2 + 60);
  v19 = *(a2 + 76);
  type metadata accessor for IdentifiedPreferenceTransformModifier();
  type metadata accessor for _GraphValue();
  v7 = _GraphValue.value.getter();
  v9 = v22;
  v10 = v23;
  v11 = v4;
  v12 = v20;
  v13 = v21;
  v14 = v5;
  v15 = v6;
  v16 = v18;
  v17 = v19;
  a3(v7, &v9);
  *&v9 = v5;
  DWORD2(v9) = v6;

  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
}

uint64_t implicit closure #1 in static IdentifiedPreferenceTransformModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v5[0] = a1;
  v5[1] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  FunctionTypeMetadata = swift_getFunctionTypeMetadata();
  v8 = type metadata accessor for IdentifiedPreferenceTransformModifier.Transform();
  WitnessTable = swift_getWitnessTable();
  v2 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v5, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_2, v6, v8, MEMORY[0x1E69E73E0], v2, MEMORY[0x1E69E7410], v3);
  return AssociatedTypeWitness;
}

uint64_t IdentifiedPreferenceTransformModifier.Transform.updateValue()(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  LODWORD(AssociatedTypeWitness) = *AGGraphGetValue();
  ViewIdentity.Tracker.update(for:)();
  v13 = *v1;
  v3 = specialized IdentifiedPreferenceTransformModifier.Transform.modifier.getter();
  v5 = v4;
  v6 = *(v1 + 2);
  v7 = swift_allocObject();
  v8 = *(a1 + 24);
  *(v7 + 16) = *(a1 + 16);
  *(v7 + 24) = v8;
  *(v7 + 32) = v3;
  *(v7 + 40) = v5;
  *(v7 + 48) = v6;
  *&v13 = partial apply for closure #1 in IdentifiedPreferenceTransformModifier.Transform.updateValue();
  *(&v13 + 1) = v7;
  v15 = a1;
  WitnessTable = swift_getWitnessTable();
  swift_retain_n();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = MEMORY[0x1E69E7CA8];
  FunctionTypeMetadata = swift_getFunctionTypeMetadata();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v13, partial apply for closure #1 in StatefulRule.value.setter, v14, FunctionTypeMetadata, MEMORY[0x1E69E73E0], v9 + 8, MEMORY[0x1E69E7410], v11);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance IdentifiedPreferenceTransformModifier<A>.Transform(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE9B8](a1, WitnessTable);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance IdentifiedPreferenceTransformModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t partial apply for closure #1 in IdentifiedPreferenceTransformModifier.Transform.updateValue()(uint64_t a1)
{
  v2 = *(v1 + 32);
  v4 = *(v1 + 48);
  return v2(a1, &v4);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance ComplicationIdiomModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static ViewModifier<>._makeView(modifier:inputs:body:)(v3, v7, a3);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance WidgetIdiomModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static ViewModifier<>._makeView(modifier:inputs:body:)(v3, v7, a3);
}

uint64_t type metadata accessor for MainMenuItem.Content()
{
  result = type metadata singleton initialization cache for MainMenuItem.Content;
  if (!type metadata singleton initialization cache for MainMenuItem.Content)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 MainMenuItem.Content.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MainMenuItem.Content();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = *(*(v1 + *(type metadata accessor for MainMenuItem(0) + 24)) + 16);
  KeyPath = swift_getKeyPath();
  outlined init with copy of MainMenuItem.Content(v1, v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  outlined init with take of MainMenuItem.Content(v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  v13[2] = 0;
  v13[3] = v6;
  v13[1] = KeyPath;
  type metadata accessor for Range<Int>();
  lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  ForEach.init(_:idGenerator:content:)();
  v10 = v17;
  v12 = v15;
  result = v16;
  *a1 = v14;
  *(a1 + 16) = v12;
  *(a1 + 32) = result;
  *(a1 + 48) = v10;
  return result;
}

uint64_t closure #1 in MainMenuItem.Content.body.getter@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  result = type metadata accessor for MainMenuItem(0);
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = *(a2 + *(result + 24));
  if (v5 >= *(v7 + 16))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  *a3 = *(v7 + 8 * v5 + 32);
}

uint64_t outlined init with copy of MainMenuItem.Content(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MainMenuItem.Content();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of MainMenuItem.Content(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MainMenuItem.Content();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in MainMenuItem.Content.body.getter@<X0>(unint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for MainMenuItem.Content() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return closure #1 in MainMenuItem.Content.body.getter(a1, v6, a2);
}

unint64_t lazy protocol witness table accessor for type ForEach<Range<Int>, Int, AnyView> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<Range<Int>, Int, AnyView> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<Range<Int>, Int, AnyView> and conformance <> ForEach<A, B, C>)
  {
    type metadata accessor for ForEach<Range<Int>, Int, AnyView>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<Range<Int>, Int, AnyView> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

void type metadata accessor for ForEach<Range<Int>, Int, AnyView>()
{
  if (!lazy cache variable for type metadata for ForEach<Range<Int>, Int, AnyView>)
  {
    type metadata accessor for Range<Int>();
    lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
    v0 = type metadata accessor for ForEach();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ForEach<Range<Int>, Int, AnyView>);
    }
  }
}

uint64_t View.listLabeledContentPrefersHorizontalLayout()()
{
  lazy protocol witness table accessor for type ListLabeledContentPrefersHorizontalLayout and conformance ListLabeledContentPrefersHorizontalLayout();

  return View.input<A>(_:)();
}

uint64_t View.listLabeledContentAllowsOutsetting()()
{
  lazy protocol witness table accessor for type ListLabeledContentAllowsOutsetting and conformance ListLabeledContentAllowsOutsetting();

  return View.input<A>(_:)();
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA0C17InputFlagModifierVyAA011ListLabeledE23PrefersHorizontalLayout33_2076B144509B2EE42BE09458ED88A0ECLLVGGAaBHPxAaBHD1__AjA0cH0HPyHCHCTm(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(void))
{
  _s7SwiftUI21ViewInputFlagModifierVyAA41ListLabeledContentPrefersHorizontalLayout33_2076B144509B2EE42BE09458ED88A0ECLLVGMaTm_0(255, a2, a3, a4, MEMORY[0x1E697FD28]);
  type metadata accessor for ModifiedContent();
  a5();
  return swift_getWitnessTable();
}

double protocol witness for static Rule.initialValue.getter in conformance ListLabeledContentStyle._Body.MakeBody@<D0>(uint64_t a1@<X8>)
{
  _s7SwiftUI18ListLabeledContent33_2076B144509B2EE42BE09458ED88A0ECLLVSgWOi0_(v8);
  v2 = v16;
  *(a1 + 128) = v15;
  *(a1 + 144) = v2;
  *(a1 + 160) = v17;
  *(a1 + 176) = v18;
  v3 = v12;
  *(a1 + 64) = v11;
  *(a1 + 80) = v3;
  v4 = v14;
  *(a1 + 96) = v13;
  *(a1 + 112) = v4;
  v5 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v5;
  result = *&v9;
  v7 = v10;
  *(a1 + 32) = v9;
  *(a1 + 48) = v7;
  return result;
}

double protocol witness for Rule.value.getter in conformance ListLabeledContentStyle._Body.MakeBody@<D0>(uint64_t a1@<X8>)
{
  v2 = 0x10000000000;
  if (!*(v1 + 5))
  {
    v2 = 0;
  }

  v3 = 0x100000000;
  if (!*(v1 + 4))
  {
    v3 = 0;
  }

  return ListLabeledContentStyle._Body.MakeBody.value.getter(v3 | *v1 | v2, a1);
}

uint64_t closure #2 in ListLabeledContent.body.getter@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  outlined init with copy of SubviewsCollection(a1, &v36);
  v6 = 0;
  if (SubviewsCollection.endIndex.getter())
  {
    do
    {
      _VariadicView_Children.subscript.getter();
      v41[0] = v28;

      ContainerValues.subscript.getter();
      outlined destroy of Subview(&v22);

      if (LOBYTE(v35[0]) == 2)
      {
        break;
      }

      if (v35[0])
      {
        break;
      }

      v6 = SubviewsCollection.index(after:)(v6);
      result = SubviewsCollection.endIndex.getter();
    }

    while (v6 != result);
    if (v6 < 0)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }
  }

  v42 = v36;
  v43 = v37;
  v44 = v38;
  v45 = v39;
  v41[0] = 0;
  v41[1] = v6;
  outlined init with copy of SubviewsCollection(a1, v35);
  v8 = 0;
  if (SubviewsCollection.endIndex.getter())
  {
    do
    {
      _VariadicView_Children.subscript.getter();
      *&v36 = v28;

      ContainerValues.subscript.getter();
      outlined destroy of Subview(&v22);

      if (v34 == 2)
      {
        break;
      }

      if (v34)
      {
        break;
      }

      v8 = SubviewsCollection.index(after:)(v8);
    }

    while (v8 != SubviewsCollection.endIndex.getter());
  }

  result = SubviewsCollection.endIndex.getter();
  if (result < v8)
  {
    goto LABEL_16;
  }

  v37 = v35[0];
  v38 = v35[1];
  v39 = v35[2];
  v40 = v35[3];
  *&v36 = v8;
  *(&v36 + 1) = result;
  if (specialized Environment.wrappedValue.getter(*(a2 + 19), *(a2 + 160)))
  {
    v9 = static HorizontalAlignment.leading.getter();
    v10 = static VerticalAlignment.firstTextLineCenter.getter();
  }

  else
  {
    v9 = static Alignment.leading.getter();
    v10 = v11;
  }

  v12 = a2[9];
  v30 = a2[8];
  v31 = v12;
  v32 = a2[10];
  v33 = *(a2 + 176);
  v13 = a2[5];
  v26 = a2[4];
  v27 = v13;
  v14 = a2[7];
  v28 = a2[6];
  v29 = v14;
  v15 = a2[1];
  v22 = *a2;
  v23 = v15;
  v16 = a2[3];
  v24 = a2[2];
  v25 = v16;
  ListLabeledContent.titleAndContent(_:hasIcon:)(&v36, v6 != 0, a3);
  v17 = a2[9];
  v30 = a2[8];
  v31 = v17;
  v32 = a2[10];
  v33 = *(a2 + 176);
  v18 = a2[5];
  v26 = a2[4];
  v27 = v18;
  v19 = a2[7];
  v28 = a2[6];
  v29 = v19;
  v20 = a2[1];
  v22 = *a2;
  v23 = v20;
  v21 = a2[3];
  v24 = a2[2];
  v25 = v21;
  ListLabeledContent.icon(_:)(v41, (a3 + 392));
  outlined destroy of SubviewsCollectionSlice(&v36);
  result = outlined destroy of SubviewsCollectionSlice(v41);
  *(a3 + 568) = v9;
  *(a3 + 576) = v10;
  return result;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance ListLabeledContentPrefersHorizontalLayout(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4();
  PropertyList.subscript.getter();
  return v5;
}

uint64_t getEnumTagSinglePayload for ListLabeledContentStyle._Body.MakeBody(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 6))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ListLabeledContentStyle._Body.MakeBody(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 6) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 6) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 1;
    }
  }

  return result;
}

uint64_t assignWithCopy for ListLabeledContent(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of Environment<Selector?>.Content(v4, v5);
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = *(v2 + 24);
  v9 = *(v2 + 32);
  outlined copy of Environment<Selector?>.Content(v8, v9);
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  outlined consume of Environment<Selector?>.Content(v10, v11);
  *(a1 + 40) = *(v2 + 40);
  *(a1 + 48) = *(v2 + 48);
  v12 = *(v2 + 56);
  v13 = *(v2 + 65);
  v14 = *(v2 + 64);
  outlined copy of Environment<CGFloat?>.Content(v12, v14, v13);
  v15 = *(a1 + 56);
  v16 = *(a1 + 65);
  *(a1 + 56) = v12;
  v17 = *(a1 + 64);
  *(a1 + 64) = v14;
  *(a1 + 65) = v13;
  outlined consume of Environment<CGFloat?>.Content(v15, v17, v16);
  v18 = *(v2 + 72);
  v19 = *(v2 + 81);
  v20 = *(v2 + 80);
  outlined copy of Environment<CGFloat?>.Content(v18, v20, v19);
  v21 = *(a1 + 72);
  v22 = *(a1 + 81);
  *(a1 + 72) = v18;
  v23 = *(a1 + 80);
  *(a1 + 80) = v20;
  *(a1 + 81) = v19;
  outlined consume of Environment<CGFloat?>.Content(v21, v23, v22);
  v24 = *(v2 + 88);
  v25 = *(v2 + 97);
  v26 = *(v2 + 96);
  outlined copy of Environment<CGFloat?>.Content(v24, v26, v25);
  v27 = *(a1 + 88);
  v28 = *(a1 + 97);
  *(a1 + 88) = v24;
  v29 = *(a1 + 96);
  *(a1 + 96) = v26;
  *(a1 + 97) = v25;
  outlined consume of Environment<CGFloat?>.Content(v27, v29, v28);
  v30 = *(v2 + 104);
  v31 = *(v2 + 113);
  v32 = *(v2 + 112);
  outlined copy of Environment<CGFloat?>.Content(v30, v32, v31);
  v33 = *(a1 + 104);
  v34 = *(a1 + 113);
  *(a1 + 104) = v30;
  v35 = *(a1 + 112);
  *(a1 + 112) = v32;
  *(a1 + 113) = v31;
  outlined consume of Environment<CGFloat?>.Content(v33, v35, v34);
  v36 = *(v2 + 120);
  v37 = *(v2 + 129);
  v38 = *(v2 + 128);
  outlined copy of Environment<ListItemTint?>.Content(v36, v38, v37);
  v39 = *(a1 + 120);
  v40 = *(a1 + 129);
  *(a1 + 120) = v36;
  v41 = *(a1 + 128);
  *(a1 + 128) = v38;
  *(a1 + 129) = v37;
  outlined consume of Environment<ListItemTint?>.Content(v39, v41, v40);
  v42 = *(v2 + 144);
  *(a1 + 136) = *(v2 + 136);
  *(a1 + 144) = v42;

  v43 = *(v2 + 152);
  v44 = *(v2 + 160);
  outlined copy of Environment<Selector?>.Content(v43, v44);
  v45 = *(a1 + 152);
  v46 = *(a1 + 160);
  *(a1 + 152) = v43;
  *(a1 + 160) = v44;
  outlined consume of Environment<Selector?>.Content(v45, v46);
  v47 = *(v2 + 168);
  LOBYTE(v2) = *(v2 + 176);
  outlined copy of Environment<Selector?>.Content(v47, v2);
  v48 = *(a1 + 168);
  v49 = *(a1 + 176);
  *(a1 + 168) = v47;
  *(a1 + 176) = v2;
  outlined consume of Environment<Selector?>.Content(v48, v49);
  return a1;
}

uint64_t assignWithTake for ListLabeledContent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = *(a2 + 32);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v8;
  outlined consume of Environment<Selector?>.Content(v9, v10);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  v11 = *(a2 + 64);
  v12 = *(a2 + 65);
  v13 = *(a1 + 56);
  v14 = *(a1 + 65);
  *(a1 + 56) = *(a2 + 56);
  v15 = *(a1 + 64);
  *(a1 + 64) = v11;
  *(a1 + 65) = v12;
  outlined consume of Environment<CGFloat?>.Content(v13, v15, v14);
  v16 = *(a2 + 80);
  v17 = *(a2 + 81);
  v18 = *(a1 + 72);
  v19 = *(a1 + 81);
  *(a1 + 72) = *(a2 + 72);
  v20 = *(a1 + 80);
  *(a1 + 80) = v16;
  *(a1 + 81) = v17;
  outlined consume of Environment<CGFloat?>.Content(v18, v20, v19);
  v21 = *(a2 + 96);
  v22 = *(a2 + 97);
  v23 = *(a1 + 88);
  v24 = *(a1 + 97);
  *(a1 + 88) = *(a2 + 88);
  v25 = *(a1 + 96);
  *(a1 + 96) = v21;
  *(a1 + 97) = v22;
  outlined consume of Environment<CGFloat?>.Content(v23, v25, v24);
  v26 = *(a2 + 112);
  v27 = *(a2 + 113);
  v28 = *(a1 + 104);
  v29 = *(a1 + 113);
  *(a1 + 104) = *(a2 + 104);
  v30 = *(a1 + 112);
  *(a1 + 112) = v26;
  *(a1 + 113) = v27;
  outlined consume of Environment<CGFloat?>.Content(v28, v30, v29);
  v31 = *(a2 + 128);
  v32 = *(a2 + 129);
  v33 = *(a1 + 120);
  v34 = *(a1 + 129);
  *(a1 + 120) = *(a2 + 120);
  v35 = *(a1 + 128);
  *(a1 + 128) = v31;
  *(a1 + 129) = v32;
  outlined consume of Environment<ListItemTint?>.Content(v33, v35, v34);
  v36 = *(a2 + 144);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = v36;

  v37 = *(a2 + 160);
  v38 = *(a1 + 152);
  v39 = *(a1 + 160);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = v37;
  outlined consume of Environment<Selector?>.Content(v38, v39);
  v40 = *(a2 + 176);
  v41 = *(a1 + 168);
  v42 = *(a1 + 176);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = v40;
  outlined consume of Environment<Selector?>.Content(v41, v42);
  return a1;
}

uint64_t getEnumTagSinglePayload for ListLabeledContent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 177))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 1);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ListLabeledContent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 168) = 0;
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
    *(result + 176) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 177) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 177) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 1;
    }
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<TitleAndContentLayout>, TupleView<(VStack<LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>>?, ModifiedContent<VStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>)>>, _PaddingLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<HStack<SubviewsCollectionSlice>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>?>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<TitleAndContentLayout>, TupleView<(VStack<LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>>?, ModifiedContent<VStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>)>>, _PaddingLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<HStack<SubviewsCollectionSlice>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>?>>)
  {
    type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<TitleAndContentLayout>, TupleView<(VStack<LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>>?, ModifiedContent<VStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>)>>, _PaddingLayout>(255, &lazy cache variable for type metadata for ModifiedContent<_VariadicView.Tree<_LayoutRoot<TitleAndContentLayout>, TupleView<(VStack<LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>>?, ModifiedContent<VStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>)>>, _PaddingLayout>, type metadata accessor for _VariadicView.Tree<_LayoutRoot<TitleAndContentLayout>, TupleView<(VStack<LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>>?, ModifiedContent<VStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>)>>);
    type metadata accessor for _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<HStack<SubviewsCollectionSlice>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>?>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<TitleAndContentLayout>, TupleView<(VStack<LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>>?, ModifiedContent<VStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>)>>, _PaddingLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<HStack<SubviewsCollectionSlice>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>?>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type GroupElementsOfContent<Group<ModifiedContent<ModifiedContent<LabeledContentStyleConfiguration.Label, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, ViewInputFlagModifier<MultiViewLabel>>>, ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<TitleAndContentLayout>, TupleView<(VStack<LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>>?, ModifiedContent<VStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>)>>, _PaddingLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<HStack<SubviewsCollectionSlice>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>?>>> and conformance GroupElementsOfContent<A, B>(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata accessor for _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<HStack<SubviewsCollectionSlice>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>?>()
{
  if (!lazy cache variable for type metadata for _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<HStack<SubviewsCollectionSlice>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>?>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<SubviewsCollectionSlice>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>?();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<SubviewsCollectionSlice>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<SubviewsCollectionSlice>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>? and conformance <A> A?, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<SubviewsCollectionSlice>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>?, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<SubviewsCollectionSlice>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
    v0 = type metadata accessor for _OverlayModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<HStack<SubviewsCollectionSlice>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>?>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<SubviewsCollectionSlice>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>?()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<HStack<SubviewsCollectionSlice>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>?)
  {
    type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<TitleAndContentLayout>, TupleView<(VStack<LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>>?, ModifiedContent<VStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>)>>, _PaddingLayout>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<HStack<SubviewsCollectionSlice>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, type metadata accessor for ModifiedContent<ModifiedContent<HStack<SubviewsCollectionSlice>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyWritingModifier<Image.Scale>>);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<HStack<SubviewsCollectionSlice>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>?);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<HStack<SubviewsCollectionSlice>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyWritingModifier<Image.Scale>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<HStack<SubviewsCollectionSlice>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyWritingModifier<Image.Scale>>)
  {
    type metadata accessor for ModifiedContent<HStack<SubviewsCollectionSlice>, _DefaultForegroundStyleModifier<AnyShapeStyle>>();
    type metadata accessor for Subview?(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Image.Scale>, MEMORY[0x1E69816F0], MEMORY[0x1E6980A08]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<HStack<SubviewsCollectionSlice>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyWritingModifier<Image.Scale>>);
    }
  }
}

void type metadata accessor for ModifiedContent<HStack<SubviewsCollectionSlice>, _DefaultForegroundStyleModifier<AnyShapeStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<HStack<SubviewsCollectionSlice>, _DefaultForegroundStyleModifier<AnyShapeStyle>>)
  {
    type metadata accessor for VStack<LabeledContentStyleConfiguration.Content>(255, &lazy cache variable for type metadata for HStack<SubviewsCollectionSlice>, MEMORY[0x1E6980298], MEMORY[0x1E6980288], MEMORY[0x1E69817F0]);
    type metadata accessor for VStack<LabeledContentStyleConfiguration.Content>(255, &lazy cache variable for type metadata for _DefaultForegroundStyleModifier<AnyShapeStyle>, MEMORY[0x1E697E0B8], MEMORY[0x1E697E0A8], MEMORY[0x1E6980AB8]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<HStack<SubviewsCollectionSlice>, _DefaultForegroundStyleModifier<AnyShapeStyle>>);
    }
  }
}

void type metadata accessor for Subview?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<SubviewsCollectionSlice>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<SubviewsCollectionSlice>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<SubviewsCollectionSlice>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<TitleAndContentLayout>, TupleView<(VStack<LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>>?, ModifiedContent<VStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>)>>, _PaddingLayout>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<HStack<SubviewsCollectionSlice>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, type metadata accessor for ModifiedContent<ModifiedContent<HStack<SubviewsCollectionSlice>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyWritingModifier<Image.Scale>>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<SubviewsCollectionSlice>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<SubviewsCollectionSlice>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<HStack<SubviewsCollectionSlice>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyWritingModifier<Image.Scale>>, lazy protocol witness table accessor for type ModifiedContent<HStack<SubviewsCollectionSlice>, _DefaultForegroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Image.Scale> and conformance _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<SubviewsCollectionSlice>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<SubviewsCollectionSlice>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<SubviewsCollectionSlice>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>? and conformance <A> A?(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<TitleAndContentLayout>, TupleView<(VStack<LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>>?, ModifiedContent<VStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>)>>, _PaddingLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<HStack<SubviewsCollectionSlice>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<TitleAndContentLayout>, TupleView<(VStack<LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>>?, ModifiedContent<VStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>)>>, _PaddingLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<HStack<SubviewsCollectionSlice>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<TitleAndContentLayout>, TupleView<(VStack<LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>>?, ModifiedContent<VStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>)>>, _PaddingLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<HStack<SubviewsCollectionSlice>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>?>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<TitleAndContentLayout>, TupleView<(VStack<LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>>?, ModifiedContent<VStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>)>>, _PaddingLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<HStack<SubviewsCollectionSlice>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>?>>();
    lazy protocol witness table accessor for type ModifiedContent<_VariadicView.Tree<_LayoutRoot<TitleAndContentLayout>, TupleView<(VStack<LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>>?, ModifiedContent<VStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type GroupElementsOfContent<Group<ModifiedContent<ModifiedContent<LabeledContentStyleConfiguration.Label, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, ViewInputFlagModifier<MultiViewLabel>>>, ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<TitleAndContentLayout>, TupleView<(VStack<LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>>?, ModifiedContent<VStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>)>>, _PaddingLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<HStack<SubviewsCollectionSlice>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>?>>> and conformance GroupElementsOfContent<A, B>(&lazy protocol witness table cache variable for type _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<HStack<SubviewsCollectionSlice>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>?> and conformance _OverlayModifier<A>, type metadata accessor for _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<HStack<SubviewsCollectionSlice>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>?>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<TitleAndContentLayout>, TupleView<(VStack<LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>>?, ModifiedContent<VStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>)>>, _PaddingLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<HStack<SubviewsCollectionSlice>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined destroy of VStack<LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>>?(uint64_t a1)
{
  type metadata accessor for Group<ModifiedContent<ModifiedContent<LabeledContentStyleConfiguration.Label, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, ViewInputFlagModifier<MultiViewLabel>>>(0, &lazy cache variable for type metadata for VStack<LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>>?, type metadata accessor for VStack<LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>>, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double _s7SwiftUI18ListLabeledContent33_2076B144509B2EE42BE09458ED88A0ECLLVSgWOi0_(uint64_t a1)
{
  *a1 = 512;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 161) = 0u;
  return result;
}

uint64_t getEnumTagSinglePayload for TitleAndContentLayout(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 27))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TitleAndContentLayout(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 26) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 27) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 27) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

void type metadata accessor for GroupElementsOfContent<Group<ModifiedContent<ModifiedContent<LabeledContentStyleConfiguration.Label, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, ViewInputFlagModifier<MultiViewLabel>>>, ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<TitleAndContentLayout>, TupleView<(VStack<LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>>?, ModifiedContent<VStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>)>>, _PaddingLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<HStack<SubviewsCollectionSlice>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>?>>>()
{
  if (!lazy cache variable for type metadata for GroupElementsOfContent<Group<ModifiedContent<ModifiedContent<LabeledContentStyleConfiguration.Label, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, ViewInputFlagModifier<MultiViewLabel>>>, ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<TitleAndContentLayout>, TupleView<(VStack<LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>>?, ModifiedContent<VStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>)>>, _PaddingLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<HStack<SubviewsCollectionSlice>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>?>>>)
  {
    type metadata accessor for Group<ModifiedContent<ModifiedContent<LabeledContentStyleConfiguration.Label, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, ViewInputFlagModifier<MultiViewLabel>>>(255);
    type metadata accessor for ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<TitleAndContentLayout>, TupleView<(VStack<LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>>?, ModifiedContent<VStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>)>>, _PaddingLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<HStack<SubviewsCollectionSlice>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>?>>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<SubviewsCollectionSlice>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>? and conformance <A> A?(&lazy protocol witness table cache variable for type Group<ModifiedContent<ModifiedContent<LabeledContentStyleConfiguration.Label, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, ViewInputFlagModifier<MultiViewLabel>>> and conformance <A> Group<A>, type metadata accessor for Group<ModifiedContent<ModifiedContent<LabeledContentStyleConfiguration.Label, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, ViewInputFlagModifier<MultiViewLabel>>>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<LabeledContentStyleConfiguration.Label, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, ViewInputFlagModifier<MultiViewLabel>> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<TitleAndContentLayout>, TupleView<(VStack<LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>>?, ModifiedContent<VStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>)>>, _PaddingLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<HStack<SubviewsCollectionSlice>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>?>> and conformance <> ModifiedContent<A, B>();
    v0 = type metadata accessor for GroupElementsOfContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for GroupElementsOfContent<Group<ModifiedContent<ModifiedContent<LabeledContentStyleConfiguration.Label, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, ViewInputFlagModifier<MultiViewLabel>>>, ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<TitleAndContentLayout>, TupleView<(VStack<LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>>?, ModifiedContent<VStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>)>>, _PaddingLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<HStack<SubviewsCollectionSlice>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>?>>>);
    }
  }
}

uint64_t View.textContentType(_:)(uint64_t a1)
{
  swift_getKeyPath();
  if (a1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  View.environment<A>(_:_:)();
}

uint64_t EnvironmentValues.textContentType.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<TextContentTypeKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TextContentTypeKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextContentTypeKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<TextContentTypeKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<TextContentTypeKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TextContentTypeKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextContentTypeKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<TextContentTypeKey>);
    PropertyList.subscript.getter();
  }

  return v2;
}

void type metadata accessor for EnvironmentPropertyKey<TextContentTypeKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<TextContentTypeKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextContentTypeKey>);
    }
  }
}

uint64_t EnvironmentValues.textContentType.setter()
{
  type metadata accessor for EnvironmentPropertyKey<TextContentTypeKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<TextContentTypeKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextContentTypeKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<TextContentTypeKey>);

  PropertyList.subscript.setter();
  if (*(v0 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

double key path getter for EnvironmentValues.textContentType : EnvironmentValues, serialized@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<TextContentTypeKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TextContentTypeKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextContentTypeKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<TextContentTypeKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<TextContentTypeKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TextContentTypeKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextContentTypeKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<TextContentTypeKey>);
    PropertyList.subscript.getter();
  }

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.textContentType : EnvironmentValues, serialized(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<TextContentTypeKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<TextContentTypeKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextContentTypeKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<TextContentTypeKey>);

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

void (*EnvironmentValues.textContentType.modify(void *a1))(void **a1, char a2)
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
  v3[4] = v1;
  v3[5] = *v1;
  v5 = v1[1];
  v3[6] = v5;
  type metadata accessor for EnvironmentPropertyKey<TextContentTypeKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<TextContentTypeKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextContentTypeKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<TextContentTypeKey>);
  if (v5)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  *v4 = v4[1];
  return EnvironmentValues.textContentType.modify;
}

void EnvironmentValues.textContentType.modify(void **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[1];
  v3[2] = **a1;
  v5 = v3[6];
  v3[3] = v4;
  type metadata accessor for EnvironmentPropertyKey<TextContentTypeKey>();
  if (a2)
  {
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TextContentTypeKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextContentTypeKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<TextContentTypeKey>);

    PropertyList.subscript.setter();
    if (v5)
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }
  }

  else
  {
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TextContentTypeKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextContentTypeKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<TextContentTypeKey>);

    PropertyList.subscript.setter();
    if (v5)
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }
  }

  free(v3);
}

void type metadata accessor for _EnvironmentKeyWritingModifier<String?>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<String?>)
  {
    type metadata accessor for String?();
    v0 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<String?>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<TextContentTypeKey> and conformance EnvironmentPropertyKey<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t assignWithTake for ToolbarButtonContentModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  outlined consume of Environment<Selector?>.Content(v5, v6);
  return a1;
}

uint64_t assignWithTake for ToolbarButtonLabelModifier(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    outlined destroy of Environment<ToolbarItemPlacement.Role>.Content(a1);
    v4 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v4;
    *(a1 + 26) = *(a2 + 26);
  }

  v5 = *(a2 + 80);
  v6 = *(a2 + 81);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  v11 = *(a1 + 81);
  v12 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v12;
  v13 = *(a1 + 80);
  *(a1 + 80) = v5;
  *(a1 + 81) = v6;
  outlined consume of Environment<ToolbarItemMetrics?>.Content(v7, v8, v9, v10, v13, v11);
  v14 = *(a2 + 96);
  v15 = *(a1 + 88);
  v16 = *(a1 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v14;
  outlined consume of Environment<Selector?>.Content(v15, v16);
  v17 = *(a2 + 112);
  v18 = *(a1 + 104);
  v19 = *(a1 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = v17;
  outlined consume of Environment<Selector?>.Content(v18, v19);
  v20 = *(a2 + 128);
  v21 = *(a1 + 120);
  v22 = *(a1 + 128);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = v20;
  outlined consume of Environment<Selector?>.Content(v21, v22);
  v23 = *(a2 + 144);
  v24 = *(a1 + 136);
  v25 = *(a1 + 144);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = v23;
  outlined consume of Environment<Selector?>.Content(v24, v25);
  return a1;
}

uint64_t getEnumTagSinglePayload for ToolbarButtonLabelModifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 145))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 41);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ToolbarButtonLabelModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 145) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 145) = 0;
    }

    if (a2)
    {
      *(result + 41) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ToolbarButtonStyle(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 73))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 41);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ToolbarButtonStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 41) = -a2;
    }
  }

  return result;
}

uint64_t key path getter for EnvironmentValues.defaultFont : EnvironmentValues@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.defaultFont.getter();
  *a1 = result;
  return result;
}

uint64_t View.toolbarButtonLabel()(uint64_t a1, uint64_t a2)
{
  v6[0] = swift_getKeyPath();
  v7 = 0;
  KeyPath = swift_getKeyPath();
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = swift_getKeyPath();
  v14 = 0;
  v15 = swift_getKeyPath();
  v16 = 0;
  v17 = swift_getKeyPath();
  v18 = 0;
  v19 = swift_getKeyPath();
  v20 = 0;
  type metadata accessor for StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>();
  MEMORY[0x18D00A570](v6, a1, v4, a2);
  return outlined destroy of ModifiedContent<Button<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, _ContentShapeKindModifier<ToolbarButtonHoverShape>>(v6, type metadata accessor for StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>);
}

uint64_t specialized View.hoverEffect<A>(_:isEnabled:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  v6 = swift_getKeyPath();
  v17[160] = 0;
  v17[152] = 0;
  v17[144] = 1;
  v17[136] = 1;
  v7 = swift_getKeyPath();
  v17[128] = 0;
  *&v18 = a1;
  BYTE8(v18) = a2;
  *&v19 = KeyPath;
  BYTE8(v19) = 0;
  *&v21 = 0;
  v20 = v6;
  WORD4(v21) = 0;
  *&v22 = 0;
  BYTE8(v22) = 1;
  *&v23 = 0;
  WORD4(v23) = 513;
  *v24 = 0;
  *&v24[8] = v7;
  *&v24[16] = 0;
  v24[24] = 0;
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_7(v16, a3, type metadata accessor for ModifiedContent<Button<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, _ContentShapeKindModifier<ToolbarButtonHoverShape>>);
  type metadata accessor for ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, _ContentShapeKindModifier<ToolbarButtonHoverShape>>, CustomHoverEffectModifier<HoverEffect>>();
  v9 = (a3 + *(v8 + 36));
  v10 = v23;
  v9[4] = v22;
  v9[5] = v10;
  v9[6] = *v24;
  *(v9 + 105) = *&v24[9];
  v11 = v19;
  *v9 = v18;
  v9[1] = v11;
  v12 = v21;
  v9[2] = v20;
  v9[3] = v12;
  v25 = a1;
  v26 = a2;
  v27 = KeyPath;
  v28 = 0;
  v30 = 0;
  v31 = 0;
  v29 = v6;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 1;
  v36 = 0;
  v37 = 1;
  v38 = 2;
  v39 = 0;
  v40 = v7;
  v41 = 0;
  v42 = 0;

  outlined init with copy of CustomHoverEffectModifier<HoverEffect>(&v18, v17);
  return outlined destroy of CustomHoverEffectModifier<HoverEffect>(&v25);
}

uint64_t EnvironmentValues.toolbarButtonHoverShape.getter()
{
  if (*(v0 + 8))
  {
    _s7SwiftUI23InterfaceIdiomPredicateVyAA03MaccD0VGMaTm_2(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ToolbarButtonHoverShapeKey>, &type metadata for EnvironmentValues.ToolbarButtonHoverShapeKey, &protocol witness table for EnvironmentValues.ToolbarButtonHoverShapeKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ToolbarButtonHoverShapeKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    _s7SwiftUI23InterfaceIdiomPredicateVyAA03MaccD0VGMaTm_2(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ToolbarButtonHoverShapeKey>, &type metadata for EnvironmentValues.ToolbarButtonHoverShapeKey, &protocol witness table for EnvironmentValues.ToolbarButtonHoverShapeKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ToolbarButtonHoverShapeKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  return v2 | (v3 << 16);
}

void closure #1 in ToolbarButtonStyle.iosBody(configuration:)(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>>();
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_7(a1, &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PrimitiveButtonStyleConfiguration);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  outlined init with take of ModifiedContent<ToolbarButtonStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>(&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for PrimitiveButtonStyleConfiguration);
  *v10 = 4;
  _s7SwiftUI23InterfaceIdiomPredicateVyAA03MaccD0VGMaTm_2(0, &lazy cache variable for type metadata for Button<PrimitiveButtonStyleConfiguration.Label>, &type metadata for PrimitiveButtonStyleConfiguration.Label, &protocol witness table for PrimitiveButtonStyleConfiguration.Label, type metadata accessor for Button);
  v14 = &v10[*(v13 + 36)];
  *v14 = partial apply for implicit closure #2 in implicit closure #1 in closure #1 in ToolbarButtonStyle.iosBody(configuration:);
  v14[1] = v12;
  type metadata accessor for ButtonAction();
  swift_storeEnumTagMultiPayload();
  v15 = &v10[*(v8 + 44)];
  *v15 = 0;
  v15[8] = 0;
  v16 = *a1;
  v17 = 2;
  if (v16 <= 1)
  {
    if (v16)
    {
      v18 = 1;
      goto LABEL_8;
    }
  }

  else
  {
    if (v16 == 2)
    {
      v18 = 0;
      goto LABEL_8;
    }

    if (v16 == 3)
    {
      v18 = 2;
LABEL_8:
      v17 = v18 << 8;
    }
  }

  outlined init with take of ModifiedContent<ToolbarButtonStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>(v10, a2, type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>>);
  type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>>(0);
  v20 = a2 + *(v19 + 36);
  *v20 = 1;
  *(v20 + 8) = v17;
}

void closure #2 in ToolbarButtonStyle.iosBody(configuration:)(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for ModifiedContent<ToolbarButtonStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>();
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<ModifiedContent<ToolbarButtonStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>>(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_7(a1, v9, type metadata accessor for PrimitiveButtonStyleConfiguration);
  LOBYTE(a2) = specialized Environment.wrappedValue.getter(*(a2 + 64), *(a2 + 72));
  KeyPath = swift_getKeyPath();
  v15 = type metadata accessor for ToolbarButtonStyle.ResolvedBody();
  v9[*(v15 + 20)] = a2 & 1;
  v16 = &v9[*(v15 + 24)];
  *v16 = KeyPath;
  v16[8] = 0;
  v17 = swift_getKeyPath();
  v18 = &v9[*(v7 + 44)];
  *v18 = 0;
  *(v18 + 1) = v17;
  v18[16] = 0;
  v19 = *a1;
  v20 = 2;
  if (v19 <= 1)
  {
    if (v19)
    {
      v21 = 1;
      goto LABEL_8;
    }
  }

  else
  {
    if (v19 == 2)
    {
      v21 = 0;
      goto LABEL_8;
    }

    if (v19 == 3)
    {
      v21 = 2;
LABEL_8:
      v20 = v21 << 8;
    }
  }

  outlined init with take of ModifiedContent<ToolbarButtonStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>(v9, v13, type metadata accessor for ModifiedContent<ToolbarButtonStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>);
  v22 = &v13[*(v11 + 36)];
  *v22 = 1;
  *(v22 + 4) = v20;
  v23 = swift_getKeyPath();
  outlined init with take of ModifiedContent<ToolbarButtonStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>(v13, a3, type metadata accessor for ModifiedContent<ModifiedContent<ToolbarButtonStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>>);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ToolbarButtonStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<CGFloat?>>();
  v25 = a3 + *(v24 + 36);
  *v25 = v23;
  *(v25 + 8) = 0x402E000000000000;
  *(v25 + 16) = 0;
}

double closure #1 in ToolbarButtonLabelModifier.body(content:)@<D0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 64);
  v30 = *(a2 + 48);
  v31 = v5;
  v32 = *(a2 + 80);
  specialized Environment.wrappedValue.getter(v28);
  v19 = v28[1];
  v20 = v28[0];
  v6 = v29;
  v7 = specialized Environment.wrappedValue.getter(*(a2 + 136), *(a2 + 144));
  v8 = specialized Environment.wrappedValue.getter(*(a2 + 88), *(a2 + 96));
  v33 = v6;
  closure #1 in closure #1 in ToolbarButtonLabelModifier.body(content:)(&v22);
  v9 = v22;
  v10 = BYTE1(v22);
  v11 = *(&v22 + 1);
  v12 = *v23;
  v18 = *&v23[8];
  v13 = *&v23[24];
  ToolbarButtonLabelModifier.maxHeight.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *a3 = v20;
  *(a3 + 16) = v19;
  *(a3 + 32) = v6;
  *(a3 + 33) = v7 & 1;
  *(a3 + 40) = v8;
  *(a3 + 48) = a1;
  *(a3 + 56) = v9;
  *(a3 + 57) = v10;
  *(a3 + 64) = v11;
  *(a3 + 72) = v12;
  *(a3 + 80) = v18;
  *(a3 + 96) = v13;
  v14 = *&v23[16];
  *(a3 + 152) = v24;
  v15 = v26;
  *(a3 + 168) = v25;
  *(a3 + 184) = v15;
  *(a3 + 200) = v27;
  result = *&v22;
  v17 = *v23;
  *(a3 + 104) = v22;
  *(a3 + 120) = v17;
  *(a3 + 136) = v14;
  return result;
}

__n128 closure #1 in closure #1 in ToolbarButtonLabelModifier.body(content:)@<Q0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  specialized Environment.wrappedValue.getter(&v15);
  v11 = 5;
  v12 = 0u;
  v13 = 0u;
  v14 = 2;
  v3 = specialized static ToolbarItemPlacement.Role.== infix(_:_:)(&v15, &v11);
  outlined destroy of ToolbarItemPlacement.Role(&v11);
  outlined destroy of ToolbarItemPlacement.Role(&v15);
  v4 = static Font.body.getter();
  if (v3)
  {
    v5 = Font.bold()();

    v4 = v5;
  }

  LOWORD(v11) = 1;
  *&v12 = KeyPath;
  *(&v12 + 1) = v4;
  type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<ToolbarButtonLabelModifier>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<Font?>>();
  _s7SwiftUI37PrimitiveButtonStyleContainerModifierVyAA08BordereddE0VGMaTm_0(0, &lazy cache variable for type metadata for PartialRangeThrough<DynamicTypeSize>, lazy protocol witness table accessor for type DynamicTypeSize and conformance DynamicTypeSize, MEMORY[0x1E697E738], MEMORY[0x1E69E6ED0]);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ToolbarButtonLabelModifier>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type PartialRangeThrough<DynamicTypeSize> and conformance PartialRangeThrough<A>();
  View.dynamicTypeSize<A>(_:)();

  v6 = BYTE1(v15);
  v7 = *(&v15 + 1);
  v8 = v16;
  v9 = v18;
  result = v17;
  *a1 = v15;
  *(a1 + 1) = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 24) = result;
  *(a1 + 40) = v9;
  return result;
}

double ToolbarButtonDefaultForegroundModifier.ChildEnvironment.value.getter@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = HIDWORD(a1);
  v6 = *AGGraphGetValue();
  if (!*(&v6 + 1))
  {
    _s7SwiftUI23InterfaceIdiomPredicateVyAA03MaccD0VGMaTm_2(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemContainerTint>, &type metadata for EnvironmentValues.__Key_toolbarItemContainerTint, &protocol witness table for EnvironmentValues.__Key_toolbarItemContainerTint, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemContainerTint> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.getter();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_7:
    if (*MEMORY[0x1E698D3F8] == v2 || *AGGraphGetValue() != 1)
    {
      goto LABEL_12;
    }

    goto LABEL_4;
  }

  _s7SwiftUI23InterfaceIdiomPredicateVyAA03MaccD0VGMaTm_2(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemContainerTint>, &type metadata for EnvironmentValues.__Key_toolbarItemContainerTint, &protocol witness table for EnvironmentValues.__Key_toolbarItemContainerTint, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemContainerTint> and conformance EnvironmentPropertyKey<A>();

  swift_retain_n();
  PropertyList.Tracker.value<A>(_:for:)();

  if (!v5)
  {
    goto LABEL_7;
  }

LABEL_3:

LABEL_4:
  EnvironmentValues.colorScheme.getter();
  if (v5 == 1)
  {
    static Color.black.getter();
  }

  else
  {
    static Color.white.getter();
  }

  EnvironmentValues.foregroundColor.setter();
LABEL_12:
  result = *&v6;
  *a2 = v6;
  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ToolbarButtonDefaultForegroundModifier(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *))
{
  outlined init with copy of _ViewListInputs(a2, v6);
  v4 = specialized static ToolbarButtonDefaultForegroundModifier._makeInputs(modifier:inputs:)();
  a3(v4, v6);
  return outlined destroy of _ViewListInputs(v6);
}

uint64_t key path getter for EnvironmentValues.toolbarButtonHoverShape : EnvironmentValues@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 8))
  {
    _s7SwiftUI23InterfaceIdiomPredicateVyAA03MaccD0VGMaTm_2(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ToolbarButtonHoverShapeKey>, &type metadata for EnvironmentValues.ToolbarButtonHoverShapeKey, &protocol witness table for EnvironmentValues.ToolbarButtonHoverShapeKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ToolbarButtonHoverShapeKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    _s7SwiftUI23InterfaceIdiomPredicateVyAA03MaccD0VGMaTm_2(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ToolbarButtonHoverShapeKey>, &type metadata for EnvironmentValues.ToolbarButtonHoverShapeKey, &protocol witness table for EnvironmentValues.ToolbarButtonHoverShapeKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ToolbarButtonHoverShapeKey> and conformance EnvironmentPropertyKey<A>();
    result = PropertyList.subscript.getter();
  }

  *(a2 + 2) = v5;
  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.toolbarButtonHoverShape : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI23InterfaceIdiomPredicateVyAA03MaccD0VGMaTm_2(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ToolbarButtonHoverShapeKey>, &type metadata for EnvironmentValues.ToolbarButtonHoverShapeKey, &protocol witness table for EnvironmentValues.ToolbarButtonHoverShapeKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ToolbarButtonHoverShapeKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

void type metadata accessor for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<ToolbarButtonStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<CGFloat?>>>()
{
  if (!lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<ToolbarButtonStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<CGFloat?>>>)
  {
    _s7SwiftUI23InterfaceIdiomPredicateVyAA03MaccD0VGMaTm_2(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<MacInterfaceIdiom>, MEMORY[0x1E697F248], MEMORY[0x1E697F240], MEMORY[0x1E69801E0]);
    type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>>(255);
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ToolbarButtonStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<CGFloat?>>();
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<ToolbarButtonStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<CGFloat?>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ToolbarButtonStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<CGFloat?>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ToolbarButtonStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<CGFloat?>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ToolbarButtonStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>>(255);
    type metadata accessor for _EnvironmentKeyWritingModifier<CGFloat?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<CGFloat?>, &lazy cache variable for type metadata for CGFloat?, MEMORY[0x1E69E7DE0]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ToolbarButtonStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<CGFloat?>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = type metadata accessor for ModifiedContent();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemTintModifier, EmptyModifier>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    type metadata accessor for Environment<ToolbarItemPlacement.Role>.Content(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<ToolbarStyleContext>, MEMORY[0x1E697F860], MEMORY[0x1E69808E8]);
    v3 = type metadata accessor for StaticIf();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t ToolbarLabelPaddingLayout.sizeThatFits(proposal:subviews:cache:)()
{
  v0 = LayoutSubviews.endIndex.getter();
  result = LayoutSubviews.endIndex.getter();
  if (result < 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  result = LayoutSubviews.endIndex.getter();
  if (v0 < 0 || result < v0)
  {
    goto LABEL_10;
  }

  if (v0 == 1 && LayoutSubviews.endIndex.getter())
  {
    LayoutSubviews.subscript.getter();
    LayoutProxy.subscript.getter();
    ToolbarLabelPaddingLayout.padding(contentType:)();
    CGSize.inset(by:)();
    LayoutSubview.sizeThatFits(_:)();
  }

  else
  {
    ToolbarLabelPaddingLayout.padding(contentType:)();
    CGSize.inset(by:)();
    static VerticalAlignment.center.getter();
    lazy protocol witness table accessor for type HStackLayout and conformance HStackLayout();
    DerivedLayout.sizeThatFits(proposal:subviews:cache:)();
  }

  return CGSize.outset(by:)();
}

double ToolbarLabelPaddingLayout.padding(contentType:)()
{
  _s7SwiftUI23InterfaceIdiomPredicateVyAA03MaccD0VGMaTm_2(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v3>, MEMORY[0x1E697DF30], MEMORY[0x1E697DF28], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v3> and conformance _SemanticFeature<A>();
  if (static SemanticFeature.isEnabled.getter() & 1) == 0 || (v0[33])
  {
LABEL_3:
    static EdgeInsets.zero.getter();
    return result;
  }

  static _GraphInputs.defaultInterfaceIdiom.getter();
  if (static Solarium.isEnabled(for:)())
  {
    if ((v0[32] & 1) == 0)
    {
      return ToolbarItemMetrics.padding(contentType:barHeight:)();
    }

    goto LABEL_3;
  }

  v2 = v0[48];
  if (v2 == 2)
  {
    return 4.0;
  }

  result = 4.0;
  if ((v2 & 1) == 0)
  {
    return 4.0;
  }

  return result;
}

uint64_t ToolbarLabelPaddingLayout.placeSubviews(in:proposal:subviews:cache:)()
{
  v0 = LayoutSubviews.endIndex.getter();
  result = LayoutSubviews.endIndex.getter();
  if (result < 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  result = LayoutSubviews.endIndex.getter();
  if (v0 < 0 || result < v0)
  {
    goto LABEL_9;
  }

  if (v0 == 1 && LayoutSubviews.endIndex.getter())
  {
    LayoutSubviews.subscript.getter();
    LayoutProxy.subscript.getter();
    ToolbarLabelPaddingLayout.padding(contentType:)();
    CGSize.inset(by:)();
    static UnitPoint.topLeading.getter();
    return LayoutSubview.place(at:anchor:proposal:)();
  }

  else
  {
    ToolbarLabelPaddingLayout.padding(contentType:)();
    CGRect.inset(by:)();
    CGSize.inset(by:)();
    static VerticalAlignment.center.getter();
    lazy protocol witness table accessor for type HStackLayout and conformance HStackLayout();
    return DerivedLayout.placeSubviews(in:proposal:subviews:cache:)();
  }
}

uint64_t protocol witness for Layout.makeCache(subviews:) in conformance ToolbarLabelPaddingLayout(int *a1)
{
  v1 = *a1;
  v2 = *(a1 + 1);
  v3 = *(a1 + 16);
  v4 = *(a1 + 17);
  v5 = static VerticalAlignment.center.getter();
  v14 = MEMORY[0x18D0035E0](v5, 0, 1);
  v15 = v6;
  v16 = v7 & 1;
  v10 = v1;
  v11 = v2;
  v12 = v3;
  v13 = v4;
  v8 = lazy protocol witness table accessor for type _HStackLayout and conformance _HStackLayout();
  return (*(v8 + 32))(&v10, MEMORY[0x1E697E258], v8);
}

uint64_t protocol witness for Layout.updateCache(_:subviews:) in conformance ToolbarLabelPaddingLayout(_OWORD *a1, int *a2)
{
  v2 = *a2;
  v3 = *(a2 + 1);
  v4 = *(a2 + 16);
  v5 = *(a2 + 17);
  v6 = a1[5];
  v21[4] = a1[4];
  v21[5] = v6;
  v21[6] = a1[6];
  v7 = a1[1];
  v21[0] = *a1;
  v21[1] = v7;
  v8 = a1[3];
  v21[2] = a1[2];
  v21[3] = v8;
  outlined destroy of _StackLayoutCache(v21);
  v9 = static VerticalAlignment.center.getter();
  v18 = MEMORY[0x18D0035E0](v9, 0, 1);
  v19 = v10;
  v20 = v11 & 1;
  v14 = v2;
  v15 = v3;
  v16 = v4;
  v17 = v5;
  v12 = lazy protocol witness table accessor for type _HStackLayout and conformance _HStackLayout();
  return (*(v12 + 32))(&v14, MEMORY[0x1E697E258], v12);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance ToolbarButtonLabelModifier(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(int *, _OWORD *))
{
  v7 = *a1;
  v8 = *(a2 + 48);
  v11[2] = *(a2 + 32);
  v11[3] = v8;
  v11[4] = *(a2 + 64);
  v12 = *(a2 + 80);
  v9 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v9;
  v13 = v7;
  return a7(&v13, v11);
}

double ToolbarButtonHoverShape.path(in:)@<D0>(__int16 a1@<W0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  ToolbarButtonHoverShape.adjustedRect(in:)(a1 & 0x1FF, a3, a4, a5, a6);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  static _GraphInputs.defaultInterfaceIdiom.getter();
  if (static Solarium.isEnabled(for:)())
  {
    v19.origin.x = v8;
    v19.origin.y = v10;
    v19.size.width = v12;
    v19.size.height = v14;
    CGRectGetHeight(v19);
  }

  RoundedRectangle.path(in:)();
  result = *&v16;
  *a2 = v16;
  *(a2 + 16) = v17;
  *(a2 + 32) = v18;
  return result;
}

uint64_t ToolbarButtonHoverShape.adjustedRect(in:)(__int16 a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  if (CGRectGetHeight(*&a2) + 8.0 > 36.0)
  {
    v12.origin.x = a2;
    v12.origin.y = a3;
    v12.size.width = a4;
    v12.size.height = a5;
    CGRectGetHeight(v12);
  }

  static _GraphInputs.defaultInterfaceIdiom.getter();
  static Solarium.isEnabled(for:)();
  if ((a1 & 0x100) != 0)
  {
    static EdgeInsets.zero.getter();
  }

  return CGRect.outset(by:)();
}

double protocol witness for Shape.path(in:) in conformance ToolbarButtonHoverShape@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  if (v5[1])
  {
    v7 = 256;
  }

  else
  {
    v7 = 0;
  }

  ToolbarButtonHoverShape.path(in:)(v7 | *v5, v10, a2, a3, a4, a5);
  result = *v10;
  v9 = v10[1];
  *a1 = v10[0];
  *(a1 + 16) = v9;
  *(a1 + 32) = v11;
  return result;
}

void protocol witness for View.body.getter in conformance ToolbarButtonHoverShape(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  *a1 = *v1;
  *(a1 + 1) = v2;
  *(a1 + 2) = v3;
  *(a1 + 3) = 256;
}

double EnvironmentValues.toolbarButtonBarHeight.getter()
{
  v1 = *v0;
  v2 = v0[1];
  *&v8 = *v0;
  *(&v8 + 1) = v2;
  EnvironmentValues.interfaceIdiom.getter();
  static InterfaceIdiom.macCatalyst.getter();
  if ((static InterfaceIdiom.== infix(_:_:)() & 1) == 0)
  {
    _s7SwiftUI23InterfaceIdiomPredicateVyAA03MaccD0VGMaTm_2(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ToolbarItemPlacementKey>, &type metadata for ToolbarItemPlacementKey, &protocol witness table for ToolbarItemPlacementKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ToolbarItemPlacementKey> and conformance EnvironmentPropertyKey<A>();
    if (v2)
    {

      PropertyList.Tracker.value<A>(_:for:)();
    }

    else
    {
      PropertyList.subscript.getter();
    }

    *&v7[25] = *&v9[9];
    *v7 = v8;
    *&v7[16] = *v9;
    if (v9[24] == 2 && (*v7 != 13 ? (v4 = *v7 == 4) : (v4 = 1), v4 && (v5 = vorrq_s8(*&v7[8], *&v7[24]), !*&vorr_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL)))))
    {
      *&v8 = v1;
      *(&v8 + 1) = v2;
      EnvironmentValues.verticalSizeClass.getter();
      if (v7[0] != 2 && (v7[0] & 1) != 0)
      {
        return 48.0;
      }
    }

    else
    {
      outlined destroy of ToolbarItemPlacement.Role(v7);
    }

    return 44.0;
  }

  return 36.0;
}

double key path getter for EnvironmentValues.toolbarItemMetrics : EnvironmentValues@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 8))
  {
    _s7SwiftUI23InterfaceIdiomPredicateVyAA03MaccD0VGMaTm_2(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ToolbarItemMetricsKey>, &type metadata for ToolbarItemMetricsKey, &protocol witness table for ToolbarItemMetricsKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ToolbarItemMetricsKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    _s7SwiftUI23InterfaceIdiomPredicateVyAA03MaccD0VGMaTm_2(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ToolbarItemMetricsKey>, &type metadata for ToolbarItemMetricsKey, &protocol witness table for ToolbarItemMetricsKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ToolbarItemMetricsKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  return result;
}

uint64_t key path setter for EnvironmentValues.toolbarItemMetrics : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI23InterfaceIdiomPredicateVyAA03MaccD0VGMaTm_2(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ToolbarItemMetricsKey>, &type metadata for ToolbarItemMetricsKey, &protocol witness table for ToolbarItemMetricsKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ToolbarItemMetricsKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t key path getter for EnvironmentValues.verticalSizeClass : EnvironmentValues@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.verticalSizeClass.getter();
  *a1 = v3;
  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<ToolbarButtonLabelModifier>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<Font?>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<ToolbarButtonLabelModifier>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<Font?>>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<ToolbarButtonLabelModifier>, _FixedSizeLayout>();
    type metadata accessor for _EnvironmentKeyWritingModifier<CGFloat?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>, &lazy cache variable for type metadata for Font?, MEMORY[0x1E6980F50]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<ToolbarButtonLabelModifier>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<Font?>>);
    }
  }
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<ToolbarButtonLabelModifier>, _FixedSizeLayout>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<ToolbarButtonLabelModifier>, _FixedSizeLayout>)
  {
    _s7SwiftUI37PrimitiveButtonStyleContainerModifierVyAA08BordereddE0VGMaTm_0(255, &lazy cache variable for type metadata for _ViewModifier_Content<ToolbarButtonLabelModifier>, lazy protocol witness table accessor for type ToolbarButtonLabelModifier and conformance ToolbarButtonLabelModifier, &type metadata for ToolbarButtonLabelModifier, MEMORY[0x1E697FDE8]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<ToolbarButtonLabelModifier>, _FixedSizeLayout>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ToolbarButtonLabelModifier>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ToolbarButtonLabelModifier>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ToolbarButtonLabelModifier>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<ToolbarButtonLabelModifier>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<Font?>>();
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<ToolbarButtonLabelModifier>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<CGFloat?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>, &lazy cache variable for type metadata for Font?, MEMORY[0x1E6980F50]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ToolbarButtonLabelModifier>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<ToolbarButtonLabelModifier>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ToolbarButtonLabelModifier>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ToolbarButtonLabelModifier>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<ToolbarButtonLabelModifier>, _FixedSizeLayout>();
    lazy protocol witness table accessor for type _ViewModifier_Content<ToolbarButtonLabelModifier> and conformance _ViewModifier_Content<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ToolbarButtonLabelModifier>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined destroy of ModifiedContent<Button<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, _ContentShapeKindModifier<ToolbarButtonHoverShape>>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<ToolbarItemMetricsKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<ToolbarItemMetricsKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<ToolbarItemMetricsKey> and conformance EnvironmentPropertyKey<A>)
  {
    _s7SwiftUI23InterfaceIdiomPredicateVyAA03MaccD0VGMaTm_2(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ToolbarItemMetricsKey>, &type metadata for ToolbarItemMetricsKey, &protocol witness table for ToolbarItemMetricsKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<ToolbarItemMetricsKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for ToolbarButtonStyle.ResolvedBody(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) == 0)
  {
    *a1 = *a2;
    v7 = *(type metadata accessor for PrimitiveButtonStyleConfiguration(0) + 24);
    v8 = v4 + v7;
    v9 = &a2[v7];
    type metadata accessor for ButtonAction();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v26 = *v9;
      v27 = *(v9 + 1);
      v28 = v9[16];
      outlined copy of Environment<AppIntentExecutor?>.Content(*v9, v27, v28);
      *v8 = v26;
      *(v8 + 1) = v27;
      v8[16] = v28;
      v29 = *(v9 + 5);
      v30 = *(v9 + 24);
      *(v8 + 24) = v30;
      *(v8 + 5) = v29;
      v31 = v30;
    }

    else
    {
      if (EnumCaseMultiPayload == 1)
      {
        v11 = *v9;
        v12 = *(v9 + 1);
        v14 = *(v9 + 2);
        v13 = *(v9 + 3);
        v39 = v9[34];
        v15 = *(v9 + 16);
        outlined copy of Environment<OpenURLAction>.Content(*v9, v12, v14, v13, v15, v39);
        *v8 = v11;
        *(v8 + 1) = v12;
        *(v8 + 2) = v14;
        *(v8 + 3) = v13;
        *(v8 + 16) = v15;
        v8[34] = v39;
        v16 = *(v9 + 5);
        v17 = *(v9 + 6);
        v18 = *(v9 + 7);
        v19 = *(v9 + 8);
        v40 = v9[74];
        LOWORD(v14) = *(v9 + 36);
        outlined copy of Environment<OpenURLAction>.Content(v16, v17, v18, v19, v14, v40);
        *(v8 + 5) = v16;
        *(v8 + 6) = v17;
        *(v8 + 7) = v18;
        *(v8 + 8) = v19;
        *(v8 + 36) = v14;
        v8[74] = v40;
        v20 = *(type metadata accessor for LinkDestination() + 24);
        v21 = &v8[v20];
        v22 = &v9[v20];
        v23 = type metadata accessor for URL();
        (*(*(v23 - 8) + 16))(v21, v22, v23);
        v24 = type metadata accessor for LinkDestination.Configuration();
        v21[*(v24 + 20)] = v22[*(v24 + 20)];
LABEL_9:
        swift_storeEnumTagMultiPayload();
        v33 = *(a3 + 24);
        *(v4 + *(a3 + 20)) = a2[*(a3 + 20)];
        v34 = v4 + v33;
        v35 = &a2[v33];
        v36 = *&a2[v33];
        v37 = v35[8];
        outlined copy of Environment<Selector?>.Content(v36, v37);
        *v34 = v36;
        v34[8] = v37;
        return v4;
      }

      v32 = *(v9 + 1);
      *v8 = *v9;
      *(v8 + 1) = v32;
    }

    goto LABEL_9;
  }

  v25 = *a2;
  *v4 = *a2;
  v4 = (v25 + ((v5 + 16) & ~v5));

  return v4;
}

_BYTE *initializeWithTake for ToolbarButtonStyle.ResolvedBody(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(type metadata accessor for PrimitiveButtonStyleConfiguration(0) + 24);
  v7 = &a1[v6];
  v8 = &a2[v6];
  v9 = type metadata accessor for ButtonAction();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *(v8 + 1);
    *v7 = *v8;
    *(v7 + 1) = v10;
    *(v7 + 31) = *(v8 + 31);
    *(v7 + 40) = *(v8 + 40);
    *(v7 + 56) = *(v8 + 56);
    *(v7 + 71) = *(v8 + 71);
    v11 = *(type metadata accessor for LinkDestination() + 24);
    v12 = &v7[v11];
    v13 = &v8[v11];
    v14 = type metadata accessor for URL();
    (*(*(v14 - 8) + 32))(v12, v13, v14);
    v15 = type metadata accessor for LinkDestination.Configuration();
    v12[*(v15 + 20)] = v13[*(v15 + 20)];
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v7, v8, *(*(v9 - 8) + 64));
  }

  v16 = *(a3 + 24);
  a1[*(a3 + 20)] = a2[*(a3 + 20)];
  v17 = &a1[v16];
  v18 = &a2[v16];
  *v17 = *v18;
  v17[8] = v18[8];
  return a1;
}

_BYTE *assignWithTake for ToolbarButtonStyle.ResolvedBody(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  if (a1 != a2)
  {
    v7 = *(v6 + 24);
    v8 = &a1[v7];
    v9 = &a2[v7];
    outlined destroy of ModifiedContent<Button<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, _ContentShapeKindModifier<ToolbarButtonHoverShape>>(&a1[v7], type metadata accessor for ButtonAction);
    v10 = type metadata accessor for ButtonAction();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v11 = *(v9 + 1);
      *v8 = *v9;
      *(v8 + 1) = v11;
      *(v8 + 31) = *(v9 + 31);
      *(v8 + 40) = *(v9 + 40);
      *(v8 + 56) = *(v9 + 56);
      *(v8 + 71) = *(v9 + 71);
      v12 = *(type metadata accessor for LinkDestination() + 24);
      v13 = &v8[v12];
      v14 = &v9[v12];
      v15 = type metadata accessor for URL();
      (*(*(v15 - 8) + 32))(v13, v14, v15);
      v16 = type metadata accessor for LinkDestination.Configuration();
      v13[*(v16 + 20)] = v14[*(v16 + 20)];
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v8, v9, *(*(v10 - 8) + 64));
    }
  }

  v17 = *(a3 + 24);
  a1[*(a3 + 20)] = a2[*(a3 + 20)];
  v18 = &a1[v17];
  v19 = &a2[v17];
  v20 = *v19;
  LOBYTE(v19) = v19[8];
  v21 = *v18;
  v22 = v18[8];
  *v18 = v20;
  v18[8] = v19;
  outlined consume of Environment<Selector?>.Content(v21, v22);
  return a1;
}

uint64_t getEnumTagSinglePayload for ToolbarLabelPaddingLayout(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 33);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ToolbarLabelPaddingLayout(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 33) = a2 + 1;
    }
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for ToolbarButtonHoverShape(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 1) = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<ToolbarButtonStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<CGFloat?>>> and conformance <> StaticIf<A, ()
{
  result = lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<ToolbarButtonStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<CGFloat?>>> and conformance <> Static;
  if (!lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<ToolbarButtonStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<CGFloat?>>> and conformance <> Static)
  {
    type metadata accessor for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<ToolbarButtonStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<CGFloat?>>>();
    lazy protocol witness table accessor for type InterfaceIdiomPredicate<MacInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, _ContentShapeKindModifier<ToolbarButtonHoverShape>>, CustomHoverEffectModifier<HoverEffect>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>>, lazy protocol witness table accessor for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ToolbarButtonStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<CGFloat?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<ToolbarButtonStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<CGFloat?>>> and conformance <> Static);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, _ContentShapeKindModifier<ToolbarButtonHoverShape>>, CustomHoverEffectModifier<HoverEffect>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ToolbarButtonStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<CGFloat?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ToolbarButtonStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<CGFloat?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ToolbarButtonStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<CGFloat?>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ToolbarButtonStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<CGFloat?>>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, _ContentShapeKindModifier<ToolbarButtonHoverShape>>, CustomHoverEffectModifier<HoverEffect>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ToolbarButtonStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ToolbarButtonStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>>, lazy protocol witness table accessor for type ModifiedContent<ToolbarButtonStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<CGFloat?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<CGFloat?> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<CGFloat?>, &lazy cache variable for type metadata for CGFloat?, MEMORY[0x1E69E7DE0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ToolbarButtonStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<CGFloat?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Button<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>> and conformance Button<A>(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata accessor for _ShapeView<ToolbarButtonHoverShape, ForegroundStyle>()
{
  if (!lazy cache variable for type metadata for _ShapeView<ToolbarButtonHoverShape, ForegroundStyle>)
  {
    lazy protocol witness table accessor for type ToolbarButtonHoverShape and conformance ToolbarButtonHoverShape();
    v0 = type metadata accessor for _ShapeView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ShapeView<ToolbarButtonHoverShape, ForegroundStyle>);
    }
  }
}

unint64_t instantiation function for generic protocol witness table for ToolbarLabelPaddingLayout(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ToolbarLabelPaddingLayout and conformance ToolbarLabelPaddingLayout();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ToolbarLabelPaddingLayout and conformance ToolbarLabelPaddingLayout()
{
  result = lazy protocol witness table cache variable for type ToolbarLabelPaddingLayout and conformance ToolbarLabelPaddingLayout;
  if (!lazy protocol witness table cache variable for type ToolbarLabelPaddingLayout and conformance ToolbarLabelPaddingLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarLabelPaddingLayout and conformance ToolbarLabelPaddingLayout);
  }

  return result;
}

void type metadata accessor for Button<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>()
{
  if (!lazy cache variable for type metadata for Button<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>(255);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, _ContentShapeKindModifier<ToolbarButtonHoverShape>>, CustomHoverEffectModifier<HoverEffect>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, lazy protocol witness table accessor for type ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
    v0 = type metadata accessor for Button();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Button<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<Button<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, _ContentShapeKindModifier<ToolbarButtonHoverShape>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<Button<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, _ContentShapeKindModifier<ToolbarButtonHoverShape>>)
  {
    type metadata accessor for Button<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>();
    _s7SwiftUI37PrimitiveButtonStyleContainerModifierVyAA08BordereddE0VGMaTm_0(255, &lazy cache variable for type metadata for _ContentShapeKindModifier<ToolbarButtonHoverShape>, lazy protocol witness table accessor for type ToolbarButtonHoverShape and conformance ToolbarButtonHoverShape, &type metadata for ToolbarButtonHoverShape, MEMORY[0x1E69805E0]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<Button<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, _ContentShapeKindModifier<ToolbarButtonHoverShape>>);
    }
  }
}

uint64_t outlined init with take of ModifiedContent<ToolbarButtonStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void type metadata accessor for ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, _ContentShapeKindModifier<ToolbarButtonHoverShape>>, CustomHoverEffectModifier<HoverEffect>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, _ContentShapeKindModifier<ToolbarButtonHoverShape>>, CustomHoverEffectModifier<HoverEffect>>)
  {
    type metadata accessor for ModifiedContent<Button<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, _ContentShapeKindModifier<ToolbarButtonHoverShape>>();
    _s7SwiftUI37PrimitiveButtonStyleContainerModifierVyAA08BordereddE0VGMaTm_0(255, &lazy cache variable for type metadata for CustomHoverEffectModifier<HoverEffect>, lazy protocol witness table accessor for type HoverEffect and conformance HoverEffect, &type metadata for HoverEffect, type metadata accessor for CustomHoverEffectModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, _ContentShapeKindModifier<ToolbarButtonHoverShape>>, CustomHoverEffectModifier<HoverEffect>>);
    }
  }
}

uint64_t specialized static ToolbarButtonDefaultForegroundModifier._makeInputs(modifier:inputs:)()
{
  static _GraphInputs.defaultInterfaceIdiom.getter();
  result = static Solarium.isEnabled(for:)();
  if (result)
  {
    _GraphInputs.interfaceIdiom.getter();
    result = AnyInterfaceIdiom.accepts<A>(_:)();
    if ((result & 1) == 0)
    {
      swift_beginAccess();
      lazy protocol witness table accessor for type BarItemBridgedTint and conformance BarItemBridgedTint();
      PropertyList.subscript.getter();
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      lazy protocol witness table accessor for type ToolbarButtonDefaultForegroundModifier.ChildEnvironment and conformance ToolbarButtonDefaultForegroundModifier.ChildEnvironment();
      Attribute.init<A>(body:value:flags:update:)();
      return _GraphInputs.environment.setter();
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _HStackLayout and conformance _HStackLayout()
{
  result = lazy protocol witness table cache variable for type _HStackLayout and conformance _HStackLayout;
  if (!lazy protocol witness table cache variable for type _HStackLayout and conformance _HStackLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _HStackLayout and conformance _HStackLayout);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, _ContentShapeKindModifier<ToolbarButtonHoverShape>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, _ContentShapeKindModifier<ToolbarButtonHoverShape>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, _ContentShapeKindModifier<ToolbarButtonHoverShape>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<Button<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, _ContentShapeKindModifier<ToolbarButtonHoverShape>>();
    lazy protocol witness table accessor for type Button<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>> and conformance Button<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>> and conformance Button<A>, type metadata accessor for Button<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>);
    lazy protocol witness table accessor for type _ContentShapeKindModifier<ToolbarButtonHoverShape> and conformance _ContentShapeKindModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, _ContentShapeKindModifier<ToolbarButtonHoverShape>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t partial apply for closure #1 in ToolbarButtonEdgeOutsetModifier.body(content:)@<X0>(uint64_t a1@<X8>)
{
  specialized ToolbarButtonEdgeOutsetModifier.padding(edge:)();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  result = static Edge.Set.all.getter();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  *(a1 + 40) = 0;
  return result;
}

uint64_t specialized ToolbarButtonEdgeOutsetModifier.padding(edge:)()
{
  static _GraphInputs.defaultInterfaceIdiom.getter();
  static Solarium.isEnabled(for:)();
  return static EdgeInsets.zero.getter();
}

id DeprecatedAlertBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeprecatedAlertBridge();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t DeprecatedAlertBridge.descriptionName.getter()
{
  result = 0xD000000000000011;
  v2 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x98));
  if (!v2)
  {
    return 0xD000000000000017;
  }

  if (v2 != 1)
  {
    return 0xD000000000000013;
  }

  return result;
}
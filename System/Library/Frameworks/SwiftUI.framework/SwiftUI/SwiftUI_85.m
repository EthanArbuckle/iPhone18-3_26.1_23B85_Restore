uint64_t CustomizableDocumentViewController.__ivar_destroyer()
{

  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(*(v0 + OBJC_IVAR____TtC7SwiftUI34CustomizableDocumentViewController_backgroundAccessoryView));
  v1 = *(v0 + OBJC_IVAR____TtC7SwiftUI34CustomizableDocumentViewController_overlayAccessoryView);

  return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v1);
}

id CustomizableDocumentViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CustomizableDocumentViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for CustomizableDocumentViewController()
{
  result = type metadata singleton initialization cache for CustomizableDocumentViewController;
  if (!type metadata singleton initialization cache for CustomizableDocumentViewController)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void DocumentAccessoryView.updateRootView()()
{
  v1 = v0;
  v2 = [(UIView *)v0 layoutMarginsGuide];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UILayoutGuide);
  UIPopoverPresentationControllerSourceItem.frame(in:)(&v14, v1);

  if (!v14.is_nil)
  {
    origin = v14.value.origin;
    size = v14.value.size;
    [(UIView *)v1 frame];
    v3 = *(&v1->super.super.isa + OBJC_IVAR____TtC7SwiftUIP33_D03D906BE16D60978DB484CD1BCAACE321DocumentAccessoryView_hostingView);
    v4 = *(&v1->super.super.isa + OBJC_IVAR____TtC7SwiftUIP33_D03D906BE16D60978DB484CD1BCAACE321DocumentAccessoryView_viewProvider);
    v11[0] = v5;
    v11[1] = v6;
    v11[2] = v7;
    v11[3] = v8;
    v9 = v3;

    v10 = v4(v11);

    static Transaction.current.getter();
    specialized _UIHostingView.setRootView(_:transaction:)(v10);
  }
}

char *DocumentAccessoryView.hitTest(_:with:)(uint64_t a1, double a2, double a3)
{
  v14.receiver = v3;
  v14.super_class = swift_getObjectType();
  result = objc_msgSendSuper2(&v14, sel_hitTest_withEvent_, a1, a2, a3);
  if (result)
  {
    v8 = result == v3;
  }

  else
  {
    v8 = 0;
  }

  if (v8 || result && (v9 = *&v3[OBJC_IVAR____TtC7SwiftUIP33_D03D906BE16D60978DB484CD1BCAACE321DocumentAccessoryView_hostingView], v10 = result, type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView), v11 = v9, v12 = v10, v13 = static NSObject.== infix(_:_:)(), v11, v12, result = v10, (v13 & 1) != 0))
  {

    return 0;
  }

  return result;
}

void destroy for DocumentLaunchScreenAction(uint64_t a1)
{
  if (*(a1 + 32))
  {

    __swift_destroy_boxed_opaque_existential_1(a1 + 8);
  }
}

void *initializeWithCopy for DocumentLaunchScreenAction(void *a1, uint64_t a2)
{
  v4 = *a2;
  *a1 = *a2;
  v5 = a1 + 1;
  v6 = *(a2 + 32);
  v7 = v4;
  if (v6)
  {
    v8 = *(a2 + 40);
    a1[4] = v6;
    a1[5] = v8;
    (**(v6 - 8))(v5, a2 + 8, v6);
  }

  else
  {
    v9 = *(a2 + 24);
    *v5 = *(a2 + 8);
    *(v5 + 1) = v9;
    v5[4] = *(a2 + 40);
  }

  return a1;
}

uint64_t assignWithCopy for DocumentLaunchScreenAction(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a2 + 32);
  if (!*(a1 + 32))
  {
    if (v7)
    {
      *(a1 + 32) = v7;
      *(a1 + 40) = *(a2 + 40);
      (**(v7 - 8))(a1 + 8, a2 + 8);
      return a1;
    }

LABEL_7:
    v9 = *(a2 + 8);
    v10 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v10;
    *(a1 + 8) = v9;
    return a1;
  }

  v8 = (a1 + 8);
  if (!v7)
  {
    __swift_destroy_boxed_opaque_existential_1(v8);
    goto LABEL_7;
  }

  __swift_assign_boxed_opaque_existential_1(v8, (a2 + 8));
  return a1;
}

uint64_t assignWithTake for DocumentLaunchScreenAction(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  if (*(a1 + 32))
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 8);
  }

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t specialized CustomizableDocumentViewController.warnIfMenuActionsInvalid(_:)(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    for (i = result + 32; ; i += 48)
    {
      outlined init with copy of DocumentLaunchScreenAction(i, &v6);
      outlined init with copy of DocumentCreationStrategy?(&v7, v4, type metadata accessor for DocumentCreationStrategy?);
      outlined destroy of DocumentLaunchScreenAction(&v6);
      v3 = v5;
      result = outlined destroy of DocumentCreationStrategy?(v4);
      if (v3)
      {
        break;
      }

      if (!--v1)
      {
        return result;
      }
    }

    return MEMORY[0x18D009810](0x10000000000000CDLL, 0x800000018CD45930);
  }

  return result;
}

void type metadata accessor for _UIHostingView<AnyView>()
{
  if (!lazy cache variable for type metadata for _UIHostingView<AnyView>)
  {
    v0 = type metadata accessor for _UIHostingView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _UIHostingView<AnyView>);
    }
  }
}

void type metadata accessor for DocumentCreationStrategy?()
{
  if (!lazy cache variable for type metadata for DocumentCreationStrategy?)
  {
    type metadata accessor for DocumentCreationStrategy();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DocumentCreationStrategy?);
    }
  }
}

unint64_t type metadata accessor for DocumentCreationStrategy()
{
  result = lazy cache variable for type metadata for DocumentCreationStrategy;
  if (!lazy cache variable for type metadata for DocumentCreationStrategy)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for DocumentCreationStrategy);
  }

  return result;
}

uint64_t outlined destroy of DocumentCreationStrategy?(uint64_t a1)
{
  type metadata accessor for DocumentCreationStrategy?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of DocumentCreationStrategy?(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for AnyView?()
{
  if (!lazy cache variable for type metadata for AnyView?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnyView?);
    }
  }
}

uint64_t specialized static DocumentLaunchScreenAction.makeActions(from:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v15 = MEMORY[0x1E69E7CC0];
  v4 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
  v5 = 0;
  v3 = v15;
  v6 = v1 + 32;
  while (v5 < *(v1 + 16))
  {
    outlined init with copy of PlatformItem(v6, v13);
    closure #1 in static DocumentLaunchScreenAction.makeActions(from:)(v13, v14);
    v4 = outlined destroy of PlatformItem(v13);
    v15 = v3;
    v8 = *(v3 + 16);
    v7 = *(v3 + 24);
    if (v8 >= v7 >> 1)
    {
      v4 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
      v3 = v15;
    }

    ++v5;
    *(v3 + 16) = v8 + 1;
    v9 = (v3 + 48 * v8);
    v10 = v14[0];
    v11 = v14[2];
    v9[3] = v14[1];
    v9[4] = v11;
    v9[2] = v10;
    v6 += 632;
    if (v2 == v5)
    {
      return v3;
    }
  }

  __break(1u);
  outlined destroy of PlatformItem(v4);

  __break(1u);
  return result;
}

uint64_t outlined copy of PlatformItem.SelectionContent?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

void destroy for CustomizableDocumentViewControllerRepresentable(uint64_t a1)
{

  if (*(a1 + 24))
  {
  }

  if (*(a1 + 64))
  {
    outlined consume of Text.Storage(*(a1 + 40), *(a1 + 48), *(a1 + 56));
  }

  if (*(a1 + 80))
  {
  }

  if (*(a1 + 96))
  {
  }

  swift_weakDestroy();
  swift_weakDestroy();
  swift_weakDestroy();
  if (*(a1 + 184))
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 160);
  }

  v2 = *(a1 + 224);
  if (v2 != 255)
  {
    outlined consume of SceneID(*(a1 + 208), *(a1 + 216), v2 & 1);
  }

  v3 = *(a1 + 232);
}

uint64_t initializeWithCopy for CustomizableDocumentViewControllerRepresentable(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  v6 = (a2 + 24);
  v5 = *(a2 + 24);

  if (v5)
  {
    v7 = *(a2 + 32);
    *(a1 + 24) = v5;
    *(a1 + 32) = v7;

    v8 = *(a2 + 64);
    if (v8)
    {
LABEL_3:
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = *(a2 + 56);
      outlined copy of Text.Storage(v9, v10, v11);
      *(a1 + 40) = v9;
      *(a1 + 48) = v10;
      *(a1 + 56) = v11;
      *(a1 + 64) = v8;

      goto LABEL_6;
    }
  }

  else
  {
    *(a1 + 24) = *v6;
    v8 = *(a2 + 64);
    if (v8)
    {
      goto LABEL_3;
    }
  }

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
LABEL_6:
  v12 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);

  if (v12)
  {
    v13 = *(a2 + 88);
    *(a1 + 80) = v12;
    *(a1 + 88) = v13;
  }

  else
  {
    *(a1 + 80) = *(a2 + 80);
  }

  v14 = *(a2 + 96);
  if (v14)
  {
    v15 = *(a2 + 104);
    *(a1 + 96) = v14;
    *(a1 + 104) = v15;
  }

  else
  {
    *(a1 + 96) = *(a2 + 96);
  }

  v16 = *(a2 + 120);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = v16;
  *(a1 + 128) = *(a2 + 128);

  swift_weakCopyInit();
  swift_weakCopyInit();
  swift_weakCopyInit();
  v17 = *(a2 + 184);
  if (v17)
  {
    v18 = *(a2 + 192);
    *(a1 + 184) = v17;
    *(a1 + 192) = v18;
    (**(v17 - 8))(a1 + 160, a2 + 160);
  }

  else
  {
    v19 = *(a2 + 176);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v19;
    *(a1 + 192) = *(a2 + 192);
  }

  *(a1 + 200) = *(a2 + 200);
  v20 = *(a2 + 224);
  if (v20 == 255)
  {
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 224) = *(a2 + 224);
  }

  else
  {
    v21 = *(a2 + 208);
    v22 = *(a2 + 216);
    v23 = v20 & 1;
    outlined copy of SceneID(v21, v22, v20 & 1);
    *(a1 + 208) = v21;
    *(a1 + 216) = v22;
    *(a1 + 224) = v23;
  }

  v24 = *(a2 + 232);
  v25 = *(a2 + 240);
  *(a1 + 232) = v24;
  *(a1 + 240) = v25;
  v26 = v24;
  return a1;
}

uint64_t assignWithCopy for CustomizableDocumentViewControllerRepresentable(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  v4 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (v4)
    {
      v5 = *(a2 + 32);
      *(a1 + 24) = v4;
      *(a1 + 32) = v5;

      goto LABEL_8;
    }
  }

  else if (v4)
  {
    v6 = *(a2 + 32);
    *(a1 + 24) = v4;
    *(a1 + 32) = v6;

    goto LABEL_8;
  }

  *(a1 + 24) = *(a2 + 24);
LABEL_8:
  v7 = *(a2 + 64);
  if (*(a1 + 64))
  {
    if (v7)
    {
      v8 = *(a2 + 40);
      v9 = *(a2 + 48);
      v10 = *(a2 + 56);
      outlined copy of Text.Storage(v8, v9, v10);
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      v13 = *(a1 + 56);
      *(a1 + 40) = v8;
      *(a1 + 48) = v9;
      *(a1 + 56) = v10;
      outlined consume of Text.Storage(v11, v12, v13);
      *(a1 + 64) = *(a2 + 64);
    }

    else
    {
      outlined destroy of Text(a1 + 40);
      v17 = *(a2 + 56);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = v17;
    }
  }

  else if (v7)
  {
    v14 = *(a2 + 40);
    v15 = *(a2 + 48);
    v16 = *(a2 + 56);
    outlined copy of Text.Storage(v14, v15, v16);
    *(a1 + 40) = v14;
    *(a1 + 48) = v15;
    *(a1 + 56) = v16;
    *(a1 + 64) = *(a2 + 64);
  }

  else
  {
    v18 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v18;
  }

  *(a1 + 72) = *(a2 + 72);

  v19 = *(a2 + 80);
  if (*(a1 + 80))
  {
    if (v19)
    {
      v20 = *(a2 + 88);
      *(a1 + 80) = v19;
      *(a1 + 88) = v20;

      goto LABEL_22;
    }
  }

  else if (v19)
  {
    v21 = *(a2 + 88);
    *(a1 + 80) = v19;
    *(a1 + 88) = v21;

    goto LABEL_22;
  }

  *(a1 + 80) = *(a2 + 80);
LABEL_22:
  v22 = *(a2 + 96);
  if (*(a1 + 96))
  {
    if (v22)
    {
      v23 = *(a2 + 104);
      *(a1 + 96) = v22;
      *(a1 + 104) = v23;

      goto LABEL_29;
    }
  }

  else if (v22)
  {
    v24 = *(a2 + 104);
    *(a1 + 96) = v22;
    *(a1 + 104) = v24;

    goto LABEL_29;
  }

  *(a1 + 96) = *(a2 + 96);
LABEL_29:
  *(a1 + 112) = *(a2 + 112);

  *(a1 + 120) = *(a2 + 120);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 128) = *(a2 + 128);

  swift_weakCopyAssign();
  swift_weakCopyAssign();
  swift_weakCopyAssign();
  v25 = *(a2 + 184);
  if (*(a1 + 184))
  {
    v26 = (a1 + 160);
    if (v25)
    {
      __swift_assign_boxed_opaque_existential_1(v26, (a2 + 160));
    }

    else
    {
      outlined destroy of AnyHashable(v26);
      v27 = *(a2 + 192);
      v28 = *(a2 + 176);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 176) = v28;
      *(a1 + 192) = v27;
    }
  }

  else if (v25)
  {
    *(a1 + 184) = v25;
    *(a1 + 192) = *(a2 + 192);
    (**(v25 - 8))(a1 + 160, a2 + 160);
  }

  else
  {
    v29 = *(a2 + 160);
    v30 = *(a2 + 176);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 160) = v29;
    *(a1 + 176) = v30;
  }

  *(a1 + 200) = *(a2 + 200);
  v31 = *(a2 + 224);
  if (*(a1 + 224) == 255)
  {
    if (v31 == 255)
    {
      v42 = *(a2 + 208);
      *(a1 + 224) = *(a2 + 224);
      *(a1 + 208) = v42;
    }

    else
    {
      v38 = *(a2 + 208);
      v39 = *(a2 + 216);
      v40 = v31 & 1;
      outlined copy of SceneID(v38, v39, v31 & 1);
      *(a1 + 208) = v38;
      *(a1 + 216) = v39;
      *(a1 + 224) = v40;
    }
  }

  else if (v31 == 255)
  {
    outlined destroy of SceneID(a1 + 208);
    v41 = *(a2 + 224);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 224) = v41;
  }

  else
  {
    v32 = *(a2 + 208);
    v33 = *(a2 + 216);
    v34 = v31 & 1;
    outlined copy of SceneID(v32, v33, v31 & 1);
    v35 = *(a1 + 208);
    v36 = *(a1 + 216);
    v37 = *(a1 + 224);
    *(a1 + 208) = v32;
    *(a1 + 216) = v33;
    *(a1 + 224) = v34;
    outlined consume of SceneID(v35, v36, v37);
  }

  v43 = *(a1 + 232);
  v44 = *(a2 + 232);
  *(a1 + 232) = v44;
  v45 = v44;

  *(a1 + 240) = *(a2 + 240);
  return a1;
}

uint64_t initializeWithTake for CustomizableDocumentViewControllerRepresentable(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v4;
  v5 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v5;
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  v7 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v7;
  *(a1 + 128) = *(a2 + 128);
  swift_weakTakeInit();
  swift_weakTakeInit();
  swift_weakTakeInit();
  v8 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v8;
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 232) = *(a2 + 232);
  return a1;
}

uint64_t assignWithTake for CustomizableDocumentViewControllerRepresentable(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);

  v5 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (v5)
    {
      v6 = *(a2 + 32);
      *(a1 + 24) = v5;
      *(a1 + 32) = v6;

      if (!*(a1 + 64))
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }

LABEL_9:
    *(a1 + 24) = *(a2 + 24);
    if (!*(a1 + 64))
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (!v5)
  {
    goto LABEL_9;
  }

  v7 = *(a2 + 32);
  *(a1 + 24) = v5;
  *(a1 + 32) = v7;
  if (!*(a1 + 64))
  {
    goto LABEL_13;
  }

LABEL_10:
  v8 = *(a2 + 64);
  if (v8)
  {
    v9 = *(a2 + 56);
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = v9;
    outlined consume of Text.Storage(v10, v11, v12);
    *(a1 + 64) = v8;

    goto LABEL_14;
  }

  outlined destroy of Text(a1 + 40);
LABEL_13:
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
LABEL_14:
  *(a1 + 72) = *(a2 + 72);

  v13 = *(a2 + 80);
  if (*(a1 + 80))
  {
    if (v13)
    {
      v14 = *(a2 + 88);
      *(a1 + 80) = v13;
      *(a1 + 88) = v14;

      goto LABEL_21;
    }
  }

  else if (v13)
  {
    v15 = *(a2 + 88);
    *(a1 + 80) = v13;
    *(a1 + 88) = v15;
    goto LABEL_21;
  }

  *(a1 + 80) = *(a2 + 80);
LABEL_21:
  v16 = *(a2 + 96);
  if (*(a1 + 96))
  {
    if (v16)
    {
      v17 = *(a2 + 104);
      *(a1 + 96) = v16;
      *(a1 + 104) = v17;

      goto LABEL_28;
    }
  }

  else if (v16)
  {
    v18 = *(a2 + 104);
    *(a1 + 96) = v16;
    *(a1 + 104) = v18;
    goto LABEL_28;
  }

  *(a1 + 96) = *(a2 + 96);
LABEL_28:
  *(a1 + 112) = *(a2 + 112);

  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);

  swift_weakTakeAssign();
  swift_weakTakeAssign();
  swift_weakTakeAssign();
  if (*(a1 + 184))
  {
    if (*(a2 + 184))
    {
      __swift_destroy_boxed_opaque_existential_1(a1 + 160);
    }

    else
    {
      outlined destroy of AnyHashable(a1 + 160);
    }
  }

  v19 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v19;
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = *(a2 + 200);
  v20 = *(a1 + 224);
  if (v20 == 255)
  {
    goto LABEL_36;
  }

  v21 = *(a2 + 224);
  if (v21 == 255)
  {
    outlined destroy of SceneID(a1 + 208);
LABEL_36:
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 224) = *(a2 + 224);
    goto LABEL_37;
  }

  v22 = *(a1 + 208);
  v23 = *(a1 + 216);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 224) = v21 & 1;
  outlined consume of SceneID(v22, v23, v20 & 1);
LABEL_37:
  v24 = *(a1 + 232);
  *(a1 + 232) = *(a2 + 232);

  *(a1 + 240) = *(a2 + 240);
  return a1;
}

uint64_t getEnumTagSinglePayload for CustomizableDocumentViewControllerRepresentable(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 248))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CustomizableDocumentViewControllerRepresentable(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 248) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 248) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *FileDocumentWriteConfiguration.existingFile.getter()
{
  v1 = *(v0 + *(type metadata accessor for FileDocumentWriteConfiguration(0) + 20));
  v2 = v1;
  return v1;
}

uint64_t FileDocumentWriteConfiguration.contentType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UTType();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

id FileDocumentReadConfiguration.file.getter()
{
  v1 = *(v0 + *(type metadata accessor for FileDocumentReadConfiguration(0) + 20));

  return v1;
}

uint64_t assignWithCopy for FileDocumentWriteConfiguration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UTType();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);
  *(a1 + v7) = v9;
  v10 = v9;

  return a1;
}

uint64_t assignWithTake for FileDocumentWriteConfiguration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UTType();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a1 + v7);
  *(a1 + v7) = *(a2 + v7);

  return a1;
}

uint64_t type metadata completion function for FileDocumentWriteConfiguration()
{
  return type metadata completion function for FileDocumentWriteConfiguration();
}

{
  result = type metadata accessor for UTType();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for FileDocumentWriteConfiguration(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for UTType();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 20);
    v9 = *(a2 + v8);
    *(a1 + v8) = v9;
    v10 = v9;
  }

  return a1;
}

void destroy for FileDocumentWriteConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UTType();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = *(a1 + *(a2 + 20));
}

uint64_t initializeWithCopy for FileDocumentWriteConfiguration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UTType();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a2 + v7);
  *(a1 + v7) = v8;
  v9 = v8;
  return a1;
}

uint64_t assignWithCopy for FileDocumentReadConfiguration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UTType();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a2 + v7);
  v9 = *(a1 + v7);
  *(a1 + v7) = v8;
  v10 = v8;

  return a1;
}

uint64_t initializeWithTake for FileDocumentWriteConfiguration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UTType();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t assignWithTake for FileDocumentReadConfiguration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UTType();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a1 + v7);
  *(a1 + v7) = *(a2 + v7);

  return a1;
}

uint64_t key path getter for EnvironmentValues.searchFocusContext : EnvironmentValues(uint64_t a1)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<SearchFocusContextKey>();
    lazy protocol witness table accessor for type _PreferenceActionModifier<IsSearchFocusedPreferenceKey> and conformance _PreferenceActionModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SearchFocusContextKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<SearchFocusContextKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<SearchFocusContextKey>();
    lazy protocol witness table accessor for type _PreferenceActionModifier<IsSearchFocusedPreferenceKey> and conformance _PreferenceActionModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SearchFocusContextKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<SearchFocusContextKey>);

    return PropertyList.subscript.getter();
  }
}

uint64_t View.onSearchFocusChange(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  return MEMORY[0x18D00A570](v4, a3, &unk_1EFFB3508);
}

unint64_t lazy protocol witness table accessor for type OnSearchFocusChangeModifier and conformance OnSearchFocusChangeModifier()
{
  result = lazy protocol witness table cache variable for type OnSearchFocusChangeModifier and conformance OnSearchFocusChangeModifier;
  if (!lazy protocol witness table cache variable for type OnSearchFocusChangeModifier and conformance OnSearchFocusChangeModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OnSearchFocusChangeModifier and conformance OnSearchFocusChangeModifier);
  }

  return result;
}

uint64_t assignWithTake for SearchFocusContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  __swift_destroy_boxed_opaque_existential_1(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 64) = *(a2 + 64);

  return a1;
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance OnSearchFocusChangeModifier@<X0>(uint64_t (**a1)(unsigned __int8 *a1)@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a1 = partial apply for closure #1 in OnSearchFocusChangeModifier.body(content:);
  a1[1] = v5;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<OnSearchFocusChangeModifier>, _PreferenceActionModifier<IsSearchFocusedPreferenceKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<OnSearchFocusChangeModifier>, _PreferenceActionModifier<IsSearchFocusedPreferenceKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<OnSearchFocusChangeModifier>, _PreferenceActionModifier<IsSearchFocusedPreferenceKey>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<OnSearchFocusChangeModifier>, _PreferenceActionModifier<IsSearchFocusedPreferenceKey>>();
    lazy protocol witness table accessor for type _PreferenceActionModifier<IsSearchFocusedPreferenceKey> and conformance _PreferenceActionModifier<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<OnSearchFocusChangeModifier> and conformance _ViewModifier_Content<A>, type metadata accessor for _ViewModifier_Content<OnSearchFocusChangeModifier>);
    lazy protocol witness table accessor for type _PreferenceActionModifier<IsSearchFocusedPreferenceKey> and conformance _PreferenceActionModifier<A>(&lazy protocol witness table cache variable for type _PreferenceActionModifier<IsSearchFocusedPreferenceKey> and conformance _PreferenceActionModifier<A>, type metadata accessor for _PreferenceActionModifier<IsSearchFocusedPreferenceKey>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<OnSearchFocusChangeModifier>, _PreferenceActionModifier<IsSearchFocusedPreferenceKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<OnSearchFocusChangeModifier>, _PreferenceActionModifier<IsSearchFocusedPreferenceKey>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<OnSearchFocusChangeModifier>, _PreferenceActionModifier<IsSearchFocusedPreferenceKey>>)
  {
    type metadata accessor for _ViewModifier_Content<OnSearchFocusChangeModifier>();
    type metadata accessor for _PreferenceActionModifier<IsSearchFocusedPreferenceKey>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<OnSearchFocusChangeModifier>, _PreferenceActionModifier<IsSearchFocusedPreferenceKey>>);
    }
  }
}

void type metadata accessor for _ViewModifier_Content<OnSearchFocusChangeModifier>()
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<OnSearchFocusChangeModifier>)
  {
    lazy protocol witness table accessor for type OnSearchFocusChangeModifier and conformance OnSearchFocusChangeModifier();
    v0 = type metadata accessor for _ViewModifier_Content();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ViewModifier_Content<OnSearchFocusChangeModifier>);
    }
  }
}

void type metadata accessor for _PreferenceActionModifier<IsSearchFocusedPreferenceKey>()
{
  if (!lazy cache variable for type metadata for _PreferenceActionModifier<IsSearchFocusedPreferenceKey>)
  {
    v0 = type metadata accessor for _PreferenceActionModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _PreferenceActionModifier<IsSearchFocusedPreferenceKey>);
    }
  }
}

uint64_t ResolvedNavigationSplitStyle.ResolvedSidebarContent.body.getter@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = 0;
  *(a1 + 8) = result;
  *(a1 + 16) = 0;
  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ResolvedNavigationSplitStyle.ResolvedSidebarContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedNavigationSplitStyle.ResolvedSidebarContent and conformance ResolvedNavigationSplitStyle.ResolvedSidebarContent();

  return MEMORY[0x1EEDDE4C0](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ResolvedNavigationSplitStyle.ResolvedSidebarContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedNavigationSplitStyle.ResolvedSidebarContent and conformance ResolvedNavigationSplitStyle.ResolvedSidebarContent();

  return MEMORY[0x1EEDDE4C8](a1, a2, a3, v6);
}

uint64_t ResolvedNavigationSplitStyle.ContentListContent.body.getter@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = 1;
  *(a1 + 8) = result;
  *(a1 + 16) = 0;
  return result;
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ResolvedNavigationSplitStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedNavigationSplitStyle and conformance ResolvedNavigationSplitStyle();

  return MEMORY[0x1EEDDE4C8](a1, a2, a3, v6);
}

uint64_t assignWithCopy for NavigationSplitViewStyleConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t assignWithTake for NavigationSplitViewStyleConfiguration(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t getEnumTagSinglePayload for NavigationSplitViewStyleConfiguration(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for NavigationSplitViewStyleConfiguration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance NavigationSplitStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE4A8](a1, a2, a3, a4, a5, WitnessTable);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Detail, ResolvedNavigationSplitStyle.DetailContent>>, NavigationCommonModifier>, SearchNavigationSplitViewModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Detail, ResolvedNavigationSplitStyle.DetailContent>>, NavigationCommonModifier>, SearchNavigationSplitViewModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Detail, ResolvedNavigationSplitStyle.DetailContent>>, NavigationCommonModifier>, SearchNavigationSplitViewModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Detail, ResolvedNavigationSplitStyle.DetailContent>>, NavigationCommonModifier>, SearchNavigationSplitViewModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Detail, ResolvedNavigationSplitStyle.DetailContent>>, NavigationCommonModifier>, SearchNavigationSplitViewModifier>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Detail, ResolvedNavigationSplitStyle.DetailContent>>, NavigationCommonModifier>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Detail, ResolvedNavigationSplitStyle.DetailContent>>, NavigationCommonModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Detail, ResolvedNavigationSplitStyle.DetailContent>>, NavigationCommonModifier>, SearchNavigationSplitViewModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Detail, ResolvedNavigationSplitStyle.DetailContent>>, NavigationCommonModifier>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Detail, ResolvedNavigationSplitStyle.DetailContent>>, NavigationCommonModifier>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Detail, ResolvedNavigationSplitStyle.DetailContent>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Detail, ResolvedNavigationSplitStyle.DetailContent>>, type metadata accessor for ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>>, type metadata accessor for StaticSourceWriter<NavigationSplitViewStyleConfiguration.Detail, ResolvedNavigationSplitStyle.DetailContent>);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Detail, ResolvedNavigationSplitStyle.DetailContent>>, NavigationCommonModifier>);
    }
  }
}

void type metadata accessor for StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>()
{
  if (!lazy cache variable for type metadata for StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>)
  {
    lazy protocol witness table accessor for type NavigationSplitViewStyleConfiguration.Sidebar and conformance NavigationSplitViewStyleConfiguration.Sidebar();
    lazy protocol witness table accessor for type ResolvedNavigationSplitStyle.ResolvedSidebarContent and conformance ResolvedNavigationSplitStyle.ResolvedSidebarContent();
    v0 = type metadata accessor for StaticSourceWriter();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ResolvedNavigationSplitStyle.ResolvedSidebarContent and conformance ResolvedNavigationSplitStyle.ResolvedSidebarContent()
{
  result = lazy protocol witness table cache variable for type ResolvedNavigationSplitStyle.ResolvedSidebarContent and conformance ResolvedNavigationSplitStyle.ResolvedSidebarContent;
  if (!lazy protocol witness table cache variable for type ResolvedNavigationSplitStyle.ResolvedSidebarContent and conformance ResolvedNavigationSplitStyle.ResolvedSidebarContent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedNavigationSplitStyle.ResolvedSidebarContent and conformance ResolvedNavigationSplitStyle.ResolvedSidebarContent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedNavigationSplitStyle.ResolvedSidebarContent and conformance ResolvedNavigationSplitStyle.ResolvedSidebarContent;
  if (!lazy protocol witness table cache variable for type ResolvedNavigationSplitStyle.ResolvedSidebarContent and conformance ResolvedNavigationSplitStyle.ResolvedSidebarContent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedNavigationSplitStyle.ResolvedSidebarContent and conformance ResolvedNavigationSplitStyle.ResolvedSidebarContent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Detail, ResolvedNavigationSplitStyle.DetailContent>>, NavigationCommonModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Detail, ResolvedNavigationSplitStyle.DetailContent>>, NavigationCommonModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Detail, ResolvedNavigationSplitStyle.DetailContent>>, NavigationCommonModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Detail, ResolvedNavigationSplitStyle.DetailContent>>, NavigationCommonModifier>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Detail, ResolvedNavigationSplitStyle.DetailContent>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type NavigationCommonModifier and conformance NavigationCommonModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Detail, ResolvedNavigationSplitStyle.DetailContent>>, NavigationCommonModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Detail, ResolvedNavigationSplitStyle.DetailContent>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Detail, ResolvedNavigationSplitStyle.DetailContent>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Detail, ResolvedNavigationSplitStyle.DetailContent>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Detail, ResolvedNavigationSplitStyle.DetailContent>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Detail, ResolvedNavigationSplitStyle.DetailContent>>, type metadata accessor for ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>>, type metadata accessor for StaticSourceWriter<NavigationSplitViewStyleConfiguration.Detail, ResolvedNavigationSplitStyle.DetailContent>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>>, lazy protocol witness table accessor for type ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>> and conformance <> ModifiedContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Detail, ResolvedNavigationSplitStyle.DetailContent>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>(255);
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<UserInterfaceSizeClass?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail> and conformance NavigationSplitView<A, B, C>, type metadata accessor for NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SidebarStyleModifier<_AutomaticSidebarStyle> and conformance SidebarStyleModifier<A>()
{
  result = lazy protocol witness table cache variable for type SidebarStyleModifier<_AutomaticSidebarStyle> and conformance SidebarStyleModifier<A>;
  if (!lazy protocol witness table cache variable for type SidebarStyleModifier<_AutomaticSidebarStyle> and conformance SidebarStyleModifier<A>)
  {
    type metadata accessor for NavigationSplitStyleModifier<AutomaticNavigationSplitViewStyle>(255, &lazy cache variable for type metadata for SidebarStyleModifier<_AutomaticSidebarStyle>, lazy protocol witness table accessor for type _AutomaticSidebarStyle and conformance _AutomaticSidebarStyle, &type metadata for _AutomaticSidebarStyle, type metadata accessor for SidebarStyleModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SidebarStyleModifier<_AutomaticSidebarStyle> and conformance SidebarStyleModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _AutomaticSidebarStyle and conformance _AutomaticSidebarStyle()
{
  result = lazy protocol witness table cache variable for type _AutomaticSidebarStyle and conformance _AutomaticSidebarStyle;
  if (!lazy protocol witness table cache variable for type _AutomaticSidebarStyle and conformance _AutomaticSidebarStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _AutomaticSidebarStyle and conformance _AutomaticSidebarStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, SearchNavigationSplitViewColumnModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, SearchNavigationSplitViewColumnModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, SearchNavigationSplitViewColumnModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, SearchNavigationSplitViewColumnModifier>(255, &lazy cache variable for type metadata for ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, SearchNavigationSplitViewColumnModifier>, &type metadata for NavigationSplitViewStyleConfiguration.Detail, &type metadata for SearchNavigationSplitViewColumnModifier, MEMORY[0x1E697E830]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, SearchNavigationSplitViewColumnModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Detail, ResolvedNavigationSplitStyle.DetailContent>>, NavigationCommonModifier>, SearchNavigationSplitViewModifier>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<NavigationSplitViewStyleConfiguration.Content, StyleContextWriter<ContentListStyleContext>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<NavigationSplitViewStyleConfiguration.Content, StyleContextWriter<ContentListStyleContext>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<NavigationSplitViewStyleConfiguration.Content, StyleContextWriter<ContentListStyleContext>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<NavigationSplitViewStyleConfiguration.Content, StyleContextWriter<ContentListStyleContext>>();
    lazy protocol witness table accessor for type StyleContextWriter<ContentListStyleContext> and conformance StyleContextWriter<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<NavigationSplitViewStyleConfiguration.Content, StyleContextWriter<ContentListStyleContext>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ResolvedNavigationSplitStyle.ResolvedSidebarContent, SearchNavigationSplitViewColumnModifier>, _EnvironmentKeyWritingModifier<UserInterfaceSizeClass?>>, StaticSourceWriter<_SidebarConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Sidebar>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ResolvedNavigationSplitStyle.ResolvedSidebarContent, SearchNavigationSplitViewColumnModifier>, _EnvironmentKeyWritingModifier<UserInterfaceSizeClass?>>, StaticSourceWriter<_SidebarConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Sidebar>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ResolvedNavigationSplitStyle.ResolvedSidebarContent, SearchNavigationSplitViewColumnModifier>, _EnvironmentKeyWritingModifier<UserInterfaceSizeClass?>>, StaticSourceWriter<_SidebarConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Sidebar>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Detail, ResolvedNavigationSplitStyle.DetailContent>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ResolvedNavigationSplitStyle.ResolvedSidebarContent, SearchNavigationSplitViewColumnModifier>, _EnvironmentKeyWritingModifier<UserInterfaceSizeClass?>>, StaticSourceWriter<_SidebarConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Sidebar>>, type metadata accessor for ModifiedContent<ModifiedContent<ResolvedNavigationSplitStyle.ResolvedSidebarContent, SearchNavigationSplitViewColumnModifier>, _EnvironmentKeyWritingModifier<UserInterfaceSizeClass?>>, type metadata accessor for StaticSourceWriter<_SidebarConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Sidebar>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Content, StyleContextWriter<ContentListStyleContext>>, SearchNavigationSplitViewColumnModifier>, _EnvironmentKeyWritingModifier<UserInterfaceSizeClass?>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ResolvedNavigationSplitStyle.ResolvedSidebarContent, SearchNavigationSplitViewColumnModifier>, _EnvironmentKeyWritingModifier<UserInterfaceSizeClass?>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ResolvedNavigationSplitStyle.ResolvedSidebarContent, SearchNavigationSplitViewColumnModifier>, _EnvironmentKeyWritingModifier<UserInterfaceSizeClass?>>, lazy protocol witness table accessor for type ModifiedContent<ResolvedNavigationSplitStyle.ResolvedSidebarContent, SearchNavigationSplitViewColumnModifier> and conformance <> ModifiedContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ResolvedNavigationSplitStyle.ResolvedSidebarContent, SearchNavigationSplitViewColumnModifier>, _EnvironmentKeyWritingModifier<UserInterfaceSizeClass?>>, StaticSourceWriter<_SidebarConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Sidebar>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Sidebar, ResolvedNavigationSplitStyle.ResolvedSidebarContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>>, StaticSourceWriter<NavigationSplitViewStyleConfiguration.Detail, ResolvedNavigationSplitStyle.DetailContent>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
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

void type metadata accessor for ModifiedContent<ModifiedContent<ResolvedNavigationSplitStyle.ResolvedSidebarContent, SearchNavigationSplitViewColumnModifier>, _EnvironmentKeyWritingModifier<UserInterfaceSizeClass?>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ResolvedNavigationSplitStyle.ResolvedSidebarContent, SearchNavigationSplitViewColumnModifier>, _EnvironmentKeyWritingModifier<UserInterfaceSizeClass?>>)
  {
    type metadata accessor for ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, SearchNavigationSplitViewColumnModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ResolvedNavigationSplitStyle.ResolvedSidebarContent, SearchNavigationSplitViewColumnModifier>, &unk_1EFFB3868, &type metadata for SearchNavigationSplitViewColumnModifier, MEMORY[0x1E697E830]);
    type metadata accessor for _EnvironmentKeyWritingModifier<UserInterfaceSizeClass?>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ResolvedNavigationSplitStyle.ResolvedSidebarContent, SearchNavigationSplitViewColumnModifier>, _EnvironmentKeyWritingModifier<UserInterfaceSizeClass?>>);
    }
  }
}

void type metadata accessor for ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, SearchNavigationSplitViewColumnModifier>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void type metadata accessor for StaticSourceWriter<_SidebarConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Sidebar>()
{
  if (!lazy cache variable for type metadata for StaticSourceWriter<_SidebarConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Sidebar>)
  {
    lazy protocol witness table accessor for type _SidebarConfiguration.Sidebar and conformance _SidebarConfiguration.Sidebar();
    v0 = type metadata accessor for StaticSourceWriter();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticSourceWriter<_SidebarConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Sidebar>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Content, StyleContextWriter<ContentListStyleContext>>, SearchNavigationSplitViewColumnModifier>, _EnvironmentKeyWritingModifier<UserInterfaceSizeClass?>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<UserInterfaceSizeClass?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<UserInterfaceSizeClass?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<UserInterfaceSizeClass?>);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ResolvedNavigationSplitStyle.ResolvedSidebarContent, SearchNavigationSplitViewColumnModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ResolvedNavigationSplitStyle.ResolvedSidebarContent, SearchNavigationSplitViewColumnModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ResolvedNavigationSplitStyle.ResolvedSidebarContent, SearchNavigationSplitViewColumnModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, SearchNavigationSplitViewColumnModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ResolvedNavigationSplitStyle.ResolvedSidebarContent, SearchNavigationSplitViewColumnModifier>, &unk_1EFFB3868, &type metadata for SearchNavigationSplitViewColumnModifier, MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type ResolvedNavigationSplitStyle.ResolvedSidebarContent and conformance ResolvedNavigationSplitStyle.ResolvedSidebarContent();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ResolvedNavigationSplitStyle.ResolvedSidebarContent, SearchNavigationSplitViewColumnModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t View.listSectionCornerRadius(_:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v15[1] = a5;
  type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<ListSectionCornerRadiusTraitKey>, &type metadata for ListSectionCornerRadiusTraitKey, &protocol witness table for ListSectionCornerRadiusTraitKey, MEMORY[0x1E697FDB8]);
  v9 = type metadata accessor for ModifiedContent();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - v11;
  v16 = a1;
  a2 &= 1u;
  v17 = a2;
  View.trait<A>(key:value:)(&type metadata for ListSectionCornerRadiusTraitKey, &v16, a3, &type metadata for ListSectionCornerRadiusTraitKey, a4);
  swift_getKeyPath();
  v16 = a1;
  v17 = a2;
  v13 = lazy protocol witness table accessor for type _TraitWritingModifier<ListSectionCornerRadiusTraitKey> and conformance _TraitWritingModifier<A>();
  v15[2] = a4;
  v15[3] = v13;
  swift_getWitnessTable();
  View.environment<A>(_:_:)();

  return (*(v10 + 8))(v12, v9);
}

uint64_t EnvironmentValues.listSectionCornerRadius.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionCornerRadius>, &unk_1EFFB38B0, &protocol witness table for EnvironmentValues.__Key_listSectionCornerRadius, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionCornerRadius> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionCornerRadius>, &unk_1EFFB38B0, &protocol witness table for EnvironmentValues.__Key_listSectionCornerRadius, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionCornerRadius> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  return v2;
}

uint64_t key path getter for EnvironmentValues.listSectionCornerRadius : EnvironmentValues@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionCornerRadius>, &unk_1EFFB38B0, &protocol witness table for EnvironmentValues.__Key_listSectionCornerRadius, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionCornerRadius> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionCornerRadius>, &unk_1EFFB38B0, &protocol witness table for EnvironmentValues.__Key_listSectionCornerRadius, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionCornerRadius> and conformance EnvironmentPropertyKey<A>();
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t key path setter for EnvironmentValues.listSectionCornerRadius : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionCornerRadius>, &unk_1EFFB38B0, &protocol witness table for EnvironmentValues.__Key_listSectionCornerRadius, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionCornerRadius> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

unint64_t lazy protocol witness table accessor for type _TraitWritingModifier<ListSectionCornerRadiusTraitKey> and conformance _TraitWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _TraitWritingModifier<ListSectionCornerRadiusTraitKey> and conformance _TraitWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _TraitWritingModifier<ListSectionCornerRadiusTraitKey> and conformance _TraitWritingModifier<A>)
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<ListSectionCornerRadiusTraitKey>, &type metadata for ListSectionCornerRadiusTraitKey, &protocol witness table for ListSectionCornerRadiusTraitKey, MEMORY[0x1E697FDB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _TraitWritingModifier<ListSectionCornerRadiusTraitKey> and conformance _TraitWritingModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<CGFloat?> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<CGFloat?> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<CGFloat?> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<CGFloat?>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<CGFloat?> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionCornerRadius> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionCornerRadius> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionCornerRadius> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionCornerRadius>, &unk_1EFFB38B0, &protocol witness table for EnvironmentValues.__Key_listSectionCornerRadius, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionCornerRadius> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t specialized implicit closure #1 in _GraphInputs.listSectionCornerRadius.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionCornerRadius>, &unk_1EFFB38B0, &protocol witness table for EnvironmentValues.__Key_listSectionCornerRadius, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionCornerRadius> and conformance EnvironmentPropertyKey<A>();

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionCornerRadius>, &unk_1EFFB38B0, &protocol witness table for EnvironmentValues.__Key_listSectionCornerRadius, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionCornerRadius> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.getter();
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t View.writingToolsAffordanceVisibility(_:)()
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

uint64_t EnvironmentValues.writingToolsAffordanceVisibility.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_writingToolsAffordanceVisibility>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Visibility> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_writingToolsAffordanceVisibility> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_writingToolsAffordanceVisibility>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_writingToolsAffordanceVisibility>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Visibility> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_writingToolsAffordanceVisibility> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_writingToolsAffordanceVisibility>);
    PropertyList.subscript.getter();
  }

  return v2;
}

uint64_t key path getter for EnvironmentValues.writingToolsAffordanceVisibility : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_writingToolsAffordanceVisibility>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Visibility> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_writingToolsAffordanceVisibility> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_writingToolsAffordanceVisibility>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_writingToolsAffordanceVisibility>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Visibility> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_writingToolsAffordanceVisibility> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_writingToolsAffordanceVisibility>);
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.writingToolsAffordanceVisibility : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_writingToolsAffordanceVisibility>();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Visibility> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_writingToolsAffordanceVisibility> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_writingToolsAffordanceVisibility>);

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_writingToolsAffordanceVisibility>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_writingToolsAffordanceVisibility>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_writingToolsAffordanceVisibility>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Visibility> and conformance _EnvironmentKeyWritingModifier<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t TabContent.sectionActions<A>(content:)@<X0>(void (*a1)(double)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v18 = a4;
  v9 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TabSectionActionsModifier();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v18 - v15;
  a1(v14);
  (*(v9 + 32))(v16, v11, a3);
  TabContent.modifier<A>(_:)(v16, a2, v12, a5);
  return (*(v13 + 8))(v16, v12);
}

uint64_t TabSectionActionsModifier.body(content:)(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  type metadata accessor for TabSectionActions();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  v6 = type metadata accessor for Group();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17[-v11];
  v18 = v4;
  v19 = v5;
  v20 = v2;
  WitnessTable = swift_getWitnessTable();
  Group<A>.init(content:)();
  v21 = WitnessTable;
  v14 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v9, v6, v14);
  v15 = *(v7 + 8);
  v15(v9, v6);
  static ViewBuilder.buildExpression<A>(_:)(v12, v6, v14);
  return (v15)(v12, v6);
}

uint64_t closure #1 in TabSectionActionsModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20[1] = a3;
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TabSectionActions();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v20 - v13;
  type metadata accessor for TabSectionActionsModifier();
  swift_getWitnessTable();
  v15 = type metadata accessor for _ViewModifier_Content();
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(WitnessTable, v15, WitnessTable);
  (*(v5 + 16))(v7, a1, a2);
  (*(v5 + 32))(v11, v7, a2);
  v17 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v11, v8, v17);
  v18 = *(v9 + 8);
  v18(v11, v8);
  (*(v9 + 16))(v11, v14, v8);
  v23 = v11;
  v21[0] = v15;
  v21[1] = v8;
  v20[2] = WitnessTable;
  v20[3] = v17;
  static ViewBuilder.buildBlock<each A>(_:)(v22, 2uLL, v21);
  v18(v14, v8);
  return (v18)(v11, v8);
}

uint64_t TabSectionActions.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v3 = *(a1 + 16);
  type metadata accessor for StyleContextWriter<SidebarSectionActionStyleContext>(255, &lazy cache variable for type metadata for StyleContextWriter<SidebarSectionActionStyleContext>, lazy protocol witness table accessor for type SidebarSectionActionStyleContext and conformance SidebarSectionActionStyleContext, &type metadata for SidebarSectionActionStyleContext, MEMORY[0x1E697F4C8]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for StyleContextWriter<SidebarSectionActionStyleContext>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<DropDestinationUsesTraitKeyInput>, lazy protocol witness table accessor for type DropDestinationUsesTraitKeyInput and conformance DropDestinationUsesTraitKeyInput, &type metadata for DropDestinationUsesTraitKeyInput, MEMORY[0x1E697FD28]);
  type metadata accessor for ModifiedContent();
  v4 = type metadata accessor for _VariadicView.Tree();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v20 - v9;
  v11 = *(a1 + 24);
  v20[4] = v3;
  v20[5] = v11;
  v20[6] = v20[0];
  _VariadicView.Tree.init(_:content:)();
  v12 = lazy protocol witness table accessor for type ActionPreparer and conformance ActionPreparer();
  v13 = lazy protocol witness table accessor for type StyleContextWriter<SidebarSectionActionStyleContext> and conformance StyleContextWriter<A>();
  v20[12] = v11;
  v20[13] = v13;
  WitnessTable = swift_getWitnessTable();
  v15 = lazy protocol witness table accessor for type ViewInputFlagModifier<DropDestinationUsesTraitKeyInput> and conformance ViewInputFlagModifier<A>();
  v20[10] = WitnessTable;
  v20[11] = v15;
  v16 = swift_getWitnessTable();
  v20[8] = v12;
  v20[9] = v16;
  v17 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v7, v4, v17);
  v18 = *(v5 + 8);
  v18(v7, v4);
  static ViewBuilder.buildExpression<A>(_:)(v10, v4, v17);
  return (v18)(v10, v4);
}

uint64_t closure #1 in TabSectionActions.body.getter@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  type metadata accessor for StyleContextWriter<SidebarSectionActionStyleContext>(255, &lazy cache variable for type metadata for StyleContextWriter<SidebarSectionActionStyleContext>, lazy protocol witness table accessor for type SidebarSectionActionStyleContext and conformance SidebarSectionActionStyleContext, &type metadata for SidebarSectionActionStyleContext, MEMORY[0x1E697F4C8]);
  v3 = type metadata accessor for ModifiedContent();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v20 - v5;
  type metadata accessor for StyleContextWriter<SidebarSectionActionStyleContext>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<DropDestinationUsesTraitKeyInput>, lazy protocol witness table accessor for type DropDestinationUsesTraitKeyInput and conformance DropDestinationUsesTraitKeyInput, &type metadata for DropDestinationUsesTraitKeyInput, MEMORY[0x1E697FD28]);
  v7 = type metadata accessor for ModifiedContent();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v20 - v12;
  lazy protocol witness table accessor for type SidebarSectionActionStyleContext and conformance SidebarSectionActionStyleContext();
  View.styleContext<A>(_:)();
  v14 = lazy protocol witness table accessor for type StyleContextWriter<SidebarSectionActionStyleContext> and conformance StyleContextWriter<A>();
  v20[4] = a1;
  v20[5] = v14;
  WitnessTable = swift_getWitnessTable();
  lazy protocol witness table accessor for type DropDestinationUsesTraitKeyInput and conformance DropDestinationUsesTraitKeyInput();
  View.input<A>(_:)();
  (*(v4 + 8))(v6, v3);
  v16 = lazy protocol witness table accessor for type ViewInputFlagModifier<DropDestinationUsesTraitKeyInput> and conformance ViewInputFlagModifier<A>();
  v20[2] = WitnessTable;
  v20[3] = v16;
  v17 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v10, v7, v17);
  v18 = *(v8 + 8);
  v18(v10, v7);
  static ViewBuilder.buildExpression<A>(_:)(v13, v7, v17);
  return (v18)(v13, v7);
}

unint64_t lazy protocol witness table accessor for type SidebarSectionActionStyleContext and conformance SidebarSectionActionStyleContext()
{
  result = lazy protocol witness table cache variable for type SidebarSectionActionStyleContext and conformance SidebarSectionActionStyleContext;
  if (!lazy protocol witness table cache variable for type SidebarSectionActionStyleContext and conformance SidebarSectionActionStyleContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SidebarSectionActionStyleContext and conformance SidebarSectionActionStyleContext);
  }

  return result;
}

void type metadata accessor for StyleContextWriter<SidebarSectionActionStyleContext>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ActionPreparer and conformance ActionPreparer()
{
  result = lazy protocol witness table cache variable for type ActionPreparer and conformance ActionPreparer;
  if (!lazy protocol witness table cache variable for type ActionPreparer and conformance ActionPreparer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActionPreparer and conformance ActionPreparer);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ActionPreparer and conformance ActionPreparer;
  if (!lazy protocol witness table cache variable for type ActionPreparer and conformance ActionPreparer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActionPreparer and conformance ActionPreparer);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StyleContextWriter<SidebarSectionActionStyleContext> and conformance StyleContextWriter<A>()
{
  result = lazy protocol witness table cache variable for type StyleContextWriter<SidebarSectionActionStyleContext> and conformance StyleContextWriter<A>;
  if (!lazy protocol witness table cache variable for type StyleContextWriter<SidebarSectionActionStyleContext> and conformance StyleContextWriter<A>)
  {
    type metadata accessor for StyleContextWriter<SidebarSectionActionStyleContext>(255, &lazy cache variable for type metadata for StyleContextWriter<SidebarSectionActionStyleContext>, lazy protocol witness table accessor for type SidebarSectionActionStyleContext and conformance SidebarSectionActionStyleContext, &type metadata for SidebarSectionActionStyleContext, MEMORY[0x1E697F4C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StyleContextWriter<SidebarSectionActionStyleContext> and conformance StyleContextWriter<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ViewInputFlagModifier<DropDestinationUsesTraitKeyInput> and conformance ViewInputFlagModifier<A>()
{
  result = lazy protocol witness table cache variable for type ViewInputFlagModifier<DropDestinationUsesTraitKeyInput> and conformance ViewInputFlagModifier<A>;
  if (!lazy protocol witness table cache variable for type ViewInputFlagModifier<DropDestinationUsesTraitKeyInput> and conformance ViewInputFlagModifier<A>)
  {
    type metadata accessor for StyleContextWriter<SidebarSectionActionStyleContext>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<DropDestinationUsesTraitKeyInput>, lazy protocol witness table accessor for type DropDestinationUsesTraitKeyInput and conformance DropDestinationUsesTraitKeyInput, &type metadata for DropDestinationUsesTraitKeyInput, MEMORY[0x1E697FD28]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewInputFlagModifier<DropDestinationUsesTraitKeyInput> and conformance ViewInputFlagModifier<A>);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for ActionPreparer(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ActionPreparer and conformance ActionPreparer();
  *(a1 + 8) = result;
  return result;
}

double closure #1 in ActionPreparer.body(children:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + 264);
  v8 = static HorizontalAlignment.center.getter();
  LOBYTE(v9[0]) = 1;
  outlined init with copy of _VariadicView_Children.Element(a1, v9 + 8);
  v10 = 1;
  type metadata accessor for ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>();
  lazy protocol witness table accessor for type ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>> and conformance <> ModifiedContent<A, B>();
  View.platformItemTrait<A, B, C>(for:strategy:source:)();
  outlined destroy of ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>(&v8);
  *(a2 + 240) = 0;
  ViewTraitCollection.value<A>(for:defaultValue:)();
  result = *&v8;
  v6 = v9[0];
  v7 = v9[1];
  *(a2 + 248) = v8;
  *v4 = v6;
  v4[1] = v7;
  return result;
}

uint64_t protocol witness for static _VariadicView_ViewRoot._makeView(root:inputs:body:) in conformance ActionPreparer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = lazy protocol witness table accessor for type ActionPreparer and conformance ActionPreparer();

  return MEMORY[0x1EEDDCF88](a1, a2, a3, a4, a5, v10);
}

uint64_t protocol witness for _VariadicView_ViewRoot.body(children:) in conformance ActionPreparer(uint64_t a1)
{
  outlined init with copy of _VariadicView_Children(a1, v2);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>, PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>>, TabPlatformIdentified>, _TraitWritingModifier<TabIdentifiedDropOntoTraitKey>>();
  lazy protocol witness table accessor for type _VariadicView_Children and conformance _VariadicView_Children();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>, PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>>, TabPlatformIdentified>, _TraitWritingModifier<TabIdentifiedDropOntoTraitKey>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>, PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>>, TabPlatformIdentified>, _TraitWritingModifier<TabIdentifiedDropOntoTraitKey>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>, PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>>, TabPlatformIdentified>, _TraitWritingModifier<TabIdentifiedDropOntoTraitKey>>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>, PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>>, TabPlatformIdentified> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type _TraitWritingModifier<TabIdentifiedDropOntoTraitKey> and conformance _TraitWritingModifier<A>);
  lazy protocol witness table accessor for type _VariadicView_Children.Element and conformance _VariadicView_Children.Element();
  return ForEach<>.init(_:content:)();
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>, PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>>, TabPlatformIdentified>, _TraitWritingModifier<TabIdentifiedDropOntoTraitKey>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>, PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>>, TabPlatformIdentified>, _TraitWritingModifier<TabIdentifiedDropOntoTraitKey>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>, PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>>, TabPlatformIdentified>();
    type metadata accessor for VStack<_VariadicView_Children.Element>(255, &lazy cache variable for type metadata for _TraitWritingModifier<TabIdentifiedDropOntoTraitKey>, &type metadata for TabIdentifiedDropOntoTraitKey, &protocol witness table for TabIdentifiedDropOntoTraitKey, MEMORY[0x1E697FDB8]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>, PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>>, TabPlatformIdentified>, _TraitWritingModifier<TabIdentifiedDropOntoTraitKey>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>, PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>>, TabPlatformIdentified>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>, PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>>, TabPlatformIdentified>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>, PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>, PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>>, TabPlatformIdentified>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>, PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>, PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>>)
  {
    type metadata accessor for ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>();
    type metadata accessor for PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>, PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>>);
    }
  }
}

void type metadata accessor for ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>)
  {
    type metadata accessor for VStack<_VariadicView_Children.Element>(255, &lazy cache variable for type metadata for VStack<_VariadicView_Children.Element>, MEMORY[0x1E697FFB8], MEMORY[0x1E697FFB0], MEMORY[0x1E6981860]);
    type metadata accessor for VStack<_VariadicView_Children.Element>(255, &lazy cache variable for type metadata for _TraitWritingModifier<IsAuxiliaryContentTraitKey>, MEMORY[0x1E6980698], MEMORY[0x1E6980690], MEMORY[0x1E697FDB8]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>);
    }
  }
}

void type metadata accessor for PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>()
{
  if (!lazy cache variable for type metadata for PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>)
  {
    v0 = type metadata accessor for PlatformItemTraitWriter();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>);
    }
  }
}

void type metadata accessor for VStack<_VariadicView_Children.Element>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>, PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>>, TabPlatformIdentified>, _TraitWritingModifier<TabIdentifiedDropOntoTraitKey>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
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

unint64_t lazy protocol witness table accessor for type VStack<_VariadicView_Children.Element> and conformance VStack<A>()
{
  result = lazy protocol witness table cache variable for type VStack<_VariadicView_Children.Element> and conformance VStack<A>;
  if (!lazy protocol witness table cache variable for type VStack<_VariadicView_Children.Element> and conformance VStack<A>)
  {
    type metadata accessor for VStack<_VariadicView_Children.Element>(255, &lazy cache variable for type metadata for VStack<_VariadicView_Children.Element>, MEMORY[0x1E697FFB8], MEMORY[0x1E697FFB0], MEMORY[0x1E6981860]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VStack<_VariadicView_Children.Element> and conformance VStack<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey> and conformance PlatformItemTraitWriter<A, B, C>()
{
  result = lazy protocol witness table cache variable for type PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey> and conformance PlatformItemTraitWriter<A, B, C>;
  if (!lazy protocol witness table cache variable for type PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey> and conformance PlatformItemTraitWriter<A, B, C>)
  {
    type metadata accessor for PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey> and conformance PlatformItemTraitWriter<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TabPlatformIdentified and conformance TabPlatformIdentified()
{
  result = lazy protocol witness table cache variable for type TabPlatformIdentified and conformance TabPlatformIdentified;
  if (!lazy protocol witness table cache variable for type TabPlatformIdentified and conformance TabPlatformIdentified)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TabPlatformIdentified and conformance TabPlatformIdentified);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _TraitWritingModifier<TabIdentifiedDropOntoTraitKey> and conformance _TraitWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _TraitWritingModifier<TabIdentifiedDropOntoTraitKey> and conformance _TraitWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _TraitWritingModifier<TabIdentifiedDropOntoTraitKey> and conformance _TraitWritingModifier<A>)
  {
    type metadata accessor for VStack<_VariadicView_Children.Element>(255, &lazy cache variable for type metadata for _TraitWritingModifier<TabIdentifiedDropOntoTraitKey>, &type metadata for TabIdentifiedDropOntoTraitKey, &protocol witness table for TabIdentifiedDropOntoTraitKey, MEMORY[0x1E697FDB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _TraitWritingModifier<TabIdentifiedDropOntoTraitKey> and conformance _TraitWritingModifier<A>);
  }

  return result;
}

uint64_t outlined destroy of ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>(uint64_t a1)
{
  type metadata accessor for ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ForEach<_VariadicView_Children, AnyHashable, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>, PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>>, TabPlatformIdentified>, _TraitWritingModifier<TabIdentifiedDropOntoTraitKey>>> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<_VariadicView_Children, AnyHashable, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>, PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>>, TabPlatformIdentified>, _TraitWritingModifier<TabIdentifiedDropOntoTraitKey>>> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<_VariadicView_Children, AnyHashable, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>, PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>>, TabPlatformIdentified>, _TraitWritingModifier<TabIdentifiedDropOntoTraitKey>>> and conformance <> ForEach<A, B, C>)
  {
    type metadata accessor for ForEach<_VariadicView_Children, AnyHashable, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>, PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>>, TabPlatformIdentified>, _TraitWritingModifier<TabIdentifiedDropOntoTraitKey>>>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>, PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>>, TabPlatformIdentified>, _TraitWritingModifier<TabIdentifiedDropOntoTraitKey>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>, PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>>, TabPlatformIdentified>, _TraitWritingModifier<TabIdentifiedDropOntoTraitKey>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>, PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>>, TabPlatformIdentified>, _TraitWritingModifier<TabIdentifiedDropOntoTraitKey>>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>, PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>>, TabPlatformIdentified> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type _TraitWritingModifier<TabIdentifiedDropOntoTraitKey> and conformance _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<_VariadicView_Children, AnyHashable, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>, PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>>, TabPlatformIdentified>, _TraitWritingModifier<TabIdentifiedDropOntoTraitKey>>> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

void type metadata accessor for ForEach<_VariadicView_Children, AnyHashable, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>, PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>>, TabPlatformIdentified>, _TraitWritingModifier<TabIdentifiedDropOntoTraitKey>>>()
{
  if (!lazy cache variable for type metadata for ForEach<_VariadicView_Children, AnyHashable, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>, PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>>, TabPlatformIdentified>, _TraitWritingModifier<TabIdentifiedDropOntoTraitKey>>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>, PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>>, TabPlatformIdentified>, _TraitWritingModifier<TabIdentifiedDropOntoTraitKey>>();
    lazy protocol witness table accessor for type _VariadicView_Children and conformance _VariadicView_Children();
    v0 = type metadata accessor for ForEach();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ForEach<_VariadicView_Children, AnyHashable, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_VariadicView_Children.Element>, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>, PlatformItemTraitWriter<ButtonPlatformItemsStrategy, _VariadicView_Children.Element, TabItem.TraitKey>>, TabPlatformIdentified>, _TraitWritingModifier<TabIdentifiedDropOntoTraitKey>>>);
    }
  }
}

uint64_t getEnumTagSinglePayload for VersionSeedTracker(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for VersionSeedTracker(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

BOOL specialized VersionSeedTracker.didChange(_:action:)(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  PreferenceValues.subscript.getter();
  v8 = v12 == -1 || *a2 != v12;
  v9 = *a2 == -1 || v8;
  if (*a2 == -1 || v8)
  {
    *a2 = v12;
    *(a3 + direct field offset for ToolbarBridge.navigationAdaptor) = v11;
    swift_bridgeObjectRetain_n();

    *(a4 + 10) = 1;
  }

  return v9;
}

double FocusBridge.updatedFocusItem(_:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  outlined init with copy of FocusItem?(a1, v6);
  if (v7)
  {
    v3 = 0;
  }

  else
  {
    v3 = v8 == 1;
  }

  if (v3)
  {
    outlined destroy of FocusItem?(v6);
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
    a2[2] = 0u;
    a2[3] = xmmword_18CD6A6D0;
  }

  else
  {
    outlined init with take of FocusItem(v6, v10);
    outlined init with copy of FocusItem(v10, v6);
    DisplayList.Version.init(forUpdate:)();
    outlined destroy of FocusItem(v10);
    v9 = v5;
    outlined init with take of FocusItem(v6, a2);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FocusBridge.Flags and conformance FocusBridge.Flags()
{
  result = lazy protocol witness table cache variable for type FocusBridge.Flags and conformance FocusBridge.Flags;
  if (!lazy protocol witness table cache variable for type FocusBridge.Flags and conformance FocusBridge.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FocusBridge.Flags and conformance FocusBridge.Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FocusBridge.Flags and conformance FocusBridge.Flags;
  if (!lazy protocol witness table cache variable for type FocusBridge.Flags and conformance FocusBridge.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FocusBridge.Flags and conformance FocusBridge.Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FocusBridge.Flags and conformance FocusBridge.Flags;
  if (!lazy protocol witness table cache variable for type FocusBridge.Flags and conformance FocusBridge.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FocusBridge.Flags and conformance FocusBridge.Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FocusBridge.Flags and conformance FocusBridge.Flags;
  if (!lazy protocol witness table cache variable for type FocusBridge.Flags and conformance FocusBridge.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FocusBridge.Flags and conformance FocusBridge.Flags);
  }

  return result;
}

void FocusBridge.resetFocus(in:)(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = FocusBridge.host.getter();
  if (!v6)
  {
    return;
  }

  v7 = v6;
  FocusBridge.focusedItem.getter(&v17);
  if (v21)
  {
    v8 = 0;
  }

  else
  {
    v8 = v22 == 1;
  }

  if (v8)
  {

    outlined destroy of FocusItem?(&v17);
    return;
  }

  Strong = swift_weakLoadStrong();
  outlined destroy of FocusItem?(&v17);
  if (!Strong)
  {

    return;
  }

  ResponderNode.sequence.getter();
  v10 = v19;
  v15 = v17;
  v16 = v18;
  if (v20)
  {

    goto LABEL_25;
  }

  v19(&v17, &v15);
  if (!v17)
  {
LABEL_24:

    goto LABEL_25;
  }

  type metadata accessor for FocusNamespaceViewResponder(0);
  while (1)
  {
    v11 = swift_dynamicCastClass();
    if (!v11)
    {
      goto LABEL_14;
    }

    v12 = v11;
    if (AGSubgraphIsValid())
    {
      AGGraphClearUpdate();
      static Update.ensure<A>(_:)();
      AGGraphSetUpdate();
    }

    if ((*(v12 + 224) & 1) == 0)
    {
      break;
    }

    if (a2)
    {
      goto LABEL_21;
    }

LABEL_14:

    v10(&v17, &v15);
    if (!v17)
    {
      goto LABEL_24;
    }
  }

  if ((a2 & 1) != 0 || *(v12 + 216) != a1)
  {
    goto LABEL_14;
  }

LABEL_21:
  *(v3 + 168) = a1;
  *(v3 + 176) = a2 & 1;
  v13 = FocusBridge.host.getter();
  if (v13)
  {
    v14 = v13;
    [v13 setNeedsFocusUpdate];
  }

LABEL_25:
}

unint64_t type metadata accessor for UIFocusItem()
{
  result = lazy cache variable for type metadata for UIFocusItem;
  if (!lazy cache variable for type metadata for UIFocusItem)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIFocusItem);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<FocusBridgeKey> and conformance EnvironmentPropertyKey<A>(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_1(255, a2, a3, a4, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t WidgetHost.__allocating_init(content:)(uint64_t a1)
{
  v2 = v1;
  swift_allocObject();
  v4 = specialized WidgetHost.init(content:)();
  (*(*(*(v2 + 80) - 8) + 8))(a1);
  return v4;
}

uint64_t WidgetHost.init(content:)(uint64_t a1)
{
  v3 = *v1;
  v4 = specialized WidgetHost.init(content:)();
  (*(*(*(v3 + 80) - 8) + 8))(a1);
  return v4;
}

uint64_t WidgetHost.readPreference<A>(_:)()
{
  return WidgetHost.readPreference<A>(_:)();
}

{
  mainThreadPrecondition()();
  swift_getAssociatedTypeWitness();
  return static Update.ensure<A>(_:)();
}

uint64_t WidgetHost.setEnvironment(_:)()
{
  return WidgetHost.setEnvironment(_:)();
}

{
  mainThreadPrecondition()();
  return static Update.ensure<A>(_:)();
}

uint64_t WidgetHost.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t WidgetBundleHost.__allocating_init<A>(bundle:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = specialized WidgetBundleHost.init<A>(bundle:)();
  (*(*(a2 - 8) + 8))(a1, a2);
  return v4;
}

uint64_t WidgetBundleHost.init<A>(bundle:)(uint64_t a1, uint64_t a2)
{
  v4 = specialized WidgetBundleHost.init<A>(bundle:)();
  (*(*(a2 - 8) + 8))(a1, a2);
  return v4;
}

void closure #1 in WidgetHost.setEnvironment(_:)()
{
  GraphHost.setEnvironment(_:)();
  GraphHost.setNeedsUpdate(mayDeferUpdate:values:)();
  GraphHost.runTransaction()();
}

uint64_t specialized WidgetHost.init(content:)()
{
  type metadata accessor for WidgetGraph();
  static Update.ensure<A>(_:)();
  *(v0 + 16) = v2;
  return v0;
}

uint64_t specialized WidgetBundleHost.init<A>(bundle:)()
{
  type metadata accessor for WidgetGraph();
  static Update.ensure<A>(_:)();
  *(v0 + 16) = v2;
  return v0;
}

uint64_t partial apply for closure #1 in WidgetBundleHost.init<A>(bundle:)@<X0>(uint64_t (*a1)(uint64_t, uint64_t, uint64_t)@<X0>, uint64_t *a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  type metadata accessor for WidgetGraph();
  result = a1(v7, v5, v6);
  *a2 = result;
  return result;
}

void specialized SheetBridge.present(_:from:animated:existingPresentedVC:isPreempting:)(uint64_t a1, void *a2, int a3, uint64_t a4, int a5)
{
  v6 = v5;
  v42 = a5;
  v43 = a3;
  v41 = type metadata accessor for UITraitOverrides();
  MEMORY[0x1EEE9AC00](v41);
  v40[1] = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1E69E7D40];
  if (a4)
  {
    v12 = *a1;
    v13 = *(a4 + direct field offset for UIHostingController.host);
    v14 = *((*MEMORY[0x1E69E7D40] & *v13) + 0x60);
    swift_beginAccess();
    *(v13 + v14) = v12;

    v15 = v13;

    _s7SwiftUI29PresentationHostingControllerCyAA7AnyViewVGMaTm_0(0, &lazy cache variable for type metadata for _UIHostingView<AnyView>, type metadata accessor for _UIHostingView);
    lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>();
    ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
  }

  v16 = [objc_opt_self() defaultCenter];
  if (one-time initialization token for willPresent != -1)
  {
    swift_once();
  }

  [v16 postNotificationName:static SheetPopoverBridgeNotifications.willPresent object:0];

  MEMORY[0x1EEE9AC00](v17);
  v40[-4] = a4;
  v40[-3] = a1;
  v40[-2] = v6;
  _s7SwiftUI29PresentationHostingControllerCyAA7AnyViewVGMaTm_0(0, &lazy cache variable for type metadata for PresentationHostingController<AnyView>, type metadata accessor for PresentationHostingController);
  static Update.ensure<A>(_:)();
  v18 = v44;
  v19 = direct field offset for UIHostingController.host;
  *(*&v44[direct field offset for UIHostingController.host] + *((*v11 & **&v44[direct field offset for UIHostingController.host]) + 0x1C0) + 8) = &protocol witness table for SheetBridge<A>;
  swift_unknownObjectWeakAssign();
  v20 = *&v18[v19];
  v21 = *(a1 + 96);
  v44 = *(a1 + 88);
  v45 = v21;

  v22 = v20;

  UIHostingViewBase.environmentOverride.setter();

  specialized PresentationHostingController.setupDelayIfNeeded()();
  specialized PresentationHostingController.setupSheet(for:presenter:placement:)(0, a2, *(a1 + 72));
  v23 = *(v6 + direct field offset for SheetBridge.lastEnvironment + 8);
  v44 = *(v6 + direct field offset for SheetBridge.lastEnvironment);
  v45 = v23;

  EnvironmentValues.explicitPreferredColorScheme.getter();

  if (LOBYTE(v46[0]) != 2)
  {
    v24 = *&v18[v19];
    v25 = *((*v11 & *v24) + 0xF8);
    v26 = *(v24 + v25);
    *(v24 + v25) = v46[0];
    v27 = v24;
    specialized _UIHostingView.didChangeColorScheme(from:)(v26);

    v28 = [v18 presentationController];
    if (v28)
    {
      v29 = v28;
      objc_opt_self();
      v30 = swift_dynamicCastObjCClass();
      if (v30)
      {
        v31 = v30;
LABEL_12:
        UIPresentationController.traitOverrides.getter();
        UIMutableTraits.userInterfaceStyle.setter();
        UIPresentationController.traitOverrides.setter();

        goto LABEL_13;
      }
    }

    v32 = [v18 popoverPresentationController];
    if (!v32)
    {
      goto LABEL_13;
    }

    v33 = v32;
    v31 = [v32 adaptiveSheetPresentationController];

    if (!v31)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_13:
  v34 = v42;
  v46[0] = *(v6 + direct field offset for SheetBridge.seed);
  if (v42)
  {
    swift_beginAccess();
    PresentationState.presentPreemptingDismissal(_:presentedVC:presentationSeed:)(a1, v18, v46);
  }

  else
  {
    swift_beginAccess();
    PresentationState.present(_:presentedVC:presentationSeed:)(a1, v18, v46);
  }

  swift_endAccess();
  LOBYTE(v44) = 17;
  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v36 = *(v6 + direct field offset for SheetBridge.seed);
  v37 = swift_allocObject();
  *(v37 + 16) = v35;
  *(v37 + 24) = v34 & 1;
  *(v37 + 32) = a2;
  *(v37 + 40) = v43 & 1;
  *(v37 + 44) = v36;
  *(v37 + 48) = v18;

  v38 = a2;
  v39 = v18;
  static Update.enqueueAction(reason:_:)();
}

char *specialized closure #1 in SheetBridge.present(_:from:animated:existingPresentedVC:isPreempting:)(char *a1, uint64_t a2, void *a3)
{
  return specialized closure #1 in SheetBridge.present(_:from:animated:existingPresentedVC:isPreempting:)(a1, a2, a3);
}

{
  if (a1)
  {
    v4 = a1;
  }

  else
  {
    v6 = *a2;
    v7 = *(a2 + 73);
    v8 = *(a2 + 72);
    _s7SwiftUI29PresentationHostingControllerCyAA7AnyViewVGMaTm_0(0, &lazy cache variable for type metadata for PresentationHostingController<AnyView>, type metadata accessor for PresentationHostingController);
    objc_allocWithZone(v9);

    v10 = a3;
    v4 = specialized PresentationHostingController.init(rootView:delegate:placement:legacyDrawsBackground:)(v6, a3, &protocol witness table for SheetBridge<A>, v8, v7);
    v11 = *&v4[direct field offset for UIHostingController.host];
    UIHostingViewBase.viewGraph.getter();

    GraphHost.addPreference<A>(_:)();
  }

  v12 = a1;
  return v4;
}

void specialized closure #3 in SheetBridge.present(_:from:animated:existingPresentedVC:isPreempting:)(uint64_t a1, char a2, void *a3, char a4, int a5, void *a6)
{
  swift_getObjectType();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = direct field offset for SheetBridge.presentationState;
    swift_beginAccess();
    outlined init with copy of PresentationState(v12 + v13, &aBlock);
    v37 = v51;
    *v38 = v52[0];
    *&v38[11] = *(v52 + 11);
    v33 = v47;
    v34 = v48;
    v35 = v49;
    v36 = v50;
    v31[4] = v43;
    v31[5] = v44;
    v31[6] = v45;
    v32 = v46;
    v31[0] = aBlock;
    v31[1] = v40;
    v31[2] = v41;
    v31[3] = v42;
    if (BYTE10(v52[1]) > 1u)
    {

      outlined destroy of PresentationState.Base(v31);
      return;
    }

    outlined destroy of SheetPreference(v31);
    if ((a2 & 1) == 0)
    {
      v14 = [a3 presentedViewController];
      if (v14)
      {
        v15 = v14;
        if (([v14 isBeingDismissed] & 1) == 0)
        {
          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {
            v16 = [v15 preferredTransition];
            if (v16)
            {

              v17 = swift_dynamicCastClass();
              if (v17)
              {
                v18 = v17;
                v19 = swift_unknownObjectWeakLoadStrong();
                if (v19)
                {
                  v20 = v19;
                  v30 = v15;
                  v21 = [v20 window];
                  if (v21)
                  {
                    v22 = v21;

                    v20 = v22;
                  }

                  else
                  {
                    [v18 setPreferredTransition_];
                  }
                }
              }
            }

            [a3 dismissViewControllerAnimated:a4 & 1 completion:0];
          }
        }
      }
    }

    outlined init with copy of PresentationState(v12 + v13, &aBlock);
    PresentationState.Base.presentationSeed.getter(v31);
    outlined destroy of PresentationState(&aBlock);
    if ((BYTE4(v31[0]) & 1) != 0 || LODWORD(v31[0]) == -1 || a5 == -1 || LODWORD(v31[0]) != a5)
    {
      goto LABEL_23;
    }

    if (a4)
    {
      [a3 presentViewController:a6 animated:1 completion:0];
LABEL_23:

      return;
    }

    v23 = objc_opt_self();
    v24 = swift_allocObject();
    *(v24 + 16) = a3;
    *(v24 + 24) = a6;
    v25 = swift_allocObject();
    *(v25 + 16) = _s7SwiftUI11SheetBridgeC7present33_9124433AF4D3FE5B3E95880733BE7575LL_4from8animated19existingPresentedVC12isPreemptingyAA0C10PreferenceV_So16UIViewControllerCSbAA019PresentationHostingU0CyAA7AnyViewVGSgSbtFyycfU1_yyXEfU_TA_0;
    *(v25 + 24) = v24;
    *&v41 = partial apply for thunk for @callee_guaranteed () -> ();
    *(&v41 + 1) = v25;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v40 = thunk for @escaping @callee_guaranteed () -> ();
    *(&v40 + 1) = &block_descriptor_23;
    v26 = _Block_copy(&aBlock);
    v27 = a3;
    v28 = a6;

    [v23 _performWithoutDeferringTransitions_];

    _Block_release(v26);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

{
  swift_getObjectType();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = direct field offset for SheetBridge.presentationState;
    swift_beginAccess();
    outlined init with copy of PresentationState(v12 + v13, &aBlock);
    v37 = v51;
    *v38 = v52[0];
    *&v38[11] = *(v52 + 11);
    v33 = v47;
    v34 = v48;
    v35 = v49;
    v36 = v50;
    v31[4] = v43;
    v31[5] = v44;
    v31[6] = v45;
    v32 = v46;
    v31[0] = aBlock;
    v31[1] = v40;
    v31[2] = v41;
    v31[3] = v42;
    if (BYTE10(v52[1]) >= 2u)
    {

      outlined destroy of PresentationState.Base(v31);
      return;
    }

    outlined destroy of SheetPreference(v31);
    if ((a2 & 1) == 0)
    {
      v14 = [a3 presentedViewController];
      if (v14)
      {
        v15 = v14;
        if (![v14 isBeingDismissed])
        {
          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {
            v16 = [v15 preferredTransition];
            if (v16)
            {

              v17 = swift_dynamicCastClass();
              if (v17)
              {
                v18 = v17;
                v19 = swift_unknownObjectWeakLoadStrong();
                if (v19)
                {
                  v20 = v19;
                  v30 = v15;
                  v21 = [v20 window];
                  if (v21)
                  {
                    v22 = v21;

                    v20 = v22;
                  }

                  else
                  {
                    [v18 setPreferredTransition_];
                  }
                }
              }
            }

            [a3 dismissViewControllerAnimated:a4 & 1 completion:0];
          }
        }
      }
    }

    outlined init with copy of PresentationState(v12 + v13, &aBlock);
    PresentationState.Base.presentationSeed.getter(v31);
    outlined destroy of PresentationState(&aBlock);
    if ((BYTE4(v31[0]) & 1) != 0 || LODWORD(v31[0]) == -1 || a5 == -1 || LODWORD(v31[0]) != a5)
    {
      goto LABEL_23;
    }

    if (a4)
    {
      [a3 presentViewController:a6 animated:1 completion:0];
LABEL_23:

      return;
    }

    v23 = objc_opt_self();
    v24 = swift_allocObject();
    *(v24 + 16) = a3;
    *(v24 + 24) = a6;
    v25 = swift_allocObject();
    *(v25 + 16) = closure #1 in closure #3 in SheetBridge.present(_:from:animated:existingPresentedVC:isPreempting:)partial apply;
    *(v25 + 24) = v24;
    *&v41 = closure #1 in PlatformViewCoordinator.dispatchUpdate(reason:_:)partial apply;
    *(&v41 + 1) = v25;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v40 = thunk for @escaping @callee_guaranteed () -> ();
    *(&v40 + 1) = &block_descriptor_32_0;
    v26 = _Block_copy(&aBlock);
    v27 = a3;
    v28 = a6;

    [v23 _performWithoutDeferringTransitions_];

    _Block_release(v26);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void specialized SheetBridge.update(presentation:in:transaction:)(uint64_t *a1, char *a2)
{
  v4 = type metadata accessor for UITraitOverrides();
  MEMORY[0x1EEE9AC00](v4);
  v5 = *a1;
  v6 = direct field offset for UIHostingController.host;
  v7 = *&a2[direct field offset for UIHostingController.host];
  specialized _UIHostingView.setRootView(_:transaction:)(v5);

  v8 = *&a2[v6];
  v9 = MEMORY[0x1E69E7D40];

  v10 = v8;

  UIHostingViewBase.environmentOverride.setter();

  if (*(*&a2[v6] + *((*v9 & **&a2[v6]) + 0xF8)) == 2)
  {

    EnvironmentValues.explicitPreferredColorScheme.getter();

    if (v21 != 2)
    {
      v11 = *&a2[v6];
      v12 = *((*v9 & *v11) + 0xF8);
      v13 = *(v11 + v12);
      *(v11 + v12) = v21;
      v14 = v11;
      specialized _UIHostingView.didChangeColorScheme(from:)(v13);

      v15 = [a2 presentationController];
      if (v15)
      {
        v16 = v15;
        objc_opt_self();
        v17 = swift_dynamicCastObjCClass();
        if (v17)
        {
          v18 = v17;
LABEL_9:
          UIPresentationController.traitOverrides.getter();
          UIMutableTraits.userInterfaceStyle.setter();
          UIPresentationController.traitOverrides.setter();

          goto LABEL_10;
        }
      }

      v19 = [a2 popoverPresentationController];
      if (v19)
      {
        v20 = v19;
        v18 = [v19 adaptiveSheetPresentationController];

        if (v18)
        {
          goto LABEL_9;
        }
      }
    }
  }

LABEL_10:
  specialized PresentationHostingController.updateFullScreenInteractiveDismissIfNeeded(disabled:)(a2[direct field offset for PresentationHostingController.lastInteractiveDismissDisabled]);
}

void specialized SheetBridge.contingentlyPresent(_:from:animated:)(uint64_t a1, void *a2, int a3)
{
  v4 = v3;
  v8 = type metadata accessor for UITraitOverrides();
  MEMORY[0x1EEE9AC00](v8);
  v9 = direct field offset for SheetBridge.presentationState;
  swift_beginAccess();
  outlined init with copy of PresentationState(v3 + v9, v63);
  v10 = PresentationState.isDismissingFromSheetBridge.getter();
  outlined destroy of PresentationState(v63);
  if (v10)
  {
    outlined init with copy of PresentationState(v4 + v9, v63);
    v11 = PresentationState.isDismissalPreemptable.getter();
    outlined destroy of PresentationState(v63);
    if ((v11 & 1) == 0 || ![a2 _willPreemptRunningPresentationTransition])
    {
      swift_beginAccess();
      PresentationState.enqueueDelayedPresentation_IsDismissing(_:animated:)(a1, a3 & 1);
      swift_endAccess();
      return;
    }

    outlined init with copy of PresentationState(v4 + v9, v63);
    v12 = PresentationState.Base.presentedVC.getter();
    outlined destroy of PresentationState(v63);
    if (v12)
    {
      v12[direct field offset for PresentationHostingController.wasPreempted] = 1;
    }

    v50 = v8;
    v54 = a2;
    v53 = a3;
    v13 = [objc_opt_self() defaultCenter];
    if (one-time initialization token for willPresent != -1)
    {
      swift_once();
    }

    [v13 postNotificationName:static SheetPopoverBridgeNotifications.willPresent object:0];

    MEMORY[0x1EEE9AC00](v14);
    *(&v50 - 4) = 0;
    *(&v50 - 3) = a1;
    *(&v50 - 2) = v4;
    _s7SwiftUI29PresentationHostingControllerCyAA7AnyViewVGMaTm_0(0, &lazy cache variable for type metadata for PresentationHostingController<AnyView>, type metadata accessor for PresentationHostingController);
    static Update.ensure<A>(_:)();
    v15 = *&v63[0];
    v16 = direct field offset for UIHostingController.host;
    *(*(*&v63[0] + direct field offset for UIHostingController.host) + *((*MEMORY[0x1E69E7D40] & **(*&v63[0] + direct field offset for UIHostingController.host)) + 0x1C0) + 8) = &protocol witness table for SheetBridge<A>;
    swift_unknownObjectWeakAssign();
    v51 = v16;
    v17 = *&v15[v16];
    v18 = *(a1 + 96);
    *&v63[0] = *(a1 + 88);
    *(&v63[0] + 1) = v18;

    v19 = v17;

    UIHostingViewBase.environmentOverride.setter();

    specialized PresentationHostingController.setupDelayIfNeeded()();
    v52 = a1;
    specialized PresentationHostingController.setupSheet(for:presenter:placement:)(0, v54, *(a1 + 72));
    v20 = *(v4 + direct field offset for SheetBridge.lastEnvironment + 8);
    *&v63[0] = *(v4 + direct field offset for SheetBridge.lastEnvironment);
    *(&v63[0] + 1) = v20;

    EnvironmentValues.explicitPreferredColorScheme.getter();

    if (LOBYTE(v55[0]) == 2)
    {
      goto LABEL_37;
    }

    v21 = *&v15[v51];
    v22 = *((*MEMORY[0x1E69E7D40] & *v21) + 0xF8);
    v23 = *(v21 + v22);
    *(v21 + v22) = v55[0];
    v24 = v21;
    specialized _UIHostingView.didChangeColorScheme(from:)(v23);

    v25 = [v15 presentationController];
    if (v25)
    {
      v26 = v25;
      objc_opt_self();
      v27 = swift_dynamicCastObjCClass();
      if (v27)
      {
        v28 = v27;
LABEL_36:
        UIPresentationController.traitOverrides.getter();
        UIMutableTraits.userInterfaceStyle.setter();
        UIPresentationController.traitOverrides.setter();

LABEL_37:
        v45 = direct field offset for SheetBridge.seed;
        LODWORD(v55[0]) = *(v4 + direct field offset for SheetBridge.seed);
        swift_beginAccess();
        PresentationState.presentPreemptingDismissal(_:presentedVC:presentationSeed:)(v52, v15, v55);
        swift_endAccess();
        LOBYTE(v63[0]) = 17;
        v46 = swift_allocObject();
        swift_unknownObjectWeakInit();
        LODWORD(v45) = *(v4 + v45);
        v47 = swift_allocObject();
        *(v47 + 16) = v46;
        *(v47 + 24) = 1;
        v48 = v54;
        *(v47 + 32) = v54;
        *(v47 + 40) = v53 & 1;
        *(v47 + 44) = v45;
        *(v47 + 48) = v15;

        v49 = v48;
        v30 = v15;
        static Update.enqueueAction(reason:_:)();

        goto LABEL_38;
      }
    }

    v43 = [v15 popoverPresentationController];
    if (!v43)
    {
      goto LABEL_37;
    }

    v44 = v43;
    v28 = [v43 adaptiveSheetPresentationController];

    if (!v28)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  outlined init with copy of PresentationState(v4 + v9, v63);
  v61 = v70;
  v62[0] = v71[0];
  *(v62 + 11) = *(v71 + 11);
  v57 = v66;
  v58 = v67;
  v59 = v68;
  v60 = v69;
  v55[4] = v63[4];
  v55[5] = v63[5];
  v55[6] = v64;
  v56 = v65;
  v55[0] = v63[0];
  v55[1] = v63[1];
  v55[2] = v63[2];
  v55[3] = v63[3];
  if (BYTE10(v71[1]) == 9)
  {

    outlined destroy of SheetPreference(v55);
    outlined init with copy of PresentationState(v4 + v9, v63);
    v29 = PresentationState.Base.presentedVC.getter();
    outlined destroy of PresentationState(v63);
    if (v29)
    {
      swift_beginAccess();
      outlined init with copy of SheetPreference(a1, v63);
      *&v65 = v29;
      BYTE8(v65) = a3 & 1;
      BYTE10(v71[1]) = 9;
      v30 = v29;
      PresentationState.base.willset(v63);
      outlined assign with take of PresentationState.Base(v63, v4 + v9);
      swift_endAccess();
LABEL_38:

      return;
    }
  }

  else
  {
    outlined destroy of PresentationState.Base(v55);
  }

  v31 = [a2 presentedViewController];
  if (v31)
  {
    v32 = v31;
    if ([v31 isBeingDismissed])
    {
      _s7SwiftUI29PresentationHostingControllerCyAA7AnyViewVGMaTm_0(0, &lazy cache variable for type metadata for PresentationHostingController<AnyView>, type metadata accessor for PresentationHostingController);
      v33 = swift_dynamicCastClass();
      if (v33)
      {
        v34 = v33;
        swift_beginAccess();
        outlined init with copy of SheetPreference(a1, v63);
        *&v65 = v34;
        BYTE8(v65) = a3 & 1;
        BYTE10(v71[1]) = 9;
        v35 = v32;
        PresentationState.base.willset(v63);
        outlined assign with take of PresentationState.Base(v63, v4 + v9);
        swift_endAccess();
        *(v34 + direct field offset for PresentationHostingController.secondaryDismissDelegate + 8) = &protocol witness table for SheetBridge<A>;
        swift_unknownObjectWeakAssign();

        return;
      }
    }
  }

  if (*(v4 + direct field offset for SheetBridge.clientNeedsOutOfWindowPresentationSuppression) != 1)
  {
LABEL_29:
    outlined init with copy of PresentationState(v4 + v9, v63);
    v30 = PresentationState.Base.presentedVC.getter();
    outlined destroy of PresentationState(v63);
    specialized SheetBridge.present(_:from:animated:existingPresentedVC:isPreempting:)(a1, a2, a3 & 1, v30, 0);
    goto LABEL_38;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    goto LABEL_26;
  }

  v37 = v4 + direct field offset for SheetBridge.host;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_40;
  }

  v38 = *(v37 + 8);
  ObjectType = swift_getObjectType();
  Strong = ViewGraphDelegate.uiPresenterViewController.getter(ObjectType, *(*(v38 + 16) + 8));
  swift_unknownObjectRelease();
  if (Strong)
  {
LABEL_26:
    v40 = [Strong view];

    if (v40)
    {
      v41 = [v40 window];

      if (v41)
      {

        goto LABEL_29;
      }

      goto LABEL_30;
    }

    __break(1u);
LABEL_40:
    __break(1u);
    return;
  }

LABEL_30:
  v42 = swift_unknownObjectWeakLoadStrong();
  if (v42)
  {

    MEMORY[0x18D009810](0xD0000000000000A0, 0x800000018CD43B20);
  }

  else
  {
    swift_beginAccess();
    outlined init with copy of SheetPreference(a1, v63);
    BYTE10(v64) = a3 & 1;
    BYTE10(v71[1]) = 10;
    PresentationState.base.willset(v63);
    outlined assign with take of PresentationState.Base(v63, v4 + v9);
    swift_endAccess();
  }
}

void UIKitInspectorBridgeV5.update(presentation:in:transaction:)(uint64_t a1, char *a2)
{
  v2 = *(a1 + 104);
  if (v2 != 2 && (v2 & 1) == 0)
  {
    v3 = a1;
    v4 = a2;
    swift_beginAccess();
    PresentationState.dismissInspector()();
    swift_endAccess();
    a1 = v3;
    a2 = v4;
  }

  specialized SheetBridge.update(presentation:in:transaction:)(a1, a2);
}

void UIKitInspectorBridgeV5.contingentlyPresent(_:from:animated:)(uint64_t a1, void *a2, char a3)
{
  v3 = *(a1 + 104);
  if (v3 == 2 || (v3 & 1) != 0)
  {
    specialized SheetBridge.contingentlyPresent(_:from:animated:)(a1, a2, a3 & 1);
  }
}

Swift::Void __swiftcall UIKitInspectorBridgeV5.willTransitionToRegularSizeClass()()
{
  v1 = direct field offset for SheetBridge.presentationState;
  swift_beginAccess();
  outlined init with copy of PresentationState.Base(v0 + v1, v2);
  if (v5 >= 2u)
  {
    if (v5 == 6)
    {
      outlined destroy of SheetPreference(v2);
    }

    else
    {
      outlined destroy of PresentationState.Base(v2);
    }
  }

  else
  {

    *(v11 + 10) = *&v3[10];
    v10 = v2[4];
    v11[0] = *v3;
    v8 = v2[2];
    v9 = v2[3];
    v6 = v2[0];
    v7 = v2[1];
    *&v3[10] = *(v11 + 10);
    v5 = 6;
    PresentationState.base.willset(v2);
    outlined assign with take of PresentationState.Base(v2, v0 + v1);
  }

  swift_endAccess();
}

uint64_t specialized closure #1 in PresentationHostingController.setupDelayIfNeeded()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[direct field offset for PresentationHostingController.isDelayingRemotePresentation] = 0;
  }

  return 1;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned Bool) -> (@unowned Bool)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  LOBYTE(a2) = v3(a2);

  return a2 & 1;
}

char *specialized closure #1 in SheetBridge.present(_:from:animated:existingPresentedVC:isPreempting:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char **a4@<X8>)
{
  result = specialized closure #1 in SheetBridge.present(_:from:animated:existingPresentedVC:isPreempting:)(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

char *partial apply for specialized closure #1 in SheetBridge.present(_:from:animated:existingPresentedVC:isPreempting:)@<X0>(char **a1@<X8>)
{
  return partial apply for specialized closure #1 in SheetBridge.present(_:from:animated:existingPresentedVC:isPreempting:)(a1);
}

{
  result = specialized closure #1 in SheetBridge.present(_:from:animated:existingPresentedVC:isPreempting:)(*(v1 + 16), *(v1 + 24), *(v1 + 32));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

{
  result = specialized closure #1 in SheetBridge.present(_:from:animated:existingPresentedVC:isPreempting:)(*(v1 + 16), *(v1 + 24), *(v1 + 32));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t objectdestroy_2Tm_1()
{

  return swift_deallocObject();
}

uint64_t specialized LinkShapeStyle._apply(to:)()
{

  EnvironmentValues.colorScheme.getter();

  Color.init(_:red:green:blue:opacity:)();
  Color._apply(to:)();
}

uint64_t destroy for AccessibilityTableContext(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 4)
  {
    v1 = *a1 + 4;
  }

  if (!v1)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return a1;
}

uint64_t initializeWithCopy for AccessibilityTableContext(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  if (v2 >= 4)
  {
    v2 = *a2 + 4;
  }

  if (v2 > 1)
  {
    if (v2 != 2)
    {
      if (v2 == 3)
      {
        *result = *a2;
        *(result + 40) = 3;
        return result;
      }

      goto LABEL_11;
    }

LABEL_10:
    *result = *a2;
    *(result + 40) = v2;
    return result;
  }

  if (v2)
  {
    if (v2 != 1)
    {
LABEL_11:
      v3 = *(a2 + 16);
      *result = *a2;
      *(result + 16) = v3;
      *(result + 25) = *(a2 + 25);
      return result;
    }

    goto LABEL_10;
  }

  v4 = *(a2 + 24);
  *(result + 24) = v4;
  v5 = result;
  (**(v4 - 8))();
  result = v5;
  *(v5 + 40) = 0;
  return result;
}

uint64_t assignWithCopy for AccessibilityTableContext(uint64_t result, __int128 *a2)
{
  if (result != a2)
  {
    v2 = *(result + 40);
    if (v2 >= 4)
    {
      v2 = *result + 4;
    }

    if (!v2)
    {
      v3 = result;
      v4 = a2;
      __swift_destroy_boxed_opaque_existential_1(result);
      a2 = v4;
      result = v3;
    }

    v5 = *(a2 + 40);
    if (v5 >= 4)
    {
      v5 = *a2 + 4;
    }

    if (v5 > 1)
    {
      if (v5 != 2)
      {
        if (v5 == 3)
        {
          *result = *a2;
          *(result + 40) = 3;
          return result;
        }

        goto LABEL_16;
      }

LABEL_15:
      *result = *a2;
      *(result + 40) = v5;
      return result;
    }

    if (v5)
    {
      if (v5 != 1)
      {
LABEL_16:
        v6 = *a2;
        v7 = a2[1];
        *(result + 25) = *(a2 + 25);
        *result = v6;
        *(result + 16) = v7;
        return result;
      }

      goto LABEL_15;
    }

    v8 = *(a2 + 3);
    *(result + 24) = v8;
    *(result + 32) = *(a2 + 4);
    v9 = result;
    (**(v8 - 8))();
    result = v9;
    *(v9 + 40) = 0;
  }

  return result;
}

__n128 assignWithTake for AccessibilityTableContext(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v2 = *(a1 + 40);
    if (v2 >= 4)
    {
      v2 = *a1 + 4;
    }

    if (!v2)
    {
      v3 = a1;
      v4 = a2;
      __swift_destroy_boxed_opaque_existential_1(a1);
      a2 = v4;
      a1 = v3;
    }

    v6 = *(a2 + 40);
    if (v6 >= 4)
    {
      v6 = *a2 + 4;
    }

    if (v6 > 1)
    {
      if (v6 != 2)
      {
        if (v6 == 3)
        {
          *a1 = *a2;
          *(a1 + 40) = 3;
          return result;
        }

LABEL_16:
        v7 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v7;
        result = *(a2 + 25);
        *(a1 + 25) = result;
        return result;
      }
    }

    else
    {
      if (!v6)
      {
        result = *a2;
        v8 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v8;
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = 0;
        return result;
      }

      if (v6 != 1)
      {
        goto LABEL_16;
      }
    }

    result = *a2;
    *a1 = *a2;
    *(a1 + 40) = v6;
  }

  return result;
}

uint64_t getEnumTag for AccessibilityTableContext(uint64_t a1)
{
  result = *(a1 + 40);
  if (result >= 4)
  {
    return (*a1 + 4);
  }

  return result;
}

uint64_t destructiveInjectEnumTag for AccessibilityTableContext(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t ModifiedContent<>.accessibilityTableContext(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 40) == 255)
  {

    return ModifiedContent<>.accessibility()(a2, a3);
  }

  else
  {
    result = outlined init with copy of AccessibilityTableContext?(a1, &v6, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext);
    if (v7[24] == 255)
    {
      __break(1u);
    }

    else
    {
      v8 = v6;
      v9[0] = *v7;
      *(v9 + 9) = *&v7[9];
      lazy protocol witness table accessor for type AccessibilityProperties.TableContextKey and conformance AccessibilityProperties.TableContextKey();
      ModifiedContent<>.update<A>(_:replacing:isEnabled:)(&type metadata for AccessibilityProperties.TableContextKey, &v8, 1, a2, a3);
      return _s7SwiftUI25AccessibilityTableContextOSgWOhTm_0(&v8, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext, MEMORY[0x1E69E6720]);
    }
  }

  return result;
}

uint64_t AccessibilityTableContext.resolve(into:for:)(void *a1)
{
  outlined init with copy of AccessibilityTableContext(v1, &v5);
  if (!v8)
  {
    *a1 |= 0x200000000000uLL;
    return outlined destroy of AccessibilityTableContext(&v5);
  }

  if (v8 != 4)
  {
    return outlined destroy of AccessibilityTableContext(&v5);
  }

  v3 = vorrq_s8(v6, v7);
  if (*&vorr_s8(*v3.i8, *&vextq_s8(v3, v3, 8uLL)) | v5)
  {
    return outlined destroy of AccessibilityTableContext(&v5);
  }

  result = AccessibilityNullableOptionSet<>.subscript.getter();
  if (result == 2 || (result & 1) != 0)
  {
    *a1 |= 0x10000uLL;
  }

  return result;
}

uint64_t AccessibilityCollectionViewTableDataSource.rowCount.getter()
{
  v8 = 0;
  outlined init with copy of ShadowListDataSource<TableDataSourceAdaptor>?(v0, v6);
  if (v7)
  {
    outlined init with copy of TableDataSourceAdaptor(v6, v5);
    outlined destroy of ShadowListDataSource<TableDataSourceAdaptor>(v6, type metadata accessor for ShadowListDataSource<TableDataSourceAdaptor>);
    outlined init with copy of TableRowList(v5, v4);
    v1 = outlined destroy of TableDataSourceAdaptor(v5);
    MEMORY[0x1EEE9AC00](v1);
    static Update.ensure<A>(_:)();
    outlined destroy of TableRowList(v4);
  }

  else
  {
    outlined destroy of ShadowListDataSource<TableDataSourceAdaptor>?(v6, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>?, type metadata accessor for ShadowListDataSource<TableDataSourceAdaptor>);
  }

  outlined init with copy of ShadowListDataSource<TableDataSourceAdaptor>?(v0, v6);
  if (!v7)
  {
    outlined destroy of ShadowListDataSource<TableDataSourceAdaptor>?(v6, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>?, type metadata accessor for ShadowListDataSource<TableDataSourceAdaptor>);
    return v8;
  }

  outlined init with copy of TableDataSourceAdaptor(v6, v5);
  outlined destroy of ShadowListDataSource<TableDataSourceAdaptor>(v6, type metadata accessor for ShadowListDataSource<TableDataSourceAdaptor>);
  if (v5[168])
  {
    outlined destroy of TableDataSourceAdaptor(v5);
    return v8;
  }

  v2 = v5[169];
  outlined destroy of TableDataSourceAdaptor(v5);
  if (v2 == 2)
  {
    return v8;
  }

  result = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
  }

  return result;
}

BOOL AccessibilityCollectionViewTableDataSource.hasGlobalHeader.getter()
{
  outlined init with copy of ShadowListDataSource<TableDataSourceAdaptor>?(v0, v4);
  if (!v5)
  {
    outlined destroy of ShadowListDataSource<TableDataSourceAdaptor>?(v4, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>?, type metadata accessor for ShadowListDataSource<TableDataSourceAdaptor>);
    return 0;
  }

  outlined init with copy of TableDataSourceAdaptor(v4, v3);
  outlined destroy of ShadowListDataSource<TableDataSourceAdaptor>(v4, type metadata accessor for ShadowListDataSource<TableDataSourceAdaptor>);
  if (v3[168] == 1)
  {
    outlined destroy of TableDataSourceAdaptor(v3);
    return 0;
  }

  v2 = v3[169];
  outlined destroy of TableDataSourceAdaptor(v3);
  return v2 != 2;
}

uint64_t AccessibilityCollectionViewTableDataSource.columnCount.getter()
{
  type metadata accessor for TableColumnCollection.Entry?(0, &lazy cache variable for type metadata for TableColumnCollection.Entry?, type metadata accessor for TableColumnCollection.Entry);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v16[-1] - v2;
  outlined init with copy of ShadowListDataSource<TableDataSourceAdaptor>?(v0, v24);
  if (v25)
  {
    outlined init with copy of TableDataSourceAdaptor(v24, v22);
    outlined destroy of ShadowListDataSource<TableDataSourceAdaptor>(v24, type metadata accessor for ShadowListDataSource<TableDataSourceAdaptor>);
    v4 = v23[120];
    outlined destroy of TableDataSourceAdaptor(v22);
    if (v4 == 1)
    {
      outlined init with copy of ShadowListDataSource<TableDataSourceAdaptor>?(v0, v24);
      if (v25)
      {
        outlined init with copy of TableDataSourceAdaptor(v24, v22);
        outlined destroy of ShadowListDataSource<TableDataSourceAdaptor>(v24, type metadata accessor for ShadowListDataSource<TableDataSourceAdaptor>);
        outlined init with copy of TableColumnCollection(v23, v21);
        outlined destroy of TableDataSourceAdaptor(v22);
        specialized Collection.first.getter(v3);
        outlined destroy of TableColumnCollection(v21);
        v5 = type metadata accessor for TableColumnCollection.Entry(0);
        if ((*(*(v5 - 8) + 48))(v3, 1, v5) != 1)
        {
          outlined destroy of ShadowListDataSource<TableDataSourceAdaptor>?(v3, &lazy cache variable for type metadata for TableColumnCollection.Entry?, type metadata accessor for TableColumnCollection.Entry);
          return 1;
        }
      }

      else
      {
        outlined destroy of ShadowListDataSource<TableDataSourceAdaptor>?(v24, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>?, type metadata accessor for ShadowListDataSource<TableDataSourceAdaptor>);
        v14 = type metadata accessor for TableColumnCollection.Entry(0);
        (*(*(v14 - 8) + 56))(v3, 1, 1, v14);
      }

      v8 = &lazy cache variable for type metadata for TableColumnCollection.Entry?;
      v9 = type metadata accessor for TableColumnCollection.Entry;
      v10 = v3;
      goto LABEL_15;
    }
  }

  else
  {
    outlined destroy of ShadowListDataSource<TableDataSourceAdaptor>?(v24, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>?, type metadata accessor for ShadowListDataSource<TableDataSourceAdaptor>);
  }

  outlined init with copy of ShadowListDataSource<TableDataSourceAdaptor>?(v0, v24);
  if (!v25)
  {
    v8 = &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>?;
    v9 = type metadata accessor for ShadowListDataSource<TableDataSourceAdaptor>;
    v10 = v24;
LABEL_15:
    outlined destroy of ShadowListDataSource<TableDataSourceAdaptor>?(v10, v8, v9);
    return 0;
  }

  outlined init with copy of TableDataSourceAdaptor(v24, v22);
  outlined destroy of ShadowListDataSource<TableDataSourceAdaptor>(v24, type metadata accessor for ShadowListDataSource<TableDataSourceAdaptor>);
  outlined init with copy of TableColumnCollection(v23, v21);
  outlined destroy of TableDataSourceAdaptor(v22);
  outlined init with copy of TableColumnCollection.Backing(v21, v19);
  if (v20)
  {
    v7 = *(*&v19[0] + 16);
  }

  else
  {
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v19, v16);
    v11 = v17;
    v12 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    v7 = (*(v12 + 8))(v11, v12);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  v13 = specialized RandomAccessCollection<>.distance(from:to:)(0, v7);
  outlined destroy of TableColumnCollection(v21);
  return v13;
}

void *AccessibilityCollectionViewTableAttachment.value.getter@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for UICollectionViewListCoordinator<TableDataSourceAdaptor, AnySelectionManager>();
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v3 = *WeakValue;
    v4 = *((*MEMORY[0x1E69E7D40] & **WeakValue) + 0x88);
    swift_beginAccess();
    outlined init with copy of ShadowListDataSource<TableDataSourceAdaptor>(v3 + v4, __src);
  }

  else
  {
    memset(__src, 0, 192);
  }

  if (AGGraphGetWeakValue())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
  }

  else
  {
    Strong = 0;
  }

  v18 = &type metadata for AccessibilityCollectionViewTableDataSource;
  v19 = &protocol witness table for AccessibilityCollectionViewTableDataSource;
  v6 = swift_allocObject();
  v17 = v6;
  v7 = __src[9];
  v8 = __src[10];
  v9 = __src[7];
  *(v6 + 144) = __src[8];
  *(v6 + 160) = v7;
  v10 = __src[11];
  *(v6 + 176) = v8;
  *(v6 + 192) = v10;
  v11 = __src[5];
  *(v6 + 80) = __src[4];
  *(v6 + 96) = v11;
  *(v6 + 112) = __src[6];
  *(v6 + 128) = v9;
  v12 = __src[1];
  *(v6 + 16) = __src[0];
  *(v6 + 32) = v12;
  v13 = __src[3];
  *(v6 + 48) = __src[2];
  *(v6 + 64) = v13;
  *(v6 + 208) = Strong;
  v20 = 0;
  lazy protocol witness table accessor for type AccessibilityProperties.TableContextKey and conformance AccessibilityProperties.TableContextKey();
  AccessibilityProperties.init<A>(_:_:)();
  static AccessibilityAttachment.properties(_:)();
  outlined destroy of AccessibilityProperties(v21);
  _s7SwiftUI10MutableBoxCyAA23AccessibilityAttachmentVGMaTm_0(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v14 = swift_allocObject();
  result = memcpy((v14 + 16), __src, 0x128uLL);
  *a1 = v14;
  a1[1] = 0;
  return result;
}

void type metadata accessor for UICollectionViewListCoordinator<TableDataSourceAdaptor, AnySelectionManager>()
{
  if (!lazy cache variable for type metadata for UICollectionViewListCoordinator<TableDataSourceAdaptor, AnySelectionManager>)
  {
    lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor();
    lazy protocol witness table accessor for type AnySelectionManager and conformance AnySelectionManager();
    v0 = type metadata accessor for UICollectionViewListCoordinator();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UICollectionViewListCoordinator<TableDataSourceAdaptor, AnySelectionManager>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AnySelectionManager and conformance AnySelectionManager()
{
  result = lazy protocol witness table cache variable for type AnySelectionManager and conformance AnySelectionManager;
  if (!lazy protocol witness table cache variable for type AnySelectionManager and conformance AnySelectionManager)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnySelectionManager and conformance AnySelectionManager);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnySelectionManager and conformance AnySelectionManager;
  if (!lazy protocol witness table cache variable for type AnySelectionManager and conformance AnySelectionManager)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnySelectionManager and conformance AnySelectionManager);
  }

  return result;
}

uint64_t outlined init with copy of ShadowListDataSource<TableDataSourceAdaptor>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ShadowListDataSource<TableDataSourceAdaptor>();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for ShadowListDataSource<TableDataSourceAdaptor>()
{
  if (!lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>)
  {
    lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor();
    v0 = type metadata accessor for ShadowListDataSource();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>);
    }
  }
}

uint64_t outlined destroy of AccessibilityTableContext(uint64_t result)
{
  if (*(result + 40) < 4u)
  {
    if (*(result + 40))
    {
      return result;
    }

LABEL_5:
    v1 = result;
    __swift_destroy_boxed_opaque_existential_1(result);
    return v1;
  }

  if (*result == -4)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t outlined init with copy of ShadowListDataSource<TableDataSourceAdaptor>?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TableColumnCollection.Entry?(0, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>?, type metadata accessor for ShadowListDataSource<TableDataSourceAdaptor>);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for TableColumnCollection.Entry?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t outlined destroy of ShadowListDataSource<TableDataSourceAdaptor>?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  type metadata accessor for TableColumnCollection.Entry?(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void destroy for AccessibilityCollectionViewTableDataSource(uint64_t a1)
{
  if (*(a1 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(a1);

    if (*(a1 + 88))
    {
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(a1 + 48);
    }

    if (*(a1 + 120))
    {
    }

    if (*(a1 + 144))
    {
    }
  }

  v2 = *(a1 + 192);
}

uint64_t initializeWithCopy for AccessibilityCollectionViewTableDataSource(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    *(a1 + 24) = v4;
    *(a1 + 32) = v5;
    (**(v4 - 8))(a1, a2);
    *(a1 + 40) = *(a2 + 40);
    v6 = *(a2 + 88);

    if (v6)
    {
      *(a1 + 48) = *(a2 + 48);
    }

    else
    {
      v13 = *(a2 + 72);
      *(a1 + 72) = v13;
      (**(v13 - 8))(a1 + 48, a2 + 48);
    }

    *(a1 + 88) = v6;
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 104) = *(a2 + 104);
    v14 = *(a2 + 120);

    if (v14)
    {
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 120) = v14;
      *(a1 + 128) = *(a2 + 128);

      v15 = *(a2 + 144);
      if (v15)
      {
LABEL_8:
        *(a1 + 136) = *(a2 + 136);
        *(a1 + 144) = v15;
        v16 = *(a2 + 160);
        *(a1 + 152) = *(a2 + 152);
        *(a1 + 160) = v16;

LABEL_11:
        *(a1 + 168) = *(a2 + 168);
        *(a1 + 169) = *(a2 + 169);
        v17 = *(a2 + 184);
        *(a1 + 176) = *(a2 + 176);
        *(a1 + 184) = v17;

        goto LABEL_12;
      }
    }

    else
    {
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 128) = *(a2 + 128);
      v15 = *(a2 + 144);
      if (v15)
      {
        goto LABEL_8;
      }
    }

    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    goto LABEL_11;
  }

  v7 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v7;
  v8 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v8;
  v9 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v9;
  v10 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v10;
  v11 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v11;
  v12 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v12;
LABEL_12:
  v18 = *(a2 + 192);
  *(a1 + 192) = v18;
  v19 = v18;
  return a1;
}

uint64_t assignWithCopy for AccessibilityCollectionViewTableDataSource(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 3);
  if (!*(a1 + 24))
  {
    if (!v4)
    {
      v15 = *a2;
      v16 = a2[1];
      v17 = a2[3];
      *(a1 + 32) = a2[2];
      *(a1 + 48) = v17;
      *a1 = v15;
      *(a1 + 16) = v16;
      v18 = a2[4];
      v19 = a2[5];
      v20 = a2[7];
      *(a1 + 96) = a2[6];
      *(a1 + 112) = v20;
      *(a1 + 64) = v18;
      *(a1 + 80) = v19;
      v21 = a2[8];
      v22 = a2[9];
      v23 = a2[11];
      *(a1 + 160) = a2[10];
      *(a1 + 176) = v23;
      *(a1 + 128) = v21;
      *(a1 + 144) = v22;
      goto LABEL_34;
    }

    *(a1 + 24) = v4;
    *(a1 + 32) = *(a2 + 4);
    (**(v4 - 8))(a1, a2);
    *(a1 + 40) = *(a2 + 5);
    v5 = *(a2 + 88);

    if (v5)
    {
      *(a1 + 48) = *(a2 + 6);
    }

    else
    {
      v26 = *(a2 + 9);
      *(a1 + 72) = v26;
      *(a1 + 80) = *(a2 + 10);
      (**(v26 - 8))(a1 + 48, (a2 + 3));
    }

    *(a1 + 88) = v5;
    *(a1 + 96) = *(a2 + 12);
    *(a1 + 104) = *(a2 + 104);
    v27 = *(a2 + 15);

    if (v27)
    {
      *(a1 + 112) = *(a2 + 14);
      *(a1 + 120) = *(a2 + 15);
      *(a1 + 128) = *(a2 + 16);

      if (*(a2 + 18))
      {
LABEL_20:
        *(a1 + 136) = *(a2 + 17);
        *(a1 + 144) = *(a2 + 18);
        *(a1 + 152) = *(a2 + 19);
        *(a1 + 160) = *(a2 + 20);

LABEL_24:
        *(a1 + 168) = *(a2 + 168);
        *(a1 + 169) = *(a2 + 169);
        *(a1 + 170) = *(a2 + 170);
        *(a1 + 176) = *(a2 + 22);
        *(a1 + 184) = *(a2 + 23);

        goto LABEL_34;
      }
    }

    else
    {
      v29 = a2[7];
      *(a1 + 128) = *(a2 + 16);
      *(a1 + 112) = v29;
      if (*(a2 + 18))
      {
        goto LABEL_20;
      }
    }

    v30 = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 136) = v30;
    goto LABEL_24;
  }

  if (v4)
  {
    __swift_assign_boxed_opaque_existential_1(a1, a2);
    *(a1 + 40) = *(a2 + 5);

    if (a1 != a2)
    {
      outlined destroy of TableColumnCollection.Backing(a1 + 48);
      if (*(a2 + 88))
      {
        *(a1 + 48) = *(a2 + 6);
        *(a1 + 88) = 1;
      }

      else
      {
        v24 = *(a2 + 9);
        *(a1 + 72) = v24;
        *(a1 + 80) = *(a2 + 10);
        (**(v24 - 8))(a1 + 48, (a2 + 3));
        *(a1 + 88) = 0;
      }
    }

    *(a1 + 96) = *(a2 + 12);

    *(a1 + 104) = *(a2 + 104);
    v25 = *(a2 + 15);
    if (*(a1 + 120))
    {
      if (v25)
      {
        *(a1 + 112) = *(a2 + 14);

        *(a1 + 120) = *(a2 + 15);

        *(a1 + 128) = *(a2 + 16);
      }

      else
      {
        outlined destroy of ShadowListDataSource<TableDataSourceAdaptor>(a1 + 112, type metadata accessor for Binding<[SwiftUIAnySortComparator]>);
        v28 = *(a2 + 16);
        *(a1 + 112) = a2[7];
        *(a1 + 128) = v28;
      }
    }

    else if (v25)
    {
      *(a1 + 112) = *(a2 + 14);
      *(a1 + 120) = *(a2 + 15);
      *(a1 + 128) = *(a2 + 16);
    }

    else
    {
      v31 = a2[7];
      *(a1 + 128) = *(a2 + 16);
      *(a1 + 112) = v31;
    }

    v32 = *(a2 + 18);
    if (*(a1 + 144))
    {
      if (v32)
      {
        *(a1 + 136) = *(a2 + 17);

        *(a1 + 144) = *(a2 + 18);

        *(a1 + 152) = *(a2 + 19);

        *(a1 + 160) = *(a2 + 20);
      }

      else
      {
        _s7SwiftUI25AccessibilityTableContextOSgWOhTm_0(a1 + 136, &lazy cache variable for type metadata for Binding<AnyTableColumnCustomization>, &type metadata for AnyTableColumnCustomization, MEMORY[0x1E6981948]);
        v33 = *(a2 + 152);
        *(a1 + 136) = *(a2 + 136);
        *(a1 + 152) = v33;
      }
    }

    else if (v32)
    {
      *(a1 + 136) = *(a2 + 17);
      *(a1 + 144) = *(a2 + 18);
      *(a1 + 152) = *(a2 + 19);
      *(a1 + 160) = *(a2 + 20);
    }

    else
    {
      v34 = *(a2 + 136);
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 136) = v34;
    }

    *(a1 + 168) = *(a2 + 168);
    *(a1 + 169) = *(a2 + 169);
    *(a1 + 170) = *(a2 + 170);
    *(a1 + 176) = *(a2 + 22);

    *(a1 + 184) = *(a2 + 23);
  }

  else
  {
    outlined destroy of ShadowListDataSource<TableDataSourceAdaptor>(a1, type metadata accessor for ShadowListDataSource<TableDataSourceAdaptor>);
    v6 = a2[3];
    v8 = *a2;
    v7 = a2[1];
    *(a1 + 32) = a2[2];
    *(a1 + 48) = v6;
    *a1 = v8;
    *(a1 + 16) = v7;
    v9 = a2[7];
    v11 = a2[4];
    v10 = a2[5];
    *(a1 + 96) = a2[6];
    *(a1 + 112) = v9;
    *(a1 + 64) = v11;
    *(a1 + 80) = v10;
    v12 = a2[11];
    v14 = a2[8];
    v13 = a2[9];
    *(a1 + 160) = a2[10];
    *(a1 + 176) = v12;
    *(a1 + 128) = v14;
    *(a1 + 144) = v13;
  }

LABEL_34:
  v35 = *(a1 + 192);
  v36 = *(a2 + 24);
  *(a1 + 192) = v36;
  v37 = v36;

  return a1;
}

uint64_t outlined destroy of ShadowListDataSource<TableDataSourceAdaptor>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI25AccessibilityTableContextOSgWOhTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  _s7SwiftUI10MutableBoxCyAA23AccessibilityAttachmentVGMaTm_0(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t assignWithTake for AccessibilityCollectionViewTableDataSource(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    if (*(a2 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
      v4 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v4;
      v5 = *(a2 + 40);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = v5;

      if (a1 != a2)
      {
        outlined destroy of TableColumnCollection.Backing(a1 + 48);
        v6 = *(a2 + 64);
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 64) = v6;
        *(a1 + 73) = *(a2 + 73);
      }

      *(a1 + 96) = *(a2 + 96);

      *(a1 + 104) = *(a2 + 104);
      if (*(a1 + 120))
      {
        if (*(a2 + 120))
        {
          *(a1 + 112) = *(a2 + 112);

          *(a1 + 120) = *(a2 + 120);

          *(a1 + 128) = *(a2 + 128);

          if (!*(a1 + 144))
          {
            goto LABEL_16;
          }

LABEL_13:
          if (*(a2 + 144))
          {
            *(a1 + 136) = *(a2 + 136);

            *(a1 + 144) = *(a2 + 144);

            *(a1 + 152) = *(a2 + 152);

            *(a1 + 160) = *(a2 + 160);

LABEL_17:
            *(a1 + 168) = *(a2 + 168);
            *(a1 + 169) = *(a2 + 169);
            *(a1 + 170) = *(a2 + 170);
            *(a1 + 176) = *(a2 + 176);

            *(a1 + 184) = *(a2 + 184);

            goto LABEL_18;
          }

          _s7SwiftUI25AccessibilityTableContextOSgWOhTm_0(a1 + 136, &lazy cache variable for type metadata for Binding<AnyTableColumnCustomization>, &type metadata for AnyTableColumnCustomization, MEMORY[0x1E6981948]);
LABEL_16:
          *(a1 + 136) = *(a2 + 136);
          *(a1 + 152) = *(a2 + 152);
          goto LABEL_17;
        }

        outlined destroy of ShadowListDataSource<TableDataSourceAdaptor>(a1 + 112, type metadata accessor for Binding<[SwiftUIAnySortComparator]>);
      }

      *(a1 + 112) = *(a2 + 112);
      *(a1 + 128) = *(a2 + 128);
      if (!*(a1 + 144))
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    }

    outlined destroy of ShadowListDataSource<TableDataSourceAdaptor>(a1, type metadata accessor for ShadowListDataSource<TableDataSourceAdaptor>);
  }

  v7 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v7;
  v8 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v8;
  v9 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v9;
  v10 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v10;
  v11 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v11;
  v12 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v12;
LABEL_18:
  v13 = *(a1 + 192);
  *(a1 + 192) = *(a2 + 192);

  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityCollectionViewTableDataSource(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 200))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for AccessibilityCollectionViewTableDataSource(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 200) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 200) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityCollectionViewTableAttachment and conformance AccessibilityCollectionViewTableAttachment()
{
  result = lazy protocol witness table cache variable for type AccessibilityCollectionViewTableAttachment and conformance AccessibilityCollectionViewTableAttachment;
  if (!lazy protocol witness table cache variable for type AccessibilityCollectionViewTableAttachment and conformance AccessibilityCollectionViewTableAttachment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityCollectionViewTableAttachment and conformance AccessibilityCollectionViewTableAttachment);
  }

  return result;
}

uint64_t specialized AccessibilityRowAccumulator.visit<A, B>(rowValue:view:children:traits:)(uint64_t a1)
{
  outlined init with copy of AccessibilityTableContext?(a1, &v7, &lazy cache variable for type metadata for TableRowList?, &type metadata for TableRowList);
  if (*(&v8 + 1))
  {
    v10 = v7;
    v11 = v8;
    v2 = v9;
    v12 = v9;
    v3 = *(&v8 + 1);
    __swift_project_boxed_opaque_existential_1(&v10, *(&v8 + 1));
    if ((*(v2 + 24))(v3, v2))
    {

      v4 = *(&v11 + 1);
      v5 = v12;
      __swift_project_boxed_opaque_existential_1(&v10, *(&v11 + 1));
      *v1 += (*(v5 + 16))(v4, v5);
    }

    else
    {
      MEMORY[0x1EEE9AC00](0);
      static Update.ensure<A>(_:)();
    }

    outlined destroy of TableRowList(&v10);
  }

  else
  {
    _s7SwiftUI25AccessibilityTableContextOSgWOhTm_0(&v7, &lazy cache variable for type metadata for TableRowList?, &type metadata for TableRowList, MEMORY[0x1E69E6720]);
    ++*v1;
  }

  return 1;
}

uint64_t outlined init with copy of AccessibilityTableContext?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  _s7SwiftUI10MutableBoxCyAA23AccessibilityAttachmentVGMaTm_0(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t static AccessibilityFocusStore.Key.defaultValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for AccessibilityFocusStore.Entry();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t AccessibilityFocusStore.makeStoreContent(_:)(uint64_t result)
{
  v2 = v1;
  v3 = *(result + 16);
  if (!v3)
  {
    *v1 = 0;
    return result;
  }

  if (v3 == 1)
  {
    v4 = 0;
    v5 = 0;
LABEL_15:
    v12 = v3 - v5;
    v13 = (result + 56 * v5 + 32);
    do
    {
      v15 = *v13;
      v13 += 7;
      v14 = v15;
      if (v15 > v4)
      {
        v4 = v14;
      }

      --v12;
    }

    while (v12);
    goto LABEL_19;
  }

  v4 = 0;
  v6 = 0;
  v5 = v3 & 0x7FFFFFFFFFFFFFFELL;
  v7 = (result + 88);
  v8 = v3 & 0x7FFFFFFFFFFFFFFELL;
  do
  {
    v9 = *(v7 - 7);
    v11 = *v7;
    v7 += 14;
    v10 = v11;
    if (v9 > v4)
    {
      v4 = v9;
    }

    if (v10 > v6)
    {
      v6 = v10;
    }

    v8 -= 2;
  }

  while (v8);
  if (v4 <= v6)
  {
    v4 = v6;
  }

  if (v3 != v5)
  {
    goto LABEL_15;
  }

LABEL_19:
  v16 = 0;
  v47 = *(result + 16);
  v48 = result + 32;
  *v1 = v4;
LABEL_21:
  v17 = (v48 + 56 * v16);
  v19 = v17[1];
  v18 = v17[2];
  v20 = v17[4];
  v21 = v17[6];
  v50 = v17[5];
  v22 = v2[2];
  if (*(v22 + 16) && (v23 = specialized __RawDictionaryStorage.find<A>(_:)(v19), (v24 & 1) != 0))
  {
    v53 = *(*(v22 + 56) + 8 * v23);
  }

  else
  {
    v53 = 0;
  }

  v49 = v16 + 1;

  v18(v20, v50, &v53);
  v25 = v53;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v51 = v2[2];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v25, v19, isUniquelyReferenced_nonNull_native);
  v2[2] = v51;
  v27 = 1 << *(v21 + 32);
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  else
  {
    v28 = -1;
  }

  v29 = v28 & *(v21 + 64);
  v30 = (v27 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v31 = 0;
  while (v29)
  {
LABEL_36:
    v38 = __clz(__rbit64(v29)) | (v31 << 6);
    v39 = *(*(v21 + 48) + v38);
    v40 = *(*(v21 + 56) + v38);
    v41 = v2[1];
    if (*(v41 + 16) && (v42 = specialized __RawDictionaryStorage.find<A>(_:)(v39), (v43 & 1) != 0))
    {
      matched = *(*(v41 + 56) + 8 * v42);

      if (!matched[2])
      {
        goto LABEL_29;
      }
    }

    else
    {
      matched = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI18AccessibilityFocusV5MatchO_ShyAC8UniqueIDVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      if (!matched[2])
      {
        goto LABEL_29;
      }
    }

    v45 = specialized __RawDictionaryStorage.find<A>(_:)(v40);
    if ((v46 & 1) == 0)
    {
LABEL_29:
      v32 = MEMORY[0x1E69E7CD0];
      goto LABEL_30;
    }

    v32 = *(matched[7] + 8 * v45);

LABEL_30:
    v29 &= v29 - 1;

    v34 = specialized Set.union<A>(_:)(v33, v32);
    v35 = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v34, v40, v35);

    v36 = swift_isUniquelyReferenced_nonNull_native();
    v52 = v2[1];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(matched, v39, v36);

    v2[1] = v52;
  }

  while (1)
  {
    v37 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v37 >= v30)
    {

      result = swift_bridgeObjectRelease_n();
      ++v16;
      if (v49 == v47)
      {
        return result;
      }

      goto LABEL_21;
    }

    v29 = *(v21 + 64 + 8 * v37);
    ++v31;
    if (v29)
    {
      v31 = v37;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

uint64_t AccessibilityFocusStore.matchedNodeIDs(for:match:)(unsigned __int16 *a1, uint64_t a2)
{
  v4 = *(v2 + 8);
  v5 = AccessibilityTechnologySet.list.getter(*a1);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = MEMORY[0x1E69E7CD0];
    v8 = 32;
    v9 = MEMORY[0x1E69E7CD0];
    do
    {
      if (*(v4 + 16) && (v11 = specialized __RawDictionaryStorage.find<A>(_:)(*(v5 + v8)), (v12 & 1) != 0) && *(*(*(v4 + 56) + 8 * v11) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(a2), (v13 & 1) != 0))
      {
      }

      else
      {
        v10 = v7;
      }

      v9 = specialized Set.union<A>(_:)(v10, v9);
      ++v8;
      --v6;
    }

    while (v6);
  }

  else
  {

    return MEMORY[0x1E69E7CD0];
  }

  return v9;
}

uint64_t specialized Set.union<A>(_:)(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = specialized Set._Variant.insert(_:)(&v11, *(*(v2 + 48) + ((v9 << 9) | (8 * v10)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t (*AccessibilityFocusStoreLocation.wasRead.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + *(*v1 + class metadata base offset for AccessibilityFocusStoreLocation + 72));
  return AccessibilityFocusStoreLocation.wasRead.modify;
}

uint64_t AccessibilityFocusStoreLocation.deferUpdate(_:)(uint64_t a1)
{
  v3 = *(*v1 + class metadata base offset for AccessibilityFocusStoreLocation);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = *(TupleTypeMetadata2 + 48);
  (*(*(v3 - 8) + 16))(&v13 - v8, a1, v3, v7);
  *&v9[v10] = *&v1[*(*v1 + class metadata base offset for AccessibilityFocusStoreLocation + 64)];
  (*(*(TupleTypeMetadata2 - 8) + 56))(v9, 0, 1, TupleTypeMetadata2);
  v11 = *(*v1 + class metadata base offset for AccessibilityFocusStoreLocation + 48);
  swift_beginAccess();
  (*(v6 + 40))(&v1[v11], v9, v5);
  return swift_endAccess();
}

uint64_t AccessibilityFocusStoreLocation.set(_:transaction:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + class metadata base offset for AccessibilityFocusStoreLocation);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v1 + 5);
  v7 = &v12 - v6;
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = swift_allocObject();
    swift_weakInit();
    (*(v5 + 16))(v7, a1, v4);
    v10 = (*(v5 + 80) + 40) & ~*(v5 + 80);
    v11 = swift_allocObject();
    *(v11 + 2) = v4;
    *(v11 + 3) = *(v3 + class metadata base offset for AccessibilityFocusStoreLocation + 8);
    *(v11 + 4) = v9;
    (*(v5 + 32))(&v11[v10], v7, v4);

    default argument 1 of GraphHost.asyncTransaction(_:id:_:)();
    GraphHost.asyncTransaction(_:id:_:)();
  }

  return result;
}

void closure #1 in AccessibilityFocusStoreLocation.set(_:transaction:)(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v2 = type metadata accessor for AccessibilityFocusStore.Entry();
  v3 = type metadata accessor for Optional();
  v44 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v43 - v4;
  v6 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v45 = &v43 - v8;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v43 - v12;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v15 = Strong;
  (*(*(TupleTypeMetadata2 - 8) + 56))(v13, 1, 1, TupleTypeMetadata2);
  v16 = *(*v15 + class metadata base offset for AccessibilityFocusStoreLocation + 48);
  swift_beginAccess();
  (*(v11 + 40))(&v15[v16], v13, v10);
  swift_endAccess();
  v17 = v46;
  AccessibilityFocusStoreLocation.find(for:)(v5);
  if ((*(v6 + 48))(v5, 1, v2) == 1)
  {
    (*(v44 + 8))(v5, v3);
    AccessibilityFocusStoreLocation.deferUpdate(_:)(v17);

    return;
  }

  v44 = v6;
  v18 = v45;
  (*(v6 + 32))(v45, v5, v2);
  v46 = v2;
  v19 = *&v18[*(v2 + 36)];
  swift_getKeyPath();
  v20 = MEMORY[0x1E69E7CC0];
  *v49 = MEMORY[0x1E69E7CC0];
  v21 = *(v19 + 16);
  if (v21)
  {
    v22 = v19 + 32;
    do
    {
      outlined init with copy of WeakBox<AccessibilityNode>(v22, v48);
      swift_getAtKeyPath();
      v23 = outlined destroy of WeakBox<AccessibilityNode>(v48);
      if (v47)
      {
        MEMORY[0x18D00CC30](v23);
        if (*((*v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v20 = *v49;
      }

      v22 += 8;
      --v21;
    }

    while (v21);
  }

  if (!(v20 >> 62))
  {
    v24 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24)
    {
      goto LABEL_13;
    }

LABEL_40:

    (*(v44 + 8))(v45, v46);
    return;
  }

LABEL_47:
  v24 = __CocoaSet.count.getter();
  if (!v24)
  {
    goto LABEL_40;
  }

LABEL_13:
  v25 = 0;
  v26 = v20 & 0xC000000000000001;
  v43 = v20 + 32;
  v27 = &unk_1EAB09000;
  do
  {
    if (v26)
    {
      v28 = MEMORY[0x18D00E9C0](v25, v20);
    }

    else
    {
      if (v25 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_46;
      }

      v28 = *(v20 + 8 * v25 + 32);
    }

    v29 = v28;
    v30 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v48[0] = 4;
    AccessibilityNode.impliedVisibility(consideringParent:with:)(1, v48, v49);
    if (v49[0] != 3)
    {

      v31 = v46;
      v32 = v44;
LABEL_43:
      v42 = AccessibilityNode.representedElement.getter();
      *v49 = *&v15[*(*v15 + v27[223] + 40)];
      specialized static AccessibilityFocus.move(to:for:)(v42, v49);

      (*(v32 + 8))(v45, v31);
      return;
    }

    ++v25;
  }

  while (v30 != v24);
  v33 = 0;
  if (v26)
  {
    while (1)
    {
      v34 = MEMORY[0x18D00E9C0](v33, v20);
      if (__OFADD__(v33++, 1))
      {
        break;
      }

      v36 = v34;
      swift_unknownObjectRetain_n();
      v48[0] = 4;
      v29 = v36;
      AccessibilityNode.impliedVisibility(consideringParent:with:)(1, v48, v49);
      if (v49[0] != 3)
      {
        goto LABEL_42;
      }

      while (1)
      {
        v37 = swift_unknownObjectWeakLoadStrong();

        if (!v37)
        {
          break;
        }

        v29 = v37;
        v48[0] = 4;
        AccessibilityNode.impliedVisibility(consideringParent:with:)(1, v48, v49);
        if (v49[0] != 3)
        {
          goto LABEL_42;
        }
      }

      swift_unknownObjectRelease();
      if (v33 == v24)
      {
        goto LABEL_40;
      }
    }

    __break(1u);
  }

  else
  {
    v38 = v43;
    while (v33 < *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v36 = *(v38 + 8 * v33);
      v48[0] = 4;
      AccessibilityNode.impliedVisibility(consideringParent:with:)(1, v48, v49);
      if (v49[0] != 3)
      {
        v29 = v36;
LABEL_42:

        v31 = v46;
        v32 = v44;
        v27 = &unk_1EAB09000;
        goto LABEL_43;
      }

      v39 = v33 + 1;
      v29 = v36;
      while (1)
      {
        v40 = swift_unknownObjectWeakLoadStrong();

        if (!v40)
        {
          break;
        }

        v29 = v40;
        v48[0] = 4;
        AccessibilityNode.impliedVisibility(consideringParent:with:)(1, v48, v49);
        if (v49[0] != 3)
        {
          goto LABEL_42;
        }
      }

      v33 = v39;
      v41 = v39 == v24;
      v38 = v43;
      if (v41)
      {
        goto LABEL_40;
      }
    }
  }

  __break(1u);
}

unint64_t AccessibilityFocusStoreLocation.find(for:)@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AccessibilityFocusStore.Entry();
  result = (*(*(v3 - 8) + 56))(a1, 1, 1, v3);
  if (*(*(v1 + 32) + 16))
  {
    result = specialized __RawDictionaryStorage.find<A>(_:)(v1);
    if (v5)
    {
      v6 = type metadata accessor for AccessibilityFocusStore.Key();
      MEMORY[0x1EEE9AC00](v6);

      swift_getWitnessTable();
      PropertyList.forEach<A>(keyType:_:)();
    }
  }

  return result;
}

uint64_t closure #1 in AccessibilityFocusStoreLocation.find(for:)(uint64_t a1, _BYTE *a2, uint64_t a3, char *a4)
{
  v21 = a4;
  v22 = a3;
  v6 = type metadata accessor for AccessibilityFocusStore.Entry();
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = *(v6 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v19 - v14;
  (*(v8 + 16))(v10, a1, v7, v13);
  if ((*(v11 + 48))(v10, 1, v6) == 1)
  {
    return (*(v8 + 8))(v10, v7);
  }

  v20 = a2;
  v17 = *(v11 + 32);
  v17(v15, v10, v6);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    return (*(v11 + 8))(v15, v6);
  }

  v18 = v21;
  (*(v8 + 8))(v21, v7);
  v17(v18, v15, v6);
  result = (*(v11 + 56))(v18, 0, 1, v6);
  *v20 = 1;
  return result;
}

uint64_t closure #1 in AccessibilityFocusStoreLocation.resolve()(uint64_t a1, _BYTE *a2, void *a3, char *a4)
{
  v33 = a4;
  v34 = a3;
  v6 = type metadata accessor for AccessibilityFocusStore.Entry();
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  v14 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v32 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v29 - v19;
  (*(v8 + 16))(v13, a1, v7, v18);
  v21 = *(v14 + 48);
  if (v21(v13, 1, v6) == 1)
  {
    return (*(v8 + 8))(v13, v7);
  }

  v31 = a2;
  v30 = *(v14 + 32);
  v30(v20, v13, v6);
  v23 = (v8 + 8);
  find #1 <A>(_:) in closure #1 in AccessibilityFocusStoreLocation.resolve()(byte_1EFF8CBF0, v34, v20, v10);
  if (v21(v10, 1, v6) == 1 && (v24 = *v23, (*v23)(v10, v7), find #1 <A>(_:) in closure #1 in AccessibilityFocusStoreLocation.resolve()(byte_1EFF8CBF1, v34, v20, v10), v21(v10, 1, v6) == 1) && (v24(v10, v7), find #1 <A>(_:) in closure #1 in AccessibilityFocusStoreLocation.resolve()(byte_1EFF8CBF2, v34, v20, v10), v21(v10, 1, v6) == 1) && (v24(v10, v7), find #1 <A>(_:) in closure #1 in AccessibilityFocusStoreLocation.resolve()(byte_1EFF8CBF3, v34, v20, v10), v21(v10, 1, v6) == 1))
  {
    v24(v10, v7);
    return (*(v14 + 8))(v20, v6);
  }

  else
  {
    (*(v14 + 8))(v20, v6);
    v25 = v32;
    v26 = v10;
    v27 = v30;
    v30(v32, v26, v6);
    v28 = v33;
    (*v23)(v33, v7);
    v27(v28, v25, v6);
    result = (*(v14 + 56))(v28, 0, 1, v6);
    *v31 = 1;
  }

  return result;
}

uint64_t find #1 <A>(_:) in closure #1 in AccessibilityFocusStoreLocation.resolve()@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = *(a2 + *(*a2 + class metadata base offset for AccessibilityFocusStoreLocation + 40));

  v5 = AccessibilityFocusStore.matchedNodeIDs(for:match:)(&v28, a1);

  v7 = 0;
  v8 = 1 << *(v5 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v5 + 56);
  v11 = (v8 + 63) >> 6;
LABEL_5:
  while (v10)
  {
LABEL_10:
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v14 = *(*(v5 + 48) + ((v7 << 9) | (8 * v13)));
    result = type metadata accessor for AccessibilityFocusStore.Entry();
    v15 = *(a3 + *(result + 40));
    if (*(v15 + 16))
    {
      v16 = result;
      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v14);
      result = Hasher._finalize()();
      v17 = -1 << *(v15 + 32);
      v18 = result & ~v17;
      if ((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
      {
        v19 = ~v17;
        while (*(*(v15 + 48) + 8 * v18) != v14)
        {
          v18 = (v18 + 1) & v19;
          if (((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        v25 = *(v16 - 8);
        (*(v25 + 16))(a4, a3, v16);
        v21 = *(v25 + 56);
        v23 = a4;
        v24 = 0;
        v22 = v16;
LABEL_18:

        return v21(v23, v24, 1, v22);
      }
    }
  }

  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v11)
    {

      v20 = type metadata accessor for AccessibilityFocusStore.Entry();
      v21 = *(*(v20 - 8) + 56);
      v22 = v20;
      v23 = a4;
      v24 = 1;
      goto LABEL_18;
    }

    v10 = *(v5 + 56 + 8 * v12);
    ++v7;
    if (v10)
    {
      v7 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t AccessibilityFocusStoreLocation.__ivar_destroyer()
{
  v1 = *v0;

  swift_weakDestroy();
  (*(*(*(v1 + class metadata base offset for AccessibilityFocusStoreLocation) - 8) + 8))(&v0[*(*v0 + class metadata base offset for AccessibilityFocusStoreLocation + 32)], *(v1 + class metadata base offset for AccessibilityFocusStoreLocation));
  v2 = *(*v0 + class metadata base offset for AccessibilityFocusStoreLocation + 48);
  swift_getTupleTypeMetadata2();
  v3 = type metadata accessor for Optional();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + class metadata base offset for AccessibilityFocusStoreLocation + 56);
  type metadata accessor for AccessibilityFocusStore.Entry();
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 8);

  return v6(&v0[v4], v5);
}

char *AccessibilityFocusStoreLocation.deinit()
{
  v1 = *v0;
  v2 = AnyLocation.deinit();

  swift_weakDestroy();
  (*(*(*(v1 + class metadata base offset for AccessibilityFocusStoreLocation) - 8) + 8))(&v2[*(*v2 + class metadata base offset for AccessibilityFocusStoreLocation + 32)], *(v1 + class metadata base offset for AccessibilityFocusStoreLocation));
  v3 = *(*v2 + class metadata base offset for AccessibilityFocusStoreLocation + 48);
  swift_getTupleTypeMetadata2();
  v4 = type metadata accessor for Optional();
  (*(*(v4 - 8) + 8))(&v2[v3], v4);
  v5 = *(*v2 + class metadata base offset for AccessibilityFocusStoreLocation + 56);
  type metadata accessor for AccessibilityFocusStore.Entry();
  v6 = type metadata accessor for Optional();
  (*(*(v6 - 8) + 8))(&v2[v5], v6);
  return v2;
}

uint64_t AccessibilityFocusStoreLocation.__deallocating_deinit()
{
  AccessibilityFocusStoreLocation.deinit();

  return swift_deallocClassInstance();
}

uint64_t *initializeBufferWithCopyOfBuffer for AccessibilityFocusStore.Entry(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v10 = *v11;
    *((v10 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t initializeWithTake for AccessibilityFocusStore.Entry(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  *((v7 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for AccessibilityFocusStoreListModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = ((v6 + 16) & ~v6) + v7 + v6;
  v9 = (v8 & ~v6) + v7;
  v10 = *(v5 + 80) & 0x100000;
  v11 = *a2;
  *a1 = *a2;
  if (v6 > 7 || v10 != 0 || v9 > 0x18)
  {
    a1 = (v11 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  else
  {
    v14 = ~v6;
    v15 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    v16 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v15 = *v16;
    v17 = *(v5 + 16);

    v17(v15 + 1, v16 + 1, v4);
    v17(((a1 + v8) & v14), ((a2 + v8) & v14), v4);
  }

  return a1;
}

void *initializeWithTake for AccessibilityFocusStoreListModifier(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 32);
  v10 = v8 + 32;
  v11 = *(v8 + 80);
  v9((v5 + v11 + 8) & ~v11, (v6 + v11 + 8) & ~v11, v7);
  v12 = ((v11 + 16) & ~v11) + *(v10 + 32) + v11;
  v9((a1 + v12) & ~v11, (a2 + v12) & ~v11, v7);
  return a1;
}

void *assignWithTake for AccessibilityFocusStoreListModifier(void *a1, void *a2, uint64_t a3)
{
  v6 = a2 + 15;
  *a1 = *a2;

  v7 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 &= 0xFFFFFFFFFFFFFFF8;
  *v7 = *v6;

  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  v10 = *(v9 + 40);
  v11 = v9 + 40;
  v12 = *(v9 + 80);
  v10((v7 + v12 + 8) & ~v12, (v12 + 8 + v6) & ~v12, v8);
  v13 = ((v12 + 16) & ~v12) + *(v11 + 24) + v12;
  v10((a1 + v13) & ~v12, (a2 + v13) & ~v12, v8);
  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityFocusStoreListModifier(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_26;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  v10 = ((v7 + v6 + ((v6 + 16) & ~v6)) & ~v6) + v7;
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_26:
      v16 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((v16 + v6 + 8) & ~v6);
      }

      v17 = *v16;
      if (v17 >= 0xFFFFFFFF)
      {
        LODWORD(v17) = -1;
      }

      return (v17 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_26;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void storeEnumTagSinglePayload for AccessibilityFocusStoreListModifier(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((*(*(*(a4 + 16) - 8) + 64) + v9 + ((v9 + 16) & ~v9)) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
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
  v19 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v7 & 0x80000000) != 0)
  {
    v21 = *(v6 + 56);

    v21((v19 + v9 + 8) & ~v9);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v20 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v20 = a2 - 1;
    }

    *v19 = v20;
  }
}

uint64_t (*protocol witness for Location.wasRead.modify in conformance AccessibilityFocusStoreLocation<A>(uint64_t a1))(uint64_t a1)
{
  *a1 = *v1;
  *(a1 + 8) = AccessibilityFocusStoreLocation.wasRead.getter() & 1;
  return protocol witness for Location.wasRead.modify in conformance AccessibilityFocusStoreLocation<A>;
}

uint64_t (*AccessibilityFocusStoreUpdateAction.init<A>(prototype:)(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  (*(v6 + 32))(v8 + v7, a1, a2);
  return partial apply for closure #1 in AccessibilityFocusStoreUpdateAction.init<A>(prototype:);
}

uint64_t closure #1 in AccessibilityFocusStoreUpdateAction.init<A>(prototype:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AccessibilityFocusStore.Entry();
  v13 = type metadata accessor for Optional();
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v19 - v15;
  (*(v9 + 16))(v11, a4, a5, v14);
  (*(v9 + 32))(v16, v11, a5);
  v17 = type metadata accessor for AccessibilityFocusStore.Entry();
  *&v16[*(v17 + 36)] = a1;
  *&v16[*(v17 + 40)] = a2;
  (*(*(v12 - 8) + 56))(v16, 0, 1, v12);
  type metadata accessor for AccessibilityFocusStore.Key();

  swift_getWitnessTable();
  return PropertyList.subscript.setter();
}

uint64_t AccessibilityFocusStoreListModifier.ItemFilter.updateValue()(uint64_t a1)
{
  v105[1] = *MEMORY[0x1E69E9840];
  v84 = *(*(a1 + 16) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v83 = &v77[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v85 = *(v4 + 24);
  v86 = v5;
  v6 = type metadata accessor for AccessibilityFocusStoreListModifier();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v77[-v8];
  v10 = *(v1 + 4);
  LODWORD(v102) = *(v1 + 8);
  v11 = *(v1 + 24);
  v93 = *(v1 + 16);
  v87 = v1;
  Value = AGGraphGetValue();
  v13 = MEMORY[0x1E69E7CC0];
  if ((*Value & 1) == 0)
  {
    v105[0] = MEMORY[0x1E69E7CC0];
    return AGGraphSetOutputValue();
  }

  v14 = AGGraphGetValue();
  v79 = v15;
  v16 = *(v7 + 16);
  v82 = v9;
  v81 = v6;
  v16(v9, v14, v6);
  v99 = *MEMORY[0x1E698D3F8];
  if (v99 == v10)
  {
    v17 = 0;
  }

  else
  {
    AGGraphGetValue();
  }

  if (v17)
  {
    v13 = v17;
  }

  v80 = v13 >> 62;
  if (v13 >> 62)
  {
LABEL_107:
    v19 = __CocoaSet.count.getter();
  }

  else
  {
    v19 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = MEMORY[0x1E69E7CC0];
  v97 = v13;
  if (v19)
  {
    v105[0] = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19 & ~(v19 >> 63), 0);
    if (v19 < 0)
    {
      __break(1u);
      goto LABEL_109;
    }

    v21 = 0;
    v20 = v105[0];
    v22 = v13 & 0xC000000000000001;
    do
    {
      if (v22)
      {
        v23 = MEMORY[0x18D00E9C0](v21, v97);
      }

      else
      {
        v23 = *(v97 + 8 * v21 + 32);
      }

      v24 = *&v23[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_id];

      v105[0] = v20;
      v2 = *(v20 + 16);
      v25 = *(v20 + 24);
      if (v2 >= v25 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v2 + 1, 1);
        v20 = v105[0];
      }

      ++v21;
      *(v20 + 16) = v2 + 1;
      *(v20 + 8 * v2 + 32) = v24;
    }

    while (v19 != v21);

    v13 = v97;
  }

  *(v87 + 24) = v20;
  v26 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI9NamespaceV2IDV_Tt1g5(v20, v11);

  v27 = static AccessibilityEnabledTechnology.focusSupportingTechnologies.getter();
  v28 = *(v27 + 16);
  v89 = v7;
  v11 = v93;
  v91 = v28;
  v78 = v26;
  if (!v28)
  {

    v29 = MEMORY[0x1E69E7CC8];
    goto LABEL_70;
  }

  v96 = v13 & 0xFFFFFFFFFFFFFF8;
  if (v80)
  {
    v101 = __CocoaSet.count.getter();
  }

  else
  {
    v101 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v30 = 0;
  v90 = v27 + 32;
  v98 = v13 & 0xC000000000000001;
  v95 = v13 + 32;
  v29 = MEMORY[0x1E69E7CC8];
  v88 = v27;
  while (2)
  {
    if (v30 >= *(v27 + 16))
    {
      goto LABEL_104;
    }

    v11 = *(v90 + v30);
    if (!v101)
    {
LABEL_65:
      v51 = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v52)
      {
        v53 = v51;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v105[0] = v29;
        if (!isUniquelyReferenced_nonNull_native)
        {
          specialized _NativeDictionary.copy()();
          v29 = v105[0];
        }

        specialized _NativeDictionary._delete(at:)(v53, v29);
      }

      goto LABEL_27;
    }

    v92 = v30;
    v94 = v29;
    v7 = 0;
    v32 = 1 << (v11 & 0xF);
    if (v11 > 0xF)
    {
      v32 = 0;
    }

    v100 = v32;
    v33 = 4;
    do
    {
      if (v98)
      {
        v34 = MEMORY[0x18D00E9C0](v7, v13);
      }

      else
      {
        if (v7 >= *(v96 + 16))
        {
          goto LABEL_103;
        }

        v34 = *(v95 + 8 * v7);
      }

      v35 = v34;
      if (__OFADD__(v7++, 1))
      {
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
        goto LABEL_107;
      }

      v37 = v11;
      if (v99 == v102 || (v38 = *AGGraphGetValue(), , !v38))
      {
        v39 = MEMORY[0x1E69E7CC0];
        _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI30AccessibilityEnabledTechnologyO_AC0E5FocusV6TargetVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

        v38 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI30AccessibilityEnabledTechnologyO_AC0E5FocusV6TargetVTt0g5Tf4g_n(v39);
      }

      if (one-time initialization token for focusSupportingTechnologies != -1)
      {
        swift_once();
      }

      v40 = AccessibilityTechnologySet.list.getter(static AccessibilityTechnologies.focusSupportingTechnologies & v100);
      v11 = *(v40 + 16);
      v41 = v40 + 32;
      v2 = v35;

      if (v11)
      {
        v42 = 0;
        while (1)
        {
          if (*(v38 + 16))
          {
            v43 = specialized __RawDictionaryStorage.find<A>(_:)(*(v41 + v42));
            if (v44)
            {
              outlined init with copy of AccessibilityFocus.Target(*(v38 + 56) + 8 * v43, &v104);
              outlined init with take of AccessibilityFocus.Target(&v104, v105);
              v45 = AccessibilityFocus.Target.match(focusStoreNode:)(v2);
              outlined destroy of AccessibilityFocus.Target(v105);
              if (v45 != 4)
              {
                break;
              }
            }
          }

          if (v11 == ++v42)
          {
            goto LABEL_52;
          }
        }

        v11 = v42;
LABEL_52:
        v13 = v97;
      }

      v46 = *(v40 + 16);
      if (v11 == v46)
      {

        swift_bridgeObjectRelease_n();
        v11 = v37;
      }

      else
      {
        if (v11 >= v46)
        {
          goto LABEL_102;
        }

        if (!*(v38 + 16))
        {
          goto LABEL_110;
        }

        v47 = specialized __RawDictionaryStorage.find<A>(_:)(*(v41 + v11));
        if ((v48 & 1) == 0)
        {
          goto LABEL_110;
        }

        outlined init with copy of AccessibilityFocus.Target(*(v38 + 56) + 8 * v47, &v104);
        outlined init with take of AccessibilityFocus.Target(&v104, v105);
        v49 = AccessibilityFocus.Target.match(focusStoreNode:)(v2);
        outlined destroy of AccessibilityFocus.Target(v105);

        if (v49 == 4)
        {
          goto LABEL_111;
        }

        v11 = v37;
        if (v33 == 4)
        {
        }

        else
        {
          v50 = specialized AccessibilityFocus.Match.takesPriority(over:)(v49);

          if (!v50)
          {
            v49 = v33;
          }
        }

        v33 = v49;
        if (!v49)
        {
          LOBYTE(v33) = 0;
          v27 = v88;
          v7 = v89;
          v29 = v94;
          v30 = v92;
          goto LABEL_26;
        }
      }
    }

    while (v7 != v101);
    v27 = v88;
    v7 = v89;
    v29 = v94;
    v30 = v92;
    if (v33 == 4)
    {
      goto LABEL_65;
    }

LABEL_26:
    v31 = swift_isUniquelyReferenced_nonNull_native();
    v105[0] = v29;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v33, v11, v31);
    v29 = v105[0];
LABEL_27:
    ++v30;
    v11 = v93;
    if (v30 != v91)
    {
      continue;
    }

    break;
  }

LABEL_70:
  if ((_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI30AccessibilityEnabledTechnologyO_AC0D5FocusV5MatchOTt1g5(v29, v11) & 1) == 0)
  {

    *(v87 + 16) = v29;
    v11 = v29;
    goto LABEL_75;
  }

  if ((((v79 & 1) == 0) & v78) != 1)
  {
LABEL_75:
    v56 = v81;
    goto LABEL_76;
  }

  OutputValue = AGGraphGetOutputValue();
  v56 = v81;
  if (OutputValue)
  {
    (*(v7 + 8))(v82, v81);
  }

LABEL_76:
  v93 = v11;
  v57 = v83;
  v58 = v86;
  (*(v84 + 16))(v83, &v82[*(v56 + 36)], v86);
  AccessibilityFocusStoreUpdateAction.init<A>(prototype:)(v57, v58, v85);
  v60 = v59;
  DisplayList.Version.init(forUpdate:)();
  v61 = v105[0];
  type metadata accessor for AccessibilityFocusState.Binding();
  v62 = AccessibilityFocusState.Binding.propertyID.getter();
  if (v80)
  {
    v13 = __CocoaSet.count.getter();
  }

  else
  {
    v13 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v13)
  {
    v101 = v61;
    v102 = v60;
    v94 = v29;
    v104 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13 & ~(v13 >> 63), 0);
    if ((v13 & 0x8000000000000000) == 0)
    {
      v63 = 0;
      v7 = v104;
      v64 = v97 & 0xC000000000000001;
      v11 = v97 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v64)
        {
          v65 = MEMORY[0x18D00E9C0](v63, v97);
        }

        else
        {
          if ((v63 & 0x8000000000000000) != 0)
          {
            goto LABEL_105;
          }

          if (v63 >= *(v11 + 16))
          {
            goto LABEL_106;
          }

          v65 = *(v97 + 8 * v63 + 32);
        }

        v66 = v65;
        swift_unknownObjectWeakInit();
        swift_unknownObjectWeakAssign();

        v104 = v7;
        v68 = *(v7 + 16);
        v67 = *(v7 + 24);
        v2 = v68 + 1;
        if (v68 >= v67 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v67 > 1), v68 + 1, 1);
          v7 = v104;
        }

        ++v63;
        *(v7 + 16) = v2;
        outlined init with take of WeakBox<AccessibilityNode>(v103, v7 + 8 * v68 + 32);
      }

      while (v13 != v63);
      v104 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13 & ~(v13 >> 63), 0);
      v69 = 0;
      v70 = v104;
      do
      {
        if (v64)
        {
          v71 = MEMORY[0x18D00E9C0](v69, v97);
        }

        else
        {
          v71 = *(v97 + 8 * v69 + 32);
        }

        v72 = *&v71[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_id];

        v104 = v70;
        v74 = *(v70 + 16);
        v73 = *(v70 + 24);
        if (v74 >= v73 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v73 > 1), v74 + 1, 1);
          v70 = v104;
        }

        ++v69;
        *(v70 + 16) = v74 + 1;
        *(v70 + 8 * v74 + 32) = v72;
      }

      while (v13 != v69);

      v61 = v101;
      v60 = v102;
      goto LABEL_99;
    }

LABEL_109:
    __break(1u);
LABEL_110:

    swift_bridgeObjectRelease_n();
LABEL_111:
    __break(1u);
  }

  v70 = MEMORY[0x1E69E7CC0];
  v7 = MEMORY[0x1E69E7CC0];
LABEL_99:
  v75 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7SwiftUI8UniqueIDV_SayAFGTt0g5Tf4g_n(v70);

  type metadata accessor for Attribute<EnvironmentValues>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityFocusStoreList.Item>, &type metadata for AccessibilityFocusStoreList.Item, MEMORY[0x1E69E6F90]);
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_18CD63400;
  *(v76 + 32) = v61;
  *(v76 + 40) = v62;
  *(v76 + 48) = partial apply for closure #1 in AccessibilityFocusStoreUpdateAction.init<A>(prototype:);
  *(v76 + 56) = v60;
  *(v76 + 64) = v7;
  *(v76 + 72) = v75;
  *(v76 + 80) = v93;
  v105[0] = v76;

  AGGraphSetOutputValue();
  (*(v89 + 8))(v82, v81);
}

uint64_t (*AccessibilityFocusStoreListModifier.ListTransform.value.getter())()
{
  v0 = *AGGraphGetValue();
  *(swift_allocObject() + 16) = v0;

  return partial apply for closure #1 in AccessibilityFocusStoreListModifier.ListTransform.value.getter;
}

uint64_t protocol witness for Rule.value.getter in conformance AccessibilityFocusStoreListModifier<A>.ListTransform@<X0>(uint64_t (**a1)()@<X8>)
{
  AccessibilityFocusStoreListModifier.ListTransform.value.getter();
  v3 = v2;
  result = swift_allocObject();
  *(result + 16) = partial apply for closure #1 in AccessibilityFocusStoreListModifier.ListTransform.value.getter;
  *(result + 24) = v3;
  *a1 = partial apply for thunk for @escaping @callee_guaranteed (@inout AccessibilityLargeContentViewTree) -> ();
  a1[1] = result;
  return result;
}

uint64_t AccessibilityFocusStoreListModifier.init(binding:prototype:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for AccessibilityFocusState.Binding();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for AccessibilityFocusStoreListModifier();
  v10 = *(*(a3 - 8) + 32);
  v11 = a4 + *(v9 + 36);

  return v10(v11, a2, a3);
}

uint64_t outlined init with copy of WeakBox<AccessibilityNode>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Attribute<(_:)>(0, &lazy cache variable for type metadata for WeakBox<AccessibilityNode>, type metadata accessor for AccessibilityNode, MEMORY[0x1E6981A78]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of WeakBox<AccessibilityNode>(uint64_t a1)
{
  type metadata accessor for Attribute<(_:)>(0, &lazy cache variable for type metadata for WeakBox<AccessibilityNode>, type metadata accessor for AccessibilityNode, MEMORY[0x1E6981A78]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t assignWithCopy for AccessibilityFocusStoreListModifier.ItemFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t outlined init with take of WeakBox<AccessibilityNode>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Attribute<(_:)>(0, &lazy cache variable for type metadata for WeakBox<AccessibilityNode>, type metadata accessor for AccessibilityNode, MEMORY[0x1E6981A78]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t destroy for AccessibilityFocusStoreList.Item()
{
}

uint64_t initializeWithCopy for AccessibilityFocusStoreList.Item(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  *(a1 + 48) = *(a2 + 48);

  return a1;
}

void *assignWithCopy for AccessibilityFocusStoreList.Item(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;

  a1[4] = a2[4];

  a1[5] = a2[5];

  a1[6] = a2[6];

  return a1;
}

uint64_t assignWithTake for AccessibilityFocusStoreList.Item(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityFocusStoreList.Item(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for AccessibilityFocusStoreList.Item(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t closure #1 in PlatformSearchFieldStyle.Implementation.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SearchFieldState(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UIKitSearchFieldAdaptor(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - v11;
  _s7SwiftUI24SearchFieldConfigurationVWOcTm_1(a1, &v17 - v11, type metadata accessor for SearchFieldConfiguration);
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_1(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0]();
  v13 = *v6;
  _s7SwiftUI16SearchFieldStateVWOhTm_3(v6, type metadata accessor for SearchFieldState);
  v14 = v13 == 2 || (v13 & 1) == 0;
  _s7SwiftUI24SearchFieldConfigurationVWOcTm_1(v12, v9, type metadata accessor for UIKitSearchFieldAdaptor);
  _s7SwiftUI24SearchFieldConfigurationVWOcTm_1(v9, a2, type metadata accessor for UIKitSearchFieldAdaptor);
  type metadata accessor for (UIKitSearchFieldAdaptor, SearchFieldConfiguration.Suggestions?)();
  *(a2 + *(v15 + 48)) = v14;
  _s7SwiftUI16SearchFieldStateVWOhTm_3(v12, type metadata accessor for UIKitSearchFieldAdaptor);
  return _s7SwiftUI16SearchFieldStateVWOhTm_3(v9, type metadata accessor for UIKitSearchFieldAdaptor);
}

uint64_t protocol witness for View.body.getter in conformance PlatformSearchFieldStyle.Implementation@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  type metadata accessor for _VariadicView.Tree<_VStackLayout, TupleView<(UIKitSearchFieldAdaptor, SearchFieldConfiguration.Suggestions?)>>();
  return closure #1 in PlatformSearchFieldStyle.Implementation.body.getter(v1, a1 + *(v3 + 44));
}

void *initializeBufferWithCopyOfBuffer for PlatformSearchFieldStyle.Implementation(void *a1, void *a2)
{
  v4 = type metadata accessor for SearchFieldConfiguration(0);
  v5 = *(*(v4 - 8) + 80);
  v6 = *a2;
  *a1 = *a2;
  if ((v5 & 0x20000) != 0)
  {
    a1 = (v6 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = v4;
    a1[1] = a2[1];
    _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_1(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
    v9 = *(v8 + 32);
    v10 = a1 + v9;
    v11 = a2 + v9;
    *v10 = *(a2 + v9);
    v10[1] = *(a2 + v9 + 1);
    *(v10 + 1) = *(a2 + v9 + 2);
    v10[8] = *(a2 + v9 + 8);
    *(v10 + 1) = *(a2 + v9 + 4);
    v12 = type metadata accessor for SearchFieldState(0);
    v13 = v12[9];
    v14 = type metadata accessor for AttributedString();
    v32 = *(*(v14 - 8) + 16);

    v32(&v10[v13], &v11[v13], v14);
    v15 = v7;
    v10[v12[10]] = v11[v12[10]];
    v16 = v12[11];
    v17 = &v10[v16];
    v18 = &v11[v16];
    *v17 = *v18;
    v17[4] = v18[4];
    v19 = *(v7 + 24);
    v20 = a1 + v19;
    v21 = a2 + v19;
    v22 = v21[8];
    if (v22 == 255)
    {
      *v20 = *v21;
      v20[8] = v21[8];
    }

    else
    {
      v23 = *v21;
      v24 = v22 & 1;
      outlined copy of PlatformItemCollection.Storage(*v21, v22 & 1);
      *v20 = v23;
      v20[8] = v24;
    }

    *(a1 + *(v15 + 28)) = *(a2 + *(v15 + 28));
    v25 = *(v15 + 32);
    v26 = a1 + v25;
    v27 = a2 + v25;
    v28 = *(a2 + v25);
    v29 = *(v27 + 1);
    v30 = v27[16];
    outlined copy of Text.Storage(v28, v29, v30);
    *v26 = v28;
    *(v26 + 1) = v29;
    v26[16] = v30;
    *(v26 + 3) = *(v27 + 3);
  }

  return a1;
}

uint64_t destroy for PlatformSearchFieldStyle.Implementation(uint64_t a1)
{

  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_1(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  v3 = *(v2 + 32);
  v4 = a1 + *(type metadata accessor for SearchFieldState(0) + 36);
  v5 = type metadata accessor for AttributedString();
  (*(*(v5 - 8) + 8))(v4 + v3, v5);
  v6 = type metadata accessor for SearchFieldConfiguration(0);
  v7 = a1 + *(v6 + 24);
  v8 = *(v7 + 8);
  if (v8 != 255)
  {
    outlined consume of PlatformItemCollection.Storage(*v7, v8 & 1);
  }

  outlined consume of Text.Storage(*(a1 + *(v6 + 32)), *(a1 + *(v6 + 32) + 8), *(a1 + *(v6 + 32) + 16));
}

void *initializeWithCopy for PlatformSearchFieldStyle.Implementation(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_1(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  v6 = *(v5 + 32);
  v7 = a1 + v6;
  v8 = a2 + v6;
  *v7 = *(a2 + v6);
  v7[1] = *(a2 + v6 + 1);
  *(v7 + 1) = *(a2 + v6 + 2);
  v7[8] = *(a2 + v6 + 8);
  *(v7 + 1) = *(a2 + v6 + 4);
  v9 = type metadata accessor for SearchFieldState(0);
  v10 = v9[9];
  v11 = type metadata accessor for AttributedString();
  v12 = *(*(v11 - 8) + 16);

  v12(&v7[v10], &v8[v10], v11);
  v7[v9[10]] = v8[v9[10]];
  v13 = v9[11];
  v14 = &v7[v13];
  v15 = &v8[v13];
  v14[4] = v15[4];
  *v14 = *v15;
  v16 = type metadata accessor for SearchFieldConfiguration(0);
  v17 = v16[6];
  v18 = a1 + v17;
  v19 = a2 + v17;
  v20 = v19[8];
  if (v20 == 255)
  {
    *v18 = *v19;
    v18[8] = v19[8];
  }

  else
  {
    v21 = *v19;
    v22 = v20 & 1;
    outlined copy of PlatformItemCollection.Storage(*v19, v20 & 1);
    *v18 = v21;
    v18[8] = v22;
  }

  *(a1 + v16[7]) = *(a2 + v16[7]);
  v23 = v16[8];
  v24 = a1 + v23;
  v25 = a2 + v23;
  v26 = *(a2 + v23);
  v27 = *(v25 + 1);
  v28 = v25[16];
  outlined copy of Text.Storage(v26, v27, v28);
  *v24 = v26;
  *(v24 + 1) = v27;
  v24[16] = v28;
  *(v24 + 3) = *(v25 + 3);

  return a1;
}

void *assignWithCopy for PlatformSearchFieldStyle.Implementation(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_1(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  v5 = *(v4 + 32);
  v6 = a1 + v5;
  v7 = a2 + v5;
  *v6 = *(a2 + v5);
  v6[1] = *(a2 + v5 + 1);
  v6[2] = *(a2 + v5 + 2);
  v6[3] = *(a2 + v5 + 3);
  LODWORD(v5) = *(a2 + v5 + 4);
  v6[8] = v7[8];
  *(v6 + 1) = v5;
  v8 = type metadata accessor for SearchFieldState(0);
  v9 = v8[9];
  v10 = type metadata accessor for AttributedString();
  (*(*(v10 - 8) + 24))(&v6[v9], &v7[v9], v10);
  v6[v8[10]] = v7[v8[10]];
  v11 = v8[11];
  v12 = &v6[v11];
  v13 = &v7[v11];
  *v12 = *v13;
  v12[4] = v13[4];
  v14 = type metadata accessor for SearchFieldConfiguration(0);
  v15 = v14[6];
  v16 = a1 + v15;
  v17 = a2 + v15;
  v18 = *(a1 + v15 + 8);
  v19 = *(a2 + v15 + 8);
  if (v18 == 255)
  {
    if (v19 == 255)
    {
      v27 = *v17;
      *(v16 + 8) = v17[8];
      *v16 = v27;
    }

    else
    {
      v24 = *v17;
      v25 = v19 & 1;
      outlined copy of PlatformItemCollection.Storage(v24, v19 & 1);
      *v16 = v24;
      *(v16 + 8) = v25;
    }
  }

  else if (v19 == 255)
  {
    outlined destroy of PlatformItemCollection(v16);
    v26 = v17[8];
    *v16 = *v17;
    *(v16 + 8) = v26;
  }

  else
  {
    v20 = *v17;
    v21 = v19 & 1;
    outlined copy of PlatformItemCollection.Storage(v20, v19 & 1);
    v22 = *v16;
    v23 = *(v16 + 8);
    *v16 = v20;
    *(v16 + 8) = v21;
    outlined consume of PlatformItemCollection.Storage(v22, v23);
  }

  *(a1 + v14[7]) = *(a2 + v14[7]);
  v28 = v14[8];
  v29 = a1 + v28;
  v30 = a2 + v28;
  v31 = *(a2 + v28);
  v32 = *(v30 + 1);
  v33 = v30[16];
  outlined copy of Text.Storage(v31, v32, v33);
  v34 = *v29;
  v35 = *(v29 + 1);
  v36 = v29[16];
  *v29 = v31;
  *(v29 + 1) = v32;
  v29[16] = v33;
  outlined consume of Text.Storage(v34, v35, v36);
  *(v29 + 3) = *(v30 + 3);

  return a1;
}

void *initializeWithTake for PlatformSearchFieldStyle.Implementation(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_1(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  v6 = *(v5 + 32);
  v7 = a1 + v6;
  v8 = a2 + v6;
  *v7 = *(a2 + v6);
  v7[1] = *(a2 + v6 + 1);
  *(v7 + 1) = *(a2 + v6 + 2);
  v7[8] = *(a2 + v6 + 8);
  *(v7 + 1) = *(a2 + v6 + 4);
  v9 = type metadata accessor for SearchFieldState(0);
  v10 = v9[9];
  v11 = type metadata accessor for AttributedString();
  (*(*(v11 - 8) + 32))(&v7[v10], &v8[v10], v11);
  v7[v9[10]] = v8[v9[10]];
  v12 = v9[11];
  v13 = &v7[v12];
  v14 = &v8[v12];
  v13[4] = v14[4];
  *v13 = *v14;
  v15 = type metadata accessor for SearchFieldConfiguration(0);
  v16 = v15[6];
  v17 = a1 + v16;
  v18 = a2 + v16;
  *v17 = *v18;
  v17[8] = v18[8];
  *(a1 + v15[7]) = *(a2 + v15[7]);
  v19 = v15[8];
  v20 = (a1 + v19);
  v21 = (a2 + v19);
  v22 = v21[1];
  *v20 = *v21;
  v20[1] = v22;
  return a1;
}

void *assignWithTake for PlatformSearchFieldStyle.Implementation(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_1(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  v5 = *(v4 + 32);
  v6 = a1 + v5;
  v7 = a2 + v5;
  *v6 = *(a2 + v5);
  v6[1] = *(a2 + v5 + 1);
  *(v6 + 1) = *(a2 + v5 + 2);
  v6[8] = *(a2 + v5 + 8);
  *(v6 + 1) = *(a2 + v5 + 4);
  v8 = type metadata accessor for SearchFieldState(0);
  v9 = v8[9];
  v10 = type metadata accessor for AttributedString();
  (*(*(v10 - 8) + 40))(&v6[v9], &v7[v9], v10);
  v6[v8[10]] = v7[v8[10]];
  v11 = v8[11];
  v12 = &v6[v11];
  v13 = &v7[v11];
  *v12 = *v13;
  v12[4] = v13[4];
  v14 = type metadata accessor for SearchFieldConfiguration(0);
  v15 = v14[6];
  v16 = a1 + v15;
  v17 = a2 + v15;
  v18 = *(a1 + v15 + 8);
  if (v18 == 255)
  {
    goto LABEL_5;
  }

  v19 = v17[8];
  if (v19 == 255)
  {
    outlined destroy of PlatformItemCollection(v16);
LABEL_5:
    *v16 = *v17;
    *(v16 + 8) = v17[8];
    goto LABEL_6;
  }

  v20 = *v16;
  *v16 = *v17;
  *(v16 + 8) = v19 & 1;
  outlined consume of PlatformItemCollection.Storage(v20, v18 & 1);
LABEL_6:
  *(a1 + v14[7]) = *(a2 + v14[7]);
  v21 = v14[8];
  v22 = a1 + v21;
  v23 = a2 + v21;
  LOBYTE(v21) = v23[16];
  v24 = *v22;
  v25 = *(v22 + 1);
  v26 = v22[16];
  *v22 = *v23;
  v22[16] = v21;
  outlined consume of Text.Storage(v24, v25, v26);
  *(v22 + 3) = *(v23 + 3);

  return a1;
}

uint64_t type metadata accessor for PlatformSearchFieldStyle.Implementation()
{
  result = type metadata singleton initialization cache for PlatformSearchFieldStyle.Implementation;
  if (!type metadata singleton initialization cache for PlatformSearchFieldStyle.Implementation)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata accessor for _VariadicView.Tree<_VStackLayout, TupleView<(UIKitSearchFieldAdaptor, SearchFieldConfiguration.Suggestions?)>>()
{
  if (!lazy cache variable for type metadata for _VariadicView.Tree<_VStackLayout, TupleView<(UIKitSearchFieldAdaptor, SearchFieldConfiguration.Suggestions?)>>)
  {
    _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_1(255, &lazy cache variable for type metadata for TupleView<(UIKitSearchFieldAdaptor, SearchFieldConfiguration.Suggestions?)>, type metadata accessor for (UIKitSearchFieldAdaptor, SearchFieldConfiguration.Suggestions?), MEMORY[0x1E6981F40]);
    v0 = type metadata accessor for _VariadicView.Tree();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _VariadicView.Tree<_VStackLayout, TupleView<(UIKitSearchFieldAdaptor, SearchFieldConfiguration.Suggestions?)>>);
    }
  }
}

void type metadata accessor for (UIKitSearchFieldAdaptor, SearchFieldConfiguration.Suggestions?)()
{
  if (!lazy cache variable for type metadata for (UIKitSearchFieldAdaptor, SearchFieldConfiguration.Suggestions?))
  {
    type metadata accessor for UIKitSearchFieldAdaptor(255);
    type metadata accessor for SearchFieldConfiguration.Suggestions?();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (UIKitSearchFieldAdaptor, SearchFieldConfiguration.Suggestions?));
    }
  }
}

void type metadata accessor for SearchFieldConfiguration.Suggestions?()
{
  if (!lazy cache variable for type metadata for SearchFieldConfiguration.Suggestions?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for SearchFieldConfiguration.Suggestions?);
    }
  }
}

uint64_t lazy protocol witness table accessor for type PlatformSearchFieldStyle.Implementation and conformance PlatformSearchFieldStyle.Implementation(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata accessor for VStack<TupleView<(UIKitSearchFieldAdaptor, SearchFieldConfiguration.Suggestions?)>>()
{
  if (!lazy cache variable for type metadata for VStack<TupleView<(UIKitSearchFieldAdaptor, SearchFieldConfiguration.Suggestions?)>>)
  {
    _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_1(255, &lazy cache variable for type metadata for TupleView<(UIKitSearchFieldAdaptor, SearchFieldConfiguration.Suggestions?)>, type metadata accessor for (UIKitSearchFieldAdaptor, SearchFieldConfiguration.Suggestions?), MEMORY[0x1E6981F40]);
    lazy protocol witness table accessor for type TupleView<(UIKitSearchFieldAdaptor, SearchFieldConfiguration.Suggestions?)> and conformance TupleView<A>();
    v0 = type metadata accessor for VStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for VStack<TupleView<(UIKitSearchFieldAdaptor, SearchFieldConfiguration.Suggestions?)>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TupleView<(UIKitSearchFieldAdaptor, SearchFieldConfiguration.Suggestions?)> and conformance TupleView<A>()
{
  result = lazy protocol witness table cache variable for type TupleView<(UIKitSearchFieldAdaptor, SearchFieldConfiguration.Suggestions?)> and conformance TupleView<A>;
  if (!lazy protocol witness table cache variable for type TupleView<(UIKitSearchFieldAdaptor, SearchFieldConfiguration.Suggestions?)> and conformance TupleView<A>)
  {
    _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_1(255, &lazy cache variable for type metadata for TupleView<(UIKitSearchFieldAdaptor, SearchFieldConfiguration.Suggestions?)>, type metadata accessor for (UIKitSearchFieldAdaptor, SearchFieldConfiguration.Suggestions?), MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TupleView<(UIKitSearchFieldAdaptor, SearchFieldConfiguration.Suggestions?)> and conformance TupleView<A>);
  }

  return result;
}

uint64_t NavigationPath.updatePossibilities(from:to:into:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v8 = result;
  v10 = *v3;
  v9 = *(v3 + 8);
  v11 = *(v3 + 16);
  if (*(v3 + 24))
  {
    *&v16 = *v3;
    *(&v16 + 1) = v9;
    v17 = v11;

    NavigationPath.CodableRepresentation.updatePossibilities(from:to:into:)(v8, a2, a3);
    v13 = v16;
    v14 = v11;
    v15 = 1;
    if (!v5)
    {
      return NavigationPath.items.setter(&v13);
    }

    NavigationPath.items.setter(&v13);
    return swift_willThrow();
  }

  if (a2 < result)
  {
    goto LABEL_19;
  }

  v18 = *(v3 + 16);

  if (v8 == a2)
  {
    return outlined consume of NavigationPath.Representation(v10, v9, v18, 0);
  }

  while (1)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x18D00E9C0](v8, v10);
      goto LABEL_11;
    }

    if ((v8 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v8 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

    v12 = *(v10 + 8 * v8 + 32);

LABEL_11:
    (*(*v12 + 168))(a3, v8);
    if (v5)
    {
      outlined consume of NavigationPath.Representation(v10, v9, v18, 0);
    }

    ++v8;

    if (a2 == v8)
    {
      return outlined consume of NavigationPath.Representation(v10, v9, v18, 0);
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

BOOL NavigationPath.isEmpty.getter()
{
  v1 = *(v0 + 32);
  if (!NavigationPath.Representation.isEmpty.getter())
  {
    return 0;
  }

  if (v1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v2 == 0;
}

uint64_t NavigationPath.append<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ItemBox();
  (*(v4 + 16))(v6, a1, a2);
  ItemBox.__allocating_init(_:)(v6);
  NavigationPath.append<A>(box:)();
}

{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[0] = v7;
  v12[1] = v8;
  v12[2] = v9;
  v12[3] = v10;
  type metadata accessor for CodableItemBox();
  (*(v4 + 16))(v6, a1, a2);
  CodableItemBox.__allocating_init(_:)(v6);
  NavigationPath.append<A>(box:)();
}

Swift::Void __swiftcall NavigationPath.removeLast(_:)(Swift::Int a1)
{
  v6 = *(v4 + 32);
  if (v6 >> 62)
  {
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_7;
    }

    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_7;
    }
  }

  if (v7 >= a1)
  {
    v8 = a1;
  }

  else
  {
    v8 = v7;
  }

  specialized RangeReplaceableCollection<>.removeLast(_:)(v8, v1, v2, v3);
  v9 = __OFSUB__(a1, v8);
  a1 -= v8;
  if (v9)
  {
    __break(1u);
    return;
  }

LABEL_7:
  if (a1 >= 1)
  {
    v10 = *(v4 + 8);
    v11 = *(v4 + 16);
    v12 = *(v4 + 24);
    *&v19 = *v4;
    *(&v19 + 1) = v10;
    v20 = v11;
    v21 = v12;
    outlined copy of NavigationPath.Representation(v19, v10, v11, v12);
    NavigationPath.Representation.removeLast(_:)(a1, v13, v14, v15);
    v16 = v19;
    v17 = v20;
    v18 = v21;
    NavigationPath.items.setter(&v16);
  }
}

uint64_t NavigationPath.view<A>(basedOn:applying:index:apparentPosition:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(v8 + 24))
  {
    goto LABEL_13;
  }

  v12 = *v8;
  v11 = *(v8 + 8);
  v13 = *(v8 + 16);
  v28 = v11;
  v26 = *v8 + 8 * a5;
  v27 = *v8 & 0xC000000000000001;
  if (!v27)
  {
    if ((a5 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) > a5)
    {
      v20 = a3;
      v21 = a6;
      v22 = a4;
      v23 = a7;
      v24 = a8;
      v25 = *(*v8 + 8 * a5 + 32);
      outlined copy of NavigationPath.Representation(v12, v11, v13, 0);

      goto LABEL_7;
    }

    __break(1u);
LABEL_13:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v20 = a3;
  v21 = a6;
  v22 = a4;
  v23 = a7;
  v24 = a8;

  v25 = MEMORY[0x18D00E9C0](a5, v12);
LABEL_7:
  v14 = *(a2 + 48);
  v29[2] = *(a2 + 32);
  v29[3] = v14;
  v29[4] = *(a2 + 64);
  v30 = *(a2 + 80);
  v15 = *(a2 + 16);
  v29[0] = *a2;
  v29[1] = v15;
  v16 = (*(*v25 + 176))(v29, v21, v20, v22, v23, v24);

  if (v27)
  {
    v17 = MEMORY[0x18D00E9C0](a5, v12);
  }

  else
  {
    v17 = *(v26 + 32);
  }

  v18 = outlined consume of NavigationPath.Representation(v12, v28, v13, 0);
  (*(*v17 + 112))(v18);

  return v16;
}

uint64_t NavigationPath.contains<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v6 = *v3;
  if (*(v3 + 24))
  {
    v7 = *(v3 + 32);
    if (NavigationPath.CodableRepresentation.contains<A>(_:)(a1, a2, a3))
    {
      return 1;
    }

    else
    {
      v21 = v5;
      if (v7 >> 62)
      {
        v17 = __CocoaSet.count.getter();
      }

      else
      {
        v17 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v6 = 0;
      v5 = a2;
      v11 = a1;
      do
      {
        v10 = v17 != v6;
        if (v17 == v6)
        {
          break;
        }

        if ((v7 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x18D00E9C0](v6, v7);
          if (__OFADD__(v6, 1))
          {
            goto LABEL_29;
          }
        }

        else
        {
          if (v6 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_31;
          }

          v18 = *(v7 + 8 * v6 + 32);

          if (__OFADD__(v6, 1))
          {
LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
            goto LABEL_32;
          }
        }

        v4 = (*(*v18 + 152))(v11, v5, v21);

        ++v6;
      }

      while ((v4 & 1) == 0);
    }
  }

  else
  {
    v19 = *(v3 + 8);
    v20 = *(v3 + 16);
    v22 = a1;
    v11 = a2;
    v4 = v6 & 0xFFFFFFFFFFFFFF8;
    if (v6 >> 62)
    {
LABEL_32:
      v12 = __CocoaSet.count.getter();
    }

    else
    {
      v12 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = 0;
    do
    {
      v10 = v12 != v13;
      if (v12 == v13)
      {
        break;
      }

      if ((v6 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x18D00E9C0](v13, v6);
        if (__OFADD__(v13, 1))
        {
          goto LABEL_15;
        }
      }

      else
      {
        if (v13 >= *(v4 + 16))
        {
          goto LABEL_30;
        }

        v14 = *(v6 + 8 * v13 + 32);

        if (__OFADD__(v13, 1))
        {
LABEL_15:
          __break(1u);
          break;
        }
      }

      v15 = (*(*v14 + 152))(v22, v11, v5);

      ++v13;
    }

    while ((v15 & 1) == 0);
    outlined consume of NavigationPath.Representation(v6, v19, v20, 0);
  }

  return v10;
}

uint64_t specialized RangeReplaceableCollection<>.removeLast(_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    if (result < 0)
    {
      __break(1u);
    }

    else if (!(*v4 >> 62))
    {
      v5 = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v6 = -v5;
      if (!__OFSUB__(0, v5))
      {
        goto LABEL_5;
      }

      goto LABEL_17;
    }

    v9 = result;
    v5 = __CocoaSet.count.getter();
    result = v9;
    v6 = -v5;
    if (!__OFSUB__(0, v5))
    {
LABEL_5:
      v7 = -result;
      if (v6 <= 0 && v6 > v7)
      {
        goto LABEL_20;
      }

      result = v5 - result;
      if (!__OFADD__(v5, v7))
      {
        if (v5 >= result)
        {
          return specialized Array.replaceSubrange<A>(_:with:)(result, v5, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), a4, type metadata accessor for NavigationPath_ItemBoxBase);
        }

LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        return result;
      }

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  return result;
}

uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v9 = v8;
  v60 = a2;
  v61 = a4;
  v59 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v43 = &v42 - v14;
  v46 = a5;
  v44 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v56 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v57 = &v42 - v18;
  v19 = type metadata accessor for Optional();
  v47 = *(v19 - 8);
  v48 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v50 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v42 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v49 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v55 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a6;
  v62 = swift_getAssociatedTypeWitness();
  v51 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v31 = &v42 - v30;
  v32 = dispatch thunk of Sequence.underestimatedCount.getter();
  v63 = ContiguousArray.init()();
  v58 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v32);
  (*(v55 + 2))(v29, v52, a3);
  v61 = v31;
  v55 = a3;
  result = dispatch thunk of Sequence.makeIterator()();
  if (v32 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v32)
  {
    v34 = (v54 + 48);
    v35 = (v54 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      dispatch thunk of IteratorProtocol.next()();
      result = (*v34)(v23, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v59(v23, v57);
      if (v9)
      {
        (*(v51 + 8))(v61, v62);

        (*(v44 + 32))(v45, v57, v46);
        return (*v35)(v23, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v35)(v23, AssociatedTypeWitness);
      ContiguousArray.append(_:)();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v36 = v50;
  dispatch thunk of IteratorProtocol.next()();
  v37 = v36;
  v38 = v54;
  v39 = *(v54 + 48);
  v57 = (v54 + 48);
  v55 = v39;
  if (v39(v36, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v51 + 8))(v61, v62);
    (*(v47 + 8))(v37, v48);
    return v63;
  }

  else
  {
    v54 = *(v38 + 32);
    v40 = (v38 + 8);
    v41 = v43;
    while (1)
    {
      (v54)(v41, v37, AssociatedTypeWitness);
      v59(v41, v56);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v40)(v41, AssociatedTypeWitness);
      ContiguousArray.append(_:)();
      dispatch thunk of IteratorProtocol.next()();
      if (v55(v37, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v40)(v41, AssociatedTypeWitness);
    (*(v51 + 8))(v61, v62);

    return (*(v44 + 32))(v45, v56, v46);
  }
}

uint64_t NavigationPath.items.setter(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(v2 + 32);
  if (!(v7 >> 62))
  {
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_6:
    if (!v6)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v6)
  {
LABEL_7:
    if (!*(v4 + 16))
    {

      specialized Array.append<A>(contentsOf:)(v11);

      specialized Array.append<A>(contentsOf:)(v12);
      v9 = v3;
      goto LABEL_10;
    }

LABEL_8:
    result = outlined consume of NavigationPath.Representation(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24));
    *v2 = v3;
    *(v2 + 8) = v4;
    *(v2 + 16) = v5;
    *(v2 + 24) = v6;
    return result;
  }

  specialized Array.append<A>(contentsOf:)(v8);
  v9 = v3;
LABEL_10:
  outlined consume of NavigationPath.Representation(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24));
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *v2 = v9;
  *(v2 + 24) = 0;

  *(v2 + 32) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t NavigationPath.codable.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v9[0] = v3;
  v9[1] = v4;
  v9[2] = v5;
  v10 = v6;
  outlined copy of NavigationPath.Representation(v3, v4, v5, v6);

  return NavigationPath.CodableRepresentation.init(items:subsequentItems:)(v9, v7, a1);
}

uint64_t NavigationPath.CodableRepresentation.init(items:subsequentItems:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v4 = a3;
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v18 = *(a1 + 24);
  if (v18)
  {
    v17 = a3;
    v8 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 >> 62)
    {
LABEL_33:
      v9 = __CocoaSet.count.getter();
    }

    else
    {
      v9 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = 0;
    do
    {
      if (v9 == v10)
      {

        specialized Array.append<A>(contentsOf:)(v3);
        outlined consume of NavigationPath.Representation(v5, v6, v7, 1);
        result = outlined consume of NavigationPath.Representation(v5, v6, v7, 1);
        v16 = v7;
        v4 = v17;
        goto LABEL_28;
      }

      if ((v3 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x18D00E9C0](v10, v3);
        if (__OFADD__(v10, 1))
        {
LABEL_13:
          __break(1u);
          goto LABEL_14;
        }
      }

      else
      {
        if (v10 >= *(v8 + 16))
        {
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        v11 = *(v3 + 8 * v10 + 32);

        if (__OFADD__(v10, 1))
        {
          goto LABEL_13;
        }
      }

      v4 = (*(*v11 + 128))();

      ++v10;
    }

    while ((v4 & 1) != 0);

    v4 = v17;
LABEL_29:
    outlined consume of NavigationPath.Representation(v5, v6, v7, v18);
    result = outlined consume of NavigationPath.Representation(v5, v6, v7, v18);
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
  }

  else
  {
LABEL_14:

    v8 = v5 & 0xFFFFFFFFFFFFFF8;
    if (v5 >> 62)
    {
      v3 = __CocoaSet.count.getter();
    }

    else
    {
      v3 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = 0;
    while (v3 != v12)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x18D00E9C0](v12, v5);
        if (__OFADD__(v12, 1))
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (v12 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v13 = *(v5 + 8 * v12 + 32);

        if (__OFADD__(v12, 1))
        {
LABEL_25:
          __break(1u);
          break;
        }
      }

      v14 = (*(*v13 + 128))();

      ++v12;
      if ((v14 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    result = outlined consume of NavigationPath.Representation(v5, v6, v7, 0);
    v16 = MEMORY[0x1E69E7CC0];
    v6 = MEMORY[0x1E69E7CC0];
LABEL_28:
    *v4 = v5;
    *(v4 + 8) = v6;
    *(v4 + 16) = v16;
  }

  return result;
}

uint64_t NavigationPath.init<A>(_:)@<X0>(uint64_t a1@<X0>, unsigned int (*a2)(char *, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a4;
  v15[5] = partial apply for implicit closure #1 in NavigationPath.init<A>(_:);
  v15[6] = v10;
  v11 = type metadata accessor for NavigationPath_ItemBoxBase();
  v13 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed A.Sequence.Element) -> (@owned ItemBox<A.Sequence.Element>), v15, a2, v11, MEMORY[0x1E69E73E0], a3, MEMORY[0x1E69E7410], v12);

  result = (*(*(a2 - 1) + 8))(a1, a2);
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *a5 = v13;
  *(a5 + 24) = 0;
  *(a5 + 32) = MEMORY[0x1E69E7CC0];
  *(a5 + 40) = 0;
  return result;
}

_BYTE *implicit closure #1 in NavigationPath.init<A>(_:)(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v5 = &v7 - v4;
  type metadata accessor for ItemBox();
  (*(v3 + 16))(v5, a1, AssociatedTypeWitness);
  return ItemBox.__allocating_init(_:)(v5);
}

_BYTE *ItemBox.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 192) - 8) + 32))(&v2[*(*v2 + 208)], a1);
  v2[16] = 0;
  return v2;
}

uint64_t NavigationPath.init<A>(_:)@<X0>(uint64_t a1@<X0>, unsigned int (*a2)(char *, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = a5;
  v14[6] = a6;
  v19[2] = a2;
  v19[3] = a3;
  v19[4] = a4;
  v19[5] = a5;
  v19[6] = a6;
  v19[7] = partial apply for implicit closure #1 in NavigationPath.init<A>(_:);
  v19[8] = v14;
  v15 = type metadata accessor for NavigationPath_ItemBoxBase();
  v17 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed A.Sequence.Element) -> (@owned CodableItemBox<A.Sequence.Element>), v19, a2, v15, MEMORY[0x1E69E73E0], a3, MEMORY[0x1E69E7410], v16);

  result = (*(*(a2 - 1) + 8))(a1, a2);
  *(a7 + 8) = 0;
  *(a7 + 16) = 0;
  *a7 = v17;
  *(a7 + 24) = 0;
  *(a7 + 32) = MEMORY[0x1E69E7CC0];
  *(a7 + 40) = 0;
  return result;
}

_BYTE *implicit closure #1 in NavigationPath.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = v16 - v12;
  v16[0] = v14;
  v16[1] = a4;
  v16[2] = a5;
  v16[3] = a6;
  type metadata accessor for CodableItemBox();
  (*(v11 + 16))(v13, a1, AssociatedTypeWitness);
  return CodableItemBox.__allocating_init(_:)(v13);
}

_BYTE *CodableItemBox.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 192) - 8) + 32))(&v2[*(*v2 + 224)], a1);
  v2[16] = 0;
  return v2;
}

unint64_t NavigationPath.init(_:)@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  result = a1[2];
  if (v3 >> 62)
  {
    v6 = result;
    v7 = a2;
    v8 = __CocoaSet.count.getter();
    a2 = v7;
    v9 = v8;
    result = v6;
    if (v9)
    {
      goto LABEL_6;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_6;
  }

  if (!*(v2 + 16))
  {
    if (result >> 62)
    {
      v10 = result;
      v11 = a2;
      v12 = __CocoaSet.count.getter();
      a2 = v11;
      v13 = v12;
      result = v10;
      if (v13)
      {
        goto LABEL_6;
      }
    }

    else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    v14 = a2;

    a2 = v14;
    v2 = 0;
    result = 0;
    v5 = 0;
    v3 = MEMORY[0x1E69E7CC0];
    goto LABEL_7;
  }

LABEL_6:
  v5 = 1;
LABEL_7:
  *a2 = v3;
  *(a2 + 8) = v2;
  *(a2 + 16) = result;
  *(a2 + 24) = v5;
  *(a2 + 32) = MEMORY[0x1E69E7CC0];
  *(a2 + 40) = 0;
  return result;
}

uint64_t NavigationPath.Representation.removeLast(_:)(Swift::Int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *v4;
  v8 = *v4 >> 62;
  if ((v4[3] & 1) == 0)
  {
    v34 = *v4;
    if (!v8)
    {
      if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) < a1)
      {
        goto LABEL_26;
      }

      goto LABEL_12;
    }

LABEL_25:
    if (__CocoaSet.count.getter() < a1)
    {
LABEL_26:
      _StringGuts.grow(_:)(53);
      MEMORY[0x18D00C9B0](0xD000000000000015, 0x800000018CD45D60);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x18D00C9B0](v26);

      MEMORY[0x18D00C9B0](0xD000000000000016, 0x800000018CD45D80);
      if (!v8)
      {
        goto LABEL_45;
      }

      goto LABEL_44;
    }

LABEL_12:
    result = specialized RangeReplaceableCollection<>.removeLast(_:)(a1, a2, a3, a4);
    v5[1] = 0;
    v5[2] = 0;
    *v5 = v34;
    *(v5 + 24) = 0;
    return result;
  }

  v10 = v4[1];
  v9 = v4[2];
  v35 = *v4;
  if (v8)
  {
    v11 = __CocoaSet.count.getter();
  }

  else
  {
    v11 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = *(v10 + 16);
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_25;
  }

  v14 = v9 >> 62;
  if (!(v9 >> 62))
  {
    v15 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v16 = v13 + v15;
    if (!__OFADD__(v13, v15))
    {
      goto LABEL_7;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    _StringGuts.grow(_:)(53);
    MEMORY[0x18D00C9B0](0xD000000000000015, 0x800000018CD45D60);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v28);

    MEMORY[0x18D00C9B0](0xD000000000000016, 0x800000018CD45D80);
    if (!v8)
    {
      v29 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_36:
      v30 = *(v10 + 16);
      v31 = v29 + v30;
      if (!__OFADD__(v29, v30))
      {
        if (v14)
        {
          v32 = __CocoaSet.count.getter();
        }

        else
        {
          v32 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (!__OFADD__(v31, v32))
        {
          while (1)
          {
LABEL_45:
            v33 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x18D00C9B0](v33);

            MEMORY[0x18D00C9B0](0x736D65746920, 0xE600000000000000);
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }
        }

        __break(1u);
      }

      __break(1u);
LABEL_44:
      __CocoaSet.count.getter();
      goto LABEL_45;
    }

LABEL_35:
    v29 = __CocoaSet.count.getter();
    goto LABEL_36;
  }

  v27 = __CocoaSet.count.getter();
  v16 = v13 + v27;
  if (__OFADD__(v13, v27))
  {
    goto LABEL_30;
  }

LABEL_7:
  if (v16 < a1)
  {
    goto LABEL_31;
  }

  if (v8)
  {
    v17 = __CocoaSet.count.getter();
  }

  else
  {
    v17 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v19 = *(v10 + 16);
  v20 = v17 + v19;
  if (__OFADD__(v17, v19))
  {
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v14)
  {
    v21 = __CocoaSet.count.getter();
  }

  else
  {
    v21 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    goto LABEL_34;
  }

  if (v22 == a1)
  {
    v24 = 0;
    v25 = 0;
    v23 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    NavigationPath.CodableRepresentation.removeLast(_:)(a1);

    v23 = v35;
    v24 = v10;
    v25 = v9;
  }

  *v5 = v23;
  v5[1] = v24;
  v5[2] = v25;
  *(v5 + 24) = v22 != a1;
}

Swift::Void __swiftcall NavigationPath.CodableRepresentation.removeLast(_:)(Swift::Int a1)
{
  v3 = a1;
  v4 = *(v2[1] + 16);
  if (!v4)
  {
    goto LABEL_9;
  }

  if (v4 >= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = *(v2[1] + 16);
  }

  if (a1)
  {
    if (a1 < 0)
    {
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      return;
    }

    specialized Array.replaceSubrange<A>(_:with:)(0, v5, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
  }

  v6 = __OFSUB__(v3, v5);
  v3 -= v5;
  if (v6)
  {
    __break(1u);
  }

  else
  {
LABEL_9:
    if (v3 < 1)
    {
      return;
    }

    if (!(*v2 >> 62))
    {
      v7 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v8 = -v7;
      if (!__OFSUB__(0, v7))
      {
        goto LABEL_12;
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }
  }

  v7 = __CocoaSet.count.getter();
  v8 = -v7;
  if (__OFSUB__(0, v7))
  {
    goto LABEL_24;
  }

LABEL_12:
  v9 = -v3;
  if (v8 <= 0 && v8 > v9)
  {
    goto LABEL_28;
  }

  v11 = v7 - v3;
  if (__OFADD__(v7, v9))
  {
    goto LABEL_25;
  }

  if (v7 < v11)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  specialized Array.replaceSubrange<A>(_:with:)(v11, v7, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), v1, type metadata accessor for NavigationPath_ItemBoxBase);
}

uint64_t NavigationPath.append<A>(box:)()
{
  if (*(v0 + 24))
  {

    MEMORY[0x18D00CC30](v1);
    if (*((*(v0 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  else
  {
    v3 = *(v0 + 8);
    v4 = *(v0 + 16);
    v8 = *v0;
    outlined copy of NavigationPath.Representation(v8, v3, v4, 0);

    MEMORY[0x18D00CC30](v5);
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v6[1] = 0;
    v6[2] = 0;
    v6[0] = v8;
    v7 = 0;
    return NavigationPath.items.setter(v6);
  }
}

void NavigationPath.CodableRepresentation.updatePossibilities(from:to:into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v8 = *v3;
  v9 = v3[1];
  v10 = v3[2];
  if (v8 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v12 = *(v9 + 16);
    v13 = i + v12;
    if (__OFADD__(i, v12))
    {
      break;
    }

    if (v10 >> 62)
    {
      goto LABEL_26;
    }

    v14 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v15 = __OFADD__(v13, v14);
    v9 = v13 + v14;
    if (v15)
    {
      goto LABEL_28;
    }

LABEL_6:
    if (v9 < a1)
    {
      goto LABEL_29;
    }

    if (v9 == a1)
    {
      return;
    }

    while (a1 < v9)
    {
      v16 = NavigationPath.CodableRepresentation.item(at:given:)(a1, *(a3 + 32));
      if (v5)
      {
        v10 = v5;
        v5 = 0;
        v17 = v10;
        v18 = v10;
        type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for Error);
        v19 = swift_dynamicCast();

        if (v19)
        {
          swift_willThrow();
          return;
        }

        v20 = v10;
        if (swift_dynamicCast())
        {
          if (v25 >= 2)
          {

            lazy protocol witness table accessor for type NavigationPath.Error and conformance NavigationPath.Error();
            swift_allocError();
            *v21 = v24;
            v21[1] = v25;
            swift_willThrow();

            return;
          }

          outlined consume of NavigationPath.Error(v24, v25);
        }
      }

      else
      {
        v10 = v16;
        if (a1 < a2)
        {
          (*(*v16 + 168))(a3, a1);
        }
      }

      if (v9 == ++a1)
      {
        return;
      }
    }

    __break(1u);
LABEL_24:
    ;
  }

  __break(1u);
LABEL_26:
  v22 = __CocoaSet.count.getter();
  v15 = __OFADD__(v13, v22);
  v9 = v13 + v22;
  if (!v15)
  {
    goto LABEL_6;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

uint64_t NavigationPath.CodableRepresentation.contains<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v18 = v3[2];
  v8 = *v3 & 0xFFFFFFFFFFFFFF8;
  if (*v3 >> 62)
  {
LABEL_29:
    v9 = __CocoaSet.count.getter();
  }

  else
  {
    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  for (i = 0; v9 != i; ++i)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x18D00E9C0](i, v7);
      if (__OFADD__(i, 1))
      {
LABEL_12:
        __break(1u);
        break;
      }
    }

    else
    {
      if (i >= *(v8 + 16))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v11 = *(v7 + 8 * i + 32);

      if (__OFADD__(i, 1))
      {
        goto LABEL_12;
      }
    }

    v12 = (*(*v11 + 152))(a1, a2, a3);

    if (v12)
    {
      return 1;
    }
  }

  v8 = v18 & 0xFFFFFFFFFFFFFF8;
  if (v18 >> 62)
  {
    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = 0;
  do
  {
    v14 = v7 != v13;
    if (v7 == v13)
    {
      break;
    }

    if ((v18 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x18D00E9C0](v13, v18);
      if (__OFADD__(v13, 1))
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (v13 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v15 = *(v18 + 8 * v13 + 32);

      if (__OFADD__(v13, 1))
      {
LABEL_24:
        __break(1u);
        return 1;
      }
    }

    v16 = (*(*v15 + 152))(a1, a2, a3);

    ++v13;
  }

  while ((v16 & 1) == 0);
  return v14;
}

uint64_t NavigationPath.CodableRepresentation.item(at:given:)(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v64 = a2;
  v66 = type metadata accessor for String.Encoding();
  v7 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v65 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (v9 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result > a1)
    {
      goto LABEL_3;
    }

    result = __CocoaSet.count.getter();
  }

  else
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result > a1)
    {
LABEL_3:
      if ((v9 & 0xC000000000000001) == 0)
      {
        if ((a1 & 0x8000000000000000) == 0)
        {
          if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
          {
            v11 = v9 + 8 * a1;
LABEL_33:
            v45 = *(v11 + 32);

            return v45;
          }

          goto LABEL_48;
        }

LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

LABEL_44:
      result = a1;
      v50 = v9;
      return MEMORY[0x18D00E9C0](result, v50);
    }
  }

  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_47;
  }

  v12 = v5[1];
  v13 = v12[2];
  result = v9 - v13;
  if (v9 < v13)
  {
    v59 = v5 + 1;
    v63 = (v7 + 8);
    v60 = xmmword_18CD63400;
    v61 = a1;
    v62 = v5;
    while (1)
    {
      if (!v12[2])
      {
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v14 = v12[2];
        if (!v14)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew()(v12);
        v14 = v12[2];
        if (!v14)
        {
          goto LABEL_42;
        }
      }

      v15 = v4;
      v69 = v12;
      v70 = v9;
      v16 = v14 - 1;
      v17 = &v12[4 * v14];
      v18 = v17[1];
      v68 = *v17;
      v12[2] = v16;
      v19 = v65;
      static String.Encoding.utf8.getter();
      v20 = String.data(using:allowLossyConversion:)();
      v22 = v21;

      (*v63)(v19, v66);
      if (v22 >> 60 == 15)
      {

        v54 = v69;
        *v59 = v69;
        lazy protocol witness table accessor for type NavigationPath.Error and conformance NavigationPath.Error();
        swift_allocError();
        *v55 = xmmword_18CD633F0;
        swift_willThrow();
        goto LABEL_37;
      }

      v67 = v15;
      type metadata accessor for JSONDecoder();
      swift_allocObject();
      v23 = JSONDecoder.init()();
      type metadata accessor for _ContiguousArrayStorage<(CodingUserInfoKey, Sendable)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(CodingUserInfoKey, Sendable)>, type metadata accessor for (CodingUserInfoKey, Sendable), MEMORY[0x1E69E6F90]);
      type metadata accessor for (CodingUserInfoKey, Sendable)();
      v25 = v24 - 8;
      v26 = (*(*(v24 - 8) + 80) + 32) & ~*(*(v24 - 8) + 80);
      v27 = swift_allocObject();
      *(v27 + 16) = v60;
      v28 = *(v25 + 56);
      if (one-time initialization token for navigationPathTypesByTag != -1)
      {
        v49 = v27;
        swift_once();
        v27 = v49;
      }

      v29 = v27 + v26;
      v30 = (v27 + v26 + v28);
      v31 = v27;
      v32 = type metadata accessor for CodingUserInfoKey();
      v33 = __swift_project_value_buffer(v32, static CodingUserInfoKey.navigationPathTypesByTag);
      (*(*(v32 - 8) + 16))(v29, v33, v32);
      type metadata accessor for [String : Decodable & Encodable.Type]();
      v30[3] = v34;
      v35 = v64;
      *v30 = v64;
      v36 = v35;

      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs17CodingUserInfoKeyV_s8Sendable_pTt0g5Tf4g_n(v31);
      swift_setDeallocating();
      outlined destroy of (CodingUserInfoKey, Sendable)(v29, type metadata accessor for (CodingUserInfoKey, Sendable));
      swift_deallocClassInstance();
      dispatch thunk of JSONDecoder.userInfo.setter();
      v37 = v20;
      v38 = v68;
      if (!*(v36 + 16) || (v39 = specialized __RawDictionaryStorage.find<A>(_:)(v68, v18), (v40 & 1) == 0))
      {
        v51 = v69;
        *v59 = v69;
        lazy protocol witness table accessor for type NavigationPath.Error and conformance NavigationPath.Error();
        swift_allocError();
        *v52 = v38;
        v52[1] = v18;
        swift_willThrow();

        v53 = v22;
        v54 = v51;
        outlined consume of Data?(v37, v53);
        a1 = v61;
        v5 = v62;
        goto LABEL_37;
      }

      v41 = v39;

      v42 = *(*(v36 + 56) + 24 * v41);
      v43 = v67;
      v44 = decode #1 <A>(_:) in NavigationPath.CodableRepresentation.item(at:given:)(v42, v23, v37, v22, v42);
      v4 = v43;
      a1 = v61;
      v5 = v62;
      if (v43)
      {
        break;
      }

      v45 = v44;

      MEMORY[0x18D00CC30](v46);
      if (*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      outlined consume of Data?(v37, v22);
      v47 = v70;
      if (!v70)
      {
        *v59 = v69;
        return v45;
      }

      v48 = __OFSUB__(v47, 1);
      v9 = v47 - 1;
      v12 = v69;
      if (v48)
      {
        goto LABEL_43;
      }
    }

    outlined consume of Data?(v37, v22);
    v54 = v69;
    *v59 = v69;
LABEL_37:
    v71 = 0;
    v72 = 0xE000000000000000;
    _StringGuts.grow(_:)(141);
    MEMORY[0x18D00C9B0](0xD000000000000032, 0x800000018CD45C10);
    v73 = a1;
    v56 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v56);

    MEMORY[0x18D00C9B0](0xD000000000000059, 0x800000018CD45C50);
    v45 = v72;
    MEMORY[0x18D009810](v71, v72);

    v57 = v54[2];
    result = v70;
    if (v57 < v70)
    {
      goto LABEL_51;
    }

    specialized Array.replaceSubrange<A>(_:with:)(v70, v57, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));

    v5[2] = MEMORY[0x1E69E7CC0];
    swift_willThrow();
    return v45;
  }

  v50 = v5[2];
  if ((v50 & 0xC000000000000001) != 0)
  {
    return MEMORY[0x18D00E9C0](result, v50);
  }

  if (result < 0)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (result < *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = v50 + 8 * result;
    goto LABEL_33;
  }

LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

uint64_t NavigationPath.CodableRepresentation.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (!v2)
  {
    v21 = a2;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    v5 = dispatch thunk of UnkeyedDecodingContainer.isAtEnd.getter();
    v6 = MEMORY[0x1E69E7CC0];
    if ((v5 & 1) == 0)
    {
      do
      {
        __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
        v9 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
        v11 = v10;
        __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
        v12 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
        v14 = v13;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
        }

        v16 = v6[2];
        v15 = v6[3];
        if (v16 >= v15 >> 1)
        {
          v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v6);
        }

        v6[2] = v16 + 1;
        v17 = &v6[4 * v16];
        v17[4] = v9;
        v17[5] = v11;
        v17[6] = v12;
        v17[7] = v14;
        __swift_project_boxed_opaque_existential_1(v19, v20);
      }

      while ((dispatch thunk of UnkeyedDecodingContainer.isAtEnd.getter() & 1) == 0);
    }

    __swift_destroy_boxed_opaque_existential_1(v19);
    v7 = v21;
    v8 = MEMORY[0x1E69E7CC0];
    *v21 = MEMORY[0x1E69E7CC0];
    v7[1] = v6;
    v7[2] = v8;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t NavigationPath.CodableRepresentation.encode(to:)(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  if (v5 >> 62)
  {
    goto LABEL_18;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v22 = v3;
  for (i = v4; v7; i = v4)
  {
    v26 = v5 & 0xC000000000000001;
    v4 = v5 & 0xFFFFFFFFFFFFFF8;
    v3 = v5 + 32;
    while (1)
    {
      v8 = __OFSUB__(v7--, 1);
      if (v8)
      {
        break;
      }

      if (v26)
      {
        v10 = MEMORY[0x18D00E9C0](v7, v5);
        v9 = v10;
      }

      else
      {
        if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_16;
        }

        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(v3 + 8 * v7);
      }

      (*(*v9 + 144))(v10);
      __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
      dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
      if (v2)
      {
LABEL_13:

        return __swift_destroy_boxed_opaque_existential_1(v24);
      }

      (*(*v9 + 136))(v11);
      v6 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
      dispatch thunk of UnkeyedEncodingContainer.encode(_:)();

      if (!v7)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    v7 = __CocoaSet.count.getter();
    v22 = v3;
  }

LABEL_19:
  v13 = i;
  v26 = *(i + 16);
  if (v26)
  {
    v14 = 0;
    v15 = i + 56;
    while (1)
    {
      if (v14 >= *(v13 + 16))
      {
        __break(1u);
        goto LABEL_39;
      }

      __swift_mutable_project_boxed_opaque_existential_1(v24, v25);

      dispatch thunk of UnkeyedEncodingContainer.encode(_:)();

      if (v2)
      {
        break;
      }

      v6 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
      dispatch thunk of UnkeyedEncodingContainer.encode(_:)();

      ++v14;
      v15 += 32;
      v13 = i;
      if (v26 == v14)
      {
        goto LABEL_24;
      }
    }
  }

  else
  {
LABEL_24:
    v6 = v22;
    if (v22 >> 62)
    {
      goto LABEL_42;
    }

    for (j = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = __CocoaSet.count.getter())
    {
      v26 = v6 & 0xC000000000000001;
      v17 = v6 & 0xFFFFFFFFFFFFFF8;
      v18 = v6 + 32;
      while (1)
      {
        v8 = __OFSUB__(j--, 1);
        if (v8)
        {
          break;
        }

        if (v26)
        {
          v20 = MEMORY[0x18D00E9C0](j, v22);
          v19 = v20;
        }

        else
        {
          if ((j & 0x8000000000000000) != 0)
          {
            goto LABEL_40;
          }

          if (j >= *(v17 + 16))
          {
            goto LABEL_41;
          }

          v19 = *(v18 + 8 * j);
        }

        (*(*v19 + 144))(v20);
        __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
        dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
        if (v2)
        {
          goto LABEL_13;
        }

        (*(*v19 + 136))(v21);
        v6 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
        dispatch thunk of UnkeyedEncodingContainer.encode(_:)();

        if (!j)
        {
          return __swift_destroy_boxed_opaque_existential_1(v24);
        }
      }

LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      ;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v24);
}

_BYTE *decode #1 <A>(_:) in NavigationPath.CodableRepresentation.item(at:given:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v15 - v12;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (!v5)
  {
    type metadata accessor for DecodedItemBox();
    (*(v8 + 16))(v10, v13, a5);
    a2 = DecodedItemBox.__allocating_init(_:)(v10);
    (*(v8 + 8))(v13, a5);
  }

  return a2;
}

_BYTE *DecodedItemBox.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 192) - 8) + 32))(&v2[*(*v2 + 216)], a1);
  v2[16] = 0;
  return v2;
}

uint64_t NavigationPath.mutateWithCodableCollectionProxy(transform:)(void (*a1)(uint64_t *))
{
  if (*(v1 + 24))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v2 = *v1;
    v10 = *(v1 + 16);
    v11 = *(v1 + 8);
    if (*v1 >> 62)
    {
LABEL_16:
      v3 = __CocoaSet.count.getter();
    }

    else
    {
      v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    for (i = 0; v3 != i; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x18D00E9C0](i, v2);
        if (__OFADD__(i, 1))
        {
LABEL_13:
          __break(1u);
          break;
        }
      }

      else
      {
        if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_16;
        }

        v5 = *(v2 + 8 * i + 32);

        if (__OFADD__(i, 1))
        {
          goto LABEL_13;
        }
      }

      v6 = *(*v5 + 128);

      v8 = v6(v7);

      if ((v8 & 1) == 0)
      {
        outlined consume of NavigationPath.Representation(v2, v11, v10, 0);
        lazy protocol witness table accessor for type NavigationPath.CollectionProxyError and conformance NavigationPath.CollectionProxyError();
        swift_allocError();
        return swift_willThrow();
      }
    }

    v17 = v2;
    v14 = 0;
    v15 = 0;
    v13 = MEMORY[0x1E69E7CC0];
    v16 = 0;
    NavigationPath.items.setter(&v13);
    a1(&v17);
    v14 = 0;
    v15 = 0;
    v13 = v17;
    v16 = 0;
    return NavigationPath.items.setter(&v13);
  }

  return result;
}

uint64_t NavigationPath.mutateWithCollectionProxy(transform:)(void (*a1)(uint64_t *))
{
  if (*(v1 + 24))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v8 = *v1;
    v5 = 0;
    v6 = 0;
    v4 = MEMORY[0x1E69E7CC0];
    v7 = 0;

    NavigationPath.items.setter(&v4);
    a1(&v8);
    v5 = 0;
    v6 = 0;
    v4 = v8;
    v7 = 0;
    return NavigationPath.items.setter(&v4);
  }

  return result;
}

Swift::Int NavigationPath.CollectionProxyError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](0);
  return Hasher._finalize()();
}

unint64_t NavigationPath.CodableCollectionProxy.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  if ((*v2 & 0xC000000000000001) == 0)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      v5 = *(v4 + 8 * result + 32);

      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_10;
  }

  v6 = MEMORY[0x18D00E9C0]();
  v5 = v6;
LABEL_5:
  (*(*v5 + 120))(&v7, v6);

  if (v8)
  {
    return outlined init with take of Decodable & Encodable & Hashable(&v7, a2);
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t specialized Array.replaceSubrange<A>(_:with:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v7 = *v5;
  v8 = *(*v5 + 2);
  if (v8 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = result;
  v10 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = __OFSUB__(1, v10);
  v12 = 1 - v10;
  if (v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = v8 + v12;
  if (__OFADD__(v8, v12))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v7;
  if (!isUniquelyReferenced_nonNull_native || v13 > *(v7 + 3) >> 1)
  {
    if (v8 <= v13)
    {
      v18 = v13;
    }

    else
    {
      v18 = v8;
    }

    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v18, 1, v7);
    *v5 = v7;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v9, a2, 1, a3, a4, a5 & 1);
  *v5 = v7;
  return result;
}

unint64_t protocol witness for Collection.subscript.read in conformance NavigationPath.CodableCollectionProxy(uint64_t *a1, unint64_t *a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x70uLL);
  }

  v6 = v5;
  *a1 = v5;
  result = *a2;
  v8 = *v2;
  if ((*v2 & 0xC000000000000001) == 0)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v9 = *(v8 + 8 * result + 32);

      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_13;
  }

  v10 = MEMORY[0x18D00E9C0](result);
  v9 = v10;
LABEL_8:
  (*(*v9 + 120))(v10);

  if (*(v6 + 80))
  {
    outlined init with take of Decodable & Encodable & Hashable((v6 + 56), v6);
    return protocol witness for Collection.subscript.read in conformance NavigationPath.CodableCollectionProxy;
  }

LABEL_13:
  __break(1u);
  return result;
}

void protocol witness for Collection.subscript.read in conformance NavigationPath.CodableCollectionProxy(uint64_t *a1)
{
  v1 = *a1;
  __swift_destroy_boxed_opaque_existential_1(*a1);

  free(v1);
}

uint64_t protocol witness for Collection.index(_:offsetBy:limitedBy:) in conformance NavigationPath.CodableCollectionProxy@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized Collection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

__int128 *protocol witness for RangeReplaceableCollection.init(repeating:count:) in conformance NavigationPath.CodableCollectionProxy@<X0>(__int128 *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = MEMORY[0x1E69E7CC0];
  if (!a2)
  {
    result = __swift_destroy_boxed_opaque_existential_1(result);
    v4 = MEMORY[0x1E69E7CC0];
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    *&v5[0] = a2;
    outlined init with take of Decodable & Encodable & Hashable(result, v5 + 8);
    result = specialized RangeReplaceableCollection.append<A>(contentsOf:)(v5);
    v4 = v6;
LABEL_5:
    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for RangeReplaceableCollection.append(_:) in conformance NavigationPath.CodableCollectionProxy(__int128 *a1)
{
  if (*v1 >> 62)
  {
    v4 = a1;
    v2 = __CocoaSet.count.getter();
    a1 = v4;
  }

  else
  {
    v2 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  outlined init with take of Decodable & Encodable & Hashable(a1, v5);
  specialized NavigationPath.CodableCollectionProxy.replaceSubrange<A>(_:with:)(v2, v2, v5);
  return outlined destroy of CollectionOfOne<Decodable & Encodable & Hashable>(v5);
}
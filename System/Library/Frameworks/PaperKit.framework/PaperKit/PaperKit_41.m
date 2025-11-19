uint64_t keypath_setTm_0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];

  return a5(v6, v7);
}

uint64_t keypath_get_10Tm@<X0>(uint64_t a1@<X0>, void *a2@<X3>, BOOL *a3@<X8>)
{
  v5 = *(a1 + 40);
  result = swift_beginAccess();
  *a3 = (*a2 & ~v5) == 0;
  return result;
}

uint64_t getEnumTagSinglePayload for Font(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for Font(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EncodedFont_Incorrect.CodingKeys and conformance EncodedFont_Incorrect.CodingKeys()
{
  result = lazy protocol witness table cache variable for type EncodedFont_Incorrect.CodingKeys and conformance EncodedFont_Incorrect.CodingKeys;
  if (!lazy protocol witness table cache variable for type EncodedFont_Incorrect.CodingKeys and conformance EncodedFont_Incorrect.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EncodedFont_Incorrect.CodingKeys and conformance EncodedFont_Incorrect.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EncodedFont_Incorrect.CodingKeys and conformance EncodedFont_Incorrect.CodingKeys;
  if (!lazy protocol witness table cache variable for type EncodedFont_Incorrect.CodingKeys and conformance EncodedFont_Incorrect.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EncodedFont_Incorrect.CodingKeys and conformance EncodedFont_Incorrect.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EncodedFont_Incorrect.CodingKeys and conformance EncodedFont_Incorrect.CodingKeys;
  if (!lazy protocol witness table cache variable for type EncodedFont_Incorrect.CodingKeys and conformance EncodedFont_Incorrect.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EncodedFont_Incorrect.CodingKeys and conformance EncodedFont_Incorrect.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EncodedFont_Incorrect.CodingKeys and conformance EncodedFont_Incorrect.CodingKeys;
  if (!lazy protocol witness table cache variable for type EncodedFont_Incorrect.CodingKeys and conformance EncodedFont_Incorrect.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EncodedFont_Incorrect.CodingKeys and conformance EncodedFont_Incorrect.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EncodedFont_Incorrect.CodingKeys and conformance EncodedFont_Incorrect.CodingKeys;
  if (!lazy protocol witness table cache variable for type EncodedFont_Incorrect.CodingKeys and conformance EncodedFont_Incorrect.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EncodedFont_Incorrect.CodingKeys and conformance EncodedFont_Incorrect.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EncodedFont_Incorrect.CodingKeys and conformance EncodedFont_Incorrect.CodingKeys;
  if (!lazy protocol witness table cache variable for type EncodedFont_Incorrect.CodingKeys and conformance EncodedFont_Incorrect.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EncodedFont_Incorrect.CodingKeys and conformance EncodedFont_Incorrect.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EncodedFont_Incorrect.CodingKeys and conformance EncodedFont_Incorrect.CodingKeys;
  if (!lazy protocol witness table cache variable for type EncodedFont_Incorrect.CodingKeys and conformance EncodedFont_Incorrect.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EncodedFont_Incorrect.CodingKeys and conformance EncodedFont_Incorrect.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EncodedFont.CodingKeys and conformance EncodedFont.CodingKeys()
{
  result = lazy protocol witness table cache variable for type EncodedFont.CodingKeys and conformance EncodedFont.CodingKeys;
  if (!lazy protocol witness table cache variable for type EncodedFont.CodingKeys and conformance EncodedFont.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EncodedFont.CodingKeys and conformance EncodedFont.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EncodedFont.CodingKeys and conformance EncodedFont.CodingKeys;
  if (!lazy protocol witness table cache variable for type EncodedFont.CodingKeys and conformance EncodedFont.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EncodedFont.CodingKeys and conformance EncodedFont.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EncodedFont.CodingKeys and conformance EncodedFont.CodingKeys;
  if (!lazy protocol witness table cache variable for type EncodedFont.CodingKeys and conformance EncodedFont.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EncodedFont.CodingKeys and conformance EncodedFont.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EncodedFont.CodingKeys and conformance EncodedFont.CodingKeys;
  if (!lazy protocol witness table cache variable for type EncodedFont.CodingKeys and conformance EncodedFont.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EncodedFont.CodingKeys and conformance EncodedFont.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EncodedFont.CodingKeys and conformance EncodedFont.CodingKeys;
  if (!lazy protocol witness table cache variable for type EncodedFont.CodingKeys and conformance EncodedFont.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EncodedFont.CodingKeys and conformance EncodedFont.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EncodedFont.CodingKeys and conformance EncodedFont.CodingKeys;
  if (!lazy protocol witness table cache variable for type EncodedFont.CodingKeys and conformance EncodedFont.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EncodedFont.CodingKeys and conformance EncodedFont.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EncodedFont.CodingKeys and conformance EncodedFont.CodingKeys;
  if (!lazy protocol witness table cache variable for type EncodedFont.CodingKeys and conformance EncodedFont.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EncodedFont.CodingKeys and conformance EncodedFont.CodingKeys);
  }

  return result;
}

uint64_t specialized EncodedFont.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D616E5FLL && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7A6953746E696F70 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x737469617274 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4E796C696D61665FLL && a2 == 0xEB00000000656D61)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t specialized EncodedFont_Incorrect.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D616E5FLL && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E796C696D61665FLL && a2 == 0xEB00000000656D61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7A6953746E696F70 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x737469617274 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t CanvasElementController.elementControllerToolPicker.getter()
{
  v1 = v0 + OBJC_IVAR____TtC8PaperKit23CanvasElementController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v4 = (*(v2 + 24))(ObjectType, v2);
    swift_unknownObjectRelease();
    if (v4)
    {
      if ([v4 _isEnabled])
      {
        return v4;
      }
    }
  }

  return CanvasElementController.activeToolPicker.getter();
}

uint64_t CanvasElementController.activeToolPicker.getter()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC8PaperKit23CanvasElementController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 8))(ObjectType, v3);
    swift_unknownObjectRelease();
    if (v5)
    {
      v6 = [v5 window];

      if (v6)
      {
        goto LABEL_6;
      }
    }
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v8 = *(v2 + 8);
  v9 = swift_getObjectType();
  v6 = (*(v8 + 32))(v1, v9, v8);
  swift_unknownObjectRelease();
  if (!v6)
  {
    return 0;
  }

LABEL_6:
  v10 = [objc_opt_self() activeToolPickerForWindow_];

  return v10;
}

Swift::Void __swiftcall CanvasElementController.updateToolPickerContextualEditingView()()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC8PaperKit23CanvasElementController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    v14 = (*(v3 + 24))(ObjectType, v3);
    swift_unknownObjectRelease();
    if (v14)
    {
      v5 = [v14 _isEnabled];
      v6 = v14;
      if (v5)
      {
        goto LABEL_7;
      }
    }
  }

  v7 = CanvasElementController.activeToolPicker.getter();
  if (!v7)
  {
    return;
  }

  v6 = v7;
LABEL_7:
  v15 = v6;
  v8 = [v6 isVisible];
  v9 = v15;
  if (v8)
  {
    v10 = v15;
    v11 = CanvasElementController.activeToolPicker.getter();
    if (!v11)
    {

      goto LABEL_14;
    }

    v12 = v11;
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PKToolPicker);
    v13 = static NSObject.== infix(_:_:)();

    v9 = v15;
    if ((v13 & 1) != 0 && (*(v1 + OBJC_IVAR____TtC8PaperKit23CanvasElementController_isApplyingStyle) & 1) == 0)
    {
      CanvasElementController.configureToolPicker(_:)(v10);
LABEL_14:
      v9 = v15;
    }
  }
}

Swift::Void __swiftcall CanvasElementController.configureToolPicker(_:)(PKToolPicker a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8PaperKit23CanvasElementController_toolPickerController);
  if (!v2)
  {
    return;
  }

  v3 = v1;
  v5 = v1 + OBJC_IVAR____TtC8PaperKit23CanvasElementController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 8);
    v9 = v2;
    v10 = v8(ObjectType, v6);
    swift_unknownObjectRelease();
    if (v10)
    {
      v11 = [v10 pencilKitResponderState];

      v34 = [v11 _currentActiveToolPicker];
      if (v34)
      {

        return;
      }
    }
  }

  else
  {
    v12 = v2;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = *(v5 + 8);
    v14 = swift_getObjectType();
    v15 = (*(v13 + 16))(v14, v13);
    swift_unknownObjectRelease();
    if (v15)
    {
      if ([(objc_class *)a1.super.isa respondsToSelector:sel__setMaxHDRGain_])
      {
        v16 = 1.0;
        if (AnyCanvas.isHDRActive.getter())
        {
          swift_getKeyPath();
          aBlock[0] = v15;
          _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          if (v15[OBJC_IVAR____TtC8PaperKit9AnyCanvas___allowHDR] == 1)
          {
            v16 = *&v15[OBJC_IVAR____TtC8PaperKit9AnyCanvas_supportedFeatureSet + 40];
          }
        }

        [(objc_class *)a1.super.isa _setMaxHDRGain:v16];
      }
    }
  }

  [(objc_class *)a1.super.isa _setWantsEllipsisButtonVisibleInCompactSize:[(objc_class *)a1.super.isa _wantsUndoRedoButtonsVisibleInCompactSize]^ 1];
  v17 = [(objc_class *)a1.super.isa accessoryItem];
  if (v17)
  {
  }

  else if (([(objc_class *)a1.super.isa _wantsUndoRedoButtonsVisibleInCompactSize]& 1) == 0)
  {
    type metadata accessor for _PaperKitToolPickerPlusButton();
    specialized static UIImage.toolPickerPlus.getter();
    swift_unknownObjectRetain();
    v22 = UIBarButtonItem.init(title:image:target:action:menu:)();
    [(objc_class *)a1.super.isa setAccessoryItem:v22];
    goto LABEL_25;
  }

  v18 = [(objc_class *)a1.super.isa accessoryItem];
  if (!v18)
  {
    goto LABEL_26;
  }

  v19 = v18;
  type metadata accessor for _PaperKitToolPickerPlusButton();
  v20 = swift_dynamicCastClass();

  if (!v20)
  {
    goto LABEL_26;
  }

  v21 = [(objc_class *)a1.super.isa accessoryItem];
  if (!v21)
  {
    goto LABEL_26;
  }

  v22 = v21;
  [v21 setTarget_];
LABEL_25:

LABEL_26:
  v23 = ToolPickerController.shapeButtonListViewController.getter();
  [(objc_class *)a1.super.isa _setShapeButtonViewController:v23];

  v24 = swift_allocObject();
  *(v24 + 16) = v2;
  aBlock[4] = partial apply for closure #1 in CanvasElementController.configureToolPicker(_:);
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UITraitCollection) -> (@owned UIColor);
  aBlock[3] = &block_descriptor_62_0;
  v25 = _Block_copy(aBlock);
  v26 = v2;

  [(objc_class *)a1.super.isa _setSignaturesViewControllerProvider:v25];
  _Block_release(v25);
  v27 = ToolPickerController.textToolListViewController.getter();
  v28 = [(objc_class *)a1.super.isa _showsShapeButton];
  v29 = v27[OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_addShapeListItemVisible];
  v27[OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_addShapeListItemVisible] = v28 ^ 1;
  if (v28 == v29)
  {
    MarkupEditViewController.updateUI()();
  }

  v30 = [(objc_class *)a1.super.isa _selectionContext];
  [v30 setSelectionMask_];
  swift_unknownObjectRelease();
  [-[objc_class _selectionContext](a1.super.isa _selectionContext)];
  swift_unknownObjectRelease();
  v31 = OBJC_IVAR____TtC8PaperKit23CanvasElementController_editingContainerView;
  v32 = *(v3 + OBJC_IVAR____TtC8PaperKit23CanvasElementController_editingContainerView);
  if (v32)
  {
    [v32 removeFromSuperview];
    v33 = *(v3 + v31);
  }

  else
  {
    v33 = 0;
  }

  *(v3 + v31) = 0;

  [(objc_class *)a1.super.isa set_temporarySelectionDelegate:0];
}

char *closure #1 in CanvasElementController.configureToolPicker(_:)(void *a1)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v3 = specialized SignatureManager.signatureViewController(_:_:_:_:_:)(a1, 0, 0, partial apply for closure #1 in ToolPickerController.makeSignaturesViewController(rootViewController:), v2, 0.0, 0.0, 0.0, 0.0);

  return v3;
}

void CanvasElementController.didTapPlusButton(_:)(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8PaperKit23CanvasElementController_toolPickerController);
  if (!v2)
  {
    return;
  }

  v11 = v2;
  v4 = CanvasElementController.elementControllerToolPicker.getter();
  if (v4)
  {
    v5 = v4;
    if ([v4 isVisible])
    {
      v6 = v5;
      v7 = CanvasElementController.activeToolPicker.getter();
      v8 = v6;
      if (v7)
      {
        v9 = v7;
        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PKToolPicker);
        v10 = static NSObject.== infix(_:_:)();

        if ((v10 & 1) == 0 || ![v6 respondsToSelector_])
        {
          goto LABEL_11;
        }

        v8 = ToolPickerController.textToolListViewController.getter();
        [v6 _presentViewController_asPopoverFromItem_];
      }
    }

    else
    {
      v6 = v11;
      v11 = v5;
    }

LABEL_11:
  }
}

void CanvasElementController.addCanvasElement(from:completionHandler:)(void *a1, void (*a2)(void), void (*a3)(char *, uint64_t))
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for UTType();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = &v3[OBJC_IVAR____TtC8PaperKit23CanvasElementController_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = *(v12 + 1);
    v14 = swift_getObjectType();
    v15 = (*(v13 + 16))(v14, v13);
    swift_unknownObjectRelease();
    if (v15)
    {
      v35 = a2;
      AnyCanvas.selection.setter(MEMORY[0x1E69E7CD0], MEMORY[0x1E69E7CD0], 6, 0);
      v16 = MEMORY[0x1DA6CCED0](0xD000000000000011, 0x80000001D4083BF0);
      v17 = [a1 hasItemConformingToTypeIdentifier_];

      if (v17)
      {
        static UTType.plainText.getter();
        v18 = UTType.identifier.getter();
        v20 = v19;
        (*(v9 + 8))(v11, v8);
        v21 = MEMORY[0x1DA6CCED0](v18, v20);

        LODWORD(v20) = [a1 hasItemConformingToTypeIdentifier_];

        if (v20)
        {
          v22 = 96.0;
        }

        else
        {
          v22 = 160.0;
        }
      }

      else
      {
        v22 = 240.0;
      }

      v23 = 0.0;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v24 = *(v12 + 1);
        v25 = swift_getObjectType();
        v26 = (*(v24 + 16))(v25, v24);
        v27 = swift_unknownObjectRelease();
        v28 = 0.0;
        v29 = 0.0;
        if (v26)
        {
          v23 = (*((*MEMORY[0x1E69E7D40] & *v26) + 0x990))(v27, v22, v22);
          v28 = v30;
          v29 = v31;
        }
      }

      else
      {
        v28 = 0.0;
        v29 = 0.0;
      }

      v32 = swift_allocObject();
      *(v32 + 16) = 0;
      swift_retain_n();
      v33 = a1;
      swift_retain_n();
      v34 = v33;
      specialized CanvasElementController.visibleCanvasInsertIfNeeded(completion:)(v4, v32, v34, v35, a3, ObjectType, v23, v28, v22, v22, v29);
    }
  }
}

uint64_t specialized CanvasElementController.visibleCanvasInsertIfNeeded(completion:)(void *a1, uint64_t a2, void *a3, void (*a4)(void), void (*a5)(char *, uint64_t), uint64_t a6, double a7, double a8, double a9, double a10, double a11)
{
  specialized CanvasElementController.visibleCanvasInsertIfNeeded(completion:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

void CanvasElementController.visibleCanvasInsertIfNeeded(completion:)(uint64_t (*a1)(void *), uint64_t a2)
{
  v3 = v2;
  v6 = &v2[OBJC_IVAR____TtC8PaperKit23CanvasElementController_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 1);
    ObjectType = swift_getObjectType();
    v43 = (*(v7 + 16))(ObjectType, v7);
    swift_unknownObjectRelease();
    if (v43)
    {
      v9 = (*((*MEMORY[0x1E69E7D40] & *v43) + 0x468))();
      if (v9)
      {
        v42 = v9;
        v10 = [v9 scrollView];
        if (v10)
        {
          v11 = v10;
          [v43 bounds];
          x = v51.origin.x;
          y = v51.origin.y;
          width = v51.size.width;
          Height = CGRectGetHeight(v51);
          if (Height > 384.0)
          {
            v16 = Height;
          }

          else
          {
            v16 = 384.0;
          }

          type metadata accessor for PaperTextAttachmentView();
          if (swift_dynamicCastClass())
          {
            v17 = v43;
            v18 = PaperTextAttachmentView.isAtEndOfDocument.getter();

            if (v18)
            {
              [v42 bounds];
              v16 = v16 + CGRectGetHeight(v52);
            }
          }

          [v43 convertRect:v42 toCoordinateSpace:{x, y, width, v16}];
          v20 = v19;
          v22 = v21;
          v24 = v23;
          v26 = v25;
          [v42 bounds];
          v55.origin.x = v27;
          v55.origin.y = v28;
          v55.size.width = v29;
          v55.size.height = v30;
          v53.origin.x = v20;
          v53.origin.y = v22;
          v53.size.width = v24;
          v53.size.height = v26;
          v54 = CGRectIntersection(v53, v55);
          if (CGRectGetHeight(v54) < 384.0)
          {
            v31 = objc_opt_self();
            v32 = swift_allocObject();
            *(v32 + 2) = v11;
            v32[3] = v20;
            v32[4] = v22;
            v32[5] = v24;
            v32[6] = v26;
            v48 = closure #1 in CanvasElementController.visibleCanvasInsertIfNeeded(completion:)partial apply;
            v49 = v32;
            aBlock = MEMORY[0x1E69E9820];
            v45 = 1107296256;
            v46 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
            v47 = &block_descriptor_32_1;
            v33 = _Block_copy(&aBlock);
            v34 = v11;

            v35 = swift_allocObject();
            *(v35 + 2) = v43;
            *(v35 + 3) = v34;
            *(v35 + 4) = v42;
            *(v35 + 5) = a1;
            *(v35 + 6) = a2;
            *(v35 + 7) = v3;
            v48 = closure #2 in CanvasElementController.visibleCanvasInsertIfNeeded(completion:)partial apply;
            v49 = v35;
            aBlock = MEMORY[0x1E69E9820];
            v45 = 1107296256;
            v46 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
            v47 = &block_descriptor_39;
            v36 = _Block_copy(&aBlock);
            v37 = v43;
            v38 = v34;
            v39 = v42;

            v40 = v3;

            [v31 animateWithDuration:v33 animations:v36 completion:0.3];

            _Block_release(v36);
            _Block_release(v33);
            return;
          }

          getCanvas #1 () in CanvasElementController.visibleCanvasInsertIfNeeded(completion:)(v43, v11, v42, a1, a2, v3);
        }

        else
        {
        }

        v41 = v42;
      }

      else
      {
        v41 = v43;
      }
    }
  }
}

uint64_t CanvasElementController.addCanvasElement<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for Capsule();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v17 - v12;
  (*(v9 + 16))(&v17 - v12, a1, v8, v11);
  v14 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = a2;
  *(v15 + 3) = a3;
  *(v15 + 4) = a4;
  (*(v9 + 32))(&v15[v14], v13, v8);
  *&v15[(v10 + v14 + 7) & 0xFFFFFFFFFFFFFFF8] = ObjectType;
  CanvasElementController.visibleCanvasInsertIfNeeded(completion:)(partial apply for closure #1 in CanvasElementController.addCanvasElement<A>(_:), v15);
}

void closure #1 in CanvasElementController.addCanvasElement<A>(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    v10 = a1;
    specialized static CanvasElementController.makeCanvasFirstResponder(_:)(v10);
    (*((*MEMORY[0x1E69E7D40] & *v10) + 0x700))(a2, 1, 0, 0, a4, a5, a6);
  }
}

uint64_t CanvasElementController.recentlyAddedCanvasElement.getter()
{
  v1 = v0 + OBJC_IVAR____TtC8PaperKit23CanvasElementController_delegate;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v2 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 16))(ObjectType, v2);
  v5 = swift_unknownObjectRelease();
  if (!v4)
  {
    return 0;
  }

  v6 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0xA40))(v5);

  return v6;
}

double CanvasElementController.fontScaleForNewCanvasElement.getter()
{
  v1 = v0 + OBJC_IVAR____TtC8PaperKit23CanvasElementController_delegate;
  v2 = 1.0;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 16))(ObjectType, v3);
    v6 = swift_unknownObjectRelease();
    if (v5)
    {
      (*((*MEMORY[0x1E69E7D40] & *v5) + 0x348))(v6);
      if (v7)
      {
        v2 = AnyCanvas.scaleFactorForNewElements.getter();
      }
    }
  }

  return v2;
}

uint64_t specialized getCanvas #1 () in CanvasElementController.visibleCanvasInsertIfNeeded(completion:)(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6, void (*a7)(void), void (*a8)(char *, uint64_t), double a9, double a10, double a11, double a12, double a13, uint64_t a14)
{
  specialized getCanvas #1 () in CanvasElementController.visibleCanvasInsertIfNeeded(completion:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
}

{
  v72 = a4;
  v80 = a2;
  v81 = a3;
  v24 = type metadata accessor for DispatchWorkItemFlags();
  v78 = *(v24 - 8);
  v79 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v76 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for DispatchQoS();
  v75 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v74 = &v68 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DispatchTimeInterval();
  v69 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = (&v68 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v73 = type metadata accessor for DispatchTime();
  v71 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v31 = &v68 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v70 = &v68 - v33;
  v34 = swift_allocObject();
  *(v34 + 88) = a14;
  v35 = *MEMORY[0x1E69E7D40] & *a1;
  *(v34 + 16) = a5;
  *(v34 + 24) = a6;
  *(v34 + 32) = a9;
  *(v34 + 40) = a10;
  *(v34 + 48) = a11;
  *(v34 + 56) = a12;
  *(v34 + 64) = a13;
  v83 = a7;
  *(v34 + 72) = a7;
  *(v34 + 80) = a8;
  v36 = *(v35 + 1416);

  v37 = a6;
  v82 = a8;

  if ((v36(v38) & 1) == 0)
  {
    v55 = a1;
    specialized static CanvasElementController.makeCanvasFirstResponder(_:)(v55);
    v56 = AnyCanvas.acceptedDropLayouts.getter();
    v57 = *(v56 + 16);
    swift_beginAccess();
    v58 = v56 + 40;
    v59 = -1;
    while (1)
    {
      if (v59 - v57 == -1)
      {
LABEL_8:

        swift_beginAccess();
        v62 = *(a5 + 16);
        goto LABEL_13;
      }

      if (++v59 >= *(v56 + 16))
      {
        break;
      }

      v60 = v58 + 16;
      v61 = (*(*v58 + 16))(v37, v55, 0, a9, a10, a11, a12, a13);
      *(a5 + 16) = v61 & 1;
      v58 = v60;
      if (v61)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_16:
    swift_once();
    goto LABEL_10;
  }

  [a1 bounds];
  [a1 convertRect:v80 toCoordinateSpace:?];
  x = v85.origin.x;
  y = v85.origin.y;
  width = v85.size.width;
  height = v85.size.height;
  MidX = CGRectGetMidX(v85);
  v86.origin.x = x;
  v86.origin.y = y;
  v86.size.width = width;
  v86.size.height = height;
  if ([v81 insertAttachmentIfInBlankSpace_])
  {
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v83 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    *v29 = 100;
    v44 = v69;
    (*(v69 + 104))(v29, *MEMORY[0x1E69E7F38], v27);
    v45 = v70;
    MEMORY[0x1DA6CAA90](v31, v29);
    (*(v44 + 8))(v29, v27);
    v82 = *(v71 + 8);
    v46 = v73;
    v82(v31, v73);
    v47 = swift_allocObject();
    v48 = v72;
    v47[2] = v72;
    v47[3] = closure #1 in CanvasElementController.addCanvasElement(from:completionHandler:)partial apply;
    v47[4] = v34;
    aBlock[4] = closure #1 in getCanvas #1 () in CanvasElementController.visibleCanvasInsertIfNeeded(completion:)partial apply;
    aBlock[5] = v47;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_50;
    v49 = _Block_copy(aBlock);
    v50 = v48;

    v51 = v74;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v52 = v76;
    v53 = v79;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v54 = v83;
    MEMORY[0x1DA6CD840](v45, v51, v52, v49);
    _Block_release(v49);

    (*(v78 + 8))(v52, v53);
    (*(v75 + 8))(v51, v77);
    v82(v45, v46);
  }

  if (one-time initialization token for logger != -1)
  {
    goto LABEL_16;
  }

LABEL_10:
  v63 = type metadata accessor for Logger();
  __swift_project_value_buffer(v63, logger);
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 0;
    _os_log_impl(&dword_1D38C4000, v64, v65, "Failed to insert a new attachment", v66, 2u);
    MEMORY[0x1DA6D0660](v66, -1, -1);
  }

  swift_beginAccess();
  v62 = *(a5 + 16);
LABEL_13:
  v83(v62);
}

uint64_t getCanvas #1 () in CanvasElementController.visibleCanvasInsertIfNeeded(completion:)(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void *), uint64_t a5, void *a6)
{
  v47 = a6;
  v54 = a3;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v52 = *(v10 - 8);
  v53 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v50 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for DispatchQoS();
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchTimeInterval();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = type metadata accessor for DispatchTime();
  v46 = *(v48 - 8);
  v18 = MEMORY[0x1EEE9AC00](v48);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v44 - v22;
  if ((*((*MEMORY[0x1E69E7D40] & *a1) + 0x588))(v21))
  {
    v45 = a5;
    [a1 bounds];
    [a1 convertRect:a2 toCoordinateSpace:?];
    x = v56.origin.x;
    y = v56.origin.y;
    width = v56.size.width;
    height = v56.size.height;
    MidX = CGRectGetMidX(v56);
    v57.origin.x = x;
    v57.origin.y = y;
    v57.size.width = width;
    v57.size.height = height;
    if ([v54 insertAttachmentIfInBlankSpace_])
    {
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for OS_dispatch_queue);
      v54 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      *v17 = 100;
      (*(v15 + 104))(v17, *MEMORY[0x1E69E7F38], v14);
      MEMORY[0x1DA6CAA90](v20, v17);
      (*(v15 + 8))(v17, v14);
      v29 = *(v46 + 8);
      v30 = v48;
      v29(v20, v48);
      v31 = swift_allocObject();
      v32 = v47;
      v31[2] = v47;
      v31[3] = a4;
      v31[4] = v45;
      aBlock[4] = partial apply for closure #1 in getCanvas #1 () in CanvasElementController.visibleCanvasInsertIfNeeded(completion:);
      aBlock[5] = v31;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_25;
      v33 = _Block_copy(aBlock);
      v34 = v32;

      static DispatchQoS.unspecified.getter();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      v35 = v50;
      v36 = v53;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v37 = v54;
      MEMORY[0x1DA6CD840](v23, v13, v35, v33);
      _Block_release(v33);

      (*(v52 + 8))(v35, v36);
      (*(v49 + 8))(v13, v51);
      return (v29)(v23, v30);
    }

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    __swift_project_value_buffer(v40, logger);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_1D38C4000, v41, v42, "Failed to insert a new attachment", v43, 2u);
      MEMORY[0x1DA6D0660](v43, -1, -1);
    }

    v39 = 0;
  }

  else
  {
    v39 = a1;
  }

  return a4(v39);
}

void closure #1 in getCanvas #1 () in CanvasElementController.visibleCanvasInsertIfNeeded(completion:)(uint64_t a1, void (*a2)(void *))
{
  v3 = a1 + OBJC_IVAR____TtC8PaperKit23CanvasElementController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    v11 = (*(v4 + 8))(ObjectType, v4);
    swift_unknownObjectRelease();
    if (v11)
    {
      if ((*((*MEMORY[0x1E69E7D40] & *v11) + 0x588))())
      {
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v6 = type metadata accessor for Logger();
        __swift_project_value_buffer(v6, logger);
        v7 = Logger.logObject.getter();
        v8 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v7, v8))
        {
          v9 = swift_slowAlloc();
          *v9 = 0;
          _os_log_impl(&dword_1D38C4000, v7, v8, "Current canvas is still the stand in attachment after inserting.", v9, 2u);
          MEMORY[0x1DA6D0660](v9, -1, -1);
        }

        a2(0);
      }

      else
      {
        v10 = v11;
        a2(v11);
      }
    }
  }
}

uint64_t CanvasElementController.textBoxes.getter()
{
  v1 = v0 + OBJC_IVAR____TtC8PaperKit23CanvasElementController_delegate;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v2 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 8))(ObjectType, v2);
  result = swift_unknownObjectRelease();
  if (!v4)
  {
    return 0;
  }

  v6 = *&v4[OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView];
  if (v6)
  {
    v7 = v6;
    v8 = CanvasElementResizeView.resizingCanvasElements.getter();

    v17 = MEMORY[0x1E69E7CC0];
    if (v8 >> 62)
    {
LABEL_22:
      v9 = __CocoaSet.count.getter();
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = 0;
    v11 = MEMORY[0x1E69E7CC0];
    v12 = MEMORY[0x1E69E7D40];
    while (v9 != v10)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x1DA6CE0C0](v10, v8);
      }

      else
      {
        if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v13 = *(v8 + 8 * v10 + 32);
      }

      v14 = v13;
      v15 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v16 = (*((*v12 & *v13) + 0x318))();

      ++v10;
      if (v16)
      {
        MEMORY[0x1DA6CD190]();
        if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v11 = v17;
        v10 = v15;
      }
    }

    return v11;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall CanvasElementController.toolPickerSelectedToolItemDidChange(_:)(PKToolPicker a1)
{
  v2 = v1;
  v4 = v1 + OBJC_IVAR____TtC8PaperKit23CanvasElementController_delegate;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return;
  }

  v5 = *(v4 + 8);
  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 8))(ObjectType, v5);
  swift_unknownObjectRelease();
  if (!v7)
  {
    return;
  }

  v8 = [(objc_class *)a1.super.isa selectedToolItem];
  v9 = OBJC_IVAR____TtC8PaperKit23CanvasElementController_activeToolPickerItem;
  v10 = *(v1 + OBJC_IVAR____TtC8PaperKit23CanvasElementController_activeToolPickerItem);
  if (v8)
  {
    v11 = v8;
    if (v10)
    {
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PKToolPickerItem);
      v12 = v10;
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }
  }

  else if (!v10)
  {
    goto LABEL_12;
  }

  AnyCanvas.selection.setter(MEMORY[0x1E69E7CD0], MEMORY[0x1E69E7CD0], 6, 0);
LABEL_12:
  v14 = [(objc_class *)a1.super.isa selectedToolItem];

  v15 = *(v2 + v9);
  *(v2 + v9) = v14;
}

uint64_t CanvasElementController.selectedTextBoxColors()()
{
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV9SubstringVy8PaperKit18TextAttributeScopeV_GMd);
  v0 = *(v88 - 1);
  MEMORY[0x1EEE9AC00](v88);
  v85 = &v78 - v1;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v82 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v3 = (&v78 - v2);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd);
  v90 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v5 = &v78 - v4;
  v6 = type metadata accessor for Color(0);
  v80 = *(v6 - 1);
  MEMORY[0x1EEE9AC00](v6);
  v79 = (&v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v78 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v78 - v15);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v78 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v78 - v21;
  result = CanvasElementController.textBoxes.getter();
  if (!result)
  {
    return result;
  }

  v24 = result;
  v25 = MEMORY[0x1E69E7CC0];
  v89 = result;
  v83 = v22;
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    v26 = v0;
    if (__CocoaSet.count.getter())
    {
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo7UIColorC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      goto LABEL_68;
    }

    goto LABEL_67;
  }

  v26 = v0;
  v27 = MEMORY[0x1E69E7CD0];
  while (1)
  {
    v78 = v27;
    v93 = v27;
    v28 = v24 >> 62;
    if (v24 >> 62)
    {
      v69 = __CocoaSet.count.getter();
      v24 = v89;
      v29 = v69;
      if (!v69)
      {
LABEL_50:

        v35 = MEMORY[0x1E69E7CC0];
LABEL_51:
        v70 = Array<A>.fontColors.getter(v35);

        v92[0] = v25;
        v16 = (v70 + 56);
        v71 = 1 << *(v70 + 32);
        v72 = -1;
        if (v71 < 64)
        {
          v72 = ~(-1 << v71);
        }

        v26 = v72 & *(v70 + 56);
        v13 = ((v71 + 63) >> 6);

        v10 = 0;
        v19 = 0x1E69DC000;
        v3 = &off_1E845F000;
        if (v26)
        {
          goto LABEL_58;
        }

        while (1)
        {
          do
          {
            v73 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              __break(1u);
              goto LABEL_66;
            }

            if (v73 >= v13)
            {

              v77 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo7UIColorC_SayAEGTt0g5Tf4g_n(v25);

              return v77;
            }

            v26 = v16[v73];
            ++v10;
          }

          while (!v26);
          v10 = v73;
          do
          {
LABEL_58:
            v6 = v79;
            outlined init with copy of Color(*(v70 + 48) + *(v80 + 72) * (__clz(__rbit64(v26)) | (v10 << 6)), v79);
            v74 = *v6;
            v75 = objc_allocWithZone(MEMORY[0x1E69DC888]);
            v5 = [v75 initWithCGColor_];
            v76 = outlined destroy of Color(v6);
            MEMORY[0x1DA6CD190](v76);
            if (*((v92[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v92[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v6 = *((v92[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            v26 &= v26 - 1;
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v25 = v92[0];
          }

          while (v26);
        }
      }
    }

    else
    {
      v29 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v29)
      {
        goto LABEL_50;
      }
    }

    v84 = v29;
    if (v29 != 1)
    {
      goto LABEL_16;
    }

    if (v28)
    {
      result = __CocoaSet.count.getter();
      v29 = v84;
      v24 = v89;
      if (!result)
      {
        goto LABEL_16;
      }

LABEL_11:
      if ((v24 & 0xC000000000000001) != 0)
      {
        v30 = v25;
        v31 = MEMORY[0x1DA6CE0C0](0, v24);
      }

      else
      {
        if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_71;
        }

        v30 = v25;
        v31 = *(v24 + 32);
      }

      v32 = v31;
      (*((*MEMORY[0x1E69E7D40] & *v31) + 0x90))(v31);
      if (v33)
      {

        v25 = v30;
        v29 = v84;
        goto LABEL_16;
      }

      v50 = *&v32[OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_textView];
      if (!v50)
      {

        return v93;
      }

      v90 = v16;
      v3 = v32;
      v34 = v50;
      v51 = [v34 typingAttributes];
      type metadata accessor for NSAttributedStringKey(0);
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
      v52 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (!*(v52 + 16) || (v53 = specialized __RawDictionaryStorage.find<A>(_:)(*MEMORY[0x1E69DB650]), (v54 & 1) == 0))
      {

        return v93;
      }

      outlined init with copy of Any(*(v52 + 56) + 32 * v53, v92);

      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIColor);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_37;
      }

      v88 = v10;
      v89 = v13;
      v55 = v91;
      v56 = [v34 traitCollection];
      v57 = [v56 userInterfaceStyle];

      v58 = v55;
      Color.init(cgColor:)([v58 CGColor], v19);

      v59 = *(v80 + 48);
      if (v59(v19, 1, v6))
      {
        outlined destroy of Color?(v19);
        v60 = 1;
        v61 = v83;
LABEL_43:
        (*(v80 + 56))(v61, v60, 1, v6);
        v67 = v89;
        outlined init with copy of Color?(v61, v89);
        if (v59(v67, 1, v6) == 1)
        {
          outlined destroy of Color?(v67);
          v68 = [objc_opt_self() blackColor];
        }

        else
        {
          v68 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
          outlined destroy of Color(v67);
        }

        specialized Set._Variant.insert(_:)(v92, v68);

        outlined destroy of Color?(v61);
        return v93;
      }

      v62 = v88;
      outlined init with take of Color(v19, v88);
      v61 = v83;
      if (v57 != 2)
      {
        outlined init with copy of Color(v62, v83);
        goto LABEL_42;
      }

      v63 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
      v64 = static PKInkingTool.convertColor(_:from:to:)();

      v65 = [v64 &selRef_passthroughViews];
      v66 = v90;
      Color.init(cgColor:)(v65, v90);
      result = (v59)(v66, 1, v6);
      if (result != 1)
      {

        outlined init with take of Color(v66, v61);
        v62 = v88;
LABEL_42:
        outlined destroy of Color(v62);
        v60 = 0;
        goto LABEL_43;
      }

LABEL_71:
      __break(1u);
      return result;
    }

    result = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_11;
    }

LABEL_16:
    v92[0] = v25;
    v25 = v92;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29 & ~(v29 >> 63), 0);
    if ((v84 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_66:
    __break(1u);
LABEL_67:
    v27 = MEMORY[0x1E69E7CD0];
LABEL_68:
    v24 = v89;
  }

  v34 = 0;
  v35 = v92[0];
  v36 = v89;
  ++v82;
  v83 = v89 & 0xC000000000000001;
  v37 = (v26 + 8);
  v81 = (v90 + 4);
  while (1)
  {
    v38 = v83 ? MEMORY[0x1DA6CE0C0](v34, v36) : *(v36 + 8 * v34 + 32);
    v39 = v38;
    v40 = MEMORY[0x1E69E7D40];
    v41 = (*((*MEMORY[0x1E69E7D40] & *v38) + 0x88))(v38);
    v42 = (*((*v40 & *v39) + 0x90))(v41);
    v44 = v43;
    if (v42 == NSNotFound.getter())
    {
      break;
    }

    if (__OFADD__(v42, v44))
    {
      goto LABEL_36;
    }

    v45 = v85;
    v46 = v87;
    CRAttributedString.subscript.getter();
    (*v82)(v3, v46);
    v47 = v88;
    CRAttributedString.Substring.runs.getter();

    (*v37)(v45, v47);
    v92[0] = v35;
    v49 = v35[2];
    v48 = v35[3];
    v6 = (v49 + 1);
    if (v49 >= v48 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v48 > 1, v49 + 1, 1);
      v35 = v92[0];
    }

    v34 = v34 + 1;
    v35[2] = v6;
    v90[4](v35 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + v90[9] * v49, v5, v86);
    v36 = v89;
    if (v84 == v34)
    {

      v25 = MEMORY[0x1E69E7CC0];
      goto LABEL_51;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:

  return v93;
}

uint64_t CanvasElementController.selectedSignatureColors()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit9SignatureVGMd);
  KeyPath = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v27 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v27 - v6);
  v8 = v0 + OBJC_IVAR____TtC8PaperKit23CanvasElementController_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(v8 + 8);
    ObjectType = swift_getObjectType();
    v12 = (*(v10 + 8))(ObjectType, v10);
    result = swift_unknownObjectRelease();
    if (!v12)
    {
      return 0;
    }

    v13 = *&v12[OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView];
    if (!v13)
    {
      __break(1u);
      return result;
    }

    v14 = v13;
    v15 = CanvasElementResizeView.resizingCanvasElements.getter();

    v33 = MEMORY[0x1E69E7CC0];
    if (v15 >> 62)
    {
LABEL_26:
      v32 = v15 & 0xFFFFFFFFFFFFFF8;
      v16 = __CocoaSet.count.getter();
      if (v16)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v32 = v15 & 0xFFFFFFFFFFFFFF8;
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
LABEL_6:
        v17 = 0;
        v30 = (KeyPath + 16);
        v31 = v15 & 0xC000000000000001;
        v29 = (KeyPath + 8);
        KeyPath = MEMORY[0x1E69E7CC0];
        while (1)
        {
          v28 = KeyPath;
          v18 = v17;
          while (1)
          {
            if (v31)
            {
              v19 = MEMORY[0x1DA6CE0C0](v18, v15);
            }

            else
            {
              if (v18 >= *(v32 + 16))
              {
                goto LABEL_25;
              }

              v19 = *(v15 + 8 * v18 + 32);
            }

            v20 = v19;
            v17 = v18 + 1;
            if (__OFADD__(v18, 1))
            {
              __break(1u);
LABEL_25:
              __break(1u);
              goto LABEL_26;
            }

            type metadata accessor for SignatureView();
            v21 = swift_dynamicCastClass();
            if (v21)
            {
              break;
            }

LABEL_9:
            ++v18;
            if (v17 == v16)
            {
              KeyPath = v28;
              goto LABEL_28;
            }
          }

          v22 = *((*MEMORY[0x1E69E7D40] & *v21) + 0x3F0);
          v23 = v21;
          swift_beginAccess();
          (*v30)(v4, &v23[v22], v1);
          KeyPath = swift_getKeyPath();
          Capsule.subscript.getter();

          (*v29)(v4, v1);
          v24 = type metadata accessor for Color(0);
          if ((*(*(v24 - 8) + 48))(v7, 1, v24) == 1)
          {
            break;
          }

          [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];

          v25 = outlined destroy of Color(v7);
          MEMORY[0x1DA6CD190](v25);
          if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          KeyPath = v33;
          if (v17 == v16)
          {
LABEL_28:

            v26 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo7UIColorC_SayAEGTt0g5Tf4g_n(KeyPath);

            return v26;
          }
        }

        outlined destroy of Color?(v7);
        goto LABEL_9;
      }
    }

    KeyPath = MEMORY[0x1E69E7CC0];
    goto LABEL_28;
  }

  return result;
}

uint64_t CanvasElementController.imageDescription.getter()
{
  v1 = v0 + OBJC_IVAR____TtC8PaperKit23CanvasElementController_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 8))(ObjectType, v3);
    v6 = swift_unknownObjectRelease();
    if (v5)
    {
      v7 = (*((*MEMORY[0x1E69E7D40] & *v5) + 0x5A0))(v6);

      return v7;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void CanvasElementController.imageDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC8PaperKit23CanvasElementController_delegate;
  if (swift_unknownObjectWeakLoadStrong() && (v6 = *(v5 + 8), ObjectType = swift_getObjectType(), v8 = (*(v6 + 8))(ObjectType, v6), swift_unknownObjectRelease(), v8))
  {
    (*((*MEMORY[0x1E69E7D40] & *v8) + 0x5A8))(a1, a2);
  }

  else
  {
  }
}

uint64_t protocol witness for ToolPickerControllerDelegate.toolPickerController(_:wantsToEnterFullscreen:) in conformance CanvasElementController(uint64_t a1, char a2)
{
  v4 = v2 + OBJC_IVAR____TtC8PaperKit23CanvasElementController_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 40))(v2, a2 & 1, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

void protocol witness for ToolPickerControllerDelegate.toolPickerControllerAdjustOpacity(_:) in conformance CanvasElementController()
{
  v0 = CanvasElementController.activeToolPicker.getter();
  [v0 _startOpacityEditing];
}

double protocol witness for NewCanvasElementDelegate.adjustedSizeForNewCanvasElement(withSize:) in conformance CanvasElementController(double a1, double a2)
{
  v5 = *v2 + OBJC_IVAR____TtC8PaperKit23CanvasElementController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    v8 = (*(v6 + 16))(ObjectType, v6);
    swift_unknownObjectRelease();
    if (v8)
    {
      *&a1 = *&AnyCanvas.adjustedSizeForNewCanvasElement(withSize:)(__PAIR128__(*&a2, *&a1));
    }
  }

  return a1;
}

double protocol witness for NewCanvasElementDelegate.suggestedPositionForNewCanvasElement(withSize:) in conformance CanvasElementController(double a1, double a2)
{
  v5 = *v2 + OBJC_IVAR____TtC8PaperKit23CanvasElementController_delegate;
  v6 = 0.0;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    v9 = (*(v7 + 16))(ObjectType, v7);
    v10 = swift_unknownObjectRelease();
    if (v9)
    {
      v6 = (*((*MEMORY[0x1E69E7D40] & *v9) + 0x990))(v10, a1, a2, 0.0);
    }
  }

  return v6;
}

uint64_t key path getter for AnyCanvas._allowHDR : AnyCanvas@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC8PaperKit9AnyCanvas___allowHDR);
  return result;
}

uint64_t specialized CanvasElementController.toolPickerControllerWindowScene(_:)()
{
  v1 = v0 + OBJC_IVAR____TtC8PaperKit23CanvasElementController_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 16))(ObjectType, v3);
    swift_unknownObjectRelease();
    if (v5)
    {
      v6 = [v5 window];

      v7 = [v6 windowScene];
      return v7;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void specialized CanvasElementController.toolPickerControllerConfigureToolPicker(_:)()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC8PaperKit23CanvasElementController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 16))(ObjectType, v3);
    swift_unknownObjectRelease();
    if (v5)
    {
      v9 = [v5 window];

      if (v9)
      {
        v6 = [objc_opt_self() _existingToolPickerForWindow_];
        if (v6)
        {
          v7.super.isa = v6;
          [(objc_class *)v6 addObserver:v1];
          CanvasElementController.configureToolPicker(_:)(v7);

          isa = v7.super.isa;
        }

        else
        {
          isa = v9;
        }
      }
    }
  }
}

void specialized CanvasElementController.toolPickerController(_:willShowToolPicker:)(void *a1)
{
  v2 = v1;
  v4 = v1 + OBJC_IVAR____TtC8PaperKit23CanvasElementController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v7 = (*(v5 + 24))(ObjectType, v5);
    swift_unknownObjectRelease();
    if (v7)
    {
      if ([v7 _isEnabled])
      {
        goto LABEL_7;
      }
    }
  }

  v8 = CanvasElementController.activeToolPicker.getter();
  if (!v8)
  {
    return;
  }

  v7 = v8;
LABEL_7:
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PKToolPicker);
  v9 = a1;
  v10 = static NSObject.== infix(_:_:)();

  if (v10)
  {
    [v9 addObserver_];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v11 = *(v4 + 8);
      v12 = swift_getObjectType();
      v13 = (*(v11 + 16))(v12, v11);
      swift_unknownObjectRelease();
      if (v13)
      {
        type metadata accessor for PaperTextAttachmentView();
        v14 = swift_dynamicCastClass();
        if (v14)
        {
          [v9 addObserver_];
        }
      }
    }

    CanvasElementController.updateToolPickerContextualEditingView()();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = *(v4 + 8);
      v16 = swift_getObjectType();
      v17 = (*(v15 + 8))(v16, v15);
      swift_unknownObjectRelease();
      if (v17)
      {
        v18 = *&v17[OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView];
        v19 = v18;

        if (v18)
        {
          [v19 layoutSubviews];
        }

        else
        {
          __break(1u);
        }
      }
    }
  }
}

void specialized CanvasElementController.toolPickerController(_:didShowToolPicker:)(void *a1)
{
  v3 = v1 + OBJC_IVAR____TtC8PaperKit23CanvasElementController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    v6 = (*(v4 + 24))(ObjectType, v4);
    swift_unknownObjectRelease();
    if (v6)
    {
      if ([v6 _isEnabled])
      {
        goto LABEL_7;
      }
    }
  }

  v7 = CanvasElementController.activeToolPicker.getter();
  if (!v7)
  {
    return;
  }

  v6 = v7;
LABEL_7:
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PKToolPicker);
  v8 = a1;
  v9 = static NSObject.== infix(_:_:)();

  if (v9)
  {
    if (swift_unknownObjectWeakLoadStrong() && (v10 = *(v3 + 8), v11 = swift_getObjectType(), v20 = (*(v10 + 16))(v11, v10), swift_unknownObjectRelease(), v20) || swift_unknownObjectWeakLoadStrong() && (v12 = *(v3 + 8), v13 = swift_getObjectType(), v20 = (*(v12 + 8))(v13, v12), swift_unknownObjectRelease(), v20))
    {
      v14 = (*((*MEMORY[0x1E69E7D40] & *v20) + 0x468))();
      if (v14)
      {
        v15 = v14;
        type metadata accessor for TiledTextView();
        v16 = swift_dynamicCastClass();
        if (v16)
        {
          v17 = v16;
          v18 = TiledTextView.imageWandTipController.getter();
          [v17 showImageWandTipWithController:v18 toolPicker:v8];

          v19 = v15;
          v20 = v18;
        }

        else
        {
          v19 = v20;
          v20 = v15;
        }
      }
    }
  }
}

uint64_t specialized CanvasElementController.toolPickerControllerViewController(_:)()
{
  v1 = v0 + OBJC_IVAR____TtC8PaperKit23CanvasElementController_delegate;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v2 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 8))(ObjectType, v2);
  v5 = swift_unknownObjectRelease();
  if (!v4)
  {
    return 0;
  }

  v6 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0x8C0))(v5);

  return v6;
}

void specialized static CanvasElementController.makeCanvasFirstResponder(_:)(void *a1)
{
  v2 = [a1 window];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() activeToolPickerForWindow_];
    if (v4)
    {
      v5 = v4;
      v6 = swift_allocObject();
      *(v6 + 16) = a1;
      v9[4] = partial apply for closure #1 in static CanvasElementController.makeCanvasFirstResponder(_:);
      v9[5] = v6;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 1107296256;
      v9[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v9[3] = &block_descriptor_56_0;
      v7 = _Block_copy(v9);
      v8 = a1;

      [v5 _performWithVisibilityUpdatesEnabled_block_];
      _Block_release(v7);

      return;
    }
  }

  [a1 becomeFirstResponder];
}

uint64_t specialized closure #1 in CanvasElementController.addCanvasElement(from:completionHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), double a5, double a6, double a7, double a8, double a9)
{
  if (a1)
  {
    v17 = a1;
    specialized static CanvasElementController.makeCanvasFirstResponder(_:)(v17);
    v18 = AnyCanvas.acceptedDropLayouts.getter();
    v19 = *(v18 + 16);
    result = swift_beginAccess();
    v21 = v18 + 40;
    v22 = -1;
    while (1)
    {
      if (v22 - v19 == -1)
      {
LABEL_6:

        goto LABEL_7;
      }

      if (++v22 >= *(v18 + 16))
      {
        break;
      }

      v23 = v21 + 16;
      result = (*(*v21 + 16))(a3, v17, 0, a5, a6, a7, a8, a9);
      *(a2 + 16) = result & 1;
      v21 = v23;
      if (result)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    swift_beginAccess();
    return a4(*(a2 + 16));
  }

  return result;
}

void specialized CanvasElementController.visibleCanvasInsertIfNeeded(completion:)(void *a1, uint64_t a2, void *a3, void (*a4)(void), void (*a5)(char *, uint64_t), uint64_t a6, double a7, double a8, double a9, double a10, double a11)
{
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = a3;
  *(v22 + 32) = a7;
  *(v22 + 40) = a8;
  *(v22 + 48) = a9;
  *(v22 + 56) = a10;
  *(v22 + 64) = a11;
  *(v22 + 72) = a4;
  *(v22 + 80) = a5;
  *(v22 + 88) = a6;
  v23 = a1 + OBJC_IVAR____TtC8PaperKit23CanvasElementController_delegate;
  if (!swift_unknownObjectWeakLoadStrong())
  {

    v37 = a3;

    goto LABEL_12;
  }

  v65 = a4;
  v66 = a1;
  v24 = *(v23 + 8);
  ObjectType = swift_getObjectType();
  v26 = *(v24 + 16);

  v64 = a3;

  v68 = v26(ObjectType, v24);
  swift_unknownObjectRelease();
  if (!v68)
  {
LABEL_12:

    return;
  }

  v27 = (*((*MEMORY[0x1E69E7D40] & *v68) + 0x468))();
  if (v27)
  {
    v67 = v27;
    v28 = [v27 scrollView];
    if (v28)
    {
      v29 = v28;
      [v68 bounds];
      y = v76.origin.y;
      width = v76.size.width;
      x = v76.origin.x;
      Height = CGRectGetHeight(v76);
      if (Height > 384.0)
      {
        v33 = Height;
      }

      else
      {
        v33 = 384.0;
      }

      type metadata accessor for PaperTextAttachmentView();
      v62 = a11;
      if (swift_dynamicCastClass())
      {
        v34 = v68;
        v35 = PaperTextAttachmentView.isAtEndOfDocument.getter();

        v36 = v66;
        if (v35)
        {
          [v67 bounds];
          v33 = v33 + CGRectGetHeight(v77);
        }
      }

      else
      {
        v36 = v66;
      }

      [v68 convertRect:v67 toCoordinateSpace:{x, y, width, v33}];
      v40 = v39;
      v42 = v41;
      v44 = v43;
      v46 = v45;
      [v67 bounds];
      v80.origin.x = v47;
      v80.origin.y = v48;
      v80.size.width = v49;
      v80.size.height = v50;
      v78.origin.x = v40;
      v78.origin.y = v42;
      v78.size.width = v44;
      v78.size.height = v46;
      v79 = CGRectIntersection(v78, v80);
      if (CGRectGetHeight(v79) < 384.0)
      {
        v51 = objc_opt_self();
        v52 = swift_allocObject();
        *(v52 + 2) = v29;
        v52[3] = v40;
        v52[4] = v42;
        v52[5] = v44;
        v52[6] = v46;
        v73 = partial apply for closure #1 in CanvasElementController.visibleCanvasInsertIfNeeded(completion:);
        v74 = v52;
        aBlock = MEMORY[0x1E69E9820];
        v70 = 1107296256;
        v71 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
        v72 = &block_descriptor_48;
        v53 = _Block_copy(&aBlock);
        v54 = v29;

        v55 = swift_allocObject();
        *(v55 + 2) = v68;
        *(v55 + 3) = v54;
        *(v55 + 4) = v67;
        *(v55 + 5) = partial apply for closure #1 in CanvasElementController.addCanvasElement(from:completionHandler:);
        *(v55 + 6) = v22;
        *(v55 + 7) = v36;
        v73 = partial apply for closure #2 in CanvasElementController.visibleCanvasInsertIfNeeded(completion:);
        v74 = v55;
        aBlock = MEMORY[0x1E69E9820];
        v70 = 1107296256;
        v71 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
        v72 = &block_descriptor_19_1;
        v56 = _Block_copy(&aBlock);
        v57 = v68;
        v58 = v54;
        v59 = v67;

        v60 = v36;

        [v51 animateWithDuration:v53 animations:v56 completion:0.3];

        _Block_release(v56);
        _Block_release(v53);

        return;
      }

      v61 = v64;

      specialized getCanvas #1 () in CanvasElementController.visibleCanvasInsertIfNeeded(completion:)(v68, v29, v67, v36, a2, v61, v65, a5, a7, a8, a9, a10, v62, a6);
    }

    else
    {
    }

    v38 = v67;
  }

  else
  {

    v38 = v68;
  }
}

uint64_t block_copy_helper_48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_15Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t objectdestroy_9Tm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t specialized CanvasElementController.toolPickerControllerViewControllerForPresentingUI(_:)()
{
  v1 = v0 + OBJC_IVAR____TtC8PaperKit23CanvasElementController_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 8))(ObjectType, v3);
    v6 = swift_unknownObjectRelease();
    if (v5)
    {
      v7 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x8C0);
      v8 = (v7)(v6);
      v9 = [v8 presentedViewController];

      if (v9)
      {

        return v9;
      }

      else
      {
        v10 = v7();

        return v10;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void partial apply for closure #1 in CanvasElementController.addCanvasElement<A>(_:)(void *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = *(type metadata accessor for Capsule() - 8);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v8 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in CanvasElementController.addCanvasElement<A>(_:)(a1, v1 + v7, v8, v3, v4, v5);
}

void specialized CanvasElementController._toolPicker(_:didChange:)(void *a1)
{
  if (a1)
  {
    v2 = v1 + OBJC_IVAR____TtC8PaperKit23CanvasElementController_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      v5 = *(v3 + 8);
      v6 = a1;
      v7 = v5(ObjectType, v3);
      v8 = swift_unknownObjectRelease();
      if (v7)
      {
        v9 = *((*MEMORY[0x1E69E7D40] & *v7) + 0x468);
        v10 = (v9)(v8);
        if (v10)
        {
          v11 = v10;
          v12 = [v10 selectionInteraction];

          LOBYTE(v11) = [v12 currentSelectionHasStrokes];
          if (v11)
          {
            v13 = v9();
            [v13 setSelectedStrokesColor_];
          }
        }
      }
    }

    else
    {
      v14 = a1;
    }

    CanvasElementController.updateToolPickerContextualEditingView()();
  }
}

uint64_t specialized CanvasElementController._toolPickerCurrentSelectionColor(_:)()
{
  v1 = v0;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd);
  v2 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v43 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v43 - v5;
  v7 = MEMORY[0x1E69E7CC0];
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    goto LABEL_29;
  }

LABEL_2:
  v8 = MEMORY[0x1E69E7CD0];
  while (1)
  {
    v50 = v8;
    v9 = CanvasElementController.selectedTextBoxColors()();
    if (v9)
    {
      specialized Set.formUnion<A>(_:)(v9);
    }

    v10 = CanvasElementController.selectedSignatureColors()();
    if (v10)
    {
      v11 = v10;
      if ((v10 & 0xC000000000000001) != 0)
      {
        if (!__CocoaSet.count.getter())
        {
          goto LABEL_10;
        }
      }

      else if (!*(v10 + 16))
      {
LABEL_10:

        goto LABEL_11;
      }

      specialized Set.formUnion<A>(_:)(v11);
    }

LABEL_11:
    v12 = v1 + OBJC_IVAR____TtC8PaperKit23CanvasElementController_delegate;
    if (!swift_unknownObjectWeakLoadStrong())
    {
      goto LABEL_61;
    }

    v13 = *(v12 + 8);
    ObjectType = swift_getObjectType();
    v15 = (*(v13 + 8))(ObjectType, v13);
    result = swift_unknownObjectRelease();
    if (!v15)
    {
      goto LABEL_61;
    }

    v17 = *&v15[OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView];
    if (!v17)
    {
      __break(1u);
      return result;
    }

    v18 = v17;
    v19 = CanvasElementResizeView.resizingCanvasElements.getter();

    v48 = v7;
    if (v19 >> 62)
    {
      break;
    }

    v1 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v1)
    {
      goto LABEL_32;
    }

LABEL_16:
    v47 = v2;
    v7 = v6;
    v6 = 0;
    v2 = (v19 & 0xC000000000000001);
    while (1)
    {
      if (v2)
      {
        v20 = MEMORY[0x1DA6CE0C0](v6, v19);
      }

      else
      {
        if (v6 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v20 = *(v19 + 8 * v6 + 32);
      }

      v21 = v20;
      v22 = (v6 + 1);
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v23 = (*((*MEMORY[0x1E69E7D40] & *v20) + 0x318))();
      if (v23)
      {
        v24 = v23;
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v6;
      if (v22 == v1)
      {
        v2 = v47;
        v25 = v48;
        v6 = v7;
        v7 = MEMORY[0x1E69E7CC0];
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_2;
    }

    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo7UIColorC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  v1 = __CocoaSet.count.getter();
  if (v1)
  {
    goto LABEL_16;
  }

LABEL_32:
  v25 = v7;
LABEL_33:

  v49 = v7;
  if ((v25 & 0x8000000000000000) == 0 && (v25 & 0x4000000000000000) == 0)
  {
    v26 = *(v25 + 16);
    if (v26)
    {
      goto LABEL_36;
    }

LABEL_56:
    v28 = MEMORY[0x1E69E7CC0];
    goto LABEL_57;
  }

  while (2)
  {
    v26 = __CocoaSet.count.getter();
    if (!v26)
    {
      goto LABEL_56;
    }

LABEL_36:
    v27 = 0;
    v47 = v25 & 0xC000000000000001;
    v44 = (v2 + 2);
    ++v2;
    v28 = MEMORY[0x1E69E7CC0];
LABEL_37:
    v43 = v28;
    v29 = v27;
LABEL_40:
    if (v47)
    {
      v30 = MEMORY[0x1DA6CE0C0](v29, v25);
    }

    else
    {
      if (v29 >= *(v25 + 16))
      {
        goto LABEL_54;
      }

      v30 = *(v25 + 8 * v29 + 32);
    }

    v31 = v30;
    v27 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
LABEL_54:
      __break(1u);
      continue;
    }

    break;
  }

  type metadata accessor for ShapeView();
  v32 = swift_dynamicCastClass();
  if (!v32)
  {

    goto LABEL_39;
  }

  v33 = *((*MEMORY[0x1E69E7D40] & *v32) + 0x3F0);
  v34 = v6;
  v35 = v32;
  swift_beginAccess();
  v36 = v35 + v33;
  v37 = v45;
  v38 = v46;
  (*v44)(v45, v36, v46);
  swift_getKeyPath();
  Capsule.subscript.getter();
  v6 = v34;

  (*v2)(v37, v38);
  v39 = type metadata accessor for Color(0);
  if ((*(*(v39 - 8) + 48))(v34, 1, v39) == 1)
  {

    outlined destroy of Color?(v34);
LABEL_39:
    ++v29;
    if (v27 == v26)
    {
      v28 = v43;
      goto LABEL_57;
    }

    goto LABEL_40;
  }

  [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];

  v40 = outlined destroy of Color(v34);
  MEMORY[0x1DA6CD190](v40);
  if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v28 = v49;
  v6 = v34;
  if (v27 != v26)
  {
    goto LABEL_37;
  }

LABEL_57:

  if (v28 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
LABEL_59:
      specialized Set.formUnion<A>(_:)(v28);
    }
  }

  else if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_59;
  }

LABEL_61:
  v41 = v50;
  if ((v50 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter() == 1)
    {
      goto LABEL_63;
    }

LABEL_65:
    v42 = 0;
  }

  else
  {
    if (*(v50 + 16) != 1)
    {
      goto LABEL_65;
    }

LABEL_63:
    v42 = specialized Collection.first.getter(v41);
  }

  return v42;
}

void specialized CanvasElementController._toolPickerDidInvokeAddTextBox(_:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC8PaperKit23CanvasElementController_toolPickerController);
  if (v1)
  {
    v2 = v1 + OBJC_IVAR____TtC8PaperKit20ToolPickerController_delegate;
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
  }
}

void specialized CanvasElementController._toolPickerDidInvokeInsertSticker(_:from:)(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8PaperKit23CanvasElementController_toolPickerController);
  if (v2)
  {
    v4 = &v2[OBJC_IVAR____TtC8PaperKit20ToolPickerController_delegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 1);
      ObjectType = swift_getObjectType();
      v7 = *(v5 + 72);
      v8 = v2;
      v7(a1, UnknownCanvasElementView.flags.modify, 0, ObjectType, v5);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t CRAsset.loadImage(maxDimensionInPixels:waitIfUnavailable:isHDRAllowed:)(uint64_t a1, char a2, char a3)
{
  *(v4 + 81) = a3;
  *(v4 + 80) = a2;
  *(v4 + 48) = a1;
  *(v4 + 56) = v3;
  return MEMORY[0x1EEE6DFA0](CRAsset.loadImage(maxDimensionInPixels:waitIfUnavailable:isHDRAllowed:), 0, 0);
}

uint64_t CRAsset.loadImage(maxDimensionInPixels:waitIfUnavailable:isHDRAllowed:)()
{
  if (one-time initialization token for imageCache != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 81);
  v2 = static CRAsset.imageCache;

  v3 = CRAsset.digest.getter();
  v5 = v4;
  v6 = type metadata accessor for AssetInfo();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtC8PaperKit9AssetInfo_digest];
  *v8 = v3;
  v8[1] = v5;
  *&v7[OBJC_IVAR____TtC8PaperKit9AssetInfo_maxDimensionInPixels] = 0;
  v7[OBJC_IVAR____TtC8PaperKit9AssetInfo_isHDRAllowed] = v1;
  *(v0 + 16) = v7;
  *(v0 + 24) = v6;
  v9 = objc_msgSendSuper2((v0 + 16), sel_init);
  v10 = [*(v2 + 16) objectForKey_];

  type metadata accessor for CGImageRef(0);
  v11 = swift_dynamicCastUnknownClass();
  if (v11)
  {
    v12 = v11;
    v13 = *(v0 + 48);
    Width = CGImageGetWidth(v11);
    Height = CGImageGetHeight(v12);
    if (Height <= Width)
    {
      v16 = Width;
    }

    else
    {
      v16 = Height;
    }

    if (v16 <= v13)
    {
      goto LABEL_11;
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v17 = *(v0 + 48);
  v18 = static CRAsset.imageCache;

  v19 = CRAsset.digest.getter();
  v21 = v20;
  v22 = objc_allocWithZone(v6);
  v23 = &v22[OBJC_IVAR____TtC8PaperKit9AssetInfo_digest];
  *v23 = v19;
  v23[1] = v21;
  *&v22[OBJC_IVAR____TtC8PaperKit9AssetInfo_maxDimensionInPixels] = v17;
  v22[OBJC_IVAR____TtC8PaperKit9AssetInfo_isHDRAllowed] = v1;
  *(v0 + 32) = v22;
  *(v0 + 40) = v6;
  v24 = objc_msgSendSuper2((v0 + 32), sel_init);
  v25 = [*(v18 + 16) objectForKey_];

  v12 = swift_dynamicCastUnknownClass();
  if (v12)
  {
LABEL_11:
    v26 = *(v0 + 8);

    return v26(v12);
  }

  swift_unknownObjectRelease();
  v28 = swift_task_alloc();
  *(v0 + 64) = v28;
  *v28 = v0;
  v28[1] = CRAsset.loadImage(maxDimensionInPixels:waitIfUnavailable:isHDRAllowed:);
  v29 = *(v0 + 80);

  return CRAsset.cgImageSource(waitIfUnavailable:)(v29);
}

{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 81);
    v3 = *(v0 + 48);
    v4 = v1;
    v5 = CRAsset.digest.getter();
    v7 = v6;
    v8 = specialized static CRAsset.loadImageSrc(_:digest:maxDimensionInPixels:isHDRAllowed:tryCache:)(v1, v5, v6, v3, v2, 0);
    outlined consume of Data._Representation(v5, v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v0 + 8);

  return v9(v8);
}

uint64_t CRAsset.loadImage(maxDimensionInPixels:waitIfUnavailable:isHDRAllowed:)(uint64_t a1)
{
  *(*v1 + 72) = a1;

  return MEMORY[0x1EEE6DFA0](CRAsset.loadImage(maxDimensionInPixels:waitIfUnavailable:isHDRAllowed:), 0, 0);
}

uint64_t CRAssetOrData.loadImage(maxDimensionInPixels:waitIfUnavailable:isHDRAllowed:)(uint64_t a1, char a2, char a3)
{
  *(v4 + 137) = a3;
  *(v4 + 136) = a2;
  *(v4 + 64) = a1;
  *(v4 + 72) = v3;
  v5 = type metadata accessor for CRAsset();
  *(v4 + 80) = v5;
  *(v4 + 88) = *(v5 - 8);
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = type metadata accessor for CRAssetOrData();
  *(v4 + 112) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](CRAssetOrData.loadImage(maxDimensionInPixels:waitIfUnavailable:isHDRAllowed:), 0, 0);
}

uint64_t CRAssetOrData.loadImage(maxDimensionInPixels:waitIfUnavailable:isHDRAllowed:)()
{
  outlined init with copy of CRAssetOrData(*(v0 + 72), *(v0 + 112));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = *(v0 + 112);
    v2 = *(v0 + 137);
    v3 = *(v0 + 64);
    v4 = *v1;
    v5 = v1[1];
    v7 = v1[2];
    v6 = v1[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_SbtGMd);
    inited = swift_initStackObject();
    v9 = MEMORY[0x1E696E0A8];
    *(inited + 16) = xmmword_1D4058CF0;
    v10 = *v9;
    *(inited + 32) = v10;
    *(inited + 40) = 0;
    v11 = v10;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_SbTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of StocksKitCurrencyCache.Provider?(inited + 32, &_sSo11CFStringRefa_SbtMd);
    type metadata accessor for CFStringRef(0);
    lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v13 = Data._bridgeToObjectiveC()().super.isa;
    v14 = CGImageSourceCreateWithData(v13, isa);

    outlined copy of Data._Representation(v4, v5);
    v15 = specialized static CRAsset.loadImageSrc(_:digest:maxDimensionInPixels:isHDRAllowed:tryCache:)(v14, v4, v5, v3, v2, 0);
    outlined consume of Data._Representation(v4, v5);

    outlined consume of Data._Representation(v4, v5);
    outlined consume of Data._Representation(v7, v6);

    v16 = *(v0 + 8);

    return v16(v15);
  }

  else
  {
    (*(*(v0 + 88) + 32))(*(v0 + 96), *(v0 + 112), *(v0 + 80));
    v18 = swift_task_alloc();
    *(v0 + 120) = v18;
    *v18 = v0;
    v18[1] = CRAssetOrData.loadImage(maxDimensionInPixels:waitIfUnavailable:isHDRAllowed:);
    v19 = *(v0 + 137);
    v20 = *(v0 + 136);
    v21 = *(v0 + 64);

    return CRAsset.loadImage(maxDimensionInPixels:waitIfUnavailable:isHDRAllowed:)(v21, v20, v19);
  }
}

{
  (*(v0[11] + 8))(v0[12], v0[10]);
  v1 = v0[16];

  v2 = v0[1];

  return v2(v1);
}

uint64_t CRAssetOrData.loadImage(maxDimensionInPixels:waitIfUnavailable:isHDRAllowed:)(uint64_t a1)
{
  *(*v1 + 128) = a1;

  return MEMORY[0x1EEE6DFA0](CRAssetOrData.loadImage(maxDimensionInPixels:waitIfUnavailable:isHDRAllowed:), 0, 0);
}

uint64_t CRAsset.cgImageSource(waitIfUnavailable:)(char a1)
{
  *(v2 + 72) = v1;
  *(v2 + 104) = a1;
  return MEMORY[0x1EEE6DFA0](CRAsset.cgImageSource(waitIfUnavailable:), 0, 0);
}

uint64_t CRAsset.cgImageSource(waitIfUnavailable:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_SbtGMd);
  inited = swift_initStackObject();
  v2 = MEMORY[0x1E696E0A8];
  *(inited + 16) = xmmword_1D4058CF0;
  v3 = *v2;
  *(inited + 32) = v3;
  *(inited + 40) = 0;
  v4 = v3;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_SbTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of StocksKitCurrencyCache.Provider?(inited + 32, &_sSo11CFStringRefa_SbtMd);
  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
  v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  *(v0 + 80) = v5;

  if (static Task<>.isCancelled.getter())
  {

    v6 = *(v0 + 8);

    return v6(0);
  }

  else
  {
    v8 = *(v0 + 72);
    v9 = swift_task_alloc();
    *(v0 + 88) = v9;
    v9[2].super.isa = v8;
    v9[3].super.isa = v5.super.isa;
    v10 = swift_task_alloc();
    *(v0 + 96) = v10;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16CGImageSourceRefaSgMd);
    *v10 = v0;
    v10[1] = CRAsset.cgImageSource(waitIfUnavailable:);
    v12 = *(v0 + 104);

    return MEMORY[0x1EEDF52A8](v0 + 64, v12, &async function pointer to partial apply for closure #1 in CRAsset.cgImageSource(waitIfUnavailable:), v9, v11);
  }
}

{

  if (*(v0 + 64) == 1)
  {
    v1 = 0;
  }

  else
  {
    v1 = *(v0 + 64);
  }

  v2 = *(v0 + 8);

  return v2(v1);
}

void CRAsset.cgImageSource(waitIfUnavailable:)()
{

  if (v0)
  {
  }

  else
  {

    MEMORY[0x1EEE6DFA0](CRAsset.cgImageSource(waitIfUnavailable:), 0, 0);
  }
}

uint64_t AssetInfo.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of Any?(a1, v11);
  if (!v12)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v11, &_sypSgMd);
    goto LABEL_9;
  }

  type metadata accessor for AssetInfo();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v8 = 0;
    return v8 & 1;
  }

  if (v10 == v1)
  {

    v8 = 1;
    return v8 & 1;
  }

  v2 = *&v1[OBJC_IVAR____TtC8PaperKit9AssetInfo_digest];
  v3 = *&v1[OBJC_IVAR____TtC8PaperKit9AssetInfo_digest + 8];
  v4 = *&v10[OBJC_IVAR____TtC8PaperKit9AssetInfo_digest];
  v5 = *&v10[OBJC_IVAR____TtC8PaperKit9AssetInfo_digest + 8];
  outlined copy of Data._Representation(v4, v5);
  LOBYTE(v2) = specialized static Data.== infix(_:_:)(v2, v3, v4, v5);
  outlined consume of Data._Representation(v4, v5);
  if ((v2 & 1) == 0 || *&v1[OBJC_IVAR____TtC8PaperKit9AssetInfo_maxDimensionInPixels] != *&v10[OBJC_IVAR____TtC8PaperKit9AssetInfo_maxDimensionInPixels])
  {

    goto LABEL_9;
  }

  v6 = v1[OBJC_IVAR____TtC8PaperKit9AssetInfo_isHDRAllowed];
  v7 = v10[OBJC_IVAR____TtC8PaperKit9AssetInfo_isHDRAllowed];

  v8 = v6 ^ v7 ^ 1;
  return v8 & 1;
}

id AssetInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AssetInfo();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id one-time initialization function for imageCache()
{
  type metadata accessor for AssetCache();
  v0 = swift_allocObject();
  result = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  *(v0 + 16) = result;
  static CRAsset.imageCache = v0;
  return result;
}

uint64_t closure #1 in CRAsset.cgImageSource(waitIfUnavailable:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  return MEMORY[0x1EEE6DFA0](closure #1 in CRAsset.cgImageSource(waitIfUnavailable:), 0, 0);
}

uint64_t closure #1 in CRAsset.cgImageSource(waitIfUnavailable:)()
{
  CRAsset.assetManager.getter();
  CRAssetManager.encryptionDelegate.getter();

  if (*(v0 + 80))
  {
    outlined init with take of PaperKitHashable((v0 + 56), v0 + 16);
    v7 = Data.init(contentsOf:options:)();
    v9 = v8;
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    v12 = dispatch thunk of EncryptionDelegate.decrypt(_:)();
    v14 = v13;
    v15 = static Task<>.isCancelled.getter();
    if (v15)
    {
      v16 = *(v0 + 96);
      outlined consume of Data._Representation(v7, v9);
      outlined consume of Data._Representation(v12, v14);
      *v16 = 0;
    }

    else
    {
      v17 = *(v0 + 120);
      v18 = *(v0 + 96);
      isa = Data._bridgeToObjectiveC()().super.isa;
      v20 = CGImageSourceCreateWithData(isa, v17);
      outlined consume of Data._Representation(v7, v9);
      outlined consume of Data._Representation(v12, v14);

      *v18 = v20;
    }

    __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  }

  else
  {
    v1 = *(v0 + 120);
    v2 = *(v0 + 96);
    outlined destroy of StocksKitCurrencyCache.Provider?(v0 + 56, &_s9Coherence18EncryptionDelegate_pSgMd);
    URL._bridgeToObjectiveC()(v3);
    v5 = v4;
    v6 = CGImageSourceCreateWithURL(v4, v1);

    *v2 = v6;
  }

  v10 = *(v0 + 8);

  return v10();
}

CGImageRef specialized static CRAsset.loadImageSrc(_:digest:maxDimensionInPixels:isHDRAllowed:tryCache:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, char a5, char a6)
{
  if (!a1)
  {
    return 0;
  }

  isrc = a1;
  v10 = CGImageSourceCopyPropertiesAtIndex(isrc, 0, 0);
  if (!v10)
  {
    goto LABEL_22;
  }

  v11 = v10;
  type metadata accessor for NSObject();
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type NSObject and conformance NSObject, type metadata accessor for NSObject);
  v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = *MEMORY[0x1E696DED8];
  if ((v12 & 0xC000000000000001) != 0)
  {

    v14 = v13;
    v15 = __CocoaDictionary.lookup(_:)();

    if (!v15)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (!*(v12 + 16))
    {
LABEL_21:

      goto LABEL_22;
    }

    v17 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
    if ((v18 & 1) == 0)
    {
      swift_bridgeObjectRelease_n();
      goto LABEL_22;
    }

    v15 = *(*(v12 + 56) + 8 * v17);
    swift_unknownObjectRetain();
  }

  *&v82 = v15;
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_21;
  }

  v19 = *MEMORY[0x1E696DEC8];
  if ((v12 & 0xC000000000000001) != 0)
  {
    v20 = v19;
    v21 = __CocoaDictionary.lookup(_:)();

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (!*(v12 + 16))
    {
      goto LABEL_21;
    }

    v22 = specialized __RawDictionaryStorage.find<A>(_:)(v19);
    if ((v23 & 1) == 0)
    {
      goto LABEL_21;
    }

    v21 = *(*(v12 + 56) + 8 * v22);
    swift_unknownObjectRetain();
  }

  *&v82 = v21;
  if (swift_dynamicCast())
  {
    v24 = *&v81[0];
    if (a6)
    {
      goto LABEL_23;
    }

    goto LABEL_32;
  }

LABEL_22:
  v24 = 0;
  if (a6)
  {
LABEL_23:
    if (a3 >> 60 != 15)
    {
      if (v24 <= a4)
      {
        v25 = 0;
      }

      else
      {
        v25 = a4;
      }

      v26 = type metadata accessor for AssetInfo();
      v27 = objc_allocWithZone(v26);
      v28 = &v27[OBJC_IVAR____TtC8PaperKit9AssetInfo_digest];
      *v28 = a2;
      v28[1] = a3;
      *&v27[OBJC_IVAR____TtC8PaperKit9AssetInfo_maxDimensionInPixels] = v25;
      v27[OBJC_IVAR____TtC8PaperKit9AssetInfo_isHDRAllowed] = a5 & 1;
      outlined copy of Data._Representation(a2, a3);
      outlined copy of Data._Representation(a2, a3);
      v78.receiver = v27;
      v78.super_class = v26;
      v29 = objc_msgSendSuper2(&v78, sel_init);
      if (one-time initialization token for imageCache != -1)
      {
        swift_once();
      }

      v30 = *(static CRAsset.imageCache + 16);

      v31 = [v30 objectForKey_];

      outlined consume of Data?(a2, a3);

      type metadata accessor for CGImageRef(0);
      v32 = swift_dynamicCastUnknownClass();
      if (v32)
      {
        ThumbnailAtIndex = v32;

        return ThumbnailAtIndex;
      }

      swift_unknownObjectRelease();
    }
  }

LABEL_32:
  v74 = v24;
  v75 = a2;
  v33 = MEMORY[0x1E69E6530];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_yptGMd);
  inited = swift_initStackObject();
  v35 = *MEMORY[0x1E696DFE8];
  *(inited + 32) = *MEMORY[0x1E696DFE8];
  *(inited + 16) = xmmword_1D40621E0;
  v36 = MEMORY[0x1E69E6370];
  v37 = MEMORY[0x1E696E0A8];
  *(inited + 40) = 1;
  v38 = *v37;
  *(inited + 64) = v36;
  *(inited + 72) = v38;
  v39 = MEMORY[0x1E696E0B8];
  *(inited + 80) = 1;
  v40 = *v39;
  *(inited + 104) = v36;
  *(inited + 112) = v40;
  v41 = MEMORY[0x1E696E000];
  *(inited + 120) = 1;
  v42 = *v41;
  *(inited + 144) = v36;
  *(inited + 152) = v42;
  v43 = MEMORY[0x1E696E100];
  *(inited + 160) = 1;
  v44 = *v43;
  *(inited + 184) = v36;
  *(inited + 192) = v44;
  *(inited + 224) = v33;
  *(inited + 200) = a4;
  v45 = v35;
  v46 = v38;
  v47 = v40;
  v48 = v42;
  v49 = v44;
  v50 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11CFStringRefa_yptMd);
  swift_arrayDestroy();
  v51 = *MEMORY[0x1E696E018];
  if (a5)
  {
    v52 = *MEMORY[0x1E696E028];
    type metadata accessor for CFStringRef(0);
    v83 = v53;
    *&v82 = v52;
    outlined init with take of Any(&v82, v81);
    v54 = v52;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v80 = v50;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v81, v51, isUniquelyReferenced_nonNull_native);
    v50 = v80;
    v51 = *MEMORY[0x1E696E020];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_SbtGMd);
    v56 = swift_initStackObject();
    v57 = MEMORY[0x1E696D208];
    *(v56 + 16) = xmmword_1D4058CF0;
    v58 = *v57;
    *(v56 + 32) = v58;
    *(v56 + 40) = 1;
    v59 = v58;
    v60 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_SbTt0g5Tf4g_n(v56);
    swift_setDeallocating();
    outlined destroy of StocksKitCurrencyCache.Provider?(v56 + 32, &_sSo11CFStringRefa_SbtMd);
    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo11CFStringRefaSbGMd);
    *&v82 = v60;
    outlined init with take of Any(&v82, v81);
  }

  else
  {
    v61 = *MEMORY[0x1E696E030];
    type metadata accessor for CFStringRef(0);
    v83 = v62;
    *&v82 = v61;
    outlined init with take of Any(&v82, v81);
    v63 = v61;
  }

  v64 = swift_isUniquelyReferenced_nonNull_native();
  v80 = v50;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v81, v51, v64);
  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(isrc, 0, isa);

  if (ThumbnailAtIndex && a3 >> 60 != 15)
  {
    if (v74 <= a4)
    {
      v66 = 0;
    }

    else
    {
      v66 = a4;
    }

    v67 = type metadata accessor for AssetInfo();
    v68 = objc_allocWithZone(v67);
    v69 = &v68[OBJC_IVAR____TtC8PaperKit9AssetInfo_digest];
    *v69 = v75;
    v69[1] = a3;
    *&v68[OBJC_IVAR____TtC8PaperKit9AssetInfo_maxDimensionInPixels] = v66;
    v68[OBJC_IVAR____TtC8PaperKit9AssetInfo_isHDRAllowed] = a5 & 1;
    outlined copy of Data?(v75, a3);
    v79.receiver = v68;
    v79.super_class = v67;
    v70 = ThumbnailAtIndex;
    v71 = objc_msgSendSuper2(&v79, sel_init);
    if (one-time initialization token for imageCache != -1)
    {
      swift_once();
    }

    v72 = *(static CRAsset.imageCache + 16);

    [v72 setObject:v70 forKey:v71];
  }

  return ThumbnailAtIndex;
}

uint64_t partial apply for closure #1 in CRAsset.cgImageSource(waitIfUnavailable:)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return closure #1 in CRAsset.cgImageSource(waitIfUnavailable:)(a1, a2, v7, v6);
}

uint64_t outlined init with copy of CRAssetOrData(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRAssetOrData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void ResizeView.init(frame:canvas:resizeHandles:)(void *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  swift_unknownObjectWeakInit();
  *&v7[OBJC_IVAR____TtC8PaperKit10ResizeView_controlHandles] = MEMORY[0x1E69E7CC0];
  *&v7[OBJC_IVAR____TtC8PaperKit10ResizeView_currentActiveHandle] = 0;
  v14 = &v7[OBJC_IVAR____TtC8PaperKit10ResizeView_resizeOriginalCoordinateSpace];
  *v14 = 0x3FF0000000000000;
  v14[1] = 0;
  v14[2] = 0;
  v14[3] = 0x3FF0000000000000;
  v14[4] = 0;
  v14[5] = 0;
  v15 = &v7[OBJC_IVAR____TtC8PaperKit10ResizeView_resizeOriginalCoordinateSpaceScaled];
  *v15 = 0x3FF0000000000000;
  v15[1] = 0;
  v15[2] = 0;
  v15[3] = 0x3FF0000000000000;
  v15[4] = 0;
  v15[5] = 0;
  v16 = &v7[OBJC_IVAR____TtC8PaperKit10ResizeView_originalControlPointLocation];
  *v16 = 0;
  v16[1] = 0;
  *&v7[OBJC_IVAR____TtC8PaperKit10ResizeView_dragGestureRecognizer] = 0;
  *&v7[OBJC_IVAR____TtC8PaperKit10ResizeView_rotationGestureRecognizer] = 0;
  v17 = &v7[OBJC_IVAR____TtC8PaperKit10ResizeView_transientResizeTransform];
  *v17 = 0u;
  *(v17 + 1) = 0u;
  *(v17 + 2) = 0u;
  v17[48] = 1;
  v7[OBJC_IVAR____TtC8PaperKit10ResizeView_isResizing] = 0;
  v7[OBJC_IVAR____TtC8PaperKit10ResizeView_isRotating] = 0;
  v7[OBJC_IVAR____TtC8PaperKit10ResizeView_dragConstainedAxis] = 0;
  v7[OBJC_IVAR____TtC8PaperKit10ResizeView_isUndoManagerGroupingForDrag] = 0;
  v7[OBJC_IVAR____TtC8PaperKit10ResizeView_restoreUndoGroupingAfterDrag] = 0;
  v18 = &v7[OBJC_IVAR____TtC8PaperKit10ResizeView_nudgeDelta];
  *v18 = 0;
  v18[1] = 0;
  *&v7[OBJC_IVAR____TtC8PaperKit10ResizeView_nudgeTimer] = 0;
  v67 = a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v19 = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1D4058C60;
    v20 = type metadata accessor for CanvasElementResizeHandle();
    v21 = objc_allocWithZone(v20);
    *(v19 + 32) = CanvasElementResizeHandle.init(_:category:enabled:)(0, 0, 1);
    v22 = objc_allocWithZone(v20);
    *(v19 + 40) = CanvasElementResizeHandle.init(_:category:enabled:)(1, 0, 1);
    v23 = objc_allocWithZone(v20);
    *(v19 + 48) = CanvasElementResizeHandle.init(_:category:enabled:)(2, 0, 1);
    v24 = objc_allocWithZone(v20);
    *(v19 + 56) = CanvasElementResizeHandle.init(_:category:enabled:)(3, 0, 1);
    v25 = objc_allocWithZone(v20);
    *(v19 + 64) = CanvasElementResizeHandle.init(_:category:enabled:)(4, 0, 1);
    v26 = objc_allocWithZone(v20);
    *(v19 + 72) = CanvasElementResizeHandle.init(_:category:enabled:)(5, 0, 1);
    v27 = objc_allocWithZone(v20);
    *(v19 + 80) = CanvasElementResizeHandle.init(_:category:enabled:)(6, 0, 1);
    v28 = objc_allocWithZone(v20);
    *(v19 + 88) = CanvasElementResizeHandle.init(_:category:enabled:)(7, 0, 1);
  }

  *&v7[OBJC_IVAR____TtC8PaperKit10ResizeView_resizeHandles] = v19;
  v29 = objc_allocWithZone(MEMORY[0x1E69DD250]);

  v30 = [v29 initWithFrame_];
  v31 = OBJC_IVAR____TtC8PaperKit10ResizeView_borderView;
  *&v7[OBJC_IVAR____TtC8PaperKit10ResizeView_borderView] = v30;
  v32 = one-time initialization token for paperKitBundle;
  v33 = v30;
  if (v32 != -1)
  {
    swift_once();
  }

  v70._object = 0x80000001D408D3C0;
  v34.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v34.value._object = 0xEB00000000656C62;
  v35._countAndFlagsBits = 0x4220657A69736552;
  v35._object = 0xED0000726564726FLL;
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  v70._countAndFlagsBits = 0xD000000000000028;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v35, v34, paperKitBundle, v36, v70)._countAndFlagsBits;
  v38 = MEMORY[0x1DA6CCED0](countAndFlagsBits);

  [v33 setAccessibilityLabel_];

  v39 = *&v7[v31];
  v40 = MEMORY[0x1DA6CCED0](0x4220657A69736552, 0xED0000726564726FLL);
  [v39 setAccessibilityIdentifier_];

  v69.receiver = v7;
  v69.super_class = type metadata accessor for ResizeView();
  v41 = objc_msgSendSuper2(&v69, sel_initWithFrame_, a3, a4, a5, a6);
  v42 = OBJC_IVAR____TtC8PaperKit10ResizeView_borderView;
  v43 = [*(v41 + OBJC_IVAR____TtC8PaperKit10ResizeView_borderView) layer];
  [v43 setBorderWidth_];

  v44 = [*(v41 + v42) layer];
  v45 = [objc_opt_self() systemBlueColor];
  v46 = [v45 CGColor];

  [v44 setBorderColor_];
  v47 = [v41 addSubview_];
  v48 = *(v41 + OBJC_IVAR____TtC8PaperKit10ResizeView_resizeHandles);
  if (v48 >> 62)
  {
    v47 = __CocoaSet.count.getter();
    v49 = v47;
    v50 = &selRef_pointyBitPoint;
    if (!v47)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v50 = &selRef_pointyBitPoint;
    if (!v49)
    {
      goto LABEL_15;
    }
  }

  if (v49 < 1)
  {
    __break(1u);
    goto LABEL_24;
  }

  v51 = 0;
  do
  {
    if ((v48 & 0xC000000000000001) != 0)
    {
      v52 = MEMORY[0x1DA6CE0C0](v51, v48);
    }

    else
    {
      v52 = *(v48 + 8 * v51 + 32);
    }

    v53 = v52;
    ++v51;
    [*&v52[OBJC_IVAR____TtC8PaperKit25CanvasElementResizeHandle_dragGestureRecognizer] v50[37]];
    [v41 addSubview_];
  }

  while (v49 != v51);

LABEL_15:
  if (((*((*MEMORY[0x1E69E7D40] & *v41) + 0x268))(v47) & 1) == 0)
  {

LABEL_20:
    v59 = type metadata accessor for PrecisePanGestureRecognizer();
    v60 = objc_allocWithZone(v59);
    *&v60[OBJC_IVAR____TtC8PaperKit27PrecisePanGestureRecognizer_initialModifierFlags] = 0;
    v60[OBJC_IVAR____TtC8PaperKit27PrecisePanGestureRecognizer_isPrecise] = 1;
    swift_unknownObjectWeakInit();
    *&v60[OBJC_IVAR____TtC8PaperKit27PrecisePanGestureRecognizer_touchesBeganTimestamp] = 0;
    *&v60[OBJC_IVAR____TtC8PaperKit27PrecisePanGestureRecognizer_tapAndHoldTimeout] = 0x3FB999999999999ALL;
    v68.receiver = v60;
    v68.super_class = v59;
    v61 = objc_msgSendSuper2(&v68, sel_initWithTarget_action_, 0, 0);
    v62 = OBJC_IVAR____TtC8PaperKit27PrecisePanGestureRecognizer_isPrecise;
    v61[OBJC_IVAR____TtC8PaperKit27PrecisePanGestureRecognizer_isPrecise] = 1;
    swift_unknownObjectWeakAssign();
    v63 = v61;
    [v63 setMaximumNumberOfTouches_];
    v61[v62] = 0;
    v64 = v63;
    v65 = v41;
    [v64 v50[37]];
    [v64 setDelegate_];

    [v65 addGestureRecognizer_];
    v66 = *(v65 + OBJC_IVAR____TtC8PaperKit10ResizeView_dragGestureRecognizer);
    *(v65 + OBJC_IVAR____TtC8PaperKit10ResizeView_dragGestureRecognizer) = v64;

    return;
  }

  v54 = [objc_allocWithZone(MEMORY[0x1E69DCE68]) initWithTarget:v41 action:sel_rotate_];
  v55 = OBJC_IVAR____TtC8PaperKit10ResizeView_rotationGestureRecognizer;
  v56 = *(v41 + OBJC_IVAR____TtC8PaperKit10ResizeView_rotationGestureRecognizer);
  *(v41 + OBJC_IVAR____TtC8PaperKit10ResizeView_rotationGestureRecognizer) = v54;
  v57 = v54;

  if (v57)
  {

    [v41 addGestureRecognizer_];

    v58 = *(v41 + v55);
    if (v58)
    {
      [v58 setDelegate_];
    }

    goto LABEL_20;
  }

LABEL_24:
  __break(1u);
}

Swift::Void __swiftcall ResizeView.beginTransform()()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC8PaperKit10ResizeView_isResizing) = 1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    AnyCanvas.isResizingChanged()();
  }

  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x248);
  v5 = v4(v16);
  v6 = (v1 + OBJC_IVAR____TtC8PaperKit10ResizeView_resizeOriginalCoordinateSpace);
  v7 = v16[1];
  *v6 = v16[0];
  v6[1] = v7;
  v6[2] = v16[2];
  (v4)(v17, v5);
  v8 = v18;
  v9 = v19;
  ResizeView.modelToViewTransform.getter(&v20);
  *&t1.a = v17[0];
  *&t1.c = v17[1];
  t1.tx = v8;
  t1.ty = v9;
  t2 = v20;
  CGAffineTransformConcat(&v13, &t1, &t2);
  v10 = *&v13.c;
  v11 = *&v13.tx;
  v12 = (v1 + OBJC_IVAR____TtC8PaperKit10ResizeView_resizeOriginalCoordinateSpaceScaled);
  *v12 = *&v13.a;
  v12[1] = v10;
  v12[2] = v11;
}

uint64_t ResizeView.handlePressesBegan(_:with:)(int a1, UIPressesEvent_optional a2)
{
  isa = a2.value.super.super.isa;
  v5 = v4;
  v6 = a2.value.super.super.isa;
  if (ResizeView.updateGestureModifiersState(_:)(a2))
  {
    return 1;
  }

  result = [v2 window];
  if (result)
  {
    v8 = result;
    if (isa && (v9 = -[objc_class touchesForWindow:](isa, sel_touchesForWindow_, result)) != 0 && ((v10 = v9, type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UITouch), lazy protocol witness table accessor for type UITouch and conformance NSObject(), v11 = static Set._unconditionallyBridgeFromObjectiveC(_:)(), v10, (v11 & 0xC000000000000001) == 0) ? (v12 = *(v11 + 16)) : (v12 = __CocoaSet.count.getter()), , v12) || (v13 = specialized Collection.first.getter(v5)) == 0 || (v14 = v13, v15 = [v13 key], v14, !v15))
    {
      v17 = 0;
    }

    else
    {
      v16 = [v15 keyCode];

      v17 = 0;
      if (v16 > 80)
      {
        if (v16 == 81)
        {
          if (isa)
          {
            v18 = ([(objc_class *)isa modifierFlags]>> 17) & 1;
          }

          else
          {
            LOBYTE(v18) = 0;
          }

          v19 = 0.0;
          v20 = 1.0;
          goto LABEL_34;
        }

        if (v16 == 82)
        {
          if (isa)
          {
            v18 = ([(objc_class *)isa modifierFlags]>> 17) & 1;
          }

          else
          {
            LOBYTE(v18) = 0;
          }

          v19 = 0.0;
          v20 = -1.0;
          goto LABEL_34;
        }
      }

      else
      {
        if (v16 == 79)
        {
          if (isa)
          {
            v18 = ([(objc_class *)isa modifierFlags]>> 17) & 1;
          }

          else
          {
            LOBYTE(v18) = 0;
          }

          v19 = 1.0;
          v20 = 0.0;
          goto LABEL_34;
        }

        if (v16 == 80)
        {
          if (isa)
          {
            v18 = ([(objc_class *)isa modifierFlags]>> 17) & 1;
          }

          else
          {
            LOBYTE(v18) = 0;
          }

          v19 = -1.0;
          v20 = 0.0;
LABEL_34:
          ResizeView.startNudging(by:largerJump:)(__PAIR128__(*&v20, *&v19), v18);
          v17 = 1;
        }
      }
    }

    v21 = v17;

    return v21;
  }

  return result;
}

void ResizeView.modelToViewTransform.getter(__int128 *a1@<X8>)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();
    tx = 0.0;
    v8 = MEMORY[0x1E69E7D40];
    v9 = 0.0;
    v10 = 0.0;
    v36 = xmmword_1D4059320;
    v39 = xmmword_1D4059310;
    v32 = xmmword_1D4059320;
    v34 = xmmword_1D4059310;
    if (v6)
    {
      v11 = v6;
      v12 = (*((*MEMORY[0x1E69E7D40] & *v6) + 0x440))();
      (*((*v8 & *v12) + 0x2D8))(v45);
      v32 = v45[0];
      v34 = v45[1];
      v9 = v46;
      v10 = v47;
    }

    v13 = [v2 superview];
    ty = 0.0;
    if (v13)
    {
      v15 = v13;
      objc_opt_self();
      v39 = xmmword_1D4059310;
      v36 = xmmword_1D4059320;
      if (swift_dynamicCastObjCClass())
      {
        v16 = swift_unknownObjectWeakLoadStrong();
        if (v16)
        {
          v17 = v16;
          v18 = (*((*v8 & *v16) + 0x450))();

          if (v18)
          {
            UIView.transformForConvertingFromView(_:)(&v48, v18);
            v36 = *&v48.a;
            v39 = *&v48.c;
            tx = v48.tx;
            ty = v48.ty;

            v15 = v18;
          }
        }
      }
    }

    *&t1.a = v33;
    *&t1.c = v34;
    t1.tx = v9;
    t1.ty = v10;
    *&t2.a = v36;
    *&t2.c = v39;
    t2.tx = tx;
    t2.ty = ty;
    v19 = CGAffineTransformConcat(&v42, &t1, &t2);
    v37 = *&v42.c;
    v40 = *&v42.a;
    v20 = v42.tx;
    v21 = v42.ty;
    v22 = (*((*v8 & *v5) + 0x450))(v19);
    if (v22)
    {
      v23 = v22;
      [v22 zoomScale];
      v25 = v24;
    }

    else
    {
      v25 = 1.0;
    }

    CGAffineTransformMakeScale(&t1, v25, v25);
    v29 = *&t1.a;
    v30 = *&t1.c;
    v31 = *&t1.tx;
    *&t1.a = v40;
    *&t1.c = v37;
    t1.tx = v20;
    t1.ty = v21;
    *&t2.a = v29;
    *&t2.c = v30;
    *&t2.tx = v31;
    CGAffineTransformConcat(&v42, &t1, &t2);
    v38 = *&v42.c;
    v41 = *&v42.a;
    v35 = *&v42.tx;

    v28 = v35;
    v26 = v38;
    v27 = v41;
  }

  else
  {
    v26 = xmmword_1D4059310;
    v27 = xmmword_1D4059320;
    v28 = 0uLL;
  }

  *a1 = v27;
  a1[1] = v26;
  a1[2] = v28;
}

Swift::Void __swiftcall ResizeView.updateHandlePositionAndVisibility()()
{
  v2 = v0;
  v3 = MEMORY[0x1E69E7D40];
  v107 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x230))();
  (*((*v3 & *v0) + 0x248))(v125);
  v4 = v126;
  v5 = v127;
  ResizeView.modelToViewTransform.getter(&v128);
  *&t1.a = v125[0];
  *&t1.c = v125[1];
  t1.tx = v4;
  t1.ty = v5;
  t2 = v128;
  CGAffineTransformConcat(&v124, &t1, &t2);
  t1 = v124;
  a = v124.a;
  b = v124.b;
  c = v124.c;
  d = v124.d;
  tx = v124.tx;
  ty = v124.ty;
  CGAffineTransform.decompose(initialRotation:)(&t2, 0.0);
  Rotation = CGAffineTransformMakeRotation(&t2, t2.tx);
  v108 = t2.a;
  v113 = t2.c;
  v114 = t2.b;
  v111 = t2.tx;
  v112 = t2.d;
  v110 = t2.ty;
  (*((*v3 & *v0) + 0x210))(&t2, Rotation);
  v124.a = a;
  v124.b = b;
  v124.c = c;
  v124.d = d;
  v124.tx = tx;
  v124.ty = ty;
  v131.x = 1.0;
  v131.y = 0.0;
  v13 = CGPointApplyAffineTransform(v131, &v124);
  v124.a = a;
  v124.b = b;
  v124.c = c;
  v124.d = d;
  v124.tx = tx;
  v124.ty = ty;
  v132.x = 0.0;
  v132.y = 0.0;
  v14 = CGPointApplyAffineTransform(v132, &v124);
  v124.a = a;
  v124.b = b;
  v124.c = c;
  v124.d = d;
  v15 = sqrt((v13.x - v14.x) * (v13.x - v14.x) + (v13.y - v14.y) * (v13.y - v14.y));
  v124.tx = tx;
  v124.ty = ty;
  v133.x = 0.0;
  v133.y = 1.0;
  v16 = CGPointApplyAffineTransform(v133, &v124);
  *&v122 = v16.x;
  y = v16.y;
  *&v119 = a;
  v124.a = a;
  v124.b = b;
  v18 = b;
  v124.c = c;
  v124.d = d;
  v124.tx = tx;
  v124.ty = ty;
  v134.x = 0.0;
  v134.y = 0.0;
  v19 = CGPointApplyAffineTransform(v134, &v124);
  v20 = sqrt((*&v122 - v19.x) * (*&v122 - v19.x) + (y - v19.y) * (y - v19.y));
  v21 = (*((*v3 & *v0) + 0x258))(v15, v20);
  v123 = v21;
  v106 = v0;
  if (v15 >= 40.0)
  {
    goto LABEL_59;
  }

  v22 = v21;
  v2 = v21 & 0xFFFFFFFFFFFFFF8;
  v1 = v21 >> 62;
  if (v21 >> 62)
  {
    goto LABEL_212;
  }

  for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v24 = 0;
    while (1)
    {
      if (i == v24)
      {
        if (!v1)
        {
          v24 = *(v2 + 16);
          goto LABEL_56;
        }

        goto LABEL_55;
      }

      if ((v22 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (v24 >= *(v2 + 16))
      {
        __break(1u);
LABEL_194:
        __break(1u);
LABEL_195:
        __break(1u);
LABEL_196:
        __break(1u);
LABEL_197:
        __break(1u);
LABEL_198:
        __break(1u);
LABEL_199:
        __break(1u);
LABEL_200:
        __break(1u);
LABEL_201:
        __break(1u);
LABEL_202:
        __break(1u);
LABEL_203:
        __break(1u);
LABEL_204:
        __break(1u);
        goto LABEL_205;
      }

      v25 = *(*(v22 + 8 * v24 + 32) + OBJC_IVAR____TtC8PaperKit25CanvasElementResizeHandle_type);
      if (v25 == 1)
      {
        goto LABEL_14;
      }

LABEL_9:
      if (v25 == 5)
      {
        goto LABEL_14;
      }

      v26 = __OFADD__(v24++, 1);
      if (v26)
      {
        goto LABEL_195;
      }
    }

    v25 = *(MEMORY[0x1DA6CE0C0](v24, v22) + OBJC_IVAR____TtC8PaperKit25CanvasElementResizeHandle_type);
    swift_unknownObjectRelease();
    if (v25 != 1)
    {
      goto LABEL_9;
    }

LABEL_14:
    v27 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      goto LABEL_218;
    }

    if (v1)
    {
      break;
    }

    if (v27 != *(v2 + 16))
    {
      goto LABEL_21;
    }

LABEL_56:
    v2 = v106;
    if (v22 >> 62)
    {
      v38 = __CocoaSet.count.getter();
      if (v38 >= v24)
      {
        goto LABEL_58;
      }

LABEL_215:
      __break(1u);
      goto LABEL_216;
    }

    v38 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v38 < v24)
    {
      goto LABEL_215;
    }

LABEL_58:
    v21 = specialized Array.replaceSubrange<A>(_:with:)(v24, v38);
LABEL_59:
    v22 = v2;
    v39 = (*((*v3 & *v2) + 0x278))(v21);
    y = v108;
    if ((v39 & 1) == 0 && v20 < 40.0)
    {
      v22 = v123;
      v2 = v123 & 0xFFFFFFFFFFFFFF8;
      v1 = v123 >> 62;
      if (v123 >> 62)
      {
        i = __CocoaSet.count.getter();
      }

      else
      {
        i = *((v123 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v24 = 0;
      while (i != v24)
      {
        if ((v22 & 0xC000000000000001) != 0)
        {
          v40 = *(MEMORY[0x1DA6CE0C0](v24, v22) + OBJC_IVAR____TtC8PaperKit25CanvasElementResizeHandle_type);
          swift_unknownObjectRelease();
          if (v40 == 7)
          {
            goto LABEL_73;
          }
        }

        else
        {
          if (v24 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_194;
          }

          v40 = *(*(v22 + 8 * v24 + 32) + OBJC_IVAR____TtC8PaperKit25CanvasElementResizeHandle_type);
          if (v40 == 7)
          {
LABEL_73:
            v41 = v24 + 1;
            if (!__OFADD__(v24, 1))
            {
              if (v1)
              {
                if (v41 == __CocoaSet.count.getter())
                {
                  goto LABEL_115;
                }
              }

              else if (v41 == *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_115;
              }

              v2 = v24 + 5;
              while (2)
              {
                i = v2 - 4;
                v1 = v22 & 0xC000000000000001;
                if ((v22 & 0xC000000000000001) != 0)
                {
                  v42 = *(MEMORY[0x1DA6CE0C0](v2 - 4, v22) + OBJC_IVAR____TtC8PaperKit25CanvasElementResizeHandle_type);
                  swift_unknownObjectRelease();
                  if (v42 != 7)
                  {
LABEL_85:
                    if (v42 != 3)
                    {
                      if (i != v24)
                      {
                        if (v1)
                        {
                          v43 = MEMORY[0x1DA6CE0C0](v24, v22);
                          v44 = MEMORY[0x1DA6CE0C0](v2 - 4, v22);
                        }

                        else
                        {
                          if (v24 < 0)
                          {
                            goto LABEL_223;
                          }

                          v45 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
                          if (v24 >= v45)
                          {
                            goto LABEL_224;
                          }

                          if (i >= v45)
                          {
                            goto LABEL_225;
                          }

                          v46 = *(v22 + 8 * v2);
                          v43 = *(v22 + 8 * v24 + 32);
                          v44 = v46;
                        }

                        v47 = v44;
                        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v22 & 0x8000000000000000) != 0 || (v22 & 0x4000000000000000) != 0)
                        {
                          v22 = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
                          v48 = (v22 >> 62) & 1;
                        }

                        else
                        {
                          LODWORD(v48) = 0;
                        }

                        v1 = v22 & 0xFFFFFFFFFFFFFF8;
                        v49 = *((v22 & 0xFFFFFFFFFFFFFF8) + 8 * v24 + 0x20);
                        *((v22 & 0xFFFFFFFFFFFFFF8) + 8 * v24 + 0x20) = v47;

                        if ((v22 & 0x8000000000000000) != 0 || v48)
                        {
                          v22 = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
                          v1 = v22 & 0xFFFFFFFFFFFFFF8;
                          if ((i & 0x8000000000000000) != 0)
                          {
LABEL_113:
                            __break(1u);
LABEL_114:
                            v24 = __CocoaSet.count.getter();
                            goto LABEL_115;
                          }
                        }

                        else if ((i & 0x8000000000000000) != 0)
                        {
                          goto LABEL_113;
                        }

                        if (i >= *(v1 + 16))
                        {
                          goto LABEL_211;
                        }

                        v50 = *(v1 + 8 * v2);
                        *(v1 + 8 * v2) = v43;

                        v123 = v22;
                      }

                      v26 = __OFADD__(v24++, 1);
                      if (v26)
                      {
                        goto LABEL_204;
                      }
                    }
                  }
                }

                else
                {
                  if ((i & 0x8000000000000000) != 0)
                  {
                    goto LABEL_200;
                  }

                  if (i >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_201;
                  }

                  v42 = *(*(v22 + 8 * v2) + OBJC_IVAR____TtC8PaperKit25CanvasElementResizeHandle_type);
                  if (v42 != 7)
                  {
                    goto LABEL_85;
                  }
                }

                v1 = v2 - 3;
                if (__OFADD__(i, 1))
                {
                  goto LABEL_202;
                }

                if (v22 >> 62)
                {
                  v51 = __CocoaSet.count.getter();
                }

                else
                {
                  v51 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                ++v2;
                if (v1 == v51)
                {
                  goto LABEL_115;
                }

                continue;
              }
            }

LABEL_219:
            __break(1u);
LABEL_220:
            __break(1u);
            goto LABEL_221;
          }
        }

        if (v40 == 3)
        {
          goto LABEL_73;
        }

        v26 = __OFADD__(v24++, 1);
        if (v26)
        {
          goto LABEL_199;
        }
      }

      if (v1)
      {
        goto LABEL_114;
      }

      v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_115:
      v2 = v106;
      if (!(v22 >> 62))
      {
        v52 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v52 >= v24)
        {
          goto LABEL_117;
        }

LABEL_217:
        __break(1u);
LABEL_218:
        __break(1u);
        goto LABEL_219;
      }

LABEL_216:
      v52 = __CocoaSet.count.getter();
      if (v52 < v24)
      {
        goto LABEL_217;
      }

LABEL_117:
      v22 = &v123;
      specialized Array.replaceSubrange<A>(_:with:)(v24, v52);
    }

    i = *(v2 + OBJC_IVAR____TtC8PaperKit10ResizeView_resizeHandles);
    if (!(i >> 62))
    {
      v53 = *((i & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_120;
    }

LABEL_205:
    v53 = __CocoaSet.count.getter();
LABEL_120:
    if (!v53)
    {
      goto LABEL_149;
    }

    v118 = v53 - 1;
    if (v53 < 1)
    {
      goto LABEL_209;
    }

    v109 = OBJC_IVAR____TtC8PaperKit10ResizeView_currentActiveHandle;
    v116 = i & 0xC000000000000001;
    *&v117.f64[0] = OBJC_IVAR____TtC8PaperKit10ResizeView_isRotating;
    v105 = v123;

    v54 = 0;
    v115 = vdupq_n_s64(0x3FDF5C28F5C28F5CuLL);
    if (v116)
    {
LABEL_123:
      v55 = MEMORY[0x1DA6CE0C0](v54, i);
      goto LABEL_125;
    }

    while (2)
    {
      v55 = *(i + 8 * v54 + 32);
LABEL_125:
      v56 = v55;
      if (*(v2 + *&v117.f64[0]) == 1)
      {
LABEL_126:
        v57 = v55;
        v58 = 1;
        goto LABEL_139;
      }

      v59 = *(v2 + v109);
      if (v59 >= 2 && v55 == v59)
      {
        v63 = v55;
        goto LABEL_138;
      }

      if ((v107 & 1) == 0)
      {
        goto LABEL_126;
      }

      *&v124.a = v55;
      MEMORY[0x1EEE9AC00](v55);
      v104[2] = &v124;
      v61 = v56;
      if (specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v104, v105))
      {
        v2 = v106;
        v62 = *(v106 + v109);
        v3 = MEMORY[0x1E69E7D40];
        if (v62)
        {
          v58 = v62 == 1 || v61 != v62;
          goto LABEL_139;
        }

LABEL_138:
        v58 = 0;
      }

      else
      {
        v58 = 1;
        v2 = v106;
        v3 = MEMORY[0x1E69E7D40];
      }

LABEL_139:
      [v56 setHidden_];
      v124.b = 0.0;
      v124.c = 0.0;
      v124.a = 1.0;
      v124.d = 1.0;
      v124.tx = 0.0;
      v124.ty = 0.0;
      [v56 setTransform_];
      v64 = *(v56 + OBJC_IVAR____TtC8PaperKit25CanvasElementResizeHandle_type);
      v135.x = dbl_1D4071168[v64];
      v135.y = dbl_1D40711A8[v64];
      *&v124.a = v119;
      v124.b = v18;
      v124.c = c;
      v124.d = d;
      v124.tx = tx;
      v124.ty = ty;
      v67 = CGPointApplyAffineTransform(v135, &v124);
      *&v66 = v67.y;
      *&v65 = v67.x;
      v121 = v66;
      v122 = v65;
      v68 = [v2 window];
      if (v68)
      {
        v69 = v68;
        v70 = [v68 screen];

        [v70 scale];
        v120 = v71;

        v72 = *&v120;
        v3 = MEMORY[0x1E69E7D40];
      }

      else
      {
        v72 = 1.0;
      }

      *&v73.f64[0] = v122;
      *&v73.f64[1] = v121;
      v74 = vdupq_lane_s64(*&v72, 0);
      v75 = vmulq_n_f64(v73, v72);
      v76 = vrndmq_f64(v75);
      if ((*((*v3 & *v56) + 0xB8))([v56 setCenter_]))
      {
        v124.a = y;
        v124.b = v114;
        v124.c = v113;
        v124.d = v112;
        v124.tx = v111;
        v124.ty = v110;
        [v56 setTransform_];
      }

      if (v118 != v54)
      {
        ++v54;
        if (v116)
        {
          goto LABEL_123;
        }

        continue;
      }

      break;
    }

LABEL_149:
    v22 = OBJC_IVAR____TtC8PaperKit10ResizeView_controlHandles;
    swift_beginAccess();
    v77 = *(v2 + v22);
    if (v77 >> 62)
    {
      v1 = __CocoaSet.count.getter();
      if (v1)
      {
        goto LABEL_151;
      }

LABEL_192:

      return;
    }

    v1 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v1)
    {
      goto LABEL_192;
    }

LABEL_151:
    if (v1 >= 1)
    {
      v118 = OBJC_IVAR____TtC8PaperKit10ResizeView_isRotating;
      v116 = OBJC_IVAR____TtC8PaperKit10ResizeView_currentActiveHandle;
      *&v120 = v77 & 0xC000000000000001;
      LODWORD(v115.f64[0]) = v20 >= 35.0;
      v78 = v15 > 40.0;
      LODWORD(v109) = v20 > 40.0;
      if (v20 > 40.0)
      {
        v78 = 1;
      }

      v107 = v78;

      v79 = 0;
      v117 = vdupq_n_s64(0x3FDF5C28F5C28F5CuLL);
      while (2)
      {
        if (v120)
        {
          v82 = MEMORY[0x1DA6CE0C0](v79, v77);
        }

        else
        {
          v82 = *(v77 + 8 * v79 + 32);
        }

        v81 = v82;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (!Strong)
        {
          goto LABEL_157;
        }

        v84 = Strong;
        if (*(v2 + v118))
        {
LABEL_163:
          v85 = 1;
          goto LABEL_164;
        }

        v94 = v81[OBJC_IVAR____TtC8PaperKit17ControlHandleView_controlPoint];
        if (v94 > 9)
        {
          if (v94 - 10 >= 2)
          {
LABEL_181:
            v101 = v109;
            if (v15 <= 40.0)
            {
              goto LABEL_163;
            }
          }

          else
          {
            v101 = LOBYTE(v115.f64[0]);
            if (v15 < 35.0)
            {
              goto LABEL_163;
            }
          }

          if ((v101 & 1) == 0)
          {
            goto LABEL_163;
          }
        }

        else if (v81[OBJC_IVAR____TtC8PaperKit17ControlHandleView_controlPoint])
        {
          if (v94 == 1)
          {
            if ((v107 & 1) == 0)
            {
              goto LABEL_163;
            }
          }

          else if (v94 != 2)
          {
            goto LABEL_181;
          }
        }

        v102 = *(v2 + v116);
        if (v102 && (v102 == 1 || v81 != v102))
        {
          goto LABEL_163;
        }

        if (v123 >> 62)
        {
          v103 = __CocoaSet.count.getter();
        }

        else
        {
          v103 = *((v123 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v85 = v103 == 0;
LABEL_164:
        v86 = v81;
        [v86 setHidden_];
        v124.b = 0.0;
        v124.c = 0.0;
        v124.a = 1.0;
        v124.d = 1.0;
        v124.tx = 0.0;
        v124.ty = 0.0;
        [v86 setTransform_];
        LOBYTE(v124.a) = v86[OBJC_IVAR____TtC8PaperKit17ControlHandleView_controlPoint];
        *&v87 = (*((*MEMORY[0x1E69E7D40] & *v84) + 0x150))(&v124, &t2, 0, 1);
        v121 = v88;
        v122 = v87;
        v89 = [v2 window];
        if (v89)
        {
          v90 = v89;
          v91 = [v89 screen];

          [v91 scale];
          v119 = v92;

          v93 = *&v119;
        }

        else
        {
          v93 = 1.0;
        }

        *&v95.f64[0] = v122;
        *&v95.f64[1] = v121;
        v96 = vdupq_lane_s64(*&v93, 0);
        v97 = vmulq_n_f64(v95, v93);
        v98 = vrndmq_f64(v97);
        [v86 setCenter_];
        v99 = ControlHandleView.pointerAccessories()();
        if (v99 >> 62)
        {
          v100 = __CocoaSet.count.getter();
          v2 = v106;
        }

        else
        {
          v100 = *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v100 <= 3)
        {
          v124.a = v108;
          v124.b = v114;
          v124.c = v113;
          v124.d = v112;
          v124.tx = v111;
          v124.ty = v110;
          [v86 setTransform_];
          v80 = v86;
        }

        else
        {
          v80 = v84;
          v84 = v86;
        }

        v81 = v84;
LABEL_157:
        ++v79;

        if (v1 == v79)
        {

          goto LABEL_192;
        }

        continue;
      }
    }

LABEL_210:
    __break(1u);
LABEL_211:
    __break(1u);
LABEL_212:
    ;
  }

  if (v27 == __CocoaSet.count.getter())
  {
    goto LABEL_56;
  }

LABEL_21:
  v2 = v24 + 5;
  while (2)
  {
    i = v2 - 4;
    v1 = v22 & 0xC000000000000001;
    if ((v22 & 0xC000000000000001) != 0)
    {
      v28 = *(MEMORY[0x1DA6CE0C0](v2 - 4, v22) + OBJC_IVAR____TtC8PaperKit25CanvasElementResizeHandle_type);
      swift_unknownObjectRelease();
      if (v28 != 1)
      {
        goto LABEL_26;
      }

      goto LABEL_45;
    }

    if ((i & 0x8000000000000000) != 0)
    {
      goto LABEL_196;
    }

    if (i >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_197;
    }

    v28 = *(*(v22 + 8 * v2) + OBJC_IVAR____TtC8PaperKit25CanvasElementResizeHandle_type);
    if (v28 == 1)
    {
      goto LABEL_45;
    }

LABEL_26:
    if (v28 == 5)
    {
      goto LABEL_45;
    }

    if (i == v24)
    {
      goto LABEL_44;
    }

    if (v1)
    {
      v29 = MEMORY[0x1DA6CE0C0](v24, v22);
      v30 = MEMORY[0x1DA6CE0C0](v2 - 4, v22);
      goto LABEL_34;
    }

    if (v24 < 0)
    {
      goto LABEL_220;
    }

    v31 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24 < v31)
    {
      if (i >= v31)
      {
        goto LABEL_222;
      }

      v32 = *(v22 + 8 * v2);
      v29 = *(v22 + 8 * v24 + 32);
      v30 = v32;
LABEL_34:
      v33 = v30;
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v22 & 0x8000000000000000) != 0 || (v22 & 0x4000000000000000) != 0)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
        v34 = (v22 >> 62) & 1;
      }

      else
      {
        LODWORD(v34) = 0;
      }

      v1 = v22 & 0xFFFFFFFFFFFFFF8;
      v35 = *((v22 & 0xFFFFFFFFFFFFFF8) + 8 * v24 + 0x20);
      *((v22 & 0xFFFFFFFFFFFFFF8) + 8 * v24 + 0x20) = v33;

      if ((v22 & 0x8000000000000000) == 0 && !v34)
      {
        if ((i & 0x8000000000000000) != 0)
        {
          goto LABEL_54;
        }

LABEL_42:
        if (i >= *(v1 + 16))
        {
          __break(1u);
LABEL_209:
          __break(1u);
          goto LABEL_210;
        }

        v36 = *(v1 + 8 * v2);
        *(v1 + 8 * v2) = v29;

        v123 = v22;
LABEL_44:
        v26 = __OFADD__(v24++, 1);
        if (v26)
        {
          goto LABEL_203;
        }

LABEL_45:
        v1 = v2 - 3;
        if (__OFADD__(i, 1))
        {
          goto LABEL_198;
        }

        if (v22 >> 62)
        {
          v37 = __CocoaSet.count.getter();
        }

        else
        {
          v37 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        ++v2;
        if (v1 == v37)
        {
          goto LABEL_56;
        }

        continue;
      }

      v22 = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
      v1 = v22 & 0xFFFFFFFFFFFFFF8;
      if ((i & 0x8000000000000000) == 0)
      {
        goto LABEL_42;
      }

LABEL_54:
      __break(1u);
LABEL_55:
      v24 = __CocoaSet.count.getter();
      goto LABEL_56;
    }

    break;
  }

LABEL_221:
  __break(1u);
LABEL_222:
  __break(1u);
LABEL_223:
  __break(1u);
LABEL_224:
  __break(1u);
LABEL_225:
  __break(1u);
}

void __swiftcall ResizeView.hitTestChrome(_:with:)(UIView_optional *__return_ptr retstr, CGPoint _, UIEvent_optional with)
{
  v4 = v3;
  isa = with.value.super.isa;
  y = _.y;
  x = _.x;
  v8 = &selRef_pointyBitPoint;
  if (([v3 isHidden] & 1) != 0 || (*((*MEMORY[0x1E69E7D40] & *v3) + 0x288))(isa, x, y))
  {
    return;
  }

  v9 = *(v3 + OBJC_IVAR____TtC8PaperKit10ResizeView_resizeHandles);
  v10 = OBJC_IVAR____TtC8PaperKit10ResizeView_controlHandles;
  swift_beginAccess();
  v11 = *(v4 + v10);
  if (v11 >> 62)
  {
    type metadata accessor for CanvasElementResizeHandle();

    v12 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    swift_bridgeObjectRetain_n();

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for CanvasElementResizeHandle();
    v12 = v11;
  }

  specialized Array.append<A>(contentsOf:)(v12);
  v13 = v9;
  if (v9 >> 62)
  {
    v14 = __CocoaSet.count.getter();
    if (v14)
    {
      goto LABEL_7;
    }

LABEL_43:

    return;
  }

  v14 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
    goto LABEL_43;
  }

LABEL_7:
  if (v14 >= 1)
  {
    v15 = 0;
    v16 = v13 & 0xC000000000000001;
    v46 = 1.79769313e308;
    v47 = 0;
    v45 = isa;
    v44 = y;
    while (1)
    {
      v17 = v16 ? MEMORY[0x1DA6CE0C0](v15, v13) : *(v13 + 8 * v15 + 32);
      v18 = v17;
      if (([v17 v8[345]] & 1) == 0)
      {
        [v18 convertPoint:v4 fromCoordinateSpace:{x, y}];
        v21 = OBJC_IVAR____TtC8PaperKit25CanvasElementResizeHandle_enabled;
        if (*(v18 + OBJC_IVAR____TtC8PaperKit25CanvasElementResizeHandle_enabled) == 1)
        {
          break;
        }
      }

LABEL_10:
      if (v14 == ++v15)
      {
        goto LABEL_43;
      }
    }

    v22 = v19;
    v23 = v20;
    [v18 bounds];
    v48.x = v22;
    v48.y = v23;
    v24 = CGRectContainsPoint(v50, v48);
    [v18 bounds];
    v25 = v51.origin.x;
    v26 = v51.origin.y;
    width = v51.size.width;
    height = v51.size.height;
    MidX = CGRectGetMidX(v51);
    v52.origin.x = v25;
    v52.origin.y = v26;
    v52.size.width = width;
    v52.size.height = height;
    MidY = CGRectGetMidY(v52);
    if (isa)
    {
      v31 = isa;
      if (([(objc_class *)v31 PK_isEventFromPencil]& 1) != 0)
      {

        v16 = v13 & 0xC000000000000001;
        if (!v24)
        {
          goto LABEL_33;
        }

LABEL_31:
        v37 = sqrt((MidX - v22) * (MidX - v22) + (MidY - v23) * (MidY - v23));
        if (v37 >= v46)
        {
          isa = v45;
          if (!v47)
          {
LABEL_38:
            v46 = v37;
            v47 = v18;
            goto LABEL_39;
          }

          v38 = v47;
          if ((*(v18 + v21) & 1) == 0)
          {
            v38 = v47;
            [v18 frame];
            v58 = CGRectInset(v57, 3.0, 3.0);
            v39 = v58.origin.x;
            v40 = v58.origin.y;
            v41 = v58.size.width;
            v42 = v58.size.height;
            [v38 frame];
            v61 = CGRectInset(v59, 3.0, 3.0);
            v60.origin.x = v39;
            v60.origin.y = v40;
            v60.size.width = v41;
            v60.size.height = v42;
            v43 = CGRectIntersectsRect(v60, v61);

            if (!v43)
            {

              y = v44;
              v8 = &selRef_pointyBitPoint;
              v16 = v13 & 0xC000000000000001;
              goto LABEL_10;
            }
          }
        }

        else
        {
          v38 = v47;
          isa = v45;
        }

        v16 = v13 & 0xC000000000000001;
        goto LABEL_38;
      }

      v32 = [(objc_class *)v31 buttonMask];

      v16 = v13 & 0xC000000000000001;
      if (v24)
      {
        goto LABEL_31;
      }

      if (v32)
      {
LABEL_33:

        isa = v45;
LABEL_39:
        y = v44;
        v8 = &selRef_pointyBitPoint;
        goto LABEL_10;
      }
    }

    else if (v24)
    {
      goto LABEL_31;
    }

    [v18 bounds];
    v33 = 44.0 - CGRectGetWidth(v53);
    if (v33 > 0.0)
    {
      v34 = v33;
    }

    else
    {
      v34 = 0.0;
    }

    [v18 bounds];
    v35 = 44.0 - CGRectGetHeight(v54);
    if (v35 > 0.0)
    {
      v36 = v35;
    }

    else
    {
      v36 = 0.0;
    }

    [v18 bounds];
    v56 = CGRectInset(v55, v34 * -0.5, v36 * -0.5);
    v49.x = v22;
    v49.y = v23;
    if (!CGRectContainsPoint(v56, v49))
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  __break(1u);
}

void ResizeView.resizeHandleMoved(_:)(void *a1)
{
  if ([a1 state] == 1 && ((*((*MEMORY[0x1E69E7D40] & *v1) + 0x260))() & 1) == 0)
  {

    [a1 setState_];
  }

  else
  {
    v4 = [a1 view];
    if (v4)
    {
      type metadata accessor for CanvasElementResizeHandle();
      v3 = swift_dynamicCastClass();
      if (v3)
      {
        ResizeView.resizeHandleMoved(_:handle:modifierFlags:)(a1, v3, [a1 modifierFlags]);
      }
    }
  }
}

id ResizeView.resizeHandleMoved(_:handle:modifierFlags:)(void *a1, char *a2, int a3)
{
  if ([a1 state] == 1 && ((objc_msgSend(a1, sel_modifierFlags) & 0x100000) != 0 && ((*((*MEMORY[0x1E69E7D40] & *v3) + 0x268))() & 1) == 0 || ((*((*MEMORY[0x1E69E7D40] & *v3) + 0x260))() & 1) == 0))
  {

    return [a1 setState_];
  }

  else if (([a1 modifierFlags] & 0x100000) != 0 && (((*((*MEMORY[0x1E69E7D40] & *v3) + 0x268))() & 1) != 0 || *(v3 + OBJC_IVAR____TtC8PaperKit10ResizeView_isRotating) == 1))
  {
    v8 = [a1 modifierFlags];

    return ResizeView.rotateFromResizeHandleMoved(_:handle:modifierFlags:)(a1, a2, v8);
  }

  else
  {

    return ResizeView.resizeHandleMoved(_:handle:fromCenter:aspectLocked:)(a1, a2, (*&a3 & 0x80000) != 0, (*&a3 & 0x20000) != 0);
  }
}

id ResizeView.resizeHandleMoved(_:handle:fromCenter:aspectLocked:)(void *a1, char *a2, char a3, char a4)
{
  v9 = [a1 state];
  if (v9 <= 2)
  {
    switch(v9)
    {
      case 0:
        goto LABEL_23;
      case 1:
        v10 = *(v4 + OBJC_IVAR____TtC8PaperKit10ResizeView_currentActiveHandle);
        *(v4 + OBJC_IVAR____TtC8PaperKit10ResizeView_currentActiveHandle) = a2;
        outlined consume of ResizeView.ActiveHandle(v10);
        (*((*MEMORY[0x1E69E7D40] & *v4) + 0x2B0))(a2);
        goto LABEL_23;
      case 2:
        [a1 translationInView_];
        v14 = v13;
        v16 = v15;
        v17 = a2[OBJC_IVAR____TtC8PaperKit25CanvasElementResizeHandle_type];
        v18 = 0.5;
        v19 = 0.5;
        if ((a3 & 1) == 0)
        {
          v18 = 1.0 - dbl_1D4071168[v17];
          v19 = 1.0 - dbl_1D40711A8[v17];
        }

        v84 = v19;
        v86 = v18;
        v20 = (v4 + OBJC_IVAR____TtC8PaperKit10ResizeView_resizeOriginalCoordinateSpaceScaled);
        v21 = *(v4 + OBJC_IVAR____TtC8PaperKit10ResizeView_resizeOriginalCoordinateSpaceScaled + 16);
        *&t1.a = *(v4 + OBJC_IVAR____TtC8PaperKit10ResizeView_resizeOriginalCoordinateSpaceScaled);
        *&t1.c = v21;
        *&t1.tx = *(v4 + OBJC_IVAR____TtC8PaperKit10ResizeView_resizeOriginalCoordinateSpaceScaled + 32);
        CGAffineTransformInvert(&t2, &t1);
        a = t2.a;
        b = t2.b;
        c = t2.c;
        d = t2.d;
        tx = t2.tx;
        ty = t2.ty;
        t1 = t2;
        v91.x = v14;
        v91.y = v16;
        v28 = CGPointApplyAffineTransform(v91, &t1);
        t1.a = a;
        t1.b = b;
        t1.c = c;
        t1.d = d;
        t1.tx = tx;
        t1.ty = ty;
        v92.x = 0.0;
        v92.y = 0.0;
        v29 = CGPointApplyAffineTransform(v92, &t1);
        v30 = (v28.y - v29.y) / (dbl_1D40711A8[v17] - v84);
        if (COERCE_UNSIGNED_INT64(fabs((v28.x - v29.x) / (dbl_1D4071168[v17] - v86) + 1.0)) >= 0x7FF0000000000000)
        {
          v31 = 1.0;
        }

        else
        {
          v31 = (v28.x - v29.x) / (dbl_1D4071168[v17] - v86) + 1.0;
        }

        v32 = MEMORY[0x1E69E7D40];
        if (COERCE__INT64(fabs(v30 + 1.0)) >= 0x7FF0000000000000)
        {
          v33 = 1.0;
        }

        else
        {
          v33 = v30 + 1.0;
        }

        if ((*((*MEMORY[0x1E69E7D40] & *v4) + 0x270))() & 1) == 0 || (a4)
        {
          v82 = dbl_1D4071168[v17] - v86;
          pointb = dbl_1D40711A8[v17] - v84;
          v93.x = v31 * v82;
          v93.y = v33 * pointb;
          v44 = v20[1];
          v45 = v20[2];
          v46 = v20[3];
          v47 = v20[4];
          v48 = v20[5];
          t1.a = *v20;
          v43 = t1.a;
          t1.b = v44;
          t1.c = v45;
          t1.d = v46;
          t1.tx = v47;
          t1.ty = v48;
          v49 = CGPointApplyAffineTransform(v93, &t1);
          t1.a = v43;
          t1.b = v44;
          t1.c = v45;
          t1.d = v46;
          t1.tx = v47;
          t1.ty = v48;
          v94.x = 0.0;
          v94.y = 0.0;
          v50 = CGPointApplyAffineTransform(v94, &t1);
          t1.a = v43;
          t1.b = v44;
          t1.c = v45;
          t1.d = v46;
          t1.tx = v47;
          t1.ty = v48;
          v95.x = v82;
          v95.y = pointb;
          v51 = CGPointApplyAffineTransform(v95, &t1);
          t1.a = v43;
          t1.b = v44;
          t1.c = v45;
          t1.d = v46;
          t1.tx = v47;
          t1.ty = v48;
          v96.x = 0.0;
          v96.y = 0.0;
          v52 = CGPointApplyAffineTransform(v96, &t1);
          v53 = ((v49.x - v50.x) * (v51.x - v52.x) + (v49.y - v50.y) * (v51.y - v52.y)) / ((v51.x - v52.x) * (v51.x - v52.x) + (v51.y - v52.y) * (v51.y - v52.y));
          CGAffineTransformMakeTranslation(&t1, -v86, -v84);
          v54 = t1.tx;
          v55 = t1.ty;
          pointc = *&t1.c;
          v83 = *&t1.a;
          CGAffineTransformMakeScale(&t1, v53, v53);
          v56 = *&t1.a;
          v57 = *&t1.c;
          v58 = *&t1.tx;
          *&t1.a = v83;
          *&t1.c = pointc;
          t1.tx = v54;
          t1.ty = v55;
          *&t2.a = v56;
          *&t2.c = v57;
          *&t2.tx = v58;
          CGAffineTransformConcat(&v88, &t1, &t2);
          v39 = v88.tx;
          v40 = v88.ty;
          point = *&v88.c;
          v81 = *&v88.a;
          v41 = v86;
          v42 = v84;
        }

        else
        {
          CGAffineTransformMakeTranslation(&t1, -v86, -v84);
          v34 = t1.tx;
          v35 = t1.ty;
          pointa = *&t1.c;
          v80 = *&t1.a;
          CGAffineTransformMakeScale(&t1, v31, v33);
          v36 = *&t1.a;
          v37 = *&t1.c;
          v38 = *&t1.tx;
          *&t1.a = v80;
          *&t1.c = pointa;
          t1.tx = v34;
          t1.ty = v35;
          *&t2.a = v36;
          *&t2.c = v37;
          *&t2.tx = v38;
          CGAffineTransformConcat(&v88, &t1, &t2);
          v39 = v88.tx;
          v40 = v88.ty;
          point = *&v88.c;
          v81 = *&v88.a;
          v41 = v86;
          v42 = v84;
        }

        CGAffineTransformMakeTranslation(&t1, v41, v42);
        v59 = *&t1.a;
        v60 = *&t1.c;
        v61 = *&t1.tx;
        *&t1.a = v81;
        *&t1.c = point;
        t1.tx = v39;
        t1.ty = v40;
        *&t2.a = v59;
        *&t2.c = v60;
        *&t2.tx = v61;
        CGAffineTransformConcat(&v88, &t1, &t2);
        v62 = v88.tx;
        v63 = v88.ty;
        v85 = *&v88.c;
        v87 = *&v88.a;
        v65 = *(v4 + OBJC_IVAR____TtC8PaperKit10ResizeView_resizeOriginalCoordinateSpace + 8);
        v66 = *(v4 + OBJC_IVAR____TtC8PaperKit10ResizeView_resizeOriginalCoordinateSpace + 16);
        v67 = *(v4 + OBJC_IVAR____TtC8PaperKit10ResizeView_resizeOriginalCoordinateSpace + 24);
        v68 = *(v4 + OBJC_IVAR____TtC8PaperKit10ResizeView_resizeOriginalCoordinateSpace + 32);
        v69 = *(v4 + OBJC_IVAR____TtC8PaperKit10ResizeView_resizeOriginalCoordinateSpace + 40);
        t1.a = *(v4 + OBJC_IVAR____TtC8PaperKit10ResizeView_resizeOriginalCoordinateSpace);
        v64 = t1.a;
        t1.b = v65;
        t1.c = v66;
        t1.d = v67;
        t1.tx = v68;
        t1.ty = v69;
        CGAffineTransformInvert(&t2, &t1);
        t1 = t2;
        *&t2.a = v87;
        *&t2.c = v85;
        t2.tx = v62;
        t2.ty = v63;
        CGAffineTransformConcat(&v88, &t1, &t2);
        t1 = v88;
        t2.a = v64;
        t2.b = v65;
        t2.c = v66;
        t2.d = v67;
        t2.tx = v68;
        t2.ty = v69;
        CGAffineTransformConcat(&v88, &t1, &t2);
        v70 = *&v88.a;
        v71 = *&v88.c;
        v72 = *&v88.tx;
        v73 = v4 + OBJC_IVAR____TtC8PaperKit10ResizeView_transientResizeTransform;
        *v73 = *&v88.a;
        *(v73 + 1) = v71;
        *(v73 + 2) = v72;
        v73[48] = 0;
        v74 = *v32 & *v4;
        *&t1.a = v70;
        *&t1.c = v71;
        *&t1.tx = v72;
        (*(v74 + 696))(&t1);
        goto LABEL_23;
    }

LABEL_26:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if ((v9 - 4) >= 2)
  {
    if (v9 != 3)
    {
      goto LABEL_26;
    }

    v12 = v4 + OBJC_IVAR____TtC8PaperKit10ResizeView_transientResizeTransform;
    *v12 = 0u;
    *(v12 + 1) = 0u;
    *(v12 + 2) = 0u;
    v12[48] = 1;
    (*((*MEMORY[0x1E69E7D40] & *v4) + 0x2C0))(0);
  }

  else
  {
    v11 = v4 + OBJC_IVAR____TtC8PaperKit10ResizeView_transientResizeTransform;
    *v11 = 0u;
    *(v11 + 1) = 0u;
    *(v11 + 2) = 0u;
    v11[48] = 1;
    (*((*MEMORY[0x1E69E7D40] & *v4) + 0x2C0))(1);
  }

LABEL_23:
  result = [a1 state];
  if (result == 3)
  {
    return (*((*MEMORY[0x1E69E7D40] & *v4) + 0x370))();
  }

  return result;
}

void ResizeView.beginUndoGroupingForDrag()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong undoManager];

    if (v3)
    {
      if (([v3 isUndoing] & 1) == 0 && (objc_msgSend(v3, sel_isRedoing) & 1) == 0)
      {
        if ([v3 groupsByEvent])
        {
          *(v0 + OBJC_IVAR____TtC8PaperKit10ResizeView_restoreUndoGroupingAfterDrag) = 1;
          [v3 setGroupsByEvent_];
        }

        *(v0 + OBJC_IVAR____TtC8PaperKit10ResizeView_isUndoManagerGroupingForDrag) = 1;
        [v3 beginUndoGrouping];
      }
    }
  }
}

void ResizeView.endUndoGroupingForDrag()()
{
  v1 = OBJC_IVAR____TtC8PaperKit10ResizeView_isUndoManagerGroupingForDrag;
  if (*(v0 + OBJC_IVAR____TtC8PaperKit10ResizeView_isUndoManagerGroupingForDrag) == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v5 = [Strong undoManager];

      if (v5)
      {
        if ([v5 isUndoing] & 1) != 0 || (objc_msgSend(v5, sel_isRedoing))
        {
        }

        else
        {
          [v5 endUndoGrouping];
          v4 = OBJC_IVAR____TtC8PaperKit10ResizeView_restoreUndoGroupingAfterDrag;
          if (*(v0 + OBJC_IVAR____TtC8PaperKit10ResizeView_restoreUndoGroupingAfterDrag) == 1)
          {
            [v5 setGroupsByEvent_];

            *(v0 + v4) = 0;
          }

          else
          {
          }

          *(v0 + v1) = 0;
        }
      }
    }
  }
}

Swift::Void __swiftcall ResizeView.dragMoved(_:)(UIPanGestureRecognizer *a1)
{
  if ([(UIPanGestureRecognizer *)a1 state]== 1 && ([(UIPanGestureRecognizer *)a1 modifierFlags]& 0x80000) != 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView;
      v5 = *(Strong + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
      if (v5)
      {
        v6 = v5 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection;
        if (!*(*v6 + 16) && !*(*(v6 + 8) + 16) && *(v6 + 24) == 0)
        {

          goto LABEL_12;
        }

        ResizeView.beginUndoGroupingForDrag()();
        v8 = *(v3 + v4);
        if (v8)
        {
          v9 = (v8 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection);
          v10 = *v9;
          v11 = v9[1];
          v12 = v9[2];
          v13 = *(v9 + 24);
          v14 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x730);

          v14(v10, v11, v12, v13, 0, 0, 0);

          goto LABEL_12;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }
  }

LABEL_12:
  ResizeView.dragMoved(_:axisConstrained:)(a1, ([(UIPanGestureRecognizer *)a1 modifierFlags]& 0x20000) != 0);
  if ([(UIPanGestureRecognizer *)a1 state]== 3 || [(UIPanGestureRecognizer *)a1 state]== 4 || [(UIPanGestureRecognizer *)a1 state]== 5)
  {

    ResizeView.endUndoGroupingForDrag()();
  }
}

Swift::Void __swiftcall ResizeView.dragMoved(_:axisConstrained:)(UIPanGestureRecognizer *_, Swift::Bool axisConstrained)
{
  v5 = [(UIPanGestureRecognizer *)_ state];
  if (v5 > 2)
  {
    if ((v5 - 4) < 2)
    {
      v7 = v2 + OBJC_IVAR____TtC8PaperKit10ResizeView_transientResizeTransform;
      *v7 = 0u;
      *(v7 + 1) = 0u;
      *(v7 + 2) = 0u;
      v7[48] = 1;
      (*((*MEMORY[0x1E69E7D40] & *v2) + 0x2C0))(1);
      goto LABEL_11;
    }

    if (v5 == 3)
    {
      v8 = v2 + OBJC_IVAR____TtC8PaperKit10ResizeView_transientResizeTransform;
      *v8 = 0u;
      *(v8 + 1) = 0u;
      *(v8 + 2) = 0u;
      v8[48] = 1;
      (*((*MEMORY[0x1E69E7D40] & *v2) + 0x2C0))(0);
      goto LABEL_11;
    }

LABEL_16:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  if (!v5)
  {
    goto LABEL_11;
  }

  if (v5 == 1)
  {
    v6 = *(v2 + OBJC_IVAR____TtC8PaperKit10ResizeView_currentActiveHandle);
    *(v2 + OBJC_IVAR____TtC8PaperKit10ResizeView_currentActiveHandle) = 1;
    outlined consume of ResizeView.ActiveHandle(v6);
    (*((*MEMORY[0x1E69E7D40] & *v2) + 0x2B0))();
    goto LABEL_11;
  }

  if (v5 != 2)
  {
    goto LABEL_16;
  }

  closure #1 in ResizeView.dragMoved(_:axisConstrained:)(_, v2, axisConstrained, v11);
  v9 = v2 + OBJC_IVAR____TtC8PaperKit10ResizeView_transientResizeTransform;
  v10 = v11[1];
  *v9 = v11[0];
  *(v9 + 1) = v10;
  *(v9 + 2) = v11[2];
  v9[48] = 0;
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x2B8))(v11);
LABEL_11:
  if ([(UIPanGestureRecognizer *)_ state]== 3)
  {
    (*((*MEMORY[0x1E69E7D40] & *v2) + 0x380))();
  }

  else if ([(UIPanGestureRecognizer *)_ state]!= 4)
  {
    return;
  }

  *(v2 + OBJC_IVAR____TtC8PaperKit10ResizeView_dragConstainedAxis) = 0;
}

Swift::Void __swiftcall ResizeView.rotate(_:)(UIRotationGestureRecognizer *a1)
{
  if ([(UIRotationGestureRecognizer *)a1 state]== 1)
  {
    v3 = 1;
  }

  else
  {
    if ([(UIRotationGestureRecognizer *)a1 state]!= 3 && [(UIRotationGestureRecognizer *)a1 state]!= 4 && [(UIRotationGestureRecognizer *)a1 state]!= 5)
    {
      goto LABEL_8;
    }

    v3 = 0;
  }

  *(v1 + OBJC_IVAR____TtC8PaperKit10ResizeView_isRotating) = v3;
LABEL_8:
  if ([(UIRotationGestureRecognizer *)a1 numberOfTouches]== 2)
  {
    [(UIRotationGestureRecognizer *)a1 locationOfTouch:0 inView:0];
    v5 = v4;
    v7 = v6;
    [(UIRotationGestureRecognizer *)a1 locationOfTouch:1 inView:0];
    v10 = sqrt((v5 - v8) * (v5 - v8) + (v7 - v9) * (v7 - v9)) * 0.5;
  }

  else
  {
    v10 = 300.0;
  }

  v11 = [(UIRotationGestureRecognizer *)a1 rotation];
  v13 = v12;
  v14 = MEMORY[0x1E69E7D40];
  v15 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x358))(v11);
  v16 = [(UIRotationGestureRecognizer *)a1 state];
  if (v16 <= 2)
  {
    switch(v16)
    {
      case 0:
        return;
      case 1:
        v17 = *(v1 + OBJC_IVAR____TtC8PaperKit10ResizeView_currentActiveHandle);
        *(v1 + OBJC_IVAR____TtC8PaperKit10ResizeView_currentActiveHandle) = 1;
        outlined consume of ResizeView.ActiveHandle(v17);
        v18 = *((*v14 & *v1) + 0x2B0);

        v18();
        return;
      case 2:
        v23 = *(v1 + OBJC_IVAR____TtC8PaperKit10ResizeView_resizeOriginalCoordinateSpace + 16);
        *&t1.a = *(v1 + OBJC_IVAR____TtC8PaperKit10ResizeView_resizeOriginalCoordinateSpace);
        *&t1.c = v23;
        *&t1.tx = *(v1 + OBJC_IVAR____TtC8PaperKit10ResizeView_resizeOriginalCoordinateSpace + 32);
        v24 = 0.5;
        *&v23 = 0.5;
        v25 = CGPointApplyAffineTransform(*(&v23 - 8), &t1);
        v26 = (v13 + v15) * 1.27323954;
        v27 = floor(v26);
        v28 = v26 - v27;
        v29 = ceil(v26);
        if (v28 < 0.49)
        {
          v29 = v27;
        }

        v30 = v29 / 1.27323954 - v15;
        v31 = v10 * 0.0872664626;
        v32 = 5.0;
        if (v10 * 0.034906585 <= 5.0)
        {
          if (v31 > 5.0)
          {
LABEL_33:
            if (fabs(v10 * (v30 - v13)) >= v32)
            {
              v30 = v13;
            }

            CGAffineTransformMakeRotation(&t1, v30);
            tx = t1.tx;
            ty = t1.ty;
            v49 = *&t1.c;
            v51 = *&t1.a;
            CGAffineTransformMakeTranslation(&t1, -v25.x, -v25.y);
            a = t1.a;
            b = t1.b;
            c = t1.c;
            d = t1.d;
            v39 = t1.tx;
            v40 = t1.ty;
            *&t2.a = v51;
            *&t2.c = v49;
            t2.tx = tx;
            t2.ty = ty;
            CGAffineTransformConcat(&v53, &t1, &t2);
            v41 = v53.tx;
            v42 = v53.ty;
            v50 = *&v53.c;
            v52 = *&v53.a;
            t1.a = a;
            t1.b = b;
            t1.c = c;
            t1.d = d;
            t1.tx = v39;
            t1.ty = v40;
            CGAffineTransformInvert(&t2, &t1);
            *&t1.a = v52;
            *&t1.c = v50;
            t1.tx = v41;
            t1.ty = v42;
            CGAffineTransformConcat(&v53, &t1, &t2);
            v43 = *&v53.a;
            v44 = *&v53.c;
            v45 = *&v53.c;
            v46 = v1 + OBJC_IVAR____TtC8PaperKit10ResizeView_transientResizeTransform;
            *v46 = *&v53.a;
            *(v46 + 1) = v45;
            v47 = *&v53.tx;
            *(v46 + 2) = *&v53.tx;
            v46[48] = 0;
            v48 = *v14 & *v1;
            *&t1.a = v43;
            *&t1.c = v44;
            *&t1.tx = v47;
            (*(v48 + 696))(&t1);
            return;
          }
        }

        else if (v10 * 0.034906585 < v31)
        {
          v31 = v10 * 0.034906585;
        }

        v32 = v31;
        goto LABEL_33;
    }

LABEL_37:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  if ((v16 - 4) >= 2)
  {
    if (v16 != 3)
    {
      goto LABEL_37;
    }

    v22 = v1 + OBJC_IVAR____TtC8PaperKit10ResizeView_transientResizeTransform;
    v22[48] = 1;
    *v22 = 0u;
    *(v22 + 1) = 0u;
    *(v22 + 2) = 0u;
    v20 = *((*v14 & *v1) + 0x2C0);
    v21 = 0;
  }

  else
  {
    v19 = v1 + OBJC_IVAR____TtC8PaperKit10ResizeView_transientResizeTransform;
    v19[48] = 1;
    *v19 = 0u;
    *(v19 + 1) = 0u;
    *(v19 + 2) = 0u;
    v20 = *((*v14 & *v1) + 0x2C0);
    v21 = 1;
  }

  v20(v21);
}

uint64_t ResizeView.rotateFromResizeHandleMoved(_:handle:modifierFlags:)(void *a1, char *a2, int a3)
{
  if ([a1 state] == 1)
  {
    v7 = 1;
LABEL_7:
    *(v3 + OBJC_IVAR____TtC8PaperKit10ResizeView_isRotating) = v7;
    goto LABEL_8;
  }

  if ([a1 state] == 3 || objc_msgSend(a1, sel_state) == 4 || objc_msgSend(a1, sel_state) == 5)
  {
    v7 = 0;
    goto LABEL_7;
  }

LABEL_8:
  v8 = (v3 + OBJC_IVAR____TtC8PaperKit10ResizeView_resizeOriginalCoordinateSpace);
  v10 = *(v3 + OBJC_IVAR____TtC8PaperKit10ResizeView_resizeOriginalCoordinateSpace + 8);
  v11 = *(v3 + OBJC_IVAR____TtC8PaperKit10ResizeView_resizeOriginalCoordinateSpace + 16);
  v12 = *(v3 + OBJC_IVAR____TtC8PaperKit10ResizeView_resizeOriginalCoordinateSpace + 24);
  v13 = *(v3 + OBJC_IVAR____TtC8PaperKit10ResizeView_resizeOriginalCoordinateSpace + 32);
  v14 = *(v3 + OBJC_IVAR____TtC8PaperKit10ResizeView_resizeOriginalCoordinateSpace + 40);
  t1.a = *(v3 + OBJC_IVAR____TtC8PaperKit10ResizeView_resizeOriginalCoordinateSpace);
  a = t1.a;
  t1.b = v10;
  t1.c = v11;
  t1.d = v12;
  t1.tx = v13;
  t1.ty = v14;
  v58.x = 0.5;
  v58.y = 0.5;
  v15 = CGPointApplyAffineTransform(v58, &t1);
  v16 = a2[OBJC_IVAR____TtC8PaperKit25CanvasElementResizeHandle_type];
  v59.x = dbl_1D4071168[v16];
  v59.y = dbl_1D40711A8[v16];
  t1.a = a;
  t1.b = v10;
  t1.c = v11;
  t1.d = v12;
  t1.tx = v13;
  t1.ty = v14;
  v17 = CGPointApplyAffineTransform(v59, &t1);
  [a1 locationInView_];
  v20 = atan2(v19 - v15.y, v18 - v15.x);
  v21 = atan2(v17.y - v15.y, v17.x - v15.x);
  v22 = 0.0;
  if ((a3 & 0x20000) != 0)
  {
    v22 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x358))();
  }

  result = [a1 state];
  if (result > 2)
  {
    if ((result - 4) < 2)
    {
      v25 = v3 + OBJC_IVAR____TtC8PaperKit10ResizeView_transientResizeTransform;
      *v25 = 0u;
      *(v25 + 1) = 0u;
      *(v25 + 2) = 0u;
      v25[48] = 1;
      return (*((*MEMORY[0x1E69E7D40] & *v3) + 0x2C0))(1);
    }

    if (result == 3)
    {
      v26 = v3 + OBJC_IVAR____TtC8PaperKit10ResizeView_transientResizeTransform;
      *v26 = 0u;
      *(v26 + 1) = 0u;
      *(v26 + 2) = 0u;
      v26[48] = 1;
      return (*((*MEMORY[0x1E69E7D40] & *v3) + 0x2C0))(0);
    }

    goto LABEL_25;
  }

  if (!result)
  {
    return result;
  }

  if (result == 1)
  {
    v24 = *(v3 + OBJC_IVAR____TtC8PaperKit10ResizeView_currentActiveHandle);
    *(v3 + OBJC_IVAR____TtC8PaperKit10ResizeView_currentActiveHandle) = a2;
    outlined consume of ResizeView.ActiveHandle(v24);
    return (*((*MEMORY[0x1E69E7D40] & *v3) + 0x2B0))(a2);
  }

  if (result != 2)
  {
LABEL_25:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v27 = v20 - v21;
  v28 = v8[1];
  *&t1.a = *v8;
  *&t1.c = v28;
  *&t1.tx = v8[2];
  v29 = 0.5;
  *&v28 = 0.5;
  v30 = CGPointApplyAffineTransform(*(&v28 - 8), &t1);
  if ((a3 & 0x20000) != 0)
  {
    v31 = (v27 + v22) * 1.27323954;
    v32 = floor(v31);
    v33 = v31 - v32;
    v34 = ceil(v31);
    if (v33 < 0.49)
    {
      v34 = v32;
    }

    v27 = v34 / 1.27323954 - v22;
  }

  CGAffineTransformMakeRotation(&t1, v27);
  tx = t1.tx;
  ty = t1.ty;
  v51 = *&t1.c;
  v53 = *&t1.a;
  CGAffineTransformMakeTranslation(&t1, -v30.x, -v30.y);
  v37 = t1.a;
  b = t1.b;
  c = t1.c;
  d = t1.d;
  v41 = t1.tx;
  v42 = t1.ty;
  *&t2.a = v53;
  *&t2.c = v51;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v55, &t1, &t2);
  v43 = v55.tx;
  v44 = v55.ty;
  v52 = *&v55.c;
  v54 = *&v55.a;
  t1.a = v37;
  t1.b = b;
  t1.c = c;
  t1.d = d;
  t1.tx = v41;
  t1.ty = v42;
  CGAffineTransformInvert(&t2, &t1);
  *&t1.a = v54;
  *&t1.c = v52;
  t1.tx = v43;
  t1.ty = v44;
  CGAffineTransformConcat(&v55, &t1, &t2);
  v45 = *&v55.a;
  v46 = *&v55.c;
  v47 = *&v55.c;
  v48 = v3 + OBJC_IVAR____TtC8PaperKit10ResizeView_transientResizeTransform;
  *v48 = *&v55.a;
  *(v48 + 1) = v47;
  v49 = *&v55.tx;
  *(v48 + 2) = *&v55.tx;
  v48[48] = 0;
  v50 = *MEMORY[0x1E69E7D40] & *v3;
  *&t1.a = v45;
  *&t1.c = v46;
  *&t1.tx = v49;
  return (*(v50 + 696))(&t1);
}

Swift::Bool __swiftcall ResizeView.updateGestureModifiersState(_:)(UIPressesEvent_optional a1)
{
  isa = a1.value.super.super.isa;
  v3 = *(v1 + OBJC_IVAR____TtC8PaperKit10ResizeView_dragGestureRecognizer);
  if (!v3)
  {
LABEL_6:
    v6 = *(v1 + OBJC_IVAR____TtC8PaperKit10ResizeView_currentActiveHandle);
    if (v6 >= 2)
    {
      v7 = OBJC_IVAR____TtC8PaperKit25CanvasElementResizeHandle_dragGestureRecognizer;
      v8 = *&v6[OBJC_IVAR____TtC8PaperKit25CanvasElementResizeHandle_dragGestureRecognizer];
      v9 = v6;
      if ([v8 state] == 2)
      {
        type metadata accessor for ControlHandleView();
        if (!swift_dynamicCastClass())
        {
          v11 = *&v6[v7];
          if (isa)
          {
            v12 = [(objc_class *)isa modifierFlags];
          }

          else
          {
            v12 = 0;
          }

          ResizeView.resizeHandleMoved(_:handle:modifierFlags:)(v11, v9, v12);
          outlined consume of ResizeView.ActiveHandle(v6);
          return 1;
        }
      }

      outlined consume of ResizeView.ActiveHandle(v6);
    }

    return 0;
  }

  v4 = v3;
  if ([(UIPanGestureRecognizer *)v4 state]!= 2)
  {

    goto LABEL_6;
  }

  if (isa)
  {
    v5 = ([(objc_class *)isa modifierFlags]>> 17) & 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  ResizeView.dragMoved(_:axisConstrained:)(v4, v5);

  return 1;
}

Swift::Void __swiftcall ResizeView.startNudging(by:largerJump:)(CGPoint by, Swift::Bool largerJump)
{
  v3 = v2;
  y = by.y;
  x = by.x;
  v7 = type metadata accessor for Date();
  v32 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - v13;
  v15 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x2C0))(0, v12);
  v16 = OBJC_IVAR____TtC8PaperKit10ResizeView_nudgeTimer;
  [*(v2 + OBJC_IVAR____TtC8PaperKit10ResizeView_nudgeTimer) invalidate];
  v17 = *(v2 + v16);
  *(v2 + v16) = 0;

  v18 = (*((*v15 & *v2) + 0x2B0))();
  v19 = 1.0;
  if (largerJump)
  {
    v19 = 10.0;
  }

  v20 = v19 * x;
  v21 = v19 * y;
  (*((*v15 & *v2) + 0x388))(v18, v20, v21);
  v22 = (v2 + OBJC_IVAR____TtC8PaperKit10ResizeView_nudgeDelta);
  *v22 = v20;
  v22[1] = v21;
  Date.init()();
  Date.addingTimeInterval(_:)();
  v23 = *(v8 + 8);
  v23(v10, v7);
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = objc_allocWithZone(MEMORY[0x1E695DFF0]);

  isa = Date._bridgeToObjectiveC()().super.isa;
  aBlock[4] = partial apply for closure #1 in ResizeView.startNudging(by:largerJump:);
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIBandSelectionInteraction) -> ();
  aBlock[3] = &block_descriptor_49;
  v27 = _Block_copy(aBlock);
  v28 = [v25 initWithFireDate:isa interval:1 repeats:v27 block:0.1];
  _Block_release(v27);

  v23(v14, v32);

  v29 = [objc_opt_self() mainRunLoop];
  [v29 addTimer:v28 forMode:*MEMORY[0x1E695D918]];

  v30 = *(v3 + v16);
  *(v3 + v16) = v28;
}

uint64_t ResizeView.handlePressesEnded(_:with:)(int a1, UIPressesEvent_optional a2)
{
  isa = a2.value.super.super.isa;
  v5 = v4;
  v6 = a2.value.super.super.isa;
  if (ResizeView.updateGestureModifiersState(_:)(a2))
  {
    return 1;
  }

  result = [v2 window];
  if (result)
  {
    v8 = result;
    if (isa && (v9 = -[objc_class touchesForWindow:](isa, sel_touchesForWindow_, result)) != 0 && ((v10 = v9, type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UITouch), lazy protocol witness table accessor for type UITouch and conformance NSObject(), v11 = static Set._unconditionallyBridgeFromObjectiveC(_:)(), v10, (v11 & 0xC000000000000001) == 0) ? (v12 = *(v11 + 16)) : (v12 = __CocoaSet.count.getter()), , v12) || (v13 = specialized Collection.first.getter(v5)) == 0 || (v14 = v13, v15 = [v13 key], v14, !v15) || (v16 = objc_msgSend(v15, sel_keyCode), v15, (v16 - 79) > 3))
    {
      v19 = 0;
    }

    else
    {
      (*((*MEMORY[0x1E69E7D40] & *v2) + 0x2C0))(0);
      v17 = OBJC_IVAR____TtC8PaperKit10ResizeView_nudgeTimer;
      v18 = *(v2 + OBJC_IVAR____TtC8PaperKit10ResizeView_nudgeTimer);
      [v18 invalidate];

      v8 = *(v2 + v17);
      *(v2 + v17) = 0;
      v19 = 1;
    }

    return v19;
  }

  return result;
}

Swift::Bool __swiftcall ResizeView.gestureRecognizer(_:shouldBeRequiredToFailBy:)(UIGestureRecognizer *_, UIGestureRecognizer *shouldBeRequiredToFailBy)
{
  v3 = *(v2 + OBJC_IVAR____TtC8PaperKit10ResizeView_rotationGestureRecognizer);
  result = 0;
  if (v3)
  {
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIGestureRecognizer);
    v6 = _;
    v7 = v3;
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIPinchGestureRecognizer);
      if (([(UIGestureRecognizer *)shouldBeRequiredToFailBy isKindOfClass:swift_getObjCClassFromMetadata()]& 1) != 0)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ResizeView.ActiveHandle(void *a1, unint64_t *a2)
{
  v2 = *a2;
  if (!*a1)
  {
    return !v2;
  }

  if (*a1 == 1)
  {
    return v2 == 1;
  }

  if (v2 < 2)
  {
    return 0;
  }

  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSObject);
  return static NSObject.== infix(_:_:)() & 1;
}

Swift::Void __swiftcall ResizeView.layoutSubviews()()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC8PaperKit10ResizeView_borderView);
  v3 = MEMORY[0x1E69E7D40];
  [v2 setHidden_];
  v32.receiver = v0;
  v32.super_class = type metadata accessor for ResizeView();
  objc_msgSendSuper2(&v32, sel_layoutSubviews);
  v37.a = 1.0;
  v37.b = 0.0;
  v37.c = 0.0;
  v37.d = 1.0;
  v37.tx = 0.0;
  v37.ty = 0.0;
  (*((*v3 & *v0) + 0x248))(v33, [v2 setTransform_]);
  v4 = v34;
  v5 = v35;
  ResizeView.modelToViewTransform.getter(&v36);
  *&t1.a = v33[0];
  *&t1.c = v33[1];
  t1.tx = v4;
  t1.ty = v5;
  v30 = v36;
  CGAffineTransformConcat(&v37, &t1, &v30);
  v6 = 0.0;
  CGAffineTransform.decompose(initialRotation:)(&t1, 0.0);
  a = t1.a;
  b = t1.b;
  c = t1.c;
  d = t1.d;
  tx = t1.tx;
  v12 = CGRect.isFinite.getter(t1.a, t1.b, t1.c, t1.d);
  v13 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  if (v12)
  {
    v16 = [v0 window];
    if (v16)
    {
      v17 = v16;
      v18 = [v16 screen];

      [v18 scale];
      v20 = v19;
    }

    else
    {
      v20 = 1.0;
    }

    v6 = CGRect.rounded(scale:)(v20, a, b, c, d);
  }

  [v2 setFrame_];
  v21 = *(v1 + OBJC_IVAR____TtC8PaperKit10ResizeView_resizeHandles);
  if (!(v21 >> 62))
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
      goto LABEL_8;
    }

LABEL_15:
    CGAffineTransformMakeRotation(&t1, tx);
    [v2 setTransform_];
    v29 = [v2 layer];
    (*((*v3 & *v1) + 0x238))();
    [v29 setCornerRadius_];

    ResizeView.updateHandlePositionAndVisibility()();
    return;
  }

  v22 = __CocoaSet.count.getter();
  if (!v22)
  {
    goto LABEL_15;
  }

LABEL_8:
  if (v22 >= 1)
  {

    v23 = 0;
    do
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x1DA6CE0C0](v23, v21);
      }

      else
      {
        v24 = *(v21 + 8 * v23 + 32);
      }

      v25 = v24;
      ++v23;
      [v2 center];
      v26 = &v25[OBJC_IVAR____TtC8PaperKit25CanvasElementResizeHandle_resizeViewCenter];
      *v26 = v27;
      *(v26 + 1) = v28;
      v26[16] = 0;
    }

    while (v22 != v23);

    v3 = MEMORY[0x1E69E7D40];
    goto LABEL_15;
  }

  __break(1u);
}

CGFloat closure #1 in ResizeView.dragMoved(_:axisConstrained:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, _OWORD *a4@<X8>)
{
  [a1 translationInView_];
  v8 = v7;
  v10 = v9;
  ResizeView.modelToViewTransform.getter(&v37);
  v38 = v37;
  CGAffineTransformInvert(&v36, &v38);
  v11 = *&v36.a;
  v12 = *&v36.c;
  v13 = *&v36.tx;
  v38 = v36;
  v40.x = v8;
  v40.y = v10;
  v14 = CGPointApplyAffineTransform(v40, &v38);
  *&v38.a = v11;
  *&v38.c = v12;
  *&v38.tx = v13;
  v41.x = 0.0;
  v41.y = 0.0;
  v15 = CGPointApplyAffineTransform(v41, &v38);
  v16 = v14.x - v15.x;
  v17 = v14.y - v15.y;
  if ((a3 & 1) == 0)
  {
    *(a2 + OBJC_IVAR____TtC8PaperKit10ResizeView_dragConstainedAxis) = 0;
    goto LABEL_16;
  }

  if (fabs(v17) < fabs(v16))
  {
    v18 = 1;
  }

  else
  {
    v18 = 2;
  }

  v19 = OBJC_IVAR____TtC8PaperKit10ResizeView_dragConstainedAxis;
  if (!*(a2 + OBJC_IVAR____TtC8PaperKit10ResizeView_dragConstainedAxis))
  {
    goto LABEL_15;
  }

  v20 = sqrt(v16 * v16 + v17 * v17);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (v20 <= 150.0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v22 = Strong;
  v23 = MEMORY[0x1E69E7D40];
  v24 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x450))();
  v25 = 1.0;
  v26 = 1.0;
  if (v24)
  {
    v27 = v24;
    [v24 zoomScale];
    v26 = v28;
  }

  (*((*v23 & *v22) + 0x858))(&v38);
  v29 = v39;

  if ((v29 & 1) == 0)
  {
    v25 = sqrt(vaddvq_f64(vmulq_f64(*&v38.a, *&v38.a)));
  }

  if (150.0 / (v26 * v25) < v20)
  {
LABEL_15:
    *(a2 + v19) = v18;
  }

LABEL_16:
  v30 = *(a2 + OBJC_IVAR____TtC8PaperKit10ResizeView_dragConstainedAxis);
  v31 = 0.0;
  if (v30 == 1)
  {
    v32 = 0.0;
  }

  else
  {
    v32 = v14.y - v15.y;
  }

  if (v30 == 1)
  {
    v31 = v14.x - v15.x;
  }

  if (!*(a2 + OBJC_IVAR____TtC8PaperKit10ResizeView_dragConstainedAxis))
  {
    v32 = v14.y - v15.y;
    v31 = v14.x - v15.x;
  }

  CGAffineTransformMakeTranslation(&v36, v31, v32);
  result = v36.a;
  v34 = *&v36.c;
  v35 = *&v36.tx;
  *a4 = *&v36.a;
  a4[1] = v34;
  a4[2] = v35;
  return result;
}

void closure #1 in ResizeView.startNudging(by:largerJump:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x388))(*(Strong + OBJC_IVAR____TtC8PaperKit10ResizeView_nudgeDelta), *(Strong + OBJC_IVAR____TtC8PaperKit10ResizeView_nudgeDelta + 8));
  }
}

Swift::Bool __swiftcall ResizeView.gestureRecognizerShouldBegin(_:)(UIGestureRecognizer *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC8PaperKit10ResizeView_rotationGestureRecognizer);
  if (v4)
  {
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIGestureRecognizer);
    v5 = a1;
    v6 = v4;
    v7 = static NSObject.== infix(_:_:)();

    if ((v7 & 1) != 0 && ((*((*MEMORY[0x1E69E7D40] & *v2) + 0x268))() & 1) == 0)
    {
      return 0;
    }
  }

  v8 = OBJC_IVAR____TtC8PaperKit10ResizeView_dragGestureRecognizer;
  v9 = *(v2 + OBJC_IVAR____TtC8PaperKit10ResizeView_dragGestureRecognizer);
  if (!v9)
  {
    goto LABEL_40;
  }

  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIGestureRecognizer);
  v10 = a1;
  v11 = v9;
  v12 = static NSObject.== infix(_:_:)();

  if ((v12 & 1) != 0 && ((*((*MEMORY[0x1E69E7D40] & *v2) + 0x260))() & 1) == 0)
  {
    return 0;
  }

  v13 = *(v2 + v8);
  if (v13)
  {
    v14 = v10;
    v15 = v13;
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      [(UIGestureRecognizer *)v14 locationInView:v2];
      v18 = v17;
      v20 = v19;
      v21 = *(v2 + OBJC_IVAR____TtC8PaperKit10ResizeView_resizeHandles);
      v22 = OBJC_IVAR____TtC8PaperKit10ResizeView_controlHandles;
      swift_beginAccess();
      v23 = *(v2 + v22);
      if (v23 >> 62)
      {
        goto LABEL_37;
      }

      swift_bridgeObjectRetain_n();

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for CanvasElementResizeHandle();
      for (i = v23; ; i = _bridgeCocoaArray<A>(_:)())
      {

        specialized Array.append<A>(contentsOf:)(i);
        v25 = v21;
        if (v21 >> 62)
        {
          v21 = __CocoaSet.count.getter();
          if (!v21)
          {
LABEL_39:

            break;
          }
        }

        else
        {
          v21 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v21)
          {
            goto LABEL_39;
          }
        }

        v26 = 0;
        while (1)
        {
          if ((v25 & 0xC000000000000001) != 0)
          {
            v27 = MEMORY[0x1DA6CE0C0](v26, v25);
          }

          else
          {
            if (v26 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_36;
            }

            v27 = *(v25 + 8 * v26 + 32);
          }

          v28 = v27;
          v29 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            break;
          }

          if (([v27 isHidden] & 1) != 0 || (objc_msgSend(v28, sel_convertPoint_fromCoordinateSpace_, v2, v18, v20), *(v28 + OBJC_IVAR____TtC8PaperKit25CanvasElementResizeHandle_enabled) != 1))
          {
          }

          else
          {
            v32 = v30;
            v33 = v31;
            [v28 bounds];
            v47.x = v32;
            v47.y = v33;
            v34 = CGRectContainsPoint(v49, v47);
            [v28 bounds];
            x = v50.origin.x;
            y = v50.origin.y;
            width = v50.size.width;
            height = v50.size.height;
            CGRectGetMidX(v50);
            v51.origin.x = x;
            v51.origin.y = y;
            v51.size.width = width;
            v51.size.height = height;
            MidY = CGRectGetMidY(v51);
            if (v34)
            {

LABEL_34:

              return 0;
            }

            [v28 bounds];
            v40 = 44.0 - CGRectGetWidth(v52);
            if (v40 > 0.0)
            {
              v41 = v40;
            }

            else
            {
              v41 = 0.0;
            }

            [v28 bounds];
            v42 = 44.0 - CGRectGetHeight(v53);
            if (v42 > 0.0)
            {
              v43 = v42;
            }

            else
            {
              v43 = 0.0;
            }

            [v28 bounds];
            v55 = CGRectInset(v54, v41 * -0.5, v43 * -0.5);
            v48.x = v32;
            v48.y = v33;
            v44 = CGRectContainsPoint(v55, v48);

            if (v44)
            {
              goto LABEL_34;
            }
          }

          ++v26;
          if (v29 == v21)
          {
            goto LABEL_39;
          }
        }

        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        type metadata accessor for CanvasElementResizeHandle();
      }
    }
  }

LABEL_40:
  v46.receiver = v2;
  v46.super_class = type metadata accessor for ResizeView();
  return [(UIGestureRecognizer *)&v46 gestureRecognizerShouldBegin:a1];
}

id ResizeView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ResizeView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t get_enum_tag_for_layout_string_8PaperKit10ResizeViewC12ActiveHandleO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t lazy protocol witness table accessor for type ResizeView.ConstrainedAxis and conformance ResizeView.ConstrainedAxis()
{
  result = lazy protocol witness table cache variable for type ResizeView.ConstrainedAxis and conformance ResizeView.ConstrainedAxis;
  if (!lazy protocol witness table cache variable for type ResizeView.ConstrainedAxis and conformance ResizeView.ConstrainedAxis)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResizeView.ConstrainedAxis and conformance ResizeView.ConstrainedAxis);
  }

  return result;
}

id specialized ResizeView.endTransform(cancel:)()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC8PaperKit10ResizeView_currentActiveHandle];
  *&v0[OBJC_IVAR____TtC8PaperKit10ResizeView_currentActiveHandle] = 0;
  outlined consume of ResizeView.ActiveHandle(v2);
  v0[OBJC_IVAR____TtC8PaperKit10ResizeView_isResizing] = 0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    AnyCanvas.isResizingChanged()();
  }

  return [v1 setNeedsLayout];
}

unint64_t lazy protocol witness table accessor for type UITouch and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type UITouch and conformance NSObject;
  if (!lazy protocol witness table cache variable for type UITouch and conformance NSObject)
  {
    type metadata accessor for PKMathRecognitionItemAttributes(255, &lazy cache variable for type metadata for UITouch);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UITouch and conformance NSObject);
  }

  return result;
}

void specialized ResizeView.init(coder:)()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8PaperKit10ResizeView_controlHandles) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC8PaperKit10ResizeView_currentActiveHandle) = 0;
  v1 = (v0 + OBJC_IVAR____TtC8PaperKit10ResizeView_resizeOriginalCoordinateSpace);
  *v1 = 0x3FF0000000000000;
  v1[1] = 0;
  v1[2] = 0;
  v1[3] = 0x3FF0000000000000;
  v1[4] = 0;
  v1[5] = 0;
  v2 = (v0 + OBJC_IVAR____TtC8PaperKit10ResizeView_resizeOriginalCoordinateSpaceScaled);
  *v2 = 0x3FF0000000000000;
  v2[1] = 0;
  v2[2] = 0;
  v2[3] = 0x3FF0000000000000;
  v2[4] = 0;
  v2[5] = 0;
  v3 = (v0 + OBJC_IVAR____TtC8PaperKit10ResizeView_originalControlPointLocation);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit10ResizeView_dragGestureRecognizer) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit10ResizeView_rotationGestureRecognizer) = 0;
  v4 = v0 + OBJC_IVAR____TtC8PaperKit10ResizeView_transientResizeTransform;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 1;
  *(v0 + OBJC_IVAR____TtC8PaperKit10ResizeView_isResizing) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit10ResizeView_isRotating) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit10ResizeView_dragConstainedAxis) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit10ResizeView_isUndoManagerGroupingForDrag) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit10ResizeView_restoreUndoGroupingAfterDrag) = 0;
  v5 = (v0 + OBJC_IVAR____TtC8PaperKit10ResizeView_nudgeDelta);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit10ResizeView_nudgeTimer) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t block_copy_helper_49(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t WeakPaperPageWrapper.isEqual(_:)(uint64_t a1)
{
  v31 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v29 = &v29 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSg_AHtMd);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v30 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v29 - v15;
  v17 = *(v3 + 16);
  v17(&v29 - v15, v1 + OBJC_IVAR____TtC8PaperKitP33_F9BA2F3895C2005D59C823F72F32582820WeakPaperPageWrapper_ref, v2, v14);
  v18 = *(v3 + 56);
  v18(v16, 0, 1, v2);
  outlined init with copy of Date?(v31, v33, &_sypSgMd);
  if (v34)
  {
    type metadata accessor for WeakPaperPageWrapper();
    if (swift_dynamicCast())
    {
      v31 = v5;
      v19 = v32;
      (v17)(v12, &v32[OBJC_IVAR____TtC8PaperKitP33_F9BA2F3895C2005D59C823F72F32582820WeakPaperPageWrapper_ref], v2);

      v5 = v31;
      v20 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v33, &_sypSgMd);
  }

  v20 = 1;
LABEL_6:
  v18(v12, v20, 1, v2);
  v21 = *(v5 + 48);
  outlined init with copy of Date?(v16, v7, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
  outlined init with copy of Date?(v12, &v7[v21], &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
  v22 = *(v3 + 48);
  if (v22(v7, 1, v2) != 1)
  {
    v24 = v30;
    outlined init with copy of Date?(v7, v30, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
    if (v22(&v7[v21], 1, v2) != 1)
    {
      v25 = v29;
      (*(v3 + 32))(v29, &v7[v21], v2);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakTagged_3<TaggedPaperPage> and conformance WeakTagged_3<A>, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd);
      v26 = v24;
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v27 = *(v3 + 8);
      v27(v25, v2);
      outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
      outlined destroy of StocksKitCurrencyCache.Provider?(v16, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
      v27(v26, v2);
      outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
      return v23 & 1;
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v16, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
    (*(v3 + 8))(v24, v2);
    goto LABEL_11;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v16, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
  if (v22(&v7[v21], 1, v2) != 1)
  {
LABEL_11:
    outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSg_AHtMd);
    v23 = 0;
    return v23 & 1;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
  v23 = 1;
  return v23 & 1;
}

uint64_t type metadata accessor for WeakPaperPageWrapper()
{
  result = type metadata singleton initialization cache for WeakPaperPageWrapper;
  if (!type metadata singleton initialization cache for WeakPaperPageWrapper)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for WeakPaperPageWrapper()
{
  type metadata accessor for WeakTagged_3<TaggedPaperPage>();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void closure #1 in ThumbnailRenderer.renderThumbnail(ref:model:vertical:iconScale:thumbnailSize:completion:)(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *), uint64_t a7, double a8, double a9, double a10)
{
  v59 = a7;
  v60 = a6;
  v58 = a5;
  v57 = a4;
  v62 = a3;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd);
  v15 = *(v61 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v18 = &v57 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v57 - v20;
  v22 = a1[3];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  v24 = (*(v23 + 56))(v22, v23);
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = a1[3];
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v31);
  (*(v32 + 64))(v31, v32);
  v33 = a1[3];
  v34 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v33);
  v65.origin.x = (*(v34 + 56))(v33, v34);
  CGImagePropertyOrientation.originAlignedTransform(_:)(&v64, v65);
  v63 = v64;
  v66.origin.x = v24;
  v66.origin.y = v26;
  v66.size.width = v28;
  v66.size.height = v30;
  v67 = CGRectApplyAffineTransform(v66, &v63);
  x = v67.origin.x;
  y = v67.origin.y;
  width = v67.size.width;
  height = v67.size.height;
  v67.origin.x = v67.size.height / v67.size.width;
  v39 = (a10 + -6.0) / (v67.size.height / v67.size.width);
  v40 = a9 + -6.0;
  v41 = (a9 + -6.0) * v67.origin.x;
  if ((a2 & 1) == 0)
  {
    v40 = v39;
    v41 = a10 + -6.0;
  }

  v42 = v41 * a8;
  v43 = v40 * a8;
  v44 = dispatch_semaphore_create(0);
  type metadata accessor for SendableImage();
  v45 = swift_allocObject();
  *(v45 + 16) = 0;
  v46 = type metadata accessor for TaskPriority();
  (*(*(v46 - 8) + 56))(v21, 1, 1, v46);
  outlined init with copy of FindResult(a1, &v63);
  v47 = v61;
  (*(v15 + 16))(v18, v62, v61);
  v48 = (*(v15 + 80) + 96) & ~*(v15 + 80);
  v49 = (v16 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  *(v50 + 16) = 0;
  *(v50 + 24) = 0;
  *(v50 + 32) = v43;
  *(v50 + 40) = v42;
  *(v50 + 48) = v45;
  outlined init with take of PaperKitHashable(&v63, v50 + 56);
  (*(v15 + 32))(v50 + v48, v18, v47);
  v51 = (v50 + v49);
  *v51 = x;
  v51[1] = y;
  v51[2] = width;
  v51[3] = height;
  *(v50 + ((v49 + 39) & 0xFFFFFFFFFFFFFFF8)) = v44;

  v52 = v44;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v21, &async function pointer to partial apply for closure #1 in closure #1 in ThumbnailRenderer.renderThumbnail(ref:model:vertical:iconScale:thumbnailSize:completion:), v50);

  OS_dispatch_semaphore.wait()();
  v53 = *(v45 + 16);
  if (v53)
  {
    v54 = *(v57 + 16);
    v55 = v53;
    [v54 setObject:v55 forKey:v58];
    v56 = v55;
    v60(v53);
  }
}

uint64_t closure #1 in closure #1 in ThumbnailRenderer.renderThumbnail(ref:model:vertical:iconScale:thumbnailSize:completion:)(double a1, double a2, double a3, double a4, double a5, double a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *(v13 + 168) = a13;
  *(v13 + 152) = a5;
  *(v13 + 160) = a6;
  *(v13 + 136) = a3;
  *(v13 + 144) = a4;
  *(v13 + 120) = a11;
  *(v13 + 128) = a12;
  *(v13 + 112) = a10;
  *(v13 + 96) = a1;
  *(v13 + 104) = a2;
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in ThumbnailRenderer.renderThumbnail(ref:model:vertical:iconScale:thumbnailSize:completion:), 0, 0);
}

uint64_t closure #1 in closure #1 in ThumbnailRenderer.renderThumbnail(ref:model:vertical:iconScale:thumbnailSize:completion:)()
{
  v1 = *(v0 + 15);
  v3 = *(v0 + 12);
  v2 = *(v0 + 13);
  type metadata accessor for ImageRenderer();
  v4 = swift_allocObject();
  *(v4 + 16) = 1;
  *(v4 + 24) = v3;
  *(v4 + 32) = v2;
  *(v4 + 40) = 0x4000000000000000;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 64) = 1;
  *(v4 + 72) = 0;
  *(v4 + 80) = 1;
  type metadata accessor for CanvasElementImageRenderer();
  inited = swift_initStackObject();
  *(v0 + 22) = inited;
  *(v0 + 23) = specialized CanvasElementImageRenderer.init(renderer:)(v4, inited);
  v6 = v1[3];
  v7 = v1[4];
  v8 = __swift_project_boxed_opaque_existential_1(v1, v6);
  v9 = swift_task_alloc();
  *(v0 + 24) = v9;
  v10 = type metadata accessor for PaperDocument(0);
  v11 = *(v7 + 8);
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_3(&lazy protocol witness table cache variable for type PaperDocument and conformance PaperDocument, type metadata accessor for PaperDocument);
  *v9 = v0;
  v9[1] = closure #1 in closure #1 in ThumbnailRenderer.renderThumbnail(ref:model:vertical:iconScale:thumbnailSize:completion:);
  v12 = v0[19];
  v13 = v0[20];
  v14 = v0[17];
  v15 = v0[18];
  v16 = *(v0 + 16);

  return CanvasElementImageRenderer.image<A, B>(_:in:bounds:darkMode:isRTL:)(v8, v16, 0, 0, v6, v10, v11, v14, v15, v12, v13);
}

{
  v1 = v0[14];
  v2 = *(v1 + 16);
  *(v1 + 16) = v0[25];

  OS_dispatch_semaphore.signal()();

  v3 = v0[1];

  return v3();
}

uint64_t closure #1 in closure #1 in ThumbnailRenderer.renderThumbnail(ref:model:vertical:iconScale:thumbnailSize:completion:)(uint64_t a1)
{
  *(*v1 + 200) = a1;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in ThumbnailRenderer.renderThumbnail(ref:model:vertical:iconScale:thumbnailSize:completion:), 0, 0);
}

uint64_t ThumbnailRenderer.reload(ref:)(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v19 = *(v6 - 8);
  v20 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v18 - v12;
  v18[1] = *(v1 + 24);
  (*(v10 + 16))(v18 - v12, a1, v9, v11);
  v14 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v1;
  (*(v10 + 32))(v15 + v14, v13, v9);
  aBlock[4] = partial apply for closure #1 in ThumbnailRenderer.reload(ref:);
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_50;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v22 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_3(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1DA6CD890](0, v8, v5, v16);
  _Block_release(v16);
  (*(v21 + 8))(v5, v3);
  (*(v19 + 8))(v8, v20);
}

void closure #1 in ThumbnailRenderer.reload(ref:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = *(v5 + 16);
  v10(&v14 - v7, a2, v4, v6);
  v11 = type metadata accessor for WeakPaperPageWrapper();
  v12 = objc_allocWithZone(v11);
  (v10)(&v12[OBJC_IVAR____TtC8PaperKitP33_F9BA2F3895C2005D59C823F72F32582820WeakPaperPageWrapper_ref], v8, v4);
  v14.receiver = v12;
  v14.super_class = v11;
  v13 = objc_msgSendSuper2(&v14, sel_init);
  (*(v5 + 8))(v8, v4);
  [v9 removeObjectForKey_];
}

uint64_t ThumbnailRenderer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t ThumbnailRenderer.init()()
{
  v1 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x1EEE9AC00](v1);
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v6 - 8);
  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  v8[0] = type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.userInitiated.getter();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8098], v2);
  v8[1] = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_3(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v0 + 24) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  return v0;
}

id specialized PPKPDFThumbnailsCollectionView.getImage(forCell:indexPath:page:completion:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v110 = type metadata accessor for DispatchWorkItemFlags();
  MEMORY[0x1EEE9AC00](v110);
  v111 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v97 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6PageIdVSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v97 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v97 - v15;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd);
  v114 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v18 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v112 = &v97 - v20;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd);
  v115 = *(v116 - 8);
  v21 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v116);
  *&v23 = MEMORY[0x1EEE9AC00](v22).n128_u64[0];
  v25 = &v97 - v24;
  result = [a4 thumbnailView];
  if (!result)
  {
    return result;
  }

  v27 = result;
  type metadata accessor for PPKPDFThumbnailView();
  v28 = swift_dynamicCastClass();
  if (!v28 || (v108 = a1, v29 = v28, (Strong = swift_unknownObjectWeakLoadStrong()) == 0))
  {

    return 0;
  }

  v109 = Strong;
  type metadata accessor for PaperKitPDFPage(0);
  v31 = swift_dynamicCastClass();
  if (!v31)
  {

    return 0;
  }

  v104 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v10;
  v32 = v31;
  v106 = a3;
  v33 = v27;
  v103 = [v29 layoutMode];
  v34 = [objc_opt_self() mainScreen];
  [v34 scale];
  v36 = v35;

  [v29 thumbnailSize];
  v38 = v37;
  v40 = v39;

  v41 = v109;
  PaperDocumentView.loadPaperKitPageIfNeeded(for:)(v32);
  v42 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_dataModel;
  swift_beginAccess();
  v43 = *(v115 + 16);
  v107 = v25;
  v44 = v25;
  v45 = v43;
  v43(v44, &v41[v42], v116);
  v46 = OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_pageId;
  swift_beginAccess();
  outlined init with copy of Date?(v32 + v46, v13, &_s8PaperKit6PageIdVSgMd);
  v47 = type metadata accessor for PageId(0);
  if ((*(*(v47 - 8) + 48))(v13, 1, v47))
  {

    outlined destroy of StocksKitCurrencyCache.Provider?(v13, &_s8PaperKit6PageIdVSgMd);
    v114[7](v16, 1, 1, v113);
LABEL_11:
    (*(v115 + 8))(v107, v116);
    outlined destroy of StocksKitCurrencyCache.Provider?(v16, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
    return 0;
  }

  v48 = v106;
  v101 = v32;
  v102 = v33;
  outlined init with copy of Date?(&v13[*(v47 + 20)], v16, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v13, &_s8PaperKit6PageIdVSgMd);
  v49 = v114;
  v50 = v113;
  if ((v114[6])(v16, 1, v113) == 1)
  {

    goto LABEL_11;
  }

  (v49[4])(v112, v16, v50);
  v51 = &unk_1EDCB5000;
  v52 = &unk_1EDCC4000;
  if (v108)
  {
    v53 = [v108 imageView];
    if (v53)
    {
      v54 = v53;
      v55 = [v53 image];
      if (!v55)
      {
        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        v100 = static ThumbnailRenderer.shared;
        v99 = v114[2];
        (v99)(v18, v112, v50);
        v56 = type metadata accessor for WeakPaperPageWrapper();
        v57 = v50;
        v58 = objc_allocWithZone(v56);
        (v99)(&v58[OBJC_IVAR____TtC8PaperKitP33_F9BA2F3895C2005D59C823F72F32582820WeakPaperPageWrapper_ref], v18, v57);
        v117.receiver = v58;
        v117.super_class = v56;
        v59 = objc_msgSendSuper2(&v117, sel_init);
        (v114[1])(v18, v57);
        v55 = [*(v100 + 16) objectForKey_];

        if (!v55)
        {
          v51 = &unk_1EDCB5000;
          v52 = &unk_1EDCC4000;
          goto LABEL_22;
        }

        [v54 setImage_];
        v51 = &unk_1EDCB5000;
        v52 = &unk_1EDCC4000;
      }

      v54 = v55;
LABEL_22:
    }
  }

  v97 = v45;
  if (v51[509] != -1)
  {
    swift_once();
  }

  v100 = v52[387];
  v60 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v61 = swift_allocObject();
  v62 = v101;
  *(v61 + 2) = v60;
  *(v61 + 3) = v62;
  *(v61 + 4) = UnknownCanvasElementView.flags.modify;
  *(v61 + 5) = 0;
  type metadata accessor for PaperDocument(0);
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_3(&lazy protocol witness table cache variable for type PaperDocument and conformance PaperDocument, type metadata accessor for PaperDocument);
  v63 = v48;

  v64 = v107;
  v65 = v113;
  v66 = v112;
  WeakTagged_3.subscript.getter();
  if (!v121)
  {

    (v114[1])(v66, v65);
    (*(v115 + 8))(v64, v116);
    outlined destroy of StocksKitCurrencyCache.Provider?(&aBlock, &_s8PaperKit0A4Page_pSgMd);
    goto LABEL_29;
  }

  v98 = v63;
  v99 = v61;
  v106 = v60;
  outlined init with take of PaperKitHashable(&aBlock, v126);
  v67 = v114;
  v68 = v114[2];
  v69 = v65;
  (v68)(v18, v66, v65);
  v70 = type metadata accessor for WeakPaperPageWrapper();
  v71 = objc_allocWithZone(v70);
  (v68)(&v71[OBJC_IVAR____TtC8PaperKitP33_F9BA2F3895C2005D59C823F72F32582820WeakPaperPageWrapper_ref], v18, v69);
  v125.receiver = v71;
  v125.super_class = v70;
  v72 = objc_msgSendSuper2(&v125, sel_init);
  v73 = v67[1];
  (v73)(v18, v69);
  v74 = [*(v100 + 16) objectForKey_];
  if (v74)
  {
    v75 = v74;
    v76 = type metadata accessor for TaskPriority();
    v77 = v105;
    (*(*(v76 - 8) + 56))(v105, 1, 1, v76);
    type metadata accessor for MainActor();
    v78 = v75;
    v79 = v98;
    v80 = v106;

    v81 = v78;
    v82 = static MainActor.shared.getter();
    v83 = swift_allocObject();
    v84 = MEMORY[0x1E69E85E0];
    v83[2] = v82;
    v83[3] = v84;
    v83[4] = v75;
    v83[5] = v80;
    v83[6] = v101;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v77, &async function pointer to partial apply for closure #1 in closure #1 in PPKPDFThumbnailsCollectionView.getImage(forCell:indexPath:page:completion:), v83);

    __swift_destroy_boxed_opaque_existential_0(v126);
    (v73)(v112, v69);
    (*(v115 + 8))(v107, v116);
LABEL_29:

    result = 0;
    goto LABEL_31;
  }

  LODWORD(v105) = v103 == 0;
  outlined init with copy of FindResult(v126, &v124);
  v85 = v104;
  v86 = v116;
  v97(v104, v107, v116);
  v87 = v115;
  v88 = (*(v115 + 80) + 88) & ~*(v115 + 80);
  v89 = (v21 + v88 + 7) & 0xFFFFFFFFFFFFFFF8;
  v90 = (v89 + 15) & 0xFFFFFFFFFFFFFFF8;
  v114 = v73;
  v91 = swift_allocObject();
  outlined init with take of PaperKitHashable(&v124, v91 + 16);
  *(v91 + 56) = v105;
  *(v91 + 64) = v36 + v36;
  *(v91 + 72) = v38;
  *(v91 + 80) = v40;
  (*(v87 + 32))(v91 + v88, v85, v86);
  *(v91 + v89) = v100;
  *(v91 + v90) = v72;
  v92 = (v91 + ((v90 + 15) & 0xFFFFFFFFFFFFFFF8));
  v93 = v99;
  *v92 = partial apply for closure #1 in PPKPDFThumbnailsCollectionView.getImage(forCell:indexPath:page:completion:);
  v92[1] = v93;
  v122 = partial apply for closure #1 in ThumbnailRenderer.renderThumbnail(ref:model:vertical:iconScale:thumbnailSize:completion:);
  v123 = v91;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v120 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v121 = &block_descriptor_24_1;
  _Block_copy(&aBlock);
  v118 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_3(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);

  v105 = v72;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();
  v94 = DispatchWorkItem.init(flags:block:)();

  OS_dispatch_queue.async(execute:)();

  __swift_destroy_boxed_opaque_existential_0(v126);
  (v114)(v112, v113);
  (*(v87 + 8))(v107, v116);

  result = v94;
LABEL_31:
  if (v108)
  {
    v95 = result;
    type metadata accessor for PPKPDFIconCollectionViewCell_iOS_Swift();
    v96 = swift_dynamicCastClass();
    if (v96)
    {
      *(v96 + OBJC_IVAR___PPKPDFIconCollectionViewCell_iOS_Swift_imageFetch) = v95;
    }

    return v95;
  }

  return result;
}

uint64_t closure #1 in PPKPDFThumbnailsCollectionView.getImage(forCell:indexPath:page:completion:)(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void *))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  type metadata accessor for MainActor();
  v12 = a1;

  v13 = a3;
  v14 = static MainActor.shared.getter();
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E85E0];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = a1;
  v15[5] = a2;
  v15[6] = v13;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, &closure #1 in closure #1 in PPKPDFThumbnailsCollectionView.getImage(forCell:indexPath:page:completion:)partial apply, v15);

  return a4(a1);
}

uint64_t closure #1 in closure #1 in PPKPDFThumbnailsCollectionView.getImage(forCell:indexPath:page:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[11] = a4;
  type metadata accessor for MainActor();
  v6[14] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in PPKPDFThumbnailsCollectionView.getImage(forCell:indexPath:page:completion:), v8, v7);
}

uint64_t closure #1 in closure #1 in PPKPDFThumbnailsCollectionView.getImage(forCell:indexPath:page:completion:)()
{
  v1 = v0[11];

  if (v1)
  {
    v2 = v0[11];
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      v5 = v0[13];
      v6 = v2;
      v7 = [v4 page];

      if (v7 == v5)
      {
        v8 = objc_opt_self();
        v9 = [v4 imageView];
        v10 = swift_allocObject();
        *(v10 + 16) = v4;
        *(v10 + 24) = v6;
        v0[6] = partial apply for closure #1 in closure #1 in closure #1 in PPKPDFThumbnailsCollectionView.getImage(forCell:indexPath:page:completion:);
        v0[7] = v10;
        v0[2] = MEMORY[0x1E69E9820];
        v0[3] = 1107296256;
        v0[4] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
        v0[5] = &block_descriptor_34;
        v11 = _Block_copy(v0 + 2);
        v12 = v6;
        v13 = v4;

        [v8 transitionWithView:v9 duration:5242880 options:v11 animations:0 completion:0.2];

        _Block_release(v11);
        v4 = v9;
      }

      else
      {
      }
    }
  }

  v14 = v0[1];

  return v14();
}

void closure #1 in closure #1 in closure #1 in PPKPDFThumbnailsCollectionView.getImage(forCell:indexPath:page:completion:)(void *a1, uint64_t a2)
{
  v3 = [a1 imageView];
  [v3 setImage_];
}

Swift::Void __swiftcall PPKPDFThumbnailsCollectionView.reload(_:)(PDFPage *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6PageIdVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - v11;
  type metadata accessor for PaperKitPDFPage(0);
  v13 = swift_dynamicCastClass();
  if (!v13)
  {
    goto LABEL_4;
  }

  v14 = OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_pageId;
  v15 = v13;
  swift_beginAccess();
  outlined init with copy of Date?(v15 + v14, v5, &_s8PaperKit6PageIdVSgMd);
  v16 = type metadata accessor for PageId(0);
  if ((*(*(v16 - 8) + 48))(v5, 1, v16))
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v5, &_s8PaperKit6PageIdVSgMd);
LABEL_4:
    (*(v10 + 56))(v8, 1, 1, v9);
LABEL_5:
    outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
    goto LABEL_6;
  }

  outlined init with copy of Date?(&v5[*(v16 + 20)], v8, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v5, &_s8PaperKit6PageIdVSgMd);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    goto LABEL_5;
  }

  (*(v10 + 32))(v12, v8, v9);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  ThumbnailRenderer.reload(ref:)(v12);
  (*(v10 + 8))(v12, v9);
LABEL_6:
  v17 = type metadata accessor for PPKPDFThumbnailsCollectionView();
  v19.receiver = v1;
  v19.super_class = v17;
  [(PDFPage *)&v19 reloadPage:a1];
}

id WeakPaperPageWrapper.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void partial apply for closure #1 in ThumbnailRenderer.reload(ref:)()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  closure #1 in ThumbnailRenderer.reload(ref:)(v2, v3);
}

uint64_t block_copy_helper_50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_3(unint64_t *a1, void (*a2)(uint64_t))
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

void partial apply for closure #1 in ThumbnailRenderer.renderThumbnail(ref:model:vertical:iconScale:thumbnailSize:completion:)()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd) - 8);
  v2 = (*(v1 + 80) + 88) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v8 = *(v0 + 80);
  v9 = *(v0 + v3);
  v10 = *(v0 + v4);
  v11 = v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;
  v13 = *(v11 + 8);

  closure #1 in ThumbnailRenderer.renderThumbnail(ref:model:vertical:iconScale:thumbnailSize:completion:)((v0 + 16), v5, v0 + v2, v9, v10, v12, v13, v6, v7, v8);
}

uint64_t partial apply for closure #1 in closure #1 in PPKPDFThumbnailsCollectionView.getImage(forCell:indexPath:page:completion:)(uint64_t a1)
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

  return closure #1 in closure #1 in PPKPDFThumbnailsCollectionView.getImage(forCell:indexPath:page:completion:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in closure #1 in ThumbnailRenderer.renderThumbnail(ref:model:vertical:iconScale:thumbnailSize:completion:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd) - 8);
  v6 = (*(v5 + 80) + 96) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 39) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 2);
  v10 = *(v1 + 3);
  v11 = v1[4];
  v12 = v1[5];
  v13 = *(v1 + 6);
  v14 = (v1 + v7);
  v15 = *v14;
  v16 = v14[1];
  v17 = v14[2];
  v18 = v14[3];
  v19 = *(v1 + v8);
  v20 = swift_task_alloc();
  *(v3 + 16) = v20;
  *v20 = v3;
  v20[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return closure #1 in closure #1 in ThumbnailRenderer.renderThumbnail(ref:model:vertical:iconScale:thumbnailSize:completion:)(v11, v12, v15, v16, v17, v18, a1, v9, v10, v13, (v1 + 7), v1 + v6, v19);
}

uint64_t objectdestroy_26Tm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t key path getter for GraphableExpressionState.expression : GraphableExpressionState@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type GraphableExpressionsState and conformance GraphableExpressionsState(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
}

uint64_t key path getter for GraphableExpressionState.enabled : GraphableExpressionState@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type GraphableExpressionsState and conformance GraphableExpressionsState(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 24);
  return result;
}

uint64_t key path getter for GraphableExpressionState.color : GraphableExpressionState@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type GraphableExpressionsState and conformance GraphableExpressionsState(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 32);
}

uint64_t key path getter for GraphableExpressionState.graphableVariable : GraphableExpressionState@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type GraphableExpressionsState and conformance GraphableExpressionsState(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__graphableVariable + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__graphableVariable);
  a2[1] = v4;
}

uint64_t key path setter for GraphableExpressionState.graphableVariable : GraphableExpressionState(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return GraphableExpressionState.graphableVariable.setter(v1, v2);
}

uint64_t key path getter for GraphableExpressionState.shouldBeObserved : GraphableExpressionState@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type GraphableExpressionsState and conformance GraphableExpressionsState(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__shouldBeObserved);
  return result;
}

uint64_t GraphableExpressionsState.expressionStates.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type GraphableExpressionsState and conformance GraphableExpressionsState(&lazy protocol witness table cache variable for type GraphableExpressionsState and conformance GraphableExpressionsState, type metadata accessor for GraphableExpressionsState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t specialized closure #1 in GraphElement.graphables<A>(in:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit19GraphableExpressionVGMd);
  type metadata accessor for GraphElement(0);
  lazy protocol witness table accessor for type GraphableExpressionsState and conformance GraphableExpressionsState(&lazy protocol witness table cache variable for type GraphElement and conformance GraphElement, type metadata accessor for GraphElement);
  return Ref.subscript.getter();
}

uint64_t specialized GraphElement.imageRenderingCalculateGraph<A>(in:document:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v90 = &v68 - v9;
  v89 = type metadata accessor for Color(0);
  v77 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v75 = (&v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v82 = type metadata accessor for CalculateExpression.Base();
  v87 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v81 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v86 = &v68 - v13;
  v85 = type metadata accessor for UUID();
  v14 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85 - 8);
  v80 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v74 = &v68 - v17;
  v91 = type metadata accessor for GraphableExpression(0);
  v18 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v20 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for GraphElement(0);
  MEMORY[0x1EEE9AC00](v21);
  v69 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    v24 = CanvasCalculateDocument.proxyDocumentRepresentation.getter(ObjectType, a3);
  }

  else
  {
    v24 = 0;
  }

  v84 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
  v96 = MEMORY[0x1E69E7CC0];
  v70 = v21;
  MEMORY[0x1EEE9AC00](v84);
  *(&v68 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMd);
  v71 = v4;
  v25 = CROrderedSet.map<A>(_:)();
  v26 = *(v25 + 16);
  if (!v26)
  {

    v61 = MEMORY[0x1E69E7CC0];
    goto LABEL_43;
  }

  v27 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v68 = v25;
  v28 = v25 + v27;
  v83 = (v14 + 48);
  v73 = (v14 + 32);
  v72 = (v14 + 8);
  v88 = *(v18 + 72);
  v79 = (v87 + 13);
  v78 = *MEMORY[0x1E6992250];
  v87 = (v77 + 48);
  LODWORD(v77) = *MEMORY[0x1E6992100];
  v76 = xmmword_1D4058CF0;
  do
  {
    _s8PaperKit19GraphableExpressionVWOcTm_0(v28, v20, type metadata accessor for GraphableExpression);
    if (!v24)
    {
      goto LABEL_14;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
    CRRegister.wrappedValue.getter();
    v29 = v86;
    UUID.init(uuidString:)();

    v30 = v85;
    if ((*v83)(v29, 1, v85) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v29, &_s10Foundation4UUIDVSgMd);
    }

    else
    {
      v31 = v74;
      (*v73)(v74);
      CanvasCalculateDocumentProxy.updateDocumentIfNecessary()();
      swift_beginAccess();
      v32 = *(v24 + 56);
      if (*(v32 + 16))
      {
        v33 = specialized __RawDictionaryStorage.find<A>(_:)(v31);
        if (v34)
        {
          v35 = *(v32 + 56) + 40 * v33;
          v36 = *v35;
          v37 = *(v35 + 8);
          v38 = *v35;
          swift_retain_n();

          swift_endAccess();
          outlined consume of SortableCalculateExpression?(v36, v37);
          (*v72)(v74, v30);

          goto LABEL_15;
        }
      }

      swift_endAccess();
      (*v72)(v31, v30);
    }

    v39 = CanvasCalculateDocumentProxy.expression(for:)(v20);

    if (!v39)
    {
LABEL_14:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
      CRRegister.wrappedValue.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo12CalculateKeya_yptGMd);
      inited = swift_initStackObject();
      *(inited + 16) = v76;
      v41 = v78;
      *(inited + 32) = v78;
      *(inited + 64) = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSNumber);
      v42 = v84;
      *(inited + 40) = v84;
      v43 = v41;
      v44 = v42;
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo12CalculateKeya_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of StocksKitCurrencyCache.Provider?(inited + 32, &_sSo12CalculateKeya_yptMd);
      UUID.init()();
      (*v79)(v81, v77, v82);
      type metadata accessor for CalculateExpression();
      swift_allocObject();
      CalculateExpression.init(_:options:base:id:)();
    }

LABEL_15:
    v94 = &type metadata for PencilAndPaperFeatureFlags;
    v95 = lazy protocol witness table accessor for type PencilAndPaperFeatureFlags and conformance PencilAndPaperFeatureFlags();
    LOBYTE(v92) = 7;

    v45 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_0(&v92);
    if ((v45 & 1) == 0)
    {
      goto LABEL_35;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
    CRRegister.wrappedValue.getter();
    v47 = v92;
    v46 = v93;

    v48 = HIBYTE(v46) & 0xF;
    if ((v46 & 0x2000000000000000) == 0)
    {
      v48 = v47 & 0xFFFFFFFFFFFFLL;
    }

    if (v48)
    {
      CRRegister.wrappedValue.getter();
      v50 = v92;
      v49 = v93;
    }

    else
    {
      v53 = *(CalculateExpression.graphableVariables.getter() + 16);

      if (!v53)
      {
        goto LABEL_31;
      }

      v54 = CalculateExpression.graphableVariables.getter();
      if (!v54[2])
      {

LABEL_31:
        CalculateExpression.graphableVariable.getter();
        goto LABEL_32;
      }

      v50 = v54[4];
      v49 = v54[5];
    }

    v51 = CalculateExpression.graphableVariable.getter();
    if (v49)
    {
      if (v52)
      {
        if (v50 == v51 && v52 == v49)
        {

LABEL_29:

          goto LABEL_35;
        }

        v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v55)
        {
          goto LABEL_29;
        }
      }

      goto LABEL_34;
    }

LABEL_32:
    if (!v52)
    {
      goto LABEL_35;
    }

LABEL_34:
    CalculateExpression.graphableVariable.setter();
LABEL_35:
    type metadata accessor for CalculateGraphExpression();
    swift_allocObject();

    CalculateGraphExpression.init(_:color:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
    v56 = v90;
    CRRegister.wrappedValue.getter();
    if ((*v87)(v56, 1, v89) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v90, &_s8PaperKit5ColorVSgMd);
    }

    else
    {
      v57 = v75;
      _s8PaperKit5ColorVWObTm_1(v90, v75, type metadata accessor for Color);
      v58 = *v57;
      v59 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      [v59 initWithCGColor_];
      Color.init(uiColor:)();
      dispatch thunk of CalculateGraphExpression.color.setter();
      _s8PaperKit12GraphElementVWOhTm_0(v57, type metadata accessor for Color);
    }

    MEMORY[0x1DA6CD190](v60);
    if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    _s8PaperKit12GraphElementVWOhTm_0(v20, type metadata accessor for GraphableExpression);
    v28 += v88;
    --v26;
  }

  while (v26);
  v61 = v96;

LABEL_43:
  type metadata accessor for CalculateGraph();
  v62 = v69;
  _s8PaperKit19GraphableExpressionVWOcTm_0(v71, v69, type metadata accessor for GraphElement);
  CalculateGraph.init(canvasElement:expressions:animate:delayAddingExpressions:)(v62, v61, 0, 0);
  v64 = v63;
  dispatch thunk of CalculateGraph.isSelected.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd);
  CRRegister.wrappedValue.getter();
  v65 = dispatch thunk of CalculateGraph.pose.modify();
  CalculateGraph.Pose.azimuth.setter();
  v65(&v92, 0);
  CRRegister.wrappedValue.getter();
  v66 = dispatch thunk of CalculateGraph.pose.modify();
  CalculateGraph.Pose.inclination.setter();
  v66(&v92, 0);

  return v64;
}

uint64_t specialized GraphElement.graphExpressionType<A>(in:calculateDocument:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v42 = a2;
  v43 = a3;
  v41 = a1;
  v34 = a4;
  v47 = type metadata accessor for CalculateExpression.GraphableType();
  v33 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v46 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for GraphableExpression(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit19GraphableExpressionVGMd);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit19GraphableExpressionVGSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v31 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA3RefVy8PaperKit19GraphableExpressionVG_GMd);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v31 - v17;
  v40 = type metadata accessor for GraphElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMd);
  CROrderedSet.makeIterator()();
  v44 = v18;
  v45 = v15;
  CROrderedSet.Iterator.next()();
  v38 = *(v9 + 48);
  v39 = v9 + 48;
  if (v38(v14, 1, v8) == 1)
  {
    v19 = 0;
    v20 = v34;
    goto LABEL_15;
  }

  v32 = v16;
  v22 = *(v9 + 32);
  v21 = v9 + 32;
  v37 = v22;
  v23 = (v21 - 24);
  v24 = (v33 + 88);
  v36 = *MEMORY[0x1E69920D0];
  v35 = *MEMORY[0x1E69920D8];
  v25 = (v33 + 8);
  v22(v11, v14, v8);
  while (1)
  {
    lazy protocol witness table accessor for type GraphableExpressionsState and conformance GraphableExpressionsState(&lazy protocol witness table cache variable for type GraphElement and conformance GraphElement, type metadata accessor for GraphElement);
    Ref.subscript.getter();
    ObjectType = swift_getObjectType();
    if (!CanvasCalculateDocument.expressionForAnyGraphable(_:)(v7, ObjectType, v43))
    {
      _s8PaperKit12GraphElementVWOhTm_0(v7, type metadata accessor for GraphableExpression);
      (*v23)(v11, v8);
      goto LABEL_5;
    }

    v27 = v21;
    v28 = v46;
    CalculateExpression.graphableType.getter();

    _s8PaperKit12GraphElementVWOhTm_0(v7, type metadata accessor for GraphableExpression);
    (*v23)(v11, v8);
    v29 = (*v24)(v28, v47);
    if (v29 == v36)
    {
      v19 = 1;
      goto LABEL_14;
    }

    if (v29 == v35)
    {
      break;
    }

    (*v25)(v46, v47);
    v21 = v27;
LABEL_5:
    CROrderedSet.Iterator.next()();
    if (v38(v14, 1, v8) == 1)
    {
      v19 = 0;
      goto LABEL_14;
    }

    v37(v11, v14, v8);
  }

  v19 = 2;
LABEL_14:
  v20 = v34;
  v16 = v32;
LABEL_15:
  result = (*(v16 + 8))(v44, v45);
  *v20 = v19;
  return result;
}

uint64_t GraphableExpressionsState.type.getter@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type GraphableExpressionsState and conformance GraphableExpressionsState(&lazy protocol witness table cache variable for type GraphableExpressionsState and conformance GraphableExpressionsState, type metadata accessor for GraphableExpressionsState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a1 = *(v1 + 33);
  return result;
}

uint64_t GraphableExpressionsState.calculateGraph.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type GraphableExpressionsState and conformance GraphableExpressionsState(&lazy protocol witness table cache variable for type GraphableExpressionsState and conformance GraphableExpressionsState, type metadata accessor for GraphableExpressionsState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = *(Strong + direct field offset for GraphCanvasElementView.graphViewController);
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC8PaperKitP33_34A094740B6BACFE09E8AB9B5463AD5F32GraphCanvasElementViewController_calculateGraph);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

size_t specialized Array.remove(at:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6PageIdVSgMd) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = outlined init with take of Range<AttributedString.Index>(v11, a2, &_s8PaperKit6PageIdVSgMd);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t specialized Array.remove(at:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    outlined init with take of WeakObserver(&v5[2 * a1 + 4], a2);
    result = swift_arrayInitWithTakeFrontToBack();
    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t almostEqual(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v28 - v8;
  v10 = type metadata accessor for Color(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v28 - v17;
  MEMORY[0x1EEE9AC00](v16);
  if (a1)
  {
    if (a2)
    {
      v30 = v20;
      v31 = &v28 - v19;
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIColor);
      swift_retain_n();

      v21 = UIColor.init(_:)();
      Color.init(cgColor:)([v21 CGColor], v9);

      v22 = *(v11 + 48);
      if (v22(v9, 1, v10))
      {

        outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s8PaperKit5ColorVSgMd);
      }

      else
      {
        v29 = v22;
        _s8PaperKit5ColorVWObTm_1(v9, v18, type metadata accessor for Color);
        v24 = v31;
        _s8PaperKit5ColorVWObTm_1(v18, v31, type metadata accessor for Color);

        v25 = UIColor.init(_:)();
        Color.init(cgColor:)([v25 CGColor], v7);

        if (!v29(v7, 1, v10))
        {
          _s8PaperKit5ColorVWObTm_1(v7, v14, type metadata accessor for Color);
          v27 = v30;
          _s8PaperKit5ColorVWObTm_1(v14, v30, type metadata accessor for Color);
          v23 = Color.almostEqual(_:)();

          _s8PaperKit12GraphElementVWOhTm_0(v27, type metadata accessor for Color);
          _s8PaperKit12GraphElementVWOhTm_0(v24, type metadata accessor for Color);
          return v23 & 1;
        }

        outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s8PaperKit5ColorVSgMd);
        _s8PaperKit12GraphElementVWOhTm_0(v24, type metadata accessor for Color);
      }
    }

    goto LABEL_9;
  }

  if (a2)
  {
LABEL_9:
    v23 = 0;
    return v23 & 1;
  }

  v23 = 1;
  return v23 & 1;
}

uint64_t PKGraphHostingViewController.__allocating_init(rootView:)(uint64_t a1)
{
  v3 = type metadata accessor for CalculateGraphView();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(v1);
  (*(v4 + 16))(v6, a1, v3);
  v8 = UIHostingController.init(rootView:)();
  (*(v4 + 8))(a1, v3);
  return v8;
}

uint64_t PKGraphHostingViewController.__allocating_init(coder:rootView:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalculateGraphView();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(v2);
  (*(v5 + 16))(v7, a2, v4);
  v9 = UIHostingController.init(coder:rootView:)();
  (*(v5 + 8))(a2, v4);
  return v9;
}

id @objc PKGraphHostingViewController.init(coder:)(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for PKGraphHostingViewController(0);
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

id GraphCanvasElementViewController.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC8PaperKitP33_34A094740B6BACFE09E8AB9B5463AD5F32GraphCanvasElementViewController_calculateGraph] = 0;
  *&v1[OBJC_IVAR____TtC8PaperKitP33_34A094740B6BACFE09E8AB9B5463AD5F32GraphCanvasElementViewController_hostingController] = 0;
  *&v1[OBJC_IVAR____TtC8PaperKitP33_34A094740B6BACFE09E8AB9B5463AD5F32GraphCanvasElementViewController_graphView] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for GraphCanvasElementViewController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id PKGraphHostingViewController.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t GraphCanvasElementView.cachedGraphableExpressionsState.getter()
{
  v1 = direct field offset for GraphCanvasElementView.$__lazy_storage_$_cachedGraphableExpressionsState;
  if (*&v0[direct field offset for GraphCanvasElementView.$__lazy_storage_$_cachedGraphableExpressionsState])
  {
    v2 = *&v0[direct field offset for GraphCanvasElementView.$__lazy_storage_$_cachedGraphableExpressionsState];
  }

  else
  {
    type metadata accessor for GraphableExpressionsState(0);
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v2 + 24) = MEMORY[0x1E69E7CC0];
    *(v2 + 32) = 0;
    ObservationRegistrar.init()();
    v3 = v0;
    GraphableExpressionsState.view.setter(v0);
    GraphableExpressionsState.update()();
    *&v0[v1] = v2;
  }

  return v2;
}

void *GraphCanvasElementView.elementViewController.getter()
{
  v1 = direct field offset for GraphCanvasElementView.graphViewController;
  v2 = *&v0[direct field offset for GraphCanvasElementView.graphViewController];
  if (!v2)
  {
    v3 = type metadata accessor for GraphCanvasElementViewController();
    v4 = objc_allocWithZone(v3);
    *&v4[OBJC_IVAR____TtC8PaperKitP33_34A094740B6BACFE09E8AB9B5463AD5F32GraphCanvasElementViewController_calculateGraph] = 0;
    *&v4[OBJC_IVAR____TtC8PaperKitP33_34A094740B6BACFE09E8AB9B5463AD5F32GraphCanvasElementViewController_hostingController] = 0;
    *&v4[OBJC_IVAR____TtC8PaperKitP33_34A094740B6BACFE09E8AB9B5463AD5F32GraphCanvasElementViewController_graphView] = 0;
    v10.receiver = v4;
    v10.super_class = v3;
    v5 = v0;
    v6 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, 0, 0);
    [v6 setView_];

    v7 = *&v0[v1];
    *&v0[v1] = v6;

    v2 = *&v0[v1];
  }

  v8 = v2;
  return v2;
}

Swift::Bool __swiftcall GraphCanvasElementView.supportsDraggingAtLocation(_:)(CGPoint a1)
{
  y = a1.y;
  x = a1.x;
  v4 = type metadata accessor for CalculateGraph.GraphType();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  v11 = *(v1 + direct field offset for GraphCanvasElementView.graphViewController);
  if (!v11 || !*(v11 + OBJC_IVAR____TtC8PaperKitP33_34A094740B6BACFE09E8AB9B5463AD5F32GraphCanvasElementViewController_calculateGraph))
  {
    goto LABEL_6;
  }

  dispatch thunk of CalculateGraph.graphType.getter();
  (*(v5 + 104))(v7, *MEMORY[0x1E69922E8], v4);
  v12 = static CalculateGraph.GraphType.== infix(_:_:)();
  v13 = *(v5 + 8);
  v13(v7, v4);
  v13(v10, v4);
  if ((v12 & 1) == 0)
  {

LABEL_6:
    v15 = 1;
    return v15 & 1;
  }

  v14 = GraphCanvasElementView.shouldHitTestSubviews(at:)(__PAIR128__(*&y, *&x));

  v15 = !v14;
  return v15 & 1;
}

Swift::Void __swiftcall GraphCanvasElementView.willMove(toSuperview:)(UIView_optional *toSuperview)
{
  v3 = type metadata accessor for PKDrawing();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for GraphCanvasElementView(0);
  v31.receiver = v1;
  v31.super_class = v7;
  [(UIView_optional *)&v31 willMoveToSuperview:toSuperview];
  if (!toSuperview)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      v10 = v1;
      v11 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x440))();
      v13 = v12;
      ObjectType = swift_getObjectType();
      v15 = (*(v13 + 16))(ObjectType, v13);

      if (v15)
      {
        v16 = [v15 drawing];

        static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();
        PKDrawing._bridgeToObjectiveC()(v17);
        v19 = v18;
        v20 = [v18 uuid];

        (*(v4 + 8))(v6, v3);
        v30 = &unk_1F4FC4E80;
        v21 = swift_dynamicCastObjCProtocolConditional();
        if (v21 && (v22 = v21, swift_getObjectType(), type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSObject), swift_dynamicCastMetatype()))
        {
          v23 = one-time initialization token for controllers;
          swift_unknownObjectRetain();
          if (v23 != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          v24 = static CalculateDocumentController.controllers;
          if (*(static CalculateDocumentController.controllers + 2) && (v25 = specialized __RawDictionaryStorage.find<A>(_:)(v22), (v26 & 1) != 0))
          {
            v27 = *(v24[7] + 8 * v25);
            swift_endAccess();
            v28 = v27;
            swift_unknownObjectRelease();
            specialized CalculateDocumentController.removeObserver(_:)(v10, v28);
            CalculateDocumentController.updateGraphableVariables()();

            swift_unknownObjectRelease();
          }

          else
          {
            swift_endAccess();

            swift_unknownObjectRelease_n();
          }
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }

      else
      {
      }
    }
  }
}

void @objc GraphCanvasElementView.willMove(toSuperview:)(void *a1, uint64_t a2, UIView_optional *a3)
{
  v5 = a3;
  v6 = a1;
  GraphCanvasElementView.willMove(toSuperview:)(a3);
}

Swift::Void __swiftcall GraphCanvasElementView.didMoveToSuperview()()
{
  v1 = v0;
  v2 = type metadata accessor for GraphElement(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit12GraphElementVGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v28 - v7;
  v9 = type metadata accessor for GraphCanvasElementView(0);
  v30.receiver = v0;
  v30.super_class = v9;
  objc_msgSendSuper2(&v30, sel_didMoveToSuperview);
  v10 = [v0 superview];
  if (v10)
  {

    v11 = direct field offset for GraphCanvasElementView.graphViewController;
    if (!*(v0 + direct field offset for GraphCanvasElementView.graphViewController))
    {
      v12 = type metadata accessor for GraphCanvasElementViewController();
      v13 = objc_allocWithZone(v12);
      *&v13[OBJC_IVAR____TtC8PaperKitP33_34A094740B6BACFE09E8AB9B5463AD5F32GraphCanvasElementViewController_calculateGraph] = 0;
      *&v13[OBJC_IVAR____TtC8PaperKitP33_34A094740B6BACFE09E8AB9B5463AD5F32GraphCanvasElementViewController_hostingController] = 0;
      *&v13[OBJC_IVAR____TtC8PaperKitP33_34A094740B6BACFE09E8AB9B5463AD5F32GraphCanvasElementViewController_graphView] = 0;
      v29.receiver = v13;
      v29.super_class = v12;
      v14 = v1;
      v15 = objc_msgSendSuper2(&v29, sel_initWithNibName_bundle_, 0, 0);
      [v15 setView_];

      v16 = *(v1 + v11);
      *(v1 + v11) = v15;
    }

    specialized CanvasElementView.updateGestures()();
    specialized CanvasElementView.updateFrame()();
    Strong = swift_unknownObjectWeakLoadStrong();
    v18 = MEMORY[0x1E69E7D40];
    if (Strong)
    {
      v19 = Strong;
      (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x928))();
    }

    v20 = *((*v18 & *v1) + 0x3F0);
    swift_beginAccess();
    (*(v6 + 16))(v8, v1 + v20, v5);
    Capsule.root.getter();
    _s8PaperKit12GraphElementVWOhTm_0(v4, type metadata accessor for GraphElement);
    (*(v6 + 8))(v8, v5);
    GraphCanvasElementView.cachedGraphableExpressionsState.getter();
    GraphableExpressionsState.update()();

    GraphCanvasElementView.updateGraphView()();
  }

  else
  {
    v21 = direct field offset for GraphCanvasElementView.graphViewController;
    v22 = *(v0 + direct field offset for GraphCanvasElementView.graphViewController);
    if (v22 && ((v23 = *&v22[OBJC_IVAR____TtC8PaperKitP33_34A094740B6BACFE09E8AB9B5463AD5F32GraphCanvasElementViewController_hostingController]) == 0 || (v24 = v22, v25 = v23, [v25 willMoveToParentViewController_], objc_msgSend(*&v24[OBJC_IVAR____TtC8PaperKitP33_34A094740B6BACFE09E8AB9B5463AD5F32GraphCanvasElementViewController_graphView], sel_removeFromSuperview), objc_msgSend(v25, sel_didMoveToParentViewController_, 0), objc_msgSend(v25, sel_removeFromParentViewController), v25, v24, (v22 = *(v1 + v21)) != 0)) && (objc_msgSend(v22, sel_removeFromParentViewController), (v26 = *(v1 + v21)) != 0))
    {
      [v26 setView_];
      v27 = *(v1 + v21);
    }

    else
    {
      v27 = 0;
    }

    *(v1 + v21) = 0;
  }
}

void @objc GraphCanvasElementView.didMoveToSuperview()(void *a1)
{
  v1 = a1;
  GraphCanvasElementView.didMoveToSuperview()();
}

Swift::Void __swiftcall GraphCanvasElementView.didUpdateExpression(_:identifier:)(Swift::String _, Swift::String identifier)
{
  v3 = v2;
  object = identifier._object;
  countAndFlagsBits = identifier._countAndFlagsBits;
  v6 = _._object;
  v7 = _._countAndFlagsBits;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit12GraphElementVGMd);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19[-v10];
  v26 = 0;
  v20 = countAndFlagsBits;
  v21 = object;
  v22 = v7;
  v23 = v6;
  v24 = &v26;
  v12 = MEMORY[0x1E69E7D40];
  v13 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x3F0);
  swift_beginAccess();
  Capsule.callAsFunction<A>(_:)();
  swift_endAccess();
  if (v26 == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v15 = Strong;
      (*(v9 + 16))(v11, &v3[v13], v8);
      v25[0] = 4;
      v16 = *((*v12 & *v15) + 0x7D8);
      v17 = type metadata accessor for GraphElement(0);
      v18 = lazy protocol witness table accessor for type GraphableExpressionsState and conformance GraphableExpressionsState(&lazy protocol witness table cache variable for type GraphElement and conformance GraphElement, type metadata accessor for GraphElement);
      v16(v11, v25, v17, v18);
      v25[0] = 4;
      (*((*v12 & *v15) + 0x7B0))(v25);

      (*(v9 + 8))(v11, v8);
    }
  }
}

uint64_t closure #1 in GraphCanvasElementView.didUpdateExpression(_:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v33 = a6;
  v41 = a5;
  v42 = a3;
  v43 = a4;
  v44 = a2;
  v45 = type metadata accessor for GraphableExpression(0);
  v7 = MEMORY[0x1EEE9AC00](v45);
  v34 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit19GraphableExpressionVGMd);
  v40 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit19GraphableExpressionVGSgMd);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v32 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMd);
  v18 = *(v17 - 8);
  v38 = v17;
  v39 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v32 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA3RefVy8PaperKit19GraphableExpressionVG_GMd);
  v32 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v32 - v22;
  swift_getKeyPath();
  v50 = a1;
  Capsule.Ref.subscript.getter();

  v24 = v38;
  CROrderedSet.makeIterator()();
  (*(v39 + 8))(v20, v24);
  v38 = v23;
  v39 = v21;
  CROrderedSet.Iterator.next()();
  v25 = v40;
  v36 = *(v40 + 48);
  v37 = v40 + 48;
  if (v36(v16, 1, v11) != 1)
  {
    v35 = *(v25 + 32);
    v40 = v25 + 32;
    v27 = (v25 + 8);
    v35(v13, v16, v11);
    while (1)
    {
      lazy protocol witness table accessor for type GraphableExpressionsState and conformance GraphableExpressionsState(&lazy protocol witness table cache variable for type GraphableExpression and conformance GraphableExpression, type metadata accessor for GraphableExpression);
      Capsule.Ref.subscript.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
      CRRegister.wrappedValue.getter();
      _s8PaperKit12GraphElementVWOhTm_0(v10, type metadata accessor for GraphableExpression);
      if (v48 == v44 && v49 == v42)
      {
      }

      else
      {
        v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v28 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      v29 = v34;
      Capsule.Ref.subscript.getter();
      CRRegister.wrappedValue.getter();
      _s8PaperKit12GraphElementVWOhTm_0(v29, type metadata accessor for GraphableExpression);
      if (v48 == v43 && v49 == v41)
      {
        break;
      }

      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v30)
      {
        goto LABEL_5;
      }

      v31 = Capsule.Ref.subscript.modify();
      v46 = v43;
      v47 = v41;

      CRRegister.wrappedValue.setter();
      v31(&v48, 0);
      (*v27)(v13, v11);
      *v33 = 1;
LABEL_6:
      CROrderedSet.Iterator.next()();
      if (v36(v16, 1, v11) == 1)
      {
        return (*(v32 + 8))(v38, v39);
      }

      v35(v13, v16, v11);
    }

LABEL_5:
    (*v27)(v13, v11);
    goto LABEL_6;
  }

  return (*(v32 + 8))(v38, v39);
}

double GraphCanvasElementView.graphViewFrame.getter()
{
  [v0 bounds];
  if ((*&result & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0.0;
  }

  return result;
}

uint64_t GraphCanvasElementView.orphanedGraphables.getter()
{
  v1 = v0;
  v2 = type metadata accessor for GraphableExpression(0);
  v47 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v48 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v41 - v5;
  v7 = type metadata accessor for GraphElement(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit12GraphElementVGMd);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v41 - v15;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v44 = v7;
  v45 = v14;
  v49 = v9;
  v18 = MEMORY[0x1E69E7D40];
  v19 = Strong;
  v20 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0xA10))();
  v46 = v21;
  if (!v20)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v41 = v19;
  v22 = *v18 & *v1;
  v43 = v2;
  v23 = *(v22 + 1008);
  swift_beginAccess();
  v24 = *(v11 + 16);
  v24(v16, &v1[v23], v10);
  Capsule.root.getter();
  v42 = *(v11 + 8);
  v42(v16, v10);
  v25 = &v1[v23];
  v26 = v45;
  v27 = (v24)(v45, v25, v10);
  MEMORY[0x1EEE9AC00](v27);
  *(&v41 - 2) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMd);
  v28 = v49;
  v29 = CROrderedSet.map<A>(_:)();
  _s8PaperKit12GraphElementVWOhTm_0(v28, type metadata accessor for GraphElement);
  result = (v42)(v26, v10);
  v49 = *(v29 + 16);
  if (!v49)
  {
    v32 = MEMORY[0x1E69E7CC0];
LABEL_17:

    swift_unknownObjectRelease();

    return v32;
  }

  v31 = 0;
  v32 = MEMORY[0x1E69E7CC0];
  v34 = v46;
  v33 = v47;
  while (v31 < *(v29 + 16))
  {
    v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v36 = *(v33 + 72);
    _s8PaperKit19GraphableExpressionVWOcTm_0(v29 + v35 + v36 * v31, v6, type metadata accessor for GraphableExpression);
    ObjectType = swift_getObjectType();
    if (CanvasCalculateDocument.expressionForAnyGraphable(_:)(v6, ObjectType, v34))
    {

      result = _s8PaperKit12GraphElementVWOhTm_0(v6, type metadata accessor for GraphableExpression);
    }

    else
    {
      _s8PaperKit5ColorVWObTm_1(v6, v48, type metadata accessor for GraphableExpression);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50 = v32;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v32 + 16) + 1, 1);
        v32 = v50;
      }

      v40 = *(v32 + 16);
      v39 = *(v32 + 24);
      if (v40 >= v39 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v39 > 1, v40 + 1, 1);
        v32 = v50;
      }

      *(v32 + 16) = v40 + 1;
      result = _s8PaperKit5ColorVWObTm_1(v48, v32 + v35 + v40 * v36, type metadata accessor for GraphableExpression);
      v34 = v46;
      v33 = v47;
    }

    if (v49 == ++v31)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t GraphCanvasElementView.restoreOrphanedExpressions()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit19GraphableExpressionVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v99 - v3;
  v119 = type metadata accessor for GraphableExpression(0);
  v121 = *(v119 - 8);
  v5 = MEMORY[0x1EEE9AC00](v119);
  v120 = v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v99 - v7;
  v9 = type metadata accessor for GraphElement(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit12GraphElementVGMd);
  v13 = *(v12 - 8);
  v114 = v12;
  v115 = v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v99 - v17;
  v19 = type metadata accessor for PKDrawing();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = v99 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = [v1 superview];
  if (!v23)
  {
    goto LABEL_31;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_31;
  }

  v106 = v1;
  v112 = v4;
  v107 = v18;
  v108 = v9;
  v25 = Strong;
  v26 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x440))();
  v28 = v27;
  ObjectType = swift_getObjectType();
  v30 = (*(v28 + 16))(ObjectType, v28);

  if (!v30)
  {

    goto LABEL_31;
  }

  v109 = v25;
  v31 = [v30 drawing];

  static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();
  PKDrawing._bridgeToObjectiveC()(v32);
  v34 = v33;
  v35 = [v33 uuid];

  (*(v20 + 8))(v22, v19);
  v124[1] = &unk_1F4FC4E80;
  v36 = swift_dynamicCastObjCProtocolConditional();
  if (!v36 || (v37 = v36, swift_getObjectType(), type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSObject), !swift_dynamicCastMetatype()))
  {

LABEL_29:
    swift_unknownObjectRelease();
LABEL_31:
    if (one-time initialization token for mathLogger != -1)
    {
LABEL_41:
      swift_once();
    }

    v83 = type metadata accessor for Logger();
    __swift_project_value_buffer(v83, mathLogger);
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&dword_1D38C4000, v84, v85, "updateGraphView unable to update.", v86, 2u);
      MEMORY[0x1DA6D0660](v86, -1, -1);
    }

    return 0;
  }

  v38 = v109;
  v39 = MEMORY[0x1E69E7D40];
  v40 = (*((*MEMORY[0x1E69E7D40] & *v109) + 0xA10))();
  if (!v40)
  {

    goto LABEL_29;
  }

  v42 = v40;
  v103 = v35;
  v43 = v37;
  v102 = v42;
  v44 = v106;
  v113 = specialized static CalculateDocumentController.controllerForDrawingUUID(_:document:observer:)(v43, v42, v41, v106, &protocol witness table for GraphCanvasElementView, specialized CalculateDocumentController.addObserverIfNecessary(_:));
  v105 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v124[0] = v105;
  v45 = *((*v39 & *v44) + 0x3F0);
  swift_beginAccess();
  v46 = v115;
  v47 = v115 + 16;
  v104 = *(v115 + 16);
  v48 = v107;
  v49 = v114;
  v104(v107, &v44[v45], v114);
  Capsule.root.getter();
  v50 = *(v46 + 8);
  v50(v48, v49);
  v100 = v45;
  v99[1] = v47;
  v51 = (v104)(v16, &v44[v45], v49);
  MEMORY[0x1EEE9AC00](v51);
  v99[-2] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMd);
  v52 = CROrderedSet.map<A>(_:)();
  v99[0] = 0;
  _s8PaperKit12GraphElementVWOhTm_0(v11, type metadata accessor for GraphElement);
  v115 = v46 + 8;
  v101 = v50;
  v50(v16, v49);
  v118 = *(v52 + 16);
  if (!v118)
  {
LABEL_35:

    if (*(v105 + 16))
    {
      MEMORY[0x1EEE9AC00](v88);
      v99[-2] = v124;
      v89 = v106;
      v90 = v100;
      swift_beginAccess();
      v91 = v114;
      Capsule.callAsFunction<A>(_:)();
      swift_endAccess();
      v92 = (v89 + v90);
      v93 = v107;
      v104(v107, v92, v91);
      v94 = v109;
      LOBYTE(v122) = 4;
      v95 = MEMORY[0x1E69E7D40];
      v96 = *((*MEMORY[0x1E69E7D40] & *v109) + 0x7D8);
      v97 = lazy protocol witness table accessor for type GraphableExpressionsState and conformance GraphableExpressionsState(&lazy protocol witness table cache variable for type GraphElement and conformance GraphElement, type metadata accessor for GraphElement);
      v96(v93, &v122, v108, v97);
      LOBYTE(v122) = 4;
      (*((*v95 & *v94) + 0x7B0))(&v122);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v101(v93, v91);
    }

    else
    {
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
    }

    v98 = *(v124[0] + 16);

    return v98 != 0;
  }

  v53 = 0;
  v54 = v112;
  v55 = &v113[OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_document];
  v56 = *(v121 + 80);
  v116 = v52;
  v117 = v52 + ((v56 + 32) & ~v56);
  v110 = &v113[OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_document];
  v111 = (v121 + 48);
  v57 = v119;
  while (1)
  {
    if (v53 >= *(v52 + 16))
    {
      __break(1u);
      goto LABEL_41;
    }

    _s8PaperKit19GraphableExpressionVWOcTm_0(v117 + *(v121 + 72) * v53, v8, type metadata accessor for GraphableExpression);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
    CRRegister.wrappedValue.getter();
    v59 = v122;
    v58 = v123;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v60 = *(v55 + 1);
      v61 = swift_getObjectType();
      v62 = CanvasCalculateDocument.expressionForAnyGraphable(_:)(v8, v61, v60);
      swift_unknownObjectRelease();
      if (v62)
      {

        _s8PaperKit12GraphElementVWOhTm_0(v8, type metadata accessor for GraphableExpression);
        v52 = v116;
        goto LABEL_11;
      }
    }

    CalculateDocumentController.findMatchingGraphableForOrphanedGraphable(_:)(v8, v54);
    if ((*v111)(v54, 1, v57) != 1)
    {
      break;
    }

    _s8PaperKit12GraphElementVWOhTm_0(v8, type metadata accessor for GraphableExpression);

    outlined destroy of StocksKitCurrencyCache.Provider?(v54, &_s8PaperKit19GraphableExpressionVSgMd);
LABEL_10:
    v52 = v116;
    v55 = v110;
LABEL_11:
    if (v118 == ++v53)
    {
      goto LABEL_35;
    }
  }

  _s8PaperKit5ColorVWObTm_1(v54, v120, type metadata accessor for GraphableExpression);
  CRRegister.wrappedValue.getter();
  v64 = v122;
  v63 = v123;
  v65 = v124[0];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v122 = v65;
  v67 = specialized __RawDictionaryStorage.find<A>(_:)(v59, v58);
  v69 = v65[2];
  v70 = (v68 & 1) == 0;
  v71 = __OFADD__(v69, v70);
  v72 = v69 + v70;
  if (!v71)
  {
    v73 = v68;
    if (v65[3] >= v72)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v78 = v67;
        specialized _NativeDictionary.copy()();
        v67 = v78;
        if (v73)
        {
          goto LABEL_23;
        }

        goto LABEL_25;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v72, isUniquelyReferenced_nonNull_native);
      v67 = specialized __RawDictionaryStorage.find<A>(_:)(v59, v58);
      if ((v73 & 1) != (v74 & 1))
      {
        goto LABEL_44;
      }
    }

    if (v73)
    {
LABEL_23:
      v75 = v67;

      v76 = v122;
      v77 = (v122[7] + 16 * v75);
      *v77 = v64;
      v77[1] = v63;

      _s8PaperKit12GraphElementVWOhTm_0(v120, type metadata accessor for GraphableExpression);
      _s8PaperKit12GraphElementVWOhTm_0(v8, type metadata accessor for GraphableExpression);
LABEL_27:
      v105 = v76;
      v124[0] = v76;
      v54 = v112;
      v57 = v119;
      goto LABEL_10;
    }

LABEL_25:
    v76 = v122;
    v122[(v67 >> 6) + 8] |= 1 << v67;
    v79 = (v76[6] + 16 * v67);
    *v79 = v59;
    v79[1] = v58;
    v80 = (v76[7] + 16 * v67);
    *v80 = v64;
    v80[1] = v63;
    _s8PaperKit12GraphElementVWOhTm_0(v120, type metadata accessor for GraphableExpression);
    _s8PaperKit12GraphElementVWOhTm_0(v8, type metadata accessor for GraphableExpression);
    v81 = v76[2];
    v71 = __OFADD__(v81, 1);
    v82 = v81 + 1;
    if (v71)
    {
      goto LABEL_43;
    }

    v76[2] = v82;
    goto LABEL_27;
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t closure #1 in GraphCanvasElementView.restoreOrphanedExpressions()(uint64_t a1, uint64_t *a2)
{
  v64 = type metadata accessor for GraphableExpression(0);
  v4 = MEMORY[0x1EEE9AC00](v64);
  v46 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v55 = v43 - v6;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit19GraphableExpressionVGMd);
  v59 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v8 = v43 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit19GraphableExpressionVGSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v58 = v43 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMd);
  v57 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v43 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA3RefVy8PaperKit19GraphableExpressionVG_GMd);
  v43[0] = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v43 - v15;
  swift_getKeyPath();
  Capsule.Ref.subscript.getter();
  v17 = v49;

  CROrderedSet.makeIterator()();
  v18 = v11;
  v19 = v58;
  (*(v57 + 8))(v13, v18);
  v56 = v16;
  v57 = v14;
  CROrderedSet.Iterator.next()();
  v20 = v59;
  v53 = *(v59 + 48);
  v54 = v59 + 48;
  if (v53(v19, 1, v17) != 1)
  {
    v23 = *(v20 + 32);
    v59 = v20 + 32;
    v51 = (v20 + 8);
    v52 = v23;
    *&v21 = 136380675;
    v44 = v21;
    v45 = a2;
    v50 = a1;
    v23(v8, v19, v17);
    while (1)
    {
      lazy protocol witness table accessor for type GraphableExpressionsState and conformance GraphableExpressionsState(&lazy protocol witness table cache variable for type GraphableExpression and conformance GraphableExpression, type metadata accessor for GraphableExpression);
      v25 = v55;
      Capsule.Ref.subscript.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
      CRRegister.wrappedValue.getter();
      _s8PaperKit12GraphElementVWOhTm_0(v25, type metadata accessor for GraphableExpression);
      v26 = *a2;
      if (*(*a2 + 16))
      {
        v27 = specialized __RawDictionaryStorage.find<A>(_:)(v62, v63);
        v29 = v28;

        if (v29)
        {
          v30 = (*(v26 + 56) + 16 * v27);
          v31 = *v30;
          v47 = v30[1];
          v48 = v31;

          v32 = v46;
          Capsule.Ref.subscript.getter();
          CRRegister.wrappedValue.getter();
          _s8PaperKit12GraphElementVWOhTm_0(v32, type metadata accessor for GraphableExpression);
          v33 = v62;
          v34 = v63;
          if (one-time initialization token for mathLogger != -1)
          {
            swift_once();
          }

          v35 = type metadata accessor for Logger();
          __swift_project_value_buffer(v35, mathLogger);

          v36 = Logger.logObject.getter();
          v37 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v36, v37))
          {
            v38 = swift_slowAlloc();
            v39 = swift_slowAlloc();
            v62 = v39;
            *v38 = v44;
            v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v62);

            *(v38 + 4) = v40;
            _os_log_impl(&dword_1D38C4000, v36, v37, "Restored orphaned expression: %{private}s", v38, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v39);
            v41 = v39;
            a2 = v45;
            MEMORY[0x1DA6D0660](v41, -1, -1);
            MEMORY[0x1DA6D0660](v38, -1, -1);
          }

          else
          {
          }

          v42 = Capsule.Ref.subscript.modify();
          v60 = v48;
          v61 = v47;
          CRRegister.wrappedValue.setter();
          v42(&v62, 0);
          v17 = v49;
          (*v51)(v8, v49);
        }

        else
        {
          v17 = v49;
          (*v51)(v8, v49);
        }
      }

      else
      {
        (*v51)(v8, v17);
      }

      v24 = v58;
      CROrderedSet.Iterator.next()();
      if (v53(v24, 1, v17) == 1)
      {
        break;
      }

      v52(v8, v24, v17);
    }
  }

  return (*(v43[0] + 8))(v56, v57);
}

Swift::Void __swiftcall GraphCanvasElementView.updateGraphView()()
{
  v1 = v0;
  v367 = type metadata accessor for CalculateGraphView();
  v366 = *(v367 - 8);
  v2 = MEMORY[0x1EEE9AC00](v367);
  v364 = &v347 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v365 = &v347 - v4;
  v387 = type metadata accessor for DispatchTime();
  v5 = *(v387 - 8);
  v6 = MEMORY[0x1EEE9AC00](v387);
  v8 = &v347 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v369 = &v347 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v394 = &v347 - v11;
  v393 = type metadata accessor for Color(0);
  v12 = *(v393 - 8);
  MEMORY[0x1EEE9AC00](v393);
  v386 = (&v347 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v381 = type metadata accessor for CalculateExpression.Base();
  v370 = *(v381 - 8);
  MEMORY[0x1EEE9AC00](v381);
  v380 = &v347 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v383 = &v347 - v16;
  v17 = type metadata accessor for DispatchWorkItemFlags();
  v385 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v378 = &v347 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v384 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v377 = &v347 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v373 = type metadata accessor for GraphElement(0);
  MEMORY[0x1EEE9AC00](v373);
  v382 = &v347 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for UUID();
  v397 = *(v22 - 8);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v396 = &v347 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v392 = &v347 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v391 = &v347 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v379 = &v347 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v371 = &v347 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v388 = &v347 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v412 = &v347 - v35;
  v414 = type metadata accessor for GraphableExpression(0);
  v395 = *(v414 - 1);
  v36 = MEMORY[0x1EEE9AC00](v414);
  v398 = &v347 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v400 = &v347 - v38;
  v402 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit19GraphableExpressionVGMd);
  v406 = *(v402 - 8);
  MEMORY[0x1EEE9AC00](v402);
  v416 = &v347 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit19GraphableExpressionVGSgMd);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v401 = &v347 - v41;
  v389 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMd);
  v399 = *(v389 - 1);
  MEMORY[0x1EEE9AC00](v389);
  v375 = (&v347 - v42);
  v410 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit12GraphElementVGMd);
  v415 = *(v410 - 1);
  v43 = MEMORY[0x1EEE9AC00](v410);
  v368 = &v347 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x1EEE9AC00](v43);
  v372 = &v347 - v46;
  MEMORY[0x1EEE9AC00](v45);
  v409 = &v347 - v47;
  v408 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA3RefVy8PaperKit19GraphableExpressionVG_GMd);
  v374 = *(v408 - 1);
  MEMORY[0x1EEE9AC00](v408);
  v407 = &v347 - v48;
  v49 = type metadata accessor for PKDrawing();
  v50 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v52 = &v347 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = [v1 superview];
  if (!v53)
  {
    goto LABEL_33;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_33;
  }

  v358 = v8;
  v359 = v19;
  v356 = v5;
  v357 = v17;
  v55 = Strong;
  v56 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x440))();
  v58 = v57;
  ObjectType = swift_getObjectType();
  v60 = (*(v58 + 16))(ObjectType, v58);

  if (!v60)
  {

    goto LABEL_33;
  }

  v360 = v55;
  v61 = [v60 drawing];

  static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();
  PKDrawing._bridgeToObjectiveC()(v62);
  v64 = v63;
  v65 = [v63 uuid];

  (*(v50 + 8))(v52, v49);
  v425 = &unk_1F4FC4E80;
  v66 = swift_dynamicCastObjCProtocolConditional();
  if (!v66 || (v67 = v66, swift_getObjectType(), type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSObject), !swift_dynamicCastMetatype()))
  {

LABEL_31:
    swift_unknownObjectRelease();
LABEL_33:
    if (one-time initialization token for mathLogger != -1)
    {
      swift_once();
    }

    v118 = type metadata accessor for Logger();
    __swift_project_value_buffer(v118, mathLogger);
    v119 = Logger.logObject.getter();
    v120 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v119, v120))
    {
      v121 = swift_slowAlloc();
      *v121 = 0;
      _os_log_impl(&dword_1D38C4000, v119, v120, "updateGraphView unable to update.", v121, 2u);
      MEMORY[0x1DA6D0660](v121, -1, -1);
    }

    return;
  }

  v68 = v360;
  v69 = MEMORY[0x1E69E7D40];
  v70 = (*((*MEMORY[0x1E69E7D40] & *v360) + 0xA10))();
  if (!v70)
  {

    goto LABEL_31;
  }

  *&v351 = v12;
  v390 = v22;
  v354 = v65;
  v353 = v70;
  v355 = specialized static CalculateDocumentController.controllerForDrawingUUID(_:document:observer:)(v67, v70, v71, v1, &protocol witness table for GraphCanvasElementView, specialized CalculateDocumentController.addObserverIfNecessary(_:));
  v424 = MEMORY[0x1E69E7CC0];
  v411 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v72 = *((*v69 & *v1) + 0x3F0);
  swift_beginAccess();
  v73 = v415;
  v74 = *(v415 + 16);
  v405 = v72;
  v75 = v409;
  v76 = v410;
  v404 = v415 + 16;
  v403 = v74;
  v74(v409, v1 + v72, v410);
  swift_getKeyPath();
  v77 = v375;
  Capsule.subscript.getter();

  v78 = *(v73 + 8);
  v415 = v73 + 8;
  v376 = v78;
  v78(v75, v76);
  v79 = v389;
  CROrderedSet.makeIterator()();
  (*(v399 + 8))(v77, v79);
  v80 = v401;
  CROrderedSet.Iterator.next()();
  v81 = v406;
  v82 = *(v406 + 48);
  v83 = v402;
  v375 = (v406 + 48);
  v363 = v82;
  v84 = (v82)(v80, 1, v402);
  v413 = v1;
  if (v84 != 1)
  {
    v123 = *(v81 + 32);
    v122 = v81 + 32;
    v362 = v123;
    v361 = (v122 - 24);
    v406 = v122;
    (v123)(v416, v80, v83);
    while (1)
    {
      v127 = v409;
      v128 = v410;
      v403(v409, v1 + v405, v410);
      v399 = lazy protocol witness table accessor for type GraphableExpressionsState and conformance GraphableExpressionsState(&lazy protocol witness table cache variable for type GraphableExpression and conformance GraphableExpression, type metadata accessor for GraphableExpression);
      v129 = v400;
      Capsule.subscript.getter();
      v130 = v376;
      v376(v127, v128);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
      CRRegister.wrappedValue.getter();
      _s8PaperKit12GraphElementVWOhTm_0(v129, type metadata accessor for GraphableExpression);
      v132 = aBlock;
      v131 = v419;
      v403(v127, &v413[v405], v128);
      Capsule.subscript.getter();
      v133 = v127;
      v134 = v132;
      v130(v133, v128);
      CRRegister.wrappedValue.getter();
      _s8PaperKit12GraphElementVWOhTm_0(v129, type metadata accessor for GraphableExpression);
      v135 = aBlock;
      v136 = v419;
      v137 = v411;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v137;
      v90 = specialized __RawDictionaryStorage.find<A>(_:)(v134, v131);
      v140 = *(v137 + 16);
      v141 = (v139 & 1) == 0;
      v142 = v140 + v141;
      if (__OFADD__(v140, v141))
      {
        break;
      }

      v143 = v139;
      if (*(v137 + 24) >= v142)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized _NativeDictionary.copy()();
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v142, isUniquelyReferenced_nonNull_native);
        v144 = specialized __RawDictionaryStorage.find<A>(_:)(v134, v131);
        if ((v143 & 1) != (v145 & 1))
        {
          goto LABEL_208;
        }

        v90 = v144;
      }

      v146 = v402;
      if (v143)
      {

        v411 = aBlock;
        v124 = (*(aBlock + 7) + 16 * v90);
        *v124 = v135;
        v124[1] = v136;

        (*v361)(v416, v146);
      }

      else
      {
        v147 = aBlock;
        *&aBlock[8 * (v90 >> 6) + 64] |= 1 << v90;
        v148 = (*(v147 + 6) + 16 * v90);
        *v148 = v134;
        v148[1] = v131;
        v149 = (*(v147 + 7) + 16 * v90);
        *v149 = v135;
        v149[1] = v136;
        (*v361)(v416, v146);
        v150 = *(v147 + 2);
        v103 = __OFADD__(v150, 1);
        v151 = v150 + 1;
        if (v103)
        {
          goto LABEL_54;
        }

        v411 = v147;
        *(v147 + 2) = v151;
      }

      v125 = v401;
      CROrderedSet.Iterator.next()();
      v126 = (v363)(v125, 1, v146);
      v1 = v413;
      if (v126 == 1)
      {
        goto LABEL_8;
      }

      (v362)(v416, v125, v146);
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

LABEL_8:
  (*(v374 + 8))(v407, v408);
  v85 = direct field offset for GraphCanvasElementView.expressionIdentifierToId;
  swift_beginAccess();
  v406 = v85;
  *(v1 + v85) = MEMORY[0x1E69E7CC8];

  v86 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_11CalculateUI0E15GraphExpressionCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v87 = *(v1 + direct field offset for GraphCanvasElementView.graphViewController);
  v416 = v86;
  v363 = direct field offset for GraphCanvasElementView.graphViewController;
  if (v87)
  {
    v88 = *(v87 + OBJC_IVAR____TtC8PaperKitP33_34A094740B6BACFE09E8AB9B5463AD5F32GraphCanvasElementViewController_calculateGraph);
    if (v88)
    {

      v401 = v88;
      v89 = dispatch thunk of CalculateGraph.graphExpressions.getter();
      v90 = v89;
      if (!(v89 >> 62))
      {
        v91 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v91)
        {
LABEL_12:
          v92 = 0;
          v93 = v90 & 0xC000000000000001;
          v402 = v90 & 0xFFFFFFFFFFFFFF8;
          v407 = (v397 + 16);
          v408 = (v397 + 8);
          while (1)
          {
            if (v93)
            {
              v94 = MEMORY[0x1DA6CE0C0](v92, v90);
              v95 = v92 + 1;
              if (__OFADD__(v92, 1))
              {
                goto LABEL_55;
              }
            }

            else
            {
              if (v92 >= *(v402 + 16))
              {
                goto LABEL_58;
              }

              v94 = *(v90 + 8 * v92 + 32);

              v95 = v92 + 1;
              if (__OFADD__(v92, 1))
              {
                goto LABEL_55;
              }
            }

            CalculateGraphExpression.expression.getter();
            v96 = v412;
            CalculateExpression.id.getter();

            v97 = v416;
            v98 = swift_isUniquelyReferenced_nonNull_native();
            aBlock = v97;
            v99 = specialized __RawDictionaryStorage.find<A>(_:)(v96);
            v101 = *(v97 + 16);
            v102 = (v100 & 1) == 0;
            v103 = __OFADD__(v101, v102);
            v104 = v101 + v102;
            if (v103)
            {
              goto LABEL_56;
            }

            v105 = v100;
            if (*(v97 + 24) >= v104)
            {
              if ((v98 & 1) == 0)
              {
                v117 = v99;
                specialized _NativeDictionary.copy()();
                v99 = v117;
              }
            }

            else
            {
              specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v104, v98);
              v99 = specialized __RawDictionaryStorage.find<A>(_:)(v412);
              if ((v105 & 1) != (v106 & 1))
              {
                goto LABEL_209;
              }
            }

            v107 = v390;
            v108 = aBlock;
            v416 = aBlock;
            if (v105)
            {
              *(*(aBlock + 7) + 8 * v99) = v94;

              (*v408)(v412, v107);
            }

            else
            {
              v109 = v93;
              v110 = v90;
              v90 = v91;
              *&aBlock[8 * (v99 >> 6) + 64] |= 1 << v99;
              v111 = v397;
              v112 = v99;
              v113 = v412;
              (*(v397 + 16))(*(v108 + 48) + *(v397 + 72) * v99, v412, v107);
              *(*(v416 + 7) + 8 * v112) = v94;
              v114 = v416;

              (*(v111 + 8))(v113, v107);
              v115 = *(v114 + 2);
              v103 = __OFADD__(v115, 1);
              v116 = v115 + 1;
              if (v103)
              {
                goto LABEL_57;
              }

              *(v114 + 2) = v116;
              v91 = v90;
              v90 = v110;
              v93 = v109;
            }

            ++v92;
            if (v95 == v91)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_59:
      v91 = __CocoaSet.count.getter();
      if (v91)
      {
        goto LABEL_12;
      }

LABEL_60:

      v1 = v413;
    }
  }

  v152 = v405;
  v153 = v409;
  v154 = v410;
  v155 = v403;
  v403(v409, v1 + v405, v410);
  v156 = v382;
  Capsule.root.getter();
  v157 = v376;
  v376(v153, v154);
  v158 = v372;
  v159 = v155(v372, v1 + v152, v154);
  MEMORY[0x1EEE9AC00](v159);
  *(&v347 - 2) = v158;
  v160 = CROrderedSet.map<A>(_:)();
  _s8PaperKit12GraphElementVWOhTm_0(v156, type metadata accessor for GraphElement);
  v157(v158, v154);
  v409 = *(v160 + 16);
  if (!v409)
  {

    v274 = v363;
    v273 = v413;
    v275 = *&v363[v413];
    v280 = MEMORY[0x1E69E7CC0];
    if (v275)
    {
      v276 = 0;
      v278 = v387;
      v279 = v358;
LABEL_173:
      v282 = static GraphCanvasElementView.isInsertingGraph;
      if ((v276 & 1) != 0 || !static GraphCanvasElementView.isInsertingGraph)
      {
        if (v276)
        {
          goto LABEL_194;
        }

        v283 = OBJC_IVAR____TtC8PaperKitP33_34A094740B6BACFE09E8AB9B5463AD5F32GraphCanvasElementViewController_graphView;
      }

      else
      {
        v283 = OBJC_IVAR____TtC8PaperKitP33_34A094740B6BACFE09E8AB9B5463AD5F32GraphCanvasElementViewController_graphView;
        if (*&v275[OBJC_IVAR____TtC8PaperKitP33_34A094740B6BACFE09E8AB9B5463AD5F32GraphCanvasElementViewController_graphView])
        {
          v282 = 0;
        }
      }

      if (*&v275[v283])
      {
        if (*&v275[OBJC_IVAR____TtC8PaperKitP33_34A094740B6BACFE09E8AB9B5463AD5F32GraphCanvasElementViewController_calculateGraph])
        {

          dispatch thunk of CalculateGraph.graphExpressions.setter();

          v284 = &unk_1D4058000;
          if (v282)
          {
            goto LABEL_200;
          }

LABEL_197:

          type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for OS_dispatch_queue);
          v329 = static OS_dispatch_queue.main.getter();
          v330 = swift_allocObject();
          *(v330 + 16) = v273;
          v422 = partial apply for closure #5 in GraphCanvasElementView.updateGraphView();
          v423 = v330;
          aBlock = MEMORY[0x1E69E9820];
          v419 = v284[399];
          v420 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
          v421 = &block_descriptor_194;
          v331 = v273;
          v332 = _Block_copy(&aBlock);
          v333 = v331;

          v334 = v377;
          static DispatchQoS.unspecified.getter();
          aBlock = MEMORY[0x1E69E7CC0];
          lazy protocol witness table accessor for type GraphableExpressionsState and conformance GraphableExpressionsState(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
          lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
          v335 = v378;
          v336 = v357;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          MEMORY[0x1DA6CD890](0, v334, v335, v332);
          _Block_release(v332);

          (*(v385 + 8))(v335, v336);
          (*(v384 + 8))(v334, v359);
LABEL_201:
          [objc_opt_self() cancelPreviousPerformRequestsWithTarget:v331 selector:sel_updateCachedImage object:0];
          [v331 performSelector:sel_updateCachedImage withObject:0 afterDelay:1.0];
          v345 = v355;
          v346 = CalculateDocumentController.updateGraphableVariables()();
          GraphCanvasElementView.cachedGraphableExpressionsState.getter(v346);
          GraphableExpressionsState.update()();

          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          return;
        }

        goto LABEL_198;
      }

      v300 = v410;
      v301 = v368;
      (v403)();
      v302 = v275;
      v303 = GraphCanvasElementView.graphViewFrame.getter();
      v305 = v304;
      v307 = v306;
      v309 = v308;
      type metadata accessor for CalculateGraph();
      v310 = v382;
      v311 = v300;
      Capsule.root.getter();

      v389 = v280;
      CalculateGraph.init(canvasElement:expressions:animate:delayAddingExpressions:)(v310, v280, 1, v282);
      *&v302[OBJC_IVAR____TtC8PaperKitP33_34A094740B6BACFE09E8AB9B5463AD5F32GraphCanvasElementViewController_calculateGraph] = v312;

      dispatch thunk of CalculateGraph.isSelected.setter();

      v313 = v365;
      CalculateGraphView.init(graph:)();
      v314 = objc_allocWithZone(type metadata accessor for PKGraphHostingViewController(0));
      v315 = v366;
      v316 = v367;
      (*(v366 + 16))(v364, v313, v367);
      v317 = UIHostingController.init(rootView:)();
      (*(v315 + 8))(v313, v316);
      v318 = [v317 view];
      if (v318)
      {
        v319 = v318;
        [v318 setFrame_];
        v320 = *&v302[OBJC_IVAR____TtC8PaperKitP33_34A094740B6BACFE09E8AB9B5463AD5F32GraphCanvasElementViewController_hostingController];
        *&v302[OBJC_IVAR____TtC8PaperKitP33_34A094740B6BACFE09E8AB9B5463AD5F32GraphCanvasElementViewController_hostingController] = v317;
        v321 = v317;

        [v319 setTranslatesAutoresizingMaskIntoConstraints_];
        [v302 addChildViewController_];
        v322 = [v302 view];
        if (!v322)
        {
LABEL_207:
          __break(1u);
LABEL_208:
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
LABEL_209:
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return;
        }

        v323 = v322;
        [v322 addSubview_];

        [v321 didMoveToParentViewController_];

        v376(v368, v410);
        v324 = *&v302[OBJC_IVAR____TtC8PaperKitP33_34A094740B6BACFE09E8AB9B5463AD5F32GraphCanvasElementViewController_graphView];
        *&v302[OBJC_IVAR____TtC8PaperKitP33_34A094740B6BACFE09E8AB9B5463AD5F32GraphCanvasElementViewController_graphView] = v319;
      }

      else
      {

        v376(v301, v311);
      }

      v274 = v363;
      v273 = v413;
      v280 = v389;
      v278 = v387;
      v279 = v358;
    }

    else
    {
      v278 = v387;
      v279 = v358;
LABEL_189:
      v282 = static GraphCanvasElementView.isInsertingGraph;
    }

LABEL_194:
    GraphCanvasElementView.layoutGraphView()();
    v325 = *&v274[v273];
    if (v325)
    {
      v326 = *(v325 + OBJC_IVAR____TtC8PaperKitP33_34A094740B6BACFE09E8AB9B5463AD5F32GraphCanvasElementViewController_calculateGraph);
      v284 = &unk_1D4058000;
      if (v326)
      {

        v327 = dispatch thunk of CalculateGraph.isSelected.setter();
        MEMORY[0x1EEE9AC00](v327);
        *(&v347 - 2) = v273;
        *(&v347 - 1) = v326;
        v328 = withObservationTracking<A>(_:onChange:)();
        MEMORY[0x1EEE9AC00](v328);
        *(&v347 - 2) = v273;
        *(&v347 - 1) = v326;
        withObservationTracking<A>(_:onChange:)();

        if ((v282 & 1) == 0)
        {
          goto LABEL_197;
        }

LABEL_200:
        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for OS_dispatch_queue);
        v414 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        v337 = v369;
        + infix(_:_:)();
        v415 = *(v356 + 8);
        (v415)(v279, v278);
        v338 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v339 = swift_allocObject();
        *(v339 + 16) = v338;
        *(v339 + 24) = v280;
        v422 = partial apply for specialized closure #4 in GraphCanvasElementView.updateGraphView();
        v423 = v339;
        aBlock = MEMORY[0x1E69E9820];
        v419 = v284[399];
        v420 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
        v421 = &block_descriptor_203_0;
        v331 = v273;
        v340 = _Block_copy(&aBlock);

        v341 = v377;
        static DispatchQoS.unspecified.getter();
        aBlock = MEMORY[0x1E69E7CC0];
        lazy protocol witness table accessor for type GraphableExpressionsState and conformance GraphableExpressionsState(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
        v342 = v378;
        v343 = v357;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v344 = v414;
        MEMORY[0x1DA6CD840](v337, v341, v342, v340);
        _Block_release(v340);

        (*(v385 + 8))(v342, v343);
        (*(v384 + 8))(v341, v359);
        (v415)(v337, v387);
        goto LABEL_201;
      }

LABEL_199:
      if (!v282)
      {
        goto LABEL_197;
      }

      goto LABEL_200;
    }

LABEL_198:
    v284 = &unk_1D4058000;
    goto LABEL_199;
  }

  LODWORD(v373) = 0;
  v161 = 0;
  v162 = &v355[OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_document];
  v400 = (v160 + ((*(v395 + 80) + 32) & ~*(v395 + 80)));
  v348 = &v420;
  v350 = (v385 + 8);
  v349 = (v384 + 8);
  v362 = (v397 + 48);
  v401 = (v397 + 32);
  v374 = v397 + 16;
  v399 = v397 + 8;
  v361 = *MEMORY[0x1E6992250];
  v352 = *MEMORY[0x1E6992100];
  v370 += 13;
  v375 = (v351 + 48);
  v372 = (v397 + 40);
  *(&v163 + 1) = 2;
  v351 = xmmword_1D4058CF0;
  *&v163 = 136380931;
  v347 = v163;
  v389 = MEMORY[0x1E69E7CC0];
  v164 = v398;
  v407 = &v355[OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_document];
  v408 = v160;
  do
  {
    if (v161 >= *(v160 + 16))
    {
      goto LABEL_204;
    }

    v168 = v161 + 1;
    v169 = *(v395 + 72);
    _s8PaperKit19GraphableExpressionVWOcTm_0(&v400[v169 * v161], v164, type metadata accessor for GraphableExpression);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
    CRRegister.wrappedValue.getter();
    v170 = v419;
    v412 = aBlock;
    if (!swift_unknownObjectWeakLoadStrong() || (v171 = *(v162 + 1), v172 = swift_getObjectType(), v173 = CanvasCalculateDocument.expressionForAnyGraphable(_:)(v164, v172, v171), swift_unknownObjectRelease(), !v173))
    {
      CRRegister.wrappedValue.getter();
      v183 = aBlock;
      v182 = v419;

      v184 = HIBYTE(v182) & 0xF;
      if ((v182 & 0x2000000000000000) == 0)
      {
        v184 = v183 & 0xFFFFFFFFFFFFLL;
      }

      if (v184)
      {
        _s8PaperKit12GraphElementVWOhTm_0(v164, type metadata accessor for GraphableExpression);

        v185 = v408;
        if (v168 != v409)
        {
          v186 = v164;
          v187 = &v400[v169 * v168];
          while (1)
          {
            v188 = v407;
            if (v168 >= v185[2])
            {
              break;
            }

            _s8PaperKit19GraphableExpressionVWOcTm_0(v187, v186, type metadata accessor for GraphableExpression);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
            CRRegister.wrappedValue.getter();
            v170 = v419;
            v412 = aBlock;
            if (swift_unknownObjectWeakLoadStrong())
            {
              v189 = *(v188 + 1);
              v190 = swift_getObjectType();
              v173 = CanvasCalculateDocument.expressionForAnyGraphable(_:)(v186, v190, v189);
              swift_unknownObjectRelease();
              if (v173)
              {
                v402 = v168 + 1;
                LODWORD(v373) = 1;
                goto LABEL_69;
              }
            }

            CRRegister.wrappedValue.getter();
            v192 = aBlock;
            v191 = v419;

            v193 = HIBYTE(v191) & 0xF;
            if ((v191 & 0x2000000000000000) == 0)
            {
              v193 = v192 & 0xFFFFFFFFFFFFLL;
            }

            if (!v193)
            {
              v402 = v168 + 1;
              goto LABEL_89;
            }

            ++v168;
            _s8PaperKit12GraphElementVWOhTm_0(v186, type metadata accessor for GraphableExpression);

            v187 += v169;
            v185 = v408;
            if (v409 == v168)
            {
              goto LABEL_164;
            }
          }

LABEL_204:
          __break(1u);
LABEL_205:
          __break(1u);
LABEL_206:
          __break(1u);
          goto LABEL_207;
        }

LABEL_164:

        v273 = v413;
        v274 = v363;
        v275 = *&v363[v413];
        v276 = 1;
        if (!v275)
        {
          v278 = v387;
          v279 = v358;
          v280 = v389;
          goto LABEL_172;
        }

        v277 = 1;
        v278 = v387;
        v279 = v358;
        goto LABEL_166;
      }

      v402 = v168;
LABEL_89:
      CRRegister.wrappedValue.getter();
      v194 = v383;
      UUID.init(uuidString:)();

      v195 = v390;
      if ((*v362)(v194, 1, v390) == 1)
      {
        v389 = v170;
        outlined destroy of StocksKitCurrencyCache.Provider?(v194, &_s10Foundation4UUIDVSgMd);
        v196 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
        v197 = v388;
        UUID.init()();
        v198 = v399;
LABEL_98:
        CRRegister.wrappedValue.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo12CalculateKeya_yptGMd);
        inited = swift_initStackObject();
        *(inited + 16) = v351;
        v208 = v361;
        *(inited + 32) = v361;
        *(inited + 64) = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSNumber);
        *(inited + 40) = v196;
        v209 = v208;
        v210 = v196;
        _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo12CalculateKeya_ypTt0g5Tf4g_n(inited);
        swift_setDeallocating();
        outlined destroy of StocksKitCurrencyCache.Provider?(inited + 32, &_sSo12CalculateKeya_yptMd);
        (*v374)(v379, v197, v195);
        (*v370)(v380, v352, v381);
        type metadata accessor for CalculateExpression();
        swift_allocObject();
        v173 = CalculateExpression.init(_:options:base:id:)();

        (*v198)(v197, v195);
        v170 = v389;
LABEL_99:

        LODWORD(v373) = 1;
        goto LABEL_105;
      }

      v199 = v371;
      (*v401)(v371, v194, v195);
      v200 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
      (*v374)(v388, v199, v195);
      if (*(v416 + 2) && (specialized __RawDictionaryStorage.find<A>(_:)(v199), (v201 & 1) != 0))
      {

        v173 = CalculateGraphExpression.expression.getter();

        v202 = CalculateExpression.expression.getter();
        v204 = v203;
        CRRegister.wrappedValue.getter();
        if (v202 == aBlock && v204 == v419)
        {

          v205 = *v399;
          v206 = v390;
          (*v399)(v371, v390);
LABEL_155:
          v263 = v388;

          v205(v263, v206);
          goto LABEL_99;
        }

        v262 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v198 = v399;
        v205 = *v399;
        (*v399)(v371, v390);
        if (v262)
        {
          v206 = v390;
          goto LABEL_155;
        }

        v389 = v170;

        v195 = v390;
      }

      else
      {
        v389 = v170;
        v198 = v399;
        v195 = v390;
        (*v399)(v199, v390);
      }

      v197 = v388;
      v196 = v200;
      goto LABEL_98;
    }

    v402 = v168;
LABEL_69:
    v174 = v411;
    v175 = *(v411 + 16);

    if (v175)
    {
      v176 = specialized __RawDictionaryStorage.find<A>(_:)(v412, v170);
      if (v177)
      {
        v178 = (*(v174 + 56) + 16 * v176);
        v180 = *v178;
        v179 = v178[1];

        if (v180 == CalculateExpression.expression.getter() && v179 == v181)
        {

LABEL_104:

          goto LABEL_105;
        }

        v211 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v211 & 1) == 0)
        {
          if (one-time initialization token for mathLogger != -1)
          {
            swift_once();
          }

          v223 = type metadata accessor for Logger();
          __swift_project_value_buffer(v223, mathLogger);

          v224 = Logger.logObject.getter();
          v225 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v224, v225))
          {
            v226 = swift_slowAlloc();
            v389 = swift_slowAlloc();
            aBlock = v389;
            *v226 = v347;
            v227 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v180, v179, &aBlock);

            *(v226 + 4) = v227;
            *(v226 + 12) = 2081;
            v228 = CalculateExpression.expression.getter();
            v230 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v228, v229, &aBlock);

            *(v226 + 14) = v230;
            _os_log_impl(&dword_1D38C4000, v224, v225, "Detected graphable expression change from: %{private}s, to: %{private}s", v226, 0x16u);
            v231 = v389;
            swift_arrayDestroy();
            MEMORY[0x1DA6D0660](v231, -1, -1);
            MEMORY[0x1DA6D0660](v226, -1, -1);
          }

          else
          {
          }

          type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for OS_dispatch_queue);
          v389 = static OS_dispatch_queue.main.getter();
          v264 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v265 = swift_allocObject();
          swift_weakInit();
          v266 = swift_allocObject();
          v266[2] = v264;
          v266[3] = v265;
          v266[4] = v412;
          v266[5] = v170;
          v422 = partial apply for closure #1 in GraphCanvasElementView.updateGraphView();
          v423 = v266;
          aBlock = MEMORY[0x1E69E9820];
          v419 = 1107296256;
          v420 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
          v421 = &block_descriptor_221;
          v267 = _Block_copy(&aBlock);

          v268 = v377;
          static DispatchQoS.unspecified.getter();
          aBlock = MEMORY[0x1E69E7CC0];
          lazy protocol witness table accessor for type GraphableExpressionsState and conformance GraphableExpressionsState(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
          lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
          v269 = v378;
          v270 = v357;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v271 = v389;
          MEMORY[0x1DA6CD890](0, v268, v269, v267);
          _Block_release(v267);

          (*v350)(v269, v270);
          (*v349)(v268, v359);
          goto LABEL_104;
        }
      }

      goto LABEL_104;
    }

LABEL_105:
    v421 = &type metadata for PencilAndPaperFeatureFlags;
    v422 = lazy protocol witness table accessor for type PencilAndPaperFeatureFlags and conformance PencilAndPaperFeatureFlags();
    LOBYTE(aBlock) = 7;
    v212 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_0(&aBlock);
    if ((v212 & 1) == 0)
    {
      goto LABEL_129;
    }

    CRRegister.wrappedValue.getter();
    v214 = aBlock;
    v213 = v419;

    v215 = HIBYTE(v213) & 0xF;
    if ((v213 & 0x2000000000000000) == 0)
    {
      v215 = v214 & 0xFFFFFFFFFFFFLL;
    }

    if (v215)
    {
      CRRegister.wrappedValue.getter();
      v216 = aBlock;
      v217 = v419;
    }

    else
    {
      v220 = *(CalculateExpression.graphableVariables.getter() + 16);

      if (!v220)
      {
        goto LABEL_125;
      }

      v221 = CalculateExpression.graphableVariables.getter();
      if (!v221[2])
      {

LABEL_125:
        CalculateExpression.graphableVariable.getter();
        goto LABEL_126;
      }

      v216 = v221[4];
      v217 = v221[5];
    }

    v218 = CalculateExpression.graphableVariable.getter();
    if (v217)
    {
      if (v219)
      {
        if (v216 == v218 && v219 == v217)
        {

          goto LABEL_129;
        }

        v222 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v222)
        {

          goto LABEL_129;
        }
      }

      goto LABEL_128;
    }

LABEL_126:
    if (!v219)
    {
      goto LABEL_129;
    }

LABEL_128:
    CalculateExpression.graphableVariable.setter();
LABEL_129:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
    v232 = v394;
    CRRegister.wrappedValue.getter();
    if ((*v375)(v232, 1, v393) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v232, &_s8PaperKit5ColorVSgMd);
      v233 = 0;
    }

    else
    {
      v234 = v386;
      _s8PaperKit5ColorVWObTm_1(v232, v386, type metadata accessor for Color);
      [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
      v233 = Color.init(uiColor:)();
      _s8PaperKit12GraphElementVWOhTm_0(v234, type metadata accessor for Color);
    }

    v235 = v413;
    v236 = v390;
    v237 = v391;
    v238 = v399;
    CalculateExpression.id.getter();
    if (!*(v416 + 2) || (specialized __RawDictionaryStorage.find<A>(_:)(v237), (v239 & 1) == 0))
    {
      (*v238)(v237, v236);
LABEL_140:
      type metadata accessor for CalculateGraphExpression();
      swift_allocObject();

      v243 = CalculateGraphExpression.init(_:color:)();

      MEMORY[0x1EEE9AC00](v244);
      *(&v347 - 4) = v235;
      *(&v347 - 3) = v243;
      *(&v347 - 2) = v412;
      *(&v347 - 1) = v170;
      withObservationTracking<A>(_:onChange:)();

      goto LABEL_141;
    }

    v240 = *v238;

    v240(v237, v236);
    v241 = CalculateGraphExpression.expression.getter();

    if (v241 != v173)
    {
      goto LABEL_140;
    }

    if (dispatch thunk of CalculateGraphExpression.color.getter())
    {
      if (v233)
      {

        v242 = static Color.== infix(_:_:)();

        if (v242)
        {
          goto LABEL_158;
        }
      }

      else
      {
      }
    }

    else if (!v233)
    {
      goto LABEL_158;
    }

    dispatch thunk of CalculateGraphExpression.color.setter();
LABEL_158:

LABEL_141:
    v245 = swift_retain_n();
    MEMORY[0x1DA6CD190](v245);
    if (*((v424 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v424 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v389 = v424;
    v246 = v392;
    CalculateExpression.id.getter();
    v247 = v406;
    swift_beginAccess();
    v248 = v235;
    v249 = *v401;
    (*v401)(v396, v246, v390);
    v250 = swift_isUniquelyReferenced_nonNull_native();
    v417 = *(v248 + v247);
    v251 = v417;
    *(v248 + v247) = 0x8000000000000000;
    v252 = specialized __RawDictionaryStorage.find<A>(_:)(v412, v170);
    v254 = v251[2];
    v255 = (v253 & 1) == 0;
    v103 = __OFADD__(v254, v255);
    v256 = v254 + v255;
    if (v103)
    {
      goto LABEL_205;
    }

    v257 = v253;
    if (v251[3] < v256)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v256, v250);
      v252 = specialized __RawDictionaryStorage.find<A>(_:)(v412, v170);
      if ((v257 & 1) != (v258 & 1))
      {
        goto LABEL_208;
      }

LABEL_148:
      if (v257)
      {
        goto LABEL_63;
      }

      goto LABEL_149;
    }

    if (v250)
    {
      goto LABEL_148;
    }

    v272 = v252;
    specialized _NativeDictionary.copy()();
    v252 = v272;
    if (v257)
    {
LABEL_63:
      v165 = v252;

      v166 = v417;
      (*(v397 + 40))(v417[7] + *(v397 + 72) * v165, v396, v390);
      goto LABEL_64;
    }

LABEL_149:
    v166 = v417;
    v417[(v252 >> 6) + 8] |= 1 << v252;
    v259 = (v166[6] + 16 * v252);
    *v259 = v412;
    v259[1] = v170;
    v249(v166[7] + *(v397 + 72) * v252, v396, v390);
    v260 = v166[2];
    v103 = __OFADD__(v260, 1);
    v261 = v260 + 1;
    if (v103)
    {
      goto LABEL_206;
    }

    v166[2] = v261;
LABEL_64:
    v167 = v413;
    v161 = v402;
    *&v413[v406] = v166;

    swift_endAccess();

    v164 = v398;
    _s8PaperKit12GraphElementVWOhTm_0(v398, type metadata accessor for GraphableExpression);
    v160 = v408;
    v162 = v407;
  }

  while (v161 != v409);

  v274 = v363;
  v275 = *&v363[v167];
  v273 = v167;
  if (!v275)
  {
    v278 = v387;
    v279 = v358;
    v280 = v389;
    if ((v373 & 1) == 0)
    {
      goto LABEL_189;
    }

    v275 = 0;
    v276 = 1;
    goto LABEL_172;
  }

  v278 = v387;
  v279 = v358;
  v277 = v373;
LABEL_166:
  v280 = v389;
  v276 = 0;
  if (*&v275[OBJC_IVAR____TtC8PaperKitP33_34A094740B6BACFE09E8AB9B5463AD5F32GraphCanvasElementViewController_graphView] || (v277 & 1) == 0)
  {
    goto LABEL_173;
  }

LABEL_172:
  v281 = direct field offset for GraphCanvasElementView.didDelayCreatingGraphView;
  if (v273[direct field offset for GraphCanvasElementView.didDelayCreatingGraphView])
  {
    goto LABEL_173;
  }

  v273[v281] = 1;
  v415 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v285 = static OS_dispatch_queue.main.getter();
  v286 = v356;
  v412 = v285;
  static DispatchTime.now()();
  v287 = v279;
  v288 = v369;
  + infix(_:_:)();
  v414 = *(v286 + 8);
  v356 = v286 + 8;
  (v414)(v287, v278);
  v289 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v422 = partial apply for closure #2 in GraphCanvasElementView.updateGraphView();
  v423 = v289;
  aBlock = MEMORY[0x1E69E9820];
  v419 = 1107296256;
  v420 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v421 = &block_descriptor_207;
  v290 = _Block_copy(&aBlock);

  v291 = v377;
  static DispatchQoS.unspecified.getter();
  aBlock = MEMORY[0x1E69E7CC0];
  v408 = lazy protocol witness table accessor for type GraphableExpressionsState and conformance GraphableExpressionsState(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  v407 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  v409 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  v292 = v378;
  v293 = v357;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v294 = v412;
  MEMORY[0x1DA6CD840](v288, v291, v292, v290);
  _Block_release(v290);

  v412 = *v350;
  (v412)(v292, v293);
  v410 = *v349;
  v410(v291, v359);
  v295 = v414;
  (v414)(v288, v278);
  v415 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v295(v287, v278);
  v296 = v295;
  v297 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v422 = partial apply for closure #3 in GraphCanvasElementView.updateGraphView();
  v423 = v297;
  aBlock = MEMORY[0x1E69E9820];
  v419 = 1107296256;
  v420 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v421 = &block_descriptor_211;
  v298 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock = MEMORY[0x1E69E7CC0];
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v299 = v415;
  MEMORY[0x1DA6CD840](v288, v291, v292, v298);
  swift_unknownObjectRelease();

  _Block_release(v298);
  swift_unknownObjectRelease();

  (v412)(v292, v293);
  v410(v291, v359);
  v296(v288, v278);
}
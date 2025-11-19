Swift::Void __swiftcall FormFillingView.populateTextFieldGroup(_:using:textContentType:)(Swift::OpaquePointer _, Swift::OpaquePointer using, __C::UITextContentType textContentType)
{
  if (!*(using._rawValue + 2))
  {
    goto LABEL_43;
  }

  rawValue = _._rawValue;
  _._rawValue = specialized __RawDictionaryStorage.find<A>(_:)(textContentType._rawValue);
  if ((v7 & 1) == 0)
  {
    goto LABEL_44;
  }

  v8 = (*(using._rawValue + 7) + 16 * _._rawValue);
  v9 = *v8;
  v5 = v8[1];

  v65 = v9;
  _._rawValue = String.count.getter();
  v3 = rawValue >> 62;
  if (rawValue >> 62)
  {
    goto LABEL_45;
  }

  v10 = *((rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v11 = ceil(_._rawValue / v10);
    if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v11 <= -9.22337204e18)
    {
      goto LABEL_47;
    }

    if (v11 >= 9.22337204e18)
    {
      goto LABEL_48;
    }

    if (v3)
    {
      _._rawValue = __CocoaSet.count.getter();
      v3 = _._rawValue;
      if (!_._rawValue)
      {
LABEL_37:

        return;
      }
    }

    else
    {
      v3 = *((rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v3)
      {
        goto LABEL_37;
      }
    }

    v12 = 0;
    v63 = rawValue & 0xC000000000000001;
    v60 = rawValue & 0xFFFFFFFFFFFFFF8;
    v61 = v3;
    v62 = rawValue;
    while (1)
    {
      if (v63)
      {
        _._rawValue = MEMORY[0x1DA6CE0C0](v12, rawValue);
      }

      else
      {
        if (v12 >= *(v60 + 16))
        {
          goto LABEL_42;
        }

        _._rawValue = *(rawValue + 8 * v12 + 32);
      }

      v13 = _._rawValue;
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      type metadata accessor for ShapeView();
      v15 = swift_dynamicCastClass();
      if (v15)
      {
        v16 = v15;
        v64 = v13;
        v17 = String.count.getter();
        if (v17 >= v11)
        {
          v18 = v11;
        }

        else
        {
          v18 = v17;
        }

        v19 = specialized Collection.prefix(_:)(v18);
        v21 = v20;
        rawValue = v22;
        v24 = v23;

        v25 = MEMORY[0x1DA6CCFA0](v19, v21, rawValue, v24);
        v27 = v26;

        v3 = String.count.getter();
        v28 = String.count.getter();
        v29 = __OFSUB__(v3, v28);
        _._rawValue = (v3 - v28);
        if (v29)
        {
          goto LABEL_41;
        }

        v30 = specialized BidirectionalCollection.suffix(_:)(_._rawValue, v65, v5);
        v32 = v31;
        v34 = v33;
        v36 = v35;

        v37 = MEMORY[0x1DA6CCFA0](v30, v32, v34, v36);
        v5 = v38;

        Strong = swift_unknownObjectWeakLoadStrong();
        ShapeView.addTextBox(canvas:)(Strong);

        v40 = direct field offset for ShapeView._textBoxView;
        v41 = *(v16 + direct field offset for ShapeView._textBoxView);
        v65 = v37;
        if (!v41)
        {
          goto LABEL_34;
        }

        v42 = v41;
        specialized TextBoxView.addTextViewIfNeeded(shouldBecomeFirstResponder:)(0);

        v43 = *(v16 + v40);
        if (!v43)
        {
          goto LABEL_34;
        }

        v44 = *&v43[OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_textView];
        if (!v44)
        {
          goto LABEL_34;
        }

        v45 = HIBYTE(v27) & 0xF;
        if ((v27 & 0x2000000000000000) == 0)
        {
          v45 = v25 & 0xFFFFFFFFFFFFLL;
        }

        if (v45)
        {
          v46 = v44;
          v47 = v43;
          v48 = MEMORY[0x1DA6CCED0](v25, v27);
          [v46 setText_];

          v49 = OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_analytics;
          v50 = *&v47[OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_analytics];
          *(v50 + 18) = 270;
          *(v50 + 64) = 3;

          v59 = v46;
          v51 = [v46 textContentType];
          if (!v51)
          {
            goto LABEL_50;
          }

          v52 = *(v50 + 32);
          *(v50 + 32) = v51;

          v53 = *&v47[v49];

          v54 = [v59 text];

          if (!v54)
          {
            goto LABEL_49;
          }

          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v55 = String.count.getter();

          *(v53 + 56) = v55;

          specialized TextBoxView.updateCanvasElement(shouldRegisterUndo:alwaysMerge:)(1, 0);
        }

        else
        {
LABEL_34:
        }

        v56 = *(v16 + v40);
        rawValue = v62;
        v13 = v64;
        if (v56)
        {
          v57 = v56;
          [v57 resignFirstResponder];
        }

        v3 = v61;
      }

      ++v12;
      if (v14 == v3)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    v58 = _._rawValue;
    v10 = __CocoaSet.count.getter();
    _._rawValue = v58;
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
}

void closure #1 in FormFillingView.editMenuInteraction(_:menuFor:suggestedActions:)()
{
  v0 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v50 = &v39 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v39 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v49 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v39 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v51 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v47 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v39 - v13;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v17 = swift_unknownObjectWeakLoadStrong();

    if (v17)
    {
      v18 = AnyCanvas.formFieldElements.getter();
      v19 = v18;
      if (v18 >> 62)
      {
        goto LABEL_25;
      }

      for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
      {
        v39 = v17;
        v46 = i;
        if (!i)
        {
          break;
        }

        v21 = 0;
        v54 = v19 & 0xFFFFFFFFFFFFFF8;
        v55 = v19 & 0xC000000000000001;
        v53 = (v6 + 48);
        v42 = (v6 + 32);
        v41 = (v6 + 16);
        v40 = (v6 + 8);
        v52 = (v51 + 32);
        v56 = MEMORY[0x1E69E7CC0];
        v6 = v46;
        v44 = v14;
        v45 = v4;
        v43 = v19;
        while (1)
        {
          if (v55)
          {
            v22 = MEMORY[0x1DA6CE0C0](v21, v19);
          }

          else
          {
            if (v21 >= *(v54 + 16))
            {
              goto LABEL_24;
            }

            v22 = *(v19 + 8 * v21 + 32);
          }

          v23 = v22;
          v24 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            break;
          }

          v17 = v22;
          (*((*MEMORY[0x1E69E7D40] & *v22) + 0xF0))();
          if ((*v53)(v4, 1, v5) == 1)
          {

            outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
          }

          else
          {
            v25 = v48;
            (*v42)(v48, v4, v5);
            v26 = v10;
            v27 = v49;
            (*v41)(v49, v25, v5);
            WeakTagged_10.tag.getter();
            v57 = v59;
            v58 = v60;
            MEMORY[0x1DA6CB7A0](v5);
            lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
            v28 = v47;
            WeakTagged_10.init(_:id:)();

            v29 = *v40;
            v30 = v27;
            v10 = v26;
            (*v40)(v30, v5);
            v31 = v25;
            v14 = v44;
            v29(v31, v5);
            v32 = *v52;
            (*v52)(v14, v28, v26);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v56 + 2) + 1, 1, v56);
            }

            v34 = *(v56 + 2);
            v33 = *(v56 + 3);
            v17 = v34 + 1;
            v4 = v45;
            v6 = v46;
            if (v34 >= v33 >> 1)
            {
              v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v33 > 1, v34 + 1, 1, v56);
            }

            v35 = v56;
            *(v56 + 2) = v17;
            v32(&v35[((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v34], v14, v10);
            v19 = v43;
          }

          ++v21;
          if (v24 == v6)
          {
            goto LABEL_21;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        ;
      }

      v56 = MEMORY[0x1E69E7CC0];
LABEL_21:

      v36 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence13WeakTagged_10Vy8PaperKit0d6CanvasA0VG_SayAJGTt0g5Tf4g_n(v56);

      v37 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence7WeakRefVyAD10CRRegisterVy8PaperKit12TaggedStrokeOGG_SayAMGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v38 = v39;
      AnyCanvas.selection.setter(v36, v37, 6, 0);
    }
  }
}

uint64_t FormFillingView.calculateCountTextFieldsUsed(with:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC8PaperKit15FormFillingView_analytics);

  v2 = AnyCanvas.formFieldElements.getter();
  v3 = v2;
  v23 = MEMORY[0x1E69E7CC0];
  if (v2 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v5 = 0;
    v21 = v1;
    v22 = v3 & 0xC000000000000001;
    v6 = v3 & 0xFFFFFFFFFFFFFF8;
    v7 = MEMORY[0x1E69E7D40];
    while (1)
    {
      if (v22)
      {
        v8 = MEMORY[0x1DA6CE0C0](v5, v3);
      }

      else
      {
        if (v5 >= *(v6 + 16))
        {
          goto LABEL_20;
        }

        v8 = *(v3 + 8 * v5 + 32);
      }

      v9 = v8;
      v1 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v10 = (*((*v7 & *v8) + 0x318))();
      if (v10)
      {
        v11 = v10;
        v12 = v3;
        v13 = v7;
        v14 = (*((*v7 & *v10) + 0xF0))();
        v16 = v15;

        v17 = HIBYTE(v16) & 0xF;
        if ((v16 & 0x2000000000000000) == 0)
        {
          v17 = v14 & 0xFFFFFFFFFFFFLL;
        }

        if (v17)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        v7 = v13;
        v3 = v12;
      }

      else
      {
      }

      ++v5;
      if (v1 == i)
      {
        v18 = v23;
        v1 = v21;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v18 = MEMORY[0x1E69E7CC0];
LABEL_23:

  if (v18 < 0 || (v18 & 0x4000000000000000) != 0)
  {
    v19 = __CocoaSet.count.getter();
  }

  else
  {
    v19 = *(v18 + 16);
  }

  *(v1 + 72) = v19;
}

uint64_t FormFillingView.calculateCountTextFieldsWithNoTextEntry(with:)()
{
  v1 = v0;
  v2 = AnyCanvas.formFieldElements.getter();
  v3 = v2;
  v40 = MEMORY[0x1E69E7CC0];
  if (v2 >> 62)
  {
    goto LABEL_51;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v5 = MEMORY[0x1E69E7CC0];
    v36 = v1;
    if (i)
    {
      v6 = 0;
      v37 = v3 & 0xC000000000000001;
      v7 = v3 & 0xFFFFFFFFFFFFFF8;
      v8 = MEMORY[0x1E69E7D40];
      while (1)
      {
        if (v37)
        {
          v9 = MEMORY[0x1DA6CE0C0](v6, v3);
        }

        else
        {
          if (v6 >= *(v7 + 16))
          {
            goto LABEL_48;
          }

          v9 = *(v3 + 8 * v6 + 32);
        }

        v1 = v9;
        v10 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        v11 = (*((*v8 & *v9) + 0x318))();
        if (v11)
        {
          v12 = v11;
          v13 = v3;
          v14 = v8;
          v15 = (*((*v8 & *v11) + 0xF0))();
          v17 = v16;

          v18 = HIBYTE(v17) & 0xF;
          if ((v17 & 0x2000000000000000) == 0)
          {
            v18 = v15 & 0xFFFFFFFFFFFFLL;
          }

          if (v18)
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          v8 = v14;
          v3 = v13;
        }

        else
        {
        }

        ++v6;
        if (v10 == i)
        {
          v19 = v40;
          v1 = v36;
          v5 = MEMORY[0x1E69E7CC0];
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v19 = MEMORY[0x1E69E7CC0];
LABEL_21:

    if (v19 < 0 || (v19 & 0x4000000000000000) != 0)
    {
      v20 = __CocoaSet.count.getter();
    }

    else
    {
      v20 = *(v19 + 16);
    }

    v21 = OBJC_IVAR____TtC8PaperKit15FormFillingView_widgets;
    swift_beginAccess();
    v22 = *(v1 + v21);
    v39 = v5;
    v23 = v22 >> 62 ? __CocoaSet.count.getter() : *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v23)
    {
      break;
    }

    v38 = v20;
    v1 = 0;
    v3 = v22 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x1DA6CE0C0](v1, v22);
      }

      else
      {
        if (v1 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_50;
        }

        v24 = *(v22 + 8 * v1 + 32);
      }

      v25 = v24;
      v26 = (v1 + 1);
      if (__OFADD__(v1, 1))
      {
        break;
      }

      v27 = [v24 widgetStringValue];
      if (!v27)
      {
        goto LABEL_28;
      }

      v28 = v27;
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      v32 = HIBYTE(v31) & 0xF;
      if ((v31 & 0x2000000000000000) == 0)
      {
        v32 = v29 & 0xFFFFFFFFFFFFLL;
      }

      if (v32)
      {
LABEL_28:
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v1;
      if (v26 == v23)
      {
        v20 = v38;
        v33 = v39;
        v1 = v36;
        goto LABEL_42;
      }
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    ;
  }

  v33 = MEMORY[0x1E69E7CC0];
LABEL_42:

  if (v33 < 0 || (v33 & 0x4000000000000000) != 0)
  {
    goto LABEL_55;
  }

  for (j = *(v33 + 16); ; j = __CocoaSet.count.getter())
  {

    if (!__OFADD__(v20, j))
    {
      break;
    }

    __break(1u);
LABEL_55:
    ;
  }

  *(*(v1 + OBJC_IVAR____TtC8PaperKit15FormFillingView_analytics) + 112) = v20 + j;
  return result;
}

id FormFillingView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FormFillingView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL closure #1 in Array<A>.sort(isLTR:)(id *a1, void **a2, char a3)
{
  v4 = *a1;
  v5 = *a2;
  [*a1 frame];
  MinY = CGRectGetMinY(v16);
  [v5 frame];
  v7 = CGRectGetMinY(v17);
  [v4 frame];
  if (MinY == v7)
  {
    MinX = CGRectGetMinX(*&v8);
    [v5 frame];
    v13 = CGRectGetMinX(v18);
    if (a3)
    {
      return MinX < v13;
    }

    else
    {
      return v13 < MinX;
    }
  }

  else
  {
    v15 = CGRectGetMinY(*&v8);
    [v5 frame];
    return v15 < CGRectGetMinY(v19);
  }
}

uint64_t key path getter for Shape.formContentType : Shape@<X0>(_BYTE *a1@<X8>)
{
  result = Shape.formContentType.getter(&v3);
  *a1 = v3;
  return result;
}

void specialized TextBoxView.updateCanvasElement(shouldRegisterUndo:alwaysMerge:)(int a1, char a2)
{
  v5 = type metadata accessor for MergeResult();
  v58 = *(v5 - 8);
  ObjectType = v5;
  MEMORY[0x1EEE9AC00](v5);
  v57 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v51 - v12;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd);
  v56 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v55 = &v51 - v14;
  v15 = direct field offset for TextBoxView.canvasElementView;
  v61 = v2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v54 = a1;
    if ((a2 & 1) == 0)
    {
      v53 = v15;
      v18 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0x3F0);
      swift_beginAccess();
      v19 = v60;
      v20 = v55;
      v21 = v56;
      v22 = (*(v56 + 16))(v55, &v17[v18], v60);
      v52 = &v51;
      MEMORY[0x1EEE9AC00](v22);
      *(&v51 - 4) = type metadata accessor for Shape(0);
      *(&v51 - 3) = _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type Shape and conformance Shape, type metadata accessor for Shape);
      *(&v51 - 2) = &protocol witness table for Shape;
      swift_getKeyPath();
      Capsule.subscript.getter();

      (*(v21 + 8))(v20, v19);
      v23 = *&v61[direct field offset for TextBoxView.textStorage];
      v24 = OBJC_IVAR____TtC8PaperKit13CRTextStorage_mergeableString;
      swift_beginAccess();
      (*(v8 + 16))(v10, v23 + v24, v7);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRAttributedString<TextAttributeScope> and conformance CRAttributedString<A>, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
      LOBYTE(v23) = dispatch thunk of static Equatable.== infix(_:_:)();
      v25 = *(v8 + 8);
      v25(v10, v7);
      Strong = (v25)(v13, v7);
      if (v23)
      {
LABEL_14:

        return;
      }

      v15 = v53;
    }

    MEMORY[0x1EEE9AC00](Strong);
    v26 = v61;
    *(&v51 - 2) = v61;
    v27 = MEMORY[0x1E69E7D40];
    v28 = *((*MEMORY[0x1E69E7D40] & *v17) + 0x3F0);
    swift_beginAccess();
    v52 = v28;
    v29 = v57;
    v30 = ObjectType;
    Capsule.callAsFunction<A>(_:)();
    (*(v58 + 8))(v29, v30);
    v31 = swift_endAccess();
    v32 = v26;
    if (((*((*v27 & *v17) + 0x1B8))(v31) & 1) == 0)
    {
      v33 = swift_unknownObjectWeakLoadStrong();
      if (v33)
      {
        v34 = v33;
        v35 = (*((*v27 & *v33) + 0x90))();

        if (v35)
        {
          v36 = (*((*v27 & *v35) + 0x440))();
          v38 = v37;

          ObjectType = swift_getObjectType();
          v53 = v15;
          v39 = v60;
          v41 = v55;
          v40 = v56;
          (*(v56 + 16))(v55, &v52[v17], v60);
          v42 = v27;
          v43 = *(v38 + 224);
          v44 = type metadata accessor for Shape(0);
          v45 = _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type Shape and conformance Shape, type metadata accessor for Shape);
          v43(v41, v54 & 1, v44, v45, &protocol witness table for Shape, ObjectType, v38);
          v32 = v61;
          v27 = v42;

          (*(v40 + 8))(v41, v39);
        }
      }
    }

    [v32 setNeedsLayout];
    v46 = swift_unknownObjectWeakLoadStrong();
    if (v46)
    {
      v47 = v46;
      v48 = (*((*v27 & *v46) + 0x90))();

      if (v48)
      {
        v49 = *&v48[OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView];
        v50 = v49;

        if (!v49)
        {
          __break(1u);
          return;
        }

        [v50 setNeedsLayout];
      }
    }

    [v32 setNeedsDisplay];
    goto LABEL_14;
  }
}

uint64_t specialized closure #1 in TextBoxView.updateCanvasElement(shouldRegisterUndo:alwaysMerge:)@<X0>(uint64_t a1@<X1>, void (*a2)(char *, uint64_t)@<X8>)
{
  v51 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v45 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v42 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v48 = &v42 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v42 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v42 - v16;
  v18 = *(a1 + direct field offset for TextBoxView.textStorage);
  v19 = OBJC_IVAR____TtC8PaperKit13CRTextStorage_mergeableString;
  swift_beginAccess();
  v20 = *(v8 + 16);
  v20(v17, v18 + v19, v7);
  v49 = Capsule.Ref.root.modify();
  v22 = v21;
  v43 = type metadata accessor for Shape(0);
  v23 = *(v43 + 52);
  CRAttributedString.merge(_:)();
  v51 = *(v8 + 8);
  v51(v17, v7);
  v47 = v22;
  v20(v14, v22 + v23, v7);
  v24 = CRAttributedString.attributedString.getter();
  v25 = [v24 string];

  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  if (v26)
  {
    v29 = 0;
  }

  else
  {
    v29 = v28 == 0xE000000000000000;
  }

  if (v29)
  {

    v51(v14, v7);
    return v49(v50, 0);
  }

  v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v31 = v14;
  v32 = v51;
  v51(v31, v7);
  if (v30)
  {
    return v49(v50, 0);
  }

  v33 = v47;
  v34 = v48;
  v20(v48, v47 + v23, v7);
  v35 = v46;
  v20(v46, v33 + v23, v7);
  v36 = CRAttributedString.attributedString.getter();
  v32(v35, v7);
  v37 = [v36 length];

  result = v37 - 1;
  if (!__OFSUB__(v37, 1))
  {
    v39 = v32;
    v40 = v44;
    CRAttributedString.attributes(at:effectiveRange:)();
    v39(v34, v7);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
    (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
    outlined init with copy of Date?(v40, v45, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
    CRRegister.wrappedValue.setter();
    outlined destroy of StocksKitCurrencyCache.Provider?(v40, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
    return v49(v50, 0);
  }

  __break(1u);
  return result;
}

void specialized TextBoxView.addTextViewIfNeeded(shouldBecomeFirstResponder:)(int a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v149 = (&v132 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
  *&v150 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v148 = &v132 - v6;
  v7 = type metadata accessor for CRKeyPath();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v132 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd);
  v151 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v132 - v14;
  v16 = OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_textView;
  if (*&v1[OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_textView] || (v142 = v13, (Strong = swift_unknownObjectWeakLoadStrong()) == 0))
  {
LABEL_2:
    if ((a1 & 1) == 0)
    {
      return;
    }

    goto LABEL_3;
  }

  if ((v1[direct field offset for TextBoxView.shouldAddTextboxView] & 1) == 0)
  {

    goto LABEL_2;
  }

  v139 = v5;
  v141 = Strong;
  v140 = a1;
  v132 = v10;
  v133 = v7;
  v145 = v15;
  v144 = v8;
  v146 = v11;
  v143 = v16;
  [v1 bounds];
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v61 = v1;
  v62 = *&v1[direct field offset for TextBoxView.textContainer];
  objc_allocWithZone(type metadata accessor for TextBoxTextView());
  v63 = v62;
  v64 = v61;
  v65 = TextBoxTextView.init(textBoxView:frame:textContainer:)(v64, v62, v54, v56, v58, v60);
  [v65 setDelegate_];
  v66 = v61;
  v67 = swift_unknownObjectWeakLoadStrong();
  if (v67)
  {
    v68 = v67;
    v69 = MEMORY[0x1E69E7D40];
    v70 = (*((*MEMORY[0x1E69E7D40] & *v67) + 0x90))();

    if (v70)
    {
      v71 = (*((*v69 & *v70) + 0x440))();

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit26ContainerCanvasElementViewCyAA0A12DocumentPageVGMd);
      v72 = swift_dynamicCastClass();
      if (v72)
      {
        v73 = *(v72 + *((*v69 & *v72) + 0x568));
        if (v73)
        {
          v74 = type metadata accessor for FormFillingView();
          v75 = v73;

          v76 = &protocol witness table for FormFillingView;
        }

        else
        {

          v75 = 0;
          v74 = 0;
          v76 = 0;
          v153 = 0uLL;
        }

        v152 = v75;
        *&v154 = v74;
        *(&v154 + 1) = v76;
        v80 = OBJC_IVAR____TtC8PaperKit15TextBoxTextView_formAutofillDelegate;
        swift_beginAccess();
        outlined assign with take of FormAutofillDelegate?(&v152, v65 + v80);
        swift_endAccess();
      }

      else
      {
      }
    }
  }

  v81 = swift_unknownObjectWeakLoadStrong();
  if (v81)
  {
    v82 = v81;
    v83 = MEMORY[0x1E69E7D40];
    v84 = (*((*MEMORY[0x1E69E7D40] & *v81) + 0x90))();

    if (v84)
    {
      v85 = (*((*v83 & *v84) + 0x440))();

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit26ContainerCanvasElementViewCyAA5ImageVGMd);
      v86 = swift_dynamicCastClass();
      if (v86)
      {
        v87 = *(v86 + *((*v83 & *v86) + 0x568));
        if (v87)
        {
          *&v154 = type metadata accessor for FormFillingView();
          *(&v154 + 1) = &protocol witness table for FormFillingView;
          v88 = v87;
        }

        else
        {

          v88 = 0;
          v153 = 0u;
          v154 = 0u;
        }

        v152 = v88;
        v89 = OBJC_IVAR____TtC8PaperKit15TextBoxTextView_formAutofillDelegate;
        swift_beginAccess();
        outlined assign with take of FormAutofillDelegate?(&v152, v65 + v89);
        swift_endAccess();
      }

      else
      {
      }
    }
  }

  v147 = v66;
  v90 = objc_opt_self();
  v91 = v65;
  v92 = [v90 clearColor];
  [v91 setBackgroundColor_];

  [v91 setTextContainerInset_];
  [v91 setAllowsEditingTextAttributes_];
  [v91 setScrollEnabled_];
  v93 = [*(v64 + direct field offset for TextBoxView.textStorage) string];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v94 = String.count.getter();

  [v91 setSelectedRange_];
  [v91 setClipsToBounds_];

  v95 = v141;
  v96 = *MEMORY[0x1E69E7D40] & *v141;
  v137 = v64;
  v136 = *(v96 + 1008);
  v97 = v136;
  swift_beginAccess();
  v98 = v151;
  v135 = *(v151 + 16);
  v99 = v145;
  v100 = v146;
  v101 = v135(v145, &v95[v97], v146);
  MEMORY[0x1EEE9AC00](v101);
  v134 = type metadata accessor for Shape(0);
  *(&v132 - 4) = v134;
  v102 = _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type Shape and conformance Shape, type metadata accessor for Shape);
  *(&v132 - 3) = v102;
  *(&v132 - 2) = &protocol witness table for Shape;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v103 = *(v98 + 8);
  v103(v99, v100);
  v155 = v152;
  v104 = specialized FormContentType.uiTextContentType.getter();
  v138 = v91;
  [v91 setTextContentType_];
  v105 = &v95[v136];
  v106 = v142;
  v107 = v135(v142, v105, v100);
  MEMORY[0x1EEE9AC00](v107);
  *(&v132 - 4) = v134;
  *(&v132 - 3) = v102;
  *(&v132 - 2) = &protocol witness table for Shape;
  swift_getKeyPath();
  v108 = v149;
  Capsule.subscript.getter();

  v103(v106, v100);
  v109 = v150;
  v110 = v139;
  if ((*(v150 + 48))(v108, 1, v139) == 1)
  {
    v111 = v138;

    outlined destroy of StocksKitCurrencyCache.Provider?(v108, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
    v112 = v147;
    v113 = v143;
    v114 = v137;
  }

  else
  {
    v115 = v148;
    (*(v109 + 32))(v148, v108, v110);
    v114 = v137;
    v116 = [v137 traitCollection];
    v117 = [v116 userInterfaceStyle];

    CRAttributedString.Attributes<>.nsAttributes(darkMode:)(v117 == 2);
    type metadata accessor for NSAttributedStringKey(0);
    _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v111 = v138;
    [v138 setTypingAttributes_];

    (*(v109 + 8))(v115, v110);
    v112 = v147;
    v113 = v143;
  }

  [v114 addSubview_];
  *(v114 + direct field offset for TextBoxView.hideText) = 1;
  [v114 setNeedsDisplay];
  v119 = *&v112[v113];
  *&v112[v113] = v111;
  v120 = v111;

  v45 = [v120 inputAssistantItem];
  v121 = MEMORY[0x1DA6CCED0](0x6D726F6674786574, 0xEA00000000007461);
  v122 = [objc_opt_self() systemImageNamed_];

  v123 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithImage:v122 style:0 target:v114 action:sel_textFormat_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v124 = swift_allocObject();
  v150 = xmmword_1D405CEB0;
  *(v124 + 16) = xmmword_1D405CEB0;
  v125 = swift_allocObject();
  *(v125 + 16) = v150;
  *(v125 + 32) = v123;
  v126 = objc_allocWithZone(MEMORY[0x1E69DC720]);
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIBarButtonItem);
  v18 = v123;
  v127 = Array._bridgeToObjectiveC()().super.isa;

  v128 = [v126 initWithBarButtonItems:v127 representativeItem:0];

  *(v124 + 32) = v128;
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIBarButtonItemGroup);
  v129 = Array._bridgeToObjectiveC()().super.isa;

  [v45 setTrailingBarButtonGroups_];

  [v114 contentScaleFactor];
  specialized TextBoxView._applyScaleToView(scale:view:)(v120, v130);
  if ((v140 & 1) == 0)
  {

    v49 = v141;
    goto LABEL_47;
  }

  v131 = [objc_opt_self() defaultCenter];
  [v131 addObserver:v114 selector:sel_firstResponderDidChange_ name:*MEMORY[0x1E69DEB18] object:0];

  v11 = v146;
  v1 = v147;
  v16 = v143;
  v8 = v144;
  v15 = v145;
  v7 = v133;
  v10 = v132;
LABEL_3:
  v17 = swift_unknownObjectWeakLoadStrong();
  if (!v17)
  {
    return;
  }

  v18 = v17;
  v145 = v15;
  v144 = v8;
  v19 = v151;
  v146 = v11;
  v147 = v1;
  v20 = swift_unknownObjectWeakLoadStrong();
  v21 = MEMORY[0x1E69E7D40];
  if (v20)
  {
    v22 = v20;
    v23 = (*((*MEMORY[0x1E69E7D40] & *v20) + 0x90))();

    if (v23)
    {
      v143 = v16;
      if (!*&v23[OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView])
      {
        __break(1u);
        return;
      }

      v25 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9Coherence13WeakTagged_10Vy8PaperKit0f6CanvasB0VGG_AF9CRKeyPathVs5NeverOTg503_s8g7Kit9Anyi14C08selectedD10b17IdsSay9Coherence9jk9VGvgAgE13eF19_10VyAA0ldF0VGXEfU_Tf1cn_n(v24);

      v26 = *((*v21 & *v18) + 0x3F0);
      swift_beginAccess();
      v27 = *(v19 + 16);
      *&v150 = v26;
      v28 = v18 + v26;
      v29 = v145;
      v30 = v146;
      v149 = v27;
      v27(v145, v28, v146);
      v31 = v10;
      Capsule.rootID.getter();
      v32 = *(v19 + 8);
      v151 = v19 + 8;
      v32(v29, v30);
      LOBYTE(v29) = specialized Sequence<>.contains(_:)(v31, v25);

      v33 = v31;
      v21 = MEMORY[0x1E69E7D40];
      (*(v144 + 8))(v33, v7);
      v16 = v143;
      if ((v29 & 1) == 0)
      {
        v34 = swift_unknownObjectWeakLoadStrong();
        if (v34)
        {
          v35 = v34;
          v36 = (*((*v21 & *v34) + 0x90))();

          if (v36)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9Coherence9CRKeyPathVGMd);
            v37 = swift_allocObject();
            *(v37 + 16) = xmmword_1D4058CF0;
            v38 = v145;
            v39 = v146;
            v149(v145, v18 + v150, v146);
            Capsule.rootID.getter();
            v40 = v39;
            v21 = MEMORY[0x1E69E7D40];
            v32(v38, v40);
            v41 = v37;
            v16 = v143;
            AnyCanvas.selectedCanvasElementIds.setter(v41);
          }
        }
      }
    }
  }

  v42 = v147;
  v43 = swift_unknownObjectWeakLoadStrong();
  if (v43)
  {
    v44 = v43;
    v45 = (*((*v21 & *v43) + 0x90))();

    if (v45)
    {
      v46 = [v45 window];
      if (v46)
      {
        v47 = v46;
        v48 = [objc_opt_self() activeToolPickerForWindow_];
        if (v48)
        {
          v49 = v48;
          v50 = [v48 _visibilityUpdatesEnabled];
          [v49 _setVisibilityUpdatesEnabled_];
          v51 = *&v42[v16];
          if (v51)
          {
            [v51 becomeFirstResponder];
          }

          [v49 _setVisibilityUpdatesEnabled_];

          goto LABEL_47;
        }
      }

      v77 = *&v42[v16];
      if (!v77)
      {
        v79 = v45;
LABEL_48:

        v18 = v79;
        goto LABEL_49;
      }

      v78 = v45;
      v49 = v77;
      [v49 becomeFirstResponder];
      v45 = v18;
      v18 = v78;
LABEL_47:
      v79 = v18;

      v18 = v45;
      goto LABEL_48;
    }
  }

LABEL_49:
}

void specialized TextBoxView._applyScaleToView(scale:view:)(void *a1, double a2)
{
  [a1 setContentScaleFactor_];
  v4 = [a1 subviews];
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIView);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    v6 = __CocoaSet.count.getter();
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v6; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1DA6CE0C0](i, v5);
    }

    else
    {
      v8 = *(v5 + 8 * i + 32);
    }

    v9 = v8;
    specialized TextBoxView._applyScaleToView(scale:view:)(a2);
  }

LABEL_10:
}

void specialized static FormFillingView.fontThatFits(frame:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v8 = [objc_allocWithZone(MEMORY[0x1E69DD168]) initWithFrame_];
  [v8 setTextContainerInset_];
  if (one-time initialization token for formFieldFont != -1)
  {
    swift_once();
  }

  v9 = static UIConstants.formFieldFont;
  [v8 setFont_];
  v10 = MEMORY[0x1DA6CCED0](32, 0xE100000000000000);
  [v8 setText_];

  v43.origin.x = a1;
  v43.origin.y = a2;
  v43.size.width = a3;
  v43.size.height = a4;
  Width = CGRectGetWidth(v43);
  [v8 sizeThatFits_];
  v13 = v12;
  v14 = v12 + v12;
  v44.origin.x = a1;
  v44.origin.y = a2;
  v44.size.width = a3;
  v44.size.height = a4;
  if (CGRectGetHeight(v44) >= v14)
  {
    v9;

    return;
  }

  v15 = [v8 font];
  v45.origin.x = a1;
  v45.origin.y = a2;
  v45.size.width = a3;
  v45.size.height = a4;
  Height = CGRectGetHeight(v45);
  v42 = Width;
  [v8 sizeThatFits_];
  v18 = v17;
  v46.origin.x = a1;
  v46.origin.y = a2;
  v46.size.width = a3;
  v46.size.height = a4;
  v19 = CGRectGetHeight(v46);
  if (Height >= v13)
  {
    if (v18 < v19)
    {
      v30 = v15;
      while (v30)
      {
        [v30 pointSize];
        v32 = v31;
        v48.origin.x = a1;
        v48.origin.y = a2;
        v48.size.width = a3;
        v48.size.height = a4;
        if (v32 > CGRectGetHeight(v48))
        {
          v15 = v30;
          goto LABEL_23;
        }

        v15 = [v8 font];

        v33 = [v8 font];
        if (!v33)
        {
          goto LABEL_29;
        }

        v34 = v33;
        v35 = [v8 font];
        if (!v35)
        {
          goto LABEL_32;
        }

        v36 = v35;
        [v35 pointSize];
        v38 = v37;

        v39 = [v34 fontWithSize_];
        [v8 setFont_];

        [v8 sizeThatFits_];
        v41 = v40;
        v49.origin.x = a1;
        v49.origin.y = a2;
        v49.size.width = a3;
        v49.size.height = a4;
        v30 = v15;
        if (v41 >= CGRectGetHeight(v49))
        {
          goto LABEL_23;
        }
      }

      goto LABEL_28;
    }

LABEL_23:
    [v8 setFont_];
  }

  else if (v19 < v18)
  {
    v20 = v15;
    while (v20)
    {
      [v20 pointSize];
      if (v21 <= 4.0)
      {
        goto LABEL_25;
      }

      v22 = [v8 font];
      if (!v22)
      {
        goto LABEL_30;
      }

      v23 = v22;
      v24 = [v8 font];
      if (!v24)
      {
        goto LABEL_31;
      }

      v25 = v24;
      [v24 pointSize];
      v27 = v26;

      v15 = [v23 fontWithSize_];
      [v8 setFont_];
      [v8 sizeThatFits_];
      v29 = v28;
      v47.origin.x = a1;
      v47.origin.y = a2;
      v47.size.width = a3;
      v47.size.height = a4;
      v20 = v15;
      if (CGRectGetHeight(v47) >= v29)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_24:
  if (v15)
  {
LABEL_25:

    return;
  }

LABEL_33:
  __break(1u);
}

uint64_t specialized static FormFillingView.createFormFieldView(canvas:frame:text:font:alignment:textContentType:maxCharacterCount:detectedFormField:startsNewAutofillContext:analytics_inputSource:analytics_documentType:)(void *a1, unint64_t a2, unint64_t a3, id a4, id a5, int a6, unsigned __int8 *a7, Swift::Int a8, CGFloat a9, CGFloat a10, CGFloat a11, CGFloat a12, unsigned __int8 a13, unsigned __int8 a14, unsigned __int8 a15, unsigned __int8 a16)
{
  LODWORD(isa) = a6;
  v243 = a3;
  v240 = a2;
  v236 = a1;
  v25 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v25 - 8);
  v235 = &v194 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd);
  v239 = *(v242 - 8);
  v27 = MEMORY[0x1EEE9AC00](v242);
  v237 = &v194 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = &v194 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v250 = &v194 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
  v233 = *(v33 - 8);
  v234 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v232 = &v194 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v230 = *(v35 - 8);
  v231 = v35;
  MEMORY[0x1EEE9AC00](v35);
  v229 = &v194 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v227 = *(v37 - 8);
  v228 = v37;
  MEMORY[0x1EEE9AC00](v37);
  v226 = &v194 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
  v223 = *(v39 - 8);
  v224 = v39;
  MEMORY[0x1EEE9AC00](v39);
  v222 = &v194 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v219 = *(v41 - 8);
  v220 = v41;
  MEMORY[0x1EEE9AC00](v41);
  v217 = &v194 - v42;
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6ShadowVSgMd);
  v43 = MEMORY[0x1EEE9AC00](v216);
  v215 = &v194 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v214 = &v194 - v45;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11StrokeStyleOSgMd);
  v46 = MEMORY[0x1EEE9AC00](v213);
  v212 = &v194 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v211 = &v194 - v48;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  v49 = MEMORY[0x1EEE9AC00](v210);
  v248 = &v194 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v247 = &v194 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  v53 = MEMORY[0x1EEE9AC00](v52 - 8);
  v218 = &v194 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v253 = &v194 - v55;
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  v56 = MEMORY[0x1EEE9AC00](v246);
  v208 = (&v194 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = MEMORY[0x1EEE9AC00](v56);
  v245 = &v194 - v59;
  v60 = MEMORY[0x1EEE9AC00](v58);
  v252 = &v194 - v61;
  MEMORY[0x1EEE9AC00](v60);
  v259 = (&v194 - v62);
  v256 = type metadata accessor for ShapeType(0);
  v63 = MEMORY[0x1EEE9AC00](v256);
  v209 = &v194 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = MEMORY[0x1EEE9AC00](v63);
  v241 = &v194 - v66;
  MEMORY[0x1EEE9AC00](v65);
  v257 = &v194 - v67;
  v244 = type metadata accessor for Shape(0);
  v68 = MEMORY[0x1EEE9AC00](v244);
  v225 = &v194 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = MEMORY[0x1EEE9AC00](v68);
  v72 = &v194 - v71;
  MEMORY[0x1EEE9AC00](v70);
  v249 = &v194 - v73;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v254 = *(v74 - 8);
  v255 = v74;
  v75 = MEMORY[0x1EEE9AC00](v74);
  v77 = &v194 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v75);
  v258 = &v194 - v78;
  v221 = *a7;
  v251 = v31;
  if ((a8 - 1) > 0x7FFFFFFFFFFFFFFDLL)
  {
    v96 = a4;
    v88 = *MEMORY[0x1E69DB648];
    v95 = 0.0;
  }

  else
  {
    v79 = a8;
    v238 = a5;
    LODWORD(v207) = isa;
    if (a4)
    {
      v80 = a4;
      [v80 pointSize];
      v82 = v81;
      v83 = MEMORY[0x1DA6CCED0](0x6F6C6E654DLL, 0xE500000000000000);
      a4 = [objc_opt_self() fontWithName:v83 size:v82];

      v84 = a4;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_So6UIFontCSgtGMd);
    inited = swift_initStackObject();
    v86 = MEMORY[0x1E69DB648];
    *(inited + 16) = xmmword_1D4058CF0;
    v87 = *v86;
    *(inited + 32) = v87;
    *(inited + 40) = a4;
    v88 = v87;
    v89 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_So6UIFontCSgTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of StocksKitCurrencyCache.Provider?(inited + 32, &_sSo21NSAttributedStringKeya_So6UIFontCSgtMd);
    v90._countAndFlagsBits = 32;
    v90._object = 0xE100000000000000;
    countAndFlagsBits = String.init(repeating:count:)(v90, v79)._countAndFlagsBits;
    v92 = MEMORY[0x1DA6CCED0](countAndFlagsBits);

    specialized _dictionaryUpCast<A, B, C, D>(_:)(v89);

    type metadata accessor for NSAttributedStringKey(0);
    _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v92 sizeWithAttributes_];
    v94 = v93;

    v95 = (a11 - v94) / v79;
    LOBYTE(isa) = v207;
    a5 = v238;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd);
  v97 = swift_initStackObject();
  *(v97 + 16) = xmmword_1D405FD70;
  *(v97 + 32) = v88;
  *(v97 + 64) = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIFont);
  v238 = a4;
  v98 = v88;
  if (!a4)
  {
    specialized static FormFillingView.fontThatFits(frame:)(a9, a10, a11, a12);
    a4 = v99;
  }

  *(v97 + 40) = a4;
  v100 = *MEMORY[0x1E69DB688];
  *(v97 + 72) = *MEMORY[0x1E69DB688];
  if (isa)
  {
    v101 = 0;
  }

  else
  {
    v101 = a5;
  }

  v102 = objc_allocWithZone(MEMORY[0x1E69DB7C8]);
  v103 = v100;
  v104 = [v102 init];
  [v104 setAlignment_];
  v105 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSMutableParagraphStyle);
  *(v97 + 80) = v104;
  v106 = *MEMORY[0x1E69DB660];
  *(v97 + 104) = v105;
  *(v97 + 112) = v106;
  *(v97 + 144) = MEMORY[0x1E69E7DE0];
  *(v97 + 120) = v95;
  v107 = v106;
  v108 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(v97);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSAttributedStringKeya_yptMd);
  swift_arrayDestroy();
  if (v243)
  {
    v109 = v240;
  }

  else
  {
    v109 = 0;
  }

  if (v243)
  {
    v110 = v243;
  }

  else
  {
    v110 = 0xE000000000000000;
  }

  v111 = objc_allocWithZone(MEMORY[0x1E696AAB0]);

  v112 = MEMORY[0x1DA6CCED0](v109, v110);

  type metadata accessor for NSAttributedStringKey(0);
  _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  v113 = Dictionary._bridgeToObjectiveC()().super.isa;
  [v111 initWithString:v112 attributes:v113];

  MEMORY[0x1EEE9AC00](v114);
  v115 = lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
  CRAttributedString.init(_:transformAttributes:)();
  swift_storeEnumTagMultiPayload();
  v116 = type metadata accessor for Color(0);
  v117 = *(v116 + 20);
  v118 = type metadata accessor for UnknownValueProperties();
  (*(*(v118 - 8) + 56))(v259 + v117, 1, 1, v118);
  if (one-time initialization token for extendedSRGBColorSpace != -1)
  {
    swift_once();
  }

  result = CGColorCreate(static Color.extendedSRGBColorSpace, dbl_1F4F51320);
  if (!result)
  {
    __break(1u);
    goto LABEL_30;
  }

  v120 = result;
  v207 = v115;
  v240 = v108;
  v195 = v77;
  CGColorRef.calculateMinimumHeadroom.getter();
  result = CGColorCreateWithContentHeadroom();
  if (!result)
  {
LABEL_30:
    __break(1u);
    return result;
  }

  v121 = result;
  v206 = a16;
  v205 = a15;

  *v259 = v121;
  v122 = *(v116 - 8);
  v123 = *(v122 + 56);
  v124 = v122 + 56;
  v123();
  (v123)(v252, 1, 1, v116);
  v198 = v124;
  v199 = v123;
  v125 = v253;
  v126 = v254;
  v127 = v255;
  (*(v254 + 16))(v253, v258, v255);
  (*(v126 + 56))(v125, 0, 1, v127);
  type metadata accessor for CGRect(0);
  v203 = v128;
  v202 = _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
  v260 = 0u;
  v261 = 0u;
  CRRegister.init(wrappedValue:)();
  v129 = v72;
  v130 = v244;
  *&v260 = 0;
  v243 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  CRRegister.init(_:)();
  v204 = v130[6];
  v131 = v245;
  (v123)(v245, 1, 1, v116);
  v132 = v116;
  v133 = v208;
  outlined init with copy of Date?(v131, v208, &_s8PaperKit5ColorVSgMd);
  v200 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v131, &_s8PaperKit5ColorVSgMd);
  v201 = v130[7];
  (v199)(v131, 1, 1, v132);
  outlined init with copy of Date?(v131, v133, &_s8PaperKit5ColorVSgMd);
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v131, &_s8PaperKit5ColorVSgMd);
  v199 = v130[8];
  *&v260 = 0x4014000000000000;
  CRRegister.init(wrappedValue:)();
  v198 = v130[9];
  v134 = v241;
  swift_storeEnumTagMultiPayload();
  _s8PaperKit9ShapeTypeOWOcTm_0(v134, v209, type metadata accessor for ShapeType);
  v196 = _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, type metadata accessor for ShapeType);
  CRRegister.init(wrappedValue:)();
  outlined destroy of ShapeType(v134, type metadata accessor for ShapeType);
  *&v260 = 0x3FF0000000000000;
  CRRegister.init(wrappedValue:)();
  *&v260 = 0;
  BYTE8(v260) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
  CRRegister.init(wrappedValue:)();
  *&v260 = 0;
  BYTE8(v260) = 0;
  CRRegister.init(wrappedValue:)();
  v194 = v130[13];
  CRAttributedString.init(_:)();
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
  v136 = *(v135 - 8);
  v137 = v247;
  v208 = *(v136 + 56);
  v209 = v135;
  v207 = v136 + 56;
  (v208)(v247, 1, 1);
  outlined init with copy of Date?(v137, v248, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v137, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  v138 = v129 + v130[15];
  *&v260 = 0;
  v139 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
  v210 = v138;
  v197 = v139;
  CRRegister.init(wrappedValue:)();
  *&v260 = 0;
  lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
  CRRegister.init(wrappedValue:)();
  v140 = type metadata accessor for StrokeStyle(0);
  v141 = v211;
  (*(*(v140 - 8) + 56))(v211, 1, 1, v140);
  outlined init with copy of Date?(v141, v212, &_s8PaperKit11StrokeStyleOSgMd);
  lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v141, &_s8PaperKit11StrokeStyleOSgMd);
  v142 = type metadata accessor for Shadow();
  v143 = v214;
  (*(*(v142 - 8) + 56))(v214, 1, 1, v142);
  outlined init with copy of Date?(v143, v215, &_s8PaperKit6ShadowVSgMd);
  lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v143, &_s8PaperKit6ShadowVSgMd);
  v261 = 0u;
  v262 = 0u;
  v260 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
  lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  UnknownProperties.init()();
  *&v260 = a9;
  *(&v260 + 1) = a10;
  *&v261 = a11;
  *(&v261 + 1) = a12;
  v144 = v217;
  CRRegister.init(_:)();
  (*(v219 + 40))(v129, v144, v220);
  _s8PaperKit9ShapeTypeOWOcTm_0(v257, v134, type metadata accessor for ShapeType);
  v145 = v222;
  CRRegister.init(_:)();
  (*(v223 + 40))(v129 + v198, v145, v224);
  *&v260 = 0x4014000000000000;
  v146 = v226;
  CRRegister.init(_:)();
  (*(v227 + 40))(v199 + v129, v146, v228);
  v147 = v245;
  outlined init with copy of Date?(v259, v245, &_s8PaperKit5ColorVSgMd);
  v148 = v229;
  CRRegister.init(_:)();
  v149 = v231;
  v150 = *(v230 + 40);
  v150(v129 + v201, v148, v231);
  outlined init with copy of Date?(v252, v147, &_s8PaperKit5ColorVSgMd);
  CRRegister.init(_:)();
  v150(v129 + v204, v148, v149);
  v151 = v254;
  v152 = v255;
  v153 = v218;
  outlined init with copy of Date?(v253, v218, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  if ((*(v151 + 48))(v153, 1, v152) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v153, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  }

  else
  {
    v154 = v195;
    (*(v151 + 32))(v195, v153, v152);
    (*(v151 + 40))(v129 + v194, v154, v152);
  }

  v155 = v240;
  LODWORD(v256) = a14;
  LODWORD(v246) = a13;
  *&v260 = 2;
  v156 = v232;
  CRRegister.init(_:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v253, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v252, &_s8PaperKit5ColorVSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v259, &_s8PaperKit5ColorVSgMd);
  outlined destroy of ShapeType(v257, type metadata accessor for ShapeType);
  (*(v233 + 40))(v210, v156, v234);
  v157 = v249;
  outlined init with take of Shape(v129, v249);
  v158 = v221;
  LOBYTE(v260) = v221;
  Shape.formContentType.setter(&v260);
  v159 = v247;
  CRAttributedString.Attributes<>.init(nsAttributes:darkMode:)(v155, 0, v247);
  (v208)(v159, 0, 1, v209);
  outlined init with copy of Date?(v159, v248, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
  CRRegister.wrappedValue.setter();
  outlined destroy of StocksKitCurrencyCache.Provider?(v159, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  _s8PaperKit9ShapeTypeOWOcTm_0(v157, v225, type metadata accessor for Shape);
  static CRKeyPath.unique.getter();
  _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type Shape and conformance Shape, type metadata accessor for Shape);
  v160 = v250;
  Capsule.init(_:id:)();
  v161 = v239;
  v162 = *(v239 + 16);
  v163 = v251;
  v164 = v242;
  v162(v251, v160, v242);
  v165 = objc_allocWithZone(type metadata accessor for ShapeView());
  *(v165 + direct field offset for ShapeView.$__lazy_storage_$_shapeLayer) = 0;
  *(v165 + direct field offset for ShapeView.$__lazy_storage_$_endLineEndLayer) = 0;
  *(v165 + direct field offset for ShapeView.$__lazy_storage_$_startLineEndLayer) = 0;
  *(v165 + direct field offset for ShapeView.$__lazy_storage_$_groupLayer) = 0;
  v166 = direct field offset for ShapeView.showsSignaturePopover;
  *(v165 + direct field offset for ShapeView.showsSignaturePopover) = 0;
  v167 = direct field offset for ShapeView.analytics_inputSource;
  *(v165 + direct field offset for ShapeView.analytics_inputSource) = 68;
  v168 = direct field offset for ShapeView.analytics_documentType;
  *(v165 + direct field offset for ShapeView.analytics_documentType) = 68;
  *(v165 + direct field offset for ShapeView._textBoxView) = 0;
  *(v165 + direct field offset for ShapeView.appearanceStreamView) = 0;
  *(v165 + v166) = v158 == 50;
  LOBYTE(v166) = v206;
  *(v165 + v167) = v205;
  *(v165 + v168) = v166;
  v169 = v237;
  v259 = v162;
  v162(v237, v163, v164);
  v170 = MEMORY[0x1E69E7D40];
  (*(v161 + 56))(v165 + *((*MEMORY[0x1E69E7D40] & *v165) + 0x3F8), 1, 1, v164);
  *(v165 + *((*v170 & *v165) + 0x400)) = 0;
  *(v165 + *((*v170 & *v165) + 0x408)) = 0;
  *(v165 + *((*v170 & *v165) + 0x410)) = 0;
  *(v165 + *((*v170 & *v165) + 0x418)) = 0;
  *(v165 + *((*v170 & *v165) + 0x420)) = 0;
  v162(v165 + *((*v170 & *v165) + 0x3F0), v169, v164);
  v171 = v236;
  v172 = v236;
  v173 = AnyCanvasElementView.init(frame:canvas:parentCanvasElement:)(v171, 0, 0.0, 0.0, 0.0, 0.0);
  specialized CanvasElementView.setupAccessibility()();
  (*((*v170 & *v173) + 0x520))();
  v174 = *(v161 + 8);
  v174(v169, v164);
  v175 = v173;
  specialized AppearanceStreamViewSupport.setupAppearanceStreamIfNeeded()();
  v176 = *((*v170 & *v175) + 0x3F0);
  swift_beginAccess();
  (v259)(v169, v175 + v176, v164);
  LOBYTE(v176) = specialized Capsule<>.isTextBox.getter();

  v259 = v174;
  v174(v169, v164);
  if ((v176 & 1) == 0)
  {
    [v175 setIsAccessibilityElement_];
    if (one-time initialization token for paperKitBundle != -1)
    {
      swift_once();
    }

    v263._object = 0x80000001D40850C0;
    v177._countAndFlagsBits = 0x4025206570616853;
    v178.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v178.value._object = 0xEB00000000656C62;
    v177._object = 0xE800000000000000;
    v179._countAndFlagsBits = 0;
    v179._object = 0xE000000000000000;
    v263._countAndFlagsBits = 0xD00000000000005FLL;
    v257 = NSLocalizedString(_:tableName:bundle:value:comment:)(v177, v178, paperKitBundle, v179, v263)._countAndFlagsBits;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v180 = swift_allocObject();
    *(v180 + 16) = xmmword_1D4058CF0;
    swift_getKeyPath();
    v181 = v241;
    Capsule.subscript.getter();

    ShapeType.any.getter(&v260);
    outlined destroy of ShapeType(v181, type metadata accessor for ShapeType);
    v182 = *(&v261 + 1);
    v183 = v262;
    __swift_project_boxed_opaque_existential_1(&v260, *(&v261 + 1));
    v184 = *(v183 + 48);
    v185 = v183;
    v164 = v242;
    v186 = v184(v182, v185);
    v188 = v187;
    *(v180 + 56) = MEMORY[0x1E69E6158];
    *(v180 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v180 + 32) = v186;
    *(v180 + 40) = v188;
    __swift_destroy_boxed_opaque_existential_0(&v260);
    v189 = static String.localizedStringWithFormat(_:_:)();
    v191 = v190;

    v192 = MEMORY[0x1DA6CCED0](v189, v191);

    [v175 setAccessibilityLabel_];
  }

  v193 = v259;
  (v259)(v251, v164);
  (v193)(v250, v164);
  outlined destroy of ShapeType(v249, type metadata accessor for Shape);
  (*(v254 + 8))(v258, v255);
  *(v175 + OBJC_IVAR____TtC8PaperKit20AnyCanvasElementView_isDetectedFormField) = v246 & 1;
  *(v175 + OBJC_IVAR____TtC8PaperKit20AnyCanvasElementView_startsNewAutofillContext) = v256 & 1;
  return v175;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *__src, unint64_t a3, char *a4, uint64_t a5, char a6)
{
  v6 = a4;
  v7 = a3;
  v8 = __src;
  v9 = __dst;
  v10 = __src - __dst;
  v11 = (__src - __dst) / 40;
  v12 = a3 - __src;
  v13 = (a3 - __src) / 40;
  if (v11 >= v13)
  {
    if (a4 != __src || &__src[40 * v13] <= a4)
    {
      memmove(a4, __src, 40 * v13);
    }

    v14 = &v6[40 * v13];
    if (v12 < 40 || v8 <= v9)
    {
LABEL_49:
      v42 = v8;
      goto LABEL_50;
    }

    while (1)
    {
      v42 = v8 - 40;
      v43 = (v14 - 40);
      v7 -= 40;
      while (1)
      {
        outlined init with copy of AnyHashable(v43, v81);
        outlined init with copy of AnyHashable((v8 - 40), v80);
        v46 = MEMORY[0x1E69E69B8];
        v79 = MEMORY[0x1E69E69B8];
        v78[0] = swift_allocObject();
        outlined init with copy of AnyHashable(v81, v78[0] + 16);
        v47 = FormFillingView.frameForFormElement(element:)(v78);
        v49 = v48;
        v51 = v50;
        v53 = v52;
        __swift_destroy_boxed_opaque_existential_0(v78);
        v79 = v46;
        v78[0] = swift_allocObject();
        outlined init with copy of AnyHashable(v80, v78[0] + 16);
        v54 = FormFillingView.frameForFormElement(element:)(v78);
        v56 = v55;
        v58 = v57;
        v60 = v59;
        __swift_destroy_boxed_opaque_existential_0(v78);
        recta = v47;
        v89.origin.x = v47;
        v61 = v49;
        v89.origin.y = v49;
        v62 = v51;
        v89.size.width = v51;
        v63 = v53;
        v89.size.height = v53;
        MinY = CGRectGetMinY(v89);
        v90.origin.x = v54;
        v90.origin.y = v56;
        v90.size.width = v58;
        v82 = v60;
        v90.size.height = v60;
        if (MinY == CGRectGetMinY(v90))
        {
          v91.origin.x = recta;
          v91.origin.y = v61;
          v91.size.width = v62;
          v91.size.height = v63;
          MinX = CGRectGetMinX(v91);
          v92.origin.x = v54;
          v92.origin.y = v56;
          v92.size.width = v58;
          v92.size.height = v82;
          v66 = CGRectGetMinX(v92);
          if ((a6 & 1) == 0)
          {
            v67 = v66 < MinX;
            goto LABEL_38;
          }
        }

        else
        {
          v93.origin.x = recta;
          v93.origin.y = v61;
          v93.size.width = v62;
          v93.size.height = v63;
          MinX = CGRectGetMinY(v93);
          v94.origin.x = v54;
          v94.origin.y = v56;
          v94.size.width = v58;
          v94.size.height = v82;
          v66 = CGRectGetMinY(v94);
        }

        v67 = MinX < v66;
LABEL_38:
        v68 = v67;
        outlined destroy of AnyHashable(v80);
        outlined destroy of AnyHashable(v81);
        if (v68)
        {
          break;
        }

        if (v7 + 40 != v43 + 40)
        {
          v69 = *v43;
          v70 = *(v43 + 16);
          *(v7 + 32) = *(v43 + 32);
          *v7 = v69;
          *(v7 + 16) = v70;
        }

        v44 = v43 - 40;
        v7 -= 40;
        v45 = v43 > v6;
        v43 -= 40;
        if (!v45)
        {
          v14 = (v44 + 40);
          goto LABEL_49;
        }
      }

      if ((v7 + 40) != v8)
      {
        v71 = *v42;
        v72 = *(v8 - 24);
        *(v7 + 32) = *(v8 - 1);
        *v7 = v71;
        *(v7 + 16) = v72;
      }

      v14 = (v43 + 40);
      if (v43 + 40 > v6)
      {
        v8 -= 40;
        if (v42 > v9)
        {
          continue;
        }
      }

      v14 = (v43 + 40);
      goto LABEL_50;
    }
  }

  if (a4 != __dst || &__dst[40 * v11] <= a4)
  {
    memmove(a4, __dst, 40 * v11);
  }

  v14 = &v6[40 * v11];
  if (v10 >= 40 && v8 < v7)
  {
    v15 = MEMORY[0x1E69E69B8];
    do
    {
      outlined init with copy of AnyHashable(v8, v81);
      outlined init with copy of AnyHashable(v6, v80);
      v79 = v15;
      v78[0] = swift_allocObject();
      outlined init with copy of AnyHashable(v81, v78[0] + 16);
      v16 = FormFillingView.frameForFormElement(element:)(v78);
      v18 = v17;
      v20 = v19;
      v22 = v21;
      __swift_destroy_boxed_opaque_existential_0(v78);
      v79 = v15;
      v78[0] = swift_allocObject();
      outlined init with copy of AnyHashable(v80, v78[0] + 16);
      v23 = FormFillingView.frameForFormElement(element:)(v78);
      v25 = v24;
      v27 = v26;
      v29 = v28;
      __swift_destroy_boxed_opaque_existential_0(v78);
      rect = v16;
      v83.origin.x = v16;
      v30 = v18;
      v83.origin.y = v18;
      v31 = v20;
      v83.size.width = v20;
      v32 = v22;
      v83.size.height = v22;
      v33 = CGRectGetMinY(v83);
      v84.origin.x = v23;
      v84.origin.y = v25;
      v84.size.width = v27;
      v82 = v29;
      v84.size.height = v29;
      if (v33 == CGRectGetMinY(v84))
      {
        v85.origin.x = rect;
        v85.origin.y = v30;
        v85.size.width = v31;
        v85.size.height = v32;
        v34 = CGRectGetMinX(v85);
        v86.origin.x = v23;
        v86.origin.y = v25;
        v86.size.width = v27;
        v86.size.height = v82;
        v35 = CGRectGetMinX(v86);
        if ((a6 & 1) == 0)
        {
          v36 = v35 < v34;
          goto LABEL_13;
        }
      }

      else
      {
        v87.origin.x = rect;
        v87.origin.y = v30;
        v87.size.width = v31;
        v87.size.height = v32;
        v34 = CGRectGetMinY(v87);
        v88.origin.x = v23;
        v88.origin.y = v25;
        v88.size.width = v27;
        v88.size.height = v82;
        v35 = CGRectGetMinY(v88);
      }

      v36 = v34 < v35;
LABEL_13:
      v37 = v36;
      outlined destroy of AnyHashable(v80);
      outlined destroy of AnyHashable(v81);
      if (!v37)
      {
        v38 = v6;
        v39 = v9 == v6;
        v6 += 40;
        if (v39)
        {
          goto LABEL_22;
        }

LABEL_21:
        v40 = *v38;
        v41 = *(v38 + 1);
        *(v9 + 4) = *(v38 + 4);
        *v9 = v40;
        *(v9 + 1) = v41;
        goto LABEL_22;
      }

      v38 = v8;
      v39 = v9 == v8;
      v8 += 40;
      if (!v39)
      {
        goto LABEL_21;
      }

LABEL_22:
      v9 += 40;
    }

    while (v6 < v14 && v8 < v7);
  }

  v42 = v9;
LABEL_50:
  v73 = (v14 - v6) / 40;
  if (v42 != v6 || v42 >= &v6[40 * v73])
  {
    memmove(v42, v6, 40 * v73);
  }

  return 1;
}

void specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(char **a1, char *a2, uint64_t *a3, void *a4, char a5)
{
  v6 = a1;
  v7 = *a1;
  v23 = a4;
  v24 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_14:
    v24 = specialized _ArrayBuffer._consumeAndCreateNew()(v24);
  }

  v19 = v6;
  *v6 = v24;
  v8 = v24 + 16;
  v9 = *(v24 + 2);
  if (v9 < 2)
  {
LABEL_9:

    *v19 = v24;
  }

  else
  {
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = &v24[16 * v9];
      v12 = *v11;
      v13 = v8;
      v14 = &v8[16 * v9];
      v6 = *(v14 + 1);
      __dst = (v10 + 40 * *v11);
      v15 = (v10 + 40 * *v14);
      v25 = v10 + 40 * v6;
      v16 = v23;
      specialized _merge<A>(low:mid:high:buffer:by:)(__dst, v15, v25, a2, v16, a5 & 1);

      if (v5)
      {
        *v19 = v24;

        return;
      }

      if (v6 < v12)
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      v17 = *v13;
      if (v9 - 2 >= *v13)
      {
        goto LABEL_12;
      }

      *v11 = v12;
      *(v11 + 1) = v6;
      v18 = v17 - v9;
      if (v17 < v9)
      {
        goto LABEL_13;
      }

      v8 = v13;
      v9 = v17 - 1;
      memmove(v14, v14 + 16, 16 * v18);
      *v13 = v9;
      if (v9 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v19 = v24;
    __break(1u);
  }
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5, char a6)
{
  v259 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 < 1)
  {
    v228 = a5;
LABEL_154:
    v229 = *a1;
    if (!*a1)
    {
      goto LABEL_185;
    }

    v230 = a5;
    specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(&v259, v229, a3, v230, a6 & 1);
    if (!v247)
    {

      goto LABEL_158;
    }

LABEL_157:
LABEL_158:

    return;
  }

  v231 = a4;
  v248 = a5;
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v9 = MEMORY[0x1E69E69B8];
  v10 = &off_1E845F000;
  while (1)
  {
    if (v7 + 1 >= v6)
    {
      v84 = v7 + 1;
      goto LABEL_53;
    }

    v11 = *a3;
    outlined init with copy of AnyHashable(*a3 + 40 * (v7 + 1), v258);
    outlined init with copy of AnyHashable(v11 + 40 * v7, v257);
    v241 = closure #1 in FormFillingView.allFormElements.getter(v258, v257, v248, a6 & 1);
    if (v247)
    {
      outlined destroy of AnyHashable(v257);
      outlined destroy of AnyHashable(v258);
      goto LABEL_157;
    }

    v244 = v6;
    outlined destroy of AnyHashable(v257);
    outlined destroy of AnyHashable(v258);
    v12 = v7 + 2;
    v233 = v7;
    v13 = 40 * v7;
    v14 = v11 + 40 * v7 + 80;
    do
    {
      if (v244 == v12)
      {
        v84 = v244;
        goto LABEL_45;
      }

      outlined init with copy of AnyHashable(v14, v258);
      outlined init with copy of AnyHashable(v14 - 40, v257);
      v256 = v9;
      v255[0] = swift_allocObject();
      outlined init with copy of AnyHashable(v258, v255[0] + 16);
      outlined init with copy of Any(v255, v254);
      type metadata accessor for CanvasElementPDFAnnotation();
      if (!swift_dynamicCast())
      {
        goto LABEL_22;
      }

      v19 = [v253 v10[105]];
      v20 = v10;
      if (!v19)
      {

LABEL_22:
        outlined init with copy of Any(v255, v254);
        type metadata accessor for AnyCanvasElementView();
        if (swift_dynamicCast())
        {
          [v253 frame];
          v38 = v37;
          v40 = v39;
          v42 = v41;
          v44 = v43;
        }

        else
        {
          v38 = 0.0;
          v40 = 0.0;
          v42 = 0.0;
          v44 = 0.0;
        }

        goto LABEL_27;
      }

      v21 = v19;
      v22 = [v253 v20 + 2040];
      if (v22)
      {
        v23 = v22;
        v24 = [v22 view];
        [v253 bounds];
        v29 = v25;
        v30 = v26;
        v31 = v27;
        v32 = v28;
        if (v24)
        {
          [v24 convertRect:v23 fromPage:{v25, v26, v27, v28}];
          v29 = v33;
          v30 = v34;
          v31 = v35;
          v32 = v36;

          v23 = v24;
        }
      }

      else
      {
        v29 = 0.0;
        v30 = 0.0;
        v31 = 0.0;
        v32 = 0.0;
      }

      v9 = MEMORY[0x1E69E69B8];
      v45 = [v21 view];
      [v248 convertRect:v45 fromView:{v29, v30, v31, v32}];
      v38 = v46;
      v40 = v47;
      v42 = v48;
      v44 = v49;

      v10 = &off_1E845F000;
LABEL_27:
      __swift_destroy_boxed_opaque_existential_0(v255);
      v256 = v9;
      v255[0] = swift_allocObject();
      outlined init with copy of AnyHashable(v257, v255[0] + 16);
      outlined init with copy of Any(v255, v254);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_34;
      }

      v50 = [v253 v10[105]];
      if (!v50)
      {

LABEL_34:
        outlined init with copy of Any(v255, v254);
        type metadata accessor for AnyCanvasElementView();
        if (swift_dynamicCast())
        {
          [v253 frame];
          rect = v67;
          v69 = v68;
          v71 = v70;
          v73 = v72;
        }

        else
        {
          rect = 0.0;
          v69 = 0.0;
          v71 = 0.0;
          v73 = 0.0;
        }

        goto LABEL_39;
      }

      v51 = v50;
      v52 = [v253 v10[105]];
      if (v52)
      {
        v53 = v52;
        v54 = [v52 view];
        [v253 bounds];
        v59 = v55;
        v60 = v56;
        v61 = v57;
        v62 = v58;
        if (v54)
        {
          [v54 convertRect:v53 fromPage:{v55, v56, v57, v58}];
          v59 = v63;
          v60 = v64;
          v61 = v65;
          v62 = v66;

          v53 = v54;
        }
      }

      else
      {
        v59 = 0.0;
        v60 = 0.0;
        v61 = 0.0;
        v62 = 0.0;
      }

      v74 = [v51 view];
      [v248 convertRect:v74 fromView:{v59, v60, v61, v62}];
      rect = v75;
      v69 = v76;
      v71 = v77;
      v73 = v78;

      v9 = MEMORY[0x1E69E69B8];
LABEL_39:
      __swift_destroy_boxed_opaque_existential_0(v255);
      v262.origin.x = v38;
      v262.origin.y = v40;
      v262.size.width = v42;
      v262.size.height = v44;
      v79 = v44;
      v80 = v42;
      v81 = v40;
      v82 = v38;
      MinY = CGRectGetMinY(v262);
      v263.origin.x = rect;
      v263.origin.y = v69;
      v263.size.width = v71;
      v263.size.height = v73;
      if (MinY != CGRectGetMinY(v263))
      {
        v260.origin.x = v82;
        v260.origin.y = v81;
        v260.size.width = v80;
        v260.size.height = v79;
        MinX = CGRectGetMinY(v260);
        v261.origin.x = rect;
        v261.origin.y = v69;
        v261.size.width = v71;
        v261.size.height = v73;
        v16 = CGRectGetMinY(v261);
LABEL_9:
        v17 = MinX < v16;
        goto LABEL_10;
      }

      v264.origin.x = v82;
      v264.origin.y = v81;
      v264.size.width = v80;
      v264.size.height = v79;
      MinX = CGRectGetMinX(v264);
      v265.origin.x = rect;
      v265.origin.y = v69;
      v265.size.width = v71;
      v265.size.height = v73;
      v16 = CGRectGetMinX(v265);
      if (a6)
      {
        goto LABEL_9;
      }

      v17 = v16 < MinX;
LABEL_10:
      v18 = v17;
      outlined destroy of AnyHashable(v257);
      outlined destroy of AnyHashable(v258);
      ++v12;
      v14 += 40;
    }

    while (v241 == v18);
    v84 = v12 - 1;
LABEL_45:
    v7 = v233;
    if (v241)
    {
      break;
    }

LABEL_53:
    v96 = a3[1];
    if (v84 >= v96)
    {
      goto LABEL_102;
    }

    if (__OFSUB__(v84, v7))
    {
      goto LABEL_177;
    }

    if (v84 - v7 >= v231)
    {
      goto LABEL_102;
    }

    if (__OFADD__(v7, v231))
    {
      goto LABEL_178;
    }

    if (v7 + v231 < v96)
    {
      v96 = v7 + v231;
    }

    if (v96 < v7)
    {
LABEL_179:
      __break(1u);
      goto LABEL_180;
    }

    if (v84 == v96)
    {
      goto LABEL_102;
    }

    v236 = v96;
    v242 = v8;
    v97 = *a3;
    v98 = *a3 + 40 * v84;
    v234 = v7;
    v99 = v7 - v84;
    while (2)
    {
      v245 = v84;
      v238 = v99;
      v239 = v98;
      do
      {
        outlined init with copy of AnyHashable(v98, v258);
        v100 = v98 - 40;
        outlined init with copy of AnyHashable(v98 - 40, v257);
        v256 = v9;
        v255[0] = swift_allocObject();
        outlined init with copy of AnyHashable(v258, v255[0] + 16);
        outlined init with copy of Any(v255, v254);
        type metadata accessor for CanvasElementPDFAnnotation();
        if (!swift_dynamicCast())
        {
          goto LABEL_71;
        }

        v101 = [v253 page];
        if (!v101)
        {

          v9 = MEMORY[0x1E69E69B8];
LABEL_71:
          outlined init with copy of Any(v255, v254);
          type metadata accessor for AnyCanvasElementView();
          if (swift_dynamicCast())
          {
            [v253 frame];
            v119 = v118;
            v121 = v120;
            v123 = v122;
            v125 = v124;
          }

          else
          {
            v119 = 0.0;
            v121 = 0.0;
            v123 = 0.0;
            v125 = 0.0;
          }

          goto LABEL_76;
        }

        v102 = v101;
        v103 = [v253 page];
        if (v103)
        {
          v104 = v103;
          v105 = [v103 view];
          [v253 bounds];
          v110 = v106;
          v111 = v107;
          v112 = v108;
          v113 = v109;
          if (v105)
          {
            [v105 convertRect:v104 fromPage:{v106, v107, v108, v109}];
            v110 = v114;
            v111 = v115;
            v112 = v116;
            v113 = v117;

            v104 = v105;
          }
        }

        else
        {
          v110 = 0.0;
          v111 = 0.0;
          v112 = 0.0;
          v113 = 0.0;
        }

        v126 = [v102 view];
        [v248 convertRect:v126 fromView:{v110, v111, v112, v113}];
        v119 = v127;
        v121 = v128;
        v123 = v129;
        v125 = v130;

        v9 = MEMORY[0x1E69E69B8];
LABEL_76:
        __swift_destroy_boxed_opaque_existential_0(v255);
        v256 = v9;
        v255[0] = swift_allocObject();
        outlined init with copy of AnyHashable(v257, v255[0] + 16);
        outlined init with copy of Any(v255, v254);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_83;
        }

        v131 = [v253 page];
        if (!v131)
        {

LABEL_83:
          outlined init with copy of Any(v255, v254);
          type metadata accessor for AnyCanvasElementView();
          if (swift_dynamicCast())
          {
            [v253 frame];
            recta = v148;
            v150 = v149;
            v152 = v151;
            v154 = v153;
          }

          else
          {
            recta = 0.0;
            v150 = 0.0;
            v152 = 0.0;
            v154 = 0.0;
          }

          goto LABEL_88;
        }

        v132 = v131;
        v133 = [v253 page];
        if (v133)
        {
          v134 = v133;
          v135 = [v133 view];
          [v253 bounds];
          v140 = v136;
          v141 = v137;
          v142 = v138;
          v143 = v139;
          if (v135)
          {
            [v135 convertRect:v134 fromPage:{v136, v137, v138, v139}];
            v140 = v144;
            v141 = v145;
            v142 = v146;
            v143 = v147;

            v134 = v135;
          }
        }

        else
        {
          v140 = 0.0;
          v141 = 0.0;
          v142 = 0.0;
          v143 = 0.0;
        }

        v155 = [v132 view];
        [v248 convertRect:v155 fromView:{v140, v141, v142, v143}];
        recta = v156;
        v150 = v157;
        v152 = v158;
        v154 = v159;

LABEL_88:
        __swift_destroy_boxed_opaque_existential_0(v255);
        v266.origin.x = v119;
        v266.origin.y = v121;
        v266.size.width = v123;
        v266.size.height = v125;
        v160 = v125;
        v161 = v123;
        v162 = v121;
        v163 = v119;
        v164 = CGRectGetMinY(v266);
        v267.origin.x = recta;
        v267.origin.y = v150;
        v267.size.width = v152;
        v267.size.height = v154;
        if (v164 != CGRectGetMinY(v267))
        {
          v270.origin.x = v163;
          v270.origin.y = v162;
          v270.size.width = v161;
          v270.size.height = v160;
          v165 = CGRectGetMinY(v270);
          v271.origin.x = recta;
          v271.origin.y = v150;
          v271.size.width = v152;
          v271.size.height = v154;
          v166 = CGRectGetMinY(v271);
LABEL_92:
          v167 = v165 < v166;
          goto LABEL_93;
        }

        v268.origin.x = v163;
        v268.origin.y = v162;
        v268.size.width = v161;
        v268.size.height = v160;
        v165 = CGRectGetMinX(v268);
        v269.origin.x = recta;
        v269.origin.y = v150;
        v269.size.width = v152;
        v269.size.height = v154;
        v166 = CGRectGetMinX(v269);
        if (a6)
        {
          goto LABEL_92;
        }

        v167 = v166 < v165;
LABEL_93:
        v168 = v167;
        outlined destroy of AnyHashable(v257);
        outlined destroy of AnyHashable(v258);
        if (!v168)
        {
          break;
        }

        if (!v97)
        {
          goto LABEL_181;
        }

        v169 = *(v98 + 32);
        v171 = *v98;
        v170 = *(v98 + 16);
        v172 = *(v98 - 24);
        *v98 = *v100;
        *(v98 + 16) = v172;
        *(v98 + 32) = *(v98 - 8);
        *v100 = v171;
        *(v98 - 24) = v170;
        v98 -= 40;
        *(v100 + 32) = v169;
      }

      while (!__CFADD__(v99++, 1));
      v84 = v245 + 1;
      v98 = v239 + 40;
      v99 = v238 - 1;
      if (v245 + 1 != v236)
      {
        continue;
      }

      break;
    }

    v8 = v242;
    v10 = &off_1E845F000;
    v7 = v234;
    v84 = v236;
LABEL_102:
    if (v84 < v7)
    {
      goto LABEL_176;
    }

    v237 = v84;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    }

    v175 = *(v8 + 2);
    v174 = *(v8 + 3);
    v176 = v175 + 1;
    if (v175 >= v174 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v174 > 1), v175 + 1, 1, v8);
    }

    *(v8 + 2) = v176;
    v177 = v8 + 32;
    v178 = &v8[16 * v175 + 32];
    *v178 = v7;
    *(v178 + 1) = v237;
    v259 = v8;
    rectb = *a1;
    if (!*a1)
    {
      goto LABEL_184;
    }

    if (v175)
    {
      v243 = v8;
      v246 = v8 + 32;
      while (1)
      {
        v179 = v176 - 1;
        if (v176 >= 4)
        {
          break;
        }

        if (v176 == 3)
        {
          v180 = *(v8 + 4);
          v181 = *(v8 + 5);
          v190 = __OFSUB__(v181, v180);
          v182 = v181 - v180;
          v183 = v190;
LABEL_123:
          if (v183)
          {
            goto LABEL_167;
          }

          v196 = &v8[16 * v176];
          v198 = *v196;
          v197 = *(v196 + 1);
          v199 = __OFSUB__(v197, v198);
          v200 = v197 - v198;
          v201 = v199;
          if (v199)
          {
            goto LABEL_170;
          }

          v202 = &v177[16 * v179];
          v204 = *v202;
          v203 = *(v202 + 1);
          v190 = __OFSUB__(v203, v204);
          v205 = v203 - v204;
          if (v190)
          {
            goto LABEL_173;
          }

          if (__OFADD__(v200, v205))
          {
            goto LABEL_174;
          }

          if (v200 + v205 >= v182)
          {
            if (v182 < v205)
            {
              v179 = v176 - 2;
            }

            goto LABEL_144;
          }

          goto LABEL_137;
        }

        v206 = &v8[16 * v176];
        v208 = *v206;
        v207 = *(v206 + 1);
        v190 = __OFSUB__(v207, v208);
        v200 = v207 - v208;
        v201 = v190;
LABEL_137:
        if (v201)
        {
          goto LABEL_169;
        }

        v209 = &v177[16 * v179];
        v211 = *v209;
        v210 = *(v209 + 1);
        v190 = __OFSUB__(v210, v211);
        v212 = v210 - v211;
        if (v190)
        {
          goto LABEL_172;
        }

        if (v212 < v200)
        {
          goto LABEL_3;
        }

LABEL_144:
        if (v179 - 1 >= v176)
        {
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

        v217 = *a3;
        if (!*a3)
        {
          goto LABEL_182;
        }

        v218 = &v177[16 * v179 - 16];
        v219 = *v218;
        v220 = v179;
        v221 = &v177[16 * v179];
        v222 = *(v221 + 1);
        v223 = (v217 + 40 * *v218);
        v224 = (v217 + 40 * *v221);
        v225 = v217 + 40 * v222;
        v226 = v248;
        specialized _merge<A>(low:mid:high:buffer:by:)(v223, v224, v225, rectb, v226, a6 & 1);
        if (v247)
        {

          v259 = v243;
          goto LABEL_157;
        }

        if (v222 < v219)
        {
          goto LABEL_162;
        }

        v227 = *(v243 + 2);
        if (v220 > v227)
        {
          goto LABEL_163;
        }

        *v218 = v219;
        *(v218 + 1) = v222;
        if (v220 >= v227)
        {
          goto LABEL_164;
        }

        v176 = v227 - 1;
        memmove(v221, v221 + 16, 16 * (v227 - 1 - v220));
        v8 = v243;
        v177 = v246;
        *(v243 + 2) = v227 - 1;
        v9 = MEMORY[0x1E69E69B8];
        v10 = &off_1E845F000;
        if (v227 <= 2)
        {
LABEL_3:
          v259 = v8;
          goto LABEL_4;
        }
      }

      v184 = &v177[16 * v176];
      v185 = *(v184 - 8);
      v186 = *(v184 - 7);
      v190 = __OFSUB__(v186, v185);
      v187 = v186 - v185;
      if (v190)
      {
        goto LABEL_165;
      }

      v189 = *(v184 - 6);
      v188 = *(v184 - 5);
      v190 = __OFSUB__(v188, v189);
      v182 = v188 - v189;
      v183 = v190;
      if (v190)
      {
        goto LABEL_166;
      }

      v191 = &v8[16 * v176];
      v193 = *v191;
      v192 = *(v191 + 1);
      v190 = __OFSUB__(v192, v193);
      v194 = v192 - v193;
      if (v190)
      {
        goto LABEL_168;
      }

      v190 = __OFADD__(v182, v194);
      v195 = v182 + v194;
      if (v190)
      {
        goto LABEL_171;
      }

      if (v195 >= v187)
      {
        v213 = &v177[16 * v179];
        v215 = *v213;
        v214 = *(v213 + 1);
        v190 = __OFSUB__(v214, v215);
        v216 = v214 - v215;
        if (v190)
        {
          goto LABEL_175;
        }

        if (v182 < v216)
        {
          v179 = v176 - 2;
        }

        goto LABEL_144;
      }

      goto LABEL_123;
    }

LABEL_4:
    v6 = a3[1];
    v7 = v237;
    if (v237 >= v6)
    {
      goto LABEL_154;
    }
  }

  if (v84 >= v233)
  {
    if (v233 < v84)
    {
      v85 = 40 * v84 - 40;
      v86 = v84;
      v87 = v233;
      while (1)
      {
        if (v87 != --v86)
        {
          v88 = *a3;
          if (!*a3)
          {
            goto LABEL_183;
          }

          v89 = v88 + v13;
          v90 = v88 + v85;
          v91 = *v89;
          v92 = *(v89 + 16);
          v93 = *(v89 + 32);
          v94 = *(v90 + 32);
          v95 = *(v90 + 16);
          *v89 = *v90;
          *(v89 + 16) = v95;
          *(v89 + 32) = v94;
          *(v90 + 32) = v93;
          *v90 = v91;
          *(v90 + 16) = v92;
        }

        ++v87;
        v85 -= 40;
        v13 += 40;
        if (v87 >= v86)
        {
          goto LABEL_53;
        }
      }
    }

    goto LABEL_53;
  }

LABEL_180:
  __break(1u);
LABEL_181:

  __break(1u);
LABEL_182:

  __break(1u);
LABEL_183:

  __break(1u);
LABEL_184:

  __break(1u);
LABEL_185:

  __break(1u);
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5, char a6)
{
  if (a3 != a2)
  {
    v95 = *a4;
    v6 = *a4 + 40 * a3;
    v7 = result - a3;
    v8 = MEMORY[0x1E69E69B8];
    v9 = &off_1E845F000;
LABEL_5:
    v91 = v6;
    v92 = a3;
    v90 = v7;
    while (1)
    {
      outlined init with copy of AnyHashable(v6, v101);
      v10 = v6 - 40;
      outlined init with copy of AnyHashable(v6 - 40, v100);
      v99 = v8;
      v98[0] = swift_allocObject();
      outlined init with copy of AnyHashable(v101, v98[0] + 16);
      outlined init with copy of Any(v98, v97);
      type metadata accessor for CanvasElementPDFAnnotation();
      if (!swift_dynamicCast())
      {
        goto LABEL_13;
      }

      v11 = v102;
      v12 = [v102 v9[105]];
      if (!v12)
      {
        break;
      }

      v13 = v12;
      v14 = [v11 v9[105]];
      if (v14)
      {
        v15 = v14;
        v16 = [v14 view];
        [v11 bounds];
        v21 = v17;
        v22 = v18;
        v23 = v19;
        v24 = v20;
        if (v16)
        {
          [v16 convertRect:v15 fromPage:{v17, v18, v19, v20}];
          v21 = v25;
          v22 = v26;
          v23 = v27;
          v24 = v28;

          v15 = v16;
        }
      }

      else
      {
        v21 = 0.0;
        v22 = 0.0;
        v23 = 0.0;
        v24 = 0.0;
      }

      v38 = [v13 view];
      [a5 convertRect:v38 fromView:{v21, v22, v23, v24}];
      v31 = v39;
      v33 = v40;
      v35 = v41;
      v37 = v42;

      v8 = MEMORY[0x1E69E69B8];
      v9 = &off_1E845F000;
LABEL_18:
      __swift_destroy_boxed_opaque_existential_0(v98);
      v99 = v8;
      v98[0] = swift_allocObject();
      outlined init with copy of AnyHashable(v100, v98[0] + 16);
      outlined init with copy of Any(v98, v97);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_25;
      }

      v43 = v102;
      v44 = [v102 v9[105]];
      v45 = v9;
      if (!v44)
      {

LABEL_25:
        outlined init with copy of Any(v98, v97);
        type metadata accessor for AnyCanvasElementView();
        if (swift_dynamicCast())
        {
          v62 = v102;
          [v102 frame];
          rect = v63;
          v65 = v64;
          v67 = v66;
          v69 = v68;
        }

        else
        {
          rect = 0.0;
          v65 = 0.0;
          v67 = 0.0;
          v69 = 0.0;
        }

        goto LABEL_30;
      }

      v46 = v44;
      v47 = [v43 v45 + 2040];
      if (v47)
      {
        v48 = v47;
        v49 = [v47 view];
        [v43 bounds];
        v54 = v50;
        v55 = v51;
        v56 = v52;
        v57 = v53;
        if (v49)
        {
          [v49 convertRect:v48 fromPage:{v50, v51, v52, v53}];
          v54 = v58;
          v55 = v59;
          v56 = v60;
          v57 = v61;

          v48 = v49;
        }
      }

      else
      {
        v54 = 0.0;
        v55 = 0.0;
        v56 = 0.0;
        v57 = 0.0;
      }

      v70 = [v46 view];
      [a5 convertRect:v70 fromView:{v54, v55, v56, v57}];
      rect = v71;
      v65 = v72;
      v67 = v73;
      v69 = v74;

      v8 = MEMORY[0x1E69E69B8];
      v9 = &off_1E845F000;
LABEL_30:
      __swift_destroy_boxed_opaque_existential_0(v98);
      v103.origin.x = v31;
      v103.origin.y = v33;
      v103.size.width = v35;
      v103.size.height = v37;
      v75 = v37;
      v76 = v35;
      v77 = v33;
      v78 = v31;
      MinY = CGRectGetMinY(v103);
      v104.origin.x = rect;
      v104.origin.y = v65;
      v104.size.width = v67;
      v104.size.height = v69;
      if (MinY == CGRectGetMinY(v104))
      {
        v105.origin.x = v78;
        v105.origin.y = v77;
        v105.size.width = v76;
        v105.size.height = v75;
        MinX = CGRectGetMinX(v105);
        v106.origin.x = rect;
        v106.origin.y = v65;
        v106.size.width = v67;
        v106.size.height = v69;
        v81 = CGRectGetMinX(v106);
        if ((a6 & 1) == 0)
        {
          v82 = v81 < MinX;
          goto LABEL_35;
        }
      }

      else
      {
        v107.origin.x = v78;
        v107.origin.y = v77;
        v107.size.width = v76;
        v107.size.height = v75;
        MinX = CGRectGetMinY(v107);
        v108.origin.x = rect;
        v108.origin.y = v65;
        v108.size.width = v67;
        v108.size.height = v69;
        v81 = CGRectGetMinY(v108);
      }

      v82 = MinX < v81;
LABEL_35:
      v83 = v82;
      outlined destroy of AnyHashable(v100);
      result = outlined destroy of AnyHashable(v101);
      if (!v83)
      {
LABEL_4:
        a3 = v92 + 1;
        v6 = v91 + 40;
        v7 = v90 - 1;
        if (v92 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v95)
      {
        __break(1u);
        return result;
      }

      v84 = *(v6 + 32);
      v86 = *v6;
      v85 = *(v6 + 16);
      v87 = *(v6 - 24);
      *v6 = *v10;
      *(v6 + 16) = v87;
      *(v6 + 32) = *(v6 - 8);
      *v10 = v86;
      *(v6 - 24) = v85;
      v6 -= 40;
      *(v10 + 32) = v84;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

LABEL_13:
    outlined init with copy of Any(v98, v97);
    type metadata accessor for AnyCanvasElementView();
    if (swift_dynamicCast())
    {
      v29 = v102;
      [v102 frame];
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v37 = v36;
    }

    else
    {
      v31 = 0.0;
      v33 = 0.0;
      v35 = 0.0;
      v37 = 0.0;
    }

    goto LABEL_18;
  }

  return result;
}

void specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1, void *a2, char a3)
{
  v5 = a1[1];
  v6 = a2;
  v7 = _minimumMergeRunLength(_:)(v5);
  if (v7 < v5)
  {
    if (v5 >= -1)
    {
      v8 = v7;
      v9 = v5 / 2;
      if (v5 <= 1)
      {
        v10 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v10 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v10 + 16) = v9;
      }

      v12[0] = (v10 + 32);
      v12[1] = v9;
      v11 = v6;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v12, v13, a1, v8, v11, a3 & 1);

      *(v10 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    v6 = v6;
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v5, 1, a1, v6, a3 & 1);
  }
}

void specialized MutableCollection<>.sort(by:)(char **a1, void *a2, char a3)
{
  v5 = *a1;
  v6 = a2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v5);
  }

  v7 = *(v5 + 2);
  v9[0] = (v5 + 32);
  v9[1] = v7;
  v8 = v6;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v9, v8, a3 & 1);

  *a1 = v5;
}

void specialized FormFillingView.init(coder:)()
{
  v1 = v0;
  swift_unknownObjectWeakInit();
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC8PaperKit15FormFillingView__formFields) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC8PaperKit15FormFillingView_formFieldGroups) = v2;
  *(v0 + OBJC_IVAR____TtC8PaperKit15FormFillingView_widgets) = v2;
  *(v0 + OBJC_IVAR____TtC8PaperKit15FormFillingView_tapGesture) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit15FormFillingView_doubleTapGesture) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit15FormFillingView_editMenuInteraction) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit15FormFillingView_vkcFormRegions) = v2;
  *(v0 + OBJC_IVAR____TtC8PaperKit15FormFillingView_vkcAnalysis) = 0;
  v3 = [objc_opt_self() preferredInsertionOrder];
  type metadata accessor for AFTextContentType(0);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = *(v4 + 16);
  if (v5)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    v6 = 32;
    v7 = v2;
    do
    {
      v8 = *(v4 + v6);
      FormContentType.init(_:)(v8);
      v9 = specialized FormContentType.uiTextContentType.getter();

      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
      }

      *(v7 + 16) = v11 + 1;
      *(v7 + 8 * v11 + 32) = v9;
      v6 += 8;
      --v5;
    }

    while (v5);
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  *(v1 + OBJC_IVAR____TtC8PaperKit15FormFillingView_preferredTextContentTypes) = v7;
  v12 = OBJC_IVAR____TtC8PaperKit15FormFillingView_analytics;
  type metadata accessor for FormPageAnalytics();
  swift_allocObject();
  *(v1 + v12) = FormPageAnalytics.init()();
  *(v1 + OBJC_IVAR____TtC8PaperKit15FormFillingView_signatureFieldsSigned) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t specialized Collection.prefix(_:)(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();

    return String.subscript.getter();
  }

  return result;
}

unint64_t specialized BidirectionalCollection.suffix(_:)(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  result = String.index(_:offsetBy:limitedBy:)();
  if (v4)
  {
    result = 15;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_12;
  }

  return String.subscript.getter();
}

uint64_t outlined assign with take of FormAutofillDelegate?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit20FormAutofillDelegate_pSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type AnyHashable? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type AnyHashable? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type AnyHashable? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss11AnyHashableVSgMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyHashable? and conformance <A> A?);
  }

  return result;
}

uint64_t block_copy_helper_36(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t _sSo21NSAttributedStringKeyaABSHSCWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with take of (CRKeyPath, AnyCanvasElementView)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathV_8PaperKit20AnyCanvasElementViewCtMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

UIMenu specialized FormFillingView.editMenuInteraction(_:menuFor:suggestedActions:)()
{
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIAction);
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  swift__string._object = 0x80000001D408A1C0;
  v0.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v0.value._object = 0xEB00000000656C62;
  v1._countAndFlagsBits = 0x41207463656C6553;
  v2._countAndFlagsBits = 0xD000000000000019;
  v2._object = 0x80000001D408A1A0;
  v1._object = 0xEA00000000006C6CLL;
  swift__string._countAndFlagsBits = 0xD000000000000016;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v0, paperKitBundle, v1, swift__string);
  MEMORY[0x1DA6CCED0](0xD000000000000018, 0x80000001D408A1E0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIMenu);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D405CEB0;
  *(v4 + 32) = v3;
  preferredElementSize = v4;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v8.value.super.isa = 0;
  v8.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v5, 0, v8, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, 0);
}

uint64_t type metadata accessor for PDFAnnotationElementLayout()
{
  result = type metadata singleton initialization cache for PDFAnnotationElementLayout;
  if (!type metadata singleton initialization cache for PDFAnnotationElementLayout)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Shape and conformance Shape()
{
  result = lazy protocol witness table cache variable for type Shape and conformance Shape;
  if (!lazy protocol witness table cache variable for type Shape and conformance Shape)
  {
    type metadata accessor for Shape(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Shape and conformance Shape);
  }

  return result;
}

unint64_t one-time initialization function for shared()
{
  type metadata accessor for PasswordManager();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 16) = v1;
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4DataV_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v0 + 24) = result;
  static PasswordManager.shared = v0;
  return result;
}

{
  type metadata accessor for ImageThumbnailManager();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit10AsyncCacheCy10Foundation4DataVSo10CGImageRefaGMd);
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4DataV_8PaperKit10AsyncCacheC0H5State33_D762270EDF0902B2A411957938316D98LLOyAESo10CGImageRefa_GTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v1 + 112) = result;
  *(v1 + 120) = 10;
  *(v0 + 112) = v1;
  static ImageThumbnailManager.shared = v0;
  return result;
}

uint64_t closure #1 in PasswordManager.password(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = CRAsset.digest.getter();
  v6 = v5;
  swift_beginAccess();
  v7 = *(a1 + 24);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v6), (v9 & 1) != 0))
  {
    v10 = (*(v7 + 56) + 16 * v8);
    v12 = *v10;
    v11 = v10[1];

    outlined consume of Data._Representation(v4, v6);
  }

  else
  {
    outlined consume of Data._Representation(v4, v6);
    v12 = 0;
    v11 = 0;
  }

  *a2 = v12;
  a2[1] = v11;
  return swift_endAccess();
}

uint64_t closure #1 in PasswordManager.add(password:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = CRAsset.digest.getter();
  v9 = v8;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(a1 + 24);
  *(a1 + 24) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a3, a4, v7, v9, isUniquelyReferenced_nonNull_native);
  outlined consume of Data._Representation(v7, v9);
  *(a1 + 24) = v12;
  return swift_endAccess();
}

uint64_t closure #1 in PasswordManager.clear(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  swift_beginAccess();
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v9 = 0;
  v10 = 0;
  if (v11)
  {
    v12 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(a1 + 24);
    *(a1 + 24) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
    }

    outlined consume of Data._Representation(*(*(v14 + 48) + 16 * v12), *(*(v14 + 48) + 16 * v12 + 8));
    v15 = (*(v14 + 56) + 16 * v12);
    v9 = *v15;
    v10 = v15[1];
    specialized _NativeDictionary._delete(at:)(v12, v14);
    *(a1 + 24) = v14;
  }

  *a4 = v9;
  a4[1] = v10;
  return swift_endAccess();
}

uint64_t PasswordManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t ValueSlider.currentValue.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC8PaperKit11ValueSlider____lazy_storage___currentValue);
  if (*(v0 + OBJC_IVAR____TtC8PaperKit11ValueSlider____lazy_storage___currentValue + 8) != 1)
  {
    return *v1;
  }

  result = *(v0 + OBJC_IVAR____TtC8PaperKit11ValueSlider_minValue);
  *v1 = result;
  v1[8] = 0;
  return result;
}

char *ValueSlider.init(minValue:maxValue:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC8PaperKit11ValueSlider_leadingContentView;
  *&v3[v7] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v8 = OBJC_IVAR____TtC8PaperKit11ValueSlider_trailingContentView;
  *&v3[v8] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v9 = OBJC_IVAR____TtC8PaperKit11ValueSlider_slider;
  *&v3[v9] = [objc_allocWithZone(MEMORY[0x1E69DCF60]) init];
  v10 = OBJC_IVAR____TtC8PaperKit11ValueSlider_contentStackView;
  *&v3[v10] = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  *&v3[OBJC_IVAR____TtC8PaperKit11ValueSlider_contentStackViewSpacing] = 0x4020000000000000;
  *&v3[OBJC_IVAR____TtC8PaperKit11ValueSlider_minimumContentSizeHeight] = 0x4049000000000000;
  v11 = &v3[OBJC_IVAR____TtC8PaperKit11ValueSlider____lazy_storage___currentValue];
  *v11 = 0;
  v11[8] = 1;
  *&v3[OBJC_IVAR____TtC8PaperKit11ValueSlider_minValue] = a1;
  *&v3[OBJC_IVAR____TtC8PaperKit11ValueSlider_maxValue] = a2;
  v43.receiver = v3;
  v43.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v43, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v13 = OBJC_IVAR____TtC8PaperKit11ValueSlider_contentStackView;
  v14 = *&v12[OBJC_IVAR____TtC8PaperKit11ValueSlider_contentStackView];
  v15 = v12;
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v12[v13] setAxis_];
  [*&v12[v13] setAlignment_];
  [*&v12[v13] setDistribution_];
  [*&v12[v13] setSpacing_];
  v16 = *&v12[v13];
  v17 = v15;
  [v17 addSubview_];
  v18 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1D405B630;
  v20 = [*&v12[v13] topAnchor];
  v21 = [v17 topAnchor];
  v22 = [v20 constraintEqualToAnchor_];

  *(v19 + 32) = v22;
  v23 = [*&v12[v13] leadingAnchor];
  v24 = [v17 leadingAnchor];

  v25 = [v23 constraintEqualToAnchor_];
  *(v19 + 40) = v25;
  v26 = [*&v12[v13] bottomAnchor];
  v27 = [v17 bottomAnchor];

  v28 = [v26 constraintEqualToAnchor_];
  *(v19 + 48) = v28;
  v29 = [*&v12[v13] trailingAnchor];
  v30 = [v17 trailingAnchor];
  v31 = [v29 constraintEqualToAnchor_];

  *(v19 + 56) = v31;
  type metadata accessor for NSLayoutConstraint();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v18 activateConstraints_];

  [*&v12[v13] addArrangedSubview_];
  v33 = OBJC_IVAR____TtC8PaperKit11ValueSlider_slider;
  *&v34 = a1;
  [*&v17[OBJC_IVAR____TtC8PaperKit11ValueSlider_slider] setMinimumValue_];
  *&v35 = a2;
  [*&v17[v33] setMaximumValue_];
  v36 = *&v17[v33];
  v37 = MEMORY[0x1DA6CCED0](0x696C5365756C6176, 0xEC00000072656464);
  [v36 setAccessibilityIdentifier_];

  [*&v12[v13] addArrangedSubview_];
  [*&v12[v13] addArrangedSubview_];
  [*&v17[v33] addTarget:v17 action:sel_didChangeSlider forControlEvents:4096];
  [*&v17[v33] addTarget:v17 action:sel_didStartChangingSlider forControlEvents:1];
  v38 = *&v17[v33];
  [v38 addTarget:v17 action:sel_didFinishChangingSlider forControlEvents:448];

  v39 = *&v17[v33];
  *&v40 = ValueSlider.currentValue.getter();
  [v39 setValue_];

  return v17;
}

id ValueSlider.didChangeSlider()()
{
  result = [*&v0[OBJC_IVAR____TtC8PaperKit11ValueSlider_slider] value];
  v3 = roundf(v2);
  if ((LODWORD(v3) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3 <= -9.2234e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v3 >= 9.2234e18)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v4 = v3;
  if (*&v0[OBJC_IVAR____TtC8PaperKit11ValueSlider_minValue] > v3)
  {
    v4 = *&v0[OBJC_IVAR____TtC8PaperKit11ValueSlider_minValue];
  }

  if (v4 >= *&v0[OBJC_IVAR____TtC8PaperKit11ValueSlider_maxValue])
  {
    v4 = *&v0[OBJC_IVAR____TtC8PaperKit11ValueSlider_maxValue];
  }

  v5 = &v0[OBJC_IVAR____TtC8PaperKit11ValueSlider____lazy_storage___currentValue];
  *v5 = v4;
  v5[8] = 0;

  return [v0 sendActionsForControlEvents_];
}

void specialized ValueSlider.init(coder:)()
{
  v1 = OBJC_IVAR____TtC8PaperKit11ValueSlider_leadingContentView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v2 = OBJC_IVAR____TtC8PaperKit11ValueSlider_trailingContentView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v3 = OBJC_IVAR____TtC8PaperKit11ValueSlider_slider;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E69DCF60]) init];
  v4 = OBJC_IVAR____TtC8PaperKit11ValueSlider_contentStackView;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  *(v0 + OBJC_IVAR____TtC8PaperKit11ValueSlider_contentStackViewSpacing) = 0x4020000000000000;
  *(v0 + OBJC_IVAR____TtC8PaperKit11ValueSlider_minimumContentSizeHeight) = 0x4049000000000000;
  v5 = v0 + OBJC_IVAR____TtC8PaperKit11ValueSlider____lazy_storage___currentValue;
  *v5 = 0;
  *(v5 + 8) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t @objc static PKTextAttachmentDrawingViewProvider.drawingViewClassForPaper()()
{
  type metadata accessor for PaperTextAttachmentView();

  return swift_getObjCClassFromMetadata();
}

uint64_t @objc static PKTextAttachmentDrawingViewProvider.inlineDrawingViewClassForPaper()()
{
  type metadata accessor for InlineDrawingTextAttachmentView();

  return swift_getObjCClassFromMetadata();
}

uint64_t @objc static PKTextAttachmentDrawingViewProvider.inlineDrawingTiledViewClassForPaper()()
{
  type metadata accessor for InlineDrawingTiledTextView();

  return swift_getObjCClassFromMetadata();
}

Swift::Int MarkupError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1DA6CE810](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type MarkupError and conformance MarkupError()
{
  result = lazy protocol witness table cache variable for type MarkupError and conformance MarkupError;
  if (!lazy protocol witness table cache variable for type MarkupError and conformance MarkupError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MarkupError and conformance MarkupError);
  }

  return result;
}

uint64_t HeadlineButtonStyle.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32[1] = a2;
  v32[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd);
  MEMORY[0x1EEE9AC00](v32[0]);
  v4 = v32 - v3;
  v5 = type metadata accessor for IconOnlyLabelStyle();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy8PaperKit19HeadlineButtonStyleVGAA14_PaddingLayoutVGMd);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyACyAA01_e9Modifier_D0Vy8PaperKit014HeadlineButtonG0VGAA14_PaddingLayoutVG_AA08IconOnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA4FontVSgGGMd);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v32 - v13;
  v15 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy8PaperKit19HeadlineButtonStyleVGMd);
  (*(*(v24 - 8) + 16))(v11, a1, v24);
  v25 = &v11[*(v9 + 36)];
  *v25 = v15;
  *(v25 + 1) = v17;
  *(v25 + 2) = v19;
  *(v25 + 3) = v21;
  *(v25 + 4) = v23;
  v25[40] = 0;
  IconOnlyLabelStyle.init()();
  lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<HeadlineButtonStyle>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type HeadlineButtonStyle and conformance HeadlineButtonStyle(&lazy protocol witness table cache variable for type IconOnlyLabelStyle and conformance IconOnlyLabelStyle, MEMORY[0x1E697C4E8]);
  View.labelStyle<A>(_:)();
  (*(v6 + 8))(v8, v5);
  outlined destroy of StocksKitCurrencyCache.Provider?(v11, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy8PaperKit19HeadlineButtonStyleVGAA14_PaddingLayoutVGMd);
  v26 = static Font.title2.getter();
  KeyPath = swift_getKeyPath();
  v28 = &v14[*(v12 + 36)];
  *v28 = KeyPath;
  v28[1] = v26;
  v29 = *MEMORY[0x1E697E720];
  v30 = type metadata accessor for DynamicTypeSize();
  (*(*(v30 - 8) + 104))(v4, v29, v30);
  lazy protocol witness table accessor for type HeadlineButtonStyle and conformance HeadlineButtonStyle(&lazy protocol witness table cache variable for type DynamicTypeSize and conformance DynamicTypeSize, MEMORY[0x1E697E730]);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type PartialRangeThrough<DynamicTypeSize> and conformance PartialRangeThrough<A>, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd);
    View.dynamicTypeSize<A>(_:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd);
    return sub_1D38E2EE8(v14);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t HeadlineCancelButton.body.getter(uint64_t a1, uint64_t a2)
{
  v18 = type metadata accessor for KeyEquivalent();
  v4 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ButtonRoleVSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGG8PaperKit08HeadlineE5StyleVGMd);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - v11;
  static ButtonRole.cancel.getter();
  v13 = type metadata accessor for ButtonRole();
  (*(*(v13 - 8) + 56))(v9, 0, 1, v13);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Label<Text, Image> and conformance Label<A, B>, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd);
  Button.init(role:action:label:)();
  v15 = *(v10 + 36);
  *&v12[v15] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd);
  swift_storeEnumTagMultiPayload();
  static KeyEquivalent.escape.getter();
  EventModifiers.init(rawValue:)();
  lazy protocol witness table accessor for type ModifiedContent<Button<Label<Text, Image>>, HeadlineButtonStyle> and conformance <> ModifiedContent<A, B>();
  View.keyboardShortcut(_:modifiers:)();
  (*(v4 + 8))(v6, v18);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGG8PaperKit08HeadlineE5StyleVGMd);
}

uint64_t HeadlineDoneButton.body.getter(uint64_t a1, uint64_t a2)
{
  v18 = type metadata accessor for KeyEquivalent();
  v4 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ButtonRoleVSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGG8PaperKit08HeadlineE5StyleVGMd);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - v11;
  static ButtonRole.confirm.getter();
  v13 = type metadata accessor for ButtonRole();
  (*(*(v13 - 8) + 56))(v9, 0, 1, v13);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Label<Text, Image> and conformance Label<A, B>, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd);
  Button.init(role:action:label:)();
  v15 = *(v10 + 36);
  *&v12[v15] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd);
  swift_storeEnumTagMultiPayload();
  static KeyEquivalent.return.getter();
  EventModifiers.init(rawValue:)();
  lazy protocol witness table accessor for type ModifiedContent<Button<Label<Text, Image>>, HeadlineButtonStyle> and conformance <> ModifiedContent<A, B>();
  View.keyboardShortcut(_:modifiers:)();
  (*(v4 + 8))(v6, v18);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGG8PaperKit08HeadlineE5StyleVGMd);
}

uint64_t closure #2 in HeadlineCancelButton.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = LocalizedStringKey.init(stringLiteral:)();
  v10 = v9 & 1;

  return MEMORY[0x1EEDDC7B0](v6, v7, v10, v8, a3, a4);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<Label<Text, Image>>, HeadlineButtonStyle> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<Label<Text, Image>>, HeadlineButtonStyle> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<Label<Text, Image>>, HeadlineButtonStyle> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGG8PaperKit08HeadlineE5StyleVGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Button<Label<Text, Image>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGMd);
    lazy protocol witness table accessor for type HeadlineButtonStyle and conformance HeadlineButtonStyle(&lazy protocol witness table cache variable for type HeadlineButtonStyle and conformance HeadlineButtonStyle, type metadata accessor for HeadlineButtonStyle);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<Label<Text, Image>>, HeadlineButtonStyle> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t type metadata accessor for HeadlineButtonStyle()
{
  result = type metadata singleton initialization cache for HeadlineButtonStyle;
  if (!type metadata singleton initialization cache for HeadlineButtonStyle)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for HeadlineButtonStyle()
{
  type metadata accessor for Environment<ColorScheme>();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<HeadlineButtonStyle>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<HeadlineButtonStyle>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<HeadlineButtonStyle>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy8PaperKit19HeadlineButtonStyleVGAA14_PaddingLayoutVGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<HeadlineButtonStyle> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy8PaperKit19HeadlineButtonStyleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<HeadlineButtonStyle>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type HeadlineButtonStyle and conformance HeadlineButtonStyle(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyACyAA01_e9Modifier_D0Vy8PaperKit014HeadlineButtonG0VGAA14_PaddingLayoutVG_AA08IconOnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA4FontVSgGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy8PaperKit19HeadlineButtonStyleVGAA14_PaddingLayoutVGMd);
    type metadata accessor for IconOnlyLabelStyle();
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<HeadlineButtonStyle>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type HeadlineButtonStyle and conformance HeadlineButtonStyle(&lazy protocol witness table cache variable for type IconOnlyLabelStyle and conformance IconOnlyLabelStyle, MEMORY[0x1E697C4E8]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void *GraphLayout.createView<A>(in:canvas:parent:)(char *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v54 = a4;
  v55 = a5;
  v58 = a3;
  v59 = a2;
  v57 = a1;
  v6 = type metadata accessor for CRKeyPath();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit12GraphElementVGMd);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v52 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit12GraphElementVGMd);
  v53 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v56 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v52 - v17;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v52 - v21;
  (*(v7 + 16))(v9, v5, v6, v20);
  v23 = type metadata accessor for GraphElement(0);
  v24 = lazy protocol witness table accessor for type GraphElement and conformance GraphElement(&lazy protocol witness table cache variable for type GraphElement and conformance GraphElement, type metadata accessor for GraphElement);
  Ref.init(id:)();
  type metadata accessor for Capsule();
  lazy protocol witness table accessor for type Ref<GraphElement> and conformance Ref<A>();
  Capsule.encapsulate<A>(_:)();
  v25 = v10;
  v26 = v53;
  (*(v11 + 8))(v13, v25);
  v60 = v23;
  v61 = v24;
  v27 = v18;
  v62 = &protocol witness table for GraphElement;
  swift_getKeyPath();
  Capsule.subscript.getter();

  x = v63.origin.x;
  y = v63.origin.y;
  width = v63.size.width;
  height = v63.size.height;
  MinX = CGRectGetMinX(v63);
  v64.origin.x = x;
  v64.origin.y = y;
  v64.size.width = width;
  v64.size.height = height;
  MinY = CGRectGetMinY(v64);
  v65.origin.x = x;
  v65.origin.y = y;
  v65.size.width = width;
  v65.size.height = height;
  v34 = CGRectGetWidth(v65);
  v66.origin.x = x;
  v66.origin.y = y;
  v66.size.width = width;
  v66.size.height = height;
  v35 = CGRectGetHeight(v66);
  v36 = *(v26 + 16);
  v57 = v22;
  v36(v18, v22, v14);
  v37 = objc_allocWithZone(type metadata accessor for GraphCanvasElementView(0));
  *(v37 + direct field offset for GraphCanvasElementView.didDelayCreatingGraphView) = 0;
  *(v37 + direct field offset for GraphCanvasElementView.$__lazy_storage_$_cachedGraphableExpressionsState) = 0;
  *(v37 + direct field offset for GraphCanvasElementView.graphViewController) = 0;
  v38 = v37 + direct field offset for GraphCanvasElementView.previousGraphViewSize;
  *v38 = 0;
  *(v38 + 1) = 0;
  v38[16] = 1;
  v39 = direct field offset for GraphCanvasElementView.expressionIdentifierToId;
  *(v37 + v39) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4UUIDVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v40 = v56;
  v36(v56, v27, v14);
  v41 = MEMORY[0x1E69E7D40];
  (*(v26 + 56))(v37 + *((*MEMORY[0x1E69E7D40] & *v37) + 0x3F8), 1, 1, v14);
  *(v37 + *((*v41 & *v37) + 0x400)) = 0;
  *(v37 + *((*v41 & *v37) + 0x408)) = 0;
  *(v37 + *((*v41 & *v37) + 0x410)) = 0;
  *(v37 + *((*v41 & *v37) + 0x418)) = 0;
  *(v37 + *((*v41 & *v37) + 0x420)) = 0;
  v42 = v40;
  v36(v37 + *((*v41 & *v37) + 0x3F0), v40, v14);
  v43 = v58;
  v44 = v58;
  v45 = v59;
  v46 = v59;
  v47 = AnyCanvasElementView.init(frame:canvas:parentCanvasElement:)(v45, v43, MinX, MinY, v34, v35);
  specialized CanvasElementView.setupAccessibility()();
  if (v45)
  {
    (*((*v41 & *v47) + 0x520))();

    v48 = *(v26 + 8);
    v48(v42, v14);
  }

  else
  {
    v48 = *(v26 + 8);
    v48(v42, v14);
  }

  v49 = v47;
  v50 = MEMORY[0x1DA6CCED0](0xD000000000000026, 0x80000001D408A3A0);
  [v49 setAccessibilityIdentifier_];

  v48(v27, v14);
  v48(v57, v14);

  return v47;
}

uint64_t closure #1 in static GraphLayout.loadItemProvider(_:canvasFrame:frame:rotation:anchor:offset:assetManager:dragItem:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v57 = a5;
  v58 = a4;
  v52 = a1;
  v6 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v49 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GraphElement(0);
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit12GraphElementVGMd);
  v55 = *(v12 - 8);
  v56 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v51 = &v45 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit12GraphElementVGSgMd);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v54 = &v45 - v15;
  v16 = type metadata accessor for GraphableExpression(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v53 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit19GraphableExpressionVSgMd);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v45 - v23;
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v45 - v27;
  v29 = *(v17 + 56);
  v29(&v45 - v27, 1, 1, v16, v26);
  if (a2 >> 60 != 15)
  {
    v46 = v28;
    v47 = v8;
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    outlined copy of Data._Representation(v52, a2);
    JSONDecoder.init()();
    lazy protocol witness table accessor for type GraphElement and conformance GraphElement(&lazy protocol witness table cache variable for type GraphableExpression and conformance GraphableExpression, type metadata accessor for GraphableExpression);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v28 = v46;
    outlined destroy of StocksKitCurrencyCache.Provider?(v46, &_s8PaperKit19GraphableExpressionVSgMd);

    outlined consume of Data?(v52, a2);
    (v29)(v24, 0, 1, v16);
    outlined init with take of GraphableExpression?(v24, v28);
  }

  outlined init with copy of GraphableExpression?(v28, v21);
  v30 = (*(v17 + 48))(v21, 1, v16);
  v31 = v53;
  if (v30 == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v21, &_s8PaperKit19GraphableExpressionVSgMd);
    v32 = v54;
    (*(v55 + 56))(v54, 1, 1, v56);
    v58(v32);
    outlined destroy of StocksKitCurrencyCache.Provider?(v32, &_s9Coherence7CapsuleVy8PaperKit12GraphElementVGSgMd);
    return outlined destroy of StocksKitCurrencyCache.Provider?(v28, &_s8PaperKit19GraphableExpressionVSgMd);
  }

  else
  {
    outlined init with take of GraphableExpression(v21, v53);
    specialized static GraphElement.defaultVisibleRange.getter();
    v34 = v50;
    GraphElement.init(frame:visibleRange:rotation:)(v50, 234.0, 0.0, 300.0, 300.0, v35, v36, v37, v38, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
    CRRegister.wrappedValue.getter();
    if (v59 != 0.0)
    {
      v59 = 0.0;
      CRRegister.wrappedValue.setter();
    }

    _s8PaperKit12GraphElementVWOcTm_0(v34, v48, type metadata accessor for GraphElement);
    static CRKeyPath.unique.getter();
    lazy protocol witness table accessor for type GraphElement and conformance GraphElement(&lazy protocol witness table cache variable for type GraphElement and conformance GraphElement, type metadata accessor for GraphElement);
    v39 = v51;
    v40 = Capsule.init(_:id:)();
    MEMORY[0x1EEE9AC00](v40);
    v41 = v34;
    v42 = v56;
    Capsule.callAsFunction<A>(_:)();
    outlined destroy of GraphElement(v41, type metadata accessor for GraphElement);
    v44 = v54;
    v43 = v55;
    (*(v55 + 16))(v54, v39, v42);
    (*(v43 + 56))(v44, 0, 1, v42);
    v58(v44);
    outlined destroy of StocksKitCurrencyCache.Provider?(v44, &_s9Coherence7CapsuleVy8PaperKit12GraphElementVGSgMd);
    (*(v43 + 8))(v39, v42);
    outlined destroy of StocksKitCurrencyCache.Provider?(v28, &_s8PaperKit19GraphableExpressionVSgMd);
    return outlined destroy of GraphElement(v31, type metadata accessor for GraphableExpression);
  }
}

uint64_t outlined init with copy of GraphableExpression?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit19GraphableExpressionVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t closure #1 in static GraphLayout.create(_:visibleRange:canvasFrame:frame:rotation:anchor:offset:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v18[-v4];
  v6 = type metadata accessor for GraphableExpression(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit19GraphableExpressionVGMd);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18[-v11];
  _s8PaperKit12GraphElementVWOcTm_0(a2, v8, type metadata accessor for GraphableExpression);
  v13 = type metadata accessor for CRKeyPath();
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  v14 = lazy protocol witness table accessor for type GraphElement and conformance GraphElement(&lazy protocol witness table cache variable for type GraphableExpression and conformance GraphableExpression, type metadata accessor for GraphableExpression);

  MEMORY[0x1DA6CC020](v15, v8, v5, v6, v14);
  swift_getKeyPath();
  v16 = Capsule.Ref.subscript.modify();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMd);
  CROrderedSet.append(_:)();
  v16(v18, 0);

  return (*(v10 + 8))(v12, v9);
}

id protocol witness for static Layout.canHandle(itemProvider:) in conformance GraphLayout(void *a1)
{
  v2 = MEMORY[0x1DA6CCED0](0xD000000000000018, 0x80000001D4084910);
  v3 = [a1 hasItemConformingToTypeIdentifier_];

  return v3;
}

uint64_t outlined destroy of GraphElement(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of GraphableExpression?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit19GraphableExpressionVSgMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s8PaperKit12GraphElementVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type GraphElement and conformance GraphElement(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for GraphLayout()
{
  result = type metadata singleton initialization cache for GraphLayout;
  if (!type metadata singleton initialization cache for GraphLayout)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Ref<GraphElement> and conformance Ref<A>()
{
  result = lazy protocol witness table cache variable for type Ref<GraphElement> and conformance Ref<A>;
  if (!lazy protocol witness table cache variable for type Ref<GraphElement> and conformance Ref<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9Coherence3RefVy8PaperKit12GraphElementVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Ref<GraphElement> and conformance Ref<A>);
  }

  return result;
}

void ToolPickerController.handleSqueezeInteractionDidChangePaletteViewVisibilityNotification(_:)()
{
  v1 = v0 + OBJC_IVAR____TtC8PaperKit20ToolPickerController_delegate;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return;
  }

  v2 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 48))(v0, ObjectType, v2);
  swift_unknownObjectRelease();
  if (!v4)
  {
    return;
  }

  v5 = [objc_opt_self() _existingInteractionForWindowScene_];
  if (!v5)
  {
    goto LABEL_10;
  }

  v9 = v5;
  if ([v5 _paletteViewVisible])
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v1 + 8);
      v7 = swift_getObjectType();
      (*(v6 + 40))(v0, v7, v6);

      swift_unknownObjectRelease();
    }

    else
    {
    }

LABEL_10:
    v8 = v4;
    goto LABEL_11;
  }

  v8 = v9;
LABEL_11:
}

void ToolPickerController.toolPickerWillShowNotification(_:)()
{
  Notification.object.getter();
  if (!v6)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v5, &_sypSgMd);
    return;
  }

  type metadata accessor for PKToolPicker();
  if (swift_dynamicCast())
  {
    if (![v4 _annotationDelegate])
    {
      v1 = v0 + OBJC_IVAR____TtC8PaperKit20ToolPickerController_delegate;
      if (!swift_unknownObjectWeakLoadStrong())
      {

        return;
      }

      v2 = *(v1 + 8);
      ObjectType = swift_getObjectType();
      (*(v2 + 24))(v0, v4, ObjectType, v2);
    }

    swift_unknownObjectRelease();
  }
}

void ToolPickerController.toolPickerDidShowNotification(_:)()
{
  Notification.object.getter();
  if (!v6)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v5, &_sypSgMd);
    return;
  }

  type metadata accessor for PKToolPicker();
  if (swift_dynamicCast())
  {
    if (![v4 _annotationDelegate])
    {
      v1 = v0 + OBJC_IVAR____TtC8PaperKit20ToolPickerController_delegate;
      if (!swift_unknownObjectWeakLoadStrong())
      {

        return;
      }

      v2 = *(v1 + 8);
      ObjectType = swift_getObjectType();
      (*(v2 + 32))(v0, v4, ObjectType, v2);
    }

    swift_unknownObjectRelease();
  }
}

uint64_t @objc ToolPickerController.toolPickerWillShowNotification(_:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = type metadata accessor for Notification();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a1;
  a4(v9);

  return (*(v7 + 8))(v9, v6);
}

char *ToolPickerController.shapeButtonListViewController.getter()
{
  v1 = OBJC_IVAR____TtC8PaperKit20ToolPickerController____lazy_storage___shapeButtonListViewController;
  v2 = *(v0 + OBJC_IVAR____TtC8PaperKit20ToolPickerController____lazy_storage___shapeButtonListViewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8PaperKit20ToolPickerController____lazy_storage___shapeButtonListViewController);
  }

  else
  {
    type metadata accessor for ShapeListViewController();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    *&v4[OBJC_IVAR____TtC8PaperKit23ShapeListViewController_delegate + 8] = &protocol witness table for ToolPickerController;
    swift_unknownObjectWeakAssign();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void closure #1 in ToolPickerController.makeSignaturesViewController(rootViewController:)(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong + OBJC_IVAR____TtC8PaperKit20ToolPickerController_delegate;
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();
    v6 = *(v3 + 8);

    if (v5)
    {
      ObjectType = swift_getObjectType();
      NewCanvasElementDelegate.addNewSignatureItem(_:)(a1, ObjectType, *(v6 + 8));
      swift_unknownObjectRelease();
    }
  }
}

void closure #1 in ToolPickerController.textToolListViewController(_:sender:didSelectAddStickerWithEvent:)(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC8PaperKit20ToolPickerController_stickerPickerVC);
    *(Strong + OBJC_IVAR____TtC8PaperKit20ToolPickerController_stickerPickerVC) = a1;
    v4 = Strong;
    v5 = a1;
  }
}

Swift::Void __swiftcall ToolPickerController.showImageDescriptionViewController()()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC8PaperKit20ToolPickerController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 56))(v1, ObjectType, v3);
    if (v5)
    {
      v21 = v5;
      v6 = OBJC_IVAR____TtC8PaperKit20ToolPickerController_imageDescriptionVC;
      if (*(v1 + OBJC_IVAR____TtC8PaperKit20ToolPickerController_imageDescriptionVC))
      {
        swift_unknownObjectRelease();
        v7 = v21;
      }

      else
      {
        v8 = (*(v3 + 88))(ObjectType, v3);
        v10 = v9;
        v11 = objc_allocWithZone(type metadata accessor for ImageDescriptionViewController(0));
        ImageDescriptionViewController.init(imageDescription:)(v8, v10);
        v12 = *(v1 + v6);
        *(v1 + v6) = v13;
        v14 = v13;

        v15 = one-time initialization token for paperKitBundle;
        v22 = v14;
        if (v15 != -1)
        {
          swift_once();
        }

        v24._object = 0x80000001D408A4A0;
        v16.value._countAndFlagsBits = 0x617A696C61636F4CLL;
        v16.value._object = 0xEB00000000656C62;
        v17._countAndFlagsBits = 0xD000000000000017;
        v17._object = 0x80000001D408A480;
        v18._object = 0x80000001D4085870;
        v24._countAndFlagsBits = 0xD00000000000002CLL;
        v18._countAndFlagsBits = 0xD000000000000011;
        countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v17, v16, paperKitBundle, v18, v24)._countAndFlagsBits;
        v20 = MEMORY[0x1DA6CCED0](countAndFlagsBits);

        [v22 setTitle_];

        [v22 setModalPresentationStyle_];
        *&v22[direct field offset for ImageDescriptionViewController.delegate + 8] = &protocol witness table for ToolPickerController;
        swift_unknownObjectWeakAssign();
        (*(v3 + 16))(v1, 1, ObjectType, v3);
        [v21 presentViewController:v22 animated:1 completion:0];
        swift_unknownObjectRelease();

        v7 = v22;
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

Swift::Void __swiftcall ToolPickerController.stickerPickerViewControllerDidDismiss()()
{
  v1 = *(v0 + OBJC_IVAR____TtC8PaperKit20ToolPickerController_stickerPickerVC);
  *(v0 + OBJC_IVAR____TtC8PaperKit20ToolPickerController_stickerPickerVC) = 0;

  v2 = v0 + OBJC_IVAR____TtC8PaperKit20ToolPickerController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 56))(v0, ObjectType, v3);
    swift_unknownObjectRelease();
    if (v5)
    {
      [v5 becomeFirstResponder];
    }
  }
}

id ToolPickerController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ToolPickerController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void ToolPickerController.imageDescriptionViewControllerDidSave(_:description:)(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v5 = *(v3 + OBJC_IVAR____TtC8PaperKit20ToolPickerController_imageDescriptionVC);
  if (v5)
  {
    type metadata accessor for ImageDescriptionViewController(0);
    v9 = v5;
    v10 = a1;
    LOBYTE(a1) = static NSObject.== infix(_:_:)();

    if (a1)
    {
      v11 = v4 + OBJC_IVAR____TtC8PaperKit20ToolPickerController_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v12 = *(v11 + 8);
        v13 = HIBYTE(a3) & 0xF;
        if ((a3 & 0x2000000000000000) == 0)
        {
          v13 = a2 & 0xFFFFFFFFFFFFLL;
        }

        if (v13)
        {
        }

        else
        {
          a2 = 0;
          a3 = 0;
        }

        ObjectType = swift_getObjectType();
        (*(v12 + 96))(a2, a3, ObjectType, v12);
        swift_unknownObjectRelease();
      }

      ToolPickerController._dismissImageDescriptionViewController()();
    }
  }
}

Swift::Void __swiftcall ToolPickerController._dismissImageDescriptionViewController()()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC8PaperKit20ToolPickerController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 56))(v1, ObjectType, v3);
    swift_unknownObjectRelease();
    if (v5)
    {
      v6 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v7 = swift_allocObject();
      *(v7 + 16) = v6;
      *(v7 + 24) = v5;
      v11[4] = closure #1 in ToolPickerController._dismissImageDescriptionViewController()partial apply;
      v11[5] = v7;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 1107296256;
      v11[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v11[3] = &block_descriptor_73;
      v8 = _Block_copy(v11);
      v9 = v5;

      [v9 dismissViewControllerAnimated:1 completion:v8];

      _Block_release(v8);
      v10 = *(v1 + OBJC_IVAR____TtC8PaperKit20ToolPickerController_imageDescriptionVC);
      *(v1 + OBJC_IVAR____TtC8PaperKit20ToolPickerController_imageDescriptionVC) = 0;
    }
  }
}

void ToolPickerController.imageDescriptionViewControllerDidCancel(_:)(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC8PaperKit20ToolPickerController_imageDescriptionVC;
  v4 = *(v1 + OBJC_IVAR____TtC8PaperKit20ToolPickerController_imageDescriptionVC);
  if (v4)
  {
    type metadata accessor for ImageDescriptionViewController(0);
    v6 = v4;
    v7 = a1;
    LOBYTE(a1) = static NSObject.== infix(_:_:)();

    if (a1)
    {
      v8 = v2 + OBJC_IVAR____TtC8PaperKit20ToolPickerController_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v9 = *(v8 + 8);
        ObjectType = swift_getObjectType();
        v11 = (*(v9 + 56))(v2, ObjectType, v9);
        swift_unknownObjectRelease();
        if (v11)
        {
          v12 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v13 = swift_allocObject();
          *(v13 + 16) = v12;
          *(v13 + 24) = v11;
          v17[4] = partial apply for closure #1 in ToolPickerController._dismissImageDescriptionViewController();
          v17[5] = v13;
          v17[0] = MEMORY[0x1E69E9820];
          v17[1] = 1107296256;
          v17[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
          v17[3] = &block_descriptor_65_0;
          v14 = _Block_copy(v17);
          v15 = v11;

          [v15 dismissViewControllerAnimated:1 completion:v14];

          _Block_release(v14);
          v16 = *(v2 + v3);
          *(v2 + v3) = 0;
        }
      }
    }
  }
}

void ToolPickerController.imageDescriptionViewControllerDidDismiss(_:)(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC8PaperKit20ToolPickerController_imageDescriptionVC;
  v4 = *(v1 + OBJC_IVAR____TtC8PaperKit20ToolPickerController_imageDescriptionVC);
  if (v4)
  {
    type metadata accessor for ImageDescriptionViewController(0);
    v6 = v4;
    v7 = a1;
    LOBYTE(a1) = static NSObject.== infix(_:_:)();

    if (a1)
    {
      v8 = *(v2 + v3);
      *(v2 + v3) = 0;

      v9 = v2 + OBJC_IVAR____TtC8PaperKit20ToolPickerController_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v10 = *(v9 + 8);
        ObjectType = swift_getObjectType();
        v14 = (*(v10 + 56))(v2, ObjectType, v10);
        swift_unknownObjectRelease();
        if (v14)
        {
          if (swift_unknownObjectWeakLoadStrong())
          {
            v12 = *(v9 + 8);
            v13 = swift_getObjectType();
            (*(v12 + 16))(v2, 0, v13, v12);
            swift_unknownObjectRelease();
          }

          [v14 becomeFirstResponder];
        }
      }
    }
  }
}

void closure #1 in ToolPickerController._dismissImageDescriptionViewController()(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = Strong + OBJC_IVAR____TtC8PaperKit20ToolPickerController_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v5 + 8);
      ObjectType = swift_getObjectType();
      (*(v6 + 16))(v4, 0, ObjectType, v6);
      swift_unknownObjectRelease();
    }

    [a2 becomeFirstResponder];
  }
}

void specialized ToolPickerController.toolPickerDidHideNotification(_:)()
{
  Notification.object.getter();
  if (v3)
  {
    type metadata accessor for PKToolPicker();
    if (swift_dynamicCast())
    {
      v0 = [v1 _annotationDelegate];
      swift_unknownObjectRelease();
    }
  }

  else
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v2, &_sypSgMd);
  }
}

uint64_t specialized ToolPickerController.textToolListViewController(_:sender:didSelectAddStickerWithEvent:)(void *a1)
{
  v2 = v1;
  v4 = *&v2[OBJC_IVAR____TtC8PaperKit20ToolPickerController_stickerPickerVC];
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = v4;

  v7 = [a1 presentingViewController];
  if (!v7)
  {
  }

  v8 = v7;
  [v6 dismissCard];
  v9 = [a1 popoverPresentationController];
  v10 = [v9 sourceItem];

  if (!v10)
  {
    v23 = [a1 popoverPresentationController];
    v14 = [v23 sourceView];

    v24 = v14;
    v25 = [a1 popoverPresentationController];
    if (v25)
    {
      v26 = v25;
      [v25 sourceRect];
      v12 = v27;
      v17 = v28;
      v19 = v29;
      v21 = v30;

      goto LABEL_12;
    }

    v12 = 0;
    goto LABEL_11;
  }

  swift_unknownObjectRelease();
  v11 = [a1 popoverPresentationController];
  v12 = 0;
  if (!v11)
  {
    v14 = 0;
    goto LABEL_11;
  }

  v13 = v11;
  v14 = [v11 _realSourceView];

  if (!v14)
  {
LABEL_11:
    v17 = 0;
    v19 = 0;
    v21 = 0;
    goto LABEL_12;
  }

  [v14 bounds];
  v12 = v15;
  v17 = v16;
  v19 = v18;
  v21 = v20;
LABEL_12:
  v31 = swift_allocObject();
  v31[2] = partial apply for closure #1 in ToolPickerController.textToolListViewController(_:sender:didSelectAddStickerWithEvent:);
  v31[3] = v5;
  v31[4] = v2;
  v31[5] = v14;
  v31[6] = v12;
  v31[7] = v17;
  v31[8] = v19;
  v31[9] = v21;
  v31[10] = v8;
  v35[4] = partial apply for closure #1 in static MarkupEditViewController.presentStickerPicker(_:replacing:from:pickerDelegate:completion:);
  v35[5] = v31;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 1107296256;
  v35[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v35[3] = &block_descriptor_37;
  v32 = _Block_copy(v35);

  v33 = v2;
  v34 = v8;

  [a1 dismissViewControllerAnimated:1 completion:v32];

  _Block_release(v32);
}

uint64_t specialized ToolPickerController.textToolListViewController(_:sender:didSelectAddLoupeWithEvent:)()
{
  v1 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v51 = v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit12LoupeElementVGMd);
  v3 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v5 = v39 - v4;
  v6 = type metadata accessor for Color(0);
  v47 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v46);
  v45 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (v39 - v11);
  v13 = type metadata accessor for UnknownProperties();
  v49 = *(v13 - 8);
  v50 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for LoupeElement(0);
  MEMORY[0x1EEE9AC00](v16);
  v48 = v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v39 - v19;
  v21 = v0 + OBJC_IVAR____TtC8PaperKit20ToolPickerController_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v23 = result;
    v43 = v5;
    v44 = v3;
    v24 = *(v21 + 8);
    ObjectType = swift_getObjectType();
    *&v53 = v23;
    v26 = *(*(v24 + 8) + 32);
    v40 = *(v24 + 8);
    v41 = ObjectType;
    v27 = v26(120.0, 120.0);
    v29 = v28;
    v42 = v15;
    UnknownProperties.init()();
    type metadata accessor for CGRect(0);
    _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_3(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
    v53 = 0u;
    v54 = 0u;
    CRRegister.init(wrappedValue:)();
    v30 = v16[5];
    v53 = 0u;
    v54 = 0u;
    v39[2] = v30;
    CRRegister.init(wrappedValue:)();
    v31 = v16[6];
    *&v53 = 0;
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    CRRegister.init(wrappedValue:)();
    *&v53 = 0x3FF8000000000000;
    CRRegister.init(wrappedValue:)();
    v32 = *(v6 + 20);
    v33 = type metadata accessor for UnknownValueProperties();
    (*(*(v33 - 8) + 56))(v8 + v32, 1, 1, v33);
    if (one-time initialization token for extendedSRGBColorSpace != -1)
    {
      swift_once();
    }

    result = CGColorCreate(static Color.extendedSRGBColorSpace, dbl_1F4F510A0);
    if (result)
    {
      v34 = result;
      v39[1] = v31;
      CGColorRef.calculateMinimumHeadroom.getter();
      result = CGColorCreateWithContentHeadroom();
      if (result)
      {
        v35 = result;

        *v8 = v35;
        Color.withAlphaComponent(_:)(v12, 0.5);
        _s8PaperKit5ColorVWOhTm_1(v8, type metadata accessor for Color);
        (*(v47 + 56))(v12, 0, 1, v6);
        outlined init with copy of Color?(v12, v45);
        lazy protocol witness table accessor for type Color? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s8PaperKit5ColorVSgMd);
        *&v53 = 0x4004000000000000;
        CRRegister.init(wrappedValue:)();
        v36 = v16[10];
        UnknownProperties.init()();
        v53 = 0u;
        v54 = 0u;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
        CRRegister.wrappedValue.setter();
        *&v53 = v27 + -60.0;
        *(&v53 + 1) = v29 + -60.0;
        v54 = vdupq_n_s64(0x405E000000000000uLL);
        CRRegister.wrappedValue.setter();
        *&v53 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
        CRRegister.wrappedValue.setter();
        (*(v49 + 40))(&v20[v36], v42, v50);
        outlined init with copy of LoupeElement(v20, v48);
        static CRKeyPath.unique.getter();
        v37 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_3(&lazy protocol witness table cache variable for type LoupeElement and conformance LoupeElement, type metadata accessor for LoupeElement);
        v38 = v43;
        Capsule.init(_:id:)();
        *&v53 = v23;
        (*(v40 + 16))(v38, v16, v37, &protocol witness table for LoupeElement, v41);
        (*(v44 + 8))(v38, v52);
        _s8PaperKit5ColorVWOhTm_1(v20, type metadata accessor for LoupeElement);
        return swift_unknownObjectRelease();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t outlined init with copy of Color?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of LoupeElement(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LoupeElement(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s8PaperKit5ColorVWOhTm_1(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t block_copy_helper_37(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_61Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

unint64_t type metadata accessor for PKToolPicker()
{
  result = lazy cache variable for type metadata for PKToolPicker;
  if (!lazy cache variable for type metadata for PKToolPicker)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for PKToolPicker);
  }

  return result;
}

id CRTextStorage.darkMode.didset(char a1)
{
  v2 = a1 & 1;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
  v42 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v4 = &v40 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GMd);
  v55 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v40 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV9SubstringVy8PaperKit18TextAttributeScopeV_GMd);
  v48 = *(v11 - 8);
  v49 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v45 = &v40 - v12;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd);
  v13 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v53 = &v40 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v17);
  v22 = &v40 - v21;
  if (v1[OBJC_IVAR____TtC8PaperKit13CRTextStorage_darkMode] != v2)
  {
    v50 = OBJC_IVAR____TtC8PaperKit13CRTextStorage_darkMode;
    v41 = v13;
    v23 = OBJC_IVAR____TtC8PaperKit13CRTextStorage_mergeableString;
    v47 = result;
    swift_beginAccess();
    v46 = v16;
    v24 = *(v16 + 16);
    v43 = v22;
    v24(v22, &v1[v23], v47);
    v25 = *&v1[OBJC_IVAR____TtC8PaperKit13CRTextStorage_viewAttributedString];
    v44 = v1;
    v24(v19, &v1[v23], v47);
    v26 = v46;
    v27 = v25;
    v28 = v47;
    v51 = v27;
    v29 = CRAttributedString.count.getter();
    v32 = *(v26 + 8);
    v31 = v26 + 8;
    v30 = v32;
    result = (v32)(v19, v28);
    if (v29 < 0)
    {
LABEL_13:
      __break(1u);
      return result;
    }

    if (v29)
    {
      v40 = v30;
      v46 = v31;
      v33 = v45;
      LODWORD(v50) = v44[v50];
      CRAttributedString.subscript.getter();
      v34 = v49;
      CRAttributedString.Substring.runs.getter();
      (*(v48 + 8))(v33, v34);
      CRAttributedString.Runs.next()();
      v49 = *(v55 + 48);
      if (v49(v10, 1, v5) != 1)
      {
        v48 = *(v55 + 32);
        v35 = (v42 + 8);
        v55 += 32;
        v36 = (v55 - 24);
        while (1)
        {
          (v48)(v7, v10, v5);
          CRAttributedString.Runs.Run.attributes.getter();
          CRAttributedString.Attributes<>.nsAttributes(darkMode:)(v50);
          (*v35)(v4, v52);
          type metadata accessor for NSAttributedStringKey(0);
          lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
          v37.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

          v38 = CRAttributedString.Runs.Run.range.getter();
          result = CRAttributedString.Runs.Run.range.getter();
          if (__OFSUB__(v39, result))
          {
            break;
          }

          [v51 setAttributes:v37.super.isa range:{v38, v39 - result}];

          (*v36)(v7, v5);
          CRAttributedString.Runs.next()();
          if (v49(v10, 1, v5) == 1)
          {
            goto LABEL_8;
          }
        }

        __break(1u);
        goto LABEL_13;
      }

LABEL_8:

      (*(v41 + 8))(v53, v54);
      v40(v43, v47);
    }

    else
    {

      v30(v43, v28);
    }

    return [v44 edited:1 range:0 changeInLength:{objc_msgSend(v44, sel_length), 0}];
  }

  return result;
}

id CRTextStorage.merge(string:)(char *a1)
{
  v146 = a1;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
  v129 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v142 = &v115 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GMd);
  v128 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v115 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v117 = &v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v121 = &v115 - v9;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV9SubstringVy8PaperKit18TextAttributeScopeV_GMd);
  v127 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v122 = &v115 - v10;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd);
  v118 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v141 = &v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v140 = &v115 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV20ObservableDifferenceVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v145 = &v115 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v115 = &v115 - v17;
  v144 = type metadata accessor for MergeResult();
  v139 = *(v144 - 1);
  MEMORY[0x1EEE9AC00](v144);
  v138 = &v115 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v125 = &v115 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v132 = &v115 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v124 = &v115 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v137 = &v115 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v115 - v29;
  v116 = &v115 - v29;
  v31 = OBJC_IVAR____TtC8PaperKit13CRTextStorage_mergeableString;
  swift_beginAccess();
  v32 = *(v20 + 16);
  v33 = v30;
  v34 = v19;
  v32(v33, &v1[v31], v19);
  swift_beginAccess();
  v35 = v138;
  CRAttributedString.merge(_:)();
  swift_endAccess();
  v139[1](v35, v144);
  v36 = v145;
  v138 = v1;
  v135 = v20 + 16;
  v136 = v31;
  v37 = &v1[v31];
  v38 = v137;
  v39 = v34;
  v134 = v32;
  v32(v137, v37, v34);
  lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope> and conformance CRAttributedString<A>();
  v40 = v115;
  CRType.observableDifference(from:)();
  v43 = *(v20 + 8);
  v41 = v20 + 8;
  v42 = v43;
  v43(v38, v39);
  outlined init with copy of CRAttributedString<TextAttributeScope>.ObservableDifference?(v40, v36);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV20ObservableDifferenceVy8PaperKit18TextAttributeScopeV_GMd);
  v45 = *(v44 - 8);
  if ((*(v45 + 48))(v36, 1, v44) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v40, &_s9Coherence18CRAttributedStringV20ObservableDifferenceVy8PaperKit18TextAttributeScopeV_GSgMd);
    v42(v116, v39);
    outlined destroy of StocksKitCurrencyCache.Provider?(v36, &_s9Coherence18CRAttributedStringV20ObservableDifferenceVy8PaperKit18TextAttributeScopeV_GSgMd);
    return 0;
  }

  v46 = CRAttributedString.ObservableDifference.edits.getter();
  (*(v45 + 8))(v36, v44);
  if (!*(v46 + 16))
  {

    outlined destroy of StocksKitCurrencyCache.Provider?(v40, &_s9Coherence18CRAttributedStringV20ObservableDifferenceVy8PaperKit18TextAttributeScopeV_GSgMd);
    v42(v116, v39);
    return 0;
  }

  [v138 beginEditing];
  v47 = *(v46 + 16);
  if (!v47)
  {
LABEL_60:
    result = [v138 endEditing];
    __break(1u);
    return result;
  }

  v48 = 0;
  v130 = OBJC_IVAR____TtC8PaperKit13CRTextStorage_viewAttributedString;
  v120 = OBJC_IVAR____TtC8PaperKit13CRTextStorage_darkMode;
  v131 = (v46 + 32);
  v119 = (v127 + 8);
  v144 = (v128 + 32);
  v145 = (v128 + 48);
  v49 = (v129 + 8);
  v50 = (v128 + 8);
  ++v118;
  v129 = v39;
  v128 = v41;
  v51 = v125;
  v127 = v46;
  v133 = v42;
  v126 = v47;
  do
  {
    if (v48 >= *(v46 + 16))
    {
      goto LABEL_48;
    }

    v137 = v48;
    v56 = &v131[4 * v48];
    v58 = *v56;
    v57 = v56[1];
    if (v56[3])
    {
      v59 = v138;
      [v138 edited:1 range:v58 changeInLength:{v57, 0}];
      v134(v51, &v59[v136], v39);
      v60 = &v57[v58];
      if (__OFADD__(v58, v57))
      {
        goto LABEL_50;
      }

      if (v60 < v58)
      {
        goto LABEL_51;
      }

      v52 = v51;
      if (v58 != v60)
      {
        v61 = *&v138[v130];
        LODWORD(v139) = v138[v120];
        v146 = v61;
        v62 = v122;
        CRAttributedString.subscript.getter();
        v63 = v141;
        v64 = v123;
        CRAttributedString.Substring.runs.getter();
        (*v119)(v62, v64);
        v65 = v117;
        CRAttributedString.Runs.next()();
        v66 = *v145;
        if ((*v145)(v65, 1, v3) != 1)
        {
          v67 = *v144;
          while (1)
          {
            v67(v5, v65, v3);
            v68 = v142;
            CRAttributedString.Runs.Run.attributes.getter();
            CRAttributedString.Attributes<>.nsAttributes(darkMode:)(v139);
            (*v49)(v68, v143);
            type metadata accessor for NSAttributedStringKey(0);
            lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
            v69.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

            v70 = CRAttributedString.Runs.Run.range.getter();
            v71 = CRAttributedString.Runs.Run.range.getter();
            if (__OFSUB__(v72, v71))
            {
              break;
            }

            [v146 setAttributes:v69.super.isa range:{v70, v72 - v71}];

            (*v50)(v5, v3);
            v73 = v141;
            CRAttributedString.Runs.next()();
            if (v66(v65, 1, v3) == 1)
            {
              v63 = v73;
              v51 = v125;
              goto LABEL_6;
            }
          }

          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

LABEL_6:
        v52 = v51;
        goto LABEL_7;
      }
    }

    else
    {
      v74 = v56[2];
      v75 = v138;
      [v138 edited:2 range:v58 changeInLength:{v57, v74}];
      v146 = v57;
      v76 = __OFADD__(v57, v74);
      v77 = &v74[v57];
      if (v76)
      {
        goto LABEL_49;
      }

      v78 = v75;
      v79 = *&v75[v130];
      v80 = v124;
      v134(v124, &v78[v136], v39);
      v81 = v39;
      v139 = v79;
      v82 = CRAttributedString.attributedString.getter();
      v133(v80, v81);
      v83 = [v82 string];
      if (!v83)
      {
        goto LABEL_59;
      }

      v84 = v83;

      v85 = v77;
      v86 = [v84 substringWithRange_];

      if (!v86)
      {
        v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v86 = MEMORY[0x1DA6CCED0](v87);
      }

      v88 = v139;
      [v139 replaceCharactersInRange:v58 withString:{v146, v86}];

      v52 = v132;
      v39 = v129;
      v134(v132, &v138[v136], v129);
      v76 = __OFADD__(v58, v85);
      v89 = &v85[v58];
      v51 = v125;
      if (v76)
      {
        goto LABEL_52;
      }

      if (v89 < v58)
      {
        goto LABEL_53;
      }

      v90 = v121;
      if (v58 != v89)
      {
        v91 = *&v138[v130];
        LODWORD(v139) = v138[v120];
        v146 = v91;
        v92 = v122;
        CRAttributedString.subscript.getter();
        v93 = v140;
        v94 = v123;
        CRAttributedString.Substring.runs.getter();
        v95 = v93;
        (*v119)(v92, v94);
        CRAttributedString.Runs.next()();
        v96 = *v145;
        if ((*v145)(v90, 1, v3) != 1)
        {
          v97 = *v144;
          while (1)
          {
            v97(v5, v90, v3);
            v98 = v142;
            CRAttributedString.Runs.Run.attributes.getter();
            CRAttributedString.Attributes<>.nsAttributes(darkMode:)(v139);
            (*v49)(v98, v143);
            type metadata accessor for NSAttributedStringKey(0);
            lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
            v99.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

            v100 = CRAttributedString.Runs.Run.range.getter();
            v101 = CRAttributedString.Runs.Run.range.getter();
            if (__OFSUB__(v102, v101))
            {
              goto LABEL_47;
            }

            [v146 setAttributes:v99.super.isa range:{v100, v102 - v101}];

            (*v50)(v5, v3);
            v103 = v140;
            CRAttributedString.Runs.next()();
            if (v96(v90, 1, v3) == 1)
            {
              v63 = v103;
              v52 = v132;
              v51 = v125;
              goto LABEL_7;
            }
          }
        }

        v63 = v95;
        v52 = v132;
LABEL_7:

        (*v118)(v63, v147);
        v39 = v129;
      }
    }

    v53 = v137 + 1;
    v54 = v133;
    v133(v52, v39);
    v48 = v53;
    v55 = v126;
    v46 = v127;
  }

  while (v48 != v126);
  [v138 endEditing];
  v104 = *(v46 + 16);
  v105 = v115;
  v106 = v116;
  if (!v104)
  {
    goto LABEL_54;
  }

  if (v55 > v104)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v107 = v55;
  v108 = *v131;
  v109 = *(v46 + 40);
  v110 = (v46 + 32 * v107);
  v111 = *v110;
  v112 = v110[1];

  outlined destroy of StocksKitCurrencyCache.Provider?(v105, &_s9Coherence18CRAttributedStringV20ObservableDifferenceVy8PaperKit18TextAttributeScopeV_GSgMd);
  v54(v106, v39);
  v113 = &v108[v109];
  if (__OFADD__(v108, v109))
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (__OFADD__(v111, v112))
  {
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (v113 <= &v112[v111])
  {
    v113 = &v112[v111];
  }

  if (v108 >= v111)
  {
    result = v111;
  }

  else
  {
    result = v108;
  }

  if (__OFSUB__(v113, result))
  {
    goto LABEL_58;
  }

  return result;
}

id CRTextStorage.init()()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - v4;
  v0[OBJC_IVAR____TtC8PaperKit13CRTextStorage_darkMode] = 0;
  v0[OBJC_IVAR____TtC8PaperKit13CRTextStorage_isFixingAttributes] = 0;
  lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
  CRAttributedString.init()();
  v6 = OBJC_IVAR____TtC8PaperKit13CRTextStorage_mergeableString;
  (*(v3 + 32))(&v0[OBJC_IVAR____TtC8PaperKit13CRTextStorage_mergeableString], v5, v2);
  swift_beginAccess();
  (*(v3 + 16))(v5, &v0[v6], v2);
  v7 = specialized static CRTextStorage.viewAttributedString(from:darkMode:)(v5, 0);
  (*(v3 + 8))(v5, v2);
  *&v0[OBJC_IVAR____TtC8PaperKit13CRTextStorage_viewAttributedString] = v7;
  v10.receiver = v0;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

Swift::Void __swiftcall CRTextStorage.replaceCharacters(in:with:)(__C::_NSRange in, Swift::String with)
{
  object = with._object;
  countAndFlagsBits = with._countAndFlagsBits;
  length = in.length;
  location = in.location;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v33 - v14;
  if (__OFADD__(location, length))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (location + length < location)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v34 = v15;
  v35 = v10;
  v36 = v13;
  v37 = v12;
  v38 = v8;
  v16 = OBJC_IVAR____TtC8PaperKit13CRTextStorage_mergeableString;
  v17 = v2;
  swift_beginAccess();
  CRAttributedString.replaceSubrange(_:with:)();
  swift_endAccess();
  v18 = OBJC_IVAR____TtC8PaperKit13CRTextStorage_viewAttributedString;
  v19 = *&v2[OBJC_IVAR____TtC8PaperKit13CRTextStorage_viewAttributedString];
  v20 = MEMORY[0x1DA6CCED0](countAndFlagsBits, object);
  v39 = length;
  v21 = length;
  v22 = countAndFlagsBits;
  v23 = v17;
  [v19 replaceCharactersInRange:location withString:{v21, v20}];

  v24 = HIBYTE(object) & 0xF;
  if ((object & 0x2000000000000000) == 0)
  {
    v24 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {
    v25 = *&v17[v18];
    v26 = v38;
    v27 = &v17[v16];
    v28 = v35;
    (*(v38 + 16))(v35, v27, v7);
    v29 = v25;
    v30 = v34;
    CRAttributedString.attributes(at:effectiveRange:)();
    (*(v26 + 8))(v28, v7);
    CRAttributedString.Attributes<>.nsAttributes(darkMode:)(v23[OBJC_IVAR____TtC8PaperKit13CRTextStorage_darkMode]);
    (*(v36 + 8))(v30, v37);
    type metadata accessor for NSAttributedStringKey(0);
    lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v29 setAttributes:isa range:{location, MEMORY[0x1DA6CD060](v22, object)}];
  }

  v32 = MEMORY[0x1DA6CD060](v22, object);
  if (!__OFSUB__(v32, v39))
  {
    [v23 edited:2 range:location changeInLength:{v39, v32 - v39}];
    return;
  }

LABEL_11:
  __break(1u);
}

Swift::Void __swiftcall CRTextStorage.setAttributes(_:range:)(Swift::OpaquePointer_optional _, __C::_NSRange range)
{
  v3 = v2;
  location = range.location;
  v5 = *&_.is_nil;
  rawValue = _.value._rawValue;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = *&v3[OBJC_IVAR____TtC8PaperKit13CRTextStorage_viewAttributedString];
  if (rawValue)
  {
    type metadata accessor for NSAttributedStringKey(0);
    lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
    v11 = v10;
    v12.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v13 = v10;
    v12.super.isa = 0;
  }

  [v10 setAttributes:v12.super.isa range:{v5, location}];

  if ((v3[OBJC_IVAR____TtC8PaperKit13CRTextStorage_isFixingAttributes] & 1) == 0)
  {
    if (rawValue)
    {
      v14 = rawValue;
    }

    else
    {
      v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    }

    v15 = v3[OBJC_IVAR____TtC8PaperKit13CRTextStorage_darkMode];

    CRAttributedString.Attributes<>.init(nsAttributes:darkMode:)(v14, v15, v9);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
    (*(*(v16 - 8) + 56))(v9, 0, 1, v16);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
    CRAttributedString.setAttributes(_:range:)();
    swift_endAccess();
    outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  }

  [v3 edited:1 range:v5 changeInLength:{location, 0}];
}

void @objc CRTextStorage.init(fileURL:options:documentAttributes:)()
{
  v0 = type metadata accessor for URL();
  MEMORY[0x1EEE9AC00](v0 - 8);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t type metadata accessor for CRTextStorage()
{
  result = type metadata singleton initialization cache for CRTextStorage;
  if (!type metadata singleton initialization cache for CRTextStorage)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for CRTextStorage()
{
  type metadata accessor for CRAttributedString<TextAttributeScope>();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for CRAttributedString<TextAttributeScope>()
{
  if (!lazy cache variable for type metadata for CRAttributedString<TextAttributeScope>)
  {
    lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
    v0 = type metadata accessor for CRAttributedString();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CRAttributedString<TextAttributeScope>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope> and conformance CRAttributedString<A>()
{
  result = lazy protocol witness table cache variable for type CRAttributedString<TextAttributeScope> and conformance CRAttributedString<A>;
  if (!lazy protocol witness table cache variable for type CRAttributedString<TextAttributeScope> and conformance CRAttributedString<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CRAttributedString<TextAttributeScope> and conformance CRAttributedString<A>);
  }

  return result;
}

uint64_t outlined init with copy of CRAttributedString<TextAttributeScope>.ObservableDifference?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV20ObservableDifferenceVy8PaperKit18TextAttributeScopeV_GSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id specialized static CRTextStorage.viewAttributedString(from:darkMode:)(uint64_t a1, int a2)
{
  v26 = a2;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
  v23 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v3 = &v20 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd);
  v21 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v14 = CRAttributedString.attributedString.getter();
  v27 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];

  CRAttributedString.runs.getter();
  v28 = v13;
  v29 = v11;
  CRAttributedString.Runs.next()();
  v24 = *(v5 + 48);
  if (v24(v10, 1, v4) == 1)
  {
LABEL_5:
    (*(v21 + 8))(v28, v29);
    return v27;
  }

  else
  {
    v15 = (v23 + 8);
    v22 = *(v5 + 32);
    v23 = v5 + 32;
    while (1)
    {
      v22(v7, v10, v4);
      CRAttributedString.Runs.Run.attributes.getter();
      CRAttributedString.Attributes<>.nsAttributes(darkMode:)(v26 & 1);
      (*v15)(v3, v25);
      type metadata accessor for NSAttributedStringKey(0);
      lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
      v16.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v17 = CRAttributedString.Runs.Run.range.getter();
      result = CRAttributedString.Runs.Run.range.getter();
      if (__OFSUB__(v19, result))
      {
        break;
      }

      [v27 setAttributes:v16.super.isa range:{v17, v19 - result}];

      (*(v5 + 8))(v7, v4);
      CRAttributedString.Runs.next()();
      if (v24(v10, 1, v4) == 1)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

id _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDy8PaperKit17FormAnalyticsKeysOSo8NSObjectCG_SS_AJts5NeverOTg503_s8d5Kit17fgh4OSo8i36CSSAEIgygoo_AC3key_AE5valuetSS_AEts5j100OIegnrzr_TR03_s8a5Kit13cd35C13sendEventLazy3key7payloadyAA0cD4e10O_SDyAHSo8f31CGyXAtFSDySSAJGSgycfU_Q24_AJtAH_X5XEfU_Tf3nnnpf_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v34 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = v34;
  v4 = v3 + 64;
  result = _HashTable.startBucket.getter();
  v6 = result;
  v7 = 0;
  v8 = *(v3 + 36);
  v27 = v3 + 72;
  v28 = v1;
  v29 = v8;
  v30 = v3 + 64;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(v3 + 36))
    {
      goto LABEL_23;
    }

    v31 = v7;
    v11 = *(*(v3 + 56) + 8 * v6);
    v12 = FormAnalyticsKeys.rawValue.getter(*(*(v3 + 48) + v6));
    v32 = v13;
    v33 = v12;
    v14 = v3;
    v16 = *(v34 + 16);
    v15 = *(v34 + 24);
    result = v11;
    v17 = result;
    if (v16 >= v15 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
    }

    *(v34 + 16) = v16 + 1;
    v18 = (v34 + 24 * v16);
    v18[4] = v33;
    v18[5] = v32;
    v18[6] = v17;
    v9 = 1 << *(v14 + 32);
    if (v6 >= v9)
    {
      goto LABEL_24;
    }

    v4 = v30;
    v19 = *(v30 + 8 * v10);
    if ((v19 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    v3 = v14;
    v20 = *(v14 + 36);
    v8 = v29;
    if (v29 != v20)
    {
      goto LABEL_26;
    }

    v21 = v19 & (-2 << (v6 & 0x3F));
    if (v21)
    {
      v9 = __clz(__rbit64(v21)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v22 = v10 << 6;
      v23 = v10 + 1;
      v24 = (v27 + 8 * v10);
      while (v23 < (v9 + 63) >> 6)
      {
        v26 = *v24++;
        v25 = v26;
        v22 += 64;
        ++v23;
        if (v26)
        {
          result = outlined consume of [AnalyticsKeys : NSObject].Index._Variant(v6, v29, 0);
          v9 = __clz(__rbit64(v25)) + v22;
          goto LABEL_4;
        }
      }

      result = outlined consume of [AnalyticsKeys : NSObject].Index._Variant(v6, v29, 0);
    }

LABEL_4:
    v7 = v31 + 1;
    v6 = v9;
    if (v31 + 1 == v28)
    {
      return v2;
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
LABEL_26:
  __break(1u);
  return result;
}

unint64_t FormAnalyticsKeys.rawValue.getter(char a1)
{
  result = 0x746E656D75636F64;
  switch(a1)
  {
    case 1:
    case 37:
      return result;
    case 2:
      result = 0x6F74636576666470;
      break;
    case 3:
      result = 0x616D746962666470;
      break;
    case 4:
      result = 0x6567646977666470;
      break;
    case 5:
      result = 0x6567616D69;
      break;
    case 6:
      result = 1685221239;
      break;
    case 7:
      result = 0x7365676170;
      break;
    case 8:
    case 66:
    case 67:
      result = 0xD00000000000001ELL;
      break;
    case 9:
    case 21:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0x6154656C62756F64;
      break;
    case 11:
      result = 0x7474754273756C70;
      break;
    case 12:
      result = 0x657474656C6170;
      break;
    case 13:
      result = 0xD000000000000017;
      break;
    case 14:
      result = 0x6C6C69666F747561;
      break;
    case 15:
      result = 0x796C6C61756E616DLL;
      break;
    case 16:
      result = 0x742077656E206F6ELL;
      break;
    case 17:
      result = 0x74786574206F6ELL;
      break;
    case 18:
      result = 0xD00000000000001BLL;
      break;
    case 19:
    case 61:
      result = 0xD000000000000016;
      break;
    case 20:
      result = 0xD000000000000017;
      break;
    case 22:
      result = 0xD000000000000017;
      break;
    case 23:
      result = 0x6974616D6F747561;
      break;
    case 24:
      result = 0x746963696C707865;
      break;
    case 25:
      result = 1701736302;
      break;
    case 26:
      result = 0xD000000000000023;
      break;
    case 27:
      result = 0x74656C6544646964;
      break;
    case 28:
      result = 0xD000000000000015;
      break;
    case 29:
    case 41:
    case 54:
      result = 0xD000000000000018;
      break;
    case 30:
    case 31:
    case 46:
    case 57:
      result = 0xD00000000000001CLL;
      break;
    case 32:
    case 65:
      result = 0xD00000000000002CLL;
      break;
    case 33:
      result = 0x6574614C6E61656DLL;
      break;
    case 34:
      result = 0x6E6574614C78616DLL;
      break;
    case 35:
      result = 0x5479636E6574616CLL;
      break;
    case 36:
      result = 0xD000000000000031;
      break;
    case 38:
    case 39:
    case 40:
      result = 0x657079546D726F66;
      break;
    case 42:
    case 62:
      result = 0xD000000000000013;
      break;
    case 43:
      result = 0xD000000000000017;
      break;
    case 44:
    case 45:
    case 48:
    case 51:
      result = 0xD000000000000022;
      break;
    case 47:
      result = 0xD000000000000020;
      break;
    case 49:
    case 50:
      result = 0xD000000000000025;
      break;
    case 52:
      result = 0xD000000000000010;
      break;
    case 53:
      result = 0x4674696445646964;
      break;
    case 55:
      result = 0xD000000000000017;
      break;
    case 56:
    case 60:
      result = 0xD00000000000002ALL;
      break;
    case 58:
      result = 0xD000000000000028;
      break;
    case 59:
    case 64:
      result = 0xD000000000000029;
      break;
    case 63:
      result = 0xD00000000000001FLL;
      break;
    case 68:
      result = 0x746553746F6ELL;
      break;
    default:
      result = 0xD000000000000036;
      break;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance FormAnalyticsKeys(char *a1, char *a2)
{
  v2 = *a2;
  v3 = FormAnalyticsKeys.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == FormAnalyticsKeys.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance FormAnalyticsKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  FormAnalyticsKeys.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance FormAnalyticsKeys()
{
  FormAnalyticsKeys.rawValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FormAnalyticsKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  FormAnalyticsKeys.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance FormAnalyticsKeys@<X0>(_BYTE *a1@<X8>)
{
  result = specialized FormAnalyticsKeys.init(rawValue:)();
  *a1 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance FormAnalyticsKeys@<X0>(unint64_t *a1@<X8>)
{
  result = FormAnalyticsKeys.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Void __swiftcall FormTextFieldAnalytics.recordEvent()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8PaperKit17FormAnalyticsKeysO_So8NSObjectCtGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D40684E0;
  *(inited + 32) = 1;
  if (one-time initialization token for manager != -1)
  {
    swift_once();
  }

  *(inited + 40) = specialized FormAnalytics.documentType(from:)(*(v0 + 16));
  *(inited + 48) = 8;
  *(inited + 56) = specialized FormAnalytics.textFieldManuallyCreatedValue(from:)(*(v0 + 17));
  *(inited + 64) = 13;
  v2 = FormAnalyticsKeys.rawValue.getter(*(v0 + 18));
  v3 = MEMORY[0x1DA6CCED0](v2);

  *(inited + 72) = v3;
  *(inited + 80) = 18;
  type metadata accessor for NSNumber();
  *(inited + 88) = NSNumber.init(BOOLeanLiteral:)(*(v0 + 19));
  *(inited + 96) = 19;
  v4 = *(v0 + 24);
  *(inited + 104) = v4;
  *(inited + 112) = 20;
  *(inited + 120) = v4;
  *(inited + 128) = 21;
  v5 = *(v0 + 32);
  *(inited + 136) = v5;
  *(inited + 144) = 22;
  v6 = *(v0 + 64);
  if (v6 == 2)
  {
    v7 = 24;
  }

  else
  {
    v7 = 25;
  }

  if (v6 == 3)
  {
    v8 = 23;
  }

  else
  {
    v8 = v7;
  }

  v9 = FormAnalyticsKeys.rawValue.getter(v8);
  v11 = v10;
  v12 = v4;
  v13 = v5;
  v14 = MEMORY[0x1DA6CCED0](v9, v11);

  *(inited + 152) = v14;
  *(inited + 160) = 26;
  *(inited + 168) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(inited + 176) = 27;
  *(inited + 184) = NSNumber.init(BOOLeanLiteral:)(*(v0 + 48));
  *(inited + 192) = 28;
  *(inited + 200) = NSNumber.init(BOOLeanLiteral:)(*(v0 + 49));
  *(inited + 208) = 29;
  *(inited + 216) = NSNumber.init(BOOLeanLiteral:)(*(v0 + 50));
  *(inited + 224) = 30;
  *(inited + 232) = NSNumber.init(BOOLeanLiteral:)(*(v0 + 51));
  *(inited + 240) = 31;
  *(inited + 248) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC8PaperKit17FormAnalyticsKeysO_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit17FormAnalyticsKeysO_So8NSObjectCtMd);
  swift_arrayDestroy();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  v17 = MEMORY[0x1DA6CCED0](0xD000000000000036, 0x80000001D40808F0);
  v18 = swift_allocObject();
  *(v18 + 16) = partial apply for implicit closure #1 in FormTextFieldAnalytics.recordEvent();
  *(v18 + 24) = v16;
  v20[4] = closure #1 in FormAnalytics.sendEventLazy(key:payload:)partial apply;
  v20[5] = v18;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 1107296256;
  v20[2] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v20[3] = &block_descriptor_150;
  v19 = _Block_copy(v20);

  AnalyticsSendEventLazy();
  _Block_release(v19);
}

uint64_t FormTextFieldAnalytics.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t FormTextFieldAnalytics.init()()
{
  *(v0 + 16) = 1066052;
  v1 = *MEMORY[0x1E69DE510];
  *(v0 + 24) = *MEMORY[0x1E69DE510];
  *(v0 + 32) = v1;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  v2 = v1;
  return v0;
}

uint64_t FormPageAnalytics.update(with:)()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v2 = result;
  v44 = v0;
  FormFillingView.calculateCountTextFieldsUsed(with:)();
  v3 = AnyCanvas.formFieldElements.getter();
  v4 = v3;
  v47 = MEMORY[0x1E69E7CC0];
  if (v3 >> 62)
  {
    goto LABEL_40;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v6 = MEMORY[0x1E69E7CC0];
    v7 = MEMORY[0x1E69E7D40];
    v46 = v2;
    if (!i)
    {
      break;
    }

    v8 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1DA6CE0C0](v8, v4);
      }

      else
      {
        if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v2 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v11 = (*((*v7 & *v9) + 0x318))();
      if (v11 && (v12 = *(v11 + OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_analytics), v13 = v11, , v13, LODWORD(v13) = *(v12 + 64), , v13 == 2))
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v8;
      if (v2 == i)
      {
        v2 = v46;
        v14 = v47;
        v6 = MEMORY[0x1E69E7CC0];
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    ;
  }

  v14 = MEMORY[0x1E69E7CC0];
LABEL_18:

  if ((v14 & 0x8000000000000000) == 0 && (v14 & 0x4000000000000000) == 0)
  {
    v15 = *(v14 + 16);
    goto LABEL_21;
  }

  while (1)
  {
    v15 = __CocoaSet.count.getter();
LABEL_21:

    v16 = *(v2 + OBJC_IVAR____TtC8PaperKit15FormFillingView_signatureFieldsSigned);
    v17 = __OFADD__(v15, v16);
    v18 = v15 + v16;
    if (!v17)
    {
      break;
    }

    __break(1u);
  }

  v19 = OBJC_IVAR____TtC8PaperKit15FormFillingView_analytics;
  *(*(v2 + OBJC_IVAR____TtC8PaperKit15FormFillingView_analytics) + 88) = v18;
  v20 = AnyCanvas.formFieldElements.getter();
  v4 = v20;
  v47 = v6;
  if (!(v20 >> 62))
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v45 = v19;
    if (!v21)
    {
      goto LABEL_44;
    }

    goto LABEL_24;
  }

  v21 = __CocoaSet.count.getter();
  v45 = v19;
  if (v21)
  {
LABEL_24:
    v22 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x1DA6CE0C0](v22, v4);
      }

      else
      {
        if (v22 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v23 = *(v4 + 8 * v22 + 32);
      }

      v24 = v23;
      v2 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_38;
      }

      v25 = (*((*v7 & *v23) + 0x318))();
      if (v25 && (v26 = *(v25 + OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_analytics), v27 = v25, , v27, LODWORD(v27) = *(v26 + 64), , v27 == 3))
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v22;
      if (v2 == v21)
      {
        v2 = v46;
        v28 = v47;
        v19 = v45;
        v6 = MEMORY[0x1E69E7CC0];
        goto LABEL_45;
      }
    }
  }

LABEL_44:
  v28 = v6;
LABEL_45:

  if (v28 < 0 || (v28 & 0x4000000000000000) != 0)
  {
    v29 = __CocoaSet.count.getter();
  }

  else
  {
    v29 = *(v28 + 16);
  }

  *(*(v2 + v19) + 96) = v29;
  v30 = AnyCanvas.formFieldElements.getter();
  v31 = v30;
  v48 = v6;
  if (v30 >> 62)
  {
    goto LABEL_64;
  }

  for (j = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = __CocoaSet.count.getter())
  {
    v33 = 0;
    v19 = v31 & 0xC000000000000001;
    while (1)
    {
      if (v19)
      {
        v34 = MEMORY[0x1DA6CE0C0](v33, v31);
      }

      else
      {
        if (v33 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_63;
        }

        v34 = *(v31 + 8 * v33 + 32);
      }

      v35 = v34;
      v2 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      v36 = (*((*v7 & *v34) + 0x318))();
      if (v36 && (v37 = *(v36 + OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_analytics), v38 = v36, , v38, LODWORD(v38) = *(v37 + 64), , v38 == 1))
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v33;
      if (v2 == j)
      {
        v2 = v46;
        v39 = v48;
        v19 = v45;
        goto LABEL_66;
      }
    }

    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    ;
  }

  v39 = MEMORY[0x1E69E7CC0];
LABEL_66:

  if (v39 < 0 || (v39 & 0x4000000000000000) != 0)
  {
    goto LABEL_74;
  }

  for (k = *(v39 + 16); ; k = __CocoaSet.count.getter())
  {

    *(*(v2 + v19) + 104) = k;
    FormFillingView.calculateCountTextFieldsWithNoTextEntry(with:)();
    result = swift_unknownObjectRelease();
    v41 = v44[11];
    v42 = v44[12];
    v17 = __OFADD__(v41, v42);
    v43 = v41 + v42;
    if (!v17)
    {
      break;
    }

    __break(1u);
LABEL_74:
    ;
  }

  v44[10] = v43;
  return result;
}

uint64_t FormPageAnalytics.__deallocating_deinit()
{
  outlined destroy of weak AnyContainerCanvasElementView?(v0 + 120);

  return swift_deallocClassInstance();
}

uint64_t FormPageAnalytics.init()()
{
  *(v0 + 16) = 1140850756;
  *(v0 + 128) = 0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  swift_unknownObjectWeakInit();
  return v0;
}

uint64_t Dictionary<>.pageAnalytics()(uint64_t a1)
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathV3key_8PaperKit17FormPageAnalyticsC5valuetMd);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v37 = &v33 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v33 - v6;
  v7 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v42 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v9 = a1 + 64;
    result = _HashTable.startBucket.getter();
    v10 = result;
    v11 = 0;
    v33 = a1 + 72;
    v34 = v7;
    v35 = a1 + 64;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v9 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_20;
      }

      v14 = *(a1 + 36);
      v40 = v11;
      v41 = v14;
      v15 = *(a1 + 48);
      v16 = type metadata accessor for CRKeyPath();
      v17 = *(v16 - 8);
      v18 = v17;
      v19 = v15 + *(v17 + 72) * v10;
      v20 = v36;
      (*(v17 + 16))(v36, v19, v16);
      v21 = *(*(a1 + 56) + 8 * v10);
      v22 = v37;
      (*(v18 + 32))(v37, v20, v16);
      *&v22[*(v39 + 48)] = v21;
      v23 = v22;
      v24 = v38;
      outlined init with take of (key: CRKeyPath, value: FormPageAnalytics)(v23, v38);
      v25 = *(v18 + 8);

      v25(v24, v16);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v12 = 1 << *(a1 + 32);
      if (v10 >= v12)
      {
        goto LABEL_21;
      }

      v9 = v35;
      v26 = *(v35 + 8 * v13);
      if ((v26 & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      if (v41 != *(a1 + 36))
      {
        goto LABEL_23;
      }

      v27 = v26 & (-2 << (v10 & 0x3F));
      if (v27)
      {
        v12 = __clz(__rbit64(v27)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v28 = v13 << 6;
        v29 = v13 + 1;
        v30 = (v33 + 8 * v13);
        while (v29 < (v12 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            result = outlined consume of [AnalyticsKeys : NSObject].Index._Variant(v10, v41, 0);
            v12 = __clz(__rbit64(v31)) + v28;
            goto LABEL_4;
          }
        }

        result = outlined consume of [AnalyticsKeys : NSObject].Index._Variant(v10, v41, 0);
      }

LABEL_4:
      v11 = v40 + 1;
      v10 = v12;
      if (v40 + 1 == v34)
      {
        return v42;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  return result;
}

unint64_t one-time initialization function for manager()
{
  type metadata accessor for FormAnalytics();
  v0 = swift_allocObject();
  *(v0 + 16) = 791357252;
  *(v0 + 20) = 0;
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9Coherence9CRKeyPathV_8PaperKit17FormPageAnalyticsCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v0 + 24) = result;
  static FormAnalytics.manager = v0;
  return result;
}

uint64_t FormAnalytics.merge(_:for:)(char *a1, void *a2)
{
  v5 = type metadata accessor for CRKeyPath();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  FormPageAnalytics.update(with:)();
  if (FormAnalyticsKeys.rawValue.getter(a1[16]) == 0x746553746F6ELL && v9 == 0xE600000000000000)
  {
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
      *(v2 + 16) = a1[16];
    }
  }

  if (a1[17] == 1)
  {
    *(v2 + 20) = 1;
  }

  if (a1[18] == 1)
  {
    *(v2 + 21) = 1;
  }

  if (FormAnalyticsKeys.rawValue.getter(a1[19]) == 0xD000000000000020 && 0x80000001D4080D10 == v12)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {
      *(v2 + 19) = a1[19];
    }
  }

  (*((*MEMORY[0x1E69E7D40] & *a2) + 0x448))(v13);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v2 + 24);
  *(v2 + 24) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, v8, isUniquelyReferenced_nonNull_native);
  (*(v6 + 8))(v8, v5);
  *(v2 + 24) = v17;
  return swift_endAccess();
}

uint64_t closure #1 in FormAnalytics.sendEventLazy(key:payload:)(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDy8PaperKit17FormAnalyticsKeysOSo8NSObjectCG_SS_AJts5NeverOTg503_s8d5Kit17fgh4OSo8i36CSSAEIgygoo_AC3key_AE5valuetSS_AEts5j100OIegnrzr_TR03_s8a5Kit13cd35C13sendEventLazy3key7payloadyAA0cD4e10O_SDyAHSo8f31CGyXAtFSDySSAJGSgycfU_Q24_AJtAH_X5XEfU_Tf3nnnpf_nTf1cn_n(v1);

  if (v2[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo8NSObjectCGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v6 = v3;

  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v4, 1, &v6);

  return v6;
}

uint64_t specialized Sequence<>.max()(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

Swift::Void __swiftcall FormAnalytics.recordSessionEvent()()
{
  swift_beginAccess();
  v137 = v0;
  if (!*(*(v0 + 24) + 16))
  {
LABEL_29:
    v7 = 0;
LABEL_30:
    v18 = v7;
    goto LABEL_31;
  }

  v2 = Dictionary<>.pageAnalytics()(v1);
  v3 = v2;
  v4 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
LABEL_278:
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v7 = 0;
  while (v5 != v6)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1DA6CE0C0](v6, v3);
      if (__OFADD__(v6, 1))
      {
LABEL_14:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_249:
        __break(1u);
LABEL_250:
        __break(1u);
LABEL_251:
        __break(1u);
LABEL_252:
        __break(1u);
LABEL_253:
        __break(1u);
LABEL_254:
        __break(1u);
LABEL_255:
        __break(1u);
LABEL_256:
        __break(1u);
LABEL_257:
        __break(1u);
LABEL_258:
        __break(1u);
LABEL_259:
        __break(1u);
LABEL_260:
        __break(1u);
LABEL_261:
        __break(1u);
LABEL_262:
        __break(1u);
LABEL_263:
        __break(1u);
LABEL_264:
        __break(1u);
LABEL_265:
        __break(1u);
LABEL_266:
        __break(1u);
LABEL_267:
        __break(1u);
LABEL_268:
        __break(1u);
LABEL_269:
        __break(1u);
LABEL_270:
        __break(1u);
LABEL_271:
        __break(1u);
LABEL_272:
        __break(1u);
LABEL_273:
        __break(1u);
LABEL_274:
        __break(1u);
LABEL_275:
        __break(1u);
LABEL_276:
        __break(1u);
LABEL_277:
        __break(1u);
        goto LABEL_278;
      }

      if (__OFADD__(v6, 1))
      {
        goto LABEL_14;
      }
    }

    v9 = *(v8 + 40);

    ++v6;
    v10 = __OFADD__(v7, v9);
    v7 += v9;
    if (v10)
    {
      goto LABEL_249;
    }
  }

  if (!*(*(v137 + 24) + 16))
  {
    goto LABEL_30;
  }

  v12 = Dictionary<>.pageAnalytics()(v11);
  v3 = v12;
  v4 = v12 & 0xFFFFFFFFFFFFFF8;
  if (v12 >> 62)
  {
    inited = __CocoaSet.count.getter();
  }

  else
  {
    inited = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = 0;
  v15 = 0;
  while (inited != v14)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x1DA6CE0C0](v14, v3);
      if (__OFADD__(v14, 1))
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (v14 >= *(v4 + 16))
      {
        goto LABEL_276;
      }

      if (__OFADD__(v14, 1))
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }
    }

    v17 = *(v16 + 48);

    ++v14;
    v10 = __OFADD__(v15, v17);
    v15 += v17;
    if (v10)
    {
      goto LABEL_277;
    }
  }

  v18 = v7 + v15;
  if (__OFADD__(v7, v15))
  {
    __break(1u);
LABEL_70:
    v4 = 0;
    goto LABEL_71;
  }

LABEL_31:
  v136 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8PaperKit17FormAnalyticsKeysO_So8NSObjectCtGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D40684F0;
  *(inited + 32) = 37;
  *(inited + 40) = specialized FormAnalytics.documentType(from:)(*(v137 + 16));
  *(inited + 48) = 38;
  v19 = *(v137 + 17);
  v20 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  v21 = v19 == 40;
  v22 = v19 == 41;
  v23 = 2;
  if (v22)
  {
    v24 = 2;
  }

  else
  {
    v24 = v21;
  }

  *(inited + 56) = [v20 initWithInteger_];
  *(inited + 64) = 42;
  v25 = *(v137 + 18);
  if (v25 != 45)
  {
    v23 = v25 == 44;
  }

  *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(inited + 80) = 46;
  *(inited + 88) = specialized FormAnalytics.formFillingModeEntryModality(from:)(*(v137 + 19));
  *(inited + 96) = 52;
  type metadata accessor for NSNumber();
  *(inited + 104) = NSNumber.init(BOOLeanLiteral:)(*(v137 + 20));
  *(inited + 112) = 53;
  *(inited + 120) = NSNumber.init(BOOLeanLiteral:)(*(v137 + 21));
  *(inited + 128) = 54;
  if (*(*(v137 + 24) + 16))
  {

    v27 = Dictionary<>.pageAnalytics()(v26);
    v4 = v27;
    v28 = v27 & 0xFFFFFFFFFFFFFF8;
    if (v27 >> 62)
    {
      v29 = __CocoaSet.count.getter();
    }

    else
    {
      v29 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v30 = 0;
    v31 = 0;
    v3 = v4 & 0xC000000000000001;
    while (v29 != v30)
    {
      if (v3)
      {
        v32 = MEMORY[0x1DA6CE0C0](v30, v4);
        if (__OFADD__(v30, 1))
        {
          goto LABEL_49;
        }
      }

      else
      {
        if (v30 >= *(v28 + 16))
        {
          goto LABEL_250;
        }

        if (__OFADD__(v30, 1))
        {
LABEL_49:
          __break(1u);
          break;
        }
      }

      v33 = *(v32 + 80);

      ++v30;
      v10 = __OFADD__(v31, v33);
      v31 += v33;
      if (v10)
      {
        goto LABEL_251;
      }
    }

    v34 = v31 > 0;
  }

  else
  {
    v34 = 0;
  }

  *(inited + 136) = NSNumber.init(BOOLeanLiteral:)(v34);
  *(inited + 144) = 55;
  if (!*(*(v137 + 24) + 16))
  {
    goto LABEL_70;
  }

  v36 = Dictionary<>.pageAnalytics()(v35);
  v37 = v36;
  v38 = v36 & 0xFFFFFFFFFFFFFF8;
  if (v36 >> 62)
  {
    v39 = __CocoaSet.count.getter();
  }

  else
  {
    v39 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v40 = 0;
  v4 = 0;
  v3 = v37 & 0xC000000000000001;
  while (v39 != v40)
  {
    if (v3)
    {
      v41 = MEMORY[0x1DA6CE0C0](v40, v37);
      if (__OFADD__(v40, 1))
      {
        goto LABEL_65;
      }
    }

    else
    {
      if (v40 >= *(v38 + 16))
      {
        goto LABEL_252;
      }

      if (__OFADD__(v40, 1))
      {
LABEL_65:
        __break(1u);
        break;
      }
    }

    v42 = *(v41 + 24);

    ++v40;
    v10 = __OFADD__(v4, v42);
    v4 += v42;
    if (v10)
    {
      goto LABEL_253;
    }
  }

LABEL_71:
  *(inited + 152) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(inited + 160) = 62;
  if (*(*(v137 + 24) + 16))
  {

    v44 = Dictionary<>.pageAnalytics()(v43);
    v45 = v44;
    v46 = v44 & 0xFFFFFFFFFFFFFF8;
    if (v44 >> 62)
    {
      v47 = __CocoaSet.count.getter();
    }

    else
    {
      v47 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v48 = 0;
    v4 = 0;
    v3 = v45 & 0xC000000000000001;
    while (v47 != v48)
    {
      if (v3)
      {
        v49 = MEMORY[0x1DA6CE0C0](v48, v45);
        if (__OFADD__(v48, 1))
        {
          goto LABEL_84;
        }
      }

      else
      {
        if (v48 >= *(v46 + 16))
        {
          goto LABEL_254;
        }

        if (__OFADD__(v48, 1))
        {
LABEL_84:
          __break(1u);
          break;
        }
      }

      v50 = *(v49 + 72);

      ++v48;
      v10 = __OFADD__(v4, v50);
      v4 += v50;
      if (v10)
      {
        goto LABEL_255;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  *(inited + 168) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(inited + 176) = 57;
  *(inited + 184) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(inited + 192) = 58;
  if (*(*(v137 + 24) + 16))
  {

    v52 = Dictionary<>.pageAnalytics()(v51);
    v53 = v52;
    v54 = v52 & 0xFFFFFFFFFFFFFF8;
    if (v52 >> 62)
    {
      v4 = __CocoaSet.count.getter();
    }

    else
    {
      v4 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v55 = 0;
    v56 = 0;
    v3 = v53 & 0xC000000000000001;
    while (v4 != v55)
    {
      if (v3)
      {
        v57 = MEMORY[0x1DA6CE0C0](v55, v53);
        if (__OFADD__(v55, 1))
        {
          goto LABEL_100;
        }
      }

      else
      {
        if (v55 >= *(v54 + 16))
        {
          goto LABEL_256;
        }

        if (__OFADD__(v55, 1))
        {
LABEL_100:
          __break(1u);
          break;
        }
      }

      v58 = *(v57 + 40);

      ++v55;
      v10 = __OFADD__(v56, v58);
      v56 += v58;
      if (v10)
      {
        goto LABEL_257;
      }
    }
  }

  else
  {
    v56 = 0;
  }

  *(inited + 200) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(inited + 208) = 59;
  if (*(*(v137 + 24) + 16))
  {

    v60 = Dictionary<>.pageAnalytics()(v59);
    v61 = v60;
    v62 = v60 & 0xFFFFFFFFFFFFFF8;
    if (v60 >> 62)
    {
      v4 = __CocoaSet.count.getter();
    }

    else
    {
      v4 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v63 = 0;
    v64 = 0;
    v3 = v61 & 0xC000000000000001;
    while (v4 != v63)
    {
      if (v3)
      {
        v65 = MEMORY[0x1DA6CE0C0](v63, v61);
        if (__OFADD__(v63, 1))
        {
          goto LABEL_116;
        }
      }

      else
      {
        if (v63 >= *(v62 + 16))
        {
          goto LABEL_258;
        }

        if (__OFADD__(v63, 1))
        {
LABEL_116:
          __break(1u);
          break;
        }
      }

      v66 = *(v65 + 48);

      ++v63;
      v10 = __OFADD__(v64, v66);
      v64 += v66;
      if (v10)
      {
        goto LABEL_259;
      }
    }
  }

  else
  {
    v64 = 0;
  }

  *(inited + 216) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(inited + 224) = 26;
  if (*(*(v137 + 24) + 16))
  {

    v68 = Dictionary<>.pageAnalytics()(v67);
    v69 = v68;
    v70 = v68 & 0xFFFFFFFFFFFFFF8;
    if (v68 >> 62)
    {
      v4 = __CocoaSet.count.getter();
    }

    else
    {
      v4 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v71 = 0;
    v72 = 0;
    v3 = v69 & 0xC000000000000001;
    while (v4 != v71)
    {
      if (v3)
      {
        v73 = MEMORY[0x1DA6CE0C0](v71, v69);
        if (__OFADD__(v71, 1))
        {
          goto LABEL_132;
        }
      }

      else
      {
        if (v71 >= *(v70 + 16))
        {
          goto LABEL_260;
        }

        if (__OFADD__(v71, 1))
        {
LABEL_132:
          __break(1u);
          break;
        }
      }

      v74 = *(v73 + 56);

      ++v71;
      v10 = __OFADD__(v72, v74);
      v72 += v74;
      if (v10)
      {
        goto LABEL_261;
      }
    }
  }

  else
  {
    v72 = 0;
  }

  *(inited + 232) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(inited + 240) = 61;
  if (*(*(v137 + 24) + 16))
  {

    v76 = Dictionary<>.pageAnalytics()(v75);
    v77 = v76;
    v78 = v76 & 0xFFFFFFFFFFFFFF8;
    if (v76 >> 62)
    {
      v4 = __CocoaSet.count.getter();
    }

    else
    {
      v4 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v79 = 0;
    v80 = 0;
    v3 = v77 & 0xC000000000000001;
    while (v4 != v79)
    {
      if (v3)
      {
        v81 = MEMORY[0x1DA6CE0C0](v79, v77);
        if (__OFADD__(v79, 1))
        {
          goto LABEL_148;
        }
      }

      else
      {
        if (v79 >= *(v78 + 16))
        {
          goto LABEL_262;
        }

        if (__OFADD__(v79, 1))
        {
LABEL_148:
          __break(1u);
          break;
        }
      }

      v82 = *(v81 + 64);

      ++v79;
      v10 = __OFADD__(v80, v82);
      v80 += v82;
      if (v10)
      {
        goto LABEL_263;
      }
    }
  }

  else
  {
    v80 = 0;
  }

  *(inited + 248) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(inited + 256) = 56;
  if (*(*(v137 + 24) + 16))
  {

    v84 = Dictionary<>.pageAnalytics()(v83);
    v85 = v84;
    v86 = v84 & 0xFFFFFFFFFFFFFF8;
    if (v84 >> 62)
    {
      v4 = __CocoaSet.count.getter();
    }

    else
    {
      v4 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v87 = 0;
    v88 = 0;
    v3 = v85 & 0xC000000000000001;
    while (v4 != v87)
    {
      if (v3)
      {
        v89 = MEMORY[0x1DA6CE0C0](v87, v85);
        if (__OFADD__(v87, 1))
        {
          goto LABEL_164;
        }
      }

      else
      {
        if (v87 >= *(v86 + 16))
        {
          goto LABEL_264;
        }

        if (__OFADD__(v87, 1))
        {
LABEL_164:
          __break(1u);
          break;
        }
      }

      v90 = *(v89 + 32);

      ++v87;
      v10 = __OFADD__(v88, v90);
      v88 += v90;
      if (v10)
      {
        goto LABEL_265;
      }
    }
  }

  else
  {
    v88 = 0;
  }

  *(inited + 264) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(inited + 272) = 63;
  if (*(*(v137 + 24) + 16))
  {

    v92 = Dictionary<>.pageAnalytics()(v91);
    v93 = v92;
    v94 = v92 & 0xFFFFFFFFFFFFFF8;
    if (v92 >> 62)
    {
      v4 = __CocoaSet.count.getter();
    }

    else
    {
      v4 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v95 = 0;
    v96 = 0;
    v3 = v93 & 0xC000000000000001;
    while (v4 != v95)
    {
      if (v3)
      {
        v97 = MEMORY[0x1DA6CE0C0](v95, v93);
        if (__OFADD__(v95, 1))
        {
          goto LABEL_180;
        }
      }

      else
      {
        if (v95 >= *(v94 + 16))
        {
          goto LABEL_266;
        }

        if (__OFADD__(v95, 1))
        {
LABEL_180:
          __break(1u);
          break;
        }
      }

      v98 = *(v97 + 80);

      ++v95;
      v10 = __OFADD__(v96, v98);
      v96 += v98;
      if (v10)
      {
        goto LABEL_267;
      }
    }
  }

  else
  {
    v96 = 0;
  }

  *(inited + 280) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(inited + 288) = 64;
  if (*(*(v137 + 24) + 16))
  {

    v100 = Dictionary<>.pageAnalytics()(v99);
    v101 = v100;
    v102 = v100 & 0xFFFFFFFFFFFFFF8;
    if (v100 >> 62)
    {
      v4 = __CocoaSet.count.getter();
    }

    else
    {
      v4 = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v103 = 0;
    v104 = 0;
    v3 = v101 & 0xC000000000000001;
    while (v4 != v103)
    {
      if (v3)
      {
        v105 = MEMORY[0x1DA6CE0C0](v103, v101);
        if (__OFADD__(v103, 1))
        {
          goto LABEL_196;
        }
      }

      else
      {
        if (v103 >= *(v102 + 16))
        {
          goto LABEL_268;
        }

        if (__OFADD__(v103, 1))
        {
LABEL_196:
          __break(1u);
          break;
        }
      }

      v106 = *(v105 + 88);

      ++v103;
      v10 = __OFADD__(v104, v106);
      v104 += v106;
      if (v10)
      {
        goto LABEL_269;
      }
    }
  }

  else
  {
    v104 = 0;
  }

  *(inited + 296) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(inited + 304) = 65;
  if (*(*(v137 + 24) + 16))
  {

    v108 = Dictionary<>.pageAnalytics()(v107);
    v109 = v108;
    v110 = v108 & 0xFFFFFFFFFFFFFF8;
    if (v108 >> 62)
    {
      v4 = __CocoaSet.count.getter();
    }

    else
    {
      v4 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v111 = 0;
    v112 = 0;
    v3 = v109 & 0xC000000000000001;
    while (v4 != v111)
    {
      if (v3)
      {
        v113 = MEMORY[0x1DA6CE0C0](v111, v109);
        if (__OFADD__(v111, 1))
        {
          goto LABEL_212;
        }
      }

      else
      {
        if (v111 >= *(v110 + 16))
        {
          goto LABEL_270;
        }

        if (__OFADD__(v111, 1))
        {
LABEL_212:
          __break(1u);
          break;
        }
      }

      v114 = *(v113 + 96);

      ++v111;
      v10 = __OFADD__(v112, v114);
      v112 += v114;
      if (v10)
      {
        goto LABEL_271;
      }
    }
  }

  else
  {
    v112 = 0;
  }

  *(inited + 312) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(inited + 320) = 66;
  if (*(*(v137 + 24) + 16))
  {

    v116 = Dictionary<>.pageAnalytics()(v115);
    v117 = v116;
    v118 = v116 & 0xFFFFFFFFFFFFFF8;
    if (v116 >> 62)
    {
      v4 = __CocoaSet.count.getter();
    }

    else
    {
      v4 = *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v119 = 0;
    v120 = 0;
    v3 = v117 & 0xC000000000000001;
    while (v4 != v119)
    {
      if (v3)
      {
        v121 = MEMORY[0x1DA6CE0C0](v119, v117);
        if (__OFADD__(v119, 1))
        {
          goto LABEL_228;
        }
      }

      else
      {
        if (v119 >= *(v118 + 16))
        {
          goto LABEL_272;
        }

        if (__OFADD__(v119, 1))
        {
LABEL_228:
          __break(1u);
          break;
        }
      }

      v122 = *(v121 + 104);

      ++v119;
      v10 = __OFADD__(v120, v122);
      v120 += v122;
      if (v10)
      {
        goto LABEL_273;
      }
    }
  }

  else
  {
    v120 = 0;
  }

  *(inited + 328) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(inited + 336) = 67;
  if (*(*(v137 + 24) + 16))
  {

    v124 = Dictionary<>.pageAnalytics()(v123);
    v125 = v124;
    v126 = v124 & 0xFFFFFFFFFFFFFF8;
    if (v124 >> 62)
    {
      v127 = __CocoaSet.count.getter();
    }

    else
    {
      v127 = *((v124 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v4 = 0;
    v128 = 0;
    v3 = v125 & 0xC000000000000001;
    while (v127 != v4)
    {
      if (v3)
      {
        v129 = MEMORY[0x1DA6CE0C0](v4, v125);
        if (__OFADD__(v4, 1))
        {
          goto LABEL_244;
        }
      }

      else
      {
        if (v4 >= *(v126 + 16))
        {
          goto LABEL_274;
        }

        if (__OFADD__(v4, 1))
        {
LABEL_244:
          __break(1u);
          break;
        }
      }

      v130 = *(v129 + 112);

      ++v4;
      v10 = __OFADD__(v128, v130);
      v128 += v130;
      if (v10)
      {
        goto LABEL_275;
      }
    }
  }

  else
  {
    v128 = 0;
  }

  *(inited + 344) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v131 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC8PaperKit17FormAnalyticsKeysO_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit17FormAnalyticsKeysO_So8NSObjectCtMd);
  swift_arrayDestroy();
  v132 = swift_allocObject();
  *(v132 + 16) = v131;
  v133 = MEMORY[0x1DA6CCED0](0xD000000000000031, 0x80000001D4080BC0);
  v134 = swift_allocObject();
  *(v134 + 16) = partial apply for implicit closure #1 in FormTextFieldAnalytics.recordEvent();
  *(v134 + 24) = v132;
  aBlock[4] = closure #1 in FormAnalytics.sendEventLazy(key:payload:)partial apply;
  aBlock[5] = v134;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  aBlock[3] = &block_descriptor_160;
  v135 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v135);
}

uint64_t FormAnalytics.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for FormAnalyticsKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xBC)
  {
    goto LABEL_17;
  }

  if (a2 + 68 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 68) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 68;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 68;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 68;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x45;
  v8 = v6 - 69;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FormAnalyticsKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 68 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 68) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xBC)
  {
    v4 = 0;
  }

  if (a2 > 0xBB)
  {
    v5 = ((a2 - 188) >> 8) + 1;
    *result = a2 + 68;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 68;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FormAnalyticsKeys and conformance FormAnalyticsKeys()
{
  result = lazy protocol witness table cache variable for type FormAnalyticsKeys and conformance FormAnalyticsKeys;
  if (!lazy protocol witness table cache variable for type FormAnalyticsKeys and conformance FormAnalyticsKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FormAnalyticsKeys and conformance FormAnalyticsKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FormTextBoxEntryType and conformance FormTextBoxEntryType()
{
  result = lazy protocol witness table cache variable for type FormTextBoxEntryType and conformance FormTextBoxEntryType;
  if (!lazy protocol witness table cache variable for type FormTextBoxEntryType and conformance FormTextBoxEntryType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FormTextBoxEntryType and conformance FormTextBoxEntryType);
  }

  return result;
}

id specialized FormAnalytics.documentType(from:)(char a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  if ((a1 - 2) < 6u)
  {
    v3 = (a1 - 2) + 1;
  }

  else
  {
    v3 = 0;
  }

  return [v2 initWithInteger_];
}

id specialized FormAnalytics.textFieldManuallyCreatedValue(from:)(char a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  if ((a1 - 10) < 3u)
  {
    v3 = (a1 - 10) + 1;
  }

  else
  {
    v3 = 0;
  }

  return [v2 initWithInteger_];
}

id specialized FormAnalytics.formFillingModeEntryModality(from:)(char a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  if ((a1 - 48) > 3u)
  {
    v3 = 0;
  }

  else
  {
    v3 = qword_1D4068820[(a1 - 48)];
  }

  return [v2 initWithInteger_];
}

void specialized FormAnalytics.addFielde2eEvent(canvas:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v21 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - v11;
  if (!a1)
  {
    return;
  }

  v13 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_analytics_timeOfOpeningContainerView;
  swift_beginAccess();
  outlined init with copy of Date?(a1 + v13, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of Date?(v5);
    return;
  }

  (*(v7 + 32))(v12, v5, v6);
  v14 = a1;
  Date.init()();
  Date.timeIntervalSince(_:)();
  v16 = v15 * 1000.0;
  if (COERCE__INT64(fabs(v15 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v16 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v1 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_analytics_latencyOfFormFields;
  v5 = *&v14[OBJC_IVAR____TtC8PaperKit9AnyCanvas_analytics_latencyOfFormFields];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v14[v1] = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_15:
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
    *&v14[v1] = v5;
  }

  v19 = *(v5 + 2);
  v18 = *(v5 + 3);
  if (v19 >= v18 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v5);
  }

  *(v5 + 2) = v19 + 1;
  *&v5[8 * v19 + 32] = v16;
  *&v14[v1] = v5;
  v20 = *(v7 + 8);
  v20(v10, v6);
  v20(v12, v6);
}

void specialized FormAnalytics.recordLatencyEvent(timestamps:endToEnd:)(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return;
  }

  v3 = *(a1 + 32);
  v4 = v2 - 1;
  if (v2 != 1)
  {
    if (v2 >= 5)
    {
      v5 = v4 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v6 = vdupq_n_s64(v3);
      v7 = (a1 + 56);
      v8 = v4 & 0xFFFFFFFFFFFFFFFCLL;
      v9 = v6;
      do
      {
        v6 = vbslq_s8(vcgtq_s64(v6, v7[-1]), v6, v7[-1]);
        v9 = vbslq_s8(vcgtq_s64(v9, *v7), v9, *v7);
        v7 += 2;
        v8 -= 4;
      }

      while (v8);
      v10 = vbslq_s8(vcgtq_s64(v6, v9), v6, v9);
      v11 = vextq_s8(v10, v10, 8uLL).u64[0];
      v3 = vbsl_s8(vcgtd_s64(v10.i64[0], v11), *v10.i8, v11);
      if (v4 == (v4 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_12;
      }
    }

    else
    {
      v5 = 1;
    }

    v12 = v2 - v5;
    v13 = (a1 + 8 * v5 + 32);
    do
    {
      v15 = *v13++;
      v14 = v15;
      if (v3 <= v15)
      {
        v3 = v14;
      }

      --v12;
    }

    while (v12);
  }

LABEL_12:
  v16 = 0;
  v17 = 0;
  do
  {
    v18 = *(a1 + 32 + 8 * v16);
    v19 = __OFADD__(v17, v18);
    v17 += v18;
    if (v19)
    {
      __break(1u);
      return;
    }

    ++v16;
  }

  while (v2 != v16);
  if (a2)
  {
    v20 = 6632037;
  }

  else
  {
    v20 = 0xD000000000000010;
  }

  if (a2)
  {
    v21 = 0xE300000000000000;
  }

  else
  {
    v21 = 0x80000001D408A890;
  }

  v22 = v17 / v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8PaperKit17FormAnalyticsKeysO_So8NSObjectCtGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D405FD70;
  *(inited + 32) = 35;
  v24 = MEMORY[0x1DA6CCED0](v20, v21);

  *(inited + 40) = v24;
  *(inited + 48) = 34;
  *(inited + 56) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(inited + 64) = 33;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v25 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC8PaperKit17FormAnalyticsKeysO_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit17FormAnalyticsKeysO_So8NSObjectCtMd);
  swift_arrayDestroy();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  v27 = MEMORY[0x1DA6CCED0](0xD00000000000002CLL, 0x80000001D4080B70);
  v28 = swift_allocObject();
  *(v28 + 16) = partial apply for implicit closure #3 in FormAnalytics.recordLatencyEvent(timestamps:endToEnd:);
  *(v28 + 24) = v26;
  v30[4] = partial apply for closure #1 in FormAnalytics.sendEventLazy(key:payload:);
  v30[5] = v28;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 1107296256;
  v30[2] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v30[3] = &block_descriptor_38;
  v29 = _Block_copy(v30);

  AnalyticsSendEventLazy();
  _Block_release(v29);
}

uint64_t specialized FormAnalyticsKeys.init(rawValue:)()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x45)
  {
    return 69;
  }

  else
  {
    return v0;
  }
}

uint64_t block_copy_helper_38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined init with take of (key: CRKeyPath, value: FormPageAnalytics)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathV3key_8PaperKit17FormPageAnalyticsC5valuetMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

Swift::Void __swiftcall ShapeListViewController.viewDidLoad()()
{
  v1 = v0;
  v81.receiver = v0;
  v81.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v81, sel_viewDidLoad);
  v2 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = [v0 view];
  if (!v3)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v4 = v3;
  [v3 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D405B630;
  v6 = [v2 topAnchor];
  v7 = [v1 view];
  if (!v7)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v8 = v7;
  v9 = [v7 safeAreaLayoutGuide];

  v10 = [v9 topAnchor];
  v11 = [v6 constraintEqualToAnchor:v10 constant:16.0];

  *(v5 + 32) = v11;
  v12 = [v2 bottomAnchor];
  v13 = [v1 view];
  if (!v13)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v14 = v13;
  v15 = [v13 safeAreaLayoutGuide];

  v16 = [v15 bottomAnchor];
  v17 = [v12 constraintEqualToAnchor:v16 constant:-16.0];

  *(v5 + 40) = v17;
  v18 = [v2 leadingAnchor];
  v19 = [v1 view];
  if (!v19)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v20 = v19;
  v21 = v1;
  v22 = [v19 safeAreaLayoutGuide];

  v23 = [v22 leadingAnchor];
  v24 = [v18 constraintEqualToAnchor:v23 constant:16.0];

  *(v5 + 48) = v24;
  v25 = v2;
  v26 = [v2 trailingAnchor];
  v27 = [v21 view];
  if (!v27)
  {
LABEL_39:
    __break(1u);
    return;
  }

  v28 = v27;
  v79 = objc_opt_self();
  v29 = [v28 safeAreaLayoutGuide];

  v30 = [v29 trailingAnchor];
  v31 = [v26 constraintEqualToAnchor:v30 constant:-16.0];

  *(v5 + 56) = v31;
  type metadata accessor for NSLayoutConstraint();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v79 activateConstraints_];

  v33 = *&v21[OBJC_IVAR____TtC8PaperKit23ShapeListViewController_stackView];
  [v33 setAxis_];
  [v33 setDistribution_];
  [v33 setAlignment_];
  [v33 setSpacing_];
  [v33 setTranslatesAutoresizingMaskIntoConstraints_];
  [v25 addSubview_];
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1D4065C70;
  v35 = [v33 centerXAnchor];
  v36 = [v25 centerXAnchor];
  v78 = v21;
  v37 = [v35 constraintEqualToAnchor_];

  *(v34 + 32) = v37;
  v38 = [v33 centerYAnchor];
  v39 = [v25 centerYAnchor];
  v40 = [v38 constraintEqualToAnchor_];

  *(v34 + 40) = v40;
  v41 = [v33 topAnchor];
  v42 = [v25 topAnchor];
  v43 = [v41 constraintGreaterThanOrEqualToAnchor_];

  *(v34 + 48) = v43;
  v44 = [v33 leadingAnchor];
  v45 = [v25 leadingAnchor];
  v46 = [v44 constraintGreaterThanOrEqualToAnchor_];

  *(v34 + 56) = v46;
  v47 = [v33 bottomAnchor];
  v48 = [v25 bottomAnchor];
  v49 = [v47 constraintLessThanOrEqualToAnchor_];

  *(v34 + 64) = v49;
  v50 = [v33 trailingAnchor];
  v51 = [v25 trailingAnchor];
  v52 = [v50 constraintLessThanOrEqualToAnchor_];

  *(v34 + 72) = v52;
  v53 = Array._bridgeToObjectiveC()().super.isa;

  [v79 activateConstraints_];

  v54 = *&v78[OBJC_IVAR____TtC8PaperKit23ShapeListViewController_horizontalStackViews];
  v77 = v25;
  v80 = v54;
  if (v54 >> 62)
  {
    v55 = __CocoaSet.count.getter();
    v56 = &selRef_PDFView;
    if (v55)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v55 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v56 = &selRef_PDFView;
    if (v55)
    {
LABEL_8:
      if (v55 >= 1)
      {
        v57 = 0;
        do
        {
          if ((v80 & 0xC000000000000001) != 0)
          {
            v58 = MEMORY[0x1DA6CE0C0](v57, v80);
          }

          else
          {
            v58 = *(v80 + 8 * v57 + 32);
          }

          v59 = v58;
          ++v57;
          [v58 setSpacing_];
          [v59 v56[462]];
          [v59 &selRef:0 setHashtagAndMentionsDelegate:?];
          [v59 setAlignment_];
          [v33 addArrangedSubview_];
        }

        while (v55 != v57);
        goto LABEL_15;
      }

      __break(1u);
      goto LABEL_35;
    }
  }

LABEL_15:
  v60 = ShapeListViewController.configuredListItemViews()();
  v61 = v60;
  if (v60 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v63 = 0;
    while (1)
    {
      if ((v61 & 0xC000000000000001) != 0)
      {
        v64 = MEMORY[0x1DA6CE0C0](v63, v61);
      }

      else
      {
        if (v63 >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v64 = *(v61 + 8 * v63 + 32);
      }

      v65 = v64;
      v66 = v63 + 1;
      if (__OFADD__(v63, 1))
      {
        break;
      }

      v67 = v63 / 3;
      if ((v80 & 0xC000000000000001) != 0)
      {
        v68 = MEMORY[0x1DA6CE0C0](v67, v80);
      }

      else
      {
        if (v67 >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v68 = *(v80 + 32 + 8 * v67);
      }

      v69 = v68;
      v70 = v65;
      [v69 addArrangedSubview_];

      v71 = swift_allocObject();
      *(v71 + 16) = xmmword_1D405B640;
      v72 = [v70 widthAnchor];

      v73 = [v72 constraintEqualToConstant_];
      *(v71 + 32) = v73;
      v74 = [v70 heightAnchor];

      v75 = [v74 constraintEqualToConstant_];
      *(v71 + 40) = v75;
      v76 = Array._bridgeToObjectiveC()().super.isa;

      [v79 activateConstraints_];

      ++v63;
      if (v66 == i)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

LABEL_33:

  [v78 setPreferredContentSize_];
}

id ShapeListViewController.configuredListItemViews()()
{
  ObjectType = swift_getObjectType();
  v2 = closure #1 in ShapeListViewController.configuredListItemViews()(v0);
  v3 = OBJC_IVAR____TtC8PaperKit23ShapeListViewController_supportedFeatureSet;
  if (specialized Set.contains(_:)(0, *&v0[OBJC_IVAR____TtC8PaperKit23ShapeListViewController_supportedFeatureSet]))
  {
    v36 = ObjectType;
    v35[0] = v0;
    v4 = v0;
    specialized static ShapeListItemView.newAddRectangleListItemView(_:action:)(v35, sel_didSelectAddRectangle_withEvent_);
    v6 = v5;
    outlined destroy of StocksKitCurrencyCache.Provider?(v35, &_sypSgMd);
  }

  else
  {
    v6 = 0;
  }

  v37[4] = v6;
  if (specialized Set.contains(_:)(4, *&v0[v3]))
  {
    v36 = ObjectType;
    v35[0] = v0;
    v7 = v0;
    specialized static ShapeListItemView.newAddRoundedRectListItemView(_:action:)(v35, sel_didSelectAddRoundedRect_withEvent_);
    v9 = v8;
    outlined destroy of StocksKitCurrencyCache.Provider?(v35, &_sypSgMd);
  }

  else
  {
    v9 = 0;
  }

  v37[5] = v9;
  if (specialized Set.contains(_:)(1, *&v0[v3]))
  {
    v36 = ObjectType;
    v35[0] = v0;
    v10 = v0;
    specialized static ShapeListItemView.newAddOvalListItemView(_:action:)(v35, sel_didSelectAddOval_withEvent_);
    v12 = v11;
    outlined destroy of StocksKitCurrencyCache.Provider?(v35, &_sypSgMd);
  }

  else
  {
    v12 = 0;
  }

  v37[6] = v12;
  if (specialized Set.contains(_:)(5, *&v0[v3]))
  {
    v36 = ObjectType;
    v35[0] = v0;
    v13 = v0;
    specialized static ShapeListItemView.newAddTriangleListItemView(_:action:)(v35, sel_didSelectAddTriangle_withEvent_);
    v15 = v14;
    outlined destroy of StocksKitCurrencyCache.Provider?(v35, &_sypSgMd);
  }

  else
  {
    v15 = 0;
  }

  v37[7] = v15;
  if (specialized Set.contains(_:)(5, *&v0[v3]))
  {
    v36 = ObjectType;
    v35[0] = v0;
    v16 = v0;
    specialized static ShapeListItemView.newAddPolygonListItemView(_:action:)(v35, sel_didSelectAddPolygon_withEvent_);
    v18 = v17;
    outlined destroy of StocksKitCurrencyCache.Provider?(v35, &_sypSgMd);
  }

  else
  {
    v18 = 0;
  }

  v37[8] = v18;
  if (specialized Set.contains(_:)(7, *&v0[v3]))
  {
    v36 = ObjectType;
    v35[0] = v0;
    v19 = v0;
    specialized static ShapeListItemView.newAddArrowShapeListItemView(_:action:)(v35, sel_didSelectAddArrowShape_withEvent_);
    v21 = v20;
    outlined destroy of StocksKitCurrencyCache.Provider?(v35, &_sypSgMd);
  }

  else
  {
    v21 = 0;
  }

  v37[9] = v21;
  if (specialized Set.contains(_:)(6, *&v0[v3]))
  {
    v36 = ObjectType;
    v35[0] = v0;
    v22 = v0;
    specialized static ShapeListItemView.newAddStarListItemView(_:action:)(v35, sel_didSelectAddStar_withEvent_);
    v24 = v23;
    outlined destroy of StocksKitCurrencyCache.Provider?(v35, &_sypSgMd);
  }

  else
  {
    v24 = 0;
  }

  v37[10] = v24;
  if (specialized Set.contains(_:)(3, *&v0[v3]))
  {
    v36 = ObjectType;
    v35[0] = v0;
    v25 = v0;
    specialized static ShapeListItemView.newAddChatListItemView(_:action:)(v35, sel_didSelectAddChatBubble_withEvent_);
    v27 = v26;
    outlined destroy of StocksKitCurrencyCache.Provider?(v35, &_sypSgMd);
  }

  else
  {
    v27 = 0;
  }

  v37[11] = v27;
  v37[12] = v2;
  v28 = MEMORY[0x1E69E7CC0];
  v35[0] = MEMORY[0x1E69E7CC0];
  result = v2;
  v30 = result;
  v31 = 0;
LABEL_26:
  if (v31 <= 9)
  {
    v32 = 9;
  }

  else
  {
    v32 = v31;
  }

  while (1)
  {
    if (v31 == 9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit17ShapeListItemViewCSgMd);
      swift_arrayDestroy();

      return v28;
    }

    if (v32 == v31)
    {
      break;
    }

    v33 = v37[v31++ + 4];
    if (v33)
    {
      v34 = v33;
      MEMORY[0x1DA6CD190]();
      if (*((v35[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v28 = v35[0];
      goto LABEL_26;
    }
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in ShapeListViewController.configuredListItemViews()(char *a1)
{
  ObjectType = swift_getObjectType();
  v3 = &a1[OBJC_IVAR____TtC8PaperKit23ShapeListViewController_supportedFeatureSet];
  if ((specialized Set.contains(_:)(2, *&a1[OBJC_IVAR____TtC8PaperKit23ShapeListViewController_supportedFeatureSet]) & 1) == 0)
  {
    return 0;
  }

  v4 = *(v3 + 4);
  if ((v4 & 2) != 0)
  {
    v11 = ObjectType;
    v10[0] = a1;
    v6 = a1;
    specialized static ShapeListItemView.newAddArrowListItemView(_:action:)(v10, sel_didSelectAddArrow_withEvent_);
  }

  else
  {
    if ((v4 & 1) == 0)
    {
      return 0;
    }

    v11 = ObjectType;
    v10[0] = a1;
    v8 = a1;
    specialized static ShapeListItemView.newAddLineListItemView(_:action:)(v10, sel_didSelectAddArrow_withEvent_);
  }

  v9 = v7;
  outlined destroy of StocksKitCurrencyCache.Provider?(v10, &_sypSgMd);
  return v9;
}

uint64_t ShapeListViewController.addNewTriangle(markupEditViewController:)(uint64_t a1)
{
  v110 = a1;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd);
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v150 = &v108 - v1;
  v165 = type metadata accessor for Color(0);
  v172 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v149 = &v108 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
  v147 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v146 = &v108 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v163 = *(v4 - 8);
  v164 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v109 = &v108 - v5;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v144 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v143 = &v108 - v6;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v141 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v140 = &v108 - v7;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
  v137 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v136 = &v108 - v8;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v135 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159);
  v134 = &v108 - v9;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6ShadowVSgMd);
  MEMORY[0x1EEE9AC00](v132);
  v131 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v130 = &v108 - v12;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11StrokeStyleOSgMd);
  MEMORY[0x1EEE9AC00](v129);
  v128 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v127 = &v108 - v15;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v126);
  v125 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v124 = &v108 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v133 = &v108 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v162 = &v108 - v22;
  v168 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v168);
  v123 = &v108 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v122 = &v108 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v171 = (&v108 - v27);
  v151 = type metadata accessor for Shape(0);
  MEMORY[0x1EEE9AC00](v151);
  v113 = &v108 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v157 = &v108 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v145 = &v108 - v32;
  v33 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v33 - 8);
  v153 = &v108 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v167);
  v112 = &v108 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v170 = &v108 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v169 = &v108 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v154 = &v108 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v108 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v108 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v108 - v49;
  v51 = type metadata accessor for Paper(0);
  MEMORY[0x1EEE9AC00](v51);
  v52 = type metadata accessor for PaperMarkup();
  MEMORY[0x1EEE9AC00](v52 - 8);
  v152 = &v108 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CGRect(0);
  v161 = v54;
  v160 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_4(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
  v173 = 0u;
  v174 = 0u;
  CRRegister.init(wrappedValue:)();
  v121 = *(v51 + 20);
  v173 = 0u;
  v174 = 0u;
  CRRegister.init(wrappedValue:)();
  *&v173 = 0;
  v155 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  CRRegister.init(wrappedValue:)();
  LODWORD(v173) = 1;
  type metadata accessor for CGImagePropertyOrientation(0);
  _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_4(&lazy protocol witness table cache variable for type CGImagePropertyOrientation and conformance CGImagePropertyOrientation, type metadata accessor for CGImagePropertyOrientation);
  CRRegister.init(wrappedValue:)();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
  (*(*(v55 - 8) + 56))(v50, 1, 1, v55);
  outlined init with copy of Date?(v50, v47, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  lazy protocol witness table accessor for type Ref<PKDrawingStruct>? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v50, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  v57 = v172 + 56;
  v56 = *(v172 + 56);
  v58 = v165;
  v56(v44, 1, 1, v165);
  v166 = v44;
  outlined init with copy of Date?(v44, v154, &_s8PaperKit5ColorVSgMd);
  v156 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v44, &_s8PaperKit5ColorVSgMd);
  *&v173 = 0;
  *(&v173 + 1) = 0xE000000000000000;
  CRRegister.init(wrappedValue:)();
  *&v173 = 0;
  v119 = lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
  CRRegister.init(wrappedValue:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  CROrderedSet.init()();
  UnknownProperties.init()();
  v173 = 0uLL;
  v158 = vdupq_n_s64(0x4065400000000000uLL);
  v174 = v158;
  CRRegister.wrappedValue.setter();
  v173 = 0uLL;
  v174 = v158;
  CRRegister.wrappedValue.setter();
  static CRKeyPath.unique.getter();
  _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_4(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper);
  Capsule.init(_:id:)();
  *v171 = 3;
  swift_storeEnumTagMultiPayload();
  v56(v169, 1, 1, v58);
  v59 = v58;
  v56(v170, 1, 1, v58);
  v172 = v57;
  v60 = v56;
  (*(v163 + 56))(v162, 1, 1, v164);
  v173 = 0u;
  v174 = 0u;
  CRRegister.init(wrappedValue:)();
  v61 = v151;
  *&v173 = 0;
  CRRegister.init(_:)();
  v121 = v61[6];
  v62 = v166;
  v60(v166, 1, 1, v59);
  v63 = v154;
  outlined init with copy of Date?(v62, v154, &_s8PaperKit5ColorVSgMd);
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v62, &_s8PaperKit5ColorVSgMd);
  v120 = v61[7];
  v111 = v60;
  v60(v62, 1, 1, v59);
  v64 = v62;
  v65 = v62;
  v66 = v157;
  outlined init with copy of Date?(v64, v63, &_s8PaperKit5ColorVSgMd);
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v65, &_s8PaperKit5ColorVSgMd);
  v154 = v61[8];
  *&v173 = 0x4014000000000000;
  CRRegister.init(wrappedValue:)();
  v118 = v61[9];
  v67 = v122;
  swift_storeEnumTagMultiPayload();
  _s8PaperKit9ShapeTypeOWOcTm_0(v67, v123, type metadata accessor for ShapeType);
  v117 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_4(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, type metadata accessor for ShapeType);
  CRRegister.init(wrappedValue:)();
  _s8PaperKit9ShapeTypeOWOhTm_0(v67, type metadata accessor for ShapeType);
  *&v173 = 0x3FF0000000000000;
  CRRegister.init(wrappedValue:)();
  *&v173 = 0;
  BYTE8(v173) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
  CRRegister.init(wrappedValue:)();
  *&v173 = 0;
  BYTE8(v173) = 0;
  CRRegister.init(wrappedValue:)();
  v68 = v61[13];
  lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
  v123 = v68;
  CRAttributedString.init(_:)();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
  v70 = v124;
  (*(*(v69 - 8) + 56))(v124, 1, 1, v69);
  outlined init with copy of Date?(v70, v125, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v70, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  v71 = v61[15];
  *&v173 = 0;
  v72 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
  v126 = v71;
  v125 = v72;
  CRRegister.init(wrappedValue:)();
  *&v173 = 0;
  CRRegister.init(wrappedValue:)();
  v73 = type metadata accessor for StrokeStyle(0);
  v74 = v127;
  (*(*(v73 - 8) + 56))(v127, 1, 1, v73);
  outlined init with copy of Date?(v74, v128, &_s8PaperKit11StrokeStyleOSgMd);
  lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v74, &_s8PaperKit11StrokeStyleOSgMd);
  v75 = type metadata accessor for Shadow();
  v76 = v130;
  (*(*(v75 - 8) + 56))(v130, 1, 1, v75);
  outlined init with copy of Date?(v76, v131, &_s8PaperKit6ShadowVSgMd);
  lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v76, &_s8PaperKit6ShadowVSgMd);
  v174 = 0u;
  v175 = 0u;
  v173 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
  lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
  v77 = v139;
  CRRegister.init(wrappedValue:)();
  UnknownProperties.init()();
  v173 = 0uLL;
  v174 = v158;
  v78 = v134;
  CRRegister.init(_:)();
  (*(v135 + 40))(v66, v78, v159);
  _s8PaperKit9ShapeTypeOWOcTm_0(v171, v67, type metadata accessor for ShapeType);
  v79 = v136;
  CRRegister.init(_:)();
  (*(v137 + 40))(&v66[v118], v79, v138);
  *&v173 = 0x4014000000000000;
  v80 = v140;
  CRRegister.init(_:)();
  (*(v141 + 40))(&v66[v154], v80, v142);
  v81 = v166;
  outlined init with copy of Date?(v169, v166, &_s8PaperKit5ColorVSgMd);
  v82 = v143;
  CRRegister.init(_:)();
  v83 = *(v144 + 40);
  v83(&v66[v120], v82, v77);
  outlined init with copy of Date?(v170, v81, &_s8PaperKit5ColorVSgMd);
  v84 = v162;
  CRRegister.init(_:)();
  v85 = v82;
  v86 = v133;
  v83(&v66[v121], v85, v77);
  v87 = v164;
  outlined init with copy of Date?(v84, v86, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  v88 = v163;
  if ((*(v163 + 48))(v86, 1, v87) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v86, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  }

  else
  {
    v89 = v109;
    (*(v88 + 32))(v109, v86, v87);
    (*(v88 + 40))(&v66[v123], v89, v87);
  }

  *&v173 = 0;
  v90 = v146;
  CRRegister.init(_:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v84, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v170, &_s8PaperKit5ColorVSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v169, &_s8PaperKit5ColorVSgMd);
  _s8PaperKit9ShapeTypeOWOhTm_0(v171, type metadata accessor for ShapeType);
  (*(v147 + 40))(&v66[v126], v90, v148);
  v91 = v66;
  v92 = v145;
  _s8PaperKit5ShapeVWObTm_1(v91, v145, type metadata accessor for Shape);
  v93 = v165;
  v94 = *(v165 + 20);
  v95 = type metadata accessor for UnknownValueProperties();
  v96 = v149;
  (*(*(v95 - 8) + 56))(&v149[v94], 1, 1, v95);
  v97 = v150;
  if (one-time initialization token for extendedSRGBColorSpace != -1)
  {
    swift_once();
  }

  result = CGColorCreate(static Color.extendedSRGBColorSpace, dbl_1F4F52798);
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v99 = result;
  CGColorRef.calculateMinimumHeadroom.getter();
  result = CGColorCreateWithContentHeadroom();
  if (!result)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v100 = result;

  *v96 = v100;
  v101 = v96;
  v102 = v112;
  _s8PaperKit5ShapeVWObTm_1(v101, v112, type metadata accessor for Color);
  v111(v102, 0, 1, v93);
  outlined init with copy of Date?(v102, v166, &_s8PaperKit5ColorVSgMd);
  CRRegister.wrappedValue.setter();
  outlined destroy of StocksKitCurrencyCache.Provider?(v102, &_s8PaperKit5ColorVSgMd);
  _s8PaperKit9ShapeTypeOWOcTm_0(v92, v113, type metadata accessor for Shape);
  static CRKeyPath.unique.getter();
  _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_4(&lazy protocol witness table cache variable for type Shape and conformance Shape, type metadata accessor for Shape);
  v103 = Capsule.init(_:id:)();
  MEMORY[0x1EEE9AC00](v103);
  *(&v108 - 2) = v97;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  v104 = v152;
  Capsule.callAsFunction<A>(_:)();
  v105 = v114 + OBJC_IVAR____TtC8PaperKit23ShapeListViewController_editDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v106 = *(v105 + 8);
    ObjectType = swift_getObjectType();
    (*(v106 + 32))(v110, v104, ObjectType, v106);
    swift_unknownObjectRelease();
  }

  _s8PaperKit9ShapeTypeOWOhTm_0(v92, type metadata accessor for Shape);
  _s8PaperKit9ShapeTypeOWOhTm_0(v104, type metadata accessor for PaperMarkup);
  return (*(v115 + 8))(v97, v116);
}
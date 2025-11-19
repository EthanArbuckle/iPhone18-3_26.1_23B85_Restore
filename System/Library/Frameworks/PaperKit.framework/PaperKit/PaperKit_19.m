void specialized static ShapeListItemView.newAddStarListItemView(_:action:)(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1DA6CCED0](0x6C69662E72617473, 0xE90000000000006CLL);
  v5 = [objc_opt_self() systemImageNamed_];

  if (v5)
  {
    v6 = objc_allocWithZone(type metadata accessor for ShapeListItemView());
    v7 = ShapeListItemView.init(image:symbolWeight:)(v5, 5);
    v8 = one-time initialization token for paperKitBundle;
    v9 = v7;
    if (v8 != -1)
    {
      swift_once();
    }

    v24._object = 0x80000001D4086980;
    v10.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v10.value._object = 0xEB00000000656C62;
    v11._countAndFlagsBits = 1918989395;
    v11._object = 0xE400000000000000;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    v24._countAndFlagsBits = 0xD00000000000002ALL;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v10, paperKitBundle, v12, v24)._countAndFlagsBits;
    v14 = MEMORY[0x1DA6CCED0](countAndFlagsBits);

    [v9 setAccessibilityLabel_];

    outlined init with copy of Any?(a1, v22);
    v15 = v23;
    if (v23)
    {
      v16 = __swift_project_boxed_opaque_existential_1(v22, v23);
      v17 = *(v15 - 8);
      v18 = MEMORY[0x1EEE9AC00](v16);
      v20 = v22 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v17 + 16))(v20, v18);
      v21 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v17 + 8))(v20, v15);
      __swift_destroy_boxed_opaque_existential_0(v22);
    }

    else
    {
      v21 = 0;
    }

    [v9 addTarget:v21 action:a2 forControlEvents:64];
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void specialized static ShapeListItemView.newAddArrowShapeListItemView(_:action:)(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1DA6CCED0](0xD000000000000015, 0x80000001D4086910);
  v5 = [objc_opt_self() systemImageNamed_];

  if (v5)
  {
    v6 = objc_allocWithZone(type metadata accessor for ShapeListItemView());
    v7 = ShapeListItemView.init(image:symbolWeight:)(v5, 5);
    v8 = one-time initialization token for paperKitBundle;
    v9 = v7;
    if (v8 != -1)
    {
      swift_once();
    }

    v24._object = 0x80000001D4086950;
    v10.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v10.value._object = 0xEB00000000656C62;
    v11._countAndFlagsBits = 0x776F727241;
    v12._object = 0x80000001D4086930;
    v24._countAndFlagsBits = 0xD00000000000002CLL;
    v12._countAndFlagsBits = 0xD000000000000011;
    v11._object = 0xE500000000000000;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v10, paperKitBundle, v11, v24)._countAndFlagsBits;
    v14 = MEMORY[0x1DA6CCED0](countAndFlagsBits);

    [v9 setAccessibilityLabel_];

    outlined init with copy of Any?(a1, v22);
    v15 = v23;
    if (v23)
    {
      v16 = __swift_project_boxed_opaque_existential_1(v22, v23);
      v17 = *(v15 - 8);
      v18 = MEMORY[0x1EEE9AC00](v16);
      v20 = v22 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v17 + 16))(v20, v18);
      v21 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v17 + 8))(v20, v15);
      __swift_destroy_boxed_opaque_existential_0(v22);
    }

    else
    {
      v21 = 0;
    }

    [v9 addTarget:v21 action:a2 forControlEvents:64];
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

unint64_t specialized Sequence.flatMap<A>(_:)(unint64_t result)
{
  v2 = v1;
  if (result >> 62)
  {
LABEL_47:
    v29 = result;
    v3 = __CocoaSet.count.getter();
    result = v29;
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      v34 = result & 0xFFFFFFFFFFFFFF8;
      v35 = result & 0xC000000000000001;
      v5 = MEMORY[0x1E69E7CC0];
      v30 = result;
      v31 = v3;
      v33 = result + 32;
      while (1)
      {
        if (v35)
        {
          result = MEMORY[0x1DA6CE0C0](v4, v30);
        }

        else
        {
          if (v4 >= *(v34 + 16))
          {
            goto LABEL_41;
          }

          result = *(v33 + 8 * v4);
        }

        v6 = result;
        v7 = __OFADD__(v4++, 1);
        if (v7)
        {
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
          __break(1u);
LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v8 = *(result + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_tiledView);
        if (!v8)
        {
          __break(1u);
          return result;
        }

        swift_beginAccess();
        v9 = v8;

        v11 = v2;
        v12 = specialized Sequence.flatMap<A>(_:)(v10);

        v13 = v12 >> 62;
        if (v12 >> 62)
        {
          v14 = __CocoaSet.count.getter();
        }

        else
        {
          v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v15 = v5 >> 62;
        if (v5 >> 62)
        {
          result = __CocoaSet.count.getter();
        }

        else
        {
          result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v38 = v14;
        v7 = __OFADD__(result, v14);
        v16 = result + v14;
        if (v7)
        {
          goto LABEL_42;
        }

        result = swift_isUniquelyReferenced_nonNull_bridgeObject();
        if (!result)
        {
          break;
        }

        if (v15)
        {
          goto LABEL_22;
        }

        v17 = v5 & 0xFFFFFFFFFFFFFF8;
        if (v16 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v36 = v5;
          goto LABEL_24;
        }

LABEL_23:
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v36 = result;
        v17 = result & 0xFFFFFFFFFFFFFF8;
LABEL_24:
        v18 = *(v17 + 16);
        v19 = *(v17 + 24);
        if (v13)
        {
          v21 = v17;
          result = __CocoaSet.count.getter();
          v17 = v21;
          v20 = result;
          if (!result)
          {
LABEL_4:

            v5 = v36;
            if (v38 > 0)
            {
              goto LABEL_43;
            }

            goto LABEL_5;
          }
        }

        else
        {
          v20 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v20)
          {
            goto LABEL_4;
          }
        }

        if (((v19 >> 1) - v18) < v38)
        {
          goto LABEL_44;
        }

        v22 = v17 + 8 * v18 + 32;
        v32 = v17;
        if (v13)
        {
          if (v20 < 1)
          {
            goto LABEL_46;
          }

          lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [AnyCanvas] and conformance [A], &_sSay8PaperKit9AnyCanvasCGMd);
          for (i = 0; i != v20; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8PaperKit9AnyCanvasCGMd);
            v24 = specialized protocol witness for Collection.subscript.read in conformance [A](v37, i, v12);
            v26 = *v25;
            (v24)(v37, 0);
            *(v22 + 8 * i) = v26;
          }
        }

        else
        {
          type metadata accessor for AnyCanvas();
          swift_arrayInitWithCopy();
        }

        v2 = v11;
        v5 = v36;
        v3 = v31;
        if (v38 >= 1)
        {
          v27 = *(v32 + 16);
          v7 = __OFADD__(v27, v38);
          v28 = v27 + v38;
          if (v7)
          {
            goto LABEL_45;
          }

          *(v32 + 16) = v28;
        }

LABEL_5:
        if (v4 == v3)
        {
          return v5;
        }
      }

      if (!v15)
      {
        goto LABEL_23;
      }

LABEL_22:
      __CocoaSet.count.getter();
      goto LABEL_23;
    }
  }

  return MEMORY[0x1E69E7CC0];
}

void *specialized TiledPaperKitView.mostVisibleAttachment()()
{
  return specialized TiledPaperKitView.mostVisibleAttachment()(specialized TiledPaperKitView.paperAttachments(includeStandInAttachment:));
}

{
  return specialized TiledPaperKitView.mostVisibleAttachment()(specialized TiledPaperKitView.paperAttachments(includeStandInAttachment:));
}

void *specialized TiledPaperKitView.mostVisibleAttachment()(uint64_t (*a1)(uint64_t))
{
  v3 = [v1 window];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = a1(1);
  [v4 bounds];
  x = v59.origin.x;
  y = v59.origin.y;
  width = v59.size.width;
  height = v59.size.height;
  MidX = CGRectGetMidX(v59);
  v60.origin.x = x;
  v60.origin.y = y;
  v60.size.width = width;
  v60.size.height = height;
  MidY = CGRectGetMidY(v60);
  v58 = MEMORY[0x1E69E7CC0];
  if (v5 >> 62)
  {
    goto LABEL_54;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v13 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      break;
    }

    v14 = 0;
    v57 = v5 & 0xC000000000000001;
    v15 = v5 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v57)
      {
        v16 = MEMORY[0x1DA6CE0C0](v14, v5);
      }

      else
      {
        if (v14 >= *(v15 + 16))
        {
          goto LABEL_52;
        }

        v16 = *(v5 + 8 * v14 + 32);
      }

      v17 = v16;
      v18 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v19 = [v16 window];
      if (v19)
      {
        v20 = v19;
        v21 = v5;
        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIWindow);
        v22 = v4;
        v23 = v4;
        v24 = static NSObject.== infix(_:_:)();

        if (v24)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        v4 = v22;
        v5 = v21;
      }

      else
      {
      }

      ++v14;
      if (v18 == i)
      {
        v25 = v58;
        v13 = MEMORY[0x1E69E7CC0];
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    ;
  }

  v25 = MEMORY[0x1E69E7CC0];
LABEL_20:

  if ((v25 & 0x8000000000000000) == 0 && (v25 & 0x4000000000000000) == 0)
  {
    v26 = *(v25 + 16);
    if (v26)
    {
      goto LABEL_23;
    }

LABEL_56:

    v5 = MEMORY[0x1E69E7CC0];
    v50 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v50)
    {
      goto LABEL_43;
    }

LABEL_57:

    return 0;
  }

  v26 = __CocoaSet.count.getter();
  if (!v26)
  {
    goto LABEL_56;
  }

LABEL_23:
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26 & ~(v26 >> 63), 0);
  if ((v26 & 0x8000000000000000) == 0)
  {
    v28 = 0;
    v5 = v13;
    do
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x1DA6CE0C0](v28, v25);
      }

      else
      {
        v29 = *(v25 + 8 * v28 + 32);
      }

      v30 = v29;
      [v29 bounds];
      [v30 convertRect:v4 toCoordinateSpace:?];
      v32 = v31;
      v34 = v33;
      v36 = v35;
      v38 = v37;
      v39 = v30;
      v61.origin.x = v32;
      v61.origin.y = v34;
      v61.size.width = v36;
      v61.size.height = v38;
      MinX = CGRectGetMinX(v61);
      v62.origin.x = v32;
      v62.origin.y = v34;
      v62.size.width = v36;
      v62.size.height = v38;
      MaxX = CGRectGetMaxX(v62);
      if (MinX > MidX)
      {
        v42 = MinX;
      }

      else
      {
        v42 = MidX;
      }

      if (v42 >= MaxX)
      {
        v43 = MaxX;
      }

      else
      {
        v43 = v42;
      }

      v63.origin.x = v32;
      v63.origin.y = v34;
      v63.size.width = v36;
      v63.size.height = v38;
      MinY = CGRectGetMinY(v63);
      v64.origin.x = v32;
      v64.origin.y = v34;
      v64.size.width = v36;
      v64.size.height = v38;
      MaxY = CGRectGetMaxY(v64);

      if (MinY > MidY)
      {
        v46 = MinY;
      }

      else
      {
        v46 = MidY;
      }

      if (v46 < MaxY)
      {
        MaxY = v46;
      }

      v58 = v5;
      v48 = *(v5 + 16);
      v47 = *(v5 + 24);
      if (v48 >= v47 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1);
      }

      ++v28;
      *(v5 + 16) = v48 + 1;
      v49 = v5 + 16 * v48;
      *(v49 + 32) = v39;
      *(v49 + 40) = (v43 - MidX) * (v43 - MidX) + (MaxY - MidY) * (MaxY - MidY);
    }

    while (v26 != v28);

    v50 = *(v5 + 16);
    if (v50)
    {
LABEL_43:
      MidX = *(v5 + 40);
      v51 = *(v5 + 32);
      v52 = 1;
LABEL_44:
      v53 = (v5 + 40 + 16 * v52);
      while (v50 != v52)
      {
        if (v52 >= *(v5 + 16))
        {
          goto LABEL_53;
        }

        ++v52;
        v54 = v53 + 2;
        MidY = *v53;
        v55 = *v53 < MidX;
        v53 += 2;
        if (v55)
        {
          v56 = *(v54 - 3);

          v51 = v56;
          MidX = MidY;
          goto LABEL_44;
        }
      }

      return v51;
    }

    goto LABEL_57;
  }

  __break(1u);
  return result;
}

id PaperDocumentViewController.__allocating_init(context:paperDocument:editingMode:)(void *a1, uint64_t a2, unsigned __int8 *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = specialized PaperDocumentViewController.init(context:paperDocument:editingMode:)(a1, a2, a3);

  return v8;
}

id PaperDocumentPasswordViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC8PaperKit35PaperDocumentPasswordViewController_documentToUnlock] = 0;
  v7 = OBJC_IVAR____TtC8PaperKit35PaperDocumentPasswordViewController_assetToUnlock;
  v8 = type metadata accessor for CRAsset();
  (*(*(v8 - 8) + 56))(&v3[v7], 1, 1, v8);
  *&v3[OBJC_IVAR____TtC8PaperKit35PaperDocumentPasswordViewController_contextForLockedDocument] = 0;
  if (a2)
  {
    v9 = MEMORY[0x1DA6CCED0](a1, a2);
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for PaperDocumentPasswordViewController(0);
  v10 = objc_msgSendSuper2(&v12, sel_initWithNibName_bundle_, v9, a3);

  return v10;
}

id PaperDocumentPasswordViewController.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC8PaperKit35PaperDocumentPasswordViewController_documentToUnlock] = 0;
  v3 = OBJC_IVAR____TtC8PaperKit35PaperDocumentPasswordViewController_assetToUnlock;
  v4 = type metadata accessor for CRAsset();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  *&v1[OBJC_IVAR____TtC8PaperKit35PaperDocumentPasswordViewController_contextForLockedDocument] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for PaperDocumentPasswordViewController(0);
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

void PaperDocumentPasswordViewController.__ivar_destroyer()
{
  outlined destroy of StocksKitCurrencyCache.Provider?(v0 + OBJC_IVAR____TtC8PaperKit35PaperDocumentPasswordViewController_assetToUnlock, &_s9Coherence7CRAssetVSgMd);
  v1 = *(v0 + OBJC_IVAR____TtC8PaperKit35PaperDocumentPasswordViewController_contextForLockedDocument);
}

uint64_t PaperDocumentViewController.delegate.getter()
{
  return PaperDocumentViewController.delegate.getter();
}

{
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t PaperDocumentViewController.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  v5 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (v6)
  {
    swift_unknownObjectWeakLoadStrong();
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    lazy protocol witness table accessor for type PaperDocumentView and conformance PaperDocumentView(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
    v8 = v6;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

void (*PaperDocumentViewController.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return PaperDocumentViewController.delegate.modify;
}

void PaperDocumentViewController.delegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = (*a1 + 24);
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    v5 = v3[5];
    swift_endAccess();
    swift_unknownObjectRelease();
    v6 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
    swift_beginAccess();
    v7 = *(v5 + v6);
    if (v7)
    {
      swift_unknownObjectWeakLoadStrong();
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *v4 = v7;
      lazy protocol witness table accessor for type PaperDocumentView and conformance PaperDocumentView(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
      v9 = v7;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      swift_unknownObjectRelease();
    }
  }

  free(v3);
}

void *PaperDocumentViewController.paperDocumentView.getter()
{
  v1 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void *PaperDocumentViewController.paperDocumentThumbnailView.getter()
{
  v1 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentThumbnailView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

Swift::Void __swiftcall PaperDocumentViewController.updateGestureRecognizers()()
{
  v1 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_screenEdgePanGestureRecognizer;
  v2 = *&v0[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_screenEdgePanGestureRecognizer];
  if (v2)
  {
    goto LABEL_4;
  }

  v3 = [objc_allocWithZone(MEMORY[0x1E69DCEB8]) initWithTarget:v0 action:sel_didScreenEdgePan];
  [v3 setEdges_];
  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
    return;
  }

  v5 = v4;
  [v4 addGestureRecognizer_];

  v6 = *&v0[v1];
  *&v0[v1] = v3;

  v2 = *&v0[v1];
  if (v2)
  {
LABEL_4:
    v7 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_allowsUserInteractionToToggleThumbnailViewVisibility;
    swift_beginAccess();
    v8 = v0[v7];
    v9 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_isThumbnailViewCollapsed;
    swift_beginAccess();
    if (v0[v9] != 1 || (v10 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentThumbnailView, swift_beginAccess(), (v11 = *&v0[v10]) == 0) || (v12 = OBJC_IVAR____TtC8PaperKit26PaperDocumentThumbnailView_thumbnailLayout, swift_beginAccess(), (*(v11 + v12) & 1) == 0))
    {
      v8 = 0;
    }

    [v2 setEnabled_];
  }
}

void key path setter for PaperDocumentViewController.allowsUserInteractionToToggleThumbnailViewVisibility : PaperDocumentViewController(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_allowsUserInteractionToToggleThumbnailViewVisibility;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  if (v2 != v5)
  {
    PaperDocumentViewController.updateThumbnailViewConstraints()();
    PaperDocumentViewController.updateGestureRecognizers()();
  }
}

uint64_t PaperDocumentViewController.allowsUserInteractionToToggleThumbnailViewVisibility.getter()
{
  v1 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_allowsUserInteractionToToggleThumbnailViewVisibility;
  swift_beginAccess();
  return *(v0 + v1);
}

void PaperDocumentViewController.allowsUserInteractionToToggleThumbnailViewVisibility.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_allowsUserInteractionToToggleThumbnailViewVisibility;
  swift_beginAccess();
  v5 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v5 != v3)
  {
    PaperDocumentViewController.updateThumbnailViewConstraints()();
    PaperDocumentViewController.updateGestureRecognizers()();
  }
}

void (*PaperDocumentViewController.allowsUserInteractionToToggleThumbnailViewVisibility.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_allowsUserInteractionToToggleThumbnailViewVisibility;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return PaperDocumentViewController.allowsUserInteractionToToggleThumbnailViewVisibility.modify;
}

void PaperDocumentViewController.allowsUserInteractionToToggleThumbnailViewVisibility.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  if (v4 != v5)
  {
    PaperDocumentViewController.updateThumbnailViewConstraints()();
    PaperDocumentViewController.updateGestureRecognizers()();
  }

  free(v1);
}

uint64_t PaperDocumentViewController.pageLabelShowsSidebarIconInRegularWidth.getter()
{
  v1 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageLabelShowsSidebarIconInRegularWidth;
  swift_beginAccess();
  return *(v0 + v1);
}

void PaperDocumentViewController.pageLabelShowsSidebarIconInRegularWidth.setter(char a1)
{
  v3 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageLabelShowsSidebarIconInRegularWidth;
  swift_beginAccess();
  v1[v3] = a1;
  if (v1[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_isPageLabelViewInitialized] == 1)
  {
    v4 = PaperDocumentViewController.pageLabelView.getter();
    v5 = [v1 traitCollection];
    v6 = [v5 horizontalSizeClass];

    if (v6 == 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v1[v3];
    }

    v4[OBJC_IVAR____TtC8PaperKit13PageLabelView_showsSidebarIcon] = v7;
  }
}

void (*PaperDocumentViewController.pageLabelShowsSidebarIconInRegularWidth.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageLabelShowsSidebarIconInRegularWidth;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return PaperDocumentViewController.pageLabelShowsSidebarIconInRegularWidth.modify;
}

void PaperDocumentViewController.pageLabelShowsSidebarIconInRegularWidth.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    if (*(v4 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_isPageLabelViewInitialized) == 1)
    {
      v5 = PaperDocumentViewController.pageLabelView.getter();
      v6 = [v4 traitCollection];
      v7 = [v6 horizontalSizeClass];

      if (v7 == 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = *(v3[3] + v3[4]);
      }

      v5[OBJC_IVAR____TtC8PaperKit13PageLabelView_showsSidebarIcon] = v8;
    }
  }

  free(v3);
}

void PaperDocumentViewController.calculateThumbnailToggleContentOffset()()
{
  v1 = *&v0[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_documentViewLeadingToThumbnailViewTrailingConstraint];
  if (v1)
  {
    if ([v1 isActive])
    {
      v2 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentThumbnailView;
      swift_beginAccess();
      v3 = *&v0[v2];
      if (v3)
      {
        v4 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
        swift_beginAccess();
        v5 = *&v0[v4];
        if (v5)
        {
          v6 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
          swift_beginAccess();
          v7 = *(v5 + v6);
          if (v7)
          {
            v8 = v3;
            v9 = v7;
            if (([v9 autoScales] & 1) != 0 || (v10 = objc_msgSend(v9, sel_documentScrollView)) == 0)
            {
            }

            else
            {
              v11 = v10;
              v12 = [v0 view];
              if (v12)
              {
                v13 = v12;
                [v12 safeAreaInsets];

                v14 = *&v0[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_thumbnailViewLeadingToSuperviewLeadingConstraint];
                if (v14)
                {
                  [v14 constant];
                }

                [v8 bounds];
                CGRectGetWidth(v15);
              }

              else
              {
                __break(1u);
              }
            }
          }
        }
      }
    }
  }
}

void PaperDocumentViewController.isThumbnailViewCollapsed.didset(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_isThumbnailViewCollapsed;
  swift_beginAccess();
  if (*(v1 + v4) != v3)
  {
    v5 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
    swift_beginAccess();
    v6 = *(v1 + v5);
    if (v6)
    {
      v7 = v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_delegate;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v8 = *(v7 + 8);
        swift_getObjectType();
        v9 = *(*(v8 + 8) + 56);
        v10 = v6;
        v9();

        swift_unknownObjectRelease();
      }
    }

    PaperDocumentViewController.updateThumbnailViewConstraints()();
    PaperDocumentViewController.updateGestureRecognizers()();
    PaperDocumentViewController.notifyContentFrameDidChange()();
    v11 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentThumbnailView;
    swift_beginAccess();
    v12 = *(v2 + v11);
    if (!v12)
    {
      goto LABEL_19;
    }

    if (*(v2 + v4))
    {
      v13 = v12;
LABEL_18:

LABEL_19:
      PaperDocumentViewController.calculateThumbnailToggleContentOffset()();
      v25 = v24;
      v26 = objc_opt_self();
      v27 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v28 = swift_allocObject();
      *(v28 + 16) = v27;
      *(v28 + 24) = v25;
      v36 = partial apply for closure #1 in PaperDocumentViewController.isThumbnailViewCollapsed.didset;
      v37 = v28;
      aBlock = MEMORY[0x1E69E9820];
      v33 = 1107296256;
      v34 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v35 = &block_descriptor_273;
      v29 = _Block_copy(&aBlock);

      v30 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v36 = partial apply for closure #2 in PaperDocumentViewController.isThumbnailViewCollapsed.didset;
      v37 = v30;
      aBlock = MEMORY[0x1E69E9820];
      v33 = 1107296256;
      v34 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
      v35 = &block_descriptor_277;
      v31 = _Block_copy(&aBlock);

      [v26 animateWithDuration:0 delay:v29 options:v31 animations:0.15 completion:0.0];
      _Block_release(v31);
      _Block_release(v29);
      return;
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v15 = *(v2 + v5);
    if (Strong)
    {
      v16 = Strong;
      if (v15)
      {
        type metadata accessor for PaperDocumentView();
        v17 = v12;
        v18 = v15;
        v19 = static NSObject.== infix(_:_:)();

        if (v19)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v21 = v12;
      }
    }

    else
    {
      v20 = v12;
      if (!v15)
      {
LABEL_16:
        if ((*(v2 + v4) & 1) == 0)
        {
          [v12 setHidden_];
        }

        goto LABEL_18;
      }
    }

    v22 = *(v2 + v5);
    swift_unknownObjectWeakAssign();
    v23 = v22;
    PaperDocumentThumbnailView.documentView.didset();

    goto LABEL_16;
  }
}

void PaperDocumentViewController.notifyContentFrameDidChange()()
{
  v1 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentThumbnailView;
    swift_beginAccess();
    v4 = *(v0 + v3);
    if (v4)
    {
      v5 = *(v4 + OBJC_IVAR____TtC8PaperKit26PaperDocumentThumbnailView_pdfThumbnailView);
      v6 = v2;
      v7 = [v5 collectionView];
      if (v7)
      {
        v8 = v7;
        v9 = v0;
        v10 = PaperDocumentView.pdfDocumentView.getter();
        if (v10)
        {
          v11 = v10;
          [v10 bounds];
          v13 = v12;
          v15 = v14;
          v17 = v16;
          v19 = v18;
          v20 = v6;
          [v11 convertRect:v20 toCoordinateSpace:{v13, v15, v17, v19}];
          v22 = v21;
          v24 = v23;
          v26 = v25;
          v28 = v27;
        }

        else
        {
          v22 = *MEMORY[0x1E695F050];
          v24 = *(MEMORY[0x1E695F050] + 8);
          v26 = *(MEMORY[0x1E695F050] + 16);
          v28 = *(MEMORY[0x1E695F050] + 24);
        }

        v29 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_isThumbnailViewCollapsed;
        swift_beginAccess();
        if (*(v9 + v29) == 1)
        {
          v30 = *MEMORY[0x1E695F050];
          v31 = *(MEMORY[0x1E695F050] + 8);
          v32 = *(MEMORY[0x1E695F050] + 16);
          v33 = *(MEMORY[0x1E695F050] + 24);
        }

        else
        {
          v34 = v8;
          [v34 contentOffset];
          v30 = -v35;
          [v34 contentOffset];
          v31 = -v36;
          [v34 contentSize];
          v32 = v37;
          v33 = v38;
        }

        v39 = v9 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_delegate;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v40 = *(v39 + 8);
          ObjectType = swift_getObjectType();
          v42.origin.x = v22;
          v42.origin.y = v24;
          v42.size.width = v26;
          v42.size.height = v28;
          v44.origin.x = v30;
          v44.origin.y = v31;
          v44.size.width = v32;
          v44.size.height = v33;
          v43 = CGRectUnion(v42, v44);
          (*(*(v40 + 8) + 88))(v6, ObjectType, v43.origin, *&v43.origin.y, v43.size, *&v43.size.height);

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }

      else
      {
        v8 = v6;
      }
    }
  }
}

void closure #1 in PaperDocumentViewController.isThumbnailViewCollapsed.didset(double a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (a1 != 0.0)
    {
      v6 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
      swift_beginAccess();
      v7 = *&v3[v6];
      if (v7)
      {
        v8 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
        swift_beginAccess();
        v9 = *(v7 + v8);
        if (v9)
        {
          v10 = [v9 documentScrollView];
          if (v10)
          {
            v11 = v10;
            v12 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_isThumbnailViewCollapsed;
            swift_beginAccess();
            if (v3[v12])
            {
              a1 = -a1;
            }

            [v11 contentOffset];
            [v11 setContentOffset_];
          }
        }
      }
    }

    v4 = [v3 view];
    if (v4)
    {
      v5 = v4;
      [v4 layoutIfNeeded];
    }

    else
    {
      __break(1u);
    }
  }
}

void closure #2 in PaperDocumentViewController.isThumbnailViewCollapsed.didset(char a1)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      v3 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_isThumbnailViewCollapsed;
      swift_beginAccess();
      if (v2[v3] == 1)
      {
        v4 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentThumbnailView;
        swift_beginAccess();
        v5 = *&v2[v4];
        if (v5)
        {
          v6 = v5;
          [v6 setHidden_];
        }
      }
    }
  }
}

uint64_t PaperDocumentViewController.isThumbnailViewCollapsed.getter()
{
  v1 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_isThumbnailViewCollapsed;
  swift_beginAccess();
  return *(v0 + v1);
}

void PaperDocumentViewController.isThumbnailViewCollapsed.setter(char a1)
{
  v3 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_isThumbnailViewCollapsed;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  PaperDocumentViewController.isThumbnailViewCollapsed.didset(v4);
}

void (*PaperDocumentViewController.isThumbnailViewCollapsed.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_isThumbnailViewCollapsed;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return PaperDocumentViewController.isThumbnailViewCollapsed.modify;
}

void PaperDocumentViewController.isThumbnailViewCollapsed.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  PaperDocumentViewController.isThumbnailViewCollapsed.didset(v5);

  free(v1);
}

uint64_t PaperDocumentViewController.editingMode.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_editingMode;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

void PaperDocumentViewController.editingMode.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_editingMode;
  swift_beginAccess();
  *(v1 + v3) = v2;
  v4 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (v5)
  {
    v7 = *(v1 + v3);
    v6 = v5;
    PaperDocumentView.editingMode.setter(&v7);
  }

  PaperDocumentViewController.updatePlusButton()();
}

void (*PaperDocumentViewController.editingMode.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_editingMode;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return PaperDocumentViewController.editingMode.modify;
}

void PaperDocumentViewController.editingMode.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
    swift_beginAccess();
    v6 = *(v4 + v5);
    if (v6)
    {
      v8 = *(v3[3] + v3[4]);
      v7 = v6;
      PaperDocumentView.editingMode.setter(&v8);
    }

    PaperDocumentViewController.updatePlusButton()();
  }

  free(v3);
}

Swift::Void __swiftcall PaperDocumentViewController.setEditingMode(_:didUseBanner:)(PaperKit::CanvasEditingMode _, Swift::Bool didUseBanner)
{
  v3 = v2;
  v5 = *_;
  v6 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_editingMode;
  swift_beginAccess();
  *(v3 + v6) = v5;
  v7 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (v8)
  {
    v12 = *(v3 + v6);
    v9 = v8;
    PaperDocumentView.editingMode.setter(&v12);
  }

  PaperDocumentViewController.updatePlusButton()();
  if (v5 == 1)
  {
    v10 = *(v3 + v7);
    if (v10)
    {
      if (didUseBanner)
      {
        v11 = 48;
      }

      else
      {
        v11 = 51;
      }

      *(*(v10 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_formAnalytics) + 19) = v11;
    }
  }
}

void (*PaperDocumentViewController.pageOverlayViewProvider.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageOverlayViewProvider;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return PaperDocumentViewController.pageOverlayViewProvider.modify;
}

void PaperDocumentViewController.pageOverlayViewProvider.modify(uint64_t a1, char a2)
{
  PaperDocumentViewController.pageOverlayViewProvider.modify(a1, a2);
}

{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    v4 = v3[5];
    swift_endAccess();
    swift_unknownObjectRelease();
    v5 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
    swift_beginAccess();
    v6 = *(v4 + v5);
    if (v6)
    {
      swift_unknownObjectWeakLoadStrong();
      KeyPath = swift_getKeyPath();
      v9 = &v9;
      MEMORY[0x1EEE9AC00](KeyPath);
      v3[3] = v6;
      lazy protocol witness table accessor for type PaperDocumentView and conformance PaperDocumentView(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
      v8 = v6;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      swift_unknownObjectRelease();
    }
  }

  free(v3);
}

id key path getter for PaperDocumentViewController.toolPicker : PaperDocumentViewController@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController__toolPicker);
  if (v3)
  {
    v4 = *(*a1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController__toolPicker);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E6978530]) init];
    v3 = 0;
  }

  *a2 = v4;

  return v3;
}

id PaperDocumentViewController.toolPicker.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController__toolPicker);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController__toolPicker);
  }

  else
  {
    v2 = [objc_allocWithZone(MEMORY[0x1E6978530]) init];
    v1 = 0;
  }

  v3 = v1;
  return v2;
}

void PaperDocumentViewController.toolPicker.setter(void *a1)
{
  v2 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController__toolPicker;
  v3 = *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController__toolPicker);
  *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController__toolPicker) = a1;
  v4 = a1;

  v5 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (v6)
  {
    v7 = *(v1 + v2);
    v8 = v7;
    v9 = v6;
    PaperDocumentView.toolPicker.setter(v7);
  }
}

void (*PaperDocumentViewController.toolPicker.modify(void *a1))(void **a1, char a2)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController__toolPicker);
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController__toolPicker);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E6978530]) init];
    v3 = 0;
  }

  *a1 = v4;
  v5 = v3;
  return PaperDocumentViewController.toolPicker.modify;
}

void PaperDocumentViewController.toolPicker.modify(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    PaperDocumentViewController.toolPicker.setter(v3);
  }

  else
  {
    PaperDocumentViewController.toolPicker.setter(v2);
  }
}

Swift::Void __swiftcall PaperDocumentViewController.removeToolPicker()()
{
  v1 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController__toolPicker;
  v2 = *(v0 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController__toolPicker);
  *(v0 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController__toolPicker) = 0;

  v3 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v4 = *(v0 + v3);
  if (v4)
  {
    v5 = *(v0 + v1);
    v6 = v5;
    v7 = v4;
    PaperDocumentView.toolPicker.setter(v5);
  }
}

uint64_t one-time initialization function for defaultBackgroundColor()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v4[4] = closure #1 in variable initialization expression of static PaperDocumentViewController.defaultBackgroundColor;
  v4[5] = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = thunk for @escaping @callee_guaranteed (@guaranteed UITraitCollection) -> (@owned UIColor);
  v4[3] = &block_descriptor_226_0;
  v1 = _Block_copy(v4);
  v2 = [v0 initWithDynamicProvider_];
  _Block_release(v1);

  static PaperDocumentViewController.defaultBackgroundColor = v2;
  return result;
}

id closure #1 in variable initialization expression of static PaperDocumentViewController.defaultBackgroundColor(void *a1)
{
  v1 = [a1 userInterfaceIdiom];
  v2 = objc_opt_self();
  v3 = &selRef_whiteColor;
  if (v1 != 6)
  {
    v3 = &selRef_clearColor;
  }

  v4 = [v2 *v3];

  return v4;
}

uint64_t key path setter for PaperDocumentViewController.paperDocument : PaperDocumentViewController(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v10 - v5;
  (*(v3 + 16))(v10 - v5, a1, v2, v4);
  v7 = PaperDocumentViewController.paperDocument.modify(v10);
  (*(v3 + 24))(v8, v6, v2);
  (v7)(v10, 0);
  return (*(v3 + 8))(v6, v2);
}

uint64_t PaperDocumentViewController.paperDocument.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14[-v4];
  v6 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v7 = *(v1 + v6);
  if (v7)
  {
    v8 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_dataModel;
    swift_beginAccess();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd);
    return (*(*(v9 - 8) + 16))(a1, v7 + v8, v9);
  }

  else
  {
    v11 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentTemp;
    swift_beginAccess();
    outlined init with copy of Date?(v1 + v11, v5, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMd);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd);
    v13 = *(v12 - 8);
    result = (*(v13 + 48))(v5, 1, v12);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      return (*(v13 + 32))(a1, v5, v12);
    }
  }

  return result;
}

void (*PaperDocumentViewController.paperDocument.modify(uint64_t *a1))(void ***a1)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0xA0uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd);
  v5[14] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[15] = v7;
  if (v3)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v7 + 64));
  }

  v5[16] = v9;
  v10 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v11 = *(v1 + v10);
  v5[17] = v11;
  if (v11)
  {
    v12 = v11;
    v5[18] = PaperDocumentView.dataModel.modify();
    return PaperDocumentViewController.paperDocument.modify;
  }

  else
  {
    v14 = PaperDocumentViewController.paperDocumentTemp.modify();
    result = (*(v8 + 48))(v15, 1, v6);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v5[19] = v14;
      return PaperDocumentViewController.paperDocument.modify;
    }
  }

  return result;
}

void PaperDocumentViewController.paperDocument.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  (*(*a1 + 144))();
  if (a2)
  {
  }

  else
  {
    v5 = *(v3 + 128);
    v4 = *(v3 + 136);
    v6 = *(v3 + 112);
    v7 = *(v3 + 120);
    v8 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_dataModel;
    swift_beginAccess();
    (*(v7 + 16))(v5, &v4[v8], v6);
    specialized PaperDocumentView.merge<A>(_:from:page:)(v5, 3u, 0);

    (*(v7 + 8))(v5, v6);
  }

  free(*(v3 + 128));

  free(v3);
}

void PaperDocumentViewController.paperDocument.modify(void ***a1)
{
  v1 = *a1;
  ((*a1)[19])(*a1, 0);
  free(v1[16]);

  free(v1);
}

uint64_t PaperDocumentViewController.paperDocument.setter(uint64_t a1)
{
  v2 = PaperDocumentViewController.paperDocument.modify(v8);
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd);
  v6 = *(v5 - 8);
  (*(v6 + 24))(v4, a1, v5);
  (v2)(v8, 0);
  return (*(v6 + 8))(a1, v5);
}

uint64_t PaperDocumentViewController.shouldShowFormFillingUIAutomatically.getter()
{
  v1 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_shouldShowFormFillingUIAutomatically;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t PaperDocumentViewController.shouldShowFormFillingUIAutomatically.setter(char a1)
{
  v3 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_shouldShowFormFillingUIAutomatically;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void PaperDocumentViewController.setupDefaultBannerUI(updateToolbar:)(uint64_t a1, uint64_t a2)
{
  v43 = &type metadata for AutofillFeatureFlags;
  v5 = lazy protocol witness table accessor for type AutofillFeatureFlags and conformance AutofillFeatureFlags();
  v44 = v5;
  v42[0] = 0;
  v6 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(v42);
  if (v6 & 1) != 0 || (v43 = &type metadata for AutofillFeatureFlags, v44 = v5, v42[0] = 1, v7 = isFeatureEnabled(_:)(), __swift_destroy_boxed_opaque_existential_0(v42), (v7))
  {
    v8 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_shouldShowFormFillingUIAutomatically;
    swift_beginAccess();
    if (*(v2 + v8) == 1)
    {
      v9 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_defaultBannerWasDisplayed;
      if ((*(v2 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_defaultBannerWasDisplayed) & 1) == 0)
      {
        v10 = MEMORY[0x1DA6CCED0](0xD000000000000021, 0x80000001D4085A50);
        v41 = [objc_opt_self() systemImageNamed_];

        if (one-time initialization token for paperKitBundle != -1)
        {
          swift_once();
        }

        isa = paperKitBundle.super.isa;
        v45._object = 0x80000001D40872F0;
        v12.value._countAndFlagsBits = 0x617A696C61636F4CLL;
        v13._countAndFlagsBits = 0xD00000000000002FLL;
        v13._object = 0x80000001D40872C0;
        v12.value._object = 0xEB00000000656C62;
        v14._countAndFlagsBits = 0;
        v14._object = 0xE000000000000000;
        v45._countAndFlagsBits = 0xD000000000000015;
        v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v12, paperKitBundle, v14, v45);
        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIAction);
        v16 = swift_allocObject();
        v16[2] = v2;
        v16[3] = a1;
        v16[4] = a2;
        v17 = v2;
        outlined copy of (@escaping @callee_guaranteed (@unowned PDFDisplayBox, @guaranteed CGContextRef) -> ())?(a1);
        v18 = v2;
        v19 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        v46._object = 0x80000001D4087330;
        v20._countAndFlagsBits = 0x6C6C69466F747541;
        v20._object = 0xED00006D726F4620;
        v21._countAndFlagsBits = 0xD00000000000001FLL;
        v21._object = 0x80000001D4087310;
        v46._countAndFlagsBits = 0xD00000000000001CLL;
        v22.value._countAndFlagsBits = 0x617A696C61636F4CLL;
        v22.value._object = 0xEB00000000656C62;
        countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v21, v22, isa, v20, v46)._countAndFlagsBits;
        v24 = MEMORY[0x1DA6CCED0](countAndFlagsBits);

        [v19 setTitle_];

        *(swift_allocObject() + 16) = v17;
        v40 = v17;
        v25 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        v18[v9] = 1;
        v26 = &v40[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_bannerViewConfiguration];
        swift_beginAccess();
        v27 = *v26;
        v28 = *(v26 + 1);
        v29 = *(v26 + 2);
        v30 = *(v26 + 3);
        v31 = *(v26 + 4);
        v38 = *(v26 + 6);
        v39 = *(v26 + 5);
        *v26 = v41;
        *(v26 + 8) = v15;
        *(v26 + 24) = xmmword_1D40617B0;
        *(v26 + 5) = v19;
        *(v26 + 6) = v25;
        v32 = v41;
        v33 = v19;
        v34 = v25;
        v35 = v32;

        v36 = v33;
        v37 = v34;
        outlined consume of BannerViewConfiguration?(v27, v28, v29, v30, v31, v39, v38);
        PaperDocumentViewController.bannerViewConfiguration.didset();
      }
    }
  }
}

void closure #1 in PaperDocumentViewController.setupDefaultBannerUI(updateToolbar:)(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v5 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_editingMode;
  swift_beginAccess();
  *(a2 + v5) = 1;
  v6 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v7 = *(a2 + v6);
  if (v7)
  {
    v11 = *(a2 + v5);
    v8 = v7;
    PaperDocumentView.editingMode.setter(&v11);
  }

  PaperDocumentViewController.updatePlusButton()();
  if (a3)
  {
    a3();
  }

  v9 = *(a2 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_bannerView);
  if (v9)
  {
    [v9 removeFromSuperview];
  }

  PaperDocumentViewController.constraintPageLabelViewToBannerIfNeeded()();
  v10 = *(a2 + v6);
  if (v10)
  {
    *(*(v10 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_formAnalytics) + 19) = 48;
  }
}

void closure #2 in PaperDocumentViewController.setupDefaultBannerUI(updateToolbar:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_bannerView);
  if (v3)
  {
    [v3 removeFromSuperview];
  }

  PaperDocumentViewController.constraintPageLabelViewToBannerIfNeeded()();
  v4 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v5 = *(a2 + v4);
  if (v5)
  {
    v6 = *(v5 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_tiledView);
    if (v6)
    {
      v7 = *(v6 + OBJC_IVAR____TtC8PaperKit17TiledDocumentView_canvasElementController);
      v8 = &v7[OBJC_IVAR____TtC8PaperKit23CanvasElementController_delegate];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v9 = *(v8 + 1);
        ObjectType = swift_getObjectType();
        v11 = *(v9 + 16);
        v12 = v7;
        v13 = v11(ObjectType, v9);

        v14 = swift_unknownObjectRelease();
        if (v13)
        {
          v15 = *((*MEMORY[0x1E69E7D40] & *v13) + 0x440);
          v16 = (v15)(v14);
          v18 = v17;
          v19 = swift_getObjectType();
          (*(v18 + 232))(v19, v18);

          v20 = v15();
          v22 = v21;
          v23 = swift_getObjectType();
          v24 = (*(v22 + 168))(v23, v22);

          if (v24)
          {
            v25 = *&v24[OBJC_IVAR____TtC8PaperKit15FormFillingView_analytics];

            *(v25 + 17) = 1;
          }
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

id key path getter for PaperDocumentViewController.bannerViewConfiguration : PaperDocumentViewController@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_bannerViewConfiguration;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  v10 = *(v3 + 48);
  *a2 = *v3;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v8;
  a2[5] = v9;
  a2[6] = v10;
  return outlined copy of BannerViewConfiguration?(v4, v5, v6, v7, v8, v9, v10);
}

void key path setter for PaperDocumentViewController.bannerViewConfiguration : PaperDocumentViewController(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *a2 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_bannerViewConfiguration;
  swift_beginAccess();
  v11 = *v9;
  v10 = *(v9 + 8);
  v15 = *(v9 + 24);
  v16 = *(v9 + 16);
  v13 = *(v9 + 40);
  v14 = *(v9 + 32);
  v12 = *(v9 + 48);
  *v9 = v2;
  *(v9 + 8) = v3;
  *(v9 + 16) = v4;
  *(v9 + 24) = v5;
  *(v9 + 32) = v6;
  *(v9 + 40) = v7;
  *(v9 + 48) = v8;
  outlined copy of BannerViewConfiguration?(v2, v3, v4, v5, v6, v7, v8);
  outlined consume of BannerViewConfiguration?(v11, v10, v16, v15, v14, v13, v12);
  PaperDocumentViewController.bannerViewConfiguration.didset();
}

void PaperDocumentViewController.bannerViewConfiguration.didset()
{
  v1 = &v0[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_bannerViewConfiguration];
  swift_beginAccess();
  if (*v1 != 1)
  {
    v3 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentThumbnailView;
    swift_beginAccess();
    v4 = *&v0[v3];
    if (!v4)
    {
      return;
    }

    v5 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
    swift_beginAccess();
    v6 = *&v0[v5];
    if (!v6)
    {
      return;
    }

    v7 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
    swift_beginAccess();
    v8 = *&v6[v7];
    if (!v8)
    {
      return;
    }

    v9 = *&v0[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_bannerView];
    if (!v9)
    {
      return;
    }

    v10 = v9;
    v11 = v8;
    v12 = v6;
    v13 = v4;
    v14 = [v10 superview];
    if (v14)
    {
      v15 = v14;

LABEL_13:
LABEL_14:

      return;
    }

    v16 = *v1;
    if (*v1 == 1)
    {

      goto LABEL_13;
    }

    v56 = v12;
    v61 = *(v1 + 1);
    v62 = v13;
    v17 = *(v1 + 2);
    v60 = *(v1 + 3);
    v18 = *(v1 + 4);
    v19 = *(v1 + 5);
    v54 = *(v1 + 6);
    v58 = v54;
    v57 = v16;

    v63 = v18;

    v55 = v19;
    v20 = v19;
    PaperDocumentViewController.constraintPageLabelViewToBannerIfNeeded()();
    v21 = *&v6[v7];
    if (v21)
    {
      [v21 addSubview_];
      if (v17)
      {
        v22 = MEMORY[0x1DA6CCED0](v61, v17);
      }

      else
      {
        v22 = 0;
      }

      v53 = v16;
      if (v18)
      {
        v23 = MEMORY[0x1DA6CCED0](v60);
      }

      else
      {
        v23 = 0;
      }

      v24 = [objc_opt_self() configurationWithImage:v57 title:v22 subtitle:v23 primaryAction:v20 dismissAction:v58];

      [v10 populateWithConfiguration_];
      [v10 setTranslatesAutoresizingMaskIntoConstraints_];
      v25 = [v10 bottomAnchor];
      v26 = v11;
      v27 = [v26 safeAreaLayoutGuide];
      v28 = [v27 topAnchor];

      v29 = [v25 constraintEqualToAnchor_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_1D405B630;
      *(v30 + 32) = v29;
      v59 = v29;
      v31 = [v10 leadingAnchor];
      v32 = [v62 trailingAnchor];
      v33 = [v31 constraintEqualToAnchor:v32 constant:8.0];

      *(v30 + 40) = v33;
      v34 = [v10 leadingAnchor];
      v35 = [v0 view];
      if (v35)
      {
        v36 = v35;
        v37 = objc_opt_self();
        v38 = [v36 safeAreaLayoutGuide];

        v39 = [v38 leadingAnchor];
        v40 = [v34 constraintGreaterThanOrEqualToAnchor:v39 constant:8.0];

        *(v30 + 48) = v40;
        v41 = [v10 trailingAnchor];

        v42 = [v26 safeAreaLayoutGuide];
        v43 = [v42 trailingAnchor];

        v44 = [v41 constraintEqualToAnchor:v43 constant:-8.0];
        *(v30 + 56) = v44;
        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSLayoutConstraint);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v37 activateConstraints_];

        v46 = [v0 view];
        if (v46)
        {
          v47 = v46;
          [v46 layoutIfNeeded];

          v48 = swift_allocObject();
          v48[2] = v59;
          v48[3] = v10;
          v48[4] = v26;
          v48[5] = v0;
          aBlock[4] = partial apply for closure #1 in PaperDocumentViewController.bannerViewConfiguration.didset;
          aBlock[5] = v48;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
          aBlock[3] = &block_descriptor_261;
          v49 = _Block_copy(aBlock);
          v10 = v10;
          v50 = v26;
          v51 = v59;
          v52 = v0;

          [v10 showWithAnimations_];
          _Block_release(v49);

          outlined consume of BannerViewConfiguration?(v53, v61, v17, v60, v63, v55, v54);
          goto LABEL_14;
        }

LABEL_28:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_28;
  }

  v2 = *&v0[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_bannerView];
  if (v2)
  {
    [v2 removeFromSuperview];
  }

  PaperDocumentViewController.constraintPageLabelViewToBannerIfNeeded()();
}

void closure #1 in PaperDocumentViewController.bannerViewConfiguration.didset(void *a1, void *a2, void *a3, void *a4)
{
  [a1 setActive_];
  v7 = [a2 topAnchor];
  v8 = [a3 safeAreaLayoutGuide];
  v9 = [v8 topAnchor];

  v10 = [v7 constraintEqualToAnchor_];
  [v10 setActive_];

  v11 = [a4 view];
  if (v11)
  {
    v12 = v11;
    [v11 layoutIfNeeded];
  }

  else
  {
    __break(1u);
  }
}

id PaperDocumentViewController.bannerViewConfiguration.getter@<X0>(void *a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_bannerViewConfiguration;
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

void PaperDocumentViewController.bannerViewConfiguration.setter(uint64_t a1)
{
  v13 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_bannerViewConfiguration;
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
  *(v4 + 32) = v13;
  *(v4 + 48) = v3;
  outlined consume of BannerViewConfiguration?(v5, v6, v7, v8, v9, v10, v11);
  PaperDocumentViewController.bannerViewConfiguration.didset();
}

void (*PaperDocumentViewController.bannerViewConfiguration.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return PaperDocumentViewController.bannerViewConfiguration.modify;
}

void PaperDocumentViewController.bannerViewConfiguration.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    PaperDocumentViewController.bannerViewConfiguration.didset();
  }
}

id PaperDocumentViewController.__allocating_init(context:pdfURL:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for DataOrURL();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a2, v7);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v13) = 3;
  objc_allocWithZone(type metadata accessor for PaperDocumentViewController(0));
  v9 = a1;
  v10 = PaperDocumentViewController.init(withDataOrURL:context:editingMode:)(v6, v9, &v13);
  (*(v8 + 8))(a2, v7);

  return v10;
}

id PaperDocumentViewController.__allocating_init(context:data:)(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for DataOrURL();
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v8 = a2;
  v8[1] = a3;
  swift_storeEnumTagMultiPayload();
  LOBYTE(v13) = 3;
  objc_allocWithZone(type metadata accessor for PaperDocumentViewController(0));
  outlined copy of Data._Representation(a2, a3);
  v9 = a1;
  v10 = PaperDocumentViewController.init(withDataOrURL:context:editingMode:)(v8, v9, &v13);
  outlined consume of Data._Representation(a2, a3);

  return v10;
}

id PaperDocumentViewController.__allocating_init(context:safelyWithPDFURL:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for DataOrURL();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a2, v7);
  swift_storeEnumTagMultiPayload();
  v13 = 3;
  v9 = objc_allocWithZone(type metadata accessor for PaperDocumentViewController(0));
  v10 = PaperDocumentViewController.init(withDataOrURL:context:editingMode:)(v6, a1, &v13);
  (*(v8 + 8))(a2, v7);
  return v10;
}

id PaperDocumentViewController.__allocating_init(context:safelyWithData:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DataOrURL();
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v8 = a2;
  v8[1] = a3;
  swift_storeEnumTagMultiPayload();
  v12 = 3;
  v9 = objc_allocWithZone(type metadata accessor for PaperDocumentViewController(0));
  return PaperDocumentViewController.init(withDataOrURL:context:editingMode:)(v8, a1, &v12);
}

id PaperDocumentViewController.init(context:paperDocument:editingMode:)(void *a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = specialized PaperDocumentViewController.init(context:paperDocument:editingMode:)(a1, a2, a3);

  return v4;
}

uint64_t closure #1 in PaperDocumentViewController.init(context:paperDocument:editingMode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = type metadata accessor for MainActor();
  v5[3] = static MainActor.shared.getter();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = closure #1 in PaperDocumentViewController.init(context:paperDocument:editingMode:);

  return PaperDocumentViewController.setupDocumentView(context:)(a5);
}

uint64_t closure #1 in PaperDocumentViewController.init(context:paperDocument:editingMode:)()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in PaperDocumentViewController.init(context:paperDocument:editingMode:), v1, v0);
}

id PaperDocumentViewController.init(withDataOrURL:context:editingMode:)(uint64_t a1, void *a2, unsigned __int8 *a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v84 = &v69 - v9;
  v10 = type metadata accessor for URL();
  v72 = *(v10 - 8);
  v73 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v70 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v71 = &v69 - v13;
  v81 = type metadata accessor for DataOrURL();
  MEMORY[0x1EEE9AC00](v81);
  v82 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CRAsset();
  v76 = *(v15 - 8);
  v77 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v75 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v69 = &v69 - v18;
  v74 = v19;
  MEMORY[0x1EEE9AC00](v20);
  v86 = &v69 - v21;
  v22 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v22 - 8);
  v80 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMd);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v69 - v25;
  v79 = *a3;
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView] = 0;
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentThumbnailView] = 0;
  v27 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_scrollViewObserver;
  *&v4[v27] = [objc_allocWithZone(type metadata accessor for PaperDocumentViewController_ScrollViewObserver()) init];
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_thumbnailBackgroundView] = 0;
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_thumbnailViewLeadingToSuperviewLeadingConstraint] = 0;
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_thumbnailViewWidthConstraint] = 0;
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_documentViewLeadingToThumbnailViewTrailingConstraint] = 0;
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_screenEdgePanGestureRecognizer] = 0;
  v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_allowsUserInteractionToToggleThumbnailViewVisibility] = 1;
  v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageLabelShowsSidebarIconInRegularWidth] = 1;
  v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_isThumbnailViewCollapsed] = 0;
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageOverlayViewProvider + 8] = 0;
  swift_unknownObjectWeakInit();
  v88 = a1;
  if (MEMORY[0x1E69E7CC0] >> 62 && __CocoaSet.count.getter())
  {
    v28 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v28 = MEMORY[0x1E69E7CD0];
  }

  v83 = a2;
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_cancellables] = v28;
  v29 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController__toolPicker;
  *&v4[v29] = [objc_allocWithZone(MEMORY[0x1E6978530]) init];
  v30 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentTemp;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd);
  v78 = *(*(v31 - 8) + 56);
  v78(&v4[v30], 1, 1, v31);
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_passwordViewController] = 0;
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_assetPasswordToRemove] = xmmword_1D405C100;
  v32 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_backgroundColor;
  if (one-time initialization token for defaultBackgroundColor != -1)
  {
    swift_once();
  }

  v33 = static PaperDocumentViewController.defaultBackgroundColor;
  *&v4[v32] = static PaperDocumentViewController.defaultBackgroundColor;
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_thumbnailViewBackgroundColor] = 0;
  v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_shouldShowFormFillingUIAutomatically] = 0;
  v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_defaultBannerWasDisplayed] = 0;
  v34 = &v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_bannerViewConfiguration];
  *v34 = 1;
  *(v34 + 8) = 0u;
  *(v34 + 24) = 0u;
  *(v34 + 40) = 0u;
  v35 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_bannerView;
  v36 = objc_allocWithZone(PPKQuickLookBannerView);
  v37 = v33;
  *&v4[v35] = [v36 init];
  v38 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_plusButton;
  type metadata accessor for FormPlusButtonView();
  *&v4[v38] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_ignorePasswordRequest] = 0;
  v39 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_lastPasswordRequestDate;
  v40 = type metadata accessor for Date();
  (*(*(v40 - 8) + 56))(&v4[v39], 1, 1, v40);
  v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_lastPasswordRequestSucceeded] = 0;
  v41 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_passThroughSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy9Coherence7CapsuleVy8PaperKit0F8DocumentVGs5NeverOGMd);
  swift_allocObject();
  *&v4[v41] = PassthroughSubject.init()();
  v42 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_livePassThroughSubject;
  swift_allocObject();
  *&v4[v42] = PassthroughSubject.init()();
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_liveStreamMessenger + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_participantDetailsDataSource + 8] = 0;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_showParticipantCursors] = 0;
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_textualContextProvider + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_viewControllerForPresentingUI] = 0;
  v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_indirectPointerTouchMode] = 0;
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController__cachedToolPicker] = 0;
  v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_isPageLabelViewInitialized] = 0;
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController____lazy_storage___pageLabelView] = 0;
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageLabelViewTopToSuperviewTopConstraint] = 0;
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageLabelViewTopToBannerBottomConstraint] = 0;
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageLabelViewLeadingToThumbnailViewTrailingConstraint] = 0;
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageLabelViewLeadingToPaperDocumentLeadingConstraint] = 0;
  v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_editingMode] = v79;
  static CRKeyPath.unique.getter();
  type metadata accessor for PaperDocument(0);
  lazy protocol witness table accessor for type PaperDocumentView and conformance PaperDocumentView(&lazy protocol witness table cache variable for type PaperDocument and conformance PaperDocument, type metadata accessor for PaperDocument);
  Capsule.init(id:initClosure:)();
  v78(v26, 0, 1, v31);
  swift_beginAccess();
  outlined assign with take of UUID?(v26, &v4[v30], &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMd);
  swift_endAccess();
  v43 = type metadata accessor for PaperDocumentViewController(0);
  v87.receiver = v4;
  v87.super_class = v43;
  v44 = objc_msgSendSuper2(&v87, sel_initWithNibName_bundle_, 0, 0);
  v45 = v88;
  v46 = v82;
  outlined init with copy of PaperDocument(v88, v82, type metadata accessor for DataOrURL);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v50 = v83;
    CRContext.assetManager.getter();
    v53 = v86;
    CRAsset.init(data:assetManager:)();
LABEL_10:
    v54 = v84;
    static TaskPriority.userInitiated.getter();
    v55 = type metadata accessor for TaskPriority();
    (*(*(v55 - 8) + 56))(v54, 0, 1, v55);
    v56 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v57 = v76;
    v58 = v44;
    v59 = v75;
    v60 = v53;
    v61 = v77;
    (*(v76 + 16))(v75, v60, v77);
    v62 = (*(v57 + 80) + 40) & ~*(v57 + 80);
    v63 = (v74 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
    v64 = swift_allocObject();
    *(v64 + 2) = 0;
    *(v64 + 3) = 0;
    *(v64 + 4) = v56;
    v65 = v59;
    v44 = v58;
    (*(v57 + 32))(&v64[v62], v65, v61);
    *&v64[v63] = v50;
    v66 = v50;
    v67 = v84;
    _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v84, &async function pointer to partial apply for closure #2 in PaperDocumentViewController.init(withDataOrURL:context:editingMode:), v64);

    outlined destroy of PaperDocument(v88, type metadata accessor for DataOrURL);
    outlined destroy of StocksKitCurrencyCache.Provider?(v67, &_sScPSgMd);
    (*(v57 + 8))(v86, v61);
    return v44;
  }

  v48 = v71;
  v47 = v72;
  v49 = v73;
  (*(v72 + 32))(v71, v46, v73);
  (*(v47 + 16))(v70, v48, v49);
  v50 = v83;
  CRContext.assetManager.getter();
  v51 = v69;
  v52 = v85;
  CRAsset.init(safelyFrom:coordinated:assetManager:)();
  v53 = v86;
  if (!v52)
  {
    v85 = 0;
    (*(v47 + 8))(v48, v49);
    (*(v76 + 32))(v53, v51, v77);
    goto LABEL_10;
  }

  outlined destroy of PaperDocument(v45, type metadata accessor for DataOrURL);
  (*(v47 + 8))(v48, v49);
  return v44;
}

uint64_t closure #1 in PaperDocumentViewController.init(withDataOrURL:context:editingMode:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CRAssetVSgMd);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_3<TaggedPaperPage> and conformance SharedTagged_3<A>, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_3<TaggedPaperPage> and conformance SharedTagged_3<A>, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd);
  CROrderedSet.init()();
  type metadata accessor for PaperDocument(0);
  v6 = type metadata accessor for CRAsset();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  outlined init with copy of Date?(v5, v2, &_s9Coherence7CRAssetVSgMd);
  lazy protocol witness table accessor for type CRAsset? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v5, &_s9Coherence7CRAssetVSgMd);
  return UnknownProperties.init()();
}

uint64_t closure #2 in PaperDocumentViewController.init(withDataOrURL:context:editingMode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  return MEMORY[0x1EEE6DFA0](closure #2 in PaperDocumentViewController.init(withDataOrURL:context:editingMode:), 0, 0);
}

uint64_t closure #2 in PaperDocumentViewController.init(withDataOrURL:context:editingMode:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[14] = v2;
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit0aB11PDFDocumentCSgMd);
    *v2 = v0;
    v2[1] = closure #2 in PaperDocumentViewController.init(withDataOrURL:context:editingMode:);

    return MEMORY[0x1EEDF52A8](v0 + 9, 1, &async function pointer to closure #1 in closure #2 in PaperDocumentViewController.init(withDataOrURL:context:editingMode:), 0, v3);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

{
  v1 = *(v0 + 72);
  *(v0 + 128) = v1;
  if (v1 >= 2)
  {
    v4 = [v1 isLocked];
    type metadata accessor for MainActor();
    *(v0 + 136) = static MainActor.shared.getter();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    *(v0 + 144) = v6;
    *(v0 + 152) = v5;
    if (v4)
    {
      v7 = closure #2 in PaperDocumentViewController.init(withDataOrURL:context:editingMode:);
    }

    else
    {
      v7 = closure #2 in PaperDocumentViewController.init(withDataOrURL:context:editingMode:);
    }

    return MEMORY[0x1EEE6DFA0](v7, v6, v5);
  }

  else
  {

    v2 = *(v0 + 8);

    return v2();
  }
}

{
  v1 = v0[16];
  v2 = v0[12];
  v3 = v0[11];

  PaperDocumentViewController.unlock(pdfDocument:asset:context:)(v1, v3, v2);

  return MEMORY[0x1EEE6DFA0](closure #2 in PaperDocumentViewController.init(withDataOrURL:context:editingMode:), 0, 0);
}

{
  v1 = *(v0 + 128);

  outlined consume of PaperKitPDFDocument??(v1);
  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[16];
  v2 = v0[11];
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = PaperDocumentViewController.paperDocument.modify(v0 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd);
  Capsule.callAsFunction<A>(_:)();

  (v4)(v0 + 2, 0);
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = closure #2 in PaperDocumentViewController.init(withDataOrURL:context:editingMode:);
  v6 = v0[12];

  return PaperDocumentViewController.setupDocumentView(context:)(v6);
}

{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return MEMORY[0x1EEE6DFA0](closure #2 in PaperDocumentViewController.init(withDataOrURL:context:editingMode:), v3, v2);
}

{

  return MEMORY[0x1EEE6DFA0](closure #2 in PaperDocumentViewController.init(withDataOrURL:context:editingMode:), 0, 0);
}

void closure #2 in PaperDocumentViewController.init(withDataOrURL:context:editingMode:)()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
  }

  else
  {

    MEMORY[0x1EEE6DFA0](closure #2 in PaperDocumentViewController.init(withDataOrURL:context:editingMode:), 0, 0);
  }
}

uint64_t closure #1 in closure #2 in PaperDocumentViewController.init(withDataOrURL:context:editingMode:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in PaperDocumentViewController.init(withDataOrURL:context:editingMode:), 0, 0);
}

uint64_t closure #1 in closure #2 in PaperDocumentViewController.init(withDataOrURL:context:editingMode:)()
{
  v1 = *(v0 + 16);
  v2 = objc_allocWithZone(type metadata accessor for PaperKitPDFDocument());
  URL._bridgeToObjectiveC()(v3);
  v5 = v4;
  v6 = [v2 initWithURL_];

  *v1 = v6;
  v7 = *(v0 + 8);

  return v7();
}

id PaperDocumentViewController.__deallocating_deinit()
{
  v1 = &v0[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_assetPasswordToRemove];
  v2 = *&v0[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_assetPasswordToRemove + 8];
  if (v2 >> 60 != 15)
  {
    v3 = *v1;
    v4 = outlined copy of Data._Representation(*v1, *&v0[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_assetPasswordToRemove + 8]);
    if (one-time initialization token for shared != -1)
    {
      v4 = swift_once();
    }

    v5 = *(static PasswordManager.shared + 16);
    MEMORY[0x1EEE9AC00](v4);
    MEMORY[0x1EEE9AC00](v6);
    os_unfair_lock_lock(v5 + 4);
    _s2os21OSAllocatedUnfairLockVAAytRszlE04withD0yqd__qd__yYbKXEKs8SendableRd__lFqd__ytz_tYbKXEfU_SSSg_TG5TA_0(&v9);
    os_unfair_lock_unlock(v5 + 4);

    outlined consume of Data?(v3, v2);
  }

  LOBYTE(v9) = 1;

  PassthroughSubject.send(completion:)();

  LOBYTE(v9) = 1;

  PassthroughSubject.send(completion:)();

  v7 = type metadata accessor for PaperDocumentViewController(0);
  v10.receiver = v0;
  v10.super_class = v7;
  return objc_msgSendSuper2(&v10, sel_dealloc);
}

void closure #1 in PaperDocumentViewController.open(pdfDocument:asset:context:)(uint64_t a1, void *a2, uint64_t a3)
{
  v61 = a2;
  v63 = a1;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CRAssetVSgMd);
  MEMORY[0x1EEE9AC00](v60);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v59 = &v48 - v7;
  v8 = type metadata accessor for CRAsset();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit0A8DocumentVSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v58 = &v48 - v13;
  v14 = type metadata accessor for PaperDocument(0);
  v56 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v49 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v48 - v17;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v48 = &v48 - v21;
  v22 = *(v9 + 16);
  v62 = v11;
  v52 = v22;
  v53 = v9 + 16;
  (v22)(v11, a3, v8, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_3<TaggedPaperPage> and conformance SharedTagged_3<A>, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_3<TaggedPaperPage> and conformance SharedTagged_3<A>, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd);
  CROrderedSet.init()();
  v23 = *(v14 + 20);
  v55 = v9;
  v24 = v9;
  v25 = v59;
  v26 = *(v24 + 56);
  v57 = v8;
  v50 = v26;
  v51 = v24 + 56;
  v26(v59, 1, 1, v8);
  outlined init with copy of Date?(v25, v5, &_s9Coherence7CRAssetVSgMd);
  lazy protocol witness table accessor for type CRAsset? and conformance <A> A?();
  v54 = v5;
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v25, &_s9Coherence7CRAssetVSgMd);
  v60 = v14;
  v27 = v61;
  UnknownProperties.init()();
  v28 = [v27 isLocked];
  if (!v28)
  {
    v35 = v65;
    v30 = v62;
    goto LABEL_8;
  }

  if (one-time initialization token for shared != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v29 = *(static PasswordManager.shared + 16);
    MEMORY[0x1EEE9AC00](v28);
    v30 = v62;
    *(&v48 - 2) = v31;
    *(&v48 - 1) = v30;
    MEMORY[0x1EEE9AC00](v32);
    *(&v48 - 2) = closure #1 in PasswordManager.password(for:)partial apply;
    *(&v48 - 1) = v33;
    os_unfair_lock_lock(v29 + 4);
    v34 = v65;
    closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(&v64);
    if (v34)
    {
      os_unfair_lock_unlock(v29 + 4);
      __break(1u);
      return;
    }

    v35 = 0;
    os_unfair_lock_unlock(v29 + 4);
    if (!*(&v64 + 1) || (v36 = MEMORY[0x1DA6CCED0](v64, *(&v64 + 1)), , v37 = [v27 unlockWithPassword_], v36, (v37 & 1) == 0))
    {
      v65 = 0;
      (*(v55 + 8))(v30, v57);
      outlined destroy of PaperDocument(v18, type metadata accessor for PaperDocument);
      v38 = 1;
      v39 = v58;
      goto LABEL_10;
    }

LABEL_8:
    v40 = [v27 pageCount];
    if ((v40 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_14:
    v28 = swift_once();
  }

  MEMORY[0x1EEE9AC00](v40);
  *(&v48 - 6) = v18;
  *(&v48 - 5) = v27;
  v41 = v63;
  *(&v48 - 4) = v30;
  *(&v48 - 3) = v41;
  *(&v48 - 2) = 0;
  *(&v48 - 8) = 1;
  specialized Sequence.compactMap<A>(_:)(closure #1 in PaperDocument.appendPages<A>(_:_:_:assetManager:useProxyPages:)specialized partial apply, (&v48 - 8), 0, v42);
  v65 = v35;
  *&v64 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGGMd);
  v62 = v23;
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [SharedTagged_3<TaggedPaperPage>] and conformance [A], &_sSay9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGGMd);
  CROrderedSet.append<A>(contentsOf:)();

  v44 = v57;
  v52(v25, v30, v57);
  v50(v25, 0, 1, v44);
  outlined init with copy of Date?(v25, v54, &_s9Coherence7CRAssetVSgMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd);
  CRRegister.wrappedValue.setter();
  outlined destroy of StocksKitCurrencyCache.Provider?(v25, &_s9Coherence7CRAssetVSgMd);
  (*(v55 + 8))(v30, v44);
  v39 = v58;
  outlined init with take of PaperDocument(v18, v58, type metadata accessor for PaperDocument);
  v38 = 0;
LABEL_10:
  v45 = v56;
  v46 = v60;
  (*(v56 + 56))(v39, v38, 1, v60);
  if ((*(v45 + 48))(v39, 1, v46) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v39, &_s8PaperKit0A8DocumentVSgMd);
  }

  else
  {
    v47 = v48;
    outlined init with take of PaperDocument(v39, v48, type metadata accessor for PaperDocument);
    outlined init with copy of PaperDocument(v47, v49, type metadata accessor for PaperDocument);
    Capsule.Ref.root.setter();
    outlined destroy of PaperDocument(v47, type metadata accessor for PaperDocument);
  }
}

void PaperDocumentViewController.unlock(pdfDocument:asset:context:)(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CRAssetVSgMd);
  *&v9 = MEMORY[0x1EEE9AC00](v8 - 8).n128_u64[0];
  v11 = &v29 - v10;
  v12 = [v3 view];
  if (v12)
  {
    v13 = v12;
    type metadata accessor for PaperDocumentPasswordViewController(0);
    v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    *&v14[OBJC_IVAR____TtC8PaperKit22PasswordViewController_delegate + 8] = &protocol witness table for PaperDocumentViewController;
    swift_unknownObjectWeakAssign();
    v30 = v14;
    v15 = [v30 view];
    if (v15)
    {
      v16 = v15;
      v17 = &v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_delegate];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v18 = *(v17 + 1);
        ObjectType = swift_getObjectType();
        (*(v18 + 24))(v4, a1, ObjectType, v18);
        swift_unknownObjectRelease();
      }

      [v4 addChildViewController_];
      [v13 addSubview_];
      specialized static NSLayoutConstraint.constrain(_:to:)(v16, v13);
      [v30 didMoveToParentViewController_];

      v20 = *&v30[OBJC_IVAR____TtC8PaperKit35PaperDocumentPasswordViewController_documentToUnlock];
      *&v30[OBJC_IVAR____TtC8PaperKit35PaperDocumentPasswordViewController_documentToUnlock] = a1;
      v21 = a1;

      v22 = type metadata accessor for CRAsset();
      v23 = *(v22 - 8);
      (*(v23 + 16))(v11, a2, v22);
      (*(v23 + 56))(v11, 0, 1, v22);
      v24 = OBJC_IVAR____TtC8PaperKit35PaperDocumentPasswordViewController_assetToUnlock;
      swift_beginAccess();
      outlined assign with take of UUID?(v11, &v30[v24], &_s9Coherence7CRAssetVSgMd);
      swift_endAccess();
      v25 = *&v30[OBJC_IVAR____TtC8PaperKit35PaperDocumentPasswordViewController_contextForLockedDocument];
      *&v30[OBJC_IVAR____TtC8PaperKit35PaperDocumentPasswordViewController_contextForLockedDocument] = a3;
      v26 = a3;

      v27 = *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_passwordViewController];
      *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_passwordViewController] = v30;
    }

    else
    {

      v28 = v30;
    }
  }
}

void PaperDocumentViewController.updateThumbnailViewConstraints()()
{
  v1 = *&v0[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_thumbnailViewLeadingToSuperviewLeadingConstraint];
  if (v1)
  {
    v2 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_isThumbnailViewCollapsed;
    swift_beginAccess();
    [v1 setActive_];
  }

  v3 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_allowsUserInteractionToToggleThumbnailViewVisibility;
  swift_beginAccess();
  if (v0[v3] & 1) != 0 || (v4 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_isThumbnailViewCollapsed, swift_beginAccess(), (v0[v4]))
  {
    v5 = *&v0[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_documentViewLeadingToThumbnailViewTrailingConstraint];
    if (v5)
    {
      v6 = v5;
      v7 = [v0 traitCollection];
      v8 = [v7 horizontalSizeClass];

      [v6 setActive_];
    }
  }

  else
  {
    v9 = *&v0[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_documentViewLeadingToThumbnailViewTrailingConstraint];
    if (v9)
    {
      [v9 setActive_];
    }
  }
}

Swift::Void __swiftcall PaperDocumentViewController.updateBackgroundColor()()
{
  v1 = v0;
  v2 = type metadata accessor for _Glass._GlassVariant();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v4 = *&v0[v3];
  if (v4)
  {
    v5 = *&v0[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_backgroundColor];
    v6 = v4;
    v7 = [v0 traitCollection];
    v8 = [v5 resolvedColorWithTraitCollection_];

    v9 = v8;
    [v6 setBackgroundColor_];
    v10 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
    swift_beginAccess();
    v11 = *&v6[v10];
    if (v11)
    {
      [v11 setBackgroundColor_];
      v12 = [v0 view];
      if (v12)
      {
        v13 = v12;
        [v12 setBackgroundColor_];

        goto LABEL_5;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

LABEL_5:
  v14 = [objc_opt_self() currentDevice];
  v15 = [v14 userInterfaceIdiom];

  if (v15 != 6)
  {
    v16 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentThumbnailView;
    swift_beginAccess();
    v17 = *&v0[v16];
    if (v17)
    {
      v18 = v17;
      if (_UISolariumEnabled())
      {
        v19 = v18;
        static _Glass._GlassVariant.regular.getter();
        v26[3] = type metadata accessor for _Glass();
        v26[4] = MEMORY[0x1E69DC388];
        __swift_allocate_boxed_opaque_existential_1(v26);
        _Glass.init(_:smoothness:)();
        UIView._background.setter();
        [v19 setBackgroundColor_];
      }

      else if (*&v0[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_thumbnailViewBackgroundColor])
      {
        [v18 setBackgroundColor_];
      }

      else
      {
        v20 = objc_opt_self();
        v21 = v18;
        v22 = [v20 tertiarySystemGroupedBackgroundColor];
        [v21 setBackgroundColor_];
      }

      v23 = *&v1[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_thumbnailBackgroundView];
      if (v23)
      {
        v24 = v23;
        v25 = [v18 backgroundColor];
        [v24 setBackgroundColor_];
      }
    }
  }
}

uint64_t PaperDocumentViewController.setupDocumentView(context:)(uint64_t a1)
{
  v2[77] = v1;
  v2[76] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMd);
  v2[78] = swift_task_alloc();
  v2[79] = swift_task_alloc();
  v2[80] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd);
  v2[81] = v3;
  v2[82] = *(v3 - 8);
  v2[83] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[84] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[85] = v5;
  v2[86] = v4;

  return MEMORY[0x1EEE6DFA0](PaperDocumentViewController.setupDocumentView(context:), v5, v4);
}

{
  v2 = *v1;
  v3 = *(*v1 + 720);
  v4 = *(*v1 + 608);
  *(*v1 + 736) = a1;

  v5 = *(v2 + 688);
  v6 = *(v2 + 680);

  return MEMORY[0x1EEE6DFA0](PaperDocumentViewController.setupDocumentView(context:), v6, v5);
}

uint64_t PaperDocumentViewController.setupDocumentView(context:)()
{
  v1 = *(v0 + 616);
  v2 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  *(v0 + 696) = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = *(v0 + 664);
    v5 = *(v0 + 656);
    v6 = *(v0 + 648);
    v7 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_dataModel;
    swift_beginAccess();
    (*(v5 + 16))(v4, v3 + v7, v6);
  }

  else
  {
    v8 = *(v0 + 656);
    v9 = *(v0 + 648);
    v10 = *(v0 + 640);
    v11 = *(v0 + 616);
    v12 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentTemp;
    swift_beginAccess();
    outlined init with copy of Date?(v11 + v12, v10, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMd);
    result = (*(v8 + 48))(v10, 1, v9);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    (*(*(v0 + 656) + 32))(*(v0 + 664), *(v0 + 640), *(v0 + 648));
  }

  v14 = *(v0 + 616);
  v15 = *(v0 + 608);
  v16 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_editingMode;
  *(v0 + 704) = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_editingMode;
  swift_beginAccess();
  *(v0 + 768) = *(v14 + v16);
  v17 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController__toolPicker;
  *(v0 + 712) = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController__toolPicker;
  v18 = *(v14 + v17);
  *(v0 + 720) = v18;
  objc_allocWithZone(type metadata accessor for PaperDocumentView());
  v19 = v18;
  v20 = v15;
  v21 = swift_task_alloc();
  *(v0 + 728) = v21;
  *v21 = v0;
  v21[1] = PaperDocumentViewController.setupDocumentView(context:);
  v22 = *(v0 + 664);
  v23 = *(v0 + 608);

  return specialized PaperDocumentView.init(context:document:editingMode:toolPicker:)(v23, v22, (v0 + 768), v18);
}

void PaperDocumentViewController.setupDocumentView(context:)()
{
  v297 = v0;
  v1 = v0[92];
  v2 = v0[77] + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageOverlayViewProvider;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = *(v2 + 8);
  swift_getKeyPath();
  v5 = swift_task_alloc();
  v5[2] = v1;
  v5[3] = Strong;
  v5[4] = v4;
  v0[74] = v1;
  lazy protocol witness table accessor for type PaperDocumentView and conformance PaperDocumentView(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  swift_unknownObjectRelease();

  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v6 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pageToOverlayMap;
  v294 = v0;
  swift_beginAccess();
  v295 = v1;
  v280 = v6;
  v7 = *(v1 + v6);
  v8 = v7 + 64;
  v9 = -1;
  v10 = -1 << *(v7 + 32);
  if (-v10 < 64)
  {
    v9 = ~(-1 << -v10);
  }

  v11 = v9 & *(v7 + 64);
  v12 = (63 - v10) >> 6;
  v286 = v7;

  v13 = 0;
  if (v11)
  {
    while (1)
    {
      v14 = v13;
LABEL_9:
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v16 = v286[7] + ((v14 << 10) | (16 * v15));
      v18 = *v16;
      v17 = *(v16 + 8);
      ObjectType = swift_getObjectType();
      v20 = swift_unknownObjectWeakLoadStrong();
      v21 = *(v17 + 224);
      v22 = v18;
      v21(v20, ObjectType, v17);

      if (!v11)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_93;
    }

    if (v14 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_9;
    }
  }

  v23 = v294[77];

  v24 = [v23 view];
  if (!v24)
  {
    goto LABEL_95;
  }

  v25 = v24;
  v26 = v294[92];
  [v25 addSubview_];

  v27 = *&v26[OBJC_IVAR____TtC8PaperKit17PaperDocumentView_tiledView];
  if (!v27)
  {
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  v28 = v27;
  v29 = specialized TiledPaperKitView.mostVisibleAttachment()(specialized TiledPaperKitView.paperAttachments(includeStandInAttachment:));

  if (v29)
  {
    [v29 becomeFirstResponder];
  }

  v30 = v294[77];
  v31 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController__cachedToolPicker;
  v32 = *&v30[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController__cachedToolPicker];
  if (v32)
  {
    v33 = v32;
    PaperDocumentView.updateTiledViewInk(for:)(v33);

    v34 = *&v30[v31];
    *&v30[v31] = 0;

    v30 = v294[77];
  }

  v35 = [v30 view];
  if (!v35)
  {
    goto LABEL_97;
  }

  v36 = v35;
  [v35 frame];
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;

  v45 = [objc_allocWithZone(type metadata accessor for PaperDocumentThumbnailView()) initWithFrame_];
  v46 = [objc_opt_self() currentDevice];
  v47 = [v46 userInterfaceIdiom];

  if (v47 == 6)
  {
    [v294[92] setOverrideUserInterfaceStyle_];
  }

  v48 = v294[77];

  v49 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_isThumbnailViewCollapsed;
  swift_beginAccess();
  v272 = v48;
  if (*(v48 + v49))
  {
    v50 = 1;
  }

  else
  {
    v51 = v294[92];
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v52 = v51;
    PaperDocumentThumbnailView.documentView.didset();

    v50 = *(v48 + v49);
  }

  v53 = v294[77];
  v54 = v45;
  [v54 setHidden_];
  v55 = [v53 view];
  if (!v55)
  {
    goto LABEL_98;
  }

  v56 = v55;
  v57 = v294[77];
  [v55 addSubview_];

  v58 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentThumbnailView;
  swift_beginAccess();
  v59 = *(v57 + v58);
  *(v57 + v58) = v54;
  v60 = v54;

  if ((_UISolariumEnabled() & 1) == 0)
  {
    v61 = v294[77];
    v62 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
    [v62 setTranslatesAutoresizingMaskIntoConstraints_];
    v63 = [v61 view];
    if (!v63)
    {
      goto LABEL_110;
    }

    v64 = v63;
    v65 = v294[77];
    [v63 insertSubview:v62 belowSubview:v60];

    v66 = *(v65 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_thumbnailBackgroundView);
    *(v65 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_thumbnailBackgroundView) = v62;
  }

  v67 = [v294[77] view];
  if (!v67)
  {
    goto LABEL_99;
  }

  v68 = v67;
  v69 = v294[92];
  v284 = [v67 topAnchor];

  [v69 setTranslatesAutoresizingMaskIntoConstraints_];
  [v60 setTranslatesAutoresizingMaskIntoConstraints_];
  if (_UISolariumEnabled())
  {
    [v60 setClipsToBounds_];
  }

  v277 = v49;
  v70 = v294[77];
  if (_UISolariumEnabled())
  {
    v71 = 16.0;
  }

  else
  {
    v71 = 0.0;
  }

  v72 = [v60 leadingAnchor];
  v73 = [v70 &selRef_shouldHighlightTextAndDDAfterNextAnalysis];
  if (v73)
  {
    v74 = v73;
    v75 = v294[92];
    v76 = v294[77];
    v77 = [v73 safeAreaLayoutGuide];

    v78 = [v77 leadingAnchor];
    v79 = [v72 constraintEqualToAnchor:v78 constant:v71];

    v80 = *&v76[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_thumbnailViewLeadingToSuperviewLeadingConstraint];
    *&v76[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_thumbnailViewLeadingToSuperviewLeadingConstraint] = v79;
    v81 = v79;

    v82 = [v75 leadingAnchor];
    v83 = [v60 trailingAnchor];
    v84 = [v82 constraintEqualToAnchor_];

    v85 = [v76 traitCollection];
    v86 = [v85 horizontalSizeClass];

    [v84 setActive_];
    v87 = *&v76[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_documentViewLeadingToThumbnailViewTrailingConstraint];
    *&v76[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_documentViewLeadingToThumbnailViewTrailingConstraint] = v84;
    v287 = v84;

    v285 = v60;
    v88 = [v60 trailingAnchor];
    v89 = [v76 view];
    if (!v89)
    {
      goto LABEL_101;
    }

    v90 = v89;
    v91 = v294[92];
    v92 = v294[77];
    v93 = [v89 leadingAnchor];

    v94 = [v88 constraintEqualToAnchor_];
    type metadata accessor for UILayoutPriority(0);
    v281 = v81;
    [v81 priority];
    *(v294 + 186) = v95;
    *(v294 + 187) = 1065353216;
    lazy protocol witness table accessor for type PaperDocumentView and conformance PaperDocumentView(&lazy protocol witness table cache variable for type UILayoutPriority and conformance UILayoutPriority, type metadata accessor for UILayoutPriority);
    static _UIKitNumericRawRepresentable.- infix(_:_:)();
    LODWORD(v96) = *(v294 + 191);
    [v94 setPriority_];
    v97 = [v91 leadingAnchor];

    v98 = [v92 view];
    if (!v98)
    {
      goto LABEL_102;
    }

    v99 = v98;
    v100 = v294[92];
    v101 = v294[77];
    v102 = [v98 leadingAnchor];

    v103 = [v97 constraintEqualToAnchor_];
    [v287 priority];
    *(v294 + 189) = v104;
    *(v294 + 190) = 1065353216;
    static _UIKitNumericRawRepresentable.- infix(_:_:)();
    LODWORD(v105) = *(v294 + 188);
    [v103 setPriority_];
    v106 = [v101 traitCollection];
    v107 = PaperDocumentThumbnailView.defaultThumbnailWidth(for:)(v106);

    v108 = [v60 widthAnchor];
    v109 = [v108 constraintEqualToConstant_];

    v110 = *&v101[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_thumbnailViewWidthConstraint];
    *&v101[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_thumbnailViewWidthConstraint] = v109;
    v278 = v109;

    v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v111 = swift_allocObject();
    *(v111 + 16) = xmmword_1D40617C0;
    *(v111 + 32) = v103;
    *(v111 + 40) = v287;
    v112 = v287;
    v276 = v103;
    v113 = [v100 trailingAnchor];

    v114 = [v101 view];
    if (!v114)
    {
      goto LABEL_103;
    }

    v115 = v114;
    v275 = v112;
    v116 = v294[92];
    v117 = v294[77];
    v118 = [v114 trailingAnchor];

    v119 = [v113 constraintEqualToAnchor_];
    *(v111 + 48) = v119;
    v120 = [v116 topAnchor];

    v121 = [v120 constraintEqualToAnchor_];
    *(v111 + 56) = v121;
    v122 = [v116 bottomAnchor];

    v123 = [v117 view];
    if (!v123)
    {
      goto LABEL_104;
    }

    v124 = v123;
    v125 = v294[77];
    v126 = [v123 bottomAnchor];

    v127 = [v122 &selRef:v126 setFindInteractionEnabled:? + 5];
    *(v111 + 64) = v127;
    *(v111 + 72) = v281;
    *(v111 + 80) = v94;
    v274 = v281;
    v273 = v94;
    v128 = [v60 topAnchor];
    v129 = [v125 view];
    if (!v129)
    {
      goto LABEL_105;
    }

    v130 = v129;
    v131 = v294[77];
    v132 = [v129 safeAreaLayoutGuide];

    v133 = [v132 topAnchor];
    v134 = [v128 constraintEqualToAnchor:v133 constant:v71];

    *(v111 + 88) = v134;
    v135 = [v60 bottomAnchor];
    v136 = [v131 view];
    if (!v136)
    {
      goto LABEL_106;
    }

    v137 = v136;
    v138 = objc_opt_self();
    v139 = [v137 safeAreaLayoutGuide];

    v140 = v138;
    v141 = [v139 bottomAnchor];

    v142 = [v135 constraintEqualToAnchor:v141 constant:-v71];
    *(v111 + 96) = v142;
    *(v111 + 104) = v278;
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSLayoutConstraint);
    v279 = v278;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v138 activateConstraints_];

    v144 = _UISolariumEnabled();
    v145 = v294[77];
    if ((v144 & 1) != 0 || (v146 = *&v145[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_thumbnailBackgroundView]) == 0)
    {
      v163.super.isa = v285;
    }

    else
    {
      v147 = swift_allocObject();
      *(v147 + 16) = xmmword_1D405B630;
      v148 = v146;
      v149 = [v148 topAnchor];
      v150 = [(objc_class *)v285 topAnchor];
      v151 = [v149 constraintEqualToAnchor_];

      *(v147 + 32) = v151;
      v152 = [v148 bottomAnchor];
      v153 = [(objc_class *)v285 bottomAnchor];
      v154 = [v152 constraintEqualToAnchor_];

      *(v147 + 40) = v154;
      v155 = [v148 leadingAnchor];
      v156 = [v145 view];
      if (!v156)
      {
        goto LABEL_113;
      }

      v157 = v156;
      v158 = [v156 leadingAnchor];

      v159 = [v155 constraintEqualToAnchor_];
      *(v147 + 48) = v159;
      v160 = [v148 trailingAnchor];
      v161 = [(objc_class *)v285 trailingAnchor];

      v162 = [v160 constraintEqualToAnchor_];
      *(v147 + 56) = v162;
      v163.super.isa = Array._bridgeToObjectiveC()().super.isa;

      [v140 activateConstraints_];

      v145 = v294[77];
    }

    v164 = v294[92];
    v165 = v294[89];
    v166 = v294[87];

    v167 = *&v145[v165];
    v168 = v167;
    PaperDocumentView.toolPicker.setter(v167);
    v169 = *&v145[v166];
    *&v145[v166] = v164;
    v170 = v164;

    swift_unknownObjectWeakAssign();
    v171 = *(v295 + v280);
    v174 = *(v171 + 64);
    v173 = v171 + 64;
    v172 = v174;
    v175 = -1;
    v176 = -1 << *(*(v295 + v280) + 32);
    if (-v176 < 64)
    {
      v175 = ~(-1 << -v176);
    }

    v177 = v175 & v172;
    v178 = (63 - v176) >> 6;
    v288 = *(v295 + v280);

    v179 = 0;
    while (v177)
    {
      v180 = v179;
LABEL_53:
      v181 = __clz(__rbit64(v177));
      v177 &= v177 - 1;
      v182 = v288[7] + ((v180 << 10) | (16 * v181));
      v183 = *v182;
      v184 = *(v182 + 8);
      v185 = swift_getObjectType();
      v186 = swift_unknownObjectWeakLoadStrong();
      v187 = *(v184 + 224);
      v188 = v183;
      v187(v186, v185, v184);
    }

    while (1)
    {
      v180 = v179 + 1;
      if (__OFADD__(v179, 1))
      {
        break;
      }

      if (v180 >= v178)
      {
        v189 = v294;
        v190 = v294[92];
        v191 = v294[77];
        v291 = v191;

        v192 = v191 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_liveStreamMessenger;
        swift_beginAccess();
        v193 = swift_unknownObjectWeakLoadStrong();
        v194 = *(v192 + 8);
        swift_getKeyPath();
        v195 = swift_task_alloc();
        v195[2] = v190;
        v195[3] = v193;
        v195[4] = v194;
        v294[73] = v190;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
        swift_unknownObjectRelease();

        v196 = v291 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_participantDetailsDataSource;
        swift_beginAccess();
        v197 = swift_unknownObjectWeakLoadStrong();
        v198 = *(v196 + 8);
        swift_getKeyPath();
        v199 = swift_task_alloc();
        v199[2] = v190;
        v199[3] = v197;
        v199[4] = v198;
        v294[65] = v190;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
        swift_unknownObjectRelease();

        v200 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_showParticipantCursors;
        swift_beginAccess();
        v201 = *(v291 + v200);
        v202 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView__showParticipantCursors;
        swift_beginAccess();
        if (v201 == *(v190 + v202))
        {
          *(v190 + v202) = v201;
          v205 = *(v295 + v280);
          v208 = *(v205 + 64);
          v207 = v205 + 64;
          v206 = v208;
          v209 = -1;
          v210 = -1 << *(*(v295 + v280) + 32);
          if (-v210 < 64)
          {
            v209 = ~(-1 << -v210);
          }

          v211 = v209 & v206;
          v212 = (63 - v210) >> 6;
          v289 = *(v295 + v280);

          v213 = 0;
          v282 = v190;
          while (v211)
          {
            v214 = v213;
LABEL_65:
            v215 = v294[92];
            v216 = __clz(__rbit64(v211));
            v211 &= v211 - 1;
            v217 = v289[7] + ((v214 << 10) | (16 * v216));
            v218 = *v217;
            v219 = *(v217 + 8);
            v292 = swift_getObjectType();
            swift_getKeyPath();
            v294[75] = v215;
            v220 = v218;
            ObservationRegistrar.access<A, B>(_:keyPath:)();

            (*(v219 + 176))(*(v282 + v202), v292, v219);
          }

          while (1)
          {
            v214 = v213 + 1;
            if (__OFADD__(v213, 1))
            {
              goto LABEL_94;
            }

            if (v214 >= v212)
            {

              v189 = v294;
              goto LABEL_68;
            }

            v211 = *(v207 + 8 * v214);
            ++v213;
            if (v211)
            {
              v213 = v214;
              goto LABEL_65;
            }
          }
        }

        v203 = v294[92];
        swift_getKeyPath();
        v204 = swift_task_alloc();
        *(v204 + 16) = v203;
        *(v204 + 24) = v201;
        v294[70] = v203;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

LABEL_68:
        v221 = v189[77] + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_delegate;
        swift_beginAccess();
        v222 = swift_unknownObjectWeakLoadStrong();
        v283 = v221;
        if (v222)
        {
          v223 = *(*(v221 + 8) + 8);
          v224 = v222;
        }

        else
        {
          v224 = 0;
          v223 = 0;
        }

        v225 = v189[92];
        v226 = v189[82];
        v293 = v189[81];
        v227 = v189[79];
        v228 = v189[77];
        swift_getKeyPath();
        v229 = swift_task_alloc();
        v229[2] = v225;
        v229[3] = v224;
        v229[4] = v223;
        v189[67] = v225;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
        swift_unknownObjectRelease();

        v230 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentTemp;
        swift_beginAccess();
        v290 = v228;
        outlined init with copy of Date?(v228 + v230, v227, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMd);
        if ((*(v226 + 48))(v227, 1, v293) == 1)
        {
          goto LABEL_107;
        }

        v231 = v189[92];
        v232 = v189[88];
        v233 = v189[82];
        v234 = v189[81];
        v235 = v189[79];
        v236 = v189[77];
        specialized PaperDocumentView.merge<A>(_:from:page:)(v235, 0, 0);
        (*(v233 + 8))(v235, v234);
        v296[0] = *(v236 + v232);
        PaperDocumentView.editingMode.setter(v296);
        v237 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_indirectPointerTouchMode;
        swift_beginAccess();
        v238 = *(v236 + v237);
        if (*(v231 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__indirectPointerTouchMode) != v238)
        {
          v239 = v189[92];
          swift_getKeyPath();
          v240 = swift_task_alloc();
          *(v240 + 16) = v239;
          *(v240 + 24) = v238;
          v189[66] = v239;
          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
        }

        if (_UISolariumEnabled())
        {
          v241 = v189[92];
          v242 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
          swift_beginAccess();
          v243 = *(v241 + v242);
          if (!v243)
          {
            goto LABEL_111;
          }

          v244 = [v243 documentScrollView];
          if (v244)
          {
            v245 = v244;
            [v244 setClipsToBounds_];
          }

          v246 = [v189[77] view];
          if (!v246)
          {
            goto LABEL_112;
          }

          v247 = v246;
          [v246 setClipsToBounds_];
        }

        v248 = v189[92];
        v249 = v189[78];
        v250 = v189[77];
        (*(v189[82] + 56))(v249, 1, 1, v189[81]);
        swift_beginAccess();
        outlined assign with take of UUID?(v249, v290 + v230, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMd);
        swift_endAccess();
        v189[68] = *(v248 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_passThroughSubject);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy9Coherence7CapsuleVy8PaperKit0F8DocumentVGs5NeverOGMd);
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type PassthroughSubject<Capsule<PaperDocument>, Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCy9Coherence7CapsuleVy8PaperKit0F8DocumentVGs5NeverOGMd);
        v189[69] = Publisher.eraseToAnyPublisher()();
        swift_allocObject();
        swift_unknownObjectWeakInit();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy9Coherence7CapsuleVy8PaperKit0F8DocumentVGs5NeverOGMd);
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type AnyPublisher<Capsule<PaperDocument>, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy9Coherence7CapsuleVy8PaperKit0F8DocumentVGs5NeverOGMd);
        Publisher<>.sink(receiveValue:)();

        swift_beginAccess();
        AnyCancellable.store(in:)();
        swift_endAccess();

        v294[71] = *(v248 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_livePassThroughSubject);
        v294[72] = Publisher.eraseToAnyPublisher()();
        swift_allocObject();
        swift_unknownObjectWeakInit();
        Publisher<>.sink(receiveValue:)();

        swift_beginAccess();
        AnyCancellable.store(in:)();
        swift_endAccess();

        PaperDocumentViewController.setUpObservers()();
        PaperDocumentViewController.updateGestureRecognizers()();
        PaperDocumentViewController.updateBackgroundColor()();
        v251 = [v250 view];
        if (!v251)
        {
          goto LABEL_108;
        }

        v252 = v251;
        v253 = v294[77];
        [v251 layoutIfNeeded];

        [v253 becomeFirstResponder];
        PaperDocumentViewController.showPageNumberOverlay(animated:)(0);
        if (swift_unknownObjectWeakLoadStrong())
        {
          v254 = v294[92];
          v255 = v294[77];
          v256 = *(v283 + 8);
          v257 = swift_getObjectType();
          (*(v256 + 16))(v255, v254, v257, v256);
          swift_unknownObjectRelease();
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          v258 = v294[92];
          v259 = *(v283 + 8);
          v260 = swift_getObjectType();
          (*(*(v259 + 8) + 56))(v258, *(v272 + v277), v260);
          swift_unknownObjectRelease();
        }

        v261 = v294[77];
        v262 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_passwordViewController;
        v263 = *(v261 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_passwordViewController);
        if (v263)
        {
          v264 = v263;
          [v264 willMoveToParentViewController_];
          v265 = [v264 view];
          if (!v265)
          {
            goto LABEL_109;
          }

          v266 = v265;
          v267 = v294[92];

          [v266 removeFromSuperview];

          [v264 removeFromParentViewController];
          v268 = *(v261 + v262);
          *(v261 + v262) = 0;
        }

        else
        {
          v269 = v294[92];

          v268 = v274;
        }

        v270 = v294[1];

        v270();
        return;
      }

      v177 = *(v173 + 8 * v180);
      ++v179;
      if (v177)
      {
        v179 = v180;
        goto LABEL_53;
      }
    }

LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

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
}

void closure #1 in PaperDocumentViewController.setupDocumentView(context:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v3 + 16))(v5, a1, v2);
    v9 = (*(v3 + 80) + 24) & ~*(v3 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    (*(v3 + 32))(v10 + v9, v5, v2);

    PaperDocumentViewController.requirePasswordIfNeeded(completion:)(partial apply for closure #1 in closure #1 in PaperDocumentViewController.setupDocumentView(context:), v10);
  }
}

void closure #1 in closure #1 in PaperDocumentViewController.setupDocumentView(context:)(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (a1)
    {

      PassthroughSubject.send(_:)();
    }

    else
    {
      v4 = [Strong undoManager];
      if (v4)
      {
        v5 = v4;
        if ([v4 canUndo])
        {
          [v5 undo];
        }
      }
    }
  }
}

uint64_t closure #2 in PaperDocumentViewController.setupDocumentView(context:)()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;

    PassthroughSubject.send(_:)();
  }

  return result;
}

uint64_t PaperDocumentViewController.setUpObservers()()
{
  swift_getObjectType();
  v1 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = v4;
  v6 = [v5 documentScrollView];
  if (!v6)
  {

LABEL_8:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v7 = v6;
  v8 = objc_opt_self();
  v9 = [v8 defaultCenter];
  [v9 addObserver:v0 selector:sel_pageDidChange_ name:*MEMORY[0x1E6978148] object:v5];

  v10 = [v8 defaultCenter];
  [v10 addObserver:v0 selector:sel_pageWillScroll_ name:*MEMORY[0x1E6978138] object:v7];

  v11 = [v8 defaultCenter];
  [v11 addObserver:v0 selector:sel_pageDidScroll_ name:*MEMORY[0x1E6978130] object:v7];

  v12 = *(v0 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_scrollViewObserver);
  swift_unknownObjectWeakAssign();
  v13 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentThumbnailView;
  swift_beginAccess();
  v14 = *(v0 + v13);
  if (v14)
  {
    v15 = [*(v14 + OBJC_IVAR____TtC8PaperKit26PaperDocumentThumbnailView_pdfThumbnailView) collectionView];
    [v15 _addScrollViewScrollObserver_];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D4058CF0;
  v17 = type metadata accessor for UITraitUserInterfaceStyle();
  v18 = MEMORY[0x1E69DC0F8];
  *(v16 + 32) = v17;
  *(v16 + 40) = v18;
  UIViewController.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();
}

void PaperDocumentViewController.pageDidChange(_:)(void *a1)
{
  v3 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    v5 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
    swift_beginAccess();
    v6 = *(v4 + v5);
    if (v6)
    {
      v7 = v6;
      if ([a1 object])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v10 = 0u;
        v11 = 0u;
      }

      v12[0] = v10;
      v12[1] = v11;
      if (*(&v11 + 1))
      {
        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PDFView);
        if (swift_dynamicCast())
        {
          v7 = v7;
          v8 = static NSObject.== infix(_:_:)();

          if (v8)
          {
            PaperDocumentViewController.showPageNumberOverlay(animated:)(0);
          }
        }
      }

      else
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_sypSgMd);
      }
    }
  }
}

void PaperDocumentViewController.pageWillScroll(_:)(void *a1)
{
  v3 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (v4)
  {
    v5 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
    swift_beginAccess();
    v6 = *(v4 + v5);
    if (v6)
    {
      v7 = [v6 documentScrollView];
      if (v7)
      {
        v8 = v7;
        if ([a1 object])
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v16 = 0u;
          v17 = 0u;
        }

        v18[0] = v16;
        v18[1] = v17;
        if (*(&v17 + 1))
        {
          type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIScrollView);
          if (swift_dynamicCast())
          {
            v9 = v1;
            v8 = v8;
            v10 = static NSObject.== infix(_:_:)();

            if (v10)
            {
              PaperDocumentViewController.showPageNumberOverlay(animated:)(0);
              v11 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_allowsUserInteractionToToggleThumbnailViewVisibility;
              swift_beginAccess();
              if (*(v9 + v11) == 1)
              {
                v12 = [v9 traitCollection];
                v13 = [v12 horizontalSizeClass];

                if (v13 == 1)
                {
                  v14 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_isThumbnailViewCollapsed;
                  swift_beginAccess();
                  if (*(v9 + v14) != 1)
                  {
                    *(v9 + v14) = 1;
                    PaperDocumentViewController.isThumbnailViewCollapsed.didset(0);
                  }
                }
              }
            }
          }
        }

        else
        {
          outlined destroy of StocksKitCurrencyCache.Provider?(v18, &_sypSgMd);
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

Swift::Void __swiftcall PaperDocumentViewController.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  v2 = v1;
  isa = a1.value.super.isa;
  v25.receiver = v2;
  v25.super_class = type metadata accessor for PaperDocumentViewController(0);
  objc_msgSendSuper2(&v25, sel_traitCollectionDidChange_, isa);
  v4 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentThumbnailView;
  swift_beginAccess();
  v5 = *&v2[v4];
  if (v5)
  {
    v6 = v5;
    v7 = [v2 traitCollection];
    v8 = PaperDocumentThumbnailView.defaultThumbnailWidth(for:)(v7);

    [*&v2[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_thumbnailViewWidthConstraint] setConstant_];
    v9 = [v2 traitCollection];
    PaperDocumentThumbnailView.defaultThumbnailWidth(for:)(v9);
    v10 = PaperDocumentThumbnailView.defaultThumbnailViewCellSize(for:)();
    v12 = v11;

    v13 = OBJC_IVAR____TtC8PaperKit26PaperDocumentThumbnailView_pdfThumbnailView;
    [*&v6[OBJC_IVAR____TtC8PaperKit26PaperDocumentThumbnailView_pdfThumbnailView] thumbnailSize];
    v16 = vabdd_f64(v12, v15);
    if (vabdd_f64(v10, v14) >= 1.0 || v16 >= 1.0)
    {
      [*&v6[v13] setThumbnailSize_];
      v6[OBJC_IVAR____TtC8PaperKit26PaperDocumentThumbnailView_dynamicThumbnailSizing] = 0;
    }
  }

  if (v2[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_isPageLabelViewInitialized] == 1)
  {
    v18 = PaperDocumentViewController.pageLabelView.getter();
    v19 = [v2 traitCollection];
    v20 = [v19 horizontalSizeClass];

    if (v20 == 1)
    {
      v21 = 1;
    }

    else
    {
      v22 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageLabelShowsSidebarIconInRegularWidth;
      swift_beginAccess();
      v21 = v2[v22];
    }

    v18[OBJC_IVAR____TtC8PaperKit13PageLabelView_showsSidebarIcon] = v21;
  }

  v23 = [v2 view];
  if (v23)
  {
    v24 = v23;
    [v23 setNeedsUpdateConstraints];
  }

  else
  {
    __break(1u);
  }
}

void PaperDocumentViewController.requirePasswordIfNeeded(completion:)(void (*a1)(void), uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v32 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - v13;
  v15 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_ignorePasswordRequest;
  if ((v2[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_ignorePasswordRequest] & 1) == 0)
  {
    v16 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
    swift_beginAccess();
    v17 = *&v2[v16];
    if (v17)
    {
      v33 = a2;
      v2[v15] = 1;
      v18 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_lastPasswordRequestDate;
      swift_beginAccess();
      outlined init with copy of Date?(&v2[v18], v7, &_s10Foundation4DateVSgMd);
      if ((*(v9 + 48))(v7, 1, v8) == 1)
      {
        v19 = v17;
        outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s10Foundation4DateVSgMd);
      }

      else
      {
        v32 = v2;
        (*(v9 + 32))(v14, v7, v8);
        v20 = v17;
        static Date.now.getter();
        Date.timeIntervalSince(_:)();
        v22 = v21;
        v23 = *(v9 + 8);
        v23(v11, v8);
        if (v22 < 0.1)
        {
          v2 = v32;
          if (a1)
          {
            a1(v32[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_lastPasswordRequestSucceeded]);
            v2 = v32;

            v23(v14, v8);
          }

          else
          {
            v23(v14, v8);
          }

          goto LABEL_10;
        }

        v23(v14, v8);
        v2 = v32;
      }

      v24 = v33;
      v25 = *&v17[OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfDocument];
      v26 = [v25 permissionsStatus];
      v27 = [v2 firstResponder];
      v28 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v29 = swift_allocObject();
      v29[2] = v28;
      v29[3] = v26;
      v29[4] = v27;
      v29[5] = a1;
      v29[6] = v24;
      aBlock[4] = partial apply for closure #1 in PaperDocumentViewController.requirePasswordIfNeeded(completion:);
      aBlock[5] = v29;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned PDFRequirePasswordsResult) -> ();
      aBlock[3] = &block_descriptor_204;
      v30 = _Block_copy(aBlock);
      v31 = v27;
      outlined copy of (@escaping @callee_guaranteed (@unowned PDFDisplayBox, @guaranteed CGContextRef) -> ())?(a1);

      [v25 requirePasswordsIfNeededUsingPresentingViewController:v2 completion:v30];

      _Block_release(v30);
LABEL_10:
      v2[v15] = 0;
    }
  }
}

void closure #1 in PaperDocumentViewController.requirePasswordIfNeeded(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(BOOL))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19[-v10];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_ignorePasswordRequest;
    *(Strong + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_ignorePasswordRequest) = 1;
    static Date.now.getter();
    v15 = type metadata accessor for Date();
    (*(*(v15 - 8) + 56))(v11, 0, 1, v15);
    v16 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_lastPasswordRequestDate;
    swift_beginAccess();
    outlined assign with take of UUID?(v11, &v13[v16], &_s10Foundation4DateVSgMd);
    swift_endAccess();
    v13[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_lastPasswordRequestSucceeded] = a1 != 1;
    if (a1 != 2)
    {
      if (!a1)
      {
        v17 = [v13 undoManager];
        if (v17)
        {
          v18 = v17;
          if ([v17 canUndo] && a3 == 1)
          {
            [v18 undo];
            [v18 redo];
          }
        }
      }

      [a4 becomeFirstResponder];
    }

    if (a5)
    {
      a5(a1 != 1);
    }

    v13[v14] = 0;
  }
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@unowned PDFRequirePasswordsResult) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

Swift::Void __swiftcall PaperDocumentViewController.updatePlusButton()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_editingMode;
  swift_beginAccess();
  v3 = v1[v2];
  v4 = *&v1[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_plusButton];
  if (v3 == 1)
  {
    v5 = [*&v1[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_plusButton] superview];
    if (v5)
    {

      [v4 removeFromSuperview];
    }

    v6 = [v1 view];
    if (v6)
    {
      v7 = v6;
      [v6 addSubview_];

      v8 = [v1 view];
      if (v8)
      {
        v9 = v8;
        FormPlusButtonView.setConstraintsBasedOn(_:)(v8);

        swift_allocObject();
        swift_unknownObjectWeakInit();
        swift_allocObject();
        swift_unknownObjectWeakInit();

        FormPlusButtonView.setMenuWithActions(addTextBoxHandler:addSignatureHandler:)();

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    [*&v1[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_plusButton] removeFromSuperview];
  }
}

void closure #1 in PaperDocumentViewController.updatePlusButton()()
{
  v0 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v233 = &v206 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v206 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v206 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v206 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
  v231 = *(v12 - 8);
  v232 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v256 = &v206 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v254 = *(v14 - 8);
  v255 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v253 = &v206 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v251 = *(v16 - 8);
  v252 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v250 = &v206 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
  v247 = *(v18 - 8);
  v248 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v246 = &v206 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v244 = *(v20 - 8);
  v245 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v242 = &v206 - v21;
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6ShadowVSgMd);
  v22 = MEMORY[0x1EEE9AC00](v241);
  v240 = &v206 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v239 = &v206 - v24;
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11StrokeStyleOSgMd);
  v25 = MEMORY[0x1EEE9AC00](v238);
  v237 = &v206 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v236 = &v206 - v27;
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  v28 = MEMORY[0x1EEE9AC00](v235);
  v262 = &v206 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v261 = &v206 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  v32 = MEMORY[0x1EEE9AC00](v31 - 8);
  v243 = &v206 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v265 = &v206 - v34;
  v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  v35 = MEMORY[0x1EEE9AC00](v259);
  v37 = &v206 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v35);
  v258 = &v206 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v264 = &v206 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v271 = &v206 - v42;
  v267 = type metadata accessor for ShapeType(0);
  v43 = MEMORY[0x1EEE9AC00](v267);
  v234 = &v206 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x1EEE9AC00](v43);
  v257 = &v206 - v46;
  MEMORY[0x1EEE9AC00](v45);
  v268 = (&v206 - v47);
  v260 = type metadata accessor for Shape(0);
  v48 = MEMORY[0x1EEE9AC00](v260);
  v249 = &v206 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x1EEE9AC00](v48);
  v52 = &v206 - v51;
  MEMORY[0x1EEE9AC00](v50);
  v263 = &v206 - v53;
  v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v266 = *(v270 - 8);
  v54 = MEMORY[0x1EEE9AC00](v270);
  v230 = &v206 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v269 = &v206 - v56;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v58 = Strong;
    v228 = v6;
    v59 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
    swift_beginAccess();
    v60 = *&v58[v59];
    if (v60)
    {
      v229 = v58;
      v227 = v11;
      v61 = *(v60 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_tiledView);
      if (!v61)
      {
        __break(1u);
        goto LABEL_31;
      }

      v62 = *(v61 + OBJC_IVAR____TtC8PaperKit17TiledDocumentView_canvasElementController);
      v63 = &v62[OBJC_IVAR____TtC8PaperKit23CanvasElementController_delegate];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v225 = v3;
        v226 = v9;
        v224 = v2;
        v64 = *(v63 + 1);
        ObjectType = swift_getObjectType();
        v66 = *(v64 + 16);
        v67 = v62;
        v68 = v66(ObjectType, v64);

        swift_unknownObjectRelease();
        if (v68)
        {
          v58 = v229;
          v69 = *&v229[v59];
          if (!v69 || (v70 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView, swift_beginAccess(), (v71 = *(v69 + v70)) == 0))
          {
LABEL_25:

            goto LABEL_26;
          }

          v72 = v71;
          [v72 frame];
          x = v276.origin.x;
          y = v276.origin.y;
          width = v276.size.width;
          height = v276.size.height;
          MidX = CGRectGetMidX(v276);
          v277.origin.x = x;
          v277.origin.y = y;
          v277.size.width = width;
          v277.size.height = height;
          MidY = CGRectGetMidY(v277);
          v79 = *MEMORY[0x1E69E7D40] & *v68;
          v80 = MidY + -12.5;
          v222 = *(v79 + 0x440);
          v223 = v79 + 1088;
          v81 = v222();
          v207 = v72;
          [v81 convertRect:v72 fromCoordinateSpace:{MidX + -75.0, v80, 150.0, 25.0}];
          v83 = v82;
          v85 = v84;
          v87 = v86;
          v89 = v88;

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1D405FD70;
          v91 = *MEMORY[0x1E69DB648];
          *(inited + 32) = *MEMORY[0x1E69DB648];
          *(inited + 64) = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIFont);
          v92 = v91;
          specialized static FormFillingView.fontThatFits(frame:)(v83, v85, v87, v89);
          v93 = MEMORY[0x1E69DB688];
          *(inited + 40) = v94;
          v95 = *v93;
          *(inited + 72) = *v93;
          v96 = objc_allocWithZone(MEMORY[0x1E69DB7C8]);
          v97 = v95;
          v98 = [v96 init];
          [v98 setAlignment_];
          v99 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSMutableParagraphStyle);
          *(inited + 80) = v98;
          v100 = *MEMORY[0x1E69DB660];
          *(inited + 104) = v99;
          *(inited + 112) = v100;
          *(inited + 144) = MEMORY[0x1E69E7DE0];
          *(inited + 120) = 0;
          v101 = v100;
          v102 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSAttributedStringKeya_yptMd);
          swift_arrayDestroy();
          v103 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
          v104 = MEMORY[0x1DA6CCED0](0, 0xE000000000000000);
          type metadata accessor for NSAttributedStringKey(0);
          lazy protocol witness table accessor for type PaperDocumentView and conformance PaperDocumentView(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
          isa = Dictionary._bridgeToObjectiveC()().super.isa;
          [v103 initWithString:v104 attributes:isa];

          MEMORY[0x1EEE9AC00](v106);
          v107 = lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
          CRAttributedString.init(_:transformAttributes:)();
          swift_storeEnumTagMultiPayload();
          v108 = type metadata accessor for Color(0);
          v109 = *(v108 + 20);
          v110 = type metadata accessor for UnknownValueProperties();
          (*(*(v110 - 8) + 56))(&v271[v109], 1, 1, v110);
          if (one-time initialization token for extendedSRGBColorSpace != -1)
          {
            swift_once();
          }

          v111 = CGColorCreate(static Color.extendedSRGBColorSpace, dbl_1F4F51320);
          v112 = v270;
          if (v111)
          {
            v113 = v111;
            v218 = v107;
            v219 = v102;
            v220 = v68;
            CGColorRef.calculateMinimumHeadroom.getter();
            v114 = CGColorCreateWithContentHeadroom();
            if (v114)
            {
              v115 = v114;

              *v271 = v115;
              v116 = v108;
              v117 = *(v108 - 8);
              v118 = *(v117 + 56);
              v119 = v117 + 56;
              v118();
              (v118)(v264, 1, 1, v108);
              v211 = v119;
              v120 = v118;
              v216 = v118;
              v121 = v265;
              v122 = v266;
              (*(v266 + 16))(v265, v269, v112);
              (*(v122 + 56))(v121, 0, 1, v112);
              type metadata accessor for CGRect(0);
              v215 = v123;
              v214 = lazy protocol witness table accessor for type PaperDocumentView and conformance PaperDocumentView(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
              v272 = 0u;
              v273 = 0u;
              CRRegister.init(wrappedValue:)();
              v124 = v260;
              *&v272 = 0;
              v221 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
              CRRegister.init(_:)();
              v217 = v124[6];
              v125 = v258;
              (v120)(v258, 1, 1, v116);
              outlined init with copy of Date?(v125, v37, &_s8PaperKit5ColorVSgMd);
              v212 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
              CRRegister.init(wrappedValue:)();
              outlined destroy of StocksKitCurrencyCache.Provider?(v125, &_s8PaperKit5ColorVSgMd);
              v213 = v124[7];
              (v216)(v125, 1, 1, v116);
              outlined init with copy of Date?(v125, v37, &_s8PaperKit5ColorVSgMd);
              CRRegister.init(wrappedValue:)();
              outlined destroy of StocksKitCurrencyCache.Provider?(v125, &_s8PaperKit5ColorVSgMd);
              v211 = v124[8];
              *&v272 = 0x4014000000000000;
              CRRegister.init(wrappedValue:)();
              v210 = v124[9];
              v126 = v257;
              swift_storeEnumTagMultiPayload();
              outlined init with copy of PaperDocument(v126, v234, type metadata accessor for ShapeType);
              v208 = lazy protocol witness table accessor for type PaperDocumentView and conformance PaperDocumentView(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, type metadata accessor for ShapeType);
              CRRegister.init(wrappedValue:)();
              outlined destroy of PaperDocument(v126, type metadata accessor for ShapeType);
              *&v272 = 0x3FF0000000000000;
              CRRegister.init(wrappedValue:)();
              *&v272 = 0;
              BYTE8(v272) = 0;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
              lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
              CRRegister.init(wrappedValue:)();
              *&v272 = 0;
              BYTE8(v272) = 0;
              CRRegister.init(wrappedValue:)();
              v206 = v124[13];
              CRAttributedString.init(_:)();
              v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
              v128 = *(v127 - 8);
              v129 = *(v128 + 56);
              v130 = v261;
              v234 = v127;
              v218 = v129;
              v216 = (v128 + 56);
              (v129)(v261, 1, 1);
              outlined init with copy of Date?(v130, v262, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
              lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
              CRRegister.init(wrappedValue:)();
              outlined destroy of StocksKitCurrencyCache.Provider?(v130, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
              v131 = v124[15];
              *&v272 = 0;
              v132 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
              v235 = v131;
              v209 = v132;
              CRRegister.init(wrappedValue:)();
              *&v272 = 0;
              lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
              CRRegister.init(wrappedValue:)();
              v133 = type metadata accessor for StrokeStyle(0);
              v134 = v236;
              (*(*(v133 - 8) + 56))(v236, 1, 1, v133);
              outlined init with copy of Date?(v134, v237, &_s8PaperKit11StrokeStyleOSgMd);
              lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
              CRRegister.init(wrappedValue:)();
              outlined destroy of StocksKitCurrencyCache.Provider?(v134, &_s8PaperKit11StrokeStyleOSgMd);
              v135 = type metadata accessor for Shadow();
              v136 = v239;
              (*(*(v135 - 8) + 56))(v239, 1, 1, v135);
              outlined init with copy of Date?(v136, v240, &_s8PaperKit6ShadowVSgMd);
              lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
              CRRegister.init(wrappedValue:)();
              outlined destroy of StocksKitCurrencyCache.Provider?(v136, &_s8PaperKit6ShadowVSgMd);
              v273 = 0u;
              v274 = 0u;
              v272 = 0u;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
              lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
              CRRegister.init(wrappedValue:)();
              UnknownProperties.init()();
              *&v272 = v83;
              *(&v272 + 1) = v85;
              *&v273 = v87;
              *(&v273 + 1) = v89;
              v137 = v242;
              CRRegister.init(_:)();
              (*(v244 + 40))(v52, v137, v245);
              outlined init with copy of PaperDocument(v268, v126, type metadata accessor for ShapeType);
              v138 = v246;
              CRRegister.init(_:)();
              (*(v247 + 40))(&v52[v210], v138, v248);
              *&v272 = 0x4014000000000000;
              v139 = v250;
              CRRegister.init(_:)();
              (*(v251 + 40))(&v52[v211], v139, v252);
              v140 = v258;
              outlined init with copy of Date?(v271, v258, &_s8PaperKit5ColorVSgMd);
              v141 = v253;
              CRRegister.init(_:)();
              v142 = v255;
              v143 = *(v254 + 40);
              v143(&v52[v213], v141, v255);
              outlined init with copy of Date?(v264, v140, &_s8PaperKit5ColorVSgMd);
              CRRegister.init(_:)();
              v143(&v52[v217], v141, v142);
              v144 = v270;
              v145 = v266;
              v146 = v243;
              outlined init with copy of Date?(v265, v243, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
              if ((*(v145 + 48))(v146, 1, v144) == 1)
              {
                outlined destroy of StocksKitCurrencyCache.Provider?(v146, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
              }

              else
              {
                v147 = v230;
                (*(v145 + 32))(v230, v146, v144);
                (*(v145 + 40))(&v52[v206], v147, v144);
              }

              v148 = v232;
              v149 = v231;
              v150 = v219;
              *&v272 = 2;
              v151 = v256;
              CRRegister.init(_:)();
              outlined destroy of StocksKitCurrencyCache.Provider?(v265, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
              outlined destroy of StocksKitCurrencyCache.Provider?(v264, &_s8PaperKit5ColorVSgMd);
              outlined destroy of StocksKitCurrencyCache.Provider?(v271, &_s8PaperKit5ColorVSgMd);
              outlined destroy of PaperDocument(v268, type metadata accessor for ShapeType);
              (*(v149 + 40))(&v52[v235], v151, v148);
              v152 = v263;
              outlined init with take of PaperDocument(v52, v263, type metadata accessor for Shape);
              LOBYTE(v272) = 1;
              Shape.formContentType.setter(&v272);
              v153 = v261;
              CRAttributedString.Attributes<>.init(nsAttributes:darkMode:)(v150, 0, v261);
              v218(v153, 0, 1, v234);
              outlined init with copy of Date?(v153, v262, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
              CRRegister.wrappedValue.setter();
              outlined destroy of StocksKitCurrencyCache.Provider?(v153, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
              outlined init with copy of PaperDocument(v152, v249, type metadata accessor for Shape);
              static CRKeyPath.unique.getter();
              lazy protocol witness table accessor for type PaperDocumentView and conformance PaperDocumentView(&lazy protocol witness table cache variable for type Shape and conformance Shape, type metadata accessor for Shape);
              v154 = v227;
              Capsule.init(_:id:)();
              v156 = v225;
              v155 = v226;
              v157 = *(v225 + 16);
              v158 = v224;
              v157(v226, v154, v224);
              v159 = objc_allocWithZone(type metadata accessor for ShapeView());
              *(v159 + direct field offset for ShapeView.$__lazy_storage_$_shapeLayer) = 0;
              *(v159 + direct field offset for ShapeView.$__lazy_storage_$_endLineEndLayer) = 0;
              *(v159 + direct field offset for ShapeView.$__lazy_storage_$_startLineEndLayer) = 0;
              *(v159 + direct field offset for ShapeView.$__lazy_storage_$_groupLayer) = 0;
              v160 = direct field offset for ShapeView.showsSignaturePopover;
              *(v159 + direct field offset for ShapeView.showsSignaturePopover) = 0;
              v161 = direct field offset for ShapeView.analytics_inputSource;
              *(v159 + direct field offset for ShapeView.analytics_inputSource) = 68;
              v162 = direct field offset for ShapeView.analytics_documentType;
              *(v159 + direct field offset for ShapeView.analytics_documentType) = 68;
              *(v159 + direct field offset for ShapeView._textBoxView) = 0;
              *(v159 + direct field offset for ShapeView.appearanceStreamView) = 0;
              *(v159 + v160) = 0;
              *(v159 + v161) = 11;
              *(v159 + v162) = 2;
              v163 = v228;
              v268 = v157;
              v157(v228, v155, v158);
              v164 = MEMORY[0x1E69E7D40];
              (*(v156 + 56))(v159 + *((*MEMORY[0x1E69E7D40] & *v159) + 0x3F8), 1, 1, v158);
              *(v159 + *((*v164 & *v159) + 0x400)) = 0;
              *(v159 + *((*v164 & *v159) + 0x408)) = 0;
              *(v159 + *((*v164 & *v159) + 0x410)) = 0;
              *(v159 + *((*v164 & *v159) + 0x418)) = 0;
              *(v159 + *((*v164 & *v159) + 0x420)) = 0;
              v157(v159 + *((*v164 & *v159) + 0x3F0), v163, v158);
              v165 = v220;
              v271 = v220;
              v166 = AnyCanvasElementView.init(frame:canvas:parentCanvasElement:)(v165, 0, 0.0, 0.0, 0.0, 0.0);
              specialized CanvasElementView.setupAccessibility()();
              (*((*v164 & *v166) + 0x520))();
              v169 = *(v156 + 8);
              v168 = v156 + 8;
              v167 = v169;
              (v169)(v163, v158);
              v170 = v166;
              specialized AppearanceStreamViewSupport.setupAppearanceStreamIfNeeded()();
              v171 = *((*v164 & *v170) + 0x3F0);
              swift_beginAccess();
              v268(v163, &v170[v171], v158);
              LOBYTE(v171) = specialized Capsule<>.isTextBox.getter();

              (v169)(v163, v158);
              if (v171)
              {
                goto LABEL_19;
              }

              v225 = v168;
              [v170 setIsAccessibilityElement_];
              v172 = 0x80000001D40850C0;
              if (one-time initialization token for paperKitBundle != -1)
              {
                goto LABEL_29;
              }

              while (1)
              {
                v275._object = v172;
                v173._countAndFlagsBits = 0x4025206570616853;
                v174.value._countAndFlagsBits = 0x617A696C61636F4CLL;
                v174.value._object = 0xEB00000000656C62;
                v173._object = 0xE800000000000000;
                v175._countAndFlagsBits = 0;
                v175._object = 0xE000000000000000;
                v275._countAndFlagsBits = 0xD00000000000005FLL;
                NSLocalizedString(_:tableName:bundle:value:comment:)(v173, v174, paperKitBundle, v175, v275);
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
                v176 = swift_allocObject();
                *(v176 + 16) = xmmword_1D4058CF0;
                swift_getKeyPath();
                v177 = v257;
                Capsule.subscript.getter();

                ShapeType.any.getter(&v272);
                outlined destroy of PaperDocument(v177, type metadata accessor for ShapeType);
                v178 = *(&v273 + 1);
                v179 = v274;
                __swift_project_boxed_opaque_existential_1(&v272, *(&v273 + 1));
                v158 = v224;
                v180 = (*(v179 + 48))(v178, v179);
                v182 = v181;
                *(v176 + 56) = MEMORY[0x1E69E6158];
                *(v176 + 64) = lazy protocol witness table accessor for type String and conformance String();
                *(v176 + 32) = v180;
                *(v176 + 40) = v182;
                __swift_destroy_boxed_opaque_existential_0(&v272);
                v183 = static String.localizedStringWithFormat(_:_:)();
                v185 = v184;

                v186 = MEMORY[0x1DA6CCED0](v183, v185);

                [v170 setAccessibilityLabel_];

LABEL_19:
                (v167)(v226, v158);
                (v167)(v227, v158);
                outlined destroy of PaperDocument(v263, type metadata accessor for Shape);
                v187 = (*(v266 + 8))(v269, v270);
                v170[OBJC_IVAR____TtC8PaperKit20AnyCanvasElementView_isDetectedFormField] = 0;
                v170[OBJC_IVAR____TtC8PaperKit20AnyCanvasElementView_startsNewAutofillContext] = 0;
                v188 = (v222)(v187);
                v190 = v189;
                v191 = swift_getObjectType();
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
                v192 = swift_initStackObject();
                *(v192 + 16) = xmmword_1D405CEB0;
                *(v192 + 32) = v170;
                v193 = *(v190 + 200);
                v194 = v170;
                v193(v192, 0, v191, v190);

                swift_setDeallocating();
                swift_arrayDestroy();
                v68 = v194;
                v195 = specialized CanvasMembers.init(_:)(v68);
                AnyCanvas.selection.setter(v195, v197, v198, v196 & 1);
                v199 = v222();
                v201 = v200;
                v202 = swift_getObjectType();
                v172 = (*(v201 + 168))(v202, v201);

                v167 = v229;
                if (!v172)
                {
                  break;
                }

                v170 = *&v172[OBJC_IVAR____TtC8PaperKit15FormFillingView_analytics];

                v203 = *(v170 + 6);
                v204 = __OFADD__(v203, 1);
                v205 = v203 + 1;
                if (!v204)
                {
                  *(v170 + 6) = v205;

                  break;
                }

                __break(1u);
LABEL_29:
                swift_once();
              }

              if (*(v68 + direct field offset for ShapeView._textBoxView))
              {

                FormTextFieldAnalytics.recordEvent()();
              }

              v58 = v207;
              goto LABEL_25;
            }

LABEL_32:
            __break(1u);
            return;
          }

LABEL_31:
          __break(1u);
          goto LABEL_32;
        }
      }

      v58 = v229;
    }

LABEL_26:
  }
}

void closure #2 in PaperDocumentViewController.updatePlusButton()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_plusButton);
    v3 = v2;
    [v3 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = swift_allocObject();
    *(v12 + 16) = v1;
    v13 = one-time initialization token for SignatureLogger;
    v14 = v1;
    if (v13 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, SignatureLogger);
    v16 = v14;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138477827;
      *(v19 + 4) = v16;
      *v20 = v1;
      v21 = v16;
      _os_log_impl(&dword_1D38C4000, v17, v18, "show signature panel on viewController: %{private}@", v19, 0xCu);
      outlined destroy of StocksKitCurrencyCache.Provider?(v20, &_sSo8NSObjectCSgMd);
      MEMORY[0x1DA6D0660](v20, -1, -1);
      MEMORY[0x1DA6D0660](v19, -1, -1);
    }

    v22 = specialized SignatureManager.signatureViewController(_:_:_:_:_:)(v1, 0, v2, partial apply for closure #1 in closure #2 in PaperDocumentViewController.updatePlusButton(), v12, v5, v7, v9, v11);
    [v16 presentViewController:v22 animated:1 completion:0];
  }
}

void closure #1 in closure #2 in PaperDocumentViewController.updatePlusButton()(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
    swift_beginAccess();
    v5 = *(a2 + v3);
    if (v5)
    {
      v6 = *(v5 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_tiledView);
      if (v6)
      {
        v7 = *(v6 + OBJC_IVAR____TtC8PaperKit17TiledDocumentView_canvasElementController);
        v8 = a1;
        v9 = v7;
        specialized NewCanvasElementDelegate.addNewSignatureItem(_:)(a1);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

id @objc PaperDocumentViewController.canBecomeFirstResponder.getter(char *a1, uint64_t a2, SEL *a3)
{
  v5 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v6 = *&a1[v5];
  if (v6)
  {
    return [v6 *a3];
  }

  v8.receiver = a1;
  v8.super_class = type metadata accessor for PaperDocumentViewController(0);
  return objc_msgSendSuper2(&v8, *a3);
}

void PaperDocumentViewController.viewWillTransition(to:with:)(void *a1, double a2, double a3)
{
  v15.receiver = v3;
  v15.super_class = type metadata accessor for PaperDocumentViewController(0);
  objc_msgSendSuper2(&v15, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  v7 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v8 = *&v3[v7];
  if (!v8)
  {
    goto LABEL_4;
  }

  v9 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
  swift_beginAccess();
  v10 = *(v8 + v9);
  if (v10)
  {
    [v10 beginPDFViewRotation];
LABEL_4:
    v11 = swift_allocObject();
    *(v11 + 16) = v3;
    v14[4] = partial apply for closure #1 in PaperDocumentViewController.viewWillTransition(to:with:);
    v14[5] = v11;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 1107296256;
    v14[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
    v14[3] = &block_descriptor_21;
    v12 = _Block_copy(v14);
    v13 = v3;

    [a1 animateAlongsideTransition:v12 completion:0];
    _Block_release(v12);
    return;
  }

  __break(1u);
}

id closure #1 in PaperDocumentViewController.viewWillTransition(to:with:)(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  result = swift_beginAccess();
  v5 = *(a2 + v3);
  if (v5)
  {
    v6 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
    swift_beginAccess();
    result = *(v5 + v6);
    if (result)
    {
      return [result endPDFViewRotation];
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

void PaperDocumentViewController.merge<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (v8)
  {
    v10 = 3;
    v9 = v8;
    PaperDocumentView.merge<A>(_:from:page:)(a1, &v10, 0, a2, a3);
  }
}

void PaperDocumentViewController.merge<A>(_:forward:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v10 = *(v4 + v9);
  if (v10)
  {
    v11 = v10;
    PaperDocumentView.merge<A>(_:forward:)(a1, a2 & 1, a3, a4);
  }
}

uint64_t PaperDocumentViewController.publisher.getter(void *a1)
{
  v2 = *(v1 + *a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA18PassthroughSubjectCy9Coherence7CapsuleVy8PaperKit0H8DocumentVGs5NeverOGGMd);
  v3 = swift_allocObject();
  *(v3 + 16) = v2;

  return v3;
}

Swift::Bool __swiftcall PaperDocumentViewController.isTouchInThumbnailView(_:)(UITouch a1)
{
  v3 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentThumbnailView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  [(objc_class *)a1.super.isa locationInView:v5];
  v6 = [v5 pointInside:0 withEvent:?];

  return v6;
}

Swift::Bool __swiftcall PaperDocumentViewController.isTouchInPageLabelView(_:)(UITouch a1)
{
  v3 = PaperDocumentViewController.pageLabelView.getter();
  [(objc_class *)a1.super.isa locationInView:v3];
  v5 = v4;
  v7 = v6;

  return [*(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController____lazy_storage___pageLabelView) pointInside:0 withEvent:{v5, v7}];
}

Swift::Bool __swiftcall PaperDocumentViewController.isTouchInBannerView(_:)(UITouch a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_bannerView);
  if (!v2)
  {
    return 0;
  }

  v4 = v2;
  [(objc_class *)a1.super.isa locationInView:v4];
  v5 = [v4 pointInside:0 withEvent:?];

  return v5;
}

Swift::Bool __swiftcall PaperDocumentViewController.acceptSingleTouch(_:)(UITouch a1)
{
  v3 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentThumbnailView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    v5 = v4;
    [(objc_class *)a1.super.isa locationInView:v5];
    v6 = [v5 pointInside:0 withEvent:?];

    if (v6)
    {
      return 1;
    }
  }

  v7 = PaperDocumentViewController.pageLabelView.getter();
  [(objc_class *)a1.super.isa locationInView:v7];
  v9 = v8;
  v11 = v10;

  if ([*(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController____lazy_storage___pageLabelView) pointInside:0 withEvent:{v9, v11}])
  {
    return 1;
  }

  v12 = *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_bannerView);
  if (v12)
  {
    v13 = v12;
    [(objc_class *)a1.super.isa locationInView:v13];
    v14 = [v13 pointInside:0 withEvent:?];

    if (v14)
    {
      return 1;
    }
  }

  v15 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v16 = *(v1 + v15);
  if (v16)
  {
    v17 = *&v16[OBJC_IVAR____TtC8PaperKit17PaperDocumentView_tiledView];
    if (v17)
    {
      v18 = v16;
      v19 = v17;
      v20 = specialized TiledPaperKitView.mostVisibleAttachment()(specialized TiledPaperKitView.paperAttachments(includeStandInAttachment:));

      if (v20)
      {
        v21 = AnyCanvas.acceptSingleTouch(_:)(a1);

        if (v21)
        {

          return 1;
        }
      }
    }

    else
    {
      v22 = v16;
    }

    v23 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
    swift_beginAccess();
    v24 = *&v16[v23];
    if (v24)
    {
      v25 = [v24 acceptSingleTouch_];

      if (v25)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t PaperDocumentViewController.pageOverlayViewProvider.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3 + *a3;
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
  v6 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v7 = *(v3 + v6);
  if (v7)
  {
    swift_unknownObjectWeakLoadStrong();
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    lazy protocol witness table accessor for type PaperDocumentView and conformance PaperDocumentView(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
    v9 = v7;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

void (*PaperDocumentViewController.liveStreamMessenger.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_liveStreamMessenger;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return PaperDocumentViewController.liveStreamMessenger.modify;
}

void (*PaperDocumentViewController.participantDetailsDataSource.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_participantDetailsDataSource;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return PaperDocumentViewController.participantDetailsDataSource.modify;
}

void PaperDocumentViewController.revertAllChanges()(void (*a1)(void))
{
  v3 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    v5 = v4;
    a1();
  }
}

uint64_t PaperDocumentViewController.showParticipantCursors.getter()
{
  v1 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_showParticipantCursors;
  swift_beginAccess();
  return *(v0 + v1);
}

void PaperDocumentViewController.showParticipantCursors.setter(char a1)
{
  v3 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_showParticipantCursors;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (v5)
  {
    v6 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView__showParticipantCursors;
    swift_beginAccess();
    if (v5[v6] == (a1 & 1))
    {
      v5[v6] = a1 & 1;
      v9 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pageToOverlayMap;
      swift_beginAccess();
      v10 = *&v5[v9];
      v11 = v10 + 64;
      v12 = 1 << *(v10 + 32);
      v13 = -1;
      if (v12 < 64)
      {
        v13 = ~(-1 << v12);
      }

      v14 = v13 & *(v10 + 64);
      v15 = (v12 + 63) >> 6;
      v23 = v5;
      v24 = v10;

      v16 = 0;
      while (v14)
      {
        v17 = v16;
LABEL_12:
        v18 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
        v19 = *(v24 + 56) + ((v17 << 10) | (16 * v18));
        v20 = *v19;
        v21 = *(v19 + 8);
        ObjectType = swift_getObjectType();
        swift_getKeyPath();
        lazy protocol witness table accessor for type PaperDocumentView and conformance PaperDocumentView(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
        v22 = v20;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        (*(v21 + 176))(v5[v6], ObjectType, v21);
      }

      while (1)
      {
        v17 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v17 >= v15)
        {

          return;
        }

        v14 = *(v11 + 8 * v17);
        ++v16;
        if (v14)
        {
          v16 = v17;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      lazy protocol witness table accessor for type PaperDocumentView and conformance PaperDocumentView(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
      v8 = v5;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }
}

void (*PaperDocumentViewController.showParticipantCursors.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_showParticipantCursors;
  *(v3 + 80) = v1;
  *(v3 + 88) = v4;
  swift_beginAccess();
  return PaperDocumentViewController.showParticipantCursors.modify;
}

void PaperDocumentViewController.showParticipantCursors.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if (a2)
  {
    goto LABEL_17;
  }

  v4 = v3[10];
  v5 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v6 = *(v4 + v5);
  if (!v6)
  {
    goto LABEL_17;
  }

  v7 = *(v3[10] + v3[11]);
  v8 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView__showParticipantCursors;
  swift_beginAccess();
  if (v7 != v6[v8])
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v3[6] = v6;
    lazy protocol witness table accessor for type PaperDocumentView and conformance PaperDocumentView(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
    v10 = v6;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

LABEL_17:
    free(v3);
    return;
  }

  v6[v8] = v7;
  v11 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pageToOverlayMap;
  v28 = v3;
  swift_beginAccess();
  v12 = *&v6[v11];
  v13 = v12 + 64;
  v14 = -1;
  v15 = -1 << *(v12 + 32);
  if (-v15 < 64)
  {
    v14 = ~(-1 << -v15);
  }

  v16 = v14 & *(v12 + 64);
  v17 = (63 - v15) >> 6;
  v25 = v6;
  v26 = v6;
  v27 = v12;

  v18 = 0;
  while (v16)
  {
    v19 = v18;
    v3 = v28;
LABEL_14:
    v20 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v21 = *(v27 + 56) + ((v19 << 10) | (16 * v20));
    v22 = *v21;
    v23 = *(v21 + 8);
    ObjectType = swift_getObjectType();
    swift_getKeyPath();
    v3[9] = v26;
    lazy protocol witness table accessor for type PaperDocumentView and conformance PaperDocumentView(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
    v24 = v22;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    (*(v23 + 176))(v25[v8], ObjectType, v23);
  }

  v3 = v28;
  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v17)
    {

      goto LABEL_17;
    }

    v16 = *(v13 + 8 * v19);
    ++v18;
    if (v16)
    {
      v18 = v19;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void (*PaperDocumentViewController.textualContextProvider.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_textualContextProvider;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return PaperDocumentViewController.textualContextProvider.modify;
}

void *PaperDocumentViewController.viewControllerForPresentingUI.getter()
{
  v1 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_viewControllerForPresentingUI;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void PaperDocumentViewController.viewControllerForPresentingUI.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_viewControllerForPresentingUI;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

Swift::Void __swiftcall PaperDocumentViewController.addNewCanvasElement(_:)(PaperKit::PaperNewShapeType a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    v5 = *(v4 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_tiledView);
    if (v5)
    {
      v6 = *(v5 + OBJC_IVAR____TtC8PaperKit17TiledDocumentView_canvasElementController);
      specialized NewCanvasElementDelegate.addNewCanvasElement(_:)(v2);
    }

    else
    {
      __break(1u);
    }
  }
}

void PaperDocumentViewController.addNewSignatureItem(_:)(void *a1)
{
  v3 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    v5 = *(v4 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_tiledView);
    if (v5)
    {
      v6 = *(v5 + OBJC_IVAR____TtC8PaperKit17TiledDocumentView_canvasElementController);
      specialized NewCanvasElementDelegate.addNewSignatureItem(_:)(a1);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t specialized NewCanvasElementDelegate.addNewSignatureItem(_:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Signature(0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit9SignatureVGMd);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  result = MEMORY[0x1EEE9AC00](v11);
  v15 = v50 - v14;
  if (a1)
  {
    v50[1] = v7;
    v50[2] = v6;
    v51 = v13;
    v16 = a1;
    v17 = SignatureItem.size.getter();
    v19 = 400.0 / v17;
    if (400.0 / v17 > 1.0)
    {
      v19 = 1.0;
    }

    v20 = v17 * v19;
    v21 = v18 * v19;
    v22 = 72.0 / v21;
    if (72.0 / v21 > 1.0)
    {
      v22 = 1.0;
    }

    width = v20 * v22;
    height = v21 * v22;
    v25 = v2 + OBJC_IVAR____TtC8PaperKit23CanvasElementController_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v26 = *(v25 + 8);
      v27 = swift_getObjectType();
      v28 = (*(v26 + 16))(v27, v26);
      swift_unknownObjectRelease();
      if (v28)
      {
        v29 = AnyCanvas.adjustedSizeForNewCanvasElement(withSize:)(__PAIR128__(*&height, *&width));
        width = v29.width;
        height = v29.height;
      }
    }

    v30 = 0.0;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v31 = *(v25 + 8);
      v32 = swift_getObjectType();
      v33 = (*(v31 + 16))(v32, v31);
      v34 = swift_unknownObjectRelease();
      v35 = 0.0;
      v36 = 0;
      if (v33)
      {
        v30 = (*((*MEMORY[0x1E69E7D40] & *v33) + 0x990))(v34, width, height);
        v35 = v37;
        v36 = v38;
      }
    }

    else
    {
      v35 = 0.0;
      v36 = 0;
    }

    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v39 = SignatureItem.size.getter();
    v41 = 400.0 / v39;
    if (400.0 / v39 > 1.0)
    {
      v41 = 1.0;
    }

    v42 = v39 * v41;
    v43 = v40 * v41;
    v44 = 72.0 / v43;
    if (72.0 / v43 > 1.0)
    {
      v44 = 1.0;
    }

    v53[0] = v42 * v44;
    v53[1] = v43 * v44;
    Signature.init()();
    static CRKeyPath.unique.getter();
    lazy protocol witness table accessor for type PaperDocumentView and conformance PaperDocumentView(&lazy protocol witness table cache variable for type Signature and conformance Signature, type metadata accessor for Signature);
    v45 = Capsule.init(_:id:)();
    MEMORY[0x1EEE9AC00](v45);
    v50[-4] = v16;
    *&v50[-3] = v30;
    *&v50[-2] = v35;
    v50[-1] = v53;
    v46 = Capsule.callAsFunction<A>(_:)();
    MEMORY[0x1EEE9AC00](v46);
    *&v50[-6] = v30 - width * 0.5;
    *&v50[-5] = v35 - height * 0.5;
    v50[-4] = *&width;
    v50[-3] = *&height;
    v50[-2] = v36;
    Capsule.callAsFunction<A>(_:)();
    v47 = v51;
    (*(v9 + 16))(v51, v15, v8);
    v48 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v49 = swift_allocObject();
    (*(v9 + 32))(v49 + v48, v47, v8);
    *(v49 + ((v10 + v48 + 7) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
    CanvasElementController.visibleCanvasInsertIfNeeded(completion:)(partial apply for specialized closure #1 in CanvasElementController.addCanvasElement<A>(_:), v49);

    return (*(v9 + 8))(v15, v8);
  }

  return result;
}

uint64_t PaperDocumentViewController.indirectPointerTouchMode.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_indirectPointerTouchMode;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t PaperDocumentViewController.indirectPointerTouchMode.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_indirectPointerTouchMode;
  swift_beginAccess();
  *(v1 + v3) = v2;
  v4 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  result = swift_beginAccess();
  v6 = *(v1 + v4);
  if (v6)
  {
    if (v6[OBJC_IVAR____TtC8PaperKit17PaperDocumentView__indirectPointerTouchMode] != *(v1 + v3))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      lazy protocol witness table accessor for type PaperDocumentView and conformance PaperDocumentView(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
      v8 = v6;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  return result;
}

void (*PaperDocumentViewController.indirectPointerTouchMode.modify(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_indirectPointerTouchMode;
  *(v3 + 32) = v1;
  *(v3 + 40) = v4;
  swift_beginAccess();
  return PaperDocumentViewController.indirectPointerTouchMode.modify;
}

void PaperDocumentViewController.indirectPointerTouchMode.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[4];
    v5 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
    swift_beginAccess();
    v6 = *(v4 + v5);
    if (v6)
    {
      if (v6[OBJC_IVAR____TtC8PaperKit17PaperDocumentView__indirectPointerTouchMode] != *(v3[4] + v3[5]))
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        v3[3] = v6;
        lazy protocol witness table accessor for type PaperDocumentView and conformance PaperDocumentView(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
        v8 = v6;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }
    }
  }

  free(v3);
}

Swift::Void __swiftcall PaperDocumentViewController.rotateCurrentPage(left:)(Swift::Bool left)
{
  v20 = left;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v19[-v14];
  v16 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v17 = *(v1 + v16);
  if (v17)
  {
    v18 = v17;
    PaperDocumentView.currentPage.getter(v8);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {

      outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
    }

    else
    {
      (*(v10 + 32))(v15, v8, v9);
      (*(v10 + 16))(v12, v15, v9);
      lazy protocol witness table accessor for type TaggedPaperPage and conformance TaggedPaperPage();
      SharedTagged_3.init(_:)();
      PaperDocumentView.rotatePage(_:left:)(v5, v20);

      (*(v3 + 8))(v5, v2);
      (*(v10 + 8))(v15, v9);
    }
  }
}

void PaperDocumentViewController.toolPickerSelectedToolDidChange(_:)(void *a1)
{
  v3 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    v5 = v4;
    PaperDocumentView.updateTiledViewInk(for:)(a1);
  }

  else
  {
    v5 = *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController__cachedToolPicker);
    *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController__cachedToolPicker) = a1;
    v6 = a1;
  }
}

void @objc PaperDocumentViewController.toolPickerSelectedToolDidChange(_:)(char *a1, uint64_t a2, void *a3)
{
  v5 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v6 = *&a1[v5];
  if (v6)
  {
    v7 = a3;
    v8 = a1;
    v9 = v6;
    PaperDocumentView.updateTiledViewInk(for:)(v7);
  }

  else
  {
    v8 = *&a1[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController__cachedToolPicker];
    *&a1[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController__cachedToolPicker] = a3;
    v10 = a3;
  }
}

Swift::Void __swiftcall PaperDocumentViewController.toolPickerIsRulerActiveDidChange(_:)(PKToolPicker a1)
{
  v3 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    v5 = *&v4[OBJC_IVAR____TtC8PaperKit17PaperDocumentView_tiledView];
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      [v7 setRulerEnabled_];
    }

    else
    {
      __break(1u);
    }
  }
}

id PaperDocumentViewController.pageLabelView.getter()
{
  v1 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController____lazy_storage___pageLabelView;
  v2 = *&v0[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController____lazy_storage___pageLabelView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController____lazy_storage___pageLabelView];
  }

  else
  {
    v4 = closure #1 in PaperDocumentViewController.pageLabelView.getter(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id closure #1 in PaperDocumentViewController.pageLabelView.getter(_BYTE *a1)
{
  v2 = 1;
  a1[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_isPageLabelViewInitialized] = 1;
  v3 = [objc_allocWithZone(type metadata accessor for PageLabelView()) initWithFrame_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:a1 action:sel_pageLabelViewTapped_];
  [v3 addGestureRecognizer_];
  v5 = [a1 traitCollection];
  v6 = [v5 horizontalSizeClass];

  if (v6 != 1)
  {
    v7 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageLabelShowsSidebarIconInRegularWidth;
    swift_beginAccess();
    v2 = a1[v7];
  }

  *(v3 + OBJC_IVAR____TtC8PaperKit13PageLabelView_showsSidebarIcon) = v2;
  return v3;
}

void PaperDocumentViewController.showPageNumberOverlay(animated:)(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC5UIKitE12LayoutRegionV14AdaptivityAxisOSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v86 - v5;
  v7 = type metadata accessor for UIView.LayoutRegion();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentThumbnailView;
  swift_beginAccess();
  v12 = *&v2[v11];
  if (v12)
  {
    v13 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
    swift_beginAccess();
    v14 = *&v2[v13];
    if (v14)
    {
      v15 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
      swift_beginAccess();
      v16 = *&v14[v15];
      if (v16)
      {
        v17 = v16;
        v18 = v14;
        v19 = v12;
        v92 = v17;
        v20 = [(UIView *)v17 currentPage];
        if (!v20)
        {
          v41 = v19;
          v42 = v92;
LABEL_39:

          return;
        }

        v21 = v20;
        v86[0] = v8;
        v90 = v19;
        v91 = v18;
        v22 = *&v18[OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfDocument];
        v23 = [v22 pageCount];
        v88 = v22;
        v89 = v21;
        v24 = [v22 indexForPage_];
        if (one-time initialization token for paperKitBundle != -1)
        {
          swift_once();
        }

        v96._object = 0x80000001D4087380;
        v25._countAndFlagsBits = 0x2520666F20756C25;
        v26.value._countAndFlagsBits = 0x617A696C61636F4CLL;
        v26.value._object = 0xEB00000000656C62;
        v25._object = 0xEA0000000000756CLL;
        v27._countAndFlagsBits = 0;
        v27._object = 0xE000000000000000;
        v96._countAndFlagsBits = 0xD000000000000024;
        object = NSLocalizedString(_:tableName:bundle:value:comment:)(v25, v26, paperKitBundle, v27, v96)._object;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_1D405C990;
        if (__OFADD__(v24, 1))
        {
          __break(1u);
        }

        else
        {
          v30 = MEMORY[0x1E69E6530];
          v31 = MEMORY[0x1E69E65A8];
          *(v29 + 56) = MEMORY[0x1E69E6530];
          *(v29 + 64) = v31;
          *(v29 + 32) = v24 + 1;
          *(v29 + 96) = v30;
          *(v29 + 104) = v31;
          *(v29 + 72) = v23;
          v86[2] = object;
          v87 = static String.localizedStringWithFormat(_:_:)();
          v33 = v32;

          v34 = PaperDocumentViewController.pageLabelView.getter();
          v35 = [v34 superview];

          if (!v35 || (type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIView), v36 = v92, v37 = static NSObject.== infix(_:_:)(), v35, v36, (v37 & 1) == 0))
          {
            v38 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageLabelViewTopToSuperviewTopConstraint;
            v39 = *&v2[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageLabelViewTopToSuperviewTopConstraint];
            if (v39)
            {
              [v39 setActive_];
              v40 = *&v2[v38];
            }

            else
            {
              v40 = 0;
            }

            *&v2[v38] = 0;

            v43 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageLabelViewLeadingToThumbnailViewTrailingConstraint;
            v44 = *&v2[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageLabelViewLeadingToThumbnailViewTrailingConstraint];
            if (v44)
            {
              [v44 setActive_];
              v45 = *&v2[v43];
            }

            else
            {
              v45 = 0;
            }

            *&v2[v43] = 0;

            v46 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageLabelViewLeadingToPaperDocumentLeadingConstraint;
            v47 = *&v2[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageLabelViewLeadingToPaperDocumentLeadingConstraint];
            if (v47)
            {
              [v47 setActive_];
              v48 = *&v2[v46];
            }

            else
            {
              v48 = 0;
            }

            *&v2[v46] = 0;
          }

          v86[1] = v33;
          if (a1)
          {
            v49 = objc_opt_self();
            v50 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v51 = swift_allocObject();
            v52 = v92;
            v51[2] = v50;
            v51[3] = v52;
            v51[4] = v87;
            v51[5] = v33;
            aBlock[4] = partial apply for closure #1 in PaperDocumentViewController.showPageNumberOverlay(animated:);
            aBlock[5] = v51;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
            aBlock[3] = &block_descriptor_239;
            v53 = _Block_copy(aBlock);
            v54 = v52;

            [v49 animateWithDuration:v53 animations:0.3];
            _Block_release(v53);
          }

          else
          {
            v55 = *&v2[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController____lazy_storage___pageLabelView];
            v52 = v92;
            v56._countAndFlagsBits = v87;
            v56._object = v33;
            PageLabelView.showNow(in:with:)(v92, v56);
          }

          v57 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageLabelViewTopToSuperviewTopConstraint;
          if (!*&v2[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageLabelViewTopToSuperviewTopConstraint])
          {
            v58 = [v2 view];
            if (!v58)
            {
LABEL_43:
              __break(1u);
              return;
            }

            v59 = v58;
            v60 = *MEMORY[0x1E69DC4C8];
            v61 = type metadata accessor for UIView.LayoutRegion.AdaptivityAxis();
            v62 = *(v61 - 8);
            (*(v62 + 104))(v6, v60, v61);
            (*(v62 + 56))(v6, 0, 1, v61);
            static UIView.LayoutRegion.safeArea(cornerAdaptation:)();
            outlined destroy of StocksKitCurrencyCache.Provider?(v6, &_sSo6UIViewC5UIKitE12LayoutRegionV14AdaptivityAxisOSgMd);
            v63 = UIView.layoutGuide(for:)();

            (*(v86[0] + 8))(v10, v7);
            v64 = [*&v2[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController____lazy_storage___pageLabelView] topAnchor];
            v65 = [v63 topAnchor];
            v66 = [v64 constraintGreaterThanOrEqualToAnchor:v65 constant:16.0];

            v67 = *&v2[v57];
            *&v2[v57] = v66;
            v68 = v66;

            type metadata accessor for UILayoutPriority(0);
            v94 = 1120403456;
            v95 = 1148846080;
            lazy protocol witness table accessor for type PaperDocumentView and conformance PaperDocumentView(&lazy protocol witness table cache variable for type UILayoutPriority and conformance UILayoutPriority, type metadata accessor for UILayoutPriority);
            static _UIKitNumericRawRepresentable.- infix(_:_:)();
            LODWORD(v69) = aBlock[0];
            [v68 setPriority_];

            v52 = v92;
          }

          v70 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageLabelViewLeadingToThumbnailViewTrailingConstraint;
          if (!*&v2[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageLabelViewLeadingToThumbnailViewTrailingConstraint])
          {
            v71 = [*&v2[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController____lazy_storage___pageLabelView] leadingAnchor];
            v72 = [v90 trailingAnchor];
            v73 = [v71 constraintGreaterThanOrEqualToAnchor:v72 constant:20.0];

            v74 = *&v2[v70];
            *&v2[v70] = v73;
          }

          v75 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageLabelViewLeadingToPaperDocumentLeadingConstraint;
          if (!*&v2[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageLabelViewLeadingToPaperDocumentLeadingConstraint])
          {
            v76 = [*&v2[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController____lazy_storage___pageLabelView] leadingAnchor];
            v77 = [v91 safeAreaLayoutGuide];
            v78 = [v77 leadingAnchor];

            v79 = [v76 constraintGreaterThanOrEqualToAnchor:v78 constant:20.0];
            v80 = *&v2[v75];
            *&v2[v75] = v79;
          }

          v81 = *&v2[v57];
          if (v81)
          {
            [v81 setActive_];
          }

          v82 = *&v2[v70];
          v83 = v91;
          v41 = v89;
          if (v82)
          {
            [v82 setActive_];
          }

          v84 = *&v2[v75];
          if (v84)
          {
            [v84 setActive_];
          }

          PaperDocumentViewController.constraintPageLabelViewToBannerIfNeeded()();
          v85 = [v2 view];
          if (v85)
          {
            v42 = v85;

            [(UIView *)v42 setNeedsLayout];

            v18 = v88;
            goto LABEL_39;
          }
        }

        __break(1u);
        goto LABEL_43;
      }
    }
  }
}

void closure #1 in PaperDocumentViewController.showPageNumberOverlay(animated:)(uint64_t a1, UIView *a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = PaperDocumentViewController.pageLabelView.getter();

    v10._countAndFlagsBits = a3;
    v10._object = a4;
    PageLabelView.showNow(in:with:)(a2, v10);
  }
}

Swift::Void __swiftcall PaperDocumentViewController.setShowPageNumberOverlay(_:animated:)(Swift::Bool _, Swift::Bool animated)
{
  if (_)
  {

    PaperDocumentViewController.showPageNumberOverlay(animated:)(animated);
  }

  else
  {
    v3 = PaperDocumentViewController.pageLabelView.getter();
    PageLabelView.fadeOut(animated:)(animated);
  }
}

void PaperDocumentViewController.constraintPageLabelViewToBannerIfNeeded()()
{
  v1 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageLabelViewTopToBannerBottomConstraint;
  v2 = *&v0[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageLabelViewTopToBannerBottomConstraint];
  if (v2)
  {
    [v2 setActive_];
    v3 = *&v0[v1];
  }

  else
  {
    v3 = 0;
  }

  *&v0[v1] = 0;

  v4 = *&v0[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_bannerView];
  if (!v4)
  {
    return;
  }

  v21 = v4;
  v5 = [v21 superview];
  if (!v5)
  {
    goto LABEL_19;
  }

  v6 = [v21 superview];
  v7 = v0;
  v8 = PaperDocumentViewController.pageLabelView.getter();
  v9 = [v8 superview];

  if (v6)
  {
    if (v9)
    {
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIView);
      v10 = static NSObject.== infix(_:_:)();

      if ((v10 & 1) == 0)
      {
        goto LABEL_19;
      }

LABEL_13:
      v11 = v7;
      v12 = [v7 traitCollection];
      v13 = [v12 horizontalSizeClass];

      v14 = 16.0;
      if (v13 != 1)
      {
        v15 = [objc_opt_self() currentDevice];
        v16 = [v15 userInterfaceIdiom];

        if (v16)
        {
          v14 = 0.0;
        }

        else
        {
          v14 = 16.0;
        }
      }

      v17 = [*&v7[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController____lazy_storage___pageLabelView] topAnchor];
      v18 = [v21 bottomAnchor];

      v19 = [v17 constraintEqualToAnchor:v18 constant:v14];
      [v19 setActive_];

      v20 = *&v11[v1];
      *&v11[v1] = v19;
      goto LABEL_20;
    }
  }

  else
  {
    if (!v9)
    {
      goto LABEL_13;
    }
  }

LABEL_19:

  v20 = v21;
LABEL_20:
}

uint64_t PaperDocumentViewController.pageLabelViewTapped(_:)()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_allowsUserInteractionToToggleThumbnailViewVisibility;
  swift_beginAccess();
  if (v1[v2] == 1)
  {
    v3 = [v1 traitCollection];
    v4 = [v3 horizontalSizeClass];

    if (v4 == 1 || (v7 = [v1 traitCollection], v8 = objc_msgSend(v7, sel_horizontalSizeClass), v7, v8 != 1) && (v9 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageLabelShowsSidebarIconInRegularWidth, swift_beginAccess(), v1[v9] == 1))
    {
      v5 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_isThumbnailViewCollapsed;
      swift_beginAccess();
      v6 = v1[v5];
      v1[v5] = v6 ^ 1;
      PaperDocumentViewController.isThumbnailViewCollapsed.didset(v6);
    }
  }

  v10 = PaperDocumentViewController.pageLabelView.getter();
  PageLabelView.resetFadeOutTimer()();

  v11 = &v1[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_delegate];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = *(v11 + 1);
    ObjectType = swift_getObjectType();
    (*(v13 + 32))(v1, ObjectType, v13);
    return swift_unknownObjectRelease();
  }

  return result;
}

id PaperDocumentViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

uint64_t protocol witness for PaperKitAttachment.textualContextProvider.getter in conformance PaperDocumentViewController()
{
  return protocol witness for PaperKitAttachment.textualContextProvider.getter in conformance PaperDocumentViewController();
}

{
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t (*protocol witness for PaperKitAttachment.textualContextProvider.modify in conformance PaperDocumentViewController(uint64_t **a1))()
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
  v2[4] = PaperDocumentViewController.textualContextProvider.modify(v2);
  return protocol witness for PaperKitCalculateDocumentAttachment.calculateDocument.modify in conformance PaperTextAttachmentView;
}

void *protocol witness for PaperKitAttachment.viewControllerForPresentingUI.getter in conformance PaperDocumentViewController()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_viewControllerForPresentingUI;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void protocol witness for PaperKitAttachment.viewControllerForPresentingUI.setter in conformance PaperDocumentViewController(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_viewControllerForPresentingUI;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = a1;
}

uint64_t (*protocol witness for PaperKitStreamableAttachment.liveStreamMessenger.modify in conformance PaperDocumentViewController(uint64_t **a1))()
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
  v2[4] = PaperDocumentViewController.liveStreamMessenger.modify(v2);
  return protocol witness for PaperKitCalculateDocumentAttachment.calculateDocumentExpressionSolvingBehavior.modify in conformance PaperTextAttachmentView;
}

uint64_t (*protocol witness for PaperKitStreamableAttachment.participantDetailsDataSource.modify in conformance PaperDocumentViewController(uint64_t **a1))()
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
  v2[4] = PaperDocumentViewController.participantDetailsDataSource.modify(v2);
  return protocol witness for PaperKitCalculateDocumentAttachment.calculateDocumentExpressionSolvingBehavior.modify in conformance PaperTextAttachmentView;
}

void protocol witness for PaperKitStreamableAttachment.participantDetailsDidChange() in conformance PaperDocumentViewController()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = v3;
    PaperDocumentView.participantDetailsDidChange()();
  }
}

uint64_t protocol witness for PaperKitStreamableAttachment.showParticipantCursors.getter in conformance PaperDocumentViewController()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_showParticipantCursors;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t (*protocol witness for PaperKitStreamableAttachment.showParticipantCursors.modify in conformance PaperDocumentViewController(uint64_t **a1))()
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
  v2[4] = PaperDocumentViewController.showParticipantCursors.modify(v2);
  return protocol witness for PaperKitCalculateDocumentAttachment.calculateDocumentExpressionSolvingBehavior.modify in conformance PaperTextAttachmentView;
}

Swift::Void __swiftcall PaperDocumentViewController_ScrollViewObserver._observeScrollViewDidScroll(_:)(UIScrollView_optional *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v3 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentThumbnailView, v4 = Strong, swift_beginAccess(), v5 = *&v4[v3], v6 = v5, v4, v5))
  {
    v7 = *&v6[OBJC_IVAR____TtC8PaperKit26PaperDocumentThumbnailView_pdfThumbnailView];

    v8 = [v7 collectionView];
    if (!a1)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v8 = 0;
    if (!a1)
    {
LABEL_4:
      if (v8)
      {
LABEL_11:

        return;
      }

LABEL_9:
      v11 = swift_unknownObjectWeakLoadStrong();
      if (!v11)
      {
        return;
      }

      v8 = v11;
      PaperDocumentViewController.notifyContentFrameDidChange()();
      goto LABEL_11;
    }
  }

  if (v8)
  {
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIScrollView);
    v9 = a1;
    v10 = static NSObject.== infix(_:_:)();

    if (v10)
    {
      goto LABEL_9;
    }
  }
}

id PaperDocumentPasswordViewController.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

Swift::Void __swiftcall PaperDocumentViewController.pageDidScroll(_:)(NSNotification_optional a1)
{
  isa = a1.value.super.isa;
  v3 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!v4)
  {
    return;
  }

  v5 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
  swift_beginAccess();
  v6 = *(v4 + v5);
  if (!v6)
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = [v6 documentScrollView];
  if (!v7)
  {
    return;
  }

  if (!isa)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v8 = v7;
  if ([(objc_class *)isa object])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  if (*(&v12 + 1))
  {
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIScrollView);
    if (swift_dynamicCast())
    {
      v8 = v8;
      v9 = static NSObject.== infix(_:_:)();

      if (v9)
      {
        PaperDocumentViewController.notifyContentFrameDidChange()();
      }
    }
  }

  else
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v13, &_sypSgMd);
  }
}

uint64_t PaperDocumentViewController.passwordViewController(_:shouldUnlockWithPassword:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v61 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CRAssetVSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v61 - v13;
  v15 = type metadata accessor for CRAsset();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PaperDocumentPasswordViewController(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    v20 = result;
    v66 = a2;
    v67 = a3;
    v70 = v15;
    v68 = v18;
    v21 = OBJC_IVAR____TtC8PaperKit35PaperDocumentPasswordViewController_documentToUnlock;
    v22 = *(result + OBJC_IVAR____TtC8PaperKit35PaperDocumentPasswordViewController_documentToUnlock);
    if (!v22)
    {
      return 0;
    }

    v65 = v8;
    v23 = OBJC_IVAR____TtC8PaperKit35PaperDocumentPasswordViewController_assetToUnlock;
    swift_beginAccess();
    outlined init with copy of Date?(v20 + v23, v14, &_s9Coherence7CRAssetVSgMd);
    v24 = v70;
    if ((*(v16 + 48))(v14, 1, v70) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v14, &_s9Coherence7CRAssetVSgMd);
      return 0;
    }

    v25 = v68;
    (*(v16 + 32))(v68, v14, v24);
    v26 = *(v20 + OBJC_IVAR____TtC8PaperKit35PaperDocumentPasswordViewController_contextForLockedDocument);
    if (!v26)
    {
      (*(v16 + 8))(v25, v24);
      return 0;
    }

    v64 = OBJC_IVAR____TtC8PaperKit35PaperDocumentPasswordViewController_contextForLockedDocument;
    v27 = a1;
    v28 = v22;
    v29 = v26;
    v30 = MEMORY[0x1DA6CCED0](v66, v67);
    v31 = [v28 unlockWithPassword_];

    if ((v31 & 1) == 0)
    {

      (*(v16 + 8))(v68, v70);
      return 0;
    }

    v62 = v29;
    v63 = v27;
    v32 = v28;
    v33 = v69;
    v34 = *(v20 + v21);
    *(v20 + v21) = 0;

    v35 = v16;
    v36 = v70;
    (*(v16 + 56))(v11, 1, 1, v70);
    swift_beginAccess();
    outlined assign with take of UUID?(v11, v20 + v23, &_s9Coherence7CRAssetVSgMd);
    swift_endAccess();
    v37 = *(v20 + v64);
    *(v20 + v64) = 0;

    if (one-time initialization token for shared != -1)
    {
      v38 = swift_once();
    }

    v39 = *(static PasswordManager.shared + 16);
    MEMORY[0x1EEE9AC00](v38);
    v40 = v68;
    *(&v61 - 4) = v41;
    *(&v61 - 3) = v40;
    v42 = v67;
    *(&v61 - 2) = v66;
    *(&v61 - 1) = v42;
    MEMORY[0x1EEE9AC00](v43);
    *(&v61 - 2) = partial apply for closure #1 in PasswordManager.add(password:for:);
    *(&v61 - 1) = v44;
    os_unfair_lock_lock(v39 + 4);
    partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v45);
    os_unfair_lock_unlock(v39 + 4);
    v46 = CRAsset.digest.getter();
    v47 = &v33[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_assetPasswordToRemove];
    v48 = *&v33[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_assetPasswordToRemove];
    v49 = *&v33[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_assetPasswordToRemove + 8];
    *v47 = v46;
    v47[1] = v50;
    v51 = outlined consume of Data?(v48, v49);
    MEMORY[0x1EEE9AC00](v51);
    v52 = v32;
    *(&v61 - 2) = v32;
    *(&v61 - 1) = v40;
    v53 = PaperDocumentViewController.paperDocument.modify(v71);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd);
    Capsule.callAsFunction<A>(_:)();
    (v53)(v71, 0);
    v54 = type metadata accessor for TaskPriority();
    v55 = v65;
    (*(*(v54 - 8) + 56))(v65, 1, 1, v54);
    type metadata accessor for MainActor();
    v56 = v62;
    v57 = v33;
    v58 = static MainActor.shared.getter();
    v59 = swift_allocObject();
    v60 = MEMORY[0x1E69E85E0];
    v59[2] = v58;
    v59[3] = v60;
    v59[4] = v57;
    v59[5] = v56;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v55, &async function pointer to partial apply for closure #2 in PaperDocumentViewController.passwordViewController(_:shouldUnlockWithPassword:), v59);

    (*(v35 + 8))(v40, v36);
    return 1;
  }

  return result;
}

void closure #1 in PaperDocumentViewController.passwordViewController(_:shouldUnlockWithPassword:)(uint64_t a1, void *a2, uint64_t a3)
{
  v61 = a2;
  v63 = a1;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CRAssetVSgMd);
  MEMORY[0x1EEE9AC00](v60);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v59 = &v48 - v7;
  v8 = type metadata accessor for CRAsset();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit0A8DocumentVSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v58 = &v48 - v13;
  v14 = type metadata accessor for PaperDocument(0);
  v56 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v49 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v48 - v17;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v48 = &v48 - v21;
  v22 = *(v9 + 16);
  v62 = v11;
  v52 = v22;
  v53 = v9 + 16;
  (v22)(v11, a3, v8, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_3<TaggedPaperPage> and conformance SharedTagged_3<A>, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_3<TaggedPaperPage> and conformance SharedTagged_3<A>, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd);
  CROrderedSet.init()();
  v23 = *(v14 + 20);
  v55 = v9;
  v24 = v9;
  v25 = v59;
  v26 = *(v24 + 56);
  v57 = v8;
  v50 = v26;
  v51 = v24 + 56;
  v26(v59, 1, 1, v8);
  outlined init with copy of Date?(v25, v5, &_s9Coherence7CRAssetVSgMd);
  lazy protocol witness table accessor for type CRAsset? and conformance <A> A?();
  v54 = v5;
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v25, &_s9Coherence7CRAssetVSgMd);
  v60 = v14;
  v27 = v61;
  UnknownProperties.init()();
  v28 = [v27 isLocked];
  if (!v28)
  {
    v35 = v65;
    v30 = v62;
    goto LABEL_8;
  }

  if (one-time initialization token for shared != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v29 = *(static PasswordManager.shared + 16);
    MEMORY[0x1EEE9AC00](v28);
    v30 = v62;
    *(&v48 - 2) = v31;
    *(&v48 - 1) = v30;
    MEMORY[0x1EEE9AC00](v32);
    *(&v48 - 2) = partial apply for closure #1 in PasswordManager.password(for:);
    *(&v48 - 1) = v33;
    os_unfair_lock_lock(v29 + 4);
    v34 = v65;
    closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(&v64);
    if (v34)
    {
      os_unfair_lock_unlock(v29 + 4);
      __break(1u);
      return;
    }

    v35 = 0;
    os_unfair_lock_unlock(v29 + 4);
    if (!*(&v64 + 1) || (v36 = MEMORY[0x1DA6CCED0](v64, *(&v64 + 1)), , v37 = [v27 unlockWithPassword_], v36, (v37 & 1) == 0))
    {
      v65 = 0;
      (*(v55 + 8))(v30, v57);
      outlined destroy of PaperDocument(v18, type metadata accessor for PaperDocument);
      v38 = 1;
      v39 = v58;
      goto LABEL_10;
    }

LABEL_8:
    v40 = [v27 pageCount];
    if ((v40 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_14:
    v28 = swift_once();
  }

  MEMORY[0x1EEE9AC00](v40);
  *(&v48 - 6) = v18;
  *(&v48 - 5) = v27;
  v41 = v63;
  *(&v48 - 4) = v30;
  *(&v48 - 3) = v41;
  *(&v48 - 2) = 0;
  *(&v48 - 8) = 1;
  specialized Sequence.compactMap<A>(_:)(partial apply for specialized closure #1 in PaperDocument.appendPages<A>(_:_:_:assetManager:useProxyPages:), (&v48 - 8), 0, v42);
  v65 = v35;
  *&v64 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGGMd);
  v62 = v23;
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [SharedTagged_3<TaggedPaperPage>] and conformance [A], &_sSay9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGGMd);
  CROrderedSet.append<A>(contentsOf:)();

  v44 = v57;
  v52(v25, v30, v57);
  v50(v25, 0, 1, v44);
  outlined init with copy of Date?(v25, v54, &_s9Coherence7CRAssetVSgMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd);
  CRRegister.wrappedValue.setter();
  outlined destroy of StocksKitCurrencyCache.Provider?(v25, &_s9Coherence7CRAssetVSgMd);
  (*(v55 + 8))(v30, v44);
  v39 = v58;
  outlined init with take of PaperDocument(v18, v58, type metadata accessor for PaperDocument);
  v38 = 0;
LABEL_10:
  v45 = v56;
  v46 = v60;
  (*(v56 + 56))(v39, v38, 1, v60);
  if ((*(v45 + 48))(v39, 1, v46) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v39, &_s8PaperKit0A8DocumentVSgMd);
  }

  else
  {
    v47 = v48;
    outlined init with take of PaperDocument(v39, v48, type metadata accessor for PaperDocument);
    outlined init with copy of PaperDocument(v47, v49, type metadata accessor for PaperDocument);
    Capsule.Ref.root.setter();
    outlined destroy of PaperDocument(v47, type metadata accessor for PaperDocument);
  }
}

uint64_t closure #2 in PaperDocumentViewController.passwordViewController(_:shouldUnlockWithPassword:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = type metadata accessor for MainActor();
  v5[3] = static MainActor.shared.getter();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = closure #2 in PaperDocumentViewController.passwordViewController(_:shouldUnlockWithPassword:);

  return PaperDocumentViewController.setupDocumentView(context:)(a5);
}

uint64_t closure #2 in PaperDocumentViewController.passwordViewController(_:shouldUnlockWithPassword:)()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #2 in PaperDocumentViewController.passwordViewController(_:shouldUnlockWithPassword:), v1, v0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

void PaperDocumentViewController.markupEditViewController(_:insertNewShape:)(uint64_t a1, char *a2)
{
  v4 = *a2;
  v5 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (!v6)
  {
    return;
  }

  v7 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
  swift_beginAccess();
  v8 = *&v6[v7];
  if (!v8)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v9 = v6;
  v10 = [v8 currentPage];
  if (!v10)
  {
LABEL_16:

    return;
  }

  v11 = v10;
  type metadata accessor for PaperKitPDFPage(0);
  v12 = swift_dynamicCastClass();
  if (!v12)
  {

    goto LABEL_14;
  }

  v13 = v12;
  v14 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pageToOverlayMap;
  swift_beginAccess();
  v15 = *&v9[v14];
  if (!*(v15 + 16))
  {

    goto LABEL_16;
  }

  v16 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
  if (v17)
  {
    v18 = *(v15 + 56) + 16 * v16;
    v19 = *(v18 + 8);
    v20 = *v18;

    ObjectType = swift_getObjectType();
    v22 = (*(v19 + 104))(ObjectType, v19);

    if (v22 >> 62)
    {
      if (__CocoaSet.count.getter())
      {
        goto LABEL_9;
      }
    }

    else if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_9:
      if ((v22 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x1DA6CE0C0](0, v22);
        goto LABEL_12;
      }

      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v23 = *(v22 + 32);
LABEL_12:
        v24 = v23;

        v25 = v4;
        (*((*MEMORY[0x1E69E7D40] & *v24) + 0xA48))(a1, &v25);

LABEL_14:
        return;
      }

      __break(1u);
      goto LABEL_22;
    }
  }
}

void PaperDocumentViewController.markupEditViewControllerInsertNewTextbox(_:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!v4)
  {
    return;
  }

  v5 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
  swift_beginAccess();
  v6 = *&v4[v5];
  if (!v6)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v7 = v4;
  v8 = [v6 currentPage];
  if (!v8)
  {
LABEL_15:

    return;
  }

  v9 = v8;
  type metadata accessor for PaperKitPDFPage(0);
  v10 = swift_dynamicCastClass();
  if (!v10)
  {

    return;
  }

  v11 = v10;
  v12 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pageToOverlayMap;
  swift_beginAccess();
  v13 = *&v7[v12];
  if (!*(v13 + 16))
  {

    goto LABEL_15;
  }

  v14 = specialized __RawDictionaryStorage.find<A>(_:)(v11);
  if (v15)
  {
    v16 = *(v13 + 56) + 16 * v14;
    v17 = *(v16 + 8);
    v18 = *v16;

    ObjectType = swift_getObjectType();
    v20 = (*(v17 + 104))(ObjectType, v17);

    if (v20 >> 62)
    {
      if (__CocoaSet.count.getter())
      {
        goto LABEL_9;
      }
    }

    else if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_9:
      if ((v20 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x1DA6CE0C0](0, v20);
        goto LABEL_12;
      }

      if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v21 = *(v20 + 32);
LABEL_12:
        v22 = v21;

        (*((*MEMORY[0x1E69E7D40] & *v22) + 0xA50))(a1);

        return;
      }

      __break(1u);
      goto LABEL_21;
    }
  }
}

void PaperDocumentViewController.markupEditViewController(_:insertNewLineWithStartMarker:endMarker:)(uint64_t a1, char a2, char a3)
{
  v7 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (!v8)
  {
    return;
  }

  v9 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
  swift_beginAccess();
  v10 = *&v8[v9];
  if (!v10)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v11 = v8;
  v12 = [v10 currentPage];
  if (!v12)
  {
LABEL_15:

    return;
  }

  v13 = v12;
  type metadata accessor for PaperKitPDFPage(0);
  v14 = swift_dynamicCastClass();
  if (!v14)
  {

    return;
  }

  v15 = v14;
  v16 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pageToOverlayMap;
  swift_beginAccess();
  v17 = *&v11[v16];
  if (!*(v17 + 16))
  {

    goto LABEL_15;
  }

  v18 = specialized __RawDictionaryStorage.find<A>(_:)(v15);
  if (v19)
  {
    v20 = *(v17 + 56) + 16 * v18;
    v21 = *(v20 + 8);
    v22 = *v20;

    ObjectType = swift_getObjectType();
    v24 = (*(v21 + 104))(ObjectType, v21);

    if (v24 >> 62)
    {
      if (__CocoaSet.count.getter())
      {
        goto LABEL_9;
      }
    }

    else if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_9:
      if ((v24 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x1DA6CE0C0](0, v24);
        goto LABEL_12;
      }

      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v25 = *(v24 + 32);
LABEL_12:
        v26 = v25;

        (*((*MEMORY[0x1E69E7D40] & *v26) + 0xA58))(a1, a2 & 1, a3 & 1);

        return;
      }

      __break(1u);
      goto LABEL_21;
    }
  }
}

void PaperDocumentViewController.markupEditViewController(_:insertNewContents:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (!v6)
  {
    return;
  }

  v7 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
  swift_beginAccess();
  v8 = *&v6[v7];
  if (!v8)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v9 = v6;
  v10 = [v8 currentPage];
  if (!v10)
  {
LABEL_15:

    return;
  }

  v11 = v10;
  type metadata accessor for PaperKitPDFPage(0);
  v12 = swift_dynamicCastClass();
  if (!v12)
  {

    return;
  }

  v13 = v12;
  v14 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pageToOverlayMap;
  swift_beginAccess();
  v15 = *&v9[v14];
  if (!*(v15 + 16))
  {

    goto LABEL_15;
  }

  v16 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
  if (v17)
  {
    v18 = *(v15 + 56) + 16 * v16;
    v19 = *(v18 + 8);
    v20 = *v18;

    ObjectType = swift_getObjectType();
    v22 = (*(v19 + 104))(ObjectType, v19);

    if (v22 >> 62)
    {
      if (__CocoaSet.count.getter())
      {
        goto LABEL_9;
      }
    }

    else if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_9:
      if ((v22 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x1DA6CE0C0](0, v22);
        goto LABEL_12;
      }

      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v23 = *(v22 + 32);
LABEL_12:
        v24 = v23;

        (*((*MEMORY[0x1E69E7D40] & *v24) + 0xA60))(a1, a2);

        return;
      }

      __break(1u);
      goto LABEL_21;
    }
  }
}

uint64_t specialized TiledPaperKitView.paperAttachments(includeStandInAttachment:)(char a1)
{
  v2 = v1;
  v4 = TiledTextView.paperAttachments.getter();
  v5 = [v2 scrollView];
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v7 = v5;
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8 && (v9 = v8, v10 = [v8 textContainer], v11 = objc_msgSend(v10, sel_textLayoutManager), v10, v11))
    {

      v41 = v6;
      v12 = [v9 textStorage];
      v39[0] = [v12 length];

      v39[1] = v39;
      MEMORY[0x1EEE9AC00](v13);
      v38[2] = &v41;
      v14 = [v9 textStorage];
      v15 = *MEMORY[0x1E69DB5F8];
      v16 = swift_allocObject();
      *(v16 + 16) = v9;
      *(v16 + 24) = 0;
      *(v16 + 32) = partial apply for closure #1 in TiledTextView.paperDocumentAttachments.getter;
      *(v16 + 40) = v38;
      v17 = swift_allocObject();
      *(v17 + 16) = partial apply for closure #1 in UITextView.enumeratePaperDocumentTextAttachments(in:createIfNeeded:options:using:);
      *(v17 + 24) = v16;
      aBlock[4] = partial apply for thunk for @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
      aBlock[5] = v17;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
      aBlock[3] = &block_descriptor_195;
      v18 = _Block_copy(aBlock);
      v19 = v7;

      [v14 enumerateAttribute:v15 inRange:0 options:v39[0] usingBlock:{0, v18}];

      _Block_release(v18);
      LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

      if (v19)
      {
        __break(1u);
LABEL_15:
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_11:
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        return aBlock[0];
      }

      v6 = v41;
    }

    else
    {
    }
  }

  v20 = specialized Sequence.flatMap<A>(_:)(v6);

  aBlock[0] = v4;
  v21 = specialized Array.append<A>(contentsOf:)(v20);
  v22 = aBlock[0];
  if (a1)
  {
    v23 = specialized TiledPaperKitView.visibleStandInPaperAttachmentView()(v21);
    if (v23)
    {
      v24 = v23;
      [v23 bounds];
      [v24 convertRect:v2 toCoordinateSpace:?];
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v32 = v31;
      [v2 bounds];
      v43.origin.x = v33;
      v43.origin.y = v34;
      v43.size.width = v35;
      v43.size.height = v36;
      v42.origin.x = v26;
      v42.origin.y = v28;
      v42.size.width = v30;
      v42.size.height = v32;
      if (!CGRectIntersectsRect(v42, v43))
      {

        return v22;
      }

      v2 = v24;
      MEMORY[0x1DA6CD190]();
      if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) < *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_11;
      }

      goto LABEL_15;
    }
  }

  return v22;
}

{
  result = TiledDocumentView.paperAttachmentsIncludingSubAttachments.getter();
  v20 = result;
  if ((a1 & 1) == 0)
  {
    return result;
  }

  v4 = result;
  v5 = specialized TiledPaperKitView.visibleStandInPaperAttachmentView()(result);
  if (!v5)
  {
    return v4;
  }

  v6 = v5;
  [v5 bounds];
  [v6 convertRect:v1 toCoordinateSpace:?];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [v1 bounds];
  v22.origin.x = v15;
  v22.origin.y = v16;
  v22.size.width = v17;
  v22.size.height = v18;
  v21.origin.x = v8;
  v21.origin.y = v10;
  v21.size.width = v12;
  v21.size.height = v14;
  if (!CGRectIntersectsRect(v21, v22))
  {

    return v4;
  }

  v19 = v6;
  MEMORY[0x1DA6CD190]();
  if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  return v20;
}

void specialized closure #1 in CanvasElementController.addCanvasElement<A>(_:)(void *a1, uint64_t a2)
{
  if (a1)
  {
    v6 = a1;
    specialized static CanvasElementController.makeCanvasFirstResponder(_:)(v6);
    v3 = *((*MEMORY[0x1E69E7D40] & *v6) + 0x700);
    v4 = type metadata accessor for Shape(0);
    v5 = lazy protocol witness table accessor for type PaperDocumentView and conformance PaperDocumentView(&lazy protocol witness table cache variable for type Shape and conformance Shape, type metadata accessor for Shape);
    v3(a2, 1, 0, 0, v4, v5, &protocol witness table for Shape);
  }
}

{
  if (a1)
  {
    v6 = a1;
    specialized static CanvasElementController.makeCanvasFirstResponder(_:)(v6);
    v3 = *((*MEMORY[0x1E69E7D40] & *v6) + 0x700);
    v4 = type metadata accessor for Signature(0);
    v5 = lazy protocol witness table accessor for type PaperDocumentView and conformance PaperDocumentView(&lazy protocol witness table cache variable for type Signature and conformance Signature, type metadata accessor for Signature);
    v3(a2, 1, 0, 0, v4, v5, &protocol witness table for Signature);
  }
}

uint64_t key path setter for PaperDocumentView.pageOverlayViewProvider : PaperDocumentView()
{
  return key path setter for PaperDocumentView.pageOverlayViewProvider : PaperDocumentView();
}

{
  swift_getKeyPath();
  lazy protocol witness table accessor for type PaperDocumentView and conformance PaperDocumentView(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t key path getter for PaperDocumentView.pageOverlayViewProvider : PaperDocumentView@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type PaperDocumentView and conformance PaperDocumentView(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = v5 + *a2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t key path getter for PaperDocumentView.indirectPointerTouchMode : PaperDocumentView@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type PaperDocumentView and conformance PaperDocumentView(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__indirectPointerTouchMode);
  return result;
}

void specialized PaperDocumentView.merge<A>(_:from:page:)(uint64_t a1, unsigned __int8 a2, void *a3)
{
  v4 = v3;
  v62 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v53 - v9;
  v11 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfUpdateCount;
  v12 = *(v4 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfUpdateCount);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    goto LABEL_36;
  }

  *(v4 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfUpdateCount) = v14;
  v15 = a2;
  if (!a2)
  {
    swift_getKeyPath();
    v59 = v10;
    *&v63[0] = v4;
    lazy protocol witness table accessor for type PaperDocumentView and conformance PaperDocumentView(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
    ObservationRegistrar.access<A, B>(_:keyPath:)();
    v10 = v59;

    if (*(v4 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__multipeerConnection))
    {
      type metadata accessor for PaperDocument(0);
      lazy protocol witness table accessor for type PaperDocumentView and conformance PaperDocumentView(&lazy protocol witness table cache variable for type PaperDocument and conformance PaperDocument, type metadata accessor for PaperDocument);

      v10 = v59;
      CRMulticastSyncManager.merge<A>(_:sendDelta:)();
    }
  }

  v16 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_dataModel;
  swift_beginAccess();
  v17 = type metadata accessor for PaperDocument(0);
  v60 = lazy protocol witness table accessor for type PaperDocumentView and conformance PaperDocumentView(&lazy protocol witness table cache variable for type PaperDocument and conformance PaperDocument, type metadata accessor for PaperDocument);
  v61 = v17;
  Capsule.merge<A>(_:)();
  swift_endAccess();
  if (!a3)
  {
    if (a2 == 4)
    {
      goto LABEL_27;
    }

    v58 = a2;
    v59 = v10;
    v53 = v11;
    v54 = v8;
    v55 = v7;
    v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9Coherence7CRAssetV_8PaperKit0eF11PDFDocumentCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    PaperDocumentView.updatePDFDocument(otherDocuments:)(v21);

    v22 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pageToOverlayMap;
    swift_beginAccess();
    v23 = *(v4 + v22);
    v26 = *(v23 + 64);
    v25 = v23 + 64;
    v24 = v26;
    v27 = 1 << *(*(v4 + v22) + 32);
    v28 = -1;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    v29 = v28 & v24;
    v30 = (v27 + 63) >> 6;
    v56 = *(v4 + v22);

    v31 = 0;
    for (i = v16; v29; v16 = i)
    {
      v32 = v31;
LABEL_18:
      v33 = __clz(__rbit64(v29));
      v29 &= v29 - 1;
      v34 = *(v56 + 56) + ((v32 << 10) | (16 * v33));
      v35 = *v34;
      v36 = *(v34 + 8);
      ObjectType = swift_getObjectType();
      LOBYTE(v64[0]) = v58;
      v38 = *(v36 + 88);
      v39 = v35;
      v38(v62, v64, v61, v60, ObjectType, v36);
    }

    v15 = v58;
    while (1)
    {
      v32 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v32 >= v30)
      {

        v7 = v55;
        v8 = v54;
        v11 = v53;
        v10 = v59;
        goto LABEL_26;
      }

      v29 = *(v25 + 8 * v32);
      ++v31;
      if (v29)
      {
        v31 = v32;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v18 = *(v4 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfDocument);
  (*(v8 + 16))(v10, v4 + v16, v7);
  v63[0] = xmmword_1D405D330;
  memset(&v63[1], 0, 109);
  v19 = a3;
  v20 = v18;
  specialized PaperKitPDFDocument.updatePDFPage<A>(in:use:options:page:)(v10, 0x8000000000000000, v63, v19);

  outlined destroy of StocksKitCurrencyCache.Provider?(v63, &_s8PaperKit0A17RenderableOptionsVSgMd);
  (*(v8 + 8))(v10, v7);
  if (v15 == 4)
  {

LABEL_27:
    swift_getKeyPath();
    v64[0] = v4;
    lazy protocol witness table accessor for type PaperDocumentView and conformance PaperDocumentView(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v4 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__multipeerConnection))
    {
      (*(v8 + 16))(v10, v4 + v16, v7);

      CRMulticastSyncManager.sync(_:sendDelta:)();

      (*(v8 + 8))(v10, v7);
    }

    if (v15 == 4)
    {
      if (!PaperDocumentView.isLiveEditing()())
      {
        PaperDocumentView.didChange()();
      }

      (*(v8 + 16))(v10, v4 + v16, v7);
      PassthroughSubject.send(_:)();
      (*(v8 + 8))(v10, v7);
    }

    goto LABEL_33;
  }

  v40 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pageToOverlayMap;
  swift_beginAccess();
  v41 = *(v4 + v40);
  if (*(v41 + 16))
  {

    v42 = specialized __RawDictionaryStorage.find<A>(_:)(v19);
    if (v43)
    {
      v44 = *(v41 + 56) + 16 * v42;
      i = v16;
      v45 = *(v44 + 8);
      v46 = v15;
      v47 = *v44;

      v48 = swift_getObjectType();
      LOBYTE(v64[0]) = v46;
      v49 = *(v45 + 88);
      v50 = v45;
      v16 = i;
      v49(v62, v64, v61, v60, v48, v50);

      v15 = v46;
    }

    else
    {
    }
  }

  else
  {
  }

LABEL_26:
  if ((v15 - 3) <= 1)
  {
    goto LABEL_27;
  }

LABEL_33:
  v51 = *(v4 + v11);
  v13 = __OFSUB__(v51, 1);
  v52 = v51 - 1;
  if (!v13)
  {
    *(v4 + v11) = v52;
    return;
  }

LABEL_37:
  __break(1u);
}

uint64_t key path getter for PaperDocumentView.showParticipantCursors : PaperDocumentView@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type PaperDocumentView and conformance PaperDocumentView(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView__showParticipantCursors;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

id thunk for @escaping @callee_guaranteed (@guaranteed UITraitCollection) -> (@owned UIColor)(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

double specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)@<D0>(void (*a1)(__int128 *__return_ptr)@<X1>, _OWORD *a2@<X8>)
{
  a1(&v5);
  if (!v2)
  {
    result = *&v5;
    *a2 = v5;
  }

  return result;
}

id specialized PaperDocumentViewController.init(context:paperDocument:editingMode:)(void *a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = v3;
  v43 = a2;
  v41 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v42 = &v39 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v39 - v9;
  v40 = *a3;
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView] = 0;
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentThumbnailView] = 0;
  v11 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_scrollViewObserver;
  *&v4[v11] = [objc_allocWithZone(type metadata accessor for PaperDocumentViewController_ScrollViewObserver()) init];
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_thumbnailBackgroundView] = 0;
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_thumbnailViewLeadingToSuperviewLeadingConstraint] = 0;
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_thumbnailViewWidthConstraint] = 0;
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_documentViewLeadingToThumbnailViewTrailingConstraint] = 0;
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_screenEdgePanGestureRecognizer] = 0;
  v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_allowsUserInteractionToToggleThumbnailViewVisibility] = 1;
  v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageLabelShowsSidebarIconInRegularWidth] = 1;
  v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_isThumbnailViewCollapsed] = 0;
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageOverlayViewProvider + 8] = 0;
  swift_unknownObjectWeakInit();
  if (MEMORY[0x1E69E7CC0] >> 62 && __CocoaSet.count.getter())
  {
    v12 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CD0];
  }

  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_cancellables] = v12;
  v13 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController__toolPicker;
  *&v4[v13] = [objc_allocWithZone(MEMORY[0x1E6978530]) init];
  v14 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentTemp;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd);
  v16 = *(v15 - 8);
  v39 = *(v16 + 56);
  v39(&v4[v14], 1, 1, v15);
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_passwordViewController] = 0;
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_assetPasswordToRemove] = xmmword_1D405C100;
  v17 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_backgroundColor;
  if (one-time initialization token for defaultBackgroundColor != -1)
  {
    swift_once();
  }

  v18 = static PaperDocumentViewController.defaultBackgroundColor;
  *&v4[v17] = static PaperDocumentViewController.defaultBackgroundColor;
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_thumbnailViewBackgroundColor] = 0;
  v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_shouldShowFormFillingUIAutomatically] = 0;
  v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_defaultBannerWasDisplayed] = 0;
  v19 = &v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_bannerViewConfiguration];
  *v19 = 1;
  *(v19 + 8) = 0u;
  *(v19 + 24) = 0u;
  *(v19 + 40) = 0u;
  v20 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_bannerView;
  v21 = objc_allocWithZone(PPKQuickLookBannerView);
  v22 = v18;
  *&v4[v20] = [v21 &selRef_name];
  v23 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_plusButton;
  type metadata accessor for FormPlusButtonView();
  *&v4[v23] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) &selRef_name];
  v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_ignorePasswordRequest] = 0;
  v24 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_lastPasswordRequestDate;
  v25 = type metadata accessor for Date();
  (*(*(v25 - 8) + 56))(&v4[v24], 1, 1, v25);
  v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_lastPasswordRequestSucceeded] = 0;
  v26 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_passThroughSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy9Coherence7CapsuleVy8PaperKit0F8DocumentVGs5NeverOGMd);
  swift_allocObject();
  *&v4[v26] = PassthroughSubject.init()();
  v27 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_livePassThroughSubject;
  swift_allocObject();
  *&v4[v27] = PassthroughSubject.init()();
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_liveStreamMessenger + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_participantDetailsDataSource + 8] = 0;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_showParticipantCursors] = 0;
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_textualContextProvider + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_viewControllerForPresentingUI] = 0;
  v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_indirectPointerTouchMode] = 0;
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController__cachedToolPicker] = 0;
  v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_isPageLabelViewInitialized] = 0;
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController____lazy_storage___pageLabelView] = 0;
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageLabelViewTopToSuperviewTopConstraint] = 0;
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageLabelViewTopToBannerBottomConstraint] = 0;
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageLabelViewLeadingToThumbnailViewTrailingConstraint] = 0;
  *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageLabelViewLeadingToPaperDocumentLeadingConstraint] = 0;
  v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_editingMode] = v40;
  v28 = v43;
  (*(v16 + 16))(v10, v43, v15);
  v39(v10, 0, 1, v15);
  swift_beginAccess();
  outlined assign with take of UUID?(v10, &v4[v14], &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMd);
  swift_endAccess();
  v29 = type metadata accessor for PaperDocumentViewController(0);
  v44.receiver = v4;
  v44.super_class = v29;
  v30 = objc_msgSendSuper2(&v44, sel_initWithNibName_bundle_, 0, 0);
  v31 = type metadata accessor for TaskPriority();
  v32 = v42;
  (*(*(v31 - 8) + 56))(v42, 1, 1, v31);
  type metadata accessor for MainActor();
  v33 = v30;
  v34 = v41;
  v35 = static MainActor.shared.getter();
  v36 = swift_allocObject();
  v37 = MEMORY[0x1E69E85E0];
  v36[2] = v35;
  v36[3] = v37;
  v36[4] = v33;
  v36[5] = v34;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v32, &async function pointer to partial apply for closure #1 in PaperDocumentViewController.init(context:paperDocument:editingMode:), v36);

  (*(v16 + 8))(v28, v15);
  return v33;
}

id outlined copy of BannerViewConfiguration?(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  if (result != 1)
  {
    v8 = result;
    v9 = a7;
    v10 = v8;

    return a6;
  }

  return result;
}

void outlined consume of BannerViewConfiguration?(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  if (a1 != 1)
  {
  }
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type TaggedPaperPage and conformance TaggedPaperPage()
{
  result = lazy protocol witness table cache variable for type TaggedPaperPage and conformance TaggedPaperPage;
  if (!lazy protocol witness table cache variable for type TaggedPaperPage and conformance TaggedPaperPage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaggedPaperPage and conformance TaggedPaperPage);
  }

  return result;
}

uint64_t keypath_get_42Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_get_36Tm@<X0>(void *a1@<X0>, void *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = *a1 + *a2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t keypath_set_37Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  v7 = swift_unknownObjectRetain();
  return a5(v7, v6);
}

void type metadata completion function for PaperDocumentPasswordViewController()
{
  type metadata accessor for CRAsset?(319, &lazy cache variable for type metadata for CRAsset?, MEMORY[0x1E6995408]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata completion function for PaperDocumentViewController()
{
  type metadata accessor for Capsule<PaperDocument>?();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CRAsset?(319, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Capsule<PaperDocument>?()
{
  if (!lazy cache variable for type metadata for Capsule<PaperDocument>?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Capsule<PaperDocument>?);
    }
  }
}

void type metadata accessor for CRAsset?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void partial apply for closure #1 in closure #1 in PaperDocumentViewController.setupDocumentView(context:)(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd);

  closure #1 in closure #1 in PaperDocumentViewController.setupDocumentView(context:)(a1);
}

unint64_t lazy protocol witness table accessor for type AutofillFeatureFlags and conformance AutofillFeatureFlags()
{
  result = lazy protocol witness table cache variable for type AutofillFeatureFlags and conformance AutofillFeatureFlags;
  if (!lazy protocol witness table cache variable for type AutofillFeatureFlags and conformance AutofillFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutofillFeatureFlags and conformance AutofillFeatureFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutofillFeatureFlags and conformance AutofillFeatureFlags;
  if (!lazy protocol witness table cache variable for type AutofillFeatureFlags and conformance AutofillFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutofillFeatureFlags and conformance AutofillFeatureFlags);
  }

  return result;
}

void specialized PaperDocumentViewController.init(coder:)()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentThumbnailView) = 0;
  v2 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_scrollViewObserver;
  *(v1 + v2) = [objc_allocWithZone(type metadata accessor for PaperDocumentViewController_ScrollViewObserver()) init];
  *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_thumbnailBackgroundView) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_thumbnailViewLeadingToSuperviewLeadingConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_thumbnailViewWidthConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_documentViewLeadingToThumbnailViewTrailingConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_screenEdgePanGestureRecognizer) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_allowsUserInteractionToToggleThumbnailViewVisibility) = 1;
  *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageLabelShowsSidebarIconInRegularWidth) = 1;
  *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_isThumbnailViewCollapsed) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageOverlayViewProvider + 8) = 0;
  swift_unknownObjectWeakInit();
  if (MEMORY[0x1E69E7CC0] >> 62 && __CocoaSet.count.getter())
  {
    v3 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CD0];
  }

  *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_cancellables) = v3;
  v4 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController__toolPicker;
  *(v1 + v4) = [objc_allocWithZone(MEMORY[0x1E6978530]) init];
  v5 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentTemp;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd);
  (*(*(v6 - 8) + 56))(v1 + v5, 1, 1, v6);
  *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_passwordViewController) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_assetPasswordToRemove) = xmmword_1D405C100;
  v7 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_backgroundColor;
  if (one-time initialization token for defaultBackgroundColor != -1)
  {
    swift_once();
  }

  v8 = static PaperDocumentViewController.defaultBackgroundColor;
  *(v1 + v7) = static PaperDocumentViewController.defaultBackgroundColor;
  *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_thumbnailViewBackgroundColor) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_shouldShowFormFillingUIAutomatically) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_defaultBannerWasDisplayed) = 0;
  v9 = v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_bannerViewConfiguration;
  *v9 = 1;
  *(v9 + 8) = 0u;
  *(v9 + 24) = 0u;
  *(v9 + 40) = 0u;
  v10 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_bannerView;
  v11 = objc_allocWithZone(PPKQuickLookBannerView);
  v12 = v8;
  *(v1 + v10) = [v11 init];
  v13 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_plusButton;
  type metadata accessor for FormPlusButtonView();
  *(v1 + v13) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_ignorePasswordRequest) = 0;
  v14 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_lastPasswordRequestDate;
  v15 = type metadata accessor for Date();
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_lastPasswordRequestSucceeded) = 0;
  v16 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_passThroughSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy9Coherence7CapsuleVy8PaperKit0F8DocumentVGs5NeverOGMd);
  swift_allocObject();
  *(v1 + v16) = PassthroughSubject.init()();
  v17 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_livePassThroughSubject;
  swift_allocObject();
  *(v1 + v17) = PassthroughSubject.init()();
  *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_liveStreamMessenger + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_participantDetailsDataSource + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_showParticipantCursors) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_textualContextProvider + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_viewControllerForPresentingUI) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_indirectPointerTouchMode) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController__cachedToolPicker) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_isPageLabelViewInitialized) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController____lazy_storage___pageLabelView) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageLabelViewTopToSuperviewTopConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageLabelViewTopToBannerBottomConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageLabelViewLeadingToThumbnailViewTrailingConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_pageLabelViewLeadingToPaperDocumentLeadingConstraint) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t partial apply for closure #2 in PaperDocumentViewController.passwordViewController(_:shouldUnlockWithPassword:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return closure #2 in PaperDocumentViewController.passwordViewController(_:shouldUnlockWithPassword:)(a1, v4, v5, v7, v6);
}

id partial apply for specialized closure #1 in PaperDocument.appendPages<A>(_:_:_:assetManager:useProxyPages:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  return partial apply for specialized closure #1 in PaperDocument.appendPages<A>(_:_:_:assetManager:useProxyPages:)(a1, a2);
}

{
  return specialized closure #1 in PaperDocument.appendPages<A>(_:_:_:assetManager:useProxyPages:)(a1, *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), a2);
}

uint64_t partial apply for closure #2 in PaperDocumentViewController.init(withDataOrURL:context:editingMode:)(uint64_t a1)
{
  v4 = *(type metadata accessor for CRAsset() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #2 in PaperDocumentViewController.init(withDataOrURL:context:editingMode:)(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t outlined init with take of PaperDocument(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of PaperDocument(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of PaperDocument(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_228Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t partial apply for closure #1 in PaperDocumentViewController.init(context:paperDocument:editingMode:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in PaperDocumentViewController.init(context:paperDocument:editingMode:)(a1, v4, v5, v7, v6);
}

uint64_t closure #1 in PaperDocumentView.liveStreamMessenger.setterpartial apply()
{
  return partial apply for closure #1 in PaperDocumentView.liveStreamMessenger.setter();
}

{
  return _s8PaperKit0A12DocumentViewC19liveStreamMessengerAA0ab4LivefG0_pSgvsyyXEfU_TA_0();
}

uint64_t closure #1 in PaperDocumentView.textualContextProvider.setterpartial apply()
{
  return partial apply for closure #1 in PaperDocumentView.textualContextProvider.setter();
}

{
  return _s8PaperKit0A12DocumentViewC22textualContextProviderAA0a17AttachmentTextualfG0_pSgvsyyXEfU_TA_0();
}

uint64_t protocol witness for View.body.getter in conformance MiniDivider@<X0>(uint64_t a1@<X8>)
{
  Divider.init()();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v2 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA7DividerVAA12_FrameLayoutVGMd) + 36));
  *v2 = v26;
  v2[1] = v27;
  v2[2] = v28;
  v3 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA7DividerVAA12_FrameLayoutVGAA08_PaddingG0VGMd) + 36);
  *v12 = v3;
  *(v12 + 8) = v5;
  *(v12 + 16) = v7;
  *(v12 + 24) = v9;
  *(v12 + 32) = v11;
  *(v12 + 40) = 0;
  v13 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA7DividerVAA12_FrameLayoutVGAA08_PaddingG0VGAJGMd) + 36);
  *v22 = v13;
  *(v22 + 8) = v15;
  *(v22 + 16) = v17;
  *(v22 + 24) = v19;
  *(v22 + 32) = v21;
  *(v22 + 40) = 0;
  v23 = static VerticalAlignment.firstTextBaseline.getter();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA7DividerVAA12_FrameLayoutVGAA08_PaddingG0VGAJGAA25_AlignmentWritingModifierVGMd);
  v25 = (a1 + *(result + 36));
  *v25 = v23;
  v25[1] = closure #4 in MiniColorButton.body.getter;
  v25[2] = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Divider, _FrameLayout>, _PaddingLayout>, _PaddingLayout>, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Divider, _FrameLayout>, _PaddingLayout>, _PaddingLayout>, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Divider, _FrameLayout>, _PaddingLayout>, _PaddingLayout>, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA7DividerVAA12_FrameLayoutVGAA08_PaddingG0VGAJGAA25_AlignmentWritingModifierVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Divider, _FrameLayout>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Divider, _FrameLayout>, _PaddingLayout>, _PaddingLayout>, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Divider, _FrameLayout>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Divider, _FrameLayout>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Divider, _FrameLayout>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA7DividerVAA12_FrameLayoutVGAA08_PaddingG0VGAJGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Divider, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Divider, _FrameLayout>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Divider, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Divider, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Divider, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA7DividerVAA12_FrameLayoutVGAA08_PaddingG0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<Divider, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Divider, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Divider, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Divider, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Divider, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA7DividerVAA12_FrameLayoutVGMd);
    lazy protocol witness table accessor for type Divider and conformance Divider();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Divider, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Divider and conformance Divider()
{
  result = lazy protocol witness table cache variable for type Divider and conformance Divider;
  if (!lazy protocol witness table cache variable for type Divider and conformance Divider)
  {
    type metadata accessor for Divider();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Divider and conformance Divider);
  }

  return result;
}

Swift::Void __swiftcall CanvasViewToolPickerObserver.updateUI(toolPicker:)(PKToolPicker toolPicker)
{
  v2 = type metadata accessor for PKInk();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (([(objc_class *)toolPicker.super.isa _isHandwritingToolSelected]& 1) == 0)
    {
      v8 = v7;
      v9 = [(objc_class *)toolPicker.super.isa selectedToolItem];
      PKToolPickerItem.ink.getter(v5);

      PKInk.tool.getter(v14);
      (*(v3 + 8))(v5, v2);
      Canvas.tool.setter(v14);
    }

    v10 = *&v7[direct field offset for CanvasView.canvasTiledView];
    if (v10)
    {
      v11 = v10;
      if ([(objc_class *)toolPicker.super.isa isVisible])
      {
        v12 = [(objc_class *)toolPicker.super.isa isRulerActive];
      }

      else
      {
        v12 = 0;
      }

      [v11 setRulerEnabled_];
    }

    else
    {
      __break(1u);
    }
  }
}

void @objc CanvasViewToolPickerObserver._toolPickerDidInvokeDoneAction(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  specialized CanvasViewToolPickerObserver._toolPickerDidInvokeDoneAction(_:)();
}

id specialized CanvasViewToolPickerObserver.init(canvasView:)()
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

void specialized CanvasViewToolPickerObserver._toolPickerDidInvokeDoneAction(_:)()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    AnyCanvas.selection.setter(MEMORY[0x1E69E7CD0], MEMORY[0x1E69E7CD0], 6, 0);
  }
}

uint64_t PaperDocumentPage.flags.getter()
{
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  return CRRegister.wrappedValue.getter();
}

double PaperDocumentPage.bounds.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.getter();
  return v1;
}

uint64_t PaperDocumentPage.$bounds.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);

  return CRRegister.projectedValue.getter();
}

uint64_t PaperDocumentPage.$bounds.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

double PaperDocumentPage.frame.getter()
{
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.getter();
  return v1;
}

uint64_t PaperDocumentPage.$frame.getter()
{
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  return CRRegister.projectedValue.getter();
}

uint64_t PaperDocumentPage.$frame.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for PaperDocumentPage(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t PaperDocumentPage.contentsBounds.getter(uint64_t (*a1)(uint64_t))
{
  type metadata accessor for PaperDocumentPage(0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd);
  return a1(v2);
}

uint64_t PaperDocumentPage.$contentsBounds.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for PaperDocumentPage(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*PaperDocumentPage.bounds.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t key path setter for PaperDocumentPage.$bounds : PaperDocumentPage(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

void (*PaperDocumentPage.$bounds.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$inherited.modify;
}

double key path getter for PaperDocumentPage.frame : PaperDocumentPage@<D0>(_OWORD *a1@<X8>)
{
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.getter();
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t key path setter for PaperDocumentPage.frame : PaperDocumentPage()
{
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t PaperDocumentPage.frame.setter()
{
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t (*PaperDocumentPage.frame.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t key path getter for PaperDocumentPage.$frame : PaperDocumentPage()
{
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for PaperDocumentPage.$frame : PaperDocumentPage(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for PaperDocumentPage(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t (*PaperDocumentPage.$frame.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for PaperDocumentPage(0) + 20);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

uint64_t key path setter for PaperDocumentPage.contentsBounds : PaperDocumentPage(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsOSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  outlined init with copy of Date?(a1, &v9 - v6, &_s8PaperKit14ContentsBoundsOSgMd);
  outlined init with copy of Date?(v7, v4, &_s8PaperKit14ContentsBoundsOSgMd);
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s8PaperKit14ContentsBoundsOSgMd);
}

uint64_t PaperDocumentPage.contentsBounds.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsOSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  outlined init with copy of Date?(a1, &v5 - v3, &_s8PaperKit14ContentsBoundsOSgMd);
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(a1, &_s8PaperKit14ContentsBoundsOSgMd);
}

uint64_t (*PaperDocumentPage.contentsBounds.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t key path getter for PaperDocumentPage.contentsBounds : PaperDocumentPage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for PaperDocumentPage(0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd);
  return a4(v5);
}

uint64_t key path setter for PaperDocumentPage.$contentsBounds : PaperDocumentPage(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for PaperDocumentPage(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t (*PaperDocumentPage.$contentsBounds.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for PaperDocumentPage(0) + 24);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

uint64_t PaperDocumentPage.orientation.getter()
{
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.getter();
  return v1;
}

uint64_t key path getter for PaperDocumentPage.orientation : PaperDocumentPage@<X0>(_DWORD *a1@<X8>)
{
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  result = CRRegister.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t key path setter for PaperDocumentPage.orientation : PaperDocumentPage()
{
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t PaperDocumentPage.orientation.setter()
{
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t (*PaperDocumentPage.orientation.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t PaperDocumentPage.$orientation.getter()
{
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path getter for PaperDocumentPage.$orientation : PaperDocumentPage()
{
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for PaperDocumentPage.$orientation : PaperDocumentPage(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for PaperDocumentPage(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t PaperDocumentPage.$orientation.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for PaperDocumentPage(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*PaperDocumentPage.$orientation.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for PaperDocumentPage(0) + 28);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

uint64_t key path setter for PaperDocumentPage.pdfPageID : PaperDocumentPage(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9PDFPageIDVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  outlined init with copy of Date?(a1, &v9 - v6, &_s8PaperKit9PDFPageIDVSgMd);
  outlined init with copy of Date?(v7, v4, &_s8PaperKit9PDFPageIDVSgMd);
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s8PaperKit9PDFPageIDVSgMd);
}

uint64_t PaperDocumentPage.pdfPageID.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9PDFPageIDVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  outlined init with copy of Date?(a1, &v5 - v3, &_s8PaperKit9PDFPageIDVSgMd);
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(a1, &_s8PaperKit9PDFPageIDVSgMd);
}

uint64_t (*PaperDocumentPage.pdfPageID.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeStruct.properties.modify;
}

uint64_t PaperDocumentPage.pdfPageID.getter(uint64_t (*a1)(uint64_t))
{
  type metadata accessor for PaperDocumentPage(0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd);
  return a1(v2);
}

uint64_t key path getter for PaperDocumentPage.pdfPageID : PaperDocumentPage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for PaperDocumentPage(0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd);
  return a4(v5);
}

uint64_t key path setter for PaperDocumentPage.$pdfPageID : PaperDocumentPage(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for PaperDocumentPage(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t PaperDocumentPage.$pdfPageID.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for PaperDocumentPage(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*PaperDocumentPage.$pdfPageID.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for PaperDocumentPage(0) + 32);
  CRRegister.projectedValue.getter();
  return PKStrokeStruct.$properties.modify;
}

uint64_t key path setter for PaperDocumentPage.drawing : PaperDocumentPage(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  outlined init with copy of Date?(a1, &v9 - v6, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  outlined init with copy of Date?(v7, v4, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
}

uint64_t PaperDocumentPage.drawing.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  outlined init with copy of Date?(a1, &v5 - v3, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(a1, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
}

uint64_t (*PaperDocumentPage.drawing.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t PaperDocumentPage.drawing.getter(uint64_t (*a1)(uint64_t))
{
  type metadata accessor for PaperDocumentPage(0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  return a1(v2);
}

uint64_t key path getter for PaperDocumentPage.drawing : PaperDocumentPage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for PaperDocumentPage(0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  return a4(v5);
}

uint64_t key path setter for PaperDocumentPage.$drawing : PaperDocumentPage(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for PaperDocumentPage(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t PaperDocumentPage.$drawing.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for PaperDocumentPage(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*PaperDocumentPage.$drawing.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for PaperDocumentPage(0) + 36);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

uint64_t key path getter for PaperDocumentPage.flags : PaperDocumentPage@<X0>(void *a1@<X8>)
{
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  result = CRRegister.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t key path setter for PaperDocumentPage.flags : PaperDocumentPage()
{
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t PaperDocumentPage.flags.setter()
{
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t (*PaperDocumentPage.flags.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t PaperDocumentPage.$flags.getter()
{
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path getter for PaperDocumentPage.$flags : PaperDocumentPage()
{
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  return CRRegister.projectedValue.getter();
}
void specialized ContainerCanvasElementView.recordRemoveMembersAnalytics(_:)(uint64_t a1)
{
  v35[1] = *MEMORY[0x1E69E7D40] & *v1;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v3 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v46 = v35 - v4;
  v36 = v1;
  v5 = ContainerCanvasElementView.canvas.getter();
  if (v5)
  {
    v6 = v5;
    v7 = a1 + 56;
    v8 = 1 << *(a1 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(a1 + 56);
    v11 = (v8 + 63) >> 6;
    v44 = v3 + 8;
    v45 = v3 + 16;
    v42 = v50;
    v43 = "ressionType";

    v12 = 0;
    v40 = v3;
    v41 = a1;
    v38 = a1 + 56;
    v39 = v6;
    v37 = v11;
    while (v10)
    {
      v13 = v12;
LABEL_12:
      v15 = v46;
      v14 = v47;
      (*(v3 + 16))(v46, *(a1 + 48) + *(v3 + 72) * (__clz(__rbit64(v10)) | (v13 << 6)), v47);
      type metadata accessor for Analytics();
      inited = swift_initStaticObject();
      WeakTagged_10.tag.getter();
      (*(v3 + 8))(v15, v14);
      v17 = v50[4];
      v18 = v51;
      v19 = swift_allocObject();
      *(v19 + 16) = inited;
      *(v19 + 24) = v17;
      *(v19 + 32) = v18;
      v20 = MEMORY[0x1DA6CCED0](0xD000000000000020, v43 | 0x8000000000000000);
      v21 = swift_allocObject();
      *(v21 + 16) = partial apply for implicit closure #1 in Analytics.recordRemoveCanvasElementEvent(type:);
      *(v21 + 24) = v19;
      v50[2] = partial apply for closure #1 in Analytics.sendEventLazy(key:payload:);
      v50[3] = v21;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      v50[0] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
      v50[1] = &block_descriptor_44_0;
      v22 = _Block_copy(aBlock);

      AnalyticsSendEventLazy();
      _Block_release(v22);

      v23 = specialized CanvasMembers.views(in:)(v6, a1);
      v24 = v23;
      v48 = v10;
      if (v23 >> 62)
      {
        v25 = __CocoaSet.count.getter();
        if (v25)
        {
LABEL_14:
          v26 = 0;
          while (1)
          {
            if ((v24 & 0xC000000000000001) != 0)
            {
              v27 = MEMORY[0x1DA6CE0C0](v26, v24);
            }

            else
            {
              if (v26 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_29;
              }

              v27 = *(v24 + 8 * v26 + 32);
            }

            v28 = v27;
            v29 = v26 + 1;
            if (__OFADD__(v26, 1))
            {
              break;
            }

            v30 = (*((*MEMORY[0x1E69E7D40] & *v27) + 0x318))();
            if (v30)
            {
              v31 = *(v30 + OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_analytics);
              v32 = v30;

              *(v31 + 48) = 1;
              FormTextFieldAnalytics.recordEvent()();
            }

            ++v26;
            if (v29 == v25)
            {
              goto LABEL_24;
            }
          }

          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }
      }

      else
      {
        v25 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v25)
        {
          goto LABEL_14;
        }
      }

LABEL_24:
      v10 = (v48 - 1) & v48;
      v6 = v39;
      v33 = [v39 undoManager];
      if (v33)
      {
        v34 = v33;
        *(swift_allocObject() + 16) = v24;
        type metadata accessor for ContainerCanvasElementView();
        NSUndoManager.registerUndoWithAutoGrouping<A>(withTarget:handler:)();
      }

      else
      {
      }

      v12 = v13;
      v3 = v40;
      a1 = v41;
      v7 = v38;
      v11 = v37;
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

        return;
      }

      v10 = *(v7 + 8 * v13);
      ++v12;
      if (v10)
      {
        goto LABEL_12;
      }
    }

LABEL_30:
    __break(1u);
  }
}

uint64_t specialized ContainerCanvasElementView.indices(of:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v92 = *MEMORY[0x1E69E7D40] & *v1;
  v89 = type metadata accessor for CRKeyPath();
  v81 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v82 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v73 - v7;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_9Coherence15SharedTagged_10Vy8PaperKit0D13CanvasElementVG7elementtMd);
  v88 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v10 = &v73 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v93 = &v73 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v87 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v97 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v84 = &v73 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_9Coherence15SharedTagged_10Vy8PaperKit0D13CanvasElementVG7elementtSgMd);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v85 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v73 - v20);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v74 = *(v90 - 1);
  MEMORY[0x1EEE9AC00](v90);
  v86 = &v73 - v22;
  v23 = *((v4 & v3) + 0x540);
  v91 = v1;
  v24 = *((v4 & v3) + 0x548);
  v78 = v23;
  v77 = v24;
  v83 = type metadata accessor for Capsule();
  v25 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v75 = &v73 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18EnumeratedSequenceVy9Coherence12CROrderedSetVyAC15SharedTagged_10Vy8PaperKit0G13CanvasElementVGGGMd);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v76 = &v73 - v28;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18EnumeratedSequenceV8IteratorVy9Coherence12CROrderedSetVyAE15SharedTagged_10Vy8PaperKit0H13CanvasElementVGG_GMd);
  MEMORY[0x1EEE9AC00](v79);
  v96 = &v73 - v29;
  if (*(_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9Coherence13WeakTagged_10Vy8PaperKit0f6CanvasB0VGG_AF9CRKeyPathV_Sits5NeverOTg503_s8g14Kit26Containerib86ViewC7indices33_C455AB4540897904C8BABCC4579676DBLL2ofSaySiGAA0D7MembersV_tF9Coherence9jk9V_SitAJ13eF19_10VyAA0sdE0VGXEfU_Tf1cn_n(a1) + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9Coherence9CRKeyPathVSiGMd);
    v30 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v30 = MEMORY[0x1E69E7CC8];
  }

  v98 = v30;

  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v31, 1, &v98);

  v94 = v98;
  v80 = *(a1 + 16);
  v32 = v75;
  v33 = CanvasElementView.canvasElement.getter(v75);
  MEMORY[0x1EEE9AC00](v33);
  v34 = v77;
  *(&v73 - 4) = v78;
  *(&v73 - 3) = v34;
  *(&v73 - 2) = *(v92 + 1360);
  swift_getKeyPath();
  v35 = v76;
  v36 = v83;
  Capsule.subscript.getter();

  (*(v25 + 8))(v32, v36);
  (*(v74 + 32))(v86, v35, v90);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_10<TaggedCanvasElement>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v37 = v96;
  dispatch thunk of Sequence.makeIterator()();
  v83 = *(v79 + 36);
  *(v37 + v83) = 0;
  v38 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_10<TaggedCanvasElement>>.Iterator and conformance CROrderedSet<A>.Iterator, &_s9Coherence12CROrderedSetV8IteratorVyAA15SharedTagged_10Vy8PaperKit0F13CanvasElementVG_GMd);
  v39 = 0;
  v91 = (v87 + 6);
  v92 = v38;
  v40 = (v87 + 4);
  v90 = (v88 + 7);
  v41 = (v88 + 6);
  ++v87;
  v88 = (v81 + 8);
  v79 = v81 + 16;
  v86 = v8;
  v42 = v93;
  v43 = v85;
  do
  {
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA15SharedTagged_10Vy8PaperKit0F13CanvasElementVG_GMd);
      dispatch thunk of IteratorProtocol.next()();
      if ((*v91)(v42, 1, v13) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v42, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
        v44 = 1;
      }

      else
      {
        v45 = *v40;
        v46 = v84;
        (*v40)(v84, v42, v13);
        v47 = *(v95 + 48);
        *v10 = v39;
        v45(&v10[v47], v46, v13);
        v48 = __OFADD__(v39++, 1);
        if (v48)
        {
          __break(1u);
          goto LABEL_32;
        }

        *(v96 + v83) = v39;
        v43 = v85;
        outlined init with take of Range<AttributedString.Index>(v10, v85, &_sSi6offset_9Coherence15SharedTagged_10Vy8PaperKit0D13CanvasElementVG7elementtMd);
        v44 = 0;
      }

      v49 = v95;
      (*v90)(v43, v44, 1, v95);
      outlined init with take of Range<AttributedString.Index>(v43, v21, &_sSi6offset_9Coherence15SharedTagged_10Vy8PaperKit0D13CanvasElementVG7elementtSgMd);
      if ((*v41)(v21, 1, v49) == 1)
      {
        goto LABEL_26;
      }

      v50 = *v21;
      (*v40)(v97, v21 + *(v49 + 48), v13);
      MEMORY[0x1DA6CB7A0](v13);
      if (!*(v94 + 16))
      {
        (*v88)(v8, v89);
        goto LABEL_6;
      }

      specialized __RawDictionaryStorage.find<A>(_:)(v8);
      v52 = v51;
      v53 = v8;
      v54 = *v88;
      (*v88)(v53, v89);
      if (v52)
      {
        break;
      }

LABEL_6:
      (*v87)(v97, v13);
      v8 = v86;
      v42 = v93;
    }

    MEMORY[0x1DA6CB7A0](v13);
    v55 = v94;
    LODWORD(v78) = swift_isUniquelyReferenced_nonNull_native();
    v98 = v55;
    v57 = specialized __RawDictionaryStorage.find<A>(_:)(v82);
    v58 = *(v55 + 16);
    v59 = (v56 & 1) == 0;
    v60 = v58 + v59;
    if (__OFADD__(v58, v59))
    {
      goto LABEL_33;
    }

    if (*(v55 + 24) >= v60)
    {
      if ((v78 & 1) == 0)
      {
        v78 = v57;
        LODWORD(v94) = v56;
        specialized _NativeDictionary.copy()();
        LOBYTE(v56) = v94;
        v57 = v78;
      }
    }

    else
    {
      LODWORD(v94) = v56;
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v60, v78);
      v61 = specialized __RawDictionaryStorage.find<A>(_:)(v82);
      v62 = v56 & 1;
      LOBYTE(v56) = v94;
      if ((v94 & 1) != v62)
      {
        goto LABEL_36;
      }

      v57 = v61;
    }

    v63 = v98;
    v94 = v98;
    if (v56)
    {
      *(*(v98 + 56) + 8 * v57) = v50;
      v54(v82, v89);
      (*v87)(v97, v13);
    }

    else
    {
      v78 = v57;
      *(v98 + 8 * (v57 >> 6) + 64) |= 1 << v57;
      v64 = v89;
      (*(v81 + 16))(*(v63 + 48) + *(v81 + 72) * v57, v82, v89);
      *(*(v94 + 56) + 8 * v78) = v50;
      v54(v82, v64);
      (*v87)(v97, v13);
      v65 = *(v94 + 16);
      v48 = __OFADD__(v65, 1);
      v66 = v65 + 1;
      if (v48)
      {
        goto LABEL_35;
      }

      *(v94 + 16) = v66;
    }

    v67 = v80 - 1;
    v8 = v86;
    v42 = v93;
    if (__OFSUB__(v80, 1))
    {
      goto LABEL_34;
    }

    --v80;
  }

  while (v67);
LABEL_26:
  outlined destroy of StocksKitCurrencyCache.Provider?(v96, &_ss18EnumeratedSequenceV8IteratorVy9Coherence12CROrderedSetVyAE15SharedTagged_10Vy8PaperKit0H13CanvasElementVGG_GMd);
  v68 = v94;
  v69 = *(v94 + 16);
  if (!v69)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v70 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5(*(v94 + 16), 0);
  v71 = specialized Sequence._copySequenceContents(initializing:)(&v98, v70 + 4, v69, v68);

  outlined consume of Set<UIColor>.Iterator._Variant();
  if (v71 == v69)
  {

    return v70;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void specialized ContainerCanvasElementView.sendToBack(members:)(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v7 = ContainerCanvasElementView.canvas.getter();
  if (v7)
  {
    if (*(a1 + 16))
    {
      v12 = v7;
      v13 = specialized ContainerCanvasElementView.indices(of:)(a1);

      a2(&v13);

      v9 = MEMORY[0x1EEE9AC00](v8);
      v10 = MEMORY[0x1E69E7D40];
      (*((*MEMORY[0x1E69E7D40] & *v12) + 0x6E8))(0, 1, a3, v9);

      (*((*v10 & *v3) + 0x520))(v11);
    }

    else
    {
    }
  }
}

void specialized ContainerCanvasElementView.convertToHandwriting(members:)(void *a1)
{
  v3 = (*MEMORY[0x1E69E7D40] & *v1);
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v102 - v9;
  v11 = type metadata accessor for Color(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v112 = (&v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GMd);
  v122 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v120 = &v102 - v13;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd);
  v118 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v115 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v117 = &v102 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v126 = &v102 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v116 = &v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v121 = &v102 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
  v125 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v111 = &v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v124 = &v102 - v26;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v127 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v114 = &v102 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v129 = &v102 - v29;
  v130 = ContainerCanvasElementView.canvas.getter();
  if (!v130)
  {
    return;
  }

  v109 = v1;
  v30 = ContainerCanvasElementView.pencilKitAttachmentViews()();
  if (!(v30 >> 62))
  {
    if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_35:

LABEL_36:
    v101 = v130;

    return;
  }

LABEL_34:
  v99 = v30;
  v100 = __CocoaSet.count.getter();
  v30 = v99;
  if (!v100)
  {
    goto LABEL_35;
  }

LABEL_4:
  v106 = v5;
  if ((v30 & 0xC000000000000001) != 0)
  {
    v31 = MEMORY[0x1DA6CE0C0](0);
  }

  else
  {
    if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v31 = *(v30 + 32);
  }

  v110 = v31;

  v30 = specialized CanvasMembers.views(in:)(v130, a1);
  v5 = v30;
  v105 = v4;
  v108 = v10;
  v104 = v3;
  v103 = v7;
  v107 = v23;
  if (!(v30 >> 62))
  {
    v10 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_9;
    }

LABEL_41:

    return;
  }

  v30 = __CocoaSet.count.getter();
  v10 = v30;
  if (!v30)
  {
    goto LABEL_41;
  }

LABEL_9:
  v4 = 0;
  v23 = v5 & 0xC000000000000001;
  v7 = (v5 & 0xFFFFFFFFFFFFFF8);
  while (1)
  {
    if (v23)
    {
      v30 = MEMORY[0x1DA6CE0C0](v4, v5);
    }

    else
    {
      if (v4 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v30 = *(v5 + 8 * v4 + 32);
    }

    a1 = v30;
    v3 = (v4 + 1);
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v32 = *((*MEMORY[0x1E69E7D40] & *v30) + 0x318);
    v33 = v32();
    if (v33)
    {
      break;
    }

    ++v4;
    if (v3 == v10)
    {
      goto LABEL_41;
    }
  }

  v34 = v33;

  v35 = v32();
  if (!v35)
  {

    goto LABEL_36;
  }

  v36 = v35;
  v37 = *((*MEMORY[0x1E69E7D40] & *v35) + 0x88);
  v37();
  v38 = v128;
  v39 = CRAttributedString.attributedString.getter();
  v40 = [v39 string];

  v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v42;

  if (!v41 && v43 == 0xE000000000000000)
  {

    (*(v127 + 8))(v129, v38);
LABEL_24:

    return;
  }

  v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v45 = *(v127 + 8);
  v46 = v45(v129, v38);
  if (v44)
  {
    goto LABEL_24;
  }

  v47 = v114;
  v102 = v36;
  (v37)(v46);
  v48 = v126;
  CRAttributedString.runs.getter();
  v45(v47, v38);
  v49 = v118;
  v50 = v119;
  (*(v118 + 16))(v115, v48, v119);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs, &_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd);
  v51 = v117;
  dispatch thunk of Sequence.makeIterator()();
  v52 = v51;
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs, &_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd);
  v53 = v116;
  dispatch thunk of IteratorProtocol.next()();
  v54 = v122;
  v55 = v123;
  v129 = *(v122 + 48);
  if ((v129)(v53, 1, v123) == 1)
  {
    v56 = *(v49 + 8);
    v56(v52, v50);
    v56(v48, v50);
    v57 = 1;
    v58 = v108;
    v59 = v107;
    v60 = v121;
  }

  else
  {
    v61 = *(v54 + 32);
    v61(v120, v53, v55);
    v62 = *(v49 + 8);
    v62(v52, v50);
    v62(v126, v50);
    v60 = v121;
    v61(v121, v120, v55);
    v57 = 0;
    v58 = v108;
    v59 = v107;
  }

  (*(v54 + 56))(v60, v57, 1, v55);
  if ((v129)(v60, 1, v55) == 1)
  {

    outlined destroy of StocksKitCurrencyCache.Provider?(v60, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd);
  }

  else
  {
    v63 = v111;
    CRAttributedString.Runs.Run.attributes.getter();
    (*(v54 + 8))(v60, v55);
    v64 = (*(v125 + 32))(v124, v63, v59);
    v65 = v102;
    v66 = MEMORY[0x1E69E7D40];
    v67 = (*((*MEMORY[0x1E69E7D40] & *v102) + 0xF0))(v64);
    v127 = v67;
    v69 = v68;
    v126 = v68;
    (*((*v66 & *v65) + 0xB8))(&v137);
    CGAffineTransform.decompose(initialRotation:)(&aBlock, 0.0);
    v70 = aBlock;
    v71 = *&v132;
    v72 = *&v133;
    v73 = v134;
    v74 = v112;
    CRAttributedString.Attributes<>.fontColor.getter(v112);
    v129 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
    outlined destroy of Color(v74, type metadata accessor for Color);
    v75 = vcvtd_n_f64_s64(CRAttributedString.Attributes<>.fontSize.getter(), 1uLL);
    v76 = [objc_allocWithZone(MEMORY[0x1E6997BD8]) initWithXHeight:7 ascenderHeight:v75 descenderHeight:v75 * 1.8 activeLines:v75 * 1.5];
    Date.init()();
    v128 = MEMORY[0x1DA6CCED0](v67, v69);
    v77 = v76;
    [v76 xHeight];
    v79 = v78;
    v123 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v80 = v106;
    v81 = v103;
    v82 = v58;
    v83 = v105;
    (*(v106 + 16))(v103, v82, v105);
    v84 = (*(v80 + 80) + 104) & ~*(v80 + 80);
    v85 = (v113 + v84 + 7) & 0xFFFFFFFFFFFFFFF8;
    v86 = (v85 + 15) & 0xFFFFFFFFFFFFFFF8;
    v87 = swift_allocObject();
    v88 = v104;
    *(v87 + 16) = *(v104 + 84);
    *(v87 + 32) = *(v88 + 170);
    *(v87 + 40) = v77;
    *(v87 + 48) = v70;
    *(v87 + 56) = v71;
    *(v87 + 64) = v72;
    *(v87 + 72) = v73;
    v89 = v126;
    *(v87 + 80) = v127;
    *(v87 + 88) = v89;
    *(v87 + 96) = v130;
    (*(v80 + 32))(v87 + v84, v81, v83);
    v90 = v102;
    *(v87 + v85) = v102;
    *(v87 + v86) = v123;
    *(v87 + ((v86 + 15) & 0xFFFFFFFFFFFFFFF8)) = a1;
    v135 = partial apply for closure #3 in ContainerCanvasElementView.convertToHandwriting(members:);
    v136 = v87;
    aBlock = MEMORY[0x1E69E9820];
    v132 = 1107296256;
    *&v133 = COERCE_DOUBLE(thunk for @escaping @callee_guaranteed (@guaranteed [NSValue], @guaranteed [CHReflowableTextToken], @guaranteed [PKDrawing]) -> ());
    v134 = COERCE_DOUBLE(&block_descriptor_34);
    v91 = _Block_copy(&aBlock);
    v92 = v129;
    v93 = v77;
    v94 = v130;
    v95 = v90;
    v96 = a1;

    v97 = v110;
    v98 = v128;
    [v110 convertTextToHandwriting:v128 bounds:0 suggestedHeight:v92 suggestedDrawing:v91 inkColor:v70 completion:{v71, v72, v73, v79}];

    _Block_release(v91);
    (*(v106 + 8))(v108, v105);
    (*(v125 + 8))(v124, v107);
  }
}

uint64_t partial apply for closure #3 in ContainerCanvasElementView.convertToHandwriting(members:)(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v12 = *(v3 + 16);
  v7 = *(v3 + 32);
  v8 = *(type metadata accessor for Date() - 8);
  v9 = (*(v8 + 80) + 104) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  return closure #3 in ContainerCanvasElementView.convertToHandwriting(members:)(a1, a2, a3, *(v3 + 40), *(v3 + 80), *(v3 + 88), *(v3 + 96), v3 + v9, *(v3 + 48), *(v3 + 56), *(v3 + 64), *(v3 + 72), *(v3 + v10), *(v3 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), v12, *(&v12 + 1), v7);
}

uint64_t block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for SignatureItem();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = __CocoaSet.count.getter();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = __CocoaSet.count.getter();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, a3, specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, a3, specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

uint64_t outlined destroy of Color(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of MagicPaperUsageHandwritingSynthesisEvent(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of TextBox(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 8 * result;
  type metadata accessor for ReflowElement();
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 8 * a3;
  v13 = (v7 + 32 + 8 * a2);
  if (result != v13 || result >= v13 + 8 * v12)
  {
    result = memmove(result, v13, 8 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 168 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 168 * a3;
  v13 = (v7 + 32 + 168 * a2);
  if (result != v13 || result >= v13 + 168 * v12)
  {
    result = memmove(result, v13, 168 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit15PageOverlayView_pMd);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

void specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, int64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v4 = a4;
  v8 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for ReflowElement();
  v13 = swift_arrayDestroy();
  v14 = __OFSUB__(v8, v11);
  v11 = v8 - v11;
  if (v14)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    v15 = v5[2];
    v16 = v15 - v7;
    if (!__OFSUB__(v15, v7))
    {
      goto LABEL_6;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_25:
  v20 = __CocoaSet.count.getter();
  v16 = v20 - v7;
  if (__OFSUB__(v20, v7))
  {
    goto LABEL_27;
  }

LABEL_6:
  v17 = (v6 + 8 * v8);
  v18 = &v9[v7];
  if (v17 != v18 || v17 >= &v18[8 * v16])
  {
    memmove(v17, v18, 8 * v16);
  }

  if (v10)
  {
    v13 = __CocoaSet.count.getter();
  }

  else
  {
    v13 = v5[2];
  }

  if (__OFADD__(v13, v11))
  {
    goto LABEL_28;
  }

  v5[2] = v13 + v11;
LABEL_17:
  if (v8 < 1)
  {
    return;
  }

  MEMORY[0x1EEE9AC00](v13);
  if (v4 < 0 || (v4 & 0x4000000000000000) != 0)
  {
LABEL_29:
    _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFADq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxsAE_pqd__Isgyrzr_AByxGqd__sAE_psAE_pRsd_0_r_0_lIetMggrzo_Tpq58PaperKit13ReflowElementC_ytTg5073_sSa32withContiguousStorageIfAvailableyqd__Sgqd__SRyxGKXEKlFqd__ACKXEfU_8i5Kit13kL7C_ytTG5ADq_sAE_pRi_zRi0_zRi__Ri0__r0_lyAIytIsgyrzo_Tf1ncn_n(v4, partial apply for specialized closure #1 in _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
    return;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) == v8)
  {
    swift_arrayInitWithCopy();
  }

  else
  {
    __break(1u);
  }
}

void specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      if (*((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= a2)
      {
        goto LABEL_4;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  if (__CocoaSet.count.getter() < v5)
  {
    goto LABEL_16;
  }

LABEL_4:
  v9 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!(v3 >> 62))
  {
    v10 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = __OFSUB__(v10, v9);
    v12 = v10 - v9;
    if (!v11)
    {
      goto LABEL_7;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return;
  }

LABEL_18:
  v10 = __CocoaSet.count.getter();
  v11 = __OFSUB__(v10, v9);
  v12 = v10 - v9;
  if (v11)
  {
    goto LABEL_20;
  }

LABEL_7:
  if (v8)
  {
    v13 = __CocoaSet.count.getter();
  }

  else
  {
    v13 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (v11)
  {
    goto LABEL_21;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v14);

  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v6, v5, v10, v3);
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2)
{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, type metadata accessor for ReflowElement);
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, type metadata accessor for CanvasElementResizeHandle);
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = __CocoaSet.count.getter();
  if (result < v5)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v5, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = v6 - v5;
  if (__OFSUB__(0, v5 - v6))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v8)
  {
    v11 = __CocoaSet.count.getter();
  }

  else
  {
    v11 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = __OFADD__(v11, v10);
  result = v11 + v10;
  if (!v12)
  {
    specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result);
    return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v6, v5, 0, v3);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for ReflowElement();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = result - v7;
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = __CocoaSet.count.getter();
    v15 = result - v7;
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = __CocoaSet.count.getter();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = result + v11;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;

    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    v15 = a4;
    if (!v9)
    {
      result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = __CocoaSet.count.getter();
  if (result < v6)
  {
    goto LABEL_15;
  }

LABEL_4:
  v11 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = 1 - v11;
  if (__OFSUB__(1, v11))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v13 = __CocoaSet.count.getter();
  }

  else
  {
    v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = v13 + v12;
  if (v14)
  {
    goto LABEL_18;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result);

  return v15(v7, v6, 1, v4);
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  a4(0);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = __CocoaSet.count.getter();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = __CocoaSet.count.getter();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

unint64_t specialized Array.replaceSubrange<A>(_:with:)(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t closure #1 in Sequence<>.contains(_:)specialized partial apply()
{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)() & 1;
}

{
  return _sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_Say8PaperKit09AnyCanvasA4ViewCG_TG5TA_0() & 1;
}

uint64_t protocol witness for PaperKitLiveStreamMessenger.send(thumbnail:) in conformance ExtensionViewController.LiveStreamMessenger(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  type metadata accessor for MainActor();

  outlined copy of Data._Representation(a1, a2);
  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v3;
  v11[5] = a1;
  v11[6] = a2;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in ExtensionViewController.LiveStreamMessenger.send(_:), v11);
}

uint64_t PaperKitLiveStreamMessenger.send(thumbnail:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return (*(a4 + 24))();
}

{
  return PaperKitLiveStreamMessenger.send(thumbnail:)(a1, a2, a3, a4);
}

void PaperKitLiveStreamMessengerLink.send(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a3;
  v21 = a4;
  v22 = a2;
  v5 = type metadata accessor for CRAsset();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - v10;
  v12 = dispatch_semaphore_create(0);
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  (*(v6 + 16))(v8, a1, v5);
  v14 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v15 = (v7 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  v17 = v21;
  *(v16 + 4) = v20;
  *(v16 + 5) = v17;
  (*(v6 + 32))(&v16[v14], v8, v5);
  *&v16[v15] = v22;
  *&v16[(v15 + 15) & 0xFFFFFFFFFFFFFFF8] = v12;
  swift_unknownObjectRetain();
  v18 = v12;
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v11, &async function pointer to partial apply for closure #1 in PaperKitLiveStreamMessengerLink.send(_:), v16);

  OS_dispatch_semaphore.wait()();
}

uint64_t closure #1 in PaperKitLiveStreamMessengerLink.send(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v10 = swift_task_alloc();
  v8[9] = v10;
  *v10 = v8;
  v10[1] = closure #1 in PaperKitLiveStreamMessengerLink.send(_:);

  return specialized static ImageThumbnailManager.generateThumbnailMessage(from:)(a4);
}

uint64_t closure #1 in PaperKitLiveStreamMessengerLink.send(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = a2;
  v3[10] = a2;

  return MEMORY[0x1EEE6DFA0](closure #1 in PaperKitLiveStreamMessengerLink.send(_:), 0, 0);
}

uint64_t closure #1 in PaperKitLiveStreamMessengerLink.send(_:)()
{
  v1 = v0[10];
  if (v1 >> 60 != 15)
  {
    v2 = v0[3];
    (*(v0[8] + 32))(v2, v0[10], v0[7]);
    outlined consume of Data?(v2, v1);
  }

  OS_dispatch_semaphore.signal()();
  v3 = v0[1];

  return v3();
}

uint64_t PaperKitLiveStreamMessenger.newMultipeerConnection<A>(_:id:model:catchup:name:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v70 = a6;
  v71 = a7;
  v74 = a5;
  v61 = a4;
  v59 = a3;
  v53 = a2;
  v60 = a1;
  v72 = a9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v66 = &v52 - v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v67 = *(AssociatedTypeWitness - 8);
  v68 = AssociatedTypeWitness;
  v69 = *(v67 + 64);
  v14 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v65 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v73 = &v52 - v16;
  v55 = type metadata accessor for CRMulticastSyncManagerCatchupBehavior();
  v54 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v52 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a8;
  v57 = a10;
  v18 = type metadata accessor for Capsule();
  v19 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v52 - v20;
  v22 = type metadata accessor for CRKeyPath();
  v62 = v22;
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9Coherence9CRKeyPathVGMd);
  v26 = *(v23 + 80);
  v63 = v23;
  v27 = (v26 + 32) & ~v26;
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1D405C990;
  (*(v23 + 16))(v28 + v27, v53, v22);

  CRKeyPath.init(_:)();
  v75[0] = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9Coherence9CRKeyPathVGMd);
  lazy protocol witness table accessor for type [CRKeyPath] and conformance [A]();
  v58 = v25;
  CRKeyPath.init<A>(_:)();
  type metadata accessor for CRMulticastSyncManager();
  v29 = *(v18 - 8);
  (*(v29 + 16))(v21, v59, v18);
  (*(v29 + 56))(v21, 0, 1, v18);
  v30 = v60;
  CRKeyPath.rawValue.getter();
  (*(v54 + 16))(v52, v61, v55);
  v31 = CRMulticastSyncManager.__allocating_init(_:model:appFormat:identifier:catchup:)();
  v33 = v71;
  v32 = v72;
  v75[3] = type metadata accessor for PaperKitLiveStreamMessengerLink();
  v75[4] = swift_getWitnessTable();
  v75[0] = v64;
  swift_unknownObjectRetain();
  v61 = v31;
  CRMulticastSyncManager.setLink(_:)();
  __swift_destroy_boxed_opaque_existential_0(v75);
  v60 = ObjectIdentifier.debugDescription.getter();
  v59 = v34;
  v35 = v73;
  (*(v32 + 40))(v33, v32);
  v36 = type metadata accessor for TaskPriority();
  v37 = v66;
  (*(*(v36 - 8) + 56))(v66, 1, 1, v36);
  v38 = swift_allocObject();
  swift_weakInit();
  v40 = v67;
  v39 = v68;
  v41 = v65;
  (*(v67 + 16))(v65, v35, v68);
  type metadata accessor for MainActor();
  v42 = v70;

  v43 = static MainActor.shared.getter();
  v44 = (*(v40 + 80) + 96) & ~*(v40 + 80);
  v45 = (v69 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  v47 = MEMORY[0x1E69E85E0];
  *(v46 + 2) = v43;
  *(v46 + 3) = v47;
  v48 = v56;
  *(v46 + 4) = v71;
  *(v46 + 5) = v48;
  v49 = v57;
  *(v46 + 6) = v72;
  *(v46 + 7) = v49;
  *(v46 + 8) = v74;
  *(v46 + 9) = v42;
  v50 = v59;
  *(v46 + 10) = v60;
  *(v46 + 11) = v50;
  (*(v40 + 32))(&v46[v44], v41, v39);
  *&v46[v45] = v38;

  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v37, &async function pointer to partial apply for closure #1 in PaperKitLiveStreamMessenger.newMultipeerConnection<A>(_:id:model:catchup:name:), v46);

  (*(v40 + 8))(v73, v39);
  (*(v63 + 8))(v58, v62);
  return v61;
}

uint64_t closure #1 in PaperKitLiveStreamMessenger.newMultipeerConnection<A>(_:id:model:catchup:name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a8;
  v8[13] = v16;
  v8[10] = a6;
  v8[11] = a7;
  v8[8] = a4;
  v8[9] = a5;
  swift_getAssociatedTypeWitness();
  v8[14] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[15] = AssociatedTypeWitness;
  v8[16] = *(AssociatedTypeWitness - 8);
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();
  v10 = swift_checkMetadataState();
  v8[19] = v10;
  v8[20] = *(v10 - 8);
  v8[21] = swift_task_alloc();
  v11 = swift_getAssociatedTypeWitness();
  v8[22] = v11;
  v8[23] = *(v11 - 8);
  v8[24] = swift_task_alloc();
  v8[25] = type metadata accessor for MainActor();
  v8[26] = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[27] = v13;
  v8[28] = v12;

  return MEMORY[0x1EEE6DFA0](closure #1 in PaperKitLiveStreamMessenger.newMultipeerConnection<A>(_:id:model:catchup:name:), v13, v12);
}

uint64_t closure #1 in PaperKitLiveStreamMessenger.newMultipeerConnection<A>(_:id:model:catchup:name:)()
{
  v18 = v0;
  if (one-time initialization token for multipeerLogger != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[29] = __swift_project_value_buffer(v1, multipeerLogger);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[10];
    v4 = v0[11];
    v7 = v0[8];
    v6 = v0[9];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315394;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v17);
    *(v8 + 12) = 2080;
    *(v8 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v17);
    _os_log_impl(&dword_1D38C4000, v2, v3, "Started forwarding %s message stream for %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6D0660](v9, -1, -1);
    MEMORY[0x1DA6D0660](v8, -1, -1);
  }

  (*(v0[20] + 16))(v0[21], v0[12], v0[19]);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  swift_beginAccess();
  v10 = static MainActor.shared.getter();
  v0[30] = v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[31] = AssociatedConformanceWitness;
  v12 = swift_task_alloc();
  v0[32] = v12;
  *v12 = v0;
  v12[1] = closure #1 in PaperKitLiveStreamMessenger.newMultipeerConnection<A>(_:id:model:catchup:name:);
  v13 = v0[22];
  v14 = v0[18];
  v15 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 5, v10, v15, v14, v13, AssociatedConformanceWitness);
}

{
  v2 = *v1;

  v3 = *(v2 + 224);
  v4 = *(v2 + 216);
  if (v0)
  {
    v5 = closure #1 in PaperKitLiveStreamMessenger.newMultipeerConnection<A>(_:id:model:catchup:name:);
  }

  else
  {
    v5 = closure #1 in PaperKitLiveStreamMessenger.newMultipeerConnection<A>(_:id:model:catchup:name:);
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

{
  v35 = v0;
  v2 = v0[5];
  v1 = v0[6];
  v0[33] = v2;
  v0[34] = v1;
  if (v1 >> 60 == 15)
  {
    (*(v0[23] + 8))(v0[24], v0[22]);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v6 = v0[10];
      v5 = v0[11];
      v8 = v0[8];
      v7 = v0[9];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v34 = v10;
      *v9 = 136315394;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v34);
      *(v9 + 12) = 2080;
      *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v34);
      _os_log_impl(&dword_1D38C4000, v3, v4, "Ended forwarding %s message stream for %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA6D0660](v10, -1, -1);
      MEMORY[0x1DA6D0660](v9, -1, -1);
    }

    v11 = v0[1];

    return v11();
  }

  if (swift_weakLoadStrong())
  {
    if (CRMulticastSyncManager.isValidMessage(_:)())
    {

      outlined copy of Data?(v2, v1);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v13, v14))
      {
        outlined consume of Data?(v2, v1);
        goto LABEL_28;
      }

      v15 = v0[8];
      v16 = v0[9];
      v17 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v0[7] = v33;
      *v17 = 136315394;
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v0 + 7);
      *(v17 + 4) = v18;
      *(v17 + 12) = 2048;
      v24 = v1 >> 62;
      if ((v1 >> 62) > 1)
      {
        if (v24 != 2)
        {
          v25 = 0;
          goto LABEL_27;
        }

        v28 = *(v2 + 16);
        v27 = *(v2 + 24);
        v29 = __OFSUB__(v27, v28);
        v25 = v27 - v28;
        if (!v29)
        {
          goto LABEL_27;
        }

        __break(1u);
      }

      else if (!v24)
      {
        v25 = BYTE6(v1);
LABEL_27:
        *(v17 + 14) = v25;
        outlined consume of Data?(v2, v1);
        _os_log_impl(&dword_1D38C4000, v13, v14, "Receive %s data %ld", v17, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v33);
        MEMORY[0x1DA6D0660](v33, -1, -1);
        MEMORY[0x1DA6D0660](v17, -1, -1);
LABEL_28:

        CRMulticastSyncManager.receive(_:)();

        outlined consume of Data?(v0[33], v0[34]);
        v30 = static MainActor.shared.getter();
        v0[30] = v30;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v0[31] = AssociatedConformanceWitness;
        v32 = swift_task_alloc();
        v0[32] = v32;
        *v32 = v0;
        v32[1] = closure #1 in PaperKitLiveStreamMessenger.newMultipeerConnection<A>(_:id:model:catchup:name:);
        v22 = v0[22];
        v21 = v0[18];
        v20 = MEMORY[0x1E69E85E0];
        v18 = (v0 + 5);
        v19 = v30;
        v23 = AssociatedConformanceWitness;

        return MEMORY[0x1EEE6D8D0](v18, v19, v20, v21, v22, v23);
      }

      LODWORD(v25) = HIDWORD(v2) - v2;
      if (__OFSUB__(HIDWORD(v2), v2))
      {
        __break(1u);
        return MEMORY[0x1EEE6D8D0](v18, v19, v20, v21, v22, v23);
      }

      v25 = v25;
      goto LABEL_27;
    }
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v26 = swift_task_alloc();
  v0[35] = v26;
  *v26 = v0;
  v26[1] = closure #1 in PaperKitLiveStreamMessenger.newMultipeerConnection<A>(_:id:model:catchup:name:);

  return ImageThumbnailManager.receiveThumbnailMessage(_:)(v2, v1);
}

{
  v1 = *v0;

  v2 = *(v1 + 224);
  v3 = *(v1 + 216);

  return MEMORY[0x1EEE6DFA0](closure #1 in PaperKitLiveStreamMessenger.newMultipeerConnection<A>(_:id:model:catchup:name:), v3, v2);
}

{
  outlined consume of Data?(v0[33], v0[34]);
  v1 = static MainActor.shared.getter();
  v0[30] = v1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[31] = AssociatedConformanceWitness;
  v3 = swift_task_alloc();
  v0[32] = v3;
  *v3 = v0;
  v3[1] = closure #1 in PaperKitLiveStreamMessenger.newMultipeerConnection<A>(_:id:model:catchup:name:);
  v4 = v0[22];
  v5 = v0[18];
  v6 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 5, v1, v6, v5, v4, AssociatedConformanceWitness);
}

{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[15];
  v4 = v0[16];

  v5 = *(v4 + 32);
  v5(v2, v1, v3);
  swift_getAssociatedConformanceWitness();
  v6 = _getErrorEmbeddedNSError<A>(_:)();
  v7 = v0[17];
  if (v6)
  {
    (*(v0[16] + 8))(v0[17], v0[15]);
  }

  else
  {
    v8 = v0[15];
    swift_allocError();
    v5(v9, v7, v8);
  }

  (*(v0[23] + 8))(v0[24], v0[22]);

  v10 = v0[1];

  return v10();
}

uint64_t PaperKitLiveStreamMessenger.listenTo<A, B>(multicast:liveEditable:name:merge:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v46 = a7;
  v47 = a8;
  v49 = a5;
  v50 = a6;
  v48 = a3;
  v45 = a10;
  v43 = a4;
  v44 = a9;
  v10 = *a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v39 - v12;
  v41 = &v39 - v12;
  v14 = (v10 + *MEMORY[0x1E6995348]);
  v15 = *v14;
  v42 = v14[1];
  type metadata accessor for Capsule();
  v16 = type metadata accessor for AsyncStream();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v39 - v21;
  v23 = ObjectIdentifier.debugDescription.getter();
  v39 = v24;
  v40 = v23;
  CRMulticastSyncManager.updates.getter();
  v25 = type metadata accessor for TaskPriority();
  (*(*(v25 - 8) + 56))(v13, 1, 1, v25);
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v17 + 16))(v20, v22, v16);
  v27 = (*(v17 + 80) + 112) & ~*(v17 + 80);
  v28 = (v18 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  *(v29 + 2) = 0;
  *(v29 + 3) = 0;
  v30 = v47;
  *(v29 + 4) = v46;
  *(v29 + 5) = v30;
  v31 = v44;
  v32 = v45;
  *(v29 + 6) = v15;
  *(v29 + 7) = v31;
  v33 = v42;
  v34 = v43;
  *(v29 + 8) = v32;
  *(v29 + 9) = v33;
  *(v29 + 10) = v48;
  *(v29 + 11) = v34;
  v35 = v39;
  *(v29 + 12) = v40;
  *(v29 + 13) = v35;
  (*(v17 + 32))(&v29[v27], v20, v16);
  *&v29[v28] = v26;
  v36 = &v29[(v28 + 15) & 0xFFFFFFFFFFFFFFF8];
  v37 = v50;
  *v36 = v49;
  *(v36 + 1) = v37;

  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v41, &async function pointer to partial apply for closure #1 in PaperKitLiveStreamMessenger.listenTo<A, B>(multicast:liveEditable:name:merge:), v29);

  return (*(v17 + 8))(v22, v16);
}

uint64_t closure #1 in PaperKitLiveStreamMessenger.listenTo<A, B>(multicast:liveEditable:name:merge:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 104) = v15;
  *(v8 + 112) = v16;
  *(v8 + 96) = v14;
  *(v8 + 80) = v13;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 40) = a4;
  v9 = type metadata accessor for Capsule();
  *(v8 + 120) = v9;
  *(v8 + 128) = *(v9 - 8);
  *(v8 + 136) = swift_task_alloc();
  type metadata accessor for Optional();
  *(v8 + 144) = swift_task_alloc();
  v10 = type metadata accessor for AsyncStream.Iterator();
  *(v8 + 152) = v10;
  *(v8 + 160) = *(v10 - 8);
  *(v8 + 168) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in PaperKitLiveStreamMessenger.listenTo<A, B>(multicast:liveEditable:name:merge:), 0, 0);
}

uint64_t closure #1 in PaperKitLiveStreamMessenger.listenTo<A, B>(multicast:liveEditable:name:merge:)()
{
  v15 = v0;
  if (one-time initialization token for multipeerLogger != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[22] = __swift_project_value_buffer(v1, multipeerLogger);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[7];
    v4 = v0[8];
    v7 = v0[5];
    v6 = v0[6];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315394;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v14);
    *(v8 + 12) = 2080;
    *(v8 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v14);
    _os_log_impl(&dword_1D38C4000, v2, v3, "Started merging %s multicast stream for %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6D0660](v9, -1, -1);
    MEMORY[0x1DA6D0660](v8, -1, -1);
  }

  type metadata accessor for AsyncStream();
  AsyncStream.makeAsyncIterator()();
  swift_beginAccess();
  v10 = swift_task_alloc();
  v0[23] = v10;
  *v10 = v0;
  v10[1] = closure #1 in PaperKitLiveStreamMessenger.listenTo<A, B>(multicast:liveEditable:name:merge:);
  v11 = v0[18];
  v12 = v0[19];

  return MEMORY[0x1EEE6D9C8](v11, 0, 0, v12);
}

{

  return MEMORY[0x1EEE6DFA0](closure #1 in PaperKitLiveStreamMessenger.listenTo<A, B>(multicast:liveEditable:name:merge:), 0, 0);
}

{
  v19 = v0;
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    (*(v3 + 32))(v0[17], v1, v2);
    Strong = swift_unknownObjectWeakLoadStrong();
    v0[24] = Strong;
    if (Strong)
    {
      v5 = swift_task_alloc();
      v0[25] = v5;
      *v5 = v0;
      v5[1] = closure #1 in PaperKitLiveStreamMessenger.listenTo<A, B>(multicast:liveEditable:name:merge:);
      v7 = v0[13];
      v6 = v0[14];

      return LiveEditable.endedLiveEditing()(v7, v6);
    }

    (*(v0[16] + 8))(v0[17], v0[15]);
  }

  (*(v0[20] + 8))(v0[21], v0[19]);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v12 = v0[7];
    v11 = v0[8];
    v14 = v0[5];
    v13 = v0[6];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v18 = v16;
    *v15 = 136315394;
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v13, &v18);
    *(v15 + 12) = 2080;
    *(v15 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, &v18);
    _os_log_impl(&dword_1D38C4000, v9, v10, "Ended merging %s multicast stream for %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6D0660](v16, -1, -1);
    MEMORY[0x1DA6D0660](v15, -1, -1);
  }

  v17 = v0[1];

  return v17();
}

{

  return MEMORY[0x1EEE6DFA0](closure #1 in PaperKitLiveStreamMessenger.listenTo<A, B>(multicast:liveEditable:name:merge:), 0, 0);
}

{
  type metadata accessor for MainActor();
  *(v0 + 208) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in PaperKitLiveStreamMessenger.listenTo<A, B>(multicast:liveEditable:name:merge:), v2, v1);
}

{
  v1 = *(v0 + 136);
  v2 = *(v0 + 88);

  v2(v1);

  return MEMORY[0x1EEE6DFA0](closure #1 in PaperKitLiveStreamMessenger.listenTo<A, B>(multicast:liveEditable:name:merge:), 0, 0);
}

{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  swift_unknownObjectRelease();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[23] = v4;
  *v4 = v0;
  v4[1] = closure #1 in PaperKitLiveStreamMessenger.listenTo<A, B>(multicast:liveEditable:name:merge:);
  v5 = v0[18];
  v6 = v0[19];

  return MEMORY[0x1EEE6D9C8](v5, 0, 0, v6);
}

uint64_t partial apply for closure #1 in ExtensionViewController.LiveStreamMessenger.send(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return closure #1 in ExtensionViewController.LiveStreamMessenger.send(_:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in PaperKitLiveStreamMessenger.listenTo<A, B>(multicast:liveEditable:name:merge:)(uint64_t a1)
{
  v3 = v2;
  type metadata accessor for Capsule();
  v4 = *(type metadata accessor for AsyncStream() - 8);
  v5 = (*(v4 + 80) + 112) & ~*(v4 + 80);
  v12 = v1[3];
  v13 = v1[2];
  v10 = v1[11];
  v11 = v1[10];
  v7 = v1[12];
  v6 = v1[13];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in PaperKitLiveStreamMessenger.listenTo<A, B>(multicast:liveEditable:name:merge:)(a1, v13, v12, v11, v10, v7, v6, v1 + v5);
}

unint64_t lazy protocol witness table accessor for type [CRKeyPath] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CRKeyPath] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CRKeyPath] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay9Coherence9CRKeyPathVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CRKeyPath] and conformance [A]);
  }

  return result;
}

uint64_t partial apply for closure #1 in PaperKitLiveStreamMessenger.newMultipeerConnection<A>(_:id:model:catchup:name:)(uint64_t a1)
{
  v3 = v2;
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = (*(v4 + 80) + 96) & ~*(v4 + 80);
  v6 = v1[3];
  v7 = v1[8];
  v8 = v1[9];
  v9 = v1[10];
  v12 = v1[11];
  v13 = v1[2];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return closure #1 in PaperKitLiveStreamMessenger.newMultipeerConnection<A>(_:id:model:catchup:name:)(a1, v13, v6, v7, v8, v9, v12, v1 + v5);
}

uint64_t type metadata instantiation function for PaperKitLiveStreamMessengerLink()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t partial apply for closure #1 in PaperKitLiveStreamMessengerLink.send(_:)(uint64_t a1)
{
  v3 = v2;
  v6 = v1[4];
  v5 = v1[5];
  v7 = *(type metadata accessor for CRAsset() - 8);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = v1[2];
  v11 = v1[3];
  v12 = *(v1 + v9);
  v13 = *(v1 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in PaperKitLiveStreamMessengerLink.send(_:)(a1, v10, v11, v1 + v8, v12, v13, v6, v5);
}

void __swiftcall UIView.transformForConvertingFromView(_:)(CGAffineTransform *__return_ptr retstr, UIView *a2)
{
  v4 = xmmword_1D4059310;
  v5 = xmmword_1D4059320;
  v6 = 0uLL;
  if (v2 != a2)
  {
    [(UIView *)v2 convertRect:a2 fromCoordinateSpace:0.0, 0.0, 1.0, 1.0];
    x = v14.origin.x;
    y = v14.origin.y;
    width = v14.size.width;
    height = v14.size.height;
    v15.origin.x = 0.0;
    v15.origin.y = 0.0;
    v15.size.width = 1.0;
    v15.size.height = 1.0;
    v11 = CGRectEqualToRect(v14, v15);
    v6 = 0uLL;
    v5 = xmmword_1D4059320;
    v4 = xmmword_1D4059310;
    if (!v11)
    {
      CGAffineTransformMakeTranslation(&v13, x, y);
      CGAffineTransformScale(&v12, &v13, width + 0.0, height + 0.0);
      v5 = *&v12.a;
      v4 = *&v12.c;
      v6 = *&v12.tx;
    }
  }

  *&retstr->a = v5;
  *&retstr->c = v4;
  *&retstr->tx = v6;
}

id CanvasElementPDFAnnotationAppearanceStreamView.init(annotation:)(void *a1)
{
  swift_unknownObjectWeakInit();
  [a1 bounds];
  v14 = CGRectIntegral(v13);
  x = v14.origin.x;
  y = v14.origin.y;
  width = v14.size.width;
  height = v14.size.height;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for CanvasElementPDFAnnotationAppearanceStreamView();
  v7 = objc_msgSendSuper2(&v12, sel_initWithFrame_, x, y, width, height);
  swift_unknownObjectWeakAssign();
  v8 = v7;
  v9 = [v8 layer];
  [v9 setGeometryFlipped_];

  v10 = [objc_opt_self() clearColor];
  [v8 setBackgroundColor_];

  return v8;
}

Swift::Void __swiftcall CanvasElementPDFAnnotationAppearanceStreamView.draw(_:)(__C::CGRect a1)
{
  height = a1.size.height;
  width = a1.size.width;
  y = a1.origin.y;
  x = a1.origin.x;
  v20.receiver = v1;
  v20.super_class = type metadata accessor for CanvasElementPDFAnnotationAppearanceStreamView();
  objc_msgSendSuper2(&v20, sel_drawRect_, x, y, width, height);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = UIGraphicsGetCurrentContext();
    if (v8)
    {
      v9 = v8;
      v10 = v7;
      [v10 bounds];
      v12 = -v11;
      [v10 bounds];
      CGContextTranslateCTM(v9, v12, -v13);
      v14 = [v10 page];

      if (v14)
      {
        [v14 transformForBox_];
        v16 = *&transform.c;
        v17 = *&transform.a;
        v15 = *&transform.tx;

        *&transform.a = v17;
        *&transform.c = v16;
        *&transform.tx = v15;
        CGAffineTransformInvert(&v18, &transform);
        transform = v18;
        CGContextConcatCTM(v9, &transform);
      }

      [v10 drawWithBox:0 inContext:{v9, v15, v16, v17}];
    }

    else
    {
      v9 = v7;
    }
  }
}

id CanvasElementPDFAnnotationAppearanceStreamView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CanvasElementPDFAnnotationAppearanceStreamView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void @objc CanvasViewTiledViewDelegate.canvasViewDidBeginDrawing(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  specialized CanvasViewTiledViewDelegate.canvasViewDidBeginDrawing(_:)();
}

uint64_t @objc CanvasViewTiledViewDelegate.canvasView(_:beganStroke:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = type metadata accessor for PKStroke();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a3;
  v12 = a4;
  v13 = a1;
  static PKStroke._unconditionallyBridgeFromObjectiveC(_:)();

  return (*(v8 + 8))(v10, v7);
}

uint64_t @objc CanvasViewTiledViewDelegate.canvasView(_:shouldBeginDrawingWith:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = specialized CanvasViewTiledViewDelegate.canvasView(_:shouldBeginDrawingWith:)();

  return v9 & 1;
}

unint64_t CanvasViewTiledViewDelegate.tiledViewAttachmentViews()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = Strong;
  v2 = specialized Canvas.paperView.getter();

  v3 = ContainerCanvasElementView.pencilKitAttachmentViews()();
  return v3;
}

Class @objc CanvasViewTiledViewDelegate.tiledViewAttachmentViews()(void *a1)
{
  v1 = a1;
  CanvasViewTiledViewDelegate.tiledViewAttachmentViews()();

  type metadata accessor for PKAttachmentView();
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

uint64_t @objc CanvasViewTiledViewDelegate._canvasViewSnapshottingDisabled(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  LOBYTE(a1) = specialized CanvasViewTiledViewDelegate._canvasViewSnapshottingDisabled(_:)();

  return a1 & 1;
}

id CanvasViewTiledViewDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CanvasViewTiledViewDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id specialized CanvasViewTiledViewDelegate.init(canvas:)()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CanvasViewTiledViewDelegate();
  return objc_msgSendSuper2(&v2, sel_init);
}

void specialized CanvasViewTiledViewDelegate.canvasViewDidBeginDrawing(_:)()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_getKeyPath();
    lazy protocol witness table accessor for type AnyCanvas and conformance AnyCanvas();
    v2 = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v3 = &v2[OBJC_IVAR____TtC8PaperKit9AnyCanvas__delegate];
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    v5 = *(v3 + 1);

    if (v4)
    {
      ObjectType = swift_getObjectType();
      (*(v5 + 80))(v2, ObjectType, v5);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t specialized CanvasViewTiledViewDelegate.canvasView(_:shouldBeginDrawingWith:)()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2 && (v3 = v2, swift_getKeyPath(), lazy protocol witness table accessor for type AnyCanvas and conformance AnyCanvas(), ObservationRegistrar.access<A, B>(_:keyPath:)(), , v4 = &v3[OBJC_IVAR____TtC8PaperKit9AnyCanvas__delegate], swift_beginAccess(), v5 = swift_unknownObjectWeakLoadStrong(), v6 = *(v4 + 1), v3, v5))
    {
      ObjectType = swift_getObjectType();
      v8 = (*(v6 + 72))(v1, ObjectType, v6);
      swift_unknownObjectRelease();

      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
    }
  }

  v10 = swift_unknownObjectWeakLoadStrong();
  if (!v10)
  {
    return 1;
  }

  v11 = v10;
  v12 = CanvasView.paperViewController.getter();

  if (!v12)
  {
    return 1;
  }

  v13 = [v12 pencilKitResponderState];
  v14 = [v13 _currentActiveToolPicker];

  if (!v14)
  {
    v14 = *&v12[OBJC_IVAR____TtC8PaperKit30AnyCanvasElementViewController_toolPicker];
  }

  [v14 _dismissPopovers];
  v15 = [v14 _isHandwritingToolSelected];

  return v15 ^ 1;
}

uint64_t specialized CanvasViewTiledViewDelegate._canvasViewSnapshottingDisabled(_:)()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_5;
  }

  v1 = Strong;
  swift_getKeyPath();
  lazy protocol witness table accessor for type AnyCanvas and conformance AnyCanvas();
  v2 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = &v2[OBJC_IVAR____TtC8PaperKit9AnyCanvas__delegate];
  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 1);

  if (!v4)
  {

LABEL_5:
    v8 = 0;
    return v8 & 1;
  }

  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 56))(v2, ObjectType, v5);
  swift_unknownObjectRelease();

  v8 = v7 ^ 1;
  return v8 & 1;
}

id SynapseLinkItem.icon.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC8PaperKit15SynapseLinkItem_synapseItem) linkPreviewMetadata];
  if (v1)
  {
    v2 = v1;
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    outlined copy of Data._Representation(v3, v5);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v7 = [objc_opt_self() metadataWithDataRepresentation_];

    outlined consume of Data._Representation(v3, v5);
    v8 = [v7 icon];
    if (v8 && (v9 = v8, v10 = [v8 platformImage], v9, v10) || (v11 = objc_msgSend(v7, sel_image)) != 0 && (v12 = v11, v10 = objc_msgSend(v11, sel_platformImage), v12, v10))
    {
      outlined consume of Data._Representation(v3, v5);
    }

    else
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, logger);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_1D38C4000, v20, v21, "Unarchived linkPreviewMetadata doesn't have an icon image.", v22, 2u);
        MEMORY[0x1DA6D0660](v22, -1, -1);
      }

      v10 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
      outlined consume of Data._Representation(v3, v5);
    }

    return v10;
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, logger);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1D38C4000, v14, v15, "Synapse item's linkPreviewMetadata is nil.", v16, 2u);
      MEMORY[0x1DA6D0660](v16, -1, -1);
    }

    v17 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);

    return [v17 init];
  }
}

uint64_t SynapseLinkItem.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC8PaperKit15SynapseLinkItem_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*SynapseLinkItem.delegate.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC8PaperKit15SynapseLinkItem_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return SynapseLinkItem.delegate.modify;
}

id SynapseLinkItem.init(synapseItem:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC8PaperKit15SynapseLinkItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC8PaperKit15SynapseLinkItem_synapseItem] = a1;
  v10.receiver = v1;
  v10.super_class = ObjectType;
  v4 = a1;
  v5 = objc_msgSendSuper2(&v10, sel_init);
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 defaultCenter];
  [v8 addObserver:v7 selector:sel_linkPreviewDidFinishLoadingWithNotification_ name:*MEMORY[0x1E69D5440] object:v4];

  return v7;
}

uint64_t SynapseLinkItem.targetURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(v1 + OBJC_IVAR____TtC8PaperKit15SynapseLinkItem_synapseItem) itemURL];
  if (v3)
  {
    v4 = v3;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for URL();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t SynapseLinkItem.title.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v5 = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
  v7 = &v19 - v6;
  v8 = *(v0 + OBJC_IVAR____TtC8PaperKit15SynapseLinkItem_synapseItem);
  v9 = [v8 displayTitle];
  if (v9)
  {
    goto LABEL_11;
  }

  v10 = [v8 itemURL];
  if (v10)
  {
    v11 = v10;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 56))(v3, 0, 1, v12);
  }

  else
  {
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
  }

  outlined init with take of URL?(v3, v7);
  type metadata accessor for URL();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v7, 1, v12) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s10Foundation3URLVSgMd);
  }

  else
  {
    v14 = URL.host.getter();
    v16 = v15;
    (*(v13 + 8))(v7, v12);
    if (v16)
    {
      if (String.count.getter() < 31)
      {
        return v14;
      }
    }
  }

  v9 = [v8 sourceLastKnownName];
  if (v9)
  {
LABEL_11:
    v17 = v9;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v14;
  }

  if (one-time initialization token for noTitleString != -1)
  {
    swift_once();
  }

  v14 = static SynapseLinkItem.noTitleString;

  return v14;
}

uint64_t SynapseLinkItem.subtitle.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC8PaperKit15SynapseLinkItem_synapseItem) sourceLastKnownName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t SynapseLinkItem.dataRepresentation.getter()
{
  v17[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + OBJC_IVAR____TtC8PaperKit15SynapseLinkItem_synapseItem);
  v17[0] = 0;
  v2 = [v1 dataRepresentationWithError_];
  v3 = v17[0];
  if (v2)
  {
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = v3;
    v6 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, logger);
    v8 = v6;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17[0] = v12;
      *v11 = 136315138;
      swift_getErrorValue();
      v13 = Error.localizedDescription.getter();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v17);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1D38C4000, v9, v10, "%s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x1DA6D0660](v12, -1, -1);
      MEMORY[0x1DA6D0660](v11, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  return v4;
}

void SynapseLinkItem.linkPreviewDidFinishLoading(notification:)()
{
  if ([objc_opt_self() isMainThread])
  {
    Notification.object.getter();
    if (v6)
    {
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for SYContentItem);
      if (swift_dynamicCast())
      {
        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSObject);
        if ((static NSObject.== infix(_:_:)() & 1) != 0 && (v1 = v0 + OBJC_IVAR____TtC8PaperKit15SynapseLinkItem_delegate, swift_beginAccess(), swift_unknownObjectWeakLoadStrong()))
        {
          v2 = *(v1 + 8);
          ObjectType = swift_getObjectType();
          (*(v2 + 8))(v0, &protocol witness table for SynapseLinkItem, ObjectType, v2);

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }
    }

    else
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v5, &_sypSgMd);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t one-time initialization function for noTitleString()
{
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  v5._object = 0x80000001D40896F0;
  v0._countAndFlagsBits = 0x656C746954206F4ELL;
  v1.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v1.value._object = 0xEB00000000656C62;
  v0._object = 0xE800000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0xD000000000000054;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v0, v1, paperKitBundle, v2, v5);
  result = v4._countAndFlagsBits;
  static SynapseLinkItem.noTitleString = v4;
  return result;
}

id SynapseLinkItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SynapseLinkItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for LinkItem.delegate.setter in conformance SynapseLinkItem(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC8PaperKit15SynapseLinkItem_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*protocol witness for LinkItem.delegate.modify in conformance SynapseLinkItem(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC8PaperKit15SynapseLinkItem_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return protocol witness for LinkItem.delegate.modify in conformance SynapseLinkItem;
}

uint64_t protocol witness for LinkItem.targetURL.getter in conformance SynapseLinkItem@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(v1 + OBJC_IVAR____TtC8PaperKit15SynapseLinkItem_synapseItem) itemURL];
  if (v3)
  {
    v4 = v3;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for URL();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t protocol witness for LinkItem.subtitle.getter in conformance SynapseLinkItem()
{
  v1 = [*(v0 + OBJC_IVAR____TtC8PaperKit15SynapseLinkItem_synapseItem) sourceLastKnownName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ReflowSpace.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656D617266 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ReflowSpace.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ReflowSpace.CodingKeys and conformance ReflowSpace.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ReflowSpace.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ReflowSpace.CodingKeys and conformance ReflowSpace.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ReflowSpace.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8PaperKit11ReflowSpaceC10CodingKeysOGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  *(v1 + 160) = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ReflowSpace.CodingKeys and conformance ReflowSpace.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    outlined consume of PaperKitPDFDocument??(*(v1 + 160));
    type metadata accessor for ReflowSpace();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v1 + 152) = 0;
    *(v1 + 16) = 0u;
    *(v1 + 32) = 0u;
    *(v1 + 48) = 0u;
    *(v1 + 64) = 0u;
    *(v1 + 80) = 0u;
    *(v1 + 96) = 0;
    *(v1 + 104) = xmmword_1D4059320;
    *(v1 + 120) = -1;
    *(v1 + 128) = 0;
    *(v1 + 136) = 0;
    *(v1 + 144) = 0;
    type metadata accessor for CGRect(0);
    lazy protocol witness table accessor for type CGRect and conformance CGRect(&lazy protocol witness table cache variable for type CGRect and conformance CGRect);

    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v5 + 8))(v7, v4);
    v8 = v10[1];
    *(v1 + 16) = v10[0];
    *(v1 + 32) = v8;

    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v1;
}

uint64_t ReflowSpace.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8PaperKit11ReflowSpaceC10CodingKeysOGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ReflowSpace.CodingKeys and conformance ReflowSpace.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8 = *(v2 + 32);
  v10[0] = *(v2 + 16);
  v10[1] = v8;
  type metadata accessor for CGRect(0);
  lazy protocol witness table accessor for type CGRect and conformance CGRect(&lazy protocol witness table cache variable for type CGRect and conformance CGRect);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

id ReflowSpace._layer.getter()
{
  v1 = *(v0 + 160);
  v2 = v1;
  if (v1 == 1)
  {
    if (one-time initialization token for showDebugUI != -1)
    {
      swift_once();
    }

    if (static ReflowTextView.showDebugUI == 1)
    {
      v2 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
      [v2 setBorderWidth_];
      v3 = [objc_opt_self() blueColor];
      v4 = [v3 colorWithAlphaComponent_];

      v5 = [v4 CGColor];
      [v2 setBorderColor_];
    }

    else
    {
      v2 = 0;
    }

    v6 = *(v0 + 160);
    *(v0 + 160) = v2;
    v7 = v2;
    outlined consume of PaperKitPDFDocument??(v6);
  }

  outlined copy of CALayer??(v1);
  return v2;
}

uint64_t ReflowSpace.debugDescription.getter()
{
  _StringGuts.grow(_:)(20);
  MEMORY[0x1DA6CD010](0x53776F6C6665523CLL, 0xEE00203A65636170);
  v0 = Double.description.getter();
  MEMORY[0x1DA6CD010](v0);

  MEMORY[0x1DA6CD010](32, 0xE100000000000000);
  type metadata accessor for CGRect(0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1DA6CD010](62, 0xE100000000000000);
  return 0;
}

uint64_t ReflowSpace.__deallocating_deinit()
{
  outlined consume of PaperKitPDFDocument??(*(v0 + 160));

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Decodable.init(from:) in conformance ReflowSpace@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for ReflowSpace();
  v5 = swift_allocObject();
  result = ReflowSpace.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ReflowSpace.CodingKeys and conformance ReflowSpace.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ReflowSpace.CodingKeys and conformance ReflowSpace.CodingKeys;
  if (!lazy protocol witness table cache variable for type ReflowSpace.CodingKeys and conformance ReflowSpace.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReflowSpace.CodingKeys and conformance ReflowSpace.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ReflowSpace.CodingKeys and conformance ReflowSpace.CodingKeys;
  if (!lazy protocol witness table cache variable for type ReflowSpace.CodingKeys and conformance ReflowSpace.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReflowSpace.CodingKeys and conformance ReflowSpace.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ReflowSpace.CodingKeys and conformance ReflowSpace.CodingKeys;
  if (!lazy protocol witness table cache variable for type ReflowSpace.CodingKeys and conformance ReflowSpace.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReflowSpace.CodingKeys and conformance ReflowSpace.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ReflowSpace.CodingKeys and conformance ReflowSpace.CodingKeys;
  if (!lazy protocol witness table cache variable for type ReflowSpace.CodingKeys and conformance ReflowSpace.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReflowSpace.CodingKeys and conformance ReflowSpace.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CGRect and conformance CGRect(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGRect(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t specialized Sequence.flatMap<A>(_:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v3 = 0;
    v4 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1DA6CE0C0](v3, a1);
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v5 = *(a1 + 8 * v3 + 32);

        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_26;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D405B640;
      *(inited + 32) = v5;
      type metadata accessor for ReflowSpace();
      v8 = swift_allocObject();
      *(v8 + 160) = 1;
      *(v8 + 152) = 0;
      *(v8 + 48) = 0u;
      *(v8 + 64) = 0u;
      *(v8 + 80) = 0;
      v10 = UnknownCanvasElementView.flags.modify(v8, v9);
      *(v8 + 88) = 0;
      *(v8 + 96) = 0;
      *(v8 + 104) = v10;
      *(v8 + 112) = v11;
      *(v8 + 120) = -1;
      *(v8 + 128) = 0;
      *(v8 + 136) = 0;
      *(v8 + 144) = 0;
      *(v8 + 16) = 0;
      *(v8 + 24) = 0;
      *(v8 + 32) = xmmword_1D40671D0;
      *(inited + 40) = v8;
      v12 = v4 >> 62;
      if (v4 >> 62)
      {
        break;
      }

      v13 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v14 = v13 + 2;
      if (__OFADD__(v13, 2))
      {
        goto LABEL_25;
      }

LABEL_9:
      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v12)
        {
          v15 = v4 & 0xFFFFFFFFFFFFFF8;
          if (v14 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_16;
          }

          goto LABEL_15;
        }

LABEL_14:
        __CocoaSet.count.getter();
        goto LABEL_15;
      }

      if (v12)
      {
        goto LABEL_14;
      }

LABEL_15:
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v15 = v4 & 0xFFFFFFFFFFFFFF8;
LABEL_16:
      if (((*(v15 + 24) >> 1) - *(v15 + 16)) < 2)
      {
        goto LABEL_28;
      }

      type metadata accessor for ReflowElement();
      swift_arrayInitWithCopy();

      v16 = *(v15 + 16);
      v17 = __OFADD__(v16, 2);
      v18 = v16 + 2;
      if (v17)
      {
        goto LABEL_29;
      }

      *(v15 + 16) = v18;
      ++v3;
      if (v6 == i)
      {
        return v4;
      }
    }

    v19 = __CocoaSet.count.getter();
    v14 = v19 + 2;
    if (!__OFADD__(v19, 2))
    {
      goto LABEL_9;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

{
  v2 = type metadata accessor for PKStroke();
  v42 = *(v2 - 1);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_54;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v40 = v2;
    v41 = v5;
    v5 = 0;
    v46 = a1 & 0xFFFFFFFFFFFFFF8;
    v47 = a1 & 0xC000000000000001;
    v44 = a1;
    v45 = a1 + 32;
    v52 = v42 + 16;
    v43 = v6;
    while (1)
    {
      if (v47)
      {
        v10 = MEMORY[0x1DA6CE0C0](v5, a1, v3);
        v11 = __OFADD__(v5++, 1);
        if (v11)
        {
          goto LABEL_48;
        }
      }

      else
      {
        if (v5 >= *(v46 + 16))
        {
          goto LABEL_49;
        }

        v10 = *(v45 + 8 * v5);

        v11 = __OFADD__(v5++, 1);
        if (v11)
        {
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
          v6 = __CocoaSet.count.getter();
          goto LABEL_3;
        }
      }

      v50 = v5;
      v12 = [*(v10 + 280) strokes];
      v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v14 = *(v13 + 16);
      if (v14)
      {
        v49 = v10;
        v51 = v7;
        v53[0] = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray.reserveCapacity(_:)();
        v15 = v41;
        v16 = (*(v42 + 80) + 32) & ~*(v42 + 80);
        v48 = v13;
        v17 = v13 + v16;
        v18 = *(v42 + 72);
        v19 = *(v42 + 16);
        do
        {
          v19(v15, v17, v2);
          type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PKStroke);
          swift_dynamicCast();
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v17 += v18;
          --v14;
        }

        while (v14);

        v20 = v53[0];
        v7 = v51;
      }

      else
      {

        v20 = MEMORY[0x1E69E7CC0];
      }

      a1 = v20 >> 62;
      v21 = v20 >> 62 ? __CocoaSet.count.getter() : *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v22 = v7 >> 62;
      if (v7 >> 62)
      {
        v37 = __CocoaSet.count.getter();
        v24 = v37 + v21;
        if (__OFADD__(v37, v21))
        {
LABEL_46:
          __break(1u);
          return v7;
        }
      }

      else
      {
        v23 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v24 = v23 + v21;
        if (__OFADD__(v23, v21))
        {
          goto LABEL_46;
        }
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        break;
      }

      if (v22)
      {
        goto LABEL_25;
      }

LABEL_26:
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v25 = v7 & 0xFFFFFFFFFFFFFF8;
LABEL_27:
      v5 = *(v25 + 16);
      v26 = *(v25 + 24);
      if (a1)
      {
        v28 = v25;
        v29 = __CocoaSet.count.getter();
        v25 = v28;
        v27 = v29;
      }

      else
      {
        v27 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v27)
      {
        if (((v26 >> 1) - v5) < v21)
        {
          goto LABEL_51;
        }

        v51 = v7;
        v30 = v25 + 8 * v5 + 32;
        v48 = v25;
        v49 = v21;
        if (a1)
        {
          v2 = &_sSaySo8PKStrokeCGMd;
          if (v27 < 1)
          {
            goto LABEL_53;
          }

          lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [PKStroke] and conformance [A], &_sSaySo8PKStrokeCGMd);
          for (i = 0; i != v27; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8PKStrokeCGMd);
            v32 = specialized protocol witness for Collection.subscript.read in conformance [A](v53, i, v20);
            v34 = *v33;
            (v32)(v53, 0);
            *(v30 + 8 * i) = v34;
          }
        }

        else
        {
          type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PKStroke);
          swift_arrayInitWithCopy();
        }

        v5 = v50;
        v9 = v43;
        a1 = v44;
        v7 = v51;
        v2 = v40;
        if (v49 >= 1)
        {
          v35 = *(v48 + 16);
          v11 = __OFADD__(v35, v49);
          v36 = v35 + v49;
          if (v11)
          {
            goto LABEL_52;
          }

          *(v48 + 16) = v36;
        }
      }

      else
      {

        v8 = v21 <= 0;
        v9 = v43;
        a1 = v44;
        v5 = v50;
        if (!v8)
        {
          goto LABEL_50;
        }
      }

      if (v5 == v9)
      {
        return v7;
      }
    }

    if (!v22)
    {
      v25 = v7 & 0xFFFFFFFFFFFFFF8;
      if (v24 <= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

LABEL_25:
    __CocoaSet.count.getter();
    goto LABEL_26;
  }

  return v7;
}

unint64_t specialized Sequence.flatMap<A>(_:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[3];
  v38 = a1[2];
  v5 = a1[4];
  if (*a1 >> 62)
  {
    goto LABEL_57;
  }

  v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  swift_unknownObjectRetain();
  v31 = v3;
  if (v6)
  {
    v7 = 0;
    v36 = v3 & 0xFFFFFFFFFFFFFF8;
    v37 = v3 & 0xC000000000000001;
    v34 = v3 + 32;
    v8 = MEMORY[0x1E69E7CC0];
    v35 = v5 >> 1;
    v33 = v6;
    while (1)
    {
      if (v37)
      {
        v3 = MEMORY[0x1DA6CE0C0](v7, v31);
        v10 = __OFADD__(v7++, 1);
        if (v10)
        {
          goto LABEL_50;
        }
      }

      else
      {
        if (v7 >= *(v36 + 16))
        {
          goto LABEL_51;
        }

        v3 = *(v34 + 8 * v7);

        v10 = __OFADD__(v7++, 1);
        if (v10)
        {
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
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          v6 = __CocoaSet.count.getter();
          goto LABEL_3;
        }
      }

      if (v4 == v35)
      {

        goto LABEL_47;
      }

      if (v4 >= v35)
      {
        goto LABEL_52;
      }

      v11 = *(v38 + 8 * v4);
      v42[0] = v3;
      v42[1] = v11;

      closure #3 in static ReflowLayoutManager.process(lines:in:)(v42, &v43);
      if (v2)
      {

        swift_unknownObjectRelease();

        return v8;
      }

      v12 = v43;
      v5 = v43 >> 62;
      v13 = v43 >> 62 ? __CocoaSet.count.getter() : *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v14 = v8 >> 62;
      if (v8 >> 62)
      {
        v29 = __CocoaSet.count.getter();
        v16 = v29 + v13;
        if (__OFADD__(v29, v13))
        {
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }
      }

      else
      {
        v15 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v16 = v15 + v13;
        if (__OFADD__(v15, v13))
        {
          goto LABEL_44;
        }
      }

      v40 = v13;
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        break;
      }

      if (v14)
      {
        goto LABEL_23;
      }

      v17 = v8 & 0xFFFFFFFFFFFFFF8;
      if (v16 <= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v39 = v8;
        goto LABEL_25;
      }

LABEL_24:
      v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v17 = v39 & 0xFFFFFFFFFFFFFF8;
LABEL_25:
      v18 = *(v17 + 16);
      v19 = *(v17 + 24);
      if (v5)
      {
        v20 = v17;
        v21 = __CocoaSet.count.getter();
        v17 = v20;
        v3 = v21;
      }

      else
      {
        v3 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v3)
      {
        if (((v19 >> 1) - v18) < v40)
        {
          goto LABEL_54;
        }

        v22 = v17 + 8 * v18 + 32;
        v32 = v17;
        if (v5)
        {
          if (v3 < 1)
          {
            goto LABEL_56;
          }

          v5 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [ReflowElement] and conformance [A], &_sSay8PaperKit13ReflowElementCGMd);
          for (i = 0; i != v3; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8PaperKit13ReflowElementCGMd);
            v24 = specialized protocol witness for Collection.subscript.read in conformance [A](v41, i, v12);
            v26 = *v25;

            (v24)(v41, 0);
            *(v22 + 8 * i) = v26;
          }
        }

        else
        {
          v5 = v12 & 0xFFFFFFFFFFFFFF8;
          type metadata accessor for ReflowElement();
          swift_arrayInitWithCopy();
        }

        v8 = v39;
        v2 = 0;
        v9 = v33;
        if (v40 >= 1)
        {
          v27 = *(v32 + 16);
          v10 = __OFADD__(v27, v40);
          v28 = v27 + v40;
          if (v10)
          {
            goto LABEL_55;
          }

          *(v32 + 16) = v28;
        }
      }

      else
      {

        v8 = v39;
        v9 = v33;
        if (v40 > 0)
        {
          goto LABEL_53;
        }
      }

      ++v4;
      if (v7 == v9)
      {
        goto LABEL_47;
      }
    }

    if (!v14)
    {
      goto LABEL_24;
    }

LABEL_23:
    __CocoaSet.count.getter();
    goto LABEL_24;
  }

LABEL_45:
  v8 = MEMORY[0x1E69E7CC0];
LABEL_47:
  swift_unknownObjectRelease();

  return v8;
}

BOOL specialized Ref<>.containsStrokes<A>(_:in:)(uint64_t a1, char *a2)
{
  v54 = a2;
  v57 = a1;
  v53 = type metadata accessor for TaggedStroke(0);
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v51 = &v45 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  v50 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v49 = &v45 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v56 = &v45 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRSequenceVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
  v47 = *(v10 - 8);
  v48 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v45 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v46 = &v45 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v45 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v45 - v21;
  v23 = *(v15 + 16);
  v52 = v2;
  v23(v17, v2, v14, v20);
  v24 = v57;
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  WeakRef.init<A>(_:)();
  v25 = specialized Set.contains(_:)(v22, v24);
  (*(v19 + 8))(v22, v18);
  if (v25)
  {
    return 1;
  }

  else
  {
    type metadata accessor for PKDrawingStruct(0);
    _s8PaperKit15PKDrawingStructVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type PKDrawingStruct and conformance PKDrawingStruct, type metadata accessor for PKDrawingStruct);
    v27 = v49;
    v28 = v54;
    Ref.subscript.getter();
    v29 = v51;
    CRRegister.value.getter();
    (*(v50 + 8))(v27, v6);
    v30 = v29;
    v31 = v55;
    outlined init with take of TaggedStroke(v30, v55);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMd);
      v33 = *(v32 - 8);
      v34 = v56;
      (*(v33 + 32))(v56, v31, v32);
      (*(v33 + 56))(v34, 0, 1, v32);
    }

    else
    {
      _s8PaperKit15PKDrawingStructVWOhTm_1(v31, type metadata accessor for TaggedStroke);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMd);
      v34 = v56;
      (*(*(v35 - 8) + 56))(v56, 1, 1, v35);
    }

    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMd);
    v37 = *(v36 - 8);
    if ((*(v37 + 48))(v34, 1, v36) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v34, &_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGSgMd);
      return 0;
    }

    else
    {
      v38 = v45;
      Ref.subscript.getter();
      (*(v37 + 8))(v34, v36);
      v39 = v46;
      v40 = v47;
      v41 = v38;
      v42 = v48;
      v43 = (*(v47 + 32))(v46, v41, v48);
      MEMORY[0x1EEE9AC00](v43);
      *(&v45 - 2) = v24;
      *(&v45 - 1) = v28;
      v26 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Ref<>.containsStrokes<A>(_:in:), (&v45 - 4));
      (*(v40 + 8))(v39, v42);
    }
  }

  return v26;
}

uint64_t ReflowLayoutManager.copy()()
{
  v18 = *(v0 + 48);
  v19 = *(v0 + 16);
  v15 = *(v0 + 64);
  v16 = *(v0 + 32);
  swift_beginAccess();
  v1 = *(v0 + 80);
  swift_beginAccess();
  v2 = *(v0 + 88);
  swift_beginAccess();
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 112);
  v21 = *(v0 + 152);
  v20 = *(v0 + 120);
  v17 = *(v0 + 136);
  swift_beginAccess();
  v6 = *(v0 + 176);
  v25 = *(v0 + 160);
  v26 = v6;
  v27[0] = *(v0 + 192);
  *(v27 + 11) = *(v0 + 203);
  v23 = *(v0 + 219);
  v22 = *(v0 + 224);
  type metadata accessor for ReflowLayoutManager();
  v7 = swift_allocObject();
  v8 = *(MEMORY[0x1E695F050] + 16);
  *(v7 + 120) = *MEMORY[0x1E695F050];
  v9 = MEMORY[0x1E69E7CC0];
  *(v7 + 80) = MEMORY[0x1E69E7CC0];
  *(v7 + 88) = v9;
  *(v7 + 96) = v9;
  *(v7 + 104) = v9;
  *(v7 + 112) = 100;
  *(v7 + 136) = v8;
  *(v7 + 152) = v9;
  *(v7 + 176) = 0u;
  *(v7 + 192) = 0u;
  *(v7 + 203) = 0u;
  *(v7 + 160) = 0u;
  *(v7 + 219) = 1;
  *(v7 + 224) = 0;
  *(v7 + 16) = v19;
  *(v7 + 32) = v16;
  *(v7 + 48) = v18;
  *(v7 + 64) = v15;
  swift_beginAccess();
  *(v7 + 80) = v1;
  swift_beginAccess();
  *(v7 + 88) = v2;
  swift_beginAccess();
  *(v7 + 96) = v4;
  *(v7 + 104) = v3;
  *(v7 + 112) = v5;
  *(v7 + 136) = v17;
  *(v7 + 120) = v20;
  *(v7 + 152) = v21;
  swift_beginAccess();
  v10 = *(v7 + 176);
  v11 = *(v7 + 192);
  v28[0] = *(v7 + 160);
  v28[1] = v10;
  v29[0] = v11;
  *(v29 + 11) = *(v7 + 203);
  outlined init with copy of Date?(&v25, v24, &_s8PaperKit23ReflowSpacingAdjustmentVSgMd);
  outlined init with copy of Date?(&v25, v24, &_s8PaperKit23ReflowSpacingAdjustmentVSgMd);
  v12 = v26;
  *(v7 + 160) = v25;
  v13 = v27[0];
  *(v7 + 176) = v12;
  *(v7 + 192) = v13;
  *(v7 + 203) = *(v27 + 11);

  outlined destroy of StocksKitCurrencyCache.Provider?(v28, &_s8PaperKit23ReflowSpacingAdjustmentVSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(&v25, &_s8PaperKit23ReflowSpacingAdjustmentVSgMd);
  *(v7 + 219) = v23;
  *(v7 + 224) = v22;
  return v7;
}

void closure #2 in static ReflowLayoutManager.process(lines:in:)(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double *a4@<X3>, double *a5@<X4>, double *a6@<X5>, void *a7@<X8>)
{
  v128 = a6;
  v127 = a5;
  v126 = a4;
  v123 = a3;
  v129 = a7;
  v9 = type metadata accessor for PKStroke();
  v10 = *(v9 - 8);
  v135 = v9;
  v136 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v131 = &v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v134 = &v123 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit9PKDrawingVSgMd);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v124 = &v123 - v15;
  v142 = COERCE_DOUBLE(type metadata accessor for UUID());
  MaxY = *(*&v142 - 8);
  MEMORY[0x1EEE9AC00](*&v142);
  v132 = &v123 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v133 = &v123 - v18;
  *&v20 = MEMORY[0x1EEE9AC00](v19).n128_u64[0];
  v139 = (&v123 - v21);
  v22 = *a1;
  v23 = [*a1 strokeIdentifiers];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18CHStrokeIdentifier_pMd);
  v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v125 = v22;
  v25 = [v22 nonTextStrokeIdentifiers];
  v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v143 = v24;
  specialized Array.append<A>(contentsOf:)(v26);
  v27 = v143;
  if (v143 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v143 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v29 = 0;
    v137 = v27 & 0xFFFFFFFFFFFFFF8;
    v138 = v27 & 0xC000000000000001;
    v30 = (*&MaxY + 32);
    v141 = MEMORY[0x1E69E7CC0];
    while (v138)
    {
      MEMORY[0x1DA6CE0C0](v29, v27);
      v31 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        goto LABEL_17;
      }

LABEL_9:
      type metadata accessor for PKStrokeProviderSliceIdentifierCoherence(0);
      v32 = swift_dynamicCastClass();
      if (v32)
      {
        v33 = a2;
        v34 = i;
        v35 = [v32 strokeUUID];
        v36 = v133;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        swift_unknownObjectRelease();
        v37 = *v30;
        (*v30)(v139, v36, COERCE_DOUBLE(*&v142));
        v38 = v141;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(*&v38 + 16) + 1, 1, *&v38));
        }

        v40 = *(*&v38 + 16);
        v39 = *(*&v38 + 24);
        v141 = v38;
        if (v40 >= v39 >> 1)
        {
          v141 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v39 > 1, v40 + 1, 1, *&v141));
        }

        v41 = MaxY;
        v42 = v141;
        *(*&v141 + 16) = v40 + 1;
        (v37)(*&v42 + ((*(*&v41 + 80) + 32) & ~*(*&v41 + 80)) + *(*&v41 + 72) * v40, v139, *&v142);
        i = v34;
        a2 = v33;
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v29;
      if (v31 == i)
      {
        goto LABEL_21;
      }
    }

    if (v29 >= *(v137 + 16))
    {
      goto LABEL_18;
    }

    swift_unknownObjectRetain();
    v31 = v29 + 1;
    if (!__OFADD__(v29, 1))
    {
      goto LABEL_9;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v141 = MEMORY[0x1E69E7CC0];
LABEL_21:

  v43 = *(*&v141 + 16);
  if (v43)
  {
    v44 = *(*&MaxY + 16);
    v45 = *&v141 + ((*(*&MaxY + 80) + 32) & ~*(*&MaxY + 80));
    v46 = *(*&MaxY + 72);
    v130 = v136 + 16;
    *&MaxY += 16;
    v47 = (*&MaxY - 8);
    v138 = v136 + 32;
    v139 = MEMORY[0x1E69E7CC0];
    v137 = a2;
    v48 = v132;
    v133 = v46;
    v44(v132, v45, *&v142);
    while (1)
    {
      if (*(a2 + 16) && (v49 = specialized __RawDictionaryStorage.find<A>(_:)(v48), (v50 & 1) != 0))
      {
        v51 = *(a2 + 56);
        v52 = v135;
        v53 = v136;
        v54 = *(v136 + 72);
        v55 = v48;
        v56 = v131;
        (*(v136 + 16))(v131, v51 + v54 * v49, v135);
        (*v47)(v55, COERCE_DOUBLE(*&v142));
        v57 = *(v53 + 32);
        v57(v134, v56, v52);
        v58 = v139;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v58 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v58[2] + 1, 1, v58);
        }

        v60 = v58[2];
        v59 = v58[3];
        v139 = v58;
        v48 = v132;
        if (v60 >= v59 >> 1)
        {
          v139 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v59 > 1, v60 + 1, 1, v139);
        }

        v61 = v139;
        v139[2] = v60 + 1;
        v57(&v61[((*(v136 + 80) + 32) & ~*(v136 + 80)) + v60 * v54], v134, v135);
        a2 = v137;
        v46 = v133;
      }

      else
      {
        (*v47)(v48, COERCE_DOUBLE(*&v142));
      }

      v45 += v46;
      if (!--v43)
      {
        break;
      }

      v44(v48, v45, *&v142);
    }

    v62 = v139;
  }

  else
  {

    v62 = MEMORY[0x1E69E7CC0];
  }

  specialized Array.append<A>(contentsOf:)(v63);
  v64 = type metadata accessor for PKDrawing();
  v65 = *(v64 - 8);
  v66 = v124;
  (*(v65 + 56))(v124, 1, 1, v64);
  v143 = v62;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9PencilKit8PKStrokeVGMd);
  v67 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v69 = 0;
  if ((*(v65 + 48))(v66, 1, v64) != 1)
  {
    PKDrawing._bridgeToObjectiveC()(v68);
    v69 = v70;
    (*(v65 + 8))(v66, v64);
  }

  v71 = [objc_allocWithZone(type metadata accessor for PKDrawingCoherence(0)) initWithStrokes:v67 fromDrawing:v69];

  swift_unknownObjectRelease();

  [v71 bounds];
  [v71 set_canvasBounds_];
  [v71 _canvasBounds];
  x = v144.origin.x;
  y = v144.origin.y;
  width = v144.size.width;
  height = v144.size.height;
  MinX = CGRectGetMinX(v144);
  v145.origin.x = x;
  v145.origin.y = y;
  v145.size.width = width;
  v145.size.height = height;
  MinY = CGRectGetMinY(v145);
  v146.origin.x = x;
  v146.origin.y = y;
  v146.size.width = width;
  v146.size.height = height;
  MaxX = CGRectGetMaxX(v146);
  v147.origin.x = x;
  v147.origin.y = y;
  v147.size.width = width;
  v147.size.height = height;
  v79 = CGRectGetMinY(v147);
  v148.origin.x = x;
  v148.origin.y = y;
  v148.size.width = width;
  v148.size.height = height;
  v141 = CGRectGetMinX(v148);
  v149.origin.x = x;
  v149.origin.y = y;
  v149.size.width = width;
  v149.size.height = height;
  MaxY = CGRectGetMaxY(v149);
  v150.origin.x = x;
  v150.origin.y = y;
  v150.size.width = width;
  v150.size.height = height;
  v142 = CGRectGetMaxX(v150);
  v151.origin.x = x;
  v151.origin.y = y;
  v151.size.width = width;
  v151.size.height = height;
  v80 = CGRectGetMaxY(v151);
  v81 = v126;
  v82 = v126[5];
  v83 = v126[6];
  v84 = v126[7] - v82;
  v85 = v126[8] - v83;
  v86 = v84 * v84 + v85 * v85;
  v87 = ((MinX - v82) * v84 + (MinY - v83) * v85) / v86;
  v88 = v84 * v87;
  v89 = v83 + v85 * v87;
  v90 = sqrt(v86);
  v91 = v85 / v90;
  v92 = MinX - (v82 + v88);
  v93 = -v84 / v90;
  v94 = v93 * (MinY - v89) + v85 / v90 * v92;
  if (v94 > -200.0 && v94 < 200.0)
  {
    v99 = v128;
    v100 = v127;
    if ((*&v94 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      v96 = *v127;
      if (v94 > *v127)
      {
        v96 = v94;
      }

      *v127 = v96;
      v97 = *v99;
      if (*v99 >= v94)
      {
        v97 = v94;
      }

      *v99 = v97;
      v82 = v81[5];
      v83 = v81[6];
      v84 = v81[7] - v82;
      v85 = v81[8] - v83;
      v86 = v84 * v84 + v85 * v85;
      v98 = sqrt(v86);
      v91 = v85 / v98;
      v93 = -v84 / v98;
    }
  }

  else
  {
    v99 = v128;
    v100 = v127;
  }

  v101 = ((MaxX - v82) * v84 + (v79 - v83) * v85) / v86;
  v102 = v93 * (v79 - (v83 + v85 * v101)) + v91 * (MaxX - (v82 + v84 * v101));
  if (v102 > -200.0 && v102 < 200.0 && (*&v102 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v105 = *v100;
    if (v102 > *v100)
    {
      v105 = v102;
    }

    *v100 = v105;
    v106 = *v99;
    if (*v99 >= v102)
    {
      v106 = v102;
    }

    *v99 = v106;
    v82 = v81[5];
    v83 = v81[6];
    v84 = v81[7] - v82;
    v85 = v81[8] - v83;
    v86 = v84 * v84 + v85 * v85;
    v107 = sqrt(v86);
    v91 = v85 / v107;
    v93 = -v84 / v107;
  }

  v108 = ((v141 - v82) * v84 + (MaxY - v83) * v85) / v86;
  v109 = v93 * (MaxY - (v83 + v85 * v108)) + v91 * (v141 - (v82 + v84 * v108));
  if (v109 > -200.0 && v109 < 200.0 && (*&v109 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v112 = *v100;
    if (v109 > *v100)
    {
      v112 = v109;
    }

    *v100 = v112;
    v113 = *v99;
    if (*v99 >= v109)
    {
      v113 = v109;
    }

    *v99 = v113;
    v82 = v81[5];
    v83 = v81[6];
    v84 = v81[7] - v82;
    v85 = v81[8] - v83;
    v86 = v84 * v84 + v85 * v85;
    v114 = sqrt(v86);
    v91 = v85 / v114;
    v93 = -v84 / v114;
  }

  v115 = ((v142 - v82) * v84 + (v80 - v83) * v85) / v86;
  v116 = v93 * (v80 - (v83 + v85 * v115)) + v91 * (v142 - (v82 + v84 * v115));
  if (v116 > -200.0 && v116 < 200.0 && (*&v116 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v119 = *v100;
    if (v116 > *v100)
    {
      v119 = v116;
    }

    *v100 = v119;
    if (*v99 < v116)
    {
      v116 = *v99;
    }

    *v99 = v116;
  }

  type metadata accessor for ReflowWord();
  swift_allocObject();
  v120 = v125;
  v121 = v71;
  v122 = ReflowWord.init(reflowableTextToken:drawing:scale:image:)(v120, v121, 0, 1.0);
  ReflowWord.generateImage()();

  *v129 = v122;
}

double closure #3 in static ReflowLayoutManager.process(lines:in:)@<D0>(double **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D405B640;
  *(v5 + 32) = v3;
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];

  v17.origin.x = v6;
  v17.origin.y = v7;
  v17.size.width = v8;
  v17.size.height = v9;
  MaxX = CGRectGetMaxX(v17);
  MinX = CGRectGetMinX(*(v4 + 2));
  type metadata accessor for ReflowSpace();
  v12 = swift_allocObject();
  *(v12 + 160) = 1;
  *(v12 + 152) = 0;
  v14 = UnknownCanvasElementView.flags.modify(v12, v13);
  *(v12 + 48) = 0u;
  *(v12 + 64) = 0u;
  *(v12 + 80) = 0u;
  *(v12 + 96) = 0;
  *(v12 + 104) = v14;
  *(v12 + 112) = v15;
  *(v12 + 120) = -1;
  *(v12 + 128) = 0;
  *(v12 + 136) = 0;
  *(v12 + 144) = 0;
  result = MinX - MaxX;
  *(v12 + 16) = MaxX;
  *(v12 + 24) = 0;
  *(v12 + 32) = MinX - MaxX;
  *(v12 + 40) = 0x4000000000000000;
  *(v5 + 40) = v12;
  *a2 = v5;
  return result;
}

void ReflowLayoutManager.init(contents:frame:strokesToReflow:)(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v9 = MEMORY[0x1E69E7CC0];
  *(v6 + 80) = MEMORY[0x1E69E7CC0];
  v10 = v6 + 80;
  *(v10 + 8) = v9;
  v11 = *(MEMORY[0x1E695F050] + 16);
  *(v10 + 40) = *MEMORY[0x1E695F050];
  *(v10 + 16) = v9;
  *(v10 + 24) = v9;
  *(v10 + 32) = 100;
  *(v10 + 56) = v11;
  *(v10 + 72) = v9;
  *(v10 + 80) = 0u;
  *(v10 + 96) = 0u;
  *(v10 + 112) = 0u;
  *(v10 + 123) = 0u;
  *(v10 + 139) = 1;
  *(v10 + 144) = 0;
  *(v10 - 32) = a3;
  *(v10 - 24) = a4;
  *(v10 - 16) = a5;
  *(v10 - 8) = a6;
  *(v10 - 64) = a3;
  *(v10 - 56) = a4;
  *(v10 - 48) = a5;
  *(v10 - 40) = a6;
  v12 = specialized Sequence.flatMap<A>(_:)(a1);
  swift_beginAccess();
  *v10 = v12;

  swift_beginAccess();
  *(v10 + 8) = a1;

  *(v10 + 24) = a2;

  v153 = (v10 + 8);
  v13 = *(v10 + 8);
  v194 = v9;

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 0, 0);
  v14.f64[0] = a3;
  v15 = 0;
  v16 = v9;
  v17 = *(v13 + 16);
  v14.f64[1] = a4;
  v164 = v14;
  v18 = 32;
  while (v17 != v15)
  {
    v19 = *(v13 + v18);
    v20 = *(v13 + v18 + 32);
    *&__dst.c = *(v13 + v18 + 16);
    *&__dst.tx = v20;
    *&__dst.a = v19;
    v21 = *(v13 + v18 + 48);
    v22 = *(v13 + v18 + 64);
    v23 = *(v13 + v18 + 96);
    *&v191[32] = *(v13 + v18 + 80);
    *&v191[48] = v23;
    *v191 = v21;
    *&v191[16] = v22;
    v24 = *(v13 + v18 + 112);
    v25 = *(v13 + v18 + 128);
    v26 = *(v13 + v18 + 144);
    v193 = *(v13 + v18 + 160);
    *v192 = v25;
    *&v192[16] = v26;
    *&v191[64] = v24;
    ty = __dst.ty;
    v28 = *v191;
    v29 = *(&v24 + 1);
    v30 = *&v25;
    v169 = *&v191[8];
    v171 = *&v191[24];
    v176 = *&v191[40];
    point = *&v191[56];
    a = __dst.a;
    outlined init with copy of ReflowTextLine(&__dst, &v181);
    outlined init with copy of ReflowTextLine(&__dst, &v181);

    v32 = __dst.a;
    *&v181.a = *&__dst.c;
    v181.c = __dst.tx;
    v179 = *&v192[8];
    v180 = *&v192[24];
    v199.origin.x = a3;
    v199.origin.y = a4;
    v199.size.width = a5;
    v199.size.height = a6;
    MinX = CGRectGetMinX(v199);
    outlined destroy of ReflowTextLine(&__dst);
    v194 = v16;
    v35 = *(v16 + 16);
    v34 = *(v16 + 24);
    if (v35 >= v34 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1);
      v16 = v194;
    }

    v36 = sqrt((v169.x - ty) * (v169.x - ty) + (v169.y - v28) * (v169.y - v28));
    v37 = (v169.x - ty) / v36;
    v38 = (v169.y - v28) / v36;
    v39 = (MinX - ty) / v37;
    *(v16 + 16) = v35 + 1;
    v40 = v16 + 168 * v35;
    *(v40 + 32) = v32;
    *(v40 + 40) = a;
    v41 = *&v181.a;
    *(v40 + 64) = v181.c;
    *(v40 + 48) = v41;
    *(v40 + 72) = ty + v37 * v39 - a3;
    *(v40 + 80) = v28 + v38 * v39 - a4;
    *(v40 + 104) = vsubq_f64(v171, v164);
    *(v40 + 88) = vsubq_f64(v169, v164);
    *(v40 + 136) = vsubq_f64(point, v164);
    *(v40 + 120) = vsubq_f64(v176, v164);
    *(v40 + 152) = v29 - a3;
    *(v40 + 160) = v30 - a4;
    v42 = v179;
    *(v40 + 184) = v180;
    *(v40 + 192) = v15;
    *(v40 + 168) = v42;
    v18 += 168;
    if (++v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
LABEL_119:
      __break(1u);
LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
      goto LABEL_125;
    }
  }

  *v153 = v16;

  v43 = *v153;
  v154 = *(*v153 + 2);
  if (!v154)
  {

    goto LABEL_65;
  }

  v44 = 0;
  v45.f64[0] = a3;
  v45.f64[1] = a4;
  v159 = v45;
  do
  {
    if (v44 >= *(v43 + 2))
    {
      goto LABEL_114;
    }

    v46 = &v43[168 * v44 + 32];
    v47 = *v46;
    v163 = *(v46 + 48);
    v165 = *(v46 + 40);
    v48 = *(v46 + 56);
    v49 = *(v46 + 64);
    v50 = *(v46 + 160);
    if (*v46 >> 62)
    {
      v51 = __CocoaSet.count.getter();
      if (!v51)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v51 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v51)
      {
        goto LABEL_10;
      }
    }

    if (v51 < 1)
    {
      goto LABEL_116;
    }

    v161 = v49 - v163;
    v162 = v48 - v165;
    v160 = v162 * v162 + v161 * v161;

    v52 = 0;
    do
    {
      if ((v47 & 0xC000000000000001) != 0)
      {
        v53 = MEMORY[0x1DA6CE0C0](v52, v47);
      }

      else
      {
        v53 = *(v47 + 8 * v52 + 32);
      }

      ++v52;
      *(v53 + 16) = vsubq_f64(*(v53 + 16), v159);
      *(v53 + 48) = vsubq_f64(*(v53 + 48), v159);
      *(v53 + 120) = v50;
      v195.x = (*(*v53 + 240))();
      v55 = v54;
      v57 = v56;
      v58 = *(v53 + 16);
      v59 = *(v53 + 32);
      __dst.a = *(v53 + 32);
      v172 = v59;
      v177 = vsubq_f64(v58, vmulq_f64(v59, 0));
      __dst.b = 0.0;
      __dst.c = 0.0;
      __dst.d = v59.f64[1];
      *&__dst.tx = v177;
      v60 = CGPointApplyAffineTransform(v195, &__dst);
      __dst.a = v172.f64[0];
      __dst.b = 0.0;
      __dst.c = 0.0;
      __dst.d = v172.f64[1];
      *&__dst.tx = v177;
      v196.x = v55;
      v196.y = v57;
      v61 = CGPointApplyAffineTransform(v196, &__dst);
      v62 = (v162 * (v60.x - v165) + v161 * (v60.y - v163)) / v160;
      v63 = v165 + v162 * v62;
      v64 = v163 + v161 * v62;
      v65 = (v162 * (v61.x - v165) + v161 * (v61.y - v163)) / v160;
      v170 = v165 + v162 * v65;
      __dst.a = v172.f64[0];
      __dst.b = 0.0;
      __dst.c = 0.0;
      pointb = v163 + v161 * v65;
      __dst.d = v172.f64[1];
      *&__dst.tx = v177;
      CGAffineTransformInvert(&v181, &__dst);
      v66 = v181.a;
      b = v181.b;
      c = v181.c;
      d = v181.d;
      tx = v181.tx;
      v71 = v181.ty;
      __dst = v181;
      v197.x = v63;
      v197.y = v64;
      v72 = CGPointApplyAffineTransform(v197, &__dst);
      __dst.a = v66;
      __dst.b = b;
      __dst.c = c;
      __dst.d = d;
      __dst.tx = tx;
      __dst.ty = v71;
      v198.x = v170;
      v198.y = pointb;
      v73 = CGPointApplyAffineTransform(v198, &__dst);
      (*(*v53 + 248))(v72.x, v72.y, v73.x, v73.y);
    }

    while (v51 != v52);

LABEL_10:
    ++v44;
  }

  while (v44 != v154);

  v74 = *v153;
  v75 = *(*v153 + 2);

  if (v75)
  {
    v76 = 0;
    v77 = v74 + 32;
    v78 = MEMORY[0x1E69E7CC0];
    while (2)
    {
      v173 = v78 + 24;
      v79 = 168 * v76;
      v80 = v76;
      v178 = v78;
      while (2)
      {
        if (v80 >= *(v74 + 2))
        {
          goto LABEL_117;
        }

        v81 = v74;
        v82 = *&v77[v79];
        v83 = *&v77[v79 + 32];
        *&v181.c = *&v77[v79 + 16];
        *&v181.tx = v83;
        *&v181.a = v82;
        v84 = *&v77[v79 + 48];
        v85 = *&v77[v79 + 64];
        v86 = *&v77[v79 + 96];
        v184 = *&v77[v79 + 80];
        v185 = v86;
        v182 = v84;
        v183 = v85;
        v87 = *&v77[v79 + 112];
        v88 = *&v77[v79 + 128];
        v89 = *&v77[v79 + 144];
        v189 = *&v77[v79 + 160];
        v187 = v88;
        v188 = v89;
        v186 = v87;
        memmove(&__dst, &v77[v79], 0xA8uLL);
        v90 = __dst.a;
        if (!(*&__dst.a >> 62))
        {
          if (*((*&__dst.a & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

LABEL_25:
          outlined init with copy of ReflowTextLine(&v181, &v179);
          outlined destroy of ReflowTextLine(&__dst);
LABEL_26:
          ++v80;
          v79 += 168;
          v74 = v81;
          if (v75 == v80)
          {
            goto LABEL_66;
          }

          continue;
        }

        break;
      }

      if (!__CocoaSet.count.getter())
      {
        goto LABEL_25;
      }

LABEL_30:
      if ((*&v90 & 0xC000000000000001) != 0)
      {
        outlined init with copy of ReflowTextLine(&v181, &v179);
        v92 = MEMORY[0x1DA6CE0C0](0, *&v90);
        v91 = v92;
      }

      else
      {
        if (!*((*&v90 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_118;
        }

        v91 = *(*&v90 + 32);
        outlined init with copy of ReflowTextLine(&v181, &v179);
      }

      v93 = (*(*v91 + 272))(v92);
      v94 = v93 * CGRectGetWidth(*(v91 + 16));
      v95 = v94 + CGRectGetMinX(*(v91 + 16)) - __dst.ty;
      if (!v80)
      {
        goto LABEL_53;
      }

      if (v80 > *(*v153 + 2))
      {
        goto LABEL_119;
      }

      v96 = *&(*v153)[v79 - 136];
      if (v96 >> 62)
      {
        v97 = __CocoaSet.count.getter();
        if (v97)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v97 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v97)
        {
LABEL_37:
          v98 = v97 - 1;
          if (__OFSUB__(v97, 1))
          {
            goto LABEL_122;
          }

          if ((v96 & 0xC000000000000001) != 0)
          {

            v99 = MEMORY[0x1DA6CE0C0](v98, v96);
          }

          else
          {
            if ((v98 & 0x8000000000000000) != 0)
            {
              goto LABEL_123;
            }

            if (v98 >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_124;
            }

            v99 = *(v96 + 8 * v98 + 32);
          }

          v100 = *(v99 + 136);

          v78 = v178;
          if (v100 == 1)
          {
LABEL_53:
            outlined destroy of ReflowTextLine(&__dst);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v78 + 2) + 1, 1, v78);
            }

            v104 = *(v78 + 2);
            v103 = *(v78 + 3);
            if (v104 >= v103 >> 1)
            {
              v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v103 > 1), v104 + 1, 1, v78);
            }

            *(v78 + 2) = v104 + 1;
            *&v78[8 * v104 + 32] = v95;
LABEL_62:
            v74 = v81;
            v76 = v80 + 1;
            if (v75 - 1 != v80)
            {
              continue;
            }

            v178 = v78;
            goto LABEL_66;
          }
        }
      }

      break;
    }

    v101 = *(v78 + 2);
    outlined destroy of ReflowTextLine(&__dst);
    if (!v101)
    {
      goto LABEL_120;
    }

    v102 = *(v78 + 2);
    if (v101 > v102)
    {
      goto LABEL_121;
    }

    if (v95 < *&v173[8 * v101])
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v78 = specialized _ArrayBuffer._consumeAndCreateNew()(v78);
      }

      if (v102 > *(v78 + 2))
      {
        goto LABEL_138;
      }

      *&v78[8 * v102 + 24] = v95;
      goto LABEL_62;
    }

    goto LABEL_26;
  }

LABEL_65:
  v178 = MEMORY[0x1E69E7CC0];
LABEL_66:

  v105 = *v153;
  v106 = *(*v153 + 2);

  if (v106)
  {
    v107 = 0;
    v108 = v105 + 32;
    v109 = v106 - 1;
    v110 = -1;
    v111 = 56;
LABEL_68:
    v112 = v111 + 168 * v107;
    do
    {
      if (v107 >= *(v105 + 2))
      {
        goto LABEL_115;
      }

      v113 = *&v108[v112 - 56];
      v114 = *&v108[v112 - 24];
      *&v181.c = *&v108[v112 - 40];
      *&v181.tx = v114;
      *&v181.a = v113;
      v115 = *&v108[v112 - 8];
      v116 = *&v108[v112 + 8];
      v117 = *&v108[v112 + 40];
      v184 = *&v108[v112 + 24];
      v185 = v117;
      v182 = v115;
      v183 = v116;
      v118 = *&v108[v112 + 56];
      v119 = *&v108[v112 + 72];
      v120 = *&v108[v112 + 88];
      v189 = *&v108[v112 + 104];
      v187 = v119;
      v188 = v120;
      v186 = v118;
      memmove(&__dst, &v108[v112 - 56], 0xA8uLL);
      v121 = __dst.a;
      if (*&__dst.a >> 62)
      {
        if (__CocoaSet.count.getter())
        {
LABEL_75:
          if ((*&v121 & 0xC000000000000001) != 0)
          {
            outlined init with copy of ReflowTextLine(&v181, &v179);
            v123 = MEMORY[0x1DA6CE0C0](0, *&v121);
            v122 = v123;
            v174 = v111;
            if (v107)
            {
              goto LABEL_78;
            }
          }

          else
          {
            if (!*((*&v121 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_126;
            }

            v122 = *(*&v121 + 32);
            outlined init with copy of ReflowTextLine(&v181, &v179);

            v174 = v111;
            if (v107)
            {
LABEL_78:
              if (v107 > *(*v153 + 2))
              {
                goto LABEL_129;
              }

              pointa = v110;
              v124 = *&(*v153)[v112 - 192];
              v125 = v109;
              if (v124 >> 62)
              {
                v123 = __CocoaSet.count.getter();
                if (!v123)
                {
                  goto LABEL_90;
                }

LABEL_81:
                v126 = v123 - 1;
                if (__OFSUB__(v123, 1))
                {
                  goto LABEL_135;
                }

                if ((v124 & 0xC000000000000001) != 0)
                {

                  v127 = MEMORY[0x1DA6CE0C0](v126, v124);
                }

                else
                {
                  if ((v126 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_136;
                  }

                  if (v126 >= *((v124 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_137;
                  }

                  v127 = *(v124 + 8 * v126 + 32);
                }

                v128 = *(v127 + 136);
              }

              else
              {
                v123 = *((v124 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v123)
                {
                  goto LABEL_81;
                }

LABEL_90:
                v128 = 0;
              }

              v109 = v125;
              v110 = pointa;
LABEL_92:
              v129 = (*(*v122 + 272))(v123);
              v130 = v129 * CGRectGetWidth(*(v122 + 16));
              v131 = CGRectGetMinX(*(v122 + 16));
              outlined destroy of ReflowTextLine(&__dst);
              v132 = v130 + v131 - __dst.ty;
              if (v128)
              {
                v133 = __OFADD__(v110, 1);
                v134 = v110 + 1;
                if (v133)
                {
                  goto LABEL_130;
                }

                v135 = v134;
                swift_beginAccess();
                v136 = *v153;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *v153 = v136;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v136 = specialized _ArrayBuffer._consumeAndCreateNew()(v136);
                }

                if (v107 >= *(v136 + 2))
                {
                  goto LABEL_132;
                }

                *&v136[v112 - 8] = v132;
              }

              else
              {
                if ((v110 & 0x8000000000000000) != 0)
                {
                  goto LABEL_131;
                }

                if (v110 >= *(v178 + 2))
                {
                  goto LABEL_133;
                }

                v135 = v110;
                v138 = *&v178[8 * v110 + 32];
                swift_beginAccess();
                v136 = *v153;
                v139 = swift_isUniquelyReferenced_nonNull_native();
                *v153 = v136;
                if ((v139 & 1) == 0)
                {
                  v136 = specialized _ArrayBuffer._consumeAndCreateNew()(v136);
                }

                if (v107 >= *(v136 + 2))
                {
                  goto LABEL_134;
                }

                *&v136[v112 - 8] = v138;
              }

              *v153 = v136;
              swift_endAccess();
              if (v107 >= *(v136 + 2))
              {
                goto LABEL_127;
              }

              v140 = *&v136[v112 - 8];
              swift_beginAccess();
              v141 = swift_isUniquelyReferenced_nonNull_native();
              *v153 = v136;
              if ((v141 & 1) == 0)
              {
                v136 = specialized _ArrayBuffer._consumeAndCreateNew()(v136);
              }

              if (v107 < *(v136 + 2))
              {
                *&v136[v112] = v132 - v140;
                *v153 = v136;
                swift_endAccess();

                v142 = v109 == v107++;
                v110 = v135;
                v111 = v174;
                if (v142)
                {
                  break;
                }

                goto LABEL_68;
              }

              goto LABEL_128;
            }
          }

          v128 = 1;
          goto LABEL_92;
        }
      }

      else if (*((*&__dst.a & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_75;
      }

      ++v107;
      outlined init with copy of ReflowTextLine(&v181, &v179);
      outlined destroy of ReflowTextLine(&__dst);
      v112 += 168;
    }

    while (v106 != v107);
  }

  v143 = *v153;
  v144 = *(*v153 + 2);
  if (v144)
  {
    v145 = (2 * v144) | 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8PaperKit14ReflowTextLineVGMd);
    v146 = swift_allocObject();
    *(v146 + 16) = xmmword_1D4058CF0;
    v148 = UnknownCanvasElementView.flags.modify(v146, v147);
    *(v146 + 32) = MEMORY[0x1E69E7CC0];
    *(v146 + 40) = 0u;
    *(v146 + 56) = 0u;
    *(v146 + 72) = 0u;
    *(v146 + 88) = v148;
    *(v146 + 96) = v149;
    *(v146 + 104) = 0;
    *(v146 + 112) = 0;
    *(v146 + 120) = v148;
    *(v146 + 128) = v149;
    *(v146 + 136) = 0;
    *(v146 + 144) = 0;
    *(v146 + 152) = v148;
    *(v146 + 160) = v149;
    *(v146 + 168) = 0u;
    *(v146 + 184) = 0u;
    swift_bridgeObjectRetain_n();
    __dst.a = v143;
    *&__dst.b = *&v143 + 32;
    *&__dst.c = 1;
    *&__dst.d = v145;
    specialized ArraySlice.append<A>(contentsOf:)(v146);
    v150 = *&__dst.c;
    v175 = *&__dst.a;
    __dst.a = v143;
    *&__dst.b = v175;
    *&__dst.d = v150;
    v151 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay8PaperKit14ReflowTextLineVGs10ArraySliceVyAJGG_AJs5NeverOTg503_s8f5Kit19h52LayoutManagerC8contents5frame09strokesToC0ACSayAA0C8iJ56VG_So6CGRectVSay06PencilB08PKStrokeVGtcfcA2H_AHt_tXEfU1_So0Z0VTf1cn_n(&__dst, a3, a4, a5, a6);
    swift_unknownObjectRelease();

    *(v152 + 88) = v151;

    return;
  }

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
}

uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay8PaperKit14ReflowTextLineVGs10ArraySliceVyAJGG_AJs5NeverOTg503_s8f5Kit19h52LayoutManagerC8contents5frame09strokesToC0ACSayAA0C8iJ56VG_So6CGRectVSay06PencilB08PKStrokeVGtcfcA2H_AHt_tXEfU1_So0Z0VTf1cn_n(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v75 = a1[3];
  v118 = a1[4] >> 1;
  v6 = v118 - v75;
  if (__OFSUB__(v118, v75))
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v7 = v5;
  v73 = a1[2];
  v74 = *a1;
  v12 = *(*a1 + 16);
  if (v6 >= v12)
  {
    v13 = *(*a1 + 16);
  }

  else
  {
    v13 = v118 - v75;
  }

  v117 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13 & ~(v13 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v14 = v117;
    v78 = v12;
    if (v13)
    {

      swift_unknownObjectRetain();
      v16 = 0;
      v17 = 0;
      v18 = 1;
      v77 = v75;
      while (1)
      {
        if (v17)
        {
          _s8PaperKit14ReflowTextLineV_ACtSgWOi0_(__src);
          memcpy(__dst, __src, sizeof(__dst));
          v17 = 1;
        }

        else
        {
          v19 = v78;
          if (v16 == v78)
          {
            goto LABEL_14;
          }

          if (v16 >= v78)
          {
            goto LABEL_45;
          }

          v20 = v74 + 32 + 168 * v16;
          v21 = *v20;
          v22 = *(v20 + 32);
          __src[1] = *(v20 + 16);
          __src[2] = v22;
          __src[0] = v21;
          v23 = *(v20 + 48);
          v24 = *(v20 + 64);
          v25 = *(v20 + 96);
          __src[5] = *(v20 + 80);
          __src[6] = v25;
          __src[3] = v23;
          __src[4] = v24;
          v26 = *(v20 + 112);
          v27 = *(v20 + 128);
          v28 = *(v20 + 144);
          *&__src[10] = *(v20 + 160);
          __src[8] = v27;
          __src[9] = v28;
          __src[7] = v26;
          v19 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            goto LABEL_46;
          }

          if (v77 == v118)
          {
LABEL_14:
            _s8PaperKit14ReflowTextLineV_ACtSgWOi0_(__src);
            memcpy(__dst, __src, sizeof(__dst));
            v17 = 1;
          }

          else
          {
            if (v77 < v75 || v77 >= v118)
            {
              goto LABEL_47;
            }

            v29 = (v73 + 168 * v77);
            v30 = *v29;
            v31 = v29[2];
            v92[1] = v29[1];
            v92[2] = v31;
            v92[0] = v30;
            v32 = v29[3];
            v33 = v29[4];
            v34 = v29[6];
            v92[5] = v29[5];
            v92[6] = v34;
            v92[3] = v32;
            v92[4] = v33;
            v35 = v29[7];
            v36 = v29[8];
            v37 = v29[9];
            *&v92[10] = *(v29 + 20);
            v92[8] = v36;
            v92[9] = v37;
            v92[7] = v35;
            ++v77;
            __dst[1] = __src[1];
            __dst[0] = __src[0];
            __dst[5] = __src[5];
            __dst[4] = __src[4];
            __dst[2] = __src[2];
            __dst[3] = __src[3];
            *&__dst[10] = *&__src[10];
            __dst[9] = __src[9];
            __dst[8] = __src[8];
            __dst[6] = __src[6];
            __dst[7] = __src[7];
            *(&__dst[18] + 8) = v36;
            *(&__dst[19] + 8) = v37;
            *(&__dst[20] + 1) = *&v92[10];
            *(&__dst[14] + 8) = v92[4];
            *(&__dst[15] + 8) = v92[5];
            *(&__dst[16] + 8) = v34;
            *(&__dst[17] + 8) = v35;
            *(&__dst[10] + 8) = v92[0];
            *(&__dst[11] + 8) = v92[1];
            *(&__dst[12] + 8) = v92[2];
            *(&__dst[13] + 8) = v92[3];
            UnknownCanvasElementView.flags.modify(__dst, v15);
            outlined init with copy of ReflowTextLine(__src, &v94);
            outlined init with copy of ReflowTextLine(v92, &v94);
            v17 = 0;
          }

          v16 = v19;
        }

        memcpy(__src, __dst, sizeof(__src));
        if (sub_1D38E1F74(__src) == 1)
        {
          goto LABEL_50;
        }

        closure #3 in ReflowLayoutManager.init(contents:frame:strokesToReflow:)(__dst, &v106, a2, a3, a4, a5);
        if (v7)
        {
          goto LABEL_51;
        }

        v7 = 0;
        memcpy(v92, __dst, sizeof(v92));
        outlined destroy of StocksKitCurrencyCache.Provider?(v92, &_s8PaperKit14ReflowTextLineV_ACtMd);
        v95 = v107;
        v99 = v111;
        v98 = v110;
        v96 = v108;
        v97 = v109;
        v103 = v115;
        v102 = v114;
        v100 = v112;
        v101 = v113;
        v104 = v116;
        v39 = *(v14 + 16);
        v38 = *(v14 + 24);
        v94 = v106;
        v117 = v14;
        if (v39 >= v38 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1);
          v14 = v117;
        }

        *(v14 + 16) = v39 + 1;
        v40 = v14 + 168 * v39;
        v41 = v94;
        v42 = v96;
        *(v40 + 48) = v95;
        *(v40 + 64) = v42;
        *(v40 + 32) = v41;
        v43 = v97;
        v44 = v98;
        v45 = v100;
        *(v40 + 112) = v99;
        *(v40 + 128) = v45;
        *(v40 + 80) = v43;
        *(v40 + 96) = v44;
        v46 = v101;
        v47 = v102;
        v48 = v103;
        *(v40 + 192) = v104;
        *(v40 + 160) = v47;
        *(v40 + 176) = v48;
        *(v40 + 144) = v46;
        if (v13 == v18)
        {
          v12 = v78;
          if ((v17 & 1) == 0)
          {
            goto LABEL_30;
          }

          goto LABEL_41;
        }

        if (__OFADD__(v18++, 1))
        {
          __break(1u);
          goto LABEL_42;
        }
      }
    }

    swift_unknownObjectRetain();
    v16 = 0;
    v77 = v75;
LABEL_30:
    if (v16 == v12)
    {
LABEL_41:
      swift_unknownObjectRelease();

      return v14;
    }

    v50 = 168 * v16 + 32;
    v51 = v77;
    v52 = (v73 + 168 * v77);
    while (v16 < v12)
    {
      v53 = *(v74 + v50);
      v54 = *(v74 + v50 + 16);
      v108 = *(v74 + v50 + 32);
      v107 = v54;
      v106 = v53;
      v55 = *(v74 + v50 + 48);
      v56 = *(v74 + v50 + 64);
      v57 = *(v74 + v50 + 80);
      v112 = *(v74 + v50 + 96);
      v111 = v57;
      v110 = v56;
      v109 = v55;
      v58 = *(v74 + v50 + 112);
      v59 = *(v74 + v50 + 128);
      v60 = *(v74 + v50 + 144);
      v116 = *(v74 + v50 + 160);
      v115 = v60;
      v114 = v59;
      v113 = v58;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_43;
      }

      if (v118 != v51)
      {
        if (v77 < v75 || v51 >= v118)
        {
          goto LABEL_44;
        }

        v76 = v16 + 1;
        v61 = *v52;
        v62 = v52[1];
        v96 = v52[2];
        v95 = v62;
        v94 = v61;
        v63 = v52[3];
        v64 = v52[4];
        v65 = v52[5];
        v100 = v52[6];
        v99 = v65;
        v98 = v64;
        v97 = v63;
        v66 = v52[7];
        v67 = v52[8];
        v68 = v52[9];
        v104 = *(v52 + 20);
        v103 = v68;
        v102 = v67;
        v101 = v66;
        __src[8] = v114;
        __src[9] = v115;
        *&__src[10] = v116;
        __src[4] = v110;
        __src[5] = v111;
        __src[6] = v112;
        __src[7] = v113;
        __src[0] = v106;
        __src[1] = v107;
        __src[2] = v108;
        __src[3] = v109;
        *(&__src[17] + 8) = v52[7];
        *(&__src[18] + 8) = v52[8];
        *(&__src[19] + 8) = v52[9];
        *(&__src[20] + 1) = *(v52 + 20);
        *(&__src[13] + 8) = v52[3];
        *(&__src[14] + 8) = v52[4];
        *(&__src[15] + 8) = v52[5];
        *(&__src[16] + 8) = v52[6];
        *(&__src[10] + 8) = *v52;
        *(&__src[11] + 8) = v52[1];
        *(&__src[12] + 8) = v52[2];
        memcpy(__dst, __src, sizeof(__dst));
        outlined init with copy of ReflowTextLine(&v106, v92);
        outlined init with copy of ReflowTextLine(&v94, v92);
        closure #3 in ReflowLayoutManager.init(contents:frame:strokesToReflow:)(__dst, v90, a2, a3, a4, a5);
        if (v7)
        {
          goto LABEL_52;
        }

        v7 = 0;
        memcpy(v92, __dst, sizeof(v92));
        outlined destroy of StocksKitCurrencyCache.Provider?(v92, &_s8PaperKit14ReflowTextLineV_ACtMd);
        v83 = v90[4];
        v84 = v90[5];
        v80 = v90[1];
        v81 = v90[2];
        v82 = v90[3];
        v87 = v90[8];
        v88 = v90[9];
        v85 = v90[6];
        v86 = v90[7];
        v89 = v91;
        v70 = *(v14 + 16);
        v69 = *(v14 + 24);
        v79 = v90[0];
        v117 = v14;
        if (v70 >= v69 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v69 > 1), v70 + 1, 1);
          v14 = v117;
        }

        *(v14 + 16) = v70 + 1;
        v71 = v14 + 168 * v70;
        *(v71 + 48) = v80;
        *(v71 + 64) = v81;
        *(v71 + 32) = v79;
        *(v71 + 112) = v84;
        *(v71 + 128) = v85;
        *(v71 + 80) = v82;
        *(v71 + 96) = v83;
        *(v71 + 192) = v89;
        *(v71 + 160) = v87;
        *(v71 + 176) = v88;
        ++v16;
        *(v71 + 144) = v86;
        v50 += 168;
        v52 = (v52 + 168);
        ++v51;
        v12 = v78;
        if (v76 != v78)
        {
          continue;
        }
      }

      goto LABEL_41;
    }

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
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:

  swift_unknownObjectRelease();

  memcpy(v92, __dst, sizeof(v92));
  outlined destroy of StocksKitCurrencyCache.Provider?(v92, &_s8PaperKit14ReflowTextLineV_ACtMd);
  __break(1u);
LABEL_52:
  memcpy(v92, __dst, sizeof(v92));
  outlined destroy of StocksKitCurrencyCache.Provider?(v92, &_s8PaperKit14ReflowTextLineV_ACtMd);

  swift_unknownObjectRelease();

  __break(1u);
  return result;
}

uint64_t closure #3 in ReflowLayoutManager.init(contents:frame:strokesToReflow:)@<X0>(void *__src@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat MaxX@<D2>, CGFloat Width@<D3>)
{
  memcpy(__dst, __src, sizeof(__dst));
  outlined init with copy of Date?(__dst, &v24, &_s8PaperKit14ReflowTextLineV_ACtMd);
  outlined destroy of ReflowTextLine(&__dst[10] + 8);
  v11 = *&__dst[0];
  v33 = __dst[0];
  v34 = __dst[1];
  v29 = *(&__dst[6] + 8);
  v30 = *(&__dst[7] + 8);
  v31 = *(&__dst[8] + 8);
  v32 = *(&__dst[9] + 8);
  v25 = *(&__dst[2] + 8);
  v26 = *(&__dst[3] + 8);
  v27 = *(&__dst[4] + 8);
  v28 = *(&__dst[5] + 8);
  if (*&__dst[0] >> 62)
  {
    result = __CocoaSet.count.getter();
    v13 = 0.0;
    if (!result)
    {
      goto LABEL_17;
    }
  }

  else
  {
    result = *((*&__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    v13 = 0.0;
    if (!result)
    {
LABEL_17:
      v19 = v34;
      *a2 = v33;
      *(a2 + 16) = v19;
      *(a2 + 32) = v13;
      v20 = v30;
      *(a2 + 104) = v29;
      *(a2 + 120) = v20;
      v21 = v32;
      *(a2 + 136) = v31;
      *(a2 + 152) = v21;
      v22 = v26;
      *(a2 + 40) = v25;
      *(a2 + 56) = v22;
      v23 = v28;
      *(a2 + 72) = v27;
      *(a2 + 88) = v23;
      return result;
    }
  }

  v14 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
LABEL_21:

    v15 = MEMORY[0x1DA6CE0C0](v14, v11);

    if (*(v15 + 136))
    {
      goto LABEL_16;
    }

    goto LABEL_8;
  }

  if ((v11 & 0xC000000000000001) != 0)
  {
    goto LABEL_21;
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v14 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    result = __CocoaSet.count.getter();
    if (!result)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  v15 = *(v11 + 8 * v14 + 32);

  if (*(v15 + 136))
  {
    goto LABEL_16;
  }

LABEL_8:
  v36.origin.x = a3;
  v36.origin.y = a4;
  v36.size.width = MaxX;
  v36.size.height = Width;
  Width = CGRectGetWidth(v36);
  MaxX = CGRectGetMaxX(*(v15 + 16));
  v11 = *(&__dst[10] + 1);
  if (*(&__dst[10] + 1) >> 62)
  {
    goto LABEL_25;
  }

  result = *((*(&__dst[10] + 1) & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_16;
  }

LABEL_10:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x1DA6CE0C0](0, v11);
    goto LABEL_13;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(v11 + 32);

LABEL_13:
    v17 = Width - MaxX;
    if (CGRectGetWidth(*(v16 + 16)) + 15.0 < v17)
    {
      v18 = CGRectGetWidth(*(v16 + 16));

      v13 = v17 - (v18 * 0.5 + 15.0);
      goto LABEL_17;
    }

LABEL_16:

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

BOOL ReflowLayoutManager.canReplaceStrokesAtomically(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v36 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v31 - v7;
  v37 = a1;
  if (!*(a1 + 16))
  {
    return 1;
  }

  swift_beginAccess();
  v32 = *(v1 + 80);
  v9 = v32;
  v10 = v32 & 0xFFFFFFFFFFFFFF8;
  if (v32 >> 62)
  {
LABEL_33:
    v11 = __CocoaSet.count.getter();
    v9 = v32;
  }

  else
  {
    v11 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v39 = v9 + 32;
  v40 = v9 & 0xC000000000000001;
  v12 = (v36 + 8);

  v13 = 0;
  v14 = 0;
  v34 = v11;
  v35 = v10;
  while (2)
  {
    v33 = v13;
    if (v14 != v11)
    {
      while (1)
      {
        while (1)
        {
          if (v40)
          {
            v15 = MEMORY[0x1DA6CE0C0](v14, v32);
            v16 = __OFADD__(v14++, 1);
            if (v16)
            {
              goto LABEL_31;
            }
          }

          else
          {
            if (v14 >= *(v10 + 16))
            {
              goto LABEL_32;
            }

            v15 = *(v39 + 8 * v14);

            v16 = __OFADD__(v14++, 1);
            if (v16)
            {
LABEL_31:
              __break(1u);
LABEL_32:
              __break(1u);
              goto LABEL_33;
            }
          }

          type metadata accessor for ReflowWord();
          v17 = swift_dynamicCastClass();
          if (v17)
          {
            break;
          }

          if (v14 == v11)
          {
            goto LABEL_27;
          }
        }

        v41 = v14;
        v42 = v15;
        v18 = *(v17 + 288);
        v19 = *(v18 + 16);
        v20 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakRef<CRRegister<TaggedStroke>> and conformance WeakRef<A>, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);

        v21 = MEMORY[0x1DA6CD4F0](v19, v3, v20);
        v22 = v18;
        v43 = v21;
        v23 = *(v18 + 16);
        if (v23)
        {
          v24 = (*(v36 + 80) + 32) & ~*(v36 + 80);
          v38 = v22;
          v25 = v22 + v24;
          v26 = *(v36 + 72);
          v27 = *(v36 + 16);
          do
          {
            v27(v8, v25, v3);
            specialized Set._Variant.insert(_:)(v5, v8);
            (*v12)(v5, v3);
            v25 += v26;
            --v23;
          }

          while (v23);

          v21 = v43;
          v11 = v34;
          v10 = v35;
        }

        else
        {
        }

        if ((specialized Set.isDisjoint(with:)(v37, v21) & 1) == 0)
        {
          break;
        }

        v14 = v41;
        if (v41 == v11)
        {
          goto LABEL_27;
        }
      }

      v28 = specialized Set.isSubset(of:)(v37, v21);

      if ((v28 & 1) == 0)
      {

        return 0;
      }

      v29 = *(v21 + 16);

      v16 = __OFADD__(v33, v29);
      v13 = v33 + v29;
      v14 = v41;
      if (!v16)
      {
        continue;
      }

      __break(1u);
    }

    break;
  }

LABEL_27:

  return v33 == *(v37 + 16);
}

uint64_t specialized Set.isDisjoint(with:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v45 = &v34 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v40 = &v34 - v11;
  v12 = *(a2 + 16);
  if (!v12)
  {
    return 1;
  }

  v13 = *(a1 + 16);
  if (!v13)
  {
    return 1;
  }

  if (v12 >= v13)
  {
    v14 = a1;
  }

  else
  {
    v14 = a2;
  }

  if (v12 < v13)
  {
    a2 = a1;
  }

  v15 = v14 + 56;
  v16 = 1 << *(v14 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(v14 + 56);
  v19 = (v16 + 63) >> 6;
  v43 = v5 + 16;
  v38 = v5 + 32;
  v39 = v14;
  v41 = a2 + 56;
  v20 = (v5 + 8);

  v44 = a2;

  v22 = 0;
  v35 = v19;
  v36 = v15;
  v37 = v5;
  while (v18)
  {
LABEL_18:
    v24 = v40;
    v25 = *(v39 + 48);
    v42 = *(v5 + 72);
    v26 = *(v5 + 16);
    v26(v40, v25 + v42 * (__clz(__rbit64(v18)) | (v22 << 6)), v4);
    (*(v5 + 32))(v45, v24, v4);
    if (*(v44 + 16))
    {
      v27 = v44;
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakRef<CRRegister<TaggedStroke>> and conformance WeakRef<A>, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
      v28 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v29 = -1 << *(v27 + 32);
      v30 = v28 & ~v29;
      if ((*(v41 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30))
      {
        v31 = ~v29;
        while (1)
        {
          v26(v7, *(v44 + 48) + v30 * v42, v4);
          lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakRef<CRRegister<TaggedStroke>> and conformance WeakRef<A>, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
          v32 = dispatch thunk of static Equatable.== infix(_:_:)();
          v33 = *v20;
          (*v20)(v7, v4);
          if (v32)
          {
            break;
          }

          v30 = (v30 + 1) & v31;
          if (((*(v41 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        v33(v45, v4);
        return 0;
      }
    }

LABEL_12:
    v18 &= v18 - 1;
    result = (*v20)(v45, v4);
    v15 = v36;
    v5 = v37;
    v19 = v35;
  }

  while (1)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v23 >= v19)
    {

      return 1;
    }

    v18 = *(v15 + 8 * v23);
    ++v22;
    if (v18)
    {
      v22 = v23;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

int64_t ReflowLayoutManager.replaceStrokes(_:with:)(uint64_t a1, unint64_t a2)
{
  v135 = a1;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
  v119 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v123 = &v118 - v5;
  v134 = type metadata accessor for PKDrawingStruct(0);
  MEMORY[0x1EEE9AC00](v134);
  v133 = &v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  v120 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v132 = &v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v136 = &v118 - v9;
  v10 = type metadata accessor for IndexSet();
  v121 = *(v10 - 8);
  v122 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = a2;

  v127 = v12;
  IndexSet.init()();
  swift_beginAccess();
  v126 = v2;
  v13 = *(v2 + 80);
  if (v13 >> 62)
  {
    goto LABEL_69;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v125 = a2;

  if (v14)
  {
    v15 = 0;
    v143 = 0;
    v138 = v13 & 0xFFFFFFFFFFFFFF8;
    v139 = (v13 & 0xC000000000000001);
    v128 = v120 + 8;
    v129 = (v120 + 16);
    v130 = v14;
    v131 = v13;
    v16 = (v120 + 8);
    while (1)
    {
      if (v139)
      {
        a2 = MEMORY[0x1DA6CE0C0](v15, v13);
        v3 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
LABEL_15:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v15 >= *(v138 + 16))
        {
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          v14 = __CocoaSet.count.getter();
          goto LABEL_3;
        }

        a2 = *(v13 + 8 * v15 + 32);

        v3 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_15;
        }
      }

      type metadata accessor for ReflowWord();
      v17 = swift_dynamicCastClass();
      if (v17)
      {
        v18 = v17;
        v141 = v3;
        v142 = a2;
        v19 = *(v17 + 280);
        v20 = OBJC_IVAR___PKDrawingCoherence_model;
        swift_beginAccess();
        v21 = *v129;
        v22 = v19 + v20;
        v23 = v136;
        v24 = v137;
        (*v129)(v136, v22, v137);
        v25 = v133;
        Capsule.root.getter();
        v140 = *v16;
        (v140)(v23, v24);
        v26 = *(v18 + 280);
        v27 = OBJC_IVAR___PKDrawingCoherence_model;
        swift_beginAccess();
        v28 = v26 + v27;
        v12 = v132;
        v29 = (v21)(v132, v28, v24);
        MEMORY[0x1EEE9AC00](v29);
        *(&v118 - 2) = v135;
        *(&v118 - 1) = v12;
        v30 = v143;
        LOBYTE(v26) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Ref<>.containsStrokes<A>(_:in:), (&v118 - 4));
        v143 = v30;
        _s8PaperKit15PKDrawingStructVWOhTm_1(v25, type metadata accessor for PKDrawingStruct);
        (v140)(v12, v24);
        if (v26)
        {
          IndexSet.insert(_:)(v15);
        }

        v14 = v130;
        v13 = v131;
        v3 = v141;
        a2 = v142;
      }

      ++v15;
      if (v3 == v14)
      {
        goto LABEL_17;
      }
    }
  }

  v143 = 0;
LABEL_17:

  v31 = IndexSet.isEmpty.getter();
  v32 = v125;
  if ((v31 & 1) == 0)
  {
    goto LABEL_20;
  }

  if (!(v125 >> 62))
  {
    if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_20;
    }

LABEL_71:
    v57 = type metadata accessor for ReflowLayoutManager.TextPosition();
    v58 = objc_allocWithZone(v57);
    *&v58[OBJC_IVAR____TtCC8PaperKit19ReflowLayoutManager12TextPosition_index] = 0;
    v58[OBJC_IVAR____TtCC8PaperKit19ReflowLayoutManager12TextPosition_affinity] = 0;
    v144.receiver = v58;
    v144.super_class = v57;
    objc_msgSendSuper2(&v144, sel_init);
LABEL_238:
    (*(v121 + 8))(v127, v122);

    return MEMORY[0x1E69E7CD0];
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_71;
  }

LABEL_20:
  v33 = IndexSet.first.getter();
  if ((v34 & 1) == 0)
  {
    v35 = v33;
    v36 = IndexSet.last.getter();
    if ((v37 & 1) == 0)
    {
      goto LABEL_44;
    }
  }

  v38 = v126;
  swift_beginAccess();
  v39 = *(v38 + 176);
  v153[0] = *(v38 + 160);
  v153[1] = v39;
  v154[0] = *(v38 + 192);
  *(v154 + 11) = *(v38 + 203);
  v40 = *&v153[0];
  if (!*&v153[0])
  {
    goto LABEL_59;
  }

  v3 = BYTE8(v153[0]);
  v13 = *(v38 + 80);
  v32 = v13 & 0xFFFFFFFFFFFFFF8;
  if (v13 >> 62)
  {
    v41 = __CocoaSet.count.getter();
  }

  else
  {
    v41 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = &_s8PaperKit23ReflowSpacingAdjustmentVSgMd;
  outlined init with copy of Date?(v153, v150, &_s8PaperKit23ReflowSpacingAdjustmentVSgMd);
  outlined init with copy of Date?(v153, v150, &_s8PaperKit23ReflowSpacingAdjustmentVSgMd);
  v35 = v13 & 0xC000000000000001;

  v42 = -v41;
  v14 = 4;
  while (1)
  {
    if (v42 + v14 == 4)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v153, &_s8PaperKit23ReflowSpacingAdjustmentVSgMd);

      outlined destroy of StocksKitCurrencyCache.Provider?(v153, &_s8PaperKit23ReflowSpacingAdjustmentVSgMd);
LABEL_59:
      v50 = type metadata accessor for ReflowLayoutManager.TextPosition();
      v51 = objc_allocWithZone(v50);
      *&v51[OBJC_IVAR____TtCC8PaperKit19ReflowLayoutManager12TextPosition_index] = 0;
      v51[OBJC_IVAR____TtCC8PaperKit19ReflowLayoutManager12TextPosition_affinity] = 0;
      v152.receiver = v51;
      v152.super_class = v50;
      objc_msgSendSuper2(&v152, sel_init);
      goto LABEL_238;
    }

    a2 = v14 - 4;
    if (!v35)
    {
      break;
    }

    v12 = MEMORY[0x1DA6CE0C0](v14 - 4, v13);
    swift_unknownObjectRelease();
    if (v12 == v40)
    {
      goto LABEL_34;
    }

LABEL_30:
    ++v14;
    if (__OFADD__(a2, 1))
    {
      goto LABEL_68;
    }
  }

  if (a2 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_67;
  }

  if (*(v13 + 8 * v14) != v40)
  {
    goto LABEL_30;
  }

LABEL_34:
  outlined destroy of StocksKitCurrencyCache.Provider?(v153, &_s8PaperKit23ReflowSpacingAdjustmentVSgMd);

  type metadata accessor for ReflowSpace();
  v12 = swift_allocObject();
  *(v12 + 160) = 1;
  *(v12 + 152) = 0;
  v44 = UnknownCanvasElementView.flags.modify(v12, v43);
  *(v12 + 64) = 0u;
  *(v12 + 80) = 0u;
  *(v12 + 96) = 0;
  *(v12 + 104) = v44;
  *(v12 + 112) = v45;
  *(v12 + 120) = -1;
  *(v12 + 128) = 0;
  *(v12 + 136) = 0;
  *(v12 + 144) = 0;
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = xmmword_1D40671D0;
  *(v12 + 48) = 0u;
  if ((v3 & 1) == 0)
  {
    MEMORY[0x1DA6CD190]();
    if (*((v155 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v155 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_92;
    }

    goto LABEL_62;
  }

  if (v125 >> 62)
  {
    goto LABEL_90;
  }

LABEL_36:
  v46 = &v155;
  specialized Array.replaceSubrange<A>(_:with:)(0, 0, v12);

  v12 = *(v126 + 80);
  if ((v12 & 0xC000000000000001) == 0)
  {
    if (a2 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      goto LABEL_39;
    }

    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  MEMORY[0x1DA6CE0C0](a2, v12);

LABEL_39:
  type metadata accessor for ReflowWord();
  v47 = swift_dynamicCastClass();
  if (v47)
  {
    *(v47 + 136) = 0;
  }

  v14 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    while (1)
    {
      v12 = v155;
      v3 = v126;
      swift_beginAccess();

      specialized Array.replaceSubrange<A>(_:with:)(v14, v14, v12);
      swift_endAccess();

      v52 = *(v3 + 176);
      v150[0] = *(v3 + 160);
      v150[1] = v52;
      v151[0] = *(v3 + 192);
      *(v151 + 11) = *(v3 + 203);
      *(v3 + 160) = 0u;
      *(v3 + 176) = 0u;
      *(v3 + 192) = 0u;
      *(v3 + 203) = 0u;
      outlined destroy of StocksKitCurrencyCache.Provider?(v150, &_s8PaperKit23ReflowSpacingAdjustmentVSgMd);
      if (v12 >> 62)
      {
LABEL_86:
        v61 = __CocoaSet.count.getter();
        v54 = __OFADD__(a2, v61);
        a2 += v61;
        if (!v54)
        {
LABEL_65:
          v55 = type metadata accessor for ReflowLayoutManager.TextPosition();
          v56 = objc_allocWithZone(v55);
          *&v56[OBJC_IVAR____TtCC8PaperKit19ReflowLayoutManager12TextPosition_index] = a2;
          v56[OBJC_IVAR____TtCC8PaperKit19ReflowLayoutManager12TextPosition_affinity] = 0;
          v149.receiver = v56;
          v149.super_class = v55;
          objc_msgSendSuper2(&v149, sel_init);
          outlined destroy of StocksKitCurrencyCache.Provider?(v153, &_s8PaperKit23ReflowSpacingAdjustmentVSgMd);
          goto LABEL_238;
        }
      }

      else
      {
        v53 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v54 = __OFADD__(a2, v53);
        a2 += v53;
        if (!v54)
        {
          goto LABEL_65;
        }
      }

      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      if ((__CocoaSet.count.getter() & 0x8000000000000000) == 0)
      {
        goto LABEL_36;
      }

      __break(1u);
LABEL_92:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_62:
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v14 = a2;
    }
  }

  __break(1u);
LABEL_44:
  v40 = v36;
  v48 = *(v126 + 80);
  if ((v48 & 0xC000000000000001) != 0)
  {

    v12 = MEMORY[0x1DA6CE0C0](v35, v48);

    goto LABEL_48;
  }

  if (v35 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v35 >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_86;
    }

    v12 = *(v48 + 8 * v35 + 32);

LABEL_48:
    v3 = *(v12 + 120);

    v132 = (v32 >> 62);
    if (!(v32 >> 62))
    {
      v46 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v46)
      {
        goto LABEL_76;
      }

LABEL_50:
      if (v46 >= 1)
      {

        for (i = 0; i != v46; ++i)
        {
          if ((v32 & 0xC000000000000001) != 0)
          {
            v12 = MEMORY[0x1DA6CE0C0](i, v32);
          }

          else
          {
            v12 = *(v32 + 8 * i + 32);
          }

          type metadata accessor for ReflowWord();
          if (swift_dynamicCastClass())
          {
            *(v12 + 120) = v3;
          }
        }

        v14 = v40;
        goto LABEL_99;
      }

      goto LABEL_89;
    }
  }

  v46 = __CocoaSet.count.getter();
  if (v46)
  {
    goto LABEL_50;
  }

LABEL_76:
  v14 = v40 + 1;
  if (__OFADD__(v40, 1))
  {
    goto LABEL_95;
  }

  v59 = *(v126 + 80);
  if (v59 >> 62)
  {
LABEL_96:
    result = __CocoaSet.count.getter();
    if (v14 >= result)
    {
      goto LABEL_97;
    }

LABEL_79:
    v12 = *(v126 + 80);
    if ((v12 & 0xC000000000000001) == 0)
    {
      if (v14 < 0)
      {
        __break(1u);
      }

      else if (v14 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v46 = *(v12 + 8 * v14 + 32);

LABEL_83:
        type metadata accessor for ReflowSpace();
        v12 = swift_dynamicCastClass();

        if (!v12)
        {
          goto LABEL_98;
        }

        v46 = v127;
        IndexSet.insert(_:)(v14);
        goto LABEL_99;
      }

      __break(1u);
      goto LABEL_254;
    }

LABEL_251:

    v46 = MEMORY[0x1DA6CE0C0](v14, v12);

    goto LABEL_83;
  }

  result = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v14 < result)
  {
    goto LABEL_79;
  }

LABEL_97:

LABEL_98:
  v14 = v40;
LABEL_99:
  if (v14 < v35)
  {
    goto LABEL_219;
  }

  v32 = v14 + 1;
  if (__OFADD__(v14, 1))
  {
LABEL_220:
    __break(1u);
LABEL_221:
    if (__CocoaSet.count.getter() < v35)
    {
      goto LABEL_222;
    }

LABEL_103:
    if (v35 < 0)
    {
      goto LABEL_223;
    }

    v62 = v46 & 0xFFFFFFFFFFFFFF8;
    if (v14)
    {
      v63 = __CocoaSet.count.getter();
    }

    else
    {
      v63 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v63 < v32)
    {
      goto LABEL_224;
    }

    if ((v32 & 0x8000000000000000) != 0)
    {
      goto LABEL_225;
    }

    if ((v46 & 0xC000000000000001) == 0)
    {
      goto LABEL_112;
    }

    if (v32 < v35)
    {
      __break(1u);
      goto LABEL_240;
    }

    if (v35 != v32)
    {
      if (v35 >= v32)
      {
        __break(1u);
LABEL_250:
        __break(1u);
        goto LABEL_251;
      }

      v12 = type metadata accessor for ReflowElement();
      swift_bridgeObjectRetain_n();
      v64 = v35;
      do
      {
        v65 = v64 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v64);
        v64 = v65;
      }

      while (v32 != v65);
    }

    else
    {
LABEL_112:
      swift_bridgeObjectRetain_n();
    }

    v133 = v40;

    if (v14)
    {
      v14 = _CocoaArrayWrapper.subscript.getter();
      v67 = v68;
      v40 = v69;
      v12 = v70;

      v66 = v14;
      v46 = v12 >> 1;
    }

    else
    {
      v66 = v46 & 0xFFFFFFFFFFFFFF8;
      v67 = (v46 & 0xFFFFFFFFFFFFFF8) + 32;
      v40 = v35;
      v46 = v32;
    }

    v138 = v32;
    v134 = v66;
    v135 = v35;
    swift_unknownObjectRetain();
    v71 = v46 - v40;
    if (v46 == v40)
    {
      v3 = MEMORY[0x1E69E7CC0];
LABEL_121:
      swift_unknownObjectRelease_n();
      v12 = *(v126 + 80);
      v62 = v12 & 0xFFFFFFFFFFFFFF8;
      v14 = v12 >> 62;
      if (v12 >> 62)
      {
        goto LABEL_226;
      }

      v72 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v73 = v135;
      if (v72 < v135)
      {
        __break(1u);
      }

      else
      {
LABEL_123:
        if (v72 >= v138)
        {
          if ((v12 & 0xC000000000000001) == 0)
          {
LABEL_127:
            swift_bridgeObjectRetain_n();
LABEL_154:

            if (v14)
            {
              v46 = _CocoaArrayWrapper.subscript.getter();
              v40 = v96;
              v35 = v97;
              v32 = v98;

              if ((v32 & 1) == 0)
              {
                goto LABEL_157;
              }
            }

            else
            {
              v46 = v12 & 0xFFFFFFFFFFFFFF8;
              v40 = (v12 & 0xFFFFFFFFFFFFFF8) + 32;
              v32 = (2 * v138) | 1;
              v35 = v73;
            }

            type metadata accessor for __ContiguousArrayStorageBase();
            swift_unknownObjectRetain_n();
            v100 = swift_dynamicCastClass();
            if (!v100)
            {
              swift_unknownObjectRelease();
              v100 = MEMORY[0x1E69E7CC0];
            }

            v101 = *(v100 + 16);

            if (__OFSUB__(v32 >> 1, v35))
            {
              goto LABEL_247;
            }

            if (v101 != (v32 >> 1) - v35)
            {
              goto LABEL_248;
            }

            v32 = swift_dynamicCastClass();
            swift_unknownObjectRelease_n();
            v12 = v125;
            v14 = v133;
            if (v32)
            {
              goto LABEL_165;
            }

            v32 = MEMORY[0x1E69E7CC0];
            while (1)
            {
              swift_unknownObjectRelease();
LABEL_165:
              v46 = *(v126 + 80);
              if ((v46 & 0xC000000000000001) != 0)
              {
LABEL_233:

                v40 = MEMORY[0x1DA6CE0C0](v14, v46);
              }

              else
              {
                if (v14 < 0)
                {
                  __break(1u);
LABEL_235:
                  __break(1u);
                  goto LABEL_236;
                }

                if (v14 >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_235;
                }

                v40 = *(v46 + 8 * v14 + 32);
              }

              LODWORD(v14) = *(v40 + 136);

              swift_beginAccess();
              specialized Array.replaceSubrange<A>(_:with:)(v73, v138, v12);
              swift_endAccess();

              if ((v32 & 0x8000000000000000) == 0 && (v32 & 0x4000000000000000) == 0)
              {
                v46 = *(v32 + 16);
                if (!v46)
                {
                  goto LABEL_237;
                }

                goto LABEL_172;
              }

LABEL_236:
              v46 = __CocoaSet.count.getter();
              if (!v46)
              {
LABEL_237:

                v116 = type metadata accessor for ReflowLayoutManager.TextPosition();
                v117 = objc_allocWithZone(v116);
                *&v117[OBJC_IVAR____TtCC8PaperKit19ReflowLayoutManager12TextPosition_index] = 0;
                v117[OBJC_IVAR____TtCC8PaperKit19ReflowLayoutManager12TextPosition_affinity] = 0;
                v145.receiver = v117;
                v145.super_class = v116;
                objc_msgSendSuper2(&v145, sel_init);
                goto LABEL_238;
              }

LABEL_172:
              v141 = v32;
              LODWORD(v142) = v14;
              if ((v32 & 0xC000000000000001) != 0)
              {
LABEL_241:
                v14 = MEMORY[0x1DA6CE0C0](0, v32);
                result = v46 - 1;
                if (__OFSUB__(v46, 1))
                {
                  goto LABEL_255;
                }

                v32 = MEMORY[0x1DA6CE0C0](result, v141);
                v73 = v135;
              }

              else
              {
                v102 = *(v32 + 16);
                if (!v102)
                {
                  __break(1u);
LABEL_244:
                  __break(1u);
LABEL_245:
                  __break(1u);
                  goto LABEL_246;
                }

                v103 = v46 - 1;
                if (__OFSUB__(v46, 1))
                {
                  goto LABEL_244;
                }

                if (v103 >= v102)
                {
                  goto LABEL_245;
                }

                v14 = *(v32 + 32);
                v32 = *(v32 + 32 + 8 * v103);
              }

              v148 = 0;
              v35 = v126;
              swift_beginAccess();
              v46 = *(v35 + 96);
              v40 = *(v46 + 16);
              if (v40)
              {
                swift_beginAccess();
                v12 = 0;
                v104 = 32;
                do
                {
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  *(v35 + 96) = v46;
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    v46 = specialized _ArrayBuffer._consumeAndCreateNew()(v46);
                    *(v126 + 96) = v46;
                  }

                  if (v12 >= *(v46 + 16))
                  {
                    goto LABEL_213;
                  }

                  ++v12;
                  specialized modifyLayoutLine #1 (layoutLine:) in ReflowLayoutManager.replaceStrokes(_:with:)((v46 + v104), &v148, v14, v32);
                  v35 = v126;
                  *(v126 + 96) = v46;
                  v104 += 168;
                }

                while (v40 != v12);
                swift_endAccess();
                v73 = v135;
              }

              v106 = v126;
              swift_beginAccess();
              v40 = *(v106 + 88);
              *(v106 + 88) = v46;

              if (v142)
              {
                v146 = v125;
                if (v132)
                {
                  v107 = __CocoaSet.count.getter();
                  if (!v107)
                  {
LABEL_199:
                    v73 = v135;
                    goto LABEL_203;
                  }
                }

                else
                {
                  v107 = *((v125 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  if (!v107)
                  {
                    goto LABEL_199;
                  }
                }

                v108 = v125 & 0xC000000000000001;
                v12 = v125 & 0xFFFFFFFFFFFFFF8;
                v46 = v125 + 32;
                while (1)
                {
                  v54 = __OFSUB__(v107--, 1);
                  if (v54)
                  {
                    goto LABEL_216;
                  }

                  if (v108)
                  {
                    v40 = MEMORY[0x1DA6CE0C0](v107, v125);
                  }

                  else
                  {
                    if ((v107 & 0x8000000000000000) != 0)
                    {
                      goto LABEL_217;
                    }

                    if (v107 >= *(v12 + 16))
                    {
                      goto LABEL_218;
                    }

                    v40 = *(v46 + 8 * v107);
                  }

                  type metadata accessor for ReflowWord();
                  v35 = swift_dynamicCastClass();

                  if (v35)
                  {
                    break;
                  }

                  if (!v107)
                  {
                    goto LABEL_199;
                  }
                }

                MEMORY[0x1EEE9AC00](v109);
                *(&v118 - 2) = &v146;
                v156 = v107;
                v110 = v143;
                result = partial apply for specialized closure #1 in BidirectionalCollection.last(where:)(&v156, &v157);
                if (v110)
                {
                  goto LABEL_256;
                }

                v73 = v135;
                if (v157)
                {
                  *(v157 + 136) = 1;
                }
              }

LABEL_203:
              v111 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence7WeakRefVyAD10CRRegisterVy8PaperKit12TaggedStrokeOGG_SayAMGTt0g5Tf4g_n(v3);

              if (v73)
              {
                v46 = v73 - 1;
                if (!v132)
                {
                  goto LABEL_205;
                }
              }

              else
              {
                v46 = 0;
                if (!v132)
                {
LABEL_205:
                  v112 = *((v125 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  goto LABEL_208;
                }
              }

              v112 = __CocoaSet.count.getter();
LABEL_208:
              v113 = v46 + v112;
              if (!__OFADD__(v46, v112))
              {
                v114 = type metadata accessor for ReflowLayoutManager.TextPosition();
                v115 = objc_allocWithZone(v114);
                *&v115[OBJC_IVAR____TtCC8PaperKit19ReflowLayoutManager12TextPosition_index] = v113;
                v115[OBJC_IVAR____TtCC8PaperKit19ReflowLayoutManager12TextPosition_affinity] = v73 != 0;
                v147.receiver = v115;
                v147.super_class = v114;
                objc_msgSendSuper2(&v147, sel_init);

                (*(v121 + 8))(v127, v122);

                return v111;
              }

LABEL_246:
              __break(1u);
LABEL_247:
              __break(1u);
LABEL_248:
              swift_unknownObjectRelease_n();
LABEL_157:
              specialized _copyCollectionToContiguousArray<A>(_:)(v46, v40, v35, v32);
              v32 = v99;
              v12 = v125;
              v14 = v133;
            }
          }

          if (v138 >= v73)
          {
            if (v73 == v138)
            {
              goto LABEL_127;
            }

            if (v73 < v138)
            {
              type metadata accessor for ReflowElement();
              swift_bridgeObjectRetain_n();
              v93 = v73;
              v94 = v138;
              do
              {
                v95 = v93 + 1;
                _ArrayBuffer._typeCheckSlowPath(_:)(v93);
                v93 = v95;
              }

              while (v94 != v95);
              goto LABEL_154;
            }

            goto LABEL_250;
          }

LABEL_240:
          __break(1u);
          goto LABEL_241;
        }
      }

      __break(1u);
      goto LABEL_233;
    }

    v140 = (v120 + 8);
    v141 = (v120 + 16);
    v139 = (v119 + 8);
    if (v40 <= v46)
    {
      v74 = v46;
    }

    else
    {
      v74 = v40;
    }

    v35 = v74 - v40;
    v32 = &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd;
    v75 = v67 + 8 * v40;
    v3 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (!v35)
      {
        __break(1u);
LABEL_211:
        __break(1u);
LABEL_212:
        __break(1u);
LABEL_213:
        __break(1u);
LABEL_214:
        __break(1u);
LABEL_215:
        __break(1u);
LABEL_216:
        __break(1u);
LABEL_217:
        __break(1u);
LABEL_218:
        __break(1u);
LABEL_219:
        __break(1u);
        goto LABEL_220;
      }

      v142 = v71;
      type metadata accessor for ReflowWord();
      v77 = swift_dynamicCastClass();
      if (v77)
      {
        v78 = *(v77 + 280);
        v79 = OBJC_IVAR___PKDrawingCoherence_model;
        swift_beginAccess();
        v80 = v78 + v79;
        v81 = v136;
        v82 = v32;
        v83 = v3;
        v84 = v137;
        (*v141)(v136, v80, v137);
        swift_getKeyPath();

        v85 = v123;
        Capsule.subscript.getter();

        v86 = v84;
        v3 = v83;
        v32 = v82;
        (*v140)(v81, v86);
        __swift_instantiateConcreteTypeFromMangledNameV2(v82);
        v87 = v124;
        v88 = v143;
        v46 = CROrderedSet.map<A>(_:)();
        v143 = v88;

        (*v139)(v85, v87);
      }

      else
      {
        v46 = MEMORY[0x1E69E7CC0];
      }

      v40 = *(v46 + 16);
      v12 = *(v3 + 16);
      v14 = v12 + v40;
      if (__OFADD__(v12, v40))
      {
        goto LABEL_211;
      }

      v89 = swift_isUniquelyReferenced_nonNull_native();
      if (v89 && v14 <= *(v3 + 24) >> 1)
      {
        if (!*(v46 + 16))
        {
          goto LABEL_132;
        }
      }

      else
      {
        if (v12 <= v14)
        {
          v90 = v12 + v40;
        }

        else
        {
          v90 = v12;
        }

        v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v89, v90, 1, v3);
        if (!*(v46 + 16))
        {
LABEL_132:

          v76 = v142;
          if (v40)
          {
            goto LABEL_212;
          }

          goto LABEL_133;
        }
      }

      v12 = *(v3 + 16);
      v14 = (*(v3 + 24) >> 1) - v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(v32);
      if (v14 < v40)
      {
        goto LABEL_214;
      }

      swift_arrayInitWithCopy();

      v76 = v142;
      if (v40)
      {
        v91 = *(v3 + 16);
        v54 = __OFADD__(v91, v40);
        v92 = v91 + v40;
        if (v54)
        {
          goto LABEL_215;
        }

        *(v3 + 16) = v92;
      }

LABEL_133:
      --v35;
      v75 += 8;
      v71 = v76 - 1;
      if (!v71)
      {
        goto LABEL_121;
      }
    }
  }

  v46 = *(v126 + 80);
  v62 = v46 & 0xFFFFFFFFFFFFFF8;
  v14 = v46 >> 62;
  if (v46 >> 62)
  {
    goto LABEL_221;
  }

  if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v35)
  {
    goto LABEL_103;
  }

LABEL_222:
  __break(1u);
LABEL_223:
  __break(1u);
LABEL_224:
  __break(1u);
LABEL_225:
  __break(1u);
LABEL_226:
  if ((v12 & 0x8000000000000000) != 0)
  {
    v46 = v12;
  }

  else
  {
    v46 = v62;
  }

  result = __CocoaSet.count.getter();
  v73 = v135;
  if (result >= v135)
  {
    v72 = __CocoaSet.count.getter();
    goto LABEL_123;
  }

LABEL_254:
  __break(1u);
LABEL_255:
  __break(1u);
LABEL_256:
  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in ReflowLayoutManager.replaceStrokes(_:with:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - v4, a1, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  return WeakRef.init<A>(_:)();
}

uint64_t specialized modifyLayoutLine #1 (layoutLine:) in ReflowLayoutManager.replaceStrokes(_:with:)(unint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_beginAccess();
  v9 = *a1;
  if (*a2)
  {
    v29[0] = a4;
    MEMORY[0x1EEE9AC00](v8);
    v27 = v29;
    result = specialized BidirectionalCollection.lastIndex(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v26, v9);
    if (v11)
    {

      a2 = MEMORY[0x1E69E7CC0];
      *a1 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v17 = result + 1;
      if (__OFADD__(result, 1))
      {
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }

      if (v17 < 0)
      {
LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

      specialized Array.replaceSubrange<A>(_:with:)(0, v17);
      swift_beginAccess();
      *a2 = 0;
      a2 = *a1;
    }

    v18 = a2 >> 62;
    if (a2 >> 62)
    {
      v19 = __CocoaSet.count.getter();
      if (!v19)
      {
        goto LABEL_70;
      }
    }

    else
    {
      v19 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v19)
      {
        goto LABEL_70;
      }
    }

    v20 = v19 - 1;
    if (__OFSUB__(v19, 1))
    {
      __break(1u);
    }

    else if ((a2 & 0xC000000000000001) == 0)
    {
      if ((v20 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v20 < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {

LABEL_31:
        type metadata accessor for ReflowSpace();
        v21 = swift_dynamicCastClass();

        if (!v21)
        {
          goto LABEL_71;
        }

        if (v18)
        {
          result = __CocoaSet.count.getter();
        }

        else
        {
          result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (!result)
        {
LABEL_82:
          __break(1u);
          goto LABEL_83;
        }

        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        if (v18 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
        {
          a2 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
        }

        v23 = a2 & 0xFFFFFFFFFFFFFF8;
        v24 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v24)
        {
          goto LABEL_63;
        }

        __break(1u);
        goto LABEL_44;
      }

      __break(1u);
      goto LABEL_76;
    }

    MEMORY[0x1DA6CE0C0](v20, a2);
    goto LABEL_31;
  }

  if (v9 >> 62)
  {
LABEL_66:
    v8 = __CocoaSet.count.getter();
    v12 = v8;
  }

  else
  {
    v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = 0;
  while (v12 != v13)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v28 = MEMORY[0x1DA6CE0C0](v13, v9);
      v8 = swift_unknownObjectRelease();
      if (v28 == a3)
      {
LABEL_15:
        a3 = v13;
        goto LABEL_17;
      }
    }

    else
    {
      if (v13 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      if (*(v9 + 8 * v13 + 32) == a3)
      {
        goto LABEL_15;
      }
    }

    if (__OFADD__(v13++, 1))
    {
      goto LABEL_65;
    }
  }

  a3 = 0;
LABEL_17:
  v29[0] = a4;
  MEMORY[0x1EEE9AC00](v8);
  v27 = v29;
  result = specialized BidirectionalCollection.lastIndex(where:)(partial apply for specialized closure #1 in BidirectionalCollection<>.lastIndex(of:), v26, v9);
  if (v12 == v13)
  {
    goto LABEL_47;
  }

  if (v15)
  {
    if (!(v9 >> 62))
    {
      v16 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_45:
      if (v16 < a3)
      {
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

      specialized Array.replaceSubrange<A>(_:with:)(a3, v16);
      swift_beginAccess();
      *a2 = 1;
LABEL_47:
      a2 = *a1;
      v18 = *a1 >> 62;
      if (v18)
      {
        result = __CocoaSet.count.getter();
        if (result)
        {
LABEL_49:
          v20 = result - 1;
          if (!__OFSUB__(result, 1))
          {
            if ((a2 & 0xC000000000000001) == 0)
            {
              if ((v20 & 0x8000000000000000) != 0)
              {
                __break(1u);
              }

              else if (v20 < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {

                goto LABEL_54;
              }

              __break(1u);
              goto LABEL_80;
            }

LABEL_77:

            MEMORY[0x1DA6CE0C0](v20, a2);
LABEL_54:
            type metadata accessor for ReflowSpace();
            v25 = swift_dynamicCastClass();

            if (v25)
            {
              if (v18)
              {
                result = __CocoaSet.count.getter();
              }

              else
              {
                result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              if (result)
              {
                result = swift_isUniquelyReferenced_nonNull_bridgeObject();
                if (v18 || (result & 1) == 0)
                {
                  result = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
                  a2 = result;
                }

                v23 = a2 & 0xFFFFFFFFFFFFFF8;
                v24 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v24)
                {
LABEL_63:
                  *(v23 + 16) = v24 - 1;

                  goto LABEL_71;
                }

                goto LABEL_84;
              }

LABEL_83:
              __break(1u);
LABEL_84:
              __break(1u);
              goto LABEL_85;
            }

LABEL_71:

            a1[1] = a2;
            return result;
          }

LABEL_76:
          __break(1u);
          goto LABEL_77;
        }
      }

      else
      {
        result = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result)
        {
          goto LABEL_49;
        }
      }

LABEL_70:

      goto LABEL_71;
    }

LABEL_44:
    result = __CocoaSet.count.getter();
    v16 = result;
    goto LABEL_45;
  }

  if (result < a3)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  if (!__OFADD__(result, 1))
  {
    specialized Array.replaceSubrange<A>(_:with:)(a3, result + 1);
    goto LABEL_47;
  }

LABEL_87:
  __break(1u);
  return result;
}

Swift::Void __swiftcall ReflowLayoutManager.layoutText(contents:lines:)(Swift::OpaquePointer contents, Swift::OpaquePointer lines)
{
  v3 = *(MEMORY[0x1E695F050] + 16);
  *(v2 + 120) = *MEMORY[0x1E695F050];
  *(v2 + 136) = v3;
  v137 = *(lines._rawValue + 2);
  if (!v137)
  {
    return;
  }

  v4 = v2;
  rawValue = lines._rawValue;
  v6 = *(lines._rawValue + 11);
  v7 = v173;
  *&v216[64] = *(lines._rawValue + 10);
  *&v216[80] = v6;
  v217 = *(lines._rawValue + 24);
  v8 = *(lines._rawValue + 7);
  *v216 = *(lines._rawValue + 6);
  *&v216[16] = v8;
  v9 = *(lines._rawValue + 9);
  *&v216[32] = *(lines._rawValue + 8);
  *&v216[48] = v9;
  v10 = *(lines._rawValue + 3);
  *v214 = *(lines._rawValue + 2);
  *&v214[16] = v10;
  v11 = *(lines._rawValue + 5);
  *&v214[32] = *(lines._rawValue + 4);
  v215 = v11;
  v12 = *&v214[32];
  swift_beginAccess();
  v13 = MEMORY[0x1E69E7CC0];
  *(v2 + 96) = MEMORY[0x1E69E7CC0];
  outlined init with copy of ReflowTextLine(v214, &v220);

  outlined init with copy of ReflowTextLine(v214, &v220);

  *&v213[112] = *&v216[64];
  *&v213[128] = *&v216[80];
  *&v213[48] = *v216;
  *&v213[64] = *&v216[16];
  *&v213[80] = *&v216[32];
  *&v213[96] = *&v216[48];
  *(&v212 + 1) = *&v214[8];
  *v213 = *&v214[16];
  *&v213[16] = *&v214[32];
  *&v213[32] = v215;
  *&v213[144] = v217;
  *&v212 = v13;
  Width = CGRectGetWidth(*(v2 + 16));
  v149 = vabdd_f64(Width, CGRectGetWidth(*(v2 + 48)));
  v15 = v12 - v149;
  v17 = *(&v215 + 1);
  v16 = *&v215;
  height = 0.0;
  if (v12 - v149 < 0.0)
  {
    v15 = 0.0;
  }

  v19 = *&v216[88];
  v20 = *v216;
  v21 = *&v214[40];
  v146 = *&v214[16];
  *&v213[16] = v15;
  v208 = *&v214[8];
  v209 = *&v214[24];
  v204 = *&v216[40];
  v205 = *&v216[56];
  v206 = *&v216[72];
  v207 = *&v216[88];
  v202 = *&v216[8];
  v203 = *&v216[24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1D405CEB0;
  type metadata accessor for ReflowSpace();
  v23 = swift_allocObject();
  *(v23 + 160) = 1;
  v24 = v210;
  *(v23 + 152) = 0;
  v26 = UnknownCanvasElementView.flags.modify(v23, v25);
  *(v23 + 48) = 0u;
  *(v23 + 64) = 0u;
  *(v23 + 80) = 0u;
  *(v23 + 96) = 0;
  *(v23 + 104) = v26;
  *(v23 + 112) = v27;
  *(v23 + 120) = -1;
  *(v23 + 128) = 0;
  *(v23 + 136) = 0;
  *(v23 + 144) = 0;
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  *(v23 + 32) = 0;
  *(v23 + 40) = 0x4000000000000000;
  *(v22 + 32) = v23;

  swift_beginAccess();
  v28 = *(v2 + 176);
  v210[0] = *(v2 + 160);
  *v211 = *(v2 + 192);
  *&v211[11] = *(v2 + 203);
  v210[1] = v28;
  v29 = *v211;
  v30 = *&v211[8];
  if (*&v210[0])
  {
    v221 = *(v2 + 168);
    v31 = *(v2 + 184);
    v220 = *&v210[0];
    *&v222 = v31;
    *(&v222 + 1) = *v211;
    v223 = *&v211[8];
    *&v224 = *(v2 + 208);
    *(&v224 + 7) = *(v2 + 215);
    v32 = COERCE_DOUBLE(&_s8PaperKit23ReflowSpacingAdjustmentVSgMR);
    outlined init with copy of Date?(v210, &v191, &_s8PaperKit23ReflowSpacingAdjustmentVSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(&v220, &_s8PaperKit23ReflowSpacingAdjustmentVSgMd);
    v34 = ReflowLayoutManager.spacingAdjustment.modify();
    if (*v33)
    {
      v32 = *&v33;
      v33[6] = specialized ReflowLayoutManager.closestLine(to:lines:)(rawValue, v29, v30);
      *(*&v32 + 56) = v35 & 1;
    }

    (v34)(&v191, 0);
  }

  else
  {
    v221 = *(v2 + 168);
    v36 = *(v2 + 184);
    v220 = 0;
    *&v222 = v36;
    *(&v222 + 1) = *v211;
    v223 = *&v211[8];
    *&v224 = *(v2 + 208);
    *(&v224 + 7) = *(v2 + 215);
    v34 = &_s8PaperKit23ReflowSpacingAdjustmentVSgMd;
    v32 = COERCE_DOUBLE(&_s8PaperKit23ReflowSpacingAdjustmentVSgMR);
    outlined init with copy of Date?(v210, &v191, &_s8PaperKit23ReflowSpacingAdjustmentVSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(&v220, &_s8PaperKit23ReflowSpacingAdjustmentVSgMd);
  }

  v37 = v17;
  if (contents._rawValue >> 62)
  {
    goto LABEL_122;
  }

  for (i = *((contents._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v39 = v21 + height;
    v16 = v16 - v19;
    v21 = v37 + height;
    v37 = v20 - v19;
    if (!i)
    {
      *&v45 = NAN;
      v29 = v39;
      v39 = v16;
      goto LABEL_110;
    }

    if (i < 1)
    {
      __break(1u);
      goto LABEL_124;
    }

    v133 = i;
    if ((contents._rawValue & 0xC000000000000001) != 0)
    {
      v40 = 0;
      v147 = MEMORY[0x1E69E7CC0];
      v29 = v39;
      v39 = v16;
      do
      {
        v32 = COERCE_DOUBLE(MEMORY[0x1DA6CE0C0](v40, contents._rawValue));
        type metadata accessor for ReflowWord();
        if (swift_dynamicCastClass() && (*(swift_dynamicCastClassUnconditional() + 136) & 1) != 0)
        {
          v42 = *(*&v32 + 120);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v147 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v147 + 2) + 1, 1, v147);
          }

          v44 = *(v147 + 2);
          v43 = *(v147 + 3);
          if (v44 >= v43 >> 1)
          {
            v147 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v147);
          }

          swift_unknownObjectRelease();
          *(v147 + 2) = v44 + 1;
          *&v147[8 * v44 + 32] = v42;
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v40;
      }

      while (v133 != v40);
    }

    else
    {
      v46 = (contents._rawValue + 32);
      type metadata accessor for ReflowWord();
      v147 = MEMORY[0x1E69E7CC0];
      v47 = v133;
      v143 = v22;
      v29 = v39;
      v39 = v16;
      do
      {
        v32 = *v46;
        if (swift_dynamicCastClass() && *(swift_dynamicCastClassUnconditional() + 136) == 1)
        {
          v48 = *(*&v32 + 120);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v147 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v147 + 2) + 1, 1, v147);
          }

          v50 = *(v147 + 2);
          v49 = *(v147 + 3);
          if (v50 >= v49 >> 1)
          {
            v147 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1, v147);
          }

          *(v147 + 2) = v50 + 1;
          *&v147[8 * v50 + 32] = v48;
          v22 = v143;
        }

        ++v46;
        --v47;
      }

      while (v47);
    }

    v148 = 0;
    v34 = 0;
    v136 = rawValue + 32;
    v132 = rawValue + 352;
    *&v45 = NAN;
    v19 = 0.5;
    *&v41 = 0;
    v153 = v41;
    v24 = v210;
    v135 = v4;
LABEL_37:
    if ((contents._rawValue & 0xC000000000000001) == 0)
    {
      break;
    }

    *&v51 = COERCE_DOUBLE(MEMORY[0x1DA6CE0C0](v34, contents._rawValue));
    v54 = __OFADD__(v34++, 1);
    if (!v54)
    {
      goto LABEL_43;
    }

LABEL_120:
    __break(1u);
LABEL_121:
    __break(1u);
LABEL_122:
    ;
  }

  if (v34 >= *((contents._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_121;
  }

  v51 = *(contents._rawValue + v34 + 4);

  v54 = __OFADD__(v34++, 1);
  if (v54)
  {
    goto LABEL_120;
  }

LABEL_43:
  v131 = v34;
  v152 = v29;
  v16 = v37;
  v151 = *&v51;
  while (1)
  {
    v32 = *(v4 + 14);
    v55 = *(v4 + 11);
    v218[0] = *(v4 + 10);
    v218[1] = v55;
    v219[0] = *(v4 + 12);
    *(v219 + 11) = *(v4 + 203);
    v56 = *(v4 + 2);
    v57 = *(v4 + 3);
    v58 = *(v4 + 4);
    v59 = *(v4 + 5);
    rawValue = &_s8PaperKit23ReflowSpacingAdjustmentVSgMd;
    outlined init with copy of Date?(v218, &v191, &_s8PaperKit23ReflowSpacingAdjustmentVSgMd);
    v234.origin.x = v56;
    v234.origin.y = v57;
    v234.size.width = v58;
    v234.size.height = v59;
    v60 = CGRectGetWidth(v234);
    v221 = v208;
    v222 = v209;
    v228 = v204;
    v229 = v205;
    v230 = v206;
    v226 = v202;
    v220 = v22;
    v20 = v152;
    v223 = v152;
    height = v39;
    *&v224 = v39;
    v29 = v21;
    *(&v224 + 1) = v21;
    v37 = v16;
    v225 = v16;
    v231 = v207;
    v227 = v203;
    v232 = v45;
    v61 = ReflowTextLine.add(_:textScalePercentage:spacingAdjustment:maxWidth:previousLine:adjustment:)(v51, *&v32, v218, &v220, v60, v149);
    outlined destroy of StocksKitCurrencyCache.Provider?(v218, &_s8PaperKit23ReflowSpacingAdjustmentVSgMd);
    if (v61)
    {
      *&v51 = v151;
LABEL_36:
      v233 = CGRectUnion(*(v4 + 120), *(v51 + 48));
      x = v233.origin.x;
      y = v233.origin.y;
      v20 = v233.size.width;
      height = v233.size.height;

      *(v4 + 15) = x;
      *(v4 + 16) = y;
      *(v4 + 17) = v20;
      *(v4 + 18) = height;
      v34 = v131;
      v37 = v16;
      v29 = v152;
      if (v131 == v133)
      {
        goto LABEL_109;
      }

      goto LABEL_37;
    }

    v34 = v148;
    v62 = *(v147 + 2);
    v63 = (v147 + 32);
    v32 = v151;
    while (1)
    {
      rawValue = v62;
      if (!v62)
      {
        break;
      }

      v64 = *v63++;
      --v62;
      if (v64 == v148)
      {
        if (!__OFADD__(v148, 1))
        {
          v155 = *(*&v151 + 120) < v148 + 1;
          goto LABEL_51;
        }

LABEL_116:
        __break(1u);
LABEL_117:
        __break(1u);
LABEL_118:
        __break(1u);
        goto LABEL_119;
      }
    }

    v155 = 0;
LABEL_51:
    type metadata accessor for ReflowWord();
    v154 = swift_dynamicCastClass();
    *&v175[64] = *&v213[112];
    *&v175[80] = *&v213[128];
    *v175 = *&v213[48];
    *&v175[16] = *&v213[64];
    *&v175[32] = *&v213[80];
    *&v175[48] = *&v213[96];
    *v173 = v212;
    *&v173[16] = *v213;
    *&v173[32] = *&v213[16];
    v174 = *&v213[32];
    v178 = v208;
    v176 = *&v213[144];
    v177 = v22;
    v179 = v209;
    v180 = v152;
    v181 = v39;
    v182 = v21;
    v183 = v16;
    v186 = v204;
    v187 = v205;
    v188 = v206;
    v189 = v207;
    v184 = v202;
    v185 = v203;
    v190 = v45;
    outlined init with copy of ReflowTextLine(v173, &v191);
    outlined destroy of ReflowTextLine(&v177);
    v22 = *v173;
    v208 = *&v173[8];
    v209 = *&v173[24];
    v152 = *&v173[40];
    v21 = v174.f64[1];
    v39 = v174.f64[0];
    v16 = *v175;
    v204 = *&v175[40];
    v205 = *&v175[56];
    v206 = *&v175[72];
    v207 = *&v175[88];
    v202 = *&v175[8];
    v203 = *&v175[24];
    v65 = v176;
    v199 = *&v213[112];
    v200 = *&v213[128];
    v201 = *&v213[144];
    v195 = *&v213[48];
    v196 = *&v213[64];
    v197 = *&v213[80];
    v198 = *&v213[96];
    v191 = v212;
    v192 = *v213;
    v193 = *&v213[16];
    v194 = *&v213[32];
    swift_beginAccess();
    v32 = *(v4 + 12);
    outlined init with copy of ReflowTextLine(&v191, &v162);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + 12) = v32;
    *&v150 = v65;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v32 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(*&v32 + 16) + 1, 1, *&v32));
      *(v4 + 12) = v32;
    }

    v45 = *(*&v32 + 16);
    v67 = *(*&v32 + 24);
    if (v45 >= v67 >> 1)
    {
      v32 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v67 > 1), v45 + 1, 1, *&v32));
    }

    *(*&v32 + 16) = v45 + 1;
    v68 = *&v32 + 168 * v45;
    v69 = v191;
    v70 = v193;
    *(v68 + 48) = v192;
    *(v68 + 64) = v70;
    *(v68 + 32) = v69;
    v71 = v194;
    v72 = v195;
    v73 = v197;
    *(v68 + 112) = v196;
    *(v68 + 128) = v73;
    *(v68 + 80) = v71;
    *(v68 + 96) = v72;
    v74 = v198;
    v75 = v199;
    v76 = v200;
    *(v68 + 192) = v201;
    *(v68 + 160) = v75;
    *(v68 + 176) = v76;
    *(v68 + 144) = v74;
    *(v4 + 12) = v32;
    swift_endAccess();
    v77 = v155;
    if (!v154)
    {
      v77 = 0;
    }

    if (v148 >= (v137 - 1) || v77)
    {
      break;
    }

    v78 = v148 + 1;
    *&v51 = v151;
    v79 = *(*&v151 + 120);
    v80 = v153;
    if (v148 + 1 >= v79)
    {
      v81 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v81 = MEMORY[0x1E69E7CC0];
      if (v148 < -1)
      {
        goto LABEL_118;
      }

      if (v79 - 1 >= v137)
      {
LABEL_119:
        __break(1u);
        goto LABEL_120;
      }

      v82 = (v132 + 168 * v148);
      v83 = ~v148 + v79;
      do
      {
        v84 = *v82;
        v82 += 21;
        *&v80 = *&v80 - v84;
        --v83;
      }

      while (v83);
      v78 = *(*&v151 + 120);
    }

    if (v78 >= v137)
    {
      __break(1u);
      goto LABEL_116;
    }

    v148 = v78;
    v89 = v136 + 168 * v78;
    v90 = *(v89 + 144);
    v159[6] = *(v89 + 128);
    v160 = v90;
    v161 = *(v89 + 160);
    v91 = *(v89 + 80);
    v159[2] = *(v89 + 64);
    v159[3] = v91;
    v92 = *(v89 + 112);
    v159[4] = *(v89 + 96);
    v159[5] = v92;
    v93 = *(v89 + 16);
    v157 = *v89;
    v158 = v93;
    v94 = *(v89 + 48);
    v159[0] = *(v89 + 32);
    v159[1] = v94;
    v153 = v80;
    v95 = *v159;
    v170 = *&v213[112];
    v171 = *&v213[128];
    v172 = *&v213[144];
    v166 = *&v213[48];
    v167 = *&v213[64];
    v168 = *&v213[80];
    v169 = *&v213[96];
    v162 = v212;
    v163 = *v213;
    v164 = *&v213[16];
    v165 = *&v213[32];
    outlined init with copy of ReflowTextLine(&v157, v156);
    outlined destroy of ReflowTextLine(&v162);

    *&v213[112] = v159[6];
    *&v213[128] = v160;
    *&v213[144] = v161;
    *&v213[48] = v159[2];
    *&v213[64] = v159[3];
    *&v213[80] = v159[4];
    *&v213[96] = v159[5];
    v212 = v157;
    *v213 = v158;
    *&v213[16] = v159[0];
    *&v213[32] = v159[1];
    v96 = 0.0;
    if (v95 - v149 >= 0.0)
    {
      v96 = v95 - v149;
    }

    *&v213[16] = v96;
    *&v212 = v81;
    v97.f64[0] = 0.0;
    *&v97.f64[1] = v153;
    *&v213[24] = vaddq_f64(v97, *(v159 + 8));
    *&v213[40] = vaddq_f64(v97, *(&v159[1] + 8));
    *&v213[56] = vaddq_f64(v97, *(&v159[2] + 8));
    *&v213[72] = vaddq_f64(v97, *(&v159[3] + 8));
    *&v213[88] = vaddq_f64(v97, *(&v159[4] + 8));
    *&v213[104] = vaddq_f64(v97, *(&v159[5] + 8));
    if (rawValue)
    {
      v146 = *&v158;
    }

    else
    {
      v98 = v146;
      if (*&v158 < v146)
      {
        v98 = *&v158;
      }

      v146 = v98;
    }

LABEL_102:
    v45 = v150;
    if (v155 && !v154)
    {
      goto LABEL_36;
    }
  }

  v144 = v22;
  v32 = *v173;
  if (!(*v173 >> 62))
  {
    v22 = *((*v173 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
      goto LABEL_67;
    }

LABEL_92:
    v34 = MEMORY[0x1E69E7CC0];
    v37 = *&v175[88];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
      v4 = MEMORY[0x1E69E7CC0];
LABEL_94:
      v22 = v144;
      v32 = COERCE_DOUBLE(specialized Sequence<>.max()(v4));
      v100 = v99;

      if (v100)
      {
        v101 = 0.0;
        v102 = v37 > 0.0;
      }

      else
      {
        v101 = v32;
        v102 = v37 > v32;
      }

      v4 = v135;
      v34 = MEMORY[0x1E69E7CC0];
      *&v51 = v151;
      if (!v102)
      {
        goto LABEL_100;
      }

LABEL_99:
      v101 = v37;
    }

    else
    {

      v101 = 0.0;
      v22 = v144;
      *&v51 = v151;
      if (v37 > 0.0)
      {
        goto LABEL_99;
      }
    }

LABEL_100:
    v103 = v176;
    v170 = *&v213[112];
    v171 = *&v213[128];
    v166 = *&v213[48];
    v167 = *&v213[64];
    v168 = *&v213[80];
    v169 = *&v213[96];
    v162 = v212;
    v163 = *v213;
    v164 = *&v213[16];
    v165 = *&v213[32];
    v29 = *&v173[40] + 0.0;
    v145 = vaddq_f64(*&v101, v174);
    v142 = vaddq_f64(*&v101, *v175);
    v140 = *&v101;
    v141 = vaddq_f64(*&v101, *&v175[16]);
    v172 = *&v213[144];
    v20 = v101 + *&v175[64];
    v138 = *&v175[48];
    v139 = vaddq_f64(*&v101, *&v175[32]);
    outlined destroy of ReflowTextLine(&v162);
    v212 = v34;
    *&v213[8] = 0u;
    *&v213[136] = 0u;
    *&v213[120] = 0u;
    *&v213[32] = v145;
    *&v213[48] = v142;
    *&v213[64] = v141;
    *&v213[80] = v139;
    *&v213[96] = vaddq_f64(v140, v138);
    *&v213[24] = v29;
    *v213 = v146;
    *&v213[112] = v20;
    *&v213[136] = v37;
    if (__OFADD__(*&v103, 1))
    {
      goto LABEL_117;
    }

    *&v213[144] = *&v103 + 1;
    *(&v104 + 1) = *(&v153 + 1);
    *&v104 = *&v153 + v37;
    v153 = v104;
    goto LABEL_102;
  }

  v22 = __CocoaSet.count.getter();
  if (!v22)
  {
    goto LABEL_92;
  }

LABEL_67:
  v7 = 0;
  v24 = (*&v32 & 0xFFFFFFFFFFFFFF8);
  v4 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    if ((*&v32 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1DA6CE0C0](v7, *&v32);
      v45 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_107;
      }

LABEL_71:
      v85 = swift_dynamicCastClass();
      if (v85)
      {
        v29 = (*(v85 + 256) + *(v85 + 272)) * 0.5 - (*(v85 + 224) + *(v85 + 240)) * 0.5;
        v86 = *(v85 + 280);

        [v86 _canvasBounds];
        v87 = CGRectGetHeight(v235);

        v37 = v29 * v87;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_73;
        }
      }

      else
      {

        v37 = 0.0;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_73;
        }
      }

      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
LABEL_73:
      rawValue = *(v4 + 2);
      v88 = *(v4 + 3);
      if (rawValue >= v88 >> 1)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v88 > 1), rawValue + 1, 1, v4);
      }

      *(v4 + 2) = rawValue + 1;
      *&v4[8 * rawValue + 32] = v37;
      v7 = (v7 + 1);
      if (v45 == v22)
      {
        v37 = *&v175[88];
        v24 = v210;
        v7 = v173;
        goto LABEL_94;
      }

      continue;
    }

    break;
  }

  if (v7 >= *((*&v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_108;
  }

  v45 = v7 + 1;
  if (!__OFADD__(v7, 1))
  {
    goto LABEL_71;
  }

LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:

LABEL_110:
  v105 = v24[13];
  v7[30] = v24[12];
  v7[31] = v105;
  v201 = *&v213[144];
  v106 = v24[9];
  v7[26] = v24[8];
  v7[27] = v106;
  v107 = v24[11];
  v7[28] = v24[10];
  v7[29] = v107;
  v108 = v24[5];
  v7[22] = v24[4];
  v7[23] = v108;
  v109 = v24[7];
  v7[24] = v24[6];
  v7[25] = v109;
  swift_beginAccess();
  v34 = *(v4 + 12);
  outlined init with copy of ReflowTextLine(&v191, &v177);
  v110 = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 12) = v34;
  v32 = *&v45;
  if ((v110 & 1) == 0)
  {
LABEL_124:
    v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v34 + 2) + 1, 1, v34);
    *(v4 + 12) = v34;
  }

  v112 = *(v34 + 2);
  v111 = *(v34 + 3);
  if (v112 >= v111 >> 1)
  {
    v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v111 > 1), v112 + 1, 1, v34);
  }

  *(v34 + 2) = v112 + 1;
  v113 = &v34[168 * v112];
  v114 = v7[22];
  v115 = v7[24];
  *(v113 + 3) = v7[23];
  *(v113 + 4) = v115;
  *(v113 + 2) = v114;
  v116 = v7[25];
  v117 = v7[26];
  v118 = v7[28];
  *(v113 + 7) = v7[27];
  *(v113 + 8) = v118;
  *(v113 + 5) = v116;
  *(v113 + 6) = v117;
  v119 = v7[29];
  v120 = v7[30];
  v121 = v7[31];
  *(v113 + 24) = v201;
  *(v113 + 10) = v120;
  *(v113 + 11) = v121;
  *(v113 + 9) = v119;
  *(v4 + 12) = v34;
  swift_endAccess();
  v122 = v7[41];
  *(v7 + 8) = v7[40];
  *v173 = v22;
  *(v7 + 24) = v122;
  *&v173[40] = v29;
  v174.f64[0] = v39;
  v174.f64[1] = v21;
  *v175 = v37;
  v123 = v7[37];
  *(v7 + 104) = v7[36];
  *(v7 + 120) = v123;
  *(v7 + 136) = v7[38];
  v124 = v207;
  v125 = v7[35];
  *(v7 + 72) = v7[34];
  *(v7 + 88) = v125;
  *&v175[88] = v124;
  v176 = v32;
  outlined destroy of ReflowTextLine(v173);
  v126 = v24[13];
  v7[19] = v24[12];
  v7[20] = v126;
  v190 = *&v213[144];
  v127 = v24[9];
  v7[15] = v24[8];
  v7[16] = v127;
  v128 = v24[11];
  v7[17] = v24[10];
  v7[18] = v128;
  v129 = v24[5];
  v7[11] = v24[4];
  v7[12] = v129;
  v130 = v24[7];
  v7[13] = v24[6];
  v7[14] = v130;
  outlined destroy of ReflowTextLine(&v177);
}

Swift::Void __swiftcall ReflowLayoutManager.scaleTextToFit()()
{
  if ((~*(v0 + 16) & 0x7FF0000000000000) != 0)
  {
    v1 = (~*(v0 + 24) & 0x7FF0000000000000) == 0 || (*(v0 + 32) & 0x7FF0000000000000) == 0x7FF0000000000000;
    if (!v1 && (*(v0 + 40) & 0x7FF0000000000000) != 0x7FF0000000000000)
    {
      swift_beginAccess();
      v3._rawValue = *(v0 + 80);
      swift_beginAccess();
      v4._rawValue = *(v0 + 88);

      ReflowLayoutManager.layoutText(contents:lines:)(v3, v4);

      if (*(v0 + 219) == 1)
      {
        swift_beginAccess();
        if (!*(v0 + 160))
        {
          MaxY = CGRectGetMaxY(*(v0 + 120));
          if (CGRectGetHeight(*(v0 + 16)) + 15.0 >= MaxY)
          {
            v6 = *(v0 + 112);
          }

          else
          {
            v6 = 10;
          }

          v7 = CGRectGetMaxY(*(v0 + 120));
          Height = CGRectGetHeight(*(v0 + 16));
          v9 = *(v0 + 112);
          if (Height + 15.0 >= v7)
          {
            v10 = 1000;
          }

          else
          {
            v10 = *(v0 + 112);
          }

          while (1)
          {
            if (__OFADD__(v6, v10))
            {
              __break(1u);
LABEL_33:
              __break(1u);
LABEL_34:
              __break(1u);
LABEL_35:
              __break(1u);
LABEL_36:
              __break(1u);
              return;
            }

            v11 = round(vcvtd_n_f64_s64(v6 + v10, 1uLL) / 5.0);
            if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_33;
            }

            if (v11 <= -9.22337204e18)
            {
              goto LABEL_34;
            }

            if (v11 >= 9.22337204e18)
            {
              goto LABEL_35;
            }

            v12 = 5 * v11;
            if ((v11 * 5) >> 64 != v12 >> 63)
            {
              goto LABEL_36;
            }

            *(v0 + 112) = v12;
            v13._rawValue = *(v0 + 80);
            v14._rawValue = *(v0 + 88);

            ReflowLayoutManager.layoutText(contents:lines:)(v13, v14);

            v15 = *(v0 + 112);
            v16 = CGRectGetMaxY(*(v0 + 120));
            v17 = CGRectGetHeight(*(v0 + 16)) + 15.0;
            if (v9 == v15)
            {
              break;
            }

            v9 = *(v0 + 112);
            if (v17 >= v16)
            {
              v6 = *(v0 + 112);
            }

            else
            {
              v10 = *(v0 + 112);
            }

            if (v6 >= v10)
            {
              return;
            }
          }

          if (v17 < v16)
          {
            v18 = *(v0 + 112);
            if (v18 >= 11)
            {
              *(v0 + 112) = v18 - 5;
              v19._rawValue = *(v0 + 80);
              v20._rawValue = *(v0 + 88);

              ReflowLayoutManager.layoutText(contents:lines:)(v19, v20);
            }
          }
        }
      }
    }
  }
}

uint64_t ReflowLayoutManager.strokeTransforms()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v126 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v148 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v162 = &v126 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  isUniquelyReferenced_nonNull_native = &v126 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_So17CGAffineTransformVtMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v149 = &v126 - v11;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
  v12 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v138 = &v126 - v13;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  v14 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v136 = &v126 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12Zip2SequenceVy9Coherence12CROrderedSetVyAC3RefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGGGSaySo17CGAffineTransformVGGMd);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v135 = &v126 - v17;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12Zip2SequenceV8IteratorVy9Coherence12CROrderedSetVyAE3RefVyAE10CRRegisterVy8PaperKit12TaggedStrokeOGGGSaySo17CGAffineTransformVG_GMd);
  MEMORY[0x1EEE9AC00](v146);
  v157 = &v126 - v18;
  v19 = *(v1 + 24);
  v134 = *(v1 + 16);
  v133 = v19;
  v163 = COERCE_DOUBLE(_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9Coherence3RefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGG_So17CGAffineTransformVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]));
  swift_beginAccess();
  v141 = *(v1 + 80);
  if (v141 >> 62)
  {
    goto LABEL_53;
  }

  v20 = *((v141 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v140 = v20;
  if (!v20)
  {
    return *&v163;
  }

  v21 = v141;
  v142 = v141 & 0xC000000000000001;

  swift_beginAccess();
  v22 = 0;
  v129 = v21 & 0xFFFFFFFFFFFFFF8;
  v128 = v21 + 32;
  v132 = (v14 + 16);
  v131 = (v14 + 8);
  v130 = (*&v12 + 32);
  v156 = (*&v148 + 48);
  v161 = (*&v148 + 32);
  v147 = *&v148 + 16;
  v150 = (*&v148 + 8);
  v126 = 0.02;
  v12 = *&v140;
  v127 = v1;
  while (1)
  {
    while (1)
    {
      if (v142)
      {
        v23 = MEMORY[0x1DA6CE0C0](v22, v21);
        v24 = __OFADD__(v22++, 1);
        if (v24)
        {
          goto LABEL_48;
        }
      }

      else
      {
        if (v22 >= *(v129 + 16))
        {
          goto LABEL_52;
        }

        v23 = *(v128 + 8 * v22);

        v24 = __OFADD__(v22++, 1);
        if (v24)
        {
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
          v20 = __CocoaSet.count.getter();
          goto LABEL_3;
        }
      }

      type metadata accessor for ReflowWord();
      v25 = swift_dynamicCastClass();
      if (v25)
      {
        break;
      }

      if (v22 == *&v12)
      {
        goto LABEL_43;
      }
    }

    v26 = v25;
    v27 = round(*(v25 + 80));
    if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_49;
    }

    if (v27 <= -9.22337204e18)
    {
      goto LABEL_50;
    }

    if (v27 >= 9.22337204e18)
    {
      goto LABEL_51;
    }

    v28 = v27;
    v145 = v22;
    if (v27 < 0 || (v29 = *(v1 + 96), *(v29 + 16) <= v28))
    {

      v37 = 0.0;
    }

    else
    {
      v30 = (v29 + 168 * v28);
      v32 = v30[9];
      v31 = v30[10];
      v34 = v30[11];
      v33 = v30[12];

      v35 = ReflowWord.baselineDelta.getter();
      v37 = 0.0;
      if (*(v26 + 312) == 1)
      {
        v38 = v34 - v32;
        v39 = v33 - v31;
        v40 = sqrt(v38 * v38 + v39 * v39);
        v41 = atan2(v36, v35);
        v42 = atan2(v39 / v40, v38 / v40);
        if (vabdd_f64(v42, v41) <= v126)
        {
          v37 = 0.0;
        }

        else
        {
          v37 = v42 - v41;
        }
      }
    }

    v43 = *(v26 + 280);
    [v43 _canvasBounds];
    x = v167.origin.x;
    y = v167.origin.y;
    width = v167.size.width;
    height = v167.size.height;
    v48 = *(v26 + 184);
    v49 = *(v26 + 192);
    MinX = CGRectGetMinX(v167);
    v168.origin.x = x;
    v168.origin.y = y;
    v168.size.width = width;
    v168.size.height = height;
    v51 = MinX + v48 * CGRectGetWidth(v168);
    v169.origin.x = x;
    v169.origin.y = y;
    v169.size.width = width;
    v169.size.height = height;
    MinY = CGRectGetMinY(v169);
    v170.origin.x = x;
    v170.origin.y = y;
    v170.size.width = width;
    v170.size.height = height;
    v53 = CGRectGetHeight(v170);
    CGAffineTransformMakeTranslation(&t1, -v51, -(MinY + v49 * v53));
    tx = t1.tx;
    ty = t1.ty;
    v160 = *&t1.a;
    v159 = *&t1.c;
    CGAffineTransformMakeRotation(&t1, v37);
    v56 = *&t1.a;
    v57 = *&t1.c;
    v58 = *&t1.tx;
    *&t1.c = v159;
    *&t1.a = v160;
    t1.tx = tx;
    t1.ty = ty;
    *&t2.a = v56;
    *&t2.c = v57;
    *&t2.tx = v58;
    CGAffineTransformConcat(&v164, &t1, &t2);
    v59 = v164.tx;
    v60 = v164.ty;
    v160 = *&v164.a;
    v159 = *&v164.c;
    CGAffineTransformMakeScale(&t1, *(v1 + 112) / 100.0, *(v1 + 112) / 100.0);
    v61 = *&t1.a;
    v62 = *&t1.c;
    v63 = *&t1.tx;
    *&t1.c = v159;
    *&t1.a = v160;
    t1.tx = v59;
    t1.ty = v60;
    *&t2.a = v61;
    *&t2.c = v62;
    *&t2.tx = v63;
    CGAffineTransformConcat(&v164, &t1, &t2);
    *&v160 = v164.tx;
    v64 = v164.ty;
    v159 = *&v164.a;
    v158 = *&v164.c;
    v65 = *(v26 + 48);
    v66 = *(v26 + 56);
    v67 = *(v26 + 64);
    v68 = *(v26 + 72);
    v144 = v23;

    v70 = *(v26 + 184);
    v69 = *(v26 + 192);
    v171.origin.x = v65;
    v171.origin.y = v66;
    v171.size.width = v67;
    v171.size.height = v68;
    v71 = CGRectGetMinX(v171);
    v172.origin.x = v65;
    v172.origin.y = v66;
    v172.size.width = v67;
    v172.size.height = v68;
    v72 = v71 + v70 * CGRectGetWidth(v172);
    v173.origin.x = v65;
    v173.origin.y = v66;
    v173.size.width = v67;
    v173.size.height = v68;
    v73 = CGRectGetMinY(v173);
    v174.origin.x = v65;
    v174.origin.y = v66;
    v174.size.width = v67;
    v174.size.height = v68;
    v74 = CGRectGetHeight(v174);
    CGAffineTransformMakeTranslation(&t1, v134 + v72, v133 + v73 + v69 * v74);
    v75 = *&t1.a;
    v76 = *&t1.c;
    v77 = *&t1.tx;
    *&t1.c = v158;
    *&t1.a = v159;
    *&t1.tx = v160;
    t1.ty = v64;
    *&t2.a = v75;
    *&t2.c = v76;
    *&t2.tx = v77;
    CGAffineTransformConcat(&v164, &t1, &t2);
    v155 = *&v164.c;
    v154 = *&v164.a;
    v78 = v164.tx;
    v79 = v164.ty;
    v80 = OBJC_IVAR___PKDrawingCoherence_model;
    swift_beginAccess();
    v81 = *v132;
    v143 = v43;
    v82 = &v43[v80];
    v83 = v136;
    v84 = v137;
    v81(v136, v82, v137);
    swift_getKeyPath();
    v85 = v135;
    Capsule.subscript.getter();

    (*v131)(v83, v84);
    v86 = *(v26 + 296);
    (*v130)(v138, v85, v139);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<Ref<CRRegister<TaggedStroke>>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);

    v87 = v157;
    dispatch thunk of Sequence.makeIterator()();
    v88 = &v87[*(v146 + 52)];
    *v88 = v86;
    v88[1] = 0;
    v153 = v88;
    v14 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<Ref<CRRegister<TaggedStroke>>>.Iterator and conformance CROrderedSet<A>.Iterator, &_s9Coherence12CROrderedSetV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMd);
    v12 = *&v87;
    v152 = v14;
    dispatch thunk of IteratorProtocol.next()();
    v151 = *v156;
    if (v151(v4, 1, v5) == 1)
    {
LABEL_41:

      outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMd);
      goto LABEL_42;
    }

    *&v160 = *v161;
    (v160)(isUniquelyReferenced_nonNull_native, v4, v5);
    v89 = *(v86 + 16);
    if (v89)
    {
      break;
    }

LABEL_39:
    (*v150)(isUniquelyReferenced_nonNull_native, v5);

    v1 = v127;
LABEL_42:
    v21 = v141;
    v12 = *&v140;
    v22 = v145;
    v124 = v157;
    v157[*(v146 + 56)] = 1;
    outlined destroy of StocksKitCurrencyCache.Provider?(v124, &_ss12Zip2SequenceV8IteratorVy9Coherence12CROrderedSetVyAE3RefVyAE10CRRegisterVy8PaperKit12TaggedStrokeOGGGSaySo17CGAffineTransformVG_GMd);
    if (v22 == *&v12)
    {
LABEL_43:

      return *&v163;
    }
  }

  v1 = 0;
  v90 = (v86 + 72);
  while (1)
  {
    if (v1 >= v89)
    {
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v14 = v86;
    v91 = v4;
    ++v1;
    v93 = *(v90 - 1);
    v92 = *v90;
    v159 = *(v90 - 5);
    v158 = *(v90 - 3);
    v153[1] = v1;
    v94 = v149;
    v95 = isUniquelyReferenced_nonNull_native;
    v96 = isUniquelyReferenced_nonNull_native;
    v97 = v160;
    (v160)(v149, v96, v5);
    v98 = v162;
    v99 = v94;
    v100 = v5;
    v97(v162, v99, v5);
    *&t1.c = v158;
    *&t1.a = v159;
    t1.tx = v93;
    t1.ty = v92;
    *&t2.c = v155;
    *&t2.a = v154;
    t2.tx = v78;
    t2.ty = v79;
    CGAffineTransformConcat(&v164, &t1, &t2);
    a = v164.a;
    b = v164.b;
    c = v164.c;
    d = v164.d;
    v105 = v164.tx;
    v106 = v164.ty;
    v107 = v163;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    t1.a = v107;
    v108 = v98;
    v12 = v107;
    v109 = specialized __RawDictionaryStorage.find<A>(_:)(v108);
    v111 = v107;
    v4 = v109;
    v112 = *(*&v111 + 16);
    v113 = (v110 & 1) == 0;
    v114 = v112 + v113;
    if (__OFADD__(v112, v113))
    {
      goto LABEL_46;
    }

    v115 = v110;
    if (*(*&v111 + 24) < v114)
    {
      break;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
    }

LABEL_33:
    v118 = t1.a;
    v163 = t1.a;
    if (v115)
    {
      v119 = (*(*&t1.a + 56) + 48 * v4);
      *v119 = a;
      v119[1] = b;
      v119[2] = c;
      v119[3] = d;
      v119[4] = v105;
      v119[5] = v106;
      v5 = v100;
      (*v150)(v162, v100);
    }

    else
    {
      *(*&t1.a + 8 * (v4 >> 6) + 64) |= 1 << v4;
      v12 = v148;
      isUniquelyReferenced_nonNull_native = v162;
      v5 = v100;
      (*(*&v148 + 16))(*(*&v118 + 48) + *(*&v148 + 72) * v4, v162, v100);
      v120 = (*(*&v163 + 56) + 48 * v4);
      *v120 = a;
      v120[1] = b;
      v120[2] = c;
      v120[3] = d;
      v120[4] = v105;
      v120[5] = v106;
      v121 = v163;
      (*(*&v12 + 8))(isUniquelyReferenced_nonNull_native, v5);
      v122 = *(*&v121 + 16);
      v24 = __OFADD__(v122, 1);
      v123 = v122 + 1;
      if (v24)
      {
        goto LABEL_47;
      }

      *(*&v121 + 16) = v123;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMd);
    v4 = v91;
    v12 = *&v157;
    dispatch thunk of IteratorProtocol.next()();
    isUniquelyReferenced_nonNull_native = v95;
    if (v151(v91, 1, v5) == 1)
    {
      v1 = v127;
      goto LABEL_41;
    }

    (v160)(v95, v91, v5);
    v86 = v14;
    v89 = *(v14 + 16);
    v90 += 6;
    if (v1 == v89)
    {
      goto LABEL_39;
    }
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v114, isUniquelyReferenced_nonNull_native);
  v116 = specialized __RawDictionaryStorage.find<A>(_:)(v162);
  if ((v115 & 1) == (v117 & 1))
  {
    v4 = v116;
    goto LABEL_33;
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int ReflowLayoutManager.reflowWords(for:)(uint64_t a1)
{
  v64 = a1;
  v63 = type metadata accessor for PKDrawingStruct(0);
  MEMORY[0x1EEE9AC00](v63);
  v62 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  v5 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v61 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v50 - v8;
  v53 = type metadata accessor for IndexSet();
  v52 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  IndexSet.init()();
  swift_beginAccess();
  v11 = *(v1 + 80);
  v54 = v10;
  v51 = v1;
  if (v11 >> 62)
  {
LABEL_65:
    v12 = __CocoaSet.count.getter();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v12)
  {
    v13 = 0;
    v2 = 0;
    v65 = v11 & 0xFFFFFFFFFFFFFF8;
    v66 = v11 & 0xC000000000000001;
    v56 = (v5 + 2);
    v55 = v5 + 1;
    v58 = v11;
    v57 = v12;
    v15 = v61;
    v14 = v62;
    v16 = (v5 + 1);
    do
    {
      if (v66)
      {
        v17 = MEMORY[0x1DA6CE0C0](v13, v11);
        v3 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_15:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v13 >= *(v65 + 16))
        {
          __break(1u);
          goto LABEL_65;
        }

        v17 = *(v11 + 8 * v13 + 32);

        v3 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_15;
        }
      }

      type metadata accessor for ReflowWord();
      v18 = swift_dynamicCastClass();
      if (v18)
      {
        v19 = v18;
        v69 = v3;
        v70 = v17;
        v20 = *(v18 + 280);
        v68 = v2;
        v21 = OBJC_IVAR___PKDrawingCoherence_model;
        swift_beginAccess();
        v22 = *v56;
        v23 = v20 + v21;
        v24 = v59;
        v25 = v60;
        (*v56)(v59, v23, v60);
        Capsule.root.getter();
        v67 = *v16;
        v67(v24, v25);
        v26 = *(v19 + 280);
        v27 = OBJC_IVAR___PKDrawingCoherence_model;
        swift_beginAccess();
        v28 = (v22)(v15, v26 + v27, v25);
        v5 = &v50;
        MEMORY[0x1EEE9AC00](v28);
        *(&v50 - 2) = v64;
        *(&v50 - 1) = v15;
        v2 = v68;
        LOBYTE(v26) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Ref<>.containsStrokes<A>(_:in:), (&v50 - 4));
        _s8PaperKit15PKDrawingStructVWOhTm_1(v14, type metadata accessor for PKDrawingStruct);
        v67(v15, v25);
        if (v26)
        {
          IndexSet.insert(_:)(v13);
        }

        v11 = v58;
        v12 = v57;
        v3 = v69;
      }

      ++v13;
    }

    while (v3 != v12);
  }

  v29 = v54;
  if (IndexSet.isEmpty.getter())
  {
    (*(v52 + 8))(v29, v53);
    return MEMORY[0x1E69E7CC0];
  }

  result = IndexSet.last.getter();
  if (v32)
  {
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v33 = result + 1;
  v34 = v51;
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v35 = *(v51 + 80);
    if (!(v35 >> 62))
    {
      if (v33 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      goto LABEL_22;
    }
  }

  if (v33 >= __CocoaSet.count.getter())
  {
    goto LABEL_32;
  }

LABEL_22:
  result = IndexSet.last.getter();
  if (v36)
  {
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
    return result;
  }

  v37 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_77;
  }

  v2 = *(v34 + 80);
  if ((v2 & 0xC000000000000001) != 0)
  {
    goto LABEL_78;
  }

  if (v37 < 0)
  {
    __break(1u);
    goto LABEL_80;
  }

  if (v37 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  while (1)
  {
    type metadata accessor for ReflowSpace();
    v2 = swift_dynamicCastClass();

    if (v2)
    {
      result = IndexSet.last.getter();
      if (v38)
      {
        goto LABEL_89;
      }

      if (__OFADD__(result++, 1))
      {
        __break(1u);
        goto LABEL_84;
      }

      IndexSet.insert(_:)(result);
    }

LABEL_32:
    result = IndexSet.first.getter();
    if (v40)
    {
      goto LABEL_86;
    }

    v37 = result;
    result = IndexSet.last.getter();
    if (v41)
    {
      goto LABEL_87;
    }

    if (result < v37)
    {
      __break(1u);
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    v3 = result + 1;
    if (__OFADD__(result, 1))
    {
      goto LABEL_70;
    }

    v34 = *(v34 + 80);
    v11 = v34 >> 62;
    if (!(v34 >> 62))
    {
      if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) < v37)
      {
        goto LABEL_72;
      }

      goto LABEL_38;
    }

LABEL_71:
    if (__CocoaSet.count.getter() < v37)
    {
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

LABEL_38:
    if (v37 < 0)
    {
      goto LABEL_73;
    }

    if (v11)
    {
      result = __CocoaSet.count.getter();
    }

    else
    {
      result = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (result < v3)
    {
      goto LABEL_74;
    }

    if ((v3 & 0x8000000000000000) != 0)
    {
      goto LABEL_75;
    }

    if ((v34 & 0xC000000000000001) == 0)
    {
      goto LABEL_47;
    }

    if (v3 >= v37)
    {
      break;
    }

LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:

    MEMORY[0x1DA6CE0C0](v37, v2);
  }

  if (v37 == v3)
  {
LABEL_47:
    swift_bridgeObjectRetain_n();
    goto LABEL_51;
  }

  if (v37 >= v3)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  type metadata accessor for ReflowElement();
  swift_bridgeObjectRetain_n();
  v42 = v37;
  do
  {
    v43 = v42 + 1;
    _ArrayBuffer._typeCheckSlowPath(_:)(v42);
    v42 = v43;
  }

  while (v3 != v43);
LABEL_51:

  if (v11)
  {
    v2 = _CocoaArrayWrapper.subscript.getter();
    v11 = v44;
    v37 = v45;
    v3 = v46;

    if ((v3 & 1) == 0)
    {
      goto LABEL_55;
    }
  }

  else
  {
    v2 = v34 & 0xFFFFFFFFFFFFFF8;
    v11 = (v34 & 0xFFFFFFFFFFFFFF8) + 32;
    v3 = (2 * v3) | 1;
    if ((v3 & 1) == 0)
    {
      goto LABEL_55;
    }
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v48 = swift_dynamicCastClass();
  if (!v48)
  {
    swift_unknownObjectRelease();
    v48 = MEMORY[0x1E69E7CC0];
  }

  v49 = *(v48 + 16);

  if (!__OFSUB__(v3 >> 1, v37))
  {
    if (v49 != (v3 >> 1) - v37)
    {
      goto LABEL_82;
    }

    v30 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (!v30)
    {
      swift_unknownObjectRelease();
      v30 = MEMORY[0x1E69E7CC0];
    }

    (*(v52 + 8))(v29, v53);
    swift_unknownObjectRelease();
    return v30;
  }

LABEL_81:
  __break(1u);
LABEL_82:
  swift_unknownObjectRelease_n();
LABEL_55:
  specialized _copyCollectionToContiguousArray<A>(_:)(v2, v11, v37, v3);
  v30 = v47;
  swift_unknownObjectRelease();
  (*(v52 + 8))(v29, v53);
  return v30;
}
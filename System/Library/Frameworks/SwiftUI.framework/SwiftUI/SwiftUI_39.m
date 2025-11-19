void type metadata accessor for _DictionaryStorage<NSAttributedStringKey, Any>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<NSAttributedStringKey, Any>)
  {
    type metadata accessor for NSAttributedStringKey(255);
    lazy protocol witness table accessor for type PassthroughSubject<Any, Never> and conformance PassthroughSubject<A, B>(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<NSAttributedStringKey, Any>);
    }
  }
}

uint64_t outlined init with copy of PlatformItemList.Item.Accessibility?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PlatformItemList.Item.Accessibility?();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for PlatformItemList.Item.Accessibility?()
{
  if (!lazy cache variable for type metadata for PlatformItemList.Item.Accessibility?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PlatformItemList.Item.Accessibility?);
    }
  }
}

uint64_t MenuVisitor.appendMenuItem(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for MenuVisitor.MenuStackGroup(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 48))
  {
    if (one-time initialization token for empty != -1)
    {
      swift_once();
    }

    v8 = __swift_project_value_buffer(v4, static MenuVisitor.MenuStackGroup.empty);
    outlined init with copy of MenuVisitor.MenuStackGroup(v8, v7, type metadata accessor for MenuVisitor.MenuStackGroup);
    v9 = *(v2 + 56);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9[2] + 1, 1, v9);
    }

    v11 = v9[2];
    v10 = v9[3];
    if (v11 >= v10 >> 1)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v10 > 1, v11 + 1, 1, v9);
    }

    v9[2] = v11 + 1;
    outlined init with take of CommandOperation(v7, v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11, type metadata accessor for MenuVisitor.MenuStackGroup);
    *(v2 + 56) = v9;
    *(v2 + 48) = 0;
  }

  else
  {
    v9 = *(v2 + 56);
  }

  v12 = v9[2];
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if (v12)
    {
      goto LABEL_12;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
  if (!v12)
  {
    goto LABEL_16;
  }

LABEL_12:
  if (v12 > v9[2])
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v13 = v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * (v12 - 1);
  v14 = *(v4 + 20);
  v15 = a1;
  MEMORY[0x18D00CC30]();
  if (*((*(v13 + v14) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v13 + v14) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_18:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  *(v2 + 56) = v9;
  return result;
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs10ArraySliceVy7SwiftUI11MenuVisitor33_0F42DDF44729C152DA9EC9F6F4D00118LLV0H10StackGroupVG_So06UIMenuB0Cs5NeverOTg503_s7f4UI11h11Visitor33_0jklmnopq59LLV5visit_11uniqueNamesyAA16PlatformItemListV_SaySSGztFSo13tb7CAD0C10rS6VXEfU_AKSaySSGSbTf1cn_nTf4xnnn_n(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, char **a5, int a6)
{
  v111 = a6;
  v133 = a5;
  v104 = a4;
  v113 = a1;
  type metadata accessor for HashableCommandGroupPlacementWrapper?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v98 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v95 - v11;
  v103 = type metadata accessor for CommandOperation();
  v96 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v100 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v99 = &v95 - v15;
  v110 = type metadata accessor for MenuVisitor.MenuStackGroup(0);
  v112 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v17 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = a3 >> 1;
  v18 = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
    goto LABEL_70;
  }

  if (!v18)
  {
    return;
  }

  v125 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray.reserveCapacity(_:)();
  if ((v18 & 0x8000000000000000) != 0)
  {
    goto LABEL_71;
  }

  v105 = v17 + 304;
  v19 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenu);
  v107 = v12;
  v108 = v19;
  v20 = 0;
  v101 = (v96 + 48);
  v97 = (v96 + 56);
  v21 = 1;
  v106 = (a3 >> 1) - a2;
  v109 = v17;
  while (1)
  {
    v22 = v21;
    if (a2 >= v114 || v20 >= v18)
    {
      break;
    }

    outlined init with copy of MenuVisitor.MenuStackGroup(v113 + *(v112 + 72) * a2, v17, type metadata accessor for MenuVisitor.MenuStackGroup);
    v23 = *(v17 + 12);
    v24 = *(v17 + 14);
    v123[9] = *(v17 + 13);
    v124[0] = v24;
    *(v124 + 11) = *(v17 + 235);
    v25 = *(v17 + 9);
    v123[4] = *(v17 + 8);
    v123[5] = v25;
    v26 = *(v17 + 11);
    v123[6] = *(v17 + 10);
    v27 = *v133;
    v123[7] = v26;
    v123[8] = v23;
    v28 = *(v17 + 5);
    v123[0] = *(v17 + 4);
    v123[1] = v28;
    v29 = *(v17 + 7);
    v30 = *(v17 + 42);
    v123[2] = *(v17 + 6);
    v123[3] = v29;
    v118 = v22;
    v119 = a2;
    if (v30 >> 2 == 0xFFFFFFFF)
    {
      v31 = 0;
    }

    else
    {
      v32 = vorrq_s8(vorrq_s8(vorrq_s8(*(v105 + 40), *(v105 + 72)), vorrq_s8(*(v105 + 56), *(v105 + 88))), vorrq_s8(*v105, *(v105 + 1)));
      v33 = vorr_s8(*v32.i8, *&vextq_s8(v32, v32, 8uLL));
      v31 = v30 == 0xC000000000000000 && *&v33 == 0;
    }

    v35 = *(v17 + 117);
    v37 = *(v17 + 2);
    v36 = *(v17 + 3);
    v38 = *v17;
    v39 = *(v17 + 118);
    if (v39)
    {
      if (v39[2])
      {
        v40 = *(type metadata accessor for PlatformItemList.Item() - 8);
        v39 = *(v39 + ((*(v40 + 80) + 32) & ~*(v40 + 80)));
        v41 = v39;
      }

      else
      {
        v39 = 0;
      }
    }

    v126 = _s7SwiftUI5ImageVAAE8ResolvedVSgWOg(v123) == 0;
    v127 = v35 != 0;
    v128 = v31;
    v129 = v37;
    v130 = v36;
    v131 = v38;
    v132 = v39;
    v42 = v38;
    v43 = v38;

    v44 = PlatformItemList.Item.ConfigurationIdentifier.identifier.getter();
    v46 = v45;
    v117 = v43;

    v47 = *(v27 + 2);
    if (v47)
    {
      v116 = v42;

      v115 = v27;
      v48 = v27 + 40;
      v49 = 1;
      v50 = v44;
      v51 = v46;
      v17 = v109;
      while (1)
      {
        v52 = *(v48 - 1) == v50 && *v48 == v51;
        if (v52 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v121 = v44;
          v122 = v46;

          MEMORY[0x18D00C9B0](46, 0xE100000000000000);
          v120 = v49;
          v53 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x18D00C9B0](v53);

          v54 = __OFADD__(v49++, 1);
          if (v54)
          {
            __break(1u);
            goto LABEL_67;
          }

          v50 = v121;
          v51 = v122;
        }

        v48 += 2;
        if (!--v47)
        {

          v44 = v50;
          v46 = v51;
          v55 = v116;
          goto LABEL_31;
        }
      }
    }

    v55 = v42;
    v17 = v109;
LABEL_31:
    v56 = v133;
    v57 = *v133;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v56 = v57;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v57 + 2) + 1, 1, v57);
      *v133 = v57;
    }

    v60 = *(v57 + 2);
    v59 = *(v57 + 3);
    if (v60 >= v59 >> 1)
    {
      v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1, v57);
      *v133 = v57;
    }

    *(v57 + 2) = v60 + 1;
    v61 = &v57[16 * v60];
    *(v61 + 4) = v44;
    *(v61 + 5) = v46;
    if (v55)
    {
      v62 = [v117 string];
      v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v65 = v64;
    }

    else
    {
      v63 = 0;
      v65 = 0xE000000000000000;
    }

    v66 = v107;
    v67 = MEMORY[0x18D00C850](v44, v46);

    v68 = *&v17[*(v110 + 20)];

    v69._countAndFlagsBits = v63;
    v69._object = v65;
    v134.value.super.isa = 0;
    v134.is_nil = v67;
    UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v70, v69, 0, v134, 1, 0xFFFFFFFFFFFFFFFFLL, v68, v94);
    v72 = v71;
    v73 = *(v17 + 42);
    if (v73 >> 62 == 3 && (v73 & 0xFFFFFFFFFFFFFFFCLL) != 0x3FFFFFFFCLL && v73 == 0xC000000000000000 && *(v17 + 38) == 4 && !(*(v17 + 40) | *(v17 + 41) | *(v17 + 39)))
    {
      v74 = vorrq_s8(vorrq_s8(*(v105 + 40), *(v105 + 72)), vorrq_s8(*(v105 + 56), *(v105 + 88)));
      if (!*&vorr_s8(*v74.i8, *&vextq_s8(v74, v74, 8uLL)))
      {
        v75 = 1;
        if (v17[953] != 1)
        {
          v75 = 2;
        }

        if (v17[953])
        {
          v76 = v75;
        }

        else
        {
          v76 = 0;
        }

        [v71 setPreferredElementSize_];
      }
    }

    if ((v111 & 1) == 0)
    {
      goto LABEL_57;
    }

    v77 = type metadata accessor for PlatformItemList.Item();
    outlined init with copy of HashableCommandGroupPlacementWrapper?(&v17[*(v77 + 112)], v66, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
    v78 = (*v101)(v66, 1, v103);
    v79 = v104;
    if (v78 != 1)
    {
      v88 = v66;
      v89 = v99;
      outlined init with take of CommandOperation(v88, v99, type metadata accessor for CommandOperation);
      v90 = v100;
      outlined init with copy of MenuVisitor.MenuStackGroup(v89, v100, type metadata accessor for CommandOperation);
      v91 = v72;
      v92 = swift_isUniquelyReferenced_nonNull_native();
      v121 = *(v79 + 40);
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v90, v91, v92);

      *(v79 + 40) = v121;
      _s7SwiftUI16PlatformItemListV0D0VWOhTm_0(v89, type metadata accessor for CommandOperation);
LABEL_57:
      v84 = v119;
      goto LABEL_58;
    }

    outlined destroy of HashableCommandGroupPlacementWrapper?(v66, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
    v80 = v102;
    v81 = specialized Sequence.first(where:)(v68, v79);
    v102 = v80;
    if (!v81)
    {
      goto LABEL_57;
    }

    v82 = v81;
    v83 = *(v79 + 40);
    v84 = v119;
    if (*(v83 + 16) && (v85 = specialized __RawDictionaryStorage.find<A>(_:)(v81), (v86 & 1) != 0))
    {
      outlined init with copy of MenuVisitor.MenuStackGroup(*(v83 + 56) + *(v96 + 72) * v85, v98, type metadata accessor for CommandOperation);
      v87 = 0;
    }

    else
    {
      v87 = 1;
    }

    v93 = v98;
    (*v97)(v98, v87, 1, v103);
    specialized Dictionary.subscript.setter(v93, v72);

LABEL_58:
    v18 = v106;
    _s7SwiftUI16PlatformItemListV0D0VWOhTm_0(v17, type metadata accessor for MenuVisitor.MenuStackGroup);
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v54 = __OFADD__(v84, 1);
    a2 = v84 + 1;
    if (v54)
    {
      goto LABEL_68;
    }

    if (v118 == v18)
    {
      return;
    }

    v20 = v118;
    v21 = v118 + 1;
    if (__OFADD__(v118, 1))
    {
      goto LABEL_69;
    }
  }

LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
}

uint64_t destroy for MenuVisitor(uint64_t a1, uint64_t a2)
{

  v4 = a1 + *(a2 + 32);
  v5 = type metadata accessor for HashableCommandGroupPlacementWrapper(0);
  result = (*(*(v5 - 8) + 48))(v4, 1, v5);
  if (!result)
  {
    outlined consume of Text.Storage(*v4, *(v4 + 8), *(v4 + 16));

    v7 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
    v8 = type metadata accessor for UUID();
    v9 = *(*(v8 - 8) + 8);

    return v9(v4 + v7, v8);
  }

  return result;
}

id PlatformItemList.Item.accessibilityResolvedAttributedLabel(in:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  outlined init with copy of AnyAccessibilityValue?((v1 + 67), v10, &lazy cache variable for type metadata for PlatformItemList.Item.Accessibility?);
  if (v10[35])
  {
    if (!v10[3])
    {
      outlined destroy of PlatformItemList.Item.Accessibility(v10);
      v6 = *v1;
      if (!*v1)
      {
        return 0;
      }

      goto LABEL_9;
    }

    static AccessibilityCore.TextResolutionOptions.defaultAttributedText.getter();
    v4 = static AccessibilityCore.textsResolvedToAttributedText(_:in:options:idiom:separator:)();

    outlined destroy of PlatformItemList.Item.Accessibility(v10);
    result = v4;
    if (v4)
    {
      return result;
    }
  }

  else
  {
    outlined destroy of AnyAccessibilityValue?(v10, &lazy cache variable for type metadata for PlatformItemList.Item.Accessibility?);
  }

  v6 = *v1;
  if (!*v1)
  {
    return 0;
  }

LABEL_9:
  v9 = v6;
  v10[0] = v2;
  v10[1] = v3;
  v7 = v6;
  v8 = static AccessibilityCore.resolveAttributedTextAttributes(in:environment:options:)();
  result = v9;
  if (v8)
  {
    return result;
  }

  return 0;
}

void specialized PlatformItemList.Item.applyAccessibilityProperties(to:)(void *a1, void *a2)
{
  specialized PlatformItemList.Item.applyAccessibilityProperties(to:)(a1, a2, closure #1 in PlatformItemList.Item.applyAccessibilityProperties(to:)partial apply, &block_descriptor_40);
}

{
  specialized PlatformItemList.Item.applyAccessibilityProperties(to:)(a1, a2, closure #1 in PlatformItemList.Item.applyAccessibilityProperties(to:)partial apply, &block_descriptor_21);
}

{
  specialized PlatformItemList.Item.applyAccessibilityProperties(to:)(a1, a2, closure #1 in PlatformItemList.Item.applyAccessibilityProperties(to:)partial apply, &block_descriptor_26);
}

{
  outlined init with copy of AccessibilityLargeContentViewItem?((a2 + 67), &aBlock, &lazy cache variable for type metadata for PlatformItemList.Item.Accessibility?, &type metadata for PlatformItemList.Item.Accessibility, MEMORY[0x1E69E6720], type metadata accessor for AccessibilityUIKitTraits?);
  if (!v50)
  {
    outlined destroy of AccessibilityLargeContentViewItem?(&aBlock, &lazy cache variable for type metadata for PlatformItemList.Item.Accessibility?, &type metadata for PlatformItemList.Item.Accessibility, MEMORY[0x1E69E6720]);
LABEL_12:
    v13 = *a2;
    [a1 setSwiftUI:*a2 accessibilityStoredLabel:?];
    if (v13)
    {
      goto LABEL_13;
    }

    goto LABEL_52;
  }

  v4 = v51;
  v5 = v52;

  outlined destroy of PlatformItemList.Item.Accessibility(&aBlock);
  v37 = v4;
  v38 = v5;
  v6 = EnvironmentValues.accessibilityEnabled.getter();

  if ((v6 & 1) == 0)
  {
    goto LABEL_12;
  }

  v7 = [a1 swiftUI_accessibilityStoredLabel];
  if (v7)
  {

    [a1 setSwiftUI:0 accessibilityStoredLabel:?];
  }

  v8 = PlatformItemList.Item.accessibilityEffectiveText.getter();
  if (v8)
  {
    [a1 setAccessibilityAttributedLabel_];
  }

  outlined init with copy of AccessibilityLargeContentViewItem?((a2 + 67), &aBlock, &lazy cache variable for type metadata for PlatformItemList.Item.Accessibility?, &type metadata for PlatformItemList.Item.Accessibility, MEMORY[0x1E69E6720], type metadata accessor for AccessibilityUIKitTraits?);
  if (v50)
  {
    outlined init with copy of AccessibilityProperties(&aBlock, &v37);
    outlined destroy of PlatformItemList.Item.Accessibility(&aBlock);
    v10 = v37;
    v9 = v38;
    v11 = v39;

    outlined destroy of AccessibilityProperties(&v37);
    if (v9)
    {
      if (v11 >= 2)
      {
      }

      else
      {
        v12 = MEMORY[0x18D00C850](v10, v9);

        [a1 setAccessibilityIdentifier_];
      }
    }
  }

  else
  {
    outlined destroy of AccessibilityLargeContentViewItem?(&aBlock, &lazy cache variable for type metadata for PlatformItemList.Item.Accessibility?, &type metadata for PlatformItemList.Item.Accessibility, MEMORY[0x1E69E6720]);
  }

  outlined init with copy of AccessibilityLargeContentViewItem?((a2 + 67), &aBlock, &lazy cache variable for type metadata for PlatformItemList.Item.Accessibility?, &type metadata for PlatformItemList.Item.Accessibility, MEMORY[0x1E69E6720], type metadata accessor for AccessibilityUIKitTraits?);
  if (v50)
  {
    outlined init with copy of AccessibilityProperties(&aBlock, &v37);
    outlined destroy of PlatformItemList.Item.Accessibility(&aBlock);
    v16 = v40;
    v17 = v41;
    outlined destroy of AccessibilityProperties(&v37);
    if ((v17 & 1) == 0)
    {
      v35 = [a1 accessibilityTraits];
      v18 = 0;
      v19 = 0;
      do
      {
        v20 = outlined read-only object #0 of static AccessibilityTrait.allCases.getter[v18 + 32];
        if (v20 <= 0xD && ((1 << v20) & 0x2844) != 0 && ((v16 >> v20) & 1) != 0)
        {
          LOBYTE(aBlock) = outlined read-only object #0 of static AccessibilityTrait.allCases.getter[v18 + 32];
          v22 = AccessibilityTrait.uiTrait.getter();
          if ((v23 & 1) == 0)
          {
            v19 |= v22;
          }
        }

        ++v18;
      }

      while (v18 != 32);
      [a1 setAccessibilityTraits_];
    }
  }

  else
  {
    outlined destroy of AccessibilityLargeContentViewItem?(&aBlock, &lazy cache variable for type metadata for PlatformItemList.Item.Accessibility?, &type metadata for PlatformItemList.Item.Accessibility, MEMORY[0x1E69E6720]);
  }

  outlined init with copy of AccessibilityLargeContentViewItem?((a2 + 67), &aBlock, &lazy cache variable for type metadata for PlatformItemList.Item.Accessibility?, &type metadata for PlatformItemList.Item.Accessibility, MEMORY[0x1E69E6720], type metadata accessor for AccessibilityUIKitTraits?);
  if (!v50)
  {
    goto LABEL_38;
  }

  outlined init with copy of AccessibilityProperties(&aBlock, &v37);
  outlined destroy of PlatformItemList.Item.Accessibility(&aBlock);
  v24 = AccessibilityProperties.hints.getter();
  outlined destroy of AccessibilityProperties(&v37);
  if (!*(v24 + 16))
  {

    goto LABEL_41;
  }

  outlined init with copy of AccessibilityLargeContentViewItem?((a2 + 67), &aBlock, &lazy cache variable for type metadata for PlatformItemList.Item.Accessibility?, &type metadata for PlatformItemList.Item.Accessibility, MEMORY[0x1E69E6720], type metadata accessor for AccessibilityUIKitTraits?);
  if (!v50)
  {

LABEL_38:
    outlined destroy of AccessibilityLargeContentViewItem?(&aBlock, &lazy cache variable for type metadata for PlatformItemList.Item.Accessibility?, &type metadata for PlatformItemList.Item.Accessibility, MEMORY[0x1E69E6720]);
    goto LABEL_41;
  }

  v25 = v51;
  v26 = v52;

  v27 = outlined destroy of PlatformItemList.Item.Accessibility(&aBlock);
  aBlock = v25;
  v45 = v26;
  v37 = 0;
  v38 = 0;
  MEMORY[0x18D005BE0](&v36, v27);
  v28 = static AccessibilityCore.textsResolvedToPlainText(_:in:options:idiom:separator:)();
  v30 = v29;

  if (v30)
  {
    v31 = MEMORY[0x18D00C850](v28, v30);
  }

  else
  {
    v31 = 0;
  }

  [a1 setAccessibilityHint_];

LABEL_41:
  outlined init with copy of AccessibilityLargeContentViewItem?((a2 + 67), &aBlock, &lazy cache variable for type metadata for PlatformItemList.Item.Accessibility?, &type metadata for PlatformItemList.Item.Accessibility, MEMORY[0x1E69E6720], type metadata accessor for AccessibilityUIKitTraits?);
  if (!v50)
  {

    outlined destroy of AccessibilityLargeContentViewItem?(&aBlock, &lazy cache variable for type metadata for PlatformItemList.Item.Accessibility?, &type metadata for PlatformItemList.Item.Accessibility, MEMORY[0x1E69E6720]);
    if (v8)
    {
      goto LABEL_13;
    }

LABEL_52:
    [a1 setAccessibilityLabelBlock_];
    return;
  }

  outlined init with copy of AccessibilityProperties(&aBlock, &v37);
  outlined destroy of PlatformItemList.Item.Accessibility(&aBlock);
  v32 = v42;
  v33 = v43;
  outlined destroy of AccessibilityProperties(&v37);
  if ((v33 & 1) == 0)
  {
    if ((v32 & 4) != 0)
    {
      v34 = 1;
    }

    else if ((v32 & 0x400000000) != 0)
    {
      v34 = 0;
    }

    else
    {
      v34 = (v32 >> 3) & 1;
    }

    [a1 setAccessibilityElementsHidden_];
  }

  if (!v8)
  {
    goto LABEL_52;
  }

LABEL_13:
  if (![a1 _accessibilityGetBlockForAttribute_])
  {
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v48 = partial apply for closure #1 in PlatformItemList.Item.applyAccessibilityProperties(to:);
    v49 = v14;
    aBlock = MEMORY[0x1E69E9820];
    v45 = 1107296256;
    v46 = thunk for @escaping @callee_guaranteed () -> (@owned String?);
    v47 = &block_descriptor_69;
    v15 = _Block_copy(&aBlock);

    [a1 setAccessibilityLabelBlock_];
    _Block_release(v15);
  }
}

uint64_t getEnumTag for ProgressView.Base(_DWORD *a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Date() - 8);
  v5 = *(v4 + 64) + ((*(v4 + 64) + *(v4 + 80)) & ~*(v4 + 80));
  v6 = *(*(a2 + 16) - 8);
  if (v5 + 1 > 0xA)
  {
    v7 = v5 + 1;
  }

  else
  {
    v7 = 10;
  }

  v8 = (v7 + *(v6 + 80) + 1) & ~*(v6 + 80);
  v9 = *(v6 + 84);
  v10 = *(v6 + 64);
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = v10 + 1;
  }

  v12 = *(*(a2 + 24) - 8);
  v13 = (v11 + *(v12 + 80) + v8) & ~*(v12 + 80);
  v14 = *(v12 + 64);
  if (!*(v12 + 84))
  {
    ++v14;
  }

  v15 = ((v14 + v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v15 <= 0x40)
  {
    v15 = 64;
  }

  result = *(a1 + v15);
  if (result >= 2 && v15 != 0)
  {
    return (*a1 + 2);
  }

  return result;
}

void destructiveInjectEnumTag for ProgressView.Base(unsigned int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(type metadata accessor for Date() - 8);
  v7 = *(v6 + 64) + ((*(v6 + 64) + *(v6 + 80)) & ~*(v6 + 80));
  v8 = 10;
  if (v7 + 1 > 0xA)
  {
    v8 = v7 + 1;
  }

  v9 = *(*(a3 + 16) - 8);
  v10 = (v8 + *(v9 + 80) + 1) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  if (*(v9 + 84))
  {
    v12 = v11;
  }

  else
  {
    v12 = v11 + 1;
  }

  v13 = *(*(a3 + 24) - 8);
  v14 = (v12 + *(v13 + 80) + v10) & ~*(v13 + 80);
  v15 = *(v13 + 64);
  if (!*(v13 + 84))
  {
    ++v15;
  }

  v16 = ((v15 + v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v16 <= 0x40)
  {
    v17 = 64;
  }

  else
  {
    v17 = v16;
  }

  if (a2 > 1)
  {
    if ((v17 & 0xFFFFFFF8) != 0)
    {
      v18 = 2;
    }

    else
    {
      v18 = a2;
    }

    *(a1 + v17) = v18;
    if (v17)
    {
      if ((v17 & 0xFFFFFFF8) != 0)
      {
        v19 = a2 - 2;
      }

      else
      {
        v19 = 0;
      }

      bzero(a1, v17);
      *a1 = v19;
    }
  }

  else
  {
    *(a1 + v17) = a2;
  }
}

uint64_t downloadURL(_:)@<X0>(NSURL *a1@<X8>)
{
  URL._bridgeToObjectiveC()(a1);
  v3 = v2;
  v4 = CGImageSourceCreateWithURL(v2, 0);
  if (v4)
  {
    v5 = v4;
    if (CGImageSourceGetCount(v4) >= 1)
    {
      v7 = v1[5];
      v6 = v1[6];
      v8 = v1[4];
      v9 = v1[2];
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v5, 0, 0);
      v11 = CGImageSourceRef.orientation(at:)(0);

      (*(v7 + 32))(v9, v6, v8);
      (*(v7 + 56))(v9, 0, 1, v8);
      v12 = type metadata accessor for TaskResult(0);
      *(v9 + v12[5]) = ImageAtIndex;
      *(v9 + v12[6]) = v11;
      *(v9 + v12[7]) = 0;

      v13 = v1[1];
      goto LABEL_6;
    }
  }

  v15 = v1[5];
  v14 = v1[6];
  v16 = v1[4];
  lazy protocol witness table accessor for type LoadingError and conformance LoadingError();
  swift_allocError();
  swift_willThrow();

  (*(v15 + 8))(v14, v16);

  v13 = v1[1];
LABEL_6:

  return v13();
}

uint64_t downloadURL(_:)(void *a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = downloadURL(_:);
  }

  else
  {
    v6 = *(v4 + 56);

    v5 = downloadURL(_:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t CGImageSourceRef.orientation(at:)(size_t index)
{
  v2 = CGImageSourceCopyPropertiesAtIndex(v1, index, 0);
  if (v2)
  {
    v3 = v2;
    Value = CFDictionaryGetValue(v2, *MEMORY[0x1E696DE78]);

    if (Value)
    {
      v5 = Value;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        static Int._conditionallyBridgeFromObjectiveC(_:result:)();
      }
    }
  }

  return 8;
}

uint64_t closure #1 in AsyncImage.didChangeURL(oldValue:newValue:)()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = closure #1 in AsyncImage.didChangeURL(oldValue:newValue:);
  }

  else
  {
    v2 = closure #1 in AsyncImage.didChangeURL(oldValue:newValue:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  type metadata accessor for MainActor();
  *(v0 + 64) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in AsyncImage.didChangeURL(oldValue:newValue:), v2, v1);
}

{
  v1 = v0[5];
  v2 = v0[3];

  v3 = *(v1 + *(v2 + 20));
  v4 = v0[5];
  v5 = v0[2];
  type metadata accessor for TaskConfig(0);
  v6 = swift_task_alloc();
  v6[2] = v5;
  if (v3)
  {
    v6[3] = v3;
    v6[4] = v4;
    v7 = v3;
    withTransaction<A>(_:_:)();
  }

  else
  {
    v6[3] = v4;
    withTransaction<A>(_:_:)();
  }

  return MEMORY[0x1EEE6DFA0](closure #1 in AsyncImage.didChangeURL(oldValue:newValue:), 0, 0);
}

{
  outlined destroy of LoadingState(*(v0 + 40), type metadata accessor for TaskResult);

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  *(v2 + v3[5]) = 0;
  *(v2 + v3[6]) = 8;
  *(v2 + v3[7]) = v1;
  type metadata accessor for MainActor();
  v0[9] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in AsyncImage.didChangeURL(oldValue:newValue:), v6, v5);
}

{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);

  type metadata accessor for TaskConfig(0);
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  withTransaction<A>(_:_:)();

  return MEMORY[0x1EEE6DFA0](closure #1 in AsyncImage.didChangeURL(oldValue:newValue:), 0, 0);
}

{
  outlined destroy of LoadingState(*(v0 + 32), type metadata accessor for TaskResult);

  v1 = *(v0 + 8);

  return v1();
}

void type metadata accessor for Attribute<[KeyboardShortcutBinding]>()
{
  if (!lazy cache variable for type metadata for Attribute<[KeyboardShortcutBinding]>)
  {
    _s7SwiftUI16KeyboardShortcutVSgMaTm_0(255, &lazy cache variable for type metadata for [KeyboardShortcutBinding], &type metadata for KeyboardShortcutBinding, MEMORY[0x1E69E62F8]);
    v0 = type metadata accessor for Attribute();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Attribute<[KeyboardShortcutBinding]>);
    }
  }
}

uint64_t initializeWithCopy for BindKeyboardShortcutItems(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  v4 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v4;
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  v5 = v3;

  return a1;
}

uint64_t destroy for BindKeyboardShortcutItems(uint64_t a1)
{
}

unint64_t *assignWithCopy for AsyncImage.Inner(unint64_t *a1, unint64_t *a2)
{
  v4 = *a2;
  outlined copy of AsyncImagePhase(*a2);
  v5 = *a1;
  *a1 = v4;
  outlined consume of AsyncImagePhase(v5);
  v6 = a2[2];
  a1[1] = a2[1];
  a1[2] = v6;

  return a1;
}

uint64_t NavigationSplitSidebarStateMachine.setInitialInspectorVisibility(visibilityEngine:splitController:isAnimated:)(__int128 *a1, void *a2, int a3)
{
  v4 = v3;
  LODWORD(v5) = a3;
  type metadata accessor for Logger?();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[3];
  v50 = a1[2];
  v51 = v11;
  v52 = a1[4];
  v53 = *(a1 + 80);
  v12 = a1[1];
  v48 = *a1;
  v49 = v12;
  static Log.splitViewVisibility.getter();
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v10, 1, v13) == 1)
  {
    outlined destroy of Logger?(v10);
    v15 = v50;
    if (!v50)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  outlined init with copy of UISplitViewControllerVisibilityEngine(&v48, &v42);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  outlined destroy of UISplitViewControllerVisibilityEngine(&v48);
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v33 = v5;
    v5 = v18;
    v19 = swift_slowAlloc();
    v32[1] = v4;
    v20 = v19;
    v41 = v19;
    *v5 = 136315138;
    v37 = v50;
    v38 = v51;
    v39 = v52;
    v40 = v53;
    v35 = v48;
    v36 = v49;
    outlined init with copy of UISplitViewControllerVisibilityEngine(&v48, &v42);
    v21 = UISplitViewControllerVisibilityEngine.description.getter();
    v34 = a2;
    v23 = v22;
    v44 = v37;
    v45 = v38;
    v46 = v39;
    v47 = v40;
    v42 = v35;
    v43 = v36;
    outlined destroy of UISplitViewControllerVisibilityEngine(&v42);
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v41);
    a2 = v34;

    *(v5 + 4) = v24;
    _os_log_impl(&dword_18BD4A000, v16, v17, "setting initial inspector visibility, %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x18D0110E0](v20, -1, -1);
    v25 = v5;
    LOBYTE(v5) = v33;
    MEMORY[0x18D0110E0](v25, -1, -1);
  }

  (*(v14 + 8))(v10, v13);
  v15 = v50;
  if (v50)
  {
LABEL_7:
    *&v42 = *(&v49 + 1);
    *(&v42 + 1) = v15;
    LOBYTE(v43) = BYTE8(v50);
    type metadata accessor for ObjectIdentifier?(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
    MEMORY[0x18D00ACC0](&v35);
  }

LABEL_8:
  LOBYTE(v35) = 17;
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = swift_allocObject();
  v28 = v51;
  *(v27 + 56) = v50;
  *(v27 + 72) = v28;
  *(v27 + 88) = v52;
  v29 = v49;
  *(v27 + 24) = v48;
  *(v27 + 16) = v26;
  *(v27 + 104) = v53;
  *(v27 + 40) = v29;
  *(v27 + 112) = a2;
  *(v27 + 120) = v5 & 1;
  outlined init with copy of UISplitViewControllerVisibilityEngine(&v48, &v42);

  v30 = a2;
  static Update.enqueueAction(reason:_:)();
}

uint64_t sub_18C020988()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_18C0209C0()
{

  if (*(v0 + 56))
  {
  }

  v1 = *(v0 + 72);
  if (v1)
  {
    if (v1 == 1)
    {
      goto LABEL_8;
    }
  }

  if (*(v0 + 88))
  {
  }

LABEL_8:

  return swift_deallocObject();
}

Swift::Bool_optional *closure #1 in NavigationSplitSidebarStateMachine.setInitialInspectorVisibility(visibilityEngine:splitController:isAnimated:)(uint64_t a1, uint64_t a2, UISplitViewController *a3, char a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    result[40].value = UISplitViewControllerVisibilityEngine.updateSplitViewControllerInspector(_:isAnimated:)(a3, a4 & 1).value;
  }

  return result;
}

Swift::Bool_optional __swiftcall UISplitViewControllerVisibilityEngine.updateSplitViewControllerInspector(_:isAnimated:)(UISplitViewController *_, Swift::Bool isAnimated)
{
  type metadata accessor for Logger?();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v2 + 32);
  if (v7)
  {
    v8 = *(v2 + 40);
    v19 = *(v2 + 24);
    v20 = v7;
    v21 = v8 & 1;
    type metadata accessor for Binding<AnyNavigationSplitVisibility>(0, &lazy cache variable for type metadata for Binding<Bool>);
    MEMORY[0x18D00ACC0]((&v18 + 7));
    v9 = HIBYTE(v18);
    static Log.splitViewVisibility.getter();
    v10 = type metadata accessor for Logger();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v6, 1, v10) == 1)
    {
      outlined destroy of Logger?(v6);
    }

    else
    {
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 67109120;
        *(v14 + 4) = v9;
        _os_log_impl(&dword_18BD4A000, v12, v13, "setting SVC inspector is presented to %{BOOL}d", v14, 8u);
        MEMORY[0x18D0110E0](v14, -1, -1);
      }

      (*(v11 + 8))(v6, v10);
    }

    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    *(v16 + 24) = isAnimated;
    *(v16 + 32) = 4;

    static UIHostingViewBase.UpdateCycle.addPreCommitObserverOrAsyncMain(_:)();
  }

  else
  {
    LOBYTE(v9) = 2;
  }

  return v9;
}

uint64_t sub_18C020D94()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18C020DCC()
{

  return swift_deallocObject();
}

uint64_t closure #1 in updateTaskResult(_:config:)(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for LoadingState(0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TaskConfig(0);
  type metadata accessor for TaskResult(0);
  v7 = a2;
  v8 = Image.init(decorative:scale:orientation:)();
  type metadata accessor for State<LoadingState>(0, &lazy cache variable for type metadata for Binding<LoadingState>, type metadata accessor for LoadingState, MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0]();
  v9 = *(v4 + 32);
  outlined consume of AsyncImagePhase(*&v6[v9]);
  *&v6[v9] = v8;
  dispatch thunk of AnyLocation.set(_:transaction:)();
  return outlined destroy of LoadingState(v6, type metadata accessor for LoadingState);
}

void destroy for TaskResult(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1, 1, v4))
  {
    (*(v5 + 8))(a1, v4);
  }

  v6 = *(a1 + *(a2 + 28));
}

unint64_t getEnumTag for AsyncImagePhase(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t assignWithCopy for CircularUIKitProgressView(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  outlined copy of Environment<Selector?>.Content(v8, v9);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  outlined consume of Environment<Selector?>.Content(v10, v11);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  outlined copy of Environment<Selector?>.Content(v12, v13);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  *(a1 + 32) = v12;
  *(a1 + 40) = v13;
  outlined consume of Environment<Selector?>.Content(v14, v15);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  v16 = *(a2 + 64);
  v17 = *(a2 + 72);
  outlined copy of Environment<Selector?>.Content(v16, v17);
  v18 = *(a1 + 64);
  v19 = *(a1 + 72);
  *(a1 + 64) = v16;
  *(a1 + 72) = v17;
  outlined consume of Environment<Selector?>.Content(v18, v19);
  v20 = *(a2 + 80);
  v21 = *(a2 + 88);
  outlined copy of Environment<Selector?>.Content(v20, v21);
  v22 = *(a1 + 80);
  v23 = *(a1 + 88);
  *(a1 + 80) = v20;
  *(a1 + 88) = v21;
  outlined consume of Environment<Selector?>.Content(v22, v23);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  v24 = *(a2 + 112);
  v25 = *(a2 + 120);
  outlined copy of Environment<Selector?>.Content(v24, v25);
  v26 = *(a1 + 112);
  v27 = *(a1 + 120);
  *(a1 + 112) = v24;
  *(a1 + 120) = v25;
  outlined consume of Environment<Selector?>.Content(v26, v27);
  v28 = *(a2 + 128);
  v29 = *(a2 + 136);
  outlined copy of Environment<Selector?>.Content(v28, v29);
  v30 = *(a1 + 128);
  v31 = *(a1 + 136);
  *(a1 + 128) = v28;
  *(a1 + 136) = v29;
  outlined consume of Environment<Selector?>.Content(v30, v31);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);

  *(a1 + 168) = *(a2 + 168);
  return a1;
}

uint64_t DefaultListToggleStyle.makeBody(configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v4 = *(a1 + 16);
  v6 = a1[3];
  v5 = a1[4];
  v22 = *(a1 + 40);
  v7 = a1[6];
  v8 = a1[7];
  v9 = a1[8];
  v10 = a1[9];
  v11 = a1[10];
  v12 = a1[11];
  v24 = *a1;
  v25 = v3;
  v26 = v4;
  type metadata accessor for Binding<Bool>();
  MEMORY[0x18D00ACC0](&v23);
  if (v23 == 1)
  {
    v13 = static Text.System.on.getter();
  }

  else
  {
    v13 = static Text.System.off.getter();
  }

  outlined consume of Text.Storage(v13, v14, v15 & 1);

  *a2 = v6;
  *(a2 + 8) = v5;
  *(a2 + 16) = v22;
  v16 = v9 & 1;
  if (v10)
  {
    v17 = v7;
  }

  else
  {
    v17 = 0;
  }

  if (v10)
  {
    v18 = v8;
  }

  else
  {
    v18 = 0;
  }

  if (v10)
  {
    v19 = v11;
  }

  else
  {
    v16 = 0;
    v19 = 0;
  }

  if (v10)
  {
    v20 = v12;
  }

  else
  {
    v20 = 0;
  }

  *(a2 + 24) = v17;
  *(a2 + 32) = v18;
  *(a2 + 40) = v16;
  *(a2 + 48) = v10;
  *(a2 + 56) = v19;
  *(a2 + 64) = v20;

  return outlined copy of ToggleStyleConfiguration.Effect(v7, v8, v9, v10);
}

uint64_t PlatformFallbackToggleStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 32);
  v20 = *(a1 + 24);
  v18 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v19 = v4;
  v16 = *(a1 + 56);
  v17 = v5;
  if (v6)
  {
    v15 = v5 & 1;
    v7 = *(a1 + 56);
    v8 = *(a1 + 80);
    v9 = *(a1 + 88);
  }

  else
  {
    v4 = 0;
    v7 = 0;
    v15 = 0;
    v8 = 0;
    v9 = 0;
  }

  KeyPath = swift_getKeyPath();
  v11 = swift_getKeyPath();
  v12 = swift_getKeyPath();
  v13 = swift_getKeyPath();
  *a2 = v20;
  *(a2 + 8) = v3;
  *(a2 + 16) = v18;
  *(a2 + 24) = v4;
  *(a2 + 32) = v7;
  *(a2 + 40) = v15;
  *(a2 + 48) = v6;
  *(a2 + 56) = v8;
  *(a2 + 64) = v9;
  *(a2 + 72) = KeyPath;
  *(a2 + 80) = 0;
  *(a2 + 88) = v11;
  *(a2 + 96) = 0;
  *(a2 + 104) = v12;
  *(a2 + 112) = 0;
  *(a2 + 120) = v13;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;

  return outlined copy of ToggleStyleConfiguration.Effect(v19, v16, v17, v6);
}

uint64_t initializeWithCopy for SwitchToggleStyle(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Bool>.Content(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = a2[2];
  v7 = *(a2 + 24);
  outlined copy of Environment<Color?>.Content(v6, v7);
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v8 = a2[4];
  v9 = *(a2 + 40);
  outlined copy of ResolvedTableRowIDs.Storage(v8, v9);
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  v10 = *(a2 + 56);
  *(a1 + 48) = a2[6];
  *(a1 + 56) = v10;
  *(a1 + 64) = a2[8];

  return a1;
}

uint64_t destroy for SwitchToggleStyle(uint64_t a1)
{
  outlined consume of Environment<Bool>.Content(*a1, *(a1 + 8));
  outlined consume of Environment<Color?>.Content(*(a1 + 16), *(a1 + 24));
  outlined consume of Environment<[SceneID : KeyboardShortcut]>.Content(*(a1 + 32), *(a1 + 40));
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance BarConfiguration(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI20ContentScrollViewBoxV_Tt1g5(*a1, *a2))
  {
    if (v2 == 4)
    {
      if (v3 == 4)
      {
        return 1;
      }
    }

    else if (v3 != 4 && v2 == v3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t key path getter for EnvironmentValues.effectiveFont : EnvironmentValues@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.effectiveFont.getter();
  *a1 = result;
  return result;
}

uint64_t *assignWithTake for SwitchToggleStyle(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Bool>.Content(v6, v7);
  v8 = *(a2 + 24);
  v9 = a1[2];
  v10 = *(a1 + 24);
  a1[2] = a2[2];
  *(a1 + 24) = v8;
  outlined consume of Environment<Color?>.Content(v9, v10);
  v11 = *(a2 + 40);
  v12 = a1[4];
  v13 = *(a1 + 40);
  a1[4] = a2[4];
  *(a1 + 40) = v11;
  outlined consume of Environment<[SceneID : KeyboardShortcut]>.Content(v12, v13);
  v14 = *(a2 + 56);
  a1[6] = a2[6];
  *(a1 + 56) = v14;

  a1[8] = a2[8];

  return a1;
}

__n128 SwitchToggleStyle.makeBody(configuration:)@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v29 = a1[2];
  v30 = v4;
  v5 = a1[5];
  v31 = a1[4];
  v32 = v5;
  v6 = a1[1];
  v27 = *a1;
  v28 = v6;
  v7 = *(v2 + 48);
  v33[2] = *(v2 + 32);
  v33[3] = v7;
  v34 = *(v2 + 64);
  v8 = *(v2 + 16);
  v33[0] = *v2;
  v33[1] = v8;
  closure #1 in SwitchToggleStyle.makeBody(configuration:)(&v27, v33, v25);
  v26[24] = 2;
  v22 = 16;
  v9 = swift_allocObject();
  v10 = v30;
  v9[3] = v29;
  v9[4] = v10;
  v11 = v32;
  v9[5] = v31;
  v9[6] = v11;
  v12 = v28;
  v9[1] = v27;
  v9[2] = v12;
  outlined init with copy of ToggleStyleConfiguration(&v27, &v18);
  lazy protocol witness table accessor for type PhysicalButtonPressGesture and conformance PhysicalButtonPressGesture();
  Gesture.onEnded(_:)();

  v13 = v23;
  v20 = v25[2];
  *v21 = *v26;
  *&v21[9] = *&v26[9];
  v18 = v25[0];
  v19 = v25[1];
  v17 = v24;

  v14 = *v21;
  *(a2 + 32) = v20;
  *(a2 + 48) = v14;
  *(a2 + 64) = *&v21[16];
  v15 = v19;
  *a2 = v18;
  *(a2 + 16) = v15;
  *(a2 + 80) = v13;
  result = v17;
  *(a2 + 88) = v17;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 3;
  return result;
}

uint64_t sub_18C021A1C()
{

  if (*(v0 + 88))
  {
    outlined consume of Environment<AppIntentExecutor?>.Content(*(v0 + 64), *(v0 + 72), *(v0 + 80));
  }

  return swift_deallocObject();
}

void type metadata accessor for Binding<NavigationSplitViewColumn>?()
{
  if (!lazy cache variable for type metadata for Binding<NavigationSplitViewColumn>?)
  {
    type metadata accessor for _EnvironmentKeyTransformModifier<NavigationEventHandlers>(255, &lazy cache variable for type metadata for Binding<NavigationSplitViewColumn>, &type metadata for NavigationSplitViewColumn, MEMORY[0x1E6981948]);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Binding<NavigationSplitViewColumn>?);
    }
  }
}

__n128 closure #1 in SwitchToggleStyle.makeBody(configuration:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53 = *(a1 + 24);
  v54 = *(a1 + 40);
  v5 = *(a2 + 64);
  if (v5)
  {
    outlined init with copy of UIViewRepresentableContext<Switch>(&v53, __src, &lazy cache variable for type metadata for Binding<ToggleState>, MEMORY[0x1E697DD58], MEMORY[0x1E6981948], _s7SwiftUI7BindingVyAA11ToggleStateOGMaTm_0);
    v6 = v5;
  }

  else
  {
    v7 = *(a2 + 16);
    v8 = *(a2 + 24);
    outlined init with copy of UIViewRepresentableContext<Switch>(&v53, __src, &lazy cache variable for type metadata for Binding<ToggleState>, MEMORY[0x1E697DD58], MEMORY[0x1E6981948], _s7SwiftUI7BindingVyAA11ToggleStateOGMaTm_0);
    v6 = specialized Environment.wrappedValue.getter(v7, v8);
  }

  v9 = *(a2 + 32);
  v10 = *(a2 + 40);

  v11 = specialized Environment.wrappedValue.getter(v9, v10);
  v12 = static TintPlacement.switchThumb.getter();
  if (*(v11 + 16) && (v13 = specialized __RawDictionaryStorage.find<A>(_:)(v12), (v14 & 1) != 0))
  {
    v15 = *(*(v11 + 56) + 8 * v13);
  }

  else
  {
    v15 = 0;
  }

  v16 = specialized Environment.wrappedValue.getter(*(a2 + 48), *(a2 + 56));
  v34 = v53;
  v35.n128_u8[0] = v54;
  v35.n128_u64[1] = v6;
  *&v36 = v15;
  *(&v36 + 1) = v16;
  v37 = 65793;
  v47 = v53;
  v48 = v35;
  v49 = v36;
  LODWORD(v50) = 65793;
  v41 = 65793;
  v39 = v35;
  v40 = v36;
  v38 = v53;

  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>(&v34, __src, type metadata accessor for ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>);
  AccessibilityProperties.init()();
  *&v27[8] = vdupq_n_s64(0x10000uLL);
  v27[24] = 0;
  static AccessibilityAttachment.properties(_:)();
  outlined destroy of AccessibilityProperties(&v25);
  _s7SwiftUI7BindingVyAA11ToggleStateOGMaTm_0(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v17 = swift_allocObject();
  memcpy((v17 + 16), __src, 0x128uLL);
  v20 = v38;
  v21 = v39;
  v22 = v40;
  LODWORD(v23) = v41;
  v42[0] = v47;
  v42[1] = v48;
  v42[2] = v49;
  v43 = v50;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>(&v38, __src, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>(v42, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>);
  v44[0] = v20;
  v44[1] = v21;
  v44[2] = v22;
  *&v45 = v23;
  *(&v45 + 1) = v17;
  v29 = v20;
  v30 = v21;
  v31 = v22;
  v32 = v45;
  v46 = 0;
  v33 = 0;
  v48 = v21;
  v49 = v22;
  v47 = v20;
  v50 = v23;
  v51 = v17;
  v52 = 0;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>(v44, __src, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>(&v47, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>);
  *v27 = v31;
  *&v27[16] = v32;
  v28 = v33;
  v25 = v29;
  v26 = v30;
  __src[2] = v31;
  __src[3] = v32;
  *&__src[4] = v33;
  __src[0] = v29;
  __src[1] = v30;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>(&v25, &v20, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>(__src, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>);

  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>(&v34, type metadata accessor for ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>);
  v18 = *&v27[16];
  *(a3 + 32) = *v27;
  *(a3 + 48) = v18;
  *(a3 + 64) = v28;
  result = v26;
  *a3 = v25;
  *(a3 + 16) = result;
  return result;
}

unint64_t type metadata accessor for NSManagedObjectContext()
{
  result = lazy cache variable for type metadata for NSManagedObjectContext;
  if (!lazy cache variable for type metadata for NSManagedObjectContext)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSManagedObjectContext);
  }

  return result;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t initializeWithCopy for Switch(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

void type metadata accessor for Color?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI5ColorVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI5ColorVSgMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t destroy for Switch()
{
}

uint64_t closure #1 in FocusStoreLocation.findFocusedEntry()(uint64_t a1, BOOL *a2, uint64_t a3, void *a4, char *a5)
{
  v48 = a5;
  v49 = a2;
  v51 = a4;
  v47 = type metadata accessor for SearchFieldState(0);
  MEMORY[0x1EEE9AC00](v47);
  v46 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Binding<SearchFieldState>?(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Binding<SearchFieldState>(0);
  v12 = v11;
  v50 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FocusStore.Entry();
  v16 = type metadata accessor for Optional();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v42 - v18;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v42 - v22;
  v24 = a1;
  v26 = v25;
  (*(v17 + 16))(v19, v24, v16, v21);
  if ((*(v26 + 48))(v19, 1, v15) == 1)
  {
    return (*(v17 + 8))(v19, v16);
  }

  v44 = v16;
  v45 = v17;
  v28 = v26 + 32;
  v43 = *(v26 + 32);
  v43(v23, v19, v15);
  if ((FocusStore.Entry.isValid.getter(v15) & 1) == 0)
  {
    return (*(v26 + 8))(v23, v15);
  }

  v42 = v26;
  v29 = FocusStore.Entry.responder.getter(v15);
  if (v29)
  {
    v30 = v29;
    v50 = v28;
    v31 = *(a3 + 24);
    v32 = *(v31 + 16);

    v33 = 0;
    while (1)
    {
      if (v33 == v32)
      {
        v54[0] = 0;
        v54[1] = 0;
        v33 = v32;
        v55 = 1;
      }

      else
      {
        if (v33 >= *(v31 + 16))
        {
          __break(1u);
          return result;
        }

        v52 = v33;
        outlined init with copy of WeakBox<ViewResponder>(v31 + 32 + 8 * v33, &v53);
        outlined init with take of Binding<SearchFieldState>(&v52, v54, type metadata accessor for (offset: Int, element: WeakBox<ViewResponder>));
        v55 = 0;
        ++v33;
      }

      outlined init with take of (offset: Int, element: WeakBox<ViewResponder>)?(v54, &v56);
      if (v57[8] == 1)
      {
        (*(v42 + 8))(v23, v15);
      }

      v34 = v56;
      outlined init with take of Binding<SearchFieldState>(v57, v54, type metadata accessor for WeakBox<ViewResponder>);
      Strong = swift_weakLoadStrong();
      result = outlined destroy of SearchFieldState(v54, type metadata accessor for WeakBox<ViewResponder>);
      if (Strong)
      {

        if (Strong == v30 && v34 < *v51)
        {

          v36 = v48;
          (*(v45 + 8))(v48, v44);
          v43(v36, v23, v15);
          result = (*(v42 + 56))(v36, 0, 1, v15);
          *v51 = v34;
          *v49 = v34 == 0;
          return result;
        }
      }
    }
  }

  FocusStore.Entry.searchFieldState.getter(v15, v10);
  v37 = (*(v50 + 48))(v10, 1, v12);
  v38 = v45;
  if (v37 == 1)
  {
    (*(v42 + 8))(v23, v15);
    return outlined destroy of SearchFieldState(v10, type metadata accessor for Binding<SearchFieldState>?);
  }

  else
  {
    outlined init with take of Binding<SearchFieldState>(v10, v14, type metadata accessor for Binding<SearchFieldState>);
    v39 = v46;
    MEMORY[0x18D00ACC0](v12);
    outlined destroy of SearchFieldState(v14, type metadata accessor for Binding<SearchFieldState>);
    v40 = *(v39 + *(v47 + 40));
    outlined destroy of SearchFieldState(v39, type metadata accessor for SearchFieldState);
    if (v40 == 1)
    {
      v41 = v48;
      (*(v38 + 8))(v48, v44);
      v43(v41, v23, v15);
      result = (*(v42 + 56))(v41, 0, 1, v15);
      *v49 = 1;
    }

    else
    {
      return (*(v42 + 8))(v23, v15);
    }
  }

  return result;
}

uint64_t initializeWithTake for FocusStore.Entry(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = type metadata accessor for AttributedString();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = v11;
  v13 = v11 + 8;
  v14 = v11 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v15 = ((v7 + v13) & v14);
  v16 = ((v8 + v13) & v14);
  v17 = v11 & 0xFC ^ 0xFFFFFFFFFFFFFFFCLL;
  v18 = (v12 + 9) & ~v12;
  v19 = *(v10 + 64);
  if (((v12 + 16) & v17) + ((v18 + v19) & 0xFFFFFFFFFFFFFFFCLL) + 9 <= 0x10)
  {
    v20 = 16;
  }

  else
  {
    v20 = ((v12 + 16) & v17) + ((v18 + v19) & 0xFFFFFFFFFFFFFFFCLL) + 9;
  }

  v21 = v16[v20];
  v22 = v21 - 2;
  if (v21 < 2)
  {
    goto LABEL_18;
  }

  if (v20 <= 3)
  {
    v23 = v20;
  }

  else
  {
    v23 = 4;
  }

  if (v23 <= 1)
  {
    if (!v23)
    {
      goto LABEL_18;
    }

    v24 = *v16;
  }

  else if (v23 == 2)
  {
    v24 = *v16;
  }

  else if (v23 == 3)
  {
    v24 = *v16 | (v16[2] << 16);
  }

  else
  {
    v24 = *v16;
  }

  v25 = (v24 | (v22 << (8 * v20))) + 2;
  v21 = v24 + 2;
  if (v20 < 4)
  {
    v21 = v25;
  }

LABEL_18:
  if (v21 == 1)
  {
    v26 = ~v12;
    *v15 = *v16;
    v27 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
    v28 = ((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v27 = *v28;
    v29 = ((v27 + v13) & v17);
    v30 = ((v28 + v13) & v17);
    v31 = (v30 + 7);
    *v29 = *v30;
    v29[1] = v30[1];
    v29[2] = v30[2];
    v29[3] = v30[3];
    v32 = (v29 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    v31 &= 0xFFFFFFFFFFFFFFFCLL;
    LODWORD(v29) = *v31;
    *(v32 + 4) = *(v31 + 4);
    *v32 = v29;
    v33 = v12 + 5;
    v34 = (v33 + v32) & v26;
    v35 = (v33 + v31) & v26;
    (*(v10 + 32))(v34, v35, v9);
    *(v34 + v19) = *(v35 + v19);
    v36 = (v34 + v19) & 0xFFFFFFFFFFFFFFFCLL;
    v37 = (v35 + v19) & 0xFFFFFFFFFFFFFFFCLL;
    v38 = *(v37 + 4);
    *(v36 + 8) = *(v37 + 8);
    *(v36 + 4) = v38;
    v39 = 1;
  }

  else
  {
    swift_weakTakeInit();
    swift_weakTakeInit();
    v39 = 0;
  }

  *(v15 + v20) = v39;
  return a1;
}

uint64_t FocusStore.Entry.isValid.getter(uint64_t a1)
{
  v3 = type metadata accessor for FocusStore.Entry.Target();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v11[-v6 - 8];
  (*(v4 + 16))(&v11[-v6 - 8], v1 + *(a1 + 40), v3, v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v4 + 8))(v7, v3);
    v8 = 1;
  }

  else
  {
    outlined init with take of Binding<SearchFieldState>((v7 + 8), v11, type metadata accessor for WeakBox<FocusBridge>);
    if (swift_weakLoadStrong())
    {
      v8 = FocusBridge.canAcceptFocus.getter();
    }

    else
    {
      v8 = 0;
    }

    outlined destroy of SearchFieldState(v11, type metadata accessor for WeakBox<FocusBridge>);
    outlined destroy of SearchFieldState(v7, type metadata accessor for WeakBox<FocusStateBindingResponder>);
  }

  return v8 & 1;
}

void *initializeWithCopy for FocusStore.Entry.Target(void *a1, void *a2)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = a2[1];
    *a1 = *a2;
    a1[1] = v4;
    type metadata accessor for Binding<SearchFieldState>(0);
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
  }

  else
  {
    swift_weakCopyInit();
    swift_weakCopyInit();
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t outlined destroy of ToolbarItemPlacement.Role?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  _s7SwiftUI7BindingVySiGMaTm_0(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void UIKitToolbarStrategy.updateVended(_:to:)(_BYTE *a1, unsigned __int8 a2, uint64_t a3)
{
  v62 = type metadata accessor for ToolbarStorage.GroupItem(0);
  v61 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v60 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69E6720];
  type metadata accessor for PlatformItemList.Item?(0, &lazy cache variable for type metadata for ToolbarStorage.GroupItem?, type metadata accessor for ToolbarStorage.GroupItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v63 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v64 = &v59 - v11;
  type metadata accessor for PlatformItemList.Item?(0, &lazy cache variable for type metadata for ToolbarStorage.Item?, type metadata accessor for ToolbarStorage.Item, v7);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v59 - v16;
  v18 = type metadata accessor for ToolbarStorage.Item(0);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v65 = &v59 - v23;
  type metadata accessor for (Toolbar.VendedItem, ToolbarStorage.Entry.Kind)();
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v27 + 56);
  v66 = a1;
  *v26 = a1;
  v26[8] = a2;
  outlined init with copy of ToolbarStorage.Entry.Kind(a3, &v26[v28], type metadata accessor for ToolbarStorage.Entry.Kind);
  if (a2 <= 1u)
  {
    if (a2)
    {
      type metadata accessor for ToolbarStorage.Entry.Kind(0);
      if (!swift_getEnumCaseMultiPayload())
      {
        v37 = v65;
        outlined init with take of ToolbarStorage.NavigationProperties(&v26[v28], v65, type metadata accessor for ToolbarStorage.Item);
        v38 = *(a3 + *(type metadata accessor for ToolbarStorage.Entry(0) + 20));
        v39 = v66;
        v66[OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_edge] = v38;
        outlined init with copy of ToolbarStorage.Entry.Kind(v37, v17, type metadata accessor for ToolbarStorage.Item);
        (*(v19 + 56))(v17, 0, 1, v18);
        v40 = OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_item;
        swift_beginAccess();
        v41 = MEMORY[0x1E69E6720];
        outlined init with copy of PlatformItemList.Item?(v39 + v40, v14, &lazy cache variable for type metadata for ToolbarStorage.Item?, type metadata accessor for ToolbarStorage.Item, MEMORY[0x1E69E6720]);
        swift_beginAccess();
        v34 = v39;
        outlined assign with copy of ToolbarStorage.GroupItem?(v17, v39 + v40, &lazy cache variable for type metadata for ToolbarStorage.Item?, type metadata accessor for ToolbarStorage.Item);
        swift_endAccess();
        UIKitBarButtonItem.item.didset();
        outlined destroy of ToolbarStorage.NavigationProperties?(v14, &lazy cache variable for type metadata for ToolbarStorage.Item?, type metadata accessor for ToolbarStorage.Item, v41);
        outlined destroy of ToolbarStorage.NavigationProperties?(v17, &lazy cache variable for type metadata for ToolbarStorage.Item?, type metadata accessor for ToolbarStorage.Item, v41);
        v35 = type metadata accessor for ToolbarStorage.Item;
        v36 = v37;
        goto LABEL_16;
      }
    }

LABEL_13:
    v50 = v66;
    outlined destroy of ToolbarStorage.NavigationProperties(v26, type metadata accessor for (Toolbar.VendedItem, ToolbarStorage.Entry.Kind));
    return;
  }

  if (a2 == 2)
  {
    type metadata accessor for ToolbarStorage.Entry.Kind(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v52 = v65;
      outlined init with take of ToolbarStorage.NavigationProperties(&v26[v28], v65, type metadata accessor for ToolbarStorage.Item);
      v53 = *(a3 + *(type metadata accessor for ToolbarStorage.Entry(0) + 20));
      v54 = v66;
      v66[OBJC_IVAR____TtC7SwiftUI23UIKitBarButtonItemGroup_edge] = v53;
      outlined init with copy of ToolbarStorage.Entry.Kind(v52, v21, type metadata accessor for ToolbarStorage.Item);
      v34 = v54;
      v55 = v64;
      ToolbarStorage.GroupItem.init(item:)(v21, v64);
      (*(v61 + 56))(v55, 0, 1, v62);
      v56 = OBJC_IVAR____TtC7SwiftUI23UIKitBarButtonItemGroup_groupItem;
      swift_beginAccess();
      v57 = MEMORY[0x1E69E6720];
      v58 = v63;
      outlined init with copy of PlatformItemList.Item?(&v34[v56], v63, &lazy cache variable for type metadata for ToolbarStorage.GroupItem?, type metadata accessor for ToolbarStorage.GroupItem, MEMORY[0x1E69E6720]);
      swift_beginAccess();
      outlined assign with copy of ToolbarStorage.GroupItem?(v55, &v34[v56], &lazy cache variable for type metadata for ToolbarStorage.GroupItem?, type metadata accessor for ToolbarStorage.GroupItem);
      swift_endAccess();
      UIKitBarButtonItemGroup.didChangeGroupItem(from:)(v58);
      outlined destroy of ToolbarStorage.NavigationProperties?(v58, &lazy cache variable for type metadata for ToolbarStorage.GroupItem?, type metadata accessor for ToolbarStorage.GroupItem, v57);
      outlined destroy of ToolbarStorage.NavigationProperties?(v55, &lazy cache variable for type metadata for ToolbarStorage.GroupItem?, type metadata accessor for ToolbarStorage.GroupItem, v57);
      v35 = type metadata accessor for ToolbarStorage.Item;
      v36 = v52;
      goto LABEL_16;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v43 = v60;
      outlined init with take of ToolbarStorage.NavigationProperties(&v26[v28], v60, type metadata accessor for ToolbarStorage.GroupItem);
      v44 = *(a3 + *(type metadata accessor for ToolbarStorage.Entry(0) + 20));
      v45 = v66;
      v66[OBJC_IVAR____TtC7SwiftUI23UIKitBarButtonItemGroup_edge] = v44;
      v46 = v64;
      outlined init with copy of ToolbarStorage.Entry.Kind(v43, v64, type metadata accessor for ToolbarStorage.GroupItem);
      (*(v61 + 56))(v46, 0, 1, v62);
      v47 = OBJC_IVAR____TtC7SwiftUI23UIKitBarButtonItemGroup_groupItem;
      swift_beginAccess();
      v48 = MEMORY[0x1E69E6720];
      v49 = v63;
      outlined init with copy of PlatformItemList.Item?(v45 + v47, v63, &lazy cache variable for type metadata for ToolbarStorage.GroupItem?, type metadata accessor for ToolbarStorage.GroupItem, MEMORY[0x1E69E6720]);
      swift_beginAccess();
      v34 = v45;
      outlined assign with copy of ToolbarStorage.GroupItem?(v46, v45 + v47, &lazy cache variable for type metadata for ToolbarStorage.GroupItem?, type metadata accessor for ToolbarStorage.GroupItem);
      swift_endAccess();
      UIKitBarButtonItemGroup.didChangeGroupItem(from:)(v49);
      outlined destroy of ToolbarStorage.NavigationProperties?(v49, &lazy cache variable for type metadata for ToolbarStorage.GroupItem?, type metadata accessor for ToolbarStorage.GroupItem, v48);
      outlined destroy of ToolbarStorage.NavigationProperties?(v46, &lazy cache variable for type metadata for ToolbarStorage.GroupItem?, type metadata accessor for ToolbarStorage.GroupItem, v48);
      v35 = type metadata accessor for ToolbarStorage.GroupItem;
      v36 = v43;
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  if (a2 != 3)
  {
    type metadata accessor for ToolbarStorage.Entry.Kind(0);
    if (!swift_getEnumCaseMultiPayload())
    {
      v51 = v65;
      outlined init with take of ToolbarStorage.NavigationProperties(&v26[v28], v65, type metadata accessor for ToolbarStorage.Item);
      outlined init with copy of ToolbarStorage.Entry.Kind(v51, v21, type metadata accessor for ToolbarStorage.Item);
      v34 = v66;
      UIKitBarPaletteHost.item.setter(v21);
      v35 = type metadata accessor for ToolbarStorage.Item;
      v36 = v51;
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  type metadata accessor for ToolbarStorage.Entry.Kind(0);
  if (swift_getEnumCaseMultiPayload())
  {
    goto LABEL_13;
  }

  v29 = &v26[v28];
  v30 = v65;
  outlined init with take of ToolbarStorage.NavigationProperties(v29, v65, type metadata accessor for ToolbarStorage.Item);
  outlined init with copy of _ViewList_View(v30 + 184, v68);
  v31 = *(a3 + *(type metadata accessor for ToolbarStorage.Entry(0) + 20));
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v68[96] = v31;
  v68[97] = 0;
  outlined init with copy of BarItemView(v68, v67);
  v32 = v66;
  v33 = *((*MEMORY[0x1E69E7D40] & *v66) + 0x60);
  swift_beginAccess();
  v34 = v32;
  outlined assign with take of BarItemView(v67, v32 + v33);
  swift_endAccess();
  type metadata accessor for UIKitBarItemHost<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<BarItemView>, type metadata accessor for _UIHostingView);
  lazy protocol witness table accessor for type UIKitBarItemHost<BarItemView> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<BarItemView> and conformance _UIHostingView<A>, &lazy cache variable for type metadata for _UIHostingView<BarItemView>, type metadata accessor for _UIHostingView);
  ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
  outlined destroy of BarItemView(v68);
  v35 = type metadata accessor for ToolbarStorage.Item;
  v36 = v30;
LABEL_16:
  outlined destroy of ToolbarStorage.NavigationProperties(v36, v35);
}

void type metadata accessor for (Toolbar.VendedItem, ToolbarStorage.Entry.Kind)()
{
  if (!lazy cache variable for type metadata for (Toolbar.VendedItem, ToolbarStorage.Entry.Kind))
  {
    type metadata accessor for ToolbarStorage.Entry.Kind(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Toolbar.VendedItem, ToolbarStorage.Entry.Kind));
    }
  }
}

uint64_t assignWithCopy for ToolbarStorage.GroupItem(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  v6 = *(a2 + 56);
  if (*(a1 + 56))
  {
    v7 = (a1 + 32);
    if (!v6)
    {
      outlined destroy of MatchedTransitionIdentifier(v7);
      v9 = *(a2 + 48);
      v8 = *(a2 + 64);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = v9;
      *(a1 + 64) = v8;
      if (a1 == a2)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }

    __swift_assign_boxed_opaque_existential_1(v7, (a2 + 32));
    goto LABEL_6;
  }

  if (v6)
  {
    *(a1 + 56) = v6;
    *(a1 + 64) = *(a2 + 64);
    (**(v6 - 8))(a1 + 32, a2 + 32);
LABEL_6:
    *(a1 + 72) = *(a2 + 72);
    if (a1 == a2)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  v10 = *(a2 + 32);
  v11 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v11;
  *(a1 + 32) = v10;
  if (a1 == a2)
  {
    goto LABEL_14;
  }

LABEL_11:
  outlined destroy of ToolbarItemPlacement.Role(a1 + 80);
  if (*(a2 + 120) == 1)
  {
    v12 = *(a2 + 104);
    *(a1 + 104) = v12;
    *(a1 + 112) = *(a2 + 112);
    (**(v12 - 8))(a1 + 80, a2 + 80);
    *(a1 + 120) = 1;
  }

  else
  {
    v13 = *(a2 + 80);
    v14 = *(a2 + 96);
    *(a1 + 105) = *(a2 + 105);
    *(a1 + 80) = v13;
    *(a1 + 96) = v14;
  }

LABEL_14:
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 128) = *(a2 + 128);

  *(a1 + 136) = *(a2 + 136);
  *(a1 + 137) = *(a2 + 137);
  *(a1 + 138) = *(a2 + 138);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);

  v15 = *(a3 + 60);
  v16 = (a1 + v15);
  v17 = (a2 + v15);
  v18 = type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  v21 = v20(v16, 1, v18);
  v22 = v20(v17, 1, v18);
  if (!v21)
  {
    if (v22)
    {
      outlined destroy of ToolbarStorage.GroupItem.CollapsedContent.Value(v16, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent);
      goto LABEL_24;
    }

    if (a1 == a2)
    {
LABEL_140:
      v251 = *(v18 + 20);
      v252 = *(v17 + v251);
      v253 = *(v16 + v251);
      *(v16 + v251) = v252;
      v254 = v252;

      return a1;
    }

    outlined destroy of ToolbarStorage.GroupItem.CollapsedContent.Value(v16, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent.Value);
    type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent.Value(0);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v60 = v17[3];
      v16[3] = v60;
      v16[4] = v17[4];
      (**(v60 - 8))(v16, v17);
      v16[5] = v17[5];
      v16[6] = v17[6];
      *(v16 + 14) = *(v17 + 14);
      *(v16 + 15) = *(v17 + 15);
      v16[8] = v17[8];
      v16[9] = v17[9];
      v16[10] = v17[10];
      v61 = v17[11];
      v16[11] = v61;

      v62 = v61;
LABEL_139:
      swift_storeEnumTagMultiPayload();
      goto LABEL_140;
    }

    v41 = *v17;
    *v16 = *v17;
    v42 = v17[1];
    v16[1] = v42;
    v16[2] = v17[2];
    v16[3] = v17[3];
    *(v16 + 32) = *(v17 + 32);
    v16[5] = v17[5];
    v16[6] = v17[6];
    *(v16 + 56) = *(v17 + 56);
    v43 = v17[24];
    v44 = v41;
    v45 = v42;

    if (v43 >> 1 == 4294967294)
    {
      v46 = *(v17 + 4);
      v47 = *(v17 + 5);
      v48 = *(v17 + 7);
      *(v16 + 6) = *(v17 + 6);
      *(v16 + 7) = v48;
      *(v16 + 4) = v46;
      *(v16 + 5) = v47;
      v49 = *(v17 + 8);
      v50 = *(v17 + 9);
      v51 = *(v17 + 11);
      *(v16 + 10) = *(v17 + 10);
      *(v16 + 11) = v51;
      *(v16 + 8) = v49;
      *(v16 + 9) = v50;
      v52 = *(v17 + 12);
      v53 = *(v17 + 13);
      v54 = *(v17 + 14);
      *(v16 + 235) = *(v17 + 235);
      *(v16 + 13) = v53;
      *(v16 + 14) = v54;
      *(v16 + 12) = v52;
    }

    else
    {
      v63 = *(v17 + 72);
      if (v63 == 255)
      {
        v158 = v17[8];
        *(v16 + 72) = *(v17 + 72);
        v16[8] = v158;
      }

      else
      {
        v64 = v17[8];
        outlined copy of GraphicsImage.Contents(v64, *(v17 + 72));
        v16[8] = v64;
        *(v16 + 72) = v63;
      }

      v16[10] = v17[10];
      *(v16 + 11) = *(v17 + 11);
      *(v16 + 104) = *(v17 + 104);
      v159 = *(v17 + 108);
      *(v16 + 121) = *(v17 + 121);
      *(v16 + 108) = v159;
      v160 = *(v17 + 17);
      v161 = *(v17 + 19);
      *(v16 + 168) = *(v17 + 168);
      *(v16 + 19) = v161;
      *(v16 + 17) = v160;
      *(v16 + 169) = *(v17 + 169);
      *(v16 + 170) = *(v17 + 170);
      *(v16 + 171) = *(v17 + 171);
      v162 = v17[24];
      if (v162 >> 1 == 0xFFFFFFFF)
      {
        v163 = *(v17 + 12);
        *(v16 + 11) = *(v17 + 11);
        *(v16 + 12) = v163;
      }

      else
      {
        v164 = v17[22];
        v165 = v17[23];
        v166 = v17[25];
        outlined copy of AccessibilityImageLabel(v164, v165, v17[24]);
        v16[22] = v164;
        v16[23] = v165;
        v16[24] = v162;
        v16[25] = v166;
      }

      v16[26] = v17[26];
      v16[27] = v17[27];
      *(v16 + 224) = *(v17 + 224);
      *(v16 + 225) = *(v17 + 225);
      v167 = *(v17 + 57);
      *(v16 + 232) = *(v17 + 232);
      *(v16 + 57) = v167;
      v168 = v17[30];
      v16[30] = v168;
      *(v16 + 124) = *(v17 + 124);
      *(v16 + 250) = *(v17 + 250);
      swift_unknownObjectRetain();

      v169 = v168;
    }

    if (v17[33])
    {
      v16[32] = v17[32];
      v16[33] = v17[33];
      v170 = v17[34];

      if (v170 >= 2)
      {
        v171 = v170;
      }

      v16[34] = v170;
      v172 = *(v17 + 70);
      *(v16 + 284) = *(v17 + 284);
      *(v16 + 70) = v172;
      *(v16 + 285) = *(v17 + 285);
      *(v16 + 286) = *(v17 + 286);
      v16[36] = v17[36];
      v16[37] = v17[37];
    }

    else
    {
      v173 = *(v17 + 16);
      v174 = *(v17 + 18);
      *(v16 + 17) = *(v17 + 17);
      *(v16 + 18) = v174;
      *(v16 + 16) = v173;
    }

    v175 = v17[42];
    v282 = v18;
    if (v175 >> 2 == 0xFFFFFFFF)
    {
      v176 = *(v17 + 19);
      v177 = *(v17 + 21);
      *(v16 + 20) = *(v17 + 20);
      *(v16 + 21) = v177;
      *(v16 + 19) = v176;
      v178 = *(v17 + 22);
      v179 = *(v17 + 23);
      v180 = *(v17 + 24);
      v16[50] = v17[50];
      *(v16 + 23) = v179;
      *(v16 + 24) = v180;
      *(v16 + 22) = v178;
    }

    else
    {
      v181 = v17[38];
      v182 = v17[39];
      v183 = v17[40];
      v185 = v17[43];
      v184 = v17[44];
      v186 = v17[45];
      v260 = v17[41];
      v264 = v17[46];
      v268 = v17[47];
      v272 = v17[48];
      __dstc = v17[49];
      v278 = v17[50];
      outlined copy of PlatformItemList.Item.SystemItem(v181, v182, v183, v260, v175, v185, v184, v186, v264, v268, v272, __dstc, v278);
      v16[38] = v181;
      v16[39] = v182;
      v16[40] = v183;
      v16[41] = v260;
      v16[42] = v175;
      v16[43] = v185;
      v16[44] = v184;
      v16[45] = v186;
      v16[46] = v264;
      v16[47] = v268;
      v16[48] = v272;
      v16[49] = __dstc;
      v16[50] = v278;
    }

    if (v17[52] == 1)
    {
      *(v16 + 51) = *(v17 + 51);
      v187 = *(v17 + 53);
      v188 = *(v17 + 55);
      v189 = *(v17 + 57);
      *(v16 + 472) = *(v17 + 472);
      *(v16 + 55) = v188;
      *(v16 + 57) = v189;
      *(v16 + 53) = v187;
    }

    else
    {
      *(v16 + 408) = *(v17 + 408);
      *(v16 + 409) = *(v17 + 409);
      *(v16 + 410) = *(v17 + 410);
      *(v16 + 411) = *(v17 + 411);
      *(v16 + 412) = *(v17 + 412);
      v190 = v17[52];
      if (v190)
      {
        v191 = v17[53];
        v16[52] = v190;
        v16[53] = v191;
      }

      else
      {
        *(v16 + 26) = *(v17 + 26);
      }

      v192 = v17[54];
      if (v192)
      {
        v193 = v17[55];
        v16[54] = v192;
        v16[55] = v193;
      }

      else
      {
        *(v16 + 27) = *(v17 + 27);
      }

      v194 = v17[56];
      if (v194)
      {
        v195 = v17[57];
        v16[56] = v194;
        v16[57] = v195;
      }

      else
      {
        *(v16 + 28) = *(v17 + 28);
      }

      v16[58] = v17[58];
      *(v16 + 472) = *(v17 + 472);
    }

    v16[60] = v17[60];
    v16[61] = v17[61];
    v16[62] = v17[62];
    *(v16 + 504) = *(v17 + 504);
    v196 = v17[64];

    if (v196)
    {
      v197 = v17[65];
      v16[64] = v196;
      v16[65] = v197;
    }

    else
    {
      *(v16 + 32) = *(v17 + 32);
    }

    *(v16 + 528) = *(v17 + 528);
    if (!v17[102])
    {
      memcpy(v16 + 67, v17 + 67, 0x130uLL);
      goto LABEL_124;
    }

    v16[67] = v17[67];
    v16[68] = v17[68];
    *(v16 + 552) = *(v17 + 552);
    v16[70] = v17[70];
    *(v16 + 568) = *(v17 + 568);
    v198 = *(v17 + 36);
    *(v16 + 592) = *(v17 + 592);
    *(v16 + 36) = v198;
    v199 = v16 + 75;
    v200 = (v17 + 75);
    v201 = v17[78];

    if (v201)
    {
      if (v201 == 1)
      {
        v202 = *v200;
        v203 = *(v17 + 79);
        *(v16 + 77) = *(v17 + 77);
        *(v16 + 79) = v203;
        *v199 = v202;
LABEL_120:
        v206 = v17[81];
        *(v16 + 656) = *(v17 + 656);
        v16[81] = v206;
        v207 = v16 + 83;
        v208 = v17 + 83;
        if (v17[97] == 1)
        {
          v209 = *(v17 + 85);
          *v207 = *v208;
          *(v16 + 85) = v209;
          v210 = *(v17 + 87);
          v211 = *(v17 + 89);
          v212 = *(v17 + 93);
          *(v16 + 91) = *(v17 + 91);
          *(v16 + 93) = v212;
          *(v16 + 87) = v210;
          *(v16 + 89) = v211;
          v213 = *(v17 + 95);
          v214 = *(v17 + 97);
          v215 = *(v17 + 99);
          *(v16 + 808) = *(v17 + 808);
          *(v16 + 97) = v214;
          *(v16 + 99) = v215;
          *(v16 + 95) = v213;
        }

        else
        {
          v216 = *v208;
          *(v16 + 672) = *(v17 + 672);
          *v207 = v216;
          v217 = v17[85];
          *(v16 + 688) = *(v17 + 688);
          v16[85] = v217;
          *(v16 + 689) = *(v17 + 689);
          *(v16 + 690) = *(v17 + 690);
          *(v16 + 691) = *(v17 + 691);
          *(v16 + 692) = *(v17 + 692);
          v16[87] = v17[87];
          v16[88] = v17[88];
          v16[89] = v17[89];
          v16[90] = v17[90];
          v16[91] = v17[91];
          v16[92] = v17[92];
          *(v16 + 744) = *(v17 + 744);
          *(v16 + 745) = *(v17 + 745);
          v16[94] = v17[94];
          v16[95] = v17[95];
          *(v16 + 768) = *(v17 + 768);
          v16[97] = v17[97];
          v218 = *(v17 + 49);
          v16[100] = v17[100];
          *(v16 + 49) = v218;
          *(v16 + 808) = *(v17 + 808);
        }

        v16[102] = v17[102];
        v16[103] = v17[103];
        v16[104] = v17[104];

LABEL_124:
        v219 = v16 + 105;
        v220 = (v17 + 105);
        v221 = v17[108];
        if (v221)
        {
          if (v221 == 1)
          {
            v222 = *v220;
            v223 = *(v17 + 107);
            v224 = *(v17 + 109);
            v16[111] = v17[111];
            *(v16 + 107) = v223;
            *(v16 + 109) = v224;
            *v219 = v222;
LABEL_132:
            v229 = v17[112];
            v16[112] = v229;
            v16[113] = v17[113];
            v16[114] = v17[114];
            v16[115] = v17[115];
            v16[116] = v17[116];
            v16[117] = v17[117];
            v16[118] = v17[118];
            *(v16 + 952) = *(v17 + 952);
            *(v16 + 953) = *(v17 + 953);
            *(v16 + 954) = *(v17 + 954);
            v230 = type metadata accessor for PlatformItemList.Item();
            v231 = *(v230 + 112);
            __dsta = v230;
            v279 = v16 + v231;
            v232 = v17 + v231;
            v233 = type metadata accessor for CommandOperation();
            v234 = *(v233 - 8);
            v265 = *(v234 + 48);
            v235 = v229;

            if (v265(v232, 1, v233))
            {
              _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
              memcpy(v279, v232, *(*(v236 - 8) + 64));
              v18 = v282;
            }

            else
            {
              v273 = v234;
              *v279 = *v232;
              v237 = *(v233 + 20);
              v238 = v232;
              v261 = v232;
              v239 = &v279[v237];
              v240 = &v238[v237];
              v241 = v233;
              v242 = *&v238[v237];
              v243 = *&v238[v237 + 8];
              v244 = v238[v237 + 16];
              outlined copy of Text.Storage(v242, v243, v244);
              *v239 = v242;
              *(v239 + 1) = v243;
              v239[16] = v244;
              *(v239 + 3) = *(v240 + 3);
              v245 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
              v246 = type metadata accessor for UUID();
              v269 = *(*(v246 - 8) + 16);

              v269(&v239[v245], &v240[v245], v246);
              v247 = *(v241 + 24);
              v248 = &v279[v247];
              v249 = &v261[v247];
              if (*v249)
              {
                v250 = v249[1];
                *v248 = *v249;
                v248[1] = v250;
              }

              else
              {
                *v248 = *v249;
              }

              v18 = v282;
              (*(v273 + 56))(v279, 0, 1, v241);
            }

            *(v16 + __dsta[29]) = *(v17 + __dsta[29]);
            *(v16 + __dsta[30]) = *(v17 + __dsta[30]);
            *(v16 + __dsta[31]) = *(v17 + __dsta[31]);
            *(v16 + __dsta[32]) = *(v17 + __dsta[32]);
            *(v16 + __dsta[33]) = *(v17 + __dsta[33]);
            *(v16 + __dsta[34]) = *(v17 + __dsta[34]);

            goto LABEL_139;
          }

          v16[108] = v221;
          v16[109] = v17[109];
          (**(v221 - 8))(v219, v220);
        }

        else
        {
          v225 = *v220;
          v226 = *(v17 + 107);
          v16[109] = v17[109];
          *v219 = v225;
          *(v16 + 107) = v226;
        }

        v227 = v17[110];
        if (v227)
        {
          v228 = v17[111];
          v16[110] = v227;
          v16[111] = v228;
        }

        else
        {
          *(v16 + 55) = *(v17 + 55);
        }

        goto LABEL_132;
      }

      v16[78] = v201;
      v16[79] = v17[79];
      (**(v201 - 8))((v16 + 75), (v17 + 75), v201);
    }

    else
    {
      v204 = *v200;
      v205 = *(v17 + 77);
      v16[79] = v17[79];
      *v199 = v204;
      *(v16 + 77) = v205;
    }

    v16[80] = v17[80];

    goto LABEL_120;
  }

  if (!v22)
  {
    type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent.Value(0);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v55 = v17[3];
      v16[3] = v55;
      v16[4] = v17[4];
      (**(v55 - 8))(v16, v17);
      v16[5] = v17[5];
      v16[6] = v17[6];
      *(v16 + 14) = *(v17 + 14);
      *(v16 + 15) = *(v17 + 15);
      v16[8] = v17[8];
      v16[9] = v17[9];
      v16[10] = v17[10];
      v56 = v17[11];
      v16[11] = v56;

      v57 = v56;
LABEL_83:
      swift_storeEnumTagMultiPayload();
      v154 = *(v18 + 20);
      v155 = *(v17 + v154);
      *(v16 + v154) = v155;
      v156 = *(v19 + 56);
      v157 = v155;
      v156(v16, 0, 1, v18);
      return a1;
    }

    v23 = *v17;
    *v16 = *v17;
    v24 = v17[1];
    v16[1] = v24;
    v16[2] = v17[2];
    v16[3] = v17[3];
    *(v16 + 32) = *(v17 + 32);
    v16[5] = v17[5];
    v16[6] = v17[6];
    *(v16 + 56) = *(v17 + 56);
    v25 = v17[24];
    v26 = v23;
    v27 = v24;

    v280 = v19;
    if (v25 >> 1 == 4294967294)
    {
      v28 = *(v17 + 4);
      v29 = *(v17 + 5);
      v30 = *(v17 + 7);
      *(v16 + 6) = *(v17 + 6);
      *(v16 + 7) = v30;
      *(v16 + 4) = v28;
      *(v16 + 5) = v29;
      v31 = *(v17 + 8);
      v32 = *(v17 + 9);
      v33 = *(v17 + 11);
      *(v16 + 10) = *(v17 + 10);
      *(v16 + 11) = v33;
      *(v16 + 8) = v31;
      *(v16 + 9) = v32;
      v34 = *(v17 + 12);
      v35 = *(v17 + 13);
      v36 = *(v17 + 14);
      *(v16 + 235) = *(v17 + 235);
      *(v16 + 13) = v35;
      *(v16 + 14) = v36;
      *(v16 + 12) = v34;
      if (v17[33])
      {
LABEL_19:
        v16[32] = v17[32];
        v16[33] = v17[33];
        v37 = v17[34];

        if (v37 >= 2)
        {
          v38 = v37;
        }

        v16[34] = v37;
        v39 = *(v17 + 70);
        *(v16 + 284) = *(v17 + 284);
        *(v16 + 70) = v39;
        *(v16 + 285) = *(v17 + 285);
        *(v16 + 286) = *(v17 + 286);
        v16[36] = v17[36];
        v16[37] = v17[37];

LABEL_41:
        v79 = v17[42];
        v281 = v18;
        if (v79 >> 2 == 0xFFFFFFFF)
        {
          v80 = *(v17 + 19);
          v81 = *(v17 + 21);
          *(v16 + 20) = *(v17 + 20);
          *(v16 + 21) = v81;
          *(v16 + 19) = v80;
          v82 = *(v17 + 22);
          v83 = *(v17 + 23);
          v84 = *(v17 + 24);
          v16[50] = v17[50];
          *(v16 + 23) = v83;
          *(v16 + 24) = v84;
          *(v16 + 22) = v82;
        }

        else
        {
          v85 = v17[38];
          v86 = v17[39];
          v87 = v17[40];
          v89 = v17[43];
          v88 = v17[44];
          v90 = v17[45];
          v256 = v17[41];
          v257 = v17[46];
          v262 = v17[47];
          v266 = v17[48];
          v270 = v17[49];
          __dstb = v17[50];
          outlined copy of PlatformItemList.Item.SystemItem(v85, v86, v87, v256, v79, v89, v88, v90, v257, v262, v266, v270, __dstb);
          v16[38] = v85;
          v16[39] = v86;
          v16[40] = v87;
          v16[41] = v256;
          v16[42] = v79;
          v16[43] = v89;
          v16[44] = v88;
          v16[45] = v90;
          v16[46] = v257;
          v16[47] = v262;
          v16[48] = v266;
          v16[49] = v270;
          v16[50] = __dstb;
        }

        if (v17[52] == 1)
        {
          *(v16 + 51) = *(v17 + 51);
          v91 = *(v17 + 53);
          v92 = *(v17 + 55);
          v93 = *(v17 + 57);
          *(v16 + 472) = *(v17 + 472);
          *(v16 + 55) = v92;
          *(v16 + 57) = v93;
          *(v16 + 53) = v91;
          goto LABEL_54;
        }

        *(v16 + 408) = *(v17 + 408);
        *(v16 + 409) = *(v17 + 409);
        *(v16 + 410) = *(v17 + 410);
        *(v16 + 411) = *(v17 + 411);
        *(v16 + 412) = *(v17 + 412);
        v94 = v17[52];
        if (v94)
        {
          v95 = v17[53];
          v16[52] = v94;
          v16[53] = v95;

          v96 = v17[54];
          if (v96)
          {
            goto LABEL_48;
          }
        }

        else
        {
          *(v16 + 26) = *(v17 + 26);
          v96 = v17[54];
          if (v96)
          {
LABEL_48:
            v97 = v17[55];
            v16[54] = v96;
            v16[55] = v97;

            v98 = v17[56];
            if (v98)
            {
LABEL_49:
              v99 = v17[57];
              v16[56] = v98;
              v16[57] = v99;

LABEL_53:
              v16[58] = v17[58];
              *(v16 + 472) = *(v17 + 472);
LABEL_54:
              v16[60] = v17[60];
              v16[61] = v17[61];
              v16[62] = v17[62];
              *(v16 + 504) = *(v17 + 504);
              v100 = v17[64];

              if (v100)
              {
                v101 = v17[65];
                v16[64] = v100;
                v16[65] = v101;
              }

              else
              {
                *(v16 + 32) = *(v17 + 32);
              }

              *(v16 + 528) = *(v17 + 528);
              if (!v17[102])
              {
                memcpy(v16 + 67, v17 + 67, 0x130uLL);
                goto LABEL_69;
              }

              v16[67] = v17[67];
              v16[68] = v17[68];
              *(v16 + 552) = *(v17 + 552);
              v16[70] = v17[70];
              *(v16 + 568) = *(v17 + 568);
              v102 = *(v17 + 36);
              *(v16 + 592) = *(v17 + 592);
              *(v16 + 36) = v102;
              v103 = v16 + 75;
              v104 = (v17 + 75);
              v105 = v17[78];

              if (v105)
              {
                if (v105 == 1)
                {
                  v106 = *v104;
                  v107 = *(v17 + 79);
                  *(v16 + 77) = *(v17 + 77);
                  *(v16 + 79) = v107;
                  *v103 = v106;
LABEL_65:
                  v110 = v17[81];
                  *(v16 + 656) = *(v17 + 656);
                  v16[81] = v110;
                  v111 = v16 + 83;
                  v112 = v17 + 83;
                  if (v17[97] == 1)
                  {
                    v113 = *(v17 + 85);
                    *v111 = *v112;
                    *(v16 + 85) = v113;
                    v114 = *(v17 + 87);
                    v115 = *(v17 + 89);
                    v116 = *(v17 + 93);
                    *(v16 + 91) = *(v17 + 91);
                    *(v16 + 93) = v116;
                    *(v16 + 87) = v114;
                    *(v16 + 89) = v115;
                    v117 = *(v17 + 95);
                    v118 = *(v17 + 97);
                    v119 = *(v17 + 99);
                    *(v16 + 808) = *(v17 + 808);
                    *(v16 + 97) = v118;
                    *(v16 + 99) = v119;
                    *(v16 + 95) = v117;
                  }

                  else
                  {
                    v120 = *v112;
                    *(v16 + 672) = *(v17 + 672);
                    *v111 = v120;
                    v121 = v17[85];
                    *(v16 + 688) = *(v17 + 688);
                    v16[85] = v121;
                    *(v16 + 689) = *(v17 + 689);
                    *(v16 + 690) = *(v17 + 690);
                    *(v16 + 691) = *(v17 + 691);
                    *(v16 + 692) = *(v17 + 692);
                    v16[87] = v17[87];
                    v16[88] = v17[88];
                    v16[89] = v17[89];
                    v16[90] = v17[90];
                    v16[91] = v17[91];
                    v16[92] = v17[92];
                    *(v16 + 744) = *(v17 + 744);
                    *(v16 + 745) = *(v17 + 745);
                    v16[94] = v17[94];
                    v16[95] = v17[95];
                    *(v16 + 768) = *(v17 + 768);
                    v16[97] = v17[97];
                    v122 = *(v17 + 49);
                    v16[100] = v17[100];
                    *(v16 + 49) = v122;
                    *(v16 + 808) = *(v17 + 808);
                  }

                  v16[102] = v17[102];
                  v16[103] = v17[103];
                  v16[104] = v17[104];

LABEL_69:
                  v123 = v16 + 105;
                  v124 = (v17 + 105);
                  v125 = v17[108];
                  if (v125)
                  {
                    if (v125 == 1)
                    {
                      v126 = *v124;
                      v127 = *(v17 + 107);
                      v128 = *(v17 + 109);
                      v16[111] = v17[111];
                      *(v16 + 107) = v127;
                      *(v16 + 109) = v128;
                      *v123 = v126;
LABEL_76:
                      v133 = v17[112];
                      v16[112] = v133;
                      v16[113] = v17[113];
                      v16[114] = v17[114];
                      v16[115] = v17[115];
                      v16[116] = v17[116];
                      v16[117] = v17[117];
                      v16[118] = v17[118];
                      *(v16 + 952) = *(v17 + 952);
                      *(v16 + 953) = *(v17 + 953);
                      *(v16 + 954) = *(v17 + 954);
                      v134 = type metadata accessor for PlatformItemList.Item();
                      v135 = *(v134 + 112);
                      v271 = v134;
                      __dst = v16 + v135;
                      v136 = v17 + v135;
                      v137 = type metadata accessor for CommandOperation();
                      v138 = *(v137 - 8);
                      v258 = *(v138 + 48);
                      v139 = v133;

                      if (v258(v136, 1, v137))
                      {
                        _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
                        memcpy(__dst, v136, *(*(v140 - 8) + 64));
                        v18 = v281;
                        v19 = v280;
                      }

                      else
                      {
                        v263 = v136;
                        v267 = v138;
                        *__dst = *v136;
                        v141 = *(v137 + 20);
                        v142 = &__dst[v141];
                        v143 = &v136[v141];
                        v144 = *&v136[v141];
                        v145 = *(v143 + 1);
                        v146 = v137;
                        v147 = v143[16];
                        outlined copy of Text.Storage(v144, v145, v147);
                        *v142 = v144;
                        *(v142 + 1) = v145;
                        v142[16] = v147;
                        *(v142 + 3) = *(v143 + 3);
                        v148 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                        v149 = type metadata accessor for UUID();
                        v259 = *(*(v149 - 8) + 16);

                        v259(&v142[v148], &v143[v148], v149);
                        v150 = *(v146 + 24);
                        v151 = &__dst[v150];
                        v152 = &v263[v150];
                        if (*v152)
                        {
                          v153 = v152[1];
                          *v151 = *v152;
                          v151[1] = v153;
                        }

                        else
                        {
                          *v151 = *v152;
                        }

                        v18 = v281;
                        v19 = v280;
                        (*(v267 + 56))(__dst, 0, 1, v146);
                      }

                      *(v16 + v271[29]) = *(v17 + v271[29]);
                      *(v16 + v271[30]) = *(v17 + v271[30]);
                      *(v16 + v271[31]) = *(v17 + v271[31]);
                      *(v16 + v271[32]) = *(v17 + v271[32]);
                      *(v16 + v271[33]) = *(v17 + v271[33]);
                      *(v16 + v271[34]) = *(v17 + v271[34]);

                      goto LABEL_83;
                    }

                    v16[108] = v125;
                    v16[109] = v17[109];
                    (**(v125 - 8))(v123, v124);
                    v131 = v17[110];
                    if (!v131)
                    {
LABEL_75:
                      *(v16 + 55) = *(v17 + 55);
                      goto LABEL_76;
                    }
                  }

                  else
                  {
                    v129 = *v124;
                    v130 = *(v17 + 107);
                    v16[109] = v17[109];
                    *v123 = v129;
                    *(v16 + 107) = v130;
                    v131 = v17[110];
                    if (!v131)
                    {
                      goto LABEL_75;
                    }
                  }

                  v132 = v17[111];
                  v16[110] = v131;
                  v16[111] = v132;

                  goto LABEL_76;
                }

                v16[78] = v105;
                v16[79] = v17[79];
                (**(v105 - 8))((v16 + 75), (v17 + 75), v105);
              }

              else
              {
                v108 = *v104;
                v109 = *(v17 + 77);
                v16[79] = v17[79];
                *v103 = v108;
                *(v16 + 77) = v109;
              }

              v16[80] = v17[80];

              goto LABEL_65;
            }

LABEL_52:
            *(v16 + 28) = *(v17 + 28);
            goto LABEL_53;
          }
        }

        *(v16 + 27) = *(v17 + 27);
        v98 = v17[56];
        if (v98)
        {
          goto LABEL_49;
        }

        goto LABEL_52;
      }
    }

    else
    {
      v58 = *(v17 + 72);
      if (v58 == 255)
      {
        v65 = v17[8];
        *(v16 + 72) = *(v17 + 72);
        v16[8] = v65;
      }

      else
      {
        v59 = v17[8];
        outlined copy of GraphicsImage.Contents(v59, *(v17 + 72));
        v16[8] = v59;
        *(v16 + 72) = v58;
      }

      v16[10] = v17[10];
      *(v16 + 11) = *(v17 + 11);
      *(v16 + 104) = *(v17 + 104);
      v66 = *(v17 + 108);
      *(v16 + 121) = *(v17 + 121);
      *(v16 + 108) = v66;
      v67 = *(v17 + 17);
      v68 = *(v17 + 19);
      *(v16 + 168) = *(v17 + 168);
      *(v16 + 19) = v68;
      *(v16 + 17) = v67;
      *(v16 + 169) = *(v17 + 169);
      *(v16 + 170) = *(v17 + 170);
      *(v16 + 171) = *(v17 + 171);
      v69 = v17[24];
      if (v69 >> 1 == 0xFFFFFFFF)
      {
        v70 = *(v17 + 12);
        *(v16 + 11) = *(v17 + 11);
        *(v16 + 12) = v70;
      }

      else
      {
        v71 = v17[22];
        v72 = v17[23];
        v73 = v17[25];
        outlined copy of AccessibilityImageLabel(v71, v72, v17[24]);
        v16[22] = v71;
        v16[23] = v72;
        v16[24] = v69;
        v16[25] = v73;
      }

      v16[26] = v17[26];
      v16[27] = v17[27];
      *(v16 + 224) = *(v17 + 224);
      *(v16 + 225) = *(v17 + 225);
      v74 = *(v17 + 57);
      *(v16 + 232) = *(v17 + 232);
      *(v16 + 57) = v74;
      v75 = v17[30];
      v16[30] = v75;
      *(v16 + 124) = *(v17 + 124);
      *(v16 + 250) = *(v17 + 250);
      swift_unknownObjectRetain();

      v76 = v75;
      if (v17[33])
      {
        goto LABEL_19;
      }
    }

    v77 = *(v17 + 16);
    v78 = *(v17 + 18);
    *(v16 + 17) = *(v17 + 17);
    *(v16 + 18) = v78;
    *(v16 + 16) = v77;
    goto LABEL_41;
  }

LABEL_24:
  _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for ToolbarStorage.GroupItem.CollapsedContent?, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent, MEMORY[0x1E69E6720]);
  memcpy(v16, v17, *(*(v40 - 8) + 64));
  return a1;
}

void type metadata accessor for CollectionChanges<Int, Int>.Projection<(Range<Int>, Range<Int>)>()
{
  if (!lazy cache variable for type metadata for CollectionChanges<Int, Int>.Projection<(Range<Int>, Range<Int>)>)
  {
    type metadata accessor for (Range<Int>, Range<Int>)();
    v0 = type metadata accessor for CollectionChanges.Projection();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CollectionChanges<Int, Int>.Projection<(Range<Int>, Range<Int>)>);
    }
  }
}

_OWORD *initializeWithTake for ToolbarStorage.GroupItem.GroupSubItem(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    v8 = a2[1];
    *a1 = *a2;
    a1[1] = v8;
    v9 = a2[3];
    a1[2] = a2[2];
    a1[3] = v9;
    v10 = a2[5];
    a1[4] = a2[4];
    a1[5] = v10;
    v11 = a2[6];
    v12 = a2[7];
    *(a1 + 137) = *(a2 + 137);
    v13 = a2[8];
    a1[7] = v12;
    a1[8] = v13;
    a1[6] = v11;
    *(a1 + 153) = *(a2 + 153);
    *(a1 + 20) = *(a2 + 20);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 169) = *(a2 + 169);
    *(a1 + 22) = *(a2 + 22);
    *(a1 + 264) = *(a2 + 264);
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 35) = *(a2 + 35);
    v14 = type metadata accessor for ToolbarStorage.Item(0);
    v15 = v14[17];
    v16 = (a1 + v15);
    v17 = (a2 + v15);
    v18 = type metadata accessor for PlatformItemList.Item();
    v19 = *(v18 - 1);
    if ((*(v19 + 48))(v17, 1, v18))
    {
      _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
      memcpy(v16, v17, *(*(v20 - 8) + 64));
    }

    else
    {
      v45 = v19;
      v21 = v17[1];
      *v16 = *v17;
      v16[1] = v21;
      *(v16 + 32) = *(v17 + 32);
      *(v16 + 40) = *(v17 + 40);
      *(v16 + 56) = *(v17 + 56);
      v22 = v17[13];
      v16[12] = v17[12];
      v16[13] = v22;
      v16[14] = v17[14];
      *(v16 + 235) = *(v17 + 235);
      v23 = v17[9];
      v16[8] = v17[8];
      v16[9] = v23;
      v24 = v17[11];
      v16[10] = v17[10];
      v16[11] = v24;
      v25 = v17[5];
      v16[4] = v17[4];
      v16[5] = v25;
      v26 = v17[7];
      v16[6] = v17[6];
      v16[7] = v26;
      v27 = v17[17];
      v16[16] = v17[16];
      v16[17] = v27;
      v28 = v17[23];
      v16[22] = v17[22];
      v16[23] = v28;
      v16[24] = v17[24];
      *(v16 + 50) = *(v17 + 50);
      v29 = v17[19];
      v16[18] = v17[18];
      v16[19] = v29;
      v30 = v17[21];
      v16[20] = v17[20];
      v16[21] = v30;
      v31 = *(v17 + 456);
      *(v16 + 440) = *(v17 + 440);
      *(v16 + 456) = v31;
      *(v16 + 472) = *(v17 + 472);
      v32 = *(v17 + 424);
      *(v16 + 408) = *(v17 + 408);
      *(v16 + 424) = v32;
      v16[30] = v17[30];
      *(v16 + 489) = *(v17 + 489);
      v16[32] = v17[32];
      *(v16 + 528) = *(v17 + 528);
      memcpy(v16 + 536, v17 + 536, 0x130uLL);
      v33 = *(v17 + 856);
      *(v16 + 840) = *(v17 + 840);
      *(v16 + 856) = v33;
      *(v16 + 872) = *(v17 + 872);
      *(v16 + 111) = *(v17 + 111);
      *(v16 + 112) = *(v17 + 112);
      *(v16 + 904) = *(v17 + 904);
      *(v16 + 920) = *(v17 + 920);
      *(v16 + 117) = *(v17 + 117);
      *(v16 + 118) = *(v17 + 118);
      *(v16 + 952) = *(v17 + 952);
      *(v16 + 953) = *(v17 + 953);
      v34 = v18[28];
      __dst = v16 + v34;
      v35 = v17 + v34;
      v36 = type metadata accessor for CommandOperation();
      v37 = *(v36 - 8);
      if ((*(v37 + 48))(v35, 1, v36))
      {
        _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
        memcpy(__dst, v35, *(*(v38 - 8) + 64));
      }

      else
      {
        *__dst = *v35;
        v39 = *(v36 + 20);
        v43 = &__dst[v39];
        v44 = &v35[v39];
        v40 = *&v35[v39 + 16];
        *v43 = *&v35[v39];
        *(v43 + 1) = v40;
        v42 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
        v41 = type metadata accessor for UUID();
        (*(*(v41 - 8) + 32))(&v43[v42], &v44[v42], v41);
        *&__dst[*(v36 + 24)] = *&v35[*(v36 + 24)];
        (*(v37 + 56))();
      }

      *(v16 + v18[29]) = *(v17 + v18[29]);
      *(v16 + v18[30]) = *(v17 + v18[30]);
      *(v16 + v18[31]) = *(v17 + v18[31]);
      *(v16 + v18[32]) = *(v17 + v18[32]);
      *(v16 + v18[33]) = *(v17 + v18[33]);
      *(v16 + v18[34]) = *(v17 + v18[34]);
      (*(v45 + 56))(v16, 0, 1, v18);
    }

    swift_weakTakeInit();
    *(a1 + v14[19]) = *(a2 + v14[19]);
    *(a1 + v14[20]) = *(a2 + v14[20]);
    *(a1 + v14[21]) = *(a2 + v14[21]);
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

uint64_t assignWithCopy for ToolbarStorage.Item(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  v6 = *(a2 + 88);
  if (*(a1 + 88))
  {
    v7 = (a1 + 64);
    if (!v6)
    {
      outlined destroy of MatchedTransitionIdentifier(v7);
      v9 = *(a2 + 80);
      v8 = *(a2 + 96);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v9;
      *(a1 + 96) = v8;
      if (a1 == a2)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }

    __swift_assign_boxed_opaque_existential_1(v7, (a2 + 64));
    goto LABEL_6;
  }

  if (v6)
  {
    *(a1 + 88) = v6;
    *(a1 + 96) = *(a2 + 96);
    (**(v6 - 8))(a1 + 64, a2 + 64);
LABEL_6:
    *(a1 + 104) = *(a2 + 104);
    if (a1 == a2)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  v10 = *(a2 + 64);
  v11 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v11;
  *(a1 + 64) = v10;
  if (a1 == a2)
  {
    goto LABEL_14;
  }

LABEL_11:
  outlined destroy of ToolbarItemPlacement.Role(a1 + 112);
  if (*(a2 + 152) == 1)
  {
    v12 = *(a2 + 136);
    *(a1 + 136) = v12;
    *(a1 + 144) = *(a2 + 144);
    (**(v12 - 8))(a1 + 112, a2 + 112);
    *(a1 + 152) = 1;
  }

  else
  {
    v13 = *(a2 + 112);
    v14 = *(a2 + 128);
    *(a1 + 137) = *(a2 + 137);
    *(a1 + 112) = v13;
    *(a1 + 128) = v14;
  }

LABEL_14:
  *(a1 + 153) = *(a2 + 153);
  *(a1 + 154) = *(a2 + 154);
  *(a1 + 160) = *(a2 + 160);

  *(a1 + 168) = *(a2 + 168);
  *(a1 + 169) = *(a2 + 169);
  *(a1 + 170) = *(a2 + 170);
  *(a1 + 176) = *(a2 + 176);
  __swift_assign_boxed_opaque_existential_1((a1 + 184), (a2 + 184));
  *(a1 + 224) = *(a2 + 224);

  *(a1 + 232) = *(a2 + 232);

  *(a1 + 240) = *(a2 + 240);
  *(a1 + 244) = *(a2 + 244);
  *(a1 + 248) = *(a2 + 248);

  *(a1 + 256) = *(a2 + 256);
  *(a1 + 264) = *(a2 + 264);
  v15 = *(a1 + 272);
  v16 = *(a2 + 272);
  *(a1 + 272) = v16;
  v17 = v16;

  v18 = *(a2 + 280);
  v19 = *(a1 + 280);
  *(a1 + 280) = v18;
  v20 = v18;

  v21 = a3[17];
  v22 = a1 + v21;
  v23 = a2 + v21;
  v24 = type metadata accessor for PlatformItemList.Item();
  v25 = *(v24 - 8);
  v26 = *(v25 + 48);
  v27 = v26(v22, 1, v24);
  v28 = v26(v23, 1, v24);
  if (!v27)
  {
    if (v28)
    {
      outlined destroy of ToolbarStorage.GroupItem.CollapsedContent.Value(v22, type metadata accessor for PlatformItemList.Item);
      goto LABEL_23;
    }

    v47 = *v22;
    v48 = *v23;
    *v22 = *v23;
    v49 = v48;

    v50 = *(v22 + 8);
    v51 = *(v23 + 8);
    *(v22 + 8) = v51;
    v52 = v51;

    *(v22 + 16) = *(v23 + 16);
    *(v22 + 24) = *(v23 + 24);

    *(v22 + 32) = *(v23 + 32);
    *(v22 + 40) = *(v23 + 40);
    *(v22 + 48) = *(v23 + 48);

    *(v22 + 56) = *(v23 + 56);
    v53 = *(v23 + 192) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v22 + 192) >> 1 == 4294967294)
    {
      if (v53 == 0x1FFFFFFFCLL)
      {
        v54 = *(v23 + 64);
        v55 = *(v23 + 80);
        v56 = *(v23 + 112);
        *(v22 + 96) = *(v23 + 96);
        *(v22 + 112) = v56;
        *(v22 + 64) = v54;
        *(v22 + 80) = v55;
        v57 = *(v23 + 128);
        v58 = *(v23 + 144);
        v59 = *(v23 + 176);
        *(v22 + 160) = *(v23 + 160);
        *(v22 + 176) = v59;
        *(v22 + 128) = v57;
        *(v22 + 144) = v58;
        v60 = *(v23 + 192);
        v61 = *(v23 + 208);
        v62 = *(v23 + 224);
        *(v22 + 235) = *(v23 + 235);
        *(v22 + 208) = v61;
        *(v22 + 224) = v62;
        *(v22 + 192) = v60;
      }

      else
      {
        v160 = *(v23 + 72);
        if (v160 == 255)
        {
          v167 = *(v23 + 64);
          *(v22 + 72) = *(v23 + 72);
          *(v22 + 64) = v167;
        }

        else
        {
          v161 = *(v23 + 64);
          outlined copy of GraphicsImage.Contents(v161, *(v23 + 72));
          *(v22 + 64) = v161;
          *(v22 + 72) = v160;
        }

        *(v22 + 80) = *(v23 + 80);
        *(v22 + 88) = *(v23 + 88);
        *(v22 + 104) = *(v23 + 104);
        v168 = *(v23 + 108);
        *(v22 + 121) = *(v23 + 121);
        *(v22 + 108) = v168;
        v169 = *(v23 + 136);
        v170 = *(v23 + 152);
        *(v22 + 168) = *(v23 + 168);
        *(v22 + 152) = v170;
        *(v22 + 136) = v169;
        *(v22 + 169) = *(v23 + 169);
        *(v22 + 170) = *(v23 + 170);
        *(v22 + 171) = *(v23 + 171);
        v171 = *(v23 + 192);
        if (v171 >> 1 == 0xFFFFFFFF)
        {
          v172 = *(v23 + 192);
          *(v22 + 176) = *(v23 + 176);
          *(v22 + 192) = v172;
        }

        else
        {
          v173 = a3;
          v174 = *(v23 + 176);
          v175 = *(v23 + 184);
          v176 = v24;
          v177 = *(v23 + 200);
          outlined copy of AccessibilityImageLabel(v174, v175, *(v23 + 192));
          *(v22 + 176) = v174;
          *(v22 + 184) = v175;
          a3 = v173;
          *(v22 + 192) = v171;
          *(v22 + 200) = v177;
          v24 = v176;
        }

        *(v22 + 208) = *(v23 + 208);
        *(v22 + 216) = *(v23 + 216);
        *(v22 + 224) = *(v23 + 224);
        *(v22 + 225) = *(v23 + 225);
        v178 = *(v23 + 228);
        *(v22 + 232) = *(v23 + 232);
        *(v22 + 228) = v178;
        v179 = *(v23 + 240);
        *(v22 + 240) = v179;
        *(v22 + 248) = *(v23 + 248);
        *(v22 + 250) = *(v23 + 250);
        swift_unknownObjectRetain();

        v180 = v179;
      }
    }

    else if (v53 == 0x1FFFFFFFCLL)
    {
      outlined destroy of Image.Resolved(v22 + 64);
      v65 = *(v23 + 112);
      v67 = *(v23 + 64);
      v66 = *(v23 + 80);
      *(v22 + 96) = *(v23 + 96);
      *(v22 + 112) = v65;
      *(v22 + 64) = v67;
      *(v22 + 80) = v66;
      v68 = *(v23 + 176);
      v70 = *(v23 + 128);
      v69 = *(v23 + 144);
      *(v22 + 160) = *(v23 + 160);
      *(v22 + 176) = v68;
      *(v22 + 128) = v70;
      *(v22 + 144) = v69;
      v72 = *(v23 + 208);
      v71 = *(v23 + 224);
      v73 = *(v23 + 192);
      *(v22 + 235) = *(v23 + 235);
      *(v22 + 208) = v72;
      *(v22 + 224) = v71;
      *(v22 + 192) = v73;
    }

    else
    {
      v162 = *(v23 + 72);
      if (*(v22 + 72) == 255)
      {
        if (v162 == 255)
        {
          v183 = *(v23 + 64);
          *(v22 + 72) = *(v23 + 72);
          *(v22 + 64) = v183;
        }

        else
        {
          v181 = *(v23 + 64);
          outlined copy of GraphicsImage.Contents(v181, *(v23 + 72));
          *(v22 + 64) = v181;
          *(v22 + 72) = v162;
        }
      }

      else if (v162 == 255)
      {
        outlined destroy of GraphicsImage.Contents(v22 + 64);
        v182 = *(v23 + 72);
        *(v22 + 64) = *(v23 + 64);
        *(v22 + 72) = v182;
      }

      else
      {
        v163 = *(v23 + 64);
        outlined copy of GraphicsImage.Contents(v163, *(v23 + 72));
        v164 = *(v22 + 64);
        *(v22 + 64) = v163;
        v165 = *(v22 + 72);
        *(v22 + 72) = v162;
        outlined consume of GraphicsImage.Contents(v164, v165);
      }

      *(v22 + 80) = *(v23 + 80);
      *(v22 + 88) = *(v23 + 88);
      *(v22 + 96) = *(v23 + 96);
      *(v22 + 104) = *(v23 + 104);
      v184 = *(v23 + 108);
      *(v22 + 121) = *(v23 + 121);
      *(v22 + 108) = v184;
      v185 = *(v23 + 136);
      v186 = *(v23 + 152);
      *(v22 + 168) = *(v23 + 168);
      *(v22 + 152) = v186;
      *(v22 + 136) = v185;
      *(v22 + 169) = *(v23 + 169);
      *(v22 + 170) = *(v23 + 170);
      *(v22 + 171) = *(v23 + 171);
      v187 = *(v23 + 192);
      v188 = v187 & 0xFFFFFFFFFFFFFFFELL;
      if (*(v22 + 192) >> 1 == 0xFFFFFFFFLL)
      {
        if (v188 == 0x1FFFFFFFELL)
        {
          v189 = *(v23 + 192);
          *(v22 + 176) = *(v23 + 176);
          *(v22 + 192) = v189;
        }

        else
        {
          v191 = a3;
          v192 = *(v23 + 176);
          v193 = *(v23 + 184);
          v194 = v24;
          v195 = *(v23 + 200);
          outlined copy of AccessibilityImageLabel(v192, v193, *(v23 + 192));
          *(v22 + 176) = v192;
          *(v22 + 184) = v193;
          a3 = v191;
          *(v22 + 192) = v187;
          *(v22 + 200) = v195;
          v24 = v194;
        }
      }

      else if (v188 == 0x1FFFFFFFELL)
      {
        outlined destroy of AccessibilityImageLabel(v22 + 176);
        v190 = *(v23 + 192);
        *(v22 + 176) = *(v23 + 176);
        *(v22 + 192) = v190;
      }

      else
      {
        v196 = a3;
        v197 = *(v23 + 176);
        v198 = *(v23 + 184);
        v199 = v24;
        v200 = *(v23 + 200);
        outlined copy of AccessibilityImageLabel(v197, v198, *(v23 + 192));
        v201 = *(v22 + 176);
        v202 = *(v22 + 184);
        v203 = *(v22 + 192);
        *(v22 + 176) = v197;
        *(v22 + 184) = v198;
        a3 = v196;
        *(v22 + 192) = v187;
        *(v22 + 200) = v200;
        v24 = v199;
        outlined consume of AccessibilityImageLabel(v201, v202, v203);
      }

      *(v22 + 208) = *(v23 + 208);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *(v22 + 216) = *(v23 + 216);

      *(v22 + 224) = *(v23 + 224);
      *(v22 + 225) = *(v23 + 225);
      v204 = *(v23 + 228);
      *(v22 + 232) = *(v23 + 232);
      *(v22 + 228) = v204;
      v205 = *(v22 + 240);
      v206 = *(v23 + 240);
      *(v22 + 240) = v206;
      v207 = v206;

      *(v22 + 248) = *(v23 + 248);
      *(v22 + 250) = *(v23 + 250);
    }

    v208 = *(v23 + 264);
    if (!*(v22 + 264))
    {
      if (v208)
      {
        *(v22 + 256) = *(v23 + 256);
        *(v22 + 264) = *(v23 + 264);
        v212 = *(v23 + 272);

        if (v212 >= 2)
        {
          v213 = v212;
        }

        *(v22 + 272) = v212;
        v214 = *(v23 + 280);
        *(v22 + 284) = *(v23 + 284);
        *(v22 + 280) = v214;
        *(v22 + 285) = *(v23 + 285);
        *(v22 + 286) = *(v23 + 286);
        *(v22 + 288) = *(v23 + 288);
        *(v22 + 296) = *(v23 + 296);
      }

      else
      {
        v217 = *(v23 + 256);
        v218 = *(v23 + 288);
        *(v22 + 272) = *(v23 + 272);
        *(v22 + 288) = v218;
        *(v22 + 256) = v217;
      }

LABEL_117:
      v221 = *(v23 + 336);
      v222 = v221 & 0xFFFFFFFFFFFFFFFCLL;
      v437 = a3;
      v439 = v24;
      if (*(v22 + 336) >> 2 == 0xFFFFFFFFLL)
      {
        if (v222 == 0x3FFFFFFFCLL)
        {
          v223 = *(v23 + 304);
          v224 = *(v23 + 336);
          *(v22 + 320) = *(v23 + 320);
          *(v22 + 336) = v224;
          *(v22 + 304) = v223;
          v225 = *(v23 + 352);
          v226 = *(v23 + 368);
          v227 = *(v23 + 384);
          *(v22 + 400) = *(v23 + 400);
          *(v22 + 368) = v226;
          *(v22 + 384) = v227;
          *(v22 + 352) = v225;
        }

        else
        {
          v233 = *(v23 + 304);
          v405 = *(v23 + 328);
          v409 = *(v23 + 320);
          v235 = *(v23 + 344);
          v234 = *(v23 + 352);
          v236 = *(v23 + 360);
          v414 = *(v23 + 368);
          v418 = *(v23 + 376);
          __dstc = *(v23 + 384);
          v428 = *(v23 + 392);
          __srcc = *(v23 + 400);
          v237 = *(v23 + 312);
          outlined copy of PlatformItemList.Item.SystemItem(v233, v237, v409, v405, v221, v235, v234, v236, v414, v418, __dstc, v428, __srcc);
          *(v22 + 304) = v233;
          *(v22 + 312) = v237;
          *(v22 + 320) = v409;
          *(v22 + 328) = v405;
          v24 = v439;
          *(v22 + 336) = v221;
          *(v22 + 344) = v235;
          *(v22 + 352) = v234;
          *(v22 + 360) = v236;
          *(v22 + 368) = v414;
          *(v22 + 376) = v418;
          *(v22 + 384) = __dstc;
          *(v22 + 392) = v428;
          *(v22 + 400) = __srcc;
        }
      }

      else if (v222 == 0x3FFFFFFFCLL)
      {
        outlined destroy of PlatformItemList.Item.SystemItem(v22 + 304);
        v229 = *(v23 + 320);
        v228 = *(v23 + 336);
        *(v22 + 304) = *(v23 + 304);
        *(v22 + 320) = v229;
        *(v22 + 336) = v228;
        v231 = *(v23 + 368);
        v230 = *(v23 + 384);
        v232 = *(v23 + 352);
        *(v22 + 400) = *(v23 + 400);
        *(v22 + 368) = v231;
        *(v22 + 384) = v230;
        *(v22 + 352) = v232;
      }

      else
      {
        v238 = *(v23 + 304);
        v239 = *(v23 + 312);
        v240 = *(v23 + 320);
        v415 = *(v23 + 352);
        v419 = *(v23 + 344);
        v241 = *(v23 + 368);
        v406 = *(v23 + 328);
        v410 = *(v23 + 360);
        v242 = *(v23 + 376);
        __dstd = *(v23 + 384);
        v429 = *(v23 + 392);
        __srcd = *(v23 + 400);
        outlined copy of PlatformItemList.Item.SystemItem(v238, v239, v240, v406, v221, v419, v415, v410, v241, v242, __dstd, v429, __srcd);
        v243 = *(v22 + 304);
        v244 = *(v22 + 312);
        v245 = *(v22 + 320);
        v246 = *(v22 + 328);
        v247 = *(v22 + 336);
        v248 = *(v22 + 344);
        v249 = *(v22 + 352);
        v250 = *(v22 + 360);
        v251 = *(v22 + 368);
        v252 = *(v22 + 384);
        v253 = *(v22 + 400);
        *(v22 + 304) = v238;
        *(v22 + 312) = v239;
        *(v22 + 320) = v240;
        v24 = v439;
        *(v22 + 328) = v406;
        *(v22 + 336) = v221;
        *(v22 + 344) = v419;
        *(v22 + 352) = v415;
        *(v22 + 360) = v410;
        *(v22 + 368) = v241;
        *(v22 + 376) = v242;
        *(v22 + 384) = __dstd;
        *(v22 + 392) = v429;
        *(v22 + 400) = __srcd;
        outlined consume of PlatformItemList.Item.SystemItem(v243, v244, v245, v246, v247, v248, v249, v250, v251, *(&v251 + 1), v252, SBYTE8(v252), v253);
      }

      v254 = (v22 + 408);
      v255 = (v23 + 408);
      v256 = *(v22 + 416);
      v257 = *(v23 + 416);
      if (v256 == 1)
      {
        if (v257 == 1)
        {
          *v254 = *v255;
          v258 = *(v23 + 424);
          v259 = *(v23 + 440);
          v260 = *(v23 + 456);
          *(v22 + 472) = *(v23 + 472);
          *(v22 + 440) = v259;
          *(v22 + 456) = v260;
          *(v22 + 424) = v258;
          goto LABEL_159;
        }

        *(v22 + 408) = *(v23 + 408);
        *(v22 + 409) = *(v23 + 409);
        *(v22 + 410) = *(v23 + 410);
        *(v22 + 411) = *(v23 + 411);
        *(v22 + 412) = *(v23 + 412);
        v264 = *(v23 + 416);
        if (v264)
        {
          v265 = *(v23 + 424);
          *(v22 + 416) = v264;
          *(v22 + 424) = v265;
        }

        else
        {
          *(v22 + 416) = *(v23 + 416);
        }

        v268 = *(v23 + 432);
        if (v268)
        {
          v269 = *(v23 + 440);
          *(v22 + 432) = v268;
          *(v22 + 440) = v269;
        }

        else
        {
          *(v22 + 432) = *(v23 + 432);
        }

        v271 = *(v23 + 448);
        if (!v271)
        {
          goto LABEL_157;
        }

        goto LABEL_155;
      }

      if (v257 == 1)
      {
        outlined destroy of PlatformItemList.Item.SelectionBehavior(v22 + 408);
        *v254 = *v255;
        v262 = *(v23 + 440);
        v261 = *(v23 + 456);
        v263 = *(v23 + 424);
        *(v22 + 472) = *(v23 + 472);
        *(v22 + 440) = v262;
        *(v22 + 456) = v261;
        *(v22 + 424) = v263;
        goto LABEL_159;
      }

      *(v22 + 408) = *v255;
      *(v22 + 409) = *(v23 + 409);
      *(v22 + 410) = *(v23 + 410);
      *(v22 + 411) = *(v23 + 411);
      *(v22 + 412) = *(v23 + 412);
      v266 = *(v23 + 416);
      if (v256)
      {
        if (v266)
        {
          v267 = *(v23 + 424);
          *(v22 + 416) = v266;
          *(v22 + 424) = v267;

          goto LABEL_144;
        }
      }

      else if (v266)
      {
        v270 = *(v23 + 424);
        *(v22 + 416) = v266;
        *(v22 + 424) = v270;

        goto LABEL_144;
      }

      *(v22 + 416) = *(v23 + 416);
LABEL_144:
      v272 = *(v23 + 432);
      if (*(v22 + 432))
      {
        if (v272)
        {
          v273 = *(v23 + 440);
          *(v22 + 432) = v272;
          *(v22 + 440) = v273;

          goto LABEL_151;
        }
      }

      else if (v272)
      {
        v274 = *(v23 + 440);
        *(v22 + 432) = v272;
        *(v22 + 440) = v274;

        goto LABEL_151;
      }

      *(v22 + 432) = *(v23 + 432);
LABEL_151:
      v271 = *(v23 + 448);
      if (*(v22 + 448))
      {
        if (v271)
        {
          v275 = *(v23 + 456);
          *(v22 + 448) = v271;
          *(v22 + 456) = v275;

LABEL_158:
          *(v22 + 464) = *(v23 + 464);
          *(v22 + 472) = *(v23 + 472);
LABEL_159:
          *(v22 + 480) = *(v23 + 480);
          *(v22 + 488) = *(v23 + 488);

          *(v22 + 496) = *(v23 + 496);
          *(v22 + 504) = *(v23 + 504);
          v277 = *(v23 + 512);
          if (*(v22 + 512))
          {
            if (v277)
            {
              v278 = *(v23 + 520);
              *(v22 + 512) = v277;
              *(v22 + 520) = v278;

              goto LABEL_166;
            }
          }

          else if (v277)
          {
            v279 = *(v23 + 520);
            *(v22 + 512) = v277;
            *(v22 + 520) = v279;

            goto LABEL_166;
          }

          *(v22 + 512) = *(v23 + 512);
LABEL_166:
          *(v22 + 528) = *(v23 + 528);
          v280 = *(v23 + 816);
          if (*(v22 + 816))
          {
            if (v280)
            {
              *(v22 + 536) = *(v23 + 536);
              *(v22 + 544) = *(v23 + 544);

              *(v22 + 552) = *(v23 + 552);
              *(v22 + 560) = *(v23 + 560);

              *(v22 + 568) = *(v23 + 568);
              v281 = *(v23 + 576);
              *(v22 + 592) = *(v23 + 592);
              *(v22 + 576) = v281;
              v282 = (v22 + 600);
              v283 = (v23 + 600);
              v284 = *(v22 + 624);
              v285 = *(v23 + 624);
              if (v284 != 1)
              {
                if (v285 == 1)
                {
                  outlined destroy of AccessibilityValueStorage(v22 + 600);
                  v295 = *(v23 + 616);
                  v294 = *(v23 + 632);
                  *v282 = *v283;
                  *(v22 + 616) = v295;
                  *(v22 + 632) = v294;
                }

                else
                {
                  if (v284)
                  {
                    if (v285)
                    {
                      __swift_assign_boxed_opaque_existential_1((v22 + 600), (v23 + 600));
                    }

                    else
                    {
                      outlined destroy of AnyAccessibilityValue(v22 + 600);
                      v313 = *(v23 + 632);
                      v314 = *(v23 + 616);
                      *v282 = *v283;
                      *(v22 + 616) = v314;
                      *(v22 + 632) = v313;
                    }
                  }

                  else if (v285)
                  {
                    *(v22 + 624) = v285;
                    *(v22 + 632) = *(v23 + 632);
                    (**(v285 - 8))(v22 + 600, v23 + 600);
                  }

                  else
                  {
                    v315 = *v283;
                    v316 = *(v23 + 616);
                    *(v22 + 632) = *(v23 + 632);
                    *v282 = v315;
                    *(v22 + 616) = v316;
                  }

                  *(v22 + 640) = *(v23 + 640);
                }

                goto LABEL_198;
              }

              if (v285)
              {
                if (v285 == 1)
                {
                  v286 = *v283;
                  v287 = *(v23 + 632);
                  *(v22 + 616) = *(v23 + 616);
                  *(v22 + 632) = v287;
                  *v282 = v286;
LABEL_198:
                  v317 = *(v23 + 648);
                  *(v22 + 656) = *(v23 + 656);
                  *(v22 + 648) = v317;
                  v318 = (v22 + 664);
                  v319 = (v23 + 664);
                  v320 = *(v23 + 776);
                  if (*(v22 + 776) == 1)
                  {
                    if (v320 == 1)
                    {
                      v321 = *(v23 + 680);
                      *v318 = *v319;
                      *(v22 + 680) = v321;
                      v322 = *(v23 + 696);
                      v323 = *(v23 + 712);
                      v324 = *(v23 + 744);
                      *(v22 + 728) = *(v23 + 728);
                      *(v22 + 744) = v324;
                      *(v22 + 696) = v322;
                      *(v22 + 712) = v323;
                      v325 = *(v23 + 760);
                      v326 = *(v23 + 776);
                      v327 = *(v23 + 792);
                      *(v22 + 808) = *(v23 + 808);
                      *(v22 + 776) = v326;
                      *(v22 + 792) = v327;
                      *(v22 + 760) = v325;
                    }

                    else
                    {
                      v335 = *v319;
                      *(v22 + 672) = *(v23 + 672);
                      *v318 = v335;
                      v336 = *(v23 + 680);
                      *(v22 + 688) = *(v23 + 688);
                      *(v22 + 680) = v336;
                      *(v22 + 689) = *(v23 + 689);
                      *(v22 + 690) = *(v23 + 690);
                      *(v22 + 691) = *(v23 + 691);
                      *(v22 + 692) = *(v23 + 692);
                      *(v22 + 696) = *(v23 + 696);
                      *(v22 + 704) = *(v23 + 704);
                      *(v22 + 712) = *(v23 + 712);
                      *(v22 + 720) = *(v23 + 720);
                      *(v22 + 728) = *(v23 + 728);
                      *(v22 + 736) = *(v23 + 736);
                      *(v22 + 744) = *(v23 + 744);
                      *(v22 + 745) = *(v23 + 745);
                      *(v22 + 752) = *(v23 + 752);
                      *(v22 + 760) = *(v23 + 760);
                      *(v22 + 768) = *(v23 + 768);
                      *(v22 + 776) = *(v23 + 776);
                      v337 = *(v23 + 784);
                      *(v22 + 800) = *(v23 + 800);
                      *(v22 + 784) = v337;
                      *(v22 + 808) = *(v23 + 808);
                    }
                  }

                  else if (v320 == 1)
                  {
                    outlined destroy of AccessibilityTextLayoutProperties(v22 + 664);
                    v328 = *(v23 + 680);
                    *v318 = *v319;
                    *(v22 + 680) = v328;
                    v329 = *(v23 + 744);
                    v331 = *(v23 + 696);
                    v330 = *(v23 + 712);
                    *(v22 + 728) = *(v23 + 728);
                    *(v22 + 744) = v329;
                    *(v22 + 696) = v331;
                    *(v22 + 712) = v330;
                    v333 = *(v23 + 776);
                    v332 = *(v23 + 792);
                    v334 = *(v23 + 760);
                    *(v22 + 808) = *(v23 + 808);
                    *(v22 + 776) = v333;
                    *(v22 + 792) = v332;
                    *(v22 + 760) = v334;
                  }

                  else
                  {
                    v338 = *v319;
                    *(v22 + 672) = *(v23 + 672);
                    *v318 = v338;
                    v339 = *(v23 + 680);
                    *(v22 + 688) = *(v23 + 688);
                    *(v22 + 680) = v339;
                    *(v22 + 689) = *(v23 + 689);
                    *(v22 + 690) = *(v23 + 690);
                    *(v22 + 691) = *(v23 + 691);
                    *(v22 + 692) = *(v23 + 692);
                    *(v22 + 696) = *(v23 + 696);
                    *(v22 + 704) = *(v23 + 704);
                    *(v22 + 712) = *(v23 + 712);
                    *(v22 + 720) = *(v23 + 720);
                    *(v22 + 728) = *(v23 + 728);
                    *(v22 + 736) = *(v23 + 736);
                    *(v22 + 744) = *(v23 + 744);
                    *(v22 + 745) = *(v23 + 745);
                    *(v22 + 752) = *(v23 + 752);
                    *(v22 + 760) = *(v23 + 760);
                    *(v22 + 768) = *(v23 + 768);
                    *(v22 + 776) = *(v23 + 776);

                    v340 = *(v23 + 784);
                    *(v22 + 800) = *(v23 + 800);
                    *(v22 + 784) = v340;
                    *(v22 + 808) = *(v23 + 808);
                  }

                  *(v22 + 816) = *(v23 + 816);

                  *(v22 + 824) = *(v23 + 824);

                  *(v22 + 832) = *(v23 + 832);

                  goto LABEL_206;
                }

                *(v22 + 624) = v285;
                *(v22 + 632) = *(v23 + 632);
                (**(v285 - 8))(v22 + 600, v23 + 600);
              }

              else
              {
                v311 = *v283;
                v312 = *(v23 + 616);
                *(v22 + 632) = *(v23 + 632);
                *v282 = v311;
                *(v22 + 616) = v312;
              }

              *(v22 + 640) = *(v23 + 640);

              goto LABEL_198;
            }

            outlined destroy of PlatformItemList.Item.Accessibility(v22 + 536);
LABEL_177:
            memcpy((v22 + 536), (v23 + 536), 0x130uLL);
            goto LABEL_206;
          }

          if (!v280)
          {
            goto LABEL_177;
          }

          *(v22 + 536) = *(v23 + 536);
          *(v22 + 544) = *(v23 + 544);
          *(v22 + 552) = *(v23 + 552);
          *(v22 + 560) = *(v23 + 560);
          *(v22 + 568) = *(v23 + 568);
          v288 = *(v23 + 576);
          *(v22 + 592) = *(v23 + 592);
          *(v22 + 576) = v288;
          v289 = (v22 + 600);
          v290 = (v23 + 600);
          v291 = *(v23 + 624);

          if (v291)
          {
            if (v291 == 1)
            {
              v292 = *v290;
              v293 = *(v23 + 632);
              *(v22 + 616) = *(v23 + 616);
              *(v22 + 632) = v293;
              *v289 = v292;
LABEL_186:
              v298 = *(v23 + 648);
              *(v22 + 656) = *(v23 + 656);
              *(v22 + 648) = v298;
              v299 = (v22 + 664);
              v300 = (v23 + 664);
              if (*(v23 + 776) == 1)
              {
                v301 = *(v23 + 680);
                *v299 = *v300;
                *(v22 + 680) = v301;
                v302 = *(v23 + 696);
                v303 = *(v23 + 712);
                v304 = *(v23 + 744);
                *(v22 + 728) = *(v23 + 728);
                *(v22 + 744) = v304;
                *(v22 + 696) = v302;
                *(v22 + 712) = v303;
                v305 = *(v23 + 760);
                v306 = *(v23 + 776);
                v307 = *(v23 + 792);
                *(v22 + 808) = *(v23 + 808);
                *(v22 + 776) = v306;
                *(v22 + 792) = v307;
                *(v22 + 760) = v305;
              }

              else
              {
                v308 = *v300;
                *(v22 + 672) = *(v23 + 672);
                *v299 = v308;
                v309 = *(v23 + 680);
                *(v22 + 688) = *(v23 + 688);
                *(v22 + 680) = v309;
                *(v22 + 689) = *(v23 + 689);
                *(v22 + 690) = *(v23 + 690);
                *(v22 + 691) = *(v23 + 691);
                *(v22 + 692) = *(v23 + 692);
                *(v22 + 696) = *(v23 + 696);
                *(v22 + 704) = *(v23 + 704);
                *(v22 + 712) = *(v23 + 712);
                *(v22 + 720) = *(v23 + 720);
                *(v22 + 728) = *(v23 + 728);
                *(v22 + 736) = *(v23 + 736);
                *(v22 + 744) = *(v23 + 744);
                *(v22 + 745) = *(v23 + 745);
                *(v22 + 752) = *(v23 + 752);
                *(v22 + 760) = *(v23 + 760);
                *(v22 + 768) = *(v23 + 768);
                *(v22 + 776) = *(v23 + 776);
                v310 = *(v23 + 784);
                *(v22 + 800) = *(v23 + 800);
                *(v22 + 784) = v310;
                *(v22 + 808) = *(v23 + 808);
              }

              *(v22 + 816) = *(v23 + 816);
              *(v22 + 824) = *(v23 + 824);
              *(v22 + 832) = *(v23 + 832);

LABEL_206:
              v341 = (v22 + 840);
              v342 = (v23 + 840);
              v343 = *(v22 + 864);
              v344 = *(v23 + 864);
              if (v343 == 1)
              {
                if (v344)
                {
                  if (v344 == 1)
                  {
                    v345 = *v342;
                    v346 = *(v23 + 856);
                    v347 = *(v23 + 872);
                    *(v22 + 888) = *(v23 + 888);
                    *(v22 + 856) = v346;
                    *(v22 + 872) = v347;
                    *v341 = v345;
                    goto LABEL_230;
                  }

                  *(v22 + 864) = v344;
                  *(v22 + 872) = *(v23 + 872);
                  (**(v344 - 8))(v22 + 840, v23 + 840);
                }

                else
                {
                  v351 = *v342;
                  v352 = *(v23 + 856);
                  *(v22 + 872) = *(v23 + 872);
                  *v341 = v351;
                  *(v22 + 856) = v352;
                }

                v353 = *(v23 + 880);
                if (!v353)
                {
                  goto LABEL_229;
                }
              }

              else
              {
                if (v344 == 1)
                {
                  outlined destroy of PlatformItemList.Item.SecondaryNavigationBehavior(v22 + 840);
                  v349 = *(v23 + 856);
                  v348 = *(v23 + 872);
                  v350 = *v342;
                  *(v22 + 888) = *(v23 + 888);
                  *(v22 + 856) = v349;
                  *(v22 + 872) = v348;
                  *v341 = v350;
                  goto LABEL_230;
                }

                if (v343)
                {
                  if (v344)
                  {
                    __swift_assign_boxed_opaque_existential_1((v22 + 840), (v23 + 840));
                  }

                  else
                  {
                    outlined destroy of AnyNavigationLinkPresentedValue(v22 + 840);
                    v354 = *(v23 + 872);
                    v355 = *(v23 + 856);
                    *v341 = *v342;
                    *(v22 + 856) = v355;
                    *(v22 + 872) = v354;
                  }
                }

                else if (v344)
                {
                  *(v22 + 864) = v344;
                  *(v22 + 872) = *(v23 + 872);
                  (**(v344 - 8))(v22 + 840, v23 + 840);
                }

                else
                {
                  v356 = *v342;
                  v357 = *(v23 + 856);
                  *(v22 + 872) = *(v23 + 872);
                  *v341 = v356;
                  *(v22 + 856) = v357;
                }

                v353 = *(v23 + 880);
                if (*(v22 + 880))
                {
                  if (v353)
                  {
                    v358 = *(v23 + 888);
                    *(v22 + 880) = v353;
                    *(v22 + 888) = v358;

                    goto LABEL_230;
                  }

                  goto LABEL_229;
                }

                if (!v353)
                {
LABEL_229:
                  *(v22 + 880) = *(v23 + 880);
LABEL_230:
                  v360 = *(v22 + 896);
                  v361 = *(v23 + 896);
                  *(v22 + 896) = v361;
                  v362 = v361;

                  *(v22 + 904) = *(v23 + 904);
                  *(v22 + 912) = *(v23 + 912);

                  *(v22 + 920) = *(v23 + 920);
                  *(v22 + 928) = *(v23 + 928);

                  *(v22 + 936) = *(v23 + 936);

                  *(v22 + 944) = *(v23 + 944);

                  *(v22 + 952) = *(v23 + 952);
                  *(v22 + 953) = *(v23 + 953);
                  *(v22 + 954) = *(v23 + 954);
                  v363 = *(v24 + 112);
                  v364 = (v22 + v363);
                  v365 = (v23 + v363);
                  v366 = type metadata accessor for CommandOperation();
                  v430 = *(v366 - 8);
                  v367 = *(v430 + 48);
                  v368 = v364;
                  LODWORD(v364) = v367(v364, 1, v366);
                  __srca = v365;
                  v369 = v367(v365, 1, v366);
                  if (v364)
                  {
                    if (!v369)
                    {
                      *v368 = *v365;
                      v370 = *(v366 + 20);
                      __dsta = v368;
                      v371 = &v368[v370];
                      v372 = &__srca[v370];
                      v373 = *&__srca[v370];
                      v374 = *&__srca[v370 + 8];
                      v375 = __srca[v370 + 16];
                      outlined copy of Text.Storage(v373, v374, v375);
                      *v371 = v373;
                      *(v371 + 1) = v374;
                      v371[16] = v375;
                      *(v371 + 3) = *(v372 + 3);
                      v376 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                      v377 = type metadata accessor for UUID();
                      v420 = *(*(v377 - 8) + 16);

                      v420(&v371[v376], &v372[v376], v377);
                      v378 = *(v366 + 24);
                      v379 = &__dsta[v378];
                      v380 = &__srca[v378];
                      if (*v380)
                      {
                        v381 = v380[1];
                        *v379 = *v380;
                        *(v379 + 1) = v381;
                      }

                      else
                      {
                        *v379 = *v380;
                      }

                      v383 = v439;
                      (*(v430 + 56))(__dsta, 0, 1, v366);
                      a3 = v437;
                      goto LABEL_242;
                    }
                  }

                  else
                  {
                    if (!v369)
                    {
                      __dste = v368;
                      *v368 = *v365;
                      v384 = *(v366 + 20);
                      v385 = &v368[v384];
                      v386 = &v365[v384];
                      v387 = *&v365[v384];
                      v388 = *&v365[v384 + 8];
                      v389 = v365[v384 + 16];
                      outlined copy of Text.Storage(*&__srca[v384], *&__srca[v384 + 8], __srca[v384 + 16]);
                      v390 = *v385;
                      v391 = *(v385 + 1);
                      v392 = v385[16];
                      *v385 = v387;
                      *(v385 + 1) = v388;
                      v385[16] = v389;
                      outlined consume of Text.Storage(v390, v391, v392);
                      *(v385 + 3) = *(v386 + 3);

                      v393 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                      v394 = type metadata accessor for UUID();
                      (*(*(v394 - 8) + 24))(&v385[v393], &v386[v393], v394);
                      v395 = *(v366 + 24);
                      v396 = &__dste[v395];
                      v397 = &__srca[v395];
                      v398 = *&__dste[v395];
                      v399 = *&__srca[v395];
                      if (v398)
                      {
                        a3 = v437;
                        v383 = v439;
                        if (v399)
                        {
                          v400 = *(v397 + 1);
                          *v396 = v399;
                          *(v396 + 1) = v400;

                          goto LABEL_242;
                        }
                      }

                      else
                      {
                        a3 = v437;
                        v383 = v439;
                        if (v399)
                        {
                          v402 = *(v397 + 1);
                          *v396 = v399;
                          *(v396 + 1) = v402;

                          goto LABEL_242;
                        }
                      }

                      *v396 = *v397;
                      goto LABEL_242;
                    }

                    outlined destroy of ToolbarStorage.GroupItem.CollapsedContent.Value(v368, type metadata accessor for CommandOperation);
                  }

                  _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
                  memcpy(v368, v365, *(*(v382 - 8) + 64));
                  a3 = v437;
                  v383 = v439;
LABEL_242:
                  *(v22 + v383[29]) = *(v23 + v383[29]);
                  *(v22 + v383[30]) = *(v23 + v383[30]);
                  *(v22 + v383[31]) = *(v23 + v383[31]);
                  *(v22 + v383[32]) = *(v23 + v383[32]);
                  *(v22 + v383[33]) = *(v23 + v383[33]);
                  *(v22 + v383[34]) = *(v23 + v383[34]);

                  goto LABEL_243;
                }
              }

              v359 = *(v23 + 888);
              *(v22 + 880) = v353;
              *(v22 + 888) = v359;

              goto LABEL_230;
            }

            *(v22 + 624) = v291;
            *(v22 + 632) = *(v23 + 632);
            (**(v291 - 8))(v22 + 600, v23 + 600, v291);
          }

          else
          {
            v296 = *v290;
            v297 = *(v23 + 616);
            *(v22 + 632) = *(v23 + 632);
            *v289 = v296;
            *(v22 + 616) = v297;
          }

          *(v22 + 640) = *(v23 + 640);

          goto LABEL_186;
        }
      }

      else if (v271)
      {
LABEL_155:
        v276 = *(v23 + 456);
        *(v22 + 448) = v271;
        *(v22 + 456) = v276;

        goto LABEL_158;
      }

LABEL_157:
      *(v22 + 448) = *(v23 + 448);
      goto LABEL_158;
    }

    if (!v208)
    {
      outlined destroy of Image.NamedResolved(v22 + 256);
      v216 = *(v23 + 272);
      v215 = *(v23 + 288);
      *(v22 + 256) = *(v23 + 256);
      *(v22 + 272) = v216;
      *(v22 + 288) = v215;
      goto LABEL_117;
    }

    *(v22 + 256) = *(v23 + 256);
    *(v22 + 264) = *(v23 + 264);

    v209 = *(v22 + 272);
    v210 = *(v23 + 272);
    if (v209 >= 2)
    {
      if (v210 >= 2)
      {
        *(v22 + 272) = v210;
        v219 = v210;

        goto LABEL_116;
      }

      v210 = *(v23 + 272);
    }

    else if (v210 >= 2)
    {
      *(v22 + 272) = v210;
      v211 = v210;
LABEL_116:
      v220 = *(v23 + 280);
      *(v22 + 284) = *(v23 + 284);
      *(v22 + 280) = v220;
      *(v22 + 285) = *(v23 + 285);
      *(v22 + 286) = *(v23 + 286);
      *(v22 + 288) = *(v23 + 288);

      *(v22 + 296) = *(v23 + 296);

      goto LABEL_117;
    }

    *(v22 + 272) = v210;
    goto LABEL_116;
  }

  if (v28)
  {
LABEL_23:
    _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
    memcpy(v22, v23, *(*(v46 - 8) + 64));
    goto LABEL_243;
  }

  v427 = v25;
  v29 = *v23;
  *v22 = *v23;
  v30 = *(v23 + 8);
  *(v22 + 8) = v30;
  *(v22 + 16) = *(v23 + 16);
  *(v22 + 24) = *(v23 + 24);
  *(v22 + 32) = *(v23 + 32);
  *(v22 + 40) = *(v23 + 40);
  *(v22 + 48) = *(v23 + 48);
  *(v22 + 56) = *(v23 + 56);
  v31 = *(v23 + 192);
  v32 = v29;
  v33 = v30;

  if (v31 >> 1 != 4294967294)
  {
    v63 = *(v23 + 72);
    if (v63 == 255)
    {
      v74 = *(v23 + 64);
      *(v22 + 72) = *(v23 + 72);
      *(v22 + 64) = v74;
    }

    else
    {
      v64 = *(v23 + 64);
      outlined copy of GraphicsImage.Contents(v64, *(v23 + 72));
      *(v22 + 64) = v64;
      *(v22 + 72) = v63;
    }

    *(v22 + 80) = *(v23 + 80);
    *(v22 + 88) = *(v23 + 88);
    *(v22 + 104) = *(v23 + 104);
    v75 = *(v23 + 108);
    *(v22 + 121) = *(v23 + 121);
    *(v22 + 108) = v75;
    v76 = *(v23 + 136);
    v77 = *(v23 + 152);
    *(v22 + 168) = *(v23 + 168);
    *(v22 + 152) = v77;
    *(v22 + 136) = v76;
    *(v22 + 169) = *(v23 + 169);
    *(v22 + 170) = *(v23 + 170);
    *(v22 + 171) = *(v23 + 171);
    v78 = *(v23 + 192);
    if (v78 >> 1 == 0xFFFFFFFF)
    {
      v79 = *(v23 + 192);
      *(v22 + 176) = *(v23 + 176);
      *(v22 + 192) = v79;
    }

    else
    {
      v80 = *(v23 + 176);
      v81 = *(v23 + 184);
      v82 = *(v23 + 200);
      outlined copy of AccessibilityImageLabel(v80, v81, *(v23 + 192));
      *(v22 + 176) = v80;
      *(v22 + 184) = v81;
      *(v22 + 192) = v78;
      *(v22 + 200) = v82;
    }

    *(v22 + 208) = *(v23 + 208);
    *(v22 + 216) = *(v23 + 216);
    *(v22 + 224) = *(v23 + 224);
    *(v22 + 225) = *(v23 + 225);
    v83 = *(v23 + 228);
    *(v22 + 232) = *(v23 + 232);
    *(v22 + 228) = v83;
    v84 = *(v23 + 240);
    *(v22 + 240) = v84;
    *(v22 + 248) = *(v23 + 248);
    *(v22 + 250) = *(v23 + 250);
    swift_unknownObjectRetain();

    v85 = v84;
    if (*(v23 + 264))
    {
      goto LABEL_18;
    }

LABEL_36:
    v86 = *(v23 + 256);
    v87 = *(v23 + 288);
    *(v22 + 272) = *(v23 + 272);
    *(v22 + 288) = v87;
    *(v22 + 256) = v86;
    goto LABEL_37;
  }

  v34 = *(v23 + 64);
  v35 = *(v23 + 80);
  v36 = *(v23 + 112);
  *(v22 + 96) = *(v23 + 96);
  *(v22 + 112) = v36;
  *(v22 + 64) = v34;
  *(v22 + 80) = v35;
  v37 = *(v23 + 128);
  v38 = *(v23 + 144);
  v39 = *(v23 + 176);
  *(v22 + 160) = *(v23 + 160);
  *(v22 + 176) = v39;
  *(v22 + 128) = v37;
  *(v22 + 144) = v38;
  v40 = *(v23 + 192);
  v41 = *(v23 + 208);
  v42 = *(v23 + 224);
  *(v22 + 235) = *(v23 + 235);
  *(v22 + 208) = v41;
  *(v22 + 224) = v42;
  *(v22 + 192) = v40;
  if (!*(v23 + 264))
  {
    goto LABEL_36;
  }

LABEL_18:
  *(v22 + 256) = *(v23 + 256);
  *(v22 + 264) = *(v23 + 264);
  v43 = *(v23 + 272);

  if (v43 >= 2)
  {
    v44 = v43;
  }

  *(v22 + 272) = v43;
  v45 = *(v23 + 280);
  *(v22 + 284) = *(v23 + 284);
  *(v22 + 280) = v45;
  *(v22 + 285) = *(v23 + 285);
  *(v22 + 286) = *(v23 + 286);
  *(v22 + 288) = *(v23 + 288);
  *(v22 + 296) = *(v23 + 296);

LABEL_37:
  v88 = *(v23 + 336);
  v436 = a3;
  v438 = v24;
  if (v88 >> 2 == 0xFFFFFFFF)
  {
    v89 = *(v23 + 304);
    v90 = *(v23 + 336);
    *(v22 + 320) = *(v23 + 320);
    *(v22 + 336) = v90;
    *(v22 + 304) = v89;
    v91 = *(v23 + 352);
    v92 = *(v23 + 368);
    v93 = *(v23 + 384);
    *(v22 + 400) = *(v23 + 400);
    *(v22 + 368) = v92;
    *(v22 + 384) = v93;
    *(v22 + 352) = v91;
  }

  else
  {
    v94 = *(v23 + 304);
    v95 = *(v23 + 312);
    v403 = *(v23 + 328);
    v404 = *(v23 + 320);
    v96 = *(v23 + 344);
    v97 = *(v23 + 352);
    v98 = *(v23 + 360);
    v407 = *(v23 + 368);
    v411 = *(v23 + 376);
    v416 = *(v23 + 384);
    __dstb = *(v23 + 392);
    __srcb = *(v23 + 400);
    outlined copy of PlatformItemList.Item.SystemItem(v94, v95, v404, v403, v88, v96, v97, v98, v407, v411, v416, __dstb, __srcb);
    *(v22 + 304) = v94;
    *(v22 + 312) = v95;
    *(v22 + 320) = v404;
    *(v22 + 328) = v403;
    *(v22 + 336) = v88;
    *(v22 + 344) = v96;
    *(v22 + 352) = v97;
    *(v22 + 360) = v98;
    *(v22 + 368) = v407;
    *(v22 + 376) = v411;
    *(v22 + 384) = v416;
    *(v22 + 392) = __dstb;
    *(v22 + 400) = __srcb;
  }

  if (*(v23 + 416) == 1)
  {
    *(v22 + 408) = *(v23 + 408);
    v99 = *(v23 + 424);
    v100 = *(v23 + 440);
    v101 = *(v23 + 456);
    *(v22 + 472) = *(v23 + 472);
    *(v22 + 440) = v100;
    *(v22 + 456) = v101;
    *(v22 + 424) = v99;
    goto LABEL_50;
  }

  *(v22 + 408) = *(v23 + 408);
  *(v22 + 409) = *(v23 + 409);
  *(v22 + 410) = *(v23 + 410);
  *(v22 + 411) = *(v23 + 411);
  *(v22 + 412) = *(v23 + 412);
  v102 = *(v23 + 416);
  if (v102)
  {
    v103 = *(v23 + 424);
    *(v22 + 416) = v102;
    *(v22 + 424) = v103;

    v104 = *(v23 + 432);
    if (v104)
    {
      goto LABEL_44;
    }

LABEL_47:
    *(v22 + 432) = *(v23 + 432);
    v106 = *(v23 + 448);
    if (v106)
    {
      goto LABEL_45;
    }

LABEL_48:
    *(v22 + 448) = *(v23 + 448);
    goto LABEL_49;
  }

  *(v22 + 416) = *(v23 + 416);
  v104 = *(v23 + 432);
  if (!v104)
  {
    goto LABEL_47;
  }

LABEL_44:
  v105 = *(v23 + 440);
  *(v22 + 432) = v104;
  *(v22 + 440) = v105;

  v106 = *(v23 + 448);
  if (!v106)
  {
    goto LABEL_48;
  }

LABEL_45:
  v107 = *(v23 + 456);
  *(v22 + 448) = v106;
  *(v22 + 456) = v107;

LABEL_49:
  *(v22 + 464) = *(v23 + 464);
  *(v22 + 472) = *(v23 + 472);
LABEL_50:
  *(v22 + 480) = *(v23 + 480);
  *(v22 + 488) = *(v23 + 488);
  *(v22 + 496) = *(v23 + 496);
  *(v22 + 504) = *(v23 + 504);
  v108 = *(v23 + 512);

  if (v108)
  {
    v109 = *(v23 + 520);
    *(v22 + 512) = v108;
    *(v22 + 520) = v109;
  }

  else
  {
    *(v22 + 512) = *(v23 + 512);
  }

  *(v22 + 528) = *(v23 + 528);
  if (!*(v23 + 816))
  {
    memcpy((v22 + 536), (v23 + 536), 0x130uLL);
    goto LABEL_65;
  }

  *(v22 + 536) = *(v23 + 536);
  *(v22 + 544) = *(v23 + 544);
  *(v22 + 552) = *(v23 + 552);
  *(v22 + 560) = *(v23 + 560);
  *(v22 + 568) = *(v23 + 568);
  v110 = *(v23 + 576);
  *(v22 + 592) = *(v23 + 592);
  *(v22 + 576) = v110;
  v111 = (v22 + 600);
  v112 = (v23 + 600);
  v113 = *(v23 + 624);

  if (!v113)
  {
    v116 = *v112;
    v117 = *(v23 + 616);
    *(v22 + 632) = *(v23 + 632);
    *v111 = v116;
    *(v22 + 616) = v117;
LABEL_60:
    *(v22 + 640) = *(v23 + 640);

    goto LABEL_61;
  }

  if (v113 != 1)
  {
    *(v22 + 624) = v113;
    *(v22 + 632) = *(v23 + 632);
    (**(v113 - 8))(v22 + 600, v23 + 600, v113);
    goto LABEL_60;
  }

  v114 = *v112;
  v115 = *(v23 + 632);
  *(v22 + 616) = *(v23 + 616);
  *(v22 + 632) = v115;
  *v111 = v114;
LABEL_61:
  v118 = *(v23 + 648);
  *(v22 + 656) = *(v23 + 656);
  *(v22 + 648) = v118;
  v119 = (v22 + 664);
  v120 = (v23 + 664);
  if (*(v23 + 776) == 1)
  {
    v121 = *(v23 + 680);
    *v119 = *v120;
    *(v22 + 680) = v121;
    v122 = *(v23 + 696);
    v123 = *(v23 + 712);
    v124 = *(v23 + 744);
    *(v22 + 728) = *(v23 + 728);
    *(v22 + 744) = v124;
    *(v22 + 696) = v122;
    *(v22 + 712) = v123;
    v125 = *(v23 + 760);
    v126 = *(v23 + 776);
    v127 = *(v23 + 792);
    *(v22 + 808) = *(v23 + 808);
    *(v22 + 776) = v126;
    *(v22 + 792) = v127;
    *(v22 + 760) = v125;
  }

  else
  {
    v128 = *v120;
    *(v22 + 672) = *(v23 + 672);
    *v119 = v128;
    v129 = *(v23 + 680);
    *(v22 + 688) = *(v23 + 688);
    *(v22 + 680) = v129;
    *(v22 + 689) = *(v23 + 689);
    *(v22 + 690) = *(v23 + 690);
    *(v22 + 691) = *(v23 + 691);
    *(v22 + 692) = *(v23 + 692);
    *(v22 + 696) = *(v23 + 696);
    *(v22 + 704) = *(v23 + 704);
    *(v22 + 712) = *(v23 + 712);
    *(v22 + 720) = *(v23 + 720);
    *(v22 + 728) = *(v23 + 728);
    *(v22 + 736) = *(v23 + 736);
    *(v22 + 744) = *(v23 + 744);
    *(v22 + 745) = *(v23 + 745);
    *(v22 + 752) = *(v23 + 752);
    *(v22 + 760) = *(v23 + 760);
    *(v22 + 768) = *(v23 + 768);
    *(v22 + 776) = *(v23 + 776);
    v130 = *(v23 + 784);
    *(v22 + 800) = *(v23 + 800);
    *(v22 + 784) = v130;
    *(v22 + 808) = *(v23 + 808);
  }

  *(v22 + 816) = *(v23 + 816);
  *(v22 + 824) = *(v23 + 824);
  *(v22 + 832) = *(v23 + 832);

LABEL_65:
  v131 = (v22 + 840);
  v132 = (v23 + 840);
  v133 = *(v23 + 864);
  if (!v133)
  {
    v137 = *v132;
    v138 = *(v23 + 856);
    *(v22 + 872) = *(v23 + 872);
    *v131 = v137;
    *(v22 + 856) = v138;
    v139 = *(v23 + 880);
    if (!v139)
    {
LABEL_71:
      *(v22 + 880) = *(v23 + 880);
      goto LABEL_72;
    }

LABEL_69:
    v140 = *(v23 + 888);
    *(v22 + 880) = v139;
    *(v22 + 888) = v140;

    goto LABEL_72;
  }

  if (v133 != 1)
  {
    *(v22 + 864) = v133;
    *(v22 + 872) = *(v23 + 872);
    (**(v133 - 8))(v131, v132);
    v139 = *(v23 + 880);
    if (!v139)
    {
      goto LABEL_71;
    }

    goto LABEL_69;
  }

  v134 = *v132;
  v135 = *(v23 + 856);
  v136 = *(v23 + 872);
  *(v22 + 888) = *(v23 + 888);
  *(v22 + 856) = v135;
  *(v22 + 872) = v136;
  *v131 = v134;
LABEL_72:
  v141 = *(v23 + 896);
  *(v22 + 896) = v141;
  *(v22 + 904) = *(v23 + 904);
  *(v22 + 912) = *(v23 + 912);
  *(v22 + 920) = *(v23 + 920);
  *(v22 + 928) = *(v23 + 928);
  *(v22 + 936) = *(v23 + 936);
  *(v22 + 944) = *(v23 + 944);
  *(v22 + 952) = *(v23 + 952);
  *(v22 + 953) = *(v23 + 953);
  *(v22 + 954) = *(v23 + 954);
  v142 = v438[28];
  __dst = (v22 + v142);
  __src = (v23 + v142);
  v143 = type metadata accessor for CommandOperation();
  v408 = *(v143 - 8);
  v412 = *(v408 + 48);
  v144 = v141;

  if (v412(__src, 1, v143))
  {
    _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
    memcpy(__dst, __src, *(*(v145 - 8) + 64));
    a3 = v436;
    v146 = v438;
    v147 = v427;
  }

  else
  {
    *__dst = *__src;
    v148 = *(v143 + 20);
    v417 = v143;
    v149 = &__dst[v148];
    v150 = &__src[v148];
    v151 = *&__src[v148];
    v152 = *&__src[v148 + 8];
    v153 = __src[v148 + 16];
    outlined copy of Text.Storage(v151, *(v150 + 1), v150[16]);
    *v149 = v151;
    *(v149 + 1) = v152;
    v149[16] = v153;
    *(v149 + 3) = *(v150 + 3);
    v154 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
    v155 = type metadata accessor for UUID();
    v413 = *(*(v155 - 8) + 16);

    v413(&v149[v154], &v150[v154], v155);
    v156 = *(v417 + 24);
    v157 = &__dst[v156];
    v158 = &__src[v156];
    if (*v158)
    {
      v159 = v158[1];
      *v157 = *v158;
      v157[1] = v159;
    }

    else
    {
      *v157 = *v158;
    }

    a3 = v436;
    v146 = v438;
    v147 = v427;
    (*(v408 + 56))(__dst, 0, 1, v417);
  }

  *(v22 + v146[29]) = *(v23 + v146[29]);
  *(v22 + v146[30]) = *(v23 + v146[30]);
  *(v22 + v146[31]) = *(v23 + v146[31]);
  *(v22 + v146[32]) = *(v23 + v146[32]);
  *(v22 + v146[33]) = *(v23 + v146[33]);
  *(v22 + v146[34]) = *(v23 + v146[34]);
  v166 = *(v147 + 56);

  v166(v22, 0, 1, v146);
LABEL_243:
  swift_weakCopyAssign();
  *(a1 + a3[19]) = *(a2 + a3[19]);
  *(a1 + a3[20]) = *(a2 + a3[20]);
  *(a1 + a3[21]) = *(a2 + a3[21]);
  return a1;
}

uint64_t UIKitBarButtonItem.item.didset()
{
  v1 = MEMORY[0x1E69E6720];
  type metadata accessor for ToolbarStorage.Item?(0, &lazy cache variable for type metadata for ToolbarStorage.Item?, type metadata accessor for ToolbarStorage.Item, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13[-v3 - 8];
  v5 = type metadata accessor for ToolbarStorage.Item(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_item;
  swift_beginAccess();
  _s7SwiftUI16PlatformItemListV0D0VSgWOcTm_0(v0 + v9, v4, &lazy cache variable for type metadata for ToolbarStorage.Item?, type metadata accessor for ToolbarStorage.Item, v1, type metadata accessor for ToolbarStorage.Item?);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_2(v4, &lazy cache variable for type metadata for ToolbarStorage.Item?, type metadata accessor for ToolbarStorage.Item, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage.Item?);
  }

  _s7SwiftUI16PlatformItemListV0D0VWObTm_2(v4, v8, type metadata accessor for ToolbarStorage.Item);
  outlined init with copy of _ViewList_View((v8 + 184), v13);
  v11 = *(v0 + OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_edge);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v13[96] = v11;
  v13[97] = 0;
  UIKitBarButtonItem.updateHost(rootView:)(v13);
  outlined destroy of BarItemView(v13);
  return _s7SwiftUI14ToolbarStorageV9GroupItemV16CollapsedContentV5ValueOWOhTm_0(v8, type metadata accessor for ToolbarStorage.Item);
}

void UIKitBarButtonItem.updateHost(rootView:)(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for ToolbarStorage.Item?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20[-v5];
  v7 = OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_host;
  v8 = *&v2[OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_host];
  outlined init with copy of BarItemView(a1, v22);
  outlined init with copy of BarItemView(v22, v21);
  v9 = *((*MEMORY[0x1E69E7D40] & *v8) + 0x60);
  swift_beginAccess();
  v10 = v8;
  outlined assign with take of BarItemView(v21, v8 + v9);
  swift_endAccess();
  _s7SwiftUI16UIKitBarItemHostCyAA0dE4ViewVGMaTm_0(0, &lazy cache variable for type metadata for _UIHostingView<BarItemView>, lazy protocol witness table accessor for type BarItemView and conformance BarItemView, &type metadata for BarItemView, type metadata accessor for _UIHostingView);
  lazy protocol witness table accessor for type _UIHostingView<BarItemView> and conformance _UIHostingView<A>();
  ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();

  outlined destroy of BarItemView(v22);
  v11 = &v2[OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_item];
  swift_beginAccess();
  v12 = type metadata accessor for ToolbarStorage.Item(0);
  if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
  {
    v13 = v11[170];
    if (v13 >= 2)
    {
      if (v13 != 2)
      {
        goto LABEL_7;
      }

      v14 = 1;
    }

    else
    {
      v14 = 0;
    }

    [v2 _setPrefersNoPlatter_];
  }

LABEL_7:
  v15 = OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_platformItem;
  swift_beginAccess();
  v16 = MEMORY[0x1E69E6720];
  _s7SwiftUI16PlatformItemListV0D0VSgWOcTm_0(&v2[v15], v6, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage.Item?);
  v17 = type metadata accessor for PlatformItemList.Item();
  LODWORD(v15) = (*(*(v17 - 8) + 48))(v6, 1, v17);
  _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_2(v6, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, v16, type metadata accessor for ToolbarStorage.Item?);
  if (v15 != 1)
  {
    v18 = UIKitBarButtonItem.allowsBridging()();
    UIKitBarButtonItem.updateStyleAndTint(isBridged:role:buttonTint:)(v18 & 1, v18 >> 8, 0);
  }

  v19 = [*&v2[v7] window];
  if (v19)
  {
  }

  else
  {
    MEMORY[0x1EEE9AC00](0);
    *&v20[-16] = v2;
    static Update.ensure<A>(_:)();
  }
}

uint64_t assignWithCopy for BarItemView(uint64_t a1, uint64_t a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  v4 = *(a1 + 88);
  v5 = *(a2 + 88);
  *(a1 + 88) = v5;
  v6 = v5;

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 97) = *(a2 + 97);
  swift_unknownObjectWeakCopyAssign();
  return a1;
}

_BYTE *assignWithCopy for BarItemModifier(_BYTE *a1, _BYTE *a2)
{
  *a1 = *a2;
  swift_unknownObjectWeakCopyAssign();
  return a1;
}

void closure #1 in UIKitBarButtonItem.updateHost(rootView:)(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_host);
  _s7SwiftUI16UIKitBarItemHostCyAA0dE4ViewVGMaTm_0(0, &lazy cache variable for type metadata for UIKitBarItemHost<BarItemView>, lazy protocol witness table accessor for type BarItemView and conformance BarItemView, &type metadata for BarItemView, type metadata accessor for UIKitBarItemHost);
  lazy protocol witness table accessor for type UIKitBarItemHost<BarItemView> and conformance _UIHostingView<A>();
  v2 = v1;
  ViewGraphRootValueUpdater.render(interval:updateDisplayList:targetTimestamp:)();
}

uint64_t outlined init with copy of PopoverPresentation?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for PopoverPresentation?(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined assign with copy of PopoverPresentation?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PopoverPresentation?(0, &lazy cache variable for type metadata for PopoverPresentation?, &type metadata for PopoverPresentation, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance PaletteSelectionEffectKey(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4 >> 8 == 4)
  {
    return (v5 & 0xFF00) == 0x400;
  }

  if (v4 >> 8 == 5)
  {
    return (v5 & 0xFF00) == 0x500;
  }

  if (((v5 >> 8) & 0xFE) == 4)
  {
    return 0;
  }

  v9 = v2;
  v10 = v3;
  v8 = v4;
  v7 = v5;
  return MEMORY[0x18D004D70](&v8, &v7) & 1;
}

uint64_t specialized ButtonDisplayList.value.getter(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = HIDWORD(a3);
  type metadata accessor for CGPoint(0);
  AGGraphGetValue();
  AGGraphGetValue();
  Value = AGGraphGetValue();
  v5 = Value[1];
  v25 = *Value;
  v26 = v5;
  MEMORY[0x18D00B390]();
  v6 = type metadata accessor for HostingUIButton();
  [*AGGraphGetValue() alignmentRectInsets];
  AGGraphGetValue();
  CGRect.outset(by:)();
  v7 = swift_allocObject();
  v8 = *AGGraphGetValue();
  v7[5] = v6;
  v7[6] = lazy protocol witness table accessor for type ArchivableFactory<ArchivableAccessibilityViewModifier> and conformance ArchivableFactory<A>(&lazy protocol witness table cache variable for type HostingUIButton and conformance UIKitButtonBase, type metadata accessor for HostingUIButton);
  v7[2] = v8;
  v9 = *MEMORY[0x1E698D3F8];
  v10 = v8;
  if (v9 == v3)
  {
    DisplayList.init()();
    v11 = v22;
    v12 = v23;
    v13 = v24;
  }

  else
  {
    v14 = AGGraphGetValue();
    v12 = *(v14 + 8);
    v13 = *(v14 + 12);
  }

  *&v18 = v7;
  *(&v18 + 1) = 0x300000000;
  *&v19 = v11;
  *(&v19 + 1) = v12 | (v13 << 32) | 0x40000000;
  DisplayList.Version.init(forUpdate:)();
  DisplayList.Item.init(_:frame:identity:version:)();
  LOBYTE(v18) = 0;
  DisplayList.Item.canonicalize(options:)();
  v16[2] = v27;
  v17[0] = v28[0];
  *(v17 + 12) = *(v28 + 12);
  v16[0] = v25;
  v16[1] = v26;
  outlined init with copy of DisplayList.Item(v16, &v18);
  DisplayList.init(_:)();
  v20 = v27;
  v21[0] = v28[0];
  *(v21 + 12) = *(v28 + 12);
  v18 = v25;
  v19 = v26;
  return outlined destroy of DisplayList.Item(&v18);
}

uint64_t sub_18C028EF4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t UpdateUIButton.updateValue()()
{
  v1 = v0;
  v17[2] = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for UIKitFlattenedButtonAdaptorStorage();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v17[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  v7 = v6;
  outlined init with copy of UIKitFlattenedButtonAdaptorStorage(Value, v4);
  AGGraphGetValue();
  if ((v7 & 1) != 0 || (v9 = v8, type metadata accessor for HostingUIButton(), !AGGraphGetOutputValue()))
  {

    v10 = 1;
    if (!*(v1 + 64))
    {
      goto LABEL_10;
    }
  }

  else if (v9)
  {

    swift_retain_n();
    v10 = PropertyList.Tracker.hasDifferentUsedValues(_:)();

    if (!*(v1 + 64))
    {
      goto LABEL_10;
    }
  }

  else
  {

    v10 = 0;
    if (!*(v1 + 64))
    {
LABEL_10:
      v11 = *(v4 + 1);
      v12 = *(v4 + 2);
      objc_allocWithZone(type metadata accessor for UIKitButtonAdaptorCoordinator());
      outlined copy of AppIntentExecutor?(v11);
      v13 = UIKitButtonAdaptorCoordinator.init(action:)(v11, v12);

      *(v1 + 72) = v13;
      updated = UpdateUIButton.makeButton()();
      *(v1 + 64) = updated;
      v17[0] = updated;
      type metadata accessor for HostingUIButton();
      AGGraphSetOutputValue();
      if ((v10 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }
  }

  if ((v10 & 1) == 0)
  {
LABEL_11:
    outlined destroy of UIKitFlattenedButtonAdaptorStorage(v4, type metadata accessor for UIKitFlattenedButtonAdaptorStorage);
  }

LABEL_8:
  PropertyList.Tracker.reset()();

  EnvironmentValues.init(_:tracker:)();
  UpdateUIButton.updateButton(environment:)(v17);

  outlined destroy of UIKitFlattenedButtonAdaptorStorage(v4, type metadata accessor for UIKitFlattenedButtonAdaptorStorage);
}

uint64_t outlined init with copy of UIKitFlattenedButtonAdaptorStorage(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UIKitFlattenedButtonAdaptorStorage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t initializeWithCopy for UIKitFlattenedButtonAdaptorStorage(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = *(a2 + 16);
    *(a1 + 8) = v6;
    *(a1 + 16) = v7;
  }

  else
  {
    *(a1 + 8) = *(a2 + 8);
  }

  v8 = *(a2 + 56);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 37) = *(a2 + 37);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  if (v8)
  {
    v9 = *(a2 + 64);
    *(a1 + 56) = v8;
    *(a1 + 64) = v9;
  }

  else
  {
    *(a1 + 56) = *(a2 + 56);
  }

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  v10 = a3[7];
  v11 = type metadata accessor for UIButton.Configuration();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(a2 + v10, 1, v11))
  {
    _sSo8UIButtonC5UIKitE13ConfigurationVSgMaTm_0(0, &lazy cache variable for type metadata for UIButton.Configuration?, MEMORY[0x1E69DC598], MEMORY[0x1E69E6720]);
    memcpy((a1 + v10), (a2 + v10), *(*(v13 - 8) + 64));
  }

  else
  {
    (*(v12 + 16))(a1 + v10, a2 + v10, v11);
    (*(v12 + 56))(a1 + v10, 0, 1, v11);
  }

  v14 = a3[8];
  v15 = a1 + v14;
  v16 = a2 + v14;
  v17 = *(v16 + 8);
  if (v17)
  {
    *v15 = *v16;
    *(v15 + 8) = v17;
    *(v15 + 16) = *(v16 + 16);
  }

  else
  {
    *v15 = *v16;
    *(v15 + 16) = *(v16 + 16);
  }

  v18 = a3[9];
  v19 = a1 + v18;
  v20 = a2 + v18;
  v21 = *(v20 + 8);
  if (v21)
  {
    *v19 = *v20;
    *(v19 + 8) = v21;
    *(v19 + 16) = *(v20 + 16);
  }

  else
  {
    *v19 = *v20;
    *(v19 + 16) = *(v20 + 16);
  }

  return a1;
}

id UIKitButtonAdaptorCoordinator.init(action:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_action];
  *v6 = 0;
  v6[1] = 0;
  v7 = &v2[OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_menuAttribute];
  *v7 = 0;
  v7[8] = 1;
  v8 = &v2[OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_menuTitle];
  *v8 = 0;
  v8[1] = 0;
  v9 = &v2[OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_onMenuPresentationChanged];
  *v9 = 0;
  v9[1] = 0;
  v2[OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_menuControlGroupSize] = 2;
  *&v2[OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_effectiveLabelStyle] = 0;
  *&v2[OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_menuChangeDetector] = 0;
  *&v2[OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_sheetBridgeToken] = 0;
  *&v2[OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_popoverBridgeToken] = 0;
  *v6 = a1;
  v6[1] = a2;
  v11.receiver = v2;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t UpdateUIButton.makeButton()()
{
  _sSo8UIButtonC5UIKitE13ConfigurationVSgMaTm_0(0, &lazy cache variable for type metadata for UIButton.Configuration?, MEMORY[0x1E69DC598], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v28 - v5;
  v7 = type metadata accessor for UIButton.Configuration();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  AGGraphClearUpdate();
  Value = AGGraphGetValue();
  v15 = *Value;
  v16 = Value[1];

  AGGraphSetUpdate();
  v29 = v15;
  v30 = v16;
  v31 = v15;
  v32 = v16;
  UpdateUIButton.constants(environment:)(&v31, v33);
  v28 = UIKitButtonAdaptorConstants.resolvedOptions.getter();
  v17 = type metadata accessor for UIKitFlattenedButtonAdaptorStorage();
  v18 = AGGraphGetValue();
  outlined init with copy of UIButton.Configuration?(v18 + *(v17 + 28), v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of UIButton.Configuration?(v6);
    type metadata accessor for HostingUIButton();
    v19 = *(AGGraphGetValue() + 96);
    v20 = [swift_getObjCClassFromMetadata() buttonWithType_];
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    type metadata accessor for HostingUIButton();
    (*(v8 + 16))(v10, v13, v7);
    v20 = UIButton.init(configuration:primaryAction:)();
    (*(v8 + 8))(v13, v7);
  }

  swift_unknownObjectWeakLoadStrong();
  *&v20[OBJC_IVAR____TtC7SwiftUI15HostingUIButton_host + 8] = *(v0 + 48);
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  v22 = v29;
  if ((v28 & 8) != 0)
  {
    LODWORD(v21) = 1132068864;
    [v20 setContentCompressionResistancePriority:0 forAxis:v21];
    v31 = v22;
    v32 = v30;
    v23 = v20;
    EnvironmentValues.hasGlassEffect.getter();
    UIKitButtonAdaptorConstants.resolvedConfiguration(hasGlassEffect:)();
    (*(v8 + 56))(v3, 0, 1, v7);
    UIButton.configuration.setter();
  }

  AGGraphGetValue();
  if ((Axis.Set.contains(_:)() & 1) == 0)
  {
    LODWORD(v24) = 1144750080;
    [v20 setContentHuggingPriority:0 forAxis:v24];
  }

  AGGraphGetValue();
  result = Axis.Set.contains(_:)();
  if ((result & 1) == 0)
  {
    LODWORD(v26) = 1144750080;
    result = [v20 setContentHuggingPriority:1 forAxis:v26];
  }

  v27 = *(v0 + 72);
  if (v27)
  {
    [v20 addTarget:v27 action:sel_primaryActionTriggered_ forControlEvents:0x2000];

    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 UpdateUIButton.constants(environment:)@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  type metadata accessor for UIKitFlattenedButtonAdaptorStorage();
  v6 = *(AGGraphGetValue() + 88);
  v7 = MEMORY[0x18D0064D0]();
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuIndicatorVisibilityKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<MenuIndicatorVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuIndicatorVisibilityKey>);
  if (v5)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  v8 = EnvironmentValues.isHoverEffectEnabled.getter();
  a2->n128_u64[0] = v6;
  a2->n128_u8[8] = v7 & 1;
  a2->n128_u8[9] = v4;
  result = v2[1];
  a2[1] = result;
  a2[2].n128_u8[0] = v8 & 1;
  return result;
}

uint64_t UIKitButtonAdaptorConstants.resolvedOptions.getter()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle();
  if (v2 == &type metadata for PlainButtonStyle)
  {
    if ((v1 & 2) != 0)
    {
      goto LABEL_8;
    }

LABEL_7:
    v1 |= 2uLL;
    goto LABEL_8;
  }

  lazy protocol witness table accessor for type AnyButtonStyleType.Unknown and conformance AnyButtonStyleType.Unknown();
  if (v2 == &type metadata for AnyButtonStyleType.Unknown && (v1 & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_8:
  lazy protocol witness table accessor for type BorderedButtonStyle and conformance BorderedButtonStyle();
  if (v2 == &type metadata for BorderedButtonStyle)
  {
    v4 = v1 | 4;
  }

  else
  {
    v4 = v1;
  }

  if (*(v0 + 32))
  {
    return v4 | 0x400;
  }

  else
  {
    return v4;
  }
}

void UpdateUIButton.updateButton(environment:)(uint64_t *a1)
{
  v3 = type metadata accessor for PlatformItemList.Item();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v86[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for UIKitFlattenedButtonAdaptorStorage();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v86[-v11];
  v13 = *(v1 + 64);
  if (v13)
  {
    v14 = *(v1 + 72);
    if (v14)
    {
      v91 = v10;
      v92 = v9;
      v88 = v5;
      v15 = *a1;
      v16 = a1[1];
      v17 = v14;
      v18 = v13;
      v90 = v6;
      Value = AGGraphGetValue();
      outlined init with copy of UIKitFlattenedButtonAdaptorStorage(Value, v12);
      v98 = v15;
      v99 = v16;
      v93 = v1;
      UpdateUIButton.constants(environment:)(&v98, v102);
      v20 = UIKitButtonAdaptorConstants.resolvedOptions.getter();
      v21 = *(v12 + 1);
      v22 = *(v12 + 2);
      v96 = v17;
      v23 = &v17[OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_action];
      v24 = v18;
      v25 = *v23;
      *v23 = v21;
      v23[1] = v22;
      v89 = v21;
      outlined copy of AppIntentExecutor?(v21);
      outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v25);
      v98 = v15;
      v99 = v16;
      UIView.adoptEnvironment(_:hostedSubview:)(&v98, v18);
      v97 = v15;
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuOrderKey>);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<MenuOrderKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuOrderKey>);
      v26 = v18;
      if (v16)
      {

        PropertyList.Tracker.value<A>(_:for:)();
      }

      else
      {
        PropertyList.subscript.getter();
      }

      [v18 setPreferredMenuElementOrder_];
      if ((~v20 & 0x28) == 0)
      {
        v98 = v97;
        v99 = v16;
        v27 = EnvironmentValues.tintColor.getter();
        if (!v27)
        {
          v27 = static Color.secondary.getter();
        }

        v28 = v27;
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor);
        v29 = UIColor.init(_:)(v28);
        [v18 setTintColor_];
      }

      v94 = v20;
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonKeyboardShortcutKey>);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ButtonKeyboardShortcutKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonKeyboardShortcutKey>);
      if (v16)
      {

        PropertyList.Tracker.value<A>(_:for:)();
      }

      else
      {
        PropertyList.subscript.getter();
      }

      v31 = v98;
      v30 = v99;
      v32 = v100;
      v33 = v101;
      if (one-time initialization token for defaultAction != -1)
      {
        swift_once();
      }

      if (v30)
      {
        if (qword_1ED57A6B8)
        {
          v95 = v12;
          v34 = v96;
          v35 = qword_1ED57A6C0;
          v87 = byte_1ED57A6C8;
          if (v31 == static KeyboardShortcut.defaultAction && v30 == qword_1ED57A6B8 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v32 == v35)
          {

            v36 = v34;
            v12 = v95;
            if (v33 == v87)
            {
              v37 = 1;
              goto LABEL_35;
            }
          }

          else
          {

            swift_bridgeObjectRelease_n();
            v36 = v34;
            v12 = v95;
          }

          goto LABEL_27;
        }
      }

      else
      {
        if (!qword_1ED57A6B8)
        {

          v37 = 1;
          v36 = v96;
          goto LABEL_35;
        }
      }

      v36 = v96;

LABEL_27:
      v38 = *v12;
      if (v38 == 4)
      {
        v37 = 0;
      }

      else
      {
        v39 = 3;
        if (*v12)
        {
          v39 = 0;
        }

        if (v38 == 1)
        {
          v37 = 2;
        }

        else
        {
          v37 = v39;
        }
      }

LABEL_35:
      [v24 setRole_];
      v40 = v12[36];
      v41 = &v36[OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_menuAttribute];
      *v41 = *(v12 + 28);
      LODWORD(v95) = v40;
      v41[8] = v40;
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuControlGroupSizeKey>);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<MenuControlGroupSizeKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuControlGroupSizeKey>);
      if (v16)
      {

        PropertyList.Tracker.value<A>(_:for:)();

        v36[OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_menuControlGroupSize] = v98;
        type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EffectiveLabelStyleKey>);
        lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EffectiveLabelStyleKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EffectiveLabelStyleKey>);

        PropertyList.Tracker.value<A>(_:for:)();
      }

      else
      {
        PropertyList.subscript.getter();
        v36[OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_menuControlGroupSize] = v98;
        type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EffectiveLabelStyleKey>);
        lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EffectiveLabelStyleKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EffectiveLabelStyleKey>);
        PropertyList.subscript.getter();
      }

      *&v36[OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_effectiveLabelStyle] = v98;
      *&v24[OBJC_IVAR____TtC7SwiftUI15UIKitButtonBase_delegate + 8] = &protocol witness table for UIKitButtonAdaptorCoordinator;
      swift_unknownObjectWeakAssign();
      v42 = &v12[*(v90 + 32)];
      v43 = *v42;
      v44 = *(v42 + 1);
      v45 = &v24[OBJC_IVAR____TtC7SwiftUI15HostingUIButton_isPressed];
      v46 = *&v24[OBJC_IVAR____TtC7SwiftUI15HostingUIButton_isPressed];
      v47 = *&v24[OBJC_IVAR____TtC7SwiftUI15HostingUIButton_isPressed + 8];
      v48 = v42[16];
      *v45 = *v42;
      *(v45 + 1) = v44;
      v49 = v12;
      v50 = v36;
      v45[16] = v48;
      outlined copy of Binding<Int>?(v43, v44);
      outlined consume of Binding<NavigationSplitViewColumn>?(v46, v47);
      v51 = *(v49 + 56);
      v52 = *(v49 + 64);
      v53 = v49;
      v54 = v92;
      outlined init with copy of UIKitFlattenedButtonAdaptorStorage(v49, v92);
      v55 = (*(v91 + 80) + 16) & ~*(v91 + 80);
      v56 = (v7 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
      v57 = swift_allocObject();
      outlined init with take of UIKitFlattenedButtonAdaptorStorage(v54, v57 + v55);
      v58 = (v57 + v56);
      *v58 = v51;
      v58[1] = v52;
      v59 = &v50[OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_onMenuPresentationChanged];
      v60 = *&v50[OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_onMenuPresentationChanged];
      *v59 = partial apply for closure #1 in UpdateUIButton.updateButton(environment:);
      v59[1] = v57;
      outlined copy of AppIntentExecutor?(v51);
      outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v60);
      v61 = (v89 == 0) & ~v95;
      v62 = v24;
      if (v61 != [v62 showsMenuAsPrimaryAction])
      {
        [v62 setShowsMenuAsPrimaryAction_];
      }

      v63 = v93;
      *&v62[OBJC_IVAR____TtC7SwiftUI15HostingUIButton_childLayoutComputer] = AGCreateWeakAttribute();
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_disableMenuSourcePresentation>);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_disableMenuSourcePresentation> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_disableMenuSourcePresentation>);
      if (v16)
      {

        PropertyList.Tracker.value<A>(_:for:)();
      }

      else
      {
        PropertyList.subscript.getter();
      }

      v64 = v53;
      [v62 setShowsMenuFromSource_];
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuOrderKey>);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<MenuOrderKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuOrderKey>);
      if (v16)
      {

        PropertyList.Tracker.value<A>(_:for:)();
      }

      else
      {
        PropertyList.subscript.getter();
      }

      [v62 setPreferredMenuElementOrder_];
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ToolbarButtonHoverShapeKey>);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ToolbarButtonHoverShapeKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ToolbarButtonHoverShapeKey>);
      if (v16)
      {

        PropertyList.Tracker.value<A>(_:for:)();
      }

      else
      {
        PropertyList.subscript.getter();
      }

      v65 = v98 | (BYTE2(v98) << 16);
      if ((v98 & 0xFF00) != 0x200)
      {
        v66 = swift_allocObject();
        v66[16] = v65;
        v66[17] = BYTE1(v65) & 1;
        v66[18] = BYTE2(v65) & 1;
      }

      UIButton.pointerStyleProvider.setter();
      if (*(v63 + 32) == 1)
      {
        type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SpringLoadingBehavior.Key>);
        lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SpringLoadingBehavior.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SpringLoadingBehavior.Key>);
        if (v16)
        {

          PropertyList.Tracker.value<A>(_:for:)();
        }

        else
        {
          PropertyList.subscript.getter();
        }

        [v62 setSpringLoaded_];
      }

      if (v95)
      {
        goto LABEL_68;
      }

      v67 = *MEMORY[0x1E698D3F8];
      if (v94)
      {
        AGGraphClearUpdate();
        if (*(v63 + 60) == v67)
        {
          v69 = 0;
          v70 = 0;
        }

        else
        {
          AGGraphGetValue();

          v72 = v88;
          PlatformItemList.mergedContentItem.getter(v71, v88);

          v73 = v72[112];
          if (v73 || (v73 = *v72) != 0)
          {
            v74 = [v73 string];
            v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v70 = v75;
          }

          else
          {
            v69 = 0;
            v70 = 0;
          }

          outlined destroy of UIKitFlattenedButtonAdaptorStorage(v72, type metadata accessor for PlatformItemList.Item);
        }

        AGGraphSetUpdate();
        v76 = &v96[OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_menuTitle];
        *v76 = v69;
        v76[1] = v70;
      }

      else
      {
        v68 = &v96[OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_menuTitle];
        *v68 = 0;
        *(v68 + 1) = 0;
      }

      v77 = [v62 menu];
      if (v77)
      {

LABEL_68:
        v78 = v96;
LABEL_69:
        [v62 setSelected_];

        outlined destroy of UIKitFlattenedButtonAdaptorStorage(v64, type metadata accessor for UIKitFlattenedButtonAdaptorStorage);
        return;
      }

      if ((v94 & 0x80) != 0)
      {
        UIKitButtonAdaptorCoordinator.makeMenu()(v94);
        v80 = v79;
        [v62 setMenu_];
        if (!v80)
        {
LABEL_78:
          [v62 setChangesSelectionAsPrimaryAction_];

          v78 = v96;
          [v62 addTarget:v96 action:sel_menuActionTriggered_ forControlEvents:0x4000];
          goto LABEL_69;
        }

        if ((*(v64 + 48) & 1) == 0)
        {
          Attribute = AGWeakAttributeGetAttribute();
          if (Attribute != v67)
          {
            MEMORY[0x1EEE9AC00](Attribute);
            MEMORY[0x1EEE9AC00](v82);
            AGGraphMutateAttribute();

            goto LABEL_78;
          }
        }
      }

      else
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenu);
        v83._countAndFlagsBits = 0;
        v83._object = 0xE000000000000000;
        v103.value.super.isa = 0;
        v103.is_nil = 0;
        UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(MEMORY[0x1E69E7CC0], v83, 0, v103, 0, 0xFFFFFFFFFFFFFFFFLL, MEMORY[0x1E69E7CC0], v85);
        v80 = v84;
        [v62 setMenu_];
      }

      goto LABEL_78;
    }
  }
}

uint64_t sub_18C02ACDC()
{
  v1 = type metadata accessor for UIKitFlattenedButtonAdaptorStorage();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = v0 + v2;
  if (*(v0 + v2 + 8))
  {
  }

  if (*(v4 + 56))
  {
  }

  v5 = v3 + v2;
  v6 = v1[7];
  v7 = type metadata accessor for UIButton.Configuration();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v4 + v6, 1, v7))
  {
    (*(v8 + 8))(v4 + v6, v7);
  }

  if (*(v4 + v1[8] + 8))
  {
  }

  if (*(v4 + v1[9] + 8))
  {
  }

  if (*(v0 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8)))
  {
  }

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<MenuControlGroupSizeKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<MenuControlGroupSizeKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<MenuControlGroupSizeKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<MenuControlGroupSizeKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuControlGroupSizeKey>, &type metadata for MenuControlGroupSizeKey, &protocol witness table for MenuControlGroupSizeKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<MenuControlGroupSizeKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for EnvironmentPropertyKey<MenuControlGroupSizeKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EffectiveLabelStyleKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EffectiveLabelStyleKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EffectiveLabelStyleKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EffectiveLabelStyleKey>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EffectiveLabelStyleKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t outlined init with take of UIKitFlattenedButtonAdaptorStorage(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UIKitFlattenedButtonAdaptorStorage();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t destroy for UIKitFlattenedButtonAdaptorStorage(uint64_t a1, int *a2)
{
  if (*(a1 + 8))
  {
  }

  if (*(a1 + 56))
  {
  }

  v4 = a2[7];
  v5 = type metadata accessor for UIButton.Configuration();
  v6 = *(v5 - 8);
  result = (*(v6 + 48))(a1 + v4, 1, v5);
  if (!result)
  {
    result = (*(v6 + 8))(a1 + v4, v5);
  }

  if (*(a1 + a2[8] + 8))
  {
  }

  if (*(a1 + a2[9] + 8))
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UIKitButtonBase and conformance UIKitButtonBase()
{
  result = lazy protocol witness table cache variable for type UIKitButtonBase and conformance UIKitButtonBase;
  if (!lazy protocol witness table cache variable for type UIKitButtonBase and conformance UIKitButtonBase)
  {
    type metadata accessor for UIKitButtonBase();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIKitButtonBase and conformance UIKitButtonBase);
  }

  return result;
}

uint64_t partial apply for closure #1 in static ScrollViewUtilities.animationOffset(target:bounds:contentSize:contentInsets:layoutDirection:)()
{
  return closure #1 in static ScrollViewUtilities.animationOffset(target:bounds:contentSize:contentInsets:layoutDirection:)(*(v0 + 96), *(v0 + 104), *(v0 + 112));
}

{
  return partial apply for closure #1 in static ScrollViewUtilities.animationOffset(target:bounds:contentSize:contentInsets:layoutDirection:)();
}

uint64_t closure #1 in static ScrollViewUtilities.animationOffset(target:bounds:contentSize:contentInsets:layoutDirection:)(uint64_t (*a1)(_BYTE *, char *), uint64_t a2, char a3)
{
  ScrollGeometry.init(contentOffset:contentSize:contentInsets:containerSize:)();
  v7 = a3 & 1;
  return a1(v6, &v7);
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue);
  }

  return result;
}

id protocol witness for PlatformGroupFactory.platformGroupContainer(_:) in conformance UIKitButtonBase()
{
  v1 = [*v0 _effectiveContentView];

  return v1;
}

id outlined copy of OpenURLOptions?(id result, char a2)
{
  if (a2 != -1)
  {
    return result;
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance CaptureViewRespondersModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
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

uint64_t _s7SwiftUI19UIViewRepresentablePAAE9_makeView4view6inputsAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVtFZAA6Switch33_1246D37251EA3A918B392E2B95F8B7EFLLV_Tt2B5()
{
  static Semantics.v4.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) != 0 && (AGTypeID.isValueType.getter() & 1) == 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    type metadata accessor for PlatformViewRepresentableAdaptor<UIKitPasteControl>(0, &lazy cache variable for type metadata for PlatformViewRepresentableAdaptor<Switch>);
    Attribute.unsafeBitCast<A>(to:)();
    return static View.makeDebuggableView(view:inputs:)();
  }

  return result;
}

uint64_t protocol witness for ModifierKeySource.current.getter in conformance DefaultModifierKeySource()
{
  if (one-time initialization token for monitor != -1)
  {
    swift_once();
  }

  return *(static DefaultModifierKeySource.monitor + 24);
}

unint64_t one-time initialization function for monitor()
{
  type metadata accessor for ModifierKeyMonitor();
  v0 = swift_allocObject();
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_y7SwiftUI14EventModifiersVcTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = result;
  *(v0 + 24) = 0;
  static DefaultModifierKeySource.monitor = v0;
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_y7SwiftUI14EventModifiersVcTt0g5Tf4g_n(uint64_t a1)
{
  type metadata accessor for (CodingUserInfoKey, Sendable)(0, &lazy cache variable for type metadata for (UUID, ()), MEMORY[0x1E69695A8], type metadata accessor for ());
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    type metadata accessor for _DictionaryStorage<UUID, (_:)>();
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      outlined init with copy of (CodingUserInfoKey, Sendable)(v10, v6, &lazy cache variable for type metadata for (UUID, ()), MEMORY[0x1E69695A8], type metadata accessor for ());
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for UUID();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 16 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void type metadata accessor for (CodingUserInfoKey, Sendable)(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t EventModifiers.AsyncValues.makeAsyncIterator()@<X0>(uint64_t *a1@<X8>)
{
  outlined init with copy of _Benchmark(v1, v17);
  v3 = *(v1 + 40);
  v4 = v18;
  v5 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  (*(v5 + 24))(v14, v4, v5);
  v6 = __swift_project_boxed_opaque_existential_1(v14, v15);
  v7 = MEMORY[0x1EEE9AC00](v6);
  (*(v9 + 16))(v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  a1[3] = swift_getAssociatedTypeWitness();
  a1[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(a1);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  __swift_destroy_boxed_opaque_existential_1(v14);
  if (one-time initialization token for _modifierKeySource != -1)
  {
    swift_once();
  }

  outlined init with copy of _Benchmark(&static EventModifiers._modifierKeySource, v14);
  v10 = v15;
  v11 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v12 = (*(v11 + 16))(v10, v11);
  __swift_destroy_boxed_opaque_existential_1(v14);
  a1[5] = v12 & v3;
  a1[6] = v3;
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

id protocol witness for UIViewRepresentable.makeCoordinator() in conformance Switch@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  v6 = type metadata accessor for PlatformSwitchCoordinator();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtC7SwiftUIP33_1246D37251EA3A918B392E2B95F8B7EF25PlatformSwitchCoordinator__toggleState];
  *v8 = v3;
  *(v8 + 1) = v4;
  v8[16] = v5;
  v10.receiver = v7;
  v10.super_class = v6;

  result = objc_msgSendSuper2(&v10, sel_init);
  *a1 = result;
  return result;
}

uint64_t protocol witness for ModifierKeySource.values.getter in conformance DefaultModifierKeySource@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AsyncStream<EventModifiers>.Continuation.BufferingPolicy(0, &lazy cache variable for type metadata for AsyncStream<EventModifiers>.Continuation.BufferingPolicy, MEMORY[0x1E69E8658]);
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 104))(&v8 - v4, *MEMORY[0x1E69E8650], v3);
  type metadata accessor for AsyncStream<EventModifiers>.Continuation.BufferingPolicy(0, &lazy cache variable for type metadata for AsyncStream<EventModifiers>, MEMORY[0x1E69E8698]);
  a1[3] = v6;
  a1[4] = lazy protocol witness table accessor for type AsyncStream<EventModifiers> and conformance AsyncStream<A>();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return AsyncStream.init(_:bufferingPolicy:_:)();
}

id protocol witness for UIViewRepresentable.makeUIView(context:) in conformance Switch(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCFD0]) init];
  [v2 addTarget:v1 action:sel_toggleStateChanged_ forControlEvents:4096];
  return v2;
}

void type metadata accessor for AsyncStream<EventModifiers>.Continuation.BufferingPolicy(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E697E360]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AsyncStream<EventModifiers> and conformance AsyncStream<A>()
{
  result = lazy protocol witness table cache variable for type AsyncStream<EventModifiers> and conformance AsyncStream<A>;
  if (!lazy protocol witness table cache variable for type AsyncStream<EventModifiers> and conformance AsyncStream<A>)
  {
    type metadata accessor for AsyncStream<EventModifiers>.Continuation.BufferingPolicy(255, &lazy cache variable for type metadata for AsyncStream<EventModifiers>, MEMORY[0x1E69E8698]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AsyncStream<EventModifiers> and conformance AsyncStream<A>);
  }

  return result;
}

uint64_t Switch.updateUIView(_:context:)(void *a1, __int128 *a2)
{
  v5 = a2[1];
  v38 = *a2;
  v39 = v5;
  v40 = a2[2];
  v6 = v2[1];
  v35 = *v2;
  v36 = v6;
  v37 = v2[2];
  LOBYTE(v27) = 17;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = v2[1];
  *(v7 + 24) = *v2;
  *(v7 + 40) = v8;
  *(v7 + 56) = v2[2];
  v9 = a2[1];
  *(v7 + 72) = *a2;
  *(v7 + 88) = v9;
  *(v7 + 104) = a2[2];
  v10 = a1;
  outlined init with copy of Switch(&v35, &v32);
  outlined init with copy of UIViewRepresentableContext<Switch>(&v38, &v32, &lazy cache variable for type metadata for UIViewRepresentableContext<Switch>, &protocol witness table for Switch, type metadata accessor for UIViewRepresentableContext, type metadata accessor for ModifiedContent<Switch, _FixedSizeLayout>);
  static Update.enqueueAction(reason:_:)();

  [v10 setPreferredStyle_];
  v11 = *(&v36 + 1);
  if (*(&v36 + 1))
  {
    v32 = v38;
    v33 = v39;
    v34 = v40;
    RepresentableContextValues.environment.getter();
    v32 = v27;
    dispatch thunk of AnyColorBox.resolve(in:)();

    Color.Resolved.kitColor.getter();
    objc_opt_self();
    v11 = swift_dynamicCastObjCClassUnconditional();
  }

  v12 = [v10 onTintColor];
  v13 = v12;
  if (!v11)
  {
    if (!v12)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (!v12 || (type metadata accessor for UIColor(), v14 = v11, v15 = static NSObject.== infix(_:_:)(), v14, v13, (v15 & 1) == 0))
  {
LABEL_9:
    [v10 setOnTintColor_];
  }

LABEL_10:
  if (v37)
  {
    v30 = v37;
    v32 = v38;
    v33 = v39;
    v34 = v40;
    v28 = v39;
    LOBYTE(v29) = v40;

    RepresentableContextValues.environment.getter();
    v27 = v31;
    v16 = ShapeStyle.fallbackColor(in:level:)();

    if (v16)
    {
      v28 = v33;
      LOBYTE(v29) = v34;
      RepresentableContextValues.environment.getter();
      dispatch thunk of AnyColorBox.resolve(in:)();

      v17 = Color.Resolved.kitColor.getter();
      objc_opt_self();
      v18 = swift_dynamicCastObjCClassUnconditional();
      v19 = v17;
      v20 = [v10 thumbTintColor];
      if (v20 && (v21 = v20, type metadata accessor for UIColor(), v22 = v19, v23 = static NSObject.== infix(_:_:)(), v22, v21, (v23 & 1) != 0))
      {
      }

      else
      {
        [v10 setThumbTintColor_];
      }
    }

    else
    {
    }
  }

  LOBYTE(v28) = v36;
  v24 = v35;
  v27 = v35;
  v25 = *(&v40 + 1) + OBJC_IVAR____TtC7SwiftUIP33_1246D37251EA3A918B392E2B95F8B7EF25PlatformSwitchCoordinator__toggleState;
  *(v25 + 16) = v36;
  *v25 = v24;
  outlined init with copy of UIViewRepresentableContext<Switch>(&v27, &v31, &lazy cache variable for type metadata for Binding<ToggleState>, MEMORY[0x1E697DD58], MEMORY[0x1E6981948], _s7SwiftUI7BindingVyAA11ToggleStateOGMaTm_0);
}

uint64_t sub_18C02C3D4()
{

  outlined consume of RepresentableContextValues.EnvironmentStorage(*(v0 + 88), *(v0 + 96), *(v0 + 104));

  return swift_deallocObject();
}

uint64_t specialized closure #1 in ModifierKeySource.values.getter(uint64_t a1)
{
  type metadata accessor for AsyncStream<EventModifiers>.Continuation.BufferingPolicy(0, &lazy cache variable for type metadata for AsyncStream<EventModifiers>.Continuation, MEMORY[0x1E69E8660]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v21 = type metadata accessor for UUID();
  v7 = *(v21 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  if (one-time initialization token for monitor != -1)
  {
    swift_once();
  }

  (*(v4 + 16))(v6, a1, v3);
  v13 = *(v4 + 80);
  v20 = a1;
  v14 = (v13 + 16) & ~v13;
  v15 = swift_allocObject();
  (*(v4 + 32))(v15 + v14, v6, v3);
  ModifierKeyMonitor.addObserver(_:)(partial apply for closure #1 in closure #1 in ModifierKeySource.values.getter, v15, v12);

  v16 = v21;
  (*(v7 + 16))(v9, v12, v21);
  v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v18 = swift_allocObject();
  (*(v7 + 32))(v18 + v17, v9, v16);
  AsyncStream.Continuation.onTermination.setter();
  return (*(v7 + 8))(v12, v16);
}

uint64_t sub_18C02C734()
{
  type metadata accessor for AsyncStream<EventModifiers>.Continuation.BufferingPolicy(0, &lazy cache variable for type metadata for AsyncStream<EventModifiers>.Continuation, MEMORY[0x1E69E8660]);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_18C02C7D8()
{
  v1 = type metadata accessor for UUID();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t ModifierKeyMonitor.addObserver(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  UUID.init()();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(v4 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(partial apply for thunk for @escaping @callee_guaranteed (@unowned EventModifiers) -> (), v8, a3, isUniquelyReferenced_nonNull_native);
  *(v4 + 16) = v9;
}

uint64_t sub_18C02C924()
{

  return swift_deallocObject();
}

uint64_t initializeWithCopy for UIViewRepresentableContext(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);

  outlined copy of RepresentableContextValues.EnvironmentStorage(v5, v6, v7);
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  (*(v9 + 16))((*(v9 + 80) + 33 + a1) & ~*(v9 + 80), (*(v9 + 80) + 33 + a2) & ~*(v9 + 80), AssociatedTypeWitness);
  return a1;
}

uint64_t lazy protocol witness table accessor for type UUID and conformance UUID(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8, v10);
      lazy protocol witness table accessor for type UUID and conformance UUID(v24, v25);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

void type metadata accessor for _DictionaryStorage<UUID, (_:)>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<UUID, (_:)>)
  {
    type metadata accessor for UUID();
    type metadata accessor for (_:)();
    lazy protocol witness table accessor for type PassthroughSubject<Any, Never> and conformance PassthroughSubject<A, B>(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<UUID, (_:)>);
    }
  }
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = type metadata accessor for UUID();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

{
  v20 = &type metadata for KeyEvent;
  v21 = lazy protocol witness table accessor for type KeyEvent and conformance KeyEvent();
  v10 = swift_allocObject();
  *&v19 = v10;
  v11 = *(a4 + 80);
  *(v10 + 80) = *(a4 + 64);
  *(v10 + 96) = v11;
  *(v10 + 112) = *(a4 + 96);
  v12 = *(a4 + 16);
  *(v10 + 16) = *a4;
  *(v10 + 32) = v12;
  v13 = *(a4 + 48);
  *(v10 + 48) = *(a4 + 32);
  *(v10 + 64) = v13;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v14 = (a5[6] + 16 * a1);
  *v14 = a2;
  v14[1] = a3;
  result = outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v19, a5[7] + 40 * a1);
  v16 = a5[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v18;
  }

  return result;
}

{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = type metadata accessor for HashableCommandGroupPlacementWrapper(0);
  result = outlined init with take of HashableCommandGroupPlacementWrapper(a2, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for HashableCommandGroupPlacementWrapper);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

id closure #1 in Switch.updateUIView(_:context:)(void *a1, __int128 *a2)
{
  v6 = *a2;
  LOBYTE(v7) = *(a2 + 16);
  _s7SwiftUI7BindingVyAA11ToggleStateOGMaTm_0(0, &lazy cache variable for type metadata for Binding<ToggleState>, MEMORY[0x1E697DD58], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v8);
  v3 = v8;

  v4 = Transaction.disablesAnimations.getter();

  return [a1 setOn:v3 != 1 animated:{(v4 & 1) == 0, v6, v7}];
}

Swift::Int protocol witness for Collection.formIndex(after:) in conformance ShadowRowCollection<A>(Swift::Int *a1)
{
  result = ShadowRowCollection.index(after:)(*a1);
  *a1 = result;
  return result;
}

Swift::Int __swiftcall ShadowRowCollection.index(after:)(Swift::Int after)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of Collection.index(after:)();
  return v2;
}

uint64_t ViewTraitCollection.listSelectionIdentityValue<A>(for:respectSelectionDisabled:)@<X0>(char a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16[-v9 - 8];
  v11 = *v3;
  *&v25[0] = *v3;
  if (ViewTraitCollection.isAuxiliaryContent.getter())
  {
    return (*(*(a2 - 8) + 56))(a3, 1, 1, a2);
  }

  *&v25[0] = v11;
  v16[0] = 1;
  ViewTraitCollection.value<A>(for:defaultValue:)();
  if (v21 & 1) == 0 && (a1)
  {
    return (*(*(a2 - 8) + 56))(a3, 1, 1, a2);
  }

  *&v25[0] = v11;
  ViewTraitCollection.tag<A>(for:)();
  v13 = *(a2 - 8);
  if ((*(v13 + 48))(v10, 1, a2) != 1)
  {
    (*(v13 + 32))(a3, v10, a2);
    return (*(v13 + 56))(a3, 0, 1, a2);
  }

  (*(v8 + 8))(v10, v7);
  v20 = v11;
  memset(v16, 0, sizeof(v16));
  v17 = 1;
  v18 = 0u;
  v19 = 0u;
  ViewTraitCollection.value<A>(for:defaultValue:)();
  outlined destroy of AnyAccessibilityValue?(v16, &lazy cache variable for type metadata for NavigationLinkSelectionIdentifier?);
  if (*(&v22 + 1) == 1)
  {
    v14 = &lazy cache variable for type metadata for NavigationLinkSelectionIdentifier?;
  }

  else
  {
    v25[0] = v21;
    v25[1] = v22;
    v25[2] = v23;
    v25[3] = v24;
    outlined init with copy of AnyNavigationLinkPresentedValue?(v25, &v21);
    if (*(&v22 + 1))
    {
      AnyNavigationLinkPresentedValue.as<A>(_:)(a2, a2);
      outlined destroy of NavigationLinkSelectionIdentifier(v25);
      return outlined destroy of AnyNavigationLinkPresentedValue(&v21);
    }

    outlined destroy of NavigationLinkSelectionIdentifier(v25);
    v14 = &lazy cache variable for type metadata for AnyNavigationLinkPresentedValue?;
  }

  outlined destroy of AnyAccessibilityValue?(&v21, v14);
  return (*(v13 + 56))(a3, 1, 1, a2);
}

uint64_t SelectionManagerBox.isSelected(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v51 = a1;
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v47 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v11 = &v44 - v10;
  v50 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v48 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v44 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v44 - v18;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = (&v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23, v3, a2, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v35 = MEMORY[0x18D00D1E0](v51, *v23, v5, *(a2 + 24));

    return v35 & 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    (*(v6 + 32))(v8, v23, v5);
    v35 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v6 + 8))(v8, v5);
    return v35 & 1;
  }

  v44 = v8;
  v26 = v50;
  (*(v50 + 32))(v19, v23, v9);
  (*(v6 + 16))(v16, v51, v5);
  (*(v6 + 56))(v16, 0, 1, v5);
  v27 = v19;
  v28 = *(TupleTypeMetadata2 + 48);
  v29 = v6;
  v30 = *(v26 + 16);
  v46 = v27;
  v30(v11);
  v51 = v28;
  (v30)(&v11[v28], v16, v9);
  v45 = v29;
  v31 = v11;
  v32 = v11;
  v33 = *(v29 + 48);
  if (v33(v32, 1, v5) != 1)
  {
    (v30)(v48, v31, v9);
    v36 = v51;
    if (v33(&v31[v51], 1, v5) != 1)
    {
      v38 = v44;
      v39 = v45;
      (*(v45 + 32))(v44, &v31[v36], v5);
      v40 = v48;
      v35 = dispatch thunk of static Equatable.== infix(_:_:)();
      v41 = *(v39 + 8);
      v41(v38, v5);
      v42 = *(v50 + 8);
      v42(v16, v9);
      v42(v46, v9);
      v41(v40, v5);
      v42(v31, v9);
      return v35 & 1;
    }

    v37 = *(v50 + 8);
    v37(v16, v9);
    v37(v46, v9);
    (*(v45 + 8))(v48, v5);
    goto LABEL_10;
  }

  v34 = *(v26 + 8);
  v34(v16, v9);
  v34(v46, v9);
  if (v33(&v31[v51], 1, v5) != 1)
  {
LABEL_10:
    (*(v47 + 8))(v31, TupleTypeMetadata2);
    v35 = 0;
    return v35 & 1;
  }

  v34(v31, v9);
  v35 = 1;
  return v35 & 1;
}

void closure #1 in HostingScrollView.updateContext(_:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    MEMORY[0x1EEE9AC00](Strong);
    v2 = v1;
    static Update.ensure<A>(_:)();
  }
}

uint64_t closure #1 in closure #1 in HostingScrollView.updateContext(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (a1 + OBJC_IVAR____TtC7SwiftUI17HostingScrollView_animationTarget);
  v5 = *(a1 + OBJC_IVAR____TtC7SwiftUI17HostingScrollView_animationTarget);
  *v4 = a2;
  v4[1] = a3;
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v5);
  v6 = (a1 + OBJC_IVAR____TtC7SwiftUI17HostingScrollView_animationOffset);
  *(a1 + OBJC_IVAR____TtC7SwiftUI17HostingScrollView_animationOffset) = vdupq_n_s64(0x7FF0000000000000uLL);

  HostingScrollView.updateAnimationTarget(_:)();
  *v6 = 0;
  v6[1] = 0;
  v7 = a1 + OBJC_IVAR____TtC7SwiftUI17HostingScrollView_animationTargetConfig;
  v8 = *(a1 + OBJC_IVAR____TtC7SwiftUI17HostingScrollView_animationTargetConfig);
  if (v8 != 1)
  {
    *v7 = 1;
    *(v7 + 8) = 0;
    outlined consume of ListItemTint?(v8);
  }

  v9 = *v4;
  *v4 = 0;
  v4[1] = 0;
  return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v9);
}

uint64_t HostingScrollView.updateAnimationTarget(_:)()
{
  *&result = COERCE_DOUBLE(HostingScrollView.offset(for:)());
  if ((v3 & 1) == 0)
  {
    v4 = *&result;
    v5 = v2;
    v6 = &v0[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_animationOffset];
    if (*&result - *&v0[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_animationOffset] != 0.0 || v2 - v6[1] != 0.0)
    {
      v7 = result;
      v8 = v2;
      [v0 adjustedContentInset];
      v10 = v4 - v9;
      v12 = v5 - v11;
      if (![v0 isScrollAnimating] || (v13 = &selRef__updateScrollAnimationForChangedTargetOffset_, (objc_msgSend(v0, sel_respondsToSelector_, sel__updateScrollAnimationForChangedTargetOffset_) & 1) == 0))
      {
        v13 = &selRef_setContentOffset_;
      }

      *&result = COERCE_DOUBLE([v0 *v13]);
      *v6 = v7;
      v6[1] = v8;
    }
  }

  return result;
}

uint64_t HostingScrollView.offset(for:)()
{
  ObjectType = swift_getObjectType();
  [v0 adjustedContentInset];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [v0 contentOffset];
  v54.receiver = v0;
  v54.super_class = ObjectType;
  objc_msgSendSuper2(&v54, sel_bounds);
  if (v10 - (v5 + v9) < 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v10 - (v5 + v9);
  }

  if (v11 - (v3 + v7) < 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v11 - (v3 + v7);
  }

  v14 = [v0 contentSize];
  if (v12 == 0.0 && v13 == 0.0)
  {
    return 0;
  }

  if (v15 == 0.0 && v16 == 0.0)
  {
    return 0;
  }

  v17 = MEMORY[0x1EEE9AC00](v14);
  v48 = v18;
  v49 = v19;
  v50 = v17;
  v51 = v20;
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for ScrollTarget?);
  static Update.ensure<A>(_:)();
  if (v53)
  {
    return 0;
  }

  ScrollTarget.rect.getter();
  v26 = v22;
  v27 = v23;
  v28 = v24;
  if (v52)
  {
    v29 = v48;
    v30 = v49;
    v55.origin.x = v49;
    v55.origin.y = v48;
    v55.size.width = v12;
    v31 = v25;
    v55.size.height = v13;
    v32 = v26;
    v33 = v27;
    v46 = v28;
    v47 = v31;
    if (!CGRectContainsRect(v55, *(&v28 - 2)))
    {
      v56.origin.x = v26;
      v56.origin.y = v27;
      v56.size.height = v47;
      v56.size.width = v46;
      MaxX = CGRectGetMaxX(v56);
      v57.origin.x = v49;
      v57.origin.y = v48;
      v57.size.width = v12;
      v57.size.height = v13;
      if (CGRectGetMaxX(v57) <= MaxX)
      {
        v62.origin.x = v26;
        v62.origin.y = v27;
        v62.size.width = v46;
        v62.size.height = v47;
        CGRectGetMaxX(v62);
        v63.origin.x = v49;
        v63.origin.y = v48;
        v63.size.width = v12;
        v63.size.height = v13;
        CGRectGetWidth(v63);
      }

      else
      {
        v58.origin.x = v26;
        v58.origin.y = v27;
        v58.size.width = v46;
        v58.size.height = v47;
        MinX = CGRectGetMinX(v58);
        v59.origin.x = v49;
        v59.origin.y = v48;
        v59.size.width = v12;
        v59.size.height = v13;
        if (MinX < CGRectGetMinX(v59))
        {
          v60.origin.x = v26;
          v60.origin.y = v27;
          v60.size.width = v46;
          v60.size.height = v47;
          CGRectGetMinX(v60);
        }
      }

      v64.size.width = v46;
      v64.origin.x = v26;
      v64.origin.y = v27;
      v64.size.height = v47;
      MaxY = CGRectGetMaxY(v64);
      v65.origin.x = v49;
      v65.origin.y = v48;
      v65.size.width = v12;
      v65.size.height = v13;
      if (CGRectGetMaxY(v65) <= MaxY)
      {
        v69.origin.x = v26;
        v69.origin.y = v27;
        v69.size.width = v46;
        v69.size.height = v47;
        CGRectGetMaxY(v69);
        v70.origin.x = v49;
        v70.origin.y = v48;
        v70.size.width = v12;
        v70.size.height = v13;
        CGRectGetHeight(v70);
      }

      else
      {
        v66.origin.x = v26;
        v66.origin.y = v27;
        v66.size.width = v46;
        v66.size.height = v47;
        MinY = CGRectGetMinY(v66);
        v67.origin.x = v49;
        v67.origin.y = v48;
        v67.size.width = v12;
        v67.size.height = v13;
        if (MinY < CGRectGetMinY(v67))
        {
          v68.origin.x = v26;
          v68.origin.y = v27;
          v68.size.width = v46;
          v68.size.height = v47;
          CGRectGetMinY(v68);
        }
      }
    }
  }

  else
  {
    UnitPoint.in(_:)(*&v22);
    UnitPoint.in(_:)(__PAIR128__(*&v13, *&v12));
    v29 = v48;
    v30 = v49;
  }

  v61.origin.x = v30;
  v61.origin.y = v29;
  v61.size.width = v12;
  v61.size.height = v13;
  v36 = v50 - CGRectGetWidth(v61);
  v37 = v29;
  if (v36 > 0.0)
  {
    v38 = v36;
  }

  else
  {
    v38 = 0.0;
  }

  v39 = v30;
  v40 = v12;
  v41 = v13;
  v42 = v51 - CGRectGetHeight(*(&v37 - 1));
  if (v42 > 0.0)
  {
    v43 = v42;
  }

  else
  {
    v43 = 0.0;
  }

  return *&CGPoint.clamp(min:max:)(0, __PAIR128__(*&v43, *&v38));
}

uint64_t assignWithCopy for GridRow(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *a1 = v4;
  v5 = *(*(a3 + 16) - 8);
  (*(v5 + 24))((*(v5 + 80) + 9 + a1) & ~*(v5 + 80), (a2 + *(v5 + 80) + 9) & ~*(v5 + 80));
  return a1;
}

void *assignWithCopy for Picker(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(*(a3 + 16) - 8);
  v7 = v6 + 24;
  v8 = *(v6 + 80);
  v9 = (a1 + v8 + 8) & ~v8;
  v10 = (a2 + v8 + 8) & ~v8;
  (*(v6 + 24))(v9, v10);
  v11 = *(v7 + 40);
  v12 = *(*(a3 + 32) - 8);
  v13 = v12 + 24;
  v14 = *(v12 + 80);
  v15 = v11 + v14;
  v16 = (v15 + v9) & ~v14;
  v17 = (v15 + v10) & ~v14;
  (*(v12 + 24))(v16, v17);
  *((*(v13 + 40) + 7 + v16) & 0xFFFFFFFFFFFFFFF8) = *((*(v13 + 40) + 7 + v17) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t assignWithCopy for PopoverAttachmentAnchor(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of Environment<CGFloat?>.Content(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  outlined consume of Environment<CGFloat?>.Content(v6, v7, v8);
  return a1;
}

void *assignWithCopy for MenuStyleConfiguration(void *a1, void *a2)
{
  v4 = *a2;
  if (*a1)
  {
    if (v4)
    {
      v5 = a2[1];
      *a1 = v4;
      a1[1] = v5;

      goto LABEL_8;
    }
  }

  else if (v4)
  {
    v6 = a2[1];
    *a1 = v4;
    a1[1] = v6;

    goto LABEL_8;
  }

  *a1 = *a2;
LABEL_8:
  v7 = a2[2];
  if (!a1[2])
  {
    if (v7)
    {
      v9 = a2[3];
      a1[2] = v7;
      a1[3] = v9;

      return a1;
    }

LABEL_14:
    *(a1 + 1) = *(a2 + 1);
    return a1;
  }

  if (!v7)
  {

    goto LABEL_14;
  }

  v8 = a2[3];
  a1[2] = v7;
  a1[3] = v8;

  return a1;
}

uint64_t assignWithCopy for PlatformItemListMenuStyle(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of Environment<Bool>.Content(v4, v5);
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  outlined consume of Environment<Bool>.Content(v6, v7);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  outlined copy of Environment<Color?>.Content(v8, v9);
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  outlined consume of Environment<Color?>.Content(v10, v11);
  return a1;
}

void *assignWithCopy for WheelPicker(void *a1, void *a2, uint64_t a3)
{
  v6 = a2 + 15;
  *a1 = *a2;

  v7 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 &= 0xFFFFFFFFFFFFFFF8;
  *v7 = *v6;

  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 24;
  v10 = *(v8 + 80);
  (*(v8 + 24))((v7 + v10 + 8) & ~v10, (v10 + 8 + v6) & ~v10);
  v11 = ((v10 + 16) & ~v10) + *(v9 + 40) + 7;
  v12 = (a1 + v11) & 0xFFFFFFFFFFFFFFF8;
  v13 = (a2 + v11) & 0xFFFFFFFFFFFFFFF8;
  *v12 = *v13;

  *(v12 + 8) = *(v13 + 8);
  return a1;
}

void *assignWithCopy for OptionalSourceWriter(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, v5);
  v9 = v7(a2, 1, v5);
  if (!v8)
  {
    if (v9)
    {
      v13 = *(v6 + 8);
      v12 = v6 + 8;
      v13(a1, v5);
      v10 = *(v12 + 76);
      v11 = *(v12 + 56);
      goto LABEL_6;
    }

    (*(v6 + 24))(a1, a2, v5);
    return a1;
  }

  if (!v9)
  {
    (*(v6 + 16))(a1, a2, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    return a1;
  }

  v10 = *(v6 + 84);
  v11 = *(v6 + 64);
LABEL_6:
  if (v10)
  {
    v14 = v11;
  }

  else
  {
    v14 = v11 + 1;
  }

  return memcpy(a1, a2, v14);
}

uint64_t assignWithCopy for _PickerValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 24;
  (*v6)();
  v7 = *(v6 + 40);
  v8 = *(a3 + 24);
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = (v10 | 7) + v7;
  v12 = ((v11 + a1) & ~(v10 | 7));
  v13 = ((v11 + a2) & ~(v10 | 7));
  *v12 = *v13;

  v14 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;

  (*(v9 + 24))((v14 + v10 + 8) & ~v10, (v15 + v10 + 8) & ~v10, v8);
  v16 = *(v9 + 64) + ((v10 + 16) & ~v10) + 7;
  v17 = (v12 + v16) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v13 + v16) & 0xFFFFFFFFFFFFFFF8;
  *v17 = *v18;

  *(v17 + 8) = *(v18 + 8);
  return a1;
}

uint64_t *assignWithCopy for SectionPicker(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  outlined copy of Environment<Bool>.Content(*a2, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  *a1 = v6;
  *(a1 + 8) = v7;
  outlined consume of Environment<Bool>.Content(v8, v9);
  v10 = *(a3 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = (v12 | 7) + 9;
  v14 = ((a1 + v13) & ~(v12 | 7));
  v15 = ((a2 + v13) & ~(v12 | 7));
  *v14 = *v15;

  v16 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;

  (*(v11 + 24))((v16 + v12 + 8) & ~v12, (v17 + v12 + 8) & ~v12, v10);
  v18 = *(v11 + 64) + ((v12 + 16) & ~v12) + 7;
  v19 = (v14 + v18) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v15 + v18) & 0xFFFFFFFFFFFFFFF8;
  *v19 = *v20;

  *(v19 + 8) = *(v20 + 8);
  v21 = (v18 & 0xFFFFFFFFFFFFFFF8) + 9;
  v22 = v14 + v21;
  v23 = v15 + v21;
  __swift_assign_boxed_opaque_existential_1((v22 + 7), (v15 + v21 + 7));
  v24 = *(v23 + 47);
  v25 = *(v22 + 47);
  *(v22 + 47) = v24;
  v26 = v24;

  *(v22 + 55) = *(v23 + 55);

  *(v22 + 63) = *(v23 + 63);
  return a1;
}

uint64_t *assignWithCopy for PickerContentView(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Bool>.Content(*a2, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Bool>.Content(v6, v7);
  a1[2] = a2[2];

  __swift_assign_boxed_opaque_existential_1(a1 + 3, a2 + 3);
  v8 = a2[8];
  v9 = a1[8];
  a1[8] = v8;
  v10 = v8;

  a1[9] = a2[9];

  a1[10] = a2[10];
  return a1;
}

uint64_t assignWithCopy for CheckmarkToggleStyle(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  outlined copy of Environment<Selector?>.Content(v8, v9);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  outlined consume of Environment<Selector?>.Content(v10, v11);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  v14 = *(a2 + 48);
  v15 = *(a2 + 56);
  v16 = *(a2 + 64);
  outlined copy of Environment<EdgeInsets>.Content(v12, v13, v14, v15, v16);
  v17 = *(a1 + 32);
  v18 = *(a1 + 40);
  v19 = *(a1 + 48);
  v20 = *(a1 + 56);
  v21 = *(a1 + 64);
  *(a1 + 32) = v12;
  *(a1 + 40) = v13;
  *(a1 + 48) = v14;
  *(a1 + 56) = v15;
  *(a1 + 64) = v16;
  outlined consume of Environment<EdgeInsets>.Content(v17, v18, v19, v20, v21);
  v22 = *(a2 + 72);
  LOBYTE(v13) = *(a2 + 80);
  outlined copy of Environment<Selector?>.Content(v22, v13);
  v23 = *(a1 + 72);
  v24 = *(a1 + 80);
  *(a1 + 72) = v22;
  *(a1 + 80) = v13;
  outlined consume of Environment<Selector?>.Content(v23, v24);
  v25 = *(a2 + 88);
  LOBYTE(v13) = *(a2 + 96);
  outlined copy of Environment<Selector?>.Content(v25, v13);
  v26 = *(a1 + 88);
  v27 = *(a1 + 96);
  *(a1 + 88) = v25;
  *(a1 + 96) = v13;
  outlined consume of Environment<Selector?>.Content(v26, v27);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  return a1;
}

uint64_t FocusStoreLocation.findEntry(with:)@<X0>(uint64_t a1@<X8>)
{
  if (*(*(v1 + 32) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v1), (v3 & 1) != 0))
  {
    v4 = type metadata accessor for FocusStore.Entry();
    (*(*(v4 - 8) + 56))(a1, 1, 1, v4);
    v5 = type metadata accessor for FocusStore.Key();
    MEMORY[0x1EEE9AC00](v5);

    swift_getWitnessTable();
    PropertyList.forEach<A>(keyType:_:)();
  }

  else
  {
    v7 = type metadata accessor for FocusStore.Entry();
    v8 = *(*(v7 - 8) + 56);

    return v8(a1, 1, 1, v7);
  }
}

uint64_t closure #1 in FocusStoreLocation.findEntry(with:)(uint64_t a1, _BYTE *a2, uint64_t a3, char *a4)
{
  v22 = a4;
  v23 = a3;
  v6 = type metadata accessor for FocusStore.Entry();
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - v9;
  v11 = *(v6 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v20 - v14;
  (*(v8 + 16))(v10, a1, v7, v13);
  if ((*(v11 + 48))(v10, 1, v6) == 1)
  {
    return (*(v8 + 8))(v10, v7);
  }

  v21 = a2;
  v17 = v10;
  v18 = *(v11 + 32);
  v18(v15, v17, v6);
  if ((FocusStore.Entry.isValid.getter(v6) & 1) == 0 || (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    return (*(v11 + 8))(v15, v6);
  }

  v19 = v22;
  (*(v8 + 8))(v22, v7);
  v18(v19, v15, v6);
  result = (*(v11 + 56))(v19, 0, 1, v6);
  *v21 = 1;
  return result;
}

__n128 assignWithCopy for SectionStyleConfiguration(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v3)
    {
      *a1 = *a2;

      *(a1 + 8) = *(a2 + 8);

      *(a1 + 16) = *(a2 + 16);
    }

    else
    {
      outlined destroy of Binding<Bool>(a1);
      v7 = *(a2 + 16);
      result = *a2;
      *a1 = *a2;
      *(a1 + 16) = v7;
    }
  }

  else if (v3)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = *(a2 + 16);
  }

  else
  {
    result = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a1 = result;
  }

  return result;
}

uint64_t FocusStoreLocation.deferUpdate(_:)(uint64_t a1)
{
  v3 = *(*v1 + class metadata base offset for FocusStoreLocation);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = *(TupleTypeMetadata2 + 48);
  (*(*(v3 - 8) + 16))(&v13 - v8, a1, v3, v7);
  *&v9[v10] = *&v1[*(*v1 + class metadata base offset for FocusStoreLocation + 40)];
  (*(*(TupleTypeMetadata2 - 8) + 56))(v9, 0, 1, TupleTypeMetadata2);
  v11 = *(*v1 + class metadata base offset for FocusStoreLocation + 48);
  swift_beginAccess();
  (*(v6 + 40))(&v1[v11], v9, v5);
  return swift_endAccess();
}

uint64_t assignWithCopy for ToggleStyleConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 41) = *(a2 + 41);
  v4 = *(a2 + 72);
  if (*(a1 + 72))
  {
    if (v4)
    {
      v5 = *(a2 + 48);
      v6 = *(a2 + 56);
      v7 = *(a2 + 64);
      outlined copy of Environment<AppIntentExecutor?>.Content(v5, v6, v7);
      v8 = *(a1 + 48);
      v9 = *(a1 + 56);
      v10 = *(a1 + 64);
      *(a1 + 48) = v5;
      *(a1 + 56) = v6;
      *(a1 + 64) = v7;
      outlined consume of Environment<AppIntentExecutor?>.Content(v8, v9, v10);
      v11 = *(a2 + 72);
      v12 = *(a1 + 72);
      *(a1 + 72) = v11;
      v13 = v11;

      v14 = *(a2 + 88);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 88) = v14;
    }

    else
    {
      outlined destroy of AppIntentAction(a1 + 48);
      v23 = *(a2 + 64);
      v22 = *(a2 + 80);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 64) = v23;
      *(a1 + 80) = v22;
    }
  }

  else if (v4)
  {
    v15 = *(a2 + 48);
    v16 = *(a2 + 56);
    v17 = *(a2 + 64);
    outlined copy of Environment<AppIntentExecutor?>.Content(v15, v16, v17);
    *(a1 + 48) = v15;
    *(a1 + 56) = v16;
    *(a1 + 64) = v17;
    v18 = *(a2 + 72);
    *(a1 + 72) = v18;
    v19 = *(a2 + 80);
    v20 = *(a2 + 88);
    *(a1 + 80) = v19;
    *(a1 + 88) = v20;
    v21 = v18;
  }

  else
  {
    v24 = *(a2 + 48);
    v25 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v25;
    *(a1 + 48) = v24;
  }

  return a1;
}

uint64_t assignWithCopy for AccessibilityToggleModifier.RepresentationModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 24);
  if (*(v7 + 24) < 0xFFFFFFFFuLL)
  {
    if (v9 >= 0xFFFFFFFF)
    {
      v20 = *v8;
      v21 = *(v8 + 8);
      v22 = *(v8 + 16);
      outlined copy of Environment<AppIntentExecutor?>.Content(*v8, v21, v22);
      *v7 = v20;
      *(v7 + 8) = v21;
      *(v7 + 16) = v22;
      v23 = *(v8 + 24);
      *(v7 + 24) = v23;
      v24 = *(v8 + 40);
      *(v7 + 32) = *(v8 + 32);
      *(v7 + 40) = v24;
      v25 = v23;

      return a1;
    }

LABEL_7:
    v26 = *v8;
    v27 = *(v8 + 32);
    *(v7 + 16) = *(v8 + 16);
    *(v7 + 32) = v27;
    *v7 = v26;
    return a1;
  }

  if (v9 < 0xFFFFFFFF)
  {
    outlined consume of Environment<AppIntentExecutor?>.Content(*v7, *(v7 + 8), *(v7 + 16));

    goto LABEL_7;
  }

  v10 = *v8;
  v11 = *(v8 + 8);
  v12 = *(v8 + 16);
  outlined copy of Environment<AppIntentExecutor?>.Content(*v8, v11, v12);
  v13 = *v7;
  v14 = *(v7 + 8);
  v15 = *(v7 + 16);
  *v7 = v10;
  *(v7 + 8) = v11;
  *(v7 + 16) = v12;
  outlined consume of Environment<AppIntentExecutor?>.Content(v13, v14, v15);
  v16 = *(v8 + 24);
  v17 = *(v7 + 24);
  *(v7 + 24) = v16;
  v18 = v16;

  v19 = *(v8 + 40);
  *(v7 + 32) = *(v8 + 32);
  *(v7 + 40) = v19;

  return a1;
}

uint64_t *assignWithCopy for ButtonToggleStyle(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Color?>.Content(*a2, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Color?>.Content(v6, v7);
  a1[2] = a2[2];

  return a1;
}

uint64_t assignWithCopy for _SymbolEffectModifier(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 2);
  v5 = *(a2 + 3);
  v7 = (~*(a2 + 4) & 0xFFFFFFFE) == 0 && (*(a2 + 3) & 0xFEFELL) == 2;
  if ((~*(a1 + 16) & 0xFFFFFFFE) == 0 && (*(a1 + 24) & 0xFEFELL) == 2)
  {
    if (v7)
    {
      v11 = *a2;
      v12 = a2[1];
      *(a1 + 29) = *(a2 + 29);
      *a1 = v11;
      *(a1 + 16) = v12;
    }

    else
    {
      v21 = *a2;
      v22 = *(a2 + 1);
      outlined copy of _SymbolEffect.Storage(*a2, v22, v4, v5);
      *a1 = v21;
      *(a1 + 8) = v22;
      *(a1 + 16) = v4;
      *(a1 + 24) = v5;
      v23 = *(a2 + 28);
      *(a1 + 44) = *(a2 + 44);
      *(a1 + 28) = v23;
    }
  }

  else if (v7)
  {
    outlined destroy of SymbolEffect(a1);
    v9 = *(a2 + 29);
    v10 = a2[1];
    *a1 = *a2;
    *(a1 + 16) = v10;
    *(a1 + 29) = v9;
  }

  else
  {
    v13 = *a2;
    v14 = *(a2 + 1);
    outlined copy of _SymbolEffect.Storage(*a2, v14, v4, v5);
    v15 = *a1;
    v16 = *(a1 + 8);
    v17 = *(a1 + 16);
    *a1 = v13;
    *(a1 + 8) = v14;
    *(a1 + 16) = v4;
    v18 = *(a1 + 24);
    *(a1 + 24) = v5;
    outlined consume of _SymbolEffect.Storage(v15, v16, v17, v18);
    *(a1 + 28) = *(a2 + 7);
    v19 = *(a2 + 8);
    *(a1 + 36) = *(a2 + 36);
    *(a1 + 32) = v19;
    v20 = *(a2 + 10);
    *(a1 + 44) = *(a2 + 44);
    *(a1 + 40) = v20;
  }

  return a1;
}

uint64_t assignWithCopy for OnPlatformContainerSelectionModifier(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  if (!*a1)
  {
    if (v4)
    {
      v6 = a2[1];
      *a1 = v4;
      *(a1 + 8) = v6;

      goto LABEL_8;
    }

LABEL_7:
    *a1 = *a2;
    goto LABEL_8;
  }

  if (!v4)
  {

    goto LABEL_7;
  }

  v5 = a2[1];
  *a1 = v4;
  *(a1 + 8) = v5;

LABEL_8:
  *(a1 + 16) = *(a2 + 16);
  v7 = a2[3];
  v8 = *(a2 + 32);
  outlined copy of Environment<Selector?>.Content(v7, v8);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  outlined consume of Environment<Selector?>.Content(v9, v10);
  v11 = a2[5];
  v12 = a2[6];
  v13 = a2[7];
  v14 = *(a2 + 65);
  v15 = *(a2 + 64);
  outlined copy of Environment<KeyboardShortcut?>.Content(v11, v12, v13, v15, v14);
  v16 = *(a1 + 40);
  v17 = *(a1 + 48);
  v18 = *(a1 + 56);
  v19 = *(a1 + 65);
  *(a1 + 40) = v11;
  *(a1 + 48) = v12;
  *(a1 + 56) = v13;
  v20 = *(a1 + 64);
  *(a1 + 64) = v15;
  *(a1 + 65) = v14;
  outlined consume of Environment<KeyboardShortcut?>.Content(v16, v17, v18, v20, v19);
  v21 = a2[9];
  v22 = *(a2 + 80);
  outlined copy of Environment<Selector?>.Content(v21, v22);
  v23 = *(a1 + 72);
  v24 = *(a1 + 80);
  *(a1 + 72) = v21;
  *(a1 + 80) = v22;
  outlined consume of Environment<Selector?>.Content(v23, v24);
  return a1;
}

__n128 assignWithCopy for OnDeleteTableRowModifier(__n128 *a1, __n128 *a2)
{
  v2 = a2->n128_u64[0];
  if (a1->n128_u64[0])
  {
    if (v2)
    {
      v3 = a2->n128_i64[1];
      a1->n128_u64[0] = v2;
      a1->n128_u64[1] = v3;
    }

    else
    {

      result = *a2;
      *a1 = *a2;
    }
  }

  else if (v2)
  {
    v5 = a2->n128_i64[1];
    a1->n128_u64[0] = v2;
    a1->n128_u64[1] = v5;
  }

  else
  {
    result = *a2;
    *a1 = *a2;
  }

  return result;
}

uint64_t getEnumTag for PaletteSelectionEffect.Guts(uint64_t a1)
{
  v1 = *(a1 + 1);
  if (v1 <= 3)
  {
    v2 = 3;
  }

  else
  {
    v2 = *(a1 + 1);
  }

  v3 = v2 - 3;
  if (v1 >= 3)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for PaletteSelectionEffect.Guts(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFC)
  {
    *result = a2 - 253;
  }

  else if (a2)
  {
    *(result + 1) = a2 + 3;
  }

  return result;
}

double static RelationshipModifier._makeView(modifier:inputs:body:)@<D0>(int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr)@<X2>, uint64_t a4@<X5>, double *a5@<X8>)
{
  v39 = a5;
  v56 = *MEMORY[0x1E69E9840];
  v35 = type metadata accessor for Transform.State();
  v9 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v33[-v10];
  v38 = type metadata accessor for Transform();
  v37 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v36 = &v33[-v12];
  v34 = *a1;
  v13 = *a2;
  v14 = *(a2 + 24);
  v45 = *(a2 + 8);
  v46 = v14;
  v15 = *(a2 + 48);
  v47 = *(a2 + 40);
  v16 = *(a2 + 56);
  v43 = *(a2 + 60);
  v44 = *(a2 + 76);
  v48 = v13;
  v49 = *(a2 + 8);
  v50 = *(a2 + 24);
  v51 = *(a2 + 40);
  v52 = v15;
  v53 = v16;
  v54 = *(a2 + 60);
  v55 = *(a2 + 76);
  a3(&v41);
  v48 = v15;
  LODWORD(v49) = v16;
  if ((PreferencesInputs.contains<A>(_:includeHostPreferences:)() & 1) == 0)
  {
LABEL_5:
    v18 = v41;
    goto LABEL_6;
  }

  type metadata accessor for AccessibilityRelationshipScope();
  lazy protocol witness table accessor for type AccessibilityRelationshipScope and conformance AccessibilityRelationshipScope(&lazy protocol witness table cache variable for type AccessibilityRelationshipScope and conformance AccessibilityRelationshipScope);
  PropertyList.subscript.getter();
  v17 = v48;
  v18 = v41;
  if (v48)
  {
    v48 = v41;
    LODWORD(v49) = LODWORD(v42);
    v19 = PreferencesOutputs.subscript.getter();
    if ((v19 & 0x100000000) != 0)
    {

      goto LABEL_6;
    }

    v20 = v19;
    v40 = v34;
    type metadata accessor for RelationshipModifier();
    type metadata accessor for _GraphValue();
    v21 = _GraphValue.value.getter();
    v48 = v13;
    v49 = v45;
    v50 = v46;
    v51 = v47;
    v52 = v15;
    v53 = v16;
    v54 = v43;
    v55 = v44;
    v22 = _ViewInputs.accessibilityEnabled.getter();
    (*(*(v35 - 8) + 56))(v11, 1, 1);
    v31 = a4;
    v23 = v36;
    v24 = Transform.init(modifier:nodeList:accessibilityEnabled:selfAttribute:scope:state:isRemoved:)(v21, v20, v22, *MEMORY[0x1E698D3F8], v17, v11, 0, v36);
    MEMORY[0x1EEE9AC00](v24);
    v25 = v38;
    v31 = v38;
    WitnessTable = swift_getWitnessTable();
    type metadata accessor for Attribute<AccessibilityNodeList>(0, &lazy cache variable for type metadata for Attribute<AccessibilityNodeList>, &type metadata for AccessibilityNodeList, MEMORY[0x1E698D388]);
    v27 = v26;

    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v23, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_0, &v33[-32], v25, MEMORY[0x1E69E73E0], v27, MEMORY[0x1E69E7410], v28);
    (*(v37 + 8))(v23, v25);
    AGGraphSetFlags();
    LOBYTE(v48) = 0;
    PreferencesOutputs.subscript.setter();

    goto LABEL_5;
  }

LABEL_6:
  v29 = v39;
  *v39 = v18;
  result = v42;
  v29[1] = v42;
  return result;
}

uint64_t objectdestroy_31Tm()
{
  v1 = *(v0 + 40);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t type metadata completion function for Transform.State()
{
  result = type metadata accessor for RelationshipModifier();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for Transform()
{
  type metadata accessor for Transform.State();
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t static BaseModifier._makeView(modifier:inputs:body:)()
{
  type metadata accessor for NavigationLinkPresentedValue?(0, &lazy cache variable for type metadata for _GraphValue<BaseModifier>, &unk_1EFFC57C0, MEMORY[0x1E697DDB8]);
  v0 = MEMORY[0x1E69E6720];
  type metadata accessor for NavigationLinkPresentedValue?(0, &lazy cache variable for type metadata for NavigationLinkPresentedValue?, &type metadata for NavigationLinkPresentedValue, MEMORY[0x1E69E6720]);
  _GraphValue.subscript.getter();
  v1 = MEMORY[0x1E69E6370];
  _GraphValue.subscript.getter();
  lazy protocol witness table accessor for type NavigationAuthority.SeedInputs and conformance NavigationAuthority.SeedInputs();
  PropertyList.subscript.getter();
  lazy protocol witness table accessor for type NavigationAuthority.ViewInputKey and conformance NavigationAuthority.ViewInputKey();
  PropertyList.subscript.getter();
  lazy protocol witness table accessor for type NavigationAuthority.ListKeyViewInputKey and conformance NavigationAuthority.ListKeyViewInputKey();
  PropertyList.subscript.getter();
  lazy protocol witness table accessor for type NavigationSelectionTag and conformance NavigationSelectionTag();
  PropertyList.subscript.getter();
  type metadata accessor for NavigationLinkPresentedValue?(0, &lazy cache variable for type metadata for Bool?, v1, v0);
  Attribute.init<A>(body:value:flags:update:)();
  v2 = AGCreateWeakAttribute();
  LODWORD(v1) = v2;
  v3 = HIDWORD(v2);
  type metadata accessor for BaseModifier.SelectionStateBox();
  v4 = swift_allocObject();
  swift_weakInit();
  *(v4 + 32) = 2;
  *(v4 + 16) = v1;
  *(v4 + 20) = v3;
  type metadata accessor for ViewGraph();
  MEMORY[0x18D00B7D0]();
  swift_weakAssign();

  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type BaseModifier.SelectionObserver and conformance BaseModifier.SelectionObserver();

  Attribute.init<A>(body:value:flags:update:)();

  AGGraphSetFlags();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type BaseModifier.Child and conformance BaseModifier.Child();
  Attribute.init<A>(body:value:flags:update:)();
  lazy protocol witness table accessor for type PlatformItemNavigationSelectionStyleModifier and conformance PlatformItemNavigationSelectionStyleModifier();
  static ViewModifier.makeDebuggableView(modifier:inputs:body:)();
}

unint64_t lazy protocol witness table accessor for type NavigationSelectionTag and conformance NavigationSelectionTag()
{
  result = lazy protocol witness table cache variable for type NavigationSelectionTag and conformance NavigationSelectionTag;
  if (!lazy protocol witness table cache variable for type NavigationSelectionTag and conformance NavigationSelectionTag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationSelectionTag and conformance NavigationSelectionTag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationSelectionTag and conformance NavigationSelectionTag;
  if (!lazy protocol witness table cache variable for type NavigationSelectionTag and conformance NavigationSelectionTag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationSelectionTag and conformance NavigationSelectionTag);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BaseModifier.SelectionObserver and conformance BaseModifier.SelectionObserver()
{
  result = lazy protocol witness table cache variable for type BaseModifier.SelectionObserver and conformance BaseModifier.SelectionObserver;
  if (!lazy protocol witness table cache variable for type BaseModifier.SelectionObserver and conformance BaseModifier.SelectionObserver)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BaseModifier.SelectionObserver and conformance BaseModifier.SelectionObserver);
  }

  return result;
}

uint64_t initializeWithCopy for BaseModifier.SelectionObserver(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

unint64_t lazy protocol witness table accessor for type BaseModifier.Child and conformance BaseModifier.Child()
{
  result = lazy protocol witness table cache variable for type BaseModifier.Child and conformance BaseModifier.Child;
  if (!lazy protocol witness table cache variable for type BaseModifier.Child and conformance BaseModifier.Child)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BaseModifier.Child and conformance BaseModifier.Child);
  }

  return result;
}

__n128 __swift_memcpy40_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type PlatformItemNavigationSelectionStyleModifier and conformance PlatformItemNavigationSelectionStyleModifier()
{
  result = lazy protocol witness table cache variable for type PlatformItemNavigationSelectionStyleModifier and conformance PlatformItemNavigationSelectionStyleModifier;
  if (!lazy protocol witness table cache variable for type PlatformItemNavigationSelectionStyleModifier and conformance PlatformItemNavigationSelectionStyleModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItemNavigationSelectionStyleModifier and conformance PlatformItemNavigationSelectionStyleModifier);
  }

  return result;
}

uint64_t FocusStore.Entry.responder.getter(uint64_t a1)
{
  v3 = type metadata accessor for FocusStore.Entry.Target();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v11[-v6 - 8];
  (*(v4 + 16))(&v11[-v6 - 8], v1 + *(a1 + 40), v3, v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v4 + 8))(v7, v3);
    return 0;
  }

  else
  {
    outlined init with take of Binding<SearchFieldState>(v7, v11, type metadata accessor for WeakBox<FocusStateBindingResponder>);
    Strong = swift_weakLoadStrong();
    outlined destroy of SearchFieldState(v11, type metadata accessor for WeakBox<FocusStateBindingResponder>);
    outlined destroy of SearchFieldState((v7 + 8), type metadata accessor for WeakBox<FocusBridge>);
    return Strong;
  }
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<PlatformItemNavigationSelectionStyleModifier>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<PlatformItemNavigationSelectionStyleModifier>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>)
  {
    type metadata accessor for _ViewModifier_Content<PlatformItemNavigationSelectionStyleModifier>();
    type metadata accessor for AnyNavigationLinkPresentedValueStorage<AnyHashable>(255, &lazy cache variable for type metadata for PlatformItemListTransformModifier<SelectionPlatformItemListFlags>, &type metadata for SelectionPlatformItemListFlags, &protocol witness table for SelectionPlatformItemListFlags, type metadata accessor for PlatformItemListTransformModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<PlatformItemNavigationSelectionStyleModifier>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<PlatformItemNavigationSelectionStyleModifier>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<PlatformItemNavigationSelectionStyleModifier>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<PlatformItemNavigationSelectionStyleModifier>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<PlatformItemNavigationSelectionStyleModifier>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>();
    lazy protocol witness table accessor for type _ViewModifier_Content<PlatformItemNavigationSelectionStyleModifier> and conformance _ViewModifier_Content<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<PlatformItemNavigationSelectionStyleModifier>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with take of (offset: Int, element: WeakBox<ViewResponder>)?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Binding<SearchFieldState>(0, &lazy cache variable for type metadata for (offset: Int, element: WeakBox<ViewResponder>)?, type metadata accessor for (offset: Int, element: WeakBox<ViewResponder>), MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void type metadata accessor for _ViewModifier_Content<PlatformItemNavigationSelectionStyleModifier>()
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<PlatformItemNavigationSelectionStyleModifier>)
  {
    lazy protocol witness table accessor for type PlatformItemNavigationSelectionStyleModifier and conformance PlatformItemNavigationSelectionStyleModifier();
    v0 = type metadata accessor for _ViewModifier_Content();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ViewModifier_Content<PlatformItemNavigationSelectionStyleModifier>);
    }
  }
}

void type metadata accessor for (offset: Int, element: WeakBox<ViewResponder>)()
{
  if (!lazy cache variable for type metadata for (offset: Int, element: WeakBox<ViewResponder>))
  {
    type metadata accessor for WeakBox<ViewResponder>(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (offset: Int, element: WeakBox<ViewResponder>));
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<PlatformItemNavigationSelectionStyleModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<PlatformItemNavigationSelectionStyleModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<PlatformItemNavigationSelectionStyleModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for _ViewModifier_Content<PlatformItemNavigationSelectionStyleModifier>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<PlatformItemNavigationSelectionStyleModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

void type metadata accessor for AnyNavigationLinkPresentedValueStorage<AnyHashable>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t static PrimitiveNavigationLink._makeView(view:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a1;
  v12 = *(a2 + 48);
  v33 = *(a2 + 32);
  v34 = v12;
  v35 = *(a2 + 64);
  v36 = *(a2 + 80);
  v13 = *(a2 + 16);
  v31 = *a2;
  v32 = v13;
  outlined init with copy of _GraphInputs(&v31, &v17);
  v14 = static ShouldUseNavigationLinkV4.evaluate(inputs:)(a2, a4);
  v15 = *(a2 + 16);
  v37[0] = *a2;
  v37[1] = v15;
  v37[2] = *(a2 + 32);
  outlined destroy of _GraphInputs(v37);
  LODWORD(v22) = v11;
  v17 = v31;
  *v18 = v32;
  *&v18[16] = v33;
  outlined init with copy of _GraphInputs(&v31, &v26);
  if (v14)
  {
    static PrimitiveNavigationLink.makeNavigationLinkViewRule(view:inputs:)(&v22, a3, &v29);
    v26 = v17;
    v27 = *v18;
    v28 = *&v18[16];
    outlined destroy of _GraphInputs(&v26);
    *&v17 = a3;
    *(&v17 + 1) = a4;
    *v18 = a5;
    *&v18[8] = a6;
    type metadata accessor for StyledNavigationLinkButton();
    v17 = v29;
    *v18 = *v30;
    *&v18[9] = *&v30[9];
    v22 = a3;
    v23 = a4;
    v24 = a5;
    v25 = a6;
    type metadata accessor for PrimitiveNavigationLink.NavigationLinkViewRule();
    swift_getWitnessTable();
    _GraphValue.init<A>(_:)();
  }

  else
  {
    static PrimitiveNavigationLink.makeLegacyNavigationLinkViewRule(view:inputs:)(&v22, &v29);
    v26 = v17;
    v27 = *v18;
    v28 = *&v18[16];
    outlined destroy of _GraphInputs(&v26);
    *&v17 = a3;
    *(&v17 + 1) = a4;
    *v18 = a5;
    *&v18[8] = a6;
    type metadata accessor for LegacyNavigationLinkButton();
    v17 = v29;
    *v18 = *v30;
    *&v18[16] = *&v30[16];
    v22 = a3;
    v23 = a4;
    v24 = a5;
    v25 = a6;
    type metadata accessor for PrimitiveNavigationLink.LegacyNavigationLinkViewRule();
    swift_getWitnessTable();
    _GraphValue.init<A>(_:)();
  }

  *&v18[16] = v33;
  v19 = v34;
  v20 = v35;
  v21 = v36;
  v17 = v31;
  *v18 = v32;
  swift_getWitnessTable();
  return static View.makeView(view:inputs:)();
}

uint64_t FocusStore.Entry.updateFocus(_:)(char a1, uint64_t a2)
{
  v5 = type metadata accessor for SearchFieldState(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Binding<SearchFieldState>(0);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FocusStore.Entry.Target();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - v14;
  (*(v16 + 16))(&v26 - v14, v2 + *(a2 + 40), v12, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of Binding<SearchFieldState>(v15, v11, type metadata accessor for Binding<SearchFieldState>);
    MEMORY[0x18D00ACC0](v9);
    ++static SearchFocusUpdate.nextSeed;
    v17 = &v7[*(v5 + 44)];
    *v17 = static SearchFocusUpdate.nextSeed;
    v17[4] = a1 & 1;
    if ((a1 & 1) != 0 && *v7 == 2)
    {
      v18 = v7[2];
      if (v18 == 2)
      {
        v18 = v7[3];
        if (v18 == 2)
        {
          LOBYTE(v18) = 0;
        }
      }

      *v7 = v18 & 1;
      v7[*(v5 + 40)] = 1;
    }

    dispatch thunk of AnyLocation.set(_:transaction:)();
    outlined destroy of SearchFieldState(v7, type metadata accessor for SearchFieldState);
    v19 = type metadata accessor for Binding<SearchFieldState>;
    v20 = v11;
  }

  else
  {
    outlined init with take of Binding<SearchFieldState>((v15 + 8), v28, type metadata accessor for WeakBox<FocusBridge>);
    if (a1)
    {
      FocusStore.Entry.defaultFocusItem.getter(a2, v27);
      MEMORY[0x1EEE9AC00](v21);
      *(&v26 - 2) = v28;
      _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI9FocusItemV_s5NeverOytTg5(partial apply for closure #1 in FocusStore.Entry.updateFocus(_:));
      outlined destroy of FocusItem?(v27);
    }

    else if (swift_weakLoadStrong())
    {
      v22 = FocusBridge.host.getter();
      if (v22)
      {
        v23 = v22;
        v24 = [v22 firstResponder];
        [v24 resignFirstResponder];
      }
    }

    outlined destroy of SearchFieldState(v28, type metadata accessor for WeakBox<FocusBridge>);
    v19 = type metadata accessor for WeakBox<FocusStateBindingResponder>;
    v20 = v15;
  }

  return outlined destroy of SearchFieldState(v20, v19);
}

__n128 static PrimitiveNavigationLink.makeNavigationLinkViewRule(view:inputs:)@<Q0>(int *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v12 = *a1;
  HIDWORD(v13) = HIDWORD(a2);
  type metadata accessor for PrimitiveNavigationLink();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  type metadata accessor for _GraphValue();
  v11 = _GraphValue.value.getter();
  LODWORD(v13) = v4;
  type metadata accessor for NavigationDestinationPayload();
  _GraphValue.subscript.getter();
  type metadata accessor for _GraphValue();
  v5 = _GraphValue.value.getter();
  lazy protocol witness table accessor for type NavigationAuthority.ListKeyViewInputKey and conformance NavigationAuthority.ListKeyViewInputKey();
  PropertyList.subscript.getter();
  v6.n128_u64[0] = v13;
  v10 = v6;
  LODWORD(v13) = v4;
  type metadata accessor for Never?(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  _GraphValue.subscript.getter();
  lazy protocol witness table accessor for type NavigationAuthority.StackKeyViewInputKey and conformance NavigationAuthority.StackKeyViewInputKey();
  PropertyList.subscript.getter();
  lazy protocol witness table accessor for type NavigationAuthority.ViewInputKey and conformance NavigationAuthority.ViewInputKey();
  PropertyList.subscript.getter();
  if (one-time initialization token for selectionPopsSubsequentColumn != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  *a3 = v11;
  *(a3 + 4) = v5;
  *&v9 = v13;
  result = v10;
  *(&v9 + 1) = v10.n128_u64[0];
  *(a3 + 8) = v12;
  *(a3 + 12) = v9;
  *(a3 + 28) = v13;
  *(a3 + 36) = v7;
  *(a3 + 40) = 2;
  return result;
}

double FocusStore.Entry.defaultFocusItem.getter@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = type metadata accessor for FocusStore.Entry.Target();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v11[-v8];
  (*(v6 + 16))(&v11[-v8], v2 + *(a1 + 40), v5, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a2 = 0u;
    a2[1] = 0u;
    a2[2] = 0u;
    a2[3] = xmmword_18CD6A6D0;
    (*(v6 + 8))(v9, v5);
  }

  else
  {
    outlined init with take of Binding<SearchFieldState>(v9, v12, type metadata accessor for WeakBox<FocusStateBindingResponder>);
    outlined init with take of Binding<SearchFieldState>((v9 + 8), v11, type metadata accessor for WeakBox<FocusBridge>);
    if (swift_weakLoadStrong())
    {
      swift_weakLoadStrong();
      FocusStateBindingResponder.defaultFocusItem(in:)(a2);

      outlined destroy of SearchFieldState(v11, type metadata accessor for WeakBox<FocusBridge>);
      outlined destroy of SearchFieldState(v12, type metadata accessor for WeakBox<FocusStateBindingResponder>);
    }

    else
    {
      outlined destroy of SearchFieldState(v11, type metadata accessor for WeakBox<FocusBridge>);
      outlined destroy of SearchFieldState(v12, type metadata accessor for WeakBox<FocusStateBindingResponder>);
      result = 0.0;
      *a2 = 0u;
      a2[1] = 0u;
      a2[2] = 0u;
      a2[3] = xmmword_18CD6A6D0;
    }
  }

  return result;
}

uint64_t closure #1 in FocusStateBindingResponder.defaultFocusItem(in:)(uint64_t result)
{
  if (*(result + 220))
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for WeakBox<FocusBridge>(0, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]);
    result = AGGraphGetInputValue();
    if (v1)
    {

      return MultiViewResponder.children.setter();
    }
  }

  return result;
}

uint64_t closure #1 in static PrimitiveNavigationLink.makeNavigationLinkViewRule(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v12[2] = type metadata accessor for PrimitiveNavigationLink();
  v12[3] = a2;
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, a6, v12, a2, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v13;
}

uint64_t ScrollViewResponder.updateValue()()
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 24);
  if (!v1)
  {
    v2 = *(v0 + 40);
    type metadata accessor for HostingScrollViewResponder();
    *(swift_allocObject() + 256) = v2;

    v1 = UIViewResponder.init()();
    swift_beginAccess();
    swift_weakLoadStrong();

    swift_weakAssign();

    *(v0 + 24) = v1;
  }

  type metadata accessor for HostingScrollView();

  v3 = *AGGraphGetValue();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v4 = v3;
  v5 = [v4 superview];
  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  swift_weakAssign();
  Strong = swift_weakLoadStrong();
  if (Strong && (v7 = Strong, swift_beginAccess(), v8 = swift_unknownObjectWeakLoadStrong(), v9 = *(v7 + 208), , v8))
  {
    ObjectType = swift_getObjectType();
    v11 = type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for CurrentEventProvider);
    (*(v9 + 16))(&v22, v11, v11, ObjectType, v9);
    swift_unknownObjectRelease();
    v12 = v23;
  }

  else
  {
    v12 = 0;
  }

  v13 = [*AGGraphGetValue() superview];
  v21 = v12;
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  swift_unknownObjectWeakInit();

  AGGraphGetValue();
  type metadata accessor for CGPoint(0);
  AGGraphGetValue();
  Value = AGGraphGetValue();
  v15 = *(Value + 8);
  v22 = *Value;
  v23 = v15;
  v16 = *(Value + 32);
  v24 = *(Value + 16);
  v25 = v16;
  swift_beginAccess();
  type metadata accessor for ContentResponderHelper<UIViewContentResponder>();

  ContentResponderHelper.update(data:size:position:transform:parent:)();
  swift_endAccess();

  _sSay7SwiftUI13ViewResponderCGMaTm_8(0, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]);
  AGGraphGetValue();
  if (v17)
  {

    dispatch thunk of MultiViewResponder.children.setter();
  }

  if (AGGraphGetOutputValue())
  {

    return outlined destroy of UIViewContentResponder(v20);
  }

  else
  {
    _s7SwiftUI10MutableBoxCys6UInt32VGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_18CD69590;
    *(v19 + 32) = v1;
    v22 = v19;
    AGGraphSetOutputValue();

    outlined destroy of UIViewContentResponder(v20);
  }
}

uint64_t closure #2 in static PrimitiveNavigationLink.makeNavigationLinkViewRule(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v8 = type metadata accessor for PrimitiveNavigationLink();
  v9 = *(v8 + 52);
  v13[2] = v8;
  v14 = type metadata accessor for NavigationDestinationPayload();
  v10 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v9, a6, v13, v14, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);
  return v15;
}

uint64_t type metadata accessor for HostingScrollViewResponder()
{
  result = type metadata singleton initialization cache for HostingScrollViewResponder;
  if (!type metadata singleton initialization cache for HostingScrollViewResponder)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t closure #3 in static PrimitiveNavigationLink.makeNavigationLinkViewRule(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v6 = type metadata accessor for PrimitiveNavigationLink();
  v7 = *(v6 + 56);
  v13[2] = v6;
  type metadata accessor for Never?(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  v9 = v8;
  v10 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v7, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_27, v13, v9, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);
  return v14;
}

uint64_t type metadata accessor for PlatformUnaryViewResponder()
{
  result = type metadata singleton initialization cache for PlatformUnaryViewResponder;
  if (!type metadata singleton initialization cache for PlatformUnaryViewResponder)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata accessor for Never?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

__n128 __swift_memcpy41_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t initializeWithCopy for UIViewContentResponder(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4();
  *(v7 + 8) = *(a2 + 8);
  (a4)(v7 + 16, a2 + 16);
  return a1;
}

uint64_t sub_18C0328F0()
{
  type metadata accessor for InternalResolvedNavigationLink();
  type metadata accessor for ModifiedContent();
  type metadata accessor for PlatformItemListTransformModifier<SelectionPlatformItemListFlags>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for NavigationLinkDisabledModifier();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

void destroy for UIViewContentResponder()
{
  MEMORY[0x18D011290]();

  JUMPOUT(0x18D011290);
}

uint64_t sub_18C032AC4()
{
  type metadata accessor for NavigationLinkDisabledModifier();
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  _s7SwiftUI19NavigationAuthorityVSgMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6980B20]);
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>();
  return swift_getWitnessTable();
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyTransformModifier<Bool>(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6980B20]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>);
  }

  return result;
}

uint64_t ViewResponderFilter.updateValue()(uint64_t a1)
{
  v2 = v1;
  v69 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v53 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v52 = &v51 - v6;
  v55 = v5;
  v58 = v4;
  v7 = type metadata accessor for ViewLeafView();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v56 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v59 = &v51 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v51 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v51 - v16;
  v18 = *(v2 + 24);
  ViewResponderFilter.view.getter(&v51 - v16);
  v21 = *(v8 + 8);
  v20 = v8 + 8;
  v19 = v21;
  swift_unknownObjectRetain();
  v21(v17, v7);
  objc_opt_self();
  v22 = swift_dynamicCastObjCClass();
  if (!v22)
  {
    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  v23 = v18;
  swift_unknownObjectWeakAssign();

  v60 = a1;
  ViewResponderFilter.view.getter(v14);
  swift_unknownObjectRetain();
  v24 = v14;
  v25 = v7;
  v57 = v20;
  v19(v24, v7);
  v55 = type metadata accessor for UIKitPlatformViewHost();
  v26 = v19;
  if (swift_dynamicCastClass())
  {
    v27 = dispatch thunk of UICorePlatformViewHost.representedView.getter();
  }

  else
  {
    v27 = 0;
  }

  v28 = v59;
  swift_unknownObjectRelease();
  v29 = v23;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  Strong = swift_weakLoadStrong();
  v31 = v25;
  if (Strong)
  {
    v32 = Strong;
    swift_beginAccess();
    v33 = swift_unknownObjectWeakLoadStrong();
    v34 = *(v32 + 208);

    if (v33)
    {
      ObjectType = swift_getObjectType();
      v36 = type metadata accessor for CurrentEventProvider();
      (*(v34 + 16))(&v65, v36, v36, ObjectType, v34);
      swift_unknownObjectRelease();
      v37 = v66;
    }

    else
    {
      v37 = 0;
    }
  }

  else
  {
    v37 = 0;
  }

  ViewResponderFilter.view.getter(v28);
  swift_unknownObjectRetain();
  v26(v28, v31);
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  v64 = v37;
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  Value = AGGraphGetValue();
  v39 = Value[1];
  v61 = *Value;
  v62 = v39;
  type metadata accessor for CGPoint(0);
  AGGraphGetValue();
  v40 = AGGraphGetValue();
  v41 = *(v40 + 8);
  v65 = *v40;
  v66 = v41;
  v42 = *(v40 + 32);
  v67 = *(v40 + 16);
  v68 = v42;
  swift_beginAccess();
  type metadata accessor for ContentResponderHelper<UIViewContentResponder>();
  v58 = v26;
  v43 = v60;

  ContentResponderHelper.update(data:size:position:transform:parent:)();
  swift_endAccess();

  type metadata accessor for [KeyPress.Handler](0, &lazy cache variable for type metadata for [KeyPress.Handler], type metadata accessor for KeyPress.Handler, MEMORY[0x1E69E62F8]);
  *(v29 + 240) = *AGGraphGetValue();

  v44 = ViewResponderFilter.preferredFocusableView.getter(v43);
  if (v44 >= 2)
  {
    v45 = v59;
    v46 = v44;
    ViewResponderFilter.view.getter(v59);
    v47 = v52;
    ViewLeafView.representedViewProvider.getter();
    v58(v45, v31);
    (v46)(v47);
    _sxSo6UIViewCSgRi_zRi0_zly20PlatformViewProviderQzIsegno_SgSg7SwiftUI04CoreC13RepresentableRzlWOe(v46);
    (*(v53 + 8))(v47, AssociatedTypeWitness);
  }

  dispatch thunk of PlatformViewResponderBase.preferredFocusableView.setter();
  v48 = v56;
  ViewResponderFilter.view.getter(v56);
  swift_unknownObjectRetain();
  v58(v48, v31);
  if (swift_dynamicCastClass())
  {
    swift_weakAssign();
  }

  swift_unknownObjectRelease();
  type metadata accessor for [ViewResponder](0);
  if (AGGraphGetOutputValue())
  {
    return outlined destroy of UIViewContentResponder(v63);
  }

  _s7SwiftUI20FocusGroupIdentifierOSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_18CD69590;
  *(v50 + 32) = v29;
  v65 = v50;

  AGGraphSetOutputValue();
  outlined destroy of UIViewContentResponder(v63);
}
uint64_t specialized Collection<>.filterVisible(_:)(uint64_t (*a1)(void), uint64_t a2, unint64_t a3)
{
  v18 = MEMORY[0x1E69E7CC0];
  if (a3 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v6 = 0;
    v15 = a1;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x18D00E9C0](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      AccessibilityNode.visibility.getter(v17);
      if ((v17[0] & 4) != 0 || (v17[0] & 8) != 0 && (v17[0] & 0x400000000) == 0)
      {
        goto LABEL_4;
      }

      v10 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_cachedIsPlaceholderOrIgnored;
      v11 = v8[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_cachedIsPlaceholderOrIgnored];
      if (v11 == 2)
      {
        AccessibilityNode.traits.getter(v17);
        v12 = v17[0];
        AccessibilityNode.traits.getter(v17);
        if ((v17[0] & 0x20) != 0 || (v12 & 0x100) != 0)
        {
          v13 = *&v8[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment + 8];
          v17[0] = *&v8[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment];
          v17[1] = v13;

          EnvironmentValues.redactionReasons.getter();

          a1 = v15;
          v8[v10] = v16 & 1;
          if (v16)
          {
            goto LABEL_4;
          }
        }

        else
        {
          v8[v10] = 0;
          a1 = v15;
        }
      }

      else if (v11)
      {
        goto LABEL_4;
      }

      if (!a1 || (a1(v8) & 1) != 0)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        goto LABEL_5;
      }

LABEL_4:

LABEL_5:
      ++v6;
      if (v9 == i)
      {
        return v18;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t outlined init with copy of (AccessibilityAttachment, hasAttachment: Bool, modified: Bool)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  v4 = v3;
  v5 = *v3;
  type metadata accessor for _SetStorage<ToolbarPlacement.Role>(0, a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v18);
      result = Hasher._finalize()();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v3;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v4 = v7;
  }

  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, unint64_t a2, char a3, unint64_t *a4, void (*a5)(void))
{
  v6 = result;
  v7 = *(*v5 + 16);
  v8 = *(*v5 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v7 + 1, a4, a5);
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a2;
      result = specialized _NativeSet.copy()(a4, a5);
      a2 = v9;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v7 + 1, a4, a5);
  }

  v10 = *v5;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v6);
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a2 = result & ~v11;
  if ((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    while (*(*(v10 + 48) + 8 * a2) != v6)
    {
      a2 = (a2 + 1) & v12;
      if (((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v5;
  *(*v5 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = v6;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2)
{
  return specialized Set._Variant.insert(_:)(a1, a2, &lazy cache variable for type metadata for _SetStorage<UniqueID>, lazy protocol witness table accessor for type UniqueID and conformance UniqueID);
}

{
  return specialized Set._Variant.insert(_:)(a1, a2, &lazy cache variable for type metadata for _SetStorage<Namespace.ID>, lazy protocol witness table accessor for type Namespace.ID and conformance Namespace.ID);
}

{
  return specialized Set._Variant.insert(_:)(a1, a2, &lazy cache variable for type metadata for _SetStorage<CommandFlag>, lazy protocol witness table accessor for type CommandFlag and conformance CommandFlag);
}

{
  return specialized Set._Variant.insert(_:)(a1, a2, &lazy cache variable for type metadata for _SetStorage<TextEditorModification>, lazy protocol witness table accessor for type TextEditorModification and conformance TextEditorModification);
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, unint64_t *a3, void (*a4)(void))
{
  v9 = *v4;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](a2);
  v10 = Hasher._finalize()();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    while (*(*(v9 + 48) + 8 * v12) != a2)
    {
      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v4;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v12, isUniquelyReferenced_nonNull_native, a3, a4);
    *v4 = v16;
    result = 1;
  }

  *a1 = a2;
  return result;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, void (*a5)(void), unint64_t *a6, uint64_t a7)
{
  v10 = result;
  if (a3)
  {
    v11 = a4[3];
    v12 = v11 >> 1;
    if ((v11 >> 1) < a2)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if ((v11 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v12 = a2;
      }
    }
  }

  else
  {
    v12 = a2;
  }

  v13 = a4[2];
  if (v12 <= v13)
  {
    v14 = a4[2];
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    a5(0);
    v15 = swift_allocObject();
    v16 = _swift_stdlib_malloc_size_1(v15);
    v17 = v16 - 32;
    if (v16 < 32)
    {
      v17 = v16 - 25;
    }

    v15[2] = v13;
    v15[3] = 2 * (v17 >> 3);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  if (v10)
  {
    if (v15 != a4 || v15 + 4 >= &a4[v13 + 4])
    {
      memmove(v15 + 4, a4 + 4, 8 * v13);
    }

    a4[2] = 0;
  }

  else
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, a6, a7, MEMORY[0x1E69E62F8]);
    swift_arrayInitWithCopy();
  }

  return v15;
}

void type metadata accessor for _ContiguousArrayStorage<[AnyAccessibilityAction]>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<[AnyAccessibilityAction]>)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(255, &lazy cache variable for type metadata for [AnyAccessibilityAction], &type metadata for AnyAccessibilityAction, MEMORY[0x1E69E62F8]);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<[AnyAccessibilityAction]>);
    }
  }
}

uint64_t closure #1 in static AccessibilityChildBehavior.Combine.combine(children:options:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8)
{
  v91 = a8;
  *(&v101 + 1) = a4;
  v102 = a5;
  *&v101 = a3;
  v99 = a2;
  v11 = MEMORY[0x1E69E7CC0];
  v114 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type AccessibilityProperties.ActionsKey and conformance AccessibilityProperties.ActionsKey();
  AccessibilityProperties.subscript.getter();
  v12 = *(v110[0] + 16);

  v103 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0, v11);
  v100 = a1;
  AccessibilityProperties.subscript.getter();
  v13 = *(v110[0] + 16);
  if (!v13)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v89 = 0;
  v90 = v110[0];
  v14 = v110[0] + 32;
  v92 = xmmword_18CD63400;
  v97 = a7;
  v98 = a6;
  while (1)
  {
    outlined init with copy of AnyAccessibilityAction(v14, v110);
    v109[0] = v101;
    *&v109[1] = v102;
    *(&v109[1] + 1) = a6;
    v15 = v111;
    v16 = v112;
    __swift_project_boxed_opaque_existential_1(v110, v111);
    v17 = *(v16 + 80);
    v18 = lazy protocol witness table accessor for type AccessibilityVoidAction and conformance AccessibilityVoidAction();
    if ((v17(v109, &type metadata for AccessibilityVoidAction, v18, v15, v16) & 1) == 0)
    {
      if (v113 == 1)
      {
        outlined init with copy of AnyAccessibilityAction(v110, v109);
      }

      else
      {
        v22 = v111;
        v23 = v112;
        __swift_project_boxed_opaque_existential_1(v110, v111);
        (*(v23 + 56))(v109, v99, v22, v23);
      }

      v25 = *(v103 + 2);
      v24 = *(v103 + 3);
      if (v25 >= v24 >> 1)
      {
        v103 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v103);
      }

      v26 = v103;
      *(v103 + 2) = v25 + 1;
      v27 = &v26[48 * v25];
      v28 = v109[0];
      v29 = v109[1];
      *(v27 + 57) = *(&v109[1] + 9);
      *(v27 + 2) = v28;
      *(v27 + 3) = v29;
      goto LABEL_4;
    }

    v19 = *a7;
    if (v19 == 1)
    {
      v20 = *(v100 + 24);
    }

    else
    {
      if (v113 == 1)
      {
        v21 = outlined init with copy of AnyAccessibilityAction(v110, v109);
      }

      else
      {
        v52 = v111;
        v53 = v112;
        __swift_project_boxed_opaque_existential_1(v110, v111);
        v21 = (*(v53 + 56))(v109, v99, v52, v53);
      }

      v55 = *(v103 + 2);
      v54 = *(v103 + 3);
      v56 = v100;
      if (v55 >= v54 >> 1)
      {
        v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1, v103);
        v103 = v21;
        v56 = v100;
      }

      v57 = v103;
      *(v103 + 2) = v55 + 1;
      v58 = &v57[48 * v55];
      v59 = v109[0];
      v60 = v109[1];
      *(v58 + 57) = *(&v109[1] + 9);
      *(v58 + 2) = v59;
      *(v58 + 3) = v60;
      *a7 = 1;
      if ((*(v56 + 56) & 1) != 0 || (*(v56 + 40) & 1) == 0)
      {
        outlined destroy of AnyAccessibilityAction(v110);
        a6 = v98;
        goto LABEL_5;
      }

      v20 = *(v56 + 24);
      if (v20)
      {
        if (*(v20 + 16))
        {
          v65 = *(v91 + 24);
          if (v65)
          {
            v96 = &v88;
            v66 = *(v20 + 56);
            v67 = *(v20 + 48);
            v68 = *(v20 + 40);
            *&v109[0] = *(v20 + 32);
            v69 = *&v109[0];
            *(&v109[0] + 1) = v68;
            LOBYTE(v109[1]) = v67;
            LODWORD(v95) = v67;
            *(&v109[1] + 1) = v66;
            MEMORY[0x1EEE9AC00](v21);
            *(&v88 - 2) = v109;
            outlined copy of Text.Storage(v69, v68, v70);

            v71 = v89;
            LODWORD(v94) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v88 - 4), v65);
            v89 = v71;

            outlined consume of Text.Storage(v69, v68, v95);

            if (v94)
            {
              outlined destroy of AnyAccessibilityAction(v110);
              a7 = v97;
              a6 = v98;
              goto LABEL_5;
            }

            a7 = v97;
          }
        }
      }
    }

    memset(v109, 0, 41);
    if (v20 && *(v20 + 16))
    {

      if (v19)
      {
        goto LABEL_23;
      }

LABEL_24:
      v42 = *(v20 + 32);
      v43 = *(v20 + 40);
      v44 = *(v20 + 48);
      v45 = *(v20 + 56);
      outlined copy of Text.Storage(v42, v43, *(v20 + 48));

      v46 = v111;
      v47 = v112;
      __swift_project_boxed_opaque_existential_1(v110, v111);
      (*(v47 + 72))(v108, v42, v43, v44, v45, v100, v99, v46, v47);
      if (*&v108[24])
      {
        outlined consume of Text.Storage(v42, v43, v44);

        _s7SwiftUI25AccessibilityValueStorageVSgWOhTm_0(v109, &lazy cache variable for type metadata for AnyAccessibilityAction?, &type metadata for AnyAccessibilityAction);
        v106 = *&v108[8];
        v48 = *v108;
        v50 = *&v108[24];
        v49 = *&v108[32];
        v51 = v108[40];
      }

      else
      {
        _s7SwiftUI25AccessibilityValueStorageVSgWOhTm_0(v108, &lazy cache variable for type metadata for AnyAccessibilityAction?, &type metadata for AnyAccessibilityAction);
        v61 = v111;
        v62 = v112;
        v94 = v112;
        __swift_project_boxed_opaque_existential_1(v110, v111);
        v63 = *(v62 + 16);
        v95 = v45;
        v96 = v63;
        outlined copy of AccessibilityActionKind.ActionKind(v42, v43, v44, v45);
        v96 = (v96)(v61, v94);
        if (!v96)
        {
          v64 = AccessibilityProperties.images.getter();
          if (*(v64 + 16))
          {
            v96 = *(v64 + 32);
          }

          else
          {

            v96 = 0;
          }
        }

        outlined init with copy of AnyAccessibilityAction(v110, v108);
        v72 = swift_allocObject();
        v73 = *&v108[16];
        *(v72 + 16) = *v108;
        *(v72 + 32) = v73;
        *(v72 + 41) = *&v108[25];
        v74 = v99;
        *(v72 + 64) = v99;
        v75 = swift_allocObject();
        *(v75 + 16) = partial apply for closure #1 in AnyAccessibilityAction.asCombinedAction(name:properties:child:);
        *(v75 + 24) = v72;
        v93 = AccessibilityActionHandlerSeed;
        LODWORD(v94) = v113;
        ++AccessibilityActionHandlerSeed;
        type metadata accessor for AnyAccessibilityAction.ConcreteBase<AccessibilityActionStorage<AccessibilityVoidAction>>();
        v50 = v76;
        v48 = swift_allocObject();
        v77 = v74;
        outlined consume of Text.Storage(v42, v43, v44);
        v78 = v95;

        *(v48 + 16) = v42;
        *(v48 + 24) = v43;
        *(v48 + 32) = v44;
        *(v48 + 40) = v78;
        *(v48 + 48) = 0;
        *(v48 + 56) = 0;
        *(v48 + 64) = 0;
        *(v48 + 72) = 2;
        *(v48 + 80) = 0u;
        *(v48 + 96) = 0u;
        *(v48 + 112) = v96;
        *(v48 + 120) = partial apply for thunk for @escaping @callee_guaranteed () -> (@out AccessibilityActionResult);
        *(v48 + 128) = v75;
        *(v48 + 136) = v93;
        _s7SwiftUI25AccessibilityValueStorageVSgWOhTm_0(v109, &lazy cache variable for type metadata for AnyAccessibilityAction?, &type metadata for AnyAccessibilityAction);
        v51 = v94;
        v49 = &protocol witness table for AnyAccessibilityAction.ConcreteBase<A>;
      }

      *(v109 + 8) = v106;
      *&v109[0] = v48;
      *(&v109[1] + 1) = v50;
      *&v109[2] = v49;
      BYTE8(v109[2]) = v51;
      a7 = v97;
      goto LABEL_43;
    }

    v30 = v111;
    v31 = v112;
    __swift_project_boxed_opaque_existential_1(v110, v111);
    v32 = (*(v31 + 8))(v30, v31);
    if (v35)
    {
      break;
    }

LABEL_43:
    _s7SwiftUI25AccessibilityValueStorageVSgWOcTm_2(v109, v108, &lazy cache variable for type metadata for AnyAccessibilityAction?, &type metadata for AnyAccessibilityAction);
    v79 = *&v108[24];
    _s7SwiftUI25AccessibilityValueStorageVSgWOhTm_0(v108, &lazy cache variable for type metadata for AnyAccessibilityAction?, &type metadata for AnyAccessibilityAction);
    a6 = v98;
    if (!v79)
    {
      if (v113 == 1)
      {
        _s7SwiftUI25AccessibilityValueStorageVSgWOhTm_0(v109, &lazy cache variable for type metadata for AnyAccessibilityAction?, &type metadata for AnyAccessibilityAction);
        outlined init with copy of AnyAccessibilityAction(v110, v108);
      }

      else
      {
        v80 = v111;
        v81 = v112;
        __swift_project_boxed_opaque_existential_1(v110, v111);
        (*(v81 + 56))(v108, v99, v80, v81);
        _s7SwiftUI25AccessibilityValueStorageVSgWOhTm_0(v109, &lazy cache variable for type metadata for AnyAccessibilityAction?, &type metadata for AnyAccessibilityAction);
      }

      v109[0] = *v108;
      v109[1] = *&v108[16];
      *(&v109[1] + 9) = *&v108[25];
    }

    _s7SwiftUI25AccessibilityValueStorageVSgWOcTm_2(v109, v108, &lazy cache variable for type metadata for AnyAccessibilityAction?, &type metadata for AnyAccessibilityAction);
    if (*&v108[24])
    {
      v106 = *v108;
      v107[0] = *&v108[16];
      *(v107 + 9) = *&v108[25];
      outlined init with copy of AnyAccessibilityAction(&v106, &v104);
      v83 = *(v103 + 2);
      v82 = *(v103 + 3);
      if (v83 >= v82 >> 1)
      {
        v103 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v82 > 1), v83 + 1, 1, v103);
      }

      outlined destroy of AnyAccessibilityAction(&v106);
      _s7SwiftUI25AccessibilityValueStorageVSgWOhTm_0(v109, &lazy cache variable for type metadata for AnyAccessibilityAction?, &type metadata for AnyAccessibilityAction);
      v84 = v103;
      *(v103 + 2) = v83 + 1;
      v85 = &v84[48 * v83];
      v86 = *(v105 + 9);
      v87 = v105[0];
      *(v85 + 2) = v104;
      *(v85 + 3) = v87;
      *(v85 + 57) = v86;
    }

    else
    {
      _s7SwiftUI25AccessibilityValueStorageVSgWOhTm_0(v109, &lazy cache variable for type metadata for AnyAccessibilityAction?, &type metadata for AnyAccessibilityAction);
    }

LABEL_4:
    outlined destroy of AnyAccessibilityAction(v110);
LABEL_5:
    v14 += 48;
    if (!--v13)
    {

      return v114;
    }
  }

  v36 = v32;
  v37 = v33;
  v38 = v34;
  v39 = v35;
  type metadata accessor for AccessibilityValueStorage?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text>, MEMORY[0x1E6981148], MEMORY[0x1E69E6F90]);
  v20 = swift_allocObject();
  *(v20 + 16) = v92;
  *(v20 + 32) = v36;
  *(v20 + 40) = v37;
  *(v20 + 48) = v38 & 1;
  *(v20 + 56) = v39;
  if ((v19 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_23:

  result = specialized Array.append<A>(contentsOf:)(v40);
  if (*(v20 + 16))
  {
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t sub_18C096AA8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18C096AE8()
{

  return swift_deallocObject();
}

uint64_t sub_18C096B20()
{
  if (*(v0 + 40) >= 5uLL)
  {
    outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  }

  if (*(v0 + 72) >= 3uLL)
  {
    outlined consume of Text.Storage(*(v0 + 48), *(v0 + 56), *(v0 + 64));
  }

  if (*(v0 + 104))
  {
    outlined consume of Text.Storage(*(v0 + 80), *(v0 + 88), *(v0 + 96));
  }

  return swift_deallocObject();
}

uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay7SwiftUI23AccessibilityPropertiesVGSayAH0H4NodeCGG_SayAH4TextVG_SayAH03AnyH6ActionVGts5NeverOTg503_s7f4UI23hi6VAA0C4j7CSayAA4k9VGSayAA03l2C6m23VGIgngoo_AC_AEtAH_AKts5N11OIegnrzr_TRAjmrUIgngoo_Tf1cn_nTf4ng_n(uint64_t a1, unint64_t a2, uint64_t (*a3)(_BYTE *, id))
{
  v3 = a2;
  v4 = a1;
  v5 = *(a1 + 16);
  v36 = a2 >> 62;
  if (a2 >> 62)
  {
    goto LABEL_42;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    if (i >= v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = i;
    }

    v42 = MEMORY[0x1E69E7CC0];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7 & ~(v7 >> 63), 0);
    if (v7 < 0)
    {
      __break(1u);
LABEL_44:
      result = outlined destroy of AccessibilityProperties(__src);
      goto LABEL_45;
    }

    v31 = i;
    v9 = v42;
    v33 = v5;
    v34 = v3;
    v30 = v4;
    if (v7)
    {
      break;
    }

LABEL_22:
    if (v5 <= v31)
    {
      return v9;
    }

    v4 = v3 & 0xFFFFFFFFFFFFFF8;
    v38 = v3 & 0xC000000000000001;
    v21 = v30 + 288 * v7 + 32;
    while (v7 < v5)
    {
      outlined init with copy of AccessibilityProperties(v21, __src);
      if (v36)
      {
        if (v7 == __CocoaSet.count.getter())
        {
LABEL_37:
          outlined destroy of AccessibilityProperties(__src);
          return v9;
        }
      }

      else if (v7 == *(v4 + 16))
      {
        goto LABEL_37;
      }

      if (v38)
      {
        v22 = MEMORY[0x18D00E9C0](v7, v3);
      }

      else
      {
        if (v7 >= *(v4 + 16))
        {
          goto LABEL_41;
        }

        v22 = *(v3 + 8 * v7 + 32);
      }

      v23 = v22;
      memcpy(__dst, __src, sizeof(__dst));
      v41 = v23;
      v24 = a3(__dst, v23);
      v26 = v25;
      outlined destroy of (AnyToken?, Range<AttributedString.Index>)(__dst, type metadata accessor for (AccessibilityProperties, AccessibilityNode));
      v42 = v9;
      v28 = *(v9 + 16);
      v27 = *(v9 + 24);
      if (v28 >= v27 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1);
        v9 = v42;
      }

      ++v7;
      *(v9 + 16) = v28 + 1;
      v29 = v9 + 16 * v28;
      *(v29 + 32) = v24;
      *(v29 + 40) = v26;
      v21 += 288;
      v5 = v33;
      v3 = v34;
      if (v33 == v7)
      {
        return v9;
      }
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    ;
  }

  v10 = 0;
  v11 = v4 + 32;
  v37 = v3 & 0xFFFFFFFFFFFFFF8;
  v32 = v3 & 0xC000000000000001;
  while (v5 != v10)
  {
    outlined init with copy of AccessibilityProperties(v11, __src);
    if (v36)
    {
      v12 = __CocoaSet.count.getter();
    }

    else
    {
      v12 = *(v37 + 16);
    }

    if (v10 == v12)
    {
      goto LABEL_44;
    }

    if (v32)
    {
      v13 = MEMORY[0x18D00E9C0](v10, v3);
    }

    else
    {
      if (v10 >= *(v37 + 16))
      {
        __break(1u);
        goto LABEL_40;
      }

      v13 = *(v3 + 8 * v10 + 32);
    }

    v14 = v13;
    memcpy(__dst, __src, sizeof(__dst));
    v41 = v14;
    v15 = a3(__dst, v14);
    v17 = v16;
    result = outlined destroy of (AnyToken?, Range<AttributedString.Index>)(__dst, type metadata accessor for (AccessibilityProperties, AccessibilityNode));
    v42 = v9;
    v19 = *(v9 + 16);
    v18 = *(v9 + 24);
    v4 = v19 + 1;
    if (v19 >= v18 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
      v9 = v42;
    }

    ++v10;
    *(v9 + 16) = v4;
    v20 = v9 + 16 * v19;
    *(v20 + 32) = v15;
    *(v20 + 40) = v17;
    v11 += 288;
    v5 = v33;
    v3 = v34;
    if (v7 == v10)
    {
      goto LABEL_22;
    }
  }

LABEL_45:
  __break(1u);
  return result;
}

void type metadata accessor for ([Text], [AnyAccessibilityAction])()
{
  if (!lazy cache variable for type metadata for ([Text], [AnyAccessibilityAction]))
  {
    v0 = MEMORY[0x1E69E62F8];
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(255, &lazy cache variable for type metadata for [Text], MEMORY[0x1E6981148], MEMORY[0x1E69E62F8]);
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(255, &lazy cache variable for type metadata for [AnyAccessibilityAction], &type metadata for AnyAccessibilityAction, v0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for ([Text], [AnyAccessibilityAction]));
    }
  }
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), void (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    type metadata accessor for _ContiguousArrayStorage<AccessibilityNodeAttachment>(0, a5, a6, MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size_1(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 4);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[2 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 16 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    a7(0);
    swift_arrayInitWithCopy();
  }

  return v14;
}

{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    type metadata accessor for _ContiguousArrayStorage<AccessibilityNodeAttachment>(0, a5, a6, MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size_1(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 4);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[2 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 16 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    a7(0);
    swift_arrayInitWithCopy();
  }

  return v14;
}

{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    type metadata accessor for _ContiguousArrayStorage<AccessibilityNodeAttachment>(0, a5, a6, MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size_1(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    a7(0);
    swift_arrayInitWithCopy();
  }

  return v14;
}

uint64_t outlined destroy of AccessibilityValueStorage?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  _sSaySSGMaTm_0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s7SwiftUI25AccessibilityValueStorageVSgWOhTm_0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for AccessibilityValueStorage?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    type metadata accessor for [String](255, &lazy cache variable for type metadata for [String], MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

void type metadata accessor for AccessibilityValueStorage?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t outlined init with copy of AccessibilityValueStorage?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t _s7SwiftUI25AccessibilityValueStorageVSgWOcTm_0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for WidgetAuxiliaryViewMetadata.Gauge?(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s7SwiftUI25AccessibilityValueStorageVSgWOcTm_1(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  _sSaySSGMaTm_0(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s7SwiftUI25AccessibilityValueStorageVSgWOcTm_2(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for AccessibilityValueStorage?(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t specialized MutableCollection<>.sort(by:)(uint64_t *a1, unsigned __int8 a2, char a3, char a4, uint64_t *a5)
{
  NewAByxGyF7SwiftUI36PlatformAccessibilityElementProtocol_So8NSObjectCXc_Tg5_0 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = NewAByxGyF7SwiftUI36PlatformAccessibilityElementProtocol_So8NSObjectCXc_Tg5_0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    NewAByxGyF7SwiftUI36PlatformAccessibilityElementProtocol_So8NSObjectCXc_Tg5_0 = _ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyF7SwiftUI36PlatformAccessibilityElementProtocol_So8NSObjectCXc_Tg5_0(NewAByxGyF7SwiftUI36PlatformAccessibilityElementProtocol_So8NSObjectCXc_Tg5_0);
    *a1 = NewAByxGyF7SwiftUI36PlatformAccessibilityElementProtocol_So8NSObjectCXc_Tg5_0;
  }

  v12 = *(NewAByxGyF7SwiftUI36PlatformAccessibilityElementProtocol_So8NSObjectCXc_Tg5_0 + 16);
  v27 = NewAByxGyF7SwiftUI36PlatformAccessibilityElementProtocol_So8NSObjectCXc_Tg5_0 + 32;
  v32[0] = NewAByxGyF7SwiftUI36PlatformAccessibilityElementProtocol_So8NSObjectCXc_Tg5_0 + 32;
  v32[1] = v12;
  v13 = _minimumMergeRunLength(_:)(v12);
  if (v13 >= v12)
  {
    if (v12 >= 2)
    {
      v16 = -1;
      v17 = 1;
      v18 = NewAByxGyF7SwiftUI36PlatformAccessibilityElementProtocol_So8NSObjectCXc_Tg5_0 + 32;
      v26 = v12;
      do
      {
        v29 = v17;
        v30 = v16;
        v19 = *(v27 + 8 * v17);
        v28 = v18;
        do
        {
          v20 = *v18;
          LOBYTE(v31[0]) = a2;
          v33[0] = a4;
          v21 = v19;
          v22 = v20;
          LOBYTE(v20) = specialized static AccessibilityCore.sorted(lhs:rhs:with:explicitPriorityOnly:parentVisibility:cache:)(v21, v22, v31, a3 & 1, v33, a5);

          if ((v20 & 1) == 0)
          {
            break;
          }

          v23 = *v18;
          v19 = *(v18 + 8);
          *v18 = v19;
          *(v18 + 8) = v23;
          v18 -= 8;
        }

        while (!__CFADD__(v16++, 1));
        v17 = v29 + 1;
        v18 = v28 + 8;
        v16 = v30 - 1;
      }

      while (v29 + 1 != v26);
    }
  }

  else
  {
    v14 = v13;
    if (v12 >= 2)
    {
      type metadata accessor for AccessibilityNode();
      v15 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) = v12 >> 1;
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
    }

    v31[0] = ((v15 & 0xFFFFFFFFFFFFFF8) + 32);
    v31[1] = (v12 >> 1);
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v31, v33, v32, v14, a2, a3 & 1, a4, a5);
    *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

  return specialized ContiguousArray._endMutation()();
}

uint64_t protocol witness for AccessibilityViewModifier.willCreateNode(for:) in conformance AccessibilityContainerModifier(uint64_t a1)
{
  v3 = *(**v1 + 80);

  LOBYTE(a1) = v3(a1);

  return a1 & 1;
}

uint64_t outlined destroy of (AnyToken?, Range<AttributedString.Index>)(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for (AccessibilityProperties, AccessibilityNode)()
{
  if (!lazy cache variable for type metadata for (AccessibilityProperties, AccessibilityNode))
  {
    type metadata accessor for AccessibilityNode();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (AccessibilityProperties, AccessibilityNode));
    }
  }
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  v4 = v3;
  v5 = *v3;
  type metadata accessor for _SetStorage<ToolbarPlacement.Role>(0, a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v19);
      result = Hasher._finalize()();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    v4 = v3;
    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t protocol witness for AccessibilityViewModifier.initialAttachment(for:) in conformance AccessibilityContainerModifier(uint64_t a1)
{
  v3 = *(**v1 + 88);

  v3(a1);
}

uint64_t specialized Array._copyToContiguousArray()(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = __CocoaSet.count.getter();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI22AccessibilitySortCache33_53F8EA6FDE2098E3B48F956069C295B7LLVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  type metadata accessor for _DictionaryStorage<ObjectIdentifier, AccessibilitySortCache>();
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v16 = *(a1 + 72);
  v17 = *(a1 + 88);
  *v18 = *(a1 + 104);
  *&v18[9] = *(a1 + 113);
  v14 = *(a1 + 40);
  v15 = *(a1 + 56);
  result = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v6)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x1E69E7CC8];
  }

  v7 = (a1 + 144);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    v8 = (v3[7] + 96 * result);
    *v8 = v14;
    v8[1] = v15;
    *(v8 + 73) = *&v18[9];
    v8[3] = v17;
    v8[4] = *v18;
    v8[2] = v16;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      return v3;
    }

    v12 = (v7 + 104);
    v4 = *(v7 - 1);
    v16 = v7[2];
    v17 = v7[3];
    *v18 = v7[4];
    *&v18[9] = *(v7 + 73);
    v14 = *v7;
    v15 = v7[1];
    result = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v7 = v12;
    if (v13)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityGeometryUpdater.Size and conformance AccessibilityGeometryUpdater.Size()
{
  result = lazy protocol witness table cache variable for type AccessibilityGeometryUpdater.Size and conformance AccessibilityGeometryUpdater.Size;
  if (!lazy protocol witness table cache variable for type AccessibilityGeometryUpdater.Size and conformance AccessibilityGeometryUpdater.Size)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityGeometryUpdater.Size and conformance AccessibilityGeometryUpdater.Size);
  }

  return result;
}

uint64_t TupleWidgetConfiguration.MakeList.visit<A>(type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  type metadata accessor for TupleWidgetConfiguration();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  AGGraphCreateOffsetAttribute2();
  v8 = *(v4 + 24);
  v34[0] = *(v4 + 8);
  v34[1] = v8;
  v35[0] = *(v4 + 40);
  v9 = v35[0];
  *(v35 + 12) = *(v4 + 52);
  v31 = v34[0];
  v32 = v8;
  v33[0] = v9;
  *(v33 + 12) = *(v35 + 12);
  outlined init with copy of _WidgetInputs(v34, &v38);
  static DynamicPropertyCache.fields(of:)();
  v10 = v38;
  v11 = v39;
  v12 = DWORD1(v39);
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(a3, a4, v13, v14);
  _GraphValue.init(_:)();
  v38 = v10;
  LOBYTE(v39) = v11;
  DWORD1(v39) = v12;
  type metadata accessor for WidgetBodyAccessor();
  swift_getWitnessTable();
  BodyAccessor.makeBody(container:inputs:fields:)();
  outlined consume of DynamicPropertyCache.Fields.Layout();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36[0] = v31;
  v36[1] = v32;
  v37[0] = v33[0];
  *(v37 + 12) = *(v33 + 12);
  v25 = v31;
  v26 = v32;
  *v27 = v33[0];
  *&v27[12] = *(v33 + 12);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = *(AssociatedConformanceWitness + 32);
  outlined init with copy of _WidgetInputs(v36, &v38);
  v17(&v29, v28, &v25, AssociatedTypeWitness, AssociatedConformanceWitness);
  v38 = v25;
  v39 = v26;
  v40[0] = *v27;
  *(v40 + 12) = *&v27[12];
  outlined destroy of _WidgetInputs(&v38);
  v18 = v29;
  v19 = v30;
  v20 = *(v4 + 80);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1, v20);
  }

  v22 = *(v20 + 2);
  v21 = *(v20 + 3);
  if (v22 >= v21 >> 1)
  {
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v20);
  }

  v25 = v31;
  v26 = v32;
  *v27 = v33[0];
  *&v27[12] = *(v33 + 12);
  result = outlined destroy of _WidgetInputs(&v25);
  *(v20 + 2) = v22 + 1;
  v24 = &v20[16 * v22];
  *(v24 + 4) = v18;
  *(v24 + 10) = v19;
  *(v5 + 80) = v20;
  return result;
}

uint64_t get_witness_table_7SwiftUI19WidgetConfigurationRzAA13PreferenceKeyRd__r__lAA15ModifiedContentVyxAA01_E15WritingModifierVyqd__GGAaBHpxAaBHD1__AhA0cdJ0HpyHCHCTm(uint64_t a1, void (*a2)(uint64_t, void, void))
{
  a2(255, *(a1 + 8), *(a1 + 24));
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t closure #1 in ControlWidgetTemplateGraph.instantiateOutputs()(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 88);
  v11[0] = *(a1 + 72);
  v11[1] = v2;
  v12 = *(a1 + 104);
  v8 = v11[0];
  v9 = v2;
  *v10 = v12;
  outlined init with copy of _GraphInputs(v11, v17);
  PreferencesInputs.init(hostKeys:)();
  *&v10[16] = *&v17[0];
  *&v10[24] = DWORD2(v17[0]);
  PreferenceKeys.add(_:)();
  v3 = *(a1 + 176);
  v13[0] = v8;
  v13[1] = v9;
  v14[0] = *v10;
  *(v14 + 12) = *&v10[12];
  v5 = v8;
  v6 = v9;
  v7[0] = *v10;
  *(v7 + 12) = *&v10[12];

  outlined init with copy of _WidgetInputs(v13, v17);
  v3(&v5);

  v15[0] = v5;
  v15[1] = v6;
  v16[0] = v7[0];
  *(v16 + 12) = *(v7 + 12);
  outlined destroy of _WidgetInputs(v15);
  v17[0] = v8;
  v17[1] = v9;
  v18[0] = *v10;
  *(v18 + 12) = *&v10[12];
  return outlined destroy of _WidgetInputs(v17);
}

uint64_t static _PreferenceWritingModifier._makeWidgetConfiguration(modifier:inputs:body:)(uint64_t a1, _OWORD *a2, void (*a3)(uint64_t, __int128 *))
{
  v4 = a2[1];
  v12[0] = *a2;
  v12[1] = v4;
  v6 = *a2;
  v5 = a2[1];
  *v13 = a2[2];
  *&v13[12] = *(a2 + 44);
  v9 = v6;
  v10 = v5;
  *v11 = a2[2];
  *&v11[12] = *(a2 + 44);
  outlined init with copy of _WidgetInputs(v12, &v18);
  PreferencesInputs.remove<A>(_:)();
  v14[0] = v9;
  v14[1] = v10;
  v15[0] = *v11;
  *(v15 + 12) = *&v11[12];
  v18 = v9;
  v19 = v10;
  v20[0] = *v11;
  *(v20 + 12) = *&v11[12];
  v7 = outlined init with copy of _WidgetInputs(v14, v16);
  a3(v7, &v18);
  v16[0] = v18;
  v16[1] = v19;
  v17[0] = v20[0];
  *(v17 + 12) = *(v20 + 12);
  outlined destroy of _WidgetInputs(v16);

  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();

  v18 = v9;
  v19 = v10;
  v20[0] = *v11;
  *(v20 + 12) = *&v11[12];
  return outlined destroy of _WidgetInputs(&v18);
}

uint64_t static WidgetConfiguration._makeWidgetConfiguration(widget:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = a2[1];
  v31 = *a2;
  v32 = v4;
  v33[0] = a2[2];
  *(v33 + 12) = *(a2 + 44);
  static DynamicPropertyCache.fields(of:)();
  v5 = v38;
  v28 = v31;
  v29 = v32;
  v30[0] = v33[0];
  *(v30 + 12) = *(v33 + 12);
  v14 = DWORD1(v38);
  v15 = v3;
  v16 = *(&v37 + 1);
  v17 = v37;
  v34 = v37;
  LOBYTE(v35) = v38;
  DWORD1(v35) = DWORD1(v38);
  outlined init with copy of _WidgetInputs(&v31, &v37);
  static WidgetConfiguration.makeBody(widget:inputs:fields:)();
  v6 = *(&v37 + 1);
  v13 = v37;
  LOBYTE(v3) = v38;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = v28;
  v35 = v29;
  v36[0] = v30[0];
  *(v36 + 12) = *(v30 + 12);
  v25 = v28;
  v26 = v29;
  v27[0] = v30[0];
  *(v27 + 12) = *(v30 + 12);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = *(AssociatedConformanceWitness + 32);
  outlined init with copy of _WidgetInputs(&v34, &v37);
  v9(&v19, v24, &v25, AssociatedTypeWitness, AssociatedConformanceWitness);
  v37 = v25;
  v38 = v26;
  v39[0] = v27[0];
  *(v39 + 12) = *(v27 + 12);
  outlined destroy of _WidgetInputs(&v37);
  v10 = v19;
  v11 = v20;
  if ((v3 & 1) == 0)
  {
    v24[0] = v13;
    v24[1] = v6;
    v23 = v15;
    v19 = v17;
    v20 = v16;
    v21 = v5;
    v22 = v14;
    _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();
  }

  v25 = v28;
  v26 = v29;
  v27[0] = v30[0];
  *(v27 + 12) = *(v30 + 12);
  outlined destroy of _WidgetInputs(&v25);
  result = outlined consume of DynamicPropertyCache.Fields.Layout();
  *a3 = v10;
  *(a3 + 8) = v11;
  return result;
}

uint64_t closure #1 in WidgetHost.readPreference<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a1;
  v17 = a2;
  swift_getAssociatedTypeWitness();
  v3 = type metadata accessor for PreferenceValues.Value();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - v5;
  v7 = *(a1 + 16);
  swift_beginAccess();
  v8 = *(v7 + 80);
  v26[3] = *(v7 + 64);
  v26[4] = v8;
  v26[5] = *(v7 + 96);
  v27 = *(v7 + 112);
  v9 = *(v7 + 32);
  v26[0] = *(v7 + 16);
  v26[1] = v9;
  v26[2] = *(v7 + 48);
  v10 = *(v7 + 96);
  v23 = *(v7 + 80);
  v24 = v10;
  v25 = *(v7 + 112);
  v11 = *(v7 + 32);
  v19 = *(v7 + 16);
  v20 = v11;
  v12 = *(v7 + 64);
  v21 = *(v7 + 48);
  v22 = v12;
  outlined init with copy of GraphHost.Data(v26, v18);
  v13 = GraphHost.Data.hostPreferenceKeys.modify();
  PreferenceKeys.add(_:)();
  v13(v18, 0);
  outlined destroy of GraphHost.Data(v26);
  GraphHost.preferenceValues()();
  v18[0] = v19;
  PreferenceValues.subscript.getter();

  PreferenceValues.Value.value.getter();
  (*(v4 + 8))(v6, v3);
  return $defer #1 <A><A1>() in closure #1 in WidgetHost.readPreference<A>(_:)(v16);
}

uint64_t closure #2 in static ModifiedContent<>._makeWidgetConfiguration(widget:inputs:)(uint64_t a1, _OWORD *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a2[1];
  v12[0] = *a2;
  v12[1] = v8;
  v13[0] = a2[2];
  *(v13 + 12) = *(a2 + 44);
  v11 = a3;
  type metadata accessor for ModifiedContent();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  return (*(a6 + 32))(v10, v12, a4, a6);
}

uint64_t static _PreferenceTransformModifier._makeWidgetConfiguration(modifier:inputs:body:)(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();

  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
}

uint64_t closure #1 in WidgetGraph.init<A>(rootBundle:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1[1];
  v27 = *a1;
  v28 = v7;
  v29[0] = a1[2];
  *(v29 + 12) = *(a1 + 44);
  static DynamicPropertyCache.fields(of:)();
  v8 = v34;
  v9 = v35;
  v10 = DWORD1(v35);
  v24 = v27;
  v25 = v28;
  v26[0] = v29[0];
  *(v26 + 12) = *(v29 + 12);
  v19[2] = a3;
  outlined init with copy of _WidgetInputs(&v27, &v34);
  v11 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a2, closure #1 in Attribute.init(value:)partial apply, v19, a3, MEMORY[0x1E69E73E0], v11, MEMORY[0x1E69E7410], v12);
  _GraphValue.init(_:)();
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(a3, a4, v13, v14);
  v34 = v8;
  LOBYTE(v35) = v9;
  DWORD1(v35) = v10;
  type metadata accessor for WidgetBundleBodyAccessor();
  swift_getWitnessTable();
  BodyAccessor.makeBody(container:inputs:fields:)();
  outlined consume of DynamicPropertyCache.Fields.Layout();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30[0] = v24;
  v30[1] = v25;
  v31[0] = v26[0];
  *(v31 + 12) = *(v26 + 12);
  v20 = v24;
  v21 = v25;
  v22[0] = v26[0];
  *(v22 + 12) = *(v26 + 12);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = *(AssociatedConformanceWitness + 32);
  outlined init with copy of _WidgetInputs(v30, &v34);
  v17(v23, &v20, AssociatedTypeWitness, AssociatedConformanceWitness);
  v32[0] = v20;
  v32[1] = v21;
  v33[0] = v22[0];
  *(v33 + 12) = *(v22 + 12);
  outlined destroy of _WidgetInputs(v32);
  v34 = v24;
  v35 = v25;
  v36[0] = v26[0];
  *(v36 + 12) = *(v26 + 12);
  return outlined destroy of _WidgetInputs(&v34);
}

Swift::Void __swiftcall ControlWidgetTemplateGraph.instantiateOutputs()()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 32);
  AGGraphClearUpdate();
  v3 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  closure #1 in ControlWidgetTemplateGraph.instantiateOutputs()(v1);
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  PreferencesOutputs.subscript.getter();

  swift_beginAccess();
  *(v1 + 132) = AGCreateWeakAttribute();
  swift_endAccess();
}

uint64_t implicit closure #1 in static _PreferenceTransformModifier._makeWidgetConfiguration(modifier:inputs:body:)(int a1, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v16 = a1;
  type metadata accessor for _PreferenceTransformModifier();
  type metadata accessor for _GraphValue();
  v5 = _GraphValue.value.getter();
  v20 = a2;
  v21 = a3;
  KeyPath = swift_getKeyPath();
  v7 = dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
  if (v8)
  {
    v17 = v5;
    v18 = partial apply for closure #1 in Attribute.subscript.getter;
    v19 = KeyPath;
    MEMORY[0x1EEE9AC00](v7);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v13[2] = swift_getFunctionTypeMetadata();
    v14 = type metadata accessor for Map();
    WitnessTable = swift_getWitnessTable();
    v9 = type metadata accessor for Attribute();

    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v17, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_3, v13, v14, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);

    return AssociatedTypeWitness;
  }

  else
  {
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();

    return OffsetAttribute2;
  }
}

__n128 sub_18C0995A8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t static WidgetConfiguration.makeBody(widget:inputs:fields:)()
{
  if (AGTypeID.isValueType.getter())
  {
    type metadata accessor for WidgetConfigurationBodyAccessor();
    swift_getWitnessTable();
    return BodyAccessor.makeBody(container:inputs:fields:)();
  }

  else
  {
    _StringGuts.grow(_:)(31);

    v1 = _typeName(_:qualified:)();
    MEMORY[0x18D00C9B0](v1);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t AccessibilityNode.modifiedAttachment(attachment:token:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage;
  swift_beginAccess();
  v10 = *(v4 + v9);
  v11 = *(v10 + 16);
  if (!v11)
  {
LABEL_18:
    memset(__dst, 0, 317);
    if ((AccessibilityAttachment.isEmpty.getter() & 1) == 0)
    {
      LOBYTE(v12) = 0;
LABEL_20:
      AccessibilityNode.traits.getter(__src);
      v16 = __src[0];
      v17 = __src[1];
      if ((AccessibilityNullableOptionSet<>.subscript.getter() & 1) == 0)
      {
        __src[0] = v16;
        __src[1] = v17;
        if (AccessibilityNullableOptionSet<>.subscript.getter())
        {
          goto LABEL_30;
        }

        if (!*(v4 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_relationshipScope))
        {
          goto LABEL_32;
        }

        v22 = AccessibilityRelationshipScope.nodes(for:of:returning:)(0, v4, 1);
        if (v22 >> 62)
        {
LABEL_36:
          v23 = __CocoaSet.count.getter();
        }

        else
        {
          v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v23)
        {
LABEL_30:
          LOBYTE(__src[0]) = 19;
          v24 = AccessibilityProperties.subscript.getter();
          result = outlined destroy of AnyAccessibilityValue?(__dst, &lazy cache variable for type metadata for AccessibilityAttachmentStorage?);
          if (v24)
          {
            v21 = 0uLL;
            *(a3 + 256) = 0u;
            *(a3 + 272) = 0u;
            *(a3 + 224) = 0u;
            *(a3 + 240) = 0u;
            *(a3 + 192) = 0u;
            *(a3 + 208) = 0u;
            *(a3 + 160) = 0u;
            *(a3 + 176) = 0u;
            *(a3 + 128) = 0u;
            *(a3 + 144) = 0u;
            *(a3 + 96) = 0u;
            *(a3 + 112) = 0u;
            *(a3 + 64) = 0u;
            *(a3 + 80) = 0u;
            *(a3 + 32) = 0u;
            *(a3 + 48) = 0u;
            *a3 = 0u;
            *(a3 + 16) = 0u;
            goto LABEL_24;
          }
        }

        else
        {
LABEL_32:
          outlined destroy of AnyAccessibilityValue?(__dst, &lazy cache variable for type metadata for AccessibilityAttachmentStorage?);
        }

        result = outlined init with copy of AccessibilityAttachment(a1, a3);
        *(a3 + 296) = v12;
        *(a3 + 297) = 0;
        return result;
      }

      if (*(a1 + 8))
      {
        AccessibilityAttachment.init()();
        outlined destroy of AnyAccessibilityValue?(__dst, &lazy cache variable for type metadata for AccessibilityAttachmentStorage?);
        v19 = *a1;
        v18 = *(a1 + 8);
        v20 = *(a1 + 16);

        __src[0] = v19;
        __src[1] = v18;
        LOBYTE(__src[2]) = v20;
        result = memcpy(a3, __src, 0x128uLL);
        *(a3 + 296) = v12;
        *(a3 + 297) = 1;
        return result;
      }
    }

    result = outlined destroy of AnyAccessibilityValue?(__dst, &lazy cache variable for type metadata for AccessibilityAttachmentStorage?);
    v21 = 0uLL;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 112) = 0u;
    *(a3 + 128) = 0u;
    *(a3 + 144) = 0u;
    *(a3 + 160) = 0u;
    *(a3 + 176) = 0u;
    *(a3 + 192) = 0u;
    *(a3 + 208) = 0u;
    *(a3 + 224) = 0u;
    *(a3 + 240) = 0u;
    *(a3 + 256) = 0u;
    *(a3 + 272) = 0u;
LABEL_24:
    *(a3 + 282) = v21;
    return result;
  }

  v12 = v10 + 32;

  v13 = 0;
  while (1)
  {
    if (v13 >= *(v10 + 16))
    {
      __break(1u);
      goto LABEL_36;
    }

    outlined init with copy of AccessibilityAttachmentStorage(v12, __src);
    if (BYTE4(__src[39]) == 255)
    {
      if (v8 == 255)
      {
        goto LABEL_14;
      }

      goto LABEL_4;
    }

    if (v8 == 255)
    {
      goto LABEL_4;
    }

    if ((__src[39] & 0x100000000) == 0)
    {
      break;
    }

    if ((v8 & 1) != 0 && HIDWORD(__src[38]) == v7)
    {
      goto LABEL_14;
    }

LABEL_4:
    ++v13;
    outlined destroy of AccessibilityAttachmentStorage(__src);
    v12 += 320;
    if (v11 == v13)
    {

      goto LABEL_18;
    }
  }

  if ((v8 & 1) != 0 || *(&__src[38] + 4) != v7)
  {
    goto LABEL_4;
  }

LABEL_14:

  memcpy(__dst, __src, 0x13DuLL);
  AccessibilityAttachment.isEmpty.getter();
  result = outlined init with copy of AnyAccessibilityValue?(__dst, __src, &lazy cache variable for type metadata for AccessibilityAttachmentStorage?);
  if (__src[35])
  {
    v15 = __src[38];
    outlined destroy of AccessibilityAttachmentStorage(__src);
    LOBYTE(v12) = 1;
    if (v15)
    {
      goto LABEL_20;
    }

    outlined destroy of AnyAccessibilityValue?(__dst, &lazy cache variable for type metadata for AccessibilityAttachmentStorage?);
    result = outlined init with copy of AccessibilityAttachment(a1, a3);
    *(a3 + 296) = 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static ModifiedContent<>._makeWidgetConfiguration(widget:inputs:)(int *a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  v11 = a2[1];
  v16[0] = *a2;
  v16[1] = v11;
  v17[0] = a2[2];
  *(v17 + 12) = *(a2 + 44);
  v15 = v10;
  type metadata accessor for ModifiedContent();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  *(v12 + 32) = a5;
  *(v12 + 40) = a6;
  *(v12 + 48) = v10;
  (*(a6 + 32))(v14, v16, partial apply for closure #2 in static ModifiedContent<>._makeWidgetConfiguration(widget:inputs:), v12, a4, a6);
}

uint64_t getEnumTagSinglePayload for AccessibilityAttachmentStorage(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 317))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 280);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

void type metadata accessor for (AccessibilityAttachment, hasAttachment: Bool, modified: Bool)()
{
  if (!lazy cache variable for type metadata for (AccessibilityAttachment, hasAttachment: Bool, modified: Bool))
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (AccessibilityAttachment, hasAttachment: Bool, modified: Bool));
    }
  }
}

uint64_t WidgetBundleBodyAccessor.updateBody(of:changed:)(uint64_t result, char a2)
{
  if (a2)
  {
    MEMORY[0x1EEE9AC00](result);
    type metadata accessor for WidgetBundleBodyAccessor();
    swift_getWitnessTable();
    return BodyAccessor.setBody(_:)();
  }

  return result;
}

uint64_t closure #1 in WidgetBundleBodyAccessor.updateBody(of:changed:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v12 - v8;
  (*(a3 + 32))(a2, a3, v7);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v6 + 8))(v9, AssociatedTypeWitness);
}

uint64_t WidgetConfiguration.modifier<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  (*(v12 + 16))(&v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13, a2, v10);
  (*(v6 + 16))(v8, a1, a3);
  return ModifiedContent.init(content:modifier:)();
}

uint64_t WidgetConfiguration.transformPreference<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(a5, a7, a3, a4);

  v11[0] = _PreferenceTransformModifier.init(key:transform:)();
  v11[1] = v8;
  v9 = type metadata accessor for _PreferenceTransformModifier();
  WidgetConfiguration.modifier<A>(_:)(v11, a4, v9);
}

double static ContainerBackground.CustomSpecifiedPreferenceModifier._makeView(modifier:inputs:body:)@<D0>(uint64_t a1@<X1>, void (*a2)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, double *a3@<X8>)
{
  v5 = *(a1 + 48);
  v6 = *(a1 + 16);
  v28 = *(a1 + 32);
  v29 = v5;
  v7 = *(a1 + 48);
  v30 = *(a1 + 64);
  v8 = *(a1 + 16);
  v27[0] = *a1;
  v27[1] = v8;
  v23 = v28;
  v24 = v7;
  v25 = *(a1 + 64);
  v31 = *(a1 + 80);
  v26 = *(a1 + 80);
  v21 = v27[0];
  v22 = v6;
  outlined init with copy of _ViewInputs(v27, v34);
  PreferencesInputs.remove<A>(_:)();
  PreferenceKeys.add(_:)();
  v32[2] = v23;
  v32[3] = v24;
  v32[4] = v25;
  v33 = v26;
  v32[0] = v21;
  v32[1] = v22;
  v15 = v23;
  v16 = v24;
  v17 = v25;
  v18 = v26;
  v13 = v21;
  v14 = v22;
  v9 = outlined init with copy of _ViewInputs(v32, v34);
  a2(&v19, v9, &v13);
  v34[2] = v15;
  v34[3] = v16;
  v34[4] = v17;
  v35 = v18;
  v34[0] = v13;
  v34[1] = v14;
  outlined destroy of _ViewInputs(v34);
  *&v13 = v29;
  DWORD2(v13) = DWORD2(v29);

  v10 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();

  if (v10)
  {
    *&v13 = v19;
    DWORD2(v13) = LODWORD(v20);

    PreferencesOutputs.subscript.getter();

    MEMORY[0x1EEE9AC00](v11);

    PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();
  }

  v15 = v23;
  v16 = v24;
  v17 = v25;
  v18 = v26;
  v13 = v21;
  v14 = v22;
  outlined destroy of _ViewInputs(&v13);
  *a3 = v19;
  result = v20;
  a3[1] = v20;
  return result;
}

uint64_t type metadata accessor for ArchivableDisplayList()
{
  return swift_getGenericMetadata();
}

{
  return __swift_instantiateGenericMetadata();
}

uint64_t base witness table accessor for _AttributeBody in ArchivableDisplayList<A>()
{
  return swift_getWitnessTable();
}

{
  return swift_getWitnessTable();
}

void type metadata accessor for Attribute<DisplayList>()
{
  if (!lazy cache variable for type metadata for Attribute<DisplayList>)
  {
    v0 = type metadata accessor for Attribute();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Attribute<DisplayList>);
    }
  }
}

uint64_t storeEnumTagSinglePayload for AccessibilityAttachmentStorage(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
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
    *(result + 316) = 0;
    *(result + 312) = 0;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 317) = 1;
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
      *(result + 280) = (a2 - 1);
      return result;
    }

    *(result + 317) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t protocol witness for static PreferenceKey.defaultValue.getter in conformance ContainerBackgroundKeys.CustomKey@<X0>(unint64_t *a1@<X8>)
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI23ContainerBackgroundKeysO12AnyCustomKeyV_AC0H4ViewVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI23ContainerBackgroundKeysO12AnyCustomKeyV_AC0H4ViewVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  type metadata accessor for _DictionaryStorage<Edge, Bool>(0, &lazy cache variable for type metadata for _DictionaryStorage<ContainerBackgroundKeys.AnyCustomKey, AnyView>, lazy protocol witness table accessor for type ContainerBackgroundKeys.AnyCustomKey and conformance ContainerBackgroundKeys.AnyCustomKey);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v13 = *(a1 + 32);
  result = specialized __RawDictionaryStorage.find<A>(_:)(*(a1 + 32));
  if (v5)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v6 = (a1 + 48);
  v7 = v1 - 1;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v13;
    *(v3[7] + 8 * result) = *(&v13 + 1);
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!v7)
    {
      goto LABEL_8;
    }

    v11 = *v6++;
    v13 = v11;

    result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
    --v7;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void type metadata accessor for DropDelegate?(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = type metadata accessor for DropDelegate(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void _s7SwiftUI12DropDelegate_pSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6, uint64_t a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    type metadata accessor for DropDelegate?(0, a5, a6, a7, MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size_0(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for DropDelegate(0, a6);
    swift_arrayInitWithCopy();
  }

  return v14;
}

unint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags()
{
  result = lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags;
  if (!lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags);
  }

  return result;
}

void type metadata accessor for [DispatchWorkItemFlags](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _sSay8Dispatch0A13WorkItemFlagsVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t WidgetConfigurationBodyAccessor.updateBody(of:changed:)(uint64_t result, char a2)
{
  if (a2)
  {
    MEMORY[0x1EEE9AC00](result);
    type metadata accessor for WidgetConfigurationBodyAccessor();
    swift_getWitnessTable();
    return BodyAccessor.setBody(_:)();
  }

  return result;
}

uint64_t WidgetConfiguration.preference<A>(key:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a5;
  v22 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v21 - v11;
  v13 = type metadata accessor for _PreferenceWritingModifier();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v21 - v16;
  (*(v10 + 16))(v12, a2, AssociatedTypeWitness, v15);
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(a4, a6, v18, v19);
  _PreferenceWritingModifier.init(key:value:)();
  WidgetConfiguration.modifier<A>(_:)(v17, v22, v13);
  return (*(v14 + 8))(v17, v13);
}

uint64_t WidgetBodyAccessor.updateBody(of:changed:)(uint64_t result, char a2)
{
  if (a2)
  {
    MEMORY[0x1EEE9AC00](result);
    type metadata accessor for WidgetBodyAccessor();
    swift_getWitnessTable();
    return BodyAccessor.setBody(_:)();
  }

  return result;
}

uint64_t TupleWidget.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for TupleWidgetConfiguration();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t $defer #1 <A><A1>() in closure #1 in WidgetHost.readPreference<A>(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_beginAccess();
  v2 = *(v1 + 80);
  v17[3] = *(v1 + 64);
  v17[4] = v2;
  v17[5] = *(v1 + 96);
  v18 = *(v1 + 112);
  v3 = *(v1 + 32);
  v17[0] = *(v1 + 16);
  v17[1] = v3;
  v17[2] = *(v1 + 48);
  v4 = *(v1 + 96);
  v14 = *(v1 + 80);
  v15 = v4;
  v16 = *(v1 + 112);
  v5 = *(v1 + 32);
  v10 = *(v1 + 16);
  v11 = v5;
  v6 = *(v1 + 64);
  v12 = *(v1 + 48);
  v13 = v6;
  outlined init with copy of GraphHost.Data(v17, v9);
  v7 = GraphHost.Data.hostPreferenceKeys.modify();
  PreferenceKeys.remove(_:)();
  v7(v9, 0);
  return outlined destroy of GraphHost.Data(v17);
}

uint64_t WidgetAuxiliaryViewMetadata.Graphic.isSymbol.getter()
{
  v1 = v0;
  v2 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(v1, v7, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of ResolvableTextSegmentAttribute.Value?(v7, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic);
    return 0;
  }

  else
  {
    outlined init with take of WidgetAuxiliaryViewMetadata.Graphic.Named(v7, v4, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named);
    v8 = v4[*(v2 + 28)];
    outlined destroy of ResolvableTextSegmentAttribute.Value?(v4, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named);
  }

  return v8;
}

char *assignWithCopy for WidgetAuxiliaryViewMetadata.Graphic(char *a1, char *a2)
{
  if (a1 != a2)
  {
    outlined destroy of ResolvableTextSegmentAttribute.Value?(a1, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v4 = *a2;
      *a1 = *a2;
      v5 = v4;
    }

    else
    {
      *a1 = *a2;
      *(a1 + 1) = *(a2 + 1);
      v6 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named(0);
      v7 = v6[5];
      v8 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location(0);

      if (swift_getEnumCaseMultiPayload())
      {
        memcpy(&a1[v7], &a2[v7], *(*(v8 - 8) + 64));
      }

      else
      {
        v9 = type metadata accessor for URL();
        (*(*(v9 - 8) + 16))(&a1[v7], &a2[v7], v9);
        swift_storeEnumTagMultiPayload();
      }

      v10 = v6[6];
      v11 = &a1[v10];
      v12 = &a2[v10];
      v13 = *v12;
      v11[4] = v12[4];
      *v11 = v13;
      a1[v6[7]] = a2[v6[7]];
      *&a1[v6[8]] = *&a2[v6[8]];
      v14 = v6[9];
      v15 = &a1[v14];
      v16 = &a2[v14];
      v17 = *v16;
      v15[16] = v16[16];
      *v15 = v17;
      a1[v6[10]] = a2[v6[10]];
      *&a1[v6[11]] = *&a2[v6[11]];
      v18 = v6[12];
      v19 = &a1[v18];
      v20 = &a2[v18];
      v21 = *&a2[v18];
      v22 = v20[12];
      v23 = *(v20 + 2);
      v24 = v20[13];

      outlined copy of ContentTransition.Storage(v21, v23 | (v22 << 32), v24);
      *v19 = v21;
      v19[12] = v22;
      *(v19 + 2) = v23;
      v19[13] = v24;
      v19[14] = v20[14];
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t _SymbolEffectsModifier.EffectsEnvironment.value.getter@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  Value = AGGraphGetValue();
  v5 = *Value;
  v6 = Value[1];
  v28 = *Value;
  v29 = v6;

  result = AGGraphGetValue();
  v8 = *result;
  v9 = *(*result + 16);
  if (v9)
  {
    v20 = a2;

    result = EnvironmentValues.symbolEffects.getter();
    v10 = result;
    v11 = 0;
    v12 = 32;
    while (v11 < *(v8 + 16))
    {
      v13 = *(v8 + v12);
      v14 = *(v8 + v12 + 16);
      *&v23[13] = *(v8 + v12 + 29);
      v22 = v13;
      *v23 = v14;
      memmove(&__dst, (v8 + v12), 0x2DuLL);
      v26 = __dst;
      v27[0] = v25[0];
      *(v27 + 13) = *(v25 + 13);
      outlined init with copy of SymbolEffect(&v22, v21);
      outlined init with copy of SymbolEffect(&__dst, v21);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
      }

      v16 = *(v10 + 2);
      v15 = *(v10 + 3);
      if (v16 >= v15 >> 1)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v10);
      }

      result = outlined destroy of SymbolEffect(&__dst);
      *(v10 + 2) = v16 + 1;
      v17 = &v10[64 * v16];
      *(v17 + 4) = a1;
      *(v17 + 5) = v11;
      v19 = v26;
      v18 = v27[0];
      *(v17 + 77) = *(v27 + 13);
      *(v17 + 3) = v19;
      *(v17 + 4) = v18;
      v12 += 48;
      if (v9 == ++v11)
      {

        result = EnvironmentValues.symbolEffects.setter();
        v5 = v28;
        v6 = v29;
        a2 = v20;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    *a2 = v5;
    a2[1] = v6;
  }

  return result;
}

void storeEnumTagSinglePayload for FocusState.Binding(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
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

uint64_t getEnumTagSinglePayload for FocusState.Binding(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      v15 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((v15 + v6 + 8) & ~v6);
      }

      v16 = *v15;
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void @objc UIHostingController.viewWillDisappear(_:)(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  UIHostingController.viewDidAppear(_:)(a3, &selRef_viewWillDisappear_, specialized UIHostingController._viewWillDisappear(_:));
}

uint64_t specialized UIHostingController._viewWillDisappear(_:)()
{
  v1 = v0;
  v2 = specialized UIHostingController.host.getter();
  specialized _UIHostingView.viewControllerWillDisappear(transitionCoordinator:animated:)([v1 transitionCoordinator]);

  swift_unknownObjectRelease();
  v3 = specialized UIHostingController.toolbarBridge.getter();
  if (v3)
  {
    v4 = v3;
    ToolbarBridge.willDisappear<A>(hostingController:)(v1);
  }

  v5 = specialized UIHostingController.navigationBridge.getter();
  if (v5)
  {
    v6 = v5;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = v6[3];
      ObjectType = swift_getObjectType();
      v9 = v6[24];
      v11[0] = v6[23];
      v11[1] = v9;

      outlined copy of EnvironmentValues?(v11[0]);
      ViewGraphDelegate.environmentOverride.setter(v11, ObjectType, *(*(v7 + 16) + 8));
      swift_unknownObjectRelease();
    }
  }

  result = specialized UIHostingController.alwaysOnBridge.getter();
  if (result)
  {

    AlwaysOnBridge.hostingControllerWillDisappear()();
  }

  return result;
}

Swift::Void __swiftcall FocusBridge.hostingControllerWillDisappear()()
{
  if (FocusBridge.canAcceptFocus.getter())
  {
    v0 = FocusBridge.host.getter();
    if (v0)
    {
      v1 = v0;
      FocusBridge.canAcceptFocus.setter(0);
      FocusBridge.focusedItem.getter(v4);
      if (v4[5] || v4[6] != 1)
      {
        outlined init with take of FocusItem(v4, v5);
        v2 = FocusItem.platformResponder.getter();
        if (!v2)
        {
          v2 = v1;
        }

        v3 = v2;
        [v2 resignFirstResponder];

        outlined destroy of FocusItem(v5);
      }

      else
      {

        outlined destroy of FocusItem?(v4);
      }
    }
  }
}

uint64_t ToolbarBridge.navigationItemWillDisappear<A>(hostingController:)(uint64_t result)
{
  if (*(*(v1 + direct field offset for ToolbarBridge.navigationAdaptor) + 16))
  {
    MEMORY[0x1EEE9AC00](result);

    static Update.ensure<A>(_:)();
  }

  return result;
}

Swift::Void __swiftcall AlwaysOnBridge.hostingControllerWillDisappear()()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    *(v0 + 32) = 0;

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = specialized UIHostingController.host.getter();

      type metadata accessor for _UIHostingView();
      swift_getWitnessTable();
      ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t FocusInteractions.resolve(in:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *v2;
  if (*v2)
  {
    if (v5)
    {
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AllControlsNavigableKey>);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.AllControlsNavigableKey> and conformance EnvironmentPropertyKey<A>();
      if (v4)
      {

        PropertyList.Tracker.value<A>(_:for:)();
      }

      else
      {
        PropertyList.subscript.getter();
      }

      v6 = 34;
      if (!v11)
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    if ((v5 & 2) != 0)
    {
      v6 = 35;
    }

    if ((~v6 & 0x22) == 0 || (v5 & 4) == 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = v6 | 0x22;
    }
  }

  else
  {
    v7 = 32;
  }

  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsFocusEffectEnabledKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsFocusEffectEnabledKey> and conformance EnvironmentPropertyKey<A>();
  if (v4)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    result = PropertyList.subscript.getter();
  }

  if (v12)
  {
    v10 = v7;
  }

  else
  {
    v10 = v7 | 4;
  }

  *a2 = v10;
  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsFocusEffectEnabledKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.IsFocusEffectEnabledKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.IsFocusEffectEnabledKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsFocusEffectEnabledKey>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.IsFocusEffectEnabledKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t UpdateViewFocusItem.updateValue()()
{
  v30 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = v1;
  outlined init with copy of _FocusableModifier(Value, v29);
  v29[64] = v2 & 1;
  v3 = AGGraphGetValue();
  v5 = v4;
  v6 = *v3;
  LODWORD(v27) = *AGGraphGetValue();
  v7 = ViewIdentity.Tracker.update(for:)();
  v8 = v20;
  v9 = AGGraphGetValue();
  v11 = v10;
  v12 = v9[1];
  v27 = *v9;
  v28 = v12;
  if (AGGraphGetOutputValue())
  {
    if ((v11 & 1) == 0)
    {

      if (v7)
      {
        goto LABEL_16;
      }

      goto LABEL_10;
    }

    if ((PropertyList.Tracker.hasDifferentUsedValues(_:)() & 1) == 0)
    {
      if (v7)
      {
        goto LABEL_16;
      }

LABEL_10:
      v13 = 0;
      goto LABEL_11;
    }
  }

  else
  {
  }

  PropertyList.Tracker.reset()();

  EnvironmentValues.init(_:tracker:)();

  v27 = v20;
  v28 = v21;
  if (v7)
  {
    goto LABEL_16;
  }

  v13 = v11 & 1;
LABEL_11:
  outlined init with copy of (value: _FocusableModifier, changed: Bool)(v29, &v20);
  v14 = v26;
  outlined destroy of OnCommandModifier(&v20);
  if ((v14 & 1) == 0 && (v5 & 1) == 0 && (v13 & 1) == 0 && AGGraphGetOutputValue())
  {
    outlined destroy of (value: _FocusableModifier, changed: Bool)(v29);
    goto LABEL_20;
  }

LABEL_16:
  outlined init with copy of (value: _FocusableModifier, changed: Bool)(v29, &v20);
  v15 = v20;
  outlined destroy of OnCommandModifier(&v20);
  if (v15 == 1)
  {
    v16 = EnvironmentValues.isEnabled.getter();
  }

  else
  {
    v16 = 0;
  }

  outlined init with copy of (value: _FocusableModifier, changed: Bool)(v29, &v20);
  v18 = v24;
  v17 = v25;

  outlined destroy of OnCommandModifier(&v20);
  LODWORD(v20) = v8;
  BYTE4(v20) = v16 & 1;
  v21 = v6;
  v22 = v18;
  v23 = v17;
  AGGraphSetOutputValue();
  outlined destroy of (value: _FocusableModifier, changed: Bool)(v29);

LABEL_20:
}

uint64_t outlined init with copy of (value: _FocusableModifier, changed: Bool)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (value: _FocusableModifier, changed: Bool)();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for (value: _FocusableModifier, changed: Bool)()
{
  if (!lazy cache variable for type metadata for (value: _FocusableModifier, changed: Bool))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (value: _FocusableModifier, changed: Bool));
    }
  }
}

uint64_t outlined destroy of OnCommandModifier(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1 + 8);

  return a1;
}

uint64_t outlined destroy of (value: _FocusableModifier, changed: Bool)(uint64_t a1)
{
  type metadata accessor for (value: _FocusableModifier, changed: Bool)();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double IsFocusedEnvironmentChild.value.getter@<D0>(_OWORD *a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = Value[1];
  *&v5 = *Value;
  *(&v5 + 1) = v3;

  if ((*(AGGraphGetValue() + 8) & 8) == 0)
  {
    AGGraphGetValue();
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsFocusedKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsFocusedKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.setter();
    if (v3)
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }
  }

  result = *&v5;
  *a1 = v5;
  return result;
}

uint64_t specialized RangeReplaceableCollection.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = result + 32;
    v4 = *v1;
    do
    {
      v5 = v4[2];
      outlined init with copy of FocusStoreList.Item(v3, v8);
      outlined init with copy of CollectionOfOne<FocusStoreList.Item>(v8, v7);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v5 >= v4[3] >> 1)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v5 + 1, 1, v4);
      }

      swift_arrayDestroy();
      if ((v4[2] - v5) > 1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      else
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      ++v4[2];
      outlined init with copy of FocusStoreList.Item(v7, &v4[9 * v5 + 4]);
      outlined destroy of CollectionOfOne<FocusStoreList.Item>(v7);
      result = outlined destroy of CollectionOfOne<FocusStoreList.Item>(v8);
      v3 += 72;
      --v2;
    }

    while (v2);
    *v1 = v4;
  }

  return result;
}

uint64_t outlined destroy of CollectionOfOne<FocusStoreList.Item>(uint64_t a1)
{
  type metadata accessor for CollectionOfOne<FocusStoreList.Item>(0, &lazy cache variable for type metadata for CollectionOfOne<FocusStoreList.Item>, MEMORY[0x1E69E6BC0]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of CollectionOfOne<FocusStoreList.Item>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CollectionOfOne<FocusStoreList.Item>(0, &lazy cache variable for type metadata for CollectionOfOne<FocusStoreList.Item>, MEMORY[0x1E69E6BC0]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance FocusStoreList.Key(uint64_t a1, void (*a2)(uint64_t *__return_ptr))
{
  a2(&v3);
  specialized RangeReplaceableCollection.append<A>(contentsOf:)(v3);
}

void type metadata accessor for CollectionOfOne<FocusStoreList.Item>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for FocusStoreList.Item);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t KeyboardShortcutBridge.flushKeyCommands(_:)(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC7SwiftUI22KeyboardShortcutBridge_shortcutMap;
  swift_beginAccess();
  v25 = v2;
  v26 = v1;
  v3 = *(v1 + v2);
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v27 = v3;
  if (v7)
  {
    goto LABEL_10;
  }

LABEL_6:
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      *(v26 + v25) = MEMORY[0x1E69E7CC8];

      v22 = v26 + OBJC_IVAR____TtC7SwiftUI22KeyboardShortcutBridge_currentBindings;
      v23 = MEMORY[0x1E69E7CC0];
      *v22 = MEMORY[0x1E69E7CC0];
      *(v22 + 8) = -1;

      v24 = v26 + OBJC_IVAR____TtC7SwiftUI22KeyboardShortcutBridge_updatedBindings;
      *v24 = v23;
      *(v24 + 8) = -1;
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v13 = *(v3 + 56) + 24 * (v12 | (v11 << 6));
        v15 = *v13;
        v14 = *(v13 + 8);
        v16 = *(v13 + 16);
        outlined init with copy of KeyboardShortcutSource?(a1, v30);
        v17 = v31;
        if (v31)
        {
          v18 = v32;
          v19 = v14;
          v20 = (v32 + 16);
          __swift_project_boxed_opaque_existential_1(v30, v31);
          v29 = *v20;
          v21 = v15;

          v29(v21, v19, v16, v17, v18);
          v3 = v27;

          result = __swift_destroy_boxed_opaque_existential_1(v30);
          v10 = v11;
          if (!v7)
          {
            goto LABEL_6;
          }
        }

        else
        {
          result = outlined destroy of KeyboardShortcutSource?(v30);
          v10 = v11;
          if (!v7)
          {
            goto LABEL_6;
          }
        }

LABEL_10:
        v11 = v10;
      }
    }
  }

  __break(1u);
  return result;
}

void type metadata accessor for KeyboardShortcutSource?()
{
  if (!lazy cache variable for type metadata for KeyboardShortcutSource?)
  {
    type metadata accessor for KeyboardShortcutSource();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for KeyboardShortcutSource?);
    }
  }
}

void type metadata accessor for [AccessibilityNode](uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = a4(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void UIKitHostedFocusItemLifecycle.remove()()
{
  v1 = v0[8];
  if (v1)
  {
    v2 = v0[9];
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = v0[12];
    if (*(v4 + 16) && *(v4 + 32) == 1)
    {
      swift_unknownObjectRetain();

      v5 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      type metadata accessor for _ContiguousArrayStorage<UIKitHostedFocusItemLifecycle.Event>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<UIKitHostedFocusItemLifecycle.Event>, &type metadata for UIKitHostedFocusItemLifecycle.Event, MEMORY[0x1E69E6F90]);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_18CD63400;
      *(v5 + 32) = 2;
      *(v5 + 40) = partial apply for closure #1 in UIKitHostedFocusItemLifecycle.remove();
      *(v5 + 48) = v3;
      swift_unknownObjectRetain();
    }

    v0[12] = v5;
  }
}

uint64_t protocol witness for static _AttributeBody._destroySelf(_:) in conformance UIKitHostedFocusItemLifecycle(uint64_t a1)
{
  UIKitHostedFocusItemLifecycle.remove()();
  v2 = *(a1 + 96);
  *(a1 + 96) = MEMORY[0x1E69E7CC0];
  *(swift_allocObject() + 16) = v2;
  static Update.enqueueAction(reason:_:)();
}

uint64_t destroy for ArchivableAppIntentToggle.Box()
{
}

uint64_t destroy for UpdateViewFocusItem()
{
  swift_weakDestroy();
}

uint64_t FocusStateBindingResponder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void partial apply for closure #1 in UIKitHostedFocusItemLifecycle.remove()()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  AnyUIKitHostedFocusItem.move(toParent:)(0, ObjectType, v1);
}

uint64_t @objc UIKitContainerFocusResponderItem.__ivar_destroyer(uint64_t a1)
{
  swift_weakDestroy();
  MEMORY[0x18D011290](a1 + direct field offset for UIKitContainerFocusResponderItem.host);

  return swift_unknownObjectRelease();
}

void protocol witness for static _AttributeBody._destroySelf(_:) in conformance UpdateFocusRingFrame()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = &Strong[OBJC_IVAR____TtC7SwiftUIP33_B6A2D4E72E5722B5103497ADB7778B5F31UIKitFocusableViewResponderItem_frameChangeDetector];
    *v1 = 0;
    v1[4] = 1;
  }
}

uint64_t FocusStoreLocation.__deallocating_deinit()
{
  FocusStoreLocation.deinit();

  return swift_deallocClassInstance();
}

char *FocusStoreLocation.deinit()
{
  v1 = *v0;
  v2 = AnyLocation.deinit();

  swift_weakDestroy();
  (*(*(*(v1 + class metadata base offset for FocusStoreLocation) - 8) + 8))(&v2[*(*v2 + class metadata base offset for FocusStoreLocation + 32)], *(v1 + class metadata base offset for FocusStoreLocation));
  v3 = *(*v2 + class metadata base offset for FocusStoreLocation + 48);
  swift_getTupleTypeMetadata2();
  v4 = type metadata accessor for Optional();
  (*(*(v4 - 8) + 8))(&v2[v3], v4);
  v5 = *(*v2 + class metadata base offset for FocusStoreLocation + 56);
  type metadata accessor for FocusStore.Entry();
  v6 = type metadata accessor for Optional();
  (*(*(v6 - 8) + 8))(&v2[v5], v6);
  return v2;
}

uint64_t DefaultFocusSectionResponder.__deallocating_deinit()
{
  v0 = DefaultLayoutViewResponder.deinit();

  v1 = *(v0 + 304);

  return swift_deallocClassInstance();
}

uint64_t closure #1 in UIKitHostedFocusItemLifecycle.flushQueue()(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result + 48;
    do
    {
      v3 = *(v2 - 8);

      v3(v4);

      v2 += 24;
      --v1;
    }

    while (v1);
  }

  return result;
}

void AnyUIKitHostedFocusItem.move(toParent:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  _s2os6LoggerVSgMaTm_3(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v63 - v13;
  v15 = *(a3 + 8);
  v16 = v15(a2, a3, v12);
  if (v16)
  {
    v17 = v16;

    if (v17 == a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  v18 = (v15)(a2, a3);
  if (v18)
  {
    v19 = v18;
    static Log.focus.getter();
    v20 = type metadata accessor for Logger();
    v70 = *(v20 - 8);
    if ((*(v70 + 48))(v14, 1, v20) == 1)
    {
      _s7SwiftUI9FocusItemVSgWOhTm_2(v14, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720], _s2os6LoggerVSgMaTm_3);
    }

    else
    {
      v68 = v20;
      swift_unknownObjectRetain();
      v67 = v19;
      v21 = v19;
      v69 = v4;
      v22 = v21;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      v65 = v22;

      v66 = v24;
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v72 = v64;
        *v25 = 136315394;
        v26 = specialized UIKitFocusItemDescription.init(_:)(v69);
        v63 = v23;
        v27 = v26;
        v71 = v10;
        v29 = v28;
        swift_unknownObjectRelease();
        v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v72);

        *(v25 + 4) = v30;
        *(v25 + 12) = 2080;
        v31 = v65;
        v32 = _s7SwiftUI25UIKitFocusItemDescriptionVyACyxGxcfCSo6UIViewC_Tt0g5Tf4g_nTm(v31);
        v34 = v33;

        v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v72);
        v10 = v71;

        *(v25 + 14) = v35;
        v36 = v63;
        _os_log_impl(&dword_18BD4A000, v63, v66, "unparenting: %s from %s", v25, 0x16u);
        v37 = v64;
        swift_arrayDestroy();
        MEMORY[0x18D0110E0](v37, -1, -1);
        MEMORY[0x18D0110E0](v25, -1, -1);

        v4 = v69;
      }

      else
      {
        v4 = v69;
        swift_unknownObjectRelease();
      }

      (*(v70 + 8))(v14, v68);
      v19 = v67;
    }

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIFocusSystem);
    v38 = v19;
    v39 = static UIFocusSystem.focusSystem(for:)();

    if (v39)
    {
      [v39 _focusEnvironmentWillDisappear_];
    }
  }

  v40 = *(a3 + 16);
  v41 = a1;
  v40(a1, a2, a3);
  v42 = (v15)(a2, a3);
  if (v42)
  {
    v43 = v42;
    static Log.focus.getter();
    v44 = type metadata accessor for Logger();
    v45 = *(v44 - 8);
    if ((*(v45 + 48))(v10, 1, v44) == 1)
    {
      _s7SwiftUI9FocusItemVSgWOhTm_2(v10, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720], _s2os6LoggerVSgMaTm_3);
    }

    else
    {
      swift_unknownObjectRetain();
      v46 = v10;
      v47 = v43;
      v71 = v46;
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v72 = v70;
        *v50 = 136315394;
        v51 = specialized UIKitFocusItemDescription.init(_:)(v4);
        v53 = v52;
        swift_unknownObjectRelease();
        v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, &v72);

        *(v50 + 4) = v54;
        *(v50 + 12) = 2080;
        v55 = v47;
        v56 = _s7SwiftUI25UIKitFocusItemDescriptionVyACyxGxcfCSo6UIViewC_Tt0g5Tf4g_nTm(v55);
        v58 = v57;

        v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, &v72);

        *(v50 + 14) = v59;
        _os_log_impl(&dword_18BD4A000, v48, v49, "parenting: %s to: %s", v50, 0x16u);
        v60 = v70;
        swift_arrayDestroy();
        MEMORY[0x18D0110E0](v60, -1, -1);
        MEMORY[0x18D0110E0](v50, -1, -1);
      }

      else
      {
        swift_unknownObjectRelease();
      }

      (*(v45 + 8))(v71, v44);
    }

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIFocusSystem);
    v61 = v43;
    v62 = static UIFocusSystem.focusSystem(for:)();

    if (v62)
    {
      [v62 _focusEnvironmentDidAppear_];
    }
  }
}

uint64_t outlined consume of FocusItem.ViewItem?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<UIKitHostedFocusItemLifecycle.Event>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t closure #1 in _UIHostingView.safeAreaInsets.getter()
{
  _UIHostingView.viewGraph.getter();
  GraphHost.environment.getter();

  EnvironmentValues.layoutDirection.getter();
}

void closure #1 in UIHostingController.sizingOptionsDidChange(from:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    UIHostingController.idealSizeDidChange(from:to:)(__PAIR128__(v3, v2), __PAIR128__(v5, v4));
  }
}

uint64_t View.defaultFocus<A>(_:_:priority:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v29 = a6;
  v27 = a7;
  v28 = a4;
  v25 = a1;
  v26 = a2;
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v12;
  v13 = type metadata accessor for FocusState.Binding();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v24 - v15;
  v17 = type metadata accessor for DefaultFocusStateModifier();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v24 - v20;
  v22 = *a3;
  (*(v14 + 16))(v16, v25, v13, v19);
  (*(v9 + 16))(v11, v26, a5);
  v30 = v22;
  DefaultFocusStateModifier.init(binding:value:priority:)(v16, v11, &v30, a5, v21);
  MEMORY[0x18D00A570](v21, v28, v17, v29);
  return (*(v18 + 8))(v21, v17);
}

uint64_t DefaultFocusStateModifier.init(binding:value:priority:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a3;
  v10 = type metadata accessor for FocusState.Binding();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  v11 = type metadata accessor for DefaultFocusStateModifier();
  result = (*(*(a4 - 8) + 32))(a5 + *(v11 + 36), a2, a4);
  *(a5 + *(v11 + 40)) = v9;
  return result;
}

void *initializeWithCopy for DefaultFocusStateModifier(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  v7 = *(a3 + 16);
  v8 = *(*(v7 - 8) + 16);
  v9 = *(v7 - 8) + 16;
  v10 = *(*(v7 - 8) + 80);
  v11 = v5 + v10 + 8;
  v12 = v6 + v10 + 8;

  v8(v11 & ~v10, v12 & ~v10, v7);
  v13 = *(v9 + 48);
  v14 = ((v10 + 16) & ~v10) + v13 + v10;
  v15 = (a1 + v14) & ~v10;
  v16 = (a2 + v14) & ~v10;
  v8(v15, v16, v7);
  *((v13 + 7 + v15) & 0xFFFFFFFFFFFFFFF8) = *((v13 + 7 + v16) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t View.focused(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8[0] = a1;
  v8[1] = a2;
  v9 = a3;
  v7 = 1;
  return View.focused<A>(_:equals:)(v8, &v7, a4, MEMORY[0x1E69E6370], a5, a6);
}

Swift::Void __swiftcall _UIHostingView.setNeedsUpdate()()
{
  v0 = _UIHostingView.base.getter();
  UIHostingViewBase._setNeedsUpdate()();
}

void specialized UIKitFocusableViewResponderItem.didUpdateFocus(in:with:)(void *a1)
{
  v2 = v1;
  _sSay7SwiftUI13ViewResponderCGMaTm_6(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23 - v5;
  static Log.focus.getter();
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    _s7SwiftUI9FocusItemVSgWOhTm_1(v6, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720], _sSay7SwiftUI13ViewResponderCGMaTm_6);
  }

  else
  {
    v9 = v2;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v25 = a1;
      v13 = v12;
      v24 = swift_slowAlloc();
      v26 = v24;
      *v13 = 136315138;
      v14 = v9;
      v15 = _s7SwiftUI25UIKitFocusItemDescriptionVyACyxGxcfCAA0c22FocusableViewResponderE033_B6A2D4E72E5722B5103497ADB7778B5FLLC_Tt0g5Tf4g_n(v14);
      v17 = v16;

      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v26);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_18BD4A000, v10, v11, "focus changed for: %s", v13, 0xCu);
      v19 = v24;
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x18D0110E0](v19, -1, -1);
      v20 = v13;
      a1 = v25;
      MEMORY[0x18D0110E0](v20, -1, -1);
    }

    (*(v8 + 8))(v6, v7);
  }

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v22 = *(Strong + 248);
    if (!v22)
    {
      __break(1u);
      return;
    }

    if ([a1 nextFocusedItem])
    {
      swift_unknownObjectRelease();
    }

    v22();
  }

  UIKitFocusableViewResponderItem.updateFocusedState()();
  type metadata accessor for UIKitFocusableViewResponderItem();
  if (UIFocusItem.isFocused.getter())
  {
    UIKitFocusableViewResponderItem.startTrackingFrameChanges()();
  }

  else
  {
    UIKitFocusableViewResponderItem.stopTrackingFrameChanges()();
  }
}

void UIKitFocusableViewResponderItem.startTrackingFrameChanges()()
{
  v13 = *MEMORY[0x1E69E9840];
  Attribute = AGWeakAttributeGetAttribute();
  if (Attribute != *MEMORY[0x1E698D3F8])
  {
    v2 = Attribute;
    v3 = AGGraphGetAttributeSubgraph();
    IsValid = AGSubgraphIsValid();

    if (IsValid)
    {
      v5 = MEMORY[0x18D00ABE0]();
      v6 = v0 + OBJC_IVAR____TtC7SwiftUIP33_B6A2D4E72E5722B5103497ADB7778B5F31UIKitFocusableViewResponderItem_frameChangeDetector;
      if (*(v0 + OBJC_IVAR____TtC7SwiftUIP33_B6A2D4E72E5722B5103497ADB7778B5F31UIKitFocusableViewResponderItem_frameChangeDetector + 4))
      {
        v7 = AGGraphGetAttributeSubgraph();
        AGGraphClearUpdate();
        v8 = AGSubgraphGetCurrent();
        AGSubgraphSetCurrent();
        swift_unknownObjectWeakInit();
        v12 = v2;
        protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
        lazy protocol witness table accessor for type UpdateFocusRingFrame and conformance UpdateFocusRingFrame();
        v9 = Attribute.init<A>(body:value:flags:update:)();
        outlined destroy of weak FallbackResponderProvider?(v11);
        *v6 = v9;
        *(v6 + 4) = 0;
        AGGraphGetFlags();
        AGGraphSetFlags();
        AGSubgraphSetCurrent();

        AGGraphSetUpdate();
      }

      else
      {
        MEMORY[0x1EEE9AC00](v5);
        MEMORY[0x1EEE9AC00](v10);
        AGGraphMutateAttribute();
        AGGraphGetFlags();
        AGGraphSetFlags();
      }

      static Update.end()();
    }
  }
}

unint64_t lazy protocol witness table accessor for type UpdateFocusRingFrame and conformance UpdateFocusRingFrame()
{
  result = lazy protocol witness table cache variable for type UpdateFocusRingFrame and conformance UpdateFocusRingFrame;
  if (!lazy protocol witness table cache variable for type UpdateFocusRingFrame and conformance UpdateFocusRingFrame)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UpdateFocusRingFrame and conformance UpdateFocusRingFrame);
  }

  return result;
}

uint64_t initializeWithCopy for UpdateFocusRingFrame(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakCopyInit();
  *(result + 8) = *(a2 + 8);
  return result;
}

void @objc _UIHostingView.didUpdateFocus(in:with:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  specialized _UIHostingView.didUpdateFocus(in:with:)(v6);
}

uint64_t specialized _UIHostingView.didUpdateFocus(in:with:)(void *a1)
{

  specialized FocusBridge.didUpdateFocus(in:with:)(a1);
}

uint64_t specialized FocusBridge.didUpdateFocus(in:with:)(void *a1)
{
  result = FocusBridge.host.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    v6 = [a1 nextFocusedItem];
    swift_getObjectType();
    v7 = *(v5 + 8);
    v8 = v4;
    static FocusBridge.focusItem(_:in:)(v6, v8, v7, v26);
    swift_unknownObjectRelease();

    FocusBridge.focusedItem.getter(v18);
    if (v21 || v22 != 1)
    {
      outlined init with take of FocusItem(v18, v23);
      if ((v23[33] & 1) != 0 || v27 || v28 != 1 || (v10 = FocusItem.platformResponder.getter()) == 0)
      {
        outlined destroy of FocusItem(v23);
      }

      else
      {
        v11 = v10;
        v12 = [v10 isFirstResponder];

        outlined destroy of FocusItem(v23);
        if (v12)
        {
LABEL_28:

          return _s7SwiftUI9FocusItemVSgWOhTm_2(v26, &lazy cache variable for type metadata for FocusItem?, &type metadata for FocusItem, MEMORY[0x1E69E6720], type metadata accessor for _ContiguousArrayStorage<UIKitHostedFocusItemLifecycle.Event>);
        }
      }
    }

    else
    {
      _s7SwiftUI9FocusItemVSgWOhTm_2(v18, &lazy cache variable for type metadata for FocusItem?, &type metadata for FocusItem, MEMORY[0x1E69E6720], type metadata accessor for _ContiguousArrayStorage<UIKitHostedFocusItemLifecycle.Event>);
    }

    FocusBridge.focusedItem.getter(v23);
    v9 = specialized static FocusItem.isFocusChange(from:to:)(v23, v26);
    _s7SwiftUI9FocusItemVSgWOhTm_2(v23, &lazy cache variable for type metadata for FocusItem?, &type metadata for FocusItem, MEMORY[0x1E69E6720], type metadata accessor for _ContiguousArrayStorage<UIKitHostedFocusItemLifecycle.Event>);
    if (v9)
    {
      FocusBridge.focusedItem.getter(v23);
      if (v24 || v25 != 1)
      {
        outlined init with copy of FocusItem(v23, v18);
        _s7SwiftUI9FocusItemVSgWOhTm_2(v23, &lazy cache variable for type metadata for FocusItem?, &type metadata for FocusItem, MEMORY[0x1E69E6720], type metadata accessor for _ContiguousArrayStorage<UIKitHostedFocusItemLifecycle.Event>);
        outlined init with copy of FocusItem.Base(v18, v15);
        if (v17)
        {
          outlined destroy of FocusItem(v18);
          outlined destroy of FocusItem.Base(v15);
        }

        else
        {
          v13 = v16;

          v13(0);

          outlined destroy of FocusItem(v18);
        }
      }

      else
      {
        _s7SwiftUI9FocusItemVSgWOhTm_2(v23, &lazy cache variable for type metadata for FocusItem?, &type metadata for FocusItem, MEMORY[0x1E69E6720], type metadata accessor for _ContiguousArrayStorage<UIKitHostedFocusItemLifecycle.Event>);
      }

      outlined init with copy of FocusItem?(v26, v23);
      if (v24 || v25 != 1)
      {
        outlined init with copy of FocusItem.Base(v23, v18);
        if (v20)
        {
          outlined destroy of FocusItem.Base(v18);
        }

        else
        {
          v14 = v19;

          v14(1);
        }

        outlined destroy of FocusItem(v23);
      }

      else
      {
        _s7SwiftUI9FocusItemVSgWOhTm_2(v23, &lazy cache variable for type metadata for FocusItem?, &type metadata for FocusItem, MEMORY[0x1E69E6720], type metadata accessor for _ContiguousArrayStorage<UIKitHostedFocusItemLifecycle.Event>);
      }

      ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
    }

    outlined init with copy of FocusItem?(v26, v23);
    FocusBridge.focusedItem.setter(v23);
    goto LABEL_28;
  }

  return result;
}

uint64_t static FocusBridge.focusItem(_:in:)@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (!result)
  {
    goto LABEL_11;
  }

  swift_getObjectType();
  swift_unknownObjectRetain();
  v7 = UIFocusEnvironment.nearestRenderer()();
  if (!v7)
  {
LABEL_10:
    result = swift_unknownObjectRelease();
LABEL_11:
    *a4 = 0u;
    a4[1] = 0u;
    a4[2] = 0u;
    a4[3] = xmmword_18CD6A6D0;
    return result;
  }

  v8 = v7;
  swift_getObjectType();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
  v9 = dynamic_cast_existential_1_superclass_conditional(v8);
  if (!v9)
  {
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  memset(v19, 0, 48);
  v19[3] = xmmword_18CD6A6D0;
  if (v9 == a2 || [v9 isDescendantOfView_])
  {
    v10 = UIFocusEnvironment.nearestResponder(in:)(a2, a3);
    swift_unknownObjectRelease();
    _s7SwiftUI9FocusItemVSgWOhTm_2(v19, &lazy cache variable for type metadata for FocusItem?, &type metadata for FocusItem, MEMORY[0x1E69E6720], type metadata accessor for _ContiguousArrayStorage<UIKitHostedFocusItemLifecycle.Event>);
    if (v10)
    {
      v11 = swift_conformsToProtocol2();
      if (!v11)
      {
      }
    }

    else
    {
      v11 = 0;
    }

    swift_weakInit();
    v18 = 0;
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    v16[32] = 1;
    v17 = v11;
    swift_weakAssign();

    v16[33] = 0;
  }

  else
  {
    if ((UIFocusEnvironment.contains(_:)() & 1) == 0 || (type metadata accessor for ListTableViewCell(), (v12 = swift_dynamicCastClass()) == 0) || (v13 = *(v12 + OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_host)) == 0 || v13 != a2)
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return outlined init with take of FocusItem?(v19, a4);
    }

    v14 = v13;
    UIHostingViewBase.viewGraph.getter();

    v15 = MEMORY[0x1E69E6720];
    type metadata accessor for _ContiguousArrayStorage<UIKitHostedFocusItemLifecycle.Event>(0, &lazy cache variable for type metadata for FocusItem?, &type metadata for FocusItem, MEMORY[0x1E69E6720]);
    static Update.dispatchImmediately<A>(reason:_:)();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    _s7SwiftUI9FocusItemVSgWOhTm_2(v19, &lazy cache variable for type metadata for FocusItem?, &type metadata for FocusItem, v15, type metadata accessor for _ContiguousArrayStorage<UIKitHostedFocusItemLifecycle.Event>);
  }

  outlined init with take of FocusItem?(v16, v19);
  return outlined init with take of FocusItem?(v19, a4);
}

id UIFocusEnvironment.nearestRenderer()()
{
  swift_unknownObjectRetain_n();
  swift_getObjectType();
  if (swift_conformsToProtocol2() && v0)
  {
LABEL_3:
    swift_unknownObjectRelease();
  }

  else
  {
    while (1)
    {
      swift_unknownObjectRelease();
      v0 = [v0 parentFocusEnvironment];
      swift_unknownObjectRelease();
      if (!v0)
      {
        break;
      }

      swift_unknownObjectRetain();
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        goto LABEL_3;
      }
    }
  }

  return v0;
}

uint64_t dynamic_cast_existential_1_superclass_conditional(uint64_t a1)
{
  result = swift_dynamicCastMetatype();
  if (result)
  {
    if (swift_conformsToProtocol2())
    {
      return a1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

_BYTE *initializeWithTake for Button(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v8 | 7) + 1;
  v10 = &a1[v9] & ~(v8 | 7);
  v11 = (&a2[v9] & ~(v8 | 7));
  v12 = *(v7 + 64);
  v13 = v12 + ((v8 + 75) & ~v8);
  if ((v13 + 1) > 0x30)
  {
    v14 = v13 + 1;
  }

  else
  {
    v14 = 48;
  }

  v15 = v11[v14];
  v16 = v15 - 3;
  if (v15 < 3)
  {
    goto LABEL_18;
  }

  if (v14 <= 3)
  {
    v17 = v14;
  }

  else
  {
    v17 = 4;
  }

  if (v17 <= 1)
  {
    if (!v17)
    {
      goto LABEL_18;
    }

    v18 = *v11;
  }

  else if (v17 == 2)
  {
    v18 = *v11;
  }

  else if (v17 == 3)
  {
    v18 = *v11 | (v11[2] << 16);
  }

  else
  {
    v18 = *v11;
  }

  v19 = (v18 | (v16 << (8 * v14))) + 3;
  v15 = v18 + 3;
  if (v14 < 4)
  {
    v15 = v19;
  }

LABEL_18:
  if (v15 == 2)
  {
    v31 = *v11;
    v32 = *(v11 + 2);
    *(v10 + 16) = *(v11 + 1);
    *(v10 + 32) = v32;
    *v10 = v31;
    v30 = 2;
  }

  else if (v15 == 1)
  {
    v20 = ~v8;
    v21 = *v11;
    v22 = *(v11 + 1);
    *(v10 + 31) = *(v11 + 31);
    *v10 = v21;
    *(v10 + 16) = v22;
    v23 = (v10 + 42) & 0xFFFFFFFFFFFFFFF8;
    v24 = (v11 + 42) & 0xFFFFFFFFFFFFFFF8;
    v25 = *v24;
    v26 = *(v24 + 16);
    *(v23 + 31) = *(v24 + 31);
    *v23 = v25;
    *(v23 + 16) = v26;
    v27 = v8 + 35;
    v28 = (v27 + v23) & v20;
    v29 = (v27 + v24) & v20;
    (*(v7 + 32))(v28, v29, v6);
    *(v28 + v12) = *(v29 + v12);
    v30 = 1;
  }

  else
  {
    v30 = 0;
    *v10 = *v11;
  }

  *(v10 + v14) = v30;
  v33 = *(*(a3 + 16) - 8);
  (*(v33 + 32))((v14 + *(v33 + 80) + 1 + v10) & ~*(v33 + 80), &v11[v14 + 1 + *(v33 + 80)] & ~*(v33 + 80));
  return a1;
}

void partial apply for closure #1 in UIKitHostedFocusItemLifecycle.insert()()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  ObjectType = swift_getObjectType();
  (*(v1 + 40))(v2, ObjectType, v1);
  AnyUIKitHostedFocusItem.move(toParent:)(v3, ObjectType, v1);
}

void protocol witness for AnyUIKitHostedFocusItem.host.setter in conformance UIKitContainerFocusResponderItem<A>(void *a1)
{
  specialized UIKitContainerFocusResponderItem.host.setter();
}

uint64_t objectdestroy_22Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t FocusViewGraph.update(graph:)(uint64_t result)
{
  v2 = result;
  if (*(v1 + 16) == 1)
  {
    *(v1 + 16) = 0;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v3 = *(v2 + 208);
      ObjectType = swift_getObjectType();
      v5 = type metadata accessor for FocusHost();
      (*(v3 + 16))(&v10, v5, v5, ObjectType, v3);
      result = swift_unknownObjectRelease();
      if (v10)
      {
        v6 = v11;
        v7 = swift_getObjectType();
        (*(v6 + 56))(v7, v6);
        result = swift_unknownObjectRelease();
      }
    }
  }

  if (*(v1 + 18) == 1)
  {
    result = *(v1 + 12);
    if (result != *MEMORY[0x1E698D3F8])
    {
      *(v1 + 18) = 0;
      v8 = AGCreateWeakAttribute();
      v9 = *(v1 + 17);
      v10 = v8;
      LOBYTE(v11) = v9;
      v12 = 1;
      lazy protocol witness table accessor for type FocusViewGraph.IsFocusSystemEnabledMutation and conformance FocusViewGraph.IsFocusSystemEnabledMutation();
      default argument 1 of GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)();
      return GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)();
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FocusViewGraph.IsFocusSystemEnabledMutation and conformance FocusViewGraph.IsFocusSystemEnabledMutation()
{
  result = lazy protocol witness table cache variable for type FocusViewGraph.IsFocusSystemEnabledMutation and conformance FocusViewGraph.IsFocusSystemEnabledMutation;
  if (!lazy protocol witness table cache variable for type FocusViewGraph.IsFocusSystemEnabledMutation and conformance FocusViewGraph.IsFocusSystemEnabledMutation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FocusViewGraph.IsFocusSystemEnabledMutation and conformance FocusViewGraph.IsFocusSystemEnabledMutation);
  }

  return result;
}

uint64_t protocol witness for GraphMutation.apply() in conformance FocusViewGraph.IsFocusSystemEnabledMutation()
{
  result = AGWeakAttributeGetAttribute();
  if (result != *MEMORY[0x1E698D3F8])
  {
    return AGGraphSetValue();
  }

  return result;
}

void @objc UIHostingController.viewDidDisappear(_:)(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  UIHostingController.viewDidAppear(_:)(a3, &selRef_viewDidDisappear_, specialized UIHostingController._viewDidDisappear(_:));
}

void UpdateFocusRingFrame.updateValue()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    type metadata accessor for UIKitFocusableViewResponderItem();
    if ((UIFocusItem.isFocused.getter() & 1) != 0 && (v1 = swift_unknownObjectWeakLoadStrong()) != 0 && (v2 = v1, v3 = [v1 window], v2, v3) && (v4 = objc_msgSend(v3, sel_windowScene), v3, v4) && (v5 = objc_msgSend(v4, sel__focusSystemSceneComponent), v4, v5))
    {
      AGGraphRegisterDependency();
      v6 = &v13[OBJC_IVAR____TtC7SwiftUIP33_B6A2D4E72E5722B5103497ADB7778B5F31UIKitFocusableViewResponderItem_contentPath];
      v7 = *&v13[OBJC_IVAR____TtC7SwiftUIP33_B6A2D4E72E5722B5103497ADB7778B5F31UIKitFocusableViewResponderItem_contentPath];
      v8 = *&v13[OBJC_IVAR____TtC7SwiftUIP33_B6A2D4E72E5722B5103497ADB7778B5F31UIKitFocusableViewResponderItem_contentPath + 8];
      v9 = *&v13[OBJC_IVAR____TtC7SwiftUIP33_B6A2D4E72E5722B5103497ADB7778B5F31UIKitFocusableViewResponderItem_contentPath + 16];
      v10 = *&v13[OBJC_IVAR____TtC7SwiftUIP33_B6A2D4E72E5722B5103497ADB7778B5F31UIKitFocusableViewResponderItem_contentPath + 24];
      *v6 = 0u;
      *(v6 + 1) = 0u;
      v11 = v6[32];
      v6[32] = -1;
      outlined consume of Path?(v7, v8, v9, v10, v11);
      [v5 _requestFocusEffectUpdateToEnvironment_];

      v12 = v5;
    }

    else
    {
      v12 = v13;
    }
  }
}

uint64_t outlined consume of Path?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 != 0xFF)
  {
    return outlined consume of Path.Storage(a1, a2, a3, a4, a5);
  }

  return a1;
}

Swift::Void __swiftcall UIHostingController.idealSizeDidChange(from:to:)(CGSize from, CGSize to)
{
  v3 = v2;
  height = from.height;
  width = from.width;
  v6 = [v2 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_22;
  }

  v7 = v6;
  [v6 effectiveUserInterfaceLayoutDirection];

  v8 = *&v3[direct field offset for UIHostingController.host];
  _UIHostingView.viewGraph.getter();

  GraphHost.environment.getter();

  EnvironmentValues.pixelLength.getter();
  v10 = v9;

  v11 = [v3 view];
  if (!v11)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v12 = v11;
  [v11 safeAreaInsets];

  CGSize.inset(by:)();
  v14 = v10 * ceil(v13 / v10);
  v16 = v10 * ceil(v15 / v10);
  v17 = ceil(v13);
  v18 = ceil(v15);
  if (v10 == 1.0)
  {
    v19 = v18;
  }

  else
  {
    v19 = v16;
  }

  if (v10 == 1.0)
  {
    v20 = v17;
  }

  else
  {
    v20 = v14;
  }

  v21 = direct field offset for UIHostingController.sizingOptions;
  swift_beginAccess();
  if (!*&v3[v21])
  {
    goto LABEL_23;
  }

  if (v20 != width || v19 != height)
  {
    v23 = direct field offset for UIHostingController.sizingOptions;
    swift_beginAccess();
    if (v3[v23])
    {
      v24 = *&v3[direct field offset for UIHostingController.host];
      _UIHostingView.renderingPhase.getter(&v28);

      if (v28 == 1)
      {
        v25 = swift_allocObject();
        *(v25 + 16) = v3;
        *(v25 + 24) = v20;
        *(v25 + 32) = v19;
        v26 = v3;
        onNextMainRunLoop(do:)();
      }

      else
      {
        [v3 setPreferredContentSize_];
      }
    }

    v27 = direct field offset for UIHostingController.sizingOptions;
    swift_beginAccess();
    if ((v3[v27] & 2) != 0)
    {
      [*&v3[direct field offset for UIHostingController.host] invalidateIntrinsicContentSize];
    }
  }
}

uint64_t sub_18C09FE64()
{

  return swift_deallocObject();
}

uint64_t _UIHostingView.renderingPhase.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = UIHostingViewBase.viewGraph.getter();
  swift_beginAccess();
  v3 = *(v2 + 114);

  *a1 = v3;
  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance UIKitSystemButtonConfigurationModifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = lazy protocol witness table accessor for type UIKitSystemButtonConfigurationModifier and conformance UIKitSystemButtonConfigurationModifier(&lazy protocol witness table cache variable for type UIKitSystemButtonConfigurationModifier and conformance UIKitSystemButtonConfigurationModifier, type metadata accessor for UIKitSystemButtonConfigurationModifier);

  return MEMORY[0x1EEDDE4A8](a1, a2, a3, a4, a5, v10);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ResolvedUIKitButtonBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedUIKitButtonBody and conformance ResolvedUIKitButtonBody();

  return MEMORY[0x1EEDDE4C8](a1, a2, a3, v6);
}

uint64_t UpdateFocusableViewResponder.updateValue()()
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 16);
  Value = AGGraphGetValue();
  v3 = *Value;
  v4 = *(Value + 4);
  v5 = *(Value + 1);
  v6 = *(Value + 2);
  v7 = *(Value + 3);
  v8 = v4 == 0;
  v9 = 0x100000000;
  if (v8)
  {
    v9 = 0;
  }

  v10 = *(v1 + 232);
  v11 = *(v1 + 240);
  v12 = *(v1 + 248);
  v13 = *(v1 + 256);
  *(v1 + 232) = v9 | v3;
  *(v1 + 240) = v5;
  *(v1 + 248) = v6;
  *(v1 + 256) = v7;

  outlined copy of FocusItem.ViewItem?(v10, v11, v12);
  outlined consume of FocusItem.ViewItem?(v10, v11, v12);
  v23 = v10;
  v24 = v11;
  v25 = v12;
  v26 = v13;
  FocusableViewResponder.baseItem.didset(&v23);
  outlined consume of FocusItem.ViewItem?(v10, v11, v12);
  _sSay7SwiftUI13ViewResponderCGMaTm_6(0, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]);

  AGGraphGetValue();
  if (v14)
  {

    MultiViewResponder.children.setter();
  }

  v15 = AGGraphGetValue();
  v17 = v16;
  v18 = v15[1];
  v27 = *v15;
  v28 = v18;
  if (!AGGraphGetOutputValue())
  {

    goto LABEL_11;
  }

  if ((v17 & 1) == 0)
  {

    goto LABEL_21;
  }

  if (PropertyList.Tracker.hasDifferentUsedValues(_:)())
  {
LABEL_11:
    PropertyList.Tracker.reset()();

    EnvironmentValues.init(_:tracker:)();
    v19 = v23;
    v20 = v24;

    v27 = v19;
    v28 = v20;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.KeyPressHandlersKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.KeyPressHandlersKey> and conformance EnvironmentPropertyKey<A>();
    if (v20)
    {

      PropertyList.Tracker.value<A>(_:for:)();
    }

    else
    {
      PropertyList.subscript.getter();
    }

    *(v1 + 224) = v23;

    *(v1 + 268) = EnvironmentValues.isEnabled.getter() & 1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsPlatformFocusSystemEnabled>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsPlatformFocusSystemEnabled> and conformance EnvironmentPropertyKey<A>();
    if (v20)
    {

      PropertyList.Tracker.value<A>(_:for:)();

      *(v1 + 305) = v23;
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_focusGroupID>);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_focusGroupID> and conformance EnvironmentPropertyKey<A>();

      PropertyList.Tracker.value<A>(_:for:)();
    }

    else
    {
      PropertyList.subscript.getter();
      *(v1 + 305) = v23;
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_focusGroupID>);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_focusGroupID> and conformance EnvironmentPropertyKey<A>();
      PropertyList.subscript.getter();
    }

    swift_beginAccess();
    outlined assign with take of FocusGroupIdentifier?(&v23, v1 + 312);
    swift_endAccess();
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_focusGroupPriority>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_focusGroupPriority> and conformance EnvironmentPropertyKey<A>();
    if (v20)
    {

      PropertyList.Tracker.value<A>(_:for:)();
    }

    else
    {
      PropertyList.subscript.getter();
    }

    *(v1 + 352) = v23;
  }

LABEL_21:
  if (!AGGraphGetOutputValue())
  {
    _s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMaTm_3(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_18CD69590;
    *(v21 + 32) = v1;
    v23 = v21;

    AGGraphSetOutputValue();
  }
}

uint64_t outlined copy of FocusItem.ViewItem?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t initializeWithCopy for FocusItem.ViewItem(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;

  return a1;
}

unint64_t lazy protocol witness table accessor for type FocusItemFrame and conformance FocusItemFrame()
{
  result = lazy protocol witness table cache variable for type FocusItemFrame and conformance FocusItemFrame;
  if (!lazy protocol witness table cache variable for type FocusItemFrame and conformance FocusItemFrame)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FocusItemFrame and conformance FocusItemFrame);
  }

  return result;
}

uint64_t UIKitHostedFocusItemLifecycle.insert()()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = v0[8];
    if (v3)
    {
      v4 = v0[9];
      swift_unknownObjectRetain();
      UIKitHostedFocusItemLifecycle.frame.getter();
      v5 = AGCreateWeakAttribute();
      v6 = v5;
      v7 = HIDWORD(v5);
      v8 = swift_allocObject();
      *(v8 + 16) = v3;
      *(v8 + 24) = v4;
      *(v8 + 32) = v6;
      *(v8 + 36) = v7;
      *(v8 + 40) = v2;
      v9 = v0[12];
      swift_unknownObjectRetain();
      v10 = v2;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
      }

      v12 = *(v9 + 2);
      v11 = *(v9 + 3);
      if (v12 >= v11 >> 1)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v9);
      }

      swift_unknownObjectRelease();

      *(v9 + 2) = v12 + 1;
      v13 = &v9[24 * v12];
      result = 1;
      v13[32] = 1;
      *(v13 + 5) = partial apply for closure #1 in UIKitHostedFocusItemLifecycle.insert();
      *(v13 + 6) = v8;
      v0[12] = v9;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t UIKitHostedFocusItemLifecycle.frame.getter()
{
  if (*(v0 + 60) != 1)
  {
    return *(v0 + 56);
  }

  v1 = *(v0 + 48);
  AGGraphClearUpdate();
  v2 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for CGRect(0);
  lazy protocol witness table accessor for type FocusItemFrame and conformance FocusItemFrame();
  v3 = Attribute.init<A>(body:value:flags:update:)();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  result = v3;
  *(v0 + 56) = v3;
  *(v0 + 60) = 0;
  return result;
}

double static DefaultFocusStateModifier._makeView(modifier:inputs:body:)@<D0>(int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(__int128 *__return_ptr)@<X2>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v46 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 48);
  v8 = *(a2 + 16);
  v42 = *(a2 + 32);
  v43 = v7;
  v9 = *(a2 + 48);
  v44 = *(a2 + 64);
  v10 = *(a2 + 16);
  v40 = *a2;
  v41 = v10;
  v11 = *(a2 + 64);
  v37 = v9;
  v38 = v11;
  v34 = v40;
  v12 = *a1;
  v45 = *(a2 + 80);
  v39 = *(a2 + 80);
  v35 = v8;
  v36 = v42;
  a3(&v31);
  *&v34 = v43;
  DWORD2(v34) = DWORD2(v43);
  if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
  {
    type metadata accessor for DefaultFocusSectionResponder(0);
    v13 = swift_allocObject();
    outlined init with copy of _ViewInputs(&v40, &v34);
    ViewTransform.init()();
    v14 = v42;
    v37 = v43;
    v38 = v44;
    v15 = v41;
    v34 = v40;
    *(v13 + 264) = 0;
    *(v13 + 272) = 0;
    *(v13 + 280) = 1;
    *(v13 + 304) = 0;
    *(v13 + 292) = 0;
    *(v13 + 284) = 0;
    v39 = v45;
    v35 = v15;
    v36 = v14;
    v16 = DefaultLayoutViewResponder.init(inputs:)();
    LODWORD(v32[0]) = v12;
    type metadata accessor for DefaultFocusStateModifier();
    type metadata accessor for _GraphValue();
    _GraphValue.value.getter();
    closure #1 in static DefaultFocusStateModifier._makeView(modifier:inputs:body:)(1);
    AGGraphCreateOffsetAttribute2();
    swift_beginAccess();
    *(v16 + 284) = AGCreateWeakAttribute();
    swift_endAccess();
    LODWORD(v34) = v12;
    _GraphValue.value.getter();
    if (*(*(type metadata accessor for FocusState.Binding() - 8) + 64))
    {
      closure #2 in static DefaultFocusStateModifier._makeView(modifier:inputs:body:)(1);
    }

    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    LODWORD(v32[0]) = v12;
    _GraphValue.value.getter();
    if (*(*(a4 - 8) + 64))
    {
      closure #3 in static DefaultFocusStateModifier._makeView(modifier:inputs:body:)(1, a4);
    }

    v18 = AGGraphCreateOffsetAttribute2();
    *&v34 = __PAIR64__(v18, OffsetAttribute2);
    MEMORY[0x1EEE9AC00](v18);
    DefaultFocusResponder = type metadata accessor for QueryDefaultFocusResponder();
    WitnessTable = swift_getWitnessTable();
    type metadata accessor for BaseFocusResponder?(0, &lazy cache variable for type metadata for Attribute<BaseFocusResponder?>, type metadata accessor for BaseFocusResponder?, MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v34, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_41, &v28, DefaultFocusResponder, MEMORY[0x1E69E73E0], v19, MEMORY[0x1E69E7410], v20);
    swift_beginAccess();
    *(v16 + 292) = AGCreateWeakAttribute();
    swift_endAccess();
    v37 = v43;
    v38 = v44;
    v21 = HIDWORD(v43);
    v39 = v45;
    v34 = v40;
    v35 = v41;
    v36 = v42;
    v22 = _ViewInputs.animatedPosition()();
    v37 = v43;
    v38 = v44;
    v39 = v45;
    v34 = v40;
    v35 = v41;
    v36 = v42;
    swift_beginAccess();
    v23 = CachedEnvironment.animatedSize(for:)();
    swift_endAccess();
    v34 = v31;

    v24 = _ViewOutputs.viewResponders()();

    v37 = v43;
    v38 = v44;
    v39 = v45;
    v34 = v40;
    v35 = v41;
    v36 = v42;
    v25 = _ViewInputs.isEnabled.getter();
    *&v34 = __PAIR64__(v22, v21);
    *(&v34 + 1) = __PAIR64__(v24, v23);
    LODWORD(v35) = v25;
    *(&v35 + 1) = v16;
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    type metadata accessor for BaseFocusResponder?(0, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type DefaultFocusSectionResponderFilter and conformance DefaultFocusSectionResponderFilter();

    v26 = Attribute.init<A>(body:value:flags:update:)();

    v32[2] = v42;
    v32[3] = v43;
    v32[4] = v44;
    v33 = v45;
    v32[0] = v40;
    v32[1] = v41;
    outlined init with copy of _ViewInputs(&v40, &v34);
    UIKitHostedFocusItemLifecycle.init(inputs:responders:)(v32, v26, &v34);
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type UIKitHostedFocusItemLifecycle and conformance UIKitHostedFocusItemLifecycle();
    Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of UIKitHostedFocusItemLifecycle(&v34);
    AGGraphSetFlags();
    LOBYTE(v34) = 0;
    PreferencesOutputs.subscript.setter();
  }

  *a5 = v31;
  result = *(&v31 + 1);
  a5[1] = *(&v31 + 1);
  return result;
}

uint64_t _UIHostingView._preferredFocusEnvironments.getter()
{
  specialized _UIHostingView.focusBridge.getter();

  v0 = FocusBridge.requestedFocusEnvironments.getter();

  v1 = type metadata accessor for _UIHostingView();
  if (UIKitContainerFocusItem.defaultFocusItemsContainer()(v1, &protocol witness table for _UIHostingView<A>))
  {
    v2 = swift_unknownObjectRetain();
    MEMORY[0x18D00CC30](v2);
    if (*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_unknownObjectRelease();
  }

  else
  {
    specialized _UIHostingView.focusBridge.getter();

    v3 = FocusBridge.preferredFocusEnvironments.getter();

    specialized Array.append<A>(contentsOf:)(v3);
  }

  return v0;
}

uint64_t FocusBridge.requestedFocusEnvironments.getter()
{
  v1 = *(v0 + 160);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  *(v0 + 160) = 0;
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2 || (v3 = [objc_opt_self() viewControllerForView_]) == 0)
  {
    swift_unknownObjectRetain();
    v3 = v1;
  }

  swift_getObjectType();
  v4 = swift_conformsToProtocol2();
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = v4;
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 64);
    swift_unknownObjectRetain();
    v8(ObjectType, v6);
    swift_unknownObjectRelease();
  }

  type metadata accessor for _ContiguousArrayStorage<UIKitHostedFocusItemLifecycle.Event>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_18CD69590;
  *(v9 + 32) = v3;
  swift_unknownObjectRelease();
  return v9;
}

Class @objc _UIHostingView._childContainers.getter(void *a1, uint64_t a2, void (*a3)(void), unint64_t *a4)
{
  v6 = a1;
  a3();

  type metadata accessor for _UISceneBSActionHandler(0, a4);
  v7.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v7.super.isa;
}

uint64_t outlined init with copy of WeakBox<UIView>(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI7WeakBoxVySo6UIViewCGMaTm_2(0, &lazy cache variable for type metadata for WeakBox<UIView>, &lazy cache variable for type metadata for UIView, 0x1E69DD250, type metadata accessor for NSObject);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of WeakBox<UIFocusItem>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WeakBox<UIFocusItem>(0, &lazy cache variable for type metadata for WeakBox<UIFocusItem>, 255, type metadata accessor for UIFocusItem, MEMORY[0x1E6981A78]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void type metadata accessor for WeakBox<UIFocusItem>()
{
  if (!lazy cache variable for type metadata for WeakBox<UIFocusItem>)
  {
    type metadata accessor for UIFocusItem();
    v0 = type metadata accessor for WeakBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for WeakBox<UIFocusItem>);
    }
  }
}

uint64_t closure #1 in static FocusBridge.defaultFocusItemsContainer(responderNode:host:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X3>, char *a5@<X8>)
{
  type metadata accessor for _SemanticFeature<Semantics_v6>();
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>();
  if (static SemanticFeature.isEnabled.getter())
  {
    result = (*(a2 + 48))(*a1, a2);
    if ((result & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v11 = (*(a2 + 8))(*a1, a2);
  if (v11)
  {
    v12 = v11;
    ObjectType = swift_getObjectType();
    v14 = swift_conformsToProtocol2();
    if (!v14)
    {
      goto LABEL_7;
    }

    v15 = v14;
    if (((*(v14 + 24))(ObjectType, v14) & 1) == 0)
    {
      result = swift_unknownObjectRelease();
      v16 = 0;
      goto LABEL_12;
    }

    if (*a3)
    {
LABEL_7:
      swift_unknownObjectRelease();
      goto LABEL_8;
    }

    AnyUIKitHostedFocusItem.addToHostIfNeeded(_:)(a4, ObjectType, *(v15 + 8));
    *a3 = v12;
    a3[1] = v15;
    result = swift_unknownObjectRelease();
LABEL_11:
    v16 = 1;
    goto LABEL_12;
  }

LABEL_8:
  *a3 = 0;
  a3[1] = 0;
  result = swift_unknownObjectRelease();
  v16 = 2;
LABEL_12:
  *a5 = v16;
  return result;
}

id UIFocusEnvironment.nearestResponder(in:)(id a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  (*(a2 + 24))(ObjectType, a2);

  swift_getObjectType();
  v7 = swift_conformsToProtocol2();
  if (!v7 || !v2)
  {
    goto LABEL_6;
  }

  v8 = v7;
  v9 = swift_getObjectType();
  swift_unknownObjectRetain();
  v10 = UIFocusEnvironment.nearestRenderer()();
  if (!v10 || (v11 = v10, swift_unknownObjectRelease(), v11 != a1))
  {
    swift_unknownObjectRelease();
LABEL_6:
    swift_unknownObjectRetain_n();
    while (1)
    {
      swift_getObjectType();
      v12 = swift_conformsToProtocol2();
      if (v12 && v3 && (v13 = v12, v14 = swift_getObjectType(), (v15 = (*(v13 + 8))(v14, v13)) != 0))
      {
        v16 = v15;
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        swift_unknownObjectRelease();
        if (Strong)
        {
          swift_unknownObjectRelease();
          if (Strong == a1)
          {
            goto LABEL_17;
          }
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }

      v16 = [v3 parentFocusEnvironment];
      swift_unknownObjectRelease();
      if (!v16)
      {
        return v16;
      }

      swift_unknownObjectRetain();
      v3 = v16;
    }
  }

  v16 = (*(v8 + 56))(v9, v8);
LABEL_17:
  swift_unknownObjectRelease();
  return v16;
}

Swift::Void __swiftcall AnyUIKitHostedFocusItem.ensureHost()()
{
  v2 = v1;
  v3 = v0;
  v4 = (*(v1 + 8))();
  if (v4)
  {

    return;
  }

  v5 = *(v2 + 56);
  if (!v5(v3, v2))
  {
    goto LABEL_11;
  }

  type metadata accessor for UIViewResponder();
  while (!swift_dynamicCastClass())
  {
    v6 = dispatch thunk of ResponderNode.nextResponder.getter();

    if (!v6)
    {
      goto LABEL_11;
    }
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_11:
    v8 = v5(v3, v2);
    if (!v8 || (v9 = v8, swift_beginAccess(), v10 = swift_unknownObjectWeakLoadStrong(), v11 = *(v9 + 24), , !v10) || (ObjectType = swift_getObjectType(), Strong = ViewGraphDelegate.uiView.getter(ObjectType, v11), swift_unknownObjectRelease(), !Strong))
    {
LABEL_47:

      return;
    }
  }

  type metadata accessor for _ContiguousArrayStorage<UIKitHostedFocusItemLifecycle.Event>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18CD69590;
  *(inited + 32) = Strong;
  v21 = Strong;
  while (1)
  {
    v14 = inited >> 62;
    if (!(inited >> 62))
    {
      break;
    }

    if (!__CocoaSet.count.getter())
    {
      goto LABEL_53;
    }

    if (!__CocoaSet.count.getter())
    {
      goto LABEL_54;
    }

LABEL_17:
    if ((inited & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x18D00E9C0](0, inited);
    }

    else
    {
      if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_49;
      }

      v15 = *(inited + 32);
    }

    v16 = v15;
    if (v14)
    {
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_51;
      }

      if (__CocoaSet.count.getter() < 1)
      {
        goto LABEL_52;
      }

      v17 = __CocoaSet.count.getter();
    }

    else
    {
      v17 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v17)
      {
        goto LABEL_51;
      }
    }

    v18 = v17 - 1;
    if (__OFSUB__(v17, 1))
    {
      goto LABEL_50;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v14)
      {
LABEL_32:
        __CocoaSet.count.getter();
      }

LABEL_33:
      inited = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      goto LABEL_34;
    }

    if (v14)
    {
      goto LABEL_32;
    }

    if (v18 > *((inited & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_33;
    }

LABEL_34:
    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 1, 0);
    v22 = inited;
    swift_getObjectType();
    if (swift_conformsToProtocol2() && v16)
    {

      AnyUIKitHostedFocusItem.addToHostIfNeeded(_:)(v16, v3, v2);

      goto LABEL_46;
    }

    v19 = [v16 subviews];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
    v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    specialized Array.append<A>(contentsOf:)(v20);
    inited = v22;
    if (v22 >> 62)
    {
      if (!__CocoaSet.count.getter())
      {
LABEL_44:

LABEL_46:

        goto LABEL_47;
      }
    }

    else if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_44;
    }
  }

  if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_17;
  }

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
}

uint64_t UIKitFocusableViewResponderItem.FocusedStateCommitMutation.combine<A>(with:)(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(&v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)], v2);
  result = swift_dynamicCast();
  if (result)
  {
    v6 = v9[4];
    v7 = v10;
    v8 = v11;
    if (static WeakAttribute.== infix(_:_:)())
    {
      *v1 = v6;
      result = 1;
      *(v1 + 4) = v7;
      *(v1 + 8) = v8;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t UIKitFocusableViewResponderItem.updateFocusedState()()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 304);

    if ((v1 & 1) == 0)
    {
      result = AGWeakAttributeGetAttribute();
      if (result != *MEMORY[0x1E698D3F8])
      {
        v2 = AGGraphGetAttributeGraph();
        AGGraphRef.viewGraph()();

        type metadata accessor for UIKitFocusableViewResponderItem();
        UIFocusItem.isFocused.getter();
        lazy protocol witness table accessor for type UIKitFocusableViewResponderItem.FocusedStateCommitMutation and conformance UIKitFocusableViewResponderItem.FocusedStateCommitMutation();
        default argument 1 of GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)();
        GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)();
      }
    }
  }

  return result;
}

void AnyUIKitHostedFocusItem.addToHostIfNeeded(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  _s2os6LoggerVSgMaTm_3(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v34 - v10;
  v12 = (*(a3 + 8))(a2, a3, v9);
  if (v12)
  {
  }

  else
  {
    static Log.focus.getter();
    v13 = type metadata accessor for Logger();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v11, 1, v13) == 1)
    {
      _s7SwiftUI9FocusItemVSgWOhTm_2(v11, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720], _s2os6LoggerVSgMaTm_3);
    }

    else
    {
      swift_unknownObjectRetain();
      v15 = a1;
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v38 = v14;
        v19 = v18;
        v37 = swift_slowAlloc();
        v39 = v37;
        *v19 = 136315394;
        v20 = specialized UIKitFocusItemDescription.init(_:)(v4);
        v35 = v17;
        v21 = v20;
        v36 = v16;
        v23 = v22;
        swift_unknownObjectRelease();
        v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v39);

        *(v19 + 4) = v24;
        *(v19 + 12) = 2080;
        v25 = v15;
        v26 = _s7SwiftUI25UIKitFocusItemDescriptionVyACyxGxcfCSo6UIViewC_Tt0g5Tf4g_nTm(v25);
        v28 = v27;

        v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v39);

        *(v19 + 14) = v29;
        v16 = v36;
        _os_log_impl(&dword_18BD4A000, v36, v35, "adding unmanaged: %s to: %s", v19, 0x16u);
        v30 = v37;
        swift_arrayDestroy();
        MEMORY[0x18D0110E0](v30, -1, -1);
        v31 = v19;
        v14 = v38;
        MEMORY[0x18D0110E0](v31, -1, -1);
      }

      else
      {
        swift_unknownObjectRelease();
      }

      (*(v14 + 8))(v11, v13);
    }

    v32 = *(a3 + 16);
    v33 = a1;
    v32(a1, a2, a3);
  }
}

uint64_t protocol witness for BaseFocusResponder.platformItem.getter in conformance DefaultFocusSectionResponder()
{
  specialized DefaultFocusSectionResponder.platformItem.getter();

  return swift_unknownObjectRetain();
}

uint64_t UIKitContainerFocusItem.defaultFocusItemsContainer()(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 16))();
  if (result)
  {
    v5 = (*(a2 + 8))(a1, a2);
    if (v5)
    {
      MEMORY[0x1EEE9AC00](v5);
      MEMORY[0x1EEE9AC00](v6);
      v8 = v7;
      dispatch thunk of ResponderNode.visit(applying:)();
    }

    return 0;
  }

  return result;
}

void *protocol witness for UIKitContainerFocusItem.host.getter in conformance _UIHostingView<A1>()
{
  v0 = FocusStoreLocation.id.getter();
  v1 = v0;
  return v0;
}

id UIKitContainerFocusItem<>.rootResponder()()
{
  v1 = UIFocusEnvironment.nearestRenderer()();
  if (!v1)
  {
    return 0;
  }

  if (v1 == v0)
  {
    v5 = v2;
    ObjectType = swift_getObjectType();
    v3 = (*(v5 + 24))(ObjectType, v5);
  }

  else
  {
    v3 = UIFocusEnvironment.nearestResponder(in:)(v1, v2);
  }

  v4 = v3;
  swift_unknownObjectRelease();
  return v4;
}

void UIKitFocusableViewResponderItem.stopTrackingFrameChanges()()
{
  if (AGWeakAttributeGetAttribute() != *MEMORY[0x1E698D3F8])
  {
    v1 = AGGraphGetAttributeSubgraph();
    IsValid = AGSubgraphIsValid();

    if (IsValid)
    {
      if ((*(v0 + OBJC_IVAR____TtC7SwiftUIP33_B6A2D4E72E5722B5103497ADB7778B5F31UIKitFocusableViewResponderItem_frameChangeDetector + 4) & 1) == 0)
      {
        AGGraphGetFlags();
        AGGraphSetFlags();
      }
    }
  }

  v3 = v0 + OBJC_IVAR____TtC7SwiftUIP33_B6A2D4E72E5722B5103497ADB7778B5F31UIKitFocusableViewResponderItem_frameChangeDetector;
  *v3 = 0;
  *(v3 + 4) = 1;
}

uint64_t DefaultFocusSectionResponderFilter.updateValue()()
{
  type metadata accessor for CGPoint(0);
  Value = AGGraphGetValue();
  v3 = v2;
  v4 = *Value;
  v5 = Value[1];
  v6 = AGGraphGetValue();
  v8 = v7;
  v9 = *v6;
  v10 = *(v6 + 8);
  v25 = *(v6 + 16);
  v26 = *(v6 + 32);

  AGGraphGetValue();
  v12 = v11;
  v13 = AGGraphGetValue();
  v15 = v14;
  v16 = *v13;
  v17 = *(v0 + 24);
  type metadata accessor for BaseFocusResponder?(0, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]);

  AGGraphGetValue();
  if (v18)
  {

    MultiViewResponder.children.setter();
  }

  if ((v3 & 1) != 0 || (v8 & 1) != 0 || (v12 & 1) != 0 || (v15 & 1) != 0 || !AGGraphGetOutputValue())
  {

    ViewTransform.appendPosition(_:)(__PAIR128__(v5, v4));
    *(v17 + 216) = v9;
    *(v17 + 224) = v10;
    *(v17 + 232) = v25;
    *(v17 + 248) = v26;

    v20 = MEMORY[0x18D00B390](v19);
    v22 = v21;

    *(v17 + 264) = v20;
    *(v17 + 272) = v22;
    *(v17 + 280) = v16;
  }

  if (AGGraphGetOutputValue())
  {
  }

  else
  {
    type metadata accessor for _ContiguousArrayStorage<Text>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_18CD69590;
    *(v24 + 32) = v17;

    AGGraphSetOutputValue();
  }
}

void type metadata accessor for BaseFocusResponder?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t assignWithCopy for FocusItem(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    outlined destroy of FocusItem.Base(a1);
    v4 = *(a2 + 32);
    if (v4 == 2)
    {
      swift_unknownObjectWeakCopyInit();
      v5 = 2;
    }

    else
    {
      if (v4 != 1)
      {
        *a1 = *a2;
        *(a1 + 4) = *(a2 + 4);
        *(a1 + 8) = *(a2 + 8);
        v6 = *(a2 + 24);
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 24) = v6;
        *(a1 + 32) = 0;

        goto LABEL_8;
      }

      swift_unknownObjectWeakCopyInit();
      v5 = 1;
    }

    *(a1 + 32) = v5;
  }

LABEL_8:
  *(a1 + 33) = *(a2 + 33);
  swift_weakCopyAssign();
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

unint64_t lazy protocol witness table accessor for type UIKitFocusableViewResponderItem.FocusedStateCommitMutation and conformance UIKitFocusableViewResponderItem.FocusedStateCommitMutation()
{
  result = lazy protocol witness table cache variable for type UIKitFocusableViewResponderItem.FocusedStateCommitMutation and conformance UIKitFocusableViewResponderItem.FocusedStateCommitMutation;
  if (!lazy protocol witness table cache variable for type UIKitFocusableViewResponderItem.FocusedStateCommitMutation and conformance UIKitFocusableViewResponderItem.FocusedStateCommitMutation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIKitFocusableViewResponderItem.FocusedStateCommitMutation and conformance UIKitFocusableViewResponderItem.FocusedStateCommitMutation);
  }

  return result;
}

uint64_t specialized DefaultFocusSectionResponder.platformItem.getter()
{
  result = *(v0 + 304);
  if (!result)
  {
    v2 = objc_allocWithZone(type metadata accessor for UIKitDefaultFocusSectionResponderItem(0));
    swift_weakInit();
    swift_unknownObjectWeakInit();
    *&v2[direct field offset for UIKitContainerFocusResponderItem.frameAttr] = 0;
    v2[direct field offset for UIKitContainerFocusResponderItem.isEnabled] = 1;
    *&v2[direct field offset for UIKitContainerFocusResponderItem.cachedCoordinateSpace] = 0;
    swift_weakAssign();
    type metadata accessor for UIKitContainerFocusResponderItem<DefaultFocusSectionResponder>();
    v6.receiver = v2;
    v6.super_class = v3;
    v4 = objc_msgSendSuper2(&v6, sel_init);
    v5 = *(v0 + 304);
    *(v0 + 304) = v4;

    return *(v0 + 304);
  }

  return result;
}

unint64_t type metadata accessor for UIFocusEnvironment()
{
  result = lazy cache variable for type metadata for UIFocusEnvironment;
  if (!lazy cache variable for type metadata for UIFocusEnvironment)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIFocusEnvironment);
  }

  return result;
}

uint64_t protocol witness for GraphMutation.apply() in conformance UIKitFocusableViewResponderItem.FocusedStateCommitMutation()
{
  result = AGWeakAttributeGetAttribute();
  if (result != *MEMORY[0x1E698D3F8])
  {
    return AGGraphSetValue();
  }

  return result;
}

uint64_t AccessibilityViewGraph.update(graph:)(uint64_t a1)
{
  v2 = v1;
  v65 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  v4 = *(a1 + 361);
  result = swift_beginAccess();
  if (*(a1 + 360) == 1)
  {
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_70;
    }

    result = AGGraphGetWeakValue();
    if (!result)
    {
LABEL_55:
      if (*(v2 + 44) == 1)
      {
        swift_beginAccess();
        result = swift_unknownObjectWeakLoadStrong();
        if (result)
        {
          v43 = *(a1 + 208);
          ObjectType = swift_getObjectType();
          v45 = type metadata accessor for ContainerBackgroundHost(0, &lazy cache variable for type metadata for ViewRendererHost);
          (*(v43 + 16))(&v62, v45, v45, ObjectType, v43);
          result = swift_unknownObjectRelease();
          v46 = v62;
          if (v62)
          {
            v47 = matched;
            if (static AccessibilityFocus.accessibilityFocusNeedsUpdate == 1)
            {
              if (one-time initialization token for lastFocus != -1)
              {
                swift_once();
              }

              static AccessibilityFocus.lastFocus = specialized static AccessibilityFocus.resolvePlatformFocus()();

              static AccessibilityFocus.accessibilityFocusNeedsUpdate = 0;
            }

            if (one-time initialization token for lastFocus != -1)
            {
              swift_once();
            }

            swift_unknownObjectRetain();

            v49 = specialized _NativeDictionary.filter(_:)(v48, v46, v47);

            swift_unknownObjectRelease();
            lazy protocol witness table accessor for type AccessibilityViewGraph and conformance AccessibilityViewGraph();
            v50 = ViewGraph.subscript.getter();
            if (v50 && *(v50 + 40) != *MEMORY[0x1E698D3F8] && (v62 = v49, AGGraphSetValue()) && swift_unknownObjectWeakLoadStrong())
            {
              v51 = *(a1 + 208);
              v52 = swift_getObjectType();
              (*(*(v51 + 8) + 16))(v52);
              swift_unknownObjectRelease();

              result = swift_unknownObjectRelease();
            }

            else
            {
              swift_unknownObjectRelease();
            }
          }
        }
      }

LABEL_70:
      if (*(v2 + 24) == 1)
      {
        result = AGGraphGetWeakValue();
        if (result)
        {
          v53 = *(result + 8);
          if (*(v2 + 16) != v53)
          {
            *(v2 + 16) = v53;
            *(v2 + 24) = 0;
            swift_beginAccess();
            result = swift_unknownObjectWeakLoadStrong();
            if (result)
            {
              v54 = *(a1 + 208);
              v55 = swift_getObjectType();
              v56 = type metadata accessor for ContainerBackgroundHost(0, &lazy cache variable for type metadata for AccessibilityHost);
              v57 = *(v54 + 16);

              v57(v61, v56, v56, v55, v54);
              swift_unknownObjectRelease();
              if (v61[0])
              {
                v58 = v61[1];
                v59 = swift_getObjectType();
                v60 = MEMORY[0x1EEE9AC00](v59);
                (*(v58 + 8))(closure #1 in AccessibilityViewGraph.postUpdate(graph:list:)partial apply, v60);
                swift_unknownObjectRelease();

                goto LABEL_77;
              }

LABEL_76:

              goto LABEL_77;
            }
          }
        }
      }

      goto LABEL_77;
    }

    PreferenceValues.subscript.getter();
    v6 = v62;
    v7 = *(v62 + 16);
    if (!v7)
    {
      v8 = 0;
      goto LABEL_28;
    }

    if (v7 == 1)
    {
      v8 = 0;
      v9 = 0;
    }

    else
    {
      v8 = 0;
      v15 = 0;
      v9 = v7 & 0x7FFFFFFFFFFFFFFELL;
      v16 = (v62 + 88);
      v17 = v7 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        v18 = *(v16 - 7);
        v20 = *v16;
        v16 += 14;
        v19 = v20;
        if (v18 > v8)
        {
          v8 = v18;
        }

        if (v19 > v15)
        {
          v15 = v19;
        }

        v17 -= 2;
      }

      while (v17);
      if (v8 <= v15)
      {
        v8 = v15;
      }

      if (v7 == v9)
      {
LABEL_28:
        if (*(v2 + 48) == v8)
        {

          goto LABEL_55;
        }

        v62 = 0;
        matched = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI30AccessibilityEnabledTechnologyO_SDyAC0E5FocusV5MatchOShyAC8UniqueIDVGGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v64 = MEMORY[0x1E69E7CC8];

        AccessibilityFocusStore.makeStoreContent(_:)(v25);

        lazy protocol witness table accessor for type AccessibilityViewGraph and conformance AccessibilityViewGraph();
        v26 = ViewGraph.subscript.getter();
        if (v26 && *(v26 + 36) != *MEMORY[0x1E698D3F8] && (v62 = 0, (AGGraphSetValue() & 1) != 0) && (swift_beginAccess(), swift_unknownObjectWeakLoadStrong()))
        {
          v27 = *(a1 + 208);
          v28 = swift_getObjectType();
          (*(*(v27 + 8) + 16))(v28);

          swift_unknownObjectRelease();
        }

        else
        {
        }

        v29 = *(v6 + 16);
        if (v29)
        {
          if (v29 == 1)
          {
            v30 = 0;
            v31 = 0;
          }

          else
          {
            v32 = 0;
            v33 = 0;
            v31 = v29 & 0x7FFFFFFFFFFFFFFELL;
            v34 = (v6 + 88);
            v35 = v29 & 0x7FFFFFFFFFFFFFFELL;
            do
            {
              v36 = *(v34 - 7);
              v38 = *v34;
              v34 += 14;
              v37 = v38;
              if (v36 > v32)
              {
                v32 = v36;
              }

              if (v37 > v33)
              {
                v33 = v37;
              }

              v35 -= 2;
            }

            while (v35);
            if (v32 <= v33)
            {
              v30 = v33;
            }

            else
            {
              v30 = v32;
            }

            if (v29 == v31)
            {
              goto LABEL_54;
            }
          }

          v39 = v29 - v31;
          v40 = (v6 + 56 * v31 + 32);
          do
          {
            v42 = *v40;
            v40 += 7;
            v41 = v42;
            if (v42 > v30)
            {
              v30 = v41;
            }

            --v39;
          }

          while (v39);
        }

        else
        {
          v30 = 0;
        }

LABEL_54:

        *(v2 + 48) = v30;
        goto LABEL_55;
      }
    }

    v21 = v7 - v9;
    v22 = (v62 + 56 * v9 + 32);
    do
    {
      v24 = *v22;
      v22 += 7;
      v23 = v24;
      if (v24 > v8)
      {
        v8 = v23;
      }

      --v21;
    }

    while (v21);
    goto LABEL_28;
  }

  if ((v4 & 0x20) != 0 && *(v2 + 44) == 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI30AccessibilityEnabledTechnologyO_AC0E5FocusV6TargetVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

    v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI30AccessibilityEnabledTechnologyO_AC0E5FocusV6TargetVTt0g5Tf4g_n(v10);
    lazy protocol witness table accessor for type AccessibilityViewGraph and conformance AccessibilityViewGraph();
    v12 = ViewGraph.subscript.getter();
    if (!v12)
    {
      goto LABEL_76;
    }

    if (*(v12 + 40) == *MEMORY[0x1E698D3F8])
    {
      goto LABEL_76;
    }

    v62 = v11;
    if (!AGGraphSetValue())
    {
      goto LABEL_76;
    }

    swift_beginAccess();
    if (!swift_unknownObjectWeakLoadStrong())
    {
      goto LABEL_76;
    }

    v13 = *(a1 + 208);
    v14 = swift_getObjectType();
    (*(*(v13 + 8) + 16))(v14);

    result = swift_unknownObjectRelease();
  }

LABEL_77:
  *(v2 + 44) = 0;
  return result;
}

void *outlined copy of UserDefaultObserver.State(void *result)
{
  if (result)
  {
    v1 = result;
  }

  return result;
}

void *UserDefaultObserver.unobserve(oldDefaults:key:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  lazy protocol witness table accessor for type String and conformance String();
  if (StringProtocol.contains<A>(_:)())
  {
    v8 = [objc_opt_self() defaultCenter];
    [v8 removeObserver:v4 name:*MEMORY[0x1E696AA70] object:{a1, v12, v13, v15, v17}];
  }

  else
  {
    v8 = MEMORY[0x18D00C850](a2, a3);
    [a1 removeObserver:v4 forKeyPath:v8 context:{&static UserDefaultObserver.observationContext, 46, 0xE100000000000000, a2, a3}];
  }

  v9 = (v4 + OBJC_IVAR____TtC7SwiftUIP33_F2BB00CEA25D2617C18DE8984EB64B5319UserDefaultObserver_state);
  v10 = *(v4 + OBJC_IVAR____TtC7SwiftUIP33_F2BB00CEA25D2617C18DE8984EB64B5319UserDefaultObserver_state);
  v9[1] = 0;
  v9[2] = 0;
  *v9 = 0;
  return outlined consume of UserDefaultObserver.State(v10);
}

uint64_t destroy for UserDefaultObserver.Target(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 2)
  {
    v1 = *a1 + 2;
  }

  if (v1 == 1)
  {
  }

  else
  {
    return swift_weakDestroy();
  }
}

uint64_t specialized DefaultFocusSectionResponder.hostedItem.getter()
{
  result = *(v0 + 304);
  if (!result)
  {
    v2 = objc_allocWithZone(type metadata accessor for UIKitDefaultFocusSectionResponderItem(0));
    swift_weakInit();
    swift_unknownObjectWeakInit();
    *&v2[direct field offset for UIKitContainerFocusResponderItem.frameAttr] = 0;
    v2[direct field offset for UIKitContainerFocusResponderItem.isEnabled] = 1;
    *&v2[direct field offset for UIKitContainerFocusResponderItem.cachedCoordinateSpace] = 0;
    swift_weakAssign();
    type metadata accessor for UIKitContainerFocusResponderItem<DefaultFocusSectionResponder>();
    v6.receiver = v2;
    v6.super_class = v3;
    v4 = objc_msgSendSuper2(&v6, sel_init);
    v5 = *(v0 + 304);
    *(v0 + 304) = v4;

    return *(v0 + 304);
  }

  return result;
}

void type metadata accessor for UIKitContainerFocusResponderItem<DefaultFocusSectionResponder>()
{
  if (!lazy cache variable for type metadata for UIKitContainerFocusResponderItem<DefaultFocusSectionResponder>)
  {
    type metadata accessor for DefaultFocusSectionResponder(255);
    v0 = type metadata accessor for UIKitContainerFocusResponderItem();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UIKitContainerFocusResponderItem<DefaultFocusSectionResponder>);
    }
  }
}

uint64_t _s7SwiftUI14EnvironmentKeyPAASQ5ValueRpzrlE12_valuesEqualySbAE_AEtFZAA022ButtonKeyboardShortcutD033_254C3FE5924A018B482F2F0C0D49154FLLV_Tt1B5(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (!a2)
  {
    if (!a6)
    {

      return 1;
    }

    goto LABEL_13;
  }

  if (!a6)
  {
LABEL_13:

    return 0;
  }

  if (a1 == a5 && a2 == a6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v13 = a3 == a7 && a4 == a8;
  }

  else
  {

    v13 = 0;
  }

  swift_bridgeObjectRelease_n();
  return v13;
}

uint64_t ButtonResponder.updateValue()()
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 32);
  if (!v1)
  {
    v2 = *(v0 + 24);
    type metadata accessor for PlatformUnaryViewResponder();
    *(swift_allocObject() + 256) = v2;

    v1 = UIViewResponder.init()();
    swift_beginAccess();
    swift_weakLoadStrong();

    swift_weakAssign();

    *(v0 + 32) = v1;
  }

  type metadata accessor for HostingUIButton();
  swift_retain_n();
  AGGraphGetValue();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  AGGraphGetValue();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v10 = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  AGGraphGetValue();
  type metadata accessor for CGPoint(0);
  AGGraphGetValue();
  Value = AGGraphGetValue();
  v4 = *(Value + 8);
  v11 = *Value;
  v12 = v4;
  v5 = *(Value + 32);
  v13 = *(Value + 16);
  v14 = v5;
  swift_beginAccess();
  type metadata accessor for ContentResponderHelper<UIViewContentResponder>();

  ContentResponderHelper.update(data:size:position:transform:parent:)();
  outlined destroy of UIViewContentResponder(v9);
  swift_endAccess();

  AGGraphGetValue();
  swift_weakAssign();
  _sSo8UIButtonC5UIKitE13ConfigurationVSgMaTm_0(0, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]);

  AGGraphGetValue();
  if (v6)
  {

    dispatch thunk of MultiViewResponder.children.setter();
  }

  if (AGGraphGetOutputValue())
  {
  }

  _s7SwiftUI7BindingVySbGMaTm_10(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_18CD69590;
  *(v8 + 32) = v1;
  v11 = v8;
  AGGraphSetOutputValue();
}

BOOL protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance MenuControlGroupSizeKey(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = v3 == 2 && v2 == 2;
  if (v2 != 2 && v3 != 2)
  {
    return ((v3 ^ v2) & 1) == 0;
  }

  return result;
}

uint64_t AlwaysOnTimelinePreferenceWriter.value.getter(uint64_t a1)
{
  type metadata accessor for IntelligenceSubelementProviding?(0, &lazy cache variable for type metadata for TimelineSchedule?, &lazy cache variable for type metadata for TimelineSchedule);
  Value = AGGraphGetValue();
  outlined init with copy of TimelineSchedule?(Value, &v9);
  if (v10)
  {
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v9, v11);
    outlined init with copy of _Benchmark(v11, &v9);
    v3 = type metadata accessor for DateSequenceTimeline();
    v4 = objc_allocWithZone(v3);
    outlined init with copy of _Benchmark(&v9, v4 + OBJC_IVAR____TtC7SwiftUI20DateSequenceTimeline_schedule);
    v8.receiver = v4;
    v8.super_class = v3;
    v5 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_configure_, a1, 0);
    __swift_destroy_boxed_opaque_existential_1(&v9);
    type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18CD69590;
    *(v6 + 32) = v5;
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    outlined destroy of LocationBasedSensoryFeedback?(&v9, &lazy cache variable for type metadata for TimelineSchedule?, &lazy cache variable for type metadata for TimelineSchedule);
    return MEMORY[0x1E69E7CC0];
  }

  return v6;
}

uint64_t outlined init with copy of TimelineSchedule?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for IntelligenceSubelementProviding?(0, &lazy cache variable for type metadata for TimelineSchedule?, &lazy cache variable for type metadata for TimelineSchedule);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static _FocusableModifier._makeView(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v64 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v7 = *(a2 + 48);
  v60 = *(a2 + 32);
  v61 = v7;
  v62 = *(a2 + 64);
  v63 = *(a2 + 80);
  v8 = *(a2 + 16);
  v58 = *a2;
  v59 = v8;
  *&v36 = v7;
  DWORD2(v36) = DWORD2(v7);
  if ((PreferencesInputs.contains<A>(_:includeHostPreferences:)() & 1) == 0)
  {
    return a3();
  }

  v9 = v59;
  swift_beginAccess();
  *&v36 = __PAIR64__(*(v59 + 16), v6);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type ResolvedOptions and conformance ResolvedOptions();
  v10 = Attribute.init<A>(body:value:flags:update:)();
  type metadata accessor for GraphHost();
  MEMORY[0x18D00B7D0]();
  type metadata accessor for ViewGraph();
  swift_dynamicCastClassUnconditional();
  swift_weakInit();

  type metadata accessor for PropertyList.Tracker();
  swift_allocObject();
  *(&v37 + 1) = PropertyList.Tracker.init()();
  *&v38 = 0;
  BYTE8(v38) = 0;
  v11 = *(v59 + 16);
  *&v36 = __PAIR64__(v10, v6);
  *(&v36 + 1) = __PAIR64__(v11, DWORD2(v59));
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type UpdateViewFocusItem and conformance UpdateViewFocusItem();
  v12 = Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of UpdateViewFocusItem(&v36);
  AGGraphGetFlags();
  outlined init with copy of _ViewInputs(&v58, &v36);
  v13 = v12;
  v28 = v12;
  AGGraphSetFlags();
  v38 = v60;
  v39 = v61;
  v40 = v62;
  v41 = v63;
  v36 = v58;
  v37 = v59;
  type metadata accessor for FocusableViewResponder();
  swift_allocObject();
  outlined init with copy of _ViewInputs(&v58, &v52);
  v14 = FocusableViewResponder.init(inputs:)();
  v44 = v60;
  v45 = v61;
  v46 = v62;
  v47 = v63;
  v42 = v58;
  v43 = v59;
  LOBYTE(v52) = 1;
  outlined init with copy of _ViewInputs(&v58, &v36);
  lazy protocol witness table accessor for type IOSFocusEnabledFlag and conformance IOSFocusEnabledFlag();
  PropertyList.subscript.setter();
  LOBYTE(v36) = 0;
  v15 = Attribute.init<A>(body:value:flags:update:)();
  *&v36 = __PAIR64__(*(v9 + 16), v13);
  DWORD2(v36) = v15;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type IsFocusedEnvironmentChild and conformance IsFocusedEnvironmentChild();
  Attribute.init<A>(body:value:flags:update:)();
  _GraphInputs.environment.setter();
  PreferenceKeys.add(_:)();
  v54 = v44;
  v55 = v45;
  v56 = v46;
  v48[3] = v45;
  v48[4] = v46;
  v52 = v42;
  v53 = v43;
  v48[0] = v42;
  v48[1] = v43;
  v48[2] = v44;
  v57 = v47;
  v49 = v47;
  v38 = v44;
  v39 = v45;
  v40 = v46;
  v41 = v47;
  v36 = v42;
  v37 = v43;
  v16 = outlined init with copy of _ViewInputs(v48, v50);
  (a3)(&v31, v16, &v36);
  v50[2] = v38;
  v50[3] = v39;
  v50[4] = v40;
  v51 = v41;
  v50[0] = v36;
  v50[1] = v37;
  outlined destroy of _ViewInputs(v50);
  v17 = v31;
  LODWORD(v9) = v32;
  v18 = v33;
  *a4 = v31;
  *(a4 + 8) = v9;
  *(a4 + 12) = v18;

  *(v14 + 296) = AGCreateWeakAttribute();
  *(v14 + 304) = 0;
  v19 = HIDWORD(v55);
  v38 = v54;
  v39 = v55;
  v40 = v56;
  v41 = v57;
  v36 = v52;
  v37 = v53;
  v20 = _ViewInputs.animatedPosition()();
  v21 = v53;
  v38 = v54;
  v39 = v55;
  v40 = v56;
  v41 = v57;
  v36 = v52;
  v37 = v53;
  swift_beginAccess();
  v22 = CachedEnvironment.animatedSize(for:)();
  swift_endAccess();
  *(v14 + 272) = v19 | (v20 << 32);
  *(v14 + 280) = v22;
  *(v14 + 288) = 0;
  *(v14 + 292) = 1;
  swift_allocObject();
  v23 = PropertyList.Tracker.init()();
  LODWORD(v21) = *(v21 + 16);
  *&v36 = v17;
  *(&v36 + 1) = __PAIR64__(v18, v9);
  *&v36 = __PAIR64__(_ViewOutputs.viewResponders()(), v28);
  DWORD2(v36) = v21;
  *&v37 = v14;
  *(&v37 + 1) = v23;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  _sSay7SwiftUI13ViewResponderCGMaTm_6(0, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type UpdateFocusableViewResponder and conformance UpdateFocusableViewResponder();

  v24 = Attribute.init<A>(body:value:flags:update:)();

  v34[2] = v54;
  v34[3] = v55;
  v34[4] = v56;
  v35 = v57;
  v34[0] = v52;
  v34[1] = v53;
  outlined init with copy of _ViewInputs(&v52, &v36);
  UIKitHostedFocusItemLifecycle.init(inputs:responders:)(v34, v24, &v36);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type UIKitHostedFocusItemLifecycle and conformance UIKitHostedFocusItemLifecycle();
  Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of UIKitHostedFocusItemLifecycle(&v36);
  AGGraphSetFlags();
  LOBYTE(v36) = 0;
  v25 = PreferencesOutputs.subscript.setter();
  *&v34[0] = v55;
  DWORD2(v34[0]) = DWORD2(v55);
  *&v36 = v55;
  DWORD2(v36) = DWORD2(v55);
  MEMORY[0x1EEE9AC00](v25);
  outlined init with copy of PreferencesInputs(v34, &v29);
  outlined init with copy of PreferencesInputs(v34, &v29);
  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();

  v29 = *&v34[0];
  v30 = DWORD2(v34[0]);
  MEMORY[0x1EEE9AC00](v26);
  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();

  v38 = v44;
  v39 = v45;
  v40 = v46;
  v41 = v47;
  v36 = v42;
  v37 = v43;
  outlined destroy of _ViewInputs(&v36);

  return outlined destroy of _ViewInputs(&v58);
}

unint64_t lazy protocol witness table accessor for type UpdateFocusableViewResponder and conformance UpdateFocusableViewResponder()
{
  result = lazy protocol witness table cache variable for type UpdateFocusableViewResponder and conformance UpdateFocusableViewResponder;
  if (!lazy protocol witness table cache variable for type UpdateFocusableViewResponder and conformance UpdateFocusableViewResponder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UpdateFocusableViewResponder and conformance UpdateFocusableViewResponder);
  }

  return result;
}

uint64_t initializeWithCopy for UpdateFocusableViewResponder(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;

  return a1;
}

uint64_t lazy protocol witness table accessor for type ArchivableFactory<ArchivableAccessibilityViewModifier> and conformance ArchivableFactory<A>(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t _UIHostingView.focusItems(in:)(double a1, double a2, double a3, double a4)
{
  v9 = type metadata accessor for _UIHostingView();
  v23.receiver = v4;
  v23.super_class = v9;
  v10 = objc_msgSendSuper2(&v23, sel_focusItemsInRect_, a1, a2, a3, a4);
  type metadata accessor for _UISceneBSActionHandler(0, &lazy cache variable for type metadata for UIFocusItem);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v21 = MEMORY[0x1E69E7CC0];
  if (v11 >> 62)
  {
LABEL_16:
    v12 = __CocoaSet.count.getter();
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
LABEL_3:
      v20 = v9;
      v13 = 0;
      v9 = 0x1E69DD000;
      while (1)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          MEMORY[0x18D00E9C0](v13, v11);
          v14 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v15 = v21;
            v9 = v20;
            goto LABEL_18;
          }
        }

        else
        {
          if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          swift_unknownObjectRetain();
          v14 = v13 + 1;
          if (__OFADD__(v13, 1))
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
        }

        ++v13;
        if (v14 == v12)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v15 = MEMORY[0x1E69E7CC0];
LABEL_18:

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v17 = Strong, v18 = [Strong _shouldIgnoreChildFocusRegions], v17, (v18 & 1) == 0))
  {
    v22 = UIKitContainerFocusItem.childFocusItems(in:)(v9, &protocol witness table for _UIHostingView<A>, a1, a2, a3, a4);
    specialized Array.append<A>(contentsOf:)(v15);
    return v22;
  }

  return v15;
}

unint64_t UIKitContainerFocusItem.childFocusItems(in:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v12 = (*(a2 + 16))();
  if (v12)
  {
    v14 = v12;
    v15 = v13;
    v16 = (*(a2 + 8))(a1, a2);
    if (v16)
    {
      v17 = v16;
      v18 = specialized static FocusBridge.focusItems(responderNode:rect:host:skipRoot:)(v14, v16, v15 & 1, a3, a4, a5, a6);

      return v18;
    }
  }

  return MEMORY[0x1E69E7CC0];
}

unint64_t specialized static FocusBridge.focusItems(responderNode:rect:host:skipRoot:)(uint64_t a1, void *a2, char a3, double a4, double a5, double a6, double a7)
{
  _s2os6LoggerVSgMaTm_3(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v34 - v15;
  v48 = MEMORY[0x1E69E7CC0];
  v38[16] = a3;
  v39 = a1;
  v40 = a2;
  v41 = a4;
  v42 = a5;
  v43 = a6;
  v44 = a7;
  v45 = &v48;
  v36 = partial apply for closure #1 in static FocusBridge.focusItems(responderNode:rect:host:skipRoot:);
  v37 = v38;
  dispatch thunk of ResponderNode.visit(applying:)();
  static Log.focus.getter();
  v17 = type metadata accessor for Logger();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    _s7SwiftUI9FocusItemVSgWOhTm_2(v16, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720], _s2os6LoggerVSgMaTm_3);
  }

  else
  {
    v19 = a2;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v47 = v35;
      *v22 = 134218498;
      swift_beginAccess();
      if (v48 >> 62)
      {
        v23 = __CocoaSet.count.getter();
      }

      else
      {
        v23 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v22 + 4) = v23;
      *(v22 + 12) = 2080;
      MEMORY[0x18D00DFC0](v46, a4, a5, a6, a7);
      v24 = LoggableRect.description.getter();
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v47);

      *(v22 + 14) = v26;
      *(v22 + 22) = 2080;
      v27 = v19;
      v28 = _s7SwiftUI25UIKitFocusItemDescriptionVyACyxGxcfCSo6UIViewC_Tt0g5Tf4g_nTm(v27);
      v30 = v29;

      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v47);

      *(v22 + 24) = v31;
      _os_log_impl(&dword_18BD4A000, v20, v21, "focus items queried: %ld in: %s for: %s", v22, 0x20u);
      v32 = v35;
      swift_arrayDestroy();
      MEMORY[0x18D0110E0](v32, -1, -1);
      MEMORY[0x18D0110E0](v22, -1, -1);
    }

    (*(v18 + 8))(v16, v17);
  }

  swift_beginAccess();
  return v48;
}

void closure #1 in static FocusBridge.focusItems(responderNode:rect:host:skipRoot:)(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, char *a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>)
{
  _s2os6LoggerVSgMaTm_3(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v87 - v26;
  if ((a3 & 1) == 0 || a1 != a4)
  {
    type metadata accessor for _SemanticFeature<Semantics_v6>();
    lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>();
    if ((static SemanticFeature.isEnabled.getter() & 1) != 0 && ((*(a2 + 48))(*a1, a2) & 1) == 0)
    {
LABEL_30:
      v36 = 1;
      goto LABEL_31;
    }

    v28 = (*(a2 + 8))(*a1, a2);
    if (v28)
    {
      v29 = v28;
      objc_opt_self();
      v30 = swift_dynamicCastObjCClass();
      if (v30)
      {
        v31 = v30;
        swift_unknownObjectRetain();
        [v31 bounds];
        [v31 convertRect:a5 toCoordinateSpace:?];
      }

      else
      {
        ObjectType = swift_getObjectType();
        v38 = swift_conformsToProtocol2();
        if (!v38)
        {
          static Log.focus.getter();
          v46 = type metadata accessor for Logger();
          v47 = *(v46 - 8);
          if ((*(v47 + 48))(v27, 1, v46) == 1)
          {
            _s7SwiftUI9FocusItemVSgWOhTm_2(v27, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720], _s2os6LoggerVSgMaTm_3);
          }

          else
          {
            swift_unknownObjectRetain();
            v48 = Logger.logObject.getter();
            v49 = static os_log_type_t.error.getter();
            swift_unknownObjectRelease();
            if (os_log_type_enabled(v48, v49))
            {
              v50 = swift_slowAlloc();
              v88 = v50;
              v89 = swift_slowAlloc();
              v90[0] = v89;
              *v50 = 136315138;
              swift_getObjectType();
              v51 = swift_unknownObjectRetain();
              v52 = _s7SwiftUI25UIKitFocusItemDescriptionVyACyxGxcfCSo07UIFocusE0_p_Tt0g5Tf4e_nTf4g_n(v51);
              LODWORD(v87) = v49;
              v54 = v53;
              swift_unknownObjectRelease();
              v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, v90);

              v56 = v88;
              *(v88 + 4) = v55;
              _os_log_impl(&dword_18BD4A000, v48, v87, "unknown focus item: %s", v56, 0xCu);
              v57 = v89;
              __swift_destroy_boxed_opaque_existential_1(v89);
              MEMORY[0x18D0110E0](v57, -1, -1);
              MEMORY[0x18D0110E0](v56, -1, -1);
            }

            (*(v47 + 8))(v27, v46);
          }

          v44 = 1;
          v40 = 0.0;
          v41 = 0.0;
          v42 = 0.0;
          v43 = 0.0;
LABEL_22:
          static Log.focus.getter();
          v58 = type metadata accessor for Logger();
          v59 = *(v58 - 8);
          if ((*(v59 + 48))(v24, 1, v58) == 1)
          {
            swift_unknownObjectRelease();
            _s7SwiftUI9FocusItemVSgWOhTm_2(v24, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720], _s2os6LoggerVSgMaTm_3);
          }

          else
          {
            swift_unknownObjectRetain();
            v60 = a5;
            v61 = Logger.logObject.getter();
            v62 = static os_log_type_t.default.getter();

            swift_unknownObjectRelease();
            if (os_log_type_enabled(v61, v62))
            {
              v87 = v60;
              LODWORD(v89) = v62;
              v63 = swift_slowAlloc();
              v88 = swift_slowAlloc();
              v91 = v88;
              *v63 = 136315906;
              swift_getObjectType();
              v64 = swift_unknownObjectRetain();
              v65 = _s7SwiftUI25UIKitFocusItemDescriptionVyACyxGxcfCSo07UIFocusE0_p_Tt0g5Tf4e_nTf4g_n(v64);
              v67 = v66;
              swift_unknownObjectRelease();
              v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v67, &v91);

              *(v63 + 4) = v68;
              *(v63 + 12) = 2080;
              v70.n128_u64[0] = 0;
              v71.n128_u64[0] = 0;
              v72.n128_u64[0] = 0;
              v73.n128_u64[0] = 0;
              if ((v44 & 1) == 0)
              {
                v70.n128_f64[0] = v40;
                v71.n128_f64[0] = v41;
                v72.n128_f64[0] = v42;
                v73.n128_f64[0] = v43;
              }

              MEMORY[0x18D00DFC0](v90, v69, v70, v71, v72, v73);
              v74 = LoggableRect.description.getter();
              v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v75, &v91);

              *(v63 + 14) = v76;
              *(v63 + 22) = 2080;
              MEMORY[0x18D00DFC0](v90, v77, a8, a9, a10, a11);
              v78 = LoggableRect.description.getter();
              v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v79, &v91);

              *(v63 + 24) = v80;
              *(v63 + 32) = 2080;
              v81 = v87;
              v82 = _s7SwiftUI25UIKitFocusItemDescriptionVyACyxGxcfCSo6UIViewC_Tt0g5Tf4g_nTm(v81);
              v84 = v83;

              v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v84, &v91);

              *(v63 + 34) = v85;
              _os_log_impl(&dword_18BD4A000, v61, v89, "skipped: %s with: %s in: %s for: %s", v63, 0x2Au);
              v86 = v88;
              swift_arrayDestroy();
              MEMORY[0x18D0110E0](v86, -1, -1);
              MEMORY[0x18D0110E0](v63, -1, -1);

              swift_unknownObjectRelease();
            }

            else
            {
              swift_unknownObjectRelease();
            }

            (*(v59 + 8))(v24, v58);
          }

          goto LABEL_30;
        }

        v39 = v38;
        swift_unknownObjectRetain();
        AnyUIKitHostedFocusItem.addToHostIfNeeded(_:)(a5, ObjectType, v39);
        [v29 frame];
      }

      v40 = v32;
      v41 = v33;
      v42 = v34;
      v43 = v35;
      swift_unknownObjectRelease();
      v92.origin.x = v40;
      v92.origin.y = v41;
      v92.size.width = v42;
      v92.size.height = v43;
      v94.origin.x = a8;
      v94.origin.y = a9;
      v94.size.width = a10;
      v94.size.height = a11;
      v93 = CGRectIntersection(v92, v94);
      if (!CGRectIsEmpty(v93))
      {
        v45 = swift_unknownObjectRetain();
        MEMORY[0x18D00CC30](v45);
        if (*((*a6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_unknownObjectRelease();
        goto LABEL_30;
      }

      v44 = 0;
      goto LABEL_22;
    }
  }

  v36 = 0;
LABEL_31:
  *a7 = v36;
}

unint64_t lazy protocol witness table accessor for type ResolvedOptions and conformance ResolvedOptions()
{
  result = lazy protocol witness table cache variable for type ResolvedOptions and conformance ResolvedOptions;
  if (!lazy protocol witness table cache variable for type ResolvedOptions and conformance ResolvedOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedOptions and conformance ResolvedOptions);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UpdateViewFocusItem and conformance UpdateViewFocusItem()
{
  result = lazy protocol witness table cache variable for type UpdateViewFocusItem and conformance UpdateViewFocusItem;
  if (!lazy protocol witness table cache variable for type UpdateViewFocusItem and conformance UpdateViewFocusItem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UpdateViewFocusItem and conformance UpdateViewFocusItem);
  }

  return result;
}

uint64_t initializeWithCopy for UpdateViewFocusItem(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  swift_weakCopyInit();
  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t outlined destroy of UpdateViewFocusItem(uint64_t a1)
{
  swift_weakDestroy();

  return a1;
}

double @objc UIKitContainerFocusResponderItem.frame.getter(void *a1)
{
  v1 = a1;
  v2 = UIKitContainerFocusResponderItem.frame.getter();

  return v2;
}

unint64_t lazy protocol witness table accessor for type IsFocusedEnvironmentChild and conformance IsFocusedEnvironmentChild()
{
  result = lazy protocol witness table cache variable for type IsFocusedEnvironmentChild and conformance IsFocusedEnvironmentChild;
  if (!lazy protocol witness table cache variable for type IsFocusedEnvironmentChild and conformance IsFocusedEnvironmentChild)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IsFocusedEnvironmentChild and conformance IsFocusedEnvironmentChild);
  }

  return result;
}

double UIKitContainerFocusResponderItem.frame.getter()
{
  v0 = type metadata accessor for UIKitContainerFocusResponderItem();

  return AnyUIKitHostedFocusItem.defaultFrame.getter(v0, &protocol witness table for UIKitContainerFocusResponderItem<A>);
}

double AnyUIKitHostedFocusItem.defaultFrame.getter(uint64_t a1, uint64_t a2)
{
  MEMORY[0x18D00ABE0]();
  AGGraphClearUpdate();
  closure #1 in AnyUIKitHostedFocusItem.defaultFrame.getter(a1, a2, &v6);
  AGGraphSetUpdate();
  v4 = *&v6;
  static Update.end()();
  return v4;
}

__int128 *closure #1 in AnyUIKitHostedFocusItem.defaultFrame.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _OWORD *a3@<X8>)
{
  (*(a2 + 32))(a1, a2);
  type metadata accessor for CGRect(0);
  result = AGGraphGetWeakValue();
  if (result)
  {
    v5 = *result;
    v6 = result[1];
  }

  else
  {
    v5 = 0uLL;
    v6 = 0uLL;
  }

  *a3 = v5;
  a3[1] = v6;
  return result;
}

Class @objc _UIHostingView.focusItems(in:)(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  _UIHostingView.focusItems(in:)(a2, a3, a4, a5);

  type metadata accessor for _UISceneBSActionHandler(0, &lazy cache variable for type metadata for UIFocusItem);
  v10.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v10.super.isa;
}

id @objc UIKitContainerFocusResponderItem.focusItemContainer.getter()
{
  FocusStoreLocation.id.getter();
  v0 = swift_unknownObjectRetain();

  return v0;
}

id @objc UIKitContainerFocusResponderItem.parentFocusEnvironment.getter()
{
  v0 = UIKitContainerFocusResponderItem.parentFocusEnvironment.getter();

  return v0;
}

id @objc UIKitContainerFocusResponderItem.coordinateSpace.getter(void *a1)
{
  v1 = a1;
  v2 = specialized UIKitContainerFocusResponderItem.coordinateSpace.getter();
  swift_unknownObjectRetain();

  return v2;
}

uint64_t specialized UIKitContainerFocusResponderItem.coordinateSpace.getter()
{
  result = *(v0 + direct field offset for UIKitContainerFocusResponderItem.cachedCoordinateSpace);
  if (!result)
  {
    type metadata accessor for UIKitContainerFocusResponderItem.WrapperCoordinateSpace();
    Strong = swift_unknownObjectWeakLoadStrong();
    v3 = UIKitContainerFocusResponderItem.frame.getter();
    v7 = specialized UIKitContainerFocusResponderItem.WrapperCoordinateSpace.__allocating_init(host:frame:)(v3, v4, v5, v6);

    *(v0 + direct field offset for UIKitContainerFocusResponderItem.cachedCoordinateSpace) = v7;
    swift_unknownObjectRelease();
    result = *(v0 + direct field offset for UIKitContainerFocusResponderItem.cachedCoordinateSpace);
    if (!result)
    {
      __break(1u);
    }
  }

  return result;
}

double @objc UIKitContainerFocusResponderItem.WrapperCoordinateSpace.convert(_:to:)(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, double (*a8)(uint64_t, double, double, double, double))
{
  swift_unknownObjectRetain();
  v15 = a1;
  v16 = a8(a7, a2, a3, a4, a5);
  swift_unknownObjectRelease();

  return v16;
}

double UIKitContainerFocusResponderItem.WrapperCoordinateSpace.convert(_:to:)(uint64_t a1, SEL *a2, double a3, double a4, double a5, double a6)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0.0;
  }

  v13 = Strong;
  v14 = [Strong coordinateSpace];

  [v14 *a2];
  v16 = v15;
  swift_unknownObjectRelease();
  return v16;
}

Class @objc UIKitContainerFocusResponderItem.focusItems(in:)(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  UIKitContainerFocusResponderItem.focusItems(in:)(a2, a3, a4, a5);

  type metadata accessor for _UISceneBSActionHandler(0, &lazy cache variable for type metadata for UIFocusItem);
  v10.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v10.super.isa;
}

unint64_t UIKitContainerFocusResponderItem.focusItems(in:)(double a1, double a2, double a3, double a4)
{
  v8 = type metadata accessor for UIKitContainerFocusResponderItem();

  return UIKitContainerFocusItem.childFocusItems(in:)(v8, &protocol witness table for UIKitContainerFocusResponderItem<A>, a1, a2, a3, a4);
}

uint64_t protocol witness for BaseFocusResponder.isEnabled.getter in conformance FocusStateBindingResponder()
{
  if (!AGSubgraphIsValid())
  {
    return 0;
  }

  v0 = AGGraphClearUpdate();
  MEMORY[0x1EEE9AC00](v0);
  static Update.ensure<A>(_:)();
  v1 = v3;
  AGGraphSetUpdate();
  return v1;
}

void *partial apply for specialized closure #1 in closure #1 in FocusStateBindingResponder.withoutDependencies<A>(body:)@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v4);
  *a1 = v4;
  return result;
}

_BYTE *partial apply for closure #1 in FocusStateBindingResponder.isEnabled.getter@<X0>(_BYTE *a1@<X8>)
{
  result = AGGraphGetValue();
  *a1 = *result;
  return result;
}

Class @objc UIKitDefaultFocusSectionResponderItem.preferredFocusEnvironments.getter(void *a1)
{
  v1 = a1;
  UIKitDefaultFocusSectionResponderItem.preferredFocusEnvironments.getter();

  type metadata accessor for UIFocusEnvironment();
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

uint64_t UIKitDefaultFocusSectionResponderItem.preferredFocusEnvironments.getter()
{
  if (!swift_weakLoadStrong())
  {
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for BaseFocusResponder?(0, &lazy cache variable for type metadata for BaseFocusResponder??, type metadata accessor for BaseFocusResponder?, MEMORY[0x1E69E6720]);
  static Update.ensure<A>(_:)();
  v0 = *&v33[0];
  if (*&v33[0] < 2uLL)
  {
    goto LABEL_12;
  }

  type metadata accessor for ViewResponder();
  v1 = dynamic_cast_existential_1_superclass_conditional(*&v33[0]);
  if (!v1)
  {
    outlined consume of ListItemTint?(*&v33[0]);
LABEL_12:

    return MEMORY[0x1E69E7CC0];
  }

  v3 = v1;
  v4 = v2;

  if (!(*(v4 + 8))(*v3, v4))
  {
LABEL_14:
    outlined consume of ListItemTint?(*&v33[0]);
    return MEMORY[0x1E69E7CC0];
  }

  ObjectType = swift_getObjectType();
  v6 = swift_conformsToProtocol2();
  if (!v6)
  {
    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  v7 = *(v6 + 8);
  v8 = *(v7 + 64);
  v9 = v6;
  swift_unknownObjectRetain();
  v8(ObjectType, v7);
  v10 = (*(v9 + 32))(ObjectType, v9);
  v11 = v10 >> 62;
  if (!(v10 >> 62))
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_23;
    }

LABEL_8:
    v12 = v10;
    memset(v33, 0, 48);
    v33[3] = xmmword_18CD6A6D0;
    MEMORY[0x1EEE9AC00](v10);
    MEMORY[0x1EEE9AC00](v13);

    dispatch thunk of ResponderNode.visit(applying:)();
    outlined consume of ListItemTint?(v0);
    outlined init with copy of FocusItem?(v33, v29);
    if (v30 || v31 != 1)
    {
      outlined init with take of FocusItem(v29, v32);
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v16 = Strong;
        swift_getObjectType();
        type metadata accessor for UIView();
        v17 = dynamic_cast_existential_1_superclass_conditional(v16);
        if (v17)
        {
          v18 = v17;
          swift_unknownObjectRetain();
          v19 = specialized static FocusBridge.representedFocusItem(_:in:)(v32, v18);
          if (v19)
          {
            v20 = v19;

            swift_unknownObjectRelease();
            type metadata accessor for _ContiguousArrayStorage<Text>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
            v21 = swift_allocObject();
            *(v21 + 16) = xmmword_18CD69590;
            *(v21 + 32) = v20;
            swift_unknownObjectRelease_n();
            swift_unknownObjectRelease();
            outlined consume of ListItemTint?(v0);
            outlined destroy of FocusItem(v32);
            outlined destroy of FocusItem?(v33);
            return v21;
          }

          outlined destroy of FocusItem(v32);
          swift_unknownObjectRelease_n();
          goto LABEL_22;
        }

        swift_unknownObjectRelease();
      }

      outlined destroy of FocusItem(v32);
    }

    else
    {
      outlined destroy of FocusItem?(v29);
    }

LABEL_22:
    outlined destroy of FocusItem?(v33);
    v10 = v12;
    goto LABEL_23;
  }

  v27 = v10;
  v28 = __CocoaSet.count.getter();
  v10 = v27;
  if (!v28)
  {
    goto LABEL_8;
  }

LABEL_23:
  if (v11)
  {
    type metadata accessor for UIFocusEnvironment();

    v24 = _bridgeCocoaArray<A>(_:)();
    swift_unknownObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v22 = v10 & 0xFFFFFFFFFFFFFF8;
    v23 = v10;

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for UIFocusEnvironment();
    if (swift_dynamicCastMetatype() || (v25 = *(v22 + 16)) == 0)
    {
LABEL_25:

      swift_unknownObjectRelease_n();
      outlined consume of ListItemTint?(v0);
      return v23;
    }

    v26 = v22 + 32;
    while (1)
    {
      v34 = &unk_1F00436D8;
      if (!swift_dynamicCastObjCProtocolConditional())
      {
        break;
      }

      v26 += 8;
      if (!--v25)
      {
        goto LABEL_25;
      }
    }

    swift_unknownObjectRelease_n();

    v24 = v22 | 1;
  }

  outlined consume of ListItemTint?(v0);
  return v24;
}

__int128 *closure #1 in DefaultFocusSectionResponder.responder.getter@<X0>(__int128 *a1@<X8>)
{
  swift_beginAccess();
  type metadata accessor for BaseFocusResponder?(0);
  result = AGGraphGetWeakValue();
  if (result)
  {
    v4 = *result;

    v3 = v4;
  }

  else
  {
    v3 = xmmword_18CD6A6D0;
  }

  *a1 = v3;
  return result;
}

uint64_t QueryDefaultFocusResponder.value.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v35 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FocusState.Binding();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - v10;
  v12 = type metadata accessor for FocusStore.Entry();
  v13 = type metadata accessor for Optional();
  v26 = *(v13 - 8);
  v27 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  v33 = a3;
  QueryDefaultFocusResponder.binding.getter(v11);
  specialized FocusState.Binding.location.getter();
  v16 = *(v9 + 8);
  v29 = v9 + 8;

  v30 = v8;
  v31 = v16;
  v16(v11, v8);
  v17 = v35;
  v32 = a1;
  Value = AGGraphGetValue();
  v28 = *(v6 + 16);
  v28(v17, Value, a2);
  FocusStoreLocation.findEntry(with:)(v15);

  v19 = *(v6 + 8);
  v34 = v6 + 8;
  v20 = v19;
  v19(v17, a2);
  v21 = *(v12 - 8);
  if ((*(v21 + 48))(v15, 1, v12) == 1)
  {
    (*(v26 + 8))(v15, v27);
  }

  else
  {
    v22 = FocusStore.Entry.responder.getter(v12);
    (*(v21 + 8))(v15, v12);
    if (v22)
    {
      return v22;
    }
  }

  QueryDefaultFocusResponder.binding.getter(v11);
  v24 = v30;
  specialized FocusState.Binding.location.getter();

  v31(v11, v24);
  v25 = AGGraphGetValue();
  v28(v17, v25, a2);
  FocusStoreLocation.deferUpdate(_:)(v17);

  v20(v17, a2);
  return 0;
}

uint64_t protocol witness for Rule.value.getter in conformance QueryDefaultFocusResponder<A>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = QueryDefaultFocusResponder.value.getter(*v2, *(a1 + 16), *(a1 + 24));
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t QueryDefaultFocusResponder.binding.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for FocusState.Binding();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t specialized FocusState.Binding.location.getter()
{
  type metadata accessor for FocusStoreLocation();

  return swift_dynamicCastClassUnconditional();
}

double FocusItemFrame.value.getter()
{
  Value = AGGraphGetValue();
  v1 = *(Value + 8);
  v15 = *Value;
  v16 = v1;
  v2 = *(Value + 32);
  v17 = *(Value + 16);
  v18 = v2;
  type metadata accessor for CGPoint(0);

  v3 = AGGraphGetValue();
  ViewTransform.appendPosition(_:)(*v3);
  v4 = AGGraphGetValue();
  v11 = 0.0;
  v12 = 0;
  v13 = MEMORY[0x18D00B390](v4, v5, v6, v7);
  v14 = v8;
  static CoordinateSpace.ID.viewGraphHostContainerCoordinateSpace.getter();
  v10[40] = 1;

  CGRect.convert(to:transform:)();

  outlined destroy of CoordinateSpace(v10);

  return v11;
}

id specialized UIKitContainerFocusResponderItem.WrapperCoordinateSpace.init(host:frame:)(double a1, double a2, double a3, double a4)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v9 = &v4[direct field offset for UIKitContainerFocusResponderItem.WrapperCoordinateSpace.frame];
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for UIKitContainerFocusResponderItem.WrapperCoordinateSpace();
  return objc_msgSendSuper2(&v11, sel_init);
}

void AlwaysOnBridge.timelineRegistrations.didset(unint64_t a1)
{
  v22 = *(v1 + 48);
  if (a1 >> 62)
  {
LABEL_41:
    v14 = a1;
    v2 = __CocoaSet.count.getter();
    a1 = v14;
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = v22 & 0xFFFFFFFFFFFFFF8;
  if (v22 >> 62)
  {
    v15 = a1;
    v21 = __CocoaSet.count.getter();
    a1 = v15;
  }

  else
  {
    v21 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = a1 & 0xFFFFFFFFFFFFFF8;
  v19 = a1 & 0xC000000000000001;
  v16 = a1;
  v17 = a1 + 32;

  v4 = 0;
  v5 = 0;
  while (1)
  {
    if (v5 == v2)
    {
      if (v21 == v4)
      {
        goto LABEL_35;
      }

      v10 = 0;
      v5 = v2;
      goto LABEL_17;
    }

    if (v19)
    {
      a1 = MEMORY[0x18D00E9C0](v5, v16);
    }

    else
    {
      if ((v5 & 0x8000000000000000) != 0)
      {
        goto LABEL_38;
      }

      if (v5 >= *(v18 + 16))
      {
        goto LABEL_40;
      }

      a1 = *(v17 + 8 * v5);
    }

    v10 = a1;
    if (__OFADD__(v5++, 1))
    {
      goto LABEL_39;
    }

    if (v21 == v4)
    {
      break;
    }

LABEL_17:
    if ((v22 & 0xC000000000000001) != 0)
    {
      a1 = MEMORY[0x18D00E9C0](v4, v22);
    }

    else
    {
      if (v4 >= *(v3 + 16))
      {
        goto LABEL_37;
      }

      a1 = *(v22 + 8 * v4 + 32);
    }

    v12 = a1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (!v10)
    {

      if (!v12)
      {
        return;
      }

      goto LABEL_33;
    }

    if (!a1)
    {
      goto LABEL_31;
    }

    outlined init with copy of _Benchmark(&v10[OBJC_IVAR____TtC7SwiftUI20DateSequenceTimeline_schedule], v25);
    type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for TimelineSchedule);
    type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for Equatable);
    if (swift_dynamicCast())
    {
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v23, v26);
      v6 = v27;
      v20 = __swift_project_boxed_opaque_existential_1(v26, v27);
      v7 = *&v12[OBJC_IVAR____TtC7SwiftUI20DateSequenceTimeline_schedule + 24];
      v8 = __swift_project_boxed_opaque_existential_1(&v12[OBJC_IVAR____TtC7SwiftUI20DateSequenceTimeline_schedule], v7);
      v25[3] = v7;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
      (*(*(v7 - 8) + 16))(boxed_opaque_existential_1, v8, v7);
      v3 = v22 & 0xFFFFFFFFFFFFFF8;
      LOBYTE(v8) = areEqual #1 <A>(_:_:) in static DateSequenceTimeline.== infix(_:_:)(v20, v25, v6);

      __swift_destroy_boxed_opaque_existential_1(v25);
      a1 = __swift_destroy_boxed_opaque_existential_1(v26);
      if ((v8 & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v24 = 0;
      memset(v23, 0, sizeof(v23));
      outlined destroy of LocationBasedSensoryFeedback?(v23, &lazy cache variable for type metadata for Equatable?, &lazy cache variable for type metadata for Equatable);

      if (v10 != v12)
      {
        goto LABEL_32;
      }
    }

    ++v4;
  }

  if (a1)
  {
LABEL_31:

LABEL_32:

LABEL_33:
    v13._object = 0x800000018CD4E100;
    v13._countAndFlagsBits = 0xD00000000000001FLL;
    AlwaysOnBridge.invalidate(for:)(v13);
    return;
  }

LABEL_35:
}

void protocol witness for AnyUIKitHostedFocusItem.host.setter in conformance UIKitFocusableViewResponderItem(void *a1)
{
  swift_unknownObjectWeakAssign();
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance AppGraph.LaunchProfileOptions(_DWORD *a1, int *a2)
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

void *protocol witness for RawRepresentable.init(rawValue:) in conformance MainMenuItem.Template.Options@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

void *protocol witness for SetAlgebra.remove(_:) in conformance MainMenuItem.Template.Options@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *protocol witness for SetAlgebra.update(with:) in conformance MainMenuItem.Template.Options@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t _sSo21UIAccessibilityTraitsas21_ObjectiveCBridgeableSCsACP026_unconditionallyBridgeFromC1Cyx01_C5CTypeQzSgFZTW_0@<X0>(uint64_t *a1@<X8>)
{
  result = static UInt64._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  return result;
}

uint64_t _sSo16UIMenuIdentifieraSYSCSY8rawValue03RawD0QzvgTW_0@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_DWORD *protocol witness for RawRepresentable.init(rawValue:) in conformance AppGraph.LaunchProfileOptions@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t getEnumTagSinglePayload for HVGridGeometry(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for SpatialTapGesture.Value(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ScrollViewChildSafeAreaInsets(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_18C0A7ED0()
{
  type metadata accessor for <<opaque return type of View.accessibilityDisabled()>>.0();
  type metadata accessor for <<opaque return type of View.accessibilityDisabled()>>.0();
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Rectangle, Color>, _MaskEffect<Image>>, _BlendModeEffect>, _FlexFrameLayout>(255, &lazy cache variable for type metadata for ModifiedContent<HStack<<<opaque return type of View.accessibilityDisabled()>>.0>, _FlexFrameLayout>, type metadata accessor for HStack<<<opaque return type of View.accessibilityDisabled()>>.0>);
  type metadata accessor for _EnvironmentKeyWritingModifier<Color?>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _ShapeView<Rectangle, Color> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<Color?>);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  type metadata accessor for ModifiedContent();
  type metadata accessor for AddGestureModifier<_EndedGesture<_ChangedGesture<DragGesture>>, DefaultGestureCombiner>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _EndedGesture<_ChangedGesture<IndirectScrollGesture>>(255);
  type metadata accessor for CapsuleSlider.ScrollState();
  type metadata accessor for Optional();
  lazy protocol witness table accessor for type _ShapeView<Rectangle, Color> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type _EndedGesture<_ChangedGesture<IndirectScrollGesture>> and conformance _EndedGesture<A>, type metadata accessor for _EndedGesture<_ChangedGesture<IndirectScrollGesture>>);
  type metadata accessor for GestureStateGesture();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type DefaultGestureCombiner and conformance DefaultGestureCombiner();
  type metadata accessor for AddGestureModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image?, _OpacityEffect>, _FlexFrameLayout>, _FixedSizeLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>, _FlexFrameLayout>, _AllowsHitTestingModifier>>();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type _ShapeView<Rectangle, Color> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type AddGestureModifier<_EndedGesture<_ChangedGesture<DragGesture>>, DefaultGestureCombiner> and conformance AddGestureModifier<A, B>, type metadata accessor for AddGestureModifier<_EndedGesture<_ChangedGesture<DragGesture>>, DefaultGestureCombiner>);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type _ShapeView<Rectangle, Color> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image?, _OpacityEffect>, _FlexFrameLayout>, _FixedSizeLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>, _FlexFrameLayout>, _AllowsHitTestingModifier>> and conformance _OverlayModifier<A>, type metadata accessor for _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image?, _OpacityEffect>, _FlexFrameLayout>, _FixedSizeLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>, _FlexFrameLayout>, _AllowsHitTestingModifier>>);
  swift_getWitnessTable();
  type metadata accessor for GeometryReader();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ContentShapeModifier<RoundedRectangle>();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type _ShapeView<Rectangle, Color> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type _ContentShapeModifier<RoundedRectangle> and conformance _ContentShapeModifier<A>, type metadata accessor for _ContentShapeModifier<RoundedRectangle>);
  return swift_getWitnessTable();
}

uint64_t sub_18C0A84D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = EnvironmentValues.accessibilityLargeContentViewerEnabled.getter(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18C0A852C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = EnvironmentValues.accessibilityLargeContentViewerEnabled.getter(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18C0A856C()
{
  type metadata accessor for AccessibilityLargeContentViewModifier();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18C0A85F8()
{
  type metadata accessor for EnvironmentPropertyKey<AccessibilityLargeContentViewerKey>(255, &lazy cache variable for type metadata for AccessibilityLargeContentViewBehaviorModifier<EnabledLargeContentView>, &type metadata for EnabledLargeContentView, &protocol witness table for EnabledLargeContentView, type metadata accessor for AccessibilityLargeContentViewBehaviorModifier);
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18C0A8690()
{

  v1 = *(v0 + 160);
  v2 = v1 & 0xFFFFFFFFFFFFFFFELL;
  if ((v1 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL)
  {
    v3 = *(v0 + 40);
    if (v3 != 255)
    {
      outlined consume of GraphicsImage.Contents(*(v0 + 32), v3);
      v1 = *(v0 + 160);
      v2 = v1 & 0xFFFFFFFFFFFFFFFELL;
    }

    if (v2 != 0x1FFFFFFFELL)
    {
      outlined consume of AccessibilityImageLabel(*(v0 + 144), *(v0 + 152), v1);
    }

    swift_unknownObjectRelease();
  }

  return swift_deallocObject();
}

uint64_t sub_18C0A8778()
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for ModifiedContent();
  swift_getAssociatedConformanceWitness();
  return swift_getWitnessTable();
}

uint64_t sub_18C0A8838@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.headerProminence.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_18C0A89B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TableColumnCollection.Entry(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18C0A8A24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TableColumnCollection.Entry(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_18C0A8A94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TableColumnCollection.Entry(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_18C0A8B54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TableColumnCollection.Entry(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_18C0A8D70()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18C0A8DA8()
{
  v1 = type metadata accessor for UTType();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_18C0A8E94@<X0>(uint64_t *a1@<X8>)
{
  result = UIHostingController.safeAreaRegions.getter();
  *a1 = result;
  return result;
}

__n128 sub_18C0A8EF4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18C0A8F00()
{
  type metadata accessor for _TraitWritingModifier<NavigationSplitViewColumnWidth.TraitKey>();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _TraitWritingModifier<NavigationSplitViewColumnWidth.TraitKey> and conformance _TraitWritingModifier<A>();
  return swift_getWitnessTable();
}

uint64_t sub_18C0A8F6C()
{
  type metadata accessor for RelationshipModifier();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18C0A8FDC()
{
  lazy protocol witness table accessor for type _MenuButtonStyleConfiguration.Label and conformance _MenuButtonStyleConfiguration.Label();
  type metadata accessor for StaticSourceWriter();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _MenuButtonStyleConfiguration.Content and conformance _MenuButtonStyleConfiguration.Content();
  type metadata accessor for StaticSourceWriter();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_18C0A9164()
{
  type metadata accessor for _TraitWritingModifier<NavigationSplitViewOpaqueBackgroundTraitKey>();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _TraitWritingModifier<NavigationSplitViewOpaqueBackgroundTraitKey> and conformance _TraitWritingModifier<A>();
  return swift_getWitnessTable();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MultimodalNavigationTitle.CodingKeys@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_18C0A9210()
{
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for ViewInputFlagModifier<IsHandGestureShortcut>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<IsHandGestureShortcut>, lazy protocol witness table accessor for type IsHandGestureShortcut and conformance IsHandGestureShortcut, &unk_1EFF90618, MEMORY[0x1E697FD28]);
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type ExternalGestureActionModifier and conformance ExternalGestureActionModifier();
  swift_getWitnessTable();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type ViewInputFlagModifier<IsHandGestureShortcut> and conformance ViewInputFlagModifier<A>();
  return swift_getWitnessTable();
}

uint64_t sub_18C0A9418@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.displayCornerRadius.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_18C0A948C()
{
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer?, ButtonStyleConfiguration.Label, Spacer?)>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FlexFrameLayout>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer?, ButtonStyleConfiguration.Label, Spacer?)>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FlexFrameLayout>, type metadata accessor for ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer?, ButtonStyleConfiguration.Label, Spacer?)>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>);
  type metadata accessor for _BackgroundStyleModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _OverlayModifier<Color>();
  type metadata accessor for ModifiedContent();
  v0 = MEMORY[0x1E69815C0];
  type metadata accessor for _EnvironmentKeyWritingModifier<Color?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Color?>, &lazy cache variable for type metadata for Color?, MEMORY[0x1E69815C0]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for PlatterButtonStyleView.ClippingShape();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer?, ButtonStyleConfiguration.Label, Spacer?)>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
  swift_getWitnessTable();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type TupleView<(Spacer?, ButtonStyleConfiguration.Label, Spacer?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _OverlayModifier<Color> and conformance _OverlayModifier<A>, type metadata accessor for _OverlayModifier<Color>);
  swift_getWitnessTable();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Color?>, &lazy cache variable for type metadata for Color?, v0);
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for PlatterShadowedContent();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_18C0A96EC()
{
  type metadata accessor for _ShadowView();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for _OverlayModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for StrokeBorderShapeView();
  swift_getWitnessTable();
  type metadata accessor for _OverlayModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ClipEffect();
  type metadata accessor for ModifiedContent();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for _ShadowView();
  type metadata accessor for _BackgroundModifier();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_18C0A9AC8()
{
  type metadata accessor for _EnvironmentKeyWritingModifier<Visibility>();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Visibility> and conformance _EnvironmentKeyWritingModifier<A>();
  return swift_getWitnessTable();
}

uint64_t sub_18C0A9BF0()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for __App.ShoeboxAdaptor() - 8);
  (*(*(v1 - 8) + 8))(v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_18C0A9CC4()
{
  type metadata accessor for WindowGroup();

  return swift_getWitnessTable();
}

uint64_t sub_18C0A9D1C()
{
  type metadata accessor for ListStyleWriter();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18C0A9D8C()
{
  type metadata accessor for _EnvironmentKeyWritingModifier<Bool?>();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Bool?> and conformance _EnvironmentKeyWritingModifier<A>();
  return swift_getWitnessTable();
}

uint64_t sub_18C0A9DF8()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 80);

  return swift_deallocObject();
}

uint64_t sub_18C0A9E50()
{
  type metadata accessor for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>(0, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.rootViewIdentifier>>.0);
  v2 = v1 - 8;
  v3 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v4 = *(v2 + 60);
  type metadata accessor for <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0(0, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.rootViewIdentifier>>.0);
  (*(*(v5 - 8) + 8))(v3 + v4, v5);

  return swift_deallocObject();
}

uint64_t sub_18C0A9F94(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18C0A9FF8()
{
  type metadata accessor for TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = v4 + *(*(v1 - 8) + 64);
  type metadata accessor for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>(0, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 80);
  v9 = (v5 + v8) & ~v8;
  type metadata accessor for <<opaque return type of View.truePreference<A>(_:)>>.0();
  (*(*(v10 - 8) + 8))(v0 + v4, v10);
  v11 = *(v2 + 60);
  type metadata accessor for <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0(0, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.rootViewIdentifier>>.0);
  (*(*(v12 - 8) + 8))(v0 + v4 + v11, v12);

  v13 = *(v7 + 60);
  type metadata accessor for <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0(0, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0);
  (*(*(v14 - 8) + 8))(v0 + v9 + v13, v14);

  return swift_deallocObject();
}

uint64_t sub_18C0AA238(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18C0AA29C()
{
  type metadata accessor for _PreferenceWritingModifier<OrnamentScalingBehaviorKey>();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _PreferenceWritingModifier<OrnamentScalingBehaviorKey> and conformance _PreferenceWritingModifier<A>();
  return swift_getWitnessTable();
}

uint64_t sub_18C0AA308()
{

  return swift_deallocObject();
}

uint64_t sub_18C0AA348()
{
  type metadata accessor for _PreferenceTransformModifier<AVKitCaptureButtonPreference>();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _PreferenceTransformModifier<AVKitCaptureButtonPreference> and conformance _PreferenceTransformModifier<A>();
  return swift_getWitnessTable();
}

uint64_t sub_18C0AA3B4()
{

  return swift_deallocObject();
}

uint64_t sub_18C0AA3F0()
{
  if (*(v0 + 40) >= 2uLL)
  {
    outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  }

  return swift_deallocObject();
}

uint64_t sub_18C0AA440()
{
  type metadata accessor for AccessibilityProxyTransformModifier();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18C0AA4CC()
{
  v1 = *(v0 + 24);
  type metadata accessor for Optional();
  v2 = (type metadata accessor for Binding() - 8);
  v3 = v0 + ((*(*v2 + 80) + 48) & ~*(*v2 + 80));

  v4 = v2[10];
  v5 = *(v1 - 8);
  if (!(*(v5 + 48))(v3 + v4, 1, v1))
  {
    (*(v5 + 8))(v3 + v4, v1);
  }

  return swift_deallocObject();
}

uint64_t sub_18C0AA604()
{

  return swift_deallocObject();
}

uint64_t sub_18C0AA644()
{
  type metadata accessor for AlertTransformModifier<ActionSheet.Presentation.Key>();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18C0AA6B4()
{
  type metadata accessor for AlertTransformModifier<ActionSheet.Presentation.Key>();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18C0AA720()
{
  if (*(v0 + 40))
  {
    outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));

    if (*(v0 + 72))
    {
      outlined consume of Text.Storage(*(v0 + 48), *(v0 + 56), *(v0 + 64));
    }
  }

  if (*(v0 + 88))
  {
  }

  if (*(v0 + 128))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 104);
  }

  return swift_deallocObject();
}

void _s7SwiftUI15NavigationStateV12StackContentV5ViewsV0G8SequenceVy___xq_GSlAASl34_customLastIndexOfEquatableElementy0K0QzSgSg0N0QzFTW_0(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = -2;
}

uint64_t sub_18C0AA818()
{
  v1 = *(v0 + 496);
  if (v1 == 2)
  {

    v3 = *(v0 + 72);
    if (v3)
    {
      if (v3 == 1)
      {
        goto LABEL_35;
      }
    }

    if (*(v0 + 88))
    {
    }

    if (*(v0 + 112))
    {

LABEL_34:
    }
  }

  else if (v1 == 1)
  {
    if (*(v0 + 96))
    {
    }

    if (*(v0 + 152))
    {
    }

    v2 = *(v0 + 256);
    if (*(v0 + 288))
    {
      if (v2 != 255)
      {
        if (v2)
        {

          if (*(v0 + 200))
          {
            __swift_destroy_boxed_opaque_existential_1(v0 + 176);
          }

          if (*(v0 + 224) != 1)
          {
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(v0 + 168);
        }
      }
    }

    else
    {
      if (v2 != 255)
      {
        if (v2)
        {

          if (*(v0 + 200))
          {
            __swift_destroy_boxed_opaque_existential_1(v0 + 176);
          }

          if (*(v0 + 224) != 1)
          {
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(v0 + 168);
        }
      }
    }

    if (*(v0 + 408))
    {

      goto LABEL_34;
    }
  }

LABEL_35:

  return swift_deallocObject();
}

uint64_t sub_18C0AAF18()
{
  type metadata accessor for AccessibilityProxyTransformModifier();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18C0AB088(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UIButton.Configuration();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18C0AB0F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UIButton.Configuration();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_18C0AB19C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = MEMORY[0x18D0064D0](a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18C0AB20C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for UIButton.Configuration();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_18C0AB2C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = type metadata accessor for UIButton.Configuration();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18C0AB36C@<X0>(uint64_t a1@<X8>)
{
  result = static VerticalAlignment.center.getter();
  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_18C0AB39C()
{

  return swift_deallocObject();
}

uint64_t sub_18C0AB3D4()
{

  return swift_deallocObject();
}

uint64_t sub_18C0AB40C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PlatformItemList.Item();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 251)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 <= 4)
    {
      v11 = 4;
    }

    else
    {
      v11 = *(a1 + *(a3 + 20));
    }

    v12 = v11 - 4;
    if (v10 >= 4)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = type metadata accessor for UIButton.Configuration();
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + *(a3 + 24);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_18C0AB534(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PlatformItemList.Item();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 251)
  {
    *(a1 + *(a4 + 20)) = a2 + 4;
  }

  else
  {
    v11 = type metadata accessor for UIButton.Configuration();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_18C0AB688()
{
  type metadata accessor for ResolvedButtonStyleBody();
  type metadata accessor for StaticIf<IsVisionEnabledPredicate, _EnvironmentKeyWritingModifier<Bool?>, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type StaticIf<IsVisionEnabledPredicate, _EnvironmentKeyWritingModifier<Bool?>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  return swift_getWitnessTable();
}

uint64_t sub_18C0AB718()
{
  type metadata accessor for SearchSelectionModifier(255);
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18C0AB784(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Binding<TextSelection?>(0, &lazy cache variable for type metadata for Binding<TextSelection?>, type metadata accessor for TextSelection?, MEMORY[0x1E6981948]);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18C0AB820(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Binding<TextSelection?>(0, &lazy cache variable for type metadata for Binding<TextSelection?>, type metadata accessor for TextSelection?, MEMORY[0x1E6981948]);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_18C0AB8C0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SearchBoundProperty<TextSelection?>.Metadata(0, &lazy cache variable for type metadata for SearchBoundProperty<TextSelection?>, type metadata accessor for SearchBoundProperty);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18C0AB948(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SearchBoundProperty<TextSelection?>.Metadata(0, &lazy cache variable for type metadata for SearchBoundProperty<TextSelection?>, type metadata accessor for SearchBoundProperty);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_18C0AB9EC()
{
  type metadata accessor for _EnvironmentKeyWritingModifier<Bool>();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type HStack<ForEach<Slice<_VariadicView_Children>, AnyHashable, _VariadicView_Children.Element>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<Bool>);
  return swift_getWitnessTable();
}

uint64_t sub_18C0ABA94()
{

  return swift_deallocObject();
}

uint64_t sub_18C0ABADC()
{

  return swift_deallocObject();
}

uint64_t sub_18C0ABB34()
{
  v0 = MEMORY[0x1E69801E0];
  type metadata accessor for InterfaceIdiomPredicate<WidgetInterfaceIdiom>(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<WidgetInterfaceIdiom>, MEMORY[0x1E697FAD8], MEMORY[0x1E697FAD0], MEMORY[0x1E69801E0]);
  type metadata accessor for LabelStyleWritingModifier<ContentUnavailableLabelStyle>(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<ContentUnavailableLabelStyle>, lazy protocol witness table accessor for type ContentUnavailableLabelStyle and conformance ContentUnavailableLabelStyle, &unk_1EFF93F98, type metadata accessor for LabelStyleWritingModifier);
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, WidgetLabelModifier, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, WidgetLabelModifier, EmptyModifier>);
  type metadata accessor for ModifiedContent();
  _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>, &lazy cache variable for type metadata for Font?, MEMORY[0x1E6980F50]);
  type metadata accessor for ModifiedContent();
  v1 = MEMORY[0x1E6980A08];
  type metadata accessor for Font?(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TextAlignment>, MEMORY[0x1E697E1E0], MEMORY[0x1E6980A08]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, _FixedSizeLayout, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, _FixedSizeLayout, EmptyModifier>);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Color?>, &lazy cache variable for type metadata for Color?, MEMORY[0x1E69815C0]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for InterfaceIdiomPredicate<WidgetInterfaceIdiom>(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<MacInterfaceIdiom>, MEMORY[0x1E697F248], MEMORY[0x1E697F240], v0);
  type metadata accessor for LabelStyleWritingModifier<ContentUnavailableLabelStyle>(255, &lazy cache variable for type metadata for _LayoutRoot<ActionsLayout>, lazy protocol witness table accessor for type ActionsLayout and conformance ActionsLayout, &unk_1EFF93EF8, MEMORY[0x1E697DDC0]);
  type metadata accessor for StaticIf<CUVFlexibleButtonPredicate, ButtonStyleModifier<FlexibleBorderedButtonStyle>, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _LayoutRoot<ActionsLayout> and conformance _LayoutRoot<A>();
  type metadata accessor for _VariadicView.Tree();
  type metadata accessor for StaticIf();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  type metadata accessor for Font?(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ControlSize>, MEMORY[0x1E697DC38], v1);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, WidgetLabelModifier, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, EmptyModifier, _PaddingLayout>);
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, _FixedSizeLayout, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, _FlexFrameLayout, EmptyModifier>);
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<CUVFlexibleFramePredicate, _FlexFrameLayout, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  v2 = MEMORY[0x1E69E6530];
  _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Int?>, &lazy cache variable for type metadata for Int?, MEMORY[0x1E69E6530]);
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, EmptyModifier, _PaddingLayout> and conformance <> StaticIf<A, B, C>();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, _FlexFrameLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, _FlexFrameLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, _FlexFrameLayout, EmptyModifier>);
  swift_getWitnessTable();
  lazy protocol witness table accessor for type StaticIf<CUVFlexibleFramePredicate, _FlexFrameLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<CUVFlexibleFramePredicate, _FlexFrameLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<CUVFlexibleFramePredicate, _FlexFrameLayout, EmptyModifier>, lazy protocol witness table accessor for type CUVFlexibleFramePredicate and conformance CUVFlexibleFramePredicate);
  swift_getWitnessTable();
  _s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGACyxGAA04ViewF0AAWlTm_0(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Int?> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Int?>, &lazy cache variable for type metadata for Int?, v2);
  swift_getWitnessTable();
  type metadata accessor for ScrollView();
  type metadata accessor for InterfaceIdiomPredicate<WidgetInterfaceIdiom>(255, &lazy cache variable for type metadata for TransformScrollStorageModifier<TransformScrollBounceBehavior>, &type metadata for TransformScrollBounceBehavior, &protocol witness table for TransformScrollBounceBehavior, type metadata accessor for TransformScrollStorageModifier);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ViewThatFits();
  type metadata accessor for StaticIf();
  lazy protocol witness table accessor for type InterfaceIdiomPredicate<WidgetInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>();
  return swift_getWitnessTable();
}

uint64_t sub_18C0AC180()
{
  v1 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  v2 = v0 + *(v1 + 24) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  type metadata accessor for ButtonAction();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    outlined consume of Environment<AppIntentExecutor?>.Content(*v2, *(v2 + 8), *(v2 + 16));
  }

  else
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined consume of Environment<OpenURLAction>.Content(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 34));
      outlined consume of Environment<OpenURLAction>.Content(*(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72), *(v2 + 74));
      v4 = *(type metadata accessor for LinkDestination() + 24);
      v5 = type metadata accessor for URL();
      (*(*(v5 - 8) + 8))(v2 + v4, v5);
      goto LABEL_8;
    }

    if (EnumCaseMultiPayload)
    {
      goto LABEL_8;
    }
  }

LABEL_8:

  return swift_deallocObject();
}

uint64_t sub_18C0AC38C@<X0>(__int128 *a1@<X0>, _WORD *a2@<X8>)
{
  v5 = *a1;
  result = EnvironmentValues.accessibilityEnabledTechnologies.getter(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_18C0AC3DC(char *a1)
{
  v1 = *a1;
  v3 = 0;
  return EnvironmentValues.setIsEnabled(_:for:)(v1, &v3);
}

uint64_t sub_18C0AC41C(char *a1)
{
  v1 = *a1;
  v3 = 1;
  return EnvironmentValues.setIsEnabled(_:for:)(v1, &v3);
}

uint64_t sub_18C0AC460(char *a1)
{
  v1 = *a1;
  v3 = 2;
  return EnvironmentValues.setIsEnabled(_:for:)(v1, &v3);
}

uint64_t sub_18C0AC4A4(char *a1)
{
  v1 = *a1;
  v3 = 3;
  return EnvironmentValues.setIsEnabled(_:for:)(v1, &v3);
}

uint64_t sub_18C0AC4E8(char *a1)
{
  v1 = *a1;
  v3 = 4;
  return EnvironmentValues.setIsEnabled(_:for:)(v1, &v3);
}

uint64_t sub_18C0AC524()
{
  type metadata accessor for WrappedButtonStyle();
  swift_getWitnessTable();
  type metadata accessor for ButtonStyleModifier();
  swift_getWitnessTable();
  type metadata accessor for AutomaticStyleOverrideModifier();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_18C0AC620()
{
  type metadata accessor for ButtonStyleModifier();
  swift_getWitnessTable();
  type metadata accessor for AutomaticStyleOverrideModifier();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_18C0AC6EC()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for WheelPicker() - 8);
  v3 = v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

  v4 = type metadata accessor for Binding();
  (*(*(v1 - 8) + 8))(v3 + *(v4 + 32), v1);
  type metadata accessor for PickerStyleConfiguration();

  return swift_deallocObject();
}

uint64_t sub_18C0AC810()
{
  type metadata accessor for PickerStyleConfiguration.Content();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for PickerStyleConfiguration.Label();
  type metadata accessor for WheelPicker_Phone<DataSource>(255, &lazy cache variable for type metadata for WheelPicker_Phone<DataSource>, lazy protocol witness table accessor for type DataSource and conformance DataSource, &unk_1EFF94338, type metadata accessor for WheelPicker_Phone);
  type metadata accessor for LabeledContent();
  type metadata accessor for WheelPicker_Phone<DataSource>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<AccessibilityCombinedLabeledContent>, lazy protocol witness table accessor for type AccessibilityCombinedLabeledContent and conformance AccessibilityCombinedLabeledContent, &type metadata for AccessibilityCombinedLabeledContent, MEMORY[0x1E697FD28]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v2>, WheelPickerLabelsHiddenModifier, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type WheelPicker_Phone<DataSource> and conformance WheelPicker_Phone<A>();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type ViewInputFlagModifier<AccessibilityCombinedLabeledContent> and conformance ViewInputFlagModifier<A>();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v2>, WheelPickerLabelsHiddenModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  swift_getWitnessTable();
  type metadata accessor for GroupElementsOfContent();
  type metadata accessor for Group();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for _UnaryViewAdaptor();
  return swift_getWitnessTable();
}

uint64_t sub_18C0ACAAC()
{

  return swift_deallocObject();
}

uint64_t sub_18C0ACAEC()
{
  type metadata accessor for TextInputSuggestionsModifier();
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  type metadata accessor for Optional();
  lazy protocol witness table accessor for type EnvironmentValues.TextInputSuggestions and conformance EnvironmentValues.TextInputSuggestions();
  swift_getWitnessTable();
  type metadata accessor for StaticSourceWriter();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ViewInputFlagModifier<HasTextInputSuggestions>();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type ViewInputFlagModifier<HasTextInputSuggestions> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type ViewInputFlagModifier<HasTextInputSuggestions> and conformance ViewInputFlagModifier<A>, type metadata accessor for ViewInputFlagModifier<HasTextInputSuggestions>);
  return swift_getWitnessTable();
}

uint64_t sub_18C0ACCA4()
{
  type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<ListRowInsetsTraitKey>, &type metadata for ListRowInsetsTraitKey, &protocol witness table for ListRowInsetsTraitKey, MEMORY[0x1E697FDB8]);
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _TraitWritingModifier<ListRowInsetsTraitKey> and conformance _TraitWritingModifier<A>();
  return swift_getWitnessTable();
}

uint64_t sub_18C0ACE60()
{

  return swift_deallocObject();
}

uint64_t sub_18C0AD0D0()
{
  v1 = *(v0 + 24);
  type metadata accessor for Optional();
  v2 = (type metadata accessor for Binding() - 8);
  v3 = v0 + ((*(*v2 + 80) + 48) & ~*(*v2 + 80));

  v4 = v2[10];
  v5 = *(v1 - 8);
  if (!(*(v5 + 48))(v3 + v4, 1, v1))
  {
    (*(v5 + 8))(v3 + v4, v1);
  }

  return swift_deallocObject();
}

uint64_t sub_18C0AD208()
{
  type metadata accessor for AlertTransformModifier<Alert.Presentation.Key>();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18C0AD278()
{
  type metadata accessor for AlertTransformModifier<Alert.Presentation.Key>();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18C0AD2F4()
{

  return swift_deallocObject();
}

uint64_t sub_18C0AD334()
{

  if (*(v0 + 88))
  {
    outlined consume of Environment<AppIntentExecutor?>.Content(*(v0 + 64), *(v0 + 72), *(v0 + 80));
  }

  return swift_deallocObject();
}

uint64_t sub_18C0AD418()
{
  type metadata accessor for _PreferenceWritingModifier<NavigationTransitionKey>();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _PreferenceWritingModifier<NavigationTransitionKey> and conformance _PreferenceWritingModifier<A>();
  return swift_getWitnessTable();
}

uint64_t sub_18C0AD49C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed ArchivableMutation, @guaranteed Transaction) -> ();
  a2[1] = v5;
}

uint64_t sub_18C0AD514()
{

  return swift_deallocObject();
}

uint64_t sub_18C0AD550()
{

  return swift_deallocObject();
}

uint64_t sub_18C0AD598()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  type metadata accessor for TableRow();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for OutlineGroup();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_18C0AD6C0()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  type metadata accessor for TableRow();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ForEach();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}
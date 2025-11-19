void _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE7OpacityO_Tt0g5(float a1)
{
  v3 = v1[1];
  v4 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  *&v5 = a1;
  v6 = [v4 initWithFloat_];
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v3 + 40);
  *(v3 + 40) = 0x8000000000000000;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(v7);
  v12 = *(v9 + 2);
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
LABEL_16:
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
    *(v7 + 8 * v11) = v9;
    goto LABEL_10;
  }

  v15 = v10;
  if (*(v9 + 3) >= v14)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
    }
  }

  else
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, isUniquelyReferenced_nonNull_native);
    v16 = specialized __RawDictionaryStorage.find<A>(_:)(v7);
    if ((v15 & 1) != (v17 & 1))
    {
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }

    v11 = v16;
  }

  *(v3 + 40) = v9;

  v18 = *(v3 + 40);
  if ((v15 & 1) == 0)
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, v7, MEMORY[0x1E69E7CC0], *(v3 + 40));
  }

  v7 = *(v18 + 56);
  v9 = *(v7 + 8 * v11);
  v23 = v6;
  v19 = swift_isUniquelyReferenced_nonNull_native();
  *(v7 + 8 * v11) = v9;
  if ((v19 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_10:
  v21 = *(v9 + 2);
  v20 = *(v9 + 3);
  if (v21 >= v20 >> 1)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v9);
    *(v7 + 8 * v11) = v9;
  }

  *(v9 + 2) = v21 + 1;
  v22 = &v9[32 * v21];
  *(v22 + 4) = 0x7974696361706FLL;
  *(v22 + 5) = 0xE700000000000000;
  *(v22 + 6) = v23;
  v22[56] = 1;
}

void type metadata accessor for _DictionaryStorage<ObjectIdentifier, [DisplayList.ViewUpdater.ViewCache.PendingAsyncValue]>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, [DisplayList.ViewUpdater.ViewCache.PendingAsyncValue]>)
  {
    type metadata accessor for _ContiguousArrayStorage<Any>(255, &lazy cache variable for type metadata for [DisplayList.ViewUpdater.ViewCache.PendingAsyncValue], &type metadata for DisplayList.ViewUpdater.ViewCache.PendingAsyncValue, MEMORY[0x1E69E62F8]);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, [DisplayList.ViewUpdater.ViewCache.PendingAsyncValue]>);
    }
  }
}

SwiftUI::Time_optional __swiftcall ViewGraphRootValueUpdater.renderAsync(interval:targetTimestamp:)(Swift::Double interval, SwiftUI::Time_optional targetTimestamp)
{
  v5 = v3;
  v6 = v2;
  v8 = v4;
  v9 = **&targetTimestamp.is_nil;
  v10 = *(*&targetTimestamp.is_nil + 8);
  v11 = type metadata accessor for CustomAttributeWriter(0, &lazy cache variable for type metadata for ViewGraphOwner);
  v12 = *(v5 + 8);
  v13 = *(v12 + 16);
  v14 = v13(v48, v11, v11, v6, v12);
  if (!v48[0])
  {
    goto LABEL_15;
  }

  v34 = v9;
  v16 = v48[1];
  v17 = type metadata accessor for CustomAttributeWriter(0, &lazy cache variable for type metadata for ViewGraphRenderHost);
  v13(&v45, v17, v17, v6, v12);
  if (!v47)
  {
    swift_unknownObjectRelease();
    v14 = outlined destroy of ViewGraphRenderHost?(&v45);
LABEL_15:
    *v8 = 0;
    *(v8 + 8) = 1;
    goto LABEL_23;
  }

  outlined init with take of AnyTrackedValue(&v45, v48);
  if (one-time initialization token for lockAssertionsAreEnabled != -1)
  {
    swift_once();
  }

  if (lockAssertionsAreEnabled)
  {
    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      v14 = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      goto LABEL_23;
    }
  }

  if (ViewGraphRootValueUpdater.isRendering.getter(v6, v5) || (ObjectType = swift_getObjectType(), (*(v16 + 40))(ObjectType, v16)))
  {
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = (*(v16 + 8))(ObjectType, v16);
    swift_beginAccess();
    if (!*(*(v19 + 144) + 16))
    {
      specialized static Update.begin()();
      v20 = (*(v16 + 32))(&v45, ObjectType, v16);
      *v21 = *v21 + interval;
      v20(&v45, 0);
      (*(v16 + 16))(&v45, ObjectType, v16);
      v22 = v45;
      LOBYTE(v45) = 2;
      v23 = *(v16 + 72);
      v23(&v45, ObjectType, v16);
      v41 = v22;
      ViewGraph.updateOutputsAsync(at:)(&v41, &v45);
      v24 = v45;
      if (v45)
      {
        v29 = WORD4(v45);
        v30 = HIDWORD(*(&v45 + 1));
        v31 = v46;
        swift_beginAccess();
        v25 = *(v19 + 376);
        v26 = ++static DisplayList.Version.lastValue;
        v32 = v49;
        v33 = v23;
        v27 = v50;
        __swift_project_boxed_opaque_existential_1(v48, v49);
        v41 = v24;
        v42 = v29;
        v43 = v30;
        v39 = v25;
        v40 = v22;
        v38 = v10;
        v36 = v31;
        v37 = v34;
        v35 = v26;
        (*(v27 + 8))(&v44, &v41, 1, &v40, &v39, &v37, &v36, &v35, v32, v27);

        v28 = v44;
        LOBYTE(v41) = 0;
        v33(&v41, ObjectType, v16);
        *v8 = v28;
        *(v8 + 8) = 0;
      }

      else
      {
        LOBYTE(v45) = 0;
        v23(&v45, ObjectType, v16);
        *v8 = 0;
        *(v8 + 8) = 1;
      }

      static Update.end()();

      swift_unknownObjectRelease();
      goto LABEL_13;
    }

    swift_unknownObjectRelease();
  }

  *v8 = 0;
  *(v8 + 8) = 1;
LABEL_13:
  v14 = __swift_destroy_boxed_opaque_existential_1(v48);
LABEL_23:
  result.value = *&v15;
  result.is_nil = v14;
  return result;
}

void ViewGraph.updateOutputsAsync(at:)(double *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v23[0] = *a1;
  ViewGraph.beginNextUpdate(at:)(v23);
  Attribute = AGWeakAttributeGetAttribute();
  v6 = *MEMORY[0x1E698D3F8];
  if (Attribute == *MEMORY[0x1E698D3F8] || (~AGGraphGetValueState() & 0x11) == 0 || (swift_beginAccess(), AGWeakAttributeGetAttribute() == v6) || (~AGGraphGetValueState() & 0x11) == 0 || (swift_beginAccess(), *(*(v3 + 352) + 16)) && (AGWeakAttributeGetAttribute() == v6 || (~AGGraphGetValueState() & 0x11) == 0))
  {
LABEL_18:
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
    swift_beginAccess();
    v7 = *(v3 + 228);
    if (v7)
    {
      v8 = *(v3 + 216);
      if (v8)
      {
        v9 = 0;
        v10 = v7 - 1;
        while (1)
        {
          v12 = (v8 + v9);
          if (v10)
          {
            v9 += *(v12 + 2);
          }

          else
          {
            v9 = 0;
          }

          v13 = *v12;
          v20 = v12;
          v14 = (*(v13 + 144))(&v20, v3);
          if (v14 == 2)
          {
            *(v12 + 3) |= 2u;
          }

          else
          {
            *(v12 + 3) &= ~2u;
            if ((v14 & 1) == 0)
            {
              goto LABEL_18;
            }
          }

          if (!(v10-- | v9))
          {
            goto LABEL_20;
          }
        }
      }
    }

    else
    {
LABEL_20:
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v15 = swift_beginAccess();
      if (*(v3 + 16))
      {
        MEMORY[0x1EEE9AC00](v15);
        v17 = v16;
        AGGraphWithMainThreadHandler();

        if (v20)
        {
          v18 = v22;
          v19 = v21 & 0xFFFFFFFF0000FFFFLL;
          *a2 = v20;
          a2[1] = v19;
          a2[2] = v18;
          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }

    __break(1u);
  }
}

uint64_t static ViewGraphFeatureBuffer._VTable.allowsAsyncUpdate(elt:graph:)(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 176);
  _UnsafeHeterogeneousBuffer_Element.body<A>(as:)();
  return (*(*(v2 + 184) + 40))(a2, v4);
}

uint64_t closure #2 in ViewGraph.updateOutputsAsync(at:)(uint64_t a1, uint64_t *a2)
{
  v34 = a2;
  v41 = *MEMORY[0x1E69E9840];
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v35 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  do
  {
    LOBYTE(v38[0]) = 1;
    specialized GraphHost.runTransaction(_:do:id:)(1uLL, 0x100000000uLL, a1);
    if (GraphHost.updatePreferences()())
    {
      v5 = 1;
      *(v37 + 16) = 1;
    }

    v7 = *(a1 + 352);

    v8 = specialized ViewGraphGeometryObservers.needsUpdate(graph:)(a1, v7);

    if (v8)
    {
      v35 = 1;
      *(v36 + 16) = 1;
    }

    v9 = *(a1 + 228);
    if (v9)
    {
      v10 = *(a1 + 216);
      if (v10)
      {
        v11 = 0;
        v12 = v9 - 1;
        while (1)
        {
          v14 = (v10 + v11);
          if (v12)
          {
            v11 += *(v14 + 2);
            v15 = *(v14 + 3);
            if ((v15 & 2) != 0)
            {
              goto LABEL_10;
            }
          }

          else
          {
            v11 = 0;
            v15 = *(v14 + 3);
            if ((v15 & 2) != 0)
            {
              goto LABEL_10;
            }
          }

          if ((v15 & 1) == 0)
          {
            v16 = *v14;
            v38[0] = v14;
            if (((*(v16 + 152))(v38, a1) & 1) == 0)
            {
              goto LABEL_10;
            }

            *(v14 + 3) |= 1u;
          }

          v4 = 1;
          *(v3 + 16) = 1;
LABEL_10:
          if (!(v12-- | v11))
          {
            goto LABEL_18;
          }
        }
      }

LABEL_33:
      __break(1u);
    }

LABEL_18:
    ++v6;
    IsDirty = AGSubgraphIsDirty();
  }

  while (v6 != 8 && (IsDirty & 1) != 0);
  if (((v5 | v4 | v35) & 1) == 0)
  {

    goto LABEL_28;
  }

  MEMORY[0x1EEE9AC00](IsDirty);
  v30[2] = v3;
  v30[3] = a1;
  v31 = 1;
  v32 = v37;
  v33 = v36;
  if ([objc_opt_self() isMainThread])
  {
    update #1 () in ViewGraph.updateOutputs(async:)(v3, a1, 1, v37, v36);
    goto LABEL_27;
  }

  v18 = swift_allocObject();
  *(v18 + 16) = partial apply for update #1 () in ViewGraph.updateOutputs(async:);
  *(v18 + 24) = v30;
  v19 = AGSubgraphGetCurrent();
  CurrentAttribute = AGGraphGetCurrentAttribute();
  v38[0] = partial apply for thunk for @callee_guaranteed () -> ();
  v38[1] = v18;
  v39 = v19;
  v40 = CurrentAttribute;
  v21 = one-time initialization token for _lock;

  if (v21 != -1)
  {
    swift_once();
  }

  _MovableLockSyncMain(static Update._lock, v38, @objc closure #1 in closure #1 in closure #1 in static Update.syncMain(_:));
  v22 = v39;

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_33;
  }

LABEL_27:
  --*(a1 + 368);

LABEL_28:

  type metadata accessor for (Path, FillStyle)(0, &lazy cache variable for type metadata for (DisplayList, DisplayList.Version));
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v25 = *(WeakValue + 16);
    v26 = *(WeakValue + 8) | (*(WeakValue + 12) << 32);
  }

  else
  {
    v25 = 0;
    v26 = 0;
    v27 = MEMORY[0x1E69E7CC0];
  }

  v28 = v34;
  *v34 = v27;
  v28[1] = v26;
  v28[2] = v25;
}

uint64_t DisplayList.ViewUpdater.renderAsync(to:time:targetTimestamp:version:maxVersion:)@<X0>(uint64_t result@<X0>, double *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v66 = *MEMORY[0x1E69E9840];
  v8 = *result;
  v9 = *(result + 8);
  v32 = *(result + 12);
  v10 = *a2;
  v11 = *a5;
  if (*(v6 + 192) == 1)
  {
    if (*a4)
    {
      if (*(v6 + 146) != ((2 * ((33 * WORD1(*a4)) ^ *a4)) | 1))
      {
        goto LABEL_7;
      }
    }

    else if (*(v6 + 146))
    {
      goto LABEL_7;
    }

    v12 = *(v6 + 152);
    if (v12 >= v10)
    {
      *a6 = v12;
      *(a6 + 8) = 0;
      return result;
    }
  }

LABEL_7:
  v29 = *(a3 + 8);
  v30 = *a3;
  swift_beginAccess();
  value = printTree.value;
  if (printTree.value == 2)
  {
    v14 = getenv("SWIFTUI_PRINT_TREE");
    if (!v14)
    {
      printTree.value = 0;
      swift_endAccess();
      goto LABEL_14;
    }

    v15 = atoi(v14);
    printTree.value = v15 != 0;
    swift_endAccess();
    if (!v15)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  swift_endAccess();
  if (value)
  {
LABEL_12:
    type metadata accessor for _ContiguousArrayStorage<Any>();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_18DDA6EB0;
    *&v54 = 0;
    *(&v54 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(20);
    MEMORY[0x193ABEDD0](0x697620636E797341, 0xEE00207461207765);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x193ABEDD0](2618, 0xE200000000000000);
    *&v42 = v8;
    WORD4(v42) = v9;
    HIDWORD(v42) = v32;
    DisplayList.description.getter();
    MEMORY[0x193ABEDD0]();

    *(v16 + 56) = MEMORY[0x1E69E6158];
    *(v16 + 32) = 0;
    *(v16 + 40) = 0xE000000000000000;
    print(_:separator:terminator:)();
  }

LABEL_14:
  DisplayList.ViewUpdater.effectiveRootPlatform.getter(&v54);
  v17 = v54;
  v18 = *(v7 + 184);
  v19 = *(v7 + 160);
  v35[0] = v7;
  v35[1] = v18;
  v35[2] = v11;
  v35[3] = v19;
  v34[0] = v7;
  *&v34[1] = v10;
  v34[2] = v11;
  v34[3] = v19;
  v20 = one-time initialization token for normal;
  swift_retain_n();
  if (v20 != -1)
  {
    swift_once();
  }

  v21 = static GraphicsBlendMode.normal;
  v22 = byte_1ED52F818;
  *&v54 = v35;
  DWORD2(v54) = 1065353216;
  *&v55 = static GraphicsBlendMode.normal;
  BYTE8(v55) = byte_1ED52F818;
  v56 = 0x3FF0000000000000uLL;
  *&v57 = 0;
  *(&v57 + 1) = 0x3FF0000000000000;
  v58 = 0uLL;
  v23 = MEMORY[0x1E69E7CC0];
  *&v59 = MEMORY[0x1E69E7CC0];
  *(&v59 + 1) = MEMORY[0x1E69E7CC0];
  *&v60 = 0;
  *(&v60 + 7) = 0;
  *&v61 = 0xF000000000000007;
  *(&v61 + 1) = MEMORY[0x1E69E7CC0];
  v65 = 0;
  v63 = 0u;
  v64 = 0u;
  v62 = 0u;
  *&v42 = v34;
  DWORD2(v42) = 1065353216;
  *&v43 = static GraphicsBlendMode.normal;
  BYTE8(v43) = byte_1ED52F818;
  v44 = 0x3FF0000000000000uLL;
  *&v45 = 0;
  *(&v45 + 1) = 0x3FF0000000000000;
  v46 = 0uLL;
  *&v47 = MEMORY[0x1E69E7CC0];
  *(&v47 + 1) = MEMORY[0x1E69E7CC0];
  *&v48 = 0;
  *(&v48 + 7) = 0;
  *&v49 = 0xF000000000000007;
  *(&v49 + 1) = MEMORY[0x1E69E7CC0];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0;
  swift_beginAccess();
  *(v7 + 104) = 0;
  *(v7 + 112) = 0;
  *(v7 + 120) = 0;
  *(v7 + 193) = *(v7 + 192);
  *(v7 + 192) = 1;
  v33 = v17;
  v24 = *(v7 + 176);
  v25 = *(v7 + 180);
  *&v38[0] = *(v7 + 168);
  WORD4(v38[0]) = v24;
  HIDWORD(v38[0]) = v25;
  *&v36[0] = v8;
  WORD4(v36[0]) = v9;
  HIDWORD(v36[0]) = v32;
  outlined copy of GraphicsBlendMode(v21, v22);
  outlined copy of GraphicsBlendMode(v21, v22);

  DisplayList.ViewUpdater.updateAsync(platform:oldList:oldParentState:newList:newParentState:)(&v33, v38, &v54, v36, &v42, &v40);

  v26 = v40;
  v27 = v41;
  if (v41)
  {
    *(v7 + 80) = MEMORY[0x1E69E7CC8];
    *(v7 + 96) = v23;

    *(v7 + 192) = *(v7 + 193);
  }

  else
  {
    *&v36[0] = v30;
    BYTE8(v36[0]) = v29;
    swift_beginAccess();
    v28 = v36;
    DisplayList.ViewUpdater.ViewCache.commitAsyncValues(targetTimestamp:)(*(&v28 - 1));
    swift_endAccess();

    *(v7 + 168) = v8;
    *(v7 + 176) = v9;
    *(v7 + 180) = v32;

    *(v7 + 184) = v10;
    *(v7 + 146) = *(v7 + 144);
    *(v7 + 152) = v26;
  }

  *a6 = v26;
  *(a6 + 8) = v27;
  v36[8] = v50;
  v36[9] = v51;
  v36[10] = v52;
  v37 = v53;
  v36[4] = v46;
  v36[5] = v47;
  v36[6] = v48;
  v36[7] = v49;
  v36[0] = v42;
  v36[1] = v43;
  v36[2] = v44;
  v36[3] = v45;
  outlined destroy of DisplayList.ViewUpdater.Model.State(v36);
  v38[8] = v62;
  v38[9] = v63;
  v38[10] = v64;
  v39 = v65;
  v38[4] = v58;
  v38[5] = v59;
  v38[6] = v60;
  v38[7] = v61;
  v38[0] = v54;
  v38[1] = v55;
  v38[2] = v56;
  v38[3] = v57;
  return outlined destroy of DisplayList.ViewUpdater.Model.State(v38);
}

void DisplayList.ViewUpdater.updateAsync(platform:oldList:oldParentState:newList:newParentState:)(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v44 = *a4;
  v45 = *a2;
  v7 = *(*a2 + 16);
  if (v7 == *(*a4 + 16))
  {
    v8 = v6;
    v39 = *a1;
    swift_beginAccess();
    if (v7)
    {
      v9 = 0;
      v10 = (v45 + 32);
      v11 = (v44 + 32);
      v12 = INFINITY;
      v38 = v7;
      while (v9 < *(v45 + 16))
      {
        v13 = v10[1];
        v14 = v10[2];
        v15 = v10[3];
        *&v98[12] = *(v10 + 60);
        v16 = *v10;
        *v98 = v15;
        v97[2] = v14;
        v97[0] = v16;
        v97[1] = v13;
        v17 = v10[3];
        v95 = v10[2];
        v96[0] = v17;
        *(v96 + 12) = *(v10 + 60);
        v18 = *v10;
        v94 = v10[1];
        v93 = v18;
        if (v9 >= *(v44 + 16))
        {
          goto LABEL_38;
        }

        v19 = v11[1];
        v20 = v11[2];
        v21 = v11[3];
        *&v100[12] = *(v11 + 60);
        v22 = *v11;
        v99[2] = v20;
        *v100 = v21;
        v99[0] = v22;
        v99[1] = v19;
        v23 = v11[3];
        v91 = v11[2];
        *v92 = v23;
        *&v92[12] = *(v11 + 60);
        v24 = *v11;
        v90 = v11[1];
        v89 = v24;
        if (*&v100[24] != *&v98[24])
        {
          v83 = v91;
          v84[0] = *v92;
          *(v84 + 12) = *&v92[12];
          v81 = v89;
          v82 = v90;
          outlined init with copy of DisplayList.Item(v97, &v85);
          outlined init with copy of DisplayList.Item(v99, &v85);
          outlined destroy of DisplayList.Item(&v81);
          v87 = v95;
          v88[0] = v96[0];
          *(v88 + 12) = *(v96 + 12);
          v86 = v94;
          v85 = v93;
          v36 = &v85;
LABEL_35:
          outlined destroy of DisplayList.Item(v36);
          *a6 = 0;
          *(a6 + 8) = 1;
          return;
        }

        v77[2] = v91;
        v78[0] = *v92;
        *(v78 + 12) = *&v92[12];
        v77[0] = v89;
        v77[1] = v90;
        v75 = v91;
        v76[0] = *v92;
        *(v76 + 12) = *&v92[12];
        v73 = v89;
        v74 = v90;
        *(v80 + 12) = *(v96 + 12);
        v79[2] = v95;
        v80[0] = v96[0];
        v79[0] = v93;
        v79[1] = v94;
        v71 = v95;
        v72[0] = v96[0];
        *(v72 + 12) = *(v96 + 12);
        v69 = v93;
        v70 = v94;
        outlined init with copy of DisplayList.Item(v97, v67);
        outlined init with copy of DisplayList.Item(v99, v67);
        outlined init with copy of DisplayList.Item(v77, v67);
        outlined init with copy of DisplayList.Item(v79, v67);
        v25 = DisplayList.Item.matchesTopLevelStructure(of:)(&v69);
        v83 = v71;
        v84[0] = v72[0];
        *(v84 + 12) = *(v72 + 12);
        v81 = v69;
        v82 = v70;
        outlined destroy of DisplayList.Item(&v81);
        v87 = v75;
        v88[0] = v76[0];
        *(v88 + 12) = *(v76 + 12);
        v86 = v74;
        v85 = v73;
        outlined destroy of DisplayList.Item(&v85);
        if ((v25 & 1) == 0)
        {
          v71 = v91;
          v72[0] = *v92;
          *(v72 + 12) = *&v92[12];
          v69 = v89;
          v70 = v90;
          outlined destroy of DisplayList.Item(&v69);
          v75 = v95;
          v76[0] = v96[0];
          *(v76 + 12) = *(v96 + 12);
          v73 = v93;
          v74 = v94;
          v36 = &v73;
          goto LABEL_35;
        }

        v26 = *&v92[24];
        v46 = v9;
        if (*&v92[24])
        {
          v27 = 0;
          v42 = *(v8 + 108);
          v43 = *(v8 + 104);
          v28 = *(v8 + 112);
          v47 = *(v8 + 120);
          v29 = 1;
          *(v8 + 104) = *&v92[24];
          *(v8 + 108) = 0;
        }

        else
        {
          v29 = 0;
          v26 = *(v8 + 104);
          v27 = *(v8 + 108) + 1;
          *(v8 + 108) = v27;
          v28 = *(v8 + 112);
          v47 = *(v8 + 120);
          v42 = v27;
          v43 = v26;
        }

        *(v8 + 120) = v29;
        *&v67[0] = v39;
        swift_beginAccess();
        DisplayList.ViewUpdater.ViewCache.prepare(item:platform:parentState:)(&v93, v67, a3, &v69);
        v30 = *&v69;
        *(v8 + 104) = v26;
        *(v8 + 108) = v27;
        *(v8 + 112) = v28;
        *(v8 + 120) = v29;
        *&v69 = v39;
        DisplayList.ViewUpdater.ViewCache.prepare(item:platform:parentState:)(&v89, &v69, a5, &v66);
        swift_endAccess();
        v60[2] = v95;
        v61[0] = v96[0];
        *(v61 + 12) = *(v96 + 12);
        v60[0] = v93;
        v60[1] = v94;
        v55 = v95;
        v56[0] = v96[0];
        *(v56 + 12) = *(v96 + 12);
        v53 = v93;
        v54 = v94;
        *(v63 + 12) = *&v92[12];
        v62[2] = v91;
        v63[0] = *v92;
        v62[0] = v89;
        v62[1] = v90;
        v31 = v66;
        v57 = v39;
        v51 = v91;
        v52[0] = *v92;
        *(v52 + 12) = *&v92[12];
        v49 = v89;
        v50 = v90;
        outlined init with copy of DisplayList.Item(v60, v48);
        outlined init with copy of DisplayList.Item(v62, v48);
        DisplayList.ViewUpdater.updateInheritedViewAsync(platform:oldItem:oldParentState:newItem:newParentState:)(&v57, &v53, a3, &v49, a5, &v58);
        v64[2] = v51;
        v65[0] = v52[0];
        *(v65 + 12) = *(v52 + 12);
        v64[0] = v49;
        v64[1] = v50;
        outlined destroy of DisplayList.Item(v64);
        v67[2] = v55;
        v68[0] = v56[0];
        *(v68 + 12) = *(v56 + 12);
        v67[0] = v53;
        v67[1] = v54;
        outlined destroy of DisplayList.Item(v67);
        v71 = v91;
        v72[0] = *v92;
        *(v72 + 12) = *&v92[12];
        v69 = v89;
        v70 = v90;
        outlined destroy of DisplayList.Item(&v69);
        v75 = v95;
        v76[0] = v96[0];
        *(v76 + 12) = *(v96 + 12);
        v73 = v93;
        v74 = v94;
        outlined destroy of DisplayList.Item(&v73);
        if (v59)
        {
          *a6 = v58;
          *(a6 + 8) = 1;
          *&v53 = __PAIR64__(v42, v43);
          *(&v53 + 1) = v28;
          LOBYTE(v54) = v47;
          DisplayList.Index.leave(index:)(&v53, v32);
          return;
        }

        if (v30 >= v12)
        {
          v33 = v12;
        }

        else
        {
          v33 = v30;
        }

        if (v31 < v33)
        {
          v33 = v31;
        }

        if (v33 <= v58)
        {
          v12 = v33;
        }

        else
        {
          v12 = v58;
        }

        v34 = *(v8 + 120);
        if ((v34 & 0xC) != 0)
        {
          v35 = *(v8 + 104);
          if ((*(v8 + 120) & 4) != 0)
          {
            *(v8 + 104) = *(v8 + 112);
          }

          if ((v34 & 8) != 0)
          {
            *(v8 + 112) = v35;
          }
        }

        if (v34)
        {
          *(v8 + 104) = v43;
          *(v8 + 108) = v42;
        }

        if ((v34 & 2) != 0)
        {
          *(v8 + 112) = v28;
        }

        ++v9;
        *(v8 + 120) = v47;
        v11 += 5;
        v10 += 5;
        if (v38 == v46 + 1)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
    }

    else
    {
      v12 = INFINITY;
LABEL_32:
      *a6 = v12;
      *(a6 + 8) = 0;
    }
  }

  else
  {
    *a6 = 0;
    *(a6 + 8) = 1;
  }
}

uint64_t DisplayList.Item.matchesTopLevelStructure(of:)(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  v5 = a1[7];
  v4 = a1[8];
  v7 = v1[5];
  v6 = v1[6];
  v9 = v1[7];
  v8 = v1[8];
  v10 = v8 >> 30;
  if (v8 >> 30 <= 1)
  {
    if (v10)
    {
      if ((a1[8] & 0xC0000000) == 0x40000000)
      {
        v30 = v1[5];
        outlined copy of DisplayList.Effect(v7, v6, SBYTE4(v6));
        outlined copy of DisplayList.Item.Value(v7, v6, v9, v8);
        outlined copy of DisplayList.Item.Value(v2, v3, v5, v4);
        outlined copy of DisplayList.Effect(v7, v6, SBYTE4(v6));
        outlined copy of DisplayList.Effect(v2, v3, SBYTE4(v3));
        EnumTag = AGTypeGetEnumTag();
        outlined consume of DisplayList.Effect(v30, v6, SBYTE4(v6));
        outlined copy of DisplayList.Effect(v2, v3, SBYTE4(v3));
        v27 = AGTypeGetEnumTag();
        outlined consume of DisplayList.Item.Value(v7, v6, v9, v8);
        outlined consume of DisplayList.Item.Value(v2, v3, v5, v4);
        outlined consume of DisplayList.Effect(v2, v3, SBYTE4(v3));
        outlined consume of DisplayList.Effect(v7, v6, SBYTE4(v6));
        outlined consume of DisplayList.Effect(v2, v3, SBYTE4(v3));
        return EnumTag == v27;
      }
    }

    else if ((v4 & 0xC0000000) == 0)
    {
      v29 = v1[5];
      outlined copy of DisplayList.Item.Value(v7, v6, v9, v8);
      outlined copy of DisplayList.Item.Value(v7, v6, v9, v8);
      outlined copy of DisplayList.Item.Value(v2, v3, v5, v4);
      v11 = AGTypeGetEnumTag();
      outlined consume of DisplayList.Content.Value(v29);
      outlined copy of DisplayList.Content.Value(v2);
      v12 = AGTypeGetEnumTag();
      outlined consume of DisplayList.Item.Value(v7, v6, v9, v8);
      outlined consume of DisplayList.Item.Value(v2, v3, v5, v4);
      outlined consume of DisplayList.Content.Value(v2);
      return v11 == v12;
    }

    goto LABEL_22;
  }

  if (v10 == 2)
  {
    if ((a1[8] & 0xC0000000) == 0x80000000)
    {
      v14 = *(v7 + 16);
      if (v14 == *(v2 + 16))
      {
        v15 = (v7 + 48);
        v16 = (v2 + 48);
        v17 = v14 + 1;
        while (--v17)
        {
          if (vminv_u16(vmovn_s32(vceqq_s32(v15[-1], v16[-1]))))
          {
            v19 = v15->i32[0];
            v15 = (v15 + 40);
            v18 = v19;
            v20 = v16->i32[0];
            v16 = (v16 + 40);
            if (v18 == v20)
            {
              continue;
            }
          }

          goto LABEL_22;
        }

        outlined copy of DisplayList.Item.Value(v1[5], v1[6], v1[7], v1[8]);
        outlined copy of DisplayList.Item.Value(v2, v3, v5, v4);
        outlined consume of DisplayList.Item.Value(v7, v6, v9, v8);
        v23 = v2;
        v24 = v3;
        v25 = v5;
        v26 = v4;
        goto LABEL_26;
      }
    }
  }

  else if ((~v4 & 0xC0000000) == 0 && (v3 | v2 | v5) == 0 && v4 == 3221225472)
  {
    outlined consume of DisplayList.Item.Value(v1[5], v1[6], v1[7], v1[8]);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = -1073741824;
LABEL_26:
    outlined consume of DisplayList.Item.Value(v23, v24, v25, v26);
    return 1;
  }

LABEL_22:
  outlined copy of DisplayList.Item.Value(v1[5], v1[6], v1[7], v1[8]);
  outlined copy of DisplayList.Item.Value(v2, v3, v5, v4);
  outlined consume of DisplayList.Item.Value(v7, v6, v9, v8);
  outlined consume of DisplayList.Item.Value(v2, v3, v5, v4);
  return 0;
}

uint64_t getEnumTag for DisplayList.Effect(uint64_t a1)
{
  if (*(a1 + 12) <= 0x13u)
  {
    return *(a1 + 12);
  }

  else
  {
    return (*a1 + 20);
  }
}

uint64_t *DisplayList.ViewUpdater.updateInheritedViewAsync(platform:oldItem:oldParentState:newItem:newParentState:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v351 = *MEMORY[0x1E69E9840];
  v9 = a2[1];
  v10 = a2[3];
  v325 = a2[2];
  v326[0] = v10;
  *(v326 + 12) = *(a2 + 60);
  v11 = a2[1];
  v324[0] = *a2;
  v324[1] = v11;
  v12 = a4[3];
  v329 = a4[2];
  v330[0] = v12;
  *(v330 + 12) = *(a4 + 60);
  v13 = a4[1];
  v327 = *a4;
  v328 = v13;
  v321 = v9;
  v322 = v325;
  *v323 = a2[3];
  *&v323[12] = *(a2 + 60);
  v320 = v324[0];
  v14 = *(a3 + 144);
  v15 = *(a3 + 112);
  v338 = *(a3 + 128);
  v339 = v14;
  v16 = *(a3 + 144);
  v340 = *(a3 + 160);
  v17 = *(a3 + 80);
  v18 = *(a3 + 48);
  v334 = *(a3 + 64);
  v335 = v17;
  v19 = *(a3 + 80);
  v20 = *(a3 + 112);
  v336 = *(a3 + 96);
  v337 = v20;
  v21 = *(a3 + 16);
  v331[0] = *a3;
  v331[1] = v21;
  v22 = *(a3 + 48);
  v24 = *a3;
  v23 = *(a3 + 16);
  v332 = *(a3 + 32);
  v333 = v22;
  v316 = v338;
  v317 = v16;
  v318 = *(a3 + 160);
  v312 = v334;
  v313 = v19;
  v314 = v336;
  v315 = v15;
  v308 = v24;
  v309 = v23;
  v173 = *a1;
  v341 = *(a3 + 176);
  v319 = *(a3 + 176);
  v310 = v332;
  v311 = v18;
  swift_beginAccess();
  v25 = *(v6 + 120);
  v293 = *(v6 + 104);
  LOBYTE(v294) = v25;
  outlined init with copy of DisplayList.Item(v324, v342);
  outlined init with copy of DisplayList.ViewUpdater.Model.State(v331, v342);
  v26 = specialized static DisplayList.ViewUpdater.Model.merge(item:index:into:)(&v320, &v293, &v308);
  v306 = v328;
  *v307 = v329;
  *&v307[16] = v330[0];
  *&v307[28] = *(v330 + 12);
  v305 = v327;
  v27 = *a5;
  v28 = *(a5 + 16);
  v29 = *(a5 + 48);
  v342[2] = *(a5 + 32);
  v342[3] = v29;
  v30 = *(a5 + 16);
  v31 = *(a5 + 32);
  v32 = *a5;
  v342[0] = v27;
  v342[1] = v30;
  v33 = *(a5 + 80);
  v34 = *(a5 + 112);
  v345 = *(a5 + 96);
  v346 = v34;
  v35 = *(a5 + 80);
  v36 = *(a5 + 48);
  v343 = *(a5 + 64);
  v344 = v35;
  v37 = *(a5 + 144);
  v349 = *(a5 + 160);
  v38 = *(a5 + 144);
  v39 = *(a5 + 112);
  v347 = *(a5 + 128);
  v348 = v38;
  v301 = v347;
  v302 = v37;
  v303 = *(a5 + 160);
  v297 = v343;
  v298 = v33;
  v299 = v345;
  v300 = v39;
  v350 = *(a5 + 176);
  v304 = *(a5 + 176);
  v293 = v32;
  v294 = v28;
  v295 = v31;
  v296 = v36;
  v174 = v6;
  v40 = *(v6 + 120);
  v172 = (v6 + 104);
  v271 = *(v6 + 104);
  LOBYTE(v272) = v40;
  outlined init with copy of DisplayList.Item(&v327, &v282);
  outlined init with copy of DisplayList.ViewUpdater.Model.State(v342, &v282);
  if (v26 != specialized static DisplayList.ViewUpdater.Model.merge(item:index:into:)(&v305, &v271, &v293))
  {
    v269 = *v307;
    v270[0] = *&v307[16];
    *(v270 + 12) = *&v307[28];
    v267 = v305;
    v268 = v306;
    outlined destroy of DisplayList.Item(&v267);
    v278 = v301;
    v279 = v302;
    v280 = v303;
    v281 = v304;
    *&v274[16] = v297;
    v275 = v298;
    v276 = v299;
    v277 = v300;
    v271 = v293;
    v272 = v294;
    v273 = v295;
    *v274 = v296;
    outlined destroy of DisplayList.ViewUpdater.Model.State(&v271);
    v289 = v316;
    v290 = v317;
    v291 = v318;
    v292 = v319;
    *&v285[16] = v312;
    v286 = v313;
    v287 = v314;
    v288 = v315;
    v282 = v308;
    v283 = v309;
    v284 = v310;
    *v285 = v311;
    outlined destroy of DisplayList.ViewUpdater.Model.State(&v282);
    *a6 = 0;
    *(a6 + 8) = 1;
    goto LABEL_121;
  }

  if ((v26 & 2) != 0)
  {
    v257 = v322;
    v258[0] = *v323;
    *(v258 + 12) = *&v323[12];
    v255 = v320;
    v256 = v321;
    v284 = v322;
    *v285 = *v323;
    *&v285[12] = *&v323[12];
    v282 = v320;
    v283 = v321;
    v259 = v305;
    *(v262 + 12) = *&v307[28];
    v261 = *v307;
    v262[0] = *&v307[16];
    v260 = v306;
    v272 = v306;
    v273 = *v307;
    *v274 = *&v307[16];
    *&v274[12] = *&v307[28];
    v271 = v305;
    *&v243 = v173;
    swift_beginAccess();
    outlined init with copy of DisplayList.Item(&v255, &v251);
    outlined init with copy of DisplayList.Item(&v259, &v251);
    DisplayList.ViewUpdater.ViewCache.updateAsync(oldItem:oldState:newItem:newState:tag:platform:)(&v282, a3, &v271, a5, 1, &v243, v208);
    swift_endAccess();
    v265 = v273;
    *v266 = *v274;
    *&v266[12] = *&v274[12];
    v263 = v271;
    v264 = v272;
    outlined destroy of DisplayList.Item(&v263);
    v269 = v284;
    v270[0] = *v285;
    *(v270 + 12) = *&v285[12];
    v267 = v282;
    v268 = v283;
    outlined destroy of DisplayList.Item(&v267);
    if ((v209 & 0xFF00) == 0x200)
    {
      v253 = *v307;
      v254[0] = *&v307[16];
      *(v254 + 12) = *&v307[28];
      v251 = v305;
      v252 = v306;
      outlined destroy of DisplayList.Item(&v251);
      v278 = v301;
      v279 = v302;
      v280 = v303;
      v281 = v304;
      *&v274[16] = v297;
      v275 = v298;
      v276 = v299;
      v277 = v300;
      v271 = v293;
      v272 = v294;
      v273 = v295;
      *v274 = v296;
      outlined destroy of DisplayList.ViewUpdater.Model.State(&v271);
      v289 = v316;
      v290 = v317;
      v291 = v318;
      v292 = v319;
      *&v285[16] = v312;
      v286 = v313;
      v287 = v314;
      v288 = v315;
      v282 = v308;
      v283 = v309;
      v284 = v310;
      *v285 = v311;
      outlined destroy of DisplayList.ViewUpdater.Model.State(&v282);
      v53 = a6;
      *a6 = 0;
LABEL_15:
      *(v53 + 8) = 1;
      goto LABEL_121;
    }

    v71 = v212;
    v72 = v210;
    v178[0] = v208[0];
    v178[1] = v208[1];
    v178[2] = v208[2];
    v179 = v209 & 0x1FF;
    v180 = v210 & 1;
    v181 = v211 & 1;
    v182 = v212;
    *(v6 + 192) &= v211 & 1;
    if ((v72 & 1) == 0)
    {
      v85 = v71;
      if ((*&v323[16] & 0xC0000000) == 0x40000000)
      {
        v86 = *&v323[8];
        swift_beginAccess();
        v87 = *(v86 + 16);
        if (v87)
        {
          v88 = *(v86 + 48);
          v89 = *(v86 + 80);
          v284 = *(v86 + 64);
          *v285 = v89;
          *&v285[12] = *(v86 + 92);
          v282 = *(v86 + 32);
          v283 = v88;
          DisplayList.Index.skip(item:)(&v282);
          v90 = v87 - 1;
          if (v90)
          {
            v91 = (v86 + 112);
            do
            {
              v283 = v91[1];
              v284 = v91[2];
              *v285 = v91[3];
              *&v285[12] = *(v91 + 60);
              v92 = *v91;
              v91 += 5;
              v282 = v92;
              DisplayList.Index.skip(item:)(&v282);
              --v90;
            }

            while (v90);
          }
        }

        swift_endAccess();
      }

      v253 = *v307;
      v254[0] = *&v307[16];
      *(v254 + 12) = *&v307[28];
      v251 = v305;
      v252 = v306;
      outlined destroy of DisplayList.Item(&v251);
      v278 = v301;
      v279 = v302;
      v280 = v303;
      v281 = v304;
      *&v274[16] = v297;
      v275 = v298;
      v276 = v299;
      v277 = v300;
      v271 = v293;
      v272 = v294;
      v273 = v295;
      *v274 = v296;
      outlined destroy of DisplayList.ViewUpdater.Model.State(&v271);
      v289 = v316;
      v290 = v317;
      v291 = v318;
      v292 = v319;
      *&v285[16] = v312;
      v286 = v313;
      v287 = v314;
      v288 = v315;
      v282 = v308;
      v283 = v309;
      v284 = v310;
      *v285 = v311;
      outlined destroy of DisplayList.ViewUpdater.Model.State(&v282);
      v53 = a6;
      goto LABEL_79;
    }

    if (v26 & 4) != 0 || (swift_beginAccess(), v284 = *v307, *v285 = *&v307[16], *&v285[12] = *&v307[28], v282 = v305, v283 = v306, DisplayList.Item.features.getter(&v271), (v271))
    {
      if (v26)
      {
        *&v227 = v173;
        swift_beginAccess();
        v248 = v321;
        v249 = v322;
        *v250 = *v323;
        *&v250[12] = *&v323[12];
        v247 = v320;
        v245 = v322;
        v246[0] = *v323;
        *(v246 + 12) = *&v323[12];
        v243 = v320;
        v244 = v321;
        swift_beginAccess();
        v253 = *v307;
        v254[0] = *&v307[16];
        *(v254 + 12) = *&v307[28];
        v251 = v305;
        v252 = v306;
        v241 = *v307;
        v242[0] = *&v307[16];
        *(v242 + 12) = *&v307[28];
        v239 = v305;
        v240 = v306;
        outlined init with copy of DisplayList.Item(&v247, &v282);
        outlined init with copy of DisplayList.Item(&v251, &v282);
        DisplayList.ViewUpdater.updateItemViewAsync(platform:oldItem:oldState:newItem:newState:)(&v227, &v243, &v308, &v239, &v293, &v206);
        v273 = v241;
        *v274 = v242[0];
        *&v274[12] = *(v242 + 12);
        v271 = v239;
        v272 = v240;
        outlined destroy of DisplayList.Item(&v271);
        v284 = v245;
        *v285 = v246[0];
        *&v285[12] = *(v246 + 12);
        v282 = v243;
        v283 = v244;
        outlined destroy of DisplayList.Item(&v282);
        v74 = v206;
        v53 = a6;
        if ((v207 & 1) == 0)
        {
LABEL_78:
          *&v243 = v74;
          swift_beginAccess();
          DisplayList.ViewUpdater.ViewCache.setNextUpdate(_:in:)(&v243, v178);
          swift_endAccess();
          v253 = *v307;
          v254[0] = *&v307[16];
          *(v254 + 12) = *&v307[28];
          v251 = v305;
          v252 = v306;
          outlined destroy of DisplayList.Item(&v251);
          v278 = v301;
          v279 = v302;
          v280 = v303;
          v281 = v304;
          *&v274[16] = v297;
          v275 = v298;
          v276 = v299;
          v277 = v300;
          v271 = v293;
          v272 = v294;
          v273 = v295;
          *v274 = v296;
          outlined destroy of DisplayList.ViewUpdater.Model.State(&v271);
          v289 = v316;
          v290 = v317;
          v291 = v318;
          v292 = v319;
          *&v285[16] = v312;
          v286 = v313;
          v287 = v314;
          v288 = v315;
          v282 = v308;
          v283 = v309;
          v284 = v310;
          *v285 = v311;
          outlined destroy of DisplayList.ViewUpdater.Model.State(&v282);
          v85 = v182;
LABEL_79:
          *v53 = v85;
          *(v53 + 8) = 0;
          goto LABEL_121;
        }
      }

      else
      {
        swift_beginAccess();
        v113 = *(&v322 + 1);
        v114 = *v323;
        v115 = *&v323[8];
        v116 = *&v323[16];
        swift_beginAccess();
        v117 = *&v307[8];
        v118 = *&v307[16];
        v119 = *&v307[24];
        v120 = *&v307[32];
        v198 = *&v113;
        v199 = v114;
        v200 = v115;
        v201 = v116;
        v202 = *&v307[8];
        v203 = *&v307[16];
        v204 = *&v307[24];
        v205 = *&v307[32];
        if ((v116 & 0xC0000000) != 0x40000000 || (*&v307[32] & 0xC0000000) != 0x40000000)
        {
          outlined copy of DisplayList.Item.Value(v113, v114, v115, v116);
          outlined copy of DisplayList.Item.Value(v117, v118, v119, v120);
          outlined destroy of (DisplayList.Item.Value, DisplayList.Item.Value)(&v198, type metadata accessor for (DisplayList.Item.Value, DisplayList.Item.Value));
LABEL_77:
          v74 = 0x7FF0000000000000;
          v53 = a6;
          goto LABEL_78;
        }

        v121 = *(*&v307[24] + 16);
        v122 = v113;
        v123 = *(v115 + 16);
        v124 = v116;
        v125 = *&v307[24];
        outlined copy of DisplayList.Item.Value(v122, v114, v115, v124);
        outlined copy of DisplayList.Item.Value(v117, v118, v125, v120);
        if (v123 != v121)
        {

          outlined destroy of (DisplayList.Item.Value, DisplayList.Item.Value)(&v198, type metadata accessor for (DisplayList.Item.Value, DisplayList.Item.Value));
          v74 = 0;
          v151 = 1;
          v53 = a6;
          goto LABEL_130;
        }

        v160 = v125;
        v162 = v115;
        if (v123)
        {
          v126 = v125;
          v127 = 0;
          v128 = (v115 + 32);
          v129 = (v126 + 32);
          v130 = INFINITY;
          v53 = a6;
          v158 = v123;
          while (1)
          {
            if (v127 >= *(v162 + 16))
            {
              goto LABEL_134;
            }

            v131 = v128[1];
            v132 = v128[2];
            v133 = v128[3];
            *&v274[12] = *(v128 + 60);
            v134 = *v128;
            v273 = v132;
            *v274 = v133;
            v271 = v134;
            v272 = v131;
            v252 = v128[1];
            v253 = v128[2];
            v254[0] = v128[3];
            *(v254 + 12) = *(v128 + 60);
            v251 = *v128;
            if (v127 >= *(v160 + 16))
            {
              goto LABEL_135;
            }

            v135 = v129[1];
            v136 = v129[2];
            v137 = v129[3];
            *&v285[12] = *(v129 + 60);
            v138 = *v129;
            v284 = v136;
            *v285 = v137;
            v282 = v138;
            v283 = v135;
            v248 = v129[1];
            v249 = v129[2];
            *v250 = v129[3];
            *&v250[12] = *(v129 + 60);
            v247 = *v129;
            if (*&v285[24] != *&v274[24])
            {
              break;
            }

            v171 = v127;
            v233 = v249;
            v234[0] = *v250;
            *(v234 + 12) = *&v250[12];
            v231 = v247;
            v232 = v248;
            v229 = v249;
            v230[0] = *v250;
            *(v230 + 12) = *&v250[12];
            v227 = v247;
            v228 = v248;
            v235 = v251;
            *(v238 + 12) = *(v254 + 12);
            v237 = v253;
            v238[0] = v254[0];
            v236 = v252;
            v224 = v252;
            v225 = v253;
            v226[0] = v254[0];
            *(v226 + 12) = *(v254 + 12);
            v223 = v251;
            outlined init with copy of DisplayList.Item(&v271, &v219);
            outlined init with copy of DisplayList.Item(&v282, &v219);
            outlined init with copy of DisplayList.Item(&v231, &v219);
            outlined init with copy of DisplayList.Item(&v235, &v219);
            v139 = DisplayList.Item.matchesTopLevelStructure(of:)(&v223);
            v241 = v225;
            v242[0] = v226[0];
            *(v242 + 12) = *(v226 + 12);
            v239 = v223;
            v240 = v224;
            outlined destroy of DisplayList.Item(&v239);
            v245 = v229;
            v246[0] = v230[0];
            *(v246 + 12) = *(v230 + 12);
            v243 = v227;
            v244 = v228;
            outlined destroy of DisplayList.Item(&v243);
            if ((v139 & 1) == 0)
            {
              v225 = v249;
              v226[0] = *v250;
              *(v226 + 12) = *&v250[12];
              v223 = v247;
              v224 = v248;
              outlined destroy of DisplayList.Item(&v223);
              v229 = v253;
              v230[0] = v254[0];
              *(v230 + 12) = *(v254 + 12);
              v227 = v251;
              v228 = v252;
              v154 = &v227;
              goto LABEL_128;
            }

            v140 = *&v250[24];
            if (*&v250[24])
            {
              v141 = 0;
              v142 = v174;
              v164 = *(v174 + 108);
              v166 = *(v174 + 104);
              v143 = *(v174 + 112);
              v169 = *(v174 + 120);
              v144 = 1;
              *(v174 + 104) = *&v250[24];
            }

            else
            {
              v144 = 0;
              v142 = v174;
              v140 = *(v174 + 104);
              v141 = *(v174 + 108) + 1;
              v143 = *(v174 + 112);
              v169 = *(v174 + 120);
              v164 = v141;
              v166 = v140;
            }

            *(v142 + 108) = v141;
            *(v142 + 120) = v144;
            *&v219 = v173;
            swift_beginAccess();
            DisplayList.ViewUpdater.ViewCache.prepare(item:platform:parentState:)(&v251, &v219, &v308, &v223);
            v145 = *&v223;
            *(v142 + 104) = v140;
            *(v142 + 108) = v141;
            *(v142 + 112) = v143;
            *(v142 + 120) = v144;
            *&v223 = v173;
            DisplayList.ViewUpdater.ViewCache.prepare(item:platform:parentState:)(&v247, &v223, &v293, &v177);
            swift_endAccess();
            v146 = v177;
            v176 = v173;
            v196 = v253;
            *v197 = v254[0];
            *&v197[12] = *(v254 + 12);
            v194 = v251;
            v195 = v252;
            v190 = v253;
            v191[0] = v254[0];
            *(v191 + 12) = *(v254 + 12);
            v188 = v251;
            v189 = v252;
            v213[0] = v247;
            *(v214 + 12) = *&v250[12];
            v213[2] = v249;
            v214[0] = *v250;
            v213[1] = v248;
            v186 = v249;
            v187[0] = *v250;
            *(v187 + 12) = *&v250[12];
            v184 = v247;
            v185 = v248;
            outlined init with copy of DisplayList.Item(&v194, v183);
            outlined init with copy of DisplayList.Item(v213, v183);
            DisplayList.ViewUpdater.updateInheritedViewAsync(platform:oldItem:oldParentState:newItem:newParentState:)(&v192, &v176, &v188, &v308, &v184, &v293);
            v217 = v186;
            v218[0] = v187[0];
            *(v218 + 12) = *(v187 + 12);
            v215 = v184;
            v216 = v185;
            outlined destroy of DisplayList.Item(&v215);
            v221 = v190;
            v222[0] = v191[0];
            *(v222 + 12) = *(v191 + 12);
            v219 = v188;
            v220 = v189;
            outlined destroy of DisplayList.Item(&v219);
            v225 = v249;
            v226[0] = *v250;
            *(v226 + 12) = *&v250[12];
            v223 = v247;
            v224 = v248;
            outlined destroy of DisplayList.Item(&v223);
            v229 = v253;
            v230[0] = v254[0];
            *(v230 + 12) = *(v254 + 12);
            v227 = v251;
            v228 = v252;
            outlined destroy of DisplayList.Item(&v227);
            v74 = *&v192;
            if (v193)
            {
              *&v188 = __PAIR64__(v164, v166);
              *(&v188 + 1) = v143;
              LOBYTE(v189) = v169;
              DisplayList.Index.leave(index:)(&v188, v147);
              outlined destroy of (DisplayList.Item.Value, DisplayList.Item.Value)(&v198, type metadata accessor for (DisplayList.Item.Value, DisplayList.Item.Value));
              v151 = 1;
              v53 = a6;
              goto LABEL_130;
            }

            if (v145 >= v130)
            {
              v148 = v130;
            }

            else
            {
              v148 = v145;
            }

            if (v146 < v148)
            {
              v148 = v146;
            }

            if (v148 <= v192)
            {
              v130 = v148;
            }

            else
            {
              v130 = v192;
            }

            v149 = *(v142 + 120);
            v53 = a6;
            if ((v149 & 0xC) != 0)
            {
              v150 = *v172;
              if ((*(v142 + 120) & 4) != 0)
              {
                *(v142 + 104) = *(v142 + 112);
              }

              if ((v149 & 8) != 0)
              {
                *(v142 + 112) = v150;
              }
            }

            if (v149)
            {
              *(v142 + 104) = v166;
              *(v142 + 108) = v164;
            }

            if ((v149 & 2) != 0)
            {
              *(v142 + 112) = v143;
            }

            v127 = v171 + 1;
            *(v142 + 120) = v169;
            v129 += 5;
            v128 += 5;
            if (v158 == v171 + 1)
            {
              goto LABEL_125;
            }
          }

          v241 = v249;
          v242[0] = *v250;
          *(v242 + 12) = *&v250[12];
          v239 = v247;
          v240 = v248;
          outlined init with copy of DisplayList.Item(&v271, &v243);
          outlined init with copy of DisplayList.Item(&v282, &v243);
          outlined destroy of DisplayList.Item(&v239);
          v245 = v253;
          v246[0] = v254[0];
          *(v246 + 12) = *(v254 + 12);
          v243 = v251;
          v244 = v252;
          v154 = &v243;
LABEL_128:
          outlined destroy of DisplayList.Item(v154);
          outlined destroy of (DisplayList.Item.Value, DisplayList.Item.Value)(&v198, type metadata accessor for (DisplayList.Item.Value, DisplayList.Item.Value));
          v74 = 0;
          v151 = 1;
          goto LABEL_130;
        }

        v130 = INFINITY;
        v53 = a6;
LABEL_125:
        outlined destroy of (DisplayList.Item.Value, DisplayList.Item.Value)(&v198, type metadata accessor for (DisplayList.Item.Value, DisplayList.Item.Value));
        v151 = 0;
        v74 = *&v130;
LABEL_130:

        if ((v151 & 1) == 0)
        {
          goto LABEL_78;
        }
      }
    }

    else
    {
      swift_beginAccess();
      v284 = v322;
      *v285 = *v323;
      *&v285[12] = *&v323[12];
      v282 = v320;
      v283 = v321;
      DisplayList.Item.features.getter(&v251);
      v73 = v251;
      v273 = *v307;
      *v274 = *&v307[16];
      *&v274[12] = *&v307[28];
      v271 = v305;
      v272 = v306;
      DisplayList.Item.features.getter(&v243);
      v74 = 0;
      v53 = a6;
      if (v73 == v243)
      {
        if ((*&v323[16] & 0xC0000000) != 0x40000000)
        {
          v74 = 0x7FF0000000000000;
          goto LABEL_78;
        }

        v75 = *&v323[8];
        v76 = *(&v322 + 1);
        v77 = *v323;
        v78 = HIDWORD(*v323);
        swift_beginAccess();
        v79 = *(v75 + 16);
        if (v79)
        {
          outlined copy of DisplayList.Effect(v76, v77, v78);

          v80 = *(v75 + 48);
          v81 = *(v75 + 80);
          v284 = *(v75 + 64);
          *v285 = v81;
          *&v285[12] = *(v75 + 92);
          v282 = *(v75 + 32);
          v283 = v80;
          DisplayList.Index.skip(item:)(&v282);
          v82 = v79 - 1;
          if (v82)
          {
            v83 = (v75 + 112);
            do
            {
              v283 = v83[1];
              v284 = v83[2];
              *v285 = v83[3];
              *&v285[12] = *(v83 + 60);
              v84 = *v83;
              v83 += 5;
              v282 = v84;
              DisplayList.Index.skip(item:)(&v282);
              --v82;
            }

            while (v82);
          }
        }

        else
        {
          outlined copy of DisplayList.Effect(v76, v77, v78);
        }

        swift_endAccess();

        *&v271 = v76;
        DWORD2(v271) = v77;
        BYTE12(v271) = v78;
        swift_beginAccess();
        DisplayList.Index.skip(effect:)(&v271);
        swift_endAccess();
        outlined consume of DisplayList.Effect(v76, v77, v78);
        goto LABEL_77;
      }
    }

    v253 = *v307;
    v254[0] = *&v307[16];
    *(v254 + 12) = *&v307[28];
    v251 = v305;
    v252 = v306;
    outlined destroy of DisplayList.Item(&v251);
    v278 = v301;
    v279 = v302;
    v280 = v303;
    v281 = v304;
    *&v274[16] = v297;
    v275 = v298;
    v276 = v299;
    v277 = v300;
    v271 = v293;
    v272 = v294;
    v273 = v295;
    *v274 = v296;
    outlined destroy of DisplayList.ViewUpdater.Model.State(&v271);
    v289 = v316;
    v290 = v317;
    v291 = v318;
    v292 = v319;
    *&v285[16] = v312;
    v286 = v313;
    v287 = v314;
    v288 = v315;
    v282 = v308;
    v283 = v309;
    v284 = v310;
    *v285 = v311;
    outlined destroy of DisplayList.ViewUpdater.Model.State(&v282);
    *v53 = v74;
    goto LABEL_15;
  }

  if ((v26 & 4) == 0)
  {
    swift_beginAccess();
    v284 = *v307;
    *v285 = *&v307[16];
    *&v285[12] = *&v307[28];
    v282 = v305;
    v283 = v306;
    DisplayList.Item.features.getter(&v271);
    if ((v271 & 1) == 0)
    {
      swift_beginAccess();
      v284 = v322;
      *v285 = *v323;
      *&v285[12] = *&v323[12];
      v282 = v320;
      v283 = v321;
      DisplayList.Item.features.getter(&v263);
      v41 = v263;
      v273 = *v307;
      *v274 = *&v307[16];
      *&v274[12] = *&v307[28];
      v271 = v305;
      v272 = v306;
      DisplayList.Item.features.getter(&v259);
      v42 = a6;
      if (v41 == v259)
      {
        if ((*&v323[16] & 0xC0000000) == 0x40000000)
        {
          v43 = *&v323[8];
          v44 = *(&v322 + 1);
          v45 = *v323;
          v46 = HIDWORD(*v323);
          swift_beginAccess();
          v47 = *(v43 + 16);
          if (v47)
          {
            outlined copy of DisplayList.Effect(v44, v45, v46);

            v48 = *(v43 + 48);
            v49 = *(v43 + 80);
            v284 = *(v43 + 64);
            *v285 = v49;
            *&v285[12] = *(v43 + 92);
            v282 = *(v43 + 32);
            v283 = v48;
            DisplayList.Index.skip(item:)(&v282);
            v50 = v47 - 1;
            if (v50)
            {
              v51 = (v43 + 112);
              do
              {
                v283 = v51[1];
                v284 = v51[2];
                *v285 = v51[3];
                *&v285[12] = *(v51 + 60);
                v52 = *v51;
                v51 += 5;
                v282 = v52;
                DisplayList.Index.skip(item:)(&v282);
                --v50;
              }

              while (v50);
            }
          }

          else
          {
            outlined copy of DisplayList.Effect(v44, v45, v46);
          }

          swift_endAccess();

          *&v271 = v44;
          DWORD2(v271) = v45;
          BYTE12(v271) = v46;
          swift_beginAccess();
          DisplayList.Index.skip(effect:)(&v271);
          swift_endAccess();
          v284 = *v307;
          *v285 = *&v307[16];
          *&v285[12] = *&v307[28];
          v282 = v305;
          v283 = v306;
          outlined destroy of DisplayList.Item(&v282);
          outlined consume of DisplayList.Effect(v44, v45, v46);
          v42 = a6;
        }

        else
        {
          v284 = *v307;
          *v285 = *&v307[16];
          *&v285[12] = *&v307[28];
          v282 = v305;
          v283 = v306;
          outlined destroy of DisplayList.Item(&v282);
        }

        *v42 = 0x7FF0000000000000;
        *(v42 + 8) = 0;
      }

      else
      {
        v284 = *v307;
        *v285 = *&v307[16];
        *&v285[12] = *&v307[28];
        v282 = v305;
        v283 = v306;
        outlined destroy of DisplayList.Item(&v282);
        *a6 = 0;
        *(a6 + 8) = 1;
      }

      goto LABEL_120;
    }
  }

  if (v26)
  {
    *&v239 = v173;
    swift_beginAccess();
    v261 = v322;
    v262[0] = *v323;
    *(v262 + 12) = *&v323[12];
    v259 = v320;
    v260 = v321;
    v257 = v322;
    v258[0] = *v323;
    *(v258 + 12) = *&v323[12];
    v255 = v320;
    v256 = v321;
    swift_beginAccess();
    v265 = *v307;
    *v266 = *&v307[16];
    *&v266[12] = *&v307[28];
    v263 = v305;
    v264 = v306;
    v253 = *v307;
    v254[0] = *&v307[16];
    *(v254 + 12) = *&v307[28];
    v251 = v305;
    v252 = v306;
    outlined init with copy of DisplayList.Item(&v259, &v282);
    outlined init with copy of DisplayList.Item(&v263, &v282);
    DisplayList.ViewUpdater.updateItemViewAsync(platform:oldItem:oldState:newItem:newState:)(&v239, &v255, &v308, &v251, &v293, a6);
    v269 = *v307;
    v270[0] = *&v307[16];
    *(v270 + 12) = *&v307[28];
    v267 = v305;
    v268 = v306;
    outlined destroy of DisplayList.Item(&v267);
    v273 = v253;
    *v274 = v254[0];
    *&v274[12] = *(v254 + 12);
    v271 = v251;
    v272 = v252;
    outlined destroy of DisplayList.Item(&v271);
    v284 = v257;
    *v285 = v258[0];
    *&v285[12] = *(v258 + 12);
    v282 = v255;
    v283 = v256;
    outlined destroy of DisplayList.Item(&v282);
    goto LABEL_120;
  }

  swift_beginAccess();
  v54 = *(&v322 + 1);
  v55 = *v323;
  v56 = *&v323[8];
  v57 = *&v323[16];
  swift_beginAccess();
  v58 = v56;
  v59 = *&v307[8];
  v60 = *&v307[16];
  v61 = *&v307[32];
  *&v194 = v54;
  *(&v194 + 1) = v55;
  *&v195 = v58;
  *(&v195 + 1) = v57;
  v196 = *&v307[8];
  v170 = *&v307[24];
  *v197 = *&v307[24];
  *&v197[8] = *&v307[32];
  if ((v57 & 0xC0000000) != 0x40000000 || (*&v307[32] & 0xC0000000) != 0x40000000)
  {
    outlined copy of DisplayList.Item.Value(v54, v55, v58, v57);
    outlined copy of DisplayList.Item.Value(v59, v60, v170, v61);
    outlined destroy of (DisplayList.Item.Value, DisplayList.Item.Value)(&v194, type metadata accessor for (DisplayList.Item.Value, DisplayList.Item.Value));
    v284 = *v307;
    *v285 = *&v307[16];
    *&v285[12] = *&v307[28];
    v282 = v305;
    v283 = v306;
    outlined destroy of DisplayList.Item(&v282);
    *a6 = 0x7FF0000000000000;
    *(a6 + 8) = 0;
    goto LABEL_120;
  }

  v159 = *(v58 + 16);
  v167 = *(*&v307[24] + 16);
  v62 = v54;
  v63 = v55;
  v64 = *&v307[24];
  v65 = v58;
  outlined copy of DisplayList.Item.Value(v62, v63, v58, v57);
  outlined copy of DisplayList.Item.Value(v59, v60, v170, v61);
  if (v159 != v167)
  {

    outlined destroy of (DisplayList.Item.Value, DisplayList.Item.Value)(&v194, type metadata accessor for (DisplayList.Item.Value, DisplayList.Item.Value));
    *a6 = 0;
    *(a6 + 8) = 1;
    goto LABEL_119;
  }

  v66 = a6;
  if (!v159)
  {
    v70 = INFINITY;
LABEL_112:
    outlined destroy of (DisplayList.Item.Value, DisplayList.Item.Value)(&v194, type metadata accessor for (DisplayList.Item.Value, DisplayList.Item.Value));
    *v66 = v70;
    *(v66 + 8) = 0;
    goto LABEL_119;
  }

  v67 = 0;
  v68 = (v65 + 32);
  v69 = (v170 + 32);
  v70 = INFINITY;
  v155 = v65;
  while (1)
  {
    if (v67 >= *(v65 + 16))
    {
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
    }

    v93 = v68[1];
    v94 = v68[2];
    v95 = v68[3];
    *&v274[12] = *(v68 + 60);
    v96 = *v68;
    v273 = v94;
    *v274 = v95;
    v271 = v96;
    v272 = v93;
    v268 = v68[1];
    v269 = v68[2];
    v270[0] = v68[3];
    *(v270 + 12) = *(v68 + 60);
    v267 = *v68;
    if (v67 >= *(v64 + 16))
    {
      goto LABEL_133;
    }

    v97 = v69[1];
    v98 = v69[2];
    v99 = v69[3];
    *&v285[12] = *(v69 + 60);
    v100 = *v69;
    v284 = v98;
    *v285 = v99;
    v282 = v100;
    v283 = v97;
    v264 = v69[1];
    v265 = v69[2];
    *v266 = v69[3];
    *&v266[12] = *(v69 + 60);
    v263 = *v69;
    if (*&v285[24] != *&v274[24])
    {
      v257 = v265;
      v258[0] = *v266;
      *(v258 + 12) = *&v266[12];
      v255 = v263;
      v256 = v264;
      outlined init with copy of DisplayList.Item(&v271, &v259);
      outlined init with copy of DisplayList.Item(&v282, &v259);
      outlined destroy of DisplayList.Item(&v255);
      v261 = v269;
      v262[0] = v270[0];
      *(v262 + 12) = *(v270 + 12);
      v259 = v267;
      v260 = v268;
      v152 = &v259;
      goto LABEL_117;
    }

    v165 = v69;
    v168 = v68;
    v249 = v265;
    *v250 = *v266;
    *&v250[12] = *&v266[12];
    v247 = v263;
    v248 = v264;
    v245 = v265;
    v246[0] = *v266;
    *(v246 + 12) = *&v266[12];
    v243 = v263;
    v244 = v264;
    *(v254 + 12) = *(v270 + 12);
    v253 = v269;
    v254[0] = v270[0];
    v251 = v267;
    v252 = v268;
    v241 = v269;
    v242[0] = v270[0];
    *(v242 + 12) = *(v270 + 12);
    v239 = v267;
    v240 = v268;
    outlined init with copy of DisplayList.Item(&v271, &v235);
    outlined init with copy of DisplayList.Item(&v282, &v235);
    outlined init with copy of DisplayList.Item(&v247, &v235);
    outlined init with copy of DisplayList.Item(&v251, &v235);
    v101 = DisplayList.Item.matchesTopLevelStructure(of:)(&v239);
    v257 = v241;
    v258[0] = v242[0];
    *(v258 + 12) = *(v242 + 12);
    v255 = v239;
    v256 = v240;
    outlined destroy of DisplayList.Item(&v255);
    v261 = v245;
    v262[0] = v246[0];
    *(v262 + 12) = *(v246 + 12);
    v259 = v243;
    v260 = v244;
    outlined destroy of DisplayList.Item(&v259);
    if ((v101 & 1) == 0)
    {
      break;
    }

    v161 = v67;
    v102 = *&v266[24];
    if (*&v266[24])
    {
      v103 = 0;
      v104 = v174;
      v156 = *(v174 + 108);
      v157 = *(v174 + 104);
      v105 = *(v174 + 112);
      v163 = *(v174 + 120);
      v106 = 1;
      *(v174 + 104) = *&v266[24];
    }

    else
    {
      v106 = 0;
      v104 = v174;
      v102 = *(v174 + 104);
      v103 = *(v174 + 108) + 1;
      v105 = *(v174 + 112);
      v163 = *(v174 + 120);
      v156 = v103;
      v157 = v102;
    }

    *(v104 + 108) = v103;
    *(v104 + 120) = v106;
    *&v235 = v173;
    swift_beginAccess();
    DisplayList.ViewUpdater.ViewCache.prepare(item:platform:parentState:)(&v267, &v235, &v308, &v239);
    v107 = *&v239;
    *(v104 + 104) = v102;
    *(v104 + 108) = v103;
    *(v104 + 112) = v105;
    *(v104 + 120) = v106;
    *&v239 = v173;
    DisplayList.ViewUpdater.ViewCache.prepare(item:platform:parentState:)(&v263, &v239, &v293, v178);
    swift_endAccess();
    v108 = *v178;
    v208[0] = v173;
    v225 = v269;
    v226[0] = v270[0];
    *(v226 + 12) = *(v270 + 12);
    v223 = v267;
    v224 = v268;
    v221 = v269;
    v222[0] = v270[0];
    *(v222 + 12) = *(v270 + 12);
    v219 = v267;
    v220 = v268;
    *(v230 + 12) = *&v266[12];
    v229 = v265;
    v230[0] = *v266;
    v227 = v263;
    v228 = v264;
    v217 = v265;
    v218[0] = *v266;
    *(v218 + 12) = *&v266[12];
    v215 = v263;
    v216 = v264;
    outlined init with copy of DisplayList.Item(&v223, v213);
    outlined init with copy of DisplayList.Item(&v227, v213);
    DisplayList.ViewUpdater.updateInheritedViewAsync(platform:oldItem:oldParentState:newItem:newParentState:)(&v198, v208, &v219, &v308, &v215, &v293);
    v233 = v217;
    v234[0] = v218[0];
    *(v234 + 12) = *(v218 + 12);
    v231 = v215;
    v232 = v216;
    outlined destroy of DisplayList.Item(&v231);
    v237 = v221;
    v238[0] = v222[0];
    *(v238 + 12) = *(v222 + 12);
    v235 = v219;
    v236 = v220;
    outlined destroy of DisplayList.Item(&v235);
    v241 = v265;
    v242[0] = *v266;
    *(v242 + 12) = *&v266[12];
    v239 = v263;
    v240 = v264;
    outlined destroy of DisplayList.Item(&v239);
    v245 = v269;
    v246[0] = v270[0];
    *(v246 + 12) = *(v270 + 12);
    v243 = v267;
    v244 = v268;
    outlined destroy of DisplayList.Item(&v243);
    if (v199)
    {
      *a6 = v198;
      *(a6 + 8) = 1;
      *&v219 = __PAIR64__(v156, v157);
      *(&v219 + 1) = v105;
      LOBYTE(v220) = v163;
      DisplayList.Index.leave(index:)(&v219, v109);
      outlined destroy of (DisplayList.Item.Value, DisplayList.Item.Value)(&v194, type metadata accessor for (DisplayList.Item.Value, DisplayList.Item.Value));
      goto LABEL_119;
    }

    if (v107 >= v70)
    {
      v110 = v70;
    }

    else
    {
      v110 = v107;
    }

    if (v108 < v110)
    {
      v110 = v108;
    }

    if (v110 <= v198)
    {
      v70 = v110;
    }

    else
    {
      v70 = v198;
    }

    v111 = *(v104 + 120);
    v66 = a6;
    v65 = v155;
    v64 = v170;
    if ((v111 & 0xC) != 0)
    {
      v112 = *v172;
      if ((*(v104 + 120) & 4) != 0)
      {
        *(v104 + 104) = *(v104 + 112);
      }

      if ((v111 & 8) != 0)
      {
        *(v104 + 112) = v112;
      }
    }

    if (v111)
    {
      *(v104 + 104) = v157;
      *(v104 + 108) = v156;
    }

    if ((v111 & 2) != 0)
    {
      *(v104 + 112) = v105;
    }

    v67 = v161 + 1;
    *(v104 + 120) = v163;
    v69 = v165 + 5;
    v68 = v168 + 5;
    if (v159 == v161 + 1)
    {
      goto LABEL_112;
    }
  }

  v241 = v265;
  v242[0] = *v266;
  *(v242 + 12) = *&v266[12];
  v239 = v263;
  v240 = v264;
  outlined destroy of DisplayList.Item(&v239);
  v245 = v269;
  v246[0] = v270[0];
  *(v246 + 12) = *(v270 + 12);
  v243 = v267;
  v244 = v268;
  v152 = &v243;
LABEL_117:
  outlined destroy of DisplayList.Item(v152);
  outlined destroy of (DisplayList.Item.Value, DisplayList.Item.Value)(&v194, type metadata accessor for (DisplayList.Item.Value, DisplayList.Item.Value));
  *v66 = 0;
  *(v66 + 8) = 1;
LABEL_119:
  v284 = *v307;
  *v285 = *&v307[16];
  *&v285[12] = *&v307[28];
  v282 = v305;
  v283 = v306;
  outlined destroy of DisplayList.Item(&v282);

LABEL_120:
  v278 = v301;
  v279 = v302;
  v280 = v303;
  v281 = v304;
  *&v274[16] = v297;
  v275 = v298;
  v276 = v299;
  v277 = v300;
  v271 = v293;
  v272 = v294;
  v273 = v295;
  *v274 = v296;
  outlined destroy of DisplayList.ViewUpdater.Model.State(&v271);
  v289 = v316;
  v290 = v317;
  v291 = v318;
  v292 = v319;
  *&v285[16] = v312;
  v286 = v313;
  v287 = v314;
  v288 = v315;
  v282 = v308;
  v283 = v309;
  v284 = v310;
  *v285 = v311;
  outlined destroy of DisplayList.ViewUpdater.Model.State(&v282);
LABEL_121:
  v284 = v322;
  *v285 = *v323;
  *&v285[12] = *&v323[12];
  v282 = v320;
  v283 = v321;
  return outlined destroy of DisplayList.Item(&v282);
}

uint64_t DisplayList.ViewUpdater.updateItemViewAsync(platform:oldItem:oldState:newItem:newState:)@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, float *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v287 = *MEMORY[0x1E69E9840];
  v11 = *a1;
  v12 = a2[3];
  v281 = a2[2];
  *v282 = v12;
  *&v282[12] = *(a2 + 60);
  v13 = *a2;
  v280 = a2[1];
  v279 = v13;
  v14 = a4[3];
  v285 = a4[2];
  *v286 = v14;
  *&v286[12] = *(a4 + 60);
  v15 = a4[1];
  v283 = *a4;
  v284 = v15;
  swift_beginAccess();
  if (*&v282[24] != *&v286[24])
  {
    goto LABEL_8;
  }

  v158 = a5;
  v159 = v11;
  v157 = a3;
  v16 = *(v7 + 104);
  v17 = *(v7 + 40);
  if (!*(v17 + 16))
  {
    goto LABEL_8;
  }

  v18 = *(v7 + 116);
  v151 = *(v7 + 112);
  v154 = *(v7 + 108);
  v19 = v151 | (v18 << 32);
  v150 = (v7 + 104);
  v20 = specialized __RawDictionaryStorage.find<A>(_:)(v16 | (v154 << 32), v19, v159 & 3);
  if ((v21 & 1) == 0)
  {
    goto LABEL_8;
  }

  v145 = v18;
  v149 = a6;
  v22 = (v7 + 40);
  v23 = *(v17 + 56) + (v20 << 7);
  v25 = *(v23 + 64);
  v24 = *(v23 + 80);
  v26 = *(v23 + 96);
  v166 = *(v23 + 112);
  v163 = v25;
  v28 = *(v23 + 32);
  v27 = *(v23 + 48);
  v29 = *(v23 + 16);
  v162[0] = *v23;
  v162[1] = v29;
  v162[2] = v28;
  v162[3] = v27;
  v164 = v24;
  v165 = v26;
  v30 = BYTE1(v166);
  v31 = v29;
  v32 = *&v162[0];
  v33 = *(v23 + 8);
  v34 = *(v23 + 24);
  v35 = *(v23 + 40);
  v278 = *(v23 + 56);
  v277 = v35;
  v276 = v34;
  v275 = v33;
  v36 = v7;
  v37 = v163;
  v38 = *(v23 + 65);
  v39 = *(v23 + 81);
  v274 = *(v23 + 97);
  v273 = v39;
  v272 = v38;
  v141 = BYTE1(v166);
  v40 = *(v23 + 114);
  v168 = *(v23 + 118);
  v167 = v40;
  v41 = *(&v166 + 1);
  *&v251 = v29;
  v148 = v22;
  *(&v251 + 1) = v22;
  LOWORD(v252) = v163;
  *(&v252 + 1) = 0x7FF0000000000000;
  LOBYTE(v253) = BYTE1(v166);
  *&v239 = *&v162[0];
  LOBYTE(v23) = *(v36 + 120);
  v144 = v36;
  v243 = *(v36 + 104);
  LOBYTE(v244) = v23;
  *&v261[32] = v281;
  *&v261[48] = *v282;
  *&v261[60] = *&v282[12];
  *&v261[16] = v280;
  *v261 = v279;
  v270 = v285;
  *v271 = *v286;
  *&v271[12] = *&v286[12];
  v269 = v284;
  v268 = v283;
  outlined init with copy of DisplayList.ViewUpdater.ViewInfo(v162, &v179);
  v42 = v31;
  if ((DisplayList.ViewUpdater.Platform.updateItemViewAsync(layer:index:oldItem:oldState:newItem:newState:)(&v251, &v243, v261, v157, &v268, v158) & 1) == 0)
  {
    v180 = v275;
    v181 = v276;
    v182 = v277;
    v185 = v272;
    v179 = v32;
    v183 = v278;
    v184 = v37;
    v186 = v273;
    v187 = v274;
    v188 = v141;
    v190 = v168;
    v189 = v167;
    v191 = v41;
    outlined destroy of DisplayList.ViewUpdater.ViewInfo(&v179);

    a6 = v149;
LABEL_8:
    result = swift_endAccess();
    *a6 = 0;
    *(a6 + 8) = 1;
    return result;
  }

  v43 = v253;
  v44 = *(&v252 + 1);
  if (v30 == v253)
  {
    v46 = *(&v166 + 1);

    if (v46 == v44)
    {
      v47 = *(&v163 + 1);
      goto LABEL_11;
    }
  }

  else
  {
  }

  v180 = v275;
  v181 = v276;
  v182 = v277;
  v185 = v272;
  v179 = v32;
  v183 = v278;
  v184 = v37;
  v186 = v273;
  v187 = v274;
  v188 = v43;
  v190 = v168;
  v189 = v167;
  v191 = v44;
  v47 = v272 >> 56;
  outlined init with copy of DisplayList.ViewUpdater.ViewInfo(&v179, v261);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v261 = *v148;
  *v148 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v179, v16 | (v154 << 32), v19, v159 & 3, isUniquelyReferenced_nonNull_native);
  *v148 = *v261;
LABEL_11:
  *&v261[8] = v275;
  *&v261[24] = v276;
  *&v261[40] = v277;
  *&v261[65] = v272;
  v49 = v285;
  v50 = v281;
  v51 = v285 != v281;
  *v261 = v32;
  *&v261[56] = v278;
  v261[64] = v37;
  v262 = v273;
  v263 = v274;
  v264 = v43;
  v265 = v167;
  v266 = v168;
  v267 = v44;
  outlined destroy of DisplayList.ViewUpdater.ViewInfo(v261);
  swift_endAccess();
  v169 = v47;
  v170 = v16;
  v171 = v154;
  v172 = v151;
  v173 = v145;
  v174 = v159 & 3;
  v175 = 0;
  v176 = v51;
  v177 = v43 ^ 1;
  v178 = v44;
  *(v144 + 192) &= (v43 ^ 1) & 1;
  v52 = *(&v281 + 1);
  v53 = *(&v285 + 1);
  v55 = *&v286[8];
  v54 = *v286;
  v255 = *(&v281 + 1);
  v256 = *v282;
  v257 = *&v282[16];
  v258 = *(&v285 + 1);
  v259 = *v286;
  v56 = v44;
  v260 = *&v286[16];
  if ((*&v282[16] & 0xC0000000) != 0x40000000 || (*&v286[16] & 0xC0000000) != 0x40000000)
  {
    outlined init with copy of DisplayList.Item(&v279, &v268);
    outlined init with copy of DisplayList.Item(&v283, &v268);
    result = outlined destroy of (DisplayList.Item.Value, DisplayList.Item.Value)(&v255, type metadata accessor for (DisplayList.Item.Value, DisplayList.Item.Value));
    v63 = v149;
LABEL_22:
    *v63 = v56;
    *(v63 + 8) = 0;
    return result;
  }

  v155 = *&v282[8];
  if (v49 == v50 && (*(v144 + 193) & 1) != 0)
  {
    if (v282[4] == 7)
    {
      v57 = *(*(&v281 + 1) + 16);
      swift_beginAccess();
      v58 = *(v57 + 16);
      if (v58)
      {
        outlined init with copy of DisplayList.Item(&v279, &v268);
        outlined init with copy of DisplayList.Item(&v283, &v268);

        v59 = *(v57 + 48);
        v60 = *(v57 + 80);
        v270 = *(v57 + 64);
        *v271 = v60;
        *&v271[12] = *(v57 + 92);
        v61 = *(v57 + 32);
        v269 = v59;
        v268 = v61;
        DisplayList.Index.skip(item:)(&v268);
        v62 = v58 - 1;
        v63 = v149;
        if (v62)
        {
          v64 = (v57 + 112);
          do
          {
            v269 = v64[1];
            v270 = v64[2];
            *v271 = v64[3];
            *&v271[12] = *(v64 + 60);
            v65 = *v64;
            v64 += 5;
            v268 = v65;
            DisplayList.Index.skip(item:)(&v268);
            --v62;
          }

          while (v62);
        }
      }

      else
      {
        outlined init with copy of DisplayList.Item(&v279, &v268);
        outlined init with copy of DisplayList.Item(&v283, &v268);

        v63 = v149;
      }

      swift_endAccess();

      v101 = v155;
    }

    else
    {
      outlined init with copy of DisplayList.Item(&v279, &v268);
      outlined init with copy of DisplayList.Item(&v283, &v268);
      v101 = v155;

      v63 = v149;
    }

    swift_beginAccess();
    v124 = *(v101 + 16);
    if (v124)
    {
      v125 = *(v155 + 48);
      v126 = *(v155 + 80);
      v270 = *(v155 + 64);
      *v271 = v126;
      *&v271[12] = *(v155 + 92);
      v127 = *(v155 + 32);
      v269 = v125;
      v268 = v127;
      DisplayList.Index.skip(item:)(&v268);
      v128 = v124 - 1;
      if (v128)
      {
        v129 = (v155 + 112);
        do
        {
          v269 = v129[1];
          v270 = v129[2];
          *v271 = v129[3];
          *&v271[12] = *(v129 + 60);
          v130 = *v129;
          v129 += 5;
          v268 = v130;
          DisplayList.Index.skip(item:)(&v268);
          --v128;
        }

        while (v128);
      }
    }

    swift_endAccess();
    outlined destroy of (DisplayList.Item.Value, DisplayList.Item.Value)(&v255, type metadata accessor for (DisplayList.Item.Value, DisplayList.Item.Value));

    goto LABEL_22;
  }

  v138 = *v282;
  outlined init with copy of DisplayList.Item(&v279, &v268);
  outlined init with copy of DisplayList.Item(&v283, &v268);

  DisplayList.ViewUpdater.Model.State.reset()();
  DisplayList.ViewUpdater.Model.State.reset()();
  v66 = v155;
  v67 = *(v155 + 16);
  v63 = v149;
  if (v67 != *(v55 + 16))
  {
LABEL_90:

    result = outlined destroy of (DisplayList.Item.Value, DisplayList.Item.Value)(&v255, type metadata accessor for (DisplayList.Item.Value, DisplayList.Item.Value));
    v89 = 0.0;
    goto LABEL_91;
  }

  v135 = v53;
  v136 = v52;
  v137 = v54;
  if (!v67)
  {
    v69 = INFINITY;
LABEL_54:
    v93 = v54;

    if (BYTE4(v138) == 7)
    {
      v94 = v136;
      if (BYTE4(v54) == 7)
      {
        v147 = *(v136 + 16);
        v95 = *(v147 + 16);
        v143 = *(v135 + 16);
        v96 = *(v143 + 16);
        outlined copy of DisplayList.Effect(v136, v138, 7);
        outlined copy of DisplayList.Effect(v135, v137, 7);
        if (v95 != v96)
        {
          outlined destroy of (DisplayList.Item.Value, DisplayList.Item.Value)(&v255, type metadata accessor for (DisplayList.Item.Value, DisplayList.Item.Value));
          outlined consume of DisplayList.Effect(v136, v138, 7);
          v131 = v135;
LABEL_112:
          result = outlined consume of DisplayList.Effect(v131, v93, 7);
          v133 = 0.0;
LABEL_113:
          *v63 = v133;
          goto LABEL_92;
        }

        if (v95)
        {
          v97 = 0;
          v98 = (v147 + 32);
          v99 = (v143 + 32);
          v100 = INFINITY;
          while (1)
          {
            if (v97 >= *(v147 + 16))
            {
              goto LABEL_117;
            }

            v102 = v98[1];
            v103 = v98[2];
            v104 = v98[3];
            *&v254[12] = *(v98 + 60);
            v105 = *v98;
            *v254 = v104;
            v253 = v103;
            v251 = v105;
            v252 = v102;
            v248 = v98[1];
            v249 = v98[2];
            v250[0] = v98[3];
            *(v250 + 12) = *(v98 + 60);
            v247 = *v98;
            if (v97 >= *(v143 + 16))
            {
              goto LABEL_118;
            }

            v156 = v97;
            v106 = v99[1];
            v107 = v99[2];
            v108 = v99[3];
            *&v271[12] = *(v99 + 60);
            v109 = *v99;
            *v271 = v108;
            v270 = v107;
            v268 = v109;
            v269 = v106;
            v110 = v99[3];
            v245 = v99[2];
            *v246 = v110;
            *&v246[12] = *(v99 + 60);
            v111 = *v99;
            v244 = v99[1];
            v243 = v111;
            if (*&v271[24] != *&v254[24])
            {
              break;
            }

            v229 = v245;
            v230[0] = *v246;
            *(v230 + 12) = *&v246[12];
            v228 = v244;
            v227 = v243;
            v225 = v245;
            v226[0] = *v246;
            *(v226 + 12) = *&v246[12];
            v224 = v244;
            v223 = v243;
            *(v234 + 12) = *(v250 + 12);
            v234[0] = v250[0];
            v233 = v249;
            v231 = v247;
            v232 = v248;
            v221 = v249;
            v222[0] = v250[0];
            *(v222 + 12) = *(v250 + 12);
            v220 = v248;
            v219 = v247;
            outlined init with copy of DisplayList.Item(&v251, &v215);
            outlined init with copy of DisplayList.Item(&v268, &v215);
            outlined init with copy of DisplayList.Item(&v227, &v215);
            outlined init with copy of DisplayList.Item(&v231, &v215);
            v112 = DisplayList.Item.matchesTopLevelStructure(of:)(&v219);
            v237 = v221;
            v238[0] = v222[0];
            *(v238 + 12) = *(v222 + 12);
            v236 = v220;
            v235 = v219;
            outlined destroy of DisplayList.Item(&v235);
            v241 = v225;
            v242[0] = v226[0];
            *(v242 + 12) = *(v226 + 12);
            v240 = v224;
            v239 = v223;
            outlined destroy of DisplayList.Item(&v239);
            if ((v112 & 1) == 0)
            {
              v221 = v245;
              v222[0] = *v246;
              *(v222 + 12) = *&v246[12];
              v220 = v244;
              v219 = v243;
              outlined destroy of DisplayList.Item(&v219);
              v225 = v249;
              v226[0] = v250[0];
              *(v226 + 12) = *(v250 + 12);
              v224 = v248;
              v223 = v247;
              v132 = &v223;
              goto LABEL_111;
            }

            v113 = *&v246[24];
            if (*&v246[24])
            {
              v114 = 0;
              v140 = *(v144 + 104);
              v134 = *(v144 + 108);
              v115 = *(v144 + 112);
              v153 = *(v144 + 120);
              v116 = 1;
              *(v144 + 104) = *&v246[24];
            }

            else
            {
              v116 = 0;
              v113 = *(v144 + 104);
              v114 = *(v144 + 108) + 1;
              v115 = *(v144 + 112);
              v153 = *(v144 + 120);
              v140 = v113;
              v134 = v114;
            }

            *(v144 + 108) = v114;
            *(v144 + 120) = v116;
            *&v215 = v159;
            swift_beginAccess();
            DisplayList.ViewUpdater.ViewCache.prepare(item:platform:parentState:)(&v247, &v215, v157, &v219);
            v117 = *&v219;
            *(v144 + 104) = v113;
            *(v144 + 108) = v114;
            *(v144 + 112) = v115;
            *(v144 + 120) = v116;
            *&v219 = v159;
            DisplayList.ViewUpdater.ViewCache.prepare(item:platform:parentState:)(&v243, &v219, v158, &v161);
            swift_endAccess();
            v205 = v249;
            v206[0] = v250[0];
            *(v206 + 12) = *(v250 + 12);
            v203 = v247;
            v204 = v248;
            v199 = v249;
            v200[0] = v250[0];
            *(v200 + 12) = *(v250 + 12);
            v197 = v247;
            v198 = v248;
            *(v210 + 12) = *&v246[12];
            v209 = v245;
            v210[0] = *v246;
            v207 = v243;
            v208 = v244;
            v118 = v161;
            v160 = v159;
            v195 = v245;
            v196[0] = *v246;
            *(v196 + 12) = *&v246[12];
            v193 = v243;
            v194 = v244;
            outlined init with copy of DisplayList.Item(&v203, v192);
            outlined init with copy of DisplayList.Item(&v207, v192);
            DisplayList.ViewUpdater.updateInheritedViewAsync(platform:oldItem:oldParentState:newItem:newParentState:)(&v201, &v160, &v197, v157, &v193, v158);
            v213 = v195;
            v214[0] = v196[0];
            *(v214 + 12) = *(v196 + 12);
            v211 = v193;
            v212 = v194;
            outlined destroy of DisplayList.Item(&v211);
            v217 = v199;
            v218[0] = v200[0];
            *(v218 + 12) = *(v200 + 12);
            v215 = v197;
            v216 = v198;
            outlined destroy of DisplayList.Item(&v215);
            v221 = v245;
            v222[0] = *v246;
            *(v222 + 12) = *&v246[12];
            v220 = v244;
            v219 = v243;
            outlined destroy of DisplayList.Item(&v219);
            v225 = v249;
            v226[0] = v250[0];
            *(v226 + 12) = *(v250 + 12);
            v224 = v248;
            v223 = v247;
            outlined destroy of DisplayList.Item(&v223);
            if (v202)
            {
              *&v197 = __PAIR64__(v134, v140);
              *(&v197 + 1) = v115;
              LOBYTE(v198) = v153;
              v133 = v201;
              DisplayList.Index.leave(index:)(&v197, v201);
              outlined destroy of (DisplayList.Item.Value, DisplayList.Item.Value)(&v255, type metadata accessor for (DisplayList.Item.Value, DisplayList.Item.Value));
              outlined consume of DisplayList.Effect(v136, v138, 7);
              result = outlined consume of DisplayList.Effect(v135, v137, 7);
              v63 = v149;
              goto LABEL_113;
            }

            if (v117 >= v100)
            {
              v119 = v100;
            }

            else
            {
              v119 = v117;
            }

            if (v118 < v119)
            {
              v119 = v118;
            }

            if (v119 <= v201)
            {
              v100 = v119;
            }

            else
            {
              v100 = v201;
            }

            v120 = *(v144 + 120);
            v63 = v149;
            v94 = v136;
            v93 = v137;
            if ((v120 & 0xC) != 0)
            {
              v121 = *v150;
              if ((*(v144 + 120) & 4) != 0)
              {
                *(v144 + 104) = *(v144 + 112);
              }

              if ((v120 & 8) != 0)
              {
                *(v144 + 112) = v121;
              }
            }

            if (v120)
            {
              *(v144 + 104) = v140;
              *(v144 + 108) = v134;
            }

            if ((v120 & 2) != 0)
            {
              *(v144 + 112) = v115;
            }

            v97 = v156 + 1;
            *(v144 + 120) = v153;
            v99 += 5;
            v98 += 5;
            if (v95 == v156 + 1)
            {
              goto LABEL_106;
            }
          }

          v237 = v245;
          v238[0] = *v246;
          *(v238 + 12) = *&v246[12];
          v236 = v244;
          v235 = v243;
          outlined init with copy of DisplayList.Item(&v251, &v239);
          outlined init with copy of DisplayList.Item(&v268, &v239);
          outlined destroy of DisplayList.Item(&v235);
          v241 = v249;
          v242[0] = v250[0];
          *(v242 + 12) = *(v250 + 12);
          v240 = v248;
          v239 = v247;
          v132 = &v239;
LABEL_111:
          outlined destroy of DisplayList.Item(v132);
          outlined destroy of (DisplayList.Item.Value, DisplayList.Item.Value)(&v255, type metadata accessor for (DisplayList.Item.Value, DisplayList.Item.Value));
          outlined consume of DisplayList.Effect(v94, v138, 7);
          v131 = v135;
          goto LABEL_112;
        }

        v100 = INFINITY;
LABEL_106:
        outlined consume of DisplayList.Effect(v94, v138, 7);
        outlined consume of DisplayList.Effect(v135, v93, 7);
        if (v100 < v69)
        {
          v69 = v100;
        }

        goto LABEL_96;
      }

      outlined copy of DisplayList.Effect(v136, v138, 7);
      outlined copy of DisplayList.Effect(v135, v54, SBYTE4(v54));
      outlined consume of DisplayList.Effect(v136, v138, 7);
      v122 = v135;
    }

    else
    {
      outlined copy of DisplayList.Effect(v136, v138, SBYTE4(v138));
      outlined copy of DisplayList.Effect(v135, v54, SBYTE4(v54));
      v63 = v149;
      outlined consume of DisplayList.Effect(v136, v138, SBYTE4(v138));
      v122 = v135;
    }

    outlined consume of DisplayList.Effect(v122, v54, SBYTE4(v54));
LABEL_96:
    *&v251 = v69;
    swift_beginAccess();
    DisplayList.ViewUpdater.ViewCache.setNextUpdate(_:in:)(&v251, &v169);
    swift_endAccess();
    result = outlined destroy of (DisplayList.Item.Value, DisplayList.Item.Value)(&v255, type metadata accessor for (DisplayList.Item.Value, DisplayList.Item.Value));
    v56 = v178;
    goto LABEL_22;
  }

  v68 = 0;
  v69 = INFINITY;
  v70 = 32;
  v139 = *(v155 + 16);
  while (1)
  {
    if (v68 >= *(v66 + 16))
    {
      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
    }

    v71 = *(v66 + v70 + 16);
    v72 = *(v66 + v70 + 32);
    v73 = *(v66 + v70 + 48);
    *&v254[12] = *(v66 + v70 + 60);
    v74 = *(v66 + v70);
    *v254 = v73;
    v253 = v72;
    v251 = v74;
    v252 = v71;
    v248 = *(v66 + v70 + 16);
    v249 = *(v66 + v70 + 32);
    v250[0] = *(v66 + v70 + 48);
    *(v250 + 12) = *(v66 + v70 + 60);
    v247 = *(v66 + v70);
    if (v68 >= *(v55 + 16))
    {
      goto LABEL_116;
    }

    v75 = *(v55 + v70 + 16);
    v76 = *(v55 + v70 + 32);
    v77 = *(v55 + v70 + 48);
    *&v271[12] = *(v55 + v70 + 60);
    v78 = *(v55 + v70);
    *v271 = v77;
    v270 = v76;
    v268 = v78;
    v269 = v75;
    v79 = *(v55 + v70 + 48);
    v245 = *(v55 + v70 + 32);
    *v246 = v79;
    *&v246[12] = *(v55 + v70 + 60);
    v80 = *(v55 + v70);
    v244 = *(v55 + v70 + 16);
    v243 = v80;
    if (*&v271[24] != *&v254[24])
    {
      v237 = v245;
      v238[0] = *v246;
      *(v238 + 12) = *&v246[12];
      v236 = v244;
      v235 = v243;
      outlined init with copy of DisplayList.Item(&v251, &v239);
      outlined init with copy of DisplayList.Item(&v268, &v239);
      outlined destroy of DisplayList.Item(&v235);
      v241 = v249;
      v242[0] = v250[0];
      *(v242 + 12) = *(v250 + 12);
      v240 = v248;
      v239 = v247;
      v123 = &v239;
LABEL_89:
      outlined destroy of DisplayList.Item(v123);
      goto LABEL_90;
    }

    v229 = v245;
    v230[0] = *v246;
    *(v230 + 12) = *&v246[12];
    v228 = v244;
    v227 = v243;
    v225 = v245;
    v226[0] = *v246;
    *(v226 + 12) = *&v246[12];
    v224 = v244;
    v223 = v243;
    *(v234 + 12) = *(v250 + 12);
    v234[0] = v250[0];
    v233 = v249;
    v231 = v247;
    v232 = v248;
    v221 = v249;
    v222[0] = v250[0];
    *(v222 + 12) = *(v250 + 12);
    v220 = v248;
    v219 = v247;
    outlined init with copy of DisplayList.Item(&v251, &v215);
    outlined init with copy of DisplayList.Item(&v268, &v215);
    outlined init with copy of DisplayList.Item(&v227, &v215);
    outlined init with copy of DisplayList.Item(&v231, &v215);
    v81 = DisplayList.Item.matchesTopLevelStructure(of:)(&v219);
    v237 = v221;
    v238[0] = v222[0];
    *(v238 + 12) = *(v222 + 12);
    v236 = v220;
    v235 = v219;
    outlined destroy of DisplayList.Item(&v235);
    v241 = v225;
    v242[0] = v226[0];
    *(v242 + 12) = *(v226 + 12);
    v240 = v224;
    v239 = v223;
    outlined destroy of DisplayList.Item(&v239);
    if ((v81 & 1) == 0)
    {
      v221 = v245;
      v222[0] = *v246;
      *(v222 + 12) = *&v246[12];
      v220 = v244;
      v219 = v243;
      outlined destroy of DisplayList.Item(&v219);
      v225 = v249;
      v226[0] = v250[0];
      *(v226 + 12) = *(v250 + 12);
      v224 = v248;
      v223 = v247;
      v123 = &v223;
      goto LABEL_89;
    }

    v82 = *&v246[24];
    if (*&v246[24])
    {
      v83 = 0;
      v146 = *(v144 + 104);
      v142 = *(v144 + 108);
      v84 = *(v144 + 112);
      v152 = *(v144 + 120);
      v85 = 1;
      *(v144 + 104) = *&v246[24];
    }

    else
    {
      v85 = 0;
      v82 = *(v144 + 104);
      v83 = *(v144 + 108) + 1;
      v84 = *(v144 + 112);
      v152 = *(v144 + 120);
      v146 = v82;
      v142 = v83;
    }

    *(v144 + 108) = v83;
    *(v144 + 120) = v85;
    *&v215 = v159;
    swift_beginAccess();
    DisplayList.ViewUpdater.ViewCache.prepare(item:platform:parentState:)(&v247, &v215, v157, &v219);
    v86 = *&v219;
    *(v144 + 104) = v82;
    *(v144 + 108) = v83;
    *(v144 + 112) = v84;
    *(v144 + 120) = v85;
    *&v219 = v159;
    DisplayList.ViewUpdater.ViewCache.prepare(item:platform:parentState:)(&v243, &v219, v158, &v161);
    swift_endAccess();
    v205 = v249;
    v206[0] = v250[0];
    *(v206 + 12) = *(v250 + 12);
    v203 = v247;
    v204 = v248;
    v199 = v249;
    v200[0] = v250[0];
    *(v200 + 12) = *(v250 + 12);
    v197 = v247;
    v198 = v248;
    *(v210 + 12) = *&v246[12];
    v209 = v245;
    v210[0] = *v246;
    v207 = v243;
    v208 = v244;
    v87 = v161;
    v160 = v159;
    v195 = v245;
    v196[0] = *v246;
    *(v196 + 12) = *&v246[12];
    v193 = v243;
    v194 = v244;
    outlined init with copy of DisplayList.Item(&v203, v192);
    outlined init with copy of DisplayList.Item(&v207, v192);
    DisplayList.ViewUpdater.updateInheritedViewAsync(platform:oldItem:oldParentState:newItem:newParentState:)(&v201, &v160, &v197, v157, &v193, v158);
    v213 = v195;
    v214[0] = v196[0];
    *(v214 + 12) = *(v196 + 12);
    v211 = v193;
    v212 = v194;
    outlined destroy of DisplayList.Item(&v211);
    v217 = v199;
    v218[0] = v200[0];
    *(v218 + 12) = *(v200 + 12);
    v215 = v197;
    v216 = v198;
    outlined destroy of DisplayList.Item(&v215);
    v221 = v245;
    v222[0] = *v246;
    *(v222 + 12) = *&v246[12];
    v220 = v244;
    v219 = v243;
    outlined destroy of DisplayList.Item(&v219);
    v225 = v249;
    v226[0] = v250[0];
    *(v226 + 12) = *(v250 + 12);
    v224 = v248;
    v223 = v247;
    outlined destroy of DisplayList.Item(&v223);
    v89 = v201;
    if (v202)
    {
      break;
    }

    if (v86 >= v69)
    {
      v90 = v69;
    }

    else
    {
      v90 = v86;
    }

    if (v87 < v90)
    {
      v90 = v87;
    }

    if (v90 <= v201)
    {
      v69 = v90;
    }

    else
    {
      v69 = v201;
    }

    v91 = *(v144 + 120);
    v63 = v149;
    v66 = v155;
    if ((v91 & 0xC) != 0)
    {
      v92 = *v150;
      if ((*(v144 + 120) & 4) != 0)
      {
        *(v144 + 104) = *(v144 + 112);
      }

      if ((v91 & 8) != 0)
      {
        *(v144 + 112) = v92;
      }
    }

    if (v91)
    {
      *(v144 + 104) = v146;
      *(v144 + 108) = v142;
    }

    if ((v91 & 2) != 0)
    {
      *(v144 + 112) = v84;
    }

    ++v68;
    *(v144 + 120) = v152;
    v70 += 80;
    if (v139 == v68)
    {
      goto LABEL_54;
    }
  }

  *&v197 = __PAIR64__(v142, v146);
  *(&v197 + 1) = v84;
  LOBYTE(v198) = v152;
  DisplayList.Index.leave(index:)(&v197, v88);

  result = outlined destroy of (DisplayList.Item.Value, DisplayList.Item.Value)(&v255, type metadata accessor for (DisplayList.Item.Value, DisplayList.Item.Value));
  v63 = v149;
LABEL_91:
  *v63 = v89;
LABEL_92:
  *(v63 + 8) = 1;
  return result;
}

uint64_t DisplayList.ViewUpdater.Platform.updateItemViewAsync(layer:index:oldItem:oldState:newItem:newState:)(uint64_t a1, uint64_t a2, __int128 *a3, float *a4, __int128 *a5, __int128 *a6)
{
  v733 = *MEMORY[0x1E69E9840];
  v7 = *a3;
  v8 = a3[1];
  *&v724[12] = *(a3 + 60);
  v9 = a3[2];
  *v724 = a3[3];
  *&v723.tx = v9;
  *&v723.a = v7;
  *&v723.c = v8;
  v10 = *a5;
  v11 = a5[1];
  *&v726[12] = *(a5 + 60);
  v12 = a5[2];
  *v726 = a5[3];
  *&v725.tx = v12;
  *&v725.a = v10;
  *&v725.c = v11;
  v13 = *v6;
  v14 = *&v723.ty;
  v15 = v724[0];
  v16 = *(&v12 + 1);
  v17 = *v726;
  v727 = v723.ty;
  v728 = *v724;
  v729 = *&v724[16];
  v730 = *(&v12 + 1);
  v731 = *v726;
  v18 = *&v726[16] >> 30;
  v732 = *&v726[16];
  if (*&v726[16] >> 30 == 3)
  {
    if (!(*v726 | *(&v12 + 1) | *&v726[8]) && *&v726[16] == 3221225472)
    {
      goto LABEL_18;
    }

    v19 = *&v724[16] >> 30;
    if (*&v724[16] >> 30 == 3)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v19 = *&v724[16] >> 30;
    if (*&v724[16] >> 30 == 3 || v18 == 2)
    {
      goto LABEL_18;
    }
  }

  if (v19)
  {
    if (v19 == 1 && v18 == 1)
    {
      *&v20 = HIDWORD(*v724);
      v21 = HIDWORD(*v726);
      v636 = a1;
      if (*&v725.tx != *&v723.tx)
      {
        if (v724[4] == 3)
        {
          tx = v723.tx;
          v603 = v725.tx;
          v22 = a4;
          v23 = *&a6;
          if (v726[4] == 3)
          {
            v617 = HIDWORD(*v726);
            v627 = HIDWORD(*v724);
            v597 = v13;
            outlined init with copy of AnyTrackedValue(*&v723.ty + 16, &v702);
            outlined init with copy of AnyTrackedValue(v16 + 16, v696);
            d = v702.d;
            v187 = v702.tx;
            __swift_project_boxed_opaque_existential_1(&v702, *&v702.d);
            v592 = *(*&v187 + 24);
            outlined copy of DisplayList.Effect(v14, v15, 3);
            outlined copy of DisplayList.Effect(v16, v17, 3);
            outlined init with copy of DisplayList.Item(&v723, &v711);
            outlined init with copy of DisplayList.Item(&v725, &v711);
            outlined copy of DisplayList.Effect(v14, v15, 3);
            outlined copy of DisplayList.Effect(v16, v17, 3);
            v188 = v592(v696, *&d, *&v187);
            __swift_destroy_boxed_opaque_existential_1(v696);
            if (v188)
            {
              outlined consume of DisplayList.Effect(v16, v17, 3);
              outlined consume of DisplayList.Effect(v14, v15, 3);
              outlined destroy of (PaintType, ShapeType)(&v727, &lazy cache variable for type metadata for (DisplayList.Item.Value, DisplayList.Item.Value), &type metadata for DisplayList.Item.Value, &type metadata for DisplayList.Item.Value, type metadata accessor for (Path, FillStyle));
              __swift_destroy_boxed_opaque_existential_1(&v702);
              outlined consume of DisplayList.Effect(v14, v15, 3);
              outlined consume of DisplayList.Effect(v16, v17, 3);
              return 0;
            }

            __swift_destroy_boxed_opaque_existential_1(&v702);
            outlined consume of DisplayList.Effect(v14, v15, 3);
            outlined consume of DisplayList.Effect(v16, v17, 3);
            v13 = v597;
            LOBYTE(v20) = v627;
            LOBYTE(v21) = v617;
            goto LABEL_105;
          }

          outlined copy of DisplayList.Effect(*&v723.ty, v724[0], 3);
          outlined copy of DisplayList.Effect(v16, v726[0], v726[4]);
          outlined init with copy of DisplayList.Item(&v723, &v711);
          outlined init with copy of DisplayList.Item(&v725, &v711);
          outlined copy of DisplayList.Effect(v14, v15, 3);
          outlined copy of DisplayList.Effect(v16, v17, SBYTE4(v17));
          v213 = v14;
          v214 = v15;
          v215 = 3;
          goto LABEL_104;
        }

        if (v724[4] == 8)
        {
          v161 = *(*&v723.ty + 32);
          *v664 = *(*&v723.ty + 16);
          *&v664[16] = v161;
          *&v664[32] = *(*&v723.ty + 48);
          *&v664[48] = *(*&v723.ty + 64);
          if (v726[4] == 8)
          {
            v162 = *(*(&v12 + 1) + 32);
            *v656 = *(*(&v12 + 1) + 16);
            *&v656[16] = v162;
            *&v656[32] = *(*(&v12 + 1) + 48);
            v163 = *(*(&v12 + 1) + 64);
            v164 = *(a4 + 9);
            v165 = *(a4 + 7);
            *&v693[32] = *(a4 + 8);
            v694 = v164;
            v166 = *(a4 + 9);
            *v695 = *(a4 + 10);
            v167 = *(a4 + 5);
            v168 = *(a4 + 3);
            v691 = *(a4 + 16);
            v692 = v167;
            v169 = *(a4 + 5);
            v170 = *(a4 + 7);
            *v693 = *(a4 + 6);
            *&v693[16] = v170;
            v171 = *(a4 + 1);
            *&v689.a = *a4;
            *&v689.c = v171;
            v172 = *(a4 + 3);
            v174 = *a4;
            v173 = *(a4 + 1);
            *&v689.tx = *(a4 + 2);
            v690 = v172;
            *&v685[48] = *&v693[32];
            v686 = v166;
            *v687 = *(a4 + 10);
            *&v684[16] = v691;
            *v685 = v169;
            *&v685[16] = *v693;
            *&v685[32] = v165;
            *&v683.a = v174;
            *&v683.c = v173;
            *&v683.tx = *&v689.tx;
            *v684 = v168;
            v175 = a6[9];
            v176 = a6[7];
            *&v698[32] = a6[8];
            v699 = v175;
            v177 = a6[9];
            *v700 = a6[10];
            v178 = a6[5];
            v179 = a6[3];
            *&v696[64] = a6[4];
            v697 = v178;
            v180 = a6[5];
            v181 = a6[7];
            *v698 = a6[6];
            *&v698[16] = v181;
            v182 = a6[1];
            *v696 = *a6;
            *&v696[16] = v182;
            v183 = a6[3];
            v185 = *a6;
            v184 = a6[1];
            *&v696[32] = a6[2];
            *&v696[48] = v183;
            v716 = *&v698[32];
            v717 = v177;
            v718 = a6[10];
            *&v712[16] = *&v696[64];
            v713 = v180;
            v714 = *v698;
            v715 = v176;
            *&v711.a = v185;
            *&v711.c = v184;
            *&v656[48] = v163;
            *&v695[16] = *(a4 + 22);
            *&v687[16] = *(a4 + 22);
            *&v700[16] = *(a6 + 22);
            v719 = *(a6 + 22);
            *&v711.tx = *&v696[32];
            *v712 = v179;
            v640.a = v13;
            v675 = *v664;
            *v676 = *&v664[48];
            *&v647.a = *v656;
            *&v647.c = v162;
            *&v647.tx = *&v656[32];
            *&v648 = v163;
            outlined copy of DisplayList.Effect(*&v723.ty, v724[0], 8);
            outlined copy of DisplayList.Effect(v16, v726[0], 8);
            outlined init with copy of DisplayList.Item(&v723, &v702);
            outlined init with copy of DisplayList.Item(&v725, &v702);
            outlined copy of DisplayList.Effect(v14, v15, 8);
            outlined copy of DisplayList.Effect(v16, v17, 8);
            outlined init with copy of SDFShape(v656, &v702);
            outlined init with copy of DisplayList.ViewUpdater.Model.State(&v689, &v702);
            outlined init with copy of DisplayList.ViewUpdater.Model.State(v696, &v702);
            DisplayList.ViewUpdater.Platform.updateSDFShapeViewAsync(_:oldState:oldShape:newState:newShape:contentsChanged:)(v636, &v683, &v675.a, &v711, &v647, 1);
            v647.a = v13;
            v702 = v723;
            *v703 = *v724;
            *&v703[12] = *&v724[12];
            v675 = v725;
            *v676 = *v726;
            *&v676[12] = *&v726[12];
            v25 = DisplayList.ViewUpdater.Platform.updateStateAsync(layer:oldItem:oldSize:oldState:newItem:newSize:newState:)(v636, &v702, &v683, &v675, &v711, v723.c, v723.d, v725.c, v725.d);
            outlined consume of DisplayList.Effect(v16, v17, 8);
            outlined consume of DisplayList.Effect(v14, v15, 8);
            outlined destroy of SDFShape(v656);
            outlined destroy of (PaintType, ShapeType)(&v727, &lazy cache variable for type metadata for (DisplayList.Item.Value, DisplayList.Item.Value), &type metadata for DisplayList.Item.Value, &type metadata for DisplayList.Item.Value, type metadata accessor for (Path, FillStyle));
            v707 = v716;
            v708 = v717;
            v709 = v718;
            v710 = v719;
            *&v703[16] = *&v712[16];
            v704 = v713;
            v705 = v714;
            v706 = v715;
            v702 = v711;
            *v703 = *v712;
            outlined destroy of DisplayList.ViewUpdater.Model.State(&v702);
            v716 = *&v685[48];
            v717 = v686;
            v718 = *v687;
            v719 = *&v687[16];
            *&v712[16] = *&v684[16];
            v713 = *v685;
            v714 = *&v685[16];
            v715 = *&v685[32];
            v711 = v683;
            *v712 = *v684;
            outlined destroy of DisplayList.ViewUpdater.Model.State(&v711);
            outlined consume of DisplayList.Effect(v14, v15, 8);
            outlined consume of DisplayList.Effect(v16, v17, 8);
            return v25;
          }

          tx = v723.tx;
          v603 = v725.tx;
          v22 = a4;
          v23 = *&a6;
          outlined copy of DisplayList.Effect(*&v723.ty, v724[0], 8);
          outlined copy of DisplayList.Effect(v16, v726[0], v726[4]);
          outlined init with copy of DisplayList.Item(&v723, &v711);
          outlined init with copy of DisplayList.Item(&v725, &v711);
          outlined copy of DisplayList.Effect(v14, v15, 8);
          outlined copy of DisplayList.Effect(v16, v17, SBYTE4(v17));
          v213 = v14;
          v214 = v15;
          v215 = 8;
          goto LABEL_104;
        }

        tx = v723.tx;
        v603 = v725.tx;
        v22 = a4;
        v23 = *&a6;
        if (v724[4] != 9)
        {
          outlined copy of DisplayList.Effect(*&v723.ty, v724[0], v724[4]);
          outlined copy of DisplayList.Effect(v16, v726[0], v726[4]);
          outlined init with copy of DisplayList.Item(&v723, &v711);
          outlined init with copy of DisplayList.Item(&v725, &v711);
          v197 = v14;
          v198 = v15;
LABEL_101:
          outlined copy of DisplayList.Effect(v197, v198, SLOBYTE(v20));
          outlined copy of DisplayList.Effect(v16, v17, v21);
          v213 = v14;
          v214 = v15;
          v215 = LOBYTE(v20);
LABEL_104:
          outlined consume of DisplayList.Effect(v213, v214, v215);
          outlined consume of DisplayList.Effect(v16, v17, v21);
          goto LABEL_105;
        }

        v622 = HIDWORD(*v724);
        outlined init with copy of DisplayList.Item(&v723, &v711);
        outlined init with copy of DisplayList.Item(&v725, &v711);
        outlined copy of DisplayList.Effect(v14, v15, 9);
        outlined copy of DisplayList.Effect(v16, v17, SBYTE4(v17));
        v20 = v23;
        v24 = v22;
LABEL_87:
        if (BYTE4(v17) == 9)
        {
          v191 = v21;
          v192 = *(v14 + 88);
          v193 = *(v16 + 64);
          *&v672.tx = *(v16 + 48);
          v673 = v193;
          v674 = *(v16 + 80);
          v194 = *(v16 + 16);
          *&v672.c = *(v16 + 32);
          *&v672.a = v194;
          v195 = *(v16 + 88);
          v196 = *(v14 + 48);
          *&v711.c = *(v14 + 32);
          *&v711.tx = v196;
          *v712 = *(v14 + 64);
          *&v712[16] = *(v14 + 80);
          *&v711.a = *(v14 + 16);
          v22 = v24;
          v23 = v20;
          if (v192 > 1)
          {
            if (v192 != 2)
            {
              v20 = v13;
              v370 = *(v14 + 48);
              *&v696[16] = *(v14 + 32);
              *&v696[32] = v370;
              *&v696[48] = *(v14 + 64);
              *&v696[64] = *(v14 + 80);
              *v696 = *(v14 + 16);
              outlined copy of DisplayList.Effect(v14, v15, v622);
              outlined copy of DisplayList.Effect(v16, v17, 9);
              _Rotation3DEffect.Data.transform.getter(&v702);
LABEL_184:
              *v664 = v702;
              *&v664[48] = *v703;
              v665.f64[0] = *&v703[16];
              if (v195 > 1)
              {
                if (v195 != 2)
                {
                  v689 = v672;
                  v690 = v673;
                  v691.f64[0] = v674;
                  _Rotation3DEffect.Data.transform.getter(v696);
                  goto LABEL_189;
                }
              }

              else if (v195)
              {
                *v696 = v672;
                *&v696[48] = v673;
                *&v696[64] = v674;
LABEL_189:
                v647 = *v696;
                v648 = *&v696[48];
                v371 = *(v22 + 3);
                *v656 = *(v22 + 2);
                v649.f64[0] = *&v696[64];
                *&v656[24] = v371;
                *&v656[16] = 0;
                *&v656[40] = 0;
                *&v656[48] = *(v22 + 4);
                v657.f64[0] = 1.0;
                ProjectionTransform.concatenating(_:)(v656, &v721);
                v372 = *(*&v23 + 48);
                *&v640.a = *(*&v23 + 32);
                v640.c = 0.0;
                *&v640.d = v372;
                v640.ty = 0.0;
                v641 = *(*&v23 + 64);
                v642.f64[0] = 1.0;
                ProjectionTransform.concatenating(_:)(&v640, v722);
                _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV6update_4from2toyxm_5ValueQzALtAA01_cd1_ef1_gH8PropertyRzSQALRQlFAE0H19ProjectionTransformO_Ttg5(&v721.value.rect.origin.x, v722);
              }

              outlined consume of DisplayList.Effect(v14, v15, v622);
              outlined consume of DisplayList.Effect(v16, v17, 9);
              v13 = v20;
              LOBYTE(v20) = v622;
              LOBYTE(v21) = v191;
LABEL_105:
              if (*(*&v23 + 104) == *(v22 + 26))
              {
                v216 = *&v23;
                v217 = v22;
                v218 = *&v723.c;
                height = v725.d;
                c = v725.c;
                v221 = *(*&v23 + 8);
                if (v221 != v22[2])
                {
                  _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE7OpacityO_Tt0g5(v221);
                  v217 = v22;
                  v216 = *&v23;
                }

                v222 = v636;
                if (*(v216 + 136) == *(v217 + 17))
                {
                  v618 = v21;
                  v628 = LOBYTE(v20);
                  if (*(v216 + 160) != *(v217 + 20))
                  {
                    v711.a = v217[11];
                    v702.a = *(v216 + 88);
                    if (*(v636 + 16) == 9)
                    {
                      v223 = v216;
                      v224 = v217;

                      v593 = specialized Array<A>.popColorMultiply(drawable:)(&v711, v636);
                      v589 = v225;
                      v227 = v226;

                      v228 = specialized Array<A>.popColorMultiply(drawable:)(&v702, v636);
                      v586 = v229;
                      v231 = v230;

                      if ((v231 & 0x100000000) == 0 || (v217 = v224, v216 = v223, (v227 & 0x100000000) == 0))
                      {
                        _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV6update_4from2toyxm_5ValueQzALtAA01_cd1_ef1_gH8PropertyRzSQALRQlFAE21ContentsMultiplyColorO_Ttg5(v593, v589, v227 | ((HIDWORD(v227) & 1) << 32), v228, v586, v231 | ((HIDWORD(v231) & 1) << 32));
                        v217 = v224;
                        v216 = v223;
                      }
                    }

                    v232 = v217;
                    v233 = *(v217 + 11);
                    v234 = v216;
                    v235 = *(v216 + 88);

                    specialized static GraphicsFilter.updateAsync(layer:oldFilters:newFilters:)(v636, v233, v235);
                    v237 = v236;

                    if ((v237 & 1) == 0)
                    {
LABEL_216:
                      outlined destroy of (PaintType, ShapeType)(&v727, &lazy cache variable for type metadata for (DisplayList.Item.Value, DisplayList.Item.Value), &type metadata for DisplayList.Item.Value, &type metadata for DisplayList.Item.Value, type metadata accessor for (Path, FillStyle));
                      outlined consume of DisplayList.Effect(v16, v17, v618);
                      outlined consume of DisplayList.Effect(v14, v15, v628);
                      return 0;
                    }

                    v222 = v636;
                    v216 = v234;
                    v217 = v232;
                  }

                  if (*(v216 + 152) == *(v217 + 19) && *(v216 + 144) == *(v217 + 18) || (v711.a = v13, v238 = v222, v239 = v216, v240 = v217, v241 = DisplayList.ViewUpdater.Platform.updateClipShapesAsync(layer:oldState:newState:)(v222, v217, v216), v217 = v240, v216 = v239, v222 = v238, (v241 & 1) != 0))
                  {
                    v594 = v216;
                    v587 = *(v217 + 8);
                    v590 = *(v216 + 64);
                    origin = 0;
                    v243 = v222;
                    v244 = *(v222 + 17);
                    if ((v244 & 8) != 0)
                    {
                      v322 = *(v217 + 9);
                      v323 = *(v217 + 7);
                      v707 = *(v217 + 8);
                      v708 = v322;
                      v324 = *(v217 + 9);
                      v709 = *(v217 + 10);
                      v325 = *(v217 + 5);
                      v326 = *(v217 + 3);
                      *&v703[16] = *(v217 + 4);
                      v704 = v325;
                      v327 = *(v217 + 5);
                      v328 = *(v217 + 7);
                      v705 = *(v217 + 6);
                      v706 = v328;
                      v329 = *(v217 + 1);
                      *&v702.a = *v217;
                      *&v702.c = v329;
                      v330 = *(v217 + 3);
                      v332 = *v217;
                      v331 = *(v217 + 1);
                      *&v702.tx = *(v217 + 2);
                      *v703 = v330;
                      *&v698[32] = v707;
                      v699 = v324;
                      *v700 = *(v217 + 10);
                      *&v696[64] = *&v703[16];
                      v697 = v327;
                      *v698 = v705;
                      *&v698[16] = v323;
                      *v696 = v332;
                      *&v696[16] = v331;
                      v710 = *(v217 + 22);
                      v245 = v217;
                      *&v700[16] = v217[22];
                      *&v696[32] = *&v702.tx;
                      *&v696[48] = v326;
                      DisplayList.ViewUpdater.Model.State.clipRect()(&v701);
                      v716 = *&v698[32];
                      v717 = v699;
                      v718 = *v700;
                      v719 = *&v700[16];
                      *&v712[16] = *&v696[64];
                      v713 = v697;
                      v714 = *v698;
                      v715 = *&v698[16];
                      v711 = *v696;
                      *v712 = *&v696[48];
                      outlined init with copy of DisplayList.ViewUpdater.Model.State(&v702, &v689);
                      outlined destroy of DisplayList.ViewUpdater.Model.State(&v711);
                      if (v701.value.style == SwiftUI_RoundedCornerStyle_unknownDefault || (v333 = *(v594 + 144), v334 = *(v594 + 112), *&v693[32] = *(v594 + 128), v694 = v333, v335 = *(v594 + 144), *v695 = *(v594 + 160), v336 = *(v594 + 80), v337 = *(v594 + 48), v691 = *(v594 + 64), v692 = v336, v338 = *(v594 + 80), v339 = *(v594 + 112), *v693 = *(v594 + 96), *&v693[16] = v339, v340 = *(v594 + 16), *&v689.a = *v594, *&v689.c = v340, v341 = *(v594 + 48), v343 = *v594, v342 = *(v594 + 16), *&v689.tx = *(v594 + 32), v690 = v341, *&v685[48] = *&v693[32], v686 = v335, *v687 = *(v594 + 160), *&v684[16] = v691, *v685 = v338, *&v685[16] = *v693, *&v685[32] = v334, v344 = v701.value.rect.size.height, width = v701.value.rect.size.width, *&v683.a = v343, *&v683.c = v342, v582 = v701.value.rect.origin, *&v695[16] = *(v594 + 176), *&v687[16] = *(v594 + 176), *&v683.tx = *&v689.tx, *v684 = v337, DisplayList.ViewUpdater.Model.State.clipRect()(&v688), *&v698[32] = *&v685[48], v699 = v686, *v700 = *v687, *&v700[16] = *&v687[16], *&v696[64] = *&v684[16], v697 = *v685, *v698 = *&v685[16], *&v698[16] = *&v685[32], *v696 = v683, *&v696[48] = *v684, outlined init with copy of DisplayList.ViewUpdater.Model.State(&v689, &v675), outlined destroy of DisplayList.ViewUpdater.Model.State(v696), v688.value.style == SwiftUI_RoundedCornerStyle_unknownDefault))
                      {
                        v247 = *(&v218 + 1);
                        v246 = *&v218;
                        v248 = 0;
                        origin = 0;
                      }

                      else
                      {
                        height = v688.value.rect.size.height;
                        c = v688.value.rect.size.width;
                        origin = v688.value.rect.origin;
                        v248 = v582;
                        v587 = vaddq_f64(v587, v582);
                        v590 = vaddq_f64(v590, v688.value.rect.origin);
                        v246 = width;
                        v247 = v344;
                      }
                    }

                    else
                    {
                      v245 = v217;
                      v247 = *(&v218 + 1);
                      v246 = *&v218;
                      v248 = 0;
                    }

                    y = origin.y;
                    v397 = v248.y;
                    x = origin.x;
                    v739.origin.x = origin.x;
                    v739.origin.y = origin.y;
                    v739.size.width = c;
                    v739.size.height = height;
                    v398 = CGRectEqualToRect(v739, *&v248.x);
                    if (v398)
                    {
                      v399 = v243;
                      if ((v244 & 4) != 0)
                      {
                        goto LABEL_218;
                      }

                      goto LABEL_207;
                    }

                    v402 = *(v243 + 16);
                    if (v402 != 15 && v402 != 16 && v402 != 17)
                    {
                      _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE6BoundsO_Tt0g5(x, y, c, height);
                      v399 = v243;
                      if (*(v243 + 16) == 14)
                      {
                        _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV12setMaskValue_3fory0K0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE6BoundsO_Tt0g5(x, y, c, height);
                        v399 = v243;
                      }

                      if ((v244 & 4) != 0)
                      {
                        goto LABEL_224;
                      }

LABEL_207:
                      if (v590.f64[0] != v587.f64[0] || v590.f64[1] != v587.f64[1])
                      {
                        _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE8PositionO_Tt0g5(v590.f64[0], v590.f64[1]);
                      }

                      v400 = *(v245 + 3);
                      *v696 = *(v245 + 2);
                      *&v696[16] = v400;
                      *&v696[32] = 0uLL;
                      v401 = *(v594 + 48);
                      *&v689.a = *(v594 + 32);
                      *&v689.c = v401;
                      *&v689.tx = 0uLL;
                      if (static CGAffineTransform.== infix(_:_:)())
                      {
                        v399 = v243;
                        if (!v398)
                        {
                          goto LABEL_224;
                        }
                      }

                      else
                      {
                        _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE15AffineTransformO_Tt0g5(&v689);
                        v399 = v243;
                        if (!v398)
                        {
LABEL_224:
                          v403 = 1;
                          v404 = v594;
                          v405 = v245;
                          goto LABEL_225;
                        }
                      }

LABEL_218:
                      v403 = 0;
                      v404 = v594;
                      v405 = v245;
                      if (*&v603 == *&tx)
                      {
                        v406 = v628;
                        v407 = v618;
                        if (*(v594 + 168) == *(v245 + 21))
                        {
                          outlined destroy of (PaintType, ShapeType)(&v727, &lazy cache variable for type metadata for (DisplayList.Item.Value, DisplayList.Item.Value), &type metadata for DisplayList.Item.Value, &type metadata for DisplayList.Item.Value, type metadata accessor for (Path, FillStyle));
                          outlined consume of DisplayList.Effect(v16, v17, v618);
                          outlined consume of DisplayList.Effect(v14, v15, v628);
                          return 1;
                        }

                        goto LABEL_226;
                      }

LABEL_225:
                      v406 = v628;
                      v407 = v618;
LABEL_226:
                      v683.a = v13;
                      v711 = v723;
                      *v712 = *v724;
                      *&v712[12] = *&v724[12];
                      v702 = v725;
                      *v703 = *v726;
                      *&v703[12] = *&v726[12];
                      v408 = DisplayList.ViewUpdater.Platform.updateShadowAsync(layer:oldState:oldItem:newState:newItem:boundsChanged:)(v399, v405, &v711, v404, &v702, v403);
                      outlined destroy of (PaintType, ShapeType)(&v727, &lazy cache variable for type metadata for (DisplayList.Item.Value, DisplayList.Item.Value), &type metadata for DisplayList.Item.Value, &type metadata for DisplayList.Item.Value, type metadata accessor for (Path, FillStyle));
                      outlined consume of DisplayList.Effect(v16, v17, v407);
                      outlined consume of DisplayList.Effect(v14, v15, v406);
                      return (v408 & 1) != 0;
                    }
                  }

                  goto LABEL_216;
                }
              }

              outlined destroy of (PaintType, ShapeType)(&v727, &lazy cache variable for type metadata for (DisplayList.Item.Value, DisplayList.Item.Value), &type metadata for DisplayList.Item.Value, &type metadata for DisplayList.Item.Value, type metadata accessor for (Path, FillStyle));
              outlined consume of DisplayList.Effect(v16, v17, v21);
              outlined consume of DisplayList.Effect(v14, v15, SLOBYTE(v20));
              return 0;
            }
          }

          else if (v192)
          {
            v20 = v13;
            outlined copy of DisplayList.Effect(v14, v15, v622);
            outlined copy of DisplayList.Effect(v16, v17, 9);
            v702 = v711;
            *v703 = *v712;
            *&v703[16] = *&v712[16];
            goto LABEL_184;
          }

          LOBYTE(v20) = v622;
          outlined copy of DisplayList.Effect(v14, v15, v622);
          outlined copy of DisplayList.Effect(v16, v17, 9);
          outlined consume of DisplayList.Effect(v14, v15, v622);
          outlined consume of DisplayList.Effect(v16, v17, 9);
          LOBYTE(v21) = v191;
          goto LABEL_105;
        }

        v22 = v24;
        v23 = v20;
        v197 = v14;
        v198 = v15;
        LOBYTE(v20) = v622;
        goto LABEL_101;
      }

      if (v724[4] == 9)
      {
        v613 = HIDWORD(*v726);
        v622 = HIDWORD(*v724);
        v21 = a4;
        v20 = *&a6;
        if (*(*&v723.ty + 88) > 1u)
        {
          if (*(*&v723.ty + 88) != 2)
          {
            tx = v723.tx;
            v603 = v725.tx;
            v189 = *(*&v723.ty + 48);
            *&v702.c = *(*&v723.ty + 32);
            *&v702.tx = v189;
            *v703 = *(*&v723.ty + 64);
            *&v703[16] = *(*&v723.ty + 80);
            *&v702.a = *(*&v723.ty + 16);
            outlined init with copy of DisplayList.Item(&v723, &v711);
            outlined init with copy of DisplayList.Item(&v725, &v711);
            outlined copy of DisplayList.Effect(v14, v15, 9);
            outlined copy of DisplayList.Effect(v16, v17, v613);
            _Rotation3DEffect.Data.transform.getter(&v720);
            goto LABEL_85;
          }
        }

        else if (*(*&v723.ty + 88))
        {
          tx = v723.tx;
          v603 = v725.tx;
          outlined init with copy of DisplayList.Item(&v723, &v711);
          outlined init with copy of DisplayList.Item(&v725, &v711);
          outlined copy of DisplayList.Effect(v14, v15, 9);
          outlined copy of DisplayList.Effect(v16, v17, v613);
LABEL_85:
          v24 = v21;
          v190 = *(v21 + 18);
          LOBYTE(v21) = v613;
          if (v190 != *(*&v20 + 144))
          {
            goto LABEL_87;
          }

          v21 = v24;
          outlined consume of DisplayList.Effect(v16, v17, v613);
          outlined consume of DisplayList.Effect(v14, v15, 9);
LABEL_35:
          v70 = *(v636 + 17);
          if ((v70 & 0x20) == 0)
          {
            outlined destroy of (PaintType, ShapeType)(&v727, &lazy cache variable for type metadata for (DisplayList.Item.Value, DisplayList.Item.Value), &type metadata for DisplayList.Item.Value, &type metadata for DisplayList.Item.Value, type metadata accessor for (Path, FillStyle));
            if (*(*&v20 + 104) != *(v21 + 26))
            {
              return 0;
            }

            v71 = *&v20;
            v72 = v21;
            v73 = *&v723.c;
            v74 = v725.d;
            v75 = v725.c;
            v76 = *(*&v20 + 8);
            if (v76 != v21[2])
            {
              _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE7OpacityO_Tt0g5(v76);
              v72 = v21;
              v71 = *&v20;
            }

            if (*(v71 + 136) != *(v72 + 17))
            {
              return 0;
            }

            if (*(v71 + 160) != *(v72 + 20))
            {
              v77 = v13;
              v711.a = *(v72 + 11);
              v702.a = *(v71 + 88);
              if (*(v636 + 16) == 9)
              {
                v78 = v71;
                v79 = v72;

                v624 = specialized Array<A>.popColorMultiply(drawable:)(&v711, v636);
                v81 = v80;
                v83 = v82;

                v84 = specialized Array<A>.popColorMultiply(drawable:)(&v702, v636);
                v86 = v85;
                v88 = v87;

                if ((v88 & 0x100000000) == 0 || (v72 = v79, v71 = v78, (v83 & 0x100000000) == 0))
                {
                  _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV6update_4from2toyxm_5ValueQzALtAA01_cd1_ef1_gH8PropertyRzSQALRQlFAE21ContentsMultiplyColorO_Ttg5(v624, v81, v83 | ((HIDWORD(v83) & 1) << 32), v84, v86, v88 | ((HIDWORD(v88) & 1) << 32));
                  v72 = v79;
                  v71 = v78;
                }
              }

              v89 = *(v72 + 11);
              v90 = *(v71 + 88);
              v91 = v71;
              v92 = v72;

              specialized static GraphicsFilter.updateAsync(layer:oldFilters:newFilters:)(v636, v89, v90);
              v94 = v93;

              v72 = v92;
              v71 = v91;
              v13 = v77;
              if ((v94 & 1) == 0)
              {
                return 0;
              }
            }

            if (*(v71 + 152) != *(v72 + 19) || *(v71 + 144) != *(v72 + 18))
            {
              v711.a = v13;
              v95 = v71;
              v96 = v72;
              v97 = DisplayList.ViewUpdater.Platform.updateClipShapesAsync(layer:oldState:newState:)(v636, v72, v71);
              v72 = v96;
              v71 = v95;
              if ((v97 & 1) == 0)
              {
                return 0;
              }
            }

            v98 = v71;
            v615 = *(v72 + 16);
            v625 = *(v71 + 64);
            v99 = 0uLL;
            if ((v70 & 8) != 0)
            {
              v346 = *(v72 + 9);
              v347 = *(v72 + 7);
              v707 = *(v72 + 8);
              v708 = v346;
              v348 = *(v72 + 9);
              v709 = *(v72 + 10);
              v349 = *(v72 + 5);
              v350 = *(v72 + 3);
              *&v703[16] = *(v72 + 4);
              v704 = v349;
              v351 = *(v72 + 5);
              v352 = *(v72 + 7);
              v705 = *(v72 + 6);
              v706 = v352;
              v353 = *(v72 + 1);
              *&v702.a = *v72;
              *&v702.c = v353;
              v354 = *(v72 + 3);
              v356 = *v72;
              v355 = *(v72 + 1);
              *&v702.tx = *(v72 + 2);
              *v703 = v354;
              *&v698[32] = v707;
              v699 = v348;
              *v700 = *(v72 + 10);
              *&v696[64] = *&v703[16];
              v697 = v351;
              *v698 = v705;
              *&v698[16] = v347;
              *v696 = v356;
              *&v696[16] = v355;
              v710 = *(v72 + 22);
              v100 = v72;
              *&v700[16] = *(v72 + 22);
              *&v696[32] = *&v702.tx;
              *&v696[48] = v350;
              DisplayList.ViewUpdater.Model.State.clipRect()(v664);
              v716 = *&v698[32];
              v717 = v699;
              v718 = *v700;
              v719 = *&v700[16];
              *&v712[16] = *&v696[64];
              v713 = v697;
              v714 = *v698;
              v715 = *&v698[16];
              v711 = *v696;
              *v712 = *&v696[48];
              outlined init with copy of DisplayList.ViewUpdater.Model.State(&v702, &v689);
              outlined destroy of DisplayList.ViewUpdater.Model.State(&v711);
              if (v664[48] == 2 || (v357 = *(v98 + 144), v358 = *(v98 + 112), *&v693[32] = *(v98 + 128), v694 = v357, v359 = *(v98 + 144), *v695 = *(v98 + 160), v360 = *(v98 + 80), v361 = *(v98 + 48), v691 = *(v98 + 64), v692 = v360, v362 = *(v98 + 80), v363 = *(v98 + 112), *v693 = *(v98 + 96), *&v693[16] = v363, v364 = *(v98 + 16), *&v689.a = *v98, *&v689.c = v364, v365 = *(v98 + 48), v367 = *v98, v366 = *(v98 + 16), *&v689.tx = *(v98 + 32), v690 = v365, *&v685[48] = *&v693[32], v686 = v359, *v687 = *(v98 + 160), *&v684[16] = v691, *v685 = v362, *&v685[16] = *v693, *&v685[32] = v358, v368 = *&v664[24], v369 = *&v664[16], *&v683.a = v367, *&v683.c = v366, v606 = *v664, *&v695[16] = *(v98 + 176), *&v687[16] = *(v98 + 176), *&v683.tx = *&v689.tx, *v684 = v361, DisplayList.ViewUpdater.Model.State.clipRect()(v656), *&v698[32] = *&v685[48], v699 = v686, *v700 = *v687, *&v700[16] = *&v687[16], *&v696[64] = *&v684[16], v697 = *v685, *v698 = *&v685[16], *&v698[16] = *&v685[32], *v696 = v683, *&v696[48] = *v684, outlined init with copy of DisplayList.ViewUpdater.Model.State(&v689, &v675), outlined destroy of DisplayList.ViewUpdater.Model.State(v696), v656[48] == 2))
              {
                v102 = *(&v73 + 1);
                v101 = v73;
                v103 = 0uLL;
                v99 = 0uLL;
              }

              else
              {
                v74 = *&v656[24];
                v75 = *&v656[16];
                v99 = *v656;
                v103 = v606;
                v615 = vaddq_f64(v615, v606);
                v625 = vaddq_f64(v625, *v656);
                v101 = v369;
                v102 = v368;
              }
            }

            else
            {
              v100 = v72;
              v102 = *(&v73 + 1);
              v101 = v73;
              v103 = 0uLL;
            }

            v409 = *(&v99 + 1);
            v410 = v103.f64[1];
            v607 = *&v99;
            *&v740.origin.x = v99;
            v740.origin.y = *(&v99 + 1);
            v740.size.width = v75;
            v740.size.height = v74;
            v411 = CGRectEqualToRect(v740, *v103.f64);
            if (v411)
            {
              v412 = v636;
              if ((v70 & 4) != 0)
              {
LABEL_243:
                v416 = v98;
                v417 = v100;
                if (*(v98 + 168) == *(v100 + 21) && *&v725.tx == *&v723.tx)
                {
                  return 1;
                }

                v415 = 0;
LABEL_246:
                v683.a = v13;
                v711 = v723;
                *v712 = *v724;
                *&v712[12] = *&v724[12];
                v702 = v725;
                *v703 = *v726;
                *&v703[12] = *&v726[12];
                return (DisplayList.ViewUpdater.Platform.updateShadowAsync(layer:oldState:oldItem:newState:newItem:boundsChanged:)(v412, v417, &v711, v416, &v702, v415) & 1) != 0;
              }
            }

            else
            {
              if (*(v636 + 16) - 15 < 3)
              {
                return 0;
              }

              _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE6BoundsO_Tt0g5(v607, v409, v75, v74);
              v412 = v636;
              if (*(v636 + 16) == 14)
              {
                _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV12setMaskValue_3fory0K0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE6BoundsO_Tt0g5(v607, v409, v75, v74);
                v412 = v636;
              }

              if ((v70 & 4) != 0)
              {
                goto LABEL_241;
              }
            }

            if (v625.f64[0] != v615.f64[0] || v625.f64[1] != v615.f64[1])
            {
              _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE8PositionO_Tt0g5(v625.f64[0], v625.f64[1]);
            }

            v413 = *(v100 + 3);
            *v696 = *(v100 + 2);
            *&v696[16] = v413;
            *&v696[32] = 0uLL;
            v414 = *(v98 + 48);
            *&v689.a = *(v98 + 32);
            *&v689.c = v414;
            *&v689.tx = 0uLL;
            if (static CGAffineTransform.== infix(_:_:)())
            {
              v412 = v636;
              if (v411)
              {
                goto LABEL_243;
              }
            }

            else
            {
              _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE15AffineTransformO_Tt0g5(&v689);
              v412 = v636;
              if (v411)
              {
                goto LABEL_243;
              }
            }

LABEL_241:
            v415 = 1;
            v416 = v98;
            v417 = v100;
            goto LABEL_246;
          }

          v104 = *(v21 + 9);
          v105 = *(v21 + 7);
          v707 = *(v21 + 8);
          v708 = v104;
          v106 = *(v21 + 9);
          v709 = *(v21 + 10);
          v107 = *(v21 + 5);
          v108 = *(v21 + 3);
          *&v703[16] = *(v21 + 4);
          v704 = v107;
          v109 = *(v21 + 5);
          v110 = *(v21 + 7);
          v705 = *(v21 + 6);
          v706 = v110;
          v111 = *(v21 + 1);
          *&v702.a = *v21;
          *&v702.c = v111;
          v112 = *(v21 + 3);
          v114 = *v21;
          v113 = *(v21 + 1);
          *&v702.tx = *(v21 + 2);
          *v703 = v112;
          *&v698[32] = v707;
          v699 = v106;
          *v700 = *(v21 + 10);
          *&v696[64] = *&v703[16];
          v697 = v109;
          *v698 = v705;
          *&v698[16] = v105;
          *v696 = v114;
          *&v696[16] = v113;
          *&v696[32] = *&v702.tx;
          *&v696[48] = v108;
          v115 = *(*&v20 + 144);
          v116 = *(*&v20 + 112);
          v716 = *(*&v20 + 128);
          v717 = v115;
          v117 = *(*&v20 + 144);
          v718 = *(*&v20 + 160);
          v118 = *(*&v20 + 80);
          v119 = *(*&v20 + 48);
          *&v712[16] = *(*&v20 + 64);
          v713 = v118;
          v120 = *(*&v20 + 80);
          v121 = *(*&v20 + 112);
          v714 = *(*&v20 + 96);
          v715 = v121;
          v122 = *(*&v20 + 16);
          *&v711.a = **&v20;
          *&v711.c = v122;
          v123 = *(*&v20 + 48);
          v125 = **&v20;
          v124 = *(*&v20 + 16);
          *&v711.tx = *(*&v20 + 32);
          *v712 = v123;
          *&v693[32] = v716;
          v694 = v117;
          *v695 = *(*&v20 + 160);
          v691 = *&v712[16];
          v692 = v120;
          *v693 = v714;
          *&v693[16] = v116;
          v710 = *(v21 + 22);
          *&v700[16] = *(v21 + 22);
          v719 = *(*&v20 + 176);
          *&v695[16] = *(*&v20 + 176);
          *&v689.a = v125;
          *&v689.c = v124;
          *&v689.tx = *&v711.tx;
          v690 = v119;
          v127 = v723.d;
          v126 = v723.c;
          v639 = *&v723.c;
          v129 = v725.d;
          v128 = v725.c;
          v638 = *&v725.c;
          if (v19 | v18)
          {
            outlined init with copy of DisplayList.ViewUpdater.Model.State(&v702, &v683);
            outlined init with copy of DisplayList.ViewUpdater.Model.State(&v711, &v683);
            outlined destroy of (PaintType, ShapeType)(&v727, &lazy cache variable for type metadata for (DisplayList.Item.Value, DisplayList.Item.Value), &type metadata for DisplayList.Item.Value, &type metadata for DisplayList.Item.Value, type metadata accessor for (Path, FillStyle));
LABEL_164:
            v679 = *&v693[32];
            v680 = v694;
            v681 = *v695;
            v682 = *&v695[16];
            *&v676[16] = v691;
            *v677 = v692;
            *&v677[16] = *v693;
            v678 = *&v693[16];
            v675 = v689;
            *v676 = v690;
            outlined destroy of DisplayList.ViewUpdater.Model.State(&v675);
            *&v685[48] = *&v698[32];
            v686 = v699;
            *v687 = *v700;
            *&v687[16] = *&v700[16];
            *&v684[16] = *&v696[64];
            *v685 = v697;
            *&v685[16] = *v698;
            *&v685[32] = *&v698[16];
            v683 = *v696;
            *v684 = *&v696[48];
            outlined destroy of DisplayList.ViewUpdater.Model.State(&v683);
            return 0;
          }

          v153 = v14 >> 60;
          if (v14 >> 60 == 5)
          {
            v319 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
            *&v675.a = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            *&v675.c = v319;
            *&v675.tx = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
            *v676 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
            if (v16 >> 60 == 5)
            {
              v320 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
              *v664 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
              *&v664[16] = v320;
              *&v664[32] = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
              *&v664[48] = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
              v596 = v13;
              v640.a = v13;
              *v656 = v675;
              *&v656[48] = *v676;
              v321 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
              *&v647.a = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
              *&v647.c = v321;
              *&v647.tx = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
              *&v648 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
              outlined init with copy of DisplayList.Item(&v723, &v683);
              outlined init with copy of DisplayList.Item(&v725, &v683);
              outlined init with copy of DisplayList.ViewUpdater.Model.State(&v702, &v683);
              outlined init with copy of DisplayList.ViewUpdater.Model.State(&v711, &v683);
              outlined init with copy of SDFShape(v664, &v683);
              DisplayList.ViewUpdater.Platform.updateSDFShapeViewAsync(_:oldState:oldShape:newState:newShape:contentsChanged:)(v636, v696, v656, &v689, &v647, 0);
              outlined destroy of (PaintType, ShapeType)(&v727, &lazy cache variable for type metadata for (DisplayList.Item.Value, DisplayList.Item.Value), &type metadata for DisplayList.Item.Value, &type metadata for DisplayList.Item.Value, type metadata accessor for (Path, FillStyle));
              outlined destroy of SDFShape(v664);
              outlined consume of DisplayList.Content.Value(v14);
              outlined consume of DisplayList.Content.Value(v16);
              goto LABEL_257;
            }
          }

          else if (v153 == 4)
          {
            v307 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
            v688.value.rect.origin = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            v688.value.rect.size = v307;
            LOBYTE(v688.value.cornerSize.width) = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
            if (v16 >> 60 == 4)
            {
              v308 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x41);
              v309 = v13;
              v310 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
              v311 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
              v312 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
              v701.value.rect.origin = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
              v701.value.rect.size = v312;
              LOBYTE(v701.value.cornerSize.width) = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
              v313 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
              v314 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
              v315 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x41);
              v596 = v309;
              v675.a = v309;
              outlined init with copy of DisplayList.Item(&v723, &v683);
              outlined init with copy of DisplayList.Item(&v725, &v683);
              outlined init with copy of DisplayList.ViewUpdater.Model.State(&v702, &v683);
              outlined init with copy of DisplayList.ViewUpdater.Model.State(&v711, &v683);
              if (v308)
              {
                v316 = 256;
              }

              else
              {
                v316 = 0;
              }

              if (v315)
              {
                v317 = 256;
              }

              else
              {
                v317 = 0;
              }

              v318 = DisplayList.ViewUpdater.Platform.updateShapeViewAsync(layer:oldState:oldSize:oldPath:oldPaint:oldStyle:newState:newSize:newPath:newPaint:newStyle:contentsChanged:)(v636, v696, &v639, &v688, v311, v316 | v310, &v689, &v638, &v701, v313, v317 | v314, 0);
              outlined destroy of (PaintType, ShapeType)(&v727, &lazy cache variable for type metadata for (DisplayList.Item.Value, DisplayList.Item.Value), &type metadata for DisplayList.Item.Value, &type metadata for DisplayList.Item.Value, type metadata accessor for (Path, FillStyle));
              outlined consume of DisplayList.Content.Value(v14);
              outlined consume of DisplayList.Content.Value(v16);
              if ((v318 & 1) == 0)
              {
                goto LABEL_164;
              }

              v127 = *(&v639 + 1);
              v126 = *&v639;
              v129 = *(&v638 + 1);
              v128 = *&v638;
LABEL_257:
              if (DWORD2(v714) != DWORD2(v705))
              {
                goto LABEL_326;
              }

              if (*&v711.b != *&v702.b)
              {
                _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE7OpacityO_Tt0g5(*&v711.b);
              }

              if (*(&v716 + 1) != *(&v707 + 1))
              {
                goto LABEL_326;
              }

              v426 = v636;
              v428 = *(&v708 + 1);
              v427 = v708;
              v429 = v717;
              if (v718 != v709)
              {
                v632 = v708;
                v430 = *(&v704 + 1);
                v431 = *(&v713 + 1);
                v683.a = *(&v704 + 1);
                v675.a = *(&v713 + 1);
                if (*(v636 + 16) == 9)
                {

                  v619 = specialized Array<A>.popColorMultiply(drawable:)(&v683, v636);
                  v608 = v432;
                  v434 = v433;

                  v435 = specialized Array<A>.popColorMultiply(drawable:)(&v675, v636);
                  v437 = v436;
                  v439 = v438;

                  if ((v439 & 0x100000000) == 0 || (v434 & 0x100000000) == 0)
                  {
                    _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV6update_4from2toyxm_5ValueQzALtAA01_cd1_ef1_gH8PropertyRzSQALRQlFAE21ContentsMultiplyColorO_Ttg5(v619, v608, v434 | ((HIDWORD(v434) & 1) << 32), v435, v437, v439 | ((HIDWORD(v439) & 1) << 32));
                  }
                }

                specialized static GraphicsFilter.updateAsync(layer:oldFilters:newFilters:)(v636, v430, v431);
                v441 = v440;

                v426 = v636;
                v427 = v632;
                if ((v441 & 1) == 0)
                {
                  goto LABEL_326;
                }
              }

              if (v429 != __PAIR128__(v428, v427))
              {
                v683.a = v596;
                v442 = v426;
                v443 = DisplayList.ViewUpdater.Platform.updateClipShapesAsync(layer:oldState:newState:)(v426, v696, &v689);
                v426 = v442;
                if ((v443 & 1) == 0)
                {
                  goto LABEL_326;
                }
              }

              v444 = 0;
              v445 = v426;
              v446 = *(v426 + 17);
              v620 = *&v696[64];
              v633 = v691;
              if ((v446 & 8) != 0)
              {
                v679 = *&v698[32];
                v680 = v699;
                v681 = *v700;
                *&v676[16] = *&v696[64];
                *v677 = v697;
                *&v677[16] = *v698;
                v678 = *&v698[16];
                v675 = *v696;
                *v676 = *&v696[48];
                v668 = *&v698[32];
                v669 = v699;
                v670 = *v700;
                v665 = *&v696[64];
                *v666 = v697;
                *&v666[16] = *v698;
                v667 = *&v698[16];
                *v664 = *v696;
                *&v664[16] = *&v696[16];
                v682 = *&v700[16];
                v671 = *&v700[16];
                *&v664[32] = *&v696[32];
                *&v664[48] = *&v696[48];
                DisplayList.ViewUpdater.Model.State.clipRect()(v722);
                *&v685[48] = v668;
                v686 = v669;
                *v687 = v670;
                *&v687[16] = v671;
                *&v684[16] = v665;
                *v685 = *v666;
                *&v685[16] = *&v666[16];
                *&v685[32] = v667;
                v683 = *v664;
                *v684 = *&v664[48];
                outlined init with copy of DisplayList.ViewUpdater.Model.State(&v675, v656);
                outlined destroy of DisplayList.ViewUpdater.Model.State(&v683);
                if (v722[48] == 2 || (v660 = *&v693[32], v661 = v694, v662 = *v695, v657 = v691, *v658 = v692, *&v658[16] = *v693, v659 = *&v693[16], *v656 = v689, *&v656[48] = v690, v652 = *&v693[32], v653 = v694, v654 = *v695, v649 = v691, *v650 = v692, v663 = *&v695[16], *&v650[16] = *v693, v651 = *&v693[16], v450 = *&v722[24], v451 = *&v722[16], v647 = v689, v609 = *v722, v655 = *&v695[16], v648 = v690, DisplayList.ViewUpdater.Model.State.clipRect()(&v721), v668 = v652, v669 = v653, v670 = v654, v671 = v655, v665 = v649, *v666 = *v650, *&v666[16] = *&v650[16], v667 = v651, *v664 = v647, *&v664[48] = v648, outlined init with copy of DisplayList.ViewUpdater.Model.State(v656, &v640), outlined destroy of DisplayList.ViewUpdater.Model.State(v664), v721.value.style == SwiftUI_RoundedCornerStyle_unknownDefault))
                {
                  v447 = v126;
                  v448 = v127;
                  v449 = 0uLL;
                  v444 = 0;
                }

                else
                {
                  v129 = v721.value.rect.size.height;
                  v128 = v721.value.rect.size.width;
                  v444 = v721.value.rect.origin;
                  v449 = v609;
                  v620 = vaddq_f64(v620, v609);
                  v633 = vaddq_f64(v633, v721.value.rect.origin);
                  v447 = v451;
                  v448 = v450;
                }
              }

              else
              {
                v447 = v126;
                v448 = v127;
                v449 = 0uLL;
              }

              v514 = v444.y;
              v515 = v449.f64[1];
              v612 = v444.x;
              v746.origin = v444;
              v746.size.width = v128;
              v746.size.height = v129;
              v516 = CGRectEqualToRect(v746, *v449.f64);
              if (v516)
              {
                if ((v446 & 4) != 0)
                {
LABEL_354:
                  if (*&v695[8] == *&v700[8] && *&v725.tx == *&v723.tx)
                  {
                    goto LABEL_358;
                  }

                  v517 = 0;
LABEL_357:
                  v647.a = v596;
                  v683 = v723;
                  *v684 = *v724;
                  *&v684[12] = *&v724[12];
                  v675 = v725;
                  *v676 = *v726;
                  *&v676[12] = *&v726[12];
                  if (DisplayList.ViewUpdater.Platform.updateShadowAsync(layer:oldState:oldItem:newState:newItem:boundsChanged:)(v445, v696, &v683, &v689, &v675, v517))
                  {
                    goto LABEL_358;
                  }

LABEL_326:
                  v25 = 0;
LABEL_327:
                  v679 = *&v693[32];
                  v680 = v694;
                  v681 = *v695;
                  v682 = *&v695[16];
                  *&v676[16] = v691;
                  *v677 = v692;
                  *&v677[16] = *v693;
                  v678 = *&v693[16];
                  v675 = v689;
                  *v676 = v690;
                  outlined destroy of DisplayList.ViewUpdater.Model.State(&v675);
                  *&v685[48] = *&v698[32];
                  v686 = v699;
                  *v687 = *v700;
                  *&v687[16] = *&v700[16];
                  *&v684[16] = *&v696[64];
                  *v685 = v697;
                  *&v685[16] = *v698;
                  *&v685[32] = *&v698[16];
                  v683 = *v696;
                  *v684 = *&v696[48];
                  outlined destroy of DisplayList.ViewUpdater.Model.State(&v683);
                  return v25;
                }
              }

              else
              {
                if (*(v445 + 16) - 15 < 3)
                {
                  goto LABEL_326;
                }

                _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE6BoundsO_Tt0g5(v612, v514, v128, v129);
                if (*(v445 + 16) == 14)
                {
                  _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV12setMaskValue_3fory0K0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE6BoundsO_Tt0g5(v612, v514, v128, v129);
                }

                if ((v446 & 4) != 0)
                {
                  goto LABEL_352;
                }
              }

              if (v633.f64[0] != v620.f64[0] || v633.f64[1] != v620.f64[1])
              {
                _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE8PositionO_Tt0g5(v633.f64[0], v633.f64[1]);
              }

              *v664 = *&v696[32];
              *&v664[16] = *&v696[48];
              *&v664[40] = 0;
              *&v664[32] = 0;
              *v656 = *&v689.tx;
              *&v656[16] = v690;
              *&v656[40] = 0;
              *&v656[32] = 0;
              if (static CGAffineTransform.== infix(_:_:)())
              {
                if (v516)
                {
                  goto LABEL_354;
                }
              }

              else
              {
                _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE15AffineTransformO_Tt0g5(v656);
                if (v516)
                {
                  goto LABEL_354;
                }
              }

LABEL_352:
              v517 = 1;
              goto LABEL_357;
            }
          }

          else if (v153 == 3)
          {
            v154 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
            *v676 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
            *&v676[16] = v154;
            *v677 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
            *&v677[12] = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x6C);
            v155 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
            *&v675.a = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            *&v675.c = v155;
            *&v675.tx = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
            if (v16 >> 60 == 3)
            {
              v596 = v13;
              v156 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
              *&v664[48] = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
              v665 = v156;
              *v666 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
              *&v666[12] = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x6C);
              v157 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
              *v664 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
              *&v664[16] = v157;
              *&v664[32] = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
              v657 = *&v676[16];
              *v658 = *v677;
              *&v658[12] = *&v677[12];
              *v656 = v675;
              *&v656[48] = *v676;
              outlined init with copy of DisplayList.Item(&v723, &v683);
              outlined init with copy of DisplayList.Item(&v725, &v683);
              outlined init with copy of DisplayList.ViewUpdater.Model.State(&v702, &v683);
              outlined init with copy of DisplayList.ViewUpdater.Model.State(&v711, &v683);
              outlined init with copy of GraphicsImage(v664, &v683);
              v158 = GraphicsImage.bitmapOrientation.getter();
              *&v684[16] = v665;
              *v685 = *v666;
              *&v685[12] = *&v666[12];
              v683 = *v664;
              *v684 = *&v664[48];
              v159 = GraphicsImage.bitmapOrientation.getter();
              CGAffineTransform.apply(_:in:)(v158, v126, v127);
              CGAffineTransform.apply(_:in:)(v159, v128, v129);
              outlined destroy of GraphicsImage(v664);
              outlined destroy of (PaintType, ShapeType)(&v727, &lazy cache variable for type metadata for (DisplayList.Item.Value, DisplayList.Item.Value), &type metadata for DisplayList.Item.Value, &type metadata for DisplayList.Item.Value, type metadata accessor for (Path, FillStyle));
              if (v158 > 3u)
              {
                v160 = v126;
              }

              else
              {
                v160 = v127;
                v127 = v126;
              }

              v126 = v127;
              *&v639 = v127;
              *(&v639 + 1) = v160;
              outlined consume of DisplayList.Content.Value(v14);
              outlined consume of DisplayList.Content.Value(v16);
              if ((0xFu >> v159))
              {
                v425 = v129;
              }

              else
              {
                v425 = v128;
              }

              if (((0xFu >> v159) & 1) == 0)
              {
                v128 = v129;
              }

              *&v638 = v128;
              *(&v638 + 1) = v425;
              v129 = v425;
              v127 = v160;
              goto LABEL_257;
            }
          }

          goto LABEL_161;
        }
      }

      else
      {
        v21 = a4;
        v20 = *&a6;
      }

LABEL_34:
      outlined init with copy of DisplayList.Item(&v723, &v711);
      outlined init with copy of DisplayList.Item(&v725, &v711);
      goto LABEL_35;
    }

LABEL_18:
    outlined init with copy of DisplayList.Item(&v723, &v711);
    outlined init with copy of DisplayList.Item(&v725, &v711);
    outlined destroy of (PaintType, ShapeType)(&v727, &lazy cache variable for type metadata for (DisplayList.Item.Value, DisplayList.Item.Value), &type metadata for DisplayList.Item.Value, &type metadata for DisplayList.Item.Value, type metadata accessor for (Path, FillStyle));
    return 0;
  }

  if (v18)
  {
    goto LABEL_18;
  }

  if (*v724 == *v726)
  {
    v21 = a4;
    v20 = *&a6;
    v636 = a1;
    goto LABEL_34;
  }

  v27 = *(a4 + 9);
  v28 = *(a4 + 7);
  v707 = *(a4 + 8);
  v708 = v27;
  v29 = *(a4 + 9);
  v709 = *(a4 + 10);
  v30 = *(a4 + 5);
  v31 = *(a4 + 3);
  *&v703[16] = *(a4 + 4);
  v704 = v30;
  v32 = *(a4 + 5);
  v33 = *(a4 + 7);
  v705 = *(a4 + 6);
  v706 = v33;
  v34 = *(a4 + 1);
  *&v702.a = *a4;
  *&v702.c = v34;
  v35 = *(a4 + 3);
  v37 = *a4;
  v36 = *(a4 + 1);
  *&v702.tx = *(a4 + 2);
  *v703 = v35;
  *&v698[32] = v707;
  v699 = v29;
  *v700 = *(a4 + 10);
  *&v696[64] = *&v703[16];
  v697 = v32;
  *v698 = v705;
  *&v698[16] = v28;
  *v696 = v37;
  *&v696[16] = v36;
  *&v696[32] = *&v702.tx;
  *&v696[48] = v31;
  v38 = a6[9];
  v39 = a6[7];
  v716 = a6[8];
  v717 = v38;
  v40 = a6[9];
  v718 = a6[10];
  v41 = a6[5];
  v42 = a6[3];
  *&v712[16] = a6[4];
  v713 = v41;
  v43 = a6[5];
  v44 = a6[7];
  v714 = a6[6];
  v715 = v44;
  v45 = a6[1];
  *&v711.a = *a6;
  *&v711.c = v45;
  v46 = a6[3];
  v48 = *a6;
  v47 = a6[1];
  *&v711.tx = a6[2];
  *v712 = v46;
  *&v693[32] = v716;
  v694 = v40;
  *v695 = a6[10];
  v710 = *(a4 + 22);
  v49 = *(&v707 + 1);
  v50 = *(&v708 + 1);
  v51 = v708;
  v52 = v709;
  v53 = *(&v704 + 1);
  v691 = *&v712[16];
  v692 = v43;
  v54 = *&v702.b;
  v55 = DWORD2(v705);
  *&v700[16] = *(a4 + 22);
  v719 = *(a6 + 22);
  a = v711.a;
  v57 = v715;
  v58 = *(&v716 + 1);
  v59 = v717;
  v60 = v718;
  *v693 = v714;
  *&v693[16] = v39;
  v61 = *&v711.b;
  v62 = DWORD2(v714);
  *&v695[16] = *(a6 + 22);
  *&v689.a = v48;
  *&v689.c = v47;
  *&v689.tx = *&v711.tx;
  v690 = v42;
  v63 = v723.d;
  v64 = v723.c;
  v65 = v725.d;
  v66 = v725.c;
  v67 = *&v723.ty >> 60;
  *(a1 + 32) = 0;
  if ((v14 >> 60) <= 4)
  {
    switch(v67)
    {
      case 1:
        v701.value.rect.origin = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        LODWORD(v701.value.rect.size.width) = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        if (v16 >> 60 == 1)
        {
          v249 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x25);
          v250 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x24);
          *v722 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          *&v722[16] = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          if (v250 == *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x24) && v249 == *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x25))
          {
            v614 = v62;
            v604 = v60;
            v578 = *(&v41 + 1);
            v584 = *(&v59 + 1);
            v580 = v59;
            v591 = v53;
            v595 = v13;
            v588 = v50;
            outlined init with copy of DisplayList.Item(&v723, &v683);
            outlined init with copy of DisplayList.Item(&v725, &v683);
            outlined init with copy of DisplayList.Item(&v723, &v683);
            outlined init with copy of DisplayList.Item(&v725, &v683);
            outlined init with copy of DisplayList.Item(&v723, &v683);
            outlined init with copy of DisplayList.Item(&v725, &v683);
            outlined init with copy of DisplayList.ViewUpdater.Model.State(&v702, &v683);
            outlined init with copy of DisplayList.ViewUpdater.Model.State(&v711, &v683);
            v637 = a1;
            _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV6update_4from2toyxm_5ValueQzALtAA01_cd1_ef1_gH8PropertyRzSQALRQlFAE15BackgroundColorO_Ttg5(&v701, v722);
            goto LABEL_126;
          }
        }

LABEL_160:
        outlined init with copy of DisplayList.Item(&v723, &v683);
        outlined init with copy of DisplayList.Item(&v725, &v683);
LABEL_161:
        outlined init with copy of DisplayList.Item(&v723, &v683);
        outlined init with copy of DisplayList.Item(&v725, &v683);
        outlined init with copy of DisplayList.ViewUpdater.Model.State(&v702, &v683);
        outlined init with copy of DisplayList.ViewUpdater.Model.State(&v711, &v683);
LABEL_162:
        outlined destroy of (PaintType, ShapeType)(&v727, &lazy cache variable for type metadata for (DisplayList.Item.Value, DisplayList.Item.Value), &type metadata for DisplayList.Item.Value, &type metadata for DisplayList.Item.Value, type metadata accessor for (Path, FillStyle));
LABEL_163:
        outlined consume of DisplayList.Content.Value(v14);
        outlined consume of DisplayList.Content.Value(v16);
        goto LABEL_164;
      case 3:
        v297 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
        *&v664[48] = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
        v665 = v297;
        *v666 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
        *&v666[12] = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x6C);
        v298 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        *v664 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        *&v664[16] = v298;
        *&v664[32] = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        if (v16 >> 60 != 3)
        {
          goto LABEL_160;
        }

        v614 = v62;
        v578 = *(&v41 + 1);
        v584 = *(&v59 + 1);
        v580 = v59;
        v591 = v53;
        v595 = v13;
        v588 = v50;
        v299 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
        *&v656[48] = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
        v657 = v299;
        *v658 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
        *&v658[12] = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x6C);
        v300 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        *v656 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        *&v656[16] = v300;
        *&v656[32] = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        *&v676[16] = v665;
        *v677 = *v666;
        *&v677[12] = *&v666[12];
        v675 = *v664;
        *v676 = *&v664[48];
        v301 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
        v648 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
        v649 = v301;
        *v650 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
        *&v650[12] = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x6C);
        v302 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        *&v647.a = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        *&v647.c = v302;
        *&v647.tx = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        outlined init with copy of DisplayList.Item(&v723, &v683);
        outlined init with copy of DisplayList.Item(&v725, &v683);
        outlined init with copy of DisplayList.Item(&v723, &v683);
        outlined init with copy of DisplayList.Item(&v725, &v683);
        outlined init with copy of DisplayList.Item(&v723, &v683);
        outlined init with copy of DisplayList.Item(&v725, &v683);
        outlined init with copy of DisplayList.ViewUpdater.Model.State(&v702, &v683);
        outlined init with copy of DisplayList.ViewUpdater.Model.State(&v711, &v683);
        outlined init with copy of GraphicsImage(v656, &v683);
        v637 = a1;
        if ((specialized static ImageLayer.updateAsync(layer:oldImage:oldSize:newImage:newSize:)(v64, v63, v66, v65, a1, &v675, &v647) & 1) == 0)
        {
          outlined destroy of GraphicsImage(v656);
          goto LABEL_201;
        }

        v604 = v60;
        rectb = v58;
        *&v684[16] = v665;
        *v685 = *v666;
        *&v685[12] = *&v666[12];
        v683 = *v664;
        *v684 = *&v664[48];
        v304 = GraphicsImage.bitmapOrientation.getter();
        *&v684[16] = v657;
        *v685 = *v658;
        *&v685[12] = *&v658[12];
        v683 = *v656;
        *v684 = *&v656[48];
        v305 = GraphicsImage.bitmapOrientation.getter();
        CGAffineTransform.apply(_:in:)(v304, v64, v63);
        CGAffineTransform.apply(_:in:)(v305, v66, v65);
        outlined destroy of GraphicsImage(v656);
        if (v304 > 3u)
        {
          v58 = rectb;
          v306 = v64;
        }

        else
        {
          v306 = v63;
          v63 = v64;
          v58 = rectb;
        }

        v64 = v63;
        outlined consume of DisplayList.Content.Value(v14);
        outlined consume of DisplayList.Content.Value(v16);
        if ((0xFu >> v305))
        {
          v452 = v65;
        }

        else
        {
          v452 = v66;
        }

        if (((0xFu >> v305) & 1) == 0)
        {
          v66 = v65;
        }

        v65 = v452;
        v63 = v306;
        break;
      case 4:
        v130 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v131 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v132 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v722[32] = v132;
        *&v722[16] = v131;
        *v722 = v130;
        if (v16 >> 60 != 4)
        {
          goto LABEL_160;
        }

        v560 = a;
        v133 = v63;
        v579 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v581 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v134 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
        v616 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
        v585 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x41);
        v135 = v702.a;
        v136 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v137 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v548 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        LOBYTE(v701.value.cornerSize.width) = v548;
        v701.value.rect.size = v137;
        v701.value.rect.origin = v136;
        v539 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v546 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v605 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
        v553 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
        v550 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x41);
        v637 = a1;
        v138 = *a1;
        ObjectType = swift_getObjectType();
        v140 = *(*&v702.a + 24);
        v595 = v13;
        if (ObjectType == type metadata accessor for ColorShapeLayer())
        {
          outlined init with copy of DisplayList.Item(&v723, &v683);
          outlined init with copy of DisplayList.Item(&v725, &v683);
          outlined init with copy of DisplayList.Item(&v723, &v683);
          outlined init with copy of DisplayList.Item(&v725, &v683);
          outlined init with copy of DisplayList.Item(&v723, &v683);
          outlined init with copy of DisplayList.Item(&v725, &v683);
          outlined init with copy of DisplayList.ViewUpdater.Model.State(&v702, &v683);
          outlined init with copy of DisplayList.ViewUpdater.Model.State(&v711, &v683);
          v626.f64[0] = 0.0;
          tya = 0.0;
          v525 = v65;
          v527 = v66;
          rect.f64[0] = 0.0;
          v532 = v64;
          v148 = 0.0;
          v393 = v133;
          b = v133;
          v394 = v66;
          v395 = v65;
        }

        else
        {
          v533 = v64;
          v536 = v65;
          v141 = v66;
          outlined init with copy of DisplayList.Item(&v723, &v683);
          outlined init with copy of DisplayList.Item(&v725, &v683);
          outlined init with copy of DisplayList.Item(&v723, &v683);
          outlined init with copy of DisplayList.Item(&v725, &v683);
          outlined init with copy of DisplayList.Item(&v723, &v683);
          outlined init with copy of DisplayList.Item(&v725, &v683);
          outlined init with copy of DisplayList.ViewUpdater.Model.State(&v702, &v683);
          outlined init with copy of DisplayList.ViewUpdater.Model.State(&v711, &v683);
          Path.boundingRect.getter();
          v142 = v734.origin.x;
          v143 = v734.origin.y;
          v144 = v734.size.width;
          v145 = v734.size.height;
          IsNull = CGRectIsNull(v734);
          if (IsNull)
          {
            v147 = 0.0;
          }

          else
          {
            v147 = v142;
          }

          rect.f64[0] = v147;
          if (IsNull)
          {
            v148 = 0.0;
          }

          else
          {
            v148 = v143;
          }

          if (IsNull)
          {
            v149 = 0.0;
          }

          else
          {
            v149 = v144;
          }

          v626.f64[0] = 0.0;
          if (IsNull)
          {
            v150 = 0.0;
          }

          else
          {
            v150 = v145;
          }

          v151 = type metadata accessor for PaintShapeLayer();
          if (ObjectType == v151)
          {
            v152.n128_f64[0] = 1.0 / v140;
            v600 = v152;
            v741.origin.x = rect.f64[0];
            v741.origin.y = v148;
            v741.size.width = v149;
            v741.size.height = v150;
            v742 = CGRectStandardize(v741);
            v418.f64[0] = v742.origin.x;
            v418.f64[1] = v742.origin.y;
            v419 = v600.n128_f64[0] * 0.5;
            v422.f64[0] = v600.n128_f64[0] * 0.5 + v742.origin.x;
            v420 = v742.size.height;
            v421 = vaddq_f64(v418, v742.size);
            v422.f64[1] = v600.n128_f64[0] * 0.5 + v742.origin.y;
            if (v600.n128_f64[0] == 1.0)
            {
              v423 = vrndmq_f64(v422);
              v424 = vrndmq_f64(vaddq_f64(vdupq_lane_s64(*&v419, 0), v421));
            }

            else
            {
              v453 = vdupq_lane_s64(v600.n128_i64[0], 0);
              v423 = vmulq_n_f64(vrndmq_f64(vdivq_f64(v422, v453)), v600.n128_f64[0]);
              v424 = vmulq_n_f64(vrndmq_f64(vdivq_f64(vaddq_f64(vdupq_lane_s64(*&v419, 0), v421), v453)), v600.n128_f64[0]);
            }

            rect = v423;
            *&v683.a = vsubq_f64(v424, v423);
            CGSize.round(toMultipleOf:)(v600);
            b = v683.b;
            v532 = v683.a;
            v148 = rect.f64[1];
          }

          else
          {
            b = v150;
            v532 = v149;
          }

          v454 = *(*&v560 + 24);
          Path.boundingRect.getter();
          v455 = v743.origin.x;
          v456 = v743.origin.y;
          v457 = v743.size.width;
          v458 = v743.size.height;
          v459 = CGRectIsNull(v743);
          v461 = 0.0;
          v462 = 0.0;
          v463 = 0.0;
          if (!v459)
          {
            v626.f64[0] = v455;
            v461 = v456;
            v462 = v457;
            v463 = v458;
          }

          if (ObjectType == v151)
          {
            v460.n128_f64[0] = 1.0 / v454;
            v601 = v460;
            v464 = v626.f64[0];
            v744 = CGRectStandardize(*(&v461 - 1));
            v465.f64[0] = v744.origin.x;
            v465.f64[1] = v744.origin.y;
            v466 = v601.n128_f64[0] * 0.5;
            v469.f64[0] = v601.n128_f64[0] * 0.5 + v744.origin.x;
            v467 = v744.size.height;
            v468 = vaddq_f64(v465, v744.size);
            v469.f64[1] = v601.n128_f64[0] * 0.5 + v744.origin.y;
            if (v601.n128_f64[0] == 1.0)
            {
              v470 = vrndmq_f64(v469);
              v471 = vrndmq_f64(vaddq_f64(vdupq_lane_s64(*&v466, 0), v468));
            }

            else
            {
              v472 = vdupq_lane_s64(v601.n128_i64[0], 0);
              v470 = vmulq_n_f64(vrndmq_f64(vdivq_f64(v469, v472)), v601.n128_f64[0]);
              v471 = vmulq_n_f64(vrndmq_f64(vdivq_f64(vaddq_f64(vdupq_lane_s64(*&v466, 0), v468), v472)), v601.n128_f64[0]);
            }

            v393 = v133;
            v626 = v470;
            *&v683.a = vsubq_f64(v471, v470);
            CGSize.round(toMultipleOf:)(v601);
            v463 = v683.b;
            v462 = v683.a;
            v461 = v626.f64[1];
          }

          else
          {
            v393 = v133;
          }

          tya = v461;
          v525 = v463;
          v527 = v462;
          v394 = v141;
          v64 = v533;
          v395 = v536;
        }

        v473 = *(*&v135 + 24);
        v683 = *v696;
        *&v685[28] = *&v698[12];
        *&v685[40] = *&v698[24];
        *&v687[8] = *&v700[8];
        v544 = *&v696[8];
        v535 = *&v696[40];
        v538 = *&v696[32];
        v523 = *&v696[56];
        v524 = *&v696[48];
        *v684 = *&v696[48];
        v521 = *&v696[72];
        v522 = *&v696[64];
        *&v684[16] = *&v696[64];
        *v685 = v697;
        v591 = *(&v697 + 1);
        *&v685[16] = *v698;
        v602 = *&v698[8];
        *&v685[24] = *&v698[8];
        v566 = *&v698[40];
        v570 = v699;
        *&v685[56] = *&v698[40];
        v686 = v699;
        v588 = *(&v699 + 1);
        rect_24a = *v700;
        *v687 = *v700;
        *v664 = v138;
        *&v664[8] = ObjectType;
        *&v664[32] = v579;
        *&v664[16] = v581;
        v664[48] = v132;
        *&v664[56] = rect.f64[0];
        v665.f64[0] = v148;
        v665.f64[1] = v134;
        *v666 = -rect.f64[0];
        *&v666[8] = -v148;
        *&v666[16] = v64;
        *&v666[24] = v393;
        LOBYTE(v667) = v616;
        BYTE1(v667) = v585;
        *(&v667 + 1) = v473;
        LOBYTE(v668) = (DisplayList.ViewUpdater.Model.State.hasDODEffects.getter() & 1) == 0;
        v474 = *(*&v560 + 24);
        v683 = v689;
        v475 = v691.f64[1];
        *&v685[28] = *&v693[12];
        *&v685[40] = *&v693[24];
        v58 = *&v693[40];
        v476 = *v695;
        *&v687[8] = *&v695[8];
        v542 = *&v689.b;
        v477 = *&v689.tx;
        v519 = *(&v690 + 1);
        v520 = *&v690;
        *v684 = v690;
        v518 = v691.f64[0];
        *&v684[16] = v691;
        *v685 = v692;
        v578 = *(&v692 + 1);
        *&v685[16] = *v693;
        v614 = *&v693[8];
        *&v685[24] = *&v693[8];
        *&v685[56] = *&v693[40];
        v580 = v694;
        v686 = v694;
        v584 = *(&v694 + 1);
        *v687 = *v695;
        *v656 = v138;
        *&v656[8] = ObjectType;
        *&v656[16] = v546;
        *&v656[32] = v539;
        v656[48] = v548;
        *&v656[56] = v626.f64[0];
        v657.f64[0] = tya;
        v657.f64[1] = v605;
        *v658 = -v626.f64[0];
        *&v658[8] = -tya;
        *&v658[16] = v394;
        *&v658[24] = v395;
        LOBYTE(v659) = v553;
        BYTE1(v659) = v550;
        *(&v659 + 1) = v474;
        LOBYTE(v660) = (DisplayList.ViewUpdater.Model.State.hasDODEffects.getter() & 1) == 0;
        v478 = v138;
        outlined init with copy of Path(v722, &v683);

        outlined init with copy of Path(&v701, &v683);

        if ((specialized static ShapeLayerHelper.updateAsync(layer:old:new:)(v637, v664, v656) & 1) == 0)
        {
          outlined destroy of (PaintType, ShapeType)(&v727, &lazy cache variable for type metadata for (DisplayList.Item.Value, DisplayList.Item.Value), &type metadata for DisplayList.Item.Value, &type metadata for DisplayList.Item.Value, type metadata accessor for (Path, FillStyle));
          outlined destroy of DisplayList.Item(&v725);
          outlined destroy of DisplayList.Item(&v723);
          v644 = *&v658[16];
          v645 = v659;
          v646 = v660;
          v640 = *v656;
          v641 = *&v656[48];
          v642 = v657;
          v643 = *v658;
          outlined destroy of ShapeLayerHelper(&v640);
          *&v650[16] = *&v666[16];
          v651 = v667;
          LOBYTE(v652) = v668;
          v647 = *v664;
          v648 = *&v664[48];
          v649 = v665;
          *v650 = *v666;
          outlined destroy of ShapeLayerHelper(&v647);
          goto LABEL_163;
        }

        v604 = v476;
        *&v677[16] = *&v658[16];
        v678 = v659;
        LOBYTE(v679) = v660;
        v675 = *v656;
        *v676 = *&v656[48];
        *v677 = *v658;
        *&v676[16] = v657;
        outlined destroy of ShapeLayerHelper(&v675);
        *&v685[16] = *&v666[16];
        *&v685[32] = v667;
        v685[48] = v668;
        v683 = *v664;
        *v684 = *&v664[48];
        *v685 = *v666;
        *&v684[16] = v665;
        outlined destroy of ShapeLayerHelper(&v683);
        v647.a = v538;
        v647.b = v535;
        v647.c = v524;
        v647.d = v523;
        v647.tx = v522;
        v647.ty = v521;
        CGAffineTransformTranslate(&v640, &v647, rect.f64[0], v148);
        *&v696[32] = v640;
        *&v647.a = v477;
        v647.c = v520;
        v647.d = v519;
        v647.tx = v518;
        v647.ty = v475;
        CGAffineTransformTranslate(&v640, &v647, v626.f64[0], tya);
        v479 = v640.tx;
        v480 = v640.ty;
        v634 = *&v640.a;
        rectd = *&v640.c;
        outlined consume of DisplayList.Content.Value(v14);
        outlined consume of DisplayList.Content.Value(v16);
        v690 = rectd;
        *&v689.tx = v634;
        v65 = v525;
        v66 = v527;
        v63 = b;
        v64 = v532;
        v691.f64[0] = v479;
        v691.f64[1] = v480;
        v49 = v566;
        v51 = v570;
        v61 = v542;
        v54 = v544;
        v52 = rect_24a;
        v55 = v602;
        break;
      default:
        goto LABEL_160;
    }

LABEL_293:
    if (v614 != v55)
    {
      goto LABEL_325;
    }

    if (v61 != v54)
    {
      _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE7OpacityO_Tt0g5(v61);
    }

    v481 = v637;
    if (v58 != v49)
    {
      goto LABEL_325;
    }

    if (v604 != v52)
    {
      v482 = *&v591;
      v683.a = v591;
      v675.a = v578;
      if (*(v637 + 16) == 9)
      {

        v483 = specialized Array<A>.popColorMultiply(drawable:)(&v683, v637);
        v485 = v484;
        v487 = v486;

        v488 = specialized Array<A>.popColorMultiply(drawable:)(&v675, v637);
        v490 = v489;
        v492 = v491;

        v482 = *&v591;
        if ((v492 & 0x100000000) == 0 || (v487 & 0x100000000) == 0)
        {
          _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV6update_4from2toyxm_5ValueQzALtAA01_cd1_ef1_gH8PropertyRzSQALRQlFAE21ContentsMultiplyColorO_Ttg5(v483, v485, v487 | ((HIDWORD(v487) & 1) << 32), v488, v490, v492 | ((HIDWORD(v492) & 1) << 32));
          v482 = *&v591;
        }
      }

      v493 = v482;

      specialized static GraphicsFilter.updateAsync(layer:oldFilters:newFilters:)(v637, v493, *&v578);
      v495 = v494;

      if ((v495 & 1) == 0)
      {
        goto LABEL_325;
      }

      v481 = v637;
    }

    if (v584 == v588 && v580 == v51 || (v683.a = v595, v496 = v481, v497 = DisplayList.ViewUpdater.Platform.updateClipShapesAsync(layer:oldState:newState:)(v481, v696, &v689), v481 = v496, (v497 & 1) != 0))
    {
      v621 = *&v696[64];
      v635 = v691;
      v498 = 0;
      v499 = v481;
      v500 = *(v481 + 17);
      if ((v500 & 8) != 0)
      {
        v679 = *&v698[32];
        v680 = v699;
        v681 = *v700;
        *&v676[16] = *&v696[64];
        *v677 = v697;
        *&v677[16] = *v698;
        v678 = *&v698[16];
        v675 = *v696;
        *v676 = *&v696[48];
        v668 = *&v698[32];
        v669 = v699;
        v670 = *v700;
        v665 = *&v696[64];
        *v666 = v697;
        *&v666[16] = *v698;
        v667 = *&v698[16];
        *v664 = *v696;
        *&v664[16] = *&v696[16];
        v682 = *&v700[16];
        v671 = *&v700[16];
        *&v664[32] = *&v696[32];
        *&v664[48] = *&v696[48];
        DisplayList.ViewUpdater.Model.State.clipRect()(&v721);
        *&v685[48] = v668;
        v686 = v669;
        *v687 = v670;
        *&v687[16] = v671;
        *&v684[16] = v665;
        *v685 = *v666;
        *&v685[16] = *&v666[16];
        *&v685[32] = v667;
        v683 = *v664;
        *v684 = *&v664[48];
        outlined init with copy of DisplayList.ViewUpdater.Model.State(&v675, v656);
        outlined destroy of DisplayList.ViewUpdater.Model.State(&v683);
        if (v721.value.style == SwiftUI_RoundedCornerStyle_unknownDefault || (v660 = *&v693[32], v661 = v694, v662 = *v695, v657 = v691, *v658 = v692, *&v658[16] = *v693, v659 = *&v693[16], *v656 = v689, *&v656[48] = v690, v652 = *&v693[32], v653 = v694, v654 = *v695, v649 = v691, *v650 = v692, v663 = *&v695[16], *&v650[16] = *v693, v651 = *&v693[16], v504 = v721.value.rect.size.height, v505 = v721.value.rect.size.width, v647 = v689, v610 = v721.value.rect.origin, v655 = *&v695[16], v648 = v690, DisplayList.ViewUpdater.Model.State.clipRect()(&v720), v668 = v652, v669 = v653, v670 = v654, v671 = v655, v665 = v649, *v666 = *v650, *&v666[16] = *&v650[16], v667 = v651, *v664 = v647, *&v664[48] = v648, outlined init with copy of DisplayList.ViewUpdater.Model.State(v656, &v640), outlined destroy of DisplayList.ViewUpdater.Model.State(v664), v720.value.style == SwiftUI_RoundedCornerStyle_unknownDefault))
        {
          v501 = v64;
          v502 = v63;
          v503 = 0;
          v498 = 0;
        }

        else
        {
          v65 = v720.value.rect.size.height;
          v66 = v720.value.rect.size.width;
          v498 = v720.value.rect.origin;
          v503 = v610;
          v621 = vaddq_f64(v621, v610);
          v635 = vaddq_f64(v635, v720.value.rect.origin);
          v501 = v505;
          v502 = v504;
        }
      }

      else
      {
        v501 = v64;
        v502 = v63;
        v503 = 0;
      }

      v506 = v498.y;
      v507 = v503.y;
      v611 = v498.x;
      v745.origin.x = v498.x;
      v745.origin.y = v498.y;
      v745.size.width = v66;
      v745.size.height = v65;
      v508 = CGRectEqualToRect(v745, *&v503.x);
      if (v508)
      {
        v509 = v499;
        v510 = v595;
        if ((v500 & 4) != 0)
        {
          goto LABEL_329;
        }

        goto LABEL_316;
      }

      v511 = *(v499 + 16);
      if (v511 != 15 && v511 != 16 && v511 != 17)
      {
        _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE6BoundsO_Tt0g5(v611, v506, v66, v65);
        v509 = v499;
        if (*(v499 + 16) == 14)
        {
          _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV12setMaskValue_3fory0K0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE6BoundsO_Tt0g5(v611, v506, v66, v65);
          v509 = v499;
        }

        v510 = v595;
        if ((v500 & 4) != 0)
        {
          goto LABEL_336;
        }

LABEL_316:
        if (v635.f64[0] != v621.f64[0] || v635.f64[1] != v621.f64[1])
        {
          _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE8PositionO_Tt0g5(v635.f64[0], v635.f64[1]);
        }

        *v664 = *&v696[32];
        *&v664[16] = *&v696[48];
        *&v664[40] = 0;
        *&v664[32] = 0;
        *v656 = *&v689.tx;
        *&v656[16] = v690;
        *&v656[40] = 0;
        *&v656[32] = 0;
        if (static CGAffineTransform.== infix(_:_:)())
        {
          v509 = v499;
          if (!v508)
          {
            goto LABEL_336;
          }
        }

        else
        {
          _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE15AffineTransformO_Tt0g5(v656);
          v509 = v499;
          if (!v508)
          {
LABEL_336:
            v512 = 1;
LABEL_337:
            v647.a = v510;
            v683 = v723;
            *v684 = *v724;
            *&v684[12] = *&v724[12];
            v675 = v725;
            *v676 = *v726;
            *&v676[12] = *&v726[12];
            v513 = DisplayList.ViewUpdater.Platform.updateShadowAsync(layer:oldState:oldItem:newState:newItem:boundsChanged:)(v509, v696, &v683, &v689, &v675, v512);
            outlined destroy of (PaintType, ShapeType)(&v727, &lazy cache variable for type metadata for (DisplayList.Item.Value, DisplayList.Item.Value), &type metadata for DisplayList.Item.Value, &type metadata for DisplayList.Item.Value, type metadata accessor for (Path, FillStyle));
            outlined destroy of DisplayList.Item(&v725);
            outlined destroy of DisplayList.Item(&v723);
            if (v513)
            {
              goto LABEL_358;
            }

            goto LABEL_326;
          }
        }

LABEL_329:
        if (*&v695[8] == *&v700[8] && *&v725.tx == *&v723.tx)
        {
          outlined destroy of (PaintType, ShapeType)(&v727, &lazy cache variable for type metadata for (DisplayList.Item.Value, DisplayList.Item.Value), &type metadata for DisplayList.Item.Value, &type metadata for DisplayList.Item.Value, type metadata accessor for (Path, FillStyle));
          outlined destroy of DisplayList.Item(&v725);
          outlined destroy of DisplayList.Item(&v723);
LABEL_358:
          v25 = 1;
          goto LABEL_327;
        }

        v512 = 0;
        goto LABEL_337;
      }
    }

LABEL_325:
    outlined destroy of (PaintType, ShapeType)(&v727, &lazy cache variable for type metadata for (DisplayList.Item.Value, DisplayList.Item.Value), &type metadata for DisplayList.Item.Value, &type metadata for DisplayList.Item.Value, type metadata accessor for (Path, FillStyle));
    outlined destroy of DisplayList.Item(&v725);
    outlined destroy of DisplayList.Item(&v723);
    goto LABEL_326;
  }

  if (v67 > 10)
  {
    if (v67 == 11)
    {
      if (v16 >> 60 != 11)
      {
        goto LABEL_160;
      }

      v614 = v62;
      v604 = v60;
      v569 = v51;
      recta = v58;
      v599 = v55;
      rect_24 = v52;
      v578 = *(&v41 + 1);
      v565 = v49;
      v584 = *(&v59 + 1);
      v580 = v59;
      v591 = v53;
      v595 = v13;
      v588 = v50;
      v278 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x3C);
      v279 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
      v280 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x34);
      v281 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v282 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v283 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v284 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
      v285 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v286 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x34);
      v287 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
      v288 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x3C);
      v289 = *(*&a + 8);
      v647.a = v13;
      *v664 = v281;
      *&v664[4] = v280;
      *&v664[8] = v279;
      v664[12] = v278;
      *v656 = v285;
      *&v656[4] = v286;
      *&v656[8] = v287;
      v656[12] = v288;
      v675.a = v282;
      *&v675.b = v283 | (v284 << 32);
      *&v675.c = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v675.tx = v289;
      v290 = v65 != v63 || v66 != v64;
      LOBYTE(v675.ty) = 2;
      outlined init with copy of DisplayList.Item(&v723, &v683);
      outlined init with copy of DisplayList.Item(&v725, &v683);
      outlined init with copy of DisplayList.Item(&v723, &v683);
      outlined init with copy of DisplayList.Item(&v725, &v683);
      outlined init with copy of DisplayList.Item(&v723, &v683);
      outlined init with copy of DisplayList.Item(&v725, &v683);
      outlined init with copy of DisplayList.ViewUpdater.Model.State(&v702, &v683);
      outlined init with copy of DisplayList.ViewUpdater.Model.State(&v711, &v683);

      v637 = a1;
      v293 = DisplayList.ViewUpdater.Platform.updateDrawingViewAsync(_:oldOptions:newOptions:content:sizeChanged:newSize:newState:)(a1, v664, v656, &v675, v290, a6, v66, v65);
      outlined consume of PlatformDrawableContent.Storage(*&v675.a, *&v675.b, *&v675.c, *&v675.d, *&v675.tx, LOBYTE(v675.ty));
      if (v293)
      {
        v295 = *(a1 + 24);
        v683.a = v282;
        LOWORD(v683.b) = v283;
        HIDWORD(v683.b) = v284;
        *v664 = v289;
        DisplayList.nextUpdate(after:)(v294);
        outlined consume of DisplayList.Content.Value(v14);
        outlined consume of DisplayList.Content.Value(v16);
        v296 = v675.a;
        if (v675.a >= v295)
        {
          v296 = v295;
        }

        *(a1 + 24) = v296;
        v49 = v565;
        v51 = v569;
        goto LABEL_198;
      }
    }

    else
    {
      if (v67 != 12 || v16 >> 60 != 12)
      {
        goto LABEL_160;
      }

      v614 = v62;
      v604 = v60;
      recta = v58;
      v599 = v55;
      v578 = *(&v41 + 1);
      v584 = *(&v59 + 1);
      v580 = v59;
      v591 = v53;
      v588 = v50;
      v199 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x34);
      v200 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v201 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x2C);
      v202 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
      v203 = v13;
      v204 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v205 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
      v206 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x2C);
      v207 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v208 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x34);
      v595 = v203;
      v647.a = v203;
      *v664 = v202;
      *&v664[4] = v201;
      *&v664[8] = v200;
      v664[12] = v199;
      *v656 = v205;
      *&v656[4] = v206;
      *&v656[8] = v207;
      v656[12] = v208;
      *&v675.b = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v675.tx = 0.0;
      v675.a = v204;
      v675.d = 0.0;
      v209 = v65 != v63 || v66 != v64;
      LOBYTE(v675.ty) = 3;
      outlined init with copy of DisplayList.Item(&v723, &v683);
      outlined init with copy of DisplayList.Item(&v725, &v683);
      outlined init with copy of DisplayList.Item(&v723, &v683);
      outlined init with copy of DisplayList.Item(&v725, &v683);
      outlined init with copy of DisplayList.Item(&v723, &v683);
      outlined init with copy of DisplayList.Item(&v725, &v683);
      outlined init with copy of DisplayList.ViewUpdater.Model.State(&v702, &v683);
      outlined init with copy of DisplayList.ViewUpdater.Model.State(&v711, &v683);
      swift_unknownObjectRetain();
      v637 = a1;
      v212 = DisplayList.ViewUpdater.Platform.updateDrawingViewAsync(_:oldOptions:newOptions:content:sizeChanged:newSize:newState:)(a1, v664, v656, &v675, v209, a6, v66, v65);
      outlined consume of PlatformDrawableContent.Storage(*&v675.a, *&v675.b, *&v675.c, *&v675.d, *&v675.tx, LOBYTE(v675.ty));
      if (v212)
      {
        outlined consume of DisplayList.Content.Value(v14);
        outlined consume of DisplayList.Content.Value(v16);
LABEL_199:
        v55 = v599;
        v58 = recta;
        goto LABEL_293;
      }
    }

LABEL_201:
    outlined destroy of DisplayList.Item(&v725);
    outlined destroy of DisplayList.Item(&v723);
    goto LABEL_162;
  }

  if (v67 != 5)
  {
    if (v67 == 6 && v16 >> 60 == 6)
    {
      v614 = v62;
      v604 = v60;
      v578 = *(&v41 + 1);
      v584 = *(&v59 + 1);
      v580 = v59;
      v591 = v53;
      v595 = v13;
      v588 = v50;
      v559 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v567 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      rectc = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
      v623 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v68 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
      v637 = a1;
      v69 = a;
      v545 = v57;
      type metadata accessor for SDFLayer();
      swift_dynamicCastClassUnconditional();
      v675.a = v559;
      LOWORD(v675.b) = v567;
      HIDWORD(v675.b) = rectc;
      *v656 = v68;
      *v664 = *(*&v69 + 24);
      outlined init with copy of DisplayList.Item(&v723, &v683);
      outlined init with copy of DisplayList.Item(&v725, &v683);
      outlined init with copy of DisplayList.Item(&v723, &v683);
      outlined init with copy of DisplayList.Item(&v725, &v683);
      outlined init with copy of DisplayList.Item(&v723, &v683);
      outlined init with copy of DisplayList.Item(&v725, &v683);
      outlined init with copy of DisplayList.ViewUpdater.Model.State(&v702, &v683);
      outlined init with copy of DisplayList.ViewUpdater.Model.State(&v711, &v683);
      outlined copy of BackdropGroupID?(v545);
      SDFLayer.update(list:size:style:options:in:backdropGroupID:)(&v675, v623, v66, v65, v656, v664, v545);
      outlined consume of BackdropGroupID?(v545);
LABEL_126:
      outlined consume of DisplayList.Content.Value(v14);
      outlined consume of DisplayList.Content.Value(v16);
      goto LABEL_293;
    }

    goto LABEL_160;
  }

  if (v16 >> 60 != 5)
  {
    goto LABEL_160;
  }

  v547 = v57;
  v561 = a;
  v614 = v62;
  v568 = v51;
  recta = v58;
  v541 = v61;
  v543 = v54;
  v578 = *(&v41 + 1);
  v584 = *(&v59 + 1);
  v580 = v59;
  v591 = v53;
  v588 = v50;
  v534 = v64;
  v537 = v65;
  v637 = a1;
  v526 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
  v529 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v252 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v253 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
  *&v675.tx = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
  *v676 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
  *&v675.c = v253;
  *&v675.a = v252;
  v254 = v253;
  v255 = *MEMORY[0x1E695F050];
  v256 = *(MEMORY[0x1E695F050] + 8);
  v258 = *(MEMORY[0x1E695F050] + 16);
  v257 = *(MEMORY[0x1E695F050] + 24);
  v259 = *(v253 + 16);
  outlined init with copy of DisplayList.Item(&v723, &v683);
  outlined init with copy of DisplayList.Item(&v725, &v683);
  outlined init with copy of DisplayList.Item(&v723, &v683);
  outlined init with copy of DisplayList.Item(&v725, &v683);
  outlined init with copy of DisplayList.Item(&v723, &v683);
  outlined init with copy of DisplayList.Item(&v725, &v683);
  outlined init with copy of DisplayList.ViewUpdater.Model.State(&v702, &v683);
  outlined init with copy of DisplayList.ViewUpdater.Model.State(&v711, &v683);
  outlined init with copy of SDFShape(&v675, &v683);
  v629 = v259;
  v595 = v13;
  v530 = v63;
  v531 = v66;
  v564 = v49;
  rect_24 = v52;
  v599 = v55;
  v604 = v60;
  if (!v259)
  {
LABEL_191:
    v738.origin.x = v255;
    v738.origin.y = v256;
    v738.size.width = v258;
    v738.size.height = v257;
    v373 = CGRectIsNull(v738);
    if (v373)
    {
      v255 = 0.0;
      v256 = 0.0;
      v374 = 0.0;
    }

    else
    {
      v374 = v258;
    }

    if (v373)
    {
      v375 = 0.0;
    }

    else
    {
      v375 = v257;
    }

    v377 = *&v703[24];
    v376 = *&v703[16];
    v630 = *&v712[24];
    v378 = *&v712[16];
    *v664 = *&v675.c;
    *&v664[16] = *&v675.tx;
    *&v664[32] = *v676;
    v379 = *v637;
    type metadata accessor for SDFLayer();
    v380 = swift_dynamicCastClassUnconditional();
    v381 = *(*&v561 + 24);
    *v722 = v255;
    *&v722[8] = v256;
    *&v722[48] = *v676;
    *&v722[32] = *&v675.tx;
    *&v722[16] = *&v675.c;
    v382 = swift_allocObject();
    v383 = *&v722[16];
    *(v382 + 24) = *v722;
    *(v382 + 16) = v380;
    *(v382 + 40) = v383;
    *(v382 + 56) = *&v722[32];
    *(v382 + 72) = *&v722[48];
    *(v382 + 80) = v255;
    *(v382 + 88) = v256;
    *(v382 + 96) = v374;
    *(v382 + 104) = v375;
    *(v382 + 112) = v381;
    *(v382 + 120) = v547;
    v384 = *(v637 + 8);
    v385 = swift_allocObject();
    *(v385 + 16) = partial apply for specialized closure #1 in DisplayList.ViewUpdater.Platform.updateSDFShapeViewAsync(_:oldState:oldShape:newState:newShape:contentsChanged:);
    *(v385 + 24) = v382;
    v386 = v379;
    v552 = *v703;
    v555 = *&v702.tx;
    *tyb = *v712;
    v562 = *&v711.tx;
    outlined init with copy of SDFShape(&v675, &v683);
    v387 = v386;
    outlined copy of BackdropGroupID?(v547);
    outlined init with copy of SDFShape(v722, &v683);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v388 = *(*(v384 + 56) + 16);
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v388);

    v683.a = v255;
    v683.b = v256;
    *&v683.c = *v664;
    *&v683.tx = *&v664[16];
    *v684 = *&v664[32];
    outlined destroy of SDFShape(&v683);
    v389 = *(v384 + 56);
    *(v389 + 16) = v388 + 1;
    v390 = v389 + 16 * v388;
    *(v390 + 32) = partial apply for thunk for @callee_guaranteed () -> ();
    *(v390 + 40) = v385;
    *&v664[16] = v552;
    *v664 = v555;
    *&v664[32] = v376;
    *&v664[40] = v377;
    CGAffineTransformTranslate(v656, v664, -v529, -v526);
    *&v696[32] = *v656;
    *&v696[48] = *&v656[16];
    *&v696[64] = *&v656[32];
    *&v664[16] = *tyb;
    *v664 = v562;
    *&v664[32] = v378;
    *&v664[40] = v630;
    CGAffineTransformTranslate(v656, v664, -v675.a, -v675.b);
    v391 = *&v656[32];
    v392 = *&v656[40];
    v631 = *v656;
    v563 = *&v656[16];
    outlined destroy of SDFShape(&v675);
    outlined consume of DisplayList.Content.Value(v14);
    outlined consume of DisplayList.Content.Value(v16);
    v690 = v563;
    *&v689.tx = v631;
    v691.f64[0] = v391;
    v691.f64[1] = v392;
    v64 = v534;
    v65 = v537;
    v63 = v530;
    v66 = v531;
    v49 = v564;
    v51 = v568;
    v61 = v541;
    v54 = v543;
LABEL_198:
    v52 = rect_24;
    goto LABEL_199;
  }

  v260 = 0;
  v261 = (v254 + 64);
  v549 = v257;
  v551 = v258;
  v554 = v256;
  ty = v255;
  v262 = v254;
  v540 = v254;
  while (1)
  {
    if (v260 >= *(v262 + 16))
    {
      __break(1u);
    }

    v267 = *(v261 - 4);
    v268 = *(v261 - 3);
    v269 = *(v261 - 2);
    v270 = *(v261 - 1);
    v271 = *v261;
    if (v271 <= 2)
    {
      if (v271 < 2)
      {
        v263 = *(v261 - 4);
        v264 = *(v261 - 3);
        v265 = *(v261 - 2);
        v266 = *(v261 - 1);
      }

      else
      {
        v263 = v267[2];
        v264 = v267[3];
        v265 = v267[4];
        v266 = v267[5];
        outlined copy of Path.Storage(*(v261 - 4), *(v261 - 3), *(v261 - 2), *(v261 - 1), 2u);
      }

      goto LABEL_131;
    }

    if (v271 == 5)
    {
      break;
    }

    v263 = ty;
    v264 = v554;
    v266 = v549;
    v265 = v551;
    if (v271 != 6)
    {
      goto LABEL_361;
    }

LABEL_131:
    ++v260;
    v735.origin.x = v255;
    v735.origin.y = v256;
    v735.size.width = v258;
    v735.size.height = v257;
    v747.origin.x = v263;
    v747.origin.y = v264;
    v747.size.width = v265;
    v747.size.height = v266;
    v736 = CGRectUnion(v735, v747);
    v255 = v736.origin.x;
    v256 = v736.origin.y;
    v258 = v736.size.width;
    v257 = v736.size.height;
    outlined consume of Path.Storage(v267, v268, v269, v270, v271);
    v261 += 56;
    if (v629 == v260)
    {
      goto LABEL_191;
    }
  }

  if (*(v267 + 16))
  {
    if (*(v267 + 16) == 1)
    {
      outlined copy of Path.Storage(v267, v268, v269, v270, 5u);
      v262 = v540;
      RBPathGetBoundingRect();
    }

    else
    {
      outlined copy of Path.Storage(*(v261 - 4), *(v261 - 3), *(v261 - 2), *(v261 - 1), 5u);
      v272 = MEMORY[0x193AC3640](v267 + 3);
    }

    v263 = v272;
    v264 = v273;
    v265 = v274;
    v266 = v275;
    goto LABEL_131;
  }

  v276 = *(v267 + 3);
  if (v276)
  {
    v277 = v276;
    outlined copy of Path.Storage(v267, v268, v269, v270, 5u);
    outlined copy of Path.Storage(v267, v268, v269, v270, 5u);
    PathBoundingBox = CGPathGetPathBoundingBox(v277);
    v263 = PathBoundingBox.origin.x;
    v264 = PathBoundingBox.origin.y;
    v265 = PathBoundingBox.size.width;
    v266 = PathBoundingBox.size.height;

    outlined consume of Path.Storage(v267, v268, v269, v270, 5u);
    v262 = v540;
    goto LABEL_131;
  }

  __break(1u);
LABEL_361:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_18D25E44C()
{

  return swift_deallocObject();
}

uint64_t DisplayList.ViewUpdater.Platform.updateClipShapesAsync(layer:oldState:newState:)(uint64_t a1, __int128 *a2, __int128 *a3)
{
  if (!*(*(a2 + 10) + 16) && !*(*(a3 + 10) + 16))
  {
    goto LABEL_21;
  }

  if ((*(a1 + 17) & 8) != 0)
  {
    v28 = a2[9];
    v29 = a2[7];
    v111 = a2[8];
    v112 = v28;
    v30 = a2[9];
    v113 = a2[10];
    v31 = a2[5];
    v32 = a2[3];
    v107 = a2[4];
    v108 = v31;
    v33 = a2[5];
    v34 = a2[7];
    v109 = a2[6];
    v110 = v34;
    v35 = a2[1];
    v103 = *a2;
    v104 = v35;
    v36 = a2[3];
    v38 = *a2;
    v37 = a2[1];
    v105 = a2[2];
    v106 = v36;
    v99 = v111;
    v100 = v30;
    v101 = a2[10];
    v95 = v107;
    v96 = v33;
    v97 = v109;
    v98 = v29;
    *&v93.a = v38;
    *&v93.c = v37;
    v114 = *(a2 + 22);
    v102 = *(a2 + 22);
    *&v93.tx = v105;
    v94 = v32;
    DisplayList.ViewUpdater.Model.State.clipRect()(&v82);
    v121 = v99;
    v122 = v100;
    v123 = v101;
    v124 = v102;
    v117 = v95;
    v118 = v96;
    v119 = v97;
    v120 = v98;
    v115 = v93;
    v116 = v94;
    outlined init with copy of DisplayList.ViewUpdater.Model.State(&v103, &v83);
    outlined destroy of DisplayList.ViewUpdater.Model.State(&v115);
    style = v82.value.style;
    if (v82.value.style == SwiftUI_RoundedCornerStyle_unknownDefault)
    {
      goto LABEL_22;
    }

    v40 = a3[9];
    v41 = a3[7];
    v89 = a3[8];
    v90 = v40;
    v42 = a3[9];
    v91 = a3[10];
    v43 = a3[5];
    v44 = a3[3];
    v85 = a3[4];
    v86 = v43;
    v45 = a3[5];
    v46 = a3[7];
    v87 = a3[6];
    v88 = v46;
    v47 = a3[1];
    *&v83.a = *a3;
    *&v83.c = v47;
    v48 = a3[3];
    v50 = *a3;
    v49 = a3[1];
    *&v83.tx = a3[2];
    v84 = v48;
    v77 = v89;
    v78 = v42;
    v79 = a3[10];
    v73 = v85;
    v74 = v45;
    height = v82.value.rect.size.height;
    width = v82.value.cornerSize.width;
    v75 = v87;
    v76 = v41;
    y = v82.value.rect.origin.y;
    v53 = v82.value.rect.size.width;
    *v72 = v50;
    *&v72[16] = v49;
    x = v82.value.rect.origin.x;
    v92 = *(a3 + 22);
    v80 = *(a3 + 22);
    *&v72[32] = *&v83.tx;
    *&v72[48] = v44;
    DisplayList.ViewUpdater.Model.State.clipRect()(&v81);
    v99 = v77;
    v100 = v78;
    v101 = v79;
    v102 = v80;
    v95 = v73;
    v96 = v74;
    v97 = v75;
    v98 = v76;
    v93 = *v72;
    v94 = *&v72[48];
    outlined init with copy of DisplayList.ViewUpdater.Model.State(&v83, v68);
    outlined destroy of DisplayList.ViewUpdater.Model.State(&v93);
    if (v81.value.style == SwiftUI_RoundedCornerStyle_unknownDefault || ((v81.value.style ^ style) & 1) != 0)
    {
      goto LABEL_22;
    }

    size = v81.value.rect.size;
    v67 = v81.value.cornerSize.width;
    v56 = v81.value.rect.origin.y;
    v57 = v81.value.rect.origin.x;
    v125.origin.x = x;
    v125.origin.y = y;
    v125.size.width = v53;
    v125.size.height = height;
    v58 = CGRectGetWidth(v125);
    v126.origin.x = x;
    v126.origin.y = y;
    v126.size.width = v53;
    v126.size.height = height;
    v59 = CGRectGetHeight(v126);
    if (v59 >= v58)
    {
      v59 = v58;
    }

    v60 = v59 * 0.5;
    if (v60 >= width)
    {
      v61 = width;
    }

    else
    {
      v61 = v60;
    }

    v127.origin.x = v57;
    v127.origin.y = v56;
    v127.size.width = size.width;
    v127.size.height = size.height;
    v62 = CGRectGetWidth(v127);
    v128.origin.x = v57;
    v128.origin.y = v56;
    v128.size.width = size.width;
    v128.size.height = size.height;
    v63 = CGRectGetHeight(v128);
    if (v63 >= v62)
    {
      v63 = v62;
    }

    v64 = v63 * 0.5;
    if (v64 >= v67)
    {
      v64 = v67;
    }

    if (v64 != v61)
    {
      _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE12CornerRadiusO_Tt0g5(v64);
    }

LABEL_21:
    v27 = 1;
    return v27 & 1;
  }

  v6 = a3[9];
  v7 = a3[7];
  v111 = a3[8];
  v112 = v6;
  v8 = a3[9];
  v113 = a3[10];
  v9 = a3[5];
  v10 = a3[3];
  v107 = a3[4];
  v108 = v9;
  v11 = a3[5];
  v12 = a3[7];
  v109 = a3[6];
  v110 = v12;
  v13 = a3[1];
  v103 = *a3;
  v104 = v13;
  v14 = a3[3];
  v16 = *a3;
  v15 = a3[1];
  v105 = a3[2];
  v106 = v14;
  v99 = v111;
  v100 = v8;
  v101 = a3[10];
  v95 = v107;
  v96 = v11;
  v97 = v109;
  v98 = v7;
  *&v93.a = v16;
  *&v93.c = v15;
  v114 = *(a3 + 22);
  v102 = *(a3 + 22);
  *&v93.tx = v105;
  v94 = v10;
  DisplayList.ViewUpdater.Model.State.clipRect()(v72);
  v121 = v99;
  v122 = v100;
  v123 = v101;
  v124 = v102;
  v117 = v95;
  v118 = v96;
  v119 = v97;
  v120 = v98;
  v115 = v93;
  v116 = v94;
  outlined init with copy of DisplayList.ViewUpdater.Model.State(&v103, &v83);
  outlined destroy of DisplayList.ViewUpdater.Model.State(&v115);
  if (v72[48] != 2 || (v17 = [*a1 mask]) == 0)
  {
LABEL_22:
    v27 = 0;
    return v27 & 1;
  }

  v18 = *(a1 + 8);
  v19 = *(a1 + 24);
  v20 = *(a1 + 32);
  v69 = *(a1 + 16);
  v70 = v19;
  v71 = v20;
  v68[0] = v17;
  v68[1] = v18;
  v21 = a2;
  v22 = *(a2 + 10);
  v23 = *(a3 + 10);
  v24 = v21[3];
  *&v93.a = v21[2];
  *&v93.c = v24;
  *&v93.tx = v21[4];
  CGAffineTransformInvert(&v83, &v93);
  v25 = a3[3];
  *v72 = a3[2];
  *&v72[16] = v25;
  *&v72[32] = a3[4];
  CGAffineTransformInvert(&v93, v72);

  specialized static MaskLayer.updateClipsAsync(layer:oldClips:newClips:oldTransform:newTransform:)(v68, v22, v23, &v83, &v93);
  v27 = v26;

  return v27 & 1;
}

void type metadata accessor for (DisplayList.Item.Value, DisplayList.Item.Value)()
{
  if (!lazy cache variable for type metadata for (DisplayList.Item.Value, DisplayList.Item.Value))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (DisplayList.Item.Value, DisplayList.Item.Value));
    }
  }
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = *(v21 + 56);
    v23 = *(v22 + 8 * v11);
    *(v22 + 8 * v11) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v21);
  }
}

void type metadata accessor for _DictionaryStorage<String, CAPresentationModifier>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<String, CAPresentationModifier>)
  {
    type metadata accessor for CAMediaTimingFunction(255, &lazy cache variable for type metadata for CAPresentationModifier);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<String, CAPresentationModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EmptyTextAccessibilityProvider and conformance EmptyTextAccessibilityProvider()
{
  result = lazy protocol witness table cache variable for type EmptyTextAccessibilityProvider and conformance EmptyTextAccessibilityProvider;
  if (!lazy protocol witness table cache variable for type EmptyTextAccessibilityProvider and conformance EmptyTextAccessibilityProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmptyTextAccessibilityProvider and conformance EmptyTextAccessibilityProvider);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA024TypesettingConfigurationI0VG_Tt1g5@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA024TypesettingConfigurationF0VG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TypesettingConfigurationKey>, &type metadata for TypesettingConfigurationKey, &protocol witness table for TypesettingConfigurationKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v19);
    outlined init with take of AnyTrackedValue(v19, v20);
    v12 = v21;
    v13 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    v14 = v13[1];
    v15 = type metadata accessor for TypesettingConfiguration();
    v14(v15, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA024TypesettingConfigurationF0VG_Tt2g5(a1, a2);
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<TypesettingConfigurationKey>>();
    v21 = v16;
    v22 = &protocol witness table for TrackedValue<A>;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
    outlined init with copy of EnvironmentValues.CapitalizationContext(a2, boxed_opaque_existential_1, type metadata accessor for TypesettingConfiguration);
    specialized Dictionary.subscript.setter(v20, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<TypesettingConfigurationKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<TypesettingConfigurationKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TypesettingConfigurationKey>, &type metadata for TypesettingConfigurationKey, &protocol witness table for TypesettingConfigurationKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TypesettingConfigurationKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<TypesettingConfigurationKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<TypesettingConfigurationKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<TypesettingConfigurationKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<TypesettingConfigurationKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TypesettingConfigurationKey>, &type metadata for TypesettingConfigurationKey, &protocol witness table for TypesettingConfigurationKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<TypesettingConfigurationKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void Font.SystemProvider.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  v5 = *(v0 + 18);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x193AC11E0](*&v1);
  if (v3 == 1)
  {
    Hasher._combine(_:)(0);
    if (v4 != 4)
    {
      goto LABEL_5;
    }
  }

  else
  {
    Hasher._combine(_:)(1u);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v8 = v2;
    }

    else
    {
      v8 = 0;
    }

    MEMORY[0x193AC11E0](v8);
    if (v4 != 4)
    {
LABEL_5:
      Hasher._combine(_:)(1u);
      MEMORY[0x193AC11A0](v4);
      if (v5 != 14)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  Hasher._combine(_:)(0);
  if (v5 != 14)
  {
LABEL_6:
    Hasher._combine(_:)(1u);
    switch(v5)
    {
      case 1:
        v5 = 1;
        break;
      case 2:
        v5 = 2;
        break;
      case 3:
        v5 = 3;
        break;
      case 4:
        v5 = 4;
        break;
      case 5:
        v5 = 5;
        break;
      case 6:
        v5 = 6;
        break;
      case 7:
        v5 = 7;
        break;
      case 8:
        v5 = 8;
        break;
      case 9:
        v5 = 9;
        break;
      case 10:
        v5 = 10;
        break;
      case 11:
      case 12:
      case 13:
        _diagnoseUnavailableCodeReached()();
        __break(1u);
        JUMPOUT(0x18D25F5ECLL);
      default:
        break;
    }

    MEMORY[0x193AC11A0](v5);
    if (!v7)
    {
      goto LABEL_25;
    }

LABEL_14:
    Hasher._combine(_:)(0);
    return;
  }

LABEL_13:
  Hasher._combine(_:)(0);
  if (v7)
  {
    goto LABEL_14;
  }

LABEL_25:
  Hasher._combine(_:)(1u);
  if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0;
  }

  MEMORY[0x193AC11E0](v9);
}

uint64_t specialized static CTFontDescriptorRef.fontDescriptor(size:design:weight:legibilityWeight:)(void *a1, uint64_t a2, char a3, unsigned __int8 *a4, double a5)
{
  v33 = *a4;
  type metadata accessor for _ContiguousArrayStorage<(CFStringRef, CGFloat)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(CFStringRef, Any)>, &lazy cache variable for type metadata for (CFStringRef, Any));
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18DDAB4C0;
  v10 = *MEMORY[0x1E6965898];
  *(inited + 32) = *MEMORY[0x1E6965898];
  result = swift_initStackObject();
  *(result + 16) = xmmword_18DDAB4C0;
  v12 = *MEMORY[0x1E6965970];
  *(result + 32) = *MEMORY[0x1E6965970];
  v13 = MEMORY[0x1E69E7DE0];
  *(result + 64) = MEMORY[0x1E69E7DE0];
  v14 = *MEMORY[0x1E6965958];
  if ((a3 & 1) == 0)
  {
    v14 = a2;
  }

  *(result + 40) = v14;
  v15 = *MEMORY[0x1E69658E0];
  if (*MEMORY[0x1E69658E0])
  {
    *(result + 72) = v15;
    v16 = result;
    type metadata accessor for CFStringRef(0);
    *(v16 + 104) = v17;
    *(v16 + 80) = a1;
    v18 = v10;
    v19 = v12;
    v20 = a1;
    v21 = v15;
    v22 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(v16);
    swift_setDeallocating();
    type metadata accessor for (CFStringRef, CGFloat)(0, &lazy cache variable for type metadata for (CFStringRef, Any));
    swift_arrayDestroy();
    type metadata accessor for [CFStringRef : Any](0, &lazy cache variable for type metadata for [CFStringRef : Any]);
    v23 = MEMORY[0x1E6965848];
    *(inited + 40) = v22;
    v24 = *v23;
    *(inited + 64) = v25;
    *(inited + 72) = v24;
    *(inited + 104) = v13;
    *(inited + 80) = a5;
    v26 = v24;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    v27 = *MEMORY[0x1E6965878];
    v36 = MEMORY[0x1E69E7668];
    LODWORD(v35) = 3;
    outlined init with take of Any(&v35, v34);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v34, v27, isUniquelyReferenced_nonNull_native);
    if (v33 != 2)
    {
      v29 = *MEMORY[0x1E69657F0];
      v36 = MEMORY[0x1E69E6530];
      *&v35 = v33 & 1;
      outlined init with take of Any(&v35, v34);
      v30 = swift_isUniquelyReferenced_nonNull_native();
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v34, v29, v30);
    }

    lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v32 = CTFontDescriptorCreateWithAttributesAndOptions();

    return v32;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unsigned __int8 *specialized static DefaultFontDefinition.resolveSystemFont(size:design:weight:in:)(unsigned __int8 *result, uint64_t a2, char a3, uint64_t a4, double a5)
{
  LODWORD(v8) = *result;
  v9 = *(a4 + 1);
  if (v8 <= 1)
  {
LABEL_6:
    if (v8)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  if (v8 == 2)
  {
    goto LABEL_9;
  }

  if (v8 == 3)
  {
    v8 = *MEMORY[0x1E69658C0];
    if (*MEMORY[0x1E69658C0])
    {
LABEL_12:
      v10 = v8;
      v12 = v9;
      v11 = specialized static CTFontDescriptorRef.fontDescriptor(size:design:weight:legibilityWeight:)(v10, a2, a3 & 1, &v12, a5);

      return v11;
    }

    __break(1u);
    goto LABEL_6;
  }

LABEL_7:
  v8 = *MEMORY[0x1E69658B8];
  if (*MEMORY[0x1E69658B8])
  {
    goto LABEL_12;
  }

  __break(1u);
LABEL_9:
  v8 = *MEMORY[0x1E69658C8];
  if (*MEMORY[0x1E69658C8])
  {
    goto LABEL_12;
  }

  __break(1u);
LABEL_11:
  v8 = *MEMORY[0x1E69658D0];
  if (*MEMORY[0x1E69658D0])
  {
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for FontProvider.resolveDescriptor(in:) in conformance Font.SystemProvider(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v14 = *(a1 + 3);
  v15 = a1[5];
  v16[0] = v3;
  v5 = v1[1];
  v6 = *(v1 + 16);
  v7 = *(v1 + 17);
  v8 = *(v1 + 18);
  v9 = v1[3];
  v10 = *(v1 + 32);
  v19 = *v1;
  v20 = v5;
  v21 = v6;
  v22 = v7;
  v23 = v8;
  v24 = v9;
  v25 = v10;
  v16[1] = v2;
  v16[2] = v4;
  v17 = *(a1 + 3);
  v18 = a1[5];
  v11 = Font.SystemProvider.effectiveSize(in:)(v16);
  LOBYTE(v16[0]) = v7;
  v13[0] = v3;
  v13[1] = v2;
  v13[2] = v4;
  return (*(v4 + 24))(v16, v5, v6, v13, v2, v4, v11);
}

void type metadata accessor for _ContiguousArrayStorage<(CFStringRef, CGFloat)>(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    type metadata accessor for (CFStringRef, CGFloat)(255, a3);
    v4 = type metadata accessor for _ContiguousArrayStorage();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void _ss23_ContiguousArrayStorageCySo11CFStringRefa_12CoreGraphics7CGFloatVtGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<CFStringRef, Any>();
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (RBDisplayListRenderKey, Any)(v4, &v11, &lazy cache variable for type metadata for (CFStringRef, Any), type metadata accessor for CFStringRef);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of Any(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
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

void type metadata accessor for (CFStringRef, CGFloat)(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    type metadata accessor for CFStringRef(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void _sSo11CFStringRefa_12CoreGraphics7CGFloatVtMaTm_0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t AccessibilityPropertiesEntry.isEqual(to:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23[-v7 - 8];
  v9 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  outlined init with copy of AnyTrackedValue(a1, v23);
  type metadata accessor for AnyAccessibilityPropertiesEntry();
  v13 = swift_dynamicCast();
  v14 = *(v9 + 56);
  if (v13)
  {
    v14(v8, 0, 1, a2);
    (*(v9 + 32))(v12, v8, a2);
    v20 = static ConstantLocation.== infix(_:_:)(v2, v12, *(a2 + 16), v15, v16, v17, v18, v19);
    (*(v9 + 8))(v12, a2);
  }

  else
  {
    v14(v8, 1, 1, a2);
    (*(v6 + 8))(v8, v5);
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t specialized FluidSpringAnimation.animate<A>(value:time:context:)(uint64_t a1, double a2, double a3, double a4, double a5, double a6)
{
  _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigSd_AA06SpringD033_73E5E3E568519775ECB92F029EBA0DDALLVySdGTt0B5(*a1, &v54);
  v12 = a4;
  if (a6 > 0.0)
  {
    v12 = a4;
    if (v60 != 0.0)
    {
      v13 = (a3 - v59) / a6;
      if (v13 <= 1.0)
      {
        v14 = (a3 - v59) / a6;
      }

      else
      {
        v14 = 1.0;
      }

      v15 = v13 < 0.0;
      v16 = 0.0;
      if (!v15)
      {
        v16 = v14;
      }

      v12 = v60 * (1.0 - v16 * v16 * (3.0 - (v16 + v16))) + a4;
    }
  }

  if (v12 <= 0.0)
  {
    v17 = INFINITY;
  }

  else
  {
    v17 = 6.28318531 / v12 * (6.28318531 / v12);
  }

  v47 = a4;
  if (v17 > 45000.0)
  {
    v17 = 45000.0;
  }

  v49 = v58;
  if (v12 <= a3 - v58)
  {
    *(a1 + 17) = 1;
  }

  v18 = v57;
  if (a3 - v57 > 1.0)
  {
    v18 = a3 + -0.0166666667;
    v57 = a3 + -0.0166666667;
  }

  v19 = v54;
  v48 = a5;
  if (v18 >= a3)
  {
    v22 = v55;
    v21 = v56;
    v25 = a2 - v54;
  }

  else
  {
    v20 = sqrt(v17);
    v22 = v55;
    v21 = v56;
    v23 = (v20 + v20) * a5;
    do
    {
      v24 = v21 * 0.00166666667 + v22;
      v19 = v19 + v24 * 0.00333333333;
      v25 = a2 - v19;
      v26 = v17 * (a2 - v19);
      v21 = v26 - v23 * v24;
      v22 = v24 + v21 * 0.00166666667;
      v18 = v18 + 0.00333333333;
    }

    while (v18 < a3);
    v56 = v26 - v23 * v24;
    v57 = v18;
    v54 = v19;
    v55 = v24 + v21 * 0.00166666667;
  }

  v28 = v59;
  v27 = v60;
  type metadata accessor for SpringState<Double>();
  v30 = v29;
  *(&v53 + 1) = v29;
  v31 = swift_allocObject();
  v52[0] = v31;
  *(v31 + 16) = v19;
  *(v31 + 24) = v22;
  *(v31 + 32) = v21;
  *(v31 + 40) = v18;
  *(v31 + 48) = v49;
  *(v31 + 56) = v28;
  *(v31 + 64) = v27;
  specialized Dictionary.subscript.setter(v52, v30);
  v32 = *(a1 + 16);
  v33 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigSd_AA0c19FinishingDefinitionF033_2DFC163B2FD0FA7B91FDE1127AAEDE04LLVySdGTt0B5(*a1);
  if (v33)
  {
    v35 = v33;
    v36 = v34;
    v37 = 6.28318531 / v47 * (6.28318531 / v47);
    v38 = sqrt(v37);
    v39 = (v38 + v38) * v48 / v37 * v22;
    if ((v32 & 1) != 0 || (WeakValue = AGGraphGetWeakValue()) == 0)
    {
      EnvironmentValues.init()(v51);
      v41 = *v51;
    }

    else
    {
      v50 = *WeakValue;

      v41 = v50;
    }

    *v52 = v25;
    *&v52[1] = v39;
    v53 = v41;
    v42 = (*(v36 + 24))(v52, v35, v36);

    if (v42)
    {
      return 0;
    }
  }

  v44 = v22 * v22;
  if (v22 * v22 <= v21 * v21)
  {
    v44 = v21 * v21;
  }

  if (v44 > 0.0036)
  {
    return *&v19;
  }

  v45 = a2 * 0.01 * (a2 * 0.01);
  if (v45 >= v25 * v25 || v45 <= 0.0)
  {
    return 0;
  }

  else
  {
    return *&v19;
  }
}

double _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigSd_AA06SpringD033_73E5E3E568519775ECB92F029EBA0DDALLVySdGTt0B5@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (type metadata accessor for AnimationFinishingDefinitionKey<Double>(0, &lazy cache variable for type metadata for SpringState<Double>, MEMORY[0x1E69E63B0], &protocol witness table for Double, type metadata accessor for SpringState), v5 = specialized __RawDictionaryStorage.find<A>(_:)(v4), (v6 & 1) != 0))
  {
    outlined init with copy of Any(*(a1 + 56) + 32 * v5, v8);
    outlined init with take of Any(v8, v9);
    outlined init with take of Any(v9, v8);
    swift_dynamicCast();
  }

  else
  {
    *(a2 + 48) = 0;
    result = 0.0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return result;
}

void type metadata accessor for SpringState<Double>()
{
  if (!lazy cache variable for type metadata for SpringState<Double>)
  {
    v0 = type metadata accessor for SpringState();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for SpringState<Double>);
    }
  }
}

Swift::Void __swiftcall DisplayList.ViewUpdater.ViewCache.commitAsyncValues(targetTimestamp:)(SwiftUI::Time_optional targetTimestamp)
{
  v2 = v1;
  v3 = **&targetTimestamp.is_nil;
  v4 = v1[5];
  if (!*(v4 + 16) && !*(v1[7] + 16))
  {
    return;
  }

  v87 = *(*&targetTimestamp.is_nil + 8);
  if (([objc_opt_self() isMainThread] & 1) == 0)
  {
    [objc_opt_self() activateBackground_];
  }

  v5 = objc_opt_self();
  v86 = [v5 disableActions];
  if ((v86 & 1) == 0)
  {
    [v5 setDisableActions_];
  }

  v85 = v5;
  v102 = MEMORY[0x1E69E7CD0];
  v91 = v4 + 64;
  v6 = 1 << *(v4 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(v4 + 64);
  v90 = (v6 + 63) >> 6;
  v95 = *MEMORY[0x1E69797E8];

  v9 = 0;
  v10 = 0;
  v88 = v4;
  v89 = v1;
  while (1)
  {
    if (!v8)
    {
      do
      {
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_71;
        }

        if (v11 >= v90)
        {

          if ((v86 & 1) == 0)
          {
            [v85 setDisableActions_];
          }

          swift_beginAccess();
          v71 = v102;
          v72 = v102 + 56;
          v73 = 1 << *(v102 + 32);
          v74 = -1;
          if (v73 < 64)
          {
            v74 = ~(-1 << v73);
          }

          v75 = v74 & *(v102 + 56);
          v76 = (v73 + 63) >> 6;
          if (v87)
          {
            v3 = 0.0;
          }

          v77 = 0;
          if (!v75)
          {
            goto LABEL_59;
          }

          while (1)
          {
            for (i = v77; ; v77 = i)
            {
              v79 = __clz(__rbit64(v75));
              v75 &= v75 - 1;
              [*(*(v71 + 48) + ((i << 9) | (8 * v79))) flushWithTransactionAndTargetTime_];
              if (v75)
              {
                break;
              }

              do
              {
LABEL_59:
                i = v77 + 1;
                if (__OFADD__(v77, 1))
                {
                  goto LABEL_72;
                }

                if (i >= v76)
                {

                  v80 = v2[7];
                  v81 = *(v80 + 16);
                  if (v81)
                  {
                    v82 = v80 + 40;
                    do
                    {
                      v83 = *(v82 - 8);

                      v83(v84);

                      v82 += 16;
                      --v81;
                    }

                    while (v81);
                  }

                  v2[5] = MEMORY[0x1E69E7CC8];

                  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v9);
                  v2[7] = MEMORY[0x1E69E7CC0];
                  return;
                }

                v75 = *(v72 + 8 * i);
                ++v77;
              }

              while (!v75);
            }
          }
        }

        v8 = *(v91 + 8 * v11);
        ++v10;
      }

      while (!v8);
      v10 = v11;
    }

    v94 = v8;
    v92 = v10;
    v12 = (v10 << 9) | (8 * __clz(__rbit64(v8)));
    v13 = *(*(v4 + 48) + v12);
    v14 = *(*(v4 + 56) + v12);
    v101 = v2[6];
    v96 = v101;
    v93 = v101;

    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v99 = v2[4];
    v16 = v99;
    v97 = v13;
    v17 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
    v19 = v16[2];
    v20 = (v18 & 1) == 0;
    v21 = __OFADD__(v19, v20);
    v22 = v19 + v20;
    if (v21)
    {
      goto LABEL_73;
    }

    v23 = v18;
    if (v16[3] >= v22)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v70 = v17;
        specialized _NativeDictionary.copy()();
        v17 = v70;
        v16 = v99;
        v2[4] = v99;
        if (v23)
        {
          goto LABEL_26;
        }

        goto LABEL_24;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v22, isUniquelyReferenced_nonNull_native);
      v16 = v99;
      v17 = specialized __RawDictionaryStorage.find<A>(_:)(v97);
      if ((v23 & 1) != (v24 & 1))
      {
        goto LABEL_78;
      }
    }

    v2[4] = v16;
    if (v23)
    {
      goto LABEL_26;
    }

LABEL_24:
    v16[(v17 >> 6) + 8] |= 1 << v17;
    *(v16[6] + 8 * v17) = v97;
    v25 = (v16[7] + 16 * v17);
    *v25 = MEMORY[0x1E69E7CD0];
    v25[1] = MEMORY[0x1E69E7CC8];
    v26 = v16[2];
    v21 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (v21)
    {
      goto LABEL_74;
    }

    v16[2] = v27;
LABEL_26:
    v98 = *(v14 + 16);
    if (v98)
    {
      break;
    }

LABEL_12:
    v8 = (v94 - 1) & v94;

    v2[6] = v96;
    v9 = specialized thunk for @callee_guaranteed () -> (@owned DisplayList.ViewUpdater.ViewCache.AsyncValues);
    v10 = v92;
  }

  v28 = v16[7] + 16 * v17;
  swift_beginAccess();
  v29 = 0;
  while (v29 < *(v14 + 16))
  {
    v35 = v14 + 32 + 32 * v29;
    v37 = *v35;
    v36 = *(v35 + 8);
    v38 = *(v35 + 16);
    if (*(v35 + 24) == 1)
    {
      v39 = *(v28 + 8);
      v40 = *(v39 + 16);

      if (!v40)
      {
        v54 = v38;
LABEL_42:
        v55 = v96;
        if (!v96 || (v56 = v96, v57 = [v56 count], v58 = objc_msgSend(v56, sel_capacity), v56, v59 = v57 < v58, v55 = v96, !v59))
        {
          v56 = [objc_opt_self() groupWithCapacity_];

          v101 = v56;
          if (!v56)
          {
            goto LABEL_76;
          }

          [v56 setUpdatesAsynchronously_];
          v96 = v56;
        }

        v60 = objc_allocWithZone(MEMORY[0x1E6979410]);
        v61 = v38;
        v62 = v56;
        v63 = MEMORY[0x193ABEC20](v37, v36);
        v64 = v61;
        v65 = [v60 initWithKeyPath:v63 initialValue:v64 additive:0 group:v62];

        [v97 addPresentationModifier_];

        v66 = v65;
        v67 = swift_isUniquelyReferenced_nonNull_native();
        v99 = *(v28 + 8);
        *(v28 + 8) = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v66, v37, v36, v67);

        *(v28 + 8) = v99;
        v68 = [v66 group];
        if (!v68)
        {
          goto LABEL_75;
        }

        v69 = v68;

        swift_beginAccess();
        specialized Set._Variant.insert(_:)(&v100, v69);
        swift_endAccess();

        goto LABEL_29;
      }

      v41 = v38;
      v42 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v36);
      v44 = v43;

      if ((v44 & 1) == 0)
      {
        goto LABEL_42;
      }

      v45 = *(*(v39 + 56) + 8 * v42);
      [v45 setValue_];
      v46 = [v45 group];
      if (!v46)
      {
        goto LABEL_77;
      }

      v47 = v46;

      swift_beginAccess();
      v48 = v102;
      v49 = MEMORY[0x193AC1170](*(v102 + 40), v47);
      v50 = -1 << *(v48 + 32);
      v51 = v49 & ~v50;
      if ((*(v48 + 56 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51))
      {
        v52 = ~v50;
        while (*(*(v48 + 48) + 8 * v51) != v47)
        {
          v51 = (v51 + 1) & v52;
          if (((*(v48 + 56 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51) & 1) == 0)
          {
            goto LABEL_39;
          }
        }
      }

      else
      {
LABEL_39:
        v53 = swift_isUniquelyReferenced_nonNull_native();
        v100 = v102;
        specialized _NativeSet.insertNew(_:at:isUnique:)(v47, v51, v53);
        v102 = v100;
      }

      swift_endAccess();
    }

    else
    {

      v30 = v38;
      v31 = MEMORY[0x193ABEC20](v37, v36);
      v32 = [objc_opt_self() animationWithKeyPath_];

      v33 = v32;
      [v33 setBeginTime_];
      [v33 setDuration_];
      [v33 setFillMode_];
      [v33 setToValue_];
      [v33 setRemovedOnCompletion_];

      v34 = MEMORY[0x193ABEC20](v37, v36);
      [v97 addAnimation:v33 forKey:v34];

      specialized Set._Variant.insert(_:)(&v99, v37, v36);
    }

LABEL_29:
    if (++v29 == v98)
    {

      v4 = v88;
      v2 = v89;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void destroy for DisplayList.ViewUpdater.ViewCache.PendingAsyncValue(uint64_t a1)
{

  v2 = *(a1 + 16);
}

unint64_t type metadata accessor for ViewGraphDisplayLink.Type()
{
  result = lazy cache variable for type metadata for ViewGraphDisplayLink.Type;
  if (!lazy cache variable for type metadata for ViewGraphDisplayLink.Type)
  {
    type metadata accessor for ViewGraphDisplayLink();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for ViewGraphDisplayLink.Type);
  }

  return result;
}

uint64_t _NSThreadStart(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 startAndReturnError:0];
  }

  else
  {
    [v1 start];
    v2 = 1;
  }

  return v2;
}

uint64_t _MovableLockWait(uint64_t a1)
{
  v2 = pthread_self();
  v4 = *(a1 + 128);
  v3 = *(a1 + 132);
  *(a1 + 128) = 0;
  *(a1 + 120) = 0;
  if (v3)
  {
    pthread_cond_broadcast((a1 + 64));
  }

  do
  {
    result = wait_for_lock(a1, v2);
  }

  while (*(a1 + 120));
  *(a1 + 120) = v2;
  *(a1 + 128) = v4;
  return result;
}

uint64_t specialized static ViewGraphDisplayLink.asyncThread(arg:)()
{
  type metadata accessor for NSRunLoop.SchedulerOptions?();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for NSRunLoop.SchedulerTimeType.Stride();
  v3 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v21 = type metadata accessor for NSRunLoop.SchedulerTimeType();
  v7 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v10 = static Update._lock;
  _MovableLockLock(static Update._lock);
  v11 = [objc_opt_self() currentRunLoop];
  v12 = static ViewGraphDisplayLink.asyncRunloop;
  static ViewGraphDisplayLink.asyncRunloop = v11;

  _MovableLockBroadcast(v10);
  if (static ViewGraphDisplayLink.asyncPending == 1)
  {
    v13 = (v3 + 8);
    v14 = (v7 + 8);
    while (1)
    {
      static ViewGraphDisplayLink.asyncPending = 0;
      result = _MovableLockUnlock(v10);
      if (!static ViewGraphDisplayLink.asyncRunloop)
      {
        break;
      }

      v16 = static ViewGraphDisplayLink.asyncRunloop;
      Date.init(timeIntervalSinceNow:)();
      v17 = NSRunLoop.SchedulerTimeType.init(_:)();
      MEMORY[0x193ABFCF0](v17, 0.1);
      v18 = type metadata accessor for NSRunLoop.SchedulerOptions();
      (*(*(v18 - 8) + 56))(v2, 1, 1, v18);
      NSRunLoop.schedule(after:tolerance:options:_:)();

      outlined destroy of NSRunLoop.SchedulerOptions?(v2);
      (*v13)(v5, v22);
      (*v14)(v9, v21);
      result = static ViewGraphDisplayLink.asyncRunloop;
      if (!static ViewGraphDisplayLink.asyncRunloop)
      {
        goto LABEL_10;
      }

      [static ViewGraphDisplayLink.asyncRunloop run];
      _MovableLockLock(v10);
      if ((static ViewGraphDisplayLink.asyncPending & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
LABEL_8:
    v19 = static ViewGraphDisplayLink.asyncRunloop;
    static ViewGraphDisplayLink.asyncRunloop = 0;

    v20 = static ViewGraphDisplayLink.asyncThread;
    static ViewGraphDisplayLink.asyncThread = 0;

    _MovableLockBroadcast(v10);
    return _MovableLockUnlock(v10);
  }

  return result;
}

void type metadata accessor for NSRunLoop.SchedulerOptions?()
{
  if (!lazy cache variable for type metadata for NSRunLoop.SchedulerOptions?)
  {
    type metadata accessor for NSRunLoop.SchedulerOptions();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for NSRunLoop.SchedulerOptions?);
    }
  }
}

uint64_t outlined destroy of NSRunLoop.SchedulerOptions?(uint64_t a1)
{
  type metadata accessor for NSRunLoop.SchedulerOptions?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t RangeReplaceableCollection<>.remove(atOffsets:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17[2] = swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for PartialRangeFrom();
  v17[0] = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v17 - v7;
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v17 - v11;
  type metadata accessor for Slice<IndexSet>();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  specialized Collection.subscript.getter(v15);
  v19 = v15;
  MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)(partial apply for closure #1 in RangeReplaceableCollection<>.remove(atOffsets:), v18, a3, v12);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    (*(v9 + 16))(v8, v12, AssociatedTypeWitness);
    swift_getWitnessTable();
    RangeReplaceableCollection.removeSubrange<A>(_:)();
    (*(v17[0] + 8))(v8, v6);
    (*(v9 + 8))(v12, AssociatedTypeWitness);
    return _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v15, type metadata accessor for Slice<IndexSet>);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized Collection.subscript.getter@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  type metadata accessor for (lower: IndexSet.Index, upper: IndexSet.Index)();
  v31 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - v6;
  v8 = type metadata accessor for IndexSet.Index();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - v13;
  type metadata accessor for Range<IndexSet.Index>();
  v30 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PartialRangeFrom<IndexSet.Index>();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for IndexSet();
  v22 = _s10Foundation8IndexSetVACSlAAWlTm_0(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50]);
  v33 = v21;
  v34 = v1;
  v23 = v22;
  dispatch thunk of Collection.startIndex.getter();
  _s10Foundation8IndexSetVACSlAAWlTm_0(&lazy protocol witness table cache variable for type IndexSet.Index and conformance IndexSet.Index, MEMORY[0x1E6969B18]);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    (*(v9 + 16))(v14, v20, v8);
    dispatch thunk of Collection.endIndex.getter();
    _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v20, type metadata accessor for PartialRangeFrom<IndexSet.Index>);
    _s10Foundation8IndexSetVACSlAAWlTm_0(&lazy protocol witness table cache variable for type IndexSet.Index and conformance IndexSet.Index, MEMORY[0x1E6969B18]);
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if (result)
    {
      v25 = *(v9 + 32);
      v25(v7, v14, v8);
      v29 = v23;
      v26 = v31;
      v25(&v7[*(v31 + 48)], v11, v8);
      outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(v7, v4, type metadata accessor for (lower: IndexSet.Index, upper: IndexSet.Index));
      v27 = *(v26 + 48);
      v25(v17, v4, v8);
      v28 = *(v9 + 8);
      v28(&v4[v27], v8);
      outlined init with take of (lower: IndexSet.Index, upper: IndexSet.Index)(v7, v4);
      v25(&v17[*(v30 + 36)], &v4[*(v26 + 48)], v8);
      v28(v4, v8);
      dispatch thunk of Collection.subscript.getter();
      return _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v17, type metadata accessor for Range<IndexSet.Index>);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void type metadata accessor for (lower: IndexSet.Index, upper: IndexSet.Index)()
{
  if (!lazy cache variable for type metadata for (lower: IndexSet.Index, upper: IndexSet.Index))
  {
    type metadata accessor for IndexSet.Index();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (lower: IndexSet.Index, upper: IndexSet.Index));
    }
  }
}

void type metadata accessor for Range<IndexSet.Index>()
{
  if (!lazy cache variable for type metadata for Range<IndexSet.Index>)
  {
    type metadata accessor for IndexSet.Index();
    _s10Foundation8IndexSetVACSlAAWlTm_0(&lazy protocol witness table cache variable for type IndexSet.Index and conformance IndexSet.Index, MEMORY[0x1E6969B18]);
    v0 = type metadata accessor for Range();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Range<IndexSet.Index>);
    }
  }
}

uint64_t _s10Foundation8IndexSetVACSlAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10Foundation8IndexSetVACSlAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata accessor for PartialRangeFrom<IndexSet.Index>()
{
  if (!lazy cache variable for type metadata for PartialRangeFrom<IndexSet.Index>)
  {
    type metadata accessor for IndexSet.Index();
    _s10Foundation8IndexSetVACSlAAWlTm_0(&lazy protocol witness table cache variable for type IndexSet.Index and conformance IndexSet.Index, MEMORY[0x1E6969B18]);
    v0 = type metadata accessor for PartialRangeFrom();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PartialRangeFrom<IndexSet.Index>);
    }
  }
}

uint64_t outlined destroy of Slice<IndexSet>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of (lower: IndexSet.Index, upper: IndexSet.Index)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (lower: IndexSet.Index, upper: IndexSet.Index)();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v35 = a4;
  v38 = a3;
  v7 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = type metadata accessor for Optional();
  v32 = *(v9 - 8);
  v33 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v34 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v31 - v17;
  v36 = v19;
  v41 = a1;
  v42 = a2;
  v20 = v43;
  result = Collection.firstIndexByOffset(where:)(a1, a2, v7, v19);
  if (!v20)
  {
    v43 = v15;
    v39 = v18;
    v40 = v4;
    v23 = v36;
    v22 = TupleTypeMetadata2;
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v36, 1, TupleTypeMetadata2) == 1)
    {
      (*(v32 + 8))(v23, v33);
      return dispatch thunk of Collection.endIndex.getter();
    }

    else
    {
      v24 = *&v23[*(v22 + 48)];
      v25 = v34;
      v36 = *(v34 + 32);
      TupleTypeMetadata2 = v34 + 32;
      (v36)(v39, v23, AssociatedTypeWitness);
      result = dispatch thunk of Collection.index(after:)();
      v26 = __OFADD__(v24, 1);
      v27 = v24 + 1;
      if (!v26)
      {
        v28 = (v25 + 8);
        do
        {
          dispatch thunk of Collection.endIndex.getter();
          swift_getAssociatedConformanceWitness();
          v29 = dispatch thunk of static Equatable.== infix(_:_:)();
          v30 = *v28;
          (*v28)(v12, AssociatedTypeWitness);
          if (v29)
          {
            v30(v43, AssociatedTypeWitness);
            return (v36)(v35, v39, AssociatedTypeWitness);
          }

          if ((v41(v27) & 1) == 0)
          {
            dispatch thunk of MutableCollection.swapAt(_:_:)();
            dispatch thunk of Collection.formIndex(after:)();
          }

          result = dispatch thunk of Collection.formIndex(after:)();
          v26 = __OFADD__(v27++, 1);
        }

        while (!v26);
        __break(1u);
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t Collection.firstIndexByOffset(where:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t)@<X3>, uint64_t a4@<X8>)
{
  v29 = a1;
  v30 = a2;
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v26 - v11);
  dispatch thunk of Collection.startIndex.getter();
  v13 = 0;
  v27 = v7;
  v31 = (v7 + 8);
  v14 = v12;
  while (1)
  {
    v15 = v4;
    dispatch thunk of Collection.endIndex.getter();
    v16 = a3;
    swift_getAssociatedConformanceWitness();
    a3 = v14;
    v17 = dispatch thunk of static Equatable.== infix(_:_:)();
    v14 = *v31;
    (*v31)(v9, AssociatedTypeWitness);
    if (v17)
    {
      goto LABEL_8;
    }

    v18 = v32;
    v19 = v29(v13);
    if (v18)
    {
      return (v14)(a3, AssociatedTypeWitness);
    }

    v32 = 0;
    if (v19)
    {
      break;
    }

    v14 = a3;
    v4 = v15;
    a3 = v16;
    dispatch thunk of Collection.formIndex(after:)();
    if (__OFADD__(v13++, 1))
    {
      __break(1u);
LABEL_8:
      v14(a3, AssociatedTypeWitness);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      return (*(*(TupleTypeMetadata2 - 8) + 56))(v28, 1, 1, TupleTypeMetadata2);
    }
  }

  v23 = swift_getTupleTypeMetadata2();
  v24 = *(v23 + 48);
  v25 = v28;
  (*(v27 + 32))(v28, a3, AssociatedTypeWitness);
  *(v25 + v24) = v13;
  return (*(*(v23 - 8) + 56))(v25, 0, 1, v23);
}

uint64_t destroy for DisplayList.GraphicsRenderer.Cache()
{
}

uint64_t protocol witness for static TextAccessibilityProvider.makeView(content:text:resolved:) in conformance EmptyTextAccessibilityProvider@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
}

uint64_t *initializeBufferWithCopyOfBuffer for ForEach(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((((((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v8 = *a2;
    *a1 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v12 = v11[1];
    *v10 = *v11;
    v10[1] = v12;
    v13 = ((v10 + 23) & 0xFFFFFFFFFFFFFFF8);
    v14 = ((v11 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v13 = *v14;
    v15 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
    v16 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v15 = *v16;
    *((v15 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t ImageRendererHost.proposedSize.setter(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v5 = v4 + *(*v4 + 248);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  v9 = *(v5 + 24);
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  *(v5 + 16) = a3;
  *(v5 + 24) = a4 & 1;
  return ImageRendererHost.proposedSize.didset(v6, v7, v8, v9);
}

uint64_t ImageRenderer._render(rasterizationScale:renderer:)(uint64_t a1, uint64_t a2, double a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v9[2] = partial apply for thunk for @callee_guaranteed (@unowned CGSize, @guaranteed @callee_guaranteed (@guaranteed CGContextRef) -> ()) -> ();
  v9[3] = v7;
  v10 = v3;
  v11 = a3;
  ImageRendererHost.render(ifNewerThan:renderer:)(0, 1, partial apply for closure #1 in closure #1 in ImageRenderer._render(rasterizationScale:renderer:), v9);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  return result;
}

uint64_t AttributedStringTextStorage.isEqual(to:)()
{
  result = swift_dynamicCastClass();
  if (result)
  {

    v1 = static AttributedString.== infix(_:_:)();

    return v1 & 1;
  }

  return result;
}

void *assignWithTake for _ForegroundColorModifier(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t ImageRenderer.content.setter(uint64_t a1, void (*a2)(void))
{
  v4 = *v2;
  a2();
  v5 = *(*(*(v4 + 80) - 8) + 8);

  return v5(a1);
}

Swift::Void __swiftcall ImageRendererHost.updateRootView()()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(v2 - 8);
  (MEMORY[0x1EEE9AC00])();
  v5 = &v12 - v4;
  v6 = *(v1 + 232);
  swift_beginAccess();
  (*(v3 + 16))(v5, v0 + v6, v2);
  ViewGraph.setRootView<A>(_:)(v5, v2, *(v1 + 88), v7, v8, v9, v10, v11);
  (*(v3 + 8))(v5, v2);
}

uint64_t partial apply for closure #1 in closure #1 in ImageRenderer._render(rasterizationScale:renderer:)(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5[2];
  v7 = v5[5];
  v9[2] = v5[4];
  *&v9[3] = a1;
  *&v9[4] = a2;
  v9[5] = a4;
  v9[6] = a5;
  v9[7] = v7;
  return v6(partial apply for closure #1 in closure #1 in closure #1 in ImageRenderer._render(rasterizationScale:renderer:), v9);
}

uint64_t StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>)
{
  *a4 = a5;
  *(a4 + 8) = result;
  *(a4 + 12) = a2;
  *(a4 + 16) = a6;
  *(a4 + 24) = a3;
  *(a4 + 32) = a7;
  return result;
}

uint64_t static ModifiedContent<>.== infix(_:_:)()
{
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ModifiedContent();
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t AnimatorState.update(_:at:environment:)(uint64_t a1, double *a2, unint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = v8[10];
  v10 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v10);
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v12);
  MEMORY[0x1EEE9AC00](v13);
  v19 = &v62 - v18;
  v20 = *a2;
  v21 = v8[17];
  v22 = *&v4[v21];
  v23 = v8[16];
  v24 = *&v4[v23];
  if (v22 + v24 * -0.5 >= *a2)
  {
    v27 = v8[18];
LABEL_6:
    swift_beginAccess();
    v28 = *(v11 + 16);
    v28(v19, &v4[v27], v9);
    dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
    v29 = *(v11 + 8);
    v29(v19, v9);
    v30 = *(*v4 + 112);
    swift_beginAccess();
    v28(v19, &v4[v30], v9);
    dispatch thunk of static AdditiveArithmetic.-= infix(_:_:)();
    v29(v19, v9);
    return 0;
  }

  v72 = v17;
  v73 = v16;
  v74 = v14;
  v71 = v21;
  v70 = v15;
  v25 = v8[20];
  if (v4[v25] > 1u)
  {
    if (v4[v25] != 2)
    {
      goto LABEL_14;
    }

    v32 = v23;
    v33 = a1;
    v34 = fmax(v24, 0.0166666667);
    v35 = v34 + v34;
    v36 = v8[15];
    if (v34 + v34 < v20 - *&v4[v36])
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *&v4[v36] = v20 - v35;
      }
    }

    v26 = 3;
    a1 = v33;
    v23 = v32;
    goto LABEL_13;
  }

  if (!v4[v25])
  {
    *&v4[v8[15]] = v20;
    v26 = 1;
LABEL_13:
    v4[v25] = v26;
    goto LABEL_14;
  }

  v4[v25] = 2;
  swift_beginAccess();
  if ((static CoreTesting.isRunning & 1) == 0)
  {
    v61 = *(*v4 + 120);
    *&v4[v71] = v20 + v22 - *&v4[v61];
    *&v4[v61] = v20;
    v27 = *(*v4 + 144);
    goto LABEL_6;
  }

LABEL_14:
  v68 = v23;
  v69 = a1;
  v37 = v20 - *&v4[*(*v4 + 120)];
  swift_beginAccess();
  v77[0] = *(v4 + 3);
  v38 = v4[*(*v4 + 184)];
  v39 = v8[11];

  v67 = HIDWORD(a3) & 1;
  v66 = a3;
  AnimationContext.init(state:environment:isLogicallyComplete:)(v77, v38, v75);
  v40 = &v4[*(*v4 + 192)];
  v41 = *v40;
  if (*v40)
  {
    v42 = v40[1];
    v43 = type metadata accessor for AnimationContext();
    AnimationContext.finishingDefinition.setter(v41, v42, v43);
  }

  swift_beginAccess();
  v44 = *(v4 + 2);
  v45 = *(*v4 + 112);
  swift_beginAccess();
  v46 = *(v11 + 16);
  v64 = v45;
  v63 = v46;
  v46(v19, &v4[v45], v9);

  v47 = v72;
  Animation.animate<A>(value:time:context:)(v19, v75, v44, v9, v39, v72, v37);

  v65 = *(v11 + 8);
  v65(v19, v9);
  v48 = (*(v11 + 48))(v47, 1, v9);
  v49 = v74;
  v50 = v73;
  if (v48 != 1)
  {
    v51 = v47;
    v52 = v70;
    (*(v11 + 32))(v70, v51, v9);
    AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v76, v66 | (v67 << 32), v37);
    *(v4 + 3) = v75[0];

    dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
    v63(v19, &v4[v64], v9);
    dispatch thunk of static AdditiveArithmetic.-= infix(_:_:)();
    v53 = v65;
    v65(v19, v9);
    v54 = *(*v4 + 144);
    swift_beginAccess();
    (*(v11 + 24))(&v4[v54], v52, v9);
    swift_endAccess();
    v55 = v71;
    *&v4[v71] = v20;
    v56 = v68;
    v57 = *&v4[v68];
    if (v57 <= 0.0)
    {
      v53(v52, v9);
    }

    else
    {
      v58 = round(v20 / v57);
      v59 = v9;
      v60 = v55;
      v53(v52, v59);
      *&v4[v60] = (v58 + 1.0) * *&v4[v56];
    }

    return 0;
  }

  (*(v50 + 8))(v47, v49);
  return 1;
}

uint64_t AnimationContext.init(state:environment:isLogicallyComplete:)@<X0>(uint64_t *a1@<X0>, char a2@<W2>, uint64_t a3@<X8>)
{
  v5 = *a1;
  result = AGCreateWeakAttribute();
  *a3 = v5;
  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  *(a3 + 17) = a2;
  return result;
}

void BezierAnimation.animate<A>(value:time:context:)(float64x2_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>, Swift::Double a5@<D0>)
{
  if (a2 == MEMORY[0x1E69E63B0])
  {
    v15 = *v5 <= 0.0 || *v5 < a5;
    v16 = 0.0;
    if (!v15)
    {
      v18 = *(v5 + 40);
      v17 = *(v5 + 48);
      v19 = *(v5 + 24);
      v20 = *(v5 + 32);
      v21 = a1->f64[0];
      v22 = a5 / *v5;
      if (v22 > 1.0)
      {
        v22 = 1.0;
      }

      *v38 = *(v5 + 8);
      *&v38[16] = v19;
      *&v39 = v20;
      if (v22 <= 0.0)
      {
        v22 = 0.0;
      }

      *(&v39 + 1) = v18;
      v40[0] = v17;
      v23 = UnitCurve.CubicSolver.solveX(_:epsilon:)(v22, 0.000000953674316);
      v16 = v21 * (round(v23 * (v17 + v23 * (v18 + v20 * v23)) * 1048576.0) * 0.000000953674316);
    }

    *a4 = v16;
    *(a4 + 8) = v15;
  }

  else
  {
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    v11 = *v5;
    if (v12 == a2)
    {
      v24 = v11 <= 0.0 || v11 < a5;
      v25 = 0uLL;
      v26 = 0uLL;
      if (!v24)
      {
        v28 = *(v5 + 40);
        v27 = *(v5 + 48);
        v29 = *(v5 + 24);
        v30 = *(v5 + 32);
        v31 = a5 / v11;
        if (v31 > 1.0)
        {
          v31 = 1.0;
        }

        if (v31 <= 0.0)
        {
          v31 = 0.0;
        }

        *v38 = *(v5 + 8);
        *&v38[16] = v29;
        *&v39 = v30;
        *(&v39 + 1) = v28;
        v40[0] = v27;
        v32 = *a1;
        v36 = a1[1];
        v37 = v32;
        v33 = UnitCurve.CubicSolver.solveX(_:epsilon:)(v31, 0.000000953674316);
        v34 = round(v33 * (v27 + v33 * (v28 + v30 * v33)) * 1048576.0) * 0.000000953674316;
        v25 = vmulq_n_f64(v37, v34);
        v26 = vmulq_n_f64(v36, v34);
      }

      *a4 = v25;
      *(a4 + 16) = v26;
      *(a4 + 32) = v24;
    }

    else
    {
      *v38 = *v5;
      *&v38[8] = *(v5 + 8);
      v39 = *(v5 + 24);
      *v40 = *(v5 + 40);
      v41 = BezierAnimation.fraction(for:)(a5);
      *v38 = *&v41.is_nil;
      v38[8] = v13 & 1;
      MEMORY[0x1EEE9AC00](*&v41.is_nil);
      v35[2] = a2;
      v35[3] = a3;
      v35[4] = a1;
      type metadata accessor for Double?();
      _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in BezierAnimation.animate<A>(value:time:context:), v35, MEMORY[0x1E69E73E0], a2, v14, a4);
    }
  }
}

Swift::Double_optional __swiftcall BezierAnimation.fraction(for:)(Swift::Double a1)
{
  if (*v1 <= 0.0 || *v1 < a1)
  {
    v3 = 0;
  }

  else
  {
    v5 = v1[5];
    v4 = v1[6];
    v6 = v1[4];
    v7 = a1 / *v1;
    if (v7 > 1.0)
    {
      v7 = 1.0;
    }

    if (v7 <= 0.0)
    {
      v7 = 0.0;
    }

    v8 = UnitCurve.CubicSolver.solveX(_:epsilon:)(v7, 0.000000953674316);
    a1 = round(v8 * (v4 + v8 * (v5 + v6 * v8)) * 1048576.0) * 0.000000953674316;
    v3 = LOBYTE(a1);
  }

  result.value = a1;
  result.is_nil = v3;
  return result;
}

double UnitCurve.CubicSolver.solveX(_:epsilon:)(double result, double a2)
{
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = (v5 + (v4 + *v2 * result) * result) * result;
  if (vabdd_f64(v6, result) >= a2)
  {
    v7 = v3 * 3.0;
    v8 = v4 + v4;
    v9 = v5 + (v4 + v4 + v3 * 3.0 * result) * result;
    if (fabs(v9) < a2 || (v10 = result - (v6 - result) / v9, v16 = v10 * (v5 + v10 * (v4 + v3 * v10)), vabdd_f64(v16, result) >= a2) && ((v17 = v5 + v10 * (v8 + v7 * v10), fabs(v17) < a2) || (v10 = v10 - (v16 - result) / v17, v18 = v10 * (v5 + v10 * (v4 + v3 * v10)), vabdd_f64(v18, result) >= a2) && ((v19 = v5 + v10 * (v8 + v7 * v10), fabs(v19) < a2) || (v10 = v10 - (v18 - result) / v19, v20 = v10 * (v5 + v10 * (v4 + v3 * v10)), vabdd_f64(v20, result) >= a2) && ((v21 = v5 + v10 * (v8 + v7 * v10), fabs(v21) < a2) || (v10 = v10 - (v20 - result) / v21, v22 = v10 * (v5 + v10 * (v4 + v3 * v10)), vabdd_f64(v22, result) >= a2) && ((v23 = v5 + v10 * (v8 + v7 * v10), fabs(v23) < a2) || (v10 = v10 - (v22 - result) / v23, v24 = v10 * (v5 + v10 * (v4 + v3 * v10)), vabdd_f64(v24, result) >= a2) && ((v25 = v5 + v10 * (v8 + v7 * v10), fabs(v25) < a2) || (v10 = v10 - (v24 - result) / v25, v26 = v10 * (v5 + v10 * (v4 + v3 * v10)), vabdd_f64(v26, result) >= a2) && ((v27 = v5 + v10 * (v8 + v7 * v10), fabs(v27) < a2) || (v10 = v10 - (v26 - result) / v27, vabdd_f64(v10 * (v5 + v10 * (v4 + v3 * v10)), result) >= a2))))))))
    {
      v10 = 0.0;
      if (result >= 0.0)
      {
        v10 = 1.0;
        if (result <= 1.0)
        {
          v11 = 1.0;
          v12 = 0.0;
          v13 = 1024;
          v10 = result;
          do
          {
            v14 = v10 * (v5 + v10 * (v4 + v3 * v10));
            if (vabdd_f64(v14, result) < a2)
            {
              break;
            }

            if (v14 - result >= 0.0)
            {
              v11 = v10;
            }

            else
            {
              v12 = v10;
            }

            v15 = v12 < v11 && v13-- > 1;
            v10 = v12 + (v11 - v12) * 0.5;
          }

          while (v15);
        }
      }
    }

    return v10;
  }

  return result;
}

void type metadata accessor for Double?()
{
  if (!lazy cache variable for type metadata for Double?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Double?);
    }
  }
}

uint64_t partial apply for closure #1 in BezierAnimation.animate<A>(value:time:context:)@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = *a1;
  (*(*(v3 - 8) + 16))(a2, v2[4], v3);
  return (*(v4 + 16))(v3, v4, v5);
}

uint64_t AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(char a1, unint64_t a2, double a3)
{
  v4 = v3;
  v8 = *v4;
  v9 = type metadata accessor for AnimatorState.Fork();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v40 = &v35 - v11;
  v12 = type metadata accessor for IndexSet();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v42 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v8 + 184);
  v16 = *(v4 + v15);
  v41 = v10;
  if (v16 & 1) == 0 && (a1)
  {
    *(v4 + v15) = a1 & 1;
    v17 = *(*v4 + 176);
    swift_beginAccess();
    v18 = *(v4 + v17);
    if (v18 >> 62)
    {
      goto LABEL_37;
    }

    result = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }
  }

  while (2)
  {
    while (2)
    {
      v17 = *(*v4 + 200);
      swift_beginAccess();
      v43 = *(v4 + v17);
      v24 = type metadata accessor for Array();
      swift_getWitnessTable();
      result = Collection.isEmpty.getter();
      if (result)
      {
        return result;
      }

      v35 = v13;
      v36 = v12;
      IndexSet.init()();
      v45 = *(v4 + v17);
      swift_getWitnessTable();
      result = RandomAccessCollection<>.indices.getter();
      v13 = v43;
      v25 = v44;
      v12 = v24;
      if (v43 == v44)
      {
LABEL_17:
        swift_beginAccess();
        WitnessTable = swift_getWitnessTable();
        v27 = swift_getWitnessTable();
        v28 = v42;
        RangeReplaceableCollection<>.remove(atOffsets:)(v42, v12, WitnessTable, v27);
        swift_endAccess();
        return (*(v35 + 8))(v28, v36);
      }

      if (v44 < v43)
      {
        __break(1u);
        goto LABEL_42;
      }

      v38 = v24;
      v39 = (v10 + 8);
      a2 = a2 | ((HIDWORD(a2) & 1) << 32);
      v37 = a2;
      while (v13 < v25)
      {
        swift_beginAccess();
        Array._makeMutableAndUnique()();
        Array._checkSubscript_mutating(_:)(v13);
        v29 = AnimatorState.Fork.update(time:environment:)(a3, a2, v9);
        _ViewInputs.base.modify(v12, v30);
        swift_endAccess();
        if ((v29 & 1) == 0)
        {
          goto LABEL_22;
        }

        swift_beginAccess();
        v12 = v40;
        Array.subscript.getter();
        v31 = *(v12 + *(v9 + 48));
        swift_endAccess();
        a2 = v39;
        v32 = *v39;

        v10 = v9;
        v32(v12, v9);
        if (v31 >> 62)
        {
          v9 = __CocoaSet.count.getter();
          if (v9)
          {
LABEL_27:
            if (v9 < 1)
            {
              goto LABEL_36;
            }

            for (i = 0; i != v9; ++i)
            {
              if ((v31 & 0xC000000000000001) != 0)
              {
                v34 = MEMORY[0x193AC03C0](i, v31);
              }

              else
              {
                v34 = *(v31 + 8 * i + 32);
              }

              (*(*v34 + 96))();
            }
          }
        }

        else
        {
          v9 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v9)
          {
            goto LABEL_27;
          }
        }

        IndexSet.insert(_:)(v13);
        v9 = v10;
        v10 = v41;
        a2 = v37;
        v12 = v38;
LABEL_22:
        if (++v13 == v25)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      result = __CocoaSet.count.getter();
      if (!result)
      {
        continue;
      }

      break;
    }

LABEL_5:
    v20 = *(v4 + v17);
    if (!(v20 >> 62))
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v21)
      {
        goto LABEL_7;
      }

LABEL_14:
      *(v4 + v17) = MEMORY[0x1E69E7CC0];

      v10 = v41;
      continue;
    }

    break;
  }

  result = __CocoaSet.count.getter();
  v21 = result;
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_7:
  v39 = v9;
  if (v21 >= 1)
  {

    for (j = 0; j != v21; ++j)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x193AC03C0](j, v20);
      }

      else
      {
        v23 = *(v20 + 8 * j + 32);
      }

      (*(*v23 + 96))();
    }

    v9 = v39;
    goto LABEL_14;
  }

LABEL_42:
  __break(1u);
  return result;
}

void *specialized ImageRendererHost.content.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 232);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 24))(v1 + v4, a1);
  swift_endAccess();
  return ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)(1u, 1, *v1, &protocol witness table for ImageRendererHost<A>);
}

Swift::Void __swiftcall AnimatorState.nextUpdate()()
{
  AGGraphGetCurrentAttribute();
  v1 = *(*v0 + 136);
  if (one-time initialization token for enabledCategories != -1)
  {
    swift_once();
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 1090;
    type metadata accessor for (AGAttribute?, Double)();
    AGGraphAddTraceEvent();
  }

  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v2 = swift_dynamicCastClassUnconditional();
  v3 = *(v0 + v1);
  swift_beginAccess();
  v4 = *(v2 + 376);
  if (v3 < v4)
  {
    v4 = v3;
  }

  *(v2 + 376) = v4;

  specialized static GraphHost.currentHost.getter();
  swift_dynamicCastClassUnconditional();
  v5 = *(v0 + *(*v0 + 128));
  v6 = (v0 + *(*v0 + 152));
  v7 = *v6;
  v8 = *(v6 + 4);
  swift_beginAccess();
  v9 = v7 | (v8 << 32);
  ViewGraph.NextUpdate.interval(_:reason:)(v5, v9);
  swift_endAccess();
}

__n128 GraphicsContext.ResolvedShading.init(_:)@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[5];
  v48 = a1[4];
  v49 = v4;
  v50 = a1[6];
  v51 = *(a1 + 14);
  v5 = a1[1];
  v44 = *a1;
  v45 = v5;
  v6 = a1[3];
  v46 = a1[2];
  v47 = v6;
  if (BYTE5(v4))
  {
    goto LABEL_19;
  }

  v7 = DWORD1(v44);
  v22 = DWORD2(v44);
  v23 = v45;
  v8 = v44;
  v9 = *(&v44 + 3);
  if (BYTE8(v50) == 255)
  {
    if (one-time initialization token for normal != -1)
    {
      swift_once();
    }

    v10 = static GraphicsBlendMode.normal;
    v11 = byte_1ED52F818;
    outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
  }

  else
  {
    v10 = v50;
    v11 = BYTE8(v50);
  }

  outlined copy of GraphicsBlendMode?(v50, SBYTE8(v50));
  if (one-time initialization token for normal != -1)
  {
    swift_once();
  }

  v12 = static GraphicsBlendMode.normal;
  v13 = byte_1ED52F818;
  if (v11)
  {
    if (byte_1ED52F818)
    {
      swift_unknownObjectRetain();
      outlined consume of GraphicsBlendMode(v10, 1);
      outlined consume of GraphicsBlendMode(v12, 1);
      if (v10 != v12)
      {
        goto LABEL_19;
      }

      goto LABEL_15;
    }

    swift_unknownObjectRetain();
LABEL_18:
    outlined copy of GraphicsBlendMode(v12, v13);
    outlined consume of GraphicsBlendMode(v10, v11 & 1);
    outlined consume of GraphicsBlendMode(v12, v13);
    outlined consume of GraphicsBlendMode(v10, v11 & 1);
    goto LABEL_19;
  }

  if (byte_1ED52F818)
  {
    goto LABEL_18;
  }

  outlined consume of GraphicsBlendMode(v10, 0);
  outlined consume of GraphicsBlendMode(v12, 0);
  if (v10 != v12)
  {
LABEL_19:
    v14 = a1[5];
    v28 = a1[4];
    v29 = v14;
    v30 = a1[6];
    *&v31 = *(a1 + 14);
    v15 = a1[1];
    v24 = *a1;
    v25 = v15;
    v16 = a1[3];
    v26 = a1[2];
    v27 = v16;
    _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi3_(&v24);
    goto LABEL_20;
  }

LABEL_15:
  if (*(v51 + 16))
  {
    goto LABEL_19;
  }

  outlined destroy of _ShapeStyle_Pack.Style(&v44);
  *&v24 = __PAIR64__(v7, v8);
  DWORD2(v24) = v22;
  *(&v24 + 3) = *(&v49 + 2) * v9;
  LODWORD(v25) = v23;
  _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi0_(&v24);
LABEL_20:
  v43 = v34;
  v39 = v28;
  v40 = v29;
  v41 = v30;
  v42 = v31;
  v35 = v24;
  v36 = v25;
  v37 = v26;
  v38 = v27;
  v17 = v33;
  *(a2 + 128) = v32;
  *(a2 + 144) = v17;
  *(a2 + 160) = v43;
  v18 = v40;
  *(a2 + 64) = v39;
  *(a2 + 80) = v18;
  v19 = v42;
  *(a2 + 96) = v41;
  *(a2 + 112) = v19;
  v20 = v36;
  *a2 = v35;
  *(a2 + 16) = v20;
  result = v38;
  *(a2 + 32) = v37;
  *(a2 + 48) = result;
  return result;
}

uint64_t GraphicsContext.resolveSymbol<A>(id:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v5 = *(*(a2 + 16) + 24);
  if (v5)
  {
    v8 = result;
    v9 = *(*v5 + 80);

    v9(v8, a3, a4);
  }

  else
  {
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
  }

  return result;
}

Swift::Void __swiftcall Path.addLine(to:)(CGPoint to)
{

  Path.move(to:)(1u, to.x, to.y);
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, unint64_t a2, unint64_t a3, __int16 a4, char a5, double a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4, a6);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = v14[3];
  if (v22 < v20 || (a5 & 1) == 0)
  {
    if (v22 >= v20 && (a5 & 1) == 0)
    {
      v23 = v15;
      specialized _NativeDictionary.copy()();
      v15 = v23;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a5 & 1);
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4, a6);
    if ((v21 & 1) != (v24 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v25 = *v7;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;

    return swift_unknownObjectRelease();
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v15, a2, a3, a4, a1, v25, a6);
  }
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unint64_t a1, unint64_t a2, __int16 a3, double a4)
{
  v8 = HIDWORD(a1);
  v9 = HIDWORD(a2);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(a3);
  v10 = 0.0;
  if (a4 != 0.0)
  {
    v10 = a4;
  }

  MEMORY[0x193AC11E0](*&v10);
  v11 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, a3, v11, a4);
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, void *a6, double a7)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v7 = a6[6] + 32 * result;
  *v7 = a2;
  *(v7 + 8) = a3;
  *(v7 + 16) = a4;
  *(v7 + 24) = a7;
  *(a6[7] + 8 * result) = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, double a5)
{
  v7 = -1 << *(v5 + 32);
  result = a4 & ~v7;
  if ((*(v5 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v9 = ~v7;
    do
    {
      v10 = *(v5 + 48) + 32 * result;
      v11 = *(v10 + 24);
      v16 = *v10 == a1 && *(v10 + 4) == HIDWORD(a1) && *(v10 + 8) == a2 && *(v10 + 12) == HIDWORD(a2) && a3 == *(v10 + 16);
      if (v11 != a5)
      {
        v16 = 0;
      }

      if (v16)
      {
        break;
      }

      result = (result + 1) & v9;
    }

    while (((*(v5 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

double GraphicsContext.userToDeviceScale.getter()
{
  RBDrawingStateGetCTM();
  v0 = vaddvq_f64(vmulq_f64(v10, v10));
  v1 = vmulq_f64(v11, v11);
  v2 = vaddq_f64(v1, vdupq_laneq_s64(v1, 1)).f64[0];
  v3 = v2 == 1.0 && v0 == 1.0;
  v4 = (sqrt(v0) + sqrt(v2)) * 0.5;
  if (v3)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = v4;
  }

  v6 = RBDrawingStateGetDisplayList();
  [v6 deviceScale];
  v8 = v7;

  return v8 * v5;
}

uint64_t GraphicsContext.transform.setter()
{
  RBDrawingStateGetCTM();
  result = static CGAffineTransform.== infix(_:_:)();
  if ((result & 1) == 0)
  {
    GraphicsContext.copyOnWrite()();
    return RBDrawingStateSetCTM();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlatformNamedImageRepresentableContext(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18D2655EC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t assignWithTake for Text.Sizing(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t closure #1 in CanvasSymbols.updateValue()(void *a1, uint64_t a2, char **a3)
{
  v6 = a1[3];
  v39 = a1[2];
  v40 = v6;

  _ViewList_ID.Canonical.init(id:)(&v39, &v41);
  v7 = v41;
  v8 = DWORD1(v41);
  v9 = *(&v41 + 1);
  v10 = *(a2 + 104);
  v11 = v41 | (DWORD1(v41) << 32);
  if (!*(v10 + 16) || (v12 = specialized __RawDictionaryStorage.find<A>(_:)(v41 | (DWORD1(v41) << 32), *(&v41 + 1)), (v13 & 1) == 0))
  {
    v31 = AGSubgraphGetGraph();
    v32 = AGSubgraphCreate();

    AGSubgraphAddChild();
    AGGraphClearUpdate();
    v33 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    closure #1 in closure #1 in CanvasSymbols.updateValue()(a2, a1, v32, v11, v9, a3);
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();

    return 1;
  }

  v38 = a3;
  v14 = *(v10 + 56) + 48 * v12;
  v15 = *v14;
  v16 = *(v14 + 8);
  v17 = *(v14 + 40);
  v18 = *(a2 + 112);
  if (*(v14 + 16) != v18)
  {
    v20 = *(v14 + 32);
    v19 = *(v14 + 36);
    v21 = a1[10];

    *&v41 = v15;
    *(&v41 + 1) = v16;
    v42 = v18;
    v43 = v21;
    v44 = v20;
    v45 = v19;
    v37 = v19;
    v46 = v17;

    v22 = v15;
    outlined init with copy of CanvasSymbols.Child(&v41, &v39);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = *(a2 + 104);
    *(a2 + 104) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v41, v11, v9, isUniquelyReferenced_nonNull_native);

    *(a2 + 104) = v39;
    v24 = *v38;
    v25 = v22;

    v26 = swift_isUniquelyReferenced_nonNull_native();
    *v38 = v24;
    if ((v26 & 1) == 0)
    {
      v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 2) + 1, 1, v24);
      *v38 = v24;
    }

    v28 = *(v24 + 2);
    v27 = *(v24 + 3);
    if (v28 >= v27 >> 1)
    {
      *v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v24);
    }

    v29 = *v38;
    *(v29 + 2) = v28 + 1;
    v30 = &v29[48 * v28];
    *(v30 + 4) = v25;
    *(v30 + 5) = v16;
    *(v30 + 12) = v18;
    *(v30 + 7) = v21;
    *(v30 + 16) = v20;
    *(v30 + 17) = v37;
    *(v30 + 9) = v17;

    return 1;
  }

  *&v41 = 0;
  *(&v41 + 1) = 0xE000000000000000;

  v35 = v15;
  _StringGuts.grow(_:)(33);

  *&v41 = 0xD00000000000001FLL;
  *(&v41 + 1) = 0x800000018DD83230;
  v39 = __PAIR64__(v8, v7);
  v40 = v9;
  v36 = _ViewList_ID.Canonical.description.getter();
  MEMORY[0x193ABEDD0](v36);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}
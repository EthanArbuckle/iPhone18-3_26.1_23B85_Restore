Swift::Void __swiftcall DisplayList.ViewUpdater.ViewCache.reclaim(time:)(SwiftUI::Time time)
{
  v3 = v2;
  v4 = *v1;
  v5 = *(v2 + 16);
  v8 = *(v5 + 56);
  v7 = v5 + 56;
  v6 = v8;
  v9 = 1 << *(*(v2 + 16) + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  v53 = *(v2 + 16);

  v13 = 0;
  while (v11)
  {
    v14 = v11;
LABEL_10:
    v11 = (v14 - 1) & v14;
    v16 = *v3;
    if (*(*v3 + 16))
    {
      v17 = *(v53 + 48) + 20 * (__clz(__rbit64(v14)) | (v13 << 6));
      v18 = *(v17 + 16);
      v19 = *v17;
      v20 = *(v17 + 8);
      v21 = *(v17 + 17) ? 256 : 0;
      v22 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v20, v21 | v18);
      if (v23)
      {
        v24 = (*(v16 + 56) + (v22 << 7));
        v25 = v24[4];
        v26 = v24[5];
        v27 = v24[6];
        v63 = v24[7];
        v29 = v24[2];
        v28 = v24[3];
        v30 = v24[1];
        v56 = *v24;
        v57 = v30;
        v58 = v29;
        v59 = v28;
        v61 = v26;
        v62 = v27;
        v60 = v25;
        if (v63 == 1)
        {
          v31 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v20, v21 | v18);
          if (v32)
          {
            v33 = v31;
            outlined init with copy of DisplayList.ViewUpdater.ViewInfo(&v56, v55);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v35 = *v3;
            v54 = *v3;
            if (!isUniquelyReferenced_nonNull_native)
            {
              specialized _NativeDictionary.copy()();
              v35 = v54;
            }

            v36 = (*(v35 + 56) + (v33 << 7));
            v38 = v36[2];
            v37 = v36[3];
            v39 = v36[1];
            v55[0] = *v36;
            v55[1] = v39;
            v55[2] = v38;
            v55[3] = v37;
            v40 = v36[4];
            v41 = v36[5];
            v42 = v36[7];
            v55[6] = v36[6];
            v55[7] = v42;
            v55[4] = v40;
            v55[5] = v41;
            outlined destroy of DisplayList.ViewUpdater.ViewInfo(v55);
            specialized _NativeDictionary._delete(at:)(v33, v35);
            *v3 = v35;
          }

          else
          {
            outlined init with copy of DisplayList.ViewUpdater.ViewInfo(&v56, v55);
          }

          v43 = *(&v56 + 1);
          v44 = specialized __RawDictionaryStorage.find<A>(_:)(*(&v56 + 1));
          if (v45)
          {
            v46 = v44;
            v47 = swift_isUniquelyReferenced_nonNull_native();
            v48 = *(v3 + 8);
            *&v55[0] = v48;
            if (!v47)
            {
              specialized _NativeDictionary.copy()();
              v48 = *&v55[0];
            }

            specialized _NativeDictionary._delete(at:)(v46, v48);
            *(v3 + 8) = v48;
          }

          v49 = v60;
          if (v60 <= 0x12u && ((1 << v60) & 0x57C21) != 0)
          {
            v50 = v56;
            *&v55[0] = v56;
            DisplayList.ViewUpdater.ViewCache.removeChildren(platform:container:)(v55, *(&v57 + 1));
            if (v49 == 14)
            {
              v51 = CoreViewMaskView(v50 & 3, v43);
              if (v51)
              {
                *&v55[0] = v50;
                DisplayList.ViewUpdater.ViewCache.removeChildren(platform:container:)(v55, v51);
                swift_unknownObjectRelease();
              }
            }
          }

          outlined destroy of DisplayList.ViewUpdater.ViewInfo(&v56);
        }
      }
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      return;
    }

    if (v15 >= v12)
    {
      break;
    }

    v14 = *(v7 + 8 * v15);
    ++v13;
    if (v14)
    {
      v13 = v15;
      goto LABEL_10;
    }
  }

  *(v3 + 16) = MEMORY[0x1E69E7CD0];
  if (*(*(v3 + 24) + 16))
  {
    v52 = specialized _NativeDictionary.filter(_:)(*(v3 + 24), v4);

    *(v3 + 24) = v52;
  }

  ++*(v3 + 84);
}

unint64_t type metadata accessor for ViewGraphRenderObserver()
{
  result = lazy cache variable for type metadata for ViewGraphRenderObserver;
  if (!lazy cache variable for type metadata for ViewGraphRenderObserver)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for ViewGraphRenderObserver);
  }

  return result;
}

void type metadata accessor for Date?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void _s10Foundation4DateVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s10Foundation4DateVSgMaTm_1(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void _s10Foundation4DateVSgMaTm_2(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
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

void _s10Foundation4DateVSgMaTm_3(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s10Foundation4DateVSgMaTm_4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void _s10Foundation4DateVSgMaTm_5(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for (DisplayList, DisplayList.Version)()
{
  if (!lazy cache variable for type metadata for (DisplayList, DisplayList.Version))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (DisplayList, DisplayList.Version));
    }
  }
}

uint64_t destroy for AsyncTransaction()
{
}

uint64_t DisplayList.ViewUpdater.render(rootView:from:time:version:maxVersion:environment:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, double *a3@<X2>, unint64_t *a4@<X3>, uint64_t *a5@<X4>, void *a6@<X5>, double *a7@<X8>)
{
  v8 = v7;
  v9 = result;
  v96 = *MEMORY[0x1E69E9840];
  v11 = *a2;
  v12 = *(a2 + 4);
  v13 = *(a2 + 3);
  v14 = *a3;
  v15 = *a4;
  v16 = *a5;
  if (*a6 != *(v7 + 160))
  {
    *(v7 + 160) = *a6;
    *(v7 + 192) = 0;
    swift_beginAccess();
    DisplayList.ViewUpdater.ViewCache.invalidateAll()();
    result = swift_endAccess();
    *(v7 + 144) = 0;
  }

  if (*(v7 + 192) != 1)
  {
LABEL_9:
    DisplayList.ViewUpdater.effectiveRootPlatform.getter(&v84);
    v18 = v84;
    if (*(v7 + 184) == 0.0)
    {
      v19 = CoreViewLayer(v84 & 3, v9);
      [v19 setAllowsGroupOpacity_];
      [v19 setAllowsGroupBlending_];
    }

    if (v15)
    {
      v20 = (2 * ((33 * (v15 >> 16)) ^ v15)) | 1;
    }

    else
    {
      LOWORD(v20) = 0;
    }

    *(v8 + 144) = v20;
    *(v8 + 146) = v20;
    *(v8 + 193) = *(v8 + 192);
    *(v8 + 192) = 1;
    *(v8 + 168) = v11;
    *(v8 + 176) = v12;
    *(v8 + 180) = v13;

    *(v8 + 184) = v14;
    swift_beginAccess();
    value = printTree.value;
    v58 = a7;
    if (printTree.value == 2)
    {
      v22 = getenv("SWIFTUI_PRINT_TREE");
      if (!v22)
      {
        printTree.value = 0;
        swift_endAccess();
        goto LABEL_21;
      }

      v23 = atoi(v22);
      printTree.value = v23 != 0;
      swift_endAccess();
      if (!v23)
      {
LABEL_21:
        v26 = *(v8 + 160);
        v64[0] = v8;
        *&v64[1] = v14;
        v64[2] = v16;
        v64[3] = v26;
        v27 = one-time initialization token for normal;

        if (v27 != -1)
        {
          swift_once();
        }

        v28 = static GraphicsBlendMode.normal;
        v29 = byte_1ED52F818;
        *&v84 = v64;
        DWORD2(v84) = 1065353216;
        *&v85 = static GraphicsBlendMode.normal;
        BYTE8(v85) = byte_1ED52F818;
        v86 = 0x3FF0000000000000uLL;
        *&v87 = 0;
        *(&v87 + 1) = 0x3FF0000000000000;
        v88 = 0uLL;
        *&v89 = MEMORY[0x1E69E7CC0];
        *(&v89 + 1) = MEMORY[0x1E69E7CC0];
        *&v90 = 0;
        *(&v90 + 7) = 0;
        *&v91 = 0xF000000000000007;
        *(&v91 + 1) = MEMORY[0x1E69E7CC0];
        v95 = 0;
        v93 = 0u;
        v94 = 0u;
        v92 = 0u;
        swift_beginAccess();
        *(v8 + 104) = 0;
        *(v8 + 112) = 0;
        *(v8 + 120) = 0;
        *(v8 + 128) = v11;
        *(v8 + 136) = v12;
        *(v8 + 140) = v13;

        outlined copy of GraphicsBlendMode(v28, v29);

        DisplayList.ViewUpdater.ViewCache.clearAsyncValues()();
        swift_endAccess();
        v30 = CoreViewLayer(v18 & 3, v9);
        v57 = [v30 needsLayoutOnGeometryChange];
        [v30 setNeedsLayoutOnGeometryChange_];
        v62 = INFINITY;
        v63 = 0;
        v59 = v18;
        v60 = v9;
        v61 = 0;
        v31 = *(v11 + 16);
        if (v31)
        {
          v56 = v30;
          v32 = (v11 + 32);
          swift_unknownObjectRetain();
          do
          {
            v65 = *v32;
            v33 = v32[1];
            v34 = v32[2];
            v35 = v32[3];
            *(v68 + 12) = *(v32 + 60);
            v67 = v34;
            v68[0] = v35;
            v66 = v33;
            *&v83[12] = *(v32 + 60);
            v81 = v32[1];
            v82 = v32[2];
            *v83 = v32[3];
            v80 = *v32;
            v36 = *&v83[24];
            swift_beginAccess();
            if (v36)
            {
              v37 = 0;
              v38 = *(v8 + 104);
              v39 = *(v8 + 108);
              v40 = *(v8 + 112);
              v41 = *(v8 + 120);
              v42 = 1;
              *(v8 + 104) = v36;
            }

            else
            {
              v42 = 0;
              v38 = *(v8 + 104);
              v37 = *(v8 + 108) + 1;
              v40 = *(v8 + 112);
              v41 = *(v8 + 120);
              v39 = v37;
            }

            *(v8 + 108) = v37;
            *(v8 + 120) = v42;
            *&v74[0] = v59;
            outlined init with copy of DisplayList.Item(&v65, v78);
            outlined init with copy of DisplayList.Item(&v65, v78);
            DisplayList.ViewUpdater.ViewCache.prepare(item:platform:parentState:)(&v80, v74, &v84, v78);
            swift_endAccess();
            v43 = *v78;
            if (*v78 >= v62)
            {
              v43 = v62;
            }

            v62 = v43;
            v74[1] = v81;
            v74[2] = v82;
            v75[0] = *v83;
            *(v75 + 12) = *&v83[12];
            v74[0] = v80;
            v72 = v82;
            v73[0] = *v83;
            *(v73 + 12) = *&v83[12];
            v70 = v80;
            v71 = v81;
            outlined init with copy of DisplayList.Item(v74, v78);
            DisplayList.ViewUpdater.updateInheritedView(container:from:parentState:)(&v59, &v70, &v84);
            outlined destroy of DisplayList.Item(&v65);
            v76[2] = v72;
            v77[0] = v73[0];
            *(v77 + 12) = *(v73 + 12);
            v76[0] = v70;
            v76[1] = v71;
            outlined destroy of DisplayList.Item(v76);
            v78[2] = v82;
            v79[0] = *v83;
            *(v79 + 12) = *&v83[12];
            v78[0] = v80;
            v78[1] = v81;
            outlined destroy of DisplayList.Item(v78);
            v44 = *(v8 + 120);
            if ((v44 & 0xC) != 0)
            {
              v45 = *(v8 + 104);
              if ((*(v8 + 120) & 4) != 0)
              {
                *(v8 + 104) = *(v8 + 112);
              }

              if ((v44 & 8) != 0)
              {
                *(v8 + 112) = v45;
              }
            }

            if (v44)
            {
              *(v8 + 104) = v38;
              *(v8 + 108) = v39;
            }

            if ((v44 & 2) != 0)
            {
              *(v8 + 112) = v40;
            }

            *(v8 + 120) = v41;
            v32 += 5;
            --v31;
          }

          while (v31);
          v18 = v59;
          v9 = v60;
          v46 = v61;
          v47 = *&v62;
          v48 = v63;
          v30 = v56;
        }

        else
        {
          swift_unknownObjectRetain();
          v48 = 0;
          v46 = 0;
          v47 = 0x7FF0000000000000;
        }

        *&v65 = v18;
        *(&v65 + 1) = v9;
        *&v66 = v46;
        *(&v66 + 1) = v47;
        *&v67 = v48;
        swift_beginAccess();
        swift_unknownObjectRetain();
        DisplayList.ViewUpdater.Container.removeRemaining(viewCache:)((v8 + 40));
        swift_endAccess();
        swift_unknownObjectRelease();
        *&v80 = v14;
        swift_beginAccess();
        DisplayList.ViewUpdater.ViewCache.reclaim(time:)(v49);
        *(v8 + 128) = MEMORY[0x1E69E7CC0];
        *(v8 + 136) = 0;
        *(v8 + 140) = 0;
        swift_endAccess();

        if ((*(v8 + 192) & 1) == 0)
        {
          v62 = v14;
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          v50 = *(v8 + 32);
          ObjectType = swift_getObjectType();
          v52 = type metadata accessor for ViewGraphRenderObserver();
          (*(*(*(v50 + 16) + 8) + 16))(&v65, v52, v52, ObjectType);
          swift_unknownObjectRelease();
          if (*(&v66 + 1))
          {
            outlined init with take of AnyTrackedValue(&v65, &v80);
            v53 = *(&v81 + 1);
            v54 = v82;
            __swift_project_boxed_opaque_existential_1(&v80, *(&v81 + 1));
            (*(v54 + 8))(v53, v54);
            __swift_destroy_boxed_opaque_existential_1(&v80);
LABEL_49:
            v55 = v62;
            swift_unknownObjectRelease();
            *(v8 + 152) = v55;
            *v58 = v55;
            [v30 setNeedsLayoutOnGeometryChange_];

            v68[5] = v92;
            v68[6] = v93;
            v68[7] = v94;
            v69 = v95;
            v68[1] = v88;
            v68[2] = v89;
            v68[3] = v90;
            v68[4] = v91;
            v65 = v84;
            v66 = v85;
            v67 = v86;
            v68[0] = v87;
            return outlined destroy of DisplayList.ViewUpdater.Model.State(&v65);
          }
        }

        else
        {
          *&v67 = 0;
          v65 = 0u;
          v66 = 0u;
        }

        outlined destroy of (DisplayList.Item.Value, DisplayList.Item.Value)(&v65, type metadata accessor for ViewGraphRenderObserver?);
        goto LABEL_49;
      }
    }

    else
    {
      swift_endAccess();
      if (!value)
      {
        goto LABEL_21;
      }
    }

    type metadata accessor for _ContiguousArrayStorage<Any>();
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_18DDA6EB0;
    *&v84 = 0;
    *(&v84 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(17);
    MEMORY[0x193ABEDD0](0x2077656956, 0xE500000000000000);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x193ABEDD0](544497952, 0xE400000000000000);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x193ABEDD0](2618, 0xE200000000000000);
    *&v65 = v11;
    WORD4(v65) = v12;
    HIDWORD(v65) = v13;
    DisplayList.description.getter();
    MEMORY[0x193ABEDD0]();

    v25 = v84;
    *(v24 + 56) = MEMORY[0x1E69E6158];
    *(v24 + 32) = v25;
    print(_:separator:terminator:)();

    goto LABEL_21;
  }

  if (v15)
  {
    if (*(v7 + 144) != ((2 * ((33 * WORD1(v15)) ^ v15)) | 1))
    {
      goto LABEL_9;
    }
  }

  else if (*(v7 + 144))
  {
    goto LABEL_9;
  }

  v17 = *(v7 + 152);
  if (v17 < v14)
  {
    goto LABEL_9;
  }

  *a7 = v17;
  return result;
}

void PreferenceValues.seed.getter(_DWORD *a1@<X8>)
{
  v2 = *(*v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (*v1 + 48);
    do
    {
      v6 = *v4;
      v4 += 14;
      v5 = v6;
      if (v3 != 0xFFFFFFFFLL && v5 != 0)
      {
        if (!v3 || v5 == 0xFFFFFFFFLL)
        {
          v3 = v5;
        }

        else
        {
          v8 = (v5 | (v3 << 32)) + ~(v5 << 32);
          v9 = (v8 ^ (v8 >> 22)) + ~((v8 ^ (v8 >> 22)) << 13);
          v10 = (9 * (v9 ^ (v9 >> 8))) ^ ((9 * (v9 ^ (v9 >> 8))) >> 15);
          v3 = ((v10 + ~(v10 << 27)) >> 31) ^ (v10 + ~(v10 << 27));
        }
      }

      --v2;
    }

    while (v2);
    *a1 = v3;
  }

  else
  {
    *a1 = 0;
  }
}

void specialized GraphHost.runTransaction(_:do:id:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = *MEMORY[0x1E69E9840];
  GraphHost.instantiateIfNeeded()();
  if (a1 >= 2)
  {
    swift_beginAccess();
    v27[0] = a1;
    AGGraphSetValue();
  }

  v25 = a2;
  v26 = a1;
  v12 = a2 | ((HIDWORD(a2) & 1) << 32);
  GraphHost.startTransactionUpdate(id:)(v12);

  specialized closure #1 in withTransaction<A>(_:_:)(a4, a4, a5, a6);
  swift_beginAccess();
  v13 = *(a3 + 24);
  swift_beginAccess();
  v14 = 0;
  v15 = MEMORY[0x1E69E7CC0];
  do
  {
    v16 = *(a3 + 160);
    *(a3 + 160) = v15;
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = v16 + 32;
      do
      {
        outlined init with copy of AnyTrackedValue(v18, v27);
        v19 = v28;
        v20 = v29;
        __swift_project_boxed_opaque_existential_1(v27, v28);
        (*(v20 + 8))(v19, v20);
        __swift_destroy_boxed_opaque_existential_1(v27);
        v18 += 40;
        --v17;
      }

      while (v17);
    }

    ++v14;
    AGSubgraphUpdate();
  }

  while (v14 != 8 && *(*(a3 + 160) + 16));
  if ((v25 & 0x100000000) != 0)
  {

    v21 = v26;
  }

  else
  {
    v21 = v26;
    if (one-time initialization token for enabledCategories != -1)
    {
      swift_once();
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x55uLL)
    {
      __break(1u);
    }

    if (*(static CustomEventTrace.enabledCategories + 116))
    {
      v22 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 17748;
        v23 = *(v22 + 16);
        LODWORD(v27[0]) = v25;

        v24 = v23;
        AGGraphAddTraceEvent();
      }
    }
  }

  *(a3 + 152) = 0;
  if (v21 >= 2)
  {
    v27[0] = 0;
    AGGraphSetValue();
  }
}

uint64_t specialized closure #1 in withTransaction<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _threadTransactionData();
  v6 = one-time initialization token for v5;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = static Semantics.v5;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C524 == 1)
  {
    if ((dyld_program_minos_at_least() & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (dword_1ED53C520 < v7)
  {
    goto LABEL_12;
  }

  if (_threadTransactionData())
  {
    type metadata accessor for PropertyList.Element();
    swift_unknownObjectRetain();
    swift_dynamicCastClassUnconditional();
  }

  PropertyList.merge(_:)(a1);
LABEL_12:
  _setThreadTransactionData();
  v8 = *(a4 + 16);
  if (v8)
  {
    v9 = (a4 + 32);
    do
    {
      v10 = v9[3];
      v11 = v9[4];
      __swift_project_boxed_opaque_existential_1(v9, v10);
      (*(v11 + 8))(v10, v11);
      v9 += 5;
      --v8;
    }

    while (v8);
  }

  _setThreadTransactionData();
}

uint64_t _threadTransactionID()
{
  v0 = _perThreadTransactionID();
  if ((v1 & 1) != 0 || (v2 = *v0, !v2))
  {
    v2 = atomic_fetch_add_explicit(_threadTransactionID_last_id, 1u, memory_order_relaxed) + 1;
    *v0 = v2;
  }

  return v2;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

double closure #1 in renderOnMainThread #1 () in ViewGraph.renderDisplayList(_:asynchronously:time:nextTime:targetTimestamp:version:maxVersion:)@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, double *a8@<X8>, double a9@<D0>, double a10@<D1>)
{
  v14 = a4;
  v18 = *a7;
  v19 = HIDWORD(a4);
  specialized DisplayList.ViewRenderer.updateRenderer(rootView:)(a2);
  v21 = v20;
  swift_beginAccess();
  if (!*(a1 + 48))
  {
    v18 = *(a1 + 40);
  }

  ObjectType = swift_getObjectType();
  v32 = a3;
  v33 = v14;
  v34 = v19;
  v31 = a9;
  v29 = a6;
  v30 = a5;
  v28 = v18;
  v23 = *(v21 + 24);
  swift_unknownObjectRetain();
  v23(&v35, a2, &v32, &v31, &v30, &v29, &v28, ObjectType, v21);
  swift_unknownObjectRelease();
  v24 = v35;
  if (v35 > a10)
  {
    v24 = a10;
  }

  v25 = v24 - a9;
  if (*(a1 + 32) > v25)
  {
    v25 = *(a1 + 32);
  }

  result = v25 + a9;
  *a8 = result;
  return result;
}

__objc2_class *specialized DisplayList.ViewRenderer.updateRenderer(rootView:)(void *a1)
{
  if (*(v1 + 96) != 1)
  {
    goto LABEL_21;
  }

  *(v1 + 96) = 0;
  swift_beginAccess();
  v3 = 1;
  if (*(v1 + 24))
  {
    v3 = 2;
  }

  if (v3 != *(v1 + 72))
  {
    if (*(v1 + 80))
    {
      v4 = *(v1 + 88);
      ObjectType = swift_getObjectType();
      v6 = *(v4 + 40);
      swift_unknownObjectRetain();
      v6(a1, ObjectType, v4);
      swift_unknownObjectRelease();
    }

    *(v1 + 80) = 0;
    *(v1 + 88) = 0;
    swift_unknownObjectRelease();
    *(v1 + 72) = 0;
  }

  v7 = *(v1 + 80);
  v8 = *(v1 + 24);
  if (!v7)
  {
    if (!v8)
    {
      *v24 = *(v1 + 16);
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      v22 = *(v1 + 64);
      type metadata accessor for DisplayList.ViewUpdater();
      swift_allocObject();
      v23 = specialized DisplayList.ViewUpdater.init(rootPlatform:host:)(v24, Strong, v22);
      swift_unknownObjectRelease();
      *(v1 + 80) = v23;
      *(v1 + 88) = &protocol witness table for DisplayList.ViewUpdater;
      swift_unknownObjectRelease();
      *(v1 + 72) = 1;
      result = *(v1 + 80);
      if (!result)
      {
        goto LABEL_24;
      }

      return result;
    }

    v32[0] = *(v8 + 16);
    *(v32 + 7) = *(v8 + 23);
    v15 = *(v8 + 27);
    v30 = *(v8 + 28);
    v31 = *(v8 + 36);
    v16 = *(v1 + 16);
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v17 = *(v1 + 64);
    type metadata accessor for DisplayList.ViewRasterizer();
    v18 = swift_allocObject();
    *(v18 + 32) = 0;
    swift_unknownObjectWeakInit();
    *(v18 + 40) = 0;
    *(v18 + 80) = 0;
    *(v18 + 88) = 0;
    *(v18 + 16) = v16;
    *(v18 + 32) = v17;
    swift_unknownObjectWeakAssign();
    *(v18 + 48) = v32[0];
    *(v18 + 55) = *(v32 + 7);
    *(v18 + 59) = v15;
    *(v18 + 60) = v30;
    *(v18 + 68) = v31;
    if (v15)
    {
      v19 = 1;
    }

    else
    {
      v19 = 3;
    }

    v24[0] = v19;
    type metadata accessor for DisplayList.GraphicsRenderer();
    swift_allocObject();
    *(v18 + 72) = DisplayList.GraphicsRenderer.init(platformViewMode:)(v24);
    *v24 = v32[0];
    *&v24[7] = *(v32 + 7);
    v24[11] = v15;
    v25 = v30;
    v26 = v31;

    RasterizationOptions.init(_:)(v24, &v27);
    *v24 = v27;
    *&v24[4] = WORD2(v27);
    *&v24[8] = v28;
    LOBYTE(v25) = v29;
    v20 = (*((v16 & 0xFFFFFFFFFFFFFFF8) + 120))(v24);
    swift_beginAccess();
    *(v18 + 40) = v20;
    swift_unknownObjectRelease();
    swift_unknownObjectRetain();
    CoreViewAddSubview(v16 & 3, a1, v16 & 3, v20, 0);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    *(v1 + 80) = v18;
    *(v1 + 88) = &protocol witness table for DisplayList.ViewRasterizer;
    swift_unknownObjectRelease();
    *(v1 + 72) = 2;

    goto LABEL_21;
  }

  if (!v8)
  {
LABEL_21:
    result = *(v1 + 80);
    if (!result)
    {
      goto LABEL_24;
    }

    return result;
  }

  v9 = *(v8 + 27);
  v27 = *(v8 + 28);
  v28 = *(v8 + 36);
  result = object_getClass(v7);
  if (result != _TtCE7SwiftUIVS_11DisplayListP33_21FFA3C7D88AC65BB559906758271BFC14ViewRasterizer)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v11 = *(v8 + 16);
  v12 = *(v8 + 24);
  *(v7 + 58) = *(v8 + 26);
  *(v7 + 56) = v12;
  *(v7 + 48) = v11;
  *(v7 + 59) = v9;
  *(v7 + 60) = v27;
  *(v7 + 68) = v28;
  if (v9)
  {
    v13 = 1;
  }

  else
  {
    v13 = 3;
  }

  v14 = *(v7 + 72);
  swift_beginAccess();
  *(v14 + 112) = v13;
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  *(v7 + 32) = *(v1 + 64);
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  result = *(v1 + 80);
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  return result;
}

unint64_t type metadata accessor for ViewGraphRenderDelegate()
{
  result = lazy cache variable for type metadata for ViewGraphRenderDelegate;
  if (!lazy cache variable for type metadata for ViewGraphRenderDelegate)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for ViewGraphRenderDelegate);
  }

  return result;
}

uint64_t specialized DisplayList.ViewUpdater.init(rootPlatform:host:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  *(v3 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 144) = 0;
  *(v3 + 152) = 0;
  *(v3 + 160) = 0;
  v6 = MEMORY[0x1E69E7CC0];
  *(v3 + 168) = MEMORY[0x1E69E7CC0];
  *(v3 + 176) = 0;
  *(v3 + 180) = 0;
  *(v3 + 184) = 0;
  *(v3 + 192) = 257;
  *(v3 + 16) = v5;
  *(v3 + 32) = a3;
  swift_unknownObjectWeakAssign();
  v7 = MEMORY[0x1E69E7CC8];
  *(v3 + 40) = MEMORY[0x1E69E7CC8];
  *(v3 + 48) = v7;
  *(v3 + 56) = MEMORY[0x1E69E7CD0];
  *(v3 + 64) = v7;
  *(v3 + 72) = v7;
  *(v3 + 80) = v7;
  *(v3 + 88) = 0;
  *(v3 + 96) = v6;
  *(v3 + 104) = 0;
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  *(v3 + 124) = 0;
  *(v3 + 128) = v6;
  *(v3 + 136) = 0;
  *(v3 + 140) = 0;
  return v3;
}

Swift::Void __swiftcall DisplayList.ViewUpdater.ViewCache.invalidateAll()()
{
  v1 = *v0;
  type metadata accessor for _DictionaryStorage<DisplayList.ViewUpdater.ViewCache.Key, DisplayList.ViewUpdater.ViewInfo>();
  v2 = static _DictionaryStorage.copy(original:)();
  v3 = v2;
  v4 = 0;
  v5 = 1 << *(v1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v1 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = v2 + 64;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_10:
      v13 = v10 | (v4 << 6);
      v14 = 20 * v13;
      v15 = *(v1 + 48) + 20 * v13;
      v16 = *(v15 + 16);
      v17 = *(v15 + 17);
      v18 = v13 << 7;
      v19 = *(v1 + 56) + (v13 << 7);
      v20 = (v13 >> 3) & 0x1FFFFFFFFFFFFFF8;
      v21 = 1 << v13;
      v22 = *v15;
      v24 = *(v19 + 32);
      v23 = *(v19 + 48);
      v25 = *v19;
      v50[1] = *(v19 + 16);
      v50[2] = v24;
      v50[0] = v25;
      v26 = *(v19 + 112);
      v28 = *(v19 + 64);
      v27 = *(v19 + 80);
      *&v51[16] = *(v19 + 96);
      v52 = v26;
      v50[4] = v28;
      *v51 = v27;
      v50[3] = v23;
      v29 = *(v19 + 48);
      v46 = *(v19 + 32);
      v47 = v29;
      v48 = *(v19 + 64);
      v49 = *(v19 + 80);
      v30 = *(v19 + 16);
      v44 = *v19;
      v45 = v30;
      v53.val[0] = *&v51[8];
      v53.val[1] = *&v51[10];
      v53.val[0] = vqtbl2q_s8(v53, xmmword_18DDEF020);
      v53.val[0].i16[5] = *&v51[18];
      v53.val[0].i32[3] = *&v51[20];
      v43[0] = *(v19 + 106);
      *(v43 + 14) = *(v19 + 120);
      v31 = vbicq_s8((*&vmvnq_s8(v53.val[0]) | __PAIR128__(0x1000100010001, 0x1000100010001)), vceqzq_s16(v53.val[0]));
      v32 = ~*&v51[24] | 1;
      if (!*&v51[24])
      {
        v32 = 0;
      }

      *(v9 + v20) |= v21;
      v33 = v3[6] + v14;
      *v33 = v22;
      *(v33 + 16) = v16;
      *(v33 + 17) = v17;
      v34 = v3[7] + v18;
      v35 = v45;
      *v34 = v44;
      *(v34 + 16) = v35;
      *(v34 + 80) = v49;
      v36 = v48;
      *(v34 + 48) = v47;
      *(v34 + 64) = v36;
      *(v34 + 32) = v46;
      *(v34 + 88) = v31;
      *(v34 + 104) = v32;
      v37 = v43[0];
      *(v34 + 120) = *(v43 + 14);
      *(v34 + 106) = v37;
      v38 = v3[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        break;
      }

      v3[2] = v40;
      outlined init with copy of DisplayList.ViewUpdater.ViewInfo(v50, v42);
      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v4 >= v8)
      {

        *v41 = v3;
        return;
      }

      v12 = *(v1 + 64 + 8 * v4);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v7 = (v12 - 1) & v12;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void type metadata accessor for _DictionaryStorage<DisplayList.ViewUpdater.ViewCache.Key, DisplayList.ViewUpdater.ViewInfo>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<DisplayList.ViewUpdater.ViewCache.Key, DisplayList.ViewUpdater.ViewInfo>)
  {
    lazy protocol witness table accessor for type DisplayList.ViewUpdater.ViewCache.Key and conformance DisplayList.ViewUpdater.ViewCache.Key();
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<DisplayList.ViewUpdater.ViewCache.Key, DisplayList.ViewUpdater.ViewInfo>);
    }
  }
}

void DisplayList.ViewUpdater.effectiveRootPlatform.getter(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  if ((v3 & 3) != 0)
  {
    swift_beginAccess();
    value = disableMixedViewHierarchy.value;
    if (disableMixedViewHierarchy.value == 2)
    {
      v5 = getenv("SWIFTUI_DISABLE_MIXED_VIEW_HIERARCHY");
      if (v5)
      {
        v6 = atoi(v5);
        disableMixedViewHierarchy.value = v6 != 0;
        swift_endAccess();
        if (v6)
        {
          goto LABEL_22;
        }
      }

      else
      {
        disableMixedViewHierarchy.value = 0;
        swift_endAccess();
      }
    }

    else
    {
      swift_endAccess();
      if (value)
      {
        goto LABEL_22;
      }
    }

    swift_beginAccess();
    if (static DisplayList.overrideMayInsertCALayers == 2)
    {
      if (one-time initialization token for v7 != -1)
      {
        swift_once();
      }

      v7 = static Semantics.v7;
      if (one-time initialization token for forced != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      if (byte_1ED53C51C == 1)
      {
        if ((dyld_program_sdk_at_least() & 1) == 0)
        {
LABEL_16:
          v3 &= ~4uLL;
          goto LABEL_22;
        }
      }

      else if (static Semantics.forced < v7)
      {
        goto LABEL_16;
      }

      v3 |= 4uLL;
      goto LABEL_22;
    }

    if (static DisplayList.overrideMayInsertCALayers)
    {
      v3 |= 4uLL;
    }

    else
    {
      v3 &= ~4uLL;
    }
  }

LABEL_22:
  *a1 = v3;
}

uint64_t protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance DisplayList.Key(uint64_t a1, void (*a2)(uint64_t *__return_ptr))
{
  a2(&v6);
  v3 = v6;
  v4 = v7;
  v5 = v8;
  DisplayList.append(contentsOf:)(&v3);
}

uint64_t DisplayList.append(contentsOf:)(uint64_t result)
{
  v35 = *(*result + 16);
  if (v35)
  {
    v2 = v1;
    v3 = 0;
    v34 = *result + 32;
    do
    {
      v5 = (v34 + 80 * v3);
      v6 = *(v5 + 60);
      v7 = v5[3];
      v8 = v5[1];
      v41 = v5[2];
      *v42 = v7;
      *&v42[12] = v6;
      v39 = *v5;
      v40 = v8;
      v9 = *(&v41 + 1);
      v10 = v7;
      v11 = DWORD2(v6);
      v12 = DWORD1(v6) >> 30;
      if (DWORD1(v6) >> 30 == 3 && !(*v42 | *(&v41 + 1) | *&v42[8]) && *&v42[16] == 3221225472)
      {
        goto LABEL_5;
      }

      v13 = *v2;
      outlined init with copy of DisplayList.Item(&v39, v37);
      outlined init with copy of DisplayList.Item(&v39, v37);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13, &lazy cache variable for type metadata for _ContiguousArrayStorage<DisplayList.Item>, &type metadata for DisplayList.Item);
      }

      v15 = *(v13 + 2);
      v14 = *(v13 + 3);
      if (v15 >= v14 >> 1)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v13, &lazy cache variable for type metadata for _ContiguousArrayStorage<DisplayList.Item>, &type metadata for DisplayList.Item);
      }

      *(v13 + 2) = v15 + 1;
      v16 = &v13[80 * v15];
      *(v16 + 2) = v39;
      v17 = v40;
      v18 = v41;
      v19 = *v42;
      *(v16 + 92) = *&v42[12];
      *(v16 + 4) = v18;
      *(v16 + 5) = v19;
      *(v16 + 3) = v17;
      *v2 = v13;
      v37[2] = v41;
      v38[0] = *v42;
      *(v38 + 12) = *&v42[12];
      v37[0] = v39;
      v37[1] = v40;
      DisplayList.Item.features.getter(&v36);
      *(v2 + 8) |= v36;
      if (v12 > 1)
      {
        if (v12 == 2)
        {
          v20 = *(v9 + 16);
          if (v20)
          {
            if (v20 > 7)
            {
              v21 = v20 & 0x7FFFFFFFFFFFFFF8;
              v23 = (v9 + 188);
              v24 = 0uLL;
              v25 = v20 & 0x7FFFFFFFFFFFFFF8;
              v26 = 0uLL;
              do
              {
                v27.i32[0] = *(v23 - 30);
                v27.i32[1] = *(v23 - 20);
                v27.i32[2] = *(v23 - 10);
                v27.i32[3] = *v23;
                v28.i32[0] = v23[10];
                v28.i32[1] = v23[20];
                v28.i32[2] = v23[30];
                v28.i32[3] = v23[40];
                v24 = vorrq_s8(v27, v24);
                v26 = vorrq_s8(v28, v26);
                v23 += 80;
                v25 -= 8;
              }

              while (v25);
              v29 = vorrq_s8(v26, v24);
              v30 = vorr_s8(*v29.i8, *&vextq_s8(v29, v29, 8uLL));
              v4 = v30.i32[0] | v30.i32[1];
              if (v20 == v21)
              {
                goto LABEL_32;
              }
            }

            else
            {
              v4 = 0;
              v21 = 0;
            }

            v31 = v20 - v21;
            v32 = (v9 + 40 * v21 + 68);
            do
            {
              v33 = *v32;
              v32 += 10;
              v4 |= v33;
              --v31;
            }

            while (v31);
          }

          else
          {
            v4 = 0;
          }

LABEL_32:
          result = outlined destroy of DisplayList.Item(&v39);
          goto LABEL_4;
        }
      }

      else
      {
        if (v12)
        {
          switch(BYTE4(v10))
          {
            case 2u:

              v22 = v9;
              break;
            case 7u:
              v22 = *(v9 + 28);
              outlined init with copy of DisplayList.Item(&v39, v37);
              outlined consume of DisplayList.Effect(v9, v10, 7);

              result = outlined destroy of DisplayList.Item(&v39);
              break;
            case 0x12u:
              (*(*v9 + 120))(&v36);
              outlined init with copy of DisplayList.Item(&v39, v37);
              outlined consume of DisplayList.Effect(v9, v10, 18);

              result = outlined destroy of DisplayList.Item(&v39);
              v22 = v36;
              break;
            default:
              outlined copy of DisplayList.Effect(v9, v10, SBYTE4(v10));

              outlined consume of DisplayList.Effect(v9, v10, SBYTE4(v10));

              result = outlined destroy of DisplayList.Item(&v39);
              v22 = 0;
              break;
          }

          v4 = v22 | v11;
          goto LABEL_4;
        }

        if (v9 >> 60 == 6 || v9 >> 60 == 11)
        {
          v4 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
          goto LABEL_32;
        }
      }

      result = outlined destroy of DisplayList.Item(&v39);
      v4 = 0;
LABEL_4:
      *(v2 + 12) |= v4;
LABEL_5:
      ++v3;
    }

    while (v3 != v35);
  }

  return result;
}

uint64_t CoreViewLayer(int a1, void *a2)
{
  if (a1)
  {
    return [a2 layer];
  }

  else
  {
    return a2;
  }
}

Swift::Void __swiftcall DisplayList.ViewUpdater.ViewCache.clearAsyncValues()()
{
  v1 = *(v0 + 32);
  v2 = v1 + 64;
  v3 = 1 << *(v1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(v1 + 64);
  v6 = (v3 + 63) >> 6;
  v37 = v1;

  v7 = 0;
  v35 = v6;
  v36 = v2;
LABEL_6:
  if (v5)
  {
    v8 = v7;
LABEL_11:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = v9 | (v8 << 6);
    v38 = *(*(v37 + 48) + 8 * v10);
    v11 = (*(v37 + 56) + 16 * v10);
    v12 = *v11;
    v13 = v11[1];
    v14 = (*v11 + 56);
    v15 = 1 << *(*v11 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *v14;
    v18 = (v15 + 63) >> 6;

    v19 = 0;
    if (v17)
    {
      while (1)
      {
        v20 = v19;
LABEL_20:
        v21 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
        v22 = (*(v12 + 48) + ((v20 << 10) | (16 * v21)));
        v23 = *v22;
        v24 = v22[1];

        v25 = MEMORY[0x193ABEC20](v23, v24);
        [v38 removeAnimationForKey_];

        if (!v17)
        {
          goto LABEL_16;
        }
      }
    }

    while (1)
    {
LABEL_16:
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v20 >= v18)
      {
        break;
      }

      v17 = v14[v20];
      ++v19;
      if (v17)
      {
        v19 = v20;
        goto LABEL_20;
      }
    }

    v26 = 0;
    v27 = 1 << *(v13 + 32);
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    else
    {
      v28 = -1;
    }

    v29 = v28 & *(v13 + 64);
    v30 = (v27 + 63) >> 6;
    while (v29)
    {
      v31 = v26;
LABEL_31:
      v32 = __clz(__rbit64(v29));
      v29 &= v29 - 1;
      v33 = *(*(v13 + 56) + ((v31 << 9) | (8 * v32)));
      [v38 removePresentationModifier_];
    }

    while (1)
    {
      v31 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v31 >= v30)
      {

        v7 = v8;
        v6 = v35;
        v2 = v36;
        goto LABEL_6;
      }

      v29 = *(v13 + 64 + 8 * v31);
      ++v26;
      if (v29)
      {
        v26 = v31;
        goto LABEL_31;
      }
    }

LABEL_35:
    __break(1u);
  }

  else
  {
    while (1)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v8 >= v6)
      {

        *(v34 + 32) = MEMORY[0x1E69E7CC8];

        *(v34 + 48) = 0;
        return;
      }

      v5 = *(v2 + 8 * v8);
      ++v7;
      if (v5)
      {
        goto LABEL_11;
      }
    }
  }

  __break(1u);
}

__n128 Capsule.corners(in:)@<Q0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  LOBYTE(v13) = 0;
  if (a2 >= a3)
  {
    a2 = a3;
  }

  *&v13 = a2 * 0.5;
  BYTE8(v13) = 0;
  v14 = COERCE_UNSIGNED_INT64(a2 * 0.5);
  *&v15 = 0;
  BYTE8(v15) = 0;
  v16.n128_u64[0] = 0;
  v16.n128_f64[1] = a2 * 0.5;
  LOBYTE(v17) = 0;
  *(&v17 + 1) = a2 * 0.5;
  v18 = 0uLL;
  LOBYTE(v19) = 0;
  *(&v19 + 1) = 0;
  *&v20 = a2 * 0.5;
  BYTE8(v20) = 0;
  *&v21 = a2 * 0.5;
  *(&v21 + 1) = 0;
  *&v22 = 0;
  BYTE8(v22) = 0;
  *&v23 = 0;
  *(&v23 + 1) = a2 * 0.5;
  LOBYTE(v24) = 0;
  *(&v24 + 1) = a2 * 0.5;
  v25 = 0uLL;
  LOBYTE(v26) = 0;
  *(&v26 + 1) = 0;
  _s7SwiftUI26CornerMaskingConfigurationVSgWOi_(&v13);
  v4 = v24;
  v5 = v26;
  *(a1 + 192) = v25;
  *(a1 + 208) = v5;
  v6 = v20;
  v7 = v22;
  v8 = v23;
  *(a1 + 128) = v21;
  *(a1 + 144) = v7;
  *(a1 + 160) = v8;
  *(a1 + 176) = v4;
  v9 = v18;
  v10 = v19;
  *(a1 + 64) = v17;
  *(a1 + 80) = v9;
  *(a1 + 224) = v27;
  *(a1 + 96) = v10;
  *(a1 + 112) = v6;
  v11 = v14;
  *a1 = v13;
  *(a1 + 16) = v11;
  result = v16;
  *(a1 + 32) = v15;
  *(a1 + 48) = result;
  return result;
}

uint64_t specialized static ConcentricLayoutComputer.Engine.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16))))) & 1) == 0)
  {
    return 0;
  }

  v3 = *(a2 + 32);
  if (!*(a1 + 32))
  {
    if (!v3)
    {
      return 1;
    }

LABEL_13:

    return 0;
  }

  if (!v3)
  {
    goto LABEL_13;
  }

  v4 = *(a1 + 40);
  v5 = *(a2 + 40);
  v6 = swift_retain_n();
  v8 = v4 == v5 && v6 == v3;

  return v8;
}

unint64_t lazy protocol witness table accessor for type DisplayList.ViewUpdater.ViewCache.Key and conformance DisplayList.ViewUpdater.ViewCache.Key()
{
  result = lazy protocol witness table cache variable for type DisplayList.ViewUpdater.ViewCache.Key and conformance DisplayList.ViewUpdater.ViewCache.Key;
  if (!lazy protocol witness table cache variable for type DisplayList.ViewUpdater.ViewCache.Key and conformance DisplayList.ViewUpdater.ViewCache.Key)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisplayList.ViewUpdater.ViewCache.Key and conformance DisplayList.ViewUpdater.ViewCache.Key);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisplayList.ViewUpdater.ViewCache.Key and conformance DisplayList.ViewUpdater.ViewCache.Key;
  if (!lazy protocol witness table cache variable for type DisplayList.ViewUpdater.ViewCache.Key and conformance DisplayList.ViewUpdater.ViewCache.Key)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisplayList.ViewUpdater.ViewCache.Key and conformance DisplayList.ViewUpdater.ViewCache.Key);
  }

  return result;
}

double one-time initialization function for renderDisplayList()
{
  *&result = 266516;
  static Signpost.renderDisplayList = xmmword_18DDB55C0;
  word_1ED52EF28 = 0;
  byte_1ED52EF2A = 3;
  return result;
}

uint64_t outlined destroy of (DisplayList.Item.Value, DisplayList.Item.Value)(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for ViewGraphRenderObserver?()
{
  if (!lazy cache variable for type metadata for ViewGraphRenderObserver?)
  {
    type metadata accessor for ViewGraphRenderObserver();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ViewGraphRenderObserver?);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Time and conformance Time()
{
  result = lazy protocol witness table cache variable for type Time and conformance Time;
  if (!lazy protocol witness table cache variable for type Time and conformance Time)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Time and conformance Time);
  }

  return result;
}

void *sub_18D0A759C(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  return a1;
}

BOOL specialized static ViewGeometry.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    v5 = *(a2 + 16);
    v4 = *(a2 + 24);
    v6 = *(a1 + 24);
    v13[0] = *(a1 + 16);
    v13[1] = v6;
    v7 = *(a1 + 48);
    v14 = *(a1 + 32);
    v15 = v7;
    v10[0] = v5;
    v10[1] = v4;
    v8 = *(a2 + 48);
    v11 = *(a2 + 32);
    v12 = v8;
    v3 = specialized static ViewDimensions.== infix(_:_:)(v13, v10);
  }

  else
  {
    return 0;
  }

  return v3;
}

BOOL specialized static ViewDimensions.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  v5 = *(a2 + 32);
  v4 = *(a2 + 40);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = (~*&v6 & 0x7FF0000000000000) == 0;
  if ((*&v6 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v8 = 0;
  }

  v9 = (~v5 & 0x7FF0000000000000) != 0;
  if ((v5 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v9 = 1;
  }

  v10 = (~v4 & 0x7FF0000000000000) != 0;
  if ((v4 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v10 = 1;
  }

  v11 = *(a2 + 40);
  v12 = 0.0;
  if (!v10)
  {
    v11 = 0.0;
  }

  if ((~*&v7 & 0x7FF0000000000000) != 0 || (*&v7 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    if (v9)
    {
      v12 = *(a2 + 32);
    }

    if (v12 != v7 || !v9)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v8)
  {
    if (v10)
    {
      return 0;
    }
  }

  else if (v11 != v6 || !v10)
  {
    return 0;
  }

  return *(a1 + 8) == *(a2 + 8) && *a1 == *a2;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance GlassContainer.DataStorage(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI12ViewIdentityV_AC14GlassContainerO8ItemDataVTt1g5(*(a1 + 8), *(a2 + 8));
  }

  else
  {
    return 0;
  }
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI12ViewIdentityV_AC14GlassContainerO8ItemDataVTt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 48) + 4 * v12);
    v14 = *(v3 + 56) + 40 * v12;
    v15 = *(v14 + 32);
    v16 = *(v14 + 16);
    v35 = *v14;
    v36 = v16;
    v37 = v15;
    v23 = v16;
    v24 = v35;
    outlined init with copy of GlassContainer.ItemData(&v35, &v32);
    if (!v24)
    {
      return 1;
    }

    v35 = v24;
    v36 = v23;
    v37 = v15;
    v17 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
    if ((v18 & 1) == 0)
    {
      v32 = v35;
      v33 = v36;
      v34 = v37;
      outlined destroy of GlassContainer.ItemData(&v32);
      return 0;
    }

    v19 = *(a2 + 56) + 40 * v17;
    v20 = *(v19 + 32);
    v21 = *(v19 + 16);
    v28[0] = *v19;
    v28[1] = v21;
    v29 = v20;
    v27 = *(v19 + 32);
    v25 = *v19;
    v26 = *(v19 + 16);
    outlined init with copy of GlassContainer.ItemData(v28, &v32);
    lazy protocol witness table accessor for type GlassContainer.ItemData and conformance GlassContainer.ItemData();
    v22 = dispatch thunk of static Equatable.== infix(_:_:)();
    v30[0] = v25;
    v30[1] = v26;
    v31 = v27;
    outlined destroy of GlassContainer.ItemData(v30);
    v32 = v35;
    v33 = v36;
    v34 = v37;
    result = outlined destroy of GlassContainer.ItemData(&v32);
    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

double ConcentricPaddingUpdater.oldValue.getter()
{
  if ((*(v0 + 48) & 1) == 0)
  {
    return *(v0 + 16);
  }

  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  return 0.0;
}

void type metadata accessor for LayoutEngineBox<ConcentricLayoutComputer.Engine>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame()
{
  result = lazy protocol witness table cache variable for type ViewFrame and conformance ViewFrame;
  if (!lazy protocol witness table cache variable for type ViewFrame and conformance ViewFrame)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewFrame and conformance ViewFrame);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ViewFrame and conformance ViewFrame;
  if (!lazy protocol witness table cache variable for type ViewFrame and conformance ViewFrame)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewFrame and conformance ViewFrame);
  }

  return result;
}

_DWORD *initializeWithCopy for AnimatableAttributeHelper(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  v3 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v3 = *v4;
  v5 = ((v3 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = ((v4 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v5 = *v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 80);
  v10 = ((v5 + v9 + 4) & ~v9);
  v11 = ((v6 + v9 + 4) & ~v9);
  if ((*(v8 + 48))(v11, 1, AssociatedTypeWitness))
  {
    v12 = *(v8 + 84);
    v13 = *(v8 + 64);
    if (v12)
    {
      v14 = v13;
    }

    else
    {
      v14 = v13 + 1;
    }

    memcpy(v10, v11, v14);
  }

  else
  {
    (*(v8 + 16))(v10, v11, AssociatedTypeWitness);
    v16 = *(v8 + 56);
    v15 = v8 + 56;
    v16(v10, 0, 1, AssociatedTypeWitness);
    v12 = *(v15 + 28);
    v13 = *(v15 + 8);
  }

  if (v12)
  {
    v17 = v13;
  }

  else
  {
    v17 = v13 + 1;
  }

  v18 = ((v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8);
  v19 = ((v11 + v17 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v18 = *v19;
  *((v18 + 11) & 0xFFFFFFFFFFFFFFF8) = *((v19 + 11) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t destroy for AnimatableAttributeHelper(uint64_t a1)
{
  v1 = (((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = (v1 + *(v3 + 80) + 4) & ~*(v3 + 80);
  if (!(*(v3 + 48))(v4, 1, AssociatedTypeWitness))
  {
    (*(v3 + 8))(v4, AssociatedTypeWitness);
  }
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
  v8 = v7 + 32 + 120 * result;
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

  result = v8 + 120 * a3;
  v13 = (v7 + 32 + 120 * a2);
  if (result != v13 || result >= v13 + 120 * v12)
  {
    result = memmove(result, v13, 120 * v12);
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

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 8 * result + 8 * a3;
  v10 = (v6 + 32 + 8 * a2);
  if (result != v10 || result >= v10 + 8 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 8 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
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
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 40 * result;
  type metadata accessor for CustomAttributeWriter(0, &lazy cache variable for type metadata for AnyTrackedValue);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 40 * a3;
  v13 = (v7 + 32 + 40 * a2);
  if (result != v13 || result >= v13 + 40 * v12)
  {
    result = memmove(result, v13, 40 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
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
  v8 = v7 + 32 + 104 * result;
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

  result = v8 + 104 * a3;
  v13 = (v7 + 32 + 104 * a2);
  v14 = 104 * v12;
  v15 = &v13[104 * v12];
  if (result != v13 || result >= v15)
  {
    result = memmove(result, v13, v14);
  }

  v17 = *(v7 + 16);
  v9 = __OFADD__(v17, v10);
  v18 = v17 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v18;
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

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 16 * result + 16 * a3;
  v10 = (v6 + 32 + 16 * a2);
  if (result != v10 || result >= v10 + 16 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 16 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
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
  v8 = v7 + 32 + 8 * result;
  type metadata accessor for AbstractHomogeneousCollection();
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
  v8 = v7 + 32 + 112 * result;
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

  result = v8 + 112 * a3;
  v13 = (v7 + 32 + 112 * a2);
  if (result != v13 || result >= v13 + 112 * v12)
  {
    result = memmove(result, v13, 112 * v12);
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
  v8 = v7 + 32 + 32 * result;
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

  result = v8 + 32 * a3;
  v13 = (v7 + 32 + 32 * a2);
  if (result != v13 || result >= v13 + 32 * v12)
  {
    result = memmove(result, v13, 32 * v12);
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
  v8 = v7 + 32 + 40 * result;
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

  result = v8 + 40 * a3;
  v13 = (v7 + 32 + 40 * a2);
  v14 = 40 * v12;
  v15 = &v13[40 * v12];
  if (result != v13 || result >= v15)
  {
    result = memmove(result, v13, v14);
  }

  v17 = *(v7 + 16);
  v9 = __OFADD__(v17, v10);
  v18 = v17 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v18;
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
  v8 = v7 + 32 + 112 * result;
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

  result = v8 + 112 * a3;
  v13 = (v7 + 32 + 112 * a2);
  v14 = 112 * v12;
  v15 = &v13[112 * v12];
  if (result != v13 || result >= v15)
  {
    result = memmove(result, v13, v14);
  }

  v17 = *(v7 + 16);
  v9 = __OFADD__(v17, v10);
  v18 = v17 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v18;
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

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 48 * result + 48 * a3;
  v10 = (v6 + 32 + 48 * a2);
  v11 = 48 * v9;
  if (result != v10 || result >= v10 + v11)
  {
    v13 = a3;
    result = memmove(result, v10, v11);
    a3 = v13;
  }

  v14 = *(v6 + 16);
  v8 = __OFADD__(v14, v5);
  v15 = v14 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v15;
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
  v8 = v7 + 32 + 112 * result;
  type metadata accessor for KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element();
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

  result = v8 + 112 * a3;
  v13 = (v7 + 32 + 112 * a2);
  if (result != v13 || result >= v13 + 112 * v12)
  {
    result = memmove(result, v13, 112 * v12);
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
  v8 = v7 + 32 + 80 * result;
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

  result = v8 + 80 * a3;
  v13 = (v7 + 32 + 80 * a2);
  if (result != v13 || result >= v13 + 80 * v12)
  {
    result = memmove(result, v13, 80 * v12);
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

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 2 * result + 2 * a3;
  v10 = (v6 + 32 + 2 * a2);
  if (result != v10 || result >= v10 + 2 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 2 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
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
  v8 = v7 + 32 + 40 * result;
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

  result = v8 + 40 * a3;
  v13 = (v7 + 32 + 40 * a2);
  if (result != v13 || result >= v13 + 40 * v12)
  {
    result = memmove(result, v13, 40 * v12);
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

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 32 * result + 32 * a3;
  v10 = (v6 + 32 + 32 * a2);
  if (result != v10 || result >= v10 + 32 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 32 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
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
  v8 = v7 + 32 + 56 * result;
  type metadata accessor for AnimatorState<KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>>.Fork();
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

  result = v8 + 56 * a3;
  v13 = (v7 + 32 + 56 * a2);
  if (result != v13 || result >= v13 + 56 * v12)
  {
    result = memmove(result, v13, 56 * v12);
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
  v8 = v7 + 32 + 56 * result;
  type metadata accessor for AnimatorState<AnimatablePair<CGFloat, CGFloat>>.Fork();
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

  result = v8 + 56 * a3;
  v13 = (v7 + 32 + 56 * a2);
  if (result != v13 || result >= v13 + 56 * v12)
  {
    result = memmove(result, v13, 56 * v12);
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
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 48 * result;
  type metadata accessor for AnimatorState<Double>.Fork(0, &lazy cache variable for type metadata for AnimatorState<Double>.Fork, MEMORY[0x1E69E63B0], &protocol witness table for Double, type metadata accessor for AnimatorState.Fork);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 48 * a3;
  v13 = (v7 + 32 + 48 * a2);
  if (result != v13 || result >= v13 + 48 * v12)
  {
    result = memmove(result, v13, 48 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 80 * result;
  type metadata accessor for AnimatorState<CGFloat>.Fork(0, &lazy cache variable for type metadata for AnimatorState<_AnyAnimatableData>.Fork, lazy protocol witness table accessor for type _AnyAnimatableData and conformance _AnyAnimatableData);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 80 * a3;
  v13 = (v7 + 32 + 80 * a2);
  if (result != v13 || result >= v13 + 80 * v12)
  {
    result = memmove(result, v13, 80 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
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
  v8 = v7 + 32 + 72 * result;
  type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork();
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

  result = v8 + 72 * a3;
  v13 = (v7 + 32 + 72 * a2);
  if (result != v13 || result >= v13 + 72 * v12)
  {
    result = memmove(result, v13, 72 * v12);
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
  v8 = v7 + 32 + (result << 6);
  type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>.Fork();
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

  result = v8 + (a3 << 6);
  v13 = (v7 + 32 + (a2 << 6));
  if (result != v13 || result >= v13 + 64 * v12)
  {
    result = memmove(result, v13, v12 << 6);
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
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 48 * result;
  type metadata accessor for KeyedAnimatableArray<Int, _AnyAnimatableData>(0, &lazy cache variable for type metadata for KeyedAnimatableArray<Int, _AnyAnimatableData>.Element, type metadata accessor for KeyedAnimatableArray.Element);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 48 * a3;
  v13 = (v7 + 32 + 48 * a2);
  if (result != v13 || result >= v13 + 48 * v12)
  {
    result = memmove(result, v13, 48 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
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
  v8 = v7 + 32 + (result << 6);
  type metadata accessor for AnimatorState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>.Fork();
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

  result = v8 + (a3 << 6);
  v13 = (v7 + 32 + (a2 << 6));
  if (result != v13 || result >= v13 + 64 * v12)
  {
    result = memmove(result, v13, v12 << 6);
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
  v8 = v7 + 32 + 104 * result;
  type metadata accessor for AnimatorState<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>.Fork();
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

  result = v8 + 104 * a3;
  v13 = (v7 + 32 + 104 * a2);
  if (result != v13 || result >= v13 + 104 * v12)
  {
    result = memmove(result, v13, 104 * v12);
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
  v8 = v7 + 32 + (result << 6);
  type metadata accessor for AnimatorState<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>.Fork();
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

  result = v8 + (a3 << 6);
  v13 = (v7 + 32 + (a2 << 6));
  if (result != v13 || result >= v13 + 64 * v12)
  {
    result = memmove(result, v13, v12 << 6);
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
  v8 = v7 + 32 + (result << 6);
  type metadata accessor for AnimatorState<CGFloat>.Fork(0, &lazy cache variable for type metadata for AnimatorState<Color.ResolvedHDR._Animatable>.Fork, lazy protocol witness table accessor for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable);
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

  result = v8 + (a3 << 6);
  v13 = (v7 + 32 + (a2 << 6));
  if (result != v13 || result >= v13 + 64 * v12)
  {
    result = memmove(result, v13, v12 << 6);
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
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 48 * result;
  type metadata accessor for AnimatorState<CGFloat>.Fork(0, &lazy cache variable for type metadata for AnimatorState<CGFloat>.Fork, lazy protocol witness table accessor for type CGFloat and conformance CGFloat);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 48 * a3;
  v13 = (v7 + 32 + 48 * a2);
  if (result != v13 || result >= v13 + 48 * v12)
  {
    result = memmove(result, v13, 48 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 48 * result;
  type metadata accessor for AnimatorState<CGFloat>.Fork(0, &lazy cache variable for type metadata for AnimatorState<ShaderVectorData>.Fork, lazy protocol witness table accessor for type ShaderVectorData and conformance ShaderVectorData);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 48 * a3;
  v13 = (v7 + 32 + 48 * a2);
  if (result != v13 || result >= v13 + 48 * v12)
  {
    result = memmove(result, v13, 48 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
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
  v8 = v7 + 32 + 72 * result;
  type metadata accessor for AnimatorState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Fork();
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

  result = v8 + 72 * a3;
  v13 = (v7 + 32 + 72 * a2);
  if (result != v13 || result >= v13 + 72 * v12)
  {
    result = memmove(result, v13, 72 * v12);
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
  v8 = v7 + 32 + (result << 6);
  type metadata accessor for AnimatorState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>.Fork();
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

  result = v8 + (a3 << 6);
  v13 = (v7 + 32 + (a2 << 6));
  if (result != v13 || result >= v13 + 64 * v12)
  {
    result = memmove(result, v13, v12 << 6);
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
  v8 = v7 + 32 + 80 * result;
  type metadata accessor for AnimatorState<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>.Fork();
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

  result = v8 + 80 * a3;
  v13 = (v7 + 32 + 80 * a2);
  if (result != v13 || result >= v13 + 80 * v12)
  {
    result = memmove(result, v13, 80 * v12);
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
  v8 = v7 + 32 + 80 * result;
  type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Fork();
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

  result = v8 + 80 * a3;
  v13 = (v7 + 32 + 80 * a2);
  if (result != v13 || result >= v13 + 80 * v12)
  {
    result = memmove(result, v13, 80 * v12);
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
  v8 = v7 + 32 + 96 * result;
  type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>.Fork();
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

  result = v8 + 96 * a3;
  v13 = (v7 + 32 + 96 * a2);
  if (result != v13 || result >= v13 + 96 * v12)
  {
    result = memmove(result, v13, 96 * v12);
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
  v8 = v7 + 32 + 96 * result;
  type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>.Fork();
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

  result = v8 + 96 * a3;
  v13 = (v7 + 32 + 96 * a2);
  if (result != v13 || result >= v13 + 96 * v12)
  {
    result = memmove(result, v13, 96 * v12);
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
  v8 = v7 + 32 + 96 * result;
  type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>.Fork();
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

  result = v8 + 96 * a3;
  v13 = (v7 + 32 + 96 * a2);
  if (result != v13 || result >= v13 + 96 * v12)
  {
    result = memmove(result, v13, 96 * v12);
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
  v8 = v7 + 32 + (result << 6);
  type metadata accessor for AnimatorState<CGFloat>.Fork(0, &lazy cache variable for type metadata for AnimatorState<ResolvedGradientVector>.Fork, lazy protocol witness table accessor for type ResolvedGradientVector and conformance ResolvedGradientVector);
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

  result = v8 + (a3 << 6);
  v13 = (v7 + 32 + (a2 << 6));
  if (result != v13 || result >= v13 + 64 * v12)
  {
    result = memmove(result, v13, v12 << 6);
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
  v8 = v7 + 32 + (result << 6);
  type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>.Fork();
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

  result = v8 + (a3 << 6);
  v13 = (v7 + 32 + (a2 << 6));
  if (result != v13 || result >= v13 + 64 * v12)
  {
    result = memmove(result, v13, v12 << 6);
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
  v8 = v7 + 32 + 144 * result;
  type metadata accessor for AnimatorState<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Fork();
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

  result = v8 + 144 * a3;
  v13 = (v7 + 32 + 144 * a2);
  if (result != v13 || result >= v13 + 144 * v12)
  {
    result = memmove(result, v13, 144 * v12);
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
  v8 = v7 + 32 + (result << 7);
  type metadata accessor for AnimatorState<CGFloat>.Fork(0, &lazy cache variable for type metadata for AnimatorState<_ShapeStyle_Pack.Fill.AnimatableData>.Fork, lazy protocol witness table accessor for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData);
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

  result = v8 + (a3 << 7);
  v13 = (v7 + 32 + (a2 << 7));
  if (result != v13 || result >= v13 + 128 * v12)
  {
    result = memmove(result, v13, v12 << 7);
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
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 88 * result;
  type metadata accessor for AnimatorState<CGFloat>.Fork(0, &lazy cache variable for type metadata for AnimatorState<_ShapeStyle_Pack.Effect.Kind.AnimatableData>.Fork, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 88 * a3;
  v13 = (v7 + 32 + 88 * a2);
  if (result != v13 || result >= v13 + 88 * v12)
  {
    result = memmove(result, v13, 88 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
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
  v8 = v7 + 32 + 96 * result;
  type metadata accessor for AnimatorState<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>.Fork();
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

  result = v8 + 96 * a3;
  v13 = (v7 + 32 + 96 * a2);
  if (result != v13 || result >= v13 + 96 * v12)
  {
    result = memmove(result, v13, 96 * v12);
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
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 296 * result;
  type metadata accessor for AnimatorState<CGFloat>.Fork(0, &lazy cache variable for type metadata for AnimatorState<ConcentricRectangle.AnimatableData>.Fork, lazy protocol witness table accessor for type ConcentricRectangle.AnimatableData and conformance ConcentricRectangle.AnimatableData);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 296 * a3;
  v13 = (v7 + 32 + 296 * a2);
  if (result != v13 || result >= v13 + 296 * v12)
  {
    result = memmove(result, v13, 296 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
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
  v8 = v7 + 32 + 56 * result;
  type metadata accessor for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>.Fork();
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

  result = v8 + 56 * a3;
  v13 = (v7 + 32 + 56 * a2);
  if (result != v13 || result >= v13 + 56 * v12)
  {
    result = memmove(result, v13, 56 * v12);
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
  v8 = v7 + 32 + (result << 6);
  type metadata accessor for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>.Fork();
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

  result = v8 + (a3 << 6);
  v13 = (v7 + 32 + (a2 << 6));
  if (result != v13 || result >= v13 + 64 * v12)
  {
    result = memmove(result, v13, v12 << 6);
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
  v8 = v7 + 32 + 80 * result;
  type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>.Fork();
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

  result = v8 + 80 * a3;
  v13 = (v7 + 32 + 80 * a2);
  if (result != v13 || result >= v13 + 80 * v12)
  {
    result = memmove(result, v13, 80 * v12);
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
  v8 = v7 + 32 + (result << 6);
  type metadata accessor for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>.Fork();
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

  result = v8 + (a3 << 6);
  v13 = (v7 + 32 + (a2 << 6));
  if (result != v13 || result >= v13 + 64 * v12)
  {
    result = memmove(result, v13, v12 << 6);
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
  v8 = v7 + 32 + (result << 6);
  type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>.Fork();
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

  result = v8 + (a3 << 6);
  v13 = (v7 + 32 + (a2 << 6));
  if (result != v13 || result >= v13 + 64 * v12)
  {
    result = memmove(result, v13, v12 << 6);
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
  v8 = v7 + 32 + 136 * result;
  type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>.Fork();
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

  result = v8 + 136 * a3;
  v13 = (v7 + 32 + 136 * a2);
  if (result != v13 || result >= v13 + 136 * v12)
  {
    result = memmove(result, v13, 136 * v12);
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
  v8 = v7 + 32 + 144 * result;
  type metadata accessor for AnimatorState<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>.Fork();
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

  result = v8 + 144 * a3;
  v13 = (v7 + 32 + 144 * a2);
  if (result != v13 || result >= v13 + 144 * v12)
  {
    result = memmove(result, v13, 144 * v12);
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
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 168 * result;
  type metadata accessor for AnimatorState<CGFloat>.Fork(0, &lazy cache variable for type metadata for AnimatorState<RoundedRectangularShapeCorners.AnimatableData>.Fork, lazy protocol witness table accessor for type RoundedRectangularShapeCorners.AnimatableData and conformance RoundedRectangularShapeCorners.AnimatableData);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 168 * a3;
  v13 = (v7 + 32 + 168 * a2);
  if (result != v13 || result >= v13 + 168 * v12)
  {
    result = memmove(result, v13, 168 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 72 * result;
  type metadata accessor for AnimatorState<CGFloat>.Fork(0, &lazy cache variable for type metadata for AnimatorState<Edge.Corner.Style.AnimatableData>.Fork, lazy protocol witness table accessor for type Edge.Corner.Style.AnimatableData and conformance Edge.Corner.Style.AnimatableData);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 72 * a3;
  v13 = (v7 + 32 + 72 * a2);
  if (result != v13 || result >= v13 + 72 * v12)
  {
    result = memmove(result, v13, 72 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
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
  v8 = v7 + 32 + (result << 6);
  type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>.Fork();
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

  result = v8 + (a3 << 6);
  v13 = (v7 + 32 + (a2 << 6));
  if (result != v13 || result >= v13 + 64 * v12)
  {
    result = memmove(result, v13, v12 << 6);
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
  v8 = v7 + 32 + 80 * result;
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

  result = v8 + 80 * a3;
  v13 = (v7 + 32 + 80 * a2);
  v14 = 80 * v12;
  v15 = &v13[80 * v12];
  if (result != v13 || result >= v15)
  {
    result = memmove(result, v13, v14);
  }

  v17 = *(v7 + 16);
  v9 = __OFADD__(v17, v10);
  v18 = v17 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v18;
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
  v8 = v7 + 32 + 120 * result;
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

  result = v8 + 120 * a3;
  v13 = (v7 + 32 + 120 * a2);
  v14 = 120 * v12;
  v15 = &v13[120 * v12];
  if (result != v13 || result >= v15)
  {
    result = memmove(result, v13, v14);
  }

  v17 = *(v7 + 16);
  v9 = __OFADD__(v17, v10);
  v18 = v17 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v18;
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
  v8 = v7 + 32 + 8 * result;
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

uint64_t LayoutEngineBox.mutateEngine<A, B>(as:do:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(*v4 + 176) == a4)
  {
    MEMORY[0x1EEE9AC00](a1);
    v17[2] = v5;
    v17[3] = v6;
    v8 = *(v7 + 184);
    v9 = *(v7 + 192);
    v17[4] = v10;
    v17[5] = v8;
    v17[6] = v12;
    v17[7] = v11;
    v17[8] = v13;
    return _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v4 + v9, partial apply for closure #1 in LayoutEngineBox.mutateEngine<A, B>(as:do:), v17, v5, MEMORY[0x1E69E73E0], v15, MEMORY[0x1E69E7410], v14);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void *assignWithCopy for ViewGeometry(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];

  a1[3] = a2[3];
  a1[4] = a2[4];
  a1[5] = a2[5];
  a1[6] = a2[6];
  a1[7] = a2[7];
  return a1;
}

uint64_t partial apply for specialized closure #1 in Layout.updateLayoutComputer<A>(rule:layoutContext:children:)(uint64_t a1)
{
  return partial apply for specialized closure #1 in Layout.updateLayoutComputer<A>(rule:layoutContext:children:)(a1, 1);
}

{
  return partial apply for specialized closure #1 in Layout.updateLayoutComputer<A>(rule:layoutContext:children:)(a1, 0);
}

uint64_t specialized ViewLayoutEngine.update(layout:context:children:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, Swift::UInt32 a5, int a6, uint64_t a7, char a8)
{
  v9 = v8;

  *(v9 + 136) = a6;
  *(v9 + 144) = a7;
  *v26 = a5;
  swift_getKeyPath();
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for EnvironmentFetch<LayoutDirection>, &type metadata for LayoutDirection, type metadata accessor for EnvironmentFetch);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a5);
  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for KeyPath<EnvironmentValues, LayoutDirection>, &type metadata for EnvironmentValues, &type metadata for LayoutDirection, MEMORY[0x1E69E77A8]);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._finalize()();
  lazy protocol witness table accessor for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>();
  lazy protocol witness table accessor for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>();
  v16 = *static Rule<>._cachedValue(options:owner:hashValue:bodyPtr:update:)();

  *(v9 + 152) = v16;
  *v9 = a1;
  *(v9 + 8) = a2;
  v17 = a3 & 1;
  *(v9 + 16) = a3 & 1;
  v25[0] = 1;
  v26[0] = 1;
  *(v9 + 176) = 0u;
  *(v9 + 192) = 0u;
  *(v9 + 160) = 0u;
  *(v9 + 208) = 1;
  *(v9 + 216) = 0u;
  *(v9 + 232) = 0u;
  *(v9 + 248) = 0u;
  *(v9 + 264) = 1;
  *(v9 + 272) = 0u;
  *(v9 + 288) = 0u;
  *(v9 + 304) = 0u;
  *(v9 + 320) = 1;

  v18 = MEMORY[0x1E69E7CC0];
  *(v9 + 368) = 0;
  *(v9 + 376) = 0;
  *(v9 + 360) = v18;
  *(v9 + 384) = 0;
  *(v9 + 385) = *v25;
  *(v9 + 388) = *&v25[3];
  *(v9 + 392) = 0;
  *(v9 + 400) = 0;
  *(v9 + 408) = 0;
  *(v9 + 409) = *v26;
  *(v9 + 412) = *&v26[3];
  *(v9 + 432) = 0;
  *(v9 + 416) = 0;
  *(v9 + 424) = 0;

  *(v9 + 440) = 0;
  v19 = *(v9 + 136);
  v20 = *(v9 + 144);
  v21 = *(v9 + 152);

  if (v21)
  {
    v22 = 256;
  }

  else
  {
    v22 = 0;
  }

  specialized HVStack.updateCache(_:subviews:)(v9 + 24, v19, v20, v22, a1, a2, v17, a8);
}

char *specialized HVStack.updateCache(_:subviews:)(uint64_t a1, int a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  v14 = *(a1 + 98);
  v15 = a7 & 1;
  v16 = a4 & 1;
  v17 = (a4 >> 8) & 1;
  v18 = *(a1 + 80);
  v25[4] = *(a1 + 64);
  v26[0] = v18;
  *(v26 + 15) = *(a1 + 95);
  v19 = *(a1 + 16);
  v25[0] = *a1;
  v25[1] = v19;
  v20 = *(a1 + 48);
  v25[2] = *(a1 + 32);
  v25[3] = v20;

  outlined destroy of StackLayout.Header(v25);
  *a1 = a5;
  *(a1 + 8) = a6;
  *(a1 + 16) = v15;
  *(a1 + 17) = a8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xFFF0000000000000;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xFFF0000000000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = a2;
  *(a1 + 88) = a3;
  *(a1 + 96) = v16;
  *(a1 + 97) = v17;
  *(a1 + 98) = v14;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *(a1 + 104);
  if (isUniquelyReferenced_nonNull_native)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v22 + 16));
  }

  else
  {
    v23 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI11StackLayoutV5Child33_00690F480F8D293143B214DBE6D72CD0LLV_Tt1g5(0, *(v22 + 24) >> 1);

    *(a1 + 104) = v23;
  }

  return StackLayout.makeChildren()();
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2)
{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

__n128 partial apply for specialized closure #1 in StatefulRule<>.update<A>(to:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  *a1 = *v2;
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  v5 = *(v2 + 64);
  *(a1 + 48) = *(v2 + 48);
  *(a1 + 64) = v5;
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  v6 = *(v2 + 80);
  v7 = *(v2 + 96);
  v8 = *(v2 + 128);
  *(a1 + 112) = *(v2 + 112);
  *(a1 + 128) = v8;
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  result = *(v2 + 144);
  v10 = *(v2 + 160);
  v11 = *(v2 + 176);
  *(a1 + 185) = *(v2 + 185);
  *(a1 + 160) = v10;
  *(a1 + 176) = v11;
  *(a1 + 144) = result;
  return result;
}

{
  v2 = *(v1 + 16);
  *a1 = *v2;
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  v5 = *(v2 + 64);
  *(a1 + 48) = *(v2 + 48);
  *(a1 + 64) = v5;
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  v6 = *(v2 + 80);
  v7 = *(v2 + 96);
  v8 = *(v2 + 128);
  *(a1 + 112) = *(v2 + 112);
  *(a1 + 128) = v8;
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  result = *(v2 + 144);
  v10 = *(v2 + 160);
  v11 = *(v2 + 176);
  *(a1 + 192) = *(v2 + 192);
  *(a1 + 160) = v10;
  *(a1 + 176) = v11;
  *(a1 + 144) = result;
  return result;
}

{
  v2 = *(v1 + 16);
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[3];
  *(a1 + 32) = v2[2];
  *(a1 + 48) = v5;
  *a1 = v3;
  *(a1 + 16) = v4;
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[7];
  *(a1 + 96) = v2[6];
  *(a1 + 112) = v8;
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  result = v2[8];
  v10 = v2[9];
  v11 = v2[10];
  *(a1 + 176) = *(v2 + 176);
  *(a1 + 144) = v10;
  *(a1 + 160) = v11;
  *(a1 + 128) = result;
  return result;
}

{
  v2 = *(v1 + 16);
  v3 = *v2;
  v4 = v2[2];
  *(a1 + 16) = v2[1];
  *(a1 + 32) = v4;
  *a1 = v3;
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[6];
  *(a1 + 80) = v2[5];
  *(a1 + 96) = v7;
  *(a1 + 48) = v5;
  *(a1 + 64) = v6;
  result = v2[7];
  v9 = v2[8];
  v10 = v2[9];
  *(a1 + 153) = *(v2 + 153);
  *(a1 + 128) = v9;
  *(a1 + 144) = v10;
  *(a1 + 112) = result;
  return result;
}

{
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v3;
  v4 = *(v2 + 32);
  v5 = *(v2 + 48);
  v6 = *(v2 + 80);
  *(a1 + 64) = *(v2 + 64);
  *(a1 + 80) = v6;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  v7 = *(v2 + 96);
  v8 = *(v2 + 112);
  v9 = *(v2 + 144);
  *(a1 + 128) = *(v2 + 128);
  *(a1 + 144) = v9;
  *(a1 + 96) = v7;
  *(a1 + 112) = v8;
  result = *(v2 + 160);
  v11 = *(v2 + 176);
  v12 = *(v2 + 192);
  *(a1 + 201) = *(v2 + 201);
  *(a1 + 176) = v11;
  *(a1 + 192) = v12;
  *(a1 + 160) = result;
  return result;
}

{
  v2 = *(v1 + 16);
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[3];
  *(a1 + 32) = v2[2];
  *(a1 + 48) = v5;
  *a1 = v3;
  *(a1 + 16) = v4;
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[7];
  *(a1 + 96) = v2[6];
  *(a1 + 112) = v8;
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  result = v2[8];
  v10 = v2[9];
  v11 = v2[10];
  *(a1 + 169) = *(v2 + 169);
  *(a1 + 144) = v10;
  *(a1 + 160) = v11;
  *(a1 + 128) = result;
  return result;
}

uint64_t Transaction.effectiveAnimation.getter(void *a1)
{
  v2 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(a1);
  if (v2 && v2[9])
  {
  }

  if (_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA014TracksVelocityF033_FD9125BC1E04E33D1D7BE4A31225AA98LLVG_Tt2g5(a1))
  {
    if (one-time initialization token for velocityTracking != -1)
    {
      swift_once();
    }
  }

  return 0;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA014TracksVelocityF033_FD9125BC1E04E33D1D7BE4A31225AA98LLVG_Tt2g5(void *a1)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for TransactionPropertyKey<TracksVelocityKey>, &type metadata for TracksVelocityKey, &protocol witness table for TracksVelocityKey, type metadata accessor for TransactionPropertyKey);
  BloomFilter.init(hashValue:)(v2);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA014TracksVelocityV033_FD9125BC1E04E33D1D7BE4A31225AA98LLVG_Tt0B5(a1, v4);
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA014TracksVelocityV033_FD9125BC1E04E33D1D7BE4A31225AA98LLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA014TracksVelocityV033_FD9125BC1E04E33D1D7BE4A31225AA98LLVG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for TransactionPropertyKey<TracksVelocityKey>, &type metadata for TracksVelocityKey, &protocol witness table for TracksVelocityKey, type metadata accessor for TransactionPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

uint64_t LayoutProxy.explicitAlignment(_:at:)(uint64_t a1, __int128 *a2)
{
  v9 = a2[1];
  v10 = *a2;
  if (*(v2 + 4) == *MEMORY[0x1E698D3F8])
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    InputValue = &static LayoutComputer.defaultValue;
  }

  else
  {
    InputValue = AGGraphGetInputValue();
  }

  v5 = *InputValue;
  v6 = one-time initialization token for lockAssertionsAreEnabled;

  if (v6 != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_12;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (!_MovableLockIsOwner(static Update._lock))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_12:
    v11[0] = v10;
    v11[1] = v9;
    v7 = (*(*v5 + 144))(a1, v11);

    return v7;
  }

  return result;
}

uint64_t UnaryLayoutEngine.layoutPriority()(uint64_t a1)
{
  v2 = (v1 + *(a1 + 40));
  v3 = *(v2 + 2);
  v5 = *v2;
  v6 = v3;
  return (*(*(a1 + 24) + 64))(&v5, *(a1 + 16));
}

uint64_t UnaryLayoutEngine.explicitAlignment(_:at:)(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = a2[1];
  v20 = *a2;
  v21 = v6;
  UnaryLayoutEngine.childPlacement(at:)(&v20, a3, &v22);
  v8 = *(&v24 + 1);
  v7 = v25;
  v9 = v26;
  v10 = v27;
  v11 = v3 + *(a3 + 40);
  *&v20 = v22;
  BYTE8(v20) = v23;
  *&v21 = *(&v23 + 1);
  BYTE8(v21) = v24;
  LayoutProxy.dimensions(in:)(&v20, &v22);
  v12 = *(&v23 + 1);
  v13 = *(v11 + 8);
  *&v20 = *v11;
  DWORD2(v20) = v13;
  v22 = *(&v23 + 1);
  v19 = *&v24;
  v23 = v24;
  *&v24 = v25;
  v14 = COERCE_DOUBLE(LayoutProxy.explicitAlignment(_:at:)(a1, &v22));
  v16 = v15;

  if ((v16 & 1) == 0)
  {
    v17 = v9 - v8 * v12;
    if (a1)
    {
      v17 = v10 - v7 * v19;
    }

    v14 = v17 + v14;
  }

  return *&v14;
}

void type metadata accessor for LayoutEngineBox<UnaryPositionAwareLayoutEngine<_SafeAreaIgnoringLayout>>()
{
  if (!lazy cache variable for type metadata for LayoutEngineBox<UnaryPositionAwareLayoutEngine<_SafeAreaIgnoringLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for UnaryPositionAwareLayoutEngine<_SafeAreaIgnoringLayout>, lazy protocol witness table accessor for type _SafeAreaIgnoringLayout and conformance _SafeAreaIgnoringLayout, &type metadata for _SafeAreaIgnoringLayout, type metadata accessor for UnaryPositionAwareLayoutEngine);
    v0 = type metadata accessor for LayoutEngineBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for LayoutEngineBox<UnaryPositionAwareLayoutEngine<_SafeAreaIgnoringLayout>>);
    }
  }
}

uint64_t UnaryLayoutEngine.childPlacement(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X8>)
{
  v4 = v3;
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 16);
  v11 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v16;
  v18 = v16[1];
  v19 = v16[2];
  v20 = v16[3];
  (*(v21 + 16))(v8, v4, a2, v13);
  (*(v11 + 32))(v15, v8, v10);
  v22 = *(a2 + 40);
  v23 = (v4 + *(a2 + 36));
  v24 = *v23;
  v54 = *(v23 + 2);
  v25 = (v4 + v22);
  v26 = (v4 + *(a2 + 48));
  v70 = *(v26 + 136);
  v71 = *(v26 + 152);
  v72 = *(v26 + 168);
  v73 = *(v26 + 184);
  v68 = *(v26 + 104);
  v69 = *(v26 + 120);
  v27 = v26[16];
  v64 = v26[15];
  v65 = v27;
  v28 = v26[18];
  v66 = v26[17];
  v67 = v28;
  v29 = v26[14];
  v62 = v26[13];
  v30 = *v25;
  v53 = *(v25 + 2);
  *&v74 = v17;
  *(&v74 + 1) = v18;
  *&v75 = v19;
  *(&v75 + 1) = v20;
  v31 = *(v26 + 96);
  v32 = *(v26 + 200);
  v33 = *(v26 + 304);
  v63 = v29;
  if (((v31 & 1) != 0 || (v34 = v26[3], v57 = v26[2], v58 = v34, v35 = v26[5], v59 = v26[4], v60 = v35, v36 = v26[1], v55 = *v26, v56 = v36, v61 = v31, !specialized static ViewSize.== infix(_:_:)(&v74, &v55))) && ((v32 & 1) != 0 || (v57 = v70, v58 = v71, v59 = v72, v60 = v73, v55 = v68, v56 = v69, v61 = v32, !specialized static ViewSize.== infix(_:_:)(&v74, &v55))) && ((v33 & 1) != 0 || (v57 = v64, v58 = v65, v59 = v66, v60 = v67, v55 = v62, v56 = v63, v61 = v33, !specialized static ViewSize.== infix(_:_:)(&v74, &v55))))
  {
    v39 = *(a2 + 24);
    *&v76[0] = v30;
    DWORD2(v76[0]) = v53;
    *&v55 = v24;
    DWORD2(v55) = v54;
    *&v56 = v17;
    *(&v56 + 1) = v18;
    *&v57 = v19;
    *(&v57 + 1) = v20;
    LOBYTE(v58) = 0;
    (*(v39 + 48))(v76, &v55, v10);
    v40 = *(v26 + 152);
    v41 = *(v26 + 184);
    v26[17] = *(v26 + 168);
    v26[18] = v41;
    *(v26 + 304) = *(v26 + 200);
    v42 = *(v26 + 120);
    v26[13] = *(v26 + 104);
    v26[14] = v42;
    v26[15] = *(v26 + 136);
    v26[16] = v40;
    v43 = v26[1];
    *(v26 + 104) = *v26;
    *(v26 + 120) = v43;
    v44 = v26[3];
    *(v26 + 136) = v26[2];
    v45 = v26[4];
    v46 = v26[5];
    *(v26 + 200) = *(v26 + 96);
    *(v26 + 184) = v46;
    *(v26 + 168) = v45;
    *(v26 + 152) = v44;
    v47 = v75;
    *v26 = v74;
    v26[1] = v47;
    v48 = *a3;
    v49 = a3[1];
    v50 = a3[3];
    v26[4] = a3[2];
    v26[5] = v50;
    v26[2] = v48;
    v26[3] = v49;
    *(v26 + 96) = 0;
  }

  else
  {
    v76[0] = v57;
    v76[1] = v58;
    v77 = v59;
    v78 = v60;
    v37 = v58;
    *a3 = v57;
    a3[1] = v37;
    v38 = v78;
    a3[2] = v77;
    a3[3] = v38;
  }

  return (*(v11 + 8))(v15, v10);
}

void PlacementContext.proposedSize.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v13 = *(v1 + 32);
  v5 = *(v1 + 48);
  if (one-time initialization token for v3 != -1)
  {
    swift_once();
  }

  v6 = static Semantics.v3;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (static Semantics.forced < v6)
  {
LABEL_7:
    if (v5)
    {
      InputValue = AGGraphGetInputValue();
      v8 = 0;
      v9 = 0;
      v3 = *InputValue;
      v4 = InputValue[1];
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    goto LABEL_15;
  }

  if (v5)
  {
    v10 = AGGraphGetInputValue();
    v11 = *v10;
    v4 = *(v10 + 8);
    v12 = *(v10 + 16);
  }

  else
  {
    v11 = v3;
    v12 = v13;
  }

  v18 = v11;
  v19 = v4;
  v20 = v12;
  ViewSize.proposal.getter(&v14);
  v3 = v14;
  v8 = v15;
  v4 = v16;
  v9 = v17;
LABEL_15:
  *a1 = v3;
  *(a1 + 8) = v8;
  *(a1 + 16) = v4;
  *(a1 + 24) = v9;
}

uint64_t ViewDimensions.subscript.getter(unint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = one-time initialization token for lockAssertionsAreEnabled;

  if (v9 != -1)
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
LABEL_16:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }
  }

  v16 = v5;
  v17 = v6;
  v18 = v7;
  v19 = v8;
  (*(*v3 + 144))(a1, &v16);
  v11 = v10;

  if (v11)
  {
    if (one-time initialization token for typeCache != -1)
    {
      swift_once();
    }

    os_unfair_lock_lock(&static AlignmentKey.typeCache);
    if (a1 < 2)
    {
      __break(1u);
    }

    else if (a1 >> 1 <= *(off_1ED537F58 + 2))
    {
      v13 = (off_1ED537F58 + 16 * (a1 >> 1) + 16);
      v15 = *v13;
      v14 = v13[1];
      os_unfair_lock_unlock(&static AlignmentKey.typeCache);
      v16 = v3;
      v17 = v4;
      v18 = v5;
      v19 = v6;
      v20 = v7;
      v21 = v8;
      return (*(v14 + 8))(&v16, v15, v14);
    }

    __break(1u);
    goto LABEL_16;
  }

  return result;
}

{
  return ViewDimensions.subscript.getter(a1);
}

uint64_t DynamicLayoutViewChildGeometry.updateValue()()
{
  v1 = v0;
  v17 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v3 = *(Value + 8);
  v4 = *(Value + 32);
  v5 = *(Value + 40);
  v6 = *(Value + 44);
  *&v13 = *Value;
  *(&v13 + 1) = v3;
  v14 = *(Value + 16);
  *&v15 = v4;
  BYTE8(v15) = v5;
  HIDWORD(v15) = v6;
  *&v12[0] = *(v1 + 8);

  v7 = DynamicContainer.Info.viewIndex(id:)(v12);
  LOBYTE(v3) = v8;

  if ((v3 & 1) == 0)
  {
    _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_2(0, &lazy cache variable for type metadata for [ViewGeometry], &type metadata for ViewGeometry, MEMORY[0x1E69E62F8]);
    if (v7 < *(*AGGraphGetValue() + 16))
    {
      v9 = AGGraphGetValue();
      if ((v7 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v7 < *(*v9 + 16))
      {
        v10 = (*v9 + (v7 << 6));
        v13 = v10[2];
        v14 = v10[3];
        v15 = v10[4];
        v16 = v10[5];
        v12[0] = v13;
        v12[1] = v14;
        v12[2] = v15;
        v12[3] = v16;
        return AGGraphSetOutputValue();
      }

      __break(1u);
    }
  }

  result = AGGraphGetOutputValue();
  if (result)
  {
    return result;
  }

  if (one-time initialization token for zero != -1)
  {
    swift_once();
  }

  v13 = static ViewGeometry.zero;
  v14 = *&qword_1EAB13B40;
  v15 = xmmword_1EAB13B50;
  v16 = unk_1EAB13B60;
  return AGGraphSetOutputValue();
}

void specialized FrameLayoutCommon.commonPlacement(of:in:childProposal:)(unint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v9 = v8;
  v12 = a1;
  v14 = HIDWORD(a1);
  v15 = *(a3 + 16);
  v16 = *(a3 + 24);
  v17 = *(a3 + 48);
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  v18 = static LayoutComputer.defaultValue;
  v46 = unk_1ED53B850;
  if (v17)
  {

    InputValue = AGGraphGetInputValue();
    v20 = *InputValue;
    v21 = InputValue[1];
    v22 = AGGraphGetInputValue();
    v23 = *v22;
    v16 = v22[1];
  }

  else
  {
    v23 = v15;

    v20 = v15;
    v21 = v16;
  }

  v55 = v12;
  v56 = v14;
  v57 = a2;
  v51 = a4;
  v52 = a5 & 1;
  v47 = a6;
  v53 = a6;
  v54 = a7 & 1;
  LayoutProxy.dimensions(in:)(&v51, &v58);
  v25 = v58;
  v24 = v59;
  v26 = v60;
  v27 = v61;
  v29 = v62;
  v28 = v63;
  v31 = *(v9 + 96);
  v30 = *(v9 + 104);
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&static AlignmentKey.typeCache);
  if (v31 < 2)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v31 >> 1 > *(off_1ED537F58 + 2))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v32 = (off_1ED537F58 + 16 * (v31 >> 1) + 16);
  v33 = *v32;
  v34 = v32[1];
  os_unfair_lock_unlock(&static AlignmentKey.typeCache);
  os_unfair_lock_lock(&static AlignmentKey.typeCache);
  if (v30 < 2)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v30 >> 1 <= *(off_1ED537F58 + 2))
  {
    v35 = (off_1ED537F58 + 16 * (v30 >> 1) + 16);
    v36 = *v35;
    v37 = v35[1];
    os_unfair_lock_unlock(&static AlignmentKey.typeCache);
    v58 = v18;
    v59 = v46;
    v60 = v20;
    v61 = v21;
    v62 = v23;
    v63 = v16;
    v38 = (*(v34 + 8))(&v58, v33, v34);
    v39 = v20;
    v40 = v38;
    v58 = v18;
    v59 = v46;
    v60 = v39;
    v61 = v21;
    v62 = v23;
    v63 = v16;
    v41 = (*(v37 + 8))(&v58, v36, v37);
    v58 = v25;
    v59 = v24;
    v60 = v26;
    v61 = v27;
    v62 = v29;
    v63 = v28;
    ViewDimensions.subscript.getter(v31);
    v43 = v40 - v42;
    v58 = v25;
    v59 = v24;
    v60 = v26;
    v61 = v27;
    v62 = v29;
    v63 = v28;
    ViewDimensions.subscript.getter(v30);
    v45 = v44;

    LOBYTE(v58) = a5 & 1;
    LOBYTE(v51) = a7 & 1;
    *a8 = a4;
    *(a8 + 8) = a5 & 1;
    *(a8 + 16) = v47;
    *(a8 + 24) = a7 & 1;
    *(a8 + 32) = 0;
    *(a8 + 40) = 0;
    *(a8 + 48) = v43;
    *(a8 + 56) = v41 - v45;
    return;
  }

LABEL_16:
  __break(1u);
}

{
  v10 = a1;
  v12 = HIDWORD(a1);
  v14 = *(v8 + 32);
  v13 = *(v8 + 40);
  v15 = *(a3 + 16);
  v16 = *(a3 + 24);
  v17 = *(a3 + 48);
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  v18 = static LayoutComputer.defaultValue;
  v44 = unk_1ED53B850;
  if (v17)
  {

    InputValue = AGGraphGetInputValue();
    v20 = *InputValue;
    v21 = InputValue[1];
    v22 = AGGraphGetInputValue();
    v23 = *v22;
    v16 = v22[1];
  }

  else
  {
    v23 = v15;

    v20 = v15;
    v21 = v16;
  }

  v53 = v10;
  v54 = v12;
  v55 = a2;
  v49 = a4;
  v50 = a5 & 1;
  v51 = a6;
  v52 = a7 & 1;
  LayoutProxy.dimensions(in:)(&v49, &v56);
  v25 = v56;
  v24 = v57;
  v26 = v58;
  v27 = v59;
  v29 = v60;
  v28 = v61;
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&static AlignmentKey.typeCache);
  if (v14 < 2)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v14 >> 1 > *(off_1ED537F58 + 2))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v30 = (off_1ED537F58 + 16 * (v14 >> 1) + 16);
  v31 = *v30;
  v32 = v30[1];
  os_unfair_lock_unlock(&static AlignmentKey.typeCache);
  os_unfair_lock_lock(&static AlignmentKey.typeCache);
  if (v13 < 2)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v13 >> 1 <= *(off_1ED537F58 + 2))
  {
    v33 = (off_1ED537F58 + 16 * (v13 >> 1) + 16);
    v34 = *v33;
    v35 = v33[1];
    os_unfair_lock_unlock(&static AlignmentKey.typeCache);
    v56 = v18;
    v57 = v44;
    v58 = v20;
    v59 = v21;
    v60 = v23;
    v61 = v16;
    v36 = (*(v32 + 8))(&v56, v31, v32);
    v37 = v20;
    v38 = v36;
    v56 = v18;
    v57 = v44;
    v58 = v37;
    v59 = v21;
    v60 = v23;
    v61 = v16;
    v39 = (*(v35 + 8))(&v56, v34, v35);
    v56 = v25;
    v57 = v24;
    v58 = v26;
    v59 = v27;
    v60 = v29;
    v61 = v28;
    ViewDimensions.subscript.getter(v14);
    v41 = v38 - v40;
    v56 = v25;
    v57 = v24;
    v58 = v26;
    v59 = v27;
    v60 = v29;
    v61 = v28;
    ViewDimensions.subscript.getter(v13);
    v43 = v42;

    LOBYTE(v56) = a5 & 1;
    LOBYTE(v49) = a7 & 1;
    *a8 = a4;
    *(a8 + 8) = a5 & 1;
    *(a8 + 16) = a6;
    *(a8 + 24) = a7 & 1;
    *(a8 + 32) = 0;
    *(a8 + 40) = 0;
    *(a8 + 48) = v41;
    *(a8 + 56) = v39 - v43;
    return;
  }

LABEL_16:
  __break(1u);
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI15AnyTrackedValue33_D64CE6C88E7413721C59A34C0C940F2CLL_p_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for _ContiguousArrayStorage<AnyTrackedValue>();
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void protocol witness for UnaryLayout.placement(of:in:) in conformance _FrameLayout(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3[1];
  v25 = *v3;
  v26[0] = v5;
  v26[1] = v3[2];
  v6 = a2[1];
  v23[0] = *a2;
  v23[1] = v6;
  v8 = *a2;
  v7 = a2[1];
  v23[2] = a2[2];
  v9 = *a1;
  v10 = *(a1 + 8);
  v24 = *(a2 + 48);
  v19 = v8;
  v20 = v7;
  v21 = a2[2];
  v22 = *(a2 + 48);
  PlacementContext.proposedSize.getter(v15);
  v11 = &v17;
  if (BYTE8(v25))
  {
    v12 = v15;
  }

  else
  {
    v12 = &v25;
  }

  v13 = *v12;
  if (!BYTE8(v26[0]))
  {
    v11 = v26;
  }

  v14 = *v11;
  LOBYTE(v19) = BYTE8(v25) & v16;
  v15[0] = BYTE8(v26[0]) & v18;
  specialized FrameLayoutCommon.commonPlacement(of:in:childProposal:)(v9, v10, v23, v13, BYTE8(v25) & v16, v14, BYTE8(v26[0]) & v18, a3);
}

void _FlexFrameLayout.childPlacementProposal(of:context:)(int *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *a1;
  v7 = *(a1 + 2);
  v8 = *(a1 + 3);
  v9 = *(a1 + 48);
  v10 = *v2;
  v11 = *(v2 + 8);
  v12 = *(v2 + 24);
  v13 = *(v3 + 32);
  v14 = *(v3 + 40);
  if (v9)
  {
    v15 = *AGGraphGetInputValue();
    if ((v12 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v15 = *(a1 + 2);
    if ((v12 & 1) == 0)
    {
LABEL_17:
      v17 = 0;
      v18 = v15;
      goto LABEL_18;
    }
  }

  v30 = v6;
  v31 = *(a1 + 1);
  v32 = a1[3];
  v33 = v7;
  v34 = v8;
  v35 = *(a1 + 2);
  v36 = v9;
  PlacementContext.proposedSize.getter(v29);
  if ((v29[8] & 1) == 0)
  {
    goto LABEL_17;
  }

  v16 = -INFINITY;
  if (!v11)
  {
    v16 = v10;
  }

  if (v14)
  {
    if (v16 >= v15)
    {
      goto LABEL_17;
    }

    v17 = 1;
    v18 = 0.0;
    if (v15 >= INFINITY && v15 <= INFINITY)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v16 >= v15 || v15 >= v13)
    {
      goto LABEL_17;
    }

    v17 = 1;
    v18 = 0.0;
  }

LABEL_18:
  v20 = *(v3 + 48);
  v21 = *(v3 + 56);
  v22 = *(v3 + 72);
  v23 = *(v3 + 80);
  v24 = *(v3 + 88);
  if (v9)
  {
    v25 = *(AGGraphGetInputValue() + 8);
    if ((v22 & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v25 = v8;
    if ((v22 & 1) == 0)
    {
LABEL_33:
      v27 = 0;
      v28 = v25;
      goto LABEL_34;
    }
  }

  v30 = v6;
  v31 = *(a1 + 1);
  v32 = a1[3];
  v33 = v7;
  v34 = v8;
  v35 = *(a1 + 2);
  v36 = v9;
  PlacementContext.proposedSize.getter(v29);
  if ((v29[24] & 1) == 0)
  {
    goto LABEL_33;
  }

  v26 = -INFINITY;
  if (!v21)
  {
    v26 = v20;
  }

  if (v24)
  {
    if (v26 >= v25)
    {
      goto LABEL_33;
    }

    v27 = 1;
    v28 = 0.0;
    if (v25 >= INFINITY && v25 <= INFINITY)
    {
      goto LABEL_33;
    }
  }

  else
  {
    if (v26 >= v25 || v25 >= v23)
    {
      goto LABEL_33;
    }

    v27 = 1;
    v28 = 0.0;
  }

LABEL_34:
  *a2 = v18;
  *(a2 + 8) = v17;
  *(a2 + 16) = v28;
  *(a2 + 24) = v27;
}

void _PaddingLayout.placement(of:in:)(unsigned int *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v24 = *(a1 + 3);
  *v25 = *(a1 + 7);
  *&v25[13] = *(a1 + 41);
  v17 = COERCE_DOUBLE(__PAIR64__(v4, v3));
  v18 = v5;
  v6 = _PaddingLayout.effectiveInsets(in:)(&v17);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v21 = v3;
  v22 = v4;
  v23 = v5;
  PlacementContext.proposedSize.getter(&v17);
  v13 = v17;
  v14 = v18;
  v15 = v20;
  if ((v18 & 1) == 0)
  {
    v13 = v17 - (v8 + v12);
    if (v13 < 0.0)
    {
      v13 = 0.0;
    }
  }

  v16 = v19;
  if ((v20 & 1) == 0)
  {
    v16 = v19 - (v6 + v10);
    if (v16 < 0.0)
    {
      v16 = 0.0;
    }
  }

  *a2 = v13;
  *(a2 + 8) = v14;
  *(a2 + 16) = v16;
  *(a2 + 24) = v15;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = v8;
  *(a2 + 56) = v6;
}

void ViewLayoutEngine.explicitAlignment(_:at:)(unint64_t a1, double *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v10 = v3 + *(a3 + 52);
  v11 = *(v10 + 16);
  v34[0] = *v10;
  v34[1] = v11;
  v33[0] = v6;
  v33[1] = v7;
  v33[2] = v8;
  v33[3] = v9;
  if (!specialized static ViewSize.== infix(_:_:)(v34, v33))
  {
    *v10 = v6;
    *(v10 + 8) = v7;
    *(v10 + 16) = v8;
    *(v10 + 24) = v9;
    v12 = *(a3 + 56);

    *(v3 + v12) = MEMORY[0x1E69E7CC0];
    v13 = v3 + *(a3 + 60);
    *v13 = 0;
    *(v13 + 8) = 0;
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0;
    *(v13 + 40) = 0;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
  }

  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&static AlignmentKey.typeCache);
  if (a1 < 2)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (a1 >> 1 > *(off_1ED537F58 + 2))
  {
LABEL_16:
    __break(1u);
    return;
  }

  v32 = *(off_1ED537F58 + (a1 >> 1) + 1);
  os_unfair_lock_unlock(&static AlignmentKey.typeCache);
  v14 = v3 + *(a3 + 60);
  v15 = *(v14 + 48);
  v16 = v32;
  if (!*v14 || v32 != *v14)
  {
    v17 = *(v14 + 24);
    if ((!v17 || v32 != v17) && (!v15 || v32 != v15))
    {
      MEMORY[0x1EEE9AC00](*(v14 + 32));
      v25[1] = *(a3 + 16);
      v26 = v6;
      v27 = v7;
      v28 = v8;
      v29 = v9;
      v30 = a1;
      v31 = v18;
      type metadata accessor for Axis?(0, &lazy cache variable for type metadata for CGFloat?, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
      _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v3, partial apply for closure #1 in ViewLayoutEngine.explicitAlignment(_:at:), v25, a3, MEMORY[0x1E69E73E0], v19, MEMORY[0x1E69E7410], v20);
      v21 = *&v34[0];
      v22 = BYTE8(v34[0]);
      v23 = *(v14 + 40);
      *(v14 + 48) = *(v14 + 24);
      *(v14 + 64) = v23;
      v24 = *(v14 + 16);
      *(v14 + 24) = *v14;
      *(v14 + 40) = v24;
      *v14 = v16;
      *(v14 + 8) = v21;
      *(v14 + 16) = v22;
    }
  }
}

void *closure #1 in ViewLayoutEngine.explicitAlignment(_:at:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>)
{
  v26 = *MEMORY[0x1E69E9840];
  type metadata accessor for ViewLayoutEngine();
  result = closure #1 in closure #1 in ViewLayoutEngine.explicitAlignment(_:at:)(a2, a1, a3, a4, a5, a6, &v24, a8, a9, a10, a11);
  v23 = v25;
  *a7 = v24;
  *(a7 + 8) = v23;
  return result;
}

uint64_t StackLayout.explicitAlignment(_:in:proposal:)(unint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, double a6, double a7, double a8, double a9)
{
  if (a3)
  {
    v15 = NAN;
  }

  else
  {
    v15 = *&a2;
  }

  if (a5)
  {
    v16 = NAN;
  }

  else
  {
    v16 = *&a4;
  }

  v17 = *(v9 + 104);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew()(v17);
  }

  v18 = *(v17 + 2);
  *&v22 = a8;
  *(&v22 + 1) = a9;
  v23 = v15;
  v24 = v16;
  *&result = COERCE_DOUBLE(StackLayout.UnmanagedImplementation.explicitAlignment(_:at:)(a1, &v22, v9, (v17 + 32), v18));
  *(v9 + 104) = v17;
  if (a1)
  {
    v21 = a7;
  }

  else
  {
    v21 = a6;
  }

  if ((v20 & 1) == 0)
  {
    *&result = v21 + *&result;
  }

  return result;
}

uint64_t HVStack.explicitAlignment(of:in:proposal:subviews:cache:)(unint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, double a6, double a7, double a8, double a9)
{
  return StackLayout.explicitAlignment(_:in:proposal:)(a1, a2, a3 & 1, a4, a5 & 1, a6, a7, a8, a9);
}

{
  return HVStack.explicitAlignment(of:in:proposal:subviews:cache:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

{
  return HVStack.explicitAlignment(of:in:proposal:subviews:cache:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t StackLayout.UnmanagedImplementation.explicitAlignment(_:at:)(unint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = a2[1];
  v39 = *a2;
  v40 = v9;
  v10 = StackLayout.UnmanagedImplementation.proposalWhenPlacing(in:)(&v39, a3);
  LOBYTE(v39) = v11 & 1;
  LOBYTE(v38[0]) = v12 & 1;
  StackLayout.UnmanagedImplementation.placeChildren(in:)(v10, v11 & 1, v13, v12 & 1, a3, a4, a5);
  v45 = 0;
  v46 = 1;
  if (!a4 || !a5)
  {
    return 0;
  }

  v14 = 0;
  v15 = 120 * a5;
  v16 = a1 >> 1;
  v17 = &type metadata instantiation cache for TupleTypeDescription;
  while (1)
  {
    v18 = *a4;
    v19 = *(a4 + 16);
    v20 = *(a4 + 32);
    v42 = *(a4 + 48);
    v22 = *(a4 + 80);
    v21 = *(a4 + 96);
    v23 = *(a4 + 64);
    *&v44[32] = *(a4 + 112);
    *v44 = v22;
    *&v44[16] = v21;
    v43 = v23;
    v40 = v19;
    v41 = v20;
    v39 = v18;
    v24 = *(&v42 + 1);
    v25 = v23;
    v36 = *&v44[8];
    v37 = *&v44[24];
    outlined init with copy of StackLayout.Child(&v39, v38);
    if (v17[337] != -1)
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
        break;
      }
    }

    v38[0] = v36;
    v38[1] = v37;
    v26 = (*(**(&v25 + 1) + 144))(a1, v38);
    if (v27)
    {
      outlined destroy of StackLayout.Child(&v39);
    }

    else
    {
      v28 = *&v26;
      if (a1)
      {
        v24 = *&v25;
      }

      if (one-time initialization token for typeCache != -1)
      {
        swift_once();
      }

      os_unfair_lock_lock(&static AlignmentKey.typeCache);
      if (a1 < 2)
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        break;
      }

      if (v16 > *(off_1ED537F58 + 2))
      {
        goto LABEL_24;
      }

      v29 = v17;
      v30 = v24 + v28;
      v31 = (off_1ED537F58 + 16 * v16 + 16);
      v32 = *v31;
      v33 = v31[1];
      os_unfair_lock_unlock(&static AlignmentKey.typeCache);
      (*(v33 + 16))(v14, &v45, v32, v33, v30);
      outlined destroy of StackLayout.Child(&v39);
      if (__OFADD__(v14++, 1))
      {
        goto LABEL_25;
      }

      v17 = v29;
    }

    a4 += 120;
    v15 -= 120;
    if (!v15)
    {
      return v45;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *closure #1 in closure #1 in ViewLayoutEngine.explicitAlignment(_:at:)@<X0>(char a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>)
{
  v56 = a7;
  v51 = a3;
  v52 = a4;
  v53 = a6;
  v18 = type metadata accessor for ViewLayoutEngine();
  v19 = *(v18 - 1);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v48[-v20];
  v22 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v48[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v55 = _threadLayoutData();
  _setThreadLayoutData();
  v54 = v22;
  v26 = *(v22 + 16);
  v27 = a2;
  v26(v25, a2, a5);
  if (a1)
  {
    if (one-time initialization token for typeCache != -1)
    {
      swift_once();
    }

    os_unfair_lock_lock(&static AlignmentKey.typeCache);
    v37 = _s7SwiftUI12AlignmentKeyV2id4axisAcA0C2ID_pXp_AA4AxisOtcfcSuAC9TypeCache33_1135C055CD2C2B1265C25B13E3E74C01LLVzYTXEfU_(&qword_1ED537F50, v51, v52);
    os_unfair_lock_unlock(&static AlignmentKey.typeCache);
    v50 = 2 * v37;
    v62 = a8;
    v63 = a9;
    v64 = a10;
    v65 = a11;
    ViewSize.proposal.getter(&v58);
    v38 = v59;
    v51 = v60;
    v52 = v58;
    v49 = v61;
    (*(v19 + 16))(v21, v27, v18);
    v39 = &v21[v18[10]];
    LODWORD(v37) = *v39;
    v40 = v39[1];
    LOBYTE(v39) = v21[v18[11]];
    LOBYTE(v58) = 0;
    v67 = v39;
    v41 = *(v19 + 8);

    v41(v21, v18);
    LODWORD(v62) = v37;
    v63 = v40;
    LOBYTE(v64) = v58;
    BYTE1(v64) = v67;
    v42 = v18[9];
    v43 = *(v53 + 80);
    v66 = v38;
    v57 = v49;
    v35 = v43(v50 + 3, v52, v38, v51, v49, &v62, v27 + v42, a5, 0.0, 0.0, a8, a9, v53);
  }

  else
  {
    if (one-time initialization token for typeCache != -1)
    {
      swift_once();
    }

    os_unfair_lock_lock(&static AlignmentKey.typeCache);
    v28 = _s7SwiftUI12AlignmentKeyV2id4axisAcA0C2ID_pXp_AA4AxisOtcfcSuAC9TypeCache33_1135C055CD2C2B1265C25B13E3E74C01LLVzYTXEfU_(&qword_1ED537F50, v51, v52);
    os_unfair_lock_unlock(&static AlignmentKey.typeCache);
    v50 = 2 * v28;
    v62 = a8;
    v63 = a9;
    v64 = a10;
    v65 = a11;
    ViewSize.proposal.getter(&v58);
    v29 = v59;
    v51 = v60;
    v52 = v58;
    v49 = v61;
    (*(v19 + 16))(v21, v27, v18);
    v30 = &v21[v18[10]];
    LODWORD(v28) = *v30;
    v31 = v30[1];
    LOBYTE(v30) = v21[v18[11]];
    LOBYTE(v58) = 0;
    v67 = v30;
    v32 = *(v19 + 8);

    v32(v21, v18);
    LODWORD(v62) = v28;
    v63 = v31;
    LOBYTE(v64) = v58;
    BYTE1(v64) = v67;
    v33 = v18[9];
    v34 = *(v53 + 72);
    v66 = v29;
    v57 = v49;
    v35 = v34(v50 + 2, v52, v29, v51, v49, &v62, v27 + v33, a5, 0.0, 0.0, a8, a9, v53);
  }

  v44 = v35;
  v45 = v36;

  (*(v54 + 8))(v25, a5);
  result = _setThreadLayoutData();
  v47 = v56;
  *v56 = v44;
  *(v47 + 8) = v45 & 1;
  return result;
}

void _FlexFrameLayout.placement(of:in:)(unsigned int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a2[1];
  v25 = *a2;
  v26 = v8;
  v27 = a2[2];
  v28 = *(a2 + 48);
  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v9 = static Semantics_v5.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C != 1)
  {
    if (static Semantics.forced < v9)
    {
      goto LABEL_7;
    }

LABEL_10:
    v18 = v5;
    v19 = v6;
    v20 = v7;
    v13 = a2[1];
    v16[0] = *a2;
    v16[1] = v13;
    v16[2] = a2[2];
    v17 = *(a2 + 48);
    _FlexFrameLayout.childPlacementProposal(of:context:)(v16, &v21);
    v10 = v21;
    v14 = v22;
    v12 = v23;
    v15 = v24;
    goto LABEL_13;
  }

  if (dyld_program_sdk_at_least())
  {
    goto LABEL_10;
  }

LABEL_7:
  v10 = v26;
  if (v28)
  {
    InputValue = AGGraphGetInputValue();
    v10 = *InputValue;
    v12 = InputValue[1];
  }

  else
  {
    v12 = *(&v26 + 1);
  }

  v14 = 0;
  v15 = 0;
LABEL_13:
  LOBYTE(v16[0]) = v14;
  LOBYTE(v21) = v15;
  specialized FrameLayoutCommon.commonPlacement(of:in:childProposal:)(v5 | (v6 << 32), v7, &v25, v10, v14, v12, v15, a3);
}

unint64_t DynamicContainer.Info.viewIndex(id:)(unsigned int *a1)
{
  v2 = v1;
  v3 = v1[1];
  if (!*(v3 + 16))
  {
    return 0;
  }

  v4 = *v2;
  v5 = a1[1];
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(*a1);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  result = *(*(v3 + 56) + 8 * v6);
  if ((v4 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x193AC03C0](result, v4);
LABEL_7:
    v10 = *(v9 + 76);

    if (!__OFADD__(v10, v5))
    {
      return (v10 + v5);
    }

    goto LABEL_12;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (result < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_7;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
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
    v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(a1);
    if (v14)
    {
      *a2 = *(v14 + 72);
    }

    else
    {
      *a2 = 0;
    }

    goto LABEL_14;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.LayoutDirectionKey>, &type metadata for EnvironmentValues.LayoutDirectionKey, &protocol witness table for EnvironmentValues.LayoutDirectionKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v19);
    outlined init with take of AnyTrackedValue(v19, v20);
    v12 = v21;
    v13 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    (v13[1])(&type metadata for LayoutDirection, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(a1);
    if (v15)
    {
      v16 = *(v15 + 72);
    }

    else
    {
      v16 = 0;
    }

    *a2 = v16;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.LayoutDirectionKey>>();
    v21 = v17;
    v22 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v20[0]) = v16;
    specialized Dictionary.subscript.setter(v20, v8);
  }

LABEL_14:
  os_unfair_lock_unlock((v5 + 16));
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA07EnabledS033_09CE35833F3876FE3A3A46977D61FC64LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnabledKey>, &type metadata for EnabledKey, &protocol witness table for EnabledKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA07EnabledV033_09CE35833F3876FE3A3A46977D61FC64LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

uint64_t _AnyHashableBox.isEqual(to:)()
{
  result = swift_dynamicCastClass();
  if (result)
  {

    v1 = dispatch thunk of static Equatable.== infix(_:_:)();

    return v1 & 1;
  }

  return result;
}

uint64_t CoreColorClass(int a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __CoreColorClass_block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  v4 = a1;
  if (CoreColorClass_uiOnce != -1)
  {
    dispatch_once(&CoreColorClass_uiOnce, block);
  }

  if (a1)
  {
    return 0;
  }

  else
  {
    return CoreColorClass_uiClass;
  }
}

uint64_t protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance LazyLayoutReuseIdleInput(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  result = *(a2 + 8);
  if ((v3 & 1) == 0)
  {
    return (*a1 == *a2) & ~result;
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA07EnabledV033_09CE35833F3876FE3A3A46977D61FC64LLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA07EnabledV033_09CE35833F3876FE3A3A46977D61FC64LLVG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnabledKey>, &type metadata for EnabledKey, &protocol witness table for EnabledKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

Swift::Double __swiftcall ViewLayoutEngine.layoutPriority()()
{
  result = -INFINITY;
  if (*(*(v1 + *(v0 + 40) + 8) + 16))
  {
    return 0.0;
  }

  return result;
}

uint64_t specialized AnimatorState.removeListeners()()
{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[12];
  if (v2 >> 62)
  {
    goto LABEL_53;
  }

  result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = MEMORY[0x1E69E7CC0];
  if (result)
  {
    v5 = v1[12];
    if (v5 >> 62)
    {
      result = __CocoaSet.count.getter();
      v6 = result;
      if (result)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_6:
        if (v6 < 1)
        {
          __break(1u);
          goto LABEL_61;
        }

        for (i = 0; i != v6; ++i)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x193AC03C0](i, v5);
          }

          else
          {
            v8 = *(v5 + 8 * i + 32);
          }

          (*(*v8 + 96))();
        }
      }
    }

    v1[12] = v4;
  }

  swift_beginAccess();
  v9 = v1[13];
  if (!(v9 >> 62))
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_26;
    }

LABEL_16:
    v10 = v1[13];
    if (v10 >> 62)
    {
      result = __CocoaSet.count.getter();
      v11 = result;
      if (result)
      {
LABEL_18:
        if (v11 >= 1)
        {

          for (j = 0; j != v11; ++j)
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              v13 = MEMORY[0x193AC03C0](j, v10);
            }

            else
            {
              v13 = *(v10 + 8 * j + 32);
            }

            (*(*v13 + 96))();
          }

          goto LABEL_25;
        }

LABEL_61:
        __break(1u);
        return result;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_18;
      }
    }

LABEL_25:
    v1[13] = v4;

    goto LABEL_26;
  }

  result = __CocoaSet.count.getter();
  if (result)
  {
    goto LABEL_16;
  }

LABEL_26:
  if (one-time initialization token for v7_1 != -1)
  {
    swift_once();
  }

  v14 = static Semantics.v7_1;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    result = dyld_program_sdk_at_least();
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  else if (static Semantics.forced < v14)
  {
    return result;
  }

  result = swift_beginAccess();
  v15 = v1[17];
  v16 = *(v15 + 16);
  if (v16)
  {

    v17 = 0;
    while (1)
    {
      if (v17 >= *(v15 + 16))
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        result = __CocoaSet.count.getter();
        goto LABEL_3;
      }

      v18 = (v15 + 32 + 56 * v17);
      v19 = v18[6];
      v20 = *v18;

      if (!v20)
      {
LABEL_49:

        v1[17] = MEMORY[0x1E69E7CC0];
      }

      if (v19 >> 62)
      {
        v21 = __CocoaSet.count.getter();
        if (!v21)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v21)
        {
          goto LABEL_36;
        }
      }

      if (v21 < 1)
      {
        goto LABEL_52;
      }

      for (k = 0; k != v21; ++k)
      {
        if ((v19 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x193AC03C0](k, v19);
        }

        else
        {
          v23 = *(v19 + 8 * k + 32);
        }

        (*(*v23 + 96))();
      }

LABEL_36:
      ++v17;

      if (v17 == v16)
      {
        goto LABEL_49;
      }
    }
  }

  return result;
}

{
  swift_beginAccess();
  v1 = *(v0 + 18);
  if (v1 >> 62)
  {
    goto LABEL_52;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = MEMORY[0x1E69E7CC0];
  if (result)
  {
    v4 = *(v0 + 18);
    if (v4 >> 62)
    {
      result = __CocoaSet.count.getter();
      v5 = result;
      if (result)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
LABEL_6:
        if (v5 < 1)
        {
          __break(1u);
          goto LABEL_60;
        }

        v6 = v0;

        for (i = 0; i != v5; ++i)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x193AC03C0](i, v4);
          }

          else
          {
            v8 = *(v4 + 8 * i + 32);
          }

          (*(*v8 + 96))();
        }

        v0 = v6;
      }
    }

    *(v0 + 18) = v3;
  }

  swift_beginAccess();
  v9 = *(v0 + 19);
  if (!(v9 >> 62))
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_26;
    }

LABEL_16:
    v10 = *(v0 + 19);
    if (v10 >> 62)
    {
      result = __CocoaSet.count.getter();
      v11 = result;
      if (result)
      {
LABEL_18:
        if (v11 >= 1)
        {
          v12 = v0;

          for (j = 0; j != v11; ++j)
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              v14 = MEMORY[0x193AC03C0](j, v10);
            }

            else
            {
              v14 = *(v10 + 8 * j + 32);
            }

            (*(*v14 + 96))();
          }

          v0 = v12;
          goto LABEL_25;
        }

LABEL_60:
        __break(1u);
        return result;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_18;
      }
    }

LABEL_25:
    *(v0 + 19) = v3;

    goto LABEL_26;
  }

  result = __CocoaSet.count.getter();
  if (result)
  {
    goto LABEL_16;
  }

LABEL_26:
  if (one-time initialization token for v7_1 != -1)
  {
    swift_once();
  }

  v15 = static Semantics.v7_1;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    result = dyld_program_sdk_at_least();
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  else if (static Semantics.forced < v15)
  {
    return result;
  }

  result = swift_beginAccess();
  v16 = *(v0 + 23);
  v17 = *(v16 + 16);
  if (v17)
  {
    v22 = v0;

    v18 = 0;
    while (1)
    {
      if (v18 >= *(v16 + 16))
      {
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        result = __CocoaSet.count.getter();
        goto LABEL_3;
      }

      v0 = lazy protocol witness table accessor for type _AnyAnimatableData and conformance _AnyAnimatableData;
      outlined init with copy of AnimatorState<_AnyAnimatableData>.Fork(v16 + 32 + 80 * v18, v23, &lazy cache variable for type metadata for AnimatorState<_AnyAnimatableData>.Fork, lazy protocol witness table accessor for type _AnyAnimatableData and conformance _AnyAnimatableData);
      v19 = v24;

      outlined destroy of AnimatorState<_AnyAnimatableData>.Fork(v23, &lazy cache variable for type metadata for AnimatorState<_AnyAnimatableData>.Fork, lazy protocol witness table accessor for type _AnyAnimatableData and conformance _AnyAnimatableData);
      if (v19 >> 62)
      {
        v20 = __CocoaSet.count.getter();
        if (!v20)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v20)
        {
          goto LABEL_36;
        }
      }

      if (v20 < 1)
      {
        goto LABEL_51;
      }

      for (k = 0; k != v20; ++k)
      {
        if ((v19 & 0xC000000000000001) != 0)
        {
          v0 = MEMORY[0x193AC03C0](k, v19);
        }

        else
        {
          v0 = *(v19 + 8 * k + 32);
        }

        (*(*v0 + 96))();
      }

LABEL_36:
      ++v18;

      if (v18 == v17)
      {

        *(v22 + 23) = MEMORY[0x1E69E7CC0];
      }
    }
  }

  return result;
}

{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[10];
  if (v2 >> 62)
  {
    goto LABEL_53;
  }

  result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = MEMORY[0x1E69E7CC0];
  if (result)
  {
    v5 = v1[10];
    if (v5 >> 62)
    {
      result = __CocoaSet.count.getter();
      v6 = result;
      if (result)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_6:
        if (v6 < 1)
        {
          __break(1u);
          goto LABEL_61;
        }

        for (i = 0; i != v6; ++i)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x193AC03C0](i, v5);
          }

          else
          {
            v8 = *(v5 + 8 * i + 32);
          }

          (*(*v8 + 96))();
        }
      }
    }

    v1[10] = v4;
  }

  swift_beginAccess();
  v9 = v1[11];
  if (!(v9 >> 62))
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_26;
    }

LABEL_16:
    v10 = v1[11];
    if (v10 >> 62)
    {
      result = __CocoaSet.count.getter();
      v11 = result;
      if (result)
      {
LABEL_18:
        if (v11 >= 1)
        {

          for (j = 0; j != v11; ++j)
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              v13 = MEMORY[0x193AC03C0](j, v10);
            }

            else
            {
              v13 = *(v10 + 8 * j + 32);
            }

            (*(*v13 + 96))();
          }

          goto LABEL_25;
        }

LABEL_61:
        __break(1u);
        return result;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_18;
      }
    }

LABEL_25:
    v1[11] = v4;

    goto LABEL_26;
  }

  result = __CocoaSet.count.getter();
  if (result)
  {
    goto LABEL_16;
  }

LABEL_26:
  if (one-time initialization token for v7_1 != -1)
  {
    swift_once();
  }

  v14 = static Semantics.v7_1;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    result = dyld_program_sdk_at_least();
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  else if (static Semantics.forced < v14)
  {
    return result;
  }

  result = swift_beginAccess();
  v15 = v1[15];
  v16 = *(v15 + 16);
  if (v16)
  {

    v17 = 0;
    while (1)
    {
      if (v17 >= *(v15 + 16))
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        result = __CocoaSet.count.getter();
        goto LABEL_3;
      }

      v18 = (v15 + 32 + 48 * v17);
      v19 = v18[5];
      v20 = *v18;

      if (!v20)
      {
LABEL_49:

        v1[15] = MEMORY[0x1E69E7CC0];
      }

      if (v19 >> 62)
      {
        v21 = __CocoaSet.count.getter();
        if (!v21)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v21)
        {
          goto LABEL_36;
        }
      }

      if (v21 < 1)
      {
        goto LABEL_52;
      }

      for (k = 0; k != v21; ++k)
      {
        if ((v19 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x193AC03C0](k, v19);
        }

        else
        {
          v23 = *(v19 + 8 * k + 32);
        }

        (*(*v23 + 96))();
      }

LABEL_36:
      ++v17;

      if (v17 == v16)
      {
        goto LABEL_49;
      }
    }
  }

  return result;
}

{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[16];
  if (v2 >> 62)
  {
    goto LABEL_53;
  }

  result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = MEMORY[0x1E69E7CC0];
  if (result)
  {
    v5 = v1[16];
    if (v5 >> 62)
    {
      result = __CocoaSet.count.getter();
      v6 = result;
      if (result)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_6:
        if (v6 < 1)
        {
          __break(1u);
          goto LABEL_61;
        }

        for (i = 0; i != v6; ++i)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x193AC03C0](i, v5);
          }

          else
          {
            v8 = *(v5 + 8 * i + 32);
          }

          (*(*v8 + 96))();
        }
      }
    }

    v1[16] = v4;
  }

  swift_beginAccess();
  v9 = v1[17];
  if (!(v9 >> 62))
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_26;
    }

LABEL_16:
    v10 = v1[17];
    if (v10 >> 62)
    {
      result = __CocoaSet.count.getter();
      v11 = result;
      if (result)
      {
LABEL_18:
        if (v11 >= 1)
        {

          for (j = 0; j != v11; ++j)
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              v13 = MEMORY[0x193AC03C0](j, v10);
            }

            else
            {
              v13 = *(v10 + 8 * j + 32);
            }

            (*(*v13 + 96))();
          }

          goto LABEL_25;
        }

LABEL_61:
        __break(1u);
        return result;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_18;
      }
    }

LABEL_25:
    v1[17] = v4;

    goto LABEL_26;
  }

  result = __CocoaSet.count.getter();
  if (result)
  {
    goto LABEL_16;
  }

LABEL_26:
  if (one-time initialization token for v7_1 != -1)
  {
    swift_once();
  }

  v14 = static Semantics.v7_1;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    result = dyld_program_sdk_at_least();
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  else if (static Semantics.forced < v14)
  {
    return result;
  }

  result = swift_beginAccess();
  v15 = v1[21];
  v16 = *(v15 + 16);
  if (v16)
  {

    v17 = 0;
    while (1)
    {
      if (v17 >= *(v15 + 16))
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        result = __CocoaSet.count.getter();
        goto LABEL_3;
      }

      v18 = v15 + 32 + 72 * v17;
      v19 = *(v18 + 64);
      v20 = *(v18 + 16);
      v21 = *(v18 + 48);
      v32 = *(v18 + 32);
      v33 = v21;
      v31 = v20;
      v30 = *v18;
      v34 = v19;
      v26 = v32;
      v27 = v21;
      v25 = v20;
      v28 = v30;
      outlined init with copy of AnimatorState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>.Fork(&v30, v29, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork);
      if (!v28)
      {
LABEL_49:

        v1[21] = MEMORY[0x1E69E7CC0];
      }

      v30 = v28;
      v31 = v25;
      v32 = v26;
      v33 = v27;
      v34 = v19;

      outlined destroy of AnimatorState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>.Fork(&v30, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork);
      if (v19 >> 62)
      {
        v22 = __CocoaSet.count.getter();
        if (!v22)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v22 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v22)
        {
          goto LABEL_36;
        }
      }

      if (v22 < 1)
      {
        goto LABEL_52;
      }

      for (k = 0; k != v22; ++k)
      {
        if ((v19 & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x193AC03C0](k, v19);
        }

        else
        {
          v24 = *(v19 + 8 * k + 32);
        }

        (*(*v24 + 96))();
      }

LABEL_36:

      if (++v17 == v16)
      {
        goto LABEL_49;
      }
    }
  }

  return result;
}

{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[12];
  if (v2 >> 62)
  {
    goto LABEL_53;
  }

  result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = MEMORY[0x1E69E7CC0];
  if (result)
  {
    v5 = v1[12];
    if (v5 >> 62)
    {
      result = __CocoaSet.count.getter();
      v6 = result;
      if (result)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_6:
        if (v6 < 1)
        {
          __break(1u);
          goto LABEL_61;
        }

        for (i = 0; i != v6; ++i)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x193AC03C0](i, v5);
          }

          else
          {
            v8 = *(v5 + 8 * i + 32);
          }

          (*(*v8 + 96))();
        }
      }
    }

    v1[12] = v4;
  }

  swift_beginAccess();
  v9 = v1[13];
  if (!(v9 >> 62))
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_26;
    }

LABEL_16:
    v10 = v1[13];
    if (v10 >> 62)
    {
      result = __CocoaSet.count.getter();
      v11 = result;
      if (result)
      {
LABEL_18:
        if (v11 >= 1)
        {

          for (j = 0; j != v11; ++j)
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              v13 = MEMORY[0x193AC03C0](j, v10);
            }

            else
            {
              v13 = *(v10 + 8 * j + 32);
            }

            (*(*v13 + 96))();
          }

          goto LABEL_25;
        }

LABEL_61:
        __break(1u);
        return result;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_18;
      }
    }

LABEL_25:
    v1[13] = v4;

    goto LABEL_26;
  }

  result = __CocoaSet.count.getter();
  if (result)
  {
    goto LABEL_16;
  }

LABEL_26:
  if (one-time initialization token for v7_1 != -1)
  {
    swift_once();
  }

  v14 = static Semantics.v7_1;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    result = dyld_program_sdk_at_least();
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  else if (static Semantics.forced < v14)
  {
    return result;
  }

  result = swift_beginAccess();
  v15 = v1[17];
  v16 = *(v15 + 16);
  if (v16)
  {

    v17 = 0;
    while (1)
    {
      if (v17 >= *(v15 + 16))
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        result = __CocoaSet.count.getter();
        goto LABEL_3;
      }

      v18 = (v15 + 32 + 56 * v17);
      v19 = v18[6];
      v20 = *v18;

      if (!v20)
      {
LABEL_49:

        v1[17] = MEMORY[0x1E69E7CC0];
      }

      if (v19 >> 62)
      {
        v21 = __CocoaSet.count.getter();
        if (!v21)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v21)
        {
          goto LABEL_36;
        }
      }

      if (v21 < 1)
      {
        goto LABEL_52;
      }

      for (k = 0; k != v21; ++k)
      {
        if ((v19 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x193AC03C0](k, v19);
        }

        else
        {
          v23 = *(v19 + 8 * k + 32);
        }

        (*(*v23 + 96))();
      }

LABEL_36:
      ++v17;

      if (v17 == v16)
      {
        goto LABEL_49;
      }
    }
  }

  return result;
}

{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[14];
  if (v2 >> 62)
  {
    goto LABEL_53;
  }

  result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = MEMORY[0x1E69E7CC0];
  if (result)
  {
    v5 = v1[14];
    if (v5 >> 62)
    {
      result = __CocoaSet.count.getter();
      v6 = result;
      if (result)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_6:
        if (v6 < 1)
        {
          __break(1u);
          goto LABEL_61;
        }

        for (i = 0; i != v6; ++i)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x193AC03C0](i, v5);
          }

          else
          {
            v8 = *(v5 + 8 * i + 32);
          }

          (*(*v8 + 96))();
        }
      }
    }

    v1[14] = v4;
  }

  swift_beginAccess();
  v9 = v1[15];
  if (!(v9 >> 62))
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_26;
    }

LABEL_16:
    v10 = v1[15];
    if (v10 >> 62)
    {
      result = __CocoaSet.count.getter();
      v11 = result;
      if (result)
      {
LABEL_18:
        if (v11 >= 1)
        {

          for (j = 0; j != v11; ++j)
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              v13 = MEMORY[0x193AC03C0](j, v10);
            }

            else
            {
              v13 = *(v10 + 8 * j + 32);
            }

            (*(*v13 + 96))();
          }

          goto LABEL_25;
        }

LABEL_61:
        __break(1u);
        return result;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_18;
      }
    }

LABEL_25:
    v1[15] = v4;

    goto LABEL_26;
  }

  result = __CocoaSet.count.getter();
  if (result)
  {
    goto LABEL_16;
  }

LABEL_26:
  if (one-time initialization token for v7_1 != -1)
  {
    swift_once();
  }

  v14 = static Semantics.v7_1;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    result = dyld_program_sdk_at_least();
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  else if (static Semantics.forced < v14)
  {
    return result;
  }

  result = swift_beginAccess();
  v15 = v1[19];
  v16 = *(v15 + 16);
  if (v16)
  {

    v17 = 0;
    while (1)
    {
      if (v17 >= *(v15 + 16))
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        result = __CocoaSet.count.getter();
        goto LABEL_3;
      }

      v18 = (v15 + 32 + (v17 << 6));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[3];
      v32 = v18[2];
      v33 = v21;
      v30 = v19;
      v31 = v20;
      v26 = v32;
      v27 = v21;
      v25 = v20;
      v28 = v19;
      outlined init with copy of AnimatorState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>.Fork(&v30, v29, type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>.Fork);
      if (!v28)
      {
LABEL_49:

        v1[19] = MEMORY[0x1E69E7CC0];
      }

      v30 = v28;
      v31 = v25;
      v32 = v26;
      v33 = v27;

      outlined destroy of AnimatorState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>.Fork(&v30, type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>.Fork);
      if (*(&v27 + 1) >> 62)
      {
        v22 = __CocoaSet.count.getter();
        if (!v22)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v22 = *((*(&v27 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v22)
        {
          goto LABEL_36;
        }
      }

      if (v22 < 1)
      {
        goto LABEL_52;
      }

      for (k = 0; k != v22; ++k)
      {
        if ((*(&v27 + 1) & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x193AC03C0](k, *(&v27 + 1));
        }

        else
        {
          v24 = *(*(&v27 + 1) + 8 * k + 32);
        }

        (*(*v24 + 96))();
      }

LABEL_36:

      if (++v17 == v16)
      {
        goto LABEL_49;
      }
    }
  }

  return result;
}

{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[14];
  if (v2 >> 62)
  {
    goto LABEL_53;
  }

  result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = MEMORY[0x1E69E7CC0];
  if (result)
  {
    v5 = v1[14];
    if (v5 >> 62)
    {
      result = __CocoaSet.count.getter();
      v6 = result;
      if (result)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_6:
        if (v6 < 1)
        {
          __break(1u);
          goto LABEL_61;
        }

        for (i = 0; i != v6; ++i)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x193AC03C0](i, v5);
          }

          else
          {
            v8 = *(v5 + 8 * i + 32);
          }

          (*(*v8 + 96))();
        }
      }
    }

    v1[14] = v4;
  }

  swift_beginAccess();
  v9 = v1[15];
  if (!(v9 >> 62))
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_26;
    }

LABEL_16:
    v10 = v1[15];
    if (v10 >> 62)
    {
      result = __CocoaSet.count.getter();
      v11 = result;
      if (result)
      {
LABEL_18:
        if (v11 >= 1)
        {

          for (j = 0; j != v11; ++j)
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              v13 = MEMORY[0x193AC03C0](j, v10);
            }

            else
            {
              v13 = *(v10 + 8 * j + 32);
            }

            (*(*v13 + 96))();
          }

          goto LABEL_25;
        }

LABEL_61:
        __break(1u);
        return result;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_18;
      }
    }

LABEL_25:
    v1[15] = v4;

    goto LABEL_26;
  }

  result = __CocoaSet.count.getter();
  if (result)
  {
    goto LABEL_16;
  }

LABEL_26:
  if (one-time initialization token for v7_1 != -1)
  {
    swift_once();
  }

  v14 = static Semantics.v7_1;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    result = dyld_program_sdk_at_least();
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  else if (static Semantics.forced < v14)
  {
    return result;
  }

  result = swift_beginAccess();
  v15 = v1[19];
  v16 = *(v15 + 16);
  if (v16)
  {

    v17 = 0;
    while (1)
    {
      if (v17 >= *(v15 + 16))
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        result = __CocoaSet.count.getter();
        goto LABEL_3;
      }

      v18 = (v15 + 32 + (v17 << 6));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[3];
      v32 = v18[2];
      v33 = v21;
      v30 = v19;
      v31 = v20;
      v26 = v32;
      v27 = v21;
      v25 = v20;
      v28 = v19;
      outlined init with copy of AnimatorState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>.Fork(&v30, v29, type metadata accessor for AnimatorState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>.Fork);
      if (!v28)
      {
LABEL_49:

        v1[19] = MEMORY[0x1E69E7CC0];
      }

      v30 = v28;
      v31 = v25;
      v32 = v26;
      v33 = v27;

      outlined destroy of AnimatorState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>.Fork(&v30, type metadata accessor for AnimatorState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>.Fork);
      if (*(&v27 + 1) >> 62)
      {
        v22 = __CocoaSet.count.getter();
        if (!v22)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v22 = *((*(&v27 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v22)
        {
          goto LABEL_36;
        }
      }

      if (v22 < 1)
      {
        goto LABEL_52;
      }

      for (k = 0; k != v22; ++k)
      {
        if ((*(&v27 + 1) & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x193AC03C0](k, *(&v27 + 1));
        }

        else
        {
          v24 = *(*(&v27 + 1) + 8 * k + 32);
        }

        (*(*v24 + 96))();
      }

LABEL_36:

      if (++v17 == v16)
      {
        goto LABEL_49;
      }
    }
  }

  return result;
}

{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[24];
  if (v2 >> 62)
  {
    goto LABEL_53;
  }

  result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = MEMORY[0x1E69E7CC0];
  if (result)
  {
    v5 = *(v1 + 192);
    if (v5 >> 62)
    {
      result = __CocoaSet.count.getter();
      v6 = result;
      if (result)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_6:
        if (v6 < 1)
        {
          __break(1u);
          goto LABEL_61;
        }

        for (i = 0; i != v6; ++i)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x193AC03C0](i, v5);
          }

          else
          {
            v8 = *(v5 + 8 * i + 32);
          }

          (*(*v8 + 96))();
        }
      }
    }

    *(v1 + 192) = v4;
  }

  swift_beginAccess();
  v9 = *(v1 + 200);
  if (!(v9 >> 62))
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_26;
    }

LABEL_16:
    v10 = *(v1 + 200);
    if (v10 >> 62)
    {
      result = __CocoaSet.count.getter();
      v11 = result;
      if (result)
      {
LABEL_18:
        if (v11 >= 1)
        {

          for (j = 0; j != v11; ++j)
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              v13 = MEMORY[0x193AC03C0](j, v10);
            }

            else
            {
              v13 = *(v10 + 8 * j + 32);
            }

            (*(*v13 + 96))();
          }

          goto LABEL_25;
        }

LABEL_61:
        __break(1u);
        return result;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_18;
      }
    }

LABEL_25:
    *(v1 + 200) = v4;

    goto LABEL_26;
  }

  result = __CocoaSet.count.getter();
  if (result)
  {
    goto LABEL_16;
  }

LABEL_26:
  if (one-time initialization token for v7_1 != -1)
  {
    swift_once();
  }

  v14 = static Semantics.v7_1;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    result = dyld_program_sdk_at_least();
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  else if (static Semantics.forced < v14)
  {
    return result;
  }

  result = swift_beginAccess();
  v15 = *(v1 + 232);
  v16 = *(v15 + 16);
  if (v16)
  {
    v26 = v1;

    v1 = 0;
    while (1)
    {
      if (v1 >= *(v15 + 16))
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        result = __CocoaSet.count.getter();
        goto LABEL_3;
      }

      v17 = v15 + 32 + 104 * v1;
      v18 = *(v17 + 96);
      v19 = *(v17 + 48);
      v20 = *(v17 + 80);
      v38 = *(v17 + 64);
      v39 = v20;
      v37 = v19;
      v21 = *v17;
      v22 = *(v17 + 16);
      v36 = *(v17 + 32);
      v34 = v21;
      v35 = v22;
      v40 = v18;
      v30 = v38;
      v31 = v20;
      v28 = v36;
      v29 = v37;
      v27 = v22;
      v32 = v21;
      outlined init with copy of AnimatorState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>.Fork(&v34, v33, type metadata accessor for AnimatorState<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>.Fork);
      if (!v32)
      {
LABEL_49:

        *(v26 + 232) = MEMORY[0x1E69E7CC0];
      }

      v34 = v32;
      v35 = v27;
      v36 = v28;
      v37 = v29;
      v38 = v30;
      v39 = v31;
      v40 = v18;

      outlined destroy of AnimatorState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>.Fork(&v34, type metadata accessor for AnimatorState<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>.Fork);
      if (v18 >> 62)
      {
        v23 = __CocoaSet.count.getter();
        if (!v23)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v23 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v23)
        {
          goto LABEL_36;
        }
      }

      if (v23 < 1)
      {
        goto LABEL_52;
      }

      for (k = 0; k != v23; ++k)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v25 = MEMORY[0x193AC03C0](k, v18);
        }

        else
        {
          v25 = *(v18 + 8 * k + 32);
        }

        (*(*v25 + 96))();
      }

LABEL_36:

      if (++v1 == v16)
      {
        goto LABEL_49;
      }
    }
  }

  return result;
}

{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[14];
  if (v2 >> 62)
  {
    goto LABEL_53;
  }

  result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = MEMORY[0x1E69E7CC0];
  if (result)
  {
    v5 = v1[14];
    if (v5 >> 62)
    {
      result = __CocoaSet.count.getter();
      v6 = result;
      if (result)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_6:
        if (v6 < 1)
        {
          __break(1u);
          goto LABEL_61;
        }

        for (i = 0; i != v6; ++i)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x193AC03C0](i, v5);
          }

          else
          {
            v8 = *(v5 + 8 * i + 32);
          }

          (*(*v8 + 96))();
        }
      }
    }

    v1[14] = v4;
  }

  swift_beginAccess();
  v9 = v1[15];
  if (!(v9 >> 62))
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_26;
    }

LABEL_16:
    v10 = v1[15];
    if (v10 >> 62)
    {
      result = __CocoaSet.count.getter();
      v11 = result;
      if (result)
      {
LABEL_18:
        if (v11 >= 1)
        {

          for (j = 0; j != v11; ++j)
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              v13 = MEMORY[0x193AC03C0](j, v10);
            }

            else
            {
              v13 = *(v10 + 8 * j + 32);
            }

            (*(*v13 + 96))();
          }

          goto LABEL_25;
        }

LABEL_61:
        __break(1u);
        return result;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_18;
      }
    }

LABEL_25:
    v1[15] = v4;

    goto LABEL_26;
  }

  result = __CocoaSet.count.getter();
  if (result)
  {
    goto LABEL_16;
  }

LABEL_26:
  if (one-time initialization token for v7_1 != -1)
  {
    swift_once();
  }

  v14 = static Semantics.v7_1;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    result = dyld_program_sdk_at_least();
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  else if (static Semantics.forced < v14)
  {
    return result;
  }

  result = swift_beginAccess();
  v15 = v1[19];
  v16 = *(v15 + 16);
  if (v16)
  {

    v17 = 0;
    while (1)
    {
      if (v17 >= *(v15 + 16))
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        result = __CocoaSet.count.getter();
        goto LABEL_3;
      }

      v18 = (v15 + 32 + (v17 << 6));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[3];
      v32 = v18[2];
      v33 = v21;
      v30 = v19;
      v31 = v20;
      v26 = v32;
      v27 = v21;
      v25 = v20;
      v28 = v19;
      outlined init with copy of AnimatorState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>.Fork(&v30, v29, type metadata accessor for AnimatorState<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>.Fork);
      if (!v28)
      {
LABEL_49:

        v1[19] = MEMORY[0x1E69E7CC0];
      }

      v30 = v28;
      v31 = v25;
      v32 = v26;
      v33 = v27;

      outlined destroy of AnimatorState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>.Fork(&v30, type metadata accessor for AnimatorState<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>.Fork);
      if (*(&v27 + 1) >> 62)
      {
        v22 = __CocoaSet.count.getter();
        if (!v22)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v22 = *((*(&v27 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v22)
        {
          goto LABEL_36;
        }
      }

      if (v22 < 1)
      {
        goto LABEL_52;
      }

      for (k = 0; k != v22; ++k)
      {
        if ((*(&v27 + 1) & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x193AC03C0](k, *(&v27 + 1));
        }

        else
        {
          v24 = *(*(&v27 + 1) + 8 * k + 32);
        }

        (*(*v24 + 96))();
      }

LABEL_36:

      if (++v17 == v16)
      {
        goto LABEL_49;
      }
    }
  }

  return result;
}

{
  swift_beginAccess();
  v1 = v0[14];
  if (v1 >> 62)
  {
    goto LABEL_53;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = MEMORY[0x1E69E7CC0];
  if (result)
  {
    v4 = v0[14];
    if (v4 >> 62)
    {
      result = __CocoaSet.count.getter();
      v5 = result;
      if (result)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
LABEL_6:
        if (v5 < 1)
        {
          __break(1u);
          goto LABEL_61;
        }

        v6 = v0;

        for (i = 0; i != v5; ++i)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x193AC03C0](i, v4);
          }

          else
          {
            v8 = *(v4 + 8 * i + 32);
          }

          (*(*v8 + 96))();
        }

        v0 = v6;
      }
    }

    v0[14] = v3;
  }

  swift_beginAccess();
  v9 = v0[15];
  if (!(v9 >> 62))
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_26;
    }

LABEL_16:
    v10 = v0[15];
    if (v10 >> 62)
    {
      result = __CocoaSet.count.getter();
      v11 = result;
      if (result)
      {
LABEL_18:
        if (v11 >= 1)
        {
          v12 = v0;

          for (j = 0; j != v11; ++j)
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              v14 = MEMORY[0x193AC03C0](j, v10);
            }

            else
            {
              v14 = *(v10 + 8 * j + 32);
            }

            (*(*v14 + 96))();
          }

          v0 = v12;
          goto LABEL_25;
        }

LABEL_61:
        __break(1u);
        return result;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_18;
      }
    }

LABEL_25:
    v0[15] = v3;

    goto LABEL_26;
  }

  result = __CocoaSet.count.getter();
  if (result)
  {
    goto LABEL_16;
  }

LABEL_26:
  if (one-time initialization token for v7_1 != -1)
  {
    swift_once();
  }

  v15 = static Semantics.v7_1;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    result = dyld_program_sdk_at_least();
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  else if (static Semantics.forced < v15)
  {
    return result;
  }

  result = swift_beginAccess();
  v16 = v0[19];
  v17 = *(v16 + 16);
  if (v17)
  {
    v25 = v0;

    v18 = 0;
    while (1)
    {
      if (v18 >= *(v16 + 16))
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        result = __CocoaSet.count.getter();
        goto LABEL_3;
      }

      v19 = (v16 + 32 + (v18 << 6));
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[3];
      v33 = v19[2];
      v34 = v22;
      v31 = v20;
      v32 = v21;
      v27 = v33;
      v28 = v22;
      v26 = v21;
      v29 = v20;
      outlined init with copy of AnimatorState<_AnyAnimatableData>.Fork(&v31, v30, &lazy cache variable for type metadata for AnimatorState<Color.ResolvedHDR._Animatable>.Fork, lazy protocol witness table accessor for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable);
      if (!v29)
      {
LABEL_49:

        v25[19] = MEMORY[0x1E69E7CC0];
      }

      v31 = v29;
      v32 = v26;
      v33 = v27;
      v34 = v28;

      outlined destroy of AnimatorState<_AnyAnimatableData>.Fork(&v31, &lazy cache variable for type metadata for AnimatorState<Color.ResolvedHDR._Animatable>.Fork, lazy protocol witness table accessor for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable);
      if (*(&v28 + 1) >> 62)
      {
        v23 = __CocoaSet.count.getter();
        if (!v23)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v23 = *((*(&v28 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v23)
        {
          goto LABEL_36;
        }
      }

      if (v23 < 1)
      {
        goto LABEL_52;
      }

      for (k = 0; k != v23; ++k)
      {
        if ((*(&v28 + 1) & 0xC000000000000001) != 0)
        {
          v0 = MEMORY[0x193AC03C0](k, *(&v28 + 1));
        }

        else
        {
          v0 = *(*(&v28 + 1) + 8 * k + 32);
        }

        (*(*v0 + 96))();
      }

LABEL_36:

      if (++v18 == v17)
      {
        goto LABEL_49;
      }
    }
  }

  return result;
}

{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[10];
  if (v2 >> 62)
  {
    goto LABEL_53;
  }

  result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = MEMORY[0x1E69E7CC0];
  if (result)
  {
    v5 = v1[10];
    if (v5 >> 62)
    {
      result = __CocoaSet.count.getter();
      v6 = result;
      if (result)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_6:
        if (v6 < 1)
        {
          __break(1u);
          goto LABEL_61;
        }

        for (i = 0; i != v6; ++i)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x193AC03C0](i, v5);
          }

          else
          {
            v8 = *(v5 + 8 * i + 32);
          }

          (*(*v8 + 96))();
        }
      }
    }

    v1[10] = v4;
  }

  swift_beginAccess();
  v9 = v1[11];
  if (!(v9 >> 62))
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_26;
    }

LABEL_16:
    v10 = v1[11];
    if (v10 >> 62)
    {
      result = __CocoaSet.count.getter();
      v11 = result;
      if (result)
      {
LABEL_18:
        if (v11 >= 1)
        {

          for (j = 0; j != v11; ++j)
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              v13 = MEMORY[0x193AC03C0](j, v10);
            }

            else
            {
              v13 = *(v10 + 8 * j + 32);
            }

            (*(*v13 + 96))();
          }

          goto LABEL_25;
        }

LABEL_61:
        __break(1u);
        return result;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_18;
      }
    }

LABEL_25:
    v1[11] = v4;

    goto LABEL_26;
  }

  result = __CocoaSet.count.getter();
  if (result)
  {
    goto LABEL_16;
  }

LABEL_26:
  if (one-time initialization token for v7_1 != -1)
  {
    swift_once();
  }

  v14 = static Semantics.v7_1;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    result = dyld_program_sdk_at_least();
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  else if (static Semantics.forced < v14)
  {
    return result;
  }

  result = swift_beginAccess();
  v15 = v1[15];
  v16 = *(v15 + 16);
  if (v16)
  {

    v17 = 0;
    while (1)
    {
      if (v17 >= *(v15 + 16))
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        result = __CocoaSet.count.getter();
        goto LABEL_3;
      }

      v18 = (v15 + 32 + 48 * v17);
      v19 = v18[5];
      v20 = *v18;

      if (!v20)
      {
LABEL_49:

        v1[15] = MEMORY[0x1E69E7CC0];
      }

      if (v19 >> 62)
      {
        v21 = __CocoaSet.count.getter();
        if (!v21)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v21)
        {
          goto LABEL_36;
        }
      }

      if (v21 < 1)
      {
        goto LABEL_52;
      }

      for (k = 0; k != v21; ++k)
      {
        if ((v19 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x193AC03C0](k, v19);
        }

        else
        {
          v23 = *(v19 + 8 * k + 32);
        }

        (*(*v23 + 96))();
      }

LABEL_36:
      ++v17;

      if (v17 == v16)
      {
        goto LABEL_49;
      }
    }
  }

  return result;
}

{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[16];
  if (v2 >> 62)
  {
    goto LABEL_53;
  }

  result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = MEMORY[0x1E69E7CC0];
  if (result)
  {
    v5 = v1[16];
    if (v5 >> 62)
    {
      result = __CocoaSet.count.getter();
      v6 = result;
      if (result)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_6:
        if (v6 < 1)
        {
          __break(1u);
          goto LABEL_61;
        }

        for (i = 0; i != v6; ++i)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x193AC03C0](i, v5);
          }

          else
          {
            v8 = *(v5 + 8 * i + 32);
          }

          (*(*v8 + 96))();
        }
      }
    }

    v1[16] = v4;
  }

  swift_beginAccess();
  v9 = v1[17];
  if (!(v9 >> 62))
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_26;
    }

LABEL_16:
    v10 = v1[17];
    if (v10 >> 62)
    {
      result = __CocoaSet.count.getter();
      v11 = result;
      if (result)
      {
LABEL_18:
        if (v11 >= 1)
        {

          for (j = 0; j != v11; ++j)
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              v13 = MEMORY[0x193AC03C0](j, v10);
            }

            else
            {
              v13 = *(v10 + 8 * j + 32);
            }

            (*(*v13 + 96))();
          }

          goto LABEL_25;
        }

LABEL_61:
        __break(1u);
        return result;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_18;
      }
    }

LABEL_25:
    v1[17] = v4;

    goto LABEL_26;
  }

  result = __CocoaSet.count.getter();
  if (result)
  {
    goto LABEL_16;
  }

LABEL_26:
  if (one-time initialization token for v7_1 != -1)
  {
    swift_once();
  }

  v14 = static Semantics.v7_1;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    result = dyld_program_sdk_at_least();
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  else if (static Semantics.forced < v14)
  {
    return result;
  }

  result = swift_beginAccess();
  v15 = v1[21];
  v16 = *(v15 + 16);
  if (v16)
  {

    v17 = 0;
    while (1)
    {
      if (v17 >= v16)
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        result = __CocoaSet.count.getter();
        goto LABEL_3;
      }

      v18 = *(v15 + 32 + 72 * v17 + 64);
      if (v18 >> 62)
      {
        v19 = __CocoaSet.count.getter();
        if (!v19)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v19)
        {
          goto LABEL_37;
        }
      }

      if (v19 < 1)
      {
        goto LABEL_52;
      }

      for (k = 0; k != v19; ++k)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x193AC03C0](k, v18);
        }

        else
        {
          v21 = *(v18 + 8 * k + 32);
        }

        (*(*v21 + 96))();
      }

LABEL_37:
      ++v17;
      v16 = *(v15 + 16);
      if (v17 == v16)
      {

        v1[21] = MEMORY[0x1E69E7CC0];
      }
    }
  }

  return result;
}

{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[14];
  if (v2 >> 62)
  {
    goto LABEL_53;
  }

  result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = MEMORY[0x1E69E7CC0];
  if (result)
  {
    v5 = v1[14];
    if (v5 >> 62)
    {
      result = __CocoaSet.count.getter();
      v6 = result;
      if (result)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_6:
        if (v6 < 1)
        {
          __break(1u);
          goto LABEL_61;
        }

        for (i = 0; i != v6; ++i)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x193AC03C0](i, v5);
          }

          else
          {
            v8 = *(v5 + 8 * i + 32);
          }

          (*(*v8 + 96))();
        }
      }
    }

    v1[14] = v4;
  }

  swift_beginAccess();
  v9 = v1[15];
  if (!(v9 >> 62))
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_26;
    }

LABEL_16:
    v10 = v1[15];
    if (v10 >> 62)
    {
      result = __CocoaSet.count.getter();
      v11 = result;
      if (result)
      {
LABEL_18:
        if (v11 >= 1)
        {

          for (j = 0; j != v11; ++j)
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              v13 = MEMORY[0x193AC03C0](j, v10);
            }

            else
            {
              v13 = *(v10 + 8 * j + 32);
            }

            (*(*v13 + 96))();
          }

          goto LABEL_25;
        }

LABEL_61:
        __break(1u);
        return result;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_18;
      }
    }

LABEL_25:
    v1[15] = v4;

    goto LABEL_26;
  }

  result = __CocoaSet.count.getter();
  if (result)
  {
    goto LABEL_16;
  }

LABEL_26:
  if (one-time initialization token for v7_1 != -1)
  {
    swift_once();
  }

  v14 = static Semantics.v7_1;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    result = dyld_program_sdk_at_least();
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  else if (static Semantics.forced < v14)
  {
    return result;
  }

  result = swift_beginAccess();
  v15 = v1[19];
  v16 = *(v15 + 16);
  if (v16)
  {

    v17 = 0;
    while (1)
    {
      if (v17 >= v16)
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        result = __CocoaSet.count.getter();
        goto LABEL_3;
      }

      v18 = *(v15 + 32 + (v17 << 6) + 56);
      if (v18 >> 62)
      {
        v19 = __CocoaSet.count.getter();
        if (!v19)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v19)
        {
          goto LABEL_37;
        }
      }

      if (v19 < 1)
      {
        goto LABEL_52;
      }

      for (k = 0; k != v19; ++k)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x193AC03C0](k, v18);
        }

        else
        {
          v21 = *(v18 + 8 * k + 32);
        }

        (*(*v21 + 96))();
      }

LABEL_37:
      ++v17;
      v16 = *(v15 + 16);
      if (v17 == v16)
      {

        v1[19] = v4;
      }
    }
  }

  return result;
}

{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[18];
  if (v2 >> 62)
  {
    goto LABEL_53;
  }

  result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = MEMORY[0x1E69E7CC0];
  if (result)
  {
    v5 = v1[18];
    if (v5 >> 62)
    {
      result = __CocoaSet.count.getter();
      v6 = result;
      if (result)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_6:
        if (v6 < 1)
        {
          __break(1u);
          goto LABEL_61;
        }

        for (i = 0; i != v6; ++i)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x193AC03C0](i, v5);
          }

          else
          {
            v8 = *(v5 + 8 * i + 32);
          }

          (*(*v8 + 96))();
        }
      }
    }

    v1[18] = v4;
  }

  swift_beginAccess();
  v9 = v1[19];
  if (!(v9 >> 62))
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_26;
    }

LABEL_16:
    v10 = v1[19];
    if (v10 >> 62)
    {
      result = __CocoaSet.count.getter();
      v11 = result;
      if (result)
      {
LABEL_18:
        if (v11 >= 1)
        {

          for (j = 0; j != v11; ++j)
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              v13 = MEMORY[0x193AC03C0](j, v10);
            }

            else
            {
              v13 = *(v10 + 8 * j + 32);
            }

            (*(*v13 + 96))();
          }

          goto LABEL_25;
        }

LABEL_61:
        __break(1u);
        return result;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_18;
      }
    }

LABEL_25:
    v1[19] = v4;

    goto LABEL_26;
  }

  result = __CocoaSet.count.getter();
  if (result)
  {
    goto LABEL_16;
  }

LABEL_26:
  if (one-time initialization token for v7_1 != -1)
  {
    swift_once();
  }

  v14 = static Semantics.v7_1;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    result = dyld_program_sdk_at_least();
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  else if (static Semantics.forced < v14)
  {
    return result;
  }

  result = swift_beginAccess();
  v15 = v1[23];
  v16 = *(v15 + 16);
  if (v16)
  {

    v17 = 0;
    while (1)
    {
      if (v17 >= v16)
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        result = __CocoaSet.count.getter();
        goto LABEL_3;
      }

      v18 = *(v15 + 32 + 80 * v17 + 72);
      if (v18 >> 62)
      {
        v19 = __CocoaSet.count.getter();
        if (!v19)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v19)
        {
          goto LABEL_37;
        }
      }

      if (v19 < 1)
      {
        goto LABEL_52;
      }

      for (k = 0; k != v19; ++k)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x193AC03C0](k, v18);
        }

        else
        {
          v21 = *(v18 + 8 * k + 32);
        }

        (*(*v21 + 96))();
      }

LABEL_37:
      ++v17;
      v16 = *(v15 + 16);
      if (v17 == v16)
      {

        v1[23] = MEMORY[0x1E69E7CC0];
      }
    }
  }

  return result;
}

{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[22];
  if (v2 >> 62)
  {
    goto LABEL_53;
  }

  result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = MEMORY[0x1E69E7CC0];
  if (result)
  {
    v5 = v1[22];
    if (v5 >> 62)
    {
      result = __CocoaSet.count.getter();
      v6 = result;
      if (result)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_6:
        if (v6 < 1)
        {
          __break(1u);
          goto LABEL_61;
        }

        for (i = 0; i != v6; ++i)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x193AC03C0](i, v5);
          }

          else
          {
            v8 = *(v5 + 8 * i + 32);
          }

          (*(*v8 + 96))();
        }
      }
    }

    v1[22] = v4;
  }

  swift_beginAccess();
  v9 = v1[23];
  if (!(v9 >> 62))
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_26;
    }

LABEL_16:
    v10 = v1[23];
    if (v10 >> 62)
    {
      result = __CocoaSet.count.getter();
      v11 = result;
      if (result)
      {
LABEL_18:
        if (v11 >= 1)
        {

          for (j = 0; j != v11; ++j)
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              v13 = MEMORY[0x193AC03C0](j, v10);
            }

            else
            {
              v13 = *(v10 + 8 * j + 32);
            }

            (*(*v13 + 96))();
          }

          goto LABEL_25;
        }

LABEL_61:
        __break(1u);
        return result;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_18;
      }
    }

LABEL_25:
    v1[23] = v4;

    goto LABEL_26;
  }

  result = __CocoaSet.count.getter();
  if (result)
  {
    goto LABEL_16;
  }

LABEL_26:
  if (one-time initialization token for v7_1 != -1)
  {
    swift_once();
  }

  v14 = static Semantics.v7_1;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    result = dyld_program_sdk_at_least();
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  else if (static Semantics.forced < v14)
  {
    return result;
  }

  result = swift_beginAccess();
  v15 = v1[27];
  v16 = *(v15 + 16);
  if (v16)
  {

    v17 = 0;
    while (1)
    {
      if (v17 >= v16)
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        result = __CocoaSet.count.getter();
        goto LABEL_3;
      }

      v18 = *(v15 + 32 + 96 * v17 + 88);
      if (v18 >> 62)
      {
        v19 = __CocoaSet.count.getter();
        if (!v19)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v19)
        {
          goto LABEL_37;
        }
      }

      if (v19 < 1)
      {
        goto LABEL_52;
      }

      for (k = 0; k != v19; ++k)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x193AC03C0](k, v18);
        }

        else
        {
          v21 = *(v18 + 8 * k + 32);
        }

        (*(*v21 + 96))();
      }

LABEL_37:
      ++v17;
      v16 = *(v15 + 16);
      if (v17 == v16)
      {

        v1[27] = MEMORY[0x1E69E7CC0];
      }
    }
  }

  return result;
}

{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[34];
  if (v2 >> 62)
  {
    goto LABEL_53;
  }

  result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = MEMORY[0x1E69E7CC0];
  if (result)
  {
    v5 = v1[34];
    if (v5 >> 62)
    {
      result = __CocoaSet.count.getter();
      v6 = result;
      if (result)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_6:
        if (v6 < 1)
        {
          __break(1u);
          goto LABEL_61;
        }

        for (i = 0; i != v6; ++i)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x193AC03C0](i, v5);
          }

          else
          {
            v8 = *(v5 + 8 * i + 32);
          }

          (*(*v8 + 96))();
        }
      }
    }

    v1[34] = v4;
  }

  swift_beginAccess();
  v9 = v1[35];
  if (!(v9 >> 62))
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_26;
    }

LABEL_16:
    v10 = v1[35];
    if (v10 >> 62)
    {
      result = __CocoaSet.count.getter();
      v11 = result;
      if (result)
      {
LABEL_18:
        if (v11 >= 1)
        {

          for (j = 0; j != v11; ++j)
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              v13 = MEMORY[0x193AC03C0](j, v10);
            }

            else
            {
              v13 = *(v10 + 8 * j + 32);
            }

            (*(*v13 + 96))();
          }

          goto LABEL_25;
        }

LABEL_61:
        __break(1u);
        return result;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_18;
      }
    }

LABEL_25:
    v1[35] = v4;

    goto LABEL_26;
  }

  result = __CocoaSet.count.getter();
  if (result)
  {
    goto LABEL_16;
  }

LABEL_26:
  if (one-time initialization token for v7_1 != -1)
  {
    swift_once();
  }

  v14 = static Semantics.v7_1;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    result = dyld_program_sdk_at_least();
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  else if (static Semantics.forced < v14)
  {
    return result;
  }

  result = swift_beginAccess();
  v15 = v1[39];
  v16 = *(v15 + 16);
  if (v16)
  {

    v17 = 0;
    while (1)
    {
      if (v17 >= v16)
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        result = __CocoaSet.count.getter();
        goto LABEL_3;
      }

      v18 = *(v15 + 32 + 144 * v17 + 136);
      if (v18 >> 62)
      {
        v19 = __CocoaSet.count.getter();
        if (!v19)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v19)
        {
          goto LABEL_37;
        }
      }

      if (v19 < 1)
      {
        goto LABEL_52;
      }

      for (k = 0; k != v19; ++k)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x193AC03C0](k, v18);
        }

        else
        {
          v21 = *(v18 + 8 * k + 32);
        }

        (*(*v21 + 96))();
      }

LABEL_37:
      ++v17;
      v16 = *(v15 + 16);
      if (v17 == v16)
      {

        v1[39] = MEMORY[0x1E69E7CC0];
      }
    }
  }

  return result;
}

{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[30];
  if (v2 >> 62)
  {
    goto LABEL_53;
  }

  result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = MEMORY[0x1E69E7CC0];
  if (result)
  {
    v5 = v1[30];
    if (v5 >> 62)
    {
      result = __CocoaSet.count.getter();
      v6 = result;
      if (result)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_6:
        if (v6 < 1)
        {
          __break(1u);
          goto LABEL_61;
        }

        for (i = 0; i != v6; ++i)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x193AC03C0](i, v5);
          }

          else
          {
            v8 = *(v5 + 8 * i + 32);
          }

          (*(*v8 + 96))();
        }
      }
    }

    v1[30] = v4;
  }

  swift_beginAccess();
  v9 = v1[31];
  if (!(v9 >> 62))
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_26;
    }

LABEL_16:
    v10 = v1[31];
    if (v10 >> 62)
    {
      result = __CocoaSet.count.getter();
      v11 = result;
      if (result)
      {
LABEL_18:
        if (v11 >= 1)
        {

          for (j = 0; j != v11; ++j)
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              v13 = MEMORY[0x193AC03C0](j, v10);
            }

            else
            {
              v13 = *(v10 + 8 * j + 32);
            }

            (*(*v13 + 96))();
          }

          goto LABEL_25;
        }

LABEL_61:
        __break(1u);
        return result;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_18;
      }
    }

LABEL_25:
    v1[31] = v4;

    goto LABEL_26;
  }

  result = __CocoaSet.count.getter();
  if (result)
  {
    goto LABEL_16;
  }

LABEL_26:
  if (one-time initialization token for v7_1 != -1)
  {
    swift_once();
  }

  v14 = static Semantics.v7_1;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    result = dyld_program_sdk_at_least();
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  else if (static Semantics.forced < v14)
  {
    return result;
  }

  result = swift_beginAccess();
  v15 = v1[35];
  v16 = *(v15 + 16);
  if (v16)
  {

    v17 = 0;
    while (1)
    {
      if (v17 >= v16)
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        result = __CocoaSet.count.getter();
        goto LABEL_3;
      }

      v18 = *(v15 + 32 + (v17 << 7) + 120);
      if (v18 >> 62)
      {
        v19 = __CocoaSet.count.getter();
        if (!v19)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v19)
        {
          goto LABEL_37;
        }
      }

      if (v19 < 1)
      {
        goto LABEL_52;
      }

      for (k = 0; k != v19; ++k)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x193AC03C0](k, v18);
        }

        else
        {
          v21 = *(v18 + 8 * k + 32);
        }

        (*(*v21 + 96))();
      }

LABEL_37:
      ++v17;
      v16 = *(v15 + 16);
      if (v17 == v16)
      {

        v1[35] = v4;
      }
    }
  }

  return result;
}

{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[20];
  if (v2 >> 62)
  {
    goto LABEL_53;
  }

  result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = MEMORY[0x1E69E7CC0];
  if (result)
  {
    v5 = v1[20];
    if (v5 >> 62)
    {
      result = __CocoaSet.count.getter();
      v6 = result;
      if (result)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_6:
        if (v6 < 1)
        {
          __break(1u);
          goto LABEL_61;
        }

        for (i = 0; i != v6; ++i)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x193AC03C0](i, v5);
          }

          else
          {
            v8 = *(v5 + 8 * i + 32);
          }

          (*(*v8 + 96))();
        }
      }
    }

    v1[20] = v4;
  }

  swift_beginAccess();
  v9 = v1[21];
  if (!(v9 >> 62))
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_26;
    }

LABEL_16:
    v10 = v1[21];
    if (v10 >> 62)
    {
      result = __CocoaSet.count.getter();
      v11 = result;
      if (result)
      {
LABEL_18:
        if (v11 >= 1)
        {

          for (j = 0; j != v11; ++j)
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              v13 = MEMORY[0x193AC03C0](j, v10);
            }

            else
            {
              v13 = *(v10 + 8 * j + 32);
            }

            (*(*v13 + 96))();
          }

          goto LABEL_25;
        }

LABEL_61:
        __break(1u);
        return result;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_18;
      }
    }

LABEL_25:
    v1[21] = v4;

    goto LABEL_26;
  }

  result = __CocoaSet.count.getter();
  if (result)
  {
    goto LABEL_16;
  }

LABEL_26:
  if (one-time initialization token for v7_1 != -1)
  {
    swift_once();
  }

  v14 = static Semantics.v7_1;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    result = dyld_program_sdk_at_least();
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  else if (static Semantics.forced < v14)
  {
    return result;
  }

  result = swift_beginAccess();
  v15 = v1[25];
  v16 = *(v15 + 16);
  if (v16)
  {

    v17 = 0;
    while (1)
    {
      if (v17 >= v16)
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        result = __CocoaSet.count.getter();
        goto LABEL_3;
      }

      v18 = *(v15 + 32 + 88 * v17 + 80);
      if (v18 >> 62)
      {
        v19 = __CocoaSet.count.getter();
        if (!v19)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v19)
        {
          goto LABEL_37;
        }
      }

      if (v19 < 1)
      {
        goto LABEL_52;
      }

      for (k = 0; k != v19; ++k)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x193AC03C0](k, v18);
        }

        else
        {
          v21 = *(v18 + 8 * k + 32);
        }

        (*(*v21 + 96))();
      }

LABEL_37:
      ++v17;
      v16 = *(v15 + 16);
      if (v17 == v16)
      {

        v1[25] = MEMORY[0x1E69E7CC0];
      }
    }
  }

  return result;
}

{
  v1 = v0;
  v2 = v0 + 72;
  swift_beginAccess();
  v3 = v0[72];
  if (v3 >> 62)
  {
    goto LABEL_53;
  }

  result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v5 = MEMORY[0x1E69E7CC0];
  if (result)
  {
    v6 = *v2;
    if (*v2 >> 62)
    {
      result = __CocoaSet.count.getter();
      v7 = result;
      if (result)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
LABEL_6:
        if (v7 < 1)
        {
          __break(1u);
          goto LABEL_61;
        }

        for (i = 0; i != v7; ++i)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v9 = MEMORY[0x193AC03C0](i, v6);
          }

          else
          {
            v9 = *(v6 + 8 * i + 32);
          }

          (*(*v9 + 96))();
        }
      }
    }

    *v2 = v5;
  }

  v10 = v1 + 73;
  swift_beginAccess();
  v11 = v1[73];
  if (!(v11 >> 62))
  {
    result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_26;
    }

LABEL_16:
    v12 = *v10;
    if (*v10 >> 62)
    {
      result = __CocoaSet.count.getter();
      v13 = result;
      if (result)
      {
LABEL_18:
        if (v13 >= 1)
        {

          for (j = 0; j != v13; ++j)
          {
            if ((v12 & 0xC000000000000001) != 0)
            {
              v15 = MEMORY[0x193AC03C0](j, v12);
            }

            else
            {
              v15 = *(v12 + 8 * j + 32);
            }

            (*(*v15 + 96))();
          }

          goto LABEL_25;
        }

LABEL_61:
        __break(1u);
        return result;
      }
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13)
      {
        goto LABEL_18;
      }
    }

LABEL_25:
    *v10 = v5;

    goto LABEL_26;
  }

  result = __CocoaSet.count.getter();
  if (result)
  {
    goto LABEL_16;
  }

LABEL_26:
  if (one-time initialization token for v7_1 != -1)
  {
    swift_once();
  }

  v16 = static Semantics.v7_1;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    result = dyld_program_sdk_at_least();
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  else if (static Semantics.forced < v16)
  {
    return result;
  }

  v2 = v1 + 77;
  result = swift_beginAccess();
  v1 = v1[77];
  v17 = v1[2];
  if (v17)
  {

    v18 = 0;
    while (1)
    {
      if (v18 >= v17)
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        result = __CocoaSet.count.getter();
        goto LABEL_3;
      }

      v19 = v1[37 * v18 + 40];
      if (v19 >> 62)
      {
        v20 = __CocoaSet.count.getter();
        if (!v20)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v20)
        {
          goto LABEL_37;
        }
      }

      if (v20 < 1)
      {
        goto LABEL_52;
      }

      for (k = 0; k != v20; ++k)
      {
        if ((v19 & 0xC000000000000001) != 0)
        {
          v22 = MEMORY[0x193AC03C0](k, v19);
        }

        else
        {
          v22 = *(v19 + 8 * k + 32);
        }

        (*(*v22 + 96))();
      }

LABEL_37:
      ++v18;
      v17 = v1[2];
      if (v18 == v17)
      {

        *v2 = MEMORY[0x1E69E7CC0];
      }
    }
  }

  return result;
}

{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[12];
  if (v2 >> 62)
  {
    goto LABEL_53;
  }

  result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = MEMORY[0x1E69E7CC0];
  if (result)
  {
    v5 = v1[12];
    if (v5 >> 62)
    {
      result = __CocoaSet.count.getter();
      v6 = result;
      if (result)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_6:
        if (v6 < 1)
        {
          __break(1u);
          goto LABEL_61;
        }

        for (i = 0; i != v6; ++i)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x193AC03C0](i, v5);
          }

          else
          {
            v8 = *(v5 + 8 * i + 32);
          }

          (*(*v8 + 96))();
        }
      }
    }

    v1[12] = v4;
  }

  swift_beginAccess();
  v9 = v1[13];
  if (!(v9 >> 62))
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_26;
    }

LABEL_16:
    v10 = v1[13];
    if (v10 >> 62)
    {
      result = __CocoaSet.count.getter();
      v11 = result;
      if (result)
      {
LABEL_18:
        if (v11 >= 1)
        {

          for (j = 0; j != v11; ++j)
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              v13 = MEMORY[0x193AC03C0](j, v10);
            }

            else
            {
              v13 = *(v10 + 8 * j + 32);
            }

            (*(*v13 + 96))();
          }

          goto LABEL_25;
        }

LABEL_61:
        __break(1u);
        return result;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_18;
      }
    }

LABEL_25:
    v1[13] = v4;

    goto LABEL_26;
  }

  result = __CocoaSet.count.getter();
  if (result)
  {
    goto LABEL_16;
  }

LABEL_26:
  if (one-time initialization token for v7_1 != -1)
  {
    swift_once();
  }

  v14 = static Semantics.v7_1;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    result = dyld_program_sdk_at_least();
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  else if (static Semantics.forced < v14)
  {
    return result;
  }

  result = swift_beginAccess();
  v15 = v1[17];
  v16 = *(v15 + 16);
  if (v16)
  {

    v17 = 0;
    while (1)
    {
      if (v17 >= v16)
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        result = __CocoaSet.count.getter();
        goto LABEL_3;
      }

      v18 = *(v15 + 32 + 56 * v17 + 48);
      if (v18 >> 62)
      {
        v19 = __CocoaSet.count.getter();
        if (!v19)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v19)
        {
          goto LABEL_37;
        }
      }

      if (v19 < 1)
      {
        goto LABEL_52;
      }

      for (k = 0; k != v19; ++k)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x193AC03C0](k, v18);
        }

        else
        {
          v21 = *(v18 + 8 * k + 32);
        }

        (*(*v21 + 96))();
      }

LABEL_37:
      ++v17;
      v16 = *(v15 + 16);
      if (v17 == v16)
      {

        v1[17] = MEMORY[0x1E69E7CC0];
      }
    }
  }

  return result;
}

{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[32];
  if (v2 >> 62)
  {
    goto LABEL_53;
  }

  result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = MEMORY[0x1E69E7CC0];
  if (result)
  {
    v5 = v1[32];
    if (v5 >> 62)
    {
      result = __CocoaSet.count.getter();
      v6 = result;
      if (result)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_6:
        if (v6 < 1)
        {
          __break(1u);
          goto LABEL_61;
        }

        for (i = 0; i != v6; ++i)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x193AC03C0](i, v5);
          }

          else
          {
            v8 = *(v5 + 8 * i + 32);
          }

          (*(*v8 + 96))();
        }
      }
    }

    v1[32] = v4;
  }

  swift_beginAccess();
  v9 = v1[33];
  if (!(v9 >> 62))
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_26;
    }

LABEL_16:
    v10 = v1[33];
    if (v10 >> 62)
    {
      result = __CocoaSet.count.getter();
      v11 = result;
      if (result)
      {
LABEL_18:
        if (v11 >= 1)
        {

          for (j = 0; j != v11; ++j)
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              v13 = MEMORY[0x193AC03C0](j, v10);
            }

            else
            {
              v13 = *(v10 + 8 * j + 32);
            }

            (*(*v13 + 96))();
          }

          goto LABEL_25;
        }

LABEL_61:
        __break(1u);
        return result;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_18;
      }
    }

LABEL_25:
    v1[33] = v4;

    goto LABEL_26;
  }

  result = __CocoaSet.count.getter();
  if (result)
  {
    goto LABEL_16;
  }

LABEL_26:
  if (one-time initialization token for v7_1 != -1)
  {
    swift_once();
  }

  v14 = static Semantics.v7_1;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    result = dyld_program_sdk_at_least();
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  else if (static Semantics.forced < v14)
  {
    return result;
  }

  result = swift_beginAccess();
  v15 = v1[37];
  v16 = *(v15 + 16);
  if (v16)
  {

    v17 = 0;
    while (1)
    {
      if (v17 >= v16)
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        result = __CocoaSet.count.getter();
        goto LABEL_3;
      }

      v18 = *(v15 + 32 + 136 * v17 + 128);
      if (v18 >> 62)
      {
        v19 = __CocoaSet.count.getter();
        if (!v19)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v19)
        {
          goto LABEL_37;
        }
      }

      if (v19 < 1)
      {
        goto LABEL_52;
      }

      for (k = 0; k != v19; ++k)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x193AC03C0](k, v18);
        }

        else
        {
          v21 = *(v18 + 8 * k + 32);
        }

        (*(*v21 + 96))();
      }

LABEL_37:
      ++v17;
      v16 = *(v15 + 16);
      if (v17 == v16)
      {

        v1[37] = MEMORY[0x1E69E7CC0];
      }
    }
  }

  return result;
}

{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[40];
  if (v2 >> 62)
  {
    goto LABEL_53;
  }

  result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = MEMORY[0x1E69E7CC0];
  if (result)
  {
    v5 = v1[40];
    if (v5 >> 62)
    {
      result = __CocoaSet.count.getter();
      v6 = result;
      if (result)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_6:
        if (v6 < 1)
        {
          __break(1u);
          goto LABEL_61;
        }

        for (i = 0; i != v6; ++i)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x193AC03C0](i, v5);
          }

          else
          {
            v8 = *(v5 + 8 * i + 32);
          }

          (*(*v8 + 96))();
        }
      }
    }

    v1[40] = v4;
  }

  swift_beginAccess();
  v9 = v1[41];
  if (!(v9 >> 62))
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_26;
    }

LABEL_16:
    v10 = v1[41];
    if (v10 >> 62)
    {
      result = __CocoaSet.count.getter();
      v11 = result;
      if (result)
      {
LABEL_18:
        if (v11 >= 1)
        {

          for (j = 0; j != v11; ++j)
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              v13 = MEMORY[0x193AC03C0](j, v10);
            }

            else
            {
              v13 = *(v10 + 8 * j + 32);
            }

            (*(*v13 + 96))();
          }

          goto LABEL_25;
        }

LABEL_61:
        __break(1u);
        return result;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_18;
      }
    }

LABEL_25:
    v1[41] = v4;

    goto LABEL_26;
  }

  result = __CocoaSet.count.getter();
  if (result)
  {
    goto LABEL_16;
  }

LABEL_26:
  if (one-time initialization token for v7_1 != -1)
  {
    swift_once();
  }

  v14 = static Semantics.v7_1;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    result = dyld_program_sdk_at_least();
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  else if (static Semantics.forced < v14)
  {
    return result;
  }

  result = swift_beginAccess();
  v15 = v1[45];
  v16 = *(v15 + 16);
  if (v16)
  {

    v17 = 0;
    while (1)
    {
      if (v17 >= v16)
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        result = __CocoaSet.count.getter();
        goto LABEL_3;
      }

      v18 = *(v15 + 32 + 168 * v17 + 160);
      if (v18 >> 62)
      {
        v19 = __CocoaSet.count.getter();
        if (!v19)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v19)
        {
          goto LABEL_37;
        }
      }

      if (v19 < 1)
      {
        goto LABEL_52;
      }

      for (k = 0; k != v19; ++k)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x193AC03C0](k, v18);
        }

        else
        {
          v21 = *(v18 + 8 * k + 32);
        }

        (*(*v21 + 96))();
      }

LABEL_37:
      ++v17;
      v16 = *(v15 + 16);
      if (v17 == v16)
      {

        v1[45] = MEMORY[0x1E69E7CC0];
      }
    }
  }

  return result;
}
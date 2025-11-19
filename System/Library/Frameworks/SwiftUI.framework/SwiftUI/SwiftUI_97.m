uint64_t closure #1 in DropPlaceholderListModifier.DropPlaceholderList.firstOffset<A>(forID:style:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = *result;
  if (*result <= a2)
  {
    v8 = 0;
  }

  else
  {
    v8 = -1;
  }

  if (v7 <= a3 || (v10 = a4[8], v11 = a4[9], __swift_project_boxed_opaque_existential_1(a4 + 5, v10), v13 = a5, result = (*(v11 + 16))(&v13, v10, v11), v12 = __OFADD__(v8, result), v8 += result, !v12))
  {
    if (!__OFADD__(v7, v8))
    {
      *a6 = v7 + v8;
      *(a6 + 8) = 0;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t closure #3 in DropPlaceholderListModifier.DropPlaceholderList.firstOffset<A>(forID:style:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *a1;
  if (*a1 >= a2)
  {
    result = 0;
  }

  else
  {
    v8 = a3[8];
    v9 = a3[9];
    __swift_project_boxed_opaque_existential_1(a3 + 5, v8);
    v11 = a4;
    result = (*(v9 + 16))(&v11, v8, v9);
  }

  if (__OFADD__(v6, result))
  {
    __break(1u);
  }

  else
  {
    *a5 = v6 + result;
    *(a5 + 8) = 0;
  }

  return result;
}

uint64_t closure #1 in DropPlaceholderListModifier.DropPlaceholderList.applyToBase(start:end:style:list:transform:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t *a10)
{
  result = _ViewList_Node.applyNodes(from:style:transform:to:)();
  *a5 = result & 1;
  if (result & 1) == 0 || (a9)
  {
    return result & 1;
  }

  v13 = *a10 + 1;
  if (!__OFADD__(*a10, 1))
  {
    *a10 = v13;
    LOBYTE(result) = v13 < a8;
    return result & 1;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DropPlaceholderListModifier<A>.DropPlaceholderList(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE5508](a1, WitnessTable);
}

uint64_t DropPlaceholderListModifier.PlaceholderViews.subscript.getter(uint64_t result)
{
  v2 = *(v1 + 64);
  if (v2 > result)
  {
    return dispatch thunk of _ViewList_ID_Views.subscript.getter();
  }

  v3 = *(v1 + 40);
  v4 = __OFADD__(v2, v3);
  v5 = v2 + v3;
  if (v4)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v5 < result)
  {
    v4 = __OFSUB__(result, v3);
    result -= v3;
    if (!v4)
    {
      return dispatch thunk of _ViewList_ID_Views.subscript.getter();
    }

    goto LABEL_10;
  }

  v4 = __OFSUB__(result, v3);
  v6 = result - v3;
  if (v4)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = v6 - 1;
  if (!__OFSUB__(v6, 1))
  {
    return dispatch thunk of _ViewList_ID_Views.subscript.getter();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t DropPlaceholderListModifier.PlaceholderViews.isEqual(to:)()
{
  v1 = swift_dynamicCastClass();
  if (!v1 || *(v0 + 72) != *(v1 + 72))
  {
    goto LABEL_12;
  }

  v2 = *(v1 + 56);
  if (*(v0 + 56))
  {
    if (!*(v1 + 56))
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (*(v0 + 48) != *(v1 + 48))
    {
      v2 = 1;
    }

    if (v2)
    {
      goto LABEL_12;
    }
  }

  if (*(v0 + 64) != *(v1 + 64))
  {
LABEL_12:
    v4 = 0;
    return v4 & 1;
  }

  v3 = dispatch thunk of _ViewList_ID_Views.isEqual(to:)();

  if (v3)
  {

    v4 = dispatch thunk of _ViewList_ID_Views.isEqual(to:)();
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t DropPlaceholderListModifier.PlaceholderViews.__ivar_destroyer()
{
}

uint64_t DropPlaceholderListModifier.PlaceholderViews.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t one-time initialization function for coordinateSpace()
{
  lazy protocol witness table accessor for type ReorderableLayoutCoordinateSpace and conformance ReorderableLayoutCoordinateSpace();
  result = AnyHashable.init<A>(_:)();
  byte_1EAA25790 = 0;
  return result;
}

uint64_t closure #1 in DragReorderableLayoutCoordinator.dragBegan(at:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 112);
  v5 = *(a1 + 120);
  v6 = *(a1 + 128);
  v7 = *(a1 + 136);
  v8 = *(a1 + 144);
  v19 = *(a1 + 104);
  v20 = v4;
  v21 = v5;
  LOBYTE(v22) = v6;
  v23 = v7;
  v24 = v8;
  type metadata accessor for Binding<_DragReorderableView_DragState>(0, &lazy cache variable for type metadata for Binding<_DragReorderableView_DragState>, &type metadata for _DragReorderableView_DragState, MEMORY[0x1E6981948]);
  v10 = v9;

  MEMORY[0x18D00ACC0](&v25, v10);
  dispatch thunk of AnyLocation.set(_:transaction:)();

  v11 = *(a1 + 112);
  v12 = *(a1 + 120);
  v13 = *(a1 + 128);
  v14 = *(a1 + 136);
  v15 = *(a1 + 144);
  v19 = *(a1 + 104);
  v20 = v11;
  v21 = v12;
  LOBYTE(v22) = v13;
  v23 = v14;
  v24 = v15;

  MEMORY[0x18D00ACC0](&v25, v10);
  dispatch thunk of AnyLocation.set(_:transaction:)();

  swift_beginAccess();
  outlined init with copy of _Benchmark(a1 + 48, &v19);
  v16 = v22;
  v17 = v23;
  __swift_project_boxed_opaque_existential_1(&v19, v22);
  (*(v17 + 56))(a2, v16, v17);
  return __swift_destroy_boxed_opaque_existential_1(&v19);
}

uint64_t DragReorderableLayoutCoordinator.validateDrop(info:)(void *a1)
{
  DragReorderableLayoutCoordinator.sourceIndexForDrop(_:)(a1);
  if (v3)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();

      v5 = UIDropSession.itemProviders(for:)(v4);
      swift_unknownObjectRelease();
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC0];
    }

    swift_beginAccess();
    outlined init with copy of _Benchmark(v1 + 48, v10);
    v7 = v11;
    v8 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v6 = (*(v8 + 8))(v5, v7, v8);

    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

uint64_t DragReorderableLayoutCoordinator.sourceIndexForDrop(_:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v2 = DropInfoAdaptor.localDragContexts.getter();
  if (*(v2 + 16))
  {
    outlined init with copy of Any(v2 + 32, &v9);

    if ((swift_dynamicCast() & 1) != 0 && v8[0] == *(v1 + 16))
    {
      return v8[1];
    }
  }

  else
  {
  }

  v4 = *(v1 + 120);
  v5 = *(v1 + 128);
  v6 = *(v1 + 136);
  v7 = *(v1 + 144);
  v9 = *(v1 + 104);
  v10 = v4;
  v11 = v5;
  v12 = v6;
  v13 = v7;
  type metadata accessor for Binding<_DragReorderableView_DragState>(0, &lazy cache variable for type metadata for Binding<_DragReorderableView_DragState>, &type metadata for _DragReorderableView_DragState, MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](v8);
  return v8[0];
}

uint64_t DragReorderableLayoutCoordinator.dropEntered(info:)(void *a1)
{
  v3 = DragReorderableLayoutCoordinator.sourceIndexForDrop(_:)(a1);
  v5 = v4;
  DragReorderableLayoutCoordinator.destination(at:sourceIndex:)(a1, v3, v4 & 1);
  v6 = *(v1 + 120);
  v7 = *(v1 + 128);
  v8 = *(v1 + 136);
  v9 = *(v1 + 144);
  v16 = *(v1 + 104);
  v17 = v6;
  v18 = v7;
  v19 = v8;
  v20 = v9;
  type metadata accessor for Binding<_DragReorderableView_DragState>(0, &lazy cache variable for type metadata for Binding<_DragReorderableView_DragState>, &type metadata for _DragReorderableView_DragState, MEMORY[0x1E6981948]);
  v10 = MEMORY[0x18D00ACC0](&v14);
  v11 = v15;
  if (v5)
  {
    if (v15)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v3 != v14)
  {
    v11 = 1;
  }

  if (v11)
  {
LABEL_7:
    *(v1 + 200) = 0u;
    *(v1 + 184) = 0u;
    *(v1 + 168) = 0u;
    *(v1 + 216) = 1;
  }

LABEL_8:
  MEMORY[0x1EEE9AC00](v10);
  *&v16 = 0;
  swift_allocObject();
  swift_weakInit();

  Transaction.addAnimationListener(allFinished:)();

  static Animation.default.getter();
  v12 = Transaction.animation.setter();
  ++*(v1 + 232);
  MEMORY[0x1EEE9AC00](v12);
  withTransaction<A>(_:_:)();
}

uint64_t DragReorderableLayoutCoordinator.destination(at:sourceIndex:)(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_7SwiftUI32DragReorderableLayoutCoordinator33_1B0CD5E46D60A3CA175732DDA089171CLLC10ChildFrameVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

  if (*(v3 + 232))
  {
    swift_beginAccess();
    v8 = *(v3 + 224);
    v9 = *(v3 + 120);
    v10 = *(v3 + 128);
    v11 = *(v3 + 136);
    v12 = *(v3 + 144);
    v64 = *(v3 + 104);
    *&v65 = v9;
    BYTE8(v65) = v10;
    v66[0] = v11;
    LOBYTE(v66[1]) = v12;
    type metadata accessor for Binding<_DragReorderableView_DragState>(0, &lazy cache variable for type metadata for Binding<_DragReorderableView_DragState>, &type metadata for _DragReorderableView_DragState, MEMORY[0x1E6981948]);
    v14 = v13;

    MEMORY[0x18D00ACC0](v71, v14);
    if (BYTE8(v71[0]))
    {
      v15 = 0.0;
      v54 = *(v3 + 176);
      v55 = *(v3 + 168);
      v52 = *(v3 + 200);
      v53 = *(v3 + 184);
      v51 = *(v3 + 216);
      v68 = v51;
    }

    else
    {
      if (*(v8 + 16) && (v17 = specialized __RawDictionaryStorage.find<A>(_:)(*&v71[0]), (v18 & 1) != 0))
      {
        v19 = 0;
        v20 = *(v8 + 56) + 48 * v17;
        v54 = *(v20 + 8);
        v55 = *v20;
        v52 = *(v20 + 32);
        v53 = *(v20 + 16);
      }

      else
      {
        v54 = 0;
        v55 = 0;
        v52 = 0u;
        v53 = 0u;
        v19 = 1;
      }

      v15 = 0.0;
      v51 = v19;
      v68 = v19;
    }

    v16 = 1;
  }

  else
  {
    DragReorderableLayoutCoordinator.childFrames()(&v64);
    v15 = *(&v64 + 1);
    v8 = v64;
    v16 = v65;
    v54 = v66[0];
    v55 = *(&v65 + 1);
    v52 = *&v66[3];
    v53 = *&v66[1];
    v51 = v67;
    v68 = v67;
    swift_beginAccess();
    *(v3 + 224) = v8;
  }

  static Update.ensure<A>(_:)();
  v21 = v64;
  v57 = v65;
  v60 = *v66;
  v63 = *(__swift_project_boxed_opaque_existential_1(a1, a1[3]) + 11);
  if (one-time initialization token for coordinateSpace != -1)
  {
    swift_once();
  }

  v64 = v21;
  v65 = v57;
  *v66 = v60;
  type metadata accessor for CGPoint(0);
  ApplyViewTransform.convert(to:transform:)();
  if (*(v3 + 40))
  {
    static Spacing.defaultValue.getter();
    v23 = v22;
  }

  else
  {
    v23 = *(v3 + 32);
  }

  v24 = *(v3 + 152);
  if (*(v3 + 160))
  {
    v24 = v15;
  }

  v61 = *(v3 + 160) & v16;
  if (v61)
  {
    v25 = 0.0;
  }

  else
  {
    v15 = v24;
    v25 = v24;
  }

  v26 = *(v8 + 16);
  if (v26)
  {
    v27 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi3key_7SwiftUI32DragReorderableLayoutCoordinator33_1B0CD5E46D60A3CA175732DDA089171CLLC10ChildFrameV5valuet_Tt1g5(v26, 0);
    v58 = specialized Sequence._copySequenceContents(initializing:)(&v64, (v27 + 4), v26, v8);

    outlined consume of Set<UIPress>.Iterator._Variant();
    if (v58 != v26)
    {
      __break(1u);
LABEL_46:
      __break(1u);

      __break(1u);
      return result;
    }
  }

  else
  {
    v27 = MEMORY[0x1E69E7CC0];
  }

  *&v64 = v27;
  specialized MutableCollection<>.sort(by:)(&v64);

  v28 = *(v64 + 16);
  v29 = v64 - 24;
  v30 = v28 + 1;
  while (1)
  {
    v26 = --v30 == 0;
    if (!v30)
    {
      break;
    }

    v31 = (v29 + 56);
    v25 = v25 + v23 + *(v29 + 104);
    v29 += 56;
    if (*(&v63 + 1) < v25)
    {
      v32 = *v31;
LABEL_33:

      goto LABEL_34;
    }
  }

  if (!v28)
  {
    v32 = 0;
    goto LABEL_33;
  }

  v33 = v15;
  v34 = *(v64 + 56 * v28 - 24);

  v32 = v34 + 1;
  if (__OFADD__(v34, 1))
  {
    goto LABEL_46;
  }

  LODWORD(v26) = 0;
  v15 = v33;
LABEL_34:
  *(v4 + 152) = v15;
  *(v4 + 160) = v61;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  DropInfoAdaptor.originContentPath.getter(v69);
  if (v70 == 255)
  {
    v40 = v54;
    v39 = v55;
    v42 = v52;
    v41 = v53;
  }

  else
  {
    v71[0] = v69[0];
    v71[1] = v69[1];
    v72 = v70;
    Path.boundingRect.getter();
    v50 = v35;
    v59 = v37;
    v62 = v36;
    v56 = v38;
    outlined destroy of Path?(v69, &lazy cache variable for type metadata for Path?, MEMORY[0x1E6980F80]);
    v40 = v54;
    v39 = v55;
    v42 = v52;
    v41 = v53;
    if ((v51 & 1) == 0)
    {
      *&v41 = v62;
      *(&v41 + 1) = v50;
      *&v42 = v59;
      *(&v42 + 1) = v56;
    }
  }

  v43 = v68;
  *(v4 + 168) = v39;
  *(v4 + 176) = v40;
  *(v4 + 184) = v41;
  *(v4 + 200) = v42;
  *(v4 + 216) = v43;
  if (a3)
  {
    v44 = 0;
  }

  else
  {
    v44 = a2;
  }

  if (v26)
  {
    v45 = v44;
  }

  else
  {
    v45 = v32;
  }

  swift_beginAccess();
  outlined init with copy of _Benchmark(v4 + 48, &v64);
  v46 = *(&v65 + 1);
  v47 = v66[0];
  __swift_project_boxed_opaque_existential_1(&v64, *(&v65 + 1));
  v48 = (*(v47 + 64))(a2, a3 & 1, v45, v46, v47);

  __swift_destroy_boxed_opaque_existential_1(&v64);
  return v48;
}

uint64_t DragReorderableLayoutCoordinator.withStateAnimation(_:)()
{
  swift_allocObject();
  swift_weakInit();

  Transaction.addAnimationListener(allFinished:)();

  static Animation.default.getter();
  Transaction.animation.setter();
  ++*(v0 + 232);
  withTransaction<A>(_:_:)();
}

uint64_t DragReorderableLayoutCoordinator.dropUpdated(info:)@<X0>(void *a1@<X0>, __int16 *a2@<X8>)
{
  v6 = DragReorderableLayoutCoordinator.sourceIndexForDrop(_:)(a1);
  v7 = v5 & 1;
  if (v5)
  {
    v8 = 1538;
  }

  else
  {
    v8 = 1539;
  }

  v13 = DragReorderableLayoutCoordinator.destination(at:sourceIndex:)(a1, v6, v5 & 1);
  v14[0] = 0;
  swift_allocObject();
  swift_weakInit();

  Transaction.addAnimationListener(allFinished:)();

  static Animation.default.getter();
  Transaction.animation.setter();
  ++*(v2 + 232);
  withTransaction<A>(_:_:)();

  swift_beginAccess();
  outlined init with copy of _Benchmark(v2 + 48, v14);
  v9 = v15;
  v10 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  (*(v10 + 72))(v6, v7, v13, v9, v10, v11[11], v11[12]);
  result = __swift_destroy_boxed_opaque_existential_1(v14);
  *a2 = v8;
  return result;
}

uint64_t closure #1 in DragReorderableLayoutCoordinator.dropEntered(info:)()
{
  type metadata accessor for Binding<_DragReorderableView_DragState>(0, &lazy cache variable for type metadata for Binding<_DragReorderableView_DragState>, &type metadata for _DragReorderableView_DragState, MEMORY[0x1E6981948]);
  v1 = v0;

  MEMORY[0x18D00ACC0](&v3, v1);
  dispatch thunk of AnyLocation.set(_:transaction:)();

  MEMORY[0x18D00ACC0](&v3, v1);
  dispatch thunk of AnyLocation.set(_:transaction:)();
}

uint64_t closure #1 in DragReorderableLayoutCoordinator.dropExited(info:)()
{
  type metadata accessor for Binding<_DragReorderableView_DragState>(0, &lazy cache variable for type metadata for Binding<_DragReorderableView_DragState>, &type metadata for _DragReorderableView_DragState, MEMORY[0x1E6981948]);
  v1 = v0;

  MEMORY[0x18D00ACC0](&v3, v1);
  dispatch thunk of AnyLocation.set(_:transaction:)();
}

uint64_t DragReorderableLayoutCoordinator.performDrop(info:)(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 232);
  *(v1 + 232) = 0;
  v5 = DragReorderableLayoutCoordinator.sourceIndexForDrop(_:)(a1);
  v7 = DragReorderableLayoutCoordinator.destination(at:sourceIndex:)(a1, v5, v6 & 1);
  *(v1 + 232) = v4;
  if (v4)
  {
    v8 = *(v1 + 120);
    v9 = *(v1 + 128);
    v10 = *(v1 + 136);
    v11 = *(v1 + 144);
    v53 = *(v1 + 104);
    v54 = v8;
    LOBYTE(v55) = v9;
    v56 = v10;
    v57 = v11;
    type metadata accessor for Binding<_DragReorderableView_DragState>(0, &lazy cache variable for type metadata for Binding<_DragReorderableView_DragState>, &type metadata for _DragReorderableView_DragState, MEMORY[0x1E6981948]);
    v13 = v12;
    MEMORY[0x18D00ACC0](&v58);
    if ((v60 & 1) != 0 || v7 != v59)
    {
      v14 = *(v1 + 120);
      v15 = *(v1 + 128);
      v16 = *(v1 + 136);
      v17 = *(v1 + 144);
      v53 = *(v1 + 104);
      v54 = v14;
      LOBYTE(v55) = v15;
      v56 = v16;
      v57 = v17;
      MEMORY[0x18D00ACC0](&v58, v13);
      if ((v60 & 1) == 0)
      {
        v18 = v59;
        swift_beginAccess();
        v19 = *(v1 + 224);
        if (*(v19 + 16) && (v20 = specialized __RawDictionaryStorage.find<A>(_:)(v18), (v21 & 1) != 0))
        {
          v22 = 0;
          v23 = *(v19 + 56) + 48 * v20;
          v51 = *(v23 + 16);
          v52 = *v23;
          v24 = *(v23 + 32);
          v25 = *(v23 + 40);
        }

        else
        {
          v24 = 0;
          v25 = 0;
          v51 = 0u;
          v52 = 0u;
          v22 = 1;
        }

        swift_endAccess();
        *(v2 + 184) = v51;
        *(v2 + 168) = v52;
        *(v2 + 200) = v24;
        *(v2 + 208) = v25;
        *(v2 + 216) = v22;
      }
    }
  }

  v26 = DragReorderableLayoutCoordinator.sourceIndexForDrop(_:)(a1);
  if (v27)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();

      v29 = UIDropSession.itemProviders(for:)(v28);
      swift_unknownObjectRelease();
    }

    else
    {
      v29 = MEMORY[0x1E69E7CC0];
    }

    swift_beginAccess();
    outlined init with copy of _Benchmark(v2 + 48, &v53);
    v41 = v55;
    v42 = v56;
    __swift_project_boxed_opaque_existential_1(&v53, v55);
    v37 = (*(v42 + 16))(v7, v29, v41, v42);

    goto LABEL_18;
  }

  if (v26 != v7)
  {
    v38 = v26;
    swift_beginAccess();
    outlined init with copy of _Benchmark(v2 + 48, &v53);
    v39 = v55;
    v40 = v56;
    __swift_project_boxed_opaque_existential_1(&v53, v55);
    v37 = (*(v40 + 80))(v38, v7, v39, v40);
LABEL_18:
    __swift_destroy_boxed_opaque_existential_1(&v53);
    v43 = *(v2 + 112);
    v44 = *(v2 + 120);
    v45 = *(v2 + 128);
    v46 = *(v2 + 136);
    v47 = *(v2 + 144);
    *&v53 = *(v2 + 104);
    *(&v53 + 1) = v43;
    v54 = v44;
    LOBYTE(v55) = v45;
    v56 = v46;
    v57 = v47;
    type metadata accessor for Binding<_DragReorderableView_DragState>(0, &lazy cache variable for type metadata for Binding<_DragReorderableView_DragState>, &type metadata for _DragReorderableView_DragState, MEMORY[0x1E6981948]);
    v49 = v48;

    MEMORY[0x18D00ACC0](&v58, v49);
    dispatch thunk of AnyLocation.set(_:transaction:)();

    return v37 & 1;
  }

  v30 = *(v2 + 112);
  v31 = *(v2 + 120);
  v32 = *(v2 + 128);
  v33 = *(v2 + 136);
  v34 = *(v2 + 144);
  *&v53 = *(v2 + 104);
  *(&v53 + 1) = v30;
  v54 = v31;
  LOBYTE(v55) = v32;
  v56 = v33;
  v57 = v34;
  type metadata accessor for Binding<_DragReorderableView_DragState>(0, &lazy cache variable for type metadata for Binding<_DragReorderableView_DragState>, &type metadata for _DragReorderableView_DragState, MEMORY[0x1E6981948]);
  v36 = v35;

  MEMORY[0x18D00ACC0](&v58, v36);
  dispatch thunk of AnyLocation.set(_:transaction:)();

  v37 = 0;
  return v37 & 1;
}

uint64_t closure #1 in DragReorderableLayoutCoordinator.withStateAnimation(_:)()
{

  static Update.enqueueAction(reason:_:)();
}

uint64_t closure #1 in closure #1 in DragReorderableLayoutCoordinator.withStateAnimation(_:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    --*(result + 232);
  }

  return result;
}

uint64_t DragReorderableLayoutCoordinator.childFrames()@<X0>(uint64_t a1@<X8>)
{
  v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_7SwiftUI32DragReorderableLayoutCoordinator33_1B0CD5E46D60A3CA175732DDA089171CLLC10ChildFrameVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  _sSay7SwiftUI13ViewResponderCGMaTm_1(0, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]);
  result = static Update.ensure<A>(_:)();
  if (!(v6 >> 62))
  {
    v2 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_10:

    *a1 = v7;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 72) = 1;
    return result;
  }

  result = __CocoaSet.count.getter();
  v2 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v2 >= 1)
  {
    v3 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x18D00E9C0](v3);
      }

      else
      {
      }

      ++v3;
      MEMORY[0x1EEE9AC00](v4);
      dispatch thunk of ResponderNode.visit(applying:)();
    }

    while (v2 != v3);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in DragReorderableLayoutCoordinator.childFrames()@<X0>(uint64_t *a1@<X8>)
{
  _sSay7SwiftUI13ViewResponderCGMaTm_1(0, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]);
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

uint64_t closure #2 in DragReorderableLayoutCoordinator.childFrames()@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X4>, _BYTE *a5@<X8>)
{
  type metadata accessor for DragReorderableChildResponder();
  result = swift_dynamicCastClass();
  if (result)
  {
    v11 = result;
    v32 = 0u;
    v33 = 0u;
    v34 = 6;
    *&v27 = 1;
    lazy protocol witness table accessor for type ReorderableChildCoordinateSpace and conformance ReorderableChildCoordinateSpace();

    AnyHashable.init<A>(_:)();
    LOBYTE(v39) = 0;
    MultiViewResponder.addContentPath(to:kind:in:observer:)();
    outlined destroy of CoordinateSpace(&v35);
    v12 = *(v11 + 232);
    v13 = *(v11 + 240);
    memset(v40, 0, sizeof(v40));
    v41 = 6;
    Path.boundingRect.getter();
    *&v35 = v12;
    *(&v35 + 1) = v13;
    v36 = v14;
    v37 = v15;
    v38 = v16;
    v39 = v17;
    v18 = v13 + v15;
    if (!(*(a1 + 8) & 1 | (v13 + v15 < *a1)))
    {
      v18 = *a1;
    }

    *a1 = v18;
    *(a1 + 8) = 0;
    if (*(v11 + 248) == 1 && (*a2 = v12, *(a2 + 8) = v13, *(a2 + 16) = v14, *(a2 + 24) = v15, *(a2 + 32) = v16, *(a2 + 40) = v17, *(a2 + 48) = 0, v19 = *(a3 + 120), v20 = *(a3 + 128), v21 = *(a3 + 136), v22 = *(a3 + 144), v27 = *(a3 + 104), v28 = v19, v29 = v20, v30 = v21, v31 = v22, type metadata accessor for Binding<_DragReorderableView_DragState>(0, &lazy cache variable for type metadata for Binding<_DragReorderableView_DragState>, &type metadata for _DragReorderableView_DragState, MEMORY[0x1E6981948]), MEMORY[0x18D00ACC0](&v25), (v26 & 1) == 0))
    {
      v23 = v25;
    }

    else
    {
      if (*(v11 + 224) == 1)
      {
        outlined destroy of Path(v40);

        goto LABEL_11;
      }

      v23 = *(v11 + 216);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v27 = *a4;
    *a4 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v35, v23, isUniquelyReferenced_nonNull_native);

    *a4 = v27;

    result = outlined destroy of Path(v40);
  }

LABEL_11:
  *a5 = 0;
  return result;
}

uint64_t closure #1 in DragReorderableLayoutCoordinator.destination(at:sourceIndex:)@<X0>(uint64_t a1@<X8>)
{
  result = AGGraphGetWeakValue();
  if (result)
  {
    v3 = *(result + 8);
    *a1 = *result;
    *(a1 + 8) = v3;
    v4 = *(result + 32);
    *(a1 + 16) = *(result + 16);
    *(a1 + 32) = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DragReorderableLayoutCoordinator.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t type metadata completion function for DragReorderableLayoutAdaptor()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for DragReorderableLayoutAdaptor(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v5 + v8;
  v10 = *(v7 + 64) + 7;
  v11 = ((((((((((v10 + ((v5 + v8) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v12 = v8 | *(v4 + 80) & 0xF8;
  if (v12 > 7 || ((*(v4 + 80) | *(v7 + 80)) & 0x100000) != 0 || v11 > 0x18)
  {
    v15 = *a2;
    *v3 = *a2;
    v3 = (v15 + (((v12 | 7) + 16) & ~(v12 | 7)));
  }

  else
  {
    v16 = ~v8;
    (*(v4 + 16))(a1);
    v18 = (a2 + v9) & v16;
    (*(v7 + 16))((v3 + v9) & v16, v18, v6);
    v19 = ((v10 + ((v3 + v9) & v16)) & 0xFFFFFFFFFFFFFFF8);
    v20 = ((v10 + v18) & 0xFFFFFFFFFFFFFFF8);
    v21 = v20[1];
    *v19 = *v20;
    v19[1] = v21;
    v22 = ((v19 + 39) & 0xFFFFFFFFFFFFFFF8);
    v23 = ((v20 + 39) & 0xFFFFFFFFFFFFFFF8);
    *v22 = *v23;
    v24 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
    v25 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
    v26 = *v25;
    *(v24 + 8) = *(v25 + 8);
    *v24 = v26;
    v27 = (v22 + 31) & 0xFFFFFFFFFFFFFFF8;
    v28 = (v23 + 31) & 0xFFFFFFFFFFFFFFF8;
    v29 = *(v28 + 24);
    *(v27 + 24) = v29;
    *(v27 + 32) = *(v28 + 32);
    v30 = **(v29 - 8);

    v30(v27, v28, v29);
    v31 = ((v27 + 47) & 0xFFFFFFFFFFFFFFF8);
    v32 = ((v28 + 47) & 0xFFFFFFFFFFFFFFF8);
    *v31 = *v32;
    *((v31 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v32 + 15) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t destroy for DragReorderableLayoutAdaptor(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 16) - 8) + 8;
  (*v4)();
  v5 = *(v4 + 56) + a1;
  v6 = *(*(a2 + 24) - 8);
  v7 = v6 + 8;
  v8 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v6 + 8))(v8);
  v9 = ((((*(v7 + 56) + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31;

  return __swift_destroy_boxed_opaque_existential_1(v9 & 0xFFFFFFFFFFFFFFF8);
}

uint64_t initializeWithCopy for DragReorderableLayoutAdaptor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 16;
  (*v6)();
  v7 = *(v6 + 48);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 16;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 16))(v12, v13);
  v14 = *(v9 + 48) + 7;
  v15 = ((v14 + v12) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v14 + v13) & 0xFFFFFFFFFFFFFFF8);
  v17 = v16[1];
  *v15 = *v16;
  v15[1] = v17;
  v18 = ((v15 + 39) & 0xFFFFFFFFFFFFFFF8);
  v19 = ((v16 + 39) & 0xFFFFFFFFFFFFFFF8);
  *v18 = *v19;
  v20 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = *(v21 + 8);
  *v20 = *v21;
  *(v20 + 8) = v22;
  v23 = (v18 + 31) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v19 + 31) & 0xFFFFFFFFFFFFFFF8;
  v25 = *(v24 + 24);
  *(v23 + 24) = v25;
  *(v23 + 32) = *(v24 + 32);
  v26 = **(v25 - 8);

  v26(v23, v24, v25);
  v27 = ((v23 + 47) & 0xFFFFFFFFFFFFFFF8);
  v28 = ((v24 + 47) & 0xFFFFFFFFFFFFFFF8);
  *v27 = *v28;
  *((v27 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v28 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithCopy for DragReorderableLayoutAdaptor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 24;
  (*v6)();
  v7 = *(v6 + 40);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 24;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 24))(v12, v13);
  v14 = *(v9 + 40) + 7;
  v15 = (v14 + v12) & 0xFFFFFFFFFFFFFFF8;
  v16 = ((v14 + v13) & 0xFFFFFFFFFFFFFFF8);
  *v15 = *v16;
  *(v15 + 8) = v16[1];
  *(v15 + 16) = v16[2];
  *(v15 + 24) = v16[3];
  v15 += 39;
  v17 = ((v16 + 39) & 0xFFFFFFFFFFFFFFF8);
  v18 = (v15 & 0xFFFFFFFFFFFFFFF8) + 15;
  *(v15 & 0xFFFFFFFFFFFFFFF8) = *v17;
  v19 = (v15 & 0xFFFFFFFFFFFFFFF8) + 31;

  v20 = v18 & 0xFFFFFFFFFFFFFFF8;
  v21 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = *v21;
  *(v20 + 8) = *(v21 + 8);
  *v20 = v22;
  __swift_assign_boxed_opaque_existential_1((v19 & 0xFFFFFFFFFFFFFFF8), ((v17 + 31) & 0xFFFFFFFFFFFFFFF8));
  v23 = (((v19 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8);
  v24 = ((((v17 + 31) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8);
  *v23 = *v24;
  *((v23 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v24 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t initializeWithTake for DragReorderableLayoutAdaptor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 32;
  (*v6)();
  v7 = *(v6 + 32);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 32;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 32))(v12, v13);
  v14 = *(v9 + 32) + 7;
  v15 = ((v14 + v12) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v14 + v13) & 0xFFFFFFFFFFFFFFF8);
  v17 = v16[1];
  *v15 = *v16;
  v15[1] = v17;
  v18 = ((v15 + 39) & 0xFFFFFFFFFFFFFFF8);
  v19 = ((v16 + 39) & 0xFFFFFFFFFFFFFFF8);
  *v18 = *v19;
  v20 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = *(v21 + 8);
  *v20 = *v21;
  *(v20 + 8) = v22;
  v23 = (v18 + 31) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v19 + 31) & 0xFFFFFFFFFFFFFFF8;
  v26 = *v24;
  v25 = *(v24 + 16);
  *(v23 + 32) = *(v24 + 32);
  *v23 = v26;
  *(v23 + 16) = v25;
  v27 = ((v23 + 47) & 0xFFFFFFFFFFFFFFF8);
  v28 = ((v24 + 47) & 0xFFFFFFFFFFFFFFF8);
  *v27 = *v28;
  *((v27 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v28 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for DragReorderableLayoutAdaptor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 40;
  (*v6)();
  v7 = *(v6 + 24);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 40;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 40))(v12, v13);
  v14 = *(v9 + 24) + 7;
  v15 = (v14 + v12) & 0xFFFFFFFFFFFFFFF8;
  v16 = ((v14 + v13) & 0xFFFFFFFFFFFFFFF8);
  *v15 = *v16;
  *(v15 + 8) = v16[1];
  *(v15 + 16) = v16[2];
  *(v15 + 24) = v16[3];
  v15 += 39;
  v17 = ((v16 + 39) & 0xFFFFFFFFFFFFFFF8);
  v18 = v17;
  v19 = (v15 & 0xFFFFFFFFFFFFFFF8) + 15;
  *(v15 & 0xFFFFFFFFFFFFFFF8) = *v17;
  v20 = (v15 & 0xFFFFFFFFFFFFFFF8) + 31;

  v21 = v19 & 0xFFFFFFFFFFFFFFF8;
  v22 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = *v22;
  *(v21 + 8) = *(v22 + 8);
  *v21 = v23;
  v24 = v20 & 0xFFFFFFFFFFFFFFF8;
  v25 = (v18 + 31) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1(v20 & 0xFFFFFFFFFFFFFFF8);
  v26 = *v25;
  v27 = *(v25 + 16);
  *(v24 + 32) = *(v25 + 32);
  *v24 = v26;
  *(v24 + 16) = v27;
  v28 = (((v20 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8);
  v29 = ((v25 + 47) & 0xFFFFFFFFFFFFFFF8);
  *v28 = *v29;
  *((v28 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v29 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for DragReorderableLayoutAdaptor(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = *(*(v6 - 8) + 64) + 7;
  if (v10 >= a2)
  {
    goto LABEL_29;
  }

  v13 = ((((((((((v12 + (v11 & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v14 = a2 - v10;
  v15 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = v14 + 1;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *(a1 + v13);
      if (!v19)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v19 = *(a1 + v13);
      if (!v19)
      {
        goto LABEL_29;
      }
    }
  }

  else if (!v18 || (v19 = *(a1 + v13)) == 0)
  {
LABEL_29:
    if (v5 == v10)
    {
      return (*(v4 + 48))();
    }

    v23 = (a1 + v11) & ~v9;
    if (v8 == v10)
    {
      return (*(v7 + 48))(v23, v8, v6);
    }

    v24 = *((((v12 + v23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
    if (v24 >= 0xFFFFFFFF)
    {
      LODWORD(v24) = -1;
    }

    return (v24 + 1);
  }

  v21 = v19 - 1;
  if (v15)
  {
    v21 = 0;
    v22 = *a1;
  }

  else
  {
    v22 = 0;
  }

  return v10 + (v22 | v21) + 1;
}

_BYTE *storeEnumTagSinglePayload for DragReorderableLayoutAdaptor(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v8 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  v13 = v9 + v10;
  v14 = (v9 + v10) & ~v10;
  v15 = v11 + 7;
  v16 = ((((((((((v11 + 7 + v14) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v12 >= a3)
  {
    v20 = 0;
    v21 = a2 - v12;
    if (a2 <= v12)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v17 = a3 - v12;
    if (((((((((((v11 + 7 + v14) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v18 = v17 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = a2 - v12;
    if (a2 <= v12)
    {
LABEL_19:
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          *&result[v16] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_35;
        }

        *&result[v16] = 0;
      }

      else if (v20)
      {
        result[v16] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return result;
      }

LABEL_35:
      if (v6 == v12)
      {
        v25 = *(v5 + 56);

        return v25();
      }

      else
      {
        result = (&result[v13] & ~v10);
        if (v8 == v12)
        {
          v26 = *(v7 + 56);

          return v26(result);
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v27 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v27 = a2 - 1;
          }

          *(((&result[v15] & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) = v27;
        }
      }

      return result;
    }
  }

  if (v16)
  {
    v22 = 1;
  }

  else
  {
    v22 = v21;
  }

  if (v16)
  {
    v23 = ~v12 + a2;
    v24 = result;
    bzero(result, v16);
    result = v24;
    *v24 = v23;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      *&result[v16] = v22;
    }

    else
    {
      *&result[v16] = v22;
    }
  }

  else if (v20)
  {
    result[v16] = v22;
  }

  return result;
}

uint64_t protocol witness for DropDelegate.dropExited(info:) in conformance DragReorderableLayoutCoordinator()
{
  v1 = *v0;
  DragReorderableLayoutCoordinator.withStateAnimation(_:)();
  *(v1 + 152) = 0;
  *(v1 + 160) = 1;
  swift_beginAccess();
  outlined init with copy of _Benchmark(v1 + 48, v5);
  v2 = v6;
  v3 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  (*(v3 + 24))(v2, v3);
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 10) | (16 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  if (!a2)
  {
    v5 = 0;
    v18 = *(v3 + 112);
    *(result + 6) = *(v3 + 96);
    *(result + 7) = v18;
    v19 = *(v3 + 144);
    *(result + 8) = *(v3 + 128);
    *(result + 9) = v19;
    v20 = *(v3 + 48);
    *(result + 2) = *(v3 + 32);
    *(result + 3) = v20;
    v21 = *(v3 + 80);
    *(result + 4) = *(v3 + 64);
    *(result + 5) = v21;
    v22 = *(v3 + 16);
    *result = *v3;
    *(result + 1) = v22;
    result[20] = 0;
    return v5;
  }

  v5 = a3;
  if (!a3)
  {
LABEL_11:
    v13 = *(v3 + 112);
    *(v4 + 6) = *(v3 + 96);
    *(v4 + 7) = v13;
    v14 = *(v3 + 144);
    *(v4 + 8) = *(v3 + 128);
    *(v4 + 9) = v14;
    v15 = *(v3 + 48);
    *(v4 + 2) = *(v3 + 32);
    *(v4 + 3) = v15;
    v16 = *(v3 + 80);
    *(v4 + 4) = *(v3 + 64);
    *(v4 + 5) = v16;
    v17 = *(v3 + 16);
    *v4 = *v3;
    *(v4 + 1) = v17;
    v4[20] = v5;
    return v5;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = a2;
    v7 = 0;
    v8 = *(v3 + 64);
    v9 = *(v3 + 72);
    v10 = a3 - 1;
    while (1)
    {
      if (v8 == v7)
      {
        v23 = *(v3 + 112);
        *(v4 + 6) = *(v3 + 96);
        *(v4 + 7) = v23;
        v24 = *(v3 + 144);
        *(v4 + 8) = *(v3 + 128);
        *(v4 + 9) = v24;
        v25 = *(v3 + 48);
        *(v4 + 2) = *(v3 + 32);
        *(v4 + 3) = v25;
        v26 = *(v3 + 80);
        *(v4 + 4) = *(v3 + 64);
        *(v4 + 5) = v26;
        v27 = *(v3 + 16);
        *v4 = *v3;
        *(v4 + 1) = v27;
        v5 = v8;
        v4[20] = v8;
        return v5;
      }

      result = v9(&v28, v7);
      if (v7 >= v8)
      {
        break;
      }

      v11 = v29;
      v31 = v28;
      v32 = v29;
      v12 = v30;
      v33 = v30;
      *v6 = v28;
      *(v6 + 16) = v11;
      *(v6 + 32) = v12;
      if (v10 == v7)
      {
        goto LABEL_11;
      }

      v6 += 40;
      if (__OFADD__(++v7, 1))
      {
        __break(1u);
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, char *__dst, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!__dst)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = __dst;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      memmove(v11, (*(a4 + 56) + 80 * (v17 | (v12 << 6))), 0x49uLL);
      if (v14 == v10)
      {
        goto LABEL_24;
      }

      v11 += 80;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

void specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, char a5)
{
  _sSay7SwiftUI13ViewResponderCGMaTm_1(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - v11;
  v26 = type metadata accessor for PlatformItemList.Item();
  v13 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a5 & 1) == 0)
  {
    AGGraphGetWeakValue();
  }

  if (!a2)
  {
    a3 = 0;
    goto LABEL_26;
  }

  if (!a3)
  {
LABEL_26:
    *a1 = a4;
    *(a1 + 8) = a5 & 1;
    *(a1 + 16) = a3;
    return;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v16 = a3;
    a3 = 0;
    v17 = (v13 + 56);
    v23 = v16;
    v24 = a1;
    v25 = v16 - 1;
    if ((a5 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (a3 != *(a4 + 16))
    {

      v18 = a4;
      while (a3 < *(v18 + 16))
      {
        v22 = *(v13 + 72);
        outlined init with copy of DefaultIndices<CountingIndexCollection<ShadowRowCollection<TableDataSourceAdaptor>>>(v18 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + v22 * a3, v12, type metadata accessor for PlatformItemList.Item);

        if ((a5 & 1) == 0)
        {
          AGGraphGetWeakValue();
        }

        (*v17)(v12, 0, 1, v26);
        _s7SwiftUI16PlatformItemListV0D0VWObTm_1(v12, v15, type metadata accessor for PlatformItemList.Item);
        _s7SwiftUI16PlatformItemListV0D0VWObTm_1(v15, a2, type metadata accessor for PlatformItemList.Item);
        if (v25 == a3)
        {
          a3 = v23;
          goto LABEL_25;
        }

        a2 += v22;
        ++a3;
        if (a5)
        {
          goto LABEL_7;
        }

LABEL_9:
        WeakValue = AGGraphGetWeakValue();
        if (WeakValue)
        {
          if (a3 == *(*WeakValue + 16))
          {
            goto LABEL_23;
          }
        }

        else
        {
          v20 = *(MEMORY[0x1E69E7CC0] + 16);

          if (a3 == v20)
          {
            goto LABEL_23;
          }
        }

        v21 = AGGraphGetWeakValue();
        if (v21)
        {
          v18 = *v21;
        }

        else
        {
          v18 = MEMORY[0x1E69E7CC0];
        }
      }

      __break(1u);
      goto LABEL_28;
    }

LABEL_23:
    (*v17)(v12, 1, 1, v26);
    outlined destroy of TableColumnCollection.Entry?(v12, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
LABEL_25:
    a1 = v24;
    goto LABEL_26;
  }

LABEL_28:
  __break(1u);
}

void specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = type metadata accessor for TableColumnCollection.Visitor(0);
  MEMORY[0x1EEE9AC00](v42);
  v8 = (&v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  _sSay7SwiftUI13ViewResponderCGMaTm_1(0, &lazy cache variable for type metadata for TableColumnCollection.Entry?, type metadata accessor for TableColumnCollection.Entry, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v41 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v38 - v12;
  v46 = type metadata accessor for TableColumnCollection.Entry(0);
  v14 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v3[1];
  v52 = *v3;
  *v53 = v17;
  *&v53[9] = *(v3 + 25);
  v54 = 0;
  if (a2 && a3)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      v38 = a1;
      v45 = (v14 + 56);
      v40 = (v14 + 48);
      v18 = 1;
      v44 = a3;
      v39 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      while (1)
      {
        outlined init with copy of TableColumnCollection.Backing(&v52, v50);
        if (v51)
        {
          v19 = *(*&v50[0] + 16);
        }

        else
        {
          outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v50, v47);
          v20 = v48;
          v21 = v49;
          __swift_project_boxed_opaque_existential_1(v47, v48);
          v19 = (*(v21 + 8))(v20, v21);
          __swift_destroy_boxed_opaque_existential_1(v47);
        }

        a1 = v18 - 1;
        if (v18 - 1 == v19)
        {
          (*v45)(v13, 1, 1, v46);
          outlined destroy of TableColumnCollection.Entry?(v13, &lazy cache variable for type metadata for TableColumnCollection.Entry?, type metadata accessor for TableColumnCollection.Entry);
LABEL_24:
          a1 = v38;
          goto LABEL_25;
        }

        outlined init with copy of TableColumnCollection.Backing(&v52, v50);
        if (v51)
        {
          if (a1 >= *(*&v50[0] + 16))
          {
            goto LABEL_27;
          }

          outlined init with copy of DefaultIndices<CountingIndexCollection<ShadowRowCollection<TableDataSourceAdaptor>>>(*&v50[0] + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * a1, v13, type metadata accessor for TableColumnCollection.Entry);
        }

        else
        {
          v43 = a2;
          v22 = v14;
          v23 = v13;
          outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v50, v47);
          v24 = v42;
          v25 = *(v42 + 20);
          v26 = v46;
          (*v45)(v8 + v25, 1, 1, v46);
          *v8 = a1;
          v27 = v48;
          v28 = v49;
          __swift_project_boxed_opaque_existential_1(v47, v48);
          TableColumnList.visitColumns<A>(applying:from:)(v8, v18 - 1, v27, v24, v28, &protocol witness table for TableColumnCollection.Visitor);
          v29 = v41;
          _s7SwiftUI17_DraggingModifierVSgWOcTm_0(v8 + v25, v41, &lazy cache variable for type metadata for TableColumnCollection.Entry?, type metadata accessor for TableColumnCollection.Entry, MEMORY[0x1E69E6720], _sSay7SwiftUI13ViewResponderCGMaTm_1);
          if ((*v40)(v29, 1, v26) == 1)
          {
            goto LABEL_29;
          }

          outlined destroy of DefaultIndices<CountingIndexCollection<ShadowRowCollection<TableDataSourceAdaptor>>>(v8, type metadata accessor for TableColumnCollection.Visitor);
          v30 = v29;
          v13 = v23;
          _s7SwiftUI16PlatformItemListV0D0VWObTm_1(v30, v23, type metadata accessor for TableColumnCollection.Entry);
          __swift_destroy_boxed_opaque_existential_1(v47);
          a3 = v44;
          v14 = v22;
          a2 = v43;
          v16 = v39;
        }

        outlined init with copy of TableColumnCollection.Backing(&v52, v50);
        if (v51)
        {
          v31 = *(*&v50[0] + 16);
        }

        else
        {
          outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v50, v47);
          v32 = v48;
          v33 = v49;
          __swift_project_boxed_opaque_existential_1(v47, v48);
          v34 = *(v33 + 8);
          v35 = v33;
          a3 = v44;
          v31 = v34(v32, v35);
          __swift_destroy_boxed_opaque_existential_1(v47);
        }

        if (a1 >= v31)
        {
          break;
        }

        v54 = v18;
        (*v45)(v13, 0, 1, v46);
        _s7SwiftUI16PlatformItemListV0D0VWObTm_1(v13, v16, type metadata accessor for TableColumnCollection.Entry);
        _s7SwiftUI16PlatformItemListV0D0VWObTm_1(v16, a2, type metadata accessor for TableColumnCollection.Entry);
        if (a3 == v18)
        {
          goto LABEL_24;
        }

        a2 += *(v14 + 72);
        if (__OFADD__(v18++, 1))
        {
          __break(1u);
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
LABEL_25:
    v37 = *v53;
    *a1 = v52;
    *(a1 + 16) = v37;
    *(a1 + 32) = *&v53[16];
    *(a1 + 48) = v54;
  }
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v28 = a1;
  _sSay7SwiftUI13ViewResponderCGMaTm_1(0, &lazy cache variable for type metadata for _ArchivedView?, type metadata accessor for _ArchivedView, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v26 - v8;
  v10 = type metadata accessor for _ArchivedView(0);
  v38 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v30 = &v26 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v37 = &v26 - v16;
  type metadata accessor for IndexingIterator<_ArchivedViewStates>();
  v18 = v17 - 8;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _s7SwiftUI16PlatformItemListV0D0VWObTm_1(v4, v20, type metadata accessor for _ArchivedViewStates);
  v36 = *(v18 + 44);
  *&v20[v36] = 0;
  if (!a2)
  {
    a3 = 0;
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    _s7SwiftUI16PlatformItemListV0D0VWObTm_1(v20, v28, type metadata accessor for IndexingIterator<_ArchivedViewStates>);
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v35 = *&v20[*(type metadata accessor for _ArchivedViewStates(0) + 20) + 8];
    v22 = *(v35 + 16);
    if (v22)
    {
      v23 = 0;
      v33 = (v38 + 56);
      v29 = v38 + 48;
      v27 = a3;
      v32 = a3 - 1;
      v39 = xmmword_18CD77CA0;
      v24 = v30;
      v34 = v20;
      v31 = v22;
      while (1)
      {
        _ArchivedViewStates.state(at:)(v23, v9);
        (*v33)(v9, 0, 1, v10);
        _s7SwiftUI16PlatformItemListV0D0VWObTm_1(v9, v12, type metadata accessor for _ArchivedView);
        v20 = v34;
        result = _s7SwiftUI16PlatformItemListV0D0VWObTm_1(v12, v24, type metadata accessor for _ArchivedView);
        if (v23 >= *(v35 + 16))
        {
          break;
        }

        v25 = v37;
        *&v20[v36] = v23 + 1;
        _s7SwiftUI16PlatformItemListV0D0VWObTm_1(v24, v25, type metadata accessor for _ArchivedView);
        _s7SwiftUI16PlatformItemListV0D0VWObTm_1(v25, a2, type metadata accessor for _ArchivedView);
        if (v32 == v23)
        {
          a3 = v27;
          goto LABEL_12;
        }

        a2 += *(v38 + 72);
        ++v23;
        v22 = v31;
        if (v31 == v23)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_14;
    }

LABEL_9:
    a3 = v22;
    goto LABEL_12;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t result, _OWORD *a2, uint64_t a3, void *a4, char a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    if (a3)
    {
      if ((a3 & 0x8000000000000000) == 0)
      {
        if (__OFADD__(a6, a7))
        {
LABEL_24:
          __break(1u);
          return result;
        }

        v11 = a2;
        v19 = result;
        v12 = 0;
        v13 = (a4 + 4);
        v18 = a3;
        v14 = a3 - 1;
        while (1)
        {
          if (a7 == v12)
          {
            a3 = a7;
            v17 = a6 + a7;
            result = v19;
            goto LABEL_20;
          }

          if (a5)
          {
            if (v12 >= a4[2])
            {
              goto LABEL_22;
            }

            result = outlined init with copy of TableRowID(v13, &v20);
          }

          else
          {
            v15 = *(*a4 + 104);

            v15(&v20, v12);
            result = outlined consume of Environment<[SceneID : KeyboardShortcut]>.Content(a4, 0);
          }

          v22 = v20;
          v23[0] = v21[0];
          *(v23 + 9) = *(v21 + 9);
          if (__OFADD__(a6 + v12, 1))
          {
            break;
          }

          *&v24[9] = *(v23 + 9);
          v23[2] = v22;
          *v24 = v23[0];
          v16 = v23[0];
          *v11 = v22;
          v11[1] = v16;
          *(v11 + 25) = *&v24[9];
          if (v14 == v12)
          {
            v17 = a6 + v12 + 1;
            result = v19;
            a3 = v18;
            goto LABEL_20;
          }

          v11 += 3;
          ++v12;
          v13 += 48;
          if (__OFADD__(v12, 1))
          {
            __break(1u);
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_22:
        __break(1u);
      }

      __break(1u);
      goto LABEL_24;
    }
  }

  else
  {
LABEL_16:
    a3 = 0;
  }

  v17 = a6;
LABEL_20:
  *result = a4;
  *(result + 8) = a5 & 1;
  *(result + 16) = a6;
  *(result + 24) = a7;
  *(result + 32) = v17;
  return a3;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v16 = *v3;
  v17 = v3[1];
  v18 = v3[2];
  v19 = v3[3];
  v20 = 0;
  if (!a2)
  {
LABEL_11:
    v5 = 0;
    goto LABEL_13;
  }

  v5 = a3;
  if (!a3)
  {
LABEL_13:
    *(v4 + 32) = v18;
    *(v4 + 48) = v19;
    *(v4 + 64) = v20;
    *v4 = v16;
    *(v4 + 16) = v17;
    return v5;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = a2;
    v7 = 1;
    while (1)
    {
      if (v7 - 1 == _VariadicView_Children.endIndex.getter())
      {
        v5 = v7 - 1;
        goto LABEL_13;
      }

      _VariadicView_Children.subscript.getter();
      result = _VariadicView_Children.endIndex.getter();
      if (v7 - 1 >= result)
      {
        break;
      }

      v20 = v7;
      *(v6 + 64) = v13;
      *(v6 + 80) = v14;
      *(v6 + 96) = v15;
      *v6 = v9;
      *(v6 + 16) = v10;
      *(v6 + 32) = v11;
      *(v6 + 48) = v12;
      if (v5 == v7)
      {
        goto LABEL_13;
      }

      v6 += 104;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (!a2)
  {
    v9 = 0;
    goto LABEL_19;
  }

  if (!a3)
  {
LABEL_17:
    v9 = a3;
LABEL_19:
    *a1 = a4;
    a1[1] = v9;
    return v9;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_23:
    __break(1u);
  }

  else
  {
    v4 = a2;
    v5 = a4 & 0xFFFFFFFFFFFFFF8;
    if (!(a4 >> 62))
    {
      v9 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_6;
    }
  }

  v9 = __CocoaSet.count.getter();
LABEL_6:
  v10 = 0;
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    if (v9 == v10)
    {
      goto LABEL_19;
    }

    if ((a4 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x18D00E9C0](v10, a4);
      v12 = v13;
    }

    else
    {
      if (v10 >= *(v5 + 16))
      {
        goto LABEL_21;
      }

      v12 = *(a4 + 8 * v10 + 32);
    }

    (*(*v12 + 120))(&v15, v13);

    if (!v16)
    {
      break;
    }

    outlined init with take of Decodable & Encodable & Hashable(&v15, v17);
    outlined init with take of Decodable & Encodable & Hashable(v17, v18);
    outlined init with take of Decodable & Encodable & Hashable(v18, v4);
    if (v11 == a3)
    {
      goto LABEL_17;
    }

    v4 += 56;
    ++v10;
    if (v11 >= a3)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
  return result;
}

{
  if (a2)
  {
    if (a3)
    {
      if ((a3 & 0x8000000000000000) != 0)
      {
        goto LABEL_22;
      }

      v4 = a2;
      v5 = a4 & 0xFFFFFFFFFFFFFF8;
      if (a4 >> 62)
      {
        goto LABEL_23;
      }

      for (i = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
      {
        v10 = 0;
        while (1)
        {
          v11 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          if (i == v10)
          {
            goto LABEL_18;
          }

          if ((a4 & 0xC000000000000001) != 0)
          {
            v13 = MEMORY[0x18D00E9C0](v10, a4);
            v12 = v13;
          }

          else
          {
            if (v10 >= *(v5 + 16))
            {
              goto LABEL_20;
            }

            v12 = *(a4 + 8 * v10 + 32);
          }

          (*(*v12 + 112))(v15, v13);

          outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v15, v16);
          outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v16, v4);
          if (v11 == a3)
          {
            goto LABEL_16;
          }

          v4 += 40;
          ++v10;
          if (v11 >= a3)
          {
            goto LABEL_21;
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
        ;
      }
    }

LABEL_16:
    i = a3;
  }

  else
  {
    i = 0;
  }

LABEL_18:
  *a1 = a4;
  a1[1] = i;
  return i;
}

void specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, char *a2, uint64_t a3)
{
  _sSay7SwiftUI13ViewResponderCGMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - v7;
  v9 = type metadata accessor for Date();
  v22 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v21 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2 || !a3)
  {
LABEL_15:
    _s7SwiftUI16PlatformItemListV0D0VWObTm_1(v23, a1, type metadata accessor for AnimationTimelineSchedule.Entries);
    return;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v18 = a1;
    v11 = type metadata accessor for AnimationTimelineSchedule.Entries();
    v12 = (v22 + 16);
    v19 = *(v23 + *(v11 + 20) + 8);
    v20 = (v22 + 56);
    v13 = (v22 + 48);
    v14 = (v22 + 32);
    a1 = 1;
    v15 = v21;
    while ((v19 & 1) == 0)
    {
      (*v12)(v8, v23, v9);
      (*v20)(v8, 0, 1, v9);
      static Date.+= infix(_:_:)();
      if ((*v13)(v8, 1, v9) == 1)
      {
        goto LABEL_13;
      }

      v16 = *v14;
      (*v14)(v15, v8, v9);
      v16(a2, v15, v9);
      if (a3 == a1)
      {
        goto LABEL_14;
      }

      a2 += *(v22 + 72);
      if (__OFADD__(a1++, 1))
      {
        __break(1u);
        goto LABEL_15;
      }
    }

    (*v20)(v8, 1, 1, v9);
LABEL_13:
    outlined destroy of TableColumnCollection.Entry?(v8, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
LABEL_14:
    a1 = v18;
    goto LABEL_15;
  }

  __break(1u);
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v15 = v14 | (v9 << 6);
      v16 = *(*(a4 + 48) + 8 * v15);
      v17 = (*(a4 + 56) + 48 * v15);
      v18 = *v17;
      v19 = v17[1];
      v20 = v17[2];
      *a2 = v16;
      *(a2 + 8) = v18;
      *(a2 + 24) = v19;
      *(a2 + 40) = v20;
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      a2 += 56;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v22 = v9 + 1;
    }

    else
    {
      v22 = (63 - v6) >> 6;
    }

    v9 = v22 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = type metadata accessor for DateComponents();
  v42 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v9);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40, v10);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, _OWORD *a2, uint64_t a3)
{
  v4 = v3;
  v5 = result;
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  v10 = *(v3 + 48);
  v11 = *(v3 + 56);
  v12 = *(v3 + 64);
  v35 = *(v3 + 72);
  v13 = *(v3 + 80);
  v14 = *(v3 + 88);
  v38 = v13;
  v43 = v10 & 1;
  if (!a2)
  {
LABEL_24:
    v16 = 0;
    v22 = v8;
    v23 = v9;
LABEL_30:
    v26 = v43;
    *v5 = *v4;
    v5[2] = v6;
    v5[3] = v7;
    v5[4] = v8;
    v5[5] = v9;
    *(v5 + 48) = v10;
    *(v5 + 49) = *(v4 + 49);
    *(v5 + 13) = *(v4 + 52);
    v5[7] = v11;
    v5[8] = v12;
    *(v5 + 72) = v35;
    v5[10] = v22;
    v5[11] = v23;
    *(v5 + 96) = v26;
    v5[13] = v38;
    v5[14] = v14;
    return v16;
  }

  if (!a3)
  {
    v22 = v8;
    v23 = v9;
    v16 = 0;
    goto LABEL_30;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v15 = a2;
    v33 = v4;
    v34 = v12;
    v16 = 0;
    v30 = v7;
    v31 = v6;
    v37 = v6 + v7;
    v17 = __OFADD__(v6, v7);
    v36 = v17;
    v28 = v9;
    v18 = a3 - 1;
    v32 = v11;
    v19 = v8 - v11;
    v20 = v9;
    v29 = v10;
    LOBYTE(v6) = v10;
    v21 = v8;
    while (1)
    {
      if (!(v19 + v16))
      {
        if (v6)
        {
          if (v35)
          {
            v12 = v34;
LABEL_28:
            v43 = v6 & 1;
            v11 = v32;
            v4 = v33;
            v22 = v32;
            v23 = v20;
            v7 = v30;
            v6 = v31;
            goto LABEL_29;
          }
        }

        else if ((v35 & 1) == 0 && v20 == v34)
        {
          v12 = v34;
          v20 = v34;
          goto LABEL_28;
        }
      }

      v22 = v8 + v16 + 1;
      if (__OFADD__(v8 + v16, 1))
      {
        break;
      }

      if (v36)
      {
        goto LABEL_32;
      }

      if (v22 == v37)
      {
        v23 = 0;
      }

      else
      {
        if (v6)
        {
          goto LABEL_35;
        }

        v23 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          goto LABEL_33;
        }
      }

      v39[0] = v8 + v16;
      v39[1] = v20;
      v40 = v6 & 1;
      result = v38(v41, v39);
      v24 = v41[3];
      v15[2] = v41[2];
      v15[3] = v24;
      v15[4] = v42[0];
      *(v15 + 74) = *(v42 + 10);
      v25 = v41[1];
      *v15 = v41[0];
      v15[1] = v25;
      if (v18 == v16)
      {
        v43 = v22 == v37;
        v16 = a3;
        v11 = v32;
        v4 = v33;
        v12 = v34;
        v7 = v30;
        v6 = v31;
        v8 = v21;
LABEL_29:
        v10 = v29;
        v9 = v28;
        goto LABEL_30;
      }

      v15 += 6;
      v4 = ++v16;
      v20 = v23;
      v6 = v22 == v37;
      v8 = v21;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *a1, _OWORD *a2, uint64_t a3)
{
  memcpy(__dst, v3, 0x119uLL);
  outlined init with copy of DefaultIndices<CountingIndexCollection<ShadowRowCollection<TableDataSourceAdaptor>>>(__dst, __src, type metadata accessor for DefaultIndices<CountingIndexCollection<ShadowRowCollection<TableDataSourceAdaptor>>>);
  v6 = *(&__dst[15] + 1);
  v7 = *&__dst[15];
  v8 = __dst[16];
  result = outlined destroy of DefaultIndices<CountingIndexCollection<ShadowRowCollection<TableDataSourceAdaptor>>>(__dst, type metadata accessor for DefaultIndices<CountingIndexCollection<ShadowRowCollection<TableDataSourceAdaptor>>>);
  __src[18] = __PAIR128__(v6, v7);
  LOBYTE(__src[19]) = v8;
  v10 = v3[37];
  v25 = v3[36];
  *(&__src[19] + 1) = v25;
  *&__src[20] = v10;
  if (!a2)
  {
LABEL_24:
    a3 = 0;
    goto LABEL_26;
  }

  if (!a3)
  {
LABEL_26:
    memcpy(a1, __src, 0x148uLL);
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a3;
    a3 = 0;
    v20 = *&__src[17];
    v21 = BYTE8(__src[17]);
    v18 = v11;
    v23 = v11 - 1;
    v24 = v7 - *(&__src[16] + 1);
    while (1)
    {
      if (!(v24 + a3))
      {
        if (v8)
        {
          if (v21)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v12 = v21;
          if (v6 != v20)
          {
            v12 = 1;
          }

          if ((v12 & 1) == 0)
          {
            goto LABEL_26;
          }
        }
      }

      v13 = v7 + a3 + 1;
      if (__OFADD__(v7 + a3, 1))
      {
        break;
      }

      v14 = (*&__src[13] + *(&__src[13] + 1));
      if (__OFADD__(*&__src[13], *(&__src[13] + 1)))
      {
        goto LABEL_28;
      }

      v15 = *(&__src[11] + 1);
      v16 = *&__src[11];
      if (*(*(&__src[11] + 1) + 16) | *(*&__src[11] + 16))
      {
        v22 = *&__src[14];

        v14 = specialized ShadowListUpdateRecorder.applyUpdates<A>(_:to:)(__dst, v15, v16, v22, v14);
      }

      if (v13 == v14)
      {
        v17 = 0;
      }

      else
      {
        if (v8)
        {
          goto LABEL_31;
        }

        v17 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_29;
        }
      }

      *&__src[18] = v7 + a3 + 1;
      *(&__src[18] + 1) = v17;
      LOBYTE(__src[19]) = v13 == v14;
      v26[0] = v7 + a3;
      v26[1] = v6;
      v27 = v8 & 1;
      result = v25(__dst, v26);
      a2[2] = __dst[2];
      a2[3] = __dst[3];
      a2[4] = __dst[4];
      *(a2 + 74) = *(&__dst[4] + 10);
      *a2 = __dst[0];
      a2[1] = __dst[1];
      if (v23 == a3)
      {
        a3 = v18;
        goto LABEL_26;
      }

      a2 += 6;
      ++a3;
      v6 = v17;
      v8 = v13 == v14;
      if (__OFADD__(a3, 1))
      {
        __break(1u);
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 56;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 56;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[56 * v9] <= a4)
    {
      memmove(a4, __dst, 56 * v9);
    }

    v12 = &v4[56 * v9];
    if (v8 < 56)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 56;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 56;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 56;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v16 = *(v13 + 1);
    v17 = *(v13 + 2);
    *(v7 + 6) = *(v13 + 6);
    *(v7 + 1) = v16;
    *(v7 + 2) = v17;
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[56 * v11] <= a4)
  {
    memmove(a4, __src, 56 * v11);
  }

  v12 = &v4[56 * v11];
  if (v10 >= 56 && v6 > v7)
  {
LABEL_20:
    v18 = v6 - 56;
    v5 -= 56;
    v19 = v12;
    do
    {
      v20 = (v5 + 56);
      v21 = *(v19 - 56);
      v19 -= 56;
      if (v21 < *v18)
      {
        if (v20 != v6)
        {
          v25 = *v18;
          v26 = *(v6 - 40);
          v27 = *(v6 - 24);
          *(v5 + 48) = *(v6 - 1);
          *(v5 + 16) = v26;
          *(v5 + 32) = v27;
          *v5 = v25;
        }

        if (v12 <= v4 || (v6 -= 56, v18 <= v7))
        {
          v6 = v18;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v20 != v12)
      {
        v22 = *v19;
        v23 = *(v19 + 16);
        v24 = *(v19 + 32);
        *(v5 + 48) = *(v19 + 48);
        *(v5 + 16) = v23;
        *(v5 + 32) = v24;
        *v5 = v22;
      }

      v5 -= 56;
      v12 = v19;
    }

    while (v19 > v4);
    v12 = v19;
  }

LABEL_31:
  v28 = ((v12 - v4) * 0x4924924924924925) >> 64;
  v29 = (v28 >> 4) + (v28 >> 63);
  if (v6 != v4 || v6 >= &v4[56 * v29])
  {
    memmove(v6, v4, 56 * v29);
  }

  return 1;
}

uint64_t specialized DropPlaceholderListModifier.PlaceholderViews.init(base:placeholder:sourceIndex:destinationIndex:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;

  v9 = dispatch thunk of _ViewList_ID_Views.endIndex.getter();
  result = dispatch thunk of _ViewList_ID_Views.endIndex.getter();
  if (result < 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = dispatch thunk of _ViewList_ID_Views.endIndex.getter();
  if (v9 < 0 || result < v9)
  {
    goto LABEL_11;
  }

  *(v5 + 40) = v9;
  *(v5 + 48) = a3;
  *(v5 + 56) = a4 & 1;
  *(v5 + 64) = a5;
  v11 = dispatch thunk of _ViewList_ID_Views.endIndex.getter();
  result = dispatch thunk of _ViewList_ID_Views.endIndex.getter();
  if (result < 0)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  result = dispatch thunk of _ViewList_ID_Views.endIndex.getter();
  if (v11 < 0 || result < v11)
  {
    goto LABEL_13;
  }

  v12 = *(v5 + 40);
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v15 = (a4 & 1) == 0;
  v13 = __OFSUB__(v14, v15);
  v16 = v14 - v15;
  if (!v13)
  {
    *(v5 + 72) = v16;
    *(v5 + 16) = 0;
    return v5;
  }

LABEL_15:
  __break(1u);
  return result;
}

void type metadata accessor for (key: Int, value: DragReorderableLayoutCoordinator.ChildFrame)()
{
  if (!lazy cache variable for type metadata for (key: Int, value: DragReorderableLayoutCoordinator.ChildFrame))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (key: Int, value: DragReorderableLayoutCoordinator.ChildFrame));
    }
  }
}

unint64_t lazy protocol witness table accessor for type ReorderableLayoutCoordinateSpace and conformance ReorderableLayoutCoordinateSpace()
{
  result = lazy protocol witness table cache variable for type ReorderableLayoutCoordinateSpace and conformance ReorderableLayoutCoordinateSpace;
  if (!lazy protocol witness table cache variable for type ReorderableLayoutCoordinateSpace and conformance ReorderableLayoutCoordinateSpace)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReorderableLayoutCoordinateSpace and conformance ReorderableLayoutCoordinateSpace);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ReorderableLayoutCoordinateSpace and conformance ReorderableLayoutCoordinateSpace;
  if (!lazy protocol witness table cache variable for type ReorderableLayoutCoordinateSpace and conformance ReorderableLayoutCoordinateSpace)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReorderableLayoutCoordinateSpace and conformance ReorderableLayoutCoordinateSpace);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ReorderableChildCoordinateSpace and conformance ReorderableChildCoordinateSpace()
{
  result = lazy protocol witness table cache variable for type ReorderableChildCoordinateSpace and conformance ReorderableChildCoordinateSpace;
  if (!lazy protocol witness table cache variable for type ReorderableChildCoordinateSpace and conformance ReorderableChildCoordinateSpace)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReorderableChildCoordinateSpace and conformance ReorderableChildCoordinateSpace);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ReorderableChildCoordinateSpace and conformance ReorderableChildCoordinateSpace;
  if (!lazy protocol witness table cache variable for type ReorderableChildCoordinateSpace and conformance ReorderableChildCoordinateSpace)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReorderableChildCoordinateSpace and conformance ReorderableChildCoordinateSpace);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _ArchivedViewStates and conformance _ArchivedViewStates(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type DragSourceProxyInput and conformance DragSourceProxyInput()
{
  result = lazy protocol witness table cache variable for type DragSourceProxyInput and conformance DragSourceProxyInput;
  if (!lazy protocol witness table cache variable for type DragSourceProxyInput and conformance DragSourceProxyInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DragSourceProxyInput and conformance DragSourceProxyInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DragSourceProxyInput and conformance DragSourceProxyInput;
  if (!lazy protocol witness table cache variable for type DragSourceProxyInput and conformance DragSourceProxyInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DragSourceProxyInput and conformance DragSourceProxyInput);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ConditionalDraggingModifier and conformance ConditionalDraggingModifier()
{
  result = lazy protocol witness table cache variable for type ConditionalDraggingModifier and conformance ConditionalDraggingModifier;
  if (!lazy protocol witness table cache variable for type ConditionalDraggingModifier and conformance ConditionalDraggingModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConditionalDraggingModifier and conformance ConditionalDraggingModifier);
  }

  return result;
}

double specialized ReorderableLayout.sizeThatFits(in:context:child:)()
{
  LayoutProxy.size(in:)();
  v1 = v0;
  v3 = COERCE_DOUBLE(_ProposedSize.width.getter());
  if (v1 >= v3)
  {
    v3 = v1;
  }

  if ((v2 & 1) == 0)
  {
    v1 = v3;
  }

  _ProposedSize.height.getter();
  return v1;
}

void type metadata accessor for IndexingIterator<_ArchivedViewStates>()
{
  if (!lazy cache variable for type metadata for IndexingIterator<_ArchivedViewStates>)
  {
    type metadata accessor for _ArchivedViewStates(255);
    lazy protocol witness table accessor for type _ArchivedViewStates and conformance _ArchivedViewStates(&lazy protocol witness table cache variable for type _ArchivedViewStates and conformance _ArchivedViewStates, type metadata accessor for _ArchivedViewStates);
    v0 = type metadata accessor for IndexingIterator();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for IndexingIterator<_ArchivedViewStates>);
    }
  }
}

uint64_t outlined destroy of TableColumnCollection.Entry?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  _sSay7SwiftUI13ViewResponderCGMaTm_1(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t destroy for ConditionalDraggingModifier(uint64_t result)
{
  if (*(result + 136))
  {
    v1 = result;
    if (*(result + 8))
    {
    }

    if (v1[3])
    {
    }

    if (v1[5])
    {
    }

    if (v1[7])
    {
    }

    if (v1[12])
    {
      __swift_destroy_boxed_opaque_existential_1((v1 + 9));
    }

    if (v1[15] >= 2uLL)
    {
    }
  }

  return result;
}

uint64_t initializeWithCopy for ConditionalDraggingModifier(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 136))
  {
    v6 = *(a2 + 112);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = v6;
    *(a1 + 128) = *(a2 + 128);
    v7 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v7;
    v8 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v8;
    v9 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v9;
    return a1;
  }

  *a1 = *a2;
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *(a2 + 16);
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
  }

  else
  {
    *(a1 + 8) = *(a2 + 8);
  }

  v10 = *(a2 + 24);
  if (v10)
  {
    v11 = *(a2 + 32);
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
  }

  else
  {
    *(a1 + 24) = *(a2 + 24);
  }

  v12 = *(a2 + 40);
  if (v12)
  {
    v13 = *(a2 + 48);
    *(a1 + 40) = v12;
    *(a1 + 48) = v13;
  }

  else
  {
    *(a1 + 40) = *(a2 + 40);
  }

  v14 = *(a2 + 56);
  if (!v14)
  {
    *(a1 + 56) = *(a2 + 56);
    v16 = *(a2 + 96);
    if (v16)
    {
      goto LABEL_14;
    }

LABEL_16:
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    goto LABEL_17;
  }

  v15 = *(a2 + 64);
  *(a1 + 56) = v14;
  *(a1 + 64) = v15;

  v16 = *(a2 + 96);
  if (!v16)
  {
    goto LABEL_16;
  }

LABEL_14:
  *(a1 + 96) = v16;
  (**(v16 - 8))(a1 + 72, a2 + 72);
LABEL_17:
  v17 = *(a2 + 120);
  *(a1 + 104) = *(a2 + 104);
  v18 = (a2 + 112);
  if (v17 == 1)
  {
    *(a1 + 112) = *v18;
    *(a1 + 128) = *(a2 + 128);
  }

  else
  {
    *(a1 + 112) = *v18;
    if (v17)
    {
      v19 = *(a2 + 128);
      *(a1 + 120) = v17;
      *(a1 + 128) = v19;
    }

    else
    {
      *(a1 + 120) = *(a2 + 120);
    }
  }

  *(a1 + 136) = *(a2 + 136);

  return a1;
}

uint64_t assignWithCopy for ConditionalDraggingModifier(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 136);
  if (!*(a1 + 136))
  {
    if (!v4)
    {
      *a1 = *a2;
      v17 = *(a2 + 16);
      v18 = *(a2 + 32);
      v19 = *(a2 + 64);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 64) = v19;
      *(a1 + 16) = v17;
      *(a1 + 32) = v18;
      v20 = *(a2 + 80);
      v21 = *(a2 + 96);
      v22 = *(a2 + 128);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 128) = v22;
      *(a1 + 80) = v20;
      *(a1 + 96) = v21;
      return a1;
    }

    *a1 = *a2;
    v8 = *(a2 + 8);
    if (v8)
    {
      v9 = *(a2 + 16);
      *(a1 + 8) = v8;
      *(a1 + 16) = v9;
    }

    else
    {
      *(a1 + 8) = *(a2 + 8);
    }

    v45 = *(a2 + 24);
    if (v45)
    {
      v46 = *(a2 + 32);
      *(a1 + 24) = v45;
      *(a1 + 32) = v46;
    }

    else
    {
      *(a1 + 24) = *(a2 + 24);
    }

    v47 = *(a2 + 40);
    if (v47)
    {
      v48 = *(a2 + 48);
      *(a1 + 40) = v47;
      *(a1 + 48) = v48;
    }

    else
    {
      *(a1 + 40) = *(a2 + 40);
    }

    v49 = *(a2 + 56);
    if (v49)
    {
      v50 = *(a2 + 64);
      *(a1 + 56) = v49;
      *(a1 + 64) = v50;

      v51 = *(a2 + 96);
      if (v51)
      {
LABEL_62:
        *(a1 + 96) = v51;
        (**(v51 - 8))(a1 + 72, a2 + 72);
LABEL_65:
        *(a1 + 104) = *(a2 + 104);
        v53 = (a2 + 120);
        v54 = (a2 + 112);
        if (*(a2 + 120) == 1)
        {
          v55 = *v54;
          *(a1 + 128) = *(a2 + 128);
          *(a1 + 112) = v55;
        }

        else
        {
          *(a1 + 112) = *v54;
          if (*v53)
          {
            v56 = *(a2 + 128);
            *(a1 + 120) = *v53;
            *(a1 + 128) = v56;
          }

          else
          {
            *(a1 + 120) = *v53;
          }
        }

        *(a1 + 136) = *(a2 + 136);

        return a1;
      }
    }

    else
    {
      *(a1 + 56) = *(a2 + 56);
      v51 = *(a2 + 96);
      if (v51)
      {
        goto LABEL_62;
      }
    }

    v52 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v52;
    goto LABEL_65;
  }

  if (v4)
  {
    *a1 = *a2;
    v6 = (a2 + 8);
    v5 = *(a2 + 8);
    if (*(a1 + 8))
    {
      if (v5)
      {
        v7 = *(a2 + 16);
        *(a1 + 8) = v5;
        *(a1 + 16) = v7;

        goto LABEL_15;
      }
    }

    else if (v5)
    {
      v16 = *(a2 + 16);
      *(a1 + 8) = v5;
      *(a1 + 16) = v16;

      goto LABEL_15;
    }

    *(a1 + 8) = *v6;
LABEL_15:
    v23 = *(a2 + 24);
    if (*(a1 + 24))
    {
      if (v23)
      {
        v24 = *(a2 + 32);
        *(a1 + 24) = v23;
        *(a1 + 32) = v24;

        goto LABEL_22;
      }
    }

    else if (v23)
    {
      v25 = *(a2 + 32);
      *(a1 + 24) = v23;
      *(a1 + 32) = v25;

      goto LABEL_22;
    }

    *(a1 + 24) = *(a2 + 24);
LABEL_22:
    v26 = *(a2 + 40);
    if (*(a1 + 40))
    {
      if (v26)
      {
        v27 = *(a2 + 48);
        *(a1 + 40) = v26;
        *(a1 + 48) = v27;

        goto LABEL_29;
      }
    }

    else if (v26)
    {
      v28 = *(a2 + 48);
      *(a1 + 40) = v26;
      *(a1 + 48) = v28;

      goto LABEL_29;
    }

    *(a1 + 40) = *(a2 + 40);
LABEL_29:
    v29 = *(a2 + 56);
    if (*(a1 + 56))
    {
      if (v29)
      {
        v30 = *(a2 + 64);
        *(a1 + 56) = v29;
        *(a1 + 64) = v30;

        goto LABEL_36;
      }
    }

    else if (v29)
    {
      v31 = *(a2 + 64);
      *(a1 + 56) = v29;
      *(a1 + 64) = v31;

      goto LABEL_36;
    }

    *(a1 + 56) = *(a2 + 56);
LABEL_36:
    v32 = *(a2 + 96);
    if (*(a1 + 96))
    {
      v33 = (a1 + 72);
      if (v32)
      {
        __swift_assign_boxed_opaque_existential_0(v33, (a2 + 72));
        goto LABEL_43;
      }

      __swift_destroy_boxed_opaque_existential_1(v33);
    }

    else if (v32)
    {
      *(a1 + 96) = v32;
      (**(v32 - 8))(a1 + 72, a2 + 72);
      goto LABEL_43;
    }

    v34 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v34;
LABEL_43:
    v35 = *(a1 + 120);
    *(a1 + 104) = *(a2 + 104);
    v36 = (a1 + 112);
    v38 = (a2 + 120);
    v37 = *(a2 + 120);
    v39 = (a2 + 112);
    if (v35 == 1)
    {
      if (v37 == 1)
      {
        v40 = *v39;
        *(a1 + 128) = *(a2 + 128);
        *v36 = v40;
LABEL_76:
        *(a1 + 136) = *(a2 + 136);

        return a1;
      }

      *v36 = *v39;
      if (*v38)
      {
        v42 = *(a2 + 128);
        *(a1 + 120) = *v38;
LABEL_73:
        *(a1 + 128) = v42;

        goto LABEL_76;
      }
    }

    else
    {
      if (v37 == 1)
      {
        outlined destroy of Drag.SupplementaryConfiguration(a1 + 112);
        v41 = *(a2 + 128);
        *v36 = *v39;
        *(a1 + 128) = v41;
        goto LABEL_76;
      }

      *v36 = *v39;
      v43 = *v38;
      if (v35)
      {
        if (v43)
        {
          v44 = *(a2 + 128);
          *(a1 + 120) = v43;
          *(a1 + 128) = v44;

          goto LABEL_76;
        }
      }

      else if (v43)
      {
        v42 = *(a2 + 128);
        *(a1 + 120) = v43;
        goto LABEL_73;
      }
    }

    *(a1 + 120) = *v38;
    goto LABEL_76;
  }

  outlined destroy of _DraggingModifier(a1);
  *a1 = *a2;
  v10 = *(a2 + 64);
  v12 = *(a2 + 16);
  v11 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v10;
  *(a1 + 16) = v12;
  *(a1 + 32) = v11;
  v13 = *(a2 + 128);
  v15 = *(a2 + 80);
  v14 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v13;
  *(a1 + 80) = v15;
  *(a1 + 96) = v14;
  return a1;
}

uint64_t assignWithTake for ConditionalDraggingModifier(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 136))
  {
    v4 = *(a2 + 136);
    if (v4)
    {
      *a1 = *a2;
      v6 = (a2 + 8);
      v5 = *(a2 + 8);
      if (*(a1 + 8))
      {
        if (v5)
        {
          v7 = *(a2 + 16);
          *(a1 + 8) = v5;
          *(a1 + 16) = v7;

          goto LABEL_12;
        }
      }

      else if (v5)
      {
        v12 = *(a2 + 16);
        *(a1 + 8) = v5;
        *(a1 + 16) = v12;
        goto LABEL_12;
      }

      *(a1 + 8) = *v6;
LABEL_12:
      v13 = *(a2 + 24);
      if (*(a1 + 24))
      {
        if (v13)
        {
          v14 = *(a2 + 32);
          *(a1 + 24) = v13;
          *(a1 + 32) = v14;

          goto LABEL_19;
        }
      }

      else if (v13)
      {
        v15 = *(a2 + 32);
        *(a1 + 24) = v13;
        *(a1 + 32) = v15;
        goto LABEL_19;
      }

      *(a1 + 24) = *(a2 + 24);
LABEL_19:
      v16 = *(a2 + 40);
      if (*(a1 + 40))
      {
        if (v16)
        {
          v17 = *(a2 + 48);
          *(a1 + 40) = v16;
          *(a1 + 48) = v17;

          goto LABEL_26;
        }
      }

      else if (v16)
      {
        v18 = *(a2 + 48);
        *(a1 + 40) = v16;
        *(a1 + 48) = v18;
        goto LABEL_26;
      }

      *(a1 + 40) = *(a2 + 40);
LABEL_26:
      v19 = *(a2 + 56);
      if (*(a1 + 56))
      {
        if (v19)
        {
          v20 = *(a2 + 64);
          *(a1 + 56) = v19;
          *(a1 + 64) = v20;

          goto LABEL_33;
        }
      }

      else if (v19)
      {
        v21 = *(a2 + 64);
        *(a1 + 56) = v19;
        *(a1 + 64) = v21;
        goto LABEL_33;
      }

      *(a1 + 56) = *(a2 + 56);
LABEL_33:
      if (*(a1 + 96))
      {
        __swift_destroy_boxed_opaque_existential_1(a1 + 72);
      }

      *(a1 + 72) = *(a2 + 72);
      *(a1 + 88) = *(a2 + 88);
      v22 = *(a1 + 120);
      *(a1 + 104) = *(a2 + 104);
      v23 = (a1 + 112);
      if (v22 != 1)
      {
        v24 = *(a2 + 120);
        if (v24 != 1)
        {
          *v23 = *(a2 + 112);
          if (v22)
          {
            if (v24)
            {
              v26 = *(a2 + 128);
              *(a1 + 120) = v24;
              *(a1 + 128) = v26;

              goto LABEL_39;
            }
          }

          else if (v24)
          {
            v27 = *(a2 + 128);
            *(a1 + 120) = v24;
            *(a1 + 128) = v27;
            goto LABEL_39;
          }

          *(a1 + 120) = *(a2 + 120);
          goto LABEL_39;
        }

        outlined destroy of Drag.SupplementaryConfiguration(a1 + 112);
      }

      *v23 = *(a2 + 112);
      *(a1 + 128) = *(a2 + 128);
LABEL_39:
      *(a1 + 136) = v4;

      return a1;
    }

    outlined destroy of _DraggingModifier(a1);
  }

  v8 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v8;
  *(a1 + 128) = *(a2 + 128);
  v9 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v9;
  v10 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v10;
  v11 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v11;
  return a1;
}

uint64_t getEnumTagSinglePayload for ConditionalDraggingModifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 144))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 136);
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

uint64_t storeEnumTagSinglePayload for ConditionalDraggingModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 144) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 144) = 0;
    }

    if (a2)
    {
      *(result + 136) = a2;
    }
  }

  return result;
}

uint64_t type metadata completion function for DragReorderableLayoutCore()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  result = type metadata accessor for DragReorderableLayoutAdaptor();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Optional();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for DragReorderableLayoutCore(uint64_t *a1, uint64_t *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v45 = *(v2 + 64);
  v3 = swift_getAssociatedTypeWitness();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64);
  v44 = swift_getAssociatedTypeWitness();
  v7 = *(v44 - 8);
  v8 = *(v7 + 80);
  if (*(v7 + 84))
  {
    v9 = *(v7 + 64);
  }

  else
  {
    v9 = *(v7 + 64) + 1;
  }

  v10 = v8 | *(v2 + 80) & 0xF8 | v5;
  v11 = v10 <= 7 && ((*(v7 + 80) | v5 | *(v2 + 80)) & 0x100000) == 0;
  if (v11 && (v12 = v45 + v5, v13 = v6 + 7, ((-42 - (((((((((((((((v6 + 7 + (v12 & ~v5)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v8)) | v8) - v9 >= 0xFFFFFFFFFFFFFFE7))
  {
    __n = v9;
    v14 = ~v5;
    v46 = ((((((((((v6 + 7 + ((v45 + v5) & v14)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15;
    (*(v2 + 16))(a1, a2, AssociatedTypeWitness);
    v15 = a1;
    v16 = (a1 + v12) & v14;
    v17 = (a2 + v12) & v14;
    (*(v4 + 16))(v16, v17, v3);
    v18 = ((v13 + v16) & 0xFFFFFFFFFFFFFFF8);
    v19 = ((v13 + v17) & 0xFFFFFFFFFFFFFFF8);
    v20 = v19[1];
    *v18 = *v19;
    v18[1] = v20;
    v21 = ((v18 + 39) & 0xFFFFFFFFFFFFFFF8);
    v22 = ((v19 + 39) & 0xFFFFFFFFFFFFFFF8);
    *v21 = *v22;
    v23 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
    v24 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
    v25 = *v24;
    *(v23 + 8) = *(v24 + 8);
    *v23 = v25;
    v26 = (v21 + 31) & 0xFFFFFFFFFFFFFFF8;
    v27 = (v22 + 31) & 0xFFFFFFFFFFFFFFF8;
    v28 = *(v27 + 24);
    *(v26 + 24) = v28;
    *(v26 + 32) = *(v27 + 32);
    v29 = **(v28 - 8);

    v29(v26, v27, v28);
    v30 = ((v26 + 47) & 0xFFFFFFFFFFFFFFF8);
    v31 = ((v27 + 47) & 0xFFFFFFFFFFFFFFF8);
    *v30 = *v31;
    *((v30 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v31 + 15) & 0xFFFFFFFFFFFFFFF8);
    v32 = ((a1 + v46) & 0xFFFFFFFFFFFFFFF8);
    v33 = ((a2 + v46) & 0xFFFFFFFFFFFFFFF8);
    *v32 = *v33;
    v34 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
    v35 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
    *v34 = *v35;
    *(v34 + 8) = *(v35 + 8);
    v36 = *(v35 + 16);
    *(v34 + 25) = *(v35 + 25);
    *(v34 + 16) = v36;
    v37 = v8 + 41 + v34;
    v38 = v8 + 41 + v35;
    v39 = *(v7 + 48);

    if (v39(v38 & ~v8, 1, v44))
    {
      memcpy((v37 & ~v8), (v38 & ~v8), __n);
    }

    else
    {
      (*(v7 + 16))(v37 & ~v8, v38 & ~v8, v44);
      (*(v7 + 56))(v37 & ~v8, 0, 1, v44);
    }
  }

  else
  {
    v40 = *a2;
    *a1 = *a2;
    v15 = (v40 + (((v10 | 7) + 16) & ~(v10 | 7)));
  }

  return v15;
}

uint64_t destroy for DragReorderableLayoutCore(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8) + 8;
  (*v3)(a1, AssociatedTypeWitness);
  v4 = *(v3 + 56);
  v5 = swift_getAssociatedTypeWitness();
  v6 = *(v5 - 8);
  v7 = v6 + 8;
  v8 = *(v6 + 80);
  v9 = v4 + v8;
  v10 = (v4 + v8 + a1) & ~v8;
  (*(v6 + 8))(v10, v5);
  v11 = *(v7 + 56) + 7;

  __swift_destroy_boxed_opaque_existential_1((((((v11 + v10) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8);

  v12 = swift_getAssociatedTypeWitness();
  v13 = *(v12 - 8);
  v14 = *(v13 + 80);
  v15 = ((((a1 + ((((((((((v11 + (v9 & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v14 + 41;
  v18 = v13;
  result = (*(v13 + 48))(v15 & ~v14, 1, v12);
  if (!result)
  {
    v17 = *(v18 + 8);

    return v17(v15 & ~v14, v12);
  }

  return result;
}

uint64_t initializeWithCopy for DragReorderableLayoutCore(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8) + 16;
  (*v5)(a1, a2, AssociatedTypeWitness);
  v6 = *(v5 + 48);
  v7 = swift_getAssociatedTypeWitness();
  v8 = *(v7 - 8);
  v9 = v8 + 16;
  v10 = *(v8 + 80);
  v11 = v6 + v10;
  v12 = (v6 + v10 + a1) & ~v10;
  v13 = (v6 + v10 + a2) & ~v10;
  (*(v8 + 16))(v12, v13, v7);
  v14 = *(v9 + 48) + 7;
  v15 = ((v14 + v12) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v14 + v13) & 0xFFFFFFFFFFFFFFF8);
  v17 = v16[1];
  *v15 = *v16;
  v15[1] = v17;
  v18 = ((v15 + 39) & 0xFFFFFFFFFFFFFFF8);
  v19 = ((v16 + 39) & 0xFFFFFFFFFFFFFFF8);
  *v18 = *v19;
  v20 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = *(v21 + 8);
  *v20 = *v21;
  *(v20 + 8) = v22;
  v23 = (v18 + 31) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v19 + 31) & 0xFFFFFFFFFFFFFFF8;
  v25 = *(v24 + 24);
  *(v23 + 24) = v25;
  *(v23 + 32) = *(v24 + 32);
  v26 = **(v25 - 8);

  v26(v23, v24, v25);
  v27 = ((v23 + 47) & 0xFFFFFFFFFFFFFFF8);
  v28 = ((v24 + 47) & 0xFFFFFFFFFFFFFFF8);
  *v27 = *v28;
  *((v27 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v28 + 15) & 0xFFFFFFFFFFFFFFF8);
  v29 = ((((((((((v14 + (v11 & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15;
  v43 = a1;
  v30 = ((v29 + a1) & 0xFFFFFFFFFFFFFFF8);
  v31 = ((v29 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v30 = *v31;
  v32 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v32 = *v33;
  *(v32 + 8) = *(v33 + 8);
  v34 = *(v33 + 16);
  *(v32 + 25) = *(v33 + 25);
  *(v32 + 16) = v34;
  v35 = swift_getAssociatedTypeWitness();
  v36 = *(v35 - 8);
  v37 = *(v36 + 80);
  v38 = v37 + 41 + v32;
  v39 = v37 + 41 + v33;
  v40 = *(v36 + 48);

  if (v40(v39 & ~v37, 1, v35))
  {
    if (*(v36 + 84))
    {
      v41 = *(v36 + 64);
    }

    else
    {
      v41 = *(v36 + 64) + 1;
    }

    memcpy((v38 & ~v37), (v39 & ~v37), v41);
  }

  else
  {
    (*(v36 + 16))(v38 & ~v37, v39 & ~v37, v35);
    (*(v36 + 56))(v38 & ~v37, 0, 1, v35);
  }

  return v43;
}

uint64_t assignWithCopy for DragReorderableLayoutCore(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8) + 24;
  (*v5)(a1, a2, AssociatedTypeWitness);
  v6 = *(v5 + 40);
  v7 = swift_getAssociatedTypeWitness();
  v8 = *(v7 - 8);
  v9 = v8 + 24;
  v10 = *(v8 + 80);
  v11 = v6 + v10;
  v12 = (v6 + v10 + a1) & ~v10;
  (*(v8 + 24))(v12, (v11 + a2) & ~v10, v7);
  v13 = *(v9 + 40) + 7;
  v14 = (v13 + v12) & 0xFFFFFFFFFFFFFFF8;
  v15 = ((v13 + ((v11 + a2) & ~v10)) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  *(v14 + 8) = v15[1];
  *(v14 + 16) = v15[2];
  *(v14 + 24) = v15[3];
  v14 += 39;
  v16 = ((v15 + 39) & 0xFFFFFFFFFFFFFFF8);
  v17 = (v14 & 0xFFFFFFFFFFFFFFF8) + 15;
  *(v14 & 0xFFFFFFFFFFFFFFF8) = *v16;
  v18 = (v14 & 0xFFFFFFFFFFFFFFF8) + 31;

  v19 = v17 & 0xFFFFFFFFFFFFFFF8;
  v20 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = *v20;
  *(v19 + 8) = *(v20 + 8);
  *v19 = v21;
  __swift_assign_boxed_opaque_existential_1((v18 & 0xFFFFFFFFFFFFFFF8), ((v16 + 31) & 0xFFFFFFFFFFFFFFF8));
  v22 = (((v18 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8);
  v23 = ((((v16 + 31) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8);
  *v22 = *v23;
  *((v22 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v23 + 15) & 0xFFFFFFFFFFFFFFF8);
  v24 = v11 & ~v10;
  v25 = a1;
  v26 = ((((((((((v13 + v24) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15;
  v27 = ((v26 + a1) & 0xFFFFFFFFFFFFFFF8);
  v28 = v26 + a2;
  v29 = (v28 & 0xFFFFFFFFFFFFFFF8) + 15;
  *v27 = *(v28 & 0xFFFFFFFFFFFFFFF8);

  v30 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
  v31 = v29 & 0xFFFFFFFFFFFFFFF8;
  *v30 = *(v29 & 0xFFFFFFFFFFFFFFF8);

  *(v30 + 8) = *((v29 & 0xFFFFFFFFFFFFFFF8) + 8);

  v32 = *((v29 & 0xFFFFFFFFFFFFFFF8) + 16);
  *(v30 + 24) = *((v29 & 0xFFFFFFFFFFFFFFF8) + 24);
  *(v30 + 16) = v32;
  v33 = *((v29 & 0xFFFFFFFFFFFFFFF8) + 32);
  *(v30 + 40) = *((v29 & 0xFFFFFFFFFFFFFFF8) + 40);
  *(v30 + 32) = v33;
  v34 = swift_getAssociatedTypeWitness();
  v35 = *(v34 - 8);
  v36 = *(v35 + 80);
  v37 = v36 + 41 + v30;
  v38 = v36 + 41 + v31;
  v39 = *(v35 + 48);
  LODWORD(a1) = v39(v37 & ~v36, 1, v34);
  v40 = v39(v38 & ~v36, 1, v34);
  if (a1)
  {
    if (!v40)
    {
      (*(v35 + 16))(v37 & ~v36, v38 & ~v36, v34);
      (*(v35 + 56))(v37 & ~v36, 0, 1, v34);
      return v25;
    }

    v41 = *(v35 + 84);
    v42 = *(v35 + 64);
  }

  else
  {
    if (!v40)
    {
      (*(v35 + 24))(v37 & ~v36, v38 & ~v36, v34);
      return v25;
    }

    v44 = *(v35 + 8);
    v43 = v35 + 8;
    v44(v37 & ~v36, v34);
    v41 = *(v43 + 76);
    v42 = *(v43 + 56);
  }

  if (v41)
  {
    v45 = v42;
  }

  else
  {
    v45 = v42 + 1;
  }

  memcpy((v37 & ~v36), (v38 & ~v36), v45);
  return v25;
}

uint64_t initializeWithTake for DragReorderableLayoutCore(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8) + 32;
  (*v5)(a1, a2, AssociatedTypeWitness);
  v6 = *(v5 + 32);
  v7 = swift_getAssociatedTypeWitness();
  v8 = *(v7 - 8);
  v9 = v8 + 32;
  v10 = *(v8 + 80);
  v11 = v6 + v10;
  v12 = (v6 + v10 + a1) & ~v10;
  (*(v8 + 32))(v12, (v11 + a2) & ~v10, v7);
  v13 = *(v9 + 32) + 7;
  v14 = ((v13 + v12) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + ((v11 + a2) & ~v10)) & 0xFFFFFFFFFFFFFFF8);
  v16 = v15[1];
  *v14 = *v15;
  v14[1] = v16;
  v17 = ((v14 + 39) & 0xFFFFFFFFFFFFFFF8);
  v18 = ((v15 + 39) & 0xFFFFFFFFFFFFFFF8);
  *v17 = *v18;
  v19 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = *(v20 + 8);
  *v19 = *v20;
  *(v19 + 8) = v21;
  v22 = (v17 + 31) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v18 + 31) & 0xFFFFFFFFFFFFFFF8;
  v25 = *v23;
  v24 = *(v23 + 16);
  *(v22 + 32) = *(v23 + 32);
  *v22 = v25;
  *(v22 + 16) = v24;
  v26 = ((v22 + 47) & 0xFFFFFFFFFFFFFFF8);
  v27 = ((v23 + 47) & 0xFFFFFFFFFFFFFFF8);
  *v26 = *v27;
  *((v26 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v27 + 15) & 0xFFFFFFFFFFFFFFF8);
  v28 = ((((((((((v13 + (v11 & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15;
  v29 = ((v28 + a1) & 0xFFFFFFFFFFFFFFF8);
  v30 = ((v28 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v29 = *v30;
  v31 = ((v29 + 15) & 0xFFFFFFFFFFFFFFF8);
  v32 = ((v30 + 15) & 0xFFFFFFFFFFFFFFF8);
  v34 = *v32;
  v33 = v32[1];
  *(v31 + 25) = *(v32 + 25);
  *v31 = v34;
  v31[1] = v33;
  v35 = swift_getAssociatedTypeWitness();
  v36 = *(v35 - 8);
  v37 = *(v36 + 80);
  v38 = v31 + v37 + 41;
  v39 = v32 + v37 + 41;
  if ((*(v36 + 48))(v39 & ~v37, 1, v35))
  {
    if (*(v36 + 84))
    {
      v40 = *(v36 + 64);
    }

    else
    {
      v40 = *(v36 + 64) + 1;
    }

    memcpy((v38 & ~v37), (v39 & ~v37), v40);
  }

  else
  {
    (*(v36 + 32))(v38 & ~v37, v39 & ~v37, v35);
    (*(v36 + 56))(v38 & ~v37, 0, 1, v35);
  }

  return a1;
}

uint64_t assignWithTake for DragReorderableLayoutCore(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8) + 40;
  (*v5)(a1, a2, AssociatedTypeWitness);
  v6 = *(v5 + 24);
  v7 = swift_getAssociatedTypeWitness();
  v8 = *(v7 - 8);
  v9 = v8 + 40;
  v10 = *(v8 + 80);
  v11 = v6 + v10;
  v12 = (v6 + v10 + a1) & ~v10;
  (*(v8 + 40))(v12, (v11 + a2) & ~v10, v7);
  v13 = *(v9 + 24) + 7;
  v14 = (v13 + v12) & 0xFFFFFFFFFFFFFFF8;
  v15 = ((v13 + ((v11 + a2) & ~v10)) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  *(v14 + 8) = v15[1];
  *(v14 + 16) = v15[2];
  *(v14 + 24) = v15[3];
  v14 += 39;
  v16 = ((v15 + 39) & 0xFFFFFFFFFFFFFFF8);
  v17 = v16;
  v18 = (v14 & 0xFFFFFFFFFFFFFFF8) + 15;
  *(v14 & 0xFFFFFFFFFFFFFFF8) = *v16;
  v19 = (v14 & 0xFFFFFFFFFFFFFFF8) + 31;

  v20 = v18 & 0xFFFFFFFFFFFFFFF8;
  v21 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = *v21;
  *(v20 + 8) = *(v21 + 8);
  *v20 = v22;
  v23 = v19 & 0xFFFFFFFFFFFFFFF8;
  v24 = (v17 + 31) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1(v19 & 0xFFFFFFFFFFFFFFF8);
  v25 = *v24;
  v26 = *(v24 + 16);
  *(v23 + 32) = *(v24 + 32);
  *v23 = v25;
  *(v23 + 16) = v26;
  v27 = (((v19 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8);
  v28 = ((v24 + 47) & 0xFFFFFFFFFFFFFFF8);
  *v27 = *v28;
  *((v27 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v28 + 15) & 0xFFFFFFFFFFFFFFF8);
  v29 = v11 & ~v10;
  v30 = a1;
  v31 = ((((((((((v13 + v29) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15;
  v32 = ((v31 + a1) & 0xFFFFFFFFFFFFFFF8);
  v33 = ((v31 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v32 = *v33;

  v34 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v34 = *v35;

  *(v34 + 8) = *(v35 + 8);

  v36 = *(v35 + 16);
  *(v34 + 24) = *(v35 + 24);
  *(v34 + 16) = v36;
  v37 = *(v35 + 32);
  *(v34 + 40) = *(v35 + 40);
  *(v34 + 32) = v37;
  v38 = swift_getAssociatedTypeWitness();
  v39 = *(v38 - 8);
  v40 = *(v39 + 80);
  v41 = v40 + 41 + v34;
  v42 = v40 + 41 + v35;
  v43 = *(v39 + 48);
  v44 = v43(v41 & ~v40, 1, v38);
  v45 = v43(v42 & ~v40, 1, v38);
  if (v44)
  {
    if (!v45)
    {
      (*(v39 + 32))(v41 & ~v40, v42 & ~v40, v38);
      (*(v39 + 56))(v41 & ~v40, 0, 1, v38);
      return v30;
    }

    v46 = *(v39 + 84);
    v47 = *(v39 + 64);
  }

  else
  {
    if (!v45)
    {
      (*(v39 + 40))(v41 & ~v40, v42 & ~v40, v38);
      return v30;
    }

    v49 = *(v39 + 8);
    v48 = v39 + 8;
    v49(v41 & ~v40, v38);
    v46 = *(v48 + 76);
    v47 = *(v48 + 56);
  }

  if (v46)
  {
    v50 = v47;
  }

  else
  {
    v50 = v47 + 1;
  }

  memcpy((v41 & ~v40), (v42 & ~v40), v50);
  return v30;
}

uint64_t getEnumTagSinglePayload for DragReorderableLayoutCore(unsigned __int16 *a1, unsigned int a2)
{
  v3 = *(swift_getAssociatedTypeWitness() - 8);
  v4 = *(v3 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  v37 = v4;
  if (v6 <= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v5 + 80);
  v15 = *(v5 + 64);
  v16 = *(v9 + 80);
  v17 = *(v9 + 64);
  if (v11)
  {
    v18 = v17;
  }

  else
  {
    v18 = v17 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = *(v3 + 64) + v14;
  v20 = v15 + 7;
  v21 = (((((((((v15 + 7 + (v19 & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = v16 + 41;
  if (a2 <= v13)
  {
    goto LABEL_40;
  }

  v23 = v18 + ((v22 + ((((v21 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v16);
  v24 = 8 * v23;
  if (v23 <= 3)
  {
    v27 = ((a2 - v13 + ~(-1 << v24)) >> v24) + 1;
    if (HIWORD(v27))
    {
      v25 = *(a1 + v23);
      if (!v25)
      {
        goto LABEL_40;
      }

      goto LABEL_27;
    }

    if (v27 > 0xFF)
    {
      v25 = *(a1 + v23);
      if (!*(a1 + v23))
      {
        goto LABEL_40;
      }

      goto LABEL_27;
    }

    if (v27 < 2)
    {
LABEL_40:
      if (v8 >= v12)
      {
        if (v37 == v8)
        {
          v32 = *(v3 + 48);

          return v32(a1);
        }

        else
        {
          v33 = (a1 + v19) & ~v14;
          if (v6 == v8)
          {
            v34 = *(v5 + 48);

            return v34(v33, v6, AssociatedTypeWitness);
          }

          else
          {
            v35 = *((((v20 + v33) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
            if (v35 >= 0xFFFFFFFF)
            {
              LODWORD(v35) = -1;
            }

            return (v35 + 1);
          }
        }
      }

      else
      {
        v31 = (*(v10 + 48))((v22 + ((((a1 + v21 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v16);
        if (v31 >= 2)
        {
          return v31 - 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v25 = *(a1 + v23);
  if (!*(a1 + v23))
  {
    goto LABEL_40;
  }

LABEL_27:
  v28 = (v25 - 1) << v24;
  if (v23 > 3)
  {
    v28 = 0;
  }

  if (v23)
  {
    if (v23 <= 3)
    {
      v29 = v23;
    }

    else
    {
      v29 = 4;
    }

    if (v29 > 2)
    {
      if (v29 == 3)
      {
        v30 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v30 = *a1;
      }
    }

    else if (v29 == 1)
    {
      v30 = *a1;
    }

    else
    {
      v30 = *a1;
    }
  }

  else
  {
    v30 = 0;
  }

  return v13 + (v30 | v28) + 1;
}

void storeEnumTagSinglePayload for DragReorderableLayoutCore(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v45 = AssociatedTypeWitness;
  v5 = *(v4 + 84);
  v44 = swift_getAssociatedTypeWitness();
  v6 = *(v44 - 8);
  v7 = *(v6 + 84);
  if (v7 <= v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = 0;
  v11 = *(swift_getAssociatedTypeWitness() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  v14 = *(v4 + 64);
  v15 = v13 - 1;
  if (!v13)
  {
    v15 = 0;
  }

  if (v15 <= v9)
  {
    v16 = v9;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(v6 + 80);
  v18 = v14 + v17;
  v19 = (v14 + v17) & ~v17;
  v20 = *(v6 + 64) + 7;
  v21 = (((((((((v20 + v19) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = *(v11 + 80);
  v23 = (v22 + 41 + ((((v21 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v22;
  v24 = *(v11 + 64);
  if (v13)
  {
    v25 = v24;
  }

  else
  {
    v25 = v24 + 1;
  }

  v26 = v23 + v25;
  if (a3 > v16)
  {
    if (v26 <= 3)
    {
      v27 = ((a3 - v16 + ~(-1 << (8 * v26))) >> (8 * v26)) + 1;
      if (HIWORD(v27))
      {
        v10 = 4;
      }

      else
      {
        if (v27 < 0x100)
        {
          v28 = 1;
        }

        else
        {
          v28 = 2;
        }

        if (v27 >= 2)
        {
          v10 = v28;
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
  }

  if (v16 < a2)
  {
    v29 = ~v16 + a2;
    if (v26 < 4)
    {
      v30 = (v29 >> (8 * v26)) + 1;
      if (v26)
      {
        v31 = v29 & ~(-1 << (8 * v26));
        bzero(a1, v23 + v25);
        if (v26 != 3)
        {
          if (v26 == 2)
          {
            *a1 = v31;
            if (v10 > 1)
            {
LABEL_71:
              if (v10 == 2)
              {
                *&a1[v26] = v30;
              }

              else
              {
                *&a1[v26] = v30;
              }

              return;
            }
          }

          else
          {
            *a1 = v29;
            if (v10 > 1)
            {
              goto LABEL_71;
            }
          }

          goto LABEL_68;
        }

        *a1 = v31;
        a1[2] = BYTE2(v31);
      }

      if (v10 > 1)
      {
        goto LABEL_71;
      }
    }

    else
    {
      bzero(a1, v23 + v25);
      *a1 = v29;
      v30 = 1;
      if (v10 > 1)
      {
        goto LABEL_71;
      }
    }

LABEL_68:
    if (v10)
    {
      a1[v26] = v30;
    }

    return;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&a1[v26] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_42;
    }

    *&a1[v26] = 0;
  }

  else if (v10)
  {
    a1[v26] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_42;
  }

  if (!a2)
  {
    return;
  }

LABEL_42:
  if (v9 >= v15)
  {
    if (v9 >= a2)
    {
      if (v5 == v9)
      {
        v38 = v45;
        v39 = *(v4 + 56);
        v40 = a1;
        v41 = a2;
        v42 = v5;
      }

      else
      {
        v40 = (&a1[v18] & ~v17);
        if (v7 != v9)
        {
          if ((a2 & 0x80000000) != 0)
          {
            v43 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v43 = a2 - 1;
          }

          *(((&v40[v20] & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) = v43;
          return;
        }

        v39 = *(v6 + 56);
        v41 = a2;
        v42 = v7;
        v38 = v44;
      }

      v39(v40, v41, v42, v38);
      return;
    }

    if (v21 != -8)
    {
      bzero(a1, v21 + 8);
      *a1 = ~v9 + a2;
    }
  }

  else
  {
    v32 = v22 + 41 + (((&a1[v21 + 15] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
    v33 = (v32 & ~v22);
    if (v15 >= a2)
    {
      v37 = *(v12 + 56);

      v37(v32 & ~v22, a2 + 1);
    }

    else
    {
      if (v25 <= 3)
      {
        v34 = ~(-1 << (8 * v25));
      }

      else
      {
        v34 = -1;
      }

      if (v25)
      {
        v35 = v34 & (~v15 + a2);
        if (v25 <= 3)
        {
          v36 = v25;
        }

        else
        {
          v36 = 4;
        }

        bzero(v33, v25);
        if (v36 > 2)
        {
          if (v36 == 3)
          {
            *v33 = v35;
            v33[2] = BYTE2(v35);
          }

          else
          {
            *v33 = v35;
          }
        }

        else if (v36 == 1)
        {
          *v33 = v35;
        }

        else
        {
          *v33 = v35;
        }
      }
    }
  }
}

uint64_t _s7SwiftUI17_DraggingModifierVSgWOcTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t outlined destroy of DefaultIndices<CountingIndexCollection<ShadowRowCollection<TableDataSourceAdaptor>>>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for ModifiedContent<ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>>, DragReorderableChildModifier>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>>, DragReorderableChildModifier>)
  {
    type metadata accessor for ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>>, DragReorderableChildModifier>);
    }
  }
}

void type metadata accessor for ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>>)
  {
    type metadata accessor for <<opaque return type of MappedViewElement.view>>.0();
    type metadata accessor for Binding<_DragReorderableView_DragState>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>>, DragReorderableChildModifier>, <<opaque return type of MappedViewElement.view>>.0> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>>, DragReorderableChildModifier>, <<opaque return type of MappedViewElement.view>>.0> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>>, DragReorderableChildModifier>, <<opaque return type of MappedViewElement.view>>.0> and conformance <> _ConditionalContent<A, B>)
  {
    type metadata accessor for _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>>, DragReorderableChildModifier>, <<opaque return type of MappedViewElement.view>>.0>(255, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>>, DragReorderableChildModifier>, <<opaque return type of MappedViewElement.view>>.0>, MEMORY[0x1E697F960]);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>>, DragReorderableChildModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>>, DragReorderableChildModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>>, DragReorderableChildModifier>, lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>> and conformance <> ModifiedContent<A, B>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>>, DragReorderableChildModifier>, <<opaque return type of MappedViewElement.view>>.0> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>>();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t partial apply for closure #1 in DragReorderableLayoutCore.children.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for DragReorderableLayoutCore();

  return closure #1 in DragReorderableLayoutCore.children.getter(a1, a2);
}

void type metadata accessor for _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>>, DragReorderableChildModifier>, <<opaque return type of MappedViewElement.view>>.0>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>>, DragReorderableChildModifier>();
    v7 = v6;
    type metadata accessor for <<opaque return type of MappedViewElement.view>>.0();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t objectdestroy_44Tm()
{
  v1 = (type metadata accessor for DragReorderableLayoutCore() - 8);
  v2 = v0 + ((*(*v1 + 80) + 48) & ~*(*v1 + 80));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v2, AssociatedTypeWitness);
  v4 = swift_getAssociatedTypeWitness();
  v5 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for DragReorderableLayoutAdaptor();
  (*(*(v4 - 8) + 8))(v2 + *(v6 + 68), v4);

  __swift_destroy_boxed_opaque_existential_1(v2 + *(v6 + 84));

  v7 = v1[13];
  v8 = *(v5 - 8);
  if (!(*(v8 + 48))(v2 + v7, 1, v5))
  {
    (*(v8 + 8))(v2 + v7, v5);
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #3 in DragReorderableLayoutCore.draggableView<A>(_:offset:)()
{
  v1 = *(type metadata accessor for DragReorderableLayoutCore() - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #3 in DragReorderableLayoutCore.draggableView<A>(_:offset:)(v0 + v2, v3);
}

void type metadata accessor for DragPayloadBox<Drag.Payload<ObjectIdentifier>>()
{
  if (!lazy cache variable for type metadata for DragPayloadBox<Drag.Payload<ObjectIdentifier>>)
  {
    type metadata accessor for Drag.Payload<ObjectIdentifier>(255, &lazy cache variable for type metadata for Drag.Payload<ObjectIdentifier>, type metadata accessor for Drag.Payload);
    lazy protocol witness table accessor for type Drag.Payload<ObjectIdentifier> and conformance Drag.Payload<A>();
    v0 = type metadata accessor for DragPayloadBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DragPayloadBox<Drag.Payload<ObjectIdentifier>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Drag.Payload<ObjectIdentifier> and conformance Drag.Payload<A>()
{
  result = lazy protocol witness table cache variable for type Drag.Payload<ObjectIdentifier> and conformance Drag.Payload<A>;
  if (!lazy protocol witness table cache variable for type Drag.Payload<ObjectIdentifier> and conformance Drag.Payload<A>)
  {
    type metadata accessor for Drag.Payload<ObjectIdentifier>(255, &lazy cache variable for type metadata for Drag.Payload<ObjectIdentifier>, type metadata accessor for Drag.Payload);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Drag.Payload<ObjectIdentifier> and conformance Drag.Payload<A>);
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<DraggingItem<ObjectIdentifier>>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<DraggingItem<ObjectIdentifier>>)
  {
    type metadata accessor for Drag.Payload<ObjectIdentifier>(255, &lazy cache variable for type metadata for DraggingItem<ObjectIdentifier>, type metadata accessor for DraggingItem);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<DraggingItem<ObjectIdentifier>>);
    }
  }
}

void type metadata accessor for Drag.Payload<ObjectIdentifier>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E5FE8]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t outlined destroy of Path?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for Binding<_DragReorderableView_DragState>(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t type metadata completion function for DropPlaceholderListModifier()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for DropPlaceholderListModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) == 0 && ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) >= 0xFFFFFFFFFFFFFFE7)
  {
    (*(v4 + 16))(a1);
    v10 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = *(v10 + 9);
    v12 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v12 = *v10;
    *(v12 + 9) = v11;
  }

  else
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  return v3;
}

uint64_t initializeWithCopy for DropPlaceholderListModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = *(v8 + 9);
  *v7 = *v8;
  *(v7 + 9) = v9;
  return a1;
}

uint64_t assignWithCopy for DropPlaceholderListModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  *(v7 + 8) = *(v8 + 8);
  *v7 = v9;
  v10 = *(v8 + 16);
  *(v7 + 24) = *(v8 + 24);
  *(v7 + 16) = v10;
  return a1;
}

uint64_t initializeWithTake for DropPlaceholderListModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = *(v8 + 9);
  *v7 = *v8;
  *(v7 + 9) = v9;
  return a1;
}

uint64_t assignWithTake for DropPlaceholderListModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  *(v7 + 8) = *(v8 + 8);
  *v7 = v9;
  v10 = *(v8 + 16);
  *(v7 + 24) = *(v8 + 24);
  *(v7 + 16) = v10;
  return a1;
}

uint64_t getEnumTagSinglePayload for DropPlaceholderListModifier(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 25;
  v7 = (a2 - v5 + 255) >> 8;
  if (v6 <= 3)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 2;
  }

  if (v8 >= 0x10000)
  {
    v9 = 4;
  }

  else
  {
    v9 = 2;
  }

  if (v8 < 0x100)
  {
    v9 = 1;
  }

  if (v8 >= 2)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v11 = *&a1[v6];
      if (!*&a1[v6])
      {
        goto LABEL_24;
      }
    }

    else
    {
      v11 = *&a1[v6];
      if (!v11)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v10 || (v11 = a1[v6]) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v12 = (v11 - 1) << (8 * v6);
  if (v6 <= 3)
  {
    v13 = *a1;
  }

  else
  {
    v12 = 0;
    v13 = *a1;
  }

  return v5 + (v13 | v12) + 1;
}

void storeEnumTagSinglePayload for DropPlaceholderListModifier(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = ((*(v6 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 25;
  if (v7 >= a3)
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v9 = (a3 - v7 + 255) >> 8;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (v7 >= a2)
    {
LABEL_14:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *&a1[v8] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_29;
        }

        *&a1[v8] = 0;
      }

      else if (v12)
      {
        a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_29;
      }

      if (!a2)
      {
        return;
      }

LABEL_29:
      v15 = *(v6 + 56);

      v15();
      return;
    }
  }

  v13 = ~v7 + a2;
  bzero(a1, v8);
  if (v8 <= 3)
  {
    v14 = (v13 >> 8) + 1;
  }

  else
  {
    v14 = 1;
  }

  if (v8 <= 3)
  {
    *a1 = v13;
    if (v12 > 1)
    {
LABEL_24:
      if (v12 == 2)
      {
        *&a1[v8] = v14;
      }

      else
      {
        *&a1[v8] = v14;
      }

      return;
    }
  }

  else
  {
    *a1 = v13;
    if (v12 > 1)
    {
      goto LABEL_24;
    }
  }

  if (v12)
  {
    a1[v8] = v14;
  }
}

uint64_t destroy for DragReorderableChildModifier(uint64_t result)
{
  if (*(result + 144))
  {
    v1 = result;
    if (*(result + 16))
    {
    }

    if (v1[4])
    {
    }

    if (v1[6])
    {
    }

    if (v1[8])
    {
    }

    if (v1[13])
    {
      __swift_destroy_boxed_opaque_existential_1((v1 + 10));
    }

    if (v1[16] >= 2uLL)
    {
    }
  }

  return result;
}

uint64_t initializeWithCopy for DragReorderableChildModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (!*(a2 + 144))
  {
    v6 = *(a2 + 88);
    v7 = *(a2 + 120);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 120) = v7;
    *(a1 + 136) = *(a2 + 136);
    v8 = *(a2 + 24);
    v9 = *(a2 + 56);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = v9;
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = v6;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = v8;
    goto LABEL_23;
  }

  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  if (v4)
  {
    v5 = *(a2 + 24);
    *(a1 + 16) = v4;
    *(a1 + 24) = v5;
  }

  else
  {
    *(a1 + 16) = *(a2 + 16);
  }

  v10 = *(a2 + 32);
  if (v10)
  {
    v11 = *(a2 + 40);
    *(a1 + 32) = v10;
    *(a1 + 40) = v11;
  }

  else
  {
    *(a1 + 32) = *(a2 + 32);
  }

  v12 = *(a2 + 48);
  if (v12)
  {
    v13 = *(a2 + 56);
    *(a1 + 48) = v12;
    *(a1 + 56) = v13;
  }

  else
  {
    *(a1 + 48) = *(a2 + 48);
  }

  v14 = *(a2 + 64);
  if (!v14)
  {
    *(a1 + 64) = *(a2 + 64);
    v16 = *(a2 + 104);
    if (v16)
    {
      goto LABEL_14;
    }

LABEL_16:
    v17 = *(a2 + 96);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = v17;
    goto LABEL_17;
  }

  v15 = *(a2 + 72);
  *(a1 + 64) = v14;
  *(a1 + 72) = v15;

  v16 = *(a2 + 104);
  if (!v16)
  {
    goto LABEL_16;
  }

LABEL_14:
  *(a1 + 104) = v16;
  (**(v16 - 8))(a1 + 80, a2 + 80);
LABEL_17:
  v18 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  v19 = (a2 + 120);
  if (v18 == 1)
  {
    *(a1 + 120) = *v19;
    *(a1 + 136) = *(a2 + 136);
  }

  else
  {
    *(a1 + 120) = *v19;
    if (v18)
    {
      v20 = *(a2 + 136);
      *(a1 + 128) = v18;
      *(a1 + 136) = v20;
    }

    else
    {
      *(a1 + 128) = *(a2 + 128);
    }
  }

  *(a1 + 144) = *(a2 + 144);

LABEL_23:
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  return a1;
}

uint64_t assignWithCopy for DragReorderableChildModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 144);
  if (!*(a1 + 144))
  {
    if (!v4)
    {
      *(a1 + 8) = *(a2 + 8);
      v18 = *(a2 + 24);
      v19 = *(a2 + 40);
      v20 = *(a2 + 56);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 56) = v20;
      *(a1 + 40) = v19;
      *(a1 + 24) = v18;
      v21 = *(a2 + 88);
      v22 = *(a2 + 104);
      v23 = *(a2 + 120);
      *(a1 + 136) = *(a2 + 136);
      *(a1 + 120) = v23;
      *(a1 + 104) = v22;
      *(a1 + 88) = v21;
      goto LABEL_77;
    }

    *(a1 + 8) = *(a2 + 8);
    v9 = *(a2 + 16);
    if (v9)
    {
      v10 = *(a2 + 24);
      *(a1 + 16) = v9;
      *(a1 + 24) = v10;
    }

    else
    {
      *(a1 + 16) = *(a2 + 16);
    }

    v46 = *(a2 + 32);
    if (v46)
    {
      v47 = *(a2 + 40);
      *(a1 + 32) = v46;
      *(a1 + 40) = v47;
    }

    else
    {
      *(a1 + 32) = *(a2 + 32);
    }

    v48 = *(a2 + 48);
    if (v48)
    {
      v49 = *(a2 + 56);
      *(a1 + 48) = v48;
      *(a1 + 56) = v49;
    }

    else
    {
      *(a1 + 48) = *(a2 + 48);
    }

    v50 = *(a2 + 64);
    if (v50)
    {
      v51 = *(a2 + 72);
      *(a1 + 64) = v50;
      *(a1 + 72) = v51;

      v52 = *(a2 + 104);
      if (v52)
      {
LABEL_62:
        *(a1 + 104) = v52;
        (**(v52 - 8))(a1 + 80, a2 + 80);
LABEL_65:
        *(a1 + 112) = *(a2 + 112);
        v54 = (a2 + 128);
        v55 = (a2 + 120);
        if (*(a2 + 128) == 1)
        {
          v56 = *v55;
          *(a1 + 136) = *(a2 + 136);
          *(a1 + 120) = v56;
        }

        else
        {
          *(a1 + 120) = *v55;
          if (*v54)
          {
            v57 = *(a2 + 136);
            *(a1 + 128) = *v54;
            *(a1 + 136) = v57;
          }

          else
          {
            *(a1 + 128) = *v54;
          }
        }

        *(a1 + 144) = *(a2 + 144);

        goto LABEL_77;
      }
    }

    else
    {
      *(a1 + 64) = *(a2 + 64);
      v52 = *(a2 + 104);
      if (v52)
      {
        goto LABEL_62;
      }
    }

    v53 = *(a2 + 96);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = v53;
    goto LABEL_65;
  }

  if (v4)
  {
    v5 = *(a1 + 16);
    *(a1 + 8) = *(a2 + 8);
    v7 = (a2 + 16);
    v6 = *(a2 + 16);
    if (v5)
    {
      if (v6)
      {
        v8 = *(a2 + 24);
        *(a1 + 16) = v6;
        *(a1 + 24) = v8;

        goto LABEL_15;
      }
    }

    else if (v6)
    {
      v17 = *(a2 + 24);
      *(a1 + 16) = v6;
      *(a1 + 24) = v17;

      goto LABEL_15;
    }

    *(a1 + 16) = *v7;
LABEL_15:
    v24 = *(a2 + 32);
    if (*(a1 + 32))
    {
      if (v24)
      {
        v25 = *(a2 + 40);
        *(a1 + 32) = v24;
        *(a1 + 40) = v25;

        goto LABEL_22;
      }
    }

    else if (v24)
    {
      v26 = *(a2 + 40);
      *(a1 + 32) = v24;
      *(a1 + 40) = v26;

      goto LABEL_22;
    }

    *(a1 + 32) = *(a2 + 32);
LABEL_22:
    v27 = *(a2 + 48);
    if (*(a1 + 48))
    {
      if (v27)
      {
        v28 = *(a2 + 56);
        *(a1 + 48) = v27;
        *(a1 + 56) = v28;

        goto LABEL_29;
      }
    }

    else if (v27)
    {
      v29 = *(a2 + 56);
      *(a1 + 48) = v27;
      *(a1 + 56) = v29;

      goto LABEL_29;
    }

    *(a1 + 48) = *(a2 + 48);
LABEL_29:
    v30 = *(a2 + 64);
    if (*(a1 + 64))
    {
      if (v30)
      {
        v31 = *(a2 + 72);
        *(a1 + 64) = v30;
        *(a1 + 72) = v31;

        goto LABEL_36;
      }
    }

    else if (v30)
    {
      v32 = *(a2 + 72);
      *(a1 + 64) = v30;
      *(a1 + 72) = v32;

      goto LABEL_36;
    }

    *(a1 + 64) = *(a2 + 64);
LABEL_36:
    v33 = *(a2 + 104);
    if (*(a1 + 104))
    {
      v34 = (a1 + 80);
      if (v33)
      {
        __swift_assign_boxed_opaque_existential_0(v34, (a2 + 80));
        goto LABEL_43;
      }

      __swift_destroy_boxed_opaque_existential_1(v34);
    }

    else if (v33)
    {
      *(a1 + 104) = v33;
      (**(v33 - 8))(a1 + 80, a2 + 80);
      goto LABEL_43;
    }

    v35 = *(a2 + 96);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = v35;
LABEL_43:
    v36 = *(a1 + 128);
    *(a1 + 112) = *(a2 + 112);
    v37 = (a1 + 120);
    v39 = (a2 + 128);
    v38 = *(a2 + 128);
    v40 = (a2 + 120);
    if (v36 == 1)
    {
      if (v38 == 1)
      {
        v41 = *v40;
        *(a1 + 136) = *(a2 + 136);
        *v37 = v41;
LABEL_76:
        *(a1 + 144) = *(a2 + 144);

        goto LABEL_77;
      }

      *v37 = *v40;
      if (*v39)
      {
        v43 = *(a2 + 136);
        *(a1 + 128) = *v39;
LABEL_73:
        *(a1 + 136) = v43;

        goto LABEL_76;
      }
    }

    else
    {
      if (v38 == 1)
      {
        outlined destroy of Drag.SupplementaryConfiguration(a1 + 120);
        v42 = *(a2 + 136);
        *v37 = *v40;
        *(a1 + 136) = v42;
        goto LABEL_76;
      }

      *v37 = *v40;
      v44 = *v39;
      if (v36)
      {
        if (v44)
        {
          v45 = *(a2 + 136);
          *(a1 + 128) = v44;
          *(a1 + 136) = v45;

          goto LABEL_76;
        }
      }

      else if (v44)
      {
        v43 = *(a2 + 136);
        *(a1 + 128) = v44;
        goto LABEL_73;
      }
    }

    *(a1 + 128) = *v39;
    goto LABEL_76;
  }

  outlined destroy of _DraggingModifier(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  v11 = *(a2 + 40);
  v12 = *(a2 + 56);
  v13 = *(a2 + 72);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 72) = v13;
  *(a1 + 56) = v12;
  *(a1 + 40) = v11;
  v14 = *(a2 + 104);
  v15 = *(a2 + 120);
  v16 = *(a2 + 136);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 136) = v16;
  *(a1 + 120) = v15;
  *(a1 + 104) = v14;
LABEL_77:
  v58 = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 152) = v58;
  *(a1 + 161) = *(a2 + 161);
  return a1;
}

__n128 __swift_memcpy162_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 80);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t assignWithTake for DragReorderableChildModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a1 + 144))
  {
    v4 = *(a2 + 144);
    if (v4)
    {
      v6 = (a2 + 16);
      v5 = *(a2 + 16);
      v7 = *(a1 + 16);
      *(a1 + 8) = *(a2 + 8);
      if (v7)
      {
        if (v5)
        {
          v8 = *(a2 + 24);
          *(a1 + 16) = v5;
          *(a1 + 24) = v8;

          goto LABEL_12;
        }
      }

      else if (v5)
      {
        v9 = *(a2 + 24);
        *(a1 + 16) = v5;
        *(a1 + 24) = v9;
        goto LABEL_12;
      }

      *(a1 + 16) = *v6;
LABEL_12:
      v10 = *(a2 + 32);
      if (*(a1 + 32))
      {
        if (v10)
        {
          v11 = *(a2 + 40);
          *(a1 + 32) = v10;
          *(a1 + 40) = v11;

          goto LABEL_19;
        }
      }

      else if (v10)
      {
        v12 = *(a2 + 40);
        *(a1 + 32) = v10;
        *(a1 + 40) = v12;
        goto LABEL_19;
      }

      *(a1 + 32) = *(a2 + 32);
LABEL_19:
      v13 = *(a2 + 48);
      if (*(a1 + 48))
      {
        if (v13)
        {
          v14 = *(a2 + 56);
          *(a1 + 48) = v13;
          *(a1 + 56) = v14;

          goto LABEL_26;
        }
      }

      else if (v13)
      {
        v15 = *(a2 + 56);
        *(a1 + 48) = v13;
        *(a1 + 56) = v15;
        goto LABEL_26;
      }

      *(a1 + 48) = *(a2 + 48);
LABEL_26:
      v16 = *(a2 + 64);
      if (*(a1 + 64))
      {
        if (v16)
        {
          v17 = *(a2 + 72);
          *(a1 + 64) = v16;
          *(a1 + 72) = v17;

          goto LABEL_33;
        }
      }

      else if (v16)
      {
        v18 = *(a2 + 72);
        *(a1 + 64) = v16;
        *(a1 + 72) = v18;
        goto LABEL_33;
      }

      *(a1 + 64) = *(a2 + 64);
LABEL_33:
      if (*(a1 + 104))
      {
        __swift_destroy_boxed_opaque_existential_1(a1 + 80);
      }

      v19 = *(a2 + 96);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 96) = v19;
      v20 = *(a1 + 128);
      *(a1 + 112) = *(a2 + 112);
      v21 = (a1 + 120);
      if (v20 != 1)
      {
        v22 = *(a2 + 128);
        if (v22 != 1)
        {
          *v21 = *(a2 + 120);
          if (v20)
          {
            if (v22)
            {
              v24 = *(a2 + 136);
              *(a1 + 128) = v22;
              *(a1 + 136) = v24;

              goto LABEL_39;
            }
          }

          else if (v22)
          {
            v25 = *(a2 + 136);
            *(a1 + 128) = v22;
            *(a1 + 136) = v25;
            goto LABEL_39;
          }

          *(a1 + 128) = *(a2 + 128);
          goto LABEL_39;
        }

        outlined destroy of Drag.SupplementaryConfiguration(a1 + 120);
      }

      *v21 = *(a2 + 120);
      *(a1 + 136) = *(a2 + 136);
LABEL_39:
      *(a1 + 144) = v4;

      goto LABEL_40;
    }

    outlined destroy of _DraggingModifier(a1 + 8);
  }

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 8) = *(a2 + 8);
LABEL_40:
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 161) = *(a2 + 161);
  return a1;
}

uint64_t getEnumTagSinglePayload for DragReorderableChildModifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 162))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 144);
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

uint64_t storeEnumTagSinglePayload for DragReorderableChildModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 162) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 162) = 0;
    }

    if (a2)
    {
      *(result + 144) = a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<_ViewModifier_Content<ConditionalDraggingModifier>, _DraggingModifier>, _ViewModifier_Content<ConditionalDraggingModifier>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<_ViewModifier_Content<ConditionalDraggingModifier>, _DraggingModifier>, _ViewModifier_Content<ConditionalDraggingModifier>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<_ViewModifier_Content<ConditionalDraggingModifier>, _DraggingModifier>, _ViewModifier_Content<ConditionalDraggingModifier>> and conformance <> _ConditionalContent<A, B>)
  {
    type metadata accessor for _ConditionalContent<ModifiedContent<_ViewModifier_Content<ConditionalDraggingModifier>, _DraggingModifier>, _ViewModifier_Content<ConditionalDraggingModifier>>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>>, DragReorderableChildModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ConditionalDraggingModifier>, _DraggingModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<_ViewModifier_Content<ConditionalDraggingModifier>, _DraggingModifier>, lazy protocol witness table accessor for type _ViewModifier_Content<ConditionalDraggingModifier> and conformance _ViewModifier_Content<A>);
    lazy protocol witness table accessor for type _ViewModifier_Content<ConditionalDraggingModifier> and conformance _ViewModifier_Content<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<_ViewModifier_Content<ConditionalDraggingModifier>, _DraggingModifier>, _ViewModifier_Content<ConditionalDraggingModifier>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

void type metadata accessor for _ConditionalContent<ModifiedContent<_ViewModifier_Content<ConditionalDraggingModifier>, _DraggingModifier>, _ViewModifier_Content<ConditionalDraggingModifier>>()
{
  if (!lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<_ViewModifier_Content<ConditionalDraggingModifier>, _DraggingModifier>, _ViewModifier_Content<ConditionalDraggingModifier>>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<ConditionalDraggingModifier>, _DraggingModifier>();
    _s7SwiftUI19ShadowRowCollectionVyAA22TableDataSourceAdaptorVGMaTm_0(255, &lazy cache variable for type metadata for _ViewModifier_Content<ConditionalDraggingModifier>, lazy protocol witness table accessor for type ConditionalDraggingModifier and conformance ConditionalDraggingModifier, &type metadata for ConditionalDraggingModifier, MEMORY[0x1E697FDE8]);
    v0 = type metadata accessor for _ConditionalContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<_ViewModifier_Content<ConditionalDraggingModifier>, _DraggingModifier>, _ViewModifier_Content<ConditionalDraggingModifier>>);
    }
  }
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<ConditionalDraggingModifier>, _DraggingModifier>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<ConditionalDraggingModifier>, _DraggingModifier>)
  {
    _s7SwiftUI19ShadowRowCollectionVyAA22TableDataSourceAdaptorVGMaTm_0(255, &lazy cache variable for type metadata for _ViewModifier_Content<ConditionalDraggingModifier>, lazy protocol witness table accessor for type ConditionalDraggingModifier and conformance ConditionalDraggingModifier, &type metadata for ConditionalDraggingModifier, MEMORY[0x1E697FDE8]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<ConditionalDraggingModifier>, _DraggingModifier>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>>, DragReorderableChildModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<ConditionalDraggingModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<ConditionalDraggingModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<ConditionalDraggingModifier> and conformance _ViewModifier_Content<A>)
  {
    _s7SwiftUI19ShadowRowCollectionVyAA22TableDataSourceAdaptorVGMaTm_0(255, &lazy cache variable for type metadata for _ViewModifier_Content<ConditionalDraggingModifier>, lazy protocol witness table accessor for type ConditionalDraggingModifier and conformance ConditionalDraggingModifier, &type metadata for ConditionalDraggingModifier, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<ConditionalDraggingModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ReorderableLayout and conformance ReorderableLayout()
{
  result = lazy protocol witness table cache variable for type ReorderableLayout and conformance ReorderableLayout;
  if (!lazy protocol witness table cache variable for type ReorderableLayout and conformance ReorderableLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReorderableLayout and conformance ReorderableLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ReorderableLayout and conformance ReorderableLayout;
  if (!lazy protocol witness table cache variable for type ReorderableLayout and conformance ReorderableLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReorderableLayout and conformance ReorderableLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ReorderableLayout and conformance ReorderableLayout;
  if (!lazy protocol witness table cache variable for type ReorderableLayout and conformance ReorderableLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReorderableLayout and conformance ReorderableLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ReorderableLayout and conformance ReorderableLayout;
  if (!lazy protocol witness table cache variable for type ReorderableLayout and conformance ReorderableLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReorderableLayout and conformance ReorderableLayout);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DragReorderableChildModifier.MakeDragSourceProxy and conformance DragReorderableChildModifier.MakeDragSourceProxy()
{
  result = lazy protocol witness table cache variable for type DragReorderableChildModifier.MakeDragSourceProxy and conformance DragReorderableChildModifier.MakeDragSourceProxy;
  if (!lazy protocol witness table cache variable for type DragReorderableChildModifier.MakeDragSourceProxy and conformance DragReorderableChildModifier.MakeDragSourceProxy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DragReorderableChildModifier.MakeDragSourceProxy and conformance DragReorderableChildModifier.MakeDragSourceProxy);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DragReorderableChildModifier.ChildCoordinateSpace and conformance DragReorderableChildModifier.ChildCoordinateSpace()
{
  result = lazy protocol witness table cache variable for type DragReorderableChildModifier.ChildCoordinateSpace and conformance DragReorderableChildModifier.ChildCoordinateSpace;
  if (!lazy protocol witness table cache variable for type DragReorderableChildModifier.ChildCoordinateSpace and conformance DragReorderableChildModifier.ChildCoordinateSpace)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DragReorderableChildModifier.ChildCoordinateSpace and conformance DragReorderableChildModifier.ChildCoordinateSpace);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DragReorderableChildModifier.MakeDragSource and conformance DragReorderableChildModifier.MakeDragSource()
{
  result = lazy protocol witness table cache variable for type DragReorderableChildModifier.MakeDragSource and conformance DragReorderableChildModifier.MakeDragSource;
  if (!lazy protocol witness table cache variable for type DragReorderableChildModifier.MakeDragSource and conformance DragReorderableChildModifier.MakeDragSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DragReorderableChildModifier.MakeDragSource and conformance DragReorderableChildModifier.MakeDragSource);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DragReorderableChildModifier.ResponderFilter and conformance DragReorderableChildModifier.ResponderFilter()
{
  result = lazy protocol witness table cache variable for type DragReorderableChildModifier.ResponderFilter and conformance DragReorderableChildModifier.ResponderFilter;
  if (!lazy protocol witness table cache variable for type DragReorderableChildModifier.ResponderFilter and conformance DragReorderableChildModifier.ResponderFilter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DragReorderableChildModifier.ResponderFilter and conformance DragReorderableChildModifier.ResponderFilter);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for DragReorderableChildModifier.ResponderFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithCopy for DragReorderableChildModifier.ResponderFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithTake for DragReorderableChildModifier.ResponderFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

_OWORD *initializeWithCopy for DropPlaceholderListModifier.DropPlaceholderList(_OWORD *a1, _OWORD *a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = a2[4];
  a1[4] = v5;
  (**(v5 - 8))(a1 + 40, a2 + 40);
  a1[5] = a2[5];
  *(a1 + 89) = *(a2 + 89);
  return a1;
}

uint64_t assignWithCopy for DropPlaceholderListModifier.DropPlaceholderList(uint64_t a1, uint64_t a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  __swift_assign_boxed_opaque_existential_1((a1 + 40), (a2 + 40));
  v4 = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 80) = v4;
  v5 = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 96) = v5;
  return a1;
}

uint64_t assignWithTake for DropPlaceholderListModifier.DropPlaceholderList(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  __swift_destroy_boxed_opaque_existential_1(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v5;
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  return a1;
}

uint64_t getEnumTagSinglePayload for DropPlaceholderListModifier.DropPlaceholderList(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
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

uint64_t storeEnumTagSinglePayload for DropPlaceholderListModifier.DropPlaceholderList(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined init with copy of DefaultIndices<CountingIndexCollection<ShadowRowCollection<TableDataSourceAdaptor>>>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for _ViewList_ID._Views<EmptyCollection<_ViewList_ID>>()
{
  if (!lazy cache variable for type metadata for _ViewList_ID._Views<EmptyCollection<_ViewList_ID>>)
  {
    type metadata accessor for Binding<_DragReorderableView_DragState>(255, &lazy cache variable for type metadata for EmptyCollection<_ViewList_ID>, MEMORY[0x1E697E098], MEMORY[0x1E69E6C30]);
    lazy protocol witness table accessor for type EmptyCollection<_ViewList_ID> and conformance EmptyCollection<A>(&lazy protocol witness table cache variable for type EmptyCollection<_ViewList_ID> and conformance EmptyCollection<A>);
    lazy protocol witness table accessor for type EmptyCollection<_ViewList_ID> and conformance EmptyCollection<A>(&lazy protocol witness table cache variable for type EmptyCollection<_ViewList_ID> and conformance EmptyCollection<A>);
    v0 = type metadata accessor for _ViewList_ID._Views();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ViewList_ID._Views<EmptyCollection<_ViewList_ID>>);
    }
  }
}

void type metadata accessor for Binding<_DragReorderableView_DragState>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t lazy protocol witness table accessor for type EmptyCollection<_ViewList_ID> and conformance EmptyCollection<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Binding<_DragReorderableView_DragState>(255, &lazy cache variable for type metadata for EmptyCollection<_ViewList_ID>, MEMORY[0x1E697E098], MEMORY[0x1E69E6C30]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DropPlaceholderListModifier.DropPlaceholderList.IndexRange(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 18))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 17);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for DropPlaceholderListModifier.DropPlaceholderList.IndexRange(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 17) = a2 + 1;
    }
  }

  return result;
}

uint64_t thunk for @callee_guaranteed () -> (@error @owned Error)partial apply()
{
  return partial apply for thunk for @callee_guaranteed () -> (@error @owned Error)();
}

{
  return _ss5Error_pIgzo_ytsAA_pIegrzo_TRTA_0();
}

uint64_t DefaultGroupBoxStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = result;
  *(a1 + 24) = 0;
  return result;
}

uint64_t EnvironmentValues.disableGroupBoxPadding.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DisableGroupBoxPaddingKey>, &unk_1EFFBF710, &protocol witness table for DisableGroupBoxPaddingKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DisableGroupBoxPaddingKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DisableGroupBoxPaddingKey>, &unk_1EFFBF710, &protocol witness table for DisableGroupBoxPaddingKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DisableGroupBoxPaddingKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  return v2;
}

uint64_t View.disableGroupBoxPadding(_:)()
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

uint64_t key path getter for EnvironmentValues.disableGroupBoxPadding : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DisableGroupBoxPaddingKey>, &unk_1EFFBF710, &protocol witness table for DisableGroupBoxPaddingKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DisableGroupBoxPaddingKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DisableGroupBoxPaddingKey>, &unk_1EFFBF710, &protocol witness table for DisableGroupBoxPaddingKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DisableGroupBoxPaddingKey> and conformance EnvironmentPropertyKey<A>();
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.disableGroupBoxPadding : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DisableGroupBoxPaddingKey>, &unk_1EFFBF710, &protocol witness table for DisableGroupBoxPaddingKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<DisableGroupBoxPaddingKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<GroupBox<GroupBoxStyleConfiguration.Label, ModifiedContent<GroupBoxStyleConfiguration.Content, GroupBoxStyleModifier<DefaultGroupBoxStyle>>>, GroupBoxStyleModifier<PhoneIdiomGroupBoxStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<GroupBox<GroupBoxStyleConfiguration.Label, ModifiedContent<GroupBoxStyleConfiguration.Content, GroupBoxStyleModifier<DefaultGroupBoxStyle>>>, GroupBoxStyleModifier<PhoneIdiomGroupBoxStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<GroupBox<GroupBoxStyleConfiguration.Label, ModifiedContent<GroupBoxStyleConfiguration.Content, GroupBoxStyleModifier<DefaultGroupBoxStyle>>>, GroupBoxStyleModifier<PhoneIdiomGroupBoxStyle>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<GroupBox<GroupBoxStyleConfiguration.Label, ModifiedContent<GroupBoxStyleConfiguration.Content, GroupBoxStyleModifier<DefaultGroupBoxStyle>>>, GroupBoxStyleModifier<PhoneIdiomGroupBoxStyle>>();
    lazy protocol witness table accessor for type GroupBox<GroupBoxStyleConfiguration.Label, ModifiedContent<GroupBoxStyleConfiguration.Content, GroupBoxStyleModifier<DefaultGroupBoxStyle>>> and conformance GroupBox<A, B>(&lazy protocol witness table cache variable for type GroupBox<GroupBoxStyleConfiguration.Label, ModifiedContent<GroupBoxStyleConfiguration.Content, GroupBoxStyleModifier<DefaultGroupBoxStyle>>> and conformance GroupBox<A, B>, type metadata accessor for GroupBox<GroupBoxStyleConfiguration.Label, ModifiedContent<GroupBoxStyleConfiguration.Content, GroupBoxStyleModifier<DefaultGroupBoxStyle>>>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<GroupBox<GroupBoxStyleConfiguration.Label, ModifiedContent<GroupBoxStyleConfiguration.Content, GroupBoxStyleModifier<DefaultGroupBoxStyle>>>, GroupBoxStyleModifier<PhoneIdiomGroupBoxStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<GroupBox<GroupBoxStyleConfiguration.Label, ModifiedContent<GroupBoxStyleConfiguration.Content, GroupBoxStyleModifier<DefaultGroupBoxStyle>>>, GroupBoxStyleModifier<PhoneIdiomGroupBoxStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<GroupBox<GroupBoxStyleConfiguration.Label, ModifiedContent<GroupBoxStyleConfiguration.Content, GroupBoxStyleModifier<DefaultGroupBoxStyle>>>, GroupBoxStyleModifier<PhoneIdiomGroupBoxStyle>>)
  {
    type metadata accessor for GroupBox<GroupBoxStyleConfiguration.Label, ModifiedContent<GroupBoxStyleConfiguration.Content, GroupBoxStyleModifier<DefaultGroupBoxStyle>>>();
    type metadata accessor for GroupBoxStyleModifier<DefaultGroupBoxStyle>(255, &lazy cache variable for type metadata for GroupBoxStyleModifier<PhoneIdiomGroupBoxStyle>, lazy protocol witness table accessor for type PhoneIdiomGroupBoxStyle and conformance PhoneIdiomGroupBoxStyle);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<GroupBox<GroupBoxStyleConfiguration.Label, ModifiedContent<GroupBoxStyleConfiguration.Content, GroupBoxStyleModifier<DefaultGroupBoxStyle>>>, GroupBoxStyleModifier<PhoneIdiomGroupBoxStyle>>);
    }
  }
}

void type metadata accessor for GroupBox<GroupBoxStyleConfiguration.Label, ModifiedContent<GroupBoxStyleConfiguration.Content, GroupBoxStyleModifier<DefaultGroupBoxStyle>>>()
{
  if (!lazy cache variable for type metadata for GroupBox<GroupBoxStyleConfiguration.Label, ModifiedContent<GroupBoxStyleConfiguration.Content, GroupBoxStyleModifier<DefaultGroupBoxStyle>>>)
  {
    type metadata accessor for ModifiedContent<GroupBoxStyleConfiguration.Content, GroupBoxStyleModifier<DefaultGroupBoxStyle>>();
    lazy protocol witness table accessor for type ModifiedContent<GroupBoxStyleConfiguration.Content, GroupBoxStyleModifier<DefaultGroupBoxStyle>> and conformance <> ModifiedContent<A, B>();
    v0 = type metadata accessor for GroupBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for GroupBox<GroupBoxStyleConfiguration.Label, ModifiedContent<GroupBoxStyleConfiguration.Content, GroupBoxStyleModifier<DefaultGroupBoxStyle>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<GroupBoxStyleConfiguration.Content, GroupBoxStyleModifier<DefaultGroupBoxStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<GroupBoxStyleConfiguration.Content, GroupBoxStyleModifier<DefaultGroupBoxStyle>>)
  {
    type metadata accessor for GroupBoxStyleModifier<DefaultGroupBoxStyle>(255, &lazy cache variable for type metadata for GroupBoxStyleModifier<DefaultGroupBoxStyle>, lazy protocol witness table accessor for type DefaultGroupBoxStyle and conformance DefaultGroupBoxStyle);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<GroupBoxStyleConfiguration.Content, GroupBoxStyleModifier<DefaultGroupBoxStyle>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type DefaultGroupBoxStyle and conformance DefaultGroupBoxStyle()
{
  result = lazy protocol witness table cache variable for type DefaultGroupBoxStyle and conformance DefaultGroupBoxStyle;
  if (!lazy protocol witness table cache variable for type DefaultGroupBoxStyle and conformance DefaultGroupBoxStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultGroupBoxStyle and conformance DefaultGroupBoxStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<GroupBoxStyleConfiguration.Content, GroupBoxStyleModifier<DefaultGroupBoxStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<GroupBoxStyleConfiguration.Content, GroupBoxStyleModifier<DefaultGroupBoxStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<GroupBoxStyleConfiguration.Content, GroupBoxStyleModifier<DefaultGroupBoxStyle>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<GroupBoxStyleConfiguration.Content, GroupBoxStyleModifier<DefaultGroupBoxStyle>>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<GroupBoxStyleConfiguration.Content, GroupBoxStyleModifier<DefaultGroupBoxStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for GroupBoxStyleModifier<DefaultGroupBoxStyle>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for GroupBoxStyleModifier();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type PhoneIdiomGroupBoxStyle and conformance PhoneIdiomGroupBoxStyle()
{
  result = lazy protocol witness table cache variable for type PhoneIdiomGroupBoxStyle and conformance PhoneIdiomGroupBoxStyle;
  if (!lazy protocol witness table cache variable for type PhoneIdiomGroupBoxStyle and conformance PhoneIdiomGroupBoxStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneIdiomGroupBoxStyle and conformance PhoneIdiomGroupBoxStyle);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type GroupBox<GroupBoxStyleConfiguration.Label, ModifiedContent<GroupBoxStyleConfiguration.Content, GroupBoxStyleModifier<DefaultGroupBoxStyle>>> and conformance GroupBox<A, B>(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type _TraitWritingModifier<FormBorderlessSectionTraitKey> and conformance _TraitWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _TraitWritingModifier<FormBorderlessSectionTraitKey> and conformance _TraitWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _TraitWritingModifier<FormBorderlessSectionTraitKey> and conformance _TraitWritingModifier<A>)
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<FormBorderlessSectionTraitKey>, &type metadata for FormBorderlessSectionTraitKey, &protocol witness table for FormBorderlessSectionTraitKey, MEMORY[0x1E697FDB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _TraitWritingModifier<FormBorderlessSectionTraitKey> and conformance _TraitWritingModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<DisableGroupBoxPaddingKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<DisableGroupBoxPaddingKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<DisableGroupBoxPaddingKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DisableGroupBoxPaddingKey>, &unk_1EFFBF710, &protocol witness table for DisableGroupBoxPaddingKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<DisableGroupBoxPaddingKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void LimitedAvailabilityPrintContentStorageBase.__deallocating_deinit()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

uint64_t registerAppRootModifier<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for appRootViewWrappers != -1)
  {
    swift_once();
  }

  (*(v6 + 16))(&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  v9 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  (*(v6 + 32))(v10 + v9, v8, a2);
  swift_beginAccess();
  rawValue = appRootViewWrappers._rawValue;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  appRootViewWrappers._rawValue = rawValue;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, rawValue[2] + 1, 1, rawValue);
    appRootViewWrappers._rawValue = rawValue;
  }

  v14 = rawValue[2];
  v13 = rawValue[3];
  if (v14 >= v13 >> 1)
  {
    rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, rawValue);
  }

  rawValue[2] = v14 + 1;
  v15 = &rawValue[2 * v14];
  v15[4] = partial apply for closure #1 in registerAppRootModifier<A>(_:);
  v15[5] = v10;
  appRootViewWrappers._rawValue = rawValue;
  return swift_endAccess();
}

uint64_t closure #1 in registerAppRootModifier<A>(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x1E6981910];
  v11 = type metadata accessor for ModifiedContent();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v17 = *a1;
  v13 = MEMORY[0x1E6981900];
  MEMORY[0x18D00A570](a2, v10, a3, MEMORY[0x1E6981900], v12);
  v15 = v13;
  v16 = a4;
  swift_getWitnessTable();
  result = AnyView.init<A>(_:)();
  *a5 = result;
  return result;
}

SwiftUI::FrameResizePosition_optional __swiftcall FrameResizePosition.init(rawValue:)(Swift::Int8 rawValue)
{
  result.value = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type FrameResizePosition and conformance FrameResizePosition()
{
  result = lazy protocol witness table cache variable for type FrameResizePosition and conformance FrameResizePosition;
  if (!lazy protocol witness table cache variable for type FrameResizePosition and conformance FrameResizePosition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FrameResizePosition and conformance FrameResizePosition);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FrameResizeDirection.Set and conformance FrameResizeDirection.Set()
{
  result = lazy protocol witness table cache variable for type FrameResizeDirection.Set and conformance FrameResizeDirection.Set;
  if (!lazy protocol witness table cache variable for type FrameResizeDirection.Set and conformance FrameResizeDirection.Set)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FrameResizeDirection.Set and conformance FrameResizeDirection.Set);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FrameResizeDirection.Set and conformance FrameResizeDirection.Set;
  if (!lazy protocol witness table cache variable for type FrameResizeDirection.Set and conformance FrameResizeDirection.Set)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FrameResizeDirection.Set and conformance FrameResizeDirection.Set);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FrameResizeDirection.Set and conformance FrameResizeDirection.Set;
  if (!lazy protocol witness table cache variable for type FrameResizeDirection.Set and conformance FrameResizeDirection.Set)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FrameResizeDirection.Set and conformance FrameResizeDirection.Set);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FrameResizeDirection.Set and conformance FrameResizeDirection.Set;
  if (!lazy protocol witness table cache variable for type FrameResizeDirection.Set and conformance FrameResizeDirection.Set)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FrameResizeDirection.Set and conformance FrameResizeDirection.Set);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FrameResizeDirection and conformance FrameResizeDirection()
{
  result = lazy protocol witness table cache variable for type FrameResizeDirection and conformance FrameResizeDirection;
  if (!lazy protocol witness table cache variable for type FrameResizeDirection and conformance FrameResizeDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FrameResizeDirection and conformance FrameResizeDirection);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [FrameResizePosition] and conformance [A](unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for [FrameResizePosition](255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for [FrameResizePosition](uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Array();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for FrameResizePosition(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FrameResizePosition(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t static ViewGraphBridgePropertiesModifier._makeInputs(modifier:inputs:)(int *a1, uint64_t a2)
{
  v20[3] = *MEMORY[0x1E69E9840];
  v3 = *a1;
  lazy protocol witness table accessor for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput();
  v19[0] = v3;
  if (static UserDefaultKeyedFeature.isEnabled.getter())
  {
    type metadata accessor for _GraphValue();
    v4 = _GraphValue.value.getter();
    lazy protocol witness table accessor for type _GraphInputs.ViewGraphBridgePropertiesKey and conformance _GraphInputs.ViewGraphBridgePropertiesKey();
    v5 = PropertyList.subscript.getter();
    v6 = v20[0];
    LODWORD(v20[0]) = v4;
    *(v20 + 4) = v6;
    MEMORY[0x1EEE9AC00](v5);
    updated = type metadata accessor for UpdateProperties();
    WitnessTable = swift_getWitnessTable();
    type metadata accessor for Attribute<PlatformItemList>(0, &lazy cache variable for type metadata for Attribute<ViewGraphBridgeProperties>);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v20, closure #1 in Attribute.init<A>(_:)partial apply, v16, updated, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
    v20[0] = AGCreateWeakAttribute();
    return PropertyList.subscript.setter();
  }

  else
  {
    type metadata accessor for _GraphValue();
    v10 = _GraphValue.value.getter();
    v11 = *(a2 + 16);
    v12 = swift_beginAccess();
    v13 = *(v11 + 16);
    v19[0] = v10;
    v19[1] = v13;
    MEMORY[0x1EEE9AC00](v12);
    updated = type metadata accessor for UpdateEnvironment();
    WitnessTable = swift_getWitnessTable();
    type metadata accessor for Attribute<PlatformItemList>(0, &lazy cache variable for type metadata for Attribute<EnvironmentValues>);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v19, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_0, v16, updated, MEMORY[0x1E69E73E0], v14, MEMORY[0x1E69E7410], v15);
    return _GraphInputs.environment.setter();
  }
}

uint64_t UpdateProperties.properties.getter()
{
  WeakValue = AGGraphGetWeakValue();
  if (!WeakValue)
  {
    return 0;
  }

  v1 = *WeakValue;

  return v1;
}

uint64_t UpdateProperties.value.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  updated = UpdateProperties.properties.getter();
  if (v9)
  {
    *&v12 = updated;
    *(&v12 + 1) = v8;
    v13 = v9;
    v14 = v10;
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v12 = static ViewGraphBridgeProperties.defaultValue;
    v13 = qword_1ED5A7320;
    v14 = unk_1ED5A7328;
  }

  (*(a4 + 16))(a1, &v12, a3, a4);
  return v12;
}

uint64_t protocol witness for Rule.value.getter in conformance UpdateProperties<A>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = UpdateProperties.value.getter(*v2, *(v2 + 8), *(a1 + 16), *(a1 + 24));
  *a2 = result;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance UpdateProperties<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE9B8](a1, WitnessTable);
}

uint64_t UpdateEnvironment.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  _DiscreteSymbolEffectModifier.EffectEnvironment.environment.getter(a4);
  v8 = a4[1];
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.BridgePropertiesEnvironmentKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.BridgePropertiesEnvironmentKey> and conformance EnvironmentPropertyKey<A>();
  if (v8)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  (*(a3 + 16))(a1, &v10, a2, a3);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.BridgePropertiesEnvironmentKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.BridgePropertiesEnvironmentKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (v8)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance UpdateEnvironment<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE9B8](a1, WitnessTable);
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.BridgePropertiesEnvironmentKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.BridgePropertiesEnvironmentKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.BridgePropertiesEnvironmentKey>);
    }
  }
}

uint64_t PlatformItemListReader.init(flags:content:source:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;

  static Alignment.center.getter();
  type metadata accessor for PlatformItemListReader();
  ZStack.init(alignment:content:)();
}

uint64_t PlatformItemList.modify(_:)(uint64_t result)
{
  v2 = *v1;
  v3 = *(*v1 + 2);
  if (v3)
  {
    v4 = result;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_9:
      v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
    }

    for (i = 0; i != v3; ++i)
    {
      if (i >= *(v2 + 2))
      {
        __break(1u);
        goto LABEL_9;
      }

      v6 = *(type metadata accessor for PlatformItemList.Item() - 8);
      result = v4(&v2[((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * i]);
    }

    *v1 = v2;
  }

  return result;
}

uint64_t View.platformItemSystemType(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 80);
  v16[4] = *(a1 + 64);
  v16[5] = v6;
  v17 = *(a1 + 96);
  v7 = *(a1 + 16);
  v16[0] = *a1;
  v16[1] = v7;
  v8 = *(a1 + 48);
  v16[2] = *(a1 + 32);
  v16[3] = v8;
  v9 = swift_allocObject();
  v10 = *(a1 + 80);
  *(v9 + 80) = *(a1 + 64);
  *(v9 + 96) = v10;
  *(v9 + 112) = *(a1 + 96);
  v11 = *(a1 + 16);
  *(v9 + 16) = *a1;
  *(v9 + 32) = v11;
  v12 = *(a1 + 48);
  *(v9 + 48) = *(a1 + 32);
  *(v9 + 64) = v12;
  v13 = outlined init with copy of PlatformItemList.Item.SystemItem?(v16, v15, &lazy cache variable for type metadata for PlatformItemList.Item.SystemItem?, &type metadata for PlatformItemList.Item.SystemItem);
  View.transformPlatformItemList<A>(_:_:)(v13, partial apply for closure #1 in View.platformItemSystemType(_:), v9, a2, &type metadata for LayoutPlatformItemListFlags, a3);
}

uint64_t specialized closure #1 in PlatformItemList.containerSelectionBehavior.getter(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result + 40;
    do
    {
      v3 = *(v2 - 8);

      v3(v4);

      v2 += 16;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t specialized closure #3 in PlatformItemList.containerSelectionBehavior.getter(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v4 = a2 + 40;
  LOBYTE(result) = 1;
  v6 = a1 & 1;
  do
  {
    if (result)
    {
      v7 = *(v4 - 8);
      BYTE1(v8) = v6;

      v7(&v8, &v8 + 1);

      result = v8;
    }

    else
    {
      result = 0;
    }

    v4 += 16;
    --v2;
  }

  while (v2);
  return result;
}

void *UIItemHostingView.__allocating_init(rootView:)(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = specialized _UIHostingView.init(rootView:)(a1);
  (*(*(*(v2 + 224) - 8) + 8))(a1);
  return v5;
}

id UIItemHostingView.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for UIItemHostingView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id UIItemHostingView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UIItemHostingView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t View.onPlatformContainerSecondaryNavigation(value:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  outlined init with copy of PlatformItemList.Item.SystemItem?(a1, v10, &lazy cache variable for type metadata for AnyNavigationLinkPresentedValue?, &type metadata for AnyNavigationLinkPresentedValue);
  v11 = a2;
  v12 = a3;
  KeyPath = swift_getKeyPath();
  v14 = 0;
  outlined copy of AppIntentExecutor?(a2);
  MEMORY[0x18D00A570](v10, a4, &type metadata for OnPlatformContainerSecondaryNavigationModifier, a5);
  return outlined destroy of OnPlatformContainerSecondaryNavigationModifier(v10);
}

void closure #1 in View.forcePlatformItem()(uint64_t a1)
{
  v2 = type metadata accessor for PlatformItemList.Item();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v33 - v7;
  v9 = *a1;
  if (!*(*a1 + 16))
  {
    v34 = v6;
    _s7SwiftUI5ImageVAAE8ResolvedVSgWOi0_(&v36);
    memset(v35, 0, sizeof(v35));
    v8[32] = 0;
    *(v8 + 3) = 0;
    *(v8 + 8) = 0u;
    *(v8 + 5) = -1;
    v8[56] = 1;
    v10 = v45;
    *(v8 + 12) = v44;
    *(v8 + 13) = v10;
    *(v8 + 14) = v46[0];
    *(v8 + 235) = *(v46 + 11);
    v11 = v41;
    *(v8 + 8) = v40;
    *(v8 + 9) = v11;
    v12 = v43;
    *(v8 + 10) = v42;
    *(v8 + 11) = v12;
    v13 = v37;
    *(v8 + 4) = v36;
    *(v8 + 5) = v13;
    v14 = v39;
    *(v8 + 6) = v38;
    *(v8 + 7) = v14;
    *(v8 + 19) = 0u;
    *(v8 + 20) = 0u;
    *(v8 + 17) = 0u;
    *(v8 + 18) = 0u;
    *(v8 + 16) = 0u;
    *(v8 + 42) = 0x3FFFFFFFCLL;
    *(v8 + 344) = 0u;
    *(v8 + 360) = 0u;
    *(v8 + 376) = 0u;
    *(v8 + 392) = 0u;
    *(v8 + 51) = 0;
    *(v8 + 52) = 1;
    *(v8 + 424) = 0u;
    *(v8 + 440) = 0u;
    *(v8 + 456) = 0u;
    v8[472] = 0;
    *(v8 + 60) = 0;
    *(v8 + 488) = 0u;
    v8[504] = 0;
    *(v8 + 32) = 0u;
    v8[528] = 4;
    *(v8 + 536) = 0u;
    *(v8 + 552) = 0u;
    *(v8 + 568) = 0u;
    *(v8 + 584) = 0u;
    *(v8 + 600) = 0u;
    *(v8 + 616) = 0u;
    *(v8 + 632) = 0u;
    *(v8 + 648) = 0u;
    *(v8 + 664) = 0u;
    *(v8 + 680) = 0u;
    *(v8 + 696) = 0u;
    *(v8 + 712) = 0u;
    *(v8 + 728) = 0u;
    *(v8 + 744) = 0u;
    *(v8 + 760) = 0u;
    *(v8 + 776) = 0u;
    *(v8 + 792) = 0u;
    *(v8 + 808) = 0u;
    *(v8 + 824) = 0u;
    *(v8 + 840) = 0u;
    *(v8 + 107) = 0;
    *(v8 + 108) = 1;
    *(v8 + 872) = 0u;
    *(v8 + 888) = 0u;
    *(v8 + 904) = 0u;
    *(v8 + 920) = 0u;
    *(v8 + 936) = 0u;
    *(v8 + 476) = 1283;
    v8[954] = 3;
    v15 = v2[28];
    v16 = type metadata accessor for CommandOperation();
    (*(*(v16 - 8) + 56))(&v8[v15], 1, 1, v16);
    v8[v2[29]] = 0;
    v8[v2[30]] = 0;
    v8[v2[31]] = 2;
    v8[v2[32]] = 0;
    v8[v2[33]] = 0;
    v17 = v2[34];
    *v8 = 0;
    v18 = *(v8 + 13);
    v47[8] = *(v8 + 12);
    v47[9] = v18;
    v48[0] = *(v8 + 14);
    *(v48 + 11) = *(v8 + 235);
    v19 = *(v8 + 9);
    v47[4] = *(v8 + 8);
    v47[5] = v19;
    v20 = *(v8 + 11);
    v47[6] = *(v8 + 10);
    v47[7] = v20;
    v21 = *(v8 + 5);
    v47[0] = *(v8 + 4);
    v47[1] = v21;
    v22 = *(v8 + 7);
    v47[2] = *(v8 + 6);
    v47[3] = v22;
    _s7SwiftUI16PlatformItemListV0D0V13AccessibilityVSgWOhTm_0(v47, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730]);
    v23 = v45;
    *(v8 + 12) = v44;
    *(v8 + 13) = v23;
    *(v8 + 14) = v46[0];
    *(v8 + 235) = *(v46 + 11);
    v24 = v41;
    *(v8 + 8) = v40;
    *(v8 + 9) = v24;
    v25 = v43;
    *(v8 + 10) = v42;
    *(v8 + 11) = v25;
    v26 = v37;
    *(v8 + 4) = v36;
    *(v8 + 5) = v26;
    v27 = v39;
    *(v8 + 6) = v38;
    *(v8 + 7) = v27;
    v28 = *(v8 + 456);
    v49[2] = *(v8 + 440);
    v49[3] = v28;
    v50 = v8[472];
    v29 = *(v8 + 424);
    v49[0] = *(v8 + 408);
    v49[1] = v29;
    _s7SwiftUI16PlatformItemListV0D0V13AccessibilityVSgWOhTm_0(v49, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);
    *(v8 + 408) = xmmword_18CD633F0;
    *(v8 + 424) = 0u;
    *(v8 + 440) = 0u;
    *(v8 + 456) = 0u;
    v8[472] = 0;
    outlined assign with take of PlatformItemList.Item.Accessibility?(v35, (v8 + 536), &lazy cache variable for type metadata for PlatformItemList.Item.Accessibility?, &type metadata for PlatformItemList.Item.Accessibility);
    *&v8[v17] = 0;
    *(v8 + 6) = 0;
    outlined init with copy of PlatformItemList.Item(v8, v4);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9[2] + 1, 1, v9);
    }

    v31 = v9[2];
    v30 = v9[3];
    v32 = v34;
    if (v31 >= v30 >> 1)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v30 > 1, v31 + 1, 1, v9);
    }

    v9[2] = v31 + 1;
    outlined init with take of PlatformItemList.Item(v4, v9 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v31);
    *a1 = v9;
    _s7SwiftUI16CommandOperationVWOhTm_0(v8, type metadata accessor for PlatformItemList.Item);
  }
}

void *closure #1 in View.platformItemSelector(_:)(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    v3 = *result;
    v4 = *(*result + 16);
    if (v4)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
LABEL_12:
        v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
      }

      for (i = 0; i != v4; ++i)
      {
        if (i >= v3[2])
        {
          __break(1u);
          goto LABEL_12;
        }

        v7 = type metadata accessor for PlatformItemList.Item();
        v8 = *(v7 - 8);
        result = (v7 - 8);
        v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * i;
        if (*(v9 + 416) != 1)
        {
          *(v9 + 464) = a2;
        }
      }

      *v2 = v3;
    }
  }

  return result;
}

uint64_t View.platformItemLabel<A, B>(_:flags:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v27[1] = a5;
  v27[2] = a7;
  v27[3] = a6;
  v13 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = v27 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v22);
  (*(v17 + 16))(v20, a1, a3);
  (*(v13 + 16))(v15, v27[0], a2);
  return PlatformItemLabelView.init(flags:label:content:)(v24, v20, v15, a4, a3, a2, a8);
}

uint64_t PlatformItemLabelView.init(flags:label:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a4 - 8) + 32))(a7, a1, a4);
  v12 = type metadata accessor for PlatformItemLabelView();
  (*(*(a5 - 8) + 32))(a7 + *(v12 + 68), a2, a5);
  return (*(*(a6 - 8) + 32))(a7 + *(v12 + 72), a3, a6);
}

uint64_t closure #1 in View.platformItemSystemType(_:)(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2 >> 2 != 0xFFFFFFFF)
  {
    v4 = *(a2 + 16);
    v35 = *a2;
    v36 = v4;
    v5 = *(a2 + 56);
    v31 = *(a2 + 40);
    v32 = v5;
    v6 = *(a2 + 88);
    v33 = *(a2 + 72);
    v34 = v6;
    v7 = *result;
    v8 = *(*result + 16);
    if (v8)
    {
      v25 = result;
      v9 = *(a2 + 80);
      v29[4] = *(a2 + 64);
      v29[5] = v9;
      v30 = *(a2 + 96);
      v10 = *(a2 + 16);
      v29[0] = *a2;
      v29[1] = v10;
      v11 = *(a2 + 48);
      v29[2] = *(a2 + 32);
      v29[3] = v11;
      outlined init with copy of PlatformItemList.Item.SystemItem(v29, v27);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if (v7[2])
        {
          goto LABEL_5;
        }
      }

      else
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
        if (v7[2])
        {
LABEL_5:
          v12 = 0;
          v13 = *(type metadata accessor for PlatformItemList.Item() - 8);
          v14 = *(v13 + 72);
          v15 = v7 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + 304;
          do
          {
            v16 = *v15;
            v17 = *(v15 + 16);
            v27[2] = *(v15 + 32);
            v27[0] = v16;
            v27[1] = v17;
            v18 = *(v15 + 48);
            v19 = *(v15 + 64);
            v20 = *(v15 + 80);
            v28 = *(v15 + 96);
            v27[4] = v19;
            v27[5] = v20;
            v27[3] = v18;
            v21 = v36;
            *v15 = v35;
            *(v15 + 16) = v21;
            *(v15 + 32) = v2;
            v22 = v31;
            v23 = v32;
            v24 = v33;
            *(v15 + 88) = v34;
            *(v15 + 72) = v24;
            *(v15 + 56) = v23;
            *(v15 + 40) = v22;
            outlined init with copy of PlatformItemList.Item.SystemItem?(a2, v26, &lazy cache variable for type metadata for PlatformItemList.Item.SystemItem?, &type metadata for PlatformItemList.Item.SystemItem);
            _s7SwiftUI16PlatformItemListV0D0V13AccessibilityVSgWOhTm_0(v27, &lazy cache variable for type metadata for PlatformItemList.Item.SystemItem?, &type metadata for PlatformItemList.Item.SystemItem);
            if (v8 - 1 == v12)
            {
              goto LABEL_9;
            }

            ++v12;
            v15 += v14;
          }

          while (v12 < v7[2]);
        }
      }

      __break(1u);
LABEL_9:
      result = _s7SwiftUI16PlatformItemListV0D0V13AccessibilityVSgWOhTm_0(a2, &lazy cache variable for type metadata for PlatformItemList.Item.SystemItem?, &type metadata for PlatformItemList.Item.SystemItem);
      *v25 = v7;
    }
  }

  return result;
}

double protocol witness for ViewModifier.body(content:) in conformance PlatformItemListContentModifier@<D0>(uint64_t a1@<X8>)
{
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a1 = v3;
  *(a1 + 8) = v4 & 1;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6 & 1;
  result = *&v7;
  *(a1 + 32) = v7;
  return result;
}

uint64_t closure #1 in static MergePlatformItemsView._makeView(view:inputs:)(uint64_t a1, uint64_t a2)
{
  v7[2] = type metadata accessor for MergePlatformItemsView();
  v7[3] = a2;
  v4 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, closure #1 in static PointerOffset.of(_:)partial apply, v7, a2, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7[5];
}

uint64_t closure #1 in OnPlatformContainerSecondaryNavigationModifier.body(content:)(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for PlatformItemList.Item();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  PlatformItemList.mergedContentItem.getter(*a1, &v16 - v9);

  outlined init with copy of PlatformItemList.Item.SystemItem?(a2, v17, &lazy cache variable for type metadata for AnyNavigationLinkPresentedValue?, &type metadata for AnyNavigationLinkPresentedValue);
  v11 = 0;
  v12 = 0;
  if (specialized Environment.wrappedValue.getter(*(a2 + 56), *(a2 + 64)))
  {
    v11 = *(a2 + 40);
    v12 = *(a2 + 48);
    outlined copy of AppIntentExecutor?(v11);
  }

  v19[0] = v17[0];
  v19[1] = v17[1];
  v20 = v18;
  v21 = v11;
  v22 = v12;
  outlined assign with take of PlatformItemList.Item.Accessibility?(v19, (v10 + 840), &lazy cache variable for type metadata for PlatformItemList.Item.SecondaryNavigationBehavior?, &type metadata for PlatformItemList.Item.SecondaryNavigationBehavior);
  outlined init with copy of PlatformItemList.Item(v10, v7);
  _s7SwiftUI16CommandOperationVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PlatformItemList.Item>, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6F90]);
  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_18CD63400;
  outlined init with take of PlatformItemList.Item(v7, v14 + v13);
  *a1 = v14;
  return _s7SwiftUI16CommandOperationVWOhTm_0(v10, type metadata accessor for PlatformItemList.Item);
}

__n128 protocol witness for ViewModifier.body(content:) in conformance OnPlatformContainerSecondaryNavigationModifier@<Q0>(uint64_t (**a1)(uint64_t *a1)@<X8>)
{
  outlined init with copy of OnPlatformContainerSecondaryNavigationModifier(v1, v6);
  v3 = swift_allocObject();
  v4 = v6[3];
  *(v3 + 48) = v6[2];
  *(v3 + 64) = v4;
  *(v3 + 80) = v7;
  result = v6[1];
  *(v3 + 16) = v6[0];
  *(v3 + 32) = result;
  *a1 = partial apply for closure #1 in OnPlatformContainerSecondaryNavigationModifier.body(content:);
  a1[1] = v3;
  return result;
}

uint64_t closure #1 in PlatformItemListReader.init(flags:content:source:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - v15;
  v17(v14);
  static ViewBuilder.buildExpression<A>(_:)(v12, a5, a8);
  v18 = *(v10 + 8);
  v18(v12, a5);
  static ViewBuilder.buildExpression<A>(_:)(v16, a5, a8);
  return (v18)(v16, a5);
}

uint64_t static PlatformItemListReader._makeView(view:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v40 = a9;
  v82 = *MEMORY[0x1E69E9840];
  v14 = *a1;
  v15 = a2[1];
  v79 = *a2;
  v80 = v15;
  v81 = a2[2];
  v16 = *(a2 + 6);
  v17 = *(a2 + 14);
  v46 = *(a2 + 60);
  v47 = *(a2 + 76);
  v48 = a3;
  v49 = a4;
  v50 = a5;
  v51 = a6;
  v52 = a7;
  v53 = a8;
  LODWORD(v35) = v14;
  *&v73 = a3;
  *(&v73 + 1) = a4;
  *&v74 = a5;
  *(&v74 + 1) = a6;
  v37 = a7;
  *&v75 = a7;
  *(&v75 + 1) = a8;
  v36 = type metadata accessor for PlatformItemListReader();
  v18 = type metadata accessor for _GraphValue();
  v42 = a5;
  v38 = a8;
  type metadata accessor for ZStack();
  v34 = v18;
  _GraphValue.subscript.getter();
  type metadata accessor for _GraphValue();
  LODWORD(v33) = _GraphValue.value.getter();
  v69 = v79;
  v70 = v80;
  v71 = v81;
  *v72 = v16;
  v41 = v17;
  *&v72[8] = v17;
  *&v72[12] = v46;
  *&v72[28] = v47;
  _ViewInputs.withoutGeometryDependencies.getter();
  PreferenceKeys.init()();
  *&v67[0] = v79;
  v32[1] = type metadata accessor for GraphHost();
  MEMORY[0x18D00B7D0]();
  LOBYTE(v61) = 0;
  GraphHost.intern<A>(_:for:id:)();

  PreferencesInputs.init(hostKeys:)();

  *&v76 = v79;
  DWORD2(v76) = DWORD2(v79);
  if (((*(a6 + 8))(a3, a6) & 0x10) != 0)
  {
    *&v69 = v16;
    DWORD2(v69) = v41;
    if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
    {
      PreferenceKeys.add(_:)();
    }
  }

  v39 = v16;
  _ViewInputs.addPlatformItemListKey<A>(flags:editOperation:)(a3, 0, a3, a6);
  LOBYTE(v69) = 1;
  lazy protocol witness table accessor for type IsPlatformItemListSourceInput and conformance IsPlatformItemListSourceInput();
  PropertyList.subscript.setter();
  _GraphValue.init(_:)();
  v67[2] = v75;
  v67[3] = v76;
  v67[4] = v77;
  v68 = v78;
  v67[0] = v73;
  v67[1] = v74;
  v63 = v75;
  v64 = v76;
  v65 = v77;
  v66 = v78;
  v61 = v73;
  v62 = v74;
  outlined init with copy of _ViewInputs(v67, &v69);
  swift_getWitnessTable();
  static View.makeDebuggableView(view:inputs:)();
  v71 = v63;
  *v72 = v64;
  *&v72[16] = v65;
  *&v72[32] = v66;
  v69 = v61;
  v70 = v62;
  outlined destroy of _ViewInputs(&v69);
  v44 = v54;
  v45 = DWORD2(v54);
  v19 = PreferencesOutputs.subscript.getter();

  if ((v19 & 0x100000000) != 0)
  {
    *&v61 = MEMORY[0x1E69E7CC0];
    MEMORY[0x18D00B7D0](v20);
    LOBYTE(v54) = 0;
    v19 = GraphHost.intern<A>(_:for:id:)();
  }

  v33 = v19;
  LODWORD(v54) = v35;
  v21 = _GraphValue.value.getter();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v28[0] = a3;
  v28[1] = a4;
  v35 = a3;
  v24 = v37;
  v23 = v38;
  v31 = v38;
  v34 = v32;
  LODWORD(v61) = v22;
  *(&v61 + 1) = partial apply for closure #1 in Attribute.subscript.getter;
  *&v62 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v62);
  v28[2] = swift_getFunctionTypeMetadata1();
  v29 = type metadata accessor for Map();
  WitnessTable = swift_getWitnessTable();
  v25 = type metadata accessor for Attribute();

  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v61, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_3, v28, v29, MEMORY[0x1E69E73E0], v25, MEMORY[0x1E69E7410], v26);

  *&v54 = __PAIR64__(v43, v33);
  *&v61 = v35;
  *(&v61 + 1) = a4;
  *&v62 = v42;
  *(&v62 + 1) = a6;
  *&v63 = v24;
  *(&v63 + 1) = v23;
  type metadata accessor for PlatformItemListReader.Child();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  v54 = v79;
  v55 = v80;
  v56 = v81;
  v57 = v39;
  v58 = v41;
  v59 = v46;
  v60 = v47;
  static View.makeDebuggableView(view:inputs:)();
  v63 = v75;
  v64 = v76;
  v65 = v77;
  v66 = v78;
  v61 = v73;
  v62 = v74;
  return outlined destroy of _ViewInputs(&v61);
}

uint64_t closure #1 in static PlatformItemListReader._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v8 = type metadata accessor for PlatformItemListReader();
  v9 = *(v8 + 68);
  v13[2] = v8;
  v14 = type metadata accessor for ZStack();
  v10 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v9, partial apply for closure #1 in static PointerOffset.of(_:), v13, v14, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);
  return v15;
}

uint64_t key path getter for PlatformItemListReader.content : <A, B, C>PlatformItemListReader<A, B, C>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = a2 + a3;
  v7 = *a1;
  v6 = a1[1];
  v8 = swift_allocObject();
  v9 = *(v5 - 32);
  *(v8 + 16) = *(v5 - 48);
  *(v8 + 32) = v9;
  *(v8 + 48) = *(v5 - 16);
  *(v8 + 64) = v7;
  *(v8 + 72) = v6;
  *a4 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed PlatformItemList) -> (@out B);
  a4[1] = v8;
}

uint64_t key path setter for PlatformItemListReader.content : <A, B, C>PlatformItemListReader<A, B, C>(uint64_t *a1, uint64_t (**a2)(uint64_t a1), uint64_t a3, uint64_t a4)
{
  v5 = a3 + a4;
  v7 = *a1;
  v6 = a1[1];
  v8 = swift_allocObject();
  v9 = *(v5 - 32);
  *(v8 + 16) = *(v5 - 48);
  *(v8 + 32) = v9;
  *(v8 + 48) = *(v5 - 16);
  *(v8 + 64) = v7;
  *(v8 + 72) = v6;

  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed PlatformItemList) -> (@out B);
  a2[1] = v8;
  return result;
}

uint64_t (*PlatformItemListReader.Child.makeContent.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))()
{
  swift_getFunctionTypeMetadata1();
  Value = AGGraphGetValue();
  v15 = *Value;
  v14 = Value[1];
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a4;
  v16[5] = a5;
  v16[6] = a6;
  v16[7] = a7;
  v16[8] = v15;
  v16[9] = v14;

  return thunk for @escaping @callee_guaranteed (@in_guaranteed PlatformItemList) -> (@out B)partial apply;
}

uint64_t PlatformItemListReader.Child.value.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for PlatformItemListReader.Child();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x18D000B90](v4, a3, WitnessTable);
  Rule.withObservation<A>(observationCenter:do:)();
}

uint64_t closure #1 in PlatformItemListReader.Child.value.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = PlatformItemListReader.Child.makeContent.getter(a1, a2, a3, a4, a5, a6, a7);
  AGGraphGetValue();

  (v7)(v8);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance PlatformItemListReader<A, B, C>()
{
  swift_getWitnessTable();

  return static UnaryView._makeViewList(view:inputs:)();
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance IsPlatformItemListSourcePredicate()
{
  lazy protocol witness table accessor for type IsPlatformItemListSourceInput and conformance IsPlatformItemListSourceInput();
  PropertyList.subscript.getter();
  return v1;
}

uint64_t assignWithCopy for PlatformItemList.Item.SystemItem(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  v24 = *(a2 + 72);
  v25 = *(a2 + 80);
  v26 = *(a2 + 88);
  v27 = *(a2 + 96);
  outlined copy of PlatformItemList.Item.SystemItem(*a2, v4, v5, v6, v7, v8, v9, v10, v11, v24, v25, v26, v27);
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = *(a1 + 64);
  v21 = *(a1 + 80);
  v22 = *(a1 + 96);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = v24;
  *(a1 + 80) = v25;
  *(a1 + 88) = v26;
  *(a1 + 96) = v27;
  outlined consume of PlatformItemList.Item.SystemItem(v12, v13, v14, v15, v16, v17, v18, v19, v20, *(&v20 + 1), v21, SBYTE8(v21), v22);
  return a1;
}

uint64_t assignWithTake for PlatformItemList.Item.SystemItem(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 96);
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  v13 = *(a1 + 80);
  v14 = *(a1 + 96);
  v15 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v15;
  v16 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v16;
  v17 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v17;
  *(a1 + 96) = v3;
  outlined consume of PlatformItemList.Item.SystemItem(v4, v6, v5, v7, v8, v9, v10, v11, v12, *(&v12 + 1), v13, SBYTE8(v13), v14);
  return a1;
}

uint64_t getEnumTag for PlatformItemList.Item.SystemItem(uint64_t a1)
{
  v1 = *(a1 + 32) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t destructiveInjectEnumTag for PlatformItemList.Item.SystemItem(uint64_t result, uint64_t a2)
{
  if (a2 < 3)
  {
    *(result + 32) = *(result + 32) & 3 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 3);
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0xC000000000000000;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
  }

  return result;
}

uint64_t destroy for PlatformItemList.Item.SecondaryNavigationBehavior(uint64_t result)
{
  v1 = result;
  if (*(result + 24))
  {
    result = __swift_destroy_boxed_opaque_existential_1(result);
  }

  if (*(v1 + 40))
  {
  }

  return result;
}

uint64_t initializeWithCopy for PlatformItemList.Item.SecondaryNavigationBehavior(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    *(a1 + 24) = v4;
    *(a1 + 32) = v5;
    (**(v4 - 8))(a1, a2);
  }

  else
  {
    v6 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v6;
    *(a1 + 32) = *(a2 + 32);
  }

  v7 = *(a2 + 40);
  if (v7)
  {
    v8 = *(a2 + 48);
    *(a1 + 40) = v7;
    *(a1 + 48) = v8;
  }

  else
  {
    *(a1 + 40) = *(a2 + 40);
  }

  return a1;
}

uint64_t assignWithCopy for PlatformItemList.Item.SecondaryNavigationBehavior(uint64_t a1, __int128 *a2)
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

  v9 = *(a2 + 5);
  if (!*(a1 + 40))
  {
    if (v9)
    {
      v11 = *(a2 + 6);
      *(a1 + 40) = v9;
      *(a1 + 48) = v11;

      return a1;
    }

LABEL_14:
    *(a1 + 40) = *(a2 + 40);
    return a1;
  }

  if (!v9)
  {

    goto LABEL_14;
  }

  v10 = *(a2 + 6);
  *(a1 + 40) = v9;
  *(a1 + 48) = v10;

  return a1;
}

uint64_t assignWithTake for PlatformItemList.Item.SecondaryNavigationBehavior(uint64_t a1, uint64_t a2)
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
  v5 = *(a2 + 40);
  if (!*(a1 + 40))
  {
    if (v5)
    {
      v7 = *(a2 + 48);
      *(a1 + 40) = v5;
      *(a1 + 48) = v7;
      return a1;
    }

LABEL_11:
    *(a1 + 40) = *(a2 + 40);
    return a1;
  }

  if (!v5)
  {

    goto LABEL_11;
  }

  v6 = *(a2 + 48);
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;

  return a1;
}

uint64_t storeEnumTagSinglePayload for PlatformItemList.Item.SecondaryNavigationBehavior(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t assignWithCopy for PlatformItemList.Item.SelectionBehavior(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 4) = *(a2 + 4);
  v4 = (a1 + 8);
  v6 = (a2 + 8);
  v5 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v5)
    {
      v7 = *(a2 + 16);
      *(a1 + 8) = v5;
      *(a1 + 16) = v7;

      goto LABEL_8;
    }
  }

  else if (v5)
  {
    v8 = *(a2 + 16);
    *(a1 + 8) = v5;
    *(a1 + 16) = v8;

    goto LABEL_8;
  }

  *v4 = *v6;
LABEL_8:
  v9 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (v9)
    {
      v10 = *(a2 + 32);
      *(a1 + 24) = v9;
      *(a1 + 32) = v10;

      goto LABEL_15;
    }
  }

  else if (v9)
  {
    v11 = *(a2 + 32);
    *(a1 + 24) = v9;
    *(a1 + 32) = v11;

    goto LABEL_15;
  }

  *(a1 + 24) = *(a2 + 24);
LABEL_15:
  v12 = *(a2 + 40);
  if (!*(a1 + 40))
  {
    if (v12)
    {
      v14 = *(a2 + 48);
      *(a1 + 40) = v12;
      *(a1 + 48) = v14;

      goto LABEL_22;
    }

LABEL_21:
    *(a1 + 40) = *(a2 + 40);
    goto LABEL_22;
  }

  if (!v12)
  {

    goto LABEL_21;
  }

  v13 = *(a2 + 48);
  *(a1 + 40) = v12;
  *(a1 + 48) = v13;

LABEL_22:
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t assignWithTake for PlatformItemList.Item.SelectionBehavior(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 4) = *(a2 + 4);
  v4 = (a1 + 8);
  v6 = (a2 + 8);
  v5 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v5)
    {
      v7 = *(a2 + 16);
      *(a1 + 8) = v5;
      *(a1 + 16) = v7;

      goto LABEL_8;
    }
  }

  else if (v5)
  {
    v8 = *(a2 + 16);
    *(a1 + 8) = v5;
    *(a1 + 16) = v8;
    goto LABEL_8;
  }

  *v4 = *v6;
LABEL_8:
  v9 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (v9)
    {
      v10 = *(a2 + 32);
      *(a1 + 24) = v9;
      *(a1 + 32) = v10;

      goto LABEL_15;
    }
  }

  else if (v9)
  {
    v11 = *(a2 + 32);
    *(a1 + 24) = v9;
    *(a1 + 32) = v11;
    goto LABEL_15;
  }

  *(a1 + 24) = *(a2 + 24);
LABEL_15:
  v12 = *(a2 + 40);
  if (!*(a1 + 40))
  {
    if (v12)
    {
      v14 = *(a2 + 48);
      *(a1 + 40) = v12;
      *(a1 + 48) = v14;
      goto LABEL_22;
    }

LABEL_21:
    *(a1 + 40) = *(a2 + 40);
    goto LABEL_22;
  }

  if (!v12)
  {

    goto LABEL_21;
  }

  v13 = *(a2 + 48);
  *(a1 + 40) = v12;
  *(a1 + 48) = v13;

LABEL_22:
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

char *initializeBufferWithCopyOfBuffer for PlatformItemList.Item(char *a1, char **a2, int *a3)
{
  v4 = *(*(a3 - 1) + 80);
  v5 = *a2;
  *a1 = *a2;
  if ((v4 & 0x20000) != 0)
  {
    a1 = &v5[(v4 + 16) & ~v4];
    goto LABEL_58;
  }

  v6 = a3;
  v9 = a2[1];
  v8 = a2[2];
  *(a1 + 1) = v9;
  *(a1 + 2) = v8;
  *(a1 + 3) = a2[3];
  a1[32] = *(a2 + 32);
  v10 = a2[6];
  *(a1 + 5) = a2[5];
  *(a1 + 6) = v10;
  a1[56] = *(a2 + 56);
  v11 = a2[24];
  v12 = v5;
  v13 = v9;

  if (v11 >> 1 != 4294967294)
  {
    v23 = *(a2 + 72);
    if (v23 == 255)
    {
      *(a1 + 8) = a2[8];
      a1[72] = *(a2 + 72);
    }

    else
    {
      v24 = a2[8];
      outlined copy of GraphicsImage.Contents(v24, *(a2 + 72));
      *(a1 + 8) = v24;
      a1[72] = v23;
      v11 = a2[24];
    }

    *(a1 + 10) = a2[10];
    *(a1 + 88) = *(a2 + 11);
    a1[104] = *(a2 + 104);
    *(a1 + 108) = *(a2 + 108);
    *(a1 + 121) = *(a2 + 121);
    *(a1 + 136) = *(a2 + 17);
    *(a1 + 152) = *(a2 + 19);
    *(a1 + 84) = *(a2 + 84);
    a1[170] = *(a2 + 170);
    a1[171] = *(a2 + 171);
    if (v11 >> 1 == 0xFFFFFFFF)
    {
      v25 = *(a2 + 12);
      *(a1 + 11) = *(a2 + 11);
      *(a1 + 12) = v25;
    }

    else
    {
      v26 = a2[22];
      v27 = a2[23];
      v28 = a2[25];
      outlined copy of AccessibilityImageLabel(v26, v27, v11);
      *(a1 + 22) = v26;
      *(a1 + 23) = v27;
      *(a1 + 24) = v11;
      *(a1 + 25) = v28;
    }

    v29 = a2[27];
    *(a1 + 26) = a2[26];
    *(a1 + 27) = v29;
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 57) = *(a2 + 57);
    a1[232] = *(a2 + 232);
    v30 = a2[30];
    *(a1 + 30) = v30;
    *(a1 + 124) = *(a2 + 124);
    a1[250] = *(a2 + 250);
    swift_unknownObjectRetain();

    v31 = v30;
    v19 = a2[33];
    if (v19)
    {
      goto LABEL_4;
    }

LABEL_15:
    v32 = *(a2 + 17);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 17) = v32;
    *(a1 + 18) = *(a2 + 18);
    goto LABEL_16;
  }

  v14 = *(a2 + 13);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 13) = v14;
  *(a1 + 14) = *(a2 + 14);
  *(a1 + 235) = *(a2 + 235);
  v15 = *(a2 + 9);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = v15;
  v16 = *(a2 + 11);
  *(a1 + 10) = *(a2 + 10);
  *(a1 + 11) = v16;
  v17 = *(a2 + 5);
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 5) = v17;
  v18 = *(a2 + 7);
  *(a1 + 6) = *(a2 + 6);
  *(a1 + 7) = v18;
  v19 = a2[33];
  if (!v19)
  {
    goto LABEL_15;
  }

LABEL_4:
  *(a1 + 32) = a2[32];
  *(a1 + 33) = v19;
  v20 = a2[34];

  if (v20 >= 2)
  {
    v21 = v20;
  }

  *(a1 + 34) = v20;
  *(a1 + 70) = *(a2 + 70);
  a1[284] = *(a2 + 284);
  *(a1 + 285) = *(a2 + 285);
  v22 = a2[37];
  *(a1 + 36) = a2[36];
  *(a1 + 37) = v22;

LABEL_16:
  v33 = a2[42];
  v110 = v6;
  if (v33 >> 2 == 0xFFFFFFFF)
  {
    v34 = *(a2 + 24);
    *(a1 + 23) = *(a2 + 23);
    *(a1 + 24) = v34;
    *(a1 + 50) = a2[50];
    v35 = *(a2 + 20);
    *(a1 + 19) = *(a2 + 19);
    *(a1 + 20) = v35;
    v36 = *(a2 + 22);
    *(a1 + 21) = *(a2 + 21);
    *(a1 + 22) = v36;
  }

  else
  {
    v37 = a2[38];
    v38 = a2[39];
    v39 = a2[40];
    v40 = a2[41];
    v41 = a2[43];
    v42 = a2[44];
    v43 = a2[45];
    v100 = a2[46];
    v101 = a2[47];
    v103 = a2[48];
    v105 = a2[49];
    __dsta = a2[50];
    outlined copy of PlatformItemList.Item.SystemItem(v37, v38, v39, v40, v33, v41, v42, v43, v100, v101, v103, v105, __dsta);
    *(a1 + 38) = v37;
    *(a1 + 39) = v38;
    *(a1 + 40) = v39;
    *(a1 + 41) = v40;
    *(a1 + 42) = v33;
    *(a1 + 43) = v41;
    *(a1 + 44) = v42;
    *(a1 + 45) = v43;
    *(a1 + 46) = v100;
    *(a1 + 47) = v101;
    *(a1 + 48) = v103;
    *(a1 + 49) = v105;
    v6 = v110;
    *(a1 + 50) = __dsta;
  }

  v44 = a2[52];
  if (v44 == 1)
  {
    v45 = *(a2 + 57);
    *(a1 + 440) = *(a2 + 55);
    *(a1 + 456) = v45;
    a1[472] = *(a2 + 472);
    v46 = *(a2 + 53);
    *(a1 + 408) = *(a2 + 51);
    *(a1 + 424) = v46;
    goto LABEL_29;
  }

  *(a1 + 102) = *(a2 + 102);
  a1[412] = *(a2 + 412);
  if (v44)
  {
    v47 = a2[53];
    *(a1 + 52) = v44;
    *(a1 + 53) = v47;

    v48 = a2[54];
    if (v48)
    {
      goto LABEL_23;
    }

LABEL_26:
    *(a1 + 27) = *(a2 + 27);
    v50 = a2[56];
    if (v50)
    {
      goto LABEL_24;
    }

LABEL_27:
    *(a1 + 28) = *(a2 + 28);
    goto LABEL_28;
  }

  *(a1 + 26) = *(a2 + 26);
  v48 = a2[54];
  if (!v48)
  {
    goto LABEL_26;
  }

LABEL_23:
  v49 = a2[55];
  *(a1 + 54) = v48;
  *(a1 + 55) = v49;

  v50 = a2[56];
  if (!v50)
  {
    goto LABEL_27;
  }

LABEL_24:
  v51 = a2[57];
  *(a1 + 56) = v50;
  *(a1 + 57) = v51;

LABEL_28:
  *(a1 + 58) = a2[58];
  a1[472] = *(a2 + 472);
LABEL_29:
  v52 = a2[61];
  *(a1 + 60) = a2[60];
  *(a1 + 61) = v52;
  *(a1 + 62) = a2[62];
  a1[504] = *(a2 + 504);
  v53 = a2[64];

  if (v53)
  {
    v54 = a2[65];
    *(a1 + 64) = v53;
    *(a1 + 65) = v54;
  }

  else
  {
    *(a1 + 32) = *(a2 + 32);
  }

  a1[528] = *(a2 + 528);
  if (!a2[102])
  {
    memcpy(a1 + 536, a2 + 67, 0x130uLL);
    goto LABEL_44;
  }

  *(a1 + 67) = a2[67];
  *(a1 + 68) = a2[68];
  a1[552] = *(a2 + 552);
  *(a1 + 70) = a2[70];
  a1[568] = *(a2 + 568);
  *(a1 + 36) = *(a2 + 36);
  a1[592] = *(a2 + 592);
  v55 = a1 + 600;
  v56 = a2 + 75;
  v57 = a2[78];

  if (!v57)
  {
    v59 = *(a2 + 77);
    *v55 = *v56;
    *(a1 + 616) = v59;
    *(a1 + 79) = a2[79];
LABEL_39:
    *(a1 + 80) = a2[80];

    goto LABEL_40;
  }

  if (v57 != 1)
  {
    *(a1 + 78) = v57;
    *(a1 + 79) = a2[79];
    (**(v57 - 1))((a1 + 600), (a2 + 75), v57);
    goto LABEL_39;
  }

  v58 = *(a2 + 77);
  *v55 = *v56;
  *(a1 + 616) = v58;
  *(a1 + 632) = *(a2 + 79);
LABEL_40:
  *(a1 + 81) = a2[81];
  a1[656] = *(a2 + 656);
  v60 = a1 + 664;
  v61 = a2 + 83;
  v62 = a2[97];
  if (v62 == 1)
  {
    v63 = *(a2 + 97);
    *(a1 + 760) = *(a2 + 95);
    *(a1 + 776) = v63;
    *(a1 + 792) = *(a2 + 99);
    a1[808] = *(a2 + 808);
    v64 = *(a2 + 89);
    *(a1 + 696) = *(a2 + 87);
    *(a1 + 712) = v64;
    v65 = *(a2 + 93);
    *(a1 + 728) = *(a2 + 91);
    *(a1 + 744) = v65;
    v66 = *(a2 + 85);
    *v60 = *v61;
    *(a1 + 680) = v66;
  }

  else
  {
    *v60 = *v61;
    a1[672] = *(a2 + 672);
    *(a1 + 85) = a2[85];
    a1[688] = *(a2 + 688);
    *(a1 + 689) = *(a2 + 689);
    a1[691] = *(a2 + 691);
    a1[692] = *(a2 + 692);
    *(a1 + 87) = a2[87];
    v67 = *(a2 + 45);
    *(a1 + 44) = *(a2 + 44);
    *(a1 + 45) = v67;
    *(a1 + 92) = a2[92];
    *(a1 + 372) = *(a2 + 372);
    *(a1 + 47) = *(a2 + 47);
    a1[768] = *(a2 + 768);
    *(a1 + 97) = v62;
    *(a1 + 49) = *(a2 + 49);
    *(a1 + 100) = a2[100];
    a1[808] = *(a2 + 808);
  }

  *(a1 + 102) = a2[102];
  *(a1 + 103) = a2[103];
  *(a1 + 104) = a2[104];

LABEL_44:
  v68 = a1 + 840;
  v69 = a2 + 105;
  v70 = a2[108];
  if (!v70)
  {
    v72 = *(a2 + 107);
    *v68 = *v69;
    *(a1 + 856) = v72;
    *(a1 + 109) = a2[109];
    v73 = a2[110];
    if (!v73)
    {
LABEL_50:
      *(a1 + 55) = *(a2 + 55);
      goto LABEL_51;
    }

LABEL_48:
    v74 = a2[111];
    *(a1 + 110) = v73;
    *(a1 + 111) = v74;

    goto LABEL_51;
  }

  if (v70 != 1)
  {
    *(a1 + 108) = v70;
    *(a1 + 109) = a2[109];
    (**(v70 - 1))(v68, v69);
    v73 = a2[110];
    if (!v73)
    {
      goto LABEL_50;
    }

    goto LABEL_48;
  }

  v71 = *(a2 + 107);
  *v68 = *v69;
  *(a1 + 856) = v71;
  *(a1 + 872) = *(a2 + 109);
  *(a1 + 111) = a2[111];
LABEL_51:
  v75 = a2[112];
  *(a1 + 112) = v75;
  *(a1 + 113) = a2[113];
  *(a1 + 114) = a2[114];
  *(a1 + 115) = a2[115];
  *(a1 + 116) = a2[116];
  *(a1 + 117) = a2[117];
  v76 = a2[118];
  *(a1 + 476) = *(a2 + 476);
  a1[954] = *(a2 + 954);
  v77 = v6[28];
  __dst = &a1[v77];
  v78 = a2 + v77;
  *(a1 + 118) = v76;
  v79 = type metadata accessor for CommandOperation();
  v104 = *(v79 - 8);
  v106 = *(v104 + 48);
  v80 = v75;

  if (v106(v78, 1, v79))
  {
    _s7SwiftUI16CommandOperationVSgMaTm_0(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
    memcpy(__dst, v78, *(*(v81 - 8) + 64));
    v82 = v110;
  }

  else
  {
    *__dst = *v78;
    v83 = *(v79 + 20);
    v84 = &__dst[v83];
    v85 = &v78[v83];
    v107 = v78;
    v86 = v79;
    v87 = *v85;
    v88 = *(v85 + 1);
    v89 = v85[16];
    outlined copy of Text.Storage(*v85, v88, v89);
    *v84 = v87;
    *(v84 + 1) = v88;
    v84[16] = v89;
    *(v84 + 3) = *(v85 + 3);
    v90 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
    v91 = type metadata accessor for UUID();
    v102 = *(*(v91 - 8) + 16);

    v102(&v84[v90], &v85[v90], v91);
    v92 = *(v86 + 24);
    v93 = &__dst[v92];
    v94 = &v107[v92];
    if (*v94)
    {
      v95 = v94[1];
      *v93 = *v94;
      *(v93 + 1) = v95;
    }

    else
    {
      *v93 = *v94;
    }

    v82 = v110;
    (*(v104 + 56))(__dst, 0, 1, v86);
  }

  v96 = v82[30];
  a1[v82[29]] = *(a2 + v82[29]);
  a1[v96] = *(a2 + v96);
  v97 = v82[32];
  a1[v82[31]] = *(a2 + v82[31]);
  a1[v97] = *(a2 + v97);
  v98 = v82[34];
  a1[v82[33]] = *(a2 + v82[33]);
  *&a1[v98] = *(a2 + v98);
LABEL_58:

  return a1;
}

uint64_t assignWithCopy for PlatformItemList.Item(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = a2 + 286;
  v7 = *a1;
  v8 = *a2;
  *a1 = *a2;
  v9 = v8;

  v10 = *(a1 + 8);
  v11 = *(a2 + 8);
  *(a1 + 8) = v11;
  v12 = v11;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  v13 = *(a2 + 192) & 0xFFFFFFFFFFFFFFFELL;
  if (*(a1 + 192) >> 1 == 4294967294)
  {
    if (v13 == 0x1FFFFFFFCLL)
    {
      v14 = *(a2 + 64);
      v15 = *(a2 + 80);
      v16 = *(a2 + 112);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 112) = v16;
      *(a1 + 64) = v14;
      *(a1 + 80) = v15;
      v17 = *(a2 + 128);
      v18 = *(a2 + 144);
      v19 = *(a2 + 176);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 176) = v19;
      *(a1 + 128) = v17;
      *(a1 + 144) = v18;
      v20 = *(a2 + 192);
      v21 = *(a2 + 208);
      v22 = *(a2 + 224);
      *(a1 + 235) = *(a2 + 235);
      *(a1 + 208) = v21;
      *(a1 + 224) = v22;
      *(a1 + 192) = v20;
    }

    else
    {
      v32 = *(a2 + 72);
      if (v32 == 255)
      {
        v38 = *(a2 + 64);
        *(a1 + 72) = *(a2 + 72);
        *(a1 + 64) = v38;
      }

      else
      {
        v33 = *(a2 + 64);
        outlined copy of GraphicsImage.Contents(v33, *(a2 + 72));
        *(a1 + 64) = v33;
        *(a1 + 72) = v32;
      }

      *(a1 + 80) = *(a2 + 80);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 104) = *(a2 + 104);
      v39 = *(a2 + 108);
      *(a1 + 121) = *(a2 + 121);
      *(a1 + 108) = v39;
      v40 = *(a2 + 136);
      v41 = *(a2 + 152);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 152) = v41;
      *(a1 + 136) = v40;
      *(a1 + 169) = *(a2 + 169);
      *(a1 + 170) = *(a2 + 170);
      *(a1 + 171) = *(a2 + 171);
      v42 = *(a2 + 192);
      if (v42 >> 1 == 0xFFFFFFFF)
      {
        v43 = *(a2 + 192);
        *(a1 + 176) = *(a2 + 176);
        *(a1 + 192) = v43;
      }

      else
      {
        v44 = *(a2 + 176);
        v45 = *(a2 + 184);
        v46 = *(a2 + 200);
        outlined copy of AccessibilityImageLabel(v44, v45, *(a2 + 192));
        *(a1 + 176) = v44;
        *(a1 + 184) = v45;
        *(a1 + 192) = v42;
        *(a1 + 200) = v46;
      }

      *(a1 + 208) = *(a2 + 208);
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 224) = *(a2 + 224);
      *(a1 + 225) = *(a2 + 225);
      v47 = *(a2 + 228);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 228) = v47;
      v48 = *(a2 + 240);
      *(a1 + 240) = v48;
      *(a1 + 248) = *(a2 + 248);
      *(a1 + 250) = *(a2 + 250);
      swift_unknownObjectRetain();

      v49 = v48;
    }
  }

  else if (v13 == 0x1FFFFFFFCLL)
  {
    outlined destroy of Image.Resolved(a1 + 64);
    v23 = *(a2 + 112);
    v25 = *(a2 + 64);
    v24 = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = v23;
    *(a1 + 64) = v25;
    *(a1 + 80) = v24;
    v26 = *(a2 + 176);
    v28 = *(a2 + 128);
    v27 = *(a2 + 144);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v26;
    *(a1 + 128) = v28;
    *(a1 + 144) = v27;
    v30 = *(a2 + 208);
    v29 = *(a2 + 224);
    v31 = *(a2 + 192);
    *(a1 + 235) = *(a2 + 235);
    *(a1 + 208) = v30;
    *(a1 + 224) = v29;
    *(a1 + 192) = v31;
  }

  else
  {
    v34 = *(a2 + 72);
    if (*(a1 + 72) == 255)
    {
      if (v34 == 255)
      {
        v52 = *(a2 + 64);
        *(a1 + 72) = *(a2 + 72);
        *(a1 + 64) = v52;
      }

      else
      {
        v50 = *(a2 + 64);
        outlined copy of GraphicsImage.Contents(v50, *(a2 + 72));
        *(a1 + 64) = v50;
        *(a1 + 72) = v34;
      }
    }

    else if (v34 == 255)
    {
      outlined destroy of GraphicsImage.Contents(a1 + 64);
      v51 = *(a2 + 72);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = v51;
    }

    else
    {
      v35 = *(a2 + 64);
      outlined copy of GraphicsImage.Contents(v35, *(a2 + 72));
      v36 = *(a1 + 64);
      *(a1 + 64) = v35;
      v37 = *(a1 + 72);
      *(a1 + 72) = v34;
      outlined consume of GraphicsImage.Contents(v36, v37);
    }

    *(a1 + 80) = *(a2 + 80);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 104) = *(a2 + 104);
    v53 = *(a2 + 108);
    *(a1 + 121) = *(a2 + 121);
    *(a1 + 108) = v53;
    v54 = *(a2 + 136);
    v55 = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 152) = v55;
    *(a1 + 136) = v54;
    *(a1 + 169) = *(a2 + 169);
    *(a1 + 170) = *(a2 + 170);
    *(a1 + 171) = *(a2 + 171);
    v56 = *(a2 + 192);
    v57 = v56 & 0xFFFFFFFFFFFFFFFELL;
    if (*(a1 + 192) >> 1 == 0xFFFFFFFFLL)
    {
      if (v57 == 0x1FFFFFFFELL)
      {
        v58 = *(a2 + 192);
        *(a1 + 176) = *(a2 + 176);
        *(a1 + 192) = v58;
      }

      else
      {
        v60 = *(a2 + 176);
        v61 = *(a2 + 184);
        v62 = *(a2 + 200);
        outlined copy of AccessibilityImageLabel(v60, v61, *(a2 + 192));
        *(a1 + 176) = v60;
        *(a1 + 184) = v61;
        *(a1 + 192) = v56;
        *(a1 + 200) = v62;
      }
    }

    else if (v57 == 0x1FFFFFFFELL)
    {
      outlined destroy of AccessibilityImageLabel(a1 + 176);
      v59 = *(a2 + 192);
      *(a1 + 176) = *(a2 + 176);
      *(a1 + 192) = v59;
    }

    else
    {
      v63 = *(a2 + 176);
      v64 = *(a2 + 184);
      v65 = *(a2 + 200);
      outlined copy of AccessibilityImageLabel(v63, v64, *(a2 + 192));
      v66 = *(a1 + 176);
      v67 = *(a1 + 184);
      v68 = *(a1 + 192);
      *(a1 + 176) = v63;
      *(a1 + 184) = v64;
      *(a1 + 192) = v56;
      *(a1 + 200) = v65;
      outlined consume of AccessibilityImageLabel(v66, v67, v68);
    }

    *(a1 + 208) = *(a2 + 208);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    *(a1 + 216) = *(a2 + 216);

    *(a1 + 224) = *(a2 + 224);
    *(a1 + 225) = *(a2 + 225);
    v69 = *(a2 + 228);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 228) = v69;
    v70 = *(a1 + 240);
    v71 = *(a2 + 240);
    *(a1 + 240) = v71;
    v72 = v71;

    *(a1 + 248) = *(a2 + 248);
    *(a1 + 250) = *(a2 + 250);
  }

  v73 = *(a2 + 264);
  if (*(a1 + 264))
  {
    if (!v73)
    {
      outlined destroy of Image.NamedResolved(a1 + 256);
      v81 = *(a2 + 272);
      v80 = *(a2 + 288);
      *(a1 + 256) = *(a2 + 256);
      *(a1 + 272) = v81;
      *(a1 + 288) = v80;
      goto LABEL_44;
    }

    *(a1 + 256) = *(a2 + 256);
    *(a1 + 264) = *(a2 + 264);

    v74 = *(a1 + 272);
    v75 = *(a2 + 272);
    if (v74 >= 2)
    {
      if (v75 >= 2)
      {
        *(a1 + 272) = v75;
        v84 = v75;

        goto LABEL_43;
      }

      v75 = *(a2 + 272);
    }

    else if (v75 >= 2)
    {
      *(a1 + 272) = v75;
      v76 = v75;
LABEL_43:
      v85 = *(a2 + 280);
      *(a1 + 284) = *(a2 + 284);
      *(a1 + 280) = v85;
      *(a1 + 285) = *(a2 + 285);
      *(a1 + 286) = *v6;
      *(a1 + 288) = *(a2 + 288);

      *(a1 + 296) = *(a2 + 296);

      goto LABEL_44;
    }

    *(a1 + 272) = v75;
    goto LABEL_43;
  }

  if (v73)
  {
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 264) = *(a2 + 264);
    v77 = *(a2 + 272);

    if (v77 >= 2)
    {
      v78 = v77;
    }

    *(a1 + 272) = v77;
    v79 = *(a2 + 280);
    *(a1 + 284) = *(a2 + 284);
    *(a1 + 280) = v79;
    *(a1 + 285) = *(a2 + 285);
    *(a1 + 286) = *(a2 + 286);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 296) = *(a2 + 296);
  }

  else
  {
    v82 = *(a2 + 256);
    v83 = *(a2 + 288);
    *(a1 + 272) = *(a2 + 272);
    *(a1 + 288) = v83;
    *(a1 + 256) = v82;
  }

LABEL_44:
  v86 = *(a2 + 336);
  v87 = v86 & 0xFFFFFFFFFFFFFFFCLL;
  if (*(a1 + 336) >> 2 == 0xFFFFFFFFLL)
  {
    if (v87 == 0x3FFFFFFFCLL)
    {
      v88 = *(a2 + 304);
      v89 = *(a2 + 336);
      *(a1 + 320) = *(a2 + 320);
      *(a1 + 336) = v89;
      *(a1 + 304) = v88;
      v90 = *(a2 + 352);
      v91 = *(a2 + 368);
      v92 = *(a2 + 384);
      *(a1 + 400) = *(a2 + 400);
      *(a1 + 368) = v91;
      *(a1 + 384) = v92;
      *(a1 + 352) = v90;
    }

    else
    {
      v98 = *(a2 + 304);
      v99 = *(a2 + 312);
      v100 = *(a2 + 320);
      v101 = *(a2 + 328);
      v280 = v6;
      v283 = a3;
      v102 = *(a2 + 344);
      v103 = *(a2 + 352);
      v104 = *(a2 + 360);
      v269 = *(a2 + 368);
      v271 = *(a2 + 376);
      v273 = *(a2 + 384);
      v275 = *(a2 + 392);
      v277 = *(a2 + 400);
      outlined copy of PlatformItemList.Item.SystemItem(v98, v99, v100, v101, v86, v102, v103, v104, v269, v271, v273, v275, v277);
      *(a1 + 304) = v98;
      *(a1 + 312) = v99;
      *(a1 + 320) = v100;
      *(a1 + 328) = v101;
      *(a1 + 336) = v86;
      *(a1 + 344) = v102;
      *(a1 + 352) = v103;
      *(a1 + 360) = v104;
      v6 = v280;
      a3 = v283;
      *(a1 + 368) = v269;
      *(a1 + 376) = v271;
      *(a1 + 384) = v273;
      *(a1 + 392) = v275;
      *(a1 + 400) = v277;
    }
  }

  else if (v87 == 0x3FFFFFFFCLL)
  {
    outlined destroy of PlatformItemList.Item.SystemItem(a1 + 304);
    v94 = *(a2 + 320);
    v93 = *(a2 + 336);
    *(a1 + 304) = *(a2 + 304);
    *(a1 + 320) = v94;
    *(a1 + 336) = v93;
    v96 = *(a2 + 368);
    v95 = *(a2 + 384);
    v97 = *(a2 + 352);
    *(a1 + 400) = *(a2 + 400);
    *(a1 + 368) = v96;
    *(a1 + 384) = v95;
    *(a1 + 352) = v97;
  }

  else
  {
    v105 = *(a2 + 304);
    v106 = *(a2 + 312);
    v281 = v6;
    v284 = a3;
    v107 = *(a2 + 320);
    v108 = *(a2 + 328);
    v109 = *(a2 + 344);
    v110 = *(a2 + 352);
    v111 = *(a2 + 360);
    v270 = *(a2 + 368);
    v272 = *(a2 + 376);
    v274 = *(a2 + 384);
    v276 = *(a2 + 392);
    v278 = *(a2 + 400);
    outlined copy of PlatformItemList.Item.SystemItem(v105, v106, v107, v108, v86, v109, v110, v111, v270, v272, v274, v276, v278);
    v112 = *(a1 + 304);
    v113 = *(a1 + 312);
    v114 = *(a1 + 320);
    v115 = *(a1 + 328);
    v116 = *(a1 + 336);
    v117 = *(a1 + 344);
    v118 = *(a1 + 352);
    v119 = *(a1 + 360);
    v120 = *(a1 + 368);
    v121 = *(a1 + 384);
    v122 = *(a1 + 400);
    *(a1 + 304) = v105;
    *(a1 + 312) = v106;
    *(a1 + 320) = v107;
    *(a1 + 328) = v108;
    *(a1 + 336) = v86;
    *(a1 + 344) = v109;
    *(a1 + 352) = v110;
    *(a1 + 360) = v111;
    v6 = v281;
    a3 = v284;
    *(a1 + 368) = v270;
    *(a1 + 376) = v272;
    *(a1 + 384) = v274;
    *(a1 + 392) = v276;
    *(a1 + 400) = v278;
    outlined consume of PlatformItemList.Item.SystemItem(v112, v113, v114, v115, v116, v117, v118, v119, v120, *(&v120 + 1), v121, SBYTE8(v121), v122);
  }

  v123 = (a1 + 408);
  v124 = *(a1 + 416);
  v125 = *(a2 + 416);
  if (v124 == 1)
  {
    if (v125 == 1)
    {
      *v123 = *(v6 + 122);
      v126 = *(v6 + 138);
      v127 = *(v6 + 154);
      v128 = *(v6 + 170);
      *(a1 + 472) = *(v6 + 186);
      *(a1 + 440) = v127;
      *(a1 + 456) = v128;
      *(a1 + 424) = v126;
      goto LABEL_85;
    }

    *(a1 + 408) = *(a2 + 408);
    *(a1 + 409) = *(a2 + 409);
    *(a1 + 410) = *(a2 + 410);
    *(a1 + 411) = *(a2 + 411);
    *(a1 + 412) = *(a2 + 412);
    v132 = *(a2 + 416);
    if (v132)
    {
      v133 = *(a2 + 424);
      *(a1 + 416) = v132;
      *(a1 + 424) = v133;

      v134 = *(a2 + 432);
      if (v134)
      {
LABEL_58:
        v135 = *(a2 + 440);
        *(a1 + 432) = v134;
        *(a1 + 440) = v135;

        goto LABEL_64;
      }
    }

    else
    {
      *(a1 + 416) = *(a2 + 416);
      v134 = *(a2 + 432);
      if (v134)
      {
        goto LABEL_58;
      }
    }

    *(a1 + 432) = *(a2 + 432);
LABEL_64:
    v138 = *(a2 + 448);
    if (!v138)
    {
      goto LABEL_83;
    }

    goto LABEL_81;
  }

  if (v125 == 1)
  {
    outlined destroy of PlatformItemList.Item.SelectionBehavior(a1 + 408);
    *v123 = *(v6 + 122);
    v129 = *(v6 + 154);
    v130 = *(v6 + 170);
    v131 = *(v6 + 138);
    *(a1 + 472) = *(v6 + 186);
    *(a1 + 440) = v129;
    *(a1 + 456) = v130;
    *(a1 + 424) = v131;
    goto LABEL_85;
  }

  *(a1 + 408) = *(v6 + 122);
  *(a1 + 409) = *(v6 + 123);
  *(a1 + 410) = *(v6 + 124);
  *(a1 + 411) = *(v6 + 125);
  *(a1 + 412) = *(a2 + 412);
  v136 = *(a2 + 416);
  if (v124)
  {
    if (v136)
    {
      v137 = *(a2 + 424);
      *(a1 + 416) = v136;
      *(a1 + 424) = v137;

      goto LABEL_70;
    }
  }

  else if (v136)
  {
    v139 = *(a2 + 424);
    *(a1 + 416) = v136;
    *(a1 + 424) = v139;

    goto LABEL_70;
  }

  *(a1 + 416) = *(a2 + 416);
LABEL_70:
  v140 = *(a2 + 432);
  if (*(a1 + 432))
  {
    if (v140)
    {
      v141 = *(a2 + 440);
      *(a1 + 432) = v140;
      *(a1 + 440) = v141;

      goto LABEL_77;
    }
  }

  else if (v140)
  {
    v142 = *(a2 + 440);
    *(a1 + 432) = v140;
    *(a1 + 440) = v142;

    goto LABEL_77;
  }

  *(a1 + 432) = *(a2 + 432);
LABEL_77:
  v138 = *(a2 + 448);
  if (!*(a1 + 448))
  {
    if (v138)
    {
LABEL_81:
      v144 = *(a2 + 456);
      *(a1 + 448) = v138;
      *(a1 + 456) = v144;

      goto LABEL_84;
    }

LABEL_83:
    *(a1 + 448) = *(a2 + 448);
    goto LABEL_84;
  }

  if (!v138)
  {

    goto LABEL_83;
  }

  v143 = *(a2 + 456);
  *(a1 + 448) = v138;
  *(a1 + 456) = v143;

LABEL_84:
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 472) = *(a2 + 472);
LABEL_85:
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 488) = *(a2 + 488);

  *(a1 + 496) = *(a2 + 496);
  *(a1 + 504) = *(a2 + 504);
  v145 = *(a2 + 512);
  if (*(a1 + 512))
  {
    if (v145)
    {
      v146 = *(a2 + 520);
      *(a1 + 512) = v145;
      *(a1 + 520) = v146;

      goto LABEL_92;
    }
  }

  else if (v145)
  {
    v147 = *(a2 + 520);
    *(a1 + 512) = v145;
    *(a1 + 520) = v147;

    goto LABEL_92;
  }

  *(a1 + 512) = *(a2 + 512);
LABEL_92:
  *(a1 + 528) = *(a2 + 528);
  v148 = *(a2 + 816);
  if (*(a1 + 816))
  {
    if (v148)
    {
      *(a1 + 536) = *(a2 + 536);
      *(a1 + 544) = *(a2 + 544);

      *(a1 + 552) = *(a2 + 552);
      *(a1 + 560) = *(a2 + 560);

      *(a1 + 568) = *(a2 + 568);
      v149 = *(a2 + 576);
      *(a1 + 592) = *(a2 + 592);
      *(a1 + 576) = v149;
      v150 = (a1 + 600);
      v151 = (a2 + 600);
      v152 = *(a1 + 624);
      v153 = *(a2 + 624);
      if (v152 != 1)
      {
        if (v153 == 1)
        {
          outlined destroy of AccessibilityValueStorage(a1 + 600);
          v163 = *(a2 + 616);
          v162 = *(a2 + 632);
          *v150 = *v151;
          *(a1 + 616) = v163;
          *(a1 + 632) = v162;
        }

        else
        {
          if (v152)
          {
            if (v153)
            {
              __swift_assign_boxed_opaque_existential_1((a1 + 600), (a2 + 600));
            }

            else
            {
              outlined destroy of AnyAccessibilityValue(a1 + 600);
              v181 = *(a2 + 632);
              v182 = *(a2 + 616);
              *v150 = *v151;
              *(a1 + 616) = v182;
              *(a1 + 632) = v181;
            }
          }

          else if (v153)
          {
            *(a1 + 624) = v153;
            *(a1 + 632) = *(a2 + 632);
            (**(v153 - 8))(a1 + 600, a2 + 600);
          }

          else
          {
            v183 = *v151;
            v184 = *(a2 + 616);
            *(a1 + 632) = *(a2 + 632);
            *v150 = v183;
            *(a1 + 616) = v184;
          }

          *(a1 + 640) = *(a2 + 640);
        }

        goto LABEL_124;
      }

      if (v153)
      {
        if (v153 == 1)
        {
          v154 = *v151;
          v155 = *(a2 + 632);
          *(a1 + 616) = *(a2 + 616);
          *(a1 + 632) = v155;
          *v150 = v154;
LABEL_124:
          v185 = *(a2 + 648);
          *(a1 + 656) = *(a2 + 656);
          *(a1 + 648) = v185;
          v186 = (a1 + 664);
          v187 = (a2 + 664);
          v188 = *(a2 + 776);
          if (*(a1 + 776) == 1)
          {
            if (v188 == 1)
            {
              v189 = *(a2 + 680);
              *v186 = *v187;
              *(a1 + 680) = v189;
              v190 = *(a2 + 696);
              v191 = *(a2 + 712);
              v192 = *(a2 + 744);
              *(a1 + 728) = *(a2 + 728);
              *(a1 + 744) = v192;
              *(a1 + 696) = v190;
              *(a1 + 712) = v191;
              v193 = *(a2 + 760);
              v194 = *(a2 + 776);
              v195 = *(a2 + 792);
              *(a1 + 808) = *(a2 + 808);
              *(a1 + 776) = v194;
              *(a1 + 792) = v195;
              *(a1 + 760) = v193;
            }

            else
            {
              v203 = *v187;
              *(a1 + 672) = *(a2 + 672);
              *v186 = v203;
              v204 = *(a2 + 680);
              *(a1 + 688) = *(a2 + 688);
              *(a1 + 680) = v204;
              *(a1 + 689) = *(a2 + 689);
              *(a1 + 690) = *(a2 + 690);
              *(a1 + 691) = *(v6 + 405);
              *(a1 + 692) = *(a2 + 692);
              *(a1 + 696) = *(a2 + 696);
              *(a1 + 704) = *(a2 + 704);
              *(a1 + 712) = *(a2 + 712);
              *(a1 + 720) = *(a2 + 720);
              *(a1 + 728) = *(a2 + 728);
              *(a1 + 736) = *(a2 + 736);
              *(a1 + 744) = *(a2 + 744);
              *(a1 + 745) = *(a2 + 745);
              *(a1 + 752) = *(a2 + 752);
              *(a1 + 760) = *(a2 + 760);
              *(a1 + 768) = *(a2 + 768);
              *(a1 + 776) = *(a2 + 776);
              v205 = *(a2 + 784);
              *(a1 + 800) = *(a2 + 800);
              *(a1 + 784) = v205;
              *(a1 + 808) = *(a2 + 808);
            }
          }

          else if (v188 == 1)
          {
            outlined destroy of AccessibilityTextLayoutProperties(a1 + 664);
            v196 = *(a2 + 680);
            *v186 = *v187;
            *(a1 + 680) = v196;
            v197 = *(a2 + 744);
            v199 = *(a2 + 696);
            v198 = *(a2 + 712);
            *(a1 + 728) = *(a2 + 728);
            *(a1 + 744) = v197;
            *(a1 + 696) = v199;
            *(a1 + 712) = v198;
            v201 = *(a2 + 776);
            v200 = *(a2 + 792);
            v202 = *(a2 + 760);
            *(a1 + 808) = *(a2 + 808);
            *(a1 + 776) = v201;
            *(a1 + 792) = v200;
            *(a1 + 760) = v202;
          }

          else
          {
            v206 = *v187;
            *(a1 + 672) = *(a2 + 672);
            *v186 = v206;
            v207 = *(a2 + 680);
            *(a1 + 688) = *(a2 + 688);
            *(a1 + 680) = v207;
            *(a1 + 689) = *(a2 + 689);
            *(a1 + 690) = *(a2 + 690);
            *(a1 + 691) = *(v6 + 405);
            *(a1 + 692) = *(a2 + 692);
            *(a1 + 696) = *(a2 + 696);
            *(a1 + 704) = *(a2 + 704);
            *(a1 + 712) = *(a2 + 712);
            *(a1 + 720) = *(a2 + 720);
            *(a1 + 728) = *(a2 + 728);
            *(a1 + 736) = *(a2 + 736);
            *(a1 + 744) = *(v6 + 458);
            *(a1 + 745) = *(v6 + 459);
            *(a1 + 752) = *(a2 + 752);
            *(a1 + 760) = *(a2 + 760);
            *(a1 + 768) = *(a2 + 768);
            *(a1 + 776) = *(a2 + 776);

            v208 = *(a2 + 784);
            *(a1 + 800) = *(a2 + 800);
            *(a1 + 784) = v208;
            *(a1 + 808) = *(a2 + 808);
          }

          *(a1 + 816) = *(a2 + 816);

          *(a1 + 824) = *(a2 + 824);

          *(a1 + 832) = *(a2 + 832);

          goto LABEL_132;
        }

        *(a1 + 624) = v153;
        *(a1 + 632) = *(a2 + 632);
        (**(v153 - 8))(a1 + 600, a2 + 600);
      }

      else
      {
        v179 = *v151;
        v180 = *(a2 + 616);
        *(a1 + 632) = *(a2 + 632);
        *v150 = v179;
        *(a1 + 616) = v180;
      }

      *(a1 + 640) = *(a2 + 640);

      goto LABEL_124;
    }

    outlined destroy of PlatformItemList.Item.Accessibility(a1 + 536);
LABEL_103:
    memcpy((a1 + 536), (a2 + 536), 0x130uLL);
    goto LABEL_132;
  }

  if (!v148)
  {
    goto LABEL_103;
  }

  *(a1 + 536) = *(a2 + 536);
  *(a1 + 544) = *(a2 + 544);
  *(a1 + 552) = *(a2 + 552);
  *(a1 + 560) = *(a2 + 560);
  *(a1 + 568) = *(a2 + 568);
  v156 = *(a2 + 576);
  *(a1 + 592) = *(a2 + 592);
  *(a1 + 576) = v156;
  v157 = (a1 + 600);
  v158 = (a2 + 600);
  v159 = *(a2 + 624);

  if (!v159)
  {
    v164 = *v158;
    v165 = *(a2 + 616);
    *(a1 + 632) = *(a2 + 632);
    *v157 = v164;
    *(a1 + 616) = v165;
LABEL_111:
    *(a1 + 640) = *(a2 + 640);

    goto LABEL_112;
  }

  if (v159 != 1)
  {
    *(a1 + 624) = v159;
    *(a1 + 632) = *(a2 + 632);
    (**(v159 - 8))(a1 + 600, a2 + 600, v159);
    goto LABEL_111;
  }

  v160 = *v158;
  v161 = *(a2 + 632);
  *(a1 + 616) = *(a2 + 616);
  *(a1 + 632) = v161;
  *v157 = v160;
LABEL_112:
  v166 = *(a2 + 648);
  *(a1 + 656) = *(a2 + 656);
  *(a1 + 648) = v166;
  v167 = (a1 + 664);
  v168 = (a2 + 664);
  if (*(a2 + 776) == 1)
  {
    v169 = *(a2 + 680);
    *v167 = *v168;
    *(a1 + 680) = v169;
    v170 = *(a2 + 696);
    v171 = *(a2 + 712);
    v172 = *(a2 + 744);
    *(a1 + 728) = *(a2 + 728);
    *(a1 + 744) = v172;
    *(a1 + 696) = v170;
    *(a1 + 712) = v171;
    v173 = *(a2 + 760);
    v174 = *(a2 + 776);
    v175 = *(a2 + 792);
    *(a1 + 808) = *(a2 + 808);
    *(a1 + 776) = v174;
    *(a1 + 792) = v175;
    *(a1 + 760) = v173;
  }

  else
  {
    v176 = *v168;
    *(a1 + 672) = *(a2 + 672);
    *v167 = v176;
    v177 = *(a2 + 680);
    *(a1 + 688) = *(a2 + 688);
    *(a1 + 680) = v177;
    *(a1 + 689) = *(a2 + 689);
    *(a1 + 690) = *(a2 + 690);
    *(a1 + 691) = *(v6 + 405);
    *(a1 + 692) = *(a2 + 692);
    *(a1 + 696) = *(a2 + 696);
    *(a1 + 704) = *(a2 + 704);
    *(a1 + 712) = *(a2 + 712);
    *(a1 + 720) = *(a2 + 720);
    *(a1 + 728) = *(a2 + 728);
    *(a1 + 736) = *(a2 + 736);
    *(a1 + 744) = *(a2 + 744);
    *(a1 + 745) = *(a2 + 745);
    *(a1 + 752) = *(a2 + 752);
    *(a1 + 760) = *(a2 + 760);
    *(a1 + 768) = *(a2 + 768);
    *(a1 + 776) = *(a2 + 776);
    v178 = *(a2 + 784);
    *(a1 + 800) = *(a2 + 800);
    *(a1 + 784) = v178;
    *(a1 + 808) = *(a2 + 808);
  }

  *(a1 + 816) = *(a2 + 816);
  *(a1 + 824) = *(a2 + 824);
  *(a1 + 832) = *(a2 + 832);

LABEL_132:
  v209 = (a1 + 840);
  v210 = (a2 + 840);
  v211 = *(a1 + 864);
  v212 = *(a2 + 864);
  if (v211 == 1)
  {
    if (v212)
    {
      if (v212 == 1)
      {
        v213 = *v210;
        v214 = *(a2 + 856);
        v215 = *(a2 + 872);
        *(a1 + 888) = *(a2 + 888);
        *(a1 + 856) = v214;
        *(a1 + 872) = v215;
        *v209 = v213;
        goto LABEL_156;
      }

      *(a1 + 864) = v212;
      *(a1 + 872) = *(a2 + 872);
      (**(v212 - 8))(a1 + 840, a2 + 840);
    }

    else
    {
      v219 = *v210;
      v220 = *(a2 + 856);
      *(a1 + 872) = *(a2 + 872);
      *v209 = v219;
      *(a1 + 856) = v220;
    }

    v221 = *(a2 + 880);
    if (!v221)
    {
      goto LABEL_155;
    }

LABEL_153:
    v227 = *(a2 + 888);
    *(a1 + 880) = v221;
    *(a1 + 888) = v227;

    goto LABEL_156;
  }

  if (v212 == 1)
  {
    outlined destroy of PlatformItemList.Item.SecondaryNavigationBehavior(a1 + 840);
    v217 = *(a2 + 856);
    v216 = *(a2 + 872);
    v218 = *v210;
    *(a1 + 888) = *(a2 + 888);
    *(a1 + 856) = v217;
    *(a1 + 872) = v216;
    *v209 = v218;
    goto LABEL_156;
  }

  if (v211)
  {
    if (v212)
    {
      __swift_assign_boxed_opaque_existential_1((a1 + 840), (a2 + 840));
    }

    else
    {
      outlined destroy of AnyNavigationLinkPresentedValue(a1 + 840);
      v222 = *(a2 + 872);
      v223 = *(a2 + 856);
      *v209 = *v210;
      *(a1 + 856) = v223;
      *(a1 + 872) = v222;
    }
  }

  else if (v212)
  {
    *(a1 + 864) = v212;
    *(a1 + 872) = *(a2 + 872);
    (**(v212 - 8))(a1 + 840, a2 + 840);
  }

  else
  {
    v224 = *v210;
    v225 = *(a2 + 856);
    *(a1 + 872) = *(a2 + 872);
    *v209 = v224;
    *(a1 + 856) = v225;
  }

  v221 = *(a2 + 880);
  if (*(a1 + 880))
  {
    if (v221)
    {
      v226 = *(a2 + 888);
      *(a1 + 880) = v221;
      *(a1 + 888) = v226;

      goto LABEL_156;
    }

    goto LABEL_155;
  }

  if (v221)
  {
    goto LABEL_153;
  }

LABEL_155:
  *(a1 + 880) = *(a2 + 880);
LABEL_156:
  v228 = *(a1 + 896);
  v229 = *(a2 + 896);
  *(a1 + 896) = v229;
  v230 = v229;

  *(a1 + 904) = *(a2 + 904);
  *(a1 + 912) = *(a2 + 912);

  *(a1 + 920) = *(a2 + 920);
  *(a1 + 928) = *(a2 + 928);

  *(a1 + 936) = *(a2 + 936);

  *(a1 + 944) = *(a2 + 944);

  *(a1 + 952) = *(a2 + 952);
  *(a1 + 953) = *(a2 + 953);
  *(a1 + 954) = *(a2 + 954);
  v231 = a3[28];
  v232 = (a1 + v231);
  v233 = (a2 + v231);
  v234 = type metadata accessor for CommandOperation();
  v235 = *(v234 - 8);
  v236 = *(v235 + 48);
  LODWORD(v228) = v236(v232, 1, v234);
  v237 = v236(v233, 1, v234);
  if (!v228)
  {
    if (!v237)
    {
      v286 = a3;
      *v232 = *v233;
      v251 = *(v234 + 20);
      v252 = &v232[v251];
      v253 = &v233[v251];
      v254 = *&v233[v251];
      v255 = *&v233[v251 + 8];
      v256 = v233[v251 + 16];
      outlined copy of Text.Storage(v254, v255, v256);
      v257 = *v252;
      v258 = *(v252 + 1);
      v259 = v252[16];
      *v252 = v254;
      *(v252 + 1) = v255;
      v252[16] = v256;
      outlined consume of Text.Storage(v257, v258, v259);
      *(v252 + 3) = *(v253 + 3);

      v260 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
      v261 = type metadata accessor for UUID();
      (*(*(v261 - 8) + 24))(&v252[v260], &v253[v260], v261);
      v262 = *(v234 + 24);
      v263 = &v232[v262];
      v264 = &v233[v262];
      v265 = *&v233[v262];
      if (*v263)
      {
        a3 = v286;
        if (v265)
        {
          v266 = *(v264 + 1);
          *v263 = v265;
          v263[1] = v266;

          goto LABEL_168;
        }
      }

      else
      {
        a3 = v286;
        if (v265)
        {
          v268 = *(v264 + 1);
          *v263 = v265;
          v263[1] = v268;

          goto LABEL_168;
        }
      }

      *v263 = *v264;
      goto LABEL_168;
    }

    _s7SwiftUI16CommandOperationVWOhTm_0(v232, type metadata accessor for CommandOperation);
    goto LABEL_162;
  }

  if (v237)
  {
LABEL_162:
    _s7SwiftUI16CommandOperationVSgMaTm_0(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
    memcpy(v232, v233, *(*(v250 - 8) + 64));
    goto LABEL_168;
  }

  v282 = v233;
  v285 = a3;
  *v232 = *v233;
  v238 = *(v234 + 20);
  v239 = &v232[v238];
  v240 = &v233[v238];
  v241 = *v240;
  v242 = *(v240 + 1);
  v243 = v240[16];
  outlined copy of Text.Storage(*v240, v242, v243);
  *v239 = v241;
  *(v239 + 1) = v242;
  v239[16] = v243;
  *(v239 + 3) = *(v240 + 3);
  v244 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
  v245 = type metadata accessor for UUID();
  v279 = *(*(v245 - 8) + 16);

  v279(&v239[v244], &v240[v244], v245);
  v246 = *(v234 + 24);
  v247 = &v232[v246];
  v248 = &v282[v246];
  if (*v248)
  {
    v249 = v248[1];
    *v247 = *v248;
    v247[1] = v249;
  }

  else
  {
    *v247 = *v248;
  }

  a3 = v285;
  (*(v235 + 56))(v232, 0, 1, v234);
LABEL_168:
  *(a1 + a3[29]) = *(a2 + a3[29]);
  *(a1 + a3[30]) = *(a2 + a3[30]);
  *(a1 + a3[31]) = *(a2 + a3[31]);
  *(a1 + a3[32]) = *(a2 + a3[32]);
  *(a1 + a3[33]) = *(a2 + a3[33]);
  *(a1 + a3[34]) = *(a2 + a3[34]);

  return a1;
}
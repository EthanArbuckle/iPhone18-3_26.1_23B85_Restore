uint64_t ModifiedViewList.ListModifier.apply(to:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  if (v4)
  {
    (*(*v4 + 80))(a1);
  }

  outlined init with take of AnyTrackedValue(a1, v7);
  *(a1 + 24) = &unk_1F0084AE0;
  *(a1 + 32) = lazy protocol witness table accessor for type ModifiedViewList and conformance ModifiedViewList();
  v5 = swift_allocObject();
  *a1 = v5;
  outlined init with take of AnyTrackedValue(v7, v5 + 16);
  *(v5 + 56) = v2;
}

uint64_t _ConditionalContent<>.childInfo(metadata:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a2 + 2);
  v9 = *(a2 + 3);
  v14[1] = *(a3 + 16);
  v15 = a4;
  v16 = a5;
  v17 = *a2;
  v18 = v8;
  v19 = v9;
  type metadata accessor for (Any.Type, UniqueID?)();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v5, partial apply for closure #1 in _ConditionalContent<>.childInfo(metadata:), v14, a3, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);
  result = v20;
  v13 = v22;
  *a1 = v21;
  *(a1 + 8) = v13;
  return result;
}

void type metadata accessor for ConditionalMetadata<ViewDescriptor>()
{
  if (!lazy cache variable for type metadata for ConditionalMetadata<ViewDescriptor>)
  {
    v0 = type metadata accessor for ConditionalMetadata();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ConditionalMetadata<ViewDescriptor>);
    }
  }
}

uint64_t DynamicViewList.updateValue()(uint64_t a1)
{
  v2 = v1;
  v103 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v94 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v86 = &v78[-v7];
  v8 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v78[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for Optional();
  v93 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v89 = &v78[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v87 = &v78[-v15];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v78[-v17];
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v78[-v20];
  Value = AGGraphGetValue();
  (*(v8 + 16))(v11, Value, v4);
  v23 = *(v5 + 56);
  v96 = v5;
  v24 = v23(v21, v2, v4, v5);
  v25 = *(v8 + 8);
  v95 = v4;
  v25(v11, v4);
  v26 = a1;
  v27 = *(a1 + 52);
  v97 = v2;
  v28 = *(v2 + v27);
  v90 = v12;
  v91 = v18;
  v85 = AssociatedTypeWitness;
  v88 = v27;
  v92 = v21;
  if (v28)
  {
    v29 = v94;
    (*(v94 + 16))(v18, v28 + *(*v28 + 136), AssociatedTypeWitness);
    (*(v29 + 56))(v18, 0, 1, AssociatedTypeWitness);

    v30 = DynamicViewList.Item.matches(type:id:)(v24);
    v31 = *(v28 + 24);
    v32 = v26;
    if (v30)
    {
      if (v31)
      {
        if (AGSubgraphIsValid())
        {

          v33 = v28;
          v34 = v12;
          v35 = v92;
          goto LABEL_34;
        }

        goto LABEL_8;
      }
    }

    else if (v31)
    {
LABEL_8:
      v38 = *(v28 + 16);
      if (AGSubgraphIsValid())
      {

        v39 = v38;
        AGSubgraphApply();

        v40 = *(v28 + 16);

        AGSubgraphRemoveChild();

        v31 = *(v28 + 24);
      }

      *(v28 + 24) = v31 - 1;
      if (v31 == 1)
      {
        DynamicViewList.Item.invalidate()();
        if (AGSubgraphIsValid())
        {
          AGSubgraphRef.willInvalidate(isInserted:)(0);
          AGSubgraphInvalidate();
        }
      }

      goto LABEL_14;
    }

    *(v28 + 24) = -1;
LABEL_14:

    v36 = v97;
    *(v97 + v27) = 0;
    v37 = v95;
    goto LABEL_15;
  }

  (*(v94 + 56))(v18, 1, 1, AssociatedTypeWitness);
  v36 = v97;
  v37 = v95;
  v32 = v26;
LABEL_15:
  v41 = *(v36 + *(v32 + 48));
  swift_beginAccess();
  v84 = v41;
  v42 = *(v41 + 16);
  v83 = type metadata accessor for DynamicViewList.Item();
  v43 = type metadata accessor for Unmanaged();

  v45 = MEMORY[0x193ABF2C0](v44, v43);
  v35 = v92;
  if (!v45)
  {
    goto LABEL_27;
  }

  v46 = 4;
  while (1)
  {
    v47 = v46 - 4;
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (!IsNativeType)
    {
      break;
    }

    v33 = *(v42 + 8 * v46);
    v49 = __OFADD__(v47, 1);
    v50 = v46 - 3;
    if (v49)
    {
      goto LABEL_26;
    }

LABEL_21:

    if (!v28 || v33 != v28) && (DynamicViewList.Item.matches(type:id:)(v24))
    {

      ++*(v33 + 24);
      v71 = v97;

      AGSubgraphAddChild();
      v72 = *(v33 + 16);

      AGSubgraphApply();

      *(v71 + v88) = v33;
      v34 = v90;
LABEL_34:
      v67 = v93;
      v73 = v91;
LABEL_37:

      DynamicViewList.Item.list.getter(v99);
      v74 = v89;
      (*(v67 + 16))(v89, v73, v34);
      if (AGGraphGetCurrentAttribute() != *MEMORY[0x1E698D3F8])
      {
        type metadata accessor for ViewList();

        TransactionID.init<A>(context:)(&v98);
        v101 = type metadata accessor for DynamicViewList.WrappedList();
        WitnessTable = swift_getWitnessTable();
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v100);
        DynamicViewList.WrappedList.init(base:item:lastID:lastTransaction:)(v99, v33, v74, &v98, boxed_opaque_existential_1);
        AGGraphSetOutputValue();

        v76 = *(v67 + 8);
        v76(v73, v34);
        v76(v35, v34);
        return __swift_destroy_boxed_opaque_existential_1(v100);
      }

      __break(1u);
LABEL_41:
      __break(1u);
    }

    ++v46;
    if (v50 == MEMORY[0x193ABF2C0](v42, v43))
    {
      goto LABEL_27;
    }
  }

  v33 = _ArrayBuffer._getElementSlowPath(_:)();
  swift_unknownObjectRelease();
  v49 = __OFADD__(v47, 1);
  v50 = v46 - 3;
  if (!v49)
  {
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
LABEL_27:

  v51 = v97;
  if (AGSubgraphIsValid())
  {
    v52 = AGSubgraphGetGraph();
    v53 = AGSubgraphCreate();

    AGSubgraphAddChild();
    AGGraphClearUpdate();
    v54 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    closure #1 in DynamicViewList.updateValue()(v51, v37, v96, v100);
    AGSubgraphSetCurrent();

    v55 = v100[0];
    v56 = BYTE4(v100[0]);
    AGGraphSetUpdate();
    CurrentAttribute = AGGraphGetCurrentAttribute();
    if (CurrentAttribute != *MEMORY[0x1E698D3F8])
    {
      v79 = CurrentAttribute;
      v80 = v55;
      v81 = v56;
      v82 = v53;
      v58 = v87;
      v59 = v90;
      (*(v93 + 16))(v87, v35);
      v60 = v94;
      v61 = *(v94 + 48);
      v62 = v85;
      if (v61(v58, 1, v85) == 1)
      {
        v63 = v86;
        (*(v96 + 48))();
        v64 = v87;
        v65 = v61(v87, 1, v62);
        v66 = v63;
        v34 = v59;
        v67 = v93;
        v68 = v84;
        if (v65 != 1)
        {
          (*(v93 + 8))(v64, v34);
        }
      }

      else
      {
        v66 = v86;
        (*(v60 + 32))(v86, v58, v62);
        v34 = v59;
        v67 = v93;
        v68 = v84;
      }

      swift_allocObject();

      v33 = specialized DynamicViewList.Item.init(type:owner:list:id:isUnary:subgraph:allItems:)(v24, v79, v80, v66, v81, v82, v68);
      (*(v60 + 8))(v66, v62);
      *(v97 + v88) = v33;
      v73 = v91;
      goto LABEL_37;
    }

    goto LABEL_41;
  }

  v101 = &type metadata for EmptyViewList;
  WitnessTable = lazy protocol witness table accessor for type EmptyViewList and conformance EmptyViewList();
  type metadata accessor for ViewList();
  AGGraphSetOutputValue();

  v69 = *(v93 + 8);
  v70 = v90;
  v69(v91, v90);
  v69(v35, v70);
  return __swift_destroy_boxed_opaque_existential_1(v100);
}

void type metadata accessor for (Any.Type, UniqueID?)()
{
  if (!lazy cache variable for type metadata for (Any.Type, UniqueID?))
  {
    type metadata accessor for Any.Type();
    type metadata accessor for UniqueID?();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Any.Type, UniqueID?));
    }
  }
}

unint64_t ConditionalMetadata.childInfo<A>(ptr:emptyType:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *v5;
  v10 = *(v5 + 24);
  v16 = 0;
  v17 = 0;
  v15 = *(v5 + 8);
  v11 = *(a4 + 24);
  v13[2] = *(a4 + 16);
  v13[3] = a5;
  v13[4] = v11;
  v13[5] = &v17;
  v13[6] = &v16;
  v14 = v9;
  outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(v9);
  type metadata accessor for ConditionalTypeDescriptor();
  ConditionalTypeDescriptor.project(at:baseIndex:_:)(a2, 0, partial apply for closure #1 in ConditionalMetadata.childInfo<A>(ptr:emptyType:), v13);
  result = outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v14);
  if ((v17 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v17 >= *(v10 + 16))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  if (v16)
  {
    result = v16;
  }

  else
  {
    result = a3;
  }

  *a1 = *(v10 + 8 * v17 + 32);
  *(a1 + 8) = 0;
  return result;
}

uint64_t ConditionalTypeDescriptor.project(at:baseIndex:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t *, uint64_t), uint64_t a4)
{
  v9 = *v4 >> 62;
  if (!v9)
  {
    v18 = v4[1];
    v28 = *v4;
    v29 = v18;
    v16 = a2;
    v17 = a1;
    return a3(v16, &v28, v17);
  }

  v10 = (*v4 & 0x3FFFFFFFFFFFFFFFLL);
  if (v9 == 1)
  {
    v12 = *((*v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v11 = *((*v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v13 = v10[4];
    v14 = v10[5];
    EnumTag = AGTypeGetEnumTag();
    if (EnumTag == 1)
    {
      v28 = 0;
      v29 = 0;
      v16 = a2;
      v17 = 0;
      return a3(v16, &v28, v17);
    }

    v26 = EnumTag;
    AGTypeProjectEnumData();
    closure #1 in ConditionalTypeDescriptor.project(at:baseIndex:_:)(a1, v11, v13, v14, a2, a3, a4);
    v24 = v12;
    v25 = v26;
  }

  else
  {
    v20 = *((*v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v27 = v10[3];
    v21 = v10[4];
    v22 = v10[5];
    v23 = AGTypeGetEnumTag();
    AGTypeProjectEnumData();
    closure #2 in ConditionalTypeDescriptor.project(at:baseIndex:_:)(a1, v23, v27, v21, v22, a2, a3, a4);
    v24 = v20;
    v25 = v23;
  }

  return MEMORY[0x1EEDEECD8](v24, v25, a1);
}

uint64_t closure #1 in ConditionalMetadata.childInfo<A>(ptr:emptyType:)(uint64_t a1, __int128 *a2, uint64_t a3, void *a4, uint64_t *a5)
{
  v6 = *a2;
  *a4 = a1;
  if (v6)
  {
    type metadata accessor for TypeConformance();
    result = TypeConformance.type.getter();
  }

  else
  {
    result = 0;
  }

  *a5 = result;
  return result;
}

uint64_t closure #1 in ObservationCenter._withObservation<A>(do:)(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, void *a5)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v8 = *(StatusReg + 848);
  *(StatusReg + 848) = a1;
  result = a2();
  *(StatusReg + 848) = v8;
  if (v5)
  {
    *a5 = v5;
  }

  return result;
}

void closure #1 in closure #1 in UnwrapConditional.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22[5] = *MEMORY[0x1E69E9840];
  v11 = *(a7 - 8);
  v14 = MEMORY[0x1EEE9AC00](a1);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v17 + 32) == v18)
  {
    if (v12)
    {
      v19 = v13;
      v20 = (*(v11 + 16))(v16, v12, v13, v14);
      MEMORY[0x1EEE9AC00](v20);
      v22[1] = a5;
      v22[2] = a6;
      v22[3] = v19;
      v22[4] = a8;
      v22[-2] = type metadata accessor for UnwrapConditional();
      v22[-1] = swift_getWitnessTable();
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v16, partial apply for closure #1 in StatefulRule.value.setter, &v22[-4], v19, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v21);
      (*(v11 + 8))(v16, v19);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t UnwrapConditional.updateValue()(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 24);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Value = AGGraphGetValue();
  (*(v4 + 16))(v6, Value, v3);
  v12 = *(a1 + 16);
  v13 = v3;
  v14 = *(a1 + 32);
  v15 = v1;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v6, partial apply for closure #1 in UnwrapConditional.updateValue(), v11, v3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v8);
  return (*(v4 + 8))(v6, v3);
}

unint64_t closure #1 in UnwrapConditional.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a2 + 8);
  v9[6] = a2;
  v10 = v7;
  v11 = *(a2 + 16);
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a5;
  v9[5] = a6;
  outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(v7);
  type metadata accessor for ConditionalTypeDescriptor();
  ConditionalTypeDescriptor.project(at:baseIndex:_:)(a1, 0, partial apply for closure #1 in closure #1 in UnwrapConditional.updateValue(), v9);
  return outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v10);
}

unint64_t closure #1 in _ConditionalContent<>.childInfo(metadata:)@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  type metadata accessor for ConditionalMetadata<ViewDescriptor>();
  v5 = v4;
  v6 = type metadata accessor for _ConditionalContent();
  result = ConditionalMetadata.childInfo<A>(ptr:emptyType:)((a2 + 1), a1, &type metadata for EmptyView, v5, v6);
  *a2 = result;
  return result;
}

uint64_t getEnumTag for _ConditionalContent.Storage(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(*(a2 + 24) - 8) + 64);
  if (v2 <= *(*(*(a2 + 16) - 8) + 64))
  {
    v2 = *(*(*(a2 + 16) - 8) + 64);
  }

  v3 = a1[v2];
  v4 = v3 - 2;
  if (v3 >= 2)
  {
    if (v2 <= 3)
    {
      v5 = v2;
    }

    else
    {
      v5 = 4;
    }

    if (v5 <= 1)
    {
      if (!v5)
      {
        return v3;
      }

      v6 = *a1;
    }

    else if (v5 == 2)
    {
      v6 = *a1;
    }

    else if (v5 == 3)
    {
      v6 = *a1 | (a1[2] << 16);
    }

    else
    {
      v6 = *a1;
    }

    v7 = (v6 | (v4 << (8 * v2))) + 2;
    LODWORD(v3) = v6 + 2;
    if (v2 >= 4)
    {
      return v3;
    }

    else
    {
      return v7;
    }
  }

  return v3;
}

uint64_t closure #2 in ConditionalTypeDescriptor.project(at:baseIndex:_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a6;
  v11 = result;
  if (a2 != 1 && (v10 = a6 + a5, __OFADD__(a6, a5)))
  {
    __break(1u);
  }

  else
  {
    v12 = type metadata accessor for ConditionalTypeDescriptor();
    return ConditionalTypeDescriptor.project(at:baseIndex:_:)(v11, v10, a7, a8, v12);
  }

  return result;
}

void destructiveInjectEnumTag for _ConditionalContent.Storage(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  if (a2 > 1)
  {
    v5 = *(*(a3 + 24) - 8);
    if (*(v5 + 64) <= *(*(*(a3 + 16) - 8) + 64))
    {
      v6 = *(*(*(a3 + 16) - 8) + 64);
    }

    else
    {
      v6 = *(v5 + 64);
    }

    v7 = a2 - 2;
    if (v6 < 4)
    {
      a1[v6] = (v7 >> (8 * v6)) + 2;
      if (v6)
      {
        v9 = v7 & ~(-1 << (8 * v6));
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v9;
          a1[2] = BYTE2(v9);
        }

        else if (v6 == 2)
        {
          *a1 = v9;
        }

        else
        {
          *a1 = v7;
        }
      }
    }

    else
    {
      a1[v6] = 2;
      bzero(a1, v6);
      *a1 = v7;
    }
  }

  else
  {
    v3 = *(*(a3 + 24) - 8);
    v4 = *(*(*(a3 + 16) - 8) + 64);
    if (*(v3 + 64) > v4)
    {
      v4 = *(v3 + 64);
    }

    a1[v4] = a2;
  }
}

uint64_t partial apply for closure #1 in ObservationCenter._withObservation<A>(do:)(uint64_t a1, void *a2)
{
  return closure #1 in ObservationCenter._withObservation<A>(do:)(a1, *(v2 + 24), *(v2 + 32), *(v2 + 16), a2);
}

{
  v5 = *(v2 + 24);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v7 = *(StatusReg + 848);
  *(StatusReg + 848) = a1;
  result = v5();
  *(StatusReg + 848) = v7;
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t DynamicViewList.Item.bindID(_:)()
{
  v1 = *(*v0 + 136);
  v2 = *(v0 + *(*v0 + 144));
  v3 = v0[4];
  v4 = *(v0 + *(*v0 + 160));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return _ViewList_ID.bind<A>(explicitID:owner:isUnary:reuseID:)(v0 + v1, v2, v4, v3, AssociatedTypeWitness);
}

uint64_t DynamicViewList.Transform.apply(sublist:)(uint64_t a1)
{
  DynamicViewList.Item.bindID(_:)();

  MEMORY[0x193ABF170](v2);
  if (*((*(a1 + 72) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + 72) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

uint64_t DynamicViewList.Item.list.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ViewList();
  Value = AGGraphGetValue();

  return outlined init with copy of AnyTrackedValue(Value, a1);
}

uint64_t partial apply for closure #1 in _ConditionalContent<>.makeChildViewList(metadata:view:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 80);
  v6 = *(v2 + 88);
  v7 = type metadata accessor for _ConditionalContent();
  return ConditionalMetadata<>.makeViewList<A>(ptr:view:inputs:)(a1, v5, v6, v7, a2);
}

void type metadata accessor for MutableBox<CachedEnvironment>()
{
  if (!lazy cache variable for type metadata for MutableBox<CachedEnvironment>)
  {
    v0 = type metadata accessor for MutableBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>);
    }
  }
}

uint64_t ConditionalMetadata<>.makeViewList<A>(ptr:view:inputs:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v38 = *MEMORY[0x1E69E9840];
  v11 = *v5;
  v12 = v5[1];
  v13 = v5[2];
  outlined init with copy of _ViewListInputs(a3, v21);
  v25 = v11;
  v26 = v12;
  v27 = v13;
  v28 = a2;
  v29 = 0;
  v30 = 0;
  outlined init with take of _ViewListInputs(v21, &v31);
  memset(v32, 0, sizeof(v32));
  v33 = 0;
  v34 = 255;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v14 = v25;
  v15 = v26;
  v20[2] = a4;
  v20[3] = &v25;
  outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(v11);
  outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(v14);
  specialized ConditionalTypeDescriptor.project(at:baseIndex:_:)(a1, 0, partial apply for closure #1 in ConditionalMetadata<>.makeViewList<A>(ptr:view:inputs:), v20, v14, v15);
  outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v14);
  outlined init with copy of _ViewListOutputs?(v32, v21);
  if (BYTE8(v22) == 0xFF)
  {
    static _ViewListOutputs.emptyViewList(inputs:)(a3, a5);
    if (BYTE8(v22) != 0xFF)
    {
      outlined destroy of _ViewListOutputs?(v21);
    }
  }

  else
  {
    v16 = v23;
    *(a5 + 32) = v22;
    *(a5 + 48) = v16;
    *(a5 + 64) = v24;
    v17 = v21[1];
    *a5 = v21[0];
    *(a5 + 16) = v17;
  }

  List = type metadata accessor for ConditionalMetadata<>.MakeList();
  return (*(*(List - 8) + 8))(&v25, List);
}

uint64_t instantiation function for generic protocol witness table for UnwrapConditional<A, B, C>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t initializeWithCopy for UnwrapConditional(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(v4);
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t outlined init with copy of _ViewListOutputs?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HitTestableEvent?(0, &lazy cache variable for type metadata for _ViewListOutputs?);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *specialized DynamicViewList.Item.init(type:owner:list:id:isUnary:subgraph:allItems:)(uint64_t a1, int a2, int a3, uint64_t a4, char a5, void *a6, uint64_t a7)
{
  v8 = v7;
  v13 = *v8;
  *(v8 + 4) = a1;
  *&v8[*(v13 + 144)] = a2;
  *&v8[*(*v8 + 152)] = a3;
  v14 = *(*v8 + 136);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(&v8[v14], a4, AssociatedTypeWitness);
  v8[*(*v8 + 160)] = a5;
  *&v8[*(*v8 + 168)] = a7;
  *(v8 + 6) = 1;
  *(v8 + 2) = a6;
  swift_beginAccess();
  type metadata accessor for Unmanaged();
  type metadata accessor for Array();

  v16 = a6;

  Array.append(_:)();
  swift_endAccess();

  return v8;
}

uint64_t DynamicViewList.WrappedList.applyNodes(from:style:list:transform:to:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *a2;
  v9 = *a4;
  v19 = *(a4 + 8);
  v18[0] = *(v7 + 40);
  v18[1] = v9;
  v10 = *(a7 + 24);
  v13[2] = *(a7 + 16);
  v13[3] = v10;
  v13[5] = a1;
  v13[6] = v8;
  v14 = a3;
  v15 = BYTE4(a3) & 1;
  v16 = a5;
  v17 = a6;
  v11 = type metadata accessor for DynamicViewList.Transform();

  _ViewList_TemporarySublistTransform.withPushedItem<A, B>(_:do:)(v18, partial apply for closure #1 in DynamicViewList.WrappedList.applyNodes(from:style:list:transform:to:), v13, MEMORY[0x1E69E6370], v11, &protocol witness table for DynamicViewList<A>.Transform);

  return v20;
}

void TransactionID.init<A>(context:)(uint64_t *a1@<X8>)
{
  v2 = AGGraphGetAttributeGraph();
  Counter = AGGraphGetCounter();

  *a1 = Counter;
}

uint64_t DynamicViewList.WrappedList.init(base:item:lastID:lastTransaction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a4;
  outlined init with take of _ViewList_Elements(a1, a5);
  *(a5 + 40) = a2;
  v9 = type metadata accessor for DynamicViewList.WrappedList();
  v10 = *(v9 + 40);
  swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for Optional();
  result = (*(*(v11 - 8) + 32))(a5 + v10, a3, v11);
  *(a5 + *(v9 + 44)) = v8;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for DynamicViewList.WrappedList(uint64_t a1, uint64_t *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 80);
  v7 = v6;
  if (*(v5 + 84))
  {
    v8 = *(v5 + 64);
  }

  else
  {
    v8 = *(v5 + 64) + 1;
  }

  v9 = v6 & 0x100000;
  if (v7 > 7 || v9 != 0 || ((v8 + ((v7 + 48) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = v12 + ((v7 & 0xF8 ^ 0x1F8) & (v7 + 16));
  }

  else
  {
    v13 = AssociatedTypeWitness;
    v14 = *(a2 + 3);
    *(a1 + 24) = v14;
    (**(v14 - 8))(a1, a2);
    v15 = ((a2 + 47) & 0xFFFFFFFFFFFFFFF8);
    v16 = v15 + 1;
    v17 = ((a1 + 47) & 0xFFFFFFFFFFFFFFF8);
    *v17 = *v15;
    v18 = v17 + 1;
    v19 = *(v5 + 48);

    if (v19(v16, 1, v13))
    {
      memcpy(v18, v16, v8);
    }

    else
    {
      (*(v5 + 16))(v18, v16, v13);
      (*(v5 + 56))(v18, 0, 1, v13);
    }

    *((((a1 + 47) & 0xFFFFFFFFFFFFFFF8) + v8 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v15 + v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  }

  return a1;
}

unint64_t lazy protocol witness table accessor for type MergedEnvironment and conformance MergedEnvironment()
{
  result = lazy protocol witness table cache variable for type MergedEnvironment and conformance MergedEnvironment;
  if (!lazy protocol witness table cache variable for type MergedEnvironment and conformance MergedEnvironment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MergedEnvironment and conformance MergedEnvironment);
  }

  return result;
}

uint64_t _s7SwiftUI12_GraphInputsV19recordReusableInput33_9FF97745734808976F608CE0DC13C39CLLyyxmAA0cG0RzAA0cF05ValueRpzlFAA05_ViewD0VAAE18ScrapeableParentID010_0EC4D15D4T21D8FD0340271BA6BA4D1B4LLV_Ttg5()
{
  v1 = &static GraphReuseOptions.overrideValue;
  result = swift_beginAccess();
  if (byte_1EAB273F0 == 1)
  {
    if (one-time initialization token for defaultsValue != -1)
    {
      result = swift_once();
    }

    v1 = &static GraphReuseOptions.defaultsValue;
  }

  if ((*v1 & 8) != 0)
  {
    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v3 = *v0;
    BloomFilter.init(hashValue:)(&type metadata for ReusableInputs);
    v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA14ReusableInputsV_Tt0B5(v3, v10);
    if (v4)
    {
      v5 = (v4 + 72);
      v6 = (v4 + 80);
    }

    else
    {
      v5 = &static ReusableInputs.defaultValue;
      v6 = &qword_1ED566B30;
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }
    }

    v7 = *v5;
    v8 = *v6;

    if (!v8 || *(v8 + 16) != &type metadata for _ViewInputs.ScrapeableParentID)
    {
      v9 = swift_allocObject();
      v9[2] = &type metadata for _ViewInputs.ScrapeableParentID;
      v9[3] = &protocol witness table for _ViewInputs.ScrapeableParentID;
      v9[4] = v8;

      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA14ReusableInputsV_Tt2B5(v0, v7 | v10, v9);
    }
  }

  return result;
}

uint64_t sub_18D07C7D4()
{

  return swift_deallocObject();
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE18ScrapeableParentID010_0EC4D15D4N21D8FD0340271BA6BA4D1B4LLV_Tt2B5(uint64_t *a1, int a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v4, v7);
  if (!result || *(result + 72) != a2)
  {
    v6 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<_ViewInputs.ScrapeableParentID>, &type metadata for _ViewInputs.ScrapeableParentID, &protocol witness table for _ViewInputs.ScrapeableParentID, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for _ViewInputs.ScrapeableParentID, 0, v6);
  }

  return result;
}

uint64_t _ViewInputs.pushModifierBody<A>(_:body:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = a2;
  v5[1] = a3;
  v6 = 0;
  v3 = type metadata accessor for BodyInput();
  return _ViewInputs.append<A, B>(_:to:)(v5, v3, v3, &type metadata for BodyInputElement, &protocol witness table for BodyInput<A>, &protocol witness table for BodyInputElement);
}

uint64_t static PlaceholderContentView._makeView(view:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  type metadata accessor for PlaceholderContentView();
  v10 = v4;
  return static ViewModifierContentProvider.providerMakeView(view:inputs:)(v8, a3);
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(uint64_t result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~*(result + 56)) != 0)
      {
        result = *(result + 40);
        if (!result)
        {
          return result;
        }
      }

      if (*(result + 24))
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(*(result + 24));
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for DisplayList.Options)
      {
        result = *(result + 32);
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v5;
  }

  return result;
}

uint64_t destroy for AnimatableAttribute(uint64_t a1)
{
  v1 = (a1 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = (*(v3 + 80) + ((((v1 + (*(v3 + 80) | 7) + 4) & ~*(v3 + 80) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 4) & ~*(v3 + 80);
  if (!(*(v3 + 48))(v4, 1, AssociatedTypeWitness))
  {
    (*(v3 + 8))(v4, AssociatedTypeWitness);
  }
}

uint64_t specialized _NativeSet.resize(capacity:)()
{
  v1 = v0;
  v2 = *v0;
  type metadata accessor for _SetStorage<AGAttribute>();
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v24 = v1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 4 * (v13 | (v5 << 6)));
      result = MEMORY[0x193AC1150](*(v4 + 40), v16, 4);
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 4 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    if (v7 >= 64)
    {
      bzero((v2 + 56), 8 * v10);
    }

    else
    {
      *v6 = -1 << v7;
    }

    v1 = v24;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

{
  v1 = v0;
  v2 = *v0;
  type metadata accessor for _SetStorage<ObjectIdentifier>(0, &lazy cache variable for type metadata for _SetStorage<ObjectIdentifier>);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v24 = v1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = MEMORY[0x193AC1170](*(v4 + 40), v16);
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    if (v7 >= 64)
    {
      bzero((v2 + 56), 8 * v10);
    }

    else
    {
      *v6 = -1 << v7;
    }

    v1 = v24;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

{
  v1 = v0;
  v2 = *v0;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<AttributedString.AnyAttribute>, lazy protocol witness table accessor for type AttributedString.AnyAttribute and conformance AttributedString.AnyAttribute, &type metadata for AttributedString.AnyAttribute, MEMORY[0x1E69E6A10]);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v19 = *v17;
      v18 = v17[1];
      Hasher.init(_seed:)();
      if (v18 < 0)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        dispatch thunk of static AttributedStringKey.name.getter();
      }

      String.hash(into:)();

      result = Hasher._finalize()();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v19;
      v13[1] = v18;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

{
  v1 = v0;
  v35 = type metadata accessor for Date.ComponentsFormatStyle.Field();
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  type metadata accessor for _SetStorage<Date.ComponentsFormatStyle.Field>();
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      lazy protocol witness table accessor for type CGSize and conformance CGSize(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field, MEMORY[0x1E6969498]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

{
  v1 = v0;
  v35 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  type metadata accessor for _SetStorage<Duration.UnitsFormatStyle.Unit>();
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      lazy protocol witness table accessor for type CGSize and conformance CGSize(&lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Unit and conformance Duration.UnitsFormatStyle.Unit, MEMORY[0x1E696A1C0]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

{
  v1 = v0;
  v2 = *v0;
  type metadata accessor for _SetStorage<ObjectIdentifier>(0, &lazy cache variable for type metadata for _SetStorage<AnyHashable>);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = *(v2 + 48) + 40 * (v14 | (v5 << 6));
      v26 = *v17;
      v27 = *(v17 + 16);
      v28 = *(v17 + 32);
      result = AnyHashable._rawHashValue(seed:)(*(v4 + 40));
      v18 = -1 << *(v4 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + 40 * v12;
      *v13 = v26;
      *(v13 + 16) = v27;
      *(v13 + 32) = v28;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      bzero((v2 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v25;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

{
  v1 = v0;
  v2 = *v0;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<GlassContainer.Entry.StableID>, lazy protocol witness table accessor for type GlassContainer.Entry.StableID and conformance GlassContainer.Entry.StableID, &type metadata for GlassContainer.Entry.StableID, MEMORY[0x1E69E6A10]);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      Hasher.init(_seed:)();
      MEMORY[0x193AC11A0](v16);
      result = Hasher._finalize()();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

{
  v1 = v0;
  v2 = *v0;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<GlassContainer.Item.ID>, lazy protocol witness table accessor for type GlassContainer.Item.ID and conformance GlassContainer.Item.ID, &type metadata for GlassContainer.Item.ID, MEMORY[0x1E69E6A10]);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v29 = v2;
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = *(v2 + 48) + 24 * (v14 | (v5 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v18);
      if (v19)
      {
        Hasher._combine(_:)(1u);
        (*(*v19 + 120))(v30);
        MEMORY[0x193AC11A0](v20);
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
      v21 = -1 << *(v4 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + 24 * v12;
      *v13 = v18;
      *(v13 + 8) = v19;
      *(v13 + 16) = v20;
      ++*(v4 + 16);
      v2 = v29;
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v2 + 32);
    if (v28 >= 64)
    {
      bzero(v6, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v28;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

{
  v1 = v0;
  v2 = *v0;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<GlassContainer.Entry.ModelID>, lazy protocol witness table accessor for type GlassContainer.Entry.ModelID and conformance GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, MEMORY[0x1E69E6A10]);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v30 = v2;
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (1)
    {
      if (!v9)
      {
        v15 = v5;
        while (1)
        {
          v5 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            __break(1u);
            goto LABEL_38;
          }

          if (v5 >= v10)
          {
            break;
          }

          v16 = v6[v5];
          ++v15;
          if (v16)
          {
            v14 = __clz(__rbit64(v16));
            v9 = (v16 - 1) & v16;
            goto LABEL_15;
          }
        }

        v29 = 1 << *(v2 + 32);
        if (v29 >= 64)
        {
          bzero(v6, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v6 = -1 << v29;
        }

        v1 = v0;
        *(v2 + 16) = 0;
        goto LABEL_36;
      }

      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = *(v2 + 48) + 40 * (v14 | (v5 << 6));
      v18 = *(v17 + 8);
      v19 = *(v17 + 16);
      v31 = *(v17 + 24);
      *v32 = *v17;
      v20 = *(v17 + 32);
      Hasher.init(_seed:)();
      if (!v20)
      {
        break;
      }

      if (v20 != 1)
      {
        v21 = 0;
        goto LABEL_21;
      }

      MEMORY[0x193AC11A0](2);
      Hasher._combine(_:)(v32[0]);
      if (v18)
      {
        Hasher._combine(_:)(1u);
        (*(*v18 + 120))(v33);
        v21 = v19;
LABEL_21:
        MEMORY[0x193AC11A0](v21);
        goto LABEL_22;
      }

      Hasher._combine(_:)(0);
LABEL_22:
      result = Hasher._finalize()();
      v22 = -1 << *(v4 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v11 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v11 + 8 * v24);
          if (v28 != -1)
          {
            v12 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v23) & ~*(v11 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + 40 * v12;
      *v13 = *v32;
      *(v13 + 8) = v18;
      *(v13 + 16) = v19;
      *(v13 + 24) = v31;
      *(v13 + 32) = v20;
      ++*(v4 + 16);
      v2 = v30;
    }

    MEMORY[0x193AC11A0](1);
    _Glass.Variant.ID.hash(into:)(v33);
    Hasher._combine(_:)(BYTE1(v18) & 1);
    (*(*v19 + 120))(v33);
    v21 = v31;
    goto LABEL_21;
  }

LABEL_36:

  *v1 = v4;
  return result;
}

{
  v1 = v0;
  v2 = *v0;
  type metadata accessor for _SetStorage<ObjectIdentifier>(0, &lazy cache variable for type metadata for _SetStorage<String>);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

{
  v1 = v0;
  v2 = *v0;
  type metadata accessor for _SetStorage<AttributedString.WritingDirection?>();
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      Hasher.init(_seed:)();
      if (v16 == 2)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        AttributedString.WritingDirection.hash(into:)();
      }

      result = Hasher._finalize()();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

{
  v1 = v0;
  v2 = *v0;
  type metadata accessor for _SetStorage<ObjectIdentifier>(0, &lazy cache variable for type metadata for _SetStorage<UInt32>);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v24 = v1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 4 * (v13 | (v5 << 6)));
      result = MEMORY[0x193AC1150](*(v4 + 40), v16, 4);
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 4 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    if (v7 >= 64)
    {
      bzero((v2 + 56), 8 * v10);
    }

    else
    {
      *v6 = -1 << v7;
    }

    v1 = v24;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

{
  v1 = v0;
  v2 = *v0;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<Axis>, lazy protocol witness table accessor for type Axis and conformance Axis, &type metadata for Axis, MEMORY[0x1E69E6A10]);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v16);
      result = Hasher._finalize()();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

{
  v1 = v0;
  v2 = *v0;
  type metadata accessor for _SetStorage<CTFontRef>();
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      Hasher.init(_seed:)();
      type metadata accessor for CTFontRef(0);
      lazy protocol witness table accessor for type CGSize and conformance CGSize(&lazy protocol witness table cache variable for type CTFontRef and conformance CTFontRef, type metadata accessor for CTFontRef);
      _CFObject.hash(into:)();
      result = Hasher._finalize()();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

{
  v1 = v0;
  v2 = *v0;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<EventID>, lazy protocol witness table accessor for type EventID and conformance EventID, &type metadata for EventID, MEMORY[0x1E69E6A10]);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();
      MEMORY[0x193AC11A0](v18);
      MEMORY[0x193AC11A0](v19);
      result = Hasher._finalize()();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

{
  v1 = *v0;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<DefaultDescriptionAttribute>, lazy protocol witness table accessor for type DefaultDescriptionAttribute and conformance DefaultDescriptionAttribute, &type metadata for DefaultDescriptionAttribute, MEMORY[0x1E69E6A10]);
  result = static _SetStorage.resize(original:capacity:move:)();
  v3 = result;
  if (*(v1 + 16))
  {
    v4 = 0;
    v5 = (v1 + 56);
    v6 = 1 << *(v1 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v1 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v23 = *(*(v1 + 48) + (v12 | (v4 << 6)));
      Hasher.init(_seed:)();
      DefaultDescriptionAttribute.rawValue.getter();
      String.hash(into:)();

      result = Hasher._finalize()();
      v15 = -1 << *(v3 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v10 + 8 * (v16 >> 6))) == 0)
      {
        v18 = 0;
        v19 = (63 - v15) >> 6;
        while (++v17 != v19 || (v18 & 1) == 0)
        {
          v20 = v17 == v19;
          if (v17 == v19)
          {
            v17 = 0;
          }

          v18 |= v20;
          v21 = *(v10 + 8 * v17);
          if (v21 != -1)
          {
            v11 = __clz(__rbit64(~v21)) + (v17 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v11 = __clz(__rbit64((-1 << v16) & ~*(v10 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v3 + 48) + v11) = v23;
      ++*(v3 + 16);
    }

    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v4 >= v9)
      {
        break;
      }

      v14 = v5[v4];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    v22 = 1 << *(v1 + 32);
    if (v22 >= 64)
    {
      bzero((v1 + 56), ((v22 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v5 = -1 << v22;
    }

    *(v1 + 16) = 0;
  }

  *v0 = v3;
  return result;
}

{
  v1 = v0;
  v2 = *v0;
  type metadata accessor for _SetStorage<NSAttributedStringKey>();
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v26 = v0;
    v27 = v2;
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v17 = Hasher._finalize()();

      v18 = -1 << *(v4 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
      v2 = v27;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      bzero(v6, ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v25;
    }

    v1 = v26;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

{
  v1 = v0;
  v2 = *v0;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<AnyHashable2>, lazy protocol witness table accessor for type AnyHashable2 and conformance AnyHashable2, &type metadata for AnyHashable2, MEMORY[0x1E69E6A10]);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      Hasher.init(_seed:)();
      (*(*v16 + 120))(v25);
      result = Hasher._finalize()();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

{
  v1 = v0;
  v2 = *v0;
  type metadata accessor for _SetStorage<AnyKeyPath>();
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      type metadata accessor for AnyKeyPath();
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

{
  v1 = v0;
  v2 = *v0;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<CAHostingLayerEvent.MouseButton>, lazy protocol witness table accessor for type CAHostingLayerEvent.MouseButton and conformance CAHostingLayerEvent.MouseButton, &type metadata for CAHostingLayerEvent.MouseButton, MEMORY[0x1E69E6A10]);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      Hasher.init(_seed:)();
      MEMORY[0x193AC11A0](v16);
      result = Hasher._finalize()();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

{
  v1 = v0;
  v2 = *v0;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<_ProposedSize>, lazy protocol witness table accessor for type _ProposedSize and conformance _ProposedSize, &type metadata for _ProposedSize, MEMORY[0x1E69E6A10]);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v31 = v2;
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (1)
    {
      if (!v9)
      {
        v15 = v5;
        while (1)
        {
          v5 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            __break(1u);
            goto LABEL_41;
          }

          if (v5 >= v10)
          {
            break;
          }

          v16 = v6[v5];
          ++v15;
          if (v16)
          {
            v14 = __clz(__rbit64(v16));
            v9 = (v16 - 1) & v16;
            goto LABEL_15;
          }
        }

        v30 = 1 << *(v2 + 32);
        if (v30 >= 64)
        {
          bzero(v6, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v6 = -1 << v30;
        }

        v1 = v0;
        *(v2 + 16) = 0;
        break;
      }

      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = *(v2 + 48) + 32 * (v14 | (v5 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      v32 = *(v17 + 24);
      Hasher.init(_seed:)();
      if (v19 == 1)
      {
        Hasher._combine(_:)(0);
        if (v32)
        {
          goto LABEL_25;
        }
      }

      else
      {
        Hasher._combine(_:)(1u);
        if ((v18 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v22 = v18;
        }

        else
        {
          v22 = 0;
        }

        MEMORY[0x193AC11E0](v22);
        if (v32)
        {
LABEL_25:
          Hasher._combine(_:)(0);
          goto LABEL_26;
        }
      }

      Hasher._combine(_:)(1u);
      if ((v20 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }

      MEMORY[0x193AC11E0](v21);
LABEL_26:
      result = Hasher._finalize()();
      v23 = -1 << *(v4 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v11 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v11 + 8 * v25);
          if (v29 != -1)
          {
            v12 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_41:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v24) & ~*(v11 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + 32 * v12;
      *v13 = v18;
      *(v13 + 8) = v19;
      *(v13 + 16) = v20;
      *(v13 + 24) = v32;
      ++*(v4 + 16);
      v2 = v31;
    }
  }

  *v1 = v4;
  return result;
}

{
  v1 = v0;
  v2 = *v0;
  type metadata accessor for _SetStorage<ObjectIdentifier>(0, &lazy cache variable for type metadata for _SetStorage<Int>);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v24 = v1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = MEMORY[0x193AC1170](*(v4 + 40), v16);
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    if (v7 >= 64)
    {
      bzero((v2 + 56), 8 * v10);
    }

    else
    {
      *v6 = -1 << v7;
    }

    v1 = v24;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t type metadata completion function for AnimatableAttribute()
{
  result = type metadata accessor for AnimatableAttributeHelper();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance AnimatableAttribute<A>()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t instantiation function for generic protocol witness table for AnimatableAttribute<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)()
{
  v1 = v0;
  v2 = *v0;
  type metadata accessor for _SetStorage<AGAttribute>();
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 4 * (v12 | (v5 << 6)));
      result = MEMORY[0x193AC1150](*(v4 + 40), v15, 4);
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 4 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_24;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v2 = *v0;
  type metadata accessor for _SetStorage<ObjectIdentifier>(0, &lazy cache variable for type metadata for _SetStorage<ObjectIdentifier>);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = MEMORY[0x193AC1170](*(v4 + 40), v15);
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_24;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v2 = *v0;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<DisplayList.ViewUpdater.ViewCache.Key>, lazy protocol witness table accessor for type DisplayList.ViewUpdater.ViewCache.Key and conformance DisplayList.ViewUpdater.ViewCache.Key, &type metadata for DisplayList.ViewUpdater.ViewCache.Key, MEMORY[0x1E69E6A10]);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v30 = v1;
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v31 = (v7 + 63) >> 6;
    v32 = v2;
    v10 = result + 56;
    v33 = result;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v34 = (v9 - 1) & v9;
LABEL_15:
      v16 = *(v2 + 48) + 20 * (v13 | (v5 << 6));
      v18 = *v16;
      v17 = *(v16 + 4);
      v19 = *(v16 + 8);
      v20 = *(v16 + 12);
      v21 = *(v16 + 16);
      v22 = *(v16 + 17);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v18);
      Hasher._combine(_:)(v17);
      Hasher._combine(_:)(v19);
      Hasher._combine(_:)(v20);
      Hasher._combine(_:)(v21);
      Hasher._combine(_:)(v22);
      result = Hasher._finalize()();
      v4 = v33;
      v23 = -1 << *(v33 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v10 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v10 + 8 * v25);
          if (v29 != -1)
          {
            v11 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v24) & ~*(v10 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = *(v33 + 48) + 20 * v11;
      *v12 = v18;
      *(v12 + 4) = v17;
      *(v12 + 8) = v19;
      *(v12 + 12) = v20;
      *(v12 + 16) = v21;
      *(v12 + 17) = v22;
      ++*(v33 + 16);
      v2 = v32;
      v9 = v34;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v31)
      {

        v1 = v30;
        goto LABEL_26;
      }

      v15 = *(v6 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v34 = (v15 - 1) & v15;
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
    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v2 = *v0;
  type metadata accessor for _SetStorage<ObjectIdentifier>(0, &lazy cache variable for type metadata for _SetStorage<UInt32>);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 4 * (v12 | (v5 << 6)));
      result = MEMORY[0x193AC1150](*(v4 + 40), v15, 4);
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 4 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_24;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v2 = *v0;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<AttributedString.AnyAttribute>, lazy protocol witness table accessor for type AttributedString.AnyAttribute and conformance AttributedString.AnyAttribute, &type metadata for AttributedString.AnyAttribute, MEMORY[0x1E69E6A10]);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v28 = v2;
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = *(v2 + 48) + 16 * (v14 | (v5 << 6));
      v19 = *v17;
      v18 = *(v17 + 8);
      Hasher.init(_seed:)();
      if (v18 < 0)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;
      }

      else
      {
        dispatch thunk of static AttributedStringKey.name.getter();
      }

      String.hash(into:)();

      result = Hasher._finalize()();
      v21 = -1 << *(v4 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v19;
      v13[1] = v18;
      ++*(v4 + 16);
      v2 = v28;
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v0;
        goto LABEL_29;
      }

      v16 = *(v6 + 8 * v5);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v32 = type metadata accessor for Date.ComponentsFormatStyle.Field();
  v2 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  type metadata accessor for _SetStorage<Date.ComponentsFormatStyle.Field>();
  v6 = static _SetStorage.resize(original:capacity:move:)();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
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
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      lazy protocol witness table accessor for type CGSize and conformance CGSize(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field, MEMORY[0x1E6969498]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
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

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v1 = v6;
  }

  return result;
}

{
  v1 = v0;
  v32 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v2 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  type metadata accessor for _SetStorage<Duration.UnitsFormatStyle.Unit>();
  v6 = static _SetStorage.resize(original:capacity:move:)();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
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
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      lazy protocol witness table accessor for type CGSize and conformance CGSize(&lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Unit and conformance Duration.UnitsFormatStyle.Unit, MEMORY[0x1E696A1C0]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
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

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v1 = v6;
  }

  return result;
}

{
  v1 = v0;
  v2 = *v0;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<Subview.ID>, lazy protocol witness table accessor for type Subview.ID and conformance Subview.ID, &type metadata for Subview.ID, MEMORY[0x1E69E6A10]);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v34 = v1;
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    v35 = v10;
    v36 = result;
    v37 = v2;
    while (v9)
    {
      v15 = __clz(__rbit64(v9));
      v40 = (v9 - 1) & v9;
LABEL_15:
      v18 = *(v2 + 48) + 16 * (v15 | (v5 << 6));
      v19 = *v18;
      v20 = *(v18 + 4);
      v21 = *(v18 + 8);
      Hasher.init(_seed:)();
      v39 = v19;
      Hasher._combine(_:)(v19);
      v38 = v20;
      Hasher._combine(_:)(v20);
      v22 = *(v21 + 16);
      v41 = v21;
      if (v22)
      {

        v23 = (v21 + 48);
        do
        {
          v24 = *(v23 - 2);
          v25 = *v23;
          v23 += 6;
          v26 = *(*v24 + 120);

          v26(v42);
          Hasher._combine(_:)(v25);

          --v22;
        }

        while (v22);
      }

      else
      {
      }

      result = Hasher._finalize()();
      v4 = v36;
      v27 = -1 << *(v36 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v11 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v2 = v37;
        v13 = v41;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v11 + 8 * v29);
          if (v33 != -1)
          {
            v12 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_33;
      }

      v12 = __clz(__rbit64((-1 << v28) & ~*(v11 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v2 = v37;
      v13 = v41;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v14 = *(v36 + 48) + 16 * v12;
      *v14 = v39;
      *(v14 + 4) = v38;
      *(v14 + 8) = v13;
      ++*(v36 + 16);
      v10 = v35;
      v9 = v40;
    }

    v16 = v5;
    while (1)
    {
      v5 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v34;
        goto LABEL_31;
      }

      v17 = *(v6 + 8 * v5);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v40 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

LABEL_31:
    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v2 = *v0;
  type metadata accessor for _SetStorage<ObjectIdentifier>(0, &lazy cache variable for type metadata for _SetStorage<AnyHashable>);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * (v15 | (v5 << 6)), v25);
      result = AnyHashable._rawHashValue(seed:)(*(v4 + 40));
      v18 = -1 << *(v4 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v10 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v10 + 8 * v20);
          if (v24 != -1)
          {
            v11 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v19) & ~*(v10 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = *(v4 + 48) + 40 * v11;
      v13 = v25[0];
      v14 = v25[1];
      *(v12 + 32) = v26;
      *v12 = v13;
      *(v12 + 16) = v14;
      ++*(v4 + 16);
    }

    v16 = v5;
    while (1)
    {
      v5 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v17 = *(v2 + 56 + 8 * v5);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v8 = (v17 - 1) & v17;
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
    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v2 = *v0;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<GlassContainer.Entry.StableID>, lazy protocol witness table accessor for type GlassContainer.Entry.StableID and conformance GlassContainer.Entry.StableID, &type metadata for GlassContainer.Entry.StableID, MEMORY[0x1E69E6A10]);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      Hasher.init(_seed:)();
      MEMORY[0x193AC11A0](v15);
      result = Hasher._finalize()();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
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
    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v2 = *v0;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<GlassContainer.Item.ID>, lazy protocol witness table accessor for type GlassContainer.Item.ID and conformance GlassContainer.Item.ID, &type metadata for GlassContainer.Item.ID, MEMORY[0x1E69E6A10]);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v29 = (v6 + 63) >> 6;
    v9 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(v2 + 48) + 24 * (v12 | (v5 << 6));
      v16 = *v15;
      v17 = *(v15 + 8);
      v18 = *(v15 + 16);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v16);
      if (v17)
      {
        Hasher._combine(_:)(1u);
        v30 = v18;
        v19 = v16;
        v20 = v8;
        v21 = *(*v17 + 120);

        v21(v31);
        v8 = v20;
        v16 = v19;
        v18 = v30;
        MEMORY[0x193AC11A0](v30);
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
      v22 = -1 << *(v4 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v9 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v9 + 8 * v24);
          if (v28 != -1)
          {
            v10 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v10 = __clz(__rbit64((-1 << v23) & ~*(v9 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v9 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      v11 = *(v4 + 48) + 24 * v10;
      *v11 = v16;
      *(v11 + 8) = v17;
      *(v11 + 16) = v18;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v29)
      {

        v1 = v0;
        goto LABEL_29;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v2 = *v0;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<GlassContainer.Entry.ModelID>, lazy protocol witness table accessor for type GlassContainer.Entry.ModelID and conformance GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, MEMORY[0x1E69E6A10]);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (!*(v2 + 16))
  {

LABEL_34:
    *v1 = v4;
    return result;
  }

  v30 = v2;
  v5 = 0;
  v6 = v2 + 56;
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  while (v9)
  {
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_15:
    v17 = *(v2 + 48) + 40 * (v14 | (v5 << 6));
    v18 = *(v17 + 8);
    v19 = *(v17 + 16);
    v31 = *(v17 + 24);
    v32 = *v17;
    v20 = *(v17 + 32);
    Hasher.init(_seed:)();
    if (!v20)
    {
      MEMORY[0x193AC11A0](1);
      outlined copy of _Glass.Variant.ID(v32, v18);

      _Glass.Variant.ID.hash(into:)(v33);
      Hasher._combine(_:)(BYTE1(v18) & 1);
      (*(*v19 + 120))(v33);
      v21 = v31;
      goto LABEL_21;
    }

    if (v20 != 1)
    {
      v21 = 0;
      goto LABEL_21;
    }

    MEMORY[0x193AC11A0](2);
    Hasher._combine(_:)(v32);
    if (v18)
    {
      Hasher._combine(_:)(1u);
      v29 = *(*v18 + 120);

      v29(v33);
      v21 = v19;
LABEL_21:
      MEMORY[0x193AC11A0](v21);
      goto LABEL_22;
    }

    Hasher._combine(_:)(0);
LABEL_22:
    result = Hasher._finalize()();
    v22 = -1 << *(v4 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v11 + 8 * (v23 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v22) >> 6;
      while (++v24 != v26 || (v25 & 1) == 0)
      {
        v27 = v24 == v26;
        if (v24 == v26)
        {
          v24 = 0;
        }

        v25 |= v27;
        v28 = *(v11 + 8 * v24);
        if (v28 != -1)
        {
          v12 = __clz(__rbit64(~v28)) + (v24 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_36;
    }

    v12 = __clz(__rbit64((-1 << v23) & ~*(v11 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
    v13 = *(v4 + 48) + 40 * v12;
    *v13 = v32;
    *(v13 + 8) = v18;
    *(v13 + 16) = v19;
    *(v13 + 24) = v31;
    *(v13 + 32) = v20;
    ++*(v4 + 16);
    v2 = v30;
  }

  v15 = v5;
  while (1)
  {
    v5 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v5 >= v10)
    {

      v1 = v0;
      goto LABEL_34;
    }

    v16 = *(v6 + 8 * v5);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v9 = (v16 - 1) & v16;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

{
  v1 = v0;
  v2 = *v0;
  type metadata accessor for _SetStorage<ObjectIdentifier>(0, &lazy cache variable for type metadata for _SetStorage<String>);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
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
    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v2 = *v0;
  type metadata accessor for _SetStorage<AttributedString.WritingDirection?>();
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      Hasher.init(_seed:)();
      if (v15 == 2)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        AttributedString.WritingDirection.hash(into:)();
      }

      result = Hasher._finalize()();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_29;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v2 = *v0;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<Axis>, lazy protocol witness table accessor for type Axis and conformance Axis, &type metadata for Axis, MEMORY[0x1E69E6A10]);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v15);
      result = Hasher._finalize()();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
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
    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v2 = *v0;
  type metadata accessor for _SetStorage<CTFontRef>();
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      Hasher.init(_seed:)();
      type metadata accessor for CTFontRef(0);
      lazy protocol witness table accessor for type CGSize and conformance CGSize(&lazy protocol witness table cache variable for type CTFontRef and conformance CTFontRef, type metadata accessor for CTFontRef);
      v16 = v15;
      _CFObject.hash(into:)();
      result = Hasher._finalize()();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v10 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v10 + 8 * v19);
          if (v23 != -1)
          {
            v11 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v16;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
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
    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v2 = *v0;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<EventID>, lazy protocol witness table accessor for type EventID and conformance EventID, &type metadata for EventID, MEMORY[0x1E69E6A10]);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      Hasher.init(_seed:)();
      MEMORY[0x193AC11A0](v17);
      MEMORY[0x193AC11A0](v18);
      result = Hasher._finalize()();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
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
    *v1 = v4;
  }

  return result;
}

{
  v1 = *v0;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<DefaultDescriptionAttribute>, lazy protocol witness table accessor for type DefaultDescriptionAttribute and conformance DefaultDescriptionAttribute, &type metadata for DefaultDescriptionAttribute, MEMORY[0x1E69E6A10]);
  result = static _SetStorage.resize(original:capacity:move:)();
  v3 = result;
  if (*(v1 + 16))
  {
    v4 = 0;
    v5 = 1 << *(v1 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(v1 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = result + 56;
    while (v7)
    {
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_15:
      v21 = *(*(v1 + 48) + (v11 | (v4 << 6)));
      Hasher.init(_seed:)();
      DefaultDescriptionAttribute.rawValue.getter();
      String.hash(into:)();

      result = Hasher._finalize()();
      v14 = -1 << *(v3 + 32);
      v15 = result & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v9 + 8 * (v15 >> 6))) == 0)
      {
        v17 = 0;
        v18 = (63 - v14) >> 6;
        while (++v16 != v18 || (v17 & 1) == 0)
        {
          v19 = v16 == v18;
          if (v16 == v18)
          {
            v16 = 0;
          }

          v17 |= v19;
          v20 = *(v9 + 8 * v16);
          if (v20 != -1)
          {
            v10 = __clz(__rbit64(~v20)) + (v16 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v10 = __clz(__rbit64((-1 << v15) & ~*(v9 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v9 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      *(*(v3 + 48) + v10) = v21;
      ++*(v3 + 16);
    }

    v12 = v4;
    while (1)
    {
      v4 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        goto LABEL_24;
      }

      v13 = *(v1 + 56 + 8 * v4);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v7 = (v13 - 1) & v13;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v0 = v3;
  }

  return result;
}

{
  v1 = v0;
  v2 = *v0;
  type metadata accessor for _SetStorage<NSAttributedStringKey>();
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v26 = v0;
    v27 = v2;
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v17 = v16;
      String.hash(into:)();
      v18 = Hasher._finalize()();

      v19 = -1 << *(v4 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v11 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v17;
      ++*(v4 + 16);
      v2 = v27;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v26;
        goto LABEL_26;
      }

      v15 = *(v6 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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
    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v2 = *v0;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<AnyHashable2>, lazy protocol witness table accessor for type AnyHashable2 and conformance AnyHashable2, &type metadata for AnyHashable2, MEMORY[0x1E69E6A10]);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v25 = v2;
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      Hasher.init(_seed:)();
      v17 = *(*v16 + 120);

      v17(v26);
      result = Hasher._finalize()();
      v18 = -1 << *(v4 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
      v2 = v25;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v6 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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
    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v2 = *v0;
  type metadata accessor for _SetStorage<AnyKeyPath>();
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v24 = v2;
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      type metadata accessor for AnyKeyPath();

      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
      v2 = v24;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v6 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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
    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v2 = *v0;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<CAHostingLayerEvent.MouseButton>, lazy protocol witness table accessor for type CAHostingLayerEvent.MouseButton and conformance CAHostingLayerEvent.MouseButton, &type metadata for CAHostingLayerEvent.MouseButton, MEMORY[0x1E69E6A10]);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      Hasher.init(_seed:)();
      MEMORY[0x193AC11A0](v15);
      result = Hasher._finalize()();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
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
    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v2 = *v0;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<_ProposedSize>, lazy protocol witness table accessor for type _ProposedSize and conformance _ProposedSize, &type metadata for _ProposedSize, MEMORY[0x1E69E6A10]);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (!*(v2 + 16))
  {

LABEL_37:
    *v1 = v4;
    return result;
  }

  v30 = v2;
  v5 = 0;
  v6 = v2 + 56;
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  while (v9)
  {
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_15:
    v17 = *(v2 + 48) + 32 * (v14 | (v5 << 6));
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(v17 + 16);
    v31 = *(v17 + 24);
    Hasher.init(_seed:)();
    if (v19 == 1)
    {
      Hasher._combine(_:)(0);
      if (v31)
      {
        goto LABEL_25;
      }
    }

    else
    {
      Hasher._combine(_:)(1u);
      if ((v18 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v22 = v18;
      }

      else
      {
        v22 = 0;
      }

      MEMORY[0x193AC11E0](v22);
      if (v31)
      {
LABEL_25:
        Hasher._combine(_:)(0);
        goto LABEL_26;
      }
    }

    Hasher._combine(_:)(1u);
    if ((v20 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    MEMORY[0x193AC11E0](v21);
LABEL_26:
    result = Hasher._finalize()();
    v23 = -1 << *(v4 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v11 + 8 * (v24 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v23) >> 6;
      while (++v25 != v27 || (v26 & 1) == 0)
      {
        v28 = v25 == v27;
        if (v25 == v27)
        {
          v25 = 0;
        }

        v26 |= v28;
        v29 = *(v11 + 8 * v25);
        if (v29 != -1)
        {
          v12 = __clz(__rbit64(~v29)) + (v25 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_39;
    }

    v12 = __clz(__rbit64((-1 << v24) & ~*(v11 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
    v13 = *(v4 + 48) + 32 * v12;
    *v13 = v18;
    *(v13 + 8) = v19;
    *(v13 + 16) = v20;
    *(v13 + 24) = v31;
    ++*(v4 + 16);
    v2 = v30;
  }

  v15 = v5;
  while (1)
  {
    v5 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v5 >= v10)
    {

      v1 = v0;
      goto LABEL_37;
    }

    v16 = *(v6 + 8 * v5);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v9 = (v16 - 1) & v16;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

{
  v1 = v0;
  v2 = *v0;
  type metadata accessor for _SetStorage<ObjectIdentifier>(0, &lazy cache variable for type metadata for _SetStorage<Int>);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = MEMORY[0x193AC1170](*(v4 + 40), v15);
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_24;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CGSize and conformance CGSize(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy48_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

void type metadata accessor for _SetStorage<AGAttribute>()
{
  if (!lazy cache variable for type metadata for _SetStorage<AGAttribute>)
  {
    type metadata accessor for AGAttribute(255);
    lazy protocol witness table accessor for type CGSize and conformance CGSize(&lazy protocol witness table cache variable for type AGAttribute and conformance AGAttribute, type metadata accessor for AGAttribute);
    v0 = type metadata accessor for _SetStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _SetStorage<AGAttribute>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type MergedTransaction and conformance MergedTransaction()
{
  result = lazy protocol witness table cache variable for type MergedTransaction and conformance MergedTransaction;
  if (!lazy protocol witness table cache variable for type MergedTransaction and conformance MergedTransaction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MergedTransaction and conformance MergedTransaction);
  }

  return result;
}

uint64_t specialized Set._Variant.insert(_:)(unsigned int *a1, unsigned int a2)
{
  v5 = *v2;
  v6 = MEMORY[0x193AC1150](*(*v2 + 40), a2, 4);
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 4 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
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
    v12 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(unsigned int a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v8 = *v3;
  v9 = MEMORY[0x193AC1150](*(*v3 + 40), a1, 4);
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = v9 & ~v10;
    type metadata accessor for AGAttribute(0);
    a2 = v12;
    while (*(*(v8 + 48) + 4 * a2) != a1)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 4 * a2) = a1;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

_DWORD *initializeWithCopy for AnimatableAttribute(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  v3 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v3 = *v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 80);
  v8 = (v7 | 7) + 4;
  v9 = v3 + v8;
  v10 = ((v4 + v8) & ~(v7 | 7));
  v11 = (v9 & ~(v7 | 7));
  *v11 = *v10;
  v11[1] = v10[1];
  v12 = ((v11 + 11) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v10 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v14 = ((v12 + v7 + 4) & ~v7);
  v15 = ((v13 + v7 + 4) & ~v7);
  if ((*(v6 + 48))(v15, 1, AssociatedTypeWitness))
  {
    v16 = *(v6 + 84);
    v17 = *(v6 + 64);
    if (v16)
    {
      v18 = v17;
    }

    else
    {
      v18 = v17 + 1;
    }

    memcpy(v14, v15, v18);
  }

  else
  {
    (*(v6 + 16))(v14, v15, AssociatedTypeWitness);
    v20 = *(v6 + 56);
    v19 = v6 + 56;
    v20(v14, 0, 1, AssociatedTypeWitness);
    v16 = *(v19 + 28);
    v17 = *(v19 + 8);
  }

  if (v16)
  {
    v21 = v17;
  }

  else
  {
    v21 = v17 + 1;
  }

  v22 = ((v14 + v21 + 7) & 0xFFFFFFFFFFFFFFF8);
  v23 = ((v15 + v21 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v22 = *v23;
  *((v22 + 11) & 0xFFFFFFFFFFFFFFF8) = *((v23 + 11) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

void type metadata accessor for ModifiedContent<PlaceholderContentView<OpacityTransition>, OpacityRendererEffect>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<PlaceholderContentView<OpacityTransition>, OpacityRendererEffect>)
  {
    _ss23_ContiguousArrayStorageCy7SwiftUI17ContentTransitionV6EffectVGMaTm_0(255, &lazy cache variable for type metadata for PlaceholderContentView<OpacityTransition>, &type metadata for OpacityTransition, type metadata accessor for PlaceholderContentView);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<PlaceholderContentView<OpacityTransition>, OpacityRendererEffect>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<PlaceholderContentView<OpacityTransition>, OpacityRendererEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<OpacityTransition>, OpacityRendererEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<OpacityTransition>, OpacityRendererEffect> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<PlaceholderContentView<OpacityTransition>, OpacityRendererEffect>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<OpacityTransition>, OpacityRendererEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<ContentTransition.Effect>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _ss23_ContiguousArrayStorageCy7SwiftUI17ContentTransitionV6EffectVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t type metadata completion function for DynamicContainer._ItemInfo()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t type metadata completion function for ViewListTransition()
{
  result = type metadata accessor for TransitionHelper();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for TransitionHelper()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance ViewListTransition<A>()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t instantiation function for generic protocol witness table for ViewListTransition<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance RendererEffectDisplayList<A>()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t sub_18D07DB78(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t specialized closure #2 in DynamicContainerInfo.makeItem(_:uniqueId:container:disableTransitions:)(uint64_t *a1, void *a2, int a3, int a4, void *a5, int a6, int a7)
{
  v63 = a7;
  v64 = a6;
  v65 = a5;
  LODWORD(v7) = a4;
  LODWORD(v8) = a3;
  v11 = *(a1 + 5);
  v84[0] = *(a1 + 3);
  v84[1] = v11;
  v12 = *(a1 + 9);
  v84[2] = *(a1 + 7);
  v84[3] = v12;
  v84[4] = *(a1 + 11);
  v85 = *(a1 + 26);
  v13 = v11;
  v67 = *(&v84[0] + 1);
  v14 = *&v84[0];
  v15 = *(a1 + 3);
  v16 = *(a1 + 4);
  v17 = *(a1 + 5);
  *(v83 + 12) = *(a1 + 92);
  v82 = v16;
  v83[0] = v17;
  v81 = v15;
  swift_beginAccess();
  v18 = v13[3];
  v86[1] = v13[2];
  v86[2] = v18;
  v19 = v13[5];
  v86[3] = v13[4];
  v86[4] = v19;
  v86[0] = v13[1];
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
  v69 = swift_allocObject();
  memmove((v69 + 16), v13 + 1, 0x50uLL);
  outlined init with copy of _ViewInputs(v84, &v75);
  outlined init with copy of CachedEnvironment(v86, &v75);

  v20 = *a1;
  v22 = a1[1];
  v21 = a1[2];
  v70[4] = v7;
  v70[5] = v8;
  BloomFilter.init(hashValue:)(&type metadata for ArchivedViewInput);
  v23 = v75;

  v68 = v14;
  v24 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17ArchivedViewInputV_Tt0B5(v14, v23);
  if (v24)
  {
    v25 = (v24 + 72);
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v25 = &static ArchivedViewInput.defaultValue;
  }

  LODWORD(v26) = *v25 & 1;
  v27 = a2[8];

  if ((_s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA013CanTransitiondJ0V_Tt0B5(0, v27) & 1) == 0)
  {

    v30 = 0;
    goto LABEL_23;
  }

  if (one-time initialization token for opacity != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v66 = v22;
    v28 = static AnyTransition.opacity;
    v29 = _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA010TransitiondJ0V_Tt0B5(static AnyTransition.opacity, v27);
    v30 = v29;
    if (v26)
    {
    }

    else
    {
      v31 = (*(*v29 + 96))(v29);

      if (v31)
      {

        v30 = 0;
        v22 = v66;
        goto LABEL_23;
      }
    }

    v61 = v28;
    v62 = v21;

    AGGraphClearUpdate();
    swift_beginAccess();
    Value = AGGraphGetValue();
    v35 = *Value;
    v34 = Value[1];
    if (v34)
    {

      v36 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA040AccessibilityPrefersCrossFadeTransitionsI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v35);
    }

    else
    {
      v36 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA040AccessibilityPrefersCrossFadeTransitionsF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(*Value);
    }

    if (v36 == 2)
    {
      v75 = v35;
      v76 = v34;
      LOBYTE(v72[0]) = 3;
      v36 = EnvironmentValues.accessibilitySettingEnabled(_:)(v72);
    }

    v22 = v66;
    v37 = AGGraphSetUpdate();
    if ((*(*v30 + 104))(v37))
    {
      v21 = v62;
      if (v36)
      {
        v38 = v61;

        v30 = v38;
      }

      else
      {
      }
    }

    else
    {

      v21 = v62;
    }

LABEL_23:
    v66 = &v61;
    LODWORD(v62) = v8;
    v74[0] = v8;
    v74[1] = 0;
    MEMORY[0x1EEE9AC00](v32);
    v52[2] = partial apply for closure #1 in closure #2 in DynamicContainerInfo.makeItem(_:uniqueId:container:disableTransitions:);
    v52[3] = v70;
    v53 = v7;
    v54 = v20;
    v55 = v22;
    v56 = v21;
    v22 = v21;
    v57 = v74;
    v58 = v30;
    v59 = a2;
    v60 = v26;
    v27 = swift_allocObject();
    v8 = v52;
    *(v27 + 16) = partial apply for closure #2 in DynamicLayoutViewAdaptor.makeItemLayout(item:uniqueId:inputs:containerInfo:containerInputs:);
    *(v27 + 24) = v52;
    v71[0] = 0;
    MEMORY[0x1EEE9AC00](v27);
    v51[2] = partial apply for thunk for @callee_guaranteed (@in_guaranteed _ViewInputs, @guaranteed @escaping @callee_guaranteed (@in_guaranteed _ViewInputs) -> (@out _ViewOutputs)) -> (@out _ViewOutputs?);
    v51[3] = v39;
    v75 = a2[7];
    if (_ViewList_SublistSubgraphStorage.isValid.getter())
    {
      v40 = a2[5];
      v26 = a2[6];
      __swift_project_boxed_opaque_existential_1(a2 + 2, v40);
      v75 = v68;
      v76 = v67;
      v77 = v69;
      v78 = v81;
      v79 = v82;
      v80[0] = v83[0];
      *(v80 + 12) = *(v83 + 12);
      (*(v26 + 16))(v72, v71, &v75, 0, partial apply for closure #1 in closure #1 in _ViewList_Elements.makeAllElements(inputs:indirectMap:body:), v51, v40, v26);
      v21 = *(&v72[0] + 1);
      v7 = *&v72[0];
    }

    else
    {
      v21 = 0;
      v7 = 0;
    }

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v75 = a2[7];

    v27 = _ViewList_SublistSubgraphStorage.retain()();

    outlined init with copy of DynamicViewListItem(a2, v72);
    v42 = a2[5];
    v8 = a2[6];
    __swift_project_boxed_opaque_existential_1(a2 + 2, v42);
    v43 = (v8[1])(v42, v8);
    if (v43 < 0xFFFFFFFF80000000)
    {
      goto LABEL_36;
    }

    v44 = v43;
    if (v43 <= 0x7FFFFFFF)
    {
      break;
    }

LABEL_37:
    __break(1u);
LABEL_38:
    swift_once();
  }

  if (v7)
  {
    v45 = HIDWORD(v21);
  }

  else
  {
    v45 = *MEMORY[0x1E698D3F8];
  }

  if (!v7)
  {
    LODWORD(v21) = 0;
    v7 = MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for DynamicContainer._ItemInfo<DynamicLayoutViewAdaptor>, &type metadata for DynamicLayoutViewAdaptor, &protocol witness table for DynamicLayoutViewAdaptor, type metadata accessor for DynamicContainer._ItemInfo);
  v46 = swift_allocObject();
  v47 = v72[0];
  *(v46 + 104) = v72[1];
  *(v46 + 120) = v72[2];
  *(v46 + 136) = v73[0];
  *(v46 + 149) = *(v73 + 13);
  *(v46 + 88) = v47;
  *(v46 + 168) = v27;
  *(v46 + 64) = 0;
  *(v46 + 72) = 0;
  *(v46 + 56) = 0;
  *(v46 + 80) = 0;
  *(v46 + 84) = 3;
  v48 = v65;
  *(v46 + 16) = v65;
  *(v46 + 24) = v62;
  *(v46 + 28) = v44;
  *(v46 + 32) = v7;
  *(v46 + 40) = v21;
  *(v46 + 44) = v45;
  *(v46 + 48) = v63 & 1;
  swift_beginAccess();
  *(v46 + 84) = v64;
  v75 = v68;
  v76 = v67;
  v77 = v69;
  v78 = v81;
  v79 = v82;
  v80[0] = v83[0];
  *(v80 + 12) = *(v83 + 12);
  v49 = v48;
  outlined destroy of _ViewInputs(&v75);
  return v46;
}

uint64_t closure #2 in DynamicLayoutViewAdaptor.makeItemLayout(item:uniqueId:inputs:containerInfo:containerInputs:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr, __int128 *)@<X1>, uint64_t a3@<X2>, void (*a4)(__int128 *)@<X3>, unsigned int a5@<W5>, uint64_t a6@<X6>, void (*a7)(uint64_t (*)(), double)@<X7>, void *a8@<X8>, uint64_t a9, unsigned int *a10, uint64_t a11, uint64_t a12, char a13)
{
  v13 = HIDWORD(a6);
  v81 = *MEMORY[0x1E69E9840];
  v17 = *(a1 + 48);
  v18 = *(a1 + 16);
  v76 = *(a1 + 32);
  v77 = v17;
  v19 = *(a1 + 48);
  v78 = *(a1 + 64);
  v20 = *(a1 + 16);
  v75[0] = *a1;
  v75[1] = v20;
  v71 = v76;
  v72 = v19;
  v73 = *(a1 + 64);
  v79 = *(a1 + 80);
  v21 = v20;
  v22 = BYTE4(v76);
  v74 = *(a1 + 80);
  v69 = v75[0];
  v70 = v18;
  swift_beginAccess();
  v23 = v21[3];
  v80[1] = v21[2];
  v80[2] = v23;
  v24 = v21[5];
  v80[3] = v21[4];
  v80[4] = v24;
  v80[0] = v21[1];
  _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_2(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
  v25 = swift_allocObject();
  memmove((v25 + 16), v21 + 1, 0x50uLL);
  outlined init with copy of _ViewInputs(v75, &v40);
  outlined init with copy of CachedEnvironment(v80, &v40);

  *&v70 = v25;
  a4(&v69);
  if ((v22 & 0x20) != 0)
  {
    if (*MEMORY[0x1E698D3F8] == v13)
    {
      __break(1u);
    }

    *&v40 = __PAIR64__(v13, a5);
    *(&v40 + 1) = *a10;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type DynamicLayoutViewChildGeometry and conformance DynamicLayoutViewChildGeometry();
    Attribute.init<A>(body:value:flags:update:)();
    DWORD2(v73) = AGGraphCreateOffsetAttribute2();
    LODWORD(v73) = AGGraphCreateOffsetAttribute2();
    *&v71 = vorr_s8(*&v71, 0x200000018);
  }

  if (!a11)
  {
    v65 = v71;
    v66 = v72;
    v67 = v73;
    v68 = v74;
    v63 = v69;
    v64 = v70;
    v59 = v71;
    v60 = v72;
    v61 = v73;
    v62 = v74;
    v57 = v69;
    v58 = v70;
    outlined init with copy of _ViewInputs(&v63, &v40);
    a2(&v37, &v57);
    v42 = v59;
    v43 = v60;
    v44 = v61;
    v45 = v62;
    v40 = v57;
    v41 = v58;
    v32 = outlined destroy of _ViewInputs(&v40);
    v29 = v37;
    v31 = v38;
    v30 = v39;
    goto LABEL_8;
  }

  v26 = *a10;
  outlined init with copy of DynamicViewListItem(a12, &v40 + 8);
  v65 = v71;
  v66 = v72;
  v67 = v73;
  v68 = v74;
  v63 = v69;
  v64 = v70;
  *&v40 = __PAIR64__(v26, a5);
  v47 = v70;
  v46 = v69;
  v51 = v74;
  v49 = v72;
  v48 = v71;
  v50 = v73;
  v52 = a2;
  v53 = a3;
  v54 = 0;
  v55 = 0;
  v56 = a13 & 1;
  v27 = *(*a11 + 80);

  outlined init with copy of _ViewInputs(&v63, &v57);
  result = v27(&v40, &unk_1F007DB60, &protocol witness table for DynamicLayoutViewAdaptor.MakeTransition);
  v29 = v54;
  if (v54)
  {
    v31 = v55;
    v30 = HIDWORD(v55);

    outlined destroy of DynamicLayoutViewAdaptor.MakeTransition(&v40);

LABEL_8:
    v33 = MEMORY[0x1EEE9AC00](v32);
    a7(partial apply for closure #1 in closure #2 in DynamicLayoutViewAdaptor.makeItemLayout(item:uniqueId:inputs:containerInfo:containerInputs:), v33);
    v42 = v71;
    v43 = v72;
    v44 = v73;
    v45 = v74;
    v40 = v69;
    v41 = v70;
    result = outlined destroy of _ViewInputs(&v40);
    ++a10[1];
    *a8 = v29;
    a8[1] = v31 | (v30 << 32);
    return result;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in closure #2 in DynamicContainerInfo.makeItem(_:uniqueId:container:disableTransitions:)(_DWORD *a1)
{
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type DynamicTransaction and conformance DynamicTransaction();
  a1[7] = Attribute.init<A>(body:value:flags:update:)();
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type DynamicViewPhase and conformance DynamicViewPhase();
  result = Attribute.init<A>(body:value:flags:update:)();
  a1[6] = result;
  v3 = a1[8];
  if ((v3 & 0x40) == 0)
  {
    a1[8] = v3 | 0x40;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DynamicTransaction and conformance DynamicTransaction()
{
  result = lazy protocol witness table cache variable for type DynamicTransaction and conformance DynamicTransaction;
  if (!lazy protocol witness table cache variable for type DynamicTransaction and conformance DynamicTransaction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DynamicTransaction and conformance DynamicTransaction);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DynamicViewPhase and conformance DynamicViewPhase()
{
  result = lazy protocol witness table cache variable for type DynamicViewPhase and conformance DynamicViewPhase;
  if (!lazy protocol witness table cache variable for type DynamicViewPhase and conformance DynamicViewPhase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DynamicViewPhase and conformance DynamicViewPhase);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DynamicLayoutViewChildGeometry and conformance DynamicLayoutViewChildGeometry()
{
  result = lazy protocol witness table cache variable for type DynamicLayoutViewChildGeometry and conformance DynamicLayoutViewChildGeometry;
  if (!lazy protocol witness table cache variable for type DynamicLayoutViewChildGeometry and conformance DynamicLayoutViewChildGeometry)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DynamicLayoutViewChildGeometry and conformance DynamicLayoutViewChildGeometry);
  }

  return result;
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA21OpacityRendererEffectV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *result;
    v3 = *(a2 + 8);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *(a2 + 16);
    v7 = result;
    swift_beginAccess();
    v8 = *(v6 + 16);
    v10[0] = v2;
    v10[1] = v8;
    v10[2] = v4;
    v10[3] = v3;
    v10[4] = v5;
    v11 = 0;
    v12 = 1;
    v13 = 0;
    v14 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for AnimatableAttribute<OpacityRendererEffect>, &type metadata for OpacityRendererEffect, &protocol witness table for OpacityRendererEffect, type metadata accessor for AnimatableAttribute);
    lazy protocol witness table accessor for type AnimatableAttribute<OpacityRendererEffect> and conformance AnimatableAttribute<A>();
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<_OpacityEffect>(v10, &lazy cache variable for type metadata for AnimatableAttribute<OpacityRendererEffect>, &type metadata for OpacityRendererEffect, &protocol witness table for OpacityRendererEffect);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

uint64_t _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA07OpacitycD0V_Tt3B5@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v63 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 48);
  v60 = *(a2 + 32);
  v61 = v8;
  v9 = *(a2 + 68);
  v62 = *(a2 + 64);
  v10 = *(a2 + 16);
  v58 = *a2;
  v59 = v10;
  v40 = *(a2 + 72);
  v41 = *(a2 + 80);
  v11 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48));
  if (v11)
  {
    v12 = *(a2 + 48);
    v13 = *(a2 + 64);
    v14 = *(a2 + 16);
    v54 = *(a2 + 32);
    v55 = v12;
    v56 = v13;
    v57 = *(a2 + 80);
    v52 = *a2;
    v53 = v14;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, v49);
    v9 = CachedEnvironment.animatedPosition(for:)(&v52);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v52);
  }

  v49[2] = v60;
  v49[3] = v61;
  v49[0] = v58;
  v49[1] = v59;
  *&v50 = __PAIR64__(v9, v62);
  *(&v50 + 1) = v40;
  v51 = v41;
  v45 = v60;
  v46 = v61;
  v47 = v50;
  v48 = v41;
  v43 = v58;
  v44 = v59;
  v15 = outlined init with copy of _ViewInputs(v49, &v52);
  a3(v39, v15, &v43);
  v54 = v45;
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v52 = v43;
  v53 = v44;
  outlined destroy of _ViewInputs(&v52);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    v45 = v60;
    v46 = v61;
    v43 = v58;
    v44 = v59;
    *&v47 = __PAIR64__(v9, v62);
    *(&v47 + 1) = v40;
    v48 = v41;
    result = outlined destroy of _ViewInputs(&v43);
    *a4 = v39[0];
    a4[1] = v39[1];
    return result;
  }

  v38 = a1;
  v16 = ++lastIdentity;
  v17 = *a2;
  v18 = *(a2 + 16);
  if ((*(a2 + 37) & 1) == 0)
  {
    v19 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v20 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v20;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v21 = *(a2 + 16);
    v43 = *a2;
    v44 = v21;
    swift_beginAccess();
    v22 = CachedEnvironment.animatedPosition(for:)(&v43);
    v23 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v23;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v24 = *(a2 + 16);
    v43 = *a2;
    v44 = v24;
    v25 = CachedEnvironment.animatedSize(for:)(&v43);
    swift_endAccess();
    v26 = *(v18 + 16);
    v27 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v39[0]);
    if ((v27 & 0x100000000) == 0)
    {
      v19 = v27;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v28 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v17, v43);
    if (v28)
    {
      v29 = *(v28 + 72);
    }

    else
    {
      v29 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v30 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v17, v43);
    if (v30)
    {
      v31 = *(v30 + 72);
    }

    else
    {
      v31 = 0;
    }

    v32 = *(a2 + 60);
    v33 = *(a2 + 68);
    v34 = *(a2 + 76);
    *&v43 = __PAIR64__(v38, v16);
    *(&v43 + 1) = __PAIR64__(v25, v22);
    *&v44 = __PAIR64__(v33, v32);
    *(&v44 + 1) = __PAIR64__(v34, v26);
    LODWORD(v45) = v19;
    BYTE4(v45) = v29;
    DWORD2(v45) = 0;
    HIDWORD(v45) = v31;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<OpacityRendererEffect>, &type metadata for OpacityRendererEffect, &protocol witness table for OpacityRendererEffect, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<OpacityRendererEffect> and conformance RendererEffectDisplayList<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v43) = 0;
    PreferencesOutputs.subscript.setter(v35, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v43);
  result = AGWeakAttributeGetAttribute();
  v19 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v42[0] = v16;
    v37 = Attribute<A>.subscript.modify();
    _DisplayList_StableIdentityScope.pushIdentity(_:)(v42);
    v37(&v43, 0);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type MergedPhase and conformance MergedPhase()
{
  result = lazy protocol witness table cache variable for type MergedPhase and conformance MergedPhase;
  if (!lazy protocol witness table cache variable for type MergedPhase and conformance MergedPhase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MergedPhase and conformance MergedPhase);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RendererEffectDisplayList<OpacityRendererEffect> and conformance RendererEffectDisplayList<A>()
{
  result = lazy protocol witness table cache variable for type RendererEffectDisplayList<OpacityRendererEffect> and conformance RendererEffectDisplayList<A>;
  if (!lazy protocol witness table cache variable for type RendererEffectDisplayList<OpacityRendererEffect> and conformance RendererEffectDisplayList<A>)
  {
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(255, &lazy cache variable for type metadata for RendererEffectDisplayList<OpacityRendererEffect>, &type metadata for OpacityRendererEffect, &protocol witness table for OpacityRendererEffect, type metadata accessor for RendererEffectDisplayList);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RendererEffectDisplayList<OpacityRendererEffect> and conformance RendererEffectDisplayList<A>);
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<(id: DynamicContainerID, value: LayoutProxyAttributes)>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(id: DynamicContainerID, value: LayoutProxyAttributes)>)
  {
    type metadata accessor for (proposal: _ProposedSize, value: TextSizeVariant)(255, &lazy cache variable for type metadata for (id: DynamicContainerID, value: LayoutProxyAttributes));
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(id: DynamicContainerID, value: LayoutProxyAttributes)>);
    }
  }
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = a3 - v6;
  if (__OFSUB__(a3, v6))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = *v5;
  v9 = (v8 + 32 + 16 * result);
  if (v7)
  {
    v10 = *(v8 + 16);
    v11 = __OFSUB__(v10, a2);
    v12 = v10 - a2;
    if (!v11)
    {
      result = &v9[2 * a3];
      v13 = (v8 + 32 + 16 * a2);
      if (result != v13 || result >= v13 + 16 * v12)
      {
        v15 = a3;
        v16 = a5;
        v17 = a4;
        result = memmove(result, v13, 16 * v12);
        a4 = v17;
        a5 = v16;
        a3 = v15;
      }

      v18 = *(v8 + 16);
      v11 = __OFADD__(v18, v7);
      v19 = v18 + v7;
      if (!v11)
      {
        *(v8 + 16) = v19;
        goto LABEL_13;
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

LABEL_13:
  if (a3 >= 1)
  {
    *v9 = a4;
    v9[1] = a5;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = a3 - v6;
  if (__OFSUB__(a3, v6))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = *v5;
  v9 = (v8 + 32 + 16 * result);
  if (v7)
  {
    v10 = *(v8 + 16);
    v11 = __OFSUB__(v10, a2);
    v12 = v10 - a2;
    if (!v11)
    {
      result = &v9[2 * a3];
      v13 = (v8 + 32 + 16 * a2);
      if (result != v13 || result >= v13 + 16 * v12)
      {
        v15 = a3;
        v16 = a5;
        v17 = a4;
        result = memmove(result, v13, 16 * v12);
        a3 = v15;
        a4 = v17;
        a5 = v16;
      }

      v18 = *(v8 + 16);
      v11 = __OFADD__(v18, v7);
      v19 = v18 + v7;
      if (!v11)
      {
        *(v8 + 16) = v19;
        goto LABEL_13;
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

LABEL_13:
  if (a3 >= 1)
  {
    *v9 = a4;
    v9[1] = a5;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, a3, a4, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, a3, a4, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

uint64_t DynamicLayoutViewAdaptor.MakeTransition.visit<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = a1;
  v61 = *MEMORY[0x1E69E9840];
  v6 = type metadata accessor for ViewListTransition();
  v45 = *(v6 - 8);
  v46 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v44 = &v41 - v7;
  v8 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a3;
  v12 = type metadata accessor for TransitionHelper();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.n128_f64[0] = MEMORY[0x1EEE9AC00](v16);
  v19 = &v41 - v18;
  if (*(v3 + 84))
  {
    v20 = *MEMORY[0x1E698D3F8];
  }

  else
  {
    v20 = *(v3 + 20);
  }

  v21 = *v3;
  (*(v8 + 16))(v11, v47, a2, v17);
  *v19 = v20;
  *(v19 + 4) = v21;
  (*(v8 + 32))(&v19[*(v12 + 44)], v11, a2);
  v19[*(v12 + 48)] = 1;
  if (v3[26])
  {
    DynamicLayoutViewAdaptor.MakeTransition.makeArchivedTransition<A>(helper:)(v19, a2, v48);
    return (*(v13 + 8))(v19, v12);
  }

  else
  {
    v43 = v13;
    (*(v13 + 16))(v15, v19, v12);
    v23 = *(v13 + 32);
    v24 = v12;
    v42 = v12;
    v25 = v44;
    v26 = v23(v44, v15, v24);
    MEMORY[0x1EEE9AC00](v26);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v28 = v46;
    *(&v41 - 4) = AssociatedTypeWitness;
    *(&v41 - 3) = v28;
    *(&v41 - 2) = swift_getWitnessTable();
    v29 = type metadata accessor for Attribute();
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v25, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_0, (&v41 - 6), v28, MEMORY[0x1E69E73E0], v29, MEMORY[0x1E69E7410], v30);
    (*(v45 + 8))(v25, v28);
    _GraphValue.init(_:)(LODWORD(v59[0]), &v49);
    v31 = *(v3 + 15);
    v32 = *(v3 + 19);
    v57[3] = *(v3 + 17);
    v57[4] = v32;
    v58 = *(v3 + 42);
    v57[0] = *(v3 + 11);
    v57[1] = *(v3 + 13);
    v57[2] = v31;
    v33 = *(v3 + 17);
    v53 = *(v3 + 15);
    v54 = v33;
    v55 = *(v3 + 19);
    v56 = *(v3 + 42);
    v34 = *(v3 + 13);
    v51 = *(v3 + 11);
    v52 = v34;
    v36 = v3[22];
    v35 = v3[23];
    v37 = swift_allocObject();
    *(v37 + 16) = v36;
    *(v37 + 24) = v35;
    outlined init with copy of _ViewInputs(v57, v59);

    v38 = v3;
    static Transition.makeView(view:inputs:body:)(&v49, &v51, partial apply for closure #1 in DynamicLayoutViewAdaptor.MakeTransition.visit<A>(_:), v37, v50);

    v59[2] = v53;
    v59[3] = v54;
    v59[4] = v55;
    v60 = v56;
    v59[0] = v51;
    v59[1] = v52;
    outlined destroy of _ViewInputs(v59);
    (*(v43 + 8))(v19, v42);
    v39 = v50[0];
    v40 = v50[1];

    v38[24] = v39;
    v38[25] = v40;
  }

  return result;
}

uint64_t sub_18D07FA50()
{

  return swift_deallocObject();
}

uint64_t static Transition.makeView(view:inputs:body:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v55 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 48);
  v9 = *(a2 + 16);
  v45 = *(a2 + 32);
  v46 = v8;
  v10 = *(a2 + 48);
  v47 = *(a2 + 64);
  v11 = *(a2 + 16);
  v44[0] = *a2;
  v44[1] = v11;
  v40 = v45;
  v41 = v10;
  v42 = *(a2 + 64);
  v12 = *a1;
  v48 = *(a2 + 80);
  v43 = *(a2 + 80);
  v38 = v44[0];
  v39 = v9;
  v13 = type metadata accessor for PlaceholderContentView();
  outlined init with copy of _ViewInputs(v44, &v49);
  _ViewInputs.pushModifierBody<A>(_:body:)(v13, a3, a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v51 = v40;
  v52 = v41;
  v53 = v42;
  v54 = v43;
  v49 = v38;
  v50 = v39;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v30 = v51;
  v31 = v52;
  v32 = v53;
  v33 = v54;
  v28 = v49;
  v29 = v50;
  v16 = v51;
  LODWORD(v30) = 0;
  LODWORD(v20[0]) = v12;
  v34[0] = v49;
  v34[1] = v50;
  v35 = v54;
  v34[3] = v52;
  v34[4] = v53;
  v34[2] = v30;
  v24 = v30;
  v25 = v52;
  v26 = v53;
  v27 = v54;
  v22 = v49;
  v23 = v50;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = *(AssociatedConformanceWitness + 24);
  outlined init with copy of _ViewInputs(&v49, v36);
  outlined init with copy of _ViewInputs(v34, v36);
  v18(v20, &v22, AssociatedTypeWitness, AssociatedConformanceWitness);
  v36[2] = v24;
  v36[3] = v25;
  v36[4] = v26;
  v37 = v27;
  v36[0] = v22;
  v36[1] = v23;
  outlined destroy of _ViewInputs(v36);
  LODWORD(v30) = v16;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a5, &v28);
    AGSubgraphEndTreeElement();
  }

  v20[2] = v40;
  v20[3] = v41;
  v20[4] = v42;
  v21 = v43;
  v20[0] = v38;
  v20[1] = v39;
  outlined destroy of _ViewInputs(v20);
  v24 = v30;
  v25 = v31;
  v26 = v32;
  v27 = v33;
  v22 = v28;
  v23 = v29;
  return outlined destroy of _ViewInputs(&v22);
}

void *__swift_memcpy13_4(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 5) = *(a2 + 5);
  *result = v2;
  return result;
}

unint64_t lazy protocol witness table accessor for type AnimatableAttribute<OpacityRendererEffect> and conformance AnimatableAttribute<A>()
{
  result = lazy protocol witness table cache variable for type AnimatableAttribute<OpacityRendererEffect> and conformance AnimatableAttribute<A>;
  if (!lazy protocol witness table cache variable for type AnimatableAttribute<OpacityRendererEffect> and conformance AnimatableAttribute<A>)
  {
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(255, &lazy cache variable for type metadata for AnimatableAttribute<OpacityRendererEffect>, &type metadata for OpacityRendererEffect, &protocol witness table for OpacityRendererEffect, type metadata accessor for AnimatableAttribute);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimatableAttribute<OpacityRendererEffect> and conformance AnimatableAttribute<A>);
  }

  return result;
}

uint64_t destroy for _ViewList_Sublist(uint64_t a1)
{

  __swift_destroy_boxed_opaque_existential_1(a1 + 32);
}

uint64_t destroy for _ViewList_Node(uint64_t a1)
{
  v1 = *(a1 + 93);
  if (v1 >= 4)
  {
    v1 = *a1 + 4;
  }

  if (v1 > 1)
  {
    if (v1 != 2)
    {
    }
  }

  else
  {
    if (!v1)
    {
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    __swift_destroy_boxed_opaque_existential_1(a1 + 32);
  }
}

uint64_t _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA06ZIndexdJ0V_Tt0B5(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    for (i = result + 32; ; i += 40)
    {
      outlined init with copy of AnyTrackedValue(i, v7);
      v3 = v8;
      v4 = v9;
      __swift_project_boxed_opaque_existential_1(v7, v8);
      if ((*(v4 + 8))(v3, v4) == &type metadata for ZIndexTraitKey)
      {
        break;
      }

      result = __swift_destroy_boxed_opaque_existential_1(v7);
      if (!--v1)
      {
        return result;
      }
    }

    v5 = v8;
    v6 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    (*(v6 + 16))(&v10, MEMORY[0x1E69E63B0], v5, v6);
    return __swift_destroy_boxed_opaque_existential_1(v7);
  }

  return result;
}

void type metadata accessor for (proposal: _ProposedSize, value: TextSizeVariant)(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t initializeWithCopy for DynamicViewListItem(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 40);
  *(a1 + 40) = v4;
  v5 = v4;
  v6 = **(v4 - 8);

  v6(a1 + 16, a2 + 16, v5);
  v7 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v7;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);

  return a1;
}

uint64_t destroy for DynamicViewListItem(uint64_t a1)
{

  __swift_destroy_boxed_opaque_existential_1(a1 + 16);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unsigned int a1)
{
  v3 = MEMORY[0x193AC1150](*(v1 + 40), a1, 4);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

{
  v3 = MEMORY[0x193AC1150](*(v1 + 40), a1, 4);
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t DynamicViewPhase.value.getter@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, _DWORD *a3@<X8>)
{
  v6 = *AGGraphGetValue();
  result = AGGraphGetValue();
  v8 = *(result + 8);
  if (!*(v8 + 16))
  {
    goto LABEL_12;
  }

  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v9 & 1) == 0)
  {
    goto LABEL_12;
  }

  v10 = *(*(v8 + 56) + 8 * result);
  result = AGGraphGetValue();
  v11 = *result;
  if ((*result & 0xC000000000000001) != 0)
  {

    v12 = MEMORY[0x193AC03C0](v10, v11);
  }

  else
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_15;
    }

    if (v10 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_17;
    }

    v12 = *(v11 + 8 * v10 + 32);
  }

  LODWORD(v11) = *(v12 + 80);

  result = AGGraphGetValue();
  a1 = *result;
  if ((*result & 0xC000000000000001) != 0)
  {
LABEL_15:

    v13 = MEMORY[0x193AC03C0](v10, a1);

    goto LABEL_11;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v10 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(a1 + 8 * v10 + 32);

LABEL_11:
    swift_beginAccess();
    v14 = *(v13 + 84);

    v6 = (v6 + 2 * v11) | (v14 == 2);
LABEL_12:
    *a3 = v6;
    return result;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in closure #2 in DynamicLayoutViewAdaptor.makeItemLayout(item:uniqueId:inputs:containerInfo:containerInputs:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  if (*(v2 + 76))
  {
    v3 = MEMORY[0x1E698D3F8];
  }

  else
  {
    v3 = (v2 + 72);
  }

  v4 = *v3;
  v7[0] = *(v0 + 36);
  v7[1] = v4;
  v6 = *v1;
  return DynamicLayoutMap.subscript.setter(v7, &v6);
}

uint64_t destroy for DynamicLayoutViewAdaptor.MakeTransition(uint64_t a1)
{

  __swift_destroy_boxed_opaque_existential_1(a1 + 24);
}

uint64_t specialized DynamicLayoutComputer.updateValue()(uint64_t a1, void (*a2)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void))
{
  Value = AGGraphGetValue();
  result = *(v2 + 8);
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v6 = *(v2 + 4);
    v7 = *(Value + 16);
    v9 = *Value;
    v8 = *(Value + 8);
    v10 = AGGraphGetValue();
    v11 = *(v10 + 8);
    v12 = *(v10 + 32);
    v13 = *(v10 + 40);
    v14 = *(v10 + 44);
    v16[0] = *v10;
    v16[1] = v11;
    v17 = *(v10 + 16);
    v18 = v12;
    v19 = v13;
    v20 = v14;

    v15 = specialized DynamicLayoutMap.attributes(info:)(v16);

    specialized StatefulRule<>.updateLayoutComputer<A>(layout:environment:attributes:)(v9, v8, v7, v6, v15, a2);
  }

  return result;
}

uint64_t specialized StatefulRule<>.updateLayoutComputer<A>(layout:environment:attributes:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void))
{
  result = AGGraphGetCurrentAttribute();
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v14 = result;
    v15 = result | (result << 32);

    a6(v6, v15, a4, v14, a5, a1, a2, a3 & 1);
  }

  return result;
}

{
  result = AGGraphGetCurrentAttribute();
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v14 = result;
    v15 = result | (result << 32);

    a6(v6, v15, a4, v14, a5, a1, a2, a3 & 1);
  }

  return result;
}

unsigned int *DynamicLayoutMap.subscript.getter@<X0>(unsigned int *result@<X0>, float32x2_t *a2@<X8>)
{
  v3 = *(*v2 + 16);
  if (v3)
  {
    v4 = 0;
    v6 = *result;
    v5 = result[1];
    v7 = *v2 + 32;
    v8 = *(*v2 + 16);
    while (1)
    {
      v9 = v8 >> 1;
      v10 = v4 + (v8 >> 1);
      if (__OFADD__(v4, v8 >> 1))
      {
        break;
      }

      if (v10 >= v3)
      {
        goto LABEL_21;
      }

      v11 = (v7 + 16 * v10);
      result = *v11;
      if (result < v6 || ((v12 = v11[1], result == v6) ? (v13 = v12 < v5) : (v13 = 0), v13))
      {
        v4 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_22;
        }

        v9 = v8 + ~v9;
      }

      v8 = v9;
      if (v9 <= 0)
      {
        if (v4 == v3)
        {
          goto LABEL_15;
        }

        if (v4 < v3)
        {
          v16 = v7 + 16 * v4;
          if (*v16 == v6 && *(v16 + 4) == v5)
          {
            *a2 = *(v16 + 8);
            return result;
          }

          goto LABEL_15;
        }

LABEL_23:
        __break(1u);
        return result;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_15:
  v14 = MEMORY[0x1E698D3F8];
  v15 = vld1_dup_f32(v14);
  *a2 = v15;
  return result;
}

uint64_t DynamicLayoutMap.subscript.setter(uint64_t result, unsigned int *a2)
{
  v3 = *result;
  v4 = *(result + 4);
  v5 = *a2;
  v6 = a2[1];
  v7 = *v2;
  v8 = *(*v2 + 16);
  if (!v8)
  {
    goto LABEL_21;
  }

  v9 = 0;
  v10 = v7 + 32;
  v11 = *(*v2 + 16);
  do
  {
    v12 = v11 >> 1;
    v13 = v9 + (v11 >> 1);
    if (__OFADD__(v9, v11 >> 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
      v7 = result;
LABEL_34:
      if (v9 < *(v7 + 16))
      {
        v20 = v7 + 16 * v9;
        *(v20 + 40) = v3;
        *(v20 + 44) = v4;
        *v2 = v7;
        goto LABEL_27;
      }

      __break(1u);
      return result;
    }

    if (v13 >= v8)
    {
      goto LABEL_37;
    }

    v14 = (v10 + 16 * v13);
    v15 = *v14;
    if (*v14 < v5 || ((v16 = v14[1], v15 == v5) ? (v17 = v16 < v6) : (v17 = 0), v17))
    {
      v9 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_38;
      }

      v12 = v11 + ~v12;
    }

    v11 = v12;
  }

  while (v12 > 0);
  if (v9 == v8)
  {
    goto LABEL_15;
  }

  if (v9 >= v8)
  {
    goto LABEL_39;
  }

  if (*(v10 + 16 * v9) == __PAIR64__(v6, v5))
  {
    if (v3 == *MEMORY[0x1E698D3F8] && v4 == *MEMORY[0x1E698D3F8])
    {
      result = specialized Array.remove(at:)(v9, &v21);
      goto LABEL_27;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_34;
    }

    goto LABEL_40;
  }

LABEL_15:
  if (v3 == *MEMORY[0x1E698D3F8] && v4 == *MEMORY[0x1E698D3F8])
  {
    goto LABEL_27;
  }

  if (v8 >= v9)
  {
    goto LABEL_26;
  }

  __break(1u);
LABEL_21:
  if (v3 != *MEMORY[0x1E698D3F8] || v4 != *MEMORY[0x1E698D3F8])
  {
    v9 = 0;
LABEL_26:
    result = specialized Array.replaceSubrange<A>(_:with:)(v9, v9, v5 | (v6 << 32), v3 | (v4 << 32));
  }

LABEL_27:
  v2[4] = 0;
  return result;
}

uint64_t _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA013CanTransitiondJ0V_Tt0B5(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    for (i = a2 + 32; ; i += 40)
    {
      outlined init with copy of AnyTrackedValue(i, v10);
      v5 = v11;
      v6 = v12;
      __swift_project_boxed_opaque_existential_1(v10, v11);
      if ((*(v6 + 8))(v5, v6) == &type metadata for CanTransitionTraitKey)
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_1(v10);
      if (!--v3)
      {
        return a1 & 1;
      }
    }

    v7 = v11;
    v8 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    (*(v8 + 16))(&v13, MEMORY[0x1E69E6370], v7, v8);
    __swift_destroy_boxed_opaque_existential_1(v10);
    a1 = v13;
  }

  return a1 & 1;
}

uint64_t specialized closure #1 in DynamicContainerInfo.updateItems(disableTransitions:)(unint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, _BYTE *a5, uint64_t a6, char a7, _BYTE *a8)
{
  v14 = *a2;
  v15 = *a3;
  if (*a3 < *a2)
  {
    goto LABEL_73;
  }

  v10 = a4;
  v16 = a1;
  v60 = a1;
  if (v14 != v15)
  {
    v59 = *(a1 + 72);
    v9 = *(a1 + 76);
    v57 = *a3;
    v56 = *(a1 + 76);
    do
    {
      if (v14 >= v15)
      {
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
        __break(1u);
LABEL_73:
        __break(1u);
        goto LABEL_74;
      }

      v23 = *(v10 + 136);
      if ((v23 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x193AC03C0](v14);
      }

      else
      {
        if ((v14 & 0x8000000000000000) != 0)
        {
          goto LABEL_71;
        }

        if (v14 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_72;
        }

        v8 = *(v23 + 8 * v14 + 32);
      }

      swift_beginAccess();
      outlined init with copy of DynamicViewListItem(v8 + 88, v66);
      if (v69)
      {
        if (v9)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v68 == v59)
        {
          v24 = v9;
        }

        else
        {
          v24 = 1;
        }

        if ((v24 & 1) == 0)
        {
LABEL_24:
          v61 = v14;
          v15 = v67;
          v25 = *(v16 + 8);
          if (v66[0] == *v16 && v66[1] == *(v16 + 4))
          {
            v26 = *(v67 + 16);
            if (v26 == *(v25 + 16))
            {
              if (!v26 || v67 == v25)
              {

LABEL_53:
                outlined destroy of DynamicViewListItem(v66);

                v10 = a4;
                if (v61 != *a2)
                {
                  v15 = a4 + 136;
                  specialized MutableCollection.swapAt(_:_:)(*a2, v61);
                  *a5 = 1;
                }

                swift_beginAccess();
                outlined assign with copy of DynamicViewListItem(v60, v8 + 88);
                swift_endAccess();
                swift_beginAccess();
                if (*(v8 + 84) == 1)
                {

                  v9 = a5;
                  v8 = a2;
                }

                else
                {
                  v8 = a2;
                  v15 = a4;
                  specialized DynamicContainerInfo.unremoveItem(at:)(*a2);

                  v9 = a5;
                  *a5 = 1;
                }

                v41 = a8;
                goto LABEL_59;
              }

              v27 = 0;
              v62 = v25;
              v63 = v15;
              while (1)
              {
                v28 = v15 + v27;
                v29 = *(v15 + v27 + 32);
                v30 = *(v28 + 40);
                v31 = *(v28 + 48);
                v32 = *(v28 + 52);
                v12 = *(v25 + v27 + 40);
                v33 = *(v25 + v27 + 48);
                v34 = *(v25 + v27 + 52);
                if (v29 == *(v25 + v27 + 32))
                {
                  v37 = v30 == v12 && v31 == v33;
                  v25 = v62;
                  v15 = v63;
                  if (!v37 || ((v32 ^ v34) & 1) != 0)
                  {
                    goto LABEL_45;
                  }
                }

                else
                {
                  v35 = *(*v29 + 112);
                  v64 = *(v25 + v27 + 52);
                  v65 = v32;

                  v11 = v35(v36);

                  v25 = v62;
                  v15 = v63;
                  if (v11 & 1) == 0 || v30 != v12 || v31 != v33 || ((v65 ^ v64))
                  {
                    goto LABEL_45;
                  }
                }

                v27 += 24;
                if (!--v26)
                {
                  goto LABEL_53;
                }
              }
            }
          }

LABEL_45:
          outlined destroy of DynamicViewListItem(v66);

          v15 = v57;
          v10 = a4;
          v14 = v61;
          v9 = v56;
          v16 = v60;
          goto LABEL_11;
        }
      }

      outlined destroy of DynamicViewListItem(v66);
LABEL_11:
      ++v14;
      swift_beginAccess();
    }

    while (v14 != v15);
  }

  LODWORD(v12) = *(v10 + 184) + 1;
  *(v10 + 184) = v12;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    goto LABEL_77;
  }

  LODWORD(v9) = CurrentAttribute;
  v15 = *(v16 + 64);
  v11 = v16;
  if (_s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA013CanTransitiondJ0V_Tt0B5(0, v15))
  {
    if (one-time initialization token for opacity == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_82;
  }

  v20 = 0;
  v21 = 1;
  while (1)
  {
    v38 = AGSubgraphGetGraph();
    v39 = v11;
    v40 = AGSubgraphCreate2();

    AGSubgraphAddChild();
    AGGraphClearUpdate();
    v11 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    specialized closure #2 in DynamicContainerInfo.makeItem(_:uniqueId:container:disableTransitions:)(v10, v39, v12, v9, v40, v21, v20 & 1);
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
    MEMORY[0x193ABF170]();
    if (*((*(v10 + 136) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v10 + 136) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_78;
    }

    while (1)
    {
      v15 = v10 + 136;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v9 = a5;
      v8 = a2;
      v41 = a8;
      v42 = *a3;
      if (*a2 < *a3)
      {
        v15 = v10 + 136;
        specialized MutableCollection.swapAt(_:_:)(*a2, v42);
        v42 = *a3;
      }

      *a3 = v42 + 1;
      *a5 = 1;
LABEL_59:
      _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA06ZIndexdJ0V_Tt0B5(*(v60 + 64));
      v13 = v43;
      *v41 = *v41 & 1 | (v43 != 0.0);
      a1 = *v8;
      v44 = *(v10 + 136);
      if ((v44 & 0xC000000000000001) != 0)
      {
        break;
      }

      if ((a1 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (a1 < *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {

        goto LABEL_63;
      }

      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

LABEL_74:
    v45 = MEMORY[0x193AC03C0](a1);
LABEL_63:
    v46 = *(v45 + 64);

    if (v13 == v46)
    {
      goto LABEL_69;
    }

    v48 = *v8;
    v49 = *(v10 + 136);
    if ((v49 & 0xC000000000000001) != 0)
    {
      break;
    }

    if ((v48 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v48 < *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      goto LABEL_68;
    }

    __break(1u);
LABEL_82:
    swift_once();
LABEL_6:
    v18 = _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA010TransitiondJ0V_Tt0B5(static AnyTransition.opacity, v15);
    v19 = (*(*v18 + 96))(v18);

    v20 = v19 ^ 1;
    v21 = 1;
    if ((v19 & 1) == 0 && (a7 & 1) == 0)
    {
      AGGraphGetCurrentAttribute();
      v22 = AGCreateWeakAttribute();
      specialized static GraphHost.currentHost.getter();
      specialized GraphHost.continueTransaction<A>(_:)(v22);

      v21 = 0;
      v20 = 1;
      *(v10 + 196) = 1;
    }
  }

  v50 = MEMORY[0x193AC03C0](v48);
LABEL_68:
  *(v50 + 64) = v13;

  *v9 = 1;
LABEL_69:
  ++*v8;
  return result;
}

uint64_t _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA010TransitiondJ0V_Tt0B5(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = a2 + 32;
    while (1)
    {
      outlined init with copy of AnyTrackedValue(v4, v10);
      v5 = v11;
      v6 = v12;
      __swift_project_boxed_opaque_existential_1(v10, v11);
      if ((*(v6 + 8))(v5, v6) == &type metadata for TransitionTraitKey)
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_1(v10);
      v4 += 40;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    v7 = v11;
    v8 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    (*(v8 + 16))(&v13, &type metadata for AnyTransition, v7, v8);
    __swift_destroy_boxed_opaque_existential_1(v10);
    return v13;
  }

  else
  {
LABEL_5:
  }

  return a1;
}

uint64_t closure #1 in DynamicLayoutViewAdaptor.foreachItem(items:_:)(uint64_t a1, void (*a2)(void *))
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 16);
  outlined init with copy of _ViewList_SubgraphElements(a1 + 32, v11);
  v6 = *(a1 + 80);
  v7 = *(a1 + 88);
  v8 = *(a1 + 92);
  v10[0] = v5;
  v10[1] = v4;
  v11[6] = v6;
  v12 = v7;
  v13 = v8;

  a2(v10);
  outlined destroy of DynamicViewListItem(v10);
  return 1;
}

uint64_t ViewTraitCollection.AnyTrait.subscript.getter()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v4 + 16))(&v6 - v3, v0, AssociatedTypeWitness, v2);
  return swift_dynamicCast();
}

void type metadata accessor for ColorBox<Color.OpacityColor>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for ColorBox();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void _s7SwiftUI8ColorBoxCyAA0C0V07OpacityC0VGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t one-time initialization function for opacity()
{
  _s7SwiftUI8ColorBoxCyAA0C0V07OpacityC0VGMaTm_0(0, &lazy cache variable for type metadata for TransitionBox<OpacityTransition>, lazy protocol witness table accessor for type OpacityTransition and conformance OpacityTransition, &type metadata for OpacityTransition, type metadata accessor for TransitionBox);
  result = swift_allocObject();
  static AnyTransition.opacity = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type OpacityTransition and conformance OpacityTransition()
{
  result = lazy protocol witness table cache variable for type OpacityTransition and conformance OpacityTransition;
  if (!lazy protocol witness table cache variable for type OpacityTransition and conformance OpacityTransition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpacityTransition and conformance OpacityTransition);
  }

  return result;
}

uint64_t ModifierBodyAccessor.updateBody(of:changed:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for UncheckedSendable();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v17[-v14];
  (*(v8 + 16))(v10, a1, a3, v13);
  UncheckedSendable.init(_:)(v10, a3, v15);
  if (a2)
  {
    closure #1 in ModifierBodyAccessor.updateBody(of:changed:)(v15, a3, a4);
  }

  return (*(v12 + 8))(v15, v11);
}

uint64_t closure #1 in ModifierBodyAccessor.updateBody(of:changed:)(char *a1, uint64_t a2, uint64_t a3)
{
  v82 = *MEMORY[0x1E69E9840];
  v6 = type metadata accessor for OSSignpostID();
  v7 = *(v6 - 8);
  v64 = v6;
  v65 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v66 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v57 = v52 - v10;
  v56 = a3;
  v58 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = v52 - v11;
  if (one-time initialization token for bodyInvoke != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v13 = static Signpost.bodyInvoke;
    v14 = word_1ED539040;
    v15 = HIBYTE(word_1ED539040);
    v16 = byte_1ED539042;
    v17 = static os_signpost_type_t.begin.getter();
    v77 = v13;
    v78 = v14;
    v79 = v15;
    v80 = v16;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      break;
    }

    v67 = *(&v13 + 1);
    LODWORD(v68) = v17;
    v52[1] = a1;
    v53 = v12;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for Logger?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_18DDAB4C0;
    v19 = AGTypeID.description.getter();
    v21 = v20;
    v22 = MEMORY[0x1E69E6158];
    *(v18 + 56) = MEMORY[0x1E69E6158];
    v23 = lazy protocol witness table accessor for type String and conformance String();
    *(v18 + 64) = v23;
    *(v18 + 32) = v19;
    *(v18 + 40) = v21;
    v24 = specialized static Tracing.libraryName(defining:)();
    *(v18 + 96) = v22;
    *(v18 + 104) = v23;
    *(v18 + 72) = v24;
    *(v18 + 80) = v25;
    v69 = v18;
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    if (v15)
    {
      v76 = v68;
      v74 = _signpostLog;
      v75 = &dword_18D018000;
      *&v77 = v13;
      *(&v77 + 1) = v67;
      v78 = v14;
      v71 = "%{public}@.body [in %{public}@]";
      v72 = 31;
      v73 = 2;
      v70 = v69;
      v26 = v57;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
      (*(v65 + 8))(v26, v64);
LABEL_34:

      v12 = v53;
      break;
    }

    if (v13 == 20)
    {
      v27 = 3;
    }

    else
    {
      v27 = 4;
    }

    v28 = bswap32(v13) | (4 * WORD1(v13));
    v29 = v68;
    v30 = v65 + 16;
    v59 = *(v65 + 16);
    v31 = v59(v66, v57, v64);
    v32 = 0;
    LOBYTE(v71) = 1;
    v68 = v27;
    v65 = v30;
    v62 = 16 * v27;
    v63 = (v30 - 8);
    v61 = v69 + 32;
    v60 = *(&v13 + 1);
LABEL_11:
    v67 = v52;
    MEMORY[0x1EEE9AC00](v31);
    a1 = v52 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
    v34 = a1 + 8;
    v35 = v68;
    v36 = a1 + 8;
    do
    {
      *(v36 - 1) = 0;
      *v36 = 0;
      v36 += 16;
      --v35;
    }

    while (v35);
    v12 = (v61 + 40 * v32);
    v37 = v68;
    while (1)
    {
      v38 = *(v69 + 16);
      if (v32 == v38)
      {
        LOBYTE(v71) = 0;
LABEL_19:
        v41 = v60;
        if (v60 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (a1[8] == 1)
        {
          kdebug_trace_string();
        }

        if (a1[24] == 1)
        {
          kdebug_trace_string();
        }

        if (a1[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v41 != 20 && a1[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v42 = v64;
        v43 = *v63;
        v44 = v66;
        (*v63)(v66, v64);
        v45 = __swift_project_value_buffer(v42, static OSSignpostID.continuation);
        v31 = v59(v44, v45, v42);
        if ((v71 & 1) == 0)
        {
          v46 = v64;
          v43(v66, v64);
          v43(v57, v46);
          goto LABEL_34;
        }

        goto LABEL_11;
      }

      if (v32 >= v38)
      {
        break;
      }

      ++v32;
      outlined init with copy of AnyTrackedValue(v12, &v77);
      v39 = v81;
      __swift_project_boxed_opaque_existential_1(&v77, v81);
      *(v34 - 1) = CVarArg.kdebugValue(_:)(v28 | v29, v39);
      *v34 = v40 & 1;
      v34 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v77);
      v12 += 40;
      if (!--v37)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
  }

  AGGraphClearUpdate();
  v47 = v12;
  (*(v56 + 48))();
  AGGraphSetUpdate();
  v48 = $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  MEMORY[0x1EEE9AC00](v48);
  v52[-2] = type metadata accessor for ModifierBodyAccessor();
  v52[-1] = swift_getWitnessTable();
  v49 = AssociatedTypeWitness;
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v47, partial apply for closure #2 in BodyAccessor.setBody(_:), &v52[-4], AssociatedTypeWitness, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v50);
  return (*(v54 + 8))(v47, v49);
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  type metadata accessor for _SetStorage<AGAttribute>();
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _SetStorage<AnyKeyPath>();
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<AttributedString.AnyAttribute>, lazy protocol witness table accessor for type AttributedString.AnyAttribute and conformance AttributedString.AnyAttribute, &type metadata for AttributedString.AnyAttribute, MEMORY[0x1E69E6A10]);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(*(v2 + 48) + v17);
        *(*(v4 + 48) + v17) = v18;
        result = outlined copy of AttributedString.AnyAttribute(v18, *(&v18 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeSet.copy()(MEMORY[0x1E6969498], type metadata accessor for _SetStorage<Date.ComponentsFormatStyle.Field>);
}

{
  return specialized _NativeSet.copy()(MEMORY[0x1E696A1C0], type metadata accessor for _SetStorage<Duration.UnitsFormatStyle.Unit>);
}

{
  v1 = v0;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<Subview.ID>, lazy protocol witness table accessor for type Subview.ID and conformance Subview.ID, &type metadata for Subview.ID, MEMORY[0x1E69E6A10]);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _SetStorage<ObjectIdentifier>(0, &lazy cache variable for type metadata for _SetStorage<AnyHashable>);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 40 * (v14 | (v8 << 6));
        result = outlined init with copy of AnyHashable(*(v2 + 48) + v17, v21);
        v18 = *(v4 + 48) + v17;
        v19 = v21[0];
        v20 = v21[1];
        *(v18 + 32) = v22;
        *v18 = v19;
        *(v18 + 16) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<GlassContainer.Entry.StableID>, lazy protocol witness table accessor for type GlassContainer.Entry.StableID and conformance GlassContainer.Entry.StableID, &type metadata for GlassContainer.Entry.StableID, MEMORY[0x1E69E6A10]);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<GlassContainer.Item.ID>, lazy protocol witness table accessor for type GlassContainer.Item.ID and conformance GlassContainer.Item.ID, &type metadata for GlassContainer.Item.ID, MEMORY[0x1E69E6A10]);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *(v4 + 48) + v17;
        v20 = *(v18 + 8);
        *v19 = *v18;
        *(v19 + 8) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<GlassContainer.Entry.ModelID>, lazy protocol witness table accessor for type GlassContainer.Entry.ModelID and conformance GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, MEMORY[0x1E69E6A10]);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 40 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        v23 = *(v4 + 48) + v17;
        v24 = *(v18 + 32);
        *v23 = *v18;
        *(v23 + 8) = v20;
        *(v23 + 16) = v21;
        *(v23 + 24) = v22;
        *(v23 + 32) = v24;
        result = outlined copy of GlassContainer.Entry.ModelID(v19, v20, v21, v22, v24);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _SetStorage<ObjectIdentifier>(0, &lazy cache variable for type metadata for _SetStorage<String>);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _SetStorage<AttributedString.WritingDirection?>();
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _SetStorage<ObjectIdentifier>(0, &lazy cache variable for type metadata for _SetStorage<UInt32>);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<Axis>, lazy protocol witness table accessor for type Axis and conformance Axis, &type metadata for Axis, MEMORY[0x1E69E6A10]);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<EventID>, lazy protocol witness table accessor for type EventID and conformance EventID, &type metadata for EventID, MEMORY[0x1E69E6A10]);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; v21[1] = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 16 * v14;
      v18 = (*(v2 + 48) + v17);
      v20 = *v18;
      v19 = v18[1];
      v21 = (*(v4 + 48) + v17);
      *v21 = v20;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<DefaultDescriptionAttribute>, lazy protocol witness table accessor for type DefaultDescriptionAttribute and conformance DefaultDescriptionAttribute, &type metadata for DefaultDescriptionAttribute, MEMORY[0x1E69E6A10]);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<DisplayList.ViewUpdater.ViewCache.Key>, lazy protocol witness table accessor for type DisplayList.ViewUpdater.ViewCache.Key and conformance DisplayList.ViewUpdater.ViewCache.Key, &type metadata for DisplayList.ViewUpdater.ViewCache.Key, MEMORY[0x1E69E6A10]);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(v21 + 17) = v20)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 20 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *(v18 + 16);
      v20 = *(v18 + 17);
      v21 = *(v4 + 48) + v17;
      *v21 = *v18;
      *(v21 + 16) = v19;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<AnyHashable2>, lazy protocol witness table accessor for type AnyHashable2 and conformance AnyHashable2, &type metadata for AnyHashable2, MEMORY[0x1E69E6A10]);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<CAHostingLayerEvent.MouseButton>, lazy protocol witness table accessor for type CAHostingLayerEvent.MouseButton and conformance CAHostingLayerEvent.MouseButton, &type metadata for CAHostingLayerEvent.MouseButton, MEMORY[0x1E69E6A10]);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<_ProposedSize>, lazy protocol witness table accessor for type _ProposedSize and conformance _ProposedSize, &type metadata for _ProposedSize, MEMORY[0x1E69E6A10]);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(v22 + 24) = v18)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 32 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      LOBYTE(v18) = *(v18 + 24);
      v22 = *(v4 + 48) + v17;
      *v22 = v19;
      *(v22 + 8) = v20;
      *(v22 + 16) = v21;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}
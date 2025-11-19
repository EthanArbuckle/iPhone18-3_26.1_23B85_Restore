uint64_t specialized Set.init(_nonEmptyArrayLiteral:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v39 - v10;
  v40 = v11;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v39 - v14;
  if (MEMORY[0x18D00CD40](v13))
  {
    type metadata accessor for _SetStorage();
    v16 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v16 = MEMORY[0x1E69E7CD0];
  }

  v44 = MEMORY[0x18D00CDF0](v5, a2);
  if (!v44)
  {
    return v16;
  }

  v17 = 0;
  v49 = (v6 + 16);
  v50 = v16 + 56;
  v46 = v6 + 32;
  v48 = (v6 + 8);
  v41 = v6;
  v42 = v5;
  v43 = v15;
  while (1)
  {
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (IsNativeType)
    {
      v19 = *(v6 + 16);
      v19(v15, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v17), a2);
      v20 = __OFADD__(v17, 1);
      v21 = v17 + 1;
      if (v20)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = _ArrayBuffer._getElementSlowPath(_:)();
      if (v40 != 8)
      {
        goto LABEL_23;
      }

      v52 = result;
      v19 = *v49;
      (*v49)(v15, &v52, a2);
      swift_unknownObjectRelease();
      v20 = __OFADD__(v17, 1);
      v21 = v17 + 1;
      if (v20)
      {
LABEL_20:
        __break(1u);
        return v16;
      }
    }

    v47 = v21;
    v45 = *(v6 + 32);
    v45(v51, v15, a2);
    v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v23 = v16;
    v24 = -1 << *(v16 + 32);
    v25 = v22 & ~v24;
    v26 = v25 >> 6;
    v27 = *(v50 + 8 * (v25 >> 6));
    v28 = 1 << v25;
    v29 = *(v6 + 72);
    if (((1 << v25) & v27) != 0)
    {
      v30 = ~v24;
      do
      {
        v19(v8, (*(v23 + 48) + v29 * v25), a2);
        v31 = a3;
        v32 = dispatch thunk of static Equatable.== infix(_:_:)();
        v33 = *v48;
        (*v48)(v8, a2);
        if (v32)
        {
          v33(v51, a2);
          a3 = v31;
          v6 = v41;
          v5 = v42;
          v16 = v23;
          goto LABEL_7;
        }

        v25 = (v25 + 1) & v30;
        v26 = v25 >> 6;
        v27 = *(v50 + 8 * (v25 >> 6));
        v28 = 1 << v25;
        a3 = v31;
      }

      while (((1 << v25) & v27) != 0);
      v6 = v41;
      v5 = v42;
    }

    v34 = v51;
    *(v50 + 8 * v26) = v28 | v27;
    v35 = *(v23 + 48) + v29 * v25;
    v16 = v23;
    result = (v45)(v35, v34, a2);
    v37 = *(v23 + 16);
    v20 = __OFADD__(v37, 1);
    v38 = v37 + 1;
    if (v20)
    {
      break;
    }

    *(v23 + 16) = v38;
LABEL_7:
    v15 = v43;
    v17 = v47;
    if (v47 == v44)
    {
      return v16;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

unint64_t instantiation function for generic protocol witness table for OutlineSubgroupChildren(uint64_t a1)
{
  result = lazy protocol witness table accessor for type OutlineSubgroupChildren and conformance OutlineSubgroupChildren();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type OutlineSubgroupChildren and conformance OutlineSubgroupChildren()
{
  result = lazy protocol witness table cache variable for type OutlineSubgroupChildren and conformance OutlineSubgroupChildren;
  if (!lazy protocol witness table cache variable for type OutlineSubgroupChildren and conformance OutlineSubgroupChildren)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OutlineSubgroupChildren and conformance OutlineSubgroupChildren);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OutlineSubgroupChildren and conformance OutlineSubgroupChildren;
  if (!lazy protocol witness table cache variable for type OutlineSubgroupChildren and conformance OutlineSubgroupChildren)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OutlineSubgroupChildren and conformance OutlineSubgroupChildren);
  }

  return result;
}

uint64_t type metadata completion function for OutlineGroup()
{
  result = type metadata accessor for OutlinePrimitive.Base();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for OutlineGroup(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v5 - 8);
  v9 = *(v8 + 80) | *(v7 + 80);
  v10 = (*(v8 + 80) | *(v7 + 80));
  if (*(v8 + 64) <= *(v7 + 64))
  {
    v11 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v11 = *(*(v5 - 8) + 64);
  }

  v12 = v10 <= 7 && (v9 & 0x100000) == 0;
  if (!v12 || ((((((((((v11 + 8 + ((v10 + 25) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v18 = *a2;
    *a1 = *a2;
    a1 = v18 + ((v9 & 0xF8 ^ 0x1F8u) & (v10 + 16));
    goto LABEL_38;
  }

  v13 = *(a2 + 24);
  if (v13 >= 2)
  {
    v13 = *a2 + 2;
  }

  v49 = *(v5 - 8);
  v50 = *(AssociatedTypeWitness - 8);
  v51 = AssociatedTypeWitness;
  v14 = ~v10;
  v15 = *a2;
  v16 = a2[1];
  v48 = v11 + 8;
  if (v13 == 1)
  {
    *(a1 + 16) = a2[2];

    v17 = 1;
  }

  else
  {
    v17 = 0;
  }

  *a1 = v15;
  *(a1 + 8) = v16;
  *(a1 + 24) = v17;
  v19 = a2 + v10;
  v20 = (a1 + v10 + 25) & v14;
  v21 = ((v19 + 25) & v14);
  v22 = *(v21 + v11);
  v23 = v22 - 2;
  if (v22 < 2)
  {
    v26 = v50;
    v25 = v51;
    v27 = v49;
  }

  else
  {
    if (v11 <= 3)
    {
      v24 = v11;
    }

    else
    {
      v24 = 4;
    }

    v26 = v50;
    v25 = v51;
    v27 = v49;
    if (v24 > 1)
    {
      if (v24 == 2)
      {
        v28 = *v21;
      }

      else if (v24 == 3)
      {
        v28 = *v21 | (*(v21 + 2) << 16);
      }

      else
      {
        v28 = *v21;
      }

LABEL_29:
      v29 = (v28 | (v23 << (8 * v11))) + 2;
      v22 = v28 + 2;
      if (v11 < 4)
      {
        v22 = v29;
      }

      goto LABEL_31;
    }

    if (v24)
    {
      v28 = *v21;
      goto LABEL_29;
    }
  }

LABEL_31:
  v30 = v22 == 1;
  if (v22 == 1)
  {
    v31 = v27;
  }

  else
  {
    v31 = v26;
  }

  if (v22 == 1)
  {
    v32 = v5;
  }

  else
  {
    v32 = v25;
  }

  (*(v31 + 16))(v20, v21, v32);
  *(v20 + v11) = v30;
  v33 = ((v48 + v20) & 0xFFFFFFFFFFFFFFF8);
  v34 = ((v21 + v48) & 0xFFFFFFFFFFFFFFF8);
  *v33 = *v34;
  v35 = ((v33 + 15) & 0xFFFFFFFFFFFFFFF8);
  v36 = ((v34 + 15) & 0xFFFFFFFFFFFFFFF8);
  v37 = v36[1];
  *v35 = *v36;
  v35[1] = v37;
  v38 = ((v35 + 23) & 0xFFFFFFFFFFFFFFF8);
  v39 = ((v36 + 23) & 0xFFFFFFFFFFFFFFF8);
  v40 = v39[1];
  *v38 = *v39;
  v38[1] = v40;
  v41 = ((v38 + 23) & 0xFFFFFFFFFFFFFFF8);
  v42 = ((v39 + 23) & 0xFFFFFFFFFFFFFFF8);
  v43 = v42[1];
  *v41 = *v42;
  v41[1] = v43;
  v44 = ((v41 + 23) & 0xFFFFFFFFFFFFFFF8);
  v45 = ((v42 + 23) & 0xFFFFFFFFFFFFFFF8);
  v46 = v45[1];
  *v44 = *v45;
  v44[1] = v46;

LABEL_38:

  return a1;
}

uint64_t destroy for OutlineGroup(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  if (v4 >= 2)
  {
    v4 = *a1 + 2;
  }

  if (v4 == 1)
  {
  }

  else
  {
  }

  v5 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(*(v5 - 8) + 80) | *(v7 + 80);
  v9 = a1 + v8 + 25;
  v10 = (v9 & ~v8);
  if (*(*(v5 - 8) + 64) <= *(v7 + 64))
  {
    v11 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v11 = *(*(v5 - 8) + 64);
  }

  v12 = v10[v11];
  v13 = v12 - 2;
  if (v12 >= 2)
  {
    if (v11 <= 3)
    {
      v14 = v11;
    }

    else
    {
      v14 = 4;
    }

    if (v14 <= 1)
    {
      if (!v14)
      {
        goto LABEL_23;
      }

      v15 = *v10;
    }

    else if (v14 == 2)
    {
      v15 = *v10;
    }

    else if (v14 == 3)
    {
      v15 = *v10 | (*((v9 & ~v8) + 2) << 16);
    }

    else
    {
      v15 = *v10;
    }

    v16 = (v15 | (v13 << (8 * v11))) + 2;
    v12 = v15 + 2;
    if (v11 < 4)
    {
      v12 = v16;
    }
  }

LABEL_23:
  if (v12 == 1)
  {
    v7 = *(v5 - 8);
    v17 = v5;
  }

  else
  {
    v17 = AssociatedTypeWitness;
  }

  (*(v7 + 8))(v9 & ~v8, v17);
}

uint64_t initializeWithCopy for OutlineGroup(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a2 + 24);
  if (v6 >= 2)
  {
    v6 = *a2 + 2;
  }

  v7 = *a2;
  v8 = a2[1];
  if (v6 == 1)
  {
    *(a1 + 16) = a2[2];

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  *(a1 + 24) = v9;
  v10 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(*(v10 - 8) + 80) | *(v12 + 80);
  v14 = v13 + 25;
  v15 = ~v13;
  v16 = ((a2 + v13 + 25) & ~v13);
  if (*(*(v10 - 8) + 64) <= *(v12 + 64))
  {
    v17 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v17 = *(*(v10 - 8) + 64);
  }

  v18 = v16[v17];
  v19 = v18 - 2;
  if (v18 >= 2)
  {
    if (v17 <= 3)
    {
      v20 = v17;
    }

    else
    {
      v20 = 4;
    }

    if (v20 <= 1)
    {
      if (!v20)
      {
        goto LABEL_23;
      }

      v21 = *v16;
    }

    else if (v20 == 2)
    {
      v21 = *v16;
    }

    else if (v20 == 3)
    {
      v21 = *v16 | (v16[2] << 16);
    }

    else
    {
      v21 = *v16;
    }

    v22 = (v21 | (v19 << (8 * v17))) + 2;
    v18 = v21 + 2;
    if (v17 < 4)
    {
      v18 = v22;
    }
  }

LABEL_23:
  v23 = (v14 + a1) & v15;
  v24 = v18 == 1;
  if (v18 == 1)
  {
    v12 = *(v10 - 8);
    v25 = v10;
  }

  else
  {
    v25 = AssociatedTypeWitness;
  }

  (*(v12 + 16))((v14 + a1) & v15, v16, v25);
  *(v23 + v17) = v24;
  v26 = ((v17 + 8 + v23) & 0xFFFFFFFFFFFFFFF8);
  v27 = (&v16[v17 + 8] & 0xFFFFFFFFFFFFFFF8);
  *v26 = *v27;
  v28 = ((v26 + 15) & 0xFFFFFFFFFFFFFFF8);
  v29 = ((v27 + 15) & 0xFFFFFFFFFFFFFFF8);
  v30 = v29[1];
  *v28 = *v29;
  v28[1] = v30;
  v31 = ((v28 + 23) & 0xFFFFFFFFFFFFFFF8);
  v32 = ((v29 + 23) & 0xFFFFFFFFFFFFFFF8);
  v33 = v32[1];
  *v31 = *v32;
  v31[1] = v33;
  v34 = ((v31 + 23) & 0xFFFFFFFFFFFFFFF8);
  v35 = ((v32 + 23) & 0xFFFFFFFFFFFFFFF8);
  v36 = v35[1];
  *v34 = *v35;
  v34[1] = v36;
  v37 = ((v34 + 23) & 0xFFFFFFFFFFFFFFF8);
  v38 = ((v35 + 23) & 0xFFFFFFFFFFFFFFF8);
  v39 = v38[1];
  *v37 = *v38;
  v37[1] = v39;

  return a1;
}

uint64_t assignWithCopy for OutlineGroup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = *(a1 + 24);
    if (v6 >= 2)
    {
      v6 = *a1 + 2;
    }

    if (v6 == 1)
    {
    }

    else
    {
    }

    v7 = *(a2 + 24);
    if (v7 >= 2)
    {
      v7 = *a2 + 2;
    }

    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    if (v7 == 1)
    {
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 24) = 0;
    }
  }

  v8 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v8 - 8);
  v12 = *(v11 + 80) | *(v10 + 80);
  v13 = v12 + 25 + a1;
  v14 = (v13 & ~v12);
  v15 = ((v12 + 25 + a2) & ~v12);
  if (*(v11 + 64) <= *(v10 + 64))
  {
    v16 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v16 = *(*(v8 - 8) + 64);
  }

  if (v14 != v15)
  {
    v17 = AssociatedTypeWitness;
    v18 = v14[v16];
    v19 = v18 - 2;
    if (v18 < 2)
    {
      goto LABEL_30;
    }

    if (v16 <= 3)
    {
      v20 = v16;
    }

    else
    {
      v20 = 4;
    }

    if (v20 <= 1)
    {
      if (!v20)
      {
        goto LABEL_30;
      }

      v21 = *v14;
    }

    else if (v20 == 2)
    {
      v21 = *v14;
    }

    else if (v20 == 3)
    {
      v21 = *v14 | (*((v13 & ~v12) + 2) << 16);
    }

    else
    {
      v21 = *v14;
    }

    v22 = (v21 | (v19 << (8 * v16))) + 2;
    v18 = v21 + 2;
    if (v16 < 4)
    {
      v18 = v22;
    }

LABEL_30:
    if (v18 == 1)
    {
      v23 = *(v8 - 8);
    }

    else
    {
      v23 = *(AssociatedTypeWitness - 8);
    }

    if (v18 == 1)
    {
      v24 = v8;
    }

    else
    {
      v24 = AssociatedTypeWitness;
    }

    (*(v23 + 8))(v13 & ~v12, v24);
    v25 = *(v15 + v16);
    v26 = v25 - 2;
    if (v25 >= 2)
    {
      if (v16 <= 3)
      {
        v27 = v16;
      }

      else
      {
        v27 = 4;
      }

      if (v27 > 1)
      {
        if (v27 == 2)
        {
          v28 = *v15;
        }

        else if (v27 == 3)
        {
          v28 = *v15 | (*(v15 + 2) << 16);
        }

        else
        {
          v28 = *v15;
        }

LABEL_48:
        v29 = (v28 | (v26 << (8 * v16))) + 2;
        v25 = v28 + 2;
        if (v16 < 4)
        {
          v25 = v29;
        }

        goto LABEL_50;
      }

      if (v27)
      {
        v28 = *v15;
        goto LABEL_48;
      }
    }

LABEL_50:
    v30 = v25 == 1;
    if (v25 == 1)
    {
      v31 = v11;
    }

    else
    {
      v31 = v10;
    }

    if (v25 == 1)
    {
      v32 = v8;
    }

    else
    {
      v32 = v17;
    }

    (*(v31 + 16))(v14, v15, v32);
    v14[v16] = v30;
  }

  v33 = &v14[v16 + 8];
  v34 = v15 + v16 + 8;
  v35 = (v34 & 0xFFFFFFFFFFFFFFF8) + 15;
  *(v33 & 0xFFFFFFFFFFFFFFF8) = *(v34 & 0xFFFFFFFFFFFFFFF8);
  v36 = (v33 & 0xFFFFFFFFFFFFFFF8) + 15;

  v36 &= 0xFFFFFFFFFFFFFFF8;
  v35 &= 0xFFFFFFFFFFFFFFF8;
  v37 = *(v35 + 8);
  *v36 = *v35;
  *(v36 + 8) = v37;

  v38 = ((v36 + 23) & 0xFFFFFFFFFFFFFFF8);
  v39 = ((v35 + 23) & 0xFFFFFFFFFFFFFFF8);
  v40 = v39[1];
  *v38 = *v39;
  v38[1] = v40;

  v41 = ((v38 + 23) & 0xFFFFFFFFFFFFFFF8);
  v42 = ((v39 + 23) & 0xFFFFFFFFFFFFFFF8);
  v43 = v42[1];
  *v41 = *v42;
  v41[1] = v43;

  v44 = ((v41 + 23) & 0xFFFFFFFFFFFFFFF8);
  v45 = ((v42 + 23) & 0xFFFFFFFFFFFFFFF8);
  v46 = v45[1];
  *v44 = *v45;
  v44[1] = v46;

  return a1;
}

uint64_t initializeWithTake for OutlineGroup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 24);
  if (v5 >= 2)
  {
    v5 = *a2 + 2;
  }

  if (v5 == 1)
  {
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    v6 = 1;
  }

  else
  {
    v6 = 0;
    *a1 = *a2;
  }

  *(a1 + 24) = v6;
  v7 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(*(v7 - 8) + 80) | *(v9 + 80);
  v11 = v10 + 25;
  v12 = ~v10;
  v13 = ((v10 + 25 + a2) & ~v10);
  if (*(*(v7 - 8) + 64) <= *(v9 + 64))
  {
    v14 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v14 = *(*(v7 - 8) + 64);
  }

  v15 = v13[v14];
  v16 = v15 - 2;
  if (v15 >= 2)
  {
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
        goto LABEL_23;
      }

      v18 = *v13;
    }

    else if (v17 == 2)
    {
      v18 = *v13;
    }

    else if (v17 == 3)
    {
      v18 = *v13 | (v13[2] << 16);
    }

    else
    {
      v18 = *v13;
    }

    v19 = (v18 | (v16 << (8 * v14))) + 2;
    v15 = v18 + 2;
    if (v14 < 4)
    {
      v15 = v19;
    }
  }

LABEL_23:
  v20 = (v11 + a1) & v12;
  v21 = v15 == 1;
  if (v15 == 1)
  {
    v9 = *(v7 - 8);
    v22 = v7;
  }

  else
  {
    v22 = AssociatedTypeWitness;
  }

  (*(v9 + 32))((v11 + a1) & v12, v13, v22);
  *(v20 + v14) = v21;
  v23 = ((v14 + 8 + v20) & 0xFFFFFFFFFFFFFFF8);
  v24 = (&v13[v14 + 8] & 0xFFFFFFFFFFFFFFF8);
  *v23 = *v24;
  v25 = ((v23 + 15) & 0xFFFFFFFFFFFFFFF8);
  v26 = ((v24 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v25 = *v26;
  v27 = ((v25 + 23) & 0xFFFFFFFFFFFFFFF8);
  v28 = ((v26 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v27 = *v28;
  v29 = ((v27 + 23) & 0xFFFFFFFFFFFFFFF8);
  v30 = ((v28 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v29 = *v30;
  *((v29 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v30 + 23) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for OutlineGroup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = *(a1 + 24);
    if (v6 >= 2)
    {
      v6 = *a1 + 2;
    }

    if (v6 == 1)
    {
    }

    else
    {
    }

    v7 = *(a2 + 24);
    if (v7 >= 2)
    {
      v7 = *a2 + 2;
    }

    if (v7 == 1)
    {
      *a1 = *a2;
      *(a1 + 16) = *(a2 + 16);
      v8 = 1;
    }

    else
    {
      v8 = 0;
      *a1 = *a2;
    }

    *(a1 + 24) = v8;
  }

  v9 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v9 - 8);
  v13 = *(v12 + 80) | *(v11 + 80);
  v14 = v13 + 25 + a1;
  v15 = (v14 & ~v13);
  v16 = ((v13 + 25 + a2) & ~v13);
  if (*(v12 + 64) <= *(v11 + 64))
  {
    v17 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v17 = *(*(v9 - 8) + 64);
  }

  if (v15 != v16)
  {
    v18 = AssociatedTypeWitness;
    v19 = v15[v17];
    v20 = v19 - 2;
    if (v19 < 2)
    {
      goto LABEL_31;
    }

    if (v17 <= 3)
    {
      v21 = v17;
    }

    else
    {
      v21 = 4;
    }

    if (v21 <= 1)
    {
      if (!v21)
      {
        goto LABEL_31;
      }

      v22 = *v15;
    }

    else if (v21 == 2)
    {
      v22 = *v15;
    }

    else if (v21 == 3)
    {
      v22 = *v15 | (*((v14 & ~v13) + 2) << 16);
    }

    else
    {
      v22 = *v15;
    }

    v23 = (v22 | (v20 << (8 * v17))) + 2;
    v19 = v22 + 2;
    if (v17 < 4)
    {
      v19 = v23;
    }

LABEL_31:
    if (v19 == 1)
    {
      v24 = *(v9 - 8);
    }

    else
    {
      v24 = *(AssociatedTypeWitness - 8);
    }

    if (v19 == 1)
    {
      v25 = v9;
    }

    else
    {
      v25 = AssociatedTypeWitness;
    }

    (*(v24 + 8))(v14 & ~v13, v25);
    v26 = *(v16 + v17);
    v27 = v26 - 2;
    if (v26 >= 2)
    {
      if (v17 <= 3)
      {
        v28 = v17;
      }

      else
      {
        v28 = 4;
      }

      if (v28 > 1)
      {
        if (v28 == 2)
        {
          v29 = *v16;
        }

        else if (v28 == 3)
        {
          v29 = *v16 | (*(v16 + 2) << 16);
        }

        else
        {
          v29 = *v16;
        }

LABEL_49:
        v30 = (v29 | (v27 << (8 * v17))) + 2;
        v26 = v29 + 2;
        if (v17 < 4)
        {
          v26 = v30;
        }

        goto LABEL_51;
      }

      if (v28)
      {
        v29 = *v16;
        goto LABEL_49;
      }
    }

LABEL_51:
    v31 = v26 == 1;
    if (v26 == 1)
    {
      v32 = v12;
    }

    else
    {
      v32 = v11;
    }

    if (v26 == 1)
    {
      v33 = v9;
    }

    else
    {
      v33 = v18;
    }

    (*(v32 + 32))(v15, v16, v33);
    v15[v17] = v31;
  }

  v34 = &v15[v17 + 8];
  v35 = ((v16 + v17 + 8) & 0xFFFFFFFFFFFFFFF8);
  *(v34 & 0xFFFFFFFFFFFFFFF8) = *v35;
  v36 = (v34 & 0xFFFFFFFFFFFFFFF8) + 15;

  v36 &= 0xFFFFFFFFFFFFFFF8;
  v37 = ((v35 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v36 = *v37;

  v38 = ((v36 + 23) & 0xFFFFFFFFFFFFFFF8);
  v39 = ((v37 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v38 = *v39;

  v40 = ((v38 + 23) & 0xFFFFFFFFFFFFFFF8);
  v41 = ((v39 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v40 = *v41;

  *((v40 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v41 + 23) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for OutlineGroup(int *a1, int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  if (v8 <= *(v6 + 64))
  {
    v8 = *(v6 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = *(v7 + 80) | *(v6 + 80);
  v10 = v8 + 8;
  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  v13 = ((((((((((v10 + ((v9 + 25) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v14 = v13 & 0xFFFFFFF8;
  v15 = a2 - 2147483646;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v15 = 2;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v17 = 1;
  }

  else
  {
    v17 = v16;
  }

  if (v17 == 4)
  {
    v18 = *(a1 + v13);
    if (!v18)
    {
      goto LABEL_5;
    }
  }

  else if (v17 == 2)
  {
    v18 = *(a1 + v13);
    if (!v18)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v18 = *(a1 + v13);
    if (!v18)
    {
LABEL_5:
      v11 = *((v10 + ((a1 + v9 + 25) & ~v9)) & 0xFFFFFFFFFFFFFFF8);
      if (v11 >= 0xFFFFFFFF)
      {
        LODWORD(v11) = -1;
      }

      return (v11 + 1);
    }
  }

  v19 = v18 - 1;
  if (v14)
  {
    v19 = 0;
    v20 = *a1;
  }

  else
  {
    v20 = 0;
  }

  return (v20 | v19) ^ 0x80000000;
}

void storeEnumTagSinglePayload for OutlineGroup(int *a1, int a2, int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 64);
  v10 = *(v7 - 8);
  if (*(v10 + 64) > v9)
  {
    v9 = *(v10 + 64);
  }

  v11 = *(v10 + 80) | *(v8 + 80);
  v12 = v9 + 8;
  v13 = ((((((((((v9 + 8 + ((v11 + 25) & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (a3 < 0)
  {
    v15 = a3 - 2147483646;
    if (((((((((((v9 + 8 + ((v11 + 25) & ~v11)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = 2;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v14 = 1;
    }

    else
    {
      v14 = v16;
    }

    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_18:
    v17 = a2 & 0x7FFFFFFF;
    if (v13)
    {
      v18 = 1;
    }

    else
    {
      v18 = v17 + 1;
    }

    if (v13)
    {
      bzero(a1, v13);
      *a1 = v17;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        *(a1 + v13) = v18;
      }

      else
      {
        *(a1 + v13) = v18;
      }
    }

    else if (v14)
    {
      *(a1 + v13) = v18;
    }

    return;
  }

  v14 = 0;
  if (a2 < 0)
  {
    goto LABEL_18;
  }

LABEL_5:
  if (v14 <= 1)
  {
    if (v14)
    {
      *(a1 + v13) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_29;
    }

LABEL_28:
    if (!a2)
    {
      return;
    }

    goto LABEL_29;
  }

  if (v14 == 2)
  {
    *(a1 + v13) = 0;
    goto LABEL_28;
  }

  *(a1 + v13) = 0;
  if (a2)
  {
LABEL_29:
    *((v12 + ((a1 + v11 + 25) & ~v11)) & 0xFFFFFFFFFFFFFFF8) = (a2 - 1);
  }
}

uint64_t outlined consume of StateOrBinding<Set<B>><A, B, C, D, E><A1>(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }
}

uint64_t partial apply for closure #1 in closure #1 in static OutlineGroup.ChildPath.binding<A>(_:)@<X0>(uint64_t a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  v3 = *(type metadata accessor for Binding() - 8);
  return closure #1 in closure #1 in static OutlineGroup.ChildPath.binding<A>(_:)(*(v1 + 16), *(v1 + ((*(v3 + 64) + ((*(v3 + 80) + 96) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8)), a1);
}

uint64_t partial apply for closure #2 in closure #1 in static OutlineGroup.ChildPath.binding<A>(_:)(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  v3 = *(type metadata accessor for Binding() - 8);
  v4 = (*(v3 + 80) + 96) & ~*(v3 + 80);
  return closure #2 in closure #1 in static OutlineGroup.ChildPath.binding<A>(_:)(a1, *(v1 + 16), *(v1 + 24), v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

unint64_t lazy protocol witness table accessor for type _CrownHapticsConfiguration.Notch.Strength and conformance _CrownHapticsConfiguration.Notch.Strength()
{
  result = lazy protocol witness table cache variable for type _CrownHapticsConfiguration.Notch.Strength and conformance _CrownHapticsConfiguration.Notch.Strength;
  if (!lazy protocol witness table cache variable for type _CrownHapticsConfiguration.Notch.Strength and conformance _CrownHapticsConfiguration.Notch.Strength)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _CrownHapticsConfiguration.Notch.Strength and conformance _CrownHapticsConfiguration.Notch.Strength);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _CrownHapticsConfiguration.Notch.RestingPosition and conformance _CrownHapticsConfiguration.Notch.RestingPosition()
{
  result = lazy protocol witness table cache variable for type _CrownHapticsConfiguration.Notch.RestingPosition and conformance _CrownHapticsConfiguration.Notch.RestingPosition;
  if (!lazy protocol witness table cache variable for type _CrownHapticsConfiguration.Notch.RestingPosition and conformance _CrownHapticsConfiguration.Notch.RestingPosition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _CrownHapticsConfiguration.Notch.RestingPosition and conformance _CrownHapticsConfiguration.Notch.RestingPosition);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for _CrownHapticsConfiguration(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of _CrownHapticsConfiguration(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for _CrownHapticsConfiguration(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of _CrownHapticsConfiguration(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  outlined consume of _CrownHapticsConfiguration(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for _CrownHapticsConfiguration(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  outlined consume of _CrownHapticsConfiguration(v4, v5, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for _CrownHapticsConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for _CrownHapticsConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for _CrownHapticsConfiguration(uint64_t a1)
{
  if (*(a1 + 16) <= 3u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t destructiveInjectEnumTag for _CrownHapticsConfiguration(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for _CrownHapticsConfiguration.Notch(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 18))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for _CrownHapticsConfiguration.Notch(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 2;
    }
  }

  return result;
}

void storeEnumTagSinglePayload for VariadicViewForest(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v13 = v9 + v10;
  v14 = ((v9 + v10) & ~v10) + v11;
  v15 = a3 >= v12;
  v16 = a3 - v12;
  if (v16 != 0 && v15)
  {
    if (v14 <= 3)
    {
      v21 = ((v16 + ~(-1 << (8 * v14))) >> (8 * v14)) + 1;
      if (HIWORD(v21))
      {
        v17 = 4;
      }

      else
      {
        if (v21 < 0x100)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v21 >= 2)
        {
          v17 = v22;
        }

        else
        {
          v17 = 0;
        }
      }
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v17 = 0;
  }

  if (v12 < a2)
  {
    v18 = ~v12 + a2;
    if (v14 < 4)
    {
      v20 = (v18 >> (8 * v14)) + 1;
      if (v14)
      {
        v23 = v18 & ~(-1 << (8 * v14));
        v24 = a1;
        bzero(a1, v14);
        a1 = v24;
        if (v14 != 3)
        {
          if (v14 == 2)
          {
            *v24 = v23;
            if (v17 > 1)
            {
LABEL_57:
              if (v17 == 2)
              {
                *&a1[v14] = v20;
              }

              else
              {
                *&a1[v14] = v20;
              }

              return;
            }
          }

          else
          {
            *v24 = v18;
            if (v17 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *v24 = v23;
        v24[2] = BYTE2(v23);
      }

      if (v17 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v19 = a1;
      bzero(a1, v14);
      a1 = v19;
      *v19 = v18;
      v20 = 1;
      if (v17 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v17)
    {
      a1[v14] = v20;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v14] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v14] = 0;
LABEL_30:
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!v17)
  {
    goto LABEL_30;
  }

  a1[v14] = 0;
  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v6 >= v8)
  {
    v29 = *(v5 + 56);

    v29();
  }

  else
  {
    v25 = &a1[v13] & ~v10;
    if (v8 >= a2)
    {
      v30 = *(v7 + 56);
      v31 = &a1[v13] & ~v10;

      v30(v31);
    }

    else
    {
      if (v11 <= 3)
      {
        v26 = ~(-1 << (8 * v11));
      }

      else
      {
        v26 = -1;
      }

      if (v11)
      {
        v27 = v26 & (~v8 + a2);
        if (v11 <= 3)
        {
          v28 = v11;
        }

        else
        {
          v28 = 4;
        }

        bzero((&a1[v13] & ~v10), v11);
        if (v28 > 2)
        {
          if (v28 == 3)
          {
            *v25 = v27;
            *(v25 + 2) = BYTE2(v27);
          }

          else
          {
            *v25 = v27;
          }
        }

        else if (v28 == 1)
        {
          *v25 = v27;
        }

        else
        {
          *v25 = v27;
        }
      }
    }
  }
}

uint64_t static VariadicViewForest._makeViewList(view:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  outlined init with copy of _ViewListInputs(a2, v13);
  (*(a5 + 24))(&v12, a3, a5);
  PropertyList.subscript.setter();
  LODWORD(v12) = v8;
  type metadata accessor for VariadicViewForest();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  *(v9 + 32) = a5;
  *(v9 + 40) = v8;
  (*(a5 + 40))(v11, v13, partial apply for closure #2 in static VariadicViewForest._makeViewList(view:inputs:), v9, a3, a5);

  return outlined destroy of _ViewListInputs(v13);
}

uint64_t closure #2 in static VariadicViewForest._makeViewList(view:inputs:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  outlined init with copy of _ViewListInputs(a1, v10);
  PropertyList.subscript.getter();
  v11 |= v9;
  LODWORD(v9) = a2;
  v7 = static VariadicViewForest.ListOutputsTreeVisitor.accumulateOutputs(view:inputs:)(&v9, v10, a3, a4);
  outlined destroy of _ViewListInputs(v10);
  return v7;
}

uint64_t static VariadicViewForest._viewListCount(inputs:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1[1];
  v8 = a1[3];
  v27 = a1[2];
  v28 = v8;
  v9 = a1[3];
  v29 = a1[4];
  v10 = a1[1];
  v26[0] = *a1;
  v26[1] = v10;
  v23 = v27;
  v24 = v9;
  v25 = a1[4];
  v21 = v26[0];
  v22 = v7;
  v11 = *(a4 + 24);
  outlined init with copy of _ViewListCountInputs(v26, v32);
  v11(v32, a2, a4);
  PropertyList.subscript.setter();
  v30[2] = v23;
  v30[3] = v24;
  v30[4] = v25;
  v30[0] = v21;
  v30[1] = v22;
  v18 = v23;
  v19 = v24;
  v20 = v25;
  v16 = v21;
  v17 = v22;
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a4;
  v15[5] = v26;
  v12 = *(a4 + 48);
  outlined init with copy of _ViewListCountInputs(v30, v32);
  v13 = v12(&v16, partial apply for closure #1 in static VariadicViewForest._viewListCount(inputs:), v15, a2, a4);
  v31[2] = v18;
  v31[3] = v19;
  v31[4] = v20;
  v31[0] = v16;
  v31[1] = v17;
  outlined destroy of _ViewListCountInputs(v31);
  v32[2] = v23;
  v32[3] = v24;
  v32[4] = v25;
  v32[0] = v21;
  v32[1] = v22;
  outlined destroy of _ViewListCountInputs(v32);
  return v13;
}

uint64_t closure #1 in static VariadicViewForest._viewListCount(inputs:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = *MEMORY[0x1E69E9840];
  v6 = a1[1];
  v43[0] = *a1;
  v43[1] = v6;
  v7 = a1[1];
  v8 = a1[3];
  v44 = a1[2];
  v45 = v8;
  v9 = a1[3];
  v46 = a1[4];
  v10 = v43[0];
  v39 = v7;
  v40 = v44;
  v11 = a1[4];
  v41 = v9;
  v42 = v11;
  outlined init with copy of _ViewListCountInputs(v43, &v33);
  PropertyList.subscript.getter();
  v12 = v33 | *(&v10 + 1);
  _s7SwiftUI15TupleDescriptorPAAE16tupleDescriptionyAA0c4TypeF0VyxGSo07AGTupleG0aFZAA04ViewD0V_Tt1g5(a4, &v33);
  v13 = v33;
  *&v47 = v10;
  *(&v47 + 1) = v12;
  v14 = a1[2];
  v48 = a1[1];
  v49 = v14;
  v15 = a1[4];
  v50 = a1[3];
  v51 = v15;
  v35 = v14;
  v36 = v50;
  v37 = v15;
  v33 = v47;
  v34 = v48;
  v38 = MEMORY[0x1E69E7CC0];
  v16 = *(v13 + 16);
  if (v16)
  {
    outlined init with copy of _ViewListCountInputs(&v47, v31);
    v17 = type metadata accessor for VariadicViewForest.CountsTreeVisitor();
    v18 = (v13 + 48);
    do
    {
      v19 = *(v18 - 1);
      v20 = *v18;
      WitnessTable = swift_getWitnessTable();
      (*(WitnessTable + 8))(v19, v19, v20, v17, WitnessTable);
      v18 += 3;
      --v16;
    }

    while (v16);
  }

  else
  {
    outlined init with copy of _ViewListCountInputs(&v47, v31);
  }

  v26[0] = v10;
  v26[1] = v12;
  v27 = v39;
  v28 = v40;
  v29 = v41;
  v30 = v42;
  outlined destroy of _ViewListCountInputs(v26);
  v31[2] = v35;
  v31[3] = v36;
  v31[4] = v37;
  v22 = v38;
  v32 = v38;
  v31[0] = v33;
  v31[1] = v34;
  v23 = type metadata accessor for VariadicViewForest.CountsTreeVisitor();
  v24 = *(*(v23 - 8) + 8);

  v24(v31, v23);
  return v22;
}

uint64_t VariadicViewForest.CountsTreeVisitor.visit<A>(type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *(v5 + 16);
  v9 = *(v5 + 48);
  v27 = *(v5 + 32);
  v28 = v9;
  v10 = *(v5 + 48);
  v29 = *(v5 + 64);
  v11 = *(v5 + 16);
  v26[0] = *v5;
  v26[1] = v11;
  v23 = v27;
  v24 = v10;
  v25 = *(v5 + 64);
  v21 = v26[0];
  v22 = v8;
  v12 = *(a4 + 40);
  outlined init with copy of _ViewListCountInputs(v26, v30);
  v13 = v12(&v21, a3, a4);
  v15 = v14;
  v30[2] = v23;
  v30[3] = v24;
  v30[4] = v25;
  v30[0] = v21;
  v30[1] = v22;
  outlined destroy of _ViewListCountInputs(v30);
  v16 = *(v5 + 80);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 16) + 1, 1, v16);
    v16 = result;
  }

  v19 = *(v16 + 16);
  v18 = *(v16 + 24);
  if (v19 >= v18 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v16);
    v16 = result;
  }

  *(v16 + 16) = v19 + 1;
  v20 = v16 + 16 * v19;
  *(v20 + 32) = v13;
  *(v20 + 40) = v15 & 1;
  *(v5 + 80) = v16;
  return result;
}

uint64_t _s7SwiftUI22VariadicViewForestRootPAAE14_viewListCount6inputs4bodySiSgAA01_dhI6InputsV_SayAGGAIXEtFZAA22_NavigationSplitReader33_F85FC22E89B4B90838177134F16A33DBLLV0eF0V_Tt1B5(_OWORD *a1, uint64_t (*a2)(_OWORD *))
{
  v2 = a1[3];
  v12[2] = a1[2];
  v12[3] = v2;
  v12[4] = a1[4];
  v3 = a1[1];
  v12[0] = *a1;
  v12[1] = v3;
  result = a2(v12);
  v5 = *(result + 16);
  if (v5)
  {
    v6 = 0;
    v7 = (result + 40);
    v8 = v5 - 1;
    while (1)
    {
      v9 = *v7;
      if (v9)
      {
        v6 = 0;
      }

      else
      {
        v10 = *(v7 - 1);
        v11 = __OFADD__(v6, v10);
        v6 += v10;
        if (v11)
        {
          __break(1u);
          return result;
        }
      }

      if (!v8)
      {
        goto LABEL_12;
      }

      --v8;
      v7 += 16;
      if (v9)
      {
        while (v8)
        {
          --v8;
        }

        v6 = 0;
LABEL_12:

        return v6;
      }
    }
  }

  return 0;
}

uint64_t specialized static VariadicViewForestRoot._makeViewList(root:inputs:body:)(int a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = a3(a2);
  v18 = a2;
  v6 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay7SwiftUI16_ViewListOutputsVG_14AttributeGraph0I0VyAF0fG0_pGs5NeverOTg5(partial apply for closure #1 in static VariadicViewForestRoot._makeViewList(root:inputs:body:), v17, v5);

  static DynamicPropertyCache.fields(of:)();
  v8 = v29[0];
  v7 = v29[1];
  v9 = v30;
  v10 = v31;
  outlined init with copy of _ViewListInputs(a2, v29);
  if ((AGTypeID.isValueType.getter() & 1) == 0)
  {
    goto LABEL_7;
  }

  v11 = AGSubgraphGetCurrent();
  if (!v11)
  {
    __break(1u);
LABEL_7:
    v19 = 0;
    v20 = 0xE000000000000000;
    _StringGuts.grow(_:)(75);
    MEMORY[0x18D00C9B0](0xD00000000000003DLL, 0x800000018CD42B50);
    MEMORY[0x18D00C9B0](0x6F52747365726F46, 0xEA0000000000746FLL);
    MEMORY[0x18D00C9B0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v12 = v11;
  v24 = v6;
  v25 = v11;
  v23 = a1;
  v19 = v8;
  v20 = v7;
  v21 = v9;
  v22 = v10;
  type metadata accessor for ForestRootBodyAccessor<_NavigationSplitReader.ForestRoot>();
  lazy protocol witness table accessor for type ForestRootBodyAccessor<_NavigationSplitReader.ForestRoot> and conformance ForestRootBodyAccessor<A>();
  BodyAccessor.makeBody(container:inputs:fields:)();

  v14 = v26;
  v13 = v27;
  v15 = v28;
  lazy protocol witness table accessor for type NavigationSplitCore and conformance NavigationSplitCore();
  static View.makeDebuggableViewList(view:inputs:)();
  if ((v15 & 1) == 0)
  {
    v26 = v14;
    v27 = v13;
    LODWORD(v24) = a1;
    v19 = v8;
    v20 = v7;
    v21 = v9;
    v22 = v10;
    _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();
  }

  outlined destroy of _ViewListInputs(v29);
  return outlined consume of DynamicPropertyCache.Fields.Layout();
}

uint64_t closure #1 in static VariadicViewForestRoot._makeViewList(root:inputs:body:)@<X0>(_OWORD *a1@<X1>, _DWORD *a2@<X8>)
{
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v7[2] = a1[2];
  outlined init with copy of _GraphInputs(v7, v6);
  _ViewListInputs.init(_:)();
  v4 = _ViewListOutputs.makeAttribute(inputs:)();
  result = outlined destroy of _ViewListInputs(v6);
  *a2 = v4;
  return result;
}

uint64_t protocol witness for static VariadicViewForestRoot._viewListCount(inputs:body:) in conformance _NavigationSplitReader.ForestRoot(_OWORD *a1, uint64_t (*a2)(_OWORD *))
{
  v2 = a1[3];
  v5[2] = a1[2];
  v5[3] = v2;
  v5[4] = a1[4];
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  return _s7SwiftUI22VariadicViewForestRootPAAE14_viewListCount6inputs4bodySiSgAA01_dhI6InputsV_SayAGGAIXEtFZAA22_NavigationSplitReader33_F85FC22E89B4B90838177134F16A33DBLLV0eF0V_Tt1B5(v5, a2);
}

uint64_t initializeWithCopy for VariadicViewForest.ListOutputsTreeVisitor(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);

  swift_weakCopyInit();
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  v4 = *(a2 + 152);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = v4;

  return a1;
}

uint64_t assignWithCopy for VariadicViewForest.ListOutputsTreeVisitor(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  swift_weakCopyAssign();
  v4 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = v4;
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);

  return a1;
}

uint64_t initializeWithTake for VariadicViewForest.ListOutputsTreeVisitor(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  swift_weakTakeInit();
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  return a1;
}

uint64_t assignWithTake for VariadicViewForest.ListOutputsTreeVisitor(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  swift_weakTakeAssign();
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  v4 = *(a2 + 152);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = v4;

  return a1;
}

uint64_t getEnumTagSinglePayload for VariadicViewForest.ListOutputsTreeVisitor(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
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

uint64_t storeEnumTagSinglePayload for VariadicViewForest.ListOutputsTreeVisitor(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for VariadicViewForest.CountsTreeVisitor()
{
}

uint64_t initializeWithCopy for VariadicViewForest.CountsTreeVisitor(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);

  return a1;
}

uint64_t assignWithCopy for VariadicViewForest.CountsTreeVisitor(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *(a1 + 24) = v4;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);

  return a1;
}

uint64_t assignWithTake for VariadicViewForest.CountsTreeVisitor(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  v4 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v4;

  return a1;
}

uint64_t getEnumTagSinglePayload for VariadicViewForest.CountsTreeVisitor(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for VariadicViewForest.CountsTreeVisitor(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *assignWithCopy for ForestRootBodyAccessor(void *a1, void *a2)
{
  *a1 = *a2;

  v4 = a2[1];
  v5 = a1[1];
  a1[1] = v4;
  v6 = v4;

  return a1;
}

uint64_t assignWithTake for ForestRootBodyAccessor(uint64_t a1, _OWORD *a2)
{

  v4 = *(a1 + 8);
  *a1 = *a2;

  return a1;
}

void TableCollectionViewCell.updateConfiguration(using:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for UIBackgroundConfiguration();
  v6 = *(v5 - 8);
  v60 = v5;
  v61 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v56 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v57 = &v55 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v59 = &v55 - v11;
  type metadata accessor for UIBackgroundConfiguration?(0, &lazy cache variable for type metadata for UIBackgroundConfiguration?, MEMORY[0x1E69DC0D8]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v58 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v55 - v15;
  v17 = type metadata accessor for UIListContentConfiguration();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UIBackgroundConfiguration?(0, &lazy cache variable for type metadata for UIListContentConfiguration?, MEMORY[0x1E69DC118]);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v55 - v22;
  v24 = UICellConfigurationState.traitCollection.getter();
  if ([v24 horizontalSizeClass] == 1)
  {

    v25 = 1;
  }

  else
  {
    v26 = [v24 userInterfaceIdiom];

    v25 = v26 == 0;
  }

  isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
  v65.receiver = v2;
  v65.super_class = ObjectType;
  objc_msgSendSuper2(&v65, sel__bridgedUpdateConfigurationUsingState_, isa);

  v29 = direct field offset for TableCollectionViewCell.isHeader;
  if (*(v2 + direct field offset for TableCollectionViewCell.isHeader) == 1 && v25)
  {
    static UIListContentConfiguration.prominentInsetGroupedHeader()();
    v30 = type metadata accessor for UICellConfigurationState();
    v63 = v30;
    v64 = MEMORY[0x1E69DC0B0];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v62);
    (*(*(v30 - 8) + 16))(boxed_opaque_existential_1, a1, v30);
    UIListContentConfiguration.updated(for:)();
    (*(v18 + 8))(v20, v17);
    __swift_destroy_boxed_opaque_existential_1(v62);
    (*(v18 + 56))(v23, 0, 1, v17);
    v32 = direct field offset for ListCollectionViewCellBase.lastConfiguration;
    swift_beginAccess();
    outlined assign with take of UIListContentConfiguration?(v23, v2 + v32);
    v28 = swift_endAccess();
  }

  MEMORY[0x18D00DBA0](v28);
  v33 = v60;
  if ((*(v61 + 48))(v16, 1, v60))
  {
    v34 = outlined destroy of UIBackgroundConfiguration?(v16);
  }

  else
  {
    v45 = UIBackgroundConfiguration.customView.getter();
    v34 = outlined destroy of UIBackgroundConfiguration?(v16);
    if (v45)
    {
      type metadata accessor for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>();
      v46 = swift_dynamicCastClass();

      if (v46)
      {
        return;
      }
    }
  }

  if (!v25 && (*(v2 + v29) & 1) != 0)
  {
    v44 = v58;
    static UIBackgroundConfiguration.clear()();
    (*(v61 + 56))(v44, 0, 1, v33);
    MEMORY[0x18D00DBB0](v44);
    return;
  }

  v35 = v57;
  MEMORY[0x18D00DBC0](v34);
  v36 = type metadata accessor for UICellConfigurationState();
  v63 = v36;
  v64 = MEMORY[0x1E69DC0B0];
  v37 = __swift_allocate_boxed_opaque_existential_1(v62);
  v38 = *(*(v36 - 8) + 16);
  v38(v37, a1, v36);
  UIBackgroundConfiguration.updated(for:)();
  v39 = *(v61 + 8);
  v39(v35, v33);
  __swift_destroy_boxed_opaque_existential_1(v62);
  if ((UICellConfigurationState.isHighlighted.getter() & 1) == 0)
  {
    goto LABEL_23;
  }

  v40 = UIBackgroundConfiguration.backgroundColor.getter();
  v41 = [objc_opt_self() clearColor];
  v42 = v41;
  if (!v40)
  {
    if (v41)
    {

      goto LABEL_23;
    }

    goto LABEL_21;
  }

  if (!v41)
  {

    goto LABEL_23;
  }

  type metadata accessor for UIColor();
  v43 = static NSObject.== infix(_:_:)();

  if (v43)
  {
LABEL_21:
    UIBackgroundConfiguration.backgroundColor.setter();
  }

LABEL_23:
  v47 = UICellConfigurationState.isSelected.getter();
  v48 = v60;
  if ((v47 & 1) != 0 || (UICellConfigurationState.isHighlighted.getter()) && ((UICellConfigurationState.isFocused.getter() & 1) == 0 || (UICellConfigurationState.isEditing.getter()))
  {
    v49 = v56;
    static UIBackgroundConfiguration.listCell()();
    v63 = v36;
    v64 = MEMORY[0x1E69DC0B0];
    v50 = __swift_allocate_boxed_opaque_existential_1(v62);
    v38(v50, a1, v36);
    v51 = v57;
    UIBackgroundConfiguration.updated(for:)();
    v39(v49, v48);
    __swift_destroy_boxed_opaque_existential_1(v62);
    UIBackgroundConfiguration.backgroundColor.getter();
    v39(v51, v48);
    UIBackgroundConfiguration.backgroundColor.setter();
  }

  v52 = v61;
  v54 = v58;
  v53 = v59;
  (*(v61 + 16))(v58, v59, v48);
  (*(v52 + 56))(v54, 0, 1, v48);
  MEMORY[0x18D00DBB0](v54);
  v39(v53, v48);
}

uint64_t @objc TableCollectionViewCell.updateConfiguration(using:)(void *a1)
{
  v2 = type metadata accessor for UICellConfigurationState();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a1;
  TableCollectionViewCell.updateConfiguration(using:)(v5);

  return (*(v3 + 8))(v5, v2);
}

void __swiftcall TableCollectionViewCell.hitTest(_:with:)(UIView_optional *__return_ptr retstr, CGPoint _, UIEvent_optional with)
{
  v4 = v3;
  isa = with.value.super.isa;
  y = _.y;
  x = _.x;
  ObjectType = swift_getObjectType();
  v9 = [v3 traitCollection];
  if ([v9 horizontalSizeClass] == 1)
  {
    goto LABEL_10;
  }

  v10 = [v9 userInterfaceIdiom];
  v11 = v4[direct field offset for TableCollectionViewCell.isHeader] != 1 || v10 == 0;
  if (v11 || *&v4[direct field offset for TableCollectionViewCell.headerLeadingMargin] <= 0.0 && [v9 userInterfaceIdiom] != 6)
  {
    goto LABEL_10;
  }

  v12 = [v4 window];
  if (v12)
  {
    v13 = v12;
    [v4 convertPoint:v12 toCoordinateSpace:{x, y}];

    MEMORY[0x1EEE9AC00](v14);
    static Update.ensure<A>(_:)();
    if (v15)
    {
LABEL_10:
      v16.receiver = v4;
      v16.super_class = ObjectType;
      [(UIView_optional *)&v16 hitTest:isa withEvent:x, y];

      return;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t closure #1 in TableCollectionViewCell.hitTest(_:with:)@<X0>(uint64_t result@<X0>, BOOL *a2@<X8>)
{
  v3 = *(result + direct field offset for ListCollectionViewCellBase.host);
  if (v3)
  {
    v4 = v3;
    UIHostingViewBase.viewGraph.getter();

    v5 = ViewGraph.responderNode.getter();

    if (v5 && ((type metadata accessor for ViewResponder(), v6 = swift_dynamicCastClass(), v7 = v6 != 0, !v6) || (static ViewResponder.ContainsPointsOptions.platformDefault.getter(), v8 = ViewResponder.hitTest(globalPoint:radius:cacheKey:options:)(), result = , v8)))
    {
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

id @objc TableCollectionViewCell.hitTest(_:with:)(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  v9 = a5;
  v10 = a1;
  v16.value.super.isa = a5;
  TableCollectionViewCell.hitTest(_:with:)(v11, __PAIR128__(*&a3, *&a2), v16);
  v13 = v12;

  return v13;
}

uint64_t TableCollectionViewCell.hostingView<A>(_:willUpdate:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  specialized ListCollectionViewCellBase.hostingView<A>(_:willUpdate:)(a2);
  if (*(v2 + direct field offset for TableCollectionViewCell.isHeader) == 1)
  {
    _s7SwiftUI22EnvironmentPropertyKeyVyAA024TableHeaderLeadingMarginE0VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListRowInsetsKey>, &type metadata for ListRowInsetsKey, &protocol witness table for ListRowInsetsKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TableHeaderLeadingMarginKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListRowInsetsKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListRowInsetsKey>, &type metadata for ListRowInsetsKey, &protocol witness table for ListRowInsetsKey);

    PropertyList.subscript.setter();
    if (*(a2 + 8))
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }
  }

  v5 = direct field offset for ListCollectionViewCellBase.lastConfiguration;
  swift_beginAccess();
  v6 = type metadata accessor for UIListContentConfiguration();
  if (!(*(*(v6 - 8) + 48))(v3 + v5, 1, v6))
  {
    UIListContentConfiguration.directionalLayoutMargins.getter();
  }

  swift_endAccess();
  _s7SwiftUI22EnvironmentPropertyKeyVyAA024TableHeaderLeadingMarginE0VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TableHeaderLeadingMarginKey>, &type metadata for TableHeaderLeadingMarginKey, &protocol witness table for TableHeaderLeadingMarginKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<TableHeaderLeadingMarginKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TableHeaderLeadingMarginKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<TableHeaderLeadingMarginKey>, &type metadata for TableHeaderLeadingMarginKey, &protocol witness table for TableHeaderLeadingMarginKey);

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

id @objc TableCollectionViewCell.init(frame:)(_BYTE *a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  a1[direct field offset for TableCollectionViewCell.isHeader] = 0;
  *&a1[direct field offset for TableCollectionViewCell.headerLeadingMargin] = 0;
  v12.receiver = a1;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a2, a3, a4, a5);
}

id @objc TableCollectionViewCell.init(coder:)(_BYTE *a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  a1[direct field offset for TableCollectionViewCell.isHeader] = 0;
  *&a1[direct field offset for TableCollectionViewCell.headerLeadingMargin] = 0;
  v9.receiver = a1;
  v9.super_class = ObjectType;
  v6 = a3;
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, v6);

  if (v7)
  {
  }

  return v7;
}

uint64_t type metadata accessor for TableCollectionViewCell()
{
  result = type metadata singleton initialization cache for TableCollectionViewCell;
  if (!type metadata singleton initialization cache for TableCollectionViewCell)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<TableHeaderLeadingMarginKey> and conformance EnvironmentPropertyKey<A>(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    _s7SwiftUI22EnvironmentPropertyKeyVyAA024TableHeaderLeadingMarginE0VGMaTm_0(255, a2, a3, a4, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of UIBackgroundConfiguration?(uint64_t a1)
{
  type metadata accessor for UIBackgroundConfiguration?(0, &lazy cache variable for type metadata for UIBackgroundConfiguration?, MEMORY[0x1E69DC0D8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t View.topToolbarSafeAreaInset<A>(alignment:spacing:content:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(qword_1EFFF7E18 + 32))(&v26, a2, &type metadata for TopToolbarEdges);
  *&v22 = &type metadata for TopToolbarEdges;
  *(&v22 + 1) = a7;
  v23 = &protocol witness table for TopToolbarEdges;
  v24 = a9;
  v15 = type metadata accessor for ToolbarSafeAreaInsetModifier();
  *(&v26 + v15[13]) = a1;
  v16 = &v26 + v15[14];
  *v16 = a2;
  v16[8] = a3 & 1;
  v17 = (&v26 + v15[15]);
  *v17 = a4;
  v17[1] = a5;
  v22 = v26;
  LOBYTE(v23) = v27;
  v24 = v28;
  v25 = v29;

  v18 = type metadata accessor for ToolbarSafeAreaInsetModifier();
  MEMORY[0x18D00A570](&v22, a6, v18, a8);
}

uint64_t View.bottomToolbarSafeAreaInset<A>(alignment:spacing:content:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(qword_1EFFF7DF8 + 32))(&v26, a2, &type metadata for BottomToolbarEdges);
  *&v22 = &type metadata for BottomToolbarEdges;
  *(&v22 + 1) = a7;
  v23 = &protocol witness table for BottomToolbarEdges;
  v24 = a9;
  v15 = type metadata accessor for ToolbarSafeAreaInsetModifier();
  *(&v26 + v15[13]) = a1;
  v16 = &v26 + v15[14];
  *v16 = a2;
  v16[8] = a3 & 1;
  v17 = (&v26 + v15[15]);
  *v17 = a4;
  v17[1] = a5;
  v22 = v26;
  LOBYTE(v23) = v27;
  v24 = v28;
  v25 = v29;

  v18 = type metadata accessor for ToolbarSafeAreaInsetModifier();
  MEMORY[0x18D00A570](&v22, a6, v18, a8);
}

uint64_t get_witness_table_7SwiftUI4ViewRzAaBRd__r__lAA15ModifiedContentVyxAA28ToolbarSafeAreaInsetModifier33_C764A51E18F00BD2239CE85BD2E25F3BLLVyAA03TopF5EdgesVqd__GGAaBHPxAaBHD1__AjA0cJ0HPyHCHCTm()
{
  type metadata accessor for ToolbarSafeAreaInsetModifier();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t type metadata completion function for ToolbarSafeAreaInsetModifier()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ToolbarSafeAreaInsetModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v10 = *v11;
    v12 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
    v13 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
    v14 = *v13;
    *(v12 + 8) = *(v13 + 8);
    *v12 = v14;
    v15 = ((v10 + 31) & 0xFFFFFFFFFFFFFFF8);
    v16 = ((v11 + 31) & 0xFFFFFFFFFFFFFFF8);
    v17 = v16[1];
    *v15 = *v16;
    v15[1] = v17;
  }

  return v3;
}

uint64_t destroy for ToolbarSafeAreaInsetModifier(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))();
}

uint64_t initializeWithCopy for ToolbarSafeAreaInsetModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v10 + 8);
  *v9 = *v10;
  *(v9 + 8) = v11;
  v12 = ((v7 + 31) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v8 + 31) & 0xFFFFFFFFFFFFFFF8);
  v14 = v13[1];
  *v12 = *v13;
  v12[1] = v14;

  return a1;
}

uint64_t assignWithCopy for ToolbarSafeAreaInsetModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v10 + 8);
  *v9 = *v10;
  *(v9 + 8) = v11;
  v12 = ((v7 + 31) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v8 + 31) & 0xFFFFFFFFFFFFFFF8);
  v14 = v13[1];
  *v12 = *v13;
  v12[1] = v14;

  return a1;
}

uint64_t initializeWithTake for ToolbarSafeAreaInsetModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v10 + 8);
  *v9 = *v10;
  *(v9 + 8) = v11;
  *((v7 + 31) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 31) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for ToolbarSafeAreaInsetModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v10 + 8);
  *v9 = *v10;
  *(v9 + 8) = v11;
  *((v7 + 31) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 31) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for ToolbarSafeAreaInsetModifier(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *storeEnumTagSinglePayload for ToolbarSafeAreaInsetModifier(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (((&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          *v19 = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t ToolbarSafeAreaInsetModifier.body(content:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a3;
  v49 = *(a2 - 1);
  v55 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v53 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v5 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  type metadata accessor for ViewInputFlagModifier<CreatesToolbarSafeAreaInsetInput>();
  type metadata accessor for ModifiedContent();
  v11 = a2[5];
  v51 = a2[3];
  v52 = v11;
  type metadata accessor for _InsetViewModifier();
  v12 = type metadata accessor for ModifiedContent();
  v43 = a2[4];
  v13 = v43;
  WitnessTable = swift_getWitnessTable();
  v15 = lazy protocol witness table accessor for type ViewInputFlagModifier<CreatesToolbarSafeAreaInsetInput> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type ViewInputFlagModifier<CreatesToolbarSafeAreaInsetInput> and conformance ViewInputFlagModifier<A>, type metadata accessor for ViewInputFlagModifier<CreatesToolbarSafeAreaInsetInput>);
  v65 = WitnessTable;
  v66 = v15;
  v50 = MEMORY[0x1E697E858];
  v16 = swift_getWitnessTable();
  v17 = swift_getWitnessTable();
  v63 = v16;
  v64 = v17;
  v47 = v12;
  v46 = swift_getWitnessTable();
  v59 = v6;
  v60 = v12;
  v61 = v13;
  v62 = v46;
  v42 = type metadata accessor for ToolbarReader();
  v45 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v19 = &v40 - v18;
  type metadata accessor for _EnvironmentKeyWritingModifier<Toolbar.UpdateContext?>();
  v20 = type metadata accessor for ModifiedContent();
  v48 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v41 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v44 = &v40 - v24;
  v25 = v10;
  v26 = v54;
  (*(v7 + 16))(v10, v54, v6, v23);
  v27 = v49;
  v28 = v53;
  (*(v49 + 16))(v53, v26, a2);
  v29 = (*(v27 + 80) + 48) & ~*(v27 + 80);
  v30 = swift_allocObject();
  *&v31 = v6;
  *(&v31 + 1) = v51;
  *&v32 = v43;
  *(&v32 + 1) = v52;
  *(v30 + 16) = v31;
  *(v30 + 32) = v32;
  (*(v27 + 32))(v30 + v29, v28, a2);
  ToolbarReader.init(edges:content:)(v25, partial apply for closure #1 in ToolbarSafeAreaInsetModifier.body(content:), v30, v6, v19);
  v33 = v41;
  v34 = v42;
  View.defaultToolbarUpdateContext()();
  (*(v45 + 8))(v19, v34);
  v35 = lazy protocol witness table accessor for type ViewInputFlagModifier<CreatesToolbarSafeAreaInsetInput> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Toolbar.UpdateContext?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<Toolbar.UpdateContext?>);
  v57 = &protocol witness table for ToolbarReader<A, B>;
  v58 = v35;
  v36 = swift_getWitnessTable();
  v37 = v44;
  static ViewBuilder.buildExpression<A>(_:)(v33, v20, v36);
  v38 = *(v48 + 8);
  v38(v33, v20);
  static ViewBuilder.buildExpression<A>(_:)(v37, v20, v36);
  return (v38)(v37, v20);
}

uint64_t closure #1 in ToolbarSafeAreaInsetModifier.body(content:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v36 = a5;
  v34 = a1;
  v38 = a7;
  v50 = a3;
  v51 = a4;
  v33 = a4;
  v52 = a5;
  v53 = a6;
  v10 = type metadata accessor for ToolbarSafeAreaInsetModifier();
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  type metadata accessor for ViewInputFlagModifier<CreatesToolbarSafeAreaInsetInput>();
  v35 = type metadata accessor for ModifiedContent();
  v37 = type metadata accessor for _InsetViewModifier();
  v11 = type metadata accessor for ModifiedContent();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v30 - v16;
  WitnessTable = swift_getWitnessTable();
  lazy protocol witness table accessor for type CreatesToolbarSafeAreaInsetInput and conformance CreatesToolbarSafeAreaInsetInput();
  v19 = *v34;
  v20 = v34[1];
  View.input<A>(_:)();
  v21 = swift_dynamicCastMetatype();
  v34 = v30;
  v22 = *(v10 + 52);
  v23 = *(v10 + 56);
  v32 = v21 == 0;
  v31 = *(a2 + v22);
  v30[3] = *(a2 + v23 + 8);
  v39 = a3;
  v40 = v33;
  v41 = v36;
  v42 = a6;
  v43 = a2;
  v44 = v19;
  v45 = v20;
  v24 = lazy protocol witness table accessor for type ViewInputFlagModifier<CreatesToolbarSafeAreaInsetInput> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type ViewInputFlagModifier<CreatesToolbarSafeAreaInsetInput> and conformance ViewInputFlagModifier<A>, type metadata accessor for ViewInputFlagModifier<CreatesToolbarSafeAreaInsetInput>);
  v48 = WitnessTable;
  v49 = v24;
  v29 = swift_getWitnessTable();
  View.safeAreaInset<A>(edge:alignment:spacing:content:)();
  v25 = swift_getWitnessTable();
  v46 = v29;
  v47 = v25;
  v26 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v14, v11, v26);
  v27 = *(v12 + 8);
  v27(v14, v11);
  static ViewBuilder.buildExpression<A>(_:)(v17, v11, v26);
  return (v27)(v17, v11);
}

uint64_t closure #1 in closure #1 in ToolbarSafeAreaInsetModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23[0] = a2;
  v23[1] = a3;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v23 - v14;
  v23[2] = v16;
  v23[3] = v17;
  v23[4] = v18;
  v23[5] = v19;
  v20 = type metadata accessor for ToolbarSafeAreaInsetModifier();
  (*(a1 + *(v20 + 60)))(v23);
  static ViewBuilder.buildExpression<A>(_:)(v12, a5, a7);
  v21 = *(v10 + 8);
  v21(v12, a5);
  static ViewBuilder.buildExpression<A>(_:)(v15, a5, a7);
  return (v21)(v15, a5);
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance CreatesToolbarSafeAreaInsetInput()
{
  lazy protocol witness table accessor for type CreatesToolbarSafeAreaInsetInput and conformance CreatesToolbarSafeAreaInsetInput();
  PropertyList.subscript.getter();
  return v1;
}

void type metadata accessor for ViewInputFlagModifier<CreatesToolbarSafeAreaInsetInput>()
{
  if (!lazy cache variable for type metadata for ViewInputFlagModifier<CreatesToolbarSafeAreaInsetInput>)
  {
    lazy protocol witness table accessor for type CreatesToolbarSafeAreaInsetInput and conformance CreatesToolbarSafeAreaInsetInput();
    v0 = type metadata accessor for ViewInputFlagModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ViewInputFlagModifier<CreatesToolbarSafeAreaInsetInput>);
    }
  }
}

void type metadata accessor for _EnvironmentKeyWritingModifier<Toolbar.UpdateContext?>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Toolbar.UpdateContext?>)
  {
    type metadata accessor for Toolbar.UpdateContext?();
    v0 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Toolbar.UpdateContext?>);
    }
  }
}

void type metadata accessor for Toolbar.UpdateContext?()
{
  if (!lazy cache variable for type metadata for Toolbar.UpdateContext?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Toolbar.UpdateContext?);
    }
  }
}

uint64_t partial apply for closure #1 in ToolbarSafeAreaInsetModifier.body(content:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(type metadata accessor for ToolbarSafeAreaInsetModifier() - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return closure #1 in ToolbarSafeAreaInsetModifier.body(content:)(a1, v10, v5, v6, v7, v8, a2);
}

uint64_t lazy protocol witness table accessor for type ViewInputFlagModifier<CreatesToolbarSafeAreaInsetInput> and conformance ViewInputFlagModifier<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s7SwiftUI11_ViewInputsV22addPlatformItemListKey5flags13editOperationyxm_AA0fgH8FlagsSetV04EditL0OSgtAA0fghM0RzlFAA05LabelfghM0V_Ttg5(unsigned __int8 a1)
{
  v2 = a1;
  PreferenceKeys.add(_:)();
  lazy protocol witness table accessor for type PlatformItemListTextRepresentable and conformance PlatformItemListTextRepresentable();
  _ViewInputs.requestedTextRepresentation.setter();
  lazy protocol witness table accessor for type PlatformItemListImageRepresentable and conformance PlatformItemListImageRepresentable();
  _ViewInputs.requestedImageRepresentation.setter();
  lazy protocol witness table accessor for type PlatformItemListNamedImageRepresentable and conformance PlatformItemListNamedImageRepresentable();
  _ViewInputs.requestedNamedImageRepresentation.setter();
  lazy protocol witness table accessor for type PlatformItemListSpacerRepresentable and conformance PlatformItemListSpacerRepresentable();
  _ViewInputs.requestedSpacerRepresentation.setter();
  lazy protocol witness table accessor for type _GraphInputs.DividerRepresentationKey and conformance _GraphInputs.DividerRepresentationKey();
  PropertyList.subscript.setter();
  lazy protocol witness table accessor for type _GraphInputs.ViewThatFitsRepresentationKey and conformance _GraphInputs.ViewThatFitsRepresentationKey();
  PropertyList.subscript.setter();
  lazy protocol witness table accessor for type PlatformItemListHiddenRepresentable and conformance PlatformItemListHiddenRepresentable();
  _ViewInputs.requestedHiddenRepresentation.setter();
  lazy protocol witness table accessor for type _GraphInputs.DynamicHiddenRepresentationKey and conformance _GraphInputs.DynamicHiddenRepresentationKey();
  result = PropertyList.subscript.setter();
  if (v2 != 2)
  {
    lazy protocol witness table accessor for type PlatformItemListFlagsInput and conformance PlatformItemListFlagsInput();
    if (a1)
    {
      PropertyList.subscript.getter();
    }

    return PropertyList.subscript.setter();
  }

  return result;
}

uint64_t _s7SwiftUI11_ViewInputsV22addPlatformItemListKey5flags13editOperationyxm_AA0fgH8FlagsSetV04EditL0OSgtAA0fghM0RzlFAA04TextfghM0V_Ttg5(unsigned __int8 a1)
{
  v2 = a1;
  PreferenceKeys.add(_:)();
  lazy protocol witness table accessor for type PlatformItemListTextRepresentable and conformance PlatformItemListTextRepresentable();
  _ViewInputs.requestedTextRepresentation.setter();
  lazy protocol witness table accessor for type PlatformItemListImageRepresentable and conformance PlatformItemListImageRepresentable();
  _ViewInputs.requestedImageRepresentation.setter();
  lazy protocol witness table accessor for type PlatformItemListNamedImageRepresentable and conformance PlatformItemListNamedImageRepresentable();
  _ViewInputs.requestedNamedImageRepresentation.setter();
  lazy protocol witness table accessor for type PlatformItemListSpacerRepresentable and conformance PlatformItemListSpacerRepresentable();
  _ViewInputs.requestedSpacerRepresentation.setter();
  lazy protocol witness table accessor for type _GraphInputs.DividerRepresentationKey and conformance _GraphInputs.DividerRepresentationKey();
  PropertyList.subscript.setter();
  lazy protocol witness table accessor for type _GraphInputs.ViewThatFitsRepresentationKey and conformance _GraphInputs.ViewThatFitsRepresentationKey();
  PropertyList.subscript.setter();
  lazy protocol witness table accessor for type PlatformItemListHiddenRepresentable and conformance PlatformItemListHiddenRepresentable();
  _ViewInputs.requestedHiddenRepresentation.setter();
  lazy protocol witness table accessor for type _GraphInputs.DynamicHiddenRepresentationKey and conformance _GraphInputs.DynamicHiddenRepresentationKey();
  result = PropertyList.subscript.setter();
  if (v2 != 2)
  {
    lazy protocol witness table accessor for type PlatformItemListFlagsInput and conformance PlatformItemListFlagsInput();
    if (a1)
    {
      PropertyList.subscript.getter();
    }

    return PropertyList.subscript.setter();
  }

  return result;
}

uint64_t _s7SwiftUI11_ViewInputsV22addPlatformItemListKey5flags13editOperationyxm_AA0fgH8FlagsSetV04EditL0OSgtAA0fghM0RzlFAA014WidgetMetadatafghM0V_Ttg5(unsigned __int8 a1)
{
  v2 = a1;
  PreferenceKeys.add(_:)();
  lazy protocol witness table accessor for type PlatformItemListTextRepresentable and conformance PlatformItemListTextRepresentable();
  _ViewInputs.requestedTextRepresentation.setter();
  lazy protocol witness table accessor for type PlatformItemListImageRepresentable and conformance PlatformItemListImageRepresentable();
  _ViewInputs.requestedImageRepresentation.setter();
  lazy protocol witness table accessor for type PlatformItemListNamedImageRepresentable and conformance PlatformItemListNamedImageRepresentable();
  _ViewInputs.requestedNamedImageRepresentation.setter();
  lazy protocol witness table accessor for type PlatformItemListSpacerRepresentable and conformance PlatformItemListSpacerRepresentable();
  _ViewInputs.requestedSpacerRepresentation.setter();
  lazy protocol witness table accessor for type _GraphInputs.DividerRepresentationKey and conformance _GraphInputs.DividerRepresentationKey();
  PropertyList.subscript.setter();
  lazy protocol witness table accessor for type _GraphInputs.ViewThatFitsRepresentationKey and conformance _GraphInputs.ViewThatFitsRepresentationKey();
  PropertyList.subscript.setter();
  lazy protocol witness table accessor for type PlatformItemListHiddenRepresentable and conformance PlatformItemListHiddenRepresentable();
  _ViewInputs.requestedHiddenRepresentation.setter();
  lazy protocol witness table accessor for type _GraphInputs.DynamicHiddenRepresentationKey and conformance _GraphInputs.DynamicHiddenRepresentationKey();
  result = PropertyList.subscript.setter();
  if (v2 != 2)
  {
    lazy protocol witness table accessor for type PlatformItemListFlagsInput and conformance PlatformItemListFlagsInput();
    if (a1)
    {
      PropertyList.subscript.getter();
    }

    return PropertyList.subscript.setter();
  }

  return result;
}

uint64_t TableColumn.init(comparator:content:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v38[0] = a5;
  v38[1] = a6;
  v38[2] = a7;
  v38[3] = a9;
  v38[4] = a10;
  v38[5] = a11;
  v38[6] = a12;
  v38[7] = a13;
  v16 = type metadata accessor for TableColumn();
  v17 = a8 + v16[22];
  *v17 = xmmword_18CD633F0;
  *(v17 + 16) = xmmword_18CD7EC50;
  *(v17 + 32) = 0;
  v18 = a8 + v16[23];
  *(v18 + 112) = 0;
  *(v18 + 80) = 0u;
  *(v18 + 96) = 0u;
  *(v18 + 48) = 0u;
  *(v18 + 64) = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0u;
  *v18 = 0u;
  v30 = a5;
  v31 = a6;
  v32 = a7;
  v33 = a9;
  v34 = a10;
  v35 = a11;
  v36 = a12;
  v37 = a13;
  v19 = type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in TableColumn.init(comparator:content:label:), v29, MEMORY[0x1E69E73E0], &type metadata for SwiftUIAnySortComparator, v20, v38);
  v21 = outlined assign with take of SwiftUIAnySortComparator?(v38, v18);
  v22 = (a8 + v16[21]);
  *v22 = a2;
  v22[1] = a3;
  a4(v21);
  return (*(*(v19 - 8) + 8))(a1, v19);
}

uint64_t closure #1 in TableColumn.init(comparator:content:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X6>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v7);
  return SwiftUIAnySortComparator.init<A>(_:)(v9, a2, a3, a4);
}

uint64_t static TableColumn._makeContent(content:inputs:)@<X0>(__int128 *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, __int128 a9)
{
  v14 = a1[3];
  v40 = a1[2];
  v41 = v14;
  v42 = a1[4];
  v43 = *(a1 + 20);
  v15 = a1[1];
  v38 = *a1;
  v39 = v15;
  PreferencesOutputs.init()();
  v44[2] = v40;
  v45 = v41;
  v46 = v42;
  v47 = v43;
  v44[0] = v38;
  v44[1] = v39;
  v32 = v40;
  v33 = v41;
  v34 = v42;
  v35 = v43;
  v30 = v38;
  v31 = v39;
  outlined init with copy of _ViewInputs(v44, &v50);
  PreferenceKeys.remove(_:)();
  _s7SwiftUI11_ViewInputsV22addPlatformItemListKey5flags13editOperationyxm_AA0fgH8FlagsSetV04EditL0OSgtAA0fghM0RzlFAA03AllfghM0V_Ttg5(2u);
  *&v50 = a2;
  *(&v50 + 1) = a3;
  *&v51 = a4;
  *(&v51 + 1) = a5;
  *&v52 = a6;
  *(&v52 + 1) = a7;
  v53 = a9;
  type metadata accessor for TableColumn();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  v48[2] = v40;
  v48[3] = v41;
  v48[4] = v42;
  v49 = v43;
  v48[0] = v38;
  v48[1] = v39;
  v24 = v40;
  v25 = v41;
  v26 = v42;
  v27 = v43;
  v23 = v39;
  outlined init with copy of _ViewInputs(v48, &v50);
  static View.makeDebuggableView(view:inputs:)();
  v52 = v40;
  v53 = v41;
  v54 = v42;
  v55 = v43;
  v50 = v38;
  v51 = v39;
  outlined destroy of _ViewInputs(&v50);
  *&v22 = v28;
  *(&v22 + 1) = __PAIR64__(HIDWORD(v38), v29);
  v16 = PreferencesOutputs.subscript.getter();

  if ((v16 & 0x100000000) != 0)
  {
    *&v22 = MEMORY[0x1E69E7CC0];
    type metadata accessor for GraphHost();
    MEMORY[0x18D00B7D0]();
    LOBYTE(v28) = 0;
    GraphHost.intern<A>(_:for:id:)();
  }

  v28 = v45;
  v29 = DWORD2(v45);
  MEMORY[0x1EEE9AC00](v17);
  outlined init with copy of PreferencesInputs(&v28, &v22);
  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();

  v24 = v32;
  v25 = v33;
  v26 = v34;
  v27 = v35;
  v22 = v30;
  v23 = v31;
  result = outlined destroy of _ViewInputs(&v22);
  v19 = v37;
  *a8 = v36;
  *(a8 + 8) = v19;
  return result;
}

uint64_t closure #1 in static TableColumn._makeContent(content:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v14[2] = type metadata accessor for TableColumn();
  v14[3] = a5;
  v11 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v14, a5, MEMORY[0x1E69E73E0], v11, MEMORY[0x1E69E7410], v12);
  return v15;
}

uint64_t implicit closure #2 in static TableColumn._makeContent(content:inputs:)(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v36 = a3;
  LODWORD(v44) = a2;
  v59 = *MEMORY[0x1E69E9840];
  type metadata accessor for UUID?(0, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v37 = &v34[-v18];
  v51 = a4;
  v52 = a5;
  v53 = a6;
  v54 = a7;
  v55 = a8;
  v56 = a9;
  v57 = a10;
  v58 = a11;
  List = type metadata accessor for TableColumn.MakeList();
  v45 = *(List - 8);
  MEMORY[0x1EEE9AC00](List);
  v20 = &v34[-v19];
  v47 = a1;
  v51 = a4;
  v52 = a5;
  v53 = a6;
  v54 = a7;
  v55 = a8;
  v56 = a9;
  v57 = a10;
  v58 = a11;
  type metadata accessor for TableColumn();
  type metadata accessor for _GraphValue();
  v35 = _GraphValue.value.getter();
  LODWORD(v46) = v44;
  v39 = a4;
  v51 = a4;
  v52 = a5;
  v40 = a5;
  v41 = a6;
  v42 = a11;
  v53 = a6;
  v54 = a7;
  v43 = a7;
  v44 = a8;
  v55 = a8;
  v56 = a9;
  v57 = a10;
  v58 = a11;
  Label = type metadata accessor for TableColumn.MakeLabel();
  v49 = Label;
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for UUID?(0, &lazy cache variable for type metadata for Attribute<NSAttributedString>, type metadata accessor for NSAttributedString, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v46, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_8, v48, Label, MEMORY[0x1E69E73E0], v22, MEMORY[0x1E69E7410], v23);
  v24 = v51;
  if (one-time initialization token for tableColumnConfiguration != -1)
  {
    swift_once();
  }

  v46 = static CachedEnvironment.ID.tableColumnConfiguration;
  swift_beginAccess();
  v25 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  v26 = type metadata accessor for UUID();
  v27 = v37;
  (*(*(v26 - 8) + 56))(v37, 1, 1, v26);
  *v20 = v35;
  v20[1] = v24;
  v20[2] = v25;
  v51 = v39;
  v52 = v40;
  v53 = v41;
  v54 = v43;
  v55 = v44;
  v56 = a9;
  v57 = a10;
  v58 = v42;
  v28 = type metadata accessor for TableColumn.MakeList();
  v29 = outlined init with take of UUID?(v27, v20 + *(v28 + 92));
  MEMORY[0x1EEE9AC00](v29);
  v30 = List;
  *&v34[-16] = List;
  *&v34[-8] = swift_getWitnessTable();
  type metadata accessor for UUID?(0, &lazy cache variable for type metadata for Attribute<TableColumnList>, type metadata accessor for TableColumnList, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v20, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_8, &v34[-32], v30, MEMORY[0x1E69E73E0], v31, MEMORY[0x1E69E7410], v32);
  (*(v45 + 8))(v20, v30);
  return v51;
}

id TableColumn.MakeLabel.value.getter()
{
  v0 = type metadata accessor for PlatformItemList.Item();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = (&v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  AGGraphGetValue();

  PlatformItemList.mergedContentItem.getter(v3, v2);

  v4 = *v2;
  v5 = *v2;
  outlined destroy of PlatformItemList.Item(v2);
  if (v4)
  {
    return v5;
  }

  else
  {
    return [objc_allocWithZone(MEMORY[0x1E696AAB0]) init];
  }
}

uint64_t TableColumn.MakeList.column.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TableColumn();
  Value = AGGraphGetValue();
  return (*(*(v2 - 8) + 16))(a1, Value, v2);
}

id protocol witness for Rule.value.getter in conformance TableColumn<A, B, C, D>.MakeLabel@<X0>(void *a1@<X8>)
{
  result = TableColumn.MakeLabel.value.getter();
  *a1 = result;
  return result;
}

uint64_t TableColumn.MakeList.updateValue()(uint64_t a1)
{
  v50 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v41 = *(a1 + 16);
  *&v46 = v41;
  *(&v46 + 1) = v3;
  v40 = v3;
  v39 = v4;
  *&v47 = v4;
  *(&v47 + 1) = v5;
  v38 = v5;
  v37 = v6;
  *v48 = v6;
  *&v48[8] = v7;
  v36 = v7;
  v35 = v8;
  *&v48[16] = v8;
  *&v48[24] = v9;
  v34 = v9;
  v10 = type metadata accessor for TableColumn();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v43 = &v34 - v11;
  type metadata accessor for UUID?(0, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v42 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v34 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v34 - v18;
  v20 = *(a1 + 92);
  outlined init with copy of UUID?(v1 + v20, &v34 - v18);
  v21 = type metadata accessor for UUID();
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  v24 = v23(v19, 1, v21);
  outlined destroy of UUID?(v19);
  if (v24 == 1)
  {
    UUID.init()();
    (*(v22 + 56))(v16, 0, 1, v21);
    outlined assign with take of UUID?(v16, v1 + v20);
  }

  TableColumn.MakeList.column.getter(v43);
  v25 = v42;
  outlined init with copy of UUID?(v1 + v20, v42);
  if (v23(v25, 1, v21) == 1)
  {
    __break(1u);
  }

  type metadata accessor for NSAttributedString();
  v26 = *AGGraphGetValue();
  Value = AGGraphGetValue();
  v29 = Value[1];
  v28 = Value[2];
  v30 = *Value;
  *&v48[10] = *(Value + 42);
  v47 = v29;
  *v48 = v28;
  v46 = v30;
  v31 = Value[1];
  v44[0] = *Value;
  v44[1] = v31;
  v45[0] = Value[2];
  *(v45 + 10) = *(Value + 42);
  outlined init with copy of TableColumnConfiguration(&v46, v49);
  *&v46 = v41;
  *(&v46 + 1) = v40;
  *&v47 = v39;
  *(&v47 + 1) = v38;
  *v48 = v37;
  *&v48[8] = v36;
  *&v48[16] = v35;
  *&v48[24] = v34;
  *(&v47 + 1) = type metadata accessor for TableColumn.UnaryTableColumnList();
  *v48 = &protocol witness table for TableColumn<A, B, C, D>.UnaryTableColumnList;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v46);
  TableColumn.UnaryTableColumnList.init(column:id:label:configuration:)(v43, v25, v26, v44, boxed_opaque_existential_1);
  type metadata accessor for TableColumnList();
  AGGraphSetOutputValue();
  return __swift_destroy_boxed_opaque_existential_1(&v46);
}

double TableColumn.UnaryTableColumnList.init(column:id:label:configuration:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v15 = *a4;
  v16 = a4[1];
  *v17 = a4[2];
  *&v17[10] = *(a4 + 42);
  v7 = type metadata accessor for TableColumn();
  (*(*(v7 - 8) + 32))(a5, a1, v7);
  v8 = type metadata accessor for TableColumn.UnaryTableColumnList();
  v9 = v8[21];
  v10 = type metadata accessor for UUID();
  (*(*(v10 - 8) + 32))(a5 + v9, a2, v10);
  *(a5 + v8[22]) = a3;
  v11 = (a5 + v8[23]);
  *v11 = v15;
  v11[1] = v16;
  v11[2] = *v17;
  result = *&v17[10];
  *(v11 + 42) = *&v17[10];
  return result;
}

uint64_t TableColumn.UnaryTableColumnList.visitColumns<A>(applying:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a3 + 88);
  v10 = (v5 + *(a3 + 92));
  v11 = v10[1];
  v22[0] = *v10;
  v22[1] = v11;
  v13 = *v10;
  v12 = v10[1];
  v23[0] = v10[2];
  *(v23 + 10) = *(v10 + 42);
  v14 = *(a3 + 84);
  v15 = *(v5 + v9);
  v19 = v13;
  v20 = v12;
  v21[0] = v10[2];
  *(v21 + 10) = *(v10 + 42);
  v16 = *(a5 + 8);
  outlined init with copy of TableColumnConfiguration(v22, v24);
  v17 = v16(v5, v5 + v14, v15, &v19, *(a3 + 16), *(a3 + 24), *(a3 + 40), *(a3 + 32), *(a3 + 48), *(a3 + 56), *(a3 + 72), *(a3 + 64), a4, a5);
  v24[0] = v19;
  v24[1] = v20;
  v25[0] = v21[0];
  *(v25 + 10) = *(v21 + 10);
  outlined destroy of TableColumnConfiguration(v24);
  return v17 & 1;
}

uint64_t TableColumn<>.init(_:sortUsing:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v27[0] = a8;
  v27[1] = a2;
  v32 = a7;
  v33 = a4;
  v29 = a1;
  v30 = a6;
  v34 = a5;
  v35 = a9;
  v31 = a3;
  v28 = a14;
  v17 = type metadata accessor for Optional();
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = v27 - v19;
  v21 = *(a10 - 8);
  (*(v21 + 16))(v27 - v19, a5, a10, v18);
  (*(v21 + 56))(v20, 0, 1, a10);
  v22 = swift_allocObject();
  v22[2] = a8;
  v22[3] = a10;
  v22[4] = a11;
  v22[5] = a12;
  v23 = v28;
  v22[6] = a13;
  v22[7] = v23;
  v24 = v29;
  v22[8] = v30;
  v25 = v33;
  v22[9] = v32;
  v36 = v24;
  v37 = a2;
  v38 = v31;
  v39 = v25;

  TableColumn.init(comparator:content:label:)(v20, partial apply for closure #1 in TableColumn<>.init(_:sortUsing:content:), v22, partial apply for closure #1 in TextField<>.init<A>(_:value:format:prompt:), v27[0], a10, a11, v35, MEMORY[0x1E6981148], a12, a13, v23, MEMORY[0x1E6981138]);

  return (*(v21 + 8))(v34, a10);
}

{
  v31 = a8;
  v32 = a4;
  v37 = a7;
  v38 = a5;
  v34 = a1;
  v35 = a6;
  v36 = a3;
  v17 = a2;
  v39 = a9;
  v33 = a14;
  v29 = a2;
  v30 = a11;
  v18 = type metadata accessor for Optional();
  v19.n128_f64[0] = MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v28 - v20;
  v22 = *(a10 - 8);
  (*(v22 + 16))(&v28 - v20, a5, a10, v19);
  (*(v22 + 56))(v21, 0, 1, a10);
  v23 = swift_allocObject();
  v23[2] = a8;
  v23[3] = a10;
  v23[4] = a11;
  v23[5] = a12;
  v23[6] = a13;
  v24 = v33;
  v25 = v34;
  v26 = v35;
  v23[7] = v33;
  v23[8] = v26;
  v23[9] = v37;
  v40 = v25;
  v41 = v17;
  LOBYTE(v17) = v36 & 1;
  v42 = v36 & 1;
  v43 = a4;

  TableColumn.init(comparator:content:label:)(v21, partial apply for closure #1 in TableColumn<>.init(_:sortUsing:content:), v23, partial apply for closure #2 in TableColumn<>.init(_:sortUsing:content:), v31, a10, v30, v39, MEMORY[0x1E6981148], a12, a13, v24, MEMORY[0x1E6981138]);
  outlined consume of Text.Storage(v25, v29, v17);

  return (*(v22 + 8))(v38, a10);
}

uint64_t TableColumn<>.init<A>(_:sortUsing:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v30 = a8;
  v31 = a3;
  v32 = a4;
  v33 = a1;
  v34 = a2;
  v35 = a9;
  v17 = type metadata accessor for Optional();
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v28 - v19;
  v21 = *(a6 - 8);
  (*(v21 + 16))(&v28 - v19, a2, a6, v18);
  (*(v21 + 56))(v20, 0, 1, a6);
  v22 = swift_allocObject();
  v23 = a5;
  v28 = a5;
  v29 = a7;
  v22[2] = a5;
  v22[3] = a6;
  v25 = v30;
  v24 = v31;
  v22[4] = a7;
  v22[5] = v25;
  v22[6] = a10;
  v22[7] = a11;
  v22[8] = a12;
  v22[9] = a13;
  v22[10] = v24;
  v22[11] = v32;
  v36 = v23;
  v37 = a6;
  v38 = a7;
  v39 = v25;
  v40 = a10;
  v41 = a11;
  v42 = a12;
  v43 = a13;
  v26 = v33;
  v44 = v33;

  TableColumn.init(comparator:content:label:)(v20, partial apply for closure #1 in TableColumn<>.init<A>(_:sortUsing:content:), v22, partial apply for closure #2 in TableColumn<>.init<A>(_:sortUsing:content:), v28, a6, v29, v35, MEMORY[0x1E6981148], a10, a11, a12, MEMORY[0x1E6981138]);

  (*(v21 + 8))(v34, a6);
  return (*(*(v25 - 8) + 8))(v26, v25);
}

uint64_t closure #1 in TableColumn<>.init<A>(_:sortUsing:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v21 - v16;
  v18(v15);
  static ViewBuilder.buildExpression<A>(_:)(v13, a6, a10);
  v19 = *(v11 + 8);
  v19(v13, a6);
  static ViewBuilder.buildExpression<A>(_:)(v17, a6, a10);
  return (v19)(v17, a6);
}

uint64_t closure #2 in TableColumn<>.init<A>(_:sortUsing:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v9;
  return result;
}

uint64_t closure #1 in TableColumn<>.init(_:sortUsing:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - v15;
  v17(v14);
  static ViewBuilder.buildExpression<A>(_:)(v12, a6, a9);
  v18 = *(v10 + 8);
  v18(v12, a6);
  static ViewBuilder.buildExpression<A>(_:)(v16, a6, a9);
  return (v18)(v16, a6);
}

uint64_t TableColumn<>.init(_:content:)@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>, uint64_t a6, uint64_t a7)
{
  v14 = 1;
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a6;
  v11[5] = a7;
  v11[6] = a1;
  v11[7] = a2;

  TableColumn.init(comparator:content:label:)(&v14, partial apply for closure #1 in TableColumn<>.init(_:content:), v11, partial apply for closure #1 in TextField<>.init<A>(_:value:format:prompt:), a3, MEMORY[0x1E69E73E0], a4, a5, MEMORY[0x1E6981148], a6, MEMORY[0x1E696A108], a7, MEMORY[0x1E6981138]);
}

uint64_t TableColumn<>.init(_:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v20 = 1;
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = a7;
  v16[4] = a9;
  v16[5] = a10;
  v16[6] = a4;
  v16[7] = a5;

  TableColumn.init(comparator:content:label:)(&v20, partial apply for closure #1 in TableColumn<>.init(_:content:), v16, partial apply for closure #2 in TableColumn<>.init(_:content:), a6, MEMORY[0x1E69E73E0], a7, a8, MEMORY[0x1E6981148], a9, MEMORY[0x1E696A108], a10, MEMORY[0x1E6981138]);

  outlined consume of Text.Storage(a1, a2, a3 & 1);
}

uint64_t TableColumn<>.init<A>(_:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v21 = 1;
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  v18[6] = a8;
  v18[7] = a10;
  v18[8] = a2;
  v18[9] = a3;

  TableColumn.init(comparator:content:label:)(&v21, partial apply for closure #1 in TableColumn<>.init<A>(_:content:), v18, partial apply for closure #2 in TableColumn<>.init<A>(_:content:), a4, MEMORY[0x1E69E73E0], a5, a9, MEMORY[0x1E6981148], a7, MEMORY[0x1E696A108], a8, MEMORY[0x1E6981138]);

  return (*(*(a6 - 8) + 8))(a1, a6);
}

uint64_t closure #1 in TableColumn<>.init<A>(_:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

uint64_t closure #2 in TableColumn<>.init<A>(_:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v9;
  return result;
}

uint64_t closure #1 in TableColumn<>.init(_:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v19 - v14;
  v16(v13);
  static ViewBuilder.buildExpression<A>(_:)(v11, a5, a7);
  v17 = *(v9 + 8);
  v17(v11, a5);
  static ViewBuilder.buildExpression<A>(_:)(v15, a5, a7);
  return (v17)(v15, a5);
}

uint64_t TableColumn<>.init<>(_:value:)@<X0>(uint64_t *a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v10 = 1;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a1;
  v8 = *(v6 + *MEMORY[0x1E69E77B0]);

  TableColumn.init(comparator:content:label:)(&v10, partial apply for closure #1 in TableColumn<>.init<>(_:value:), v7, partial apply for closure #1 in TextField<>.init<A>(_:value:format:prompt:), v8, MEMORY[0x1E69E73E0], MEMORY[0x1E6981148], a3, MEMORY[0x1E6981148], a2, MEMORY[0x1E696A108], MEMORY[0x1E6981138], MEMORY[0x1E6981138]);
}

uint64_t TableColumn<>.init<>(_:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v12 = *a4;
  v16 = 1;
  v13 = swift_allocObject();
  *(v13 + 16) = a5;
  *(v13 + 24) = a4;
  v14 = *(v12 + *MEMORY[0x1E69E77B0]);

  TableColumn.init(comparator:content:label:)(&v16, partial apply for closure #1 in TableColumn<>.init<>(_:value:), v13, partial apply for closure #2 in TableColumn<>.init(_:content:), v14, MEMORY[0x1E69E73E0], MEMORY[0x1E6981148], a6, MEMORY[0x1E6981148], a5, MEMORY[0x1E696A108], MEMORY[0x1E6981138], MEMORY[0x1E6981138]);

  outlined consume of Text.Storage(a1, a2, a3 & 1);
}

uint64_t TableColumn<>.init<A>(_:value:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *a2;
  v16 = 1;
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = a2;
  v15 = *(v12 + *MEMORY[0x1E69E77B0]);

  TableColumn.init(comparator:content:label:)(&v16, partial apply for closure #1 in TableColumn<>.init<A>(_:value:), v13, partial apply for closure #2 in TableColumn<>.init<A>(_:value:), v15, MEMORY[0x1E69E73E0], MEMORY[0x1E6981148], a6, MEMORY[0x1E6981148], a4, MEMORY[0x1E696A108], MEMORY[0x1E6981138], MEMORY[0x1E6981138]);

  return (*(*(a3 - 8) + 8))(a1, a3);
}

uint64_t closure #1 in TableColumn<>.init<A>(_:value:)@<X0>(uint64_t a1@<X8>)
{
  swift_getAtKeyPath();
  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t closure #2 in TableColumn<>.init<A>(_:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v9;
  return result;
}

uint64_t partial apply for closure #2 in TableColumn<>.init(_:sortUsing:content:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  outlined copy of Text.Storage(v2, v3, v4);
}

uint64_t TableColumn.width(_:)@<X0>(double a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  result = (*(*(a3 - 8) + 16))(a4, v5);
  v11 = a4 + *(a3 + 88);
  if (*(v11 + 32))
  {
    v12 = a1;
    v13 = INFINITY;
    if (a2)
    {
      v12 = 10.0;
    }

    else
    {
      v13 = a1;
    }

    v14 = a2 & 1;
  }

  else
  {
    v12 = *(v11 + 16);
    v13 = *(v11 + 24);
    v15 = *(v11 + 8);
    v16 = a1;
    if (a2)
    {
      a1 = *v11;
    }

    else
    {
      v13 = a1;
    }

    if ((a2 & 1) == 0)
    {
      LOBYTE(v15) = 0;
      v12 = v16;
    }

    v14 = v15 & 1;
  }

  *v11 = a1;
  *(v11 + 8) = v14;
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  *(v11 + 32) = 0;
  return result;
}

uint64_t TableColumn.width(min:ideal:max:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = v8;
  result = (*(*(a7 - 8) + 16))(a8, v9, a7);
  v19 = a8 + *(a7 + 88);
  if (*(v19 + 32))
  {
    v20 = a4 & 1;
    if (a4)
    {
      v21 = 0x4024000000000000;
    }

    else
    {
      v21 = a3;
    }

    v22 = 0x7FF0000000000000;
    if ((a4 & 1) == 0)
    {
      v22 = a3;
    }
  }

  else
  {
    v21 = *(v19 + 16);
    v22 = *(v19 + 24);
    if (a4)
    {
      a3 = *v19;
    }

    v20 = a4 & *(v19 + 8) & 1;
  }

  if ((a2 & 1) == 0)
  {
    v21 = a1;
  }

  if ((a6 & 1) == 0)
  {
    v22 = a5;
  }

  *v19 = a3;
  *(v19 + 8) = v20;
  *(v19 + 16) = v21;
  *(v19 + 24) = v22;
  *(v19 + 32) = 0;
  return result;
}

double TableColumn.fixedToHeaderWidth()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  (*(*(a1 - 8) + 16))(a2, v3, a1);
  v6 = a2 + *(a1 + 88);
  result = 0.0;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 1;
  return result;
}

uint64_t instantiation function for generic protocol witness table for TableColumn<A, B, C, D>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for TableColumn()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TableColumn(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 40) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 120 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
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
    v13 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
    v14 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
    v15 = *(v14 + 32);
    v16 = *(v14 + 16);
    *v13 = *v14;
    *(v13 + 16) = v16;
    *(v13 + 32) = v15;
    v17 = (v10 + 63) & 0xFFFFFFFFFFFFFFF8;
    v18 = (v11 + 63) & 0xFFFFFFFFFFFFFFF8;
    v19 = *(v18 + 24);

    if (v19 < 0xFFFFFFFF)
    {
      v25 = *v18;
      v26 = *(v18 + 16);
      v27 = *(v18 + 48);
      *(v17 + 32) = *(v18 + 32);
      *(v17 + 48) = v27;
      *v17 = v25;
      *(v17 + 16) = v26;
      v28 = *(v18 + 64);
      v29 = *(v18 + 80);
      v30 = *(v18 + 96);
      *(v17 + 112) = *(v18 + 112);
      *(v17 + 80) = v29;
      *(v17 + 96) = v30;
      *(v17 + 64) = v28;
      return v3;
    }

    *(v17 + 24) = v19;
    (**(v19 - 8))(v17, v18, v19);
    v20 = *(v18 + 56);
    *(v17 + 56) = v20;
    *(v17 + 64) = *(v18 + 64);
    (**(v20 - 8))(v17 + 32, v18 + 32);
    v21 = *(v18 + 80);
    *(v17 + 72) = *(v18 + 72);
    *(v17 + 80) = v21;
    v22 = *(v18 + 96);
    *(v17 + 88) = *(v18 + 88);
    *(v17 + 96) = v22;
    v23 = *(v18 + 104);
    v24 = *(v18 + 112);
    *(v17 + 104) = v23;
    *(v17 + 112) = v24;
  }

  return v3;
}

uint64_t destroy for TableColumn(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 40) - 8) + 8;
  (*v3)();
  v4 = (a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8;

  v6 = (v4 + 63) & 0xFFFFFFFFFFFFFFF8;
  if (*(v6 + 24) >= 0xFFFFFFFFuLL)
  {
    __swift_destroy_boxed_opaque_existential_1(v6);
    __swift_destroy_boxed_opaque_existential_1(v6 + 32);
  }

  return result;
}

uint64_t initializeWithCopy for TableColumn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 40) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;
  v10 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v11 + 32);
  v13 = *(v11 + 16);
  *v10 = *v11;
  *(v10 + 16) = v13;
  *(v10 + 32) = v12;
  v14 = (v7 + 63) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v8 + 63) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(v15 + 24);

  if (v16 < 0xFFFFFFFF)
  {
    v22 = *v15;
    v23 = *(v15 + 16);
    v24 = *(v15 + 48);
    *(v14 + 32) = *(v15 + 32);
    *(v14 + 48) = v24;
    *v14 = v22;
    *(v14 + 16) = v23;
    v25 = *(v15 + 64);
    v26 = *(v15 + 80);
    v27 = *(v15 + 96);
    *(v14 + 112) = *(v15 + 112);
    *(v14 + 80) = v26;
    *(v14 + 96) = v27;
    *(v14 + 64) = v25;
  }

  else
  {
    *(v14 + 24) = v16;
    (**(v16 - 8))(v14, v15, v16);
    v17 = *(v15 + 56);
    *(v14 + 56) = v17;
    *(v14 + 64) = *(v15 + 64);
    (**(v17 - 8))(v14 + 32, v15 + 32);
    v18 = *(v15 + 80);
    *(v14 + 72) = *(v15 + 72);
    *(v14 + 80) = v18;
    v19 = *(v15 + 96);
    *(v14 + 88) = *(v15 + 88);
    *(v14 + 96) = v19;
    v20 = *(v15 + 104);
    v21 = *(v15 + 112);
    *(v14 + 104) = v20;
    *(v14 + 112) = v21;
  }

  return a1;
}

uint64_t assignWithCopy for TableColumn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 40) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;

  v10 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = *v11;
  v13 = *(v11 + 16);
  *(v10 + 32) = *(v11 + 32);
  *v10 = v12;
  *(v10 + 16) = v13;
  v14 = (v7 + 63) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v8 + 63) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(v15 + 24);
  if (*(v14 + 24) < 0xFFFFFFFFuLL)
  {
    if (v16 >= 0xFFFFFFFF)
    {
      *(v14 + 24) = v16;
      (**(v16 - 8))(v14, (v8 + 63) & 0xFFFFFFFFFFFFFFF8);
      v20 = *(v15 + 56);
      *(v14 + 56) = v20;
      *(v14 + 64) = *(v15 + 64);
      (**(v20 - 8))(v14 + 32, v15 + 32);
      v21 = *(v15 + 80);
      *(v14 + 72) = *(v15 + 72);
      *(v14 + 80) = v21;
      v22 = *(v15 + 96);
      *(v14 + 88) = *(v15 + 88);
      *(v14 + 96) = v22;
      v23 = *(v15 + 104);
      v24 = *(v15 + 112);
      *(v14 + 104) = v23;
      *(v14 + 112) = v24;

      return a1;
    }

LABEL_7:
    v25 = *v15;
    v26 = *(v15 + 16);
    v27 = *(v15 + 48);
    *(v14 + 32) = *(v15 + 32);
    *(v14 + 48) = v27;
    *v14 = v25;
    *(v14 + 16) = v26;
    v28 = *(v15 + 64);
    v29 = *(v15 + 80);
    v30 = *(v15 + 96);
    *(v14 + 112) = *(v15 + 112);
    *(v14 + 80) = v29;
    *(v14 + 96) = v30;
    *(v14 + 64) = v28;
    return a1;
  }

  if (v16 < 0xFFFFFFFF)
  {
    __swift_destroy_boxed_opaque_existential_1(v14);
    __swift_destroy_boxed_opaque_existential_1(v14 + 32);

    goto LABEL_7;
  }

  __swift_assign_boxed_opaque_existential_0(v14, ((v8 + 63) & 0xFFFFFFFFFFFFFFF8));
  __swift_assign_boxed_opaque_existential_1((v14 + 32), (v15 + 32));
  v17 = *(v15 + 80);
  *(v14 + 72) = *(v15 + 72);
  *(v14 + 80) = v17;

  v18 = *(v15 + 96);
  *(v14 + 88) = *(v15 + 88);
  *(v14 + 96) = v18;

  v19 = *(v15 + 112);
  *(v14 + 104) = *(v15 + 104);
  *(v14 + 112) = v19;

  return a1;
}

uint64_t initializeWithTake for TableColumn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 40) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = *v10;
  v11 = *(v10 + 16);
  *(v9 + 32) = *(v10 + 32);
  *v9 = v12;
  *(v9 + 16) = v11;
  v13 = (v7 + 63) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v8 + 63) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(v14 + 80);
  v15 = *(v14 + 96);
  v17 = *(v14 + 64);
  *(v13 + 112) = *(v14 + 112);
  *(v13 + 80) = v16;
  *(v13 + 96) = v15;
  *(v13 + 64) = v17;
  v18 = *(v14 + 16);
  v19 = *(v14 + 32);
  v20 = *(v14 + 48);
  *v13 = *v14;
  *(v13 + 16) = v18;
  *(v13 + 32) = v19;
  *(v13 + 48) = v20;
  return a1;
}

uint64_t assignWithTake for TableColumn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 40) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8 + 63;
  *v7 = *v8;

  v10 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = *v11;
  v13 = *(v11 + 16);
  *(v10 + 32) = *(v11 + 32);
  *v10 = v12;
  *(v10 + 16) = v13;
  v14 = (v7 + 63) & 0xFFFFFFFFFFFFFFF8;
  v15 = v9 & 0xFFFFFFFFFFFFFFF8;
  if (*(v14 + 24) < 0xFFFFFFFFuLL)
  {
    goto LABEL_5;
  }

  v16 = *(v15 + 24);
  __swift_destroy_boxed_opaque_existential_1(v14);
  if (v16 < 0xFFFFFFFF)
  {
    __swift_destroy_boxed_opaque_existential_1(v14 + 32);

LABEL_5:
    v20 = *v15;
    v21 = *(v15 + 16);
    v22 = *(v15 + 48);
    *(v14 + 32) = *(v15 + 32);
    *(v14 + 48) = v22;
    *v14 = v20;
    *(v14 + 16) = v21;
    v23 = *(v15 + 64);
    v24 = *(v15 + 80);
    v25 = *(v15 + 96);
    *(v14 + 112) = *(v15 + 112);
    *(v14 + 80) = v24;
    *(v14 + 96) = v25;
    *(v14 + 64) = v23;
    return a1;
  }

  v17 = *(v15 + 16);
  *v14 = *v15;
  *(v14 + 16) = v17;
  __swift_destroy_boxed_opaque_existential_1(v14 + 32);
  v18 = *(v15 + 32);
  v19 = *(v15 + 48);
  *(v14 + 64) = *(v15 + 64);
  *(v14 + 32) = v18;
  *(v14 + 48) = v19;
  *(v14 + 72) = *(v15 + 72);

  *(v14 + 88) = *(v15 + 88);

  *(v14 + 104) = *(v15 + 104);

  return a1;
}

uint64_t getEnumTagSinglePayload for TableColumn(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 40) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 120;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *storeEnumTagSinglePayload for TableColumn(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 40) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 40) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 120;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) == 0xFFFFFF88)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          *v19 = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) == 0xFFFFFF88)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) != 0xFFFFFF88)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 120);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TableColumnSizingBehavior(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TableColumnSizingBehavior(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 1;
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

  *(result + 33) = v3;
  return result;
}

uint64_t getEnumTag for TableColumnSizingBehavior(uint64_t a1)
{
  if (*(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for TableColumnSizingBehavior(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 32) = 1;
  }

  else
  {
    *(result + 32) = 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlatformItemListHiddenRepresentable and conformance PlatformItemListHiddenRepresentable()
{
  result = lazy protocol witness table cache variable for type PlatformItemListHiddenRepresentable and conformance PlatformItemListHiddenRepresentable;
  if (!lazy protocol witness table cache variable for type PlatformItemListHiddenRepresentable and conformance PlatformItemListHiddenRepresentable)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItemListHiddenRepresentable and conformance PlatformItemListHiddenRepresentable);
  }

  return result;
}

uint64_t outlined assign with take of SwiftUIAnySortComparator?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SwiftUIAnySortComparator?();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void type metadata accessor for SwiftUIAnySortComparator?()
{
  if (!lazy cache variable for type metadata for SwiftUIAnySortComparator?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for SwiftUIAnySortComparator?);
    }
  }
}

uint64_t outlined init with take of UUID?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UUID?(0, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void type metadata completion function for TableColumn.MakeList()
{
  type metadata accessor for UUID?(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

char *initializeBufferWithCopyOfBuffer for TableColumn.MakeList(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *v4 = *a2;
    v4 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 2);
    v6 = *(a3 + 92);
    v7 = type metadata accessor for UUID();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a2 + v6, 1, v7))
    {
      type metadata accessor for UUID?(0, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
      memcpy(&v4[v6], a2 + v6, *(*(v9 - 8) + 64));
    }

    else
    {
      (*(v8 + 16))(&v4[v6], a2 + v6, v7);
      (*(v8 + 56))(&v4[v6], 0, 1, v7);
    }
  }

  return v4;
}

uint64_t destroy for TableColumn.MakeList(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 92);
  v4 = type metadata accessor for UUID();
  v7 = *(v4 - 8);
  result = (*(v7 + 48))(a1 + v3, 1, v4);
  if (!result)
  {
    v6 = *(v7 + 8);

    return v6(a1 + v3, v4);
  }

  return result;
}

uint64_t initializeWithCopy for TableColumn.MakeList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v5 = *(a3 + 92);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2 + v5, 1, v6))
  {
    type metadata accessor for UUID?(0, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
    memcpy((a1 + v5), (a2 + v5), *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a1 + v5, a2 + v5, v6);
    (*(v7 + 56))(a1 + v5, 0, 1, v6);
  }

  return a1;
}

char *assignWithCopy for TableColumn.MakeList(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  v5 = *(a3 + 92);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(&a1[v5], 1, v6);
  v10 = v8(&a2[v5], 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 24))(&a1[v5], &a2[v5], v6);
      return a1;
    }

    (*(v7 + 8))(&a1[v5], v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    type metadata accessor for UUID?(0, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
    memcpy(&a1[v5], &a2[v5], *(*(v11 - 8) + 64));
    return a1;
  }

  (*(v7 + 16))(&a1[v5], &a2[v5], v6);
  (*(v7 + 56))(&a1[v5], 0, 1, v6);
  return a1;
}

uint64_t initializeWithTake for TableColumn.MakeList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v5 = *(a3 + 92);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2 + v5, 1, v6))
  {
    type metadata accessor for UUID?(0, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
    memcpy((a1 + v5), (a2 + v5), *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a1 + v5, a2 + v5, v6);
    (*(v7 + 56))(a1 + v5, 0, 1, v6);
  }

  return a1;
}

uint64_t assignWithTake for TableColumn.MakeList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v5 = *(a3 + 92);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1 + v5, 1, v6);
  v10 = v8(a2 + v5, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 40))(a1 + v5, a2 + v5, v6);
      return a1;
    }

    (*(v7 + 8))(a1 + v5, v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    type metadata accessor for UUID?(0, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
    memcpy((a1 + v5), (a2 + v5), *(*(v11 - 8) + 64));
    return a1;
  }

  (*(v7 + 32))(a1 + v5, a2 + v5, v6);
  (*(v7 + 56))(a1 + v5, 0, 1, v6);
  return a1;
}

uint64_t outlined destroy of UUID?(uint64_t a1)
{
  type metadata accessor for UUID?(0, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata completion function for TableColumn.UnaryTableColumnList()
{
  result = type metadata accessor for TableColumn();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TableColumn.UnaryTableColumnList(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = ((((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 120;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = *(v10 + 64) + 7;
  v13 = v11 | *(v6 + 80) & 0xF8;
  if (v13 > 7 || ((*(v6 + 80) | *(v10 + 80)) & 0x100000) != 0 || ((((v12 + ((v8 + v11) & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 58 > 0x18)
  {
    v16 = *a2;
    *a1 = *a2;
    a1 = (v16 + (((v13 | 7) + 16) & ~(v13 | 7)));
  }

  else
  {
    v17 = v9;
    v55 = ~v11;
    (*(v6 + 16))(a1, a2, v5);
    v18 = ((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    v19 = ((a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    v20 = v19[1];
    *v18 = *v19;
    v18[1] = v20;
    v21 = (v18 + 23) & 0xFFFFFFFFFFFFFFF8;
    v22 = (v19 + 23) & 0xFFFFFFFFFFFFFFF8;
    v23 = *(v22 + 32);
    v24 = *(v22 + 16);
    *v21 = *v22;
    *(v21 + 16) = v24;
    *(v21 + 32) = v23;
    v25 = (v18 + 63) & 0xFFFFFFFFFFFFFFF8;
    v26 = (v19 + 63) & 0xFFFFFFFFFFFFFFF8;
    v27 = *(v26 + 24);

    if (v27 < 0xFFFFFFFF)
    {
      v33 = *v26;
      v34 = *(v26 + 16);
      v35 = *(v26 + 48);
      *(v25 + 32) = *(v26 + 32);
      *(v25 + 48) = v35;
      *v25 = v33;
      *(v25 + 16) = v34;
      v36 = *(v26 + 64);
      v37 = *(v26 + 80);
      v38 = *(v26 + 96);
      *(v25 + 112) = *(v26 + 112);
      *(v25 + 80) = v37;
      *(v25 + 96) = v38;
      *(v25 + 64) = v36;
    }

    else
    {
      *(v25 + 24) = v27;
      (**(v27 - 8))(v25, v26, v27);
      v28 = *(v26 + 56);
      *(v25 + 56) = v28;
      *(v25 + 64) = *(v26 + 64);
      (**(v28 - 8))(v25 + 32, v26 + 32);
      v29 = *(v26 + 80);
      *(v25 + 72) = *(v26 + 72);
      *(v25 + 80) = v29;
      v30 = *(v26 + 96);
      *(v25 + 88) = *(v26 + 88);
      *(v25 + 96) = v30;
      v31 = *(v26 + 104);
      v32 = *(v26 + 112);
      *(v25 + 104) = v31;
      *(v25 + 112) = v32;
    }

    v39 = (a2 + (v8 | v11)) & v55;
    (*(v10 + 16))((a1 + (v8 | v11)) & v55, v39, v17);
    v40 = ((v12 + ((a1 + (v8 | v11)) & v55)) & 0xFFFFFFFFFFFFFFF8);
    v41 = ((v12 + v39) & 0xFFFFFFFFFFFFFFF8);
    v42 = *v41;
    *v40 = *v41;
    v43 = (v40 + 15) & 0xFFFFFFFFFFFFFFF8;
    v44 = (v41 + 15) & 0xFFFFFFFFFFFFFFF8;
    *v43 = *v44;
    v45 = *(v44 + 40);
    v46 = v42;
    if (v45 == 255)
    {
      v52 = *(v44 + 8);
      v53 = *(v44 + 24);
      *(v43 + 40) = *(v44 + 40);
      *(v43 + 8) = v52;
      *(v43 + 24) = v53;
    }

    else
    {
      v47 = *(v44 + 8);
      v48 = *(v44 + 16);
      v49 = *(v44 + 24);
      v50 = *(v44 + 32);
      v51 = v45 & 1;
      outlined copy of TableColumnCustomizationID.Base(v47, v48, v49, v50, v51);
      *(v43 + 8) = v47;
      *(v43 + 16) = v48;
      *(v43 + 24) = v49;
      *(v43 + 32) = v50;
      *(v43 + 40) = v51;
    }

    *(v43 + 48) = *(v44 + 48);
    *(v43 + 56) = *(v44 + 56);
    *(v43 + 57) = *(v44 + 57);
  }

  return a1;
}

void destroy for TableColumn.UnaryTableColumnList(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 40) - 8) + 8;
  (*v3)();
  v4 = *(v3 + 56) + 7;

  v5 = (((v4 + a1) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8;
  if (*(v5 + 24) >= 0xFFFFFFFFuLL)
  {
    __swift_destroy_boxed_opaque_existential_1(v5);
    __swift_destroy_boxed_opaque_existential_1(v5 + 32);
  }

  v6 = ((v4 & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = v8 + 8;
  v10 = (a1 + *(v8 + 80) + v6 + 120) & ~*(v8 + 80);
  (*(v8 + 8))(v10, v7);
  v11 = ((*(v9 + 56) + v10 + 7) & 0xFFFFFFFFFFFFFFF8);

  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v12 + 40);
  if (v13 != 255)
  {
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    v16 = *(v12 + 24);
    v17 = *(v12 + 32);

    outlined consume of TableColumnCustomizationID.Base(v14, v15, v16, v17, v13 & 1);
  }
}

uint64_t initializeWithCopy for TableColumn.UnaryTableColumnList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 40) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;
  v10 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v11 + 32);
  v13 = *(v11 + 16);
  *v10 = *v11;
  *(v10 + 16) = v13;
  *(v10 + 32) = v12;
  v14 = (v7 + 63) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v8 + 63) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(v15 + 24);

  if (v16 < 0xFFFFFFFF)
  {
    v22 = *v15;
    v23 = *(v15 + 16);
    v24 = *(v15 + 48);
    *(v14 + 32) = *(v15 + 32);
    *(v14 + 48) = v24;
    *v14 = v22;
    *(v14 + 16) = v23;
    v25 = *(v15 + 64);
    v26 = *(v15 + 80);
    v27 = *(v15 + 96);
    *(v14 + 112) = *(v15 + 112);
    *(v14 + 80) = v26;
    *(v14 + 96) = v27;
    *(v14 + 64) = v25;
  }

  else
  {
    *(v14 + 24) = v16;
    (**(v16 - 8))(v14, v15, v16);
    v17 = *(v15 + 56);
    *(v14 + 56) = v17;
    *(v14 + 64) = *(v15 + 64);
    (**(v17 - 8))(v14 + 32, v15 + 32);
    v18 = *(v15 + 80);
    *(v14 + 72) = *(v15 + 72);
    *(v14 + 80) = v18;
    v19 = *(v15 + 96);
    *(v14 + 88) = *(v15 + 88);
    *(v14 + 96) = v19;
    v20 = *(v15 + 104);
    v21 = *(v15 + 112);
    *(v14 + 104) = v20;
    *(v14 + 112) = v21;
  }

  v28 = type metadata accessor for UUID();
  v29 = *(v28 - 8);
  v30 = v29 + 16;
  v31 = *(v29 + 80);
  v32 = (((v6 & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + v31 + 120;
  v33 = (v32 + a1) & ~v31;
  v34 = (v32 + a2) & ~v31;
  (*(v29 + 16))(v33, v34, v28);
  v35 = *(v30 + 48) + 7;
  v36 = ((v35 + v33) & 0xFFFFFFFFFFFFFFF8);
  v37 = ((v35 + v34) & 0xFFFFFFFFFFFFFFF8);
  v38 = *v37;
  *v36 = *v37;
  v39 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v39 = *v40;
  v41 = *(v40 + 40);
  v42 = v38;
  if (v41 == 255)
  {
    v48 = *(v40 + 8);
    v49 = *(v40 + 24);
    *(v39 + 40) = *(v40 + 40);
    *(v39 + 8) = v48;
    *(v39 + 24) = v49;
  }

  else
  {
    v43 = *(v40 + 8);
    v44 = *(v40 + 16);
    v45 = *(v40 + 24);
    v46 = *(v40 + 32);
    v47 = v41 & 1;
    outlined copy of TableColumnCustomizationID.Base(v43, v44, v45, v46, v47);
    *(v39 + 8) = v43;
    *(v39 + 16) = v44;
    *(v39 + 24) = v45;
    *(v39 + 32) = v46;
    *(v39 + 40) = v47;
  }

  *(v39 + 48) = *(v40 + 48);
  *(v39 + 56) = *(v40 + 56);
  *(v39 + 57) = *(v40 + 57);
  return a1;
}

uint64_t assignWithCopy for TableColumn.UnaryTableColumnList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 40) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;

  v10 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = *v11;
  v13 = *(v11 + 16);
  *(v10 + 32) = *(v11 + 32);
  *v10 = v12;
  *(v10 + 16) = v13;
  v14 = (v7 + 63) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v8 + 63) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(v15 + 24);
  if (*(v14 + 24) < 0xFFFFFFFFuLL)
  {
    if (v16 >= 0xFFFFFFFF)
    {
      *(v14 + 24) = v16;
      (**(v16 - 8))(v14, (v8 + 63) & 0xFFFFFFFFFFFFFFF8);
      v20 = *(v15 + 56);
      *(v14 + 56) = v20;
      *(v14 + 64) = *(v15 + 64);
      (**(v20 - 8))(v14 + 32, v15 + 32);
      v21 = *(v15 + 80);
      *(v14 + 72) = *(v15 + 72);
      *(v14 + 80) = v21;
      v22 = *(v15 + 96);
      *(v14 + 88) = *(v15 + 88);
      *(v14 + 96) = v22;
      v23 = *(v15 + 104);
      v24 = *(v15 + 112);
      *(v14 + 104) = v23;
      *(v14 + 112) = v24;

      goto LABEL_8;
    }
  }

  else
  {
    if (v16 >= 0xFFFFFFFF)
    {
      __swift_assign_boxed_opaque_existential_0(v14, ((v8 + 63) & 0xFFFFFFFFFFFFFFF8));
      __swift_assign_boxed_opaque_existential_1((v14 + 32), (v15 + 32));
      v17 = *(v15 + 80);
      *(v14 + 72) = *(v15 + 72);
      *(v14 + 80) = v17;

      v18 = *(v15 + 96);
      *(v14 + 88) = *(v15 + 88);
      *(v14 + 96) = v18;

      v19 = *(v15 + 112);
      *(v14 + 104) = *(v15 + 104);
      *(v14 + 112) = v19;

      goto LABEL_8;
    }

    __swift_destroy_boxed_opaque_existential_1(v14);
    __swift_destroy_boxed_opaque_existential_1(v14 + 32);
  }

  v25 = *v15;
  v26 = *(v15 + 16);
  v27 = *(v15 + 48);
  *(v14 + 32) = *(v15 + 32);
  *(v14 + 48) = v27;
  *v14 = v25;
  *(v14 + 16) = v26;
  v28 = *(v15 + 64);
  v29 = *(v15 + 80);
  v30 = *(v15 + 96);
  *(v14 + 112) = *(v15 + 112);
  *(v14 + 80) = v29;
  *(v14 + 96) = v30;
  *(v14 + 64) = v28;
LABEL_8:
  v31 = type metadata accessor for UUID();
  v32 = *(v31 - 8);
  v33 = v32 + 24;
  v34 = *(v32 + 80);
  v35 = (((v6 & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + v34 + 120;
  v36 = (v35 + a1) & ~v34;
  v37 = (v35 + a2) & ~v34;
  (*(v32 + 24))(v36, v37, v31);
  v38 = *(v33 + 40) + 7;
  v39 = ((v38 + v36) & 0xFFFFFFFFFFFFFFF8);
  v40 = ((v38 + v37) & 0xFFFFFFFFFFFFFFF8);
  v41 = *v40;
  v42 = *v39;
  *v39 = *v40;
  v43 = v41;

  v44 = (v39 + 15) & 0xFFFFFFFFFFFFFFF8;
  v45 = (v40 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v44 = *v45;
  v46 = *(v45 + 40);
  if (*(v44 + 40) == 255)
  {
    if (v46 == 255)
    {
      v64 = *(v45 + 8);
      v65 = *(v45 + 24);
      *(v44 + 40) = *(v45 + 40);
      *(v44 + 24) = v65;
      *(v44 + 8) = v64;
    }

    else
    {
      v57 = *(v45 + 8);
      v58 = *(v45 + 16);
      v59 = *(v45 + 24);
      v60 = *(v45 + 32);
      v61 = v46 & 1;
      outlined copy of TableColumnCustomizationID.Base(v57, v58, v59, v60, v46 & 1);
      *(v44 + 8) = v57;
      *(v44 + 16) = v58;
      *(v44 + 24) = v59;
      *(v44 + 32) = v60;
      *(v44 + 40) = v61;
    }
  }

  else if (v46 == 255)
  {
    outlined destroy of TableColumnCustomizationID(v44 + 8);
    v62 = *(v45 + 40);
    v63 = *(v45 + 24);
    *(v44 + 8) = *(v45 + 8);
    *(v44 + 24) = v63;
    *(v44 + 40) = v62;
  }

  else
  {
    v47 = *(v45 + 8);
    v48 = *(v45 + 16);
    v49 = *(v45 + 24);
    v50 = *(v45 + 32);
    v51 = v46 & 1;
    outlined copy of TableColumnCustomizationID.Base(v47, v48, v49, v50, v46 & 1);
    v52 = *(v44 + 8);
    v53 = *(v44 + 16);
    v54 = *(v44 + 24);
    v55 = *(v44 + 32);
    v56 = *(v44 + 40);
    *(v44 + 8) = v47;
    *(v44 + 16) = v48;
    *(v44 + 24) = v49;
    *(v44 + 32) = v50;
    *(v44 + 40) = v51;
    outlined consume of TableColumnCustomizationID.Base(v52, v53, v54, v55, v56);
  }

  *(v44 + 48) = *(v45 + 48);
  *(v44 + 56) = *(v45 + 56);
  *(v44 + 57) = *(v45 + 57);
  return a1;
}

uint64_t initializeWithTake for TableColumn.UnaryTableColumnList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 40) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = *v10;
  v11 = *(v10 + 16);
  *(v9 + 32) = *(v10 + 32);
  *v9 = v12;
  *(v9 + 16) = v11;
  v13 = (v7 + 63) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v8 + 63) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(v14 + 80);
  v15 = *(v14 + 96);
  v17 = *(v14 + 64);
  *(v13 + 112) = *(v14 + 112);
  *(v13 + 80) = v16;
  *(v13 + 96) = v15;
  *(v13 + 64) = v17;
  v18 = *(v14 + 16);
  v19 = *(v14 + 32);
  v20 = *(v14 + 48);
  *v13 = *v14;
  *(v13 + 16) = v18;
  *(v13 + 32) = v19;
  *(v13 + 48) = v20;
  v21 = ((v6 & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8;
  v22 = type metadata accessor for UUID();
  v23 = *(v22 - 8);
  v24 = v23 + 32;
  v25 = *(v23 + 80);
  v26 = v21 + v25 + 120;
  v27 = (v26 + a1) & ~v25;
  v28 = (v26 + a2) & ~v25;
  (*(v23 + 32))(v27, v28, v22);
  v29 = *(v24 + 32) + 7;
  v30 = ((v29 + v27) & 0xFFFFFFFFFFFFFFF8);
  v31 = ((v29 + v28) & 0xFFFFFFFFFFFFFFF8);
  *v30 = *v31;
  v32 = ((v30 + 15) & 0xFFFFFFFFFFFFFFF8);
  v33 = ((v31 + 15) & 0xFFFFFFFFFFFFFFF8);
  v34 = *(v33 + 42);
  v36 = v33[1];
  v35 = v33[2];
  *v32 = *v33;
  v32[1] = v36;
  v32[2] = v35;
  *(v32 + 42) = v34;
  return a1;
}

uint64_t assignWithTake for TableColumn.UnaryTableColumnList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 40) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;

  v9 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = *v10;
  v12 = *(v10 + 16);
  *(v9 + 32) = *(v10 + 32);
  *v9 = v11;
  *(v9 + 16) = v12;
  v13 = (v7 + 63) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v8 + 63) & 0xFFFFFFFFFFFFFFF8;
  if (*(v13 + 24) >= 0xFFFFFFFFuLL)
  {
    v15 = *(v14 + 24);
    __swift_destroy_boxed_opaque_existential_1(v13);
    if (v15 >= 0xFFFFFFFF)
    {
      v16 = *(v14 + 16);
      *v13 = *v14;
      *(v13 + 16) = v16;
      __swift_destroy_boxed_opaque_existential_1(v13 + 32);
      v17 = *(v14 + 32);
      v18 = *(v14 + 48);
      *(v13 + 64) = *(v14 + 64);
      *(v13 + 32) = v17;
      *(v13 + 48) = v18;
      *(v13 + 72) = *(v14 + 72);

      *(v13 + 88) = *(v14 + 88);

      *(v13 + 104) = *(v14 + 104);

      goto LABEL_6;
    }

    __swift_destroy_boxed_opaque_existential_1(v13 + 32);
  }

  v19 = *v14;
  v20 = *(v14 + 16);
  v21 = *(v14 + 48);
  *(v13 + 32) = *(v14 + 32);
  *(v13 + 48) = v21;
  *v13 = v19;
  *(v13 + 16) = v20;
  v22 = *(v14 + 64);
  v23 = *(v14 + 80);
  v24 = *(v14 + 96);
  *(v13 + 112) = *(v14 + 112);
  *(v13 + 80) = v23;
  *(v13 + 96) = v24;
  *(v13 + 64) = v22;
LABEL_6:
  v25 = ((v6 & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8;
  v26 = type metadata accessor for UUID();
  v27 = *(v26 - 8);
  v28 = v27 + 40;
  v29 = *(v27 + 80);
  v30 = v25 + v29 + 120;
  v31 = (v30 + a1) & ~v29;
  v32 = (v30 + a2) & ~v29;
  (*(v27 + 40))(v31, v32, v26);
  v33 = *(v28 + 24) + 7;
  v34 = ((v33 + v31) & 0xFFFFFFFFFFFFFFF8);
  v35 = ((v33 + v32) & 0xFFFFFFFFFFFFFFF8);
  v36 = *v34;
  *v34 = *v35;

  v37 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v37 = *v38;
  v39 = *(v37 + 40);
  if (v39 == 255)
  {
    v46 = *(v38 + 8);
    v47 = *(v38 + 24);
    *(v37 + 40) = *(v38 + 40);
    *(v37 + 24) = v47;
    *(v37 + 8) = v46;
  }

  else
  {
    v40 = *(v38 + 40);
    if (v40 == 255)
    {
      outlined destroy of TableColumnCustomizationID(v37 + 8);
      v48 = *(v38 + 40);
      v49 = *(v38 + 24);
      *(v37 + 8) = *(v38 + 8);
      *(v37 + 24) = v49;
      *(v37 + 40) = v48;
    }

    else
    {
      v41 = *(v37 + 8);
      v42 = *(v37 + 16);
      v43 = *(v37 + 24);
      v44 = *(v37 + 32);
      v45 = *(v38 + 24);
      *(v37 + 8) = *(v38 + 8);
      *(v37 + 24) = v45;
      *(v37 + 40) = v40 & 1;
      outlined consume of TableColumnCustomizationID.Base(v41, v42, v43, v44, v39 & 1);
    }
  }

  *(v37 + 48) = *(v38 + 48);
  *(v37 + 56) = *(v38 + 56);
  *(v37 + 57) = *(v38 + 57);
  return a1;
}

uint64_t getEnumTagSinglePayload for TableColumn.UnaryTableColumnList(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  v12 = *(v6 + 64);
  v13 = *(v10 + 80);
  if (v11 <= v8)
  {
    v14 = v8;
  }

  else
  {
    v14 = *(v10 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v15 = ((((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + v13 + 120;
  if (v14 >= a2)
  {
    goto LABEL_31;
  }

  v16 = ((((*(*(v9 - 8) + 64) + (v15 & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 58;
  if (v16 <= 3)
  {
    v17 = ((a2 - v14 + 0xFFFF) >> 16) + 1;
  }

  else
  {
    v17 = 2;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_31;
      }
    }

    else
    {
      v20 = *(a1 + v16);
      if (!v20)
      {
        goto LABEL_31;
      }
    }

LABEL_27:
    v22 = (v20 - 1) << (8 * v16);
    if (v16 <= 3)
    {
      v23 = *a1;
    }

    else
    {
      v22 = 0;
      v23 = *a1;
    }

    return v14 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v16);
    if (*(a1 + v16))
    {
      goto LABEL_27;
    }
  }

LABEL_31:
  if (v8 >= v11)
  {
    if (v7 < 0x7FFFFFFF)
    {
      v26 = *((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v26 >= 0xFFFFFFFF)
      {
        LODWORD(v26) = -1;
      }

      return (v26 + 1);
    }

    else
    {
      v25 = *(v6 + 48);

      return v25(a1, v7, v5);
    }
  }

  else
  {
    v24 = *(v10 + 48);

    return v24((a1 + v15) & ~v13);
  }
}

void storeEnumTagSinglePayload for TableColumn.UnaryTableColumnList(unsigned int *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 40);
  v8 = *(v7 - 8);
  v26 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(type metadata accessor for UUID() - 8);
  v12 = *(v11 + 84);
  v13 = *(v8 + 64);
  if (v12 <= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = *(v11 + 84);
  }

  v15 = ((((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 120;
  v16 = *(v11 + 80);
  v17 = ((((*(v11 + 64) + ((v15 + v16) & ~v16) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 58;
  if (v14 >= a3)
  {
    v20 = 0;
    if (v14 >= a2)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (v17 <= 3)
    {
      v18 = ((a3 - v14 + 0xFFFF) >> 16) + 1;
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

    if (v14 >= a2)
    {
LABEL_20:
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          *(a1 + v17) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *(a1 + v17) = 0;
      }

      else if (v20)
      {
        *(a1 + v17) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return;
      }

LABEL_35:
      if (v10 >= v12)
      {
        if (v10 >= a2)
        {
          if (v9 < 0x7FFFFFFF)
          {
            v25 = ((a1 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              *v25 = a2 & 0x7FFFFFFF;
              v25[1] = 0;
            }

            else
            {
              *v25 = (a2 - 1);
            }
          }

          else
          {
            v24 = *(v26 + 56);

            v24(a1, a2, v9, v7);
          }
        }

        else if (((((v13 + 7) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) != 0xFFFFFF88)
        {
          bzero(a1, v15);
          *a1 = ~v10 + a2;
        }
      }

      else
      {
        v23 = *(v11 + 56);

        v23((a1 + v15 + v16) & ~v16, a2);
      }

      return;
    }
  }

  v21 = ~v14 + a2;
  bzero(a1, v17);
  if (v17 <= 3)
  {
    v22 = HIWORD(v21) + 1;
  }

  else
  {
    v22 = 1;
  }

  if (v17 <= 3)
  {
    *a1 = v21;
    if (v20 > 1)
    {
LABEL_30:
      if (v20 == 2)
      {
        *(a1 + v17) = v22;
      }

      else
      {
        *(a1 + v17) = v22;
      }

      return;
    }
  }

  else
  {
    *a1 = v21;
    if (v20 > 1)
    {
      goto LABEL_30;
    }
  }

  if (v20)
  {
    *(a1 + v17) = v22;
  }
}

uint64_t static PlaybackButtonStyle<>.pill(dateStyle:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  v3 = *(result + 16);
  *a2 = *result;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  return result;
}

void PillPlaybackButtonStyle._storage.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 1);
  v3 = v1[16];
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

void protocol witness for PlaybackButtonStyle._storage.getter in conformance PillPlaybackButtonStyle(uint64_t a1@<X8>)
{
  v2 = *(v1 + 1);
  v3 = v1[16];
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t getEnumTagSinglePayload for PillPlaybackButtonStyle(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = 3;
  }

  else
  {
    v4 = *(a1 + 16);
  }

  v5 = v4 - 4;
  if (v3 < 3)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for PillPlaybackButtonStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 3;
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for PillPlaybackButtonStyleBody(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v16 = *a2;
    *a1 = *a2;
    v4 = (v16 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = *a2;
    v8 = *(a2 + 8);
    outlined copy of Environment<Bool>.Content(*a2, v8);
    *v4 = v7;
    *(v4 + 8) = v8;
    v9 = *(a3 + 20);
    v10 = v4 + v9;
    v11 = a2 + v9;
    type metadata accessor for ClosedRange<Date>();
    v13 = v12;
    v14 = *(v12 - 8);
    if ((*(v14 + 48))(v11, 1, v12))
    {
      type metadata accessor for ClosedRange<Date>?(0);
      memcpy(v10, v11, *(*(v15 - 8) + 64));
    }

    else
    {
      v17 = type metadata accessor for Date();
      v18 = *(*(v17 - 8) + 16);
      v18(v10, v11, v17);
      v18(&v10[*(v13 + 36)], &v11[*(v13 + 36)], v17);
      (*(v14 + 56))(v10, 0, 1, v13);
    }

    v19 = type metadata accessor for PlaybackButton.Configuration(0);
    v20 = v19[5];
    v21 = type metadata accessor for Date();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(&v11[v20], 2, v21))
    {
      v23 = type metadata accessor for PlaybackButton.State(0);
      memcpy(&v10[v20], &v11[v20], *(*(v23 - 8) + 64));
    }

    else
    {
      (*(v22 + 16))(&v10[v20], &v11[v20], v21);
      (*(v22 + 56))(&v10[v20], 0, 2, v21);
    }

    v24 = v19[6];
    v25 = &v10[v24];
    v26 = &v11[v24];
    v27 = *(v26 + 1);
    *v25 = *v26;
    *(v25 + 1) = v27;
    v10[v19[7]] = v11[v19[7]];
    v10[v19[8]] = v11[v19[8]];
    *&v10[v19[9]] = *&v11[v19[9]];
    v28 = v19[10];
    v29 = &v10[v28];
    v30 = &v11[v28];
    v31 = *&v11[v28];
    v32 = *&v11[v28 + 8];
    v33 = v30[16];

    outlined copy of Environment<AppIntentExecutor?>.Content(v31, v32, v33);
    *v29 = v31;
    *(v29 + 1) = v32;
    v29[16] = v33;
    v34 = *(v30 + 5);
    v35 = *(v30 + 24);
    *(v29 + 24) = v35;
    *(v29 + 5) = v34;
    v36 = *(a3 + 24);
    v37 = v4 + v36;
    v38 = a2 + v36;
    v37[16] = *(v38 + 16);
    *v37 = *v38;
    v39 = v35;
  }

  return v4;
}

uint64_t initializeWithCopy for PillPlaybackButtonStyleBody(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  outlined copy of Environment<Bool>.Content(*a2, v7);
  *a1 = v6;
  *(a1 + 8) = v7;
  v8 = *(a3 + 20);
  v9 = (a1 + v8);
  v10 = a2 + v8;
  type metadata accessor for ClosedRange<Date>();
  v12 = v11;
  v13 = *(v11 - 8);
  if ((*(v13 + 48))(v10, 1, v11))
  {
    type metadata accessor for ClosedRange<Date>?(0);
    memcpy(v9, v10, *(*(v14 - 8) + 64));
  }

  else
  {
    v15 = type metadata accessor for Date();
    v16 = *(*(v15 - 8) + 16);
    v16(v9, v10, v15);
    v16(&v9[*(v12 + 36)], &v10[*(v12 + 36)], v15);
    (*(v13 + 56))(v9, 0, 1, v12);
  }

  v17 = type metadata accessor for PlaybackButton.Configuration(0);
  v18 = v17[5];
  v19 = type metadata accessor for Date();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(&v10[v18], 2, v19))
  {
    v21 = type metadata accessor for PlaybackButton.State(0);
    memcpy(&v9[v18], &v10[v18], *(*(v21 - 8) + 64));
  }

  else
  {
    (*(v20 + 16))(&v9[v18], &v10[v18], v19);
    (*(v20 + 56))(&v9[v18], 0, 2, v19);
  }

  v22 = v17[6];
  v23 = &v9[v22];
  v24 = &v10[v22];
  v25 = *(v24 + 1);
  *v23 = *v24;
  *(v23 + 1) = v25;
  v9[v17[7]] = v10[v17[7]];
  v9[v17[8]] = v10[v17[8]];
  *&v9[v17[9]] = *&v10[v17[9]];
  v26 = v17[10];
  v27 = &v9[v26];
  v28 = &v10[v26];
  v29 = *&v10[v26];
  v30 = *&v10[v26 + 8];
  v31 = v28[16];

  outlined copy of Environment<AppIntentExecutor?>.Content(v29, v30, v31);
  *v27 = v29;
  *(v27 + 1) = v30;
  v27[16] = v31;
  v32 = *(v28 + 5);
  v33 = *(v28 + 24);
  *(v27 + 24) = v33;
  *(v27 + 5) = v32;
  v34 = *(a3 + 24);
  v35 = a1 + v34;
  v36 = a2 + v34;
  *(v35 + 16) = *(v36 + 16);
  *v35 = *v36;
  v37 = v33;

  return a1;
}

uint64_t *assignWithCopy for PillPlaybackButtonStyleBody(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  outlined copy of Environment<Bool>.Content(*a2, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  *a1 = v6;
  *(a1 + 8) = v7;
  outlined consume of Environment<Bool>.Content(v8, v9);
  v56 = a3;
  v57 = a2;
  v10 = *(a3 + 20);
  v11 = a1 + v10;
  v12 = a2 + v10;
  type metadata accessor for ClosedRange<Date>();
  v14 = v13;
  v15 = *(v13 - 8);
  v16 = *(v15 + 48);
  v17 = v16(v11, 1, v13);
  v18 = v16(v12, 1, v14);
  if (v17)
  {
    if (!v18)
    {
      v19 = type metadata accessor for Date();
      v20 = *(*(v19 - 8) + 16);
      v20(v11, v12, v19);
      v20(&v11[*(v14 + 36)], &v12[*(v14 + 36)], v19);
      (*(v15 + 56))(v11, 0, 1, v14);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v18)
  {
    _sSNy10Foundation4DateVGWOhTm_0(v11, type metadata accessor for ClosedRange<Date>);
LABEL_6:
    type metadata accessor for ClosedRange<Date>?(0);
    memcpy(v11, v12, *(*(v21 - 8) + 64));
    goto LABEL_7;
  }

  v54 = type metadata accessor for Date();
  v55 = *(*(v54 - 8) + 24);
  v55(v11, v12, v54);
  v55(&v11[*(v14 + 36)], &v12[*(v14 + 36)], v54);
LABEL_7:
  v22 = type metadata accessor for PlaybackButton.Configuration(0);
  v23 = v22[5];
  v24 = type metadata accessor for Date();
  v25 = *(v24 - 8);
  v26 = *(v25 + 48);
  v27 = v26(&v11[v23], 2, v24);
  v28 = v26(&v12[v23], 2, v24);
  if (!v27)
  {
    if (!v28)
    {
      (*(v25 + 24))(&v11[v23], &v12[v23], v24);
      goto LABEL_13;
    }

    (*(v25 + 8))(&v11[v23], v24);
    goto LABEL_12;
  }

  if (v28)
  {
LABEL_12:
    v29 = type metadata accessor for PlaybackButton.State(0);
    memcpy(&v11[v23], &v12[v23], *(*(v29 - 8) + 64));
    goto LABEL_13;
  }

  (*(v25 + 16))(&v11[v23], &v12[v23], v24);
  (*(v25 + 56))(&v11[v23], 0, 2, v24);
LABEL_13:
  v30 = v22[6];
  v31 = &v11[v30];
  v32 = &v12[v30];
  *v31 = *v32;
  *(v31 + 1) = *(v32 + 1);

  v11[v22[7]] = v12[v22[7]];
  v11[v22[8]] = v12[v22[8]];
  v33 = v22[9];
  v34 = &v11[v33];
  v35 = &v12[v33];
  *v34 = *v35;
  *(v34 + 1) = *(v35 + 1);
  v36 = v22[10];
  v37 = &v11[v36];
  v38 = &v12[v36];
  v39 = *&v12[v36];
  v40 = *&v12[v36 + 8];
  v41 = v38[16];
  outlined copy of Environment<AppIntentExecutor?>.Content(v39, v40, v41);
  v42 = *v37;
  v43 = *(v37 + 1);
  v44 = v37[16];
  *v37 = v39;
  *(v37 + 1) = v40;
  v37[16] = v41;
  outlined consume of Environment<AppIntentExecutor?>.Content(v42, v43, v44);
  v45 = *(v38 + 3);
  v46 = *(v37 + 3);
  *(v37 + 3) = v45;
  v47 = v45;

  v48 = *(v38 + 5);
  *(v37 + 4) = *(v38 + 4);
  *(v37 + 5) = v48;

  v49 = *(v56 + 24);
  v50 = a1 + v49;
  v51 = v57 + v49;
  *v50 = *v51;
  v52 = *(v51 + 8);
  *(v50 + 16) = *(v51 + 16);
  *(v50 + 8) = v52;
  return a1;
}

uint64_t initializeWithTake for PillPlaybackButtonStyleBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v6 = *(a3 + 20);
  v7 = (a1 + v6);
  v8 = (a2 + v6);
  type metadata accessor for ClosedRange<Date>();
  v10 = v9;
  v11 = *(v9 - 8);
  if ((*(v11 + 48))(v8, 1, v9))
  {
    type metadata accessor for ClosedRange<Date>?(0);
    memcpy(v7, v8, *(*(v12 - 8) + 64));
  }

  else
  {
    v13 = type metadata accessor for Date();
    v14 = *(*(v13 - 8) + 32);
    v14(v7, v8, v13);
    v14(&v7[*(v10 + 36)], &v8[*(v10 + 36)], v13);
    (*(v11 + 56))(v7, 0, 1, v10);
  }

  v15 = type metadata accessor for PlaybackButton.Configuration(0);
  v16 = v15[5];
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(&v8[v16], 2, v17))
  {
    v19 = type metadata accessor for PlaybackButton.State(0);
    memcpy(&v7[v16], &v8[v16], *(*(v19 - 8) + 64));
  }

  else
  {
    (*(v18 + 32))(&v7[v16], &v8[v16], v17);
    (*(v18 + 56))(&v7[v16], 0, 2, v17);
  }

  *&v7[v15[6]] = *&v8[v15[6]];
  v7[v15[7]] = v8[v15[7]];
  v7[v15[8]] = v8[v15[8]];
  *&v7[v15[9]] = *&v8[v15[9]];
  v20 = v15[10];
  v21 = &v7[v20];
  v22 = &v8[v20];
  v23 = *(v22 + 1);
  *v21 = *v22;
  *(v21 + 1) = v23;
  *(v21 + 2) = *(v22 + 2);
  v24 = *(a3 + 24);
  v25 = a1 + v24;
  v26 = a2 + v24;
  *v25 = *v26;
  *(v25 + 16) = *(v26 + 16);
  return a1;
}

uint64_t *assignWithTake for PillPlaybackButtonStyleBody(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *a1;
  v9 = *(a1 + 8);
  *a1 = v6;
  *(a1 + 8) = v7;
  outlined consume of Environment<Bool>.Content(v8, v9);
  v48 = a3;
  v49 = a2;
  v10 = *(a3 + 20);
  v11 = a1 + v10;
  v12 = a2 + v10;
  type metadata accessor for ClosedRange<Date>();
  v14 = v13;
  v15 = *(v13 - 8);
  v16 = *(v15 + 48);
  v17 = v16(v11, 1, v13);
  v18 = v16(v12, 1, v14);
  if (v17)
  {
    if (!v18)
    {
      v19 = type metadata accessor for Date();
      v20 = *(*(v19 - 8) + 32);
      v20(v11, v12, v19);
      v20(&v11[*(v14 + 36)], &v12[*(v14 + 36)], v19);
      (*(v15 + 56))(v11, 0, 1, v14);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v18)
  {
    _sSNy10Foundation4DateVGWOhTm_0(v11, type metadata accessor for ClosedRange<Date>);
LABEL_6:
    type metadata accessor for ClosedRange<Date>?(0);
    memcpy(v11, v12, *(*(v21 - 8) + 64));
    goto LABEL_7;
  }

  v46 = type metadata accessor for Date();
  v47 = *(*(v46 - 8) + 40);
  v47(v11, v12, v46);
  v47(&v11[*(v14 + 36)], &v12[*(v14 + 36)], v46);
LABEL_7:
  v22 = type metadata accessor for PlaybackButton.Configuration(0);
  v23 = v22[5];
  v24 = type metadata accessor for Date();
  v25 = *(v24 - 8);
  v26 = *(v25 + 48);
  v27 = v26(&v11[v23], 2, v24);
  v28 = v26(&v12[v23], 2, v24);
  if (!v27)
  {
    if (!v28)
    {
      (*(v25 + 40))(&v11[v23], &v12[v23], v24);
      goto LABEL_13;
    }

    (*(v25 + 8))(&v11[v23], v24);
    goto LABEL_12;
  }

  if (v28)
  {
LABEL_12:
    v29 = type metadata accessor for PlaybackButton.State(0);
    memcpy(&v11[v23], &v12[v23], *(*(v29 - 8) + 64));
    goto LABEL_13;
  }

  (*(v25 + 32))(&v11[v23], &v12[v23], v24);
  (*(v25 + 56))(&v11[v23], 0, 2, v24);
LABEL_13:
  v30 = v22[6];
  v31 = &v11[v30];
  v32 = &v12[v30];
  v34 = *v32;
  v33 = *(v32 + 1);
  *v31 = v34;
  *(v31 + 1) = v33;

  v11[v22[7]] = v12[v22[7]];
  v11[v22[8]] = v12[v22[8]];
  *&v11[v22[9]] = *&v12[v22[9]];
  v35 = v22[10];
  v36 = &v11[v35];
  v37 = &v12[v35];
  LOBYTE(v35) = v12[v35 + 16];
  v38 = *v36;
  v39 = *(v36 + 1);
  v40 = v36[16];
  *v36 = *v37;
  v36[16] = v35;
  outlined consume of Environment<AppIntentExecutor?>.Content(v38, v39, v40);
  v41 = *(v36 + 3);
  *(v36 + 3) = *(v37 + 3);

  *(v36 + 2) = *(v37 + 2);

  v42 = *(v48 + 24);
  v43 = a1 + v42;
  v44 = v49 + v42;
  *v43 = *v44;
  *(v43 + 8) = *(v44 + 8);
  *(v43 + 16) = *(v44 + 16);
  return a1;
}

uint64_t PillPlaybackButtonStyleBody.body.getter@<X0>(uint64_t a1@<X8>)
{
  v64 = a1;
  v2 = type metadata accessor for PlaybackButton.Configuration(0);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AccessibilityPlaybackButtonModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedCon(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent(0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent(0);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v12 = static VerticalAlignment.center.getter();
  *(v12 + 1) = 0;
  v12[16] = 0;
  type metadata accessor for _VariadicView.Tree<_HStackLayout, TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, ();
  closure #1 in PillPlaybackButtonStyleBody.body.getter(&v12[*(v17 + 44)]);
  EdgeInsets.init(_all:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  type metadata accessor for ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _Bl(0);
  v27 = &v12[*(v26 + 36)];
  *v27 = 8;
  *(v27 + 1) = v19;
  *(v27 + 2) = v21;
  *(v27 + 3) = v23;
  *(v27 + 4) = v25;
  v27[40] = 0;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  type metadata accessor for ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Caps(0);
  v29 = &v12[*(v28 + 36)];
  v30 = v75[3];
  *v29 = v75[2];
  *(v29 + 1) = v30;
  *(v29 + 2) = v75[4];
  PillPlaybackButtonStyleBody.platter.getter(v74);
  v72 = v74[6];
  v73[0] = v75[0];
  *(v73 + 9) = *(v75 + 9);
  v68 = v74[2];
  v69 = v74[3];
  v70 = v74[4];
  v71 = v74[5];
  v66 = v74[0];
  v67 = v74[1];
  v31 = static Alignment.center.getter();
  v32 = v72;
  v33 = v73[0];
  v81 = v72;
  v82 = v73[0];
  v34 = v73[1];
  v83 = v73[1];
  v35 = v68;
  v36 = v69;
  v77 = v68;
  v78 = v69;
  v37 = v71;
  v39 = v70;
  v38 = v71;
  v79 = v70;
  v80 = v71;
  v40 = v67;
  v42 = v66;
  v41 = v67;
  v76[0] = v66;
  v76[1] = v67;
  *&v84 = v31;
  *(&v84 + 1) = v43;
  v44 = &v12[*(v10 + 44)];
  v45 = v73[0];
  *(v44 + 6) = v72;
  *(v44 + 7) = v45;
  v46 = v84;
  *(v44 + 8) = v83;
  *(v44 + 9) = v46;
  v47 = v78;
  v48 = v79;
  v49 = v76[0];
  *(v44 + 2) = v77;
  *(v44 + 3) = v47;
  *(v44 + 4) = v48;
  *(v44 + 5) = v37;
  *v44 = v49;
  *(v44 + 1) = v40;
  v85[6] = v32;
  v85[7] = v33;
  v85[8] = v34;
  v85[2] = v35;
  v85[3] = v36;
  v85[4] = v39;
  v85[5] = v38;
  v85[0] = v42;
  v85[1] = v41;
  v86 = v31;
  v87 = v43;
  outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(v76, v65, type metadata accessor for _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>);
  _sSNy10Foundation4DateVGWOhTm_0(v85, type metadata accessor for _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>);
  v50 = type metadata accessor for PillPlaybackButtonStyleBody();
  v51 = v1 + *(v50 + 20);
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent(v12, v16, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent);
  v52 = &v16[*(v14 + 44)];
  v53 = v65[5];
  *(v52 + 4) = v65[4];
  *(v52 + 5) = v53;
  *(v52 + 6) = v65[6];
  v54 = v65[1];
  *v52 = v65[0];
  *(v52 + 1) = v54;
  v55 = v65[3];
  *(v52 + 2) = v65[2];
  *(v52 + 3) = v55;
  v56 = (v1 + *(v50 + 24));
  v57 = *v56;
  v58 = *(v56 + 1);
  LOBYTE(v14) = v56[16];
  outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(v51, v5, type metadata accessor for PlaybackButton.Configuration);
  outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(&v5[*(v3 + 28)], v8, type metadata accessor for PlaybackButton.State);
  type metadata accessor for AccessibilityPlaybackButtonModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedCon( 0,  &lazy cache variable for type metadata for AccessibilityPlaybackButtonModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayou,  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent,  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedCont,  type metadata accessor for AccessibilityPlaybackButtonModifier.Configuration);
  v60 = v59;
  outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(v5, &v8[*(v59 + 40)], type metadata accessor for ClosedRange<Date>?);
  _sSNy10Foundation4DateVGWOhTm_0(v5, type metadata accessor for PlaybackButton.Configuration);
  v61 = &v8[*(v60 + 36)];
  *v61 = v57;
  *(v61 + 1) = v58;
  v61[16] = v14;
  specialized AccessibilityPlaybackButtonModifier.body(content:)(v16, v64);
  _sSNy10Foundation4DateVGWOhTm_0(v8, type metadata accessor for AccessibilityPlaybackButtonModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedCon);
  return _sSNy10Foundation4DateVGWOhTm_0(v16, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent);
}

uint64_t closure #1 in PillPlaybackButtonStyleBody.body.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>?, _PaddingLayout>, _PaddingLayout>, _FrameLayout>(0);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v67 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v62 - v6;
  PillPlaybackButtonStyleBody.playbackStateImage.getter(&v111);
  v85 = v119;
  v86 = v120;
  v87 = v121;
  v81 = v115;
  v82 = v116;
  v83 = v117;
  v84 = v118;
  v77 = v111;
  v78 = v112;
  v79 = v113;
  v80 = v114;
  EdgeInsets.init(_all:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  PillPlaybackButtonStyleBody.resolvedProgressView.getter(v7);
  EdgeInsets.init(_all:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  type metadata accessor for ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>?, _PaddingLayout>(0);
  v25 = &v7[*(v24 + 36)];
  *v25 = 2;
  *(v25 + 1) = v17;
  *(v25 + 2) = v19;
  *(v25 + 3) = v21;
  *(v25 + 4) = v23;
  v25[40] = 0;
  EdgeInsets.init(_all:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  type metadata accessor for ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>?, _PaddingLayout>, _PaddingLayout>(0);
  v35 = &v7[*(v34 + 36)];
  v66 = v7;
  *v35 = 8;
  *(v35 + 1) = v27;
  *(v35 + 2) = v29;
  *(v35 + 3) = v31;
  *(v35 + 4) = v33;
  v35[40] = 0;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v36 = &v7[*(v3 + 44)];
  v37 = v74;
  *v36 = v73;
  *(v36 + 1) = v37;
  *(v36 + 2) = v75;
  PillPlaybackButtonStyleBody.label.getter(&v111);
  v38 = v111;
  v63 = *(&v111 + 1);
  v64 = v111;
  v39 = v112;
  v40 = BYTE2(v113);
  v41 = v113;
  v42 = static Font.subheadline.getter();
  v65 = v42;
  KeyPath = swift_getKeyPath();
  v88 = v40;
  v89 = v38;
  v90 = v39;
  LOWORD(v91) = v41;
  BYTE2(v91) = v40;
  *(&v91 + 1) = KeyPath;
  *&v92 = v42;
  static Font.Weight.semibold.getter();
  type metadata accessor for ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, Text>, Text>, _EnvironmentKeyWritingModifier<Font?>>(0);
  lazy protocol witness table accessor for type ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, Text>, Text>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
  View.fontWeight(_:)();
  outlined consume of _ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, Text>, Text>.Storage(v64, v63, v39, *(&v39 + 1), v41, v40);

  v70 = v113;
  v71 = v114;
  v72 = v115;
  v68 = v111;
  v69 = v112;
  v44 = static Color.white.getter();
  v45 = swift_getKeyPath();
  LOBYTE(v111) = 0;
  v47 = v66;
  v46 = v67;
  outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(v66, v67, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>?, _PaddingLayout>, _PaddingLayout>, _FrameLayout>);
  v97 = v85;
  v98 = v86;
  *&v99 = v87;
  v93 = v81;
  v94 = v82;
  v95 = v83;
  v96 = v84;
  v89 = v77;
  v90 = v78;
  v91 = v79;
  v92 = v80;
  BYTE8(v99) = 2;
  *(&v99 + 9) = *v76;
  HIDWORD(v99) = *&v76[3];
  *&v100 = v9;
  *(&v100 + 1) = v11;
  *&v101 = v13;
  *(&v101 + 1) = v15;
  v102 = 0;
  *(a1 + 208) = 0;
  v48 = v96;
  *(a1 + 96) = v95;
  *(a1 + 112) = v48;
  v49 = v98;
  *(a1 + 128) = v97;
  *(a1 + 144) = v49;
  v50 = v92;
  *(a1 + 32) = v91;
  *(a1 + 48) = v50;
  v51 = v94;
  *(a1 + 64) = v93;
  *(a1 + 80) = v51;
  v52 = v90;
  *a1 = v89;
  *(a1 + 16) = v52;
  v53 = v101;
  *(a1 + 176) = v100;
  *(a1 + 192) = v53;
  *(a1 + 160) = v99;
  type metadata accessor for (ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifie( 0,  &lazy cache variable for type metadata for (ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _A,  type metadata accessor for ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>,  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>?, _PaddingLayout>, _PaddingLayout>, _FrameLayout>,  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, Text>, Text>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Int?>>);
  v55 = v54;
  outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(v46, a1 + *(v54 + 48), type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>?, _PaddingLayout>, _PaddingLayout>, _FrameLayout>);
  v56 = (a1 + *(v55 + 64));
  v57 = v71;
  v103[3] = v71;
  v104 = v72;
  v59 = v69;
  v58 = v70;
  v103[1] = v69;
  v103[2] = v70;
  v103[0] = v68;
  *&v105[0] = v44;
  *(&v105[0] + 1) = v45;
  *&v105[1] = 1;
  BYTE8(v105[1]) = 0;
  *v56 = v68;
  v56[1] = v59;
  *(v56 + 89) = *(v105 + 9);
  v60 = v105[0];
  v56[4] = v104;
  v56[5] = v60;
  v56[2] = v58;
  v56[3] = v57;
  outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(&v89, &v111, type metadata accessor for ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>);
  outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(v103, &v111, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, Text>, Text>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Int?>>);
  _sSNy10Foundation4DateVGWOhTm_0(v47, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>?, _PaddingLayout>, _PaddingLayout>, _FrameLayout>);
  v106[2] = v70;
  v106[3] = v71;
  v106[4] = v72;
  v106[0] = v68;
  v106[1] = v69;
  v107 = v44;
  v108 = v45;
  v109 = 1;
  v110 = 0;
  _sSNy10Foundation4DateVGWOhTm_0(v106, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, Text>, Text>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Int?>>);
  _sSNy10Foundation4DateVGWOhTm_0(v46, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>?, _PaddingLayout>, _PaddingLayout>, _FrameLayout>);
  v119 = v85;
  v120 = v86;
  v121 = v87;
  v115 = v81;
  v116 = v82;
  v117 = v83;
  v118 = v84;
  v111 = v77;
  v112 = v78;
  v113 = v79;
  v114 = v80;
  v122 = 2;
  *v123 = *v76;
  *&v123[3] = *&v76[3];
  v124 = v9;
  v125 = v11;
  v126 = v13;
  v127 = v15;
  v128 = 0;
  return _sSNy10Foundation4DateVGWOhTm_0(&v111, type metadata accessor for ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>);
}

__n128 PillPlaybackButtonStyleBody.playbackStateImage.getter@<Q0>(uint64_t a1@<X8>)
{
  type metadata accessor for <<opaque return type of Transition.combined<A>(with:)>>.0();
  v58 = v3;
  v56 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FilteredTransition<<<opaque return type of Transition.combined<A>(with:)>>.0>();
  v57 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v55 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v54 = &v47 - v9;
  v10 = type metadata accessor for PlaybackButton.Specs();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v47 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v47 - v17;
  v19 = v1 + *(type metadata accessor for PillPlaybackButtonStyleBody() + 20);
  outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(v19, v18, type metadata accessor for PlaybackButton.Configuration);
  *&v18[v10[5]] = 0x4000000000000000;
  *&v18[v10[6]] = 0x3FB47AE147AE147BLL;
  *&v18[v10[7]] = 0x3FA999999999999ALL;
  v59 = type metadata accessor for PlaybackButton.Configuration(0);
  v20 = v18[v59[7]];
  v21 = &v18[v59[6]];
  if (v20 >= 2)
  {
    v22 = 0x69662E6573756170;
  }

  else
  {
    v22 = 0x6C69662E79616C70;
  }

  if (v20 >= 2)
  {
    v23 = 0xEA00000000006C6CLL;
  }

  else
  {
    v23 = 0xE90000000000006CLL;
  }

  if (v21[1])
  {
    v22 = *v21;
  }

  v52 = type metadata accessor for PlaybackButton.Specs;
  _sSNy10Foundation4DateVGWOhTm_0(v18, type metadata accessor for PlaybackButton.Specs);
  specialized Image.init(systemName:)(v22, v23);
  v50 = v24;
  v49 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  static UnitPoint.center.getter();
  *&v69 = 0x3EE4F8B588E368F1;
  *(&v69 + 1) = v25;
  *&v70 = v26;
  v27 = lazy protocol witness table accessor for type ScaleTransition and conformance ScaleTransition();
  v28 = lazy protocol witness table accessor for type OpacityTransition and conformance OpacityTransition();
  Transition.combined<A>(with:)();
  v53 = type metadata accessor for PlaybackButton.Configuration;
  v29 = outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(v19, v15, type metadata accessor for PlaybackButton.Configuration);
  *&v15[v10[5]] = 0x4000000000000000;
  *&v15[v10[6]] = 0x3FB47AE147AE147BLL;
  *&v15[v10[7]] = 0x3FA999999999999ALL;
  MEMORY[0x18D00B680](v29, 0.38, 0.8, 0.0);
  v51 = v19;
  _sSNy10Foundation4DateVGWOhTm_0(v15, type metadata accessor for PlaybackButton.Specs);
  *&v69 = MEMORY[0x1E697E8A0];
  *(&v69 + 1) = MEMORY[0x1E697F268];
  *&v70 = v27;
  *(&v70 + 1) = v28;
  swift_getOpaqueTypeConformance2();
  v30 = v54;
  v31 = v58;
  Transition.animation(_:)();

  (*(v56 + 8))(v5, v31);
  sub_18C084CC8(v30, v55);
  _s10Foundation4DateVACSLAAWlTm_0(&lazy protocol witness table cache variable for type FilteredTransition<<<opaque return type of Transition.combined<A>(with:)>>.0> and conformance FilteredTransition<A>, type metadata accessor for FilteredTransition<<<opaque return type of Transition.combined<A>(with:)>>.0>);
  v32 = AnyTransition.init<A>(_:)();
  sub_18C084D2C(v30);
  v33 = static Font.footnote.getter();
  v34 = swift_getKeyPath();
  v60.n128_u64[0] = v50;
  v60.n128_u64[1] = KeyPath;
  *&v61 = v49;
  BYTE8(v61) = 20;
  *&v62 = v32;
  *(&v62 + 1) = v34;
  v63 = v33;
  static Font.Weight.bold.getter();
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>(0);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
  View.fontWeight(_:)();

  v66 = v71;
  v67 = v72;
  v68 = v73;
  v65 = v70;
  v64 = v69;
  v35 = v51;
  outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(v51, v12, v53);
  *&v12[v10[5]] = 0x4000000000000000;
  *&v12[v10[6]] = 0x3FB47AE147AE147BLL;
  *&v12[v10[7]] = 0x3FA999999999999ALL;
  v36 = v59;
  LODWORD(v32) = v12[v59[8]];
  _sSNy10Foundation4DateVGWOhTm_0(v12, v52);
  if (v32)
  {
    v37 = 0.8;
  }

  else
  {
    v37 = 1.0;
  }

  static UnitPoint.center.getter();
  v39 = v38;
  v41 = v40;
  v42 = *(v35 + v36[7]);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v43 = v67;
  *(a1 + 32) = v66;
  *(a1 + 48) = v43;
  *(a1 + 64) = v68;
  v44 = v65;
  *a1 = v64;
  *(a1 + 16) = v44;
  *(a1 + 80) = v37;
  *(a1 + 88) = v37;
  *(a1 + 96) = v39;
  *(a1 + 104) = v41;
  *(a1 + 112) = v42;
  result = v60;
  v46 = v61;
  *(a1 + 152) = v62;
  *(a1 + 136) = v46;
  *(a1 + 120) = result;
  return result;
}

uint64_t PillPlaybackButtonStyleBody.resolvedProgressView.getter@<X0>(uint64_t a1@<X8>)
{
  v85 = a1;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v81 = v2;
  v82 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v79 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for PlaybackButton.Specs();
  MEMORY[0x1EEE9AC00](v73);
  v72 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PillPlaybackButtonStyleBody();
  v7 = v6 - 8;
  v74 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v75 = v8;
  v76 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>(0);
  v78 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v77 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for ProgressViewSchedule(0);
  MEMORY[0x1EEE9AC00](v71);
  v70 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent(0, &lazy cache variable for type metadata for _ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, type metadata accessor for TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, type metadata accessor for ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>, MEMORY[0x1E697F960]);
  v83 = *(v12 - 8);
  v84 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v80 = (&v68 - v13);
  v14 = type metadata accessor for PlaybackButton.State(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ClosedRange<Date>?(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ClosedRange<Date>();
  v21 = v20;
  v22 = *(v20 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v68 - v26;
  v28 = *(v7 + 28);
  v29 = v1;
  v30 = v1 + v28;
  outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(v30, v19, type metadata accessor for ClosedRange<Date>?);
  if ((*(v22 + 48))(v19, 1, v21) == 1)
  {
    v31 = type metadata accessor for ClosedRange<Date>?;
    v32 = v19;
LABEL_6:
    _sSNy10Foundation4DateVGWOhTm_0(v32, v31);
    v36 = 1;
    v37 = v85;
    return (*(v83 + 56))(v37, v36, 1, v84);
  }

  v69 = v27;
  outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent(v19, v27, type metadata accessor for ClosedRange<Date>);
  v33 = type metadata accessor for PlaybackButton.Configuration(0);
  v34 = *(v33 + 20);
  v35 = v81;
  (*(v82 + 56))(v16, 1, 2, v81);
  LOBYTE(v34) = specialized static PlaybackButton.State.== infix(_:_:)(v30 + v34, v16);
  _sSNy10Foundation4DateVGWOhTm_0(v16, type metadata accessor for PlaybackButton.State);
  if ((v34 & 1) != 0 || specialized Environment.wrappedValue.getter(*v29, *(v29 + 8)) == 2)
  {
    v31 = type metadata accessor for ClosedRange<Date>;
    v32 = v69;
    goto LABEL_6;
  }

  if (*(v30 + *(v33 + 28)) == 2)
  {
    v40 = v69;
    v39 = v70;
    outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(v69, v70, type metadata accessor for ClosedRange<Date>);
    *(v39 + *(v71 + 20)) = 0;
    v41 = v77;
    outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent(v39, v77, type metadata accessor for ProgressViewSchedule);
    v42 = v29;
    v43 = v76;
    outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(v42, v76, type metadata accessor for PillPlaybackButtonStyleBody);
    outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(v40, v24, type metadata accessor for ClosedRange<Date>);
    v44 = (*(v74 + 80) + 16) & ~*(v74 + 80);
    v45 = (v75 + *(v22 + 80) + v44) & ~*(v22 + 80);
    v46 = swift_allocObject();
    outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent(v43, v46 + v44, type metadata accessor for PillPlaybackButtonStyleBody);
    outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent(v24, v46 + v45, type metadata accessor for ClosedRange<Date>);
    v47 = swift_allocObject();
    *(v47 + 16) = partial apply for closure #1 in PillPlaybackButtonStyleBody.resolvedProgressView.getter;
    *(v47 + 24) = v46;
    v48 = swift_allocObject();
    *(v48 + 16) = partial apply for specialized closure #1 in TimelineView<>.init(_:content:);
    *(v48 + 24) = v47;
    v49 = (v41 + *(v78 + 44));
    *v49 = partial apply for specialized closure #1 in TimelineView<>.init(_:content:);
    v49[1] = v48;
    v50 = v80;
    outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent(v41, v80, type metadata accessor for TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>);
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent(0, &lazy cache variable for type metadata for _ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>.Storage, type metadata accessor for TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, type metadata accessor for ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>, MEMORY[0x1E697F948]);
    swift_storeEnumTagMultiPayload();
    v51 = v40;
  }

  else
  {
    v52 = v30;
    v53 = v72;
    outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(v52, v72, type metadata accessor for PlaybackButton.Configuration);
    v54 = v73;
    *(v53 + *(v73 + 20)) = 0x4000000000000000;
    *(v53 + *(v54 + 24)) = 0x3FB47AE147AE147BLL;
    *(v53 + *(v54 + 28)) = 0x3FA999999999999ALL;
    v55 = v79;
    PlaybackButton.Specs.resolvedPauseDate.getter(v79);
    _sSNy10Foundation4DateVGWOhTm_0(v53, type metadata accessor for PlaybackButton.Specs);
    v56 = static Alignment.leading.getter();
    v58 = v57;
    v59 = v69;
    closure #1 in PillPlaybackButtonStyleBody.progressView(interval:referenceDate:)(v29, &v87);
    v117 = v95;
    v118 = v96;
    v119 = v97;
    v113 = v91;
    v114 = v92;
    v115 = v93;
    v116 = v94;
    v109 = v87;
    v110 = v88;
    v111 = v89;
    v112 = v90;
    v120[8] = v95;
    v120[9] = v96;
    v120[10] = v97;
    v120[4] = v91;
    v120[5] = v92;
    v120[6] = v93;
    v120[7] = v94;
    v120[0] = v87;
    v120[1] = v88;
    v120[2] = v89;
    v120[3] = v90;
    outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(&v109, &v86, type metadata accessor for TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>);
    _sSNy10Foundation4DateVGWOhTm_0(v120, type metadata accessor for TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>);
    v106 = v117;
    v107 = v118;
    v108 = v119;
    v102 = v113;
    v103 = v114;
    v104 = v115;
    v105 = v116;
    v98 = v109;
    v99 = v110;
    v100 = v111;
    v101 = v112;
    (*(v82 + 8))(v55, v35);
    v60 = v80;
    *v80 = v56;
    v60[1] = v58;
    v50 = v60;
    v61 = v107;
    *(v60 + 9) = v106;
    *(v60 + 10) = v61;
    *(v60 + 11) = v108;
    v62 = v103;
    *(v60 + 5) = v102;
    *(v60 + 6) = v62;
    v63 = v105;
    *(v60 + 7) = v104;
    *(v60 + 8) = v63;
    v64 = v99;
    *(v60 + 1) = v98;
    *(v60 + 2) = v64;
    v65 = v101;
    *(v60 + 3) = v100;
    *(v60 + 4) = v65;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent(0, &lazy cache variable for type metadata for _ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>.Storage, type metadata accessor for TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, type metadata accessor for ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>, MEMORY[0x1E697F948]);
    swift_storeEnumTagMultiPayload();
    v51 = v59;
  }

  _sSNy10Foundation4DateVGWOhTm_0(v51, type metadata accessor for ClosedRange<Date>);
  v66 = v50;
  v67 = v85;
  outlined init with take of _ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>(v66, v85);
  v37 = v67;
  v36 = 0;
  return (*(v83 + 56))(v37, v36, 1, v84);
}

uint64_t PillPlaybackButtonStyleBody.label.getter@<X0>(uint64_t a1@<X8>)
{
  v67 = a1;
  v68 = type metadata accessor for Date();
  v2 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v65 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PlaybackButton.State(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v65 - v8;
  type metadata accessor for ClosedRange<Date>?(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ClosedRange<Date>();
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PillPlaybackButtonStyleBody();
  v19 = *(v18 + 20);
  v66 = v1;
  v20 = v1 + v19;
  outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(v1 + v19, v12, type metadata accessor for ClosedRange<Date>?);
  v21 = (*(v15 + 48))(v12, 1, v14);
  v22 = (v2 + 48);
  v69 = v21;
  if (v21 == 1)
  {
    _sSNy10Foundation4DateVGWOhTm_0(v12, type metadata accessor for ClosedRange<Date>?);
    v23 = type metadata accessor for PlaybackButton.Configuration(0);
    outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(v20 + *(v23 + 20), v6, type metadata accessor for PlaybackButton.State);
    if ((*v22)(v6, 2, v68))
    {
      v24 = v67;
      LocalizedStringKey.init(stringLiteral:)();
    }

    else
    {
      LocalizedStringKey.init(stringLiteral:)();
      _sSNy10Foundation4DateVGWOhTm_0(v6, type metadata accessor for PlaybackButton.State);
      v24 = v67;
    }

    type metadata accessor for SwiftUIClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v53 = [objc_opt_self() bundleForClass_];
    result = Text.init(_:tableName:bundle:comment:)();
    v33 = result;
    v35 = v54;
    v37 = v55;
    v39 = v56;
    v57 = 0;
  }

  else
  {
    v25 = v2;
    outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent(v12, v17, type metadata accessor for ClosedRange<Date>);
    v26 = type metadata accessor for PlaybackButton.Configuration(0);
    outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(v20 + *(v26 + 20), v9, type metadata accessor for PlaybackButton.State);
    v27 = v68;
    v28 = (*v22)(v9, 2, v68);
    if (v28)
    {
      if (v28 == 1)
      {
        v29 = (v66 + *(v18 + 24));
        v30 = *v29;
        v31 = *(v29 + 1);
        LOBYTE(v29) = v29[16];
        LOBYTE(v70) = v30;
        v71 = v31;
        v72 = v29;
        v70 = Text.DateStyle.timeRemainingString(lowerBound:upperBound:)(v17, &v17[*(v14 + 36)]);
        v71 = v32;
        lazy protocol witness table accessor for type String and conformance String();
        v33 = Text.init<A>(_:)();
        v35 = v34;
        v37 = v36;
        v39 = v38;
        result = _sSNy10Foundation4DateVGWOhTm_0(v17, type metadata accessor for ClosedRange<Date>);
        v41 = 0;
        v42 = 0;
      }

      else
      {
        (*(v25 + 16))(v65, &v17[*(v14 + 36)], v27);
        v58 = (v66 + *(v18 + 24));
        v59 = *v58;
        v60 = *(v58 + 1);
        LOBYTE(v58) = v58[16];
        LOBYTE(v70) = v59;
        v71 = v60;
        v72 = v58;
        v33 = Text.init(_:style:)();
        v35 = v61;
        v37 = v62;
        v39 = v63;
        result = _sSNy10Foundation4DateVGWOhTm_0(v17, type metadata accessor for ClosedRange<Date>);
        v42 = 0;
        v41 = 1;
      }
    }

    else
    {
      v43 = v25;
      v44 = v65;
      (*(v25 + 32))(v65, v9, v27);
      v45 = (v66 + *(v18 + 24));
      v46 = *v45;
      v47 = *(v45 + 1);
      LOBYTE(v45) = v45[16];
      LOBYTE(v70) = v46;
      v71 = v47;
      v72 = v45;
      v70 = Text.DateStyle.timeRemainingString(lowerBound:upperBound:)(v44, &v17[*(v14 + 36)]);
      v71 = v48;
      lazy protocol witness table accessor for type String and conformance String();
      v33 = Text.init<A>(_:)();
      v35 = v49;
      v37 = v50;
      v39 = v51;
      (*(v43 + 8))(v44, v27);
      result = _sSNy10Foundation4DateVGWOhTm_0(v17, type metadata accessor for ClosedRange<Date>);
      v41 = 0;
      v42 = 256;
    }

    v24 = v67;
    v57 = v42 | v41;
  }

  v64 = v69 == 1;
  *v24 = v33;
  *(v24 + 8) = v35;
  *(v24 + 16) = v37 & 1;
  *(v24 + 24) = v39;
  *(v24 + 32) = v57;
  *(v24 + 34) = v64;
  return result;
}

uint64_t PillPlaybackButtonStyleBody.platter.getter@<X0>(_BYTE *a1@<X8>)
{
  v40 = a1;
  v2 = type metadata accessor for PlaybackButton.Specs();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v38 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - v9;
  static Color.white.getter();
  v11 = v1 + *(type metadata accessor for PillPlaybackButtonStyleBody() + 20);
  outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(v11, v10, type metadata accessor for PlaybackButton.Configuration);
  *&v10[v2[5]] = 0x4000000000000000;
  *&v10[v2[6]] = 0x3FB47AE147AE147BLL;
  *&v10[v2[7]] = 0x3FA999999999999ALL;
  v12 = type metadata accessor for PlaybackButton.Configuration(0);
  _sSNy10Foundation4DateVGWOhTm_0(v10, type metadata accessor for PlaybackButton.Specs);
  v13 = Color.opacity(_:)();

  v14 = outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(v11, v7, type metadata accessor for PlaybackButton.Configuration);
  *&v7[v2[5]] = 0x4000000000000000;
  *&v7[v2[6]] = 0x3FB47AE147AE147BLL;
  *&v7[v2[7]] = 0x3FA999999999999ALL;
  v15 = *(v11 + *(v12 + 32));
  v16.n128_u64[0] = 0x3FE3333333333333;
  if (*(v11 + *(v12 + 32)))
  {
    v16.n128_f64[0] = 0.01;
  }

  v17 = MEMORY[0x18D00B680](v14, v16, 0.8, 0.0);
  _sSNy10Foundation4DateVGWOhTm_0(v7, type metadata accessor for PlaybackButton.Specs);
  if ((*(v11 + *(v12 + 28)) | 2) == 3)
  {
    static Color.white.getter();
    v39 = v15;
    v38 = v17;
    outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(v11, v4, type metadata accessor for PlaybackButton.Configuration);
    *&v4[v2[5]] = 0x4000000000000000;
    *&v4[v2[6]] = 0x3FB47AE147AE147BLL;
    *&v4[v2[7]] = 0x3FA999999999999ALL;
    _sSNy10Foundation4DateVGWOhTm_0(v4, type metadata accessor for PlaybackButton.Specs);
    v18 = Color.opacity(_:)();

    LOBYTE(v43) = 1;
    *(&v43 + 1) = v18;
    LOWORD(v44) = 256;
    BYTE2(v44) = 20;
    outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(v11, v4, type metadata accessor for PlaybackButton.Configuration);
    *&v4[v2[5]] = 0x4000000000000000;
    *&v4[v2[6]] = 0x3FB47AE147AE147BLL;
    *&v4[v2[7]] = 0x3FA999999999999ALL;
    static Animation.timingCurve(_:_:_:_:duration:)();
    _sSNy10Foundation4DateVGWOhTm_0(v4, type metadata accessor for PlaybackButton.Specs);
    type metadata accessor for ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>(0, &lazy cache variable for type metadata for ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>);
    lazy protocol witness table accessor for type ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>();
    View.repeatingOpacity(from:to:animation:)();
    LOBYTE(v15) = v39;
    v17 = v38;

    v19 = v50;
    v20 = v51;
    v21 = v52;
    v22 = v53;
    v23 = v54;
    v24 = v55;
    v25 = v56;
    v26 = v57;
    v27 = v58;
    v28 = v59;
    v29 = v60;
    v30 = v61;
    v31 = v62;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
  }

  *&v43 = v19;
  *(&v43 + 1) = v20;
  *&v44 = v21;
  *(&v44 + 1) = v22;
  *&v45 = v23;
  *(&v45 + 1) = v24;
  *&v46 = v25;
  *(&v46 + 1) = v26;
  *&v47 = v27;
  *(&v47 + 1) = v28;
  *&v48 = v29;
  *(&v48 + 1) = v30;
  v49 = v31;
  *&v42[38] = v45;
  *&v42[22] = v44;
  *&v42[6] = v43;
  v42[102] = v31;
  *&v42[86] = v48;
  *&v42[70] = v47;
  *&v42[54] = v46;
  v32 = v40;
  *v40 = 1;
  *(v32 + 1) = v13;
  *(v32 + 8) = 256;
  *(v32 + 3) = v17;
  v32[32] = v15;
  v32[33] = 20;
  v33 = *&v42[48];
  *(v32 + 66) = *&v42[32];
  v34 = *v42;
  *(v32 + 50) = *&v42[16];
  *(v32 + 34) = v34;
  v35 = *&v42[64];
  v36 = *&v42[80];
  *(v32 + 129) = *&v42[95];
  *(v32 + 114) = v36;
  *(v32 + 98) = v35;
  *(v32 + 82) = v33;
  v50 = v19;
  v51 = v20;
  v52 = v21;
  v53 = v22;
  v54 = v23;
  v55 = v24;
  v56 = v25;
  v57 = v26;
  v58 = v27;
  v59 = v28;
  v60 = v29;
  v61 = v30;
  v62 = v31;

  outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(&v43, &v41, type metadata accessor for AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?);
  _sSNy10Foundation4DateVGWOhTm_0(&v50, type metadata accessor for AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?);
}

uint64_t Text.DateStyle.timeRemainingString(lowerBound:upperBound:)(uint64_t a1, uint64_t a2)
{
  v46 = a1;
  v47 = a2;
  v3 = type metadata accessor for Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy();
  v44 = *(v3 - 8);
  v45 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v43 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for FloatingPointRoundingRule();
  v37 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v32 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy();
  v41 = *(v6 - 8);
  v42 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v35 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for Duration.UnitsFormatStyle.UnitWidth();
  v34 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v31 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for Duration.UnitsFormatStyle();
  v38 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v33 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Duration.TimeFormatStyle.Pattern();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Duration.TimeFormatStyle();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v2;
  v19 = *(v2 + 1);
  v20 = v2[16];
  Date.timeIntervalSinceNow.getter();
  Date.timeIntervalSinceNow.getter();
  LOBYTE(v54) = v18;
  v55 = v19;
  v56 = v20;
  static Text.DateStyle.timer.getter();
  v48[0] = v51;
  v49 = v52;
  v50 = v53;
  if (MEMORY[0x18D009E00](&v54, v48))
  {
    static Duration.seconds(_:)();
    static Duration.TimeFormatStyle.Pattern.minuteSecond.getter();
    static FormatStyle<>.time(pattern:)();
    (*(v11 + 8))(v13, v10);
    _s10Foundation4DateVACSLAAWlTm_0(&lazy protocol witness table cache variable for type Duration.TimeFormatStyle and conformance Duration.TimeFormatStyle, MEMORY[0x1E696A188]);
    Duration.formatted<A>(_:)();
    (*(v15 + 8))(v17, v14);
  }

  else
  {
    if (v20 != 3)
    {
      v54 = v19;
      LOBYTE(v55) = v20;
      Text.DateStyle.UnitsConfiguration.units.getter();
    }

    static Duration.seconds(_:)();
    Set<>.init(_:)();
    v21 = v31;
    static Duration.UnitsFormatStyle.UnitWidth.narrow.getter();
    v22 = v37;
    v23 = v32;
    v24 = v39;
    (*(v37 + 104))(v32, *MEMORY[0x1E69E7048], v39);
    v25 = v35;
    static Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.hide(rounded:)();
    (*(v22 + 8))(v23, v24);
    v26 = v43;
    static Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.hide.getter();
    v27 = v33;
    static FormatStyle<>.units(allowed:width:maximumUnitCount:zeroValueUnits:valueLength:fractionalPart:)();

    (*(v44 + 8))(v26, v45);
    (*(v41 + 8))(v25, v42);
    (*(v34 + 8))(v21, v36);
    _s10Foundation4DateVACSLAAWlTm_0(&lazy protocol witness table cache variable for type Duration.UnitsFormatStyle and conformance Duration.UnitsFormatStyle, MEMORY[0x1E696A218]);
    v28 = v40;
    Duration.formatted<A>(_:)();
    (*(v38 + 8))(v27, v28);
  }

  return v54;
}

__n128 closure #1 in PillPlaybackButtonStyleBody.resolvedProgressView.getter@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = static Alignment.leading.getter();
  v6 = v5;
  closure #1 in PillPlaybackButtonStyleBody.progressView(interval:referenceDate:)(a1, &v13);
  v32 = v21;
  v33 = v22;
  v34 = v23;
  v28 = v17;
  v29 = v18;
  v30 = v19;
  v31 = v20;
  v24 = v13;
  v25 = v14;
  v26 = v15;
  v27 = v16;
  v35[8] = v21;
  v35[9] = v22;
  v35[10] = v23;
  v35[4] = v17;
  v35[5] = v18;
  v35[6] = v19;
  v35[7] = v20;
  v35[0] = v13;
  v35[1] = v14;
  v35[2] = v15;
  v35[3] = v16;
  outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(&v24, &v12, type metadata accessor for TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>);
  _sSNy10Foundation4DateVGWOhTm_0(v35, type metadata accessor for TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>);
  *a2 = v4;
  *(a2 + 8) = v6;
  v7 = v33;
  *(a2 + 144) = v32;
  *(a2 + 160) = v7;
  *(a2 + 176) = v34;
  v8 = v29;
  *(a2 + 80) = v28;
  *(a2 + 96) = v8;
  v9 = v31;
  *(a2 + 112) = v30;
  *(a2 + 128) = v9;
  v10 = v25;
  *(a2 + 16) = v24;
  *(a2 + 32) = v10;
  result = v27;
  *(a2 + 48) = v26;
  *(a2 + 64) = result;
  return result;
}

uint64_t closure #1 in PillPlaybackButtonStyleBody.progressView(interval:referenceDate:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v37 = a2;
  v3 = type metadata accessor for PlaybackButton.Specs();
  v4 = (v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v33 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  v12 = a1 + *(type metadata accessor for PillPlaybackButtonStyleBody() + 20);
  outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(v12, v11, type metadata accessor for PlaybackButton.Configuration);
  *&v11[v4[7]] = 0x4000000000000000;
  *&v11[v4[8]] = 0x3FB47AE147AE147BLL;
  *&v11[v4[9]] = 0x3FA999999999999ALL;
  ClosedRange<>.progress(at:countdown:)();
  _sSNy10Foundation4DateVGWOhTm_0(v11, type metadata accessor for PlaybackButton.Specs);
  static Color.white.getter();
  outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(v12, v11, type metadata accessor for PlaybackButton.Configuration);
  *&v11[v4[7]] = 0x4000000000000000;
  *&v11[v4[8]] = 0x3FB47AE147AE147BLL;
  *&v11[v4[9]] = 0x3FA999999999999ALL;
  _sSNy10Foundation4DateVGWOhTm_0(v11, type metadata accessor for PlaybackButton.Specs);
  v35 = Color.opacity(_:)();

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v65[3] = *&v65[27];
  *&v65[11] = *&v65[35];
  *&v65[19] = *&v65[43];
  static Color.white.getter();
  outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(v12, v8, type metadata accessor for PlaybackButton.Configuration);
  *&v8[v4[7]] = 0x4000000000000000;
  *&v8[v4[8]] = 0x3FB47AE147AE147BLL;
  *&v8[v4[9]] = 0x3FA999999999999ALL;
  v13 = type metadata accessor for PlaybackButton.Configuration(0);
  _sSNy10Foundation4DateVGWOhTm_0(v8, type metadata accessor for PlaybackButton.Specs);
  v34 = Color.opacity(_:)();

  v14 = outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(v12, v11, type metadata accessor for PlaybackButton.Configuration);
  *&v11[v4[7]] = 0x4000000000000000;
  *&v11[v4[8]] = 0x3FB47AE147AE147BLL;
  *&v11[v4[9]] = 0x3FA999999999999ALL;
  v33 = MEMORY[0x18D00B680](v14, 0.4, 1.0, 0.0);
  _sSNy10Foundation4DateVGWOhTm_0(v11, type metadata accessor for PlaybackButton.Specs);
  v15 = *(v12 + *(v13 + 28));
  v16 = v36;
  v17 = outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(v12, v36, type metadata accessor for PlaybackButton.Configuration);
  *(v16 + v4[7]) = 0x4000000000000000;
  *(v16 + v4[8]) = 0x3FB47AE147AE147BLL;
  *(v16 + v4[9]) = 0x3FA999999999999ALL;
  v18 = *(v12 + *(v13 + 32));
  v19.n128_u64[0] = 0x3FE3333333333333;
  if (v18)
  {
    v19.n128_f64[0] = 0.01;
  }

  v20 = MEMORY[0x18D00B680](v17, v19, 0.8, 0.0);
  _sSNy10Foundation4DateVGWOhTm_0(v16, type metadata accessor for PlaybackButton.Specs);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v64[7] = *&v65[51];
  *&v64[23] = *&v65[59];
  *&v64[39] = v66;
  LOBYTE(v47) = 1;
  v21 = v35;
  *(&v47 + 1) = v35;
  *v48 = 256;
  *&v48[2] = *v65;
  *&v48[18] = *&v65[8];
  *&v48[34] = *&v65[16];
  *&v43[27] = v47;
  *&v43[35] = *v48;
  v44 = *&v48[16];
  v45 = *&v48[32];
  LOBYTE(v49) = 1;
  v22 = v33;
  v23 = v34;
  *(&v49 + 1) = v34;
  LOWORD(v50) = 256;
  BYTE2(v50) = 20;
  *(&v50 + 1) = v33;
  LOBYTE(v51) = v15;
  *(&v51 + 1) = v20;
  v52[0] = v18;
  v24 = *&v64[16];
  *&v52[48] = *(&v66 + 1);
  *&v52[33] = *&v64[32];
  v25 = *v64;
  *&v52[17] = *&v64[16];
  *&v52[1] = *v64;
  *(&v46[2] + 8) = v51;
  *(&v46[1] + 8) = v50;
  *(v46 + 8) = v49;
  *(&v46[5] + 8) = *&v52[32];
  *&v48[48] = *&v65[23];
  *&v46[0] = *&v65[23];
  *(&v46[6] + 1) = *&v52[48];
  *(&v46[4] + 8) = *&v52[16];
  *(&v46[3] + 8) = *v52;
  v26 = *v48;
  v27 = v37;
  *v37 = v47;
  v27[1] = v26;
  v28 = v46[1];
  v27[4] = v46[0];
  v27[5] = v28;
  v29 = v45;
  v27[2] = v44;
  v27[3] = v29;
  v30 = v46[6];
  v27[9] = v46[5];
  v27[10] = v30;
  v31 = v46[4];
  v27[7] = v46[3];
  v27[8] = v31;
  v27[6] = v46[2];
  v53[0] = 1;
  v54 = v23;
  v55 = 256;
  v56 = 20;
  v57 = v22;
  v58 = v15;
  v59 = v20;
  v60 = v18;
  v61 = v25;
  v62 = v24;
  *v63 = *&v64[32];
  *&v63[15] = *&v64[47];
  outlined init with copy of ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>(&v47, v38);
  outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(&v49, v38, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>);
  _sSNy10Foundation4DateVGWOhTm_0(v53, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>);
  v38[0] = 1;
  v39 = v21;
  v40 = 256;
  v41 = *v65;
  v42 = *&v65[8];
  *v43 = *&v65[16];
  *&v43[7] = *&v65[23];
  return outlined destroy of ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>(v38);
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for _ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>?()
{
  if (!lazy cache variable for type metadata for _ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>?)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent(255, &lazy cache variable for type metadata for _ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, type metadata accessor for TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, type metadata accessor for ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>, MEMORY[0x1E697F960]);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>?);
    }
  }
}

void type metadata accessor for ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>()
{
  if (!lazy cache variable for type metadata for ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>)
  {
    type metadata accessor for TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>(255);
    _s10Foundation4DateVACSLAAWlTm_0(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)> and conformance TupleView<A>, type metadata accessor for TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>);
    v0 = type metadata accessor for ZStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>);
    }
  }
}

void type metadata accessor for (ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)()
{
  if (!lazy cache variable for type metadata for (ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>))
  {
    type metadata accessor for ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>(255, &lazy cache variable for type metadata for ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>);
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>));
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>();
    type metadata accessor for _TraitWritingModifier<TransitionTraitKey>(255, &lazy cache variable for type metadata for _AnimationModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], MEMORY[0x1E697F540]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>)
  {
    type metadata accessor for ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>(255, &lazy cache variable for type metadata for ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>);
    type metadata accessor for _AnimationModifier<PlaybackButton.Phase>(255, &lazy cache variable for type metadata for _AnimationModifier<PlaybackButton.Phase>, lazy protocol witness table accessor for type PlaybackButton.Phase and conformance PlaybackButton.Phase, &type metadata for PlaybackButton.Phase, MEMORY[0x1E697F540]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>);
    }
  }
}

void type metadata accessor for ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    type metadata accessor for _ShapeView<Capsule, Color>(255, &lazy cache variable for type metadata for _ShapeView<Capsule, Color>, lazy protocol witness table accessor for type Capsule and conformance Capsule);
    v3 = type metadata accessor for ModifiedContent();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, Text>, Text>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Int?>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, Text>, Text>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Int?>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, Text>, Text>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ForegroundStyleModifier<Color>>();
    type metadata accessor for _EnvironmentKeyWritingModifier<Int?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Int?>, &lazy cache variable for type metadata for Int?, MEMORY[0x1E69E6530]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, Text>, Text>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Int?>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, Text>, Text>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ForegroundStyleModifier<Color>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, Text>, Text>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ForegroundStyleModifier<Color>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, Text>, Text>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, type metadata accessor for ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, Text>, Text>, _EnvironmentKeyWritingModifier<Font?>>, type metadata accessor for _EnvironmentKeyTransformModifier<[AnyFontModifier]>, MEMORY[0x1E697E830]);
    type metadata accessor for _TraitWritingModifier<TransitionTraitKey>(255, &lazy cache variable for type metadata for _ForegroundStyleModifier<Color>, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980480]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, Text>, Text>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ForegroundStyleModifier<Color>>);
    }
  }
}

void type metadata accessor for _ConditionalContent<_ConditionalContent<Text, Text>, Text>()
{
  if (!lazy cache variable for type metadata for _ConditionalContent<_ConditionalContent<Text, Text>, Text>)
  {
    type metadata accessor for _TraitWritingModifier<TransitionTraitKey>(255, &lazy cache variable for type metadata for _ConditionalContent<Text, Text>, MEMORY[0x1E6981148], MEMORY[0x1E6981148], MEMORY[0x1E697F960]);
    v0 = type metadata accessor for _ConditionalContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ConditionalContent<_ConditionalContent<Text, Text>, Text>);
    }
  }
}

void type metadata accessor for _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>()
{
  if (!lazy cache variable for type metadata for _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>)
  {
    type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>(255);
    _s10Foundation4DateVACSLAAWlTm_0(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)> and conformance TupleView<A>, type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>);
    v0 = type metadata accessor for _BackgroundModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>);
    }
  }
}

void type metadata accessor for ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>)
  {
    type metadata accessor for _ShapeView<Capsule, Color>(255, &lazy cache variable for type metadata for _ShapeView<Capsule, Color>, lazy protocol witness table accessor for type Capsule and conformance Capsule);
    type metadata accessor for _TraitWritingModifier<TransitionTraitKey>(255, &lazy cache variable for type metadata for _AnimationModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], MEMORY[0x1E697F540]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>);
    }
  }
}

void type metadata accessor for AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>()
{
  if (!lazy cache variable for type metadata for AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>)
  {
    type metadata accessor for ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>(255, &lazy cache variable for type metadata for ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>);
    type metadata accessor for ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>();
    lazy protocol witness table accessor for type ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
    v0 = type metadata accessor for AppearanceAnimationView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>)
  {
    type metadata accessor for ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>(255, &lazy cache variable for type metadata for ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>(255, &lazy cache variable for type metadata for ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>);
    lazy protocol witness table accessor for type _ShapeView<Circle, Color> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type _ShapeView<Capsule, Color> and conformance _ShapeView<A, B>, &lazy cache variable for type metadata for _ShapeView<Capsule, Color>, lazy protocol witness table accessor for type Capsule and conformance Capsule);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _ShapeView<Circle, Color> and conformance _ShapeView<A, B>(unint64_t *a1, unint64_t *a2, void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _ShapeView<Capsule, Color>(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>();
    lazy protocol witness table accessor for type ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t specialized AccessibilityPlaybackButtonModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v25 - v11;
  type metadata accessor for _AnimationModifier<PlaybackButton.Phase>(0, &lazy cache variable for type metadata for AccessibilityChildBehaviorBox<AccessibilityChildBehavior.Combine>, lazy protocol witness table accessor for type AccessibilityChildBehavior.Combine and conformance AccessibilityChildBehavior.Combine, &type metadata for AccessibilityChildBehavior.Combine, type metadata accessor for AccessibilityChildBehaviorBox);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  AccessibilityProperties.init(reserving:)();
  static AccessibilityAttachment.properties(_:)();
  outlined destroy of AccessibilityProperties(v27);
  type metadata accessor for Color?(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v14 = swift_allocObject();
  memcpy((v14 + 16), v26, 0x128uLL);
  outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(a1, v9, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent);
  v15 = &v9[*(v7 + 44)];
  *v15 = v14;
  v15[1] = v13;
  AccessibilityTraitSet.init(traits:)();
  v16 = v25[16];
  swift_beginAccess();
  closure #1 in ModifiedContent<>.accessibilityTraits(_:)(v14 + 16, 0, v16);
  outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent(v9, v12, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent);
  v17 = *&v12[*(v7 + 44)];
  swift_beginAccess();
  closure #1 in ModifiedContent<>.accessibilityVisibility(_:)(v17 + 16, 0x4000000040uLL);
  closure #1 in ModifiedContent<>.accessibilityTraits(_:)(v17 + 16, 1, 1);
  closure #1 in ModifiedContent<>.accessibilityTraits(_:)(v17 + 16, 0, 1024);
  v18 = specialized static Text.Accessibility.playback(for:)(v3);
  v20 = v19;
  LOBYTE(v13) = v21;
  specialized ModifiedContent<>.accessibilityLabel(_:)(v18, v19, v21 & 1, v22, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent, a2);
  outlined consume of Text.Storage(v18, v20, v13 & 1);

  _sSNy10Foundation4DateVGWOhTm_0(v12, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent);
  specialized AccessibilityPlaybackButtonModifier.resolvedValue.getter(&lazy cache variable for type metadata for AccessibilityPlaybackButtonModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayou, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedCont, v26);
  v23 = *(a2 + *(v7 + 44));
  swift_beginAccess();
  outlined init with copy of AccessibilityValueStorage(v26, v27);

  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI25AccessibilityValueStorageV_s5NeverOSbTg503_s7c25UI15ModifiedContentVA2A31e59AttachmentModifierVRs_rlE18accessibilityValueyACyxAEGAA0eI7G35VFyAA0E10PropertiesVzXEfU_SbAIXEfU_AFTf1cn_n(v23 + 80, v27);
  outlined destroy of AccessibilityValueStorage?(v23 + 80);
  outlined init with copy of AccessibilityValueStorage(v27, v23 + 80);
  outlined destroy of AccessibilityValueStorage(v27);
  swift_endAccess();
  outlined destroy of AccessibilityValueStorage(v26);
}

uint64_t specialized AccessibilityPlaybackButtonModifier.descriptionValue(_:interval:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33[1] = a5;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PlaybackButton.State(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(v5, v16, type metadata accessor for PlaybackButton.State);
  v17 = (*(v11 + 48))(v16, 2, v10);
  if (v17)
  {
    if (v17 == 1)
    {
      LOBYTE(v40) = a1;
      v41 = a2;
      v42 = a3;
      type metadata accessor for ClosedRange<Date>();
      v40 = Text.DateStyle.timeRemainingString(lowerBound:upperBound:)(a4, a4 + *(v18 + 36));
      v41 = v19;
      lazy protocol witness table accessor for type String and conformance String();
      v20 = Text.init<A>(_:)();
    }

    else
    {
      type metadata accessor for ClosedRange<Date>();
      (*(v11 + 16))(v13, a4 + *(v30 + 36), v10);
      LOBYTE(v40) = a1;
      v41 = a2;
      v42 = a3;
      v20 = Text.init(_:style:)();
    }

    v25 = v20;
    v27 = v21;
    v29 = v22;
  }

  else
  {
    (*(v11 + 32))(v13, v16, v10);
    LOBYTE(v40) = a1;
    v41 = a2;
    v42 = a3;
    type metadata accessor for ClosedRange<Date>();
    v40 = Text.DateStyle.timeRemainingString(lowerBound:upperBound:)(v13, a4 + *(v23 + 36));
    v41 = v24;
    lazy protocol witness table accessor for type String and conformance String();
    v25 = Text.init<A>(_:)();
    v27 = v26;
    v29 = v28;
    (*(v11 + 8))(v13, v10);
  }

  LOBYTE(v40) = a1;
  v41 = a2;
  v42 = a3;
  static Text.DateStyle.timer.getter();
  v34[0] = v37;
  v35 = v38;
  v36 = v39;
  if (MEMORY[0x18D009E00](&v40, v34))
  {
    type metadata accessor for AccessibilityTextModifier();
    v31 = swift_allocObject();
    *(v31 + 16) = 1800;
    *(v31 + 18) = 1;
    *(v31 + 24) = 0u;
    *(v31 + 40) = 0u;
    Text.modified(with:)();

    outlined consume of Text.Storage(v25, v27, v29 & 1);
  }

  return AccessibilityValueStorage.init(description:)();
}

uint64_t specialized closure #1 in TimelineView<>.init(_:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(__int128 *__return_ptr, _BYTE *)@<X1>, _OWORD *a3@<X8>)
{
  type metadata accessor for TimelineView<EveryMinuteTimelineSchedule, Never>.Context();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  type metadata accessor for TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>.Context(0);
  v10 = *(v8 - 8);
  result = v8 - 8;
  if (*(v10 + 64) == v7)
  {
    outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(a1, &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for TimelineView<EveryMinuteTimelineSchedule, Never>.Context);
    a2(&v18, &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    _sSNy10Foundation4DateVGWOhTm_0(&v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for TimelineView<EveryMinuteTimelineSchedule, Never>.Context);
    v38 = v26;
    v39 = v27;
    v40 = v28;
    v41 = v29;
    v34 = v22;
    v35 = v23;
    v36 = v24;
    v37 = v25;
    v30 = v18;
    v31 = v19;
    v32 = v20;
    v33 = v21;
    v42[8] = v26;
    v42[9] = v27;
    v42[10] = v28;
    v42[11] = v29;
    v42[4] = v22;
    v42[5] = v23;
    v42[6] = v24;
    v42[7] = v25;
    v42[0] = v18;
    v42[1] = v19;
    v42[2] = v20;
    v42[3] = v21;
    outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(&v30, v17, type metadata accessor for ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>);
    result = _sSNy10Foundation4DateVGWOhTm_0(v42, type metadata accessor for ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>);
    v11 = v39;
    a3[8] = v38;
    a3[9] = v11;
    v12 = v41;
    a3[10] = v40;
    a3[11] = v12;
    v13 = v35;
    a3[4] = v34;
    a3[5] = v13;
    v14 = v37;
    a3[6] = v36;
    a3[7] = v14;
    v15 = v31;
    *a3 = v30;
    a3[1] = v15;
    v16 = v33;
    a3[2] = v32;
    a3[3] = v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *specialized closure #1 in TimelineView<>.init(_:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(void *__return_ptr, _BYTE *)@<X1>, void *a3@<X8>)
{
  type metadata accessor for TimelineView<EveryMinuteTimelineSchedule, Never>.Context();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  type metadata accessor for TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)>?>>.Context(0);
  v10 = *(v8 - 8);
  result = (v8 - 8);
  if (*(v10 + 64) == v7)
  {
    outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(a1, &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for TimelineView<EveryMinuteTimelineSchedule, Never>.Context);
    a2(v12, &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    _sSNy10Foundation4DateVGWOhTm_0(&v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for TimelineView<EveryMinuteTimelineSchedule, Never>.Context);
    memcpy(v13, v12, 0x151uLL);
    memcpy(v14, v12, 0x151uLL);
    outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(v13, v11, type metadata accessor for ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)>?>);
    _sSNy10Foundation4DateVGWOhTm_0(v14, type metadata accessor for ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)>?>);
    return memcpy(a3, v13, 0x151uLL);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in TimelineView<>.init(_:content:)(uint64_t a1, void (*a2)(char *))
{
  v17 = a2;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TimelineView<PeriodicTimelineSchedule, Never>.Context();
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>.Context(0);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(a1, v10, type metadata accessor for TimelineView<PeriodicTimelineSchedule, Never>.Context);
  (*(v4 + 16))(v6, v10, v3);
  LOBYTE(a1) = v10[*(v8 + 52)];
  outlined init with copy of TimelineInvalidationAction(&v10[*(v8 + 56)], &v14[*(v12 + 56)]);
  _sSNy10Foundation4DateVGWOhTm_0(v10, type metadata accessor for TimelineView<PeriodicTimelineSchedule, Never>.Context);
  (*(v4 + 32))(v14, v6, v3);
  v14[*(v12 + 52)] = a1;
  v17(v14);
  return _sSNy10Foundation4DateVGWOhTm_0(v14, type metadata accessor for TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>.Context);
}

{
  v17 = a2;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TimelineView<PeriodicTimelineSchedule, Never>.Context();
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)>?>>.Context(0);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(a1, v10, type metadata accessor for TimelineView<PeriodicTimelineSchedule, Never>.Context);
  (*(v4 + 16))(v6, v10, v3);
  LOBYTE(a1) = v10[*(v8 + 52)];
  outlined init with copy of TimelineInvalidationAction(&v10[*(v8 + 56)], &v14[*(v12 + 56)]);
  _sSNy10Foundation4DateVGWOhTm_0(v10, type metadata accessor for TimelineView<PeriodicTimelineSchedule, Never>.Context);
  (*(v4 + 32))(v14, v6, v3);
  v14[*(v12 + 52)] = a1;
  v17(v14);
  return _sSNy10Foundation4DateVGWOhTm_0(v14, type metadata accessor for TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)>?>>.Context);
}

unint64_t lazy protocol witness table accessor for type FloatingPointFormatStyle<Double>.Percent and conformance FloatingPointFormatStyle<A>.Percent()
{
  result = lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double>.Percent and conformance FloatingPointFormatStyle<A>.Percent;
  if (!lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double>.Percent and conformance FloatingPointFormatStyle<A>.Percent)
  {
    type metadata accessor for _AnimationModifier<PlaybackButton.Phase>(255, &lazy cache variable for type metadata for FloatingPointFormatStyle<Double>.Percent, lazy protocol witness table accessor for type Double and conformance Double, MEMORY[0x1E69E63B0], MEMORY[0x1E6968E58]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double>.Percent and conformance FloatingPointFormatStyle<A>.Percent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, Text>, Text>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, Text>, Text>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, Text>, Text>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, Text>, Text>, _EnvironmentKeyWritingModifier<Font?>>(255);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, Text>, Text> and conformance <> _ConditionalContent<A, B>();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGACyxGAA04ViewF0AAWlTm_0(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>, &lazy cache variable for type metadata for Font?, MEMORY[0x1E6980F50]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, Text>, Text>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, Text>, Text> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, Text>, Text> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, Text>, Text> and conformance <> _ConditionalContent<A, B>)
  {
    type metadata accessor for _ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, Text>, Text>(255);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<Text, Text>, Text> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, Text>, Text> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<Text, Text>, Text> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<Text, Text>, Text> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<Text, Text>, Text> and conformance <> _ConditionalContent<A, B>)
  {
    type metadata accessor for _ConditionalContent<_ConditionalContent<Text, Text>, Text>();
    lazy protocol witness table accessor for type _ConditionalContent<Text, Text> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<Text, Text>, Text> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<Text, Text> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<Text, Text> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<Text, Text> and conformance <> _ConditionalContent<A, B>)
  {
    type metadata accessor for _TraitWritingModifier<TransitionTraitKey>(255, &lazy cache variable for type metadata for _ConditionalContent<Text, Text>, MEMORY[0x1E6981148], MEMORY[0x1E6981148], MEMORY[0x1E697F960]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<Text, Text> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t outlined consume of _ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, Text>, Text>.Storage(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    outlined consume of Text.Storage(a1, a2, a3 & 1);
  }

  else
  {

    return outlined consume of _ConditionalContent<_ConditionalContent<Text, Text>, Text>.Storage(a1, a2, a3, a4, a5, BYTE1(a5) & 1);
  }
}

uint64_t outlined consume of _ConditionalContent<_ConditionalContent<Text, Text>, Text>.Storage(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    outlined consume of Text.Storage(a1, a2, a3 & 1);
  }

  else
  {

    return outlined consume of _ConditionalContent<Text, Text>.Storage(a1, a2, a3);
  }
}

uint64_t outlined consume of _ConditionalContent<Text, Text>.Storage(uint64_t a1, uint64_t a2, char a3)
{
  outlined consume of Text.Storage(a1, a2, a3 & 1);
}

uint64_t outlined init with take of _ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent(0, &lazy cache variable for type metadata for _ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, type metadata accessor for TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, type metadata accessor for ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>, MEMORY[0x1E697F960]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double partial apply for closure #1 in PillPlaybackButtonStyleBody.resolvedProgressView.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PillPlaybackButtonStyleBody() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  type metadata accessor for ClosedRange<Date>();

  *&result = closure #1 in PillPlaybackButtonStyleBody.resolvedProgressView.getter(v1 + v4, a1).n128_u64[0];
  return result;
}

uint64_t partial apply for specialized closure #1 in TimelineView<>.init(_:content:)(uint64_t a1)
{
  return specialized closure #1 in TimelineView<>.init(_:content:)(a1, *(v1 + 16));
}

{
  return specialized closure #1 in TimelineView<>.init(_:content:)(a1, *(v1 + 16));
}

void type metadata accessor for TimelineView<EveryMinuteTimelineSchedule, Never>.Context()
{
  if (!lazy cache variable for type metadata for TimelineView<EveryMinuteTimelineSchedule, Never>.Context)
  {
    lazy protocol witness table accessor for type EveryMinuteTimelineSchedule and conformance EveryMinuteTimelineSchedule();
    v0 = type metadata accessor for TimelineView.Context();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TimelineView<EveryMinuteTimelineSchedule, Never>.Context);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EveryMinuteTimelineSchedule and conformance EveryMinuteTimelineSchedule()
{
  result = lazy protocol witness table cache variable for type EveryMinuteTimelineSchedule and conformance EveryMinuteTimelineSchedule;
  if (!lazy protocol witness table cache variable for type EveryMinuteTimelineSchedule and conformance EveryMinuteTimelineSchedule)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EveryMinuteTimelineSchedule and conformance EveryMinuteTimelineSchedule);
  }

  return result;
}

uint64_t outlined init with copy of ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>(0, &lazy cache variable for type metadata for ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>(uint64_t a1)
{
  type metadata accessor for ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>(0, &lazy cache variable for type metadata for ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for (ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
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

void type metadata accessor for ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _AnimationModifier<Bool>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _AnimationModifier<Bool>>)
  {
    type metadata accessor for ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>();
    type metadata accessor for _TraitWritingModifier<TransitionTraitKey>(255, &lazy cache variable for type metadata for _AnimationModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], MEMORY[0x1E697F540]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _AnimationModifier<Bool>>);
    }
  }
}

void type metadata accessor for _ShapeView<Capsule, Color>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for _ShapeView();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect>, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect>, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect>, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect>, _OpacityEffect>, type metadata accessor for ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect>, MEMORY[0x1E697E5C8], MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect>, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for (ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)(255, a3, a4, a5);
    v6 = type metadata accessor for TupleView();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for _AnimationModifier<PlaybackButton.Phase>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void type metadata accessor for TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = type metadata accessor for ProgressViewSchedule(255);
    v9 = a3(255);
    v10 = _s10Foundation4DateVACSLAAWlTm_0(&lazy protocol witness table cache variable for type ProgressViewSchedule and conformance ProgressViewSchedule, type metadata accessor for ProgressViewSchedule);
    v11 = a4(a1, v8, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t PlatformViewRepresentableFeature.modifyViewInputs<A>(inputs:proxy:)(uint64_t a1, unsigned int *a2)
{
  v3 = v2;
  v38 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  type metadata accessor for CoreViewRepresentableFeatureProxy();
  v6 = *(a1 + 48);
  v26 = *(a1 + 32);
  v27 = v6;
  v28 = *(a1 + 64);
  v29 = *(a1 + 80);
  v7 = *(a1 + 16);
  v25[0] = *a1;
  v25[1] = v7;
  v8 = DWORD2(v25[0]);
  v30 = v25[0];
  v31 = v7;
  v35 = v29;
  v33 = v6;
  v34 = v28;
  v32 = v26;
  v9 = *(v2 + 48);
  v36[2] = *(v2 + 32);
  v36[3] = v9;
  v36[4] = *(v2 + 64);
  v37 = *(v2 + 80);
  v10 = *(v2 + 16);
  v36[0] = *v2;
  v36[1] = v10;
  outlined init with copy of _ViewInputs(v25, &v23);
  outlined destroy of RemoteSheetContainerVCKey.Storage?(v36, &lazy cache variable for type metadata for _ViewInputs?, MEMORY[0x1E697DE00]);
  v11 = v33;
  *(v2 + 32) = v32;
  *(v2 + 48) = v11;
  *(v2 + 64) = v34;
  *(v2 + 80) = v35;
  v12 = v31;
  *v2 = v30;
  *(v2 + 16) = v12;
  lazy protocol witness table accessor for type FocusedValuesInputKey and conformance FocusedValuesInputKey();
  PropertyList.subscript.getter();
  *(v2 + 88) = v23;
  v13 = *(a1 + 56);
  v23 = *(a1 + 48);
  v24 = v13;

  v14 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();

  if (v14)
  {
    v23 = __PAIR64__(v8, v5);
    MEMORY[0x1EEE9AC00](v15);
    v20 = type metadata accessor for PlatformViewIdentifiedViews();
    WitnessTable = swift_getWitnessTable();
    _s7SwiftUI20FocusGroupIdentifierOSgMaTm_0(0, &lazy cache variable for type metadata for Attribute<_IdentifiedViewTree>, &type metadata for _IdentifiedViewTree, MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v23, closure #1 in Attribute.init<A>(_:)partial apply, &v19, v20, MEMORY[0x1E69E73E0], v16, MEMORY[0x1E69E7410], v17);
    *(v3 + 84) = v22;
  }

  PreferenceKeys.remove(_:)();
  return PreferenceKeys.remove(_:)();
}

uint64_t PlatformViewRepresentableFeature.modifyViewOutputs<A>(outputs:proxy:)(uint64_t result, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  v61 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  v6 = v4[3];
  v57 = v4[2];
  v58 = v6;
  v59 = v4[4];
  v60 = *(v4 + 20);
  v7 = v4[1];
  v55 = *v4;
  v56 = v7;
  if (v7)
  {
    v10 = result;
    v11 = v58;
    v12 = DWORD2(v58);
    v13 = v4[1];
    v52 = *v4;
    *&v53[8] = *(v4 + 24);
    v14 = *(v4 + 5);
    *v53 = v7;
    *&v53[24] = v14;
    *v54 = v58;
    *&v54[8] = DWORD2(v58);
    *&v54[12] = *(v4 + 60);
    *&v54[28] = *(v4 + 76);
    v50[0] = v52;
    v50[1] = v13;
    v15 = v4[2];
    v16 = v4[3];
    v17 = v4[4];
    v51 = *(v4 + 20);
    v50[3] = v16;
    v50[4] = v17;
    v50[2] = v15;
    outlined init with copy of _ViewInputs(v50, &v44);
    type metadata accessor for CoreViewRepresentableFeatureProxy();
    *&v44 = v11;
    DWORD2(v44) = v12;
    v40 = v5;
    if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
    {
      LOBYTE(v44) = 2;
      v39 = a3;
      v37[2] = 0;
      LODWORD(v38) = Attribute.init<A>(body:value:flags:update:)();
      type metadata accessor for GraphHost();
      MEMORY[0x18D00B7D0]();
      *&v44 = __PAIR64__(v38, v5);
      swift_weakInit();

      v37[1] = v37;
      MEMORY[0x1EEE9AC00](v18);
      v19 = type metadata accessor for RemoteSheetContainerVCWriter();
      v36[2] = v19;
      v36[3] = swift_getWitnessTable();
      type metadata accessor for Attribute<RemoteSheetContainerVCKey.Storage?>();
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v44, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_9, v36, v19, MEMORY[0x1E69E73E0], v20, MEMORY[0x1E69E7410], v21);
      v22 = (*(*(v19 - 8) + 8))(&v44, v19);
      *&v44 = v11;
      DWORD2(v44) = v12;
      MEMORY[0x1EEE9AC00](v22);
      LODWORD(v36[-2]) = v23;

      PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();

      *&v44 = v11;
      DWORD2(v44) = v12;
      MEMORY[0x1EEE9AC00](v24);
      LODWORD(v36[-2]) = v38;

      PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();
    }

    *&v44 = v11;
    DWORD2(v44) = v12;
    if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
    {
      v42[2] = *&v53[16];
      v42[3] = *v54;
      v42[4] = *&v54[16];
      v43 = *&v54[32];
      v42[0] = v52;
      v42[1] = *v53;
      v44 = v55;
      v45 = v56;
      v49 = v60;
      v47 = v58;
      v48 = v59;
      v46 = v57;
      outlined init with copy of _ViewInputs(&v44, v41);
      v25 = ViewResponderFilter.init(inputs:view:)(v42, v40, v41);
      v38 = v36;
      MEMORY[0x1EEE9AC00](v25);
      v26 = type metadata accessor for ViewResponderFilter();
      v39 = a4;
      v27 = v26;
      v36[-2] = v26;
      v36[-1] = swift_getWitnessTable();
      type metadata accessor for [KeyPress.Handler](0, &lazy cache variable for type metadata for Attribute<[ViewResponder]>, type metadata accessor for [ViewResponder], MEMORY[0x1E698D388]);
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v41, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_9, &v36[-4], v27, MEMORY[0x1E69E73E0], v28, MEMORY[0x1E69E7410], v29);
      LOBYTE(v42[0]) = 0;
      PreferencesOutputs.subscript.setter();
      (*(*(v27 - 8) + 8))(v41, v27);
    }

    v46 = *&v53[16];
    v47 = *v54;
    v48 = *&v54[16];
    v49 = *&v54[32];
    v44 = v52;
    v45 = *v53;
    MEMORY[0x18D003EC0](MEMORY[0x1E69802B0], MEMORY[0x1E69802A8]);
    v30 = _ViewOutputs.makeContentPathPreferenceWriter<A>(inputs:contentResponder:kinds:)();
    v31 = *MEMORY[0x1E698D3F8];
    if (*(v4 + 21) != *MEMORY[0x1E698D3F8])
    {
      *&v44 = v11;
      DWORD2(v44) = v12;
      MEMORY[0x1EEE9AC00](v30);
      LODWORD(v36[-2]) = v32;

      PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();
    }

    *&v44 = v11;
    DWORD2(v44) = v12;
    MEMORY[0x1EEE9AC00](v30);
    v36[-2] = &v52;

    PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();

    v46 = *&v53[16];
    v47 = *v54;
    v48 = *&v54[16];
    v49 = *&v54[32];
    v44 = v52;
    v45 = *v53;
    static AccessibilityPlatformViewModifier.makeAccessibilityPlatformTransform<A>(inputs:representable:outputs:)(&v44, v40, v10);
    v33 = *(v10 + 8);
    *&v44 = *v10;
    DWORD2(v44) = v33;
    v34 = PreferencesOutputs.subscript.getter();
    if ((v34 & 0x100000000) != 0)
    {
      v35 = v31;
    }

    else
    {
      v35 = v34;
    }

    *(v4 + 23) = v35;
    *&v44 = v11;
    DWORD2(v44) = v12;
    if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
    {
      LOBYTE(v44) = 1;
      PreferencesOutputs.subscript.setter();
    }

    if (*(v4 + 14))
    {
      return outlined destroy of RemoteSheetContainerVCKey.Storage?(&v55, &lazy cache variable for type metadata for _ViewInputs?, MEMORY[0x1E697DE00]);
    }

    else
    {
      type metadata accessor for GraphHost();
      MEMORY[0x18D00B7D0]();
      outlined destroy of RemoteSheetContainerVCKey.Storage?(&v55, &lazy cache variable for type metadata for _ViewInputs?, MEMORY[0x1E697DE00]);

      type metadata accessor for EmptyPreferenceImporter();
      result = swift_allocObject();
      *(v4 + 14) = result;
    }
  }

  return result;
}

uint64_t implicit closure #3 in PlatformViewRepresentableFeature.modifyViewOutputs<A>(outputs:proxy:)()
{

  return Attribute.init<A>(body:value:flags:update:)();
}

uint64_t implicit closure #5 in PlatformViewRepresentableFeature.modifyViewOutputs<A>(outputs:proxy:)()
{
  _ViewInputs.animatedPosition()();
  swift_beginAccess();
  CachedEnvironment.animatedSize(for:)();
  swift_endAccess();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  _s7SwiftUI20FocusGroupIdentifierOSgMaTm_0(0, &lazy cache variable for type metadata for [FocusableBounds], MEMORY[0x1E697E780], MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type FocusableBoundsTransform and conformance FocusableBoundsTransform();
  return Attribute.init<A>(body:value:flags:update:)();
}

uint64_t PlatformViewRepresentableFeature.update<A>(forHost:environment:isInitialUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *(v3 + 88);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for UIKitPlatformViewHost();
  result = swift_dynamicCastClassUnconditional();
  if ((a3 & 1) == 0)
  {
    if (UIKitPlatformViewHost.isPlatformFocusContainerHost.getter())
    {
      v18 = 0;
      v16 = 0u;
      v17 = 0u;
      outlined init with copy of FocusGroupIdentifier?(&v16, v15, &lazy cache variable for type metadata for FocusGroupIdentifier?, &type metadata for FocusGroupIdentifier);
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_focusGroupID>();
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_focusGroupID> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_focusGroupID> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_focusGroupID>);

      PropertyList.subscript.setter();
      if (*(a2 + 8))
      {
        PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
      }

      outlined destroy of RemoteSheetContainerVCKey.Storage?(&v16, &lazy cache variable for type metadata for FocusGroupIdentifier?, &type metadata for FocusGroupIdentifier);
    }

    if (v6 == *MEMORY[0x1E698D3F8])
    {
      AGGraphClearUpdate();
    }

    else
    {
      Value = AGGraphGetValue();
      v10 = v9;
      v11 = *Value;
      v12 = *(Value + 8);
      v13 = *(Value + 16);
      v14 = *(Value + 24);

      AGGraphClearUpdate();
      if (v10)
      {
        *&v16 = v11;
        BYTE8(v16) = v12;
        *&v17 = v13;
        *(&v17 + 1) = v14;

        UIKitPlatformViewHost.focusedValues.setter(&v16);
      }
    }

    AGGraphSetUpdate();
  }

  return result;
}

uint64_t PlatformViewIdentifiedViews.leafView.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ViewLeafView();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

double *PlatformViewIdentifiedViews.value.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ViewLeafView();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  result = AGGraphGetValue();
  if (*result < 0.0)
  {
    __break(1u);
  }

  else
  {
    PlatformViewIdentifiedViews.leafView.getter(v9);
    AGGraphClearUpdate();
    closure #1 in PlatformViewIdentifiedViews.value.getter(v9, a1, a2, a3);
    AGGraphSetUpdate();
    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

uint64_t closure #1 in PlatformViewIdentifiedViews.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16[1] = a4;
  v16[0] = swift_getAssociatedTypeWitness();
  v7 = *(v16[0] - 8);
  MEMORY[0x1EEE9AC00](v16[0]);
  v9 = v16 - v8;
  v10 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ViewLeafView();
  type metadata accessor for UIKitPlatformViewHost();
  if (swift_dynamicCastClass())
  {
    swift_unknownObjectRetain();
    UIKitPlatformViewHost.updateHostedViewBounds()();
    swift_unknownObjectRelease();
  }

  (*(*(*(v14 + 16) - 8) + 16))(v13, a1);
  ViewLeafView.representedViewProvider.getter();
  (*(a3 + 152))(v17, v9, a2, a3);
  (*(v7 + 8))(v9, v16[0]);
  (*(v10 + 8))(v13, a2);
  return swift_dynamicCast();
}

double protocol witness for static Rule.initialValue.getter in conformance PlatformViewIdentifiedViews<A>@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 168) = -1;
  return result;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance UIKitPlatformViewHost<A>.UnarySubtreeSequence(uint64_t a1)
{
  v3 = specialized Sequence._copyToContiguousArray()();
  (*(*(a1 - 8) + 8))(v1, a1);
  return v3;
}

uint64_t RemoteSheetContainerVCKey.Storage.remoteSheet.getter()
{
  outlined init with copy of RemoteSheetContainerVCKey.Storage(v0, v7, MEMORY[0x1E69E7D78]);
  if (v7[8])
  {
    outlined init with take of RemoteSheetContainerVCKey.Storage?(v7, v6, &lazy cache variable for type metadata for WeakBox<_UIRemoteViewControllerContaining>, &lazy cache variable for type metadata for _UIRemoteViewControllerContaining, &protocolRef__UIRemoteViewControllerContaining, type metadata accessor for WeakBox<_UIRemoteViewControllerContaining>);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = [Strong _containedRemoteViewController];
      swift_unknownObjectRelease();
      outlined destroy of WeakBox<_UIRemoteViewControllerContaining>(v6, &lazy cache variable for type metadata for WeakBox<_UIRemoteViewControllerContaining>, &lazy cache variable for type metadata for _UIRemoteViewControllerContaining);
      if (v2)
      {
        return swift_dynamicCastObjCProtocolUnconditional();
      }
    }

    else
    {
      outlined destroy of WeakBox<_UIRemoteViewControllerContaining>(v6, &lazy cache variable for type metadata for WeakBox<_UIRemoteViewControllerContaining>, &lazy cache variable for type metadata for _UIRemoteViewControllerContaining);
    }

    return 0;
  }

  else
  {
    outlined init with take of RemoteSheetContainerVCKey.Storage?(v7, v6, &lazy cache variable for type metadata for WeakBox<_UIRemoteSheetContaining>, &lazy cache variable for type metadata for _UIRemoteSheetContaining, &protocolRef__UIRemoteSheetContaining, type metadata accessor for WeakBox<_UIRemoteViewControllerContaining>);
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = [v4 _remoteSheet];
      swift_unknownObjectRelease();
    }

    else
    {
      v5 = 0;
    }

    outlined destroy of WeakBox<_UIRemoteViewControllerContaining>(v6, &lazy cache variable for type metadata for WeakBox<_UIRemoteSheetContaining>, &lazy cache variable for type metadata for _UIRemoteSheetContaining);
    return v5;
  }
}

uint64_t protocol witness for GraphMutation.apply() in conformance EnableTransparentBackgroundMutation()
{
  result = AGWeakAttributeGetAttribute();
  if (result != *MEMORY[0x1E698D3F8])
  {
    return AGGraphSetValue();
  }

  return result;
}

uint64_t protocol witness for static UserDefaultKeyedFeature.cachedValue.setter in conformance ReuseFirstPartyRepresentablesByDefault(char a1)
{
  result = swift_beginAccess();
  static ReuseFirstPartyRepresentablesByDefault.cachedValue = a1;
  return result;
}

uint64_t protocol witness for static Feature.isEnabled.getter in conformance ReuseFirstPartyRepresentablesByDefault()
{
  lazy protocol witness table accessor for type ReuseFirstPartyRepresentablesByDefault and conformance ReuseFirstPartyRepresentablesByDefault();

  return static UserDefaultKeyedFeature.isEnabled.getter();
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance ReuseFirstPartyRepresentablesByDefault()
{
  lazy protocol witness table accessor for type ReuseFirstPartyRepresentablesByDefault and conformance ReuseFirstPartyRepresentablesByDefault();
  PropertyList.subscript.getter();
  return v1;
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance ReuseFirstPartyRepresentablesByDefault@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  PartyRepresentablesBy = lazy protocol witness table accessor for type ReuseFirstPartyRepresentablesByDefault and conformance ReuseFirstPartyRepresentablesByDefault();
  result = (*(PartyRepresentablesBy + 16))(a1, PartyRepresentablesBy);
  *a2 = result & 1;
  return result;
}

unint64_t lazy protocol witness table accessor for type PlatformViewRepresentableFeature and conformance PlatformViewRepresentableFeature()
{
  result = lazy protocol witness table cache variable for type PlatformViewRepresentableFeature and conformance PlatformViewRepresentableFeature;
  if (!lazy protocol witness table cache variable for type PlatformViewRepresentableFeature and conformance PlatformViewRepresentableFeature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformViewRepresentableFeature and conformance PlatformViewRepresentableFeature);
  }

  return result;
}

void type metadata accessor for WeakBox<_UIRemoteViewControllerContaining>(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    type metadata accessor for _UISceneBSActionHandler(255, a3);
    v4 = type metadata accessor for WeakBox();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t outlined destroy of WeakBox<_UIRemoteViewControllerContaining>(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  type metadata accessor for WeakBox<_UIRemoteViewControllerContaining>(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t assignWithCopy for RemoteSheetContainerVCKey.Storage(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    MEMORY[0x18D011290](a1);
    v4 = *(a2 + 8);
    if (v4 >= 2)
    {
      v4 = *a2 + 2;
    }

    v5 = v4 == 1;
    swift_unknownObjectWeakCopyInit();
    *(a1 + 8) = v5;
  }

  return a1;
}

uint64_t initializeWithCopy for RemoteSheetContainerVCKey.Storage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v4 = *(a2 + 8);
  if (v4 >= 2)
  {
    v4 = *a2 + 2;
  }

  v5 = v4 == 1;
  result = a4();
  *(result + 8) = v5;
  return result;
}

uint64_t assignWithTake for RemoteSheetContainerVCKey.Storage(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    MEMORY[0x18D011290](a1);
    v4 = *(a2 + 8);
    if (v4 >= 2)
    {
      v4 = *a2 + 2;
    }

    v5 = v4 == 1;
    swift_unknownObjectWeakTakeInit();
    *(a1 + 8) = v5;
  }

  return a1;
}

uint64_t storeEnumTagSinglePayload for RemoteSheetContainerVCKey.Storage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for RemoteSheetContainerVCKey.Storage(uint64_t a1)
{
  result = *(a1 + 8);
  if (result >= 2)
  {
    return (*a1 + 2);
  }

  return result;
}

uint64_t destructiveInjectEnumTag for RemoteSheetContainerVCKey.Storage(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *result = 0;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t assignWithCopy for PlatformViewRepresentableFeature(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (v4)
    {
      *a1 = *a2;

      *(a1 + 8) = *(a2 + 8);
      *(a1 + 16) = *(a2 + 16);

      *(a1 + 24) = *(a2 + 24);
      *(a1 + 28) = *(a2 + 28);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 36) = *(a2 + 36);
      *(a1 + 40) = *(a2 + 40);

      *(a1 + 48) = *(a2 + 48);

      *(a1 + 56) = *(a2 + 56);
      *(a1 + 60) = *(a2 + 60);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 68) = *(a2 + 68);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 76) = *(a2 + 76);
      *(a1 + 80) = *(a2 + 80);
    }

    else
    {
      outlined destroy of _ViewInputs(a1);
      v5 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v5;
      v7 = *(a2 + 48);
      v6 = *(a2 + 64);
      v8 = *(a2 + 32);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 48) = v7;
      *(a1 + 64) = v6;
      *(a1 + 32) = v8;
    }
  }

  else if (v4)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 28) = *(a2 + 28);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 36) = *(a2 + 36);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 60) = *(a2 + 60);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 68) = *(a2 + 68);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 76) = *(a2 + 76);
    *(a1 + 80) = *(a2 + 80);
  }

  else
  {
    v9 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v9;
    v10 = *(a2 + 32);
    v11 = *(a2 + 48);
    v12 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 48) = v11;
    *(a1 + 64) = v12;
    *(a1 + 32) = v10;
  }

  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);

  return a1;
}
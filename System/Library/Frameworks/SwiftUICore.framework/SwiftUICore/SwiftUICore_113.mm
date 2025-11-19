void storeEnumTagSinglePayload for DynamicBody(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = (((((((*(v6 + 64) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 4;
  if (v7 >= a2)
  {
    if (v7 < a3)
    {
      a1[v8] = 0;
    }

    if (a2)
    {
      v10 = *(v6 + 56);

      v10();
    }
  }

  else
  {
    v9 = ~v7 + a2;
    bzero(a1, v8);
    *a1 = v9;
    if (v7 < a3)
    {
      a1[v8] = 1;
    }
  }
}

void type metadata accessor for (String, AGAttribute)()
{
  if (!lazy cache variable for type metadata for (String, AGAttribute))
  {
    type metadata accessor for AGAttribute(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (String, AGAttribute));
    }
  }
}

uint64_t static Update.threadIsUpdating.getter()
{
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  LODWORD(result) = _MovableLockIsOwner(static Update._lock);
  if (static Update.dispatchDepth < static Update.depth)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

BOOL static Update.isOwner.getter()
{
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  return _MovableLockIsOwner(static Update._lock);
}

void static Update.assertIsLocked()()
{
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
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }
}

uint64_t static Update.canDispatch.getter()
{
  if (one-time initialization token for lockAssertionsAreEnabled != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_7;
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
LABEL_7:
    if (static Update.depth == 1)
    {
      if (one-time initialization token for actions != -1)
      {
        swift_once();
      }

      return *(static Update.actions + 2) != 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t assignWithCopy for Update.Action(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t assignWithTake for Update.Action(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t getEnumTagSinglePayload for Update.Action(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 28))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Update.Action(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 28) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 28) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void DistanceGesture.StateType.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
}

void protocol witness for GestureStateProtocol.init() in conformance DistanceGesture.StateType(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
}

uint64_t DistanceGesture.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  result = swift_allocObject();
  *(result + 16) = v4;
  *(result + 24) = v3;
  *a1 = 0;
  *(a1 + 8) = partial apply for closure #1 in DistanceGesture.body.getter;
  *(a1 + 16) = result;
  return result;
}

uint64_t closure #1 in DistanceGesture.body.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v5 = *(a2 + 16);
  v6 = *(a2 + 48);
  v7 = *(a2 + 81);
  if ((v7 - 1) >= 2)
  {
    if (*(a2 + 81))
    {
      goto LABEL_19;
    }

    if (v5 == 1)
    {
LABEL_15:
      *a3 = 0;
      *(a3 + 8) = 1;
      return result;
    }
  }

  if (*(result + 16))
  {
    *result = v6;
    *(result + 16) = 0;
    v8 = 0.0;
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_14:
    if (v5 != 1)
    {
      *a3 = v8;
      *(a3 + 8) = 0;
      return result;
    }

    goto LABEL_15;
  }

  v10 = vsubq_f64(*result, v6);
  v8 = sqrt(vaddvq_f64(vmulq_f64(v10, v10)));
  v11 = *(result + 24);
  if (v11 <= v8)
  {
    v11 = v8;
  }

  *(result + 24) = v11;
  if (!v7)
  {
    goto LABEL_14;
  }

LABEL_4:
  if (v7 != 1)
  {
    if (*(result + 24) >= a5 && v8 < a4)
    {
      *a3 = v8;
      *(a3 + 8) = 512;
      return result;
    }

    goto LABEL_19;
  }

  if (v8 > a4)
  {
LABEL_19:
    *a3 = 0;
    *(a3 + 8) = 768;
    return result;
  }

  v9 = *(result + 24);
  *a3 = v8;
  *(a3 + 8) = 0;
  *(a3 + 9) = v9 >= a5;
  return result;
}

uint64_t protocol witness for Gesture.body.getter in conformance DistanceGesture@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  result = swift_allocObject();
  *(result + 16) = v4;
  *(result + 24) = v3;
  *a1 = 0;
  *(a1 + 8) = closure #1 in DistanceGesture.body.getterpartial apply;
  *(a1 + 16) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type ModifierGesture<StateContainerGesture<DistanceGesture.StateType, SpatialEvent, CGFloat>, EventListener<SpatialEvent>> and conformance ModifierGesture<A, B>(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t protocol witness for CodingKey.stringValue.getter in conformance SymbolRenderingMode.Storage.CodingKeys()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000016;
    if (v1 != 6)
    {
      v5 = 0xD000000000000011;
    }

    v6 = 0xD000000000000019;
    if (v1 == 4)
    {
      v6 = 0x6572726566657270;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x6F7268636F6E6F6DLL;
    v3 = 0x6863726172656968;
    if (v1 != 2)
    {
      v3 = 0x657474656C6170;
    }

    if (*v0)
    {
      v2 = 0x6C6F6369746C756DLL;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SymbolRenderingMode.Storage.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized SymbolRenderingMode.Storage.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SymbolRenderingMode.Storage.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SymbolRenderingMode.Storage.CodingKeys and conformance SymbolRenderingMode.Storage.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SymbolRenderingMode.Storage.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SymbolRenderingMode.Storage.CodingKeys and conformance SymbolRenderingMode.Storage.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SymbolRenderingMode.Storage.HierarchicalCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SymbolRenderingMode.Storage.HierarchicalCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SymbolRenderingMode.Storage.HierarchicalCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SymbolRenderingMode.Storage.HierarchicalCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SymbolRenderingMode.Storage.MonochromeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SymbolRenderingMode.Storage.MonochromeCodingKeys and conformance SymbolRenderingMode.Storage.MonochromeCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SymbolRenderingMode.Storage.MonochromeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SymbolRenderingMode.Storage.MonochromeCodingKeys and conformance SymbolRenderingMode.Storage.MonochromeCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SymbolRenderingMode.Storage.MulticolorCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SymbolRenderingMode.Storage.MulticolorCodingKeys and conformance SymbolRenderingMode.Storage.MulticolorCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SymbolRenderingMode.Storage.MulticolorCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SymbolRenderingMode.Storage.MulticolorCodingKeys and conformance SymbolRenderingMode.Storage.MulticolorCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SymbolRenderingMode.Storage.PaletteCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SymbolRenderingMode.Storage.PaletteCodingKeys and conformance SymbolRenderingMode.Storage.PaletteCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SymbolRenderingMode.Storage.PaletteCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SymbolRenderingMode.Storage.PaletteCodingKeys and conformance SymbolRenderingMode.Storage.PaletteCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys and conformance SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys and conformance SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SymbolRenderingMode.Storage.PreferredCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SymbolRenderingMode.Storage.PreferredCodingKeys and conformance SymbolRenderingMode.Storage.PreferredCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SymbolRenderingMode.Storage.PreferredCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SymbolRenderingMode.Storage.PreferredCodingKeys and conformance SymbolRenderingMode.Storage.PreferredCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::Int SymbolRenderingMode.Storage.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

uint64_t static SymbolRenderingMode.preferredIfEnabled.getter@<X0>(_BYTE *a1@<X8>)
{
  if (one-time initialization token for preferredIfEnabled != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = static SymbolRenderingMode.preferredIfEnabled;
  return result;
}

uint64_t SymbolRenderingMode.Storage.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E6F58];
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>, lazy protocol witness table accessor for type SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys and conformance SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys, &unk_1F0076568, MEMORY[0x1E69E6F58]);
  v56 = *(v5 - 8);
  v57 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v55 = &v35 - v6;
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys>, lazy protocol witness table accessor for type SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys, &unk_1F0076548, v4);
  v53 = *(v7 - 8);
  v54 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v52 = &v35 - v8;
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys>, lazy protocol witness table accessor for type SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys, &unk_1F0076528, v4);
  v50 = *(v9 - 8);
  v51 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v49 = &v35 - v10;
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<SymbolRenderingMode.Storage.PreferredCodingKeys>, lazy protocol witness table accessor for type SymbolRenderingMode.Storage.PreferredCodingKeys and conformance SymbolRenderingMode.Storage.PreferredCodingKeys, &unk_1F0076508, v4);
  v47 = *(v11 - 8);
  v48 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v46 = &v35 - v12;
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteCodingKeys>, lazy protocol witness table accessor for type SymbolRenderingMode.Storage.PaletteCodingKeys and conformance SymbolRenderingMode.Storage.PaletteCodingKeys, &unk_1F00764E8, v4);
  v44 = *(v13 - 8);
  v45 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v43 = &v35 - v14;
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<SymbolRenderingMode.Storage.HierarchicalCodingKeys>, lazy protocol witness table accessor for type SymbolRenderingMode.Storage.HierarchicalCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalCodingKeys, &unk_1F00764C8, v4);
  v41 = *(v15 - 8);
  v42 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v40 = &v35 - v16;
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<SymbolRenderingMode.Storage.MulticolorCodingKeys>, lazy protocol witness table accessor for type SymbolRenderingMode.Storage.MulticolorCodingKeys and conformance SymbolRenderingMode.Storage.MulticolorCodingKeys, &unk_1F00764A8, v4);
  v39 = v17;
  v38 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v37 = &v35 - v18;
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<SymbolRenderingMode.Storage.MonochromeCodingKeys>, lazy protocol witness table accessor for type SymbolRenderingMode.Storage.MonochromeCodingKeys and conformance SymbolRenderingMode.Storage.MonochromeCodingKeys, &unk_1F0076488, v4);
  v20 = v19;
  v36 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v35 - v21;
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<SymbolRenderingMode.Storage.CodingKeys>, lazy protocol witness table accessor for type SymbolRenderingMode.Storage.CodingKeys and conformance SymbolRenderingMode.Storage.CodingKeys, &unk_1F0076468, v4);
  v58 = v23;
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v35 - v25;
  v27 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SymbolRenderingMode.Storage.CodingKeys and conformance SymbolRenderingMode.Storage.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v28 = (v24 + 8);
  if (v27 > 3)
  {
    if (v27 > 5)
    {
      if (v27 == 6)
      {
        v65 = 6;
        lazy protocol witness table accessor for type SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys();
        v30 = v52;
        v29 = v58;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v32 = v53;
        v31 = v54;
      }

      else
      {
        v66 = 7;
        lazy protocol witness table accessor for type SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys and conformance SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys();
        v30 = v55;
        v29 = v58;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v32 = v56;
        v31 = v57;
      }
    }

    else if (v27 == 4)
    {
      v63 = 4;
      lazy protocol witness table accessor for type SymbolRenderingMode.Storage.PreferredCodingKeys and conformance SymbolRenderingMode.Storage.PreferredCodingKeys();
      v30 = v46;
      v29 = v58;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v32 = v47;
      v31 = v48;
    }

    else
    {
      v64 = 5;
      lazy protocol witness table accessor for type SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys();
      v30 = v49;
      v29 = v58;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v32 = v50;
      v31 = v51;
    }

    goto LABEL_16;
  }

  if (v27 > 1)
  {
    if (v27 == 2)
    {
      v61 = 2;
      lazy protocol witness table accessor for type SymbolRenderingMode.Storage.HierarchicalCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalCodingKeys();
      v30 = v40;
      v29 = v58;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v32 = v41;
      v31 = v42;
    }

    else
    {
      v62 = 3;
      lazy protocol witness table accessor for type SymbolRenderingMode.Storage.PaletteCodingKeys and conformance SymbolRenderingMode.Storage.PaletteCodingKeys();
      v30 = v43;
      v29 = v58;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v32 = v44;
      v31 = v45;
    }

LABEL_16:
    (*(v32 + 8))(v30, v31);
    return (*v28)(v26, v29);
  }

  if (v27)
  {
    v60 = 1;
    lazy protocol witness table accessor for type SymbolRenderingMode.Storage.MulticolorCodingKeys and conformance SymbolRenderingMode.Storage.MulticolorCodingKeys();
    v33 = v37;
    v29 = v58;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v38 + 8))(v33, v39);
  }

  else
  {
    v59 = 0;
    lazy protocol witness table accessor for type SymbolRenderingMode.Storage.MonochromeCodingKeys and conformance SymbolRenderingMode.Storage.MonochromeCodingKeys();
    v29 = v58;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v36 + 8))(v22, v20);
  }

  return (*v28)(v26, v29);
}

unint64_t lazy protocol witness table accessor for type SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys and conformance SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys()
{
  result = lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys and conformance SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys;
  if (!lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys and conformance SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys and conformance SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys and conformance SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys;
  if (!lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys and conformance SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys and conformance SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys and conformance SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys;
  if (!lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys and conformance SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys and conformance SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys()
{
  result = lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys;
  if (!lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys;
  if (!lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys;
  if (!lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys()
{
  result = lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys;
  if (!lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys;
  if (!lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys;
  if (!lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SymbolRenderingMode.Storage.PreferredCodingKeys and conformance SymbolRenderingMode.Storage.PreferredCodingKeys()
{
  result = lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.PreferredCodingKeys and conformance SymbolRenderingMode.Storage.PreferredCodingKeys;
  if (!lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.PreferredCodingKeys and conformance SymbolRenderingMode.Storage.PreferredCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.PreferredCodingKeys and conformance SymbolRenderingMode.Storage.PreferredCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.PreferredCodingKeys and conformance SymbolRenderingMode.Storage.PreferredCodingKeys;
  if (!lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.PreferredCodingKeys and conformance SymbolRenderingMode.Storage.PreferredCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.PreferredCodingKeys and conformance SymbolRenderingMode.Storage.PreferredCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.PreferredCodingKeys and conformance SymbolRenderingMode.Storage.PreferredCodingKeys;
  if (!lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.PreferredCodingKeys and conformance SymbolRenderingMode.Storage.PreferredCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.PreferredCodingKeys and conformance SymbolRenderingMode.Storage.PreferredCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SymbolRenderingMode.Storage.PaletteCodingKeys and conformance SymbolRenderingMode.Storage.PaletteCodingKeys()
{
  result = lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.PaletteCodingKeys and conformance SymbolRenderingMode.Storage.PaletteCodingKeys;
  if (!lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.PaletteCodingKeys and conformance SymbolRenderingMode.Storage.PaletteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.PaletteCodingKeys and conformance SymbolRenderingMode.Storage.PaletteCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.PaletteCodingKeys and conformance SymbolRenderingMode.Storage.PaletteCodingKeys;
  if (!lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.PaletteCodingKeys and conformance SymbolRenderingMode.Storage.PaletteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.PaletteCodingKeys and conformance SymbolRenderingMode.Storage.PaletteCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.PaletteCodingKeys and conformance SymbolRenderingMode.Storage.PaletteCodingKeys;
  if (!lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.PaletteCodingKeys and conformance SymbolRenderingMode.Storage.PaletteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.PaletteCodingKeys and conformance SymbolRenderingMode.Storage.PaletteCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SymbolRenderingMode.Storage.HierarchicalCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalCodingKeys()
{
  result = lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.HierarchicalCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalCodingKeys;
  if (!lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.HierarchicalCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.HierarchicalCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.HierarchicalCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalCodingKeys;
  if (!lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.HierarchicalCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.HierarchicalCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.HierarchicalCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalCodingKeys;
  if (!lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.HierarchicalCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.HierarchicalCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SymbolRenderingMode.Storage.MulticolorCodingKeys and conformance SymbolRenderingMode.Storage.MulticolorCodingKeys()
{
  result = lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.MulticolorCodingKeys and conformance SymbolRenderingMode.Storage.MulticolorCodingKeys;
  if (!lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.MulticolorCodingKeys and conformance SymbolRenderingMode.Storage.MulticolorCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.MulticolorCodingKeys and conformance SymbolRenderingMode.Storage.MulticolorCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.MulticolorCodingKeys and conformance SymbolRenderingMode.Storage.MulticolorCodingKeys;
  if (!lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.MulticolorCodingKeys and conformance SymbolRenderingMode.Storage.MulticolorCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.MulticolorCodingKeys and conformance SymbolRenderingMode.Storage.MulticolorCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.MulticolorCodingKeys and conformance SymbolRenderingMode.Storage.MulticolorCodingKeys;
  if (!lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.MulticolorCodingKeys and conformance SymbolRenderingMode.Storage.MulticolorCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.MulticolorCodingKeys and conformance SymbolRenderingMode.Storage.MulticolorCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SymbolRenderingMode.Storage.MonochromeCodingKeys and conformance SymbolRenderingMode.Storage.MonochromeCodingKeys()
{
  result = lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.MonochromeCodingKeys and conformance SymbolRenderingMode.Storage.MonochromeCodingKeys;
  if (!lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.MonochromeCodingKeys and conformance SymbolRenderingMode.Storage.MonochromeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.MonochromeCodingKeys and conformance SymbolRenderingMode.Storage.MonochromeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.MonochromeCodingKeys and conformance SymbolRenderingMode.Storage.MonochromeCodingKeys;
  if (!lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.MonochromeCodingKeys and conformance SymbolRenderingMode.Storage.MonochromeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.MonochromeCodingKeys and conformance SymbolRenderingMode.Storage.MonochromeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.MonochromeCodingKeys and conformance SymbolRenderingMode.Storage.MonochromeCodingKeys;
  if (!lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.MonochromeCodingKeys and conformance SymbolRenderingMode.Storage.MonochromeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.MonochromeCodingKeys and conformance SymbolRenderingMode.Storage.MonochromeCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SymbolRenderingMode.Storage.CodingKeys and conformance SymbolRenderingMode.Storage.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.CodingKeys and conformance SymbolRenderingMode.Storage.CodingKeys;
  if (!lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.CodingKeys and conformance SymbolRenderingMode.Storage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.CodingKeys and conformance SymbolRenderingMode.Storage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.CodingKeys and conformance SymbolRenderingMode.Storage.CodingKeys;
  if (!lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.CodingKeys and conformance SymbolRenderingMode.Storage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.CodingKeys and conformance SymbolRenderingMode.Storage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.CodingKeys and conformance SymbolRenderingMode.Storage.CodingKeys;
  if (!lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.CodingKeys and conformance SymbolRenderingMode.Storage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.CodingKeys and conformance SymbolRenderingMode.Storage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.CodingKeys and conformance SymbolRenderingMode.Storage.CodingKeys;
  if (!lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.CodingKeys and conformance SymbolRenderingMode.Storage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.CodingKeys and conformance SymbolRenderingMode.Storage.CodingKeys);
  }

  return result;
}

uint64_t SymbolRenderingMode.Storage.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v71 = a2;
  v3 = MEMORY[0x1E69E6F48];
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>, lazy protocol witness table accessor for type SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys and conformance SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys, &unk_1F0076568, MEMORY[0x1E69E6F48]);
  v63 = v4;
  v61 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v70 = &v47 - v5;
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys>, lazy protocol witness table accessor for type SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys, &unk_1F0076548, v3);
  v62 = v6;
  v60 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v67 = &v47 - v7;
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys>, lazy protocol witness table accessor for type SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys, &unk_1F0076528, v3);
  v58 = *(v8 - 8);
  v59 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v69 = &v47 - v9;
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<SymbolRenderingMode.Storage.PreferredCodingKeys>, lazy protocol witness table accessor for type SymbolRenderingMode.Storage.PreferredCodingKeys and conformance SymbolRenderingMode.Storage.PreferredCodingKeys, &unk_1F0076508, v3);
  v57 = v10;
  v56 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v66 = &v47 - v11;
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<SymbolRenderingMode.Storage.PaletteCodingKeys>, lazy protocol witness table accessor for type SymbolRenderingMode.Storage.PaletteCodingKeys and conformance SymbolRenderingMode.Storage.PaletteCodingKeys, &unk_1F00764E8, v3);
  v54 = v12;
  v55 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v68 = &v47 - v13;
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<SymbolRenderingMode.Storage.HierarchicalCodingKeys>, lazy protocol witness table accessor for type SymbolRenderingMode.Storage.HierarchicalCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalCodingKeys, &unk_1F00764C8, v3);
  v53 = v14;
  v52 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v65 = &v47 - v15;
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<SymbolRenderingMode.Storage.MulticolorCodingKeys>, lazy protocol witness table accessor for type SymbolRenderingMode.Storage.MulticolorCodingKeys and conformance SymbolRenderingMode.Storage.MulticolorCodingKeys, &unk_1F00764A8, v3);
  v51 = v16;
  v50 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v64 = &v47 - v17;
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<SymbolRenderingMode.Storage.MonochromeCodingKeys>, lazy protocol witness table accessor for type SymbolRenderingMode.Storage.MonochromeCodingKeys and conformance SymbolRenderingMode.Storage.MonochromeCodingKeys, &unk_1F0076488, v3);
  v19 = v18;
  v49 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v47 - v20;
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<SymbolRenderingMode.Storage.CodingKeys>, lazy protocol witness table accessor for type SymbolRenderingMode.Storage.CodingKeys and conformance SymbolRenderingMode.Storage.CodingKeys, &unk_1F0076468, v3);
  v23 = v22;
  v24 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v47 - v25;
  v27 = a1[3];
  v73 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  lazy protocol witness table accessor for type SymbolRenderingMode.Storage.CodingKeys and conformance SymbolRenderingMode.Storage.CodingKeys();
  v28 = v72;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v28)
  {
    return __swift_destroy_boxed_opaque_existential_1(v73);
  }

  v72 = v21;
  v48 = v19;
  v30 = v68;
  v29 = v69;
  v31 = v24;
  v32 = v70;
  v33 = v71;
  v34 = KeyedDecodingContainer.allKeys.getter();
  v35 = (2 * *(v34 + 16)) | 1;
  v74 = v34;
  v75 = v34 + 32;
  v76 = 0;
  v77 = v35;
  v36 = specialized Collection<>.popFirst()();
  if (v36 == 8 || v76 != v77 >> 1)
  {
    v38 = type metadata accessor for DecodingError();
    swift_allocError();
    v40 = v39;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v40 = &type metadata for SymbolRenderingMode.Storage;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v38 - 8) + 104))(v40, *MEMORY[0x1E69E6AF8], v38);
    swift_willThrow();
    (*(v31 + 8))(v26, v23);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v73);
  }

  v78 = v36;
  if (v36 > 3u)
  {
    if (v36 > 5u)
    {
      if (v36 == 6)
      {
        v79 = 6;
        lazy protocol witness table accessor for type SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys();
        v45 = v67;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v60 + 8))(v45, v62);
      }

      else
      {
        v79 = 7;
        lazy protocol witness table accessor for type SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys and conformance SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v61 + 8))(v32, v63);
      }
    }

    else if (v36 == 4)
    {
      v79 = 4;
      lazy protocol witness table accessor for type SymbolRenderingMode.Storage.PreferredCodingKeys and conformance SymbolRenderingMode.Storage.PreferredCodingKeys();
      v42 = v66;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v56 + 8))(v42, v57);
    }

    else
    {
      v79 = 5;
      lazy protocol witness table accessor for type SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v58 + 8))(v29, v59);
    }

    (*(v31 + 8))(v26, v23);
    goto LABEL_23;
  }

  if (v36 > 1u)
  {
    if (v36 != 2)
    {
      v79 = 3;
      lazy protocol witness table accessor for type SymbolRenderingMode.Storage.PaletteCodingKeys and conformance SymbolRenderingMode.Storage.PaletteCodingKeys();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v55 + 8))(v30, v54);
      (*(v31 + 8))(v26, v23);
      goto LABEL_23;
    }

    v79 = 2;
    lazy protocol witness table accessor for type SymbolRenderingMode.Storage.HierarchicalCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalCodingKeys();
    v43 = v65;
    v44 = v23;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v52 + 8))(v43, v53);
LABEL_21:
    (*(v31 + 8))(v26, v44);
    goto LABEL_23;
  }

  if (v36)
  {
    v79 = 1;
    lazy protocol witness table accessor for type SymbolRenderingMode.Storage.MulticolorCodingKeys and conformance SymbolRenderingMode.Storage.MulticolorCodingKeys();
    v46 = v64;
    v44 = v23;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v50 + 8))(v46, v51);
    goto LABEL_21;
  }

  v79 = 0;
  lazy protocol witness table accessor for type SymbolRenderingMode.Storage.MonochromeCodingKeys and conformance SymbolRenderingMode.Storage.MonochromeCodingKeys();
  v37 = v72;
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v49 + 8))(v37, v48);
  (*(v31 + 8))(v26, v23);
LABEL_23:
  swift_unknownObjectRelease();
  *v33 = v78;
  return __swift_destroy_boxed_opaque_existential_1(v73);
}

uint64_t View.symbolRenderingMode(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  View.environment<A>(_:_:)(KeyPath, a1, a2, a3);
}

uint64_t EnvironmentValues.symbolRenderingMode.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {

    v4 = v6;
    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022SymbolRenderingOptionsI033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt1g5(v3, v6);
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA022SymbolRenderingOptionsS0031_FE3FF33C1D9A704A22DF5519034B23L0LLVG_Tt0g5(v3);
    if (result)
    {
      v4 = (result + 72);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        result = swift_once();
      }

      v4 = &static SymbolRenderingOptionsKey.defaultValue;
    }
  }

  *a1 = *v4;
  return result;
}

uint64_t EnvironmentValues.symbolRenderingOptions.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022SymbolRenderingOptionsI033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt1g5(v3, a1);
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA022SymbolRenderingOptionsS0031_FE3FF33C1D9A704A22DF5519034B23L0LLVG_Tt0g5(*v1);
    if (result)
    {
      v5 = *(result + 74);
      *a1 = *(result + 72);
      a1[2] = v5;
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        result = swift_once();
      }

      v6 = byte_1ED52FC63;
      *a1 = static SymbolRenderingOptionsKey.defaultValue;
      a1[2] = v6;
    }
  }

  return result;
}

uint64_t EnvironmentValues.symbolRenderingOptions.setter(unsigned __int16 *a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *a1 | (*(a1 + 2) << 16);
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA022SymbolRenderingOptionsF033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt2B5(v2, v4);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA022SymbolRenderingOptionsK033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Ttg5(v3, *v2);
  }
}

void (*EnvironmentValues.symbolRenderingMode.modify(void *a1))(uint64_t *a1, char a2)
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
  v3[2] = v1;
  v5 = *v1;
  v3[3] = *v1;
  v6 = *(v1 + 8);
  v3[4] = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022SymbolRenderingOptionsI033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt1g5(v5, v11);

    *(v4 + 40) = v11[0];
    return EnvironmentValues.symbolRenderingMode.modify;
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA022SymbolRenderingOptionsS0031_FE3FF33C1D9A704A22DF5519034B23L0LLVG_Tt0g5(v5);
    if (v8)
    {
      v9 = (v8 + 9);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v9 = &static SymbolRenderingOptionsKey.defaultValue;
    }

    *(v4 + 40) = *v9;
    return EnvironmentValues.symbolRenderingMode.modify;
  }
}

void EnvironmentValues.symbolRenderingMode.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 40);
  v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA022SymbolRenderingOptionsS0031_FE3FF33C1D9A704A22DF5519034B23L0LLVG_Tt0g5(*(*a1 + 24));
  if (a2)
  {
    if (v5)
    {
      v6 = v5 + 73;
      v7 = v5 + 74;
      goto LABEL_9;
    }

    v6 = &static SymbolRenderingOptionsKey.defaultValue + 1;
    v7 = &byte_1ED52FC63;
    if (one-time initialization token for defaultValue == -1)
    {
      goto LABEL_9;
    }

LABEL_14:
    swift_once();
    goto LABEL_9;
  }

  if (v5)
  {
    v6 = v5 + 73;
    v7 = v5 + 74;
    goto LABEL_9;
  }

  v6 = &static SymbolRenderingOptionsKey.defaultValue + 1;
  v7 = &byte_1ED52FC63;
  if (one-time initialization token for defaultValue != -1)
  {
    goto LABEL_14;
  }

LABEL_9:
  v8 = *v6;
  v9 = *(v3 + 32);
  v10 = *(v3 + 16);
  v11 = v4 | (v8 << 8) | (*v7 << 16);
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA022SymbolRenderingOptionsF033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt2B5(v10, v11);

  if (v9)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA022SymbolRenderingOptionsK033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Ttg5(*(v3 + 24), **(v3 + 16));
  }

  free(v3);
}

{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 24);
  if (a2)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022SymbolRenderingOptionsI033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt1g5(v4, v8);

    v5 = *(v2 + 32);
    v6 = *(v2 + 16);
    v7 = v3 | (v8[1] << 8) | (v8[2] << 16);
    swift_retain_n();
  }

  else
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022SymbolRenderingOptionsI033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt1g5(v4, v9);

    v5 = *(v2 + 32);
    v6 = *(v2 + 16);
    v7 = v3 | (v9[1] << 8) | (v9[2] << 16);
    swift_retain_n();
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA022SymbolRenderingOptionsF033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt2B5(v6, v7);

  if (v5)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA022SymbolRenderingOptionsK033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Ttg5(*(v2 + 24), **(v2 + 16));
  }

  free(v2);
}

uint64_t SymbolVariableValueMode.Storage.encode(to:)(void *a1, int a2)
{
  v21 = a2;
  v3 = MEMORY[0x1E69E6F58];
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<SymbolVariableValueMode.Storage.DrawCodingKeys>, lazy protocol witness table accessor for type SymbolVariableValueMode.Storage.DrawCodingKeys and conformance SymbolVariableValueMode.Storage.DrawCodingKeys, &unk_1F0076770, MEMORY[0x1E69E6F58]);
  v19 = *(v4 - 8);
  v20 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - v5;
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<SymbolVariableValueMode.Storage.ColorCodingKeys>, lazy protocol witness table accessor for type SymbolVariableValueMode.Storage.ColorCodingKeys and conformance SymbolVariableValueMode.Storage.ColorCodingKeys, &unk_1F0076750, v3);
  v17 = *(v7 - 8);
  v18 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<SymbolVariableValueMode.Storage.CodingKeys>, lazy protocol witness table accessor for type SymbolVariableValueMode.Storage.CodingKeys and conformance SymbolVariableValueMode.Storage.CodingKeys, &unk_1F0076730, v3);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v16 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SymbolVariableValueMode.Storage.CodingKeys and conformance SymbolVariableValueMode.Storage.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v21)
  {
    v23 = 1;
    lazy protocol witness table accessor for type SymbolVariableValueMode.Storage.DrawCodingKeys and conformance SymbolVariableValueMode.Storage.DrawCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v19 + 8))(v6, v20);
  }

  else
  {
    v22 = 0;
    lazy protocol witness table accessor for type SymbolVariableValueMode.Storage.ColorCodingKeys and conformance SymbolVariableValueMode.Storage.ColorCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v17 + 8))(v9, v18);
  }

  return (*(v12 + 8))(v14, v11);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance SymbolVariableValueMode.Storage.CodingKeys()
{
  if (*v0)
  {
    return 2002874980;
  }

  else
  {
    return 0x726F6C6F63;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SymbolVariableValueMode.Storage.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726F6C6F63 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 2002874980 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SymbolVariableValueMode.Storage.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SymbolVariableValueMode.Storage.CodingKeys and conformance SymbolVariableValueMode.Storage.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SymbolVariableValueMode.Storage.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SymbolVariableValueMode.Storage.CodingKeys and conformance SymbolVariableValueMode.Storage.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SymbolVariableValueMode.Storage.ColorCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SymbolVariableValueMode.Storage.ColorCodingKeys and conformance SymbolVariableValueMode.Storage.ColorCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SymbolVariableValueMode.Storage.ColorCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SymbolVariableValueMode.Storage.ColorCodingKeys and conformance SymbolVariableValueMode.Storage.ColorCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SymbolVariableValueMode.Storage.DrawCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SymbolVariableValueMode.Storage.DrawCodingKeys and conformance SymbolVariableValueMode.Storage.DrawCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SymbolVariableValueMode.Storage.DrawCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SymbolVariableValueMode.Storage.DrawCodingKeys and conformance SymbolVariableValueMode.Storage.DrawCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance SymbolVariableValueMode.Storage@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized SymbolVariableValueMode.Storage.init(from:)(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t EnvironmentValues.symbolVariableValueMode.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022SymbolRenderingOptionsI033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt1g5(v3, &v6);

    v5 = &v7;
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA022SymbolRenderingOptionsS0031_FE3FF33C1D9A704A22DF5519034B23L0LLVG_Tt0g5(v3);
    if (result)
    {
      v5 = (result + 73);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        result = swift_once();
      }

      v5 = (&static SymbolRenderingOptionsKey.defaultValue + 1);
    }
  }

  *a1 = *v5;
  return result;
}

uint64_t EnvironmentValues.symbolVariableValueMode.setter(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *v1;
  v5 = v1[1];
  if (v5)
  {

    v6 = v11;
    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022SymbolRenderingOptionsI033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt1g5(v4, v11);

    v7 = v11[2];
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA022SymbolRenderingOptionsS0031_FE3FF33C1D9A704A22DF5519034B23L0LLVG_Tt0g5(v4);
    if (v8)
    {
      v6 = (v8 + 9);
      v7 = *(v8 + 74);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v6 = &static SymbolRenderingOptionsKey.defaultValue;
      v7 = byte_1ED52FC63;
    }
  }

  v9 = *v6 | (v3 << 8) | (v7 << 16);
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA022SymbolRenderingOptionsF033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt2B5(v2, v9);

  if (v5)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA022SymbolRenderingOptionsK033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Ttg5(v4, *v2);
  }
}

uint64_t Image.symbolVariableValueMode(_:)(char *a1, uint64_t a2)
{
  v3 = *a1;
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for ImageProviderBox<Image.SymbolRenderingOptionsProvider>, lazy protocol witness table accessor for type Image.SymbolRenderingOptionsProvider and conformance Image.SymbolRenderingOptionsProvider, &unk_1F00763C8, type metadata accessor for ImageProviderBox);
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = 8;
  *(v4 + 25) = v3;
  *(v4 + 26) = 514;

  return v4;
}

uint64_t key path getter for EnvironmentValues.symbolVariableValueMode : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022SymbolRenderingOptionsI033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt1g5(v3, &v6);

    v5 = &v7;
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA022SymbolRenderingOptionsS0031_FE3FF33C1D9A704A22DF5519034B23L0LLVG_Tt0g5(*a1);
    if (result)
    {
      v5 = (result + 73);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        result = swift_once();
      }

      v5 = (&static SymbolRenderingOptionsKey.defaultValue + 1);
    }
  }

  *a2 = *v5;
  return result;
}

void (*EnvironmentValues.symbolVariableValueMode.modify(void *a1))(uint64_t *a1, char a2)
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
  v3[2] = v1;
  v5 = *v1;
  v3[3] = *v1;
  v6 = *(v1 + 8);
  v3[4] = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022SymbolRenderingOptionsI033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt1g5(v5, v11);

    *(v4 + 40) = v11[1];
    return EnvironmentValues.symbolVariableValueMode.modify;
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA022SymbolRenderingOptionsS0031_FE3FF33C1D9A704A22DF5519034B23L0LLVG_Tt0g5(v5);
    if (v8)
    {
      v9 = v8 + 73;
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v9 = &static SymbolRenderingOptionsKey.defaultValue + 1;
    }

    *(v4 + 40) = *v9;
    return EnvironmentValues.symbolVariableValueMode.modify;
  }
}

void EnvironmentValues.symbolVariableValueMode.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 40);
  v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA022SymbolRenderingOptionsS0031_FE3FF33C1D9A704A22DF5519034B23L0LLVG_Tt0g5(*(*a1 + 24));
  if (a2)
  {
    if (v5)
    {
      v6 = (v5 + 9);
      v7 = v5 + 74;
      goto LABEL_9;
    }

    v6 = &static SymbolRenderingOptionsKey.defaultValue;
    v7 = &byte_1ED52FC63;
    if (one-time initialization token for defaultValue == -1)
    {
      goto LABEL_9;
    }

LABEL_14:
    swift_once();
    v6 = &static SymbolRenderingOptionsKey.defaultValue;
    goto LABEL_9;
  }

  if (v5)
  {
    v6 = (v5 + 9);
    v7 = v5 + 74;
    goto LABEL_9;
  }

  v6 = &static SymbolRenderingOptionsKey.defaultValue;
  v7 = &byte_1ED52FC63;
  if (one-time initialization token for defaultValue != -1)
  {
    goto LABEL_14;
  }

LABEL_9:
  v8 = *v7;
  v9 = *(v3 + 32);
  v10 = *(v3 + 16);
  v11 = *v6;
  v12 = (v4 << 8) | (v8 << 16);
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA022SymbolRenderingOptionsF033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt2B5(v10, v12 | v11);

  if (v9)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA022SymbolRenderingOptionsK033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Ttg5(*(v3 + 24), **(v3 + 16));
  }

  free(v3);
}

{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 24);
  if (a2)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022SymbolRenderingOptionsI033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt1g5(v4, v9);

    v5 = *(v2 + 32);
    v6 = *(v2 + 16);
    v7 = v9[0];
    v8 = (v3 << 8) | (v9[2] << 16);
    swift_retain_n();
  }

  else
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022SymbolRenderingOptionsI033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt1g5(v4, v10);

    v5 = *(v2 + 32);
    v6 = *(v2 + 16);
    v7 = v10[0];
    v8 = (v3 << 8) | (v10[2] << 16);
    swift_retain_n();
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA022SymbolRenderingOptionsF033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt2B5(v6, v8 | v7);

  if (v5)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA022SymbolRenderingOptionsK033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Ttg5(*(v2 + 24), **(v2 + 16));
  }

  free(v2);
}

uint64_t SymbolColorRenderingMode.Storage.encode(to:)(void *a1, int a2)
{
  v21 = a2;
  v3 = MEMORY[0x1E69E6F58];
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<SymbolColorRenderingMode.Storage.GradientCodingKeys>, lazy protocol witness table accessor for type SymbolColorRenderingMode.Storage.GradientCodingKeys and conformance SymbolColorRenderingMode.Storage.GradientCodingKeys, &unk_1F00766A0, MEMORY[0x1E69E6F58]);
  v19 = *(v4 - 8);
  v20 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - v5;
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<SymbolColorRenderingMode.Storage.FlatCodingKeys>, lazy protocol witness table accessor for type SymbolColorRenderingMode.Storage.FlatCodingKeys and conformance SymbolColorRenderingMode.Storage.FlatCodingKeys, &unk_1F0076680, v3);
  v17 = *(v7 - 8);
  v18 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<SymbolColorRenderingMode.Storage.CodingKeys>, lazy protocol witness table accessor for type SymbolColorRenderingMode.Storage.CodingKeys and conformance SymbolColorRenderingMode.Storage.CodingKeys, &unk_1F0076660, v3);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v16 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SymbolColorRenderingMode.Storage.CodingKeys and conformance SymbolColorRenderingMode.Storage.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v21)
  {
    v23 = 1;
    lazy protocol witness table accessor for type SymbolColorRenderingMode.Storage.GradientCodingKeys and conformance SymbolColorRenderingMode.Storage.GradientCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v19 + 8))(v6, v20);
  }

  else
  {
    v22 = 0;
    lazy protocol witness table accessor for type SymbolColorRenderingMode.Storage.FlatCodingKeys and conformance SymbolColorRenderingMode.Storage.FlatCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v17 + 8))(v9, v18);
  }

  return (*(v12 + 8))(v14, v11);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance SymbolColorRenderingMode.Storage.CodingKeys()
{
  if (*v0)
  {
    return 0x746E656964617267;
  }

  else
  {
    return 1952541798;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SymbolColorRenderingMode.Storage.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1952541798 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E656964617267 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SymbolColorRenderingMode.Storage.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SymbolColorRenderingMode.Storage.CodingKeys and conformance SymbolColorRenderingMode.Storage.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SymbolColorRenderingMode.Storage.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SymbolColorRenderingMode.Storage.CodingKeys and conformance SymbolColorRenderingMode.Storage.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SymbolColorRenderingMode.Storage.FlatCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SymbolColorRenderingMode.Storage.FlatCodingKeys and conformance SymbolColorRenderingMode.Storage.FlatCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SymbolColorRenderingMode.Storage.FlatCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SymbolColorRenderingMode.Storage.FlatCodingKeys and conformance SymbolColorRenderingMode.Storage.FlatCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SymbolColorRenderingMode.Storage.GradientCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SymbolColorRenderingMode.Storage.GradientCodingKeys and conformance SymbolColorRenderingMode.Storage.GradientCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SymbolColorRenderingMode.Storage.GradientCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SymbolColorRenderingMode.Storage.GradientCodingKeys and conformance SymbolColorRenderingMode.Storage.GradientCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance SymbolColorRenderingMode.Storage@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized SymbolColorRenderingMode.Storage.init(from:)(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t EnvironmentValues.symbolColorRenderingMode.getter@<X0>(char *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022SymbolRenderingOptionsI033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt1g5(v3, v6);

    v5 = v6[2];
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA022SymbolRenderingOptionsS0031_FE3FF33C1D9A704A22DF5519034B23L0LLVG_Tt0g5(v3);
    if (result)
    {
      v5 = *(result + 74);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        result = swift_once();
      }

      v5 = byte_1ED52FC63;
    }
  }

  *a1 = v5;
  return result;
}

uint64_t EnvironmentValues.symbolColorRenderingMode.setter(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *v1;
  v5 = v1[1];
  if (v5)
  {

    v6 = &v11;
    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022SymbolRenderingOptionsI033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt1g5(v4, &v11);

    v7 = &v12;
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA022SymbolRenderingOptionsS0031_FE3FF33C1D9A704A22DF5519034B23L0LLVG_Tt0g5(v4);
    if (v8)
    {
      v6 = (v8 + 9);
      v7 = v8 + 73;
    }

    else
    {
      v6 = &static SymbolRenderingOptionsKey.defaultValue;
      v7 = &static SymbolRenderingOptionsKey.defaultValue + 1;
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
        v7 = &static SymbolRenderingOptionsKey.defaultValue + 1;
      }
    }
  }

  v9 = *v6 | (v3 << 16) | (*v7 << 8);
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA022SymbolRenderingOptionsF033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt2B5(v2, v9);

  if (v5)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA022SymbolRenderingOptionsK033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Ttg5(v4, *v2);
  }
}

uint64_t Image.symbolColorRenderingMode(_:)(char *a1, uint64_t a2)
{
  v3 = *a1;
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for ImageProviderBox<Image.SymbolRenderingOptionsProvider>, lazy protocol witness table accessor for type Image.SymbolRenderingOptionsProvider and conformance Image.SymbolRenderingOptionsProvider, &unk_1F00763C8, type metadata accessor for ImageProviderBox);
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = 520;
  *(v4 + 26) = v3;
  *(v4 + 27) = 4;

  return v4;
}

uint64_t Image.symbolRenderingPreferGradients(_:)(char a1, uint64_t a2)
{
  if (a1 == 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = a1 & 1;
  }

  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for ImageProviderBox<Image.SymbolRenderingOptionsProvider>, lazy protocol witness table accessor for type Image.SymbolRenderingOptionsProvider and conformance Image.SymbolRenderingOptionsProvider, &unk_1F00763C8, type metadata accessor for ImageProviderBox);
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = 520;
  *(v4 + 26) = v3;
  *(v4 + 27) = 4;

  return v4;
}

uint64_t key path getter for EnvironmentValues.symbolColorRenderingMode : EnvironmentValues@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022SymbolRenderingOptionsI033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt1g5(v3, v6);

    v5 = v6[2];
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA022SymbolRenderingOptionsS0031_FE3FF33C1D9A704A22DF5519034B23L0LLVG_Tt0g5(*a1);
    if (result)
    {
      v5 = *(result + 74);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        result = swift_once();
      }

      v5 = byte_1ED52FC63;
    }
  }

  *a2 = v5;
  return result;
}

void (*EnvironmentValues.symbolColorRenderingMode.modify(void *a1))(uint64_t *a1, char a2)
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
  v3[2] = v1;
  v5 = *v1;
  v3[3] = *v1;
  v6 = *(v1 + 8);
  v3[4] = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022SymbolRenderingOptionsI033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt1g5(v5, v11);

    *(v4 + 40) = v11[2];
    return EnvironmentValues.symbolColorRenderingMode.modify;
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA022SymbolRenderingOptionsS0031_FE3FF33C1D9A704A22DF5519034B23L0LLVG_Tt0g5(v5);
    if (v8)
    {
      v9 = v8 + 74;
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v9 = &byte_1ED52FC63;
    }

    *(v4 + 40) = *v9;
    return EnvironmentValues.symbolColorRenderingMode.modify;
  }
}

void EnvironmentValues.symbolColorRenderingMode.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 40);
  v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA022SymbolRenderingOptionsS0031_FE3FF33C1D9A704A22DF5519034B23L0LLVG_Tt0g5(*(*a1 + 24));
  if (a2)
  {
    if (v5)
    {
      v6 = (v5 + 9);
      v7 = v5 + 73;
      goto LABEL_9;
    }

    v6 = &static SymbolRenderingOptionsKey.defaultValue;
    v7 = &static SymbolRenderingOptionsKey.defaultValue + 1;
    if (one-time initialization token for defaultValue == -1)
    {
      goto LABEL_9;
    }

LABEL_14:
    swift_once();
    v7 = &static SymbolRenderingOptionsKey.defaultValue + 1;
    v6 = &static SymbolRenderingOptionsKey.defaultValue;
    goto LABEL_9;
  }

  if (v5)
  {
    v6 = (v5 + 9);
    v7 = v5 + 73;
    goto LABEL_9;
  }

  v6 = &static SymbolRenderingOptionsKey.defaultValue;
  v7 = &static SymbolRenderingOptionsKey.defaultValue + 1;
  if (one-time initialization token for defaultValue != -1)
  {
    goto LABEL_14;
  }

LABEL_9:
  v8 = *(v3 + 32);
  v9 = *(v3 + 16);
  v10 = *v6 | (v4 << 16) | (*v7 << 8);
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA022SymbolRenderingOptionsF033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt2B5(v9, v10);

  if (v8)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA022SymbolRenderingOptionsK033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Ttg5(*(v3 + 24), **(v3 + 16));
  }

  free(v3);
}

{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 24);
  if (a2)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022SymbolRenderingOptionsI033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt1g5(v4, v8);

    v5 = *(v2 + 32);
    v6 = *(v2 + 16);
    v7 = v8[0] | (v3 << 16) | (v8[1] << 8);
    swift_retain_n();
  }

  else
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022SymbolRenderingOptionsI033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt1g5(v4, v9);

    v5 = *(v2 + 32);
    v6 = *(v2 + 16);
    v7 = v9[0] | (v3 << 16) | (v9[1] << 8);
    swift_retain_n();
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA022SymbolRenderingOptionsF033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt2B5(v6, v7);

  if (v5)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA022SymbolRenderingOptionsK033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Ttg5(*(v2 + 24), **(v2 + 16));
  }

  free(v2);
}

uint64_t EnvironmentValues.symbolRenderingPreferGradients.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022SymbolRenderingOptionsI033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt1g5(v1, v5);

    v2 = v5[2];
  }

  else
  {
    v3 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA022SymbolRenderingOptionsS0031_FE3FF33C1D9A704A22DF5519034B23L0LLVG_Tt0g5(v1);
    if (v3)
    {
      v2 = *(v3 + 74);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v2 = byte_1ED52FC63;
    }
  }

  if (v2 == 2)
  {
    return 2;
  }

  else
  {
    return v2 & 1;
  }
}

uint64_t EnvironmentValues.symbolRenderingPreferGradients.setter(char a1)
{
  v2 = v1;
  if (a1 == 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = a1 & 1;
  }

  v4 = *v1;
  v5 = v1[1];
  if (v5)
  {

    v6 = &v12;
    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022SymbolRenderingOptionsI033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt1g5(v4, &v12);

    v7 = &v13;
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA022SymbolRenderingOptionsS0031_FE3FF33C1D9A704A22DF5519034B23L0LLVG_Tt0g5(v4);
    if (v8)
    {
      v6 = (v8 + 9);
      v7 = v8 + 73;
    }

    else
    {
      v6 = &static SymbolRenderingOptionsKey.defaultValue;
      v7 = &static SymbolRenderingOptionsKey.defaultValue + 1;
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
        v7 = &static SymbolRenderingOptionsKey.defaultValue + 1;
      }
    }
  }

  v9 = *v6;
  v10 = (v3 << 16) | (*v7 << 8);
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA022SymbolRenderingOptionsF033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt2B5(v2, v10 | v9);

  if (v5)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA022SymbolRenderingOptionsK033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Ttg5(v4, *v2);
  }
}

uint64_t (*EnvironmentValues.symbolRenderingPreferGradients.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = EnvironmentValues.symbolRenderingPreferGradients.getter();
  return EnvironmentValues.symbolRenderingPreferGradients.modify;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance SymbolRenderingOptions.CodingKeys()
{
  v1 = *v0;
  v2 = 0xD000000000000011;
  if (v1 != 1)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v2;
  }

  else
  {
    return 0x6E697265646E6572;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SymbolRenderingOptions.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized SymbolRenderingOptions.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SymbolRenderingOptions.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SymbolRenderingOptions.CodingKeys and conformance SymbolRenderingOptions.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SymbolRenderingOptions.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SymbolRenderingOptions.CodingKeys and conformance SymbolRenderingOptions.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SymbolRenderingOptions.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v18 = a2;
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<SymbolRenderingOptions.CodingKeys>, lazy protocol witness table accessor for type SymbolRenderingOptions.CodingKeys and conformance SymbolRenderingOptions.CodingKeys, &unk_1F0076350, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SymbolRenderingOptions.CodingKeys and conformance SymbolRenderingOptions.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v9 = v6;
    v10 = v18;
    v23 = 0;
    lazy protocol witness table accessor for type SymbolRenderingMode.Storage and conformance SymbolRenderingMode.Storage();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v11 = v24;
    v21 = 1;
    lazy protocol witness table accessor for type SymbolVariableValueMode.Storage and conformance SymbolVariableValueMode.Storage();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v12 = v9;
    v13 = v22;
    v19 = 2;
    lazy protocol witness table accessor for type SymbolColorRenderingMode.Storage and conformance SymbolColorRenderingMode.Storage();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    if (v13 == 2)
    {
      v15 = 2;
    }

    else
    {
      v15 = v13 & 1;
    }

    (*(v12 + 8))(v8, v5);
    if (v20 == 2)
    {
      v16 = 2;
    }

    else
    {
      v16 = v20 & 1;
    }

    *v10 = v11;
    v10[1] = v15;
    v10[2] = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t SymbolRenderingOptions.encode(to:)(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<SymbolRenderingOptions.CodingKeys>, lazy protocol witness table accessor for type SymbolRenderingOptions.CodingKeys and conformance SymbolRenderingOptions.CodingKeys, &unk_1F0076350, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v15 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - v5;
  v7 = *v1;
  v8 = v1[1];
  v13 = v1[2];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SymbolRenderingOptions.CodingKeys and conformance SymbolRenderingOptions.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v7 == 8)
  {
    v9 = v14;
  }

  else
  {
    v17 = v7;
    v16 = 0;
    lazy protocol witness table accessor for type SymbolRenderingMode.Storage and conformance SymbolRenderingMode.Storage();
    v10 = v14;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v9 = v10;
    if (v10)
    {
      return (*(v15 + 8))(v6, v4);
    }
  }

  if (v8 == 2 || (v19 = v8 & 1, v18 = 1, lazy protocol witness table accessor for type SymbolVariableValueMode.Storage and conformance SymbolVariableValueMode.Storage(), KeyedEncodingContainer.encode<A>(_:forKey:)(), !v9))
  {
    if (v13 != 2)
    {
      v21 = v13 & 1;
      v20 = 2;
      lazy protocol witness table accessor for type SymbolColorRenderingMode.Storage and conformance SymbolColorRenderingMode.Storage();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
    }
  }

  return (*(v15 + 8))(v6, v4);
}

uint64_t key path getter for EnvironmentValues.symbolRenderingOptions : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    v4 = v8;
    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022SymbolRenderingOptionsI033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt1g5(v3, v8);

    v6 = v8[1];
    v7 = v8[2];
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA022SymbolRenderingOptionsS0031_FE3FF33C1D9A704A22DF5519034B23L0LLVG_Tt0g5(*a1);
    if (result)
    {
      v4 = (result + 72);
      v6 = *(result + 73);
      v7 = *(result + 74);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        result = swift_once();
      }

      v4 = &static SymbolRenderingOptionsKey.defaultValue;
      v6 = HIBYTE(static SymbolRenderingOptionsKey.defaultValue);
      v7 = byte_1ED52FC63;
    }
  }

  *a2 = *v4;
  a2[1] = v6;
  a2[2] = v7;
  return result;
}

uint64_t key path setter for EnvironmentValues.symbolRenderingOptions : EnvironmentValues(unsigned __int16 *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a1 | (*(a1 + 2) << 16);
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA022SymbolRenderingOptionsF033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt2B5(a2, v4);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA022SymbolRenderingOptionsK033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Ttg5(v3, *a2);
  }
}

void (*EnvironmentValues.symbolRenderingOptions.modify(void *a1))(uint64_t *a1)
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
  v3[2] = v1;
  v5 = *v1;
  v3[3] = *v1;
  v6 = *(v1 + 8);
  v3[4] = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022SymbolRenderingOptionsI033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt1g5(v5, v4 + 40);
  }

  else
  {
    v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA022SymbolRenderingOptionsS0031_FE3FF33C1D9A704A22DF5519034B23L0LLVG_Tt0g5(v5);
    if (v7)
    {
      v8 = *(v7 + 74);
      *(v4 + 20) = *(v7 + 36);
      *(v4 + 42) = v8;
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v9 = byte_1ED52FC63;
      *(v4 + 20) = static SymbolRenderingOptionsKey.defaultValue;
      *(v4 + 42) = v9;
    }
  }

  return EnvironmentValues.symbolRenderingOptions.modify;
}

void EnvironmentValues.symbolRenderingOptions.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40) | (*(*a1 + 42) << 16);
  swift_retain_n();
  v3 = *(v1 + 32);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA022SymbolRenderingOptionsF033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt2B5(*(v1 + 16), v2);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA022SymbolRenderingOptionsK033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Ttg5(*(v1 + 24), **(v1 + 16));
  }

  free(v1);
}

uint64_t ImageResolutionContext.symbolRenderingMode.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ImageResolutionContext();
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t ImageResolutionContext.symbolRenderingMode.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ImageResolutionContext();
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t (*ImageResolutionContext.symbolRenderingMode.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for ImageResolutionContext() + 32);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3);
  return ImageResolutionContext.symbolRenderingMode.modify;
}

uint64_t Image.SymbolRenderingOptionsProvider.resolveNamedImage(in:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ImageResolutionContext();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = v2[8];
  v9 = v2[9];
  v10 = v2[10];
  v11 = v2[11];
  outlined init with copy of ImageResolutionContext(a1, v6);
  if ((v11 & 1) == 0)
  {
    if ((v11 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v6[*(v4 + 32) + 1] = v9;
    if ((v11 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v6[*(v4 + 32)] = v8;
  if ((v11 & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((v11 & 4) != 0)
  {
LABEL_4:
    v6[*(v4 + 32) + 2] = v10;
  }

LABEL_5:
  (*(*v7 + 88))(v6);
  return outlined destroy of ImageResolutionContext(v6);
}

unint64_t lazy protocol witness table accessor for type SymbolRenderingOptions.CodingKeys and conformance SymbolRenderingOptions.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SymbolRenderingOptions.CodingKeys and conformance SymbolRenderingOptions.CodingKeys;
  if (!lazy protocol witness table cache variable for type SymbolRenderingOptions.CodingKeys and conformance SymbolRenderingOptions.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolRenderingOptions.CodingKeys and conformance SymbolRenderingOptions.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymbolRenderingOptions.CodingKeys and conformance SymbolRenderingOptions.CodingKeys;
  if (!lazy protocol witness table cache variable for type SymbolRenderingOptions.CodingKeys and conformance SymbolRenderingOptions.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolRenderingOptions.CodingKeys and conformance SymbolRenderingOptions.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymbolRenderingOptions.CodingKeys and conformance SymbolRenderingOptions.CodingKeys;
  if (!lazy protocol witness table cache variable for type SymbolRenderingOptions.CodingKeys and conformance SymbolRenderingOptions.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolRenderingOptions.CodingKeys and conformance SymbolRenderingOptions.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymbolRenderingOptions.CodingKeys and conformance SymbolRenderingOptions.CodingKeys;
  if (!lazy protocol witness table cache variable for type SymbolRenderingOptions.CodingKeys and conformance SymbolRenderingOptions.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolRenderingOptions.CodingKeys and conformance SymbolRenderingOptions.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SymbolRenderingMode.Storage and conformance SymbolRenderingMode.Storage()
{
  result = lazy protocol witness table cache variable for type SymbolRenderingMode.Storage and conformance SymbolRenderingMode.Storage;
  if (!lazy protocol witness table cache variable for type SymbolRenderingMode.Storage and conformance SymbolRenderingMode.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolRenderingMode.Storage and conformance SymbolRenderingMode.Storage);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymbolRenderingMode.Storage and conformance SymbolRenderingMode.Storage;
  if (!lazy protocol witness table cache variable for type SymbolRenderingMode.Storage and conformance SymbolRenderingMode.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolRenderingMode.Storage and conformance SymbolRenderingMode.Storage);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymbolRenderingMode.Storage and conformance SymbolRenderingMode.Storage;
  if (!lazy protocol witness table cache variable for type SymbolRenderingMode.Storage and conformance SymbolRenderingMode.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolRenderingMode.Storage and conformance SymbolRenderingMode.Storage);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SymbolVariableValueMode.Storage and conformance SymbolVariableValueMode.Storage()
{
  result = lazy protocol witness table cache variable for type SymbolVariableValueMode.Storage and conformance SymbolVariableValueMode.Storage;
  if (!lazy protocol witness table cache variable for type SymbolVariableValueMode.Storage and conformance SymbolVariableValueMode.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolVariableValueMode.Storage and conformance SymbolVariableValueMode.Storage);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymbolVariableValueMode.Storage and conformance SymbolVariableValueMode.Storage;
  if (!lazy protocol witness table cache variable for type SymbolVariableValueMode.Storage and conformance SymbolVariableValueMode.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolVariableValueMode.Storage and conformance SymbolVariableValueMode.Storage);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymbolVariableValueMode.Storage and conformance SymbolVariableValueMode.Storage;
  if (!lazy protocol witness table cache variable for type SymbolVariableValueMode.Storage and conformance SymbolVariableValueMode.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolVariableValueMode.Storage and conformance SymbolVariableValueMode.Storage);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SymbolColorRenderingMode.Storage and conformance SymbolColorRenderingMode.Storage()
{
  result = lazy protocol witness table cache variable for type SymbolColorRenderingMode.Storage and conformance SymbolColorRenderingMode.Storage;
  if (!lazy protocol witness table cache variable for type SymbolColorRenderingMode.Storage and conformance SymbolColorRenderingMode.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolColorRenderingMode.Storage and conformance SymbolColorRenderingMode.Storage);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymbolColorRenderingMode.Storage and conformance SymbolColorRenderingMode.Storage;
  if (!lazy protocol witness table cache variable for type SymbolColorRenderingMode.Storage and conformance SymbolColorRenderingMode.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolColorRenderingMode.Storage and conformance SymbolColorRenderingMode.Storage);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymbolColorRenderingMode.Storage and conformance SymbolColorRenderingMode.Storage;
  if (!lazy protocol witness table cache variable for type SymbolColorRenderingMode.Storage and conformance SymbolColorRenderingMode.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolColorRenderingMode.Storage and conformance SymbolColorRenderingMode.Storage);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SymbolRenderingOptions(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE)
  {
    if ((a2 + 33554178) >> 24)
    {
      v2 = a1[3];
      if (a1[3])
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776962;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776962;
      }
    }
  }

  v4 = a1[1];
  if (v4 <= 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = a1[1];
  }

  v6 = v5 - 3;
  if (v4 < 2)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for SymbolRenderingOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554178) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFD)
  {
    v3 = 0;
  }

  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 2) = (a2 - 254) >> 16;
    if (v3)
    {
      v4 = ((a2 - 254) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 1) = a2 + 2;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

void type metadata accessor for _EnvironmentKeyWritingModifier<SymbolRenderingMode?>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<SymbolRenderingMode?>)
  {
    type metadata accessor for SymbolRenderingMode?();
    v0 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<SymbolRenderingMode?>);
    }
  }
}

void type metadata accessor for SymbolRenderingMode?()
{
  if (!lazy cache variable for type metadata for SymbolRenderingMode?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for SymbolRenderingMode?);
    }
  }
}

uint64_t assignWithCopy for Image.SymbolRenderingOptionsProvider(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  *(a1 + 10) = *(a2 + 10);
  *(a1 + 11) = *(a2 + 11);
  return a1;
}

uint64_t specialized SymbolVariableValueMode.Storage.init(from:)(void *a1)
{
  v2 = MEMORY[0x1E69E6F48];
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<SymbolVariableValueMode.Storage.DrawCodingKeys>, lazy protocol witness table accessor for type SymbolVariableValueMode.Storage.DrawCodingKeys and conformance SymbolVariableValueMode.Storage.DrawCodingKeys, &unk_1F0076770, MEMORY[0x1E69E6F48]);
  v28 = v3;
  v31 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v26 - v4;
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<SymbolVariableValueMode.Storage.ColorCodingKeys>, lazy protocol witness table accessor for type SymbolVariableValueMode.Storage.ColorCodingKeys and conformance SymbolVariableValueMode.Storage.ColorCodingKeys, &unk_1F0076750, v2);
  v6 = v5;
  v29 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - v7;
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<SymbolVariableValueMode.Storage.CodingKeys>, lazy protocol witness table accessor for type SymbolVariableValueMode.Storage.CodingKeys and conformance SymbolVariableValueMode.Storage.CodingKeys, &unk_1F0076730, v2);
  v10 = v9;
  v32 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SymbolVariableValueMode.Storage.CodingKeys and conformance SymbolVariableValueMode.Storage.CodingKeys();
  v13 = v33;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = v6;
  v15 = v29;
  v14 = v30;
  v16 = v31;
  v33 = a1;
  v17 = KeyedDecodingContainer.allKeys.getter();
  v18 = (2 * *(v17 + 16)) | 1;
  v34 = v17;
  v35 = v17 + 32;
  v36 = 0;
  v37 = v18;
  v19 = specialized Collection<>.popFirst()();
  if (v19 == 2 || v36 != v37 >> 1)
  {
    v22 = type metadata accessor for DecodingError();
    swift_allocError();
    v24 = v23;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v24 = &type metadata for SymbolVariableValueMode.Storage;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
    swift_willThrow();
    (*(v32 + 8))(v12, v10);
    swift_unknownObjectRelease();
    a1 = v33;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v19;
  if (v19)
  {
    v38 = 1;
    lazy protocol witness table accessor for type SymbolVariableValueMode.Storage.DrawCodingKeys and conformance SymbolVariableValueMode.Storage.DrawCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v21 = v32;
    (*(v16 + 8))(v14, v28);
  }

  else
  {
    v38 = 0;
    lazy protocol witness table accessor for type SymbolVariableValueMode.Storage.ColorCodingKeys and conformance SymbolVariableValueMode.Storage.ColorCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v21 = v32;
    (*(v15 + 8))(v8, v27);
  }

  (*(v21 + 8))(v12, v10);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v33);
  return v20 & 1;
}

uint64_t specialized SymbolColorRenderingMode.Storage.init(from:)(void *a1)
{
  v2 = MEMORY[0x1E69E6F48];
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<SymbolColorRenderingMode.Storage.GradientCodingKeys>, lazy protocol witness table accessor for type SymbolColorRenderingMode.Storage.GradientCodingKeys and conformance SymbolColorRenderingMode.Storage.GradientCodingKeys, &unk_1F00766A0, MEMORY[0x1E69E6F48]);
  v28 = v3;
  v31 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v26 - v4;
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<SymbolColorRenderingMode.Storage.FlatCodingKeys>, lazy protocol witness table accessor for type SymbolColorRenderingMode.Storage.FlatCodingKeys and conformance SymbolColorRenderingMode.Storage.FlatCodingKeys, &unk_1F0076680, v2);
  v6 = v5;
  v29 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - v7;
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<SymbolColorRenderingMode.Storage.CodingKeys>, lazy protocol witness table accessor for type SymbolColorRenderingMode.Storage.CodingKeys and conformance SymbolColorRenderingMode.Storage.CodingKeys, &unk_1F0076660, v2);
  v10 = v9;
  v32 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SymbolColorRenderingMode.Storage.CodingKeys and conformance SymbolColorRenderingMode.Storage.CodingKeys();
  v13 = v33;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = v6;
  v15 = v29;
  v14 = v30;
  v16 = v31;
  v33 = a1;
  v17 = KeyedDecodingContainer.allKeys.getter();
  v18 = (2 * *(v17 + 16)) | 1;
  v34 = v17;
  v35 = v17 + 32;
  v36 = 0;
  v37 = v18;
  v19 = specialized Collection<>.popFirst()();
  if (v19 == 2 || v36 != v37 >> 1)
  {
    v22 = type metadata accessor for DecodingError();
    swift_allocError();
    v24 = v23;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v24 = &type metadata for SymbolColorRenderingMode.Storage;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
    swift_willThrow();
    (*(v32 + 8))(v12, v10);
    swift_unknownObjectRelease();
    a1 = v33;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v19;
  if (v19)
  {
    v38 = 1;
    lazy protocol witness table accessor for type SymbolColorRenderingMode.Storage.GradientCodingKeys and conformance SymbolColorRenderingMode.Storage.GradientCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v21 = v32;
    (*(v16 + 8))(v14, v28);
  }

  else
  {
    v38 = 0;
    lazy protocol witness table accessor for type SymbolColorRenderingMode.Storage.FlatCodingKeys and conformance SymbolColorRenderingMode.Storage.FlatCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v21 = v32;
    (*(v15 + 8))(v8, v27);
  }

  (*(v21 + 8))(v12, v10);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v33);
  return v20 & 1;
}

uint64_t specialized SymbolRenderingMode.Storage.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F7268636F6E6F6DLL && a2 == 0xEA0000000000656DLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6F6369746C756DLL && a2 == 0xEA0000000000726FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6863726172656968 && a2 == 0xEC0000006C616369 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x657474656C6170 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6572726566657270 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000019 && 0x800000018DD7B840 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x800000018DD7B860 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x800000018DD7B880 == a2)
  {

    return 7;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t specialized SymbolRenderingOptions.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E697265646E6572 && a2 == 0xED000065646F4D67;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000018DD7B8A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000018DD7B8C0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t lazy protocol witness table accessor for type SymbolVariableValueMode.Storage.DrawCodingKeys and conformance SymbolVariableValueMode.Storage.DrawCodingKeys()
{
  result = lazy protocol witness table cache variable for type SymbolVariableValueMode.Storage.DrawCodingKeys and conformance SymbolVariableValueMode.Storage.DrawCodingKeys;
  if (!lazy protocol witness table cache variable for type SymbolVariableValueMode.Storage.DrawCodingKeys and conformance SymbolVariableValueMode.Storage.DrawCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolVariableValueMode.Storage.DrawCodingKeys and conformance SymbolVariableValueMode.Storage.DrawCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymbolVariableValueMode.Storage.DrawCodingKeys and conformance SymbolVariableValueMode.Storage.DrawCodingKeys;
  if (!lazy protocol witness table cache variable for type SymbolVariableValueMode.Storage.DrawCodingKeys and conformance SymbolVariableValueMode.Storage.DrawCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolVariableValueMode.Storage.DrawCodingKeys and conformance SymbolVariableValueMode.Storage.DrawCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymbolVariableValueMode.Storage.DrawCodingKeys and conformance SymbolVariableValueMode.Storage.DrawCodingKeys;
  if (!lazy protocol witness table cache variable for type SymbolVariableValueMode.Storage.DrawCodingKeys and conformance SymbolVariableValueMode.Storage.DrawCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolVariableValueMode.Storage.DrawCodingKeys and conformance SymbolVariableValueMode.Storage.DrawCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SymbolVariableValueMode.Storage.ColorCodingKeys and conformance SymbolVariableValueMode.Storage.ColorCodingKeys()
{
  result = lazy protocol witness table cache variable for type SymbolVariableValueMode.Storage.ColorCodingKeys and conformance SymbolVariableValueMode.Storage.ColorCodingKeys;
  if (!lazy protocol witness table cache variable for type SymbolVariableValueMode.Storage.ColorCodingKeys and conformance SymbolVariableValueMode.Storage.ColorCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolVariableValueMode.Storage.ColorCodingKeys and conformance SymbolVariableValueMode.Storage.ColorCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymbolVariableValueMode.Storage.ColorCodingKeys and conformance SymbolVariableValueMode.Storage.ColorCodingKeys;
  if (!lazy protocol witness table cache variable for type SymbolVariableValueMode.Storage.ColorCodingKeys and conformance SymbolVariableValueMode.Storage.ColorCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolVariableValueMode.Storage.ColorCodingKeys and conformance SymbolVariableValueMode.Storage.ColorCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymbolVariableValueMode.Storage.ColorCodingKeys and conformance SymbolVariableValueMode.Storage.ColorCodingKeys;
  if (!lazy protocol witness table cache variable for type SymbolVariableValueMode.Storage.ColorCodingKeys and conformance SymbolVariableValueMode.Storage.ColorCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolVariableValueMode.Storage.ColorCodingKeys and conformance SymbolVariableValueMode.Storage.ColorCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SymbolVariableValueMode.Storage.CodingKeys and conformance SymbolVariableValueMode.Storage.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SymbolVariableValueMode.Storage.CodingKeys and conformance SymbolVariableValueMode.Storage.CodingKeys;
  if (!lazy protocol witness table cache variable for type SymbolVariableValueMode.Storage.CodingKeys and conformance SymbolVariableValueMode.Storage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolVariableValueMode.Storage.CodingKeys and conformance SymbolVariableValueMode.Storage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymbolVariableValueMode.Storage.CodingKeys and conformance SymbolVariableValueMode.Storage.CodingKeys;
  if (!lazy protocol witness table cache variable for type SymbolVariableValueMode.Storage.CodingKeys and conformance SymbolVariableValueMode.Storage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolVariableValueMode.Storage.CodingKeys and conformance SymbolVariableValueMode.Storage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymbolVariableValueMode.Storage.CodingKeys and conformance SymbolVariableValueMode.Storage.CodingKeys;
  if (!lazy protocol witness table cache variable for type SymbolVariableValueMode.Storage.CodingKeys and conformance SymbolVariableValueMode.Storage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolVariableValueMode.Storage.CodingKeys and conformance SymbolVariableValueMode.Storage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymbolVariableValueMode.Storage.CodingKeys and conformance SymbolVariableValueMode.Storage.CodingKeys;
  if (!lazy protocol witness table cache variable for type SymbolVariableValueMode.Storage.CodingKeys and conformance SymbolVariableValueMode.Storage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolVariableValueMode.Storage.CodingKeys and conformance SymbolVariableValueMode.Storage.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SymbolColorRenderingMode.Storage.GradientCodingKeys and conformance SymbolColorRenderingMode.Storage.GradientCodingKeys()
{
  result = lazy protocol witness table cache variable for type SymbolColorRenderingMode.Storage.GradientCodingKeys and conformance SymbolColorRenderingMode.Storage.GradientCodingKeys;
  if (!lazy protocol witness table cache variable for type SymbolColorRenderingMode.Storage.GradientCodingKeys and conformance SymbolColorRenderingMode.Storage.GradientCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolColorRenderingMode.Storage.GradientCodingKeys and conformance SymbolColorRenderingMode.Storage.GradientCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymbolColorRenderingMode.Storage.GradientCodingKeys and conformance SymbolColorRenderingMode.Storage.GradientCodingKeys;
  if (!lazy protocol witness table cache variable for type SymbolColorRenderingMode.Storage.GradientCodingKeys and conformance SymbolColorRenderingMode.Storage.GradientCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolColorRenderingMode.Storage.GradientCodingKeys and conformance SymbolColorRenderingMode.Storage.GradientCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymbolColorRenderingMode.Storage.GradientCodingKeys and conformance SymbolColorRenderingMode.Storage.GradientCodingKeys;
  if (!lazy protocol witness table cache variable for type SymbolColorRenderingMode.Storage.GradientCodingKeys and conformance SymbolColorRenderingMode.Storage.GradientCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolColorRenderingMode.Storage.GradientCodingKeys and conformance SymbolColorRenderingMode.Storage.GradientCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SymbolColorRenderingMode.Storage.FlatCodingKeys and conformance SymbolColorRenderingMode.Storage.FlatCodingKeys()
{
  result = lazy protocol witness table cache variable for type SymbolColorRenderingMode.Storage.FlatCodingKeys and conformance SymbolColorRenderingMode.Storage.FlatCodingKeys;
  if (!lazy protocol witness table cache variable for type SymbolColorRenderingMode.Storage.FlatCodingKeys and conformance SymbolColorRenderingMode.Storage.FlatCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolColorRenderingMode.Storage.FlatCodingKeys and conformance SymbolColorRenderingMode.Storage.FlatCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymbolColorRenderingMode.Storage.FlatCodingKeys and conformance SymbolColorRenderingMode.Storage.FlatCodingKeys;
  if (!lazy protocol witness table cache variable for type SymbolColorRenderingMode.Storage.FlatCodingKeys and conformance SymbolColorRenderingMode.Storage.FlatCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolColorRenderingMode.Storage.FlatCodingKeys and conformance SymbolColorRenderingMode.Storage.FlatCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymbolColorRenderingMode.Storage.FlatCodingKeys and conformance SymbolColorRenderingMode.Storage.FlatCodingKeys;
  if (!lazy protocol witness table cache variable for type SymbolColorRenderingMode.Storage.FlatCodingKeys and conformance SymbolColorRenderingMode.Storage.FlatCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolColorRenderingMode.Storage.FlatCodingKeys and conformance SymbolColorRenderingMode.Storage.FlatCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SymbolColorRenderingMode.Storage.CodingKeys and conformance SymbolColorRenderingMode.Storage.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SymbolColorRenderingMode.Storage.CodingKeys and conformance SymbolColorRenderingMode.Storage.CodingKeys;
  if (!lazy protocol witness table cache variable for type SymbolColorRenderingMode.Storage.CodingKeys and conformance SymbolColorRenderingMode.Storage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolColorRenderingMode.Storage.CodingKeys and conformance SymbolColorRenderingMode.Storage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymbolColorRenderingMode.Storage.CodingKeys and conformance SymbolColorRenderingMode.Storage.CodingKeys;
  if (!lazy protocol witness table cache variable for type SymbolColorRenderingMode.Storage.CodingKeys and conformance SymbolColorRenderingMode.Storage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolColorRenderingMode.Storage.CodingKeys and conformance SymbolColorRenderingMode.Storage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymbolColorRenderingMode.Storage.CodingKeys and conformance SymbolColorRenderingMode.Storage.CodingKeys;
  if (!lazy protocol witness table cache variable for type SymbolColorRenderingMode.Storage.CodingKeys and conformance SymbolColorRenderingMode.Storage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolColorRenderingMode.Storage.CodingKeys and conformance SymbolColorRenderingMode.Storage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymbolColorRenderingMode.Storage.CodingKeys and conformance SymbolColorRenderingMode.Storage.CodingKeys;
  if (!lazy protocol witness table cache variable for type SymbolColorRenderingMode.Storage.CodingKeys and conformance SymbolColorRenderingMode.Storage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolColorRenderingMode.Storage.CodingKeys and conformance SymbolColorRenderingMode.Storage.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Image.SymbolRenderingOptionsProvider.Properties and conformance Image.SymbolRenderingOptionsProvider.Properties()
{
  result = lazy protocol witness table cache variable for type Image.SymbolRenderingOptionsProvider.Properties and conformance Image.SymbolRenderingOptionsProvider.Properties;
  if (!lazy protocol witness table cache variable for type Image.SymbolRenderingOptionsProvider.Properties and conformance Image.SymbolRenderingOptionsProvider.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Image.SymbolRenderingOptionsProvider.Properties and conformance Image.SymbolRenderingOptionsProvider.Properties);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Image.SymbolRenderingOptionsProvider.Properties and conformance Image.SymbolRenderingOptionsProvider.Properties;
  if (!lazy protocol witness table cache variable for type Image.SymbolRenderingOptionsProvider.Properties and conformance Image.SymbolRenderingOptionsProvider.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Image.SymbolRenderingOptionsProvider.Properties and conformance Image.SymbolRenderingOptionsProvider.Properties);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Image.SymbolRenderingOptionsProvider.Properties and conformance Image.SymbolRenderingOptionsProvider.Properties;
  if (!lazy protocol witness table cache variable for type Image.SymbolRenderingOptionsProvider.Properties and conformance Image.SymbolRenderingOptionsProvider.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Image.SymbolRenderingOptionsProvider.Properties and conformance Image.SymbolRenderingOptionsProvider.Properties);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Image.SymbolRenderingOptionsProvider.Properties and conformance Image.SymbolRenderingOptionsProvider.Properties;
  if (!lazy protocol witness table cache variable for type Image.SymbolRenderingOptionsProvider.Properties and conformance Image.SymbolRenderingOptionsProvider.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Image.SymbolRenderingOptionsProvider.Properties and conformance Image.SymbolRenderingOptionsProvider.Properties);
  }

  return result;
}

uint64_t _ShaderFilterEffect.init(shader:maxSampleOffset:enabled:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v5 = *(result + 8);
  v6 = *(result + 32);
  *a3 = *result;
  *(a3 + 8) = v5;
  *(a3 + 16) = *(result + 16);
  *(a3 + 32) = v6;
  *(a3 + 40) = a4;
  *(a3 + 48) = a5;
  *(a3 + 56) = a2;
  return result;
}

uint64_t static _ShaderFilterEffect._makeView(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v7 = a2[3];
  v42 = a2[2];
  v43 = v7;
  v44 = a2[4];
  v45 = *(a2 + 20);
  v8 = a2[1];
  v40 = *a2;
  v41 = v8;
  v9 = v8;
  swift_beginAccess();
  v10 = *(v9 + 16);
  type metadata accessor for PropertyList.Tracker();
  v11 = swift_allocObject();
  type metadata accessor for AtomicBuffer<TrackerData>();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E7CC8];
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = v13;
  v14 = MEMORY[0x1E69E7CC0];
  *(v12 + 40) = v13;
  *(v12 + 48) = v14;
  *(v12 + 56) = 0;
  *(v11 + 16) = v12;
  *&v34 = __PAIR64__(v10, v6);
  *(&v34 + 1) = v11;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type _ShaderFilterEffect.ResolvedEffect and conformance _ShaderFilterEffect.ResolvedEffect();
  v15 = Attribute.init<A>(body:value:flags:update:)();

  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v30 = v42;
  v31 = v43;
  v32 = v44;
  v28 = v40;
  v29 = v41;
  v17 = v42;
  v33 = v45;
  LODWORD(v30) = 0;
  v39 = v45;
  v37 = v43;
  v38 = v44;
  v34 = v40;
  v35 = v41;
  v36 = v30;
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v43))
  {
    v20 = v15;
    v21[0] = v34;
    v21[1] = v35;
    v21[2] = v36;
    outlined init with copy of _ViewInputs(&v40, &v22);
    outlined init with copy of _ViewInputs(&v34, &v22);
    _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA6ShaderV08ResolvedJ0V_Tt1B5(&v20, v21);
    _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA6ShaderV08ResolvedN0V_Tt3B5(v20, &v34, a3, a4);
  }

  else
  {
    v24 = v36;
    v25 = v37;
    v26 = v38;
    v27 = v39;
    v22 = v34;
    v23 = v35;
    outlined init with copy of _ViewInputs(&v40, v21);
    v18 = outlined init with copy of _ViewInputs(&v34, v21);
    (a3)(v18, &v22);
  }

  outlined destroy of _ViewInputs(&v34);
  LODWORD(v30) = v17;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a4, &v28);
    AGSubgraphEndTreeElement();
  }

  v24 = v30;
  v25 = v31;
  v26 = v32;
  v27 = v33;
  v22 = v28;
  v23 = v29;
  return outlined destroy of _ViewInputs(&v22);
}

uint64_t ShaderLibrary.subscript.getter@<X0>(void *a1@<X0>, void *a2@<X1>, void **a3@<X8>)
{
  v4 = *v3;
  *a3 = *v3;
  a3[1] = a1;
  a3[2] = a2;
  v5 = v4;
}

uint64_t ShaderFunction.dynamicallyCall(withArguments:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  *(a2 + 32) = 0;
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = a1;
  v6 = v3;
}

void Shader.ResolvedShader.animatableData.getter(char **a1@<X8>)
{
  v3 = *v1;
  v4 = v3;

  ShaderVectorData.init(rbShader:)(v3, a1);
}

Swift::Void __swiftcall ShaderVectorData.scale(by:)(Swift::Double by)
{
  v2 = *v1;
  v3 = *(*v1 + 2);
  if (v3)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v1 = v2;
    v23 = v1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_29:
      v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
    }

    v6 = 0;
    *v23 = v2;
    v7 = v2 + 32;
    v8 = by;
    v24 = v2 + 32;
    v25 = v2;
    v27 = v8;
    while (1)
    {
      if (v6 == v3)
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= *(v2 + 2))
      {
        goto LABEL_28;
      }

      v10 = &v7[24 * v6];
      v11 = *v10;
      v12 = v10[1].u8[0];
      if (v12 > 2)
      {
        if (v12 == 3)
        {
          v20 = vmul_n_f32(vmovn_s64(v11), v8);
          v21.i64[0] = v20.u32[0];
          v21.i64[1] = v20.u32[1];
          v9 = vorrq_s8(vshll_n_s32(vmul_n_f32(vshrn_n_s64(v11, 0x20uLL), v8), 0x20uLL), v21);
        }

        else
        {
          if (v12 != 4)
          {
            goto LABEL_6;
          }

          v13 = v10->i64[0];
          v14 = *(v11.i64[0] + 16);
          if (v14)
          {
            v26 = *v10;
            v28 = MEMORY[0x1E69E7CC0];

            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
            v15 = v28;
            v16 = (v13 + 32);
            v17 = *(v28 + 16);
            v18 = v27;
            do
            {
              LODWORD(by) = *v16;
              v19 = *(v28 + 24);
              if (v17 >= v19 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v17 + 1, 1);
                v18 = v27;
              }

              *(v28 + 16) = v17 + 1;
              *(v28 + 4 * v17 + 32) = *&by * v18;
              ++v16;
              ++v17;
              --v14;
            }

            while (v14);
            outlined consume of ShaderVectorData.Element(v13, v26.i64[1], 4);
            v11 = *v10;
            v22 = v10[1].i8[0];
            v7 = v24;
            v2 = v25;
          }

          else
          {
            v22 = 4;
            v15 = MEMORY[0x1E69E7CC0];
          }

          outlined consume of ShaderVectorData.Element(v11.i64[0], v11.i64[1], v22);
          v9 = v15;
          v8 = v27;
        }
      }

      else if (v10[1].i8[0])
      {
        if (v12 == 1)
        {
          v9 = COERCE_UNSIGNED_INT(v8 * *v11.i32) | (COERCE_UNSIGNED_INT(v8 * *&v11.i32[1]) << 32);
        }

        else
        {
          *&v9 = COERCE_UNSIGNED_INT(v8 * *v11.i32) | (COERCE_UNSIGNED_INT(v8 * *&v11.i32[1]) << 32);
          *(&v9 + 1) = COERCE_UNSIGNED_INT(vmuls_lane_f32(v8, v11, 2));
        }
      }

      else
      {
        DWORD1(v9) = 0;
        *(&v9 + 1) = 0;
        *&v9 = v8 * *v11.i32;
      }

      *v10 = v9;
      v10[1].i8[0] = v12;
LABEL_6:
      if (++v6 == v3)
      {
        *v23 = v2;
        return;
      }
    }
  }
}

double ShaderVectorData.magnitudeSquared.getter()
{
  v1 = *(*v0 + 16);
  if (v1)
  {
    v2 = 0;
    result = 0.0;
    while (1)
    {
      v6 = *v0 + 32 + 24 * v2;
      v7 = *v6;
      v8 = *(v6 + 8);
      v9 = *(v6 + 16);
      if (v9 > 2)
      {
        if (v9 == 3)
        {
          v12 = (*&v8 * *&v8) + ((*&v7 * *&v7) + (*(&v7 + 1) * *(&v7 + 1)));
          v13 = *(&v8 + 1) * *(&v8 + 1);
LABEL_17:
          v4 = v13 + v12;
          goto LABEL_4;
        }

        v5 = 0.0;
        if (v9 != 4)
        {
          goto LABEL_5;
        }

        v10 = v7[1].u64[0];
        if (!v10)
        {
          goto LABEL_5;
        }

        if (v10 > 7)
        {
          v11 = v10 & 0x7FFFFFFFFFFFFFF8;
          v14 = v7 + 3;
          v4 = 0.0;
          v15 = v10 & 0x7FFFFFFFFFFFFFF8;
          do
          {
            v16 = vmulq_f32(v14[-1], v14[-1]);
            v17 = vmulq_f32(*v14, *v14);
            v4 = (((((((v4 + v16.f32[0]) + v16.f32[1]) + v16.f32[2]) + v16.f32[3]) + v17.f32[0]) + v17.f32[1]) + v17.f32[2]) + v17.f32[3];
            v14 += 2;
            v15 -= 8;
          }

          while (v15);
          if (v10 == v11)
          {
            goto LABEL_4;
          }
        }

        else
        {
          v11 = 0;
          v4 = 0.0;
        }

        v18 = v10 - v11;
        v19 = &v7[2].f32[v11];
        do
        {
          v20 = *v19++;
          v4 = v4 + (v20 * v20);
          --v18;
        }

        while (v18);
      }

      else if (v9)
      {
        if (v9 != 1)
        {
          v12 = (*&v7 * *&v7) + (*(&v7 + 1) * *(&v7 + 1));
          v13 = *&v8 * *&v8;
          goto LABEL_17;
        }

        v4 = (*&v7 * *&v7) + (*(&v7 + 1) * *(&v7 + 1));
      }

      else
      {
        v4 = *&v7 * *&v7;
      }

LABEL_4:
      v5 = v4;
LABEL_5:
      ++v2;
      result = result + v5;
      if (v2 == v1)
      {
        return result;
      }
    }
  }

  return 0.0;
}

id static ShaderLibrary.bundle(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [objc_opt_self() defaultLibraryWithBundle_];
  *a2 = result;
  return result;
}

uint64_t ShaderLibrary.init(data:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v7 = [objc_opt_self() libraryWithData_];

  result = outlined consume of Data._Representation(a1, a2);
  *a3 = v7;
  return result;
}

uint64_t ShaderLibrary.init(url:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  v12 = [objc_opt_self() libraryWithContentsOfURL_];

  v13 = *(v5 + 8);
  v13(a1, v4);
  result = (v13)(v8, v4);
  *a2 = v12;
  return result;
}

uint64_t static ShaderLibrary.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (one-time initialization token for default != -1)
  {
    v7 = a1;
    v8 = a3;
    swift_once();
    a1 = v7;
    a3 = v8;
  }

  v4 = static ShaderLibrary.default;
  *a3 = static ShaderLibrary.default;
  a3[1] = a1;
  a3[2] = a2;
  v5 = v4;
}

void *ShaderFunction.init(library:name:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = *result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

id ShaderLibrary.rbShaderLibrary.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

id one-time initialization function for default(uint64_t a1, SEL *a2, void *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

id ShaderFunction.library.getter@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

void ShaderFunction.library.setter(void **a1)
{
  v2 = *a1;

  *v1 = v2;
}

uint64_t ShaderFunction.name.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ShaderFunction.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

__n128 Shader.init(function:arguments:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  result = *a1;
  v4 = a1[1].n128_u64[0];
  a3[2].n128_u32[0] = 0;
  *a3 = result;
  a3[1].n128_u64[0] = v4;
  a3[1].n128_u64[1] = a2;
  return result;
}

uint64_t static ShaderFunction.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] == a2[1] && a1[2] == a2[2])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ShaderFunction(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] == a2[1] && a1[2] == a2[2])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

void static Shader.Argument._float(_:)(uint64_t a1@<X8>, unsigned int a2@<S0>)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 20) = 0;
}

void static Shader.Argument._float2(_:_:)(uint64_t a1@<X8>, unsigned int a2@<S0>, unsigned int a3@<S1>)
{
  *a1 = a2 | (a3 << 32);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 20) = 1;
}

void static Shader.Argument._float3(_:_:_:)(uint64_t a1@<X8>, unsigned int a2@<S0>, unsigned int a3@<S1>, unsigned int a4@<S2>)
{
  *a1 = a2 | (a3 << 32);
  *(a1 + 8) = a4;
  *(a1 + 16) = 0;
  *(a1 + 20) = 2;
}

int8x16_t static Shader.Argument._float4(_:_:_:_:)@<Q0>(int8x16_t *a1@<X8>, unsigned int a2@<S0>, int32x2_t a3@<D1>, unsigned int a4@<S2>, __int32 a5@<S3>)
{
  a1[1].i32[0] = 0;
  a3.i32[1] = a5;
  v5.i64[0] = a2;
  v5.i64[1] = a4;
  result = vorrq_s8(vshll_n_s32(a3, 0x20uLL), v5);
  *a1 = result;
  a1[1].i8[4] = 3;
  return result;
}

uint64_t static Shader.Argument.floatArray(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = 4;
}

void static Shader.Argument.boundingRect.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 20) = 10;
}

uint64_t static Shader.Argument.color(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = 5;
}

uint64_t static Shader.Argument.colorArray(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = 6;
}

uint64_t static Shader.Argument.image(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = 8;
}

uint64_t static Shader.Argument.data(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 20) = 9;
  return outlined copy of Data._Representation(a1, a2);
}

uint64_t Shader.function.getter@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  v5 = v2;
}

__n128 Shader.function.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = *v1;

  result = v5;
  *v1 = v5;
  *(v1 + 16) = v2;
  return result;
}

uint64_t Shader.arguments.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t (*Shader.dithersColor.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *(v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 12) = v2 & 1;
  return Shader.dithersColor.modify;
}

uint64_t Shader.alphaOnlyLayer.setter(uint64_t result)
{
  if (result)
  {
    v2 = 8;
  }

  else
  {
    v2 = 0;
  }

  *(v1 + 32) = *(v1 + 32) & 0xFFFFFFF7 | v2;
  return result;
}

uint64_t (*Shader.alphaOnlyLayer.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *(v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 12) = (v2 & 8) != 0;
  return Shader.alphaOnlyLayer.modify;
}

uint64_t Shader.alphaOnlyLayer.modify(uint64_t result)
{
  if (*(result + 12))
  {
    v1 = 8;
  }

  else
  {
    v1 = 0;
  }

  *(*result + 32) = v1 | *(result + 8) & 0xFFFFFFF7;
  return result;
}

uint64_t Shader.ignoresSecondaryDOD.setter(uint64_t result)
{
  if (result)
  {
    v2 = 16;
  }

  else
  {
    v2 = 0;
  }

  *(v1 + 32) = *(v1 + 32) & 0xFFFFFFEF | v2;
  return result;
}

uint64_t (*Shader.ignoresSecondaryDOD.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *(v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 12) = (v2 & 0x10) != 0;
  return Shader.ignoresSecondaryDOD.modify;
}

uint64_t Shader.ignoresSecondaryDOD.modify(uint64_t result)
{
  if (*(result + 12))
  {
    v1 = 16;
  }

  else
  {
    v1 = 0;
  }

  *(*result + 32) = v1 | *(result + 8) & 0xFFFFFFEF;
  return result;
}

id Shader.ResolvedShader.rbShader.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t Shader.ResolvedShader.init(rbShader:maxSampleOffset:options:)@<X0>(uint64_t result@<X0>, int *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v5 = *a2;
  *a3 = result;
  *(a3 + 8) = a4;
  *(a3 + 16) = a5;
  *(a3 + 24) = v5;
  return result;
}

char *closure #1 in closure #3 in Shader.makeRBShader(in:)(char *result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v9 = result;
  if (a2)
  {
    if (a2 < 0)
    {
      __break(1u);
      goto LABEL_8;
    }

    v13 = (result + 8);
    v14 = a2;
    do
    {
      v15 = *a3++;
      v26[0] = a5;
      v26[1] = a6;
      v16 = *(*v15 + 112);

      v17 = v16(v26);
      v19 = v18;
      v21 = v20;
      v23 = v22;

      *(v13 - 2) = v17;
      *(v13 - 1) = v19;
      *v13 = v21;
      *(v13 + 1) = v23;
      v13 += 4;
      --v14;
    }

    while (v14);
  }

  if (v9)
  {
    [a7 setArgumentBytes:v9 atIndex:a8 type:5 count:a2 flags:3];
    return [a7 setArgumentColorSpace:2 atIndex:a8];
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t Shader.compile(as:)(int *a1)
{
  v3 = *a1;
  v4 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = *(v1 + 32);
  *(v2 + 52) = v3;
  return MEMORY[0x1EEE6DFA0](Shader.compile(as:), 0, 0);
}

uint64_t Shader.compile(as:)()
{
  v1 = [objc_opt_self() sharedDefaultDevice];
  *(v0 + 56) = v1;
  if (v1)
  {
    v2 = *(v0 + 52);
    v3 = swift_task_alloc();
    *(v0 + 64) = v3;
    *(v3 + 16) = v0 + 16;
    *(v3 + 24) = v2;
    *(v3 + 32) = v1;
    v4 = swift_task_alloc();
    *(v0 + 72) = v4;
    *v4 = v0;
    v4[1] = Shader.compile(as:);

    return MEMORY[0x1EEE6DE38]();
  }

  else
  {
    v5 = *(v0 + 8);

    return v5();
  }
}

{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = Shader.compile(as:);
  }

  else
  {

    v2 = Shader.compile(as:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

void closure #1 in Shader.compile(as:)(uint64_t a1, __int128 *a2, uint64_t a3, void *a4)
{
  type metadata accessor for CheckedContinuation<(), Error>();
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = a2[1];
  aBlock = *a2;
  v19 = v12;
  LODWORD(v20) = *(a2 + 8);
  v22 = xmmword_18DD85500;
  v13 = Shader.makeRBShader(in:)(&v22);
  [v13 setType_];
  type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v14 = static OS_dispatch_queue.main.getter();
  (*(v10 + 16))(&aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = swift_allocObject();
  (*(v10 + 32))(v16 + v15, &aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v20 = partial apply for closure #1 in closure #1 in Shader.compile(as:);
  v21 = v16;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v19 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  *(&v19 + 1) = &block_descriptor_14;
  v17 = _Block_copy(&aBlock);

  [a4 compileShader:v13 completionQueue:v14 handler:v17];
  _Block_release(v17);
}

uint64_t closure #1 in closure #1 in Shader.compile(as:)(void *a1)
{
  if (a1)
  {
    v1 = a1;
    type metadata accessor for CheckedContinuation<(), Error>();
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    type metadata accessor for CheckedContinuation<(), Error>();
    return CheckedContinuation.resume(returning:)();
  }
}

void thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

Swift::Int Shader.UsageType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t Shader.rbShader(in:)(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(v1 + 8);
  v5 = *(v1 + 32);
  v8[2] = *v1;
  v8[3] = v4;
  v9 = *(v1 + 16);
  v10 = v5;
  v8[0] = v3;
  v8[1] = v2;

  v6 = Shader.makeRBShader(in:)(v8);
  outlined consume of EnvironmentValues?(v8[0]);
  return v6;
}

void View.colorEffect(_:isEnabled:)(uint64_t a1, char a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32) | 2;
  v11[0] = *a1;
  v11[1] = v5;
  v11[2] = v6;
  v11[3] = v7;
  v12 = v8;
  v9 = v11[0];
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v10 = v9;
  View.layerEffect(_:maxSampleOffset:isEnabled:)(v11, a2, a3, 0.0, 0.0);
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
}

void View.distortionEffect(_:maxSampleOffset:isEnabled:)(uint64_t a1, char a2, uint64_t a3, double a4, double a5)
{
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = *(a1 + 32) | 4;
  v15[0] = *a1;
  v15[1] = v9;
  v15[2] = v10;
  v15[3] = v11;
  v16 = v12;
  v13 = v15[0];
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v14 = v13;
  View.layerEffect(_:maxSampleOffset:isEnabled:)(v15, a2, a3, a4, a5);
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
}

uint64_t _ShaderFilterEffect.shader.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  v7 = v2;
}

__n128 _ShaderFilterEffect.shader.setter(__n128 *a1)
{
  v3 = a1->n128_u64[0];
  v4 = a1->n128_u64[1];
  v5 = a1[2].n128_u32[0];
  v6 = *v1;

  *v1 = v3;
  *(v1 + 8) = v4;
  result = a1[1];
  *(v1 + 16) = result;
  *(v1 + 32) = v5;
  return result;
}

void _ShaderFilterEffect.ResolvedEffect.updateValue()()
{
  v1 = v0;
  v29 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v4 = v3;
  v6 = Value[1];
  v5 = Value[2];
  v7 = *Value;
  *&v23[9] = *(Value + 41);
  v22 = v6;
  *v23 = v5;
  v21 = v7;
  v8 = v3 & 1;
  memmove(__dst, Value, 0x39uLL);
  __dst[57] = v8;
  if (v4)
  {
    outlined init with copy of _ShaderFilterEffect(&v21, &v26);
  }

  else
  {
    outlined init with copy of _ShaderFilterEffect(&v21, &v26);
    AGGraphGetValue();

    v10 = PropertyList.Tracker.hasDifferentUsedValues(_:)(v9);

    if ((v10 & 1) == 0)
    {
      outlined destroy of _ShaderFilterEffect(&v21);
      return;
    }
  }

  v11 = *(v1 + 8);
  PropertyList.Tracker.reset()();
  outlined init with copy of (value: _ShaderFilterEffect, changed: Bool)(__dst, &v26);
  v12 = *AGGraphGetValue();
  if (v12)
  {
    v13 = *(v12 + 64);
  }

  else
  {
    v13 = 0;
  }

  v14 = v21;
  v20 = v22;
  v15 = *v23;
  v16 = *(v11 + 16);
  swift_retain_n();

  os_unfair_lock_lock((v16 + 16));
  *(v16 + 24) = v13;
  os_unfair_lock_unlock((v16 + 16));

  if (v23[24] == 1)
  {
    v18 = *&v23[16];
    v17 = *&v23[8];
    v26 = v14;
    v27 = v20;
    v28 = v15;
    v25[0] = v12;
    v25[1] = v11;
    v19 = Shader.makeRBShader(in:)(v25);
    outlined consume of EnvironmentValues?(v25[0]);
    outlined destroy of _ShaderFilterEffect(&v21);
  }

  else
  {
    outlined destroy of _ShaderFilterEffect(&v21);

    v19 = 0;
    v15 = 0;
    v17 = 0;
    v18 = 0;
  }

  *&v26 = v19;
  *(&v26 + 1) = v17;
  *&v27 = v18;
  DWORD2(v27) = v15;
  AGGraphSetOutputValue();
  outlined destroy of _ShaderFilterEffect(&v21);
}

void Shader.ResolvedShader.encode(to:)(__int128 *a1)
{
  v3 = v1;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  if (*v3)
  {
    v8 = *v3;
    ProtobufEncoder.encodeVarint(_:)(0xAuLL);
    v9 = *(a1 + 1);
    v10 = *(a1 + 3);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
    }

    v12 = *(v10 + 2);
    v11 = *(v10 + 3);
    v13 = v12 + 1;
    if (v12 >= v11 >> 1)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v10);
    }

    *(v10 + 2) = v13;
    *&v10[8 * v12 + 32] = v9;
    *(a1 + 3) = v10;
    v14 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_21:
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
      goto LABEL_13;
    }

    v27 = v7;
    *(a1 + 1) = v14;
    v15 = *a1;
    v16 = *(a1 + 2);
    v17 = *(a1 + 4);
    v18 = type metadata accessor for RBDisplayListEncoderDelegate();
    v19 = objc_allocWithZone(v18);
    v20 = &v19[OBJC_IVAR____TtC7SwiftUI28RBDisplayListEncoderDelegate_encoder];
    *v20 = v15;
    *(v20 + 1) = v14;
    *(v20 + 2) = v16;
    *(v20 + 3) = v10;
    *(v20 + 4) = v17;
    v26.receiver = v19;
    v26.super_class = v18;

    v21 = objc_msgSendSuper2(&v26, sel_init);
    v22 = v8;
    v23 = v21;
    specialized ProtobufEncoder.encodeAttachedValue<A>(key:data:)(v22, a1, v22, v23);
    if (v2)
    {

      return;
    }

    ProtobufEncoder.endLengthDelimited()();
    v7 = v27;
  }

  if (v5 == 0.0 && v6 == 0.0)
  {
    goto LABEL_17;
  }

  ProtobufEncoder.encodeVarint(_:)(0x12uLL);
  v13 = *(a1 + 1);
  v8 = *(a1 + 3);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_13:
  v25 = *(v8 + 2);
  v24 = *(v8 + 3);
  if (v25 >= v24 >> 1)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v8);
  }

  *(v8 + 2) = v25 + 1;
  *&v8[8 * v25 + 32] = v13;
  *(a1 + 3) = v8;
  if (__OFADD__(v13, 1))
  {
    __break(1u);
    return;
  }

  *(a1 + 1) = v13 + 1;
  CGSize.encode(to:)(a1, v5, v6);
  ProtobufEncoder.endLengthDelimited()();
LABEL_17:
  if (v7)
  {
    ProtobufEncoder.encodeVarint(_:)(0x18uLL);
    ProtobufEncoder.encodeVarint(_:)(v7);
  }
}

void *closure #1 in closure #1 in Shader.ResolvedShader.encode(to:)(void *a1, uint64_t a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v2 = [a1 encodedDataForDelegate:a2 error:v6];
  v3 = v6[0];
  if (v2)
  {
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v4;
}

void Shader.ResolvedShader.init(from:)(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v6 >= v7)
  {
LABEL_65:
    v8 = 0;
    v60 = 0;
    v10 = 0;
    v11 = 0;
LABEL_66:
    *(a1 + 24) = 0;
    *a2 = v8;
    *(a2 + 8) = v10;
    *(a2 + 16) = v11;
    *(a2 + 24) = v60;
    return;
  }

  v8 = 0;
  v60 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  while (1)
  {
    v12 = *(a1 + 24);
    if (v12)
    {
      v13 = *(a1 + 32);
      if (v6 < v13)
      {
        goto LABEL_11;
      }

      if (v13 < v6)
      {
        goto LABEL_67;
      }

      *(a1 + 24) = 0;
    }

    v12 = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      goto LABEL_74;
    }

    if (v12 <= 7)
    {
      goto LABEL_67;
    }

LABEL_11:
    v14 = v12 >> 3;
    if (v12 >> 3 != 3)
    {
      break;
    }

    if ((v12 & 7) != 0)
    {
      if ((v12 & 7) != 2)
      {
        goto LABEL_67;
      }

      v42 = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        goto LABEL_74;
      }

      if (v42 < 0)
      {
        goto LABEL_80;
      }

      v43 = *(a1 + 8) + v42;
      if (v7 < v43)
      {
LABEL_67:
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        swift_willThrow();
        goto LABEL_74;
      }

      *(a1 + 24) = 24;
      *(a1 + 32) = v43;
    }

    v44 = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      goto LABEL_74;
    }

    v60 = v44;
LABEL_4:
    v6 = *(a1 + 8);
    if (v6 >= v7)
    {
      goto LABEL_66;
    }
  }

  if (v14 == 2)
  {
    if ((v12 & 7) != 2)
    {
      goto LABEL_67;
    }

    v3 = *(a1 + 40);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
    }

    v35 = *(v3 + 2);
    v34 = *(v3 + 3);
    if (v35 >= v34 >> 1)
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v3);
    }

    *(v3 + 2) = v35 + 1;
    *&v3[8 * v35 + 32] = v7;
    *(a1 + 40) = v3;
    v36 = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      goto LABEL_74;
    }

    if (v36 < 0)
    {
      goto LABEL_76;
    }

    v37 = *(a1 + 8) + v36;
    if (v7 < v37)
    {
      goto LABEL_67;
    }

    *(a1 + 16) = v37;
    specialized CGPoint.init(from:)(a1);
    v3 = *(a1 + 40);
    if (!*(v3 + 2))
    {
      goto LABEL_77;
    }

    v10 = v38;
    v11 = v39;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v40 = *(v3 + 2);
      if (!v40)
      {
        goto LABEL_79;
      }
    }

    else
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
      v40 = *(v3 + 2);
      if (!v40)
      {
        goto LABEL_79;
      }
    }

    v41 = v40 - 1;
    v7 = *&v3[8 * v41 + 32];
    *(v3 + 2) = v41;
    *(a1 + 40) = v3;
    *(a1 + 16) = v7;
    goto LABEL_4;
  }

  if (v14 != 1)
  {
    v45 = v12 & 7;
    if (v45 > 1)
    {
      if (v45 == 2)
      {
        v47 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_74;
        }

        if (v47 < 0)
        {
          goto LABEL_81;
        }

        v46 = *(a1 + 8) + v47;
        if (v7 < v46)
        {
          goto LABEL_67;
        }
      }

      else
      {
        if (v45 != 5)
        {
          goto LABEL_67;
        }

        v46 = *(a1 + 8) + 4;
        if (v7 < v46)
        {
          goto LABEL_67;
        }
      }
    }

    else
    {
      if ((v12 & 7) == 0)
      {
        ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_74;
        }

        goto LABEL_4;
      }

      if (v45 != 1)
      {
        goto LABEL_67;
      }

      v46 = *(a1 + 8) + 8;
      if (v7 < v46)
      {
        goto LABEL_67;
      }
    }

    *(a1 + 8) = v46;
    goto LABEL_4;
  }

  v15 = v9;
  v16 = a2;
  v56 = v8;
  v17 = *(a1 + 16);
  v18 = *(a1 + 24);
  v19 = *(a1 + 32);
  v20 = *(a1 + 40);
  v21 = *(a1 + 48);
  v58 = v12;
  v22 = type metadata accessor for RBDisplayListDecoderDelegate();
  v57 = *a1;
  v23 = objc_allocWithZone(v22);
  v24 = &v23[OBJC_IVAR____TtC7SwiftUI28RBDisplayListDecoderDelegate_decoder];
  *v24 = v57;
  *(v24 + 2) = v17;
  *(v24 + 3) = v18;
  *(v24 + 4) = v19;
  *(v24 + 5) = v20;
  *(v24 + 6) = v21;
  v59.receiver = v23;
  v59.super_class = v22;
  v25 = v57;

  v3 = objc_msgSendSuper2(&v59, sel_init);
  if ((v58 & 7) != 2)
  {
    lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
    swift_allocError();
    swift_willThrow();
LABEL_70:

    v8 = v56;
LABEL_74:

    return;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1, v20);
  }

  a2 = v16;
  v8 = *(v20 + 2);
  v26 = *(v20 + 3);
  if (v8 >= v26 >> 1)
  {
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v8 + 1, 1, v20);
  }

  *(v20 + 2) = v8 + 1;
  *&v20[8 * v8 + 32] = v17;
  *(a1 + 40) = v20;
  v27 = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
    goto LABEL_70;
  }

  if ((v27 & 0x8000000000000000) == 0)
  {
    v28 = *(a1 + 8) + v27;
    v8 = v56;
    if (v17 < v28)
    {
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();

      goto LABEL_74;
    }

    *(a1 + 16) = v28;
    v3 = v3;
    v29 = _s7SwiftUI15ProtobufDecoderV19decodeAttachedValue2as9generatorxxm_x10Foundation4DataVKXEtKlFSo8RBShaderC_Tt0g503_s7a36UI6ShaderV08ResolvedC0VAAE4fromAeA15cd11Vz_tKcfcSo8l25CAHzKXEfU_AJ10Foundation4K7VKXEfU_AA013RBDisplayListD8DelegateCTf1cn_n(a1, v3);
    v30 = *(a1 + 40);
    if (!*(v30 + 2))
    {
      goto LABEL_78;
    }

    v31 = v29;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v32 = *(v30 + 2);
      if (!v32)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v30 = specialized _ArrayBuffer._consumeAndCreateNew()(v30);
      v32 = *(v30 + 2);
      if (!v32)
      {
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }
    }

    v33 = v32 - 1;
    v7 = *&v30[8 * v33 + 32];
    *(v30 + 2) = v33;

    *(a1 + 40) = v30;
    *(a1 + 16) = v7;
    v8 = v31;
    v9 = v31;
    goto LABEL_4;
  }

  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
  __break(1u);
  __break(1u);
  v52 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
  v53 = *(v52 + 2);
  if (v53)
  {
    v48 = v53 - 1;
    v49 = *&v52[8 * v48 + 32];
    *(v52 + 2) = v48;

    *(a1 + 40) = v52;
    *(a1 + 16) = v49;
    goto LABEL_74;
  }

  __break(1u);
  v54 = specialized _ArrayBuffer._consumeAndCreateNew()(v52);
  v55 = *(v54 + 2);
  if (v55)
  {
    v50 = v55 - 1;
    v51 = *&v54[8 * v50 + 32];
    *(v54 + 2) = v50;
    *(a1 + 40) = v54;
    *(a1 + 16) = v51;
    goto LABEL_74;
  }

  __break(1u);
}

id closure #1 in closure #1 in Shader.ResolvedShader.init(from:)@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v10[0] = 0;
  v6 = [v4 decodedObjectWithData:isa delegate:a1 error:v10];

  v7 = v10[0];
  if (v6)
  {
    *a2 = v6;
    return v7;
  }

  else
  {
    v9 = v10[0];
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

uint64_t Shader.ResolvedShader.draw(path:style:in:bounds:)(double *a1, __int128 *a2, uint64_t a3, __int128 *a4)
{
  v7 = *(a2 + 4);
  v8 = *(a2 + 40);
  v9 = *v4;
  v10 = *(v4 + 8);
  v11 = *(v4 + 24);
  v29 = a2[1];
  v30 = *a2;
  if ((a4[2] & 1) == 0)
  {
    v12 = *a4;
    v14 = a4[1];
    goto LABEL_6;
  }

  v12 = *a1;
  v13 = *(a1 + 32);
  if (v13 <= 2)
  {
    v14 = *(a1 + 1);
    if (v13 >= 2)
    {
      v12 = *(v12 + 16);
      v14 = *(*a1 + 32);
    }

    goto LABEL_6;
  }

  if (v13 != 5)
  {
    if (v13 != 6)
    {
      goto LABEL_19;
    }

    v12 = *MEMORY[0x1E695F050];
    v14 = *(MEMORY[0x1E695F050] + 16);
LABEL_6:
    *v45 = v9;
    *&v45[8] = v10;
    *&v45[24] = v11;
    v46 = v12;
    v47 = v14;
    _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi2_(v45);
    v42 = v52;
    v43 = v53;
    v44 = v54;
    v38 = v48;
    v39 = v49;
    v40 = v50;
    v41 = v51;
    v34 = *v45;
    v35 = *&v45[16];
    v36 = v46;
    v37 = v47;
    v31[0] = v30;
    v31[1] = v29;
    v32 = v7;
    v33 = v8;
    v15 = v9;
    GraphicsContext.draw(_:with:style:)(a1, &v34, v31, a3);
    v55[8] = v42;
    v55[9] = v43;
    v56 = v44;
    v55[4] = v38;
    v55[5] = v39;
    v55[6] = v40;
    v55[7] = v41;
    v55[0] = v34;
    v55[1] = v35;
    v55[2] = v36;
    v55[3] = v37;
    return outlined destroy of GraphicsContext.ResolvedShading(v55);
  }

  v17 = *a1;
  v28 = *(v4 + 8);
  if (*(v12 + 16))
  {
    if (*(v12 + 16) == 1)
    {

      RBPathGetBoundingRect();
    }

    else
    {

      v18 = MEMORY[0x193AC3640](*&v17 + 24);
    }

    width = v20;
    x = v18;
    y = v19;
    height = v21;
    goto LABEL_17;
  }

  v22 = *(v12 + 24);
  if (v22)
  {
    v23 = v22;

    PathBoundingBox = CGPathGetPathBoundingBox(v23);
    width = PathBoundingBox.size.width;
    x = PathBoundingBox.origin.x;
    y = PathBoundingBox.origin.y;
    height = PathBoundingBox.size.height;

LABEL_17:
    outlined destroy of Path(a1);
    *&v14 = width;
    *&v12 = x;
    *(&v12 + 1) = y;
    *(&v14 + 1) = height;
    v10 = v28;
    goto LABEL_6;
  }

  __break(1u);
LABEL_19:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for ResolvedPaint.draw(path:style:in:bounds:) in conformance Shader.ResolvedShader(double *a1, __int128 *a2, uint64_t a3, uint64_t *a4)
{
  v19 = a2[1];
  v20 = *a2;
  v7 = *(a2 + 4);
  v8 = *(a2 + 40);
  v9 = *v4;
  v10 = *(v4 + 8);
  v11 = *(v4 + 24);
  if (a4[4])
  {
    v18 = *(v4 + 8);
    Path.boundingRect.getter();
    v10 = v18;
  }

  else
  {
    v12 = *a4;
    v13 = a4[1];
    v14 = a4[2];
    v15 = a4[3];
  }

  *v35 = v9;
  *&v35[8] = v10;
  *&v35[24] = v11;
  *&v36 = v12;
  *(&v36 + 1) = v13;
  *&v37 = v14;
  *(&v37 + 1) = v15;
  _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi2_(v35);
  v32 = v42;
  v33 = v43;
  v34 = v44;
  v28 = v38;
  v29 = v39;
  v30 = v40;
  v31 = v41;
  v24 = *v35;
  v25 = *&v35[16];
  v26 = v36;
  v27 = v37;
  v21[0] = v20;
  v21[1] = v19;
  v22 = v7;
  v23 = v8;
  v16 = v9;
  GraphicsContext.draw(_:with:style:)(a1, &v24, v21, a3);
  v45[8] = v32;
  v45[9] = v33;
  v46 = v34;
  v45[4] = v28;
  v45[5] = v29;
  v45[6] = v30;
  v45[7] = v31;
  v45[0] = v24;
  v45[1] = v25;
  v45[2] = v26;
  v45[3] = v27;
  return outlined destroy of GraphicsContext.ResolvedShading(v45);
}

void Shader.ResolvedShader.animatableData.setter()
{
  v1 = v0;
  v2 = *v0;
  v3 = ShaderVectorData.updating(rbShader:)(*v0);

  *v1 = v3;
}

void ShaderVectorData.init(rbShader:)(void *a1@<X0>, char **a2@<X8>)
{
  if (!a1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_40:
    *a2 = v7;
    return;
  }

  v4 = [a1 numberOfArguments];
  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_43;
  }

  v5 = v4;
  v23 = a2;
  if (!v4)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_39:

    a2 = v23;
    goto LABEL_40;
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    [a1 argumentAtIndex_];
    v10 = v25;
    v9 = v26;
    if (v25 != 1)
    {
      break;
    }

    v11 = 0;
    v12 = 5;
    if (v24 > 3)
    {
      v13 = 0;
      if ((v24 - 4) < 2)
      {
        v11 = *v26;
        v13 = *(v26 + 1);
        v12 = 3;
      }
    }

    else if (v24 == 1)
    {
      v13 = 0;
      v12 = 0;
      v11 = *v26;
    }

    else if (v24 == 2)
    {
      v13 = 0;
      v11 = *v26;
      v12 = 1;
    }

    else
    {
      v13 = 0;
      if (v24 == 3)
      {
        v11 = *v26;
        v13 = v26[2];
        v12 = 2;
      }
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
    }

    v22 = *(v7 + 2);
    v21 = *(v7 + 3);
    if (v22 >= v21 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v7);
    }

    *(v7 + 2) = v22 + 1;
    v8 = &v7[24 * v22];
    *(v8 + 4) = v11;
    *(v8 + 5) = v13;
    v8[48] = v12;
LABEL_6:
    if (++v6 == v5)
    {
      goto LABEL_39;
    }
  }

  if (v24 != 1)
  {
    if (v24 != 5)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
      }

      v19 = *(v7 + 2);
      v18 = *(v7 + 3);
      if (v19 >= v18 >> 1)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v7);
      }

      *(v7 + 2) = v19 + 1;
      v20 = &v7[24 * v19];
      *(v20 + 4) = 0;
      *(v20 + 5) = 0;
      v20[48] = 5;
      goto LABEL_6;
    }

    if ((v25 - 0x2000000000000000) >> 62 != 3)
    {
      goto LABEL_42;
    }

    v10 = 4 * v25;
  }

  v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10 & ~(v10 >> 63), 0, MEMORY[0x1E69E7CC0]);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v11 = v14;
    if (v10)
    {
      v15 = *(v14 + 2);
      do
      {
        v16 = *v9;
        v17 = *(v11 + 3);
        if (v15 >= v17 >> 1)
        {
          v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v15 + 1, 1, v11);
        }

        *(v11 + 2) = v15 + 1;
        *&v11[4 * v15 + 32] = v16;
        ++v9;
        ++v15;
        --v10;
      }

      while (v10);
    }

    v13 = 0;
    v12 = 4;
    goto LABEL_33;
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
}

void *ShaderVectorData.updating(rbShader:)(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v2 = *v1;
  v3 = a1;
  [v3 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for RBShader);
  swift_dynamicCast();
  v4 = v15;
  v5 = *(v2 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = (v2 + 48);
    do
    {
      if (v6 >= *(v2 + 16))
      {
        __break(1u);
      }

      v9 = *(v7 - 2);
      v8 = *(v7 - 1);
      v10 = *v7;
      outlined copy of ShaderVectorData.Element(v9, v8, *v7);
      [v3 argumentAtIndex_];
      if (v16 > 2)
      {
        if (v16 == 3)
        {
          if (v10 != 2)
          {
            goto LABEL_23;
          }

          v16 = v9;
          LODWORD(v17) = v8;
          [v15 setArgumentBytes:&v16 atIndex:v6 type:3 count:1 flags:?];
        }

        else
        {
          if (v16 != 5)
          {
            goto LABEL_23;
          }

          if (v10 == 4)
          {
            [v15 setArgumentBytes:v9 + 32 atIndex:v6 type:5 count:*(v9 + 16) >> 2 flags:HIDWORD(v16)];
            goto LABEL_29;
          }

          if (v10 != 3)
          {
            goto LABEL_23;
          }

          v16 = v9;
          v17 = v8;
          [v15 setArgumentBytes:&v16 atIndex:v6 type:5 count:1 flags:?];
        }
      }

      else
      {
        if (v16 == 1)
        {
          switch(v10)
          {
            case 4:
              [v15 setArgumentBytes:v9 + 32 atIndex:v6 type:1 count:*(v9 + 16) flags:HIDWORD(v16)];
LABEL_29:
              v11 = v9;
              v12 = v8;
              v13 = 4;
              break;
            case 3:
              v16 = v9;
              v17 = v8;
              goto LABEL_27;
            case 0:
              LODWORD(v16) = v9;
LABEL_27:
              [v15 setArgumentBytes:&v16 atIndex:v6 type:1 count:1 flags:?];
              goto LABEL_5;
            default:
LABEL_23:
              v11 = v9;
              v12 = v8;
              v13 = v10;
              break;
          }

          outlined consume of ShaderVectorData.Element(v11, v12, v13);
          goto LABEL_5;
        }

        if (v16 != 2 || v10 != 1)
        {
          goto LABEL_23;
        }

        v16 = v9;
        [v15 setArgumentBytes:&v16 atIndex:v6 type:2 count:1 flags:?];
      }

LABEL_5:
      ++v6;
      v7 += 24;
    }

    while (v5 != v6);
  }

  return v4;
}

void (*Shader.ResolvedShader.animatableData.modify(uint64_t a1))(uint64_t a1, char a2)
{
  v3 = *v1;
  *(a1 + 8) = v1;
  *(a1 + 16) = v3;
  v4 = v3;
  ShaderVectorData.init(rbShader:)(v3, a1);
  return Shader.ResolvedShader.animatableData.modify;
}

void Shader.ResolvedShader.animatableData.modify(uint64_t a1, char a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (a2)
  {

    v4 = ShaderVectorData.updating(rbShader:)(v2);

    *v3 = v4;
  }

  else
  {
    v5 = ShaderVectorData.updating(rbShader:)(v2);

    *v3 = v5;
  }
}

void protocol witness for Animatable.animatableData.getter in conformance Shader.ResolvedShader(char **a1@<X8>)
{
  v3 = *v1;
  v4 = v3;

  ShaderVectorData.init(rbShader:)(v3, a1);
}

void protocol witness for Animatable.animatableData.setter in conformance Shader.ResolvedShader()
{
  v1 = v0;
  v2 = *v0;
  v3 = ShaderVectorData.updating(rbShader:)(*v0);

  *v1 = v3;
}

void (*protocol witness for Animatable.animatableData.modify in conformance Shader.ResolvedShader(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = Shader.ResolvedShader.animatableData.modify(v2);
  return protocol witness for Animatable.animatableData.modify in conformance LinearGradient._Paint;
}

id Shader.ResolvedShader.effectValue(size:)@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v15 = *v3;
  v7 = *(v3 + 8);
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v10 = swift_allocObject();
  *&v16 = v15;
  *(&v16 + 1) = v7;
  *&v17 = v8;
  DWORD2(v17) = v9;
  *&v18 = a2;
  *(&v18 + 1) = a3;
  _s7SwiftUI14GraphicsFilterOWOi17_(&v16);
  v11 = v21;
  v10[5] = v20;
  v10[6] = v11;
  v10[7] = v22[0];
  *(v10 + 124) = *(v22 + 12);
  v12 = v17;
  v10[1] = v16;
  v10[2] = v12;
  v13 = v19;
  v10[3] = v18;
  v10[4] = v13;
  *a1 = v10;
  *(a1 + 8) = 0;
  *(a1 + 12) = 10;

  return v15;
}

id protocol witness for _RendererEffect.effectValue(size:) in conformance Shader.ResolvedShader@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v15 = *v3;
  v7 = *(v3 + 8);
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v10 = swift_allocObject();
  *&v16 = v15;
  *(&v16 + 1) = v7;
  *&v17 = v8;
  DWORD2(v17) = v9;
  *&v18 = a2;
  *(&v18 + 1) = a3;
  _s7SwiftUI14GraphicsFilterOWOi17_(&v16);
  v11 = v21;
  v10[5] = v20;
  v10[6] = v11;
  v10[7] = v22[0];
  *(v10 + 124) = *(v22 + 12);
  v12 = v17;
  v10[1] = v16;
  v10[2] = v12;
  v13 = v19;
  v10[3] = v18;
  v10[4] = v13;
  *a1 = v10;
  *(a1 + 8) = 0;
  *(a1 + 12) = 10;

  return v15;
}

uint64_t static ShaderVectorData.- infix(_:_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void *, uint64_t *)@<X2>, void *a4@<X8>)
{
  v6 = *a2;
  *a4 = *a1;
  v8 = v6;

  return a3(a4, &v8);
}

Swift::Void __swiftcall ShaderVectorData.Element.scale(by:)(Swift::Double by)
{
  v2 = *v1;
  v3 = v1[1].u8[0];
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v17 = by;
      v18 = vmul_n_f32(vmovn_s64(v2), v17);
      v19.i64[0] = v18.u32[0];
      v19.i64[1] = v18.u32[1];
      v5 = vorrq_s8(vshll_n_s32(vmul_n_f32(vshrn_n_s64(v2, 0x20uLL), v17), 0x20uLL), v19);
    }

    else
    {
      if (v3 != 4)
      {
        return;
      }

      v6 = v1->i64[0];
      v7 = *(v2.i64[0] + 16);
      if (v7)
      {
        v21 = *v1;
        v22 = MEMORY[0x1E69E7CC0];
        v8 = v1;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
        v10 = by;
        v11 = v22;
        v12 = (v6 + 32);
        v13 = *(v22 + 16);
        do
        {
          v14 = *v12;
          v15 = *(v22 + 24);
          if (v13 >= v15 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v13 + 1, 1);
            v1 = v8;
          }

          *(v22 + 16) = v13 + 1;
          *(v22 + 4 * v13 + 32) = v14 * v10;
          ++v12;
          ++v13;
          --v7;
        }

        while (v7);
        outlined consume of ShaderVectorData.Element(v6, v21.i64[1], 4);
      }

      else
      {
        outlined consume of ShaderVectorData.Element(v2.i64[0], v2.i64[1], 4);
        v11 = MEMORY[0x1E69E7CC0];
      }

      v5 = v11;
    }
  }

  else if (v1[1].i8[0])
  {
    v4 = by;
    if (v3 == 1)
    {
      v5 = COERCE_UNSIGNED_INT(v4 * *v2.i32) | (COERCE_UNSIGNED_INT(v4 * *&v2.i32[1]) << 32);
    }

    else
    {
      v20 = COERCE_UNSIGNED_INT(vmuls_lane_f32(v4, v2, 2));
      *&v5 = COERCE_UNSIGNED_INT(v4 * *v2.i32) | (COERCE_UNSIGNED_INT(v4 * *&v2.i32[1]) << 32);
      *(&v5 + 1) = v20;
    }
  }

  else
  {
    v16 = by;
    DWORD1(v5) = 0;
    *(&v5 + 1) = 0;
    *&v5 = v16 * *v2.i32;
  }

  *v1 = v5;
  v1[1].i8[0] = v3;
}

double ShaderVectorData.Element.magnitudeSquared.getter(float32x4_t *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 2u)
  {
    if (a3 == 3)
    {
      return ((*(&a2 + 1) * *(&a2 + 1)) + ((*&a2 * *&a2) + ((*&a1 * *&a1) + (*(&a1 + 1) * *(&a1 + 1)))));
    }

    else
    {
      result = 0.0;
      if (a3 != 4)
      {
        return result;
      }

      v8 = a1[1].u64[0];
      if (!v8)
      {
        return result;
      }

      if (v8 > 7)
      {
        v9 = v8 & 0x7FFFFFFFFFFFFFF8;
        v11 = a1 + 3;
        v10 = 0.0;
        v12 = v8 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v13 = vmulq_f32(v11[-1], v11[-1]);
          v14 = vmulq_f32(*v11, *v11);
          v10 = (((((((v10 + v13.f32[0]) + v13.f32[1]) + v13.f32[2]) + v13.f32[3]) + v14.f32[0]) + v14.f32[1]) + v14.f32[2]) + v14.f32[3];
          v11 += 2;
          v12 -= 8;
        }

        while (v12);
        if (v8 == v9)
        {
          return v10;
        }
      }

      else
      {
        v9 = 0;
        v10 = 0.0;
      }

      v15 = v8 - v9;
      v16 = &a1[2].f32[v9];
      do
      {
        v17 = *v16++;
        v10 = v10 + (v17 * v17);
        --v15;
      }

      while (v15);
    }

    return v10;
  }

  v3 = *&a1;
  v4 = (v3 * v3);
  v5 = *(&a1 + 1);
  v6 = ((v3 * v3) + (v5 * v5));
  result = ((*&a2 * *&a2) + ((v3 * v3) + (v5 * v5)));
  if (a3 == 1)
  {
    result = v6;
  }

  if (!a3)
  {
    return v4;
  }

  return result;
}

uint64_t protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance ShaderVectorData@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void *, uint64_t *)@<X4>, void *a4@<X8>)
{
  v6 = *a2;
  *a4 = *a1;
  v8 = v6;

  return a3(a4, &v8);
}

void protocol witness for static AdditiveArithmetic.zero.getter in conformance ShaderVectorData.Element(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 5;
}

double protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance ShaderVectorData.Element@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void (*a3)(__int128 *, uint64_t, uint64_t, uint64_t)@<X4>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 8);
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a1 + 16);
  v10 = *(a2 + 16);
  *&v13 = *a1;
  *(&v13 + 1) = v6;
  v14 = v9;
  outlined copy of ShaderVectorData.Element(v13, v6, v9);
  a3(&v13, v7, v8, v10);
  v11 = v14;
  result = *&v13;
  *a4 = v13;
  *(a4 + 16) = v11;
  return result;
}

BOOL specialized static Shader.ResolvedShader.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *a2;
  v8 = *(a2 + 8);
  v7 = *(a2 + 16);
  v9 = *(a2 + 24);
  if (!*a1)
  {
    if (v6)
    {
      v15 = 0;
    }

    else
    {
      v15 = v4 == v8;
    }

    if (v15 && v3 == v7)
    {
      return v5 == v9;
    }

    return 0;
  }

  if (!v6)
  {
    return 0;
  }

  type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for RBShader);
  v10 = v6;
  v11 = v2;
  v12 = static NSObject.== infix(_:_:)();

  result = 0;
  if ((v12 & 1) != 0 && v4 == v8 && v3 == v7)
  {
    return v5 == v9;
  }

  return result;
}

uint64_t specialized static ShaderVectorData.Element.== infix(_:_:)(uint64_t result, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 > 2u)
  {
    if (a3 != 3)
    {
      if (a3 == 4)
      {
        if (a6 != 4)
        {
          return 0;
        }

        v6 = *(result + 16);
        if (v6 != *(a4 + 16))
        {
          return 0;
        }

        if (v6 && result != a4)
        {
          v7 = (result + 32);
          v8 = (a4 + 32);
          while (v6)
          {
            v9 = *v7++;
            v10 = v9;
            v11 = *v8++;
            result = v10 == v11;
            if (v10 != v11 || v6-- == 1)
            {
              return result;
            }
          }

          __break(1u);
          return result;
        }
      }

      else if (a6 != 5 || a5 | a4)
      {
        return 0;
      }

      return 1;
    }

    if (a6 != 3)
    {
      return 0;
    }

    v13 = *(&a2 + 1) == *(&a5 + 1);
    if (*&a2 != *&a5)
    {
      v13 = 0;
    }

    if (*(&result + 1) != *(&a4 + 1))
    {
      v13 = 0;
    }

    return *&result == *&a4 && v13;
  }

  else
  {
    if (!a3)
    {
      if (!a6)
      {
        return *&result == *&a4;
      }

      return 0;
    }

    if (a3 == 1)
    {
      if (a6 == 1)
      {
        return *&result == *&a4 && *(&result + 1) == *(&a4 + 1);
      }

      return 0;
    }

    if (a6 != 2)
    {
      return 0;
    }

    v14 = *&a2 == *&a5;
    if (*(&result + 1) != *(&a4 + 1))
    {
      v14 = 0;
    }

    return *&result == *&a4 && v14;
  }
}

uint64_t specialized static ShaderVectorData.Element.+= infix(_:_:)(int64x2_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = *a1;
  v8 = a1[1].u8[0];
  if (v8 <= 2)
  {
    if (a1[1].i8[0])
    {
      if (v8 == 1)
      {
        if (a4 == 1)
        {
          LODWORD(v9) = HIDWORD(a1->i64[0]);
          v10 = COERCE_FLOAT(*a1);
          outlined consume of ShaderVectorData.Element(v7.i64[0], v7.i64[1], 1);
          result = outlined consume of ShaderVectorData.Element(a2, a3, 1);
          a1->i64[0] = COERCE_UNSIGNED_INT(*&a2 + v10) | (COERCE_UNSIGNED_INT(*(&a2 + 1) + v9) << 32);
          a1->i64[1] = 0;
          a1[1].i8[0] = 1;
          return result;
        }

        v54 = *a1;
        outlined copy of ShaderVectorData.Element(a2, a3, a4);
        v23 = v54.i64[1];
        v22 = v54.i64[0];
        v24 = 1;
      }

      else
      {
        if (a4 == 2)
        {
          v31 = COERCE_FLOAT(a1->i64[1]);
          LODWORD(v32) = HIDWORD(a1->i64[0]);
          v33 = COERCE_FLOAT(*a1);
          outlined consume of ShaderVectorData.Element(v7.i64[0], v7.i64[1], 2);
          result = outlined consume of ShaderVectorData.Element(a2, a3, 2);
          a1->i64[0] = COERCE_UNSIGNED_INT(*&a2 + v33) | (COERCE_UNSIGNED_INT(*(&a2 + 1) + v32) << 32);
          a1->i64[1] = COERCE_UNSIGNED_INT(*&a3 + v31);
          a1[1].i8[0] = 2;
          return result;
        }

        v56 = *a1;
        outlined copy of ShaderVectorData.Element(a2, a3, a4);
        v23 = v56.i64[1];
        v22 = v56.i64[0];
        v24 = 2;
      }
    }

    else
    {
      if (!a4)
      {
        v38 = COERCE_FLOAT(*a1);
        outlined consume of ShaderVectorData.Element(v7.i64[0], v7.i64[1], 0);
        result = outlined consume of ShaderVectorData.Element(a2, a3, 0);
        a1->i64[0] = COERCE_UNSIGNED_INT(*&a2 + v38);
        a1->i64[1] = 0;
        a1[1].i8[0] = 0;
        return result;
      }

      v51 = *a1;
      outlined copy of ShaderVectorData.Element(a2, a3, a4);
      v23 = v51.i64[1];
      v22 = v51.i64[0];
      v24 = 0;
    }

    goto LABEL_28;
  }

  if (v8 == 3)
  {
    v52 = *a1;
    if (a4 == 3)
    {
      v25 = vmovn_s64(v7);
      v26.i64[0] = a2;
      v26.i64[1] = a3;
      v50 = v26;
      v27 = vmovn_s64(v26);
      outlined consume of ShaderVectorData.Element(v7.i64[0], v7.i64[1], 3);
      result = outlined consume of ShaderVectorData.Element(a2, a3, 3);
      v29 = vadd_f32(v27, v25);
      v30.i64[0] = v29.u32[0];
      v30.i64[1] = v29.u32[1];
      *a1 = vorrq_s8(vshll_n_s32(vadd_f32(vshrn_n_s64(v50, 0x20uLL), vshrn_n_s64(v52, 0x20uLL)), 0x20uLL), v30);
      a1[1].i8[0] = 3;
      return result;
    }

    outlined copy of ShaderVectorData.Element(a2, a3, a4);
    v23 = v52.i64[1];
    v22 = v52.i64[0];
    v24 = 3;
    goto LABEL_28;
  }

  if (v8 != 4)
  {
    v53 = *a1;
    outlined copy of ShaderVectorData.Element(a2, a3, a4);
    v23 = v53.i64[1];
    v22 = v53.i64[0];
    v24 = 5;
LABEL_28:
    outlined consume of ShaderVectorData.Element(v22, v23, v24);
    v35 = a2;
    v36 = a3;
    v37 = a4;
LABEL_29:

    return outlined consume of ShaderVectorData.Element(v35, v36, v37);
  }

  v13 = a1->i64[0];
  if (a4 != 4)
  {
    v55 = *a1;
    outlined copy of ShaderVectorData.Element(a2, a3, a4);
    outlined copy of ShaderVectorData.Element(v13, v55.i64[1], 4);
    v22 = v13;
    v23 = v55.i64[1];
    v24 = 4;
    goto LABEL_28;
  }

  v14 = *(v7.i64[0] + 16);
  v15 = a1->i64[1];
  if (v14 != *(a2 + 16))
  {
    outlined copy of ShaderVectorData.Element(a2, a3, 4);
    outlined copy of ShaderVectorData.Element(v13, v15, 4);
    outlined consume of ShaderVectorData.Element(v13, v15, 4);
    v35 = a2;
    v36 = a3;
    v37 = 4;
    goto LABEL_29;
  }

  outlined copy of ShaderVectorData.Element(v7.i64[0], v7.i64[1], 4);
  outlined copy of ShaderVectorData.Element(a2, a3, 4);
  outlined copy of ShaderVectorData.Element(v13, v15, 4);
  if (v14)
  {
    v16 = v13;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_52;
    }

    while (1)
    {
      v17 = a2 + 32;
      v18 = *(v16 + 2);
      v19 = v14 - 1;
      if (v18 >= v14 - 1)
      {
        v20 = v14 - 1;
      }

      else
      {
        v20 = *(v16 + 2);
      }

      if (v20 >= 8)
      {
        if (v18 < v19)
        {
          v19 = *(v16 + 2);
        }

        v40 = 4 * v19 + 36;
        if ((v16 + 32) >= a2 + v40 || v17 >= &v16[v40])
        {
          v42 = v20 + 1;
          v43 = v42 & 7;
          if ((v42 & 7) == 0)
          {
            v43 = 8;
          }

          v21 = v42 - v43;
          v44 = (a2 + 48);
          v45 = (v16 + 48);
          v46 = v21;
          do
          {
            v47 = vaddq_f32(*v44, *v45);
            v45[-1] = vaddq_f32(v44[-1], v45[-1]);
            *v45 = v47;
            v44 += 2;
            v45 += 2;
            v46 -= 8;
          }

          while (v46);
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        v21 = 0;
      }

      while (v21 < v18)
      {
        v48 = 4 * v21;
        v49 = *(v17 + 4 * v21++);
        *&v16[v48 + 32] = v49 + *&v16[v48 + 32];
        if (v14 == v21)
        {
          goto LABEL_48;
        }
      }

      __break(1u);
LABEL_52:
      v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
    }
  }

LABEL_48:
  outlined consume of ShaderVectorData.Element(v13, v15, 4);
  outlined consume of ShaderVectorData.Element(a2, a3, 4);
}

uint64_t specialized static ShaderVectorData.+= infix(_:_:)(uint64_t result, uint64_t *a2)
{
  v2 = result;
  v3 = *a2;
  v4 = *result;
  v5 = *(*result + 16);
  if (v5 == *(*a2 + 16))
  {
    if (v5)
    {
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v8 = *(v3 + v6 + 32);
        v9 = *(v3 + v6 + 40);
        v10 = *(v3 + v6 + 48);
        outlined copy of ShaderVectorData.Element(v8, v9, v10);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
          v4 = result;
        }

        if (v7 >= *(v4 + 16))
        {
          break;
        }

        ++v7;
        specialized static ShaderVectorData.Element.+= infix(_:_:)((v4 + v6 + 32), v8, v9, v10);
        result = outlined consume of ShaderVectorData.Element(v8, v9, v10);
        v6 += 24;
        if (v5 == v7)
        {
          *v2 = v4;
          return result;
        }
      }

      __break(1u);
    }
  }

  else if (!v5)
  {

    *v2 = v3;
  }

  return result;
}

uint64_t specialized static ShaderVectorData.Element.-= infix(_:_:)(int64x2_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = *a1;
  v9 = a1[1].u8[0];
  if (v9 <= 2)
  {
    if (a1[1].i8[0])
    {
      if (v9 == 1)
      {
        if (a4 == 1)
        {
          LODWORD(v10) = HIDWORD(a1->i64[0]);
          v11 = COERCE_FLOAT(*a1);
          outlined consume of ShaderVectorData.Element(v8.i64[0], v8.i64[1], 1);
          result = outlined consume of ShaderVectorData.Element(a2, a3, 1);
          a1->i64[0] = COERCE_UNSIGNED_INT(v11 - *&a2) | (COERCE_UNSIGNED_INT(v10 - *(&a2 + 1)) << 32);
          a1->i64[1] = 0;
          a1[1].i8[0] = 1;
          return result;
        }

        v51 = *a1;
        outlined copy of ShaderVectorData.Element(a2, a3, a4);
        v23 = v51.i64[1];
        v22 = v51.i64[0];
        v24 = 1;
      }

      else
      {
        if (a4 == 2)
        {
          v30 = COERCE_FLOAT(a1->i64[1]);
          LODWORD(v31) = HIDWORD(a1->i64[0]);
          v32 = COERCE_FLOAT(*a1);
          outlined consume of ShaderVectorData.Element(v8.i64[0], v8.i64[1], 2);
          result = outlined consume of ShaderVectorData.Element(a2, a3, 2);
          a1->i64[0] = COERCE_UNSIGNED_INT(v32 - *&a2) | (COERCE_UNSIGNED_INT(v31 - *(&a2 + 1)) << 32);
          a1->i64[1] = COERCE_UNSIGNED_INT(v30 - *&a3);
          a1[1].i8[0] = 2;
          return result;
        }

        v53 = *a1;
        outlined copy of ShaderVectorData.Element(a2, a3, a4);
        v23 = v53.i64[1];
        v22 = v53.i64[0];
        v24 = 2;
      }
    }

    else
    {
      if (!a4)
      {
        v36 = COERCE_FLOAT(*a1);
        outlined consume of ShaderVectorData.Element(v8.i64[0], v8.i64[1], 0);
        result = outlined consume of ShaderVectorData.Element(a2, a3, 0);
        a1->i64[0] = COERCE_UNSIGNED_INT(v36 - *&a2);
        a1->i64[1] = 0;
        a1[1].i8[0] = 0;
        return result;
      }

      v48 = *a1;
      outlined copy of ShaderVectorData.Element(a2, a3, a4);
      v23 = v48.i64[1];
      v22 = v48.i64[0];
      v24 = 0;
    }

    goto LABEL_28;
  }

  if (v9 == 3)
  {
    v49 = *a1;
    if (a4 == 3)
    {
      v25 = vmovn_s64(v8);
      v26.i64[0] = a2;
      v26.i64[1] = a3;
      v47 = v26;
      v27 = vmovn_s64(v26);
      outlined consume of ShaderVectorData.Element(v8.i64[0], v8.i64[1], 3);
      result = outlined consume of ShaderVectorData.Element(a2, a3, 3);
      v28 = vsub_f32(v25, v27);
      v29.i64[0] = v28.u32[0];
      v29.i64[1] = v28.u32[1];
      *a1 = vorrq_s8(vshll_n_s32(vsub_f32(vshrn_n_s64(v49, 0x20uLL), vshrn_n_s64(v47, 0x20uLL)), 0x20uLL), v29);
      a1[1].i8[0] = 3;
      return result;
    }

    outlined copy of ShaderVectorData.Element(a2, a3, a4);
    v23 = v49.i64[1];
    v22 = v49.i64[0];
    v24 = 3;
    goto LABEL_28;
  }

  if (v9 != 4)
  {
    a1->i64[0] = a2;
    a1->i64[1] = a3;
    a1[1].i8[0] = a4;
    v50 = v8;
    outlined copy of ShaderVectorData.Element(a2, a3, a4);
    outlined copy of ShaderVectorData.Element(a2, a3, a4);
    ShaderVectorData.Element.scale(by:)(-1.0);
    v23 = v50.i64[1];
    v22 = v50.i64[0];
    v24 = 5;
LABEL_28:
    outlined consume of ShaderVectorData.Element(v22, v23, v24);
    v33 = a2;
    v34 = a3;
    v35 = a4;
LABEL_29:

    return outlined consume of ShaderVectorData.Element(v33, v34, v35);
  }

  v13 = a1->i64[0];
  if (a4 != 4)
  {
    v52 = *a1;
    outlined copy of ShaderVectorData.Element(a2, a3, a4);
    outlined copy of ShaderVectorData.Element(v13, v52.i64[1], 4);
    v22 = v13;
    v23 = v52.i64[1];
    v24 = 4;
    goto LABEL_28;
  }

  v14 = *(v8.i64[0] + 16);
  v15 = a1->i64[1];
  if (v14 != *(a2 + 16))
  {
    outlined copy of ShaderVectorData.Element(a2, a3, 4);
    outlined copy of ShaderVectorData.Element(v13, v15, 4);
    outlined consume of ShaderVectorData.Element(v13, v15, 4);
    v33 = a2;
    v34 = a3;
    v35 = 4;
    goto LABEL_29;
  }

  outlined copy of ShaderVectorData.Element(v8.i64[0], v8.i64[1], 4);
  outlined copy of ShaderVectorData.Element(a2, a3, 4);
  outlined copy of ShaderVectorData.Element(v13, v15, 4);
  if (v14)
  {
    v16 = v13;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_52;
    }

    while (1)
    {
      v17 = a2 + 32;
      v18 = *(v16 + 2);
      v19 = v14 - 1;
      if (v18 >= v14 - 1)
      {
        v20 = v14 - 1;
      }

      else
      {
        v20 = *(v16 + 2);
      }

      if (v20 >= 8)
      {
        if (v18 < v19)
        {
          v19 = *(v16 + 2);
        }

        v37 = 4 * v19 + 36;
        if ((v16 + 32) >= a2 + v37 || v17 >= &v16[v37])
        {
          v39 = v20 + 1;
          v40 = v39 & 7;
          if ((v39 & 7) == 0)
          {
            v40 = 8;
          }

          v21 = v39 - v40;
          v41 = (a2 + 48);
          v42 = (v16 + 48);
          v43 = v21;
          do
          {
            v44 = vsubq_f32(*v42, *v41);
            v42[-1] = vsubq_f32(v42[-1], v41[-1]);
            *v42 = v44;
            v41 += 2;
            v42 += 2;
            v43 -= 8;
          }

          while (v43);
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        v21 = 0;
      }

      while (v21 < v18)
      {
        v45 = 4 * v21;
        v46 = *(v17 + 4 * v21++);
        *&v16[v45 + 32] = *&v16[v45 + 32] - v46;
        if (v14 == v21)
        {
          goto LABEL_48;
        }
      }

      __break(1u);
LABEL_52:
      v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
    }
  }

LABEL_48:
  outlined consume of ShaderVectorData.Element(v13, v15, 4);
  outlined consume of ShaderVectorData.Element(a2, a3, 4);
}

void specialized static ShaderVectorData.-= infix(_:_:)(char **a1, char **a2)
{
  v3 = *a2;
  v4 = *a1;
  v5 = *(*a1 + 2);
  if (v5 == *(*a2 + 2))
  {
    if (v5)
    {
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v8 = *&v3[v6 + 32];
        v9 = *&v3[v6 + 40];
        v10 = v3[v6 + 48];
        outlined copy of ShaderVectorData.Element(v8, v9, v10);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
        }

        if (v7 >= *(v4 + 2))
        {
          break;
        }

        ++v7;
        specialized static ShaderVectorData.Element.-= infix(_:_:)(&v4[v6 + 32], v8, v9, v10);
        outlined consume of ShaderVectorData.Element(v8, v9, v10);
        v6 += 24;
        if (v5 == v7)
        {
          *a1 = v4;
          return;
        }
      }

      __break(1u);
    }
  }

  else if (!v5)
  {

    *a1 = v3;

    ShaderVectorData.scale(by:)(-1.0);
  }
}

uint64_t outlined consume of ShaderVectorData.Element(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 4)
  {
  }

  return result;
}

uint64_t specialized static Shader.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI6ShaderV8ArgumentV_Tt1g5(v3, v5) & (v4 == v6);
  }

  else
  {
    return 0;
  }
}

uint64_t specialized static Shader.Argument.Storage.== infix(_:_:)(float *a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  if (BYTE4(a3) <= 4u)
  {
    if (BYTE4(a3) <= 1u)
    {
      if (BYTE4(a3))
      {
        if (BYTE4(a6) == 1)
        {
          return *&a1 == *&a4 && *(&a1 + 1) == *(&a4 + 1);
        }
      }

      else if (!BYTE4(a6))
      {
        return *&a1 == *&a4;
      }

      return 0;
    }

    if (BYTE4(a3) == 2)
    {
      if (BYTE4(a6) != 2)
      {
        return 0;
      }

      v8 = *&a2 == *&a5;
      if (*(&a1 + 1) != *(&a4 + 1))
      {
        v8 = 0;
      }

      return *&a1 == *&a4 && v8;
    }

    else
    {
      if (BYTE4(a3) != 3)
      {
        if (BYTE4(a6) != 4)
        {
          return 0;
        }

        v9 = *(a1 + 2);
        if (v9 != *(a4 + 16))
        {
          return 0;
        }

        if (v9 && a1 != a4)
        {
          v10 = a1 + 8;
          v11 = (a4 + 32);
          while (v9)
          {
            v12 = *v10++;
            v13 = v12;
            v14 = *v11++;
            result = v13 == v14;
            if (v13 != v14 || v9-- == 1)
            {
              return result;
            }
          }

          __break(1u);
          return 0;
        }

        return 1;
      }

      if (BYTE4(a6) != 3)
      {
        return 0;
      }

      v7 = *(&a2 + 1) == *(&a5 + 1);
      if (*&a2 != *&a5)
      {
        v7 = 0;
      }

      if (*(&a1 + 1) != *(&a4 + 1))
      {
        v7 = 0;
      }

      return *&a1 == *&a4 && v7;
    }
  }

  else
  {
    if (BYTE4(a3) <= 7u)
    {
      if (BYTE4(a3) == 5)
      {
        if (BYTE4(a6) != 5)
        {
          return 0;
        }

        if (a1 != a4)
        {
          return (*(*a1 + 88))(a4) & 1;
        }
      }

      else
      {
        if (BYTE4(a3) == 6)
        {
          if (BYTE4(a6) == 6)
          {

            return _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI5ColorV_Tt1g5(a1, a4);
          }

          return 0;
        }

        if (BYTE4(a6) != 7 || *&a1 != *&a4 || *(&a1 + 1) != *(&a4 + 1) || *&a2 != *&a5 || *(&a2 + 1) != *(&a5 + 1) || *&a3 != *&a6)
        {
          return 0;
        }
      }

      return 1;
    }

    if (BYTE4(a3) == 8)
    {
      if (BYTE4(a6) != 8)
      {
        return 0;
      }

      if (a1 != a4)
      {
        return (*(*a1 + 96))(a4) & 1;
      }

      return 1;
    }

    if (BYTE4(a3) != 9)
    {
      return BYTE4(a6) == 10 && !(a5 | a4) && !a6;
    }

    if (BYTE4(a6) != 9)
    {
      return 0;
    }

    return specialized static Data.== infix(_:_:)(a1, a2, a4, a5);
  }
}

unint64_t lazy protocol witness table accessor for type Shader.Options and conformance Shader.Options()
{
  result = lazy protocol witness table cache variable for type Shader.Options and conformance Shader.Options;
  if (!lazy protocol witness table cache variable for type Shader.Options and conformance Shader.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Shader.Options and conformance Shader.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Shader.Options and conformance Shader.Options;
  if (!lazy protocol witness table cache variable for type Shader.Options and conformance Shader.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Shader.Options and conformance Shader.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Shader.Options and conformance Shader.Options;
  if (!lazy protocol witness table cache variable for type Shader.Options and conformance Shader.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Shader.Options and conformance Shader.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Shader.Options and conformance Shader.Options;
  if (!lazy protocol witness table cache variable for type Shader.Options and conformance Shader.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Shader.Options and conformance Shader.Options);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Shader.UsageType and conformance Shader.UsageType()
{
  result = lazy protocol witness table cache variable for type Shader.UsageType and conformance Shader.UsageType;
  if (!lazy protocol witness table cache variable for type Shader.UsageType and conformance Shader.UsageType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Shader.UsageType and conformance Shader.UsageType);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for Shader.ResolvedShader(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type Shader.ResolvedShader and conformance Shader.ResolvedShader();
  result = lazy protocol witness table accessor for type Shader.ResolvedShader and conformance Shader.ResolvedShader();
  *(a1 + 16) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type Shader.ResolvedShader and conformance Shader.ResolvedShader();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for ShaderVectorData(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ShaderVectorData and conformance ShaderVectorData();
  *(a1 + 8) = result;
  return result;
}

void *initializeBufferWithCopyOfBuffer for ShaderFunction(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  a1[2] = *(a2 + 16);
  v5 = v3;

  return a1;
}

uint64_t assignWithCopy for ShaderFunction(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithTake for ShaderFunction(uint64_t a1, void *a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = a2[2];
  *(a1 + 8) = a2[1];
  *(a1 + 16) = v5;

  return a1;
}

uint64_t initializeWithCopy for Shader(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;
  *(a1 + 32) = *(a2 + 32);
  v6 = v3;

  return a1;
}

uint64_t assignWithCopy for Shader(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t assignWithTake for Shader(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t getEnumTagSinglePayload for Shader(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 36))
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

uint64_t storeEnumTagSinglePayload for Shader(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 36) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 36) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy21_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t initializeWithCopy for Shader.ResolvedShader(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  v4 = v3;
  return a1;
}

uint64_t assignWithCopy for Shader.ResolvedShader(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  v6 = v5;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t assignWithTake for Shader.ResolvedShader(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t getEnumTagSinglePayload for Shader.ResolvedShader(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 28))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for Shader.ResolvedShader(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 28) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 28) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t assignWithCopy for _ShaderFilterEffect(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t assignWithTake for _ShaderFilterEffect(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t outlined copy of ShaderVectorData.Element(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 4)
  {
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ShaderVectorData.Element(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of ShaderVectorData.Element(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for ShaderVectorData.Element(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of ShaderVectorData.Element(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  outlined consume of ShaderVectorData.Element(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for ShaderVectorData.Element(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  outlined consume of ShaderVectorData.Element(v4, v5, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for ShaderVectorData.Element(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ShaderVectorData.Element(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
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

uint64_t getEnumTag for ShaderVectorData.Element(uint64_t a1)
{
  if (*(a1 + 16) <= 4u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t destructiveInjectEnumTag for ShaderVectorData.Element(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for Shader.Argument(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 20);
  outlined copy of Shader.Argument.Storage(*a2, v4, v5, v6);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 20) = v6;
  return a1;
}

uint64_t assignWithCopy for Shader.Argument(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 20);
  outlined copy of Shader.Argument.Storage(*a2, v4, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  v10 = *(a1 + 20);
  *(a1 + 20) = v6;
  outlined consume of Shader.Argument.Storage(v7, v8, v9, v10);
  return a1;
}

uint64_t assignWithTake for Shader.Argument(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 20);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v8 = *(a1 + 20);
  *(a1 + 20) = v4;
  outlined consume of Shader.Argument.Storage(v5, v6, v7, v8);
  return a1;
}

uint64_t getEnumTagSinglePayload for Shader.Argument(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF6 && *(a1 + 21))
  {
    return (*a1 + 246);
  }

  v3 = *(a1 + 20);
  if (v3 <= 0xA)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for Shader.Argument(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF5)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 246;
    *(result + 8) = 0;
    if (a3 >= 0xF6)
    {
      *(result + 21) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF6)
    {
      *(result + 21) = 0;
    }

    if (a2)
    {
      *(result + 20) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for Shader.Argument.Storage(uint64_t a1)
{
  if (*(a1 + 20) <= 9u)
  {
    return *(a1 + 20);
  }

  else
  {
    return (*a1 + 10);
  }
}

uint64_t destructiveInjectEnumTag for Shader.Argument.Storage(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xA)
  {
    *result = a2 - 10;
    *(result + 8) = 0;
    LOBYTE(a2) = 10;
    *(result + 16) = 0;
  }

  *(result + 20) = a2;
  return result;
}

unint64_t instantiation function for generic protocol witness table for _ShaderFilterEffect.ResolvedEffect(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _ShaderFilterEffect.ResolvedEffect and conformance _ShaderFilterEffect.ResolvedEffect();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for ShaderVectorData.Element(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ShaderVectorData.Element and conformance ShaderVectorData.Element();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ShaderVectorData.Element and conformance ShaderVectorData.Element()
{
  result = lazy protocol witness table cache variable for type ShaderVectorData.Element and conformance ShaderVectorData.Element;
  if (!lazy protocol witness table cache variable for type ShaderVectorData.Element and conformance ShaderVectorData.Element)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShaderVectorData.Element and conformance ShaderVectorData.Element);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShaderVectorData.Element and conformance ShaderVectorData.Element;
  if (!lazy protocol witness table cache variable for type ShaderVectorData.Element and conformance ShaderVectorData.Element)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShaderVectorData.Element and conformance ShaderVectorData.Element);
  }

  return result;
}

uint64_t outlined init with copy of (value: _ShaderFilterEffect, changed: Bool)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (value: _ShaderFilterEffect, changed: Bool)();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for (value: _ShaderFilterEffect, changed: Bool)()
{
  if (!lazy cache variable for type metadata for (value: _ShaderFilterEffect, changed: Bool))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (value: _ShaderFilterEffect, changed: Bool));
    }
  }
}

void type metadata accessor for CheckedContinuation<(), Error>()
{
  if (!lazy cache variable for type metadata for CheckedContinuation<(), Error>)
  {
    type metadata accessor for Error();
    v0 = type metadata accessor for CheckedContinuation();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CheckedContinuation<(), Error>);
    }
  }
}

uint64_t partial apply for closure #1 in closure #1 in Shader.compile(as:)(void *a1)
{
  type metadata accessor for CheckedContinuation<(), Error>();

  return closure #1 in closure #1 in Shader.compile(as:)(a1);
}

void FocusableBorder.bounds.setter(double a1, double a2, double a3, double a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

void FocusableBorder.depth.setter(double a1, double a2, double a3, double a4)
{
  v4[4] = a1;
  v4[5] = a2;
  v4[6] = a3;
  v4[7] = a4;
}

void FocusableBorder.init(bounds:depth:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>, double a8@<D6>, double a9@<D7>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  a1[4] = a6;
  a1[5] = a7;
  a1[6] = a8;
  a1[7] = a9;
}

void FocusableBounds.bounds.setter(double a1, double a2, double a3, double a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

void FocusableFillerBounds.Metrics.init(size:spacing:lowerInset:upperInset:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
}

void FocusableFillerBounds.bounds.setter(double a1, double a2, double a3, double a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

__n128 FocusableFillerBounds.horizontalMetrics.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  result = *(v1 + 32);
  v4 = *(v1 + 48);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 FocusableFillerBounds.horizontalMetrics.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = v4;
  *(v1 + 64) = v2;
  return result;
}

__n128 FocusableFillerBounds.verticalMetrics.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  result = *(v1 + 72);
  v4 = *(v1 + 88);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 FocusableFillerBounds.verticalMetrics.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 72) = *a1;
  *(v1 + 88) = v4;
  *(v1 + 104) = v2;
  return result;
}

__n128 FocusableFillerBounds.init(bounds:horizontalMetrics:verticalMetrics:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v7 = *(a1 + 32);
  v11 = *(a2 + 32);
  *a3 = a4;
  *(a3 + 8) = a5;
  *(a3 + 16) = a6;
  *(a3 + 24) = a7;
  v8 = *(a1 + 16);
  *(a3 + 32) = *a1;
  *(a3 + 48) = v8;
  *(a3 + 64) = v7;
  result = *a2;
  v10 = *(a2 + 16);
  *(a3 + 72) = *a2;
  *(a3 + 88) = v10;
  *(a3 + 104) = v11;
  return result;
}

uint64_t FocusableFillerBounds.metrics(in:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = 64;
  if (result)
  {
    v3 = 104;
  }

  v4 = 32;
  if (result)
  {
    v4 = 72;
  }

  v5 = 56;
  if (result)
  {
    v5 = 96;
  }

  v6 = 48;
  if (result)
  {
    v6 = 88;
  }

  v7 = 40;
  if (result)
  {
    v7 = 80;
  }

  v8 = *(v2 + v3);
  v9 = *(v2 + v5);
  v10 = *(v2 + v6);
  v11 = *(v2 + v7);
  *a2 = *(v2 + v4);
  *(a2 + 8) = v11;
  *(a2 + 16) = v10;
  *(a2 + 24) = v9;
  *(a2 + 32) = v8;
  return result;
}

Swift::Void __swiftcall LazyFocusableFillerBoundsProvider.updateValue()()
{
  v1 = v0;
  v92[6] = *MEMORY[0x1E69E9840];
  v2 = *(v0 + 32);
  if (v2 != *AGGraphGetValue() >> 1)
  {
    *(v0 + 32) = *AGGraphGetValue() >> 1;
    *(v0 + 40) = 0;
    *(v0 + 48) = 0;
    *(v0 + 56) = 1;
    v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI4AxisO_AC21FocusableFillerBoundsV7MetricsVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

    *(v1 + 64) = v3;
  }

  Value = AGGraphGetValue();
  v6 = *Value;
  v5 = *(Value + 8);
  v7 = *(Value + 16);
  v8 = *(Value + 24);
  v9 = *(Value + 32);
  v10 = *(Value + 40);
  v92[0] = *Value;
  v92[1] = v5;
  type metadata accessor for CGPoint(0);

  v11 = AGGraphGetValue();
  MidX = *v11;
  v13 = *(v11 + 8);
  v14 = v9 - (*v11 - v7);
  v15 = v10 - (v13 - v8);
  *&v92[4] = v14;
  *&v92[5] = v15;
  *&v92[2] = MidX;
  *&v92[3] = v13;
  v78 = 0.0;
  v79 = 0.0;
  v80 = *AGGraphGetValue();
  if (one-time initialization token for content != -1)
  {
    goto LABEL_65;
  }

  while (1)
  {
    *&v82 = static ScrollCoordinateSpace.content;
    BYTE8(v84) = 1;
    *&v87 = v6;
    *(&v87 + 1) = v5;
    *&v88 = MidX;
    *(&v88 + 1) = v13;
    *&v89 = v14;
    *(&v89 + 1) = v15;

    CGRect.convert(to:transform:)(&v82, &v87);

    outlined destroy of CoordinateSpace(&v82);
    v16 = MEMORY[0x1E69E62F8];
    _ss23_ContiguousArrayStorageCyypGMaTm_1(0, &lazy cache variable for type metadata for [_LazyLayout_PlacedSubview], &type metadata for _LazyLayout_PlacedSubview, MEMORY[0x1E69E62F8]);
    v17 = AGGraphGetValue();
    v19 = v18;
    v20 = *v17;
    _ss23_ContiguousArrayStorageCyypGMaTm_1(0, &lazy cache variable for type metadata for [FocusableFillerBounds], &type metadata for FocusableFillerBounds, v16);
    if (AGGraphGetOutputValue())
    {
      if ((*(v1 + 56) & 1) == 0 && *(v1 + 40) == *&v80)
      {
        v21 = *(&v80 + 1);
        if (*(v1 + 48) == *(&v80 + 1) && (v19 & 1) == 0)
        {
          v22 = (v1 + 56);
          *(v1 + 40) = v80;
          *(v1 + 48) = v21;
          goto LABEL_59;
        }
      }
    }

    v23 = *MEMORY[0x1E698D3F8];
    v24 = MEMORY[0x1E69E7CC0];
    v25 = MEMORY[0x1E69E7CC0];
    if (*(v1 + 24) != *MEMORY[0x1E698D3F8])
    {
      _ss23_ContiguousArrayStorageCyypGMaTm_1(0, &lazy cache variable for type metadata for [FocusableBounds], &type metadata for FocusableBounds, MEMORY[0x1E69E62F8]);

      v25 = *AGGraphGetValue();
    }

    v26 = *(v25 + 16);
    if (v26)
    {
      *&v87 = v24;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26, 0);
      v27 = v87;
      v28 = (v25 + 56);
      do
      {
        v13 = *(v28 - 3);
        v14 = *(v28 - 2);
        v15 = *(v28 - 1);
        v29 = *v28;
        v93.origin.x = v13;
        v93.origin.y = v14;
        v93.size.width = v15;
        v93.size.height = *v28;
        MidX = CGRectGetMidX(v93);
        v94.origin.x = v13;
        v94.origin.y = v14;
        v94.size.width = v15;
        v94.size.height = v29;
        MidY = CGRectGetMidY(v94);
        *&v87 = v27;
        v32 = v27[2];
        v31 = v27[3];
        if (v32 >= v31 >> 1)
        {
          v13 = MidY;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1);
          MidY = v13;
          v27 = v87;
        }

        v27[2] = v32 + 1;
        v33 = &v27[2 * v32];
        v33[4] = MidX;
        v33[5] = MidY;
        v28 += 5;
        --v26;
      }

      while (v26);
    }

    else
    {

      v27 = MEMORY[0x1E69E7CC0];
    }

    v5 = MEMORY[0x1E69E7CC0];
    v34 = MEMORY[0x1E69E7CC0];
    if (*(v1 + 28) != v23)
    {
      v34 = *AGGraphGetValue();
    }

    v35 = *(v20 + 16);
    if (v35)
    {
      v74 = v1;
      v77 = v5;

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35, 0);
      v5 = v77;
      v36 = (v20 + 32);
      for (i = v35 - 1; ; --i)
      {
        v87 = *v36;
        v38 = v36[1];
        v39 = v36[2];
        v40 = v36[4];
        v90 = v36[3];
        v91 = v40;
        v88 = v38;
        v89 = v39;
        v83 = v36[1];
        v84 = v36[2];
        v85 = v36[3];
        v86 = v36[4];
        v82 = *v36;
        outlined init with copy of _LazyLayout_PlacedSubview(&v87, v81);
        closure #2 in LazyFocusableFillerBoundsProvider.updateValue()(&v82, v92, v27, v34, &v76);
        v81[2] = v84;
        v81[3] = v85;
        v81[4] = v86;
        v81[0] = v82;
        v81[1] = v83;
        outlined destroy of _LazyLayout_PlacedSubview(v81);
        v41 = v76;
        v77 = v5;
        v43 = *(v5 + 16);
        v42 = *(v5 + 24);
        if (v43 >= v42 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1);
          v5 = v77;
        }

        *(v5 + 16) = v43 + 1;
        *(v5 + 8 * v43 + 32) = v41;
        if (!i)
        {
          break;
        }

        v36 += 5;
      }

      swift_bridgeObjectRelease_n();

      v1 = v74;
    }

    else
    {
    }

    v44 = *(v5 + 16);
    if (!v44)
    {
      break;
    }

    v45 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    while (v45 < *(v5 + 16))
    {
      v46 = *(v5 + 32 + 8 * v45);
      v47 = *(v46 + 16);
      v48 = *(v6 + 2);
      v49 = v48 + v47;
      if (__OFADD__(v48, v47))
      {
        goto LABEL_61;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v49 <= *(v6 + 3) >> 1)
      {
        if (*(v46 + 16))
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (v48 <= v49)
        {
          v51 = v48 + v47;
        }

        else
        {
          v51 = v48;
        }

        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v51, 1, v6);
        if (*(v46 + 16))
        {
LABEL_43:
          v52 = *(v6 + 2);
          if ((*(v6 + 3) >> 1) - v52 < v47)
          {
            goto LABEL_63;
          }

          memcpy(&v6[32 * v52 + 32], (v46 + 32), 32 * v47);

          if (v47)
          {
            v53 = *(v6 + 2);
            v54 = __OFADD__(v53, v47);
            v55 = v53 + v47;
            if (v54)
            {
              goto LABEL_64;
            }

            *(v6 + 2) = v55;
          }

          goto LABEL_32;
        }
      }

      if (v47)
      {
        goto LABEL_62;
      }

LABEL_32:
      if (v44 == ++v45)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    swift_once();
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_48:

  v56 = v78;
  v57 = v79;
  v58 = v80;
  LazyFocusableFillerBoundsProvider.updateMetrics(in:placedBounds:axis:)(v6, 0, v78, v79, *&v80, *(&v80 + 1));
  v59 = 1;
  LazyFocusableFillerBoundsProvider.updateMetrics(in:placedBounds:axis:)(v6, 1, v56, v57, *&v58, *(&v58 + 1));

  _ss23_ContiguousArrayStorageCyypGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<FocusableFillerBounds>, &type metadata for FocusableFillerBounds, MEMORY[0x1E69E6F90]);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_18DDA6EB0;
  v61 = *(v1 + 64);
  if (*(v61 + 16))
  {
    v62 = specialized __RawDictionaryStorage.find<A>(_:)(0);
    v64 = 0uLL;
    v65 = 0uLL;
    v66 = 0uLL;
    if (v63)
    {
      v67 = (*(v61 + 56) + 32 * v62);
      v65 = *v67;
      v66 = v67[1];
    }

    v59 = v63 ^ 1;
    if (*(v61 + 16))
    {
      v73 = v66;
      v75 = v65;
      v68 = 1;
      v69 = specialized __RawDictionaryStorage.find<A>(_:)(1);
      if (v70)
      {
        v68 = 0;
        v71 = (*(v61 + 56) + 32 * v69);
        v64 = *v71;
        v72 = v71[1];
        v65 = v75;
      }

      else
      {
        v72 = 0uLL;
        v65 = v75;
        v64 = 0uLL;
      }

      v66 = v73;
    }

    else
    {
      v68 = 1;
      v72 = 0uLL;
    }
  }

  else
  {
    v65 = 0uLL;
    v68 = 1;
    v66 = 0uLL;
    v64 = 0uLL;
    v72 = 0uLL;
  }

  LOBYTE(v82) = v68;
  *(v60 + 32) = v56;
  *(v60 + 40) = v57;
  *(v60 + 48) = v58;
  *(v60 + 64) = v65;
  *(v60 + 80) = v66;
  *(v60 + 96) = v59 & 1;
  *(v60 + 104) = v64;
  *(v60 + 120) = v72;
  *(v60 + 136) = v68;
  *&v87 = v60;
  AGGraphSetOutputValue();

  *(v1 + 40) = v58;
  v22 = (v1 + 56);
LABEL_59:
  *v22 = 0;
}

uint64_t closure #2 in LazyFocusableFillerBoundsProvider.updateValue()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X3>, void *a4@<X4>, uint64_t *a5@<X8>)
{
  v6 = v5;
  v11 = *(a1 + 16);
  v74[0] = *a1;
  v74[1] = v11;
  v75 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v15 = *(a1 + 64);
  v16 = *(a1 + 72);
  v17 = *(a1 + 16);
  v81 = *a1;
  v82 = v17;
  *&v83 = *(a1 + 32);
  *(&v83 + 1) = v12;
  *v84 = v13;
  *&v84[8] = v14;
  *&v84[16] = v15;
  *&v84[24] = v16;
  _LazyLayout_PlacedSubview.size.getter();
  v20 = v14 - v12 * v18;
  v76 = v12;
  v77 = v13;
  v21 = v15 - v13 * v19;
  v78 = v14;
  v79 = v15;
  v80 = v16;
  _LazyLayout_PlacedSubview.size.getter();
  v23 = v22;
  v25 = v24;

  v26 = *AGGraphGetValue();

  v85 = CGRect.roundedCoordinatesToNearestOrUp(toMultipleOf:)(v26, v20, v21, v23, v25);
  v86 = v27;
  v87 = v28;
  v88 = v29;
  if (one-time initialization token for content != -1)
  {
    goto LABEL_47;
  }

LABEL_2:
  *&v74[0] = static ScrollCoordinateSpace.content;
  LOBYTE(v76) = 1;
  v30 = *(a2 + 8);
  *&v81 = *a2;
  *(&v81 + 1) = v30;
  v31 = *(a2 + 32);
  v82 = *(a2 + 16);
  v83 = v31;

  CGRect.convert(to:transform:)(v74, &v81);

  result = outlined destroy of CoordinateSpace(v74);
  v33 = v85;
  v34 = v86;
  v35 = v87;
  v36 = v88;
  v37 = a3 + 5;
  v38 = a3[2] + 1;
  do
  {
    if (!--v38)
    {
      *a5 = MEMORY[0x1E69E7CC0];
      return result;
    }

    v39 = v37 + 2;
    v90.origin.x = v33;
    v90.origin.y = v34;
    v90.size.width = v35;
    v90.size.height = v36;
    result = CGRectContainsPoint(v90, *(v37 - 1));
    v37 = v39;
  }

  while (!result);
  v73 = a5;
  v89 = v6;
  v40 = a4[2];
  v6 = MEMORY[0x1E69E7CC0];
  if (v40)
  {
    v41 = (a4 + 8);
    a4 = MEMORY[0x1E69E7CC0];
    do
    {
      v48 = *(v41 - 4);
      v49 = *(v41 - 3);
      v50 = *(v41 - 2);
      v51 = *(v41 - 1);
      v52 = v41[3];
      v83 = v41[2];
      *v84 = v52;
      *&v84[9] = *(v41 + 57);
      v53 = v41[1];
      v81 = *v41;
      v82 = v53;
      *&v53 = v33;
      *&v52 = v34;
      v54 = v35;
      v55 = v36;
      v92.origin.x = v48;
      v92.origin.y = v49;
      v92.size.width = v50;
      v92.size.height = v51;
      v91 = CGRectIntersection(*(&v52 - 8), v92);
      if (!CGRectIsEmpty(v91))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v74[0] = a4;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, a4[2] + 1, 1);
          a4 = *&v74[0];
        }

        v43 = a4[2];
        v42 = a4[3];
        if (v43 >= v42 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1);
          a4 = *&v74[0];
        }

        a4[2] = v43 + 1;
        v44 = &a4[14 * v43];
        *(v44 + 4) = v48;
        *(v44 + 5) = v49;
        *(v44 + 6) = v50;
        *(v44 + 7) = v51;
        *(v44 + 4) = v81;
        v45 = v82;
        v46 = v83;
        v47 = *v84;
        *(v44 + 121) = *&v84[9];
        *(v44 + 6) = v46;
        *(v44 + 7) = v47;
        *(v44 + 5) = v45;
      }

      v41 += 7;
      --v40;
    }

    while (v40);
  }

  else
  {
    a4 = MEMORY[0x1E69E7CC0];
  }

  v57 = a4[2];
  if (v57)
  {
    *&v81 = v6;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v57, 0);
    v58 = 32;
    a3 = v81;
    do
    {
      FocusableFillerBounds.fillerFrames(in:)(v33, v34, v35, v36);
      *&v81 = a3;
      v61 = a3[2];
      v60 = a3[3];
      if (v61 >= v60 >> 1)
      {
        v62 = v59;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), v61 + 1, 1);
        v59 = v62;
        a3 = v81;
      }

      a3[2] = v61 + 1;
      a3[v61 + 4] = v59;
      v58 += 112;
      --v57;
    }

    while (v57);

    a2 = a3[2];
    if (a2)
    {
      v63 = 0;
      a5 = a3 + 4;
      v64 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v63 >= a3[2])
        {
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
          swift_once();
          goto LABEL_2;
        }

        a4 = a5[v63];
        v65 = a4[2];
        v66 = *(v64 + 2);
        v6 = v66 + v65;
        if (__OFADD__(v66, v65))
        {
          goto LABEL_43;
        }

        v67 = swift_isUniquelyReferenced_nonNull_native();
        if (v67 && v6 <= *(v64 + 3) >> 1)
        {
          if (a4[2])
          {
            goto LABEL_35;
          }
        }

        else
        {
          if (v66 <= v6)
          {
            v68 = v66 + v65;
          }

          else
          {
            v68 = v66;
          }

          v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v67, v68, 1, v64);
          if (a4[2])
          {
LABEL_35:
            v69 = *(v64 + 2);
            if ((*(v64 + 3) >> 1) - v69 < v65)
            {
              goto LABEL_45;
            }

            memcpy(&v64[32 * v69 + 32], a4 + 4, 32 * v65);

            if (v65)
            {
              v70 = *(v64 + 2);
              v71 = __OFADD__(v70, v65);
              v72 = v70 + v65;
              if (v71)
              {
                goto LABEL_46;
              }

              *(v64 + 2) = v72;
            }

            goto LABEL_24;
          }
        }

        if (v65)
        {
          goto LABEL_44;
        }

LABEL_24:
        if (a2 == ++v63)
        {
          goto LABEL_41;
        }
      }
    }

    v64 = MEMORY[0x1E69E7CC0];
LABEL_41:

    *v73 = v64;
  }

  else
  {

    _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_2(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CGRect>, type metadata accessor for CGRect);
    result = swift_allocObject();
    *(result + 16) = xmmword_18DDA6EB0;
    *(result + 32) = v33;
    *(result + 40) = v34;
    *(result + 48) = v35;
    *(result + 56) = v36;
    *a5 = result;
  }

  return result;
}

void FocusableFillerBounds.fillerFrames(in:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = v4[5];
  v30[4] = v4[4];
  v31[0] = v9;
  *(v31 + 9) = *(v4 + 89);
  v10 = v4[1];
  v30[0] = *v4;
  v30[1] = v10;
  v11 = v4[3];
  v30[2] = v4[2];
  v30[3] = v11;
  ranges #1 (_:) in FocusableFillerBounds.fillerFrames(in:)(0, v30, a1, a2, a3, a4);
  v13 = v12;
  ranges #1 (_:) in FocusableFillerBounds.fillerFrames(in:)(1, v30, a1, a2, a3, a4);
  v15 = *(v13 + 16);
  if (v15)
  {
    v16 = 0;
    v17 = *(v14 + 16);
    v18 = (v14 + 40);
    v19 = MEMORY[0x1E69E7CC0];
    while (v16 < *(v13 + 16))
    {
      if (v17)
      {
        v20 = v13 + 32 + 16 * v16;
        v21 = *v20;
        v22 = *(v20 + 8) - *v20;
        v23 = v18;
        v24 = v17;
        do
        {
          v25 = *(v23 - 1);
          v26 = *v23;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 2) + 1, 1, v19);
          }

          v28 = *(v19 + 2);
          v27 = *(v19 + 3);
          if (v28 >= v27 >> 1)
          {
            v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v19);
          }

          *(v19 + 2) = v28 + 1;
          v29 = &v19[32 * v28];
          v29[4] = v21;
          v29[5] = v25;
          v29[6] = v22;
          v29[7] = v26 - v25;
          v23 += 2;
          --v24;
        }

        while (v24);
      }

      if (++v16 == v15)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:
  }
}

uint64_t LazyFocusableFillerBoundsProvider.updateMetrics(in:placedBounds:axis:)(uint64_t a1, char a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v7 = v6;
  CGRect.range(in:)(a2 & 1, a3, a4, a5, a6);
  v11 = v10;
  v13 = v12;
  v14 = *(a1 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v90 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
    v15 = v90;
    v16 = (a1 + 56);
    do
    {
      CGRect.range(in:)(a2 & 1, *(v16 - 3), *(v16 - 2), *(v16 - 1), *v16);
      v90 = v15;
      v20 = *(v15 + 2);
      v19 = *(v15 + 3);
      if (v20 >= v19 >> 1)
      {
        v22 = v17;
        v23 = v18;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
        v18 = v23;
        v17 = v22;
        v15 = v90;
      }

      *(v15 + 2) = v20 + 1;
      v21 = &v15[16 * v20];
      *(v21 + 4) = v17;
      *(v21 + 5) = v18;
      v16 += 4;
      --v14;
    }

    while (v14);
  }

  v90 = v15;

  specialized MutableCollection<>.sort(by:)(&v90);

  v24 = v90;
  v25 = *(v90 + 2);
  if (!v25)
  {
    v30 = MEMORY[0x1E69E7CC0];
LABEL_47:

    v58 = *(v30 + 2);
    if (v58)
    {
      v59 = v58 == 1;
    }

    else
    {
      v59 = 1;
    }

    if (v59)
    {
    }

    else
    {
      v61 = *(v30 + 5);
      v63 = *(v30 + 6);
      v62 = *(v30 + 7);
      if (v62 - v63 >= v61 - *(v30 + 4))
      {
        v64 = v61 - *(v30 + 4);
      }

      else
      {
        v64 = v62 - v63;
      }

      v65 = v63 - v61;
      v66 = v58 - 2;
      if (v66)
      {
        v67 = (v30 + 72);
        do
        {
          v68 = v62 - v63;
          v69 = v63 + v62;
          v70 = *(v67 - 1);
          v71 = *v67;
          v72 = v70 - v62;
          if (*v67 - v70 < v68)
          {
            v68 = *v67 - v70;
          }

          if (v64 + v65 >= (v70 + v71) * 0.5 - v69 * 0.5)
          {
            v64 = v68;
            v65 = v72;
          }

          v67 += 2;
          v62 = v71;
          v63 = v70;
          --v66;
        }

        while (v66);
      }

      v73 = *(v7 + 64);
      if (*(v73 + 16))
      {
        v74 = specialized __RawDictionaryStorage.find<A>(_:)(a2 & 1);
        if (v75)
        {
          v76 = (*(v73 + 56) + 32 * v74);
          v64 = (v64 + *v76) * 0.5;
          v65 = (v65 + v76[1]) * 0.5;
        }
      }

      v77 = *(v30 + 2);
      if (v77)
      {
        v78 = *(v30 + 4);
        v79 = *&v30[16 * v77 + 24];
      }

      else
      {
        v79 = 0.0;
        v78 = 0.0;
      }

      v80 = v78 - (v65 + v64) * floor((v78 - v11) / (v65 + v64)) - v11;
      v81 = v13 - (v65 + v64) * floor((v13 - v79) / (v65 + v64)) - v79;
      v82 = v65 + v64 * 0.25;
      if (v82 >= v80)
      {
        v83 = v80;
      }

      else
      {
        v83 = v80 - v82;
      }

      if (v82 >= v81)
      {
        v84 = v81;
      }

      else
      {
        v84 = v81 - v82;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v90 = *(v7 + 64);
      result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a2 & 1, isUniquelyReferenced_nonNull_native, v64, v65, v83, v84);
      *(v7 + 64) = v90;
    }

    return result;
  }

  v26 = 0;
  v27 = v90 + 32;
  v28 = v25 - 1;
  v29 = 0.0;
  v30 = MEMORY[0x1E69E7CC0];
  do
  {
    v31 = *&v27[16 * v26];
    v32 = *(v30 + 2);
    if (v32)
    {
      v33 = &v30[16 * v32 + 16];
      v35 = *v33;
      v34 = v33[1];
      if (*&v31 == *v33)
      {
        v36 = *&v27[16 * v26 + 8];
        if (v34 < *(&v31 + 1))
        {
          v37 = *(&v31 + 1) - v34;
          goto LABEL_35;
        }

        v88 = *&v27[16 * v26];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = specialized _ArrayBuffer._consumeAndCreateNew()(v30);
        }

        v47 = *(v30 + 2);
        v48 = v88;
        if (!v47)
        {
          goto LABEL_78;
        }

        *(v30 + 2) = v47 - 1;
        v49 = *(v30 + 3);
        if (v47 > v49 >> 1)
        {
          v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v47, 1, v30);
          v48 = v88;
          v30 = v54;
        }

        *(v30 + 2) = v47;
        *&v30[16 * v47 + 16] = v48;
        v29 = v29 + v34 - v36;
      }

      else
      {
        v41 = v29 + v34;
        if (v29 + v34 >= *&v31)
        {
          if (v34 > *&v31)
          {
            v37 = *(&v31 + 1) - v34;
LABEL_35:
            if (v37 > v29)
            {
              v29 = v37;
            }

            goto LABEL_37;
          }

          v89 = *&v27[16 * v26];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32 + 1, 1, v30);
          }

          v51 = *(v30 + 2);
          v50 = *(v30 + 3);
          v52 = v89;
          if (v51 >= v50 >> 1)
          {
            v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v30);
            v52 = v89;
            v30 = v57;
          }

          *(v30 + 2) = v51 + 1;
          *&v30[16 * v51 + 32] = v52;
          v29 = v41 - *(&v52 + 1);
          if (v41 - *(&v52 + 1) <= 0.0)
          {
            v29 = 0.0;
          }
        }

        else
        {
          v87 = *&v27[16 * v26];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = specialized _ArrayBuffer._consumeAndCreateNew()(v30);
          }

          v42 = *(v30 + 2);
          v43 = v87;
          if (!v42)
          {
            goto LABEL_79;
          }

          *(v30 + 2) = v42 - 1;
          if (v35 > v41)
          {
            goto LABEL_80;
          }

          v44 = *(v30 + 3);
          if (v42 > v44 >> 1)
          {
            v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v42, 1, v30);
            v43 = v87;
            v30 = v55;
          }

          *(v30 + 2) = v42;
          v45 = &v30[16 * v42 - 16];
          *(v45 + 4) = v35;
          *(v45 + 5) = v41;
          v46 = *(v30 + 3);
          if (v42 >= v46 >> 1)
          {
            v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v42 + 1, 1, v30);
            v43 = v87;
            v30 = v56;
          }

          *(v30 + 2) = v42 + 1;
          *&v30[16 * v42 + 32] = v43;
          v29 = 0.0;
        }
      }
    }

    else
    {
      v86 = *&v27[16 * v26];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, v30);
      }

      v39 = *(v30 + 2);
      v38 = *(v30 + 3);
      v40 = v86;
      if (v39 >= v38 >> 1)
      {
        v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v30);
        v40 = v86;
        v30 = v53;
      }

      *(v30 + 2) = v39 + 1;
      *&v30[16 * v39 + 32] = v40;
    }

LABEL_37:
    if (v28 == v26)
    {
      goto LABEL_47;
    }

    ++v26;
  }

  while (v26 < *(v24 + 2));
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);

  __break(1u);
  return result;
}

void CGRect.range(in:)(char a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (COERCE_UNSIGNED_INT64(CGRectGetWidth(*&a2)) & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL || (v26.origin.x = a2, v26.origin.y = a3, v26.size.width = a4, v26.size.height = a5, (COERCE_UNSIGNED_INT64(CGRectGetHeight(v26)) & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL))
  {
    static os_log_type_t.fault.getter();
    if (one-time initialization token for internalErrorsLog == -1)
    {
LABEL_6:
      swift_beginAccess();
      v10 = static Log.internalErrorsLog;
      _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_2(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_18DDAF080;
      v12 = v10;
      _StringGuts.grow(_:)(37);

      v13 = LoggableRect.description.getter();
      MEMORY[0x193ABEDD0](v13);

      v14 = MEMORY[0x1E69E6158];
      *(v11 + 56) = MEMORY[0x1E69E6158];
      v15 = lazy protocol witness table accessor for type String and conformance String();
      *(v11 + 64) = v15;
      *(v11 + 32) = 0xD000000000000023;
      *(v11 + 40) = 0x800000018DD7B900;
      v16 = StaticString.description.getter();
      *(v11 + 96) = v14;
      *(v11 + 104) = v15;
      *(v11 + 72) = v16;
      *(v11 + 80) = v17;
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      *(v11 + 136) = v14;
      *(v11 + 144) = v15;
      *(v11 + 112) = v18;
      *(v11 + 120) = v19;
      os_log(_:dso:log:_:_:)();

      _ss23_ContiguousArrayStorageCyypGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_18DDA6EB0;
      _StringGuts.grow(_:)(38);

      _StringGuts.grow(_:)(37);

      v21 = LoggableRect.description.getter();
      MEMORY[0x193ABEDD0](v21);

      MEMORY[0x193ABEDD0](2108704, 0xE300000000000000);
      v22 = StaticString.description.getter();
      MEMORY[0x193ABEDD0](v22);

      MEMORY[0x193ABEDD0](58, 0xE100000000000000);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x193ABEDD0](v23);

      MEMORY[0x193ABEDD0](0xD00000000000001CLL, 0x800000018DD77470);
      *(v20 + 56) = v14;
      *(v20 + 32) = 0xD000000000000023;
      *(v20 + 40) = 0x800000018DD7B900;
      print(_:separator:terminator:)();

      return;
    }

LABEL_18:
    swift_once();
    goto LABEL_6;
  }

  if (a1)
  {
    v24 = a5;
  }

  else
  {
    v24 = a4;
  }

  if (a1)
  {
    v25 = a3;
  }

  else
  {
    v25 = a2;
  }

  if (v24 <= 0.0)
  {
    v24 = 0.0;
  }

  if (v25 > v25 + v24)
  {
    __break(1u);
    goto LABEL_18;
  }
}

void ranges #1 (_:) in FocusableFillerBounds.fillerFrames(in:)(char a1, CGFloat *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  CGRect.range(in:)(a1 & 1, *a2, a2[1], a2[2], a2[3]);
  v13 = v12;
  v15 = v14;
  CGRect.range(in:)(a1 & 1, a3, a4, a5, a6);
  if (v13 > v16)
  {
    v18 = v13;
  }

  else
  {
    v18 = v16;
  }

  if (v17 >= v15)
  {
    v19 = v15;
  }

  else
  {
    v19 = v17;
  }

  v20 = v19 - v18;
  if (v19 - v18 > 0.0)
  {
    v21 = 4;
    if (a1)
    {
      v21 = 9;
    }

    v22 = 5;
    if (a1)
    {
      v22 = 10;
    }

    v23 = 8;
    if (a1)
    {
      v23 = 13;
    }

    v24 = a2[v22];
    v25 = 0.0;
    if (LOBYTE(a2[v23]))
    {
      v24 = 0.0;
      v26 = v20;
    }

    else
    {
      v26 = a2[v21];
    }

    v27 = floor((v20 + v24) / (v24 + v26));
    if (v27 > 1.0)
    {
      v25 = (v20 - v26 * v27) / (v27 + -1.0);
    }

    if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (v27 <= -9.22337204e18)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (v27 >= 9.22337204e18)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v28 = v27;
    if (v27 < 0)
    {
LABEL_35:
      __break(1u);
      return;
    }

    if (v28)
    {
      v29 = v26 + v25;
      v36 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27, 0);
      v30 = 0;
      v31 = v36;
      while (1)
      {
        v32 = v18 + v29 * v30;
        if (v32 > v26 + v32)
        {
          break;
        }

        v37 = v31;
        v34 = *(v31 + 16);
        v33 = *(v31 + 24);
        if (v34 >= v33 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1);
          v31 = v37;
        }

        ++v30;
        *(v31 + 16) = v34 + 1;
        v35 = v31 + 16 * v34;
        *(v35 + 32) = v32;
        *(v35 + 40) = v26 + v32;
        if (v28 == v30)
        {
          return;
        }
      }

      __break(1u);
      goto LABEL_32;
    }
  }
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[2 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[2 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 2;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 2;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 2;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[2 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[2 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 2;
    v5 -= 2;
    v18 = v14;
    do
    {
      v19 = v5 + 2;
      v20 = *(v18 - 2);
      v18 -= 2;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 2, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 2;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v21 & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v6, v4, 16 * (v21 >> 4));
  }

  return 1;
}

uint64_t specialized static FocusableBorder.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v8 = *(a1 + 32);
  v6 = *(a2 + 32);
  v7 = *(a1 + 48);
  v5 = *(a2 + 48);
  v2 = CGRectEqualToRect(*a1, *a2);
  v3 = vmovn_s32(vuzp1q_s32(vceqq_f64(v8, v6), vceqq_f64(v7, v5)));
  v3.i16[0] = vminv_u16(v3);
  return v2 & v3.i32[0];
}

uint64_t getEnumTagSinglePayload for FocusableBounds(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t getEnumTagSinglePayload for FocusableFillerBounds(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 105))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FocusableFillerBounds(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = (a2 - 1);
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

  *(result + 105) = v3;
  return result;
}

uint64_t assignWithCopy for LazyFocusableFillerBoundsProvider(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  v3 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v3;
  *(a1 + 64) = *(a2 + 64);

  return a1;
}

uint64_t assignWithTake for LazyFocusableFillerBoundsProvider(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  return a1;
}

unint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI5ColorVADE11ResolvedHDRV_sAC_pytTg503_s7c58UI13GraphicsImageV6encode2toyAA15ProtobufEncoderVz_tKFyAA5e6VAAE11F10HDRVKXEfU_AD0nO0VTf1cn_n(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0x100000000) == 0)
  {
    v7[0] = a1;
    v7[1] = a2;
    v5 = a3;
    v8 = a3;
    result = closure #1 in GraphicsImage.encode(to:)(v7, a4);
    if (v4)
    {
      return result;
    }

    a3 = v5;
  }

  return (a3 & 0x100000000uLL) >> 32;
}

double GraphicsImage.size.getter()
{
  v1 = *(v0 + 16);
  result = 0.0;
  if (v1 != 0.0)
  {
    v3 = *(v0 + 24);
    if (*(v0 + 40) > 3u)
    {
      v3 = *(v0 + 32);
    }

    return 1.0 / v1 * v3;
  }

  return result;
}

void GraphicsImage.styleResolverMode.getter(uint64_t a1@<X8>)
{
  v2 = v1[8];
  if (v2 == 2)
  {
    v3 = *(*v1 + 16);
    v4 = *(*v1 + 32);
    v5 = *(*v1 + 48);
    v7 = v3;
    outlined copy of Image.Location(v4);
    v8 = v5;
    outlined copy of Image.Location(v4);
    v10 = v4;
    _ShapeStyle_ResolverMode.init(rbSymbolStyleMask:location:)([v7 styleMask], &v10, a1);

    outlined consume of Image.Location(v4);
  }

  else
  {
    if (v2 == 255)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
    }

    else
    {
      v9 = (v1[64] & 1) == 0;
      *a1 = 0;
      *(a1 + 8) = v9;
    }

    *(a1 + 10) = 0;
  }
}

BOOL ResolvedVectorGlyph.isClear(styles:)(uint64_t *a1)
{
  v2 = *a1;
  if (([*v1 styleMask] & 0x1200) != 0)
  {
    return 0;
  }

  else
  {
    v6 = v2;
    v5 = 0;
    return _ShapeStyle_Pack.isClear(name:)(&v5);
  }
}

void GraphicsImage.Contents.init(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of GraphicsImage.WeakContents(a1, v10);
  if (v11)
  {
    if (v11 == 1)
    {
      outlined init with take of WeakBox<VectorImageContents>(v10, v9, &lazy cache variable for type metadata for WeakBox<IOSurfaceRef>, type metadata accessor for IOSurfaceRef);
      Strong = swift_unknownObjectWeakLoadStrong();
      outlined destroy of GraphicsImage.WeakContents(a1);
      outlined destroy of WeakBox<VectorImageContents>(v9, &lazy cache variable for type metadata for WeakBox<IOSurfaceRef>, type metadata accessor for IOSurfaceRef);
      if (Strong)
      {
        v5 = Strong;
        v6 = 1;
LABEL_9:
        outlined consume of GraphicsImage.Contents(v5, v6);
      }
    }

    else
    {
      outlined init with take of WeakBox<VectorImageContents>(v10, v9, &lazy cache variable for type metadata for WeakBox<VectorImageContents>, type metadata accessor for VectorImageContents);
      v8 = swift_weakLoadStrong();
      outlined destroy of GraphicsImage.WeakContents(a1);
      outlined destroy of WeakBox<VectorImageContents>(v9, &lazy cache variable for type metadata for WeakBox<VectorImageContents>, type metadata accessor for VectorImageContents);
      if (v8)
      {
        v5 = swift_allocObject();
        v5[4] = 0;
        v5[5] = 0;
        v5[2] = v8;
        v5[3] = 2;
        v6 = 3;
        goto LABEL_9;
      }
    }
  }

  else
  {
    outlined init with take of WeakBox<VectorImageContents>(v10, v9, &lazy cache variable for type metadata for WeakBox<CGImageRef>, type metadata accessor for CGImageRef);
    v7 = swift_unknownObjectWeakLoadStrong();
    outlined destroy of GraphicsImage.WeakContents(a1);
    outlined destroy of WeakBox<VectorImageContents>(v9, &lazy cache variable for type metadata for WeakBox<CGImageRef>, type metadata accessor for CGImageRef);
    if (v7)
    {
      v5 = v7;
      v6 = 0;
      goto LABEL_9;
    }
  }

  *a2 = 0;
  *(a2 + 8) = -1;
}

void GraphicsImage.WeakContents.init(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  if (v4 == 3)
  {
    swift_weakInit();
    swift_weakAssign();
    v5 = 2;
    goto LABEL_7;
  }

  if (v4 == 1)
  {
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v5 = 1;
    goto LABEL_7;
  }

  if (!*(a1 + 8))
  {
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v5 = 0;
LABEL_7:
    v6[8] = v5;
    outlined consume of GraphicsImage.Contents(v3, v4);
    outlined init with take of GraphicsImage.WeakContents(v6, a2);
    return;
  }

  outlined consume of GraphicsImage.Contents(*a1, v4);
  *a2 = 0;
  *(a2 + 8) = -1;
}

id GraphicsImage.contents.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  v3 = *(v1 + 8);
  *(a1 + 8) = v3;
  return outlined copy of GraphicsImage.Contents?(v2, v3);
}

void GraphicsImage.contents.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  outlined consume of GraphicsImage.Contents?(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
}

uint64_t GraphicsImage.maskColor.setter(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(v3 + 44) = result;
  *(v3 + 52) = a2;
  *(v3 + 60) = a3;
  *(v3 + 64) = BYTE4(a3) & 1;
  return result;
}

__n128 GraphicsImage.resizingInfo.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  result = *(v1 + 72);
  v4 = *(v1 + 88);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 GraphicsImage.resizingInfo.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 72) = *a1;
  *(v1 + 88) = v4;
  *(v1 + 104) = v2;
  return result;
}

double GraphicsImage.pixelSize.getter()
{
  result = *(v0 + 24);
  if (*(v0 + 40) > 3u)
  {
    return *(v0 + 32);
  }

  return result;
}

void *ResolvedVectorGlyph.styleResolverMode.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 16);
  outlined copy of Image.Location(v4);
  v6 = v4;
  return _ShapeStyle_ResolverMode.init(rbSymbolStyleMask:location:)([v3 styleMask], &v6, a1);
}

float GraphicsImage.headroom.getter()
{
  result = 1.0;
  if (!*(v0 + 8))
  {
    v2 = *v0;
    outlined copy of GraphicsImage.Contents(*v0, 0);
    v3 = CGImageGetColorSpace(v2);
    if (v3)
    {
      v4 = v3;
      if (CGColorSpaceUsesITUR_2100TF(v3))
      {
        if (CGImageGetHeadroom())
        {

          outlined consume of GraphicsImage.Contents?(v2, 0);
          return 0.0;
        }

        else
        {
          IsHLGBased = CGColorSpaceIsHLGBased(v4);
          outlined consume of GraphicsImage.Contents?(v2, 0);

          result = 8.0;
          if (IsHLGBased)
          {
            return 5.0;
          }
        }

        return result;
      }
    }

    outlined consume of GraphicsImage.Contents?(v2, 0);
    return 1.0;
  }

  return result;
}

void GraphicsImage.encode(to:)(double *a1)
{
  v3 = v2;
  v5 = type metadata accessor for NamedImage.Key(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *(v1 + 8);
  v11 = *(v1 + 2);
  v10 = *(v1 + 3);
  v12 = *(v1 + 4);
  v13 = *(v1 + 40);
  v14 = *(v1 + 44);
  v15 = *(v1 + 52);
  v62 = *(v1 + 15);
  v16 = *(v1 + 64);
  v90 = v16;
  v17 = v1[9];
  v18 = v1[10];
  v19 = v1[11];
  v20 = v1[12];
  v21 = *(v1 + 104);
  v22 = *(v1 + 105);
  v89 = v22;
  v23 = *(v1 + 106);
  v24 = *(v1 + 107);
  v57 = v23;
  v56 = v17;
  v55 = v18;
  v54 = v19;
  v53 = v20;
  v58 = v21;
  v60 = v14;
  v59 = v15;
  v61 = v13;
  switch(v9)
  {
    case 3:
      v34 = *(*&v8 + 24);

      outlined copy of Image.Location?(v34);

      specialized ProtobufEncoder.messageField<A>(_:_:)(3);

      outlined consume of Image.Location?(v34);

      if (v3)
      {
        return;
      }

LABEL_30:
      v28 = v62;
LABEL_31:
      if (v11 != 1.0)
      {
        v44 = fabs(v11);
        if (v44 >= 65536.0)
        {
          v45 = 41;
        }

        else
        {
          v45 = 45;
        }

        ProtobufEncoder.encodeVarint(_:)(v45);
        if (v44 < 65536.0)
        {
          v46 = *(a1 + 1);
          isUniquelyReferenced_nonNull_native = v46 + 4;
          if (!__OFADD__(v46, 4))
          {
            *&v11 = v11;
            if (*(a1 + 2) >= isUniquelyReferenced_nonNull_native)
            {
              *(a1 + 1) = isUniquelyReferenced_nonNull_native;
              *(*a1 + v46) = LODWORD(v11);
              goto LABEL_42;
            }

            goto LABEL_79;
          }

          goto LABEL_77;
        }

        v47 = *(a1 + 1);
        isUniquelyReferenced_nonNull_native = v47 + 8;
        if (!__OFADD__(v47, 8))
        {
          if (*(a1 + 2) < isUniquelyReferenced_nonNull_native)
          {
            *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = v11;
          }

          else
          {
            *(a1 + 1) = isUniquelyReferenced_nonNull_native;
            *(*a1 + v47) = v11;
          }

          goto LABEL_42;
        }

        goto LABEL_78;
      }

      while (1)
      {
LABEL_42:
        ProtobufEncoder.encodeVarint(_:)(0x32uLL);
        v25 = *(a1 + 1);
        v26 = *(a1 + 3);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 2) + 1, 1, v26);
        }

        v49 = *(v26 + 2);
        v48 = *(v26 + 3);
        v7 = (v49 + 1);
        if (v49 >= v48 >> 1)
        {
          v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v26);
        }

        *(v26 + 2) = v7;
        *&v26[8 * v49 + 32] = v25;
        *(a1 + 3) = v26;
        if (!__OFADD__(v25, 1))
        {
          break;
        }

        __break(1u);
LABEL_73:
        v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 2) + 1, 1, v26);
LABEL_10:
        v33 = *(v26 + 2);
        v32 = *(v26 + 3);
        if (v33 >= v32 >> 1)
        {
          v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v26);
        }

        *(v26 + 2) = v33 + 1;
        *&v26[8 * v33 + 32] = v25;
        *(a1 + 3) = v26;
        if (!__OFADD__(v25, 1))
        {
          *(a1 + 1) = v25 + 1;
          NamedImage.Key.encode(to:)(a1);
          if (v3)
          {
            outlined destroy of (GraphicsImage.WeakContents, GraphicsImage.WeakContents)(v7, type metadata accessor for NamedImage.Key);
            return;
          }

          ProtobufEncoder.endLengthDelimited()();
          outlined destroy of (GraphicsImage.WeakContents, GraphicsImage.WeakContents)(v7, type metadata accessor for NamedImage.Key);
          goto LABEL_30;
        }

        __break(1u);
LABEL_75:
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 2) + 1, 1, v26);
        v26 = isUniquelyReferenced_nonNull_native;
LABEL_5:
        v28 = v62;
        v30 = *(v26 + 2);
        v29 = *(v26 + 3);
        if (v30 >= v29 >> 1)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v26);
          v26 = isUniquelyReferenced_nonNull_native;
        }

        *(v26 + 2) = v30 + 1;
        *&v26[8 * v30 + 32] = v25;
        *(a1 + 3) = v26;
        if (!__OFADD__(v25, 1))
        {
          *(a1 + 1) = v25 + 1;
          Color.ResolvedHDR.encode(to:)(a1);
          ProtobufEncoder.endLengthDelimited()();
          goto LABEL_31;
        }

        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = LODWORD(v11);
      }

      *(a1 + 1) = v25 + 1;
      CGSize.encode(to:)(a1, v10, v12);
      ProtobufEncoder.endLengthDelimited()();
      if (v61 > 3u)
      {
        if (v61 > 5u)
        {
          if (v61 == 6)
          {
            v50 = 7;
          }

          else
          {
            v50 = 5;
          }
        }

        else if (v61 == 4)
        {
          v50 = 1;
        }

        else
        {
          v50 = 3;
        }
      }

      else if (v61 > 1u)
      {
        if (v61 == 2)
        {
          v50 = 6;
        }

        else
        {
          v50 = 4;
        }
      }

      else
      {
        if (!v61)
        {
          goto LABEL_62;
        }

        v50 = 2;
      }

      ProtobufEncoder.encodeVarint(_:)(0x38uLL);
      ProtobufEncoder.encodeVarint(_:)(v50);
LABEL_62:
      LOBYTE(v63) = v90;
      _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI5ColorVADE11ResolvedHDRV_sAC_pytTg503_s7c58UI13GraphicsImageV6encode2toyAA15ProtobufEncoderVz_tKFyAA5e6VAAE11F10HDRVKXEfU_AD0nO0VTf1cn_n(v60, v59, v28 | (v90 << 32), a1);
      if (!v3)
      {
        if (v58 != 2)
        {
          v85[0] = v56;
          v85[1] = v55;
          v85[2] = v54;
          v85[3] = v53;
          v86 = v58 & 1;
          ProtobufEncoder.encodeVarint(_:)(0x4AuLL);
          specialized ProtobufEncoder.encodeMessage<A>(_:)(v85);
        }

        if (v89 != 1)
        {
          ProtobufEncoder.encodeVarint(_:)(0x50uLL);
          ProtobufEncoder.encodeVarint(_:)(0);
        }

        v51 = v57;
        if (v57 != 1)
        {
          ProtobufEncoder.encodeVarint(_:)(0x58uLL);
          ProtobufEncoder.encodeVarint(_:)(v51);
        }

        if (v24)
        {
          ProtobufEncoder.encodeVarint(_:)(0x60uLL);
          ProtobufEncoder.encodeVarint(_:)(v24);
        }
      }

      return;
    case 5:
      v31 = swift_projectBox();
      outlined init with copy of NamedImage.Key(v31, v7);
      ProtobufEncoder.encodeVarint(_:)(0x22uLL);
      v25 = *(a1 + 1);
      v26 = *(a1 + 3);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_10;
      }

      goto LABEL_73;
    case 4:
      v87 = *(*&v8 + 16);
      v88 = *(*&v8 + 32);
      ProtobufEncoder.encodeVarint(_:)(0xAuLL);
      v25 = *(a1 + 1);
      v26 = *(a1 + 3);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_5;
      }

      goto LABEL_75;
  }

  v63 = v8;
  v64 = v9;
  *v65 = *(v1 + 9);
  *&v65[3] = *(v1 + 3);
  v66 = v11;
  v67 = v10;
  v68 = v12;
  v69 = v13;
  v70 = *(v1 + 41);
  v71 = *(v1 + 43);
  v72 = v14;
  v73 = v15;
  v74 = v62;
  v75 = v16;
  v35 = *(v1 + 65);
  *&v76[3] = *(v1 + 17);
  *v76 = v35;
  v77 = v17;
  v78 = v18;
  v79 = v19;
  v80 = v20;
  v81 = v21;
  v36 = 0.0;
  v82 = v22;
  v83 = v23;
  v37 = 0.0;
  v84 = v24;
  if (v11 == 0.0)
  {
    goto LABEL_26;
  }

  v38 = v12;
  v39 = v10;
  if (v13 > 3)
  {
    v38 = v10;
    v39 = v12;
    if (v13 <= 5)
    {
      if (v13 == 4)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    if (v13 != 6)
    {
LABEL_24:
      v38 = v10;
      v39 = v12;
    }
  }

LABEL_25:
  v36 = 1.0 / v11 * v39;
  v37 = 1.0 / v11 * v38;
LABEL_26:
  v52 = v24;
  v40.value = GraphicsImage.render(at:prefersMask:)(__PAIR128__(*&v37, *&v36), 0).value;
  if (!v40.value)
  {
    v24 = v52;
    goto LABEL_30;
  }

  value = v40.value;
  v63 = v8;
  v64 = v9;
  *v65 = *(v1 + 9);
  *&v65[3] = *(v1 + 3);
  v66 = v11;
  v67 = v10;
  v68 = v12;
  v69 = v61;
  v70 = *(v1 + 41);
  v71 = *(v1 + 43);
  v72 = v60;
  v73 = v59;
  v28 = v62;
  v74 = v62;
  v75 = v16;
  v42 = *(v1 + 65);
  *&v76[3] = *(v1 + 17);
  *v76 = v42;
  v77 = v56;
  v78 = v55;
  v79 = v54;
  v80 = v53;
  v81 = v58;
  v82 = v22;
  v83 = v57;
  v24 = v52;
  v84 = v52;
  v43 = GraphicsImage.bitmapOrientation.getter();
  ProtobufEncoder.encodeVarint(_:)(0x12uLL);
  specialized ProtobufEncoder.encodeMessage<A>(_:)(value);

  if (!v3)
  {
    v61 = v43;
    goto LABEL_31;
  }
}
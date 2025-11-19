unsigned __int8 *protocol witness for SetAlgebra.formSymmetricDifference(_:) in conformance SwipeGesture.Direction(unsigned __int8 *result)
{
  v2 = *v1 ^ *result;
  if (v2 >= 0x10)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *v1 = v2;
  }

  return result;
}

uint64_t protocol witness for SetAlgebra.isSubset(of:) in conformance SwipeGesture.Direction(unsigned __int8 *a1)
{
  v2 = *v1;
  if (v2 < 0x10)
  {
    return (v2 & ~*a1) == 0;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for SetAlgebra.isDisjoint(with:) in conformance SwipeGesture.Direction(_BYTE *a1)
{
  v2 = *v1;
  if (v2 < 0x10)
  {
    return (*a1 & v2) == 0;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for SetAlgebra.contains(_:) in conformance SwipeGesture.Direction(unsigned __int8 *a1)
{
  v2 = *a1;
  if (v2 < 0x10)
  {
    return (v2 & ~*v1) == 0;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unsigned __int8 *protocol witness for RawRepresentable.init(rawValue:) in conformance SwipeGesture.Direction@<X0>(unsigned __int8 *result@<X0>, _WORD *a2@<X8>)
{
  v2 = *result;
  if (v2 >= 0x10)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *a2 = v2;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SwipeGesture and conformance SwipeGesture()
{
  result = lazy protocol witness table cache variable for type SwipeGesture and conformance SwipeGesture;
  if (!lazy protocol witness table cache variable for type SwipeGesture and conformance SwipeGesture)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SwipeGesture and conformance SwipeGesture);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SwipeGesture and conformance SwipeGesture;
  if (!lazy protocol witness table cache variable for type SwipeGesture and conformance SwipeGesture)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SwipeGesture and conformance SwipeGesture);
  }

  return result;
}

double SwipeGesture.internalBody.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = xmmword_18CDC1330;
  *(a1 + 16) = xmmword_18CDC1340;
  result = 0.0;
  *(a1 + 32) = xmmword_18CDC1350;
  *(a1 + 48) = xmmword_18CDC1360;
  *(a1 + 64) = v2;
  *(a1 + 72) = 4;
  *(a1 + 80) = 0;
  return result;
}

uint64_t SpatialSwipeGesture.body.getter()
{
  v5 = v0[2];
  v6 = v0[3];
  v7 = *(v0 + 64);
  v3 = *v0;
  v4 = v0[1];
  type metadata accessor for EventListener<SpatialEvent>();
  lazy protocol witness table accessor for type ModifierGesture<StateContainerGesture<SpatialSwipeGesture.StateType, SpatialEvent, SwipeGesture.Value>, ModifierGesture<EventFilter<SpatialEvent>, EventListener<SpatialEvent>>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type EventListener<SpatialEvent> and conformance EventListener<A>, type metadata accessor for EventListener<SpatialEvent>);
  Gesture.eventFilter<A>(forType:_:)();
  v1 = swift_allocObject();
  *(v1 + 48) = v5;
  *(v1 + 64) = v6;
  *(v1 + 80) = v7;
  *(v1 + 16) = v3;
  *(v1 + 32) = v4;
  type metadata accessor for ModifierGesture<StateContainerGesture<SpatialSwipeGesture.StateType, SpatialEvent, SwipeGesture.Value>, ModifierGesture<EventFilter<SpatialEvent>, EventListener<SpatialEvent>>>();
  lazy protocol witness table accessor for type ModifierGesture<StateContainerGesture<SpatialSwipeGesture.StateType, SpatialEvent, SwipeGesture.Value>, ModifierGesture<EventFilter<SpatialEvent>, EventListener<SpatialEvent>>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<StateContainerGesture<SpatialSwipeGesture.StateType, SpatialEvent, SwipeGesture.Value>, ModifierGesture<EventFilter<SpatialEvent>, EventListener<SpatialEvent>>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<StateContainerGesture<SpatialSwipeGesture.StateType, SpatialEvent, SwipeGesture.Value>, ModifierGesture<EventFilter<SpatialEvent>, EventListener<SpatialEvent>>>);
  Gesture.dependency(_:)();
}

uint64_t SpatialSwipeGesture.phase(state:event:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result;
  v5 = *(a2 + 48);
  v55[2] = *(a2 + 32);
  v55[3] = v5;
  v55[4] = *(a2 + 64);
  v56 = *(a2 + 80);
  v6 = *(a2 + 16);
  v55[0] = *a2;
  v55[1] = v6;
  v7 = v3[3];
  v48 = v3[2];
  v49 = v7;
  v8 = v3[1];
  v46 = *v3;
  v47 = v8;
  v9 = *(v3 + 64);
  v10 = HIBYTE(v56);
  if (HIBYTE(v56) - 1 >= 2)
  {
    if (HIBYTE(v56))
    {
      v20 = 0;
      goto LABEL_20;
    }

    if (!*(v3 + 64))
    {
      goto LABEL_19;
    }
  }

  else
  {
    v11 = v55[0];
    v12 = *(a2 + 64);
    v52 = *(a2 + 48);
    v53 = v12;
    v54 = *(a2 + 80);
    v13 = *(a2 + 32);
    v50 = *(a2 + 16);
    v51 = v13;
    if (*(result + 57))
    {
      goto LABEL_19;
    }

    v14 = a3;
    if (*(result + 24))
    {
      v44[0] = v55[0];
      v44[3] = v52;
      v44[4] = v53;
      v45 = v54;
      v44[2] = v51;
      v44[1] = v50;
      outlined init with copy of GesturePhase<SpatialEvent>(v55, &v38);
      SpatialEvent.globalLocation.getter();
      v16 = v15;
      v18 = v17;
      v19 = *(&v11 + 1);
    }

    else
    {
      v18 = *(result + 8);
      v19 = *(result + 16);
      v16 = *result;
      outlined init with copy of GesturePhase<SpatialEvent>(v55, &v38);
    }

    *v4 = v16;
    *(v4 + 8) = v18;
    *(v4 + 16) = v19;
    *(v4 + 24) = 0;
    v21 = v19;
    v22 = v16;
    v23 = v18;
    if ((*(v4 + 56) & 1) == 0)
    {
      v23 = *(v4 + 40);
      v21 = *(v4 + 48);
      v22 = *(v4 + 32);
    }

    *(v4 + 32) = v22;
    *(v4 + 40) = v23;
    *(v4 + 48) = v21;
    *(v4 + 56) = 0;
    v24 = *(&v11 + 1) - v19;
    if (v24 > 0.5)
    {
      result = outlined destroy of GesturePhase<SpatialEvent>(v55);
      v20 = 0;
LABEL_16:
      v10 = 3;
      a3 = v14;
      goto LABEL_20;
    }

    v38 = v11;
    v41 = v52;
    v42 = v53;
    v43 = v54;
    v39 = v50;
    v40 = v51;
    SpatialEvent.globalLocation.getter();
    v38 = v11;
    v26 = v25 - v16;
    v41 = v52;
    v42 = v53;
    v43 = v54;
    v39 = v50;
    v40 = v51;
    SpatialEvent.globalLocation.getter();
    v38 = v11;
    v28 = v27 - v18;
    v41 = v52;
    v42 = v53;
    v43 = v54;
    v39 = v50;
    v40 = v51;
    SpatialEvent.globalLocation.getter();
    v38 = v11;
    v30 = v29 - v22;
    v41 = v52;
    v42 = v53;
    v43 = v54;
    v39 = v50;
    v40 = v51;
    SpatialEvent.globalLocation.getter();
    LOBYTE(v44[0]) = v9;
    v32 = SwipeDetector.checkForSwipe(with:time:currentDelta:currentTimeChange:allowedDirections:state:)(&v38, v44, v26, v28, v24, v30, v31 - v23, *(&v11 + 1) - v21);
    v20 = v38;
    v33 = BYTE1(v38);
    v38 = v11;
    v41 = v52;
    v42 = v53;
    v43 = v54;
    v39 = v50;
    v40 = v51;
    SpatialEvent.globalLocation.getter();
    v35 = v34;
    v37 = v36;
    result = outlined destroy of GesturePhase<SpatialEvent>(v55);
    *(v4 + 32) = v35;
    *(v4 + 40) = v37;
    *(v4 + 48) = *(&v11 + 1);
    *(v4 + 56) = 0;
    if (v32)
    {
      v20 = 0;
      *(v4 + 57) = 1;
      goto LABEL_16;
    }

    a3 = v14;
    if ((v33 & 1) == 0)
    {
      *(v4 + 58) = v20;
      v10 = 2;
      goto LABEL_20;
    }

    if (HIBYTE(v56) == 2)
    {
LABEL_19:
      v20 = 0;
      v10 = 3;
      goto LABEL_20;
    }
  }

  v10 = 0;
  v20 = *(v4 + 58);
LABEL_20:
  *a3 = v20;
  *(a3 + 2) = v10;
  return result;
}

void SpatialSwipeGesture.StateType.init()(uint64_t a1@<X8>)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = 1;
  *(a1 + 57) = 0;
}

uint64_t SwipeDetector.checkForSwipe(with:time:currentDelta:currentTimeChange:allowedDirections:state:)(__int16 *a1, unsigned __int8 *a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v16 = *a2;
  v17 = 0.5;
  if (a5 <= 0.5)
  {
    v17 = a5;
  }

  v18 = SwipeDetector.movementRates(for:)(v17);
  v22 = *(v8 + 32);
  if (one-time initialization token for horizontal == -1)
  {
    if (v16 < 0x10)
    {
      goto LABEL_5;
    }

LABEL_83:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_84:
    v40 = v21;
    v42 = v20;
    v37 = v18;
    v38 = v19;
    swift_once();
    v19 = v38;
    v21 = v40;
    v20 = v42;
    v18 = v37;
    goto LABEL_13;
  }

  v39 = v21;
  v41 = v20;
  v35 = v18;
  v36 = v19;
  swift_once();
  v19 = v36;
  v21 = v39;
  v20 = v41;
  v18 = v35;
  if (v16 >= 0x10)
  {
    goto LABEL_83;
  }

LABEL_5:
  v9 = (static SwipeGesture.Direction.horizontal & v16);
  if (v9 == 1)
  {
    if (v22 < a3)
    {
      goto LABEL_18;
    }
  }

  else if (v9 == 2 && -v22 > a3)
  {
    goto LABEL_18;
  }

  if (one-time initialization token for vertical != -1)
  {
    goto LABEL_84;
  }

LABEL_13:
  v24 = (static SwipeGesture.Direction.vertical & v16);
  if (v24 == 8)
  {
    if (-v22 > a4)
    {
      goto LABEL_18;
    }
  }

  else if (v24 == 4 && v22 < a4)
  {
    goto LABEL_18;
  }

  v26 = 0.01;
  if (a8 > 0.01)
  {
    if (v9)
    {
      v27 = fabs(a3);
      v28 = fabs(a4);
      if (v19 >= v27 && v21 >= v28)
      {
        if (v18 > v27 || v20 > v28)
        {
          if ((static SwipeGesture.Direction.vertical & v16) == 0 || v19 < v28 || v21 < v27)
          {
            goto LABEL_68;
          }

LABEL_51:
          if (v18 > v28 || v20 > v27)
          {
            goto LABEL_68;
          }

          goto LABEL_67;
        }

        v26 = a8;
LABEL_74:
        if (*(v8 + 56) <= fabs(a6 / v26))
        {
          result = 0;
          if (a3 >= 0.0)
          {
            v34 = 2;
          }

          else
          {
            v34 = 1;
          }

          goto LABEL_69;
        }

        if ((static SwipeGesture.Direction.vertical & v16) == 0)
        {
          goto LABEL_68;
        }

        v28 = fabs(a4);
        if (v19 < v28)
        {
          goto LABEL_68;
        }

        v27 = fabs(a3);
        a8 = v26;
        if (v21 < v27)
        {
          goto LABEL_68;
        }

        goto LABEL_51;
      }

      if ((static SwipeGesture.Direction.vertical & v16) != 0 && v19 >= v28 && v21 >= v27)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if ((static SwipeGesture.Direction.vertical & v16) == 0)
      {
        goto LABEL_68;
      }

      v28 = fabs(a4);
      v27 = fabs(a3);
      if (v19 >= v28 && v21 >= v27)
      {
        goto LABEL_51;
      }
    }

LABEL_18:
    *a1 = 256;
    return 1;
  }

  if (v9)
  {
    v30 = fabs(a3);
    if (v19 >= v30)
    {
      v31 = fabs(a4);
      if (v21 >= v31)
      {
        if (v18 <= v30 && v20 <= v31)
        {
          goto LABEL_74;
        }

        if ((static SwipeGesture.Direction.vertical & v16) == 0 || v19 < v31 || v21 < v30)
        {
          goto LABEL_68;
        }

        goto LABEL_64;
      }

      if ((static SwipeGesture.Direction.vertical & v16) == 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if ((static SwipeGesture.Direction.vertical & v16) == 0)
      {
        goto LABEL_18;
      }

      v31 = fabs(a4);
    }

    if (v19 < v31 || v21 < v30)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if ((static SwipeGesture.Direction.vertical & v16) == 0)
    {
      goto LABEL_68;
    }

    v31 = fabs(a4);
    v30 = fabs(a3);
    if (v19 < v31 || v21 < v30)
    {
      goto LABEL_18;
    }
  }

LABEL_64:
  if (v18 > v31 || v20 > v30)
  {
    goto LABEL_68;
  }

  a8 = 0.01;
LABEL_67:
  if (*(v8 + 56) <= fabs(a7 / a8))
  {
    result = 0;
    if (a4 >= 0.0)
    {
      v34 = 8;
    }

    else
    {
      v34 = 4;
    }

    goto LABEL_69;
  }

LABEL_68:
  result = 0;
  v34 = 256;
LABEL_69:
  *a1 = v34;
  return result;
}

double SwipeDetector.movementRates(for:)(double a1)
{
  v2 = *v1 * (1.0 - (1.0 - v1[5]) * a1);
  if (*v1 == 1.79769313e308)
  {
    return 1.79769313e308;
  }

  return v2;
}

uint64_t SwipeGesture.Direction.description.getter()
{
  v1 = *v0;
  if (one-time initialization token for all != -1)
  {
LABEL_35:
    swift_once();
  }

  if (static SwipeGesture.Direction.all == v1)
  {
    return 1819042094;
  }

  if (one-time initialization token for vertical != -1)
  {
    swift_once();
  }

  if (static SwipeGesture.Direction.vertical == v1)
  {
    return 0x616369747265762ELL;
  }

  if (one-time initialization token for horizontal != -1)
  {
    swift_once();
  }

  if (static SwipeGesture.Direction.horizontal == v1)
  {
    return 0x6E6F7A69726F682ELL;
  }

  v3 = 0;
  v4 = MEMORY[0x1E69E7CC0];
LABEL_13:
  if (v3 <= 4)
  {
    v5 = 4;
  }

  else
  {
    v5 = v3;
  }

  v6 = (&outlined read-only object #1 of SwipeGesture.Direction.description.getter + 16 * v3 + 40);
  while (v3 != 4)
  {
    if (v5 == v3)
    {
      __break(1u);
      goto LABEL_35;
    }

    v7 = outlined read-only object #0 of SwipeGesture.Direction.description.getter[v3 + 32];
    if (v7 >= 0x10)
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v9 = *v6;
    v6 += 2;
    v8 = v9;
    ++v3;
    if ((v7 & ~v1) == 0 && v8 != 0)
    {
      v11 = *(v6 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
      }

      v12 = *(v4 + 2);
      v13 = *(v4 + 3);
      v14 = v12 + 1;
      if (v12 >= v13 >> 1)
      {
        v24 = v12 + 1;
        v16 = v4;
        v17 = *(v4 + 2);
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v12 + 1, 1, v16);
        v12 = v17;
        v14 = v24;
        v4 = v18;
      }

      *(v4 + 2) = v14;
      v15 = &v4[16 * v12];
      *(v15 + 4) = v11;
      *(v15 + 5) = v8;
      goto LABEL_13;
    }
  }

  _sSSSgMaTm_2(0, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  swift_arrayDestroy();
  v19 = *(v4 + 2);
  if (v19)
  {
    if (v19 == 1)
    {
      v20 = *(v4 + 4);

      return v20;
    }

    else
    {
      _sSSSgMaTm_2(0, &lazy cache variable for type metadata for [String], MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      v21 = BidirectionalCollection<>.joined(separator:)();
      v23 = v22;

      MEMORY[0x18D00C9B0](v21, v23);

      MEMORY[0x18D00C9B0](93, 0xE100000000000000);
      return 91;
    }
  }

  else
  {

    return 23899;
  }
}

unint64_t lazy protocol witness table accessor for type SwipeGesture.Direction and conformance SwipeGesture.Direction()
{
  result = lazy protocol witness table cache variable for type SwipeGesture.Direction and conformance SwipeGesture.Direction;
  if (!lazy protocol witness table cache variable for type SwipeGesture.Direction and conformance SwipeGesture.Direction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SwipeGesture.Direction and conformance SwipeGesture.Direction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SwipeGesture.Direction and conformance SwipeGesture.Direction;
  if (!lazy protocol witness table cache variable for type SwipeGesture.Direction and conformance SwipeGesture.Direction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SwipeGesture.Direction and conformance SwipeGesture.Direction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SwipeGesture.Direction and conformance SwipeGesture.Direction;
  if (!lazy protocol witness table cache variable for type SwipeGesture.Direction and conformance SwipeGesture.Direction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SwipeGesture.Direction and conformance SwipeGesture.Direction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SwipeGesture.Direction and conformance SwipeGesture.Direction;
  if (!lazy protocol witness table cache variable for type SwipeGesture.Direction and conformance SwipeGesture.Direction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SwipeGesture.Direction and conformance SwipeGesture.Direction);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifierGesture<StateContainerGesture<SpatialSwipeGesture.StateType, SpatialEvent, SwipeGesture.Value>, ModifierGesture<EventFilter<SpatialEvent>, EventListener<SpatialEvent>>> and conformance ModifierGesture<A, B>(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata accessor for ModifierGesture<CategoryGesture<SwipeGesture.Value>, SpatialSwipeGesture>()
{
  if (!lazy cache variable for type metadata for ModifierGesture<CategoryGesture<SwipeGesture.Value>, SpatialSwipeGesture>)
  {
    _sSSSgMaTm_2(255, &lazy cache variable for type metadata for CategoryGesture<SwipeGesture.Value>, &type metadata for SwipeGesture.Value, MEMORY[0x1E697E628]);
    lazy protocol witness table accessor for type CategoryGesture<SwipeGesture.Value> and conformance CategoryGesture<A>();
    lazy protocol witness table accessor for type SpatialSwipeGesture and conformance SpatialSwipeGesture();
    v0 = type metadata accessor for ModifierGesture();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifierGesture<CategoryGesture<SwipeGesture.Value>, SpatialSwipeGesture>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type CategoryGesture<SwipeGesture.Value> and conformance CategoryGesture<A>()
{
  result = lazy protocol witness table cache variable for type CategoryGesture<SwipeGesture.Value> and conformance CategoryGesture<A>;
  if (!lazy protocol witness table cache variable for type CategoryGesture<SwipeGesture.Value> and conformance CategoryGesture<A>)
  {
    _sSSSgMaTm_2(255, &lazy cache variable for type metadata for CategoryGesture<SwipeGesture.Value>, &type metadata for SwipeGesture.Value, MEMORY[0x1E697E628]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CategoryGesture<SwipeGesture.Value> and conformance CategoryGesture<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpatialSwipeGesture and conformance SpatialSwipeGesture()
{
  result = lazy protocol witness table cache variable for type SpatialSwipeGesture and conformance SpatialSwipeGesture;
  if (!lazy protocol witness table cache variable for type SpatialSwipeGesture and conformance SpatialSwipeGesture)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialSwipeGesture and conformance SpatialSwipeGesture);
  }

  return result;
}

void type metadata accessor for EventListener<SpatialEvent>()
{
  if (!lazy cache variable for type metadata for EventListener<SpatialEvent>)
  {
    v0 = type metadata accessor for EventListener();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EventListener<SpatialEvent>);
    }
  }
}

uint64_t partial apply for closure #2 in SpatialSwipeGesture.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  v6 = *(v3 + 64);
  v13 = *(v3 + 48);
  v14 = v6;
  v15 = *(v3 + 80);
  v7 = *(v3 + 32);
  v11 = *(v3 + 16);
  v12 = v7;
  return SpatialSwipeGesture.phase(state:event:)(a1, v9, a3);
}

void type metadata accessor for ModifierGesture<StateContainerGesture<SpatialSwipeGesture.StateType, SpatialEvent, SwipeGesture.Value>, ModifierGesture<EventFilter<SpatialEvent>, EventListener<SpatialEvent>>>()
{
  if (!lazy cache variable for type metadata for ModifierGesture<StateContainerGesture<SpatialSwipeGesture.StateType, SpatialEvent, SwipeGesture.Value>, ModifierGesture<EventFilter<SpatialEvent>, EventListener<SpatialEvent>>>)
  {
    type metadata accessor for StateContainerGesture<SpatialSwipeGesture.StateType, SpatialEvent, SwipeGesture.Value>();
    type metadata accessor for ModifierGesture<EventFilter<SpatialEvent>, EventListener<SpatialEvent>>();
    lazy protocol witness table accessor for type ModifierGesture<StateContainerGesture<SpatialSwipeGesture.StateType, SpatialEvent, SwipeGesture.Value>, ModifierGesture<EventFilter<SpatialEvent>, EventListener<SpatialEvent>>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type StateContainerGesture<SpatialSwipeGesture.StateType, SpatialEvent, SwipeGesture.Value> and conformance StateContainerGesture<A, B, C>, type metadata accessor for StateContainerGesture<SpatialSwipeGesture.StateType, SpatialEvent, SwipeGesture.Value>);
    lazy protocol witness table accessor for type ModifierGesture<StateContainerGesture<SpatialSwipeGesture.StateType, SpatialEvent, SwipeGesture.Value>, ModifierGesture<EventFilter<SpatialEvent>, EventListener<SpatialEvent>>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<EventFilter<SpatialEvent>, EventListener<SpatialEvent>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<EventFilter<SpatialEvent>, EventListener<SpatialEvent>>);
    v0 = type metadata accessor for ModifierGesture();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifierGesture<StateContainerGesture<SpatialSwipeGesture.StateType, SpatialEvent, SwipeGesture.Value>, ModifierGesture<EventFilter<SpatialEvent>, EventListener<SpatialEvent>>>);
    }
  }
}

void type metadata accessor for StateContainerGesture<SpatialSwipeGesture.StateType, SpatialEvent, SwipeGesture.Value>()
{
  if (!lazy cache variable for type metadata for StateContainerGesture<SpatialSwipeGesture.StateType, SpatialEvent, SwipeGesture.Value>)
  {
    lazy protocol witness table accessor for type SpatialSwipeGesture.StateType and conformance SpatialSwipeGesture.StateType();
    v0 = type metadata accessor for StateContainerGesture();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StateContainerGesture<SpatialSwipeGesture.StateType, SpatialEvent, SwipeGesture.Value>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type SpatialSwipeGesture.StateType and conformance SpatialSwipeGesture.StateType()
{
  result = lazy protocol witness table cache variable for type SpatialSwipeGesture.StateType and conformance SpatialSwipeGesture.StateType;
  if (!lazy protocol witness table cache variable for type SpatialSwipeGesture.StateType and conformance SpatialSwipeGesture.StateType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialSwipeGesture.StateType and conformance SpatialSwipeGesture.StateType);
  }

  return result;
}

void type metadata accessor for ModifierGesture<EventFilter<SpatialEvent>, EventListener<SpatialEvent>>()
{
  if (!lazy cache variable for type metadata for ModifierGesture<EventFilter<SpatialEvent>, EventListener<SpatialEvent>>)
  {
    _sSSSgMaTm_2(255, &lazy cache variable for type metadata for EventFilter<SpatialEvent>, MEMORY[0x1E697DF80], MEMORY[0x1E697DCD8]);
    type metadata accessor for EventListener<SpatialEvent>();
    lazy protocol witness table accessor for type EventFilter<SpatialEvent> and conformance EventFilter<A>();
    lazy protocol witness table accessor for type ModifierGesture<StateContainerGesture<SpatialSwipeGesture.StateType, SpatialEvent, SwipeGesture.Value>, ModifierGesture<EventFilter<SpatialEvent>, EventListener<SpatialEvent>>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type EventListener<SpatialEvent> and conformance EventListener<A>, type metadata accessor for EventListener<SpatialEvent>);
    v0 = type metadata accessor for ModifierGesture();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifierGesture<EventFilter<SpatialEvent>, EventListener<SpatialEvent>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EventFilter<SpatialEvent> and conformance EventFilter<A>()
{
  result = lazy protocol witness table cache variable for type EventFilter<SpatialEvent> and conformance EventFilter<A>;
  if (!lazy protocol witness table cache variable for type EventFilter<SpatialEvent> and conformance EventFilter<A>)
  {
    _sSSSgMaTm_2(255, &lazy cache variable for type metadata for EventFilter<SpatialEvent>, MEMORY[0x1E697DF80], MEMORY[0x1E697DCD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EventFilter<SpatialEvent> and conformance EventFilter<A>);
  }

  return result;
}

uint64_t outlined init with copy of GesturePhase<SpatialEvent>(uint64_t a1, uint64_t a2)
{
  _sSSSgMaTm_2(0, &lazy cache variable for type metadata for GesturePhase<SpatialEvent>, MEMORY[0x1E697DF80], MEMORY[0x1E697DE58]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of GesturePhase<SpatialEvent>(uint64_t a1)
{
  _sSSSgMaTm_2(0, &lazy cache variable for type metadata for GesturePhase<SpatialEvent>, MEMORY[0x1E697DF80], MEMORY[0x1E697DE58]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for SpatialSwipeGesture.StateType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 59))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 57);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SpatialSwipeGesture.StateType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 58) = 0;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 59) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 59) = 0;
    }

    if (a2)
    {
      *(result + 57) = a2 + 1;
    }
  }

  return result;
}

uint64_t Picker.init(selection:content:label:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X5>, uint64_t a6@<X7>, uint64_t *a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v25 = a3;
  v26 = a6;
  v21 = a4;
  v22 = a7;
  v23 = a2;
  v24 = a8;
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Binding();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v21 - v17;
  v19 = (*(v15 + 16))(&v21 - v17, a1, v14, v16);
  v21(v19);
  Picker.init(selection:label:content:)(v18, v13, v23, v25, a5, v26, v24, v22, a9, a10);
  return (*(v15 + 8))(a1, v14);
}

uint64_t Picker.init<A>(selection:content:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  v11 = type metadata accessor for Picker();
  *(a7 + v11[19]) = 0;
  type metadata accessor for Binding();
  v12 = Sequence.compactMap<A>(_:)();
  (*(*(a6 - 8) + 8))(a1, a6);
  *a7 = v12;
  (*(*(a5 - 8) + 32))(a7 + v11[18], a2, a5);
  return (*(*(a4 - 8) + 32))(a7 + v11[17], a3, a4);
}

uint64_t Picker.init<A>(sources:selection:content:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v49 = a2;
  v50 = a7;
  v46 = a6;
  v47 = a5;
  v44 = a4;
  v45 = a3;
  v48 = a9;
  v40 = a13;
  v51 = a12;
  v52 = a11;
  v53 = a1;
  v38 = a14;
  MEMORY[0x1EEE9AC00](a1);
  v43 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v41 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *(*(v19 + 8) + 8);
  v20 = *(v42 + 8);
  v21 = type metadata accessor for LazySequence();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v38 - v23;
  v25 = type metadata accessor for LazyMapSequence();
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v38 - v27;
  MEMORY[0x18D00CB50](a10, v20, v26);
  v29 = swift_allocObject();
  v29[2] = v50;
  v29[3] = a8;
  v30 = v51;
  v31 = v52;
  v29[4] = a10;
  v29[5] = v31;
  v32 = v40;
  v29[6] = v30;
  v29[7] = v32;
  v29[8] = v38;
  v29[9] = v49;

  swift_getWitnessTable();
  LazySequenceProtocol.map<A>(_:)();

  v33 = (*(v22 + 8))(v24, v21);
  v34 = v41;
  v35 = v45(v33);
  v36 = v43;
  v47(v35);
  v54 = v42;
  swift_getWitnessTable();
  Picker.init<A>(selection:content:label:)(v28, v34, v36, v50, v39, v25, v48);

  return (*(*(a10 - 8) + 8))(v53, a10);
}

uint64_t Picker.init(selection:label:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>, uint64_t a9, uint64_t a10)
{
  v30 = a8;
  v31 = a7;
  v26[0] = a6;
  v26[2] = a4;
  v27 = a3;
  v28 = a2;
  v12 = *(a5 - 8);
  v29 = a9;
  v26[1] = a10;
  MEMORY[0x1EEE9AC00](a1);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Binding();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = v26 - v21;
  v23 = (*(v19 + 16))(v26 - v21, a1, v18, v20);
  v27(v23);
  v24 = v28;
  (*(v12 + 16))(v14, v28, a5);
  Picker.init(selection:content:label:)(v22, v17, v14, a5, v26[0], v30);
  (*(v12 + 8))(v24, a5);
  return (*(v19 + 8))(a1, v18);
}

uint64_t Picker<>.init(_:selection:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t)@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v26 = a6;
  v27 = a7;
  v24 = a8;
  v25 = a9;
  v23 = a10;
  v16 = type metadata accessor for Binding();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v22 - v19;
  (*(v17 + 16))(&v22 - v19, a5, v16, v18);
  v28 = a1;
  v29 = a2;
  v30 = a3;
  v31 = a4;
  Picker.init(selection:content:label:)(v20, v26, v27, partial apply for closure #1 in Section<>.init<A>(_:isExpanded:content:), MEMORY[0x1E6981148], v25, v24, MEMORY[0x1E6981138], v23, a11);

  return (*(v17 + 8))(a5, v16);
}

uint64_t Picker<>.init<A>(_:selection:content:)@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void (*a5)(uint64_t)@<X5>, uint64_t a6@<X7>, uint64_t *a7@<X8>, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11)
{
  v30 = a7;
  v31 = a6;
  v27 = a3;
  v26[3] = a2;
  v29 = a10;
  v28 = a11;
  MEMORY[0x1EEE9AC00](a1);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a9 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = (*(v15 + 16))(v19, v20, a9, v17);
  a5(v21);
  v32[0] = Text.init(_:tableName:bundle:comment:)();
  v32[1] = v22;
  v33 = v23 & 1;
  v34 = v24;
  Picker.init<A>(selection:content:label:)(v19, v14, v32, MEMORY[0x1E6981148], a8, a9, v30);
  return (*(v15 + 8))(a4, a9);
}

uint64_t Picker<>.init<A>(_:sources:selection:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t)@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v37 = a8;
  v38 = a7;
  v42 = a4;
  v43 = a9;
  v41 = a3;
  v39 = a1;
  v40 = a2;
  v44 = a12;
  v45 = a13;
  v46 = a10;
  v47 = a5;
  MEMORY[0x1EEE9AC00](a1);
  v35 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *(*(a14 + 8) + 8);
  v16 = *(v36 + 8);
  v17 = type metadata accessor for LazySequence();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v33 - v19;
  v34 = type metadata accessor for LazyMapSequence();
  v21 = MEMORY[0x1EEE9AC00](v34);
  v23 = &v33 - v22;
  MEMORY[0x18D00CB50](a11, v16, v21);
  v24 = swift_allocObject();
  v24[2] = v46;
  v24[3] = a11;
  v25 = v45;
  v24[4] = v44;
  v24[5] = v25;
  v24[6] = a14;
  v24[7] = a6;

  swift_getWitnessTable();
  LazySequenceProtocol.map<A>(_:)();

  v26 = (*(v18 + 8))(v20, v17);
  v27 = v35;
  v38(v26);
  v49[0] = Text.init(_:tableName:bundle:comment:)();
  v49[1] = v28;
  v50 = v29 & 1;
  v51 = v30;
  v48 = v36;
  v31 = v34;
  swift_getWitnessTable();
  Picker.init<A>(selection:content:label:)(v23, v27, v49, MEMORY[0x1E6981148], v46, v31, v43);

  return (*(*(a11 - 8) + 8))(v47, a11);
}

uint64_t Picker<>.init<A>(_:selection:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>, uint64_t a9)
{
  v26 = a7;
  v27 = a3;
  v28 = a4;
  v29 = a5;
  v25 = a8;
  v12 = *(a6 - 8);
  v24 = a9;
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Binding();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v24 - v18;
  (*(v16 + 16))(&v24 - v18, a2, v15, v17);
  (*(v12 + 16))(v14, a1, a6);
  v30[0] = Text.init<A>(_:)();
  v30[1] = v20;
  v31 = v21 & 1;
  v32 = v22;
  Picker.init(selection:label:content:)(v19, v30, v27, v28, MEMORY[0x1E6981148], v29, MEMORY[0x1E6981138], v25, v26, v24);
  (*(v16 + 8))(a2, v15);
  return (*(v12 + 8))(a1, a6);
}

uint64_t Picker<>.init<A, B>(_:selection:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t *a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v38 = a7;
  v39 = a3;
  v32 = a2;
  v33 = a1;
  v37 = a8;
  v35 = a4;
  v36 = a9;
  v12 = *(a6 - 8);
  v34 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v24;
  v26 = (*(v19 + 16))(v23, v21);
  v32(v26);
  v27 = v33;
  (*(v12 + 16))(v14, v33, a6);
  v40[0] = Text.init<A>(_:)();
  v40[1] = v28;
  v41 = v29 & 1;
  v42 = v30;
  Picker.init<A>(selection:content:label:)(v23, v17, v40, MEMORY[0x1E6981148], v35, a5, v38);
  (*(v19 + 8))(v25, a5);
  return (*(v12 + 8))(v27, a6);
}

uint64_t Picker<>.init<A, B>(_:sources:selection:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v47 = a8;
  v48 = a7;
  v54 = a5;
  v55 = a4;
  v56 = a1;
  v57 = a9;
  v58 = a11;
  v59 = a10;
  v60 = a2;
  v53 = *(a8 - 8);
  v44 = a13;
  v43 = a12;
  MEMORY[0x1EEE9AC00](a1);
  v51 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v50 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = *(*(v20 + 8) + 8);
  v21 = *(v52 + 8);
  v22 = type metadata accessor for LazySequence();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v43 - v24;
  v49 = type metadata accessor for LazyMapSequence();
  v26 = MEMORY[0x1EEE9AC00](v49);
  v28 = &v43 - v27;
  MEMORY[0x18D00CB50](a7, v21, v26);
  v29 = swift_allocObject();
  v29[2] = a6;
  v29[3] = a7;
  v30 = v47;
  v32 = v58;
  v31 = v59;
  v29[4] = v47;
  v29[5] = v31;
  v33 = v43;
  v29[6] = v32;
  v29[7] = v33;
  v29[8] = v44;
  v29[9] = a3;
  v45 = a3;

  swift_getWitnessTable();
  LazySequenceProtocol.map<A>(_:)();

  v34 = (*(v23 + 8))(v25, v22);
  v35 = v50;
  v55(v34);
  v36 = v53;
  v37 = v56;
  (*(v53 + 16))(v51, v56, v30);
  v62[0] = Text.init<A>(_:)();
  v62[1] = v38;
  v63 = v39 & 1;
  v64 = v40;
  v61 = v52;
  v41 = v49;
  swift_getWitnessTable();
  Picker.init<A>(selection:content:label:)(v28, v35, v62, MEMORY[0x1E6981148], v46, v41, v57);

  (*(*(v48 - 8) + 8))(v60);
  return (*(v36 + 8))(v37, v30);
}

uint64_t Picker<>.init(_:image:selection:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t)@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v33 = a7;
  v34 = a8;
  v31 = a9;
  v29 = a13;
  v30 = a12;
  v32 = a11;
  v19 = type metadata accessor for Binding();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v29 - v22;
  (*(v20 + 16))(&v29 - v22, a6, v19, v21);
  v35 = a1;
  v36 = a2;
  v37 = a3;
  v38 = a4;
  v39 = a5;
  type metadata accessor for Label<Text, Image>();
  v25 = v24;
  v26 = lazy protocol witness table accessor for type Label<Text, Image> and conformance Label<A, B>();
  Picker.init(selection:content:label:)(v23, v33, v34, partial apply for closure #1 in Picker<>.init(_:image:selection:content:), v25, v32, v31, v26, v30, v29);

  (*(v20 + 8))(a6, v19);
  v27 = type metadata accessor for ImageResource();
  return (*(*(v27 - 8) + 8))(a5, v27);
}

uint64_t Picker<>.init<A>(_:image:sources:selection:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v32 = a8;
  v35 = a6;
  v34 = a5;
  v33 = a4;
  v31 = a3;
  v30 = a1;
  v36 = a7;
  v37 = a9;
  v16 = *a7;
  v17 = *(a12 - 8);
  v29 = a11;
  v18 = MEMORY[0x1EEE9AC00](a1);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, v21, a12, v18);
  v45 = *(*(v16 + *MEMORY[0x1E69E77B0]) + 16);
  v46 = a11;
  v47 = a12;
  v48 = a13;
  v49 = a14;
  v50 = a15;
  v51 = v32;
  v52 = a10;
  v39 = v30;
  v40 = a2;
  v41 = v31;
  v22 = v34;
  v42 = v33;
  v43 = v34;
  type metadata accessor for Label<Text, Image>();
  v24 = v23;
  v25 = lazy protocol witness table accessor for type Label<Text, Image> and conformance Label<A, B>();
  Picker.init<A>(sources:selection:content:label:)(v20, v36, partial apply for closure #1 in Picker<>.init<A>(_:image:sources:selection:content:), v44, partial apply for closure #1 in Picker<>.init(_:image:selection:content:), v38, v24, v29, v37, a12, v25, a13, a14, a15);

  (*(v17 + 8))(v35, a12);
  v26 = type metadata accessor for ImageResource();
  return (*(*(v26 - 8) + 8))(v22, v26);
}

uint64_t Picker<>.init<A>(_:image:selection:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v29 = a8;
  v31 = a5;
  v30 = a4;
  v33 = a3;
  v32 = a2;
  v34 = a1;
  v35 = a9;
  v16 = type metadata accessor for Binding();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v28 - v19;
  (*(v17 + 16))(&v28 - v19, a3, v16, v18);
  v45 = a6;
  v46 = a7;
  v21 = v29;
  v47 = v29;
  v48 = a10;
  v49 = a11;
  v50 = a12;
  v51 = v30;
  v52 = v31;
  v36 = a6;
  v37 = a7;
  v38 = v29;
  v39 = a10;
  v40 = a11;
  v41 = a12;
  v42 = a1;
  v22 = v32;
  v43 = v32;
  type metadata accessor for Label<Text, Image>();
  v24 = v23;
  v25 = lazy protocol witness table accessor for type Label<Text, Image> and conformance Label<A, B>();
  Picker.init(selection:content:label:)(v20, partial apply for closure #1 in Picker<>.init<A>(_:image:selection:content:), v44, partial apply for closure #2 in Picker<>.init<A>(_:image:selection:content:), v24, a7, v35, v25, a10, a11);
  (*(v17 + 8))(v33, v16);
  v26 = type metadata accessor for ImageResource();
  (*(*(v26 - 8) + 8))(v22, v26);
  return (*(*(v21 - 8) + 8))(v34, v21);
}

uint64_t closure #1 in Picker<>.init<A>(_:image:sources:selection:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v19 - v14;
  v16(v13);
  static ViewBuilder.buildExpression<A>(_:)(v11, a4, a7);
  v17 = *(v9 + 8);
  v17(v11, a4);
  static ViewBuilder.buildExpression<A>(_:)(v15, a4, a7);
  return (v17)(v15, a4);
}

double closure #2 in Picker<>.init<A>(_:image:selection:content:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for ImageResource();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, a1, a3, v13);
  (*(v9 + 16))(v11, a2, v8);
  Label<>.init<A>(_:image:)(v15, v11, a3, &v20);
  v17 = v21;
  result = *&v20;
  v19 = v22;
  *a4 = v20;
  *(a4 + 16) = v17;
  *(a4 + 24) = v19;
  return result;
}

uint64_t Picker<>.init<A, B>(_:image:sources:selection:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v35 = a7;
  v31 = a6;
  v30 = a5;
  v33 = a3;
  v32 = a2;
  v36 = a1;
  v34 = a9;
  v16 = *a4;
  v17 = *(a8 - 8);
  v18 = MEMORY[0x1EEE9AC00](a1);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, v21, v22, v18);
  v49 = *(*(v16 + *MEMORY[0x1E69E77B0]) + 16);
  v50 = v35;
  v51 = a8;
  v52 = a10;
  v53 = a11;
  v54 = a12;
  v55 = a13;
  v56 = a14;
  v57 = v30;
  v58 = v31;
  v38 = v49;
  v39 = v35;
  v40 = a8;
  v41 = a10;
  v42 = a11;
  v43 = a12;
  v44 = a13;
  v45 = a14;
  v23 = v32;
  v46 = v36;
  v47 = v32;
  type metadata accessor for Label<Text, Image>();
  v25 = v24;
  v26 = lazy protocol witness table accessor for type Label<Text, Image> and conformance Label<A, B>();
  Picker.init<A>(sources:selection:content:label:)(v20, a4, partial apply for closure #1 in Picker<>.init<A, B>(_:image:sources:selection:content:), v48, partial apply for closure #2 in Picker<>.init<A, B>(_:image:sources:selection:content:), v37, v25, v35, v34, a8, v26, a11, a12, a13);
  (*(v17 + 8))(v33, a8);
  v27 = type metadata accessor for ImageResource();
  (*(*(v27 - 8) + 8))(v23, v27);
  return (*(*(a10 - 8) + 8))(v36, a10);
}

uint64_t closure #1 in Picker<>.init<A, B>(_:image:sources:selection:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - v15;
  v17(v14);
  static ViewBuilder.buildExpression<A>(_:)(v12, a4, a8);
  v18 = *(v10 + 8);
  v18(v12, a4);
  static ViewBuilder.buildExpression<A>(_:)(v16, a4, a8);
  return (v18)(v16, a4);
}

double closure #2 in Picker<>.init<A, B>(_:image:sources:selection:content:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for ImageResource();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, a1, a3, v13);
  (*(v9 + 16))(v11, a2, v8);
  Label<>.init<A>(_:image:)(v15, v11, a3, &v20);
  v17 = v21;
  result = *&v20;
  v19 = v22;
  *a4 = v20;
  *(a4 + 16) = v17;
  *(a4 + 24) = v19;
  return result;
}

uint64_t Picker.init<A, B>(selection:content:label:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v35 = a1;
  v36 = a7;
  v43 = a6;
  v44 = a9;
  v40 = a5;
  v41 = a4;
  v38 = a3;
  v39 = a2;
  v42 = a14;
  v45 = a11;
  v37 = a13;
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v21;
  v47 = v22;
  v48 = a12;
  v49 = v23;
  v24 = type metadata accessor for PickerBuilder.Content();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v35 - v25;
  v27 = *(a10 - 8);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v35 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = (*(v27 + 16))(v31, a1, a10, v29);
  v39(v32);
  v33 = PickerBuilder.Content.init(_:)(v20, v36, a8, a12, v37);
  v41(v33);
  swift_getWitnessTable();
  Picker.init<A>(selection:content:label:)(v31, v26, v17, v43, v24, a10, v44);
  return (*(v27 + 8))(v35, a10);
}

uint64_t Picker.init<A, B>(selection:content:label:footer:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v53 = a8;
  v54 = a9;
  v48 = a7;
  v49 = a6;
  v50 = a5;
  v51 = a4;
  v46 = a3;
  v47 = a2;
  v43 = a15;
  v44 = a16;
  v41[0] = a1;
  v41[1] = a14;
  v42 = a11;
  v52 = a13;
  MEMORY[0x1EEE9AC00](a1);
  v45 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = a10;
  v56 = v24;
  v57 = a12;
  v58 = v25;
  v59 = v27;
  v60 = v26;
  v28 = type metadata accessor for PickerBuilder.ContentWithFooter();
  MEMORY[0x1EEE9AC00](v28);
  v30 = v41 - v29;
  v31 = type metadata accessor for Binding();
  v32 = *(v31 - 8);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v35 = v41 - v34;
  v36 = (*(v32 + 16))(v41 - v34, a1, v31, v33);
  v37 = v47(v36);
  v49(v37);
  v38 = PickerBuilder.ContentWithFooter.init(content:footer:)(v23, v20, v42, a12, v30);
  v39 = v45;
  v51(v38);
  swift_getWitnessTable();
  Picker.init(selection:content:label:)(v35, v30, v39, v53, v28, v54);
  return (*(v32 + 8))(v41[0], v31);
}

uint64_t Picker.init<A, B, C>(selection:content:label:footer:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v57 = a8;
  v52 = a7;
  v53 = a6;
  v54 = a5;
  v55 = a4;
  v50 = a3;
  v51 = a2;
  v44 = a1;
  v58 = a9;
  v56 = a18;
  v47 = a16;
  v48 = a17;
  v59 = a14;
  v45 = a10;
  v46 = a15;
  MEMORY[0x1EEE9AC00](a1);
  v49 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v26;
  v61 = a11;
  v62 = a12;
  v63 = v27;
  v64 = v29;
  v65 = v28;
  v30 = type metadata accessor for PickerBuilder.ContentWithFooter();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v43 - v31;
  v33 = *(a13 - 8);
  v35 = MEMORY[0x1EEE9AC00](v34);
  v37 = &v43 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = (*(v33 + 16))(v37, a1, a13, v35);
  v39 = v51(v38);
  v53(v39);
  v40 = PickerBuilder.ContentWithFooter.init(content:footer:)(v25, v22, a11, a12, v32);
  v41 = v49;
  v55(v40);
  swift_getWitnessTable();
  Picker.init<A>(selection:content:label:)(v37, v32, v41, v57, v30, a13, v58);
  return (*(v33 + 8))(v44, a13);
}

uint64_t Picker<>.init<A, B>(_:selection:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v47 = a7;
  v48 = a1;
  v44 = a4;
  v45 = a3;
  v41 = a2;
  v49 = a9;
  v43 = *(a7 - 8);
  v46 = a11;
  v40 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v20;
  v51 = v21;
  v52 = v22;
  v53 = v23;
  v42 = type metadata accessor for PickerBuilder.Content();
  MEMORY[0x1EEE9AC00](v42);
  v25 = &v40 - v24;
  v26 = type metadata accessor for Binding();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v40 - v29;
  v31 = (*(v27 + 16))(&v40 - v29, a2, v26, v28);
  v45(v31);
  PickerBuilder.Content.init(_:)(v19, a5, a6, a8, v40);
  v32 = v43;
  v33 = v47;
  v34 = v48;
  (*(v43 + 16))(v16, v48, v47);
  v50 = Text.init<A>(_:)();
  v51 = v35;
  LOBYTE(v52) = v36 & 1;
  v53 = v37;
  v38 = v42;
  swift_getWitnessTable();
  Picker.init(selection:content:label:)(v30, v25, &v50, MEMORY[0x1E6981148], v38, v49);
  (*(v27 + 8))(v41, v26);
  return (*(v32 + 8))(v34, v33);
}

uint64_t Picker<>.init<A, B, C>(_:selection:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v46 = a3;
  v47 = a7;
  v41 = a5;
  v43 = a2;
  v51 = a9;
  v50 = a13;
  v48 = a1;
  v49 = a12;
  v44 = *(a7 - 8);
  v45 = a4;
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v21;
  v53 = v22;
  v54 = a10;
  v55 = a11;
  v23 = type metadata accessor for PickerBuilder.Content();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v40 - v24;
  v42 = a8;
  v26 = *(a8 - 8);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v40 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = (*(v26 + 16))(v30, a2, v28);
  v46(v31);
  PickerBuilder.Content.init(_:)(v20, v41, a6, a10, a11);
  v32 = v44;
  v33 = v47;
  v34 = v48;
  (*(v44 + 16))(v17, v48, v47);
  v52 = Text.init<A>(_:)();
  v53 = v35;
  LOBYTE(v54) = v36 & 1;
  v55 = v37;
  swift_getWitnessTable();
  v38 = v42;
  Picker.init<A>(selection:content:label:)(v30, v25, &v52, MEMORY[0x1E6981148], v23, v42, v51);
  (*(v26 + 8))(v43, v38);
  return (*(v32 + 8))(v34, v33);
}

uint64_t Picker<>.init<A, B>(_:selection:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v31 = a8;
  v32 = a5;
  v33 = a7;
  v34 = a6;
  v37 = a3;
  v35 = a1;
  v36 = a2;
  v40 = a9;
  v38 = a4;
  v39 = a14;
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v17;
  v42 = a10;
  v43 = a12;
  v44 = a13;
  v18 = type metadata accessor for PickerBuilder.Content();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v31 - v19;
  v21 = *(a11 - 8);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v31 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = (*(v21 + 16))(v25, a5, a11, v23);
  v34(v26);
  PickerBuilder.Content.init(_:)(v16, v31, a10, a12, a13);
  v41 = Text.init(_:tableName:bundle:comment:)();
  v42 = v27;
  LOBYTE(v43) = v28 & 1;
  v44 = v29;
  swift_getWitnessTable();
  Picker.init<A>(selection:content:label:)(v25, v20, &v41, MEMORY[0x1E6981148], v18, a11, v40);
  return (*(v21 + 8))(v32, a11);
}

uint64_t Picker<>.init<A, B, C>(_:selection:content:footer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v44 = a7;
  v45 = a2;
  v51 = a6;
  v52 = a5;
  v48 = a4;
  v49 = a3;
  v56 = a8;
  v54 = a1;
  v55 = a13;
  v43[1] = a14;
  v53 = a9;
  v50 = *(a9 - 8);
  v43[0] = a11;
  MEMORY[0x1EEE9AC00](a1);
  v47 = v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v22;
  v58 = v23;
  v59 = a10;
  v60 = v24;
  v61 = a12;
  v62 = v25;
  v46 = type metadata accessor for PickerBuilder.ContentWithFooter();
  MEMORY[0x1EEE9AC00](v46);
  v27 = v43 - v26;
  v28 = type metadata accessor for Binding();
  v29 = *(v28 - 8);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v32 = v43 - v31;
  v33 = (*(v29 + 16))(v43 - v31, a2, v28, v30);
  v34 = v49(v33);
  v52(v34);
  PickerBuilder.ContentWithFooter.init(content:footer:)(v21, v18, v44, a10, v27);
  v35 = v50;
  v37 = v53;
  v36 = v54;
  (*(v50 + 16))(v47, v54, v53);
  v57 = Text.init<A>(_:)();
  v58 = v38;
  LOBYTE(v59) = v39 & 1;
  v60 = v40;
  v41 = v46;
  swift_getWitnessTable();
  Picker.init(selection:content:label:)(v32, v27, &v57, MEMORY[0x1E6981148], v41, v56);
  (*(v29 + 8))(v45, v28);
  return (*(v35 + 8))(v36, v37);
}

uint64_t Picker<>.init<A, B, C, D>(_:selection:content:footer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v56 = a6;
  v57 = a5;
  v53 = a4;
  v54 = a3;
  v52 = a2;
  v62 = a9;
  v61 = a17;
  v50[4] = a16;
  v59 = a1;
  v60 = a15;
  v50[2] = a7;
  v50[3] = a14;
  v58 = a10;
  v55 = *(a10 - 8);
  v50[1] = a13;
  MEMORY[0x1EEE9AC00](a1);
  v20 = v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v27;
  v64 = v28;
  v65 = a11;
  v66 = v29;
  v67 = v31;
  v68 = v30;
  v32 = type metadata accessor for PickerBuilder.ContentWithFooter();
  MEMORY[0x1EEE9AC00](v32);
  v34 = v50 - v33;
  v51 = a12;
  v35 = *(a12 - 8);
  v37 = MEMORY[0x1EEE9AC00](v36);
  v39 = v50 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = (*(v35 + 16))(v39, a2, v37);
  v41 = v54(v40);
  v57(v41);
  PickerBuilder.ContentWithFooter.init(content:footer:)(v26, v23, a8, a11, v34);
  v42 = v55;
  v44 = v58;
  v43 = v59;
  (*(v55 + 16))(v20, v59, v58);
  v63 = Text.init<A>(_:)();
  v64 = v45;
  LOBYTE(v65) = v46 & 1;
  v66 = v47;
  swift_getWitnessTable();
  v48 = v51;
  Picker.init<A>(selection:content:label:)(v39, v34, &v63, MEMORY[0x1E6981148], v32, v51, v62);
  (*(v35 + 8))(v52, v48);
  return (*(v42 + 8))(v43, v44);
}

uint64_t Picker<>.init<A, B>(_:selection:content:footer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(uint64_t)@<X5>, uint64_t a7@<X6>, void (*a8)(uint64_t)@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v44 = a6;
  v45 = a8;
  v43 = a7;
  v49 = a4;
  v50 = a9;
  v48 = a3;
  v46 = a1;
  v47 = a2;
  v39[2] = a16;
  v40 = a5;
  v39[0] = a14;
  v39[1] = a15;
  v41 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v18 = v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a11;
  v52 = a12;
  v53 = a13;
  v54 = v22;
  v55 = v24;
  v56 = v23;
  v42 = type metadata accessor for PickerBuilder.ContentWithFooter();
  MEMORY[0x1EEE9AC00](v42);
  v26 = v39 - v25;
  v27 = type metadata accessor for Binding();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = v39 - v30;
  v32 = (*(v28 + 16))(v39 - v30, a5, v27, v29);
  v33 = v44(v32);
  v45(v33);
  PickerBuilder.ContentWithFooter.init(content:footer:)(v21, v18, a12, a13, v26);
  v51 = Text.init(_:tableName:bundle:comment:)();
  v52 = v34;
  LOBYTE(v53) = v35 & 1;
  v54 = v36;
  v37 = v42;
  swift_getWitnessTable();
  Picker.init(selection:content:label:)(v31, v26, &v51, MEMORY[0x1E6981148], v37, v50);
  return (*(v28 + 8))(v40, v27);
}

uint64_t Picker<>.init<A, B, C>(_:selection:content:footer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(uint64_t)@<X5>, uint64_t a7@<X6>, void (*a8)(uint64_t)@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v46 = a6;
  v47 = a8;
  v45 = a7;
  v50 = a3;
  v48 = a1;
  v49 = a2;
  v53 = a9;
  v51 = a4;
  v52 = a18;
  v42[4] = a17;
  v43 = a5;
  v42[3] = a16;
  v42[1] = a15;
  v44 = a10;
  v42[2] = a11;
  MEMORY[0x1EEE9AC00](a1);
  v20 = v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v24;
  v55 = a12;
  v56 = a13;
  v57 = v25;
  v58 = v27;
  v59 = v26;
  v28 = type metadata accessor for PickerBuilder.ContentWithFooter();
  MEMORY[0x1EEE9AC00](v28);
  v30 = v42 - v29;
  v31 = *(a14 - 8);
  v33 = MEMORY[0x1EEE9AC00](v32);
  v35 = v42 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = (*(v31 + 16))(v35, a5, a14, v33);
  v37 = v46(v36);
  v47(v37);
  PickerBuilder.ContentWithFooter.init(content:footer:)(v23, v20, a12, a13, v30);
  v54 = Text.init(_:tableName:bundle:comment:)();
  v55 = v38;
  LOBYTE(v56) = v39 & 1;
  v57 = v40;
  swift_getWitnessTable();
  Picker.init<A>(selection:content:label:)(v35, v30, &v54, MEMORY[0x1E6981148], v28, a14, v53);
  return (*(v31 + 8))(v43, a14);
}

uint64_t Picker.init<A>(selection:content:label:currentValueLabel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v56 = a8;
  v57 = a4;
  v50 = a1;
  v51 = a5;
  v58 = a2;
  v59 = a3;
  v61 = a9;
  v53 = a11;
  v54 = a10;
  v52 = *(a8 - 8);
  v55 = a13;
  v60 = a12;
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = *(v18 - 8);
  v19 = v48;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v47 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for Binding();
  v28 = *(v49 - 8);
  v29 = MEMORY[0x1EEE9AC00](v49);
  v31 = &v47 - v30;
  (*(v28 + 16))(&v47 - v30, a1, v29);
  v32 = *(v24 + 16);
  v47 = a7;
  v32(v27, v58, a7);
  v33 = v51;
  (*(v19 + 16))(v22, v59, v51);
  v34 = v31;
  v35 = v27;
  v36 = v22;
  v37 = a6;
  v38 = v53;
  v39 = v54;
  Picker.init(selection:content:label:)(v34, v35, v36, v33, a7, v61);
  v40 = v52;
  v42 = v56;
  v41 = v57;
  (*(v52 + 16))(v17, v57, v56);
  v55 = AnyView.init<A>(_:)();
  (*(v40 + 8))(v41, v42);
  (*(v48 + 8))(v59, v33);
  v43 = v47;
  (*(v24 + 8))(v58, v47);
  (*(v28 + 8))(v50, v49);
  v62 = v33;
  v63 = v37;
  v64 = v43;
  v65 = v39;
  v66 = v38;
  v67 = v60;
  v44 = *(type metadata accessor for Picker() + 76);
  v45 = v61;

  *(v45 + v44) = v55;
  return result;
}

uint64_t Picker.init<A, B>(selection:content:label:currentValueLabel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v67 = a6;
  v68 = a4;
  v57 = a2;
  v71 = a9;
  v69 = a13;
  v70 = a12;
  v63 = a3;
  v64 = a11;
  v66 = a10;
  v19 = *(a10 - 8);
  v59 = a1;
  v60 = v19;
  v65 = a15;
  v61 = a14;
  MEMORY[0x1EEE9AC00](a1);
  v62 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = *(v21 - 8);
  v22 = v56;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = *(v26 - 8);
  v27 = v58;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v55 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(v31 - 8);
  v34 = MEMORY[0x1EEE9AC00](v33);
  v36 = &v55 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *(v32 + 16);
  v55 = v38;
  v37(v36, v34);
  (*(v27 + 16))(v30, a2, a7);
  v39 = *(v22 + 16);
  v40 = v63;
  v39(v25, v63, a5);
  v41 = v36;
  v42 = v30;
  v43 = v25;
  v44 = a5;
  v45 = v67;
  v46 = a7;
  v47 = v64;
  Picker.init<A>(selection:content:label:)(v41, v42, v43, a5, a7, a8, v71);
  v48 = v60;
  v49 = v68;
  v50 = v66;
  (*(v60 + 16))(v62, v68, v66);
  v51 = AnyView.init<A>(_:)();
  (*(v48 + 8))(v49, v50);
  (*(v56 + 8))(v40, v44);
  (*(v58 + 8))(v57, v46);
  (*(v32 + 8))(v59, v55);
  v72 = v44;
  v73 = v45;
  v74 = v46;
  v75 = v47;
  v76 = v70;
  v77 = v69;
  v52 = *(type metadata accessor for Picker() + 76);
  v53 = v71;

  *(v53 + v52) = v51;
  return result;
}

uint64_t Picker.init<A>(selection:content:label:currentValueLabel:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14, uint64_t a15)
{
  v34 = a8;
  v35 = a3;
  v42 = a7;
  v43 = a6;
  v37 = a5;
  v38 = a4;
  v36 = a2;
  v44 = a9;
  v41 = a13;
  v39 = a15;
  v40 = a14;
  v45 = a12;
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Binding();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v33 - v27;
  v29 = (*(v25 + 16))(&v33 - v27, a1, v24, v26);
  v30 = v36(v29);
  v31 = v38(v30);
  v43(v31);
  Picker.init<A>(selection:content:label:currentValueLabel:)(v28, v23, v20, v17, v34, a10, a11, v45, v44, v41, *(&v41 + 1), v40, v39);
  return (*(v25 + 8))(a1, v24);
}

uint64_t Picker.init<A, B>(sources:selection:content:label:currentValueLabel:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t)@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v69 = a8;
  v70 = a7;
  v67 = a6;
  v68 = a5;
  v65 = a4;
  v66 = a3;
  v71 = a9;
  v72 = a2;
  v63 = a18;
  v61 = a15;
  v55 = a12;
  v73 = a13;
  v74 = a14;
  v18 = *a2;
  v58 = a1;
  v59 = a16;
  v52 = a17;
  MEMORY[0x1EEE9AC00](a1);
  v64 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a10;
  MEMORY[0x1EEE9AC00](v20);
  v62 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a11;
  MEMORY[0x1EEE9AC00](v22);
  v57 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = *(*(v24 + 8) + 8);
  v25 = *(v60 + 8);
  v26 = type metadata accessor for LazySequence();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v51 - v28;
  v30 = *(v18 + *MEMORY[0x1E69E77B0] + 8);
  v56 = type metadata accessor for LazyMapSequence();
  v31 = MEMORY[0x1EEE9AC00](v56);
  v33 = &v51 - v32;
  MEMORY[0x18D00CB50](a12, v25, v31);
  v34 = swift_allocObject();
  v34[2] = a10;
  v34[3] = a11;
  v36 = v73;
  v35 = v74;
  v34[4] = a12;
  v34[5] = v36;
  v37 = v61;
  v34[6] = v35;
  v34[7] = v37;
  v38 = v59;
  v39 = v52;
  v34[8] = v59;
  v34[9] = v39;
  v40 = v63;
  v34[10] = v63;
  v34[11] = v72;

  swift_getWitnessTable();
  LazySequenceProtocol.map<A>(_:)();

  v41 = (*(v27 + 8))(v29, v26);
  v42 = v57;
  v43 = v66(v41);
  v44 = v62;
  v45 = v68(v43);
  v46 = v64;
  v70(v45);
  v47 = *(v30 + 16);
  v75 = v60;
  v48 = v56;
  WitnessTable = swift_getWitnessTable();
  Picker.init<A, B>(selection:content:label:currentValueLabel:)(v33, v42, v44, v46, v53, v47, v54, v48, v71, v73, v74, v37, v38, WitnessTable, v40);

  return (*(*(v55 - 8) + 8))(v58);
}

uint64_t Picker<>.init<A>(_:selection:content:currentValueLabel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t)@<X5>, uint64_t a7@<X6>, void (*a8)(void)@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 a14, uint64_t a15)
{
  v40 = a8;
  v41 = a9;
  v31 = a7;
  v32 = a6;
  v36 = a4;
  v35 = a3;
  v33 = a1;
  v34 = a2;
  v39 = a14;
  v38 = a15;
  v37 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Binding();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v31 - v24;
  v26 = (*(v22 + 16))(&v31 - v24, a5, v21, v23);
  v32(v26);
  v42[0] = Text.init(_:tableName:bundle:comment:)();
  v42[1] = v27;
  v43 = v28 & 1;
  v44 = v29;
  v40(v42[0]);
  Picker.init<A>(selection:content:label:currentValueLabel:)(v25, v20, v42, v17, MEMORY[0x1E6981148], a11, a12, a13, v41, MEMORY[0x1E6981138], v39, *(&v39 + 1), v38);
  return (*(v22 + 8))(a5, v21);
}

uint64_t Picker<>.init<A, B>(_:sources:selection:content:currentValueLabel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, void (*a7)(uint64_t)@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, void (*a10)(void), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v56 = a8;
  v57 = a7;
  v68 = a5;
  v60 = a3;
  v58 = a1;
  v59 = a2;
  v64 = a9;
  v63 = a11;
  v61 = a4;
  v62 = a10;
  v53 = a18;
  v67 = a15;
  v65 = a14;
  v19 = *a6;
  v66 = a16;
  v49 = a17;
  MEMORY[0x1EEE9AC00](a1);
  v55 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a12;
  MEMORY[0x1EEE9AC00](v21);
  v51 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = *(*(v23 + 8) + 8);
  v24 = *(v54 + 8);
  v25 = type metadata accessor for LazySequence();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v48 - v27;
  v29 = *(v19 + *MEMORY[0x1E69E77B0] + 8);
  v52 = type metadata accessor for LazyMapSequence();
  v30 = MEMORY[0x1EEE9AC00](v52);
  v32 = &v48 - v31;
  MEMORY[0x18D00CB50](a13, v24, v30);
  v33 = swift_allocObject();
  v33[2] = a12;
  v33[3] = a13;
  v35 = v66;
  v34 = v67;
  v33[4] = v65;
  v33[5] = v34;
  v36 = v49;
  v33[6] = v35;
  v33[7] = v36;
  v37 = v53;
  v33[8] = v53;
  v33[9] = a6;

  swift_getWitnessTable();
  LazySequenceProtocol.map<A>(_:)();

  v38 = (*(v26 + 8))(v28, v25);
  v39 = v51;
  v57(v38);
  v70[0] = Text.init(_:tableName:bundle:comment:)();
  v70[1] = v40;
  v71 = v41 & 1;
  v72 = v42;
  v43 = v55;
  v62();
  v44 = *(v29 + 16);
  v69 = v54;
  v45 = v52;
  WitnessTable = swift_getWitnessTable();
  Picker.init<A, B>(selection:content:label:currentValueLabel:)(v32, v39, v70, v43, MEMORY[0x1E6981148], v44, v50, v45, v64, v65, MEMORY[0x1E6981138], v67, v66, WitnessTable, v37);

  return (*(*(a13 - 8) + 8))(v68, a13);
}

uint64_t Picker<>.init<A, B>(_:selection:content:currentValueLabel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, void (*a4)(void)@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13)
{
  v38 = a3;
  v39 = a7;
  v35 = a2;
  v36 = a6;
  v43 = a5;
  v44 = a4;
  v40 = a1;
  v45 = a8;
  v42 = a11;
  v46 = a10;
  v41 = a13;
  v37 = a12;
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a9 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Binding();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v34 - v26;
  v28 = (*(v24 + 16))(&v34 - v26, a2, v23, v25);
  v38(v28);
  v29 = v40;
  (*(v16 + 16))(v19, v40, a9);
  v47[0] = Text.init<A>(_:)();
  v47[1] = v30;
  v48 = v31 & 1;
  v49 = v32;
  v44();
  Picker.init<A>(selection:content:label:currentValueLabel:)(v27, v22, v47, v15, MEMORY[0x1E6981148], v36, v39, v46, v45, MEMORY[0x1E6981138], v42, *(&v42 + 1), v41);
  (*(v24 + 8))(v35, v23);
  return (*(v16 + 8))(v29, a9);
}

uint64_t Picker<>.init<A, B, C>(_:sources:selection:content:currentValueLabel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, void (*a6)(void)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v69 = a7;
  v70 = a6;
  v66 = a5;
  v67 = a4;
  v68 = a1;
  v71 = a9;
  v72 = a3;
  v61 = a17;
  v62 = a2;
  v59 = a16;
  v75 = a13;
  v73 = a12;
  v18 = *a3;
  v74 = a14;
  v54 = a15;
  MEMORY[0x1EEE9AC00](a1);
  v65 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a11;
  v64 = *(a11 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v60 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v22;
  MEMORY[0x1EEE9AC00](v23);
  v57 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = *(*(v25 + 8) + 8);
  v26 = *(v63 + 8);
  v27 = type metadata accessor for LazySequence();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v52 - v29;
  v31 = *(v18 + *MEMORY[0x1E69E77B0] + 8);
  v58 = type metadata accessor for LazyMapSequence();
  v32 = MEMORY[0x1EEE9AC00](v58);
  v55 = &v52 - v33;
  MEMORY[0x18D00CB50](a10, v26, v32);
  v34 = swift_allocObject();
  v34[2] = a8;
  v34[3] = a10;
  v35 = v73;
  v34[4] = a11;
  v34[5] = v35;
  v36 = v74;
  v34[6] = v75;
  v34[7] = v36;
  v37 = v59;
  v34[8] = v54;
  v34[9] = v37;
  v38 = v61;
  v34[10] = v61;
  v34[11] = v72;

  swift_getWitnessTable();
  LazySequenceProtocol.map<A>(_:)();

  v39 = (*(v28 + 8))(v30, v27);
  v40 = v57;
  v67(v39);
  v41 = v64;
  v42 = v68;
  v43 = v53;
  (*(v64 + 16))(v60, v68, v53);
  v77[0] = Text.init<A>(_:)();
  v77[1] = v44;
  v78 = v45 & 1;
  v79 = v46;
  v47 = v65;
  v70();
  v48 = *(v31 + 16);
  v76 = v63;
  v49 = v58;
  WitnessTable = swift_getWitnessTable();
  Picker.init<A, B>(selection:content:label:currentValueLabel:)(v55, v40, v77, v47, MEMORY[0x1E6981148], v48, v56, v49, v71, v73, MEMORY[0x1E6981138], v75, v74, WitnessTable, v38);

  (*(*(a10 - 8) + 8))(v62, a10);
  return (*(v41 + 8))(v42, v43);
}

uint64_t Picker<>.init<A>(_:image:selection:content:currentValueLabel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(uint64_t)@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, void (*a10)(uint64_t), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, uint64_t a16)
{
  v41 = a7;
  v42 = a8;
  v38 = a9;
  v39 = a11;
  v40 = a10;
  v35 = a15;
  v34 = a16;
  v36 = a13;
  v37 = a14;
  v22 = type metadata accessor for Binding();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v33 - v25;
  (*(v23 + 16))(&v33 - v25, a6, v22, v24);
  v44 = a1;
  v45 = a2;
  v46 = a3;
  v47 = a4;
  v48 = a5;
  type metadata accessor for Label<Text, Image>();
  v28 = v27;
  v29 = lazy protocol witness table accessor for type Label<Text, Image> and conformance Label<A, B>();
  *(&v32 + 1) = v35;
  *&v32 = v29;
  Picker.init<A>(selection:content:label:currentValueLabel:)(v26, v41, v42, partial apply for closure #1 in Picker<>.init(_:image:selection:content:), v43, v40, v39, v28, v38, a12, v36, v37, v32, *(&v35 + 1), v34);

  (*(v23 + 8))(a6, v22);
  v30 = type metadata accessor for ImageResource();
  return (*(*(v30 - 8) + 8))(a5, v30);
}

uint64_t Picker<>.init<A, B>(_:image:sources:selection:content:currentValueLabel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t (*a8)(uint64_t)@<X7>, uint64_t *a9@<X8>, uint64_t a10, void (*a11)(uint64_t), uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int128 a16, uint64_t a17, uint64_t a18)
{
  v41 = a7;
  v42 = a8;
  v36 = a6;
  v37 = a9;
  v40 = a11;
  v38 = a10;
  v39 = a12;
  v33 = a16;
  v34 = a15;
  v35 = a13;
  v23 = *(a14 - 8);
  v24 = MEMORY[0x1EEE9AC00](a1);
  v26 = &v33 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v26, v27, a14, v24);
  v44 = a1;
  v45 = a2;
  v46 = a3;
  v47 = a4;
  v48 = a5;
  type metadata accessor for Label<Text, Image>();
  v29 = v28;
  v30 = lazy protocol witness table accessor for type Label<Text, Image> and conformance Label<A, B>();
  Picker.init<A, B>(sources:selection:content:label:currentValueLabel:)(v26, v41, v42, v38, partial apply for closure #1 in Picker<>.init<A, B>(_:image:sources:selection:content:currentValueLabel:), v43, v40, v39, v37, v29, v35, a14, v34, v30, v33, *(&v33 + 1), a17, a18);

  (*(v23 + 8))(v36, a14);
  v31 = type metadata accessor for ImageResource();
  return (*(*(v31 - 8) + 8))(a5, v31);
}

uint64_t closure #1 in Picker<>.init(_:image:selection:content:)@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v25 = a2;
  v24[1] = a1;
  v6 = type metadata accessor for ImageResource();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = v24 - v12;
  v14 = *(v7 + 16);
  v14(v24 - v12, a3, v6, v11);

  v15 = Text.init(_:tableName:bundle:comment:)();
  v17 = v16;
  v19 = v18;
  v26 = v20 & 1;
  (v14)(v9, v13, v6);
  v21 = Image.init(_:)();
  result = (*(v7 + 8))(v13, v6);
  v23 = v26;
  *a4 = v15;
  *(a4 + 8) = v17;
  *(a4 + 16) = v23;
  *(a4 + 24) = v19;
  *(a4 + 32) = v21;
  return result;
}

uint64_t Picker<>.init<A, B>(_:image:selection:content:currentValueLabel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v41 = a6;
  v42 = a7;
  v39 = a4;
  v40 = a5;
  v35 = a3;
  v36 = a1;
  v38 = a9;
  v33 = a16;
  v32 = a15;
  v31 = a12;
  v37 = a11;
  v34 = type metadata accessor for Binding();
  v20 = *(v34 - 8);
  v21 = MEMORY[0x1EEE9AC00](v34);
  v23 = &v31 - v22;
  (*(v20 + 16))(&v31 - v22, a3, v21);
  v44 = a8;
  v45 = a10;
  v24 = v31;
  v46 = a11;
  v47 = v31;
  v48 = a13;
  v49 = a14;
  v25 = v33;
  v50 = v32;
  v51 = v33;
  v52 = a1;
  v53 = a2;
  type metadata accessor for Label<Text, Image>();
  v27 = v26;
  *&v30 = lazy protocol witness table accessor for type Label<Text, Image> and conformance Label<A, B>();
  *(&v30 + 1) = a13;
  Picker.init<A>(selection:content:label:currentValueLabel:)(v23, v39, v40, partial apply for closure #1 in Picker<>.init<A, B>(_:image:selection:content:currentValueLabel:), v43, v41, v42, v27, v38, a8, a10, v24, v30, a14, v25);
  (*(v20 + 8))(v35, v34);
  v28 = type metadata accessor for ImageResource();
  (*(*(v28 - 8) + 8))(a2, v28);
  return (*(*(v37 - 8) + 8))(v36);
}

double closure #1 in Picker<>.init<A, B>(_:image:selection:content:currentValueLabel:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for ImageResource();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, a1, a3, v13);
  (*(v9 + 16))(v11, a2, v8);
  Label<>.init<A>(_:image:)(v15, v11, a3, &v20);
  v17 = v21;
  result = *&v20;
  v19 = v22;
  *a4 = v20;
  *(a4 + 16) = v17;
  *(a4 + 24) = v19;
  return result;
}

uint64_t Picker<>.init<A, B, C>(_:image:sources:selection:content:currentValueLabel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t)@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v43 = a7;
  v44 = a8;
  v41 = a5;
  v42 = a6;
  v36 = a3;
  v45 = a2;
  v38 = a1;
  v37 = a4;
  v40 = a9;
  v35 = a18;
  v34 = a17;
  v33 = a16;
  v19 = *a4;
  v20 = *(a11 - 8);
  v39 = a12;
  v21 = MEMORY[0x1EEE9AC00](a1);
  v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v23, v24, a11, v21);
  v47 = *(*(v19 + *MEMORY[0x1E69E77B0]) + 16);
  v48 = a10;
  v49 = a11;
  v50 = a12;
  v51 = a13;
  v52 = a14;
  v25 = v33;
  v53 = a15;
  v54 = v33;
  v26 = v35;
  v55 = v34;
  v56 = v35;
  v57 = a1;
  v58 = v45;
  type metadata accessor for Label<Text, Image>();
  v28 = v27;
  v29 = lazy protocol witness table accessor for type Label<Text, Image> and conformance Label<A, B>();
  Picker.init<A, B>(sources:selection:content:label:currentValueLabel:)(v23, v37, v41, v42, partial apply for closure #1 in Picker<>.init<A, B, C>(_:image:sources:selection:content:currentValueLabel:), v46, v43, v44, v40, v28, a10, a11, a13, v29, a14, a15, v25, v26);
  (*(v20 + 8))(v36, a11);
  v30 = type metadata accessor for ImageResource();
  (*(*(v30 - 8) + 8))(v45, v30);
  return (*(*(v39 - 8) + 8))(v38);
}

double closure #1 in Picker<>.init<A, B, C>(_:image:sources:selection:content:currentValueLabel:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for ImageResource();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, a1, a3, v13);
  (*(v9 + 16))(v11, a2, v8);
  Label<>.init<A>(_:image:)(v15, v11, a3, &v20);
  v17 = v21;
  result = *&v20;
  v19 = v22;
  *a4 = v20;
  *(a4 + 16) = v17;
  *(a4 + 24) = v19;
  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for Picker(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(a3 + 32);
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = v7 + v10;
  v12 = *(v9 + 64) + 7;
  v13 = (*(v9 + 80) | *(v5 + 80)) & 0x100000;
  v14 = *a2;
  *a1 = *a2;
  if ((v10 | v6) > 7 || v13 != 0 || ((v12 + ((v7 + v10 + ((v6 + 8) & ~v6)) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    a1 = (v14 + (((v10 | v6) & 0xF8 ^ 0x1F8) & ((v10 | v6) + 16)));
  }

  else
  {
    v17 = ~v10;
    v18 = (a1 + v6 + 8) & ~v6;
    v19 = (a2 + v6 + 8) & ~v6;
    v20 = *(v5 + 16);
    v22 = v8;

    v20(v18, v19, v4);
    (*(v9 + 16))((v18 + v11) & v17, (v19 + v11) & v17, v22);
    *((v12 + ((v18 + v11) & v17)) & 0xFFFFFFFFFFFFFFF8) = *((v12 + ((v19 + v11) & v17)) & 0xFFFFFFFFFFFFFFF8);
  }

  return a1;
}

void *initializeWithTake for Picker(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(*(a3 + 16) - 8);
  v6 = v5 + 32;
  v7 = *(v5 + 80);
  v8 = (a1 + v7 + 8) & ~v7;
  v9 = (a2 + v7 + 8) & ~v7;
  (*(v5 + 32))(v8, v9);
  v10 = *(v6 + 32);
  v11 = *(*(a3 + 32) - 8);
  v12 = v11 + 32;
  v13 = *(v11 + 80);
  v14 = v10 + v13;
  v15 = (v14 + v8) & ~v13;
  v16 = (v14 + v9) & ~v13;
  (*(v11 + 32))(v15, v16);
  *((*(v12 + 32) + 7 + v15) & 0xFFFFFFFFFFFFFFF8) = *((*(v12 + 32) + 7 + v16) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *assignWithTake for Picker(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(*(a3 + 16) - 8);
  v7 = v6 + 40;
  v8 = *(v6 + 80);
  v9 = (a1 + v8 + 8) & ~v8;
  v10 = (a2 + v8 + 8) & ~v8;
  (*(v6 + 40))(v9, v10);
  v11 = *(v7 + 24);
  v12 = *(*(a3 + 32) - 8);
  v13 = v12 + 40;
  v14 = *(v12 + 80);
  v15 = v11 + v14;
  v16 = (v15 + v9) & ~v14;
  v17 = (v15 + v10) & ~v14;
  (*(v12 + 40))(v16, v17);
  *((*(v13 + 24) + 7 + v16) & 0xFFFFFFFFFFFFFFF8) = *((*(v13 + 24) + 7 + v17) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for Picker(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 32);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  v11 = *(v7 + 80);
  if (v5 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v4 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  if (v13 >= a2)
  {
    goto LABEL_30;
  }

  v14 = ((*(*(v6 - 8) + 64) + ((v10 + v11 + ((v9 + 8) & ~v9)) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v15 = a2 - v13;
  v16 = v14 & 0xFFFFFFF8;
  if ((v14 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = v15 + 1;
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
      v20 = *(a1 + v14);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v20 = *(a1 + v14);
      if (!v20)
      {
        goto LABEL_30;
      }
    }
  }

  else if (!v19 || (v20 = *(a1 + v14)) == 0)
  {
LABEL_30:
    if ((v12 & 0x80000000) != 0)
    {
      v25 = (a1 + v9 + 8) & ~v9;
      if (v5 == v13)
      {
        return (*(v4 + 48))(v25);
      }

      else
      {
        return (*(v7 + 48))((v25 + v10 + v11) & ~v11, v8, v6);
      }
    }

    else
    {
      v24 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v24) = -1;
      }

      return (v24 + 1);
    }
  }

  v22 = v20 - 1;
  if (v16)
  {
    v22 = 0;
    v23 = *a1;
  }

  else
  {
    v23 = 0;
  }

  return v13 + (v23 | v22) + 1;
}

void *storeEnumTagSinglePayload for Picker(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 32) - 8);
  v8 = *(v5 + 80);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v6 <= *(v7 + 84))
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v5 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = ((v11 + ((v9 + v10 + ((v8 + 8) & ~v8)) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v13 >= a3)
  {
    v18 = 0;
    v19 = a2 - v13;
    if (a2 <= v13)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v15 = a3 - v13;
    if (((v11 + ((v9 + v10 + ((v8 + 8) & ~v8)) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = 2;
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

    v19 = a2 - v13;
    if (a2 <= v13)
    {
LABEL_20:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          *(result + v14) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_36;
        }

        *(result + v14) = 0;
      }

      else if (v18)
      {
        *(result + v14) = 0;
        if (!a2)
        {
          return result;
        }

LABEL_36:
        if ((v12 & 0x80000000) != 0)
        {
          v24 = (result + v8 + 8) & ~v8;
          if (v6 == v13)
          {
            v25 = *(v5 + 56);

            return v25(v24);
          }

          else
          {
            v26 = *(v7 + 56);
            v27 = (v24 + v9 + v10) & ~v10;

            return v26(v27);
          }
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v23 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v23 = a2 - 1;
          }

          *result = v23;
        }

        return result;
      }

      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }
  }

  if (((v11 + ((v9 + v10 + ((v8 + 8) & ~v8)) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v20 = v19;
  }

  else
  {
    v20 = 1;
  }

  if (((v11 + ((v9 + v10 + ((v8 + 8) & ~v8)) & ~v10) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v21 = ~v13 + a2;
    v22 = result;
    bzero(result, ((v11 + ((v9 + v10 + ((v8 + 8) & ~v8)) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v22;
    *v22 = v21;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      *(result + v14) = v20;
    }

    else
    {
      *(result + v14) = v20;
    }
  }

  else if (v18)
  {
    *(result + v14) = v20;
  }

  return result;
}

uint64_t partial apply for closure #1 in Picker.init<A>(selection:content:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Binding();
  v5 = *(v4 - 8);
  (*(v5 + 16))(a2, a1, v4);
  return (*(v5 + 56))(a2, 0, 1, v4);
}

void destroy for TabItem.RootView(uint64_t a1)
{
  if (*(a1 + 112))
  {
    v2 = *a1;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t initializeWithCopy for TabItem.RootView(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 112);
  if (v4)
  {
    v5 = *a2;
    *a1 = *a2;
    v6 = v5;
  }

  else
  {
    v7 = *(a2 + 24);
    *(a1 + 24) = v7;
    (**(v7 - 8))(a1, a2);
    v8 = *(a2 + 48);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = v8;
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 72) = *(a2 + 72);
    v10 = *(a2 + 88);
    v9 = *(a2 + 96);
    *(a1 + 88) = v10;
    *(a1 + 96) = v9;
    *(a1 + 104) = *(a2 + 104);

    v11 = v10;
  }

  *(a1 + 112) = v4;
  *(a1 + 113) = *(a2 + 113);
  return a1;
}

uint64_t assignWithCopy for TabItem.RootView(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    outlined destroy of TabItem.RootView.WrappedView(a1);
    if (*(a2 + 112))
    {
      v4 = *a2;
      *a1 = *a2;
      *(a1 + 112) = 1;
      v5 = v4;
    }

    else
    {
      v6 = *(a2 + 24);
      *(a1 + 24) = v6;
      *(a1 + 32) = *(a2 + 32);
      (**(v6 - 8))(a1, a2);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 60) = *(a2 + 60);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 80) = *(a2 + 80);
      v7 = *(a2 + 88);
      *(a1 + 88) = v7;
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 112) = 0;

      v8 = v7;
    }
  }

  *(a1 + 113) = *(a2 + 113);
  return a1;
}

__n128 __swift_memcpy114_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 56);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t assignWithTake for TabItem.RootView(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = result;
    outlined destroy of TabItem.RootView.WrappedView(result);
    result = v3;
    v4 = *(a2 + 80);
    *(v3 + 64) = *(a2 + 64);
    *(v3 + 80) = v4;
    *(v3 + 96) = *(a2 + 96);
    *(v3 + 112) = *(a2 + 112);
    v5 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v5;
    v6 = *(a2 + 48);
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 48) = v6;
  }

  *(result + 113) = *(a2 + 113);
  return result;
}

uint64_t getEnumTagSinglePayload for TabItem.RootView(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 114))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 112);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TabItem.RootView(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 114) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 114) = 0;
    }

    if (a2)
    {
      *(result + 112) = -a2;
    }
  }

  return result;
}

void destroy for TabItem.RootView.WrappedView(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2 >= 2)
  {
    v2 = *a1 + 2;
  }

  if (v2 == 1)
  {
    v3 = *a1;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t initializeWithCopy for TabItem.RootView.WrappedView(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 112);
  if (v3 >= 2)
  {
    v3 = *a2 + 2;
  }

  if (v3 == 1)
  {
    v4 = *a2;
    *a1 = *a2;
    v5 = v4;
    v6 = 1;
  }

  else
  {
    v7 = *(a2 + 24);
    *(a1 + 24) = v7;
    (**(v7 - 8))(a1);
    v9 = *(a2 + 48);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = v9;
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 72) = *(a2 + 72);
    v11 = *(a2 + 88);
    v10 = *(a2 + 96);
    *(a1 + 88) = v11;
    *(a1 + 96) = v10;
    *(a1 + 104) = *(a2 + 104);

    v12 = v11;

    v6 = 0;
  }

  *(a1 + 112) = v6;
  return a1;
}

uint64_t assignWithCopy for TabItem.RootView.WrappedView(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 112);
    if (v4 >= 2)
    {
      v4 = *a1 + 2;
    }

    if (v4 == 1)
    {
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
    }

    v5 = *(a2 + 112);
    if (v5 >= 2)
    {
      v5 = *a2 + 2;
    }

    if (v5 == 1)
    {
      v6 = *a2;
      *a1 = *a2;
      *(a1 + 112) = 1;
      v7 = v6;
    }

    else
    {
      v8 = *(a2 + 24);
      *(a1 + 24) = v8;
      *(a1 + 32) = *(a2 + 32);
      (**(v8 - 8))(a1, a2);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 60) = *(a2 + 60);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 80) = *(a2 + 80);
      v9 = *(a2 + 88);
      *(a1 + 88) = v9;
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 112) = 0;

      v10 = v9;
    }
  }

  return a1;
}

uint64_t assignWithTake for TabItem.RootView.WrappedView(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 112);
    if (v4 >= 2)
    {
      v4 = *a1 + 2;
    }

    if (v4 == 1)
    {
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
    }

    v5 = *(a2 + 112);
    if (v5 >= 2)
    {
      v5 = *a2 + 2;
    }

    if (v5 == 1)
    {
      *a1 = *a2;
      v6 = 1;
    }

    else
    {
      v6 = 0;
      v7 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v7;
      *(a1 + 96) = *(a2 + 96);
      v8 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v8;
      v9 = *(a2 + 48);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = v9;
    }

    *(a1 + 112) = v6;
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for TabItem.RootView.WrappedView(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 113))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 112);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TabItem.RootView.WrappedView(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 112) = 0;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 113) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 113) = 0;
    }

    if (a2)
    {
      *(result + 112) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for TabItem.RootView.WrappedView(uint64_t a1)
{
  result = *(a1 + 112);
  if (result >= 2)
  {
    return (*a1 + 2);
  }

  return result;
}

uint64_t destructiveInjectEnumTag for TabItem.RootView.WrappedView(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    v2 = a2 - 2;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 112) = a2;
  return result;
}

uint64_t destroy for TabItem(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t initializeWithCopy for TabItem(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v5;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  v7 = *(a2 + 88);
  v6 = *(a2 + 96);
  *(a1 + 88) = v7;
  *(a1 + 96) = v6;
  *(a1 + 104) = *(a2 + 104);

  v8 = v7;

  return a1;
}

uint64_t assignWithCopy for TabItem(uint64_t a1, uint64_t a2)
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

  *(a1 + 104) = *(a2 + 104);
  return a1;
}

uint64_t assignWithTake for TabItem(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  v6 = *(a1 + 88);
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);
  return a1;
}

uint64_t destroy for TabEntry(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 280);
  if (v2 >= 2)
  {
    v2 = *a1 + 2;
  }

  if (v2 != 1)
  {
    v4 = 88;
    goto LABEL_9;
  }

  result = outlined consume of TabCustomizationID.Base();
  if (*(v1 + 72))
  {
    __swift_destroy_boxed_opaque_existential_1(v1 + 48);
  }

  if (*(v1 + 184))
  {
    a1 = v1 + 160;
    v4 = 248;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return result;
}

uint64_t initializeWithCopy for TabEntry(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 280);
  if (v4 >= 2)
  {
    v4 = *a2 + 2;
  }

  if (v4 == 1)
  {
    v5 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v5;
    v6 = *(a2 + 24);
    *(a1 + 16) = *(a2 + 16);
    v7 = *(a2 + 32);
    v8 = *(a2 + 40);

    outlined copy of TabCustomizationID.Base();
    *(a1 + 24) = v6;
    *(a1 + 32) = v7;
    *(a1 + 40) = v8;
    v9 = *(a2 + 72);
    if (v9)
    {
      v10 = *(a2 + 80);
      *(a1 + 72) = v9;
      *(a1 + 80) = v10;
      (**(v9 - 8))(a1 + 48, a2 + 48);
      v11 = *(a2 + 96);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 96) = v11;
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 120) = *(a2 + 120);
      v13 = *(a2 + 136);
      v12 = *(a2 + 144);
      *(a1 + 136) = v13;
      *(a1 + 144) = v12;
      *(a1 + 152) = *(a2 + 152);

      v14 = v13;

      v15 = *(a2 + 184);
      if (v15)
      {
LABEL_6:
        v16 = *(a2 + 192);
        *(a1 + 184) = v15;
        *(a1 + 192) = v16;
        (**(v15 - 8))(a1 + 160, a2 + 160);
        v17 = *(a2 + 208);
        *(a1 + 200) = *(a2 + 200);
        *(a1 + 208) = v17;
        *(a1 + 216) = *(a2 + 216);
        *(a1 + 224) = *(a2 + 224);
        *(a1 + 232) = *(a2 + 232);
        v19 = *(a2 + 248);
        v18 = *(a2 + 256);
        *(a1 + 248) = v19;
        *(a1 + 256) = v18;
        *(a1 + 264) = *(a2 + 264);

        v20 = v19;

LABEL_10:
        *(a1 + 272) = *(a2 + 272);
        *(a1 + 280) = 1;
        return a1;
      }
    }

    else
    {
      v26 = *(a2 + 128);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 128) = v26;
      *(a1 + 144) = *(a2 + 144);
      v27 = *(a2 + 64);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 64) = v27;
      v28 = *(a2 + 96);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 96) = v28;
      v15 = *(a2 + 184);
      if (v15)
      {
        goto LABEL_6;
      }
    }

    v29 = *(a2 + 240);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = v29;
    *(a1 + 256) = *(a2 + 256);
    v30 = *(a2 + 176);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v30;
    v31 = *(a2 + 208);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = v31;
    goto LABEL_10;
  }

  v21 = *(a2 + 24);
  *(a1 + 24) = v21;
  (**(v21 - 8))(a1, a2);
  v22 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v22;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  v24 = *(a2 + 88);
  v23 = *(a2 + 96);
  *(a1 + 88) = v24;
  *(a1 + 96) = v23;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 280) = 0;

  v25 = v24;

  return a1;
}

uint64_t assignWithCopy for TabEntry(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1 == a2)
  {
    return v2;
  }

  v4 = *(a1 + 280);
  if (v4 >= 2)
  {
    v4 = *a1 + 2;
  }

  if (v4 == 1)
  {

    outlined consume of TabCustomizationID.Base();
    if (*(v2 + 72))
    {
      __swift_destroy_boxed_opaque_existential_1(v2 + 48);
    }

    if (!*(v2 + 184))
    {
      goto LABEL_11;
    }

    a1 = v2 + 160;
    v5 = 248;
  }

  else
  {
    v5 = 88;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);

LABEL_11:
  v6 = *(a2 + 280);
  if (v6 >= 2)
  {
    v6 = *a2 + 2;
  }

  if (v6 == 1)
  {
    *v2 = *a2;
    *(v2 + 8) = *(a2 + 8);
    *(v2 + 16) = *(a2 + 16);
    v7 = *(a2 + 24);
    v8 = *(a2 + 32);
    v9 = *(a2 + 40);

    outlined copy of TabCustomizationID.Base();
    *(v2 + 24) = v7;
    *(v2 + 32) = v8;
    *(v2 + 40) = v9;
    v10 = *(a2 + 72);
    if (v10)
    {
      *(v2 + 72) = v10;
      *(v2 + 80) = *(a2 + 80);
      (**(v10 - 8))(v2 + 48, a2 + 48);
      *(v2 + 88) = *(a2 + 88);
      *(v2 + 96) = *(a2 + 96);
      *(v2 + 104) = *(a2 + 104);
      *(v2 + 108) = *(a2 + 108);
      *(v2 + 112) = *(a2 + 112);
      *(v2 + 120) = *(a2 + 120);
      *(v2 + 128) = *(a2 + 128);
      v11 = *(a2 + 136);
      *(v2 + 136) = v11;
      *(v2 + 144) = *(a2 + 144);
      *(v2 + 152) = *(a2 + 152);

      v12 = v11;

      v13 = *(a2 + 184);
      if (v13)
      {
LABEL_16:
        *(v2 + 184) = v13;
        *(v2 + 192) = *(a2 + 192);
        (**(v13 - 8))(v2 + 160, a2 + 160);
        *(v2 + 200) = *(a2 + 200);
        *(v2 + 208) = *(a2 + 208);
        *(v2 + 216) = *(a2 + 216);
        *(v2 + 220) = *(a2 + 220);
        *(v2 + 224) = *(a2 + 224);
        *(v2 + 232) = *(a2 + 232);
        *(v2 + 240) = *(a2 + 240);
        v14 = *(a2 + 248);
        *(v2 + 248) = v14;
        *(v2 + 256) = *(a2 + 256);
        *(v2 + 264) = *(a2 + 264);

        v15 = v14;

LABEL_20:
        *(v2 + 272) = *(a2 + 272);
        *(v2 + 280) = 1;
        return v2;
      }
    }

    else
    {
      v19 = *(a2 + 48);
      v20 = *(a2 + 80);
      *(v2 + 64) = *(a2 + 64);
      *(v2 + 80) = v20;
      *(v2 + 48) = v19;
      v21 = *(a2 + 96);
      v22 = *(a2 + 112);
      v23 = *(a2 + 144);
      *(v2 + 128) = *(a2 + 128);
      *(v2 + 144) = v23;
      *(v2 + 96) = v21;
      *(v2 + 112) = v22;
      v13 = *(a2 + 184);
      if (v13)
      {
        goto LABEL_16;
      }
    }

    v24 = *(a2 + 160);
    v25 = *(a2 + 192);
    *(v2 + 176) = *(a2 + 176);
    *(v2 + 192) = v25;
    *(v2 + 160) = v24;
    v26 = *(a2 + 208);
    v27 = *(a2 + 224);
    v28 = *(a2 + 256);
    *(v2 + 240) = *(a2 + 240);
    *(v2 + 256) = v28;
    *(v2 + 208) = v26;
    *(v2 + 224) = v27;
    goto LABEL_20;
  }

  v16 = *(a2 + 24);
  *(v2 + 24) = v16;
  *(v2 + 32) = *(a2 + 32);
  (**(v16 - 8))(v2, a2);
  *(v2 + 40) = *(a2 + 40);
  *(v2 + 48) = *(a2 + 48);
  *(v2 + 56) = *(a2 + 56);
  *(v2 + 60) = *(a2 + 60);
  *(v2 + 64) = *(a2 + 64);
  *(v2 + 72) = *(a2 + 72);
  *(v2 + 80) = *(a2 + 80);
  v17 = *(a2 + 88);
  *(v2 + 88) = v17;
  *(v2 + 96) = *(a2 + 96);
  *(v2 + 104) = *(a2 + 104);
  *(v2 + 280) = 0;

  v18 = v17;

  return v2;
}

id *assignWithTake for TabEntry(uint64_t a1, _OWORD *a2)
{
  v2 = a1;
  if (a1 == a2)
  {
    return v2;
  }

  v4 = *(a1 + 280);
  if (v4 >= 2)
  {
    v4 = *a1 + 2;
  }

  if (v4 == 1)
  {

    outlined consume of TabCustomizationID.Base();
    if (v2[9])
    {
      __swift_destroy_boxed_opaque_existential_1((v2 + 6));
    }

    if (!v2[23])
    {
      goto LABEL_11;
    }

    a1 = (v2 + 20);
    v5 = 31;
  }

  else
  {
    v5 = 11;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);

LABEL_11:
  v6 = *(a2 + 280);
  if (v6 >= 2)
  {
    v6 = *a2 + 2;
  }

  if (v6 == 1)
  {
    memcpy(v2, a2, 0x118uLL);
    v7 = 1;
  }

  else
  {
    v7 = 0;
    v8 = a2[5];
    *(v2 + 4) = a2[4];
    *(v2 + 5) = v8;
    *(v2 + 6) = a2[6];
    v9 = a2[1];
    *v2 = *a2;
    *(v2 + 1) = v9;
    v10 = a2[3];
    *(v2 + 2) = a2[2];
    *(v2 + 3) = v10;
  }

  *(v2 + 280) = v7;
  return v2;
}

uint64_t getEnumTagSinglePayload for TabEntry(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 281))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 280);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TabEntry(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 240) = 0u;
    *(result + 256) = 0u;
    *(result + 208) = 0u;
    *(result + 224) = 0u;
    *(result + 176) = 0u;
    *(result + 192) = 0u;
    *(result + 144) = 0u;
    *(result + 160) = 0u;
    *(result + 112) = 0u;
    *(result + 128) = 0u;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *(result + 265) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 281) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 281) = 0;
    }

    if (a2)
    {
      *(result + 280) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for TabEntry(uint64_t a1)
{
  result = *(a1 + 280);
  if (result >= 2)
  {
    return (*a1 + 2);
  }

  return result;
}

uint64_t destructiveInjectEnumTag for TabEntry(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 272) = 0;
    *(result + 240) = 0u;
    *(result + 256) = 0u;
    *(result + 208) = 0u;
    *(result + 224) = 0u;
    *(result + 176) = 0u;
    *(result + 192) = 0u;
    *(result + 144) = 0u;
    *(result + 160) = 0u;
    *(result + 112) = 0u;
    *(result + 128) = 0u;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
    *(result + 32) = 0u;
  }

  *(result + 280) = a2;
  return result;
}

uint64_t TabEntry.presentationCount.getter()
{
  outlined init with copy of TabEntry(v0, __src);
  if (v28)
  {
    memcpy(__dst, __src, sizeof(__dst));
    v1 = __dst[1];
    v2 = *(__dst[1] + 16);
    if (v2)
    {
      v25 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
      v3 = v25;
      v4 = v1 + 32;
      do
      {
        v5 = outlined init with copy of TabEntry(v4, &v18);
        v6 = TabEntry.presentationCount.getter(v5);
        outlined destroy of TabEntry(&v18);
        v25 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        v9 = v8 + 1;
        if (v8 >= v7 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
          v3 = v25;
        }

        *(v3 + 16) = v9;
        *(v3 + 8 * v8 + 32) = v6;
        v4 += 288;
        --v2;
      }

      while (v2);
    }

    else
    {
      v3 = MEMORY[0x1E69E7CC0];
      v9 = *(MEMORY[0x1E69E7CC0] + 16);
      if (!v9)
      {
        goto LABEL_21;
      }
    }

    v11 = 0;
    v12 = 32;
    do
    {
      v13 = *(v3 + v12);
      v14 = __OFADD__(v11, v13);
      v11 += v13;
      if (v14)
      {
        __break(1u);
        goto LABEL_23;
      }

      v12 += 8;
      --v9;
    }

    while (v9);
    while (1)
    {

      outlined init with copy of TabItem?(&__dst[6], &v18);
      if (!*(&v19 + 1))
      {
        break;
      }

      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      ViewTraitCollection.value<A>(for:defaultValue:)();
      outlined destroy of TabItemGroup(__dst);
      v15 = v25;
      outlined destroy of TabItem(&v18);
      v16 = *(v15 + 16);

      v10 = v11 + v16;
      if (!__OFADD__(v11, v16))
      {
        return v10;
      }

      __break(1u);
LABEL_21:
      v11 = 0;
    }

    outlined destroy of TabItemGroup(__dst);
    outlined destroy of TabItem?(&v18);
    return v11;
  }

  else
  {
    v23 = *&__src[80];
    v24 = *&__src[96];
    v18 = *__src;
    v19 = *&__src[16];
    v21 = *&__src[48];
    v22 = *&__src[64];
    v20 = *&__src[32];
    v25 = *&__src[96];
    if (one-time initialization token for defaultValue != -1)
    {
LABEL_23:
      swift_once();
    }

    ViewTraitCollection.value<A>(for:defaultValue:)();
    v10 = *(__dst[0] + 16);

    outlined destroy of TabItem(&v18);
  }

  return v10;
}

uint64_t TabEntry.description.getter()
{
  outlined init with copy of TabEntry(v0, __src);
  if (v12)
  {
    memcpy(__dst, __src, 0x118uLL);
    strcpy(v9, "TabItemGroup ");
    HIWORD(v9[1]) = -4864;
    v1 = TabItemGroup.description.getter();
    MEMORY[0x18D00C9B0](v1);

    v2 = v9[0];
    outlined destroy of TabItemGroup(__dst);
  }

  else
  {
    __dst[4] = *&__src[64];
    __dst[5] = *&__src[80];
    __dst[6] = *&__src[96];
    __dst[0] = *__src;
    __dst[1] = *&__src[16];
    __dst[2] = *&__src[32];
    __dst[3] = *&__src[48];
    _StringGuts.grow(_:)(20);

    strcpy(v9, "TabItem ");
    BYTE1(v9[1]) = 0;
    WORD1(v9[1]) = 0;
    HIDWORD(v9[1]) = -402653184;
    v3 = TabItem.platformIdentifier.getter();
    MEMORY[0x18D00C9B0](v3);

    MEMORY[0x18D00C9B0](0x3D6E656464696820, 0xE800000000000000);
    v4 = TabEntry.hidden.getter();
    v5 = (v4 & 1) == 0;
    if (v4)
    {
      v6 = 1702195828;
    }

    else
    {
      v6 = 0x65736C6166;
    }

    if (v5)
    {
      v7 = 0xE500000000000000;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    MEMORY[0x18D00C9B0](v6, v7);

    v2 = v9[0];
    outlined destroy of TabItem(__dst);
  }

  return v2;
}

unint64_t TabItem.platformIdentifier.getter()
{
  *&v13 = *(v0 + 104);
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  *&v13 = *(v0 + 96);
  if ((ViewTraitCollection.isAuxiliaryContent.getter() & 1) == 0)
  {
    if (TabItem.isSearchItem.getter())
    {

      return 0xD000000000000016;
    }

    else if (TabItem.needsCustomizationIDForEnablement.getter())
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v9 = static TabOptions.TraitKey.defaultValue;
      v10[0] = unk_1EAB09380;
      *(v10 + 9) = *(&word_1EAB09388 + 1);
      v5 = static TabOptions.TraitKey.defaultValue;
      *v6 = unk_1EAB09380;
      *&v6[9] = *(&word_1EAB09388 + 1);
      outlined init with copy of TabOptions(&v9, &v7);
      ViewTraitCollection.value<A>(for:defaultValue:)();
      v11 = v5;
      v12[0] = *v6;
      *(v12 + 9) = *&v6[9];
      outlined destroy of TabOptions(&v11);
      v13 = v7;
      v14[0] = v8[0];
      *(v14 + 9) = *(v8 + 9);
      v2 = *(&v7 + 1);
      v3 = BYTE8(v8[0]);
      outlined copy of TabCustomizationID?(*(&v7 + 1), *&v8[0], SBYTE8(v8[0]));
      outlined destroy of TabOptions(&v13);
      if (v3 != 255)
      {

        return v2;
      }
    }
  }

  return v1;
}

uint64_t TabEntry.hidden.getter()
{
  outlined init with copy of TabEntry(v0, __src);
  if (v17)
  {
    memcpy(__dst, __src, 0x118uLL);
    outlined init with copy of TabItem?(&__dst[3], &v13);
    if (*&v14[8])
    {
      v1 = one-time initialization token for defaultValue;

      if (v1 != -1)
      {
        swift_once();
      }

      v7 = static TabOptions.TraitKey.defaultValue;
      v8[0] = unk_1EAB09380;
      *(v8 + 9) = *(&word_1EAB09388 + 1);
      v11 = static TabOptions.TraitKey.defaultValue;
      v12[0] = unk_1EAB09380;
      *(v12 + 9) = *(&word_1EAB09388 + 1);
      outlined init with copy of TabOptions(&v7, &v9);
      ViewTraitCollection.value<A>(for:defaultValue:)();
      outlined destroy of TabItemGroup(__dst);
      v9 = v11;
      v10[0] = v12[0];
      *(v10 + 9) = *(v12 + 9);
      outlined destroy of TabOptions(&v9);

      v11 = v5;
      v12[0] = *v6;
      *(v12 + 9) = *&v6[9];
      outlined destroy of TabOptions(&v11);
      v2 = BYTE1(v11);
      outlined destroy of TabItem(&v13);
      return v2;
    }

    else
    {
      outlined destroy of TabItemGroup(__dst);
      outlined destroy of TabItem?(&v13);
      return 0;
    }
  }

  else
  {
    __dst[5] = *&__src[80];
    __dst[6] = *&__src[96];
    __dst[0] = *__src;
    __dst[1] = *&__src[16];
    __dst[3] = *&__src[48];
    __dst[4] = *&__src[64];
    __dst[2] = *&__src[32];
    v4 = one-time initialization token for defaultValue;

    if (v4 != -1)
    {
      swift_once();
    }

    v9 = static TabOptions.TraitKey.defaultValue;
    v10[0] = unk_1EAB09380;
    *(v10 + 9) = *(&word_1EAB09388 + 1);
    v13 = static TabOptions.TraitKey.defaultValue;
    *v14 = unk_1EAB09380;
    *&v14[9] = *(&word_1EAB09388 + 1);
    outlined init with copy of TabOptions(&v9, &v11);
    ViewTraitCollection.value<A>(for:defaultValue:)();
    outlined destroy of TabItem(__dst);
    v11 = v13;
    v12[0] = *v14;
    *(v12 + 9) = *&v14[9];
    outlined destroy of TabOptions(&v11);

    v13 = v7;
    *v14 = v8[0];
    *&v14[9] = *(v8 + 9);
    outlined destroy of TabOptions(&v13);
    return BYTE1(v13);
  }
}

unint64_t TabEntry.platformIdentifier.getter()
{
  outlined init with copy of TabEntry(v0, __src);
  if (v5)
  {
    memcpy(v3, __src, 0x118uLL);
    v1 = *(&v3[1] + 1);
    outlined copy of TabCustomizationID.Base();
    outlined destroy of TabItemGroup(v3);
  }

  else
  {
    v3[4] = *&__src[64];
    v3[5] = *&__src[80];
    v3[6] = *&__src[96];
    v3[0] = *__src;
    v3[1] = *&__src[16];
    v3[2] = *&__src[32];
    v3[3] = *&__src[48];
    v1 = TabItem.platformIdentifier.getter();
    outlined destroy of TabItem(v3);
  }

  return v1;
}

uint64_t protocol witness for static _ViewTraitKey.defaultValue.getter in conformance TabItem.TraitKey@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
    v2 = a1;
  }

  return outlined init with copy of PlatformItem(&static TabItem.TraitKey.defaultValue, v2);
}

double TabItem.RootView.body.getter@<D0>(uint64_t a1@<X8>)
{
  outlined init with copy of TabItem.RootView.WrappedView(v1, v16);
  v3 = v17;
  if (v17)
  {
    v4 = *&v16[0];
  }

  else
  {
    v15[4] = v16[4];
    v15[5] = v16[5];
    v15[6] = v16[6];
    v15[0] = v16[0];
    v15[1] = v16[1];
    v15[2] = v16[2];
    v15[3] = v16[3];
    outlined init with copy of _ViewList_View(v15, &v8);
    outlined destroy of TabItem(v15);
    v4 = v8;
    v20 = v11;
    v21 = v12;
    v22 = v13;
    v23 = v14;
    v18 = v9;
    v19 = v10;
  }

  v5 = v21;
  *(a1 + 40) = v20;
  *(a1 + 56) = v5;
  *(a1 + 72) = v22;
  result = *&v18;
  v7 = v19;
  *(a1 + 8) = v18;
  LOBYTE(v15[0]) = v3;
  *a1 = v4;
  *(a1 + 88) = v23;
  *(a1 + 24) = v7;
  *(a1 + 96) = v3;
  *(a1 + 97) = *(v1 + 113);
  return result;
}

uint64_t outlined destroy of TabItem?(uint64_t a1)
{
  type metadata accessor for TabItem?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ConditionalContent<_ViewList_View, TabItemGroup.HostView>, UpdateBridgesToAllowedBehaviors>, NavigationSearchAdjustmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ConditionalContent<_ViewList_View, TabItemGroup.HostView>, UpdateBridgesToAllowedBehaviors>, NavigationSearchAdjustmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ConditionalContent<_ViewList_View, TabItemGroup.HostView>, UpdateBridgesToAllowedBehaviors>, NavigationSearchAdjustmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_ConditionalContent<_ViewList_View, TabItemGroup.HostView>, UpdateBridgesToAllowedBehaviors>, NavigationSearchAdjustmentModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ConditionalContent<_ViewList_View, TabItemGroup.HostView>, UpdateBridgesToAllowedBehaviors>, NavigationSearchAdjustmentModifier>, type metadata accessor for ModifiedContent<_ConditionalContent<_ViewList_View, TabItemGroup.HostView>, UpdateBridgesToAllowedBehaviors>);
    lazy protocol witness table accessor for type ModifiedContent<_ConditionalContent<_ViewList_View, TabItemGroup.HostView>, UpdateBridgesToAllowedBehaviors> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ConditionalContent<_ViewList_View, TabItemGroup.HostView>, UpdateBridgesToAllowedBehaviors>, NavigationSearchAdjustmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<_ConditionalContent<_ViewList_View, TabItemGroup.HostView>, UpdateBridgesToAllowedBehaviors>, NavigationSearchAdjustmentModifier>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for _ConditionalContent<_ViewList_View, TabItemGroup.HostView>()
{
  if (!lazy cache variable for type metadata for _ConditionalContent<_ViewList_View, TabItemGroup.HostView>)
  {
    v0 = type metadata accessor for _ConditionalContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ConditionalContent<_ViewList_View, TabItemGroup.HostView>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ConditionalContent<_ViewList_View, TabItemGroup.HostView>, UpdateBridgesToAllowedBehaviors> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ConditionalContent<_ViewList_View, TabItemGroup.HostView>, UpdateBridgesToAllowedBehaviors> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ConditionalContent<_ViewList_View, TabItemGroup.HostView>, UpdateBridgesToAllowedBehaviors> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ConditionalContent<_ViewList_View, TabItemGroup.HostView>, UpdateBridgesToAllowedBehaviors>(255);
    lazy protocol witness table accessor for type _ConditionalContent<_ViewList_View, TabItemGroup.HostView> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ConditionalContent<_ViewList_View, TabItemGroup.HostView>, UpdateBridgesToAllowedBehaviors> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ViewList_View, TabItemGroup.HostView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ViewList_View, TabItemGroup.HostView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ViewList_View, TabItemGroup.HostView> and conformance <> _ConditionalContent<A, B>)
  {
    type metadata accessor for _ConditionalContent<_ViewList_View, TabItemGroup.HostView>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ViewList_View, TabItemGroup.HostView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t EnvironmentValues.displayMenuAsPalette.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for PickerStyleWriter<MenuPickerStyle>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DisplayMenuAsPaletteKey>, &type metadata for DisplayMenuAsPaletteKey, &protocol witness table for DisplayMenuAsPaletteKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DisplayMenuAsPaletteKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for PickerStyleWriter<MenuPickerStyle>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DisplayMenuAsPaletteKey>, &type metadata for DisplayMenuAsPaletteKey, &protocol witness table for DisplayMenuAsPaletteKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DisplayMenuAsPaletteKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  return v2;
}

uint64_t static PalettePickerStyle._makeView<A>(value:inputs:)()
{
  type metadata accessor for ResolvedPicker();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<MenuPickerStyle>, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  _s7SwiftUI28StyleContextAcceptsPredicateVyAA04MenucD0VGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for LabelStyleWritingModifier<TitleAndIconLabelStyle>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for PickerStyleWriter<MenuPickerStyle>(255, &lazy cache variable for type metadata for PlatformItemListTransformModifier<LayoutPlatformItemListFlags>, &type metadata for LayoutPlatformItemListFlags, &protocol witness table for LayoutPlatformItemListFlags, type metadata accessor for PlatformItemListTransformModifier);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  _s7SwiftUI28StyleContextAcceptsPredicateVyAA04MenucD0VGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<MenuActionDismissBehavior>, &type metadata for MenuActionDismissBehavior, MEMORY[0x1E6980B20]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for PickerStyleWriter<MenuPickerStyle>(255, &lazy cache variable for type metadata for PickerStyleWriter<SegmentedPickerStyle>, &type metadata for SegmentedPickerStyle, &protocol witness table for SegmentedPickerStyle, type metadata accessor for PickerStyleWriter);
  type metadata accessor for ModifiedContent();
  type metadata accessor for _PickerValue();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  v0 = one-time initialization token for menuTitleVisibility;

  if (v0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();

  v1 = one-time initialization token for paletteSelectionEffect;

  if (v1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();

  type metadata accessor for PalettePickerStyle.Body();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<MenuPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type LabelStyleWritingModifier<TitleAndIconLabelStyle> and conformance LabelStyleWritingModifier<A>();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<MenuActionDismissBehavior> and conformance _EnvironmentKeyTransformModifier<A>();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return static View.makeDebuggableView(view:inputs:)();
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<MenuPickerStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<MenuPickerStyle>, EmptyModifier>)
  {
    _s7SwiftUI28StyleContextAcceptsPredicateVyAA04MenucD0VGMaTm_0(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<MenuStyleContext>, MEMORY[0x1E697EA18], MEMORY[0x1E69808E8]);
    type metadata accessor for PickerStyleWriter<MenuPickerStyle>(255, &lazy cache variable for type metadata for PickerStyleWriter<MenuPickerStyle>, &type metadata for MenuPickerStyle, &protocol witness table for MenuPickerStyle, type metadata accessor for PickerStyleWriter);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<MenuPickerStyle>, EmptyModifier>);
    }
  }
}

uint64_t static PalettePickerStyle._makeViewList<A>(value:inputs:)()
{
  type metadata accessor for ResolvedPicker();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<MenuPickerStyle>, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  _s7SwiftUI28StyleContextAcceptsPredicateVyAA04MenucD0VGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for LabelStyleWritingModifier<TitleAndIconLabelStyle>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for PickerStyleWriter<MenuPickerStyle>(255, &lazy cache variable for type metadata for PlatformItemListTransformModifier<LayoutPlatformItemListFlags>, &type metadata for LayoutPlatformItemListFlags, &protocol witness table for LayoutPlatformItemListFlags, type metadata accessor for PlatformItemListTransformModifier);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  _s7SwiftUI28StyleContextAcceptsPredicateVyAA04MenucD0VGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<MenuActionDismissBehavior>, &type metadata for MenuActionDismissBehavior, MEMORY[0x1E6980B20]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for PickerStyleWriter<MenuPickerStyle>(255, &lazy cache variable for type metadata for PickerStyleWriter<SegmentedPickerStyle>, &type metadata for SegmentedPickerStyle, &protocol witness table for SegmentedPickerStyle, type metadata accessor for PickerStyleWriter);
  type metadata accessor for ModifiedContent();
  type metadata accessor for _PickerValue();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  if (one-time initialization token for menuTitleVisibility != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  if (one-time initialization token for paletteSelectionEffect != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  type metadata accessor for PalettePickerStyle.Body();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<MenuPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type LabelStyleWritingModifier<TitleAndIconLabelStyle> and conformance LabelStyleWritingModifier<A>();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<MenuActionDismissBehavior> and conformance _EnvironmentKeyTransformModifier<A>();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return static View.makeDebuggableViewList(view:inputs:)();
}

uint64_t PalettePickerStyle.Body.base.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _PickerValue();
  Value = AGGraphGetValue();
  return (*(*(v2 - 8) + 16))(a1, Value, v2);
}

uint64_t PalettePickerStyle.Body.value.getter@<X0>(unint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v79 = a2;
  v77 = a5;
  v78 = a1;
  v76 = HIDWORD(a1);
  v7 = type metadata accessor for PickerStyleConfiguration();
  v62 = *(v7 - 8);
  v63 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v60 = &v54 - v8;
  *&v86 = &type metadata for PalettePickerStyle;
  *(&v86 + 1) = a3;
  *&v87[0] = &protocol witness table for PalettePickerStyle;
  *(&v87[0] + 1) = a4;
  v9 = type metadata accessor for _PickerValue();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v57 = &v54 - v10;
  v11 = type metadata accessor for ResolvedPicker();
  v58 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v54 - v12;
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<MenuPickerStyle>, EmptyModifier>();
  v14 = type metadata accessor for ModifiedContent();
  v61 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v54 - v15;
  _s7SwiftUI28StyleContextAcceptsPredicateVyAA04MenucD0VGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
  v17 = type metadata accessor for ModifiedContent();
  v68 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v56 = &v54 - v18;
  type metadata accessor for LabelStyleWritingModifier<TitleAndIconLabelStyle>();
  v65 = type metadata accessor for ModifiedContent();
  v71 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v59 = &v54 - v19;
  type metadata accessor for PickerStyleWriter<MenuPickerStyle>(255, &lazy cache variable for type metadata for PlatformItemListTransformModifier<LayoutPlatformItemListFlags>, &type metadata for LayoutPlatformItemListFlags, &protocol witness table for LayoutPlatformItemListFlags, type metadata accessor for PlatformItemListTransformModifier);
  v70 = type metadata accessor for ModifiedContent();
  v72 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v64 = &v54 - v20;
  v69 = type metadata accessor for ModifiedContent();
  v75 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v67 = &v54 - v21;
  _s7SwiftUI28StyleContextAcceptsPredicateVyAA04MenucD0VGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<MenuActionDismissBehavior>, &type metadata for MenuActionDismissBehavior, MEMORY[0x1E6980B20]);
  v22 = type metadata accessor for ModifiedContent();
  v23 = *(v22 - 8);
  v73 = v22;
  v74 = v23;
  MEMORY[0x1EEE9AC00](v22);
  v66 = &v54 - v24;
  v25 = v57;
  v55 = a4;
  PalettePickerStyle.Body.base.getter(v57);
  v26 = v60;
  (*(v62 + 32))(v60, v25, v63);
  v27 = ResolvedPicker.init(configuration:)(v26, v13);
  View.pickerStyle<A, B>(_:in:)(v27, v28, v11, &type metadata for MenuPickerStyle, MEMORY[0x1E697EA18], &protocol witness table for ResolvedPicker<A>, MEMORY[0x1E697EA10], v16);
  (*(v58 + 8))(v13, v11);
  swift_getKeyPath();
  LOBYTE(v86) = 1;
  v29 = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<MenuPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v95 = &protocol witness table for ResolvedPicker<A>;
  v96 = v29;
  WitnessTable = swift_getWitnessTable();
  v31 = v56;
  View.environment<A>(_:_:)();

  (*(v61 + 8))(v16, v14);
  KeyPath = swift_getKeyPath();
  v94 = 0;
  v33 = swift_getKeyPath();
  v93 = 0;
  v34 = swift_getKeyPath();
  v92 = 0;
  *&v86 = KeyPath;
  BYTE8(v86) = 0;
  BYTE9(v86) = v94;
  *(&v86 + 10) = v99;
  HIWORD(v86) = v100;
  *&v87[0] = v33;
  WORD4(v87[0]) = __PAIR16__(v93, 0);
  *(v87 + 10) = v97;
  HIWORD(v87[0]) = v98;
  *&v87[1] = v34;
  WORD4(v87[1]) = 0;
  v35 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>();
  v90 = WitnessTable;
  v91 = v35;
  v36 = swift_getWitnessTable();
  lazy protocol witness table accessor for type TitleAndIconLabelStyle and conformance TitleAndIconLabelStyle();
  v37 = v59;
  View.labelStyle<A>(_:)(&v86, v17, &type metadata for TitleAndIconLabelStyle, v36);
  v101 = v86;
  v102[0] = v87[0];
  *(v102 + 10) = *(v87 + 10);
  outlined destroy of TitleAndIconLabelStyle(&v101);
  (*(v68 + 8))(v31, v17);
  v38 = swift_allocObject();
  v39 = v55;
  *(v38 + 16) = a3;
  *(v38 + 24) = v39;
  LODWORD(v39) = v76;
  *(v38 + 32) = v78;
  *(v38 + 36) = v39;
  *(v38 + 40) = v79;
  v40 = lazy protocol witness table accessor for type LabelStyleWritingModifier<TitleAndIconLabelStyle> and conformance LabelStyleWritingModifier<A>();
  v88 = v36;
  v89 = v40;
  v41 = v65;
  v42 = swift_getWitnessTable();
  v43 = v64;
  View.transformPlatformItemList<A>(_:_:)(&type metadata for LayoutPlatformItemListFlags, partial apply for closure #1 in PalettePickerStyle.Body.value.getter, v38, v41, &type metadata for LayoutPlatformItemListFlags, v42);

  (*(v71 + 8))(v37, v41);
  *&v86 = *AGGraphGetValue();
  *&v87[1] = 0;
  v84 = v42;
  v85 = &protocol witness table for PlatformItemListTransformModifier<A>;
  v44 = v70;
  v45 = swift_getWitnessTable();
  v46 = v67;
  View.platformItemSystemType(_:)(&v86, v44, v45);
  (*(v72 + 8))(v43, v44);
  swift_getKeyPath();
  v82 = v45;
  v83 = &protocol witness table for PlatformItemListTransformModifier<A>;
  v47 = v69;
  v48 = swift_getWitnessTable();
  v49 = v66;
  View.transformEnvironment<A>(_:transform:)();

  (*(v75 + 8))(v46, v47);
  v50 = lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<MenuActionDismissBehavior> and conformance _EnvironmentKeyTransformModifier<A>();
  v80 = v48;
  v81 = v50;
  v51 = v73;
  v52 = swift_getWitnessTable();
  View.pickerStyle<A>(_:)(v52, v51, &type metadata for SegmentedPickerStyle, v52);
  return (*(v74 + 8))(v49, v51);
}

void closure #1 in PalettePickerStyle.Body.value.getter(uint64_t a1)
{
  if (*AGGraphGetValue() == 2)
  {
    v2 = *a1;
    v3 = *(*a1 + 16);
    if (v3)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
LABEL_10:
        v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
      }

      for (i = 0; i != v3; ++i)
      {
        if (i >= v2[2])
        {
          __break(1u);
          goto LABEL_10;
        }

        v5 = *(type metadata accessor for PlatformItemList.Item() - 8);
        v6 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
        v7 = *(v5 + 72) * i;
        v8 = *&v6[v7];
        *&v6[v7] = 0;
      }

      *a1 = v2;
    }
  }
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance PalettePickerStyle.Body<A>@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ResolvedPicker();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<MenuPickerStyle>, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  _s7SwiftUI28StyleContextAcceptsPredicateVyAA04MenucD0VGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for LabelStyleWritingModifier<TitleAndIconLabelStyle>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for PickerStyleWriter<MenuPickerStyle>(255, &lazy cache variable for type metadata for PlatformItemListTransformModifier<LayoutPlatformItemListFlags>, &type metadata for LayoutPlatformItemListFlags, &protocol witness table for LayoutPlatformItemListFlags, type metadata accessor for PlatformItemListTransformModifier);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  _s7SwiftUI28StyleContextAcceptsPredicateVyAA04MenucD0VGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<MenuActionDismissBehavior>, &type metadata for MenuActionDismissBehavior, MEMORY[0x1E6980B20]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for PickerStyleWriter<MenuPickerStyle>(255, &lazy cache variable for type metadata for PickerStyleWriter<SegmentedPickerStyle>, &type metadata for SegmentedPickerStyle, &protocol witness table for SegmentedPickerStyle, type metadata accessor for PickerStyleWriter);
  v2 = type metadata accessor for ModifiedContent();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<MenuPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<MenuPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<MenuPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<MenuPickerStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<MenuStyleContext> and conformance StyleContextAcceptsPredicate<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<MenuPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

void type metadata accessor for PickerStyleWriter<MenuPickerStyle>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t Tab.init<>(value:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v21[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v14 + 16))(v18, a1, v16);
  v22 = 1;
  (*(v10 + 16))(v12, a2, a4);
  Tab.init(value:role:content:tabItem:)(v18, &v22, v12, v19, a3, a4, MEMORY[0x1E6981E70], a5);
  (*(v10 + 8))(a2, a4);
  return (*(v14 + 8))(a1, a3);
}

uint64_t Tab<>.init<>(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 1;
  v8(v5);
  return Tab.init<>(role:content:tabItem:)(&v12, v7, v9, a2, MEMORY[0x1E6981E70], a3);
}

BOOL TabOptions.pinned.getter()
{
  v1 = *v0;
  if (v0[40] == 1)
  {
    if (v1 != 1)
    {
      return 0;
    }
  }

  else
  {
    result = v1 == 0;
    if (v1 != 1)
    {
      return result;
    }
  }

  return 1;
}

uint64_t Tab.init<>(role:content:tabItem:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v11 = *a1;
  *a6 = 1;
  a6[1] = v11;
  v12 = type metadata accessor for Tab();
  (*(*(a4 - 8) + 32))(&a6[*(v12 + 48)], a2, a4);
  v13 = *(*(a5 - 8) + 32);
  v14 = &a6[*(v12 + 52)];

  return v13(v14, a3, a5);
}

uint64_t Tab.init(value:role:content:tabItem:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v21 = *a2;
  v13 = *(a5 - 8);
  v14 = *(v13 + 56);
  v14(a8, 1, 1, a5);
  v15 = type metadata accessor for Tab();
  v16 = v15[11];
  *(a8 + v16) = 1;
  v17 = type metadata accessor for Optional();
  (*(*(v17 - 8) + 8))(a8, v17);
  (*(v13 + 32))(a8, a1, a5);
  v14(a8, 0, 1, a5);
  *(a8 + v16) = v21;
  (*(*(a6 - 8) + 32))(a8 + v15[12], a3, a6);
  v18 = *(*(a7 - 8) + 32);
  v19 = a8 + v15[13];

  return v18(v19, a4, a7);
}

uint64_t Tab<>.init<>(_:image:value:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, void (*a6)(uint64_t)@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v30 = a5;
  v31 = a3;
  v32 = a4;
  v33 = a7;
  v29[1] = a2;
  MEMORY[0x1EEE9AC00](a1);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a9 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = (*(v13 + 16))(v17, v18, a9, v15);
  v36 = 1;
  a6(v19);
  v20 = Text.init(_:tableName:bundle:comment:)();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = Image.init(_:bundle:)();
  outlined consume of Label<Text, Image>?(0, 0, 0, 0);
  v34[0] = v20;
  v34[1] = v22;
  v34[2] = v24 & 1;
  v34[3] = v26;
  v34[4] = v27;
  v35 = 1;
  Tab.init(value:role:content:tabItem:)(v17, &v36, v12, v34, a9, a10, &type metadata for DefaultTabLabel, v33);
  return (*(v13 + 8))(v30, a9);
}

uint64_t Tab<>.init<>(_:image:value:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v47 = a3;
  v48 = a8;
  v44 = a6;
  v45 = a4;
  v46 = a2;
  v42 = a1;
  v49 = a9;
  v13 = type metadata accessor for LocalizedStringResource();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v40 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v41 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a7;
  v22 = *(a7 - 8);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = (*(v22 + 16))(v26, a4, v24);
  v52 = 1;
  a5(v27);
  v28 = *(v14 + 16);
  v28(v19, a1, v13);
  v28(v16, v19, v13);
  v29 = Text.init(_:)();
  v31 = v30;
  v33 = v32;
  LOBYTE(v50[0]) = v34 & 1;
  v35 = Image.init(_:bundle:)();
  v36 = *(v14 + 8);
  v36(v19, v13);
  v37 = LOBYTE(v50[0]);
  outlined consume of Label<Text, Image>?(0, 0, 0, 0);
  v50[0] = v29;
  v50[1] = v31;
  v50[2] = v37;
  v50[3] = v33;
  v50[4] = v35;
  v51 = 1;
  v38 = v43;
  Tab.init(value:role:content:tabItem:)(v26, &v52, v41, v50, v43, v48, &type metadata for DefaultTabLabel, v49);
  (*(v22 + 8))(v45, v38);
  return (v36)(v42, v13);
}

uint64_t Tab<>.init<>(_:image:value:role:content:)@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>, void (*a8)(uint64_t), uint64_t a9, uint64_t a10, uint64_t a11)
{
  v33 = a6;
  v34 = a4;
  v35 = a5;
  v36 = a7;
  v32 = a3;
  v31[1] = a2;
  MEMORY[0x1EEE9AC00](a1);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a10 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v18;
  v21 = (*(v13 + 16))(v17, v20, a10, v15);
  v39 = v19;
  a8(v21);
  v22 = Text.init(_:tableName:bundle:comment:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = Image.init(_:bundle:)();
  outlined consume of Label<Text, Image>?(0, 0, 0, 0);
  v37[0] = v22;
  v37[1] = v24;
  v37[2] = v26 & 1;
  v37[3] = v28;
  v37[4] = v29;
  v38 = 1;
  Tab.init(value:role:content:tabItem:)(v17, &v39, v12, v37, a10, a11, &type metadata for DefaultTabLabel, v36);
  return (*(v13 + 8))(v33, a10);
}

uint64_t Tab<>.init<>(_:image:value:role:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X4>, void (*a6)(uint64_t)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v45 = a7;
  v46 = a6;
  v43 = a1;
  v44 = a4;
  v47 = a2;
  v48 = a3;
  v49 = a10;
  v50 = a9;
  v14 = type metadata accessor for LocalizedStringResource();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v41 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v41 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a8;
  v23 = *(a8 - 8);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a5) = *a5;
  v28 = (*(v23 + 16))(v27, a4, v25);
  v53 = a5;
  v46(v28);
  v29 = *(v15 + 16);
  v29(v20, a1, v14);
  v29(v17, v20, v14);
  v30 = Text.init(_:)();
  v32 = v31;
  v34 = v33;
  LOBYTE(v51[0]) = v35 & 1;
  v36 = Image.init(_:bundle:)();
  v37 = *(v15 + 8);
  v37(v20, v14);
  v38 = LOBYTE(v51[0]);
  outlined consume of Label<Text, Image>?(0, 0, 0, 0);
  v51[0] = v30;
  v51[1] = v32;
  v51[2] = v38;
  v51[3] = v34;
  v51[4] = v36;
  v52 = 1;
  v39 = v42;
  Tab.init(value:role:content:tabItem:)(v27, &v53, v41, v51, v42, v49, &type metadata for DefaultTabLabel, v50);
  (*(v23 + 8))(v44, v39);
  return (v37)(v43, v14);
}

uint64_t Tab<>.init<A>(_:image:value:content:)@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, void (*a7)(uint64_t)@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v30 = a6;
  v31 = a3;
  v32 = a4;
  v33 = a5;
  v29[3] = a2;
  v35 = a8;
  v34 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Optional();
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v15);
  v18 = v29 - v17;
  v19 = *(a11 - 8);
  (*(v19 + 16))(v29 - v17, a6, a11, v16);
  v20 = (*(v19 + 56))(v18, 0, 1, a11);
  v38 = 1;
  a7(v20);
  v21 = Text.init(_:tableName:bundle:comment:)();
  v23 = v22;
  LOBYTE(a7) = v24;
  v26 = v25;
  v27 = Image.init(_:bundle:)();
  outlined consume of Label<Text, Image>?(0, 0, 0, 0);
  v36[0] = v21;
  v36[1] = v23;
  v36[2] = a7 & 1;
  v36[3] = v26;
  v36[4] = v27;
  v37 = 1;
  Tab.init(value:role:content:tabItem:)(v18, &v38, v14, v36, v15, v34, &type metadata for DefaultTabLabel, v35);
  return (*(v19 + 8))(v30, a11);
}

uint64_t Tab<>.init<A>(_:image:value:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v47 = a3;
  v48 = a7;
  v43 = a6;
  v44 = a5;
  v42 = a4;
  v46 = a2;
  v40 = a1;
  v49 = a9;
  v12 = type metadata accessor for LocalizedStringResource();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v38 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v39 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for Optional();
  v21.n128_f64[0] = MEMORY[0x1EEE9AC00](v45);
  v23 = &v38 - v22;
  v24 = *(a8 - 8);
  v25 = *(v24 + 16);
  v41 = a8;
  v25(&v38 - v22, a4, a8, v21);
  v26 = (*(v24 + 56))(v23, 0, 1, a8);
  v52 = 1;
  v44(v26);
  v27 = *(v13 + 16);
  v27(v18, a1, v12);
  v27(v15, v18, v12);
  v28 = Text.init(_:)();
  v30 = v29;
  v32 = v31;
  LOBYTE(v50[0]) = v33 & 1;
  v34 = Image.init(_:bundle:)();
  v35 = *(v13 + 8);
  v35(v18, v12);
  v36 = LOBYTE(v50[0]);
  outlined consume of Label<Text, Image>?(0, 0, 0, 0);
  v50[0] = v28;
  v50[1] = v30;
  v50[2] = v36;
  v50[3] = v32;
  v50[4] = v34;
  v51 = 1;
  Tab.init(value:role:content:tabItem:)(v23, &v52, v39, v50, v45, v48, &type metadata for DefaultTabLabel, v49);
  (*(v24 + 8))(v42, v41);
  return (v35)(v40, v12);
}

uint64_t Tab<>.init<A>(_:image:value:role:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _BYTE *a8@<X7>, uint64_t a9@<X8>, void (*a10)(uint64_t), uint64_t a11, uint64_t a12, uint64_t a13)
{
  v31 = a2;
  v32 = a7;
  v35 = a5;
  v36 = a6;
  v34 = a4;
  v33 = a3;
  v38 = a9;
  v37 = a12;
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Optional();
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v17);
  v20 = &v31 - v19;
  LOBYTE(a8) = *a8;
  v21 = *(a13 - 8);
  (*(v21 + 16))(&v31 - v19, a7, a13, v18);
  v22 = (*(v21 + 56))(v20, 0, 1, a13);
  v41 = a8;
  a10(v22);
  v23 = Text.init(_:tableName:bundle:comment:)();
  v25 = v24;
  LOBYTE(a8) = v26;
  v28 = v27;
  v29 = Image.init(_:bundle:)();
  outlined consume of Label<Text, Image>?(0, 0, 0, 0);
  v39[0] = v23;
  v39[1] = v25;
  v39[2] = a8 & 1;
  v39[3] = v28;
  v39[4] = v29;
  v40 = 1;
  Tab.init(value:role:content:tabItem:)(v20, &v41, v16, v39, v17, v37, &type metadata for DefaultTabLabel, v38);
  return (*(v21 + 8))(v32, a13);
}

uint64_t Tab<>.init<A>(_:image:value:role:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X4>, void (*a6)(uint64_t)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v47 = a3;
  v48 = a8;
  v43 = a7;
  v44 = a6;
  v42 = a4;
  v46 = a2;
  v40 = a1;
  v49 = a9;
  v13 = type metadata accessor for LocalizedStringResource();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v39 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v39 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for Optional();
  v22.n128_f64[0] = MEMORY[0x1EEE9AC00](v45);
  v24 = &v39 - v23;
  LOBYTE(a5) = *a5;
  v25 = *(a10 - 8);
  v26 = *(v25 + 16);
  v41 = a10;
  v26(&v39 - v23, a4, v22);
  v27 = (*(v25 + 56))(v24, 0, 1, a10);
  v52[0] = a5;
  v44(v27);
  v28 = *(v14 + 16);
  v28(v19, a1, v13);
  v28(v16, v19, v13);
  v29 = Text.init(_:)();
  v31 = v30;
  v33 = v32;
  LOBYTE(v50[0]) = v34 & 1;
  v35 = Image.init(_:bundle:)();
  v36 = *(v14 + 8);
  v36(v19, v13);
  v37 = LOBYTE(v50[0]);
  outlined consume of Label<Text, Image>?(0, 0, 0, 0);
  v50[0] = v29;
  v50[1] = v31;
  v50[2] = v37;
  v50[3] = v33;
  v50[4] = v35;
  v51 = 1;
  Tab.init(value:role:content:tabItem:)(v24, v52, v39, v50, v45, v48, &type metadata for DefaultTabLabel, v49);
  (*(v25 + 8))(v42, v41);
  return (v36)(v40, v13);
}

uint64_t Tab<>.init<A>(_:image:value:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(uint64_t *__return_ptr, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v40 = a2;
  v41 = a6;
  v39 = a5;
  v36 = a1;
  v37 = a4;
  v42 = a7;
  v14 = *(a8 - 8);
  v38 = a12;
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v20;
  v21 = *(v20 - 8);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v35 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = (*(v21 + 16))(v25, v26, v23);
  v49 = 1;
  v39(v27);
  (*(v14 + 16))(v16, a1, a8);
  v38(&v43, v16, v40, a3, a8, a11);
  v28 = v43;
  v29 = v44;
  v30 = v45;
  v32 = v46;
  v31 = v47;
  outlined consume of Label<Text, Image>?(0, 0, 0, 0);
  v43 = v28;
  v44 = v29;
  v45 = v30;
  v46 = v32;
  v47 = v31;
  v48 = 1;
  v33 = v35;
  Tab.init(value:role:content:tabItem:)(v25, &v49, v19, &v43, v35, v41, &type metadata for DefaultTabLabel, v42);
  (*(v21 + 8))(v37, v33);
  return (*(v14 + 8))(v36, a8);
}

uint64_t Tab<>.init<A>(_:image:value:role:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t)@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void (*a13)(uint64_t *__return_ptr, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v42 = a6;
  v43 = a5;
  v39 = a1;
  v40 = a4;
  v46 = a7;
  v44 = a2;
  v45 = a8;
  v15 = *(a9 - 8);
  v41 = a13;
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v21;
  v22 = *(v21 - 8);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *v27;
  v30 = (*(v22 + 16))(v26, v29, v24);
  v53[0] = v28;
  v43(v30);
  (*(v15 + 16))(v17, a1, a9);
  v41(&v47, v17, v44, a3, a9, a12);
  v31 = v47;
  v32 = v48;
  v33 = v49;
  v35 = v50;
  v34 = v51;
  outlined consume of Label<Text, Image>?(0, 0, 0, 0);
  v47 = v31;
  v48 = v32;
  v49 = v33;
  v50 = v35;
  v51 = v34;
  v52 = 1;
  v36 = v38;
  Tab.init(value:role:content:tabItem:)(v26, v53, v20, &v47, v38, v45, &type metadata for DefaultTabLabel, v46);
  (*(v22 + 8))(v40, v36);
  return (*(v15 + 8))(v39, a9);
}

uint64_t Tab<>.init<A, B>(_:image:value:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void (*a13)(uint64_t *__return_ptr, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v42 = a3;
  v43 = a6;
  v36 = a4;
  v37 = a5;
  v35 = a1;
  v44 = a8;
  v40 = a11;
  v41 = a2;
  v39 = a13;
  v16 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for Optional();
  v22.n128_f64[0] = MEMORY[0x1EEE9AC00](v38);
  v24 = &v34 - v23;
  v25 = *(a9 - 8);
  (*(v25 + 16))(&v34 - v23, a4, a9, v22);
  v26 = (*(v25 + 56))(v24, 0, 1, a9);
  v51[0] = 1;
  v37(v26);
  v27 = *(v16 + 16);
  v34 = a7;
  v27(v18, a1, a7);
  v39(&v45, v18, v41, v42, a7, v40);
  v28 = v45;
  v29 = v46;
  v30 = v47;
  v32 = v48;
  v31 = v49;
  outlined consume of Label<Text, Image>?(0, 0, 0, 0);
  v45 = v28;
  v46 = v29;
  v47 = v30;
  v48 = v32;
  v49 = v31;
  v50 = 1;
  Tab.init(value:role:content:tabItem:)(v24, v51, v21, &v45, v38, v43, &type metadata for DefaultTabLabel, v44);
  (*(v25 + 8))(v36, a9);
  return (*(v16 + 8))(v35, v34);
}

uint64_t Tab<>.init<A, B>(_:image:value:role:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X4>, void (*a6)(uint64_t)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void (*a15)(uint64_t *__return_ptr, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v46 = a3;
  v47 = a8;
  v42 = a7;
  v43 = a6;
  v38 = a1;
  v39 = a4;
  v48 = a9;
  v44 = a13;
  v45 = a2;
  v18 = *(a10 - 8);
  v40 = a15;
  MEMORY[0x1EEE9AC00](a1);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for Optional();
  v24.n128_f64[0] = MEMORY[0x1EEE9AC00](v41);
  v26 = &v36 - v25;
  LOBYTE(a5) = *a5;
  v27 = *(a11 - 8);
  (*(v27 + 16))(&v36 - v25, a4, a11, v24);
  v28 = (*(v27 + 56))(v26, 0, 1, a11);
  v55[0] = a5;
  v43(v28);
  v29 = *(v18 + 16);
  v37 = a10;
  v29(v20, a1, a10);
  v40(&v49, v20, v45, v46, a10, v44);
  v30 = v49;
  v31 = v50;
  v32 = v51;
  v34 = v52;
  v33 = v53;
  outlined consume of Label<Text, Image>?(0, 0, 0, 0);
  v49 = v30;
  v50 = v31;
  v51 = v32;
  v52 = v34;
  v53 = v33;
  v54 = 1;
  Tab.init(value:role:content:tabItem:)(v26, v55, v23, &v49, v41, v47, &type metadata for DefaultTabLabel, v48);
  (*(v27 + 8))(v39, a11);
  return (*(v18 + 8))(v38, v37);
}

uint64_t Tab<>.init<>(_:systemImage:value:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, void (*a6)(uint64_t)@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v31 = a5;
  v32 = a3;
  v33 = a4;
  v34 = a7;
  v30[1] = a2;
  MEMORY[0x1EEE9AC00](a1);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a9 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = (*(v13 + 16))(v17, v18, a9, v15);
  v37 = 1;
  a6(v19);
  v20 = Text.init(_:tableName:bundle:comment:)();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  specialized Image.init(systemName:)(v32, v33);
  v28 = v27;
  outlined consume of Label<Text, Image>?(0, 0, 0, 0);
  v35[0] = v20;
  v35[1] = v22;
  v35[2] = v24 & 1;
  v35[3] = v26;
  v35[4] = v28;
  v36 = 1;
  Tab.init(value:role:content:tabItem:)(v17, &v37, v12, v35, a9, a10, &type metadata for DefaultTabLabel, v34);
  return (*(v13 + 8))(v31, a9);
}

uint64_t Tab<>.init<>(_:systemImage:value:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v49 = a3;
  v50 = a8;
  v46 = a6;
  v47 = a4;
  v48 = a2;
  v44 = a1;
  v51 = a9;
  v13 = type metadata accessor for LocalizedStringResource();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v42 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v43 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a7;
  v22 = *(a7 - 8);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = (*(v22 + 16))(v26, a4, v24);
  v54 = 1;
  a5(v27);
  v28 = *(v14 + 16);
  v28(v19, a1, v13);
  v28(v16, v19, v13);
  v29 = Text.init(_:)();
  v31 = v30;
  v33 = v32;
  LOBYTE(v52[0]) = v34 & 1;
  v35 = specialized Image.init(systemName:)(v48, v49);
  v37 = v36;
  v38 = *(v14 + 8);
  v38(v19, v13, v35);
  v39 = LOBYTE(v52[0]);
  outlined consume of Label<Text, Image>?(0, 0, 0, 0);
  v52[0] = v29;
  v52[1] = v31;
  v52[2] = v39;
  v52[3] = v33;
  v52[4] = v37;
  v53 = 1;
  v40 = v45;
  Tab.init(value:role:content:tabItem:)(v26, &v54, v43, v52, v45, v50, &type metadata for DefaultTabLabel, v51);
  (*(v22 + 8))(v47, v40);
  return (v38)(v44, v13);
}

uint64_t Tab<>.init<>(_:systemImage:value:role:content:)@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>, void (*a8)(uint64_t), uint64_t a9, uint64_t a10, uint64_t a11)
{
  v34 = a6;
  v35 = a4;
  v36 = a5;
  v37 = a7;
  v33 = a3;
  v32[1] = a2;
  MEMORY[0x1EEE9AC00](a1);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a10 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v18;
  v21 = (*(v13 + 16))(v17, v20, a10, v15);
  v40 = v19;
  a8(v21);
  v22 = Text.init(_:tableName:bundle:comment:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  specialized Image.init(systemName:)(v35, v36);
  v30 = v29;
  outlined consume of Label<Text, Image>?(0, 0, 0, 0);
  v38[0] = v22;
  v38[1] = v24;
  v38[2] = v26 & 1;
  v38[3] = v28;
  v38[4] = v30;
  v39 = 1;
  Tab.init(value:role:content:tabItem:)(v17, &v40, v12, v38, a10, a11, &type metadata for DefaultTabLabel, v37);
  return (*(v13 + 8))(v34, a10);
}

uint64_t Tab<>.init<>(_:systemImage:value:role:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X4>, void (*a6)(uint64_t)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v47 = a7;
  v48 = a6;
  v45 = a1;
  v46 = a4;
  v49 = a2;
  v50 = a3;
  v51 = a10;
  v52 = a9;
  v14 = type metadata accessor for LocalizedStringResource();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v43 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v43 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a8;
  v23 = *(a8 - 8);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v43 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a5) = *a5;
  v28 = (*(v23 + 16))(v27, a4, v25);
  v55 = a5;
  v48(v28);
  v29 = *(v15 + 16);
  v29(v20, a1, v14);
  v29(v17, v20, v14);
  v30 = Text.init(_:)();
  v32 = v31;
  v34 = v33;
  LOBYTE(v53[0]) = v35 & 1;
  v36 = specialized Image.init(systemName:)(v49, v50);
  v38 = v37;
  v39 = *(v15 + 8);
  v39(v20, v14, v36);
  v40 = LOBYTE(v53[0]);
  outlined consume of Label<Text, Image>?(0, 0, 0, 0);
  v53[0] = v30;
  v53[1] = v32;
  v53[2] = v40;
  v53[3] = v34;
  v53[4] = v38;
  v54 = 1;
  v41 = v44;
  Tab.init(value:role:content:tabItem:)(v27, &v55, v43, v53, v44, v51, &type metadata for DefaultTabLabel, v52);
  (*(v23 + 8))(v46, v41);
  return (v39)(v45, v14);
}

uint64_t Tab<>.init<A>(_:systemImage:value:content:)@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, void (*a7)(uint64_t)@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v31 = a6;
  v32 = a3;
  v33 = a4;
  v34 = a5;
  v30[3] = a2;
  v36 = a8;
  v35 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Optional();
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v15);
  v18 = v30 - v17;
  v19 = *(a11 - 8);
  (*(v19 + 16))(v30 - v17, a6, a11, v16);
  v20 = (*(v19 + 56))(v18, 0, 1, a11);
  v39 = 1;
  a7(v20);
  v21 = Text.init(_:tableName:bundle:comment:)();
  v23 = v22;
  LOBYTE(a7) = v24;
  v26 = v25;
  specialized Image.init(systemName:)(v33, v34);
  v28 = v27;
  outlined consume of Label<Text, Image>?(0, 0, 0, 0);
  v37[0] = v21;
  v37[1] = v23;
  v37[2] = a7 & 1;
  v37[3] = v26;
  v37[4] = v28;
  v38 = 1;
  Tab.init(value:role:content:tabItem:)(v18, &v39, v14, v37, v15, v35, &type metadata for DefaultTabLabel, v36);
  return (*(v19 + 8))(v31, a11);
}

uint64_t Tab<>.init<A>(_:systemImage:value:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v49 = a3;
  v50 = a7;
  v45 = a6;
  v46 = a5;
  v44 = a4;
  v48 = a2;
  v42 = a1;
  v51 = a9;
  v12 = type metadata accessor for LocalizedStringResource();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v40 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v41 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for Optional();
  v21.n128_f64[0] = MEMORY[0x1EEE9AC00](v47);
  v23 = &v40 - v22;
  v24 = *(a8 - 8);
  v25 = *(v24 + 16);
  v43 = a8;
  v25(&v40 - v22, a4, a8, v21);
  v26 = (*(v24 + 56))(v23, 0, 1, a8);
  v54 = 1;
  v46(v26);
  v27 = *(v13 + 16);
  v27(v18, a1, v12);
  v27(v15, v18, v12);
  v28 = Text.init(_:)();
  v30 = v29;
  v32 = v31;
  LOBYTE(v52[0]) = v33 & 1;
  v34 = specialized Image.init(systemName:)(v48, v49);
  v36 = v35;
  v37 = *(v13 + 8);
  v37(v18, v12, v34);
  v38 = LOBYTE(v52[0]);
  outlined consume of Label<Text, Image>?(0, 0, 0, 0);
  v52[0] = v28;
  v52[1] = v30;
  v52[2] = v38;
  v52[3] = v32;
  v52[4] = v36;
  v53 = 1;
  Tab.init(value:role:content:tabItem:)(v23, &v54, v41, v52, v47, v50, &type metadata for DefaultTabLabel, v51);
  (*(v24 + 8))(v44, v43);
  return (v37)(v42, v12);
}

uint64_t Tab<>.init<A>(_:systemImage:value:role:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _BYTE *a8@<X7>, uint64_t a9@<X8>, void (*a10)(uint64_t), uint64_t a11, uint64_t a12, uint64_t a13)
{
  v32[0] = a7;
  v32[1] = a2;
  v35 = a5;
  v36 = a6;
  v34 = a4;
  v33 = a3;
  v38 = a9;
  v37 = a12;
  MEMORY[0x1EEE9AC00](a1);
  v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Optional();
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v17);
  v20 = v32 - v19;
  LOBYTE(a8) = *a8;
  v21 = *(a13 - 8);
  (*(v21 + 16))(v32 - v19, a7, a13, v18);
  v22 = (*(v21 + 56))(v20, 0, 1, a13);
  v41 = a8;
  a10(v22);
  v23 = Text.init(_:tableName:bundle:comment:)();
  v25 = v24;
  LOBYTE(a8) = v26;
  v28 = v27;
  specialized Image.init(systemName:)(v35, v36);
  v30 = v29;
  outlined consume of Label<Text, Image>?(0, 0, 0, 0);
  v39[0] = v23;
  v39[1] = v25;
  v39[2] = a8 & 1;
  v39[3] = v28;
  v39[4] = v30;
  v40 = 1;
  Tab.init(value:role:content:tabItem:)(v20, &v41, v16, v39, v17, v37, &type metadata for DefaultTabLabel, v38);
  return (*(v21 + 8))(v32[0], a13);
}

uint64_t Tab<>.init<A>(_:systemImage:value:role:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X4>, void (*a6)(uint64_t)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v49 = a3;
  v50 = a8;
  v45 = a7;
  v46 = a6;
  v44 = a4;
  v48 = a2;
  v42 = a1;
  v51 = a9;
  v13 = type metadata accessor for LocalizedStringResource();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v41 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v41 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for Optional();
  v22.n128_f64[0] = MEMORY[0x1EEE9AC00](v47);
  v24 = &v41 - v23;
  LOBYTE(a5) = *a5;
  v25 = *(a10 - 8);
  v26 = *(v25 + 16);
  v43 = a10;
  v26(&v41 - v23, a4, v22);
  v27 = (*(v25 + 56))(v24, 0, 1, a10);
  v54[0] = a5;
  v46(v27);
  v28 = *(v14 + 16);
  v28(v19, a1, v13);
  v28(v16, v19, v13);
  v29 = Text.init(_:)();
  v31 = v30;
  v33 = v32;
  LOBYTE(v52[0]) = v34 & 1;
  v35 = specialized Image.init(systemName:)(v48, v49);
  v37 = v36;
  v38 = *(v14 + 8);
  v38(v19, v13, v35);
  v39 = LOBYTE(v52[0]);
  outlined consume of Label<Text, Image>?(0, 0, 0, 0);
  v52[0] = v29;
  v52[1] = v31;
  v52[2] = v39;
  v52[3] = v33;
  v52[4] = v37;
  v53 = 1;
  Tab.init(value:role:content:tabItem:)(v24, v54, v41, v52, v47, v50, &type metadata for DefaultTabLabel, v51);
  (*(v25 + 8))(v44, v43);
  return (v38)(v42, v13);
}

uint64_t Tab<>.init<>(value:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *(v12 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v22[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = (*(v13 + 16))(v17, a1, v18, v15);
  v23 = 1;
  a2(v19);
  Tab.init(value:role:content:tabItem:)(v17, &v23, v11, v20, a3, a4, MEMORY[0x1E6981E70], a5);
  return (*(v13 + 8))(a1, a3);
}

uint64_t Tab<>.init<A>(value:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v19 = a5;
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Optional();
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - v13;
  v15 = *(a4 - 8);
  (*(v15 + 16))(&v19 - v13, a1, a4, v12);
  v16 = (*(v15 + 56))(v14, 0, 1, a4);
  v20 = 1;
  a2(v16);
  Tab.init(value:role:content:tabItem:)(v14, &v20, v10, v17, v11, a3, MEMORY[0x1E6981E70], v19);
  return (*(v15 + 8))(a1, a4);
}

uint64_t Tab<>.init<>(value:role:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v18;
  v21 = (*(v13 + 16))(v17, a1, v20, v15);
  v26 = v19;
  a2(v21);
  outlined consume of Label<Text, Image>?(0, 0, 0, 0);
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  v25 = v19;
  Tab.init(value:role:content:tabItem:)(v17, &v26, v11, v23, a3, a4, &type metadata for DefaultTabLabel, a5);
  return (*(v13 + 8))(a1, a3);
}

uint64_t Tab<>.init<A>(value:role:content:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v22 = a6;
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Optional();
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v13);
  v16 = &v21 - v15;
  v17 = *a2;
  v18 = *(a5 - 8);
  (*(v18 + 16))(&v21 - v15, a1, a5, v14);
  v19 = (*(v18 + 56))(v16, 0, 1, a5);
  v26 = v17;
  a3(v19);
  outlined consume of Label<Text, Image>?(0, 0, 0, 0);
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  v25 = v17;
  Tab.init(value:role:content:tabItem:)(v16, &v26, v12, v23, v13, a4, &type metadata for DefaultTabLabel, v22);
  return (*(v18 + 8))(a1, a5);
}

uint64_t Tab<>.init(value:content:label:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, void (*a3)(uint64_t)@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v28 = a4;
  v29 = a3;
  v30 = a8;
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v28 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = (*(v19 + 16))(v23, a1, v24, v21);
  v31 = 1;
  v26 = a2(v25);
  v29(v26);
  Tab.init(value:role:content:tabItem:)(v23, &v31, v17, v14, a5, a6, a7, v30);
  return (*(v19 + 8))(a1, a5);
}

uint64_t Tab<>.init(value:role:content:label:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X2>, uint64_t a3@<X3>, void (*a4)(uint64_t)@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v30[2] = a5;
  v31 = a4;
  v30[1] = a3;
  v32 = a8;
  MEMORY[0x1EEE9AC00](a1);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *v24;
  v27 = (*(v19 + 16))(v23, a1, v26, v21);
  v33 = v25;
  v28 = a2(v27);
  v31(v28);
  Tab.init(value:role:content:tabItem:)(v23, &v33, v17, v14, a6, a7, a9, v32);
  return (*(v19 + 8))(a1, a6);
}

uint64_t Tab<>.init<A>(value:content:label:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v28 = a5;
  v29 = a4;
  v26 = a3;
  v27 = a2;
  v30 = a9;
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Optional();
  v19.n128_f64[0] = MEMORY[0x1EEE9AC00](v18);
  v21 = &v26 - v20;
  v22 = *(a8 - 8);
  (*(v22 + 16))(&v26 - v20, a1, a8, v19);
  v23 = (*(v22 + 56))(v21, 0, 1, a8);
  v31 = 1;
  v24 = v27(v23);
  v29(v24);
  Tab.init(value:role:content:tabItem:)(v21, &v31, v17, v14, v18, a6, a7, v30);
  return (*(v22 + 8))(a1, a8);
}

uint64_t Tab<>.init<A>(value:role:content:label:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v27 = a8;
  v28 = a7;
  v25[1] = a5;
  v26 = a4;
  v25[0] = a3;
  MEMORY[0x1EEE9AC00](a1);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Optional();
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v17);
  v20 = v25 - v19;
  LOBYTE(a2) = *a2;
  v21 = *(a9 - 8);
  (*(v21 + 16))(v25 - v19, a1, a9, v18);
  v22 = (*(v21 + 56))(v20, 0, 1, a9);
  v29 = a2;
  v23 = (v25[0])(v22);
  v26(v23);
  Tab.init(value:role:content:tabItem:)(v20, &v29, v16, v13, v17, a6, v28, v27);
  return (*(v21 + 8))(a1, a9);
}

uint64_t Tab<>._identifiedView.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22[1] = a3;
  v22[2] = a2;
  v5 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v8[3];
  v11 = v8[4];
  v23 = v8[2];
  v9 = v23;
  v24 = v10;
  v25 = v11;
  v26 = v12;
  v27 = v13;
  v14 = type metadata accessor for Tab<>.TabIdentifiedView();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = v22 - v17;
  (*(v5 + 16))(v7, v3, a1, v16);
  v19 = type metadata accessor for Tab();
  (*(*(v19 - 8) + 32))(v18, v7, v19);
  WitnessTable = swift_getWitnessTable();
  View.tabViewTag<A>(_:)(v3, v14, v9, WitnessTable);
  return (*(v15 + 8))(v18, v14);
}

uint64_t View.tabViewTag<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[2] = a4;
  v17[1] = a2;
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v17 - v8;
  v10 = type metadata accessor for TagValueTraitKey.Value();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v17 - v13;
  if (a3 == MEMORY[0x1E69E73E0])
  {
    (*(*(MEMORY[0x1E69E73E0] - 8) + 56))(v14, 1, 1, v12);
    goto LABEL_5;
  }

  (*(v7 + 16))(v9, a1, v6, v12);
  v15 = *(a3 - 8);
  result = (*(v15 + 48))(v9, 1, a3);
  if (result != 1)
  {
    (*(v15 + 32))(v14, v9, a3);
    (*(v15 + 56))(v14, 0, 1, a3);
LABEL_5:
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    View._trait<A>(_:_:)();
    return (*(v11 + 8))(v14, v10);
  }

  __break(1u);
  return result;
}

uint64_t Tab<>.init<>(_:image:content:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>, uint64_t a3)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = 1;
  v7(v4);
  v8 = Text.init(_:tableName:bundle:comment:)();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = Image.init(_:bundle:)();
  outlined consume of Label<Text, Image>?(0, 0, 0, 0);
  v17[0] = v8;
  v17[1] = v10;
  v17[2] = v12 & 1;
  v17[3] = v14;
  v17[4] = v15;
  v18 = 1;
  return Tab.init<>(role:content:tabItem:)(&v19, v6, v17, a3, &type metadata for DefaultTabLabel, a2);
}

uint64_t Tab<>.init<>(_:image:content:)@<X0>(char *a1@<X0>, uint64_t a2@<X2>, void (*a3)(double)@<X3>, uint64_t a4@<X5>, _BYTE *a5@<X8>)
{
  v29[1] = a2;
  v30 = a4;
  v31 = a5;
  v7 = type metadata accessor for LocalizedStringResource();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v29 - v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = 1;
  a3(v15);
  v18 = *(v8 + 16);
  v18(v13, a1, v7);
  v18(v10, v13, v7);
  v19 = Text.init(_:)();
  v21 = v20;
  v23 = v22;
  LOBYTE(v32[0]) = v24 & 1;
  v25 = Image.init(_:bundle:)();
  v26 = *(v8 + 8);
  v26(a1, v7);
  v26(v13, v7);
  v27 = LOBYTE(v32[0]);
  outlined consume of Label<Text, Image>?(0, 0, 0, 0);
  v32[0] = v19;
  v32[1] = v21;
  v32[2] = v27;
  v32[3] = v23;
  v32[4] = v25;
  v33 = 1;
  return Tab.init<>(role:content:tabItem:)(&v34, v17, v32, v30, &type metadata for DefaultTabLabel, v31);
}

uint64_t Tab<>.init<>(_:image:role:content:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *v8;
  v9(v5);
  v10 = Text.init(_:tableName:bundle:comment:)();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = Image.init(_:bundle:)();
  outlined consume of Label<Text, Image>?(0, 0, 0, 0);
  v19[0] = v10;
  v19[1] = v12;
  v19[2] = v14 & 1;
  v19[3] = v16;
  v19[4] = v17;
  v20 = 1;
  return Tab.init<>(role:content:tabItem:)(&v21, v7, v19, a4, &type metadata for DefaultTabLabel, a2);
}

uint64_t Tab<>.init<>(_:image:role:content:)@<X0>(char *a1@<X0>, uint64_t a2@<X2>, char *a3@<X3>, void (*a4)(double)@<X4>, uint64_t a5@<X6>, _BYTE *a6@<X8>)
{
  v31[1] = a2;
  v32 = a5;
  v33 = a6;
  v9 = type metadata accessor for LocalizedStringResource();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v31 - v14;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *a3;
  a4(v17);
  v20 = *(v10 + 16);
  v20(v15, a1, v9);
  v20(v12, v15, v9);
  v21 = Text.init(_:)();
  v23 = v22;
  v25 = v24;
  LOBYTE(v34[0]) = v26 & 1;
  v27 = Image.init(_:bundle:)();
  v28 = *(v10 + 8);
  v28(a1, v9);
  v28(v15, v9);
  v29 = LOBYTE(v34[0]);
  outlined consume of Label<Text, Image>?(0, 0, 0, 0);
  v34[0] = v21;
  v34[1] = v23;
  v34[2] = v29;
  v34[3] = v25;
  v34[4] = v27;
  v35 = 1;
  return Tab.init<>(role:content:tabItem:)(&v36, v19, v34, v32, &type metadata for DefaultTabLabel, v33);
}

uint64_t Tab<>.init<A>(_:image:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X6>, _BYTE *a6@<X8>, uint64_t a7, void (*a8)(uint64_t *__return_ptr, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v26 = a4;
  v27 = a6;
  v12 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = 1;
  v19(v16);
  (*(v12 + 16))(v14, a1, a5);
  a8(&v28, v14, a2, a3, a5, a7);
  (*(v12 + 8))(a1, a5);
  v20 = v28;
  v21 = v29;
  v22 = v30;
  v23 = v31;
  v24 = v32;
  outlined consume of Label<Text, Image>?(0, 0, 0, 0);
  v28 = v20;
  v29 = v21;
  v30 = v22;
  v31 = v23;
  v32 = v24;
  v33 = 1;
  return Tab.init<>(role:content:tabItem:)(&v34, v18, &v28, v26, &type metadata for DefaultTabLabel, v27);
}

uint64_t Tab<>.init<A>(_:image:role:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X6>, uint64_t a5@<X7>, _BYTE *a6@<X8>, uint64_t a7, uint64_t a8, void (*a9)(uint64_t *__return_ptr, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v28 = a4;
  v29 = a6;
  v13 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *v20;
  v21(v17);
  (*(v13 + 16))(v15, a1, a5);
  a9(&v30, v15, a2, a3, a5, a8);
  (*(v13 + 8))(a1, a5);
  v22 = v30;
  v23 = v31;
  v24 = v32;
  v25 = v33;
  v26 = v34;
  outlined consume of Label<Text, Image>?(0, 0, 0, 0);
  v30 = v22;
  v31 = v23;
  v32 = v24;
  v33 = v25;
  v34 = v26;
  v35 = 1;
  return Tab.init<>(role:content:tabItem:)(&v36, v19, &v30, v28, &type metadata for DefaultTabLabel, v29);
}

uint64_t Tab<>.init<>(_:systemImage:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, _BYTE *a4@<X8>, uint64_t a5)
{
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = 1;
  v11(v8);
  v12 = Text.init(_:tableName:bundle:comment:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  specialized Image.init(systemName:)(a2, a3);
  v20 = v19;
  outlined consume of Label<Text, Image>?(0, 0, 0, 0);
  v22[0] = v12;
  v22[1] = v14;
  v22[2] = v16 & 1;
  v22[3] = v18;
  v22[4] = v20;
  v23 = 1;
  return Tab.init<>(role:content:tabItem:)(&v24, v10, v22, a5, &type metadata for DefaultTabLabel, a4);
}

uint64_t Tab<>.init<>(_:systemImage:content:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(double)@<X3>, uint64_t a5@<X5>, _BYTE *a6@<X8>)
{
  v34 = a3;
  v35 = a5;
  v36 = a6;
  v9 = type metadata accessor for LocalizedStringResource();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v33 - v14;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = 1;
  a4(v17);
  v20 = *(v10 + 16);
  v20(v15, a1, v9);
  v20(v12, v15, v9);
  v21 = Text.init(_:)();
  v23 = v22;
  v25 = v24;
  LOBYTE(v37[0]) = v26 & 1;
  v27 = specialized Image.init(systemName:)(a2, v34);
  v29 = v28;
  v30 = *(v10 + 8);
  (v30)(a1, v9, v27);
  v30(v15, v9);
  v31 = LOBYTE(v37[0]);
  outlined consume of Label<Text, Image>?(0, 0, 0, 0);
  v37[0] = v21;
  v37[1] = v23;
  v37[2] = v31;
  v37[3] = v25;
  v37[4] = v29;
  v38 = 1;
  return Tab.init<>(role:content:tabItem:)(&v39, v19, v37, v35, &type metadata for DefaultTabLabel, v36);
}

uint64_t Tab<>.init<>(_:systemImage:role:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, _BYTE *a4@<X8>, uint64_t a5, uint64_t a6)
{
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *v12;
  v13(v9);
  v14 = Text.init(_:tableName:bundle:comment:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  specialized Image.init(systemName:)(a2, a3);
  v22 = v21;
  outlined consume of Label<Text, Image>?(0, 0, 0, 0);
  v24[0] = v14;
  v24[1] = v16;
  v24[2] = v18 & 1;
  v24[3] = v20;
  v24[4] = v22;
  v25 = 1;
  return Tab.init<>(role:content:tabItem:)(&v26, v11, v24, a6, &type metadata for DefaultTabLabel, a4);
}

uint64_t Tab<>.init<>(_:systemImage:role:content:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, void (*a5)(double)@<X4>, uint64_t a6@<X6>, _BYTE *a7@<X8>)
{
  v36 = a3;
  v37 = a6;
  v38 = a7;
  v11 = type metadata accessor for LocalizedStringResource();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v35 - v16;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *a4;
  a5(v19);
  v22 = *(v12 + 16);
  v22(v17, a1, v11);
  v22(v14, v17, v11);
  v23 = Text.init(_:)();
  v25 = v24;
  v27 = v26;
  LOBYTE(v39[0]) = v28 & 1;
  v29 = specialized Image.init(systemName:)(a2, v36);
  v31 = v30;
  v32 = *(v12 + 8);
  (v32)(a1, v11, v29);
  v32(v17, v11);
  v33 = LOBYTE(v39[0]);
  outlined consume of Label<Text, Image>?(0, 0, 0, 0);
  v39[0] = v23;
  v39[1] = v25;
  v39[2] = v33;
  v39[3] = v27;
  v39[4] = v31;
  v40 = 1;
  return Tab.init<>(role:content:tabItem:)(&v41, v21, v39, v37, &type metadata for DefaultTabLabel, v38);
}

uint64_t Tab<>.init<>(role:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, _BYTE *a3@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v9;
  v8 = v15;
  v10(v5);
  outlined consume of Label<Text, Image>?(0, 0, 0, 0);
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  v14 = v8;
  return Tab.init<>(role:content:tabItem:)(&v15, v7, v12, a2, &type metadata for DefaultTabLabel, a3);
}

uint64_t Tab<>.init(content:label:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, _BYTE *a5@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = 1;
  v16 = v15(v12);
  a2(v16);
  return Tab.init<>(role:content:tabItem:)(&v19, v14, v10, a3, a4, a5);
}

uint64_t Tab<>.init(role:content:label:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X3>, uint64_t a3@<X5>, uint64_t a4@<X6>, _BYTE *a5@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v19[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = *v15;
  v17 = v16(v12);
  a2(v17);
  return Tab.init<>(role:content:tabItem:)(&v20, v14, v10, a3, a4, a5);
}

uint64_t Tab<>.TabIdentifiedView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v64 = *(a1 - 1);
  v65 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v63 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v4 + 40);
  v58 = *(v4 + 24);
  v59 = v5;
  v6 = type metadata accessor for VStack();
  v62 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v60 = &v47 - v7;
  v57 = a1[4];
  type metadata accessor for ModifiedContent();
  type metadata accessor for ViewInputFlagModifier<AccessibilityShowsLabelIcon>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  v8 = type metadata accessor for ModifiedContent();
  v56 = a1[6];
  v94 = v56;
  v95 = &protocol witness table for UpdateDefaultTabFill;
  WitnessTable = swift_getWitnessTable();
  v10 = lazy protocol witness table accessor for type ViewInputFlagModifier<AccessibilityShowsLabelIcon> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type ViewInputFlagModifier<AccessibilityShowsLabelIcon> and conformance ViewInputFlagModifier<A>, type metadata accessor for ViewInputFlagModifier<AccessibilityShowsLabelIcon>);
  v92 = WitnessTable;
  v93 = v10;
  v90 = swift_getWitnessTable();
  v91 = &protocol witness table for AccessibilityAttachmentModifier;
  v88 = swift_getWitnessTable();
  v89 = &protocol witness table for AccessibilityDetachedPropertyWriterModifier;
  v11 = swift_getWitnessTable();
  v82 = MEMORY[0x1E69806B0];
  v83 = v8;
  v84 = &type metadata for TabItem.TraitKey;
  v85 = MEMORY[0x1E69806A0];
  v86 = v11;
  v87 = &protocol witness table for TabItem.TraitKey;
  type metadata accessor for PlatformItemTraitWriter();
  v12 = v6;
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ContainerValueWritingModifier<TabItemLabel_v0?>();
  v13 = type metadata accessor for ModifiedContent();
  v55 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v54 = &v47 - v14;
  v15 = swift_getWitnessTable();
  v51 = v15;
  v16 = swift_getWitnessTable();
  v80 = v15;
  v81 = v16;
  v17 = swift_getWitnessTable();
  v18 = lazy protocol witness table accessor for type TabPlatformIdentified and conformance TabPlatformIdentified();
  v78 = v17;
  v79 = v18;
  v19 = swift_getWitnessTable();
  v20 = lazy protocol witness table accessor for type ViewInputFlagModifier<AccessibilityShowsLabelIcon> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type _ContainerValueWritingModifier<TabItemLabel_v0?> and conformance _ContainerValueWritingModifier<A>, type metadata accessor for _ContainerValueWritingModifier<TabItemLabel_v0?>);
  v76 = v19;
  v77 = v20;
  v50 = v13;
  v49 = swift_getWitnessTable();
  v82 = v13;
  v83 = &type metadata for TabOptions.TraitKey;
  v84 = v49;
  v85 = &protocol witness table for TabOptions.TraitKey;
  v52 = MEMORY[0x1E6981298];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v53 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v47 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v48 = &v47 - v24;
  v25 = a1;
  *&v26 = a1[2];
  v27 = v57;
  *(&v26 + 1) = v58;
  *&v28 = v57;
  *(&v28 + 1) = v59;
  v67 = v28;
  v68 = v26;
  v72 = v26;
  v73 = v28;
  v29 = v56;
  v30 = v61;
  v74 = v56;
  v75 = v61;
  static HorizontalAlignment.center.getter();
  v31 = v60;
  VStack.init(alignment:spacing:content:)();
  v69[1] = v68;
  v69[2] = v67;
  v32 = v29;
  v70 = v29;
  v71 = v30;
  v33 = v54;
  v34 = v32;
  View.tabItem<A>(_:)(partial apply for closure #2 in Tab<>.TabIdentifiedView.body.getter, v69, v12, v27, v51, v32, v54);
  (*(v62 + 8))(v31, v12);
  v36 = v63;
  v35 = v64;
  (*(v64 + 16))(v63, v30, v25);
  v37 = (*(v35 + 80) + 56) & ~*(v35 + 80);
  v38 = swift_allocObject();
  v39 = v67;
  *(v38 + 16) = v68;
  *(v38 + 32) = v39;
  *(v38 + 48) = v34;
  (*(v35 + 32))(v38 + v37, v36, v25);
  v40 = v47;
  v41 = v49;
  v42 = v50;
  View.transformTrait<A>(_:transform:)();

  (*(v55 + 8))(v33, v42);
  v82 = v42;
  v83 = &type metadata for TabOptions.TraitKey;
  v84 = v41;
  v85 = &protocol witness table for TabOptions.TraitKey;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v44 = v48;
  static ViewBuilder.buildExpression<A>(_:)(v40, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v45 = *(v53 + 8);
  v45(v40, OpaqueTypeMetadata2);
  static ViewBuilder.buildExpression<A>(_:)(v44, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v45)(v44, OpaqueTypeMetadata2);
}

uint64_t closure #1 in Tab<>.TabIdentifiedView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Tab();
  static ViewBuilder.buildExpression<A>(_:)(a1 + *(v11 + 48), a3, a5);
  static ViewBuilder.buildExpression<A>(_:)(v10, a3, a5);
  return (*(v8 + 8))(v10, a3);
}

uint64_t closure #2 in Tab<>.TabIdentifiedView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Tab();
  static ViewBuilder.buildExpression<A>(_:)(a1 + *(v12 + 52), a4, a6);
  static ViewBuilder.buildExpression<A>(_:)(v11, a4, a6);
  return (*(v9 + 8))(v11, a4);
}

uint64_t protocol witness for static _ViewTraitKey.defaultValue.getter in conformance TabOptions.TraitKey@<X0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = unk_1EAB09380;
  v6 = static TabOptions.TraitKey.defaultValue;
  v7[0] = unk_1EAB09380;
  v2 = *(&word_1EAB09388 + 1);
  *(v7 + 9) = *(&word_1EAB09388 + 1);
  *a1 = static TabOptions.TraitKey.defaultValue;
  a1[1] = v1;
  *(a1 + 25) = v2;
  return outlined init with copy of TabOptions(&v6, &v5);
}

uint64_t type metadata completion function for Tab()
{
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_initStructMetadata();
        return 0;
      }
    }
  }

  return result;
}

uint64_t type metadata completion function for Tab<>.TabIdentifiedView()
{
  result = type metadata accessor for Tab();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for Tab(uint64_t *a1, uint64_t *a2, void *a3)
{
  v5 = a3[2];
  v6 = *(v5 - 8);
  if (*(v6 + 84))
  {
    v7 = *(v6 + 64);
  }

  else
  {
    v7 = *(v6 + 64) + 1;
  }

  v8 = *(a3[3] - 8);
  v9 = *(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(a3[4] - 8);
  v12 = *(v11 + 80);
  v13 = (*(v8 + 80) | *(v6 + 80) | *(v11 + 80));
  if (v13 <= 7 && ((((-2 - v9 - v7) | v9) - (v10 + v12)) | v12) - *(v11 + 64) >= 0xFFFFFFFFFFFFFFE7 && ((*(v8 + 80) | *(v6 + 80) | *(v11 + 80)) & 0x100000) == 0)
  {
    v22 = a3[4];
    v23 = a3[3];
    v21 = ~v9;
    if ((*(v6 + 48))(a2, 1, v5))
    {
      memcpy(a1, a2, v7);
    }

    else
    {
      (*(v6 + 16))(a1, a2, v5);
      (*(v6 + 56))(a1, 0, 1, v5);
    }

    *(a1 + v7) = *(a2 + v7);
    v17 = a2 + v7 + v9;
    v18 = (a1 + v7 + v9 + 1) & v21;
    v19 = (v17 + 1) & v21;
    (*(v8 + 16))(v18, v19, v23);
    (*(v11 + 16))((v18 + v10 + v12) & ~v12, (v19 + v10 + v12) & ~v12, v22);
  }

  else
  {
    v16 = *a2;
    *a1 = *a2;
    a1 = (v16 + ((v13 + 16) & ~v13));
  }

  return a1;
}

uint64_t destroy for Tab(uint64_t a1, void *a2)
{
  v4 = a2[2];
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1, 1, v4))
  {
    (*(v5 + 8))(a1, v4);
  }

  v6 = *(a2[3] - 8) + 8;
  v7 = v6;
  v8 = a1 + *(v5 + 64);
  if (!*(v5 + 84))
  {
    ++v8;
  }

  v9 = (v8 + *(v6 + 72) + 1) & ~*(v6 + 72);
  (*v6)(v9);
  v10 = *(a2[4] - 8);
  v11 = *(v10 + 8);
  v12 = (v9 + *(v7 + 56) + *(v10 + 80)) & ~*(v10 + 80);

  return v11(v12);
}

char *initializeWithCopy for Tab(char *a1, char *a2, void *a3)
{
  v6 = a3[2];
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = *(v7 + 84);
    v9 = *(v7 + 64);
    if (v8)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 + 1;
    }

    memcpy(a1, a2, v10);
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    v12 = *(v7 + 56);
    v11 = v7 + 56;
    v12(a1, 0, 1, v6);
    v8 = *(v11 + 28);
    v9 = *(v11 + 8);
  }

  if (v8)
  {
    v13 = v9;
  }

  else
  {
    v13 = v9 + 1;
  }

  v14 = &a1[v13];
  v15 = &a2[v13];
  *v14 = *v15;
  v16 = *(a3[3] - 8);
  v17 = v16 + 16;
  v18 = *(v16 + 80);
  v19 = &v14[v18 + 1] & ~v18;
  v20 = &v15[v18 + 1] & ~v18;
  (*(v16 + 16))(v19, v20);
  v21 = *(a3[4] - 8);
  (*(v21 + 16))((*(v17 + 48) + *(v21 + 80) + v19) & ~*(v21 + 80), (*(v17 + 48) + *(v21 + 80) + v20) & ~*(v21 + 80));
  return a1;
}

char *assignWithCopy for Tab(char *a1, char *a2, void *a3)
{
  v6 = a3[2];
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 16))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
      goto LABEL_12;
    }

    v11 = *(v7 + 84);
    v12 = *(v7 + 64);
  }

  else
  {
    if (!v10)
    {
      (*(v7 + 24))(a1, a2, v6);
      goto LABEL_12;
    }

    (*(v7 + 8))(a1, v6);
    v11 = *(v7 + 84);
    v12 = *(v7 + 64);
  }

  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = v12 + 1;
  }

  memcpy(a1, a2, v13);
LABEL_12:
  if (*(v7 + 84))
  {
    v14 = *(v7 + 64);
  }

  else
  {
    v14 = *(v7 + 64) + 1;
  }

  v15 = &a1[v14];
  v16 = &a2[v14];
  *v15 = *v16;
  v17 = *(a3[3] - 8);
  v18 = v17 + 24;
  v19 = *(v17 + 80);
  v20 = &v15[v19 + 1] & ~v19;
  v21 = &v16[v19 + 1] & ~v19;
  (*(v17 + 24))(v20, v21);
  v22 = *(a3[4] - 8);
  (*(v22 + 24))((*(v18 + 40) + *(v22 + 80) + v20) & ~*(v22 + 80), (*(v18 + 40) + *(v22 + 80) + v21) & ~*(v22 + 80));
  return a1;
}

char *initializeWithTake for Tab(char *a1, char *a2, void *a3)
{
  v6 = a3[2];
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = *(v7 + 84);
    v9 = *(v7 + 64);
    if (v8)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 + 1;
    }

    memcpy(a1, a2, v10);
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    v12 = *(v7 + 56);
    v11 = v7 + 56;
    v12(a1, 0, 1, v6);
    v8 = *(v11 + 28);
    v9 = *(v11 + 8);
  }

  if (v8)
  {
    v13 = v9;
  }

  else
  {
    v13 = v9 + 1;
  }

  v14 = &a1[v13];
  v15 = &a2[v13];
  *v14 = *v15;
  v16 = *(a3[3] - 8);
  v17 = v16 + 32;
  v18 = *(v16 + 80);
  v19 = &v14[v18 + 1] & ~v18;
  v20 = &v15[v18 + 1] & ~v18;
  (*(v16 + 32))(v19, v20);
  v21 = *(a3[4] - 8);
  (*(v21 + 32))((*(v17 + 32) + *(v21 + 80) + v19) & ~*(v21 + 80), (*(v17 + 32) + *(v21 + 80) + v20) & ~*(v21 + 80));
  return a1;
}

char *assignWithTake for Tab(char *a1, char *a2, void *a3)
{
  v6 = a3[2];
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 32))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
      goto LABEL_12;
    }

    v11 = *(v7 + 84);
    v12 = *(v7 + 64);
  }

  else
  {
    if (!v10)
    {
      (*(v7 + 40))(a1, a2, v6);
      goto LABEL_12;
    }

    (*(v7 + 8))(a1, v6);
    v11 = *(v7 + 84);
    v12 = *(v7 + 64);
  }

  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = v12 + 1;
  }

  memcpy(a1, a2, v13);
LABEL_12:
  if (*(v7 + 84))
  {
    v14 = *(v7 + 64);
  }

  else
  {
    v14 = *(v7 + 64) + 1;
  }

  v15 = &a1[v14];
  v16 = &a2[v14];
  *v15 = *v16;
  v17 = *(a3[3] - 8);
  v18 = v17 + 40;
  v19 = *(v17 + 80);
  v20 = &v15[v19 + 1] & ~v19;
  v21 = &v16[v19 + 1] & ~v19;
  (*(v17 + 40))(v20, v21);
  v22 = *(a3[4] - 8);
  (*(v22 + 40))((*(v18 + 24) + *(v22 + 80) + v20) & ~*(v22 + 80), (*(v18 + 24) + *(v22 + 80) + v21) & ~*(v22 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for Tab(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v4 = *(a3[2] - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = a3[4];
  v8 = *(a3[3] - 8);
  v9 = *(v8 + 84);
  v10 = *(v7 - 8);
  if (v9 <= v6)
  {
    v11 = v6;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = *(v10 + 84);
  v13 = *(v8 + 80);
  v14 = *(*(a3[3] - 8) + 64);
  v15 = *(v10 + 80);
  v16 = *(v10 + 64);
  if (v12 <= v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = *(v10 + 84);
  }

  if (v5)
  {
    v18 = *(*(a3[2] - 8) + 64);
  }

  else
  {
    v18 = *(*(a3[2] - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = a2 - v17;
  if (a2 <= v17)
  {
    goto LABEL_37;
  }

  v20 = ((v14 + v15 + ((v18 + v13 + 1) & ~v13)) & ~v15) + v16;
  v21 = 8 * v20;
  if (v20 <= 3)
  {
    v23 = ((v19 + ~(-1 << v21)) >> v21) + 1;
    if (HIWORD(v23))
    {
      v22 = *(a1 + v20);
      if (!v22)
      {
        goto LABEL_36;
      }

      goto LABEL_23;
    }

    if (v23 > 0xFF)
    {
      v22 = *(a1 + v20);
      if (!*(a1 + v20))
      {
        goto LABEL_36;
      }

      goto LABEL_23;
    }

    if (v23 < 2)
    {
LABEL_36:
      if (v17)
      {
LABEL_37:
        if (v6 == v17)
        {
          v27 = (*(v4 + 48))();
          if (v27 >= 2)
          {
            return v27 - 1;
          }

          else
          {
            return 0;
          }
        }

        else
        {
          v29 = (a1 + v18 + v13 + 1) & ~v13;
          if (v9 == v17)
          {
            v30 = *(v8 + 48);
            v31 = *(v8 + 84);
            v32 = a3[3];
          }

          else
          {
            v30 = *(*(v7 - 8) + 48);
            v29 = (v29 + v14 + v15) & ~v15;
            v31 = v12;
            v32 = a3[4];
          }

          return v30(v29, v31, v32);
        }
      }

      return 0;
    }
  }

  v22 = *(a1 + v20);
  if (!*(a1 + v20))
  {
    goto LABEL_36;
  }

LABEL_23:
  v24 = (v22 - 1) << v21;
  if (v20 > 3)
  {
    v24 = 0;
  }

  if (v20)
  {
    if (v20 <= 3)
    {
      v25 = ((v14 + v15 + ((v18 + v13 + 1) & ~v13)) & ~v15) + v16;
    }

    else
    {
      v25 = 4;
    }

    if (v25 > 2)
    {
      if (v25 == 3)
      {
        v26 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v26 = *a1;
      }
    }

    else if (v25 == 1)
    {
      v26 = *a1;
    }

    else
    {
      v26 = *a1;
    }
  }

  else
  {
    v26 = 0;
  }

  return v17 + (v26 | v24) + 1;
}

char *storeEnumTagSinglePayload for Tab(char *result, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = 0;
  v6 = *(a4[2] - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = a4[3];
  v10 = a4[4];
  v11 = *(v9 - 8);
  v12 = *(v11 + 84);
  if (v12 <= v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  v14 = *(v10 - 8);
  v15 = *(v11 + 80);
  v16 = *(*(v9 - 8) + 64);
  v17 = *(v14 + 80);
  if (*(v14 + 84) <= v13)
  {
    v18 = v13;
  }

  else
  {
    v18 = *(v14 + 84);
  }

  if (v7)
  {
    v19 = *(*(a4[2] - 8) + 64);
  }

  else
  {
    v19 = *(*(a4[2] - 8) + 64) + 1;
  }

  v20 = ((v16 + v17 + ((v19 + v15 + 1) & ~v15)) & ~v17) + *(*(v10 - 8) + 64);
  v21 = a3 >= v18;
  v22 = a3 - v18;
  if (v22 == 0 || !v21)
  {
    goto LABEL_25;
  }

  if (v20 > 3)
  {
    v5 = 1;
    if (v18 < a2)
    {
      goto LABEL_26;
    }

    goto LABEL_35;
  }

  v23 = ((v22 + ~(-1 << (8 * v20))) >> (8 * v20)) + 1;
  if (!HIWORD(v23))
  {
    if (v23 < 0x100)
    {
      v24 = 1;
    }

    else
    {
      v24 = 2;
    }

    if (v23 >= 2)
    {
      v5 = v24;
    }

    else
    {
      v5 = 0;
    }

LABEL_25:
    if (v18 < a2)
    {
      goto LABEL_26;
    }

    goto LABEL_35;
  }

  v5 = 4;
  if (v18 < a2)
  {
LABEL_26:
    v25 = ~v18 + a2;
    if (v20 < 4)
    {
      v27 = (v25 >> (8 * v20)) + 1;
      if (v20)
      {
        v28 = v25 & ~(-1 << (8 * v20));
        v29 = result;
        bzero(result, v20);
        result = v29;
        if (v20 != 3)
        {
          if (v20 == 2)
          {
            *v29 = v28;
            if (v5 > 1)
            {
LABEL_60:
              if (v5 == 2)
              {
                *&result[v20] = v27;
              }

              else
              {
                *&result[v20] = v27;
              }

              return result;
            }
          }

          else
          {
            *v29 = v25;
            if (v5 > 1)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_57;
        }

        *v29 = v28;
        v29[2] = BYTE2(v28);
      }

      if (v5 > 1)
      {
        goto LABEL_60;
      }
    }

    else
    {
      v26 = result;
      bzero(result, v20);
      result = v26;
      *v26 = v25;
      v27 = 1;
      if (v5 > 1)
      {
        goto LABEL_60;
      }
    }

LABEL_57:
    if (v5)
    {
      result[v20] = v27;
    }

    return result;
  }

LABEL_35:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v20] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_42;
    }

    *&result[v20] = 0;
  }

  else if (v5)
  {
    result[v20] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_42;
  }

  if (!a2)
  {
    return result;
  }

LABEL_42:
  if (v8 == v18)
  {
    v30 = *(v6 + 56);

    return v30();
  }

  else
  {
    v31 = &result[v19 + 1 + v15] & ~v15;
    if (v12 == v18)
    {
      v32 = *(v11 + 56);
    }

    else
    {
      v32 = *(v14 + 56);
      v31 = (v31 + v16 + v17) & ~v17;
    }

    return v32(v31);
  }
}

void type metadata accessor for ViewInputFlagModifier<AccessibilityShowsLabelIcon>()
{
  if (!lazy cache variable for type metadata for ViewInputFlagModifier<AccessibilityShowsLabelIcon>)
  {
    lazy protocol witness table accessor for type AccessibilityShowsLabelIcon and conformance AccessibilityShowsLabelIcon();
    v0 = type metadata accessor for ViewInputFlagModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ViewInputFlagModifier<AccessibilityShowsLabelIcon>);
    }
  }
}

void type metadata accessor for _ContainerValueWritingModifier<TabItemLabel_v0?>()
{
  if (!lazy cache variable for type metadata for _ContainerValueWritingModifier<TabItemLabel_v0?>)
  {
    type metadata accessor for TabItemLabel_v0?();
    v0 = type metadata accessor for _ContainerValueWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContainerValueWritingModifier<TabItemLabel_v0?>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ViewInputFlagModifier<AccessibilityShowsLabelIcon> and conformance ViewInputFlagModifier<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t partial apply for closure #3 in Tab<>.TabIdentifiedView.body.getter(uint64_t a1)
{
  v3 = *(type metadata accessor for Tab<>.TabIdentifiedView() - 8);
  v4 = v1 + ((*(v3 + 80) + 56) & ~*(v3 + 80));
  result = type metadata accessor for Tab();
  *(a1 + 40) = *(v4 + *(result + 44));
  return result;
}

uint64_t destroy for TabOptions(uint64_t a1)
{
  if (*(a1 + 24) != 255)
  {
    outlined consume of TabCustomizationID.Base();
  }
}

uint64_t initializeWithCopy for TabOptions(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  v4 = *(a2 + 24);
  if (v4 == 255)
  {
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
  }

  else
  {
    v5 = *(a2 + 8);
    v6 = *(a2 + 16);
    v7 = v4 & 1;
    outlined copy of TabCustomizationID.Base();
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7;
  }

  *(a1 + 25) = *(a2 + 25);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t assignWithCopy for TabOptions(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  v4 = *(a2 + 24);
  if (*(a1 + 24) == 255)
  {
    if (v4 == 255)
    {
      v12 = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 8) = v12;
    }

    else
    {
      v8 = *(a2 + 8);
      v9 = *(a2 + 16);
      v10 = v4 & 1;
      outlined copy of TabCustomizationID.Base();
      *(a1 + 8) = v8;
      *(a1 + 16) = v9;
      *(a1 + 24) = v10;
    }
  }

  else if (v4 == 255)
  {
    outlined destroy of TabCustomizationID(a1 + 8);
    v11 = *(a2 + 24);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = v11;
  }

  else
  {
    v5 = *(a2 + 8);
    v6 = *(a2 + 16);
    v7 = v4 & 1;
    outlined copy of TabCustomizationID.Base();
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7;
    outlined consume of TabCustomizationID.Base();
  }

  *(a1 + 25) = *(a2 + 25);
  *(a1 + 26) = *(a2 + 26);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t assignWithTake for TabOptions(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  if (*(a1 + 24) == 255)
  {
    goto LABEL_5;
  }

  v4 = *(a2 + 24);
  if (v4 == 255)
  {
    outlined destroy of TabCustomizationID(a1 + 8);
LABEL_5:
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    goto LABEL_6;
  }

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = v4 & 1;
  outlined consume of TabCustomizationID.Base();
LABEL_6:
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t getEnumTagSinglePayload for TabOptions(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TabOptions(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t DropCoordinator.init(operation:items:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for DropCoordinator.Operation();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for DropCoordinator();
  *(a3 + *(result + 28)) = a2;
  return result;
}

uint64_t type metadata completion function for DropCoordinator.Operation()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for DropCoordinator.Operation(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if (v6 > 7 || (v5 + 1) > 0x18 || (*(v4 + 80) & 0x100000) != 0)
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v6 + 16) & ~v6));

    return v3;
  }

  v10 = *(a2 + v5);
  if (v10 >= 2)
  {
    if (v5 <= 3)
    {
      v11 = *(v4 + 64);
    }

    else
    {
      v11 = 4;
    }

    if (v11 > 1)
    {
      if (v11 == 2)
      {
        v12 = *a2;
      }

      else if (v11 == 3)
      {
        v12 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v12 = *a2;
      }

      goto LABEL_21;
    }

    if (v11)
    {
      v12 = *a2;
LABEL_21:
      v13 = (v12 | ((v10 - 2) << (8 * v5))) + 2;
      v14 = v12 + 2;
      if (v5 >= 4)
      {
        v10 = v14;
      }

      else
      {
        v10 = v13;
      }
    }
  }

  (*(v4 + 16))(a1);
  *(v3 + v5) = v10 == 1;
  return v3;
}

uint64_t initializeWithCopy for DropCoordinator.Operation(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(*(*(a3 + 16) - 8) + 64);
  v5 = a2[v4];
  v6 = v5 - 2;
  if (v5 >= 2)
  {
    if (v4 <= 3)
    {
      v7 = *(*(*(a3 + 16) - 8) + 64);
    }

    else
    {
      v7 = 4;
    }

    if (v7 <= 1)
    {
      if (!v7)
      {
        goto LABEL_15;
      }

      v8 = *a2;
    }

    else if (v7 == 2)
    {
      v8 = *a2;
    }

    else if (v7 == 3)
    {
      v8 = *a2 | (a2[2] << 16);
    }

    else
    {
      v8 = *a2;
    }

    v9 = (v8 | (v6 << (8 * v4))) + 2;
    v5 = v8 + 2;
    if (v4 < 4)
    {
      v5 = v9;
    }
  }

LABEL_15:
  v10 = v5 == 1;
  (*(*(*(a3 + 16) - 8) + 16))(a1);
  *(a1 + v4) = v10;
  return a1;
}

unsigned __int16 *assignWithCopy for DropCoordinator.Operation(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = *(a3 + 16);
    v6 = *(v5 - 8);
    v7 = v6;
    v8 = *(v6 + 64);
    (*(v6 + 8))(a1, v5);
    v9 = *(a2 + v8);
    v10 = v9 - 2;
    if (v9 >= 2)
    {
      if (v8 <= 3)
      {
        v11 = v8;
      }

      else
      {
        v11 = 4;
      }

      if (v11 > 1)
      {
        if (v11 == 2)
        {
          v12 = *a2;
        }

        else if (v11 == 3)
        {
          v12 = *a2 | (*(a2 + 2) << 16);
        }

        else
        {
          v12 = *a2;
        }

LABEL_14:
        v13 = (v12 | (v10 << (8 * v8))) + 2;
        v9 = v12 + 2;
        if (v8 < 4)
        {
          v9 = v13;
        }

        goto LABEL_16;
      }

      if (v11)
      {
        v12 = *a2;
        goto LABEL_14;
      }
    }

LABEL_16:
    v14 = v9 == 1;
    (*(v7 + 16))(a1, a2, v5);
    *(a1 + v8) = v14;
  }

  return a1;
}

uint64_t initializeWithTake for DropCoordinator.Operation(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(*(*(a3 + 16) - 8) + 64);
  v5 = a2[v4];
  v6 = v5 - 2;
  if (v5 >= 2)
  {
    if (v4 <= 3)
    {
      v7 = *(*(*(a3 + 16) - 8) + 64);
    }

    else
    {
      v7 = 4;
    }

    if (v7 <= 1)
    {
      if (!v7)
      {
        goto LABEL_15;
      }

      v8 = *a2;
    }

    else if (v7 == 2)
    {
      v8 = *a2;
    }

    else if (v7 == 3)
    {
      v8 = *a2 | (a2[2] << 16);
    }

    else
    {
      v8 = *a2;
    }

    v9 = (v8 | (v6 << (8 * v4))) + 2;
    v5 = v8 + 2;
    if (v4 < 4)
    {
      v5 = v9;
    }
  }

LABEL_15:
  v10 = v5 == 1;
  (*(*(*(a3 + 16) - 8) + 32))(a1);
  *(a1 + v4) = v10;
  return a1;
}

unsigned __int16 *assignWithTake for DropCoordinator.Operation(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = *(a3 + 16);
    v6 = *(v5 - 8);
    v7 = v6;
    v8 = *(v6 + 64);
    (*(v6 + 8))(a1, v5);
    v9 = *(a2 + v8);
    v10 = v9 - 2;
    if (v9 >= 2)
    {
      if (v8 <= 3)
      {
        v11 = v8;
      }

      else
      {
        v11 = 4;
      }

      if (v11 > 1)
      {
        if (v11 == 2)
        {
          v12 = *a2;
        }

        else if (v11 == 3)
        {
          v12 = *a2 | (*(a2 + 2) << 16);
        }

        else
        {
          v12 = *a2;
        }

LABEL_14:
        v13 = (v12 | (v10 << (8 * v8))) + 2;
        v9 = v12 + 2;
        if (v8 < 4)
        {
          v9 = v13;
        }

        goto LABEL_16;
      }

      if (v11)
      {
        v12 = *a2;
        goto LABEL_14;
      }
    }

LABEL_16:
    v14 = v9 == 1;
    (*(v7 + 32))(a1, a2, v5);
    *(a1 + v8) = v14;
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for DropCoordinator.Operation(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_23;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 < 2)
    {
LABEL_23:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_23;
  }

LABEL_12:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void storeEnumTagSinglePayload for DropCoordinator.Operation(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_37:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_37;
          }
        }

LABEL_34:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_23:
      a1[v5] = -a2;
      return;
    }

LABEL_22:
    if (!a2)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_22;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_23;
  }
}

uint64_t getEnumTag for DropCoordinator.Operation(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(*(a2 + 16) - 8) + 64);
  v3 = a1[v2];
  v4 = v3 - 2;
  if (v3 >= 2)
  {
    if (v2 <= 3)
    {
      v5 = *(*(*(a2 + 16) - 8) + 64);
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

void destructiveInjectEnumTag for DropCoordinator.Operation(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (a2 > 1)
  {
    v4 = a2 - 2;
    if (v3 < 4)
    {
      a1[v3] = (v4 >> (8 * v3)) + 2;
      if (v3)
      {
        v6 = v4 & ~(-1 << (8 * v3));
        bzero(a1, v3);
        if (v3 == 3)
        {
          *a1 = v6;
          a1[2] = BYTE2(v6);
        }

        else if (v3 == 2)
        {
          *a1 = v6;
        }

        else
        {
          *a1 = v4;
        }
      }
    }

    else
    {
      a1[v3] = 2;
      bzero(a1, v3);
      *a1 = v4;
    }
  }

  else
  {
    a1[v3] = a2;
  }
}

uint64_t type metadata completion function for DropCoordinator()
{
  result = type metadata accessor for DropCoordinator.Operation();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for DropCoordinator(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) == 0 && (v5 & 0xFFFFFFFFFFFFFFF8) + 16 <= 0x18)
  {
    v9 = *(a2 + v5);
    v10 = v9 - 2;
    if (v9 >= 2)
    {
      if (v5 <= 3)
      {
        v11 = *(v4 + 64);
      }

      else
      {
        v11 = 4;
      }

      if (v11 > 1)
      {
        if (v11 == 2)
        {
          v12 = *a2;
        }

        else if (v11 == 3)
        {
          v12 = *a2 | (*(a2 + 2) << 16);
        }

        else
        {
          v12 = *a2;
        }

LABEL_19:
        v13 = (v12 | (v10 << (8 * v5))) + 2;
        v9 = v12 + 2;
        if (v5 < 4)
        {
          v9 = v13;
        }

        goto LABEL_21;
      }

      if (v11)
      {
        v12 = *a2;
        goto LABEL_19;
      }
    }

LABEL_21:
    v14 = v9 == 1;
    (*(v4 + 16))(a1);
    *(v3 + v5) = v14;
    *((v3 + v5 + 8) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v5 + 8) & 0xFFFFFFFFFFFFFFF8);

    return v3;
  }

  v8 = *a2;
  *v3 = *a2;
  v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));

  return v3;
}

uint64_t destroy for DropCoordinator(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))();
}

uint64_t initializeWithCopy for DropCoordinator(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *(*(*(a3 + 16) - 8) + 64);
  v6 = a2[v5];
  v7 = v6 - 2;
  if (v6 >= 2)
  {
    if (v5 <= 3)
    {
      v8 = *(*(*(a3 + 16) - 8) + 64);
    }

    else
    {
      v8 = 4;
    }

    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_15;
      }

      v9 = *a2;
    }

    else if (v8 == 2)
    {
      v9 = *a2;
    }

    else if (v8 == 3)
    {
      v9 = *a2 | (a2[2] << 16);
    }

    else
    {
      v9 = *a2;
    }

    v10 = (v9 | (v7 << (8 * v5))) + 2;
    v6 = v9 + 2;
    if (v5 < 4)
    {
      v6 = v10;
    }
  }

LABEL_15:
  v11 = v6 == 1;
  (*(*(*(a3 + 16) - 8) + 16))(a1, a2);
  *(a1 + v5) = v11;
  *((v5 + 8 + a1) & 0xFFFFFFFFFFFFFFF8) = *(&a2[v5 + 8] & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

unsigned __int16 *assignWithCopy for DropCoordinator(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (a1 != a2)
  {
    v7 = *(v6 + 64);
    (*(v6 + 8))(a1, v5);
    v8 = *(a2 + v7);
    v9 = v8 - 2;
    if (v8 >= 2)
    {
      if (v7 <= 3)
      {
        v10 = v7;
      }

      else
      {
        v10 = 4;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v11 = *a2;
        }

        else if (v10 == 3)
        {
          v11 = *a2 | (*(a2 + 2) << 16);
        }

        else
        {
          v11 = *a2;
        }

LABEL_14:
        v12 = (v11 | (v9 << (8 * v7))) + 2;
        v8 = v11 + 2;
        if (v7 < 4)
        {
          v8 = v12;
        }

        goto LABEL_16;
      }

      if (v10)
      {
        v11 = *a2;
        goto LABEL_14;
      }
    }

LABEL_16:
    v13 = v8 == 1;
    (*(v6 + 16))(a1, a2, v5);
    *(a1 + v7) = v13;
  }

  *((a1 + *(v6 + 64) + 8) & 0xFFFFFFFFFFFFFFF8) = *((a2 + *(v6 + 64) + 8) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t initializeWithTake for DropCoordinator(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *(*(*(a3 + 16) - 8) + 64);
  v6 = a2[v5];
  v7 = v6 - 2;
  if (v6 >= 2)
  {
    if (v5 <= 3)
    {
      v8 = *(*(*(a3 + 16) - 8) + 64);
    }

    else
    {
      v8 = 4;
    }

    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_15;
      }

      v9 = *a2;
    }

    else if (v8 == 2)
    {
      v9 = *a2;
    }

    else if (v8 == 3)
    {
      v9 = *a2 | (a2[2] << 16);
    }

    else
    {
      v9 = *a2;
    }

    v10 = (v9 | (v7 << (8 * v5))) + 2;
    v6 = v9 + 2;
    if (v5 < 4)
    {
      v6 = v10;
    }
  }

LABEL_15:
  v11 = v6 == 1;
  (*(*(*(a3 + 16) - 8) + 32))(a1, a2);
  *(a1 + v5) = v11;
  *((v5 + 8 + a1) & 0xFFFFFFFFFFFFFFF8) = *(&a2[v5 + 8] & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

unsigned __int16 *assignWithTake for DropCoordinator(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (a1 != a2)
  {
    v7 = *(v6 + 64);
    (*(v6 + 8))(a1, v5);
    v8 = *(a2 + v7);
    v9 = v8 - 2;
    if (v8 >= 2)
    {
      if (v7 <= 3)
      {
        v10 = v7;
      }

      else
      {
        v10 = 4;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v11 = *a2;
        }

        else if (v10 == 3)
        {
          v11 = *a2 | (*(a2 + 2) << 16);
        }

        else
        {
          v11 = *a2;
        }

LABEL_14:
        v12 = (v11 | (v9 << (8 * v7))) + 2;
        v8 = v11 + 2;
        if (v7 < 4)
        {
          v8 = v12;
        }

        goto LABEL_16;
      }

      if (v10)
      {
        v11 = *a2;
        goto LABEL_14;
      }
    }

LABEL_16:
    v13 = v8 == 1;
    (*(v6 + 32))(a1, a2, v5);
    *(a1 + v7) = v13;
  }

  *((a1 + *(v6 + 64) + 8) & 0xFFFFFFFFFFFFFFF8) = *((a2 + *(v6 + 64) + 8) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for DropCoordinator(_DWORD *a1, int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  v6 = (v3 & 0xFFFFFFFFFFFFFFF8) + 16;
  v7 = v6 & 0xFFFFFFF8;
  v8 = a2 - 2147483646;
  if ((v6 & 0xFFFFFFF8) != 0)
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
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  if (v10 == 4)
  {
    v11 = *(a1 + v6);
    if (!v11)
    {
      goto LABEL_3;
    }
  }

  else if (v10 == 2)
  {
    v11 = *(a1 + v6);
    if (!v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = *(a1 + v6);
    if (!v11)
    {
LABEL_3:
      v4 = *((a1 + v3 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v4 >= 0xFFFFFFFF)
      {
        LODWORD(v4) = -1;
      }

      return (v4 + 1);
    }
  }

  v12 = v11 - 1;
  if (v7)
  {
    v12 = 0;
    LODWORD(v7) = *a1;
  }

  return (v7 | v12) ^ 0x80000000;
}

int *storeEnumTagSinglePayload for DropCoordinator(int *result, int a2, int a3, uint64_t a4)
{
  v4 = *(*(*(a4 + 16) - 8) + 64);
  v5 = (v4 & 0xFFFFFFFFFFFFFFF8) + 16;
  if (a3 < 0)
  {
    v7 = a3 - 2147483646;
    if ((v4 & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v7 = 2;
    }

    if (v7 >= 0x10000)
    {
      v8 = 4;
    }

    else
    {
      v8 = 2;
    }

    if (v7 < 0x100)
    {
      v6 = 1;
    }

    else
    {
      v6 = v8;
    }

    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_16:
    v9 = a2 & 0x7FFFFFFF;
    if ((v4 & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 1;
    }

    if ((v4 & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v11 = result;
      bzero(result, v5);
      result = v11;
      *v11 = v9;
    }

    if (v6 > 1)
    {
      if (v6 == 2)
      {
        *(result + v5) = v10;
      }

      else
      {
        *(result + v5) = v10;
      }
    }

    else if (v6)
    {
      *(result + v5) = v10;
    }

    return result;
  }

  v6 = 0;
  if (a2 < 0)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (v6 <= 1)
  {
    if (v6)
    {
      *(result + v5) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_27;
    }

LABEL_26:
    if (!a2)
    {
      return result;
    }

    goto LABEL_27;
  }

  if (v6 == 2)
  {
    *(result + v5) = 0;
    goto LABEL_26;
  }

  *(result + v5) = 0;
  if (a2)
  {
LABEL_27:
    *((result + v4 + 8) & 0xFFFFFFFFFFFFFFF8) = (a2 - 1);
  }

  return result;
}

uint64_t EnvironmentValues.tabSidebarAccessoryViewConfiguration.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TabSidebarAccessoryViewConfiguration.Key>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TabSidebarAccessoryViewConfiguration.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<TabSidebarAccessoryViewConfiguration.Key>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TabSidebarAccessoryViewConfiguration.Key>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TabSidebarAccessoryViewConfiguration.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<TabSidebarAccessoryViewConfiguration.Key>);
    PropertyList.subscript.getter();
  }

  return v2;
}

double key path getter for EnvironmentValues.tabSidebarAccessoryViewConfiguration : EnvironmentValues@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TabSidebarAccessoryViewConfiguration.Key>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TabSidebarAccessoryViewConfiguration.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<TabSidebarAccessoryViewConfiguration.Key>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TabSidebarAccessoryViewConfiguration.Key>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TabSidebarAccessoryViewConfiguration.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<TabSidebarAccessoryViewConfiguration.Key>);
    PropertyList.subscript.getter();
  }

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t key path setter for EnvironmentValues.tabSidebarAccessoryViewConfiguration : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TabSidebarAccessoryViewConfiguration.Key>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TabSidebarAccessoryViewConfiguration.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<TabSidebarAccessoryViewConfiguration.Key>);

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t closure #1 in View.tabViewSidebarHeader<A>(content:)(uint64_t *a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  v5 = AnyView.init<A>(_:)();

  *a1 = v5;
  return result;
}

uint64_t View.tabViewSidebarHeader<A>(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v22[2] = a6;
  v22[0] = a5;
  v22[1] = a7;
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v22 - v15;
  v17(v14);
  swift_getKeyPath();
  (*(v10 + 16))(v12, v16, a3);
  v18 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a2;
  *(v19 + 3) = a3;
  v20 = v22[0];
  *(v19 + 4) = a4;
  *(v19 + 5) = v20;
  (*(v10 + 32))(&v19[v18], v12, a3);
  View.transformEnvironment<A>(_:transform:)();

  return (*(v10 + 8))(v16, a3);
}

uint64_t closure #1 in View.tabViewSidebarFooter<A>(content:)(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  v5 = AnyView.init<A>(_:)();

  *(a1 + 8) = v5;
  return result;
}

uint64_t View.tabViewSidebarBottomBar<A>(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = 1;
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = a6;
  v11[6] = a1;
  v11[7] = a2;
  type metadata accessor for ModifiedContent();
  v11[9] = a6;
  v11[10] = MEMORY[0x1E6980508];
  swift_getWitnessTable();
  type metadata accessor for ToolbarItem();
  v9 = type metadata accessor for TupleToolbarContent();
  return View.contentToolbar<A>(for:content:)(&v12, partial apply for closure #1 in View.tabViewSidebarBottomBar<A>(content:), v11, a3, v9, a5);
}

uint64_t closure #1 in View.tabViewSidebarBottomBar<A>(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v24 = a5;
  v25 = a2;
  v23 = a1;
  v26 = a7;
  v10 = type metadata accessor for ModifiedContent();
  v28 = a6;
  v29 = MEMORY[0x1E6980508];
  swift_getWitnessTable();
  v11 = type metadata accessor for ToolbarItem();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v23 - v16;
  if (one-time initialization token for bottomBar != -1)
  {
    swift_once();
  }

  v18 = outlined init with copy of ToolbarItemPlacement(&static ToolbarItemPlacement.bottomBar, v27);
  MEMORY[0x1EEE9AC00](v18);
  *(&v23 - 6) = a3;
  *(&v23 - 5) = a4;
  v19 = v23;
  *(&v23 - 4) = v24;
  *(&v23 - 3) = a6;
  v20 = v25;
  *(&v23 - 2) = v19;
  *(&v23 - 1) = v20;
  ToolbarItem<>.init(placement:content:)(v27, partial apply for closure #1 in closure #1 in View.tabViewSidebarBottomBar<A>(content:), v10, v14);
  static ToolbarContentBuilder.buildExpression<A>(_:)(v14, v11, &protocol witness table for ToolbarItem<A, B>);
  v21 = *(v12 + 8);
  v21(v14, v11);
  static ToolbarContentBuilder.buildBlock<A>(_:)(v17, v11, &protocol witness table for ToolbarItem<A, B>);
  return v21(v17, v11);
}

uint64_t closure #1 in closure #1 in View.tabViewSidebarBottomBar<A>(content:)@<X0>(void (*a1)(double)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v21[1] = a4;
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ModifiedContent();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v21 - v16;
  a1(v15);
  View._defaultContext()();
  (*(v7 + 8))(v9, a2);
  v21[2] = a3;
  v21[3] = MEMORY[0x1E6980508];
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v13, v10, WitnessTable);
  v19 = *(v11 + 8);
  v19(v13, v10);
  static ViewBuilder.buildExpression<A>(_:)(v17, v10, WitnessTable);
  return (v19)(v17, v10);
}

uint64_t View.tabViewSidebarVisibility(_:)()
{
  swift_getKeyPath();

  View.environment<A>(_:_:)();
}

uint64_t EnvironmentValues.tabViewSidebarVisibility.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_tabViewSidebarVisibility>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_tabViewSidebarVisibility> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_tabViewSidebarVisibility>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_tabViewSidebarVisibility>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_tabViewSidebarVisibility> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_tabViewSidebarVisibility>);
    PropertyList.subscript.getter();
  }

  return v2;
}

double key path getter for EnvironmentValues.tabViewSidebarVisibility : EnvironmentValues@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_tabViewSidebarVisibility>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_tabViewSidebarVisibility> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_tabViewSidebarVisibility>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_tabViewSidebarVisibility>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_tabViewSidebarVisibility> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_tabViewSidebarVisibility>);
    PropertyList.subscript.getter();
  }

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t key path setter for EnvironmentValues.tabViewSidebarVisibility : EnvironmentValues(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_tabViewSidebarVisibility>);

  outlined copy of Binding<Int>?(v3, v4);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_tabViewSidebarVisibility> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_tabViewSidebarVisibility>);
  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<TabSidebarAccessoryViewConfiguration> and conformance _EnvironmentKeyTransformModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<TabSidebarAccessoryViewConfiguration> and conformance _EnvironmentKeyTransformModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<TabSidebarAccessoryViewConfiguration> and conformance _EnvironmentKeyTransformModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyTransformModifier<TabSidebarAccessoryViewConfiguration>(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<TabSidebarAccessoryViewConfiguration>, &type metadata for TabSidebarAccessoryViewConfiguration, MEMORY[0x1E6980B20]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<TabSidebarAccessoryViewConfiguration> and conformance _EnvironmentKeyTransformModifier<A>);
  }

  return result;
}

void type metadata accessor for _EnvironmentKeyWritingModifier<Binding<Visibility>?>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Binding<Visibility>?>)
  {
    type metadata accessor for Binding<Visibility>?();
    v0 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Binding<Visibility>?>);
    }
  }
}

void type metadata accessor for Binding<Visibility>?()
{
  if (!lazy cache variable for type metadata for Binding<Visibility>?)
  {
    type metadata accessor for _EnvironmentKeyTransformModifier<TabSidebarAccessoryViewConfiguration>(255, &lazy cache variable for type metadata for Binding<Visibility>, MEMORY[0x1E697DB50], MEMORY[0x1E6981948]);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Binding<Visibility>?);
    }
  }
}

void type metadata accessor for _EnvironmentKeyTransformModifier<TabSidebarAccessoryViewConfiguration>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Binding<Visibility>?> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Binding<Visibility>?> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Binding<Visibility>?> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<Binding<Visibility>?>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Binding<Visibility>?> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for TabSidebarAccessoryViewConfiguration(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  return a1;
}

void *assignWithCopy for TabSidebarAccessoryViewConfiguration(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  return a1;
}

uint64_t assignWithTake for TabSidebarAccessoryViewConfiguration(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t MapKitPlatformItem.prioritizeImage.getter()
{
  v1 = v0[15];
  v10[12] = v0[14];
  v10[13] = v1;
  v11 = v0[16];
  v2 = v0[11];
  v10[8] = v0[10];
  v10[9] = v2;
  v3 = v0[13];
  v10[10] = v0[12];
  v10[11] = v3;
  v4 = v0[7];
  v10[4] = v0[6];
  v10[5] = v4;
  v5 = v0[9];
  v10[6] = v0[8];
  v10[7] = v5;
  v6 = v0[3];
  v10[0] = v0[2];
  v10[1] = v6;
  v7 = v0[5];
  v10[2] = v0[4];
  v10[3] = v7;
  v8 = _s7SwiftUI12PlatformItemV14PrimaryContentVSgWOg(v10) == 1;
  return (v8 | v11) & 1;
}

UIImage_optional __swiftcall MapKitPlatformItem.makeUIImage()()
{
  Platform = PlatformItem.coreMakePlatformImage()();
  if (Platform)
  {
    objc_opt_self();
    Platform = swift_dynamicCastObjCClassUnconditional();
  }

  result.value.super.isa = Platform;
  result.is_nil = v1;
  return result;
}

uint64_t MapKitPlatformItemReader.init(content:source:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;

  static Alignment.center.getter();
  type metadata accessor for MapKitPlatformItemReader();
  ZStack.init(alignment:content:)();
}

uint64_t closure #1 in MapKitPlatformItemReader.init(content:source:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - v13;
  v15(v12);
  static ViewBuilder.buildExpression<A>(_:)(v10, a4, a6);
  v16 = *(v8 + 8);
  v16(v10, a4);
  static ViewBuilder.buildExpression<A>(_:)(v14, a4, a6);
  return (v16)(v14, a4);
}

uint64_t MapKitPlatformItemReader.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v30 = a2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = *(v7 + 40);
  v31 = *(v7 + 16);
  v9 = type metadata accessor for ZStack();
  v10 = *(a1 + 32);
  v11 = v9;
  v28 = v9;
  WitnessTable = swift_getWitnessTable();
  v36 = MEMORY[0x1E69806B0];
  v29 = v31;
  v37 = v31;
  v38 = v11;
  v39 = MEMORY[0x1E69806A8];
  v40 = v10;
  v41 = WitnessTable;
  v12 = type metadata accessor for PlatformItemsReader();
  v27 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v25 - v17;
  (*(v5 + 16))(&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1, v16);
  v19 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v20 = swift_allocObject();
  *&v21 = v10;
  *(&v21 + 1) = v8;
  *(v20 + 32) = v21;
  *(v20 + 16) = v31;
  (*(v5 + 32))(v20 + v19, &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v32 = v31;
  v33 = v10;
  v34 = v8;
  v35 = v25;
  PlatformItemsReader.init(for:content:source:)();
  v22 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v14, v12, v22);
  v23 = *(v27 + 8);
  v23(v14, v12);
  static ViewBuilder.buildExpression<A>(_:)(v18, v12, v22);
  return (v23)(v18, v12);
}

uint64_t closure #1 in MapKitPlatformItemReader.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19[-v11 - 8];
  v14 = *v13;
  outlined init with copy of PlatformItem(v15, v19);
  v14(v19);
  outlined destroy of MapKitPlatformItem(v19);
  static ViewBuilder.buildExpression<A>(_:)(v9, a3, a5);
  v16 = *(v7 + 8);
  v16(v9, a3);
  static ViewBuilder.buildExpression<A>(_:)(v12, a3, a5);
  return (v16)(v12, a3);
}

uint64_t partial apply for closure #1 in MapKitPlatformItemReader.body.getter(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = *(type metadata accessor for MapKitPlatformItemReader() - 8);
  v7 = v1 + ((*(v6 + 80) + 48) & ~*(v6 + 80));

  return closure #1 in MapKitPlatformItemReader.body.getter(a1, v7, v3, v4, v5);
}

uint64_t closure #2 in MapKitPlatformItemReader.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for ZStack();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v17 - v12;
  v17[0] = a2;
  v17[1] = a3;
  v17[2] = a4;
  v17[3] = a5;
  v14 = *(type metadata accessor for MapKitPlatformItemReader() + 52);
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(a1 + v14, v10, WitnessTable);
  static ViewBuilder.buildExpression<A>(_:)(v13, v10, WitnessTable);
  return (*(v11 + 8))(v13, v10);
}

uint64_t static MapKitPlatformItem.makePlatformItem<A>(inputs:source:)@<X0>(__int128 *a1@<X0>, _DWORD *a2@<X8>)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a1[3];
  v29 = a1[2];
  v30 = v3;
  v31 = a1[4];
  v4 = a1[1];
  v27 = *a1;
  v32 = *(a1 + 20);
  v28 = v4;
  type metadata accessor for _GraphValue();
  LODWORD(v15) = _GraphValue.value.getter();
  v12 = type metadata accessor for ZStack();
  Source = type metadata accessor for MapKitPlatformItem.MakeSource();
  WitnessTable = swift_getWitnessTable();
  v5 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v15, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_3, v11, Source, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v6);
  PreferenceKeys.init()();
  *&v35[0] = v15;
  type metadata accessor for GraphHost();
  MEMORY[0x18D00B7D0]();
  LOBYTE(v33[0]) = 0;
  GraphHost.intern<A>(_:for:id:)();

  _ViewInputs.withoutGeometryDependencies.getter();
  PreferencesInputs.init(hostKeys:)();
  v7 = v15;
  v8 = DWORD2(v15);

  *&v24 = v7;
  DWORD2(v24) = v8;
  MEMORY[0x18D008ED0](&v21, MEMORY[0x1E69806B0], MEMORY[0x1E69806A0]);
  _GraphValue.init(_:)();
  v33[2] = v23;
  v33[3] = v24;
  v33[4] = v25;
  v34 = v26;
  v33[0] = v21;
  v33[1] = v22;
  v17 = v23;
  v18 = v24;
  v19 = v25;
  v20 = v26;
  v15 = v21;
  v16 = v22;
  outlined init with copy of _ViewInputs(v33, v35);
  swift_getWitnessTable();
  static View.makeDebuggableView(view:inputs:)();
  v35[2] = v17;
  v35[3] = v18;
  v35[4] = v19;
  v36 = v20;
  v35[0] = v15;
  v35[1] = v16;
  outlined destroy of _ViewInputs(v35);
  v15 = v10;
  LODWORD(v7) = static UnaryPlatformItemsStrategy.makeContent(from:)();

  static PlatformItem.empty.getter();
  LODWORD(v15) = v7;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type MapKitPlatformItem.Child and conformance MapKitPlatformItem.Child();
  LODWORD(v7) = Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of MapKitPlatformItem.Child(&v15);
  *a2 = v7;
  v17 = v23;
  v18 = v24;
  v19 = v25;
  v20 = v26;
  v15 = v21;
  v16 = v22;
  return outlined destroy of _ViewInputs(&v15);
}

uint64_t closure #1 in MapKitPlatformItem.MakeSource.value.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  Value = AGGraphGetValue();
  (*(v5 + 16))(v7, Value, a2);
  static ViewBuilder.buildExpression<A>(_:)(v7, a2, a3);
  v12 = *(v5 + 8);
  v12(v7, a2);
  static ViewBuilder.buildExpression<A>(_:)(v10, a2, a3);
  return (v12)(v10, a2);
}

uint64_t MapKitPlatformItem.Child.updateValue()()
{
  v10 = *MEMORY[0x1E69E9840];
  if (*v0 == *MEMORY[0x1E698D3F8])
  {
    bzero(__src, 0x272uLL);
    static PlatformItem.empty.getter();
    if (__src[0])
    {
      outlined destroy of (PlatformItem, Bool)?(__src);
    }

    v1 = 1;
  }

  else
  {
    Value = AGGraphGetValue();
    v4 = v3;
    outlined init with copy of PlatformItem(Value, __src);
    BYTE1(__src[78]) = v4 & 1;
    memcpy(__dst, __src, 0x272uLL);
    v1 = __dst[625] ^ 1;
  }

  memcpy(__src, __dst, 0x271uLL);
  v5 = 0;
  if (HIDWORD(__src[3]) != -1)
  {
    v6 = *(v0 + 36);
    if (v6 != -1 && HIDWORD(__src[3]) == v6)
    {
      v5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI12ViewIdentityV_Tt1g5(__src[0], *(v0 + 8));
    }
  }

  if (!AGGraphGetOutputValue() || ((v1 | v5) & 1) == 0)
  {
    outlined init with copy of PlatformItem(__src, __dst);
    AGGraphSetOutputValue();
    outlined destroy of MapKitPlatformItem(__dst);
  }

  return outlined assign with take of PlatformItem(__src, v0 + 8);
}

unint64_t lazy protocol witness table accessor for type MapKitPlatformItem.Child and conformance MapKitPlatformItem.Child()
{
  result = lazy protocol witness table cache variable for type MapKitPlatformItem.Child and conformance MapKitPlatformItem.Child;
  if (!lazy protocol witness table cache variable for type MapKitPlatformItem.Child and conformance MapKitPlatformItem.Child)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MapKitPlatformItem.Child and conformance MapKitPlatformItem.Child);
  }

  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI12ViewIdentityV_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t AssistiveAccess.body.getter@<X0>(uint64_t a1@<X8>)
{
  specialized ResolvedUISceneAdaptor.init(id:kind:content:)(0x7669747369737341, 0xEF73736563634165, 0, 0, 1, &v15);
  v20 = *&v16[24];
  v19 = *&v16[8];
  v17 = v15;
  v18 = v16[0];
  v8 = v15;
  v9 = *v16;
  v10 = *&v16[16];
  v2 = type metadata accessor for ResolvedUISceneAdaptor();
  swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(&v8, v2, &v11);
  outlined destroy of SceneID(&v17);
  outlined destroy of UISceneAdaptorConfiguration.Kind(&v19);
  outlined destroy of AnyView(&v20);
  v3 = v11;
  v4 = v12;
  v5 = v13;
  v6 = v14;
  v8 = v11;
  LOBYTE(v9) = v12;
  *(&v9 + 1) = v13;
  v10 = v14;
  static SceneBuilder.buildBlock<A>(_:)(&v8, v2, a1);
  outlined consume of SceneID(v3, *(&v3 + 1), v4);
  outlined consume of UISceneAdaptorConfiguration.Kind(v5, v6);
}

uint64_t initializeBufferWithCopyOfBuffer for ToolbarStorage.GroupItem(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) == 0)
  {
    v7 = a2[1];
    *a1 = *a2;
    *(a1 + 8) = v7;
    v8 = a2[3];
    *(a1 + 16) = a2[2];
    *(a1 + 24) = v8;
    v9 = a2[7];

    if (v9)
    {
      v10 = a2[8];
      *(a1 + 56) = v9;
      *(a1 + 64) = v10;
      (**(v9 - 8))(a1 + 32, (a2 + 4), v9);
      *(a1 + 72) = a2[9];
    }

    else
    {
      v12 = *(a2 + 3);
      *(a1 + 32) = *(a2 + 2);
      *(a1 + 48) = v12;
      *(a1 + 64) = *(a2 + 4);
    }

    if (*(a2 + 120) == 1)
    {
      v13 = *(a2 + 13);
      *(a1 + 104) = v13;
      (**(v13 - 8))(a1 + 80, (a2 + 10));
      *(a1 + 120) = 1;
    }

    else
    {
      v14 = *(a2 + 6);
      *(a1 + 80) = *(a2 + 5);
      *(a1 + 96) = v14;
      *(a1 + 105) = *(a2 + 105);
    }

    *(a1 + 121) = *(a2 + 121);
    *(a1 + 128) = a2[16];
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 137) = *(a2 + 137);
    v15 = a2[18];
    v16 = a2[19];
    v17 = *(a3 + 60);
    v18 = a2 + v17;
    v19 = (a1 + v17);
    *(a1 + 144) = v15;
    *(a1 + 152) = v16;
    v20 = type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent(0);
    v21 = *(v20 - 8);
    v22 = *(v21 + 48);

    if (v22(v18, 1, v20))
    {
      _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for ToolbarStorage.GroupItem.CollapsedContent?, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent, MEMORY[0x1E69E6720]);
      memcpy(v19, v18, *(*(v23 - 8) + 64));
      return a1;
    }

    type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent.Value(0);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v40 = *(v18 + 24);
      *(v19 + 3) = v40;
      (**(v40 - 8))(v19, v18);
      v41 = *(v18 + 48);
      v19[5] = *(v18 + 40);
      v19[6] = v41;
      v19[7] = *(v18 + 56);
      v19[8] = *(v18 + 64);
      *(v19 + 9) = *(v18 + 72);
      v42 = *(v18 + 88);
      v19[11] = v42;

      v43 = v42;
LABEL_68:
      swift_storeEnumTagMultiPayload();
      v115 = *(v20 + 20);
      v116 = *(v18 + v115);
      *(v19 + v115) = v116;
      v117 = *(v21 + 56);
      v118 = v116;
      v117(v19, 0, 1, v20);
      return a1;
    }

    v133 = v20;
    v24 = *v18;
    v25 = *(v18 + 8);
    *v19 = *v18;
    v19[1] = v25;
    v26 = *(v18 + 24);
    v19[2] = *(v18 + 16);
    v19[3] = v26;
    *(v19 + 32) = *(v18 + 32);
    v27 = *(v18 + 48);
    v19[5] = *(v18 + 40);
    v19[6] = v27;
    *(v19 + 56) = *(v18 + 56);
    v28 = *(v18 + 192);
    v29 = v24;
    v30 = v25;

    if (v28 >> 1 == 4294967294)
    {
      v31 = *(v18 + 208);
      *(v19 + 12) = *(v18 + 192);
      *(v19 + 13) = v31;
      *(v19 + 14) = *(v18 + 224);
      *(v19 + 235) = *(v18 + 235);
      v32 = *(v18 + 144);
      *(v19 + 8) = *(v18 + 128);
      *(v19 + 9) = v32;
      v33 = *(v18 + 176);
      *(v19 + 10) = *(v18 + 160);
      *(v19 + 11) = v33;
      v34 = *(v18 + 80);
      *(v19 + 4) = *(v18 + 64);
      *(v19 + 5) = v34;
      v35 = *(v18 + 112);
      *(v19 + 6) = *(v18 + 96);
      *(v19 + 7) = v35;
      v36 = *(v18 + 264);
      if (v36)
      {
LABEL_14:
        v19[32] = *(v18 + 256);
        v19[33] = v36;
        v37 = *(v18 + 272);

        if (v37 >= 2)
        {
          v38 = v37;
        }

        v19[34] = v37;
        *(v19 + 70) = *(v18 + 280);
        *(v19 + 284) = *(v18 + 284);
        *(v19 + 285) = *(v18 + 285);
        v39 = *(v18 + 296);
        v19[36] = *(v18 + 288);
        v19[37] = v39;

LABEL_26:
        v54 = *(v18 + 336);
        v132 = v21;
        if (v54 >> 2 == 0xFFFFFFFF)
        {
          v55 = *(v18 + 384);
          *(v19 + 23) = *(v18 + 368);
          *(v19 + 24) = v55;
          v19[50] = *(v18 + 400);
          v56 = *(v18 + 320);
          *(v19 + 19) = *(v18 + 304);
          *(v19 + 20) = v56;
          v57 = *(v18 + 352);
          *(v19 + 21) = *(v18 + 336);
          *(v19 + 22) = v57;
        }

        else
        {
          v58 = *(v18 + 304);
          v59 = *(v18 + 312);
          v60 = *(v18 + 320);
          v62 = *(v18 + 344);
          v61 = *(v18 + 352);
          v63 = *(v18 + 360);
          v120 = *(v18 + 328);
          v121 = *(v18 + 368);
          v123 = *(v18 + 376);
          v126 = *(v18 + 384);
          v128 = *(v18 + 392);
          __dsta = *(v18 + 400);
          outlined copy of PlatformItemList.Item.SystemItem(v58, v59, v60, v120, v54, v62, v61, v63, v121, v123, v126, v128, __dsta);
          v19[38] = v58;
          v19[39] = v59;
          v19[40] = v60;
          v19[41] = v120;
          v19[42] = v54;
          v19[43] = v62;
          v19[44] = v61;
          v19[45] = v63;
          v19[46] = v121;
          v19[47] = v123;
          v19[48] = v126;
          v19[49] = v128;
          v19[50] = __dsta;
        }

        v64 = *(v18 + 416);
        if (v64 == 1)
        {
          v65 = *(v18 + 456);
          *(v19 + 55) = *(v18 + 440);
          *(v19 + 57) = v65;
          *(v19 + 472) = *(v18 + 472);
          v66 = *(v18 + 424);
          *(v19 + 51) = *(v18 + 408);
          *(v19 + 53) = v66;
          goto LABEL_39;
        }

        *(v19 + 102) = *(v18 + 408);
        *(v19 + 412) = *(v18 + 412);
        if (v64)
        {
          v67 = *(v18 + 424);
          v19[52] = v64;
          v19[53] = v67;

          v68 = *(v18 + 432);
          if (v68)
          {
            goto LABEL_33;
          }
        }

        else
        {
          *(v19 + 26) = *(v18 + 416);
          v68 = *(v18 + 432);
          if (v68)
          {
LABEL_33:
            v69 = *(v18 + 440);
            v19[54] = v68;
            v19[55] = v69;

            v70 = *(v18 + 448);
            if (v70)
            {
LABEL_34:
              v71 = *(v18 + 456);
              v19[56] = v70;
              v19[57] = v71;

LABEL_38:
              v19[58] = *(v18 + 464);
              *(v19 + 472) = *(v18 + 472);
LABEL_39:
              v72 = *(v18 + 488);
              v19[60] = *(v18 + 480);
              v19[61] = v72;
              v19[62] = *(v18 + 496);
              *(v19 + 504) = *(v18 + 504);
              v73 = *(v18 + 512);

              if (v73)
              {
                v74 = *(v18 + 520);
                v19[64] = v73;
                v19[65] = v74;
              }

              else
              {
                *(v19 + 32) = *(v18 + 512);
              }

              *(v19 + 528) = *(v18 + 528);
              if (!*(v18 + 816))
              {
                memcpy(v19 + 67, (v18 + 536), 0x130uLL);
                goto LABEL_54;
              }

              v19[67] = *(v18 + 536);
              v19[68] = *(v18 + 544);
              *(v19 + 552) = *(v18 + 552);
              v19[70] = *(v18 + 560);
              *(v19 + 568) = *(v18 + 568);
              *(v19 + 36) = *(v18 + 576);
              *(v19 + 592) = *(v18 + 592);
              v75 = v19 + 75;
              v76 = (v18 + 600);
              v77 = *(v18 + 624);

              if (v77)
              {
                if (v77 == 1)
                {
                  v78 = *(v18 + 616);
                  *v75 = *v76;
                  *(v19 + 77) = v78;
                  *(v19 + 79) = *(v18 + 632);
LABEL_50:
                  v19[81] = *(v18 + 648);
                  *(v19 + 656) = *(v18 + 656);
                  v80 = v19 + 83;
                  v81 = (v18 + 664);
                  v82 = *(v18 + 776);
                  if (v82 == 1)
                  {
                    v83 = *(v18 + 776);
                    *(v19 + 95) = *(v18 + 760);
                    *(v19 + 97) = v83;
                    *(v19 + 99) = *(v18 + 792);
                    *(v19 + 808) = *(v18 + 808);
                    v84 = *(v18 + 712);
                    *(v19 + 87) = *(v18 + 696);
                    *(v19 + 89) = v84;
                    v85 = *(v18 + 744);
                    *(v19 + 91) = *(v18 + 728);
                    *(v19 + 93) = v85;
                    v86 = *(v18 + 680);
                    *v80 = *v81;
                    *(v19 + 85) = v86;
                  }

                  else
                  {
                    *v80 = *v81;
                    *(v19 + 672) = *(v18 + 672);
                    v19[85] = *(v18 + 680);
                    *(v19 + 688) = *(v18 + 688);
                    *(v19 + 689) = *(v18 + 689);
                    *(v19 + 691) = *(v18 + 691);
                    *(v19 + 692) = *(v18 + 692);
                    v19[87] = *(v18 + 696);
                    v87 = *(v18 + 720);
                    *(v19 + 44) = *(v18 + 704);
                    *(v19 + 45) = v87;
                    v19[92] = *(v18 + 736);
                    *(v19 + 372) = *(v18 + 744);
                    *(v19 + 47) = *(v18 + 752);
                    *(v19 + 768) = *(v18 + 768);
                    v19[97] = v82;
                    *(v19 + 49) = *(v18 + 784);
                    v19[100] = *(v18 + 800);
                    *(v19 + 808) = *(v18 + 808);
                  }

                  v19[102] = *(v18 + 816);
                  v19[103] = *(v18 + 824);
                  v19[104] = *(v18 + 832);

LABEL_54:
                  v88 = v19 + 105;
                  v89 = (v18 + 840);
                  v90 = *(v18 + 864);
                  if (v90)
                  {
                    if (v90 == 1)
                    {
                      v91 = *(v18 + 856);
                      *v88 = *v89;
                      *(v19 + 107) = v91;
                      *(v19 + 109) = *(v18 + 872);
                      v19[111] = *(v18 + 888);
LABEL_61:
                      v95 = *(v18 + 896);
                      v19[112] = v95;
                      v19[113] = *(v18 + 904);
                      v19[114] = *(v18 + 912);
                      v19[115] = *(v18 + 920);
                      v19[116] = *(v18 + 928);
                      v19[117] = *(v18 + 936);
                      v19[118] = *(v18 + 944);
                      *(v19 + 476) = *(v18 + 952);
                      *(v19 + 954) = *(v18 + 954);
                      v96 = type metadata accessor for PlatformItemList.Item();
                      v97 = *(v96 + 112);
                      v129 = v96;
                      __dst = v19 + v97;
                      v98 = (v18 + v97);
                      v99 = type metadata accessor for CommandOperation();
                      v122 = *(v99 - 8);
                      v124 = *(v122 + 48);
                      v100 = v95;

                      if (v124(v98, 1, v99))
                      {
                        _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
                        memcpy(__dst, v98, *(*(v101 - 8) + 64));
                        v20 = v133;
                        v21 = v132;
                      }

                      else
                      {
                        *__dst = *v98;
                        v102 = *(v99 + 20);
                        v103 = &__dst[v102];
                        v104 = &v98[v102];
                        v127 = v98;
                        v105 = *&v98[v102];
                        v106 = *(v104 + 1);
                        v107 = v99;
                        v108 = v104[16];
                        outlined copy of Text.Storage(v105, v106, v108);
                        *v103 = v105;
                        *(v103 + 1) = v106;
                        v103[16] = v108;
                        *(v103 + 3) = *(v104 + 3);
                        v109 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                        v110 = type metadata accessor for UUID();
                        v125 = *(*(v110 - 8) + 16);

                        v125(&v103[v109], &v104[v109], v110);
                        v111 = *(v107 + 24);
                        v112 = &__dst[v111];
                        v113 = &v127[v111];
                        if (*v113)
                        {
                          v114 = v113[1];
                          *v112 = *v113;
                          v112[1] = v114;
                        }

                        else
                        {
                          *v112 = *v113;
                        }

                        v20 = v133;
                        v21 = v132;
                        (*(v122 + 56))(__dst, 0, 1, v107);
                      }

                      *(v19 + v129[29]) = *(v18 + v129[29]);
                      *(v19 + v129[30]) = *(v18 + v129[30]);
                      *(v19 + v129[31]) = *(v18 + v129[31]);
                      *(v19 + v129[32]) = *(v18 + v129[32]);
                      *(v19 + v129[33]) = *(v18 + v129[33]);
                      *(v19 + v129[34]) = *(v18 + v129[34]);

                      goto LABEL_68;
                    }

                    v19[108] = v90;
                    v19[109] = *(v18 + 872);
                    (**(v90 - 8))(v88, v89);
                    v93 = *(v18 + 880);
                    if (!v93)
                    {
LABEL_60:
                      *(v19 + 55) = *(v18 + 880);
                      goto LABEL_61;
                    }
                  }

                  else
                  {
                    v92 = *(v18 + 856);
                    *v88 = *v89;
                    *(v19 + 107) = v92;
                    v19[109] = *(v18 + 872);
                    v93 = *(v18 + 880);
                    if (!v93)
                    {
                      goto LABEL_60;
                    }
                  }

                  v94 = *(v18 + 888);
                  v19[110] = v93;
                  v19[111] = v94;

                  goto LABEL_61;
                }

                v19[78] = v77;
                v19[79] = *(v18 + 632);
                (**(v77 - 8))((v19 + 75), v18 + 600, v77);
              }

              else
              {
                v79 = *(v18 + 616);
                *v75 = *v76;
                *(v19 + 77) = v79;
                v19[79] = *(v18 + 632);
              }

              v19[80] = *(v18 + 640);

              goto LABEL_50;
            }

LABEL_37:
            *(v19 + 28) = *(v18 + 448);
            goto LABEL_38;
          }
        }

        *(v19 + 27) = *(v18 + 432);
        v70 = *(v18 + 448);
        if (v70)
        {
          goto LABEL_34;
        }

        goto LABEL_37;
      }
    }

    else
    {
      v44 = *(v18 + 72);
      if (v44 == 255)
      {
        v19[8] = *(v18 + 64);
        *(v19 + 72) = *(v18 + 72);
      }

      else
      {
        v45 = *(v18 + 64);
        outlined copy of GraphicsImage.Contents(v45, *(v18 + 72));
        v19[8] = v45;
        *(v19 + 72) = v44;
        v28 = *(v18 + 192);
      }

      v19[10] = *(v18 + 80);
      *(v19 + 11) = *(v18 + 88);
      *(v19 + 104) = *(v18 + 104);
      *(v19 + 108) = *(v18 + 108);
      *(v19 + 121) = *(v18 + 121);
      *(v19 + 17) = *(v18 + 136);
      *(v19 + 19) = *(v18 + 152);
      *(v19 + 84) = *(v18 + 168);
      *(v19 + 170) = *(v18 + 170);
      *(v19 + 171) = *(v18 + 171);
      if (v28 >> 1 == 0xFFFFFFFF)
      {
        v46 = *(v18 + 192);
        *(v19 + 11) = *(v18 + 176);
        *(v19 + 12) = v46;
      }

      else
      {
        v47 = *(v18 + 176);
        v48 = *(v18 + 184);
        v49 = *(v18 + 200);
        outlined copy of AccessibilityImageLabel(v47, v48, v28);
        v19[22] = v47;
        v19[23] = v48;
        v19[24] = v28;
        v19[25] = v49;
      }

      v50 = *(v18 + 216);
      v19[26] = *(v18 + 208);
      v19[27] = v50;
      *(v19 + 112) = *(v18 + 224);
      *(v19 + 57) = *(v18 + 228);
      *(v19 + 232) = *(v18 + 232);
      v51 = *(v18 + 240);
      v19[30] = v51;
      *(v19 + 124) = *(v18 + 248);
      *(v19 + 250) = *(v18 + 250);
      swift_unknownObjectRetain();

      v52 = v51;
      v36 = *(v18 + 264);
      if (v36)
      {
        goto LABEL_14;
      }
    }

    v53 = *(v18 + 272);
    *(v19 + 16) = *(v18 + 256);
    *(v19 + 17) = v53;
    *(v19 + 18) = *(v18 + 288);
    goto LABEL_26;
  }

  v11 = *a2;
  *a1 = *a2;
  a1 = v11 + ((v5 + 16) & ~v5);

  return a1;
}
uint64_t _AlignmentLayout.spacing(in:child:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  v5 = *(a2 + 4);
  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v6 = static Semantics_v3.semantic;
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
    if (v5 == *MEMORY[0x1E698D3F8])
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

    v9 = *InputValue;
    v10 = one-time initialization token for lockAssertionsAreEnabled;

    if (v10 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_23;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (_MovableLockIsOwner(static Update._lock))
    {
LABEL_23:
      (*(*v9 + 112))();
    }

    goto LABEL_32;
  }

  if (v5 == *MEMORY[0x1E698D3F8])
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v8 = &static LayoutComputer.defaultValue;
  }

  else
  {
    v8 = AGGraphGetInputValue();
  }

  v12 = *v8;
  v13 = one-time initialization token for lockAssertionsAreEnabled;

  if (v13 != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_31;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (_MovableLockIsOwner(static Update._lock))
  {
LABEL_31:
    (*(*v12 + 112))(&v17);

    KeyPath = swift_getKeyPath();
    v18 = v4;
    v19 = KeyPath;
    type metadata accessor for EnvironmentFetch<LayoutDirection>();
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v4);
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>();
    dispatch thunk of Hashable.hash(into:)();
    Hasher._finalize()();
    _s7SwiftUI16EnvironmentFetch33_BA60BF7120E939C5C25B2A488163D4ACLLVyAA15LayoutDirectionOGADyxG14AttributeGraph4RuleAAWlTm_1(&lazy protocol witness table cache variable for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>);
    v16[0] = 0;
    _s7SwiftUI16EnvironmentFetch33_BA60BF7120E939C5C25B2A488163D4ACLLVyAA15LayoutDirectionOGADyxG14AttributeGraph4RuleAAWlTm_1(&lazy protocol witness table cache variable for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>);
    v15 = *static Rule<>._cachedValue(options:owner:hashValue:bodyPtr:update:)();

    v16[0] = v15;
    AbsoluteEdge.Set.init(_:layoutDirection:)(v16, &v18);
    result = Spacing.reset(_:)(&v18);
    *a3 = v17;
    return result;
  }

LABEL_32:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type _VAlignment and conformance _VAlignment()
{
  result = lazy protocol witness table cache variable for type _VAlignment and conformance _VAlignment;
  if (!lazy protocol witness table cache variable for type _VAlignment and conformance _VAlignment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _VAlignment and conformance _VAlignment);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for _AlignmentLayout(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _AlignmentLayout and conformance _AlignmentLayout();
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for _AlignmentLayout(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 65283 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65283 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65283;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65283;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65283;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 4;
  if (v6 < 3)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

_WORD *storeEnumTagSinglePayload for _AlignmentLayout(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65283 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65283 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 16) + 1;
    *result = a2 - 253;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t StateOrBinding.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  State.init(wrappedValue:)(a1, a2, a3);
  type metadata accessor for StateOrBinding();

  return swift_storeEnumTagMultiPayload();
}

uint64_t key path setter for StateOrBinding.wrappedValue : <A>StateOrBinding<A>(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = &v7 - v2;
  (*(v4 + 16))(&v7 - v2, v1);
  v5 = type metadata accessor for StateOrBinding();
  return StateOrBinding.wrappedValue.setter(v3, v5);
}

uint64_t StateOrBinding.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v23 = a1;
  v5 = *(a2 + 16);
  v6 = type metadata accessor for Binding();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - v8;
  v10 = type metadata accessor for State();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, v3, a2, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v7 + 32))(v9, v17, v6);
    v19 = v23;
    specialized Binding.wrappedValue.setter(v23);
    (*(*(v5 - 8) + 8))(v19, v5);
    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    (*(v11 + 32))(v13, v17, v10);
    v21 = v23;
    specialized LazyState.wrappedValue.setter(v23, v10);
    (*(*(v5 - 8) + 8))(v21, v5);
    return (*(v11 + 8))(v13, v10);
  }
}

void (*StateOrBinding.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  StateOrBinding.wrappedValue.getter(a2);
  return StateOrBinding.wrappedValue.modify;
}

void StateOrBinding.wrappedValue.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v7 = *v2;
    (*(v6 + 16))((*a1)[4], v4, v5);
    StateOrBinding.wrappedValue.setter(v3, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    StateOrBinding.wrappedValue.setter((*a1)[5], *v2);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t StateOrBinding.wrappedValue.getter(uint64_t a1, void (*a2)(uint64_t), void (*a3)(uint64_t))
{
  v20 = a2;
  v21 = a3;
  v4 = v3;
  v6 = type metadata accessor for Binding();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = type metadata accessor for State();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, v4, a1, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v7 + 32))(v9, v17, v6);
    v21(v6);
    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    (*(v11 + 32))(v13, v17, v10);
    v20(v10);
    return (*(v11 + 8))(v13, v10);
  }
}

void *initializeBufferWithCopyOfBuffer for StateOrBinding(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = v7;
  v9 = v7 + 16;
  if (((v8 + 16) & ~v8) + v6 <= ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v10 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  else
  {
    v10 = ((v7 + 16) & ~v7) + v6;
  }

  v11 = v7 & 0x100000;
  if (v8 > 7 || v11 != 0 || v10 + 1 > 0x18)
  {
    v14 = *a2;
    *v3 = *a2;
    v3 = (v14 + ((v8 & 0xF8 ^ 0x1F8) & v9));
LABEL_30:

    return v3;
  }

  v15 = a2[v10];
  v16 = v15 - 2;
  if (v15 >= 2)
  {
    if (v10 <= 3)
    {
      v17 = v10;
    }

    else
    {
      v17 = 4;
    }

    if (v17 <= 1)
    {
      if (!v17)
      {
        goto LABEL_27;
      }

      v18 = *a2;
    }

    else if (v17 == 2)
    {
      v18 = *a2;
    }

    else if (v17 == 3)
    {
      v18 = *a2 | (a2[2] << 16);
    }

    else
    {
      v18 = *a2;
    }

    v19 = (v18 | (v16 << (8 * v10))) + 2;
    v15 = v18 + 2;
    if (v10 < 4)
    {
      v15 = v19;
    }
  }

LABEL_27:
  if (v15 != 1)
  {
    (*(v5 + 16))(a1);
    *((v3 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) = *(&a2[v6 + 7] & 0xFFFFFFFFFFFFFFF8);
    *(v3 + v10) = 0;
    goto LABEL_30;
  }

  v21 = *a2;
  v20 = (a2 + 15);
  *a1 = v21;
  v22 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v23 = (v20 & 0xFFFFFFFFFFFFFFF8) + 8;
  *v22 = *(v20 & 0xFFFFFFFFFFFFFFF8);
  v24 = *(v5 + 16);

  v24(v22 + 1, v23, v4);
  *(v3 + v10) = 1;
  return v3;
}

unsigned __int16 *assignWithCopy for StateOrBinding(unsigned __int16 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = *(a3 + 16);
    v6 = *(v5 - 8);
    v7 = *(v6 + 64);
    v8 = *(v6 + 80);
    if (((v8 + 16) & ~v8) + v7 <= ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
    {
      v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    }

    else
    {
      v9 = ((v8 + 16) & ~v8) + v7;
    }

    v10 = *(a1 + v9);
    v11 = v10 - 2;
    if (v10 < 2)
    {
LABEL_21:
      v14 = ~v8;
      if (v10 == 1)
      {

        (*(v6 + 8))((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & v14, v5);
      }

      else
      {
        (*(v6 + 8))(a1, v5);
      }

      v15 = a2[v9];
      v16 = v15 - 2;
      if (v15 >= 2)
      {
        if (v9 <= 3)
        {
          v17 = v9;
        }

        else
        {
          v17 = 4;
        }

        if (v17 <= 1)
        {
          if (!v17)
          {
            goto LABEL_38;
          }

          v18 = *a2;
          if (v9 < 4)
          {
LABEL_41:
            if ((v18 | (v16 << (8 * v9))) != 0xFFFFFFFF)
            {
              goto LABEL_42;
            }

LABEL_39:
            *a1 = *a2;
            v19 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
            v20 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
            *v19 = *v20;
            v21 = v19 + v8 + 8;
            v22 = v20 + v8 + 8;
            v23 = *(v6 + 16);

            v23(v21 & v14, v22 & v14, v5);
            *(a1 + v9) = 1;
            return a1;
          }
        }

        else if (v17 == 2)
        {
          v18 = *a2;
          if (v9 < 4)
          {
            goto LABEL_41;
          }
        }

        else if (v17 == 3)
        {
          v18 = *a2 | (a2[2] << 16);
          if (v9 < 4)
          {
            goto LABEL_41;
          }
        }

        else
        {
          v18 = *a2;
          if (v9 < 4)
          {
            goto LABEL_41;
          }
        }

        v15 = v18 + 2;
      }

LABEL_38:
      if (v15 != 1)
      {
LABEL_42:
        (*(v6 + 16))(a1, a2, v5);
        *((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) = *(&a2[v7 + 7] & 0xFFFFFFFFFFFFFFF8);
        *(a1 + v9) = 0;

        return a1;
      }

      goto LABEL_39;
    }

    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    if (v12 > 1)
    {
      if (v12 == 2)
      {
        v13 = *a1;
        if (v9 >= 4)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v12 == 3)
        {
          v13 = *a1 | (*(a1 + 2) << 16);
          if (v9 < 4)
          {
            goto LABEL_20;
          }

LABEL_18:
          v10 = v13 + 2;
          goto LABEL_21;
        }

        v13 = *a1;
        if (v9 >= 4)
        {
          goto LABEL_18;
        }
      }

LABEL_20:
      v10 = (v13 | (v11 << (8 * v9))) + 2;
      goto LABEL_21;
    }

    if (!v12)
    {
      goto LABEL_21;
    }

    v13 = *a1;
    if (v9 < 4)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  return a1;
}

void *initializeWithTake for StateOrBinding(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if (((v6 + 16) & ~v6) + v5 <= ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  else
  {
    v7 = ((v6 + 16) & ~v6) + v5;
  }

  v8 = a2[v7];
  v9 = v8 - 2;
  if (v8 < 2)
  {
    goto LABEL_18;
  }

  if (v7 <= 3)
  {
    v10 = v7;
  }

  else
  {
    v10 = 4;
  }

  if (v10 <= 1)
  {
    if (!v10)
    {
      goto LABEL_18;
    }

    v11 = *a2;
  }

  else if (v10 == 2)
  {
    v11 = *a2;
  }

  else if (v10 == 3)
  {
    v11 = *a2 | (a2[2] << 16);
  }

  else
  {
    v11 = *a2;
  }

  v12 = (v11 | (v9 << (8 * v7))) + 2;
  v8 = v11 + 2;
  if (v7 < 4)
  {
    v8 = v12;
  }

LABEL_18:
  if (v8 == 1)
  {
    *a1 = *a2;
    v13 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    v14 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v13 = *v14;
    (*(v4 + 32))((v13 + v6 + 8) & ~v6, (v14 + v6 + 8) & ~v6);
    v15 = 1;
  }

  else
  {
    (*(v4 + 32))(a1);
    v15 = 0;
    *((a1 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) = *(&a2[v5 + 7] & 0xFFFFFFFFFFFFFFF8);
  }

  *(a1 + v7) = v15;
  return a1;
}

unsigned __int16 *assignWithTake for StateOrBinding(unsigned __int16 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = *(a3 + 16);
    v6 = *(v5 - 8);
    v7 = *(v6 + 64);
    v8 = *(v6 + 80);
    if (((v8 + 16) & ~v8) + v7 <= ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
    {
      v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    }

    else
    {
      v9 = ((v8 + 16) & ~v8) + v7;
    }

    v10 = *(a1 + v9);
    v11 = v10 - 2;
    if (v10 < 2)
    {
LABEL_21:
      v14 = ~v8;
      if (v10 == 1)
      {

        (*(v6 + 8))((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & v14, v5);
      }

      else
      {
        (*(v6 + 8))(a1, v5);
      }

      v15 = a2[v9];
      v16 = v15 - 2;
      if (v15 >= 2)
      {
        if (v9 <= 3)
        {
          v17 = v9;
        }

        else
        {
          v17 = 4;
        }

        if (v17 <= 1)
        {
          if (!v17)
          {
            goto LABEL_38;
          }

          v18 = *a2;
          if (v9 < 4)
          {
LABEL_41:
            if ((v18 | (v16 << (8 * v9))) != 0xFFFFFFFF)
            {
              goto LABEL_42;
            }

            goto LABEL_39;
          }
        }

        else if (v17 == 2)
        {
          v18 = *a2;
          if (v9 < 4)
          {
            goto LABEL_41;
          }
        }

        else if (v17 == 3)
        {
          v18 = *a2 | (a2[2] << 16);
          if (v9 < 4)
          {
            goto LABEL_41;
          }
        }

        else
        {
          v18 = *a2;
          if (v9 < 4)
          {
            goto LABEL_41;
          }
        }

        v15 = v18 + 2;
      }

LABEL_38:
      if (v15 != 1)
      {
LABEL_42:
        (*(v6 + 32))(a1, a2, v5);
        v22 = 0;
        *((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) = *(&a2[v7 + 7] & 0xFFFFFFFFFFFFFFF8);
        goto LABEL_43;
      }

LABEL_39:
      v20 = *a2;
      v19 = (a2 + 15);
      *a1 = v20;
      v21 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      *v21 = *(v19 & 0xFFFFFFFFFFFFFFF8);
      (*(v6 + 32))((v21 + v8 + 8) & v14, ((v19 & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & v14, v5);
      v22 = 1;
LABEL_43:
      *(a1 + v9) = v22;
      return a1;
    }

    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    if (v12 > 1)
    {
      if (v12 == 2)
      {
        v13 = *a1;
        if (v9 >= 4)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v12 == 3)
        {
          v13 = *a1 | (*(a1 + 2) << 16);
          if (v9 < 4)
          {
            goto LABEL_20;
          }

LABEL_18:
          v10 = v13 + 2;
          goto LABEL_21;
        }

        v13 = *a1;
        if (v9 >= 4)
        {
          goto LABEL_18;
        }
      }

LABEL_20:
      v10 = (v13 | (v11 << (8 * v9))) + 2;
      goto LABEL_21;
    }

    if (!v12)
    {
      goto LABEL_21;
    }

    v13 = *a1;
    if (v9 < 4)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for StateOrBinding(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  v5 = ((v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v6 = ((*(v3 + 80) + 16) & ~*(v3 + 80)) + v4;
  if (v6 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_26;
  }

  v8 = v7 + 1;
  v9 = 8 * (v7 + 1);
  if ((v7 + 1) <= 3)
  {
    v12 = ((a2 + ~(-1 << v9) - 254) >> v9) + 1;
    if (HIWORD(v12))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v12 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v12 < 2)
    {
LABEL_26:
      v14 = *(a1 + v7);
      if (v14 >= 2)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_26;
  }

LABEL_15:
  v13 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v13 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return (v8 | v13) + 255;
}

void storeEnumTagSinglePayload for StateOrBinding(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 64);
  v7 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v8 = ((*(v5 + 80) + 16) & ~*(v5 + 80)) + v6;
  if (v8 <= v7)
  {
    v8 = v7;
  }

  v9 = v8 + 1;
  if (a3 < 0xFF)
  {
    v10 = 0;
  }

  else if (v9 <= 3)
  {
    v13 = ((a3 + ~(-1 << (8 * v9)) - 254) >> (8 * v9)) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
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

  if (a2 > 0xFE)
  {
    v11 = a2 - 255;
    if (v9 >= 4)
    {
      bzero(a1, v8 + 1);
      *a1 = v11;
      v12 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v12 = (v11 >> (8 * v9)) + 1;
    if (v8 != -1)
    {
      v15 = v11 & ~(-1 << (8 * v9));
      bzero(a1, v9);
      if (v9 != 3)
      {
        if (v9 == 2)
        {
          *a1 = v15;
          if (v10 > 1)
          {
LABEL_39:
            if (v10 == 2)
            {
              *&a1[v9] = v12;
            }

            else
            {
              *&a1[v9] = v12;
            }

            return;
          }
        }

        else
        {
          *a1 = v11;
          if (v10 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v10)
        {
          a1[v9] = v12;
        }

        return;
      }

      *a1 = v15;
      a1[2] = BYTE2(v15);
    }

    if (v10 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v10 <= 1)
  {
    if (v10)
    {
      a1[v9] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v8] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v10 == 2)
  {
    *&a1[v9] = 0;
    goto LABEL_24;
  }

  *&a1[v9] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t specialized Collection.first.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return String.subscript.getter();
  }

  else
  {
    return 0;
  }
}

uint64_t specialized Collection.first.getter(uint64_t a1)
{
  v2 = _HashTable.startBucket.getter();
  if (v2 == 1 << *(a1 + 32))
  {
    return 3;
  }

  v4 = *(a1 + 36);

  return specialized Set.subscript.getter(v2, v4, 0, a1);
}

void specialized BidirectionalCollection.last.getter(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  if (v5)
  {
    swift_retain_n();
    v6 = v4;
    v7 = _NSTextLineFragmentGetCTLine(v6);

    if (!v7)
    {
      outlined destroy of Text.Layout.Line(v1);
      outlined destroy of Text.Layout.Line(v1);

LABEL_10:
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      return;
    }
  }

  else
  {
    outlined init with copy of Text.Layout.Line(v1, v16);
    outlined init with copy of Text.Layout.Line(v1, v16);
    outlined init with copy of Text.Layout.Line(v1, v16);
    outlined init with copy of Text.Layout.Line(v1, v16);
    outlined init with copy of Text.Layout.Line(v1, v16);

    v7 = v4;
  }

  RunCount = CTLineGetRunCount();

  if (!RunCount)
  {
    outlined destroy of Text.Layout.Line(v1);
    outlined destroy of Text.Layout.Line(v1);
    outlined destroy of Text.Layout.Line(v1);
    outlined destroy of Text.Layout.Line(v1);
    goto LABEL_10;
  }

  if (v5)
  {

    v9 = _NSTextLineFragmentGetCTLine(v4);

    if (!v9)
    {
      v10 = -1;
      goto LABEL_14;
    }
  }

  else
  {

    v9 = v4;
  }

  v11 = CTLineGetRunCount();

  v10 = v11 - 1;
  if (__OFSUB__(v11, 1))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if ((v5 & 1) == 0)
  {

    v12 = v4;
    goto LABEL_17;
  }

LABEL_14:

  v12 = _NSTextLineFragmentGetCTLine(v4);

  if (!v12)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  v13 = CTLineGetRunCount();

  if (v10 < 0 || v10 >= v13)
  {
    goto LABEL_24;
  }

  if ((v5 & 1) == 0)
  {

    goto LABEL_23;
  }

  v14 = _NSTextLineFragmentGetCTLine(v4);

  if (v14)
  {

    v4 = v14;
LABEL_23:
    v15 = *(v1 + 40);
    *a1 = v4;
    *(a1 + 8) = v10;
    *(a1 + 16) = *(v1 + 24);
    *(a1 + 32) = v15;
    *(a1 + 40) = v3;
    return;
  }

LABEL_26:
  __break(1u);
}

uint64_t specialized BidirectionalCollection.last.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  String.index(before:)();
  return String.subscript.getter();
}

uint64_t specialized Collection.dropFirst(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 < 0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v3 = v2;
  v4 = a1;
  v6 = *v2;
  v7 = *(v2 + 8);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  if (a1)
  {
    v10 = *(v2 + 32);
    while (1)
    {
      if (v7)
      {
        if ((v9 & 1) == 0)
        {
          goto LABEL_31;
        }

        v7 = 1;
        goto LABEL_25;
      }

      if (v6 == v8)
      {
        v11 = v9;
      }

      else
      {
        v11 = 1;
      }

      if ((v11 & 1) == 0)
      {
        v7 = 0;
LABEL_25:
        v6 = v8;
        goto LABEL_26;
      }

      if (__OFADD__(v6++, 1))
      {
        break;
      }

      swift_beginAccess();
      if (v6 < *(*(v10 + 40) + 16))
      {
        v7 = 0;
      }

      else
      {
        v13 = *(v10 + 32);
        if (v13 == 1)
        {
          v6 = 0;
          v7 = 1;
        }

        else
        {
          specialized SizeFittingTextCache.withValue<A>(for:onChange:compute:)(v6, _ViewInputs.base.modify, 0, _ViewInputs.base.modify, 0, v13);
          v14 = *(*(v10 + 40) + 16);
          v7 = v6 >= v14;
          if (v6 >= v14)
          {
            v6 = 0;
          }
        }
      }

      if (!--v4)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

LABEL_18:
  if (v9)
  {
LABEL_26:
    specialized Slice.subscript.getter(v6, v7, v8, v9, a2);
    return _s7SwiftUI29TimerIntervalTimelineScheduleV32CountdownReducedFrequencyEntriesVWOhTm_0(v3, type metadata accessor for Slice<SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.Variants>);
  }

  if (v7)
  {
    goto LABEL_30;
  }

  if (v8 >= v6)
  {
    v7 = 0;
    goto LABEL_26;
  }

LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized closure #1 in Sequence.sorted<A>(by:)()
{
  swift_getAtKeyPath();
  swift_getAtKeyPath();
  if (v4 == v2 && v5 == v3)
  {
    v0 = 0;
  }

  else
  {
    v0 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v0 & 1;
}

uint64_t recursiveDescriptionName(_:)()
{
  v0 = _typeName(_:qualified:)();
  v2 = v1;
  v3 = specialized Collection.first.getter(v0, v1);
  if (v4)
  {
    if (v3 == 40 && v4 == 0xE100000000000000)
    {
    }

    else
    {
      v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v5 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v6 = specialized Collection.dropFirst(_:)(1uLL, v0, v2);
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v13 = v8 >> 14;
    v14 = v6 >> 14;
    if (v6 >> 14 != v8 >> 14)
    {
      v15 = v6;
      while (Substring.subscript.getter() != 32 || v16 != 0xE100000000000000)
      {
        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v17)
        {
          goto LABEL_14;
        }

        v15 = Substring.index(after:)();
        v14 = v15 >> 14;
        if (v15 >> 14 == v13)
        {
          goto LABEL_16;
        }
      }

LABEL_14:
      if (v13 < v14)
      {
        __break(1u);
        return result;
      }

      type metadata accessor for EmptyCollection<Character>(0, &lazy cache variable for type metadata for EmptyCollection<Character>, MEMORY[0x1E69E5EE0], MEMORY[0x1E69E6C30]);
      lazy protocol witness table accessor for type EmptyCollection<Character> and conformance EmptyCollection<A>();
      MEMORY[0x193ABFE60](v15, v8);
    }

LABEL_16:
    v0 = MEMORY[0x193ABED20](v6, v8, v10, v12);
    v2 = v19;
  }

LABEL_17:
  specialized Collection<>.firstIndex(of:)(60, 0xE100000000000000, v0, v2);
  if ((v20 & 1) == 0)
  {
    v21 = String.subscript.getter();
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v0 = MEMORY[0x193ABED20](v21, v23, v25, v27);
  }

  return v0;
}

uint64_t CustomRecursiveStringConvertible.descriptionName.getter()
{
  swift_getDynamicType();

  return recursiveDescriptionName(_:)();
}

Swift::String __swiftcall CustomRecursiveStringConvertible._recursiveDescription(indent:rounded:)(Swift::Int indent, Swift::Bool rounded)
{
  v6 = v3;
  v7 = v2;
  v8 = rounded;
  v92 = type metadata accessor for CharacterSet();
  v10 = *(v92 - 8);
  v11 = MEMORY[0x1EEE9AC00](v92);
  v91 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v6 + 48))(v7, v6, v11))
  {
    v98 = 0;
    v99 = 0xE000000000000000;
    v13 = (*(v6 + 32))(v7, v6);
    v14 = *(v13 + 16);
    if (v14)
    {
      v15 = v13 + 32;
      do
      {
        outlined init with copy of AnyTrackedValue(v15, &v93);
        v16 = v96;
        v17 = v97;
        __swift_project_boxed_opaque_existential_1(&v93, v96);
        if (((*(v17 + 40))(v16, v17) & 1) == 0)
        {
          __swift_project_boxed_opaque_existential_1(&v93, v96);
          countAndFlagsBits = CustomRecursiveStringConvertible._recursiveDescription(indent:rounded:)(indent, v8)._countAndFlagsBits;
          MEMORY[0x193ABEDD0](countAndFlagsBits);
        }

        __swift_destroy_boxed_opaque_existential_1(&v93);
        v15 += 40;
        --v14;
      }

      while (v14);
      goto LABEL_35;
    }

    v54 = 0;
    v55 = 0xE000000000000000;
    goto LABEL_39;
  }

  if (indent < 0)
  {
    goto LABEL_38;
  }

  v85 = v10;
  v93 = indent;
  v94 = 538976288;
  v95 = 0xE400000000000000;
  v19 = v4;
  v20 = MEMORY[0x1E69E7BF8];
  type metadata accessor for EmptyCollection<Character>(0, &lazy cache variable for type metadata for Repeated<String>, MEMORY[0x1E69E6158], MEMORY[0x1E69E7BF8]);
  lazy protocol witness table accessor for type Repeated<String> and conformance Repeated<A>(&lazy protocol witness table cache variable for type Repeated<String> and conformance Repeated<A>, &lazy cache variable for type metadata for Repeated<String>, v20);
  v21 = BidirectionalCollection<>.joined(separator:)();
  v83 = v22;
  v84 = v21;
  v23 = *(v6 + 16);
  v81 = v19;
  v24 = v23(v7, v6);
  v25 = v24;
  v82 = v6;
  if (v8)
  {
    v26 = specialized Sequence<>.roundedAttributes()(v24);

    v25 = v26;
  }

  v27 = MEMORY[0x1E69E7CC0];
  v28 = MEMORY[0x1E69E7CC0];
  if (!indent)
  {
    v28 = specialized CustomRecursiveStringConvertible.topLevelAttributes.getter();
  }

  v93 = v25;
  specialized Array.append<A>(contentsOf:)(v28);
  v29 = v93;
  swift_getKeyPath();
  v93 = v29;

  specialized MutableCollection<>.sort(by:)(&v93);
  v86 = v8;

  v5 = v93;
  v30 = *(v93 + 16);
  if (v30)
  {
    v79 = v7;
    v80 = indent;
    v98 = v27;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v30, 0);
    v31 = 0;
    v32 = v98;
    v88 = (v85 + 8);
    v89 = v30;
    v33 = v5 + 7;
    v90 = v5;
    while (v31 < v5[2])
    {
      v34 = *(v33 - 2);
      v93 = *(v33 - 3);
      v94 = v34;

      v35 = v91;
      static CharacterSet.whitespacesAndNewlines.getter();
      lazy protocol witness table accessor for type String and conformance String();
      v36 = MEMORY[0x1E69E6158];
      v37 = StringProtocol.components(separatedBy:)();
      (*v88)(v35, v92);
      v93 = v37;
      v38 = MEMORY[0x1E69E62F8];
      type metadata accessor for EmptyCollection<Character>(0, &lazy cache variable for type metadata for [String], v36, MEMORY[0x1E69E62F8]);
      v40 = v39;
      lazy protocol witness table accessor for type Repeated<String> and conformance Repeated<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &lazy cache variable for type metadata for [String], v38);
      v87 = v40;
      BidirectionalCollection<>.joined(separator:)();

      v41 = String.escapeXML()();
      v43 = v42;

      v93 = v41;
      v94 = v43;
      MEMORY[0x193ABEDD0](8765, 0xE200000000000000);
      v44 = String.escapeXML()();
      MEMORY[0x193ABEDD0](v44);

      MEMORY[0x193ABEDD0](34, 0xE100000000000000);

      v45 = v93;
      v46 = v94;
      v98 = v32;
      v48 = v32[2];
      v47 = v32[3];
      if (v48 >= v47 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1);
        v32 = v98;
      }

      ++v31;
      v32[2] = v48 + 1;
      v49 = &v32[2 * v48];
      v49[4] = v45;
      v49[5] = v46;
      v33 += 4;
      v5 = v90;
      if (v89 == v31)
      {

        v93 = v32;
        v50 = BidirectionalCollection<>.joined(separator:)();
        v52 = v51;

        v93 = 32;
        v94 = 0xE100000000000000;
        MEMORY[0x193ABEDD0](v50, v52);

        v53 = v94;
        v90 = v93;
        indent = v80;
        v7 = v79;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);

    __break(1u);
    goto LABEL_39;
  }

  v90 = 0;
  v53 = 0xE000000000000000;
LABEL_21:
  v56 = v82;
  v93 = (*(v82 + 8))(v7, v82);
  v94 = v57;
  v58 = v91;
  static CharacterSet.whitespacesAndNewlines.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v59 = MEMORY[0x1E69E6158];
  v60 = StringProtocol.components(separatedBy:)();
  (*(v85 + 8))(v58, v92);

  v93 = v60;
  v61 = MEMORY[0x1E69E62F8];
  type metadata accessor for EmptyCollection<Character>(0, &lazy cache variable for type metadata for [String], v59, MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type Repeated<String> and conformance Repeated<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &lazy cache variable for type metadata for [String], v61);
  BidirectionalCollection<>.joined(separator:)();

  v62 = v7;
  v63 = String.escapeXML()();
  v65 = v64;

  v66 = v83;
  v93 = v84;
  v94 = v83;

  MEMORY[0x193ABEDD0](60, 0xE100000000000000);

  MEMORY[0x193ABEDD0](v63, v65);

  MEMORY[0x193ABEDD0](v90, v53);

  v98 = v93;
  v99 = v94;
  v67 = *(v56 + 32);
  v68 = *(v67(v62, v56) + 16);

  if (!v68)
  {

    MEMORY[0x193ABEDD0](171847456, 0xE400000000000000);
    goto LABEL_36;
  }

  MEMORY[0x193ABEDD0](2622, 0xE200000000000000);
  v69 = v67(v62, v56);
  v70 = *(v69 + 16);
  if (!v70)
  {

    goto LABEL_34;
  }

  v71 = v69 + 32;
  v72 = indent + 1;
  v73 = __OFADD__(indent, 1);
  while (1)
  {
    outlined init with copy of AnyTrackedValue(v71, &v93);
    v75 = v96;
    v76 = v97;
    __swift_project_boxed_opaque_existential_1(&v93, v96);
    if ((*(v76 + 40))(v75, v76))
    {
      goto LABEL_27;
    }

    __swift_project_boxed_opaque_existential_1(&v93, v96);
    if (v73)
    {
      break;
    }

    v74 = CustomRecursiveStringConvertible._recursiveDescription(indent:rounded:)(v72, v86)._countAndFlagsBits;
    MEMORY[0x193ABEDD0](v74);

LABEL_27:
    __swift_destroy_boxed_opaque_existential_1(&v93);
    v71 += 40;
    if (!--v70)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_31:

  v66 = v83;
LABEL_34:
  MEMORY[0x193ABEDD0](v84, v66);

  v93 = 12092;
  v94 = 0xE200000000000000;
  MEMORY[0x193ABEDD0](v63, v65);

  MEMORY[0x193ABEDD0](2622, 0xE200000000000000);
  MEMORY[0x193ABEDD0](v93, v94);
LABEL_35:

LABEL_36:
  v54 = v98;
  v55 = v99;
LABEL_39:
  result._object = v55;
  result._countAndFlagsBits = v54;
  return result;
}

uint64_t specialized Sequence<>.roundedAttributes()(uint64_t a1)
{
  _s10Foundation6LocaleVSgMaTm_0(0, &lazy cache variable for type metadata for Locale?, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v90 = &v88 - v4;
  v5 = MEMORY[0x1E69E7CC0];
  v92 = *(a1 + 16);
  if (v92)
  {
    v89 = 0;
    v6 = 0;
    v91 = a1 + 32;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = (v91 + 32 * v6);
      v9 = v8[1];
      v95 = *v8;
      v96 = 0;
      v11 = v8[2];
      v10 = v8[3];
      MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
      if ((v10 & 0x1000000000000000) == 0)
      {
        if ((v10 & 0x2000000000000000) != 0)
        {
          v98 = v11;
          v99 = v10 & 0xFFFFFFFFFFFFFFLL;

          v15 = v11 > 0x20u || ((1 << v11) & 0x100003E01) == 0;
          if (!v15 || (v14 = _swift_stdlib_strtod_clocale()) == 0)
          {
LABEL_17:
            v94 = v9;
            v16 = String.tupleOfDoubles()();
            if (!v16)
            {
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
                v7 = isUniquelyReferenced_nonNull_native;
              }

              goto LABEL_39;
            }

            v17 = v16;
            v93 = v6;

            v18 = *(v17 + 16);
            v19 = v7;
            if (v18)
            {
              v98 = v5;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
              v20 = v98;
              v21 = (v17 + 48);
              do
              {
                v23 = *(v21 - 2);
                v22 = *(v21 - 1);
                v24 = *v21;
                v98 = v20;
                v26 = *(v20 + 16);
                v25 = *(v20 + 24);

                if (v26 >= v25 >> 1)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
                  v20 = v98;
                }

                *(v20 + 16) = v26 + 1;
                v27 = v20 + 24 * v26;
                *(v27 + 32) = v23;
                *(v27 + 40) = v22;
                *(v27 + 48) = round(v24 * 256.0) * 0.00390625;
                v21 += 3;
                --v18;
              }

              while (v18);

              v7 = v19;
              v5 = MEMORY[0x1E69E7CC0];
              v28 = *(v20 + 16);
              if (v28)
              {
LABEL_24:
                if (v28 == 4 && (v98 = v95, v99 = v94, v96 = 0x726F6C6F63, v97 = 0xE500000000000000, v29 = type metadata accessor for Locale(), v30 = v90, (*(*(v29 - 8) + 56))(v90, 1, 1, v29), lazy protocol witness table accessor for type String and conformance String(), StringProtocol.range<A>(of:options:range:locale:)(), v32 = v31, outlined destroy of Locale?(v30, &lazy cache variable for type metadata for Locale?, MEMORY[0x1E6969770], MEMORY[0x1E69E6720], _s10Foundation6LocaleVSgMaTm_0), (v32 & 1) == 0))
                {
                  v98 = v5;
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4, 0);
                  result = v98;
                  v52 = *(v20 + 48);
                  v54 = *(v98 + 16);
                  v53 = *(v98 + 24);
                  v55 = v53 >> 1;
                  v56 = v54 + 1;
                  if (v53 >> 1 <= v54)
                  {
                    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1);
                    result = v98;
                    v53 = *(v98 + 24);
                    v55 = v53 >> 1;
                  }

                  v57 = v52;
                  *(result + 16) = v56;
                  *(result + 4 * v54 + 32) = v57;
                  v58 = *(v20 + 72);
                  v98 = result;
                  if (v55 <= v56)
                  {
                    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 2, 1);
                    result = v98;
                  }

                  v59 = v58;
                  *(result + 16) = v54 + 2;
                  *(result + 4 * v56 + 32) = v59;
                  v60 = *(v20 + 96);
                  v98 = result;
                  v62 = *(result + 16);
                  v61 = *(result + 24);
                  v63 = v61 >> 1;
                  v64 = v62 + 1;
                  if (v61 >> 1 <= v62)
                  {
                    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v62 + 1, 1);
                    result = v98;
                    v61 = *(v98 + 24);
                    v63 = v61 >> 1;
                  }

                  v65 = v60;
                  *(result + 16) = v64;
                  *(result + 4 * v62 + 32) = v65;
                  v66 = *(v20 + 120);
                  v98 = result;
                  if (v63 <= v64)
                  {
                    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v62 + 2, 1);
                    result = v98;
                  }

                  v67 = v66;
                  *(result + 16) = v62 + 2;
                  *(result + 32 + 4 * v64) = v67;
                  if (!v62)
                  {
                    goto LABEL_79;
                  }

                  if (v62 == 1)
                  {
                    goto LABEL_80;
                  }

                  v68 = *(result + 32);
                  v69 = *(result + 36);
                  v70 = *(result + 40);
                  v71 = *(result + 44);

                  v72 = colorNameForColorComponents(_:)(v68, v69, v70, v71);
                  if (v73)
                  {
                    v11 = v72;
                    v10 = v73;

                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
                      v7 = isUniquelyReferenced_nonNull_native;
                    }

                    v6 = v93;
LABEL_39:
                    v9 = v94;
                    goto LABEL_43;
                  }

                  v33 = 4;
                }

                else
                {
                  v33 = v28;
                }

                v96 = v5;
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v33, 0);
                v34 = v96;
                v35 = v20 + 48;
                do
                {
                  v37 = *(v35 - 16);
                  v36 = *(v35 - 8);
                  v38 = HIBYTE(v36) & 0xF;
                  if ((v36 & 0x2000000000000000) == 0)
                  {
                    v38 = v37 & 0xFFFFFFFFFFFFLL;
                  }

                  v98 = 0;
                  v99 = 0xE000000000000000;
                  if (v38)
                  {

                    MEMORY[0x193ABEDD0](v37, v36);
                    MEMORY[0x193ABEDD0](8250, 0xE200000000000000);
                    Double.write<A>(to:)();
                  }

                  else
                  {
                    Double.write<A>(to:)();
                  }

                  v39 = v98;
                  v40 = v99;
                  v96 = v34;
                  v42 = *(v34 + 16);
                  v41 = *(v34 + 24);
                  if (v42 >= v41 >> 1)
                  {
                    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1);
                    v34 = v96;
                  }

                  *(v34 + 16) = v42 + 1;
                  v43 = v34 + 16 * v42;
                  *(v43 + 32) = v39;
                  *(v43 + 40) = v40;
                  v35 += 24;
                  --v28;
                }

                while (v28);

                v7 = v19;
                v5 = MEMORY[0x1E69E7CC0];
                goto LABEL_42;
              }
            }

            else
            {

              v20 = v5;
              v28 = *(v5 + 16);
              if (v28)
              {
                goto LABEL_24;
              }
            }

            v34 = v5;
LABEL_42:
            v98 = v34;
            v44 = MEMORY[0x1E69E62F8];
            type metadata accessor for EmptyCollection<Character>(0, &lazy cache variable for type metadata for [String], MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
            lazy protocol witness table accessor for type Repeated<String> and conformance Repeated<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &lazy cache variable for type metadata for [String], v44);
            v45 = BidirectionalCollection<>.joined(separator:)();
            v47 = v46;

            v98 = 40;
            v99 = 0xE100000000000000;
            MEMORY[0x193ABEDD0](v45, v47);

            MEMORY[0x193ABEDD0](41, 0xE100000000000000);

            v11 = v98;
            v10 = v99;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v6 = v93;
            v9 = v94;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              goto LABEL_64;
            }

            goto LABEL_43;
          }

          goto LABEL_62;
        }

        if ((v11 & 0x1000000000000000) != 0)
        {
          v12 = *((v10 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

          if (v12 <= 0x20 && ((1 << v12) & 0x100003E01) != 0)
          {
            goto LABEL_17;
          }

          v14 = _swift_stdlib_strtod_clocale();
          if (!v14)
          {
            goto LABEL_17;
          }

LABEL_62:
          if (*v14)
          {
            goto LABEL_17;
          }

          goto LABEL_63;
        }
      }

      v75 = v6;
      v76 = v89;
      _StringGuts._slowWithCString<A>(_:)();
      v89 = v76;
      v6 = v75;
      if ((v100 & 1) == 0)
      {
        goto LABEL_17;
      }

LABEL_63:

      v11 = Double.description.getter();
      v10 = v74;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
LABEL_64:
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
        v7 = isUniquelyReferenced_nonNull_native;
      }

LABEL_43:
      v49 = v7[2];
      v48 = v7[3];
      if (v49 >= v48 >> 1)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v7);
        v7 = isUniquelyReferenced_nonNull_native;
      }

      ++v6;
      v7[2] = v49 + 1;
      v50 = &v7[4 * v49];
      v50[4] = v95;
      v50[5] = v9;
      v50[6] = v11;
      v50[7] = v10;
      if (v6 == v92)
      {
        goto LABEL_69;
      }
    }
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_69:
  v77 = v7[2];
  if (v77)
  {
    v98 = v5;
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v77, 0);
    v78 = 0;
    v79 = v98;
    v80 = v7 + 7;
    v94 = v77;
    v95 = v7;
    while (v78 < v7[2])
    {
      v82 = *(v80 - 3);
      v81 = *(v80 - 2);
      v84 = *(v80 - 1);
      v83 = *v80;
      v98 = v79;
      v86 = *(v79 + 16);
      v85 = *(v79 + 24);

      if (v86 >= v85 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v85 > 1), v86 + 1, 1);
        v79 = v98;
      }

      ++v78;
      *(v79 + 16) = v86 + 1;
      v87 = (v79 + 32 * v86);
      v87[4] = v82;
      v87[5] = v81;
      v87[6] = v84;
      v87[7] = v83;
      v80 += 4;
      v7 = v95;
      if (v94 == v78)
      {

        return v79;
      }
    }

    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t Sequence<>.roundedAttributes()(uint64_t a1)
{
  v101 = 0;
  _s10Foundation6LocaleVSgMaTm_0(0, &lazy cache variable for type metadata for Locale?, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v103 = &v100 - v4;
  v5 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v102 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v100 - v11;
  (*(v5 + 16))(v8, v1, a1, v10);
  dispatch thunk of Sequence.makeIterator()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v105 = v12;
  v106 = AssociatedTypeWitness;
  v104 = AssociatedConformanceWitness;
  v14 = dispatch thunk of IteratorProtocol.next()();
  v15 = v113;
  v16 = MEMORY[0x1E69E7CC0];
  if (v113)
  {
    v17 = v112;
    v19 = v114;
    v18 = v115;
    v20 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v109 = 0;
      MEMORY[0x1EEE9AC00](v14);
      if ((v18 & 0x1000000000000000) != 0)
      {
        break;
      }

      if ((v18 & 0x2000000000000000) != 0)
      {
        v112 = v19;
        v113 = v18 & 0xFFFFFFFFFFFFFFLL;
        if (v19 <= 0x20u && ((1 << v19) & 0x100003E01) != 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        if ((v19 & 0x1000000000000000) == 0)
        {
          break;
        }

        v21 = *((v18 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v22 = v21 > 0x20;
        v23 = (1 << v21) & 0x100003E01;
        if (!v22 && v23 != 0)
        {
          goto LABEL_14;
        }
      }

      v85 = _swift_stdlib_strtod_clocale();
      if (v85 && !*v85)
      {
LABEL_57:

        v19 = Double.description.getter();
        v18 = v86;
        goto LABEL_37;
      }

LABEL_14:
      v25 = String.tupleOfDoubles()();
      if (v25)
      {
        v26 = v25;

        v27 = *(v26 + 16);
        v107 = v17;
        v108 = v20;
        if (v27)
        {
          v28 = v15;
          v112 = v16;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27, 0);
          v29 = v112;
          v30 = (v26 + 48);
          do
          {
            v32 = *(v30 - 2);
            v31 = *(v30 - 1);
            v33 = *v30;
            v112 = v29;
            v35 = *(v29 + 16);
            v34 = *(v29 + 24);

            if (v35 >= v34 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1);
              v29 = v112;
            }

            *(v29 + 16) = v35 + 1;
            v36 = v29 + 24 * v35;
            *(v36 + 32) = v32;
            *(v36 + 40) = v31;
            *(v36 + 48) = round(v33 * 256.0) * 0.00390625;
            v30 += 3;
            --v27;
          }

          while (v27);

          v16 = MEMORY[0x1E69E7CC0];
          v15 = v28;
          v17 = v107;
          v20 = v108;
          v37 = *(v29 + 16);
          if (v37)
          {
LABEL_21:
            if (v37 == 4 && (v112 = v17, v113 = v15, v109 = 0x726F6C6F63, v110 = 0xE500000000000000, v38 = type metadata accessor for Locale(), v39 = v103, (*(*(v38 - 8) + 56))(v103, 1, 1, v38), lazy protocol witness table accessor for type String and conformance String(), StringProtocol.range<A>(of:options:range:locale:)(), v41 = v40, outlined destroy of Locale?(v39, &lazy cache variable for type metadata for Locale?, MEMORY[0x1E6969770], MEMORY[0x1E69E6720], _s10Foundation6LocaleVSgMaTm_0), (v41 & 1) == 0))
            {
              v112 = v16;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4, 0);
              result = v112;
              v62 = *(v29 + 48);
              v64 = *(v112 + 16);
              v63 = *(v112 + 24);
              v65 = v63 >> 1;
              v66 = v64 + 1;
              if (v63 >> 1 <= v64)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v64 + 1, 1);
                result = v112;
                v63 = *(v112 + 24);
                v65 = v63 >> 1;
              }

              v67 = v62;
              *(result + 16) = v66;
              *(result + 4 * v64 + 32) = v67;
              v68 = *(v29 + 72);
              v112 = result;
              v69 = v64 + 2;
              if (v65 <= v66)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v69, 1);
                result = v112;
              }

              v70 = v68;
              *(result + 16) = v69;
              *(result + 4 * v66 + 32) = v70;
              v71 = *(v29 + 96);
              v112 = result;
              v73 = *(result + 16);
              v72 = *(result + 24);
              v74 = v72 >> 1;
              v75 = v73 + 1;
              if (v72 >> 1 <= v73)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v72 > 1), v73 + 1, 1);
                result = v112;
                v72 = *(v112 + 24);
                v74 = v72 >> 1;
              }

              v76 = v71;
              *(result + 16) = v75;
              *(result + 4 * v73 + 32) = v76;
              v77 = *(v29 + 120);
              v112 = result;
              if (v74 <= v75)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v72 > 1), v73 + 2, 1);
                result = v112;
              }

              v78 = v77;
              *(result + 16) = v73 + 2;
              *(result + 32 + 4 * v75) = v78;
              if (!v73)
              {
                goto LABEL_72;
              }

              if (v73 == 1)
              {
                goto LABEL_73;
              }

              v79 = *(result + 32);
              v80 = *(result + 36);
              v81 = *(result + 40);
              v82 = *(result + 44);

              v83 = colorNameForColorComponents(_:)(v79, v80, v81, v82);
              if (v84)
              {
                v19 = v83;
                v18 = v84;

                goto LABEL_37;
              }

              v42 = v15;
              v43 = 4;
            }

            else
            {
              v42 = v15;
              v43 = v37;
            }

            v109 = v16;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v43, 0);
            v44 = v109;
            v45 = v29 + 48;
            do
            {
              v47 = *(v45 - 16);
              v46 = *(v45 - 8);
              v48 = HIBYTE(v46) & 0xF;
              if ((v46 & 0x2000000000000000) == 0)
              {
                v48 = v47 & 0xFFFFFFFFFFFFLL;
              }

              v112 = 0;
              v113 = 0xE000000000000000;
              if (v48)
              {

                MEMORY[0x193ABEDD0](v47, v46);
                MEMORY[0x193ABEDD0](8250, 0xE200000000000000);
                Double.write<A>(to:)();
              }

              else
              {
                Double.write<A>(to:)();
              }

              v49 = v112;
              v50 = v113;
              v109 = v44;
              v52 = *(v44 + 16);
              v51 = *(v44 + 24);
              if (v52 >= v51 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1);
                v44 = v109;
              }

              *(v44 + 16) = v52 + 1;
              v53 = v44 + 16 * v52;
              *(v53 + 32) = v49;
              *(v53 + 40) = v50;
              v45 += 24;
              --v37;
            }

            while (v37);

            v16 = MEMORY[0x1E69E7CC0];
            v15 = v42;
            v17 = v107;
            v20 = v108;
            goto LABEL_36;
          }
        }

        else
        {

          v29 = v16;
          v37 = *(v16 + 16);
          if (v37)
          {
            goto LABEL_21;
          }
        }

        v44 = v16;
LABEL_36:
        v112 = v44;
        v54 = MEMORY[0x1E69E62F8];
        type metadata accessor for EmptyCollection<Character>(0, &lazy cache variable for type metadata for [String], MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
        lazy protocol witness table accessor for type Repeated<String> and conformance Repeated<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &lazy cache variable for type metadata for [String], v54);
        v55 = BidirectionalCollection<>.joined(separator:)();
        v57 = v56;

        v112 = 40;
        v113 = 0xE100000000000000;
        MEMORY[0x193ABEDD0](v55, v57);

        MEMORY[0x193ABEDD0](41, 0xE100000000000000);

        v19 = v112;
        v18 = v113;
      }

LABEL_37:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20[2] + 1, 1, v20);
      }

      v59 = v20[2];
      v58 = v20[3];
      if (v59 >= v58 >> 1)
      {
        v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v59 + 1, 1, v20);
      }

      v20[2] = v59 + 1;
      v60 = &v20[4 * v59];
      v60[4] = v17;
      v60[5] = v15;
      v60[6] = v19;
      v60[7] = v18;
      v14 = dispatch thunk of IteratorProtocol.next()();
      v17 = v112;
      v15 = v113;
      v19 = v114;
      v18 = v115;
      if (!v113)
      {
        goto LABEL_62;
      }
    }

    v87 = v17;
    v88 = v101;
    _StringGuts._slowWithCString<A>(_:)();
    v101 = v88;
    v17 = v87;
    if (v111)
    {
      goto LABEL_57;
    }

    goto LABEL_14;
  }

  v20 = MEMORY[0x1E69E7CC0];
LABEL_62:
  (*(v102 + 8))(v105, v106);
  v89 = v20[2];
  if (v89)
  {
    v112 = v16;
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v89, 0);
    v90 = 0;
    v91 = v112;
    v92 = v20 + 7;
    v107 = v89;
    v108 = v20;
    while (v90 < v20[2])
    {
      v94 = *(v92 - 3);
      v93 = *(v92 - 2);
      v96 = *(v92 - 1);
      v95 = *v92;
      v112 = v91;
      v98 = *(v91 + 16);
      v97 = *(v91 + 24);

      if (v98 >= v97 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v97 > 1), v98 + 1, 1);
        v91 = v112;
      }

      ++v90;
      *(v91 + 16) = v98 + 1;
      v99 = (v91 + 32 * v98);
      v99[4] = v94;
      v99[5] = v93;
      v99[6] = v96;
      v99[7] = v95;
      v92 += 4;
      v20 = v108;
      if (v107 == v90)
      {

        return v91;
      }
    }

    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t String.escapeXML()()
{
  v0 = String.count.getter();
  MEMORY[0x193ABED40](v0);

  v1 = String.Iterator.next()();
  if (v1.value._object)
  {
    countAndFlagsBits = v1.value._countAndFlagsBits;
    object = v1.value._object;
    while ((countAndFlagsBits != 34 || object != 0xE100000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      if (countAndFlagsBits == 38 && object == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v4 = 0x3B706D6126;
        v5 = 0xE500000000000000;
        goto LABEL_8;
      }

      if (countAndFlagsBits == 39 && object == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v4 = 0x3B736F706126;
        goto LABEL_7;
      }

      if (countAndFlagsBits == 60 && object == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v4 = 997485606;
LABEL_23:
        v5 = 0xE400000000000000;
        goto LABEL_8;
      }

      if (countAndFlagsBits == 62 && object == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v4 = 997484326;
        goto LABEL_23;
      }

      if (countAndFlagsBits == 10 && object == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v4 = 28252;
      }

      else
      {
        if ((countAndFlagsBits != 13 || object != 0xE100000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          MEMORY[0x193ABEDC0](countAndFlagsBits, object);

          goto LABEL_9;
        }

        v4 = 29276;
      }

      v5 = 0xE200000000000000;
LABEL_8:
      MEMORY[0x193ABEDD0](v4, v5);
LABEL_9:
      v6 = String.Iterator.next()();
      countAndFlagsBits = v6.value._countAndFlagsBits;
      object = v6.value._object;
      if (!v6.value._object)
      {
        goto LABEL_38;
      }
    }

    v4 = 0x3B746F757126;
LABEL_7:
    v5 = 0xE600000000000000;
    goto LABEL_8;
  }

LABEL_38:

  return 0;
}

Swift::OpaquePointer_optional __swiftcall String.tupleOfDoubles()()
{
  v2 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v2 = v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    goto LABEL_34;
  }

  v3 = v1;
  v4 = v0;
  if (String.subscript.getter() == 40 && v5 == 0xE100000000000000)
  {
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v6 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  v7 = specialized BidirectionalCollection.last.getter(v4, v3);
  if (!v1)
  {
    goto LABEL_34;
  }

  if (v7 == 41 && v1 == 0xE100000000000000)
  {

    goto LABEL_13;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v8 & 1) == 0)
  {
LABEL_34:
    v28 = 0;
LABEL_35:
    isUniquelyReferenced_nonNull_native = v28;
    goto LABEL_39;
  }

LABEL_13:
  isUniquelyReferenced_nonNull_native = decomposeTuple #1 () in String.tupleOfDoubles()(v4, v3);
  v37 = isUniquelyReferenced_nonNull_native;
  v10 = v1;
  v11 = *(v1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v13 = 0;
    v14 = v1 + 40;
    v36 = v1 + 40;
    do
    {
      v38 = v12;
      v15 = v14 + 16 * v13;
      v16 = v13;
      while (1)
      {
        if (v16 >= *(v10 + 16))
        {
          __break(1u);
          goto LABEL_38;
        }

        v13 = v16 + 1;

        isUniquelyReferenced_nonNull_native = LosslessStringConvertible<>.init(argument:)();
        if ((v41 & 1) == 0)
        {
          break;
        }

        v15 += 16;
        ++v16;
        if (v11 == v13)
        {
          v12 = v38;
          goto LABEL_25;
        }
      }

      v17 = v38;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v38 + 16) + 1, 1, v38);
        v17 = isUniquelyReferenced_nonNull_native;
      }

      v18 = v17;
      v19 = *(v17 + 16);
      v20 = v18;
      v21 = *(v18 + 24);
      v22 = v19 + 1;
      if (v19 >= v21 >> 1)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v19 + 1, 1, v20);
        v22 = v19 + 1;
        v20 = isUniquelyReferenced_nonNull_native;
      }

      *(v20 + 16) = v22;
      v23 = v20 + 8 * v19;
      v12 = v20;
      *(v23 + 32) = v39;
      v14 = v36;
    }

    while (v11 - 1 != v16);
  }

LABEL_25:
  v24 = *(v10 + 16);

  if (v24 != *(v12 + 16))
  {

    goto LABEL_34;
  }

  v25 = specialized _copySequenceToContiguousArray<A>(_:)(v37, v12);

  v26 = *(v25 + 16);
  if (!v26)
  {

    v28 = MEMORY[0x1E69E7CC0];
    goto LABEL_35;
  }

  v40 = MEMORY[0x1E69E7CC0];
  isUniquelyReferenced_nonNull_native = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26, 0);
  v27 = 0;
  v28 = v40;
  v29 = (v25 + 48);
  while (v27 < *(v25 + 16))
  {
    v31 = *(v29 - 2);
    v30 = *(v29 - 1);
    v32 = *v29;
    v34 = *(v40 + 16);
    v33 = *(v40 + 24);

    if (v34 >= v33 >> 1)
    {
      isUniquelyReferenced_nonNull_native = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1);
    }

    ++v27;
    *(v40 + 16) = v34 + 1;
    v35 = (v40 + 24 * v34);
    v35[4] = v31;
    v35[5] = v30;
    v35[6] = v32;
    v29 += 3;
    if (v26 == v27)
    {

      goto LABEL_35;
    }
  }

LABEL_38:
  __break(1u);
LABEL_39:
  result.is_nil = v1;
  result.value._rawValue = isUniquelyReferenced_nonNull_native;
  return result;
}

uint64_t decomposeTuple #1 () in String.tupleOfDoubles()(uint64_t a1, unint64_t a2)
{
  v98 = type metadata accessor for CharacterSet();
  v94 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v97 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);

  v5 = specialized Collection.dropFirst(_:)(1uLL, a1, a2);
  v7 = v6;

  result = Substring.distance(from:to:)();
  if (!__OFSUB__(result, 1))
  {
    result = Substring.index(_:offsetBy:limitedBy:)();
    if (v9)
    {
      v10 = v7;
    }

    else
    {
      v10 = result;
    }

    if (v10 >> 14 < v5 >> 14)
    {
      goto LABEL_45;
    }

    v11 = Substring.subscript.getter();
    v13 = v12;
    v15 = v14;

    v100 = 44;
    v101 = 0xE100000000000000;
    MEMORY[0x1EEE9AC00](v16);
    *(&v93 - 2) = &v100;
    v17 = specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(0x7FFFFFFFFFFFFFFFLL, 1, partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v93 - 4), v11, v13, v15, &v93);
    v18 = *(v17 + 2);
    if (v18)
    {
      v100 = MEMORY[0x1E69E7CC0];
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
      v19 = 0;
      v20 = v100;
      v21 = (v17 + 56);
      while (v19 < *(v17 + 2))
      {
        v22 = *(v21 - 3);
        v23 = *(v21 - 2);
        v24 = *(v21 - 1);
        v25 = *v21;

        v26 = MEMORY[0x193ABED20](v22, v23, v24, v25);
        v28 = v27;

        v100 = v20;
        v30 = v20[2];
        v29 = v20[3];
        if (v30 >= v29 >> 1)
        {
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1);
          v20 = v100;
        }

        ++v19;
        v20[2] = v30 + 1;
        v31 = &v20[2 * v30];
        v31[4] = v26;
        v31[5] = v28;
        v21 += 4;
        if (v18 == v19)
        {

          goto LABEL_14;
        }
      }

      __break(1u);
      goto LABEL_44;
    }

    v20 = MEMORY[0x1E69E7CC0];
LABEL_14:
    v32 = v20[2];
    v93 = v20;
    if (v32)
    {
      v33 = v20 + 5;
      v34 = MEMORY[0x1E69E7CC0];
      v35 = MEMORY[0x1E69E7CC0];
      do
      {
        v37 = *(v33 - 1);
        v36 = *v33;

        specialized Collection<>.firstIndex(of:)(58, 0xE100000000000000, v37, v36);
        if (v38)
        {
          v39 = 0;
          v40 = 0xE000000000000000;
        }

        else
        {

          v41 = String.subscript.getter();
          v95 = v35;
          v96 = v34;
          v42 = v41;
          v44 = v43;
          v46 = v45;
          v48 = v47;

          v39 = MEMORY[0x193ABED20](v42, v44, v46, v48);
          v40 = v49;

          v50 = String.index(after:)();
          v51 = specialized Collection.suffix(from:)(v50, v37, v36);
          v53 = v52;
          v55 = v54;
          v57 = v56;

          v58 = v53;
          v59 = v55;
          v35 = v95;
          v34 = v96;
          v37 = MEMORY[0x193ABED20](v51, v58, v59, v57);
          v36 = v60;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v35 + 2) + 1, 1, v35);
        }

        v62 = *(v35 + 2);
        v61 = *(v35 + 3);
        if (v62 >= v61 >> 1)
        {
          v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v62 + 1, 1, v35);
        }

        *(v35 + 2) = v62 + 1;
        v63 = &v35[16 * v62];
        *(v63 + 4) = v39;
        *(v63 + 5) = v40;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v34 + 2) + 1, 1, v34);
        }

        v65 = *(v34 + 2);
        v64 = *(v34 + 3);
        if (v65 >= v64 >> 1)
        {
          v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v64 > 1), v65 + 1, 1, v34);
        }

        *(v34 + 2) = v65 + 1;
        v66 = &v34[16 * v65];
        *(v66 + 4) = v37;
        *(v66 + 5) = v36;
        v33 += 2;
        --v32;
      }

      while (v32);
    }

    else
    {
      v34 = MEMORY[0x1E69E7CC0];
      v35 = MEMORY[0x1E69E7CC0];
    }

    v67 = *(v35 + 2);
    v68 = MEMORY[0x1E69E7CC0];
    v95 = v35;
    v96 = v34;
    if (v67)
    {
      v99 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v67, 0);
      v69 = v99;
      v70 = v35;
      v71 = (v94 + 8);
      v72 = (v70 + 40);
      do
      {
        v73 = *v72;
        v100 = *(v72 - 1);
        v101 = v73;

        v74 = v97;
        static CharacterSet.whitespaces.getter();
        lazy protocol witness table accessor for type String and conformance String();
        v75 = StringProtocol.trimmingCharacters(in:)();
        v77 = v76;
        (*v71)(v74, v98);

        v99 = v69;
        v79 = *(v69 + 16);
        v78 = *(v69 + 24);
        if (v79 >= v78 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v78 > 1), v79 + 1, 1);
          v69 = v99;
        }

        *(v69 + 16) = v79 + 1;
        v80 = v69 + 16 * v79;
        *(v80 + 32) = v75;
        *(v80 + 40) = v77;
        v72 += 2;
        --v67;
      }

      while (v67);
      v34 = v96;
      v68 = MEMORY[0x1E69E7CC0];
      v81 = *(v96 + 2);
      if (!v81)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v69 = MEMORY[0x1E69E7CC0];
      v81 = *(v34 + 2);
      if (!v81)
      {
LABEL_42:

        return v69;
      }
    }

    v99 = v68;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v81, 0);
    v82 = v99;
    v83 = (v94 + 8);
    v84 = (v34 + 40);
    do
    {
      v85 = *v84;
      v100 = *(v84 - 1);
      v101 = v85;

      v86 = v97;
      static CharacterSet.whitespaces.getter();
      lazy protocol witness table accessor for type String and conformance String();
      v87 = StringProtocol.trimmingCharacters(in:)();
      v89 = v88;
      (*v83)(v86, v98);

      v99 = v82;
      v91 = *(v82 + 16);
      v90 = *(v82 + 24);
      if (v91 >= v90 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v90 > 1), v91 + 1, 1);
        v82 = v99;
      }

      *(v82 + 16) = v91 + 1;
      v92 = v82 + 16 * v91;
      *(v92 + 32) = v87;
      *(v92 + 40) = v89;
      v84 += 2;
      --v81;
    }

    while (v81);
    goto LABEL_42;
  }

LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t colorNameForColorComponents(_:)(float a1, float a2, float a3, float a4)
{
  if (a1 == 0.0 && a2 == 0.0 && a3 == 0.0)
  {
    if (a4 == 0.0)
    {
      return 0x7261656C63;
    }

    if (a4 == 1.0)
    {
      return 0x6B63616C62;
    }
  }

  v5 = a1 == 1.0;
  if (a2 != 1.0)
  {
    v5 = 0;
  }

  if (v5 && a3 == 1.0 && a4 == 1.0)
  {
    return 0x6574696877;
  }

  if (a1 == 0.03125 && a2 == 0.03125 && a3 == 0.03125 && a4 == 1.0)
  {
    return 2036429415;
  }

  if (a1 != 1.0)
  {
    goto LABEL_41;
  }

  if (a2 == 0.0 && a3 == 0.0 && a4 == 1.0)
  {
    return 6579570;
  }

  result = 0x722D6D6574737973;
  if ((a2 != 0.042969 || a3 != 0.03125 || a4 != 1.0) && (a2 != 0.058594 || a3 != 0.042969 || a4 != 1.0))
  {
    if (a1 != 0.0)
    {
      goto LABEL_43;
    }

LABEL_41:
    if (a2 == 1.0 && a3 == 0.0 && a4 == 1.0)
    {
      return 0x6E65657267;
    }

    if (a2 == 0.0 && a3 == 1.0 && a4 == 1.0)
    {
      return 1702194274;
    }

    else
    {
LABEL_43:
      if (a3 != 0.0)
      {
        v5 = 0;
      }

      if (v5 && a4 == 1.0)
      {
        return 0x776F6C6C6579;
      }

      else
      {
        result = 0x656C70727570;
        if ((a1 != 0.214 || a2 != 0.0 || a3 != 0.214 || a4 != 1.0) && (a1 != 0.21484 || a2 != 0.0 || a3 != 0.21484 || a4 != 1.0))
        {
          if (a1 == 1.0 && a2 == 0.21484 && a3 == 0.0 && a4 == 1.0)
          {
            return 0x65676E61726FLL;
          }

          else if (a1 == 0.0 && a2 == 1.0 && a3 == 1.0 && a4 == 1.0)
          {
            return 1818322292;
          }

          else if (a1 == 0.21484 && a2 == 0.21484 && a3 == 1.0 && a4 == 1.0)
          {
            return 0x6F6769646E69;
          }

          else if (a1 == 1.0 && a2 == 0.0 && a3 == 0.21484 && a4 == 1.0)
          {
            return 1802398064;
          }

          else
          {
            v10 = a2 == 0.046875 && a1 == 0.046875;
            if (v10 && a3 == 0.054688 && a4 == 0.29688)
            {
              return 0xD000000000000010;
            }

            else
            {
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t specialized _copySequenceToContiguousArray<A>(_:)(uint64_t a1)
{
  _s10Foundation6LocaleVSgMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v38 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TimerIntervalTimelineSchedule.CountdownReducedFrequencyEntries(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v6 + 80);
  outlined init with copy of AlignedTimelineSchedule.Entries(a1, v11, type metadata accessor for TimerIntervalTimelineSchedule.CountdownReducedFrequencyEntries);
  v44 = v11;
  TimerIntervalTimelineSchedule.CountdownReducedFrequencyEntries.next()(v4);
  v42 = *(v6 + 48);
  v43 = v6 + 48;
  v13 = v42(v4, 1, v5);
  v14 = MEMORY[0x1E69E7CC0];
  if (v13 != 1)
  {
    v15 = 0;
    v39 = v6;
    v40 = v12;
    v21 = *(v6 + 32);
    v41 = (v12 + 32) & ~v12;
    v22 = MEMORY[0x1E69E7CC0] + v41;
    v23 = MEMORY[0x1E69E7CC0];
    v45 = v21;
    for (result = v21(v8, v4, v5); ; result = v21(v8, v4, v5))
    {
      if (v15)
      {
        v14 = v23;
        v19 = __OFSUB__(v15--, 1);
        if (v19)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v24 = v23[3];
        if (((v24 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v25 = v8;
        v26 = v24 & 0xFFFFFFFFFFFFFFFELL;
        if (v26 <= 1)
        {
          v27 = 1;
        }

        else
        {
          v27 = v26;
        }

        _s10Foundation6LocaleVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Date>, MEMORY[0x1E6969530], MEMORY[0x1E69E6F90]);
        v28 = *(v6 + 72);
        v29 = v41;
        v14 = swift_allocObject();
        result = _swift_stdlib_malloc_size(v14);
        if (!v28)
        {
          goto LABEL_35;
        }

        v30 = result - v29;
        if (result - v29 == 0x8000000000000000 && v28 == -1)
        {
          goto LABEL_36;
        }

        v32 = v30 / v28;
        v14[2] = v27;
        v14[3] = 2 * (v30 / v28);
        v33 = v14 + v29;
        v34 = v23[3] >> 1;
        v35 = v34 * v28;
        if (v23[2])
        {
          if (v14 < v23 || v33 >= v23 + v41 + v35)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v14 != v23)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v23[2] = 0;
        }

        v22 = &v33[v35];
        v37 = (v32 & 0x7FFFFFFFFFFFFFFFLL) - v34;

        v6 = v39;
        v8 = v25;
        v21 = v45;
        v19 = __OFSUB__(v37, 1);
        v15 = v37 - 1;
        if (v19)
        {
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
          return result;
        }
      }

      v21(v22, v8, v5);
      v22 += *(v6 + 72);
      TimerIntervalTimelineSchedule.CountdownReducedFrequencyEntries.next()(v4);
      v21 = v45;
      v23 = v14;
      if (v42(v4, 1, v5) == 1)
      {
        goto LABEL_3;
      }
    }
  }

  v15 = 0;
LABEL_3:
  _s7SwiftUI29TimerIntervalTimelineScheduleV32CountdownReducedFrequencyEntriesVWOhTm_0(v44, type metadata accessor for TimerIntervalTimelineSchedule.CountdownReducedFrequencyEntries);
  result = outlined destroy of Locale?(v4, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], _s10Foundation6LocaleVSgMaTm_0);
  v17 = v14[3];
  if (v17 >= 2)
  {
    v18 = v17 >> 1;
    v19 = __OFSUB__(v18, v15);
    v20 = v18 - v15;
    if (v19)
    {
      goto LABEL_37;
    }

    v14[2] = v20;
  }

  return v14;
}

{
  _s10Foundation6LocaleVSgMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v62 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v54 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v70 = &v54 - v8;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v61 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v68 = &v54 - v13;
  v14 = type metadata accessor for TimerIntervalTimelineSchedule.CountupReducedFrequencyEntries(0);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v10 + 80);
  outlined init with copy of AlignedTimelineSchedule.Entries(a1, v17, type metadata accessor for TimerIntervalTimelineSchedule.CountupReducedFrequencyEntries);
  v63 = *(v15 + 32);
  outlined init with copy of Date?(&v17[v63], v6);
  v19 = *(v10 + 48);
  v20 = v6;
  v65 = v9;
  v21 = v19(v6, 1, v9);
  v22 = MEMORY[0x1E69E7CC0];
  if (v21 == 1)
  {
    v69 = 0;
    v23 = v65;
LABEL_29:
    outlined destroy of Locale?(v20, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], _s10Foundation6LocaleVSgMaTm_0);
    (*(v10 + 56))(v70, 1, 1, v23);
LABEL_31:
    v50 = v69;
    _s7SwiftUI29TimerIntervalTimelineScheduleV32CountdownReducedFrequencyEntriesVWOhTm_0(v17, type metadata accessor for TimerIntervalTimelineSchedule.CountupReducedFrequencyEntries);
    result = outlined destroy of Locale?(v70, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], _s10Foundation6LocaleVSgMaTm_0);
    v51 = *(v22 + 3);
    if (v51 < 2)
    {
      return v22;
    }

    v52 = v51 >> 1;
    v46 = __OFSUB__(v52, v50);
    v53 = v52 - v50;
    if (!v46)
    {
      *(v22 + 2) = v53;
      return v22;
    }
  }

  else
  {
    v69 = 0;
    v57 = (v18 + 32) & ~v18;
    v58 = v18;
    v71 = MEMORY[0x1E69E7CC0] + v57;
    v24 = *(v10 + 32);
    v59 = v19;
    v60 = (v10 + 8);
    v66 = v10 + 48;
    v67 = MEMORY[0x1E69E7CC0];
    v25 = v63;
    v23 = v65;
    v64 = v10;
    v55 = v20;
    v56 = v24;
    while (1)
    {
      v26 = v61;
      v27 = v20;
      v24(v61, v20, v23);
      v28 = v62;
      outlined init with copy of Date?(&v17[v25], v62);
      v29 = v17;
      TimerIntervalTimelineSchedule.CountupReducedFrequencyEntries.makeNext(current:)(v26);
      v30 = v70;
      (*v60)(v26, v23);
      outlined init with take of Date?(v28, v30);
      if (v19(v30, 1, v23) == 1)
      {
        v17 = v29;
        v22 = v67;
        goto LABEL_31;
      }

      result = (v24)(v68, v70, v23);
      v32 = v67;
      v33 = v69;
      if (v69)
      {
        v22 = v67;
        v17 = v29;
        v20 = v27;
      }

      else
      {
        v34 = *(v67 + 3);
        if (((v34 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_36;
        }

        v35 = v34 & 0xFFFFFFFFFFFFFFFELL;
        if (v35 <= 1)
        {
          v36 = 1;
        }

        else
        {
          v36 = v35;
        }

        _s10Foundation6LocaleVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Date>, MEMORY[0x1E6969530], MEMORY[0x1E69E6F90]);
        v37 = *(v64 + 72);
        v38 = v57;
        v22 = swift_allocObject();
        result = _swift_stdlib_malloc_size(v22);
        if (!v37)
        {
          goto LABEL_37;
        }

        v39 = result - v38;
        if (result - v38 == 0x8000000000000000 && v37 == -1)
        {
          goto LABEL_38;
        }

        v41 = v39 / v37;
        *(v22 + 2) = v36;
        *(v22 + 3) = 2 * (v39 / v37);
        v42 = &v22[v38];
        v43 = *(v32 + 3) >> 1;
        v44 = v43 * v37;
        if (*(v32 + 2))
        {
          if (v22 < v32 || v42 >= &v32[v38 + v44])
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v22 != v32)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          *(v32 + 2) = 0;
        }

        v71 = &v42[v44];
        v33 = (v41 & 0x7FFFFFFFFFFFFFFFLL) - v43;

        v20 = v55;
        v24 = v56;
        v17 = v29;
      }

      v46 = __OFSUB__(v33, 1);
      v47 = v33 - 1;
      v25 = v63;
      v10 = v64;
      if (v46)
      {
        break;
      }

      v69 = v47;
      v48 = v71;
      v23 = v65;
      v24(v71, v68, v65);
      v71 = v48 + *(v10 + 72);
      outlined init with copy of Date?(&v17[v25], v20);
      v19 = v59;
      v49 = v59(v20, 1, v23);
      v67 = v22;
      if (v49 == 1)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v106 = type metadata accessor for Calendar.SearchDirection();
  v118 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v103 = &v84 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for Calendar.RepeatedTimePolicy();
  v92 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v108 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for Calendar.MatchingPolicy();
  v4 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v105 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for Calendar();
  v89 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v7 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10Foundation6LocaleVSgMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v84 - v12;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v85 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v84 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v101 = &v84 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v115 = &v84 - v23;
  v24 = type metadata accessor for EveryMinuteTimelineSchedule.Entries(0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = *(v15 + 80);
  v27 = a1;
  v28 = &v84 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AlignedTimelineSchedule.Entries(v27, v28, type metadata accessor for EveryMinuteTimelineSchedule.Entries);
  outlined init with copy of Date?(v28, v13);
  v113 = *(v15 + 48);
  v114 = v15 + 48;
  v29 = v113(v13, 1, v14);
  v30 = MEMORY[0x1E69E7CC0];
  if (v29 != 1)
  {
    v116 = 0;
    v84 = v26;
    v36 = (v26 + 32) & ~v26;
    v38 = v15 + 32;
    v37 = *(v15 + 32);
    v86 = v36;
    v117 = MEMORY[0x1E69E7CC0] + v36;
    v98 = *MEMORY[0x1E69698D0];
    v97 = (v4 + 104);
    v96 = (v92 + 13);
    v95 = (v118 + 104);
    v94 = *MEMORY[0x1E69699C8];
    v93 = (v118 + 8);
    ++v92;
    v91 = *MEMORY[0x1E6969998];
    v90 = (v4 + 8);
    ++v89;
    v88 = (v15 + 56);
    v39 = MEMORY[0x1E69E7CC0];
    v40 = v15;
    v41 = v37;
    v99 = v40;
    v100 = v13;
    v111 = v19;
    v112 = v28;
    v109 = v37;
    v110 = v38;
    v87 = v14;
    while (1)
    {
      v118 = v39;
      v41(v19, v13, v14);
      static Calendar.current.getter();
      v42 = v7;
      if (one-time initialization token for zeroSecondComponents != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for DateComponents();
      __swift_project_value_buffer(v43, static EveryMinuteTimelineSchedule.Entries.zeroSecondComponents);
      v44 = v105;
      v45 = v107;
      (*v97)(v105, v98, v107);
      v46 = v108;
      v47 = v102;
      (*v96)(v108, v94, v102);
      v48 = v103;
      v49 = v106;
      (*v95)(v103, v91, v106);
      Calendar.nextDate(after:matching:matchingPolicy:repeatedTimePolicy:direction:)();
      (*v93)(v48, v49);
      (*v92)(v46, v47);
      (*v90)(v44, v45);
      (*v89)(v42, v104);
      v14 = v87;
      v50 = v42;
      if (v113(v10, 1, v87) == 1)
      {
        v51 = MEMORY[0x1E6969530];
        v52 = MEMORY[0x1E69E6720];
        outlined destroy of Locale?(v10, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], _s10Foundation6LocaleVSgMaTm_0);
        v53 = v112;
        outlined destroy of Locale?(v112, &lazy cache variable for type metadata for Date?, v51, v52, _s10Foundation6LocaleVSgMaTm_0);
        v54 = 1;
        v55 = v109;
      }

      else
      {
        v56 = v85;
        v55 = v109;
        v109(v85, v10, v14);
        v53 = v112;
        outlined destroy of Locale?(v112, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], _s10Foundation6LocaleVSgMaTm_0);
        v55(v53, v56, v14);
        v54 = 0;
      }

      (*v88)(v53, v54, 1, v14);
      v57 = v101;
      v58 = v111;
      v55(v101, v111, v14);
      result = (v55)(v115, v57, v14);
      v59 = v99;
      v60 = v100;
      if (v116)
      {
        v41 = v55;
        v61 = v118;
        v62 = v116 - 1;
        if (__OFSUB__(v116, 1))
        {
          goto LABEL_35;
        }

        goto LABEL_33;
      }

      v63 = *(v118 + 24);
      if (((v63 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_36;
      }

      v64 = v63 & 0xFFFFFFFFFFFFFFFELL;
      if (v64 <= 1)
      {
        v65 = 1;
      }

      else
      {
        v65 = v64;
      }

      _s10Foundation6LocaleVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Date>, MEMORY[0x1E6969530], MEMORY[0x1E69E6F90]);
      v66 = *(v59 + 72);
      v67 = v86;
      v61 = swift_allocObject();
      result = _swift_stdlib_malloc_size(v61);
      if (!v66)
      {
        goto LABEL_37;
      }

      v68 = result - v67;
      if (result - v67 == 0x8000000000000000 && v66 == -1)
      {
        goto LABEL_38;
      }

      v69 = v68 / v66;
      v61[2] = v65;
      v61[3] = 2 * (v68 / v66);
      v70 = v61 + v67;
      v71 = v118;
      v72 = *(v118 + 24) >> 1;
      v73 = v72 * v66;
      if (*(v118 + 16))
      {
        break;
      }

LABEL_32:
      v117 = &v70[v73];
      v75 = (v69 & 0x7FFFFFFFFFFFFFFFLL) - v72;

      v76 = v75;
      v58 = v111;
      v41 = v109;
      v34 = __OFSUB__(v76, 1);
      v62 = v76 - 1;
      if (v34)
      {
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        return result;
      }

LABEL_33:
      v116 = v62;
      v77 = v58;
      v78 = v61;
      v79 = v60;
      v80 = v10;
      v81 = v50;
      v82 = v117;
      v41(v117, v115, v14);
      v117 = v82 + *(v59 + 72);
      v7 = v81;
      v10 = v80;
      v13 = v79;
      v30 = v78;
      v19 = v77;
      v28 = v112;
      outlined init with copy of Date?(v112, v13);
      v83 = v113(v13, 1, v14);
      v39 = v30;
      if (v83 == 1)
      {
        goto LABEL_3;
      }
    }

    if (v61 < v118 || v70 >= v118 + v86 + v73)
    {
      v74 = v68 / v66;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (v61 == v118)
      {
LABEL_31:
        *(v71 + 16) = 0;
        goto LABEL_32;
      }

      v74 = v68 / v66;
      swift_arrayInitWithTakeBackToFront();
    }

    v69 = v74;
    v71 = v118;
    goto LABEL_31;
  }

  v116 = 0;
LABEL_3:
  outlined destroy of Locale?(v13, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], _s10Foundation6LocaleVSgMaTm_0);
  result = _s7SwiftUI29TimerIntervalTimelineScheduleV32CountdownReducedFrequencyEntriesVWOhTm_0(v28, type metadata accessor for EveryMinuteTimelineSchedule.Entries);
  v32 = v30[3];
  if (v32 >= 2)
  {
    v33 = v32 >> 1;
    v34 = __OFSUB__(v33, v116);
    v35 = v33 - v116;
    if (v34)
    {
      goto LABEL_39;
    }

    v30[2] = v35;
  }

  return v30;
}

{
  _s10Foundation6LocaleVSgMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v37 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PeriodicTimelineSchedule.Entries(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *(v6 + 80);
  v12 = MEMORY[0x1E69E7CC0];
  v41 = (v40 + 32) & ~v40;
  v13 = MEMORY[0x1E69E7CC0] + v41;
  outlined init with copy of AlignedTimelineSchedule.Entries(a1, v11, type metadata accessor for PeriodicTimelineSchedule.Entries);
  v14 = 0;
  v15 = *(v6 + 16);
  v45 = v6 + 16;
  v46 = v11;
  v43 = (v6 + 56);
  v44 = v15;
  v42 = (v6 + 48);
  v16 = (v6 + 32);
  v38 = v8;
  v39 = v6;
  v15(v4, v46, v5);
  while (1)
  {
    (*v43)(v4, 0, 1, v5);
    static Date.+= infix(_:_:)();
    if ((*v42)(v4, 1, v5) == 1)
    {
      goto LABEL_28;
    }

    v19 = *v16;
    result = (*v16)(v8, v4, v5);
    if (v14)
    {
      v17 = v12;
      v18 = __OFSUB__(v14--, 1);
      if (v18)
      {
        break;
      }

      goto LABEL_3;
    }

    v21 = v12[3];
    if (((v21 >> 1) + 0x4000000000000000) < 0)
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v22 = v21 & 0xFFFFFFFFFFFFFFFELL;
    if (v22 <= 1)
    {
      v23 = 1;
    }

    else
    {
      v23 = v22;
    }

    _s10Foundation6LocaleVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Date>, MEMORY[0x1E6969530], MEMORY[0x1E69E6F90]);
    v24 = *(v6 + 72);
    v25 = v41;
    v17 = swift_allocObject();
    result = _swift_stdlib_malloc_size(v17);
    if (!v24)
    {
      goto LABEL_33;
    }

    v26 = result - v25;
    if (result - v25 == 0x8000000000000000 && v24 == -1)
    {
      goto LABEL_34;
    }

    v28 = v26 / v24;
    v17[2] = v23;
    v17[3] = 2 * (v26 / v24);
    v29 = v17 + v25;
    v30 = v12[3] >> 1;
    v31 = v30 * v24;
    if (v12[2])
    {
      if (v17 < v12 || v29 >= v12 + v41 + v31)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v17 != v12)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v12[2] = 0;
    }

    v13 = &v29[v31];
    v33 = (v28 & 0x7FFFFFFFFFFFFFFFLL) - v30;

    v8 = v38;
    v6 = v39;
    v18 = __OFSUB__(v33, 1);
    v14 = v33 - 1;
    if (v18)
    {
      break;
    }

LABEL_3:
    v19(v13, v8, v5);
    v13 += *(v6 + 72);
    v12 = v17;
    v44(v4, v46, v5);
  }

  __break(1u);
LABEL_28:
  _s7SwiftUI29TimerIntervalTimelineScheduleV32CountdownReducedFrequencyEntriesVWOhTm_0(v46, type metadata accessor for PeriodicTimelineSchedule.Entries);
  result = outlined destroy of Locale?(v4, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], _s10Foundation6LocaleVSgMaTm_0);
  v34 = v12[3];
  if (v34 < 2)
  {
    return v12;
  }

  v35 = v34 >> 1;
  v18 = __OFSUB__(v35, v14);
  v36 = v35 - v14;
  if (!v18)
  {
    v12[2] = v36;
    return v12;
  }

LABEL_35:
  __break(1u);
  return result;
}

{
  v99 = type metadata accessor for Calendar.SearchDirection();
  v110 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v96 = &v75 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for Calendar.RepeatedTimePolicy();
  v107 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v102 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for Calendar.MatchingPolicy();
  v4 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v100 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for Calendar();
  v105 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v95 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10Foundation6LocaleVSgMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v94 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v75 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v75 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v109 = &v75 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v93 = &v75 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v108 = &v75 - v20;
  v92 = type metadata accessor for AlignedTimelineSchedule.Entries();
  MEMORY[0x1EEE9AC00](v92);
  v22 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v13 + 80);
  outlined init with copy of AlignedTimelineSchedule.Entries(a1, v22, type metadata accessor for AlignedTimelineSchedule.Entries);
  v111 = v22;
  outlined init with copy of Date?(v22, v11);
  v24 = *(v13 + 48);
  v25 = v24(v11, 1, v12);
  v26 = MEMORY[0x1E69E7CC0];
  if (v25 != 1)
  {
    v27 = 0;
    v89 = v23;
    v76 = (v23 + 32) & ~v23;
    v28 = MEMORY[0x1E69E7CC0] + v76;
    v29 = *(v13 + 32);
    v88 = *MEMORY[0x1E69698D0];
    v87 = (v4 + 104);
    v86 = *MEMORY[0x1E69699C8];
    v85 = (v107 + 104);
    v84 = (v110 + 104);
    v83 = (v110 + 8);
    v82 = (v107 + 8);
    v81 = *MEMORY[0x1E6969998];
    v80 = (v4 + 8);
    v30 = v29;
    v79 = (v105 + 8);
    v78 = (v13 + 56);
    v31 = MEMORY[0x1E69E7CC0];
    v91 = v11;
    v90 = v13;
    v103 = v13 + 32;
    v104 = v13 + 48;
    v106 = v24;
    v77 = v29;
    while (1)
    {
      v105 = v28;
      v110 = v31;
      v107 = v27;
      v30(v109, v11, v12);
      v32 = v95;
      static Calendar.current.getter();
      v33 = v100;
      v34 = v101;
      (*v87)(v100, v88, v101);
      v35 = v102;
      v36 = v12;
      v37 = v97;
      (*v85)(v102, v86, v97);
      v38 = v96;
      v39 = v99;
      (*v84)(v96, v81, v99);
      v40 = v94;
      Calendar.nextDate(after:matching:matchingPolicy:repeatedTimePolicy:direction:)();
      (*v83)(v38, v39);
      v41 = v37;
      v12 = v36;
      (*v82)(v35, v41);
      v42 = v34;
      v43 = v106;
      (*v80)(v33, v42);
      (*v79)(v32, v98);
      if (v43(v40, 1, v36) == 1)
      {
        v44 = MEMORY[0x1E6969530];
        v45 = MEMORY[0x1E69E6720];
        outlined destroy of Locale?(v40, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], _s10Foundation6LocaleVSgMaTm_0);
        v46 = v45;
        v43 = v106;
        outlined destroy of Locale?(v111, &lazy cache variable for type metadata for Date?, v44, v46, _s10Foundation6LocaleVSgMaTm_0);
        v47 = 1;
        v30 = v77;
      }

      else
      {
        v48 = v75;
        v49 = v77;
        v77(v75, v40, v12);
        v50 = v111;
        outlined destroy of Locale?(v111, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], _s10Foundation6LocaleVSgMaTm_0);
        v49(v50, v48, v12);
        v47 = 0;
        v30 = v49;
      }

      (*v78)(v111, v47, 1, v12);
      v51 = v93;
      v30(v93, v109, v12);
      result = (v30)(v108, v51, v12);
      v11 = v91;
      v53 = v90;
      if (v107)
      {
        v26 = v110;
        v54 = v105;
        v27 = v107 - 1;
        if (__OFSUB__(v107, 1))
        {
          goto LABEL_34;
        }

        goto LABEL_29;
      }

      v55 = *(v110 + 24);
      if (((v55 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_35;
      }

      v56 = v30;
      v57 = v55 & 0xFFFFFFFFFFFFFFFELL;
      if (v57 <= 1)
      {
        v58 = 1;
      }

      else
      {
        v58 = v57;
      }

      _s10Foundation6LocaleVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Date>, MEMORY[0x1E6969530], MEMORY[0x1E69E6F90]);
      v59 = *(v53 + 72);
      v60 = v76;
      v26 = swift_allocObject();
      result = _swift_stdlib_malloc_size(v26);
      if (!v59)
      {
        goto LABEL_36;
      }

      v61 = result - v60;
      if (result - v60 == 0x8000000000000000 && v59 == -1)
      {
        goto LABEL_37;
      }

      v63 = v61 / v59;
      v26[2] = v58;
      v26[3] = 2 * (v61 / v59);
      v64 = v26 + v60;
      v65 = v110;
      v66 = *(v110 + 24) >> 1;
      v67 = v66 * v59;
      v30 = v56;
      if (*(v110 + 16))
      {
        break;
      }

LABEL_28:
      v54 = &v64[v67];
      v69 = (v63 & 0x7FFFFFFFFFFFFFFFLL) - v66;

      v43 = v106;
      v70 = __OFSUB__(v69, 1);
      v27 = v69 - 1;
      if (v70)
      {
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        return result;
      }

LABEL_29:
      v30(v54, v108, v12);
      v28 = &v54[*(v53 + 72)];
      outlined init with copy of Date?(v111, v11);
      v71 = v43(v11, 1, v12);
      v31 = v26;
      if (v71 == 1)
      {
        goto LABEL_30;
      }
    }

    if (v26 < v110 || v64 >= v110 + v76 + v67)
    {
      v68 = v61 / v59;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (v26 == v110)
      {
LABEL_27:
        *(v65 + 16) = 0;
        goto LABEL_28;
      }

      v68 = v61 / v59;
      swift_arrayInitWithTakeBackToFront();
    }

    v63 = v68;
    v65 = v110;
    goto LABEL_27;
  }

  v27 = 0;
LABEL_30:
  outlined destroy of Locale?(v11, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], _s10Foundation6LocaleVSgMaTm_0);
  result = _s7SwiftUI29TimerIntervalTimelineScheduleV32CountdownReducedFrequencyEntriesVWOhTm_0(v111, type metadata accessor for AlignedTimelineSchedule.Entries);
  v72 = v26[3];
  if (v72 >= 2)
  {
    v73 = v72 >> 1;
    v70 = __OFSUB__(v73, v27);
    v74 = v73 - v27;
    if (v70)
    {
      goto LABEL_38;
    }

    v26[2] = v74;
  }

  return v26;
}

{
  v92 = type metadata accessor for Calendar.SearchDirection();
  v2 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v90 = v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for Calendar.RepeatedTimePolicy();
  v4 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v87 = v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for Calendar.MatchingPolicy();
  v6 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v95 = v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for Calendar();
  v100 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v93 = v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10Foundation6LocaleVSgMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v91 = v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v69 - v12;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v88 = v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v69 - v18;
  v86 = type metadata accessor for TimerTimelineSchedule.ReducedFrequencyEntries(0);
  MEMORY[0x1EEE9AC00](v86);
  v21 = v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v15 + 80);
  outlined init with copy of AlignedTimelineSchedule.Entries(a1, v21, type metadata accessor for TimerTimelineSchedule.ReducedFrequencyEntries);
  outlined init with copy of Date?(v21, v13);
  v84 = *(v15 + 48);
  v85 = v15 + 48;
  v23 = v84(v13, 1, v14);
  v24 = MEMORY[0x1E69E7CC0];
  if (v23 != 1)
  {
    v98 = 0;
    v69[1] = v22;
    v69[0] = (v22 + 32) & ~v22;
    v25 = (MEMORY[0x1E69E7CC0] + v69[0]);
    v26 = v4;
    v28 = v15 + 32;
    v27 = *(v15 + 32);
    v82 = *MEMORY[0x1E69698D0];
    v81 = (v6 + 104);
    v80 = *MEMORY[0x1E69699C8];
    v79 = (v26 + 104);
    v78 = (v2 + 104);
    v77 = (v2 + 8);
    v76 = *MEMORY[0x1E6969998];
    v75 = (v26 + 8);
    v74 = (v6 + 8);
    v29 = v27;
    v73 = (v100 + 8);
    v30 = MEMORY[0x1E69E7CC0];
    v70 = v13;
    v96 = v14;
    v71 = v15;
    v83 = v19;
    v72 = v27;
    while (1)
    {
      v99 = v25;
      v100 = v30;
      v31 = v88;
      v29(v88, v13, v14);
      v32 = v93;
      static Calendar.current.getter();
      v33 = v95;
      (*v81)(v95, v82, v97);
      v34 = v87;
      v35 = v89;
      (*v79)(v87, v80, v89);
      v36 = v28;
      v37 = v90;
      v38 = v21;
      v39 = v92;
      (*v78)(v90, v76, v92);
      v40 = v91;
      Calendar.nextDate(after:matching:matchingPolicy:repeatedTimePolicy:direction:)();
      v41 = v37;
      v28 = v36;
      v29 = v72;
      v42 = v39;
      v21 = v38;
      (*v77)(v41, v42);
      v43 = v35;
      v44 = v83;
      (*v75)(v34, v43);
      (*v74)(v33, v97);
      (*v73)(v32, v94);
      v45 = v40;
      v14 = v96;
      outlined assign with take of Date?(v45, v38);
      result = (v29)(v44, v31, v14);
      v47 = v98;
      if (v98)
      {
        v24 = v100;
        v48 = v71;
        goto LABEL_24;
      }

      v49 = *(v100 + 24);
      if (((v49 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_31;
      }

      v50 = v49 & 0xFFFFFFFFFFFFFFFELL;
      if (v50 <= 1)
      {
        v51 = 1;
      }

      else
      {
        v51 = v50;
      }

      _s10Foundation6LocaleVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Date>, MEMORY[0x1E6969530], MEMORY[0x1E69E6F90]);
      v48 = v71;
      v52 = *(v71 + 72);
      v53 = v69[0];
      v24 = swift_allocObject();
      result = _swift_stdlib_malloc_size(v24);
      if (!v52)
      {
        goto LABEL_32;
      }

      v54 = result - v53;
      if (result - v53 == 0x8000000000000000 && v52 == -1)
      {
        goto LABEL_33;
      }

      v56 = v53;
      v57 = v54 / v52;
      v24[2] = v51;
      v24[3] = 2 * (v54 / v52);
      v58 = v24 + v53;
      v59 = v100;
      v60 = *(v100 + 24) >> 1;
      v61 = v60 * v52;
      if (*(v100 + 16))
      {
        break;
      }

LABEL_23:
      v99 = &v58[v61];
      v47 = (v57 & 0x7FFFFFFFFFFFFFFFLL) - v60;

      v14 = v96;
LABEL_24:
      v62 = __OFSUB__(v47, 1);
      v63 = v47 - 1;
      v13 = v70;
      if (v62)
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        return result;
      }

      v98 = v63;
      v64 = v99;
      v29(v99, v44, v14);
      v25 = &v64[*(v48 + 72)];
      outlined init with copy of Date?(v21, v13);
      v65 = v84(v13, 1, v14);
      v30 = v24;
      if (v65 == 1)
      {
        goto LABEL_26;
      }
    }

    if (v24 < v100 || v58 >= v100 + v56 + v61)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (v24 == v100)
      {
LABEL_22:
        *(v59 + 16) = 0;
        goto LABEL_23;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v59 = v100;
    goto LABEL_22;
  }

  v98 = 0;
LABEL_26:
  outlined destroy of Locale?(v13, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], _s10Foundation6LocaleVSgMaTm_0);
  result = _s7SwiftUI29TimerIntervalTimelineScheduleV32CountdownReducedFrequencyEntriesVWOhTm_0(v21, type metadata accessor for TimerTimelineSchedule.ReducedFrequencyEntries);
  v66 = v24[3];
  if (v66 >= 2)
  {
    v67 = v66 >> 1;
    v62 = __OFSUB__(v67, v98);
    v68 = v67 - v98;
    if (v62)
    {
      goto LABEL_34;
    }

    v24[2] = v68;
  }

  return v24;
}

{
  _s10Foundation6LocaleVSgMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v70 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v62 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v62 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v68 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v62 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v75 = &v62 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v80 = &v62 - v19;
  v74 = type metadata accessor for EverySecondEntries(0);
  MEMORY[0x1EEE9AC00](v74);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v11 + 80);
  outlined init with copy of AlignedTimelineSchedule.Entries(a1, v21, type metadata accessor for EverySecondEntries);
  v82 = v21;
  outlined init with copy of Date?(v21, v9);
  v23 = *(v11 + 48);
  v76 = v9;
  v69 = v10;
  v24 = v23(v9, 1, v10);
  v25 = MEMORY[0x1E69E7CC0];
  if (v24 != 1)
  {
    v81 = 0;
    v66 = v22;
    v29 = (v22 + 32) & ~v22;
    v77 = v11;
    v78 = v15;
    v30 = *(v11 + 32);
    v64 = v6;
    v65 = v29;
    v79 = MEMORY[0x1E69E7CC0] + v29;
    v67 = (v11 + 8);
    v72 = v11 + 48;
    v73 = (v11 + 56);
    v26 = v82;
    v27 = v76;
    v31 = v69;
    v71 = v23;
    v63 = v30;
    while (1)
    {
      v30(v15, v27, v31);
      outlined init with copy of Date?(v26 + *(v74 + 20), v6);
      if (v23(v6, 1, v31) == 1)
      {
        outlined destroy of Locale?(v6, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], _s10Foundation6LocaleVSgMaTm_0);
        v32 = v31;
        v33 = v79;
      }

      else
      {
        v34 = v68;
        v30(v68, v6, v31);
        lazy protocol witness table accessor for type SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.Variants and conformance SizeFittingTextCache<A, B>.Variants(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530]);
        v35 = dispatch thunk of static Comparable.>= infix(_:_:)();
        v36 = v34;
        v15 = v78;
        (*v67)(v36, v31);
        v32 = v31;
        v33 = v79;
        if (v35)
        {
          v37 = v82;
          outlined destroy of Locale?(v82, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], _s10Foundation6LocaleVSgMaTm_0);
          (*v73)(v37, 1, 1, v31);
          goto LABEL_9;
        }
      }

      v38 = v70;
      Date.addingTimeInterval(_:)();
      (*v73)(v38, 0, 1, v32);
      outlined assign with take of Date?(v38, v82);
LABEL_9:
      v39 = v75;
      v30(v75, v15, v32);
      result = (v30)(v80, v39, v32);
      if (v81)
      {
        v41 = v25;
        v42 = v76;
        v43 = v81 - 1;
        if (__OFSUB__(v81, 1))
        {
          goto LABEL_35;
        }
      }

      else
      {
        v44 = v25[3];
        if (((v44 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_36;
        }

        v45 = v44 & 0xFFFFFFFFFFFFFFFELL;
        if (v45 <= 1)
        {
          v46 = 1;
        }

        else
        {
          v46 = v45;
        }

        _s10Foundation6LocaleVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Date>, MEMORY[0x1E6969530], MEMORY[0x1E69E6F90]);
        v47 = *(v77 + 72);
        v48 = v65;
        v41 = swift_allocObject();
        result = _swift_stdlib_malloc_size(v41);
        if (!v47)
        {
          goto LABEL_37;
        }

        v49 = result - v48;
        if (result - v48 == 0x8000000000000000 && v47 == -1)
        {
          goto LABEL_38;
        }

        v51 = v49 / v47;
        v41[2] = v46;
        v41[3] = 2 * (v49 / v47);
        v52 = v41 + v48;
        v53 = v25[3] >> 1;
        v54 = v53 * v47;
        if (v25[2])
        {
          if (v41 < v25 || v52 >= v25 + v48 + v54)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v41 != v25)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v25[2] = 0;
        }

        v33 = &v52[v54];
        v55 = (v51 & 0x7FFFFFFFFFFFFFFFLL) - v53;

        v42 = v76;
        v30 = v63;
        v6 = v64;
        v15 = v78;
        v32 = v69;
        v56 = __OFSUB__(v55, 1);
        v43 = v55 - 1;
        if (v56)
        {
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
          return result;
        }
      }

      v81 = v43;
      v30(v33, v80, v32);
      v79 = &v33[*(v77 + 72)];
      v26 = v82;
      outlined init with copy of Date?(v82, v42);
      v57 = v32;
      v28 = v41;
      v31 = v32;
      v23 = v71;
      v58 = v71(v42, 1, v57);
      v27 = v42;
      v25 = v28;
      if (v58 == 1)
      {
        goto LABEL_31;
      }
    }
  }

  v81 = 0;
  v26 = v82;
  v27 = v76;
  v28 = MEMORY[0x1E69E7CC0];
LABEL_31:
  outlined destroy of Locale?(v27, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], _s10Foundation6LocaleVSgMaTm_0);
  result = _s7SwiftUI29TimerIntervalTimelineScheduleV32CountdownReducedFrequencyEntriesVWOhTm_0(v26, type metadata accessor for EverySecondEntries);
  v59 = v28[3];
  if (v59 >= 2)
  {
    v60 = v59 >> 1;
    v56 = __OFSUB__(v60, v81);
    v61 = v60 - v81;
    if (v56)
    {
      goto LABEL_39;
    }

    v28[2] = v61;
  }

  return v28;
}

_BYTE *specialized _copySequenceToContiguousArray<A>(_:)(uint64_t a1)
{
  v56 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 144);
  v3 = v54;
  outlined init with copy of _LazyLayout_Subviews(a1, v54);
  v55 = v2;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v40 = 0u;
  v34 = v2;
  outlined init with copy of _LazyLayout_Subviews(v54, v38);
  v35[2] = v54;
  v35[3] = &v40;
  v4 = swift_allocObject();
  v5 = v2 + v39;
  if (!__OFADD__(v2, v39))
  {
    v1 = 0;
    v3 = MEMORY[0x1E69E7CC0];
    v6 = (MEMORY[0x1E69E7CC0] + 32);
    v7 = v35;
    v31[1] = 32;
    while (1)
    {
      *(v4 + 16) = v5;
      v33[0] = v38[14];
      v33[1] = v38[15];
      v32 = 2;
      v36 = v33;
      v37 = 1;
      MEMORY[0x1EEE9AC00](v4);
      v28[0] = v38;
      v28[1] = v8;
      v29 = partial apply for closure #1 in _LazyLayout_Subviews_V1.SubviewsIterator.next();
      v30 = v7;

      _ViewList_Node.applyNodes(from:style:transform:to:)(&v34, &v32, &v36, partial apply for closure #1 in closure #1 in _LazyLayout_Subviews.apply(from:style:to:), &v31[-6]);

      outlined destroy of _LazyLayout_Subviews(v38);
      if (!v40)
      {
        goto LABEL_19;
      }

      v51 = v44;
      v52 = v45;
      v53 = v46;
      v47 = v40;
      v48 = v41;
      v49 = v42;
      v50 = v43;
      if (!v1)
      {
        v9 = *(v3 + 3);
        if (((v9 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_24;
        }

        v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
        if (v10 <= 1)
        {
          v11 = 1;
        }

        else
        {
          v11 = v10;
        }

        type metadata accessor for EmptyCollection<Character>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_LazyLayout_Subview_V1>, &type metadata for _LazyLayout_Subview_V1, MEMORY[0x1E69E6F90]);
        v12 = swift_allocObject();
        v13 = (_swift_stdlib_malloc_size(v12) - 32) / 112;
        v12[2] = v11;
        v12[3] = 2 * v13;
        v14 = (v12 + 4);
        v15 = *(v3 + 3) >> 1;
        if (*(v3 + 2))
        {
          v16 = v3 + 32;
          if (v12 != v3 || v14 >= v16 + 112 * v15)
          {
            memmove(v12 + 4, v16, 112 * v15);
          }

          *(v3 + 2) = 0;
        }

        v6 = (v14 + 112 * v15);
        v1 = (v13 & 0x7FFFFFFFFFFFFFFFLL) - v15;

        v3 = v12;
      }

      v17 = __OFSUB__(v1--, 1);
      if (v17)
      {
        break;
      }

      v18 = v48;
      *v6 = v47;
      v6[1] = v18;
      v19 = v49;
      v20 = v50;
      v6[6] = v53;
      v21 = v52;
      v6[4] = v51;
      v6[5] = v21;
      v6[2] = v19;
      v6[3] = v20;
      v6 += 7;
      v22 = v55;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v40 = 0u;
      v34 = v55;
      v23 = outlined init with copy of _LazyLayout_Subviews(v54, v38);
      MEMORY[0x1EEE9AC00](v23);
      v7 = v28;
      v29 = v54;
      v30 = &v40;
      v4 = swift_allocObject();
      v5 = v22 + v39;
      if (__OFADD__(v22, v39))
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

LABEL_18:
  __break(1u);
LABEL_19:
  outlined destroy of _LazyLayout_Subviews_V1.SubviewsIterator(v54);
  outlined destroy of Locale?(&v40, &lazy cache variable for type metadata for _LazyLayout_Subview_V1?, &type metadata for _LazyLayout_Subview_V1, MEMORY[0x1E69E6720], type metadata accessor for EmptyCollection<Character>);
  v24 = *(v3 + 3);
  if (v24 >= 2)
  {
    v25 = v24 >> 1;
    v17 = __OFSUB__(v25, v1);
    v26 = v25 - v1;
    if (v17)
    {
      goto LABEL_25;
    }

    *(v3 + 2) = v26;
  }

  return v3;
}

uint64_t specialized _copySequenceToContiguousArray<A>(_:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = v1 + 56;
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v1 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  v11 = (MEMORY[0x1E69E7CC0] + 32);
  v31 = v7;
  if (v5)
  {
    while (1)
    {
      v12 = v9;
LABEL_8:
      v13 = (*(v7 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v5)))));
      v14 = v13[1];
      if (v14 < 0)
      {
        break;
      }

      v15 = *v13;
      if (!v8)
      {
        v16 = v10[3];
        if (((v16 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_31;
        }

        v32 = v15;
        v33 = v10;
        v17 = v16 & 0xFFFFFFFFFFFFFFFELL;
        if (v17 <= 1)
        {
          v18 = 1;
        }

        else
        {
          v18 = v17;
        }

        _s10Foundation6LocaleVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AttributedStringKey.Type>, type metadata accessor for AttributedStringKey.Type, MEMORY[0x1E69E6F90]);
        v10 = swift_allocObject();
        v19 = _swift_stdlib_malloc_size(v10);
        v20 = v33;
        v21 = v19 - 32;
        if (v19 < 32)
        {
          v21 = v19 - 17;
        }

        v22 = v21 >> 4;
        v10[2] = v18;
        v10[3] = 2 * (v21 >> 4);
        v23 = (v10 + 4);
        v24 = v33[3] >> 1;
        if (v33[2])
        {
          v25 = v33 + 4;
          if (v10 != v33 || v23 >= v25 + 16 * v24)
          {
            memmove(v10 + 4, v25, 16 * v24);
            v20 = v33;
          }

          v20[2] = 0;
        }

        v11 = (v23 + 16 * v24);
        v8 = (v22 & 0x7FFFFFFFFFFFFFFFLL) - v24;

        v7 = v31;
        v15 = v32;
      }

      v26 = __OFSUB__(v8--, 1);
      if (v26)
      {
        goto LABEL_30;
      }

      v5 &= v5 - 1;
      *v11 = v15;
      v11[1] = v14;
      v11 += 2;
      v9 = v12;
      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
    while (1)
    {
LABEL_5:
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v6)
      {
        break;
      }

      v5 = *(v2 + 8 * v12);
      ++v9;
      if (v5)
      {
        goto LABEL_8;
      }
    }

    v27 = v10[3];
    if (v27 < 2)
    {
      return v10;
    }

    v28 = v27 >> 1;
    v26 = __OFSUB__(v28, v8);
    v29 = v28 - v8;
    if (!v26)
    {
      v10[2] = v29;
      return v10;
    }

LABEL_32:
    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v1 = *a1;
  v2 = v1 + 64;
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  v11 = (MEMORY[0x1E69E7CC0] + 32);
  v31 = v7;
  if (v5)
  {
    while (1)
    {
      v12 = v9;
LABEL_8:
      v13 = (*(v7 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v5)))));
      v14 = v13[1];
      if (v14 < 0)
      {
        break;
      }

      v15 = *v13;
      if (!v8)
      {
        v16 = v10[3];
        if (((v16 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_31;
        }

        v32 = v15;
        v33 = v10;
        v17 = v16 & 0xFFFFFFFFFFFFFFFELL;
        if (v17 <= 1)
        {
          v18 = 1;
        }

        else
        {
          v18 = v17;
        }

        _s10Foundation6LocaleVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AttributedStringKey.Type>, type metadata accessor for AttributedStringKey.Type, MEMORY[0x1E69E6F90]);
        v10 = swift_allocObject();
        v19 = _swift_stdlib_malloc_size(v10);
        v20 = v33;
        v21 = v19 - 32;
        if (v19 < 32)
        {
          v21 = v19 - 17;
        }

        v22 = v21 >> 4;
        v10[2] = v18;
        v10[3] = 2 * (v21 >> 4);
        v23 = (v10 + 4);
        v24 = v33[3] >> 1;
        if (v33[2])
        {
          v25 = v33 + 4;
          if (v10 != v33 || v23 >= v25 + 16 * v24)
          {
            memmove(v10 + 4, v25, 16 * v24);
            v20 = v33;
          }

          v20[2] = 0;
        }

        v11 = (v23 + 16 * v24);
        v8 = (v22 & 0x7FFFFFFFFFFFFFFFLL) - v24;

        v7 = v31;
        v15 = v32;
      }

      v26 = __OFSUB__(v8--, 1);
      if (v26)
      {
        goto LABEL_30;
      }

      v5 &= v5 - 1;
      *v11 = v15;
      v11[1] = v14;
      v11 += 2;
      v9 = v12;
      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
    while (1)
    {
LABEL_5:
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v6)
      {
        break;
      }

      v5 = *(v2 + 8 * v12);
      ++v9;
      if (v5)
      {
        goto LABEL_8;
      }
    }

    v27 = v10[3];
    if (v27 < 2)
    {
      return v10;
    }

    v28 = v27 >> 1;
    v26 = __OFSUB__(v28, v8);
    v29 = v28 - v8;
    if (!v26)
    {
      v10[2] = v29;
      return v10;
    }

LABEL_32:
    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized _copySequenceToContiguousArray<A>(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a2;
  v38[2] = a1;
  v39 = a2;
  v40 = a3;
  if (*(a2 + 16))
  {

    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v9 = (MEMORY[0x1E69E7CC0] + 32);
    while (1)
    {
      v10 = 0;
      v11 = (v6 + 56);
      v12 = 1 << *(v6 + 32);
      v13 = (v12 + 63) >> 6;
      while (1)
      {
        v15 = *v11++;
        v14 = v15;
        if (v15)
        {
          break;
        }

        v10 -= 64;
        if (!--v13)
        {
          goto LABEL_8;
        }
      }

      v12 = __clz(__rbit64(v14)) - v10;
LABEL_8:
      v4 = specialized Set._Variant.remove(at:)(v12, *(v6 + 36));
      v3 = v16;
      if (v16 < 0)
      {
        goto LABEL_36;
      }

      specialized Set._Variant.insert(_:)(v38, v4, v16);
      outlined consume of AttributedString.AnyAttribute(v38[0], v38[1]);
      if (*(a3 + 16))
      {
        v17 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v3);
        if (v18)
        {
          v38[0] = *(*(a3 + 56) + 8 * v17);
          v19 = v38[0];
          swift_bridgeObjectRetain_n();

          specialized Set.formSymmetricDifference(_:)(v20);
          v21 = v38[0];

          v22 = specialized _NativeSet.intersection(_:)(v21, v19);

          specialized Set.formUnion<A>(_:)(v22);
        }
      }

      if (!v7)
      {
        v23 = v8[3];
        if (((v23 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v24 = v23 & 0xFFFFFFFFFFFFFFFELL;
        if (v24 <= 1)
        {
          v25 = 1;
        }

        else
        {
          v25 = v24;
        }

        _s10Foundation6LocaleVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AttributedStringKey.Type>, type metadata accessor for AttributedStringKey.Type, MEMORY[0x1E69E6F90]);
        v26 = swift_allocObject();
        v27 = _swift_stdlib_malloc_size(v26);
        v28 = v27 - 32;
        if (v27 < 32)
        {
          v28 = v27 - 17;
        }

        v29 = v28 >> 4;
        v26[2] = v25;
        v26[3] = 2 * (v28 >> 4);
        v30 = (v26 + 4);
        v31 = v8[3] >> 1;
        if (v8[2])
        {
          v32 = v8 + 4;
          if (v26 != v8 || v30 >= v32 + 16 * v31)
          {
            memmove(v26 + 4, v32, 16 * v31);
          }

          v8[2] = 0;
        }

        v9 = (v30 + 16 * v31);
        v7 = (v29 & 0x7FFFFFFFFFFFFFFFLL) - v31;

        v8 = v26;
      }

      v33 = __OFSUB__(v7--, 1);
      if (v33)
      {
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      *v9 = v4;
      v9[1] = v3;
      v9 += 2;
      v6 = v39;
      if (!*(v39 + 16))
      {
        goto LABEL_29;
      }
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
LABEL_29:

  v34 = v8[3];
  if (v34 < 2)
  {
    return v8;
  }

  v35 = v34 >> 1;
  v33 = __OFSUB__(v35, v7);
  v36 = v35 - v7;
  if (!v33)
  {
    v8[2] = v36;
    return v8;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  outlined consume of AttributedString.AnyAttribute(v4, v3);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized _copySequenceToContiguousArray<A>(_:)(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = a1[2];
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = a1[2];
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v38 = a1[2];
  if (v6)
  {
    _s10Foundation6LocaleVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(String, Double)>, type metadata accessor for (String, Double), MEMORY[0x1E69E6F90]);
    v7 = swift_allocObject();
    v8 = (_swift_stdlib_malloc_size(v7) - 32) / 24;
    v7[2] = v6;
    v7[3] = 2 * v8;
    v9 = a1[5];
    v10 = *(v2 + 32);
    v11 = (v8 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v7[4] = a1[4];
    v7[5] = v9;
    v7[6] = v10;
    v12 = v7 + 7;
    if (v6 != 1)
    {
      v13 = 0;
      v39 = v2;
      v14 = v2 + 40;
      v15 = a1 + 7;
      do
      {

        v16 = *v15;
        v17 = *(v14 + 8 * v13);
        *v12 = *(v15 - 1);
        v12[1] = v16;
        v12[2] = v17;
        v12 += 3;
        ++v13;
        v15 += 2;
      }

      while (v6 - 1 != v13);
      v11 -= v13;
      v2 = v39;
    }

    if (v4 <= v5)
    {
      goto LABEL_36;
    }

LABEL_12:
    v40 = v2 + 32;
    v20 = &a1[2 * v6 + 5];
    while (v6 < v4)
    {
      v21 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_41;
      }

      if (v5 == v6)
      {
        goto LABEL_36;
      }

      if (v6 >= v5)
      {
        goto LABEL_42;
      }

      v23 = *(v20 - 1);
      v22 = *v20;
      v24 = *(v40 + 8 * v6);
      if (v11)
      {

        v25 = __OFSUB__(v11--, 1);
        if (v25)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v26 = v7[3];
        if (((v26 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_44;
        }

        v27 = v26 & 0xFFFFFFFFFFFFFFFELL;
        if (v27 <= 1)
        {
          v28 = 1;
        }

        else
        {
          v28 = v27;
        }

        _s10Foundation6LocaleVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(String, Double)>, type metadata accessor for (String, Double), MEMORY[0x1E69E6F90]);
        v29 = swift_allocObject();
        v30 = (_swift_stdlib_malloc_size(v29) - 32) / 24;
        v29[2] = v28;
        v29[3] = 2 * v30;
        v31 = v29 + 4;
        v32 = v7[3] >> 1;
        v12 = &v29[3 * v32 + 4];
        v33 = (v30 & 0x7FFFFFFFFFFFFFFFLL) - v32;
        if (v7[2])
        {
          if (v29 != v7 || v31 >= &v7[3 * v32 + 4])
          {
            memmove(v31, v7 + 4, 24 * v32);
          }

          v7[2] = 0;
        }

        else
        {
        }

        v7 = v29;
        v4 = v38;
        v25 = __OFSUB__(v33, 1);
        v11 = v33 - 1;
        if (v25)
        {
          goto LABEL_43;
        }
      }

      *v12 = v23;
      v12[1] = v22;
      v12[2] = v24;
      v12 += 3;
      ++v6;
      v20 += 2;
      if (v21 == v4)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v7 = MEMORY[0x1E69E7CC0];
  v19 = *(MEMORY[0x1E69E7CC0] + 24);

  v12 = v7 + 4;
  v11 = v19 >> 1;
  if (v4 > v5)
  {
    goto LABEL_12;
  }

LABEL_36:
  v35 = v7[3];
  if (v35 < 2)
  {
    return v7;
  }

  v36 = v35 >> 1;
  v25 = __OFSUB__(v36, v11);
  v37 = v36 - v11;
  if (!v25)
  {
    v7[2] = v37;
    return v7;
  }

LABEL_45:
  __break(1u);
  return result;
}

unint64_t specialized Collection.dropFirst(_:)(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = String.index(_:offsetBy:limitedBy:)();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return String.subscript.getter();
}

unint64_t lazy protocol witness table accessor for type EmptyCollection<Character> and conformance EmptyCollection<A>()
{
  result = lazy protocol witness table cache variable for type EmptyCollection<Character> and conformance EmptyCollection<A>;
  if (!lazy protocol witness table cache variable for type EmptyCollection<Character> and conformance EmptyCollection<A>)
  {
    type metadata accessor for EmptyCollection<Character>(255, &lazy cache variable for type metadata for EmptyCollection<Character>, MEMORY[0x1E69E5EE0], MEMORY[0x1E69E6C30]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmptyCollection<Character> and conformance EmptyCollection<A>);
  }

  return result;
}

unint64_t specialized Collection.suffix(from:)(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return String.subscript.getter();
  }

  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__src, char *a2, unint64_t a3, char *a4)
{
  v4 = a3;
  v5 = a2;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 31;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 5;
  v10 = a3 - a2;
  v11 = a3 - a2 + 31;
  if ((a3 - a2) >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 5;
  if (v9 >= v11 >> 5)
  {
    if (a4 != a2 || &a2[32 * v12] <= a4)
    {
      v21 = a4;
      memmove(a4, a2, 32 * v12);
      a4 = v21;
    }

    v33 = a4;
    v14 = &a4[32 * v12];
    if (v10 < 32 || v5 <= v6)
    {
      v20 = v5;
LABEL_44:
      v13 = v33;
    }

    else
    {
      v30 = v6;
LABEL_29:
      v22 = 0;
      v23 = v14;
      v31 = v5 - 32;
      v32 = v14;
      do
      {
        v24 = &v23[v22];
        v35 = &v23[v22 - 32];

        swift_getAtKeyPath();
        swift_getAtKeyPath();
        if (v39 == v37 && v40 == v38)
        {
          v25 = 0;
        }

        else
        {
          v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v26 = (v4 + v22 - 32);
        if (v25)
        {
          v20 = v5 - 32;
          if ((v4 + v22) != v5)
          {
            v28 = *(v5 - 1);
            *v26 = *v31;
            *(v4 + v22 - 16) = v28;
          }

          v14 = &v32[v22];
          if (&v32[v22] <= v33 || (v4 = v4 + v22 - 32, v5 -= 32, v31 <= v30))
          {
            v14 = &v32[v22];
            goto LABEL_44;
          }

          goto LABEL_29;
        }

        v23 = v32;
        if ((v4 + v22) != v24)
        {
          v27 = *(v35 + 1);
          *v26 = *v35;
          *(v4 + v22 - 16) = v27;
        }

        v22 -= 32;
        v14 = &v32[v22];
      }

      while (&v32[v22] > v33);
      v20 = v5;
      v13 = v33;
    }
  }

  else
  {
    v13 = a4;
    if (a4 != __src || &__src[32 * v9] <= a4)
    {
      memmove(a4, __src, 32 * v9);
    }

    v14 = &v13[32 * v9];
    if (v7 >= 32 && v5 < v4)
    {
      v34 = &v13[32 * v9];
      v36 = v4;
      while (1)
      {
        v41 = v5;

        swift_getAtKeyPath();
        swift_getAtKeyPath();
        if (v39 == v37 && v40 == v38)
        {
          break;
        }

        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v15 & 1) == 0)
        {
          goto LABEL_18;
        }

        v16 = v5;
        v5 += 32;
        v17 = v36;
        if (v6 != v41)
        {
          goto LABEL_19;
        }

LABEL_20:
        v6 += 32;
        v14 = v34;
        if (v13 >= v34 || v5 >= v17)
        {
          goto LABEL_22;
        }
      }

LABEL_18:
      v16 = v13;
      v18 = v6 == v13;
      v13 += 32;
      v17 = v36;
      if (v18)
      {
        goto LABEL_20;
      }

LABEL_19:
      v19 = *(v16 + 1);
      *v6 = *v16;
      *(v6 + 1) = v19;
      goto LABEL_20;
    }

LABEL_22:
    v20 = v6;
  }

  if (v20 != v13 || v20 >= &v13[(v14 - v13 + (v14 - v13 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(v20, v13, 32 * ((v14 - v13) / 32));
  }

  return 1;
}

uint64_t specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(char **a1, char *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = a1;
  v6 = *a1;

  v22 = v6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v22 = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
  }

  v19 = v5;
  *v5 = v22;
  v7 = (v22 + 16);
  v8 = *(v22 + 2);
  if (v8 < 2)
  {
LABEL_9:

    *v19 = v22;
    return 1;
  }

  else
  {
    while (1)
    {
      v9 = *a3;
      if (!*a3)
      {
        break;
      }

      v10 = v4;
      v11 = &v22[16 * v8];
      v5 = *v11;
      v12 = &v7[2 * v8];
      v13 = v12[1];
      __src = (v9 + 32 * *v11);
      v14 = (v9 + 32 * *v12);
      v15 = v9 + 32 * v13;

      specialized _merge<A>(low:mid:high:buffer:by:)(__src, v14, v15, a2);
      v4 = v10;

      if (v10)
      {
        *v19 = v22;

        return 1;
      }

      if (v13 < v5)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v16 = *v7;
      if (v8 - 2 >= *v7)
      {
        goto LABEL_13;
      }

      *v11 = v5;
      *(v11 + 1) = v13;
      v17 = v16 - v8;
      if (v16 < v8)
      {
        goto LABEL_14;
      }

      v8 = v16 - 1;
      memmove(v12, v12 + 2, 16 * v17);
      *v7 = v8;
      if (v8 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v19 = v22;
    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  v110 = MEMORY[0x1E69E7CC0];
  if (v4 >= 1)
  {
    swift_retain_n();
    v5 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v5 + 1 >= v4)
      {
        v12 = v5 + 1;
      }

      else
      {
        v7 = *a3;
        v8 = v5;

        v103 = specialized closure #1 in Sequence.sorted<A>(by:)();
        if (v102)
        {

          goto LABEL_100;
        }

        v9 = v5 + 2;
        v92 = v8;
        v98 = 32 * v8;
        v10 = v7 + 32 * v8 + 48;
        while (1)
        {
          v12 = v4;
          if (v4 == v9)
          {
            break;
          }

          swift_getAtKeyPath();
          swift_getAtKeyPath();
          if (v108 == v106 && v109 == v107)
          {
            v11 = 0;
          }

          else
          {
            v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
          }

          ++v9;
          v10 += 32;
          if ((v103 ^ v11))
          {
            v12 = v9 - 1;
            break;
          }
        }

        v5 = v92;
        if (v103)
        {
          if (v12 < v92)
          {
            goto LABEL_123;
          }

          if (v92 < v12)
          {
            v13 = 32 * v12 - 16;
            v14 = v98 + 24;
            v15 = v12;
            v16 = v92;
            do
            {
              if (v16 != --v15)
              {
                v17 = *a3;
                if (!*a3)
                {
                  goto LABEL_126;
                }

                v18 = (v17 + v14);
                v19 = v17 + v13;
                v20 = *(v18 - 3);
                v21 = *(v18 - 1);
                v22 = *v18;
                v23 = *v19;
                *(v18 - 3) = *(v19 - 16);
                *(v18 - 1) = v23;
                *(v19 - 16) = v20;
                *v19 = v21;
                *(v19 + 8) = v22;
              }

              ++v16;
              v13 -= 32;
              v14 += 32;
            }

            while (v16 < v15);
          }
        }
      }

      v24 = a3[1];
      if (v12 >= v24)
      {
        goto LABEL_33;
      }

      if (__OFSUB__(v12, v5))
      {
        goto LABEL_120;
      }

      if (v12 - v5 >= a4)
      {
        goto LABEL_33;
      }

      if (__OFADD__(v5, a4))
      {
        goto LABEL_121;
      }

      if (v5 + a4 >= v24)
      {
        v25 = a3[1];
      }

      else
      {
        v25 = v5 + a4;
      }

      if (v25 < v5)
      {
LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
LABEL_124:

        __break(1u);
LABEL_125:

        __break(1u);
LABEL_126:

        __break(1u);
LABEL_127:

        __break(1u);
LABEL_128:

        __break(1u);
        return result;
      }

      if (v12 == v25)
      {
LABEL_33:
        v26 = v12;
        if (v12 < v5)
        {
          goto LABEL_119;
        }
      }

      else
      {
        v93 = v5;
        v105 = *a3;
        v80 = *a3 + 32 * v12 - 32;
        v81 = v5 - v12;
        v96 = v25;
        do
        {
          v101 = v12;
          v97 = v81;
          v99 = v80;
          while (1)
          {

            swift_getAtKeyPath();
            swift_getAtKeyPath();
            if (v108 == v106 && v109 == v107)
            {
              break;
            }

            v82 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v82 & 1) == 0)
            {
              goto LABEL_84;
            }

            if (!v105)
            {
              goto LABEL_124;
            }

            v83 = *(v80 + 32);
            v84 = *(v80 + 40);
            v85 = *(v80 + 48);
            v86 = *(v80 + 56);
            v87 = *(v80 + 16);
            *(v80 + 32) = *v80;
            *(v80 + 48) = v87;
            *v80 = v83;
            *(v80 + 8) = v84;
            *(v80 + 16) = v85;
            *(v80 + 24) = v86;
            v80 -= 32;
            if (__CFADD__(v81++, 1))
            {
              goto LABEL_84;
            }
          }

LABEL_84:
          v12 = v101 + 1;
          v80 = v99 + 32;
          v81 = v97 - 1;
          v26 = v96;
        }

        while (v101 + 1 != v96);
        v5 = v93;
        if (v96 < v93)
        {
          goto LABEL_119;
        }
      }

      v95 = v26;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
      }

      v28 = *(v6 + 2);
      v27 = *(v6 + 3);
      v29 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v6);
      }

      *(v6 + 2) = v29;
      v30 = v6 + 32;
      v31 = &v6[16 * v28 + 32];
      *v31 = v5;
      *(v31 + 1) = v95;
      v110 = v6;
      v104 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v28)
      {
        while (1)
        {
          v32 = v29 - 1;
          if (v29 >= 4)
          {
            break;
          }

          if (v29 == 3)
          {
            v33 = *(v6 + 4);
            v34 = *(v6 + 5);
            v43 = __OFSUB__(v34, v33);
            v35 = v34 - v33;
            v36 = v43;
LABEL_53:
            if (v36)
            {
              goto LABEL_110;
            }

            v49 = &v6[16 * v29];
            v51 = *v49;
            v50 = *(v49 + 1);
            v52 = __OFSUB__(v50, v51);
            v53 = v50 - v51;
            v54 = v52;
            if (v52)
            {
              goto LABEL_113;
            }

            v55 = &v30[16 * v32];
            v57 = *v55;
            v56 = *(v55 + 1);
            v43 = __OFSUB__(v56, v57);
            v58 = v56 - v57;
            if (v43)
            {
              goto LABEL_116;
            }

            if (__OFADD__(v53, v58))
            {
              goto LABEL_117;
            }

            if (v53 + v58 >= v35)
            {
              if (v35 < v58)
              {
                v32 = v29 - 2;
              }

              goto LABEL_74;
            }

            goto LABEL_67;
          }

          v59 = &v6[16 * v29];
          v61 = *v59;
          v60 = *(v59 + 1);
          v43 = __OFSUB__(v60, v61);
          v53 = v60 - v61;
          v54 = v43;
LABEL_67:
          if (v54)
          {
            goto LABEL_112;
          }

          v62 = &v30[16 * v32];
          v64 = *v62;
          v63 = *(v62 + 1);
          v43 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v43)
          {
            goto LABEL_115;
          }

          if (v65 < v53)
          {
            goto LABEL_3;
          }

LABEL_74:
          if (v32 - 1 >= v29)
          {
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
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
            goto LABEL_122;
          }

          v70 = *a3;
          if (!*a3)
          {
            goto LABEL_125;
          }

          v71 = &v30[16 * v32 - 16];
          v72 = *v71;
          v73 = v32;
          v74 = &v30[16 * v32];
          v75 = *(v74 + 1);
          v76 = (v70 + 32 * *v71);
          v77 = (v70 + 32 * *v74);
          v78 = v70 + 32 * v75;

          specialized _merge<A>(low:mid:high:buffer:by:)(v76, v77, v78, v104);
          if (v102)
          {

            v110 = v6;
            goto LABEL_100;
          }

          if (v75 < v72)
          {
            goto LABEL_105;
          }

          v79 = *(v6 + 2);
          if (v73 > v79)
          {
            goto LABEL_106;
          }

          *v71 = v72;
          *(v71 + 1) = v75;
          if (v73 >= v79)
          {
            goto LABEL_107;
          }

          v29 = v79 - 1;
          memmove(v74, v74 + 16, 16 * (v79 - 1 - v73));
          *(v6 + 2) = v79 - 1;
          v30 = v6 + 32;
          if (v79 <= 2)
          {
LABEL_3:
            v110 = v6;
            goto LABEL_4;
          }
        }

        v37 = &v30[16 * v29];
        v38 = *(v37 - 8);
        v39 = *(v37 - 7);
        v43 = __OFSUB__(v39, v38);
        v40 = v39 - v38;
        if (v43)
        {
          goto LABEL_108;
        }

        v42 = *(v37 - 6);
        v41 = *(v37 - 5);
        v43 = __OFSUB__(v41, v42);
        v35 = v41 - v42;
        v36 = v43;
        if (v43)
        {
          goto LABEL_109;
        }

        v44 = &v6[16 * v29];
        v46 = *v44;
        v45 = *(v44 + 1);
        v43 = __OFSUB__(v45, v46);
        v47 = v45 - v46;
        if (v43)
        {
          goto LABEL_111;
        }

        v43 = __OFADD__(v35, v47);
        v48 = v35 + v47;
        if (v43)
        {
          goto LABEL_114;
        }

        if (v48 >= v40)
        {
          v66 = &v30[16 * v32];
          v68 = *v66;
          v67 = *(v66 + 1);
          v43 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v43)
          {
            goto LABEL_118;
          }

          if (v35 < v69)
          {
            v32 = v29 - 2;
          }

          goto LABEL_74;
        }

        goto LABEL_53;
      }

LABEL_4:
      v4 = a3[1];
      v5 = v95;
      if (v95 >= v4)
      {
        goto LABEL_97;
      }
    }
  }

  swift_retain_n();
LABEL_97:
  v89 = *a1;
  if (!*a1)
  {
    goto LABEL_128;
  }

  specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(&v110, v89, a3);
  if (v102)
  {

LABEL_100:
  }

  else
  {
  }
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v21 = *a4;
    v4 = *a4 + 32 * a3 - 32;
    v5 = result - a3;
LABEL_6:
    v16 = a3;
    v14 = v5;
    v15 = v4;
    while (1)
    {

      swift_getAtKeyPath();
      swift_getAtKeyPath();
      if (v19 == v17 && v20 == v18)
      {

LABEL_5:
        a3 = v16 + 1;
        v4 = v15 + 32;
        v5 = v14 - 1;
        if (v16 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v6 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v21)
      {
        break;
      }

      v7 = *(v4 + 32);
      v8 = *(v4 + 40);
      v9 = *(v4 + 48);
      v10 = *(v4 + 56);
      v11 = *(v4 + 16);
      *(v4 + 32) = *v4;
      *(v4 + 48) = v11;
      *v4 = v7;
      *(v4 + 8) = v8;
      *(v4 + 16) = v9;
      *(v4 + 24) = v10;
      v4 -= 32;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  swift_retain_n();
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for (name: String, value: String)();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;

      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);

      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {

    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

uint64_t specialized MutableCollection<>.sort(by:)(void **a1)
{
  v2 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;

  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);

  *a1 = v2;
}

uint64_t lazy protocol witness table accessor for type Repeated<String> and conformance Repeated<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EmptyCollection<Character>(255, a2, MEMORY[0x1E69E6158], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *specialized CustomRecursiveStringConvertible.topLevelAttributes.getter()
{
  if ((byte_1EAB26AE1 & 8) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = *((*MEMORY[0x1E69E7D40] & *static CoreGlue2.shared) + 0x58);
  v2 = static CoreGlue2.shared;
  v3 = v1();

  if (v3 == 2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (v3)
  {
    v5 = 0x6E6564646968;
  }

  else
  {
    v5 = 0x656C6269736976;
  }

  if (v3)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v7 = v4[2];
  v8 = v4[3];
  v9 = v7 + 1;
  if (v7 >= v8 >> 1)
  {
    v13 = v4[2];
    v14 = v6;
    v11 = v7 + 1;
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v7 + 1, 1, v4);
    v9 = v11;
    v7 = v13;
    v6 = v14;
    v4 = v12;
  }

  v4[2] = v9;
  v10 = &v4[4 * v7];
  v10[4] = 0x6142737574617473;
  v10[5] = 0xE900000000000072;
  v10[6] = v5;
  v10[7] = v6;
  return v4;
}

uint64_t _s7SwiftUI29TimerIntervalTimelineScheduleV32CountdownReducedFrequencyEntriesVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of AlignedTimelineSchedule.Entries(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.Variants and conformance SizeFittingTextCache<A, B>.Variants(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t type metadata accessor for AttributedStringKey.Type()
{
  result = lazy cache variable for type metadata for AttributedStringKey.Type;
  if (!lazy cache variable for type metadata for AttributedStringKey.Type)
  {
    type metadata accessor for AttributedStringKey();
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for AttributedStringKey.Type);
  }

  return result;
}

unint64_t type metadata accessor for AttributedStringKey()
{
  result = lazy cache variable for type metadata for AttributedStringKey;
  if (!lazy cache variable for type metadata for AttributedStringKey)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for AttributedStringKey);
  }

  return result;
}

void type metadata accessor for EmptyCollection<Character>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s10Foundation6LocaleVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for (String, Double)()
{
  if (!lazy cache variable for type metadata for (String, Double))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (String, Double));
    }
  }
}

_BYTE *partial apply for closure #1 in closure #1 in Double.init<A>(_:)@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void type metadata accessor for Slice<SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.Variants>()
{
  if (!lazy cache variable for type metadata for Slice<SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.Variants>)
  {
    type metadata accessor for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.Variants();
    lazy protocol witness table accessor for type SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.Variants and conformance SizeFittingTextCache<A, B>.Variants(&lazy protocol witness table cache variable for type SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.Variants and conformance SizeFittingTextCache<A, B>.Variants, type metadata accessor for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.Variants);
    v0 = type metadata accessor for Slice();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Slice<SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.Variants>);
    }
  }
}

void type metadata accessor for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.Variants()
{
  if (!lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.Variants)
  {
    type metadata accessor for ResolvedTextHelper(255);
    v0 = type metadata accessor for SizeFittingTextCache.Variants();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.Variants);
    }
  }
}

uint64_t specialized _ViewInputs.makeEventBindingBridge(bindingManager:responder:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA30EventBindingBridgeFactoryInputV_Tt2g5(*a3))
  {
    return (*(v8 + 8))(a1, a2, a5);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t outlined destroy of CalendarDependentFormatStyle?(uint64_t a1)
{
  type metadata accessor for CalendarDependentFormatStyle?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for CalendarDependentFormatStyle?()
{
  if (!lazy cache variable for type metadata for CalendarDependentFormatStyle?)
  {
    type metadata accessor for CalendarDependentFormatStyle();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CalendarDependentFormatStyle?);
    }
  }
}

uint64_t instantiation function for generic protocol witness table for Date.VerbatimFormatStyle(uint64_t a1)
{
  result = _s10Foundation4DateV11FormatStyleVAeadAWlTm_0(&lazy protocol witness table cache variable for type Date.VerbatimFormatStyle and conformance Date.VerbatimFormatStyle, MEMORY[0x1E6969450]);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed(&lazy protocol witness table cache variable for type Date.VerbatimFormatStyle and conformance Date.VerbatimFormatStyle, MEMORY[0x1E6969450]);
  *(a1 + 8) = result;
  return result;
}

{
  result = _s10Foundation4DateV11FormatStyleVAeadAWlTm_2(&lazy protocol witness table cache variable for type Date.VerbatimFormatStyle and conformance Date.VerbatimFormatStyle, MEMORY[0x1E6969450]);
  *(a1 + 8) = result;
  return result;
}

uint64_t WhitespaceRemovingFormatStyle<>.withCalendar(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a2 + 16);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*(v13 - 8) + 16))(a4, v4, v10);
  (*(a3 + 16))(a1, v8, a3);
  return (*(v9 + 40))(a4, v12, v8);
}

uint64_t protocol witness for CalendarDependentFormatStyle.withCalendar(_:) in conformance Date.FormatStyle.Attributed@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(char *, uint64_t)@<X4>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for Calendar();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*(a2 - 8) + 16))(a4, v4, a2, v11);
  KeyPath = swift_getKeyPath();
  (*(v10 + 16))(v13, a1, v9);
  return a3(v13, KeyPath);
}

uint64_t instantiation function for generic protocol witness table for Date.VerbatimFormatStyle.Attributed(uint64_t a1)
{
  result = _s10Foundation4DateV11FormatStyleVAeadAWlTm_0(&lazy protocol witness table cache variable for type Date.VerbatimFormatStyle.Attributed and conformance Date.VerbatimFormatStyle.Attributed, MEMORY[0x1E6969408]);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed(&lazy protocol witness table cache variable for type Date.VerbatimFormatStyle.Attributed and conformance Date.VerbatimFormatStyle.Attributed, MEMORY[0x1E6969408]);
  *(a1 + 8) = result;
  return result;
}

{
  result = _s10Foundation4DateV11FormatStyleVAeadAWlTm_2(&lazy protocol witness table cache variable for type Date.VerbatimFormatStyle.Attributed and conformance Date.VerbatimFormatStyle.Attributed, MEMORY[0x1E6969408]);
  *(a1 + 8) = result;
  return result;
}

uint64_t protocol witness for CalendarDependentFormatStyle.withCalendar(_:) in conformance SystemFormatStyle.DateOffset@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  _s7SwiftUI17SystemFormatStyleO13DateReferenceVWOcTm_1(v4, a4, a3);
  v8 = *(a2 + 40);
  v9 = type metadata accessor for Calendar();
  v10 = *(*(v9 - 8) + 24);

  return v10(a4 + v8, a1, v9);
}

double CATransform3D.init(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 16);
  *a2 = *a1;
  v5 = *(a1 + 64);
  *(a2 + 16) = 0;
  *(a2 + 24) = v4;
  *(a2 + 40) = v2;
  *(a2 + 48) = 0;
  *(a2 + 56) = v3;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  result = 1.0;
  v7 = *(a1 + 48);
  *(a2 + 80) = xmmword_18DDAA020;
  *(a2 + 96) = v7;
  *(a2 + 112) = 0;
  *(a2 + 120) = v5;
  return result;
}

__n128 ProjectionTransform.init(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = 0;
  *(a2 + 24) = v2;
  *(a2 + 40) = 0;
  result = *(a1 + 32);
  *(a2 + 48) = result;
  *(a2 + 64) = 0x3FF0000000000000;
  return result;
}

{
  v2 = *(a1 + 40);
  v3 = *(a1 + 56);
  v4 = *(a1 + 120);
  v5 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 16) = v5;
  *(a2 + 32) = v2;
  *(a2 + 40) = v3;
  result = *(a1 + 96);
  *(a2 + 48) = result;
  *(a2 + 64) = v4;
  return result;
}

__n128 CGAffineTransform.init(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 48);
  *(a2 + 32) = result;
  return result;
}

void ProjectionTransform.init()(void *a1@<X8>)
{
  *a1 = 0x3FF0000000000000;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0x3FF0000000000000;
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0x3FF0000000000000;
}

float64x2_t ProjectionTransform.concatenating(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[1];
  v4 = *(a1 + 16);
  v5 = *(a1 + 40);
  v6 = *(a1 + 64);
  v7 = v2[2];
  v8 = v2[3];
  v9 = *v2 * v4 + v3 * v5 + v7 * v6;
  v10 = v2[4];
  v11 = v2[5];
  v12 = v4 * v8 + v5 * v10 + v6 * v11;
  v13 = v2[6];
  v14 = v2[7];
  v15 = v2[8];
  v16 = v4 * v13 + v5 * v14 + v6 * v15;
  v17 = *a1;
  v18 = *(a1 + 24);
  v19 = *(a1 + 48);
  *a2 = vaddq_f64(vaddq_f64(vmulq_n_f64(*a1, *v2), vmulq_n_f64(v18, v3)), vmulq_n_f64(v19, v7));
  *(a2 + 16) = v9;
  *(a2 + 24) = vaddq_f64(vaddq_f64(vmulq_n_f64(v17, v8), vmulq_n_f64(v18, v10)), vmulq_n_f64(v19, v11));
  *(a2 + 40) = v12;
  result = vaddq_f64(vaddq_f64(vmulq_n_f64(v17, v13), vmulq_n_f64(v18, v14)), vmulq_n_f64(v19, v15));
  *(a2 + 48) = result;
  *(a2 + 64) = v16;
  return result;
}

double ProjectionTransform.determinant.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  if (v1 == 0.0 && v2 == 0.0 && *(v0 + 64) == 1.0)
  {
    v3 = vmulq_f64(*v0, vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL));
    *&result = *&vsubq_f64(v3, vdupq_laneq_s64(v3, 1));
  }

  else
  {
    v5 = *(v0 + 24);
    v6 = *(v0 + 48);
    v7 = vmulq_f64(v5, vextq_s8(v6, v6, 8uLL));
    v8 = vmulq_f64(vsubq_f64(vmulq_n_f64(v5, *(v0 + 64)), vmulq_n_f64(v6, v2)), vextq_s8(*v0, *v0, 8uLL));
    return v1 * vsubq_f64(v7, vdupq_laneq_s64(v7, 1)).f64[0] + vsubq_f64(vdupq_laneq_s64(v8, 1), v8).f64[0];
  }

  return result;
}

Swift::Bool __swiftcall ProjectionTransform.invert()()
{
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  v6 = v1 * v3 - v2 * v4;
  v7 = v0[2];
  v8 = v0[3];
  v9 = v3 * v8 - v2 * v5;
  v10 = v4 * v8 - v1 * v5;
  v12 = *v0;
  v11 = v0[1];
  v13 = v7 * v10 + v6 * *v0 - v11 * v9;
  if (v13 != 0.0)
  {
    *v0 = v6 * (1.0 / v13);
    v0[1] = -(1.0 / v13 * (v3 * v11 - v4 * v7));
    v0[2] = (v2 * v11 - v1 * v7) * (1.0 / v13);
    v0[3] = -(1.0 / v13 * v9);
    v0[4] = (v3 * v12 - v5 * v7) * (1.0 / v13);
    v0[5] = -(1.0 / v13 * (v2 * v12 - v8 * v7));
    v0[6] = v10 * (1.0 / v13);
    v0[7] = -(1.0 / v13 * (v4 * v12 - v5 * v11));
    v0[8] = (v1 * v12 - v8 * v11) * (1.0 / v13);
  }

  return v13 != 0.0;
}

__n128 ProjectionTransform.inverted()@<Q0>(uint64_t a1@<X8>)
{
  v6 = v1[2];
  v7 = v1[3];
  v8 = *(v1 + 8);
  v4 = *v1;
  v5 = v1[1];
  if (!ProjectionTransform.invert()())
  {
    static os_log_type_t.fault.getter();
    if (one-time initialization token for runtimeIssuesLog != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
  }

  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  *(a1 + 64) = v8;
  result = v5;
  *a1 = v4;
  *(a1 + 16) = v5;
  return result;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance ProjectionTransform(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return specialized static ProjectionTransform.== infix(_:_:)(v7, v9);
}

double CGPoint.applying(_:)(uint64_t a1, double a2, double a3)
{
  v3 = *(a1 + 64) + *(a1 + 16) * a2 + *(a1 + 40) * a3;
  v4 = 1.0;
  if (v3 != 1.0)
  {
    if (v3 <= 0.0)
    {
      v4 = INFINITY;
    }

    else
    {
      v4 = 1.0 / v3;
    }
  }

  *&result = *&vmulq_n_f64(vaddq_f64(*(a1 + 48), vaddq_f64(vmulq_n_f64(*a1, a2), vmulq_n_f64(*(a1 + 24), a3))), v4);
  return result;
}

double CGPoint.unapplying(_:)(double *a1, double result, double a3)
{
  v3 = a1[3];
  v5 = a1[4];
  v4 = a1[5];
  v6 = *a1 * v5 + v3 * (a1[2] * a3 - a1[1]) - *a1 * v4 * a3 + (a1[1] * v4 - a1[2] * v5) * result;
  if (v6 != 0.0)
  {
    return ((v4 * a3 - v5) * a1[6] + v3 * a1[7] + (v5 * a1[8] - v4 * a1[7]) * result - v3 * a1[8] * a3) / v6;
  }

  return result;
}

uint64_t ProjectionTransform.encode(to:)(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *(v1 + 48);
  v5[2] = *(v1 + 32);
  v5[3] = v2;
  v6 = *(v1 + 64);
  v3 = *(v1 + 16);
  v5[0] = *v1;
  v5[1] = v3;
  return closure #1 in ProjectionTransform.encode(to:)(v5, a1);
}

uint64_t closure #1 in ProjectionTransform.encode(to:)(uint64_t result, void *a2)
{
  v3 = 0;
  for (i = 0; ; ++i)
  {
    if (i > 8 || (v5 = 1.0, ((1 << i) & 0x111) == 0))
    {
      v5 = 0.0;
    }

    v6 = *(result + v3);
    if (v6 == v5)
    {
      goto LABEL_3;
    }

    v7 = fabs(v6);
    v8 = v3 + 5;
    if (v7 >= 65536.0)
    {
      v8 = v3 + 1;
    }

    v9 = v8 + 8;
    v10 = a2[1];
    v11 = a2[2];
    if (v10 >= v11)
    {
      v20 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_29;
      }

      if (v11 < v20)
      {
        v26 = result;
        v25 = v7;
        v23 = v9;
        v24 = ProtobufEncoder.growBufferSlow(to:)(v10 + 1);
        v9 = v23;
        v7 = v25;
        v21 = v24;
        result = v26;
      }

      else
      {
        a2[1] = v20;
        v21 = (*a2 + v10);
      }

      *v21 = v9 & 0x7D;
    }

    else
    {
      *(*a2 + v10) = v9;
      a2[1] = v10 + 1;
    }

    if (v7 < 65536.0)
    {
      break;
    }

    v16 = a2[1];
    v17 = v16 + 8;
    if (__OFADD__(v16, 8))
    {
      goto LABEL_28;
    }

    if (a2[2] >= v17)
    {
      a2[1] = v17;
      *(*a2 + v16) = v6;
    }

    else
    {
      v18 = result;
      v19 = ProtobufEncoder.growBufferSlow(to:)(v16 + 8);
      result = v18;
      *v19 = v6;
    }

LABEL_3:
    v3 += 8;
    if (v3 == 72)
    {
      return result;
    }
  }

  v12 = a2[1];
  v13 = v12 + 4;
  if (!__OFADD__(v12, 4))
  {
    if (a2[2] < v13)
    {
      v22 = result;
      v14 = ProtobufEncoder.growBufferSlow(to:)(v12 + 4);
      result = v22;
    }

    else
    {
      a2[1] = v13;
      v14 = (*a2 + v12);
    }

    v15 = v6;
    *v14 = v15;
    goto LABEL_3;
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

__n128 ProjectionTransform.init(from:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result.n128_u64[0] = specialized ProjectionTransform.init(from:)(a1, v6).n128_u64[0];
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

unint64_t closure #1 in ProjectionTransform.init(from:)(unint64_t result, void *a2, uint64_t *a3)
{
  v5 = a2[1];
  if (v5 >= a2[2])
  {
LABEL_43:
    a2[3] = 0;
    return result;
  }

  v7 = result;
  while (1)
  {
    result = a2[3];
    if (result)
    {
      v8 = a2[4];
      if (v5 < v8)
      {
        goto LABEL_11;
      }

      if (v8 < v5)
      {
        goto LABEL_41;
      }

      a2[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v3)
    {
      goto LABEL_42;
    }

    if (result <= 7)
    {
LABEL_41:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      v19 = swift_allocError();
      result = swift_willThrow();
      v3 = v19;
LABEL_42:
      *a3 = v3;
      return result;
    }

LABEL_11:
    if (result <= 0x4F)
    {
      break;
    }

    v9 = result & 7;
    if (v9 > 1)
    {
      if (v9 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v3)
        {
          goto LABEL_42;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_47;
        }

        v10 = a2[1] + result;
        if (a2[2] < v10)
        {
          goto LABEL_41;
        }
      }

      else
      {
        if (v9 != 5)
        {
          goto LABEL_41;
        }

        v10 = a2[1] + 4;
        if (a2[2] < v10)
        {
          goto LABEL_41;
        }
      }

      goto LABEL_3;
    }

    if ((result & 7) != 0)
    {
      if (v9 != 1)
      {
        goto LABEL_41;
      }

      v10 = a2[1] + 8;
      if (a2[2] < v10)
      {
        goto LABEL_41;
      }

LABEL_3:
      a2[1] = v10;
      goto LABEL_4;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v3)
    {
      goto LABEL_42;
    }

LABEL_4:
    v5 = a2[1];
    if (v5 >= a2[2])
    {
      goto LABEL_43;
    }
  }

  v11 = (result >> 3) - 1;
  if (result >> 3)
  {
    if (v11 < 0)
    {
      goto LABEL_45;
    }

    v12 = result & 7;
    if (v12 == 5)
    {
      v17 = a2[1];
      if (a2[2] < (v17 + 1))
      {
        goto LABEL_41;
      }

      v18 = *v17;
      a2[1] = v17 + 1;
      v16 = v18;
    }

    else
    {
      if (v12 == 2)
      {
        v15 = result;
        result = ProtobufDecoder.decodeVarint()();
        if (v3)
        {
          goto LABEL_42;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_46;
        }

        v13 = a2[1];
        v14 = a2[2];
        if (v14 < v13 + result)
        {
          goto LABEL_41;
        }

        a2[3] = v15 & 0x78 | 1;
        a2[4] = v13 + result;
      }

      else
      {
        if (v12 != 1)
        {
          goto LABEL_41;
        }

        v13 = a2[1];
        v14 = a2[2];
      }

      if (v14 < (v13 + 1))
      {
        goto LABEL_41;
      }

      v16 = *v13;
      a2[1] = v13 + 1;
    }

    *(v7 + 8 * v11) = v16;
    goto LABEL_4;
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t protocol witness for ProtobufEncodableMessage.encode(to:) in conformance ProjectionTransform(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *(v1 + 48);
  v5[2] = *(v1 + 32);
  v5[3] = v2;
  v6 = *(v1 + 64);
  v3 = *(v1 + 16);
  v5[0] = *v1;
  v5[1] = v3;
  return closure #1 in ProjectionTransform.encode(to:)(v5, a1);
}

__n128 protocol witness for ProtobufDecodableMessage.init(from:) in conformance ProjectionTransform@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result.n128_u64[0] = specialized ProjectionTransform.init(from:)(a1, v6).n128_u64[0];
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

__n128 specialized ProjectionTransform.init(from:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0x3FF0000000000000uLL;
  v8 = 0uLL;
  v9 = 0x3FF0000000000000uLL;
  v10 = 0uLL;
  v11 = 0x3FF0000000000000;
  closure #1 in ProjectionTransform.init(from:)(&v7, a1, &v6);
  if (!v2)
  {
    v5 = v10;
    *(a2 + 32) = v9;
    *(a2 + 48) = v5;
    *(a2 + 64) = v11;
    result = v8;
    *a2 = v7;
    *(a2 + 16) = result;
  }

  return result;
}

__n128 LuminanceCurveEffect.curve.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 LuminanceCurveEffect.curve.setter(__n128 *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

double LuminanceCurveEffect.effectValue(size:)@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 4);
  v4 = swift_allocObject();
  v9 = *v1;
  LODWORD(v10) = v3;
  _s7SwiftUI14GraphicsFilterOWOi15_(&v9);
  v5 = v14;
  v4[5] = v13;
  v4[6] = v5;
  v4[7] = v15[0];
  *(v4 + 124) = *(v15 + 12);
  v6 = v10;
  v4[1] = v9;
  v4[2] = v6;
  result = *&v11;
  v8 = v12;
  v4[3] = v11;
  v4[4] = v8;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 12) = 10;
  return result;
}

uint64_t View.luminanceCurve(_:amount:)(uint64_t a1, float a2, float a3, float a4, float a5, float a6)
{
  *v7 = a2;
  *&v7[1] = a3;
  *&v7[2] = a4;
  *&v7[3] = a5;
  *&v7[4] = a6;
  return View.modifier<A>(_:)(v7, a1, &type metadata for LuminanceCurveEffect);
}

unint64_t instantiation function for generic protocol witness table for LuminanceCurveEffect(uint64_t a1)
{
  result = lazy protocol witness table accessor for type LuminanceCurveEffect and conformance LuminanceCurveEffect();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type LuminanceCurveEffect and conformance LuminanceCurveEffect()
{
  result = lazy protocol witness table cache variable for type LuminanceCurveEffect and conformance LuminanceCurveEffect;
  if (!lazy protocol witness table cache variable for type LuminanceCurveEffect and conformance LuminanceCurveEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LuminanceCurveEffect and conformance LuminanceCurveEffect);
  }

  return result;
}

Swift::Void __swiftcall SeedValues.collect()()
{
  v2 = v0;
  v3 = type metadata accessor for SeedValue();
  v4 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v47 = &v45 - v5;
  v6 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v55 = &v45 - v8;
  v48 = v2;
  v9 = *(v2 + 16);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v67 = &v45 - v15;
  v69 = v3;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v65 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v65);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v64 = &v45 - v21;
  v22 = *v1;
  v23 = *v1 + 64;
  v24 = 1 << *(*v1 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(*v1 + 64);
  v45 = (v24 + 63) >> 6;
  v66 = (v10 + 16);
  v68 = (v10 + 32);
  v49 = v6 + 32;
  v50 = v6 + 16;
  v62 = (v20 + 32);
  v63 = TupleTypeMetadata2 - 8;
  v59 = (v6 + 8);
  v56 = v6;
  v46 = (v6 + 56);
  v54 = v10;
  v57 = v22;
  v58 = (v10 + 8);

  v27 = 0;
  v60 = v23;
  v61 = v9;
  v52 = TupleTypeMetadata2;
  v53 = v13;
  v51 = v18;
  while (v26)
  {
    v28 = v27;
LABEL_15:
    v31 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v32 = v31 | (v28 << 6);
    v33 = v57;
    v34 = v54;
    (*(v54 + 16))(v67, *(v57 + 48) + *(v54 + 72) * v32, v9);
    v35 = v56;
    v36 = v55;
    v37 = v69;
    (*(v56 + 16))(v55, *(v33 + 56) + *(v56 + 72) * v32, v69);
    v38 = *(v52 + 48);
    v39 = *(v34 + 32);
    TupleTypeMetadata2 = v52;
    v18 = v51;
    v39();
    (*(v35 + 32))(&v18[v38], v36, v37);
    v40 = 0;
    v13 = v53;
LABEL_16:
    v41 = *(TupleTypeMetadata2 - 8);
    (*(v41 + 56))(v18, v40, 1, TupleTypeMetadata2);
    v42 = v64;
    (*v62)(v64, v18, v65);
    if ((*(v41 + 48))(v42, 1, TupleTypeMetadata2) == 1)
    {

      return;
    }

    v43 = &v42[*(TupleTypeMetadata2 + 48)];
    v9 = v61;
    (*v68)(v13, v42, v61);
    v44 = *&v43[*(v69 + 28)];
    (*v59)(v43);
    if (v44 != v1[2])
    {
      (*v66)(v67, v13, v9);
      (*v46)(v47, 1, 1, v69);
      type metadata accessor for Dictionary();
      Dictionary.subscript.setter();
    }

    (*v58)(v13, v9);
    v23 = v60;
  }

  if (v45 <= v27 + 1)
  {
    v29 = v27 + 1;
  }

  else
  {
    v29 = v45;
  }

  v30 = v29 - 1;
  while (1)
  {
    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v28 >= v45)
    {
      v26 = 0;
      v40 = 1;
      v27 = v30;
      goto LABEL_16;
    }

    v26 = *(v23 + 8 * v28);
    ++v27;
    if (v26)
    {
      v27 = v28;
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t SeedValues.setValue(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a2;
  v5 = *(a3 + 24);
  v31 = type metadata accessor for SeedValue();
  v6 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v28 - v7;
  v30 = *(a3 + 16);
  v28 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v33 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - v13;
  v15 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v28 - v21;
  (*(v12 + 16))(v14, a1, v11, v20);
  v23 = (*(v15 + 48))(v14, 1, v5);
  v24 = (v28 + 16);
  if (v23 == 1)
  {
    (*(v12 + 8))(v14, v11);
    (*v24)(v33, v29, v30);
    (*(*(v31 - 8) + 56))(v8, 1, 1, v31);
    type metadata accessor for Dictionary();
    return Dictionary.subscript.setter();
  }

  else
  {
    v28 = a3;
    v26 = *(v15 + 32);
    v26(v22, v14, v5);
    (*v24)(v33, v29, v30);
    (*(v15 + 16))(v18, v22, v5);
    v27 = *(v32 + 8);
    v26(v8, v18, v5);
    *&v8[*(type metadata accessor for SeedValue() + 28)] = v27;
    (*(*(v31 - 8) + 56))(v8, 0, 1, v31);
    type metadata accessor for Dictionary();
    Dictionary.subscript.setter();
    return (*(v15 + 8))(v22, v5);
  }
}

uint64_t SeedValues.value(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v38 = a3;
  v7 = *(a2 + 16);
  v33 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v35 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *(v9 + 24);
  v10 = type metadata accessor for SeedValue();
  v32 = type metadata accessor for Optional();
  v11 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v31 - v15;
  v17 = *(v10 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v31 - v20;
  v36 = v4;
  v22 = *v4;
  v23 = *(a2 + 32);
  v34 = a1;
  MEMORY[0x193ABE750](a1, v22, v7, v10, v23, v19);
  if ((*(v17 + 48))(v16, 1, v10) == 1)
  {
    (*(v11 + 8))(v16, v32);
    v25 = v37;
    v24 = v38;
    v26 = *(v37 - 8);
    v27 = 1;
  }

  else
  {
    (*(v17 + 32))(v21, v16, v10);
    v28 = v35;
    *&v21[*(v10 + 28)] = *(v36 + 2);
    (*(v33 + 16))(v28, v34, v7);
    (*(v17 + 16))(v13, v21, v10);
    (*(v17 + 56))(v13, 0, 1, v10);
    type metadata accessor for Dictionary();
    Dictionary.subscript.setter();
    v25 = v37;
    v29 = v38;
    v26 = *(v37 - 8);
    (*(v26 + 32))(v38, v21, v37);
    v27 = 0;
    v24 = v29;
  }

  return (*(v26 + 56))(v24, v27, 1, v25);
}

uint64_t SeedValues.resetValue(for:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SeedValue();
  v5 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = *(a2 + 16);
  v10 = MEMORY[0x1EEE9AC00](v9);
  (*(v12 + 16))(&v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8, v10);
  (*(*(v4 - 8) + 56))(v7, 1, 1, v4);
  type metadata accessor for Dictionary();
  return Dictionary.subscript.setter();
}

uint64_t SeedValue.init(value:seed:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for SeedValue();
  *(a4 + *(result + 28)) = a2;
  return result;
}

BOOL static SeedValue<A>.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for SeedValue();
  return *(a1 + *(v4 + 28)) == *(a2 + *(v4 + 28));
}

Swift::Int SeedValue<A>.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + *(a1 + 28)));
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance <A> SeedValue<A>(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  SeedValue<A>.hash(into:)(v4, a2);
  return Hasher._finalize()();
}

uint64_t SeedValues.base.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t static SeedValues<>.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  type metadata accessor for SeedValue();
  swift_getWitnessTable();
  return static Dictionary<>.== infix(_:_:)() & (v2 == v3);
}

void SeedValues<>.hash(into:)()
{
  v1 = *(v0 + 8);
  type metadata accessor for SeedValue();
  swift_getWitnessTable();
  Dictionary<>.hash(into:)();
  Hasher._combine(_:)(v1);
}

Swift::Int SeedValues<>.hashValue.getter()
{
  Hasher.init(_seed:)();
  SeedValues<>.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance <> SeedValues<A, B>()
{
  Hasher.init(_seed:)();
  SeedValues<>.hash(into:)();
  return Hasher._finalize()();
}

void SpringAnimation.init(mass:stiffness:damping:initialVelocity:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
}

void SpringAnimation.init(mass:stiffness:damping:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = 0;
}

uint64_t SpringAnimation.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x193AC11E0](*&v1);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x193AC11E0](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x193AC11E0](*&v6);
  if (v4 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v4;
  }

  return MEMORY[0x193AC11E0](*&v7);
}

Swift::Int SpringAnimation.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  Hasher.init(_seed:)();
  if (v1 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v1;
  }

  MEMORY[0x193AC11E0](*&v5);
  if (v2 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v2;
  }

  MEMORY[0x193AC11E0](*&v6);
  if (v3 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v3;
  }

  MEMORY[0x193AC11E0](*&v7);
  if (v4 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v4;
  }

  MEMORY[0x193AC11E0](*&v8);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SpringAnimation()
{
  Hasher.init(_seed:)();
  SpringAnimation.hash(into:)();
  return Hasher._finalize()();
}

void *SpringAnimation.encode(to:)(void *result)
{
  v2 = v1;
  v3 = result;
  v5 = *v2;
  v4 = v2[1];
  v7 = v2[2];
  v6 = v2[3];
  if (*v2 != 1.0)
  {
    ProtobufEncoder.encodeVarint(_:)(9uLL);
    v8 = v3[1];
    result = (v8 + 8);
    if (__OFADD__(v8, 8))
    {
      __break(1u);
      goto LABEL_19;
    }

    if (v3[2] < result)
    {
      goto LABEL_21;
    }

    v3[1] = result;
    *(*v3 + v8) = v5;
  }

  while (v4 != 100.0)
  {
    ProtobufEncoder.encodeVarint(_:)(0x11uLL);
    v9 = v3[1];
    result = (v9 + 8);
    if (!__OFADD__(v9, 8))
    {
      if (v3[2] >= result)
      {
        v3[1] = result;
        *(*v3 + v9) = v4;
        goto LABEL_9;
      }

      goto LABEL_23;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    result = ProtobufEncoder.growBufferSlow(to:)(result);
    *result = v5;
  }

  while (1)
  {
LABEL_9:
    if (v7 == 20.0)
    {
      goto LABEL_13;
    }

    ProtobufEncoder.encodeVarint(_:)(0x19uLL);
    v10 = v3[1];
    result = (v10 + 8);
    if (__OFADD__(v10, 8))
    {
      goto LABEL_20;
    }

    if (v3[2] >= result)
    {
      v3[1] = result;
      *(*v3 + v10) = v7;
LABEL_13:
      if (v6 == 0.0)
      {
        return result;
      }

      goto LABEL_14;
    }

    result = ProtobufEncoder.growBufferSlow(to:)(result);
    *result = v7;
    if (v6 == 0.0)
    {
      return result;
    }

LABEL_14:
    ProtobufEncoder.encodeVarint(_:)(0x21uLL);
    v11 = v3[1];
    result = (v11 + 8);
    if (!__OFADD__(v11, 8))
    {
      break;
    }

    __break(1u);
LABEL_23:
    result = ProtobufEncoder.growBufferSlow(to:)(result);
    *result = v4;
  }

  if (v3[2] < result)
  {
    result = ProtobufEncoder.growBufferSlow(to:)(result);
    *result = v6;
  }

  else
  {
    v3[1] = result;
    *(*v3 + v11) = v6;
  }

  return result;
}

unint64_t SpringAnimation.init(from:)@<X0>(unint64_t result@<X0>, double *a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  v7 = 0.0;
  v8 = 20.0;
  if (v5 >= v6)
  {
    v10 = 1.0;
    v9 = 100.0;
LABEL_4:
    v3[3] = 0;
    *a2 = v10;
    a2[1] = v9;
    a2[2] = v8;
    a2[3] = v7;
    return result;
  }

  v9 = 100.0;
  v10 = 1.0;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v11 = v3[4];
      if (v5 < v11)
      {
        goto LABEL_15;
      }

      if (v11 < v5)
      {
        goto LABEL_80;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return result;
    }

    if (result <= 7)
    {
LABEL_80:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_15:
    v12 = result >> 3;
    v13 = result & 7;
    if (result >> 3 > 2)
    {
      break;
    }

    if (v12 == 1)
    {
      if (v13 != 5)
      {
        if (v13 == 2)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_83;
          }

          v16 = v3[1];
          if (v6 < v16 + result)
          {
            goto LABEL_80;
          }

          v3[3] = 9;
          v3[4] = v16 + result;
        }

        else
        {
          if (v13 != 1)
          {
            goto LABEL_80;
          }

          v16 = v3[1];
        }

        v5 = (v16 + 1);
        if (v6 < (v16 + 1))
        {
          goto LABEL_80;
        }

        v10 = *v16;
        goto LABEL_7;
      }

      v22 = v3[1];
      v5 = (v22 + 1);
      if (v6 < (v22 + 1))
      {
        goto LABEL_80;
      }

      v23 = *v22;
      v3[1] = v5;
      v10 = v23;
      goto LABEL_8;
    }

    if (v12 == 2)
    {
      if (v13 != 5)
      {
        if (v13 == 2)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_85;
          }

          v14 = v3[1];
          if (v6 < v14 + result)
          {
            goto LABEL_80;
          }

          v3[3] = 17;
          v3[4] = v14 + result;
        }

        else
        {
          if (v13 != 1)
          {
            goto LABEL_80;
          }

          v14 = v3[1];
        }

        v5 = (v14 + 1);
        if (v6 < (v14 + 1))
        {
          goto LABEL_80;
        }

        v9 = *v14;
        goto LABEL_7;
      }

      v18 = v3[1];
      v5 = (v18 + 1);
      if (v6 < (v18 + 1))
      {
        goto LABEL_80;
      }

      v19 = *v18;
      v3[1] = v5;
      v9 = v19;
      goto LABEL_8;
    }

LABEL_28:
    if ((result & 7) > 1)
    {
      if (v13 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_86;
        }

        v5 = v3[1] + result;
        if (v6 < v5)
        {
          goto LABEL_80;
        }
      }

      else
      {
        if (v13 != 5)
        {
          goto LABEL_80;
        }

        v5 = v3[1] + 4;
        if (v6 < v5)
        {
          goto LABEL_80;
        }
      }

      goto LABEL_7;
    }

    if ((result & 7) != 0)
    {
      if (v13 != 1)
      {
        goto LABEL_80;
      }

      v5 = v3[1] + 8;
      if (v6 < v5)
      {
        goto LABEL_80;
      }

      goto LABEL_7;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return result;
    }

    v5 = v3[1];
LABEL_8:
    if (v5 >= v6)
    {
      goto LABEL_4;
    }
  }

  if (v12 == 3)
  {
    if (v13 != 5)
    {
      if (v13 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_84;
        }

        v17 = v3[1];
        if (v6 < v17 + result)
        {
          goto LABEL_80;
        }

        v3[3] = 25;
        v3[4] = v17 + result;
      }

      else
      {
        if (v13 != 1)
        {
          goto LABEL_80;
        }

        v17 = v3[1];
      }

      v5 = (v17 + 1);
      if (v6 < (v17 + 1))
      {
        goto LABEL_80;
      }

      v8 = *v17;
      goto LABEL_7;
    }

    v24 = v3[1];
    v5 = (v24 + 1);
    if (v6 < (v24 + 1))
    {
      goto LABEL_80;
    }

    v25 = *v24;
    v3[1] = v5;
    v8 = v25;
    goto LABEL_8;
  }

  if (v12 != 4)
  {
    goto LABEL_28;
  }

  if (v13 == 5)
  {
    v20 = v3[1];
    v5 = (v20 + 1);
    if (v6 < (v20 + 1))
    {
      goto LABEL_80;
    }

    v21 = *v20;
    v3[1] = v5;
    v7 = v21;
    goto LABEL_8;
  }

  if (v13 != 2)
  {
    if (v13 != 1)
    {
      goto LABEL_80;
    }

    v15 = v3[1];
LABEL_5:
    v5 = (v15 + 1);
    if (v6 < (v15 + 1))
    {
      goto LABEL_80;
    }

    v7 = *v15;
LABEL_7:
    v3[1] = v5;
    goto LABEL_8;
  }

  result = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v15 = v3[1];
    if (v6 < v15 + result)
    {
      goto LABEL_80;
    }

    v3[3] = 33;
    v3[4] = v15 + result;
    goto LABEL_5;
  }

  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
  return result;
}

uint64_t specialized static Animation.interpolatingSpring(duration:bounce:initialVelocity:)(double a1, double a2, double a3)
{
  if (a1 <= 0.0)
  {
    v4 = INFINITY;
  }

  else
  {
    v4 = 6.28318531 / a1 * (6.28318531 / a1);
  }

  v5 = INFINITY;
  v6 = 1.0;
  if (a2 <= 1.0)
  {
    v7 = a2;
  }

  else
  {
    v7 = 1.0;
  }

  v8 = 1.0 - v7;
  if (a2 != 0.0)
  {
    v6 = v8;
  }

  if (a2 < 0.0)
  {
    v6 = 1.0 / (a2 + 1.0);
  }

  if (a2 > -1.0)
  {
    v5 = v6;
  }

  v9 = sqrt(v4);
  v10 = (v9 + v9) * v5;
  type metadata accessor for InternalAnimationBox<SpringAnimation>();
  result = swift_allocObject();
  *(result + 16) = 0x3FF0000000000000;
  *(result + 24) = v4;
  *(result + 32) = v10;
  *(result + 40) = a3;
  return result;
}

double EdgeInsets.subscript.getter(unsigned __int8 a1, double a2, double a3, double a4, double a5)
{
  if (a1 != 2)
  {
    a4 = a5;
  }

  if (a1)
  {
    result = a3;
  }

  if (a1 > 1u)
  {
    return a4;
  }

  return result;
}

double CGSize.inset(by:)(double a1, double a2, double a3, double a4, double a5)
{
  v5 = a5 - (a2 + a4);
  if (v5 < 0.0)
  {
    return 0.0;
  }

  else
  {
    return v5;
  }
}

BOOL EdgeInsets.isEmpty.getter(double a1, double a2, double a3, double a4)
{
  v4 = a1 == 0.0;
  if (a2 != 0.0)
  {
    v4 = 0;
  }

  if (a3 != 0.0)
  {
    v4 = 0;
  }

  return a4 == 0.0 && v4;
}

float64x2_t EdgeInsets.formPointwiseMax(_:)(float64x2_t a1, float64_t a2, float64x2_t a3, float64_t a4)
{
  a1.f64[1] = a2;
  result = vbslq_s8(vcgeq_f64(a1, *v4), a1, *v4);
  a3.f64[1] = a4;
  v6 = vbslq_s8(vcgeq_f64(a3, v4[1]), a3, v4[1]);
  *v4 = result;
  v4[1] = v6;
  return result;
}

double CGSize.outset(by:)(double a1, double a2, double a3, double a4, double a5)
{
  v5 = a5 - (-a4 - a2);
  if (v5 < 0.0)
  {
    return 0.0;
  }

  else
  {
    return v5;
  }
}

double EdgeInsets.init(_:)(double a1, double a2)
{
  if (a1 > a2)
  {
    return a1;
  }

  else
  {
    return a2;
  }
}

float64x2_t EdgeInsets.formPointwiseMin(_:)(float64x2_t a1, float64_t a2, float64x2_t a3, float64_t a4)
{
  a1.f64[1] = a2;
  result = vbslq_s8(vcgtq_f64(*v4, a1), a1, *v4);
  a3.f64[1] = a4;
  v6 = vbslq_s8(vcgtq_f64(v4[1], a3), a3, v4[1]);
  *v4 = result;
  v4[1] = v6;
  return result;
}

uint64_t OptionalEdgeInsets.top.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t OptionalEdgeInsets.leading.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t OptionalEdgeInsets.bottom.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t OptionalEdgeInsets.trailing.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t OptionalEdgeInsets.init(top:leading:bottom:trailing:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2 & 1;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4 & 1;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6 & 1;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8 & 1;
  return result;
}

uint64_t OptionalEdgeInsets.subscript.getter(unsigned __int8 a1)
{
  v2 = v1 + 32;
  if (a1 != 2)
  {
    v2 = v1 + 48;
  }

  v3 = v1 + 16;
  if (!a1)
  {
    v3 = v1;
  }

  if (a1 <= 1u)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  return *v4;
}

uint64_t OptionalEdgeInsets.subscript.setter(uint64_t result, char a2, unsigned __int8 a3)
{
  v4 = v3 + 4;
  v5 = 40;
  if (a3 != 2)
  {
    v4 = v3 + 6;
    v5 = 56;
  }

  v6 = v3 + 2;
  v7 = 24;
  if (!a3)
  {
    v6 = v3;
    v7 = 8;
  }

  if (a3 <= 1u)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  if (a3 <= 1u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  *v8 = result;
  *(v3 + v9) = a2 & 1;
  return result;
}

void *(*OptionalEdgeInsets.subscript.modify(uint64_t a1, unsigned __int8 a2))(uint64_t *a1, char a2)
{
  *(a1 + 16) = v2;
  *(a1 + 9) = a2;
  v3 = (v2 + 40);
  v4 = (v2 + 32);
  if (a2 != 2)
  {
    v4 = (v2 + 48);
    v3 = (v2 + 56);
  }

  v5 = (v2 + 24);
  v6 = (v2 + 16);
  if (!a2)
  {
    v6 = v2;
    v5 = (v2 + 8);
  }

  if (a2 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v4;
  }

  if (a2 <= 1u)
  {
    v8 = v5;
  }

  else
  {
    v8 = v3;
  }

  v9 = *v8;
  *a1 = *v7;
  *(a1 + 8) = v9;
  return OptionalEdgeInsets.subscript.modify;
}

void *OptionalEdgeInsets.subscript.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  v5 = a1[2];
  v6 = v5 + 5;
  v7 = v5 + 4;
  if (v4 == 2)
  {
    v8 = v5 + 4;
  }

  else
  {
    v8 = v5 + 6;
  }

  if (v4 == 2)
  {
    v9 = v5 + 5;
  }

  else
  {
    v9 = v5 + 7;
  }

  result = v5 + 1;
  v11 = v5 + 3;
  if (v4)
  {
    v12 = v5 + 2;
  }

  else
  {
    v12 = v5;
  }

  if (v4)
  {
    v13 = v5 + 3;
  }

  else
  {
    v13 = v5 + 1;
  }

  if (v4 <= 1)
  {
    v8 = v12;
    v9 = v13;
  }

  if (v4 != 2)
  {
    v7 = v5 + 6;
    v6 = v5 + 7;
  }

  if (v4)
  {
    v5 += 2;
    v14 = v11;
  }

  else
  {
    v14 = v5 + 1;
  }

  v15 = v4 <= 1;
  if (v4 <= 1)
  {
    v16 = v5;
  }

  else
  {
    v16 = v7;
  }

  if (v15)
  {
    v17 = v14;
  }

  else
  {
    v17 = v6;
  }

  if (a2)
  {
    v16 = v8;
    v17 = v9;
  }

  *v16 = v2;
  *v17 = v3;
  return result;
}

uint64_t OptionalEdgeInsets.adding(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = *(v2 + 16);
  v5 = *(v2 + 32);
  v6 = *(v2 + 48);
  v7 = *(v2 + 56);
  v10 = *(v2 + 8);
  v9 = *(v2 + 24);
  v8 = *(v2 + 40);
  if (*(result + 8))
  {
    if (*(result + 24))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *result + v3;
    if (*(v2 + 8))
    {
      v3 = *result;
    }

    v10 = 0;
    if (*(result + 24))
    {
LABEL_3:
      if (*(result + 40))
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  v4 = *(result + 16) + v4;
  if (*(v2 + 24))
  {
    v4 = *(result + 16);
  }

  v9 = 0;
  if (*(result + 40))
  {
LABEL_4:
    if (*(result + 56))
    {
      goto LABEL_8;
    }

    goto LABEL_5;
  }

LABEL_15:
  v5 = *(result + 32) + v5;
  if (*(v2 + 40))
  {
    v5 = *(result + 32);
  }

  v8 = 0;
  if ((*(result + 56) & 1) == 0)
  {
LABEL_5:
    v6 = *(result + 48) + v6;
    if (*(v2 + 56))
    {
      v6 = *(result + 48);
    }

    v7 = 0;
  }

LABEL_8:
  *a2 = v3;
  *(a2 + 8) = v10;
  *(a2 + 9) = *(v2 + 9);
  *(a2 + 12) = *(v2 + 12);
  *(a2 + 16) = v4;
  *(a2 + 24) = v9;
  *(a2 + 25) = *(v2 + 25);
  *(a2 + 28) = *(v2 + 28);
  *(a2 + 32) = v5;
  *(a2 + 40) = v8;
  *(a2 + 41) = *(v2 + 41);
  *(a2 + 44) = *(v2 + 44);
  *(a2 + 48) = v6;
  *(a2 + 56) = v7;
  return result;
}

BOOL OptionalEdgeInsets.in(axes:)@<W0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[2];
  v5 = *(v1 + 24);
  v6 = v1[4];
  v7 = v1[6];
  v8 = *(v1 + 56);
  v12 = *(v1 + 8);
  v11 = *(v1 + 40);
  if (!Axis.Set.contains(_:)(SwiftUI_Axis_vertical))
  {
    v6 = 0;
    v3 = 0;
    v12 = 1;
    v11 = 1;
  }

  result = Axis.Set.contains(_:)(SwiftUI_Axis_horizontal);
  if (!result)
  {
    v7 = 0;
    v4 = 0;
    v8 = 1;
    v5 = 1;
  }

  *a1 = v3;
  *(a1 + 8) = v12;
  *(a1 + 9) = *(v1 + 9);
  *(a1 + 12) = *(v1 + 3);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 25) = *(v1 + 25);
  *(a1 + 28) = *(v1 + 7);
  *(a1 + 32) = v6;
  *(a1 + 40) = v11;
  v10 = *(v1 + 41);
  *(a1 + 44) = *(v1 + 11);
  *(a1 + 41) = v10;
  *(a1 + 48) = v7;
  *(a1 + 56) = v8;
  return result;
}

uint64_t OptionalEdgeInsets.in(edges:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = v2[2];
  v5 = v2[4];
  v6 = v2[6];
  v7 = *(v2 + 56);
  v10 = *(v2 + 8);
  v9 = *(v2 + 24);
  v8 = *(v2 + 40);
  if (result)
  {
    if ((result & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    v10 = 1;
    if ((result & 2) != 0)
    {
LABEL_3:
      if ((result & 4) != 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      v5 = 0;
      v8 = 1;
      if ((result & 8) != 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  v4 = 0;
  v9 = 1;
  if ((result & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((result & 8) == 0)
  {
LABEL_5:
    v6 = 0;
    v7 = 1;
  }

LABEL_6:
  *a2 = v3;
  *(a2 + 8) = v10;
  *(a2 + 9) = *(v2 + 9);
  *(a2 + 12) = *(v2 + 3);
  *(a2 + 16) = v4;
  *(a2 + 24) = v9;
  *(a2 + 25) = *(v2 + 25);
  *(a2 + 28) = *(v2 + 7);
  *(a2 + 32) = v5;
  *(a2 + 40) = v8;
  *(a2 + 41) = *(v2 + 41);
  *(a2 + 44) = *(v2 + 11);
  *(a2 + 48) = v6;
  *(a2 + 56) = v7;
  return result;
}

uint64_t EdgeInsets.subscript.setter(uint64_t result, double a2)
{
  v3 = v2 + 2;
  if (result != 2)
  {
    v3 = v2 + 3;
  }

  v4 = v2 + 1;
  if (!result)
  {
    v4 = v2;
  }

  if (result <= 1u)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  *v5 = a2;
  return result;
}

void OptionalEdgeInsets.hash(into:)()
{
  v1 = v0[2];
  v2 = *(v0 + 24);
  v3 = v0[4];
  v4 = *(v0 + 40);
  v5 = v0[6];
  v6 = *(v0 + 56);
  if (*(v0 + 8) == 1)
  {
    Hasher._combine(_:)(0);
    if (!v2)
    {
      goto LABEL_3;
    }

LABEL_19:
    Hasher._combine(_:)(0);
    if (!v4)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

  v10 = *v0;
  Hasher._combine(_:)(1u);
  if ((v10 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  MEMORY[0x193AC11E0](v11);
  if (v2)
  {
    goto LABEL_19;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v7 = v1;
  }

  else
  {
    v7 = 0;
  }

  MEMORY[0x193AC11E0](v7);
  if (!v4)
  {
LABEL_7:
    Hasher._combine(_:)(1u);
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v8 = v3;
    }

    else
    {
      v8 = 0;
    }

    MEMORY[0x193AC11E0](v8);
    if (!v6)
    {
      goto LABEL_11;
    }

LABEL_21:
    Hasher._combine(_:)(0);
    return;
  }

LABEL_20:
  Hasher._combine(_:)(0);
  if (v6)
  {
    goto LABEL_21;
  }

LABEL_11:
  Hasher._combine(_:)(1u);
  if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v9 = v5;
  }

  else
  {
    v9 = 0;
  }

  MEMORY[0x193AC11E0](v9);
}

Swift::Int OptionalEdgeInsets.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  v4 = *(v0 + 24);
  v5 = v0[4];
  v6 = *(v0 + 40);
  v7 = v0[6];
  v8 = *(v0 + 56);
  Hasher.init(_seed:)();
  if (v2 == 1)
  {
    Hasher._combine(_:)(0);
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_19:
    Hasher._combine(_:)(0);
    if (!v6)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

  Hasher._combine(_:)(1u);
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v12 = v1;
  }

  else
  {
    v12 = 0;
  }

  MEMORY[0x193AC11E0](v12);
  if (v4)
  {
    goto LABEL_19;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0;
  }

  MEMORY[0x193AC11E0](v9);
  if (!v6)
  {
LABEL_7:
    Hasher._combine(_:)(1u);
    if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v10 = v5;
    }

    else
    {
      v10 = 0;
    }

    MEMORY[0x193AC11E0](v10);
    if (!v8)
    {
      goto LABEL_11;
    }

LABEL_21:
    Hasher._combine(_:)(0);
    return Hasher._finalize()();
  }

LABEL_20:
  Hasher._combine(_:)(0);
  if (v8)
  {
    goto LABEL_21;
  }

LABEL_11:
  Hasher._combine(_:)(1u);
  if ((v7 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v11 = v7;
  }

  else
  {
    v11 = 0;
  }

  MEMORY[0x193AC11E0](v11);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance OptionalEdgeInsets()
{
  Hasher.init(_seed:)();
  OptionalEdgeInsets.hash(into:)();
  return Hasher._finalize()();
}

uint64_t *EdgeInsets.init(_:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  if (result[1])
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 1;
  }

  else
  {
    v2 = *result;
    v3 = result[2];
    v4 = result[4];
    v7 = result[6];
    if (result[7])
    {
      v2 = 0;
      v3 = 0;
      v4 = 0;
      v7 = 0;
      v8 = 1;
    }

    else
    {
      v8 = 0;
    }

    if (result[5])
    {
      v2 = 0;
      v3 = 0;
      v4 = 0;
      v7 = 0;
      v8 = 1;
    }

    if (result[3])
    {
      v2 = 0;
      v3 = 0;
      v4 = 0;
      v5 = 0;
    }

    else
    {
      v5 = v7;
    }

    if (result[3])
    {
      v6 = 1;
    }

    else
    {
      v6 = v8;
    }
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  return result;
}

uint64_t *OptionalEdgeInsets.init(_:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 32);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v4 = result[2];
    v3 = result[3];
    v6 = *result;
    v5 = result[1];
  }

  *a2 = v6;
  *(a2 + 8) = v2 & 1;
  *(a2 + 16) = v5;
  *(a2 + 24) = v2 & 1;
  *(a2 + 32) = v4;
  *(a2 + 40) = v2 & 1;
  *(a2 + 48) = v3;
  *(a2 + 56) = v2 & 1;
  return result;
}
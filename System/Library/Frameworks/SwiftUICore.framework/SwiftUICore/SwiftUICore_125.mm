void *specialized ContentResponderPathDataRule.value.getter@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  if (*MEMORY[0x1E698D3F8] == a2)
  {
    v5 = 1;
  }

  else
  {
    v5 = *AGGraphGetValue();
  }

  AGGraphGetValue();
  type metadata accessor for CGSize(0);
  Value = AGGraphGetValue();
  v7 = *Value;
  v8 = *(Value + 8);
  if (v5 != 1)
  {
    if (one-time initialization token for v3 != -1)
    {
      swift_once();
    }

    v13 = static Semantics.v3;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C)
    {
      if ((dyld_program_sdk_at_least() & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    else if (static Semantics.forced < v13)
    {
      goto LABEL_5;
    }

    v10 = 0.0;
    v11 = 0.0;
    v12 = 6;
    goto LABEL_23;
  }

LABEL_5:
  v20.origin.x = 0.0;
  v20.origin.y = 0.0;
  v20.size.width = v7;
  v20.size.height = v8;
  IsNull = CGRectIsNull(v20);
  if (IsNull)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v7;
  }

  if (IsNull)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v8;
  }

  if (IsNull)
  {
    v12 = 6;
  }

  else
  {
    v12 = 0;
  }

LABEL_23:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v15 = result;
  v17 = result[2];
  v16 = result[3];
  if (v17 >= v16 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, result);
    v15 = result;
  }

  if (v5 <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = v5;
  }

  v15[2] = v17 + 1;
  v19 = &v15[7 * v17];
  v19[4] = v18;
  v19[5] = 0;
  v19[6] = 0;
  *(v19 + 7) = v10;
  *(v19 + 8) = v11;
  *(v19 + 72) = v12;
  *(v19 + 76) = a1;
  *a3 = a1;
  *(a3 + 4) = 0;
  *(a3 + 8) = HIDWORD(a1);
  *(a3 + 12) = 0;
  *(a3 + 16) = v15;
  return result;
}

{
  if (*MEMORY[0x1E698D3F8] == a2)
  {
    v5 = 1;
  }

  else
  {
    v5 = *AGGraphGetValue();
  }

  type metadata accessor for _ShapeView<Rectangle, ForegroundStyle>();
  AGGraphGetValue();
  type metadata accessor for CGSize(0);
  Value = AGGraphGetValue();
  v7 = *Value;
  v8 = *(Value + 8);
  if (v5 != 1)
  {
    if (one-time initialization token for v3 != -1)
    {
      swift_once();
    }

    v13 = static Semantics.v3;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C)
    {
      if ((dyld_program_sdk_at_least() & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    else if (static Semantics.forced < v13)
    {
      goto LABEL_5;
    }

    v10 = 0.0;
    v11 = 0.0;
    v12 = 6;
    goto LABEL_23;
  }

LABEL_5:
  v20.origin.x = 0.0;
  v20.origin.y = 0.0;
  v20.size.width = v7;
  v20.size.height = v8;
  IsNull = CGRectIsNull(v20);
  if (IsNull)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v7;
  }

  if (IsNull)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v8;
  }

  if (IsNull)
  {
    v12 = 6;
  }

  else
  {
    v12 = 0;
  }

LABEL_23:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v15 = result;
  v17 = result[2];
  v16 = result[3];
  if (v17 >= v16 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, result);
    v15 = result;
  }

  if (v5 <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = v5;
  }

  v15[2] = v17 + 1;
  v19 = &v15[7 * v17];
  v19[4] = v18;
  v19[5] = 0;
  v19[6] = 0;
  *(v19 + 7) = v10;
  *(v19 + 8) = v11;
  *(v19 + 72) = v12;
  *(v19 + 76) = a1;
  *a3 = a1;
  *(a3 + 4) = 0;
  *(a3 + 8) = HIDWORD(a1);
  *(a3 + 12) = 0;
  *(a3 + 16) = v15;
  return result;
}

{
  if (*MEMORY[0x1E698D3F8] == a2)
  {
    v5 = 1;
  }

  else
  {
    v5 = *AGGraphGetValue();
  }

  type metadata accessor for _ShapeView<Ellipse, ForegroundStyle>();
  AGGraphGetValue();
  type metadata accessor for CGSize(0);
  Value = AGGraphGetValue();
  v8 = *Value;
  v7 = *(Value + 8);
  if (v5 != 1)
  {
    if (one-time initialization token for v3 != -1)
    {
      swift_once();
    }

    v12 = static Semantics.v3;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C)
    {
      if (dyld_program_sdk_at_least())
      {
        goto LABEL_15;
      }
    }

    else if (static Semantics.forced >= v12)
    {
      goto LABEL_15;
    }
  }

  v19.origin.x = 0.0;
  v19.origin.y = 0.0;
  v19.size.width = v8;
  v19.size.height = v7;
  if (!CGRectIsNull(v19))
  {
    v20.origin.x = 0.0;
    v20.origin.y = 0.0;
    v20.size.width = v8;
    v20.size.height = v7;
    v9 = v8;
    v10 = v7;
    v11 = !CGRectIsInfinite(v20);
    goto LABEL_16;
  }

LABEL_15:
  v9 = 0.0;
  v10 = 0.0;
  v11 = 6;
LABEL_16:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v14 = result;
  v16 = result[2];
  v15 = result[3];
  if (v16 >= v15 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, result);
    v14 = result;
  }

  if (v5 <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = v5;
  }

  v14[2] = v16 + 1;
  v18 = &v14[7 * v16];
  v18[4] = v17;
  v18[5] = 0;
  v18[6] = 0;
  *(v18 + 7) = v9;
  *(v18 + 8) = v10;
  *(v18 + 72) = v11;
  *(v18 + 76) = a1;
  *a3 = a1;
  *(a3 + 4) = 0;
  *(a3 + 8) = HIDWORD(a1);
  *(a3 + 12) = 0;
  *(a3 + 16) = v14;
  return result;
}

{
  if (*MEMORY[0x1E698D3F8] == a2)
  {
    v5 = 1;
  }

  else
  {
    v5 = *AGGraphGetValue();
  }

  type metadata accessor for _ShapeView<Rectangle, MeshGradient>();
  AGGraphGetValue();
  type metadata accessor for CGSize(0);

  Value = AGGraphGetValue();
  v7 = *Value;
  v8 = *(Value + 8);
  if (v5 != 1)
  {
    if (one-time initialization token for v3 != -1)
    {
      swift_once();
    }

    v13 = static Semantics.v3;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C)
    {
      if ((dyld_program_sdk_at_least() & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    else if (static Semantics.forced < v13)
    {
      goto LABEL_5;
    }

    v10 = 0.0;
    v11 = 0.0;
    v12 = 6;
    goto LABEL_23;
  }

LABEL_5:
  v20.origin.x = 0.0;
  v20.origin.y = 0.0;
  v20.size.width = v7;
  v20.size.height = v8;
  IsNull = CGRectIsNull(v20);

  if (IsNull)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v7;
  }

  if (IsNull)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v8;
  }

  if (IsNull)
  {
    v12 = 6;
  }

  else
  {
    v12 = 0;
  }

LABEL_23:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v15 = result;
  v17 = result[2];
  v16 = result[3];
  if (v17 >= v16 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, result);
    v15 = result;
  }

  if (v5 <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = v5;
  }

  v15[2] = v17 + 1;
  v19 = &v15[7 * v17];
  v19[4] = v18;
  v19[5] = 0;
  v19[6] = 0;
  *(v19 + 7) = v10;
  *(v19 + 8) = v11;
  *(v19 + 72) = v12;
  *(v19 + 76) = a1;
  *a3 = a1;
  *(a3 + 4) = 0;
  *(a3 + 8) = HIDWORD(a1);
  *(a3 + 12) = 0;
  *(a3 + 16) = v15;
  return result;
}

__n128 specialized ContentResponderPathDataRule.value.getter@<Q0>(uint64_t a1@<X0>, int a2@<W2>, void (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  if (*MEMORY[0x1E698D3F8] == a2)
  {
    v7 = 1;
  }

  else
  {
    v7 = *AGGraphGetValue();
  }

  a3(0);
  AGGraphGetValue();
  type metadata accessor for CGSize(0);
  Value = AGGraphGetValue();
  v9 = *Value;
  v10 = Value[1];
  if (v7 == 1)
  {
    goto LABEL_5;
  }

  if (one-time initialization token for v3 != -1)
  {
    swift_once();
  }

  v12 = static Semantics.v3;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C)
  {
    if (dyld_program_sdk_at_least())
    {
      goto LABEL_14;
    }

LABEL_5:
    Capsule.path(in:)(v21, 0.0, 0.0, v9, v10);
    v19 = v21[1];
    v20 = v21[0];
    v11 = v22;
    goto LABEL_15;
  }

  if (static Semantics.forced < v12)
  {
    goto LABEL_5;
  }

LABEL_14:
  v19 = 0u;
  v20 = 0u;
  v11 = 6;
LABEL_15:
  v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v15 = v13[2];
  v14 = v13[3];
  if (v15 >= v14 >> 1)
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v13);
  }

  if (v7 <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = v7;
  }

  v13[2] = v15 + 1;
  v17 = &v13[7 * v15];
  v17[4] = v16;
  result = v20;
  *(v17 + 7) = v19;
  *(v17 + 5) = v20;
  *(v17 + 72) = v11;
  *(v17 + 76) = a1;
  *a4 = a1;
  *(a4 + 4) = 0;
  *(a4 + 8) = HIDWORD(a1);
  *(a4 + 12) = 0;
  *(a4 + 16) = v13;
  return result;
}

__n128 specialized ContentResponderPathDataRule.value.getter@<Q0>(uint64_t a1@<X0>, int a2@<W2>, void (*a3)(void)@<X3>, void (*a4)(_OWORD *__return_ptr, double, double, double, double)@<X4>, uint64_t a5@<X8>)
{
  if (*MEMORY[0x1E698D3F8] == a2)
  {
    v9 = 1;
  }

  else
  {
    v9 = *AGGraphGetValue();
  }

  a3(0);
  AGGraphGetValue();
  type metadata accessor for CGSize(0);
  Value = AGGraphGetValue();
  v11 = *Value;
  v12 = Value[1];
  if (v9 == 1)
  {
    goto LABEL_5;
  }

  if (one-time initialization token for v3 != -1)
  {
    swift_once();
  }

  v14 = static Semantics.v3;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C)
  {
    if (dyld_program_sdk_at_least())
    {
      goto LABEL_14;
    }

LABEL_5:
    a4(v23, 0.0, 0.0, v11, v12);
    v21 = v23[1];
    v22 = v23[0];
    v13 = v24;
    goto LABEL_15;
  }

  if (static Semantics.forced < v14)
  {
    goto LABEL_5;
  }

LABEL_14:
  v21 = 0u;
  v22 = 0u;
  v13 = 6;
LABEL_15:
  v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v17 = v15[2];
  v16 = v15[3];
  if (v17 >= v16 >> 1)
  {
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v15);
  }

  if (v9 <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = v9;
  }

  v15[2] = v17 + 1;
  v19 = &v15[7 * v17];
  v19[4] = v18;
  result = v22;
  *(v19 + 7) = v21;
  *(v19 + 5) = v22;
  *(v19 + 72) = v13;
  *(v19 + 76) = a1;
  *a5 = a1;
  *(a5 + 4) = 0;
  *(a5 + 8) = HIDWORD(a1);
  *(a5 + 12) = 0;
  *(a5 + 16) = v15;
  return result;
}

void *specialized ContentResponderPathDataRule.value.getter@<X0>(uint64_t a1@<X0>, int a2@<W2>, void (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  if (*MEMORY[0x1E698D3F8] == a2)
  {
    v7 = 1;
  }

  else
  {
    v7 = *AGGraphGetValue();
  }

  a3(0);
  AGGraphGetValue();
  type metadata accessor for CGSize(0);

  Value = AGGraphGetValue();
  v9 = *Value;
  v10 = *(Value + 8);
  if (v7 != 1)
  {
    if (one-time initialization token for v3 != -1)
    {
      swift_once();
    }

    v16 = static Semantics.v3;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C)
    {
      if ((dyld_program_sdk_at_least() & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    else if (static Semantics.forced < v16)
    {
      goto LABEL_5;
    }

    v13 = 0.0;
    v14 = 0.0;
    v15 = 6;
    goto LABEL_23;
  }

LABEL_5:
  v23.origin.x = 0.0;
  v23.origin.y = 0.0;
  v23.size.width = v9;
  v23.size.height = v10;
  IsNull = CGRectIsNull(v23);

  v12 = !IsNull;
  if (IsNull)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v9;
  }

  if (v12)
  {
    v14 = v10;
  }

  else
  {
    v14 = 0.0;
  }

  if (v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = 6;
  }

LABEL_23:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v18 = result;
  v20 = result[2];
  v19 = result[3];
  if (v20 >= v19 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, result);
    v18 = result;
  }

  if (v7 <= 1)
  {
    v21 = 1;
  }

  else
  {
    v21 = v7;
  }

  v18[2] = v20 + 1;
  v22 = &v18[7 * v20];
  v22[4] = v21;
  v22[5] = 0;
  v22[6] = 0;
  *(v22 + 7) = v13;
  *(v22 + 8) = v14;
  *(v22 + 72) = v15;
  *(v22 + 76) = a1;
  *a4 = a1;
  *(a4 + 4) = 0;
  *(a4 + 8) = HIDWORD(a1);
  *(a4 + 12) = 0;
  *(a4 + 16) = v18;
  return result;
}

uint64_t _ViewListInputs.base.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v6[0] = *v1;
  v6[1] = v2;
  v7 = v1[2];
  v3 = v7;
  *a1 = v6[0];
  a1[1] = v2;
  a1[2] = v3;
  return outlined init with copy of _GraphInputs(v6, &v5);
}

__n128 _ViewListInputs.base.setter(uint64_t a1)
{
  v3 = v1[1];
  v6[0] = *v1;
  v6[1] = v3;
  v6[2] = v1[2];
  outlined destroy of _GraphInputs(v6);
  v4 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v4;
  result = *(a1 + 32);
  v1[2] = result;
  return result;
}

_BYTE *(*_ViewListInputs.traits.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  v2 = *(v1 + 64);
  v3 = *MEMORY[0x1E698D3F8];
  *(a1 + 16) = *MEMORY[0x1E698D3F8];
  v4 = v2 == v3;
  if (v2 == v3)
  {
    v2 = 0;
  }

  *(a1 + 8) = v2;
  v5 = v4;
  *(a1 + 12) = v5;
  return _ViewListInputs.traits.modify;
}

_BYTE *_ViewListInputs.traits.modify(_BYTE *result)
{
  v1 = result + 8;
  if (result[12])
  {
    v1 = result + 16;
  }

  *(*result + 64) = *v1;
  return result;
}

uint64_t _ViewListInputs.traitKeys.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  *a1 = *(v1 + 72);
  *(a1 + 8) = v2;
}

uint64_t _ViewListInputs.traitKeys.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);

  *(v1 + 72) = v2;
  *(v1 + 80) = v3;
  return result;
}

uint64_t _ViewListInputs.containerContext.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 88) = result;
  *(v2 + 96) = a2;
  return result;
}

uint64_t _ViewListInputs.debugReplaceableViewCount.setter()
{
  swift_weakAssign();
}

uint64_t (*_ViewListInputs.debugReplaceableViewCount.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = swift_weakLoadStrong();
  return _ViewListInputs.debugReplaceableViewCount.modify;
}

uint64_t _ViewListInputs.debugReplaceableViewCount.modify()
{
  swift_weakAssign();
}

__n128 _ViewListInputs.contentOffset.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[8].n128_u8[0];
  result = v1[7];
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 _ViewListInputs.contentOffset.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  v1[7] = *a1;
  v1[8].n128_u8[0] = v2;
  return result;
}

__n128 _ViewListInputs.init(_:implicitID:options:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  *(a4 + 64) = *MEMORY[0x1E698D3F8];
  *(a4 + 72) = MEMORY[0x1E69E7CD0];
  *(a4 + 80) = 0;
  *(a4 + 88) = 0;
  *(a4 + 96) = 0;
  swift_weakInit();
  *(a4 + 112) = 0;
  *(a4 + 120) = 0;
  *(a4 + 128) = -1;
  v8 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v8;
  result = *(a1 + 32);
  *(a4 + 32) = result;
  *(a4 + 48) = a2;
  *(a4 + 56) = v7;
  return result;
}

__n128 _ViewListInputs.init(_:implicitID:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 64) = *MEMORY[0x1E698D3F8];
  *(a3 + 72) = MEMORY[0x1E69E7CD0];
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  *(a3 + 96) = 0;
  swift_weakInit();
  *(a3 + 112) = 0;
  *(a3 + 120) = 0;
  *(a3 + 128) = -1;
  v6 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v6;
  result = *(a1 + 32);
  *(a3 + 32) = result;
  *(a3 + 48) = a2;
  *(a3 + 56) = 0;
  return result;
}

void (*_ViewListInputs.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(Swift::Int **a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a3;
  v10[2] = v4;
  *v10 = a2;
  v12 = *(a4 + 8);
  v10[3] = v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[4] = AssociatedTypeWitness;
  v14 = *(AssociatedTypeWitness - 8);
  v11[5] = v14;
  v15 = *(v14 + 64);
  if (v9)
  {
    v11[6] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v11[6] = malloc(*(v14 + 64));
    v16 = malloc(v15);
  }

  v11[7] = v16;
  _GraphInputs.subscript.getter(a2, a3, v12);
  return _ViewInputs.subscript.modify;
}

uint64_t _ViewListInputs.subscript.setter(uint64_t a1, Swift::Int a2, Swift::Int a3, uint64_t a4)
{
  specialized _ViewInputs.subscript.setter(a1, a2, a3, a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 8);

  return v6(a1, AssociatedTypeWitness);
}

void (*_ViewListInputs.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(Swift::Int **a1, char a2)
{
  v11 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0x48uLL);
  }

  v13 = v12;
  *a1 = v12;
  v12[2] = a5;
  v12[3] = v5;
  *v12 = a2;
  v12[1] = a3;
  v14 = *(a4 + 8);
  v12[4] = v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13[5] = AssociatedTypeWitness;
  v16 = *(AssociatedTypeWitness - 8);
  v13[6] = v16;
  v17 = *(v16 + 64);
  if (v11)
  {
    v13[7] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v13[7] = malloc(*(v16 + 64));
    v18 = malloc(v17);
  }

  v13[8] = v18;
  _GraphInputs.subscript.getter(a2, a3, v14);
  return _ViewInputs.subscript.modify;
}

uint64_t _ViewListInputs.needsGeometry.setter(uint64_t result)
{
  if (result)
  {
    v2 = 32;
  }

  else
  {
    v2 = 0;
  }

  *(v1 + 36) = *(v1 + 36) & 0xFFFFFFDF | v2;
  return result;
}

uint64_t (*_ViewListInputs.needsGeometry.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *(v1 + 36);
  *(a1 + 8) = v2;
  *(a1 + 12) = (v2 & 0x20) != 0;
  return _ViewInputs.needsGeometry.modify;
}

uint64_t _ViewListCountInputs.customInputs.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

void (*_ViewListCountInputs.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(Swift::Int **a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a3;
  v10[2] = v4;
  *v10 = a2;
  v12 = *(a4 + 8);
  v10[3] = v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[4] = AssociatedTypeWitness;
  v14 = *(AssociatedTypeWitness - 8);
  v11[5] = v14;
  v15 = *(v14 + 64);
  if (v9)
  {
    v11[6] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v11[6] = malloc(*(v14 + 64));
    v16 = malloc(v15);
  }

  v11[7] = v16;
  PropertyList.subscript.getter(a2, *v4, a3, v12);
  return _ViewListCountInputs.subscript.modify;
}

void _ViewListCountInputs.subscript.modify(Swift::Int **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[7];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v6 + 16))((*a1)[6], v4, v5);
    specialized PropertyList.subscript.setter(v3, v9, v8, v7);
    v10 = *(v6 + 8);
    v10(v3, v5);
    v10(v4, v5);
  }

  else
  {
    specialized PropertyList.subscript.setter((*a1)[7], v9, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t _ViewListOutputs.staticCount.setter(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  return result;
}

__n128 _ViewListOutputs.init(_:nextImplicitID:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v3;
  result = *(a1 + 25);
  *(a3 + 25) = result;
  *(a3 + 48) = a2;
  *(a3 + 56) = 0;
  *(a3 + 64) = 1;
  return result;
}

uint64_t specialized ViewList.debugDescription.getter()
{
  v6[0] = 0x696C2D7765697628;
  v6[1] = 0xEA00000000007473;
  v7 = xmmword_18DDAB890;
  v8 = 0xE200000000000000;
  v1 = v0[3];
  v2 = v0[4];
  v3 = __swift_project_boxed_opaque_existential_1(v0, v1);
  result = project #1 <A>(_:) in BaseViewList.print(into:)(v3, v6, v0, v1, v2);
  if (!v7)
  {
    goto LABEL_4;
  }

  if (!__OFSUB__(v7, 1))
  {
    *&v7 = v7 - 1;
    specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL);
LABEL_4:
    MEMORY[0x193ABEDD0](41, 0xE100000000000000);
    v5 = v6[0];

    return v5;
  }

  __break(1u);
  return result;
}

{
  MEMORY[0x193ABEDD0](10, 0xE100000000000000);
  MEMORY[0x193ABEDD0](8224, 0xE200000000000000);
  MEMORY[0x193ABEDD0](40, 0xE100000000000000);
  MEMORY[0x193ABEDD0](0x6C207974706D6528, 0xEC00000029747369);
  MEMORY[0x193ABEDD0](8224, 0xE200000000000000);
  specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL);
  MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL);
  MEMORY[0x193ABEDD0](41, 0xE100000000000000);

  return 0x696C2D7765697628;
}

uint64_t specialized ViewList.debugDescription.getter(uint64_t (*a1)(void *))
{
  v3[0] = 0x696C2D7765697628;
  v3[1] = 0xEA00000000007473;
  v4 = xmmword_18DDAB890;
  v5 = 0xE200000000000000;
  result = a1(v3);
  if (!v4)
  {
    goto LABEL_4;
  }

  if (!__OFSUB__(v4, 1))
  {
    *&v4 = v4 - 1;
    specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL);
LABEL_4:
    MEMORY[0x193ABEDD0](41, 0xE100000000000000);
    v2 = v3[0];

    return v2;
  }

  __break(1u);
  return result;
}

void specialized ViewList.debugDescription.getter(uint64_t a1)
{
  v2 = a1;
  v1.output._countAndFlagsBits = 0x696C2D7765697628;
  v1.output._object = 0xEA00000000007473;
  *&v1.depth = xmmword_18DDAB890;
  v1.indent._object = 0xE200000000000000;
  _ViewList_Group.print(into:)(&v1);
  if (!v1.depth)
  {
    goto LABEL_4;
  }

  if (!__OFSUB__(v1.depth, 1))
  {
    --v1.depth;
    specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL);
LABEL_4:
    MEMORY[0x193ABEDD0](41, 0xE100000000000000);

    return;
  }

  __break(1u);
}

void specialized ViewList.debugDescription.getter(int a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = a4;
  into.output._countAndFlagsBits = 0x696C2D7765697628;
  into.output._object = 0xEA00000000007473;
  *&into.depth = xmmword_18DDAB890;
  into.indent._object = 0xE200000000000000;
  _ViewList_Section.print(into:)(&into);
  if (!into.depth)
  {
    goto LABEL_4;
  }

  if (!__OFSUB__(into.depth, 1))
  {
    --into.depth;
    specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL);
LABEL_4:
    MEMORY[0x193ABEDD0](41, 0xE100000000000000);

    return;
  }

  __break(1u);
}

void specialized ViewList.debugDescription.getter()
{
  into.output._countAndFlagsBits = 0x696C2D7765697628;
  into.output._object = 0xEA00000000007473;
  *&into.depth = xmmword_18DDAB890;
  into.indent._object = 0xE200000000000000;
  ViewListSublistSlice.print(into:)(&into);
  if (!into.depth)
  {
    goto LABEL_4;
  }

  if (!__OFSUB__(into.depth, 1))
  {
    --into.depth;
    specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL);
LABEL_4:
    MEMORY[0x193ABEDD0](41, 0xE100000000000000);

    return;
  }

  __break(1u);
}

uint64_t ViewList.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  v4[0] = 0x696C2D7765697628;
  v4[1] = 0xEA00000000007473;
  v5 = xmmword_18DDAB890;
  v6 = 0xE200000000000000;
  result = (*(a2 + 88))(v4, a1);
  if (!v5)
  {
    goto LABEL_4;
  }

  if (!__OFSUB__(v5, 1))
  {
    *&v5 = v5 - 1;
    specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL);
LABEL_4:
    MEMORY[0x193ABEDD0](41, 0xE100000000000000);
    v3 = v4[0];

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t (*_ViewList_IteratorStyle.applyGranularity.modify(uint64_t a1))(uint64_t result)
{
  v2 = *v1;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v2 & 1;
  return _ViewList_IteratorStyle.applyGranularity.modify;
}

uint64_t (*_ViewList_IteratorStyle.granularity.modify(unint64_t *a1))(uint64_t result)
{
  v2 = *v1;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = v2 >> 1;
  return _ViewList_IteratorStyle.granularity.modify;
}

Swift::Int __swiftcall _ViewList_IteratorStyle.applyGranularity(to:)(Swift::Int to)
{
  if (*v1)
  {
    v2 = *v1 >> 1;
    v3 = (to * v2) >> 64;
    to *= v2;
    if (v3 != to >> 63)
    {
      __break(1u);
    }
  }

  return to;
}

Swift::Int _ViewList_Edit.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

uint64_t _ViewList_Sublist.id.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

double _ViewList_Sublist.id.setter(uint64_t a1)
{
  v3 = *(a1 + 8);

  result = *a1;
  *(v1 + 16) = *a1;
  *(v1 + 24) = v3;
  return result;
}

uint64_t _ViewList_Sublist.traits.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 80) = v2;
  return result;
}

uint64_t _ViewList_Sublist.list.setter(uint64_t result)
{
  *(v1 + 88) = result;
  *(v1 + 92) = BYTE4(result) & 1;
  return result;
}

uint64_t _ViewList_Sublist.init(start:count:id:elements:traits:list:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, __int128 *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = a3[1];
  v10 = *a5;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = *a3;
  *(a7 + 24) = v9;
  *(a7 + 72) = MEMORY[0x1E69E7CC0];
  result = outlined init with take of AnyTrackedValue(a4, a7 + 32);
  *(a7 + 80) = v10;
  *(a7 + 88) = a6;
  *(a7 + 92) = BYTE4(a6) & 1;
  return result;
}

uint64_t _ViewList_ID.elementIDs(count:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2[1];
  *a2 = *v2;
  a2[1] = v3;
  a2[2] = a1;
}

uint64_t _ViewList_SublistTransform.pop(flags:)(char *a1)
{
  v3 = *v1;
  if (!*(*v1 + 16))
  {
    __break(1u);
LABEL_6:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
    v5 = *(result + 16);
    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v2 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_6;
  }

  v5 = v3[2];
  if (v5)
  {
LABEL_4:
    v6 = v5 - 1;
    result = __swift_destroy_boxed_opaque_existential_1(&v3[5 * v5 - 1]);
    v3[2] = v6;
    v7 = v1[1] + (v2 & 1);
    *v1 = v3;
    v1[1] = v7;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t _ViewList_SublistTransform.apply(sublist:)(uint64_t a1)
{
  v3 = *v1;
  result = specialized Array.reserveCapacity(_:)(v1[1]);
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = v3 + 40 * v5 - 8;
    while (v5 <= *(v3 + 16))
    {
      --v5;
      outlined init with copy of AnyTrackedValue(v6, v9);
      v7 = v10;
      v8 = v11;
      __swift_project_boxed_opaque_existential_1(v9, v10);
      (*(v8 + 16))(a1, v7, v8);
      result = __swift_destroy_boxed_opaque_existential_1(v9);
      v6 -= 40;
      if (!v5)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t _ViewList_SublistTransform.bindID(_:)(uint64_t result)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (v3)
  {
    v4 = result;
    v5 = v2 + 40 * v3 - 8;
    while (v3 <= *(v2 + 16))
    {
      --v3;
      outlined init with copy of AnyTrackedValue(v5, v8);
      v6 = v9;
      v7 = v10;
      __swift_project_boxed_opaque_existential_1(v8, v9);
      (*(v7 + 24))(v4, v6, v7);
      result = __swift_destroy_boxed_opaque_existential_1(v8);
      v5 -= 40;
      if (!v3)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall _ViewList_SublistTransform.wrapSubgraphs(into:)(SwiftUI::_ViewList_SublistSubgraphStorage *into)
{
  v3 = *v1;
  specialized Array.reserveCapacity(_:)(v1[1]);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 40 * v4 - 8;
    while (v4 <= *(v3 + 16))
    {
      --v4;
      outlined init with copy of AnyTrackedValue(v5, v8);
      v6 = v9;
      v7 = v10;
      __swift_project_boxed_opaque_existential_1(v8, v9);
      (*(v7 + 32))(into, v6, v7);
      __swift_destroy_boxed_opaque_existential_1(v8);
      v5 -= 40;
      if (!v4)
      {
        return;
      }
    }

    __break(1u);
  }
}

BOOL _ViewList_TemporarySublistTransform.isEmpty.getter()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    v1 = *(*v1 + 16);
  }

  return v1 == 0;
}

uint64_t specialized _ViewList_TemporarySublistTransform.withPushedItem<A, B>(_:do:)(uint64_t a1, void (*a2)(__int128 *__return_ptr, __int128 *), uint64_t a3, void *a4, char a5)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    v8 = *a4;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a4 = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8[2] + 1, 1, v8);
      *a4 = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v8);
      *a4 = v8;
    }

    v23 = &unk_1F0084BE0;
    v24 = &protocol witness table for ModifiedViewList.Transform;
    *&v22 = a1;
    v8[2] = v11 + 1;
    outlined init with take of AnyTrackedValue(&v22, &v8[5 * v11 + 4]);
    *&v22 = a4;
    BYTE8(v22) = 1;
    a2(&v19, &v22);
    v12 = *a4;
    if (*(*a4 + 16))
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v13 = v12[2];
        if (v13)
        {
LABEL_9:
          v14 = v13 - 1;
          __swift_destroy_boxed_opaque_existential_1(&v12[5 * v13 - 1]);
          v12[2] = v14;
          *a4 = v12;
          return v19;
        }

LABEL_16:
        __break(1u);
      }
    }

    else
    {
      __break(1u);
    }

    v12 = specialized _ArrayBuffer._consumeAndCreateNew()(v12);
    v13 = v12[2];
    if (v13)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

  v20 = &unk_1F0084BE0;
  v21 = &protocol witness table for ModifiedViewList.Transform;
  *&v19 = a1;
  if (a4)
  {
    v16 = a4[6];
    v17 = a4[7] + 1;
  }

  else
  {
    v17 = 0;
    v16 = 0;
  }

  *&v22 = a4;
  outlined init with take of AnyTrackedValue(&v19, &v22 + 8);
  v25 = v16;
  v26 = v17;
  *&v19 = &v22;
  BYTE8(v19) = 0;

  a2(&v18, &v19);
  outlined destroy of _AnyAnimatableData(&v22);
  return v18;
}

uint64_t specialized _ViewList_TemporarySublistTransform.withPushedItem<A, B>(_:do:)(uint64_t a1, void (*a2)(__int128 *__return_ptr, __int128 *), uint64_t a3, int64x2_t *a4, char a5)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    v8 = a4->i64[0];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    a4->i64[0] = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8[2] + 1, 1, v8);
      a4->i64[0] = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v8);
      a4->i64[0] = v8;
    }

    v24 = &unk_1F0084A60;
    v25 = &protocol witness table for SubgraphList.Transform;
    *&v23 = a1;
    v8[2] = v11 + 1;
    outlined init with take of AnyTrackedValue(&v23, &v8[5 * v11 + 4]);
    ++a4->i64[1];
    *&v23 = a4;
    BYTE8(v23) = 1;
    a2(&v20, &v23);
    v12 = a4->i64[0];
    if (*(a4->i64[0] + 16))
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v13 = v12[2];
        if (v13)
        {
LABEL_9:
          v14 = v13 - 1;
          __swift_destroy_boxed_opaque_existential_1(&v12[5 * v13 - 1]);
          v12[2] = v14;
          v15 = a4->i64[1] + 1;
          a4->i64[0] = v12;
          a4->i64[1] = v15;
          return v20;
        }

LABEL_16:
        __break(1u);
      }
    }

    else
    {
      __break(1u);
    }

    v12 = specialized _ArrayBuffer._consumeAndCreateNew()(v12);
    v13 = v12[2];
    if (v13)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

  v21 = &unk_1F0084A60;
  v22 = &protocol witness table for SubgraphList.Transform;
  *&v20 = a1;
  if (a4)
  {
    v17 = vaddq_s64(a4[3], vdupq_n_s64(1uLL));
  }

  else
  {
    v17 = xmmword_18DD85500;
  }

  v18 = v17;
  *&v23 = a4;
  outlined init with take of AnyTrackedValue(&v20, &v23 + 8);
  v26 = v18;
  *&v20 = &v23;
  BYTE8(v20) = 0;

  a2(&v19, &v20);
  outlined destroy of _AnyAnimatableData(&v23);
  return v19;
}

Swift::Void __swiftcall _ViewList_TemporarySublistTransform.wrapSubgraphs(into:)(SwiftUI::_ViewList_SublistSubgraphStorage *into)
{
  v3 = *v1;
  if (*(v1 + 8) == 1)
  {
    v5 = *v3;
    v4 = v3[1];

    specialized Array.reserveCapacity(_:)(v4);
    v6 = v5[2];
    if (!v6)
    {
LABEL_6:

      return;
    }

    v7 = &v5[5 * v6 - 1];
    while (v6 <= v5[2])
    {
      --v6;
      outlined init with copy of AnyTrackedValue(v7, v12);
      v8 = v13;
      v9 = v14;
      __swift_project_boxed_opaque_existential_1(v12, v13);
      (*(v9 + 32))(into, v8, v9);
      __swift_destroy_boxed_opaque_existential_1(v12);
      v7 -= 40;
      if (!v6)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  if (!v3)
  {
LABEL_12:
    specialized Array.reserveCapacity(_:)(0);
    return;
  }

  specialized Array.reserveCapacity(_:)(v3[6]);
  do
  {
    outlined init with copy of AnyTrackedValue((v3 + 1), v12);
    v10 = v13;
    v11 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    (*(v11 + 32))(into, v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v12);
    v3 = *v3;
  }

  while (v3);
}

void _ViewList_TemporarySublistTransform.copy()(void *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8) == 1)
  {
    v4 = v3[1];
    *a1 = *v3;
    a1[1] = v4;
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
    v17 = 0;
    if (v3)
    {
      outlined init with copy of _ViewList_TemporarySublistTransform.ItemNode(v3, v11);
      v5 = v14;
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15 & ~(v15 >> 63), 0, MEMORY[0x1E69E7CC0]);
      outlined destroy of _AnyAnimatableData(v11);
      v17 = v5;
      do
      {
        outlined init with copy of AnyTrackedValue((v3 + 1), v11);
        v10 = 0;
        v6 = v12;
        v7 = v13;
        v8 = __swift_project_boxed_opaque_existential_1(v11, v12);
        specialized _ViewList_SublistTransform.push(_:flags:)(v8, &v10, &v16, v6, v7);
        __swift_destroy_boxed_opaque_existential_1(v11);
        v3 = *v3;
      }

      while (v3);
    }

    specialized MutableCollection<>.reverse()();
    v9 = v17;
    *a1 = v16;
    a1[1] = v9;
  }
}

Swift::Int __swiftcall _ViewList_Node.count(style:)(SwiftUI::_ViewList_IteratorStyle style)
{
  v2 = *style.value;
  outlined init with copy of _ViewList_Node(v1, &v19);
  if (v24 <= 1u)
  {
    if (!v24)
    {
      outlined init with take of AnyTrackedValue(&v19, &v13);
      v3 = *(&v14 + 1);
      v4 = v15;
      __swift_project_boxed_opaque_existential_1(&v13, *(&v14 + 1));
      v18 = v2;
      v5 = (*(v4 + 16))(&v18, v3, v4);
      __swift_destroy_boxed_opaque_existential_1(&v13);
      return v5;
    }

    v15 = v21;
    v16 = v22;
    v17[0] = *v23;
    *(v17 + 13) = *&v23[13];
    v13 = v19;
    v14 = v20;
    v5 = *(&v19 + 1);
    outlined destroy of _ViewList_Sublist(&v13);
    if ((v2 & 1) == 0)
    {
      return v5;
    }

    v12 = (v5 * (v2 >> 1)) >> 64;
    v5 *= v2 >> 1;
    if (v12 == v5 >> 63)
    {
      return v5;
    }

    __break(1u);
LABEL_13:
    LODWORD(v13) = v19;
    *(&v13 + 1) = *(&v19 + 1);
    *&v14 = v20;
    BYTE8(v14) = BYTE8(v20);
    v18 = v2;
    v5 = _ViewList_Section.count(style:)(&v18);

LABEL_14:

    return v5;
  }

  if (v24 != 2)
  {
    goto LABEL_13;
  }

  v6 = *(v19 + 16);
  if (!v6)
  {

    return 0;
  }

  v5 = 0;
  v7 = v19 + 32;
  while (1)
  {
    outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v7, &v13, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
    v8 = *(&v14 + 1);
    v9 = v15;
    __swift_project_boxed_opaque_existential_1(&v13, *(&v14 + 1));
    v18 = v2;
    result = (*(v9 + 16))(&v18, v8, v9);
    v11 = __OFADD__(v5, result);
    v5 += result;
    if (v11)
    {
      break;
    }

    outlined destroy of (list: ViewList, attribute: Attribute<ViewList>)(&v13, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
    v7 += 48;
    if (!--v6)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

Swift::Int __swiftcall _ViewList_Section.estimatedCount(style:)(Swift::Int style)
{
  v2 = *style;
  v3 = *(v1 + 8);
  if (*(v1 + 24) == 1)
  {
    if (*(v3 + 16))
    {
      outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v3 + 32, v20, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
      outlined init with take of AnyTrackedValue(v20, v21);
      v4 = v22;
      v5 = v23;
      __swift_project_boxed_opaque_existential_1(v21, v22);
      *&v20[0] = v2;
      v6 = (*(v5 + 24))(v20, v4, v5);
LABEL_17:
      __swift_destroy_boxed_opaque_existential_1(v21);
      return v6;
    }

    __break(1u);
    goto LABEL_19;
  }

  if (*(v3 + 16) < 2uLL)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v3 + 80, v20, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
  outlined init with take of AnyTrackedValue(v20, v21);
  v7 = v22;
  v8 = v23;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  *&v20[0] = v2;
  v9 = (*(v8 + 24))(v20, v7, v8);
  style = __swift_destroy_boxed_opaque_existential_1(v21);
  v10 = v2 >> 1;
  if (v2 >> 1 == 1)
  {
    goto LABEL_29;
  }

  if (v2 < 2)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v11 = v9 % v10;
  if (!(v9 % v10))
  {
    goto LABEL_29;
  }

  v12 = __OFSUB__(v10, v11);
  v13 = v10 - v11;
  if (v12)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v12 = __OFADD__(v9, v13);
  v9 += v13;
  if (!v12)
  {
LABEL_29:
    if (*(v3 + 16))
    {
      outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v3 + 32, v20, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
      outlined init with take of AnyTrackedValue(v20, v21);
      v14 = v22;
      v15 = v23;
      __swift_project_boxed_opaque_existential_1(v21, v22);
      if (v10 == 1)
      {
        v16 = v2 & 0xFFFFFFFFFFFFFFFELL;
      }

      else
      {
        v16 = (v2 & 0xFFFFFFFFFFFFFFFELL) + 1;
      }

      *&v20[0] = v16;
      style = (*(v15 + 24))(v20, v14, v15);
      v17 = v9 + style;
      if (!__OFADD__(v9, style))
      {
        style = __swift_destroy_boxed_opaque_existential_1(v21);
        if (*(v3 + 16) >= 3uLL)
        {
          outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v3 + 128, v20, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
          outlined init with take of AnyTrackedValue(v20, v21);
          v18 = v22;
          v19 = v23;
          __swift_project_boxed_opaque_existential_1(v21, v22);
          *&v20[0] = v16;
          style = (*(v19 + 24))(v20, v18, v19);
          v6 = v17 + style;
          if (!__OFADD__(v17, style))
          {
            goto LABEL_17;
          }

          goto LABEL_23;
        }

LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return style;
}

uint64_t _ViewList_Group.applyNodes(from:style:transform:to:)(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  v7 = *a2;
  v8 = *a3;
  v9 = *(a3 + 8);
  v10 = *(*v5 + 16);
  v17 = *v5;
  v18 = result;
  v16 = *v5 + 32;
  while (1)
  {
    if (v6 == v10)
    {
      v6 = v10;
      memset(v24, 0, 44);
      goto LABEL_7;
    }

    if ((v6 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v6 >= *(v17 + 16))
    {
      goto LABEL_11;
    }

    outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v16 + 48 * v6++, v24, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
LABEL_7:
    *&v26[12] = *(&v24[1] + 12);
    v25 = v24[0];
    *v26 = v24[1];
    v11 = *(&v24[1] + 1);
    if (*(&v24[1] + 1))
    {
      v12 = *&v26[24];
      outlined init with take of AnyTrackedValue(&v25, v24);
      v13 = *(&v24[1] + 1);
      v14 = *&v24[2];
      __swift_project_boxed_opaque_existential_1(v24, *(&v24[1] + 1));
      v23 = v7;
      v21 = v8;
      v22 = v9;
      v15 = (*(v14 + 64))(v18, &v23, v12, &v21, a4, a5, v13, v14);
      result = __swift_destroy_boxed_opaque_existential_1(v24);
      if (v15)
      {
        continue;
      }
    }

    return v11 == 0;
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t _ViewList_Section.header.getter(uint64_t result)
{
  v2 = *(v1 + 8);
  if (*(v2 + 16))
  {
    v3 = result;
    outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v2 + 32, v5, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
    v4 = v6;
    outlined init with take of AnyTrackedValue(v5, v3);
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized _ViewList_Node.applyIDs(from:style:transform:to:)(void *a1, unint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v36 = a5;
  v7 = *a2;
  v8 = *a3;
  v9 = *(a3 + 8);
  result = outlined init with copy of _ViewList_Node(a4, &v47);
  if (v52 > 1u)
  {
    if (v52 == 2)
    {
      v17 = 0;
      v18 = *(v47 + 16);
      v33 = v47;
      v32 = v47 + 32;
      if (v18)
      {
        goto LABEL_7;
      }

LABEL_6:
      v17 = v18;
      v45 = 0u;
      memset(v46, 0, 28);
      while (1)
      {
        *&v38[12] = *(v46 + 12);
        v37 = v45;
        *v38 = v46[0];
        v15 = *(&v46[0] + 1) == 0;
        if (!*(&v46[0] + 1))
        {
          break;
        }

        v19 = *&v38[24];
        outlined init with take of AnyTrackedValue(&v37, &v45);
        v20 = *(&v46[0] + 1);
        v21 = *&v46[1];
        __swift_project_boxed_opaque_existential_1(&v45, *(&v46[0] + 1));
        v44 = v7;
        v42 = v8;
        v43 = v9;
        v41 = 0;
        LOBYTE(v20) = ViewList.applyIDs(from:style:listAttribute:transform:to:)(a1, &v44, v19, &v42, partial apply for closure #1 in closure #1 in _LazyLayout_Subviews.id(at:style:), v35, v20, v21);
        result = __swift_destroy_boxed_opaque_existential_1(&v45);
        if ((v20 & 1) == 0)
        {
          break;
        }

        if (v17 == v18)
        {
          goto LABEL_6;
        }

LABEL_7:
        if ((v17 & 0x8000000000000000) != 0)
        {
          goto LABEL_41;
        }

        if (v17 >= *(v33 + 16))
        {
          goto LABEL_42;
        }

        outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v32 + 48 * v17++, &v45, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
      }

      return v15 & 1;
    }

    v25 = 0x7FFFFFFFFFFFFFFFLL;
    if (BYTE8(v48))
    {
      v25 = 1;
    }

    if (*(*(&v47 + 1) + 16) >= v25)
    {
      v26 = v25;
    }

    else
    {
      v26 = *(*(&v47 + 1) + 16);
    }

    v34 = *(&v47 + 1) + 32;

    v27 = 0;
    v28 = v26 == 0;
    if (v26)
    {
      goto LABEL_27;
    }

LABEL_26:
    v27 = v26;
    v45 = 0u;
    memset(v46, 0, 28);
    while (1)
    {
      *&v38[12] = *(v46 + 12);
      v37 = v45;
      *v38 = v46[0];
      v15 = *(&v46[0] + 1) == 0;
      if (!*(&v46[0] + 1))
      {

        swift_unknownObjectRelease();
        return v15 & 1;
      }

      v29 = *&v38[24];
      outlined init with take of AnyTrackedValue(&v37, &v45);
      v30 = *(&v46[0] + 1);
      v31 = *&v46[1];
      __swift_project_boxed_opaque_existential_1(&v45, *(&v46[0] + 1));
      v44 = v7;
      v42 = v8;
      v43 = v9;
      v41 = 0;
      if ((ViewList.applyIDs(from:style:listAttribute:transform:to:)(a1, &v44, v29, &v42, partial apply for closure #1 in closure #1 in _LazyLayout_Subviews.id(at:style:), v35, v30, v31) & 1) == 0)
      {

        swift_unknownObjectRelease();
        v16 = &v45;
        goto LABEL_37;
      }

      result = __swift_destroy_boxed_opaque_existential_1(&v45);
      v28 = v27 >= v26;
      if (v27 == v26)
      {
        goto LABEL_26;
      }

LABEL_27:
      if (v28)
      {
        break;
      }

      outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v34 + 48 * v27++, &v45, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (!v52)
  {
    v11 = DWORD2(v49);
    v12 = BYTE12(v49);
    outlined init with take of AnyTrackedValue(&v47, &v37);
    v14 = *&v38[16];
    v13 = *&v38[8];
    __swift_project_boxed_opaque_existential_1(&v37, *&v38[8]);
    v42 = v7;
    *&v45 = v8;
    BYTE8(v45) = v9;
    LOBYTE(v44) = v12;
    v15 = ViewList.applyIDs(from:style:listAttribute:transform:to:)(a1, &v42, v11 | (v12 << 32), &v45, partial apply for closure #1 in closure #1 in _LazyLayout_Subviews.id(at:style:), v35, v13, v14);
    v16 = &v37;
LABEL_37:
    __swift_destroy_boxed_opaque_existential_1(v16);
    return v15 & 1;
  }

  *&v38[16] = v49;
  v39 = v50;
  v40[0] = *v51;
  *(v40 + 13) = *&v51[13];
  v37 = v47;
  *v38 = v48;
  v22 = *(&v47 + 1);
  if (v7)
  {
    v22 = *(&v37 + 1) * (v7 >> 1);
    if ((*(&v37 + 1) * (v7 >> 1)) >> 64 != v22 >> 63)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }
  }

  v23 = *a1 - v22;
  if (*a1 >= v22)
  {
    outlined destroy of _ViewList_Sublist(&v37);
    v15 = 1;
    *a1 = v23;
    return v15 & 1;
  }

  *&v45 = v8;
  BYTE8(v45) = v9;
  result = _ViewList_TemporarySublistTransform.apply(sublist:)(&v37);
  v24 = *&v38[8];
  if (!*(&v37 + 1))
  {

    outlined destroy of _ViewList_Sublist(&v37);

    v15 = 1;
    *a1 = 0;
    return v15 & 1;
  }

  if (*(&v37 + 1) >= 1)
  {
    *a5 = *&v38[4] << 32;
    a5[1] = v24;
    swift_bridgeObjectRetain_n();

    outlined destroy of _ViewList_Sublist(&v37);

    v15 = 0;
    *a1 = 0;
    return v15 & 1;
  }

LABEL_44:
  __break(1u);
  return result;
}

uint64_t _ViewList_Node.applyIDs(from:style:transform:to:)(void *a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t *), uint64_t a5)
{
  v7 = *a2;
  v8 = *a3;
  v9 = *(a3 + 8);
  result = outlined init with copy of _ViewList_Node(v5, &v53);
  if (v58 > 1u)
  {
    if (v58 == 2)
    {
      v17 = 0;
      v18 = *(v53 + 16);
      v39 = v53;
      v38 = v53 + 32;
      if (v18)
      {
        goto LABEL_7;
      }

LABEL_6:
      v17 = v18;
      v51 = 0u;
      memset(v52, 0, 28);
      while (1)
      {
        *&v44[12] = *(v52 + 12);
        v43 = v51;
        *v44 = v52[0];
        v15 = *(&v52[0] + 1) == 0;
        if (!*(&v52[0] + 1))
        {
          break;
        }

        v19 = *&v44[24];
        outlined init with take of AnyTrackedValue(&v43, &v51);
        v20 = *(&v52[0] + 1);
        v21 = *&v52[1];
        __swift_project_boxed_opaque_existential_1(&v51, *(&v52[0] + 1));
        v50 = v7;
        v48 = v8;
        v49 = v9;
        v47 = 0;
        LOBYTE(v20) = ViewList.applyIDs(from:style:listAttribute:transform:to:)(a1, &v50, v19, &v48, a4, a5, v20, v21);
        result = __swift_destroy_boxed_opaque_existential_1(&v51);
        if ((v20 & 1) == 0)
        {
          break;
        }

        if (v17 == v18)
        {
          goto LABEL_6;
        }

LABEL_7:
        if ((v17 & 0x8000000000000000) != 0)
        {
          goto LABEL_44;
        }

        if (v17 >= *(v39 + 16))
        {
          goto LABEL_45;
        }

        outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v38 + 48 * v17++, &v51, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
      }

      return v15 & 1;
    }

    v31 = 0x7FFFFFFFFFFFFFFFLL;
    if (BYTE8(v54))
    {
      v31 = 1;
    }

    if (*(*(&v53 + 1) + 16) >= v31)
    {
      v32 = v31;
    }

    else
    {
      v32 = *(*(&v53 + 1) + 16);
    }

    v40 = *(&v53 + 1) + 32;

    v33 = 0;
    v34 = v32 == 0;
    if (v32)
    {
      goto LABEL_30;
    }

LABEL_29:
    v33 = v32;
    v51 = 0u;
    memset(v52, 0, 28);
    while (1)
    {
      *&v44[12] = *(v52 + 12);
      v43 = v51;
      *v44 = v52[0];
      v15 = *(&v52[0] + 1) == 0;
      if (!*(&v52[0] + 1))
      {

        swift_unknownObjectRelease();
        return v15 & 1;
      }

      v35 = *&v44[24];
      outlined init with take of AnyTrackedValue(&v43, &v51);
      v36 = *(&v52[0] + 1);
      v37 = *&v52[1];
      __swift_project_boxed_opaque_existential_1(&v51, *(&v52[0] + 1));
      v50 = v7;
      v48 = v8;
      v49 = v9;
      v47 = 0;
      if ((ViewList.applyIDs(from:style:listAttribute:transform:to:)(a1, &v50, v35, &v48, a4, a5, v36, v37) & 1) == 0)
      {

        swift_unknownObjectRelease();
        v16 = &v51;
        goto LABEL_40;
      }

      result = __swift_destroy_boxed_opaque_existential_1(&v51);
      v34 = v33 >= v32;
      if (v33 == v32)
      {
        goto LABEL_29;
      }

LABEL_30:
      if (v34)
      {
        break;
      }

      outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v40 + 48 * v33++, &v51, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
  }

  else
  {
    if (!v58)
    {
      v11 = DWORD2(v55);
      v12 = BYTE12(v55);
      outlined init with take of AnyTrackedValue(&v53, &v43);
      v14 = *&v44[16];
      v13 = *&v44[8];
      __swift_project_boxed_opaque_existential_1(&v43, *&v44[8]);
      v48 = v7;
      *&v51 = v8;
      BYTE8(v51) = v9;
      LOBYTE(v50) = v12;
      v15 = ViewList.applyIDs(from:style:listAttribute:transform:to:)(a1, &v48, v11 | (v12 << 32), &v51, a4, a5, v13, v14);
      v16 = &v43;
LABEL_40:
      __swift_destroy_boxed_opaque_existential_1(v16);
      return v15 & 1;
    }

    *&v44[16] = v55;
    v45 = v56;
    v46[0] = *v57;
    *(v46 + 13) = *&v57[13];
    v43 = v53;
    *v44 = v54;
    v22 = *(&v53 + 1);
    if ((v7 & 1) == 0 || (v22 = *(&v43 + 1) * (v7 >> 1), (*(&v43 + 1) * (v7 >> 1)) >> 64 == v22 >> 63))
    {
      v23 = *a1 - v22;
      if (*a1 >= v22)
      {
        outlined destroy of _ViewList_Sublist(&v43);
        v15 = 1;
        *a1 = v23;
      }

      else
      {
        *&v51 = v8;
        BYTE8(v51) = v9;
        _ViewList_TemporarySublistTransform.apply(sublist:)(&v43);
        v24 = *&v44[4];
        v25 = *&v44[8];
        v26 = *(&v43 + 1);
        v27 = *(&v43 + 1) & ~(*(&v43 + 1) >> 63);

        v28 = 0;
        while (v26 != v28)
        {
          if (v28 == 0x80000000)
          {
            goto LABEL_46;
          }

          if (v27 == v28)
          {
            goto LABEL_47;
          }

          v29 = v28 + 1;
          *&v51 = __PAIR64__(v24, v28);
          *(&v51 + 1) = v25;

          v30 = a4(&v51);

          v28 = v29;
          if ((v30 & 1) == 0)
          {
            outlined destroy of _ViewList_Sublist(&v43);

            v15 = 0;
            *a1 = 0;
            return v15 & 1;
          }
        }

        outlined destroy of _ViewList_Sublist(&v43);

        v15 = 1;
        *a1 = 0;
      }

      return v15 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t _ViewList_Group.applyIDs(from:style:transform:to:)(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t *), uint64_t a5)
{
  v6 = result;
  v7 = 0;
  v8 = *a2;
  v9 = *a3;
  v10 = *(a3 + 8);
  v11 = *(*v5 + 16);
  v17 = *v5;
  v16 = *v5 + 32;
  while (1)
  {
    if (v7 == v11)
    {
      v7 = v11;
      memset(v23, 0, 44);
      goto LABEL_7;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *(v17 + 16))
    {
      goto LABEL_11;
    }

    outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v16 + 48 * v7++, v23, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
LABEL_7:
    *&v25[12] = *(&v23[1] + 12);
    v24 = v23[0];
    *v25 = v23[1];
    v12 = *(&v23[1] + 1);
    if (*(&v23[1] + 1))
    {
      v13 = *&v25[24];
      outlined init with take of AnyTrackedValue(&v24, v23);
      v14 = *(&v23[1] + 1);
      v15 = *&v23[2];
      __swift_project_boxed_opaque_existential_1(v23, *(&v23[1] + 1));
      v22 = v8;
      v20 = v9;
      v21 = v10;
      LOBYTE(v14) = ViewList.applyIDs(from:style:listAttribute:transform:to:)(v6, &v22, v13, &v20, a4, a5, v14, v15);
      result = __swift_destroy_boxed_opaque_existential_1(v23);
      if (v14)
      {
        continue;
      }
    }

    return v12 == 0;
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t _ViewList_Section.applyNodes(from:style:transform:to:)(uint64_t result, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v40 = a4;
  v41 = a5;
  v6 = result;
  v7 = *a2;
  v39 = *a3;
  v8 = *(a3 + 8);
  v37 = *v5;
  v38 = v8;
  v9 = *(v5 + 2);
  v10 = *(v5 + 24);
  v11 = *result;
  v13 = *result == 0;
  v42 = v7;
  v12 = v7 >> 1;
  v13 = v13 || v12 == 1;
  if (v13)
  {
LABEL_8:
    v33 = v7 >> 1;
    v36 = v9;
    v43 = v9;
    if (v10)
    {
      v16 = 1;
    }

    else
    {
      v16 = 0x7FFFFFFFFFFFFFFFLL;
    }

    result = specialized Collection.prefix(_:)(v16, 0, *(v9 + 16));
    if (result == v17)
    {
      return 1;
    }

    v18 = result;
    v19 = v17;
    if (v17 >= result)
    {
      v20 = v42 & 0xFFFFFFFFFFFFFFFELL;
      if ((v42 & 0xFFFFFFFFFFFFFFFELL) != 2)
      {
        ++v20;
      }

      v34 = v20;
      v21 = v43 + 48 * result + 32;
      v22 = result;
      v35 = v6;
      while (v22 < v19)
      {
        if (v18 < 0)
        {
          goto LABEL_33;
        }

        if (v22 >= *(v43 + 16))
        {
          goto LABEL_34;
        }

        outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v21, v47, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
        v23 = v48;
        outlined init with take of AnyTrackedValue(v47, v49);
        if (v22 == 1)
        {
          v24 = v42;
        }

        else
        {
          v24 = v34;
        }

        v25 = v49[4];
        v26 = __swift_project_boxed_opaque_existential_1(v49, v49[3]);
        v44 = &v32;
        v46 = v24;
        *&v47[0] = v39;
        BYTE8(v47[0]) = v38;
        MEMORY[0x1EEE9AC00](v26);
        v27 = *(v25 + 64);
        v45 = 0;
        v28 = v23;
        v29 = v35;
        result = v27(v35, &v46, v28, v47, partial apply for closure #1 in _ViewList_Section.applyNodes(from:style:transform:to:));
        if ((result & 1) == 0)
        {
          goto LABEL_31;
        }

        v30 = *v29;
        if (*v29 && v33 != 1)
        {
          if (!v33)
          {
            goto LABEL_35;
          }

          v14 = __OFSUB__(v30, v30 % v33);
          v31 = v30 - v30 % v33;
          if (v14)
          {
            __break(1u);
LABEL_31:
            __swift_destroy_boxed_opaque_existential_1(v49);
            return 0;
          }

          *v29 = v31;
        }

        ++v22;
        result = __swift_destroy_boxed_opaque_existential_1(v49);
        v21 += 48;
        if (v19 == v22)
        {
          return 1;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
    }

    __break(1u);
    goto LABEL_37;
  }

  if (!v12)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v14 = __OFSUB__(v11, v11 % v12);
  v15 = v11 - v11 % v12;
  if (!v14)
  {
    *result = v15;
    goto LABEL_8;
  }

LABEL_38:
  __break(1u);
  return result;
}

uint64_t _ViewList_Node.applyNodes(from:transform:to:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t *, uint64_t *, uint64_t, uint64_t))
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v10 = 2;
  v8 = v5;
  v9 = v6;
  return a5(a1, &v10, &v8, a3, a4) & 1;
}

uint64_t _ViewList_Section.firstOffset<A>(forID:style:)(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v41 = *(v4 + 8);
  if (*(v4 + 24))
  {
    v6 = 1;
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  result = specialized Collection.prefix(_:)(v6, 0, *(v41 + 16));
  if (result == v8)
  {
    return 0;
  }

  v9 = result;
  v10 = v8;
  if (v8 < result)
  {
    goto LABEL_52;
  }

  v11 = v5 & 0xFFFFFFFFFFFFFFFELL;
  v36 = v5 & 0xFFFFFFFFFFFFFFFELL;
  if ((v5 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    ++v11;
  }

  v37 = v11;
  v12 = result - 2;
  for (i = v41 + 32 + 48 * result; ; i += 48)
  {
    if (v12 + 2 >= v10)
    {
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    if (v9 < 0)
    {
      goto LABEL_46;
    }

    if ((v12 + 2) >= *(v41 + 16))
    {
      goto LABEL_47;
    }

    outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(i, v45, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
    outlined init with take of AnyTrackedValue(v45, v46);
    v14 = v5;
    if (v12 != -1)
    {
      v5 = v37;
    }

    v15 = v47;
    v16 = v48;
    __swift_project_boxed_opaque_existential_1(v46, v47);
    *&v45[0] = v5;
    result = (*(v16 + 80))(a1, v45, a3, a4, v15, v16);
    if ((v17 & 1) == 0)
    {
      break;
    }

    result = __swift_destroy_boxed_opaque_existential_1(v46);
    ++v12;
    v5 = v14;
    if (v12 - v10 == -2)
    {
      return 0;
    }
  }

  v18 = result;
  if (v12 == -2)
  {
    goto LABEL_44;
  }

  if ((v12 + 2) > *(v41 + 16))
  {
    goto LABEL_53;
  }

  v19 = v14;
  v20 = v14 >> 1;
  if (v14 >> 1 == 1)
  {
    v21 = v36;
  }

  else
  {
    v21 = v36 + 1;
  }

  outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v41 + 32, v45, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
  outlined init with take of AnyTrackedValue(v45, v42);
  v22 = v43;
  v23 = v44;
  __swift_project_boxed_opaque_existential_1(v42, v43);
  *&v45[0] = v21;
  result = (*(v23 + 16))(v45, v22, v23);
  if (v20 == 1)
  {
LABEL_27:
    v25 = __OFADD__(v18, result);
    v18 += result;
    if (!v25)
    {
      __swift_destroy_boxed_opaque_existential_1(v42);
      if (v12 == -1)
      {
        goto LABEL_44;
      }

      outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v41 + 80, v45, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
      outlined init with take of AnyTrackedValue(v45, v42);
      v27 = v43;
      v28 = v44;
      __swift_project_boxed_opaque_existential_1(v42, v43);
      *&v45[0] = v19;
      result = (*(v28 + 16))(v45, v27, v28);
      if (v20 != 1)
      {
        if (v19 < 2)
        {
          goto LABEL_49;
        }

        v29 = result % v20;
        if (result % v20)
        {
          v25 = __OFSUB__(v20, v29);
          v30 = v20 - v29;
          if (v25)
          {
LABEL_50:
            __break(1u);
            goto LABEL_51;
          }

          v25 = __OFADD__(result, v30);
          result += v30;
          if (v25)
          {
            goto LABEL_51;
          }
        }
      }

      v25 = __OFADD__(v18, result);
      v18 += result;
      if (!v25)
      {
        __swift_destroy_boxed_opaque_existential_1(v42);
        if (v12)
        {
          v31 = v41 + 128;
          do
          {
            outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v31, v45, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
            outlined init with take of AnyTrackedValue(v45, v42);
            v32 = v43;
            v33 = v44;
            __swift_project_boxed_opaque_existential_1(v42, v43);
            *&v45[0] = v21;
            result = (*(v33 + 16))(v45, v32, v33);
            if (v20 != 1)
            {
              if (v19 < 2)
              {
                goto LABEL_49;
              }

              v34 = result % v20;
              if (result % v20)
              {
                v25 = __OFSUB__(v20, v34);
                v35 = v20 - v34;
                if (v25)
                {
                  goto LABEL_50;
                }

                v25 = __OFADD__(result, v35);
                result += v35;
                if (v25)
                {
                  goto LABEL_51;
                }
              }
            }

            v25 = __OFADD__(v18, result);
            v18 += result;
            if (v25)
            {
              goto LABEL_48;
            }

            __swift_destroy_boxed_opaque_existential_1(v42);
            v31 += 48;
          }

          while (--v12);
        }

LABEL_44:
        __swift_destroy_boxed_opaque_existential_1(v46);
        return v18;
      }
    }

LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v19 < 2)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v24 = result % v20;
  if (!(result % v20))
  {
    goto LABEL_27;
  }

  v25 = __OFSUB__(v20, v24);
  v26 = v20 - v24;
  if (v25)
  {
    goto LABEL_50;
  }

  v25 = __OFADD__(result, v26);
  result += v26;
  if (!v25)
  {
    goto LABEL_27;
  }

LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
  return result;
}

void specialized ViewList.applyIDs(from:listAttribute:transform:to:)(uint64_t *a1, unint64_t a2, uint64_t a3, char a4, void *a5, uint64_t a6)
{
  v10 = a5[3];
  v11 = a5[4];
  __swift_project_boxed_opaque_existential_1(a5, v10);
  v12 = (*(v11 + 40))(v10, v11);
  v14 = a5[5];
  v13 = a5[6];
  type metadata accessor for ViewListSublistSlice.ViewIDsSlice();
  v15 = swift_allocObject();
  v16 = v15;
  v50 = a4;
  if (!v12)
  {
    v26 = swift_deallocPartialClassInstance();
    MEMORY[0x1EEE9AC00](v26);
    v27 = v14 + *a1;
    if (!__OFADD__(v14, *a1))
    {
      *&v54 = v14 + *a1;
      *(swift_allocObject() + 16) = v27;
      v28 = a5[4];
      v29 = __swift_project_boxed_opaque_existential_1(a5, a5[3]);
      *&v58[0] = 2;
      *&v56 = a3;
      BYTE8(v56) = a4 & 1;
      v30 = MEMORY[0x1EEE9AC00](v29);
      (*(v28 + 64))(&v54, v58, a2 | ((HIDWORD(a2) & 1) << 32), &v56, closure #1 in ViewListSublistSlice.applyNodes(from:style:list:transform:to:)partial apply, v30);

      return;
    }

    goto LABEL_44;
  }

  *(v15 + 24) = v12;
  *(v15 + 32) = v14;
  *(v15 + 40) = v13;
  *(v15 + 16) = *(v12 + 16);
  v17 = v13 - v14;
  if (__OFSUB__(v13, v14))
  {
    goto LABEL_42;
  }

  if (v17 < 0)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v18 = *a1;
  v19 = *a1 - v17;
  if (*a1 >= v17)
  {

    *a1 = v19;
    return;
  }

  if (v18 < 0)
  {
    goto LABEL_45;
  }

  v20 = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(0, v18, v17);
  v21 = *(v16 + 32);
  v22 = *(v16 + 40);
  if ((v23 & 1) == 0)
  {
    v25 = v22 - v21;
    if (!__OFSUB__(v22, v21))
    {
      v24 = v20;
      goto LABEL_14;
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v24 = v22 - v21;
  if (!__OFSUB__(v22, v21))
  {
    v25 = v22 - v21;
LABEL_14:
    if (v25 >= v24 && (v25 & 0x8000000000000000) == 0)
    {
      if ((v24 & 0x8000000000000000) == 0)
      {
        if (v24 == v25)
        {
LABEL_18:

          *a1 = 0;
          return;
        }

        v51 = v25;
        while (1)
        {
          v33 = *(v16 + 32);
          if (__OFADD__(v24, v33))
          {
            __break(1u);
LABEL_40:
            __break(1u);
LABEL_41:
            __break(1u);
LABEL_42:
            __break(1u);
            goto LABEL_43;
          }

          (*(**(v16 + 24) + 96))(&v56, v24 + v33);
          v34 = *(v16 + 32);
          v35 = *(v16 + 40);
          v36 = __OFSUB__(v35, v34);
          v37 = v35 - v34;
          if (v36)
          {
            goto LABEL_40;
          }

          if (v24 >= v37)
          {
            goto LABEL_41;
          }

          v58[0] = v56;
          *&v56 = a3;
          BYTE8(v56) = a4 & 1;
          _ViewList_TemporarySublistTransform.bindID(_:)(v58);
          v39 = LODWORD(v58[0]);
          v38 = DWORD1(v58[0]);
          v40 = *(&v58[0] + 1);
          v41 = *(*(&v58[0] + 1) + 16);

          if (!v41)
          {
            break;
          }

          v42 = *(v40 + 32);
          v43 = *(v40 + 52);

          if (v43)
          {
            v38 = 0xFFFFFFFFLL;
          }

          else
          {
            v38 = v38;
          }

          if (!v42)
          {
            goto LABEL_32;
          }

          (*(*v42 + 104))(&v54);
          outlined init with take of AnyTrackedValue(&v54, &v56);
          v31 = *&v57[8];
          v32 = __swift_project_boxed_opaque_existential_1(&v56, *&v57[8]);
          HeterogeneousViewIDsAccumulator.append<A>(index:implicitID:explicitID:)(v39, v38, v32, v31, *(&v31 + 1));
          __swift_destroy_boxed_opaque_existential_1(&v56);

LABEL_21:
          if (v51 == ++v24)
          {
            goto LABEL_18;
          }
        }

LABEL_32:
        _s2os6LoggerVSgWOcTm_0(a6 + 56, &v54, &lazy cache variable for type metadata for (Hashable, isUnary: Bool)?, type metadata accessor for (Hashable, isUnary: Bool));
        if (*&v55[8])
        {
          *&v57[9] = *&v55[9];
          v56 = v54;
          *v57 = *v55;
          v44 = *&v55[8];
          v45 = *&v55[9] >> 56;
          v46 = __swift_project_boxed_opaque_existential_1(&v56, *&v55[8]);
          outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(&v56, &v54, type metadata accessor for (Hashable, isUnary: Bool));
          v47 = v55[24];
          __swift_destroy_boxed_opaque_existential_1(&v54);
          v48 = v47 == 0;
          a4 = v50;
          if (v48)
          {
            v49 = v38;
          }

          else
          {
            v49 = -1;
          }

          HeterogeneousViewIDsAccumulator.append<A>(index:implicitID:explicitID:)(v39, v49, v46, v44, v45);
          outlined destroy of (list: ViewList, attribute: Attribute<ViewList>)(&v56, type metadata accessor for (Hashable, isUnary: Bool));
        }

        else
        {
          _s2os6LoggerVSgWOhTm_0(&v54, &lazy cache variable for type metadata for (Hashable, isUnary: Bool)?, type metadata accessor for (Hashable, isUnary: Bool));
          specialized HeterogeneousViewIDsAccumulator.append<A>(_:)(v39 | (v38 << 32));
        }

        goto LABEL_21;
      }

      goto LABEL_48;
    }

LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
  }

  __break(1u);
}

uint64_t ViewList.applyIDs(from:listAttribute:transform:to:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *a3;
  v8 = *(a3 + 8);
  v12 = 2;
  v10 = v7;
  v11 = v8;
  return ViewList.applyIDs(from:style:listAttribute:transform:to:)(a1, &v12, a2 | ((HIDWORD(a2) & 1) << 32), &v10, a4, a5, a6, a7) & 1;
}

uint64_t ViewList.firstOffset(of:style:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v30 = *(a1 + 4);
  v31 = v6;
  v7 = *(a1 + 8);
  v8 = *a2;
  if (*a2 != 2 || (a1 = (*(a4 + 40))(a3, a4)) == 0)
  {
    v32[0] = 0;
    v36 = 0;
    v34 = 0;
    LOBYTE(v35) = 1;
    MEMORY[0x1EEE9AC00](a1);
    v24[4] = v31;
    v24[5] = v30;
    v25 = v7;
    v26 = &v34;
    v27 = &v36;
    v33[0] = v8;
    v37 = v23;
    ViewList.applySublists(from:style:list:to:)(v32, v33, v23 << 32, partial apply for closure #2 in ViewList.firstOffset(of:style:), v24, a3, a4);
    return v34;
  }

  v9 = a1;
  v10 = *(*a1 + 88);
  if (!v10())
  {
LABEL_12:

    return 0;
  }

  v11 = 0;
  v12 = *(*v9 + 96);
  v28 = *v9 + 96;
  v29 = v12;
  while (1)
  {
    v29(&v34, v11);
    v14 = v34;
    v13 = HIDWORD(v34);
    v15 = v35;
    v16 = *(v35 + 16);

    if (v16)
    {
      v16 = *(v15 + 32);
      v17 = v7;
      v18 = *(v15 + 52);

      v19 = v18 == 0;
      v7 = v17;
      if (!v19)
      {
        v13 = -1;
      }
    }

    else
    {
    }

    v33[0] = __PAIR64__(v13, v14);
    v33[1] = v16;
    v32[0] = __PAIR64__(v30, v31);
    v32[1] = v7;
    v20 = specialized static _ViewList_ID.Canonical.== infix(_:_:)(v33, v32);

    if (v20)
    {

      return v11;
    }

    result = (v10)(v21);
    if (v11 >= result)
    {
      break;
    }

    if (++v11 == v10())
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t closure #2 in ViewList.firstOffset(of:style:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *(a1 + 24);
  v6 = *(a1 + 8);
  if (!v6)
  {

LABEL_24:

    return 1;
  }

  v21 = HIDWORD(a2);
  v9 = *(a1 + 20);
  v10 = a2;
  v11 = v6 & ~(v6 >> 63);

  v13 = 0x80000000;
  while (v13)
  {
    if (!v11)
    {
      goto LABEL_28;
    }

    v14 = *(v5 + 16);
    swift_bridgeObjectRetain_n();
    if (v14)
    {
      v14 = *(v5 + 32);
      v15 = *(v5 + 52);

      swift_bridgeObjectRelease_n();
      if (v15)
      {
        v16 = -1;
      }

      else
      {
        v16 = v9;
      }

      if (v10)
      {
        goto LABEL_20;
      }
    }

    else
    {
      swift_bridgeObjectRelease_n();
      v16 = v9;
      if (v10)
      {
        goto LABEL_20;
      }
    }

    if (v16 != v21)
    {
      goto LABEL_20;
    }

    if (!v14)
    {
      if (!a3)
      {
        goto LABEL_26;
      }

LABEL_19:

LABEL_20:

      goto LABEL_21;
    }

    if (!a3)
    {
      goto LABEL_19;
    }

    if (v14 == a3)
    {

LABEL_26:

      result = 0;
      *a4 = *a5;
      *(a4 + 8) = 0;
      return result;
    }

    v20 = *(*v14 + 112);
    swift_retain_n();

    v18 = v20(v17);

    if (v18)
    {
      goto LABEL_26;
    }

LABEL_21:
    ++*a5;
    --v11;
    --v13;
    --v10;
    if (!--v6)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t _ViewList_Elements.makeAllElements(inputs:indirectMap:body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  v13 = *(a1 + 48);
  v18[2] = *(a1 + 32);
  v18[3] = v13;
  v18[4] = *(a1 + 64);
  v19 = *(a1 + 80);
  v14 = *(a1 + 16);
  v18[0] = *a1;
  v18[1] = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  v21 = 0;
  v17[2] = thunk for @callee_guaranteed (@in_guaranteed _ViewInputs, @guaranteed @escaping @callee_guaranteed (@in_guaranteed _ViewInputs) -> (@out _ViewOutputs)) -> (@out _ViewOutputs?)partial apply;
  v17[3] = v15;
  (*(a6 + 16))(&v20, &v21, v18, a2, closure #1 in closure #1 in _ViewList_Elements.makeAllElements(inputs:indirectMap:body:)partial apply, v17, a5, a6);
  *a7 = v20;
  LOBYTE(a6) = swift_isEscapingClosureAtFileLocation();

  if (a6)
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in closure #1 in _ViewList_Elements.makeOneElement(at:inputs:indirectMap:body:)(void *a1, uint64_t a2, void (*a3)(void *__return_ptr, _OWORD *))
{
  v4 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v4;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v5 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v5;
  a3(v10, v8);
  v6 = v10[1];
  *a1 = v10[0];
  a1[1] = v6;
  return 0;
}

uint64_t _ViewList_Elements.makeOneElement(at:inputs:body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  v13 = *(a2 + 48);
  v18[2] = *(a2 + 32);
  v18[3] = v13;
  v18[4] = *(a2 + 64);
  v19 = *(a2 + 80);
  v14 = *(a2 + 16);
  v18[0] = *a2;
  v18[1] = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  v21 = a1;
  v17[2] = thunk for @callee_guaranteed (@in_guaranteed _ViewInputs, @guaranteed @escaping @callee_guaranteed (@in_guaranteed _ViewInputs) -> (@out _ViewOutputs)) -> (@out _ViewOutputs?)partial apply;
  v17[3] = v15;
  (*(a6 + 16))(&v20, &v21, v18, 0, closure #1 in closure #1 in _ViewList_Elements.makeOneElement(at:inputs:indirectMap:body:)partial apply, v17, a5, a6);
  *a7 = v20;
  LOBYTE(a6) = swift_isEscapingClosureAtFileLocation();

  if (a6)
  {
    __break(1u);
  }

  return result;
}

uint64_t (*_ViewList_ID.index.modify(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  return _ViewList_ID.index.modify;
}

uint64_t static _ViewList_ID.explicit<A>(_:owner:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 4) = 0;
  *(a4 + 8) = MEMORY[0x1E69E7CC0];
  *a4 = 0;
  return _ViewList_ID.bind<A>(explicitID:owner:isUnary:reuseID:)(a1, a2, 1, 0, a3);
}

uint64_t static _ViewList_ID.explicit<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *MEMORY[0x1E698D3F8];
  v5 = MEMORY[0x1E69E7CC0];
  *a3 = 0;
  a3[1] = v5;
  return _ViewList_ID.bind<A>(explicitID:owner:isUnary:reuseID:)(a1, v4, 1, 0, a2);
}

uint64_t _ViewList_ID.elementID(at:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 8);
  *(a2 + 4) = *(v2 + 4);
  *(a2 + 8) = v3;
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    *a2 = result;
  }

  __break(1u);
  return result;
}

uint64_t _ViewList_ID.index.setter(uint64_t result)
{
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    *v1 = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t (*_ViewList_ID.Canonical.index.modify(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  return _ViewList_ID.Canonical.index.modify;
}

uint64_t _ViewList_ID.index.modify(uint64_t result, char a2)
{
  v2 = *result;
  v3 = *result < 0xFFFFFFFF80000000;
  if (a2)
  {
    if (*result < 0xFFFFFFFF80000000)
    {
      __break(1u);
      goto LABEL_9;
    }

    v3 = v2 < 0x7FFFFFFF;
    if (v2 <= 0x7FFFFFFF)
    {
LABEL_7:
      **(result + 8) = v2;
      return result;
    }

    __break(1u);
  }

  if (v3)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v2 <= 0x7FFFFFFF)
  {
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t _ViewList_ID.Canonical.explicitID.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 8) = v2;
  return result;
}

uint64_t _ViewList_ID.Canonical.description.getter()
{
  DynamicType = *(v0 + 8);
  v10 = 0xE000000000000000;
  _StringGuts.grow(_:)(68);
  v13 = 0;
  v14 = 0xE000000000000000;
  MEMORY[0x193ABEDD0](0xD00000000000001DLL, 0x800000018DD7CBD0);
  v2 = String.init<A>(reflecting:)();
  MEMORY[0x193ABEDD0](v2);

  MEMORY[0x193ABEDD0](0x63696C706D69202CLL, 0xEE00203A44497469);
  v3 = String.init<A>(reflecting:)();
  MEMORY[0x193ABEDD0](v3);

  MEMORY[0x193ABEDD0](0x63696C707865202CLL, 0xEE00203A44497469);
  v9 = DynamicType;
  type metadata accessor for [_ViewList_ID](0, &lazy cache variable for type metadata for AnyHashable2?, &type metadata for AnyHashable2, MEMORY[0x1E69E6720]);

  v4 = String.init<A>(reflecting:)();
  MEMORY[0x193ABEDD0](v4);

  v5 = MEMORY[0x193ABEDD0](91, 0xE100000000000000);
  if (DynamicType)
  {
    (*(*DynamicType + 104))(&v9, v5);
    __swift_project_boxed_opaque_existential_1(&v9, v11);
    DynamicType = swift_getDynamicType();
    v6 = v12;
    __swift_destroy_boxed_opaque_existential_1(&v9);
  }

  else
  {
    v6 = 0;
  }

  v9 = DynamicType;
  v10 = v6;
  type metadata accessor for GestureConstantsProvider.Type?(0, &lazy cache variable for type metadata for Hashable.Type?, &lazy cache variable for type metadata for Hashable.Type, &lazy cache variable for type metadata for Hashable);
  v7 = Optional.debugDescription.getter();
  MEMORY[0x193ABEDD0](v7);

  MEMORY[0x193ABEDD0](10589, 0xE200000000000000);
  return v13;
}

void _ViewList_ID.Canonical.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 4);
  v5 = *(v2 + 8);
  Hasher._combine(_:)(*v2);
  Hasher._combine(_:)(v4);
  if (v5)
  {
    Hasher._combine(_:)(1u);
    v6 = *(*v5 + 120);

    v6(a1);
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int _ViewList_ID.Canonical.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  if (v3)
  {
    Hasher._combine(_:)(1u);
    v4 = *(*v3 + 120);

    v4(v6);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance _ViewList_ID.Canonical(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 4);
  v5 = *(v2 + 8);
  Hasher._combine(_:)(*v2);
  Hasher._combine(_:)(v4);
  if (v5)
  {
    Hasher._combine(_:)(1u);
    v6 = *(*v5 + 120);

    v6(a1);
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

uint64_t _ViewList_ID.ElementCollection.id.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

double _ViewList_ID.ElementCollection.id.setter(uint64_t a1)
{
  v3 = *(a1 + 8);

  result = *a1;
  *v1 = *a1;
  v1[1] = v3;
  return result;
}

double _ViewList_ID.ElementCollection.init(id:count:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = *(a1 + 8);
  result = *a1;
  *a3 = *a1;
  a3[1] = v3;
  a3[2] = a2;
  return result;
}

uint64_t _ViewList_ID.ElementCollection.subscript.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 8);
  *(a2 + 4) = *(v2 + 4);
  *(a2 + 8) = v3;
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    *a2 = result;
  }

  __break(1u);
  return result;
}

void *protocol witness for BidirectionalCollection.index(before:) in conformance _ViewList_ID.ElementCollection@<X0>(void *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < *(v2 + 16))
  {
    *a2 = v3;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for BidirectionalCollection.formIndex(before:) in conformance _ViewList_ID.ElementCollection(uint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if ((v2 & 0x8000000000000000) == 0 && v2 < *(v1 + 16))
  {
    *result = v2;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance _ViewList_ID.ElementCollection(uint64_t a1, uint64_t *a2))()
{
  v4 = *a2;
  result = *(v2 + 8);
  *(a1 + 4) = *(v2 + 4);
  *(a1 + 8) = result;
  if (v4 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v4 <= 0x7FFFFFFF)
  {
    *a1 = v4;

    return destroy for HostPreferencesCombiner;
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for Collection.subscript.getter in conformance _ViewList_ID.ElementCollection@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = v2[2];
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = *result;
  if (*result < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = result[1];
  if (v3 >= v5)
  {
    v6 = v2[1];
    a2[2] = *v2;
    a2[3] = v6;
    a2[4] = v3;
    *a2 = v4;
    a2[1] = v5;
  }

LABEL_7:
  __break(1u);
  return result;
}

void protocol witness for Collection.indices.getter in conformance _ViewList_ID.ElementCollection(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = 0;
    a1[1] = v2;
  }
}

void *protocol witness for RandomAccessCollection.index(_:offsetBy:) in conformance _ViewList_ID.ElementCollection@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else if ((v4 & 0x8000000000000000) == 0 && *(v3 + 16) >= v4)
  {
    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for RandomAccessCollection.distance(from:to:) in conformance _ViewList_ID.ElementCollection(uint64_t *result, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(v2 + 16);
  if (v4 >= *a2)
  {
    v5 = *result;
    if (((v3 | *result) & 0x8000000000000000) == 0 && v4 >= v5)
    {
      return (v3 - v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for Collection.index(after:) in conformance _ViewList_ID.ElementCollection@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (*result < 0 || v3 >= *(v2 + 16))
  {
    __break(1u);
  }

  else
  {
    *a2 = v3 + 1;
  }

  return result;
}

uint64_t *protocol witness for Collection.formIndex(after:) in conformance _ViewList_ID.ElementCollection(uint64_t *result)
{
  v2 = *result;
  if (*result < 0 || v2 >= *(v1 + 16))
  {
    __break(1u);
  }

  else
  {
    *result = v2 + 1;
  }

  return result;
}

double protocol witness for Sequence.makeIterator() in conformance _ViewList_ID.ElementCollection@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  result = *v1;
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = 0;
  return result;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance _ViewList_ID.ElementCollection()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(v0);

  return v1;
}

uint64_t _ViewList_ID.primaryExplicitID.getter@<X0>(uint64_t *a1@<X8>)
{
  if (*(*(v1 + 8) + 16))
  {
  }

  else
  {
    result = 0;
  }

  *a1 = result;
  return result;
}

_BYTE *_ViewList_ID._Views.init(_:isDataDependent:)(uint64_t a1, char a2)
{
  (*(*(*(*v2 + 128) - 8) + 32))(&v2[*(*v2 + 152)], a1);
  v2[16] = a2;
  return v2;
}

uint64_t _ViewList_ID._Views.subscript.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v10 = a1;
  v3 = dispatch thunk of Collection.subscript.read();
  v5 = v4;
  v6 = v4[1];

  v7 = *v5;
  result = v3(v9, 0);
  *a2 = v7;
  a2[1] = v6;
  return result;
}

uint64_t _ViewList_ID._Views.isEqual(to:)()
{
  result = swift_dynamicCastClass();
  if (result)
  {

    v1 = dispatch thunk of static Equatable.== infix(_:_:)();

    return v1 & 1;
  }

  return result;
}

uint64_t _ViewList_ID_Views.withDataDependency()()
{
  v1 = v0;
  if ((*(v0 + 16) & 1) == 0)
  {
    type metadata accessor for _ViewList_ID._Views<_ViewList_ID_Views>();
    v1 = swift_allocObject();
    *(v1 + 24) = v0;
    *(v1 + 16) = 1;
  }

  return v1;
}

unint64_t _ViewList_ID.JoinedViews.__allocating_init(_:isDataDependent:)(unint64_t a1, char a2)
{
  swift_allocObject();
  v4 = specialized _ViewList_ID.JoinedViews.init(_:isDataDependent:)(a1, a2);

  return v4;
}

unint64_t _ViewList_ID.JoinedViews.init(_:isDataDependent:)(unint64_t a1, char a2)
{
  v2 = specialized _ViewList_ID.JoinedViews.init(_:isDataDependent:)(a1, a2);

  return v2;
}

uint64_t _ViewList_ID.JoinedViews.subscript.getter(uint64_t result)
{
  v2 = result;
  v3 = *(v1 + 24);
  v4 = *(v3 + 16);
  if (!v4)
  {
    v5 = 0;
LABEL_14:
    if (v5 >= v4)
    {
LABEL_22:
      __break(1u);
    }

    else
    {
      v10 = *(v3 + 16 * v5 + 32);
      v11 = *(*v10 + 88);

      result = v11(v12);
      if ((v2 & 0x8000000000000000) == 0 && result >= v2)
      {
        (*(*v10 + 96))(v2);
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  v5 = 0;
  v6 = v3 + 32;
  v7 = *(v3 + 16);
  while (1)
  {
    v8 = v7 >> 1;
    v9 = v5 + (v7 >> 1);
    if (__OFADD__(v5, v7 >> 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (v9 >= v4)
    {
      goto LABEL_21;
    }

    if (*(v6 + 16 * v9 + 8) <= result)
    {
      break;
    }

LABEL_3:
    v7 = v8;
    if (v8 <= 0)
    {
      goto LABEL_10;
    }
  }

  v5 = v9 + 1;
  if (!__OFADD__(v9, 1))
  {
    v8 = v7 + ~v8;
    goto LABEL_3;
  }

  __break(1u);
LABEL_10:
  if (!v5)
  {
    goto LABEL_14;
  }

  if ((v5 - 1) < v4)
  {
    v2 = result - *(v6 + 16 * (v5 - 1) + 8);
    goto LABEL_14;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t _ViewList_ID.JoinedViews.isEqual(to:)()
{
  v1 = swift_dynamicCastClass();
  if (v1 && (v2 = v1, *(v0 + 32) == *(v1 + 32)))
  {
    v3 = *(v0 + 24);
    v4 = *(v3 + 16);

    v6 = 0;
    v7 = 32;
    while (1)
    {
      v8 = v4 == v6;
      if (v4 == v6)
      {
LABEL_8:

        return v8;
      }

      if (v6 >= *(v3 + 16))
      {
        break;
      }

      if (v6++ >= *(*(v2 + 24) + 16))
      {
        goto LABEL_12;
      }

      v9 = v7 + 16;
      v10 = *(**(v3 + v7) + 104);

      LOBYTE(v10) = v10(v11);

      v7 = v9;
      if ((v10 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t _ViewList_ID.JoinedViews.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

Swift::Int _ViewList_ID.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 48);
    do
    {
      v6 = *(v5 - 2);
      v7 = *v5;
      v5 += 6;
      v8 = *(*v6 + 120);

      v8(v10);
      Hasher._combine(_:)(v7);

      --v4;
    }

    while (v4);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance _ViewList_ID()
{
  Hasher.init(_seed:)();
  _ViewList_ID.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t _ViewList_ID_Views.__allocating_init(isDataDependent:)(char a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void *protocol witness for BidirectionalCollection.index(before:) in conformance _ViewList_ID_Views@<X0>(void *result@<X0>, uint64_t *a2@<X8>)
{
  v4 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    result = (*(**v2 + 88))();
    if ((v4 & 0x8000000000000000) == 0 && v4 < result)
    {
      *a2 = v4;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for BidirectionalCollection.formIndex(before:) in conformance _ViewList_ID_Views(uint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    result = (*(**v1 + 88))();
    if ((v2 & 0x8000000000000000) == 0 && v2 < result)
    {
      *v3 = v2;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for Collection.endIndex.getter in conformance _ViewList_ID_Views@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 88))();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Collection.subscript.getter in conformance _ViewList_ID_Views@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *v2;
  result = (*(*v6 + 88))();
  if (result < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v5 < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (result < v4)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  *a2 = v5;
  a2[1] = v4;
  a2[2] = v6;
}

uint64_t protocol witness for Collection.indices.getter in conformance _ViewList_ID_Views@<X0>(void *a1@<X8>)
{
  result = (*(**v1 + 88))();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = 0;
    a1[1] = result;
  }

  return result;
}

void *protocol witness for RandomAccessCollection.index(_:offsetBy:) in conformance _ViewList_ID_Views@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    result = (*(**v3 + 88))();
    if ((v5 & 0x8000000000000000) == 0 && result >= v5)
    {
      *a3 = v5;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance _ViewList_ID_Views@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t protocol witness for RandomAccessCollection.distance(from:to:) in conformance _ViewList_ID_Views(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *(**v2 + 88);
  result = v5();
  if (v3 < 0 || result < v3)
  {
    __break(1u);
  }

  else
  {
    result = v5();
    if ((v4 & 0x8000000000000000) == 0 && result >= v4)
    {
      return v4 - v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for Collection.index(after:) in conformance _ViewList_ID_Views@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  result = (*(**v2 + 88))();
  if (v4 < 0 || v4 >= result)
  {
    __break(1u);
  }

  else
  {
    *a2 = v4 + 1;
  }

  return result;
}

uint64_t protocol witness for Collection.formIndex(after:) in conformance _ViewList_ID_Views(uint64_t *a1)
{
  v3 = *a1;
  result = (*(**v1 + 88))();
  if (v3 < 0 || v3 >= result)
  {
    __break(1u);
  }

  else
  {
    *a1 = v3 + 1;
  }

  return result;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance _ViewList_ID_Views(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance _ViewList_ID_Views()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0);

  return v1;
}

uint64_t protocol witness for Rule.value.getter in conformance _ViewListOutputs.ApplyModifiers@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
  Value = AGGraphGetValue();
  outlined init with copy of AnyTrackedValue(Value, a1);
  return (*(*v3 + 80))(a1);
}

uint64_t ModifiedViewList.ListModifier.__allocating_init<A>(pred:modifier:inputs:)(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a4;
  *(v9 + 32) = a5;
  *(v9 + 40) = AGCreateWeakAttribute();
  v10 = a3[1];
  *(v9 + 48) = *a3;
  *(v9 + 64) = v10;
  *(v9 + 80) = a3[2];
  return v9;
}

uint64_t EmptyViewList.viewIDs.getter()
{
  type metadata accessor for _ViewList_ID._Views<EmptyCollection<_ViewList_ID>>();
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

Swift::Void __swiftcall EmptyViewList.print(into:)(SwiftUI::SExpPrinter *into)
{
  depth = into->depth;
  if (!depth)
  {
    MEMORY[0x193ABEDD0](40, 0xE100000000000000);
    MEMORY[0x193ABEDD0](0x6C207974706D6528, 0xEC00000029747369);
    goto LABEL_7;
  }

  MEMORY[0x193ABEDD0](10, 0xE100000000000000);
  MEMORY[0x193ABEDD0](into->indent._countAndFlagsBits, into->indent._object);
  MEMORY[0x193ABEDD0](40, 0xE100000000000000);
  MEMORY[0x193ABEDD0](0x6C207974706D6528, 0xEC00000029747369);
  v3 = depth + 1;
  if (__OFADD__(depth, 1))
  {
    __break(1u);
  }

  else
  {
    into->depth = v3;
    MEMORY[0x193ABEDD0](8224, 0xE200000000000000);
    if (depth == -1)
    {
LABEL_7:
      MEMORY[0x193ABEDD0](41, 0xE100000000000000);
      return;
    }

    if (!__OFSUB__(v3, 1))
    {
      into->depth = depth;
      specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL);
      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t protocol witness for ViewList.viewIDs.getter in conformance EmptyViewList()
{
  type metadata accessor for _ViewList_ID._Views<EmptyCollection<_ViewList_ID>>();
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t EmptyViewListElements.makeElements(from:inputs:indirectMap:body:)(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  return 1;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance BaseViewList.Init()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 8))(v1, v2);
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v3);

  MEMORY[0x193ABEDD0](93, 0xE100000000000000);
  return 0x73746E656D656C45;
}

uint64_t project #1 <A>(_:) in BaseViewList.print(into:)(uint64_t a1, void *a2, uint64_t a3, ValueMetadata *a4, uint64_t a5)
{
  if (a4 == &type metadata for EmptyViewListElements)
  {
    if (a2[2])
    {
      MEMORY[0x193ABEDD0](10, 0xE100000000000000);
      v13 = a2[3];
      v14 = a2[4];
    }

    else
    {
      v13 = 32;
      v14 = 0xE100000000000000;
    }

    MEMORY[0x193ABEDD0](v13, v14);
    v21 = 0x800000018DD7CE70;
    v20 = 0xD000000000000010;
    return MEMORY[0x193ABEDD0](v20, v21);
  }

  strcpy(v22, "(elements ");
  BYTE3(v22[1]) = 0;
  HIDWORD(v22[1]) = -369098752;
  v8 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v8);

  MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  v9 = a2[2];
  if (v9)
  {
    MEMORY[0x193ABEDD0](10, 0xE100000000000000);
    MEMORY[0x193ABEDD0](a2[3], a2[4]);
    MEMORY[0x193ABEDD0](40, 0xE100000000000000);
    result = MEMORY[0x193ABEDD0](v22[0], v22[1]);
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_16;
    }

    a2[2] = v9 + 1;
    v11 = 8224;
    v12 = 0xE200000000000000;
  }

  else
  {
    MEMORY[0x193ABEDD0](40, 0xE100000000000000);
    v11 = v22[0];
    v12 = v22[1];
  }

  MEMORY[0x193ABEDD0](v11, v12);

  strcpy(v22, "#:count ");
  BYTE1(v22[1]) = 0;
  WORD1(v22[1]) = 0;
  HIDWORD(v22[1]) = -402653184;
  (*(a5 + 8))(a4, a5);
  v15 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v15);

  MEMORY[0x193ABEDD0](32, 0xE100000000000000);
  MEMORY[0x193ABEDD0](v22[0], v22[1]);

  strcpy(v22, "#:implicitID ");
  HIWORD(v22[1]) = -4864;
  v16 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v16);

  MEMORY[0x193ABEDD0](32, 0xE100000000000000);
  MEMORY[0x193ABEDD0](v22[0], v22[1]);

  v17 = a2[2];
  if (!v17)
  {
LABEL_11:
    v20 = 41;
    v21 = 0xE100000000000000;
    return MEMORY[0x193ABEDD0](v20, v21);
  }

  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (!v18)
  {
    a2[2] = v19;
    specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL);
    goto LABEL_11;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t protocol witness for ViewList.print(into:) in conformance BaseViewList(void *a1)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = __swift_project_boxed_opaque_existential_1(v1, v3);

  return project #1 <A>(_:) in BaseViewList.print(into:)(v5, a1, v1, v3, v4);
}

uint64_t ViewListSublistSlice.ViewIDsSlice.endIndex.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  result = v2 - v1;
  if (__OFSUB__(v2, v1))
  {
    __break(1u);
  }

  return result;
}

uint64_t ViewListSublistSlice.ViewIDsSlice.subscript.getter(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = __OFADD__(a1, v2);
  result = a1 + v2;
  if (!v3)
  {
    return (*(**(v1 + 24) + 96))(result);
  }

  __break(1u);
  return result;
}

uint64_t ViewListSublistSlice.ViewIDsSlice.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t ViewListSublistSlice.viewIDs.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  v3 = (*(v2 + 40))(v1, v2);
  v5 = v0[5];
  v4 = v0[6];
  type metadata accessor for ViewListSublistSlice.ViewIDsSlice();
  result = swift_allocObject();
  if (v3)
  {
    *(result + 24) = v3;
    *(result + 32) = v5;
    *(result + 40) = v4;
    *(result + 16) = *(v3 + 16);
  }

  else
  {
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t ViewListSublistSlice.init(base:bounds:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = outlined init with take of AnyTrackedValue(a1, a4);
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  return result;
}

uint64_t ViewListSublistSlice.count(style:)()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  result = v2 - v1;
  if (__OFSUB__(v2, v1))
  {
    __break(1u);
  }

  return result;
}

void *ViewListSublistSlice.applyNodes(from:style:list:transform:to:)(void *result, uint64_t *a2, unint64_t a3, uint64_t *a4)
{
  v5 = v4[5];
  v6 = v5 + *result;
  if (__OFADD__(v5, *result))
  {
    __break(1u);
  }

  else
  {
    v8 = *a2;
    v9 = *a4;
    v10 = *(a4 + 8);
    v19 = v5 + *result;
    *(swift_allocObject() + 16) = v6;
    v11 = v4[4];
    v12 = __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    v15 = &v15;
    v18 = v8;
    v16 = v9;
    v17 = v10;
    v13 = MEMORY[0x1EEE9AC00](v12);
    v14 = (*(v11 + 64))(&v19, &v18, a3 | ((HIDWORD(a3) & 1) << 32), &v16, partial apply for closure #1 in ViewListSublistSlice.applyNodes(from:style:list:transform:to:), v13);

    return (v14 & 1);
  }

  return result;
}

uint64_t closure #1 in applyNode #1 (start:style:node:transform:body:) in ViewListSublistSlice.applyNodes(from:style:list:transform:to:)(void *a1, unint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void *, unint64_t *, uint64_t, uint64_t *), uint64_t a8)
{
  v14 = *a2;
  v15 = *a4;
  v16 = *(a4 + 8);
  v17 = outlined init with copy of _ViewList_Node(a3, v35);
  if (v37 != 1)
  {
    v28 = &v26;
    v32[0] = v14;
    *&v33[0] = v15;
    BYTE8(v33[0]) = v16;
    MEMORY[0x1EEE9AC00](v17);
    v25[2] = a5;
    v25[3] = a6;
    v25[4] = a7;
    v25[5] = a8;
    v23 = _ViewList_Node.applyNodes(from:style:transform:to:)(a1, v32, v33, v24, v25);
    outlined destroy of _ViewList_Node(v35);
    return v23 & 1;
  }

  v26 = a8;
  v27 = v15;
  LODWORD(v28) = v16;
  v33[2] = v35[2];
  v33[3] = v35[3];
  v34[0] = *v36;
  *(v34 + 13) = *&v36[13];
  v33[0] = v35[0];
  v33[1] = v35[1];
  result = swift_beginAccess();
  v19 = *(a5 + 16);
  if (v19 >= *(a6 + 48))
  {
    outlined destroy of _ViewList_Sublist(v33);
    v23 = 0;
    return v23 & 1;
  }

  v20 = *(&v33[0] + 1);
  if ((v14 & 1) == 0 || (v20 = *(&v33[0] + 1) * (v14 >> 1), (*(&v33[0] + 1) * (v14 >> 1)) >> 64 == v20 >> 63))
  {
    result = swift_beginAccess();
    v21 = v28;
    v22 = v27;
    if (!__OFADD__(v19, v20))
    {
      *(a5 + 16) = v19 + v20;
      v31[0] = v14;
      v29 = v22;
      v30 = v21;
      v23 = a7(a1, v31, a3, &v29);
      outlined destroy of _ViewList_Sublist(v33);
      return v23 & 1;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t ViewListSublistSlice.edit(forID:since:)(void *a1, uint64_t *a2)
{
  v4 = a1[1];
  v5 = *a2;
  v6 = v2[3];
  v7 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v6);
  v10[0] = *a1;
  v10[1] = v4;
  v9 = v5;
  return (*(v7 + 72))(v10, &v9, v6, v7);
}

uint64_t ViewListSublistSlice.firstOffset<A>(forID:style:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *a2;
  v10 = v5[3];
  v11 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v10);
  v16 = v9;
  result = (*(v11 + 80))(a1, &v16, a3, a4, v10, v11);
  if ((v13 & 1) == 0)
  {
    v14 = v5[5];
    v15 = __OFSUB__(result, v14);
    result -= v14;
    if (v15)
    {
      __break(1u);
    }
  }

  return result;
}

Swift::Void __swiftcall ViewListSublistSlice.print(into:)(SwiftUI::SExpPrinter *into)
{
  depth = into->depth;
  if (depth)
  {
    MEMORY[0x193ABEDD0](10, 0xE100000000000000);
    MEMORY[0x193ABEDD0](into->indent._countAndFlagsBits, into->indent._object);
    MEMORY[0x193ABEDD0](40, 0xE100000000000000);
    MEMORY[0x193ABEDD0](0x6563696C73, 0xE500000000000000);
    if (__OFADD__(depth, 1))
    {
      __break(1u);
      goto LABEL_10;
    }

    into->depth = depth + 1;
    v4 = 8224;
    v5 = 0xE200000000000000;
  }

  else
  {
    MEMORY[0x193ABEDD0](40, 0xE100000000000000);
    v4 = 0x6563696C73;
    v5 = 0xE500000000000000;
  }

  MEMORY[0x193ABEDD0](v4, v5);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](3943982, 0xE300000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](0, 0xE000000000000000);

  MEMORY[0x193ABEDD0](32, 0xE100000000000000);
  MEMORY[0x193ABEDD0](0x73646E756F623A23, 0xE900000000000020);

  v6 = v1[3];
  v7 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v6);
  (*(v7 + 88))(into, v6, v7);
  v8 = into->depth;
  if (!v8)
  {
LABEL_8:
    MEMORY[0x193ABEDD0](41, 0xE100000000000000);
    return;
  }

  v9 = __OFSUB__(v8, 1);
  v10 = v8 - 1;
  if (!v9)
  {
    into->depth = v10;
    specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL);
    goto LABEL_8;
  }

LABEL_10:
  __break(1u);
}

uint64_t protocol witness for ViewList.edit(forID:since:) in conformance ViewListSublistSlice(void *a1, uint64_t *a2)
{
  v4 = a1[1];
  v5 = *a2;
  v6 = v2[3];
  v7 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v6);
  v10[0] = *a1;
  v10[1] = v4;
  v9 = v5;
  return (*(v7 + 72))(v10, &v9, v6, v7);
}

uint64_t _ViewList_Group.lists.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t _ViewList_Group.applyNodes(from:style:list:transform:to:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t *, void *, uint64_t *))
{
  v8 = *a4;
  v9 = *(a4 + 8);
  v10 = *v5;
  v17 = *a2;
  v15[0] = v10;
  v16 = 2;
  v13 = v8;
  v14 = v9;

  v11 = a5(a1, &v17, v15, &v13);
  outlined destroy of _ViewList_Node(v15);
  return v11 & 1;
}

uint64_t *_ViewList_Group.edit(forID:since:)@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = 0;
  v5 = *result;
  v6 = result[1];
  v7 = *a2;
  v8 = *v3;
  v9 = *(*v3 + 16);
  v10 = *v3 + 32;
  if (v9)
  {
    goto LABEL_3;
  }

LABEL_2:
  v4 = v9;
  memset(v17, 0, 44);
  while (1)
  {
    *&v19[12] = *(&v17[1] + 12);
    v18 = v17[0];
    *v19 = v17[1];
    if (!*(&v17[1] + 1))
    {
      *a3 = 2;
      return result;
    }

    outlined init with take of AnyTrackedValue(&v18, v17);
    v11 = *(&v17[1] + 1);
    v12 = *&v17[2];
    __swift_project_boxed_opaque_existential_1(v17, *(&v17[1] + 1));
    v15[0] = v5;
    v15[1] = v6;
    v14 = v7;
    (*(v12 + 72))(&v16, v15, &v14, v11, v12);
    if (v16 != 2)
    {
      *a3 = v16;
      return __swift_destroy_boxed_opaque_existential_1(v17);
    }

    result = __swift_destroy_boxed_opaque_existential_1(v17);
    if (v4 == v9)
    {
      goto LABEL_2;
    }

LABEL_3:
    if ((v4 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v4 >= *(v8 + 16))
    {
      goto LABEL_13;
    }

    result = outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v10 + 48 * v4++, v17, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

Swift::Void __swiftcall _ViewList_Group.print(into:)(SwiftUI::SExpPrinter *into)
{
  v3 = *v1;
  _StringGuts.grow(_:)(16);

  strcpy(v22, "group #:count ");
  HIBYTE(v22[0]) = -18;
  v23[0] = *(v3 + 16);
  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v4);

  depth = into->depth;
  if (depth)
  {
    MEMORY[0x193ABEDD0](10, 0xE100000000000000);
    MEMORY[0x193ABEDD0](into->indent._countAndFlagsBits, into->indent._object);
    MEMORY[0x193ABEDD0](40, 0xE100000000000000);
    MEMORY[0x193ABEDD0](*&v22[0], *(&v22[0] + 1));
    if (__OFADD__(depth++, 1))
    {
      goto LABEL_30;
    }

    into->depth = depth;
    v7 = 8224;
    v8 = 0xE200000000000000;
  }

  else
  {
    MEMORY[0x193ABEDD0](40, 0xE100000000000000);
    v8 = *(&v22[0] + 1);
    v7 = *&v22[0];
  }

  MEMORY[0x193ABEDD0](v7, v8);

  v9 = *(v3 + 16);
  if (!v9)
  {
LABEL_22:
    if (depth)
    {
      if (__OFSUB__(depth, 1))
      {
        goto LABEL_31;
      }

      into->depth = depth - 1;
      specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL);
    }

    MEMORY[0x193ABEDD0](41, 0xE100000000000000);
    return;
  }

  v10 = 0;
  v11 = v3 + 32;
  while (v10 < *(v3 + 16))
  {
    outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v11, v22, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
    outlined init with take of AnyTrackedValue(v22, v23);
    *&v22[0] = 0;
    *(&v22[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(18);

    *&v22[0] = 0x20646C696863;
    *(&v22[0] + 1) = 0xE600000000000000;
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x193ABEDD0](v12);

    MEMORY[0x193ABEDD0](0x20727474613A2320, 0xE800000000000000);
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
    v13 = AGAttribute.description.getter();
    MEMORY[0x193ABEDD0](v13);

    v14 = v22[0];
    if (depth)
    {
      MEMORY[0x193ABEDD0](10, 0xE100000000000000);
      MEMORY[0x193ABEDD0](into->indent._countAndFlagsBits, into->indent._object);
      MEMORY[0x193ABEDD0](40, 0xE100000000000000);
      MEMORY[0x193ABEDD0](v14, *(&v14 + 1));

      if (__OFADD__(depth, 1))
      {
        goto LABEL_27;
      }

      into->depth = depth + 1;
      MEMORY[0x193ABEDD0](8224, 0xE200000000000000);
    }

    else
    {
      MEMORY[0x193ABEDD0](40, 0xE100000000000000);
      MEMORY[0x193ABEDD0](v14, *(&v14 + 1));
    }

    v15 = v24;
    v16 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    (*(v16 + 88))(into, v15, v16);
    v17 = into->depth;
    if (v17)
    {
      depth = v17 - 1;
      if (__OFSUB__(v17, 1))
      {
        goto LABEL_28;
      }

      into->depth = depth;
      object = into->indent._object;
      if ((object & 0x2000000000000000) != 0)
      {
        v19 = HIBYTE(object) & 0xF;
      }

      else
      {
        v19 = into->indent._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      v20 = String.index(_:offsetBy:limitedBy:)();
      if (v21)
      {
        goto LABEL_32;
      }

      if (4 * v19 < v20 >> 14)
      {
        goto LABEL_29;
      }

      String.removeSubrange(_:)();
    }

    else
    {
      depth = 0;
    }

    ++v10;
    MEMORY[0x193ABEDD0](41, 0xE100000000000000);
    __swift_destroy_boxed_opaque_existential_1(v23);
    v11 += 48;
    if (v9 == v10)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

unint64_t _ViewList_Group.Init.value.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v17 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
    v5 = v17;
    v6 = (v3 + 32);
    do
    {
      v7 = *v6++;
      Value = AGGraphGetValue();
      outlined init with copy of AnyTrackedValue(Value, &v15);
      *&v16[24] = v7;
      v17 = v5;
      v10 = *(v5 + 16);
      v9 = *(v5 + 24);
      if (v10 >= v9 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
        v5 = v17;
      }

      *(v5 + 16) = v10 + 1;
      v11 = (v5 + 48 * v10);
      v12 = v15;
      v13 = *v16;
      *(v11 + 60) = *&v16[12];
      v11[2] = v12;
      v11[3] = v13;
      --v4;
    }

    while (v4);
  }

  a1[3] = &type metadata for _ViewList_Group;
  result = lazy protocol witness table accessor for type _ViewList_Group and conformance _ViewList_Group();
  a1[4] = result;
  *a1 = v5;
  return result;
}

uint64_t _ViewList_Section.base.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 8) = v2;
  return result;
}

uint64_t _ViewList_Section.traits.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 16) = v2;
  return result;
}

uint64_t _ViewList_Section.content.getter(uint64_t result)
{
  v2 = *(v1 + 8);
  if (*(v2 + 16) < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v2 + 80, v5, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
    v4 = v6;
    outlined init with take of AnyTrackedValue(v5, v3);
    return v4;
  }

  return result;
}

uint64_t _ViewList_Section.footer.getter(uint64_t result)
{
  v2 = *(v1 + 8);
  if (*(v2 + 16) < 3uLL)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v2 + 128, v5, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
    v4 = v6;
    outlined init with take of AnyTrackedValue(v5, v3);
    return v4;
  }

  return result;
}

void _ViewList_Section.viewIDs.getter()
{
  v1 = *(v0 + 8);
  if (*(v0 + 24) == 1)
  {
    if (*(v1 + 16))
    {
      outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v1 + 32, v4, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
      outlined init with take of AnyTrackedValue(v4, v5);
      v2 = v6;
      v3 = v7;
      __swift_project_boxed_opaque_existential_1(v5, v6);
      (*(v3 + 40))(v2, v3);
      __swift_destroy_boxed_opaque_existential_1(v5);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *&v4[0] = *(v0 + 8);
    _ViewList_Group.viewIDs.getter();
  }
}

uint64_t _ViewList_Section.applyNodes(from:style:list:transform:to:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t *, int *, uint64_t *))
{
  v8 = *a4;
  v9 = *(a4 + 8);
  v10 = *v5;
  v11 = *(v5 + 1);
  v12 = *(v5 + 2);
  v13 = *(v5 + 24);
  v23 = *a2;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v22 = 3;
  v16 = v8;
  v17 = v9;

  v14 = a5(a1, &v23, &v18, &v16);
  outlined destroy of _ViewList_Node(&v18);
  return v14 & 1;
}

uint64_t _ViewList_Section.edit(forID:since:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = *a2;
  v6 = *(v3 + 8);
  v9[1] = a1[1];
  v9[2] = v6;
  v9[0] = *a1;
  v8 = v5;

  _ViewList_Group.edit(forID:since:)(v9, &v8, a3);
}

Swift::Void __swiftcall _ViewList_Section.print(into:)(SwiftUI::SExpPrinter *into)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  v5 = *(v1 + 24);
  depth = into->depth;
  if (depth)
  {
    MEMORY[0x193ABEDD0](10, 0xE100000000000000);
    MEMORY[0x193ABEDD0](into->indent._countAndFlagsBits, into->indent._object);
    MEMORY[0x193ABEDD0](40, 0xE100000000000000);
    MEMORY[0x193ABEDD0](0x6E6F6974636573, 0xE700000000000000);
    v7 = depth + 1;
    if (__OFADD__(depth, 1))
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    into->depth = v7;
    MEMORY[0x193ABEDD0](8224, 0xE200000000000000);
  }

  else
  {
    MEMORY[0x193ABEDD0](40, 0xE100000000000000);
    MEMORY[0x193ABEDD0](0x6E6F6974636573, 0xE700000000000000);
    v7 = 0;
  }

  LODWORD(v34[0]) = v3;
  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v8);

  MEMORY[0x193ABEDD0](32, 0xE100000000000000);
  MEMORY[0x193ABEDD0](0x2064693A23, 0xE500000000000000);

  if (v5)
  {
    MEMORY[0x193ABEDD0](32, 0xE100000000000000);
    MEMORY[0x193ABEDD0](0x7261726569683A23, 0xEE006C6163696863);
  }

  *&v37[0] = 0;
  *(&v37[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(16);

  strcpy(v34, "header #:attr ");
  HIBYTE(v34[1]) = -18;
  if (!*(v4 + 16))
  {
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v4 + 32, v37, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
  __swift_destroy_boxed_opaque_existential_1(v37);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
  v9 = AGAttribute.description.getter();
  MEMORY[0x193ABEDD0](v9);

  if (v7)
  {
    MEMORY[0x193ABEDD0](10, 0xE100000000000000);
    MEMORY[0x193ABEDD0](into->indent._countAndFlagsBits, into->indent._object);
    MEMORY[0x193ABEDD0](40, 0xE100000000000000);
    MEMORY[0x193ABEDD0](v34[0], v34[1]);
    if (__OFADD__(v7, 1))
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    into->depth = v7 + 1;
    v10 = 8224;
    v11 = 0xE200000000000000;
  }

  else
  {
    MEMORY[0x193ABEDD0](40, 0xE100000000000000);
    v10 = v34[0];
    v11 = v34[1];
  }

  MEMORY[0x193ABEDD0](v10, v11);

  if (!*(v4 + 16))
  {
    goto LABEL_41;
  }

  outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v4 + 32, v37, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
  outlined init with take of AnyTrackedValue(v37, v34);
  v12 = v35;
  v13 = v36;
  __swift_project_boxed_opaque_existential_1(v34, v35);
  (*(v13 + 88))(into, v12, v13);
  __swift_destroy_boxed_opaque_existential_1(v34);
  v14 = into->depth;
  if (v14)
  {
    v15 = v14 - 1;
    if (__OFSUB__(v14, 1))
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    into->depth = v15;
    specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL);
  }

  else
  {
    v15 = 0;
  }

  MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  *&v37[0] = 0;
  *(&v37[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  v34[0] = 0x20746E65746E6F63;
  v34[1] = 0xEF20727474613A23;
  if (*(v4 + 16) < 2uLL)
  {
    goto LABEL_42;
  }

  outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v4 + 80, v37, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
  __swift_destroy_boxed_opaque_existential_1(v37);
  v16 = AGAttribute.description.getter();
  MEMORY[0x193ABEDD0](v16);

  v18 = v34[0];
  v17 = v34[1];
  if (v15)
  {
    MEMORY[0x193ABEDD0](10, 0xE100000000000000);
    MEMORY[0x193ABEDD0](into->indent._countAndFlagsBits, into->indent._object);
    MEMORY[0x193ABEDD0](40, 0xE100000000000000);
    MEMORY[0x193ABEDD0](v18, v17);
    if (__OFADD__(v15, 1))
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    into->depth = v15 + 1;
    v19 = 8224;
    v20 = 0xE200000000000000;
  }

  else
  {
    MEMORY[0x193ABEDD0](40, 0xE100000000000000);
    v19 = v18;
    v20 = v17;
  }

  MEMORY[0x193ABEDD0](v19, v20);

  if (*(v4 + 16) < 2uLL)
  {
    goto LABEL_43;
  }

  outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v4 + 80, v37, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
  outlined init with take of AnyTrackedValue(v37, v34);
  v21 = v35;
  v22 = v36;
  __swift_project_boxed_opaque_existential_1(v34, v35);
  (*(v22 + 88))(into, v21, v22);
  __swift_destroy_boxed_opaque_existential_1(v34);
  v23 = into->depth;
  if (v23)
  {
    v24 = v23 - 1;
    if (__OFSUB__(v23, 1))
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    into->depth = v24;
    specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL);
  }

  else
  {
    v24 = 0;
  }

  MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  *&v37[0] = 0;
  *(&v37[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(16);

  strcpy(v34, "footer #:attr ");
  HIBYTE(v34[1]) = -18;
  if (*(v4 + 16) < 3uLL)
  {
    goto LABEL_44;
  }

  outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v4 + 128, v37, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
  __swift_destroy_boxed_opaque_existential_1(v37);
  v25 = AGAttribute.description.getter();
  MEMORY[0x193ABEDD0](v25);

  v27 = v34[0];
  v26 = v34[1];
  if (v24)
  {
    MEMORY[0x193ABEDD0](10, 0xE100000000000000);
    MEMORY[0x193ABEDD0](into->indent._countAndFlagsBits, into->indent._object);
    MEMORY[0x193ABEDD0](40, 0xE100000000000000);
    MEMORY[0x193ABEDD0](v27, v26);
    if (__OFADD__(v24, 1))
    {
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    into->depth = v24 + 1;
    v28 = 8224;
    v29 = 0xE200000000000000;
  }

  else
  {
    MEMORY[0x193ABEDD0](40, 0xE100000000000000);
    v28 = v27;
    v29 = v26;
  }

  MEMORY[0x193ABEDD0](v28, v29);

  if (*(v4 + 16) < 3uLL)
  {
    goto LABEL_45;
  }

  outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v4 + 128, v37, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
  outlined init with take of AnyTrackedValue(v37, v34);
  v30 = v35;
  v31 = v36;
  __swift_project_boxed_opaque_existential_1(v34, v35);
  (*(v31 + 88))(into, v30, v31);
  __swift_destroy_boxed_opaque_existential_1(v34);
  v32 = into->depth;
  if (!v32)
  {
    MEMORY[0x193ABEDD0](41, 0xE100000000000000);
    goto LABEL_39;
  }

  v33 = v32 - 1;
  if (__OFSUB__(v32, 1))
  {
    goto LABEL_52;
  }

  into->depth = v33;
  specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL);
  MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  if (!v33)
  {
LABEL_39:
    MEMORY[0x193ABEDD0](41, 0xE100000000000000);
    return;
  }

  if (!__OFSUB__(v33, 1))
  {
    into->depth = v33 - 1;
    specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL);
    goto LABEL_39;
  }

LABEL_53:
  __break(1u);
}

uint64_t protocol witness for ViewList.edit(forID:since:) in conformance _ViewList_Section@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = *a2;
  v6 = *(v3 + 8);
  v9[1] = a1[1];
  v9[2] = v6;
  v9[0] = *a1;
  v8 = v5;

  _ViewList_Group.edit(forID:since:)(v9, &v8, a3);
}

uint64_t MergedElements.tryToReuseElement(at:by:at:indirectMap:testOnly:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  v34 = *MEMORY[0x1E69E9840];
  outlined init with copy of AnyTrackedValue(a2, &v28);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for _ViewList_Elements);
  if (!swift_dynamicCast())
  {
    swift_beginAccess();
    if (static ReuseTrace.recorder)
    {
      AGGraphAddTraceEvent();
    }

LABEL_11:
    v22 = 0;
    return v22 & 1;
  }

  v26 = a4;
  v15 = v31[1];
  v17 = v31[2];
  v16 = v32;
  MergedElements.findElement(at:)(a1, a7, a8, a9, &v28);
  if (!v29)
  {
    _s2os6LoggerVSgWOhTm_0(&v28, &lazy cache variable for type metadata for (_ViewList_Elements, Int)?, type metadata accessor for (_ViewList_Elements, Int));
LABEL_9:
    swift_beginAccess();
    v22 = static ReuseTrace.recorder;
    if (!static ReuseTrace.recorder)
    {
      swift_unknownObjectRelease();
      return v22 & 1;
    }

    v23 = *(static ReuseTrace.recorder + 2);

    v24 = v23;
    AGGraphAddTraceEvent();

    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v18 = v30;
  outlined init with take of AnyTrackedValue(&v28, v31);
  MergedElements.findElement(at:)(a3, v15, v17, v16, &v28);
  if (!v29)
  {
    _s2os6LoggerVSgWOhTm_0(&v28, &lazy cache variable for type metadata for (_ViewList_Elements, Int)?, type metadata accessor for (_ViewList_Elements, Int));
    __swift_destroy_boxed_opaque_existential_1(v31);
    goto LABEL_9;
  }

  v19 = v30;
  outlined init with take of AnyTrackedValue(&v28, v27);
  v20 = v32;
  v21 = v33;
  __swift_project_boxed_opaque_existential_1(v31, v32);
  v22 = (*(v21 + 24))(v18, v27, v19, v26, a5 & 1, v20, v21);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v27);
  __swift_destroy_boxed_opaque_existential_1(v31);
  return v22 & 1;
}

uint64_t MergedElements.findElement(at:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (a4 >> 1 == a3)
  {
LABEL_2:
    *(a5 + 16) = 0u;
    *(a5 + 32) = 0u;
    *a5 = 0u;
  }

  else
  {
    v8 = result;
    v9 = 0;
    if (a3 > v6)
    {
      v6 = a3;
    }

    v10 = v6 - a3;
    v11 = a2 + 72 * a3;
    while (v10)
    {
      outlined init with copy of _ViewListOutputs.Views(v11, v16);
      if (v17)
      {
        goto LABEL_18;
      }

      outlined init with take of AnyTrackedValue(v16, v18);
      v12 = v19;
      v13 = v20;
      __swift_project_boxed_opaque_existential_1(v18, v19);
      v14 = (*(v13 + 8))(v12, v13);
      v15 = v9 + v14;
      if (__OFADD__(v9, v14))
      {
        goto LABEL_16;
      }

      if (v15 < v9)
      {
        goto LABEL_17;
      }

      if (v8 >= v9 && v15 > v8)
      {
        outlined init with copy of AnyTrackedValue(v18, a5);
        *(a5 + 40) = v8 - v9;
        return __swift_destroy_boxed_opaque_existential_1(v18);
      }

      result = __swift_destroy_boxed_opaque_existential_1(v18);
      --v10;
      v11 += 72;
      v9 = v15;
      if (!--v7)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    outlined destroy of _ViewListOutputs.Views(v16);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t ModifiedElements.tryToReuseElement(at:by:at:indirectMap:testOnly:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  outlined init with copy of AnyTrackedValue(a2, v23);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for _ViewList_Elements);
  if (swift_dynamicCast())
  {
    v24[4] = v20;
    v24[5] = v21;
    v24[6] = v22;
    v24[0] = v16;
    v24[1] = v17;
    v24[2] = v18;
    v24[3] = v19;
    Attribute = AGWeakAttributeGetAttribute();
    v11 = *MEMORY[0x1E698D3F8];
    if (Attribute != *MEMORY[0x1E698D3F8])
    {
      v12 = Attribute;
      v13 = AGWeakAttributeGetAttribute();
      if (v13 != v11)
      {
        v14 = project #1 <A>(_:) in ModifiedElements.tryToReuseElement(at:by:at:indirectMap:testOnly:)(*(v5 + 48), v12, v13, a4, a5 & 1, v5, v24, a1, a3);
        outlined destroy of ModifiedElements(v24);
        return v14 & 1;
      }
    }

    outlined destroy of ModifiedElements(v24);
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
    outlined destroy of [GlassContainer.Item](&v16, &lazy cache variable for type metadata for ModifiedElements?, &type metadata for ModifiedElements, MEMORY[0x1E69E6720], type metadata accessor for [_ViewList_ID]);
  }

  v14 = 0;
  return v14 & 1;
}

uint64_t project #1 <A>(_:) in ModifiedElements.tryToReuseElement(at:by:at:indirectMap:testOnly:)(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, _OWORD *a7, uint64_t a8, uint64_t a9)
{
  v39 = *MEMORY[0x1E69E9840];
  if ((Attribute.tryToReuse(by:indirectMap:testOnly:)(a3, a4, a5, a2) & 1) != 0 && (v14 = *(a6 + 80), v35[0] = *(a6 + 64), v35[1] = v14, v15 = *(a6 + 96), v16 = *(a6 + 80), v32 = *(a6 + 64), v33 = v16, v34 = *(a6 + 96), v17 = a7[4], v18 = a7[5], v35[2] = v15, v36[0] = v17, v19 = a7[6], v21 = a7[4], v20 = a7[5], v36[1] = v18, v36[2] = v19, v29 = v21, v30 = v20, v31 = a7[6], outlined init with copy of _GraphInputs(v35, v28), outlined init with copy of _GraphInputs(v36, v28), v22 = _GraphInputs.tryToReuse(by:indirectMap:testOnly:)(&v29, a4, a5 & 1), v37[0] = v29, v37[1] = v30, v37[2] = v31, outlined destroy of _GraphInputs(v37), v38[0] = v32, v38[1] = v33, v38[2] = v34, outlined destroy of _GraphInputs(v38), v22))
  {
    v23 = *(a6 + 24);
    v24 = *(a6 + 32);
    __swift_project_boxed_opaque_existential_1(a6, v23);
    v25 = (*(v24 + 24))(a8, a7, a9, a4, a5 & 1, v23, v24);
  }

  else
  {
    v26 = type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
    swift_beginAccess();
    if (static ReuseTrace.recorder)
    {
      *&v37[0] = v26;
      *(&v37[0] + 1) = &type metadata for ModifiedElements;
      AGGraphAddTraceEvent();
    }

    v25 = 0;
  }

  return v25 & 1;
}

uint64_t ModifiedViewList.ListModifier.__ivar_destroyer()
{
}

uint64_t ModifiedViewList.print(into:)(void *a1)
{
  v3 = a1[2];
  if (v3)
  {
    MEMORY[0x193ABEDD0](10, 0xE100000000000000);
    MEMORY[0x193ABEDD0](a1[3], a1[4]);
    MEMORY[0x193ABEDD0](40, 0xE100000000000000);
    result = MEMORY[0x193ABEDD0](0x6465696669646F6DLL, 0xE800000000000000);
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      goto LABEL_10;
    }

    a1[2] = v3 + 1;
    v5 = 8224;
    v6 = 0xE200000000000000;
  }

  else
  {
    MEMORY[0x193ABEDD0](40, 0xE100000000000000);
    v5 = 0x6465696669646F6DLL;
    v6 = 0xE800000000000000;
  }

  MEMORY[0x193ABEDD0](v5, v6);
  v7 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v7);

  MEMORY[0x193ABEDD0](32, 0xE100000000000000);
  MEMORY[0x193ABEDD0](14883, 0xE200000000000000);

  v8 = v1[3];
  v9 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v8);
  result = (*(v9 + 88))(a1, v8, v9);
  v10 = a1[2];
  if (!v10)
  {
    return MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  }

  v11 = __OFSUB__(v10, 1);
  v12 = v10 - 1;
  if (!v11)
  {
    a1[2] = v12;
    specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL);
    return MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t TypedUnaryViewGenerator.tryToReuse(by:indirectMap:testOnly:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  _s2os6LoggerVSgMaTm_1(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - v9;
  Attribute = AGWeakAttributeGetAttribute();
  v12 = *MEMORY[0x1E698D3F8];
  if (Attribute == *MEMORY[0x1E698D3F8] || (v13 = Attribute, v14 = AGWeakAttributeGetAttribute(), v14 == v12))
  {
    if (one-time initialization token for graphReuse != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v8, static Log.graphReuse);
    _s2os6LoggerVSgWOcTm_0(v15, v10, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
    v16 = type metadata accessor for Logger();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v10, 1, v16) == 1)
    {
      _s2os6LoggerVSgWOhTm_0(v10, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
    }

    else
    {
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v27 = v21;
        *v20 = 136315138;
        v22 = _typeName(_:qualified:)();
        v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v27);

        *(v20 + 4) = v24;
        _os_log_impl(&dword_18D018000, v18, v19, "Reuse failed: missing attribute for %s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v21);
        MEMORY[0x193AC4820](v21, -1, -1);
        MEMORY[0x193AC4820](v20, -1, -1);
      }

      (*(v17 + 8))(v10, v16);
    }

    return 0;
  }

  else
  {

    return Attribute.tryToReuse(by:indirectMap:testOnly:)(v14, a4, a5 & 1, v13);
  }
}

uint64_t _ViewList_Subgraph.__allocating_init(subgraph:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 24) = 1;
  *(result + 16) = a1;
  return result;
}

uint64_t _ViewList_Subgraph.init(subgraph:)(uint64_t a1)
{
  *(v1 + 24) = 1;
  *(v1 + 16) = a1;
  return v1;
}

uint64_t _ViewList_Subgraph.wrapping(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = &unk_1F00840F8;
  a2[4] = lazy protocol witness table accessor for type SubgraphList and conformance SubgraphList();
  v5 = swift_allocObject();
  *a2 = v5;
  outlined init with copy of AnyTrackedValue(a1, v5 + 16);
  *(v5 + 56) = v2;
}

uint64_t _ViewList_Subgraph.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t _ViewList_SubgraphElements.base.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return outlined init with take of AnyTrackedValue(a1, v1);
}

void *_ViewList_SublistSubgraphStorage.retain()()
{
  v1 = *v0;
  v2 = v1 >> 62;
  if (v1 >> 62)
  {
    goto LABEL_38;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    return 0;
  }

  while (1)
  {
    v4 = v1 & 0xC000000000000001;
    v5 = v1 & 0xFFFFFFFFFFFFFF8;
    v6 = v3;
    while (1)
    {
      v7 = v6 - 1;
      if (__OFSUB__(v6, 1))
      {
        break;
      }

      if (v4)
      {
        v8 = MEMORY[0x193AC03C0](v6 - 1, v1);
        v9 = *(v8 + 24);
        if (!v9)
        {
LABEL_13:

LABEL_14:
          if (v6 >= v3)
          {
            return 0;
          }

          if (v2)
          {
            result = __CocoaSet.count.getter();
          }

          else
          {
            result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (result < v6)
          {
            __break(1u);
          }

          else if ((v6 & 0x8000000000000000) == 0)
          {
            if (v2)
            {
              result = __CocoaSet.count.getter();
            }

            else
            {
              result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (result >= v3)
            {
              if (!v4 || v6 == v3)
              {

                if (!v2)
                {
                  goto LABEL_30;
                }
              }

              else
              {
                type metadata accessor for _ViewList_Subgraph();

                v11 = v6;
                do
                {
                  v12 = v11 + 1;
                  _ArrayBuffer._typeCheckSlowPath(_:)(v11);
                  v11 = v12;
                }

                while (v3 != v12);
                if (!v2)
                {
LABEL_30:
                  v13 = v5 + 32;
                  v14 = (2 * v3) | 1;
LABEL_33:
                  type metadata accessor for _ViewList_SubgraphRelease();
                  result = swift_allocObject();
                  result[2] = v5;
                  result[3] = v13;
                  result[4] = v6;
                  result[5] = v14;
                  return result;
                }
              }

              v5 = _CocoaArrayWrapper.subscript.getter();
              v13 = v15;
              v6 = v16;
              v14 = v17;
              goto LABEL_33;
            }

            goto LABEL_43;
          }

          __break(1u);
LABEL_43:
          __break(1u);
          return result;
        }
      }

      else
      {
        if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_36;
        }

        if (v7 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v8 = *(v1 + 32 + 8 * v7);

        v9 = *(v8 + 24);
        if (!v9)
        {
          goto LABEL_13;
        }
      }

      if (!AGSubgraphIsValid())
      {
        goto LABEL_13;
      }

      *(v8 + 24) = v9 + 1;

      --v6;
      if (!v7)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    result = __CocoaSet.count.getter();
    if (!result)
    {
      return result;
    }

    result = __CocoaSet.count.getter();
    if (!result)
    {
      return result;
    }

    v3 = result;
  }
}

uint64_t _ViewList_SubgraphElements.wrap(subgraph:)()
{

  MEMORY[0x193ABF170](v1);
  if (*((*(v0 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

uint64_t _ViewList_SubgraphElements.makeElements(from:inputs:indirectMap:body:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v19[0] = v6[5];
  if (_ViewList_SublistSubgraphStorage.isValid.getter())
  {
    v13 = v6[3];
    v14 = v6[4];
    __swift_project_boxed_opaque_existential_1(v6, v13);
    v15 = *(a3 + 48);
    v19[2] = *(a3 + 32);
    v19[3] = v15;
    v19[4] = *(a3 + 64);
    v20 = *(a3 + 80);
    v16 = *(a3 + 16);
    v19[0] = *a3;
    v19[1] = v16;
    v17 = (*(v14 + 16))(a1, a2, v19, a4, a5, a6, v13, v14);
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    v17 = 1;
  }

  return v17 & 1;
}

BOOL _ViewList_SublistSubgraphStorage.isValid.getter()
{
  v1 = *v0;
  v2 = *v0 & 0xFFFFFFFFFFFFFF8;
  if (*v0 >> 62)
  {
LABEL_17:
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  do
  {
    v5 = v4;
    if (v3 == v4)
    {
      break;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x193AC03C0](v4, v1);
      if (__OFADD__(v5, 1))
      {
LABEL_13:
        __break(1u);
LABEL_14:

        return v3 == v5;
      }
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(v1 + 8 * v4 + 32);

      if (__OFADD__(v5, 1))
      {
        goto LABEL_13;
      }
    }

    if (!*(v6 + 24))
    {
      goto LABEL_14;
    }

    IsValid = AGSubgraphIsValid();

    v4 = v5 + 1;
  }

  while ((IsValid & 1) != 0);
  return v3 == v5;
}

uint64_t _ViewList_SubgraphElements.tryToReuseElement(at:by:at:indirectMap:testOnly:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = a2[3];
  v11 = a2[4];
  v12 = __swift_project_boxed_opaque_existential_1(a2, v10);

  return specialized _ViewList_SubgraphElements.tryToReuseElement(at:by:at:indirectMap:testOnly:)(a1, v12, a3, a4, a5, v5, v10, v11);
}

uint64_t protocol witness for _ViewList_Elements.makeElements(from:inputs:indirectMap:body:) in conformance _ViewList_SubgraphElements(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v19[0] = v6[5];
  if (_ViewList_SublistSubgraphStorage.isValid.getter())
  {
    v13 = v6[3];
    v14 = v6[4];
    __swift_project_boxed_opaque_existential_1(v6, v13);
    v15 = *(a3 + 48);
    v19[2] = *(a3 + 32);
    v19[3] = v15;
    v19[4] = *(a3 + 64);
    v20 = *(a3 + 80);
    v16 = *(a3 + 16);
    v19[0] = *a3;
    v19[1] = v16;
    v17 = (*(v14 + 16))(a1, a2, v19, a4, a5, a6, v13, v14);
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    v17 = 1;
  }

  return v17 & 1;
}

uint64_t protocol witness for _ViewList_Elements.tryToReuseElement(at:by:at:indirectMap:testOnly:) in conformance _ViewList_SubgraphElements(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = a2[3];
  v11 = a2[4];
  v12 = __swift_project_boxed_opaque_existential_1(a2, v10);

  return specialized _ViewList_SubgraphElements.tryToReuseElement(at:by:at:indirectMap:testOnly:)(a1, v12, a3, a4, a5, v5, v10, v11);
}

void *_ViewList_SubgraphRelease.deinit()
{
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v1 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  closure #1 in _ViewList_SubgraphRelease.deinit(v0);
  static Update.end()();
  _MovableLockUnlock(v1);
  swift_unknownObjectRelease();
  return v0;
}

void *closure #1 in _ViewList_SubgraphRelease.deinit(void *result)
{
  v1 = result[4];
  v2 = result[5] >> 1;
  v3 = v2 - v1;
  if (v2 != v1)
  {
    if (v2 <= v1)
    {
      __break(1u);
    }

    else
    {
      v4 = result[3] + 8 * v1;
      do
      {
        v5 = *v4;
        v6 = *(*v4 + 24) - 1;
        *(*v4 + 24) = v6;
        if (!v6)
        {
          v7 = *(*v5 + 104);

          v7(v8);
          if (AGSubgraphIsValid())
          {
            AGSubgraphRef.willInvalidate(isInserted:)(1);
            AGSubgraphInvalidate();
          }
        }

        v4 += 8;
        --v3;
      }

      while (v3);
    }
  }

  return result;
}

uint64_t _ViewList_SubgraphRelease.__deallocating_deinit()
{
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v1 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  closure #1 in _ViewList_SubgraphRelease.deinit(v0);
  static Update.end()();
  _MovableLockUnlock(v1);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t SubgraphList.print(into:)(void *a1)
{
  v3 = a1[2];
  if (v3)
  {
    MEMORY[0x193ABEDD0](10, 0xE100000000000000);
    MEMORY[0x193ABEDD0](a1[3], a1[4]);
    MEMORY[0x193ABEDD0](40, 0xE100000000000000);
    result = MEMORY[0x193ABEDD0](0x6870617267627573, 0xE800000000000000);
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      goto LABEL_10;
    }

    a1[2] = v3 + 1;
    v5 = 8224;
    v6 = 0xE200000000000000;
  }

  else
  {
    MEMORY[0x193ABEDD0](40, 0xE100000000000000);
    v5 = 0x6870617267627573;
    v6 = 0xE800000000000000;
  }

  MEMORY[0x193ABEDD0](v5, v6);
  MEMORY[0x193ABEDD0](2112035, 0xE300000000000000);
  type metadata accessor for _ViewList_Subgraph();
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](32, 0xE100000000000000);
  MEMORY[0x193ABEDD0](0, 0xE000000000000000);

  v7 = v1[3];
  v8 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v7);
  result = (*(v8 + 88))(a1, v7, v8);
  v9 = a1[2];
  if (!v9)
  {
    return MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  }

  v10 = __OFSUB__(v9, 1);
  v11 = v9 - 1;
  if (!v10)
  {
    a1[2] = v11;
    specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL);
    return MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t protocol witness for _ViewList_SublistTransform_Item.apply(sublist:) in conformance SubgraphList.Transform(uint64_t a1)
{

  MEMORY[0x193ABF170](v2);
  if (*((*(a1 + 72) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + 72) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

uint64_t protocol witness for _ViewList_SublistTransform_Item.wrapSubgraph(into:) in conformance SubgraphList.Transform(void *a1)
{

  MEMORY[0x193ABF170](v2);
  if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

uint64_t specialized ShapeStyle.copyStyle(name:in:foregroundStyle:)(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[43] = 0;
  *&v11 = 0;
  v10 = a1;
  BYTE8(v11) = 3;
  *&v12 = 0;
  BYTE8(v12) = 5;
  *&v13 = a2;
  *(&v13 + 1) = a3;
  *v14 = a4;
  memset(&v14[8], 0, 32);
  v14[40] = 1;
  *&v14[41] = 768;

  specialized Paint._apply(to:)(&v10);
  if (BYTE8(v12) == 2)
  {
    v5 = v12;
  }

  else
  {
    type metadata accessor for UnaryElements<BodyUnaryViewGenerator>(0, &lazy cache variable for type metadata for ShapeStyleBox<AngularGradient>, &type metadata for AngularGradient, &protocol witness table for AngularGradient, type metadata accessor for ShapeStyleBox);
    v5 = swift_allocObject();
    v6 = *(v4 + 16);
    *(v5 + 16) = *v4;
    *(v5 + 32) = v6;
    *(v5 + 48) = *(v4 + 32);
  }

  v8[4] = *v14;
  v9[0] = *&v14[16];
  *(v9 + 12) = *&v14[28];
  v8[0] = v10;
  v8[1] = v11;
  v8[2] = v12;
  v8[3] = v13;
  outlined destroy of _ShapeStyle_Shape(v8);
  return v5;
}

uint64_t specialized _ForegroundStyleModifier2.ForegroundStyleEnvironment.value.getter@<X0>(uint64_t *a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = Value[1];
  *a1 = *Value;
  a1[1] = v3;
  type metadata accessor for _ForegroundStyleModifier2<AngularGradient, Color>();

  v4 = AGGraphGetValue();
  v5 = *(v4 + 32);
  v6 = *(v4 + 16);
  v16[0] = *v4;
  v16[1] = v6;
  v17 = v5;
  v7 = *a1;
  v8 = a1[1];

  v9 = specialized ShapeStyle.copyStyle(name:in:foregroundStyle:)(0, v7, v8, 0);
  outlined destroy of AngularGradient(v16);
  v10 = *(AGGraphGetValue() + 40);
  v12 = *a1;
  v11 = a1[1];

  v13 = specialized ShapeStyle.copyStyle(name:in:foregroundStyle:)(0, v12, v11, 0, v10);

  type metadata accessor for ShapeStyleBox<ShapeStylePair<AnyShapeStyle, AnyShapeStyle>>(0, &lazy cache variable for type metadata for ShapeStyleBox<ShapeStylePair<AnyShapeStyle, AnyShapeStyle>>, type metadata accessor for ShapeStylePair<AnyShapeStyle, AnyShapeStyle>, &protocol witness table for ShapeStylePair<A, B>, type metadata accessor for ShapeStyleBox);
  v14 = swift_allocObject();
  *(v14 + 16) = v9;
  *(v14 + 24) = v13;
  swift_retain_n();
  swift_retain_n();

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA015ForegroundStyleF033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt2g5(a1, v14);

  if (v11)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA015ForegroundStyleK033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Ttg5(v12, *a1);
  }
}

uint64_t specialized PreferenceTransform.value.getter(unint64_t Value)
{
  v1 = Value;
  v2 = HIDWORD(Value);
  if (*MEMORY[0x1E698D3F8] == HIDWORD(Value))
  {
    v3 = 0;
    v4 = 1;
  }

  else
  {
    type metadata accessor for [_ViewList_ID](0, &lazy cache variable for type metadata for Int?, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    Value = AGGraphGetValue();
    v3 = *Value;
    v4 = *(Value + 8);
  }

  v15 = v3;
  v16 = v4;
  MEMORY[0x1EEE9AC00](Value);
  v11[4] = v1;
  v11[5] = v2;
  v12 = &v15;
  type metadata accessor for (_:)();
  v5 = AGGraphGetValue();
  v6 = *v5;
  v7 = *(v5 + 8);
  v14[0] = *v5;
  v14[1] = v7;
  if ((v8 & 2) == 0)
  {
    specialized closure #1 in PreferenceTransform.value.getter(v6, v7, v1, &v15);
    return v15;
  }

  v13 = 1;
  MEMORY[0x1EEE9AC00](v6);
  v10[2] = &v13;
  v10[3] = partial apply for specialized closure #1 in PreferenceTransform.value.getter;
  v10[4] = v11;
  v10[5] = v14;

  result = specialized static Update.syncMain(_:)(partial apply for specialized closure #1 in Attribute.syncMainIfReferences<A>(do:), v10);
  if ((v13 & 1) == 0)
  {

    return v15;
  }

  __break(1u);
  return result;
}

uint64_t specialized AnchorWriter.value.getter(unint64_t a1, unint64_t a2)
{
  v2 = a2;
  v26[1] = *MEMORY[0x1E69E9840];
  v3 = HIDWORD(a1);
  v4 = HIDWORD(a2);
  v21 = a1;
  v22 = a2;
  type metadata accessor for _AnchorWritingModifier<CGRect, GlassMaterialShapeKey>();
  Value = AGGraphGetValue();
  v6 = *Value;
  v7 = Value[1];
  v8 = Value[2];
  v19[0] = *Value;
  v19[1] = v7;
  v19[2] = v8;
  if ((v9 & 2) == 0)
  {

    v10 = specialized closure #1 in AnchorWriter.value.getter(v6, v7, v8, v3, v2, v4);
LABEL_9:

    return v10;
  }

  v26[0] = 0;
  MEMORY[0x1EEE9AC00](Value);
  v18[2] = v26;
  v18[3] = partial apply for specialized closure #1 in AnchorWriter.value.getter;
  v18[4] = &v20;
  v18[5] = v19;
  v11 = objc_opt_self();

  if ([v11 isMainThread])
  {
    v26[0] = specialized closure #1 in AnchorWriter.value.getter(v6, v7, v8, v3, v2, v4);
  }

  else
  {
    v13 = swift_allocObject();
    *(v13 + 16) = partial apply for specialized closure #1 in Attribute.syncMainIfReferences<A>(do:);
    *(v13 + 24) = v18;
    v14 = AGSubgraphGetCurrent();
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v23[0] = thunk for @callee_guaranteed () -> ()partial apply;
    v23[1] = v13;
    v24 = v14;
    v25 = CurrentAttribute;
    v16 = one-time initialization token for _lock;

    if (v16 != -1)
    {
      swift_once();
    }

    _MovableLockSyncMain(static Update._lock, v23, @objc closure #1 in closure #1 in closure #1 in static Update.syncMain(_:));
    v17 = v24;

    LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

    if (v17)
    {
      __break(1u);
    }
  }

  v10 = v26[0];
  if (v26[0])
  {
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t _s7SwiftUI13LayoutGesturePAAE11childEvents33_05F3243F43C616B77CCF383885E80E96LL6events5index3boxSDyAA7EventIDVAA0Q4Type_pGAL_SiAA0cD3BoxAELLCtFAA07DefaultcD0V_Tt2g5(uint64_t a1, unint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_50;
  }

  v6 = *(a3 + 160);
  if (*(v6 + 16) <= a2)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    v7 = (v6 + 208 * a2);
    v78[0] = v7[2];
    v8 = v7[3];
    v9 = v7[4];
    v10 = v7[6];
    v80 = v7[5];
    v81 = v10;
    v78[1] = v8;
    v79 = v9;
    v11 = v7[7];
    v12 = v7[8];
    v13 = v7[10];
    v84 = v7[9];
    v85 = v13;
    v82 = v11;
    v83 = v12;
    v14 = v7[11];
    v15 = v7[12];
    v16 = v7[13];
    *(v88 + 12) = *(v7 + 220);
    v87 = v15;
    v88[0] = v16;
    v86 = v14;
    v17 = *(&v79 + 1);
    v89[0] = *(&v79 + 1);
    if (*(*(&v79 + 1) + 16))
    {
      v18 = a1 + 64;
      v19 = 1 << *(a1 + 32);
      if (v19 < 64)
      {
        v20 = ~(-1 << v19);
      }

      else
      {
        v20 = -1;
      }

      v21 = v20 & *(a1 + 64);
      v63 = *&v78[0];
      outlined init with copy of LayoutGestureBox.Child(v78, &v71);
      outlined init with copy of Set<EventID>(v89, &v71, &lazy cache variable for type metadata for Set<EventID>, lazy protocol witness table accessor for type EventID and conformance EventID, &type metadata for EventID, MEMORY[0x1E69E64E8]);
      v22 = (v19 + 63) >> 6;
      v62 = v17 + 56;

      v23 = 0;
      v65 = a1 + 64;
      v66 = MEMORY[0x1E69E7CC8];
      v64 = v17;
      while (1)
      {
        if (!v21)
        {
          if (v22 <= v23 + 1)
          {
            v26 = v23 + 1;
          }

          else
          {
            v26 = v22;
          }

          v27 = v26 - 1;
          while (1)
          {
            v25 = v23 + 1;
            if (__OFADD__(v23, 1))
            {
              break;
            }

            if (v25 >= v22)
            {
              v21 = 0;
              v74 = 0;
              v72 = 0u;
              v73 = 0u;
              v23 = v27;
              v71 = 0u;
              goto LABEL_21;
            }

            v21 = *(v18 + 8 * v25);
            ++v23;
            if (v21)
            {
              v23 = v25;
              goto LABEL_20;
            }
          }

          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

        v25 = v23;
LABEL_20:
        v28 = __clz(__rbit64(v21));
        v21 &= v21 - 1;
        v29 = v28 | (v25 << 6);
        v30 = (*(a1 + 48) + 16 * v29);
        v31 = *v30;
        v32 = v30[1];
        outlined init with copy of AnyTrackedValue(*(a1 + 56) + 40 * v29, &v68);
        *&v71 = v31;
        *(&v71 + 1) = v32;
        outlined init with take of AnyTrackedValue(&v68, &v72);
LABEL_21:
        v75 = v71;
        v76[0] = v72;
        v76[1] = v73;
        v77 = v74;
        v33 = v71;
        if (!v71)
        {

          outlined destroy of Set<EventID>(v89);
          outlined destroy of LayoutGestureBox.Child(v78);
          return v66;
        }

        v34 = *(&v75 + 1);
        outlined init with take of AnyTrackedValue(v76, &v68);
        v35 = v69;
        v36 = v70;
        __swift_project_boxed_opaque_existential_1(&v68, v69);
        (*(v36 + 24))(&v71, v35, v36);
        if (!v71)
        {
          goto LABEL_29;
        }

        if (((*(*v71 + 128))(v63) & 1) == 0)
        {
          break;
        }

        v37 = a1;
        outlined init with copy of AnyTrackedValue(&v68, &v71);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v67[0] = v66;
        v39 = specialized __RawDictionaryStorage.find<A>(_:)(v33, v34);
        v41 = v66[2];
        v42 = (v40 & 1) == 0;
        v43 = __OFADD__(v41, v42);
        v44 = v41 + v42;
        if (v43)
        {
          goto LABEL_48;
        }

        v45 = v40;
        if (v66[3] >= v44)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v59 = v39;
            specialized _NativeDictionary.copy()();
            v39 = v59;
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v44, isUniquelyReferenced_nonNull_native);
          v39 = specialized __RawDictionaryStorage.find<A>(_:)(v33, v34);
          if ((v45 & 1) != (v46 & 1))
          {
            goto LABEL_52;
          }
        }

        a1 = v37;
        v66 = *&v67[0];
        if (v45)
        {
          v24 = *(*&v67[0] + 56) + 40 * v39;
          __swift_destroy_boxed_opaque_existential_1(v24);
          outlined init with take of AnyTrackedValue(&v71, v24);
        }

        else
        {
          *(*&v67[0] + 8 * (v39 >> 6) + 64) |= 1 << v39;
          v53 = (v66[6] + 16 * v39);
          *v53 = v33;
          v53[1] = v34;
          outlined init with take of AnyTrackedValue(&v71, v66[7] + 40 * v39);

          v54 = v66[2];
          v43 = __OFADD__(v54, 1);
          v55 = v54 + 1;
          if (v43)
          {
            goto LABEL_49;
          }

          v66[2] = v55;
        }

LABEL_9:
        __swift_destroy_boxed_opaque_existential_1(&v68);
        v18 = v65;
      }

LABEL_29:
      if (*(v64 + 16))
      {
        Hasher.init(_seed:)();
        MEMORY[0x193AC11A0](v33);
        MEMORY[0x193AC11A0](v34);
        v47 = Hasher._finalize()();
        v48 = -1 << *(v64 + 32);
        v49 = v47 & ~v48;
        if ((*(v62 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49))
        {
          v50 = ~v48;
          while (1)
          {
            v51 = (*(v64 + 48) + 16 * v49);
            if (v51[1] == v34 && *v51 == v33)
            {
              break;
            }

            v49 = (v49 + 1) & v50;
            if (((*(v62 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0)
            {
              goto LABEL_9;
            }
          }

          outlined init with copy of AnyTrackedValue(&v68, &v71);
          v56 = *(&v72 + 1);
          v57 = v73;
          __swift_mutable_project_boxed_opaque_existential_1(&v71, *(&v72 + 1));
          *&v67[0] = 0;
          (*(v57 + 32))(v67, v56, v57);
          outlined init with copy of AnyTrackedValue(&v71, v67);
          v58 = swift_isUniquelyReferenced_nonNull_native();
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v67, v33, v34, v58);
          __swift_destroy_boxed_opaque_existential_1(&v71);
        }
      }

      goto LABEL_9;
    }

    outlined init with copy of LayoutGestureBox.Child(v78, &v71);
    v61 = specialized Dictionary.optimisticFilter(_:)(a1, v78);
    outlined destroy of LayoutGestureBox.Child(v78);
    return v61;
  }

  return result;
}

uint64_t _s7SwiftUI13LayoutGesturePAAE5phase33_05F3243F43C616B77CCF383885E80E96LL3boxAA0D5PhaseOyytGAA0cD3BoxAELLC_tFAA07DefaultcD0V_Tt1g5@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  swift_beginAccess();
  v3 = *(a1 + 160);
  v4 = *(v3 + 16);

  v6 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v7 = 0;
    v8 = v3 + 32;
    v9 = MEMORY[0x1E69E7CC0];
    do
    {
      v10 = *(v3 + 16);
      v11 = (v8 + 208 * v7);
      v12 = v7;
      while (1)
      {
        if (v12 >= v10)
        {
          goto LABEL_36;
        }

        v58 = *v11;
        v13 = v11[1];
        v14 = v11[2];
        v15 = v11[4];
        v61 = v11[3];
        v62 = v15;
        v59 = v13;
        v60 = v14;
        v16 = v11[5];
        v17 = v11[6];
        v18 = v11[8];
        v65 = v11[7];
        v66 = v18;
        v63 = v16;
        v64 = v17;
        v19 = v11[9];
        v20 = v11[10];
        v21 = v11[11];
        *(v69 + 12) = *(v11 + 188);
        v68 = v20;
        v69[0] = v21;
        v67 = v19;
        v7 = v12 + 1;
        if (*(*(&v60 + 1) + 16))
        {
          break;
        }

        v11 += 13;
        ++v12;
        if (v4 == v7)
        {
          goto LABEL_15;
        }
      }

      v54 = v8;
      outlined init with copy of LayoutGestureBox.Child(&v58, v57);
      result = swift_isUniquelyReferenced_nonNull_native();
      v70 = v9;
      if ((result & 1) == 0)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 16) + 1, 1);
        v9 = v70;
      }

      v23 = *(v9 + 16);
      v22 = *(v9 + 24);
      if (v23 >= v22 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
        v9 = v70;
      }

      *(v9 + 16) = v23 + 1;
      v24 = (v9 + 208 * v23);
      v24[2] = v58;
      v25 = v59;
      v26 = v60;
      v27 = v62;
      v24[5] = v61;
      v24[6] = v27;
      v24[3] = v25;
      v24[4] = v26;
      v28 = v63;
      v29 = v64;
      v30 = v66;
      v24[9] = v65;
      v24[10] = v30;
      v24[7] = v28;
      v24[8] = v29;
      v31 = v67;
      v32 = v68;
      v33 = v69[0];
      *(v24 + 220) = *(v69 + 12);
      v24[12] = v32;
      v24[13] = v33;
      v24[11] = v31;
      v8 = v54;
    }

    while (v4 - 1 != v12);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

LABEL_15:

  v34 = *(v9 + 16);
  if (v34)
  {
    v70 = v6;
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v34, 0);
    if (*(v9 + 16))
    {
      v35 = 0;
      v36 = v70;
      v37 = v34 - 1;
      v38 = 32;
      do
      {
        v58 = *(v9 + v38);
        v39 = *(v9 + v38 + 16);
        v40 = *(v9 + v38 + 32);
        v41 = *(v9 + v38 + 64);
        v61 = *(v9 + v38 + 48);
        v62 = v41;
        v59 = v39;
        v60 = v40;
        v42 = *(v9 + v38 + 80);
        v43 = *(v9 + v38 + 96);
        v44 = *(v9 + v38 + 128);
        v65 = *(v9 + v38 + 112);
        v66 = v44;
        v63 = v42;
        v64 = v43;
        v45 = *(v9 + v38 + 144);
        v46 = *(v9 + v38 + 160);
        v47 = *(v9 + v38 + 176);
        *(v69 + 12) = *(v9 + v38 + 188);
        v68 = v46;
        v69[0] = v47;
        v67 = v45;
        if (BYTE12(v59))
        {
          goto LABEL_37;
        }

        type metadata accessor for [_ViewList_ID](0, &lazy cache variable for type metadata for GesturePhase<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for GesturePhase);
        outlined init with copy of LayoutGestureBox.Child(&v58, v57);
        Value = AGGraphGetValue();
        v49 = *Value;
        v50 = Value[1];
        if (v50 > 1)
        {
          if (v50 == 2)
          {
LABEL_24:
            result = outlined destroy of LayoutGestureBox.Child(&v58);
            goto LABEL_27;
          }

          result = outlined destroy of LayoutGestureBox.Child(&v58);
        }

        else
        {
          if (Value[1])
          {
            goto LABEL_24;
          }

          result = outlined destroy of LayoutGestureBox.Child(&v58);
          if ((v49 & 1) == 0)
          {
            v56 = 0;
            goto LABEL_27;
          }
        }

        v56 = v49;
LABEL_27:
        v70 = v36;
        v52 = *(v36 + 16);
        v51 = *(v36 + 24);
        if (v52 >= v51 >> 1)
        {
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1);
          v36 = v70;
        }

        *(v36 + 16) = v52 + 1;
        v53 = v36 + 2 * v52;
        *(v53 + 32) = v56;
        *(v53 + 33) = v50;
        if (v37 == v35)
        {

          goto LABEL_34;
        }

        v38 += 208;
        ++v35;
      }

      while (v35 < *(v9 + 16));
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }

  else
  {

    v36 = MEMORY[0x1E69E7CC0];
LABEL_34:
    specialized Collection<>.merged()(v36, a2);
  }

  return result;
}

uint64_t _s7SwiftUI16LayoutGestureBox33_05F3243F43C616B77CCF383885E80E96LLC21resetTerminalChildren7gestureyx_tAA0cD0RzlFAA07DefaultcD0V_Ttg5()
{
  v1 = v0;
  result = swift_beginAccess();
  v3 = *(*(v0 + 160) + 16);
  if (v3)
  {
    v4 = *(v0 + 160);
    if (*(v4 + 16))
    {
      v5 = 0;
      v6 = v3 - 1;
      v7 = MEMORY[0x1E69E7CA8];
      v8 = 44;
      while (1)
      {
        v9 = (v4 + v8);
        v112 = *(v9 - 12);
        v10 = *(v9 + 4);
        v11 = *(v9 + 20);
        v12 = *(v9 + 36);
        v116 = *(v9 + 52);
        v115 = v12;
        v114 = v11;
        v113 = v10;
        v13 = *(v9 + 68);
        v14 = *(v9 + 84);
        v15 = *(v9 + 100);
        v120 = *(v9 + 116);
        v119 = v15;
        v118 = v14;
        v117 = v13;
        v16 = *(v9 + 132);
        v17 = *(v9 + 148);
        v18 = *(v9 + 164);
        *(v123 + 12) = v9[11];
        v123[0] = v18;
        v122 = v17;
        v121 = v16;
        if (!*(*(&v114 + 1) + 16))
        {
          goto LABEL_10;
        }

        if (BYTE12(v113))
        {
          goto LABEL_33;
        }

        type metadata accessor for [_ViewList_ID](0, &lazy cache variable for type metadata for GesturePhase<()>, v7 + 8, type metadata accessor for GesturePhase);
        outlined init with copy of LayoutGestureBox.Child(&v112, __dst);
        Value = AGGraphGetValue();
        v20 = Value[1];
        if (v20 != 2 && (v20 != 3 || *Value))
        {
          break;
        }

        swift_beginAccess();
        v21 = *(v1 + 160);
        result = swift_isUniquelyReferenced_nonNull_native();
        *(v1 + 160) = v21;
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
          v21 = result;
          *(v1 + 160) = result;
        }

        if (v5 >= *(v21 + 16))
        {
          goto LABEL_32;
        }

        v22 = v21 + v8;
        if (*(*(v21 + v8 + 28) + 16))
        {
          if ((*(v22 + 16) & 1) == 0)
          {
            v23 = v21 + v8;
            v24 = *(v21 + v8 + 116);
            v25 = *(v21 + v8 + 148);
            v108 = *(v21 + v8 + 132);
            v109 = v25;
            v110 = *(v21 + v8 + 164);
            v26 = *(v21 + v8 + 52);
            v27 = *(v21 + v8 + 84);
            v104 = *(v21 + v8 + 68);
            v105 = v27;
            v106 = *(v21 + v8 + 100);
            v107 = v24;
            v102 = *(v21 + v8 + 36);
            v103 = v26;
            memmove(__dst, (v21 + v8 + 36), 0x90uLL);
            if (_s7SwiftUI16LayoutGestureBox33_05F3243F43C616B77CCF383885E80E96LLC5ChildV9DebugDataOSgWOg(__dst) == 1)
            {
              v99 = v108;
              v100 = v109;
              v101 = v110;
              v95 = v104;
              v96 = v105;
              v97 = v106;
              v98 = v107;
              v29 = v102;
              v28 = v103;
            }

            else
            {
              v90 = v108;
              v91 = v109;
              v92 = v110;
              v86 = v104;
              v87 = v105;
              v88 = v106;
              v89 = v107;
              v84 = v102;
              v85 = v103;
              if (_s7SwiftUI16LayoutGestureBox33_05F3243F43C616B77CCF383885E80E96LLC5ChildV9DebugDataOWOg(&v84) == 1)
              {
                destructiveProjectEnumData for LayoutGestureBox.Child.DebugData(&v84);
                v30 = AGGraphGetValue();
                v93 = *v30;
                v31 = v30[4];
                v33 = v30[1];
                v32 = v30[2];
                v96 = v30[3];
                v97 = v31;
                v94 = v33;
                v95 = v32;
                v34 = v30[8];
                v36 = v30[5];
                v35 = v30[6];
                v100 = v30[7];
                v101 = v34;
                v98 = v36;
                v99 = v35;
                v37 = v34.i64[1];
                v59 = v95;
                v60 = v96;
                v38 = *(v94.i64 + 4);
                v57 = v94.i8[1];
                v58 = v94.i8[0];
                v56 = v93.i64[1];
                v39 = v93.i8[0];
                outlined init with copy of GestureDebug.Data(&v93, &v70);
                v81 = v99;
                v82 = v100;
                v83 = v101.i8[0];
                v41 = v97;
                v40 = v98;
              }

              else
              {
                v42 = destructiveProjectEnumData for LayoutGestureBox.Child.DebugData(&v84);
                v59 = *(v42 + 32);
                v60 = *(v42 + 48);
                v38 = *(v42 + 20);
                v57 = *(v42 + 17);
                v58 = *(v42 + 16);
                v55 = *(v42 + 136);
                v56 = *(v42 + 8);
                v39 = *v42;
                v95 = v104;
                v96 = v105;
                v99 = v108;
                v100 = v109;
                v97 = v106;
                v98 = v107;
                v93 = v102;
                v94 = v103;
                v101 = v110;
                v43 = destructiveProjectEnumData for LayoutGestureBox.Child.DebugData(&v93);
                outlined init with copy of GestureDebug.Data(v43, &v70);
                v44 = *(v42 + 112);
                v81 = *(v42 + 96);
                v82 = v44;
                v83 = *(v42 + 128);
                v41 = *(v42 + 64);
                v40 = *(v42 + 80);
                v37 = v55;
              }

              v79 = v41;
              v80 = v40;
              v67 = v81;
              v68 = v82;
              v69.i8[0] = v83;
              v65 = v41;
              v66 = v40;
              v61.i8[0] = v39;
              v61.i64[1] = v56;
              v62.i8[0] = v58;
              v62.i8[1] = v57;
              *(v62.i64 + 4) = v38;
              v63 = v59;
              v64 = v60;
              v69.i64[1] = v37;
              _s7SwiftUI16LayoutGestureBox33_05F3243F43C616B77CCF383885E80E96LLC5ChildV9DebugDataOWOi_(&v61);
              v76 = v67;
              v77 = v68;
              v78 = v69;
              v72 = v63;
              v73 = v64;
              v74 = v65;
              v75 = v66;
              v70 = v61;
              v71 = v62;
              _ViewInputs.base.modify(&v70, v45);
              v99 = v76;
              v100 = v77;
              v101 = v78;
              v95 = v72;
              v96 = v73;
              v97 = v74;
              v98 = v75;
              v29 = v70;
              v28 = v71;
            }

            v93 = v29;
            v94 = v28;
            v84 = *(v23 + 36);
            v46 = *(v23 + 52);
            v47 = *(v23 + 68);
            v48 = *(v23 + 100);
            v87 = *(v23 + 84);
            v88 = v48;
            v85 = v46;
            v86 = v47;
            v49 = *(v23 + 116);
            v50 = *(v23 + 132);
            v51 = *(v23 + 164);
            v91 = *(v23 + 148);
            v92 = v51;
            v89 = v49;
            v90 = v50;
            v52 = outlined destroy of [GlassContainer.Item](&v84, &lazy cache variable for type metadata for LayoutGestureBox.Child.DebugData?, &type metadata for LayoutGestureBox.Child.DebugData, MEMORY[0x1E69E6720], type metadata accessor for [_ViewList_ID]);
            *(v23 + 116) = v98;
            *(v23 + 132) = v99;
            *(v23 + 148) = v100;
            *(v23 + 164) = v101;
            *(v23 + 52) = v94;
            *(v23 + 68) = v95;
            *(v23 + 84) = v96;
            *(v23 + 100) = v97;
            *(v23 + 36) = v93;
            *(v22 + 12) = 0;
            *(v22 + 16) = 1;
            v53 = *(v21 + v8 + 4);
            if (v53)
            {
              AGSubgraphRef.willInvalidate(isInserted:)(1);
              AGSubgraphInvalidate();
            }

            *(v21 + v8 + 4) = 0;
            (*(**(v22 - 12) + 120))(v52);
            v7 = MEMORY[0x1E69E7CA8];
          }

          v54 = v21 + v8;

          *(v54 + 20) = MEMORY[0x1E69E7CC8];
          *(v22 + 28) = MEMORY[0x1E69E7CD0];
          ++*v54;
        }

        *(v1 + 160) = v21;
        swift_endAccess();
        result = outlined destroy of LayoutGestureBox.Child(&v112);
        ++*(v1 + 172);
        if (v6 == v5)
        {
          return result;
        }

LABEL_28:
        v4 = *(v1 + 160);
        v8 += 208;
        if (++v5 >= *(v4 + 16))
        {
          goto LABEL_31;
        }
      }

      result = outlined destroy of LayoutGestureBox.Child(&v112);
LABEL_10:
      if (v6 == v5)
      {
        return result;
      }

      goto LABEL_28;
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  return result;
}

uint64_t specialized UpdateLayoutGestureBox.value.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  Value = AGGraphGetValue();
  LayoutGestureBox.updateResetSeed(_:)(*Value);
  v5 = AGGraphGetValue();
  v7 = v6;
  v8 = *v5;

  if (v7)
  {
    LayoutGestureBox.updateResponder(_:)(v8);
  }

  type metadata accessor for [EventID : EventType]();
  AGGraphGetValue();
  result = AGGraphGetCurrentAttribute();
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v10 = result;

    specialized LayoutGestureBox.willSendEvents<A>(_:gesture:boxValueAttribute:)(v11, v10);

    return a3;
  }

  return result;
}

unint64_t specialized LayoutChildEvents.value.getter(unint64_t a1)
{
  v1 = HIDWORD(a1);
  v2 = *AGGraphGetValue();
  swift_beginAccess();
  v3 = *(v2 + 160);
  v4 = v3 - 144;
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = *(v4 + 184);
    v4 += 208;
    if (v6 == v1)
    {
    }
  }

  return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E4Type_pTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
}

uint64_t specialized LayoutChildSeed.value.getter(unint64_t a1)
{
  v1 = HIDWORD(a1);
  Value = AGGraphGetValue();
  v3 = *Value;
  v4 = *(*Value + 176);
  swift_beginAccess();
  v5 = *(v3 + 160);
  v6 = v5 - 164;
  v7 = *(v5 + 16) + 1;
  while (--v7)
  {
    v8 = (v6 + 208);
    v9 = *(v6 + 204);
    v6 += 208;
    if (v9 == v1)
    {
      v10 = *v8;
      return (v10 + v4);
    }
  }

  v10 = 0x10000;
  return (v10 + v4);
}

uint64_t specialized LayoutDebug.value.getter@<X0>(unint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = HIDWORD(a1);
  v6 = *AGGraphGetValue();
  swift_beginAccess();
  v7 = *(v6 + 160);
  v8 = *(v7 + 16);

  v10 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v11 = 0;
    v12 = v7 + 80;
    do
    {
      v13 = (v12 + 208 * v11);
      v14 = v8 - v11;
      while (1)
      {
        if (v11 >= *(v7 + 16))
        {
          __break(1u);
          return result;
        }

        __src[0] = *(v13 - 3);
        v15 = *(v13 - 2);
        v16 = *(v13 - 1);
        v17 = v13[1];
        __src[3] = *v13;
        __src[4] = v17;
        __src[1] = v15;
        __src[2] = v16;
        v18 = v13[2];
        v19 = v13[3];
        v20 = v13[5];
        __src[7] = v13[4];
        __src[8] = v20;
        __src[5] = v18;
        __src[6] = v19;
        v21 = v13[6];
        v22 = v13[7];
        v23 = v13[8];
        *(&__src[11] + 12) = *(v13 + 140);
        __src[10] = v22;
        __src[11] = v23;
        __src[9] = v21;
        v87 = *v13;
        v24 = v13[1];
        v25 = v13[2];
        v26 = v13[4];
        v90 = v13[3];
        v91 = v26;
        v88 = v24;
        v89 = v25;
        v27 = v13[5];
        v28 = v13[6];
        v29 = v13[7];
        v95 = v13[8];
        v94 = v29;
        v92 = v27;
        v93 = v28;
        result = _s7SwiftUI16LayoutGestureBox33_05F3243F43C616B77CCF383885E80E96LLC5ChildV9DebugDataOSgWOg(&v87);
        if (result != 1)
        {
          break;
        }

        v13 += 13;
        ++v11;
        if (!--v14)
        {
          goto LABEL_16;
        }
      }

      v65 = v12;
      v66 = v5;
      v86[6] = v93;
      v86[7] = v94;
      v86[8] = v95;
      v86[2] = v89;
      v86[3] = v90;
      v86[4] = v91;
      v86[5] = v92;
      v86[0] = v87;
      v86[1] = v88;
      if (_s7SwiftUI16LayoutGestureBox33_05F3243F43C616B77CCF383885E80E96LLC5ChildV9DebugDataOWOg(v86) == 1)
      {
        destructiveProjectEnumData for LayoutGestureBox.Child.DebugData(v86);
        outlined init with copy of LayoutGestureBox.Child(__src, &v70);
        Value = AGGraphGetValue();
        v75 = *Value;
        v31 = Value[4];
        v33 = Value[1];
        v32 = Value[2];
        v78 = Value[3];
        v79 = v31;
        v76 = v33;
        v77 = v32;
        v34 = Value[8];
        v36 = Value[5];
        v35 = Value[6];
        v82 = Value[7];
        v83 = v34;
        v80 = v36;
        v81 = v35;
        outlined init with copy of GestureDebug.Data(&v75, &v70);
        outlined destroy of LayoutGestureBox.Child(__src);
        v64 = *(&v83 + 1);
        v62 = v78;
        v63 = v77;
        v37 = *(&v76 + 4);
        v60 = BYTE1(v76);
        v61 = v76;
        v59 = *(&v75 + 1);
        v38 = v75;
        v72 = v81;
        v73 = v82;
        v74 = v83;
        v40 = v79;
        v39 = v80;
      }

      else
      {
        v41 = destructiveProjectEnumData for LayoutGestureBox.Child.DebugData(v86);
        v64 = *(v41 + 136);
        v62 = *(v41 + 48);
        v63 = *(v41 + 32);
        v37 = *(v41 + 20);
        v60 = *(v41 + 17);
        v61 = *(v41 + 16);
        v59 = *(v41 + 8);
        v38 = *v41;
        outlined init with copy of [GlassContainer.Item](&__src[3], &v70, &lazy cache variable for type metadata for LayoutGestureBox.Child.DebugData?, &type metadata for LayoutGestureBox.Child.DebugData, MEMORY[0x1E69E6720]);
        v42 = *(v41 + 112);
        v72 = *(v41 + 96);
        v73 = v42;
        v74 = *(v41 + 128);
        v40 = *(v41 + 64);
        v39 = *(v41 + 80);
      }

      v70 = v40;
      v71 = v39;
      result = swift_isUniquelyReferenced_nonNull_native();
      v43 = a2;
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1, v10);
        v10 = result;
      }

      v45 = *(v10 + 16);
      v44 = *(v10 + 24);
      if (v45 >= v44 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v10);
        v10 = result;
      }

      ++v11;
      LOBYTE(v79) = v74;
      v77 = v72;
      v78 = v73;
      v75 = v70;
      v76 = v71;
      *(v10 + 16) = v45 + 1;
      v46 = v10 + 144 * v45;
      *(v46 + 32) = v38;
      v47 = *v85;
      *(v46 + 36) = *&v85[3];
      *(v46 + 33) = v47;
      *(v46 + 40) = v59;
      *(v46 + 48) = v61;
      *(v46 + 49) = v60;
      *(v46 + 52) = v37;
      *(v46 + 64) = v63;
      *(v46 + 80) = v62;
      *(v46 + 96) = v75;
      LOBYTE(v47) = v79;
      v49 = v77;
      v48 = v78;
      *(v46 + 112) = v76;
      *(v46 + 128) = v49;
      *(v46 + 144) = v48;
      *(v46 + 160) = v47;
      v50 = *&v84[3];
      *(v46 + 161) = *v84;
      *(v46 + 164) = v50;
      v12 = v65;
      *(v46 + 168) = v64;
      v5 = v66;
      a2 = v43;
    }

    while (v14 != 1);
  }

LABEL_16:

  type metadata accessor for CGPoint(0);
  v86[0] = *AGGraphGetValue();
  *&v72 = 0;
  v70 = 0u;
  v71 = 0u;
  BYTE8(v72) = 2;
  v51 = AGGraphGetValue();
  v53 = v51[1];
  v52 = v51[2];
  v87 = *v51;
  v88 = v53;
  v89 = v52;
  outlined init with copy of ViewTransform(&v87, __src);
  specialized ApplyViewTransform.convert(to:transform:)(&v70, &v87);
  outlined destroy of ViewTransform(&v87);
  outlined destroy of CoordinateSpace(&v70);
  _s7SwiftUI16ArrayWith2InlineVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA12GestureDebugO4DataV_SayAJGTt1g5(v10, __src);
  type metadata accessor for [_ViewList_ID](0, &lazy cache variable for type metadata for GesturePhase<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for GesturePhase);
  v54 = *AGGraphGetValue();
  v55 = *AGGraphGetValue();
  v67 = v86[0];
  v68 = *AGGraphGetValue();
  _s7SwiftUI16ArrayWith2InlineVyACyxGqd__c7ElementQyd__RszSTRd__lufCSS_SSt_SRySS_SStGTt1g5((MEMORY[0x1E69E7CC0] + 32), 0, &v70);
  *a3 = 4;
  *(a3 + 8) = &type metadata for DefaultLayoutGesture;
  v56 = swift_allocObject();
  result = memcpy((v56 + 16), __src, 0x121uLL);
  *(a3 + 136) = v56;
  *(a3 + 16) = v54;
  *(a3 + 20) = v5;
  *(a3 + 24) = v55;
  *(a3 + 32) = v67;
  *(a3 + 48) = v68;
  v57 = v73;
  *(a3 + 96) = v72;
  *(a3 + 112) = v57;
  *(a3 + 128) = v74;
  v58 = v71;
  *(a3 + 64) = v70;
  *(a3 + 80) = v58;
  return result;
}

double specialized GesturePhase.applyingDependency(_:inheritedPhase:)@<D0>(unsigned __int8 a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 1);
  v4 = *(v3 + 2);
  v6 = *(v3 + 3);
  v7 = v3[32];
  if (a1 > 1u)
  {
    if (a1 != 2 && (a2 & 2) != 0)
    {
      result = 0.0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 768;
      return result;
    }

    if (a2)
    {
      goto LABEL_10;
    }
  }

  else if (!a1 || (a2 & 2) == 0)
  {
    goto LABEL_10;
  }

  if (v3[33] - 1 > 1)
  {
LABEL_10:
    v8 = *(v3 + 1);
    *a3 = *v3;
    *(a3 + 16) = v8;
    *(a3 + 32) = *(v3 + 16);
    goto LABEL_11;
  }

  *a3 = *v3;
  *(a3 + 8) = v5;
  *(a3 + 16) = v4;
  *(a3 + 24) = v6;
  *(a3 + 32) = v7 & 1;
LABEL_11:
  outlined init with copy of [GlassContainer.Item](v3, v10, &lazy cache variable for type metadata for GesturePhase<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for GesturePhase);
  return result;
}

uint64_t specialized closure #2 in KeyPath.makeGetFunction()(void *__src)
{
  memcpy(__dst, __src, 0x289uLL);
  memcpy(v3, __src, sizeof(v3));
  outlined init with copy of GlassContainer.Item(__dst, v5);
  swift_getAtKeyPath();
  memcpy(v5, v3, 0x289uLL);
  return outlined destroy of GlassContainer.Item(v5);
}

uint64_t (*specialized closure #1 in closure #1 in Attribute.init<A>(_:)())(_DWORD *a1, uint64_t a2)
{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI19ViewTraitCollectionV_AK05EmptyhI033_C1B8B6896BB94C69479F427820712D02LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI19ViewTraitCollectionV_AK4TextV05WritekI0VTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI19ViewTraitCollectionV_AK5ImageV09WriteIconI0VTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI19ViewTraitCollectionV_AK013SectionFooterI033_C1B8B6896BB94C69479F427820712D02LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI19ViewTraitCollectionV_AK013SectionHeaderI0VTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI19ViewTraitCollectionV_AK09SectionedI033_C1B8B6896BB94C69479F427820712D02LLVTt1g5;
}

uint64_t (*specialized closure #1 in closure #1 in Attribute.init<A>(_:)())(void *a1, uint64_t a2)
{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12ViewGeometryV_AK010UnaryChildI033_1C3B77B617AD058A6802F719E38F5D79LLVyAK29IgnoresAutomaticPaddingLayout33_47C1BD8C61550BB60F4F3D12F752D53DLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11TransactionV_AK05ChildH033_530459AF10BEFD7ED901D8CE93C1E289LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK014MaterialEffectH033_E3B0FF576136F59061E5D7766373CC25LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11TransactionV_AK05ChildcH033_A1B10B5AB036C34AB7DD2EE8825FCA93LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK26_ContentTransitionModifierV05ChildH033_91D8F0C7DA490950AB41112E50631DCALLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK25_ForegroundStyleModifier2V0jkH033_BEFE9363F68E039B4AB6422B8AA4535ALLVyAK15AngularGradientVAK5ColorV_GTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI18GlassMaterialShape33_62A32D59B8A902A88963544196023CF7LLVG_AK12AnchorWriter33_B89A89B33C45D9502AF2C3A074918EE9LLVySo6CGRectVAK0hiJ3KeyAMLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI4TextV9LayoutKeyV08AnchoredI0VG_AK0hI5Query33_641995D812913A47B866B20B88782376LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK21StyledTextContentViewV018ArchivedTransitionH033_641995D812913A47B866B20B88782376LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12ViewGeometryV_AK010UnaryChildI033_1C3B77B617AD058A6802F719E38F5D79LLVyAK14_PaddingLayoutVGTt1g5;
}

uint64_t (*specialized closure #1 in closure #1 in Attribute.init<A>(_:)())(unsigned int *a1)
{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI18ScrollStateRequest_pG_AK19PreferenceTransform33_D3405DB583003A73D556A7797845B7F4LLVyAK06UpdatehiJ3KeyVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_SDy7SwiftUI16ScrollTargetRoleV0J0OSayAK20ScrollableCollection_pGG_AK19PreferenceTransform33_D3405DB583003A73D556A7797845B7F4LLVyAM10ContentKeyVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI25_LazyLayout_PlacedSubviewVG_AK0H26PreferencePrefetchSubviews33_EB2336F1CBB87914F55D10FF4F9B475ALLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11TransactionV_AK05ChildH033_A1B10B5AB036C34AB7DD2EE8825FCA93LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI14GlassContainerO4ItemVG_AK19PreferenceTransform33_D3405DB583003A73D556A7797845B7F4LLVyAO3KeyVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataVSg_AK19PreferenceTransform33_D3405DB583003A73D556A7797845B7F4LLVyAMGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI25ViewListArchivedAnimation33_FF3C661D9D8317A1C8FE2B7FD4EDE12CLLV6EffectV_ANTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI19LazyLayoutCacheItemCG_AK0H23PreferencePrefetchItems33_EB2336F1CBB87914F55D10FF4F9B475ALLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK06UpdateH033_E370275CDB55AC7AD9ACF0420859A9E8LLVyAK25SystemColorSchemeModifierVGTt1g5;
}

uint64_t (*specialized closure #1 in closure #1 in Attribute.init<A>(_:)())(void *a1)
{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_ySDy7SwiftUI16ScrollTargetRoleV0J0OSayAK20ScrollableCollection_pGGzc_AM9SetLayoutVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI9ViewFrameV_AK07MatchedI033_F035CBEF00D3D777B3359545F684D774LLVTt1g5;
}

uint64_t (*specialized closure #1 in closure #1 in Attribute.init<A>(_:)())(__int128 *a1, uint64_t a2)
{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK08CAFilterK033_4D88A434A6DD438C5BC29D8EBA7DC48BLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK08_OpacityK0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK014HiddenForReuseK033_EB2336F1CBB87914F55D10FF4F9B475ALLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK07OpacityjK0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK017ContentTransitionK0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK017GraphicsBlendModeK0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK25_AllowsHitTestingModifierVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK05_BlurK0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK6ShaderV08ResolvedR0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK17VariableBlurStyleVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK014_GeometryGroupK0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK04ViewI17ArchivedAnimation33_FF3C661D9D8317A1C8FE2B7FD4EDE12CLLV0K0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK33_ForegroundLayerLevelViewModifierVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK025_PremultipliedColorMatrixK0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK014_BackdropGroupK6_temp2VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK014_BackdropGroupK5_tempVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK018_ExtendedBlendModeK0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK017_LuminanceToAlphaK0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK016_ColorMonochromeK0V9_ResolvedVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK21_BackdropGroupEffect2VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK015_AlphaThresholdK0V9_ResolvedVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK014_ColorMultiplyK0V9_ResolvedVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK014_BackdropGroupK0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK014LuminanceCurveK0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK012_HueRotationK0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK012_ColorMatrixK0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK012_ColorInvertK0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK011_SaturationK0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK011_BrightnessK0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK17GraphicsBlendModeOGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK010_GrayscaleK0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK010_BlendModeK0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK09_ContrastK0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK14GraphicsFilterOGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK07_ShadowK0V9_ResolvedVGTt1g5;
}

uint64_t (*specialized closure #1 in closure #1 in Attribute.init<A>(_:)())(unint64_t *a1)
{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI9_ShapeSetV_AK011GlassEffecthI033_62A32D59B8A902A88963544196023CF7LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_SiSg_7SwiftUI19PreferenceTransform33_D3405DB583003A73D556A7797845B7F4LLVyAL19RequiredTapCountKeyVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_s6UInt32V_7SwiftUI15LayoutChildSeed33_05F3243F43C616B77CCF383885E80E96LLVyAM07DefaultI7GestureVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_SDy7SwiftUI7EventIDVAK0H4Type_pG_AK17LayoutChildEvents33_05F3243F43C616B77CCF383885E80E96LLVyAK07DefaultK7GestureVGTt1g5;
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_12CoreGraphics7CGFloatV_AA3MapVy7SwiftUI17EnvironmentValuesVAMGTt1g5(uint64_t a1)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);

  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  v7[0] = v4;
  v7[1] = v3;

  v1(&v6, v7);

  return AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI01_B6InputsV5PhaseV_AK18ResetDeltaModifier33_C38EF38637B6130AEFD462CBD5EAC727LLV05ChildI0VTt1g5()
{
  AGGraphGetValue();
  AGGraphGetValue();
  return AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15LayoutDirectionO_AA3MapVyAK17EnvironmentValuesVAMGTt1g5(uint64_t a1)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15LayoutDirectionO_AA3MapVyAK17EnvironmentValuesVAMGTt1g5Tm(a1);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI8ViewSizeV_AK07RoundedI0VTt1g5()
{
  type metadata accessor for CGPoint(0);
  Value = AGGraphGetValue();
  v1 = *Value;
  v2 = *(Value + 8);
  v3 = AGGraphGetValue();
  v4 = *v3;
  v5 = *(v3 + 8);
  AGGraphGetValue();
  v7.origin.x = v1;
  v7.origin.y = v2;
  v7.size.width = v4;
  v7.size.height = v5;
  CGRectStandardize(v7);
  return AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13ViewTransformV_AK013ResetPositionI0VTt1g5()
{
  AGGraphGetValue();
  type metadata accessor for CGPoint(0);

  AGGraphGetValue();
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Sb_AA3MapVy7SwiftUI17EnvironmentValuesVSbGTt1g5(uint64_t a1)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);

  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  v7[0] = v4;
  v7[1] = v3;

  v1(&v6, v7);

  LOBYTE(v7[0]) = v6;
  return AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI8ViewList_p_AK04BasehI033_E479C0E92CDD045BAF2EF653123E2E0BLLV4InitVTt1g5(uint64_t a1)
{
  v3[5] = *MEMORY[0x1E69E9840];
  outlined init with copy of BaseViewList.Init(a1, v2);
  BaseViewList.Init.value.getter(v3);
  outlined destroy of BaseViewList.Init(v2);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
  AGGraphSetOutputValue();
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI19ViewTraitCollectionV_AK05EmptyhI033_C1B8B6896BB94C69479F427820712D02LLVTt1g5(_DWORD *a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI19ViewTraitCollectionV_AK05EmptyhI033_C1B8B6896BB94C69479F427820712D02LLVTt1g5Tm(a1, a2, _s7SwiftUI19ViewTraitCollectionVy5ValueQzxmcAA01_cD3KeyRzluisAA07IsEmptycdG0V_Tt0g5);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI4AxisO3SetV_AA3MapVyAK17EnvironmentValuesVAOGTt1g5(uint64_t a1)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);

  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  v7[0] = v4;
  v7[1] = v3;

  v1(&v6, v7);

  return AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataVSg_AK10ToOptional33_372497ED4F569296C4450147CA418CD0LLVyAMGTt1g5()
{
  AGGraphGetValue();
  type metadata accessor for [_ViewList_ID](0, &lazy cache variable for type metadata for ContentShapePathData?, &type metadata for ContentShapePathData, MEMORY[0x1E69E6720]);

  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI10EdgeInsetsV_AA3MapVyAK17EnvironmentValuesVAMGTt1g5(uint64_t a1)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);

  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  v7[0] = v4;
  v7[1] = v3;

  v1(&v6, v7);

  return AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_So7CGPointV_7SwiftUI19LayoutPositionQueryVTt1g5()
{
  type metadata accessor for CGPoint(0);
  v1 = *AGGraphGetValue();
  vaddq_f64(v1, *AGGraphGetValue());
  return AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12ViewGeometryV_AK010UnaryChildI033_1C3B77B617AD058A6802F719E38F5D79LLVyAK29IgnoresAutomaticPaddingLayout33_47C1BD8C61550BB60F4F3D12F752D53DLLVGTt1g5Tm(void *a1, uint64_t a2, void (*a3)(_OWORD *__return_ptr, void, void))
{
  v6 = *MEMORY[0x1E69E9840];
  a3(v4, *a1, a1[1]);
  AGGraphSetOutputValue();
  v5[0] = v4[0];
  v5[1] = v4[1];
  v5[2] = v4[2];
  v5[3] = v4[3];
  return outlined destroy of ViewGeometry(v5);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12ViewGeometryV_AK023UnaryPositionAwareChildI033_1C3B77B617AD058A6802F719E38F5D79LLVyAK27ContainerCornerOffsetLayout33_1EB28CBBC8B70D90A6FD32242CBBC5E6LLVGTt1g5(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  specialized UnaryPositionAwareChildGeometry.value.getter(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), v2);
  AGGraphSetOutputValue();
  v3[0] = v2[0];
  v3[1] = v2[1];
  v3[2] = v2[2];
  v3[3] = v2[3];
  return outlined destroy of ViewGeometry(v3);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK04MaskhI033_54E6DAD00141A3A8A16D035537438F55LLVTt1g5()
{
  v1[2] = *MEMORY[0x1E69E9840];
  MaskDisplayList.value.getter(v1);
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK21MaskDefaultForegroundVTt1g5()
{
  v14 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = *Value;
  v1 = Value[1];
  v10 = *Value;
  v11 = v1;
  v3 = one-time initialization token for black;
  swift_retain_n();

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = static Color.black;
  v5 = one-time initialization token for foreground;
  swift_retain_n();
  if (v5 != -1)
  {
    swift_once();
  }

  if (v4 == static Color.foreground || (v6 = v4, ((*(*v4 + 88))() & 1) != 0))
  {

    v6 = 0;
  }

  swift_retain_n();

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA015ForegroundStyleF033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt2g5(&v10, v6);

  if (v1)
  {
    v7 = v10;
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA015ForegroundStyleK033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Ttg5(v2, v10);
  }

  else
  {

    v7 = v10;
  }

  swift_retain_n();
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA022DefaultForegroundStyleF033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt2g5(&v10, v4);

  if (v1)
  {
    v8 = v10;
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA022DefaultForegroundStyleK033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Ttg5(v7, v10);
  }

  else
  {

    v8 = v10;
  }

  v12 = v8;
  v13 = v11;
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12ViewGeometryV_AK014SecondaryLayerI5QueryVTt1g5(__int128 *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  *&v4 = *(a1 + 2);
  SecondaryLayerGeometryQuery.value.getter(v2);
  AGGraphSetOutputValue();
  v3 = v2[0];
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  return outlined destroy of ViewGeometry(&v3);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI12ViewGeometryVG_AK21LayoutChildGeometriesVTt1g5()
{
  LayoutChildGeometries.value.getter();
  type metadata accessor for [_ViewList_ID](0, &lazy cache variable for type metadata for [ViewGeometry], &type metadata for ViewGeometry, MEMORY[0x1E69E62F8]);
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI8ViewList_p_AK01_hI7OutputsVAKE14ApplyModifiers33_E479C0E92CDD045BAF2EF653123E2E0BLLVTt1g5(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);

  Value = AGGraphGetValue();
  outlined init with copy of AnyTrackedValue(Value, v4);
  (*(*v1 + 80))(v4);

  outlined init with take of AnyTrackedValue(v4, v5);
  AGGraphSetOutputValue();
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI18ScrollStateRequest_pG_AK19PreferenceTransform33_D3405DB583003A73D556A7797845B7F4LLVyAK06UpdatehiJ3KeyVGTt1g5(unsigned int *a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v1 = *a1;
  v2 = a1[1];
  if (v2 == *MEMORY[0x1E698D3F8])
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    type metadata accessor for Attribute<ViewList>(0, &lazy cache variable for type metadata for [ScrollStateRequest], &lazy cache variable for type metadata for ScrollStateRequest, &protocol descriptor for ScrollStateRequest, MEMORY[0x1E69E62F8]);
    AGGraphGetValue();
  }

  v5[0] = v3;
  specialized Attribute.syncMainIfReferences<A>(do:)(v1, v1 | (v2 << 32), v5);
  type metadata accessor for Attribute<ViewList>(0, &lazy cache variable for type metadata for [ScrollStateRequest], &lazy cache variable for type metadata for ScrollStateRequest, &protocol descriptor for ScrollStateRequest, MEMORY[0x1E69E62F8]);
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_SDy7SwiftUI16ScrollTargetRoleV0J0OSayAK20ScrollableCollection_pGG_AK19PreferenceTransform33_D3405DB583003A73D556A7797845B7F4LLVyAM10ContentKeyVGTt1g5(unsigned int *a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v1 = *a1;
  v2 = a1[1];
  if (v2 == *MEMORY[0x1E698D3F8])
  {
    v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI16ScrollTargetRoleV0G0O_SayAC20ScrollableCollection_pGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    type metadata accessor for [ScrollTargetRole.Role : [ScrollableCollection]]();
    AGGraphGetValue();
  }

  v5[0] = v3;
  specialized Attribute.syncMainIfReferences<A>(do:)(v1, v1 | (v2 << 32), v5);
  type metadata accessor for [ScrollTargetRole.Role : [ScrollableCollection]]();
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_ySDy7SwiftUI16ScrollTargetRoleV0J0OSayAK20ScrollableCollection_pGGzc_AM9SetLayoutVTt1g5(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = *a1;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ScrollTargetRole.SetLayout.value.getter;
  *(v3 + 24) = v2;
  type metadata accessor for (_:)();
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI4AxisOSg_AK19AnyLayoutPropertiesVTt1g5()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = *(**AGGraphGetValue() + 80);

  v0(v3, v1);

  v3[3] = v3[0];
  type metadata accessor for [_ViewList_ID](0, &lazy cache variable for type metadata for Axis?, &type metadata for Axis, MEMORY[0x1E69E6720]);
  return AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI25_LazyLayout_PlacedSubviewVG_AK0H26PreferencePrefetchSubviews33_EB2336F1CBB87914F55D10FF4F9B475ALLVTt1g5(unsigned int *a1)
{
  v1 = *a1;
  v2 = *(a1 + 1);

  LazyPreferencePrefetchSubviews.value.getter(v1, v2);

  type metadata accessor for [_ViewList_ID](0, &lazy cache variable for type metadata for [_LazyLayout_PlacedSubview], &type metadata for _LazyLayout_PlacedSubview, MEMORY[0x1E69E62F8]);
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI25_LazyLayout_PlacedSubviewVG_AK0H19CollectedPlacements33_EB2336F1CBB87914F55D10FF4F9B475ALLVTt1g5()
{
  type metadata accessor for LazyLayoutViewCache();
  v0 = *AGGraphGetValue();
  swift_beginAccess();

  v2 = specialized _NativeDictionary.filter(_:)(v1, v0, specialized closure #1 in _NativeDictionary.filter(_:), specialized closure #1 in _NativeDictionary.filter(_:));

  *(v0 + 176) = v2;

  swift_beginAccess();
  *(v0 + 216) = 0;

  type metadata accessor for [_ViewList_ID](0, &lazy cache variable for type metadata for [_LazyLayout_PlacedSubview], &type metadata for _LazyLayout_PlacedSubview, MEMORY[0x1E69E62F8]);
  AGGraphGetValue();

  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK12BackdropViewVGTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK12BackdropViewVGTt1g5Tm(a1, a2, &type metadata for BackdropView, specialized ContentResponderPathDataRule.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I3SetV7WrapperVGTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataV_AK0h9ResponderjkD0VyAK01_I4ViewVyAK9RectangleVAK12MeshGradientVGGTt1g5Tm(a1, a2, specialized ContentResponderPathDataRule.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI9_ShapeSetV7WrapperV_AO4InitVTt1g5()
{
  v7 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v1 = *(Value + 8);
  v3 = *Value;
  v4 = v1;

  specialized MutableCollection<>.sort(by:)(&v3);
  v5 = v3;
  v6 = v4;
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12ViewGeometryV_AK04RootI0VTt1g5(_OWORD *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = *a1;
  RootGeometry.value.getter(v2);
  AGGraphSetOutputValue();
  v3[0] = v2[0];
  v3[1] = v2[1];
  v3[2] = v2[2];
  v3[3] = v2[3];
  return outlined destroy of ViewGeometry(v3);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11TransactionV_AK05ChildH033_530459AF10BEFD7ED901D8CE93C1E289LLVTt1g5(void *a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11TransactionV_AK05ChildH033_530459AF10BEFD7ED901D8CE93C1E289LLVTt1g5Tm(a1, a2, ChildTransaction.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12PlatformItemV_AK12_ViewOutputsVAKE05FirstI033_391C8788DFD73AA8AB21B496A57C73FFLLVTt1g5()
{
  v58 = *MEMORY[0x1E69E9840];
  if (*(*(AGGraphGetValue() + 16) + 16))
  {
    v0 = *(AGGraphGetValue() + 16);
    if (!*(v0 + 16))
    {
      __break(1u);
    }

    outlined init with copy of PlatformItem(v0 + 32, v18);
  }

  else
  {
    _s7SwiftUI12PlatformItemV14PrimaryContentVSgWOi0_(&v2);
    v17[12] = v14;
    v17[13] = v15;
    v17[14] = v16;
    v17[8] = v10;
    v17[9] = v11;
    v17[10] = v12;
    v17[11] = v13;
    v17[4] = v6;
    v17[5] = v7;
    v17[6] = v8;
    v17[7] = v9;
    v17[0] = v2;
    v17[1] = v3;
    v17[2] = v4;
    v17[3] = v5;
    outlined destroy of [GlassContainer.Item](v17, &lazy cache variable for type metadata for PlatformItem.PrimaryContent?, &type metadata for PlatformItem.PrimaryContent, MEMORY[0x1E69E6720], type metadata accessor for [_ViewList_ID]);
    v18[0] = &_s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12PlatformItemV_AK12_ViewOutputsVAKE05FirstI033_391C8788DFD73AA8AB21B496A57C73FFLLVTt1g5Tv_r;
    v18[1] = MEMORY[0x1E69E7CC0];
    v18[2] = 0;
    v19 = 0;
    v20 = 0;
    v33 = v14;
    v34 = v15;
    v29 = v10;
    v30 = v11;
    v31 = v12;
    v32 = v13;
    v25 = v6;
    v26 = v7;
    v27 = v8;
    v28 = v9;
    v21 = v2;
    v22 = v3;
    v23 = v4;
    v24 = v5;
    v35 = v16;
    v36 = 0u;
    v37 = 0u;
    v38 = xmmword_18DD85500;
    v39 = 1;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    memset(v57, 0, sizeof(v57));
  }

  AGGraphSetOutputValue();
  return outlined destroy of PlatformItem(v18);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK20MountableViewOutputsV0hi5ProxyK0V04MakehI033_C0D10AA931311CA6CC13B4B7FD14DCB3LLVTt1g5()
{
  v11 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v5 = *Value;
  v6 = *(Value + 8);
  v7 = *(Value + 12);
  type metadata accessor for CGPoint(0);

  v1 = AGGraphGetValue();
  v2 = *v1;
  v3 = v1[1];
  v8 = ++static DisplayList.Version.lastValue;
  DisplayList.translate(by:version:)(__PAIR128__(v3, v2), &v8);
  v8 = v5;
  v9 = v6;
  v10 = v7;
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK22PrimitiveGlassItemView33_D12F2F25A0BD65FFBD3A7636B60067DFLLV0lhI0VTt1g5()
{
  v1[2] = *MEMORY[0x1E69E9840];
  PrimitiveGlassItemView.ItemLayoutComputer.value.getter(v1);
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK22PrimitiveGlassItemView33_D12F2F25A0BD65FFBD3A7636B60067DFLLV0lhI0VTt1g5()
{
  v1[2] = *MEMORY[0x1E69E9840];
  PrimitiveGlassItemView.ItemDisplayList.value.getter(v1);
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014GeometryEffecthI033_9ED0B9F1F6CE74691B78276C750FEDD3LLVyAK17_Rotation3DEffectVGTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014GeometryEffecthI033_9ED0B9F1F6CE74691B78276C750FEDD3LLVyAK17_Rotation3DEffectVGTt1g5Tm(a1, a2, specialized GeometryEffectDisplayList.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13ViewTransformV_AK014GeometryEffectI033_9ED0B9F1F6CE74691B78276C750FEDD3LLVyAK17_Rotation3DEffectVGTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13ViewTransformV_AK014GeometryEffectI033_9ED0B9F1F6CE74691B78276C750FEDD3LLVyAK17_Rotation3DEffectVGTt1g5Tm(a1, a2, specialized GeometryEffectTransform.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014GeometryEffecthI033_9ED0B9F1F6CE74691B78276C750FEDD3LLVyAK09_RotationK0VGTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014GeometryEffecthI033_9ED0B9F1F6CE74691B78276C750FEDD3LLVyAK17_Rotation3DEffectVGTt1g5Tm(a1, a2, specialized GeometryEffectDisplayList.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13ViewTransformV_AK014GeometryEffectI033_9ED0B9F1F6CE74691B78276C750FEDD3LLVyAK09_RotationK0VGTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13ViewTransformV_AK014GeometryEffectI033_9ED0B9F1F6CE74691B78276C750FEDD3LLVyAK17_Rotation3DEffectVGTt1g5Tm(a1, a2, specialized GeometryEffectTransform.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014GeometryEffecthI033_9ED0B9F1F6CE74691B78276C750FEDD3LLVyAK07DefaultjK8ProviderVyAK06_ScaleK0VGGTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014GeometryEffecthI033_9ED0B9F1F6CE74691B78276C750FEDD3LLVyAK17_Rotation3DEffectVGTt1g5Tm(a1, a2, specialized GeometryEffectDisplayList.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13ViewTransformV_AK014GeometryEffectI033_9ED0B9F1F6CE74691B78276C750FEDD3LLVyAK06_ScaleK0VGTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13ViewTransformV_AK014GeometryEffectI033_9ED0B9F1F6CE74691B78276C750FEDD3LLVyAK17_Rotation3DEffectVGTt1g5Tm(a1, a2, specialized GeometryEffectTransform.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_So7CGPointV_7SwiftUI14OffsetPosition33_72FB21917F353796516DFC9915156779LLVTt1g5()
{
  OffsetPosition.value.getter();
  type metadata accessor for CGPoint(0);
  return AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK08CAFilterK033_4D88A434A6DD438C5BC29D8EBA7DC48BLLVGTt1g5(__int128 *a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK08CAFilterK033_4D88A434A6DD438C5BC29D8EBA7DC48BLLVGTt1g5Tm(a1, a2, specialized RendererEffectDisplayList.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11TransactionV_AK014MaterialEffectH033_E3B0FF576136F59061E5D7766373CC25LLVTt1g5(uint64_t a1)
{
  v1 = 0x100000000;
  if (!*(a1 + 12))
  {
    v1 = 0;
  }

  MaterialEffectTransaction.value.getter(*a1, v1 | *(a1 + 8));
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK014MaterialEffectH033_E3B0FF576136F59061E5D7766373CC25LLVTt1g5(void *a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK014MaterialEffectH033_E3B0FF576136F59061E5D7766373CC25LLVTt1g5Tm(a1, a2, MaterialEffectEnvironment.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14MaterialEffectV4Fill33_E3B0FF576136F59061E5D7766373CC25LLV_AK0hi7UpdatedJ0AOLLVTt1g5()
{
  v3 = *MEMORY[0x1E69E9840];
  MaterialEffectUpdatedFill.value.getter(&v1);
  AGGraphSetOutputValue();
  return outlined consume of Material.ID(v1, v2);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK08_OpacityK0VGTt1g5(__int128 *a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK014_BackdropGroupK0VGTt1g5Tm(a1, a2, &type metadata for _OpacityEffect, specialized RendererEffectDisplayList.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK014_BackdropGroupK0VGTt1g5Tm(__int128 *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t))
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a1[1];
  v7 = *a1;
  v8 = v4;
  v9 = a1[2];
  a4(&v6, a3);
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014GeometryEffecthI033_9ED0B9F1F6CE74691B78276C750FEDD3LLVyAK07DefaultjK8ProviderVyAK010ScalePulseK033_5B41BB980C958F118A8AF82B3D90BAC0LLVGGTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014GeometryEffecthI033_9ED0B9F1F6CE74691B78276C750FEDD3LLVyAK17_Rotation3DEffectVGTt1g5Tm(a1, a2, specialized GeometryEffectDisplayList.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13ViewTransformV_AK014GeometryEffectI033_9ED0B9F1F6CE74691B78276C750FEDD3LLVyAK010ScalePulseK033_5B41BB980C958F118A8AF82B3D90BAC0LLVGTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13ViewTransformV_AK014GeometryEffectI033_9ED0B9F1F6CE74691B78276C750FEDD3LLVyAK17_Rotation3DEffectVGTt1g5Tm(a1, a2, specialized GeometryEffectTransform.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014GeometryEffecthI033_9ED0B9F1F6CE74691B78276C750FEDD3LLVyAK07DefaultjK8ProviderVyAK17FlexStateModifier33_404CBE866CEDD57705E9BEB28E77402CLLVGGTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014GeometryEffecthI033_9ED0B9F1F6CE74691B78276C750FEDD3LLVyAK17_Rotation3DEffectVGTt1g5Tm(a1, a2, specialized GeometryEffectDisplayList.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13ViewTransformV_AK014GeometryEffectI033_9ED0B9F1F6CE74691B78276C750FEDD3LLVyAK17FlexStateModifier33_404CBE866CEDD57705E9BEB28E77402CLLVGTt1g5(uint64_t a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13ViewTransformV_AK014GeometryEffectI033_9ED0B9F1F6CE74691B78276C750FEDD3LLVyAK17_Rotation3DEffectVGTt1g5Tm(a1, a2, specialized GeometryEffectTransform.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK06UpdateH033_E370275CDB55AC7AD9ACF0420859A9E8LLVyAK17LineLimitModifierVGTt1g5()
{
  v13 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = *Value;
  v1 = Value[1];
  v11 = v2;
  v12 = v1;

  v3 = AGGraphGetValue();
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV09LineLimitF033_32CC33FA2019BEDFCE31FB4066945274LLVG_Tt2g5(&v11, v4, v5);

  if (v12)
  {
    v6 = v11;
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesV09LineLimitK033_32CC33FA2019BEDFCE31FB4066945274LLVG_Ttg5(v2, v11);
  }

  else
  {

    v6 = v11;
  }

  v7 = AGGraphGetValue();
  v8 = *v7;
  v9 = *(v7 + 8);
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV014LowerLineLimitF033_32CC33FA2019BEDFCE31FB4066945274LLVG_Tt2g5(&v11, v8, v9);

  if (v12)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesV014LowerLineLimitK033_32CC33FA2019BEDFCE31FB4066945274LLVG_Ttg5(v6, v11);
  }

  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK18TextSuffixModifier33_3A0E49913D84545BECD562BC22E4DF1CLLV05ChildH0VTt1g5()
{
  v14 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v1 = *Value;
  v2 = Value[1];
  v10 = *Value;
  v11 = v2;

  swift_retain_n();
  v3 = AGGraphGetValue();
  v5 = *(v3 + 16);
  v4 = *(v3 + 32);
  v6 = *v3;
  v13 = *(v3 + 48);
  v12[1] = v5;
  v12[2] = v4;
  v12[0] = v6;
  outlined init with copy of ResolvedTextSuffix(v12, v9);

  outlined init with copy of ResolvedTextSuffix(v12, v9);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA010TextSuffixF033_3A0E49913D84545BECD562BC22E4DF1CLLVG_Tt2B5(&v10, v12);

  outlined destroy of ResolvedTextSuffix(v12);
  if (v2)
  {
    v7 = v10;
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA010TextSuffixK033_3A0E49913D84545BECD562BC22E4DF1CLLVG_Ttg5(v1, v10);
    outlined destroy of ResolvedTextSuffix(v12);
  }

  else
  {
    outlined destroy of ResolvedTextSuffix(v12);

    v7 = v10;
  }

  v9[0] = v7;
  v9[1] = v11;
  AGGraphSetOutputValue();
}

void *_s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI18ResolvedTextSuffixO_AK0iJ8Modifier33_3A0E49913D84545BECD562BC22E4DF1CLLV0hiJ6FilterVTt1g5()
{
  v7[7] = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v1 = *Value;
  v2 = Value[1];
  v3 = Value[2];
  v6 = *Value;
  _s2os6LoggerVSgMaTm_1(0, &lazy cache variable for type metadata for ResolvedStyledText?, type metadata accessor for ResolvedStyledText, MEMORY[0x1E69E6720]);
  outlined copy of Text.Suffix.Storage(v1, v2, v3);
  AGGraphGetValue();

  Text.Suffix.resolve(text:)(v4, v7);

  outlined consume of Text.Suffix.Storage(v6, v2, v3);
  AGGraphSetOutputValue();
  return outlined consume of ResolvedTextSuffix(v7[0], v7[1], v7[2], v7[3], v7[4], v7[5]);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI4TextVSg_AK0H14SuffixModifier33_3A0E49913D84545BECD562BC22E4DF1CLLV08OptionalH0VTt1g5()
{
  Value = AGGraphGetValue();
  v1 = Value[2];
  if (v1 < 0)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v2 = *Value;
    v3 = Value[1];
    v4 = v1 & 1;
    v5 = Value[3];
    outlined copy of Text.Suffix.Storage(*Value, v3, v1);
  }

  type metadata accessor for [_ViewList_ID](0, &lazy cache variable for type metadata for Text?, &type metadata for Text, MEMORY[0x1E69E6720]);
  AGGraphSetOutputValue();
  return outlined consume of Text?(v2, v3, v4, v5);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11TransactionV_AK05ChildH033_A1B10B5AB036C34AB7DD2EE8825FCA93LLVTt1g5(unsigned int *a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v1 = *a1;
  v2 = a1[1];
  v4[0] = *AGGraphGetValue();

  specialized Attribute.syncMainIfReferences<A>(do:)(v1, v1 | (v2 << 32), v4);
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11TransactionV_AK05ChildcH033_A1B10B5AB036C34AB7DD2EE8825FCA93LLVTt1g5(void *a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11TransactionV_AK05ChildH033_530459AF10BEFD7ED901D8CE93C1E289LLVTt1g5Tm(a1, a2, ChildValueTransaction.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11TransactionV_AK05ChildH033_530459AF10BEFD7ED901D8CE93C1E289LLVTt1g5Tm(void *a1, uint64_t a2, void (*a3)(void, void))
{
  a3(*a1, a1[1]);
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI9UnitPointVSg_AK29ScrollPositionBindingModifierV14AdjustedAnchorVTt1g5()
{
  if (one-time initialization token for v6 != -1)
  {
    swift_once();
  }

  v0 = static Semantics.v6;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if (dyld_program_sdk_at_least())
    {
      goto LABEL_10;
    }
  }

  else if (static Semantics.forced >= v0)
  {
LABEL_10:
    type metadata accessor for [_ViewList_ID](0, &lazy cache variable for type metadata for UnitPoint?, &type metadata for UnitPoint, MEMORY[0x1E69E6720]);
    AGGraphGetValue();
    goto LABEL_11;
  }

  type metadata accessor for [_ViewList_ID](0, &lazy cache variable for type metadata for UnitPoint?, &type metadata for UnitPoint, MEMORY[0x1E69E6720]);
  if (*(AGGraphGetValue() + 16) != 1)
  {
    goto LABEL_10;
  }

LABEL_11:
  type metadata accessor for [_ViewList_ID](0, &lazy cache variable for type metadata for UnitPoint?, &type metadata for UnitPoint, MEMORY[0x1E69E6720]);
  return AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI24GestureConstantsProvider_pXpSg_AA3MapVyAK17EnvironmentValuesVAMGTt1g5(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);

  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  v6[0] = v4;
  v6[1] = v3;

  v1(&v7, v6);

  type metadata accessor for GestureConstantsProvider.Type?(0, &lazy cache variable for type metadata for GestureConstantsProvider.Type?, &lazy cache variable for type metadata for GestureConstantsProvider.Type, &lazy cache variable for type metadata for GestureConstantsProvider);
  return AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11TransactionV_AK018GlassEffectContextH033_62A32D59B8A902A88963544196023CF7LLVTt1g5(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *AGGraphGetValue();

  AGGraphGetValue();
  Value = AGGraphGetValue();
  v4 = *(Value + 8);
  v5 = *(Value + 16);
  v6 = *(Value + 24);

  if (*AGGraphGetValue() == v6)
  {
    if (v1)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    if (v2)
    {
      if (v7)
      {
        if (v2[3])
        {
          type metadata accessor for UnaryElements<BodyUnaryViewGenerator>(0, &lazy cache variable for type metadata for TypedElement<EmptyKey>, &type metadata for EmptyKey, &protocol witness table for EmptyKey, type metadata accessor for TypedElement);
          swift_allocObject();
          swift_retain_n();

          PropertyList.Element.init(keyType:before:after:)(&type metadata for EmptyKey, v7, v2);
        }

        else
        {
          v8 = v2[4];
          v9 = *(*v2 + 216);

          v9(v10, v8);
        }
      }
    }

    else
    {
    }
  }

  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI8MaterialVSg_AK025GlassEffectContextUpdatedH033_62A32D59B8A902A88963544196023CF7LLVTt1g5()
{
  v14 = *MEMORY[0x1E69E9840];
  type metadata accessor for [_ViewList_ID](0, &lazy cache variable for type metadata for Material?, &type metadata for Material, MEMORY[0x1E69E6720]);
  Value = AGGraphGetValue();
  v1 = Value[1];
  if (*(Value + 8) == 0xFF)
  {
    v2 = AGGraphGetValue();
    v3 = v2[1];
    v12 = *v2;
    v13 = v3;
    outlined copy of Material?(v12, v3);
  }

  else
  {
    v4 = *Value;
    v5 = Value[1];
    v6 = HIDWORD(v1);
    outlined copy of Material.ID(*Value, v1);
    AGGraphGetValue();
    v7 = AGGraphGetValue();
    if (v5 == 1)
    {
      v8 = *v7;
      if ((*(*v4 + 120))())
      {
        v11 = v8;
        v9 = *(*v4 + 136);

        swift_retain_n();

        v9(&v12, &v11);
        outlined consume of Material?(v4, v1);

        v4 = v12;
        LOBYTE(v1) = v13;
        v6 = HIDWORD(v13);
      }

      else
      {
        LOBYTE(v1) = 1;
      }
    }

    v12 = v4;
    v13 = v1 | (v6 << 32);
  }

  AGGraphSetOutputValue();
  return outlined consume of Material?(v12, v13);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI19GlassContainerCacheC17UnwrappedMaterialV_AK0h13EffectContextkL033_62A32D59B8A902A88963544196023CF7LLVTt1g5()
{
  type metadata accessor for [_ViewList_ID](0, &lazy cache variable for type metadata for Material?, &type metadata for Material, MEMORY[0x1E69E6720]);
  Value = AGGraphGetValue();
  v2 = *Value;
  v3 = Value[1];
  outlined copy of Material?(*Value, v3);
  AGGraphSetOutputValue();
  return outlined consume of Material?(v2, v3);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI9_ShapeSetV_AK011GlassEffecthI033_62A32D59B8A902A88963544196023CF7LLVTt1g5(unint64_t *a1)
{
  v4[2] = *MEMORY[0x1E69E9840];
  v1 = *a1;
  v2 = a1[1];

  GlassEffectShapeSet.value.getter(v1, v2, v4);

  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI5ImageV12DynamicRangeVSg_AK012DrawingGroupiJ033_13DB74067CC303A724F4EF8CA51D6069LLVTt1g5()
{
  v8 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = *Value;
  v1 = Value[1];
  v6 = v2;
  v7 = v1;

  v4 = *(AGGraphGetValue() + 5);
  EnvironmentValues.effectiveAllowedDynamicRange(explicitRange:)(&v4, &v5);

  type metadata accessor for [_ViewList_ID](0, &lazy cache variable for type metadata for Image.DynamicRange?, &type metadata for Image.DynamicRange, MEMORY[0x1E69E6720]);
  return AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK19_DrawingGroupEffectV05ChildH033_13DB74067CC303A724F4EF8CA51D6069LLVTt1g5()
{
  v9 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v1 = *Value;
  v2 = Value[1];
  v5 = *Value;
  v6 = v2;

  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018BackgroundMaterialF033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt2B5(&v5, 0, 255);

  if (v2)
  {
    v3 = v5;
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA018BackgroundMaterialK033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Ttg5(v1, v5);
  }

  else
  {

    v3 = v5;
  }

  v7 = v3;
  v8 = v6;
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK014HiddenForReuseK033_EB2336F1CBB87914F55D10FF4F9B475ALLVGTt1g5(__int128 *a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK08CAFilterK033_4D88A434A6DD438C5BC29D8EBA7DC48BLLVGTt1g5Tm(a1, a2, specialized RendererEffectDisplayList.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK08CAFilterK033_4D88A434A6DD438C5BC29D8EBA7DC48BLLVGTt1g5Tm(__int128 *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr))
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a1[1];
  v6 = *a1;
  v7 = v3;
  v8 = a1[2];
  a3(&v5);
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI14GlassContainerO4ItemVG_AK19PreferenceTransform33_D3405DB583003A73D556A7797845B7F4LLVyAO3KeyVGTt1g5(unsigned int *a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v1 = *a1;
  v2 = a1[1];
  if (v2 == *MEMORY[0x1E698D3F8])
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    type metadata accessor for [_ViewList_ID](0, &lazy cache variable for type metadata for [GlassContainer.Item], &type metadata for GlassContainer.Item, MEMORY[0x1E69E62F8]);
    AGGraphGetValue();
  }

  v5[0] = v3;
  specialized Attribute.syncMainIfReferences<A>(do:)(v1, v1 | (v2 << 32), v5);
  type metadata accessor for [_ViewList_ID](0, &lazy cache variable for type metadata for [GlassContainer.Item], &type metadata for GlassContainer.Item, MEMORY[0x1E69E62F8]);
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK24_ForegroundColorModifierV05ChildH033_C468F93725C18A8D97E53626AB610118LLVTt1g5()
{
  v12 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v1 = *Value;
  v2 = Value[1];
  v8 = *Value;
  v9 = v2;

  swift_retain_n();
  v3 = *AGGraphGetValue();
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = one-time initialization token for foreground;
  swift_retain_n();
  if (v4 != -1)
  {
    swift_once();
  }

  if (static Color.foreground == v3 || (v5 = v3, ((*(*v3 + 88))() & 1) != 0))
  {

LABEL_7:
    v5 = 0;
  }

  swift_retain_n();

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA015ForegroundStyleF033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt2g5(&v8, v5);

  if (v2)
  {
    v6 = v8;
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA015ForegroundStyleK033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Ttg5(v1, v8);
  }

  else
  {

    v6 = v8;
  }

  v10 = v6;
  v11 = v9;
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK07OpacityjK0VGTt1g5(__int128 *a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK014_BackdropGroupK0VGTt1g5Tm(a1, a2, &type metadata for OpacityRendererEffect, specialized RendererEffectDisplayList.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataVSg_AK19PreferenceTransform33_D3405DB583003A73D556A7797845B7F4LLVyAMGTt1g5(unsigned int *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  v2 = a1[1];
  if (v2 == *MEMORY[0x1E698D3F8])
  {
    v3 = 0;
    v4 = 0uLL;
  }

  else
  {
    type metadata accessor for [_ViewList_ID](0, &lazy cache variable for type metadata for ContentShapePathData?, &type metadata for ContentShapePathData, MEMORY[0x1E69E6720]);
    v6 = *AGGraphGetValue();

    v4 = v6;
  }

  v7 = v4;
  v8 = v3;
  specialized Attribute.syncMainIfReferences<A>(do:)(v1, v1 | (v2 << 32), &v7);
  v9 = v7;
  v10 = v8;
  type metadata accessor for [_ViewList_ID](0, &lazy cache variable for type metadata for ContentShapePathData?, &type metadata for ContentShapePathData, MEMORY[0x1E69E6720]);
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI9ViewFrameV_AK07MatchedI033_F035CBEF00D3D777B3359545F684D774LLVTt1g5(void *a1)
{
  v3 = *MEMORY[0x1E69E9840];
  MatchedFrame.value.getter(*a1, a1[2], v2);
  return AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK017ContentTransitionK0VGTt1g5(__int128 *a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK08CAFilterK033_4D88A434A6DD438C5BC29D8EBA7DC48BLLVGTt1g5Tm(a1, a2, specialized RendererEffectDisplayList.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK017GraphicsBlendModeK0VGTt1g5(__int128 *a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014RendererEffecthI033_49800242E3DD04CB91F7CE115272DDC3LLVyAK08CAFilterK033_4D88A434A6DD438C5BC29D8EBA7DC48BLLVGTt1g5Tm(a1, a2, specialized RendererEffectDisplayList.value.getter);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14PreferenceKeysV_AK14makeHiddenView07allowedI06inputs4bodyAK01_L7OutputsVAK07Allowedhi5WhileK0V_AK01_L6InputsVAsK01_B0V_AWtctF04HostI0L_VTt1g5(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *AGGraphGetValue();
  if ((v1 & 0x10) != 0)
  {

    if ((v1 & 4) != 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v3 = PreferenceKeys._index(of:)(&type metadata for DisplayList.Key);
    swift_bridgeObjectRetain_n();

    v4 = *(v2 + 16);
    if (v3 != v4)
    {
      if (v3 >= v4)
      {
        __break(1u);
        goto LABEL_20;
      }

      if (*(v2 + 16 * v3 + 32) == &type metadata for DisplayList.Key)
      {
        specialized Array.remove(at:)(v3);
      }
    }

    if ((v1 & 4) != 0)
    {
      goto LABEL_12;
    }
  }

  v5 = PreferenceKeys._index(of:)(&type metadata for ViewRespondersKey);

  v6 = *(v2 + 16);
  if (v5 == v6)
  {
    goto LABEL_12;
  }

  if (v5 >= v6)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (*(v2 + 16 * v5 + 32) == &type metadata for ViewRespondersKey)
  {
    specialized Array.remove(at:)(v5);
    if ((v1 & 8) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_13;
  }

LABEL_12:
  if ((v1 & 8) != 0)
  {
    goto LABEL_18;
  }

LABEL_13:
  v7 = PreferenceKeys._index(of:)(&type metadata for HostPreferencesKey);

  v8 = *(v2 + 16);
  if (v7 == v8)
  {
    goto LABEL_18;
  }

  if (v7 >= v8)
  {
LABEL_21:
    __break(1u);
  }

  if (*(v2 + 16 * v7 + 32) == &type metadata for HostPreferencesKey)
  {
    specialized Array.remove(at:)(v7);
  }

LABEL_18:
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK014ContainerShapeH033_E7F652304F78E63E0DE3A54ABB60E18ALLVTt1g5(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 24);
  v7[0] = *(a1 + 8);
  v7[1] = v1;
  v8[0] = *(a1 + 40);
  *(v8 + 9) = *(a1 + 49);
  Value = AGGraphGetValue();
  v3 = *Value;
  v4 = Value[1];
  v9 = *Value;
  v10 = v4;

  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA014ContainerShapeF033_E7F652304F78E63E0DE3A54ABB60E18ALLVG_Tt2B5(&v9, v7);

  if (v4)
  {
    v5 = v9;
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA014ContainerShapeK033_E7F652304F78E63E0DE3A54ABB60E18ALLVG_Ttg5(v3, v9);
  }

  else
  {

    v5 = v9;
  }

  v11 = v5;
  v12 = v10;
  AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13ViewTransformV_AK014ContainerShapeI0VTt1g5(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 16);
  Value = AGGraphGetValue();
  v3 = *Value;
  v4 = *(Value + 8);
  v5 = *(Value + 16);
  v6 = *(Value + 24);
  v7 = *(Value + 32);
  v8 = *(Value + 40);
  type metadata accessor for CGPoint(0);

  v9 = AGGraphGetValue();
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = v7 - (*v9 - v5);
  v13 = v8 - (v11 - v6);
  type metadata accessor for CGSize(0);
  v14 = AGGraphGetValue();
  v15 = *v14;
  v16 = v14[1];
  v31[0] = v1;
  v32 = 1;
  *&v33 = v3;
  *(&v33 + 1) = v4;
  *v34 = v10;
  *&v34[8] = v11;
  *&v34[16] = v12;
  *&v34[24] = v13;
  swift_retain_n();

  ViewTransform.coordinateSpaceTag(_:)(v31, &v29);

  if ((v30 & 1) == 0)
  {
    goto LABEL_6;
  }

  outlined init with copy of CoordinateSpace(v31, &v33);
  type metadata accessor for CoordinateSpaceNode();
  v17 = swift_allocObject();
  v18 = v17;
  v19 = *v34;
  *(v17 + 24) = v33;
  *(v17 + 40) = v19;
  *(v17 + 49) = *&v34[9];
  *(v17 + 16) = v4;
  if (v4)
  {
    v20 = *(v4 + 72);
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (!v21)
    {
      goto LABEL_8;
    }

    __break(1u);
LABEL_6:
    v23 = v29;
    outlined destroy of CoordinateSpace(v31);
    goto LABEL_9;
  }

  v22 = 1;
LABEL_8:
  *(v17 + 72) = v22;
  outlined destroy of CoordinateSpace(v31);
  v23 = *(v18 + 72);
  v4 = v18;
LABEL_9:
  type metadata accessor for Slice<_ViewList_ID.ElementCollection>(0, &lazy cache variable for type metadata for Element<SizedSpaceElement>, lazy protocol witness table accessor for type SizedSpaceElement and conformance SizedSpaceElement, &type metadata for SizedSpaceElement, type metadata accessor for Element);
  v24 = swift_allocObject();
  v25 = v24;
  *(v24 + 32) = v12;
  *(v24 + 40) = v13;
  *(v24 + 48) = v23;
  *(v24 + 56) = v15;
  *(v24 + 64) = v16;
  *(v24 + 16) = v3;
  if (v3)
  {
    v26 = *(v3 + 24);
    v21 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v21)
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  v27 = 1;
LABEL_14:
  *(v24 + 24) = v27;

  *&v33 = v25;
  *(&v33 + 1) = v4;
  *v34 = v10;
  *&v34[8] = v11;
  *&v34[16] = 0;
  *&v34[24] = 0;
  AGGraphSetOutputValue();
}
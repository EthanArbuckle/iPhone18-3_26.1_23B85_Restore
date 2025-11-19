Swift::Void __swiftcall GraphHost.startTransactionUpdate(id:)(Swift::UInt32_optional id)
{
  *(v1 + 152) = 1;
  if ((*&id.value & 0x100000000) == 0)
  {
    if (one-time initialization token for enabledCategories != -1)
    {
      swift_once();
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x55uLL)
    {
      __break(1u);
    }

    if (*(static CustomEventTrace.enabledCategories + 116) == 1 && static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 16980;
      AGGraphAddTraceEvent();
    }
  }

  swift_beginAccess();
  AGGraphGetValue();
  AGGraphSetValue();
}

Swift::Bool __swiftcall Edge.Set.contains(_:)(SwiftUI::Edge a1)
{
  if (a1 >= 8u)
  {
    LOBYTE(v2) = 0;
  }

  else
  {
    v2 = 1 << a1;
  }

  if (a1 > 8u)
  {
    LOBYTE(v2) = 0;
  }

  return (v2 & ~v1) == 0;
}

void type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t one-time initialization function for v3()
{
  result = swiftUI_v3_0_os_versions();
  static Semantics.v3 = HIDWORD(result);
  return result;
}

uint64_t ConditionalTypeDescriptor.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v8 = MEMORY[0x193AC2090]();
  if (one-time initialization token for conditionalTypeDescriptor == -1)
  {
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v22 = v8;
    swift_once();
    v8 = v22;
    if (!v22)
    {
      goto LABEL_8;
    }
  }

  if (v8 == conditionalTypeDescriptor)
  {
    v10 = *(a1 + 16);
    v9 = *(a1 + 24);
    v32 = a2;
    v33 = a3;
    v34 = v9;
    static ConditionalTypeDescriptor.descriptor(type:constructor:)(v9, partial apply for closure #1 in static ConditionalTypeDescriptor.descriptor(type:), a2, a3, &v28);
    v11 = v28;
    v12 = v29;
    v13 = v30;
    v32 = a2;
    v33 = a3;
    v34 = v10;
    static ConditionalTypeDescriptor.descriptor(type:constructor:)(v10, partial apply for closure #1 in static ConditionalTypeDescriptor.descriptor(type:), a2, a3, &v28);
    v14 = v28;
    v15 = v29;
    v16 = v30;
    v17 = type metadata accessor for _ConditionalContent.Storage();
    swift_beginAccess();
    result = swift_beginAccess();
    if (!v17)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    result = swift_allocObject();
    *(result + 16) = v17;
    *(result + 24) = v11;
    *(result + 32) = v12;
    *(result + 40) = v13;
    *(result + 48) = v14;
    *(result + 56) = v15;
    *(result + 64) = v16;
    v19 = v13 + v16;
    if (!__OFADD__(v13, v16))
    {
      v20 = 0;
      v21 = result | 0x8000000000000000;
LABEL_16:
      *a4 = v21;
      a4[1] = v20;
      a4[2] = v19;
      return result;
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_8:
  if (one-time initialization token for optionalTypeDescriptor == -1)
  {
    if (!v8)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v27 = v8;
    swift_once();
    v8 = v27;
    if (!v27)
    {
      goto LABEL_14;
    }
  }

  if (v8 == optionalTypeDescriptor)
  {
    v23 = *(a1 + 16);
    v32 = a2;
    v33 = a3;
    v34 = v23;
    static ConditionalTypeDescriptor.descriptor(type:constructor:)(v23, partial apply for closure #1 in static ConditionalTypeDescriptor.descriptor(type:), a2, a3, &v28);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    result = swift_allocObject();
    *(result + 16) = a1;
    *(result + 24) = v24;
    *(result + 32) = v25;
    *(result + 40) = v26;
    v19 = v26 + 1;
    if (!__OFADD__(v26, 1))
    {
      v20 = 0;
      v21 = result | 0x4000000000000000;
      goto LABEL_16;
    }

    goto LABEL_18;
  }

LABEL_14:
  result = static ProtocolDescriptor.conformance(of:)(a1, a2, *(a3 + 8), v31);
  v21 = v31[0];
  if (v31[0])
  {
    v20 = v31[1];
    v19 = 1;
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *static ConditionalTypeDescriptor.descriptor(type:constructor:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr, void *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  result = (*(a4 + 16))(&v14, a1, a3, a4);
  v11 = v14;
  if ((~v14 & 0xF000000000000007) != 0)
  {
    v12 = v15;
    v13 = v16;
  }

  else
  {
    a2(&v14, result);
    v11 = v14;
    v12 = v15;
    v13 = v16;
    result = (*(a4 + 24))(a1, &v14, a3, a4);
  }

  *a5 = v11;
  a5[1] = v12;
  a5[2] = v13;
  return result;
}

void type metadata accessor for HitTestableEvent?(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void type metadata accessor for _ShapeStyle_Pack.Style?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[24 * v10])
    {
      memmove(v14, v15, 24 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 48);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  v16 = 48 * v10;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v16])
    {
      memmove(v14, v15, v16);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v16);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 80);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[80 * v10])
    {
      memmove(v14, v15, 80 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 + 95;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 7);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[128 * v10])
    {
      memmove(v15, v16, v10 << 7);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 48);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[48 * v10])
    {
      memmove(v14, v15, 48 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 + 31;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 6);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[64 * v10])
    {
      memmove(v15, v16, v10 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 120);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[120 * v10])
    {
      memmove(v14, v15, 120 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 1;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 5);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[32 * v10])
    {
      memmove(v15, v16, 32 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 29;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 2);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[4 * v10])
    {
      memmove(v15, v16, 4 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 4 * v10);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 112);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  v16 = 112 * v10;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v16])
    {
      memmove(v14, v15, v16);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v16);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 56);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[56 * v10])
    {
      memmove(v14, v15, 56 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 40);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[40 * v10])
    {
      memmove(v14, v15, 40 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

uint64_t protocol witness for static ConditionalProtocolDescriptor.insertConditionalType(key:value:) in conformance ViewDescriptor(uint64_t a1, unint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  if (one-time initialization token for conditionalCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = static ViewDescriptor.conditionalCache;
  static ViewDescriptor.conditionalCache = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v3, v4, v5, a1, isUniquelyReferenced_nonNull_native);
  static ViewDescriptor.conditionalCache = v8;
  return swift_endAccess();
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 24 * v13);
    v25 = *v24;
    *v24 = a1;
    v24[1] = a2;
    v24[2] = a3;

    return outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v25);
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v13, a4, a1, a2, a3, v23);
  }
}

uint64_t one-time initialization function for center()
{
  if (one-time initialization token for center != -1)
  {
    result = swift_once();
  }

  v0 = static HorizontalAlignment.center;
  if (one-time initialization token for center != -1)
  {
    result = swift_once();
  }

  *&static Alignment.center = v0;
  *(&static Alignment.center + 1) = static VerticalAlignment.center;
  return result;
}

void one-time initialization function for center(uint64_t a1)
{
  one-time initialization function for top(a1, &unk_1F008FB70, &protocol witness table for VerticalAlignment.Center, &static VerticalAlignment.center);
}

{
  one-time initialization function for leading(a1, &unk_1F008FB50, &protocol witness table for HorizontalAlignment.Center, &static HorizontalAlignment.center);
}

void one-time initialization function for top(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&static AlignmentKey.typeCache);
  v7 = _s7SwiftUI12AlignmentKeyV2id4axisAcA0C2ID_pXp_AA4AxisOtcfcSuAC9TypeCache33_1135C055CD2C2B1265C25B13E3E74C01LLVzYTXEfU_(&qword_1ED537F50, a2, a3);
  os_unfair_lock_unlock(&static AlignmentKey.typeCache);
  *a4 = 2 * v7 + 3;
}

void one-time initialization function for typeCache()
{
  static AlignmentKey.typeCache = 0;
  qword_1ED537F50 = MEMORY[0x1E69E7CC8];
  off_1ED537F58 = MEMORY[0x1E69E7CC0];
}

{
  static ViewDescriptor.typeCache = MEMORY[0x1E69E7CC8];
}

{
  static StyleContextDescriptor.typeCache = MEMORY[0x1E69E7CC8];
}

{
  static GestureDescriptor.typeCache = MEMORY[0x1E69E7CC8];
}

{
  static GestureModifierDescriptor.typeCache = MEMORY[0x1E69E7CC8];
}

void one-time initialization function for leading(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&static AlignmentKey.typeCache);
  v7 = _s7SwiftUI12AlignmentKeyV2id4axisAcA0C2ID_pXp_AA4AxisOtcfcSuAC9TypeCache33_1135C055CD2C2B1265C25B13E3E74C01LLVzYTXEfU_(&qword_1ED537F50, a2, a3);
  os_unfair_lock_unlock(&static AlignmentKey.typeCache);
  *a4 = 2 * v7 + 2;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      specialized _NativeDictionary.copy()();
      result = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * result) = a1;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(result, a2, a1, v19);
  }

  return result;
}

{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v19);
  }
}

{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      specialized _NativeDictionary.copy()();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    *(v19 + 8 * (result >> 6) + 64) |= 1 << result;
    *(*(v19 + 56) + 8 * result) = a1;
    v20 = *(v19 + 16);
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      *(v19 + 16) = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(*(v19 + 56) + 8 * result) = a1;
}

uint64_t type metadata completion function for DynamicContainerInfo()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance DynamicContainerInfo<A>()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t instantiation function for generic protocol witness table for DynamicContainerInfo<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance DynamicLayoutComputer<A>()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t instantiation function for generic protocol witness table for DynamicLayoutComputer<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance DynamicPreferenceCombiner<A>()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t instantiation function for generic protocol witness table for DynamicPreferenceCombiner<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t closure #1 in project #1 <A><A1>(key:) in closure #1 in static DynamicContainer.makeContainer<A>(adaptor:inputs:)(_DWORD *a1, int a2)
{
  result = type metadata accessor for DynamicPreferenceCombiner();
  *a1 = a2;
  return result;
}

uint64_t initializeWithCopy for DynamicContainerInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  *(v7 + 8) = *(v8 + 8);
  *(v7 + 16) = *(v8 + 16);
  *(v7 + 24) = *(v8 + 24);
  *(v7 + 28) = *(v8 + 28);
  *(v7 + 32) = *(v8 + 32);
  *(v7 + 36) = *(v8 + 36);
  *(v7 + 40) = *(v8 + 40);
  *(v7 + 48) = *(v8 + 48);
  *(v7 + 56) = *(v8 + 56);
  *(v7 + 60) = *(v8 + 60);
  *(v7 + 64) = *(v8 + 64);
  *(v7 + 68) = *(v8 + 68);
  *(v7 + 72) = *(v8 + 72);
  *(v7 + 76) = *(v8 + 76);
  *(v7 + 80) = *(v8 + 80);
  v9 = (v7 + 91) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 91) & 0xFFFFFFFFFFFFFFF8;
  *v9 = *v10;
  *(v9 + 8) = *(v10 + 8);
  *(v9 + 12) = *(v10 + 12);
  v11 = ((v9 + 23) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + 23) & 0xFFFFFFFFFFFFFFF8);
  v13 = *v12;
  *v11 = *v12;
  v14 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v14 = *v15;
  *(v14 + 8) = *(v15 + 8);
  *(v14 + 16) = *(v15 + 16);
  *(v14 + 24) = *(v15 + 24);
  *(v14 + 32) = *(v15 + 32);
  *(v14 + 40) = *(v15 + 40);
  *(v14 + 44) = *(v15 + 44);
  v16 = ((v15 + 51) & 0xFFFFFFFFFFFFFFF8);
  v17 = v16 + 11;
  v18 = ((v14 + 51) & 0xFFFFFFFFFFFFFFF8);
  *v18 = *v16;
  v18[1] = v16[1];
  v19 = (v18 + 11) & 0xFFFFFFFFFFFFFFF8;
  *v19 = *(v17 & 0xFFFFFFFFFFFFFFF8);
  *(v19 + 4) = *((v17 & 0xFFFFFFFFFFFFFFF8) + 4);

  v20 = v13;

  return a1;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE21RemovePreferenceInput33_D49197C3D3C61F0DA0F0CF1D72D0077ALLV_Tt0B5(uint64_t result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE21RemovePreferenceInput33_D49197C3D3C61F0DA0F0CF1D72D0077ALLV_Tt0B5(*(result + 24));
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for _GraphInputs.RemovePreferenceInput)
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

void *initializeBufferWithCopyOfBuffer for SizeFittingTextLayoutComputer(void *a1, void *a2)
{
  *a1 = *a2;
  v3 = a2[2];
  a1[1] = a2[1];
  a1[2] = v3;

  return a1;
}

uint64_t initializeWithCopy for DynamicLayoutComputer(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE016ScrollTargetRoleV033_D49197C3D3C61F0DA0F0CF1D72D0077ALLV_Tt0B5(uint64_t result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE016ScrollTargetRoleV033_D49197C3D3C61F0DA0F0CF1D72D0077ALLV_Tt0B5(*(result + 24));
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for _GraphInputs.ScrollTargetRoleKey)
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

uint64_t partial apply for closure #1 in project #1 <A><A1>(key:) in closure #1 in static DynamicContainer.makeContainer<A>(adaptor:inputs:)(_DWORD *a1)
{
  v3 = *(v1 + 48);
  result = type metadata accessor for DynamicPreferenceCombiner();
  *a1 = v3;
  return result;
}

unint64_t _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA010ScrollablehI0V_TtB5Tf4dn_n(uint64_t a1)
{
  result = PreferenceKeys._index(of:)(&type metadata for ScrollablePreferenceKey);
  v3 = *(a1 + 16);
  if (result == v3)
  {
    return 0;
  }

  if (result < v3)
  {
    return *(a1 + 16 * result + 32) == &type metadata for ScrollablePreferenceKey;
  }

  __break(1u);
  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE016ScrollTargetRoleF0019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(uint64_t a1)
{
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.ScrollTargetRoleKey);
  v2 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE016ScrollTargetRoleV033_D49197C3D3C61F0DA0F0CF1D72D0077ALLV_Tt0B5(a1, v5);
  if (v2)
  {
    v3 = (v2 + 72);
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v3 = &static _GraphInputs.ScrollTargetRoleKey.defaultValue;
  }

  return *v3;
}

unint64_t _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA16ScrollTargetRoleV07ContentI0V_TtB5Tf4dn_n(uint64_t a1)
{
  result = PreferenceKeys._index(of:)(&type metadata for ScrollTargetRole.ContentKey);
  v3 = *(a1 + 16);
  if (result == v3)
  {
    return 0;
  }

  if (result < v3)
  {
    return *(a1 + 16 * result + 32) == &type metadata for ScrollTargetRole.ContentKey;
  }

  __break(1u);
  return result;
}

uint64_t destroy for DynamicContainerInfo(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = (a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA21UsingGraphicsRendererV_Tt2g5Tm(uint64_t a1, Swift::Int hashValue, uint64_t (*a3)(uint64_t))
{
  BloomFilter.init(hashValue:)(hashValue);
  result = a3(a1);
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

uint64_t outlined destroy of DynamicContainerInfo<DynamicLayoutViewAdaptor>(uint64_t a1)
{
  _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for DynamicContainerInfo<DynamicLayoutViewAdaptor>, &type metadata for DynamicLayoutViewAdaptor, &protocol witness table for DynamicLayoutViewAdaptor, type metadata accessor for DynamicContainerInfo);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s7SwiftUI16DynamicContainerV04makeD07adaptor6inputs14AttributeGraph0H0VyAC4InfoVG_AA12_ViewOutputsVtx_AA01_K6InputsVtAA0cD7AdaptorRzlFZAA0c6LayoutkN0V_Tt2B5(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = a3;
  v42 = a4;
  v40 = a2;
  v43 = a1;
  v82 = *MEMORY[0x1E69E9840];
  v47 = MEMORY[0x1E69E7CC0];
  v5 = *MEMORY[0x1E698D3F8];
  LODWORD(v48) = 0;
  HIDWORD(v48) = v5;
  v6 = *(a5 + 48);
  v49 = v6;
  v44 = v6;
  v45 = a5;
  v50 = *(a5 + 56);
  v7 = *(v6 + 16);
  if (v7)
  {
    outlined init with copy of PreferencesInputs(&v49, &v53);
    v8 = (v6 + 40);
    do
    {
      v10 = *(v8 - 1);
      v9 = *v8;
      v11 = DynamicPreferenceCombiner.init()();
      *&v46 = v38;
      LODWORD(v53) = v11;
      MEMORY[0x1EEE9AC00](v11);
      *&v38[-32] = swift_getAssociatedTypeWitness();
      v12 = type metadata accessor for DynamicPreferenceCombiner();
      *&v38[-24] = v12;
      *&v38[-16] = swift_getWitnessTable();
      v13 = type metadata accessor for Attribute();
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v53, partial apply for closure #1 in Attribute.init<A>(_:), &v38[-48], v12, MEMORY[0x1E69E73E0], v13, MEMORY[0x1E69E7410], v14);
      v15 = v76;
      swift_beginAccess();
      LOBYTE(v76) = 0;
      _ViewOutputs.subscript.setter(v15, v10, v10, v9);
      swift_endAccess();
      v8 += 2;
      --v7;
    }

    while (v7);
  }

  else
  {
    outlined init with copy of PreferencesInputs(&v49, &v53);
  }

  swift_beginAccess();
  v16 = v47;
  v18 = v48;
  v17 = HIDWORD(v48);
  v19 = v45;
  v20 = *(v45 + 48);
  v78 = *(v45 + 32);
  v79 = v20;
  v80 = *(v45 + 64);
  v81 = *(v45 + 80);
  v21 = *(v45 + 16);
  v76 = *v45;
  v77 = v21;
  v22 = AGSubgraphGetCurrent();
  if (!v22)
  {
    __break(1u);
  }

  v23 = v22;
  v58 = v78;
  v59 = v79;
  v60 = v80;
  v56 = v76;
  v25 = v40;
  v24 = v41;
  v44 = HIDWORD(v40);
  v61 = v81;
  v57 = v77;
  v53 = v40;
  v26 = v42;
  v54 = v41;
  v55 = v42;
  v62 = v16;
  v63 = v18;
  v64 = v17;
  v65 = v22;
  v66 = MEMORY[0x1E69E7CC0];
  v67 = MEMORY[0x1E69E7CC8];
  v68 = 0;
  v69 = 0;
  v70 = 0;
  v71 = 1;
  v46 = xmmword_18DDE0580;
  v74 = xmmword_18DDE0580;
  v75 = 0;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  v39 = v18;

  outlined init with copy of _ViewInputs(v19, &v51);
  _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for DynamicContainerInfo<DynamicLayoutViewAdaptor>, &type metadata for DynamicLayoutViewAdaptor, &protocol witness table for DynamicLayoutViewAdaptor, type metadata accessor for DynamicContainerInfo);
  lazy protocol witness table accessor for type DynamicContainerInfo<DynamicLayoutViewAdaptor> and conformance DynamicContainerInfo<A>();
  v27 = Attribute.init<A>(body:value:flags:update:)();
  v58 = v78;
  v59 = v79;
  v60 = v80;
  v56 = v76;
  v53 = __PAIR64__(v44, v25);
  v54 = v24;
  v55 = v26;
  v61 = v81;
  v57 = v77;
  v62 = v16;
  v63 = v39;
  v64 = v17;
  v65 = v23;
  v66 = MEMORY[0x1E69E7CC0];
  v67 = MEMORY[0x1E69E7CC8];
  v68 = 0;
  v69 = 0;
  v70 = 0;
  v71 = 1;
  v72 = v51;
  v73 = v52;
  v74 = v46;
  v75 = 0;
  outlined destroy of DynamicContainerInfo<DynamicLayoutViewAdaptor>(&v53);
  AGGraphSetFlags();
  v28 = v47;
  v29 = *(v47 + 16);
  if (v29)
  {

    v31 = v28 + 48;
    do
    {
      v31 += 24;
      MEMORY[0x1EEE9AC00](v30);
      *&v38[-32] = v32;
      *&v38[-24] = v33;
      *&v38[-16] = v27;
      v34 = type metadata accessor for DynamicPreferenceCombiner();
      MEMORY[0x1EEE9AC00](v34);
      *&v38[-32] = v35;
      *&v38[-24] = _s7SwiftUI16DynamicContainerV04makeD07adaptor6inputs14AttributeGraph0H0VyAC4InfoVG_AA12_ViewOutputsVtx_AA01_K6InputsVtAA0cD7AdaptorRzlFZyAA13PreferenceKey_pXp_So11AGAttributeatXEfU_7projectL_3keyyqd__m_tAaQRzAaRRd__r__lFyAA0cO8Combiner33_E7D4CD2D59FB8C77D6C7E9C534464C17LLVyqd__GzXEfU_TA_0;
      *&v38[-16] = &v38[-48];
      v30 = AGGraphMutateAttribute();
      --v29;
    }

    while (v29);

    v28 = v47;
  }

  v36 = v43;
  *v43 = v28;
  v36[1] = v48;
  return v27;
}

unint64_t lazy protocol witness table accessor for type DynamicContainerInfo<DynamicLayoutViewAdaptor> and conformance DynamicContainerInfo<A>()
{
  result = lazy protocol witness table cache variable for type DynamicContainerInfo<DynamicLayoutViewAdaptor> and conformance DynamicContainerInfo<A>;
  if (!lazy protocol witness table cache variable for type DynamicContainerInfo<DynamicLayoutViewAdaptor> and conformance DynamicContainerInfo<A>)
  {
    _sSnySiGMaTm_1(255, &lazy cache variable for type metadata for DynamicContainerInfo<DynamicLayoutViewAdaptor>, &type metadata for DynamicLayoutViewAdaptor, &protocol witness table for DynamicLayoutViewAdaptor, type metadata accessor for DynamicContainerInfo);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DynamicContainerInfo<DynamicLayoutViewAdaptor> and conformance DynamicContainerInfo<A>);
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<NSCalendarUnit>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t type metadata accessor for ViewList()
{
  result = lazy cache variable for type metadata for ViewList;
  if (!lazy cache variable for type metadata for ViewList)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for ViewList);
  }

  return result;
}

uint64_t DynamicPreferenceCombiner.info.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*MEMORY[0x1E698D3F8] == result)
  {
    v3 = 0;
    *(a2 + 40) = 0;
    v4 = 0uLL;
    *a2 = 0u;
  }

  else
  {
    Value = AGGraphGetValue();
    v6 = *(Value + 8);
    v9 = *(Value + 16);
    v3 = *(Value + 32);
    v7 = *(Value + 40);
    v8 = *(Value + 44);
    *a2 = *Value;
    *(a2 + 8) = v6;
    *(a2 + 40) = v7;
    *(a2 + 44) = v8;

    v4 = v9;
  }

  *(a2 + 16) = v4;
  *(a2 + 32) = v3;
  return result;
}

uint64_t static HorizontalAlignment.center.getter(void *a1, uint64_t a2)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

uint64_t DynamicPreferenceCombiner.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v44 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v39 = v33 - v8;
  result = DynamicPreferenceCombiner.info.getter(a1, &v49);
  v10 = v49;
  if (!v49)
  {
    goto LABEL_65;
  }

  v11 = v50;
  v12 = v51;
  v13 = v53;
  v41 = v52;
  v14 = v54;
  v43 = v49 >> 62;
  if (v49 >> 62)
  {
    goto LABEL_60;
  }

  result = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v15 = result - v53;
  if (__OFSUB__(result, v53))
  {
    goto LABEL_62;
  }

LABEL_4:
  v16 = (v15 - v41);
  if (__OFSUB__(v15, v41))
  {
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return result;
  }

  v47 = v10;
  v33[3] = v11;
  v34 = v7;
  if (v15 == v16)
  {
    v11 = 0;
  }

  else
  {
    v11 = (*(a3 + 32))(a2, a3);
  }

  v10 = a2;
  result = (*(a3 + 16))(a2, a3);
  if (v11)
  {
    v7 = v15;
  }

  else
  {
    v7 = v16;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    goto LABEL_64;
  }

  if (v7)
  {
    v33[2] = v14;
    v17 = 0;
    v48 = v47 & 0xC000000000000001;
    v18 = v47 & 0xFFFFFFFFFFFFFF8;
    v45 = v12 + 32;
    v46 = v47 & 0xFFFFFFFFFFFFFF8;
    if (v47 < 0)
    {
      v18 = v47;
    }

    v38 = v18;
    v33[1] = v13;
    v42 = v47 + 32;
    v37 = a3 + 24;
    v36 = (v34 + 2);
    v35 = (v34 + 1);
    v34 += 4;
    v14 = -(v13 + v41);
    v13 = 1;
    v19 = v11;
    while (1)
    {
      if (__OFADD__(v17, 1))
      {
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        result = __CocoaSet.count.getter();
        v15 = result - v13;
        if (!__OFSUB__(result, v13))
        {
          goto LABEL_4;
        }

LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      if (v12)
      {
        if (v11)
        {
          if (v43)
          {
            v20 = __CocoaSet.count.getter();
          }

          else
          {
            v20 = *(v46 + 16);
          }

          v23 = v20 + v14;
          if (v20 + v14 < 0)
          {
            goto LABEL_57;
          }

          if (v23 >= *(v12 + 16))
          {
            goto LABEL_59;
          }

          v21 = *(v45 + 4 * v23);
LABEL_33:
          if (v48)
          {
            goto LABEL_34;
          }

          goto LABEL_40;
        }

        if (v17 >= *(v12 + 16))
        {
          goto LABEL_58;
        }

        v21 = *(v45 + 4 * v17);
        if (v48)
        {
LABEL_34:
          v24 = MEMORY[0x193AC03C0](v21, v47);
          goto LABEL_43;
        }
      }

      else
      {
        v21 = v17;
        if ((v11 & 1) == 0)
        {
          goto LABEL_33;
        }

        if (v43)
        {
          v22 = __CocoaSet.count.getter();
        }

        else
        {
          v22 = *(v46 + 16);
        }

        if (v17 < v41)
        {
          v21 = v22 + v14;
        }

        else
        {
          v21 = v17 - v41;
        }

        if (v48)
        {
          goto LABEL_34;
        }
      }

LABEL_40:
      if ((v21 & 0x8000000000000000) != 0)
      {
        goto LABEL_55;
      }

      if (v21 >= *(v46 + 16))
      {
        goto LABEL_56;
      }

      v24 = *(v42 + 8 * v21);

LABEL_43:
      ++v17;
      v25 = *(v24 + 32);

      v26 = *(v24 + 40);

      v49 = v25;
      v50 = v26;
      v10 = _ViewOutputs.subscript.getter(a2, a2, a3);

      if ((v10 & 0x100000000) != 0)
      {
        v11 = v19;
        if (v17 == v7)
        {
          return outlined consume of DynamicContainer.Info?(v47);
        }
      }

      else if (v13)
      {
        v28 = AssociatedTypeWitness;
        Value = AGGraphGetValue();
        v30 = v39;
        (*v36)(v39, Value, v28);
        v10 = v44;
        (*v35)(v44, v28);
        (*v34)(v10, v30, v28);
        if (v17 == v7)
        {
          return outlined consume of DynamicContainer.Info?(v47);
        }

        v13 = 0;
        v11 = v19;
      }

      else
      {
        v31 = MEMORY[0x1EEE9AC00](v27);
        v33[-4] = a2;
        v33[-3] = a3;
        LODWORD(v33[-2]) = v10;
        v10 = a2;
        (*(a3 + 24))(v44, partial apply for closure #1 in DynamicPreferenceCombiner.value.getter, v31);
        if (v17 == v7)
        {
          return outlined consume of DynamicContainer.Info?(v47);
        }

        v11 = v19;
        v13 = 0;
      }

      ++v14;
      if (v17 >= v7)
      {
        goto LABEL_54;
      }
    }
  }

  v32 = v47;

  return outlined consume of DynamicContainer.Info?(v32);
}

uint64_t protocol witness for static Serializable.deserialize(from:) in conformance Color@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = _s7SwiftUI13AnyCodableBoxPAAE6decode4from0E0Qzs7Decoder_p_tKFZAA0c5ColorE0C_Tt1g5(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t type metadata completion function for ZStack()
{
  result = type metadata accessor for _VariadicView.Tree();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t ViewList.applySublists(from:style:list:to:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *a2;
  v10[0] = BYTE4(a3) & 1;
  v16 = v7;
  v14 = 0;
  v15 = 0;
  v11 = a4;
  v12 = a5;
  v8 = *(a7 + 64);
  v13 = BYTE4(a3) & 1;
  return v8(a1, &v16, a3 | ((BYTE4(a3) & 1) << 32), &v14, partial apply for closure #1 in ViewList.applySublists(from:style:list:transform:to:), v10, a6) & 1;
}

unint64_t lazy protocol witness table accessor for type DynamicLayoutComputer<_ZStackLayout> and conformance DynamicLayoutComputer<A>()
{
  result = lazy protocol witness table cache variable for type DynamicLayoutComputer<_ZStackLayout> and conformance DynamicLayoutComputer<A>;
  if (!lazy protocol witness table cache variable for type DynamicLayoutComputer<_ZStackLayout> and conformance DynamicLayoutComputer<A>)
  {
    type metadata accessor for IndexingIterator<LayoutSubviews>(255, &lazy cache variable for type metadata for DynamicLayoutComputer<_ZStackLayout>, lazy protocol witness table accessor for type _ZStackLayout and conformance _ZStackLayout, &type metadata for _ZStackLayout, type metadata accessor for DynamicLayoutComputer);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DynamicLayoutComputer<_ZStackLayout> and conformance DynamicLayoutComputer<A>);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA014ContainerShapeF033_E7F652304F78E63E0DE3A54ABB60E18ALLVG_Tt2B5(uint64_t *a1, _OWORD *a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContainerShapeKey>, &type metadata for ContainerShapeKey, &protocol witness table for ContainerShapeKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA014ContainerShapeV033_E7F652304F78E63E0DE3A54ABB60E18ALLVG_Tt0B5(v4, v11) || (result = AGCompareValues(), !result))
  {
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<ContainerShapeKey>>();
    v9 = swift_allocObject();
    v10 = a2[1];
    *(v9 + 72) = *a2;
    *(v9 + 88) = v10;
    *(v9 + 104) = a2[2];
    *(v9 + 113) = *(a2 + 41);

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<ContainerShapeKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<ContainerShapeKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContainerShapeKey>, &type metadata for ContainerShapeKey, &protocol witness table for ContainerShapeKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ContainerShapeKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<ContainerShapeKey>>);
    }
  }
}

uint64_t specialized DynamicContainerInfo.updateItems(disableTransitions:)(char a1)
{
  v2 = v1;
  *v44 = 0;
  v4 = *v1;
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
  Value = AGGraphGetValue();
  v7 = v6;
  outlined init with copy of AnyTrackedValue(Value, v37);
  if (v7)
  {
    outlined init with take of AnyTrackedValue(v37, &v38);
    if (!*(&v39 + 1))
    {
      goto LABEL_35;
    }

    outlined init with take of AnyTrackedValue(&v38, v41);
    v36 = 0;
    v8 = *(v2 + 17);
    if (v8 >> 62)
    {
      goto LABEL_48;
    }

    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
    v34 = &v34;
    v35 = v9;
    MEMORY[0x1EEE9AC00](v9);
    v31[2] = &v36;
    v31[3] = &v35;
    v31[4] = v2;
    v31[5] = &v44[1];
    v31[6] = v41;
    v32 = a1 & 1;
    v33 = v44;
    *&v38 = 0;
    v10 = v42;
    v11 = v43;
    v12 = __swift_project_boxed_opaque_existential_1(v41, v42);
    MEMORY[0x1EEE9AC00](v12);
    v30[2] = partial apply for specialized closure #1 in DynamicContainerInfo.updateItems(disableTransitions:);
    v30[3] = v31;

    LOBYTE(v37[0]) = 0;
    v13 = v4;
    v4 = v12;
    ViewList.applySublists(from:list:to:)(&v38, v13, partial apply for closure #1 in DynamicLayoutViewAdaptor.foreachItem(items:_:), v30, v10, v11);

    v14 = v35;
    v15 = v36;
    if (v36 >= v35)
    {
LABEL_7:
      __swift_destroy_boxed_opaque_existential_1(v41);
      v16 = v44[0];
      goto LABEL_36;
    }

    while (1)
    {
      if (v15 >= v14)
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
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        v9 = __CocoaSet.count.getter();
        goto LABEL_6;
      }

      v17 = v14 - 1;
      v18 = *(v2 + 17);
      if ((v18 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x193AC03C0](v14 - 1);
      }

      else
      {
        if (v14 < 1)
        {
          goto LABEL_41;
        }

        if (v17 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_42;
        }

        v19 = *(v18 + 8 * v14 + 24);
      }

      swift_beginAccess();
      v20 = *(v19 + 84);

      v4 = v2;
      if ((specialized DynamicContainerInfo.tryRemovingItem(at:disableTransitions:)(v14 - 1, a1 & 1) & 1) == 0)
      {
        v21 = *(v2 + 17);
        if ((v21 & 0xC000000000000001) != 0)
        {
          v26 = *(MEMORY[0x193AC03C0](v14 - 1, *(v2 + 17)) + 64);
          v44[0] = v44[0] & 1 | (v26 != 0.0);
          v27 = *(MEMORY[0x193AC03C0](v15, v21) + 64);

          if (v26 != v27)
          {
            *(MEMORY[0x193AC03C0](v14 - 1, v21) + 64) = v26;

            v44[1] = 1;
          }

          v25 = MEMORY[0x193AC03C0](v14 - 1, v21);
        }

        else
        {
          if (v14 < 1)
          {
            goto LABEL_43;
          }

          if (v17 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_44;
          }

          v22 = v21 + 8 * v14;
          v4 = *(v22 + 24);
          v23 = *(v4 + 64);
          v24 = v44[0];

          v44[0] = v24 & 1 | (v23 != 0.0);
          if (v15 < 0)
          {
            goto LABEL_45;
          }

          if (v23 != *(*(v21 + 32 + 8 * v15) + 64))
          {
            if (v17 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_47;
            }

            *(*(v22 + 24) + 64) = v23;
            v44[1] = 1;
          }

          if (v17 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_46;
          }

          v25 = *(v22 + 24);
        }

        swift_beginAccess();
        v4 = *(v25 + 84);

        if (v4 == 3)
        {
          if (v20 == 3)
          {
            goto LABEL_9;
          }
        }

        else if (v20 != 3 && v4 == v20)
        {
          goto LABEL_9;
        }
      }

      v44[1] = 1;
LABEL_9:
      v14 = v17;
      if (v15 == v17)
      {
        goto LABEL_7;
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v37);
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
LABEL_35:
  outlined destroy of ViewList?(&v38, &lazy cache variable for type metadata for ViewList?, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
  v16 = *(v2 + 19) != 0;
LABEL_36:
  if (v16)
  {
    v28 = 256;
  }

  else
  {
    v28 = 0;
  }

  return v28 | v44[1];
}

uint64_t static Alignment.center.getter(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    v3 = a2;
    swift_once();
    a2 = v3;
  }

  return *a2;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA014ContainerShapeV033_E7F652304F78E63E0DE3A54ABB60E18ALLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA014ContainerShapeV033_E7F652304F78E63E0DE3A54ABB60E18ALLVG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContainerShapeKey>, &type metadata for ContainerShapeKey, &protocol witness table for ContainerShapeKey, type metadata accessor for EnvironmentPropertyKey);
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

uint64_t sub_18D04B7BC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

void type metadata accessor for (Path, FillStyle)(uint64_t a1, unint64_t *a2)
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

void ViewBodyAccessor.updateBody(of:changed:)(uint64_t a1, char a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for UncheckedSendable();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v15[-v13];
  if (a2)
  {
    (*(v7 + 16))(v9, a1, v6, v12);
    UncheckedSendable.init(_:)(v9, v6, v14);
    closure #1 in ViewBodyAccessor.updateBody(of:changed:)(v14, v6, *(a3 + 24));
    (*(v11 + 8))(v14, v10);
  }
}

uint64_t closure #1 in ViewBodyAccessor.updateBody(of:changed:)(char *a1, uint64_t a2, uint64_t a3)
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
    type metadata accessor for _ContiguousArrayStorage<CVarArg>();
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
  (*(v56 + 48))(v58, v56);
  AGGraphSetUpdate();
  v48 = $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  MEMORY[0x1EEE9AC00](v48);
  v52[-2] = type metadata accessor for ViewBodyAccessor();
  v52[-1] = swift_getWitnessTable();
  v49 = AssociatedTypeWitness;
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v47, partial apply for closure #2 in BodyAccessor.setBody(_:), &v52[-4], AssociatedTypeWitness, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v50);
  return (*(v54 + 8))(v47, v49);
}

uint64_t specialized DynamicContainerInfo.updateValue()()
{
  v4 = v0;
  v5 = *AGGraphGetValue() >> 1;
  v131 = v0;
  if (v5 != *(v0 + 192))
  {
    *(v0 + 192) = v5;
    v6 = 1;
    if ((*(v0 + 196) & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = *(v0 + 136);
    if (v7 >> 62)
    {
      goto LABEL_45;
    }

    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v2 = 0;
    if (v8)
    {
LABEL_7:
      v3 = 0;
      v9 = v7 & 0xC000000000000001;
      v4 = v7 & 0xFFFFFFFFFFFFFF8;
      do
      {
        v1 = v3;
        while (1)
        {
          if (v1 >= v8)
          {
            goto LABEL_42;
          }

          v3 = v1 + 1;
          if (__OFADD__(v1, 1))
          {
            goto LABEL_43;
          }

          if (v9)
          {
            v10 = MEMORY[0x193AC03C0](v1, v7);
          }

          else
          {
            if (v1 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_44;
            }

            v10 = *(v7 + 8 * v1 + 32);
          }

          swift_beginAccess();
          v11 = *(v10 + 84);

          if (!v11)
          {
            break;
          }

          ++v1;
          if (v3 == v8)
          {
            goto LABEL_23;
          }
        }

        if (v9)
        {
          v1 = MEMORY[0x193AC03C0](v1, v7);
        }

        else
        {
          if (v1 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_49;
          }

          v1 = *(v7 + 8 * v1 + 32);
        }

        v2 = 1;
        swift_beginAccess();
        *(v1 + 84) = 1;
      }

      while (v3 != v8);
    }

LABEL_23:
    v4 = v131;
    *(v131 + 196) = 0;
    goto LABEL_24;
  }

  v6 = *(v0 + 60) & 1;
  if (*(v0 + 196) == 1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v2 = 0;
LABEL_24:
  v7 = v4;
  LOWORD(v3) = specialized DynamicContainerInfo.updateItems(disableTransitions:)(v6);
  if (v3)
  {
    goto LABEL_54;
  }

  v13 = *(v4 + 136);
  if (v13 >> 62)
  {
    goto LABEL_47;
  }

  v1 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v1)
  {
    goto LABEL_53;
  }

  do
  {
    v14 = v1;
    while (v1 >= v14)
    {
      v15 = v14 - 1;
      v16 = *(v4 + 136);
      if ((v16 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x193AC03C0](v14 - 1);
      }

      else
      {
        if (v15 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_41;
        }

        v7 = *(v16 + 8 * v14 + 24);
      }

      swift_beginAccess();
      v17 = *(v7 + 84);

      if (v17 == 2)
      {
        v7 = v4;
        if ((specialized DynamicContainerInfo.tryRemovingItem(at:disableTransitions:)(v14 - 1, v6) & 1) == 0)
        {
          goto LABEL_29;
        }

        v2 = 1;
        if (!--v14)
        {
          goto LABEL_54;
        }
      }

      else
      {
        if (v17 != 3)
        {
          goto LABEL_53;
        }

LABEL_29:
        --v14;
        if (!v15)
        {
          goto LABEL_53;
        }
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
LABEL_45:
    v12 = __CocoaSet.count.getter();
    if ((v12 & 0x8000000000000000) == 0)
    {
LABEL_50:
      v8 = v12;
      v2 = 0;
      if (v12)
      {
        goto LABEL_7;
      }

      goto LABEL_23;
    }

    __break(1u);
LABEL_47:
    v12 = __CocoaSet.count.getter();
    if (v12 < 0)
    {
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v1 = v12;
  }

  while (v12);
LABEL_53:
  if ((v2 & 1) == 0)
  {
    v24 = *(v4 + 136);
    if (!(v24 >> 62))
    {
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_205;
      }

      goto LABEL_62;
    }

LABEL_314:
    if (__CocoaSet.count.getter())
    {
      goto LABEL_205;
    }

LABEL_62:
    result = AGGraphGetOutputValue();
    if (!result)
    {
      goto LABEL_205;
    }

    return result;
  }

LABEL_54:
  LOWORD(v124) = v3;
  v18 = *(v4 + 136);
  v116 = (v4 + 136);
  v19 = v18 & 0xFFFFFFFFFFFFFF8;
  v20 = v18 >> 62;
  if (v18 >> 62)
  {
    goto LABEL_301;
  }

  v21 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v117 = *(v4 + 168);
  v118 = v21;
  v113 = (v4 + 168);
  v112 = (v4 + 160);
  v125 = *(v4 + 160);
  v22 = v21 - v117 - v125;
  v132 = v21 - v117;
  if (v22 < v21 - v117)
  {
    if (v21 >= v22)
    {
      goto LABEL_57;
    }

LABEL_306:
    __break(1u);
LABEL_307:
    __break(1u);
    goto LABEL_308;
  }

LABEL_106:
  v18 = *(v4 + 144);
  if (*(v18 + 16))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v133 = *(v4 + 144);
    type metadata accessor for _NativeDictionary<UInt32, Int>();
    _NativeDictionary.removeAll(isUnique:)(isUniquelyReferenced_nonNull_native);
    v18 = v133;
    *(v4 + 144) = v133;
  }

  *(v4 + 176) = 1;
  v48 = v132;
  if ((v132 & 0x8000000000000000) != 0)
  {
LABEL_308:
    __break(1u);
LABEL_309:
    __break(1u);
LABEL_310:
    __break(1u);
LABEL_311:
    __break(1u);
LABEL_312:
    __break(1u);
LABEL_313:
    __break(1u);
    goto LABEL_314;
  }

  v19 = v118;
  v123 = v22;
  if (v118 == v117)
  {
    goto LABEL_138;
  }

  if (!v132)
  {
LABEL_272:
    __break(1u);
LABEL_273:
    __break(1u);
LABEL_274:
    __break(1u);
LABEL_275:
    __break(1u);
LABEL_276:
    __break(1u);
LABEL_277:
    __break(1u);
LABEL_278:
    __break(1u);
LABEL_279:
    __break(1u);
LABEL_280:
    __break(1u);
LABEL_281:
    __break(1u);
LABEL_282:
    __break(1u);
LABEL_283:
    __break(1u);
LABEL_284:
    __break(1u);
LABEL_285:
    __break(1u);
LABEL_286:
    __break(1u);
LABEL_287:
    __break(1u);
LABEL_288:
    __break(1u);
LABEL_289:
    __break(1u);
LABEL_290:
    __break(1u);
LABEL_291:
    __break(1u);
LABEL_292:
    __break(1u);
LABEL_293:
    __break(1u);
LABEL_294:
    __break(1u);
    while (1)
    {
      __break(1u);
LABEL_296:
      __break(1u);
LABEL_297:
      __break(1u);
LABEL_298:
      __break(1u);
LABEL_299:
      __break(1u);
LABEL_300:
      __break(1u);
LABEL_301:
      if ((v18 & 0x8000000000000000) != 0)
      {
        v1 = v18;
      }

      else
      {
        v1 = v19;
      }

      v109 = __CocoaSet.count.getter();
      v112 = (v4 + 160);
      v113 = (v4 + 168);
      v117 = *(v4 + 168);
      v118 = v109;
      v125 = *(v4 + 160);
      v22 = v109 - v117 - v125;
      v132 = v109 - v117;
      if (v22 >= v109 - v117)
      {
        goto LABEL_106;
      }

      if (__CocoaSet.count.getter() < v22)
      {
        goto LABEL_306;
      }

LABEL_57:
      if (v22 < 0)
      {
        goto LABEL_309;
      }

      if (v20)
      {
        v23 = __CocoaSet.count.getter();
      }

      else
      {
        v23 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v23 < v132)
      {
        goto LABEL_310;
      }

      if ((v132 & 0x8000000000000000) != 0)
      {
        goto LABEL_311;
      }

      if ((v18 & 0xC000000000000001) != 0 && v125)
      {
        v1 = type metadata accessor for DynamicContainer.ItemInfo();

        v26 = v22;
        do
        {
          v27 = v26 + 1;
          _ArrayBuffer._typeCheckSlowPath(_:)(v26);
          v26 = v27;
        }

        while (v132 != v27);
        if (!v20)
        {
LABEL_72:
          v28 = v18 & 0xFFFFFFFFFFFFFF8;
          v18 = (v18 & 0xFFFFFFFFFFFFFF8) + 32;
          v4 = (2 * v132) | 1;
          v29 = v22;
          goto LABEL_75;
        }
      }

      else
      {

        if (!v20)
        {
          goto LABEL_72;
        }
      }

      v28 = _CocoaArrayWrapper.subscript.getter();
      v18 = v30;
      v29 = v31;
      v4 = v32;
LABEL_75:
      v19 = v4 >> 1;
      if (v29 == v4 >> 1)
      {
        goto LABEL_105;
      }

      v20 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
LABEL_319:
        __break(1u);
LABEL_320:
        __break(1u);
LABEL_321:
        __break(1u);
      }

      if (v20 == v19)
      {
        goto LABEL_105;
      }

      v122 = v22;
      while (v20 >= v29)
      {
        v19 = v4 >> 1;
        if (v20 >= (v4 >> 1))
        {
          break;
        }

        v2 = *(v18 + 8 * v20);

        v126 = v20;
        v33 = v20;
        while (1)
        {
          v20 = v33 - 1;
          if (__OFSUB__(v33, 1))
          {
            __break(1u);
LABEL_268:
            __break(1u);
LABEL_269:
            __break(1u);
LABEL_270:
            __break(1u);
LABEL_271:
            __break(1u);
            goto LABEL_272;
          }

          if (v20 < v29)
          {
            goto LABEL_268;
          }

          v34 = v4 >> 1;
          if (v20 >= (v4 >> 1))
          {
            goto LABEL_268;
          }

          v35 = *(v18 + 8 * v20);
          if (*(v2 + 72) >= *(v35 + 72))
          {
            break;
          }

          swift_retain_n();
          if ((v4 & 1) == 0 || (swift_isUniquelyReferenced_nonNull() & 1) == 0)
          {
            _ss20_ArrayBufferProtocolPsE7copyingxx_tcfCs06_SliceB0Vy7SwiftUI16DynamicContainerV8ItemInfoCG_Tt1g5Tf4gX_n(v18, v29, v4);
            v37 = v36;
            v18 = v38;
            v29 = v39;
            v4 = v40;
            swift_unknownObjectRelease();
            v34 = v4 >> 1;
            v28 = v37;
          }

          if (v33 < v29 || v33 >= v34)
          {
            goto LABEL_269;
          }

          v1 = *(v18 + 8 * v33);
          *(v18 + 8 * v33) = v35;

          --v33;
          v41 = v20;
          if (v20 == v29)
          {
            goto LABEL_94;
          }
        }

        v20 = v33;
        v41 = v29;
LABEL_94:
        if (v20 == v126)
        {

          v29 = v41;
          v22 = v122;
          goto LABEL_103;
        }

        v22 = v122;
        if (v4 & 1) != 0 && (swift_isUniquelyReferenced_nonNull())
        {
          v29 = v41;
        }

        else
        {
          _ss20_ArrayBufferProtocolPsE7copyingxx_tcfCs06_SliceB0Vy7SwiftUI16DynamicContainerV8ItemInfoCG_Tt1g5Tf4gX_n(v18, v41, v4);
          v43 = v42;
          v18 = v44;
          v29 = v45;
          v4 = v46;
          swift_unknownObjectRelease();
          v28 = v43;
        }

        if (v20 < v29)
        {
          goto LABEL_299;
        }

        v19 = v4 >> 1;
        if (v20 >= (v4 >> 1))
        {
          goto LABEL_299;
        }

        v1 = *(v18 + 8 * v20);
        *(v18 + 8 * v20) = v2;

LABEL_103:
        v20 = v126;
        if (__OFADD__(v126, 1))
        {
          goto LABEL_296;
        }

        v20 = v126 + 1;
        if (v126 + 1 == v4 >> 1)
        {
LABEL_105:
          specialized Array.subscript.setter(v28, v18, v29, v4, v22, v132);
          swift_unknownObjectRelease();
          v4 = v131;
          goto LABEL_106;
        }
      }
    }
  }

  v1 = 0;
  v49 = 0;
  v19 = v116;
  v50 = *v116;
  v51 = *v116 & 0xC000000000000001;
  v52 = *v116 & 0xFFFFFFFFFFFFFF8;
  v20 = 1;
  v127 = v52;
  while (1)
  {
    v53 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_276;
    }

    if (v51)
    {
      v54 = MEMORY[0x193AC03C0](v1, v50);
    }

    else
    {
      v19 = *(v52 + 16);
      if (v1 >= v19)
      {
        goto LABEL_286;
      }
    }

    v2 = *(v54 + 24);

    v55 = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v4 + 144);
    v56 = specialized __RawDictionaryStorage.find<A>(_:)(v2);
    v58 = *(v18 + 16);
    v59 = (v57 & 1) == 0;
    v60 = __OFADD__(v58, v59);
    v19 = v58 + v59;
    if (v60)
    {
      goto LABEL_277;
    }

    v4 = v57;
    if (*(v18 + 24) >= v19)
    {
      if ((v55 & 1) == 0)
      {
        v63 = v56;
        specialized _NativeDictionary.copy()();
        v56 = v63;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, v55);
      v56 = specialized __RawDictionaryStorage.find<A>(_:)(v2);
      if ((v4 & 1) != (v61 & 1))
      {
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
LABEL_322:
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }
    }

    v52 = v127;
    if (v4)
    {
      *(*(v18 + 56) + 8 * v56) = v1;
    }

    else
    {
      *(v18 + 8 * (v56 >> 6) + 64) |= 1 << v56;
      *(*(v18 + 48) + 4 * v56) = v2;
      *(*(v18 + 56) + 8 * v56) = v1;
      v62 = *(v18 + 16);
      v60 = __OFADD__(v62, 1);
      v19 = v62 + 1;
      if (v60)
      {
        goto LABEL_283;
      }

      *(v18 + 16) = v19;
    }

    v4 = v131;
    *(v131 + 144) = v18;
    if (v51)
    {
      *(MEMORY[0x193AC03C0](v1, v50) + 76) = v49;

      v2 = *(MEMORY[0x193AC03C0](v1, v50) + 28);
      swift_unknownObjectRelease();
      if (v20)
      {
        goto LABEL_129;
      }
    }

    else
    {
      v19 = *(v127 + 16);
      if (v1 >= v19)
      {
        goto LABEL_287;
      }

      v19 = v50 + 8 * v1;
      *(*(v19 + 32) + 76) = v49;
      if (v1 >= *(v127 + 16))
      {
        goto LABEL_288;
      }

      v19 = *(v19 + 32);
      v2 = *(v19 + 28);
      if (v20)
      {
LABEL_129:
        v20 = v2 == 1;
        goto LABEL_134;
      }
    }

    v20 = 0;
LABEL_134:
    v48 = v132;
    if (v53 == v132)
    {
      break;
    }

    v49 += v2;
    ++v1;
    if (v53 >= v132)
    {
      goto LABEL_272;
    }
  }

  *(v131 + 176) = v20;
  v22 = v123;
LABEL_138:
  if (*(v18 + 16) != v48)
  {
    goto LABEL_322;
  }

  if ((v124 & 0x100) != 0)
  {
    v65 = v22;
    if (v125)
    {
      v65 = v22 + v48;
      if (__OFADD__(v22, v48))
      {
        __break(1u);
LABEL_317:
        swift_once();
LABEL_178:
        v81 = static Semantics.v5;
        v2 = v114;
        if (one-time initialization token for forced != -1)
        {
          swift_once();
        }

        v18 = &static Semantics.forced;
        swift_beginAccess();
        if (byte_1ED53C51C == 1)
        {
          if ((dyld_program_sdk_at_least() & 1) == 0)
          {
LABEL_182:
            if (!v22)
            {
LABEL_196:
              addRemoved #1 <A>() in DynamicContainerInfo.updateValue()(v22, v132, v111);
              goto LABEL_197;
            }

            v20 = 0;
LABEL_187:
            swift_beginAccess();
            v82 = 0;
            do
            {
              if (v22 == v82)
              {
                goto LABEL_289;
              }

              v18 = *v114;
              v83 = *(*v114 + 2);
              if (v82 >= v83)
              {
                goto LABEL_290;
              }

              v84 = *(v18 + 4 * v82 + 32);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v83 + 1, 1, v18);
              }

              v86 = *(v18 + 16);
              v85 = *(v18 + 24);
              if (v86 >= v85 >> 1)
              {
                v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v85 > 1), v86 + 1, 1, v18);
              }

              ++v82;
              *(v18 + 16) = v86 + 1;
              v19 = v18 + 4 * v86;
              *(v19 + 32) = v84;
              *v114 = v18;
            }

            while (v22 != v82);
            if (v20)
            {
              goto LABEL_197;
            }

            goto LABEL_196;
          }
        }

        else if (static Semantics.forced < v81)
        {
          goto LABEL_182;
        }

        addRemoved #1 <A>() in DynamicContainerInfo.updateValue()(v22, v132, v111);
        if (!v22)
        {
LABEL_197:
          v87 = v22 + v132;
          if (__OFADD__(v22, v132))
          {
            goto LABEL_319;
          }

          if (v87 < v22)
          {
            goto LABEL_320;
          }

          swift_beginAccess();
          v88 = *v114;
          if (*(*v114 + 2) < v87)
          {
            goto LABEL_321;
          }

          v4 = v88 + 32;
          v1 = (2 * v87) | 1;
          v2 = v123;
          v110 = v87;
          if (v123 != v87)
          {
            v20 = v123 + 1;
            if (v123 + 1 != v110)
            {
LABEL_234:
              v130 = *v116 & 0xC000000000000001;
              v124 = *v116;
              v119 = *v116 + 32;
              v121 = *v116 & 0xFFFFFFFFFFFFFF8;

              while (v20 >= v2)
              {
                v19 = v1 >> 1;
                if (v20 >= (v1 >> 1))
                {
                  break;
                }

                v96 = *(v4 + 4 * v20);
                v115 = v20;
                while (1)
                {
                  v97 = v20 - 1;
                  if (__OFSUB__(v20, 1))
                  {
                    goto LABEL_273;
                  }

                  if (v97 < v2)
                  {
                    goto LABEL_274;
                  }

                  v98 = v1 >> 1;
                  if (v97 >= (v1 >> 1))
                  {
                    goto LABEL_274;
                  }

                  v18 = *(v4 + 4 * v97);
                  if (v130)
                  {
                    v99 = *(MEMORY[0x193AC03C0](v96, v124) + 64);

                    v100 = MEMORY[0x193AC03C0](v18, v124);
                  }

                  else
                  {
                    v19 = *(v121 + 16);
                    if (v19 <= v96)
                    {
                      goto LABEL_284;
                    }

                    if (v19 <= v18)
                    {
                      goto LABEL_285;
                    }

                    v99 = *(*(v119 + 8 * v96) + 64);
                  }

                  v101 = *(v100 + 64);

                  if (v99 >= v101)
                  {
                    break;
                  }

                  if ((v1 & 1) == 0 || (swift_isUniquelyReferenced_nonNull() & 1) == 0)
                  {
                    v102 = _ss20_ArrayBufferProtocolPsE7copyingxx_tcfCs06_SliceB0Vys6UInt32VG_Tt1g5Tf4gX_n(v4, v2, v1);
                    v4 = v103;
                    v2 = v104;
                    v1 = v105;
                    swift_unknownObjectRelease();
                    v98 = v1 >> 1;
                    v88 = v102;
                  }

                  if (v20 < v2 || v20 >= v98)
                  {
                    goto LABEL_275;
                  }

                  *(v4 + 4 * v20--) = v18;
                  v18 = v97;
                  if (v97 == v2)
                  {
                    goto LABEL_255;
                  }
                }

                v97 = v20;
                v18 = v2;
LABEL_255:
                if (v97 == v115)
                {
                  v2 = v18;
                }

                else
                {
                  if (v1 & 1) != 0 && (swift_isUniquelyReferenced_nonNull())
                  {
                    v2 = v18;
                  }

                  else
                  {
                    v18 = _ss20_ArrayBufferProtocolPsE7copyingxx_tcfCs06_SliceB0Vys6UInt32VG_Tt1g5Tf4gX_n(v4, v18, v1);
                    v4 = v106;
                    v2 = v107;
                    v1 = v108;
                    swift_unknownObjectRelease();
                    v88 = v18;
                  }

                  if (v97 < v2)
                  {
                    goto LABEL_312;
                  }

                  v19 = v1 >> 1;
                  if (v97 >= (v1 >> 1))
                  {
                    goto LABEL_312;
                  }

                  *(v4 + 4 * v97) = v96;
                }

                if (__OFADD__(v115, 1))
                {
                  goto LABEL_307;
                }

                v20 = v115 + 1;
                if (v115 + 1 == v1 >> 1)
                {
                  goto LABEL_203;
                }
              }

              goto LABEL_300;
            }
          }

LABEL_203:
          specialized Array.subscript.setter(v88, v4, v2, v1, v123, v110);
          swift_endAccess();
          swift_unknownObjectRelease();
          v4 = v131;
          goto LABEL_204;
        }

        v20 = 1;
        goto LABEL_187;
      }
    }

    v66 = v4;
    v18 = v65 & ~(v65 >> 63);
    v67 = swift_allocObject();
    v68 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0, MEMORY[0x1E69E7CC0]);
    v111 = v67;
    *(v67 + 16) = v68;
    v114 = (v67 + 16);
    if ((v22 & 0x8000000000000000) == 0)
    {
      v4 = v68;
      if (v22)
      {
        v69 = 0;
        v20 = 0x100000000;
        do
        {
          if (v69 == 0x100000000)
          {
            goto LABEL_282;
          }

          v1 = *(v4 + 16);
          v70 = *(v4 + 24);
          v18 = v1 + 1;
          if (v1 >= v70 >> 1)
          {
            v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v70 > 1), v1 + 1, 1, v4);
          }

          *(v4 + 4 * v1 + 32) = v69;
          v19 = v69 + 1;
          *(v4 + 16) = v18;
          v69 = v19;
        }

        while (v22 != v19);
        *v114 = v4;
      }

      if (v118 > 31)
      {
        v4 = v66;
        specialized MutableCollection<>.sort(by:)(v114, v66);
        if (v125)
        {
          goto LABEL_177;
        }
      }

      else
      {
        v19 = *(v4 + 16);
        if (v19 < 2)
        {
          v4 = v66;
          if (!v125)
          {
            goto LABEL_204;
          }

LABEL_177:
          if (one-time initialization token for v5 == -1)
          {
            goto LABEL_178;
          }

          goto LABEL_317;
        }

        v1 = *v116;
        v20 = *v116 & 0xC000000000000001;
        v120 = v4 + 32;
        v128 = *v116 & 0xFFFFFFFFFFFFFF8;
        v71 = *v116 + 32;
        v72 = (v4 + 36);
        for (i = 1; i != v19; ++i)
        {
          if (i >= v19)
          {
            goto LABEL_297;
          }

          v74 = 0;
          v18 = *(v120 + 4 * i);
          v124 = v72;
          v75 = v72;
          while (1)
          {
            v2 = i + v74;
            v19 = i + v74 - 1;
            if (v19 >= *(v4 + 16))
            {
              goto LABEL_270;
            }

            v76 = *(v75 - 1);
            if (v20)
            {
              v77 = *(MEMORY[0x193AC03C0](v18, v1) + 64);

              v78 = MEMORY[0x193AC03C0](v76, v1);
            }

            else
            {
              v19 = *(v128 + 16);
              if (v19 <= v18)
              {
                goto LABEL_278;
              }

              if (v19 <= v76)
              {
                goto LABEL_279;
              }

              v77 = *(*(v71 + 8 * v18) + 64);
            }

            v79 = *(v78 + 64);

            if (v77 >= v79)
            {
              break;
            }

            v19 = *(v4 + 16);
            if (v2 >= v19)
            {
              goto LABEL_271;
            }

            *v75-- = v76;
            --v74;
            if (!(i + v74))
            {
              v19 = 0;
              v22 = v123;
              v80 = v124;
              goto LABEL_174;
            }
          }

          v22 = v123;
          v80 = v124;
          if (v74)
          {
            v19 = i + v74;
LABEL_174:
            if (v19 >= *(v4 + 16))
            {
              goto LABEL_298;
            }

            *(v120 + 4 * v19) = v18;
          }

          v19 = *(v4 + 16);
          v72 = (v80 + 4);
        }

        *v114 = v4;
        v4 = v131;
        if (v125)
        {
          goto LABEL_177;
        }
      }

LABEL_204:
      swift_beginAccess();
      v18 = *(v111 + 16);

      *(v4 + 152) = v18;
      v64 = v132;
      if (v118 != v117)
      {
        goto LABEL_207;
      }

      goto LABEL_205;
    }

    goto LABEL_313;
  }

  v64 = v132;
  v18 = 0;
  *(v4 + 152) = 0;
  if (v118 != v117)
  {
LABEL_207:
    v89 = 0;
    v90 = *v116;
    v91 = *v116 & 0xC000000000000001;
    v88 = *v116 & 0xFFFFFFFFFFFFFF8;
    v123 = *v112;
    v19 = *v113 + *v112;
    v129 = v18 + 32;
    v124 = *v116 + 32;
    v20 = -v19;
    v92 = *v116 >> 62;
    do
    {
      if (v89 >= v64)
      {
        goto LABEL_280;
      }

      if (__OFADD__(v89, 1))
      {
        goto LABEL_281;
      }

      if (v18)
      {
        if (v125)
        {
          if (v92)
          {
            v19 = __CocoaSet.count.getter() + v20;
            if ((v19 & 0x8000000000000000) != 0)
            {
LABEL_233:
              __break(1u);
              goto LABEL_234;
            }
          }

          else
          {
            v19 = *(v88 + 16) + v20;
            if ((v19 & 0x8000000000000000) != 0)
            {
              goto LABEL_233;
            }
          }

          if (v19 >= *(v18 + 16))
          {
            goto LABEL_291;
          }

          v94 = *(v129 + 4 * v19);
          if (v91)
          {
LABEL_213:
            v2 = MEMORY[0x193AC03C0](v94, v90);
            goto LABEL_214;
          }
        }

        else
        {
          v19 = *(v18 + 16);
          if (v89 >= v19)
          {
            goto LABEL_294;
          }

          v19 = v18 + 32;
          v94 = *(v129 + 4 * v89);
          if (v91)
          {
            goto LABEL_213;
          }
        }
      }

      else
      {
        v94 = v89;
        v19 = v125;
        if (v125)
        {
          if (v92)
          {
            v93 = __CocoaSet.count.getter();
          }

          else
          {
            v93 = *(v88 + 16);
          }

          v19 = v89 - v123;
          if (v89 < v123)
          {
            v94 = v93 + v20;
          }

          else
          {
            v94 = v89 - v123;
          }
        }

        if (v91)
        {
          goto LABEL_213;
        }
      }

      if ((v94 & 0x8000000000000000) != 0)
      {
        goto LABEL_292;
      }

      v19 = *(v88 + 16);
      if (v94 >= v19)
      {
        goto LABEL_293;
      }

      v2 = *(v124 + 8 * v94);

LABEL_214:
      v95 = *(v2 + 16);

      AGSubgraphSetIndex();

      ++v20;
      v1 = ++v89;
      v4 = v131;
      v64 = v132;
    }

    while (v89 != v132);
  }

LABEL_205:
  ++*(v4 + 180);
  return AGGraphSetOutputValue();
}

uint64_t sub_18D04D4EC()
{

  return swift_deallocObject();
}

uint64_t partial apply for specialized closure #2 in static UnaryLayout<>.makeViewImpl(modifier:inputs:body:)(uint64_t result)
{
  *(result + 12) = *(v1 + 28);
  return result;
}

{
  *(result + 24) = *(v1 + 28);
  return result;
}

uint64_t ViewGraph.makePreferenceOutlets(outputs:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_beginAccess();
    v6 = *(v5 + 40);
    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = v6 + 32;

      for (i = 0; i != v7; ++i)
      {
        v11 = *(v8 + 16 * i);
        v12 = *(v3 + 16) + 1;
        v13 = (v3 + 32);
        while (--v12)
        {
          v14 = v13 + 3;
          v15 = *v13;
          v13 += 3;
          if (v15 == v11)
          {
            v26 = *(v8 + 16 * i);
            v16 = *(v14 - 2);
            swift_beginAccess();
            if ((*(v2 + 41) & 1) == 0)
            {
              PreferenceBridge.addValue(_:for:)(v16, v11);
            }

            swift_beginAccess();
            v17 = *(v2 + 448);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v2 + 448) = v17;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
              *(v2 + 448) = v17;
            }

            v20 = *(v17 + 2);
            v19 = *(v17 + 3);
            v21 = v26;
            if (v20 >= v19 >> 1)
            {
              v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v17);
              v21 = v26;
              v17 = v22;
            }

            *(v17 + 2) = v20 + 1;
            v10 = &v17[24 * v20];
            *(v10 + 2) = v21;
            *(v10 + 12) = v16;
            *(v2 + 448) = v17;
            swift_endAccess();
            break;
          }
        }
      }
    }

    else
    {
    }

    swift_beginAccess();
    if ((*(v2 + 41) & 1) == 0 && (_s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA04HostcI0V_TtB5(v3) & 0x100000000) == 0)
    {
      AGCreateWeakAttribute();
      v23 = *(v2 + 56);
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        swift_beginAccess();
        Attribute = AGWeakAttributeGetAttribute();
        if (Attribute != *MEMORY[0x1E698D3F8])
        {
          MEMORY[0x1EEE9AC00](Attribute);
          MEMORY[0x1EEE9AC00](v25);
          AGGraphMutateAttribute();
          GraphHost.graphInvalidation(from:)(v23);
        }
      }
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RootDisplayList and conformance RootDisplayList()
{
  result = lazy protocol witness table cache variable for type RootDisplayList and conformance RootDisplayList;
  if (!lazy protocol witness table cache variable for type RootDisplayList and conformance RootDisplayList)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RootDisplayList and conformance RootDisplayList);
  }

  return result;
}

unint64_t _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = *(a1 + 16) + 1;
  while (--v2)
  {
    v3 = v1 + 3;
    v4 = *v1;
    v1 += 3;
    if (v4 == &type metadata for DisplayList.Key)
    {
      v5 = *(v3 - 2);
      return v5 | ((v2 == 0) << 32);
    }
  }

  v5 = 0;
  return v5 | ((v2 == 0) << 32);
}

void type metadata accessor for [ViewResponder](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _sSay7SwiftUI13ViewResponderCGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _sSay7SwiftUI13ViewResponderCGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _sSay7SwiftUI13ViewResponderCGMaTm_2(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _sSay7SwiftUI13ViewResponderCGMaTm_3(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _sSay7SwiftUI13ViewResponderCGMaTm_4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _sSay7SwiftUI13ViewResponderCGMaTm_5(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _sSay7SwiftUI13ViewResponderCGMaTm_6(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _sSay7SwiftUI13ViewResponderCGMaTm_7(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _sSay7SwiftUI13ViewResponderCGMaTm_8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _sSay7SwiftUI13ViewResponderCGMaTm_9(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(uint64_t a1)
{
  result = PreferenceKeys._index(of:)(&type metadata for DisplayList.Key);
  v3 = *(a1 + 16);
  if (result == v3)
  {
    return 0;
  }

  if (result < v3)
  {
    return *(a1 + 16 * result + 32) == &type metadata for DisplayList.Key;
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type HitTestBindingFilter and conformance HitTestBindingFilter()
{
  result = lazy protocol witness table cache variable for type HitTestBindingFilter and conformance HitTestBindingFilter;
  if (!lazy protocol witness table cache variable for type HitTestBindingFilter and conformance HitTestBindingFilter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HitTestBindingFilter and conformance HitTestBindingFilter);
  }

  return result;
}

uint64_t static ViewGraphFeatureBuffer._VTable.modifyViewOutputs(elt:outputs:inputs:graph:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = *(a3 + 48);
  v12[2] = *(a3 + 32);
  v12[3] = v8;
  v12[4] = *(a3 + 64);
  v13 = *(a3 + 80);
  v9 = *(a3 + 16);
  v12[0] = *a3;
  v12[1] = v9;
  v14 = v7;
  v10 = *(v4 + 176);
  _UnsafeHeterogeneousBuffer_Element.body<A>(as:)();
  return (*(*(v4 + 184) + 16))(a2, v12, a4, v10);
}

unint64_t _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA014ViewRespondersI0V_TtB5(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = *(a1 + 16) + 1;
  while (--v2)
  {
    v3 = v1 + 3;
    v4 = *v1;
    v1 += 3;
    if (v4 == &type metadata for ViewRespondersKey)
    {
      v5 = *(v3 - 2);
      return v5 | ((v2 == 0) << 32);
    }
  }

  v5 = 0;
  return v5 | ((v2 == 0) << 32);
}

unint64_t specialized HitTestBindingFeature.modifyViewOutputs(outputs:inputs:graph:)(uint64_t *a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 48);
  v16[2] = *(a2 + 32);
  v16[3] = v4;
  v16[4] = *(a2 + 64);
  v17 = *(a2 + 80);
  v5 = *(a2 + 16);
  v16[0] = *a2;
  v16[1] = v5;
  result = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(v4);
  if (result)
  {
    type metadata accessor for HitTestBindingResponder();
    v7 = swift_allocObject();
    v8 = *(a2 + 48);
    *(v7 + 120) = *(a2 + 32);
    *(v7 + 136) = v8;
    *(v7 + 152) = *(a2 + 64);
    v9 = *(a2 + 16);
    *(v7 + 88) = *a2;
    *(v7 + 184) = 0u;
    *(v7 + 200) = 0u;
    *(v7 + 168) = *(a2 + 80);
    *(v7 + 104) = v9;
    result = AGSubgraphGetCurrent();
    if (result)
    {
      v10 = MEMORY[0x1E69E7CC0];
      *(v7 + 176) = result;
      *(v7 + 40) = v10;
      *(v7 + 48) = 0u;
      *(v7 + 64) = 0u;
      *(v7 + 80) = v10;
      *(v7 + 24) = 0;
      swift_unknownObjectWeakInit();
      swift_weakInit();
      outlined init with copy of _ViewInputs(v16, v15);
      specialized static GraphHost.currentHost.getter();
      type metadata accessor for ViewGraph();
      v11 = swift_dynamicCastClassUnconditional();
      swift_beginAccess();
      swift_unknownObjectWeakLoadStrong();
      v12 = *(v11 + 208);

      swift_beginAccess();
      *(v7 + 24) = v12;
      swift_unknownObjectWeakAssign();
      swift_unknownObjectRelease();
      if ((_s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA014ViewRespondersI0V_TtB5(*a1) & 0x100000000) != 0)
      {
        specialized static GraphHost.currentHost.getter();
        swift_dynamicCastClassUnconditional();
        _sSay7SwiftUI13ViewResponderCGMaTm_5(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
        specialized GraphHost.intern<A>(_:for:id:)(MEMORY[0x1E69E7CC0], v13, 0);
      }

      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      _sSay7SwiftUI13ViewResponderCGMaTm_5(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
      lazy protocol witness table accessor for type HitTestBindingFilter and conformance HitTestBindingFilter();

      v14 = Attribute.init<A>(body:value:flags:update:)();

      PreferencesOutputs.subscript.setter(v14, &type metadata for ViewRespondersKey, &protocol witness table for ViewRespondersKey);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

unint64_t _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(uint64_t a1)
{
  result = PreferenceKeys._index(of:)(&type metadata for ViewRespondersKey);
  v3 = *(a1 + 16);
  if (result == v3)
  {
    return 0;
  }

  if (result < v3)
  {
    return *(a1 + 16 * result + 32) == &type metadata for ViewRespondersKey;
  }

  __break(1u);
  return result;
}

unint64_t PairwisePreferenceCombinerVisitor.visit<A>(key:)(uint64_t a1, ValueMetadata *a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = *(v3 + 2);
  v21 = *v3;
  v22 = v6;
  v7 = PreferencesOutputs.subscript.getter(a2, a2, a3);
  v8 = *(v3 + 6);
  v19 = v3[2];
  v20 = v8;
  result = PreferencesOutputs.subscript.getter(a2, a2, a3);
  if ((v7 & 0x100000000) != 0)
  {
    if ((result & 0x100000000) != 0)
    {
      return result;
    }

    LOBYTE(v18[0]) = 0;
    v13 = result;
    goto LABEL_7;
  }

  if ((result & 0x100000000) != 0)
  {
    LOBYTE(v18[0]) = 0;
    v13 = v7;
LABEL_7:
    v12 = v13;
    return PreferencesOutputs.subscript.setter(v12, a2, a2, a3);
  }

  v18[0] = v7;
  v18[1] = result;
  MEMORY[0x1EEE9AC00](result);
  v14[2] = swift_getAssociatedTypeWitness();
  v15 = type metadata accessor for PairPreferenceCombiner();
  WitnessTable = swift_getWitnessTable();
  v10 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v18, partial apply for closure #1 in Attribute.init<A>(_:), v14, v15, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);
  LOBYTE(v18[0]) = 0;
  v12 = v17;
  return PreferencesOutputs.subscript.setter(v12, a2, a2, a3);
}

uint64_t _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA07_ZStackC0V_Tt2t4B5@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v101 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  v80 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA010ScrollablehI0V_TtB5Tf4dn_n(v7);
  v74 = v7;
  v73 = v8;
  v9 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA16ScrollTargetRoleV07ContentI0V_TtB5Tf4dn_n(v7);
  v10 = *(a2 + 16);
  v96 = *a2;
  v97 = v10;
  v98 = *(a2 + 32);
  v11 = v96;
  outlined init with copy of _GraphInputs(&v96, &v88);
  v81 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE016ScrollTargetRoleF0019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(v11);
  v12 = *MEMORY[0x1E698D3F8];
  v13 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE21RemovePreferenceInput019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(v11);
  v83 = DWORD1(v98);
  v75 = a4;
  v78 = v11;
  if ((WORD2(v98) & 0x1000) != 0)
  {
    v82 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA24WithinAccessibilityRotorV_Tt2g5(v11);
  }

  else
  {
    v82 = 0;
  }

  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 20) = 1;
  v79 = v12;
  if (v80 & 1 | ((v83 & 0x22) != 0) || (v15 = v12, (v82 & 1) != 0))
  {
    v16 = v97;
    swift_beginAccess();
    *&v88 = __PAIR64__(*(v16 + 16), a1);
    DWORD2(v88) = v12;
    *&v89[0] = MEMORY[0x1E69E7CC0];
    *(&v89[0] + 1) = MEMORY[0x1E69E7CC0];
    LODWORD(v89[1]) = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for DynamicLayoutComputer<_ZStackLayout>, lazy protocol witness table accessor for type _ZStackLayout and conformance _ZStackLayout, &type metadata for _ZStackLayout, type metadata accessor for DynamicLayoutComputer);
    lazy protocol witness table accessor for type DynamicLayoutComputer<_ZStackLayout> and conformance DynamicLayoutComputer<A>();
    v17 = Attribute.init<A>(body:value:flags:update:)();
    swift_bridgeObjectRelease_n();
    *(v14 + 16) = v17;
    *(v14 + 20) = 0;
    v18 = *(a2 + 64);
    LODWORD(v88) = *(a2 + 72);
    *(&v88 + 4) = __PAIR64__(v17, v18);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for Axis?(0, &lazy cache variable for type metadata for [ViewGeometry], &type metadata for ViewGeometry, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type LayoutChildGeometries and conformance LayoutChildGeometries();
    v15 = Attribute.init<A>(body:value:flags:update:)();
  }

  v19 = *(a2 + 48);
  v92 = *(a2 + 32);
  v93 = v19;
  v94 = *(a2 + 64);
  v95 = *(a2 + 80);
  v20 = *(a2 + 16);
  v90 = *a2;
  v91 = v20;
  DWORD1(v92) = v83 & 0xFFFFFFFD;
  if (v9 & 1) != 0 && (v13)
  {
    v21 = v93;
    *&v99[0] = v93;
    v22 = PreferenceKeys._index(of:)(&type metadata for ScrollTargetRole.ContentKey);
    swift_retain_n();
    outlined init with copy of _ViewInputs(a2, &v88);

    v23 = *(v21 + 16);
    if (v22 != v23)
    {
      if (v22 >= v23)
      {
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      if (*(v21 + 16 * v22 + 32) == &type metadata for ScrollTargetRole.ContentKey)
      {
        specialized Array.remove(at:)(v22);
        v21 = v93;
      }
    }

    *&v88 = v21;
    v24 = PreferenceKeys._index(of:)(&type metadata for UpdateScrollStateRequestKey);

    v25 = *(v21 + 16);
    if (v24 != v25)
    {
      if (v24 >= v25)
      {
        goto LABEL_51;
      }

      if (*(v21 + 16 * v24 + 32) == &type metadata for UpdateScrollStateRequestKey)
      {
        specialized Array.remove(at:)(v24);
      }
    }
  }

  else
  {
    swift_retain_n();
    outlined init with copy of _ViewInputs(a2, &v88);
  }

  v26 = v79;
  if (v81 != v79)
  {

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE016ScrollTargetRoleF0019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(&v90, v79);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE21RemovePreferenceInput019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(&v90, 1);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE021ContentScrollPositionF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2B5(&v90, 0xFF00000000);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE027ContentScrollPositionAnchorF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2g5(&v90, v79);
  }

  v99[2] = v92;
  v99[3] = v93;
  v99[4] = v94;
  v100 = v95;
  v99[0] = v90;
  v99[1] = v91;
  v27 = _s7SwiftUI16DynamicContainerV04makeD07adaptor6inputs14AttributeGraph0H0VyAC4InfoVG_AA12_ViewOutputsVtx_AA01_K6InputsVtAA0cD7AdaptorRzlFZAA0c6LayoutkN0V_Tt2B5(&v84, a3 | (v15 << 32), partial apply for specialized mapMutator #1 <A>(thunk:) in static Layout.makeDynamicView(root:inputs:properties:list:), v14, v99);

  v87 = v27;
  v28 = swift_beginAccess();
  if ((*(v14 + 20) & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v28);
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for DynamicLayoutComputer<_ZStackLayout>, lazy protocol witness table accessor for type _ZStackLayout and conformance _ZStackLayout, &type metadata for _ZStackLayout, type metadata accessor for DynamicLayoutComputer);
    MEMORY[0x1EEE9AC00](v29);
    AGGraphMutateAttribute();
    v26 = v79;
  }

  if (!((v80 | v82) & 1 | (v81 != v26)))
  {
    outlined destroy of _GraphInputs(&v96);
    v38 = v75;
    goto LABEL_43;
  }

  v77 = AGCreateWeakAttribute();
  v30 = AGCreateWeakAttribute();
  v31 = v30;
  v72 = HIDWORD(v30);
  v32 = AGCreateWeakAttribute();
  v33 = v32;
  v71 = HIDWORD(v32);
  v65 = *(a2 + 64);
  v34 = AGCreateWeakAttribute();
  v35 = v34;
  v70 = HIDWORD(v34);
  v64 = *(a2 + 60);
  v36 = AGCreateWeakAttribute();
  v37 = v36;
  v69 = HIDWORD(v36);
  if (_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE010ScrollableF033_425A368F5B4FB640C2ED9A96D72B5AF3LLV_Tt2g5(v78) == v26)
  {
    LODWORD(v67) = 0;
    v68 = 0;
  }

  else
  {
    v39 = AGCreateWeakAttribute();
    v67 = HIDWORD(v39);
    v68 = v39;
  }

  _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA010ScrollablehI0V_TtB5(v84);
  v40 = AGCreateWeakAttribute();
  v41 = v40;
  v66 = HIDWORD(v40);
  if ((v80 | v82))
  {
    type metadata accessor for [ScrollableCollection](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Scrollable>, &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable, MEMORY[0x1E69E6F90]);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_18DDA6EB0;
    *(v42 + 56) = &type metadata for DynamicLayoutScrollable;
    *(v42 + 64) = &protocol witness table for DynamicLayoutScrollable;
    v43 = swift_allocObject();
    *(v42 + 32) = v43;
    *(v43 + 16) = v77;
    *(v43 + 24) = v31;
    *(v43 + 28) = v72;
    *(v43 + 32) = v33;
    *(v43 + 36) = v71;
    *(v43 + 40) = v35;
    *(v43 + 44) = v70;
    *(v43 + 48) = v37;
    *(v43 + 52) = v69;
    *(v43 + 56) = v68;
    *(v43 + 60) = v67;
    *(v43 + 64) = v41;
    *(v43 + 68) = v66;
    *&v88 = v42;
    type metadata accessor for [ScrollableCollection](0, &lazy cache variable for type metadata for [Scrollable], &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable, MEMORY[0x1E69E62F8]);
    v44 = Attribute.init<A>(body:value:flags:update:)();

    LOBYTE(v88) = 0;
    v45 = v44;
    v26 = v79;
    PreferencesOutputs.subscript.setter(v45, &type metadata for ScrollablePreferenceKey, &protocol witness table for ScrollablePreferenceKey);
  }

  if (v81 != v26)
  {
    *(&v89[0] + 1) = &type metadata for DynamicLayoutScrollable;
    *&v89[1] = &protocol witness table for DynamicLayoutScrollable;
    v46 = swift_allocObject();
    *&v88 = v46;
    *(v46 + 16) = v77;
    *(v46 + 24) = v31;
    *(v46 + 28) = v72;
    *(v46 + 32) = v33;
    *(v46 + 36) = v71;
    *(v46 + 40) = v35;
    *(v46 + 44) = v70;
    *(v46 + 48) = v37;
    *(v46 + 52) = v69;
    *(v46 + 56) = v68;
    *(v46 + 60) = v67;
    *(v46 + 64) = v41;
    *(v46 + 68) = v66;
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ScrollableCollection);
    v47 = Attribute.init<A>(body:value:flags:update:)();
    __swift_destroy_boxed_opaque_existential_1(&v88);
    *&v88 = v74;
    v48 = PreferenceKeys._index(of:)(&type metadata for ScrollTargetRole.ContentKey);
    v49 = *(v74 + 16);
    if (v48 == v49)
    {
LABEL_37:
      memset(&v89[4] + 8, 0, 28);
      *(&v89[3] + 8) = 0u;
      *&v88 = __PAIR64__(v64, v65);
      *(&v88 + 1) = __PAIR64__(v47, DWORD2(v97));
      if (one-time initialization token for layoutDirection != -1)
      {
        swift_once();
      }

      v54 = static CachedEnvironment.ID.layoutDirection;
      swift_beginAccess();
      v55 = specialized CachedEnvironment.attribute<A>(id:_:)(v54);
      v56 = swift_endAccess();
      LODWORD(v89[0]) = v55;
      *(v89 + 8) = v96;
      *(&v89[1] + 8) = v97;
      *(&v89[2] + 8) = v98;
      MEMORY[0x1EEE9AC00](v56);
      _s7SwiftUI18PreferencesOutputsV25makePreferenceTransformer6inputs3key9transformyAA0C6InputsV_xm14AttributeGraph0L0Vyy5ValueQzzcGyXKtAA0F3KeyRzlFAA024UpdateScrollStateRequestO0V_Tt0B5(v74, v73, implicit closure #9 in static Layout.makeDynamicView(root:inputs:properties:list:)partial apply);
      outlined destroy of ScrollStateRequestTransform(&v88);
      goto LABEL_41;
    }

    if (v48 < v49)
    {
      if (*(v74 + 16 * v48 + 32) == &type metadata for ScrollTargetRole.ContentKey)
      {
        *&v88 = __PAIR64__(v47, v81);
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for (_:)();
        lazy protocol witness table accessor for type ScrollTargetRole.SetLayout and conformance ScrollTargetRole.SetLayout();
        v50 = Attribute.init<A>(body:value:flags:update:)();
        v51 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA16ScrollTargetRoleV07ContentI0V_TtB5(v84);
        if ((v51 & 0x100000000) != 0)
        {
          v52 = v26;
        }

        else
        {
          v52 = v51;
        }

        *&v88 = __PAIR64__(v52, v50);
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for [ScrollTargetRole.Role : [ScrollableCollection]]();
        _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for PreferenceTransform<ScrollTargetRole.ContentKey>, &type metadata for ScrollTargetRole.ContentKey, &protocol witness table for ScrollTargetRole.ContentKey, type metadata accessor for PreferenceTransform);
        lazy protocol witness table accessor for type PreferenceTransform<ScrollTargetRole.ContentKey> and conformance PreferenceTransform<A>();
        v53 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v88) = 0;
        v26 = v79;
        PreferencesOutputs.subscript.setter(v53, &type metadata for ScrollTargetRole.ContentKey, &protocol witness table for ScrollTargetRole.ContentKey);
      }

      goto LABEL_37;
    }

    goto LABEL_50;
  }

  outlined destroy of _GraphInputs(&v96);
LABEL_41:
  v38 = v75;
  if (v82)
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE027LayoutAccessibilityProviderF033_BD5DB579992638706C312416A6669149LLV_Tt2g5(v78);
    v57 = *(a2 + 48);
    v89[1] = *(a2 + 32);
    v89[2] = v57;
    v89[3] = *(a2 + 64);
    LODWORD(v89[4]) = *(a2 + 80);
    v58 = *(a2 + 16);
    v88 = *a2;
    v89[0] = v58;
    (*(v59 + 8))(&v88, &v84);
  }

LABEL_43:
  if ((v83 & 2) != 0)
  {
    v60 = *(v14 + 16);
    v62 = *(v14 + 20);

    if (v62)
    {
      v60 = v26;
    }

    v61 = v85 | 0x80;
  }

  else
  {

    v61 = v85;
    v60 = v86;
  }

  v89[1] = v92;
  v89[2] = v93;
  v89[3] = v94;
  LODWORD(v89[4]) = v95;
  v88 = v90;
  v89[0] = v91;
  outlined destroy of _ViewInputs(&v88);

  *v38 = v84;
  *(v38 + 8) = v61;
  *(v38 + 12) = v60;
  return result;
}

unint64_t lazy protocol witness table accessor for type UniqueID and conformance UniqueID()
{
  result = lazy protocol witness table cache variable for type UniqueID and conformance UniqueID;
  if (!lazy protocol witness table cache variable for type UniqueID and conformance UniqueID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UniqueID and conformance UniqueID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UniqueID and conformance UniqueID;
  if (!lazy protocol witness table cache variable for type UniqueID and conformance UniqueID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UniqueID and conformance UniqueID);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ZStackLayout and conformance _ZStackLayout()
{
  result = lazy protocol witness table cache variable for type _ZStackLayout and conformance _ZStackLayout;
  if (!lazy protocol witness table cache variable for type _ZStackLayout and conformance _ZStackLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ZStackLayout and conformance _ZStackLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _ZStackLayout and conformance _ZStackLayout;
  if (!lazy protocol witness table cache variable for type _ZStackLayout and conformance _ZStackLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ZStackLayout and conformance _ZStackLayout);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<ContainerShapeKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<ContainerShapeKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<ContainerShapeKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContainerShapeKey>, &type metadata for ContainerShapeKey, &protocol witness table for ContainerShapeKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<ContainerShapeKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for _ZStackLayout(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _ZStackLayout and conformance _ZStackLayout();
  *(a1 + 8) = result;
  return result;
}

BOOL protocol witness for DynamicPropertyBox.update(property:phase:) in conformance Namespace.Box(uint64_t *a1)
{
  v3 = *v1;
  v4 = *v1;
  if (!*v1)
  {
    v4 = AGMakeUniqueID();
    *v1 = v4;
  }

  *a1 = v4;
  return v3 == 0;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _PaddingLayout(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t type metadata completion function for HStack()
{
  result = type metadata accessor for _VariadicView.Tree();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t assignWithTake for _ViewListOutputs.Views(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = *(result + 40);
    if (v3 >= 2)
    {
      v3 = *result + 2;
    }

    v4 = result;
    if (v3 == 1)
    {
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(result);
    }

    v5 = *(a2 + 40);
    if (v5 >= 2)
    {
      v5 = *a2 + 2;
    }

    result = v4;
    if (v5 == 1)
    {
      *v4 = *a2;
    }

    else
    {
      LOBYTE(v5) = 0;
      v6 = *(a2 + 16);
      *v4 = *a2;
      *(v4 + 16) = v6;
      *(v4 + 32) = *(a2 + 32);
    }

    *(v4 + 40) = v5;
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _FlexFrameLayout(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _FrameLayout(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t destroy for ForEachState.ItemList.WrappedList(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
}

void type metadata accessor for UnaryElements<BodyUnaryViewGenerator>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t static _ViewListOutputs.unaryViewList<A>(viewType:inputs:body:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v45 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 32);
  v44[1] = *(a1 + 16);
  v44[2] = v10;
  v44[0] = *a1;
  v11 = WORD2(v10);
  type metadata accessor for UnaryElements<BodyUnaryViewGenerator>(0, &lazy cache variable for type metadata for UnaryElements<BodyUnaryViewGenerator>, &type metadata for BodyUnaryViewGenerator, &protocol witness table for BodyUnaryViewGenerator, type metadata accessor for UnaryElements);
  v43[3] = v12;
  v43[4] = &protocol witness table for UnaryElements<A>;
  v13 = swift_allocObject();
  v43[0] = v13;
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  *(v13 + 32) = a4;
  v14 = *(a1 + 16);
  *(v13 + 40) = *a1;
  *(v13 + 56) = v14;
  *(v13 + 72) = *(a1 + 32);
  if ((v11 & 0x100) != 0)
  {
    v18 = *&v44[0];
    swift_retain_n();
    outlined init with copy of _GraphInputs(v44, v33);
    v19 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2g5(v18);
    Attribute = AGWeakAttributeGetAttribute();
    v16 = *MEMORY[0x1E698D3F8];
    v17 = Attribute == *MEMORY[0x1E698D3F8];
    if (Attribute == *MEMORY[0x1E698D3F8])
    {
      v15 = 0;
    }

    else
    {
      v15 = v19;
    }
  }

  else
  {
    swift_retain_n();
    outlined init with copy of _GraphInputs(v44, v33);
    v15 = 0;
    v16 = *MEMORY[0x1E698D3F8];
    v17 = 1;
  }

  v21 = *(a1 + 64);
  if (v21 != v16)
  {
    goto LABEL_13;
  }

  v22 = !v17;
  if ((*(a1 + 56) & 3) == 1)
  {
    v22 = 1;
  }

  if (v22 & 1) != 0 || (v23 = *(a1 + 128), v23 != 255) && ((v23 & 1) != 0 || (*(a1 + 120)))
  {
LABEL_13:
    outlined init with copy of AnyTrackedValue(v43, v32);
    v24 = *(a1 + 48);
    v25 = (*(a1 + 56) & 1) != 0 && (*(a1 + 56) & 2) == 0;
    v31 = *(a1 + 112);
    v26 = *(a1 + 128);
    v27 = *(a1 + 72);
    v28 = *(a1 + 80);
    if (v21 == v16)
    {
      v21 = v16;
    }

    outlined init with take of AnyTrackedValue(v32, v33);
    v34 = v24;
    v35 = v25;
    v36 = v15;
    v37 = v17;
    v38 = v31;
    v39 = v26;
    v40 = v27;
    v41 = v28;
    v42 = v21;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
    lazy protocol witness table accessor for type BaseViewList.Init and conformance BaseViewList.Init();

    v29 = Attribute.init<A>(body:value:flags:update:)();

    outlined destroy of BaseViewList.Init(v33);
    *a5 = v29;
    *(a5 + 8) = 0;
    *(a5 + 40) = 1;
  }

  else
  {

    outlined init with copy of AnyTrackedValue(v43, a5);
    *(a5 + 40) = 0;
    v24 = *(a1 + 48);
  }

  *(a5 + 48) = v24 + 1;
  *(a5 + 56) = 1;
  *(a5 + 64) = 0;
  return __swift_destroy_boxed_opaque_existential_1(v43);
}

uint64_t sub_18D04FA4C()
{

  return swift_deallocObject();
}

uint64_t static _VariadicView.Tree<>._makeViewList(view:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  outlined init with copy of _ViewListInputs(a2, v15);
  v11 = (*(*(a5 + 8) + 8))(a3, *(a5 + 8));

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA04ViewD12OptionsInputV_Tt2B5(v15, v11);

  v14[1] = v10;
  type metadata accessor for _VariadicView.Tree();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter(partial apply for closure #1 in static _VariadicView.Tree<>._makeView(view:inputs:), a3, v14);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  *(v12 + 32) = a5;
  *(v12 + 40) = a6;
  *(v12 + 48) = v10;
  (*(a5 + 40))(v14, v15, partial apply for closure #2 in static _VariadicView.Tree<>._makeViewList(view:inputs:), v12, a3, a5);

  return outlined destroy of _ViewListInputs(v15);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance GlassEffectContainerModifier@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  if (_s7SwiftUI23UserDefaultKeyedFeaturePAAE9isEnabledSbvgZAA19UnaryGlassContainer33_0D94FA50AC33D329AB9E24A7FB1C1182LLV_Ttg5())
  {
    v10 = AGCreateWeakAttribute();
    v11 = v10;
    v12 = HIDWORD(v10);
    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    *(v13 + 20) = v12;
    *(v13 + 24) = a3;
    *(v13 + 32) = a4;

    _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA28GlassEffectContainerModifier33_0D94FA50AC33D329AB9E24A7FB1C1182LLV_Tt0t3g5(a2, _s7SwiftUI12ViewModifierPAAE09makeUnaryC4List8modifier6inputs4bodyAA01_cG7OutputsVAA11_GraphValueVyxG_AA01_cG6InputsVAiA01_L0V_ANtctFZAA01_cK0VAA01_cN0VcfU_AA020GlassEffectContainerD033_0D94FA50AC33D329AB9E24A7FB1C1182LLV_Tt2G5TA, v13, a5);
  }

  else
  {
    a3();
    return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v9, a2);
  }
}

uint64_t sub_18D04FD38()
{

  return swift_deallocObject();
}

uint64_t specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(uint64_t a1, __int128 *a2)
{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for GlassEffectContainerModifier, &protocol witness table for GlassEffectContainerModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _FlexFrameLayout, &protocol witness table for _FlexFrameLayout);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _FrameLayout, &protocol witness table for _FrameLayout);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _PaddingLayout, &protocol witness table for _PaddingLayout);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _AppearanceActionModifier, &protocol witness table for _AppearanceActionModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _OpacityEffect, &protocol witness table for _OpacityEffect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for GlassEffectModifier, &protocol witness table for GlassEffectModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for GlassEffectIDModifier, &protocol witness table for GlassEffectIDModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for GlassEffectGroupModifier, &protocol witness table for GlassEffectGroupModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for GlassEffectTransitionModifier, &protocol witness table for GlassEffectTransitionModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _SafeAreaRegionsIgnoringLayout, &protocol witness table for _SafeAreaRegionsIgnoringLayout);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _AspectRatioLayout, &protocol witness table for _AspectRatioLayout);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _CompositingGroupEffect, &protocol witness table for _CompositingGroupEffect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _ScaleEffect, &protocol witness table for _ScaleEffect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _AllowsHitTestingModifier, &protocol witness table for _AllowsHitTestingModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _BlurEffect, &protocol witness table for _BlurEffect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _OffsetEffect, &protocol witness table for _OffsetEffect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _FixedSizeLayout, &protocol witness table for _FixedSizeLayout);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for ScrollPhaseStateConfigurationModifier, &protocol witness table for ScrollPhaseStateConfigurationModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for LazyContainerModifier, &protocol witness table for LazyContainerModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for LazyContainerContentModifier, &protocol witness table for LazyContainerContentModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for ResetScrollInputsModifier, &protocol witness table for ResetScrollInputsModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _SafeAreaIgnoringLayout, &protocol witness table for _SafeAreaIgnoringLayout);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for ScrapeableAttachmentViewModifier, &protocol witness table for ScrapeableAttachmentViewModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _AlignmentWritingModifier, &protocol witness table for _AlignmentWritingModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _BlendModeEffect, &protocol witness table for _BlendModeEffect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for TapGestureModifier, &protocol witness table for TapGestureModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _RotationEffect, &protocol witness table for _RotationEffect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for OpacityRendererEffect, &protocol witness table for OpacityRendererEffect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _GeometryGroupEffect, &protocol witness table for _GeometryGroupEffect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _DrawingGroupEffect, &protocol witness table for _DrawingGroupEffect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _ShadowEffect._Resolved, &protocol witness table for _ShadowEffect._Resolved);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, type metadata accessor for ReferenceDateModifier, &protocol witness table for ReferenceDateModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _ForegroundLayerViewModifier, &protocol witness table for _ForegroundLayerViewModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _ContentTransitionModifier, &protocol witness table for _ContentTransitionModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for PrivacyRedactionViewModifier, &protocol witness table for PrivacyRedactionViewModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for ResetDeltaModifier, &protocol witness table for ResetDeltaModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for IgnoresAutomaticPaddingLayout, &protocol witness table for IgnoresAutomaticPaddingLayout);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for SpacingLayout, &protocol witness table for SpacingLayout);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for CAFilterEffect, &protocol witness table for CAFilterEffect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for MoveTransition.MoveLayout, &protocol witness table for MoveTransition.MoveLayout);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for ScalePulseEffect, &protocol witness table for ScalePulseEffect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for FlexStateModifier, &protocol witness table for FlexStateModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for HiddenForReuseEffect, &protocol witness table for HiddenForReuseEffect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for ConcentricPaddingLayout, &protocol witness table for ConcentricPaddingLayout);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for GraphicsBlendModeEffect, &protocol witness table for GraphicsBlendModeEffect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for HiddenForLayoutModifier, &protocol witness table for HiddenForLayoutModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for GlassEffectHiddenModifier, &protocol witness table for GlassEffectHiddenModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for GlassEffectZIndexModifier, &protocol witness table for GlassEffectZIndexModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for ViewListArchivedAnimation.Effect, &protocol witness table for ViewListArchivedAnimation.Effect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for GlassAppearanceScaleEffect, &protocol witness table for GlassAppearanceScaleEffect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for ContainerCornerOffsetLayout, &protocol witness table for ContainerCornerOffsetLayout);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout, &protocol witness table for AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for AutomaticPaddingViewModifier, &protocol witness table for AutomaticPaddingViewModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for GlassEffectContainerModifier, &protocol witness table for GlassEffectContainerModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for EnableLegacyScrollEdgeEffectTag, &protocol witness table for EnableLegacyScrollEdgeEffectTag);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for GlassEffectPlatformItemModifier, &protocol witness table for GlassEffectPlatformItemModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for GlassContainerTintConfigModifier, &protocol witness table for GlassContainerTintConfigModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for GlassEffectBackdropProxyModifier, &protocol witness table for GlassEffectBackdropProxyModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for VerticalStackOrientationModifier, &protocol witness table for VerticalStackOrientationModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for DisableAccessibilityNodesModifier, &protocol witness table for DisableAccessibilityNodesModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for GlassEntryFlexInteractionModifier, &protocol witness table for GlassEntryFlexInteractionModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for PreferTextLayoutManagerInputModifier, &protocol witness table for PreferTextLayoutManagerInputModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for ContentCaptureProtectionPreferenceWriter, &protocol witness table for ContentCaptureProtectionPreferenceWriter);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for LayoutPriorityLayout, &protocol witness table for LayoutPriorityLayout);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _TransformEffect, &protocol witness table for _TransformEffect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, type metadata accessor for _AnchorWritingModifier<CGRect, GlassMaterialShapeKey>, &protocol witness table for _AnchorWritingModifier<A, B>);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for VariableBlurStyle, &protocol witness table for VariableBlurStyle);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, type metadata accessor for _ForegroundStyleModifier2<AngularGradient, Color>, &protocol witness table for _ForegroundStyleModifier2<A, B>);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _BackdropGroupEffect2, &protocol witness table for _BackdropGroupEffect2);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for GraphicsFilter, &protocol witness table for GraphicsFilter);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _ContrastEffect, &protocol witness table for _ContrastEffect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _PositionLayout, &protocol witness table for _PositionLayout);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _AlignmentLayout, &protocol witness table for _AlignmentLayout);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _GrayscaleEffect, &protocol witness table for _GrayscaleEffect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for GraphicsBlendMode, &protocol witness table for GraphicsBlendMode);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _BrightnessEffect, &protocol witness table for _BrightnessEffect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _Rotation3DEffect, &protocol witness table for _Rotation3DEffect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _SaturationEffect, &protocol witness table for _SaturationEffect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _ColorInvertEffect, &protocol witness table for _ColorInvertEffect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _ColorMatrixEffect, &protocol witness table for _ColorMatrixEffect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _HueRotationEffect, &protocol witness table for _HueRotationEffect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _ShaderFilterEffect, &protocol witness table for _ShaderFilterEffect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for LuminanceCurveEffect, &protocol witness table for LuminanceCurveEffect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _BackdropGroupEffect, &protocol witness table for _BackdropGroupEffect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _ColorMultiplyEffect._Resolved, &protocol witness table for _ColorMultiplyEffect._Resolved);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _AlphaThresholdEffect._Resolved, &protocol witness table for _AlphaThresholdEffect._Resolved);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _ColorMonochromeEffect._Resolved, &protocol witness table for _ColorMonochromeEffect._Resolved);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for ContentTransitionEffect, &protocol witness table for ContentTransitionEffect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _ContentTransitionGroup, &protocol witness table for _ContentTransitionGroup);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _LuminanceToAlphaEffect, &protocol witness table for _LuminanceToAlphaEffect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _SafeAreaInsetsModifier, &protocol witness table for _SafeAreaInsetsModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _ExtendedBlendModeEffect, &protocol witness table for _ExtendedBlendModeEffect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _ForegroundColorModifier, &protocol witness table for _ForegroundColorModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _BackdropGroupEffect_temp, &protocol witness table for _BackdropGroupEffect_temp);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for MayNotInsertCALayersEffect, &protocol witness table for MayNotInsertCALayersEffect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _BackdropGroupEffect_temp2, &protocol witness table for _BackdropGroupEffect_temp2);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _PremultipliedColorMatrixEffect, &protocol witness table for _PremultipliedColorMatrixEffect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _ForegroundLayerColorMatrixEffect, &protocol witness table for _ForegroundLayerColorMatrixEffect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _ForegroundLayerLevelViewModifier, &protocol witness table for _ForegroundLayerLevelViewModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _ForegroundLayerLevelColorMatrixEffect, &protocol witness table for _ForegroundLayerLevelColorMatrixEffect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for Shader.ResolvedShader, &protocol witness table for Shader.ResolvedShader);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, type metadata accessor for _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>, &protocol witness table for _InsetViewModifier<A>);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, type metadata accessor for _OverlayPreferenceModifier<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>, &protocol witness table for _OverlayPreferenceModifier<A, B>);
}

uint64_t type metadata completion function for _GlassEffectContainer()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

ValueMetadata *type metadata accessor for GlassEffectContainerModifier()
{
  return &type metadata for GlassEffectContainerModifier;
}

{
  return &type metadata for GlassEffectContainerModifier;
}

uint64_t static _VariadicView_UnaryViewRoot._makeViewList(root:inputs:body:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v13 = AGCreateWeakAttribute();
  v14 = v13;
  v15 = HIDWORD(v13);
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;
  *(v16 + 32) = v14;
  *(v16 + 36) = v15;
  *(v16 + 40) = v6;
  *(v16 + 48) = a2;
  *(v16 + 56) = a3;

  static _ViewListOutputs.unaryViewList<A>(viewType:inputs:body:)(a1, partial apply for closure #1 in static _VariadicView_UnaryViewRoot._makeViewList(root:inputs:body:), v16, a4, a6);
}

uint64_t sub_18D04FFFC()
{

  return swift_deallocObject();
}

uint64_t closure #1 in static _VariadicView.Tree<>._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12[2] = type metadata accessor for _VariadicView.Tree();
  v12[3] = a2;
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, a6, v12, a2, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v12[5];
}

void type metadata accessor for Range<Int>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _sSnySiGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _sSnySiGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _sSnySiGMaTm_2(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _sSnySiGMaTm_3(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _sSnySiGMaTm_4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _sSnySiGMaTm_5(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _sSnySiGMaTm_6(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t type metadata completion function for UnaryElements()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for UnaryElements(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 48 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    *v10 = *v11;
    *(v10 + 8) = *(v11 + 8);
    *(v10 + 16) = *(v11 + 16);
    *(v10 + 24) = *(v11 + 24);
    *(v10 + 28) = *(v11 + 28);
    *(v10 + 32) = *(v11 + 32);
    *(v10 + 36) = *(v11 + 36);
    *(v10 + 40) = *(v11 + 40);
  }

  return v3;
}

uint64_t initializeWithCopy for _ViewListOutputs(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if (v4)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
  }

  else
  {
    v5 = *(a2 + 24);
    *(a1 + 24) = v5;
    (**(v5 - 8))(a1, a2);
  }

  *(a1 + 40) = v4;
  v6 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v6;
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t closure #1 in closure #2 in static _VariadicView.Tree<>._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = type metadata accessor for _VariadicView.Tree();
  v10 = *(v9 + 44);
  v14[2] = v9;
  v14[3] = a3;
  v11 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v10, a6, v14, a3, MEMORY[0x1E69E73E0], v11, MEMORY[0x1E69E7410], v12);
  return v14[5];
}

uint64_t TypeConformance<>.visitType<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 8))(*v3, *v3, v3[1], a2);
}

{
  return (*(a3 + 8))(*v3, *v3, v3[1], a2);
}

uint64_t static MultiViewModifier._makeViewList(modifier:inputs:body:)(int *a1, __int128 *a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *a1;
  v9 = *(a6 + 8);
  a3();
  v11 = v8;
  return _ViewListOutputs.multiModifier<A>(_:inputs:)(&v11, a2, a5, v9);
}

unint64_t instantiation function for generic protocol witness table for Capsule(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Capsule and conformance Capsule();
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type Capsule and conformance Capsule();
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type Capsule and conformance Capsule();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Capsule and conformance Capsule()
{
  result = lazy protocol witness table cache variable for type Capsule and conformance Capsule;
  if (!lazy protocol witness table cache variable for type Capsule and conformance Capsule)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Capsule and conformance Capsule);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Capsule and conformance Capsule;
  if (!lazy protocol witness table cache variable for type Capsule and conformance Capsule)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Capsule and conformance Capsule);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Capsule and conformance Capsule;
  if (!lazy protocol witness table cache variable for type Capsule and conformance Capsule)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Capsule and conformance Capsule);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnimatableFrameAttribute and conformance AnimatableFrameAttribute()
{
  result = lazy protocol witness table cache variable for type AnimatableFrameAttribute and conformance AnimatableFrameAttribute;
  if (!lazy protocol witness table cache variable for type AnimatableFrameAttribute and conformance AnimatableFrameAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimatableFrameAttribute and conformance AnimatableFrameAttribute);
  }

  return result;
}

uint64_t initializeWithCopy for AnimatableFrameAttribute(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v3;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);

  return a1;
}

unint64_t protocol witness for ProtobufEnum.init(protobufValue:) in conformance RBTransitionEvents@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (HIDWORD(result))
  {
    v2 = 0;
  }

  else
  {
    v2 = result;
  }

  *a2 = v2;
  *(a2 + 4) = HIDWORD(result) != 0;
  return result;
}

uint64_t type metadata completion function for ConcentricEdgePaddingModifier()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t specialized static UnaryLayout<>.makeViewImpl(modifier:inputs:body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  v63 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 36);
  if ((v7 & 0x22) != 0)
  {
    v8 = *(a2 + 16);
    v9 = *(a2 + 16);
    v56 = *a2;
    v57 = v9;
    v10 = *(a2 + 32);
    v54 = *(a2 + 40);
    v55 = *(a2 + 56);
    v43 = *(a2 + 68);
    v11 = *(a2 + 76);
    v36 = a1;
    v35 = v8;
    if ((v7 & 0x20) != 0)
    {
      v41 = v10;
      v19 = a1;
      swift_beginAccess();
      v20 = *MEMORY[0x1E698D3F8];
      *&v51[0] = __PAIR64__(*(v8 + 16), v19);
      DWORD2(v51[0]) = v20;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      outlined init with copy of _ViewInputs(a2, v58);
      type metadata accessor for UnaryPositionAwareLayoutComputer<ContainerCornerOffsetLayout>(0, &lazy cache variable for type metadata for UnaryPositionAwareLayoutComputer<_SafeAreaRegionsIgnoringLayout>, lazy protocol witness table accessor for type _SafeAreaRegionsIgnoringLayout and conformance _SafeAreaRegionsIgnoringLayout, &type metadata for _SafeAreaRegionsIgnoringLayout, type metadata accessor for UnaryPositionAwareLayoutComputer);
      lazy protocol witness table accessor for type UnaryPositionAwareLayoutComputer<_SafeAreaRegionsIgnoringLayout> and conformance UnaryPositionAwareLayoutComputer<A>();
      v21 = Attribute.init<A>(body:value:flags:update:)();
      if (one-time initialization token for layoutDirection != -1)
      {
        swift_once();
      }

      v22 = static CachedEnvironment.ID.layoutDirection;
      swift_beginAccess();
      v23 = specialized CachedEnvironment.attribute<A>(id:_:)(v22);
      swift_endAccess();
      v24 = *(v8 + 16);
      v25 = *(a2 + 72);
      v26 = *(a2 + 76);
      *v58 = v21;
      *&v58[4] = v23;
      *&v58[12] = vrev64_s32(*(a2 + 60));
      *&v58[8] = v25;
      *&v58[20] = v24;
      *&v58[24] = v20;
      *&v58[28] = v26;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for UnaryPositionAwareLayoutComputer<ContainerCornerOffsetLayout>(0, &lazy cache variable for type metadata for UnaryPositionAwareChildGeometry<_SafeAreaRegionsIgnoringLayout>, lazy protocol witness table accessor for type _SafeAreaRegionsIgnoringLayout and conformance _SafeAreaRegionsIgnoringLayout, &type metadata for _SafeAreaRegionsIgnoringLayout, type metadata accessor for UnaryPositionAwareChildGeometry);
      lazy protocol witness table accessor for type UnaryPositionAwareChildGeometry<_SafeAreaRegionsIgnoringLayout> and conformance UnaryPositionAwareChildGeometry<A>();
      Attribute.init<A>(body:value:flags:update:)();
      OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
      v14 = AGGraphCreateOffsetAttribute2();
      v10 = v41 | 0x18;
      v15 = v7 | 2;
      v4 = a3;
    }

    else
    {
      OffsetAttribute2 = *(a2 + 72);
      v13 = *(a2 + 64);
      outlined init with copy of _ViewInputs(a2, v58);
      v14 = v13;
      v15 = v7;
    }

    v51[0] = v56;
    v51[1] = v57;
    v42 = v10;
    *&v52[0] = __PAIR64__(v15, v10);
    v37 = v15;
    v38 = v14;
    *(v52 + 8) = v54;
    *(&v52[1] + 1) = v55;
    *&v53[0] = __PAIR64__(v43, v14);
    v40 = OffsetAttribute2;
    DWORD2(v53[0]) = OffsetAttribute2;
    *(v53 + 12) = v11;
    v49[0] = v52[0];
    v49[1] = v52[1];
    v50[0] = v53[0];
    LODWORD(v50[1]) = HIDWORD(v11);
    v47 = v56;
    v48 = v57;
    v27 = outlined init with copy of _ViewInputs(v51, v58);
    v4(&v44, v27, &v47);
    v59 = v49[0];
    v60 = v49[1];
    v61 = v50[0];
    v62 = v50[1];
    *v58 = v47;
    *&v58[16] = v48;
    v28 = outlined destroy of _ViewInputs(v58);
    v29 = v44;
    v31 = v45;
    v30 = v46;
    if ((v7 & 0x20) != 0)
    {
      MEMORY[0x1EEE9AC00](v28);
      type metadata accessor for UnaryPositionAwareLayoutComputer<ContainerCornerOffsetLayout>(0, &lazy cache variable for type metadata for UnaryPositionAwareLayoutComputer<_SafeAreaRegionsIgnoringLayout>, lazy protocol witness table accessor for type _SafeAreaRegionsIgnoringLayout and conformance _SafeAreaRegionsIgnoringLayout, &type metadata for _SafeAreaRegionsIgnoringLayout, type metadata accessor for UnaryPositionAwareLayoutComputer);
      MEMORY[0x1EEE9AC00](v32);
      v33 = AGGraphMutateAttribute();
      MEMORY[0x1EEE9AC00](v33);
      type metadata accessor for UnaryPositionAwareLayoutComputer<ContainerCornerOffsetLayout>(0, &lazy cache variable for type metadata for UnaryPositionAwareChildGeometry<_SafeAreaRegionsIgnoringLayout>, lazy protocol witness table accessor for type _SafeAreaRegionsIgnoringLayout and conformance _SafeAreaRegionsIgnoringLayout, &type metadata for _SafeAreaRegionsIgnoringLayout, type metadata accessor for UnaryPositionAwareChildGeometry);
      MEMORY[0x1EEE9AC00](v34);
      AGGraphMutateAttribute();
    }

    if ((v7 & 2) != 0)
    {
      swift_beginAccess();
      *&v47 = __PAIR64__(*(v35 + 16), v36);
      DWORD2(v47) = v30;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for UnaryPositionAwareLayoutComputer<ContainerCornerOffsetLayout>(0, &lazy cache variable for type metadata for UnaryPositionAwareLayoutComputer<_SafeAreaRegionsIgnoringLayout>, lazy protocol witness table accessor for type _SafeAreaRegionsIgnoringLayout and conformance _SafeAreaRegionsIgnoringLayout, &type metadata for _SafeAreaRegionsIgnoringLayout, type metadata accessor for UnaryPositionAwareLayoutComputer);
      lazy protocol witness table accessor for type UnaryPositionAwareLayoutComputer<_SafeAreaRegionsIgnoringLayout> and conformance UnaryPositionAwareLayoutComputer<A>();
      v30 = Attribute.init<A>(body:value:flags:update:)();
      v31 |= 0x80u;
    }

    v47 = v56;
    v48 = v57;
    *&v49[0] = __PAIR64__(v37, v42);
    *(v49 + 8) = v54;
    *(&v49[1] + 1) = v55;
    *&v50[0] = __PAIR64__(v43, v38);
    DWORD2(v50[0]) = v40;
    *(v50 + 12) = v11;
    result = outlined destroy of _ViewInputs(&v47);
    *a4 = v29;
    *(a4 + 8) = v31;
    *(a4 + 12) = v30;
  }

  else
  {
    v16 = *(a2 + 48);
    v59 = *(a2 + 32);
    v60 = v16;
    v61 = *(a2 + 64);
    v62 = *(a2 + 80);
    v17 = *(a2 + 16);
    *v58 = *a2;
    *&v58[16] = v17;
    return (a3)(a1, v58);
  }

  return result;
}

{
  v56 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 36);
  if ((v5 & 0x22) != 0)
  {
    v6 = a1;
    v7 = *(a2 + 16);
    swift_beginAccess();
    v8 = *MEMORY[0x1E698D3F8];
    *&v50 = __PAIR64__(*(v7 + 16), v6);
    DWORD2(v50) = v8;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryLayoutComputer<_FlexFrameLayout>, lazy protocol witness table accessor for type _FlexFrameLayout and conformance _FlexFrameLayout, &type metadata for _FlexFrameLayout, type metadata accessor for UnaryLayoutComputer);
    lazy protocol witness table accessor for type UnaryLayoutComputer<_FlexFrameLayout> and conformance UnaryLayoutComputer<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    v9 = *(a2 + 16);
    v48 = *a2;
    v49 = v9;
    v10 = *(a2 + 32);
    v11 = *(a2 + 36);
    v46 = *(a2 + 40);
    v47 = *(a2 + 56);
    v12 = *(a2 + 68);
    v13 = *(a2 + 76);
    if ((v5 & 0x20) != 0)
    {
      v19 = v10;
      outlined init with copy of _ViewInputs(a2, &v50);
      if (one-time initialization token for layoutDirection != -1)
      {
        swift_once();
      }

      v20 = static CachedEnvironment.ID.layoutDirection;
      swift_beginAccess();
      v21 = specialized CachedEnvironment.attribute<A>(id:_:)(v20);
      swift_endAccess();
      LODWORD(v50) = *(a2 + 72);
      *(&v50 + 4) = __PAIR64__(v35, v21);
      HIDWORD(v50) = v8;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryChildGeometry<_FlexFrameLayout>, lazy protocol witness table accessor for type _FlexFrameLayout and conformance _FlexFrameLayout, &type metadata for _FlexFrameLayout, type metadata accessor for UnaryChildGeometry);
      lazy protocol witness table accessor for type UnaryChildGeometry<_FlexFrameLayout> and conformance UnaryChildGeometry<A>();
      Attribute.init<A>(body:value:flags:update:)();
      OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
      v22 = *(a2 + 64);
      *&v50 = __PAIR64__(AGGraphCreateOffsetAttribute2(), v22);
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for CGPoint(0);
      lazy protocol witness table accessor for type LayoutPositionQuery and conformance LayoutPositionQuery();
      v15 = Attribute.init<A>(body:value:flags:update:)();
      v10 = v19 | 0x18;
      v11 = v5 | 2;
    }

    else
    {
      OffsetAttribute2 = *(a2 + 72);
      v15 = *(a2 + 64);
      outlined init with copy of _ViewInputs(a2, &v50);
    }

    v43[0] = v48;
    v43[1] = v49;
    v32 = v10;
    v33 = v12;
    *&v44[0] = __PAIR64__(v11, v10);
    *(v44 + 8) = v46;
    *(&v44[1] + 1) = v47;
    *&v45[0] = __PAIR64__(v12, v15);
    DWORD2(v45[0]) = OffsetAttribute2;
    *(v45 + 12) = v13;
    v41[0] = v44[0];
    v41[1] = v44[1];
    v42[0] = v45[0];
    LODWORD(v42[1]) = HIDWORD(v13);
    v39 = v48;
    v40 = v49;
    v23 = outlined init with copy of _ViewInputs(v43, &v50);
    a3(&v36, v23, &v39);
    v52 = v41[0];
    v53 = v41[1];
    v54 = v42[0];
    v55 = v42[1];
    v50 = v39;
    v51 = v40;
    v24 = outlined destroy of _ViewInputs(&v50);
    v25 = v36;
    v27 = v37;
    v26 = v38;
    if ((v5 & 0x20) != 0)
    {
      MEMORY[0x1EEE9AC00](v24);
      MEMORY[0x1EEE9AC00](v28);
      v29 = AGGraphMutateAttribute();
      MEMORY[0x1EEE9AC00](v29);
      type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryChildGeometry<_FlexFrameLayout>, lazy protocol witness table accessor for type _FlexFrameLayout and conformance _FlexFrameLayout, &type metadata for _FlexFrameLayout, type metadata accessor for UnaryChildGeometry);
      MEMORY[0x1EEE9AC00](v30);
      AGGraphMutateAttribute();
    }

    if ((v5 & 2) != 0)
    {
      v26 = v35;
    }

    v39 = v48;
    v40 = v49;
    *&v41[0] = __PAIR64__(v11, v32);
    *(v41 + 8) = v46;
    *(&v41[1] + 1) = v47;
    *&v42[0] = __PAIR64__(v33, v15);
    DWORD2(v42[0]) = OffsetAttribute2;
    *(v42 + 12) = v13;
    result = outlined destroy of _ViewInputs(&v39);
    *a4 = v25;
    *(a4 + 8) = v27 | ((v5 & 2) << 6);
    *(a4 + 12) = v26;
  }

  else
  {
    v16 = *(a2 + 48);
    v52 = *(a2 + 32);
    v53 = v16;
    v54 = *(a2 + 64);
    v55 = *(a2 + 80);
    v17 = *(a2 + 16);
    v50 = *a2;
    v51 = v17;
    return (a3)(a1, &v50);
  }

  return result;
}

{
  v56 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 36);
  if ((v5 & 0x22) != 0)
  {
    v6 = a1;
    v7 = *(a2 + 16);
    swift_beginAccess();
    v8 = *MEMORY[0x1E698D3F8];
    *&v50 = __PAIR64__(*(v7 + 16), v6);
    DWORD2(v50) = v8;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryLayoutComputer<_FrameLayout>, lazy protocol witness table accessor for type _FrameLayout and conformance _FrameLayout, &type metadata for _FrameLayout, type metadata accessor for UnaryLayoutComputer);
    lazy protocol witness table accessor for type UnaryLayoutComputer<_FrameLayout> and conformance UnaryLayoutComputer<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    v9 = *(a2 + 16);
    v48 = *a2;
    v49 = v9;
    v10 = *(a2 + 32);
    v11 = *(a2 + 36);
    v46 = *(a2 + 40);
    v47 = *(a2 + 56);
    v12 = *(a2 + 68);
    v13 = *(a2 + 76);
    if ((v5 & 0x20) != 0)
    {
      v19 = v10;
      outlined init with copy of _ViewInputs(a2, &v50);
      if (one-time initialization token for layoutDirection != -1)
      {
        swift_once();
      }

      v20 = static CachedEnvironment.ID.layoutDirection;
      swift_beginAccess();
      v21 = specialized CachedEnvironment.attribute<A>(id:_:)(v20);
      swift_endAccess();
      LODWORD(v50) = *(a2 + 72);
      *(&v50 + 4) = __PAIR64__(v35, v21);
      HIDWORD(v50) = v8;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryChildGeometry<_FrameLayout>, lazy protocol witness table accessor for type _FrameLayout and conformance _FrameLayout, &type metadata for _FrameLayout, type metadata accessor for UnaryChildGeometry);
      lazy protocol witness table accessor for type UnaryChildGeometry<_FrameLayout> and conformance UnaryChildGeometry<A>();
      Attribute.init<A>(body:value:flags:update:)();
      OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
      v22 = *(a2 + 64);
      *&v50 = __PAIR64__(AGGraphCreateOffsetAttribute2(), v22);
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for CGPoint(0);
      lazy protocol witness table accessor for type LayoutPositionQuery and conformance LayoutPositionQuery();
      v15 = Attribute.init<A>(body:value:flags:update:)();
      v10 = v19 | 0x18;
      v11 = v5 | 2;
    }

    else
    {
      OffsetAttribute2 = *(a2 + 72);
      v15 = *(a2 + 64);
      outlined init with copy of _ViewInputs(a2, &v50);
    }

    v43[0] = v48;
    v43[1] = v49;
    v32 = v10;
    v33 = v12;
    *&v44[0] = __PAIR64__(v11, v10);
    *(v44 + 8) = v46;
    *(&v44[1] + 1) = v47;
    *&v45[0] = __PAIR64__(v12, v15);
    DWORD2(v45[0]) = OffsetAttribute2;
    *(v45 + 12) = v13;
    v41[0] = v44[0];
    v41[1] = v44[1];
    v42[0] = v45[0];
    LODWORD(v42[1]) = HIDWORD(v13);
    v39 = v48;
    v40 = v49;
    v23 = outlined init with copy of _ViewInputs(v43, &v50);
    a3(&v36, v23, &v39);
    v52 = v41[0];
    v53 = v41[1];
    v54 = v42[0];
    v55 = v42[1];
    v50 = v39;
    v51 = v40;
    v24 = outlined destroy of _ViewInputs(&v50);
    v25 = v36;
    v27 = v37;
    v26 = v38;
    if ((v5 & 0x20) != 0)
    {
      MEMORY[0x1EEE9AC00](v24);
      MEMORY[0x1EEE9AC00](v28);
      v29 = AGGraphMutateAttribute();
      MEMORY[0x1EEE9AC00](v29);
      type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryChildGeometry<_FrameLayout>, lazy protocol witness table accessor for type _FrameLayout and conformance _FrameLayout, &type metadata for _FrameLayout, type metadata accessor for UnaryChildGeometry);
      MEMORY[0x1EEE9AC00](v30);
      AGGraphMutateAttribute();
    }

    if ((v5 & 2) != 0)
    {
      v26 = v35;
    }

    v39 = v48;
    v40 = v49;
    *&v41[0] = __PAIR64__(v11, v32);
    *(v41 + 8) = v46;
    *(&v41[1] + 1) = v47;
    *&v42[0] = __PAIR64__(v33, v15);
    DWORD2(v42[0]) = OffsetAttribute2;
    *(v42 + 12) = v13;
    result = outlined destroy of _ViewInputs(&v39);
    *a4 = v25;
    *(a4 + 8) = v27 | ((v5 & 2) << 6);
    *(a4 + 12) = v26;
  }

  else
  {
    v16 = *(a2 + 48);
    v52 = *(a2 + 32);
    v53 = v16;
    v54 = *(a2 + 64);
    v55 = *(a2 + 80);
    v17 = *(a2 + 16);
    v50 = *a2;
    v51 = v17;
    return (a3)(a1, &v50);
  }

  return result;
}

{
  v56 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 36);
  if ((v5 & 0x22) != 0)
  {
    v6 = a1;
    v7 = *(a2 + 16);
    swift_beginAccess();
    v8 = *MEMORY[0x1E698D3F8];
    *&v50 = __PAIR64__(*(v7 + 16), v6);
    DWORD2(v50) = v8;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryLayoutComputer<_PaddingLayout>, lazy protocol witness table accessor for type _PaddingLayout and conformance _PaddingLayout, &type metadata for _PaddingLayout, type metadata accessor for UnaryLayoutComputer);
    lazy protocol witness table accessor for type UnaryLayoutComputer<_PaddingLayout> and conformance UnaryLayoutComputer<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    v9 = *(a2 + 16);
    v48 = *a2;
    v49 = v9;
    v10 = *(a2 + 32);
    v11 = *(a2 + 36);
    v46 = *(a2 + 40);
    v47 = *(a2 + 56);
    v12 = *(a2 + 68);
    v13 = *(a2 + 76);
    if ((v5 & 0x20) != 0)
    {
      v19 = v10;
      outlined init with copy of _ViewInputs(a2, &v50);
      if (one-time initialization token for layoutDirection != -1)
      {
        swift_once();
      }

      v20 = static CachedEnvironment.ID.layoutDirection;
      swift_beginAccess();
      v21 = specialized CachedEnvironment.attribute<A>(id:_:)(v20);
      swift_endAccess();
      LODWORD(v50) = *(a2 + 72);
      *(&v50 + 4) = __PAIR64__(v35, v21);
      HIDWORD(v50) = v8;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryChildGeometry<_PaddingLayout>, lazy protocol witness table accessor for type _PaddingLayout and conformance _PaddingLayout, &type metadata for _PaddingLayout, type metadata accessor for UnaryChildGeometry);
      lazy protocol witness table accessor for type UnaryChildGeometry<_PaddingLayout> and conformance UnaryChildGeometry<A>();
      Attribute.init<A>(body:value:flags:update:)();
      OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
      v22 = *(a2 + 64);
      *&v50 = __PAIR64__(AGGraphCreateOffsetAttribute2(), v22);
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for CGPoint(0);
      lazy protocol witness table accessor for type LayoutPositionQuery and conformance LayoutPositionQuery();
      v15 = Attribute.init<A>(body:value:flags:update:)();
      v10 = v19 | 0x18;
      v11 = v5 | 2;
    }

    else
    {
      OffsetAttribute2 = *(a2 + 72);
      v15 = *(a2 + 64);
      outlined init with copy of _ViewInputs(a2, &v50);
    }

    v43[0] = v48;
    v43[1] = v49;
    v32 = v10;
    v33 = v12;
    *&v44[0] = __PAIR64__(v11, v10);
    *(v44 + 8) = v46;
    *(&v44[1] + 1) = v47;
    *&v45[0] = __PAIR64__(v12, v15);
    DWORD2(v45[0]) = OffsetAttribute2;
    *(v45 + 12) = v13;
    v41[0] = v44[0];
    v41[1] = v44[1];
    v42[0] = v45[0];
    LODWORD(v42[1]) = HIDWORD(v13);
    v39 = v48;
    v40 = v49;
    v23 = outlined init with copy of _ViewInputs(v43, &v50);
    a3(&v36, v23, &v39);
    v52 = v41[0];
    v53 = v41[1];
    v54 = v42[0];
    v55 = v42[1];
    v50 = v39;
    v51 = v40;
    v24 = outlined destroy of _ViewInputs(&v50);
    v25 = v36;
    v27 = v37;
    v26 = v38;
    if ((v5 & 0x20) != 0)
    {
      MEMORY[0x1EEE9AC00](v24);
      MEMORY[0x1EEE9AC00](v28);
      v29 = AGGraphMutateAttribute();
      MEMORY[0x1EEE9AC00](v29);
      type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryChildGeometry<_PaddingLayout>, lazy protocol witness table accessor for type _PaddingLayout and conformance _PaddingLayout, &type metadata for _PaddingLayout, type metadata accessor for UnaryChildGeometry);
      MEMORY[0x1EEE9AC00](v30);
      AGGraphMutateAttribute();
    }

    if ((v5 & 2) != 0)
    {
      v26 = v35;
    }

    v39 = v48;
    v40 = v49;
    *&v41[0] = __PAIR64__(v11, v32);
    *(v41 + 8) = v46;
    *(&v41[1] + 1) = v47;
    *&v42[0] = __PAIR64__(v33, v15);
    DWORD2(v42[0]) = OffsetAttribute2;
    *(v42 + 12) = v13;
    result = outlined destroy of _ViewInputs(&v39);
    *a4 = v25;
    *(a4 + 8) = v27 | ((v5 & 2) << 6);
    *(a4 + 12) = v26;
  }

  else
  {
    v16 = *(a2 + 48);
    v52 = *(a2 + 32);
    v53 = v16;
    v54 = *(a2 + 64);
    v55 = *(a2 + 80);
    v17 = *(a2 + 16);
    v50 = *a2;
    v51 = v17;
    return (a3)(a1, &v50);
  }

  return result;
}

{
  v56 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 36);
  if ((v5 & 0x22) != 0)
  {
    v6 = a1;
    v7 = *(a2 + 16);
    swift_beginAccess();
    v8 = *MEMORY[0x1E698D3F8];
    *&v50 = __PAIR64__(*(v7 + 16), v6);
    DWORD2(v50) = v8;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryLayoutComputer<_AspectRatioLayout>, lazy protocol witness table accessor for type _AspectRatioLayout and conformance _AspectRatioLayout, &type metadata for _AspectRatioLayout, type metadata accessor for UnaryLayoutComputer);
    lazy protocol witness table accessor for type UnaryLayoutComputer<_AspectRatioLayout> and conformance UnaryLayoutComputer<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    v9 = *(a2 + 16);
    v48 = *a2;
    v49 = v9;
    v10 = *(a2 + 32);
    v11 = *(a2 + 36);
    v46 = *(a2 + 40);
    v47 = *(a2 + 56);
    v12 = *(a2 + 68);
    v13 = *(a2 + 76);
    if ((v5 & 0x20) != 0)
    {
      v19 = v10;
      outlined init with copy of _ViewInputs(a2, &v50);
      if (one-time initialization token for layoutDirection != -1)
      {
        swift_once();
      }

      v20 = static CachedEnvironment.ID.layoutDirection;
      swift_beginAccess();
      v21 = specialized CachedEnvironment.attribute<A>(id:_:)(v20);
      swift_endAccess();
      LODWORD(v50) = *(a2 + 72);
      *(&v50 + 4) = __PAIR64__(v35, v21);
      HIDWORD(v50) = v8;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryChildGeometry<_AspectRatioLayout>, lazy protocol witness table accessor for type _AspectRatioLayout and conformance _AspectRatioLayout, &type metadata for _AspectRatioLayout, type metadata accessor for UnaryChildGeometry);
      lazy protocol witness table accessor for type UnaryChildGeometry<_AspectRatioLayout> and conformance UnaryChildGeometry<A>();
      Attribute.init<A>(body:value:flags:update:)();
      OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
      v22 = *(a2 + 64);
      *&v50 = __PAIR64__(AGGraphCreateOffsetAttribute2(), v22);
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for CGPoint(0);
      lazy protocol witness table accessor for type LayoutPositionQuery and conformance LayoutPositionQuery();
      v15 = Attribute.init<A>(body:value:flags:update:)();
      v10 = v19 | 0x18;
      v11 = v5 | 2;
    }

    else
    {
      OffsetAttribute2 = *(a2 + 72);
      v15 = *(a2 + 64);
      outlined init with copy of _ViewInputs(a2, &v50);
    }

    v43[0] = v48;
    v43[1] = v49;
    v32 = v10;
    v33 = v12;
    *&v44[0] = __PAIR64__(v11, v10);
    *(v44 + 8) = v46;
    *(&v44[1] + 1) = v47;
    *&v45[0] = __PAIR64__(v12, v15);
    DWORD2(v45[0]) = OffsetAttribute2;
    *(v45 + 12) = v13;
    v41[0] = v44[0];
    v41[1] = v44[1];
    v42[0] = v45[0];
    LODWORD(v42[1]) = HIDWORD(v13);
    v39 = v48;
    v40 = v49;
    v23 = outlined init with copy of _ViewInputs(v43, &v50);
    a3(&v36, v23, &v39);
    v52 = v41[0];
    v53 = v41[1];
    v54 = v42[0];
    v55 = v42[1];
    v50 = v39;
    v51 = v40;
    v24 = outlined destroy of _ViewInputs(&v50);
    v25 = v36;
    v27 = v37;
    v26 = v38;
    if ((v5 & 0x20) != 0)
    {
      MEMORY[0x1EEE9AC00](v24);
      MEMORY[0x1EEE9AC00](v28);
      v29 = AGGraphMutateAttribute();
      MEMORY[0x1EEE9AC00](v29);
      type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryChildGeometry<_AspectRatioLayout>, lazy protocol witness table accessor for type _AspectRatioLayout and conformance _AspectRatioLayout, &type metadata for _AspectRatioLayout, type metadata accessor for UnaryChildGeometry);
      MEMORY[0x1EEE9AC00](v30);
      AGGraphMutateAttribute();
    }

    if ((v5 & 2) != 0)
    {
      v26 = v35;
    }

    v39 = v48;
    v40 = v49;
    *&v41[0] = __PAIR64__(v11, v32);
    *(v41 + 8) = v46;
    *(&v41[1] + 1) = v47;
    *&v42[0] = __PAIR64__(v33, v15);
    DWORD2(v42[0]) = OffsetAttribute2;
    *(v42 + 12) = v13;
    result = outlined destroy of _ViewInputs(&v39);
    *a4 = v25;
    *(a4 + 8) = v27 | ((v5 & 2) << 6);
    *(a4 + 12) = v26;
  }

  else
  {
    v16 = *(a2 + 48);
    v52 = *(a2 + 32);
    v53 = v16;
    v54 = *(a2 + 64);
    v55 = *(a2 + 80);
    v17 = *(a2 + 16);
    v50 = *a2;
    v51 = v17;
    return (a3)(a1, &v50);
  }

  return result;
}

{
  v56 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 36);
  if ((v5 & 0x22) != 0)
  {
    v6 = a1;
    v7 = *(a2 + 16);
    swift_beginAccess();
    v8 = *MEMORY[0x1E698D3F8];
    *&v50 = __PAIR64__(*(v7 + 16), v6);
    DWORD2(v50) = v8;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryLayoutComputer<LayoutPriorityLayout>, lazy protocol witness table accessor for type LayoutPriorityLayout and conformance LayoutPriorityLayout, &type metadata for LayoutPriorityLayout, type metadata accessor for UnaryLayoutComputer);
    lazy protocol witness table accessor for type UnaryLayoutComputer<LayoutPriorityLayout> and conformance UnaryLayoutComputer<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    v9 = *(a2 + 16);
    v48 = *a2;
    v49 = v9;
    v10 = *(a2 + 32);
    v11 = *(a2 + 36);
    v46 = *(a2 + 40);
    v47 = *(a2 + 56);
    v12 = *(a2 + 68);
    v13 = *(a2 + 76);
    if ((v5 & 0x20) != 0)
    {
      v19 = v10;
      outlined init with copy of _ViewInputs(a2, &v50);
      if (one-time initialization token for layoutDirection != -1)
      {
        swift_once();
      }

      v20 = static CachedEnvironment.ID.layoutDirection;
      swift_beginAccess();
      v21 = specialized CachedEnvironment.attribute<A>(id:_:)(v20);
      swift_endAccess();
      LODWORD(v50) = *(a2 + 72);
      *(&v50 + 4) = __PAIR64__(v35, v21);
      HIDWORD(v50) = v8;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryChildGeometry<LayoutPriorityLayout>, lazy protocol witness table accessor for type LayoutPriorityLayout and conformance LayoutPriorityLayout, &type metadata for LayoutPriorityLayout, type metadata accessor for UnaryChildGeometry);
      lazy protocol witness table accessor for type UnaryChildGeometry<LayoutPriorityLayout> and conformance UnaryChildGeometry<A>();
      Attribute.init<A>(body:value:flags:update:)();
      OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
      v22 = *(a2 + 64);
      *&v50 = __PAIR64__(AGGraphCreateOffsetAttribute2(), v22);
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for CGPoint(0);
      lazy protocol witness table accessor for type LayoutPositionQuery and conformance LayoutPositionQuery();
      v15 = Attribute.init<A>(body:value:flags:update:)();
      v10 = v19 | 0x18;
      v11 = v5 | 2;
    }

    else
    {
      OffsetAttribute2 = *(a2 + 72);
      v15 = *(a2 + 64);
      outlined init with copy of _ViewInputs(a2, &v50);
    }

    v43[0] = v48;
    v43[1] = v49;
    v32 = v10;
    v33 = v12;
    *&v44[0] = __PAIR64__(v11, v10);
    *(v44 + 8) = v46;
    *(&v44[1] + 1) = v47;
    *&v45[0] = __PAIR64__(v12, v15);
    DWORD2(v45[0]) = OffsetAttribute2;
    *(v45 + 12) = v13;
    v41[0] = v44[0];
    v41[1] = v44[1];
    v42[0] = v45[0];
    LODWORD(v42[1]) = HIDWORD(v13);
    v39 = v48;
    v40 = v49;
    v23 = outlined init with copy of _ViewInputs(v43, &v50);
    a3(&v36, v23, &v39);
    v52 = v41[0];
    v53 = v41[1];
    v54 = v42[0];
    v55 = v42[1];
    v50 = v39;
    v51 = v40;
    v24 = outlined destroy of _ViewInputs(&v50);
    v25 = v36;
    v27 = v37;
    v26 = v38;
    if ((v5 & 0x20) != 0)
    {
      MEMORY[0x1EEE9AC00](v24);
      MEMORY[0x1EEE9AC00](v28);
      v29 = AGGraphMutateAttribute();
      MEMORY[0x1EEE9AC00](v29);
      type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryChildGeometry<LayoutPriorityLayout>, lazy protocol witness table accessor for type LayoutPriorityLayout and conformance LayoutPriorityLayout, &type metadata for LayoutPriorityLayout, type metadata accessor for UnaryChildGeometry);
      MEMORY[0x1EEE9AC00](v30);
      AGGraphMutateAttribute();
    }

    if ((v5 & 2) != 0)
    {
      v26 = v35;
    }

    v39 = v48;
    v40 = v49;
    *&v41[0] = __PAIR64__(v11, v32);
    *(v41 + 8) = v46;
    *(&v41[1] + 1) = v47;
    *&v42[0] = __PAIR64__(v33, v15);
    DWORD2(v42[0]) = OffsetAttribute2;
    *(v42 + 12) = v13;
    result = outlined destroy of _ViewInputs(&v39);
    *a4 = v25;
    *(a4 + 8) = v27 | ((v5 & 2) << 6);
    *(a4 + 12) = v26;
  }

  else
  {
    v16 = *(a2 + 48);
    v52 = *(a2 + 32);
    v53 = v16;
    v54 = *(a2 + 64);
    v55 = *(a2 + 80);
    v17 = *(a2 + 16);
    v50 = *a2;
    v51 = v17;
    return (a3)(a1, &v50);
  }

  return result;
}

{
  v4 = a3;
  v63 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 36);
  if ((v7 & 0x22) != 0)
  {
    v8 = *(a2 + 16);
    v9 = *(a2 + 16);
    v56 = *a2;
    v57 = v9;
    v10 = *(a2 + 32);
    v54 = *(a2 + 40);
    v55 = *(a2 + 56);
    v43 = *(a2 + 68);
    v11 = *(a2 + 76);
    v36 = a1;
    v35 = v8;
    if ((v7 & 0x20) != 0)
    {
      v41 = v10;
      v19 = a1;
      swift_beginAccess();
      v20 = *MEMORY[0x1E698D3F8];
      *&v51[0] = __PAIR64__(*(v8 + 16), v19);
      DWORD2(v51[0]) = v20;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      outlined init with copy of _ViewInputs(a2, v58);
      type metadata accessor for UnaryPositionAwareLayoutComputer<ContainerCornerOffsetLayout>(0, &lazy cache variable for type metadata for UnaryPositionAwareLayoutComputer<_SafeAreaIgnoringLayout>, lazy protocol witness table accessor for type _SafeAreaIgnoringLayout and conformance _SafeAreaIgnoringLayout, &type metadata for _SafeAreaIgnoringLayout, type metadata accessor for UnaryPositionAwareLayoutComputer);
      lazy protocol witness table accessor for type UnaryPositionAwareLayoutComputer<_SafeAreaIgnoringLayout> and conformance UnaryPositionAwareLayoutComputer<A>();
      v21 = Attribute.init<A>(body:value:flags:update:)();
      if (one-time initialization token for layoutDirection != -1)
      {
        swift_once();
      }

      v22 = static CachedEnvironment.ID.layoutDirection;
      swift_beginAccess();
      v23 = specialized CachedEnvironment.attribute<A>(id:_:)(v22);
      swift_endAccess();
      v24 = *(v8 + 16);
      v25 = *(a2 + 72);
      v26 = *(a2 + 76);
      *v58 = v21;
      *&v58[4] = v23;
      *&v58[12] = vrev64_s32(*(a2 + 60));
      *&v58[8] = v25;
      *&v58[20] = v24;
      *&v58[24] = v20;
      *&v58[28] = v26;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for UnaryPositionAwareLayoutComputer<ContainerCornerOffsetLayout>(0, &lazy cache variable for type metadata for UnaryPositionAwareChildGeometry<_SafeAreaIgnoringLayout>, lazy protocol witness table accessor for type _SafeAreaIgnoringLayout and conformance _SafeAreaIgnoringLayout, &type metadata for _SafeAreaIgnoringLayout, type metadata accessor for UnaryPositionAwareChildGeometry);
      lazy protocol witness table accessor for type UnaryPositionAwareChildGeometry<_SafeAreaIgnoringLayout> and conformance UnaryPositionAwareChildGeometry<A>();
      Attribute.init<A>(body:value:flags:update:)();
      OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
      v14 = AGGraphCreateOffsetAttribute2();
      v10 = v41 | 0x18;
      v15 = v7 | 2;
      v4 = a3;
    }

    else
    {
      OffsetAttribute2 = *(a2 + 72);
      v13 = *(a2 + 64);
      outlined init with copy of _ViewInputs(a2, v58);
      v14 = v13;
      v15 = v7;
    }

    v51[0] = v56;
    v51[1] = v57;
    v42 = v10;
    *&v52[0] = __PAIR64__(v15, v10);
    v37 = v15;
    v38 = v14;
    *(v52 + 8) = v54;
    *(&v52[1] + 1) = v55;
    *&v53[0] = __PAIR64__(v43, v14);
    v40 = OffsetAttribute2;
    DWORD2(v53[0]) = OffsetAttribute2;
    *(v53 + 12) = v11;
    v49[0] = v52[0];
    v49[1] = v52[1];
    v50[0] = v53[0];
    LODWORD(v50[1]) = HIDWORD(v11);
    v47 = v56;
    v48 = v57;
    v27 = outlined init with copy of _ViewInputs(v51, v58);
    v4(&v44, v27, &v47);
    v59 = v49[0];
    v60 = v49[1];
    v61 = v50[0];
    v62 = v50[1];
    *v58 = v47;
    *&v58[16] = v48;
    v28 = outlined destroy of _ViewInputs(v58);
    v29 = v44;
    v31 = v45;
    v30 = v46;
    if ((v7 & 0x20) != 0)
    {
      MEMORY[0x1EEE9AC00](v28);
      type metadata accessor for UnaryPositionAwareLayoutComputer<ContainerCornerOffsetLayout>(0, &lazy cache variable for type metadata for UnaryPositionAwareLayoutComputer<_SafeAreaIgnoringLayout>, lazy protocol witness table accessor for type _SafeAreaIgnoringLayout and conformance _SafeAreaIgnoringLayout, &type metadata for _SafeAreaIgnoringLayout, type metadata accessor for UnaryPositionAwareLayoutComputer);
      MEMORY[0x1EEE9AC00](v32);
      v33 = AGGraphMutateAttribute();
      MEMORY[0x1EEE9AC00](v33);
      type metadata accessor for UnaryPositionAwareLayoutComputer<ContainerCornerOffsetLayout>(0, &lazy cache variable for type metadata for UnaryPositionAwareChildGeometry<_SafeAreaIgnoringLayout>, lazy protocol witness table accessor for type _SafeAreaIgnoringLayout and conformance _SafeAreaIgnoringLayout, &type metadata for _SafeAreaIgnoringLayout, type metadata accessor for UnaryPositionAwareChildGeometry);
      MEMORY[0x1EEE9AC00](v34);
      AGGraphMutateAttribute();
    }

    if ((v7 & 2) != 0)
    {
      swift_beginAccess();
      *&v47 = __PAIR64__(*(v35 + 16), v36);
      DWORD2(v47) = v30;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for UnaryPositionAwareLayoutComputer<ContainerCornerOffsetLayout>(0, &lazy cache variable for type metadata for UnaryPositionAwareLayoutComputer<_SafeAreaIgnoringLayout>, lazy protocol witness table accessor for type _SafeAreaIgnoringLayout and conformance _SafeAreaIgnoringLayout, &type metadata for _SafeAreaIgnoringLayout, type metadata accessor for UnaryPositionAwareLayoutComputer);
      lazy protocol witness table accessor for type UnaryPositionAwareLayoutComputer<_SafeAreaIgnoringLayout> and conformance UnaryPositionAwareLayoutComputer<A>();
      v30 = Attribute.init<A>(body:value:flags:update:)();
      v31 |= 0x80u;
    }

    v47 = v56;
    v48 = v57;
    *&v49[0] = __PAIR64__(v37, v42);
    *(v49 + 8) = v54;
    *(&v49[1] + 1) = v55;
    *&v50[0] = __PAIR64__(v43, v38);
    DWORD2(v50[0]) = v40;
    *(v50 + 12) = v11;
    result = outlined destroy of _ViewInputs(&v47);
    *a4 = v29;
    *(a4 + 8) = v31;
    *(a4 + 12) = v30;
  }

  else
  {
    v16 = *(a2 + 48);
    v59 = *(a2 + 32);
    v60 = v16;
    v61 = *(a2 + 64);
    v62 = *(a2 + 80);
    v17 = *(a2 + 16);
    *v58 = *a2;
    *&v58[16] = v17;
    return (a3)(a1, v58);
  }

  return result;
}

{
  v56 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 36);
  if ((v5 & 0x22) != 0)
  {
    v6 = a1;
    v7 = *(a2 + 16);
    swift_beginAccess();
    v8 = *MEMORY[0x1E698D3F8];
    *&v50 = __PAIR64__(*(v7 + 16), v6);
    DWORD2(v50) = v8;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryLayoutComputer<SpacingLayout>, lazy protocol witness table accessor for type SpacingLayout and conformance SpacingLayout, &type metadata for SpacingLayout, type metadata accessor for UnaryLayoutComputer);
    lazy protocol witness table accessor for type UnaryLayoutComputer<SpacingLayout> and conformance UnaryLayoutComputer<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    v9 = *(a2 + 16);
    v48 = *a2;
    v49 = v9;
    v10 = *(a2 + 32);
    v11 = *(a2 + 36);
    v46 = *(a2 + 40);
    v47 = *(a2 + 56);
    v12 = *(a2 + 68);
    v13 = *(a2 + 76);
    if ((v5 & 0x20) != 0)
    {
      v19 = v10;
      outlined init with copy of _ViewInputs(a2, &v50);
      if (one-time initialization token for layoutDirection != -1)
      {
        swift_once();
      }

      v20 = static CachedEnvironment.ID.layoutDirection;
      swift_beginAccess();
      v21 = specialized CachedEnvironment.attribute<A>(id:_:)(v20);
      swift_endAccess();
      LODWORD(v50) = *(a2 + 72);
      *(&v50 + 4) = __PAIR64__(v35, v21);
      HIDWORD(v50) = v8;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryChildGeometry<SpacingLayout>, lazy protocol witness table accessor for type SpacingLayout and conformance SpacingLayout, &type metadata for SpacingLayout, type metadata accessor for UnaryChildGeometry);
      lazy protocol witness table accessor for type UnaryChildGeometry<SpacingLayout> and conformance UnaryChildGeometry<A>();
      Attribute.init<A>(body:value:flags:update:)();
      OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
      v22 = *(a2 + 64);
      *&v50 = __PAIR64__(AGGraphCreateOffsetAttribute2(), v22);
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for CGPoint(0);
      lazy protocol witness table accessor for type LayoutPositionQuery and conformance LayoutPositionQuery();
      v15 = Attribute.init<A>(body:value:flags:update:)();
      v10 = v19 | 0x18;
      v11 = v5 | 2;
    }

    else
    {
      OffsetAttribute2 = *(a2 + 72);
      v15 = *(a2 + 64);
      outlined init with copy of _ViewInputs(a2, &v50);
    }

    v43[0] = v48;
    v43[1] = v49;
    v32 = v10;
    v33 = v12;
    *&v44[0] = __PAIR64__(v11, v10);
    *(v44 + 8) = v46;
    *(&v44[1] + 1) = v47;
    *&v45[0] = __PAIR64__(v12, v15);
    DWORD2(v45[0]) = OffsetAttribute2;
    *(v45 + 12) = v13;
    v41[0] = v44[0];
    v41[1] = v44[1];
    v42[0] = v45[0];
    LODWORD(v42[1]) = HIDWORD(v13);
    v39 = v48;
    v40 = v49;
    v23 = outlined init with copy of _ViewInputs(v43, &v50);
    a3(&v36, v23, &v39);
    v52 = v41[0];
    v53 = v41[1];
    v54 = v42[0];
    v55 = v42[1];
    v50 = v39;
    v51 = v40;
    v24 = outlined destroy of _ViewInputs(&v50);
    v25 = v36;
    v27 = v37;
    v26 = v38;
    if ((v5 & 0x20) != 0)
    {
      MEMORY[0x1EEE9AC00](v24);
      MEMORY[0x1EEE9AC00](v28);
      v29 = AGGraphMutateAttribute();
      MEMORY[0x1EEE9AC00](v29);
      type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryChildGeometry<SpacingLayout>, lazy protocol witness table accessor for type SpacingLayout and conformance SpacingLayout, &type metadata for SpacingLayout, type metadata accessor for UnaryChildGeometry);
      MEMORY[0x1EEE9AC00](v30);
      AGGraphMutateAttribute();
    }

    if ((v5 & 2) != 0)
    {
      v26 = v35;
    }

    v39 = v48;
    v40 = v49;
    *&v41[0] = __PAIR64__(v11, v32);
    *(v41 + 8) = v46;
    *(&v41[1] + 1) = v47;
    *&v42[0] = __PAIR64__(v33, v15);
    DWORD2(v42[0]) = OffsetAttribute2;
    *(v42 + 12) = v13;
    result = outlined destroy of _ViewInputs(&v39);
    *a4 = v25;
    *(a4 + 8) = v27 | ((v5 & 2) << 6);
    *(a4 + 12) = v26;
  }

  else
  {
    v16 = *(a2 + 48);
    v52 = *(a2 + 32);
    v53 = v16;
    v54 = *(a2 + 64);
    v55 = *(a2 + 80);
    v17 = *(a2 + 16);
    v50 = *a2;
    v51 = v17;
    return (a3)(a1, &v50);
  }

  return result;
}

{
  v56 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 36);
  if ((v5 & 0x22) != 0)
  {
    v6 = a1;
    v7 = *(a2 + 16);
    swift_beginAccess();
    v8 = *MEMORY[0x1E698D3F8];
    *&v50 = __PAIR64__(*(v7 + 16), v6);
    DWORD2(v50) = v8;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryLayoutComputer<_FixedSizeLayout>, lazy protocol witness table accessor for type _FixedSizeLayout and conformance _FixedSizeLayout, &type metadata for _FixedSizeLayout, type metadata accessor for UnaryLayoutComputer);
    lazy protocol witness table accessor for type UnaryLayoutComputer<_FixedSizeLayout> and conformance UnaryLayoutComputer<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    v9 = *(a2 + 16);
    v48 = *a2;
    v49 = v9;
    v10 = *(a2 + 32);
    v11 = *(a2 + 36);
    v46 = *(a2 + 40);
    v47 = *(a2 + 56);
    v12 = *(a2 + 68);
    v13 = *(a2 + 76);
    if ((v5 & 0x20) != 0)
    {
      v19 = v10;
      outlined init with copy of _ViewInputs(a2, &v50);
      if (one-time initialization token for layoutDirection != -1)
      {
        swift_once();
      }

      v20 = static CachedEnvironment.ID.layoutDirection;
      swift_beginAccess();
      v21 = specialized CachedEnvironment.attribute<A>(id:_:)(v20);
      swift_endAccess();
      LODWORD(v50) = *(a2 + 72);
      *(&v50 + 4) = __PAIR64__(v35, v21);
      HIDWORD(v50) = v8;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryChildGeometry<_FixedSizeLayout>, lazy protocol witness table accessor for type _FixedSizeLayout and conformance _FixedSizeLayout, &type metadata for _FixedSizeLayout, type metadata accessor for UnaryChildGeometry);
      lazy protocol witness table accessor for type UnaryChildGeometry<_FixedSizeLayout> and conformance UnaryChildGeometry<A>();
      Attribute.init<A>(body:value:flags:update:)();
      OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
      v22 = *(a2 + 64);
      *&v50 = __PAIR64__(AGGraphCreateOffsetAttribute2(), v22);
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for CGPoint(0);
      lazy protocol witness table accessor for type LayoutPositionQuery and conformance LayoutPositionQuery();
      v15 = Attribute.init<A>(body:value:flags:update:)();
      v10 = v19 | 0x18;
      v11 = v5 | 2;
    }

    else
    {
      OffsetAttribute2 = *(a2 + 72);
      v15 = *(a2 + 64);
      outlined init with copy of _ViewInputs(a2, &v50);
    }

    v43[0] = v48;
    v43[1] = v49;
    v32 = v10;
    v33 = v12;
    *&v44[0] = __PAIR64__(v11, v10);
    *(v44 + 8) = v46;
    *(&v44[1] + 1) = v47;
    *&v45[0] = __PAIR64__(v12, v15);
    DWORD2(v45[0]) = OffsetAttribute2;
    *(v45 + 12) = v13;
    v41[0] = v44[0];
    v41[1] = v44[1];
    v42[0] = v45[0];
    LODWORD(v42[1]) = HIDWORD(v13);
    v39 = v48;
    v40 = v49;
    v23 = outlined init with copy of _ViewInputs(v43, &v50);
    a3(&v36, v23, &v39);
    v52 = v41[0];
    v53 = v41[1];
    v54 = v42[0];
    v55 = v42[1];
    v50 = v39;
    v51 = v40;
    v24 = outlined destroy of _ViewInputs(&v50);
    v25 = v36;
    v27 = v37;
    v26 = v38;
    if ((v5 & 0x20) != 0)
    {
      MEMORY[0x1EEE9AC00](v24);
      MEMORY[0x1EEE9AC00](v28);
      v29 = AGGraphMutateAttribute();
      MEMORY[0x1EEE9AC00](v29);
      type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryChildGeometry<_FixedSizeLayout>, lazy protocol witness table accessor for type _FixedSizeLayout and conformance _FixedSizeLayout, &type metadata for _FixedSizeLayout, type metadata accessor for UnaryChildGeometry);
      MEMORY[0x1EEE9AC00](v30);
      AGGraphMutateAttribute();
    }

    if ((v5 & 2) != 0)
    {
      v26 = v35;
    }

    v39 = v48;
    v40 = v49;
    *&v41[0] = __PAIR64__(v11, v32);
    *(v41 + 8) = v46;
    *(&v41[1] + 1) = v47;
    *&v42[0] = __PAIR64__(v33, v15);
    DWORD2(v42[0]) = OffsetAttribute2;
    *(v42 + 12) = v13;
    result = outlined destroy of _ViewInputs(&v39);
    *a4 = v25;
    *(a4 + 8) = v27 | ((v5 & 2) << 6);
    *(a4 + 12) = v26;
  }

  else
  {
    v16 = *(a2 + 48);
    v52 = *(a2 + 32);
    v53 = v16;
    v54 = *(a2 + 64);
    v55 = *(a2 + 80);
    v17 = *(a2 + 16);
    v50 = *a2;
    v51 = v17;
    return (a3)(a1, &v50);
  }

  return result;
}

{
  v56 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 36);
  if ((v5 & 0x22) != 0)
  {
    v6 = a1;
    v7 = *(a2 + 16);
    swift_beginAccess();
    v8 = *MEMORY[0x1E698D3F8];
    *&v50 = __PAIR64__(*(v7 + 16), v6);
    DWORD2(v50) = v8;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>, lazy protocol witness table accessor for type IgnoresAutomaticPaddingLayout and conformance IgnoresAutomaticPaddingLayout, &type metadata for IgnoresAutomaticPaddingLayout, type metadata accessor for UnaryLayoutComputer);
    lazy protocol witness table accessor for type UnaryLayoutComputer<IgnoresAutomaticPaddingLayout> and conformance UnaryLayoutComputer<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    v9 = *(a2 + 16);
    v48 = *a2;
    v49 = v9;
    v10 = *(a2 + 32);
    v11 = *(a2 + 36);
    v46 = *(a2 + 40);
    v47 = *(a2 + 56);
    v12 = *(a2 + 68);
    v13 = *(a2 + 76);
    if ((v5 & 0x20) != 0)
    {
      v19 = v10;
      outlined init with copy of _ViewInputs(a2, &v50);
      if (one-time initialization token for layoutDirection != -1)
      {
        swift_once();
      }

      v20 = static CachedEnvironment.ID.layoutDirection;
      swift_beginAccess();
      v21 = specialized CachedEnvironment.attribute<A>(id:_:)(v20);
      swift_endAccess();
      LODWORD(v50) = *(a2 + 72);
      *(&v50 + 4) = __PAIR64__(v35, v21);
      HIDWORD(v50) = v8;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryChildGeometry<IgnoresAutomaticPaddingLayout>, lazy protocol witness table accessor for type IgnoresAutomaticPaddingLayout and conformance IgnoresAutomaticPaddingLayout, &type metadata for IgnoresAutomaticPaddingLayout, type metadata accessor for UnaryChildGeometry);
      lazy protocol witness table accessor for type UnaryChildGeometry<IgnoresAutomaticPaddingLayout> and conformance UnaryChildGeometry<A>();
      Attribute.init<A>(body:value:flags:update:)();
      OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
      v22 = *(a2 + 64);
      *&v50 = __PAIR64__(AGGraphCreateOffsetAttribute2(), v22);
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for CGPoint(0);
      lazy protocol witness table accessor for type LayoutPositionQuery and conformance LayoutPositionQuery();
      v15 = Attribute.init<A>(body:value:flags:update:)();
      v10 = v19 | 0x18;
      v11 = v5 | 2;
    }

    else
    {
      OffsetAttribute2 = *(a2 + 72);
      v15 = *(a2 + 64);
      outlined init with copy of _ViewInputs(a2, &v50);
    }

    v43[0] = v48;
    v43[1] = v49;
    v32 = v10;
    v33 = v12;
    *&v44[0] = __PAIR64__(v11, v10);
    *(v44 + 8) = v46;
    *(&v44[1] + 1) = v47;
    *&v45[0] = __PAIR64__(v12, v15);
    DWORD2(v45[0]) = OffsetAttribute2;
    *(v45 + 12) = v13;
    v41[0] = v44[0];
    v41[1] = v44[1];
    v42[0] = v45[0];
    LODWORD(v42[1]) = HIDWORD(v13);
    v39 = v48;
    v40 = v49;
    v23 = outlined init with copy of _ViewInputs(v43, &v50);
    a3(&v36, v23, &v39);
    v52 = v41[0];
    v53 = v41[1];
    v54 = v42[0];
    v55 = v42[1];
    v50 = v39;
    v51 = v40;
    v24 = outlined destroy of _ViewInputs(&v50);
    v25 = v36;
    v27 = v37;
    v26 = v38;
    if ((v5 & 0x20) != 0)
    {
      MEMORY[0x1EEE9AC00](v24);
      MEMORY[0x1EEE9AC00](v28);
      v29 = AGGraphMutateAttribute();
      MEMORY[0x1EEE9AC00](v29);
      type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryChildGeometry<IgnoresAutomaticPaddingLayout>, lazy protocol witness table accessor for type IgnoresAutomaticPaddingLayout and conformance IgnoresAutomaticPaddingLayout, &type metadata for IgnoresAutomaticPaddingLayout, type metadata accessor for UnaryChildGeometry);
      MEMORY[0x1EEE9AC00](v30);
      AGGraphMutateAttribute();
    }

    if ((v5 & 2) != 0)
    {
      v26 = v35;
    }

    v39 = v48;
    v40 = v49;
    *&v41[0] = __PAIR64__(v11, v32);
    *(v41 + 8) = v46;
    *(&v41[1] + 1) = v47;
    *&v42[0] = __PAIR64__(v33, v15);
    DWORD2(v42[0]) = OffsetAttribute2;
    *(v42 + 12) = v13;
    result = outlined destroy of _ViewInputs(&v39);
    *a4 = v25;
    *(a4 + 8) = v27 | ((v5 & 2) << 6);
    *(a4 + 12) = v26;
  }

  else
  {
    v16 = *(a2 + 48);
    v52 = *(a2 + 32);
    v53 = v16;
    v54 = *(a2 + 64);
    v55 = *(a2 + 80);
    v17 = *(a2 + 16);
    v50 = *a2;
    v51 = v17;
    return (a3)(a1, &v50);
  }

  return result;
}

{
  v56 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 36);
  if ((v5 & 0x22) != 0)
  {
    v6 = a1;
    v7 = *(a2 + 16);
    swift_beginAccess();
    v8 = *MEMORY[0x1E698D3F8];
    *&v50 = __PAIR64__(*(v7 + 16), v6);
    DWORD2(v50) = v8;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryLayoutComputer<MoveTransition.MoveLayout>, lazy protocol witness table accessor for type MoveTransition.MoveLayout and conformance MoveTransition.MoveLayout, &type metadata for MoveTransition.MoveLayout, type metadata accessor for UnaryLayoutComputer);
    lazy protocol witness table accessor for type UnaryLayoutComputer<MoveTransition.MoveLayout> and conformance UnaryLayoutComputer<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    v9 = *(a2 + 16);
    v48 = *a2;
    v49 = v9;
    v10 = *(a2 + 32);
    v11 = *(a2 + 36);
    v46 = *(a2 + 40);
    v47 = *(a2 + 56);
    v12 = *(a2 + 68);
    v13 = *(a2 + 76);
    if ((v5 & 0x20) != 0)
    {
      v19 = v10;
      outlined init with copy of _ViewInputs(a2, &v50);
      if (one-time initialization token for layoutDirection != -1)
      {
        swift_once();
      }

      v20 = static CachedEnvironment.ID.layoutDirection;
      swift_beginAccess();
      v21 = specialized CachedEnvironment.attribute<A>(id:_:)(v20);
      swift_endAccess();
      LODWORD(v50) = *(a2 + 72);
      *(&v50 + 4) = __PAIR64__(v35, v21);
      HIDWORD(v50) = v8;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryChildGeometry<MoveTransition.MoveLayout>, lazy protocol witness table accessor for type MoveTransition.MoveLayout and conformance MoveTransition.MoveLayout, &type metadata for MoveTransition.MoveLayout, type metadata accessor for UnaryChildGeometry);
      lazy protocol witness table accessor for type UnaryChildGeometry<MoveTransition.MoveLayout> and conformance UnaryChildGeometry<A>();
      Attribute.init<A>(body:value:flags:update:)();
      OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
      v22 = *(a2 + 64);
      *&v50 = __PAIR64__(AGGraphCreateOffsetAttribute2(), v22);
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for CGPoint(0);
      lazy protocol witness table accessor for type LayoutPositionQuery and conformance LayoutPositionQuery();
      v15 = Attribute.init<A>(body:value:flags:update:)();
      v10 = v19 | 0x18;
      v11 = v5 | 2;
    }

    else
    {
      OffsetAttribute2 = *(a2 + 72);
      v15 = *(a2 + 64);
      outlined init with copy of _ViewInputs(a2, &v50);
    }

    v43[0] = v48;
    v43[1] = v49;
    v32 = v10;
    v33 = v12;
    *&v44[0] = __PAIR64__(v11, v10);
    *(v44 + 8) = v46;
    *(&v44[1] + 1) = v47;
    *&v45[0] = __PAIR64__(v12, v15);
    DWORD2(v45[0]) = OffsetAttribute2;
    *(v45 + 12) = v13;
    v41[0] = v44[0];
    v41[1] = v44[1];
    v42[0] = v45[0];
    LODWORD(v42[1]) = HIDWORD(v13);
    v39 = v48;
    v40 = v49;
    v23 = outlined init with copy of _ViewInputs(v43, &v50);
    a3(&v36, v23, &v39);
    v52 = v41[0];
    v53 = v41[1];
    v54 = v42[0];
    v55 = v42[1];
    v50 = v39;
    v51 = v40;
    v24 = outlined destroy of _ViewInputs(&v50);
    v25 = v36;
    v27 = v37;
    v26 = v38;
    if ((v5 & 0x20) != 0)
    {
      MEMORY[0x1EEE9AC00](v24);
      MEMORY[0x1EEE9AC00](v28);
      v29 = AGGraphMutateAttribute();
      MEMORY[0x1EEE9AC00](v29);
      type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryChildGeometry<MoveTransition.MoveLayout>, lazy protocol witness table accessor for type MoveTransition.MoveLayout and conformance MoveTransition.MoveLayout, &type metadata for MoveTransition.MoveLayout, type metadata accessor for UnaryChildGeometry);
      MEMORY[0x1EEE9AC00](v30);
      AGGraphMutateAttribute();
    }

    if ((v5 & 2) != 0)
    {
      v26 = v35;
    }

    v39 = v48;
    v40 = v49;
    *&v41[0] = __PAIR64__(v11, v32);
    *(v41 + 8) = v46;
    *(&v41[1] + 1) = v47;
    *&v42[0] = __PAIR64__(v33, v15);
    DWORD2(v42[0]) = OffsetAttribute2;
    *(v42 + 12) = v13;
    result = outlined destroy of _ViewInputs(&v39);
    *a4 = v25;
    *(a4 + 8) = v27 | ((v5 & 2) << 6);
    *(a4 + 12) = v26;
  }

  else
  {
    v16 = *(a2 + 48);
    v52 = *(a2 + 32);
    v53 = v16;
    v54 = *(a2 + 64);
    v55 = *(a2 + 80);
    v17 = *(a2 + 16);
    v50 = *a2;
    v51 = v17;
    return (a3)(a1, &v50);
  }

  return result;
}

{
  v56 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 36);
  if ((v5 & 0x22) != 0)
  {
    v6 = a1;
    v7 = *(a2 + 16);
    swift_beginAccess();
    v8 = *MEMORY[0x1E698D3F8];
    *&v50 = __PAIR64__(*(v7 + 16), v6);
    DWORD2(v50) = v8;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryLayoutComputer<ConcentricPaddingLayout>, lazy protocol witness table accessor for type ConcentricPaddingLayout and conformance ConcentricPaddingLayout, &type metadata for ConcentricPaddingLayout, type metadata accessor for UnaryLayoutComputer);
    lazy protocol witness table accessor for type UnaryLayoutComputer<ConcentricPaddingLayout> and conformance UnaryLayoutComputer<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    v9 = *(a2 + 16);
    v48 = *a2;
    v49 = v9;
    v10 = *(a2 + 32);
    v11 = *(a2 + 36);
    v46 = *(a2 + 40);
    v47 = *(a2 + 56);
    v12 = *(a2 + 68);
    v13 = *(a2 + 76);
    if ((v5 & 0x20) != 0)
    {
      v19 = v10;
      outlined init with copy of _ViewInputs(a2, &v50);
      if (one-time initialization token for layoutDirection != -1)
      {
        swift_once();
      }

      v20 = static CachedEnvironment.ID.layoutDirection;
      swift_beginAccess();
      v21 = specialized CachedEnvironment.attribute<A>(id:_:)(v20);
      swift_endAccess();
      LODWORD(v50) = *(a2 + 72);
      *(&v50 + 4) = __PAIR64__(v35, v21);
      HIDWORD(v50) = v8;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryChildGeometry<ConcentricPaddingLayout>, lazy protocol witness table accessor for type ConcentricPaddingLayout and conformance ConcentricPaddingLayout, &type metadata for ConcentricPaddingLayout, type metadata accessor for UnaryChildGeometry);
      lazy protocol witness table accessor for type UnaryChildGeometry<ConcentricPaddingLayout> and conformance UnaryChildGeometry<A>();
      Attribute.init<A>(body:value:flags:update:)();
      OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
      v22 = *(a2 + 64);
      *&v50 = __PAIR64__(AGGraphCreateOffsetAttribute2(), v22);
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for CGPoint(0);
      lazy protocol witness table accessor for type LayoutPositionQuery and conformance LayoutPositionQuery();
      v15 = Attribute.init<A>(body:value:flags:update:)();
      v10 = v19 | 0x18;
      v11 = v5 | 2;
    }

    else
    {
      OffsetAttribute2 = *(a2 + 72);
      v15 = *(a2 + 64);
      outlined init with copy of _ViewInputs(a2, &v50);
    }

    v43[0] = v48;
    v43[1] = v49;
    v32 = v10;
    v33 = v12;
    *&v44[0] = __PAIR64__(v11, v10);
    *(v44 + 8) = v46;
    *(&v44[1] + 1) = v47;
    *&v45[0] = __PAIR64__(v12, v15);
    DWORD2(v45[0]) = OffsetAttribute2;
    *(v45 + 12) = v13;
    v41[0] = v44[0];
    v41[1] = v44[1];
    v42[0] = v45[0];
    LODWORD(v42[1]) = HIDWORD(v13);
    v39 = v48;
    v40 = v49;
    v23 = outlined init with copy of _ViewInputs(v43, &v50);
    a3(&v36, v23, &v39);
    v52 = v41[0];
    v53 = v41[1];
    v54 = v42[0];
    v55 = v42[1];
    v50 = v39;
    v51 = v40;
    v24 = outlined destroy of _ViewInputs(&v50);
    v25 = v36;
    v27 = v37;
    v26 = v38;
    if ((v5 & 0x20) != 0)
    {
      MEMORY[0x1EEE9AC00](v24);
      MEMORY[0x1EEE9AC00](v28);
      v29 = AGGraphMutateAttribute();
      MEMORY[0x1EEE9AC00](v29);
      type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryChildGeometry<ConcentricPaddingLayout>, lazy protocol witness table accessor for type ConcentricPaddingLayout and conformance ConcentricPaddingLayout, &type metadata for ConcentricPaddingLayout, type metadata accessor for UnaryChildGeometry);
      MEMORY[0x1EEE9AC00](v30);
      AGGraphMutateAttribute();
    }

    if ((v5 & 2) != 0)
    {
      v26 = v35;
    }

    v39 = v48;
    v40 = v49;
    *&v41[0] = __PAIR64__(v11, v32);
    *(v41 + 8) = v46;
    *(&v41[1] + 1) = v47;
    *&v42[0] = __PAIR64__(v33, v15);
    DWORD2(v42[0]) = OffsetAttribute2;
    *(v42 + 12) = v13;
    result = outlined destroy of _ViewInputs(&v39);
    *a4 = v25;
    *(a4 + 8) = v27 | ((v5 & 2) << 6);
    *(a4 + 12) = v26;
  }

  else
  {
    v16 = *(a2 + 48);
    v52 = *(a2 + 32);
    v53 = v16;
    v54 = *(a2 + 64);
    v55 = *(a2 + 80);
    v17 = *(a2 + 16);
    v50 = *a2;
    v51 = v17;
    return (a3)(a1, &v50);
  }

  return result;
}

{
  v56 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 36);
  if ((v5 & 0x22) != 0)
  {
    v6 = a1;
    v7 = *(a2 + 16);
    swift_beginAccess();
    v8 = *MEMORY[0x1E698D3F8];
    *&v50 = __PAIR64__(*(v7 + 16), v6);
    DWORD2(v50) = v8;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryLayoutComputer<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout>, lazy protocol witness table accessor for type AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout and conformance AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout, &type metadata for AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout, type metadata accessor for UnaryLayoutComputer);
    lazy protocol witness table accessor for type UnaryLayoutComputer<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout> and conformance UnaryLayoutComputer<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    v9 = *(a2 + 16);
    v48 = *a2;
    v49 = v9;
    v10 = *(a2 + 32);
    v11 = *(a2 + 36);
    v46 = *(a2 + 40);
    v47 = *(a2 + 56);
    v12 = *(a2 + 68);
    v13 = *(a2 + 76);
    if ((v5 & 0x20) != 0)
    {
      v19 = v10;
      outlined init with copy of _ViewInputs(a2, &v50);
      if (one-time initialization token for layoutDirection != -1)
      {
        swift_once();
      }

      v20 = static CachedEnvironment.ID.layoutDirection;
      swift_beginAccess();
      v21 = specialized CachedEnvironment.attribute<A>(id:_:)(v20);
      swift_endAccess();
      LODWORD(v50) = *(a2 + 72);
      *(&v50 + 4) = __PAIR64__(v35, v21);
      HIDWORD(v50) = v8;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryChildGeometry<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout>, lazy protocol witness table accessor for type AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout and conformance AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout, &type metadata for AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout, type metadata accessor for UnaryChildGeometry);
      lazy protocol witness table accessor for type UnaryChildGeometry<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout> and conformance UnaryChildGeometry<A>();
      Attribute.init<A>(body:value:flags:update:)();
      OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
      v22 = *(a2 + 64);
      *&v50 = __PAIR64__(AGGraphCreateOffsetAttribute2(), v22);
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for CGPoint(0);
      lazy protocol witness table accessor for type LayoutPositionQuery and conformance LayoutPositionQuery();
      v15 = Attribute.init<A>(body:value:flags:update:)();
      v10 = v19 | 0x18;
      v11 = v5 | 2;
    }

    else
    {
      OffsetAttribute2 = *(a2 + 72);
      v15 = *(a2 + 64);
      outlined init with copy of _ViewInputs(a2, &v50);
    }

    v43[0] = v48;
    v43[1] = v49;
    v32 = v10;
    v33 = v12;
    *&v44[0] = __PAIR64__(v11, v10);
    *(v44 + 8) = v46;
    *(&v44[1] + 1) = v47;
    *&v45[0] = __PAIR64__(v12, v15);
    DWORD2(v45[0]) = OffsetAttribute2;
    *(v45 + 12) = v13;
    v41[0] = v44[0];
    v41[1] = v44[1];
    v42[0] = v45[0];
    LODWORD(v42[1]) = HIDWORD(v13);
    v39 = v48;
    v40 = v49;
    v23 = outlined init with copy of _ViewInputs(v43, &v50);
    a3(&v36, v23, &v39);
    v52 = v41[0];
    v53 = v41[1];
    v54 = v42[0];
    v55 = v42[1];
    v50 = v39;
    v51 = v40;
    v24 = outlined destroy of _ViewInputs(&v50);
    v25 = v36;
    v27 = v37;
    v26 = v38;
    if ((v5 & 0x20) != 0)
    {
      MEMORY[0x1EEE9AC00](v24);
      MEMORY[0x1EEE9AC00](v28);
      v29 = AGGraphMutateAttribute();
      MEMORY[0x1EEE9AC00](v29);
      type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryChildGeometry<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout>, lazy protocol witness table accessor for type AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout and conformance AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout, &type metadata for AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout, type metadata accessor for UnaryChildGeometry);
      MEMORY[0x1EEE9AC00](v30);
      AGGraphMutateAttribute();
    }

    if ((v5 & 2) != 0)
    {
      v26 = v35;
    }

    v39 = v48;
    v40 = v49;
    *&v41[0] = __PAIR64__(v11, v32);
    *(v41 + 8) = v46;
    *(&v41[1] + 1) = v47;
    *&v42[0] = __PAIR64__(v33, v15);
    DWORD2(v42[0]) = OffsetAttribute2;
    *(v42 + 12) = v13;
    result = outlined destroy of _ViewInputs(&v39);
    *a4 = v25;
    *(a4 + 8) = v27 | ((v5 & 2) << 6);
    *(a4 + 12) = v26;
  }

  else
  {
    v16 = *(a2 + 48);
    v52 = *(a2 + 32);
    v53 = v16;
    v54 = *(a2 + 64);
    v55 = *(a2 + 80);
    v17 = *(a2 + 16);
    v50 = *a2;
    v51 = v17;
    return (a3)(a1, &v50);
  }

  return result;
}

{
  v56 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 36);
  if ((v5 & 0x22) != 0)
  {
    v6 = a1;
    v7 = *(a2 + 16);
    swift_beginAccess();
    v8 = *MEMORY[0x1E698D3F8];
    *&v50 = __PAIR64__(*(v7 + 16), v6);
    DWORD2(v50) = v8;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryLayoutComputer<_PositionLayout>, lazy protocol witness table accessor for type _PositionLayout and conformance _PositionLayout, &type metadata for _PositionLayout, type metadata accessor for UnaryLayoutComputer);
    lazy protocol witness table accessor for type UnaryLayoutComputer<_PositionLayout> and conformance UnaryLayoutComputer<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    v9 = *(a2 + 16);
    v48 = *a2;
    v49 = v9;
    v10 = *(a2 + 32);
    v11 = *(a2 + 36);
    v46 = *(a2 + 40);
    v47 = *(a2 + 56);
    v12 = *(a2 + 68);
    v13 = *(a2 + 76);
    if ((v5 & 0x20) != 0)
    {
      v19 = v10;
      outlined init with copy of _ViewInputs(a2, &v50);
      if (one-time initialization token for layoutDirection != -1)
      {
        swift_once();
      }

      v20 = static CachedEnvironment.ID.layoutDirection;
      swift_beginAccess();
      v21 = specialized CachedEnvironment.attribute<A>(id:_:)(v20);
      swift_endAccess();
      LODWORD(v50) = *(a2 + 72);
      *(&v50 + 4) = __PAIR64__(v35, v21);
      HIDWORD(v50) = v8;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryChildGeometry<_PositionLayout>, lazy protocol witness table accessor for type _PositionLayout and conformance _PositionLayout, &type metadata for _PositionLayout, type metadata accessor for UnaryChildGeometry);
      lazy protocol witness table accessor for type UnaryChildGeometry<_PositionLayout> and conformance UnaryChildGeometry<A>();
      Attribute.init<A>(body:value:flags:update:)();
      OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
      v22 = *(a2 + 64);
      *&v50 = __PAIR64__(AGGraphCreateOffsetAttribute2(), v22);
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for CGPoint(0);
      lazy protocol witness table accessor for type LayoutPositionQuery and conformance LayoutPositionQuery();
      v15 = Attribute.init<A>(body:value:flags:update:)();
      v10 = v19 | 0x18;
      v11 = v5 | 2;
    }

    else
    {
      OffsetAttribute2 = *(a2 + 72);
      v15 = *(a2 + 64);
      outlined init with copy of _ViewInputs(a2, &v50);
    }

    v43[0] = v48;
    v43[1] = v49;
    v32 = v10;
    v33 = v12;
    *&v44[0] = __PAIR64__(v11, v10);
    *(v44 + 8) = v46;
    *(&v44[1] + 1) = v47;
    *&v45[0] = __PAIR64__(v12, v15);
    DWORD2(v45[0]) = OffsetAttribute2;
    *(v45 + 12) = v13;
    v41[0] = v44[0];
    v41[1] = v44[1];
    v42[0] = v45[0];
    LODWORD(v42[1]) = HIDWORD(v13);
    v39 = v48;
    v40 = v49;
    v23 = outlined init with copy of _ViewInputs(v43, &v50);
    a3(&v36, v23, &v39);
    v52 = v41[0];
    v53 = v41[1];
    v54 = v42[0];
    v55 = v42[1];
    v50 = v39;
    v51 = v40;
    v24 = outlined destroy of _ViewInputs(&v50);
    v25 = v36;
    v27 = v37;
    v26 = v38;
    if ((v5 & 0x20) != 0)
    {
      MEMORY[0x1EEE9AC00](v24);
      MEMORY[0x1EEE9AC00](v28);
      v29 = AGGraphMutateAttribute();
      MEMORY[0x1EEE9AC00](v29);
      type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryChildGeometry<_PositionLayout>, lazy protocol witness table accessor for type _PositionLayout and conformance _PositionLayout, &type metadata for _PositionLayout, type metadata accessor for UnaryChildGeometry);
      MEMORY[0x1EEE9AC00](v30);
      AGGraphMutateAttribute();
    }

    if ((v5 & 2) != 0)
    {
      v26 = v35;
    }

    v39 = v48;
    v40 = v49;
    *&v41[0] = __PAIR64__(v11, v32);
    *(v41 + 8) = v46;
    *(&v41[1] + 1) = v47;
    *&v42[0] = __PAIR64__(v33, v15);
    DWORD2(v42[0]) = OffsetAttribute2;
    *(v42 + 12) = v13;
    result = outlined destroy of _ViewInputs(&v39);
    *a4 = v25;
    *(a4 + 8) = v27 | ((v5 & 2) << 6);
    *(a4 + 12) = v26;
  }

  else
  {
    v16 = *(a2 + 48);
    v52 = *(a2 + 32);
    v53 = v16;
    v54 = *(a2 + 64);
    v55 = *(a2 + 80);
    v17 = *(a2 + 16);
    v50 = *a2;
    v51 = v17;
    return (a3)(a1, &v50);
  }

  return result;
}

{
  v56 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 36);
  if ((v5 & 0x22) != 0)
  {
    v6 = a1;
    v7 = *(a2 + 16);
    swift_beginAccess();
    v8 = *MEMORY[0x1E698D3F8];
    *&v50 = __PAIR64__(*(v7 + 16), v6);
    DWORD2(v50) = v8;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryLayoutComputer<_AlignmentLayout>, lazy protocol witness table accessor for type _AlignmentLayout and conformance _AlignmentLayout, &type metadata for _AlignmentLayout, type metadata accessor for UnaryLayoutComputer);
    lazy protocol witness table accessor for type UnaryLayoutComputer<_AlignmentLayout> and conformance UnaryLayoutComputer<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    v9 = *(a2 + 16);
    v48 = *a2;
    v49 = v9;
    v10 = *(a2 + 32);
    v11 = *(a2 + 36);
    v46 = *(a2 + 40);
    v47 = *(a2 + 56);
    v12 = *(a2 + 68);
    v13 = *(a2 + 76);
    if ((v5 & 0x20) != 0)
    {
      v19 = v10;
      outlined init with copy of _ViewInputs(a2, &v50);
      if (one-time initialization token for layoutDirection != -1)
      {
        swift_once();
      }

      v20 = static CachedEnvironment.ID.layoutDirection;
      swift_beginAccess();
      v21 = specialized CachedEnvironment.attribute<A>(id:_:)(v20);
      swift_endAccess();
      LODWORD(v50) = *(a2 + 72);
      *(&v50 + 4) = __PAIR64__(v35, v21);
      HIDWORD(v50) = v8;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryChildGeometry<_AlignmentLayout>, lazy protocol witness table accessor for type _AlignmentLayout and conformance _AlignmentLayout, &type metadata for _AlignmentLayout, type metadata accessor for UnaryChildGeometry);
      lazy protocol witness table accessor for type UnaryChildGeometry<_AlignmentLayout> and conformance UnaryChildGeometry<A>();
      Attribute.init<A>(body:value:flags:update:)();
      OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
      v22 = *(a2 + 64);
      *&v50 = __PAIR64__(AGGraphCreateOffsetAttribute2(), v22);
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for CGPoint(0);
      lazy protocol witness table accessor for type LayoutPositionQuery and conformance LayoutPositionQuery();
      v15 = Attribute.init<A>(body:value:flags:update:)();
      v10 = v19 | 0x18;
      v11 = v5 | 2;
    }

    else
    {
      OffsetAttribute2 = *(a2 + 72);
      v15 = *(a2 + 64);
      outlined init with copy of _ViewInputs(a2, &v50);
    }

    v43[0] = v48;
    v43[1] = v49;
    v32 = v10;
    v33 = v12;
    *&v44[0] = __PAIR64__(v11, v10);
    *(v44 + 8) = v46;
    *(&v44[1] + 1) = v47;
    *&v45[0] = __PAIR64__(v12, v15);
    DWORD2(v45[0]) = OffsetAttribute2;
    *(v45 + 12) = v13;
    v41[0] = v44[0];
    v41[1] = v44[1];
    v42[0] = v45[0];
    LODWORD(v42[1]) = HIDWORD(v13);
    v39 = v48;
    v40 = v49;
    v23 = outlined init with copy of _ViewInputs(v43, &v50);
    a3(&v36, v23, &v39);
    v52 = v41[0];
    v53 = v41[1];
    v54 = v42[0];
    v55 = v42[1];
    v50 = v39;
    v51 = v40;
    v24 = outlined destroy of _ViewInputs(&v50);
    v25 = v36;
    v27 = v37;
    v26 = v38;
    if ((v5 & 0x20) != 0)
    {
      MEMORY[0x1EEE9AC00](v24);
      MEMORY[0x1EEE9AC00](v28);
      v29 = AGGraphMutateAttribute();
      MEMORY[0x1EEE9AC00](v29);
      type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryChildGeometry<_AlignmentLayout>, lazy protocol witness table accessor for type _AlignmentLayout and conformance _AlignmentLayout, &type metadata for _AlignmentLayout, type metadata accessor for UnaryChildGeometry);
      MEMORY[0x1EEE9AC00](v30);
      AGGraphMutateAttribute();
    }

    if ((v5 & 2) != 0)
    {
      v26 = v35;
    }

    v39 = v48;
    v40 = v49;
    *&v41[0] = __PAIR64__(v11, v32);
    *(v41 + 8) = v46;
    *(&v41[1] + 1) = v47;
    *&v42[0] = __PAIR64__(v33, v15);
    DWORD2(v42[0]) = OffsetAttribute2;
    *(v42 + 12) = v13;
    result = outlined destroy of _ViewInputs(&v39);
    *a4 = v25;
    *(a4 + 8) = v27 | ((v5 & 2) << 6);
    *(a4 + 12) = v26;
  }

  else
  {
    v16 = *(a2 + 48);
    v52 = *(a2 + 32);
    v53 = v16;
    v54 = *(a2 + 64);
    v55 = *(a2 + 80);
    v17 = *(a2 + 16);
    v50 = *a2;
    v51 = v17;
    return (a3)(a1, &v50);
  }

  return result;
}

{
  v4 = a3;
  v63 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 36);
  if ((v7 & 0x22) != 0)
  {
    v8 = *(a2 + 16);
    v9 = *(a2 + 16);
    v56 = *a2;
    v57 = v9;
    v10 = *(a2 + 32);
    v54 = *(a2 + 40);
    v55 = *(a2 + 56);
    v43 = *(a2 + 68);
    v11 = *(a2 + 76);
    v36 = a1;
    v35 = v8;
    if ((v7 & 0x20) != 0)
    {
      v41 = v10;
      v19 = a1;
      swift_beginAccess();
      v20 = *MEMORY[0x1E698D3F8];
      *&v51[0] = __PAIR64__(*(v8 + 16), v19);
      DWORD2(v51[0]) = v20;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      outlined init with copy of _ViewInputs(a2, v58);
      type metadata accessor for UnaryPositionAwareLayoutComputer<ContainerCornerOffsetLayout>(0, &lazy cache variable for type metadata for UnaryPositionAwareLayoutComputer<ContainerCornerOffsetLayout>, lazy protocol witness table accessor for type ContainerCornerOffsetLayout and conformance ContainerCornerOffsetLayout, &type metadata for ContainerCornerOffsetLayout, type metadata accessor for UnaryPositionAwareLayoutComputer);
      lazy protocol witness table accessor for type UnaryPositionAwareLayoutComputer<ContainerCornerOffsetLayout> and conformance UnaryPositionAwareLayoutComputer<A>();
      v21 = Attribute.init<A>(body:value:flags:update:)();
      if (one-time initialization token for layoutDirection != -1)
      {
        swift_once();
      }

      v22 = static CachedEnvironment.ID.layoutDirection;
      swift_beginAccess();
      v23 = specialized CachedEnvironment.attribute<A>(id:_:)(v22);
      swift_endAccess();
      v24 = *(v8 + 16);
      v25 = *(a2 + 72);
      v26 = *(a2 + 76);
      *v58 = v21;
      *&v58[4] = v23;
      *&v58[12] = vrev64_s32(*(a2 + 60));
      *&v58[8] = v25;
      *&v58[20] = v24;
      *&v58[24] = v20;
      *&v58[28] = v26;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for UnaryPositionAwareLayoutComputer<ContainerCornerOffsetLayout>(0, &lazy cache variable for type metadata for UnaryPositionAwareChildGeometry<ContainerCornerOffsetLayout>, lazy protocol witness table accessor for type ContainerCornerOffsetLayout and conformance ContainerCornerOffsetLayout, &type metadata for ContainerCornerOffsetLayout, type metadata accessor for UnaryPositionAwareChildGeometry);
      lazy protocol witness table accessor for type UnaryPositionAwareChildGeometry<ContainerCornerOffsetLayout> and conformance UnaryPositionAwareChildGeometry<A>();
      Attribute.init<A>(body:value:flags:update:)();
      OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
      v14 = AGGraphCreateOffsetAttribute2();
      v10 = v41 | 0x18;
      v15 = v7 | 2;
      v4 = a3;
    }

    else
    {
      OffsetAttribute2 = *(a2 + 72);
      v13 = *(a2 + 64);
      outlined init with copy of _ViewInputs(a2, v58);
      v14 = v13;
      v15 = v7;
    }

    v51[0] = v56;
    v51[1] = v57;
    v42 = v10;
    *&v52[0] = __PAIR64__(v15, v10);
    v37 = v15;
    v38 = v14;
    *(v52 + 8) = v54;
    *(&v52[1] + 1) = v55;
    *&v53[0] = __PAIR64__(v43, v14);
    v40 = OffsetAttribute2;
    DWORD2(v53[0]) = OffsetAttribute2;
    *(v53 + 12) = v11;
    v49[0] = v52[0];
    v49[1] = v52[1];
    v50[0] = v53[0];
    LODWORD(v50[1]) = HIDWORD(v11);
    v47 = v56;
    v48 = v57;
    v27 = outlined init with copy of _ViewInputs(v51, v58);
    v4(&v44, v27, &v47);
    v59 = v49[0];
    v60 = v49[1];
    v61 = v50[0];
    v62 = v50[1];
    *v58 = v47;
    *&v58[16] = v48;
    v28 = outlined destroy of _ViewInputs(v58);
    v29 = v44;
    v31 = v45;
    v30 = v46;
    if ((v7 & 0x20) != 0)
    {
      MEMORY[0x1EEE9AC00](v28);
      type metadata accessor for UnaryPositionAwareLayoutComputer<ContainerCornerOffsetLayout>(0, &lazy cache variable for type metadata for UnaryPositionAwareLayoutComputer<ContainerCornerOffsetLayout>, lazy protocol witness table accessor for type ContainerCornerOffsetLayout and conformance ContainerCornerOffsetLayout, &type metadata for ContainerCornerOffsetLayout, type metadata accessor for UnaryPositionAwareLayoutComputer);
      MEMORY[0x1EEE9AC00](v32);
      v33 = AGGraphMutateAttribute();
      MEMORY[0x1EEE9AC00](v33);
      type metadata accessor for UnaryPositionAwareLayoutComputer<ContainerCornerOffsetLayout>(0, &lazy cache variable for type metadata for UnaryPositionAwareChildGeometry<ContainerCornerOffsetLayout>, lazy protocol witness table accessor for type ContainerCornerOffsetLayout and conformance ContainerCornerOffsetLayout, &type metadata for ContainerCornerOffsetLayout, type metadata accessor for UnaryPositionAwareChildGeometry);
      MEMORY[0x1EEE9AC00](v34);
      AGGraphMutateAttribute();
    }

    if ((v7 & 2) != 0)
    {
      swift_beginAccess();
      *&v47 = __PAIR64__(*(v35 + 16), v36);
      DWORD2(v47) = v30;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for UnaryPositionAwareLayoutComputer<ContainerCornerOffsetLayout>(0, &lazy cache variable for type metadata for UnaryPositionAwareLayoutComputer<ContainerCornerOffsetLayout>, lazy protocol witness table accessor for type ContainerCornerOffsetLayout and conformance ContainerCornerOffsetLayout, &type metadata for ContainerCornerOffsetLayout, type metadata accessor for UnaryPositionAwareLayoutComputer);
      lazy protocol witness table accessor for type UnaryPositionAwareLayoutComputer<ContainerCornerOffsetLayout> and conformance UnaryPositionAwareLayoutComputer<A>();
      v30 = Attribute.init<A>(body:value:flags:update:)();
      v31 |= 0x80u;
    }

    v47 = v56;
    v48 = v57;
    *&v49[0] = __PAIR64__(v37, v42);
    *(v49 + 8) = v54;
    *(&v49[1] + 1) = v55;
    *&v50[0] = __PAIR64__(v43, v38);
    DWORD2(v50[0]) = v40;
    *(v50 + 12) = v11;
    result = outlined destroy of _ViewInputs(&v47);
    *a4 = v29;
    *(a4 + 8) = v31;
    *(a4 + 12) = v30;
  }

  else
  {
    v16 = *(a2 + 48);
    v59 = *(a2 + 32);
    v60 = v16;
    v61 = *(a2 + 64);
    v62 = *(a2 + 80);
    v17 = *(a2 + 16);
    *v58 = *a2;
    *&v58[16] = v17;
    return (a3)(a1, v58);
  }

  return result;
}

uint64_t protocol witness for static UnaryLayout.makeViewImpl(modifier:inputs:body:) in conformance _SafeAreaRegionsIgnoringLayout@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X8>)
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
  return specialized static UnaryLayout<>.makeViewImpl(modifier:inputs:body:)(v4, v8, a3, a4);
}

unint64_t lazy protocol witness table accessor for type _SafeAreaRegionsIgnoringLayout and conformance _SafeAreaRegionsIgnoringLayout()
{
  result = lazy protocol witness table cache variable for type _SafeAreaRegionsIgnoringLayout and conformance _SafeAreaRegionsIgnoringLayout;
  if (!lazy protocol witness table cache variable for type _SafeAreaRegionsIgnoringLayout and conformance _SafeAreaRegionsIgnoringLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _SafeAreaRegionsIgnoringLayout and conformance _SafeAreaRegionsIgnoringLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _SafeAreaRegionsIgnoringLayout and conformance _SafeAreaRegionsIgnoringLayout;
  if (!lazy protocol witness table cache variable for type _SafeAreaRegionsIgnoringLayout and conformance _SafeAreaRegionsIgnoringLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _SafeAreaRegionsIgnoringLayout and conformance _SafeAreaRegionsIgnoringLayout);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for _SafeAreaRegionsIgnoringLayout(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _SafeAreaRegionsIgnoringLayout and conformance _SafeAreaRegionsIgnoringLayout();
  *(a1 + 8) = result;
  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance UnaryPositionAwareLayoutComputer<A>()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t instantiation function for generic protocol witness table for UnaryPositionAwareLayoutComputer<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance UnaryPositionAwareChildGeometry<A>()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t instantiation function for generic protocol witness table for UnaryPositionAwareChildGeometry<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

void *assignWithCopy for _SafeAreaInsetsModifier(void *a1, void *a2)
{
  *a1 = *a2;

  v4 = a1 + 1;
  v5 = a2[1];
  if (a1[1] == 1)
  {
    if (v5 != 1)
    {
      *v4 = v5;

      return a1;
    }

    v6 = 1;
  }

  else
  {
    if (v5 != 1)
    {
      *v4 = v5;

      return a1;
    }

    outlined destroy of Color.VibrancyDefinition((a1 + 1));
    v6 = a2[1];
  }

  *v4 = v6;
  return a1;
}

uint64_t type metadata completion function for VStack()
{
  result = type metadata accessor for _VariadicView.Tree();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t static _VariadicView.Tree<>._makeView(view:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a2 + 48);
  v11 = *(a2 + 16);
  v50 = *(a2 + 32);
  v51 = v10;
  v12 = *(a2 + 48);
  v52 = *(a2 + 64);
  v13 = *(a2 + 16);
  v49[0] = *a2;
  v49[1] = v13;
  v45 = v50;
  v46 = v12;
  v47 = *(a2 + 64);
  v14 = *a1;
  v53 = *(a2 + 80);
  v48 = *(a2 + 80);
  v43 = v49[0];
  v44 = v11;
  outlined init with copy of _ViewInputs(v49, v41);
  v15 = *(a5 + 8);
  v16 = *(v15 + 8);

  v17 = v16(a3, v15);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA04ViewD12OptionsInputV_Tt2B5(&v43, v17);

  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = a6;
  v36[1] = v14;
  type metadata accessor for _VariadicView.Tree();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter(partial apply for closure #1 in static _VariadicView.Tree<>._makeView(view:inputs:), a3, v36);
  v38 = v48;
  v35 = v48;
  v37[2] = v45;
  v37[3] = v46;
  v37[4] = v47;
  v37[0] = v43;
  v37[1] = v44;
  v32 = v45;
  v33 = v46;
  v34 = v47;
  v30 = v43;
  v31 = v44;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v25 = v14;
  v18 = *(a5 + 32);
  outlined init with copy of _ViewInputs(v37, v41);
  v18(v36, &v30, partial apply for closure #2 in static _VariadicView.Tree<>._makeView(view:inputs:), v20, a3, a5);
  v39[2] = v32;
  v39[3] = v33;
  v39[4] = v34;
  v40 = v35;
  v39[0] = v30;
  v39[1] = v31;
  outlined destroy of _ViewInputs(v39);
  v41[2] = v45;
  v41[3] = v46;
  v41[4] = v47;
  v42 = v48;
  v41[0] = v43;
  v41[1] = v44;
  return outlined destroy of _ViewInputs(v41);
}

uint64_t static VStack._makeView(view:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v42 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v9 = a2[3];
  v38 = a2[2];
  v39 = v9;
  v40 = a2[4];
  v41 = *(a2 + 20);
  v10 = a2[1];
  v36 = *a2;
  v37 = v10;
  v18 = a3;
  v19 = a4;
  v17[1] = v8;
  type metadata accessor for VStack();
  type metadata accessor for _GraphValue();
  v11 = type metadata accessor for _VariadicView.Tree();
  _GraphValue.subscript.getter(partial apply for closure #1 in static VStack._makeView(view:inputs:), v11, v17);
  v12 = v17[0];
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v28 = v38;
  v29 = v39;
  v30 = v40;
  v31 = v41;
  v26 = v36;
  v27 = v37;
  v33 = v41;
  v14 = v38;
  LODWORD(v28) = 0;
  v16 = v12;
  v32[0] = v36;
  v32[1] = v37;
  v32[3] = v39;
  v32[4] = v40;
  v32[2] = v28;
  v22 = v28;
  v23 = v39;
  v24 = v40;
  v25 = v41;
  v20 = v36;
  v21 = v37;
  outlined init with copy of _ViewInputs(&v36, v34);
  outlined init with copy of _ViewInputs(v32, v34);
  static _VariadicView.Tree<>._makeView(view:inputs:)(&v16, &v20, &type metadata for _VStackLayout, a3, &protocol witness table for _VStackLayout, a4);
  v34[2] = v22;
  v34[3] = v23;
  v34[4] = v24;
  v35 = v25;
  v34[0] = v20;
  v34[1] = v21;
  outlined destroy of _ViewInputs(v34);
  LODWORD(v28) = v14;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a5, &v26);
    AGSubgraphEndTreeElement();
  }

  v22 = v28;
  v23 = v29;
  v24 = v30;
  v25 = v31;
  v20 = v26;
  v21 = v27;
  return outlined destroy of _ViewInputs(&v20);
}

uint64_t closure #1 in static VStack._makeView(view:inputs:)(uint64_t a1)
{
  v5[2] = type metadata accessor for VStack();
  v6 = type metadata accessor for _VariadicView.Tree();
  v2 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v5, v6, MEMORY[0x1E69E73E0], v2, MEMORY[0x1E69E7410], v3);
  return v7;
}

uint64_t TupleView.MakeList.visit<A>(type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  outlined init with copy of _ViewListInputs(v4 + 8, v22);
  if (v22[37])
  {
    specialized _GraphInputs.pushScope<A>(id:)(*(v4 + 144));
  }

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  if (*(v4 + 160) == 1)
  {
    _GraphValue.init(_:)(OffsetAttribute2, v18);
    static _ViewListOutputs.unaryViewList<A>(view:inputs:)(v22, a3, a4, v21);
  }

  else
  {
    _GraphValue.init(_:)(OffsetAttribute2, v18);
    v9 = LODWORD(v18[0]);
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
    }

    v20 = v9;
    (*(a4 + 32))(v21, &v20, v22, a3, a4);
    $defer #1 <A>() in static View.makeDebuggableViewList(view:inputs:)(v9, a3, a4);
  }

  outlined init with copy of _ViewListOutputs(v21, v18);
  v10 = *(v4 + 168);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
  }

  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v10);
  }

  *(v10 + 2) = v12 + 1;
  v13 = &v10[72 * v12];
  *(v13 + 2) = v18[0];
  v14 = v18[1];
  v15 = v18[2];
  v16 = v18[3];
  v13[96] = v19;
  *(v13 + 4) = v15;
  *(v13 + 5) = v16;
  *(v13 + 3) = v14;
  *(v5 + 168) = v10;
  *(v5 + 56) = v21[6];
  if (*(v5 + 161) == 1)
  {
    _ViewListInputs.updateContentOffset(outputs:)(v21);
  }

  outlined destroy of _ViewListOutputs(v21);
  return outlined destroy of _ViewListInputs(v22);
}

uint64_t static TupleView._makeViewList(view:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  _s7SwiftUI15TupleDescriptorPAAE16tupleDescriptionyAA0c4TypeF0VyxGSo07AGTupleG0aFZAA04ViewD0V_Tt1g5(a3, &v18);
  v7 = v18;
  v8 = *(a2 + 56);
  outlined init with copy of _ViewListInputs(a2, v17);
  LODWORD(v18) = v6;
  outlined init with take of _ViewListInputs(v17, v19);
  v21 = 0;
  v22 = 0;
  v23 = (v8 & 0x200) != 0;
  v24 = BYTE2(v8) & 1;
  v25 = MEMORY[0x1E69E7CC0];
  if ((v8 & 0x200) != 0 && (v20 & 0x200) != 0)
  {
    v20 &= ~0x200uLL;
  }

  v9 = *(v7 + 16);
  if (v9)
  {
    v10 = (v7 + 40);
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;
      v10 = (v10 + 24);
      v21 = v11;
      v22 = AGTupleElementOffset();
      v17[0] = v12;
      List = type metadata accessor for TupleView.MakeList();
      TypeConformance<>.visitType<A>(visitor:)(&v18, List, &protocol witness table for TupleView<A>.MakeList);
      --v9;
    }

    while (v9);
  }

  outlined init with copy of _ViewListInputs(v19, v17);

  static _ViewListOutputs.concat(_:inputs:)(v14, v17, a4);

  outlined destroy of _ViewListInputs(v17);
  v15 = type metadata accessor for TupleView.MakeList();
  return (*(*(v15 - 8) + 8))(&v18, v15);
}

uint64_t closure #2 in static _VariadicView.Tree<>._makeView(view:inputs:)(uint64_t a1, __int128 *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = a2[1];
  v28 = *a2;
  v29 = v10;
  v30 = a2[2];
  BloomFilter.init(hashValue:)(&type metadata for ViewListOptionsInput);
  v11 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA04ViewS12OptionsInputV_Tt0B5(v28, *&v16[0]);
  if (v11)
  {
    v12 = *(v11 + 72);
  }

  else
  {
    v12 = 0;
  }

  MEMORY[0x1EEE9AC00](v11);
  v27[1] = a3;
  type metadata accessor for _VariadicView.Tree();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter(partial apply for closure #1 in closure #2 in static _VariadicView.Tree<>._makeView(view:inputs:), a5, v27);
  v13 = v27[0];
  v19 = *MEMORY[0x1E698D3F8];
  v20 = MEMORY[0x1E69E7CD0];
  v21 = 0;
  v22 = 0;
  v23 = 0;
  swift_weakInit();
  v24 = 0;
  v25 = 0;
  v26 = -1;
  v16[0] = v28;
  v16[1] = v29;
  v16[2] = v30;
  v17 = 0;
  v18 = v12;
  if (AGSubgraphShouldRecordTree())
  {
    outlined init with copy of _GraphInputs(&v28, v15);
    AGSubgraphBeginTreeElement();
  }

  else
  {
    outlined init with copy of _GraphInputs(&v28, v15);
  }

  v15[0] = v13;
  (*(a7 + 32))(v15, v16, a5, a7);
  $defer #1 <A>() in static View.makeDebuggableViewList(view:inputs:)(v13, a5, a7);
  return outlined destroy of _ViewListInputs(v16);
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, void (*a5)(void))
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    a5(0);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 24);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[24 * v9])
    {
      memmove(v13, v14, 24 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 24 * v9);
  }

  return v11;
}

{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    a5(0);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 29;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 2);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[4 * v9])
    {
      memmove(v14, v15, 4 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 4 * v9);
  }

  return v11;
}

{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    a5(0);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 16 * v9);
  }

  return v11;
}

{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    a5(0);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 3);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[8 * v9])
    {
      memmove(v14, v15, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v9);
  }

  return v11;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(uint64_t, void), uint64_t (*a6)(unint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v6;
  v13 = *v6;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_16;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = v14;
      a4();
      v14 = v22;
      goto LABEL_8;
    }

    a5(v19, a3 & 1);
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v20 & 1) != (v23 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v24 = *v9;
  if (v20)
  {
    *(*(v24 + 56) + 8 * v14) = a1;
  }

  else
  {

    return a6(v14, a2, a1, v24);
  }
}

uint64_t _s7SwiftUI15TupleDescriptorPAAE16tupleDescriptionyAA0c4TypeF0VyxGSo07AGTupleG0aFZAA04ViewD0V_Tt1g5@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = static ViewDescriptor.typeCache;
  if (*(static ViewDescriptor.typeCache + 2) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
  {
    *a2 = *(v4[7] + 8 * v5);
  }

  else
  {
    _s7SwiftUI20TupleTypeDescriptionVyACyxGSo07AGTupleD0acfCAA22StyleContextDescriptorV_Tt1g5Tm(a1, _viewProtocolDescriptor, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), v11);
    v8 = v11[0];
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = static ViewDescriptor.typeCache;
    static ViewDescriptor.typeCache = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v8, a1, isUniquelyReferenced_nonNull_native);
    static ViewDescriptor.typeCache = v10;
    result = swift_endAccess();
    *a2 = v8;
  }

  return result;
}

uint64_t _s7SwiftUI20TupleTypeDescriptionVyACyxGSo07AGTupleD0acfCAA22StyleContextDescriptorV_Tt1g5Tm@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t (*a3)(BOOL, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = AGTupleCount();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v41 = a4;
    if (result)
    {
      v40 = a3;
      v14 = 0;
      v45 = (v9 + 16);
      v46 = 0x800000018DD790C0;
      v44 = (v9 + 8);
      v15 = MEMORY[0x1E69E7CC0];
      *&v13 = 136446210;
      v42 = v13;
      v47 = result;
      v43 = v8;
      do
      {
        v16 = AGTupleElementType();
        a2();
        v17 = swift_conformsToProtocol();
        if (v17)
        {
          v18 = v17;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = v40(0, *(v15 + 16) + 1, 1, v15);
            v15 = result;
          }

          v20 = *(v15 + 16);
          v19 = *(v15 + 24);
          if (v20 >= v19 >> 1)
          {
            result = v40(v19 > 1, v20 + 1, 1, v15);
            v15 = result;
          }

          *(v15 + 16) = v20 + 1;
          v21 = (v15 + 24 * v20);
          v21[4] = v14;
          v21[5] = v16;
          v21[6] = v18;
        }

        else
        {
          v49 = 0;
          v50 = 0xE000000000000000;
          _StringGuts.grow(_:)(21);

          v48 = v14;
          v49 = 0x65646E6920746120;
          v50 = 0xEA00000000002078;
          v22 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x193ABEDD0](v22);

          MEMORY[0x193ABEDD0](0x2065707974202CLL, 0xE700000000000000);
          v23 = _typeName(_:qualified:)();
          MEMORY[0x193ABEDD0](v23);

          v24 = v49;
          v25 = v50;
          v49 = 0xD000000000000015;
          v50 = v46;
          MEMORY[0x193ABEDD0](v24, v25);

          v26 = v49;
          v27 = v50;
          if (one-time initialization token for unlocatedIssuesLog != -1)
          {
            swift_once();
          }

          v28 = __swift_project_value_buffer(v8, static Log.unlocatedIssuesLog);
          swift_beginAccess();
          (*v45)(v11, v28, v8);

          v29 = Logger.logObject.getter();
          v30 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v29, v30))
          {
            v31 = a1;
            v32 = a2;
            v33 = swift_slowAlloc();
            v34 = swift_slowAlloc();
            v35 = v26;
            v36 = v11;
            v37 = v34;
            v49 = v34;
            *v33 = v42;
            *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v27, &v49);
            _os_log_impl(&dword_18D018000, v29, v30, "%{public}s", v33, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v37);
            v38 = v37;
            v11 = v36;
            MEMORY[0x193AC4820](v38, -1, -1);
            v39 = v33;
            a2 = v32;
            a1 = v31;
            v8 = v43;
            MEMORY[0x193AC4820](v39, -1, -1);

            (*v44)(v36, v8);
          }

          else
          {

            (*v44)(v11, v8);
          }
        }

        ++v14;
      }

      while (v47 != v14);
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
    }

    *v41 = v15;
  }

  return result;
}
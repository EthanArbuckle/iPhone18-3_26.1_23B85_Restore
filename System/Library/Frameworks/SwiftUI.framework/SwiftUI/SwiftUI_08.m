char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SceneList.Item>, &type metadata for SceneList.Item, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 568);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[568 * v8])
    {
      memmove(v12, v13, 568 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HVGridGeometry>, &type metadata for HVGridGeometry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_ViewListOutputs>, MEMORY[0x1E697EC68], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_VariadicView_Children>, MEMORY[0x1E697FFD0], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ScenePhase>, &type metadata for ScenePhase, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<NavigationRequest>, &type metadata for NavigationRequest, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 168);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[168 * v8])
    {
      memmove(v12, v13, 168 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_ToolbarOutputs>, &type metadata for _ToolbarOutputs, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<FocusedValueList.Item>, &type metadata for FocusedValueList.Item, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<String>, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<NavigationColumnState>, &type metadata for NavigationColumnState, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 360);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[360 * v8])
    {
      memmove(v12, v13, 360 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ViewTraitCollection>, MEMORY[0x1E697F890], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ToolbarStorage.Entry.ID>, &type metadata for ToolbarStorage.Entry.ID, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ListLabelLayout.Child>, &type metadata for ListLabelLayout.Child, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<GridIndex>, &type metadata for GridIndex, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<GridLayout.Cache.RowOrColumn>, &type metadata for GridLayout.Cache.RowOrColumn, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v8 << 6);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<GridLayout.Cache.Cell>, &type metadata for GridLayout.Cache.Cell, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityAttachmentStorage>, &type metadata for AccessibilityAttachmentStorage, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 320);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[320 * v8])
    {
      memmove(v12, v13, 320 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ArchivedViewState>, &type metadata for ArchivedViewState, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 296);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[296 * v8])
    {
      memmove(v12, v13, 296 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text>, MEMORY[0x1E6981148], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityProperties>, MEMORY[0x1E6980108], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 288);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[288 * v8])
    {
      memmove(v12, v13, 288 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<UIKitHostedFocusItemLifecycle.Event>, &type metadata for UIKitHostedFocusItemLifecycle.Event, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for SceneList.Item?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<UInt8>, MEMORY[0x1E69E7508], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<TabEntry>, &type metadata for TabEntry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 288);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[288 * v8])
    {
      memmove(v12, v13, 288 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ButtonRepeatTiming.TimingEntry>, &type metadata for ButtonRepeatTiming.TimingEntry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityLargeContentViewTree>, &type metadata for AccessibilityLargeContentViewTree, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 248);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[248 * v8])
    {
      memmove(v12, v13, 248 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<TableSections.Item>, &type metadata for TableSections.Item, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SwiftUIAnySortComparator>, &type metadata for SwiftUIAnySortComparator, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[120 * v8])
    {
      memmove(v12, v13, 120 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityRelationshipScope.Relationship>, &type metadata for AccessibilityRelationshipScope.Relationship, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<NavigationViewDestinationView>, &type metadata for NavigationViewDestinationView, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Path>, MEMORY[0x1E6980F80], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_IdentifiedViewTree>, &type metadata for _IdentifiedViewTree, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 176);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[176 * v8])
    {
      memmove(v12, v13, 176 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<MultimodalBadgeInfo>, &type metadata for MultimodalBadgeInfo, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<(index: Int, element: TabCustomizationID, id: TabCustomizationID)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CGRect>, type metadata accessor for CGRect, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnyHashable>, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SheetPreference>, &type metadata for SheetPreference, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[112 * v8])
    {
      memmove(v12, v13, 112 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_ScrollableLayoutItem>, &type metadata for _ScrollableLayoutItem, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnyToken>, &type metadata for AnyToken, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<UIKitSearchBarCoordinator.SearchToken>, &type metadata for UIKitSearchBarCoordinator.SearchToken, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityDebugger.Entry>, MEMORY[0x1E697FB80], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PopoverPresentation>, &type metadata for PopoverPresentation, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 7);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[128 * v8])
    {
      memmove(v13, v14, v8 << 7);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<(index: Int, element: TabCustomizationID, id: TabCustomizationID)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_NSRange>, type metadata accessor for _NSRange, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ScrollViewBehavior.ContainerInfo>, &type metadata for ScrollViewBehavior.ContainerInfo, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ScalarDeceleration>, &type metadata for ScalarDeceleration, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 88 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<DropProposal>, &type metadata for DropProposal, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_LazyLayout_PlacedSubview>, MEMORY[0x1E6980610], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SectionIndexLabel>, &type metadata for SectionIndexLabel, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PPTTestCase.Name>, &type metadata for PPTTestCase.Name, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<DisplayList.AccessibilityUpdater.AttachmentStorage>, &type metadata for DisplayList.AccessibilityUpdater.AttachmentStorage, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 7);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[128 * v8])
    {
      memmove(v13, v14, v8 << 7);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CommandAccumulator>, &type metadata for CommandAccumulator, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<IdentifiedDocumentGroupConfiguration>, &type metadata for IdentifiedDocumentGroupConfiguration, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 7);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[128 * v8])
    {
      memmove(v13, v14, v8 << 7);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ViewIdentity>, MEMORY[0x1E697DFC0], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<Int?>();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ResolvedGradient.Stop>, MEMORY[0x1E697EA88], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 48 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Color.Resolved>, MEMORY[0x1E6981540], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<NavigationState.StackContent.Key>, &type metadata for NavigationState.StackContent.Key, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Double>, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityFocusStoreList.Item>, &type metadata for AccessibilityFocusStoreList.Item, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<TabItem>, &type metadata for TabItem, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[112 * v8])
    {
      memmove(v12, v13, 112 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<Range<String.Index>>();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Substring>, MEMORY[0x1E69E67B0], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PrintAccessoryView>, &type metadata for PrintAccessoryView, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityAttachment.Tree>, &type metadata for AccessibilityAttachment.Tree, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 304);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[304 * v8])
    {
      memmove(v12, v13, 304 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<KeyboardShortcutBinding>, &type metadata for KeyboardShortcutBinding, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SharingActivityPickerPresentation>, &type metadata for SharingActivityPickerPresentation, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 152);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[152 * v8])
    {
      memmove(v12, v13, 152 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HostingScrollView.PlatformGroupContainer.SubstitutionCandidate>, &type metadata for HostingScrollView.PlatformGroupContainer.SubstitutionCandidate, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<ClosedRange<CGFloat>>();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_AccessibilityRotorEntryOutputs>, &type metadata for _AccessibilityRotorEntryOutputs, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_ViewList_ID.Canonical>, MEMORY[0x1E697E088], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_ViewList_ID>, MEMORY[0x1E697E098], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodableAccessibilityAction>, &type metadata for CodableAccessibilityAction, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ToolbarPlacement>, &type metadata for ToolbarPlacement, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Sections.Item>, &type metadata for Sections.Item, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityNavigationRotorEntry>, &type metadata for AccessibilityNavigationRotorEntry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 136);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[136 * v8])
    {
      memmove(v12, v13, 136 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityAppIntentAction>, &type metadata for AccessibilityAppIntentAction, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<NavigationContentAbstractPosition>, &type metadata for NavigationContentAbstractPosition, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<WeakAttribute<SwipeActions.Value>>();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<EventID>, MEMORY[0x1E69819B0], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<GridLayout.Cache.Earmark>, &type metadata for GridLayout.Cache.Earmark, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<GeneralItem>, &type metadata for GeneralItem, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = v8 << 6;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<JindoTripleVStack.Child>, &type metadata for JindoTripleVStack.Child, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 223;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[256 * v8])
    {
      memmove(v13, v14, v8 << 8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CGFloat>, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<JindoTripleVStack.MajorAxisGroupState>, &type metadata for JindoTripleVStack.MajorAxisGroupState, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 80 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ViewTransform.Item>, MEMORY[0x1E697E218], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 120 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnyAccessibilityAction.Resolved>, &type metadata for AnyAccessibilityAction.Resolved, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<TextFormattingControl>, &type metadata for TextFormattingControl, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Data>, MEMORY[0x1E6969080], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<Range<Int>>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Range<Int>>, type metadata accessor for Range<Int>, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *specialized _ArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

uint64_t closure #1 in Scene.handlesExternalEvents(matching:)(uint64_t result, uint64_t a2)
{
  v2 = *result;
  v3 = *(*result + 16);
  if (v3)
  {
    v5 = result;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_14;
    }

    while (1)
    {
      v6 = 0;
      v7 = v2 + 512;
      while (v6 < *(v2 + 2))
      {
        outlined init with copy of SceneList.Item.Value((v7 - 60), v9);
        if (v10)
        {
          v8 = v10 == 6;
        }

        else
        {
          v8 = 1;
        }

        if (v8)
        {
          outlined destroy of SceneList.Item.Value(v9);
          *v7 = a2;
        }

        else
        {
          result = outlined destroy of SceneList.Item.Value(v9);
        }

        ++v6;
        *v5 = v2;
        v7 += 71;
        if (v3 == v6)
        {
          return result;
        }
      }

      __break(1u);
LABEL_14:
      v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
    }
  }

  return result;
}

uint64_t protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance SceneList.Key(uint64_t *a1, void (*a2)(uint64_t *__return_ptr))
{
  a2(&v6);
  v3 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *a1;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v3, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v6);

  *a1 = v6;
  return result;
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, char a4, uint64_t *a5)
{
  v67 = a5;
  v5 = a1 + 64;
  v6 = -1 << *(a1 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 64);
  v9 = (63 - v6) >> 6;

  v10 = 0;
  v49 = v9;
  v50 = v5;
  while (1)
  {
    v17 = v8;
    v18 = v10;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v20 = 24 * (__clz(__rbit64(v17)) | (v18 << 6));
    v21 = *(a1 + 48) + v20;
    v22 = *(v21 + 8);
    v23 = (*(a1 + 56) + v20);
    v24 = *v23;
    v25 = v23[1];
    v26 = v23[2];
    v27 = *(v21 + 16);
    v56 = *v21;
    *&v57 = v22;
    BYTE8(v57) = v27;
    v58 = v24;
    v59 = v25;
    v60 = v26;
    outlined copy of SceneList.Namespace(v56, v22, v27);

    a2(&v61, &v56);
    outlined consume of SceneList.Namespace(v56, v57, SBYTE8(v57));

    v28 = v64;
    if (!v64)
    {
LABEL_22:
      outlined consume of Set<UIPress>.Iterator._Variant();
    }

    v29 = v61;
    v30 = v62;
    v31 = v63;
    v53 = v65;
    v54 = v66;
    v32 = *v67;
    v34 = specialized __RawDictionaryStorage.find<A>(_:)(v61, v62, v63);
    v35 = *(v32 + 16);
    v36 = (v33 & 1) == 0;
    v37 = v35 + v36;
    if (__OFADD__(v35, v36))
    {
      goto LABEL_24;
    }

    v38 = v33;
    if (*(v32 + 24) >= v37)
    {
      if ((a4 & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v37, a4 & 1);
      v39 = specialized __RawDictionaryStorage.find<A>(_:)(v29, v30, v31);
      if ((v38 & 1) != (v40 & 1))
      {
        goto LABEL_26;
      }

      v34 = v39;
    }

    v41 = (v17 - 1) & v17;
    if (v38)
    {
      v11 = *v67;
      v12 = 24 * v34;
      v13 = (*(*v67 + 56) + v12);
      v14 = v13[1];
      v15 = v13[2];
      v56 = *v13;
      *&v57 = v14;
      *(&v57 + 1) = v15;

      specialized Array.append<A>(contentsOf:)(v28);

      outlined consume of SceneList.Namespace(v29, v30, v31);
      v16 = *(v11 + 56) + v12;
      *v16 = v56;
      *(v16 + 8) = v57;
    }

    else
    {
      v42 = *v67;
      v42[(v34 >> 6) + 8] |= 1 << v34;
      v43 = v42[6] + 24 * v34;
      *v43 = v29;
      *(v43 + 8) = v30;
      *(v43 + 16) = v31;
      v44 = (v42[7] + 24 * v34);
      *v44 = v28;
      v44[1] = v53;
      v44[2] = v54;
      v45 = v42[2];
      v46 = __OFADD__(v45, 1);
      v47 = v45 + 1;
      if (v46)
      {
        goto LABEL_25;
      }

      v42[2] = v47;
    }

    a4 = 1;
    v10 = v18;
    v9 = v49;
    v5 = v50;
    v8 = v41;
  }

  v19 = v10;
  while (1)
  {
    v18 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v18 >= v9)
    {
      goto LABEL_22;
    }

    v17 = *(v5 + 8 * v18);
    ++v19;
    if (v17)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = v4;
  *(a2 + 40) = v5;
  *a2 = v3;
  *(a2 + 8) = v2;
  v6 = *(a1 + 16);
  *(a2 + 16) = v6;
  outlined copy of SceneList.Namespace(v3, v2, v6);
}

{
  outlined init with copy of AnyHashable(a1, a2);

  return outlined init with copy of Any(a1 + 40, a2 + 40);
}

{
  outlined init with copy of NavigationLinkSelectionIdentifier(a1, a2);

  return outlined init with copy of UpdateViewDestinationRequest(a1 + 64, a2 + 64);
}

{
  type metadata accessor for (key: UUID, value: PlatformItemList)();
  v5 = *(v4 + 48);
  type metadata accessor for (UUID, PlatformItemList)();
  v7 = *(v6 + 48);
  v8 = *(a1 + v5);
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  *(a2 + v7) = v8;
}

{
  v3 = *(a1 + 56);
  v4 = *(a1 + 88);
  v11 = *(a1 + 72);
  v12[0] = v4;
  *(v12 + 9) = *(a1 + 97);
  v9 = *(a1 + 40);
  v10 = v3;
  outlined init with copy of ToolbarPlacement.Role(a1, a2);
  v5 = v9;
  *(a2 + 56) = v10;
  v6 = v12[0];
  *(a2 + 72) = v11;
  *(a2 + 88) = v6;
  *(a2 + 97) = *(v12 + 9);
  *(a2 + 40) = v5;
  return outlined init with copy of ToolbarAppearanceConfiguration(&v9, &v8);
}

{
  v3 = *(a1 + 40);
  outlined init with copy of AnyHashable(a1, a2);
  *(a2 + 40) = v3;
}

uint64_t type metadata completion function for ConfirmationDialogModifier()
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

void type metadata accessor for PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>()
{
  if (!lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>)
  {
    lazy protocol witness table accessor for type PlatformItemListButtonStyle and conformance PlatformItemListButtonStyle();
    v0 = type metadata accessor for PrimitiveButtonStyleContainerModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type PlatformItemListButtonStyle and conformance PlatformItemListButtonStyle()
{
  result = lazy protocol witness table cache variable for type PlatformItemListButtonStyle and conformance PlatformItemListButtonStyle;
  if (!lazy protocol witness table cache variable for type PlatformItemListButtonStyle and conformance PlatformItemListButtonStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItemListButtonStyle and conformance PlatformItemListButtonStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>()
{
  result = lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>;
  if (!lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>)
  {
    type metadata accessor for ContainerContextPredicate<ListContainerContext>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, lazy protocol witness table accessor for type PlatformItemListButtonStyle and conformance PlatformItemListButtonStyle, &type metadata for PlatformItemListButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>);
  }

  return result;
}

void type metadata accessor for ContainerContextPredicate<ListContainerContext>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void _s7SwiftUI25ContainerContextPredicateVyAA04ListcD0VGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance _TaskModifier()
{
  type metadata accessor for _TaskModifier.InnerModifier(0);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type _TaskModifier.Child and conformance _TaskModifier.Child();
  Attribute.init<A>(body:value:flags:update:)();
  lazy protocol witness table accessor for type _TaskModifier.InnerModifier and conformance _TaskModifier.InnerModifier(&lazy protocol witness table cache variable for type _TaskModifier.InnerModifier and conformance _TaskModifier.InnerModifier, type metadata accessor for _TaskModifier.InnerModifier);
  return static ViewModifier.makeDebuggableView(modifier:inputs:body:)();
}

char *AppStorage.init<A>(_:store:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return AppStorage.init<A>(_:store:)(a1, a2, a3, a4, a5, &unk_1EFFBA410, &protocol witness table for IntegerTransform);
}

{
  return AppStorage.init<A>(_:store:)(a1, a2, a3, a4, a5, &unk_1EFFBA3D0, &protocol witness table for StringTransform);
}

unint64_t lazy protocol witness table accessor for type PlainListStyleContext and conformance PlainListStyleContext()
{
  result = lazy protocol witness table cache variable for type PlainListStyleContext and conformance PlainListStyleContext;
  if (!lazy protocol witness table cache variable for type PlainListStyleContext and conformance PlainListStyleContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlainListStyleContext and conformance PlainListStyleContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlainListStyleContext and conformance PlainListStyleContext;
  if (!lazy protocol witness table cache variable for type PlainListStyleContext and conformance PlainListStyleContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlainListStyleContext and conformance PlainListStyleContext);
  }

  return result;
}

char *AppStorage.init<A>(_:store:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v21 - v16;
  v21[0] = a4;
  v21[1] = a6;
  v21[2] = a5;
  v21[3] = a7;
  v18 = type metadata accessor for RawRepresentableTransform();
  (*(*(a4 - 8) + 56))(v17, 1, 1, a4);
  v19 = specialized AppStorage.init(key:transform:store:defaultValue:)(a1, a2, v18, &protocol witness table for RawRepresentableTransform<A, B>, a3, v17, v14);
  (*(v15 + 8))(v17, v14);
  return v19;
}

void type metadata accessor for _PreferenceWritingModifier<OrnamentBillboardingBehavior.Key>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for _PreferenceWritingModifier();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type _PreferenceWritingModifier<OrnamentBillboardingBehavior.Key> and conformance _PreferenceWritingModifier<A>(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _PreferenceWritingModifier<OrnamentBillboardingBehavior.Key>(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t UIHostingContentView.hostingView<A>(_:willModifyViewInputs:)(void *a1, uint64_t a2)
{
  v5 = *a1 & *MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x710);
  v16[0] = *((*MEMORY[0x1E69E7D40] & *v2) + 0x700);
  v16[1] = v6;
  v7 = type metadata accessor for UIHostingConfiguration();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v16 - v9;
  UIHostingContentView._configuration.getter(v16 - v9);
  v11 = UIHostingConfiguration.delegate.getter(v7);
  v13 = v12;
  result = (*(v8 + 8))(v10, v7);
  if (v11)
  {
    ObjectType = swift_getObjectType();
    (*(v13 + 56))(a1, a2, *(v5 + 80), *(v5 + 88), ObjectType, v13);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t specialized HostingContentViewGraph.modifyViewInputs(inputs:graph:)()
{
  result = _GraphInputs.pushStyleContext<A>(_:)();
  v2 = *v0;
  if (*v0 <= 3)
  {
    if (v2 == 2)
    {
      lazy protocol witness table accessor for type PlainListStyleContext and conformance PlainListStyleContext();
    }

    else
    {
      if (v2 != 3)
      {
        return result;
      }

      lazy protocol witness table accessor for type GroupedListStyleContext and conformance GroupedListStyleContext();
    }
  }

  else
  {
    switch(v2)
    {
      case 4:
        lazy protocol witness table accessor for type InsetGroupedListStyleContext and conformance InsetGroupedListStyleContext();
        break;
      case 5:
        lazy protocol witness table accessor for type SidebarListStyleContext and conformance SidebarListStyleContext();
        break;
      case 6:
        lazy protocol witness table accessor for type InsetListStyleContext and conformance InsetListStyleContext();
        break;
      default:
        return result;
    }
  }

  return _GraphInputs.pushStyleContext<A>(_:)();
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance ContentConfigurationBasedRootEnvironment(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static ViewModifier<>._makeView(modifier:inputs:body:)(v3, v7, a3);
}

uint64_t type metadata accessor for ContentConfigurationBasedRootEnvironment()
{
  result = type metadata singleton initialization cache for ContentConfigurationBasedRootEnvironment;
  if (!type metadata singleton initialization cache for ContentConfigurationBasedRootEnvironment)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance ContentConfigurationBasedRootEnvironment()
{
  lazy protocol witness table accessor for type ViewInputFlagModifier<PreferBaselineAlignedHeaders> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type ContentConfigurationBasedRootEnvironment and conformance ContentConfigurationBasedRootEnvironment, type metadata accessor for ContentConfigurationBasedRootEnvironment);

  return static EnvironmentModifier._makeInputs(modifier:inputs:)();
}

uint64_t lazy protocol witness table accessor for type ViewInputFlagModifier<PreferBaselineAlignedHeaders> and conformance ViewInputFlagModifier<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t protocol witness for ViewGraphFeature.modifyViewOutputs(outputs:inputs:graph:) in conformance SwipeActions.Feature()
{
  PreferencesOutputs.subscript.getter();
  result = AGCreateWeakAttribute();
  *v0 = result;
  *(v0 + 8) = 0;
  return result;
}

uint64_t initializeWithCopy for ContentConfigurationBasedRootEnvironment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  v7 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v7;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  v9 = a2 + 72;
  v8 = *(a2 + 72);

  if (v8 == 1)
  {
    *(a1 + 72) = *v9;
    *(a1 + 80) = *(v9 + 8);
  }

  else
  {
    *(a1 + 72) = v8;
    *(a1 + 80) = *(a2 + 80);
  }

  *(a1 + 81) = *(a2 + 81);
  v10 = *(a3 + 24);
  v11 = type metadata accessor for UICellConfigurationState();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(a2 + v10, 1, v11))
  {
    type metadata accessor for UICellConfigurationState?(0);
    memcpy((a1 + v10), (a2 + v10), *(*(v13 - 8) + 64));
  }

  else
  {
    (*(v12 + 16))(a1 + v10, a2 + v10, v11);
    (*(v12 + 56))(a1 + v10, 0, 1, v11);
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for BorderedButtonStyle_CarCatalyst(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 9))
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

uint64_t destroy for ContentConfigurationBasedRootEnvironment(uint64_t a1, uint64_t a2)
{

  if (*(a1 + 72) != 1)
  {
  }

  v4 = *(a2 + 24);
  v5 = type metadata accessor for UICellConfigurationState();
  v8 = *(v5 - 8);
  result = (*(v8 + 48))(a1 + v4, 1, v5);
  if (!result)
  {
    v7 = *(v8 + 8);

    return v7(a1 + v4, v5);
  }

  return result;
}

uint64_t initializeWithCopy for ListContentStyling(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  v7 = a2 + 72;
  v6 = *(a2 + 72);

  if (v6 == 1)
  {
    *(a1 + 72) = *v7;
    *(a1 + 80) = *(v7 + 8);
  }

  else
  {
    *(a1 + 72) = v6;
    *(a1 + 80) = *(a2 + 80);
  }

  return a1;
}

uint64_t HostingContentViewRootModifier.body(content:)@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  type metadata accessor for UICellConfigurationState?(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v56 = v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout>, ContentConfigurationBasedRootEnvironment>();
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout>, ContentConfigurationBasedRootEnvironment>, _FlexFrameLayout>(0);
  v55 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout>, ContentConfigurationBasedRootEnvironment>, _FlexFrameLayout>, AccessibilityAttachmentModifier>(0);
  v52 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v57 = v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v1 + 23);
  v14 = HostingContentViewRootModifier.effectivePadding.getter();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = static Edge.Set.all.getter();
  v22 = v1[3];
  v64 = v1[2];
  v65 = v22;
  v66 = v1[4];
  v67 = *(v1 + 80);
  v23 = v1[1];
  v62 = *v1;
  v63 = v23;
  v24 = *(type metadata accessor for HostingContentViewRootModifier(0) + 32);
  v25 = v7 + *(v5 + 44);
  v26 = *(type metadata accessor for ContentConfigurationBasedRootEnvironment() + 24);
  v54 = v24;
  outlined init with copy of UIHostingConfigurationStorage(v1 + v24, &v25[v26], type metadata accessor for UICellConfigurationState?);
  v27 = v65;
  *(v25 + 2) = v64;
  *(v25 + 3) = v27;
  *(v25 + 4) = v66;
  v25[80] = v67;
  v28 = v63;
  *v25 = v62;
  *(v25 + 1) = v28;
  v25[81] = 1;
  *v7 = v21;
  v7[1] = v14;
  *(v7 + 2) = v16;
  *(v7 + 3) = v18;
  *(v7 + 4) = v20;
  *(v7 + 40) = 0;
  v29 = *(v1 + 19);
  if (v13 >= 2)
  {
    *&v30 = INFINITY;
  }

  else
  {
    *&v30 = 0.0;
  }

  v58 = *(v1 + 160);
  outlined init with copy of ListContentStyling(&v62, v59);
  if (v13 >= 2)
  {
    v31 = static Alignment.leading.getter();
  }

  else
  {
    v31 = static Alignment.center.getter();
  }

  v33 = v29;
  if (v58)
  {
    v33 = -INFINITY;
  }

  v34 = *&v30;
  if (v13 < 2)
  {
    v34 = v33;
  }

  if (v33 > v34)
  {
    v51[1] = v32;
    v51[2] = v31;
    static os_log_type_t.fault.getter();
    v35 = static Log.runtimeIssuesLog.getter();
    v51[3] = v13;
    v36 = v35;
    os_log(_:dso:log:_:_:)();
  }

  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  outlined init with take of ModifiedContent<ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout>, ContentConfigurationBasedRootEnvironment>(v7, v10, type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout>, ContentConfigurationBasedRootEnvironment>);
  v37 = &v10[*(v55 + 36)];
  v38 = v73;
  *(v37 + 4) = v72;
  *(v37 + 5) = v38;
  *(v37 + 6) = v74;
  v39 = v69;
  *v37 = v68;
  *(v37 + 1) = v39;
  v40 = v71;
  *(v37 + 2) = v70;
  *(v37 + 3) = v40;
  v41 = v56;
  outlined init with copy of UIHostingConfigurationStorage(v1 + v54, v56, type metadata accessor for UICellConfigurationState?);
  v42 = type metadata accessor for UICellConfigurationState();
  v43 = *(v42 - 8);
  if ((*(v43 + 48))(v41, 1, v42) == 1)
  {
    outlined destroy of UIHostingConfigurationStorage(v41, type metadata accessor for UICellConfigurationState?);
    v44 = 0;
  }

  else
  {
    v45 = UICellConfigurationState.isSelected.getter();
    (*(v43 + 8))(v41, v42);
    if (v45)
    {
      v44 = 4;
    }

    else
    {
      v44 = 0;
    }
  }

  AccessibilityProperties.init()();
  v60[5] = v44;
  v60[6] = v44;
  v61 = 0;
  static AccessibilityAttachment.properties(_:)();
  outlined destroy of AccessibilityProperties(v60);
  _s7SwiftUI10MutableBoxCyAA23AccessibilityAttachmentVGMaTm_2(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v46 = swift_allocObject();
  memcpy((v46 + 16), v59, 0x128uLL);
  v47 = v57;
  outlined init with take of ModifiedContent<ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout>, ContentConfigurationBasedRootEnvironment>(v10, v57, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout>, ContentConfigurationBasedRootEnvironment>, _FlexFrameLayout>);
  v48 = v53;
  v49 = (v47 + *(v52 + 36));
  *v49 = v46;
  v49[1] = 0;
  return outlined init with take of ModifiedContent<ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout>, ContentConfigurationBasedRootEnvironment>(v47, v48, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout>, ContentConfigurationBasedRootEnvironment>, _FlexFrameLayout>, AccessibilityAttachmentModifier>);
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout>, ContentConfigurationBasedRootEnvironment>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout>, ContentConfigurationBasedRootEnvironment>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout>(255, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout>, type metadata accessor for _ViewModifier_Content<HostingContentViewRootModifier>);
    type metadata accessor for ContentConfigurationBasedRootEnvironment();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout>, ContentConfigurationBasedRootEnvironment>);
    }
  }
}

double HostingContentViewRootModifier.effectivePadding.getter()
{
  v1 = OptionalEdgeInsets.top.getter();
  if (v2)
  {
    v3 = *v0;
  }

  else
  {
    v3 = *&v1;
  }

  OptionalEdgeInsets.leading.getter();
  OptionalEdgeInsets.bottom.getter();
  OptionalEdgeInsets.trailing.getter();
  return v3;
}

uint64_t specialized static ContentConfigurationBasedRootEnvironment.makeEnvironment(modifier:environment:)()
{
  v0 = type metadata accessor for ContentConfigurationBasedRootEnvironment();
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  outlined init with copy of UICellConfigurationState?(Value, v2, type metadata accessor for ContentConfigurationBasedRootEnvironment);
  if (v2[81] == 1)
  {
    v4 = *(v2 + 3);
    v5 = *(v2 + 1);
    v17 = *(v2 + 2);
    v18 = v4;
    v6 = *(v2 + 3);
    v19 = *(v2 + 4);
    v7 = *(v2 + 1);
    v16[0] = *v2;
    v16[1] = v7;
    v12 = v17;
    v13 = v6;
    v14 = *(v2 + 4);
    v20 = v2[80];
    v15 = v2[80];
    v10 = v16[0];
    v11 = v5;
    v8 = *(v0 + 24);
    outlined init with copy of ListContentStyling(v16, v21);
    EnvironmentValues.configureListStyling(_:state:)(&v10, &v2[v8]);
    v21[2] = v12;
    v21[3] = v13;
    v21[4] = v14;
    v22 = v15;
    v21[0] = v10;
    v21[1] = v11;
    outlined destroy of ListContentStyling(v21);
  }

  return _s5UIKit24UICellConfigurationStateVSgWOhTm_0(v2, type metadata accessor for ContentConfigurationBasedRootEnvironment);
}

uint64_t EnvironmentValues.configureListStyling(_:state:)(__int128 *a1, uint64_t a2)
{
  v3 = v2;
  v35 = a2;
  type metadata accessor for UICellConfigurationState?(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UICellConfigurationState();
  v37 = *(v8 - 8);
  v38 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  v14 = *a1;
  v32 = a1[1];
  v33 = v14;
  v15 = *(a1 + 6);
  v34 = *(a1 + 56);
  v16 = *(a1 + 8);
  v17 = *(a1 + 9);
  v18 = *(a1 + 80);

  EnvironmentValues.defaultFont.setter();
  v36 = v13;
  if (v15)
  {
    v20 = *v3;
    v19 = v3[1];
    v40 = v15;
    *&v41 = v20;
    *(&v41 + 1) = v19;
    v39 = 0;

    ShapeStyle.copyStyle(name:in:foregroundStyle:)();
  }

  EnvironmentValues.defaultForegroundStyle.setter();
  *&v41 = v16;
  BYTE8(v41) = 0;
  _s7SwiftUI22EnvironmentPropertyKeyVyAA022ProminentHeaderStylingE0013_66E45C4729D0K18FEA1B1BE7BA175BEC8LLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultLabelIconToTitleSpacingKey>, &type metadata for DefaultLabelIconToTitleSpacingKey, &protocol witness table for DefaultLabelIconToTitleSpacingKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultLabelIconToTitleSpacingKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  v21 = v3[1];
  if (v21)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  v41 = v33;
  v42 = v32;
  _s7SwiftUI22EnvironmentPropertyKeyVyAA022ProminentHeaderStylingE0013_66E45C4729D0K18FEA1B1BE7BA175BEC8LLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListRowInsetsKey>, &type metadata for ListRowInsetsKey, &protocol witness table for ListRowInsetsKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ListRowInsetsKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (v21)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  *&v41 = v17;
  BYTE8(v41) = v18;
  _s7SwiftUI22EnvironmentPropertyKeyVyAA022ProminentHeaderStylingE0013_66E45C4729D0K18FEA1B1BE7BA175BEC8LLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListItemTintKey>, &type metadata for ListItemTintKey, &protocol witness table for ListItemTintKey, MEMORY[0x1E697FE38]);

  outlined copy of Transaction?(v17);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ListItemTintKey> and conformance EnvironmentPropertyKey<A>();
  PropertyList.subscript.setter();
  if (v21)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  v23 = v37;
  v22 = v38;
  if (v34)
  {
    LOBYTE(v41) = 0;
    EnvironmentValues.textCase.setter();
  }

  outlined init with copy of UICellConfigurationState?(v35, v7, type metadata accessor for UICellConfigurationState?);
  v24 = (*(v23 + 48))(v7, 1, v22);
  v25 = v36;
  if (v24 == 1)
  {
    return _s5UIKit24UICellConfigurationStateVSgWOhTm_0(v7, type metadata accessor for UICellConfigurationState?);
  }

  (*(v23 + 32))(v36, v7, v22);
  if (UICellConfigurationState.isSelected.getter() & 1) != 0 && (UICellConfigurationState.isFocused.getter())
  {
    static BackgroundProminence.increased.getter();
  }

  else
  {
    static BackgroundProminence.standard.getter();
  }

  EnvironmentValues.backgroundProminence.setter();
  (*(v23 + 16))(v10, v25, v22);
  v27 = UICellConfigurationState.isEditing.getter();
  v28 = UICellConfigurationState.isSelected.getter();
  v29 = UICellConfigurationState.isPinned.getter();
  v30 = UICellConfigurationState.isFocused.getter();
  v31 = *(v23 + 8);
  v31(v10, v22);
  LOBYTE(v41) = v27 & 1;
  BYTE1(v41) = v28 & 1;
  BYTE2(v41) = v29 & 1;
  BYTE3(v41) = v30 & 1;
  _s7SwiftUI22EnvironmentPropertyKeyVyAA022ProminentHeaderStylingE0013_66E45C4729D0K18FEA1B1BE7BA175BEC8LLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<UIKitCellStateKey>, &type metadata for UIKitCellStateKey, &protocol witness table for UIKitCellStateKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<UIKitCellStateKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (v3[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();

    return (v31)(v25, v22);
  }

  else
  {
    v31(v25, v22);
  }
}

uint64_t outlined init with copy of UICellConfigurationState?(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t destroy for ListContentStyling(uint64_t a1)
{

  result = *(a1 + 72);
  if (result != 1)
  {
  }

  return result;
}

uint64_t outlined destroy of UICellConfigurationState?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  type metadata accessor for UICellConfigurationState?(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s5UIKit24UICellConfigurationStateVSgWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void @objc UIHostingContentView.layoutSubviews()(void *a1)
{
  v1 = a1;
  UIHostingContentView.layoutSubviews()();
}

id UIHostingContentView.layoutSubviews()()
{
  v1 = MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x700);
  v7 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x710);
  v8.receiver = v0;
  v8.super_class = type metadata accessor for UIHostingContentView();
  result = objc_msgSendSuper2(&v8, sel_layoutSubviews, v6, v7);
  v3 = (v0 + *((*v1 & *v0) + 0x778));
  v4 = *v3;
  if (*v3)
  {
    v5 = outlined copy of AppIntentExecutor?(*v3);
    v4(v5);
    return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v4);
  }

  return result;
}

uint64_t outlined init with copy of WeakBox<UIButton>?(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t protocol witness for static PreferenceKey.defaultValue.getter in conformance BridgedPopUpButtonPreferenceKey@<X0>(uint64_t a1@<X8>)
{
  v1 = a1;
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
    v1 = a1;
  }

  return outlined init with copy of WeakBox<UIButton>?(&static BridgedPopUpButtonPreferenceKey.defaultValue, v1, type metadata accessor for WeakBox<UIButton>?);
}

uint64_t UIHostingContentView.hostingView<A>(_:didChangePreferences:)(void *a1, uint64_t *a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *MEMORY[0x1E69E7D40];
  v8 = *MEMORY[0x1E69E7D40] & *v2;
  v27 = *a1 & *MEMORY[0x1E69E7D40];
  v9 = *(v8 + 1808);
  v30[0] = *(v8 + 1792);
  v30[1] = v9;
  v10 = type metadata accessor for UIHostingConfiguration();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - v12;
  v14 = *a2;
  v15 = *(v3 + *((v7 & v6) + 0x748));
  if (v15)
  {
    v16 = *(v8 + 1880);
    swift_beginAccess();
    v31[0] = v14;
    outlined copy of AppIntentExecutor?(v15);
    PreferenceValues.subscript.getter();
    v17 = *(v3 + v16);
    if (v17 == -1 || v29 == -1 || v17 != v29)
    {
      *(v3 + v16) = v29;
      outlined init with copy of UIHostingConfigurationStorage(v28, v31, type metadata accessor for WeakBox<UIButton>?);
      v20 = UIHostingContentView.popUpButton.setter(v31);
      v15(v20);
    }

    outlined destroy of UIHostingConfigurationStorage(v28, type metadata accessor for PreferenceValues.Value<WeakBox<UIButton>?>);
    swift_endAccess();
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v15);
  }

  UIHostingContentView._configuration.getter(v13);
  v21 = UIHostingConfiguration.delegate.getter(v10);
  v23 = v22;
  result = (*(v11 + 8))(v13, v10);
  if (v21)
  {
    ObjectType = swift_getObjectType();
    *&v30[0] = v14;
    (*(v23 + 40))(a1, v30, *(v27 + 80), *(v27 + 88), ObjectType, v23);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t UIHostingContentView.roundSize(_:)()
{
  _UIHostingView.viewGraph.getter();
  GraphHost.environment.getter();

  EnvironmentValues.pixelLength.getter();
}

void protocol witness for static RemovableAttribute.didReinsert(attribute:) in conformance PropertiesTransform()
{
  AGGraphGetAttributeInfo();
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 232);
  *(v1 + 232) = Strong;

  v4 = *(v1 + 232);
  if (v4)
  {
    *(v4 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_platformElementPropertiesDirty) = 1;
  }
}

uint64_t UIHostingContentView.popUpButton.setter(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x750);
  swift_beginAccess();
  outlined assign with take of WeakBox<UIButton>?(a1, v1 + v3, type metadata accessor for WeakBox<UIButton>?);
  return swift_endAccess();
}

void type metadata completion function for ContentConfigurationBasedRootEnvironment()
{
  type metadata accessor for UICellConfigurationState?(319);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void type metadata accessor for _ViewModifier_Content<HostingContentViewRootModifier>()
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<HostingContentViewRootModifier>)
  {
    type metadata accessor for HostingContentViewRootModifier(255);
    lazy protocol witness table accessor for type HostingContentViewRootModifier and conformance HostingContentViewRootModifier(&lazy protocol witness table cache variable for type HostingContentViewRootModifier and conformance HostingContentViewRootModifier, type metadata accessor for HostingContentViewRootModifier);
    v0 = type metadata accessor for _ViewModifier_Content();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ViewModifier_Content<HostingContentViewRootModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout>(255, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout>, type metadata accessor for _ViewModifier_Content<HostingContentViewRootModifier>);
    lazy protocol witness table accessor for type HostingContentViewRootModifier and conformance HostingContentViewRootModifier(&lazy protocol witness table cache variable for type _ViewModifier_Content<HostingContentViewRootModifier> and conformance _ViewModifier_Content<A>, type metadata accessor for _ViewModifier_Content<HostingContentViewRootModifier>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ViewInputFlagModifier<IsInHostingConfiguration> and conformance ViewInputFlagModifier<A>()
{
  result = lazy protocol witness table cache variable for type ViewInputFlagModifier<IsInHostingConfiguration> and conformance ViewInputFlagModifier<A>;
  if (!lazy protocol witness table cache variable for type ViewInputFlagModifier<IsInHostingConfiguration> and conformance ViewInputFlagModifier<A>)
  {
    type metadata accessor for ViewGraphGeometryObservers<SizeThatFitsMeasurer>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<IsInHostingConfiguration>, lazy protocol witness table accessor for type IsInHostingConfiguration and conformance IsInHostingConfiguration, &type metadata for IsInHostingConfiguration, MEMORY[0x1E697FD28]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewInputFlagModifier<IsInHostingConfiguration> and conformance ViewInputFlagModifier<A>);
  }

  return result;
}

void @objc UIHostingController.viewWillTransition(to:with:)(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  UIHostingController.viewWillTransition(to:with:)(a5, a2, a3);
  swift_unknownObjectRelease();
}

void UIHostingController.viewWillTransition(to:with:)(void *a1, double a2, double a3)
{
  v4 = v3;
  v8 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x50);
  v9 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x58);
  v16.receiver = v3;
  v16.super_class = type metadata accessor for UIHostingController();
  objc_msgSendSuper2(&v16, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  static Semantics.v6_2.getter();
  if (isLinkedOnOrAfter(_:)())
  {
    _UIHostingView.isInSizeTransition.setter(1);
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = swift_allocObject();
    *(v11 + 16) = v8;
    *(v11 + 24) = v9;
    *(v11 + 32) = 1;
    *(v11 + 40) = v10;
    v15[4] = partial apply for closure #1 in UIHostingController.viewWillTransition(to:with:);
    v15[5] = v11;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 1107296256;
    v15[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
    v15[3] = &block_descriptor_85;
    v12 = _Block_copy(v15);

    [a1 animateAlongsideTransition:0 completion:v12];
    _Block_release(v12);
  }

  v13 = *(v4 + direct field offset for UIHostingController.host);
  type metadata accessor for _UIHostingView();
  v14 = v13;
  swift_getWitnessTable();
  ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
}

uint64_t sub_18BDB4FD4()
{

  return swift_deallocObject();
}

double @objc _UIHostingView.sizeThatFits(_:)(void *a1, double a2, double a3)
{
  v5 = a1;
  *&v6 = *&_UIHostingView.sizeThatFits(_:)(__PAIR128__(*&a3, *&a2));

  return v6;
}

CGSize __swiftcall _UIHostingView.sizeThatFits(_:)(CGSize a1)
{
  height = a1.height;
  width = a1.width;
  v3 = _UIHostingView.base.getter();
  v4 = MEMORY[0x18D001840](width, height);
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

void closure #1 in UIHostingController.viewWillTransition(to:with:)(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = *(Strong + direct field offset for UIHostingController.host);

      _UIHostingView.isInSizeTransition.setter(0);
    }
  }
}

uint64_t destroy for LazyHGrid(uint64_t a1, uint64_t a2)
{

  v4 = *(*(a2 + 16) - 8);
  v5 = *(v4 + 8);
  v6 = (a1 + *(v4 + 80) + 32) & ~*(v4 + 80);

  return v5(v6);
}

uint64_t specialized HVGrid.lengthAndSpacing(subviews:predecessors:minorGeometry:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (a2)
  {
    v20 = *(a2 + 16);
    v4 = *(result + 16);
    if (!v4)
    {
      return result;
    }
  }

  else
  {
    v20 = 0;
    v4 = *(result + 16);
    if (!v4)
    {
      return result;
    }
  }

  v5 = 0;
  v19 = *(a3 + 16);
  v6 = a2 + 32;
  v7 = result + 32;
  v18 = v4 - 1;
  v8 = a3 + 40;
  v9 = 0.0;
  v10 = 0.0;
  while (v19 != v5)
  {
    _ProposedSize.init(_:in:by:)();
    v28 = v21;
    v29 = BYTE8(v21);
    v30 = v22;
    v31 = BYTE8(v22);
    result = ProposedViewSize.init(_:)();
    if (v5 >= v20)
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v21 = 0u;
    }

    else
    {
      if (!v3)
      {
        goto LABEL_22;
      }

      if (v5 >= *(v3 + 16))
      {
        goto LABEL_21;
      }

      v17 = v11;
      outlined init with copy of _LazyLayout_Subview(v6, &v21);
      v11 = v17;
      v3 = a2;
    }

    LOBYTE(v28) = v11 & 1;
    _LazyLayout_Subview.lengthAndSpacing(size:axis:predecessor:uniformSpacing:)();
    if (v10 <= v12)
    {
      v10 = v12;
    }

    if (v9 <= v13)
    {
      v9 = v13;
    }

    type metadata accessor for AGGraphRef(0);
    updated = static AGGraphRef.cancelCurrentUpdateIfDeadlinePassed()();
    result = outlined destroy of _LazyLayout_Subview?(&v21);
    if ((updated & 1) == 0)
    {
      v8 += 32;
      v6 += 112;
      v7 += 112;
      if (v18 != v5++)
      {
        continue;
      }
    }

    return result;
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t outlined destroy of _LazyLayout_Subview?(uint64_t a1)
{
  type metadata accessor for [String](0, &lazy cache variable for type metadata for _LazyLayout_Subview?, MEMORY[0x1E697F980], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for [String](uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _sSaySSGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t initializeWithCopy for LazyHGridLayout(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);

  return a1;
}

uint64_t protocol witness for static LazyLayout.layoutProperties.getter in conformance LazyVGridLayout@<X0>(_WORD *a1@<X8>)
{
  result = default argument 1 of _LazyLayout_Properties.init(axes:multipleViewAxes:)();
  *a1 = 770;
  return result;
}

unint64_t lazy protocol witness table accessor for type LazyVGridLayout and conformance LazyVGridLayout()
{
  result = lazy protocol witness table cache variable for type LazyVGridLayout and conformance LazyVGridLayout;
  if (!lazy protocol witness table cache variable for type LazyVGridLayout and conformance LazyVGridLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LazyVGridLayout and conformance LazyVGridLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LazyVGridLayout and conformance LazyVGridLayout;
  if (!lazy protocol witness table cache variable for type LazyVGridLayout and conformance LazyVGridLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LazyVGridLayout and conformance LazyVGridLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LazyVGridLayout and conformance LazyVGridLayout;
  if (!lazy protocol witness table cache variable for type LazyVGridLayout and conformance LazyVGridLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LazyVGridLayout and conformance LazyVGridLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LazyVGridLayout and conformance LazyVGridLayout;
  if (!lazy protocol witness table cache variable for type LazyVGridLayout and conformance LazyVGridLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LazyVGridLayout and conformance LazyVGridLayout);
  }

  return result;
}

uint64_t protocol witness for LazyStack.minorGeometry(updatingSize:) in conformance LazyHGridLayout(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, void, void, void, unint64_t))
{
  result = a5(a2, *v5, *(v5 + 8), *(v5 + 16), *(v5 + 24) | (*(v5 + 28) << 32));
  *a1 = v8;
  return result;
}

uint64_t specialized HVGrid.minorGeometry(updatingSize:)(double *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = *a1;
  v4 = MEMORY[0x1E69E7CC0];
  if ((*a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v68 = a2 + 32;

  v7 = 0;
  v8 = (a2 + 64);
  v9 = v2;
  v10 = v3;
  do
  {
    v11 = *(v8 - 1);
    if (!*(v8 - 16))
    {
      v10 = v10 - *(v8 - 4);
      if (v9 == 1)
      {
        goto LABEL_7;
      }

LABEL_13:
      if (*v8)
      {
        result = static Spacing.defaultValue.getter();
      }

      v10 = v10 - v11;
      goto LABEL_7;
    }

    if (__OFADD__(v7++, 1))
    {
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
      return result;
    }

    if (v9 != 1)
    {
      goto LABEL_13;
    }

LABEL_7:
    v8 += 8;
    --v9;
  }

  while (v9);
  if (*(v4 + 16) <= v2)
  {
    v13 = v2;
  }

  else
  {
    v13 = *(v4 + 16);
  }

  v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0, v4);
  v15 = 0;
  v16 = 0.0;
  while (2)
  {
    v19 = v68 + (v15 << 6);
    v20 = *v19;
    v21 = *(v19 + 8);
    v22 = *(v19 + 16);
    v23 = *(v19 + 56);
    if (*(v19 + 32))
    {
      static Spacing.defaultValue.getter();
      v25 = v24;
      if ((v23 & 1) == 0)
      {
        goto LABEL_27;
      }

LABEL_42:
      v33 = lazy protocol witness table accessor for type LazyVGridLayout and conformance LazyVGridLayout();
      (*(v33 + 24))(&type metadata for LazyVGridLayout, v33);
      result = UnitPoint.init(_:in:by:)();
      v17 = v20;
      if (!v22)
      {
        goto LABEL_43;
      }

LABEL_28:
      if (v22 == 1)
      {
        if (v17 > v21)
        {
          goto LABEL_83;
        }

        if (v10 < 0.0)
        {
          v28 = 0.0;
        }

        else
        {
          v28 = v10;
        }

        v29 = v28 / v7;
        if (v29 < v17)
        {
          v29 = v17;
        }

        if (v29 <= v21)
        {
          v17 = v29;
        }

        else
        {
          v17 = v21;
        }

        v31 = *(v14 + 2);
        v30 = *(v14 + 3);
        if (v31 >= v30 >> 1)
        {
          v66 = v26;
          v52 = v27;
          v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v14);
          v27 = v52;
          v26 = v66;
          v14 = v53;
        }

        *(v14 + 2) = v31 + 1;
        v32 = &v14[32 * v31];
        *(v32 + 4) = v16;
        *(v32 + 5) = v17;
        *(v32 + 6) = v26;
        *(v32 + 7) = v27;
      }

      else
      {
        if (v10 < 0.0)
        {
          v37 = 0.0;
        }

        else
        {
          v37 = v10;
        }

        v38 = v37 / v7;
        v39 = floor((v38 - v17) / (v25 + v17));
        if (v39 < 0.0)
        {
          v39 = 0.0;
        }

        v40 = v39 + 1.0;
        if (v40 == INFINITY)
        {
          goto LABEL_82;
        }

        if (v40 <= -9.22337204e18)
        {
          goto LABEL_84;
        }

        if (v40 >= 9.22337204e18)
        {
          goto LABEL_85;
        }

        v41 = v40;
        if (__OFSUB__(v40, 1))
        {
          goto LABEL_86;
        }

        v42 = (v38 - v25 * (v40 - 1)) / v41;
        if (v42 >= v21)
        {
          v43 = v21;
        }

        else
        {
          v43 = v42;
        }

        if (v41 < 0)
        {
          goto LABEL_87;
        }

        if (v41)
        {
          v44 = *(v14 + 2);
          v45 = 32 * v44 + 56;
          v17 = 0.0;
          do
          {
            v46 = *(v14 + 3);
            v47 = v44 + 1;
            if (v44 >= v46 >> 1)
            {
              v63 = v27;
              v64 = v26;
              v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v44 + 1, 1, v14);
              v27 = v63;
              v26 = v64;
              v14 = v49;
            }

            *(v14 + 2) = v47;
            v48 = &v14[v45];
            *(v48 - 3) = v16 + v17;
            *(v48 - 2) = v43;
            *(v48 - 1) = v26;
            *v48 = v27;
            if (--v41)
            {
              v17 = v25 + v43 + v17;
            }

            else
            {
              v17 = v43 + v17;
            }

            v45 += 32;
            v44 = v47;
          }

          while (v41);
        }

        else
        {
          v17 = 0.0;
        }
      }

      v10 = v10 - v17;
      --v7;
    }

    else
    {
      v25 = *(v19 + 24);
      if (*(v19 + 56))
      {
        goto LABEL_42;
      }

LABEL_27:
      result = Alignment.fraction.getter();
      v17 = v20;
      if (v22)
      {
        goto LABEL_28;
      }

LABEL_43:
      v35 = *(v14 + 2);
      v34 = *(v14 + 3);
      if (v35 >= v34 >> 1)
      {
        v65 = v26;
        v50 = v27;
        v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v14);
        v27 = v50;
        v26 = v65;
        v14 = v51;
      }

      *(v14 + 2) = v35 + 1;
      v36 = &v14[32 * v35];
      *(v36 + 4) = v16;
      *(v36 + 5) = v20;
      *(v36 + 6) = v26;
      *(v36 + 7) = v27;
    }

    v18 = v15 + 1;
    if (v15 == v2 - 1)
    {
      v16 = v16 + v17;
    }

    else
    {
      v16 = v25 + v16 + v17;
    }

    ++v15;
    if (v18 != v2)
    {
      continue;
    }

    break;
  }

  if (v3 < v16)
  {
    *a1 = v16;
    return *(v14 + 2);
  }

  if (v16 < v3)
  {
    v54 = lazy protocol witness table accessor for type LazyVGridLayout and conformance LazyVGridLayout();
    v55 = (v3 - v16) * (*(v54 + 24))(&type metadata for LazyVGridLayout, v54);
    if (v55 != 0.0)
    {
      v56 = *(v14 + 2);
      if (v56)
      {
        if (v56 == 1)
        {
          v57 = 0;
          goto LABEL_78;
        }

        v57 = v56 & 0x7FFFFFFFFFFFFFFELL;
        v58 = (v14 + 64);
        v59 = v56 & 0x7FFFFFFFFFFFFFFELL;
        do
        {
          v60 = v55 + *v58;
          *(v58 - 4) = v55 + *(v58 - 4);
          *v58 = v60;
          v58 += 8;
          v59 -= 2;
        }

        while (v59);
        if (v56 != v57)
        {
LABEL_78:
          v61 = v56 - v57;
          v62 = &v14[32 * v57 + 32];
          do
          {
            *v62 = v55 + *v62;
            v62 += 4;
            --v61;
          }

          while (v61);
        }
      }
    }
  }

  return *(v14 + 2);
}

{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = *a1;
  v4 = MEMORY[0x1E69E7CC0];
  if ((*a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v68 = a2 + 32;

  v7 = 0;
  v8 = (a2 + 64);
  v9 = v2;
  v10 = v3;
  do
  {
    v11 = *(v8 - 1);
    if (!*(v8 - 16))
    {
      v10 = v10 - *(v8 - 4);
      if (v9 == 1)
      {
        goto LABEL_7;
      }

LABEL_13:
      if (*v8)
      {
        result = static Spacing.defaultValue.getter();
      }

      v10 = v10 - v11;
      goto LABEL_7;
    }

    if (__OFADD__(v7++, 1))
    {
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
      return result;
    }

    if (v9 != 1)
    {
      goto LABEL_13;
    }

LABEL_7:
    v8 += 8;
    --v9;
  }

  while (v9);
  if (*(v4 + 16) <= v2)
  {
    v13 = v2;
  }

  else
  {
    v13 = *(v4 + 16);
  }

  v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0, v4);
  v15 = 0;
  v16 = 0.0;
  while (2)
  {
    v19 = v68 + (v15 << 6);
    v20 = *v19;
    v21 = *(v19 + 8);
    v22 = *(v19 + 16);
    v23 = *(v19 + 56);
    if (*(v19 + 32))
    {
      static Spacing.defaultValue.getter();
      v25 = v24;
      if ((v23 & 1) == 0)
      {
        goto LABEL_27;
      }

LABEL_42:
      v33 = lazy protocol witness table accessor for type LazyHGridLayout and conformance LazyHGridLayout();
      (*(v33 + 24))(&type metadata for LazyHGridLayout, v33);
      result = UnitPoint.init(_:in:by:)();
      v17 = v20;
      if (!v22)
      {
        goto LABEL_43;
      }

LABEL_28:
      if (v22 == 1)
      {
        if (v17 > v21)
        {
          goto LABEL_83;
        }

        if (v10 < 0.0)
        {
          v28 = 0.0;
        }

        else
        {
          v28 = v10;
        }

        v29 = v28 / v7;
        if (v29 < v17)
        {
          v29 = v17;
        }

        if (v29 <= v21)
        {
          v17 = v29;
        }

        else
        {
          v17 = v21;
        }

        v31 = *(v14 + 2);
        v30 = *(v14 + 3);
        if (v31 >= v30 >> 1)
        {
          v66 = v26;
          v52 = v27;
          v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v14);
          v27 = v52;
          v26 = v66;
          v14 = v53;
        }

        *(v14 + 2) = v31 + 1;
        v32 = &v14[32 * v31];
        *(v32 + 4) = v16;
        *(v32 + 5) = v17;
        *(v32 + 6) = v26;
        *(v32 + 7) = v27;
      }

      else
      {
        if (v10 < 0.0)
        {
          v37 = 0.0;
        }

        else
        {
          v37 = v10;
        }

        v38 = v37 / v7;
        v39 = floor((v38 - v17) / (v25 + v17));
        if (v39 < 0.0)
        {
          v39 = 0.0;
        }

        v40 = v39 + 1.0;
        if (v40 == INFINITY)
        {
          goto LABEL_82;
        }

        if (v40 <= -9.22337204e18)
        {
          goto LABEL_84;
        }

        if (v40 >= 9.22337204e18)
        {
          goto LABEL_85;
        }

        v41 = v40;
        if (__OFSUB__(v40, 1))
        {
          goto LABEL_86;
        }

        v42 = (v38 - v25 * (v40 - 1)) / v41;
        if (v42 >= v21)
        {
          v43 = v21;
        }

        else
        {
          v43 = v42;
        }

        if (v41 < 0)
        {
          goto LABEL_87;
        }

        if (v41)
        {
          v44 = *(v14 + 2);
          v45 = 32 * v44 + 56;
          v17 = 0.0;
          do
          {
            v46 = *(v14 + 3);
            v47 = v44 + 1;
            if (v44 >= v46 >> 1)
            {
              v63 = v27;
              v64 = v26;
              v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v44 + 1, 1, v14);
              v27 = v63;
              v26 = v64;
              v14 = v49;
            }

            *(v14 + 2) = v47;
            v48 = &v14[v45];
            *(v48 - 3) = v16 + v17;
            *(v48 - 2) = v43;
            *(v48 - 1) = v26;
            *v48 = v27;
            if (--v41)
            {
              v17 = v25 + v43 + v17;
            }

            else
            {
              v17 = v43 + v17;
            }

            v45 += 32;
            v44 = v47;
          }

          while (v41);
        }

        else
        {
          v17 = 0.0;
        }
      }

      v10 = v10 - v17;
      --v7;
    }

    else
    {
      v25 = *(v19 + 24);
      if (*(v19 + 56))
      {
        goto LABEL_42;
      }

LABEL_27:
      result = Alignment.fraction.getter();
      v17 = v20;
      if (v22)
      {
        goto LABEL_28;
      }

LABEL_43:
      v35 = *(v14 + 2);
      v34 = *(v14 + 3);
      if (v35 >= v34 >> 1)
      {
        v65 = v26;
        v50 = v27;
        v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v14);
        v27 = v50;
        v26 = v65;
        v14 = v51;
      }

      *(v14 + 2) = v35 + 1;
      v36 = &v14[32 * v35];
      *(v36 + 4) = v16;
      *(v36 + 5) = v20;
      *(v36 + 6) = v26;
      *(v36 + 7) = v27;
    }

    v18 = v15 + 1;
    if (v15 == v2 - 1)
    {
      v16 = v16 + v17;
    }

    else
    {
      v16 = v25 + v16 + v17;
    }

    ++v15;
    if (v18 != v2)
    {
      continue;
    }

    break;
  }

  if (v3 < v16)
  {
    *a1 = v16;
    return *(v14 + 2);
  }

  if (v16 < v3)
  {
    v54 = lazy protocol witness table accessor for type LazyHGridLayout and conformance LazyHGridLayout();
    v55 = (v3 - v16) * (*(v54 + 24))(&type metadata for LazyHGridLayout, v54);
    if (v55 != 0.0)
    {
      v56 = *(v14 + 2);
      if (v56)
      {
        if (v56 == 1)
        {
          v57 = 0;
          goto LABEL_78;
        }

        v57 = v56 & 0x7FFFFFFFFFFFFFFELL;
        v58 = (v14 + 64);
        v59 = v56 & 0x7FFFFFFFFFFFFFFELL;
        do
        {
          v60 = v55 + *v58;
          *(v58 - 4) = v55 + *(v58 - 4);
          *v58 = v60;
          v58 += 8;
          v59 -= 2;
        }

        while (v59);
        if (v56 != v57)
        {
LABEL_78:
          v61 = v56 - v57;
          v62 = &v14[32 * v57 + 32];
          do
          {
            *v62 = v55 + *v62;
            v62 += 4;
            --v61;
          }

          while (v61);
        }
      }
    }
  }

  return *(v14 + 2);
}

unint64_t lazy protocol witness table accessor for type HorizontalAlignment and conformance HorizontalAlignment()
{
  result = lazy protocol witness table cache variable for type HorizontalAlignment and conformance HorizontalAlignment;
  if (!lazy protocol witness table cache variable for type HorizontalAlignment and conformance HorizontalAlignment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HorizontalAlignment and conformance HorizontalAlignment);
  }

  return result;
}

uint64_t protocol witness for LazyStack.lengthAndSpacing(subviews:predecessors:minorGeometry:) in conformance LazyHGridLayout(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  return specialized HVGrid.lengthAndSpacing(subviews:predecessors:minorGeometry:)(a1, a2, *a3);
}

{
  return protocol witness for LazyStack.lengthAndSpacing(subviews:predecessors:minorGeometry:) in conformance LazyHGridLayout(a1, a2, a3);
}

void closure #1 in UIHostingContentView.setupSizeInvalidationHandler(_:)(double *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t a1), void *a7)
{
  aBlock = a4;
  v35 = a5;
  v36 = a6;
  v37 = a7;
  v8 = type metadata accessor for UIHostingConfiguration();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v33 - v10;
  v12 = *a1;
  v13 = a1[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    isEscapingClosureAtFileLocation = Strong;
    UIHostingContentView.roundSize(_:)();
    v17 = v16;
    v19 = v18;
    v20 = isEscapingClosureAtFileLocation + *((*MEMORY[0x1E69E7D40] & *isEscapingClosureAtFileLocation) + 0x768);
    *v20 = v16;
    *(v20 + 8) = v18;
    *(v20 + 16) = 0;
    static CGSize.invalidValue.getter();
    if (v12 != v22 || v13 != v21)
    {
      UIHostingContentView.roundSize(_:)();
      if (v25 != v17 || v24 != v19)
      {
        UIHostingContentView._configuration.getter(v11);
        v27 = v11[*(v8 + 56) + 98];
        (*(v9 + 8))(v11, v8);
        if (v27 == 1)
        {
          v28 = objc_opt_self();
          v29 = swift_allocObject();
          *(v29 + 16) = isEscapingClosureAtFileLocation;
          v30 = swift_allocObject();
          *(v30 + 16) = partial apply for closure #1 in closure #1 in UIHostingContentView.setupSizeInvalidationHandler(_:);
          *(v30 + 24) = v29;
          v38 = closure #1 in PlatformViewCoordinator.dispatchUpdate(reason:_:)partial apply;
          v39 = v30;
          aBlock = MEMORY[0x1E69E9820];
          v35 = 1107296256;
          v36 = thunk for @escaping @callee_guaranteed () -> ();
          v37 = &block_descriptor_34;
          v31 = _Block_copy(&aBlock);
          v32 = isEscapingClosureAtFileLocation;

          [v28 performWithoutAnimation_];

          _Block_release(v31);
          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          if ((isEscapingClosureAtFileLocation & 1) == 0)
          {
            return;
          }

          __break(1u);
        }

        [isEscapingClosureAtFileLocation invalidateIntrinsicContentSize];
      }
    }
  }
}

uint64_t static Animation.uiViewAnimation(curve:duration:)(uint64_t a1)
{
  result = 0;
  if (a1 > 3)
  {
    if (a1 > 5)
    {
      if (a1 == 6)
      {
        return static Animation.easeInOut(duration:)();
      }

      if (a1 == 7)
      {
        return static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
      }
    }

    else if (a1 == 4)
    {
      return static Animation.timingCurve(_:_:_:_:duration:)();
    }

    else
    {
      return static Animation.coreAnimationDefault(duration:)();
    }
  }

  else
  {
    if (a1 <= 1)
    {
      if (a1)
      {
        if (a1 == 1)
        {
          return static Animation.easeIn(duration:)();
        }

        return result;
      }

      return static Animation.easeInOut(duration:)();
    }

    if (a1 == 2)
    {
      return static Animation.easeOut(duration:)();
    }

    else
    {
      return static Animation.linear(duration:)();
    }
  }

  return result;
}

uint64_t AnyAccessibilityAction.init<A>(action:label:image:handler:bridged:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10, uint64_t a11)
{
  v25 = a6;
  v26 = a7;
  v23 = a4;
  v24 = a5;
  v28 = a9;
  v15 = *(a11 - 8);
  v27 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AccessibilityActionStorage();
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v23 - v20;
  (*(v15 + 16))(v17, a1, a11, v19);
  v29 = 0uLL;
  v30 = 0;
  v31 = 2;
  AccessibilityActionStorage.init(action:category:label:image:handler:)(v17, &v29, a2, a3, v23, v24, v25, v26, v21, a8, a11);
  (*(v15 + 8))(a1, a11);
  swift_getWitnessTable();
  return AnyAccessibilityAction.init<A>(_:bridged:)(v21, v27, v18, v28);
}

uint64_t AnyAccessibilityAction.init<A>(_:bridged:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 24) = type metadata accessor for AnyAccessibilityAction.ConcreteBase();
  *(a4 + 32) = &protocol witness table for AnyAccessibilityAction.ConcreteBase<A>;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  result = (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  *(a4 + 40) = a2;
  return result;
}

uint64_t lazy protocol witness table accessor for type Date and conformance Date(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10Foundation4DateVACSLAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10Foundation4DateVACSLAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10Foundation4DateVACSLAAWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10Foundation4DateVACSLAAWlTm_3(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10Foundation4DateVACSLAAWlTm_4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10Foundation4DateVACSLAAWlTm_5(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *assignWithCopy for ResolvedButtonStyle(_BYTE *a1, _BYTE *a2)
{
  *a1 = *a2;
  v4 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  if (a1 != a2)
  {
    v5 = *(v4 + 24);
    v6 = &a1[v5];
    v7 = &a2[v5];
    _s7SwiftUI12ButtonActionOWOhTm_0(&a1[v5], type metadata accessor for ButtonAction);
    type metadata accessor for ButtonAction();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v25 = *v7;
      v26 = *(v7 + 1);
      v27 = v7[16];
      outlined copy of Environment<AppIntentExecutor?>.Content(*v7, v26, v27);
      *v6 = v25;
      *(v6 + 1) = v26;
      v6[16] = v27;
      v28 = *(v7 + 3);
      *(v6 + 3) = v28;
      v29 = *(v7 + 5);
      *(v6 + 4) = *(v7 + 4);
      *(v6 + 5) = v29;
      v30 = v28;
    }

    else
    {
      if (EnumCaseMultiPayload == 1)
      {
        v9 = *v7;
        v10 = *(v7 + 1);
        v11 = *(v7 + 2);
        v12 = *(v7 + 3);
        v13 = v7[34];
        v14 = *(v7 + 16);
        outlined copy of Environment<OpenURLAction>.Content(*v7, v10, v11, v12, v14, v13);
        *v6 = v9;
        *(v6 + 1) = v10;
        *(v6 + 2) = v11;
        *(v6 + 3) = v12;
        *(v6 + 16) = v14;
        v6[34] = v13;
        v15 = *(v7 + 5);
        v16 = *(v7 + 6);
        v17 = *(v7 + 7);
        v18 = *(v7 + 8);
        LOBYTE(v12) = v7[74];
        v19 = *(v7 + 36);
        outlined copy of Environment<OpenURLAction>.Content(v15, v16, v17, v18, v19, v12);
        *(v6 + 5) = v15;
        *(v6 + 6) = v16;
        *(v6 + 7) = v17;
        *(v6 + 8) = v18;
        *(v6 + 36) = v19;
        v6[74] = v12;
        v20 = *(type metadata accessor for LinkDestination() + 24);
        v21 = &v6[v20];
        v22 = &v7[v20];
        v23 = type metadata accessor for URL();
        (*(*(v23 - 8) + 16))(v21, v22, v23);
        v24 = type metadata accessor for LinkDestination.Configuration();
        v21[*(v24 + 20)] = v22[*(v24 + 20)];
LABEL_8:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v31 = *(v7 + 1);
      *v6 = *v7;
      *(v6 + 1) = v31;
    }

    goto LABEL_8;
  }

  return a1;
}

uint64_t PlatformViewRepresentableAdaptor.overrideSizeThatFits(_:in:platformView:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  LOBYTE(v15) = a3 & 1;
  _ProposedSize.init(_:)();
  v11 = v15;
  v12 = v16;
  v13 = v17;
  v14 = v18;
  return (*(*(a7 + 24) + 88))(a1, &v11, a6, *(a7 + 16));
}

uint64_t type metadata completion function for _TaskValueModifier()
{
  result = type metadata accessor for TaskPriority();
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

uint64_t static _TaskValueModifier._makeView(modifier:inputs:body:)()
{
  type metadata accessor for _TaskValueModifier();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  type metadata accessor for _TaskValueModifier.InnerModifier();
  type metadata accessor for _TaskValueModifier.Child();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  swift_getWitnessTable();
  return static ViewModifier.makeDebuggableView(modifier:inputs:body:)();
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance _TaskValueModifier<A>.Child(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE9B8](a1, WitnessTable);
}

void protocol witness for static RemovableAttribute.willRemove(attribute:) in conformance PropertiesTransform()
{
  AGGraphGetAttributeInfo();
  v1 = v0;
  swift_unknownObjectWeakAssign();
  v2 = *(v1 + 232);
  *(v1 + 232) = 0;
}

void *initializeWithCopy for _TaskValueModifier(void *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  *a1 = *a2;
  a1[1] = v6;
  v7 = type metadata accessor for TaskPriority();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v8 + 16;
  v11 = *(v8 + 80);
  v12 = (a1 + v11 + 16) & ~v11;
  v13 = (a2 + v11 + 16) & ~v11;

  v9(v12, v13, v7);
  v14 = *(*(a3 + 16) - 8);
  (*(v14 + 16))((*(v10 + 48) + *(v14 + 80) + v12) & ~*(v14 + 80), (*(v10 + 48) + *(v14 + 80) + v13) & ~*(v14 + 80));
  return a1;
}

uint64_t destroy for _TaskValueModifier(uint64_t a1, uint64_t a2)
{

  v4 = type metadata accessor for TaskPriority();
  v5 = *(v4 - 8);
  v6 = v5 + 8;
  v7 = (a1 + *(v5 + 80) + 16) & ~*(v5 + 80);
  (*(v5 + 8))(v7, v4);
  v8 = *(*(a2 + 16) - 8);
  v9 = *(v8 + 8);
  v10 = (v7 + *(v6 + 56) + *(v8 + 80)) & ~*(v8 + 80);

  return v9(v10);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance LazyVGrid<A>()
{
  swift_getWitnessTable();

  return static UnaryView._makeViewList(view:inputs:)();
}

uint64_t static LazyVGrid._makeView(view:inputs:)()
{
  type metadata accessor for _VariadicView.Tree();
  swift_getWitnessTable();
  type metadata accessor for ResettableLazyLayoutRoot();
  type metadata accessor for LazyVGrid();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  swift_getWitnessTable();
  return static View.makeDebuggableView(view:inputs:)();
}

uint64_t closure #1 in static LazyVGrid._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[2] = type metadata accessor for LazyVGrid();
  type metadata accessor for _VariadicView.Tree();
  v10 = &protocol witness table for LazyVGridLayout;
  v11 = a3;
  swift_getWitnessTable();
  v9 = type metadata accessor for ResettableLazyLayoutRoot();
  v5 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v8, v9, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v6);
  return v12;
}

uint64_t protocol witness for static _VariadicView_ViewRoot._makeView(root:inputs:body:) in conformance LazyVGridLayout(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = lazy protocol witness table accessor for type LazyVGridLayout and conformance LazyVGridLayout();

  return MEMORY[0x1EEDDD118](a1, a2, a3, a4, a5, v10);
}

unint64_t instantiation function for generic protocol witness table for LazyVGridLayout(uint64_t a1)
{
  result = lazy protocol witness table accessor for type LazyVGridLayout and conformance LazyVGridLayout();
  *(a1 + 8) = result;
  return result;
}

uint64_t LazyVGrid.init(columns:alignment:spacing:pinnedViews:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, _DWORD *a5@<X4>, void (*a6)(double)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v25 = a7;
  v26 = a6;
  v23 = a4;
  v22 = a3;
  v28 = a8;
  v27 = a9;
  v24 = a12;
  MEMORY[0x1EEE9AC00](a1);
  v15 = type metadata accessor for _VariadicView.Tree();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v21 - v18;
  LODWORD(v18) = *a5;
  v31 = a1;
  v32 = a2;
  v33 = v22;
  v34 = v23 & 1;
  v35 = v18;
  v26(v17);
  _VariadicView.Tree.init(root:content:)();
  v29 = v24;
  v30 = v27;
  swift_getWitnessTable();
  View.resettableLazyLayoutRoot()();
  return (*(v16 + 8))(v19, v15);
}

uint64_t initializeWithCopy for LazyHGrid(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 16);
  v7 = *(*(v5 - 8) + 80);
  v8 = v7 + 32 + a2;

  v6((v7 + 32 + a1) & ~v7, v8 & ~v7, v5);
  return a1;
}

void protocol witness for static LazyLayout.initialCache.getter in conformance LazyVGridLayout()
{
  lazy protocol witness table accessor for type LazyVGridLayout and conformance LazyVGridLayout();

  JUMPOUT(0x18D00B9D0);
}

uint64_t protocol witness for LazyLayout.sizeThatFits(proposedSize:subviews:context:cache:) in conformance LazyHGridLayout(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(void))
{
  a10();

  return MEMORY[0x1EEDE59A0](a1);
}

uint64_t getEnumTagSinglePayload for AnyDynamicItem(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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
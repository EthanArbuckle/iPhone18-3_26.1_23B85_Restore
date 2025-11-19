double _DynamicPropertyBuffer.init<A>(fields:container:inputs:)@<D0>(uint64_t *a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, double *a5@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a1 + 16);
  v9 = *(a1 + 5);
  v10 = *a2;
  v16 = 0;
  v17 = 0.0;
  v13[0] = v6;
  v13[1] = v7;
  v14 = v8;
  v15 = v9;
  v12 = v10;
  _DynamicPropertyBuffer.addFields<A>(_:container:inputs:baseOffset:)(v13, &v12, a3, 0, a4);
  outlined consume of DynamicPropertyCache.Fields.Layout();
  *a5 = v16;
  result = v17;
  a5[1] = v17;
  return result;
}

uint64_t one-time initialization function for cache()
{
  type metadata accessor for MutableBox<[ObjectIdentifier : DynamicPropertyCache.Fields]>();
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC8];
  static DynamicPropertyCache.cache = result;
  return result;
}

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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<DynamicPropertyCache.Field>, &type metadata for DynamicPropertyCache.Field, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CachedEnvironment.MapItem>, &type metadata for CachedEnvironment.MapItem, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_ViewListOutputs>, &type metadata for _ViewListOutputs, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<LayoutProxyAttributes>, &type metadata for LayoutProxyAttributes, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_ViewOutputs>, &type metadata for _ViewOutputs, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<(id: DynamicContainerID, value: LayoutProxyAttributes)>();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<GlassContainer.Entry>, &type metadata for GlassContainer.Entry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 344);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[344 * v8])
    {
      memmove(v12, v13, 344 * v8);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<StackLayout.Child>, &type metadata for StackLayout.Child, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AsyncTransaction>, &type metadata for AsyncTransaction, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<(CGSize, NSAttributedString.Metrics)>();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<DynamicPropertyCache.TaggedFields>, &type metadata for DynamicPropertyCache.TaggedFields, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_ShapeStyle_InterpolatorGroup.Layer>, &type metadata for _ShapeStyle_InterpolatorGroup.Layer, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 232);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[232 * v8])
    {
      memmove(v12, v13, 232 * v8);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<DisplayList.ViewUpdater.Model.Clip>, &type metadata for DisplayList.ViewUpdater.Model.Clip, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PreferenceValues.Entry>, &type metadata for PreferenceValues.Entry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PreferenceBridge.BridgedPreference>, &type metadata for PreferenceBridge.BridgedPreference, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<GlassContainer.Effect>, &type metadata for GlassContainer.Effect, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 200);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[200 * v8])
    {
      memmove(v12, v13, 200 * v8);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_ShapeSet.Element>, &type metadata for _ShapeSet.Element, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CoreInteractionRepresentableInteractionsProxy.Interaction>, &type metadata for CoreInteractionRepresentableInteractionsProxy.Interaction, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SDFLayer.SDFElement>, &type metadata for SDFLayer.SDFElement, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SDFLayer.SDFEffect>, &type metadata for SDFLayer.SDFEffect, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HostPreferencesCombiner.Child>, &type metadata for HostPreferencesCombiner.Child, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<UInt32>, MEMORY[0x1E69E7668], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SuffixCache.Entry>, &type metadata for SuffixCache.Entry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CanvasSymbols.Child>, &type metadata for CanvasSymbols.Child, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<MatchedGeometryScope.Frame.View>, &type metadata for MatchedGeometryScope.Frame.View, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 28);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[28 * v8])
    {
      memmove(v12, v13, 28 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 28 * v8);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_ShapeStyle_Pack.Style>, &type metadata for _ShapeStyle_Pack.Style, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_LazyLayout_Subview>, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_LazyLayout_PlacedSubview>, &type metadata for _LazyLayout_PlacedSubview, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ResolvedStyledText.TextLayoutManager.Cache.Entry>, &type metadata for ResolvedStyledText.TextLayoutManager.Cache.Entry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<DisplayList.InterpolatorLayer.Removed>, &type metadata for DisplayList.InterpolatorLayer.Removed, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ViewTraitCollection>, &type metadata for ViewTraitCollection, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SectionAccumulator.Item>, &type metadata for SectionAccumulator.Item, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodableAttributedString.Range>, &type metadata for CodableAttributedString.Range, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ContentTransition.Effect>, &type metadata for ContentTransition.Effect, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 36);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[36 * v8])
    {
      memmove(v12, v13, 36 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 36 * v8);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.LayoutKey.AnchoredLayout>, &type metadata for Text.LayoutKey.AnchoredLayout, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Layout.RunSlice>, &type metadata for Text.Layout.RunSlice, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Layout.Cluster>, &type metadata for Text.Layout.Cluster, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<(StrongHash, DisplayList.Version)>();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PlatformItem>, &type metadata for PlatformItem, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 632);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[632 * v8])
    {
      memmove(v12, v13, 632 * v8);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Color.Resolved>, &type metadata for Color.Resolved, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Float>, MEMORY[0x1E69E6448], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>, type metadata accessor for AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 56 * v8;
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
    type metadata accessor for _ContiguousArrayStorage<(Float, Float)>();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<String>, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Substring>, MEMORY[0x1E69E67B0], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<(proposal: _ProposedSize, value: TextSizeVariant)>();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    memcpy(v12, v13, 40 * v8);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<DefaultCombiningAnimation.Entry>, &type metadata for DefaultCombiningAnimation.Entry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ScrollableCollectionSubview>, &type metadata for ScrollableCollectionSubview, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<StrongHash>, &type metadata for StrongHash, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 20);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[20 * v8])
    {
      memmove(v12, v13, 20 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 20 * v8);
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
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<NSCalendarUnit>, type metadata accessor for NSCalendarUnit, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<MeshGradient.BezierPoint>, &type metadata for MeshGradient.BezierPoint, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    memcpy(v12, v13, 40 * v8);
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
    type metadata accessor for _ContiguousArrayStorage<SIMD2<Float>>();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CGFloat>, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Color.ResolvedHDR>, &type metadata for Color.ResolvedHDR, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 20);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[20 * v8])
    {
      memmove(v12, v13, 20 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 20 * v8);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PathSet.Element>, &type metadata for PathSet.Element, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<WeakAttribute<Anchor<CGRect>>>, type metadata accessor for WeakAttribute<Anchor<CGRect>>, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ViewGeometry>, &type metadata for ViewGeometry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<GlobalTransaction>, &type metadata for GlobalTransaction, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ScrollGeometryState>, &type metadata for ScrollGeometryState, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
  v15 = v8 << 7;
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ScrollPhaseState>, &type metadata for ScrollPhaseState, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<GlassContainer.Item>, &type metadata for GlassContainer.Item, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 656);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[656 * v8])
    {
      memmove(v12, v13, 656 * v8);
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
    type metadata accessor for _ContiguousArrayStorage<CollectionChanges<Int, Int>.Element>();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 40 * v8;
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<DiffResult.MoveOperation>, &type metadata for DiffResult.MoveOperation, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<GraphicsContext.ResolvedShading>, &type metadata for GraphicsContext.ResolvedShading, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<EventID>, &type metadata for EventID, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<FocusableBounds>, &type metadata for FocusableBounds, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 40 * v8;
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<GlassMaterialShape>, &type metadata for GlassMaterialShape, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ScrollEdgeEffectTag.Item>, &type metadata for ScrollEdgeEffectTag.Item, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ScrollEdgeEffectTag.ID>, &type metadata for ScrollEdgeEffectTag.ID, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_ViewDebug.Data.SerializedProperty>, &type metadata for _ViewDebug.Data.SerializedProperty, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Double>, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnyHashable2>, &type metadata for AnyHashable2, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<GestureDebug.Data>, &type metadata for GestureDebug.Data, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 144);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[144 * v8])
    {
      memmove(v12, v13, 144 * v8);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<LayoutGestureBox.Child>, &type metadata for LayoutGestureBox.Child, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 208);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[208 * v8])
    {
      memmove(v12, v13, 208 * v8);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6F90]);
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
    type metadata accessor for _ContiguousArrayStorage<ClosedRange<CGFloat>>();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<DiffResult.Move>, &type metadata for DiffResult.Move, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Layout.Decorations.Segment>, &type metadata for Text.Layout.Decorations.Segment, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ResolvableTextSegmentAttribute.Value.Run>, &type metadata for ResolvableTextSegmentAttribute.Value.Run, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_ViewList_ID>, &type metadata for _ViewList_ID, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SummaryPlacement>, &type metadata for SummaryPlacement, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SDFLayer.SDFSubset>, &type metadata for SDFLayer.SDFSubset, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text>, &type metadata for Text, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityActivationPoint>, &type metadata for AccessibilityActivationPoint, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<Range<String.Index>>();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<SeedValue<GlassEffectContainerTintConfiguration.Element>>();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_ViewDebug.Data.SerializedAttribute>, &type metadata for _ViewDebug.Data.SerializedAttribute, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SectionAccumulator.RowIDs.Chunk>, &type metadata for SectionAccumulator.RowIDs.Chunk, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_LazyLayout_ProposedSubview>, &type metadata for _LazyLayout_ProposedSubview, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
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
    type metadata accessor for _ContiguousArrayStorage<Range<Int>>();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for GestureDebug.Data?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<UInt8>, MEMORY[0x1E69E7508], MEMORY[0x1E69E6F90]);
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

uint64_t _GraphValue.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _DWORD *a6@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v12 = *(a3 - 8);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a1, v13);
  v22 = a2;
  v23 = a3;
  v24 = a4;
  v16 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v15, a5, v21, a3, MEMORY[0x1E69E73E0], v16, MEMORY[0x1E69E7410], v17);
  v18 = *(v12 + 8);
  v18(a1, a3);
  result = (v18)(v15, a3);
  *a6 = v20[3];
  return result;
}

uint64_t _GraphValue.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _DWORD *a5@<X8>)
{

  return _GraphValue.init<A>(_:)(a1, a2, a3, a4, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_0, a5);
}

{

  return _GraphValue.init<A>(_:)(a1, a2, a3, a4, partial apply for closure #1 in Attribute.init<A>(_:), a5);
}

uint64_t partial apply for closure #1 in Attribute.init<A>(_:)@<X0>(_DWORD *a1@<X8>)
{
  return closure #1 in Attribute.init<A>(_:)(a1);
}

{
  return closure #1 in Attribute.init<A>(_:)(a1);
}

{
  type metadata accessor for TextRendererBoxBase();
  return closure #1 in Attribute.init<A>(_:)(a1);
}

{
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  result = Attribute.init<A>(body:value:flags:update:)();
  *a1 = result;
  return result;
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_1@<X0>(_DWORD *a1@<X8>)
{
  type metadata accessor for [ViewResponder](0);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  result = Attribute.init<A>(body:value:flags:update:)();
  *a1 = result;
  return result;
}

uint64_t closure #1 in Attribute.init<A>(_:)partial apply@<X0>(_DWORD *a1@<X8>)
{
  return closure #1 in Attribute.init<A>(_:)(a1);
}

{
  return closure #1 in Attribute.init<A>(_:)(a1);
}

{
  return closure #1 in Attribute.init<A>(_:)(a1);
}

{
  return partial apply for closure #1 in Attribute.init<A>(_:)(a1);
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_5(a1);
}

{
  return closure #1 in Attribute.init<A>(_:)partial apply(a1);
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_15(a1);
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_4(a1);
}

{
  type metadata accessor for Attribute<LayoutGestureBox.Value>(0, &lazy cache variable for type metadata for GesturePhase<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for GesturePhase);
  return closure #1 in Attribute.init<A>(_:)(a1);
}

{
  return closure #1 in Attribute.init<A>(_:)(a1);
}

{
  return closure #1 in Attribute.init<A>(_:)partial apply(a1);
}

{
  return closure #1 in Attribute.init<A>(_:)partial apply(a1);
}

{
  return closure #1 in Attribute.init<A>(_:)partial apply(a1);
}

{
  return closure #1 in Attribute.init<A>(_:)partial apply(a1);
}

{
  return partial apply for closure #1 in Attribute.init<A>(_:)(a1);
}

{
  type metadata accessor for ViewList();
  return closure #1 in Attribute.init<A>(_:)(a1);
}

{
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
  return closure #1 in Attribute.init<A>(_:)(a1);
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_12(a1);
}

{
  return closure #1 in Attribute.init<A>(_:)partial apply(a1);
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_0(a1);
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_3(a1);
}

{
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  result = Attribute.init<A>(body:value:flags:update:)();
  *a1 = result;
  return result;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_3(a1);
}

{
  return closure #1 in Attribute.init<A>(_:)partial apply(a1);
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_11(a1);
}

{
  type metadata accessor for (_:)();
  return closure #1 in Attribute.init<A>(_:)(a1);
}

{
  return closure #1 in Attribute.init<A>(_:)(a1);
}

{
  return closure #1 in Attribute.init<A>(_:)(a1);
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_10(a1);
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_11(a1);
}

{
  return closure #1 in Attribute.init<A>(_:)(a1);
}

{
  return closure #1 in Attribute.init<A>(_:)(a1);
}

uint64_t _GraphValue.subscript.getter@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X3>, _DWORD *a3@<X8>)
{
  if (*(*(a2 - 8) + 64))
  {
    a1(1);
  }

  result = AGGraphCreateOffsetAttribute2();
  *a3 = result;
  return result;
}

void one-time initialization function for linkDestroy()
{
  *&static Signpost.linkDestroy = "LinkDestroy";
  *(&static Signpost.linkDestroy + 1) = 11;
  word_1ED53A310 = 258;
  byte_1ED53A312 = 3;
}

Swift::Void __swiftcall _DynamicPropertyBuffer.destroy()()
{
  v62 = *MEMORY[0x1E69E9840];
  v53 = type metadata accessor for OSSignpostID();
  v1 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v54 = v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v34 - v4;
  v6 = *v0;
  v7 = *(v0 + 12);
  v40 = *(v0 + 8);
  if (one-time initialization token for linkDestroy != -1)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v8 = static Signpost.linkDestroy;
    v9 = byte_1ED53A312;
    v57 = static Signpost.linkDestroy;
    v41 = word_1ED53A310;
    v58 = word_1ED53A310;
    v44 = HIBYTE(word_1ED53A310);
    v59 = byte_1ED53A312;
    if ((Signpost.isEnabled.getter() & 1) == 0 || !v7)
    {
LABEL_54:
      *&v57 = v6;
      *(&v57 + 1) = __PAIR64__(v7, v40);
      UnsafeHeterogeneousBuffer.destroy()();
      return;
    }

    v46 = v8;
    v10 = v8 == 20 ? 3 : 4;
    if (!v6)
    {
      break;
    }

    v11 = 0;
    v12 = 0;
    v38 = v8 >> 14;
    v39 = bswap32(v8);
    v13 = v39 | v38 & 0x3FFFC;
    v51 = (v1 + 16);
    v47 = 16 * v10;
    v48 = v10;
    v52 = (v1 + 8);
    v43 = xmmword_18DDA6EB0;
    v37 = v5;
    v36 = v6;
    v35 = v7;
    v34[0] = *(&v8 + 1);
    v34[1] = v8;
    v42 = v9;
    while (1)
    {
      v14 = &v6[v12];
      HIDWORD(v45) = v11 + 1;
      if (v11 + 1 == v7)
      {
        LODWORD(v45) = 0;
      }

      else
      {
        LODWORD(v45) = *(v14 + 2) + v12;
      }

      v15 = static os_signpost_type_t.event.getter();
      if (v9 < 2)
      {
        goto LABEL_53;
      }

      v16 = v15;
      if (v9 == 2)
      {
        if (_SwiftUIIsAppleInternalBuild())
        {
          goto LABEL_24;
        }

        goto LABEL_53;
      }

      static os_signpost_type_t.event.getter();
      if (v44)
      {
        break;
      }

      if (kdebug_is_enabled())
      {
        goto LABEL_24;
      }

LABEL_53:
      v12 = v45;
      v11 = HIDWORD(v45);
      if (v45 == __PAIR64__(v7, 0))
      {
        goto LABEL_54;
      }
    }

    if ((kdebug_is_enabled() & 1) == 0)
    {
      goto LABEL_53;
    }

    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
    {
      goto LABEL_53;
    }

LABEL_24:
    static OSSignpostID.exclusive.getter();
    type metadata accessor for _ContiguousArrayStorage<CVarArg>();
    v17 = swift_allocObject();
    *(v17 + 16) = v43;
    *(v17 + 56) = MEMORY[0x1E69E6810];
    *(v17 + 64) = MEMORY[0x1E69E6870];
    *(v17 + 32) = v14;
    if (one-time initialization token for _signpostLog == -1)
    {
      if ((v44 & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_26;
    }

    swift_once();
    if (v44)
    {
LABEL_26:
      os_signpost(_:dso:log:name:signpostID:_:_:)();
      (*v52)(v5, v53);

LABEL_52:
      v9 = v42;
      goto LABEL_53;
    }

LABEL_28:
    v18 = v16;
    v49 = *v51;
    v19 = v49(v54, v5, v53);
    v20 = 0;
    v56 = 1;
    v50 = v17 + 32;
LABEL_29:
    v55 = v34;
    MEMORY[0x1EEE9AC00](v19);
    v5 = v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    v6 = v5 + 8;
    v22 = v48;
    v23 = v48;
    v24 = v5 + 8;
    do
    {
      *(v24 - 1) = 0;
      *v24 = 0;
      v24 += 16;
      --v23;
    }

    while (v23);
    v1 = v50 + 40 * v20;
    while (1)
    {
      v25 = *(v17 + 16);
      if (v20 == v25)
      {
        v56 = 0;
LABEL_37:
        v28 = v46;
        if (v46 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v5[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v5[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v5[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v28 != 20 && v5[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v29 = v53;
        v30 = *v52;
        v31 = v54;
        (*v52)(v54, v53);
        v32 = __swift_project_value_buffer(v29, static OSSignpostID.continuation);
        v19 = v49(v31, v32, v29);
        if ((v56 & 1) == 0)
        {
          v33 = v53;
          v30(v54, v53);
          v5 = v37;
          v30(v37, v33);

          v6 = v36;
          v7 = v35;
          goto LABEL_52;
        }

        goto LABEL_29;
      }

      if (v20 >= v25)
      {
        break;
      }

      ++v20;
      outlined init with copy of AnyTrackedValue(v1, &v57);
      v26 = v60;
      v7 = v61;
      __swift_project_boxed_opaque_existential_1(&v57, v60);
      *(v6 - 1) = CVarArg.kdebugValue(_:)(v13 | v18, v26);
      *v6 = v27 & 1;
      v6 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v57);
      v1 += 40;
      if (!--v22)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_56:
    swift_once();
  }

  __break(1u);
}

Swift::Void __swiftcall UnsafeHeterogeneousBuffer.destroy()()
{
  v1 = *v0;
  v2 = *(v0 + 3);
  if (v2)
  {
    if (!v1)
    {
      __break(1u);
      goto LABEL_14;
    }

    v3 = 0;
    v4 = v2 - 1;
    do
    {
      v7 = (v1 + v3);
      if (v4)
      {
        v3 += *(v7 + 2);
      }

      else
      {
        v3 = 0;
      }

      v5 = v4 | v3;
      v6 = *v7;
      v8 = v7;
      (*(v6 + 96))(&v8);
      --v4;
    }

    while (v5);
  }

  if (v1)
  {

LABEL_14:
    JUMPOUT(0x193AC4820);
  }
}

uint64_t lazy protocol witness table accessor for type IndexSet and conformance IndexSet(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static AsyncAttribute.flags.getter()
{
  type metadata accessor for AGAttributeTypeFlags(0);
  lazy protocol witness table accessor for type AGAttributeTypeFlags and conformance AGAttributeTypeFlags();
  lazy protocol witness table accessor for type UInt32 and conformance UInt32();
  OptionSet<>.init()();
  return v1;
}

unint64_t lazy protocol witness table accessor for type AGAttributeTypeFlags and conformance AGAttributeTypeFlags()
{
  result = lazy protocol witness table cache variable for type AGAttributeTypeFlags and conformance AGAttributeTypeFlags;
  if (!lazy protocol witness table cache variable for type AGAttributeTypeFlags and conformance AGAttributeTypeFlags)
  {
    type metadata accessor for AGAttributeTypeFlags(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AGAttributeTypeFlags and conformance AGAttributeTypeFlags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UInt32 and conformance UInt32()
{
  result = lazy protocol witness table cache variable for type UInt32 and conformance UInt32;
  if (!lazy protocol witness table cache variable for type UInt32 and conformance UInt32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt32 and conformance UInt32);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UInt32 and conformance UInt32;
  if (!lazy protocol witness table cache variable for type UInt32 and conformance UInt32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt32 and conformance UInt32);
  }

  return result;
}

uint64_t static AGNamedTraceEventID.update.getter(void *a1, unsigned int *a2)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

void type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _ss23_ContiguousArrayStorageCy7SwiftUI11DisplayListV4ItemVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t PreferenceKeys.add(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = PreferenceKeys._index(of:)(a1);

  v8 = *(v5 + 16);
  if (v6 != v8)
  {
    if (v6 >= v8)
    {
LABEL_10:
      __break(1u);
      return result;
    }

    if (*(v5 + 16 * v6 + 32) == a1)
    {
      return result;
    }
  }

  if (v8 < v6)
  {
    __break(1u);
    goto LABEL_10;
  }

  return specialized Array.replaceSubrange<A>(_:with:)(v6, v6, a1, a2);
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3, char *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<PreferenceKey.Type>, &lazy cache variable for type metadata for PreferenceKey.Type, &lazy cache variable for type metadata for PreferenceKey);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<PreferencesOutputs.KeyValue>, &type metadata for PreferencesOutputs.KeyValue, MEMORY[0x1E69E6F90], type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<AlignmentID.Type>, &lazy cache variable for type metadata for AlignmentID.Type, &lazy cache variable for type metadata for AlignmentID);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<SafeAreaInsets.Element>, &type metadata for SafeAreaInsets.Element);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, type metadata accessor for _ContiguousArrayStorage<(Int, TypeConformance<ViewDescriptor>)>);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, type metadata accessor for _ContiguousArrayStorage<Attribute<ViewList>>);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<UniqueID>, &type metadata for UniqueID);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<_ViewList_ID.Explicit>, &type metadata for _ViewList_ID.Explicit);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<Update.Action>, &type metadata for Update.Action);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<CGPoint>, type metadata accessor for CGPoint);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Modifier>, &type metadata for Text.Modifier);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, type metadata accessor for _ContiguousArrayStorage<(Int, TypeConformance<StyleContextDescriptor>)>);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<ResolvedGradient.Stop>, &type metadata for ResolvedGradient.Stop);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<ResolvedGradientVector.Stop>, &type metadata for ResolvedGradientVector.Stop);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<Unmanaged<GraphHost>>, type metadata accessor for Unmanaged<GraphHost>);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<ObjectIdentifier>, MEMORY[0x1E69E5FE0]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<DisplayList.Item>, &type metadata for DisplayList.Item);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<GraphicsFilter>, &type metadata for GraphicsFilter);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, type metadata accessor for _ContiguousArrayStorage<Attribute<Transaction>>);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<Unmanaged<ViewGraph>>, type metadata accessor for Unmanaged<ViewGraph>);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<(PreferenceKey.Type, AGAttribute)>, type metadata accessor for (PreferenceKey.Type, AGAttribute), MEMORY[0x1E69E6F90], type metadata accessor for DisplayList.ArchiveIDs?);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x1E69E6530]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<Unmanaged<DynamicViewList<AnyView>.Item>>, type metadata accessor for Unmanaged<DynamicViewList<AnyView>.Item>);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<DisplayList.Effect>, &type metadata for DisplayList.Effect);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<DisplayList.ViewUpdater.ViewCache.PendingAsyncValue>, &type metadata for DisplayList.ViewUpdater.ViewCache.PendingAsyncValue);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<MatchedGeometryScope.Frame>, &type metadata for MatchedGeometryScope.Frame);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<CGRect>, type metadata accessor for CGRect, MEMORY[0x1E69E6F90], type metadata accessor for DisplayList.ArchiveIDs?);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Layout.Line>, &type metadata for Text.Layout.Line);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, type metadata accessor for _ContiguousArrayStorage<Range<Int>>);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<LazyPrefetchOperation>, &type metadata for LazyPrefetchOperation);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<TextSizeCache.Entry>, &type metadata for TextSizeCache.Entry);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<Material.Layer.Filter>, &type metadata for Material.Layer.Filter);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<UnsafeRawPointer>, MEMORY[0x1E69E6270]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Layout.CharacterIndex>, &type metadata for Text.Layout.CharacterIndex);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityText>, &type metadata for AccessibilityText);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<PlatformAccessibilitySettingsDefinition.Entry>, &type metadata for PlatformAccessibilitySettingsDefinition.Entry);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<_ShapeStyle_Pack.Effect>, &type metadata for _ShapeStyle_Pack.Effect);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<ShaderVectorData.Element>, &type metadata for ShaderVectorData.Element);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, type metadata accessor for _ContiguousArrayStorage<(offset: UInt64, size: UInt64)>);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<Material.Layer.SDFLayer.GroupLayer>, &type metadata for Material.Layer.SDFLayer.GroupLayer);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.ResolvedProperties.Transition>, &type metadata for Text.ResolvedProperties.Transition);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, type metadata accessor for _ContiguousArrayStorage<WeakAttribute<_DisplayList_StableIdentityScope>>);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, type metadata accessor for _ContiguousArrayStorage<WeakAttribute<()>>);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<Unmanaged<DynamicViewList<DebugReplaceableView>.Item>>, type metadata accessor for Unmanaged<DynamicViewList<DebugReplaceableView>.Item>);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<GlassContainer.Entry.StableID>, &type metadata for GlassContainer.Entry.StableID);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<CGSize>, type metadata accessor for CGSize);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<CustomAttributeWriter.Type>, &lazy cache variable for type metadata for CustomAttributeWriter.Type, &lazy cache variable for type metadata for CustomAttributeWriter);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<_DisplayList_Identity>, &type metadata for _DisplayList_Identity);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<ViewIdentity>, &type metadata for ViewIdentity);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<PlatformItem.StaticKind>, &type metadata for PlatformItem.StaticKind);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<FocusableFillerBounds>, &type metadata for FocusableFillerBounds);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any.Type>, type metadata accessor for Any.Type);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject.Type>, type metadata accessor for Swift.AnyObject.Type);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<_SymbolEffect.Identified>, &type metadata for _SymbolEffect.Identified);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<_SymbolEffect.Added>, &type metadata for _SymbolEffect.Added);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityCustomContentEntry>, &type metadata for AccessibilityCustomContentEntry);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<ConvertiblePath>, &type metadata for ConvertiblePath);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnyAttributedTextValueConstraint>, &type metadata for AnyAttributedTextValueConstraint);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Layout.Decorations.Fragment>, &type metadata for Text.Layout.Decorations.Fragment, MEMORY[0x1E69E6F90], type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnyHashable>, MEMORY[0x1E69E69B8]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<_ViewDebug.Data>, &type metadata for _ViewDebug.Data);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<EventSourceType>, &type metadata for EventSourceType);
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, unint64_t *a6, unint64_t *a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    type metadata accessor for _ContiguousArrayStorage<CustomAttributeWriter.Type>(0, a5, a6, a7);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 17;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 4);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[16 * v11])
    {
      memmove(v16, v17, 16 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v16, v17, 16 * v11);
  }

  return v13;
}

void type metadata accessor for _ContiguousArrayStorage<PreferenceKey.Type>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for _ContiguousArrayStorage();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v3 = MEMORY[0x193AC1170](*(v1 + 40), a1);
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

{
  Hasher.init(_seed:)();
  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type AGSubgraphRef and conformance AGSubgraphRef(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
  _CFObject.hash(into:)();
  v2 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2, type metadata accessor for CFStringRef, &lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
}

{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  Hasher.init(_seed:)();
  (*(*a1 + 120))(v4);
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](a1);
  v2 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  type metadata accessor for CodingUserInfoKey();
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  Hasher.init(_seed:)();
  if (a1)
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CFStringRef(0);
    lazy protocol witness table accessor for type AGSubgraphRef and conformance AGSubgraphRef(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
    _CFObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  type metadata accessor for URL();
  v2 = MEMORY[0x1E6968FB0];
  lazy protocol witness table accessor for type AGSubgraphRef and conformance AGSubgraphRef(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
  v3 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3, MEMORY[0x1E6968FB0], &lazy protocol witness table cache variable for type URL and conformance URL, v2, MEMORY[0x1E6968FC8]);
}

{
  v3 = MEMORY[0x193AC1160](*(v1 + 40), a1);
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

{
  Hasher.init(_seed:)();
  v2 = *a1;
  if (*(a1 + 32) < 0)
  {
    MEMORY[0x193AC11A0](1);
    Hasher._combine(_:)(v2);
  }

  else
  {
    v4 = *(a1 + 8);
    v3 = *(a1 + 16);
    v5 = *(a1 + 32);
    v6 = *(a1 + 24);
    MEMORY[0x193AC11A0](0);
    if (v5)
    {
      if (v5 == 1)
      {
        MEMORY[0x193AC11A0](2);
        Hasher._combine(_:)(v2);
        if (v4)
        {
          Hasher._combine(_:)(1u);
          (*(*v4 + 120))(v9);
          MEMORY[0x193AC11A0](v3);
        }

        else
        {
          Hasher._combine(_:)(0);
        }
      }

      else
      {
        MEMORY[0x193AC11A0](0);
      }
    }

    else
    {
      MEMORY[0x193AC11A0](1);
      _Glass.Variant.ID.hash(into:)(v9);
      Hasher._combine(_:)(BYTE1(v4) & 1);
      (*(*v3 + 120))(v9);
      MEMORY[0x193AC11A0](v6);
    }
  }

  v7 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v7);
}

{
  type metadata accessor for UUID();
  v2 = MEMORY[0x1E69695A8];
  lazy protocol witness table accessor for type AGSubgraphRef and conformance AGSubgraphRef(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v3 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3, MEMORY[0x1E69695A8], &lazy protocol witness table cache variable for type UUID and conformance UUID, v2, MEMORY[0x1E69695C8]);
}

{
  Hasher.init(_seed:)();
  type metadata accessor for AGSubgraphRef(0);
  lazy protocol witness table accessor for type AGSubgraphRef and conformance AGSubgraphRef(&lazy protocol witness table cache variable for type AGSubgraphRef and conformance AGSubgraphRef, type metadata accessor for AGSubgraphRef);
  _CFObject.hash(into:)();
  v2 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2, type metadata accessor for AGSubgraphRef, &lazy protocol witness table cache variable for type AGSubgraphRef and conformance AGSubgraphRef, type metadata accessor for AGSubgraphRef);
}

{
  v2 = *(a1 + 16);
  v6 = *a1;
  v7 = v2;
  v8 = *(a1 + 32);
  Hasher.init(_seed:)();
  GlassContainer.Entry.ModelID.hash(into:)(v5);
  v3 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

{
  Hasher.init(_seed:)();
  v2 = *(a1 + 16);
  MEMORY[0x193AC11A0](v2);
  if (v2)
  {
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      Hasher._combine(_:)(v4);
      --v2;
    }

    while (v2);
  }

  v5 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v5);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
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
      v7 = (*(v2 + 48) + 8 * result);
      v9 = *v7;
      v8 = v7[1];
      if (v9 == a1 && v8 == HIDWORD(a1))
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
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v8 = ~v4;
    do
    {
      v9 = *(*(v6 + 48) + 8 * v5);
      if (v9 == a1)
      {
        break;
      }

      v10 = *(*v9 + 112);

      LOBYTE(v10) = v10(a1);

      if (v10)
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x193AC01F0](v9, a1);
      outlined destroy of AnyHashable(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

{
  v22 = a1;
  v4 = type metadata accessor for CodingUserInfoKey();
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v21 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v12 = v5 + 16;
    v13 = v14;
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    do
    {
      v17 = v12;
      v13(v8, *(v23 + 48) + v15 * v10, v4, v6);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v16)(v8, v4);
      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      v12 = v17;
    }

    while (((*(v21 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v8 = ~v4;
    do
    {
      v9 = *(*(v6 + 48) + 8 * v5);
      if (v9)
      {
        if (a1)
        {
          type metadata accessor for CFStringRef(0);
          lazy protocol witness table accessor for type AGSubgraphRef and conformance AGSubgraphRef(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
          v10 = v9;
          v11 = static _CFObject.== infix(_:_:)();

          if (v11)
          {
            return v5;
          }
        }
      }

      else if (!a1)
      {
        return v5;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = a1;
    v348 = *(a1 + 8);
    v349 = *a1;
    v343 = ~v4;
    v346 = *(a1 + 24);
    v347 = *(a1 + 16);
    v345 = *(a1 + 32);
    v341 = v2 + 64;
    do
    {
      v11 = *(v344 + 48) + 40 * v5;
      v13 = *v11;
      v12 = *(v11 + 8);
      v14 = *(v11 + 16);
      v15 = *(v11 + 24);
      v16 = *(v11 + 32);
      v365[0] = *v11;
      v365[1] = v12;
      v365[2] = v14;
      v365[3] = v15;
      v366 = v16;
      v367 = v349;
      v368 = v348;
      v369 = v347;
      v370 = v346;
      v371 = v345;
      if (v16 < 0)
      {
        if ((*(v6 + 32) & 0x80000000) == 0)
        {
          v8 = v348;
          v7 = v349;
          v10 = v346;
          v9 = v347;
          LOBYTE(v16) = v345;
          goto LABEL_4;
        }

        v24 = *v6;
        _s7SwiftUI14GlassContainerO5EntryV7ModelIDO_AGtWOhTm_0(v365, &lazy cache variable for type metadata for (ResolvedIDs.Key, ResolvedIDs.Key));
        if (v13 == v24)
        {
          return v5;
        }
      }

      else
      {
        v17 = *(v6 + 32);
        if (v17 < 0)
        {
          v7 = v13;
          v8 = v12;
          v9 = v14;
          v10 = v15;
LABEL_4:
          outlined copy of GlassContainer.Entry.ModelID(v7, v8, v9, v10, v16);
          _s7SwiftUI14GlassContainerO5EntryV7ModelIDO_AGtWOhTm_0(v365, &lazy cache variable for type metadata for (ResolvedIDs.Key, ResolvedIDs.Key));
          goto LABEL_5;
        }

        v18 = *v6;
        v19 = *(v6 + 8);
        v21 = *(v6 + 16);
        v20 = *(v6 + 24);
        v22 = *(v6 + 32);
        v358[0] = v13;
        v358[1] = v12;
        v358[2] = v14;
        v358[3] = v15;
        v359 = v16;
        v342 = v18;
        v360 = v18;
        v361 = v19;
        v362 = v21;
        v363 = v20;
        v364 = v17;
        if (!v16)
        {
          if (v22)
          {
            outlined init with copy of ResolvedIDs.Key(v6, &v356);
            outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
            outlined init with copy of ResolvedIDs.Key(v6, &v356);
            v25 = v13;
            v26 = v12;
            v27 = v14;
            v28 = v15;
            v29 = 0;
LABEL_23:
            outlined copy of ResolvedIDs.Key(v25, v26, v27, v28, v29);
            _s7SwiftUI14GlassContainerO5EntryV7ModelIDO_AGtWOhTm_0(v365, &lazy cache variable for type metadata for (ResolvedIDs.Key, ResolvedIDs.Key));
            _s7SwiftUI14GlassContainerO5EntryV7ModelIDO_AGtWOhTm_0(v358, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
            v3 = v341;
            goto LABEL_5;
          }

          v336 = v20;
          v337 = v21;
          v334 = v19;
          outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
          if (v12 >> 6)
          {
            if (v12 >> 6 == 1)
            {
              v3 = v341;
              if ((v19 & 0xC0) != 0x40)
              {
                outlined init with copy of ResolvedIDs.Key(v6, &v356);
                outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
                outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
                outlined init with copy of ResolvedIDs.Key(v6, &v356);
                outlined init with copy of ResolvedIDs.Key(v6, &v356);
                outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
                outlined init with copy of ResolvedIDs.Key(v6, &v356);
                outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
                outlined copy of _Glass.Variant.ID(v342, v19);
                outlined copy of _Glass.Variant.ID(v13, v12);
                _s7SwiftUI14GlassContainerO5EntryV7ModelIDO_AGtWOhTm_0(v358, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
                _s7SwiftUI14GlassContainerO5EntryV7ModelIDO_AGtWOhTm_0(v365, &lazy cache variable for type metadata for (ResolvedIDs.Key, ResolvedIDs.Key));
                outlined destroy of ResolvedIDs.Key(v6);
                outlined consume of ResolvedIDs.Key(v13, v12, v14, v15, 0);
                outlined consume of ResolvedIDs.Key(v13, v12, v14, v15, 0);
                outlined consume of _Glass.Variant.ID(v13, v12);
                v43 = v342;
                v44 = v19;
                goto LABEL_100;
              }

              v353 = v13;
              LOBYTE(v354) = v12 & 0x3F;
              v350 = v342;
              LOBYTE(v351) = v19 & 0x3F;
              outlined init with copy of ResolvedIDs.Key(v6, &v356);
              outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
              outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
              outlined init with copy of ResolvedIDs.Key(v6, &v356);
              outlined init with copy of ResolvedIDs.Key(v6, &v356);
              outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
              outlined init with copy of ResolvedIDs.Key(v6, &v356);
              outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
              outlined copy of _Glass.Variant.ID(v342, v19);
              outlined copy of _Glass.Variant.ID(v13, v12);
              if ((static Material.ID.== infix(_:_:)(&v353, &v350) & 1) == 0)
              {
                outlined consume of ResolvedIDs.Key(v13, v12, v14, v15, 0);
                outlined consume of ResolvedIDs.Key(v13, v12, v14, v15, 0);
                outlined destroy of ResolvedIDs.Key(v6);
                _s7SwiftUI14GlassContainerO5EntryV7ModelIDO_AGtWOhTm_0(v358, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
                _s7SwiftUI14GlassContainerO5EntryV7ModelIDO_AGtWOhTm_0(v365, &lazy cache variable for type metadata for (ResolvedIDs.Key, ResolvedIDs.Key));
                goto LABEL_99;
              }

LABEL_28:
              outlined consume of _Glass.Variant.ID(v13, v12);
              v30 = v342;
              LOWORD(v19) = v334;
              v31 = v334;
            }

            else
            {
              v3 = v341;
              if (v13 | v12 ^ 0x80)
              {
                v41 = v19 & 0xC0;
                if (v12 == 128 && v13 == 1)
                {
                  if (v41 != 128 || v342 != 1 || v19 != 128)
                  {
                    goto LABEL_59;
                  }

                  outlined init with copy of ResolvedIDs.Key(v6, &v356);
                  outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
                  outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
                  outlined init with copy of ResolvedIDs.Key(v6, &v356);
                  outlined init with copy of ResolvedIDs.Key(v6, &v356);
                  outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
                  outlined init with copy of ResolvedIDs.Key(v6, &v356);
                  outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
                  outlined consume of _Glass.Variant.ID(v13, v12);
                  v30 = 1;
                }

                else
                {
                  if (v41 != 128 || v342 != 2 || v19 != 128)
                  {
                    goto LABEL_59;
                  }

                  outlined init with copy of ResolvedIDs.Key(v6, &v356);
                  outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
                  outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
                  outlined init with copy of ResolvedIDs.Key(v6, &v356);
                  outlined init with copy of ResolvedIDs.Key(v6, &v356);
                  outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
                  outlined init with copy of ResolvedIDs.Key(v6, &v356);
                  outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
                  outlined consume of _Glass.Variant.ID(v13, v12);
                  v30 = 2;
                }
              }

              else
              {
                if ((v19 & 0xC0) != 0x80 || v342 || v19 != 128)
                {
LABEL_59:
                  outlined init with copy of ResolvedIDs.Key(v6, &v356);
                  outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
                  outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
                  outlined init with copy of ResolvedIDs.Key(v6, &v356);
                  outlined init with copy of ResolvedIDs.Key(v6, &v356);
                  outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
                  outlined init with copy of ResolvedIDs.Key(v6, &v356);
                  outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
                  outlined copy of _Glass.Variant.ID(v342, v19);
                  _s7SwiftUI14GlassContainerO5EntryV7ModelIDO_AGtWOhTm_0(v358, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
                  _s7SwiftUI14GlassContainerO5EntryV7ModelIDO_AGtWOhTm_0(v365, &lazy cache variable for type metadata for (ResolvedIDs.Key, ResolvedIDs.Key));
                  outlined destroy of ResolvedIDs.Key(v6);
                  outlined consume of ResolvedIDs.Key(v13, v12, v14, v15, 0);
                  outlined consume of ResolvedIDs.Key(v13, v12, v14, v15, 0);
                  outlined consume of _Glass.Variant.ID(v13, v12);
                  v43 = v342;
                  v44 = v19;
                  goto LABEL_100;
                }

                outlined init with copy of ResolvedIDs.Key(v6, &v356);
                outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
                outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
                outlined init with copy of ResolvedIDs.Key(v6, &v356);
                outlined init with copy of ResolvedIDs.Key(v6, &v356);
                outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
                outlined init with copy of ResolvedIDs.Key(v6, &v356);
                outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
                outlined consume of _Glass.Variant.ID(v13, v12);
                v30 = 0;
              }

              v31 = 0x80;
            }

            outlined consume of _Glass.Variant.ID(v30, v31);
            if (((v12 >> 8) & 1) == ((v19 & 0x100) == 0))
            {
              _s7SwiftUI14GlassContainerO5EntryV7ModelIDO_AGtWOhTm_0(v358, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
              _s7SwiftUI14GlassContainerO5EntryV7ModelIDO_AGtWOhTm_0(v365, &lazy cache variable for type metadata for (ResolvedIDs.Key, ResolvedIDs.Key));
              outlined destroy of ResolvedIDs.Key(v6);
              outlined consume of ResolvedIDs.Key(v13, v12, v14, v15, 0);
              outlined consume of ResolvedIDs.Key(v13, v12, v14, v15, 0);
              goto LABEL_101;
            }

            if (v14 == v337)
            {

              _s7SwiftUI14GlassContainerO5EntryV7ModelIDO_AGtWOhTm_0(v358, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
              _s7SwiftUI14GlassContainerO5EntryV7ModelIDO_AGtWOhTm_0(v365, &lazy cache variable for type metadata for (ResolvedIDs.Key, ResolvedIDs.Key));
              outlined destroy of ResolvedIDs.Key(v6);
              outlined consume of ResolvedIDs.Key(v13, v12, v14, v15, 0);
              outlined consume of ResolvedIDs.Key(v13, v12, v14, v15, 0);

              outlined destroy of ResolvedIDs.Key(v6);
              outlined consume of ResolvedIDs.Key(v13, v12, v14, v15, 0);
            }

            else
            {
              v57 = *(*v14 + 112);

              v3 = v341;
              LOBYTE(v57) = v57(v58);
              _s7SwiftUI14GlassContainerO5EntryV7ModelIDO_AGtWOhTm_0(v358, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
              _s7SwiftUI14GlassContainerO5EntryV7ModelIDO_AGtWOhTm_0(v365, &lazy cache variable for type metadata for (ResolvedIDs.Key, ResolvedIDs.Key));
              outlined destroy of ResolvedIDs.Key(v6);
              outlined consume of ResolvedIDs.Key(v13, v12, v14, v15, 0);
              outlined consume of ResolvedIDs.Key(v13, v12, v14, v15, 0);

              outlined destroy of ResolvedIDs.Key(v6);
              outlined consume of ResolvedIDs.Key(v13, v12, v14, v15, 0);
              if ((v57 & 1) == 0)
              {
                goto LABEL_5;
              }
            }

            if (v15 == v336)
            {
              return v5;
            }

            goto LABEL_5;
          }

          if (v19 >= 0x40u)
          {
            outlined init with copy of ResolvedIDs.Key(v6, &v356);
            outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
            outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
            outlined init with copy of ResolvedIDs.Key(v6, &v356);
            outlined init with copy of ResolvedIDs.Key(v6, &v356);
            outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
            outlined init with copy of ResolvedIDs.Key(v6, &v356);
            outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
            outlined copy of _Glass.Variant.ID(v342, v19);
            outlined copy of _Glass.Variant.ID(v13, v12);
            _s7SwiftUI14GlassContainerO5EntryV7ModelIDO_AGtWOhTm_0(v358, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
            _s7SwiftUI14GlassContainerO5EntryV7ModelIDO_AGtWOhTm_0(v365, &lazy cache variable for type metadata for (ResolvedIDs.Key, ResolvedIDs.Key));
            outlined destroy of ResolvedIDs.Key(v6);
            outlined consume of ResolvedIDs.Key(v13, v12, v14, v15, 0);
            outlined consume of ResolvedIDs.Key(v13, v12, v14, v15, 0);
            outlined consume of _Glass.Variant.ID(v13, v12);
            outlined consume of _Glass.Variant.ID(v342, v19);
            outlined destroy of ResolvedIDs.Key(v6);
            outlined consume of ResolvedIDs.Key(v13, v12, v14, v15, 0);
            v3 = v341;
            goto LABEL_5;
          }

          v32 = *(v13 + 16);
          v33 = *(v13 + 24);
          v34 = *(v13 + 48);
          v3 = v341;
          v35 = *(v342 + 16);
          v36 = *(v342 + 24);
          v37 = *(v342 + 48);
          v328 = *(v342 + 24);
          v326 = v35;
          if (v33 >> 6)
          {
            if (v33 >> 6 == 1)
            {
              if ((v36 & 0xC0) != 0x40)
              {
                goto LABEL_95;
              }

              v312 = *(v13 + 40);
              v313 = *(v342 + 32);
              v311 = *(v342 + 40);
              v310 = *(v13 + 32);
              v353 = *(v13 + 16);
              LOBYTE(v354) = v33 & 0x3F;
              v350 = v35;
              LOBYTE(v351) = v36 & 0x3F;
              v38 = v36;
              v39 = v33;
              v314 = v33;
              v40 = v32;
              outlined init with copy of ResolvedIDs.Key(v6, &v356);
              outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
              outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
              outlined init with copy of ResolvedIDs.Key(v6, &v356);
              outlined init with copy of ResolvedIDs.Key(v6, &v356);
              outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
              outlined copy of _Glass.Variant.ID(v40, v39);
              outlined copy of _Glass.Variant.ID(v326, v38);
              outlined init with copy of ResolvedIDs.Key(v6, &v356);
              outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
              outlined copy of _Glass.Variant.ID(v342, v334);
              outlined copy of _Glass.Variant.ID(v13, v12);
              outlined copy of _Glass.Variant.ID(v40, v314);
              outlined copy of _Glass.Variant.ID(v326, v328);
              v303 = static Material.ID.== infix(_:_:)(&v353, &v350);
              outlined consume of _Glass.Variant.ID(v40, v314);
              outlined consume of _Glass.Variant.ID(v326, v328);
              outlined consume of _Glass.Variant.ID(v326, v328);
              outlined consume of _Glass.Variant.ID(v40, v314);
              if ((v303 & 1) == 0)
              {
                goto LABEL_98;
              }
            }

            else
            {
              if (v32 | v33 ^ 0x80)
              {
                v54 = v36 & 0xC0;
                if (*(v13 + 24) == 128 && v32 == 1)
                {
                  if (v54 != 128 || v35 != 1 || v36 != 128)
                  {
                    goto LABEL_95;
                  }

                  v316 = *(v13 + 24);
                  v322 = *(v13 + 16);
                  v312 = *(v13 + 40);
                  v313 = *(v342 + 32);
                  v311 = *(v342 + 40);
                  v310 = *(v13 + 32);
                  outlined init with copy of ResolvedIDs.Key(v6, &v356);
                  outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
                  outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
                  outlined init with copy of ResolvedIDs.Key(v6, &v356);
                  outlined init with copy of ResolvedIDs.Key(v6, &v356);
                  outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
                  outlined init with copy of ResolvedIDs.Key(v6, &v356);
                  v56 = 1;
                }

                else
                {
                  if (v54 != 128 || v35 != 2 || v36 != 128)
                  {
                    goto LABEL_95;
                  }

                  v316 = *(v13 + 24);
                  v322 = *(v13 + 16);
                  v312 = *(v13 + 40);
                  v313 = *(v342 + 32);
                  v311 = *(v342 + 40);
                  v310 = *(v13 + 32);
                  outlined init with copy of ResolvedIDs.Key(v6, &v356);
                  outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
                  outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
                  outlined init with copy of ResolvedIDs.Key(v6, &v356);
                  outlined init with copy of ResolvedIDs.Key(v6, &v356);
                  outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
                  outlined init with copy of ResolvedIDs.Key(v6, &v356);
                  v56 = 2;
                }
              }

              else
              {
                if ((v36 & 0xC0) != 0x80 || v35 || v36 != 128)
                {
LABEL_95:
                  v62 = *(v13 + 16);
                  v323 = v62;
                  outlined init with copy of ResolvedIDs.Key(v6, &v356);
                  outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
                  outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
                  outlined init with copy of ResolvedIDs.Key(v6, &v356);
                  outlined init with copy of ResolvedIDs.Key(v6, &v356);
                  outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
                  outlined init with copy of ResolvedIDs.Key(v6, &v356);
                  outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
                  outlined copy of _Glass.Variant.ID(v342, v19);
                  outlined copy of _Glass.Variant.ID(v13, v12);
                  outlined copy of _Glass.Variant.ID(v62, v33);
                  v63 = v328;
                  outlined copy of _Glass.Variant.ID(v326, v328);
                  outlined consume of _Glass.Variant.ID(v323, v33);
                  v53 = v326;
                  goto LABEL_96;
                }

                v316 = *(v13 + 24);
                v322 = *(v13 + 16);
                v312 = *(v13 + 40);
                v313 = *(v342 + 32);
                v311 = *(v342 + 40);
                v310 = *(v13 + 32);
                outlined init with copy of ResolvedIDs.Key(v6, &v356);
                outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
                outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
                outlined init with copy of ResolvedIDs.Key(v6, &v356);
                outlined init with copy of ResolvedIDs.Key(v6, &v356);
                outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
                outlined init with copy of ResolvedIDs.Key(v6, &v356);
                v56 = 0;
              }

              outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
              outlined copy of _Glass.Variant.ID(v342, v19);
              outlined copy of _Glass.Variant.ID(v13, v12);
              outlined consume of _Glass.Variant.ID(v322, v316);
              outlined consume of _Glass.Variant.ID(v56, 0x80u);
            }

LABEL_90:
            v59 = v312;
            if (v312 >> 6)
            {
              v60 = v310;
              v61 = v311;
              if (v312 >> 6 == 1)
              {
                if ((v311 & 0xC0) != 0x40)
                {
                  goto LABEL_146;
                }

                v356 = v310;
                v357 = v312 & 0x3F;
                v353 = v313;
                LOBYTE(v354) = v311 & 0x3F;
                outlined copy of _Glass.Variant.ID(v310, v312);
                outlined copy of _Glass.Variant.ID(v313, v311);
                outlined copy of _Glass.Variant.ID(v310, v312);
                outlined copy of _Glass.Variant.ID(v313, v311);
                v329 = static Material.ID.== infix(_:_:)(&v356, &v353);
                outlined consume of _Glass.Variant.ID(v310, v312);
                outlined consume of _Glass.Variant.ID(v313, v311);
                outlined consume of _Glass.Variant.ID(v313, v311);
                outlined consume of _Glass.Variant.ID(v310, v312);
                if ((v329 & 1) == 0)
                {
                  goto LABEL_98;
                }
              }

              else
              {
                if (v310 | v312 ^ 0x80)
                {
                  v74 = v311 & 0xC0;
                  if (v312 == 128 && v310 == 1)
                  {
                    if (v74 != 128 || v313 != 1 || v311 != 128)
                    {
                      goto LABEL_146;
                    }

                    v76 = 1;
                  }

                  else
                  {
                    if (v74 != 128 || v313 != 2 || v311 != 128)
                    {
                      goto LABEL_146;
                    }

                    v76 = 2;
                  }
                }

                else
                {
                  if ((v311 & 0xC0) != 0x80 || v313 || v311 != 128)
                  {
LABEL_146:
                    v89 = v60;
                    v63 = v61;
                    outlined copy of _Glass.Variant.ID(v60, v312);
                    outlined copy of _Glass.Variant.ID(v313, v63);
                    outlined consume of _Glass.Variant.ID(v89, v312);
                    v53 = v313;
LABEL_96:
                    v64 = v63;
                    goto LABEL_97;
                  }

                  v76 = 0;
                }

                outlined consume of _Glass.Variant.ID(v310, v312);
                outlined consume of _Glass.Variant.ID(v76, 0x80u);
              }

              goto LABEL_144;
            }

            v61 = v311;
            v60 = v310;
            if (v311 >= 0x40)
            {
              goto LABEL_146;
            }

            v65 = *(v310 + 16);
            v66 = *(v310 + 24);
            v67 = *(v310 + 48);
            v68 = *(v313 + 16);
            v69 = *(v313 + 24);
            v70 = *(v313 + 48);
            v330 = v65;
            v327 = *(v313 + 24);
            v324 = v68;
            if (v66 >> 6)
            {
              if (v66 >> 6 == 1)
              {
                if ((v69 & 0xC0) != 0x40)
                {
                  goto LABEL_261;
                }

                v297 = *(v313 + 32);
                v300 = *(v310 + 40);
                v292 = *(v313 + 40);
                v305 = *(v310 + 32);
                v356 = *(v310 + 16);
                v357 = v66 & 0x3F;
                v353 = v68;
                LOBYTE(v354) = v69 & 0x3F;
                v71 = v66;
                v72 = v65;
                v73 = v68;
                outlined copy of _Glass.Variant.ID(v310, v312);
                outlined copy of _Glass.Variant.ID(v313, v311);
                outlined copy of _Glass.Variant.ID(v72, v71);
                outlined copy of _Glass.Variant.ID(v73, v327);
                outlined copy of _Glass.Variant.ID(v310, v312);
                outlined copy of _Glass.Variant.ID(v313, v311);
                outlined copy of _Glass.Variant.ID(v72, v71);
                outlined copy of _Glass.Variant.ID(v324, v327);
                v287 = static Material.ID.== infix(_:_:)(&v356, &v353);
                outlined consume of _Glass.Variant.ID(v72, v71);
                outlined consume of _Glass.Variant.ID(v324, v327);
                outlined consume of _Glass.Variant.ID(v324, v327);
                outlined consume of _Glass.Variant.ID(v330, v71);
                if ((v287 & 1) == 0)
                {
                  goto LABEL_376;
                }
              }

              else
              {
                if (v65 | v66 ^ 0x80)
                {
                  v113 = v69 & 0xC0;
                  if (*(v310 + 24) == 128 && v65 == 1)
                  {
                    if (v113 != 128 || v68 != 1 || v69 != 128)
                    {
                      goto LABEL_261;
                    }

                    v318 = *(v310 + 24);
                    v297 = *(v313 + 32);
                    v300 = *(v310 + 40);
                    v292 = *(v313 + 40);
                    v305 = *(v310 + 32);
                    outlined copy of _Glass.Variant.ID(v310, v312);
                    outlined copy of _Glass.Variant.ID(v313, v311);
                    outlined copy of _Glass.Variant.ID(v310, v312);
                    outlined copy of _Glass.Variant.ID(v313, v311);
                    v115 = 1;
                  }

                  else
                  {
                    if (v113 != 128 || v68 != 2 || v69 != 128)
                    {
                      goto LABEL_261;
                    }

                    v318 = *(v310 + 24);
                    v297 = *(v313 + 32);
                    v300 = *(v310 + 40);
                    v292 = *(v313 + 40);
                    v305 = *(v310 + 32);
                    outlined copy of _Glass.Variant.ID(v310, v312);
                    outlined copy of _Glass.Variant.ID(v313, v311);
                    outlined copy of _Glass.Variant.ID(v310, v312);
                    outlined copy of _Glass.Variant.ID(v313, v311);
                    v115 = 2;
                  }
                }

                else
                {
                  if ((v69 & 0xC0) != 0x80 || v68 || v69 != 128)
                  {
LABEL_261:
                    v319 = *(v310 + 24);
                    outlined copy of _Glass.Variant.ID(v310, v312);
                    outlined copy of _Glass.Variant.ID(v313, v311);
                    outlined copy of _Glass.Variant.ID(v310, v312);
                    outlined copy of _Glass.Variant.ID(v313, v311);
                    outlined copy of _Glass.Variant.ID(v330, v319);
                    outlined copy of _Glass.Variant.ID(v324, v327);
                    outlined consume of _Glass.Variant.ID(v330, v319);
                    outlined consume of _Glass.Variant.ID(v324, v327);
                    outlined consume of _Glass.Variant.ID(v310, v312);
                    outlined consume of _Glass.Variant.ID(v313, v311);
                    outlined consume of _Glass.Variant.ID(v313, v311);
                    v53 = v310;
                    v64 = v312;
                    goto LABEL_97;
                  }

                  v297 = *(v313 + 32);
                  v300 = *(v310 + 40);
                  v292 = *(v313 + 40);
                  v305 = *(v310 + 32);
                  v318 = *(v310 + 24);
                  outlined copy of _Glass.Variant.ID(v310, v312);
                  outlined copy of _Glass.Variant.ID(v313, v311);
                  outlined copy of _Glass.Variant.ID(v310, v312);
                  outlined copy of _Glass.Variant.ID(v313, v311);
                  outlined copy of _Glass.Variant.ID(v330, v318);
                  outlined copy of _Glass.Variant.ID(0, 0x80u);
                  v115 = 0;
                }

                outlined consume of _Glass.Variant.ID(v330, v318);
                outlined consume of _Glass.Variant.ID(v115, 0x80u);
              }

LABEL_255:
              if (v300 >> 6)
              {
                v136 = v305;
                v137 = v292;
                if (v300 >> 6 == 1)
                {
                  if ((v292 & 0xC0) != 0x40)
                  {
                    goto LABEL_374;
                  }

                  v356 = v305;
                  v357 = v300 & 0x3F;
                  v353 = v297;
                  LOBYTE(v354) = v292 & 0x3F;
                  outlined copy of _Glass.Variant.ID(v305, v300);
                  outlined copy of _Glass.Variant.ID(v297, v292);
                  outlined copy of _Glass.Variant.ID(v305, v300);
                  outlined copy of _Glass.Variant.ID(v297, v292);
                  v331 = static Material.ID.== infix(_:_:)(&v356, &v353);
                  outlined consume of _Glass.Variant.ID(v305, v300);
                  outlined consume of _Glass.Variant.ID(v297, v292);
                  outlined consume of _Glass.Variant.ID(v297, v292);
                  outlined consume of _Glass.Variant.ID(v305, v300);
                  outlined consume of _Glass.Variant.ID(v310, v312);
                  outlined consume of _Glass.Variant.ID(v313, v311);
                  outlined consume of _Glass.Variant.ID(v313, v311);
                  outlined consume of _Glass.Variant.ID(v310, v312);
                  if ((v331 & 1) == 0 || v67 != v70)
                  {
                    goto LABEL_98;
                  }

                  goto LABEL_144;
                }

                if (v305 | v300 ^ 0x80)
                {
                  v162 = v292 & 0xC0;
                  if (v300 == 128 && v305 == 1)
                  {
                    if (v162 != 128 || v297 != 1 || v292 != 128)
                    {
                      goto LABEL_374;
                    }

                    v164 = v300;
                    v207 = v13;
                    v339 = v5;
                    v165 = 1;
                  }

                  else
                  {
                    if (v162 != 128 || v297 != 2 || v292 != 128)
                    {
                      goto LABEL_374;
                    }

                    v164 = v300;
                    v207 = v13;
                    v339 = v5;
                    v165 = 2;
                  }
                }

                else
                {
                  if ((v292 & 0xC0) != 0x80 || v297 || v292 != 128)
                  {
LABEL_374:
                    v309 = v136;
                    v181 = v137;
                    outlined copy of _Glass.Variant.ID(v136, v300);
                    outlined copy of _Glass.Variant.ID(v297, v181);
                    outlined consume of _Glass.Variant.ID(v309, v300);
                    v173 = v297;
                    v174 = v181;
                    goto LABEL_375;
                  }

                  v207 = v13;
                  v339 = v5;
                  v164 = v300;
                  outlined copy of _Glass.Variant.ID(v305, v300);
                  outlined copy of _Glass.Variant.ID(0, 0x80u);
                  v165 = 0;
                }

                outlined consume of _Glass.Variant.ID(v305, v164);
                outlined consume of _Glass.Variant.ID(v165, 0x80u);
                v179 = v310;
                v180 = v312;
                outlined consume of _Glass.Variant.ID(v310, v312);
                outlined consume of _Glass.Variant.ID(v313, v311);
                outlined consume of _Glass.Variant.ID(v313, v311);
                v5 = v339;
                v13 = v207;
              }

              else
              {
                v137 = v292;
                v136 = v305;
                if (v292 >= 0x40)
                {
                  goto LABEL_374;
                }

                v204 = v12;
                v206 = v13;
                v338 = v5;
                v151 = *(v305 + 16);
                v152 = *(v305 + 24);
                v325 = *(v305 + 32);
                v320 = *(v305 + 40);
                v153 = *(v305 + 48);
                v332 = *(v297 + 16);
                v154 = *(v297 + 24);
                v283 = v14;
                v289 = *(v297 + 32);
                v280 = *(v297 + 40);
                v155 = *(v297 + 48);
                v156 = *(v305 + 24);
                if (v152 >> 6)
                {
                  if (v152 >> 6 == 1)
                  {
                    if ((v154 & 0xC0) != 0x40)
                    {
                      goto LABEL_418;
                    }

                    v356 = *(v305 + 16);
                    v157 = v356;
                    v357 = v152 & 0x3F;
                    v353 = v332;
                    LOBYTE(v354) = v154 & 0x3F;
                    v158 = v300;
                    v12 = v305;
                    outlined copy of _Glass.Variant.ID(v305, v300);
                    v159 = v297;
                    v160 = v292;
                    outlined copy of _Glass.Variant.ID(v297, v292);
                    outlined copy of _Glass.Variant.ID(v332, v154);
                    outlined copy of _Glass.Variant.ID(v151, v156);
                    outlined copy of _Glass.Variant.ID(v305, v300);
                    outlined copy of _Glass.Variant.ID(v297, v292);
                    outlined copy of _Glass.Variant.ID(v332, v154);
                    outlined copy of _Glass.Variant.ID(v151, v156);
                    v161 = static Material.ID.== infix(_:_:)(&v356, &v353);
                    outlined consume of _Glass.Variant.ID(v157, v156);
                    outlined consume of _Glass.Variant.ID(v332, v154);
                    outlined consume of _Glass.Variant.ID(v332, v154);
                    outlined consume of _Glass.Variant.ID(v157, v156);
                    if ((v161 & 1) == 0)
                    {
                      goto LABEL_420;
                    }
                  }

                  else
                  {
                    if (v151 | v152 ^ 0x80)
                    {
                      v199 = v154 & 0xC0;
                      if (*(v305 + 24) == 128 && v151 == 1)
                      {
                        if (v199 != 128 || v332 != 1 || v154 != 128)
                        {
                          goto LABEL_419;
                        }

                        v201 = 1;
                      }

                      else
                      {
                        if (v199 != 128 || v332 != 2 || v154 != 128)
                        {
                          goto LABEL_419;
                        }

                        v201 = 2;
                      }
                    }

                    else
                    {
                      if ((v154 & 0xC0) != 0x80 || v332 || v154 != 128)
                      {
                        goto LABEL_419;
                      }

                      v201 = 0;
                    }

                    v158 = v300;
                    v12 = v305;
                    outlined copy of _Glass.Variant.ID(v305, v300);
                    v159 = v297;
                    v160 = v292;
                    outlined copy of _Glass.Variant.ID(v297, v292);
                    outlined copy of _Glass.Variant.ID(v305, v300);
                    outlined copy of _Glass.Variant.ID(v297, v292);
                    outlined copy of _Glass.Variant.ID(v201, 0x80u);
                    outlined consume of _Glass.Variant.ID(v151, v156);
                    outlined consume of _Glass.Variant.ID(v201, 0x80u);
                  }
                }

                else
                {
                  if (v154 >= 0x40)
                  {
LABEL_418:
                    outlined copy of _Glass.Variant.ID(v151, v152);
LABEL_419:
                    v158 = v300;
                    v12 = v305;
                    outlined copy of _Glass.Variant.ID(v305, v300);
                    v159 = v297;
                    v160 = v292;
                    outlined copy of _Glass.Variant.ID(v297, v292);
                    outlined copy of _Glass.Variant.ID(v305, v300);
                    outlined copy of _Glass.Variant.ID(v297, v292);
                    outlined copy of _Glass.Variant.ID(v332, v154);
                    outlined consume of _Glass.Variant.ID(v151, v156);
                    outlined consume of _Glass.Variant.ID(v332, v154);
LABEL_420:
                    outlined consume of _Glass.Variant.ID(v12, v158);
                    outlined consume of _Glass.Variant.ID(v159, v160);
                    outlined consume of _Glass.Variant.ID(v159, v160);
                    outlined consume of _Glass.Variant.ID(v12, v158);
                    v179 = v310;
                    v180 = v312;
                    outlined consume of _Glass.Variant.ID(v310, v312);
                    outlined consume of _Glass.Variant.ID(v313, v311);
                    outlined consume of _Glass.Variant.ID(v313, v311);
                    v14 = v283;
                    v6 = a1;
                    LOBYTE(v12) = v204;
                    v13 = v206;
                    v5 = v338;
LABEL_421:
                    outlined consume of _Glass.Variant.ID(v179, v180);
                    v3 = v341;
LABEL_98:
                    _s7SwiftUI14GlassContainerO5EntryV7ModelIDO_AGtWOhTm_0(v358, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
                    _s7SwiftUI14GlassContainerO5EntryV7ModelIDO_AGtWOhTm_0(v365, &lazy cache variable for type metadata for (ResolvedIDs.Key, ResolvedIDs.Key));
                    outlined destroy of ResolvedIDs.Key(v6);
                    outlined consume of ResolvedIDs.Key(v13, v12, v14, v15, 0);
                    outlined consume of ResolvedIDs.Key(v13, v12, v14, v15, 0);
LABEL_99:
                    outlined consume of _Glass.Variant.ID(v13, v12);
                    v43 = v342;
                    v44 = v334;
LABEL_100:
                    outlined consume of _Glass.Variant.ID(v43, v44);
LABEL_101:
                    outlined destroy of ResolvedIDs.Key(v6);
                    outlined consume of ResolvedIDs.Key(v13, v12, v14, v15, 0);
                    goto LABEL_5;
                  }

                  v254 = *(v151 + 32);
                  v249 = *(v151 + 40);
                  v195 = *(v151 + 48);
                  v278 = *(v332 + 16);
                  v241 = *(v332 + 32);
                  v237 = *(v332 + 40);
                  v196 = *(v332 + 48);
                  v259 = *(v151 + 24);
                  v273 = *(v332 + 24);
                  v356 = *(v151 + 16);
                  v264 = v356;
                  v357 = v259;
                  v353 = v278;
                  LOBYTE(v354) = v273;
                  outlined copy of _Glass.Variant.ID(v305, v300);
                  outlined copy of _Glass.Variant.ID(v297, v292);
                  outlined copy of _Glass.Variant.ID(v332, v154);
                  outlined copy of _Glass.Variant.ID(v151, v156);
                  outlined copy of _Glass.Variant.ID(v305, v300);
                  outlined copy of _Glass.Variant.ID(v297, v292);
                  outlined copy of _Glass.Variant.ID(v332, v154);
                  outlined copy of _Glass.Variant.ID(v151, v156);
                  outlined copy of _Glass.Variant.ID(v264, v259);
                  outlined copy of _Glass.Variant.ID(v278, v273);
                  v197 = static _Glass.Variant.ID.== infix(_:_:)(&v356, &v353);
                  outlined consume of _Glass.Variant.ID(v353, v354);
                  outlined consume of _Glass.Variant.ID(v356, v357);
                  if ((v197 & 1) == 0)
                  {
                    outlined consume of _Glass.Variant.ID(v151, v156);
                    outlined consume of _Glass.Variant.ID(v332, v154);
                    outlined consume of _Glass.Variant.ID(v332, v154);
                    outlined consume of _Glass.Variant.ID(v151, v156);
                    v158 = v300;
                    v12 = v305;
                    v160 = v292;
                    v159 = v297;
                    goto LABEL_420;
                  }

                  v356 = v254;
                  v357 = v249;
                  v353 = v241;
                  LOBYTE(v354) = v237;
                  outlined copy of _Glass.Variant.ID(v254, v249);
                  outlined copy of _Glass.Variant.ID(v241, v237);
                  v198 = static _Glass.Variant.ID.== infix(_:_:)(&v356, &v353);
                  outlined consume of _Glass.Variant.ID(v353, v354);
                  outlined consume of _Glass.Variant.ID(v356, v357);
                  outlined consume of _Glass.Variant.ID(v151, v156);
                  outlined consume of _Glass.Variant.ID(v332, v154);
                  outlined consume of _Glass.Variant.ID(v332, v154);
                  outlined consume of _Glass.Variant.ID(v151, v156);
                  v158 = v300;
                  v12 = v305;
                  v160 = v292;
                  v159 = v297;
                  if ((v198 & 1) == 0 || v195 != v196)
                  {
                    goto LABEL_420;
                  }
                }

                v356 = v325;
                v357 = v320;
                v353 = v289;
                LOBYTE(v354) = v280;
                outlined copy of _Glass.Variant.ID(v325, v320);
                outlined copy of _Glass.Variant.ID(v289, v280);
                v202 = static _Glass.Variant.ID.== infix(_:_:)(&v356, &v353);
                outlined consume of _Glass.Variant.ID(v353, v354);
                outlined consume of _Glass.Variant.ID(v356, v357);
                outlined consume of _Glass.Variant.ID(v12, v158);
                outlined consume of _Glass.Variant.ID(v159, v160);
                outlined consume of _Glass.Variant.ID(v159, v160);
                outlined consume of _Glass.Variant.ID(v12, v158);
                v179 = v310;
                v180 = v312;
                outlined consume of _Glass.Variant.ID(v310, v312);
                outlined consume of _Glass.Variant.ID(v313, v311);
                outlined consume of _Glass.Variant.ID(v313, v311);
                v14 = v283;
                v6 = a1;
                v12 = v204;
                v13 = v206;
                v5 = v338;
                if ((v202 & 1) == 0 || v153 != v155)
                {
                  goto LABEL_421;
                }
              }

              outlined consume of _Glass.Variant.ID(v179, v180);
              v3 = v341;
              if (v67 != v70)
              {
                goto LABEL_98;
              }

LABEL_144:
              if (v34 != v37)
              {
                goto LABEL_98;
              }

              goto LABEL_28;
            }

            if (v69 >= 0x40)
            {
              goto LABEL_261;
            }

            v105 = *(v65 + 16);
            v106 = *(v65 + 24);
            v107 = *(v65 + 48);
            v108 = *(v68 + 16);
            v109 = *(v68 + 24);
            v269 = *(v68 + 40);
            v110 = *(v68 + 48);
            v317 = *(v310 + 24);
            v288 = *(v65 + 24);
            if (v106 >> 6)
            {
              if (v106 >> 6 == 1)
              {
                if ((v109 & 0xC0) != 0x40)
                {
                  goto LABEL_321;
                }

                v252 = *(v68 + 32);
                v257 = *(v65 + 32);
                v262 = *(v65 + 40);
                v297 = *(v313 + 32);
                v300 = *(v310 + 40);
                v292 = *(v313 + 40);
                v305 = *(v310 + 32);
                v356 = *(v65 + 16);
                v357 = v106 & 0x3F;
                v353 = v108;
                LOBYTE(v354) = v109 & 0x3F;
                outlined copy of _Glass.Variant.ID(v310, v312);
                outlined copy of _Glass.Variant.ID(v313, v311);
                outlined copy of _Glass.Variant.ID(v330, v317);
                outlined copy of _Glass.Variant.ID(v324, v327);
                outlined copy of _Glass.Variant.ID(v108, v109);
                outlined copy of _Glass.Variant.ID(v105, v288);
                outlined copy of _Glass.Variant.ID(v310, v312);
                outlined copy of _Glass.Variant.ID(v313, v311);
                outlined copy of _Glass.Variant.ID(v330, v317);
                outlined copy of _Glass.Variant.ID(v324, v327);
                outlined copy of _Glass.Variant.ID(v108, v109);
                outlined copy of _Glass.Variant.ID(v105, v288);
                v244 = static Material.ID.== infix(_:_:)(&v356, &v353);
                outlined consume of _Glass.Variant.ID(v105, v288);
                outlined consume of _Glass.Variant.ID(v108, v109);
                outlined consume of _Glass.Variant.ID(v108, v109);
                outlined consume of _Glass.Variant.ID(v105, v288);
                v111 = v317;
                v112 = v330;
                if ((v244 & 1) == 0)
                {
                  goto LABEL_325;
                }
              }

              else
              {
                v276 = *(v68 + 16);
                if (v105 | v106 ^ 0x80)
                {
                  v175 = v109 & 0xC0;
                  if (*(v65 + 24) == 128 && v105 == 1)
                  {
                    if (v175 != 128 || v108 != 1 || v109 != 128)
                    {
                      goto LABEL_322;
                    }

                    v252 = *(v68 + 32);
                    v257 = *(v65 + 32);
                    v262 = *(v65 + 40);
                    v297 = *(v313 + 32);
                    v300 = *(v310 + 40);
                    v292 = *(v313 + 40);
                    v305 = *(v310 + 32);
                    v177 = v312;
                    v205 = v12;
                    v208 = v13;
                    v340 = v5;
                    v284 = v14;
                    v178 = 1;
                  }

                  else
                  {
                    if (v175 != 128 || v108 != 2 || v109 != 128)
                    {
                      goto LABEL_322;
                    }

                    v252 = *(v68 + 32);
                    v257 = *(v65 + 32);
                    v262 = *(v65 + 40);
                    v297 = *(v313 + 32);
                    v300 = *(v310 + 40);
                    v292 = *(v313 + 40);
                    v305 = *(v310 + 32);
                    v177 = v312;
                    v205 = v12;
                    v208 = v13;
                    v340 = v5;
                    v284 = v14;
                    v178 = 2;
                  }
                }

                else
                {
                  if ((v109 & 0xC0) != 0x80 || v108 || v109 != 128)
                  {
                    goto LABEL_322;
                  }

                  v252 = *(v68 + 32);
                  v257 = *(v65 + 32);
                  v262 = *(v65 + 40);
                  v297 = *(v313 + 32);
                  v300 = *(v310 + 40);
                  v292 = *(v313 + 40);
                  v305 = *(v310 + 32);
                  v177 = v312;
                  v205 = v12;
                  v208 = v13;
                  v340 = v5;
                  v284 = v14;
                  v178 = 0;
                }

                outlined copy of _Glass.Variant.ID(v310, v177);
                outlined copy of _Glass.Variant.ID(v313, v311);
                outlined copy of _Glass.Variant.ID(v330, v317);
                outlined copy of _Glass.Variant.ID(v324, v327);
                outlined copy of _Glass.Variant.ID(v310, v177);
                outlined copy of _Glass.Variant.ID(v313, v311);
                outlined copy of _Glass.Variant.ID(v330, v317);
                outlined copy of _Glass.Variant.ID(v324, v327);
                outlined copy of _Glass.Variant.ID(v178, 0x80u);
                outlined consume of _Glass.Variant.ID(v105, v288);
                outlined consume of _Glass.Variant.ID(v178, 0x80u);
                v14 = v284;
                v12 = v205;
                v13 = v208;
                v5 = v340;
              }
            }

            else
            {
              if (v109 >= 0x40)
              {
LABEL_321:
                v276 = *(v68 + 16);
                outlined copy of _Glass.Variant.ID(v105, v106);
                v60 = v310;
                v59 = v312;
LABEL_322:
                v169 = v59;
                outlined copy of _Glass.Variant.ID(v60, v59);
                outlined copy of _Glass.Variant.ID(v313, v311);
                outlined copy of _Glass.Variant.ID(v330, v317);
                outlined copy of _Glass.Variant.ID(v324, v327);
                outlined copy of _Glass.Variant.ID(v310, v169);
                outlined copy of _Glass.Variant.ID(v313, v311);
                outlined copy of _Glass.Variant.ID(v330, v317);
                outlined copy of _Glass.Variant.ID(v324, v327);
                outlined copy of _Glass.Variant.ID(v276, v109);
                outlined consume of _Glass.Variant.ID(v105, v288);
                v170 = v276;
                v171 = v109;
                goto LABEL_323;
              }

              v252 = *(v68 + 32);
              v257 = *(v65 + 32);
              v262 = *(v65 + 40);
              v297 = *(v313 + 32);
              v300 = *(v310 + 40);
              v292 = *(v313 + 40);
              v305 = *(v310 + 32);
              v224 = *(v105 + 40);
              v166 = *(v105 + 48);
              v230 = *(v105 + 32);
              v233 = *(v108 + 16);
              v220 = *(v108 + 32);
              v216 = *(v108 + 40);
              v167 = *(v108 + 48);
              v240 = *(v105 + 24);
              v247 = *(v108 + 24);
              v356 = *(v105 + 16);
              v236 = v356;
              v357 = v240;
              v353 = v233;
              LOBYTE(v354) = v247;
              outlined copy of _Glass.Variant.ID(v310, v312);
              outlined copy of _Glass.Variant.ID(v313, v311);
              outlined copy of _Glass.Variant.ID(v330, v317);
              outlined copy of _Glass.Variant.ID(v324, v327);
              outlined copy of _Glass.Variant.ID(v108, v109);
              outlined copy of _Glass.Variant.ID(v105, v288);
              outlined copy of _Glass.Variant.ID(v310, v312);
              outlined copy of _Glass.Variant.ID(v313, v311);
              outlined copy of _Glass.Variant.ID(v330, v317);
              outlined copy of _Glass.Variant.ID(v324, v327);
              v275 = v108;
              outlined copy of _Glass.Variant.ID(v108, v109);
              outlined copy of _Glass.Variant.ID(v105, v288);
              outlined copy of _Glass.Variant.ID(v236, v240);
              outlined copy of _Glass.Variant.ID(v233, v247);
              v168 = static _Glass.Variant.ID.== infix(_:_:)(&v356, &v353);
              outlined consume of _Glass.Variant.ID(v353, v354);
              outlined consume of _Glass.Variant.ID(v356, v357);
              if ((v168 & 1) == 0)
              {
                outlined consume of _Glass.Variant.ID(v105, v288);
                outlined consume of _Glass.Variant.ID(v275, v109);
                outlined consume of _Glass.Variant.ID(v275, v109);
                v170 = v105;
                v171 = v288;
LABEL_323:
                outlined consume of _Glass.Variant.ID(v170, v171);
                goto LABEL_324;
              }

              v356 = v230;
              v357 = v224;
              v353 = v220;
              LOBYTE(v354) = v216;
              outlined copy of _Glass.Variant.ID(v230, v224);
              outlined copy of _Glass.Variant.ID(v220, v216);
              v248 = static _Glass.Variant.ID.== infix(_:_:)(&v356, &v353);
              outlined consume of _Glass.Variant.ID(v353, v354);
              outlined consume of _Glass.Variant.ID(v356, v357);
              outlined consume of _Glass.Variant.ID(v105, v288);
              outlined consume of _Glass.Variant.ID(v275, v109);
              outlined consume of _Glass.Variant.ID(v275, v109);
              outlined consume of _Glass.Variant.ID(v105, v288);
              v111 = v317;
              v112 = v330;
              if ((v248 & 1) == 0 || v166 != v167)
              {
                goto LABEL_325;
              }
            }

            if (v262 >> 6)
            {
              if (v262 >> 6 == 1)
              {
                v182 = v269;
                if ((v269 & 0xC0) != 0x40)
                {
                  goto LABEL_400;
                }

                v356 = v257;
                v357 = v262 & 0x3F;
                v353 = v252;
                LOBYTE(v354) = v269 & 0x3F;
                outlined copy of _Glass.Variant.ID(v252, v269);
                outlined copy of _Glass.Variant.ID(v257, v262);
                outlined copy of _Glass.Variant.ID(v252, v269);
                outlined copy of _Glass.Variant.ID(v257, v262);
                v290 = static Material.ID.== infix(_:_:)(&v356, &v353);
                outlined consume of _Glass.Variant.ID(v257, v262);
                outlined consume of _Glass.Variant.ID(v252, v269);
                outlined consume of _Glass.Variant.ID(v252, v269);
                outlined consume of _Glass.Variant.ID(v257, v262);
                v112 = v330;
                v172 = v317;
                outlined consume of _Glass.Variant.ID(v330, v317);
                outlined consume of _Glass.Variant.ID(v324, v327);
                v3 = v341;
                v6 = a1;
                if ((v290 & 1) == 0)
                {
                  goto LABEL_326;
                }

                goto LABEL_442;
              }

              if (v257 | v262 ^ 0x80)
              {
                if (v262 == 128 && v257 == 1)
                {
                  v182 = v269;
                  if ((v269 & 0xC0) != 0x80 || v252 != 1 || v269 != 128)
                  {
                    goto LABEL_401;
                  }

                  v194 = 1;
                }

                else
                {
                  v182 = v269;
                  if ((v269 & 0xC0) != 0x80 || v252 != 2 || v269 != 128)
                  {
                    goto LABEL_401;
                  }

                  v194 = 2;
                }
              }

              else
              {
                v182 = v269;
                if ((v269 & 0xC0) != 0x80 || v252 || v269 != 128)
                {
                  goto LABEL_401;
                }

                v194 = 0;
              }

              outlined copy of _Glass.Variant.ID(v194, 0x80u);
              outlined consume of _Glass.Variant.ID(v257, v262);
              outlined consume of _Glass.Variant.ID(v194, 0x80u);
              outlined consume of _Glass.Variant.ID(v257, v262);
              v3 = v341;
              v112 = v330;
              v6 = a1;
              v111 = v317;
            }

            else
            {
              v182 = v269;
              if (v269 >= 0x40)
              {
LABEL_400:
                outlined copy of _Glass.Variant.ID(v257, v262);
LABEL_401:
                outlined copy of _Glass.Variant.ID(v252, v182);
                outlined consume of _Glass.Variant.ID(v257, v262);
                v191 = v252;
                v192 = v182;
LABEL_402:
                outlined consume of _Glass.Variant.ID(v191, v192);
                v3 = v341;
                v6 = a1;
LABEL_324:
                v111 = v317;
                v112 = v330;
LABEL_325:
                v172 = v111;
                outlined consume of _Glass.Variant.ID(v112, v111);
                outlined consume of _Glass.Variant.ID(v324, v327);
LABEL_326:
                outlined consume of _Glass.Variant.ID(v324, v327);
                v173 = v112;
                v174 = v172;
LABEL_375:
                outlined consume of _Glass.Variant.ID(v173, v174);
LABEL_376:
                v126 = v310;
                v52 = v312;
                outlined consume of _Glass.Variant.ID(v310, v312);
                v127 = v311;
                outlined consume of _Glass.Variant.ID(v313, v311);
                v128 = v313;
LABEL_377:
                outlined consume of _Glass.Variant.ID(v128, v127);
                v53 = v126;
LABEL_378:
                v64 = v52;
LABEL_97:
                outlined consume of _Glass.Variant.ID(v53, v64);
                goto LABEL_98;
              }

              v281 = *(v257 + 32);
              v277 = *(v257 + 40);
              v183 = *(v257 + 48);
              v185 = *(v252 + 16);
              v291 = *(v252 + 32);
              v285 = *(v252 + 40);
              v186 = *(v252 + 48);
              v187 = *(v257 + 24);
              v188 = *(v252 + 24);
              v356 = *(v257 + 16);
              v184 = v356;
              v357 = v187;
              v353 = v185;
              LOBYTE(v354) = v188;
              outlined copy of _Glass.Variant.ID(v252, v269);
              outlined copy of _Glass.Variant.ID(v257, v262);
              outlined copy of _Glass.Variant.ID(v252, v269);
              outlined copy of _Glass.Variant.ID(v257, v262);
              outlined copy of _Glass.Variant.ID(v184, v187);
              outlined copy of _Glass.Variant.ID(v185, v188);
              v189 = static _Glass.Variant.ID.== infix(_:_:)(&v356, &v353);
              outlined consume of _Glass.Variant.ID(v353, v354);
              outlined consume of _Glass.Variant.ID(v356, v357);
              if ((v189 & 1) == 0)
              {
                outlined consume of _Glass.Variant.ID(v257, v262);
                outlined consume of _Glass.Variant.ID(v252, v269);
                outlined consume of _Glass.Variant.ID(v252, v269);
                v191 = v257;
                v192 = v262;
                goto LABEL_402;
              }

              v356 = v281;
              v357 = v277;
              v353 = v291;
              LOBYTE(v354) = v285;
              outlined copy of _Glass.Variant.ID(v281, v277);
              outlined copy of _Glass.Variant.ID(v291, v285);
              v190 = static _Glass.Variant.ID.== infix(_:_:)(&v356, &v353);
              outlined consume of _Glass.Variant.ID(v353, v354);
              outlined consume of _Glass.Variant.ID(v356, v357);
              outlined consume of _Glass.Variant.ID(v257, v262);
              outlined consume of _Glass.Variant.ID(v252, v269);
              outlined consume of _Glass.Variant.ID(v252, v269);
              outlined consume of _Glass.Variant.ID(v257, v262);
              v3 = v341;
              v112 = v330;
              v6 = a1;
              v111 = v317;
              if ((v190 & 1) == 0 || v183 != v186)
              {
                goto LABEL_325;
              }
            }

            v172 = v111;
            outlined consume of _Glass.Variant.ID(v112, v111);
            outlined consume of _Glass.Variant.ID(v324, v327);
LABEL_442:
            outlined consume of _Glass.Variant.ID(v324, v327);
            outlined consume of _Glass.Variant.ID(v112, v172);
            if (v107 != v110)
            {
              goto LABEL_376;
            }

            goto LABEL_255;
          }

          if (v36 >= 0x40)
          {
            goto LABEL_95;
          }

          v45 = *(v32 + 16);
          v46 = *(v32 + 24);
          v47 = *(v32 + 48);
          v48 = *(v35 + 16);
          v49 = *(v35 + 24);
          v282 = *(v32 + 32);
          v286 = *(v35 + 32);
          v50 = *(v35 + 48);
          v315 = *(v13 + 24);
          v321 = *(v13 + 16);
          v279 = *(v32 + 40);
          v274 = *(v35 + 40);
          v299 = v48;
          v304 = *(v32 + 24);
          v296 = *(v35 + 24);
          if (v46 >> 6)
          {
            if (v46 >> 6 == 1)
            {
              if ((v49 & 0xC0) != 0x40)
              {
                v294 = *(v32 + 16);
                outlined init with copy of ResolvedIDs.Key(v6, &v356);
                outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
                outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
                outlined init with copy of ResolvedIDs.Key(v6, &v356);
                outlined init with copy of ResolvedIDs.Key(v6, &v356);
                outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
                outlined copy of _Glass.Variant.ID(v321, v33);
                outlined copy of _Glass.Variant.ID(v326, v328);
                outlined init with copy of ResolvedIDs.Key(v6, &v356);
                outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
                outlined copy of _Glass.Variant.ID(v342, v19);
                outlined copy of _Glass.Variant.ID(v13, v12);
                outlined copy of _Glass.Variant.ID(v321, v33);
                outlined copy of _Glass.Variant.ID(v326, v328);
                outlined copy of _Glass.Variant.ID(v294, v304);
                outlined copy of _Glass.Variant.ID(v299, v296);
                outlined consume of _Glass.Variant.ID(v294, v304);
                outlined consume of _Glass.Variant.ID(v299, v296);
                outlined consume of _Glass.Variant.ID(v321, v33);
                outlined consume of _Glass.Variant.ID(v326, v328);
                outlined consume of _Glass.Variant.ID(v326, v328);
                v53 = v321;
                v64 = v33;
                goto LABEL_97;
              }

              v312 = *(v13 + 40);
              v313 = *(v342 + 32);
              v311 = *(v342 + 40);
              v310 = *(v13 + 32);
              v353 = *(v32 + 16);
              LOBYTE(v354) = v46 & 0x3F;
              v350 = v48;
              LOBYTE(v351) = v49 & 0x3F;
              v51 = v45;
              outlined init with copy of ResolvedIDs.Key(v6, &v356);
              outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
              outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
              outlined init with copy of ResolvedIDs.Key(v6, &v356);
              outlined init with copy of ResolvedIDs.Key(v6, &v356);
              outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
              outlined copy of _Glass.Variant.ID(v321, v33);
              outlined copy of _Glass.Variant.ID(v326, v328);
              outlined copy of _Glass.Variant.ID(v51, v304);
              outlined copy of _Glass.Variant.ID(v299, v296);
              outlined init with copy of ResolvedIDs.Key(v6, &v356);
              outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
              outlined copy of _Glass.Variant.ID(v342, v19);
              outlined copy of _Glass.Variant.ID(v13, v12);
              outlined copy of _Glass.Variant.ID(v321, v33);
              outlined copy of _Glass.Variant.ID(v326, v328);
              outlined copy of _Glass.Variant.ID(v51, v304);
              outlined copy of _Glass.Variant.ID(v299, v296);
              v265 = static Material.ID.== infix(_:_:)(&v353, &v350);
              outlined consume of _Glass.Variant.ID(v51, v304);
              outlined consume of _Glass.Variant.ID(v299, v296);
              outlined consume of _Glass.Variant.ID(v299, v296);
              outlined consume of _Glass.Variant.ID(v51, v304);
              if ((v265 & 1) == 0)
              {
                v52 = v33;
                outlined consume of _Glass.Variant.ID(v321, v33);
                outlined consume of _Glass.Variant.ID(v326, v328);
                outlined consume of _Glass.Variant.ID(v326, v328);
                v53 = v321;
                goto LABEL_378;
              }

              goto LABEL_158;
            }

            v312 = *(v13 + 40);
            v313 = *(v342 + 32);
            v310 = *(v13 + 32);
            v311 = *(v342 + 40);
            v293 = *(v32 + 16);
            if (!(v45 | v46 ^ 0x80))
            {
              if ((v49 & 0xC0) == 0x80 && !v48 && v49 == 128)
              {
                v85 = 1;
                goto LABEL_157;
              }

              goto LABEL_156;
            }

            v83 = v49 & 0xC0;
            if (*(v32 + 24) != 128 || v45 != 1)
            {
              if (v83 == 128)
              {
                v85 = 0;
                if (v48 == 2 && v49 == 128)
                {
                  outlined init with copy of ResolvedIDs.Key(v6, &v356);
                  outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
                  outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
                  outlined init with copy of ResolvedIDs.Key(v6, &v356);
                  outlined init with copy of ResolvedIDs.Key(v6, &v356);
                  outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
                  outlined copy of _Glass.Variant.ID(v321, v33);
                  v86 = v326;
                  v87 = v328;
                  outlined copy of _Glass.Variant.ID(v326, v328);
                  outlined init with copy of ResolvedIDs.Key(v6, &v356);
                  v88 = 2;
                  goto LABEL_155;
                }

                goto LABEL_157;
              }

LABEL_156:
              v85 = 0;
              goto LABEL_157;
            }

            if (v83 != 128)
            {
              goto LABEL_156;
            }

            v85 = 0;
            if (v48 == 1 && v49 == 128)
            {
              outlined init with copy of ResolvedIDs.Key(v6, &v356);
              outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
              outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
              outlined init with copy of ResolvedIDs.Key(v6, &v356);
              outlined init with copy of ResolvedIDs.Key(v6, &v356);
              outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
              outlined copy of _Glass.Variant.ID(v321, v33);
              v86 = v326;
              v87 = v328;
              outlined copy of _Glass.Variant.ID(v326, v328);
              outlined init with copy of ResolvedIDs.Key(v6, &v356);
              v88 = 1;
LABEL_155:
              outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
              outlined copy of _Glass.Variant.ID(v342, v334);
              outlined copy of _Glass.Variant.ID(v13, v12);
              outlined copy of _Glass.Variant.ID(v321, v315);
              outlined copy of _Glass.Variant.ID(v86, v87);
              outlined consume of _Glass.Variant.ID(v293, v304);
              outlined consume of _Glass.Variant.ID(v88, 0x80u);
              goto LABEL_158;
            }

LABEL_157:
            v267 = v85;
            outlined init with copy of ResolvedIDs.Key(v6, &v356);
            outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
            outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
            outlined init with copy of ResolvedIDs.Key(v6, &v356);
            outlined init with copy of ResolvedIDs.Key(v6, &v356);
            outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
            outlined copy of _Glass.Variant.ID(v321, v33);
            outlined copy of _Glass.Variant.ID(v326, v328);
            outlined init with copy of ResolvedIDs.Key(v6, &v356);
            outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
            outlined copy of _Glass.Variant.ID(v342, v19);
            outlined copy of _Glass.Variant.ID(v13, v12);
            outlined copy of _Glass.Variant.ID(v321, v33);
            outlined copy of _Glass.Variant.ID(v326, v328);
            outlined copy of _Glass.Variant.ID(v293, v304);
            outlined copy of _Glass.Variant.ID(v299, v296);
            outlined consume of _Glass.Variant.ID(v293, v304);
            outlined consume of _Glass.Variant.ID(v299, v296);
            if ((v267 & 1) == 0)
            {
              outlined consume of _Glass.Variant.ID(v321, v33);
              outlined consume of _Glass.Variant.ID(v326, v328);
              v93 = v326;
              v94 = v328;
              goto LABEL_289;
            }

LABEL_158:
            v90 = v279;
            if (v279 >> 6)
            {
              v91 = v282;
              v92 = v274;
              if (v279 >> 6 == 1)
              {
                if ((v274 & 0xC0) != 0x40)
                {
                  goto LABEL_225;
                }

                v356 = v282;
                v357 = v279 & 0x3F;
                v353 = v286;
                LOBYTE(v354) = v274 & 0x3F;
                outlined copy of _Glass.Variant.ID(v282, v279);
                outlined copy of _Glass.Variant.ID(v286, v274);
                outlined copy of _Glass.Variant.ID(v282, v279);
                outlined copy of _Glass.Variant.ID(v286, v274);
                v306 = static Material.ID.== infix(_:_:)(&v356, &v353);
                outlined consume of _Glass.Variant.ID(v282, v279);
                outlined consume of _Glass.Variant.ID(v286, v274);
                outlined consume of _Glass.Variant.ID(v286, v274);
                outlined consume of _Glass.Variant.ID(v282, v279);
                outlined consume of _Glass.Variant.ID(v321, v315);
                outlined consume of _Glass.Variant.ID(v326, v328);
                outlined consume of _Glass.Variant.ID(v326, v328);
                outlined consume of _Glass.Variant.ID(v321, v315);
                if ((v306 & 1) == 0)
                {
                  goto LABEL_98;
                }

                goto LABEL_223;
              }

              if (v282 | v279 ^ 0x80)
              {
                v102 = v274 & 0xC0;
                if (v279 == 128 && v282 == 1)
                {
                  if (v102 != 128 || v286 != 1 || v274 != 128)
                  {
                    goto LABEL_225;
                  }

                  v104 = 1;
                }

                else
                {
                  if (v102 != 128 || v286 != 2 || v274 != 128)
                  {
                    goto LABEL_225;
                  }

                  v104 = 2;
                }
              }

              else
              {
                if ((v274 & 0xC0) != 0x80 || v286 || v274 != 128)
                {
LABEL_225:
                  v124 = v91;
                  v125 = v92;
                  outlined copy of _Glass.Variant.ID(v91, v279);
                  outlined copy of _Glass.Variant.ID(v286, v125);
                  outlined consume of _Glass.Variant.ID(v124, v279);
                  outlined consume of _Glass.Variant.ID(v286, v125);
                  v52 = v315;
                  v126 = v321;
                  outlined consume of _Glass.Variant.ID(v321, v315);
                  v127 = v328;
                  outlined consume of _Glass.Variant.ID(v326, v328);
                  v128 = v326;
                  goto LABEL_377;
                }

                outlined copy of _Glass.Variant.ID(v282, v279);
                outlined copy of _Glass.Variant.ID(0, 0x80u);
                v90 = v279;
                v91 = v282;
                v104 = 0;
              }

              outlined consume of _Glass.Variant.ID(v91, v90);
              outlined consume of _Glass.Variant.ID(v104, 0x80u);
              v123 = v315;
              v122 = v321;
              outlined consume of _Glass.Variant.ID(v321, v315);
              outlined consume of _Glass.Variant.ID(v326, v328);
              outlined consume of _Glass.Variant.ID(v326, v328);
            }

            else
            {
              v92 = v274;
              v91 = v282;
              if (v274 >= 0x40)
              {
                goto LABEL_225;
              }

              v95 = *(v282 + 16);
              v96 = *(v282 + 24);
              v97 = *(v282 + 48);
              v298 = *(v282 + 24);
              v301 = *(v286 + 16);
              v98 = *(v286 + 24);
              v99 = *(v286 + 48);
              v307 = v95;
              v295 = *(v286 + 24);
              if (v96 >> 6)
              {
                if (v96 >> 6 == 1)
                {
                  if ((v98 & 0xC0) != 0x40)
                  {
                    goto LABEL_232;
                  }

                  v268 = *(v286 + 40);
                  v251 = *(v286 + 32);
                  v256 = *(v282 + 40);
                  v261 = *(v282 + 32);
                  v356 = *(v282 + 16);
                  v357 = v96 & 0x3F;
                  v353 = v301;
                  LOBYTE(v354) = v98 & 0x3F;
                  outlined copy of _Glass.Variant.ID(v282, v279);
                  outlined copy of _Glass.Variant.ID(v286, v274);
                  outlined copy of _Glass.Variant.ID(v301, v295);
                  outlined copy of _Glass.Variant.ID(v307, v96);
                  outlined copy of _Glass.Variant.ID(v282, v279);
                  outlined copy of _Glass.Variant.ID(v286, v274);
                  outlined copy of _Glass.Variant.ID(v301, v295);
                  outlined copy of _Glass.Variant.ID(v307, v96);
                  v243 = static Material.ID.== infix(_:_:)(&v356, &v353);
                  outlined consume of _Glass.Variant.ID(v307, v96);
                  outlined consume of _Glass.Variant.ID(v301, v295);
                  v101 = v279;
                  v100 = v282;
                  outlined consume of _Glass.Variant.ID(v301, v295);
                  outlined consume of _Glass.Variant.ID(v307, v96);
                  if ((v243 & 1) == 0)
                  {
                    goto LABEL_234;
                  }
                }

                else
                {
                  if (v95 | v96 ^ 0x80)
                  {
                    v133 = v98 & 0xC0;
                    if (*(v282 + 24) == 128 && v95 == 1)
                    {
                      if (v133 != 128 || v301 != 1 || v98 != 128)
                      {
                        goto LABEL_233;
                      }

                      v268 = *(v286 + 40);
                      v251 = *(v286 + 32);
                      v256 = *(v282 + 40);
                      v261 = *(v282 + 32);
                      v135 = 1;
                    }

                    else
                    {
                      if (v133 != 128 || v301 != 2 || v98 != 128)
                      {
                        goto LABEL_233;
                      }

                      v268 = *(v286 + 40);
                      v251 = *(v286 + 32);
                      v256 = *(v282 + 40);
                      v261 = *(v282 + 32);
                      v135 = 2;
                    }

                    v302 = v135;
                  }

                  else
                  {
                    if ((v98 & 0xC0) != 0x80 || v301 || v98 != 128)
                    {
                      goto LABEL_233;
                    }

                    v268 = *(v286 + 40);
                    v251 = *(v286 + 32);
                    v256 = *(v282 + 40);
                    v261 = *(v282 + 32);
                    v302 = 0;
                  }

                  outlined copy of _Glass.Variant.ID(v282, v279);
                  outlined copy of _Glass.Variant.ID(v286, v274);
                  v100 = v282;
                  v101 = v279;
                  outlined copy of _Glass.Variant.ID(v282, v279);
                  outlined copy of _Glass.Variant.ID(v286, v274);
                  outlined copy of _Glass.Variant.ID(v302, 0x80u);
                  outlined consume of _Glass.Variant.ID(v307, v96);
                  outlined consume of _Glass.Variant.ID(v302, 0x80u);
                }
              }

              else
              {
                if (v98 >= 0x40)
                {
LABEL_232:
                  outlined copy of _Glass.Variant.ID(v95, v96);
                  v90 = v279;
                  v91 = v282;
LABEL_233:
                  v132 = v90;
                  outlined copy of _Glass.Variant.ID(v91, v90);
                  outlined copy of _Glass.Variant.ID(v286, v274);
                  outlined copy of _Glass.Variant.ID(v282, v132);
                  outlined copy of _Glass.Variant.ID(v286, v274);
                  outlined copy of _Glass.Variant.ID(v301, v295);
                  outlined consume of _Glass.Variant.ID(v307, v298);
                  v101 = v132;
                  v100 = v282;
                  outlined consume of _Glass.Variant.ID(v301, v295);
                  goto LABEL_234;
                }

                v268 = *(v286 + 40);
                v251 = *(v286 + 32);
                v256 = *(v282 + 40);
                v261 = *(v282 + 32);
                v222 = *(v95 + 40);
                v129 = *(v95 + 48);
                v228 = *(v95 + 32);
                v232 = *(v301 + 16);
                v218 = *(v301 + 32);
                v214 = *(v301 + 40);
                v130 = *(v301 + 48);
                v235 = *(v95 + 24);
                v245 = *(v301 + 24);
                v356 = *(v95 + 16);
                v239 = v356;
                v357 = v235;
                v353 = v232;
                LOBYTE(v354) = v245;
                outlined copy of _Glass.Variant.ID(v282, v279);
                outlined copy of _Glass.Variant.ID(v286, v274);
                outlined copy of _Glass.Variant.ID(v301, v98);
                outlined copy of _Glass.Variant.ID(v307, v96);
                outlined copy of _Glass.Variant.ID(v282, v279);
                outlined copy of _Glass.Variant.ID(v286, v274);
                outlined copy of _Glass.Variant.ID(v301, v295);
                outlined copy of _Glass.Variant.ID(v307, v96);
                outlined copy of _Glass.Variant.ID(v239, v235);
                outlined copy of _Glass.Variant.ID(v232, v245);
                v131 = static _Glass.Variant.ID.== infix(_:_:)(&v356, &v353);
                outlined consume of _Glass.Variant.ID(v353, v354);
                outlined consume of _Glass.Variant.ID(v356, v357);
                if ((v131 & 1) == 0)
                {
                  outlined consume of _Glass.Variant.ID(v307, v298);
                  outlined consume of _Glass.Variant.ID(v301, v98);
                  outlined consume of _Glass.Variant.ID(v301, v98);
                  outlined consume of _Glass.Variant.ID(v307, v298);
                  v101 = v279;
                  v100 = v282;
LABEL_234:
                  outlined consume of _Glass.Variant.ID(v100, v101);
                  outlined consume of _Glass.Variant.ID(v286, v274);
                  outlined consume of _Glass.Variant.ID(v286, v274);
                  outlined consume of _Glass.Variant.ID(v282, v101);
                  v123 = v315;
                  v122 = v321;
                  outlined consume of _Glass.Variant.ID(v321, v315);
                  outlined consume of _Glass.Variant.ID(v326, v328);
                  outlined consume of _Glass.Variant.ID(v326, v328);
LABEL_235:
                  v53 = v122;
                  v64 = v123;
                  goto LABEL_97;
                }

                v356 = v228;
                v357 = v222;
                v353 = v218;
                LOBYTE(v354) = v214;
                outlined copy of _Glass.Variant.ID(v228, v222);
                outlined copy of _Glass.Variant.ID(v218, v214);
                v246 = static _Glass.Variant.ID.== infix(_:_:)(&v356, &v353);
                outlined consume of _Glass.Variant.ID(v353, v354);
                outlined consume of _Glass.Variant.ID(v356, v357);
                outlined consume of _Glass.Variant.ID(v307, v298);
                outlined consume of _Glass.Variant.ID(v301, v98);
                outlined consume of _Glass.Variant.ID(v301, v98);
                outlined consume of _Glass.Variant.ID(v307, v298);
                v101 = v279;
                v100 = v282;
                if ((v246 & 1) == 0 || v129 != v130)
                {
                  goto LABEL_234;
                }
              }

              v356 = v261;
              v357 = v256;
              v353 = v251;
              LOBYTE(v354) = v268;
              outlined copy of _Glass.Variant.ID(v261, v256);
              outlined copy of _Glass.Variant.ID(v251, v268);
              v308 = static _Glass.Variant.ID.== infix(_:_:)(&v356, &v353);
              outlined consume of _Glass.Variant.ID(v353, v354);
              outlined consume of _Glass.Variant.ID(v356, v357);
              outlined consume of _Glass.Variant.ID(v100, v101);
              outlined consume of _Glass.Variant.ID(v286, v274);
              outlined consume of _Glass.Variant.ID(v286, v274);
              outlined consume of _Glass.Variant.ID(v100, v101);
              v123 = v315;
              v122 = v321;
              outlined consume of _Glass.Variant.ID(v321, v315);
              outlined consume of _Glass.Variant.ID(v326, v328);
              outlined consume of _Glass.Variant.ID(v326, v328);
              if ((v308 & 1) == 0 || v97 != v99)
              {
                goto LABEL_235;
              }
            }

            outlined consume of _Glass.Variant.ID(v122, v123);
LABEL_223:
            if (v47 != v50)
            {
              goto LABEL_98;
            }

            goto LABEL_90;
          }

          v312 = *(v13 + 40);
          v313 = *(v342 + 32);
          v311 = *(v342 + 40);
          v310 = *(v13 + 32);
          v293 = *(v32 + 16);
          if (v49 >= 0x40)
          {
            goto LABEL_156;
          }

          v266 = *(v45 + 16);
          v77 = *(v45 + 24);
          v238 = *(v45 + 32);
          v242 = *(v45 + 40);
          v78 = *(v45 + 48);
          v250 = *(v48 + 16);
          v260 = *(v48 + 24);
          v231 = *(v48 + 32);
          v234 = *(v48 + 40);
          v79 = *(v48 + 48);
          outlined init with copy of ResolvedIDs.Key(v6, &v356);
          outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
          outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
          outlined init with copy of ResolvedIDs.Key(v6, &v356);
          v255 = v77;
          if (v77 >> 6)
          {
            if (v77 >> 6 == 1)
            {
              v80 = v266;
              if ((v260 & 0xC0) != 0x40)
              {
                goto LABEL_201;
              }

              v353 = v266;
              LOBYTE(v354) = v77 & 0x3F;
              v350 = v250;
              LOBYTE(v351) = v260 & 0x3F;
              outlined init with copy of ResolvedIDs.Key(v6, &v356);
              outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
              outlined copy of _Glass.Variant.ID(v321, v33);
              outlined copy of _Glass.Variant.ID(v326, v328);
              outlined copy of _Glass.Variant.ID(v293, v304);
              outlined copy of _Glass.Variant.ID(v299, v296);
              outlined copy of _Glass.Variant.ID(v250, v260);
              outlined copy of _Glass.Variant.ID(v266, v77);
              outlined init with copy of ResolvedIDs.Key(v6, &v356);
              outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
              outlined copy of _Glass.Variant.ID(v342, v19);
              outlined copy of _Glass.Variant.ID(v13, v12);
              outlined copy of _Glass.Variant.ID(v321, v33);
              outlined copy of _Glass.Variant.ID(v326, v328);
              outlined copy of _Glass.Variant.ID(v293, v304);
              outlined copy of _Glass.Variant.ID(v299, v296);
              outlined copy of _Glass.Variant.ID(v250, v260);
              outlined copy of _Glass.Variant.ID(v266, v77);
              v225 = static Material.ID.== infix(_:_:)(&v353, &v350);
              outlined consume of _Glass.Variant.ID(v266, v77);
              outlined consume of _Glass.Variant.ID(v250, v260);
              outlined consume of _Glass.Variant.ID(v250, v260);
              outlined consume of _Glass.Variant.ID(v266, v77);
              v81 = v293;
              v82 = v304;
              if ((v225 & 1) == 0)
              {
                goto LABEL_286;
              }
            }

            else
            {
              if (v266 | v77 ^ 0x80)
              {
                if (v77 == 128 && v266 == 1)
                {
                  if ((v260 & 0xC0) != 0x80 || v250 != 1 || v260 != 128)
                  {
                    goto LABEL_202;
                  }

                  outlined init with copy of ResolvedIDs.Key(v6, &v356);
                  outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
                  outlined copy of _Glass.Variant.ID(v321, v33);
                  outlined copy of _Glass.Variant.ID(v326, v328);
                  outlined copy of _Glass.Variant.ID(v293, v304);
                  v120 = v296;
                  outlined copy of _Glass.Variant.ID(v299, v296);
                  outlined init with copy of ResolvedIDs.Key(v6, &v356);
                  v121 = 1;
                }

                else
                {
                  if ((v260 & 0xC0) != 0x80 || v250 != 2 || v260 != 128)
                  {
                    goto LABEL_202;
                  }

                  outlined init with copy of ResolvedIDs.Key(v6, &v356);
                  outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
                  outlined copy of _Glass.Variant.ID(v321, v33);
                  outlined copy of _Glass.Variant.ID(v326, v328);
                  outlined copy of _Glass.Variant.ID(v293, v304);
                  v120 = v296;
                  outlined copy of _Glass.Variant.ID(v299, v296);
                  outlined init with copy of ResolvedIDs.Key(v6, &v356);
                  v121 = 2;
                }
              }

              else
              {
                if ((v260 & 0xC0) != 0x80 || v250 || v260 != 128)
                {
                  goto LABEL_202;
                }

                outlined init with copy of ResolvedIDs.Key(v6, &v356);
                outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
                outlined copy of _Glass.Variant.ID(v321, v33);
                outlined copy of _Glass.Variant.ID(v326, v328);
                outlined copy of _Glass.Variant.ID(v293, v304);
                v120 = v296;
                outlined copy of _Glass.Variant.ID(v299, v296);
                outlined init with copy of ResolvedIDs.Key(v6, &v356);
                v121 = 0;
              }

              outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
              outlined copy of _Glass.Variant.ID(v342, v334);
              outlined copy of _Glass.Variant.ID(v13, v12);
              outlined copy of _Glass.Variant.ID(v321, v33);
              outlined copy of _Glass.Variant.ID(v326, v328);
              outlined copy of _Glass.Variant.ID(v293, v304);
              outlined copy of _Glass.Variant.ID(v299, v120);
              outlined copy of _Glass.Variant.ID(v121, 0x80u);
              outlined consume of _Glass.Variant.ID(v266, v255);
              outlined consume of _Glass.Variant.ID(v121, 0x80u);
            }
          }

          else
          {
            v80 = v266;
            if (v260 >= 0x40)
            {
LABEL_201:
              outlined copy of _Glass.Variant.ID(v80, v77);
LABEL_202:
              outlined init with copy of ResolvedIDs.Key(v6, &v356);
              outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
              outlined copy of _Glass.Variant.ID(v321, v33);
              outlined copy of _Glass.Variant.ID(v326, v328);
              outlined copy of _Glass.Variant.ID(v293, v304);
              outlined copy of _Glass.Variant.ID(v299, v296);
              outlined init with copy of ResolvedIDs.Key(v6, &v356);
              outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
              outlined copy of _Glass.Variant.ID(v342, v19);
              outlined copy of _Glass.Variant.ID(v13, v12);
              outlined copy of _Glass.Variant.ID(v321, v33);
              outlined copy of _Glass.Variant.ID(v326, v328);
              v82 = v304;
              outlined copy of _Glass.Variant.ID(v293, v304);
              outlined copy of _Glass.Variant.ID(v299, v296);
              outlined copy of _Glass.Variant.ID(v250, v260);
              outlined consume of _Glass.Variant.ID(v266, v77);
              outlined consume of _Glass.Variant.ID(v250, v260);
              goto LABEL_285;
            }

            v212 = *(v266 + 32);
            v211 = *(v266 + 40);
            v116 = *(v266 + 48);
            v226 = *(v250 + 16);
            v210 = *(v250 + 32);
            v209 = *(v250 + 40);
            v117 = *(v250 + 48);
            v213 = *(v266 + 24);
            v221 = *(v250 + 24);
            v353 = *(v266 + 16);
            v217 = v353;
            LOBYTE(v354) = v213;
            v350 = v226;
            LOBYTE(v351) = v221;
            outlined init with copy of ResolvedIDs.Key(v6, &v356);
            outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
            outlined copy of _Glass.Variant.ID(v321, v33);
            outlined copy of _Glass.Variant.ID(v326, v328);
            outlined copy of _Glass.Variant.ID(v293, v304);
            outlined copy of _Glass.Variant.ID(v299, v296);
            outlined copy of _Glass.Variant.ID(v250, v260);
            outlined copy of _Glass.Variant.ID(v266, v77);
            outlined init with copy of ResolvedIDs.Key(v6, &v356);
            outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 0);
            outlined copy of _Glass.Variant.ID(v342, v19);
            outlined copy of _Glass.Variant.ID(v13, v12);
            outlined copy of _Glass.Variant.ID(v321, v33);
            outlined copy of _Glass.Variant.ID(v326, v328);
            outlined copy of _Glass.Variant.ID(v293, v304);
            outlined copy of _Glass.Variant.ID(v299, v296);
            outlined copy of _Glass.Variant.ID(v250, v260);
            outlined copy of _Glass.Variant.ID(v266, v77);
            outlined copy of _Glass.Variant.ID(v217, v213);
            outlined copy of _Glass.Variant.ID(v226, v221);
            v118 = static _Glass.Variant.ID.== infix(_:_:)(&v353, &v350);
            outlined consume of _Glass.Variant.ID(v350, v351);
            outlined consume of _Glass.Variant.ID(v353, v354);
            if ((v118 & 1) == 0)
            {
              outlined consume of _Glass.Variant.ID(v266, v255);
              outlined consume of _Glass.Variant.ID(v250, v260);
              outlined consume of _Glass.Variant.ID(v250, v260);
              v140 = v266;
              v141 = v255;
              goto LABEL_284;
            }

            v356 = v212;
            v357 = v211;
            v353 = v210;
            LOBYTE(v354) = v209;
            outlined copy of _Glass.Variant.ID(v212, v211);
            outlined copy of _Glass.Variant.ID(v210, v209);
            v227 = static _Glass.Variant.ID.== infix(_:_:)(&v356, &v353);
            outlined consume of _Glass.Variant.ID(v353, v354);
            outlined consume of _Glass.Variant.ID(v356, v357);
            outlined consume of _Glass.Variant.ID(v266, v255);
            outlined consume of _Glass.Variant.ID(v250, v260);
            outlined consume of _Glass.Variant.ID(v250, v260);
            outlined consume of _Glass.Variant.ID(v266, v255);
            v82 = v304;
            v81 = v293;
            if ((v227 & 1) == 0 || v116 != v117)
            {
              goto LABEL_286;
            }
          }

          if (v242 >> 6)
          {
            v138 = v238;
            v139 = v234;
            if (v242 >> 6 == 1)
            {
              if ((v234 & 0xC0) != 0x40)
              {
                goto LABEL_282;
              }

              v356 = v238;
              v357 = v242 & 0x3F;
              v353 = v231;
              LOBYTE(v354) = v234 & 0x3F;
              outlined copy of _Glass.Variant.ID(v231, v234);
              outlined copy of _Glass.Variant.ID(v238, v242);
              outlined copy of _Glass.Variant.ID(v231, v234);
              outlined copy of _Glass.Variant.ID(v238, v242);
              v270 = static Material.ID.== infix(_:_:)(&v356, &v353);
              outlined consume of _Glass.Variant.ID(v238, v242);
              outlined consume of _Glass.Variant.ID(v231, v234);
              outlined consume of _Glass.Variant.ID(v231, v234);
              outlined consume of _Glass.Variant.ID(v238, v242);
              v81 = v293;
              v82 = v304;
              outlined consume of _Glass.Variant.ID(v293, v304);
              outlined consume of _Glass.Variant.ID(v299, v296);
              if ((v270 & 1) == 0)
              {
                goto LABEL_287;
              }

              goto LABEL_361;
            }

            if (v238 | v242 ^ 0x80)
            {
              v148 = v234 & 0xC0;
              if (v242 == 128 && v238 == 1)
              {
                v145 = v231;
                if (v148 != 128 || v231 != 1 || v234 != 128)
                {
                  goto LABEL_283;
                }

                v150 = 1;
              }

              else
              {
                v145 = v231;
                if (v148 != 128 || v231 != 2 || v234 != 128)
                {
                  goto LABEL_283;
                }

                v150 = 2;
              }
            }

            else
            {
              v145 = v231;
              if ((v234 & 0xC0) != 0x80 || v231 || v234 != 128)
              {
                goto LABEL_283;
              }

              v150 = 0;
            }

            outlined copy of _Glass.Variant.ID(v150, 0x80u);
            outlined consume of _Glass.Variant.ID(v238, v242);
            outlined consume of _Glass.Variant.ID(v150, 0x80u);
            outlined consume of _Glass.Variant.ID(v238, v242);
            v82 = v304;
            v81 = v293;
          }

          else
          {
            v138 = v238;
            if (v234 >= 0x40)
            {
LABEL_282:
              outlined copy of _Glass.Variant.ID(v138, v242);
              v139 = v234;
              v145 = v231;
LABEL_283:
              outlined copy of _Glass.Variant.ID(v145, v139);
              outlined consume of _Glass.Variant.ID(v238, v242);
              v140 = v145;
              v141 = v139;
LABEL_284:
              outlined consume of _Glass.Variant.ID(v140, v141);
              v82 = v304;
LABEL_285:
              v81 = v293;
LABEL_286:
              outlined consume of _Glass.Variant.ID(v81, v82);
              outlined consume of _Glass.Variant.ID(v299, v296);
LABEL_287:
              outlined consume of _Glass.Variant.ID(v299, v296);
              outlined consume of _Glass.Variant.ID(v81, v82);
              v146 = v328;
              v147 = v326;
LABEL_288:
              LOBYTE(v33) = v315;
              outlined consume of _Glass.Variant.ID(v321, v315);
              outlined consume of _Glass.Variant.ID(v147, v146);
              v93 = v147;
              v94 = v146;
LABEL_289:
              outlined consume of _Glass.Variant.ID(v93, v94);
              v53 = v321;
              v64 = v33;
              goto LABEL_97;
            }

            v215 = *(v238 + 32);
            v229 = *(v238 + 40);
            v142 = *(v238 + 48);
            v253 = *(v231 + 16);
            v223 = *(v231 + 32);
            v219 = *(v231 + 40);
            v143 = *(v231 + 48);
            v258 = *(v238 + 24);
            v271 = *(v231 + 24);
            v356 = *(v238 + 16);
            v263 = v356;
            v357 = v258;
            v353 = v253;
            LOBYTE(v354) = v271;
            outlined copy of _Glass.Variant.ID(v231, v234);
            outlined copy of _Glass.Variant.ID(v238, v242);
            outlined copy of _Glass.Variant.ID(v231, v234);
            outlined copy of _Glass.Variant.ID(v238, v242);
            outlined copy of _Glass.Variant.ID(v263, v258);
            outlined copy of _Glass.Variant.ID(v253, v271);
            v144 = static _Glass.Variant.ID.== infix(_:_:)(&v356, &v353);
            outlined consume of _Glass.Variant.ID(v353, v354);
            outlined consume of _Glass.Variant.ID(v356, v357);
            if ((v144 & 1) == 0)
            {
              outlined consume of _Glass.Variant.ID(v238, v242);
              outlined consume of _Glass.Variant.ID(v231, v234);
              outlined consume of _Glass.Variant.ID(v231, v234);
              v140 = v238;
              v141 = v242;
              goto LABEL_284;
            }

            v356 = v215;
            v357 = v229;
            v353 = v223;
            LOBYTE(v354) = v219;
            outlined copy of _Glass.Variant.ID(v215, v229);
            outlined copy of _Glass.Variant.ID(v223, v219);
            v272 = static _Glass.Variant.ID.== infix(_:_:)(&v356, &v353);
            outlined consume of _Glass.Variant.ID(v353, v354);
            outlined consume of _Glass.Variant.ID(v356, v357);
            outlined consume of _Glass.Variant.ID(v238, v242);
            outlined consume of _Glass.Variant.ID(v231, v234);
            outlined consume of _Glass.Variant.ID(v231, v234);
            outlined consume of _Glass.Variant.ID(v238, v242);
            v82 = v304;
            v81 = v293;
            if ((v272 & 1) == 0 || v142 != v143)
            {
              goto LABEL_286;
            }
          }

          outlined consume of _Glass.Variant.ID(v81, v82);
          outlined consume of _Glass.Variant.ID(v299, v296);
LABEL_361:
          outlined consume of _Glass.Variant.ID(v299, v296);
          outlined consume of _Glass.Variant.ID(v81, v82);
          v146 = v328;
          v147 = v326;
          if (v78 != v79)
          {
            goto LABEL_288;
          }

          goto LABEL_158;
        }

        if (v16 == 1)
        {
          if (v22 != 1)
          {
            outlined init with copy of ResolvedIDs.Key(v6, &v356);
            outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 1);
            outlined init with copy of ResolvedIDs.Key(v6, &v356);
            v25 = v13;
            v26 = v12;
            v27 = v14;
            v28 = v15;
            v29 = 1;
            goto LABEL_23;
          }

          outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 1);
          LODWORD(v353) = v13;
          v354 = v12;
          v355 = v14;
          LODWORD(v350) = v342;
          v351 = v19;
          v352 = v21;
          v6 = a1;
          outlined init with copy of ResolvedIDs.Key(a1, &v356);
          outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 1);
          outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 1);
          outlined init with copy of ResolvedIDs.Key(a1, &v356);
          outlined init with copy of ResolvedIDs.Key(a1, &v356);
          outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 1);
          outlined init with copy of ResolvedIDs.Key(a1, &v356);
          outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 1);
          v23 = static GlassContainer.Item.ID.== infix(_:_:)(&v353, &v350);
          _s7SwiftUI14GlassContainerO5EntryV7ModelIDO_AGtWOhTm_0(v365, &lazy cache variable for type metadata for (ResolvedIDs.Key, ResolvedIDs.Key));
          outlined destroy of ResolvedIDs.Key(a1);
          outlined consume of ResolvedIDs.Key(v13, v12, v14, v15, 1);
          outlined consume of ResolvedIDs.Key(v13, v12, v14, v15, 1);
          _s7SwiftUI14GlassContainerO5EntryV7ModelIDO_AGtWOhTm_0(v358, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
          outlined destroy of ResolvedIDs.Key(a1);
          outlined consume of ResolvedIDs.Key(v13, v12, v14, v15, 1);
          v3 = v341;
          if (v23)
          {
            return v5;
          }
        }

        else
        {
          v335 = v20;
          outlined init with copy of ResolvedIDs.Key(v6, &v356);
          outlined init with copy of ResolvedIDs.Key(v6, &v356);
          outlined copy of ResolvedIDs.Key(v13, v12, v14, v15, 2);
          _s7SwiftUI14GlassContainerO5EntryV7ModelIDO_AGtWOhTm_0(v365, &lazy cache variable for type metadata for (ResolvedIDs.Key, ResolvedIDs.Key));
          if (v22 == 2 && !(v19 | v342 | v21 | v335))
          {
            _s7SwiftUI14GlassContainerO5EntryV7ModelIDO_AGtWOhTm_0(v358, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
            return v5;
          }

          _s7SwiftUI14GlassContainerO5EntryV7ModelIDO_AGtWOhTm_0(v358, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
          v3 = v341;
        }
      }

LABEL_5:
      v5 = (v5 + 1) & v343;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = a1;
    v348 = *(a1 + 16);
    v349 = *a1;
    v7 = ~v4;
    v347 = *(a1 + 32);
    v345 = v2 + 64;
    v346 = ~v4;
    while (1)
    {
      v8 = *(v350 + 48) + 40 * v5;
      v9 = *v8;
      v10 = *(v8 + 8);
      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      v13 = *(v8 + 32);
      v357[0] = v9;
      v357[1] = v10;
      v357[2] = v12;
      v357[3] = v11;
      v358 = v13;
      v359 = v349;
      v360 = v348;
      v361 = v347;
      if (!v13)
      {
        break;
      }

      if (v13 != 1)
      {
        if (v6[2].i8[0] == 2)
        {
          v21 = vorrq_s8(*v6, v6[1]);
          if (!*&vorr_s8(*v21.i8, *&vextq_s8(v21, v21, 8uLL)))
          {
            _s7SwiftUI14GlassContainerO5EntryV7ModelIDO_AGtWOhTm_0(v357, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
            return v5;
          }
        }

        outlined init with copy of GlassContainer.Entry.ModelID(v6, &v355);
        goto LABEL_4;
      }

      if (v6[2].i8[0] != 1 || v6->i32[0] != v9)
      {
        outlined init with copy of GlassContainer.Entry.ModelID(v6, &v355);
        v16 = v9;
        v17 = v10;
        v18 = v12;
        v19 = v11;
        v20 = 1;
LABEL_20:
        outlined copy of GlassContainer.Entry.ModelID(v16, v17, v18, v19, v20);
LABEL_4:
        _s7SwiftUI14GlassContainerO5EntryV7ModelIDO_AGtWOhTm_0(v357, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
        goto LABEL_5;
      }

      v14 = v6->i64[1];
      if (!v10)
      {
        outlined copy of GlassContainer.Entry.ModelID(v9, 0, v12, v11, 1);
        if (!v14)
        {
          outlined init with copy of GlassContainer.Entry.ModelID(v6, &v355);
          outlined init with copy of GlassContainer.Entry.ModelID(v6, &v355);
          outlined copy of GlassContainer.Entry.ModelID(v9, 0, v12, v11, 1);
          outlined init with copy of GlassContainer.Entry.ModelID(v6, &v355);
          outlined copy of GlassContainer.Entry.ModelID(v9, 0, v12, v11, 1);
          _s7SwiftUI14GlassContainerO5EntryV7ModelIDO_AGtWOhTm_0(v357, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
          outlined destroy of GlassContainer.Entry.ModelID(v6);
          outlined consume of GlassContainer.Entry.ModelID(v9, 0, v12, v11, 1);
          return v5;
        }

        outlined init with copy of GlassContainer.Entry.ModelID(v6, &v355);
        outlined init with copy of GlassContainer.Entry.ModelID(v6, &v355);
        outlined copy of GlassContainer.Entry.ModelID(v9, 0, v12, v11, 1);
        outlined init with copy of GlassContainer.Entry.ModelID(v6, &v355);
        v44 = 0;
        goto LABEL_46;
      }

      if (!v14)
      {
        outlined copy of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 1);
        outlined init with copy of GlassContainer.Entry.ModelID(v6, &v355);
        outlined init with copy of GlassContainer.Entry.ModelID(v6, &v355);
        outlined copy of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 1);
        outlined init with copy of GlassContainer.Entry.ModelID(v6, &v355);
        v44 = v10;
LABEL_46:
        outlined copy of GlassContainer.Entry.ModelID(v9, v44, v12, v11, 1);

        _s7SwiftUI14GlassContainerO5EntryV7ModelIDO_AGtWOhTm_0(v357, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
        outlined destroy of GlassContainer.Entry.ModelID(v6);
        v45 = v9;
        v46 = v10;
        v47 = v12;
        v48 = v11;
        v49 = 1;
        goto LABEL_66;
      }

      v15 = v6[1].i64[0];
      if (v10 == v14)
      {
        outlined copy of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 1);
        outlined init with copy of GlassContainer.Entry.ModelID(v6, &v355);
        outlined init with copy of GlassContainer.Entry.ModelID(v6, &v355);
        outlined copy of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 1);
        outlined init with copy of GlassContainer.Entry.ModelID(v6, &v355);
        outlined copy of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 1);
      }

      else
      {
        v344 = *(*v10 + 112);
        outlined copy of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 1);
        outlined init with copy of GlassContainer.Entry.ModelID(v6, &v355);
        outlined init with copy of GlassContainer.Entry.ModelID(v6, &v355);
        outlined copy of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 1);
        outlined init with copy of GlassContainer.Entry.ModelID(v6, &v355);
        outlined copy of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 1);
        swift_retain_n();
        v7 = v346;
        v50 = v344(v14);

        if ((v50 & 1) == 0)
        {

          _s7SwiftUI14GlassContainerO5EntryV7ModelIDO_AGtWOhTm_0(v357, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
          outlined destroy of GlassContainer.Entry.ModelID(v6);
          outlined consume of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 1);
          v3 = v345;
          goto LABEL_5;
        }
      }

      _s7SwiftUI14GlassContainerO5EntryV7ModelIDO_AGtWOhTm_0(v357, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
      outlined destroy of GlassContainer.Entry.ModelID(v6);
      outlined consume of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 1);
      v3 = v345;
      if (v12 == v15)
      {
        return v5;
      }

LABEL_5:
      v5 = (v5 + 1) & v7;
      if (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
      {
        return v5;
      }
    }

    if (v6[2].i8[0])
    {
      outlined init with copy of GlassContainer.Entry.ModelID(v6, &v355);
      v16 = v9;
      v17 = v10;
      v18 = v12;
      v19 = v11;
      v20 = 0;
      goto LABEL_20;
    }

    v22 = v6->i64[0];
    v23 = v6->u8[8];
    if (v10 >> 6)
    {
      if (v10 >> 6 == 1)
      {
        if ((v23 & 0xC0) != 0x40)
        {
          goto LABEL_32;
        }

        v341 = v6->i8[9];
        v342 = v6[1].i64[0];
        v323 = v6[1].i64[1];
        v353 = v9;
        v354 = v10 & 0x3F;
        v351 = v22;
        v352 = v23 & 0x3F;
        outlined copy of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 0);
        outlined init with copy of GlassContainer.Entry.ModelID(v6, &v355);
        outlined copy of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 0);
        outlined init with copy of GlassContainer.Entry.ModelID(v6, &v355);
        outlined copy of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 0);
        outlined copy of _Glass.Variant.ID(v22, v23);
        outlined copy of _Glass.Variant.ID(v9, v10);
        if ((static Material.ID.== infix(_:_:)(&v353, &v351) & 1) == 0)
        {
          _s7SwiftUI14GlassContainerO5EntryV7ModelIDO_AGtWOhTm_0(v357, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
          outlined consume of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 0);
LABEL_65:
          outlined consume of _Glass.Variant.ID(v9, v10);
          outlined consume of _Glass.Variant.ID(v22, v23);
          outlined destroy of GlassContainer.Entry.ModelID(v6);
          v45 = v9;
          v46 = v10;
          v47 = v12;
          v48 = v11;
          v49 = 0;
LABEL_66:
          outlined consume of GlassContainer.Entry.ModelID(v45, v46, v47, v48, v49);
          v7 = v346;
          goto LABEL_5;
        }

        outlined consume of _Glass.Variant.ID(v9, v10);
        v24 = v22;
        v25 = v23;
      }

      else
      {
        if (v9 | v10 ^ 0x80)
        {
          v42 = v23 & 0xC0;
          if (v10 == 128 && v9 == 1)
          {
            if (v42 != 128 || v22 != 1 || v23 != 128)
            {
              goto LABEL_63;
            }

            v341 = v6->i8[9];
            v342 = v6[1].i64[0];
            v323 = v6[1].i64[1];
            outlined copy of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 0);
            outlined init with copy of GlassContainer.Entry.ModelID(v6, &v355);
            outlined copy of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 0);
            outlined init with copy of GlassContainer.Entry.ModelID(v6, &v355);
            outlined copy of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 0);
            outlined consume of _Glass.Variant.ID(v9, v10);
            v24 = 1;
          }

          else
          {
            if (v42 != 128 || v22 != 2 || v23 != 128)
            {
              goto LABEL_63;
            }

            v341 = v6->i8[9];
            v342 = v6[1].i64[0];
            v323 = v6[1].i64[1];
            outlined copy of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 0);
            outlined init with copy of GlassContainer.Entry.ModelID(v6, &v355);
            outlined copy of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 0);
            outlined init with copy of GlassContainer.Entry.ModelID(v6, &v355);
            outlined copy of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 0);
            outlined consume of _Glass.Variant.ID(v9, v10);
            v24 = 2;
          }
        }

        else
        {
          if ((v23 & 0xC0) != 0x80 || v22 || v23 != 128)
          {
LABEL_63:
            outlined init with copy of GlassContainer.Entry.ModelID(v6, &v355);
            outlined copy of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 0);
            outlined init with copy of GlassContainer.Entry.ModelID(v6, &v355);
            outlined copy of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 0);
            v40 = v22;
            v41 = v23;
            goto LABEL_64;
          }

          v341 = v6->i8[9];
          v342 = v6[1].i64[0];
          v323 = v6[1].i64[1];
          outlined copy of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 0);
          outlined init with copy of GlassContainer.Entry.ModelID(v6, &v355);
          outlined copy of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 0);
          outlined init with copy of GlassContainer.Entry.ModelID(v6, &v355);
          outlined copy of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 0);
          outlined consume of _Glass.Variant.ID(v9, v10);
          v24 = 0;
        }

        v25 = 0x80;
      }

      outlined consume of _Glass.Variant.ID(v24, v25);
      goto LABEL_60;
    }

    if (v23 >= 0x40)
    {
LABEL_32:
      outlined init with copy of GlassContainer.Entry.ModelID(v6, &v355);
      outlined copy of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 0);
      outlined init with copy of GlassContainer.Entry.ModelID(v6, &v355);
      outlined copy of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 0);
      outlined copy of _Glass.Variant.ID(v22, v23);
      v40 = v9;
      v41 = v10;
LABEL_64:
      outlined copy of _Glass.Variant.ID(v40, v41);
      _s7SwiftUI14GlassContainerO5EntryV7ModelIDO_AGtWOhTm_0(v357, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
      goto LABEL_65;
    }

    v343 = v6->u8[8];
    v26 = *(v9 + 16);
    v27 = *(v9 + 24);
    v28 = *(v9 + 40);
    v29 = *(v9 + 48);
    v30 = *(v22 + 16);
    v31 = *(v22 + 24);
    v32 = *(v22 + 32);
    v33 = *(v22 + 40);
    v340 = v6->i64[0];
    v34 = *(v6->i64[0] + 48);
    if (v27 >> 6)
    {
      if (v27 >> 6 == 1)
      {
        if ((v31 & 0xC0) != 0x40)
        {
          goto LABEL_102;
        }

        v305 = v32;
        v306 = *(v9 + 32);
        v304 = v33;
        v303 = *(v9 + 40);
        v341 = v6->i8[9];
        v342 = v6[1].i64[0];
        v319 = v30;
        v323 = v6[1].i64[1];
        v353 = *(v9 + 16);
        v354 = v27 & 0x3F;
        v351 = v30;
        v352 = v31 & 0x3F;
        v35 = v26;
        v36 = v27;
        v37 = v31;
        v307 = v31;
        outlined copy of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 0);
        outlined init with copy of GlassContainer.Entry.ModelID(v6, &v355);
        outlined copy of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 0);
        outlined copy of _Glass.Variant.ID(v35, v36);
        outlined copy of _Glass.Variant.ID(v30, v37);
        outlined init with copy of GlassContainer.Entry.ModelID(v6, &v355);
        outlined copy of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 0);
        v38 = v343;
        v39 = v340;
        outlined copy of _Glass.Variant.ID(v340, v343);
        outlined copy of _Glass.Variant.ID(v9, v10);
        outlined copy of _Glass.Variant.ID(v35, v36);
        outlined copy of _Glass.Variant.ID(v319, v307);
        v324 = static Material.ID.== infix(_:_:)(&v353, &v351);
        outlined consume of _Glass.Variant.ID(v35, v36);
        outlined consume of _Glass.Variant.ID(v319, v307);
        outlined consume of _Glass.Variant.ID(v319, v307);
        outlined consume of _Glass.Variant.ID(v35, v36);
        if ((v324 & 1) == 0)
        {
          goto LABEL_290;
        }
      }

      else
      {
        if (v26 | v27 ^ 0x80)
        {
          v63 = v31 & 0xC0;
          if (*(v9 + 24) == 128 && v26 == 1)
          {
            if (v63 != 128 || v30 != 1 || v31 != 128)
            {
              goto LABEL_102;
            }

            v311 = *(v9 + 24);
            v316 = *(v9 + 16);
            v305 = v32;
            v306 = *(v9 + 32);
            v304 = v33;
            v303 = *(v9 + 40);
            v341 = v6->i8[9];
            v342 = v6[1].i64[0];
            v323 = v6[1].i64[1];
            outlined copy of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 0);
            outlined init with copy of GlassContainer.Entry.ModelID(v6, &v355);
            outlined copy of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 0);
            outlined init with copy of GlassContainer.Entry.ModelID(v6, &v355);
            v65 = 1;
          }

          else
          {
            if (v63 != 128 || v30 != 2 || v31 != 128)
            {
              goto LABEL_102;
            }

            v311 = *(v9 + 24);
            v316 = *(v9 + 16);
            v305 = v32;
            v306 = *(v9 + 32);
            v304 = v33;
            v303 = *(v9 + 40);
            v341 = v6->i8[9];
            v342 = v6[1].i64[0];
            v323 = v6[1].i64[1];
            outlined copy of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 0);
            outlined init with copy of GlassContainer.Entry.ModelID(v6, &v355);
            outlined copy of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 0);
            outlined init with copy of GlassContainer.Entry.ModelID(v6, &v355);
            v65 = 2;
          }
        }

        else
        {
          if ((v31 & 0xC0) != 0x80 || v30 || v31 != 128)
          {
LABEL_102:
            v72 = v10;
            v10 = v9;
            v73 = *(v9 + 16);
            v74 = v30;
            v327 = v6;
            v75 = v12;
            v76 = v11;
            v77 = v27;
            v78 = v31;
            outlined copy of GlassContainer.Entry.ModelID(v10, v72, v75, v76, 0);
            outlined init with copy of GlassContainer.Entry.ModelID(v327, &v355);
            outlined copy of GlassContainer.Entry.ModelID(v10, v72, v75, v76, 0);
            outlined init with copy of GlassContainer.Entry.ModelID(v327, &v355);
            outlined copy of GlassContainer.Entry.ModelID(v10, v72, v75, v76, 0);
            v39 = v340;
            outlined copy of _Glass.Variant.ID(v340, v343);
            outlined copy of _Glass.Variant.ID(v10, v72);
            outlined copy of _Glass.Variant.ID(v73, v77);
            outlined copy of _Glass.Variant.ID(v74, v78);
            v79 = v73;
            v9 = v10;
            LOBYTE(v10) = v72;
            v80 = v77;
            v11 = v76;
            v12 = v75;
            v6 = v327;
            outlined consume of _Glass.Variant.ID(v79, v80);
            v38 = v343;
            outlined consume of _Glass.Variant.ID(v74, v78);
            goto LABEL_290;
          }

          v311 = *(v9 + 24);
          v316 = *(v9 + 16);
          v305 = v32;
          v306 = *(v9 + 32);
          v304 = v33;
          v303 = *(v9 + 40);
          v341 = v6->i8[9];
          v342 = v6[1].i64[0];
          v323 = v6[1].i64[1];
          outlined copy of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 0);
          outlined init with copy of GlassContainer.Entry.ModelID(v6, &v355);
          outlined copy of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 0);
          outlined init with copy of GlassContainer.Entry.ModelID(v6, &v355);
          v65 = 0;
        }

        outlined copy of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 0);
        outlined copy of _Glass.Variant.ID(v340, v23);
        outlined copy of _Glass.Variant.ID(v9, v10);
        outlined consume of _Glass.Variant.ID(v316, v311);
        outlined consume of _Glass.Variant.ID(v65, 0x80u);
      }

LABEL_97:
      if (v303 >> 6)
      {
        v69 = v306;
        v70 = v304;
        if (v303 >> 6 == 1)
        {
          if ((v304 & 0xC0) != 0x40)
          {
            goto LABEL_148;
          }

          v355 = v306;
          v356 = v303 & 0x3F;
          v353 = v305;
          v354 = v304 & 0x3F;
          outlined copy of _Glass.Variant.ID(v306, v303);
          outlined copy of _Glass.Variant.ID(v305, v304);
          outlined copy of _Glass.Variant.ID(v306, v303);
          outlined copy of _Glass.Variant.ID(v305, v304);
          v326 = static Material.ID.== infix(_:_:)(&v355, &v353);
          outlined consume of _Glass.Variant.ID(v306, v303);
          outlined consume of _Glass.Variant.ID(v305, v304);
          outlined consume of _Glass.Variant.ID(v305, v304);
          outlined consume of _Glass.Variant.ID(v306, v303);
          v71 = v340;
          if ((v326 & 1) == 0)
          {
            goto LABEL_379;
          }
        }

        else
        {
          if (v306 | v303 ^ 0x80)
          {
            v92 = v304 & 0xC0;
            if (v303 == 128 && v306 == 1)
            {
              if (v92 != 128 || v305 != 1 || v304 != 128)
              {
                goto LABEL_148;
              }

              v94 = 1;
            }

            else
            {
              if (v92 != 128 || v305 != 2 || v304 != 128)
              {
                goto LABEL_148;
              }

              v94 = 2;
            }
          }

          else
          {
            if ((v304 & 0xC0) != 0x80 || v305 || v304 != 128)
            {
LABEL_148:
              outlined copy of _Glass.Variant.ID(v69, v303);
              outlined copy of _Glass.Variant.ID(v305, v70);
              outlined consume of _Glass.Variant.ID(v69, v303);
              outlined consume of _Glass.Variant.ID(v305, v70);
              v71 = v340;
              goto LABEL_379;
            }

            v94 = 0;
          }

          outlined consume of _Glass.Variant.ID(v306, v303);
          outlined consume of _Glass.Variant.ID(v94, 0x80u);
          v71 = v340;
        }

        goto LABEL_146;
      }

      v70 = v304;
      v69 = v306;
      if (v304 >= 0x40)
      {
        goto LABEL_148;
      }

      v81 = *(v306 + 16);
      v82 = *(v306 + 24);
      v83 = *(v306 + 48);
      v84 = *(v305 + 16);
      v85 = *(v305 + 24);
      v86 = *(v305 + 48);
      v321 = *(v305 + 24);
      v312 = v84;
      v317 = v81;
      if (v82 >> 6)
      {
        if (v82 >> 6 == 1)
        {
          if ((v85 & 0xC0) != 0x40)
          {
            goto LABEL_261;
          }

          v309 = *(v305 + 32);
          v300 = *(v305 + 40);
          v293 = *(v306 + 40);
          v296 = *(v306 + 32);
          v355 = *(v306 + 16);
          v356 = v82 & 0x3F;
          v353 = v84;
          v354 = v85 & 0x3F;
          v87 = v82;
          outlined copy of _Glass.Variant.ID(v306, v303);
          outlined copy of _Glass.Variant.ID(v305, v304);
          outlined copy of _Glass.Variant.ID(v81, v87);
          outlined copy of _Glass.Variant.ID(v312, v321);
          outlined copy of _Glass.Variant.ID(v306, v303);
          outlined copy of _Glass.Variant.ID(v305, v304);
          outlined copy of _Glass.Variant.ID(v81, v87);
          outlined copy of _Glass.Variant.ID(v312, v321);
          v88 = v87;
          v89 = v303;
          v286 = static Material.ID.== infix(_:_:)(&v355, &v353);
          outlined consume of _Glass.Variant.ID(v81, v88);
          outlined consume of _Glass.Variant.ID(v312, v321);
          outlined consume of _Glass.Variant.ID(v312, v321);
          v90 = v305;
          outlined consume of _Glass.Variant.ID(v317, v88);
          v91 = v306;
          if ((v286 & 1) == 0)
          {
            goto LABEL_377;
          }
        }

        else
        {
          if (v81 | v82 ^ 0x80)
          {
            v132 = v85 & 0xC0;
            if (*(v306 + 24) == 128 && v81 == 1)
            {
              if (v132 != 128 || v84 != 1 || v85 != 128)
              {
                goto LABEL_261;
              }

              v309 = *(v305 + 32);
              v300 = *(v305 + 40);
              v293 = *(v306 + 40);
              v296 = *(v306 + 32);
              v332 = *(v306 + 24);
              outlined copy of _Glass.Variant.ID(v306, v303);
              outlined copy of _Glass.Variant.ID(v305, v304);
              v134 = v332;
              outlined copy of _Glass.Variant.ID(v306, v303);
              v135 = v81;
              outlined copy of _Glass.Variant.ID(v305, v304);
              v136 = 1;
            }

            else
            {
              if (v132 != 128 || v84 != 2 || v85 != 128)
              {
                goto LABEL_261;
              }

              v309 = *(v305 + 32);
              v300 = *(v305 + 40);
              v293 = *(v306 + 40);
              v296 = *(v306 + 32);
              v334 = *(v306 + 24);
              outlined copy of _Glass.Variant.ID(v306, v303);
              outlined copy of _Glass.Variant.ID(v305, v304);
              v134 = v334;
              outlined copy of _Glass.Variant.ID(v306, v303);
              v135 = v81;
              outlined copy of _Glass.Variant.ID(v305, v304);
              v136 = 2;
            }
          }

          else
          {
            if ((v85 & 0xC0) != 0x80 || v84 || v85 != 128)
            {
LABEL_261:
              v336 = *(v306 + 24);
              outlined copy of _Glass.Variant.ID(v306, v303);
              v90 = v305;
              outlined copy of _Glass.Variant.ID(v305, v304);
              outlined copy of _Glass.Variant.ID(v306, v303);
              outlined copy of _Glass.Variant.ID(v305, v304);
              outlined copy of _Glass.Variant.ID(v317, v336);
              outlined copy of _Glass.Variant.ID(v312, v321);
              outlined consume of _Glass.Variant.ID(v317, v336);
              outlined consume of _Glass.Variant.ID(v312, v321);
              v91 = v306;
              v89 = v303;
LABEL_377:
              outlined consume of _Glass.Variant.ID(v91, v89);
              outlined consume of _Glass.Variant.ID(v90, v304);
              v71 = v340;
              outlined consume of _Glass.Variant.ID(v90, v304);
LABEL_378:
              outlined consume of _Glass.Variant.ID(v91, v89);
LABEL_379:
              _s7SwiftUI14GlassContainerO5EntryV7ModelIDO_AGtWOhTm_0(v357, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
              outlined consume of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 0);
              outlined consume of _Glass.Variant.ID(v9, v10);
              v170 = v71;
              v171 = v343;
LABEL_291:
              outlined consume of _Glass.Variant.ID(v170, v171);
              outlined destroy of GlassContainer.Entry.ModelID(v6);
              outlined consume of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 0);
              v3 = v345;
              v7 = v346;
              goto LABEL_5;
            }

            v309 = *(v305 + 32);
            v300 = *(v305 + 40);
            v293 = *(v306 + 40);
            v296 = *(v306 + 32);
            v333 = *(v306 + 24);
            outlined copy of _Glass.Variant.ID(v306, v303);
            outlined copy of _Glass.Variant.ID(v305, v304);
            v134 = v333;
            outlined copy of _Glass.Variant.ID(v306, v303);
            v135 = v81;
            outlined copy of _Glass.Variant.ID(v305, v304);
            outlined copy of _Glass.Variant.ID(v81, v333);
            outlined copy of _Glass.Variant.ID(0, 0x80u);
            v136 = 0;
          }

          outlined consume of _Glass.Variant.ID(v135, v134);
          outlined consume of _Glass.Variant.ID(v136, 0x80u);
        }
      }

      else
      {
        if (v85 >= 0x40)
        {
          goto LABEL_261;
        }

        v126 = *(v81 + 16);
        v127 = *(v81 + 24);
        v128 = *(v81 + 48);
        v129 = *(v84 + 16);
        v130 = *(v84 + 24);
        v131 = *(v84 + 48);
        v331 = *(v306 + 24);
        v283 = *(v81 + 24);
        v287 = v129;
        v277 = v126;
        v280 = v130;
        if (v127 >> 6)
        {
          if (v127 >> 6 == 1)
          {
            if ((v130 & 0xC0) != 0x40)
            {
              goto LABEL_323;
            }

            v256 = *(v84 + 40);
            v259 = *(v84 + 32);
            v264 = *(v81 + 40);
            v271 = *(v81 + 32);
            v309 = *(v305 + 32);
            v300 = *(v305 + 40);
            v293 = *(v306 + 40);
            v296 = *(v306 + 32);
            v355 = *(v81 + 16);
            v356 = v127 & 0x3F;
            v353 = v129;
            v354 = v130 & 0x3F;
            outlined copy of _Glass.Variant.ID(v306, v303);
            outlined copy of _Glass.Variant.ID(v305, v304);
            outlined copy of _Glass.Variant.ID(v81, v331);
            outlined copy of _Glass.Variant.ID(v312, v321);
            outlined copy of _Glass.Variant.ID(v287, v280);
            outlined copy of _Glass.Variant.ID(v277, v283);
            outlined copy of _Glass.Variant.ID(v306, v303);
            outlined copy of _Glass.Variant.ID(v305, v304);
            outlined copy of _Glass.Variant.ID(v81, v331);
            outlined copy of _Glass.Variant.ID(v312, v321);
            outlined copy of _Glass.Variant.ID(v287, v280);
            outlined copy of _Glass.Variant.ID(v277, v283);
            v249 = static Material.ID.== infix(_:_:)(&v355, &v353);
            outlined consume of _Glass.Variant.ID(v277, v283);
            outlined consume of _Glass.Variant.ID(v287, v280);
            outlined consume of _Glass.Variant.ID(v287, v280);
            outlined consume of _Glass.Variant.ID(v277, v283);
            if ((v249 & 1) == 0)
            {
              goto LABEL_326;
            }
          }

          else
          {
            if (v126 | v127 ^ 0x80)
            {
              v193 = v130 & 0xC0;
              if (*(v81 + 24) == 128 && v126 == 1)
              {
                if (v193 != 128 || v129 != 1 || v130 != 128)
                {
                  goto LABEL_324;
                }

                v256 = *(v84 + 40);
                v259 = *(v84 + 32);
                v264 = *(v81 + 40);
                v271 = *(v81 + 32);
                v309 = *(v305 + 32);
                v300 = *(v305 + 40);
                v293 = *(v306 + 40);
                v296 = *(v306 + 32);
                v195 = 1;
              }

              else
              {
                if (v193 != 128 || v129 != 2 || v130 != 128)
                {
                  goto LABEL_324;
                }

                v256 = *(v84 + 40);
                v259 = *(v84 + 32);
                v264 = *(v81 + 40);
                v271 = *(v81 + 32);
                v309 = *(v305 + 32);
                v300 = *(v305 + 40);
                v293 = *(v306 + 40);
                v296 = *(v306 + 32);
                v195 = 2;
              }

              v289 = v195;
            }

            else
            {
              if ((v130 & 0xC0) != 0x80 || v129 || v130 != 128)
              {
                goto LABEL_324;
              }

              v256 = *(v84 + 40);
              v259 = *(v84 + 32);
              v264 = *(v81 + 40);
              v271 = *(v81 + 32);
              v309 = *(v305 + 32);
              v300 = *(v305 + 40);
              v293 = *(v306 + 40);
              v296 = *(v306 + 32);
              v289 = 0;
            }

            outlined copy of _Glass.Variant.ID(v306, v303);
            outlined copy of _Glass.Variant.ID(v305, v304);
            outlined copy of _Glass.Variant.ID(v81, v331);
            outlined copy of _Glass.Variant.ID(v312, v321);
            outlined copy of _Glass.Variant.ID(v306, v303);
            outlined copy of _Glass.Variant.ID(v305, v304);
            outlined copy of _Glass.Variant.ID(v81, v331);
            outlined copy of _Glass.Variant.ID(v312, v321);
            outlined copy of _Glass.Variant.ID(v289, 0x80u);
            outlined consume of _Glass.Variant.ID(v277, v283);
            outlined consume of _Glass.Variant.ID(v289, 0x80u);
          }
        }

        else
        {
          if (v130 >= 0x40)
          {
LABEL_323:
            outlined copy of _Glass.Variant.ID(v126, v127);
LABEL_324:
            outlined copy of _Glass.Variant.ID(v306, v303);
            outlined copy of _Glass.Variant.ID(v305, v304);
            outlined copy of _Glass.Variant.ID(v81, v331);
            outlined copy of _Glass.Variant.ID(v312, v321);
            outlined copy of _Glass.Variant.ID(v306, v303);
            outlined copy of _Glass.Variant.ID(v305, v304);
            outlined copy of _Glass.Variant.ID(v81, v331);
            outlined copy of _Glass.Variant.ID(v312, v321);
            outlined copy of _Glass.Variant.ID(v287, v280);
            outlined consume of _Glass.Variant.ID(v277, v283);
            v189 = v287;
            v190 = v280;
LABEL_325:
            outlined consume of _Glass.Variant.ID(v189, v190);
LABEL_326:
            outlined consume of _Glass.Variant.ID(v81, v331);
            outlined consume of _Glass.Variant.ID(v312, v321);
            outlined consume of _Glass.Variant.ID(v312, v321);
            v191 = v81;
            v192 = v331;
            goto LABEL_376;
          }

          v256 = *(v84 + 40);
          v259 = *(v84 + 32);
          v264 = *(v81 + 40);
          v271 = *(v81 + 32);
          v309 = *(v305 + 32);
          v300 = *(v305 + 40);
          v293 = *(v306 + 40);
          v296 = *(v306 + 32);
          v224 = *(v126 + 40);
          v186 = *(v126 + 48);
          v231 = *(v126 + 32);
          v252 = *(v129 + 16);
          v219 = *(v129 + 32);
          v214 = *(v129 + 40);
          v187 = *(v129 + 48);
          v240 = *(v126 + 24);
          v244 = *(v129 + 24);
          v355 = *(v126 + 16);
          v235 = v355;
          v356 = v240;
          v353 = v252;
          v354 = v244;
          outlined copy of _Glass.Variant.ID(v306, v303);
          outlined copy of _Glass.Variant.ID(v305, v304);
          outlined copy of _Glass.Variant.ID(v81, v331);
          outlined copy of _Glass.Variant.ID(v312, v321);
          outlined copy of _Glass.Variant.ID(v287, v280);
          outlined copy of _Glass.Variant.ID(v277, v283);
          outlined copy of _Glass.Variant.ID(v306, v303);
          outlined copy of _Glass.Variant.ID(v305, v304);
          outlined copy of _Glass.Variant.ID(v81, v331);
          outlined copy of _Glass.Variant.ID(v312, v321);
          outlined copy of _Glass.Variant.ID(v287, v280);
          outlined copy of _Glass.Variant.ID(v277, v283);
          outlined copy of _Glass.Variant.ID(v235, v240);
          outlined copy of _Glass.Variant.ID(v252, v244);
          v188 = static _Glass.Variant.ID.== infix(_:_:)(&v355, &v353);
          outlined consume of _Glass.Variant.ID(v353, v354);
          outlined consume of _Glass.Variant.ID(v355, v356);
          if ((v188 & 1) == 0)
          {
            outlined consume of _Glass.Variant.ID(v277, v283);
            outlined consume of _Glass.Variant.ID(v287, v280);
            outlined consume of _Glass.Variant.ID(v287, v280);
            v189 = v277;
            v190 = v283;
            goto LABEL_325;
          }

          v355 = v231;
          v356 = v224;
          v353 = v219;
          v354 = v214;
          outlined copy of _Glass.Variant.ID(v231, v224);
          outlined copy of _Glass.Variant.ID(v219, v214);
          v253 = static _Glass.Variant.ID.== infix(_:_:)(&v355, &v353);
          outlined consume of _Glass.Variant.ID(v353, v354);
          outlined consume of _Glass.Variant.ID(v355, v356);
          outlined consume of _Glass.Variant.ID(v277, v283);
          outlined consume of _Glass.Variant.ID(v287, v280);
          outlined consume of _Glass.Variant.ID(v287, v280);
          outlined consume of _Glass.Variant.ID(v277, v283);
          if ((v253 & 1) == 0 || v186 != v187)
          {
            goto LABEL_326;
          }
        }

        v355 = v271;
        v356 = v264;
        v353 = v259;
        v354 = v256;
        outlined copy of _Glass.Variant.ID(v271, v264);
        outlined copy of _Glass.Variant.ID(v259, v256);
        v290 = static _Glass.Variant.ID.== infix(_:_:)(&v355, &v353);
        outlined consume of _Glass.Variant.ID(v353, v354);
        outlined consume of _Glass.Variant.ID(v355, v356);
        outlined consume of _Glass.Variant.ID(v81, v331);
        outlined consume of _Glass.Variant.ID(v312, v321);
        outlined consume of _Glass.Variant.ID(v312, v321);
        outlined consume of _Glass.Variant.ID(v81, v331);
        v89 = v303;
        v90 = v305;
        v91 = v306;
        if ((v290 & 1) == 0 || v128 != v131)
        {
          goto LABEL_377;
        }
      }

      v158 = v293;
      if (v293 >> 6)
      {
        v159 = v296;
        v160 = v300;
        if (v293 >> 6 == 1)
        {
          if ((v300 & 0xC0) != 0x40)
          {
            goto LABEL_375;
          }

          v355 = v296;
          v356 = v293 & 0x3F;
          v353 = v309;
          v354 = v300 & 0x3F;
          outlined copy of _Glass.Variant.ID(v296, v293);
          outlined copy of _Glass.Variant.ID(v309, v300);
          outlined copy of _Glass.Variant.ID(v296, v293);
          outlined copy of _Glass.Variant.ID(v309, v300);
          v335 = static Material.ID.== infix(_:_:)(&v355, &v353);
          outlined consume of _Glass.Variant.ID(v296, v293);
          outlined consume of _Glass.Variant.ID(v309, v300);
          outlined consume of _Glass.Variant.ID(v309, v300);
          outlined consume of _Glass.Variant.ID(v296, v293);
          outlined consume of _Glass.Variant.ID(v306, v303);
          outlined consume of _Glass.Variant.ID(v305, v304);
          outlined consume of _Glass.Variant.ID(v305, v304);
          outlined consume of _Glass.Variant.ID(v306, v303);
          v71 = v340;
          if ((v335 & 1) == 0)
          {
            goto LABEL_379;
          }

          goto LABEL_373;
        }

        if (v296 | v293 ^ 0x80)
        {
          v183 = v300 & 0xC0;
          if (v293 == 128 && v296 == 1)
          {
            if (v183 != 128 || v309 != 1 || v300 != 128)
            {
              goto LABEL_375;
            }

            v185 = 1;
          }

          else
          {
            if (v183 != 128 || v309 != 2 || v300 != 128)
            {
              goto LABEL_375;
            }

            v185 = 2;
          }
        }

        else
        {
          if ((v300 & 0xC0) != 0x80 || v309 || v300 != 128)
          {
LABEL_375:
            v196 = v159;
            outlined copy of _Glass.Variant.ID(v159, v293);
            outlined copy of _Glass.Variant.ID(v309, v160);
            outlined consume of _Glass.Variant.ID(v196, v293);
            v191 = v309;
            v192 = v160;
LABEL_376:
            outlined consume of _Glass.Variant.ID(v191, v192);
            v89 = v303;
            v90 = v305;
            v91 = v306;
            goto LABEL_377;
          }

          outlined copy of _Glass.Variant.ID(v296, v293);
          outlined copy of _Glass.Variant.ID(0, 0x80u);
          v159 = v296;
          v185 = 0;
        }

        outlined consume of _Glass.Variant.ID(v159, v293);
        outlined consume of _Glass.Variant.ID(v185, 0x80u);
        v91 = v306;
        v89 = v303;
        outlined consume of _Glass.Variant.ID(v306, v303);
        outlined consume of _Glass.Variant.ID(v305, v304);
        outlined consume of _Glass.Variant.ID(v305, v304);
        v71 = v340;
      }

      else
      {
        v160 = v300;
        v159 = v296;
        if (v300 >= 0x40)
        {
          goto LABEL_375;
        }

        v175 = *(v296 + 16);
        v176 = *(v296 + 24);
        v284 = *(v296 + 32);
        v281 = *(v296 + 40);
        v177 = *(v296 + 48);
        v178 = *(v309 + 16);
        v179 = *(v309 + 24);
        v278 = *(v309 + 32);
        v275 = *(v309 + 40);
        v180 = *(v309 + 48);
        v322 = v179;
        v318 = v178;
        if (v176 >> 6)
        {
          if (v176 >> 6 == 1)
          {
            if ((v179 & 0xC0) != 0x40)
            {
              goto LABEL_400;
            }

            v355 = *(v296 + 16);
            v313 = v175;
            v356 = v176 & 0x3F;
            v353 = v178;
            v354 = v179 & 0x3F;
            v181 = v176;
            v288 = v176;
            outlined copy of _Glass.Variant.ID(v296, v293);
            outlined copy of _Glass.Variant.ID(v309, v300);
            outlined copy of _Glass.Variant.ID(v178, v322);
            outlined copy of _Glass.Variant.ID(v313, v181);
            outlined copy of _Glass.Variant.ID(v296, v293);
            outlined copy of _Glass.Variant.ID(v309, v300);
            outlined copy of _Glass.Variant.ID(v178, v322);
            outlined copy of _Glass.Variant.ID(v313, v288);
            v337 = static Material.ID.== infix(_:_:)(&v355, &v353);
            outlined consume of _Glass.Variant.ID(v313, v288);
            outlined consume of _Glass.Variant.ID(v178, v322);
            v182 = v309;
            outlined consume of _Glass.Variant.ID(v178, v322);
            outlined consume of _Glass.Variant.ID(v313, v288);
            if ((v337 & 1) == 0)
            {
              goto LABEL_402;
            }
          }

          else
          {
            v203 = v296;
            v291 = *(v296 + 24);
            v314 = *(v296 + 16);
            if (v175 | v176 ^ 0x80)
            {
              v204 = v179 & 0xC0;
              if (*(v296 + 24) == 128 && v175 == 1)
              {
                if (v204 != 128 || v318 != 1 || v179 != 128)
                {
                  goto LABEL_401;
                }

                v267 = v10;
                v10 = 1;
              }

              else
              {
                if (v204 != 128 || v318 != 2 || v179 != 128)
                {
                  goto LABEL_401;
                }

                v267 = v10;
                v10 = 2;
              }
            }

            else
            {
              if ((v179 & 0xC0) != 0x80 || v318 || v179 != 128)
              {
                goto LABEL_401;
              }

              v267 = v10;
              v10 = 0;
            }

            outlined copy of _Glass.Variant.ID(v296, v293);
            outlined copy of _Glass.Variant.ID(v309, v300);
            outlined copy of _Glass.Variant.ID(v296, v293);
            v182 = v309;
            outlined copy of _Glass.Variant.ID(v309, v300);
            outlined copy of _Glass.Variant.ID(v10, 0x80u);
            outlined consume of _Glass.Variant.ID(v314, v291);
            outlined consume of _Glass.Variant.ID(v10, 0x80u);
            LOWORD(v10) = v267;
          }
        }

        else
        {
          if (v179 >= 0x40)
          {
LABEL_400:
            v203 = v296;
            v314 = *(v296 + 16);
            v291 = *(v296 + 24);
            outlined copy of _Glass.Variant.ID(v175, v176);
LABEL_401:
            outlined copy of _Glass.Variant.ID(v203, v293);
            outlined copy of _Glass.Variant.ID(v309, v300);
            outlined copy of _Glass.Variant.ID(v203, v293);
            outlined copy of _Glass.Variant.ID(v309, v300);
            outlined copy of _Glass.Variant.ID(v318, v322);
            outlined consume of _Glass.Variant.ID(v314, v291);
            v182 = v309;
            outlined consume of _Glass.Variant.ID(v318, v322);
            goto LABEL_402;
          }

          v261 = v9;
          v266 = v10;
          v232 = *(v175 + 32);
          v225 = *(v175 + 40);
          v197 = *(v175 + 48);
          v241 = *(v178 + 16);
          v220 = *(v178 + 32);
          v215 = *(v178 + 40);
          v199 = *(v178 + 48);
          v236 = *(v175 + 24);
          v245 = *(v178 + 24);
          v355 = *(v175 + 16);
          v198 = v355;
          v356 = v236;
          v353 = v241;
          v354 = v245;
          v200 = v176;
          v201 = v175;
          outlined copy of _Glass.Variant.ID(v296, v293);
          outlined copy of _Glass.Variant.ID(v309, v300);
          outlined copy of _Glass.Variant.ID(v178, v322);
          outlined copy of _Glass.Variant.ID(v201, v200);
          outlined copy of _Glass.Variant.ID(v296, v293);
          outlined copy of _Glass.Variant.ID(v309, v300);
          outlined copy of _Glass.Variant.ID(v178, v322);
          outlined copy of _Glass.Variant.ID(v201, v200);
          outlined copy of _Glass.Variant.ID(v198, v236);
          outlined copy of _Glass.Variant.ID(v241, v245);
          v202 = static _Glass.Variant.ID.== infix(_:_:)(&v355, &v353);
          outlined consume of _Glass.Variant.ID(v353, v354);
          outlined consume of _Glass.Variant.ID(v355, v356);
          if ((v202 & 1) == 0)
          {
            outlined consume of _Glass.Variant.ID(v201, v200);
            outlined consume of _Glass.Variant.ID(v318, v322);
            outlined consume of _Glass.Variant.ID(v318, v322);
            outlined consume of _Glass.Variant.ID(v201, v200);
            v158 = v293;
            v182 = v309;
            v9 = v261;
            LOBYTE(v10) = v266;
LABEL_402:
            outlined consume of _Glass.Variant.ID(v296, v158);
            outlined consume of _Glass.Variant.ID(v182, v300);
            outlined consume of _Glass.Variant.ID(v182, v300);
            v191 = v296;
            v192 = v158;
            goto LABEL_376;
          }

          v355 = v232;
          v356 = v225;
          v353 = v220;
          v354 = v215;
          outlined copy of _Glass.Variant.ID(v232, v225);
          outlined copy of _Glass.Variant.ID(v220, v215);
          v246 = static _Glass.Variant.ID.== infix(_:_:)(&v355, &v353);
          outlined consume of _Glass.Variant.ID(v353, v354);
          outlined consume of _Glass.Variant.ID(v355, v356);
          outlined consume of _Glass.Variant.ID(v201, v200);
          outlined consume of _Glass.Variant.ID(v318, v322);
          outlined consume of _Glass.Variant.ID(v318, v322);
          outlined consume of _Glass.Variant.ID(v201, v200);
          v158 = v293;
          v182 = v309;
          v9 = v261;
          LOWORD(v10) = v266;
          if ((v246 & 1) == 0 || v197 != v199)
          {
            goto LABEL_402;
          }
        }

        v355 = v284;
        v356 = v281;
        v353 = v278;
        v354 = v275;
        outlined copy of _Glass.Variant.ID(v284, v281);
        outlined copy of _Glass.Variant.ID(v278, v275);
        v339 = static _Glass.Variant.ID.== infix(_:_:)(&v355, &v353);
        outlined consume of _Glass.Variant.ID(v353, v354);
        outlined consume of _Glass.Variant.ID(v355, v356);
        outlined consume of _Glass.Variant.ID(v296, v158);
        outlined consume of _Glass.Variant.ID(v182, v300);
        outlined consume of _Glass.Variant.ID(v182, v300);
        outlined consume of _Glass.Variant.ID(v296, v158);
        v91 = v306;
        v89 = v303;
        outlined consume of _Glass.Variant.ID(v306, v303);
        outlined consume of _Glass.Variant.ID(v305, v304);
        outlined consume of _Glass.Variant.ID(v305, v304);
        v71 = v340;
        if ((v339 & 1) == 0 || v177 != v180)
        {
          goto LABEL_378;
        }
      }

      outlined consume of _Glass.Variant.ID(v91, v89);
LABEL_373:
      if (v83 != v86)
      {
        goto LABEL_379;
      }

LABEL_146:
      if (v29 != v34)
      {
        goto LABEL_379;
      }

      outlined consume of _Glass.Variant.ID(v9, v10);
      outlined consume of _Glass.Variant.ID(v71, v343);
      v3 = v345;
LABEL_60:
      v7 = v346;
      if (((v10 & 0x100) == 0) == (v341 & 1))
      {
        _s7SwiftUI14GlassContainerO5EntryV7ModelIDO_AGtWOhTm_0(v357, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
        outlined consume of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 0);
        outlined destroy of GlassContainer.Entry.ModelID(v6);
        outlined consume of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 0);
      }

      else
      {
        v362[0] = v342;
        if (v12 == v342)
        {

          outlined init with copy of AnyHashable2(v362, &v355);
          _s7SwiftUI14GlassContainerO5EntryV7ModelIDO_AGtWOhTm_0(v357, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
          outlined consume of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 0);
          outlined destroy of AnyHashable2(v362);

          outlined destroy of GlassContainer.Entry.ModelID(v6);
          outlined consume of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 0);
        }

        else
        {
          v66 = *(*v12 + 112);

          outlined init with copy of AnyHashable2(v362, &v355);
          v67 = v66(v342);
          v3 = v345;
          v7 = v346;
          v68 = v67;
          _s7SwiftUI14GlassContainerO5EntryV7ModelIDO_AGtWOhTm_0(v357, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
          outlined consume of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 0);
          outlined destroy of AnyHashable2(v362);

          outlined destroy of GlassContainer.Entry.ModelID(v6);
          outlined consume of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 0);
          if ((v68 & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        if (v11 == v323)
        {
          return v5;
        }
      }

      goto LABEL_5;
    }

    if (v31 >= 0x40)
    {
      goto LABEL_102;
    }

    v51 = *(v26 + 16);
    v52 = *(v26 + 24);
    v279 = *(v26 + 32);
    v276 = *(v26 + 40);
    v53 = *(v26 + 48);
    v54 = *(v30 + 16);
    v55 = *(v30 + 24);
    v285 = *(v30 + 32);
    v56 = *(v30 + 48);
    v308 = v31;
    v315 = *(v9 + 16);
    v320 = v30;
    v310 = *(v9 + 24);
    v295 = *(v26 + 24);
    v299 = v51;
    v292 = *(v30 + 24);
    v325 = v54;
    if (v52 >> 6)
    {
      if (v52 >> 6 == 1)
      {
        v57 = *(v9 + 16);
        if ((v55 & 0xC0) != 0x40)
        {
          outlined copy of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 0);
          outlined init with copy of GlassContainer.Entry.ModelID(v6, &v355);
          outlined copy of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 0);
          v59 = v310;
          outlined copy of _Glass.Variant.ID(v57, v310);
          outlined copy of _Glass.Variant.ID(v30, v308);
          outlined init with copy of GlassContainer.Entry.ModelID(v6, &v355);
          outlined copy of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 0);
          outlined copy of _Glass.Variant.ID(v340, v343);
          outlined copy of _Glass.Variant.ID(v9, v10);
          outlined copy of _Glass.Variant.ID(v57, v310);
          outlined copy of _Glass.Variant.ID(v30, v308);
          outlined copy of _Glass.Variant.ID(v299, v295);
          outlined copy of _Glass.Variant.ID(v325, v292);
          outlined consume of _Glass.Variant.ID(v299, v295);
          v60 = v315;
          outlined consume of _Glass.Variant.ID(v325, v292);
          goto LABEL_288;
        }

        v282 = *(v30 + 40);
        v305 = v32;
        v306 = *(v9 + 32);
        v304 = v33;
        v303 = *(v9 + 40);
        v341 = v6->i8[9];
        v342 = v6[1].i64[0];
        v323 = v6[1].i64[1];
        v353 = *(v26 + 16);
        v354 = v52 & 0x3F;
        v351 = v54;
        v352 = v55 & 0x3F;
        v58 = v51;
        outlined copy of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 0);
        outlined init with copy of GlassContainer.Entry.ModelID(v6, &v355);
        outlined copy of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 0);
        v59 = v310;
        outlined copy of _Glass.Variant.ID(v57, v310);
        outlined copy of _Glass.Variant.ID(v320, v308);
        outlined copy of _Glass.Variant.ID(v58, v295);
        outlined copy of _Glass.Variant.ID(v325, v292);
        outlined init with copy of GlassContainer.Entry.ModelID(v6, &v355);
        outlined copy of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 0);
        outlined copy of _Glass.Variant.ID(v340, v343);
        outlined copy of _Glass.Variant.ID(v9, v10);
        outlined copy of _Glass.Variant.ID(v315, v310);
        outlined copy of _Glass.Variant.ID(v320, v308);
        outlined copy of _Glass.Variant.ID(v299, v295);
        outlined copy of _Glass.Variant.ID(v325, v292);
        v268 = static Material.ID.== infix(_:_:)(&v353, &v351);
        outlined consume of _Glass.Variant.ID(v299, v295);
        outlined consume of _Glass.Variant.ID(v325, v292);
        v60 = v315;
        outlined consume of _Glass.Variant.ID(v325, v292);
        v62 = v295;
        v61 = v299;
        goto LABEL_160;
      }

      v323 = v6[1].i64[1];
      v342 = v6[1].i64[0];
      v341 = v6->i8[9];
      v303 = *(v9 + 40);
      v305 = v32;
      v306 = *(v9 + 32);
      v304 = v33;
      v282 = *(v30 + 40);
      if (v51 | v52 ^ 0x80)
      {
        v105 = v55 & 0xC0;
        if (*(v26 + 24) == 128 && v51 == 1)
        {
          if (v105 == 128)
          {
            v107 = 0;
            if (v54 == 1 && v55 == 128)
            {
              outlined copy of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v6, &v355);
              outlined copy of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 0);
              v109 = v310;
              v108 = v315;
              outlined copy of _Glass.Variant.ID(v315, v310);
              v110 = v308;
              outlined copy of _Glass.Variant.ID(v30, v308);
              outlined init with copy of GlassContainer.Entry.ModelID(v6, &v355);
              v111 = 1;
LABEL_157:
              v328 = v111;
              outlined copy of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 0);
              outlined copy of _Glass.Variant.ID(v340, v343);
              outlined copy of _Glass.Variant.ID(v9, v10);
              outlined copy of _Glass.Variant.ID(v108, v109);
              outlined copy of _Glass.Variant.ID(v30, v110);
              outlined consume of _Glass.Variant.ID(v299, v295);
              outlined consume of _Glass.Variant.ID(v328, 0x80u);
              goto LABEL_161;
            }

LABEL_159:
            v268 = v107;
            outlined copy of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 0);
            outlined init with copy of GlassContainer.Entry.ModelID(v6, &v355);
            outlined copy of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 0);
            outlined copy of _Glass.Variant.ID(v315, v310);
            outlined copy of _Glass.Variant.ID(v30, v308);
            outlined init with copy of GlassContainer.Entry.ModelID(v6, &v355);
            outlined copy of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 0);
            outlined copy of _Glass.Variant.ID(v340, v23);
            outlined copy of _Glass.Variant.ID(v9, v10);
            outlined copy of _Glass.Variant.ID(v315, v310);
            outlined copy of _Glass.Variant.ID(v30, v308);
            outlined copy of _Glass.Variant.ID(v299, v295);
            outlined copy of _Glass.Variant.ID(v325, v292);
            v60 = v315;
            outlined consume of _Glass.Variant.ID(v299, v295);
            v61 = v325;
            v62 = v292;
            v59 = v310;
LABEL_160:
            outlined consume of _Glass.Variant.ID(v61, v62);
            if ((v268 & 1) == 0)
            {
              goto LABEL_288;
            }

            goto LABEL_161;
          }
        }

        else if (v105 == 128)
        {
          v107 = 0;
          if (v54 == 2 && v55 == 128)
          {
            outlined copy of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 0);
            outlined init with copy of GlassContainer.Entry.ModelID(v6, &v355);
            outlined copy of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 0);
            v109 = v310;
            v108 = v315;
            outlined copy of _Glass.Variant.ID(v315, v310);
            v110 = v308;
            outlined copy of _Glass.Variant.ID(v30, v308);
            outlined init with copy of GlassContainer.Entry.ModelID(v6, &v355);
            v111 = 2;
            goto LABEL_157;
          }

          goto LABEL_159;
        }
      }

      else if ((v55 & 0xC0) == 0x80 && !v54 && v55 == 128)
      {
        v107 = 1;
        goto LABEL_159;
      }

LABEL_158:
      v107 = 0;
      goto LABEL_159;
    }

    v305 = v32;
    v306 = *(v9 + 32);
    v304 = v33;
    v341 = v6->i8[9];
    v342 = v6[1].i64[0];
    v323 = v6[1].i64[1];
    v282 = *(v30 + 40);
    if (v55 >= 0x40)
    {
      v303 = *(v9 + 40);
      goto LABEL_158;
    }

    v95 = *(v51 + 24);
    v242 = *(v51 + 32);
    v247 = *(v51 + 40);
    v96 = *(v51 + 48);
    v262 = *(v54 + 16);
    v269 = *(v51 + 16);
    v97 = *(v54 + 24);
    v254 = *(v54 + 32);
    v98 = *(v54 + 40);
    v99 = *(v54 + 48);
    outlined copy of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 0);
    v100 = v95;
    v257 = v95;
    if (v95 >> 6)
    {
      if (v95 >> 6 == 1)
      {
        v101 = v97;
        v102 = v269;
        if ((v97 & 0xC0) != 0x40)
        {
          goto LABEL_204;
        }

        v233 = v98;
        v303 = v28;
        v353 = v269;
        v354 = v100 & 0x3F;
        v351 = v262;
        v352 = v97 & 0x3F;
        outlined init with copy of GlassContainer.Entry.ModelID(v6, &v355);
        outlined copy of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 0);
        outlined copy of _Glass.Variant.ID(v315, v310);
        outlined copy of _Glass.Variant.ID(v320, v308);
        outlined copy of _Glass.Variant.ID(v299, v295);
        outlined copy of _Glass.Variant.ID(v325, v292);
        outlined copy of _Glass.Variant.ID(v262, v97);
        outlined copy of _Glass.Variant.ID(v269, v257);
        outlined init with copy of GlassContainer.Entry.ModelID(v6, &v355);
        outlined copy of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 0);
        outlined copy of _Glass.Variant.ID(v340, v343);
        outlined copy of _Glass.Variant.ID(v9, v10);
        outlined copy of _Glass.Variant.ID(v315, v310);
        outlined copy of _Glass.Variant.ID(v320, v308);
        outlined copy of _Glass.Variant.ID(v299, v295);
        outlined copy of _Glass.Variant.ID(v325, v292);
        outlined copy of _Glass.Variant.ID(v262, v97);
        outlined copy of _Glass.Variant.ID(v269, v257);
        v226 = static Material.ID.== infix(_:_:)(&v353, &v351);
        outlined consume of _Glass.Variant.ID(v269, v257);
        outlined consume of _Glass.Variant.ID(v262, v97);
        v103 = v295;
        outlined consume of _Glass.Variant.ID(v262, v97);
        v104 = v292;
        outlined consume of _Glass.Variant.ID(v269, v257);
        if ((v226 & 1) == 0)
        {
          goto LABEL_285;
        }
      }

      else
      {
        v141 = v269 | v95 ^ 0x80;
        v101 = v97;
        if (v141)
        {
          v142 = v97 & 0xC0;
          if (v100 == 128 && v269 == 1)
          {
            if (v142 != 128 || v262 != 1 || v97 != 128)
            {
              goto LABEL_205;
            }

            v233 = v98;
            v303 = v28;
            outlined init with copy of GlassContainer.Entry.ModelID(v6, &v355);
            outlined copy of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 0);
            outlined copy of _Glass.Variant.ID(v315, v310);
            outlined copy of _Glass.Variant.ID(v320, v308);
            v144 = v295;
            outlined copy of _Glass.Variant.ID(v299, v295);
            v145 = v325;
            v146 = v292;
            outlined copy of _Glass.Variant.ID(v325, v292);
            outlined init with copy of GlassContainer.Entry.ModelID(v6, &v355);
            v147 = 1;
          }

          else
          {
            if (v142 != 128 || v262 != 2 || v97 != 128)
            {
              goto LABEL_205;
            }

            v233 = v98;
            v303 = v28;
            outlined init with copy of GlassContainer.Entry.ModelID(v6, &v355);
            outlined copy of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 0);
            outlined copy of _Glass.Variant.ID(v315, v310);
            outlined copy of _Glass.Variant.ID(v320, v308);
            v144 = v295;
            outlined copy of _Glass.Variant.ID(v299, v295);
            v145 = v325;
            v146 = v292;
            outlined copy of _Glass.Variant.ID(v325, v292);
            outlined init with copy of GlassContainer.Entry.ModelID(v6, &v355);
            v147 = 2;
          }
        }

        else
        {
          if ((v97 & 0xC0) != 0x80 || v262 || v97 != 128)
          {
            goto LABEL_205;
          }

          v233 = v98;
          v303 = v28;
          outlined init with copy of GlassContainer.Entry.ModelID(v6, &v355);
          outlined copy of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 0);
          outlined copy of _Glass.Variant.ID(v315, v310);
          outlined copy of _Glass.Variant.ID(v320, v308);
          v144 = v295;
          outlined copy of _Glass.Variant.ID(v299, v295);
          v145 = v325;
          v146 = v292;
          outlined copy of _Glass.Variant.ID(v325, v292);
          outlined init with copy of GlassContainer.Entry.ModelID(v6, &v355);
          v147 = 0;
        }

        outlined copy of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 0);
        outlined copy of _Glass.Variant.ID(v340, v343);
        outlined copy of _Glass.Variant.ID(v9, v10);
        outlined copy of _Glass.Variant.ID(v315, v310);
        outlined copy of _Glass.Variant.ID(v320, v308);
        outlined copy of _Glass.Variant.ID(v299, v144);
        outlined copy of _Glass.Variant.ID(v145, v146);
        outlined copy of _Glass.Variant.ID(v147, 0x80u);
        outlined consume of _Glass.Variant.ID(v269, v257);
        outlined consume of _Glass.Variant.ID(v147, 0x80u);
      }
    }

    else
    {
      v101 = v97;
      v102 = v269;
      if (v97 >= 0x40)
      {
LABEL_204:
        outlined copy of _Glass.Variant.ID(v102, v100);
LABEL_205:
        v237 = v101;
        outlined init with copy of GlassContainer.Entry.ModelID(v6, &v355);
        outlined copy of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 0);
        outlined copy of _Glass.Variant.ID(v315, v310);
        outlined copy of _Glass.Variant.ID(v320, v308);
        v103 = v295;
        outlined copy of _Glass.Variant.ID(v299, v295);
        outlined copy of _Glass.Variant.ID(v325, v292);
        outlined init with copy of GlassContainer.Entry.ModelID(v6, &v355);
        outlined copy of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 0);
        outlined copy of _Glass.Variant.ID(v340, v343);
        outlined copy of _Glass.Variant.ID(v9, v10);
        outlined copy of _Glass.Variant.ID(v315, v310);
        outlined copy of _Glass.Variant.ID(v320, v308);
        outlined copy of _Glass.Variant.ID(v299, v295);
        outlined copy of _Glass.Variant.ID(v325, v292);
        outlined copy of _Glass.Variant.ID(v262, v237);
        outlined consume of _Glass.Variant.ID(v269, v257);
        v104 = v292;
        outlined consume of _Glass.Variant.ID(v262, v237);
        goto LABEL_285;
      }

      v233 = v98;
      v303 = v28;
      v210 = *(v269 + 32);
      v209 = *(v269 + 40);
      v137 = *(v269 + 48);
      v227 = *(v262 + 16);
      v208 = *(v262 + 32);
      v207 = *(v262 + 40);
      v138 = *(v262 + 48);
      v211 = *(v269 + 24);
      v221 = *(v262 + 24);
      v353 = *(v269 + 16);
      v216 = v353;
      v354 = v211;
      v351 = v227;
      v352 = v221;
      v139 = v100;
      outlined init with copy of GlassContainer.Entry.ModelID(v6, &v355);
      outlined copy of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 0);
      outlined copy of _Glass.Variant.ID(v315, v310);
      outlined copy of _Glass.Variant.ID(v320, v308);
      outlined copy of _Glass.Variant.ID(v299, v295);
      outlined copy of _Glass.Variant.ID(v325, v292);
      outlined copy of _Glass.Variant.ID(v262, v97);
      outlined copy of _Glass.Variant.ID(v269, v139);
      outlined init with copy of GlassContainer.Entry.ModelID(v6, &v355);
      outlined copy of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 0);
      outlined copy of _Glass.Variant.ID(v340, v343);
      outlined copy of _Glass.Variant.ID(v9, v10);
      outlined copy of _Glass.Variant.ID(v315, v310);
      outlined copy of _Glass.Variant.ID(v320, v308);
      outlined copy of _Glass.Variant.ID(v299, v295);
      outlined copy of _Glass.Variant.ID(v325, v292);
      outlined copy of _Glass.Variant.ID(v262, v97);
      outlined copy of _Glass.Variant.ID(v269, v257);
      outlined copy of _Glass.Variant.ID(v216, v211);
      outlined copy of _Glass.Variant.ID(v227, v221);
      v140 = static _Glass.Variant.ID.== infix(_:_:)(&v353, &v351);
      outlined consume of _Glass.Variant.ID(v351, v352);
      outlined consume of _Glass.Variant.ID(v353, v354);
      if ((v140 & 1) == 0)
      {
        outlined consume of _Glass.Variant.ID(v269, v257);
        outlined consume of _Glass.Variant.ID(v262, v97);
        outlined consume of _Glass.Variant.ID(v262, v97);
        v165 = v269;
        v166 = v257;
        goto LABEL_284;
      }

      v355 = v210;
      v356 = v209;
      v353 = v208;
      v354 = v207;
      outlined copy of _Glass.Variant.ID(v210, v209);
      outlined copy of _Glass.Variant.ID(v208, v207);
      v228 = static _Glass.Variant.ID.== infix(_:_:)(&v355, &v353);
      outlined consume of _Glass.Variant.ID(v353, v354);
      outlined consume of _Glass.Variant.ID(v355, v356);
      outlined consume of _Glass.Variant.ID(v269, v257);
      outlined consume of _Glass.Variant.ID(v262, v97);
      outlined consume of _Glass.Variant.ID(v262, v97);
      outlined consume of _Glass.Variant.ID(v269, v257);
      v103 = v295;
      v104 = v292;
      if ((v228 & 1) == 0 || v137 != v138)
      {
        goto LABEL_285;
      }
    }

    if (v247 >> 6)
    {
      v161 = v242;
      v162 = v233;
      v163 = v254;
      if (v247 >> 6 == 1)
      {
        if ((v233 & 0xC0) != 0x40)
        {
          goto LABEL_282;
        }

        v355 = v242;
        v356 = v247 & 0x3F;
        v353 = v254;
        v354 = v233 & 0x3F;
        outlined copy of _Glass.Variant.ID(v254, v233);
        outlined copy of _Glass.Variant.ID(v242, v247);
        outlined copy of _Glass.Variant.ID(v254, v233);
        outlined copy of _Glass.Variant.ID(v242, v247);
        v272 = static Material.ID.== infix(_:_:)(&v355, &v353);
        outlined consume of _Glass.Variant.ID(v242, v247);
        outlined consume of _Glass.Variant.ID(v254, v233);
        outlined consume of _Glass.Variant.ID(v254, v233);
        outlined consume of _Glass.Variant.ID(v242, v247);
        v103 = v295;
        outlined consume of _Glass.Variant.ID(v299, v295);
        v104 = v292;
        outlined consume of _Glass.Variant.ID(v325, v292);
        v164 = v325;
        if ((v272 & 1) == 0)
        {
          goto LABEL_286;
        }

        goto LABEL_361;
      }

      if (v242 | v247 ^ 0x80)
      {
        v172 = v233 & 0xC0;
        if (v247 == 128 && v242 == 1)
        {
          if (v172 != 128 || v254 != 1 || v233 != 128)
          {
            goto LABEL_283;
          }

          v174 = 1;
        }

        else
        {
          if (v172 != 128 || v254 != 2 || v233 != 128)
          {
            goto LABEL_283;
          }

          v174 = 2;
        }
      }

      else
      {
        if ((v233 & 0xC0) != 0x80 || v254 || v233 != 128)
        {
          goto LABEL_283;
        }

        v174 = 0;
      }

      outlined copy of _Glass.Variant.ID(v174, 0x80u);
      outlined consume of _Glass.Variant.ID(v242, v247);
      outlined consume of _Glass.Variant.ID(v174, 0x80u);
      outlined consume of _Glass.Variant.ID(v242, v247);
      v103 = v295;
      v104 = v292;
    }

    else
    {
      v162 = v233;
      v161 = v242;
      v163 = v254;
      if (v233 >= 0x40)
      {
LABEL_282:
        outlined copy of _Glass.Variant.ID(v161, v247);
LABEL_283:
        outlined copy of _Glass.Variant.ID(v163, v162);
        outlined consume of _Glass.Variant.ID(v161, v247);
        v165 = v163;
        v166 = v162;
LABEL_284:
        outlined consume of _Glass.Variant.ID(v165, v166);
        v103 = v295;
        v104 = v292;
LABEL_285:
        outlined consume of _Glass.Variant.ID(v299, v103);
        outlined consume of _Glass.Variant.ID(v325, v104);
        v164 = v325;
LABEL_286:
        outlined consume of _Glass.Variant.ID(v164, v104);
        v148 = v299;
        v149 = v103;
LABEL_287:
        outlined consume of _Glass.Variant.ID(v148, v149);
        v59 = v310;
        v60 = v315;
LABEL_288:
        outlined consume of _Glass.Variant.ID(v60, v59);
        outlined consume of _Glass.Variant.ID(v320, v308);
        outlined consume of _Glass.Variant.ID(v320, v308);
LABEL_289:
        outlined consume of _Glass.Variant.ID(v60, v59);
        v39 = v340;
        v38 = v343;
LABEL_290:
        _s7SwiftUI14GlassContainerO5EntryV7ModelIDO_AGtWOhTm_0(v357, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
        outlined consume of GlassContainer.Entry.ModelID(v9, v10, v12, v11, 0);
        outlined consume of _Glass.Variant.ID(v9, v10);
        v170 = v39;
        v171 = v38;
        goto LABEL_291;
      }

      v223 = *(v242 + 32);
      v218 = *(v242 + 40);
      v167 = *(v242 + 48);
      v265 = *(v254 + 16);
      v213 = *(v254 + 32);
      v273 = *(v254 + 40);
      v168 = *(v254 + 48);
      v230 = *(v242 + 24);
      v260 = *(v254 + 24);
      v355 = *(v242 + 16);
      v239 = v355;
      v356 = v230;
      v353 = v265;
      v354 = v260;
      outlined copy of _Glass.Variant.ID(v254, v233);
      outlined copy of _Glass.Variant.ID(v242, v247);
      outlined copy of _Glass.Variant.ID(v254, v233);
      outlined copy of _Glass.Variant.ID(v242, v247);
      outlined copy of _Glass.Variant.ID(v239, v230);
      outlined copy of _Glass.Variant.ID(v265, v260);
      v169 = static _Glass.Variant.ID.== infix(_:_:)(&v355, &v353);
      outlined consume of _Glass.Variant.ID(v353, v354);
      outlined consume of _Glass.Variant.ID(v355, v356);
      if ((v169 & 1) == 0)
      {
        outlined consume of _Glass.Variant.ID(v242, v247);
        outlined consume of _Glass.Variant.ID(v254, v233);
        outlined consume of _Glass.Variant.ID(v254, v233);
        v165 = v242;
        v166 = v247;
        goto LABEL_284;
      }

      v355 = v223;
      v356 = v218;
      v353 = v213;
      v354 = v273;
      outlined copy of _Glass.Variant.ID(v223, v218);
      outlined copy of _Glass.Variant.ID(v213, v273);
      v274 = static _Glass.Variant.ID.== infix(_:_:)(&v355, &v353);
      outlined consume of _Glass.Variant.ID(v353, v354);
      outlined consume of _Glass.Variant.ID(v355, v356);
      outlined consume of _Glass.Variant.ID(v242, v247);
      outlined consume of _Glass.Variant.ID(v254, v233);
      outlined consume of _Glass.Variant.ID(v254, v233);
      outlined consume of _Glass.Variant.ID(v242, v247);
      v103 = v295;
      v104 = v292;
      if ((v274 & 1) == 0 || v167 != v168)
      {
        goto LABEL_285;
      }
    }

    outlined consume of _Glass.Variant.ID(v299, v103);
    outlined consume of _Glass.Variant.ID(v325, v104);
    v164 = v325;
LABEL_361:
    outlined consume of _Glass.Variant.ID(v164, v104);
    outlined consume of _Glass.Variant.ID(v299, v103);
    v59 = v310;
    v60 = v315;
    if (v96 != v99)
    {
      goto LABEL_288;
    }

LABEL_161:
    if (v276 >> 6)
    {
      v112 = v279;
      v113 = v282;
      if (v276 >> 6 == 1)
      {
        if ((v282 & 0xC0) != 0x40)
        {
          goto LABEL_227;
        }

        v355 = v279;
        v356 = v276 & 0x3F;
        v353 = v285;
        v354 = v282 & 0x3F;
        outlined copy of _Glass.Variant.ID(v279, v276);
        outlined copy of _Glass.Variant.ID(v285, v282);
        outlined copy of _Glass.Variant.ID(v279, v276);
        outlined copy of _Glass.Variant.ID(v285, v282);
        v329 = static Material.ID.== infix(_:_:)(&v355, &v353);
        outlined consume of _Glass.Variant.ID(v279, v276);
        outlined consume of _Glass.Variant.ID(v285, v282);
        outlined consume of _Glass.Variant.ID(v285, v282);
        outlined consume of _Glass.Variant.ID(v279, v276);
        outlined consume of _Glass.Variant.ID(v315, v310);
        outlined consume of _Glass.Variant.ID(v320, v308);
        outlined consume of _Glass.Variant.ID(v320, v308);
        outlined consume of _Glass.Variant.ID(v315, v310);
        v38 = v343;
        v39 = v340;
        if ((v329 & 1) == 0 || v53 != v56)
        {
          goto LABEL_290;
        }

        goto LABEL_97;
      }

      if (v279 | v276 ^ 0x80)
      {
        v123 = v282 & 0xC0;
        if (v276 == 128 && v279 == 1)
        {
          if (v123 != 128 || v285 != 1 || v282 != 128)
          {
            goto LABEL_227;
          }

          v125 = 1;
        }

        else
        {
          if (v123 != 128 || v285 != 2 || v282 != 128)
          {
            goto LABEL_227;
          }

          v125 = 2;
        }
      }

      else
      {
        if ((v282 & 0xC0) != 0x80 || v285 || v282 != 128)
        {
LABEL_227:
          outlined copy of _Glass.Variant.ID(v112, v276);
          outlined copy of _Glass.Variant.ID(v285, v113);
          outlined consume of _Glass.Variant.ID(v112, v276);
          v148 = v285;
          v149 = v113;
          goto LABEL_287;
        }

        outlined copy of _Glass.Variant.ID(v279, v276);
        outlined copy of _Glass.Variant.ID(0, 0x80u);
        v125 = 0;
      }

      outlined consume of _Glass.Variant.ID(v279, v276);
      outlined consume of _Glass.Variant.ID(v125, 0x80u);
      v60 = v315;
      outlined consume of _Glass.Variant.ID(v315, v310);
      outlined consume of _Glass.Variant.ID(v320, v308);
      v59 = v310;
      outlined consume of _Glass.Variant.ID(v320, v308);
    }

    else
    {
      v113 = v282;
      v112 = v279;
      if (v282 >= 0x40)
      {
        goto LABEL_227;
      }

      v114 = *(v279 + 16);
      v115 = *(v279 + 24);
      v116 = *(v279 + 48);
      v117 = *(v285 + 16);
      v118 = *(v285 + 24);
      v119 = *(v285 + 48);
      v330 = *(v279 + 24);
      v301 = v118;
      if (v115 >> 6)
      {
        if (v115 >> 6 == 1)
        {
          if ((v118 & 0xC0) != 0x40)
          {
            goto LABEL_234;
          }

          v263 = *(v285 + 40);
          v270 = *(v285 + 32);
          v255 = *(v279 + 40);
          v258 = *(v279 + 32);
          v355 = *(v279 + 16);
          v356 = v115 & 0x3F;
          v353 = v117;
          v354 = v118 & 0x3F;
          v297 = v114;
          v120 = v118;
          outlined copy of _Glass.Variant.ID(v279, v276);
          outlined copy of _Glass.Variant.ID(v285, v282);
          outlined copy of _Glass.Variant.ID(v117, v120);
          outlined copy of _Glass.Variant.ID(v297, v330);
          outlined copy of _Glass.Variant.ID(v279, v276);
          outlined copy of _Glass.Variant.ID(v285, v282);
          outlined copy of _Glass.Variant.ID(v117, v120);
          outlined copy of _Glass.Variant.ID(v297, v330);
          v248 = static Material.ID.== infix(_:_:)(&v355, &v353);
          outlined consume of _Glass.Variant.ID(v297, v330);
          outlined consume of _Glass.Variant.ID(v117, v301);
          v121 = v117;
          v122 = v285;
          outlined consume of _Glass.Variant.ID(v121, v301);
          v113 = v282;
          outlined consume of _Glass.Variant.ID(v297, v330);
          if ((v248 & 1) == 0)
          {
            goto LABEL_236;
          }
        }

        else
        {
          v294 = *(v285 + 16);
          v298 = *(v279 + 16);
          if (v114 | v115 ^ 0x80)
          {
            v155 = v118 & 0xC0;
            if (*(v279 + 24) == 128 && v114 == 1)
            {
              if (v155 != 128 || v117 != 1 || v118 != 128)
              {
                goto LABEL_235;
              }

              v263 = *(v285 + 40);
              v270 = *(v285 + 32);
              v255 = *(v279 + 40);
              v258 = *(v279 + 32);
              v157 = 1;
            }

            else
            {
              if (v155 != 128 || v117 != 2 || v118 != 128)
              {
                goto LABEL_235;
              }

              v263 = *(v285 + 40);
              v270 = *(v285 + 32);
              v255 = *(v279 + 40);
              v258 = *(v279 + 32);
              v157 = 2;
            }

            v302 = v157;
          }

          else
          {
            if ((v118 & 0xC0) != 0x80 || v117 || v118 != 128)
            {
              goto LABEL_235;
            }

            v263 = *(v285 + 40);
            v270 = *(v285 + 32);
            v255 = *(v279 + 40);
            v258 = *(v279 + 32);
            v302 = 0;
          }

          outlined copy of _Glass.Variant.ID(v279, v276);
          v122 = v285;
          outlined copy of _Glass.Variant.ID(v285, v282);
          outlined copy of _Glass.Variant.ID(v279, v276);
          outlined copy of _Glass.Variant.ID(v285, v282);
          outlined copy of _Glass.Variant.ID(v302, 0x80u);
          outlined consume of _Glass.Variant.ID(v298, v330);
          outlined consume of _Glass.Variant.ID(v302, 0x80u);
        }
      }

      else
      {
        if (v118 >= 0x40)
        {
LABEL_234:
          v294 = *(v285 + 16);
          v298 = *(v279 + 16);
          outlined copy of _Glass.Variant.ID(v114, v115);
LABEL_235:
          outlined copy of _Glass.Variant.ID(v279, v276);
          outlined copy of _Glass.Variant.ID(v285, v282);
          outlined copy of _Glass.Variant.ID(v279, v276);
          outlined copy of _Glass.Variant.ID(v285, v282);
          outlined copy of _Glass.Variant.ID(v294, v301);
          outlined consume of _Glass.Variant.ID(v298, v330);
          v122 = v285;
          outlined consume of _Glass.Variant.ID(v294, v301);
          goto LABEL_236;
        }

        v263 = *(v285 + 40);
        v270 = *(v285 + 32);
        v255 = *(v279 + 40);
        v258 = *(v279 + 32);
        v229 = *(v114 + 40);
        v150 = *(v114 + 48);
        v234 = *(v117 + 16);
        v217 = *(v114 + 32);
        v222 = *(v117 + 32);
        v212 = *(v117 + 40);
        v151 = *(v117 + 48);
        v238 = *(v114 + 24);
        v250 = *(v117 + 24);
        v355 = *(v114 + 16);
        v243 = v355;
        v356 = v238;
        v353 = v234;
        v354 = v250;
        v152 = v114;
        v153 = v118;
        outlined copy of _Glass.Variant.ID(v279, v276);
        outlined copy of _Glass.Variant.ID(v285, v282);
        outlined copy of _Glass.Variant.ID(v117, v153);
        outlined copy of _Glass.Variant.ID(v152, v330);
        outlined copy of _Glass.Variant.ID(v279, v276);
        outlined copy of _Glass.Variant.ID(v285, v282);
        outlined copy of _Glass.Variant.ID(v117, v301);
        outlined copy of _Glass.Variant.ID(v152, v330);
        outlined copy of _Glass.Variant.ID(v243, v238);
        outlined copy of _Glass.Variant.ID(v234, v250);
        v154 = static _Glass.Variant.ID.== infix(_:_:)(&v355, &v353);
        outlined consume of _Glass.Variant.ID(v353, v354);
        outlined consume of _Glass.Variant.ID(v355, v356);
        if ((v154 & 1) == 0)
        {
          outlined consume of _Glass.Variant.ID(v152, v330);
          outlined consume of _Glass.Variant.ID(v117, v301);
          outlined consume of _Glass.Variant.ID(v117, v301);
          outlined consume of _Glass.Variant.ID(v152, v330);
          v112 = v279;
          v113 = v282;
          v122 = v285;
LABEL_236:
          outlined consume of _Glass.Variant.ID(v112, v276);
          outlined consume of _Glass.Variant.ID(v122, v113);
          outlined consume of _Glass.Variant.ID(v122, v113);
          v148 = v112;
          v149 = v276;
          goto LABEL_287;
        }

        v355 = v217;
        v356 = v229;
        v353 = v222;
        v354 = v212;
        outlined copy of _Glass.Variant.ID(v217, v229);
        outlined copy of _Glass.Variant.ID(v222, v212);
        v251 = static _Glass.Variant.ID.== infix(_:_:)(&v355, &v353);
        outlined consume of _Glass.Variant.ID(v353, v354);
        outlined consume of _Glass.Variant.ID(v355, v356);
        outlined consume of _Glass.Variant.ID(v152, v330);
        outlined consume of _Glass.Variant.ID(v117, v301);
        outlined consume of _Glass.Variant.ID(v117, v301);
        outlined consume of _Glass.Variant.ID(v152, v330);
        v112 = v279;
        v113 = v282;
        v122 = v285;
        if ((v251 & 1) == 0 || v150 != v151)
        {
          goto LABEL_236;
        }
      }

      v355 = v258;
      v356 = v255;
      v353 = v270;
      v354 = v263;
      outlined copy of _Glass.Variant.ID(v258, v255);
      outlined copy of _Glass.Variant.ID(v270, v263);
      v338 = static _Glass.Variant.ID.== infix(_:_:)(&v355, &v353);
      outlined consume of _Glass.Variant.ID(v353, v354);
      outlined consume of _Glass.Variant.ID(v355, v356);
      outlined consume of _Glass.Variant.ID(v112, v276);
      outlined consume of _Glass.Variant.ID(v122, v113);
      outlined consume of _Glass.Variant.ID(v122, v113);
      outlined consume of _Glass.Variant.ID(v112, v276);
      v60 = v315;
      outlined consume of _Glass.Variant.ID(v315, v310);
      outlined consume of _Glass.Variant.ID(v320, v308);
      v59 = v310;
      outlined consume of _Glass.Variant.ID(v320, v308);
      if ((v338 & 1) == 0 || v116 != v119)
      {
        goto LABEL_289;
      }
    }

    outlined consume of _Glass.Variant.ID(v60, v59);
    v39 = v340;
    v38 = v343;
    if (v53 != v56)
    {
      goto LABEL_290;
    }

    goto LABEL_97;
  }

  return v5;
}

{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    v7 = *(a1 + 16);
    while (1)
    {
      v8 = *(*(v2 + 48) + 8 * result);
      if (*(v8 + 16) == v7)
      {
        break;
      }

LABEL_3:
      result = (result + 1) & v6;
      if (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        return result;
      }
    }

    if (v7 && v8 != a1)
    {
      v9 = (v8 + 32);
      v10 = (a1 + 32);
      v11 = *(a1 + 16);
      while (v11)
      {
        if (*v9 != *v10)
        {
          goto LABEL_3;
        }

        ++v9;
        ++v10;
        if (!--v11)
        {
          return result;
        }
      }

      __break(1u);
    }
  }

  return result;
}
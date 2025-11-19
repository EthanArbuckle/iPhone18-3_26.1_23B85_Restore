uint64_t specialized AsyncLineSequence.AsyncIterator.next()(__int16 a1)
{
  v4 = *v2;
  *(*v2 + 32) = v1;

  if (v1)
  {
    v5 = specialized AsyncLineSequence.AsyncIterator.next();
  }

  else
  {
    *(v4 + 88) = a1;
    v5 = specialized AsyncLineSequence.AsyncIterator.next();
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 90) = a1;

    return MEMORY[0x1EEE6DFA0](specialized AsyncLineSequence.AsyncIterator.next(), 0, 0);
  }
}

{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 92) = a1;

    return MEMORY[0x1EEE6DFA0](specialized AsyncLineSequence.AsyncIterator.next(), 0, 0);
  }
}

{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 94) = a1;

    return MEMORY[0x1EEE6DFA0](specialized AsyncLineSequence.AsyncIterator.next(), 0, 0);
  }
}

{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 96) = a1;

    return MEMORY[0x1EEE6DFA0](specialized AsyncLineSequence.AsyncIterator.next(), 0, 0);
  }
}

{
  v4 = *v2;
  *(*v2 + 32) = v1;

  if (v1)
  {
    v5 = specialized AsyncLineSequence.AsyncIterator.next();
  }

  else
  {
    *(v4 + 88) = a1;
    v5 = specialized AsyncLineSequence.AsyncIterator.next();
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 90) = a1;

    return MEMORY[0x1EEE6DFA0](specialized AsyncLineSequence.AsyncIterator.next(), 0, 0);
  }
}

{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 92) = a1;

    return MEMORY[0x1EEE6DFA0](specialized AsyncLineSequence.AsyncIterator.next(), 0, 0);
  }
}

{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 94) = a1;

    return MEMORY[0x1EEE6DFA0](specialized AsyncLineSequence.AsyncIterator.next(), 0, 0);
  }
}

{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 96) = a1;

    return MEMORY[0x1EEE6DFA0](specialized AsyncLineSequence.AsyncIterator.next(), 0, 0);
  }
}

{
  v4 = *v2;
  *(*v2 + 32) = v1;

  if (v1)
  {
    v5 = specialized AsyncLineSequence.AsyncIterator.next();
  }

  else
  {
    *(v4 + 88) = a1;
    v5 = specialized AsyncLineSequence.AsyncIterator.next();
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 90) = a1;

    return MEMORY[0x1EEE6DFA0](specialized AsyncLineSequence.AsyncIterator.next(), 0, 0);
  }
}

{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 92) = a1;

    return MEMORY[0x1EEE6DFA0](specialized AsyncLineSequence.AsyncIterator.next(), 0, 0);
  }
}

{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 94) = a1;

    return MEMORY[0x1EEE6DFA0](specialized AsyncLineSequence.AsyncIterator.next(), 0, 0);
  }
}

{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 96) = a1;

    return MEMORY[0x1EEE6DFA0](specialized AsyncLineSequence.AsyncIterator.next(), 0, 0);
  }
}

uint64_t AsyncLineSequence.AsyncIterator.next()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  v3 = *(a1 + 16);
  *(v2 + 32) = v3;
  if (v3 == &type metadata for URL.AsyncBytes)
  {
    v7 = specialized AsyncLineSequence.AsyncIterator.next();
    v4 = swift_task_alloc();
    *(v2 + 168) = v4;
    *v4 = v2;
    v5 = AsyncLineSequence.AsyncIterator.next();
  }

  else if (v3 == &type metadata for NSFileHandle.AsyncBytes)
  {
    v7 = specialized AsyncLineSequence.AsyncIterator.next();
    v4 = swift_task_alloc();
    *(v2 + 160) = v4;
    *v4 = v2;
    v5 = AsyncLineSequence.AsyncIterator.next();
  }

  else
  {
    if (v3 != &type metadata for NSURLSession.AsyncBytes)
    {
      *(v2 + 176) = *(a1 + 40);

      return MEMORY[0x1EEE6DFA0](AsyncLineSequence.AsyncIterator.next(), 0, 0);
    }

    v7 = specialized AsyncLineSequence.AsyncIterator.next();
    v4 = swift_task_alloc();
    *(v2 + 152) = v4;
    *v4 = v2;
    v5 = AsyncLineSequence.AsyncIterator.next();
  }

  v4[1] = v5;

  return v7();
}

uint64_t AsyncLineSequence.AsyncIterator.next()()
{
  v1 = (*(v0 + 24) + *(v0 + 176));
  if (v1[1])
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v4 = swift_task_alloc();
    *(v0 + 40) = v4;
    *v4 = v0;
    v4[1] = AsyncLineSequence.AsyncIterator.next();
    v5 = v0 + 180;
LABEL_50:

    return MEMORY[0x1EEE6D8C8](v5, AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  v6 = *v1;
  *v1 = 256;
  if (v6 == 13)
  {
    v7 = *(v0 + 24);
    v8 = *(*(v0 + 16) + 36);
    if (*(*(v7 + v8) + 16))
    {
      v9 = static String._fromUTF8Repairing(_:)();
      v11 = v10;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = *(v7 + v8);
      if (isUniquelyReferenced_nonNull_native)
      {
        v14 = *(v13 + 2);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 1, v13);
        }

        if (v14)
        {
          v15 = *(v13 + 2) - v14;
          memmove(v13 + 32, &v13[v14 + 32], v15);
          *(v13 + 2) = v15;
        }

        *(v7 + v8) = v13;
        goto LABEL_49;
      }

      if (*(v13 + 3) >= 2uLL)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
        v28 = swift_allocObject();
        v40 = _swift_stdlib_malloc_size(v28);
        v28[2] = 0;
        v28[3] = 2 * v40 - 64;
      }

      else
      {
        v28 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v24 = swift_isUniquelyReferenced_nonNull_native();
      v25 = *(v7 + v8);
      if (v24)
      {
        v26 = *(v25 + 2);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26, 1, v25);
        }

        if (v26)
        {
          v27 = *(v25 + 2) - v26;
          memmove(v25 + 32, &v25[v26 + 32], v27);
          *(v25 + 2) = v27;
        }

        v9 = 0;
        v11 = 0;
        *(v7 + v8) = v25;
        goto LABEL_49;
      }

      if (*(v25 + 3) >= 2uLL)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
        v28 = swift_allocObject();
        v42 = _swift_stdlib_malloc_size(v28);
        v28[2] = 0;
        v28[3] = 2 * v42 - 64;
      }

      else
      {
        v28 = MEMORY[0x1E69E7CC0];
      }

      v9 = 0;
      v11 = 0;
    }

    *(v7 + v8) = v28;
LABEL_49:
    *(v0 + 56) = v9;
    *(v0 + 64) = v11;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v43 = swift_task_alloc();
    *(v0 + 72) = v43;
    *v43 = v0;
    v43[1] = AsyncLineSequence.AsyncIterator.next();
    v5 = v0 + 188;
    goto LABEL_50;
  }

  if ((v6 - 10) > 2)
  {
    if (v6 == 226)
    {
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      *(v0 + 104) = AssociatedTypeWitness;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      *(v0 + 112) = AssociatedConformanceWitness;
      v33 = swift_task_alloc();
      *(v0 + 120) = v33;
      *v33 = v0;
      v33[1] = AsyncLineSequence.AsyncIterator.next();
      v5 = v0 + 182;
      goto LABEL_50;
    }

    if (v6 == 194)
    {
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v23 = swift_task_alloc();
      *(v0 + 88) = v23;
      *v23 = v0;
      v23[1] = AsyncLineSequence.AsyncIterator.next();
      v5 = v0 + 186;
      goto LABEL_50;
    }

    v34 = *(v0 + 24);
    v35 = *(*(v0 + 16) + 36);
    v36 = *(v34 + v35);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v36 + 2) + 1, 1, v36);
    }

    v38 = *(v36 + 2);
    v37 = *(v36 + 3);
    if (v38 >= v37 >> 1)
    {
      v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v36);
    }

    *(v36 + 2) = v38 + 1;
    v36[v38 + 32] = v6;
    *(v34 + v35) = v36;
  }

  else
  {
    v16 = *(v0 + 24);
    v17 = *(*(v0 + 16) + 36);
    if (*(*(v16 + v17) + 16))
    {
      v18 = static String._fromUTF8Repairing(_:)();
      v20 = v19;
      v21 = swift_isUniquelyReferenced_nonNull_native();
      v22 = *(v16 + v17);
      if (v21)
      {
        specialized Array.replaceSubrange<A>(_:with:)(0, *(v22 + 16));
      }

      else
      {
        if (*(v22 + 24) >= 2uLL)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
          v39 = swift_allocObject();
          v44 = _swift_stdlib_malloc_size(v39);
          v39[2] = 0;
          v39[3] = 2 * v44 - 64;
        }

        else
        {
          v39 = MEMORY[0x1E69E7CC0];
        }

        *(v16 + v17) = v39;
      }

      v45 = *(v0 + 8);

      return v45(v18, v20);
    }

    v29 = swift_isUniquelyReferenced_nonNull_native();
    v30 = *(v16 + v17);
    if (v29)
    {
      v31 = *(v30 + 2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31, 1, v30);
      }

      if (v31)
      {
        v32 = *(v30 + 2) - v31;
        memmove(v30 + 32, &v30[v31 + 32], v32);
        *(v30 + 2) = v32;
      }

      *(v16 + v17) = v30;
    }

    else
    {
      if (*(v30 + 3) >= 2uLL)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
        v41 = swift_allocObject();
        v46 = _swift_stdlib_malloc_size(v41);
        v41[2] = 0;
        v41[3] = 2 * v46 - 64;
      }

      else
      {
        v41 = MEMORY[0x1E69E7CC0];
      }

      *(v16 + v17) = v41;
    }
  }

  return MEMORY[0x1EEE6DFA0](AsyncLineSequence.AsyncIterator.next(), 0, 0);
}

{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = AsyncLineSequence.AsyncIterator.next();
  }

  else
  {
    v2 = AsyncLineSequence.AsyncIterator.next();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = *(v0 + 180);
  v2 = *(v0 + 181);
  *(*(v0 + 24) + *(v0 + 176)) = 256;
  if (v2)
  {
    v3 = *(v0 + 24);
    v4 = *(*(v0 + 16) + 36);
    if (!*(*(v3 + v4) + 16))
    {
      v5 = 0;
      v7 = 0;
      goto LABEL_21;
    }

    v5 = static String._fromUTF8Repairing(_:)();
    v7 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v3 + v4);
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_4:
      specialized Array.replaceSubrange<A>(_:with:)(0, *(v9 + 16));
LABEL_21:
      v22 = *(v0 + 8);

      return v22(v5, v7);
    }

    v21 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5(0, *(v9 + 24) >> 1);
LABEL_20:

    *(v3 + v4) = v21;
    goto LABEL_21;
  }

  if (v1 == 13)
  {
    v10 = *(v0 + 24);
    v11 = *(*(v0 + 16) + 36);
    if (*(*(v10 + v11) + 16))
    {
      v12 = static String._fromUTF8Repairing(_:)();
      v14 = v13;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *(v10 + v11);
      if (v15)
      {
        v17 = *(v16 + 2);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17, 1, v16);
        }

        if (v17)
        {
          v18 = *(v16 + 2) - v17;
          memmove(v16 + 32, &v16[v17 + 32], v18);
          *(v16 + 2) = v18;
        }

        *(v10 + v11) = v16;
        goto LABEL_56;
      }

      if (*(v16 + 3) >= 2uLL)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
        v32 = swift_allocObject();
        v43 = _swift_stdlib_malloc_size(v32);
        v32[2] = 0;
        v32[3] = 2 * v43 - 64;
      }

      else
      {
        v32 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v28 = swift_isUniquelyReferenced_nonNull_native();
      v29 = *(v10 + v11);
      if (v28)
      {
        v30 = *(v29 + 2);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v30, 1, v29);
        }

        if (v30)
        {
          v31 = *(v29 + 2) - v30;
          memmove(v29 + 32, &v29[v30 + 32], v31);
          *(v29 + 2) = v31;
        }

        v12 = 0;
        v14 = 0;
        *(v10 + v11) = v29;
        goto LABEL_56;
      }

      if (*(v29 + 3) >= 2uLL)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
        v32 = swift_allocObject();
        v45 = _swift_stdlib_malloc_size(v32);
        v32[2] = 0;
        v32[3] = 2 * v45 - 64;
      }

      else
      {
        v32 = MEMORY[0x1E69E7CC0];
      }

      v12 = 0;
      v14 = 0;
    }

    *(v10 + v11) = v32;
LABEL_56:
    *(v0 + 56) = v12;
    *(v0 + 64) = v14;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v46 = swift_task_alloc();
    *(v0 + 72) = v46;
    *v46 = v0;
    v46[1] = AsyncLineSequence.AsyncIterator.next();
    v27 = v0 + 188;
    goto LABEL_57;
  }

  if ((v1 - 10) <= 2)
  {
    v3 = *(v0 + 24);
    v4 = *(*(v0 + 16) + 36);
    if (*(*(v3 + v4) + 16))
    {
      v5 = static String._fromUTF8Repairing(_:)();
      v7 = v19;
      v20 = swift_isUniquelyReferenced_nonNull_native();
      v9 = *(v3 + v4);
      if (v20)
      {
        goto LABEL_4;
      }

      if (*(v9 + 24) >= 2uLL)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
        v21 = swift_allocObject();
        v47 = _swift_stdlib_malloc_size(v21);
        v21[2] = 0;
        v21[3] = 2 * v47 - 64;
      }

      else
      {
        v21 = MEMORY[0x1E69E7CC0];
      }

      goto LABEL_20;
    }

    v33 = swift_isUniquelyReferenced_nonNull_native();
    v34 = *(v3 + v4);
    if (v33)
    {
      v35 = *(v34 + 2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35, 1, v34);
      }

      if (v35)
      {
        v36 = *(v34 + 2) - v35;
        memmove(v34 + 32, &v34[v35 + 32], v36);
        *(v34 + 2) = v36;
      }

      *(v3 + v4) = v34;
    }

    else
    {
      if (*(v34 + 3) >= 2uLL)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
        v44 = swift_allocObject();
        v48 = _swift_stdlib_malloc_size(v44);
        v44[2] = 0;
        v44[3] = 2 * v48 - 64;
      }

      else
      {
        v44 = MEMORY[0x1E69E7CC0];
      }

      *(v3 + v4) = v44;
    }

    goto LABEL_63;
  }

  if (v1 == 226)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    *(v0 + 104) = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    *(v0 + 112) = AssociatedConformanceWitness;
    v37 = swift_task_alloc();
    *(v0 + 120) = v37;
    *v37 = v0;
    v37[1] = AsyncLineSequence.AsyncIterator.next();
    v27 = v0 + 182;
    goto LABEL_57;
  }

  if (v1 == 194)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v26 = swift_task_alloc();
    *(v0 + 88) = v26;
    *v26 = v0;
    v26[1] = AsyncLineSequence.AsyncIterator.next();
    v27 = v0 + 186;
LABEL_57:

    return MEMORY[0x1EEE6D8C8](v27, AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  v38 = *(v0 + 24);
  v39 = *(*(v0 + 16) + 36);
  v40 = *(v38 + v39);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v40 + 2) + 1, 1, v40);
  }

  v42 = *(v40 + 2);
  v41 = *(v40 + 3);
  if (v42 >= v41 >> 1)
  {
    v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v40);
  }

  *(v40 + 2) = v42 + 1;
  v40[v42 + 32] = v1;
  *(v38 + v39) = v40;
LABEL_63:

  return MEMORY[0x1EEE6DFA0](AsyncLineSequence.AsyncIterator.next(), 0, 0);
}

{
  *(*(v0 + 24) + *(v0 + 176)) = 256;
  return (*(v0 + 8))();
}

{
  *(*v1 + 80) = v0;

  if (v0)
  {

    v2 = AsyncLineSequence.AsyncIterator.next();
  }

  else
  {
    v2 = AsyncLineSequence.AsyncIterator.next();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  if (*(v0 + 189))
  {
    v1 = *(v0 + 64);
    return (*(v0 + 8))(*(v0 + 56), v1);
  }

  v2 = *(v0 + 188);
  if (v2 != 10)
  {
    *(*(v0 + 24) + *(v0 + 176)) = v2;
  }

  v1 = *(v0 + 64);
  if (v1)
  {
    return (*(v0 + 8))(*(v0 + 56), v1);
  }

  return MEMORY[0x1EEE6DFA0](AsyncLineSequence.AsyncIterator.next(), 0, 0);
}

{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = AsyncLineSequence.AsyncIterator.next();
  }

  else
  {
    v2 = AsyncLineSequence.AsyncIterator.next();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (*(v0 + 187))
  {
    v3 = *(v1 + 36);
    v4 = *(v2 + v3);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
    }

    v6 = *(v4 + 2);
    v5 = *(v4 + 3);
    v7 = v6 + 1;
    if (v6 >= v5 >> 1)
    {
      v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v7, 1, v4);
      v7 = v6 + 1;
      v4 = v31;
    }

    *(v4 + 2) = v7;
    v4[v6 + 32] = -62;
    *(v2 + v3) = v4;
    v8 = static String._fromUTF8Repairing(_:)();
    v10 = v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v2 + v3);
    if (!isUniquelyReferenced_nonNull_native)
    {
      v13 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5(0, *(v12 + 24) >> 1);
LABEL_8:

      *(v2 + v3) = v13;
LABEL_13:
      v18 = *(v0 + 8);

      return v18(v8, v10);
    }

    goto LABEL_12;
  }

  v14 = *(v0 + 186);
  v3 = *(v1 + 36);
  v15 = *(v2 + v3);
  if (v14 == 133)
  {
    if (*(v15 + 2))
    {
      v8 = static String._fromUTF8Repairing(_:)();
      v10 = v16;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v12 = *(v2 + v3);
      if ((v17 & 1) == 0)
      {
        if (*(v12 + 24) >= 2uLL)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
          v13 = swift_allocObject();
          v29 = _swift_stdlib_malloc_size(v13);
          v13[2] = 0;
          v13[3] = 2 * v29 - 64;
        }

        else
        {
          v13 = MEMORY[0x1E69E7CC0];
        }

        goto LABEL_8;
      }

LABEL_12:
      specialized Array.replaceSubrange<A>(_:with:)(0, *(v12 + 16));
      goto LABEL_13;
    }

    v25 = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v2 + v3);
    if (v25)
    {
      v26 = *(v15 + 2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26, 1, v15);
      }

      if (v26)
      {
        v27 = *(v15 + 2) - v26;
        memmove(v15 + 32, &v15[v26 + 32], v27);
        *(v15 + 2) = v27;
      }
    }

    else
    {
      if (*(v15 + 3) >= 2uLL)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
        v28 = swift_allocObject();
        v30 = _swift_stdlib_malloc_size(v28);
        v28[2] = 0;
        v28[3] = 2 * v30 - 64;
      }

      else
      {
        v28 = MEMORY[0x1E69E7CC0];
      }

      v15 = v28;
    }
  }

  else
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
    }

    v21 = *(v15 + 2);
    v20 = *(v15 + 3);
    v22 = v20 >> 1;
    v23 = v21 + 1;
    if (v20 >> 1 <= v21)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v15);
      v20 = *(v15 + 3);
      v22 = v20 >> 1;
    }

    *(v15 + 2) = v23;
    v15[v21 + 32] = -62;
    v24 = v21 + 2;
    if (v22 < v24)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v24, 1, v15);
    }

    *(v15 + 2) = v24;
    v15[v23 + 32] = v14;
  }

  *(v2 + v3) = v15;

  return MEMORY[0x1EEE6DFA0](AsyncLineSequence.AsyncIterator.next(), 0, 0);
}

{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = AsyncLineSequence.AsyncIterator.next();
  }

  else
  {
    v2 = AsyncLineSequence.AsyncIterator.next();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = *(v0 + 182);
  if (*(v0 + 183))
  {
    v2 = *(v0 + 24);
    v3 = *(*(v0 + 16) + 36);
    v4 = *(v2 + v3);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
    }

    v6 = *(v4 + 2);
    v5 = *(v4 + 3);
    v7 = v6 + 1;
    if (v6 >= v5 >> 1)
    {
      v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v7, 1, v4);
      v7 = v6 + 1;
      v4 = v26;
    }

    *(v4 + 2) = v7;
    v4[v6 + 32] = -30;
    *(v2 + v3) = v4;
    v8 = static String._fromUTF8Repairing(_:)();
    v10 = v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v2 + v3);
    if (isUniquelyReferenced_nonNull_native)
    {
      specialized Array.replaceSubrange<A>(_:with:)(0, *(v12 + 16));
    }

    else
    {
      v16 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5(0, *(v12 + 24) >> 1);

      *(v2 + v3) = v16;
    }

    v17 = *(v0 + 8);

    return v17(v8, v10);
  }

  else if (v1 == 128)
  {
    v13 = swift_task_alloc();
    *(v0 + 136) = v13;
    *v13 = v0;
    v13[1] = AsyncLineSequence.AsyncIterator.next();
    v14 = *(v0 + 104);
    v15 = *(v0 + 112);

    return MEMORY[0x1EEE6D8C8](v0 + 184, v14, v15);
  }

  else
  {
    v18 = *(v0 + 24);
    v19 = *(*(v0 + 16) + 36);
    v20 = *(v18 + v19);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1, v20);
    }

    v22 = *(v20 + 2);
    v21 = *(v20 + 3);
    v23 = v21 >> 1;
    v24 = v22 + 1;
    if (v21 >> 1 <= v22)
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v20);
      v21 = *(v20 + 3);
      v23 = v21 >> 1;
    }

    *(v20 + 2) = v24;
    v20[v22 + 32] = -30;
    v25 = v22 + 2;
    if (v23 < v25)
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v25, 1, v20);
    }

    *(v20 + 2) = v25;
    v20[v24 + 32] = v1;
    *(v18 + v19) = v20;

    return MEMORY[0x1EEE6DFA0](AsyncLineSequence.AsyncIterator.next(), 0, 0);
  }
}

{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = AsyncLineSequence.AsyncIterator.next();
  }

  else
  {
    v2 = AsyncLineSequence.AsyncIterator.next();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (*(v0 + 185))
  {
    v3 = *(v1 + 36);
    v4 = *(v2 + v3);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
    }

    v6 = *(v4 + 2);
    v5 = *(v4 + 3);
    v7 = v5 >> 1;
    v8 = v6 + 1;
    if (v5 >> 1 <= v6)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1, v4);
      v5 = *(v4 + 3);
      v7 = v5 >> 1;
    }

    *(v4 + 2) = v8;
    v4[v6 + 32] = -30;
    v9 = v6 + 2;
    if (v7 < (v6 + 2))
    {
      v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v9, 1, v4);
      v9 = v6 + 2;
      v4 = v33;
    }

    *(v4 + 2) = v9;
    v4[v8 + 32] = 0x80;
    *(v2 + v3) = v4;
    v10 = static String._fromUTF8Repairing(_:)();
    v12 = v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v2 + v3);
    if (!isUniquelyReferenced_nonNull_native)
    {
      v15 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5(0, *(v14 + 24) >> 1);
LABEL_10:

      *(v2 + v3) = v15;
LABEL_15:
      v20 = *(v0 + 8);

      return v20(v10, v12);
    }

    goto LABEL_14;
  }

  v16 = *(v0 + 184);
  v3 = *(v1 + 36);
  v17 = *(v2 + v3);
  if ((v16 & 0xFE) == 0xA8)
  {
    if (*(v17 + 2))
    {
      v10 = static String._fromUTF8Repairing(_:)();
      v12 = v18;
      v19 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *(v2 + v3);
      if ((v19 & 1) == 0)
      {
        if (*(v14 + 24) >= 2uLL)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
          v15 = swift_allocObject();
          v31 = _swift_stdlib_malloc_size(v15);
          v15[2] = 0;
          v15[3] = 2 * v31 - 64;
        }

        else
        {
          v15 = MEMORY[0x1E69E7CC0];
        }

        goto LABEL_10;
      }

LABEL_14:
      specialized Array.replaceSubrange<A>(_:with:)(0, *(v14 + 16));
      goto LABEL_15;
    }

    v27 = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v2 + v3);
    if (v27)
    {
      v28 = *(v17 + 2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28, 1, v17);
      }

      if (v28)
      {
        v29 = *(v17 + 2) - v28;
        memmove(v17 + 32, &v17[v28 + 32], v29);
        *(v17 + 2) = v29;
      }
    }

    else
    {
      if (*(v17 + 3) >= 2uLL)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
        v30 = swift_allocObject();
        v32 = _swift_stdlib_malloc_size(v30);
        v30[2] = 0;
        v30[3] = 2 * v32 - 64;
      }

      else
      {
        v30 = MEMORY[0x1E69E7CC0];
      }

      v17 = v30;
    }
  }

  else
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
    }

    v23 = *(v17 + 2);
    v22 = *(v17 + 3);
    v24 = v22 >> 1;
    v25 = v23 + 1;
    if (v22 >> 1 <= v23)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v17);
      v22 = *(v17 + 3);
      v24 = v22 >> 1;
    }

    *(v17 + 2) = v25;
    v17[v23 + 32] = -30;
    v26 = v23 + 2;
    if (v24 < (v23 + 2))
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 2, 1, v17);
      v22 = *(v17 + 3);
      v24 = v22 >> 1;
    }

    *(v17 + 2) = v26;
    v17[v25 + 32] = 0x80;
    if (v24 < (v23 + 3))
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 3, 1, v17);
    }

    *(v17 + 2) = v23 + 3;
    v17[v26 + 32] = v16;
  }

  *(v2 + v3) = v17;

  return MEMORY[0x1EEE6DFA0](AsyncLineSequence.AsyncIterator.next(), 0, 0);
}

{
  return (*(v0 + 8))();
}

{
  return (*(v0 + 8))();
}

{
  return (*(v0 + 8))();
}

{
  return (*(v0 + 8))();
}

uint64_t AsyncLineSequence.AsyncIterator.next()(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance AsyncLineSequence<A>.AsyncIterator(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncLineSequence<A>.AsyncIterator;

  return AsyncLineSequence.AsyncIterator.next()(a2);
}

{
  v6 = *v3;
  v7 = *v3;

  if (!v2)
  {
    v8 = *(v6 + 16);
    *v8 = a1;
    v8[1] = a2;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t _s10Foundation17AsyncLineSequenceV0B8IteratorVyx_GScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[3] = AssociatedTypeWitness;
  v6[4] = *(AssociatedTypeWitness - 8);
  v13 = swift_task_alloc();
  v6[5] = v13;
  v14 = swift_task_alloc();
  v6[6] = v14;
  *v14 = v6;
  v14[1] = _s10Foundation17AsyncLineSequenceV0B8IteratorVyx_GScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6, v13);
}

uint64_t _s10Foundation17AsyncLineSequenceV0B8IteratorVyx_GScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    (*(v2[4] + 32))(v2[2], v2[5], v2[3]);
  }

  v4 = v3[1];

  return v4();
}

uint64_t AsyncLineSequence.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  result = type metadata accessor for AsyncLineSequence.AsyncIterator();
  *(a2 + *(result + 36)) = MEMORY[0x1E69E7CC0];
  *(a2 + *(result + 40)) = 256;
  return result;
}

uint64_t protocol witness for AsyncSequence.makeAsyncIterator() in conformance AsyncLineSequence<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AsyncLineSequence.makeAsyncIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t associated type witness table accessor for AsyncIteratorProtocol.Failure : Error in AsyncLineSequence<A>.AsyncIterator()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return swift_getAssociatedConformanceWitness();
}

void type metadata completion function for AsyncLineSequence.AsyncIterator()
{
  swift_getAssociatedTypeWitness();
  if (v0 <= 0x3F)
  {
    type metadata accessor for [UInt8](319, &lazy cache variable for type metadata for [UInt8], MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for [UInt8](319, &lazy cache variable for type metadata for UInt8?, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for AsyncLineSequence.AsyncIterator(unsigned __int16 *a1, unsigned int a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 10;
  if (v9 <= 3)
  {
    v10 = ((a2 - v7 + 0xFFFF) >> 16) + 1;
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

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *(a1 + v9);
      if (!v13)
      {
        goto LABEL_28;
      }
    }

LABEL_24:
    v15 = (v13 - 1) << (8 * v9);
    if (v9 <= 3)
    {
      v16 = *a1;
    }

    else
    {
      v15 = 0;
      v16 = *a1;
    }

    return v7 + (v16 | v15) + 1;
  }

  if (v12)
  {
    v13 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_24;
    }
  }

LABEL_28:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = *((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v18 >= 0xFFFFFFFF)
    {
      LODWORD(v18) = -1;
    }

    return (v18 + 1);
  }

  else
  {
    v17 = *(v5 + 48);

    return v17(a1);
  }
}

void storeEnumTagSinglePayload for AsyncLineSequence.AsyncIterator(_WORD *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  if (v7 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 10;
  if (v9 >= a3)
  {
    v13 = 0;
    if (v9 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v10 <= 3)
    {
      v11 = ((a3 - v9 + 0xFFFF) >> 16) + 1;
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

    if (v9 >= a2)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(a1 + v10) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *(a1 + v10) = 0;
      }

      else if (v13)
      {
        *(a1 + v10) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0x7FFFFFFF)
      {
        v17 = ((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v18 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v18 = (a2 - 1);
        }

        *v17 = v18;
      }

      else
      {
        v16 = *(v6 + 56);

        v16(a1, a2);
      }

      return;
    }
  }

  v14 = ~v9 + a2;
  bzero(a1, v10);
  if (v10 <= 3)
  {
    v15 = HIWORD(v14) + 1;
  }

  else
  {
    v15 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v14;
    if (v13 > 1)
    {
LABEL_27:
      if (v13 == 2)
      {
        *(a1 + v10) = v15;
      }

      else
      {
        *(a1 + v10) = v15;
      }

      return;
    }
  }

  else
  {
    *a1 = v14;
    if (v13 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v13)
  {
    *(a1 + v10) = v15;
  }
}

void type metadata accessor for [UInt8](uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E7508]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id NSURLSession.dataTaskPublisher(for:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = objc_allocWithZone(MEMORY[0x1E695AC18]);
  ObjectType = swift_getObjectType();
  v6 = *(v3 + 432);
  swift_unknownObjectRetain();
  v7 = v6(ObjectType, v3);
  v8 = [v4 initWithURL:v7 cachePolicy:0 timeoutInterval:60.0];
  swift_unknownObjectRelease();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14_MutableHandleCySo19NSMutableURLRequestCGMd);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *a2 = v9;
  a2[1] = v11;

  return v11;
}

void *NSURLSession.DataTaskPublisher.init(request:session:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = *result;
  a3[1] = a2;
  return result;
}

id NSURLSession.dataTaskPublisher(for:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;
  a2[1] = v2;

  return v4;
}

uint64_t NSURLSession.DataTaskPublisher.receive<A>(subscriber:)(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v2[1];
  *&v15 = *v2;
  *(&v15 + 1) = v8;
  (*(v9 + 16))(v7, a1, a2, v5);
  v10 = type metadata accessor for NSURLSession.DataTaskPublisher.Inner();
  swift_allocObject();

  v11 = v8;
  v12 = NSURLSession.DataTaskPublisher.Inner.init(_:_:)(&v15, v7);
  v16 = v10;
  WitnessTable = swift_getWitnessTable();
  *&v15 = v12;
  dispatch thunk of Subscriber.receive(subscription:)();
  return __swift_destroy_boxed_opaque_existential_1(&v15);
}

void NSURLSession.DataTaskPublisher.Inner.customMirror.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v23[1] = *v1;
  v23[2] = a1;
  v23[0] = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v23[0] - 8);
  MEMORY[0x1EEE9AC00](v23[0]);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v23 - v7;
  v9 = *(v1 + 2);
  os_unfair_lock_lock(v9);
  v24 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_18121D6C0;
  *(v10 + 32) = 1802723700;
  *(v10 + 40) = 0xE400000000000000;
  v11 = *v1;
  v12 = *&v1[*(*v1 + 128)];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20NSURLSessionDataTaskCSgMd);
  *(v10 + 48) = v12;
  *(v10 + 72) = v13;
  *(v10 + 80) = 0x657274736E776F64;
  *(v10 + 88) = 0xEA00000000006D61;
  v14 = *(v11 + 112);
  v15 = type metadata accessor for Optional();
  *(v10 + 120) = v15;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v10 + 96));
  (*(*(v15 - 8) + 16))(boxed_opaque_existential_0, &v2[v14], v15);
  *(v10 + 128) = 0x746E65726170;
  *(v10 + 136) = 0xE600000000000000;
  v17 = *(v2 + 3);
  v18 = *(v2 + 4);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo12NSURLSessionC10FoundationE17DataTaskPublisherVSgMd);
  *(v10 + 144) = v17;
  *(v10 + 152) = v18;
  *(v10 + 168) = v19;
  *(v10 + 176) = 0x646E616D6564;
  *(v10 + 184) = 0xE600000000000000;
  v20 = *&v2[*(*v2 + 120)];
  *(v10 + 216) = MEMORY[0x1E695BEC8];
  *(v10 + 192) = v20;
  v21 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
  (*(v3 + 104))(v5, *MEMORY[0x1E69E75D8], v23[0]);
  v22 = v12;

  outlined copy of NSURLSession.DataTaskPublisher?(v17, v18);
  Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
  os_unfair_lock_unlock(v9);
}

void NSURLSession.DataTaskPublisher.Inner.playgroundDescription.getter(void *a1@<X8>)
{
  a1[3] = MEMORY[0x1E69E6158];
  *a1 = 0xD000000000000011;
  a1[1] = 0x80000001812DEF30;
}

char *NSURLSession.DataTaskPublisher.Inner.init(_:_:)(_OWORD *a1, uint64_t a2)
{
  v5 = *v2;
  *(v2 + 3) = 0;
  *(v2 + 4) = 0;
  v6 = *(v5 + 80);
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  v8(&v2[*(v5 + 112)], 1, 1, v6);
  *&v2[*(*v2 + 128)] = 0;
  v9 = swift_slowAlloc();
  *v9 = 0;
  *(v2 + 2) = v9;
  v10 = *(v2 + 3);
  v11 = *(v2 + 4);
  *(v2 + 24) = *a1;
  outlined consume of NSURLSession.DataTaskPublisher?(v10, v11);
  v12 = *(*v2 + 112);
  v13 = type metadata accessor for Optional();
  (*(*(v13 - 8) + 8))(&v2[v12], v13);
  (*(v7 + 32))(&v2[v12], a2, v6);
  v8(&v2[v12], 0, 1, v6);
  *&v2[*(*v2 + 120)] = 0;
  return v2;
}

unint64_t lazy protocol witness table accessor for type URLError and conformance URLError()
{
  result = lazy protocol witness table cache variable for type URLError and conformance URLError;
  if (!lazy protocol witness table cache variable for type URLError and conformance URLError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URLError and conformance URLError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URLError and conformance URLError;
  if (!lazy protocol witness table cache variable for type URLError and conformance URLError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URLError and conformance URLError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URLError and conformance URLError;
  if (!lazy protocol witness table cache variable for type URLError and conformance URLError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URLError and conformance URLError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URLError and conformance URLError;
  if (!lazy protocol witness table cache variable for type URLError and conformance URLError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URLError and conformance URLError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URLError and conformance URLError;
  if (!lazy protocol witness table cache variable for type URLError and conformance URLError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URLError and conformance URLError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URLError and conformance URLError;
  if (!lazy protocol witness table cache variable for type URLError and conformance URLError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URLError and conformance URLError);
  }

  return result;
}

uint64_t NSURLSession.DataTaskPublisher.Inner.__deallocating_deinit()
{
  MEMORY[0x1865D2690](*(v0 + 16), -1, -1);
  outlined consume of NSURLSession.DataTaskPublisher?(*(v0 + 24), *(v0 + 32));
  v1 = *(*v0 + 112);
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void NSURLSession.DataTaskPublisher.Inner.request(_:)(uint64_t a1)
{
  static Subscribers.Demand.unlimited.getter();
  if ((static Subscribers.Demand.== infix(_:_:)() & 1) == 0)
  {
    if (a1 < 0)
    {
LABEL_24:
      __break(1u);
    }

    else if (a1)
    {
      goto LABEL_4;
    }

    __break(1u);
LABEL_26:
    __break(1u);
    return;
  }

LABEL_4:
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3);
  v4 = *(v1 + 24);
  if (v4)
  {
    v5 = *(v1 + 32);
    v6 = *(*v1 + 128);
    if (*(v1 + v6))
    {
      outlined copy of NSURLSession.DataTaskPublisher?(*(v1 + 24), *(v1 + 32));
    }

    else
    {
      v7 = *(v4 + 16);
      outlined copy of NSURLSession.DataTaskPublisher?(*(v1 + 24), *(v1 + 32));

      [v7 copy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      type metadata accessor for NSMutableURLRequest();
      swift_dynamicCast();
      v8 = aBlock[6];
      v9 = swift_allocObject();
      *(v9 + 16) = partial apply for implicit closure #4 in implicit closure #3 in NSURLSession.DataTaskPublisher.Inner.request(_:);
      *(v9 + 24) = v1;
      aBlock[4] = partial apply for closure #1 in NSURLSession.DataTaskPublisher.Inner.request(_:);
      aBlock[5] = v9;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed NSURLResponse?, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_6;
      v10 = _Block_copy(aBlock);

      v11 = [v5 dataTaskWithRequest:v8 completionHandler:v10];
      _Block_release(v10);

      v12 = *(v1 + v6);
      *(v1 + v6) = v11;
    }

    v13 = *(*v1 + 120);
    v14 = *(v1 + v13);
    static Subscribers.Demand.unlimited.getter();
    if (static Subscribers.Demand.== infix(_:_:)())
    {
      goto LABEL_14;
    }

    static Subscribers.Demand.unlimited.getter();
    v16 = static Subscribers.Demand.== infix(_:_:)();
    v15 = static Subscribers.Demand.unlimited.getter();
    if (v16)
    {
      while (1)
      {
        *(v1 + v13) = v15;
LABEL_14:
        v17 = *(v1 + v6);
        if (v17)
        {
          goto LABEL_15;
        }

LABEL_21:
        __break(1u);
LABEL_22:
        if (v15 < 0)
        {
          __break(1u);
          goto LABEL_24;
        }
      }
    }

    if (static Subscribers.Demand.== infix(_:_:)())
    {
LABEL_20:
      *(v1 + v13) = static Subscribers.Demand.unlimited.getter();
      v17 = *(v1 + v6);
      if (!v17)
      {
        goto LABEL_21;
      }

LABEL_15:
      v18 = v17;
      os_unfair_lock_unlock(v3);
      [v18 resume];

      outlined consume of NSURLSession.DataTaskPublisher?(v4, v5);
      return;
    }

    if (((v14 | a1) & 0x8000000000000000) == 0)
    {
      v15 = v14 + a1;
      if (!__OFADD__(v14, a1))
      {
        goto LABEL_22;
      }

      goto LABEL_20;
    }

    goto LABEL_26;
  }

  os_unfair_lock_unlock(v3);
}

void implicit closure #4 in implicit closure #3 in NSURLSession.DataTaskPublisher.Inner.request(_:)(void *a1, unint64_t a2, void *a3, void *a4, char *a5)
{
  v105 = a4;
  v106 = a3;
  v103 = a1;
  v104 = a2;
  v116 = *MEMORY[0x1E69E9840];
  v6 = *a5;
  v7 = *(*a5 + 80);
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v102 - v10;
  v108 = v7;
  v12 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v107 = v102 - v14;
  v15 = *(a5 + 2);
  os_unfair_lock_lock(v15);
  v16 = *(*a5 + 120);
  v17 = *&a5[v16];
  static Subscribers.Demand.unlimited.getter();
  if ((static Subscribers.Demand.== infix(_:_:)() & 1) == 0)
  {
    if (v17 < 0)
    {
      __break(1u);
      goto LABEL_133;
    }

    if (!v17)
    {
      goto LABEL_7;
    }
  }

  if (!*(a5 + 3))
  {
LABEL_7:
    os_unfair_lock_unlock(v15);
    return;
  }

  v102[1] = v6;
  v18 = *(*a5 + 112);
  (*(v9 + 16))(v11, &a5[v18], v8);
  v19 = *(v12 + 48);
  v20 = v12;
  v21 = v108;
  if (v19(v11, 1, v108) == 1)
  {
    (*(v9 + 8))(v11, v8);
    goto LABEL_7;
  }

  (*(v20 + 32))(v107, v11, v21);
  v22 = *(a5 + 3);
  v23 = *(a5 + 4);
  *(a5 + 3) = 0;
  *(a5 + 4) = 0;
  outlined consume of NSURLSession.DataTaskPublisher?(v22, v23);
  (*(v9 + 8))(&a5[v18], v8);
  v102[0] = v20;
  (*(v20 + 56))(&a5[v18], 1, 1, v21);
  *&a5[v16] = 0;
  v24 = *(*a5 + 128);
  v25 = *&a5[v24];
  *&a5[v24] = 0;

  os_unfair_lock_unlock(v15);
  if (!v106)
  {
    v26 = v105;
    if (!v105)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v26 = v105;
  if (v105)
  {
LABEL_17:
    v113 = v26;
    v35 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    if (swift_dynamicCast())
    {
      v36 = v109;
LABEL_131:
      v113 = v36;
      v101 = v107;
      dispatch thunk of Subscriber.receive(completion:)();
      (*(v102[0] + 8))(v101, v21);

      return;
    }

LABEL_19:
    isTaggedPointer = _objc_isTaggedPointer(@"NSURLErrorDomain");
    v38 = @"NSURLErrorDomain";
    v39 = v38;
    if (isTaggedPointer)
    {
      TaggedPointerTag = _objc_getTaggedPointerTag(v38);
      if (TaggedPointerTag)
      {
        if (TaggedPointerTag != 22)
        {
          if (TaggedPointerTag == 2)
          {
            MEMORY[0x1EEE9AC00](TaggedPointerTag);
            v102[-2] = v39;
            String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

LABEL_51:
            v21 = v108;
            goto LABEL_52;
          }

          goto LABEL_24;
        }

        v45 = [(__CFString *)v39 UTF8String];
        if (!v45)
        {
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        String.init(utf8String:)(v45);
        if (v46)
        {
          goto LABEL_36;
        }

        __break(1u);
      }

      v111 = 0;
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v47)
      {
        [(__CFString *)v39 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        goto LABEL_52;
      }

      goto LABEL_36;
    }

LABEL_24:
    LOBYTE(v109) = 0;
    v113 = 0;
    LOBYTE(v111) = 0;
    v112 = 0;
    IsCF = __CFStringIsCF();
    if (!IsCF)
    {
      v43 = v39;
      String.init(_nativeStorage:)();
      if (v44 || (v113 = [(__CFString *)v43 length]) == 0)
      {

        goto LABEL_52;
      }

      goto LABEL_41;
    }

    v42 = v113;
    if (v113)
    {
      if (v112 == 1)
      {
        if (v109)
        {
          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
        }

        else
        {
          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        }

        String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_52:
        v53 = objc_allocWithZone(NSError);
        v54 = String._bridgeToObjectiveCImpl()();

        v36 = [v53 initWithDomain:v54 code:-1 userInfo:_NativeDictionary.bridged()()];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v55 = [v36 domain];
        if (!v55)
        {
          goto LABEL_66;
        }

        v56 = v55;
        v57 = _objc_isTaggedPointer(v55);
        v58 = v56;
        v59 = v58;
        if ((v57 & 1) == 0)
        {
LABEL_58:
          LOBYTE(v109) = 0;
          v113 = 0;
          LOBYTE(v111) = 0;
          v112 = 0;
          v64 = __CFStringIsCF();
          if (v64)
          {
            v65 = v113;
            if (v113)
            {
              if (v112 == 1)
              {
                if (v109)
                {
                  lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                }

                else
                {
                  lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                }

                v72 = String.init<A>(_immortalCocoaString:count:encoding:)();
                goto LABEL_89;
              }

              if (v111)
              {
                if (v109 == 1)
                {
                  MEMORY[0x1EEE9AC00](v64);
                  v102[-4] = v59;
                  v102[-3] = &v113;
                  LODWORD(v102[-2]) = 1536;
                  v102[-1] = v65;
                }

                else
                {
                  v74 = [v59 lengthOfBytesUsingEncoding_];
                  MEMORY[0x1EEE9AC00](v74);
                  v102[-4] = v59;
                  v102[-3] = &v113;
                  LODWORD(v102[-2]) = 134217984;
                  v102[-1] = v75;
                }

                v76 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                v63 = v77;
                v78 = HIBYTE(v77) & 0xF;
                if ((v77 & 0x2000000000000000) == 0)
                {
                  v78 = v76 & 0xFFFFFFFFFFFFLL;
                }

                if (v78)
                {
                  v61 = v76;

                  goto LABEL_86;
                }

                v21 = v108;
              }

LABEL_88:
              v72 = String.init(_cocoaString:)();
LABEL_89:
              v61 = v72;
              v63 = v73;
              goto LABEL_90;
            }
          }

          else
          {
            v66 = v59;
            v67 = String.init(_nativeStorage:)();
            if (v68)
            {
              v61 = v67;
              v63 = v68;

LABEL_91:
              v79 = v39;
              v80 = v79;
              if (!isTaggedPointer)
              {
                goto LABEL_96;
              }

              v81 = _objc_getTaggedPointerTag(v79);
              if (!v81)
              {
                goto LABEL_108;
              }

              if (v81 != 22)
              {
                if (v81 == 2)
                {
                  MEMORY[0x1EEE9AC00](v81);
                  v102[-2] = v80;
                  v82 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                  v84 = v83;

LABEL_123:
                  v21 = v108;
                  goto LABEL_127;
                }

LABEL_96:
                LOBYTE(v109) = 0;
                v113 = 0;
                LOBYTE(v111) = 0;
                v112 = 0;
                v85 = __CFStringIsCF();
                if (v85)
                {
                  v86 = v113;
                  if (v113)
                  {
                    if (v112 == 1)
                    {
                      if (v109)
                      {
                        lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                      }

                      else
                      {
                        lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                      }

                      v93 = String.init<A>(_immortalCocoaString:count:encoding:)();
                      goto LABEL_126;
                    }

                    if (v111)
                    {
                      if (v109 == 1)
                      {
                        MEMORY[0x1EEE9AC00](v85);
                        v102[-4] = v80;
                        v102[-3] = &v113;
                        LODWORD(v102[-2]) = 1536;
                        v102[-1] = v86;
                      }

                      else
                      {
                        v95 = [(__CFString *)v80 lengthOfBytesUsingEncoding:4];
                        MEMORY[0x1EEE9AC00](v95);
                        v102[-4] = v80;
                        v102[-3] = &v113;
                        LODWORD(v102[-2]) = 134217984;
                        v102[-1] = v96;
                      }

                      v97 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                      v84 = v98;
                      v99 = HIBYTE(v98) & 0xF;
                      if ((v98 & 0x2000000000000000) == 0)
                      {
                        v99 = v97 & 0xFFFFFFFFFFFFLL;
                      }

                      if (v99)
                      {
                        v82 = v97;

                        goto LABEL_123;
                      }

                      v21 = v108;
                    }

LABEL_125:
                    v93 = String.init(_cocoaString:)();
LABEL_126:
                    v82 = v93;
                    v84 = v94;
LABEL_127:
                    if (v61 == v82 && v63 == v84)
                    {

                      goto LABEL_131;
                    }

                    v100 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v100)
                    {
                      goto LABEL_131;
                    }

LABEL_133:
                    __break(1u);
                  }
                }

                else
                {
                  v87 = v80;
                  v88 = String.init(_nativeStorage:)();
                  if (v89)
                  {
                    v82 = v88;
                    v84 = v89;

                    goto LABEL_127;
                  }

                  v113 = [(__CFString *)v87 length];
                  if (v113)
                  {
                    goto LABEL_125;
                  }
                }

                v82 = 0;
                v84 = 0xE000000000000000;
                goto LABEL_127;
              }

              v90 = [(__CFString *)v80 UTF8String];
              if (v90)
              {
                v91 = String.init(utf8String:)(v90);
                if (v92)
                {
                  goto LABEL_109;
                }

                __break(1u);
LABEL_108:
                v111 = 0;
                _CFIndirectTaggedPointerStringGetContents();
                v91 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                if (!v92)
                {
                  [(__CFString *)v80 mutableCopy];
                  _bridgeAnyObjectToAny(_:)();

                  swift_unknownObjectRelease();
                  swift_dynamicCast();
                  v82 = v109;
                  v84 = v110;
                  goto LABEL_127;
                }

LABEL_109:
                v82 = v91;
                v84 = v92;

                goto LABEL_127;
              }

              goto LABEL_135;
            }

            v113 = [v66 length];
            if (v113)
            {
              goto LABEL_88;
            }
          }

LABEL_66:
          v61 = 0;
          v63 = 0xE000000000000000;
          goto LABEL_91;
        }

        v60 = _objc_getTaggedPointerTag(v58);
        if (v60)
        {
          if (v60 != 22)
          {
            if (v60 == 2)
            {
              MEMORY[0x1EEE9AC00](v60);
              v102[-2] = v59;
              v61 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v63 = v62;

LABEL_86:
              v21 = v108;
              goto LABEL_91;
            }

            goto LABEL_58;
          }

          v69 = [v59 UTF8String];
          if (!v69)
          {
LABEL_136:
            __break(1u);
            return;
          }

          v70 = String.init(utf8String:)(v69);
          if (v71)
          {
            goto LABEL_71;
          }

          __break(1u);
        }

        v111 = 0;
        _CFIndirectTaggedPointerStringGetContents();
        v70 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v71)
        {
          [v59 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v61 = v109;
          v63 = v110;
          goto LABEL_90;
        }

LABEL_71:
        v61 = v70;
        v63 = v71;

LABEL_90:
        goto LABEL_91;
      }

      if (v111)
      {
        if (v109 == 1)
        {
          MEMORY[0x1EEE9AC00](IsCF);
          v102[-4] = v39;
          v102[-3] = &v113;
          LODWORD(v102[-2]) = 1536;
          v102[-1] = v42;
        }

        else
        {
          v48 = [(__CFString *)v39 lengthOfBytesUsingEncoding:4];
          MEMORY[0x1EEE9AC00](v48);
          v102[-4] = v39;
          v102[-3] = &v113;
          LODWORD(v102[-2]) = 134217984;
          v102[-1] = v49;
        }

        v50 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v52 = HIBYTE(v51) & 0xF;
        if ((v51 & 0x2000000000000000) == 0)
        {
          v52 = v50 & 0xFFFFFFFFFFFFLL;
        }

        if (v52)
        {

          goto LABEL_51;
        }

        v21 = v108;
      }

LABEL_41:
      String.init(_cocoaString:)();
      goto LABEL_52;
    }

LABEL_36:

    goto LABEL_52;
  }

  v28 = v103;
  v27 = v104;
  if (v104 >> 60 == 15)
  {
    v29 = 0;
  }

  else
  {
    v29 = v103;
  }

  v30 = 0xC000000000000000;
  if (v104 >> 60 != 15)
  {
    v30 = v104;
  }

  v113 = v29;
  v114 = v30;
  v115 = v106;
  v31 = v106;
  outlined copy of Data?(v28, v27);
  v32 = v107;
  dispatch thunk of Subscriber.receive(_:)();
  v33 = v21;
  v34 = v115;
  outlined consume of Data._Representation(v113, v114);

  v113 = 0;
  dispatch thunk of Subscriber.receive(completion:)();

  (*(v102[0] + 8))(v32, v33);
}

void NSURLSession.DataTaskPublisher.Inner.cancel()()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  os_unfair_lock_lock(v2);
  v3 = *(v0 + 3);
  if (v3)
  {
    v4 = *(v0 + 4);
    *(v0 + 3) = 0;
    *(v0 + 4) = 0;
    outlined consume of NSURLSession.DataTaskPublisher?(v3, v4);
    v5 = *(*v0 + 112);
    v6 = *(v1 + 80);
    v7 = type metadata accessor for Optional();
    (*(*(v7 - 8) + 8))(&v0[v5], v7);
    (*(*(v6 - 8) + 56))(&v0[v5], 1, 1, v6);
    *&v0[*(*v0 + 120)] = 0;
    v8 = *(*v0 + 128);
    v9 = *&v0[v8];
    *&v0[v8] = 0;
    os_unfair_lock_unlock(v2);
    if (v9)
    {
      [v9 cancel];
    }
  }

  else
  {

    os_unfair_lock_unlock(v2);
  }
}

uint64_t type metadata completion function for NSURLSession.DataTaskPublisher.Inner()
{
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id outlined copy of NSURLSession.DataTaskPublisher?(id result, void *a2)
{
  if (result)
  {

    return a2;
  }

  return result;
}

unint64_t type metadata accessor for NSMutableURLRequest()
{
  result = lazy cache variable for type metadata for NSMutableURLRequest;
  if (!lazy cache variable for type metadata for NSMutableURLRequest)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSMutableURLRequest);
  }

  return result;
}

void outlined consume of NSURLSession.DataTaskPublisher?(uint64_t a1, void *a2)
{
  if (a1)
  {
  }
}

uint64_t one-time initialization function for _lock()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyShySOGSo16os_unfair_lock_sVGMd);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x1E69E7CD0];
  _lock = result;
  return result;
}

Swift::Void __swiftcall _logRuntimeIssue(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_181218E20;
  *(inited + 56) = MEMORY[0x1E69E6158];
  *(inited + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(inited + 32) = countAndFlagsBits;
  *(inited + 40) = object;

  specialized withVaList<A>(_:_:)(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pMd);
  swift_arrayDestroy();
  v4 = String.utf8CString.getter();
  MEMORY[0x1865D0220](0, v4 + 32, 0);
}

uint64_t specialized static NSKeyedUnarchiver.__swift_checkClassAndWarnForKeyedArchiving(_:operation:)(uint64_t a1, int a2)
{
  v31 = *MEMORY[0x1E69E9840];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (_swift_isObjCTypeNameSerializable())
  {
    return 0;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v6 = _lock;
  os_unfair_lock_lock((_lock + 24));
  v7 = specialized Set._Variant.insert(_:)(&v30._countAndFlagsBits, a1);
  os_unfair_lock_unlock(v6 + 6);
  if ((v7 & 1) == 0)
  {
    return 1;
  }

  v30._countAndFlagsBits = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_syXlXpMd);
  v8 = String.init<A>(reflecting:)();
  v10 = v9;
  v11 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v11)
  {
    goto LABEL_20;
  }

  v12 = v11;
  isTaggedPointer = _objc_isTaggedPointer(v11);
  v14 = v12;
  v15 = v14;
  if (!isTaggedPointer)
  {
LABEL_13:
    v30._countAndFlagsBits = 0;
    if (__CFStringIsCF())
    {
      if (v30._countAndFlagsBits)
      {
LABEL_30:
        v17 = String.init(_cocoaString:)();
        v19 = v27;
LABEL_31:

        if (a2 != 1)
        {
          goto LABEL_32;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v20 = v15;
      v21 = String.init(_nativeStorage:)();
      if (v22)
      {
        v17 = v21;
        v19 = v22;

        if (a2 == 1)
        {
          goto LABEL_21;
        }

        goto LABEL_32;
      }

      v30._countAndFlagsBits = [(NSString *)v20 length];
      if (v30._countAndFlagsBits)
      {
        goto LABEL_30;
      }
    }

LABEL_20:
    v17 = 0;
    v19 = 0xE000000000000000;
    if (a2 != 1)
    {
      goto LABEL_32;
    }

LABEL_21:
    v23 = 0x7669686372616E75;
    v24 = 0xE900000000000065;
LABEL_33:
    v30._countAndFlagsBits = 0;
    v30._object = 0xE000000000000000;
    _StringGuts.grow(_:)(371);
    MEMORY[0x1865CB0E0](0x6974706D65747441, 0xEE00206F7420676ELL);
    MEMORY[0x1865CB0E0](v23, v24);

    MEMORY[0x1865CB0E0](0x6320746669775320, 0xEE0027207373616CLL);
    MEMORY[0x1865CB0E0](v8, v10);

    MEMORY[0x1865CB0E0](0xD00000000000001ELL, 0x8000000181487970);
    MEMORY[0x1865CB0E0](v17, v19);
    MEMORY[0x1865CB0E0](0xD0000000000000AELL, 0x8000000181487990);
    MEMORY[0x1865CB0E0](v17, v19);

    MEMORY[0x1865CB0E0](0xD000000000000083, 0x8000000181487A40);
    _logRuntimeIssue(_:)(v30);

    return 1;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v14);
  if (!TaggedPointerTag)
  {
    goto LABEL_25;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v17 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v19 = v18;

      if (a2 == 1)
      {
        goto LABEL_21;
      }

LABEL_32:
      v24 = 0xE700000000000000;
      v23 = 0x65766968637261;
      goto LABEL_33;
    }

    goto LABEL_13;
  }

  result = [(NSString *)v15 UTF8String];
  if (result)
  {
    v25 = String.init(utf8String:)(result);
    if (v26)
    {
      goto LABEL_26;
    }

    __break(1u);
LABEL_25:
    _CFIndirectTaggedPointerStringGetContents();
    v25 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v26)
    {
      [(NSString *)v15 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v17 = v28;
      v19 = v29;
      goto LABEL_31;
    }

LABEL_26:
    v17 = v25;
    v19 = v26;

    goto LABEL_31;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance NSArray@<X0>(void *a1@<X8>)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = [v2 initWithArray_];
  result = swift_unknownObjectRelease();
  *a1 = v3;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance [A]@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = static Array._unconditionallyBridgeFromObjectiveC(_:)(a1, *(a2 + 16));
  *a3 = result;
  return result;
}

uint64_t NSArray._toCustomAnyHashable()()
{
  type metadata accessor for __SwiftDeferredNSArray();
  if (swift_dynamicCastClass())
  {
  }

  else
  {
    v1 = v0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableVGMd);
  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();
    [v0 copy];
    v2 = _bridgeCocoaArray<A>(_:)();
    swift_unknownObjectRelease();
    specialized _arrayForceCast<A, B>(_:)(v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays11AnyHashableVGMd);
  lazy protocol witness table accessor for type [AnyHashable] and conformance <A> [A]();
  return AnyHashable.init<A>(_:)();
}

void protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSArray()
{
  v1 = *v0;
  NSArray._toCustomAnyHashable()();
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance NSArray()
{
  v1 = *v0;
  v2 = specialized _copySequenceToContiguousArray<A>(_:)(*v0);

  return v2;
}

id NSArray.init(array:)(void *a1)
{
  type metadata accessor for __SwiftDeferredNSArray();
  if (swift_dynamicCastClass())
  {
  }

  else
  {
    v2 = a1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v3 = swift_dynamicCastClass();
  if (!v3)
  {
    swift_unknownObjectRelease();
    [a1 copy];
    v3 = _bridgeCocoaArray<A>(_:)();
    swift_unknownObjectRelease();
  }

  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1808AF734(v3);

  v5 = [v4 initWithArray_];
  swift_unknownObjectRelease();
  return v5;
}

uint64_t NSArray.customMirror.getter()
{
  type metadata accessor for __SwiftDeferredNSArray();
  if (swift_dynamicCastClass())
  {
  }

  else
  {
    v1 = v0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();
    [v0 copy];
    _bridgeCocoaArray<A>(_:)();
    swift_unknownObjectRelease();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayyXlGMd);
  return Mirror.init(reflecting:)();
}

uint64_t specialized _ContiguousArrayBuffer.storesOnlyElementsOfType<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  result = swift_dynamicCastMetatype();
  if (result)
  {
    return 1;
  }

  v8 = *(a1 + 16);
  if (!v8)
  {
    return 1;
  }

  v9 = 0;
  v10 = (v4 + 8);
  while (v9 < v8)
  {
    v11[1] = *(a1 + 32 + 8 * v9);
    swift_unknownObjectRetain();
    result = swift_dynamicCast();
    if (!result)
    {
      return result;
    }

    ++v9;
    result = (*v10)(v6, a2);
    v8 = *(a1 + 16);
    if (v9 == v8)
    {
      return 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized _ArrayBuffer._nonNative.getter(uint64_t result)
{
  if (result >= 0)
  {
    return result & 0xFFFFFFFFFFFFFF8;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [AnyHashable] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [AnyHashable] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [AnyHashable] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays11AnyHashableVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [AnyHashable] and conformance <A> [A]);
  }

  return result;
}

uint64_t one-time initialization function for heuristics()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation19InflectionHeuristicVGMd);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1812DF280;
  v1 = String.lowercased()();
  *(v0 + 32) = 28261;
  *(v0 + 40) = 0xE200000000000000;
  *(v0 + 48) = v1;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 64) = &outlined read-only object #0 of one-time initialization function for heuristics;
  *(v0 + 72) = v2;
  *(v0 + 80) = closure #1 in variable initialization expression of heuristics;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  v3 = String.lowercased()();
  *(v0 + 112) = 28261;
  *(v0 + 120) = 0xE200000000000000;
  *(v0 + 128) = v3;
  *(v0 + 144) = &outlined read-only object #1 of one-time initialization function for heuristics;
  *(v0 + 152) = v2;
  *(v0 + 160) = closure #5 in variable initialization expression of heuristics;
  *(v0 + 168) = 0;
  *(v0 + 176) = 0;
  *(v0 + 184) = 0;
  v4 = String.lowercased()();
  *(v0 + 192) = 28261;
  *(v0 + 200) = 0xE200000000000000;
  *(v0 + 208) = v4;
  *(v0 + 224) = v2;
  *(v0 + 232) = &outlined read-only object #2 of one-time initialization function for heuristics;
  *(v0 + 240) = closure #6 in variable initialization expression of heuristics;
  *(v0 + 248) = 0;
  *(v0 + 256) = 0;
  *(v0 + 264) = 0;
  v5 = String.lowercased()();
  *(v0 + 272) = 27758;
  *(v0 + 280) = 0xE200000000000000;
  *(v0 + 288) = v5;
  *(v0 + 304) = &outlined read-only object #3 of one-time initialization function for heuristics;
  *(v0 + 312) = v2;
  *(v0 + 320) = closure #1 in variable initialization expression of heuristics;
  *(v0 + 328) = 0;
  *(v0 + 336) = 0;
  *(v0 + 344) = 0;
  v6 = String.lowercased()();
  *(v0 + 352) = 27758;
  *(v0 + 360) = 0xE200000000000000;
  *(v0 + 368) = v6;
  *(v0 + 384) = &outlined read-only object #4 of one-time initialization function for heuristics;
  *(v0 + 392) = v2;
  *(v0 + 400) = closure #5 in variable initialization expression of heuristics;
  *(v0 + 408) = 0;
  *(v0 + 416) = 0;
  *(v0 + 424) = 0;
  v7 = String.lowercased()();
  *(v0 + 432) = 27758;
  *(v0 + 440) = 0xE200000000000000;
  *(v0 + 448) = v7;
  *(v0 + 464) = v2;
  *(v0 + 472) = &outlined read-only object #5 of one-time initialization function for heuristics;
  *(v0 + 480) = closure #6 in variable initialization expression of heuristics;
  *(v0 + 488) = 0;
  *(v0 + 496) = 0;
  *(v0 + 504) = 0;
  v8 = String.lowercased()();
  *(v0 + 512) = 29286;
  *(v0 + 520) = 0xE200000000000000;
  *(v0 + 528) = v8;
  *(v0 + 544) = &outlined read-only object #6 of one-time initialization function for heuristics;
  *(v0 + 552) = v2;
  *(v0 + 560) = _NSBundleDeallocatingImmortalBundle;
  *(v0 + 568) = 0;
  *(v0 + 576) = 0xD000000000000010;
  *(v0 + 584) = 0x8000000181487AF0;
  v9 = String.lowercased()();
  *(v0 + 592) = 29286;
  *(v0 + 600) = 0xE200000000000000;
  *(v0 + 608) = v9;
  *(v0 + 624) = &outlined read-only object #7 of one-time initialization function for heuristics;
  *(v0 + 632) = v2;
  *(v0 + 640) = _NSBundleDeallocatingImmortalBundle;
  *(v0 + 648) = 0;
  *(v0 + 656) = xmmword_1812DF290;
  v10 = String.lowercased()();
  *(v0 + 672) = 29286;
  *(v0 + 680) = 0xE200000000000000;
  *(v0 + 688) = v10;
  *(v0 + 704) = &outlined read-only object #8 of one-time initialization function for heuristics;
  *(v0 + 712) = v2;
  *(v0 + 720) = _NSBundleDeallocatingImmortalBundle;
  *(v0 + 728) = 0;
  *(v0 + 736) = 0xD000000000000011;
  *(v0 + 744) = 0x8000000181487B10;
  v11 = String.lowercased()();
  *(v0 + 752) = 29286;
  *(v0 + 760) = 0xE200000000000000;
  *(v0 + 768) = v11;
  *(v0 + 784) = &outlined read-only object #9 of one-time initialization function for heuristics;
  *(v0 + 792) = v2;
  *(v0 + 800) = _NSBundleDeallocatingImmortalBundle;
  *(v0 + 808) = 0;
  *(v0 + 816) = xmmword_1812DF2A0;
  v12 = String.lowercased()();
  *(v0 + 832) = 29286;
  *(v0 + 840) = 0xE200000000000000;
  *(v0 + 848) = v12;
  *(v0 + 864) = &outlined read-only object #10 of one-time initialization function for heuristics;
  *(v0 + 872) = v2;
  *(v0 + 880) = _NSBundleDeallocatingImmortalBundle;
  *(v0 + 888) = 0;
  *(v0 + 896) = xmmword_1812DF2B0;
  v13 = String.lowercased()();
  *(v0 + 912) = 28523;
  *(v0 + 920) = 0xE200000000000000;
  *(v0 + 928) = v13;
  *(v0 + 944) = v2;
  *(v0 + 952) = &outlined read-only object #11 of one-time initialization function for heuristics;
  *(v0 + 960) = closure #12 in variable initialization expression of heuristics;
  *(v0 + 968) = 0;
  *(v0 + 984) = 0;
  *(v0 + 976) = 0;
  v14 = String.lowercased()();
  *(v0 + 992) = 28523;
  *(v0 + 1000) = 0xE200000000000000;
  *(v0 + 1008) = v14;
  *(v0 + 1024) = v2;
  *(v0 + 1032) = &outlined read-only object #12 of one-time initialization function for heuristics;
  *(v0 + 1040) = closure #13 in variable initialization expression of heuristics;
  *(v0 + 1048) = 0;
  *(v0 + 1064) = 0;
  *(v0 + 1056) = 0;
  v15 = String.lowercased()();
  *(v0 + 1072) = 28523;
  *(v0 + 1080) = 0xE200000000000000;
  *(v0 + 1088) = v15;
  *(v0 + 1104) = v2;
  *(v0 + 1112) = &outlined read-only object #13 of one-time initialization function for heuristics;
  *(v0 + 1120) = closure #14 in variable initialization expression of heuristics;
  *(v0 + 1128) = 0;
  *(v0 + 1144) = 0;
  *(v0 + 1136) = 0;
  v16 = String.lowercased()();
  *(v0 + 1152) = 28523;
  *(v0 + 1160) = 0xE200000000000000;
  *(v0 + 1168) = v16;
  *(v0 + 1184) = v2;
  *(v0 + 1192) = &outlined read-only object #14 of one-time initialization function for heuristics;
  *(v0 + 1200) = closure #15 in variable initialization expression of heuristics;
  *(v0 + 1208) = 0;
  *(v0 + 1224) = 0;
  *(v0 + 1216) = 0;
  v17 = String.lowercased()();
  *(v0 + 1232) = 28523;
  *(v0 + 1240) = 0xE200000000000000;
  *(v0 + 1248) = v17;
  *(v0 + 1264) = v2;
  *(v0 + 1272) = &outlined read-only object #15 of one-time initialization function for heuristics;
  *(v0 + 1280) = closure #16 in variable initialization expression of heuristics;
  *(v0 + 1288) = 0;
  *(v0 + 1304) = 0;
  *(v0 + 1296) = 0;
  v18 = String.lowercased()();
  *(v0 + 1312) = 28523;
  *(v0 + 1320) = 0xE200000000000000;
  *(v0 + 1328) = v18;
  *(v0 + 1344) = v2;
  *(v0 + 1352) = &outlined read-only object #16 of one-time initialization function for heuristics;
  *(v0 + 1360) = closure #17 in variable initialization expression of heuristics;
  *(v0 + 1368) = 0;
  *(v0 + 1384) = 0;
  *(v0 + 1376) = 0;
  v20 = String.lowercased()();
  result = v20._countAndFlagsBits;
  *(v0 + 1392) = 29541;
  *(v0 + 1400) = 0xE200000000000000;
  *(v0 + 1408) = v20;
  *(v0 + 1424) = &outlined read-only object #17 of one-time initialization function for heuristics;
  *(v0 + 1432) = v2;
  *(v0 + 1440) = closure #5 in variable initialization expression of heuristics;
  *(v0 + 1448) = 0;
  *(v0 + 1464) = 0;
  *(v0 + 1456) = 0;
  heuristics._rawValue = v0;
  return result;
}

id closure #13 in variable initialization expression of heuristics(void *a1)
{
  [a1 setGrammaticalCase_];

  return [a1 set:1 clusivity:?];
}

unint64_t lazy protocol witness table accessor for type _LocaleBridged and conformance _LocaleBridged()
{
  result = lazy protocol witness table cache variable for type _LocaleBridged and conformance _LocaleBridged;
  if (!lazy protocol witness table cache variable for type _LocaleBridged and conformance _LocaleBridged)
  {
    type metadata accessor for _LocaleBridged();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _LocaleBridged and conformance _LocaleBridged);
  }

  return result;
}

unint64_t specialized static NSMorphology._heuristicMorphology(locale:prefix:suffix:featureNamePointer:matchedPrefixPointer:matchedSuffixPointer:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, void **a6, uint64_t *a7, uint64_t *a8)
{
  v127 = *MEMORY[0x1E69E9840];
  v112 = *(a1 + 8);
  Language = [objc_allocWithZone(NSMorphology) init];
  if (one-time initialization token for heuristics != -1)
  {
LABEL_94:
    swift_once();
  }

  rawValue = heuristics._rawValue;
  v103 = *(heuristics._rawValue + 2);
  if (!v103)
  {
    *a7 = 0;
    *a8 = 0;
    goto LABEL_85;
  }

  v84 = Language;
  ObjectType = swift_getObjectType();
  v89 = 0;
  v90 = 0;
  v86 = 0;
  v11 = 0;
  v102 = *(v112 + 352);
  v101 = rawValue + 32;
  v110 = (v112 + 488);
  v111 = ObjectType;
  v91 = 0x100000001;
  v94 = 1;
  do
  {
    v12 = &v101[80 * v11];
    v117[0] = *v12;
    v13 = *(v12 + 4);
    v15 = *(v12 + 1);
    v14 = *(v12 + 2);
    v119 = *(v12 + 3);
    v120 = v13;
    v117[1] = v15;
    v118 = v14;
    v16 = v117[0];
    v17 = v15;
    outlined init with copy of InflectionHeuristic(v117, &v114);

    v102(v116, v111, v112);
    v123 = v116[2];
    v124 = v116[3];
    v125 = v116[4];
    v126 = v116[5];
    v121 = v116[0];
    v122 = v116[1];
    v18 = *(&v116[0] + 1);
    if (*(&v116[0] + 1))
    {
      Language = *(&v122 + 1);
      countAndFlagsBits = v122;
      v20 = v121;

      outlined destroy of Locale.Language(&v121);
      if (!*(&v16 + 1))
      {
        goto LABEL_27;
      }
    }

    else
    {
      v23 = v124;
      v24 = v125;
      v25 = *(&v126 + 1);
      v104 = v126;
      v114 = 0;
      v115 = 0xE000000000000000;
      if (*(&v123 + 1))
      {
        if ((*(&v123 + 1) & 0x2000000000000000) != 0 ? HIBYTE(*(&v123 + 1)) & 0xFLL : v123 & 0xFFFFFFFFFFFFLL)
        {
          MEMORY[0x1865CB0E0](45, 0xE100000000000000);
          MEMORY[0x1865CB0E0](v23, *(&v23 + 1));
        }
      }

      if (*(&v24 + 1))
      {
        v27 = HIBYTE(*(&v24 + 1)) & 0xFLL;
        if ((*(&v24 + 1) & 0x2000000000000000) == 0)
        {
          v27 = v24 & 0xFFFFFFFFFFFFLL;
        }

        if (v27)
        {
          MEMORY[0x1865CB0E0](95, 0xE100000000000000);
          MEMORY[0x1865CB0E0](v104, v25);
        }
      }

      String.utf8CString.getter();

      Language = uloc_getLanguage();

      if (Language <= 0 || (v113[Language] = 0, v28 = MEMORY[0x1865CAEB0](v113), !v29))
      {
        outlined destroy of Locale.Language(&v121);
        if (*(&v16 + 1))
        {
          outlined copy of Locale.LanguageCode?(v16, *(&v16 + 1));

          v18 = 0;
          v20 = 0;
LABEL_27:
          outlined consume of Locale.LanguageCode?(v16, *(&v16 + 1));
          outlined consume of Locale.LanguageCode?(v20, v18);
LABEL_29:
          outlined destroy of InflectionHeuristic(v117);
          goto LABEL_5;
        }

        v21 = v16;
        v22 = 0;
        goto LABEL_31;
      }

      v20 = v28;
      v18 = v29;
      v30 = String.lowercased()();
      countAndFlagsBits = v30._countAndFlagsBits;
      Language = v30._object;
      outlined destroy of Locale.Language(&v121);
      if (!*(&v16 + 1))
      {
        goto LABEL_27;
      }
    }

    if (__PAIR128__(Language, countAndFlagsBits) == v17)
    {
      outlined copy of Locale.LanguageCode?(v16, *(&v16 + 1));
      outlined consume of Locale.LanguageCode?(v20, v18);

      v22 = *(&v16 + 1);
      v21 = v16;
LABEL_31:
      outlined consume of Locale.LanguageCode?(v21, v22);
      goto LABEL_32;
    }

    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined copy of Locale.LanguageCode?(v16, *(&v16 + 1));
    outlined consume of Locale.LanguageCode?(v20, v18);

    outlined consume of Locale.LanguageCode?(v16, *(&v16 + 1));
    if ((v31 & 1) == 0)
    {
      goto LABEL_29;
    }

LABEL_32:
    v32 = *(&v118 + 1);
    v33 = v118;
    if ((v94 & 1) == 0 || (v92 = *(v118 + 16)) == 0)
    {
      if ((v91 & 1) == 0)
      {
        outlined destroy of InflectionHeuristic(v117);
        v91 = 0;
        goto LABEL_5;
      }

      if (!*(*(&v118 + 1) + 16))
      {
        outlined destroy of InflectionHeuristic(v117);
        v91 = 0x100000001;
        goto LABEL_5;
      }

      BYTE4(v91) = 1;
      v92 = *(v118 + 16);
      if (!v92)
      {
        v107 = v11;
        v88 = 0;
        goto LABEL_52;
      }
    }

    v105 = *(&v118 + 1);
    v107 = v11;
    v34 = 0;
    v95 = *v110;
    v97 = v118 + 32;
    v87 = v118;
    while (2)
    {
      if (v34 >= *(v33 + 16))
      {
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
        goto LABEL_94;
      }

      v35 = *(v97 + 16 * v34 + 8);
      *&v116[0] = *(v97 + 16 * v34);
      *(&v116[0] + 1) = v35;
      v114 = a2;
      v115 = a3;
      lazy protocol witness table accessor for type String and conformance String();
      StringProtocol._ephemeralString.getter();
      StringProtocol._ephemeralString.getter();
      v36 = String._bridgeToObjectiveCImpl()();

      v37 = String._bridgeToObjectiveCImpl()();

      Language = &v114;
      v38 = StringProtocol._toUTF16Offsets(_:)();
      v40 = v39 - v38;
      if (__OFSUB__(v39, v38))
      {
        goto LABEL_89;
      }

      v41 = v38;
      v42 = v95(v111, v112);
      v43 = [v36 rangeOfString:v37 options:9 range:v41 locale:{v40, v42}];
      Language = v44;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      if (v43 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_38;
      }

      if (__OFADD__(v43, Language))
      {
        goto LABEL_92;
      }

      StringProtocol._toUTF16Indices(_:)();
      Language = v45;

      v46 = specialized Collection.suffix(from:)(Language, a2, a3);
      v48 = v47;

      v49 = v46;
      do
      {
        if (!((v49 ^ v48) >> 14))
        {

          String.subscript.getter();
          v88 = String.UTF16View.distance(from:to:)();

          v93 = 0;
          v32 = v105;
          v51 = *(v105 + 16);
          if (v51)
          {
            goto LABEL_53;
          }

          goto LABEL_64;
        }

        Substring.subscript.getter();
        v49 = Substring.index(after:)();

        v50 = Character.isPunctuation.getter();
        swift_bridgeObjectRelease_n();
      }

      while ((v50 & 1) != 0);

      v32 = v105;
      v33 = v87;
LABEL_38:
      if (++v34 != v92)
      {
        continue;
      }

      break;
    }

    v88 = 0;
LABEL_52:
    v93 = 1;
    v51 = *(v32 + 16);
    if (v51)
    {
LABEL_53:
      v52 = 0;
      v96 = *v110;
      v98 = v32 + 32;
      v106 = v32;
      v85 = v51;
LABEL_55:
      if (v52 >= *(v32 + 16))
      {
        goto LABEL_90;
      }

      v53 = *(v98 + 16 * v52 + 8);
      *&v116[0] = *(v98 + 16 * v52);
      *(&v116[0] + 1) = v53;
      v114 = a4;
      v115 = a5;
      lazy protocol witness table accessor for type String and conformance String();
      StringProtocol._ephemeralString.getter();
      StringProtocol._ephemeralString.getter();
      v54 = String._bridgeToObjectiveCImpl()();

      v55 = String._bridgeToObjectiveCImpl()();

      Language = &v114;
      v56 = StringProtocol._toUTF16Offsets(_:)();
      v58 = v57 - v56;
      if (__OFSUB__(v57, v56))
      {
        goto LABEL_91;
      }

      v59 = v56;
      v60 = v96(v111, v112);
      v61 = [v54 rangeOfString:v55 options:12 range:v59 locale:{v58, v60}];
      Language = v62;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      if (v61 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_54;
      }

      if (__OFADD__(v61, Language))
      {
        goto LABEL_93;
      }

      StringProtocol._toUTF16Indices(_:)();
      Language = v63;
      v64 = String.subscript.getter();
      v66 = v65;
      v67 = v64;
      while ((v67 ^ v66) >> 14)
      {
        Substring.subscript.getter();
        v67 = Substring.index(after:)();

        v68 = Character.isPunctuation.getter();
        swift_bridgeObjectRelease_n();
        if ((v68 & 1) == 0)
        {

          v51 = v85;
LABEL_54:
          ++v52;
          v32 = v106;
          if (v52 == v51)
          {
            goto LABEL_64;
          }

          goto LABEL_55;
        }
      }

      String.subscript.getter();
      v69 = String.UTF16View.distance(from:to:)();

      v70 = 0;
      v71 = v93;
LABEL_67:
      v72 = *(&v120 + 1);
      (v119)(v84);

      outlined destroy of InflectionHeuristic(v117);
      if (v72)
      {

        v86 = v72;
      }

      v11 = v107;
      if (v94)
      {
        v73 = v88;
      }

      else
      {
        v73 = v90;
      }

      v94 &= v71;
      v74 = v89;
      if ((v91 & 0x100000000) != 0)
      {
        v74 = v69;
      }

      v89 = v74;
      v90 = v73;
      LOBYTE(v91) = BYTE4(v91) & v70;
      BYTE4(v91) &= v70;
      goto LABEL_5;
    }

LABEL_64:
    v71 = v93;
    if ((v93 & 1) == 0)
    {
      v69 = 0;
      v70 = 1;
      goto LABEL_67;
    }

    outlined destroy of InflectionHeuristic(v117);
    v11 = v107;
LABEL_5:
    ++v11;
  }

  while (v11 != v103);
  v75 = v90;
  if (v94)
  {
    v75 = 0;
  }

  if (v75 < 0)
  {
    __break(1u);
    goto LABEL_96;
  }

  *a7 = v75;
  v76 = v89;
  if ((v91 & 0x100000000) != 0)
  {
    v76 = 0;
  }

  if (v76 < 0)
  {
LABEL_96:
    __break(1u);
  }

  *a8 = v76;
  if (v86)
  {
    v77 = [objc_allocWithZone(NSString) initWithString_];
    swift_unknownObjectRelease();
    v78 = *a6;
    *a6 = v77;
  }

  Language = v84;
LABEL_85:
  v79 = [(NSMorphology *)Language isIdentity];

  if (v79)
  {

    return 0;
  }

  return Language;
}

uint64_t getEnumTagSinglePayload for InflectionHeuristic(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t storeEnumTagSinglePayload for InflectionHeuristic(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t specialized closure #2 in static Set._forceBridgeFromObjectiveC(_:result:)(uint64_t a1, uint64_t a2, void *a3)
{
  outlined init with copy of Any(a1, v8);
  result = swift_dynamicCast();
  v5 = *a3;
  if (*(*a3 + 16) >= a3[1])
  {
    __break(1u);
  }

  else
  {
    outlined init with copy of AnyHashable(v7, v6);
    specialized _NativeSet._unsafeInsertNew(_:)(v6, v5);
    return outlined destroy of AnyHashable(v7);
  }

  return result;
}

unint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance Set<A>@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  result = static Set._unconditionallyBridgeFromObjectiveC(_:)(a1, *(a2 + 16), *(a2 + 24));
  *a3 = result;
  return result;
}

uint64_t NSSet._toCustomAnyHashable()()
{
  v1 = v0;
  swift_unknownObjectRetain();
  v2 = static Set._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
  if (v2)
  {
    goto LABEL_8;
  }

  v3 = [v0 count];
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys11AnyHashableVGMd);
    v4 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CD0];
  }

  v14 = v4;
  v15 = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = &v14;
  v6 = swift_allocObject();
  *(v6 + 16) = partial apply for specialized closure #2 in static Set._forceBridgeFromObjectiveC(_:result:);
  *(v6 + 24) = v5;
  v13[4] = thunk for @callee_guaranteed (@in_guaranteed Any, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
  v13[5] = v6;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed Any, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v13[3] = &block_descriptor_23;
  v7 = _Block_copy(v13);

  [v1 enumerateObjectsUsingBlock_];
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v10 = v15;
    v11 = v14;
    v12 = *(v14 + 16);

    if (v12 == v10)
    {
      v2 = v11;
LABEL_8:
      v13[0] = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sShys11AnyHashableVGMd);
      lazy protocol witness table accessor for type Set<AnyHashable> and conformance Set<A>();
      return AnyHashable.init<A>(_:)();
    }
  }

  __break(1u);
  return result;
}

void protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSSet()
{
  v1 = *v0;
  NSSet._toCustomAnyHashable()();
}

id NSSet.init(set:)(void *a1)
{
  result = [a1 count];
  if ((result - 0x1000000000000000) >> 61 == 7)
  {
    v3 = result;
    v4 = swift_slowAlloc();
    CFSetGetValues(a1, v4);
    v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithObjects:v4 count:v3];
    MEMORY[0x1865D2690](v4, -1, -1);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t NSSet.customMirror.getter()
{
  type metadata accessor for NSObject();
  lazy protocol witness table accessor for type NSObject and conformance NSObject();
  swift_unknownObjectRetain();
  if (!static Set._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)())
  {
    [v0 copyWithZone_];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySo8NSObjectCGMd);
  return Mirror.init(reflecting:)();
}

uint64_t protocol witness for CVarArg._cVarArgEncoding.getter in conformance Set<A>()
{
  swift_getWitnessTable();

  return CVarArg<>._cVarArgEncoding.getter();
}

uint64_t _NativeSet._unsafeUpdate(with:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  v9 = *(v8 + 24);
  v31 = v10;
  v29 = v9;
  result = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = -1 << *(v7 + 32);
  v13 = result & ~v12;
  v14 = v13 >> 6;
  v30 = v7 + 56;
  v15 = *(v7 + 56 + 8 * (v13 >> 6));
  v16 = 1 << v13;
  if (((1 << v13) & v15) != 0)
  {
    v27 = v4;
    v28 = ~v12;
    v19 = *(v4 + 16);
    v18 = v4 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    while (1)
    {
      v17(v6, *(v7 + 48) + v20 * v13, v3);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      result = (*(v18 - 8))(v6, v3);
      if (v21)
      {
        return (*(v27 + 40))(*(v7 + 48) + v20 * v13, v31, v3);
      }

      v13 = (v13 + 1) & v28;
      v14 = v13 >> 6;
      v15 = *(v30 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) == 0)
      {
        v4 = v27;
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    if (*(v7 + 16) >= *(v7 + 24))
    {
      __break(1u);
    }

    else
    {
      v22 = v31;
      *(v30 + 8 * v14) = v16 | v15;
      result = (*(v4 + 32))(*(v7 + 48) + *(v4 + 72) * v13, v22, v3);
      v23 = *(v7 + 16);
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (!v24)
      {
        *(v7 + 16) = v25;
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Set<AnyHashable> and conformance Set<A>()
{
  result = lazy protocol witness table cache variable for type Set<AnyHashable> and conformance Set<A>;
  if (!lazy protocol witness table cache variable for type Set<AnyHashable> and conformance Set<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sShys11AnyHashableVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Set<AnyHashable> and conformance Set<A>);
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void closure #1 in setupThermalStateNotificationAndFetchState #1 @Sendable () in _NSSwiftProcessInfo.thermalState.getter(int a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!notify_get_state(a1, v4))
  {
    v2 = specialized static _NSSwiftProcessInfo._mapOSThermalToThermalState(_:)(v4[0]);
    if (one-time initialization token for _globalState != -1)
    {
      swift_once();
    }

    v3 = static _NSSwiftProcessInfo._globalState;
    os_unfair_lock_lock((static _NSSwiftProcessInfo._globalState + 44));
    *(v3 + 16) = v2;
    *(v3 + 24) = 0;
    *(v3 + 28) = a1;
    *(v3 + 32) = 0;
    os_unfair_lock_unlock((v3 + 44));
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned Int32) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for _NSSwiftProcessInfo.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 57))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t storeEnumTagSinglePayload for _NSSwiftProcessInfo.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

void specialized closure #1 in setupPowerStateNotificationAndFetchState #1 @Sendable () in _NSSwiftProcessInfo.isLowPowerModeEnabled.getter(int a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!notify_get_state(a1, v4))
  {
    v2 = v4[0];
    if (one-time initialization token for _globalState != -1)
    {
      swift_once();
    }

    v3 = static _NSSwiftProcessInfo._globalState;
    os_unfair_lock_lock((static _NSSwiftProcessInfo._globalState + 44));
    *(v3 + 36) = a1;
    *(v3 + 40) = 0;
    *(v3 + 33) = v2 != 0;
    os_unfair_lock_unlock((v3 + 44));
  }
}

id specialized _NSSwiftProcessInfo.beginActivity(options:reason:expirationHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v8 = [objc_allocWithZone(_NSActivityAssertion) init];
  v9 = String._bridgeToObjectiveCImpl()();
  if (a4)
  {
    v12[4] = a4;
    v12[5] = a5;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 1107296256;
    v12[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v12[3] = &block_descriptor_26;
    a4 = _Block_copy(v12);
  }

  v10 = [v8 _initWithActivityOptions_reason_expirationHandler_];
  _Block_release(a4);
  swift_unknownObjectRelease();
  return v10;
}

unsigned __int8 *specialized _NSSwiftProcessInfo.macCatalystVersionIs(atLeastVersion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62[4] = *MEMORY[0x1E69E9840];
  String._bridgeToObjectiveCImpl()();
  v6 = _CFCopySystemVersionDictionaryValue();
  swift_unknownObjectRelease();
  if (!v6)
  {
LABEL_28:
    v8 = 0;
    goto LABEL_29;
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  v8 = v7;
  if (v7)
  {
    isTaggedPointer = _objc_isTaggedPointer(v7);
    v10 = v6;
    if (isTaggedPointer)
    {
      TaggedPointerTag = _objc_getTaggedPointerTag(v8);
      switch(TaggedPointerTag)
      {
        case 0:
          v60 = 0;
          _CFIndirectTaggedPointerStringGetContents();
          v20 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          if (v21)
          {
            v12 = v20;
            v14 = v21;
          }

          else
          {
            [v8 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
            v12 = v58;
            v14 = v59;
          }

          goto LABEL_22;
        case 0x16:
          v16 = v10;
          v19 = [v8 UTF8String];
          result = v8;
          if (v19)
          {
            result = String.init(utf8String:)(v19);
            if (v18)
            {
              goto LABEL_16;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
          return result;
        case 2:
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v55 = v8;
          v12 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v14 = v13;

          goto LABEL_22;
      }
    }

    LOBYTE(v58) = 0;
    v62[0] = 0;
    LOBYTE(v60) = 0;
    v61 = 0;
    if (__CFStringIsCF())
    {

      v12 = 0;
      v14 = 0xE000000000000000;
      goto LABEL_22;
    }

    v16 = v10;
    result = String.init(_nativeStorage:)();
    if (!v18)
    {
      v62[0] = [v8 length];
      if (v62[0])
      {
        v12 = String.init(_cocoaString:)();
        v14 = v22;
      }

      else
      {

        v12 = 0;
        v14 = 0xE000000000000000;
      }

      goto LABEL_22;
    }

LABEL_16:
    v12 = result;
    v14 = v18;

LABEL_22:
    v62[0] = 46;
    v62[1] = 0xE100000000000000;
    MEMORY[0x1EEE9AC00](v15);
    v55 = v62;
    v23 = specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(0x7FFFFFFFFFFFFFFFLL, 1, partial apply for specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:), &v54, v12, v14, &v56);
    v24 = v23;
    if (v23[2])
    {
      v25 = v23[4];
      v26 = v23[5];
      if ((v26 ^ v25) >= 0x4000)
      {
        v57 = a3;
        v28 = v23[6];
        v27 = v23[7];
        v29 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_Si_SsTG5SiTf1cn_n(v25, v26, v28, v27, 10);
        if ((v30 & 0x100) != 0)
        {

          v31 = specialized _parseInteger<A, B>(ascii:radix:)(v25, v26, v28, v27, 10);
          v34 = v33;

          if ((v34 & 1) == 0)
          {
LABEL_32:
            v56 = a1;
            v35 = v24[2];
            if (v35 > 1)
            {
              v36 = v24[8];
              v37 = v24[9];
              if ((v37 ^ v36) >= 0x4000)
              {
                v38 = v24[10];
                v39 = v24[11];
                v40 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_Si_SsTG5SiTf1cn_n(v24[8], v24[9], v38, v39, 10);
                if ((v41 & 0x100) != 0)
                {

                  v8 = specialized _parseInteger<A, B>(ascii:radix:)(v36, v37, v38, v39, 10);
                  v43 = v42;

                  if ((v43 & 1) == 0)
                  {
                    goto LABEL_53;
                  }
                }

                else if ((v41 & 1) == 0)
                {
                  v8 = v40;
LABEL_53:
                  a3 = v57;
                  if (v35 == 2)
                  {

                    v32 = 0;
                    a1 = v56;
                    goto LABEL_40;
                  }

                  a1 = v56;
                  if (v24[2] < 3uLL)
                  {
                    __break(1u);
                  }

                  else
                  {
                    v46 = v24[12];
                    v47 = v24[13];
                    v48 = v24[14];
                    v49 = v24[15];

                    if ((v47 ^ v46) >= 0x4000)
                    {
                      v50 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_Si_SsTG5SiTf1cn_n(v46, v47, v48, v49, 10);
                      if ((v51 & 0x100) != 0)
                      {
                        v50 = specialized _parseInteger<A, B>(ascii:radix:)(v46, v47, v48, v49, 10);
                      }

                      v52 = v50;
                      v53 = v51;

                      a3 = v57;
                      if (v53)
                      {
                        v32 = 0;
                      }

                      else
                      {
                        v32 = v52;
                      }

                      goto LABEL_40;
                    }
                  }

                  v32 = 0;
                  goto LABEL_39;
                }
              }
            }

            v8 = 0;
            v32 = 0;
            a1 = v56;
LABEL_39:
            a3 = v57;
            goto LABEL_40;
          }
        }

        else if ((v30 & 1) == 0)
        {
          v31 = v29;
          goto LABEL_32;
        }

        v8 = 0;
        v32 = 0;
        v31 = -1;
        goto LABEL_39;
      }
    }

    goto LABEL_28;
  }

LABEL_29:
  v32 = 0;
  v31 = -1;
LABEL_40:
  v45 = v8 > a2 || v32 >= a3;
  if (v8 < a2)
  {
    v45 = 0;
  }

  if (v31 > a1)
  {
    v45 = 1;
  }

  if (v31 >= a1)
  {
    return v45;
  }

  else
  {
    return 0;
  }
}

uint64_t partial apply for closure #1 in _NSSwiftProcessInfo._setShouldRelaunchDue(toAutomaticTerminationStateChangedHandler:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = *(v1 + 24);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 32);
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v3);
  result = outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v5);
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for _NSSwiftProcessInfo.GlobalState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 17);
  if (v3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = *(a1 + 17);
  }

  v5 = v4 - 3;
  if (v3 < 2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for _NSSwiftProcessInfo.GlobalState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 17) = a2 + 2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _NSSwiftProcessInfo.PowerState and conformance _NSSwiftProcessInfo.PowerState()
{
  result = lazy protocol witness table cache variable for type _NSSwiftProcessInfo.PowerState and conformance _NSSwiftProcessInfo.PowerState;
  if (!lazy protocol witness table cache variable for type _NSSwiftProcessInfo.PowerState and conformance _NSSwiftProcessInfo.PowerState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _NSSwiftProcessInfo.PowerState and conformance _NSSwiftProcessInfo.PowerState);
  }

  return result;
}

id NSData.lastRange<A, B>(of:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return NSData.lastRange<A, B>(of:in:)(a1, a2, a3, a4, a5, a6, 1);
}

id NSData.firstRange<A, B>(of:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return NSData.lastRange<A, B>(of:in:)(a1, a2, a3, a4, a5, a6, 0);
}

id NSData.lastRange<A, B>(of:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = v7;
  v41 = *MEMORY[0x1E69E9840];
  v12 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = specialized Data.init<A>(_:)(v16, v17, *(*(*(*(v15 + 8) + 8) + 8) + 8));
  v20 = v19 >> 62;
  if ((v19 >> 62) <= 1)
  {
    v37 = a2;
    if (!v20)
    {
      v39 = v18;
      LOWORD(v40) = v19;
      BYTE2(v40) = BYTE2(v19);
      BYTE3(v40) = BYTE3(v19);
      BYTE4(v40) = BYTE4(v19);
      BYTE5(v40) = BYTE5(v19);
      v21 = v18;
      v22 = v7;
      v23 = a7;
      v24 = v19;
      v25 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:&v39 length:BYTE6(v19)];
LABEL_9:
      v27 = v25;
      v28 = v21;
      v29 = v24;
      a7 = v23;
      v9 = v22;
      a2 = v37;
      goto LABEL_11;
    }

    v26 = v18 >> 32;
    if (v18 >> 32 < v18)
    {
      goto LABEL_19;
    }

    v21 = v18;
    v18 = v18;
LABEL_8:
    v22 = v7;
    v23 = a7;
    v24 = v19;
    v25 = __DataStorage.bridgedReference(_:)(v18, v26);
    goto LABEL_9;
  }

  if (v20 == 2)
  {
    v26 = *(v18 + 24);
    v21 = v18;
    v18 = *(v18 + 16);
    v37 = a2;
    goto LABEL_8;
  }

  v30 = v18;
  v31 = v19;
  v27 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) init];
  v28 = v30;
  v29 = v31;
LABEL_11:
  outlined consume of Data._Representation(v28, v29);
  (*(v12 + 16))(v14, a2, a4);
  v38 = xmmword_1812DF640;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd);
  lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>(&lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>);
  dispatch thunk of RangeExpression.relative<A>(to:)();
  (*(v12 + 8))(v14, a4);
  if (__OFSUB__(v40, v39))
  {
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  v32 = [v9 rangeOfData:v27 options:a7 range:{v39, v40 - v39}];
  v34 = v33;

  if (v32 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  if (__OFADD__(v32, v34))
  {
    goto LABEL_18;
  }

  return v32;
}

uint64_t NSData.regions.getter()
{
  v8 = MEMORY[0x1E69E7CC0];
  v1 = swift_allocObject();
  *(v1 + 16) = &v8;
  *(v1 + 24) = v0;
  v2 = swift_allocObject();
  *(v2 + 16) = partial apply for closure #1 in NSData.regions.getter;
  *(v2 + 24) = v1;
  aBlock[4] = _sSVSo8_NSRangeVSpy10ObjectiveC8ObjCBoolVGIgyyy_SVAbFIegyyy_TRTA_0;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeRawPointer, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  aBlock[3] = &block_descriptor_9;
  v3 = _Block_copy(aBlock);
  v4 = v0;

  [v4 enumerateByteRangesUsingBlock_];
  _Block_release(v3);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v6 = v8;

    return v6;
  }

  return result;
}

uint64_t closure #1 in NSData.regions.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a6;
  v20[0] = _NSBundleDeallocatingImmortalBundle;
  v20[1] = v10;
  v11 = a6;
  v12 = specialized Data.init(bytesNoCopy:count:deallocator:)(a1, a3, v20);
  v14 = v13;
  v15 = *a5;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a5 = v15;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 16) + 1, 1, v15);
    v15 = result;
    *a5 = result;
  }

  v18 = *(v15 + 16);
  v17 = *(v15 + 24);
  if (v18 >= v17 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v15);
    v15 = result;
    *a5 = result;
  }

  *(v15 + 16) = v18 + 1;
  v19 = v15 + 16 * v18;
  *(v19 + 32) = v12;
  *(v19 + 40) = v14;
  return result;
}

uint64_t closure #1 in NSData.subscript.getter(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4, void *a5, uint64_t a6, _BYTE *a7)
{
  v7 = *a5 - a2;
  if (__OFSUB__(*a5, a2))
  {
    __break(1u);
    goto LABEL_8;
  }

  *a5 = v7;
  if (a6 < a2)
  {
    return result;
  }

  if (__OFSUB__(a6, a2))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  if (a6 - a2 < a3)
  {
    *a7 = *(result + v7);
    *a4 = 1;
  }

  return result;
}

uint64_t protocol witness for DataProtocol.regions.getter in conformance NSData@<X0>(uint64_t *a1@<X8>)
{
  result = NSData.regions.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for DataProtocol.firstRange<A, B>(of:in:) in conformance NSData@<X0>(uint64_t a1@<X8>, uint64_t (*a2)(void))
{
  result = a2();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  return result;
}

void *protocol witness for BidirectionalCollection.index(before:) in conformance NSData@<X0>(void *result@<X0>, uint64_t *a2@<X8>)
{
  v4 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    result = [*v2 length];
    if ((v4 & 0x8000000000000000) == 0 && v4 < result)
    {
      *a2 = v4;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for BidirectionalCollection.formIndex(before:) in conformance NSData(uint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    result = [*v1 length];
    if ((v2 & 0x8000000000000000) == 0 && v2 < result)
    {
      *v3 = v2;
      return result;
    }
  }

  __break(1u);
  return result;
}

id protocol witness for Collection.endIndex.getter in conformance NSData@<X0>(void *a1@<X8>)
{
  result = [*v1 length];
  *a1 = result;
  return result;
}

uint64_t protocol witness for Collection.subscript.getter in conformance NSData@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v7 = *v2;
  result = [*v2 length];
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
  a2[2] = v7;

  return v7;
}

unint64_t protocol witness for Collection.indices.getter in conformance NSData@<X0>(void *a1@<X8>)
{
  result = [*v1 length];
  if ((result & 0x8000000000000000) != 0)
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

void *protocol witness for RandomAccessCollection.index(_:offsetBy:) in conformance NSData@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    result = [*v3 length];
    if ((v5 & 0x8000000000000000) == 0 && result >= v5)
    {
      *a3 = v5;
      return result;
    }
  }

  __break(1u);
  return result;
}

id protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance NSData@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

id protocol witness for RandomAccessCollection.distance(from:to:) in conformance NSData(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *v2;
  result = [*v2 length];
  if (v3 < 0 || result < v3)
  {
    __break(1u);
  }

  else
  {
    result = [v5 length];
    if ((v4 & 0x8000000000000000) == 0 && result >= v4)
    {
      return (v4 - v3);
    }
  }

  __break(1u);
  return result;
}

id protocol witness for Collection.index(after:) in conformance NSData@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  result = [*v2 length];
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

id protocol witness for Collection.formIndex(after:) in conformance NSData(uint64_t *a1)
{
  v3 = *v1;
  v4 = *a1;
  result = [v3 length];
  if (v4 < 0 || v4 >= result)
  {
    __break(1u);
  }

  else
  {
    *a1 = v4 + 1;
  }

  return result;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance NSData(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance NSData()
{
  v1 = *v0;
  v2 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0);

  return v2;
}

uint64_t instantiation function for generic protocol witness table for NSData(uint64_t a1)
{
  result = lazy protocol witness table accessor for type NSData and conformance NSData(&lazy protocol witness table cache variable for type NSData and conformance NSData);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<NSData> and conformance <> Slice<A>(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVySo6NSDataCGMd);
    lazy protocol witness table accessor for type NSData and conformance NSData(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type NSData and conformance NSData(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NSData();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void PersonNameComponents.init(namePrefix:givenName:middleName:familyName:nameSuffix:nickname:phoneticRepresentation:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t *a14)
{
  v25 = *a14;
  v21 = [objc_allocWithZone(NSPersonNameComponents) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14_MutableHandleCySo22NSPersonNameComponentsCGMd);
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *a9 = v22;
  specialized PersonNameComponents.namePrefix.setter(a1, a2, &selRef_setNamePrefix_);

  specialized PersonNameComponents.namePrefix.setter(a3, a4, &selRef_setGivenName_);

  specialized PersonNameComponents.namePrefix.setter(a5, a6, &selRef_setMiddleName_);

  specialized PersonNameComponents.namePrefix.setter(a7, a8, &selRef_setFamilyName_);

  specialized PersonNameComponents.namePrefix.setter(a10, a11, &selRef_setNameSuffix_);

  specialized PersonNameComponents.namePrefix.setter(a12, a13, &selRef_setNickname_);

  v26 = v25;
  PersonNameComponents.phoneticRepresentation.setter(&v26);
}

uint64_t PersonNameComponents.namePrefix.setter(uint64_t a1, uint64_t a2)
{
  specialized PersonNameComponents.namePrefix.setter(a1, a2, &selRef_setNamePrefix_);
}

uint64_t PersonNameComponents.middleName.setter(uint64_t a1, uint64_t a2)
{
  specialized PersonNameComponents.namePrefix.setter(a1, a2, &selRef_setMiddleName_);
}

uint64_t PersonNameComponents.nameSuffix.setter(uint64_t a1, uint64_t a2)
{
  specialized PersonNameComponents.namePrefix.setter(a1, a2, &selRef_setNameSuffix_);
}

uint64_t PersonNameComponents.nickname.setter(uint64_t a1, uint64_t a2)
{
  specialized PersonNameComponents.namePrefix.setter(a1, a2, &selRef_setNickname_);
}

void PersonNameComponents.phoneticRepresentation.setter(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(*v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14_MutableHandleCySo22NSPersonNameComponentsCGMd);
    v5 = swift_allocObject();
    v6 = v4;
    [v6 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();

    type metadata accessor for NSPersonNameComponents();
    swift_dynamicCast();
    v4 = v11;
    *(v5 + 16) = v11;

    *v1 = v5;
  }

  if (v2)
  {
    v7 = *(v2 + 16);
    v8 = v4;
    [v7 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for NSPersonNameComponents();
    swift_dynamicCast();
    v9 = v11;
  }

  else
  {
    v10 = v4;
    v9 = 0;
  }

  [v4 setPhoneticRepresentation_];
}

void (*PersonNameComponents.namePrefix.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  v5 = *(*v1 + 16);
  v6 = [v5 namePrefix];
  if (!v6)
  {

    v12 = 0;
    v14 = 0;
    goto LABEL_42;
  }

  v7 = v6;
  isTaggedPointer = _objc_isTaggedPointer(v6);
  v9 = v7;
  v10 = v9;
  if (!isTaggedPointer)
  {
LABEL_10:
    *(v4 + 48) = 0;
    *v4 = 0;
    *(v4 + 72) = 0;
    *(v4 + 74) = 0;
    IsCF = __CFStringIsCF();
    if (IsCF)
    {
      v12 = *v4;
      if (!*v4)
      {

        v14 = 0xE000000000000000;
        goto LABEL_42;
      }

      if (*(v4 + 74) == 1)
      {
        if (*(v4 + 48))
        {
          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
        }

        else
        {
          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        }

        v23 = String.init<A>(_immortalCocoaString:count:encoding:)();
        goto LABEL_40;
      }

      if (*(v4 + 72))
      {
        if (*(v4 + 48) != 1)
        {
          IsCF = [v10 lengthOfBytesUsingEncoding_];
        }

        MEMORY[0x1EEE9AC00](IsCF);
        v25 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v14 = v26;
        v27 = HIBYTE(v26) & 0xF;
        if ((v26 & 0x2000000000000000) == 0)
        {
          v27 = v25 & 0xFFFFFFFFFFFFLL;
        }

        if (v27)
        {
          v12 = v25;
          goto LABEL_24;
        }
      }
    }

    else
    {
      v16 = v10;
      v17 = String.init(_nativeStorage:)();
      if (v18)
      {
        v12 = v17;
        v14 = v18;

        goto LABEL_42;
      }

      v22 = [v16 length];
      *v4 = v22;
      if (!v22)
      {

        v12 = 0;
        v14 = 0xE000000000000000;
        goto LABEL_42;
      }
    }

    v23 = String.init(_cocoaString:)();
LABEL_40:
    v12 = v23;
    v14 = v24;
    goto LABEL_41;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v9);
  if (!TaggedPointerTag)
  {
    goto LABEL_22;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v12 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v14 = v13;

LABEL_42:
      *(v4 + 32) = v12;
      *(v4 + 40) = v14;
      return PersonNameComponents.namePrefix.modify;
    }

    goto LABEL_10;
  }

  result = [v10 UTF8String];
  if (result)
  {
    v20 = String.init(utf8String:)(result);
    if (v21)
    {
LABEL_23:
      v12 = v20;
      v14 = v21;
LABEL_24:

      goto LABEL_42;
    }

    __break(1u);
LABEL_22:
    *(v4 + 72) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v20 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v21)
    {
      [v10 mutableCopy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();

      swift_dynamicCast();
      v12 = *(v4 + 48);
      v14 = *(v4 + 56);
LABEL_41:

      goto LABEL_42;
    }

    goto LABEL_23;
  }

  __break(1u);
  return result;
}

uint64_t key path setter for PersonNameComponents.namePrefix : PersonNameComponents(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a1;
  v7 = a1[1];

  specialized PersonNameComponents.namePrefix.setter(v6, v7, a5);
}

void (*PersonNameComponents.givenName.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  v5 = *(*v1 + 16);
  v6 = [v5 givenName];
  if (!v6)
  {

    v12 = 0;
    v14 = 0;
    goto LABEL_42;
  }

  v7 = v6;
  isTaggedPointer = _objc_isTaggedPointer(v6);
  v9 = v7;
  v10 = v9;
  if (!isTaggedPointer)
  {
LABEL_10:
    *(v4 + 48) = 0;
    *v4 = 0;
    *(v4 + 72) = 0;
    *(v4 + 74) = 0;
    IsCF = __CFStringIsCF();
    if (IsCF)
    {
      v12 = *v4;
      if (!*v4)
      {

        v14 = 0xE000000000000000;
        goto LABEL_42;
      }

      if (*(v4 + 74) == 1)
      {
        if (*(v4 + 48))
        {
          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
        }

        else
        {
          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        }

        v23 = String.init<A>(_immortalCocoaString:count:encoding:)();
        goto LABEL_40;
      }

      if (*(v4 + 72))
      {
        if (*(v4 + 48) != 1)
        {
          IsCF = [v10 lengthOfBytesUsingEncoding_];
        }

        MEMORY[0x1EEE9AC00](IsCF);
        v25 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v14 = v26;
        v27 = HIBYTE(v26) & 0xF;
        if ((v26 & 0x2000000000000000) == 0)
        {
          v27 = v25 & 0xFFFFFFFFFFFFLL;
        }

        if (v27)
        {
          v12 = v25;
          goto LABEL_24;
        }
      }
    }

    else
    {
      v16 = v10;
      v17 = String.init(_nativeStorage:)();
      if (v18)
      {
        v12 = v17;
        v14 = v18;

        goto LABEL_42;
      }

      v22 = [v16 length];
      *v4 = v22;
      if (!v22)
      {

        v12 = 0;
        v14 = 0xE000000000000000;
        goto LABEL_42;
      }
    }

    v23 = String.init(_cocoaString:)();
LABEL_40:
    v12 = v23;
    v14 = v24;
    goto LABEL_41;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v9);
  if (!TaggedPointerTag)
  {
    goto LABEL_22;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v12 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v14 = v13;

LABEL_42:
      *(v4 + 32) = v12;
      *(v4 + 40) = v14;
      return PersonNameComponents.givenName.modify;
    }

    goto LABEL_10;
  }

  result = [v10 UTF8String];
  if (result)
  {
    v20 = String.init(utf8String:)(result);
    if (v21)
    {
LABEL_23:
      v12 = v20;
      v14 = v21;
LABEL_24:

      goto LABEL_42;
    }

    __break(1u);
LABEL_22:
    *(v4 + 72) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v20 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v21)
    {
      [v10 mutableCopy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();

      swift_dynamicCast();
      v12 = *(v4 + 48);
      v14 = *(v4 + 56);
LABEL_41:

      goto LABEL_42;
    }

    goto LABEL_23;
  }

  __break(1u);
  return result;
}

void PersonNameComponents.namePrefix.modify(uint64_t a1, char a2, SEL *a3)
{
  v3 = *a1;
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  if (a2)
  {

    specialized PersonNameComponents.namePrefix.setter(v4, v5, a3);
  }

  else
  {
    specialized PersonNameComponents.namePrefix.setter(*(*a1 + 32), v5, a3);
  }

  free(v3);
}

void (*PersonNameComponents.middleName.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  v5 = *(*v1 + 16);
  v6 = [v5 middleName];
  if (!v6)
  {

    v12 = 0;
    v14 = 0;
    goto LABEL_42;
  }

  v7 = v6;
  isTaggedPointer = _objc_isTaggedPointer(v6);
  v9 = v7;
  v10 = v9;
  if (!isTaggedPointer)
  {
LABEL_10:
    *(v4 + 48) = 0;
    *v4 = 0;
    *(v4 + 72) = 0;
    *(v4 + 74) = 0;
    IsCF = __CFStringIsCF();
    if (IsCF)
    {
      v12 = *v4;
      if (!*v4)
      {

        v14 = 0xE000000000000000;
        goto LABEL_42;
      }

      if (*(v4 + 74) == 1)
      {
        if (*(v4 + 48))
        {
          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
        }

        else
        {
          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        }

        v23 = String.init<A>(_immortalCocoaString:count:encoding:)();
        goto LABEL_40;
      }

      if (*(v4 + 72))
      {
        if (*(v4 + 48) != 1)
        {
          IsCF = [v10 lengthOfBytesUsingEncoding_];
        }

        MEMORY[0x1EEE9AC00](IsCF);
        v25 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v14 = v26;
        v27 = HIBYTE(v26) & 0xF;
        if ((v26 & 0x2000000000000000) == 0)
        {
          v27 = v25 & 0xFFFFFFFFFFFFLL;
        }

        if (v27)
        {
          v12 = v25;
          goto LABEL_24;
        }
      }
    }

    else
    {
      v16 = v10;
      v17 = String.init(_nativeStorage:)();
      if (v18)
      {
        v12 = v17;
        v14 = v18;

        goto LABEL_42;
      }

      v22 = [v16 length];
      *v4 = v22;
      if (!v22)
      {

        v12 = 0;
        v14 = 0xE000000000000000;
        goto LABEL_42;
      }
    }

    v23 = String.init(_cocoaString:)();
LABEL_40:
    v12 = v23;
    v14 = v24;
    goto LABEL_41;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v9);
  if (!TaggedPointerTag)
  {
    goto LABEL_22;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v12 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v14 = v13;

LABEL_42:
      *(v4 + 32) = v12;
      *(v4 + 40) = v14;
      return PersonNameComponents.middleName.modify;
    }

    goto LABEL_10;
  }

  result = [v10 UTF8String];
  if (result)
  {
    v20 = String.init(utf8String:)(result);
    if (v21)
    {
LABEL_23:
      v12 = v20;
      v14 = v21;
LABEL_24:

      goto LABEL_42;
    }

    __break(1u);
LABEL_22:
    *(v4 + 72) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v20 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v21)
    {
      [v10 mutableCopy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();

      swift_dynamicCast();
      v12 = *(v4 + 48);
      v14 = *(v4 + 56);
LABEL_41:

      goto LABEL_42;
    }

    goto LABEL_23;
  }

  __break(1u);
  return result;
}

void (*PersonNameComponents.familyName.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  v5 = *(*v1 + 16);
  v6 = [v5 familyName];
  if (!v6)
  {

    v12 = 0;
    v14 = 0;
    goto LABEL_42;
  }

  v7 = v6;
  isTaggedPointer = _objc_isTaggedPointer(v6);
  v9 = v7;
  v10 = v9;
  if (!isTaggedPointer)
  {
LABEL_10:
    *(v4 + 48) = 0;
    *v4 = 0;
    *(v4 + 72) = 0;
    *(v4 + 74) = 0;
    IsCF = __CFStringIsCF();
    if (IsCF)
    {
      v12 = *v4;
      if (!*v4)
      {

        v14 = 0xE000000000000000;
        goto LABEL_42;
      }

      if (*(v4 + 74) == 1)
      {
        if (*(v4 + 48))
        {
          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
        }

        else
        {
          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        }

        v23 = String.init<A>(_immortalCocoaString:count:encoding:)();
        goto LABEL_40;
      }

      if (*(v4 + 72))
      {
        if (*(v4 + 48) != 1)
        {
          IsCF = [v10 lengthOfBytesUsingEncoding_];
        }

        MEMORY[0x1EEE9AC00](IsCF);
        v25 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v14 = v26;
        v27 = HIBYTE(v26) & 0xF;
        if ((v26 & 0x2000000000000000) == 0)
        {
          v27 = v25 & 0xFFFFFFFFFFFFLL;
        }

        if (v27)
        {
          v12 = v25;
          goto LABEL_24;
        }
      }
    }

    else
    {
      v16 = v10;
      v17 = String.init(_nativeStorage:)();
      if (v18)
      {
        v12 = v17;
        v14 = v18;

        goto LABEL_42;
      }

      v22 = [v16 length];
      *v4 = v22;
      if (!v22)
      {

        v12 = 0;
        v14 = 0xE000000000000000;
        goto LABEL_42;
      }
    }

    v23 = String.init(_cocoaString:)();
LABEL_40:
    v12 = v23;
    v14 = v24;
    goto LABEL_41;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v9);
  if (!TaggedPointerTag)
  {
    goto LABEL_22;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v12 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v14 = v13;

LABEL_42:
      *(v4 + 32) = v12;
      *(v4 + 40) = v14;
      return PersonNameComponents.familyName.modify;
    }

    goto LABEL_10;
  }

  result = [v10 UTF8String];
  if (result)
  {
    v20 = String.init(utf8String:)(result);
    if (v21)
    {
LABEL_23:
      v12 = v20;
      v14 = v21;
LABEL_24:

      goto LABEL_42;
    }

    __break(1u);
LABEL_22:
    *(v4 + 72) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v20 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v21)
    {
      [v10 mutableCopy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();

      swift_dynamicCast();
      v12 = *(v4 + 48);
      v14 = *(v4 + 56);
LABEL_41:

      goto LABEL_42;
    }

    goto LABEL_23;
  }

  __break(1u);
  return result;
}

void (*PersonNameComponents.nameSuffix.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  v5 = *(*v1 + 16);
  v6 = [v5 nameSuffix];
  if (!v6)
  {

    v12 = 0;
    v14 = 0;
    goto LABEL_42;
  }

  v7 = v6;
  isTaggedPointer = _objc_isTaggedPointer(v6);
  v9 = v7;
  v10 = v9;
  if (!isTaggedPointer)
  {
LABEL_10:
    *(v4 + 48) = 0;
    *v4 = 0;
    *(v4 + 72) = 0;
    *(v4 + 74) = 0;
    IsCF = __CFStringIsCF();
    if (IsCF)
    {
      v12 = *v4;
      if (!*v4)
      {

        v14 = 0xE000000000000000;
        goto LABEL_42;
      }

      if (*(v4 + 74) == 1)
      {
        if (*(v4 + 48))
        {
          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
        }

        else
        {
          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        }

        v23 = String.init<A>(_immortalCocoaString:count:encoding:)();
        goto LABEL_40;
      }

      if (*(v4 + 72))
      {
        if (*(v4 + 48) != 1)
        {
          IsCF = [v10 lengthOfBytesUsingEncoding_];
        }

        MEMORY[0x1EEE9AC00](IsCF);
        v25 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v14 = v26;
        v27 = HIBYTE(v26) & 0xF;
        if ((v26 & 0x2000000000000000) == 0)
        {
          v27 = v25 & 0xFFFFFFFFFFFFLL;
        }

        if (v27)
        {
          v12 = v25;
          goto LABEL_24;
        }
      }
    }

    else
    {
      v16 = v10;
      v17 = String.init(_nativeStorage:)();
      if (v18)
      {
        v12 = v17;
        v14 = v18;

        goto LABEL_42;
      }

      v22 = [v16 length];
      *v4 = v22;
      if (!v22)
      {

        v12 = 0;
        v14 = 0xE000000000000000;
        goto LABEL_42;
      }
    }

    v23 = String.init(_cocoaString:)();
LABEL_40:
    v12 = v23;
    v14 = v24;
    goto LABEL_41;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v9);
  if (!TaggedPointerTag)
  {
    goto LABEL_22;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v12 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v14 = v13;

LABEL_42:
      *(v4 + 32) = v12;
      *(v4 + 40) = v14;
      return PersonNameComponents.nameSuffix.modify;
    }

    goto LABEL_10;
  }

  result = [v10 UTF8String];
  if (result)
  {
    v20 = String.init(utf8String:)(result);
    if (v21)
    {
LABEL_23:
      v12 = v20;
      v14 = v21;
LABEL_24:

      goto LABEL_42;
    }

    __break(1u);
LABEL_22:
    *(v4 + 72) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v20 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v21)
    {
      [v10 mutableCopy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();

      swift_dynamicCast();
      v12 = *(v4 + 48);
      v14 = *(v4 + 56);
LABEL_41:

      goto LABEL_42;
    }

    goto LABEL_23;
  }

  __break(1u);
  return result;
}

void key path getter for PersonNameComponents.namePrefix : PersonNameComponents(uint64_t a1@<X0>, SEL *a2@<X3>, void *a3@<X8>)
{
  v5 = *(*a1 + 16);
  v6 = [v5 *a2];
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)(v6);
    v10 = v9;
  }

  else
  {

    v8 = 0;
    v10 = 0;
  }

  *a3 = v8;
  a3[1] = v10;
}

void (*PersonNameComponents.nickname.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  v5 = *(*v1 + 16);
  v6 = [v5 nickname];
  if (!v6)
  {

    v12 = 0;
    v14 = 0;
    goto LABEL_42;
  }

  v7 = v6;
  isTaggedPointer = _objc_isTaggedPointer(v6);
  v9 = v7;
  v10 = v9;
  if (!isTaggedPointer)
  {
LABEL_10:
    *(v4 + 48) = 0;
    *v4 = 0;
    *(v4 + 72) = 0;
    *(v4 + 74) = 0;
    IsCF = __CFStringIsCF();
    if (IsCF)
    {
      v12 = *v4;
      if (!*v4)
      {

        v14 = 0xE000000000000000;
        goto LABEL_42;
      }

      if (*(v4 + 74) == 1)
      {
        if (*(v4 + 48))
        {
          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
        }

        else
        {
          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        }

        v23 = String.init<A>(_immortalCocoaString:count:encoding:)();
        goto LABEL_40;
      }

      if (*(v4 + 72))
      {
        if (*(v4 + 48) != 1)
        {
          IsCF = [v10 lengthOfBytesUsingEncoding_];
        }

        MEMORY[0x1EEE9AC00](IsCF);
        v25 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v14 = v26;
        v27 = HIBYTE(v26) & 0xF;
        if ((v26 & 0x2000000000000000) == 0)
        {
          v27 = v25 & 0xFFFFFFFFFFFFLL;
        }

        if (v27)
        {
          v12 = v25;
          goto LABEL_24;
        }
      }
    }

    else
    {
      v16 = v10;
      v17 = String.init(_nativeStorage:)();
      if (v18)
      {
        v12 = v17;
        v14 = v18;

        goto LABEL_42;
      }

      v22 = [v16 length];
      *v4 = v22;
      if (!v22)
      {

        v12 = 0;
        v14 = 0xE000000000000000;
        goto LABEL_42;
      }
    }

    v23 = String.init(_cocoaString:)();
LABEL_40:
    v12 = v23;
    v14 = v24;
    goto LABEL_41;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v9);
  if (!TaggedPointerTag)
  {
    goto LABEL_22;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v12 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v14 = v13;

LABEL_42:
      *(v4 + 32) = v12;
      *(v4 + 40) = v14;
      return PersonNameComponents.nickname.modify;
    }

    goto LABEL_10;
  }

  result = [v10 UTF8String];
  if (result)
  {
    v20 = String.init(utf8String:)(result);
    if (v21)
    {
LABEL_23:
      v12 = v20;
      v14 = v21;
LABEL_24:

      goto LABEL_42;
    }

    __break(1u);
LABEL_22:
    *(v4 + 72) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v20 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v21)
    {
      [v10 mutableCopy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();

      swift_dynamicCast();
      v12 = *(v4 + 48);
      v14 = *(v4 + 56);
LABEL_41:

      goto LABEL_42;
    }

    goto LABEL_23;
  }

  __break(1u);
  return result;
}

void (*PersonNameComponents.phoneticRepresentation.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  v5 = *(*v1 + 16);
  v6 = [v5 phoneticRepresentation];
  if (v6)
  {
    v7 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14_MutableHandleCySo22NSPersonNameComponentsCGMd);
    v8 = swift_allocObject();
    [v7 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for NSPersonNameComponents();
    swift_dynamicCast();
    *(v8 + 16) = *(v4 + 40);
  }

  else
  {

    v8 = 0;
  }

  *(v4 + 32) = v8;
  return PersonNameComponents.phoneticRepresentation.modify;
}

void PersonNameComponents.phoneticRepresentation.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  if (a2)
  {

    PersonNameComponents.phoneticRepresentation.setter(&v3);
  }

  else
  {
    PersonNameComponents.phoneticRepresentation.setter(&v3);
  }

  free(v2);
}

void PersonNameComponents.hash(into:)()
{
  v1 = *(*v0 + 16);
  NSObject.hash(into:)();
}

Swift::Int PersonNameComponents.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = *(v1 + 16);
  NSObject.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PersonNameComponents()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = *(v1 + 16);
  NSObject.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance PersonNameComponents()
{
  v1 = *(*v0 + 16);
  NSObject.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PersonNameComponents()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = *(v1 + 16);
  NSObject.hash(into:)();

  return Hasher._finalize()();
}

id PersonNameComponents.description.getter()
{
  v218 = *MEMORY[0x1E69E9840];
  v203 = type metadata accessor for Mirror.AncestorRepresentation();
  v201 = *(v203 - 8);
  MEMORY[0x1EEE9AC00](v203);
  v204 = &v198 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v199 = &v198 - v3;
  v202 = type metadata accessor for Mirror();
  v200 = *(v202 - 8);
  MEMORY[0x1EEE9AC00](v202);
  v5 = &v198 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = *(*v0 + 16);
  v8 = [v7 namePrefix];
  if (!v8)
  {

    v18 = MEMORY[0x1E69E7CC0];
    goto LABEL_42;
  }

  v9 = v8;
  isTaggedPointer = _objc_isTaggedPointer(v8);
  v11 = v9;
  v12 = v11;
  if (!isTaggedPointer)
  {
LABEL_7:
    LOBYTE(v212) = 0;
    *&v215 = 0;
    LOBYTE(v209) = 0;
    LOBYTE(v207) = 0;
    IsCF = __CFStringIsCF();
    if (IsCF)
    {
      v14 = v215;
      if (!v215)
      {

        v16 = 0xE000000000000000;
        goto LABEL_39;
      }

      if (v207 == 1)
      {
        if (v212)
        {
          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
        }

        else
        {
          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        }

        v25 = String.init<A>(_immortalCocoaString:count:encoding:)();
        goto LABEL_37;
      }

      if (v209)
      {
        if (v212 == 1)
        {
          MEMORY[0x1EEE9AC00](IsCF);
          *(&v198 - 4) = v12;
          *(&v198 - 3) = &v215;
          *(&v198 - 4) = 1536;
          *(&v198 - 1) = v14;
        }

        else
        {
          v27 = [v12 lengthOfBytesUsingEncoding_];
          MEMORY[0x1EEE9AC00](v27);
          *(&v198 - 4) = v12;
          *(&v198 - 3) = &v215;
          *(&v198 - 4) = 134217984;
          *(&v198 - 1) = v28;
        }

        v29 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v16 = v30;
        v31 = HIBYTE(v30) & 0xF;
        if ((v30 & 0x2000000000000000) == 0)
        {
          v31 = v29 & 0xFFFFFFFFFFFFLL;
        }

        if (v31)
        {
          v14 = v29;
          goto LABEL_21;
        }
      }
    }

    else
    {
      v19 = v12;
      v20 = String.init(_nativeStorage:)();
      if (v21)
      {
        v14 = v20;
        v16 = v21;

        goto LABEL_39;
      }

      *&v215 = [v19 length];
      if (!v215)
      {

        v14 = 0;
        v16 = 0xE000000000000000;
        goto LABEL_39;
      }
    }

    v25 = String.init(_cocoaString:)();
LABEL_37:
    v14 = v25;
    v16 = v26;
    goto LABEL_38;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v11);
  if (!TaggedPointerTag)
  {
    goto LABEL_19;
  }

  if (TaggedPointerTag == 22)
  {
    result = [v12 UTF8String];
    if (!result)
    {
      __break(1u);
      goto LABEL_281;
    }

    v23 = String.init(utf8String:)(result);
    if (v24)
    {
LABEL_20:
      v14 = v23;
      v16 = v24;
LABEL_21:

      goto LABEL_39;
    }

    __break(1u);
LABEL_19:
    LOWORD(v209) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v23 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v24)
    {
      [v12 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v16 = *(&v212 + 1);
      v14 = v212;
LABEL_38:

      goto LABEL_39;
    }

    goto LABEL_20;
  }

  if (TaggedPointerTag != 2)
  {
    goto LABEL_7;
  }

  MEMORY[0x1EEE9AC00](TaggedPointerTag);
  *(&v198 - 2) = v12;
  v14 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v16 = v15;

LABEL_39:
  *(&v213 + 1) = MEMORY[0x1E69E6158];
  *&v212 = v14;
  *(&v212 + 1) = v16;
  v215 = xmmword_1812DF890;
  outlined init with take of Any(&v212, &v216);
  v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v33 = v18[2];
  v32 = v18[3];
  if (v33 >= v32 >> 1)
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v18);
  }

  v18[2] = v33 + 1;
  v34 = &v18[6 * v33];
  v35 = v215;
  v36 = v217;
  v34[3] = v216;
  v34[4] = v36;
  v34[2] = v35;
LABEL_42:
  v37 = *(v6 + 16);
  v38 = [v37 givenName];
  if (!v38)
  {

    goto LABEL_86;
  }

  v39 = v38;
  v40 = _objc_isTaggedPointer(v38);
  v41 = v39;
  v42 = v41;
  if (!v40)
  {
LABEL_48:
    LOBYTE(v212) = 0;
    *&v215 = 0;
    LOBYTE(v209) = 0;
    LOBYTE(v207) = 0;
    v47 = __CFStringIsCF();
    if (v47)
    {
      v48 = v215;
      if (v215)
      {
        if (v207 == 1)
        {
          if (v212)
          {
            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
          }

          else
          {
            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
          }

          v54 = String.init<A>(_immortalCocoaString:count:encoding:)();
          goto LABEL_79;
        }

        if (v209)
        {
          if (v212 == 1)
          {
            MEMORY[0x1EEE9AC00](v47);
            *(&v198 - 4) = v42;
            *(&v198 - 3) = &v215;
            *(&v198 - 4) = 1536;
            *(&v198 - 1) = v48;
          }

          else
          {
            v56 = [v42 lengthOfBytesUsingEncoding_];
            MEMORY[0x1EEE9AC00](v56);
            *(&v198 - 4) = v42;
            *(&v198 - 3) = &v215;
            *(&v198 - 4) = 134217984;
            *(&v198 - 1) = v57;
          }

          v58 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v46 = v59;
          v60 = HIBYTE(v59) & 0xF;
          if ((v59 & 0x2000000000000000) == 0)
          {
            v60 = v58 & 0xFFFFFFFFFFFFLL;
          }

          if (v60)
          {
            v44 = v58;
            goto LABEL_63;
          }
        }

LABEL_78:
        v54 = String.init(_cocoaString:)();
LABEL_79:
        v44 = v54;
        v46 = v55;
        goto LABEL_80;
      }
    }

    else
    {
      v49 = v42;
      v50 = String.init(_nativeStorage:)();
      if (v51)
      {
        v44 = v50;
        v46 = v51;

        goto LABEL_81;
      }

      *&v215 = [v49 length];
      if (v215)
      {
        goto LABEL_78;
      }
    }

    v44 = 0;
    v46 = 0xE000000000000000;
    goto LABEL_81;
  }

  v43 = _objc_getTaggedPointerTag(v41);
  if (!v43)
  {
    goto LABEL_61;
  }

  if (v43 == 22)
  {
    result = [v42 UTF8String];
    if (result)
    {
      v52 = String.init(utf8String:)(result);
      if (v53)
      {
LABEL_62:
        v44 = v52;
        v46 = v53;
LABEL_63:

        goto LABEL_81;
      }

      __break(1u);
LABEL_61:
      LOWORD(v209) = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v52 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v53)
      {
        [v42 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v46 = *(&v212 + 1);
        v44 = v212;
LABEL_80:

        goto LABEL_81;
      }

      goto LABEL_62;
    }

LABEL_281:
    __break(1u);
    goto LABEL_282;
  }

  if (v43 != 2)
  {
    goto LABEL_48;
  }

  MEMORY[0x1EEE9AC00](v43);
  *(&v198 - 2) = v42;
  v44 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v46 = v45;

LABEL_81:
  *(&v213 + 1) = MEMORY[0x1E69E6158];
  *&v212 = v44;
  *(&v212 + 1) = v46;
  v215 = xmmword_1812DF8A0;
  outlined init with take of Any(&v212, &v216);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18[2] + 1, 1, v18);
  }

  v62 = v18[2];
  v61 = v18[3];
  if (v62 >= v61 >> 1)
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v62 + 1, 1, v18);
  }

  v18[2] = v62 + 1;
  v63 = &v18[6 * v62];
  v64 = v215;
  v65 = v217;
  v63[3] = v216;
  v63[4] = v65;
  v63[2] = v64;
LABEL_86:
  v66 = *(v6 + 16);
  v67 = [v66 middleName];
  if (!v67)
  {

    goto LABEL_130;
  }

  v68 = v67;
  v69 = _objc_isTaggedPointer(v67);
  v70 = v68;
  v71 = v70;
  if (!v69)
  {
LABEL_92:
    LOBYTE(v212) = 0;
    *&v215 = 0;
    LOBYTE(v209) = 0;
    LOBYTE(v207) = 0;
    v76 = __CFStringIsCF();
    if (v76)
    {
      v77 = v215;
      if (v215)
      {
        if (v207 == 1)
        {
          if (v212)
          {
            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
          }

          else
          {
            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
          }

          v83 = String.init<A>(_immortalCocoaString:count:encoding:)();
          goto LABEL_123;
        }

        if (v209)
        {
          if (v212 == 1)
          {
            MEMORY[0x1EEE9AC00](v76);
            *(&v198 - 4) = v71;
            *(&v198 - 3) = &v215;
            *(&v198 - 4) = 1536;
            *(&v198 - 1) = v77;
          }

          else
          {
            v85 = [v71 lengthOfBytesUsingEncoding_];
            MEMORY[0x1EEE9AC00](v85);
            *(&v198 - 4) = v71;
            *(&v198 - 3) = &v215;
            *(&v198 - 4) = 134217984;
            *(&v198 - 1) = v86;
          }

          v87 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v75 = v88;
          v89 = HIBYTE(v88) & 0xF;
          if ((v88 & 0x2000000000000000) == 0)
          {
            v89 = v87 & 0xFFFFFFFFFFFFLL;
          }

          if (v89)
          {
            v73 = v87;
            goto LABEL_107;
          }
        }

LABEL_122:
        v83 = String.init(_cocoaString:)();
LABEL_123:
        v73 = v83;
        v75 = v84;
        goto LABEL_124;
      }
    }

    else
    {
      v78 = v71;
      v79 = String.init(_nativeStorage:)();
      if (v80)
      {
        v73 = v79;
        v75 = v80;

        goto LABEL_125;
      }

      *&v215 = [v78 length];
      if (v215)
      {
        goto LABEL_122;
      }
    }

    v73 = 0;
    v75 = 0xE000000000000000;
    goto LABEL_125;
  }

  v72 = _objc_getTaggedPointerTag(v70);
  if (!v72)
  {
    goto LABEL_105;
  }

  if (v72 == 22)
  {
    result = [v71 UTF8String];
    if (result)
    {
      v81 = String.init(utf8String:)(result);
      if (v82)
      {
LABEL_106:
        v73 = v81;
        v75 = v82;
LABEL_107:

        goto LABEL_125;
      }

      __break(1u);
LABEL_105:
      LOWORD(v209) = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v81 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v82)
      {
        [v71 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v75 = *(&v212 + 1);
        v73 = v212;
LABEL_124:

        goto LABEL_125;
      }

      goto LABEL_106;
    }

LABEL_282:
    __break(1u);
    goto LABEL_283;
  }

  if (v72 != 2)
  {
    goto LABEL_92;
  }

  MEMORY[0x1EEE9AC00](v72);
  *(&v198 - 2) = v71;
  v73 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v75 = v74;

LABEL_125:
  *(&v213 + 1) = MEMORY[0x1E69E6158];
  *&v212 = v73;
  *(&v212 + 1) = v75;
  v215 = xmmword_1812DF8B0;
  outlined init with take of Any(&v212, &v216);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18[2] + 1, 1, v18);
  }

  v91 = v18[2];
  v90 = v18[3];
  if (v91 >= v90 >> 1)
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v90 > 1), v91 + 1, 1, v18);
  }

  v18[2] = v91 + 1;
  v92 = &v18[6 * v91];
  v93 = v215;
  v94 = v217;
  v92[3] = v216;
  v92[4] = v94;
  v92[2] = v93;
LABEL_130:
  v95 = *(v6 + 16);
  v96 = [v95 familyName];
  if (!v96)
  {

    goto LABEL_174;
  }

  v97 = v96;
  v98 = _objc_isTaggedPointer(v96);
  v99 = v97;
  v100 = v99;
  if (!v98)
  {
LABEL_136:
    LOBYTE(v212) = 0;
    *&v215 = 0;
    LOBYTE(v209) = 0;
    LOBYTE(v207) = 0;
    v105 = __CFStringIsCF();
    if (v105)
    {
      v106 = v215;
      if (v215)
      {
        if (v207 == 1)
        {
          if (v212)
          {
            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
          }

          else
          {
            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
          }

          v112 = String.init<A>(_immortalCocoaString:count:encoding:)();
          goto LABEL_167;
        }

        if (v209)
        {
          if (v212 == 1)
          {
            MEMORY[0x1EEE9AC00](v105);
            *(&v198 - 4) = v100;
            *(&v198 - 3) = &v215;
            *(&v198 - 4) = 1536;
            *(&v198 - 1) = v106;
          }

          else
          {
            v114 = [v100 lengthOfBytesUsingEncoding_];
            MEMORY[0x1EEE9AC00](v114);
            *(&v198 - 4) = v100;
            *(&v198 - 3) = &v215;
            *(&v198 - 4) = 134217984;
            *(&v198 - 1) = v115;
          }

          v116 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v104 = v117;
          v118 = HIBYTE(v117) & 0xF;
          if ((v117 & 0x2000000000000000) == 0)
          {
            v118 = v116 & 0xFFFFFFFFFFFFLL;
          }

          if (v118)
          {
            v102 = v116;
            goto LABEL_151;
          }
        }

LABEL_166:
        v112 = String.init(_cocoaString:)();
LABEL_167:
        v102 = v112;
        v104 = v113;
        goto LABEL_168;
      }
    }

    else
    {
      v107 = v100;
      v108 = String.init(_nativeStorage:)();
      if (v109)
      {
        v102 = v108;
        v104 = v109;

        goto LABEL_169;
      }

      *&v215 = [v107 length];
      if (v215)
      {
        goto LABEL_166;
      }
    }

    v102 = 0;
    v104 = 0xE000000000000000;
    goto LABEL_169;
  }

  v101 = _objc_getTaggedPointerTag(v99);
  if (!v101)
  {
    goto LABEL_149;
  }

  if (v101 == 22)
  {
    result = [v100 UTF8String];
    if (result)
    {
      v110 = String.init(utf8String:)(result);
      if (v111)
      {
LABEL_150:
        v102 = v110;
        v104 = v111;
LABEL_151:

        goto LABEL_169;
      }

      __break(1u);
LABEL_149:
      LOWORD(v209) = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v110 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v111)
      {
        [v100 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v104 = *(&v212 + 1);
        v102 = v212;
LABEL_168:

        goto LABEL_169;
      }

      goto LABEL_150;
    }

LABEL_283:
    __break(1u);
    goto LABEL_284;
  }

  if (v101 != 2)
  {
    goto LABEL_136;
  }

  MEMORY[0x1EEE9AC00](v101);
  *(&v198 - 2) = v100;
  v102 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v104 = v103;

LABEL_169:
  *(&v213 + 1) = MEMORY[0x1E69E6158];
  *&v212 = v102;
  *(&v212 + 1) = v104;
  v215 = xmmword_1812DF8C0;
  outlined init with take of Any(&v212, &v216);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18[2] + 1, 1, v18);
  }

  v120 = v18[2];
  v119 = v18[3];
  if (v120 >= v119 >> 1)
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v119 > 1), v120 + 1, 1, v18);
  }

  v18[2] = v120 + 1;
  v121 = &v18[6 * v120];
  v122 = v215;
  v123 = v217;
  v121[3] = v216;
  v121[4] = v123;
  v121[2] = v122;
LABEL_174:
  v124 = *(v6 + 16);
  v125 = [v124 nameSuffix];
  if (!v125)
  {

    goto LABEL_218;
  }

  v126 = v125;
  v127 = _objc_isTaggedPointer(v125);
  v128 = v126;
  v129 = v128;
  if (!v127)
  {
LABEL_180:
    LOBYTE(v212) = 0;
    *&v215 = 0;
    LOBYTE(v209) = 0;
    LOBYTE(v207) = 0;
    v134 = __CFStringIsCF();
    if (v134)
    {
      v135 = v215;
      if (v215)
      {
        if (v207 == 1)
        {
          if (v212)
          {
            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
          }

          else
          {
            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
          }

          v141 = String.init<A>(_immortalCocoaString:count:encoding:)();
          goto LABEL_211;
        }

        if (v209)
        {
          if (v212 == 1)
          {
            MEMORY[0x1EEE9AC00](v134);
            *(&v198 - 4) = v129;
            *(&v198 - 3) = &v215;
            *(&v198 - 4) = 1536;
            *(&v198 - 1) = v135;
          }

          else
          {
            v143 = [v129 lengthOfBytesUsingEncoding_];
            MEMORY[0x1EEE9AC00](v143);
            *(&v198 - 4) = v129;
            *(&v198 - 3) = &v215;
            *(&v198 - 4) = 134217984;
            *(&v198 - 1) = v144;
          }

          v145 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v133 = v146;
          v147 = HIBYTE(v146) & 0xF;
          if ((v146 & 0x2000000000000000) == 0)
          {
            v147 = v145 & 0xFFFFFFFFFFFFLL;
          }

          if (v147)
          {
            v131 = v145;
            goto LABEL_195;
          }
        }

LABEL_210:
        v141 = String.init(_cocoaString:)();
LABEL_211:
        v131 = v141;
        v133 = v142;
        goto LABEL_212;
      }
    }

    else
    {
      v136 = v129;
      v137 = String.init(_nativeStorage:)();
      if (v138)
      {
        v131 = v137;
        v133 = v138;

        goto LABEL_213;
      }

      *&v215 = [v136 length];
      if (v215)
      {
        goto LABEL_210;
      }
    }

    v131 = 0;
    v133 = 0xE000000000000000;
    goto LABEL_213;
  }

  v130 = _objc_getTaggedPointerTag(v128);
  if (!v130)
  {
    goto LABEL_193;
  }

  if (v130 == 22)
  {
    result = [v129 UTF8String];
    if (result)
    {
      v139 = String.init(utf8String:)(result);
      if (v140)
      {
LABEL_194:
        v131 = v139;
        v133 = v140;
LABEL_195:

        goto LABEL_213;
      }

      __break(1u);
LABEL_193:
      LOWORD(v209) = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v139 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v140)
      {
        [v129 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v133 = *(&v212 + 1);
        v131 = v212;
LABEL_212:

        goto LABEL_213;
      }

      goto LABEL_194;
    }

LABEL_284:
    __break(1u);
    goto LABEL_285;
  }

  if (v130 != 2)
  {
    goto LABEL_180;
  }

  MEMORY[0x1EEE9AC00](v130);
  *(&v198 - 2) = v129;
  v131 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v133 = v132;

LABEL_213:
  *(&v213 + 1) = MEMORY[0x1E69E6158];
  *&v212 = v131;
  *(&v212 + 1) = v133;
  v215 = xmmword_1812DF8D0;
  outlined init with take of Any(&v212, &v216);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18[2] + 1, 1, v18);
  }

  v149 = v18[2];
  v148 = v18[3];
  if (v149 >= v148 >> 1)
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v148 > 1), v149 + 1, 1, v18);
  }

  v18[2] = v149 + 1;
  v150 = &v18[6 * v149];
  v151 = v215;
  v152 = v217;
  v150[3] = v216;
  v150[4] = v152;
  v150[2] = v151;
LABEL_218:
  v153 = *(v6 + 16);
  v154 = [v153 nickname];
  if (v154)
  {
    v155 = v154;
    v156 = _objc_isTaggedPointer(v154);
    v157 = v155;
    v158 = v157;
    if (!v156)
    {
      goto LABEL_224;
    }

    v159 = _objc_getTaggedPointerTag(v157);
    if (!v159)
    {
      goto LABEL_236;
    }

    if (v159 != 22)
    {
      if (v159 == 2)
      {
        MEMORY[0x1EEE9AC00](v159);
        *(&v198 - 2) = v158;
        v160 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v162 = v161;

LABEL_256:
        *(&v213 + 1) = MEMORY[0x1E69E6158];
        *&v212 = v160;
        *(&v212 + 1) = v162;
        v215 = xmmword_1812DF8E0;
        outlined init with take of Any(&v212, &v216);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18[2] + 1, 1, v18);
        }

        v177 = v18[2];
        v176 = v18[3];
        if (v177 >= v176 >> 1)
        {
          v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v176 > 1), v177 + 1, 1, v18);
        }

        v18[2] = v177 + 1;
        v178 = &v18[6 * v177];
        v179 = v215;
        v180 = v217;
        v178[3] = v216;
        v178[4] = v180;
        v178[2] = v179;
        goto LABEL_261;
      }

LABEL_224:
      LOBYTE(v212) = 0;
      *&v215 = 0;
      LOBYTE(v209) = 0;
      LOBYTE(v207) = 0;
      v163 = __CFStringIsCF();
      if (v163)
      {
        v160 = v215;
        if (!v215)
        {

          v162 = 0xE000000000000000;
          goto LABEL_256;
        }

        if (v207 == 1)
        {
          if (v212)
          {
            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
          }

          else
          {
            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
          }

          v169 = String.init<A>(_immortalCocoaString:count:encoding:)();
          goto LABEL_254;
        }

        if (v209)
        {
          if (v212 == 1)
          {
            MEMORY[0x1EEE9AC00](v163);
            *(&v198 - 4) = v158;
            *(&v198 - 3) = &v215;
            *(&v198 - 4) = 1536;
            *(&v198 - 1) = v160;
          }

          else
          {
            v171 = [v158 lengthOfBytesUsingEncoding_];
            MEMORY[0x1EEE9AC00](v171);
            *(&v198 - 4) = v158;
            *(&v198 - 3) = &v215;
            *(&v198 - 4) = 134217984;
            *(&v198 - 1) = v172;
          }

          v173 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v162 = v174;
          v175 = HIBYTE(v174) & 0xF;
          if ((v174 & 0x2000000000000000) == 0)
          {
            v175 = v173 & 0xFFFFFFFFFFFFLL;
          }

          if (v175)
          {
            v160 = v173;
            goto LABEL_238;
          }
        }
      }

      else
      {
        v164 = v158;
        v165 = String.init(_nativeStorage:)();
        if (v166)
        {
          v160 = v165;
          v162 = v166;

          goto LABEL_256;
        }

        *&v215 = [v164 length];
        if (!v215)
        {

          v160 = 0;
          v162 = 0xE000000000000000;
          goto LABEL_256;
        }
      }

      v169 = String.init(_cocoaString:)();
LABEL_254:
      v160 = v169;
      v162 = v170;
      goto LABEL_255;
    }

    result = [v158 UTF8String];
    if (result)
    {
      v167 = String.init(utf8String:)(result);
      if (v168)
      {
LABEL_237:
        v160 = v167;
        v162 = v168;
LABEL_238:

        goto LABEL_256;
      }

      __break(1u);
LABEL_236:
      LOWORD(v209) = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v167 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v168)
      {
        [v158 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v162 = *(&v212 + 1);
        v160 = v212;
LABEL_255:

        goto LABEL_256;
      }

      goto LABEL_237;
    }

LABEL_285:
    __break(1u);
    return result;
  }

LABEL_261:
  v181 = *(v6 + 16);
  v182 = [v181 phoneticRepresentation];
  if (v182)
  {
    v183 = v182;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14_MutableHandleCySo22NSPersonNameComponentsCGMd);
    v184 = swift_allocObject();
    [v183 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for NSPersonNameComponents();
    swift_dynamicCast();
    *(v184 + 16) = v212;

    *(&v213 + 1) = &type metadata for PersonNameComponents;
    *&v212 = v184;
    *&v215 = 0xD000000000000016;
    *(&v215 + 1) = 0x8000000181487C50;
    outlined init with take of Any(&v212, &v216);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18[2] + 1, 1, v18);
    }

    v186 = v18[2];
    v185 = v18[3];
    if (v186 >= v185 >> 1)
    {
      v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v185 > 1), v186 + 1, 1, v18);
    }

    v18[2] = v186 + 1;
    v187 = &v18[6 * v186];
    v188 = v215;
    v189 = v217;
    v187[3] = v216;
    v187[4] = v189;
    v187[2] = v188;
  }

  else
  {
  }

  *&v215 = v6;
  *&v212 = v18;
  v190 = *MEMORY[0x1E69E75B8];
  v191 = type metadata accessor for Mirror.DisplayStyle();
  v192 = *(v191 - 8);
  v193 = v199;
  (*(v192 + 104))(v199, v190, v191);
  (*(v192 + 56))(v193, 0, 1, v191);
  (*(v201 + 104))(v204, *MEMORY[0x1E69E75D8], v203);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSSg5label_yp5valuetGMd);
  lazy protocol witness table accessor for type [(label: String?, value: Any)] and conformance [A]();
  Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
  v194 = Mirror.children.getter();
  (*(v200 + 8))(v5, v202);
  v207 = 0;
  v208 = 0xE000000000000000;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  if (*(&v217 + 1))
  {
    v204 = v194;
    do
    {
      v212 = v215;
      v213 = v216;
      v214 = v217;
      v205 = 0;
      v206 = 0xE000000000000000;
      outlined init with copy of (label: String?, value: Any)(&v212, &v209);
      if (v210)
      {
        v195 = v209;
      }

      else
      {
        v195 = 0;
      }

      if (v210)
      {
        v196 = v210;
      }

      else
      {
        v196 = 0xE000000000000000;
      }

      __swift_destroy_boxed_opaque_existential_1(&v211);
      MEMORY[0x1865CB0E0](v195, v196);

      MEMORY[0x1865CB0E0](8250, 0xE200000000000000);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x1865CB0E0](32, 0xE100000000000000);
      MEMORY[0x1865CB0E0](v205, v206);

      outlined destroy of (label: String?, value: Any)(&v212);
      dispatch thunk of _AnyIteratorBoxBase.next()();
    }

    while (*(&v217 + 1));
    v197 = v207;
  }

  else
  {
    v197 = 0;
  }

  return v197;
}

id PersonNameComponents.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v200 = a1;
  v208 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v197 = *(v2 - 8);
  v198 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v199 = &v196 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v196 - v5;
  v7 = *v1;
  v8 = *(*v1 + 16);
  v9 = [v8 namePrefix];
  v10 = MEMORY[0x1E69E6158];
  if (!v9)
  {

    v21 = MEMORY[0x1E69E7CC0];
    goto LABEL_43;
  }

  v11 = v9;
  isTaggedPointer = _objc_isTaggedPointer(v9);
  v13 = v11;
  v14 = v13;
  if (!isTaggedPointer)
  {
LABEL_7:
    LOBYTE(v206) = 0;
    *&v203 = 0;
    LOBYTE(v201) = 0;
    v202 = 0;
    IsCF = __CFStringIsCF();
    if (IsCF)
    {
      v20 = v203;
      if (v203)
      {
        if (v202 == 1)
        {
          if (v206)
          {
            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
          }

          else
          {
            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
          }

          v30 = String.init<A>(_immortalCocoaString:count:encoding:)();
          goto LABEL_38;
        }

        if (v201)
        {
          if (v206 == 1)
          {
            MEMORY[0x1EEE9AC00](IsCF);
            *(&v196 - 4) = v14;
            *(&v196 - 3) = &v203;
            *(&v196 - 4) = 1536;
            *(&v196 - 1) = v20;
          }

          else
          {
            v32 = [v14 lengthOfBytesUsingEncoding_];
            MEMORY[0x1EEE9AC00](v32);
            *(&v196 - 4) = v14;
            *(&v196 - 3) = &v203;
            *(&v196 - 4) = 134217984;
            *(&v196 - 1) = v33;
          }

          v28 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v18 = v29;
          v34 = HIBYTE(v29) & 0xF;
          if ((v29 & 0x2000000000000000) == 0)
          {
            v34 = v28 & 0xFFFFFFFFFFFFLL;
          }

          if (v34)
          {
            v16 = v28;
            goto LABEL_22;
          }
        }

LABEL_37:
        v30 = String.init(_cocoaString:)();
LABEL_38:
        v16 = v30;
        v18 = v31;
        goto LABEL_39;
      }
    }

    else
    {
      v22 = v14;
      v23 = String.init(_nativeStorage:)();
      if (v24)
      {
        v16 = v23;
        v18 = v24;

        goto LABEL_40;
      }

      *&v203 = [v22 length];
      if (v203)
      {
        goto LABEL_37;
      }
    }

    v16 = 0;
    v18 = 0xE000000000000000;
    goto LABEL_40;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v13);
  if (!TaggedPointerTag)
  {
    goto LABEL_20;
  }

  if (TaggedPointerTag == 22)
  {
    result = [v14 UTF8String];
    if (!result)
    {
      __break(1u);
      goto LABEL_271;
    }

    v26 = String.init(utf8String:)(result);
    if (v27)
    {
LABEL_21:
      v16 = v26;
      v18 = v27;
LABEL_22:

      goto LABEL_40;
    }

    __break(1u);
LABEL_20:
    v201 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v26 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v27)
    {
      [v14 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v18 = *(&v206 + 1);
      v16 = v206;
LABEL_39:

      goto LABEL_40;
    }

    goto LABEL_21;
  }

  if (TaggedPointerTag != 2)
  {
    goto LABEL_7;
  }

  MEMORY[0x1EEE9AC00](TaggedPointerTag);
  *(&v196 - 2) = v14;
  v16 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v18 = v17;

LABEL_40:
  v207 = v10;
  *&v206 = v16;
  *(&v206 + 1) = v18;
  v203 = xmmword_1812DF890;
  outlined init with take of Any(&v206, &v204);
  v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v36 = v21[2];
  v35 = v21[3];
  if (v36 >= v35 >> 1)
  {
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v21);
  }

  v21[2] = v36 + 1;
  v37 = &v21[6 * v36];
  v38 = v203;
  v39 = v205;
  v37[3] = v204;
  v37[4] = v39;
  v37[2] = v38;
LABEL_43:
  v40 = *(v7 + 16);
  v41 = [v40 givenName];
  if (!v41)
  {

    goto LABEL_87;
  }

  v42 = v41;
  v43 = _objc_isTaggedPointer(v41);
  v44 = v42;
  v45 = v44;
  if (!v43)
  {
LABEL_49:
    LOBYTE(v206) = 0;
    *&v203 = 0;
    LOBYTE(v201) = 0;
    v202 = 0;
    v50 = __CFStringIsCF();
    if (v50)
    {
      v47 = v203;
      if (!v203)
      {

        v49 = 0xE000000000000000;
        goto LABEL_82;
      }

      if (v202 == 1)
      {
        if (v206)
        {
          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
        }

        else
        {
          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        }

        v57 = String.init<A>(_immortalCocoaString:count:encoding:)();
        goto LABEL_80;
      }

      if (v201)
      {
        if (v206 == 1)
        {
          MEMORY[0x1EEE9AC00](v50);
          *(&v196 - 4) = v45;
          *(&v196 - 3) = &v203;
          *(&v196 - 4) = 1536;
          *(&v196 - 1) = v47;
        }

        else
        {
          v59 = [v45 lengthOfBytesUsingEncoding_];
          MEMORY[0x1EEE9AC00](v59);
          *(&v196 - 4) = v45;
          *(&v196 - 3) = &v203;
          *(&v196 - 4) = 134217984;
          *(&v196 - 1) = v60;
        }

        v61 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v49 = v62;
        v63 = HIBYTE(v62) & 0xF;
        if ((v62 & 0x2000000000000000) == 0)
        {
          v63 = v61 & 0xFFFFFFFFFFFFLL;
        }

        if (v63)
        {
          v47 = v61;
          goto LABEL_63;
        }
      }
    }

    else
    {
      v51 = v10;
      v52 = v45;
      v53 = String.init(_nativeStorage:)();
      if (v54)
      {
        v47 = v53;
        v49 = v54;

        v10 = v51;
        goto LABEL_82;
      }

      *&v203 = [v52 length];
      if (!v203)
      {

        v47 = 0;
        v49 = 0xE000000000000000;
        v10 = v51;
        goto LABEL_82;
      }

      v10 = v51;
    }

    v57 = String.init(_cocoaString:)();
LABEL_80:
    v47 = v57;
    v49 = v58;
    goto LABEL_81;
  }

  v46 = _objc_getTaggedPointerTag(v44);
  if (!v46)
  {
    goto LABEL_61;
  }

  if (v46 == 22)
  {
    result = [v45 UTF8String];
    if (result)
    {
      v55 = String.init(utf8String:)(result);
      if (v56)
      {
LABEL_62:
        v47 = v55;
        v49 = v56;
LABEL_63:

        goto LABEL_82;
      }

      __break(1u);
LABEL_61:
      v201 = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v55 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v56)
      {
        [v45 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v49 = *(&v206 + 1);
        v47 = v206;
LABEL_81:

        goto LABEL_82;
      }

      goto LABEL_62;
    }

LABEL_271:
    __break(1u);
    goto LABEL_272;
  }

  if (v46 != 2)
  {
    goto LABEL_49;
  }

  MEMORY[0x1EEE9AC00](v46);
  *(&v196 - 2) = v45;
  v47 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v49 = v48;

LABEL_82:
  v207 = v10;
  *&v206 = v47;
  *(&v206 + 1) = v49;
  v203 = xmmword_1812DF8A0;
  outlined init with take of Any(&v206, &v204);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21[2] + 1, 1, v21);
  }

  v65 = v21[2];
  v64 = v21[3];
  if (v65 >= v64 >> 1)
  {
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v64 > 1), v65 + 1, 1, v21);
  }

  v21[2] = v65 + 1;
  v66 = &v21[6 * v65];
  v67 = v203;
  v68 = v205;
  v66[3] = v204;
  v66[4] = v68;
  v66[2] = v67;
LABEL_87:
  v69 = *(v7 + 16);
  v70 = [v69 middleName];
  if (!v70)
  {

    goto LABEL_131;
  }

  v71 = v70;
  v72 = _objc_isTaggedPointer(v70);
  v73 = v71;
  v74 = v73;
  if (!v72)
  {
LABEL_93:
    LOBYTE(v206) = 0;
    *&v203 = 0;
    LOBYTE(v201) = 0;
    v202 = 0;
    v79 = __CFStringIsCF();
    if (v79)
    {
      v76 = v203;
      if (!v203)
      {

        v78 = 0xE000000000000000;
        goto LABEL_126;
      }

      if (v202 == 1)
      {
        if (v206)
        {
          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
        }

        else
        {
          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        }

        v86 = String.init<A>(_immortalCocoaString:count:encoding:)();
        goto LABEL_124;
      }

      if (v201)
      {
        if (v206 == 1)
        {
          MEMORY[0x1EEE9AC00](v79);
          *(&v196 - 4) = v74;
          *(&v196 - 3) = &v203;
          *(&v196 - 4) = 1536;
          *(&v196 - 1) = v76;
        }

        else
        {
          v88 = [v74 lengthOfBytesUsingEncoding_];
          MEMORY[0x1EEE9AC00](v88);
          *(&v196 - 4) = v74;
          *(&v196 - 3) = &v203;
          *(&v196 - 4) = 134217984;
          *(&v196 - 1) = v89;
        }

        v90 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v78 = v91;
        v92 = HIBYTE(v91) & 0xF;
        if ((v91 & 0x2000000000000000) == 0)
        {
          v92 = v90 & 0xFFFFFFFFFFFFLL;
        }

        if (v92)
        {
          v76 = v90;
          goto LABEL_107;
        }
      }
    }

    else
    {
      v80 = v10;
      v81 = v74;
      v82 = String.init(_nativeStorage:)();
      if (v83)
      {
        v76 = v82;
        v78 = v83;

        v10 = v80;
        goto LABEL_126;
      }

      *&v203 = [v81 length];
      if (!v203)
      {

        v76 = 0;
        v78 = 0xE000000000000000;
        v10 = v80;
        goto LABEL_126;
      }

      v10 = v80;
    }

    v86 = String.init(_cocoaString:)();
LABEL_124:
    v76 = v86;
    v78 = v87;
    goto LABEL_125;
  }

  v75 = _objc_getTaggedPointerTag(v73);
  if (!v75)
  {
    goto LABEL_105;
  }

  if (v75 == 22)
  {
    result = [v74 UTF8String];
    if (result)
    {
      v84 = String.init(utf8String:)(result);
      if (v85)
      {
LABEL_106:
        v76 = v84;
        v78 = v85;
LABEL_107:

        goto LABEL_126;
      }

      __break(1u);
LABEL_105:
      v201 = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v84 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v85)
      {
        [v74 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v78 = *(&v206 + 1);
        v76 = v206;
LABEL_125:

        goto LABEL_126;
      }

      goto LABEL_106;
    }

LABEL_272:
    __break(1u);
    goto LABEL_273;
  }

  if (v75 != 2)
  {
    goto LABEL_93;
  }

  MEMORY[0x1EEE9AC00](v75);
  *(&v196 - 2) = v74;
  v76 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v78 = v77;

LABEL_126:
  v207 = v10;
  *&v206 = v76;
  *(&v206 + 1) = v78;
  v203 = xmmword_1812DF8B0;
  outlined init with take of Any(&v206, &v204);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21[2] + 1, 1, v21);
  }

  v94 = v21[2];
  v93 = v21[3];
  if (v94 >= v93 >> 1)
  {
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v93 > 1), v94 + 1, 1, v21);
  }

  v21[2] = v94 + 1;
  v95 = &v21[6 * v94];
  v96 = v203;
  v97 = v205;
  v95[3] = v204;
  v95[4] = v97;
  v95[2] = v96;
LABEL_131:
  v98 = *(v7 + 16);
  v99 = [v98 familyName];
  if (!v99)
  {

    goto LABEL_175;
  }

  v100 = v99;
  v101 = _objc_isTaggedPointer(v99);
  v102 = v100;
  v103 = v102;
  if (!v101)
  {
LABEL_137:
    LOBYTE(v206) = 0;
    *&v203 = 0;
    LOBYTE(v201) = 0;
    v202 = 0;
    v108 = __CFStringIsCF();
    if (v108)
    {
      v105 = v203;
      if (!v203)
      {

        v107 = 0xE000000000000000;
        goto LABEL_170;
      }

      if (v202 == 1)
      {
        if (v206)
        {
          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
        }

        else
        {
          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        }

        v115 = String.init<A>(_immortalCocoaString:count:encoding:)();
        goto LABEL_168;
      }

      if (v201)
      {
        if (v206 == 1)
        {
          MEMORY[0x1EEE9AC00](v108);
          *(&v196 - 4) = v103;
          *(&v196 - 3) = &v203;
          *(&v196 - 4) = 1536;
          *(&v196 - 1) = v105;
        }

        else
        {
          v117 = [v103 lengthOfBytesUsingEncoding_];
          MEMORY[0x1EEE9AC00](v117);
          *(&v196 - 4) = v103;
          *(&v196 - 3) = &v203;
          *(&v196 - 4) = 134217984;
          *(&v196 - 1) = v118;
        }

        v119 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v107 = v120;
        v121 = HIBYTE(v120) & 0xF;
        if ((v120 & 0x2000000000000000) == 0)
        {
          v121 = v119 & 0xFFFFFFFFFFFFLL;
        }

        if (v121)
        {
          v105 = v119;
          goto LABEL_151;
        }
      }
    }

    else
    {
      v109 = v10;
      v110 = v103;
      v111 = String.init(_nativeStorage:)();
      if (v112)
      {
        v105 = v111;
        v107 = v112;

        v10 = v109;
        goto LABEL_170;
      }

      *&v203 = [v110 length];
      if (!v203)
      {

        v105 = 0;
        v107 = 0xE000000000000000;
        v10 = v109;
        goto LABEL_170;
      }

      v10 = v109;
    }

    v115 = String.init(_cocoaString:)();
LABEL_168:
    v105 = v115;
    v107 = v116;
    goto LABEL_169;
  }

  v104 = _objc_getTaggedPointerTag(v102);
  if (!v104)
  {
    goto LABEL_149;
  }

  if (v104 == 22)
  {
    result = [v103 UTF8String];
    if (result)
    {
      v113 = String.init(utf8String:)(result);
      if (v114)
      {
LABEL_150:
        v105 = v113;
        v107 = v114;
LABEL_151:

        goto LABEL_170;
      }

      __break(1u);
LABEL_149:
      v201 = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v113 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v114)
      {
        [v103 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v107 = *(&v206 + 1);
        v105 = v206;
LABEL_169:

        goto LABEL_170;
      }

      goto LABEL_150;
    }

LABEL_273:
    __break(1u);
    goto LABEL_274;
  }

  if (v104 != 2)
  {
    goto LABEL_137;
  }

  MEMORY[0x1EEE9AC00](v104);
  *(&v196 - 2) = v103;
  v105 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v107 = v106;

LABEL_170:
  v207 = v10;
  *&v206 = v105;
  *(&v206 + 1) = v107;
  v203 = xmmword_1812DF8C0;
  outlined init with take of Any(&v206, &v204);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21[2] + 1, 1, v21);
  }

  v123 = v21[2];
  v122 = v21[3];
  if (v123 >= v122 >> 1)
  {
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v122 > 1), v123 + 1, 1, v21);
  }

  v21[2] = v123 + 1;
  v124 = &v21[6 * v123];
  v125 = v203;
  v126 = v205;
  v124[3] = v204;
  v124[4] = v126;
  v124[2] = v125;
LABEL_175:
  v127 = *(v7 + 16);
  v128 = [v127 nameSuffix];
  if (!v128)
  {

    goto LABEL_219;
  }

  v129 = v128;
  v130 = _objc_isTaggedPointer(v128);
  v131 = v129;
  v132 = v131;
  if (!v130)
  {
LABEL_181:
    LOBYTE(v206) = 0;
    *&v203 = 0;
    LOBYTE(v201) = 0;
    v202 = 0;
    v137 = __CFStringIsCF();
    if (v137)
    {
      v134 = v203;
      if (!v203)
      {

        v136 = 0xE000000000000000;
        goto LABEL_214;
      }

      if (v202 == 1)
      {
        if (v206)
        {
          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
        }

        else
        {
          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        }

        v144 = String.init<A>(_immortalCocoaString:count:encoding:)();
        goto LABEL_212;
      }

      if (v201)
      {
        if (v206 == 1)
        {
          MEMORY[0x1EEE9AC00](v137);
          *(&v196 - 4) = v132;
          *(&v196 - 3) = &v203;
          *(&v196 - 4) = 1536;
          *(&v196 - 1) = v134;
        }

        else
        {
          v146 = [v132 lengthOfBytesUsingEncoding_];
          MEMORY[0x1EEE9AC00](v146);
          *(&v196 - 4) = v132;
          *(&v196 - 3) = &v203;
          *(&v196 - 4) = 134217984;
          *(&v196 - 1) = v147;
        }

        v148 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v136 = v149;
        v150 = HIBYTE(v149) & 0xF;
        if ((v149 & 0x2000000000000000) == 0)
        {
          v150 = v148 & 0xFFFFFFFFFFFFLL;
        }

        if (v150)
        {
          v134 = v148;
          goto LABEL_195;
        }
      }
    }

    else
    {
      v138 = v10;
      v139 = v132;
      v140 = String.init(_nativeStorage:)();
      if (v141)
      {
        v134 = v140;
        v136 = v141;

        v10 = v138;
        goto LABEL_214;
      }

      *&v203 = [v139 length];
      if (!v203)
      {

        v134 = 0;
        v136 = 0xE000000000000000;
        v10 = v138;
        goto LABEL_214;
      }

      v10 = v138;
    }

    v144 = String.init(_cocoaString:)();
LABEL_212:
    v134 = v144;
    v136 = v145;
    goto LABEL_213;
  }

  v133 = _objc_getTaggedPointerTag(v131);
  if (!v133)
  {
    goto LABEL_193;
  }

  if (v133 == 22)
  {
    result = [v132 UTF8String];
    if (result)
    {
      v142 = String.init(utf8String:)(result);
      if (v143)
      {
LABEL_194:
        v134 = v142;
        v136 = v143;
LABEL_195:

        goto LABEL_214;
      }

      __break(1u);
LABEL_193:
      v201 = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v142 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v143)
      {
        [v132 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v136 = *(&v206 + 1);
        v134 = v206;
LABEL_213:

        goto LABEL_214;
      }

      goto LABEL_194;
    }

LABEL_274:
    __break(1u);
    goto LABEL_275;
  }

  if (v133 != 2)
  {
    goto LABEL_181;
  }

  MEMORY[0x1EEE9AC00](v133);
  *(&v196 - 2) = v132;
  v134 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v136 = v135;

LABEL_214:
  v207 = v10;
  *&v206 = v134;
  *(&v206 + 1) = v136;
  v203 = xmmword_1812DF8D0;
  outlined init with take of Any(&v206, &v204);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21[2] + 1, 1, v21);
  }

  v152 = v21[2];
  v151 = v21[3];
  if (v152 >= v151 >> 1)
  {
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v151 > 1), v152 + 1, 1, v21);
  }

  v21[2] = v152 + 1;
  v153 = &v21[6 * v152];
  v154 = v203;
  v155 = v205;
  v153[3] = v204;
  v153[4] = v155;
  v153[2] = v154;
LABEL_219:
  v156 = *(v7 + 16);
  v157 = [v156 nickname];
  if (v157)
  {
    v158 = v157;
    v159 = _objc_isTaggedPointer(v157);
    v160 = v158;
    v161 = v160;
    if (!v159)
    {
      goto LABEL_225;
    }

    v162 = _objc_getTaggedPointerTag(v160);
    if (!v162)
    {
      goto LABEL_237;
    }

    if (v162 != 22)
    {
      if (v162 == 2)
      {
        MEMORY[0x1EEE9AC00](v162);
        *(&v196 - 2) = v161;
        v163 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v165 = v164;

LABEL_257:
        v207 = v10;
        *&v206 = v163;
        *(&v206 + 1) = v165;
        v203 = xmmword_1812DF8E0;
        outlined init with take of Any(&v206, &v204);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21[2] + 1, 1, v21);
        }

        v180 = v21[2];
        v179 = v21[3];
        if (v180 >= v179 >> 1)
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v179 > 1), v180 + 1, 1, v21);
        }

        v21[2] = v180 + 1;
        v181 = &v21[6 * v180];
        v182 = v203;
        v183 = v205;
        v181[3] = v204;
        v181[4] = v183;
        v181[2] = v182;
        goto LABEL_262;
      }

LABEL_225:
      LOBYTE(v206) = 0;
      *&v203 = 0;
      LOBYTE(v201) = 0;
      v202 = 0;
      v166 = __CFStringIsCF();
      if (v166)
      {
        v163 = v203;
        if (!v203)
        {

          v165 = 0xE000000000000000;
          goto LABEL_257;
        }

        if (v202 == 1)
        {
          if (v206)
          {
            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
          }

          else
          {
            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
          }

          v172 = String.init<A>(_immortalCocoaString:count:encoding:)();
          goto LABEL_255;
        }

        if (v201)
        {
          if (v206 == 1)
          {
            MEMORY[0x1EEE9AC00](v166);
            *(&v196 - 4) = v161;
            *(&v196 - 3) = &v203;
            *(&v196 - 4) = 1536;
            *(&v196 - 1) = v163;
          }

          else
          {
            v174 = [v161 lengthOfBytesUsingEncoding_];
            MEMORY[0x1EEE9AC00](v174);
            *(&v196 - 4) = v161;
            *(&v196 - 3) = &v203;
            *(&v196 - 4) = 134217984;
            *(&v196 - 1) = v175;
          }

          v176 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v165 = v177;
          v178 = HIBYTE(v177) & 0xF;
          if ((v177 & 0x2000000000000000) == 0)
          {
            v178 = v176 & 0xFFFFFFFFFFFFLL;
          }

          if (v178)
          {
            v163 = v176;
            goto LABEL_239;
          }
        }
      }

      else
      {
        v167 = v161;
        v168 = String.init(_nativeStorage:)();
        if (v169)
        {
          v163 = v168;
          v165 = v169;

          goto LABEL_257;
        }

        *&v203 = [v167 length];
        if (!v203)
        {

          v163 = 0;
          v165 = 0xE000000000000000;
          goto LABEL_257;
        }
      }

      v172 = String.init(_cocoaString:)();
LABEL_255:
      v163 = v172;
      v165 = v173;
      goto LABEL_256;
    }

    result = [v161 UTF8String];
    if (result)
    {
      v170 = String.init(utf8String:)(result);
      if (v171)
      {
LABEL_238:
        v163 = v170;
        v165 = v171;
LABEL_239:

        goto LABEL_257;
      }

      __break(1u);
LABEL_237:
      v201 = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v170 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v171)
      {
        [v161 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v165 = *(&v206 + 1);
        v163 = v206;
LABEL_256:

        goto LABEL_257;
      }

      goto LABEL_238;
    }

LABEL_275:
    __break(1u);
    return result;
  }

LABEL_262:
  v184 = *(v7 + 16);
  v185 = [v184 phoneticRepresentation];
  if (v185)
  {
    v186 = v185;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14_MutableHandleCySo22NSPersonNameComponentsCGMd);
    v187 = swift_allocObject();
    [v186 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for NSPersonNameComponents();
    swift_dynamicCast();
    *(v187 + 16) = v206;

    v207 = &type metadata for PersonNameComponents;
    *&v206 = v187;
    *&v203 = 0xD000000000000016;
    *(&v203 + 1) = 0x8000000181487C50;
    outlined init with take of Any(&v206, &v204);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21[2] + 1, 1, v21);
    }

    v189 = v21[2];
    v188 = v21[3];
    if (v189 >= v188 >> 1)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v188 > 1), v189 + 1, 1, v21);
    }

    v21[2] = v189 + 1;
    v190 = &v21[6 * v189];
    v191 = v203;
    v192 = v205;
    v190[3] = v204;
    v190[4] = v192;
    v190[2] = v191;
  }

  else
  {
  }

  *&v203 = v7;
  *&v206 = v21;
  v193 = *MEMORY[0x1E69E75B8];
  v194 = type metadata accessor for Mirror.DisplayStyle();
  v195 = *(v194 - 8);
  (*(v195 + 104))(v6, v193, v194);
  (*(v195 + 56))(v6, 0, 1, v194);
  (*(v197 + 104))(v199, *MEMORY[0x1E69E75D8], v198);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSSg5label_yp5valuetGMd);
  lazy protocol witness table accessor for type [(label: String?, value: Any)] and conformance [A]();
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t static PersonNameComponents._forceBridgeFromObjectiveC(_:result:)(void *a1, uint64_t *a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14_MutableHandleCySo22NSPersonNameComponentsCGMd);
  v4 = swift_allocObject();
  [a1 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for NSPersonNameComponents();
  result = swift_dynamicCast();
  *(v4 + 16) = v6;
  *a2 = v4;
  return result;
}

uint64_t static PersonNameComponents._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, uint64_t *a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14_MutableHandleCySo22NSPersonNameComponentsCGMd);
  v4 = swift_allocObject();
  [a1 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for NSPersonNameComponents();
  swift_dynamicCast();
  *(v4 + 16) = v6;
  *a2 = v4;
  return 1;
}

uint64_t protocol witness for _ObjectiveCBridgeable._bridgeToObjectiveC() in conformance PersonNameComponents()
{
  [*(*v0 + 16) copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for NSPersonNameComponents();
  swift_dynamicCast();
  return v2;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance PersonNameComponents(void *a1, uint64_t *a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14_MutableHandleCySo22NSPersonNameComponentsCGMd);
  v4 = swift_allocObject();
  [a1 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for NSPersonNameComponents();
  result = swift_dynamicCast();
  *(v4 + 16) = v6;
  *a2 = v4;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance PersonNameComponents(void *a1, uint64_t *a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14_MutableHandleCySo22NSPersonNameComponentsCGMd);
  v4 = swift_allocObject();
  [a1 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for NSPersonNameComponents();
  swift_dynamicCast();
  *(v4 + 16) = v6;
  *a2 = v4;
  return 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance PersonNameComponents@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if (result)
  {
    v2 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14_MutableHandleCySo22NSPersonNameComponentsCGMd);
    v4 = swift_allocObject();
    [v2 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for NSPersonNameComponents();
    result = swift_dynamicCast();
    *(v4 + 16) = v5;
    *a2 = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t NSPersonNameComponents._toCustomAnyHashable()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14_MutableHandleCySo22NSPersonNameComponentsCGMd);
  v1 = swift_allocObject();
  [v0 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for NSPersonNameComponents();
  swift_dynamicCast();
  *(v1 + 16) = v3;
  lazy protocol witness table accessor for type PersonNameComponents and conformance PersonNameComponents();
  return AnyHashable.init<A>(_:)();
}

void protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSPersonNameComponents()
{
  v1 = *v0;
  NSPersonNameComponents._toCustomAnyHashable()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PersonNameComponents.CodingKeys()
{
  v1 = *v0;
  v2 = 0x66657250656D616ELL;
  v3 = 0x614E796C696D6166;
  v4 = 0x66667553656D616ELL;
  if (v1 != 4)
  {
    v4 = 0x656D616E6B63696ELL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6D614E6E65766967;
  if (v1 != 1)
  {
    v5 = 0x614E656C6464696DLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PersonNameComponents.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized PersonNameComponents.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PersonNameComponents.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonNameComponents.CodingKeys and conformance PersonNameComponents.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PersonNameComponents.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonNameComponents.CodingKeys and conformance PersonNameComponents.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PersonNameComponents.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation20PersonNameComponentsV10CodingKeys33_345C2DA33D4B781BC6C3ABD00DF0637ELLOGMd);
  v5 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v7 = &v25 - v6;
  v8 = [objc_allocWithZone(NSPersonNameComponents) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14_MutableHandleCySo22NSPersonNameComponentsCGMd);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v34 = v9;
  v10 = a1[3];
  v27 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  lazy protocol witness table accessor for type PersonNameComponents.CodingKeys and conformance PersonNameComponents.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
  }

  else
  {
    v33 = 0;
    v11 = v26;
    v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    specialized PersonNameComponents.namePrefix.setter(v12, v14, &selRef_setNamePrefix_);

    v32 = 1;
    v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    specialized PersonNameComponents.namePrefix.setter(v15, v16, &selRef_setGivenName_);

    v31 = 2;
    v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    specialized PersonNameComponents.namePrefix.setter(v17, v18, &selRef_setMiddleName_);

    v30 = 3;
    v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    specialized PersonNameComponents.namePrefix.setter(v19, v20, &selRef_setFamilyName_);

    v29 = 4;
    v21 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    specialized PersonNameComponents.namePrefix.setter(v21, v22, &selRef_setNameSuffix_);

    v28 = 5;
    v23 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    specialized PersonNameComponents.namePrefix.setter(v23, v24, &selRef_setNickname_);

    (*(v5 + 8))(v7, v11);
    *a2 = v34;
  }

  return __swift_destroy_boxed_opaque_existential_1(v27);
}

id PersonNameComponents.encode(to:)(void *a1)
{
  v3 = v2;
  v145[4] = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation20PersonNameComponentsV10CodingKeys33_345C2DA33D4B781BC6C3ABD00DF0637ELLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v140 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PersonNameComponents.CodingKeys and conformance PersonNameComponents.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = *(v9 + 16);
  v11 = [v10 namePrefix];
  if (!v11)
  {

    goto LABEL_40;
  }

  v12 = v11;
  isTaggedPointer = _objc_isTaggedPointer(v11);
  v14 = v12;
  v15 = v14;
  if (!isTaggedPointer)
  {
    goto LABEL_7;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v14);
  if (!TaggedPointerTag)
  {
LABEL_19:
    v143 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v27)
    {
      [v15 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
LABEL_37:

      goto LABEL_38;
    }

    goto LABEL_20;
  }

  if (TaggedPointerTag == 22)
  {
    result = [v15 UTF8String];
    if (!result)
    {
      __break(1u);
      goto LABEL_237;
    }

    String.init(utf8String:)(result);
    if (v26)
    {
      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_19;
  }

  if (TaggedPointerTag != 2)
  {
LABEL_7:
    LOBYTE(v142) = 0;
    v145[0] = 0;
    LOBYTE(v143) = 0;
    v144 = 0;
    IsCF = __CFStringIsCF();
    if (!IsCF)
    {
      v141 = v2;
      v19 = v8;
      v20 = v5;
      v21 = v9;
      v22 = v6;
      v23 = v15;
      String.init(_nativeStorage:)();
      if (v24 || (v145[0] = [v23 length]) == 0)
      {

        v6 = v22;
        v9 = v21;
        v5 = v20;
        v8 = v19;
        v3 = v141;
        goto LABEL_38;
      }

      v6 = v22;
      v9 = v21;
      v5 = v20;
      v8 = v19;
      v3 = v141;
LABEL_36:
      String.init(_cocoaString:)();
      goto LABEL_37;
    }

    v18 = v145[0];
    if (v145[0])
    {
      if (v144 == 1)
      {
        if (v142)
        {
          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
        }

        else
        {
          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        }

        String.init<A>(_immortalCocoaString:count:encoding:)();
        goto LABEL_37;
      }

      if (v143)
      {
        v141 = v6;
        if (v142 == 1)
        {
          MEMORY[0x1EEE9AC00](IsCF);
          *(&v140 - 4) = v15;
          *(&v140 - 3) = v145;
          *(&v140 - 4) = 1536;
          *(&v140 - 1) = v18;
        }

        else
        {
          v28 = [v15 lengthOfBytesUsingEncoding_];
          MEMORY[0x1EEE9AC00](v28);
          *(&v140 - 4) = v15;
          *(&v140 - 3) = v145;
          *(&v140 - 4) = 134217984;
          *(&v140 - 1) = v29;
        }

        v30 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v32 = HIBYTE(v31) & 0xF;
        if ((v31 & 0x2000000000000000) == 0)
        {
          v32 = v30 & 0xFFFFFFFFFFFFLL;
        }

        if (v32)
        {

          v6 = v141;
          goto LABEL_38;
        }

        v6 = v141;
      }

      goto LABEL_36;
    }

LABEL_20:

    goto LABEL_38;
  }

  v141 = v8;
  MEMORY[0x1EEE9AC00](TaggedPointerTag);
  *(&v140 - 2) = v15;
  String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

  v8 = v141;
LABEL_38:
  LOBYTE(v145[0]) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v3)
  {
    goto LABEL_235;
  }

LABEL_40:
  v33 = *(v9 + 16);
  v34 = [v33 givenName];
  if (!v34)
  {

    goto LABEL_79;
  }

  v35 = v34;
  v36 = _objc_isTaggedPointer(v34);
  v37 = v35;
  v38 = v37;
  if (!v36)
  {
    goto LABEL_46;
  }

  v39 = _objc_getTaggedPointerTag(v37);
  if (!v39)
  {
LABEL_58:
    v143 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v49)
    {
      [v38 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
LABEL_76:

      goto LABEL_77;
    }

    goto LABEL_59;
  }

  if (v39 == 22)
  {
    result = [v38 UTF8String];
    if (result)
    {
      String.init(utf8String:)(result);
      if (v48)
      {
        goto LABEL_59;
      }

      __break(1u);
      goto LABEL_58;
    }

LABEL_237:
    __break(1u);
    goto LABEL_238;
  }

  if (v39 != 2)
  {
LABEL_46:
    LOBYTE(v142) = 0;
    v145[0] = 0;
    LOBYTE(v143) = 0;
    v144 = 0;
    v40 = __CFStringIsCF();
    if (!v40)
    {
      v141 = v3;
      v42 = v8;
      v43 = v5;
      v44 = v9;
      v45 = v6;
      v46 = v38;
      String.init(_nativeStorage:)();
      if (v47 || (v145[0] = [v46 length]) == 0)
      {

        v6 = v45;
        v9 = v44;
        v5 = v43;
        v8 = v42;
        v3 = v141;
        goto LABEL_77;
      }

      v6 = v45;
      v9 = v44;
      v5 = v43;
      v8 = v42;
      v3 = v141;
LABEL_75:
      String.init(_cocoaString:)();
      goto LABEL_76;
    }

    v41 = v145[0];
    if (v145[0])
    {
      if (v144 == 1)
      {
        if (v142)
        {
          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
        }

        else
        {
          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        }

        String.init<A>(_immortalCocoaString:count:encoding:)();
        goto LABEL_76;
      }

      if (v143)
      {
        v141 = v6;
        if (v142 == 1)
        {
          MEMORY[0x1EEE9AC00](v40);
          *(&v140 - 4) = v38;
          *(&v140 - 3) = v145;
          *(&v140 - 4) = 1536;
          *(&v140 - 1) = v41;
        }

        else
        {
          v50 = [v38 lengthOfBytesUsingEncoding_];
          MEMORY[0x1EEE9AC00](v50);
          *(&v140 - 4) = v38;
          *(&v140 - 3) = v145;
          *(&v140 - 4) = 134217984;
          *(&v140 - 1) = v51;
        }

        v52 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v54 = HIBYTE(v53) & 0xF;
        if ((v53 & 0x2000000000000000) == 0)
        {
          v54 = v52 & 0xFFFFFFFFFFFFLL;
        }

        if (v54)
        {

          v6 = v141;
          goto LABEL_77;
        }

        v6 = v141;
      }

      goto LABEL_75;
    }

LABEL_59:

    goto LABEL_77;
  }

  v141 = v8;
  MEMORY[0x1EEE9AC00](v39);
  *(&v140 - 2) = v38;
  String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

  v8 = v141;
LABEL_77:
  LOBYTE(v145[0]) = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v3)
  {
    goto LABEL_235;
  }

LABEL_79:
  v55 = *(v9 + 16);
  v56 = [v55 middleName];
  if (!v56)
  {

    goto LABEL_118;
  }

  v57 = v56;
  v58 = _objc_isTaggedPointer(v56);
  v59 = v57;
  v60 = v59;
  if (!v58)
  {
    goto LABEL_85;
  }

  v61 = _objc_getTaggedPointerTag(v59);
  if (!v61)
  {
LABEL_97:
    v143 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v71)
    {
      [v60 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
LABEL_115:

      goto LABEL_116;
    }

    goto LABEL_98;
  }

  if (v61 == 22)
  {
    result = [v60 UTF8String];
    if (result)
    {
      String.init(utf8String:)(result);
      if (v70)
      {
        goto LABEL_98;
      }

      __break(1u);
      goto LABEL_97;
    }

LABEL_238:
    __break(1u);
    goto LABEL_239;
  }

  if (v61 != 2)
  {
LABEL_85:
    LOBYTE(v142) = 0;
    v145[0] = 0;
    LOBYTE(v143) = 0;
    v144 = 0;
    v62 = __CFStringIsCF();
    if (!v62)
    {
      v141 = v3;
      v64 = v8;
      v65 = v5;
      v66 = v9;
      v67 = v6;
      v68 = v60;
      String.init(_nativeStorage:)();
      if (v69 || (v145[0] = [v68 length]) == 0)
      {

        v6 = v67;
        v9 = v66;
        v5 = v65;
        v8 = v64;
        v3 = v141;
        goto LABEL_116;
      }

      v6 = v67;
      v9 = v66;
      v5 = v65;
      v8 = v64;
      v3 = v141;
LABEL_114:
      String.init(_cocoaString:)();
      goto LABEL_115;
    }

    v63 = v145[0];
    if (v145[0])
    {
      if (v144 == 1)
      {
        if (v142)
        {
          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
        }

        else
        {
          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        }

        String.init<A>(_immortalCocoaString:count:encoding:)();
        goto LABEL_115;
      }

      if (v143)
      {
        v141 = v6;
        if (v142 == 1)
        {
          MEMORY[0x1EEE9AC00](v62);
          *(&v140 - 4) = v60;
          *(&v140 - 3) = v145;
          *(&v140 - 4) = 1536;
          *(&v140 - 1) = v63;
        }

        else
        {
          v72 = [v60 lengthOfBytesUsingEncoding_];
          MEMORY[0x1EEE9AC00](v72);
          *(&v140 - 4) = v60;
          *(&v140 - 3) = v145;
          *(&v140 - 4) = 134217984;
          *(&v140 - 1) = v73;
        }

        v74 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v76 = HIBYTE(v75) & 0xF;
        if ((v75 & 0x2000000000000000) == 0)
        {
          v76 = v74 & 0xFFFFFFFFFFFFLL;
        }

        if (v76)
        {

          v6 = v141;
          goto LABEL_116;
        }

        v6 = v141;
      }

      goto LABEL_114;
    }

LABEL_98:

    goto LABEL_116;
  }

  v141 = v8;
  MEMORY[0x1EEE9AC00](v61);
  *(&v140 - 2) = v60;
  String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

  v8 = v141;
LABEL_116:
  LOBYTE(v145[0]) = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v3)
  {
    goto LABEL_235;
  }

LABEL_118:
  v77 = *(v9 + 16);
  v78 = [v77 familyName];
  if (!v78)
  {

    goto LABEL_157;
  }

  v79 = v78;
  v80 = _objc_isTaggedPointer(v78);
  v81 = v79;
  v82 = v81;
  if (!v80)
  {
    goto LABEL_124;
  }

  v83 = _objc_getTaggedPointerTag(v81);
  if (!v83)
  {
LABEL_136:
    v143 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v93)
    {
      [v82 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
LABEL_154:

      goto LABEL_155;
    }

    goto LABEL_137;
  }

  if (v83 == 22)
  {
    result = [v82 UTF8String];
    if (result)
    {
      String.init(utf8String:)(result);
      if (v92)
      {
        goto LABEL_137;
      }

      __break(1u);
      goto LABEL_136;
    }

LABEL_239:
    __break(1u);
    goto LABEL_240;
  }

  if (v83 != 2)
  {
LABEL_124:
    LOBYTE(v142) = 0;
    v145[0] = 0;
    LOBYTE(v143) = 0;
    v144 = 0;
    v84 = __CFStringIsCF();
    if (!v84)
    {
      v141 = v3;
      v86 = v8;
      v87 = v5;
      v88 = v9;
      v89 = v6;
      v90 = v82;
      String.init(_nativeStorage:)();
      if (v91 || (v145[0] = [v90 length]) == 0)
      {

        v6 = v89;
        v9 = v88;
        v5 = v87;
        v8 = v86;
        v3 = v141;
        goto LABEL_155;
      }

      v6 = v89;
      v9 = v88;
      v5 = v87;
      v8 = v86;
      v3 = v141;
LABEL_153:
      String.init(_cocoaString:)();
      goto LABEL_154;
    }

    v85 = v145[0];
    if (v145[0])
    {
      if (v144 == 1)
      {
        if (v142)
        {
          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
        }

        else
        {
          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        }

        String.init<A>(_immortalCocoaString:count:encoding:)();
        goto LABEL_154;
      }

      if (v143)
      {
        v141 = v6;
        if (v142 == 1)
        {
          MEMORY[0x1EEE9AC00](v84);
          *(&v140 - 4) = v82;
          *(&v140 - 3) = v145;
          *(&v140 - 4) = 1536;
          *(&v140 - 1) = v85;
        }

        else
        {
          v94 = [v82 lengthOfBytesUsingEncoding_];
          MEMORY[0x1EEE9AC00](v94);
          *(&v140 - 4) = v82;
          *(&v140 - 3) = v145;
          *(&v140 - 4) = 134217984;
          *(&v140 - 1) = v95;
        }

        v96 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v98 = HIBYTE(v97) & 0xF;
        if ((v97 & 0x2000000000000000) == 0)
        {
          v98 = v96 & 0xFFFFFFFFFFFFLL;
        }

        if (v98)
        {

          v6 = v141;
          goto LABEL_155;
        }

        v6 = v141;
      }

      goto LABEL_153;
    }

LABEL_137:

    goto LABEL_155;
  }

  v141 = v8;
  MEMORY[0x1EEE9AC00](v83);
  *(&v140 - 2) = v82;
  String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

  v8 = v141;
LABEL_155:
  LOBYTE(v145[0]) = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v3)
  {
    goto LABEL_235;
  }

LABEL_157:
  v99 = *(v9 + 16);
  v100 = [v99 nameSuffix];
  if (v100)
  {
    v101 = v100;
    v102 = _objc_isTaggedPointer(v100);
    v103 = v101;
    v104 = v103;
    if (!v102)
    {
LABEL_163:
      LOBYTE(v142) = 0;
      v145[0] = 0;
      LOBYTE(v143) = 0;
      v144 = 0;
      v106 = __CFStringIsCF();
      if (!v106)
      {
        v141 = v3;
        v108 = v8;
        v109 = v5;
        v110 = v9;
        v111 = v6;
        v112 = v104;
        String.init(_nativeStorage:)();
        if (v113 || (v145[0] = [v112 length]) == 0)
        {

          v6 = v111;
          v9 = v110;
          v5 = v109;
          v8 = v108;
          v3 = v141;
          goto LABEL_194;
        }

        v6 = v111;
        v9 = v110;
        v5 = v109;
        v8 = v108;
        v3 = v141;
LABEL_192:
        String.init(_cocoaString:)();
        goto LABEL_193;
      }

      v107 = v145[0];
      if (v145[0])
      {
        if (v144 == 1)
        {
          if (v142)
          {
            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
          }

          else
          {
            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
          }

          String.init<A>(_immortalCocoaString:count:encoding:)();
          goto LABEL_193;
        }

        if (v143)
        {
          v141 = v6;
          if (v142 == 1)
          {
            MEMORY[0x1EEE9AC00](v106);
            *(&v140 - 4) = v104;
            *(&v140 - 3) = v145;
            *(&v140 - 4) = 1536;
            *(&v140 - 1) = v107;
          }

          else
          {
            v116 = [v104 lengthOfBytesUsingEncoding_];
            MEMORY[0x1EEE9AC00](v116);
            *(&v140 - 4) = v104;
            *(&v140 - 3) = v145;
            *(&v140 - 4) = 134217984;
            *(&v140 - 1) = v117;
          }

          v118 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v120 = HIBYTE(v119) & 0xF;
          if ((v119 & 0x2000000000000000) == 0)
          {
            v120 = v118 & 0xFFFFFFFFFFFFLL;
          }

          if (v120)
          {

            v6 = v141;
            goto LABEL_194;
          }

          v6 = v141;
        }

        goto LABEL_192;
      }

LABEL_176:

      goto LABEL_194;
    }

    v105 = _objc_getTaggedPointerTag(v103);
    if (!v105)
    {
LABEL_175:
      v143 = 0;
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v115)
      {
        [v104 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
LABEL_193:

LABEL_194:
        LOBYTE(v145[0]) = 4;
        KeyedEncodingContainer.encode(_:forKey:)();
        if (!v3)
        {

          goto LABEL_196;
        }

LABEL_235:
        (*(v6 + 1))(v8, v5);
      }

      goto LABEL_176;
    }

    if (v105 != 22)
    {
      if (v105 == 2)
      {
        v141 = v8;
        MEMORY[0x1EEE9AC00](v105);
        *(&v140 - 2) = v104;
        String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

        v8 = v141;
        goto LABEL_194;
      }

      goto LABEL_163;
    }

    result = [v104 UTF8String];
    if (result)
    {
      String.init(utf8String:)(result);
      if (v114)
      {
        goto LABEL_176;
      }

      __break(1u);
      goto LABEL_175;
    }

LABEL_240:
    __break(1u);
    goto LABEL_241;
  }

LABEL_196:
  v121 = *(v9 + 16);
  v122 = [v121 nickname];
  if (!v122)
  {

    return (*(v6 + 1))(v8, v5);
  }

  v123 = v122;
  v124 = _objc_isTaggedPointer(v122);
  v125 = v123;
  v126 = v125;
  if (!v124)
  {
LABEL_202:
    LOBYTE(v142) = 0;
    v145[0] = 0;
    LOBYTE(v143) = 0;
    v144 = 0;
    v129 = __CFStringIsCF();
    if (!v129)
    {
      v128 = v6;
      v131 = v126;
      String.init(_nativeStorage:)();
      if (v132 || (v145[0] = [v131 length]) == 0)
      {

        goto LABEL_230;
      }

      v6 = v128;
LABEL_232:
      String.init(_cocoaString:)();
      goto LABEL_233;
    }

    v130 = v145[0];
    if (v145[0])
    {
      if (v144 == 1)
      {
        if (v142)
        {
          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
        }

        else
        {
          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        }

        String.init<A>(_immortalCocoaString:count:encoding:)();
        goto LABEL_233;
      }

      if (v143)
      {
        v128 = v6;
        if (v142 == 1)
        {
          MEMORY[0x1EEE9AC00](v129);
          *(&v140 - 4) = v126;
          *(&v140 - 3) = v145;
          *(&v140 - 4) = 1536;
          *(&v140 - 1) = v130;
        }

        else
        {
          v135 = [v126 lengthOfBytesUsingEncoding_];
          MEMORY[0x1EEE9AC00](v135);
          *(&v140 - 4) = v126;
          *(&v140 - 3) = v145;
          *(&v140 - 4) = 134217984;
          *(&v140 - 1) = v136;
        }

        v137 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v139 = HIBYTE(v138) & 0xF;
        if ((v138 & 0x2000000000000000) == 0)
        {
          v139 = v137 & 0xFFFFFFFFFFFFLL;
        }

        if (v139)
        {

          goto LABEL_230;
        }
      }

      goto LABEL_232;
    }

LABEL_215:

LABEL_234:
    LOBYTE(v145[0]) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    goto LABEL_235;
  }

  v127 = _objc_getTaggedPointerTag(v125);
  if (!v127)
  {
LABEL_214:
    v143 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v134)
    {
      [v126 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
LABEL_233:

      goto LABEL_234;
    }

    goto LABEL_215;
  }

  if (v127 != 22)
  {
    if (v127 == 2)
    {
      v128 = v6;
      MEMORY[0x1EEE9AC00](v127);
      *(&v140 - 2) = v126;
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

LABEL_230:
      v6 = v128;
      goto LABEL_234;
    }

    goto LABEL_202;
  }

  result = [v126 UTF8String];
  if (result)
  {
    String.init(utf8String:)(result);
    if (v133)
    {
      goto LABEL_215;
    }

    __break(1u);
    goto LABEL_214;
  }

LABEL_241:
  __break(1u);
  return result;
}
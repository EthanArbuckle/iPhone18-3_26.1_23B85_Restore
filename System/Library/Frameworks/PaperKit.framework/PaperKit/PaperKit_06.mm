uint64_t specialized Array.append<A>(contentsOf:)(unint64_t a1)
{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  if (a1 >> 62)
  {
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = __CocoaSet.count.getter();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)();
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  specialized Array._copyContents(initializing:)(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  v4 = a1;
  v5 = *(a1 + 16);
  if (!(*v1 >> 62))
  {
    v6 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_3;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v16 = __CocoaSet.count.getter();
  v7 = __OFADD__(v16, v5);
  result = v16 + v5;
  if (v7)
  {
    goto LABEL_11;
  }

LABEL_3:
  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)();
  v2 = *v1;
  v3 = *v1 & 0xFFFFFFFFFFFFFF8;
  v9 = *(v3 + 0x10);
  v10 = (*(v3 + 0x18) >> 1) - v9;
  result = specialized Sequence._copySequenceContents(initializing:)(&v34, (v3 + 8 * v9 + 32), v10, v4);
  if (result < v5)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = result;
  if (result >= 1)
  {
    v14 = *(v3 + 16);
    v7 = __OFADD__(v14, result);
    v15 = v14 + result;
    if (v7)
    {
      __break(1u);
LABEL_16:
      v19 = (v12 + 64) >> 6;
      while (1)
      {
        v20 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_38;
        }

        if (v20 >= v19)
        {
          goto LABEL_8;
        }

        v21 = *(v11 + 8 * v20);
        ++v3;
        if (v21)
        {
          v17 = (v21 - 1) & v21;
          v18 = __clz(__rbit64(v21)) | (v20 << 6);
          v3 = v20;
          goto LABEL_21;
        }
      }
    }

    *(v3 + 16) = v15;
  }

  result = v34;
  if (v13 != v10)
  {
LABEL_8:
    result = outlined consume of Set<UIColor>.Iterator._Variant();
    *v1 = v2;
    return result;
  }

LABEL_13:
  v4 = *(v3 + 16);
  v11 = v35;
  v12 = v36;
  v3 = v37;
  v33 = v35;
  if (!v38)
  {
    goto LABEL_16;
  }

  v17 = (v38 - 1) & v38;
  v18 = __clz(__rbit64(v38)) | (v37 << 6);
  v19 = (v36 + 64) >> 6;
LABEL_21:
  v22 = result;
  v23 = *(*(result + 56) + 8 * v18);
  v24 = v23;
  v25 = v23;
  v26 = v33;
  while (1)
  {
LABEL_23:
    if (v4 + 1 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v32 = v25;
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v25 = v32;
      v26 = v33;
    }

    v2 = *v1;
    v27 = *v1 & 0xFFFFFFFFFFFFFF8;
    v28 = *(v27 + 0x18) >> 1;
    if (v4 < v28)
    {
      break;
    }

    *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
  }

  while (1)
  {
    *(v27 + 32 + 8 * v4++) = v25;
    if (!v17)
    {
      break;
    }

    result = v22;
LABEL_33:
    v31 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v25 = *(*(result + 56) + ((v3 << 9) | (8 * v31)));
    v26 = v33;
    if (v4 == v28)
    {
      v4 = v28;
      *(v27 + 16) = v28;
      goto LABEL_23;
    }
  }

  v29 = v3;
  result = v22;
  while (1)
  {
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v30 >= v19)
    {
      *(v27 + 16) = v4;
      goto LABEL_8;
    }

    v17 = *(v26 + 8 * v30);
    ++v29;
    if (v17)
    {
      v3 = v30;
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

{
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v59 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v56 = v46 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v52 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v51 = v46 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v55 = v46 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v46 - v12;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA15SharedTagged_10Vy8PaperKit0F13CanvasElementVG_GMd);
  v58 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v15 = v46 - v14;
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_10<TaggedCanvasElement>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v16 = dispatch thunk of Sequence.underestimatedCount.getter();
  v57 = v1;
  v17 = *v1;
  v18 = *(*v1 + 16);
  v19 = v18 + v16;
  if (__OFADD__(v18, v16))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v20 = v16;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v22 = v17[3] >> 1, v22 < v19))
  {
    if (v18 <= v19)
    {
      v23 = v19;
    }

    else
    {
      v23 = v18;
    }

    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v23, 1, v17);
    v22 = v17[3] >> 1;
  }

  v24 = *(v59 + 72);
  v25 = v22 - v17[2];
  v50 = (*(v59 + 80) + 32) & ~*(v59 + 80);
  v54 = v24;
  (*(v11 + 16))(v13, a1, v10);
  v26 = v13;
  v27 = dispatch thunk of Sequence._copyContents(initializing:)();
  (*(v11 + 8))(a1, v10);
  if (v27 < v20)
  {
    goto LABEL_16;
  }

  if (v27 >= 1)
  {
    v28 = v17[2];
    v29 = __OFADD__(v28, v27);
    v30 = v28 + v27;
    if (v29)
    {
      __break(1u);
      goto LABEL_20;
    }

    v17[2] = v30;
  }

  if (v27 == v25)
  {
LABEL_17:
    v10 = v17[2];
    v32 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_10<TaggedCanvasElement>>.Iterator and conformance CROrderedSet<A>.Iterator, &_s9Coherence12CROrderedSetV8IteratorVyAA15SharedTagged_10Vy8PaperKit0F13CanvasElementVG_GMd);
    v33 = v55;
    v46[1] = v32;
    dispatch thunk of IteratorProtocol.next()();
    v34 = v33;
    v27 = v51;
    outlined init with copy of Date?(v34, v51, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
    a1 = v59;
    v26 = v53;
    v48 = *(v59 + 48);
    v49 = v59 + 48;
    if (v48(v27, 1, v53) == 1)
    {
LABEL_18:
      outlined destroy of StocksKitCurrencyCache.Provider?(v55, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
      (*(v58 + 8))(v15, v60);
      result = outlined destroy of StocksKitCurrencyCache.Provider?(v27, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
      goto LABEL_14;
    }

LABEL_20:
    v35 = (a1 + 32);
    v46[0] = a1 + 8;
    do
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v27, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
      v36 = v17[3];
      v37 = v36 >> 1;
      if ((v36 >> 1) < v10 + 1)
      {
        v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v36 > 1, v10 + 1, 1, v17);
        v37 = v17[3] >> 1;
      }

      v38 = v52;
      outlined init with copy of Date?(v55, v52, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
      if (v48(v38, 1, v26) == 1)
      {
        v39 = v52;
LABEL_33:
        outlined destroy of StocksKitCurrencyCache.Provider?(v39, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
        v40 = v10;
      }

      else
      {
        v59 = *v35;
        if (v10 <= v37)
        {
          v40 = v37;
        }

        else
        {
          v40 = v10;
        }

        v41 = v17 + v50 + v54 * v10;
        v39 = v52;
        v47 = v40;
        while (1)
        {
          (v59)(v56, v39, v26);
          if (v40 == v10)
          {
            break;
          }

          v42 = v35;
          v43 = v55;
          outlined destroy of StocksKitCurrencyCache.Provider?(v55, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
          (v59)(v41, v56, v26);
          ++v10;
          dispatch thunk of IteratorProtocol.next()();
          v26 = v53;
          v44 = v43;
          v35 = v42;
          v40 = v47;
          outlined init with copy of Date?(v44, v39, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
          v45 = v48(v39, 1, v26);
          v41 += v54;
          if (v45 == 1)
          {
            goto LABEL_33;
          }
        }

        (*v46[0])(v56, v26);
        v10 = v40;
      }

      v17[2] = v40;
      v27 = v51;
      outlined init with copy of Date?(v55, v51, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
    }

    while (v48(v27, 1, v26) != 1);
    goto LABEL_18;
  }

  result = (*(v58 + 8))(v15, v60);
LABEL_14:
  *v57 = v17;
  return result;
}

void specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  v66 = type metadata accessor for Color(0);
  v4 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v64 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v63 = &v51 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v51 - v12;
  v14 = *(a1 + 16);
  v15 = *v2;
  v16 = *(*v2 + 16);
  v17 = v16 + v14;
  if (__OFADD__(v16, v14))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v65 = v8;
  if (!isUniquelyReferenced_nonNull_native || (v19 = v15[3] >> 1, v19 < v17))
  {
    if (v16 <= v17)
    {
      v20 = v16 + v14;
    }

    else
    {
      v20 = v16;
    }

    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v20, 1, v15);
    v19 = v15[3] >> 1;
  }

  v21 = v15[2];
  v17 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v16 = *(v4 + 72);
  v22 = v19 - v21;
  specialized Sequence._copySequenceContents(initializing:)(&v67, v15 + v17 + v16 * v21, v19 - v21, a1);
  if (v23 < v14)
  {
    goto LABEL_16;
  }

  if (v23)
  {
    v25 = v15[2];
    v26 = __OFADD__(v25, v23);
    v27 = v25 + v23;
    if (v26)
    {
      __break(1u);
      goto LABEL_20;
    }

    v15[2] = v27;
  }

  if (v23 != v22)
  {
    outlined consume of Set<UIColor>.Iterator._Variant();
LABEL_14:
    *v2 = v15;
    return;
  }

LABEL_17:
  v62 = v15[2];
  v24 = v68;
  v54 = v68;
  v55 = v67;
  v27 = v70;
  v52 = v69;
  v28 = v71;
  if (v71)
  {
    v29 = v70;
LABEL_27:
    v61 = (v28 - 1) & v28;
    outlined init with copy of ShapeType(*(v55 + 48) + (__clz(__rbit64(v28)) | (v29 << 6)) * v16, v13, type metadata accessor for Color);
    v33 = v66;
    v57 = *(v1 + 56);
    v57(v13, 0, 1, v66);
    v32 = v29;
    while (1)
    {
      v34 = v63;
      outlined init with copy of Date?(v13, v63, &_s8PaperKit5ColorVSgMd);
      v35 = *(v1 + 48);
      v1 += 48;
      v60 = v35;
      if (v35(v34, 1, v33) == 1)
      {
        break;
      }

      v53 = (v52 + 64) >> 6;
      v56 = v4 + 56;
      v36 = v62;
      while (1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v34, &_s8PaperKit5ColorVSgMd);
        v39 = v15[3];
        v40 = v39 >> 1;
        v62 = v36;
        if ((v39 >> 1) < v36 + 1)
        {
          v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v39 > 1, v36 + 1, 1, v15);
          v40 = v15[3] >> 1;
        }

        v41 = v65;
        outlined init with copy of Date?(v13, v65, &_s8PaperKit5ColorVSgMd);
        if (v60(v41, 1, v66) != 1)
        {
          break;
        }

        v42 = v32;
        v43 = v65;
LABEL_37:
        outlined destroy of StocksKitCurrencyCache.Provider?(v43, &_s8PaperKit5ColorVSgMd);
        v37 = v62;
        v32 = v42;
LABEL_32:
        v15[2] = v37;
        v34 = v63;
        outlined init with copy of Date?(v13, v63, &_s8PaperKit5ColorVSgMd);
        v38 = v60(v34, 1, v66);
        v36 = v62;
        if (v38 == 1)
        {
          goto LABEL_29;
        }
      }

      v58 = v15 + v17;
      v44 = v62;
      if (v62 <= v40)
      {
        v44 = v40;
      }

      v59 = v44;
      v43 = v65;
      while (1)
      {
        v47 = v64;
        outlined init with take of Shape(v43, v64, type metadata accessor for Color);
        if (v62 == v59)
        {
          outlined destroy of Paper(v47, type metadata accessor for Color);
          v37 = v59;
          v62 = v59;
          goto LABEL_32;
        }

        v4 = v62;
        outlined destroy of StocksKitCurrencyCache.Provider?(v13, &_s8PaperKit5ColorVSgMd);
        outlined init with take of Shape(v47, &v58[v4 * v16], type metadata accessor for Color);
        v48 = v61;
        if (!v61)
        {
          break;
        }

        v49 = v32;
LABEL_53:
        v61 = (v48 - 1) & v48;
        outlined init with copy of ShapeType(*(v55 + 48) + (__clz(__rbit64(v48)) | (v49 << 6)) * v16, v13, type metadata accessor for Color);
        v45 = 0;
        v42 = v49;
LABEL_42:
        v62 = v4 + 1;
        v46 = v66;
        v57(v13, v45, 1, v66);
        v43 = v65;
        outlined init with copy of Date?(v13, v65, &_s8PaperKit5ColorVSgMd);
        v32 = v42;
        if (v60(v43, 1, v46) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v53 <= (v32 + 1))
      {
        v50 = v32 + 1;
      }

      else
      {
        v50 = v53;
      }

      v42 = v50 - 1;
      while (1)
      {
        v49 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          break;
        }

        if (v49 >= v53)
        {
          v61 = 0;
          v45 = 1;
          goto LABEL_42;
        }

        v48 = *(v54 + 8 * v49);
        ++v32;
        if (v48)
        {
          goto LABEL_53;
        }
      }

      __break(1u);
LABEL_55:
      v33 = v66;
      v57 = *(v1 + 56);
      v57(v13, 1, 1, v66);
      v61 = 0;
    }

LABEL_29:
    outlined destroy of StocksKitCurrencyCache.Provider?(v13, &_s8PaperKit5ColorVSgMd);
    outlined consume of Set<UIColor>.Iterator._Variant();
    outlined destroy of StocksKitCurrencyCache.Provider?(v34, &_s8PaperKit5ColorVSgMd);
    goto LABEL_14;
  }

LABEL_20:
  v30 = (v52 + 64) >> 6;
  if (v30 <= v27 + 1)
  {
    v31 = v27 + 1;
  }

  else
  {
    v31 = (v52 + 64) >> 6;
  }

  v32 = v31 - 1;
  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v29 >= v30)
    {
      goto LABEL_55;
    }

    v28 = *(v24 + 8 * v29);
    ++v27;
    if (v28)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
}

void *specialized Array.append<A>(contentsOf:)(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14AnalyticsEvent_pMd);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8_NSRangeV_8PaperKit10ReflowWordCtMd);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(unint64_t a1, void (*a2)(void), void (*a3)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v3 >> 62))
  {
    v8 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = __OFADD__(v8, v7);
    result = v8 + v7;
    if (!v9)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = __CocoaSet.count.getter();
  v9 = __OFADD__(v17, v7);
  result = v17 + v7;
  if (v9)
  {
    goto LABEL_13;
  }

LABEL_5:
  a2();
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(v12 + 0x10) + 32, (*(v12 + 0x18) >> 1) - *(v12 + 0x10), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v14 < 1)
  {
LABEL_9:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t specialized CanvasElement.renderDrawing(_:bounds:scale:in:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 680) = a4;
  *(v5 + 672) = a3;
  *(v5 + 664) = a5;
  *(v5 + 656) = a2;
  *(v5 + 648) = a1;
  v6 = type metadata accessor for PKStroke();
  *(v5 + 688) = v6;
  *(v5 + 696) = *(v6 - 8);
  *(v5 + 704) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit8PKStrokeVSgMd);
  *(v5 + 712) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized CanvasElement.renderDrawing(_:bounds:scale:in:options:), 0, 0);
}

{
  *(v5 + 680) = a4;
  *(v5 + 672) = a3;
  *(v5 + 664) = a5;
  *(v5 + 656) = a2;
  *(v5 + 648) = a1;
  v6 = type metadata accessor for PKStroke();
  *(v5 + 688) = v6;
  *(v5 + 696) = *(v6 - 8);
  *(v5 + 704) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit8PKStrokeVSgMd);
  *(v5 + 712) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized CanvasElement.renderDrawing(_:bounds:scale:in:options:), 0, 0);
}

{
  *(v5 + 680) = a4;
  *(v5 + 672) = a3;
  *(v5 + 664) = a5;
  *(v5 + 656) = a2;
  *(v5 + 648) = a1;
  v6 = type metadata accessor for PKStroke();
  *(v5 + 688) = v6;
  *(v5 + 696) = *(v6 - 8);
  *(v5 + 704) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit8PKStrokeVSgMd);
  *(v5 + 712) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized CanvasElement.renderDrawing(_:bounds:scale:in:options:), 0, 0);
}

uint64_t specialized CanvasElement.renderDrawing(_:bounds:scale:in:options:)()
{
  v1 = *(v0 + 648);
  CGContextSaveGState(*(v0 + 672));
  if (!v1 || (v4 = *(v0 + 656), v5 = *(v0 + 648), *&v2 = *v4, *(v0 + 720) = *v4, *&v3 = *(v4 + 8), *(v0 + 728) = v3, v6 = *(v4 + 16), *(v0 + 736) = v6, v7 = *(v4 + 24), *(v0 + 744) = v7, (*(v4 + 32) & 1) != 0))
  {
    v8 = 0;
    goto LABEL_4;
  }

  v68 = v3;
  v69 = v2;
  v70 = v7;
  v72 = v6;
  v12 = CGRect.isFinite.getter(*&v2, *&v3, v6, v7);
  v8 = 0;
  if (!v12)
  {
    goto LABEL_4;
  }

  if (v72 <= 1.0 || v70 <= 1.0)
  {
    goto LABEL_4;
  }

  v14 = v5;
  Type = CGContextGetType();
  v16 = *(v0 + 680);
  if (Type == 1)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v21 = v68;
    v20 = v69;
    v23 = v70;
    v22 = v72;
    if (*v16)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v17 = Type != 6;
  v21 = v68;
  v20 = v69;
  if (*v16 != 1)
  {
    v23 = v70;
    v22 = v72;
LABEL_18:
    v18 = v17;
    v19 = 1;
    v17 = 0;
    goto LABEL_19;
  }

  v19 = 0;
  v18 = Type != 6;
  v23 = v70;
  v22 = v72;
LABEL_19:
  *(v0 + 810) = v19;
  *(v0 + 809) = v18;
  *(v0 + 808) = v17;
  *&v24 = v20;
  *(&v24 + 1) = v21;
  *&v25 = v22;
  *(&v25 + 1) = v23;
  v26 = *(v0 + 664);
  *(v0 + 592) = v24;
  *(v0 + 608) = v25;
  v27 = 512.0 / v26;
  Width = CGRectGetWidth(*&v20);
  if (Width + Width < v27)
  {
    v29 = 512;
    do
    {
      *&v75.origin.y = v68;
      *&v75.origin.x = v69;
      v75.size.height = v70;
      v75.size.width = v72;
      Height = CGRectGetHeight(v75);
      if (Height + Height >= v27)
      {
        break;
      }

      v29 /= 2;
      v27 = v29 / *(v0 + 664);
      *&v76.origin.y = v68;
      *&v76.origin.x = v69;
      v76.size.height = v70;
      v76.size.width = v72;
      v31 = CGRectGetWidth(v76);
    }

    while (v31 + v31 < v27);
  }

  *(v0 + 752) = v27;
  v32 = *(v0 + 680);
  v33 = *(v0 + 664);
  v34 = [objc_allocWithZone(MEMORY[0x1E6978450]) initWithSize:0 scale:v17 renderQueue:*(v32 + 124) sixChannelBlending:v27 extendedDynamicRange:{v27, v33}];
  *(v0 + 760) = v34;
  [v34 setInvertColors_];
  *(v0 + 768) = floor(*&v69 * v33);
  v35 = floor(*&v68 * v33) / v33;
  v36 = [v14 strokes];
  v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 776) = v37;

  *(v0 + 784) = *(v37 + 16);
  while (2)
  {
    *(v0 + 792) = v35;
    v39 = *(v0 + 768) / *(v0 + 664);
    do
    {
      *(v0 + 800) = v39;
      if (*(v0 + 784))
      {
        v41 = 0;
        v42 = *(v0 + 792);
        v43 = *(v0 + 752);
        while (1)
        {
          v44 = *(v0 + 776);
          if (v41 >= *(v44 + 16))
          {
            __break(1u);
            return MEMORY[0x1EEE6DEC8](v38);
          }

          (*(*(v0 + 696) + 16))(*(v0 + 704), v44 + ((*(*(v0 + 696) + 80) + 32) & ~*(*(v0 + 696) + 80)) + *(*(v0 + 696) + 72) * v41, *(v0 + 688));
          PKStroke.renderBounds.getter();
          v80.origin.x = v39;
          v80.origin.y = v42;
          v80.size.width = v43;
          v80.size.height = v43;
          if (CGRectIntersectsRect(v77, v80))
          {
            break;
          }

          v45 = *(v0 + 784);
          ++v41;
          v38 = (*(*(v0 + 696) + 8))(*(v0 + 704), *(v0 + 688));
          if (v41 == v45)
          {
            goto LABEL_25;
          }
        }

        v48 = *(v0 + 808);
        v49 = *(v0 + 712);
        v50 = *(v0 + 696);
        v51 = *(v0 + 688);
        v52 = *(v0 + 672);
        (*(v50 + 32))(v49, *(v0 + 704), v51);
        (*(v50 + 56))(v49, 0, 1, v51);
        outlined destroy of StocksKitCurrencyCache.Provider?(v49, &_s9PencilKit8PKStrokeVSgMd);
        CGContextSaveGState(v52);
        v78.origin.x = v39;
        v78.origin.y = v42;
        v78.size.width = v43;
        v78.size.height = v43;
        MinY = CGRectGetMinY(v78);
        v79.origin.x = v39;
        v79.origin.y = v42;
        v79.size.width = v43;
        v79.size.height = v43;
        MaxY = CGRectGetMaxY(v79);
        *(v0 + 400) = 0x3FF0000000000000;
        *(v0 + 408) = 0;
        *(v0 + 416) = 0;
        *(v0 + 424) = 0x3FF0000000000000;
        *(v0 + 432) = 0;
        *(v0 + 440) = 0;
        *(v0 + 448) = 0x3FF0000000000000;
        *(v0 + 456) = 0;
        *(v0 + 464) = 0;
        *(v0 + 472) = 0xBFF0000000000000;
        *(v0 + 480) = 0;
        *(v0 + 488) = MinY + MaxY;
        CGAffineTransformConcat((v0 + 496), (v0 + 400), (v0 + 448));
        v55 = *(v0 + 512);
        v56 = *(v0 + 528);
        *(v0 + 544) = *(v0 + 496);
        *(v0 + 560) = v55;
        *(v0 + 576) = v56;
        CGContextConcatCTM(v52, (v0 + 544));
        if (v48)
        {
          v57 = v0 + 144;
          v58 = *(v0 + 760);
          v59 = *(v0 + 648);
          *(v0 + 144) = v0;
          *(v0 + 184) = v0 + 624;
          *(v0 + 152) = specialized CanvasElement.renderDrawing(_:bounds:scale:in:options:);
          v60 = swift_continuation_init();
          *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo10CGImageRefaSg_ACts5NeverOGMd);
          *(v0 + 336) = MEMORY[0x1E69E9820];
          *(v0 + 344) = 1107296256;
          *(v0 + 352) = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable (@unowned CGImageRef?, @unowned CGImageRef?) -> () with result type (CGImageRef?, CGImageRef?);
          *(v0 + 360) = &block_descriptor_65;
          *(v0 + 368) = v60;
          [v58 sixChannelCGRenderDrawing:v59 clippedToStrokeSpaceRect:v0 + 336 scale:v39 completion:{v42, v43, v43, 1.0, v68, v69}];
        }

        else if ((*(v0 + 810) & 1) != 0 || (*(v0 + 809) & 1) != 0 || ([*(v0 + 760) respondsToSelector_] & 1) == 0)
        {
          v57 = v0 + 16;
          v65 = *(v0 + 760);
          v66 = *(v0 + 648);
          *(v0 + 16) = v0;
          *(v0 + 56) = v0 + 640;
          *(v0 + 24) = specialized CanvasElement.renderDrawing(_:bounds:scale:in:options:);
          v67 = swift_continuation_init();
          *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo7UIImageCSgs5NeverOGMd);
          *(v0 + 208) = MEMORY[0x1E69E9820];
          *(v0 + 216) = 1107296256;
          *(v0 + 224) = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable (@unowned UIImage?) -> () with result type UIImage?;
          *(v0 + 232) = &block_descriptor_59;
          *(v0 + 240) = v67;
          [v65 renderDrawing:v66 clippedToStrokeSpaceRect:v0 + 208 scale:v39 completion:{v42, v43, v43, 1.0, v68, v69}];
        }

        else
        {
          v57 = v0 + 80;
          v61 = *(v0 + 760);
          v62 = *(v0 + 672);
          v63 = *(v0 + 648);
          *(v0 + 80) = v0;
          *(v0 + 88) = specialized CanvasElement.renderDrawing(_:bounds:scale:in:options:);
          v64 = swift_continuation_init();
          *(v0 + 328) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5NeverOGMd);
          *(v0 + 272) = MEMORY[0x1E69E9820];
          *(v0 + 280) = 1107296256;
          *(v0 + 288) = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable () -> () with result type ();
          *(v0 + 296) = &block_descriptor_62;
          *(v0 + 304) = v64;
          [v61 sixChannelPDFRenderDrawing:v63 context:v62 clippedToStrokeSpaceRect:v0 + 272 scale:v39 completion:{v42, v43, v43, 1.0}];
        }

        v38 = v57;

        return MEMORY[0x1EEE6DEC8](v38);
      }

LABEL_25:
      v40 = *(v0 + 712);
      (*(*(v0 + 696) + 56))(v40, 1, 1, *(v0 + 688));
      outlined destroy of StocksKitCurrencyCache.Provider?(v40, &_s9PencilKit8PKStrokeVSgMd);
      v39 = *(v0 + 800) + *(v0 + 752);
    }

    while (CGRectGetMaxX(*(v0 + 592)) > v39);
    v35 = *(v0 + 792) + *(v0 + 752);
    if (CGRectGetMaxY(*(v0 + 592)) > v35)
    {
      continue;
    }

    break;
  }

  v46 = *(v0 + 680);

  if (*(v46 + 121) == 1)
  {
    v71 = *(v0 + 736);
    v73 = *(v0 + 720);
    CGContextSetRGBFillColor(*(v0 + 672), 1.0, 0.0, 0.0, 0.2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd);
    v47 = swift_allocObject();
    v47[1] = xmmword_1D4058CF0;
    v47[2] = v73;
    v47[3] = v71;
    CGContextRef.fill(_:)(v47);
  }

  v8 = *(v0 + 760);
LABEL_4:
  v9 = *(v0 + 672);

  CGContextRestoreGState(v9);

  v10 = *(v0 + 8);

  return v10();
}

{

  return MEMORY[0x1EEE6DFA0](specialized CanvasElement.renderDrawing(_:bounds:scale:in:options:), 0, 0);
}

{
  v1 = *(v0 + 624);
  v2 = *(v0 + 632);
  if (v2)
  {
    v3 = *(v0 + 800);
    v4 = *(v0 + 792);
    v5 = *(v0 + 752);
    v6 = *(v0 + 672);
    v7 = v2;
    CGContextSetBlendMode(v6, kCGBlendModeMultiply);
    v48.origin.x = v3;
    v48.origin.y = v4;
    v48.size.width = v5;
    v48.size.height = v5;
    CGContextRef.draw(_:in:byTiling:)(v7, v48, 0);
  }

  if (v1)
  {
    v8 = *(v0 + 800);
    v9 = *(v0 + 792);
    v10 = *(v0 + 752);
    CGContextSetBlendMode(*(v0 + 672), kCGBlendModePlusLighter);
    v49.origin.x = v8;
    v49.origin.y = v9;
    v49.size.width = v10;
    v49.size.height = v10;
    CGContextRef.draw(_:in:byTiling:)(v1, v49, 0);
  }

  CGContextRestoreGState(*(v0 + 672));
  while (1)
  {
    v12 = *(v0 + 800) + *(v0 + 752);
    if (CGRectGetMaxX(*(v0 + 592)) <= v12)
    {
      v14 = *(v0 + 792) + *(v0 + 752);
      if (CGRectGetMaxY(*(v0 + 592)) <= v14)
      {
        v40 = *(v0 + 680);

        if (*(v40 + 121) == 1)
        {
          v45 = *(v0 + 736);
          v46 = *(v0 + 720);
          CGContextSetRGBFillColor(*(v0 + 672), 1.0, 0.0, 0.0, 0.2);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd);
          v41 = swift_allocObject();
          v41[1] = xmmword_1D4058CF0;
          v41[2] = v46;
          v41[3] = v45;
          CGContextRef.fill(_:)(v41);
        }

        v42 = *(v0 + 672);
        CGContextRestoreGState(v42);

        v43 = *(v0 + 8);

        return v43();
      }

      *(v0 + 792) = v14;
      v12 = *(v0 + 768) / *(v0 + 664);
    }

    *(v0 + 800) = v12;
    if (*(v0 + 784))
    {
      break;
    }

LABEL_6:
    v11 = *(v0 + 712);
    (*(*(v0 + 696) + 56))(v11, 1, 1, *(v0 + 688));
    outlined destroy of StocksKitCurrencyCache.Provider?(v11, &_s9PencilKit8PKStrokeVSgMd);
  }

  v15 = 0;
  v16 = *(v0 + 792);
  v17 = *(v0 + 752);
  while (1)
  {
    v18 = *(v0 + 776);
    if (v15 >= *(v18 + 16))
    {
      __break(1u);
      return MEMORY[0x1EEE6DEC8](v13);
    }

    (*(*(v0 + 696) + 16))(*(v0 + 704), v18 + ((*(*(v0 + 696) + 80) + 32) & ~*(*(v0 + 696) + 80)) + *(*(v0 + 696) + 72) * v15, *(v0 + 688));
    PKStroke.renderBounds.getter();
    v53.origin.x = v12;
    v53.origin.y = v16;
    v53.size.width = v17;
    v53.size.height = v17;
    if (CGRectIntersectsRect(v50, v53))
    {
      break;
    }

    v19 = *(v0 + 784);
    ++v15;
    v13 = (*(*(v0 + 696) + 8))(*(v0 + 704), *(v0 + 688));
    if (v15 == v19)
    {
      goto LABEL_6;
    }
  }

  v20 = *(v0 + 808);
  v21 = *(v0 + 712);
  v22 = *(v0 + 696);
  v23 = *(v0 + 688);
  v24 = *(v0 + 672);
  (*(v22 + 32))(v21, *(v0 + 704), v23);
  (*(v22 + 56))(v21, 0, 1, v23);
  outlined destroy of StocksKitCurrencyCache.Provider?(v21, &_s9PencilKit8PKStrokeVSgMd);
  CGContextSaveGState(v24);
  v51.origin.x = v12;
  v51.origin.y = v16;
  v51.size.width = v17;
  v51.size.height = v17;
  MinY = CGRectGetMinY(v51);
  v52.origin.x = v12;
  v52.origin.y = v16;
  v52.size.width = v17;
  v52.size.height = v17;
  MaxY = CGRectGetMaxY(v52);
  *(v0 + 400) = 0x3FF0000000000000;
  *(v0 + 408) = 0;
  *(v0 + 416) = 0;
  *(v0 + 424) = 0x3FF0000000000000;
  *(v0 + 432) = 0;
  *(v0 + 440) = 0;
  *(v0 + 448) = 0x3FF0000000000000;
  *(v0 + 456) = 0;
  *(v0 + 464) = 0;
  *(v0 + 472) = 0xBFF0000000000000;
  *(v0 + 480) = 0;
  *(v0 + 488) = MinY + MaxY;
  CGAffineTransformConcat((v0 + 496), (v0 + 400), (v0 + 448));
  v27 = *(v0 + 512);
  v28 = *(v0 + 528);
  *(v0 + 544) = *(v0 + 496);
  *(v0 + 560) = v27;
  *(v0 + 576) = v28;
  CGContextConcatCTM(v24, (v0 + 544));
  if (v20)
  {
    v29 = v0 + 144;
    v30 = *(v0 + 760);
    v31 = *(v0 + 648);
    *(v0 + 144) = v0;
    *(v0 + 184) = v0 + 624;
    *(v0 + 152) = specialized CanvasElement.renderDrawing(_:bounds:scale:in:options:);
    v32 = swift_continuation_init();
    *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo10CGImageRefaSg_ACts5NeverOGMd);
    *(v0 + 336) = MEMORY[0x1E69E9820];
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable (@unowned CGImageRef?, @unowned CGImageRef?) -> () with result type (CGImageRef?, CGImageRef?);
    *(v0 + 360) = &block_descriptor_65;
    *(v0 + 368) = v32;
    [v30 sixChannelCGRenderDrawing:v31 clippedToStrokeSpaceRect:v0 + 336 scale:v12 completion:{v16, v17, v17, 1.0}];
  }

  else if ((*(v0 + 810) & 1) != 0 || (*(v0 + 809) & 1) != 0 || ([*(v0 + 760) respondsToSelector_] & 1) == 0)
  {
    v29 = v0 + 16;
    v37 = *(v0 + 760);
    v38 = *(v0 + 648);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 640;
    *(v0 + 24) = specialized CanvasElement.renderDrawing(_:bounds:scale:in:options:);
    v39 = swift_continuation_init();
    *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo7UIImageCSgs5NeverOGMd);
    *(v0 + 208) = MEMORY[0x1E69E9820];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable (@unowned UIImage?) -> () with result type UIImage?;
    *(v0 + 232) = &block_descriptor_59;
    *(v0 + 240) = v39;
    [v37 renderDrawing:v38 clippedToStrokeSpaceRect:v0 + 208 scale:v12 completion:{v16, v17, v17, 1.0}];
  }

  else
  {
    v29 = v0 + 80;
    v33 = *(v0 + 760);
    v34 = *(v0 + 672);
    v35 = *(v0 + 648);
    *(v0 + 80) = v0;
    *(v0 + 88) = specialized CanvasElement.renderDrawing(_:bounds:scale:in:options:);
    v36 = swift_continuation_init();
    *(v0 + 328) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5NeverOGMd);
    *(v0 + 272) = MEMORY[0x1E69E9820];
    *(v0 + 280) = 1107296256;
    *(v0 + 288) = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable () -> () with result type ();
    *(v0 + 296) = &block_descriptor_62;
    *(v0 + 304) = v36;
    [v33 sixChannelPDFRenderDrawing:v35 context:v34 clippedToStrokeSpaceRect:v0 + 272 scale:v12 completion:{v16, v17, v17, 1.0}];
  }

  v13 = v29;

  return MEMORY[0x1EEE6DEC8](v13);
}

{

  return MEMORY[0x1EEE6DFA0](specialized CanvasElement.renderDrawing(_:bounds:scale:in:options:), 0, 0);
}

{
  v1 = *(v0 + 640);
  if (v1)
  {
    v2 = [*(v0 + 640) CGImage];
    if (v2)
    {
      v41.origin.x = *(v0 + 800);
      v41.origin.y = *(v0 + 792);
      v41.size.width = *(v0 + 752);
      v3 = v2;
      v41.size.height = v41.size.width;
      CGContextRef.draw(_:in:byTiling:)(v2, v41, 0);

      v1 = v3;
    }
  }

  CGContextRestoreGState(*(v0 + 672));
  while (1)
  {
    v5 = *(v0 + 800) + *(v0 + 752);
    if (CGRectGetMaxX(*(v0 + 592)) <= v5)
    {
      v7 = *(v0 + 792) + *(v0 + 752);
      if (CGRectGetMaxY(*(v0 + 592)) <= v7)
      {
        v33 = *(v0 + 680);

        if (*(v33 + 121) == 1)
        {
          v38 = *(v0 + 736);
          v39 = *(v0 + 720);
          CGContextSetRGBFillColor(*(v0 + 672), 1.0, 0.0, 0.0, 0.2);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd);
          v34 = swift_allocObject();
          v34[1] = xmmword_1D4058CF0;
          v34[2] = v39;
          v34[3] = v38;
          CGContextRef.fill(_:)(v34);
        }

        v35 = *(v0 + 672);
        CGContextRestoreGState(v35);

        v36 = *(v0 + 8);

        return v36();
      }

      *(v0 + 792) = v7;
      v5 = *(v0 + 768) / *(v0 + 664);
    }

    *(v0 + 800) = v5;
    if (*(v0 + 784))
    {
      break;
    }

LABEL_6:
    v4 = *(v0 + 712);
    (*(*(v0 + 696) + 56))(v4, 1, 1, *(v0 + 688));
    outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s9PencilKit8PKStrokeVSgMd);
  }

  v8 = 0;
  v9 = *(v0 + 792);
  v10 = *(v0 + 752);
  while (1)
  {
    v11 = *(v0 + 776);
    if (v8 >= *(v11 + 16))
    {
      __break(1u);
      return MEMORY[0x1EEE6DEC8](v6);
    }

    (*(*(v0 + 696) + 16))(*(v0 + 704), v11 + ((*(*(v0 + 696) + 80) + 32) & ~*(*(v0 + 696) + 80)) + *(*(v0 + 696) + 72) * v8, *(v0 + 688));
    PKStroke.renderBounds.getter();
    v45.origin.x = v5;
    v45.origin.y = v9;
    v45.size.width = v10;
    v45.size.height = v10;
    if (CGRectIntersectsRect(v42, v45))
    {
      break;
    }

    v12 = *(v0 + 784);
    ++v8;
    v6 = (*(*(v0 + 696) + 8))(*(v0 + 704), *(v0 + 688));
    if (v8 == v12)
    {
      goto LABEL_6;
    }
  }

  v13 = *(v0 + 808);
  v14 = *(v0 + 712);
  v15 = *(v0 + 696);
  v16 = *(v0 + 688);
  v17 = *(v0 + 672);
  (*(v15 + 32))(v14, *(v0 + 704), v16);
  (*(v15 + 56))(v14, 0, 1, v16);
  outlined destroy of StocksKitCurrencyCache.Provider?(v14, &_s9PencilKit8PKStrokeVSgMd);
  CGContextSaveGState(v17);
  v43.origin.x = v5;
  v43.origin.y = v9;
  v43.size.width = v10;
  v43.size.height = v10;
  MinY = CGRectGetMinY(v43);
  v44.origin.x = v5;
  v44.origin.y = v9;
  v44.size.width = v10;
  v44.size.height = v10;
  MaxY = CGRectGetMaxY(v44);
  *(v0 + 400) = 0x3FF0000000000000;
  *(v0 + 408) = 0;
  *(v0 + 416) = 0;
  *(v0 + 424) = 0x3FF0000000000000;
  *(v0 + 432) = 0;
  *(v0 + 440) = 0;
  *(v0 + 448) = 0x3FF0000000000000;
  *(v0 + 456) = 0;
  *(v0 + 464) = 0;
  *(v0 + 472) = 0xBFF0000000000000;
  *(v0 + 480) = 0;
  *(v0 + 488) = MinY + MaxY;
  CGAffineTransformConcat((v0 + 496), (v0 + 400), (v0 + 448));
  v20 = *(v0 + 512);
  v21 = *(v0 + 528);
  *(v0 + 544) = *(v0 + 496);
  *(v0 + 560) = v20;
  *(v0 + 576) = v21;
  CGContextConcatCTM(v17, (v0 + 544));
  if (v13)
  {
    v22 = v0 + 144;
    v23 = *(v0 + 760);
    v24 = *(v0 + 648);
    *(v0 + 144) = v0;
    *(v0 + 184) = v0 + 624;
    *(v0 + 152) = specialized CanvasElement.renderDrawing(_:bounds:scale:in:options:);
    v25 = swift_continuation_init();
    *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo10CGImageRefaSg_ACts5NeverOGMd);
    *(v0 + 336) = MEMORY[0x1E69E9820];
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable (@unowned CGImageRef?, @unowned CGImageRef?) -> () with result type (CGImageRef?, CGImageRef?);
    *(v0 + 360) = &block_descriptor_65;
    *(v0 + 368) = v25;
    [v23 sixChannelCGRenderDrawing:v24 clippedToStrokeSpaceRect:v0 + 336 scale:v5 completion:{v9, v10, v10, 1.0}];
  }

  else if ((*(v0 + 810) & 1) != 0 || (*(v0 + 809) & 1) != 0 || ([*(v0 + 760) respondsToSelector_] & 1) == 0)
  {
    v22 = v0 + 16;
    v30 = *(v0 + 760);
    v31 = *(v0 + 648);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 640;
    *(v0 + 24) = specialized CanvasElement.renderDrawing(_:bounds:scale:in:options:);
    v32 = swift_continuation_init();
    *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo7UIImageCSgs5NeverOGMd);
    *(v0 + 208) = MEMORY[0x1E69E9820];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable (@unowned UIImage?) -> () with result type UIImage?;
    *(v0 + 232) = &block_descriptor_59;
    *(v0 + 240) = v32;
    [v30 renderDrawing:v31 clippedToStrokeSpaceRect:v0 + 208 scale:v5 completion:{v9, v10, v10, 1.0}];
  }

  else
  {
    v22 = v0 + 80;
    v26 = *(v0 + 760);
    v27 = *(v0 + 672);
    v28 = *(v0 + 648);
    *(v0 + 80) = v0;
    *(v0 + 88) = specialized CanvasElement.renderDrawing(_:bounds:scale:in:options:);
    v29 = swift_continuation_init();
    *(v0 + 328) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5NeverOGMd);
    *(v0 + 272) = MEMORY[0x1E69E9820];
    *(v0 + 280) = 1107296256;
    *(v0 + 288) = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable () -> () with result type ();
    *(v0 + 296) = &block_descriptor_62;
    *(v0 + 304) = v29;
    [v26 sixChannelPDFRenderDrawing:v28 context:v27 clippedToStrokeSpaceRect:v0 + 272 scale:v5 completion:{v9, v10, v10, 1.0}];
  }

  v6 = v22;

  return MEMORY[0x1EEE6DEC8](v6);
}

{

  return MEMORY[0x1EEE6DFA0](specialized CanvasElement.renderDrawing(_:bounds:scale:in:options:), 0, 0);
}

{
  CGContextRestoreGState(*(v0 + 672));
  while (1)
  {
    v2 = *(v0 + 800) + *(v0 + 752);
    if (CGRectGetMaxX(*(v0 + 592)) <= v2)
    {
      v4 = *(v0 + 792) + *(v0 + 752);
      if (CGRectGetMaxY(*(v0 + 592)) <= v4)
      {
        v30 = *(v0 + 680);

        if (*(v30 + 121) == 1)
        {
          v35 = *(v0 + 736);
          v36 = *(v0 + 720);
          CGContextSetRGBFillColor(*(v0 + 672), 1.0, 0.0, 0.0, 0.2);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd);
          v31 = swift_allocObject();
          v31[1] = xmmword_1D4058CF0;
          v31[2] = v36;
          v31[3] = v35;
          CGContextRef.fill(_:)(v31);
        }

        v32 = *(v0 + 672);
        CGContextRestoreGState(v32);

        v33 = *(v0 + 8);

        return v33();
      }

      *(v0 + 792) = v4;
      v2 = *(v0 + 768) / *(v0 + 664);
    }

    *(v0 + 800) = v2;
    if (*(v0 + 784))
    {
      break;
    }

LABEL_2:
    v1 = *(v0 + 712);
    (*(*(v0 + 696) + 56))(v1, 1, 1, *(v0 + 688));
    outlined destroy of StocksKitCurrencyCache.Provider?(v1, &_s9PencilKit8PKStrokeVSgMd);
  }

  v5 = 0;
  v6 = *(v0 + 792);
  v7 = *(v0 + 752);
  while (1)
  {
    v8 = *(v0 + 776);
    if (v5 >= *(v8 + 16))
    {
      __break(1u);
      return MEMORY[0x1EEE6DEC8](v3);
    }

    (*(*(v0 + 696) + 16))(*(v0 + 704), v8 + ((*(*(v0 + 696) + 80) + 32) & ~*(*(v0 + 696) + 80)) + *(*(v0 + 696) + 72) * v5, *(v0 + 688));
    PKStroke.renderBounds.getter();
    v41.origin.x = v2;
    v41.origin.y = v6;
    v41.size.width = v7;
    v41.size.height = v7;
    if (CGRectIntersectsRect(v38, v41))
    {
      break;
    }

    v9 = *(v0 + 784);
    ++v5;
    v3 = (*(*(v0 + 696) + 8))(*(v0 + 704), *(v0 + 688));
    if (v5 == v9)
    {
      goto LABEL_2;
    }
  }

  v10 = *(v0 + 808);
  v11 = *(v0 + 712);
  v12 = *(v0 + 696);
  v13 = *(v0 + 688);
  v14 = *(v0 + 672);
  (*(v12 + 32))(v11, *(v0 + 704), v13);
  (*(v12 + 56))(v11, 0, 1, v13);
  outlined destroy of StocksKitCurrencyCache.Provider?(v11, &_s9PencilKit8PKStrokeVSgMd);
  CGContextSaveGState(v14);
  v39.origin.x = v2;
  v39.origin.y = v6;
  v39.size.width = v7;
  v39.size.height = v7;
  MinY = CGRectGetMinY(v39);
  v40.origin.x = v2;
  v40.origin.y = v6;
  v40.size.width = v7;
  v40.size.height = v7;
  MaxY = CGRectGetMaxY(v40);
  *(v0 + 400) = 0x3FF0000000000000;
  *(v0 + 408) = 0;
  *(v0 + 416) = 0;
  *(v0 + 424) = 0x3FF0000000000000;
  *(v0 + 432) = 0;
  *(v0 + 440) = 0;
  *(v0 + 448) = 0x3FF0000000000000;
  *(v0 + 456) = 0;
  *(v0 + 464) = 0;
  *(v0 + 472) = 0xBFF0000000000000;
  *(v0 + 480) = 0;
  *(v0 + 488) = MinY + MaxY;
  CGAffineTransformConcat((v0 + 496), (v0 + 400), (v0 + 448));
  v17 = *(v0 + 512);
  v18 = *(v0 + 528);
  *(v0 + 544) = *(v0 + 496);
  *(v0 + 560) = v17;
  *(v0 + 576) = v18;
  CGContextConcatCTM(v14, (v0 + 544));
  if (v10)
  {
    v19 = v0 + 144;
    v20 = *(v0 + 760);
    v21 = *(v0 + 648);
    *(v0 + 144) = v0;
    *(v0 + 184) = v0 + 624;
    *(v0 + 152) = specialized CanvasElement.renderDrawing(_:bounds:scale:in:options:);
    v22 = swift_continuation_init();
    *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo10CGImageRefaSg_ACts5NeverOGMd);
    *(v0 + 336) = MEMORY[0x1E69E9820];
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable (@unowned CGImageRef?, @unowned CGImageRef?) -> () with result type (CGImageRef?, CGImageRef?);
    *(v0 + 360) = &block_descriptor_65;
    *(v0 + 368) = v22;
    [v20 sixChannelCGRenderDrawing:v21 clippedToStrokeSpaceRect:v0 + 336 scale:v2 completion:{v6, v7, v7, 1.0}];
  }

  else if ((*(v0 + 810) & 1) != 0 || (*(v0 + 809) & 1) != 0 || ([*(v0 + 760) respondsToSelector_] & 1) == 0)
  {
    v19 = v0 + 16;
    v27 = *(v0 + 760);
    v28 = *(v0 + 648);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 640;
    *(v0 + 24) = specialized CanvasElement.renderDrawing(_:bounds:scale:in:options:);
    v29 = swift_continuation_init();
    *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo7UIImageCSgs5NeverOGMd);
    *(v0 + 208) = MEMORY[0x1E69E9820];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable (@unowned UIImage?) -> () with result type UIImage?;
    *(v0 + 232) = &block_descriptor_59;
    *(v0 + 240) = v29;
    [v27 renderDrawing:v28 clippedToStrokeSpaceRect:v0 + 208 scale:v2 completion:{v6, v7, v7, 1.0}];
  }

  else
  {
    v19 = v0 + 80;
    v23 = *(v0 + 760);
    v24 = *(v0 + 672);
    v25 = *(v0 + 648);
    *(v0 + 80) = v0;
    *(v0 + 88) = specialized CanvasElement.renderDrawing(_:bounds:scale:in:options:);
    v26 = swift_continuation_init();
    *(v0 + 328) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5NeverOGMd);
    *(v0 + 272) = MEMORY[0x1E69E9820];
    *(v0 + 280) = 1107296256;
    *(v0 + 288) = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable () -> () with result type ();
    *(v0 + 296) = &block_descriptor_62;
    *(v0 + 304) = v26;
    [v23 sixChannelPDFRenderDrawing:v25 context:v24 clippedToStrokeSpaceRect:v0 + 272 scale:v2 completion:{v6, v7, v7, 1.0}];
  }

  v3 = v19;

  return MEMORY[0x1EEE6DEC8](v3);
}

{
  v1 = *(v0 + 648);
  CGContextSaveGState(*(v0 + 672));
  if (!v1 || (v4 = *(v0 + 656), v5 = *(v0 + 648), *&v2 = *v4, *(v0 + 720) = *v4, *&v3 = *(v4 + 8), *(v0 + 728) = v3, v6 = *(v4 + 16), *(v0 + 736) = v6, v7 = *(v4 + 24), *(v0 + 744) = v7, (*(v4 + 32) & 1) != 0))
  {
    v8 = 0;
    goto LABEL_4;
  }

  v68 = v3;
  v69 = v2;
  v70 = v7;
  v72 = v6;
  v12 = CGRect.isFinite.getter(*&v2, *&v3, v6, v7);
  v8 = 0;
  if (!v12)
  {
    goto LABEL_4;
  }

  if (v72 <= 1.0 || v70 <= 1.0)
  {
    goto LABEL_4;
  }

  v14 = v5;
  Type = CGContextGetType();
  v16 = *(v0 + 680);
  if (Type == 1)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v21 = v68;
    v20 = v69;
    v23 = v70;
    v22 = v72;
    if (*v16)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v17 = Type != 6;
  v21 = v68;
  v20 = v69;
  if (*v16 != 1)
  {
    v23 = v70;
    v22 = v72;
LABEL_18:
    v18 = v17;
    v19 = 1;
    v17 = 0;
    goto LABEL_19;
  }

  v19 = 0;
  v18 = Type != 6;
  v23 = v70;
  v22 = v72;
LABEL_19:
  *(v0 + 810) = v19;
  *(v0 + 809) = v18;
  *(v0 + 808) = v17;
  *&v24 = v20;
  *(&v24 + 1) = v21;
  *&v25 = v22;
  *(&v25 + 1) = v23;
  v26 = *(v0 + 664);
  *(v0 + 592) = v24;
  *(v0 + 608) = v25;
  v27 = 512.0 / v26;
  Width = CGRectGetWidth(*&v20);
  if (Width + Width < v27)
  {
    v29 = 512;
    do
    {
      *&v75.origin.y = v68;
      *&v75.origin.x = v69;
      v75.size.height = v70;
      v75.size.width = v72;
      Height = CGRectGetHeight(v75);
      if (Height + Height >= v27)
      {
        break;
      }

      v29 /= 2;
      v27 = v29 / *(v0 + 664);
      *&v76.origin.y = v68;
      *&v76.origin.x = v69;
      v76.size.height = v70;
      v76.size.width = v72;
      v31 = CGRectGetWidth(v76);
    }

    while (v31 + v31 < v27);
  }

  *(v0 + 752) = v27;
  v32 = *(v0 + 680);
  v33 = *(v0 + 664);
  v34 = [objc_allocWithZone(MEMORY[0x1E6978450]) initWithSize:0 scale:v17 renderQueue:*(v32 + 124) sixChannelBlending:v27 extendedDynamicRange:{v27, v33}];
  *(v0 + 760) = v34;
  [v34 setInvertColors_];
  *(v0 + 768) = floor(*&v69 * v33);
  v35 = floor(*&v68 * v33) / v33;
  v36 = [v14 strokes];
  v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 776) = v37;

  *(v0 + 784) = *(v37 + 16);
  while (2)
  {
    *(v0 + 792) = v35;
    v39 = *(v0 + 768) / *(v0 + 664);
    do
    {
      *(v0 + 800) = v39;
      if (*(v0 + 784))
      {
        v41 = 0;
        v42 = *(v0 + 792);
        v43 = *(v0 + 752);
        while (1)
        {
          v44 = *(v0 + 776);
          if (v41 >= *(v44 + 16))
          {
            __break(1u);
            return MEMORY[0x1EEE6DEC8](v38);
          }

          (*(*(v0 + 696) + 16))(*(v0 + 704), v44 + ((*(*(v0 + 696) + 80) + 32) & ~*(*(v0 + 696) + 80)) + *(*(v0 + 696) + 72) * v41, *(v0 + 688));
          PKStroke.renderBounds.getter();
          v80.origin.x = v39;
          v80.origin.y = v42;
          v80.size.width = v43;
          v80.size.height = v43;
          if (CGRectIntersectsRect(v77, v80))
          {
            break;
          }

          v45 = *(v0 + 784);
          ++v41;
          v38 = (*(*(v0 + 696) + 8))(*(v0 + 704), *(v0 + 688));
          if (v41 == v45)
          {
            goto LABEL_25;
          }
        }

        v48 = *(v0 + 808);
        v49 = *(v0 + 712);
        v50 = *(v0 + 696);
        v51 = *(v0 + 688);
        v52 = *(v0 + 672);
        (*(v50 + 32))(v49, *(v0 + 704), v51);
        (*(v50 + 56))(v49, 0, 1, v51);
        outlined destroy of StocksKitCurrencyCache.Provider?(v49, &_s9PencilKit8PKStrokeVSgMd);
        CGContextSaveGState(v52);
        v78.origin.x = v39;
        v78.origin.y = v42;
        v78.size.width = v43;
        v78.size.height = v43;
        MinY = CGRectGetMinY(v78);
        v79.origin.x = v39;
        v79.origin.y = v42;
        v79.size.width = v43;
        v79.size.height = v43;
        MaxY = CGRectGetMaxY(v79);
        *(v0 + 400) = 0x3FF0000000000000;
        *(v0 + 408) = 0;
        *(v0 + 416) = 0;
        *(v0 + 424) = 0x3FF0000000000000;
        *(v0 + 432) = 0;
        *(v0 + 440) = 0;
        *(v0 + 448) = 0x3FF0000000000000;
        *(v0 + 456) = 0;
        *(v0 + 464) = 0;
        *(v0 + 472) = 0xBFF0000000000000;
        *(v0 + 480) = 0;
        *(v0 + 488) = MinY + MaxY;
        CGAffineTransformConcat((v0 + 496), (v0 + 400), (v0 + 448));
        v55 = *(v0 + 512);
        v56 = *(v0 + 528);
        *(v0 + 544) = *(v0 + 496);
        *(v0 + 560) = v55;
        *(v0 + 576) = v56;
        CGContextConcatCTM(v52, (v0 + 544));
        if (v48)
        {
          v57 = v0 + 144;
          v58 = *(v0 + 760);
          v59 = *(v0 + 648);
          *(v0 + 144) = v0;
          *(v0 + 184) = v0 + 624;
          *(v0 + 152) = specialized CanvasElement.renderDrawing(_:bounds:scale:in:options:);
          v60 = swift_continuation_init();
          *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo10CGImageRefaSg_ACts5NeverOGMd);
          *(v0 + 336) = MEMORY[0x1E69E9820];
          *(v0 + 344) = 1107296256;
          *(v0 + 352) = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable (@unowned CGImageRef?, @unowned CGImageRef?) -> () with result type (CGImageRef?, CGImageRef?);
          *(v0 + 360) = &block_descriptor_24;
          *(v0 + 368) = v60;
          [v58 sixChannelCGRenderDrawing:v59 clippedToStrokeSpaceRect:v0 + 336 scale:v39 completion:{v42, v43, v43, 1.0, v68, v69}];
        }

        else if ((*(v0 + 810) & 1) != 0 || (*(v0 + 809) & 1) != 0 || ([*(v0 + 760) respondsToSelector_] & 1) == 0)
        {
          v57 = v0 + 16;
          v65 = *(v0 + 760);
          v66 = *(v0 + 648);
          *(v0 + 16) = v0;
          *(v0 + 56) = v0 + 640;
          *(v0 + 24) = specialized CanvasElement.renderDrawing(_:bounds:scale:in:options:);
          v67 = swift_continuation_init();
          *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo7UIImageCSgs5NeverOGMd);
          *(v0 + 208) = MEMORY[0x1E69E9820];
          *(v0 + 216) = 1107296256;
          *(v0 + 224) = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable (@unowned UIImage?) -> () with result type UIImage?;
          *(v0 + 232) = &block_descriptor_1;
          *(v0 + 240) = v67;
          [v65 renderDrawing:v66 clippedToStrokeSpaceRect:v0 + 208 scale:v39 completion:{v42, v43, v43, 1.0, v68, v69}];
        }

        else
        {
          v57 = v0 + 80;
          v61 = *(v0 + 760);
          v62 = *(v0 + 672);
          v63 = *(v0 + 648);
          *(v0 + 80) = v0;
          *(v0 + 88) = specialized CanvasElement.renderDrawing(_:bounds:scale:in:options:);
          v64 = swift_continuation_init();
          *(v0 + 328) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5NeverOGMd);
          *(v0 + 272) = MEMORY[0x1E69E9820];
          *(v0 + 280) = 1107296256;
          *(v0 + 288) = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable () -> () with result type ();
          *(v0 + 296) = &block_descriptor_21;
          *(v0 + 304) = v64;
          [v61 sixChannelPDFRenderDrawing:v63 context:v62 clippedToStrokeSpaceRect:v0 + 272 scale:v39 completion:{v42, v43, v43, 1.0}];
        }

        v38 = v57;

        return MEMORY[0x1EEE6DEC8](v38);
      }

LABEL_25:
      v40 = *(v0 + 712);
      (*(*(v0 + 696) + 56))(v40, 1, 1, *(v0 + 688));
      outlined destroy of StocksKitCurrencyCache.Provider?(v40, &_s9PencilKit8PKStrokeVSgMd);
      v39 = *(v0 + 800) + *(v0 + 752);
    }

    while (CGRectGetMaxX(*(v0 + 592)) > v39);
    v35 = *(v0 + 792) + *(v0 + 752);
    if (CGRectGetMaxY(*(v0 + 592)) > v35)
    {
      continue;
    }

    break;
  }

  v46 = *(v0 + 680);

  if (*(v46 + 121) == 1)
  {
    v71 = *(v0 + 736);
    v73 = *(v0 + 720);
    CGContextSetRGBFillColor(*(v0 + 672), 1.0, 0.0, 0.0, 0.2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd);
    v47 = swift_allocObject();
    v47[1] = xmmword_1D4058CF0;
    v47[2] = v73;
    v47[3] = v71;
    CGContextRef.fill(_:)(v47);
  }

  v8 = *(v0 + 760);
LABEL_4:
  v9 = *(v0 + 672);

  CGContextRestoreGState(v9);

  v10 = *(v0 + 8);

  return v10();
}

{

  return MEMORY[0x1EEE6DFA0](specialized CanvasElement.renderDrawing(_:bounds:scale:in:options:), 0, 0);
}

{
  v1 = *(v0 + 624);
  v2 = *(v0 + 632);
  if (v2)
  {
    v3 = *(v0 + 800);
    v4 = *(v0 + 792);
    v5 = *(v0 + 752);
    v6 = *(v0 + 672);
    v7 = v2;
    CGContextSetBlendMode(v6, kCGBlendModeMultiply);
    v48.origin.x = v3;
    v48.origin.y = v4;
    v48.size.width = v5;
    v48.size.height = v5;
    CGContextRef.draw(_:in:byTiling:)(v7, v48, 0);
  }

  if (v1)
  {
    v8 = *(v0 + 800);
    v9 = *(v0 + 792);
    v10 = *(v0 + 752);
    CGContextSetBlendMode(*(v0 + 672), kCGBlendModePlusLighter);
    v49.origin.x = v8;
    v49.origin.y = v9;
    v49.size.width = v10;
    v49.size.height = v10;
    CGContextRef.draw(_:in:byTiling:)(v1, v49, 0);
  }

  CGContextRestoreGState(*(v0 + 672));
  while (1)
  {
    v12 = *(v0 + 800) + *(v0 + 752);
    if (CGRectGetMaxX(*(v0 + 592)) <= v12)
    {
      v14 = *(v0 + 792) + *(v0 + 752);
      if (CGRectGetMaxY(*(v0 + 592)) <= v14)
      {
        v40 = *(v0 + 680);

        if (*(v40 + 121) == 1)
        {
          v45 = *(v0 + 736);
          v46 = *(v0 + 720);
          CGContextSetRGBFillColor(*(v0 + 672), 1.0, 0.0, 0.0, 0.2);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd);
          v41 = swift_allocObject();
          v41[1] = xmmword_1D4058CF0;
          v41[2] = v46;
          v41[3] = v45;
          CGContextRef.fill(_:)(v41);
        }

        v42 = *(v0 + 672);
        CGContextRestoreGState(v42);

        v43 = *(v0 + 8);

        return v43();
      }

      *(v0 + 792) = v14;
      v12 = *(v0 + 768) / *(v0 + 664);
    }

    *(v0 + 800) = v12;
    if (*(v0 + 784))
    {
      break;
    }

LABEL_6:
    v11 = *(v0 + 712);
    (*(*(v0 + 696) + 56))(v11, 1, 1, *(v0 + 688));
    outlined destroy of StocksKitCurrencyCache.Provider?(v11, &_s9PencilKit8PKStrokeVSgMd);
  }

  v15 = 0;
  v16 = *(v0 + 792);
  v17 = *(v0 + 752);
  while (1)
  {
    v18 = *(v0 + 776);
    if (v15 >= *(v18 + 16))
    {
      __break(1u);
      return MEMORY[0x1EEE6DEC8](v13);
    }

    (*(*(v0 + 696) + 16))(*(v0 + 704), v18 + ((*(*(v0 + 696) + 80) + 32) & ~*(*(v0 + 696) + 80)) + *(*(v0 + 696) + 72) * v15, *(v0 + 688));
    PKStroke.renderBounds.getter();
    v53.origin.x = v12;
    v53.origin.y = v16;
    v53.size.width = v17;
    v53.size.height = v17;
    if (CGRectIntersectsRect(v50, v53))
    {
      break;
    }

    v19 = *(v0 + 784);
    ++v15;
    v13 = (*(*(v0 + 696) + 8))(*(v0 + 704), *(v0 + 688));
    if (v15 == v19)
    {
      goto LABEL_6;
    }
  }

  v20 = *(v0 + 808);
  v21 = *(v0 + 712);
  v22 = *(v0 + 696);
  v23 = *(v0 + 688);
  v24 = *(v0 + 672);
  (*(v22 + 32))(v21, *(v0 + 704), v23);
  (*(v22 + 56))(v21, 0, 1, v23);
  outlined destroy of StocksKitCurrencyCache.Provider?(v21, &_s9PencilKit8PKStrokeVSgMd);
  CGContextSaveGState(v24);
  v51.origin.x = v12;
  v51.origin.y = v16;
  v51.size.width = v17;
  v51.size.height = v17;
  MinY = CGRectGetMinY(v51);
  v52.origin.x = v12;
  v52.origin.y = v16;
  v52.size.width = v17;
  v52.size.height = v17;
  MaxY = CGRectGetMaxY(v52);
  *(v0 + 400) = 0x3FF0000000000000;
  *(v0 + 408) = 0;
  *(v0 + 416) = 0;
  *(v0 + 424) = 0x3FF0000000000000;
  *(v0 + 432) = 0;
  *(v0 + 440) = 0;
  *(v0 + 448) = 0x3FF0000000000000;
  *(v0 + 456) = 0;
  *(v0 + 464) = 0;
  *(v0 + 472) = 0xBFF0000000000000;
  *(v0 + 480) = 0;
  *(v0 + 488) = MinY + MaxY;
  CGAffineTransformConcat((v0 + 496), (v0 + 400), (v0 + 448));
  v27 = *(v0 + 512);
  v28 = *(v0 + 528);
  *(v0 + 544) = *(v0 + 496);
  *(v0 + 560) = v27;
  *(v0 + 576) = v28;
  CGContextConcatCTM(v24, (v0 + 544));
  if (v20)
  {
    v29 = v0 + 144;
    v30 = *(v0 + 760);
    v31 = *(v0 + 648);
    *(v0 + 144) = v0;
    *(v0 + 184) = v0 + 624;
    *(v0 + 152) = specialized CanvasElement.renderDrawing(_:bounds:scale:in:options:);
    v32 = swift_continuation_init();
    *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo10CGImageRefaSg_ACts5NeverOGMd);
    *(v0 + 336) = MEMORY[0x1E69E9820];
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable (@unowned CGImageRef?, @unowned CGImageRef?) -> () with result type (CGImageRef?, CGImageRef?);
    *(v0 + 360) = &block_descriptor_24;
    *(v0 + 368) = v32;
    [v30 sixChannelCGRenderDrawing:v31 clippedToStrokeSpaceRect:v0 + 336 scale:v12 completion:{v16, v17, v17, 1.0}];
  }

  else if ((*(v0 + 810) & 1) != 0 || (*(v0 + 809) & 1) != 0 || ([*(v0 + 760) respondsToSelector_] & 1) == 0)
  {
    v29 = v0 + 16;
    v37 = *(v0 + 760);
    v38 = *(v0 + 648);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 640;
    *(v0 + 24) = specialized CanvasElement.renderDrawing(_:bounds:scale:in:options:);
    v39 = swift_continuation_init();
    *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo7UIImageCSgs5NeverOGMd);
    *(v0 + 208) = MEMORY[0x1E69E9820];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable (@unowned UIImage?) -> () with result type UIImage?;
    *(v0 + 232) = &block_descriptor_1;
    *(v0 + 240) = v39;
    [v37 renderDrawing:v38 clippedToStrokeSpaceRect:v0 + 208 scale:v12 completion:{v16, v17, v17, 1.0}];
  }

  else
  {
    v29 = v0 + 80;
    v33 = *(v0 + 760);
    v34 = *(v0 + 672);
    v35 = *(v0 + 648);
    *(v0 + 80) = v0;
    *(v0 + 88) = specialized CanvasElement.renderDrawing(_:bounds:scale:in:options:);
    v36 = swift_continuation_init();
    *(v0 + 328) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5NeverOGMd);
    *(v0 + 272) = MEMORY[0x1E69E9820];
    *(v0 + 280) = 1107296256;
    *(v0 + 288) = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable () -> () with result type ();
    *(v0 + 296) = &block_descriptor_21;
    *(v0 + 304) = v36;
    [v33 sixChannelPDFRenderDrawing:v35 context:v34 clippedToStrokeSpaceRect:v0 + 272 scale:v12 completion:{v16, v17, v17, 1.0}];
  }

  v13 = v29;

  return MEMORY[0x1EEE6DEC8](v13);
}

{

  return MEMORY[0x1EEE6DFA0](specialized CanvasElement.renderDrawing(_:bounds:scale:in:options:), 0, 0);
}

{
  v1 = *(v0 + 640);
  if (v1)
  {
    v2 = [*(v0 + 640) CGImage];
    if (v2)
    {
      v41.origin.x = *(v0 + 800);
      v41.origin.y = *(v0 + 792);
      v41.size.width = *(v0 + 752);
      v3 = v2;
      v41.size.height = v41.size.width;
      CGContextRef.draw(_:in:byTiling:)(v2, v41, 0);

      v1 = v3;
    }
  }

  CGContextRestoreGState(*(v0 + 672));
  while (1)
  {
    v5 = *(v0 + 800) + *(v0 + 752);
    if (CGRectGetMaxX(*(v0 + 592)) <= v5)
    {
      v7 = *(v0 + 792) + *(v0 + 752);
      if (CGRectGetMaxY(*(v0 + 592)) <= v7)
      {
        v33 = *(v0 + 680);

        if (*(v33 + 121) == 1)
        {
          v38 = *(v0 + 736);
          v39 = *(v0 + 720);
          CGContextSetRGBFillColor(*(v0 + 672), 1.0, 0.0, 0.0, 0.2);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd);
          v34 = swift_allocObject();
          v34[1] = xmmword_1D4058CF0;
          v34[2] = v39;
          v34[3] = v38;
          CGContextRef.fill(_:)(v34);
        }

        v35 = *(v0 + 672);
        CGContextRestoreGState(v35);

        v36 = *(v0 + 8);

        return v36();
      }

      *(v0 + 792) = v7;
      v5 = *(v0 + 768) / *(v0 + 664);
    }

    *(v0 + 800) = v5;
    if (*(v0 + 784))
    {
      break;
    }

LABEL_6:
    v4 = *(v0 + 712);
    (*(*(v0 + 696) + 56))(v4, 1, 1, *(v0 + 688));
    outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s9PencilKit8PKStrokeVSgMd);
  }

  v8 = 0;
  v9 = *(v0 + 792);
  v10 = *(v0 + 752);
  while (1)
  {
    v11 = *(v0 + 776);
    if (v8 >= *(v11 + 16))
    {
      __break(1u);
      return MEMORY[0x1EEE6DEC8](v6);
    }

    (*(*(v0 + 696) + 16))(*(v0 + 704), v11 + ((*(*(v0 + 696) + 80) + 32) & ~*(*(v0 + 696) + 80)) + *(*(v0 + 696) + 72) * v8, *(v0 + 688));
    PKStroke.renderBounds.getter();
    v45.origin.x = v5;
    v45.origin.y = v9;
    v45.size.width = v10;
    v45.size.height = v10;
    if (CGRectIntersectsRect(v42, v45))
    {
      break;
    }

    v12 = *(v0 + 784);
    ++v8;
    v6 = (*(*(v0 + 696) + 8))(*(v0 + 704), *(v0 + 688));
    if (v8 == v12)
    {
      goto LABEL_6;
    }
  }

  v13 = *(v0 + 808);
  v14 = *(v0 + 712);
  v15 = *(v0 + 696);
  v16 = *(v0 + 688);
  v17 = *(v0 + 672);
  (*(v15 + 32))(v14, *(v0 + 704), v16);
  (*(v15 + 56))(v14, 0, 1, v16);
  outlined destroy of StocksKitCurrencyCache.Provider?(v14, &_s9PencilKit8PKStrokeVSgMd);
  CGContextSaveGState(v17);
  v43.origin.x = v5;
  v43.origin.y = v9;
  v43.size.width = v10;
  v43.size.height = v10;
  MinY = CGRectGetMinY(v43);
  v44.origin.x = v5;
  v44.origin.y = v9;
  v44.size.width = v10;
  v44.size.height = v10;
  MaxY = CGRectGetMaxY(v44);
  *(v0 + 400) = 0x3FF0000000000000;
  *(v0 + 408) = 0;
  *(v0 + 416) = 0;
  *(v0 + 424) = 0x3FF0000000000000;
  *(v0 + 432) = 0;
  *(v0 + 440) = 0;
  *(v0 + 448) = 0x3FF0000000000000;
  *(v0 + 456) = 0;
  *(v0 + 464) = 0;
  *(v0 + 472) = 0xBFF0000000000000;
  *(v0 + 480) = 0;
  *(v0 + 488) = MinY + MaxY;
  CGAffineTransformConcat((v0 + 496), (v0 + 400), (v0 + 448));
  v20 = *(v0 + 512);
  v21 = *(v0 + 528);
  *(v0 + 544) = *(v0 + 496);
  *(v0 + 560) = v20;
  *(v0 + 576) = v21;
  CGContextConcatCTM(v17, (v0 + 544));
  if (v13)
  {
    v22 = v0 + 144;
    v23 = *(v0 + 760);
    v24 = *(v0 + 648);
    *(v0 + 144) = v0;
    *(v0 + 184) = v0 + 624;
    *(v0 + 152) = specialized CanvasElement.renderDrawing(_:bounds:scale:in:options:);
    v25 = swift_continuation_init();
    *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo10CGImageRefaSg_ACts5NeverOGMd);
    *(v0 + 336) = MEMORY[0x1E69E9820];
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable (@unowned CGImageRef?, @unowned CGImageRef?) -> () with result type (CGImageRef?, CGImageRef?);
    *(v0 + 360) = &block_descriptor_24;
    *(v0 + 368) = v25;
    [v23 sixChannelCGRenderDrawing:v24 clippedToStrokeSpaceRect:v0 + 336 scale:v5 completion:{v9, v10, v10, 1.0}];
  }

  else if ((*(v0 + 810) & 1) != 0 || (*(v0 + 809) & 1) != 0 || ([*(v0 + 760) respondsToSelector_] & 1) == 0)
  {
    v22 = v0 + 16;
    v30 = *(v0 + 760);
    v31 = *(v0 + 648);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 640;
    *(v0 + 24) = specialized CanvasElement.renderDrawing(_:bounds:scale:in:options:);
    v32 = swift_continuation_init();
    *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo7UIImageCSgs5NeverOGMd);
    *(v0 + 208) = MEMORY[0x1E69E9820];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable (@unowned UIImage?) -> () with result type UIImage?;
    *(v0 + 232) = &block_descriptor_1;
    *(v0 + 240) = v32;
    [v30 renderDrawing:v31 clippedToStrokeSpaceRect:v0 + 208 scale:v5 completion:{v9, v10, v10, 1.0}];
  }

  else
  {
    v22 = v0 + 80;
    v26 = *(v0 + 760);
    v27 = *(v0 + 672);
    v28 = *(v0 + 648);
    *(v0 + 80) = v0;
    *(v0 + 88) = specialized CanvasElement.renderDrawing(_:bounds:scale:in:options:);
    v29 = swift_continuation_init();
    *(v0 + 328) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5NeverOGMd);
    *(v0 + 272) = MEMORY[0x1E69E9820];
    *(v0 + 280) = 1107296256;
    *(v0 + 288) = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable () -> () with result type ();
    *(v0 + 296) = &block_descriptor_21;
    *(v0 + 304) = v29;
    [v26 sixChannelPDFRenderDrawing:v28 context:v27 clippedToStrokeSpaceRect:v0 + 272 scale:v5 completion:{v9, v10, v10, 1.0}];
  }

  v6 = v22;

  return MEMORY[0x1EEE6DEC8](v6);
}

{

  return MEMORY[0x1EEE6DFA0](specialized CanvasElement.renderDrawing(_:bounds:scale:in:options:), 0, 0);
}

{
  CGContextRestoreGState(*(v0 + 672));
  while (1)
  {
    v2 = *(v0 + 800) + *(v0 + 752);
    if (CGRectGetMaxX(*(v0 + 592)) <= v2)
    {
      v4 = *(v0 + 792) + *(v0 + 752);
      if (CGRectGetMaxY(*(v0 + 592)) <= v4)
      {
        v30 = *(v0 + 680);

        if (*(v30 + 121) == 1)
        {
          v35 = *(v0 + 736);
          v36 = *(v0 + 720);
          CGContextSetRGBFillColor(*(v0 + 672), 1.0, 0.0, 0.0, 0.2);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd);
          v31 = swift_allocObject();
          v31[1] = xmmword_1D4058CF0;
          v31[2] = v36;
          v31[3] = v35;
          CGContextRef.fill(_:)(v31);
        }

        v32 = *(v0 + 672);
        CGContextRestoreGState(v32);

        v33 = *(v0 + 8);

        return v33();
      }

      *(v0 + 792) = v4;
      v2 = *(v0 + 768) / *(v0 + 664);
    }

    *(v0 + 800) = v2;
    if (*(v0 + 784))
    {
      break;
    }

LABEL_2:
    v1 = *(v0 + 712);
    (*(*(v0 + 696) + 56))(v1, 1, 1, *(v0 + 688));
    outlined destroy of StocksKitCurrencyCache.Provider?(v1, &_s9PencilKit8PKStrokeVSgMd);
  }

  v5 = 0;
  v6 = *(v0 + 792);
  v7 = *(v0 + 752);
  while (1)
  {
    v8 = *(v0 + 776);
    if (v5 >= *(v8 + 16))
    {
      __break(1u);
      return MEMORY[0x1EEE6DEC8](v3);
    }

    (*(*(v0 + 696) + 16))(*(v0 + 704), v8 + ((*(*(v0 + 696) + 80) + 32) & ~*(*(v0 + 696) + 80)) + *(*(v0 + 696) + 72) * v5, *(v0 + 688));
    PKStroke.renderBounds.getter();
    v41.origin.x = v2;
    v41.origin.y = v6;
    v41.size.width = v7;
    v41.size.height = v7;
    if (CGRectIntersectsRect(v38, v41))
    {
      break;
    }

    v9 = *(v0 + 784);
    ++v5;
    v3 = (*(*(v0 + 696) + 8))(*(v0 + 704), *(v0 + 688));
    if (v5 == v9)
    {
      goto LABEL_2;
    }
  }

  v10 = *(v0 + 808);
  v11 = *(v0 + 712);
  v12 = *(v0 + 696);
  v13 = *(v0 + 688);
  v14 = *(v0 + 672);
  (*(v12 + 32))(v11, *(v0 + 704), v13);
  (*(v12 + 56))(v11, 0, 1, v13);
  outlined destroy of StocksKitCurrencyCache.Provider?(v11, &_s9PencilKit8PKStrokeVSgMd);
  CGContextSaveGState(v14);
  v39.origin.x = v2;
  v39.origin.y = v6;
  v39.size.width = v7;
  v39.size.height = v7;
  MinY = CGRectGetMinY(v39);
  v40.origin.x = v2;
  v40.origin.y = v6;
  v40.size.width = v7;
  v40.size.height = v7;
  MaxY = CGRectGetMaxY(v40);
  *(v0 + 400) = 0x3FF0000000000000;
  *(v0 + 408) = 0;
  *(v0 + 416) = 0;
  *(v0 + 424) = 0x3FF0000000000000;
  *(v0 + 432) = 0;
  *(v0 + 440) = 0;
  *(v0 + 448) = 0x3FF0000000000000;
  *(v0 + 456) = 0;
  *(v0 + 464) = 0;
  *(v0 + 472) = 0xBFF0000000000000;
  *(v0 + 480) = 0;
  *(v0 + 488) = MinY + MaxY;
  CGAffineTransformConcat((v0 + 496), (v0 + 400), (v0 + 448));
  v17 = *(v0 + 512);
  v18 = *(v0 + 528);
  *(v0 + 544) = *(v0 + 496);
  *(v0 + 560) = v17;
  *(v0 + 576) = v18;
  CGContextConcatCTM(v14, (v0 + 544));
  if (v10)
  {
    v19 = v0 + 144;
    v20 = *(v0 + 760);
    v21 = *(v0 + 648);
    *(v0 + 144) = v0;
    *(v0 + 184) = v0 + 624;
    *(v0 + 152) = specialized CanvasElement.renderDrawing(_:bounds:scale:in:options:);
    v22 = swift_continuation_init();
    *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo10CGImageRefaSg_ACts5NeverOGMd);
    *(v0 + 336) = MEMORY[0x1E69E9820];
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable (@unowned CGImageRef?, @unowned CGImageRef?) -> () with result type (CGImageRef?, CGImageRef?);
    *(v0 + 360) = &block_descriptor_24;
    *(v0 + 368) = v22;
    [v20 sixChannelCGRenderDrawing:v21 clippedToStrokeSpaceRect:v0 + 336 scale:v2 completion:{v6, v7, v7, 1.0}];
  }

  else if ((*(v0 + 810) & 1) != 0 || (*(v0 + 809) & 1) != 0 || ([*(v0 + 760) respondsToSelector_] & 1) == 0)
  {
    v19 = v0 + 16;
    v27 = *(v0 + 760);
    v28 = *(v0 + 648);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 640;
    *(v0 + 24) = specialized CanvasElement.renderDrawing(_:bounds:scale:in:options:);
    v29 = swift_continuation_init();
    *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo7UIImageCSgs5NeverOGMd);
    *(v0 + 208) = MEMORY[0x1E69E9820];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable (@unowned UIImage?) -> () with result type UIImage?;
    *(v0 + 232) = &block_descriptor_1;
    *(v0 + 240) = v29;
    [v27 renderDrawing:v28 clippedToStrokeSpaceRect:v0 + 208 scale:v2 completion:{v6, v7, v7, 1.0}];
  }

  else
  {
    v19 = v0 + 80;
    v23 = *(v0 + 760);
    v24 = *(v0 + 672);
    v25 = *(v0 + 648);
    *(v0 + 80) = v0;
    *(v0 + 88) = specialized CanvasElement.renderDrawing(_:bounds:scale:in:options:);
    v26 = swift_continuation_init();
    *(v0 + 328) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5NeverOGMd);
    *(v0 + 272) = MEMORY[0x1E69E9820];
    *(v0 + 280) = 1107296256;
    *(v0 + 288) = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable () -> () with result type ();
    *(v0 + 296) = &block_descriptor_21;
    *(v0 + 304) = v26;
    [v23 sixChannelPDFRenderDrawing:v25 context:v24 clippedToStrokeSpaceRect:v0 + 272 scale:v2 completion:{v6, v7, v7, 1.0}];
  }

  v3 = v19;

  return MEMORY[0x1EEE6DEC8](v3);
}

{
  v1 = *(v0 + 648);
  CGContextSaveGState(*(v0 + 672));
  if (!v1 || (v4 = *(v0 + 656), v5 = *(v0 + 648), *&v2 = *v4, *(v0 + 720) = *v4, *&v3 = *(v4 + 8), *(v0 + 728) = v3, v6 = *(v4 + 16), *(v0 + 736) = v6, v7 = *(v4 + 24), *(v0 + 744) = v7, (*(v4 + 32) & 1) != 0))
  {
    v8 = 0;
    goto LABEL_4;
  }

  v68 = v3;
  v69 = v2;
  v70 = v7;
  v72 = v6;
  v12 = CGRect.isFinite.getter(*&v2, *&v3, v6, v7);
  v8 = 0;
  if (!v12)
  {
    goto LABEL_4;
  }

  if (v72 <= 1.0 || v70 <= 1.0)
  {
    goto LABEL_4;
  }

  v14 = v5;
  Type = CGContextGetType();
  v16 = *(v0 + 680);
  if (Type == 1)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v21 = v68;
    v20 = v69;
    v23 = v70;
    v22 = v72;
    if (*v16)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v17 = Type != 6;
  v21 = v68;
  v20 = v69;
  if ((*v16 & 1) == 0)
  {
    v23 = v70;
    v22 = v72;
LABEL_18:
    v18 = v17;
    v19 = 1;
    v17 = 0;
    goto LABEL_19;
  }

  v19 = 0;
  v18 = Type != 6;
  v23 = v70;
  v22 = v72;
LABEL_19:
  *(v0 + 810) = v19;
  *(v0 + 809) = v18;
  *(v0 + 808) = v17;
  *&v24 = v20;
  *(&v24 + 1) = v21;
  *&v25 = v22;
  *(&v25 + 1) = v23;
  v26 = *(v0 + 664);
  *(v0 + 592) = v24;
  *(v0 + 608) = v25;
  v27 = 512.0 / v26;
  Width = CGRectGetWidth(*&v20);
  if (Width + Width < v27)
  {
    v29 = 512;
    do
    {
      *&v75.origin.y = v68;
      *&v75.origin.x = v69;
      v75.size.height = v70;
      v75.size.width = v72;
      Height = CGRectGetHeight(v75);
      if (Height + Height >= v27)
      {
        break;
      }

      v29 /= 2;
      v27 = v29 / *(v0 + 664);
      *&v76.origin.y = v68;
      *&v76.origin.x = v69;
      v76.size.height = v70;
      v76.size.width = v72;
      v31 = CGRectGetWidth(v76);
    }

    while (v31 + v31 < v27);
  }

  *(v0 + 752) = v27;
  v32 = *(v0 + 680);
  v33 = *(v0 + 664);
  v34 = [objc_allocWithZone(MEMORY[0x1E6978450]) initWithSize:0 scale:v17 renderQueue:*(v32 + 124) sixChannelBlending:v27 extendedDynamicRange:{v27, v33}];
  *(v0 + 760) = v34;
  [v34 setInvertColors_];
  *(v0 + 768) = floor(*&v69 * v33);
  v35 = floor(*&v68 * v33) / v33;
  v36 = [v14 strokes];
  v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 776) = v37;

  *(v0 + 784) = *(v37 + 16);
  while (2)
  {
    *(v0 + 792) = v35;
    v39 = *(v0 + 768) / *(v0 + 664);
    do
    {
      *(v0 + 800) = v39;
      if (*(v0 + 784))
      {
        v41 = 0;
        v42 = *(v0 + 792);
        v43 = *(v0 + 752);
        while (1)
        {
          v44 = *(v0 + 776);
          if (v41 >= *(v44 + 16))
          {
            __break(1u);
            return MEMORY[0x1EEE6DEC8](v38);
          }

          (*(*(v0 + 696) + 16))(*(v0 + 704), v44 + ((*(*(v0 + 696) + 80) + 32) & ~*(*(v0 + 696) + 80)) + *(*(v0 + 696) + 72) * v41, *(v0 + 688));
          PKStroke.renderBounds.getter();
          v80.origin.x = v39;
          v80.origin.y = v42;
          v80.size.width = v43;
          v80.size.height = v43;
          if (CGRectIntersectsRect(v77, v80))
          {
            break;
          }

          v45 = *(v0 + 784);
          ++v41;
          v38 = (*(*(v0 + 696) + 8))(*(v0 + 704), *(v0 + 688));
          if (v41 == v45)
          {
            goto LABEL_25;
          }
        }

        v48 = *(v0 + 808);
        v49 = *(v0 + 712);
        v50 = *(v0 + 696);
        v51 = *(v0 + 688);
        v52 = *(v0 + 672);
        (*(v50 + 32))(v49, *(v0 + 704), v51);
        (*(v50 + 56))(v49, 0, 1, v51);
        outlined destroy of StocksKitCurrencyCache.Provider?(v49, &_s9PencilKit8PKStrokeVSgMd);
        CGContextSaveGState(v52);
        v78.origin.x = v39;
        v78.origin.y = v42;
        v78.size.width = v43;
        v78.size.height = v43;
        MinY = CGRectGetMinY(v78);
        v79.origin.x = v39;
        v79.origin.y = v42;
        v79.size.width = v43;
        v79.size.height = v43;
        MaxY = CGRectGetMaxY(v79);
        *(v0 + 400) = 0x3FF0000000000000;
        *(v0 + 408) = 0;
        *(v0 + 416) = 0;
        *(v0 + 424) = 0x3FF0000000000000;
        *(v0 + 432) = 0;
        *(v0 + 440) = 0;
        *(v0 + 448) = 0x3FF0000000000000;
        *(v0 + 456) = 0;
        *(v0 + 464) = 0;
        *(v0 + 472) = 0xBFF0000000000000;
        *(v0 + 480) = 0;
        *(v0 + 488) = MinY + MaxY;
        CGAffineTransformConcat((v0 + 496), (v0 + 400), (v0 + 448));
        v55 = *(v0 + 512);
        v56 = *(v0 + 528);
        *(v0 + 544) = *(v0 + 496);
        *(v0 + 560) = v55;
        *(v0 + 576) = v56;
        CGContextConcatCTM(v52, (v0 + 544));
        if (v48 == 1)
        {
          v57 = v0 + 144;
          v58 = *(v0 + 760);
          v59 = *(v0 + 648);
          *(v0 + 144) = v0;
          *(v0 + 184) = v0 + 624;
          *(v0 + 152) = specialized CanvasElement.renderDrawing(_:bounds:scale:in:options:);
          v60 = swift_continuation_init();
          *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo10CGImageRefaSg_ACts5NeverOGMd);
          *(v0 + 336) = MEMORY[0x1E69E9820];
          *(v0 + 344) = 1107296256;
          *(v0 + 352) = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable (@unowned CGImageRef?, @unowned CGImageRef?) -> () with result type (CGImageRef?, CGImageRef?);
          *(v0 + 360) = &block_descriptor_21_2;
          *(v0 + 368) = v60;
          [v58 sixChannelCGRenderDrawing:v59 clippedToStrokeSpaceRect:v0 + 336 scale:v39 completion:{v42, v43, v43, 1.0, v68, v69}];
        }

        else if ((*(v0 + 810) & 1) != 0 || (*(v0 + 809) & 1) != 0 || ![*(v0 + 760) respondsToSelector_])
        {
          v57 = v0 + 16;
          v65 = *(v0 + 760);
          v66 = *(v0 + 648);
          *(v0 + 16) = v0;
          *(v0 + 56) = v0 + 640;
          *(v0 + 24) = specialized CanvasElement.renderDrawing(_:bounds:scale:in:options:);
          v67 = swift_continuation_init();
          *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo7UIImageCSgs5NeverOGMd);
          *(v0 + 208) = MEMORY[0x1E69E9820];
          *(v0 + 216) = 1107296256;
          *(v0 + 224) = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable (@unowned UIImage?) -> () with result type UIImage?;
          *(v0 + 232) = &block_descriptor_15_1;
          *(v0 + 240) = v67;
          [v65 renderDrawing:v66 clippedToStrokeSpaceRect:v0 + 208 scale:v39 completion:{v42, v43, v43, 1.0, v68, v69}];
        }

        else
        {
          v57 = v0 + 80;
          v61 = *(v0 + 760);
          v62 = *(v0 + 672);
          v63 = *(v0 + 648);
          *(v0 + 80) = v0;
          *(v0 + 88) = specialized CanvasElement.renderDrawing(_:bounds:scale:in:options:);
          v64 = swift_continuation_init();
          *(v0 + 328) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5NeverOGMd);
          *(v0 + 272) = MEMORY[0x1E69E9820];
          *(v0 + 280) = 1107296256;
          *(v0 + 288) = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable () -> () with result type ();
          *(v0 + 296) = &block_descriptor_18;
          *(v0 + 304) = v64;
          [v61 sixChannelPDFRenderDrawing:v63 context:v62 clippedToStrokeSpaceRect:v0 + 272 scale:v39 completion:{v42, v43, v43, 1.0}];
        }

        v38 = v57;

        return MEMORY[0x1EEE6DEC8](v38);
      }

LABEL_25:
      v40 = *(v0 + 712);
      (*(*(v0 + 696) + 56))(v40, 1, 1, *(v0 + 688));
      outlined destroy of StocksKitCurrencyCache.Provider?(v40, &_s9PencilKit8PKStrokeVSgMd);
      v39 = *(v0 + 800) + *(v0 + 752);
    }

    while (CGRectGetMaxX(*(v0 + 592)) > v39);
    v35 = *(v0 + 792) + *(v0 + 752);
    if (CGRectGetMaxY(*(v0 + 592)) > v35)
    {
      continue;
    }

    break;
  }

  v46 = *(v0 + 680);

  if (*(v46 + 121) == 1)
  {
    v71 = *(v0 + 736);
    v73 = *(v0 + 720);
    CGContextSetRGBFillColor(*(v0 + 672), 1.0, 0.0, 0.0, 0.2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd);
    v47 = swift_allocObject();
    v47[1] = xmmword_1D4058CF0;
    v47[2] = v73;
    v47[3] = v71;
    CGContextRef.fill(_:)(v47);
  }

  v8 = *(v0 + 760);
LABEL_4:
  v9 = *(v0 + 672);

  CGContextRestoreGState(v9);

  v10 = *(v0 + 8);

  return v10();
}

{

  return MEMORY[0x1EEE6DFA0](specialized CanvasElement.renderDrawing(_:bounds:scale:in:options:), 0, 0);
}

{
  v1 = *(v0 + 624);
  v2 = *(v0 + 632);
  if (v2)
  {
    v3 = *(v0 + 800);
    v4 = *(v0 + 792);
    v5 = *(v0 + 752);
    v6 = *(v0 + 672);
    v7 = v2;
    CGContextSetBlendMode(v6, kCGBlendModeMultiply);
    v48.origin.x = v3;
    v48.origin.y = v4;
    v48.size.width = v5;
    v48.size.height = v5;
    CGContextRef.draw(_:in:byTiling:)(v7, v48, 0);
  }

  if (v1)
  {
    v8 = *(v0 + 800);
    v9 = *(v0 + 792);
    v10 = *(v0 + 752);
    CGContextSetBlendMode(*(v0 + 672), kCGBlendModePlusLighter);
    v49.origin.x = v8;
    v49.origin.y = v9;
    v49.size.width = v10;
    v49.size.height = v10;
    CGContextRef.draw(_:in:byTiling:)(v1, v49, 0);
  }

  CGContextRestoreGState(*(v0 + 672));
  while (1)
  {
    v12 = *(v0 + 800) + *(v0 + 752);
    if (CGRectGetMaxX(*(v0 + 592)) <= v12)
    {
      v14 = *(v0 + 792) + *(v0 + 752);
      if (CGRectGetMaxY(*(v0 + 592)) <= v14)
      {
        v40 = *(v0 + 680);

        if (*(v40 + 121) == 1)
        {
          v45 = *(v0 + 736);
          v46 = *(v0 + 720);
          CGContextSetRGBFillColor(*(v0 + 672), 1.0, 0.0, 0.0, 0.2);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd);
          v41 = swift_allocObject();
          v41[1] = xmmword_1D4058CF0;
          v41[2] = v46;
          v41[3] = v45;
          CGContextRef.fill(_:)(v41);
        }

        v42 = *(v0 + 672);
        CGContextRestoreGState(v42);

        v43 = *(v0 + 8);

        return v43();
      }

      *(v0 + 792) = v14;
      v12 = *(v0 + 768) / *(v0 + 664);
    }

    *(v0 + 800) = v12;
    if (*(v0 + 784))
    {
      break;
    }

LABEL_6:
    v11 = *(v0 + 712);
    (*(*(v0 + 696) + 56))(v11, 1, 1, *(v0 + 688));
    outlined destroy of StocksKitCurrencyCache.Provider?(v11, &_s9PencilKit8PKStrokeVSgMd);
  }

  v15 = 0;
  v16 = *(v0 + 792);
  v17 = *(v0 + 752);
  while (1)
  {
    v18 = *(v0 + 776);
    if (v15 >= *(v18 + 16))
    {
      __break(1u);
      return MEMORY[0x1EEE6DEC8](v13);
    }

    (*(*(v0 + 696) + 16))(*(v0 + 704), v18 + ((*(*(v0 + 696) + 80) + 32) & ~*(*(v0 + 696) + 80)) + *(*(v0 + 696) + 72) * v15, *(v0 + 688));
    PKStroke.renderBounds.getter();
    v53.origin.x = v12;
    v53.origin.y = v16;
    v53.size.width = v17;
    v53.size.height = v17;
    if (CGRectIntersectsRect(v50, v53))
    {
      break;
    }

    v19 = *(v0 + 784);
    ++v15;
    v13 = (*(*(v0 + 696) + 8))(*(v0 + 704), *(v0 + 688));
    if (v15 == v19)
    {
      goto LABEL_6;
    }
  }

  v20 = *(v0 + 808);
  v21 = *(v0 + 712);
  v22 = *(v0 + 696);
  v23 = *(v0 + 688);
  v24 = *(v0 + 672);
  (*(v22 + 32))(v21, *(v0 + 704), v23);
  (*(v22 + 56))(v21, 0, 1, v23);
  outlined destroy of StocksKitCurrencyCache.Provider?(v21, &_s9PencilKit8PKStrokeVSgMd);
  CGContextSaveGState(v24);
  v51.origin.x = v12;
  v51.origin.y = v16;
  v51.size.width = v17;
  v51.size.height = v17;
  MinY = CGRectGetMinY(v51);
  v52.origin.x = v12;
  v52.origin.y = v16;
  v52.size.width = v17;
  v52.size.height = v17;
  MaxY = CGRectGetMaxY(v52);
  *(v0 + 400) = 0x3FF0000000000000;
  *(v0 + 408) = 0;
  *(v0 + 416) = 0;
  *(v0 + 424) = 0x3FF0000000000000;
  *(v0 + 432) = 0;
  *(v0 + 440) = 0;
  *(v0 + 448) = 0x3FF0000000000000;
  *(v0 + 456) = 0;
  *(v0 + 464) = 0;
  *(v0 + 472) = 0xBFF0000000000000;
  *(v0 + 480) = 0;
  *(v0 + 488) = MinY + MaxY;
  CGAffineTransformConcat((v0 + 496), (v0 + 400), (v0 + 448));
  v27 = *(v0 + 512);
  v28 = *(v0 + 528);
  *(v0 + 544) = *(v0 + 496);
  *(v0 + 560) = v27;
  *(v0 + 576) = v28;
  CGContextConcatCTM(v24, (v0 + 544));
  if (v20 == 1)
  {
    v29 = v0 + 144;
    v30 = *(v0 + 760);
    v31 = *(v0 + 648);
    *(v0 + 144) = v0;
    *(v0 + 184) = v0 + 624;
    *(v0 + 152) = specialized CanvasElement.renderDrawing(_:bounds:scale:in:options:);
    v32 = swift_continuation_init();
    *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo10CGImageRefaSg_ACts5NeverOGMd);
    *(v0 + 336) = MEMORY[0x1E69E9820];
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable (@unowned CGImageRef?, @unowned CGImageRef?) -> () with result type (CGImageRef?, CGImageRef?);
    *(v0 + 360) = &block_descriptor_21_2;
    *(v0 + 368) = v32;
    [v30 sixChannelCGRenderDrawing:v31 clippedToStrokeSpaceRect:v0 + 336 scale:v12 completion:{v16, v17, v17, 1.0}];
  }

  else if ((*(v0 + 810) & 1) != 0 || (*(v0 + 809) & 1) != 0 || ![*(v0 + 760) respondsToSelector_])
  {
    v29 = v0 + 16;
    v37 = *(v0 + 760);
    v38 = *(v0 + 648);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 640;
    *(v0 + 24) = specialized CanvasElement.renderDrawing(_:bounds:scale:in:options:);
    v39 = swift_continuation_init();
    *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo7UIImageCSgs5NeverOGMd);
    *(v0 + 208) = MEMORY[0x1E69E9820];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable (@unowned UIImage?) -> () with result type UIImage?;
    *(v0 + 232) = &block_descriptor_15_1;
    *(v0 + 240) = v39;
    [v37 renderDrawing:v38 clippedToStrokeSpaceRect:v0 + 208 scale:v12 completion:{v16, v17, v17, 1.0}];
  }

  else
  {
    v29 = v0 + 80;
    v33 = *(v0 + 760);
    v34 = *(v0 + 672);
    v35 = *(v0 + 648);
    *(v0 + 80) = v0;
    *(v0 + 88) = specialized CanvasElement.renderDrawing(_:bounds:scale:in:options:);
    v36 = swift_continuation_init();
    *(v0 + 328) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5NeverOGMd);
    *(v0 + 272) = MEMORY[0x1E69E9820];
    *(v0 + 280) = 1107296256;
    *(v0 + 288) = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable () -> () with result type ();
    *(v0 + 296) = &block_descriptor_18;
    *(v0 + 304) = v36;
    [v33 sixChannelPDFRenderDrawing:v35 context:v34 clippedToStrokeSpaceRect:v0 + 272 scale:v12 completion:{v16, v17, v17, 1.0}];
  }

  v13 = v29;

  return MEMORY[0x1EEE6DEC8](v13);
}

{

  return MEMORY[0x1EEE6DFA0](specialized CanvasElement.renderDrawing(_:bounds:scale:in:options:), 0, 0);
}

{
  CGContextRestoreGState(*(v0 + 672));
  while (1)
  {
    v2 = *(v0 + 800) + *(v0 + 752);
    if (CGRectGetMaxX(*(v0 + 592)) <= v2)
    {
      v4 = *(v0 + 792) + *(v0 + 752);
      if (CGRectGetMaxY(*(v0 + 592)) <= v4)
      {
        v30 = *(v0 + 680);

        if (*(v30 + 121) == 1)
        {
          v35 = *(v0 + 736);
          v36 = *(v0 + 720);
          CGContextSetRGBFillColor(*(v0 + 672), 1.0, 0.0, 0.0, 0.2);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd);
          v31 = swift_allocObject();
          v31[1] = xmmword_1D4058CF0;
          v31[2] = v36;
          v31[3] = v35;
          CGContextRef.fill(_:)(v31);
        }

        v32 = *(v0 + 672);
        CGContextRestoreGState(v32);

        v33 = *(v0 + 8);

        return v33();
      }

      *(v0 + 792) = v4;
      v2 = *(v0 + 768) / *(v0 + 664);
    }

    *(v0 + 800) = v2;
    if (*(v0 + 784))
    {
      break;
    }

LABEL_2:
    v1 = *(v0 + 712);
    (*(*(v0 + 696) + 56))(v1, 1, 1, *(v0 + 688));
    outlined destroy of StocksKitCurrencyCache.Provider?(v1, &_s9PencilKit8PKStrokeVSgMd);
  }

  v5 = 0;
  v6 = *(v0 + 792);
  v7 = *(v0 + 752);
  while (1)
  {
    v8 = *(v0 + 776);
    if (v5 >= *(v8 + 16))
    {
      __break(1u);
      return MEMORY[0x1EEE6DEC8](v3);
    }

    (*(*(v0 + 696) + 16))(*(v0 + 704), v8 + ((*(*(v0 + 696) + 80) + 32) & ~*(*(v0 + 696) + 80)) + *(*(v0 + 696) + 72) * v5, *(v0 + 688));
    PKStroke.renderBounds.getter();
    v41.origin.x = v2;
    v41.origin.y = v6;
    v41.size.width = v7;
    v41.size.height = v7;
    if (CGRectIntersectsRect(v38, v41))
    {
      break;
    }

    v9 = *(v0 + 784);
    ++v5;
    v3 = (*(*(v0 + 696) + 8))(*(v0 + 704), *(v0 + 688));
    if (v5 == v9)
    {
      goto LABEL_2;
    }
  }

  v10 = *(v0 + 808);
  v11 = *(v0 + 712);
  v12 = *(v0 + 696);
  v13 = *(v0 + 688);
  v14 = *(v0 + 672);
  (*(v12 + 32))(v11, *(v0 + 704), v13);
  (*(v12 + 56))(v11, 0, 1, v13);
  outlined destroy of StocksKitCurrencyCache.Provider?(v11, &_s9PencilKit8PKStrokeVSgMd);
  CGContextSaveGState(v14);
  v39.origin.x = v2;
  v39.origin.y = v6;
  v39.size.width = v7;
  v39.size.height = v7;
  MinY = CGRectGetMinY(v39);
  v40.origin.x = v2;
  v40.origin.y = v6;
  v40.size.width = v7;
  v40.size.height = v7;
  MaxY = CGRectGetMaxY(v40);
  *(v0 + 400) = 0x3FF0000000000000;
  *(v0 + 408) = 0;
  *(v0 + 416) = 0;
  *(v0 + 424) = 0x3FF0000000000000;
  *(v0 + 432) = 0;
  *(v0 + 440) = 0;
  *(v0 + 448) = 0x3FF0000000000000;
  *(v0 + 456) = 0;
  *(v0 + 464) = 0;
  *(v0 + 472) = 0xBFF0000000000000;
  *(v0 + 480) = 0;
  *(v0 + 488) = MinY + MaxY;
  CGAffineTransformConcat((v0 + 496), (v0 + 400), (v0 + 448));
  v17 = *(v0 + 512);
  v18 = *(v0 + 528);
  *(v0 + 544) = *(v0 + 496);
  *(v0 + 560) = v17;
  *(v0 + 576) = v18;
  CGContextConcatCTM(v14, (v0 + 544));
  if (v10 == 1)
  {
    v19 = v0 + 144;
    v20 = *(v0 + 760);
    v21 = *(v0 + 648);
    *(v0 + 144) = v0;
    *(v0 + 184) = v0 + 624;
    *(v0 + 152) = specialized CanvasElement.renderDrawing(_:bounds:scale:in:options:);
    v22 = swift_continuation_init();
    *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo10CGImageRefaSg_ACts5NeverOGMd);
    *(v0 + 336) = MEMORY[0x1E69E9820];
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable (@unowned CGImageRef?, @unowned CGImageRef?) -> () with result type (CGImageRef?, CGImageRef?);
    *(v0 + 360) = &block_descriptor_21_2;
    *(v0 + 368) = v22;
    [v20 sixChannelCGRenderDrawing:v21 clippedToStrokeSpaceRect:v0 + 336 scale:v2 completion:{v6, v7, v7, 1.0}];
  }

  else if ((*(v0 + 810) & 1) != 0 || (*(v0 + 809) & 1) != 0 || ![*(v0 + 760) respondsToSelector_])
  {
    v19 = v0 + 16;
    v27 = *(v0 + 760);
    v28 = *(v0 + 648);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 640;
    *(v0 + 24) = specialized CanvasElement.renderDrawing(_:bounds:scale:in:options:);
    v29 = swift_continuation_init();
    *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo7UIImageCSgs5NeverOGMd);
    *(v0 + 208) = MEMORY[0x1E69E9820];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable (@unowned UIImage?) -> () with result type UIImage?;
    *(v0 + 232) = &block_descriptor_15_1;
    *(v0 + 240) = v29;
    [v27 renderDrawing:v28 clippedToStrokeSpaceRect:v0 + 208 scale:v2 completion:{v6, v7, v7, 1.0}];
  }

  else
  {
    v19 = v0 + 80;
    v23 = *(v0 + 760);
    v24 = *(v0 + 672);
    v25 = *(v0 + 648);
    *(v0 + 80) = v0;
    *(v0 + 88) = specialized CanvasElement.renderDrawing(_:bounds:scale:in:options:);
    v26 = swift_continuation_init();
    *(v0 + 328) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5NeverOGMd);
    *(v0 + 272) = MEMORY[0x1E69E9820];
    *(v0 + 280) = 1107296256;
    *(v0 + 288) = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable () -> () with result type ();
    *(v0 + 296) = &block_descriptor_18;
    *(v0 + 304) = v26;
    [v23 sixChannelPDFRenderDrawing:v25 context:v24 clippedToStrokeSpaceRect:v0 + 272 scale:v2 completion:{v6, v7, v7, 1.0}];
  }

  v3 = v19;

  return MEMORY[0x1EEE6DEC8](v3);
}

{

  return MEMORY[0x1EEE6DFA0](specialized CanvasElement.renderDrawing(_:bounds:scale:in:options:), 0, 0);
}

{
  v1 = *(v0 + 640);
  if (v1)
  {
    v2 = [*(v0 + 640) CGImage];
    if (v2)
    {
      v41.origin.x = *(v0 + 800);
      v41.origin.y = *(v0 + 792);
      v41.size.width = *(v0 + 752);
      v3 = v2;
      v41.size.height = v41.size.width;
      CGContextRef.draw(_:in:byTiling:)(v2, v41, 0);

      v1 = v3;
    }
  }

  CGContextRestoreGState(*(v0 + 672));
  while (1)
  {
    v5 = *(v0 + 800) + *(v0 + 752);
    if (CGRectGetMaxX(*(v0 + 592)) <= v5)
    {
      v7 = *(v0 + 792) + *(v0 + 752);
      if (CGRectGetMaxY(*(v0 + 592)) <= v7)
      {
        v33 = *(v0 + 680);

        if (*(v33 + 121) == 1)
        {
          v38 = *(v0 + 736);
          v39 = *(v0 + 720);
          CGContextSetRGBFillColor(*(v0 + 672), 1.0, 0.0, 0.0, 0.2);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd);
          v34 = swift_allocObject();
          v34[1] = xmmword_1D4058CF0;
          v34[2] = v39;
          v34[3] = v38;
          CGContextRef.fill(_:)(v34);
        }

        v35 = *(v0 + 672);
        CGContextRestoreGState(v35);

        v36 = *(v0 + 8);

        return v36();
      }

      *(v0 + 792) = v7;
      v5 = *(v0 + 768) / *(v0 + 664);
    }

    *(v0 + 800) = v5;
    if (*(v0 + 784))
    {
      break;
    }

LABEL_6:
    v4 = *(v0 + 712);
    (*(*(v0 + 696) + 56))(v4, 1, 1, *(v0 + 688));
    outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s9PencilKit8PKStrokeVSgMd);
  }

  v8 = 0;
  v9 = *(v0 + 792);
  v10 = *(v0 + 752);
  while (1)
  {
    v11 = *(v0 + 776);
    if (v8 >= *(v11 + 16))
    {
      __break(1u);
      return MEMORY[0x1EEE6DEC8](v6);
    }

    (*(*(v0 + 696) + 16))(*(v0 + 704), v11 + ((*(*(v0 + 696) + 80) + 32) & ~*(*(v0 + 696) + 80)) + *(*(v0 + 696) + 72) * v8, *(v0 + 688));
    PKStroke.renderBounds.getter();
    v45.origin.x = v5;
    v45.origin.y = v9;
    v45.size.width = v10;
    v45.size.height = v10;
    if (CGRectIntersectsRect(v42, v45))
    {
      break;
    }

    v12 = *(v0 + 784);
    ++v8;
    v6 = (*(*(v0 + 696) + 8))(*(v0 + 704), *(v0 + 688));
    if (v8 == v12)
    {
      goto LABEL_6;
    }
  }

  v13 = *(v0 + 808);
  v14 = *(v0 + 712);
  v15 = *(v0 + 696);
  v16 = *(v0 + 688);
  v17 = *(v0 + 672);
  (*(v15 + 32))(v14, *(v0 + 704), v16);
  (*(v15 + 56))(v14, 0, 1, v16);
  outlined destroy of StocksKitCurrencyCache.Provider?(v14, &_s9PencilKit8PKStrokeVSgMd);
  CGContextSaveGState(v17);
  v43.origin.x = v5;
  v43.origin.y = v9;
  v43.size.width = v10;
  v43.size.height = v10;
  MinY = CGRectGetMinY(v43);
  v44.origin.x = v5;
  v44.origin.y = v9;
  v44.size.width = v10;
  v44.size.height = v10;
  MaxY = CGRectGetMaxY(v44);
  *(v0 + 400) = 0x3FF0000000000000;
  *(v0 + 408) = 0;
  *(v0 + 416) = 0;
  *(v0 + 424) = 0x3FF0000000000000;
  *(v0 + 432) = 0;
  *(v0 + 440) = 0;
  *(v0 + 448) = 0x3FF0000000000000;
  *(v0 + 456) = 0;
  *(v0 + 464) = 0;
  *(v0 + 472) = 0xBFF0000000000000;
  *(v0 + 480) = 0;
  *(v0 + 488) = MinY + MaxY;
  CGAffineTransformConcat((v0 + 496), (v0 + 400), (v0 + 448));
  v20 = *(v0 + 512);
  v21 = *(v0 + 528);
  *(v0 + 544) = *(v0 + 496);
  *(v0 + 560) = v20;
  *(v0 + 576) = v21;
  CGContextConcatCTM(v17, (v0 + 544));
  if (v13 == 1)
  {
    v22 = v0 + 144;
    v23 = *(v0 + 760);
    v24 = *(v0 + 648);
    *(v0 + 144) = v0;
    *(v0 + 184) = v0 + 624;
    *(v0 + 152) = specialized CanvasElement.renderDrawing(_:bounds:scale:in:options:);
    v25 = swift_continuation_init();
    *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo10CGImageRefaSg_ACts5NeverOGMd);
    *(v0 + 336) = MEMORY[0x1E69E9820];
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable (@unowned CGImageRef?, @unowned CGImageRef?) -> () with result type (CGImageRef?, CGImageRef?);
    *(v0 + 360) = &block_descriptor_21_2;
    *(v0 + 368) = v25;
    [v23 sixChannelCGRenderDrawing:v24 clippedToStrokeSpaceRect:v0 + 336 scale:v5 completion:{v9, v10, v10, 1.0}];
  }

  else if ((*(v0 + 810) & 1) != 0 || (*(v0 + 809) & 1) != 0 || ![*(v0 + 760) respondsToSelector_])
  {
    v22 = v0 + 16;
    v30 = *(v0 + 760);
    v31 = *(v0 + 648);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 640;
    *(v0 + 24) = specialized CanvasElement.renderDrawing(_:bounds:scale:in:options:);
    v32 = swift_continuation_init();
    *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo7UIImageCSgs5NeverOGMd);
    *(v0 + 208) = MEMORY[0x1E69E9820];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable (@unowned UIImage?) -> () with result type UIImage?;
    *(v0 + 232) = &block_descriptor_15_1;
    *(v0 + 240) = v32;
    [v30 renderDrawing:v31 clippedToStrokeSpaceRect:v0 + 208 scale:v5 completion:{v9, v10, v10, 1.0}];
  }

  else
  {
    v22 = v0 + 80;
    v26 = *(v0 + 760);
    v27 = *(v0 + 672);
    v28 = *(v0 + 648);
    *(v0 + 80) = v0;
    *(v0 + 88) = specialized CanvasElement.renderDrawing(_:bounds:scale:in:options:);
    v29 = swift_continuation_init();
    *(v0 + 328) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5NeverOGMd);
    *(v0 + 272) = MEMORY[0x1E69E9820];
    *(v0 + 280) = 1107296256;
    *(v0 + 288) = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable () -> () with result type ();
    *(v0 + 296) = &block_descriptor_18;
    *(v0 + 304) = v29;
    [v26 sixChannelPDFRenderDrawing:v28 context:v27 clippedToStrokeSpaceRect:v0 + 272 scale:v5 completion:{v9, v10, v10, 1.0}];
  }

  v6 = v22;

  return MEMORY[0x1EEE6DEC8](v6);
}

uint64_t @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable (@unowned CGImageRef?, @unowned CGImageRef?) -> () with result type (CGImageRef?, CGImageRef?)(uint64_t a1, void *a2, void *a3)
{
  v5 = *(*(*__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56)) + 64) + 40);
  *v5 = a2;
  v5[1] = a3;
  v6 = a2;
  v7 = a3;

  return swift_continuation_resume();
}

uint64_t @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable () -> () with result type ()(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return swift_continuation_resume();
}

uint64_t @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable (@unowned UIImage?) -> () with result type UIImage?(uint64_t a1, void *a2)
{
  **(*(*__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;
  v3 = a2;

  return swift_continuation_resume();
}

uint64_t specialized renderDrawingInContext #1 <A><A1>(_:) in ContainerCanvasElement.renderSubelements<A>(in:capsule:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  *(v8 + 376) = a3;
  *(v8 + 384) = a4;
  *(v8 + 368) = a2;
  *(v8 + 352) = a7;
  *(v8 + 360) = a8;
  *(v8 + 336) = a5;
  *(v8 + 344) = a6;
  *(v8 + 328) = a1;
  v9 = type metadata accessor for PKDrawing();
  *(v8 + 392) = v9;
  *(v8 + 400) = *(v9 - 8);
  *(v8 + 408) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized renderDrawingInContext #1 <A><A1>(_:) in ContainerCanvasElement.renderSubelements<A>(in:capsule:options:), 0, 0);
}

{
  *(v8 + 376) = a3;
  *(v8 + 384) = a4;
  *(v8 + 368) = a2;
  *(v8 + 352) = a7;
  *(v8 + 360) = a8;
  *(v8 + 336) = a5;
  *(v8 + 344) = a6;
  *(v8 + 328) = a1;
  v9 = type metadata accessor for PKDrawing();
  *(v8 + 392) = v9;
  *(v8 + 400) = *(v9 - 8);
  *(v8 + 408) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized renderDrawingInContext #1 <A><A1>(_:) in ContainerCanvasElement.renderSubelements<A>(in:capsule:options:), 0, 0);
}

uint64_t specialized renderDrawingInContext #1 <A><A1>(_:) in ContainerCanvasElement.renderSubelements<A>(in:capsule:options:)()
{
  v48 = v0;
  v2 = *(v0 + 352);
  v1 = *(v0 + 360);
  v4 = *(v0 + 336);
  v3 = *(v0 + 344);
  [*(v0 + 328) bounds];
  v54.origin.x = v4;
  v54.origin.y = v3;
  v54.size.width = v2;
  v54.size.height = v1;
  v51 = CGRectIntersection(v50, v54);
  x = v51.origin.x;
  y = v51.origin.y;
  width = v51.size.width;
  height = v51.size.height;
  if (CGRectIsEmpty(v51))
  {

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    Type = CGContextGetType();
    if (Type == 1 || Type == 6)
    {
      v14 = *(v0 + 368);
      v13 = *(v0 + 376);
      v15 = *(v0 + 328);
      CGContextGetCTM(&v47, v14);
      a = v47.a;
      b = v47.b;
      v18 = CGContextGetType();
      *(v0 + 288) = x;
      *(v0 + 296) = y;
      *(v0 + 304) = width;
      *(v0 + 312) = height;
      *(v0 + 320) = 0;
      v19 = *v13;
      v20 = v13[1];
      *(v0 + 24) = 0;
      *(v0 + 139) = 0;
      *(v0 + 18) = 0;
      *(v0 + 32) = 0;
      *(v0 + 40) = 0u;
      *(v0 + 56) = 0u;
      *(v0 + 96) = 0u;
      *(v0 + 112) = 0u;
      *(v0 + 121) = 0u;
      *(v0 + 72) = 1;
      *(v0 + 80) = 0;
      *(v0 + 88) = 0;
      *(v0 + 16) = v19;
      *(v0 + 17) = v20;
      *(v0 + 137) = 0;
      v21 = CGBitmapContextGetColorSpace(v14);
      if (v21)
      {
        v22 = v21;
        if (CGColorSpaceUsesExtendedRange(v21))
        {
          v23 = 1;
        }

        else
        {
          v23 = MEMORY[0x1DA6CEC30](v22);
        }
      }

      else
      {
        v23 = 0;
      }

      v41 = v18 == 6 || v18 == 1;
      *(v0 + 140) = v23;
      v42 = sqrt(a * a + b * b);
      v43 = 1.0;
      if (v41)
      {
        v43 = 2.0;
      }

      v44 = v42 * v43;
      v45 = swift_task_alloc();
      *(v0 + 416) = v45;
      *v45 = v0;
      v45[1] = specialized renderDrawingInContext #1 <A><A1>(_:) in ContainerCanvasElement.renderSubelements<A>(in:capsule:options:);
      v46 = *(v0 + 368);

      return specialized CanvasElement.renderDrawing(_:bounds:scale:in:options:)(v15, v0 + 288, v46, v0 + 16, v44);
    }

    else
    {
      v24 = *(v0 + 368);
      v25 = *(v0 + 376);
      CGContextSaveGState(v24);
      v52.origin.x = x;
      v52.origin.y = y;
      v52.size.width = width;
      v52.size.height = height;
      MinY = CGRectGetMinY(v52);
      v53.origin.x = x;
      v53.origin.y = y;
      v53.size.width = width;
      v53.size.height = height;
      MaxY = CGRectGetMaxY(v53);
      *(v0 + 144) = 0x3FF0000000000000;
      *(v0 + 152) = 0;
      *(v0 + 160) = 0;
      *(v0 + 176) = 0;
      *(v0 + 184) = 0;
      *(v0 + 168) = 0x3FF0000000000000;
      *(v0 + 192) = 0x3FF0000000000000;
      *(v0 + 200) = 0;
      *(v0 + 208) = 0;
      *(v0 + 216) = xmmword_1D405A660;
      *(v0 + 232) = MinY + MaxY;
      CGAffineTransformConcat(&v47, (v0 + 144), (v0 + 192));
      v28 = *&v47.c;
      v29 = *&v47.tx;
      *(v0 + 240) = *&v47.a;
      *(v0 + 256) = v28;
      *(v0 + 272) = v29;
      CGContextConcatCTM(v24, (v0 + 240));
      static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = *(v25 + 1);
      v31 = swift_task_alloc();
      *(v0 + 424) = v31;
      *v31 = v0;
      v31[1] = specialized renderDrawingInContext #1 <A><A1>(_:) in ContainerCanvasElement.renderSubelements<A>(in:capsule:options:);
      v40 = *(v0 + 368);
      v32.n128_f64[0] = x;
      v33.n128_f64[0] = y;
      v34.n128_f64[0] = width;
      v35.n128_f64[0] = height;
      v36.n128_f64[0] = x;
      v37.n128_f64[0] = y;
      v38.n128_f64[0] = width;
      v39.n128_f64[0] = height;

      return MEMORY[0x1EEDD58B0](0, 0, v40, v30, v32, v33, v34, v35, v36, v37, v38, v39);
    }
  }
}

{

  return MEMORY[0x1EEE6DFA0](specialized renderDrawingInContext #1 <A><A1>(_:) in ContainerCanvasElement.renderSubelements<A>(in:capsule:options:), 0, 0);
}

{
  outlined destroy of PaperRenderableOptions(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(*v0 + 408);
  v2 = *(*v0 + 400);
  v3 = *(*v0 + 392);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](specialized renderDrawingInContext #1 <A><A1>(_:) in ContainerCanvasElement.renderSubelements<A>(in:capsule:options:), 0, 0);
}

{
  CGContextRestoreGState(*(v0 + 368));

  v1 = *(v0 + 8);

  return v1();
}

{
  v48 = v0;
  v2 = *(v0 + 352);
  v1 = *(v0 + 360);
  v4 = *(v0 + 336);
  v3 = *(v0 + 344);
  [*(v0 + 328) bounds];
  v54.origin.x = v4;
  v54.origin.y = v3;
  v54.size.width = v2;
  v54.size.height = v1;
  v51 = CGRectIntersection(v50, v54);
  x = v51.origin.x;
  y = v51.origin.y;
  width = v51.size.width;
  height = v51.size.height;
  if (CGRectIsEmpty(v51))
  {

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    Type = CGContextGetType();
    if (Type == 1 || Type == 6)
    {
      v14 = *(v0 + 368);
      v13 = *(v0 + 376);
      v15 = *(v0 + 328);
      CGContextGetCTM(&v47, v14);
      a = v47.a;
      b = v47.b;
      v18 = CGContextGetType();
      *(v0 + 288) = x;
      *(v0 + 296) = y;
      *(v0 + 304) = width;
      *(v0 + 312) = height;
      *(v0 + 320) = 0;
      v19 = *v13;
      v20 = v13[1];
      *(v0 + 24) = 0;
      *(v0 + 139) = 0;
      *(v0 + 18) = 0;
      *(v0 + 32) = 0;
      *(v0 + 40) = 0u;
      *(v0 + 56) = 0u;
      *(v0 + 96) = 0u;
      *(v0 + 112) = 0u;
      *(v0 + 121) = 0u;
      *(v0 + 72) = 1;
      *(v0 + 80) = 0;
      *(v0 + 88) = 0;
      *(v0 + 16) = v19;
      *(v0 + 17) = v20;
      *(v0 + 137) = 0;
      v21 = CGBitmapContextGetColorSpace(v14);
      if (v21)
      {
        v22 = v21;
        if (CGColorSpaceUsesExtendedRange(v21))
        {
          v23 = 1;
        }

        else
        {
          v23 = MEMORY[0x1DA6CEC30](v22);
        }
      }

      else
      {
        v23 = 0;
      }

      v41 = v18 == 6 || v18 == 1;
      *(v0 + 140) = v23;
      v42 = sqrt(a * a + b * b);
      v43 = 1.0;
      if (v41)
      {
        v43 = 2.0;
      }

      v44 = v42 * v43;
      v45 = swift_task_alloc();
      *(v0 + 416) = v45;
      *v45 = v0;
      v45[1] = specialized renderDrawingInContext #1 <A><A1>(_:) in ContainerCanvasElement.renderSubelements<A>(in:capsule:options:);
      v46 = *(v0 + 368);

      return specialized CanvasElement.renderDrawing(_:bounds:scale:in:options:)(v15, v0 + 288, v46, v0 + 16, v44);
    }

    else
    {
      v24 = *(v0 + 368);
      v25 = *(v0 + 376);
      CGContextSaveGState(v24);
      v52.origin.x = x;
      v52.origin.y = y;
      v52.size.width = width;
      v52.size.height = height;
      MinY = CGRectGetMinY(v52);
      v53.origin.x = x;
      v53.origin.y = y;
      v53.size.width = width;
      v53.size.height = height;
      MaxY = CGRectGetMaxY(v53);
      *(v0 + 144) = 0x3FF0000000000000;
      *(v0 + 152) = 0;
      *(v0 + 160) = 0;
      *(v0 + 176) = 0;
      *(v0 + 184) = 0;
      *(v0 + 168) = 0x3FF0000000000000;
      *(v0 + 192) = 0x3FF0000000000000;
      *(v0 + 200) = 0;
      *(v0 + 208) = 0;
      *(v0 + 216) = xmmword_1D405A660;
      *(v0 + 232) = MinY + MaxY;
      CGAffineTransformConcat(&v47, (v0 + 144), (v0 + 192));
      v28 = *&v47.c;
      v29 = *&v47.tx;
      *(v0 + 240) = *&v47.a;
      *(v0 + 256) = v28;
      *(v0 + 272) = v29;
      CGContextConcatCTM(v24, (v0 + 240));
      static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = *(v25 + 1);
      v31 = swift_task_alloc();
      *(v0 + 424) = v31;
      *v31 = v0;
      v31[1] = specialized renderDrawingInContext #1 <A><A1>(_:) in ContainerCanvasElement.renderSubelements<A>(in:capsule:options:);
      v40 = *(v0 + 368);
      v32.n128_f64[0] = x;
      v33.n128_f64[0] = y;
      v34.n128_f64[0] = width;
      v35.n128_f64[0] = height;
      v36.n128_f64[0] = x;
      v37.n128_f64[0] = y;
      v38.n128_f64[0] = width;
      v39.n128_f64[0] = height;

      return MEMORY[0x1EEDD58B0](0, 0, v40, v30, v32, v33, v34, v35, v36, v37, v38, v39);
    }
  }
}

{

  return MEMORY[0x1EEE6DFA0](specialized renderDrawingInContext #1 <A><A1>(_:) in ContainerCanvasElement.renderSubelements<A>(in:capsule:options:), 0, 0);
}

{
  v1 = *(*v0 + 408);
  v2 = *(*v0 + 400);
  v3 = *(*v0 + 392);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](specialized renderDrawingInContext #1 <A><A1>(_:) in ContainerCanvasElement.renderSubelements<A>(in:capsule:options:), 0, 0);
}

{
  v47 = v0;
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  [*(v0 + 200) bounds];
  v53.origin.x = v4;
  v53.origin.y = v3;
  v53.size.width = v2;
  v53.size.height = v1;
  v50 = CGRectIntersection(v49, v53);
  x = v50.origin.x;
  y = v50.origin.y;
  width = v50.size.width;
  height = v50.size.height;
  if (CGRectIsEmpty(v50))
  {

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    Type = CGContextGetType();
    if (Type == 1 || Type == 6)
    {
      v13 = *(v0 + 264);
      v14 = *(v0 + 248);
      v15 = *(v0 + 200);
      CGContextGetCTM(&v45, *(v0 + 240));
      v16 = sqrt(vaddvq_f64(vmulq_f64(*&v45.a, *&v45.a)));
      v17 = CGContextGetType();
      v18 = v17 == 6 || v17 == 1;
      v19 = 1.0;
      if (v18)
      {
        v19 = 2.0;
      }

      v20 = v16 * v19;
      *(v0 + 160) = x;
      *(v0 + 168) = y;
      *(v0 + 176) = width;
      *(v0 + 184) = height;
      *(v0 + 192) = 0;
      v46 = specialized CanvasElement.renderDrawing(_:bounds:scale:in:useSixChannelBlending:darkMode:debug:);
      v21 = *v14;
      v22 = v14[1];
      v23 = swift_task_alloc();
      *(v0 + 304) = v23;
      v24 = *(v13 + 8);
      *v23 = v0;
      v23[1] = specialized renderDrawingInContext #1 <A><A1>(_:) in ContainerCanvasElement.renderSubelements<A>(in:capsule:options:);
      v25 = *(v0 + 256);
      v26 = *(v0 + 240);
      v27 = v46;

      return v27(v15, v0 + 160, v26, v21, v22, 0, v25, v24, v20);
    }

    else
    {
      v28 = *(v0 + 240);
      v29 = *(v0 + 248);
      CGContextSaveGState(v28);
      v51.origin.x = x;
      v51.origin.y = y;
      v51.size.width = width;
      v51.size.height = height;
      MinY = CGRectGetMinY(v51);
      v52.origin.x = x;
      v52.origin.y = y;
      v52.size.width = width;
      v52.size.height = height;
      MaxY = CGRectGetMaxY(v52);
      *(v0 + 16) = 0x3FF0000000000000;
      *(v0 + 24) = 0;
      *(v0 + 32) = 0;
      *(v0 + 48) = 0;
      *(v0 + 56) = 0;
      *(v0 + 40) = 0x3FF0000000000000;
      *(v0 + 64) = 0x3FF0000000000000;
      *(v0 + 72) = 0;
      *(v0 + 80) = 0;
      *(v0 + 88) = xmmword_1D405A660;
      *(v0 + 104) = MinY + MaxY;
      CGAffineTransformConcat(&v45, (v0 + 16), (v0 + 64));
      v32 = *&v45.c;
      v33 = *&v45.tx;
      *(v0 + 112) = *&v45.a;
      *(v0 + 128) = v32;
      *(v0 + 144) = v33;
      CGContextConcatCTM(v28, (v0 + 112));
      static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = *(v29 + 1);
      v35 = swift_task_alloc();
      *(v0 + 296) = v35;
      *v35 = v0;
      v35[1] = specialized renderDrawingInContext #1 <A><A1>(_:) in ContainerCanvasElement.renderSubelements<A>(in:capsule:options:);
      v44 = *(v0 + 240);
      v36.n128_f64[0] = x;
      v37.n128_f64[0] = y;
      v38.n128_f64[0] = width;
      v39.n128_f64[0] = height;
      v40.n128_f64[0] = x;
      v41.n128_f64[0] = y;
      v42.n128_f64[0] = width;
      v43.n128_f64[0] = height;

      return MEMORY[0x1EEDD58B0](0, 0, v44, v34, v36, v37, v38, v39, v40, v41, v42, v43);
    }
  }
}

{
  v1 = *(*v0 + 288);
  v2 = *(*v0 + 280);
  v3 = *(*v0 + 272);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](specialized renderDrawingInContext #1 <A><A1>(_:) in ContainerCanvasElement.renderSubelements<A>(in:capsule:options:), 0, 0);
}

{
  CGContextRestoreGState(*(v0 + 240));

  v1 = *(v0 + 8);

  return v1();
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t specialized ContainerCanvasElement.drawingIndexableTextContent<A>(in:)(uint64_t a1)
{
  v33 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  v1 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v3 = &v33 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v33 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - v9;
  v11 = off_1F4F62930[0];
  type metadata accessor for Paper(0);
  v11();
  v12 = v8;
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v6, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
    return MEMORY[0x1E69E7CC0];
  }

  (*(v8 + 32))(v10, v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<PKDrawingStruct> and conformance Ref<A>, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
  Capsule.encapsulateTransient<A>(_:)();
  v13 = type metadata accessor for PKDrawingCoherence(0);
  v14 = objc_allocWithZone(v13);
  v15 = v34;
  (*(v1 + 16))(v14 + OBJC_IVAR___PKDrawingCoherence_model, v3, v34);
  v35.receiver = v14;
  v35.super_class = v13;
  v16 = objc_msgSendSuper2(&v35, sel_init, v33);
  (*(v1 + 8))(v3, v15);
  v17 = v16;
  [v17 setRecognitionEnabled_];
  v18 = [v17 indexableContent];

  if (!v18)
  {

    (*(v12 + 8))(v10, v7);
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8PaperKit20IndexableTextContentVGMd);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1D4058CF0;
  v20 = [v18 indexableTextRepresentation];
  if (v20)
  {
    v21 = v20;
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0xE000000000000000;
  }

  v25 = [v18 presentableTextRepresentation];
  if (v25)
  {
    v34 = v24;
    v26 = v22;
    v27 = v12;
    v28 = v25;
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v12 = v27;
    v22 = v26;
    v24 = v34;
  }

  else
  {
    v29 = 0;
    v31 = 0xE000000000000000;
  }

  *(v19 + 32) = v22;
  *(v19 + 40) = v24;
  *(v19 + 48) = v29;
  *(v19 + 56) = v31;

  (*(v12 + 8))(v10, v7);
  return v19;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v24 - v8;
  v10 = *v2;
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_3<TaggedPaperPage> and conformance SharedTagged_3<A>, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd);
  v31 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v29 = v10 + 56;
  v30 = v10;
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = a1;
    v28 = ~v12;
    v25 = v7;
    v15 = v7 + 16;
    v14 = *(v7 + 16);
    v16 = (v7 + 8);
    v17 = *(v15 + 56);
    v24[1] = v15 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v18 = v14;
      v14(v9, *(v30 + 48) + v17 * v13, v6);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_3<TaggedPaperPage> and conformance SharedTagged_3<A>, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      v20 = *v16;
      (*v16)(v9, v6);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v28;
      v14 = v18;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v3 = v26;
        a1 = v27;
        v7 = v25;
        goto LABEL_7;
      }
    }

    v20(v31, v6);
    v18(v27, *(v30 + 48) + v17 * v13, v6);
    return 0;
  }

  else
  {
    v14 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = v31;
    v14(v9, v31, v6);
    v32 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v9, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v32;
    (*(v7 + 32))(a1, v22, v6);
    return 1;
  }
}

{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v24 - v8;
  v10 = *v2;
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakRef<CRRegister<TaggedStroke>> and conformance WeakRef<A>, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v31 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v29 = v10 + 56;
  v30 = v10;
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = a1;
    v28 = ~v12;
    v25 = v7;
    v15 = v7 + 16;
    v14 = *(v7 + 16);
    v16 = (v7 + 8);
    v17 = *(v15 + 56);
    v24[1] = v15 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v18 = v14;
      v14(v9, *(v30 + 48) + v17 * v13, v6);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakRef<CRRegister<TaggedStroke>> and conformance WeakRef<A>, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      v20 = *v16;
      (*v16)(v9, v6);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v28;
      v14 = v18;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v3 = v26;
        a1 = v27;
        v7 = v25;
        goto LABEL_7;
      }
    }

    v20(v31, v6);
    v18(v27, *(v30 + 48) + v17 * v13, v6);
    return 0;
  }

  else
  {
    v14 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = v31;
    v14(v9, v31, v6);
    v32 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v9, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v32;
    (*(v7 + 32))(a1, v22, v6);
    return 1;
  }
}

{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v24 - v8;
  v10 = *v2;
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakTagged_10<TaggedCanvasElement> and conformance WeakTagged_10<A>, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v31 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v29 = v10 + 56;
  v30 = v10;
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = a1;
    v28 = ~v12;
    v25 = v7;
    v15 = v7 + 16;
    v14 = *(v7 + 16);
    v16 = (v7 + 8);
    v17 = *(v15 + 56);
    v24[1] = v15 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v18 = v14;
      v14(v9, *(v30 + 48) + v17 * v13, v6);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakTagged_10<TaggedCanvasElement> and conformance WeakTagged_10<A>, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      v20 = *v16;
      (*v16)(v9, v6);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v28;
      v14 = v18;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v3 = v26;
        a1 = v27;
        v7 = v25;
        goto LABEL_7;
      }
    }

    v20(v31, v6);
    v18(v27, *(v30 + 48) + v17 * v13, v6);
    return 0;
  }

  else
  {
    v14 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = v31;
    v14(v9, v31, v6);
    v32 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v9, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v32;
    (*(v7 + 32))(a1, v22, v6);
    return 1;
  }
}

{
  v3 = v2;
  v6 = type metadata accessor for CRKeyPath();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type CRKeyPath and conformance CRKeyPath, MEMORY[0x1E69954B8]);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type CRKeyPath and conformance CRKeyPath, MEMORY[0x1E69954B8]);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v24 - v8;
  v10 = *v2;
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v31 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v29 = v10 + 56;
  v30 = v10;
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = a1;
    v28 = ~v12;
    v25 = v7;
    v15 = v7 + 16;
    v14 = *(v7 + 16);
    v16 = (v7 + 8);
    v17 = *(v15 + 56);
    v24[1] = v15 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v18 = v14;
      v14(v9, *(v30 + 48) + v17 * v13, v6);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      v20 = *v16;
      (*v16)(v9, v6);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v28;
      v14 = v18;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v3 = v26;
        a1 = v27;
        v7 = v25;
        goto LABEL_7;
      }
    }

    v20(v31, v6);
    v18(v27, *(v30 + 48) + v17 * v13, v6);
    return 0;
  }

  else
  {
    v14 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = v31;
    v14(v9, v31, v6);
    v32 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v9, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v32;
    (*(v7 + 32))(a1, v22, v6);
    return 1;
  }
}

{
  v3 = v2;
  v6 = type metadata accessor for CRAsset();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type CRAsset and conformance CRAsset, MEMORY[0x1E6995408]);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type CRAsset and conformance CRAsset, MEMORY[0x1E6995408]);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

{
  v3 = v2;
  v6 = type metadata accessor for PKInkingTool.InkType();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type PKInkingTool.InkType and conformance PKInkingTool.InkType, MEMORY[0x1E6978358]);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type PKInkingTool.InkType and conformance PKInkingTool.InkType, MEMORY[0x1E6978358]);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      type metadata accessor for CalculateExpression();
      swift_dynamicCast();
      result = 0;
      *a1 = v18;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC9Calculate0E10ExpressionC_Tt1g5(v7, result + 1);
    if (*(v16 + 24) <= *(v16 + 16))
    {
      specialized _NativeSet.resize(capacity:)();
    }

    specialized _NativeSet._unsafeInsertNew(_:)(v17, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  type metadata accessor for CalculateExpression();
  lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type CalculateExpression and conformance CalculateExpression, MEMORY[0x1E69921C8]);
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;

    specialized _NativeSet.insertNew(_:at:isUnique:)(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v19;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type CalculateExpression and conformance CalculateExpression, MEMORY[0x1E69921C8]);
  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, void *a2)
{
  v41 = a1;
  v56 = type metadata accessor for UnknownValueProperties();
  v4 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v44 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence22UnknownValuePropertiesVSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v53 = &v39 - v7;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence22UnknownValuePropertiesVSg_ADtMd);
  MEMORY[0x1EEE9AC00](v51);
  v9 = &v39 - v8;
  v10 = type metadata accessor for Color(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v39 = (&v39 - v15);
  v40 = v2;
  v16 = *v2;
  lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type Color and conformance Color, type metadata accessor for Color);
  v50 = v10;
  v17 = v16;
  v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v19 = v16 + 56;
  v20 = -1 << *(v16 + 32);
  v21 = v18 & ~v20;
  v22 = *(v16 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21;
  v52 = a2;
  if ((v22 & 1) == 0)
  {
LABEL_12:
    v34 = v40;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = v52;
    v37 = v39;
    outlined init with copy of ShapeType(v52, v39, type metadata accessor for Color);
    v57 = *v34;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v37, v21, isUniquelyReferenced_nonNull_native);
    *v34 = v57;
    outlined init with take of Shape(v36, v41, type metadata accessor for Color);
    return 1;
  }

  v54 = ~v20;
  type metadata accessor for CGColorRef(0);
  v55 = *a2;
  v48 = v16;
  v49 = (v4 + 48);
  v23 = (v4 + 32);
  v46 = (v4 + 8);
  v47 = v16 + 56;
  v24 = *(v11 + 72);
  v42 = v24;
  v43 = v23;
  while (1)
  {
    v26 = v24 * v21;
    outlined init with copy of ShapeType(*(v17 + 48) + v24 * v21, v13, type metadata accessor for Color);
    lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type CGColorRef and conformance CGColorRef, type metadata accessor for CGColorRef);
    if ((static _CFObject.== infix(_:_:)() & 1) == 0)
    {
      goto LABEL_5;
    }

    v27 = *(v50 + 20);
    v28 = *(v51 + 48);
    outlined init with copy of Date?(&v13[v27], v9, &_s9Coherence22UnknownValuePropertiesVSgMd);
    outlined init with copy of Date?(v52 + v27, &v9[v28], &_s9Coherence22UnknownValuePropertiesVSgMd);
    v29 = *v49;
    if ((*v49)(v9, 1, v56) == 1)
    {
      break;
    }

    outlined init with copy of Date?(v9, v53, &_s9Coherence22UnknownValuePropertiesVSgMd);
    if (v29(&v9[v28], 1, v56) == 1)
    {
      (*v46)(v53, v56);
      v17 = v48;
      goto LABEL_4;
    }

    v30 = v44;
    v31 = &v9[v28];
    v32 = v56;
    (*v43)(v44, v31, v56);
    lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type UnknownValueProperties and conformance UnknownValueProperties, MEMORY[0x1E6995350]);
    v45 = dispatch thunk of static Equatable.== infix(_:_:)();
    v33 = *v46;
    (*v46)(v30, v32);
    v33(v53, v32);
    v24 = v42;
    outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s9Coherence22UnknownValuePropertiesVSgMd);
    v19 = v47;
    v17 = v48;
    if (v45)
    {
      goto LABEL_15;
    }

LABEL_5:
    outlined destroy of Paper(v13, type metadata accessor for Color);
    v21 = (v21 + 1) & v54;
    if (((*(v19 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v25 = v29(&v9[v28], 1, v56);
  v17 = v48;
  if (v25 != 1)
  {
LABEL_4:
    outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s9Coherence22UnknownValuePropertiesVSg_ADtMd);
    v19 = v47;
    goto LABEL_5;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s9Coherence22UnknownValuePropertiesVSgMd);
LABEL_15:
  outlined destroy of Paper(v13, type metadata accessor for Color);
  outlined destroy of Paper(v52, type metadata accessor for Color);
  outlined init with copy of ShapeType(*(v17 + 48) + v26, v41, type metadata accessor for Color);
  return 0;
}

uint64_t specialized Set._Variant.insert(_:)(float *a1, float a2)
{
  v3 = a2;
  v5 = *v2;
  v6 = a2 == 0.0;
  v7 = 0.0;
  if (!v6)
  {
    v7 = v3;
  }

  v8 = MEMORY[0x1DA6CE7E0](*(*v2 + 40), LODWORD(v7), 4);
  v9 = -1 << *(v5 + 32);
  v10 = v8 & ~v9;
  if ((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(v5 + 48);
      if (*(v12 + 4 * v10) == v3)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    result = 0;
    v3 = *(v12 + 4 * v10);
  }

  else
  {
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v10, isUniquelyReferenced_nonNull_native, v3);
    *v2 = v15;
    result = 1;
  }

  *a1 = v3;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  MEMORY[0x1DA6CE810](a2);
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
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

{
  v5 = *v2;
  v6 = MEMORY[0x1DA6CE7F0](*(*v2 + 40));
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(v5 + 48);
      if (*(v10 + 8 * v8) == a2)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v10 + 8 * v8);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

{
  v5 = *v2;
  v6 = MEMORY[0x1DA6CE7F0](*(*v2 + 40));
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
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

uint64_t specialized Set._Variant.insert(_:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for AnyCanvasElementView();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC8PaperKit20AnyCanvasElementViewC_Tt1g5(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      specialized _NativeSet.resize(capacity:)(v20 + 1, &_ss11_SetStorageCy8PaperKit20AnyCanvasElementViewCGMd);
    }

    v18 = v8;
    specialized _NativeSet._unsafeInsertNew(_:)(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for AnyCanvasElementView();
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSObject);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo8PKStrokeC_Tt1g5Tm(v7, result + 1, &_ss11_SetStorageCySo8NSObjectCGMd, &_ss11_SetStorageCySo8NSObjectCGMR, &lazy cache variable for type metadata for NSObject);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      specialized _NativeSet.resize(capacity:)(v20 + 1, &_ss11_SetStorageCySo8NSObjectCGMd);
    }

    v18 = v8;
    specialized _NativeSet._unsafeInsertNew(_:)(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSObject);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIColor);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo8PKStrokeC_Tt1g5Tm(v7, result + 1, &_ss11_SetStorageCySo7UIColorCGMd, &_ss11_SetStorageCySo7UIColorCGMR, &lazy cache variable for type metadata for UIColor);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      specialized _NativeSet.resize(capacity:)(v20 + 1, &_ss11_SetStorageCySo7UIColorCGMd);
    }

    v18 = v8;
    specialized _NativeSet._unsafeInsertNew(_:)(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIColor);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PKStroke);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo8PKStrokeC_Tt1g5Tm(v7, result + 1, &_ss11_SetStorageCySo8PKStrokeCGMd, &_ss11_SetStorageCySo8PKStrokeCGMR, &lazy cache variable for type metadata for PKStroke);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      specialized _NativeSet.resize(capacity:)(v20 + 1, &_ss11_SetStorageCySo8PKStrokeCGMd);
    }

    v18 = v8;
    specialized _NativeSet._unsafeInsertNew(_:)(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PKStroke);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v4 + 48) + (v14 | (v7 << 6)));
      Hasher.init(_seed:)();
      MEMORY[0x1DA6CE810](v17);
      result = Hasher._finalize()();
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v3 = v2;
        goto LABEL_26;
      }

      v16 = *(v4 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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
    *v3 = v6;
  }

  return result;
}

{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(v6 + 40);
      v18 = *(*(v4 + 48) + 8 * (v14 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(v17);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v3 = v26;
        goto LABEL_26;
      }

      v16 = *(v4 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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
    *v3 = v6;
  }

  return result;
}

uint64_t specialized _NativeSet.resize(capacity:)()
{
  v1 = v0;
  v35 = type metadata accessor for UUID();
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVGMd);
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
      lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy8PaperKit07FeatureA0V08InternalE0OGMd);
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
      MEMORY[0x1DA6CE810](v16);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9Calculate0C10ExpressionCGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v25 = v2;
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
      type metadata accessor for CalculateExpression();
      lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type CalculateExpression and conformance CalculateExpression, MEMORY[0x1E69921C8]);
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
      v2 = v25;
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
      bzero(v6, ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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
  v2 = type metadata accessor for Color(0);
  v30 = *(v2 - 8);
  v31 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy8PaperKit5ColorVGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v0;
    v8 = 0;
    v9 = (v5 + 56);
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
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v30 + 72);
      outlined init with take of Shape(*(v5 + 48) + v19 * (v16 | (v8 << 6)), v4, type metadata accessor for Color);
      lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type Color and conformance Color, type metadata accessor for Color);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v7 + 32);
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

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = outlined init with take of Shape(v4, *(v7 + 48) + v15 * v19, type metadata accessor for Color);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    v1 = v29;
    *(v5 + 16) = 0;
  }

  *v1 = v7;
  return result;
}

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySfGMd);
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
      v16 = v13 | (v5 << 6);
      v17 = *(v2 + 48);
      v18 = *(v17 + 4 * v16);
      if (v18 == 0.0)
      {
        v19 = 0.0;
      }

      else
      {
        v19 = *(v17 + 4 * v16);
      }

      result = MEMORY[0x1DA6CE7E0](*(v4 + 40), LODWORD(v19), 4);
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
      *(*(v4 + 48) + 4 * v12) = v18;
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

    if (v7 >= 64)
    {
      bzero((v2 + 56), 8 * v10);
    }

    else
    {
      *v6 = -1 << v7;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo15NSTextAlignmentVGMd);
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
      MEMORY[0x1DA6CE810](v16);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySbGMd);
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
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd);
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - v3;
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9Coherence14SharedTagged_3Vy8PaperKit0eF4PageVGGMd);
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
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_3<TaggedPaperPage> and conformance SharedTagged_3<A>, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd);
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
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - v3;
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9Coherence7WeakRefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
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
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakRef<CRRegister<TaggedStroke>> and conformance WeakRef<A>, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
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
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - v3;
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9Coherence13WeakTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
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
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakTagged_10<TaggedCanvasElement> and conformance WeakTagged_10<A>, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
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
  v35 = type metadata accessor for CRKeyPath();
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9Coherence9CRKeyPathVGMd);
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
      lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type CRKeyPath and conformance CRKeyPath, MEMORY[0x1E69954B8]);
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
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - v3;
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9Coherence3RefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
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
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySOGMd);
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
      result = MEMORY[0x1DA6CE7F0](*(v4 + 40), v16);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySiGMd);
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
      result = MEMORY[0x1DA6CE7F0](*(v4 + 40), v16);
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
  v35 = type metadata accessor for CRAsset();
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9Coherence7CRAssetVGMd);
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
      lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type CRAsset and conformance CRAsset, MEMORY[0x1E6995408]);
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
  v35 = type metadata accessor for PKInkingTool.InkType();
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9PencilKit12PKInkingToolV7InkTypeOGMd);
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
      lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type PKInkingTool.InkType and conformance PKInkingTool.InkType, MEMORY[0x1E6978358]);
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

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
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
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + (v15 | (v7 << 6)));
      Hasher.init(_seed:)();
      MEMORY[0x1DA6CE810](v18);
      result = Hasher._finalize()();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
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

    v26 = 1 << *(v4 + 32);
    if (v26 >= 64)
    {
      bzero((v4 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    v3 = v2;
    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
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
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v6 + 40));
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
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

    v26 = 1 << *(v4 + 32);
    if (v26 >= 64)
    {
      bzero((v4 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

uint64_t _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC9Calculate0E10ExpressionC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9Calculate0C10ExpressionCGMd);
    v2 = static _SetStorage.convert(_:capacity:)();
    v14 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for CalculateExpression();
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          specialized _NativeSet.resize(capacity:)();
        }

        v2 = v14;
        lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type CalculateExpression and conformance CalculateExpression, MEMORY[0x1E69921C8]);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC8PaperKit20AnyCanvasElementViewC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy8PaperKit20AnyCanvasElementViewCGMd);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for AnyCanvasElementView();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          specialized _NativeSet.resize(capacity:)(v9 + 1, &_ss11_SetStorageCy8PaperKit20AnyCanvasElementViewCGMd);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo8PKStrokeC_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, unint64_t *a5)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3);
    v7 = static _SetStorage.convert(_:capacity:)();
    v20 = v7;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for PKMathRecognitionItemAttributes(0, a5);
      do
      {
        swift_dynamicCast();
        v14 = *(v7 + 16);
        if (*(v7 + 24) <= v14)
        {
          specialized _NativeSet.resize(capacity:)(v14 + 1, a3);
        }

        v7 = v20;
        result = NSObject._rawHashValue(seed:)(*(v20 + 40));
        v9 = v20 + 56;
        v10 = -1 << *(v20 + 32);
        v11 = result & ~v10;
        v12 = v11 >> 6;
        if (((-1 << v11) & ~*(v20 + 56 + 8 * (v11 >> 6))) != 0)
        {
          v13 = __clz(__rbit64((-1 << v11) & ~*(v20 + 56 + 8 * (v11 >> 6)))) | v11 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v15 = 0;
          v16 = (63 - v10) >> 6;
          do
          {
            if (++v12 == v16 && (v15 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v17 = v12 == v16;
            if (v12 == v16)
            {
              v12 = 0;
            }

            v15 |= v17;
            v18 = *(v9 + 8 * v12);
          }

          while (v18 == -1);
          v13 = __clz(__rbit64(~v18)) + (v12 << 6);
        }

        *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        *(*(v20 + 48) + 8 * v13) = v19;
        ++*(v20 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v7;
}

unint64_t specialized _NativeSet._unsafeInsertNew(_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CalculateExpression();
  lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type CalculateExpression and conformance CalculateExpression, MEMORY[0x1E69921C8]);
  dispatch thunk of Hashable._rawHashValue(seed:)();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t specialized _NativeSet._unsafeInsertNew(_:)(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v12 > v11)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v13 = *v3;
  lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v32 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - v9;
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v7;
  v30 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v12 > v11)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v13 = *v3;
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_3<TaggedPaperPage> and conformance SharedTagged_3<A>, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v18 = v7 + 16;
    v19 = v20;
    v21 = *(v18 + 56);
    do
    {
      v19(v10, *(v31 + 48) + v21 * a2, v6);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_3<TaggedPaperPage> and conformance SharedTagged_3<A>, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v29;
  v24 = *v30;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v31 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - v8;
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v7;
  v29 = v3;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v11 > v10)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v12 = *v3;
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakRef<CRRegister<TaggedStroke>> and conformance WeakRef<A>, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v17 = v7 + 16;
    v18 = v19;
    v20 = *(v17 + 56);
    do
    {
      v18(v9, *(v30 + 48) + v20 * a2, v6);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakRef<CRRegister<TaggedStroke>> and conformance WeakRef<A>, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v17 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v28;
  v23 = *v29;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v31 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - v8;
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v7;
  v29 = v3;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v11 > v10)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v12 = *v3;
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakTagged_10<TaggedCanvasElement> and conformance WeakTagged_10<A>, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v17 = v7 + 16;
    v18 = v19;
    v20 = *(v17 + 56);
    do
    {
      v18(v9, *(v30 + 48) + v20 * a2, v6);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakTagged_10<TaggedCanvasElement> and conformance WeakTagged_10<A>, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v17 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v28;
  v23 = *v29;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v31 = a1;
  v6 = type metadata accessor for CRKeyPath();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v11 > v10)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v12 = *v3;
  lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type CRKeyPath and conformance CRKeyPath, MEMORY[0x1E69954B8]);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type CRKeyPath and conformance CRKeyPath, MEMORY[0x1E69954B8]);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v32 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - v9;
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v7;
  v30 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v12 > v11)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v13 = *v3;
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v18 = v7 + 16;
    v19 = v20;
    v21 = *(v18 + 56);
    do
    {
      v19(v10, *(v31 + 48) + v21 * a2, v6);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v29;
  v24 = *v30;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v31 = a1;
  v6 = type metadata accessor for CRAsset();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v11 > v10)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v12 = *v3;
  lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type CRAsset and conformance CRAsset, MEMORY[0x1E6995408]);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type CRAsset and conformance CRAsset, MEMORY[0x1E6995408]);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v32 = a1;
  v6 = type metadata accessor for PKInkingTool.InkType();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v12 > v11)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v13 = *v3;
  lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type PKInkingTool.InkType and conformance PKInkingTool.InkType, MEMORY[0x1E6978358]);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type PKInkingTool.InkType and conformance PKInkingTool.InkType, MEMORY[0x1E6978358]);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v9 > v8)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v7 > v6)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v8 = *v3;
  type metadata accessor for CalculateExpression();
  lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type CalculateExpression and conformance CalculateExpression, MEMORY[0x1E69921C8]);
  result = dispatch thunk of Hashable._rawHashValue(seed:)();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type CalculateExpression and conformance CalculateExpression, MEMORY[0x1E69921C8]);
    do
    {
      result = dispatch thunk of static Equatable.== infix(_:_:)();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v5;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v4 = result;
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
      result = specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v8 = *v3;
  result = MEMORY[0x1DA6CE7F0](*(*v3 + 40), v4);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v4 = result;
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
      result = specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v8 = *v3;
  result = MEMORY[0x1DA6CE7F0](*(*v3 + 40), v4);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(void *a1, unint64_t a2, char a3)
{
  v53 = type metadata accessor for UnknownValueProperties();
  v7 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v39 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence22UnknownValuePropertiesVSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v47 = &v36 - v10;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence22UnknownValuePropertiesVSg_ADtMd);
  MEMORY[0x1EEE9AC00](v46);
  v12 = &v36 - v11;
  v48 = type metadata accessor for Color(0);
  v13 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(*v3 + 16);
  v17 = *(*v3 + 24);
  v49 = a1;
  v40 = v13;
  v41 = v3;
  if (v17 <= v16 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)();
    }

    else
    {
      if (v17 > v16)
      {
        specialized _NativeSet.copy()();
        goto LABEL_19;
      }

      specialized _NativeSet.copyAndResize(capacity:)();
    }

    v18 = *v3;
    lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type Color and conformance Color, type metadata accessor for Color);
    v19 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v20 = -1 << *(v18 + 32);
    a2 = v19 & ~v20;
    v52 = v18 + 56;
    if ((*(v18 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v51 = ~v20;
      type metadata accessor for CGColorRef(0);
      v50 = *a1;
      v37 = (v7 + 32);
      v42 = (v7 + 8);
      v43 = v18;
      v21 = *(v13 + 72);
      v44 = v21;
      v45 = (v7 + 48);
      do
      {
        outlined init with copy of ShapeType(*(v18 + 48) + v21 * a2, v15, type metadata accessor for Color);
        lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type CGColorRef and conformance CGColorRef, type metadata accessor for CGColorRef);
        if (static _CFObject.== infix(_:_:)())
        {
          v26 = *(v48 + 20);
          v27 = *(v46 + 48);
          outlined init with copy of Date?(&v15[v26], v12, &_s9Coherence22UnknownValuePropertiesVSgMd);
          outlined init with copy of Date?(v49 + v26, &v12[v27], &_s9Coherence22UnknownValuePropertiesVSgMd);
          v28 = *v45;
          if ((*v45)(v12, 1, v53) == 1)
          {
            v29 = v28(&v12[v27], 1, v53);
            v18 = v43;
            if (v29 == 1)
            {
              goto LABEL_22;
            }
          }

          else
          {
            v30 = v47;
            outlined init with copy of Date?(v12, v47, &_s9Coherence22UnknownValuePropertiesVSgMd);
            if (v28(&v12[v27], 1, v53) != 1)
            {
              v22 = &v12[v27];
              v23 = v39;
              v24 = v53;
              (*v37)(v39, v22, v53);
              lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type UnknownValueProperties and conformance UnknownValueProperties, MEMORY[0x1E6995350]);
              v38 = dispatch thunk of static Equatable.== infix(_:_:)();
              v25 = *v42;
              (*v42)(v23, v24);
              v25(v47, v24);
              outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s9Coherence22UnknownValuePropertiesVSgMd);
              v18 = v43;
              v21 = v44;
              if (v38)
              {
                goto LABEL_23;
              }

              goto LABEL_11;
            }

            (*v42)(v30, v53);
            v18 = v43;
          }

          outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s9Coherence22UnknownValuePropertiesVSg_ADtMd);
          v21 = v44;
        }

LABEL_11:
        outlined destroy of Paper(v15, type metadata accessor for Color);
        a2 = (a2 + 1) & v51;
      }

      while (((*(v52 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_19:
  v31 = *v41;
  *(*v41 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = outlined init with take of Shape(v49, *(v31 + 48) + *(v40 + 72) * a2, type metadata accessor for Color);
  v33 = *(v31 + 16);
  v34 = __OFADD__(v33, 1);
  v35 = v33 + 1;
  if (v34)
  {
    __break(1u);
LABEL_22:
    outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s9Coherence22UnknownValuePropertiesVSgMd);
LABEL_23:
    outlined destroy of Paper(v15, type metadata accessor for Color);
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v31 + 16) = v35;
  }

  return result;
}

unint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(unint64_t result, char a2, float a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a2 & 1) != 0)
  {
    goto LABEL_14;
  }

  if (a2)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = result;
      specialized _NativeSet.copy()();
      result = v7;
      goto LABEL_14;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v8 = *v3;
  v9 = 0.0;
  if (a3 != 0.0)
  {
    v9 = a3;
  }

  v10 = MEMORY[0x1DA6CE7E0](*(*v3 + 40), LODWORD(v9), 4);
  v11 = -1 << *(v8 + 32);
  result = v10 & ~v11;
  if ((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v12 = ~v11;
    while (*(*(v8 + 48) + 4 * result) != a3)
    {
      result = (result + 1) & v12;
      if (((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_17;
  }

LABEL_14:
  v13 = *v3;
  *(*v3 + 8 * (result >> 6) + 56) |= 1 << result;
  *(*(v13 + 48) + 4 * result) = a3;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return result;
  }

  __break(1u);
LABEL_17:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
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
  Hasher.init(_seed:)();
  MEMORY[0x1DA6CE810](a1);
  v9 = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = v9 & ~v10;
    type metadata accessor for NSTextAlignment(0);
    a2 = v12;
    while (*(*(v8 + 48) + 8 * a2) != a1)
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
  *(*(v13 + 48) + 8 * a2) = a1;
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

{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1, &_ss11_SetStorageCy8PaperKit20AnyCanvasElementViewCGMd);
  }

  else
  {
    if (v7 > v6)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1, &_ss11_SetStorageCy8PaperKit20AnyCanvasElementViewCGMd);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for AnyCanvasElementView();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1, &_ss11_SetStorageCySo8NSObjectCGMd);
  }

  else
  {
    if (v7 > v6)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1, &_ss11_SetStorageCySo8NSObjectCGMd);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSObject);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1, &_ss11_SetStorageCySo7UIColorCGMd);
  }

  else
  {
    if (v7 > v6)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1, &_ss11_SetStorageCySo7UIColorCGMd);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIColor);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1, &_ss11_SetStorageCySo8PKStrokeCGMd);
  }

  else
  {
    if (v7 > v6)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1, &_ss11_SetStorageCySo8PKStrokeCGMd);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PKStroke);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}
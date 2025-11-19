size_t specialized SizeFittingTextCache.withValue<A>(for:onChange:compute:)(unint64_t a1, void (*a2)(void), uint64_t a3, void (*a4)(uint64_t *__return_ptr, _BYTE *), uint64_t a5)
{
  v84 = a4;
  v7 = v5;
  v83[1] = a5;
  v89 = a3;
  v90 = a2;
  type metadata accessor for SizeFittingTextLayoutComputer.Engine<ResolvedTextHelper, StickyTextSizeFittingLogic>(0, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache.CacheEntry);
  v10 = *(v9 - 8);
  v93 = v9;
  v94 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v83 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = (v83 - v17);
  swift_beginAccess();
  v19 = *(v5 + 40);
  v20 = *(v19 + 16);
  v107 = v7;
  if (v20 > a1)
  {
    swift_beginAccess();
    v22 = *(v7 + 96);
    v21 = *(v7 + 104);
    v96 = v19;
    v23 = v7;
    v25 = *(v7 + 112);
    v24 = *(v7 + 120);
    v26 = *(v7 + 128);
    *&v100 = *(v7 + 136);
    v27 = *(v7 + 144);
    swift_beginAccess();
    v97 = v21;
    v98 = v22;
    v28 = v21;
    v6 = v96;
    v92 = v25;
    v95 = v24;
    outlined copy of Text?(v22, v28, v25, v24);
    v15 = v27;

    v99 = v26;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v23 + 40) = v6;
    if (isUniquelyReferenced_nonNull_native)
    {
      v30 = v97;
      if ((a1 & 0x8000000000000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
LABEL_38:
      v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
      *(v107 + 40) = v6;
      v30 = v97;
      if ((a1 & 0x8000000000000000) == 0)
      {
LABEL_4:
        if (*(v6 + 16) > a1)
        {
          v31 = v95;
          v32 = v6 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * a1;
          v101[0] = v98;
          v101[1] = v30;
          v33 = v92;
          v101[2] = v92;
          v101[3] = v95;
          v101[4] = v99;
          v101[5] = v100;
          v101[6] = v15;
          if (specialized SizeFittingTextCache.CacheEntry.result(for:)(v105, v101))
          {
            v106 = a1;
            StickyTextSizeFittingLogic.onInvalidation(of:)(&v106);
            v90();
          }

          v34 = v85;
          v84(&v106, v105);
          outlined consume of Text?(v98, v30, v33, v31);

          if (!v34)
          {
            v31 = v106;
          }

LABEL_35:
          v81 = v32 + *(v93 + 52);
          v82 = *v81;
          *v81 = *v105;
          *(v81 + 16) = *&v105[16];
          outlined consume of SizeFittingTextCacheValue<StyledTextLayoutEngine>?(v82);
          *(v107 + 40) = v6;
          swift_endAccess();
          return v31;
        }

        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  swift_beginAccess();
  if ((*(v7 + 32) & 1) == 0)
  {
    v87 = v12;
    v88 = a1;
    v86 = v15;
    v91 = v18;
    do
    {
      v35 = *(v7 + 40);
      v36 = *(v35 + 16);
      if (v36 > a1)
      {
        break;
      }

      if (!v36)
      {
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v92 = *(v35 + 16);
      v37 = (*(v94 + 80) + 32) & ~*(v94 + 80);
      v6 = *(v94 + 72);
      outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v35 + v37 + v6 * (v36 - 1), v15, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache.CacheEntry, type metadata accessor for SizeFittingTextLayoutComputer.Engine<ResolvedTextHelper, StickyTextSizeFittingLogic>);
      outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v15, v18, type metadata accessor for ResolvedTextHelper);
      v38 = type metadata accessor for ResolvedTextHelper(0);
      v39 = *(v38 + 64);
      v40 = *(v18 + v39);
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        goto LABEL_37;
      }

      v43 = v38;
      v95 = v6;
      v96 = v37;
      *(v18 + v39) = v42;
      PropertyList.Tracker.reset()();
      outlined consume of Text?(v18[6], v18[7], v18[8], v18[9]);
      *(v18 + 3) = 0u;
      *(v18 + 4) = 0u;
      v44 = *(v43 + 60);
      outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v18 + v44, type metadata accessor for ResolvedTextHelper.NextUpdate);
      *(v18 + v44) = 0;
      type metadata accessor for ResolvedTextHelper.NextUpdate(0);
      swift_storeEnumTagMultiPayload();
      v45 = v93;
      v46 = v18 + *(v93 + 52);
      *v46 = 0u;
      *(v46 + 1) = 0u;
      v47 = *(v45 + 56);
      LOBYTE(v43) = v15[v47];
      outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v15, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache.CacheEntry, type metadata accessor for SizeFittingTextLayoutComputer.Engine<ResolvedTextHelper, StickyTextSizeFittingLogic>);
      *(v18 + v47) = v43;
      v49 = *(v7 + 96);
      v48 = *(v7 + 104);
      v50 = v7;
      v51 = *(v7 + 112);
      v53 = v50[15];
      v52 = v50[16];
      v55 = v50[17];
      v54 = v50[18];
      outlined copy of Text?(v49, v48, v51, v53);
      v97 = v49;
      v98 = v51;
      v102[0] = v49;
      v56 = v48;
      v18 = v91;
      v102[1] = v56;
      v102[2] = v51;
      v102[3] = v53;
      v102[4] = v52;
      v102[5] = v55;
      v102[6] = v54;
      *&v100 = v52;

      v99 = v55;

      if (specialized SizeFittingTextCache.CacheEntry.result(for:)(v105, v102))
      {
        v57 = v107;
        if ((*(v107 + 89) & 1) == 0 && v92 == *(v107 + 56))
        {
          *(v107 + 88) = 0;
          *(v57 + 72) = 0u;
          *(v57 + 56) = 0u;
          *(v57 + 89) = 1;
        }

        v90();
      }

      outlined consume of Text?(v97, v56, v98, v53);

      v58 = *v105;
      v59 = *&v105[24];
      v60 = *(*v105 + 260);
      v100 = *&v105[8];
      outlined consume of SizeFittingTextCacheValue<StyledTextLayoutEngine>?(*v46);
      *v46 = v58;
      *(v46 + 8) = v100;
      *(v46 + 3) = v59;
      if ((v60 & 0x100) == 0)
      {
        outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v18, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache.CacheEntry, type metadata accessor for SizeFittingTextLayoutComputer.Engine<ResolvedTextHelper, StickyTextSizeFittingLogic>);
        v7 = v107;
        *(v107 + 32) = 1;
        break;
      }

      v61 = v87;
      outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v18, v87, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache.CacheEntry, type metadata accessor for SizeFittingTextLayoutComputer.Engine<ResolvedTextHelper, StickyTextSizeFittingLogic>);
      v7 = v107;
      swift_beginAccess();
      v62 = *(v7 + 40);
      v63 = swift_isUniquelyReferenced_nonNull_native();
      *(v7 + 40) = v62;
      if ((v63 & 1) == 0)
      {
        v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v62[2] + 1, 1, v62);
        *(v7 + 40) = v62;
      }

      v15 = v86;
      v6 = v62[2];
      v64 = v62[3];
      if (v6 >= v64 >> 1)
      {
        v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v64 > 1, v6 + 1, 1, v62);
      }

      v62[2] = v6 + 1;
      outlined init with take of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v61, v62 + v96 + v6 * v95);
      *(v7 + 40) = v62;
      swift_endAccess();
      outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v18, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache.CacheEntry, type metadata accessor for SizeFittingTextLayoutComputer.Engine<ResolvedTextHelper, StickyTextSizeFittingLogic>);
      a1 = v88;
    }

    while ((*(v7 + 32) & 1) == 0);
  }

  v95 = *(v7 + 40);
  v96 = *(v95 + 16);
  swift_beginAccess();
  v65 = *(v7 + 96);
  v66 = *(v7 + 104);
  v67 = v7;
  v69 = *(v7 + 112);
  v68 = *(v7 + 120);
  v70 = *(v7 + 128);
  v71 = *(v7 + 136);
  v72 = *(v7 + 144);
  swift_beginAccess();
  v97 = v66;
  v98 = v65;
  v73 = v66;
  v6 = v95;
  v91 = v69;
  v92 = v68;
  outlined copy of Text?(v65, v73, v69, v68);
  v15 = v72;

  *&v100 = v70;

  v99 = v71;

  result = swift_isUniquelyReferenced_nonNull_native();
  *(v67 + 40) = v6;
  if ((result & 1) == 0)
  {
LABEL_41:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
    v6 = result;
    *(v107 + 40) = result;
    v75 = v96;
    v76 = v97;
    if (!v96)
    {
      goto LABEL_42;
    }

    goto LABEL_30;
  }

  v75 = v96;
  v76 = v97;
  if (!v96)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

LABEL_30:
  if (v75 <= *(v6 + 16))
  {
    v77 = v15;
    v78 = v75 - 1;
    v32 = v6 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * (v75 - 1);
    v104[0] = v98;
    v104[1] = v76;
    v79 = v91;
    v31 = v92;
    v104[2] = v91;
    v104[3] = v92;
    v104[4] = v100;
    v104[5] = v99;
    v104[6] = v77;
    if (specialized SizeFittingTextCache.CacheEntry.result(for:)(v105, v104))
    {
      v103[0] = v78;
      StickyTextSizeFittingLogic.onInvalidation(of:)(v103);
      v90();
    }

    v80 = v85;
    v84(v103, v105);
    outlined consume of Text?(v98, v76, v79, v31);

    if (!v80)
    {
      v31 = v103[0];
    }

    goto LABEL_35;
  }

LABEL_43:
  __break(1u);
  return result;
}

uint64_t specialized SizeFittingTextCache.withValue<A>(for:onChange:compute:)(unint64_t a1, void (*a2)(uint64_t), uint64_t a3, void (*a4)(uint64_t *__return_ptr, __int128 *), uint64_t a5)
{
  v7 = v6;
  v8 = v5;
  v79 = a3;
  v80 = a2;
  v12 = type metadata accessor for ResolvableStringResolutionContext(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v77 = v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v75 = v72 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v72 - v17;
  swift_beginAccess();
  v19 = v5[5];
  v20 = *(v19 + 16);
  v78 = a1;
  v74 = v6;
  v73 = a4;
  v72[1] = a5;
  if (v20 > a1)
  {
    v5 = *(*v5 + 144);
    swift_beginAccess();
    outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v5 + v8, v18, type metadata accessor for ResolvableStringResolutionContext);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8[5] = v19;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((a1 & 0x8000000000000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
LABEL_45:
      v19 = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
      v8[5] = v19;
      if ((a1 & 0x8000000000000000) == 0)
      {
LABEL_4:
        if (*(v19 + 16) > a1)
        {
          v22 = v19 + 48 * a1;
          v23 = *(v22 + 40);
          if (v23 && (*(v22 + 72) & 1) == 0)
          {
            v28 = *(v22 + 56);
            v50 = *(v22 + 64);
            v26 = *(v22 + 48);

            v51 = v50;
            v31 = 0;
            v24 = v23;
            v30 = v51;
          }

          else
          {
            v24 = DynamicTextView.DynamicTextHelper.value(for:)(v18);
            v26 = v25;
            v28 = v27;
            v30 = v29;
            v23 = *(v22 + 40);
            v31 = 1;
          }

          outlined consume of SizeFittingTextCacheValue<StyledTextLayoutEngine>?(v23);
          *(v22 + 40) = v24;
          *(v22 + 48) = v26;
          *(v22 + 56) = v28;
          *(v22 + 64) = v30;
          *(v22 + 72) = 0;
          *&v81 = v24;
          *(&v81 + 1) = v26;
          *&v82 = v28;
          *(&v82 + 1) = v30;
          if (v31)
          {
            v83[0] = v78;
            StickyTextSizeFittingLogic.onInvalidation(of:)(v83);

            v80(v52);
          }

          else
          {
          }

          v53 = v74;
          v73(v83, &v81);
          if (!v53)
          {
            v26 = v83[0];
          }

          outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v18, type metadata accessor for ResolvableStringResolutionContext);
          v54 = *(v22 + 40);
          *(v22 + 40) = v81;
          *(v22 + 56) = v82;
          outlined consume of SizeFittingTextCacheValue<StyledTextLayoutEngine>?(v54);
          v8[5] = v19;
LABEL_43:
          swift_endAccess();
          return v26;
        }

        goto LABEL_47;
      }
    }

    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v76 = *(*v5 + 144);
  swift_beginAccess();
  if ((v5[4] & 1) == 0)
  {
    v7 = 48;
    do
    {
      v32 = v8[5];
      v33 = *(v32 + 16);
      if (v33 > a1)
      {
        break;
      }

      if (!v33)
      {
        __break(1u);
        goto LABEL_45;
      }

      v34 = v32 + 48 * v33;
      v35 = *(v34 - 16);
      v36 = *(v34 - 8);

      outlined copy of SizeFittingTextCacheValue<StyledTextLayoutEngine>?(v36);
      v18 = DynamicTextView.DynamicTextHelper.narrowerVariant.getter(v35);

      outlined consume of SizeFittingTextCacheValue<StyledTextLayoutEngine>?(v36);
      v83[3] = v18;
      v37 = v77;
      outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v8 + v76, v77, type metadata accessor for ResolvableStringResolutionContext);
      v19 = DynamicTextView.DynamicTextHelper.value(for:)(v37);
      v39 = v38;
      v41 = v40;
      v43 = v42;
      if ((*(v8 + 89) & 1) == 0 && v33 == v8[7])
      {
        *(v8 + 88) = 0;
        *(v8 + 9) = 0u;
        *(v8 + 7) = 0u;
        *(v8 + 89) = 1;
      }

      v80(v44);
      outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v37, type metadata accessor for ResolvableStringResolutionContext);
      v45 = *(v19 + 260);

      if ((v45 & 0x100) == 0)
      {

        *(v8 + 32) = 1;
        break;
      }

      swift_beginAccess();
      v5 = v8[5];

      v46 = swift_isUniquelyReferenced_nonNull_native();
      v8[5] = v5;
      if ((v46 & 1) == 0)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
        v8[5] = v5;
      }

      v48 = v5[2];
      v47 = v5[3];
      if (v48 >= v47 >> 1)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, v5);
      }

      v5[2] = v48 + 1;
      v49 = &v5[6 * v48];
      v7 = 48;
      v49[4] = v18;
      v49[5] = v19;
      v49[6] = v39;
      v49[7] = v41;
      v49[8] = v43;
      *(v49 + 72) = 0;
      v8[5] = v5;
      swift_endAccess();

      a1 = v78;
    }

    while ((v8[4] & 1) == 0);
  }

  v7 = v8[5];
  v5 = *(v7 + 16);
  v55 = v76;
  swift_beginAccess();
  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v8 + v55, v75, type metadata accessor for ResolvableStringResolutionContext);
  swift_beginAccess();
  result = swift_isUniquelyReferenced_nonNull_native();
  v8[5] = v7;
  if ((result & 1) == 0)
  {
LABEL_48:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
    v7 = result;
    v8[5] = result;
    if (!v5)
    {
      goto LABEL_49;
    }

    goto LABEL_32;
  }

  if (!v5)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

LABEL_32:
  if (v5 <= *(v7 + 16))
  {
    v57 = v5 - 1;
    v58 = v7 + 48 * (v5 - 1);
    v59 = *(v58 + 40);
    if (v59 && (*(v58 + 72) & 1) == 0)
    {
      v63 = *(v58 + 56);
      v67 = *(v58 + 64);
      v61 = *(v58 + 48);

      v68 = v67;
      v66 = 0;
      v26 = v59;
      v65 = v68;
    }

    else
    {
      v26 = DynamicTextView.DynamicTextHelper.value(for:)(v75);
      v61 = v60;
      v63 = v62;
      v65 = v64;
      v59 = *(v58 + 40);
      v66 = 1;
    }

    outlined consume of SizeFittingTextCacheValue<StyledTextLayoutEngine>?(v59);
    *(v58 + 40) = v26;
    *(v58 + 48) = v61;
    *(v58 + 56) = v63;
    *(v58 + 64) = v65;
    *(v58 + 72) = 0;
    *&v81 = v26;
    *(&v81 + 1) = v61;
    *&v82 = v63;
    *(&v82 + 1) = v65;
    if (v66)
    {
      v84 = v57;
      StickyTextSizeFittingLogic.onInvalidation(of:)(&v84);

      v80(v69);
    }

    else
    {
    }

    v70 = v74;
    v73(&v84, &v81);
    if (!v70)
    {
      v26 = v84;
    }

    outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v75, type metadata accessor for ResolvableStringResolutionContext);
    v71 = *(v58 + 40);
    *(v58 + 40) = v81;
    *(v58 + 56) = v82;
    outlined consume of SizeFittingTextCacheValue<StyledTextLayoutEngine>?(v71);
    v8[5] = v7;
    goto LABEL_43;
  }

LABEL_50:
  __break(1u);
  return result;
}

uint64_t specialized SizeFittingTextCache.withValue<A>(for:onChange:compute:)(unint64_t a1, void (*a2)(uint64_t), uint64_t a3, void (*a4)(char **__return_ptr, __int128 *), uint64_t a5)
{
  v7 = v6;
  v8 = v5;
  v79 = a3;
  v80 = a2;
  v12 = type metadata accessor for ResolvableStringResolutionContext(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v77 = v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v75 = v72 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v72 - v17;
  swift_beginAccess();
  v19 = v5[5];
  v20 = *(v19 + 16);
  v78 = a1;
  v74 = v6;
  v73 = a4;
  v72[1] = a5;
  if (v20 > a1)
  {
    v5 = *(*v5 + 144);
    swift_beginAccess();
    outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v5 + v8, v18, type metadata accessor for ResolvableStringResolutionContext);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8[5] = v19;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((a1 & 0x8000000000000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
LABEL_45:
      v19 = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
      v8[5] = v19;
      if ((a1 & 0x8000000000000000) == 0)
      {
LABEL_4:
        if (*(v19 + 16) > a1)
        {
          v22 = v19 + 48 * a1;
          v23 = *(v22 + 40);
          if (v23 && (*(v22 + 72) & 1) == 0)
          {
            v28 = *(v22 + 56);
            v50 = *(v22 + 64);
            v26 = *(v22 + 48);

            v51 = v50;
            v31 = 0;
            v24 = v23;
            v30 = v51;
          }

          else
          {
            v24 = DynamicTextView.DynamicTextHelper.value(for:)(v18);
            v26 = v25;
            v28 = v27;
            v30 = v29;
            v23 = *(v22 + 40);
            v31 = 1;
          }

          outlined consume of SizeFittingTextCacheValue<StyledTextLayoutEngine>?(v23);
          *(v22 + 40) = v24;
          *(v22 + 48) = v26;
          *(v22 + 56) = v28;
          *(v22 + 64) = v30;
          *(v22 + 72) = 0;
          *&v81 = v24;
          *(&v81 + 1) = v26;
          *&v82 = v28;
          *(&v82 + 1) = v30;
          if (v31)
          {
            v83[0] = v78;
            StickyTextSizeFittingLogic.onInvalidation(of:)(v83);

            v80(v52);
          }

          else
          {
          }

          v53 = v74;
          v73(v83, &v81);
          if (!v53)
          {
            LOBYTE(v26) = v83[0];
          }

          outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v18, type metadata accessor for ResolvableStringResolutionContext);
          v54 = *(v22 + 40);
          *(v22 + 40) = v81;
          *(v22 + 56) = v82;
          outlined consume of SizeFittingTextCacheValue<StyledTextLayoutEngine>?(v54);
          v8[5] = v19;
LABEL_43:
          swift_endAccess();
          return v26 & 1;
        }

        goto LABEL_47;
      }
    }

    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v76 = *(*v5 + 144);
  swift_beginAccess();
  if ((v5[4] & 1) == 0)
  {
    v7 = 48;
    do
    {
      v32 = v8[5];
      v33 = *(v32 + 16);
      if (v33 > a1)
      {
        break;
      }

      if (!v33)
      {
        __break(1u);
        goto LABEL_45;
      }

      v34 = v32 + 48 * v33;
      v35 = *(v34 - 16);
      v36 = *(v34 - 8);

      outlined copy of SizeFittingTextCacheValue<StyledTextLayoutEngine>?(v36);
      v18 = DynamicTextView.DynamicTextHelper.narrowerVariant.getter(v35);

      outlined consume of SizeFittingTextCacheValue<StyledTextLayoutEngine>?(v36);
      v83[3] = v18;
      v37 = v77;
      outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v8 + v76, v77, type metadata accessor for ResolvableStringResolutionContext);
      v19 = DynamicTextView.DynamicTextHelper.value(for:)(v37);
      v39 = v38;
      v41 = v40;
      v43 = v42;
      if ((*(v8 + 89) & 1) == 0 && v33 == v8[7])
      {
        *(v8 + 88) = 0;
        *(v8 + 9) = 0u;
        *(v8 + 7) = 0u;
        *(v8 + 89) = 1;
      }

      v80(v44);
      outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v37, type metadata accessor for ResolvableStringResolutionContext);
      v45 = *(v19 + 260);

      if ((v45 & 0x100) == 0)
      {

        *(v8 + 32) = 1;
        break;
      }

      swift_beginAccess();
      v5 = v8[5];

      v46 = swift_isUniquelyReferenced_nonNull_native();
      v8[5] = v5;
      if ((v46 & 1) == 0)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
        v8[5] = v5;
      }

      v48 = v5[2];
      v47 = v5[3];
      if (v48 >= v47 >> 1)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, v5);
      }

      v5[2] = v48 + 1;
      v49 = &v5[6 * v48];
      v7 = 48;
      v49[4] = v18;
      v49[5] = v19;
      v49[6] = v39;
      v49[7] = v41;
      v49[8] = v43;
      *(v49 + 72) = 0;
      v8[5] = v5;
      swift_endAccess();

      a1 = v78;
    }

    while ((v8[4] & 1) == 0);
  }

  v7 = v8[5];
  v5 = *(v7 + 16);
  v55 = v76;
  swift_beginAccess();
  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v8 + v55, v75, type metadata accessor for ResolvableStringResolutionContext);
  swift_beginAccess();
  result = swift_isUniquelyReferenced_nonNull_native();
  v8[5] = v7;
  if ((result & 1) == 0)
  {
LABEL_48:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
    v7 = result;
    v8[5] = result;
    if (!v5)
    {
      goto LABEL_49;
    }

    goto LABEL_32;
  }

  if (!v5)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

LABEL_32:
  if (v5 <= *(v7 + 16))
  {
    v57 = v5 - 1;
    v58 = v7 + 48 * (v5 - 1);
    v59 = *(v58 + 40);
    if (v59 && (*(v58 + 72) & 1) == 0)
    {
      v63 = *(v58 + 56);
      v67 = *(v58 + 64);
      v61 = *(v58 + 48);

      v68 = v67;
      v66 = 0;
      v26 = v59;
      v65 = v68;
    }

    else
    {
      v26 = DynamicTextView.DynamicTextHelper.value(for:)(v75);
      v61 = v60;
      v63 = v62;
      v65 = v64;
      v59 = *(v58 + 40);
      v66 = 1;
    }

    outlined consume of SizeFittingTextCacheValue<StyledTextLayoutEngine>?(v59);
    *(v58 + 40) = v26;
    *(v58 + 48) = v61;
    *(v58 + 56) = v63;
    *(v58 + 64) = v65;
    *(v58 + 72) = 0;
    *&v81 = v26;
    *(&v81 + 1) = v61;
    *&v82 = v63;
    *(&v82 + 1) = v65;
    if (v66)
    {
      v84 = v57;
      StickyTextSizeFittingLogic.onInvalidation(of:)(&v84);

      v80(v69);
    }

    else
    {
    }

    v70 = v74;
    v73(&v84, &v81);
    if (!v70)
    {
      LOBYTE(v26) = v84;
    }

    outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v75, type metadata accessor for ResolvableStringResolutionContext);
    v71 = *(v58 + 40);
    *(v58 + 40) = v81;
    *(v58 + 56) = v82;
    outlined consume of SizeFittingTextCacheValue<StyledTextLayoutEngine>?(v71);
    v8[5] = v7;
    goto LABEL_43;
  }

LABEL_50:
  __break(1u);
  return result;
}

unint64_t specialized SizeFittingTextLayoutComputer.Engine.debugContentDescription.getter(uint64_t a1, uint64_t a2)
{
  LOBYTE(v11) = 1;
  v10 = 1;
  specialized SizeFittingTextCache.suggestedVariant(for:)(0, 1, 0, 1, &v8);
  if (v9)
  {
    swift_beginAccess();

    LOBYTE(v11) = 1;
    v10 = 1;
    specialized ClosestFitCache.callAsFunction(for:makeValue:)(0, 1, 0.0, 1, (a2 + 16), a2, &v11, 0, 1);
    swift_endAccess();
    v3 = v11;
  }

  else
  {
    v3 = v8;
    v11 = v8;
  }

  v4 = specialized SizeFittingTextCache.withValue<A>(for:onChange:compute:)(v3, _ViewInputs.base.modify, 0, specialized closure #1 in SizeFittingTextLayoutComputer.Engine.debugContentDescription.getter, 0);
  v6 = v5;
  v8 = 0;
  v9 = 0xE000000000000000;
  _StringGuts.grow(_:)(33);

  v8 = 0xD00000000000001ELL;
  v9 = 0x800000018DD75B20;
  MEMORY[0x193ABEDD0](v4, v6);

  MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  return v8;
}

uint64_t specialized closure #1 in implicit closure #2 in implicit closure #1 in ChildEnvironment.updateValue()()
{
  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for WritableKeyPath<EnvironmentValues, RedactionReasons>, &type metadata for EnvironmentValues, &type metadata for RedactionReasons, MEMORY[0x1E69E6CE0]);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    return AGCompareValues() ^ 1;
  }

  else
  {
    return 1;
  }
}

{
  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for WritableKeyPath<EnvironmentValues, Bool>, &type metadata for EnvironmentValues, MEMORY[0x1E69E6370], MEMORY[0x1E69E6CE0]);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    return AGCompareValues() ^ 1;
  }

  else
  {
    return 1;
  }
}

{
  type metadata accessor for WritableKeyPath<EnvironmentValues, Font?>();
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    return 1;
  }

  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for Font?, &type metadata for Font, MEMORY[0x1E69E6720]);
  return AGCompareValues() ^ 1;
}

BOOL specialized ResettableGestureRule.resetIfNeeded()()
{
  v1 = *(v0 + 40);
  if (v1 == *AGGraphGetValue())
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for GesturePhase<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for GesturePhase);
    OutputValue = AGGraphGetOutputValue();
    v7 = 1;
    if (OutputValue)
    {
      v3 = OutputValue[2].u8[1];
      if (v3 == 2 || v3 == 3 && ((v4 = vorrq_s8(*OutputValue, OutputValue[1]), v5 = vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)), !OutputValue[2].i8[0]) ? (v6 = *&v5 == 0) : (v6 = 0), v6))
      {
        v7 = 0;
      }
    }
  }

  else
  {
    *(v0 + 36) = 0;
    *(v0 + 24) = 0;
    v7 = 1;
    *(v0 + 32) = 1;
  }

  *(v0 + 40) = *AGGraphGetValue();
  return v7;
}

{
  v1 = *(v0 + 48);
  if (v1 == *AGGraphGetValue())
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for GesturePhase<CGFloat>, MEMORY[0x1E69E7DE0], type metadata accessor for GesturePhase);
    OutputValue = AGGraphGetOutputValue();
    v5 = 1;
    if (OutputValue)
    {
      v3 = *(OutputValue + 9);
      if (v3 == 2 || v3 == 3 && (!*(OutputValue + 8) ? (v4 = *OutputValue == 0) : (v4 = 0), v4))
      {
        v5 = 0;
      }
    }
  }

  else
  {
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    v5 = 1;
    *(v0 + 32) = 1;
    *(v0 + 40) = 0;
  }

  *(v0 + 48) = *AGGraphGetValue();
  return v5;
}

{
  v1 = *(v0 + 16);
  v7 = 1;
  if (v1 == *AGGraphGetValue())
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for GesturePhase<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for GesturePhase);
    OutputValue = AGGraphGetOutputValue();
    if (OutputValue)
    {
      v3 = OutputValue[2].u8[1];
      if (v3 == 2 || v3 == 3 && ((v4 = vorrq_s8(*OutputValue, OutputValue[1]), v5 = vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)), !OutputValue[2].i8[0]) ? (v6 = *&v5 == 0) : (v6 = 0), v6))
      {
        v7 = 0;
      }
    }
  }

  *(v0 + 16) = *AGGraphGetValue();
  return v7;
}

{
  v1 = *(v0 + 36);
  if (v1 == *AGGraphGetValue())
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for GesturePhase<Double>, MEMORY[0x1E69E63B0], type metadata accessor for GesturePhase);
    OutputValue = AGGraphGetOutputValue();
    v5 = 1;
    if (OutputValue)
    {
      v3 = *(OutputValue + 9);
      if (v3 == 2 || v3 == 3 && (!*(OutputValue + 8) ? (v4 = *OutputValue == 0) : (v4 = 0), v4))
      {
        v5 = 0;
      }
    }
  }

  else
  {
    *(v0 + 24) = 0;
    v5 = 1;
    *(v0 + 32) = 1;
  }

  *(v0 + 36) = *AGGraphGetValue();
  return v5;
}

{
  v1 = *(v0 + 12);
  v7 = 1;
  if (v1 == *AGGraphGetValue())
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for GesturePhase<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for GesturePhase);
    OutputValue = AGGraphGetOutputValue();
    if (OutputValue)
    {
      v3 = OutputValue[2].u8[1];
      if (v3 == 2 || v3 == 3 && ((v4 = vorrq_s8(*OutputValue, OutputValue[1]), v5 = vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)), !OutputValue[2].i8[0]) ? (v6 = *&v5 == 0) : (v6 = 0), v6))
      {
        v7 = 0;
      }
    }
  }

  *(v0 + 12) = *AGGraphGetValue();
  return v7;
}

uint64_t specialized ResettableGestureRule.resetIfNeeded()()
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 40);
  if (v1 != *AGGraphGetValue())
  {
    *(v0 + 24) = 0;
    *(v0 + 32) = 0;
    v7 = 1;
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for EventListenerPhase<SpatialEvent>.Value, &type metadata for SpatialEvent, &protocol witness table for SpatialEvent, type metadata accessor for EventListenerPhase.Value);
    AGGraphSetOutputValue();
    v12[0] = 0;
    v12[1] = 0;
    v12[2] = 1;
    v13 = 0u;
    v14 = 0u;
    memset(v15, 0, sizeof(v15));
    v16 = v10;
    v17 = v11;
    v18 = 0;
    v19 = 0;
    v20 = 5;
    outlined destroy of EventListenerPhase<SpatialEvent>.Value(v12);
    Value = AGGraphGetValue();
LABEL_12:
    *(v0 + 40) = *Value;
    return v7;
  }

  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for EventListenerPhase<SpatialEvent>.Value, &type metadata for SpatialEvent, &protocol witness table for SpatialEvent, type metadata accessor for EventListenerPhase.Value);
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v3 = OutputValue[5].u8[1];
    if (v3 == 2 || v3 == 3 && ((v4 = vorrq_s8(vorrq_s8(OutputValue[1], OutputValue[3]), vorrq_s8(OutputValue[2], OutputValue[4])), v5 = *&vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)) | OutputValue->i64[1] | OutputValue->i64[0], !OutputValue[5].i8[0]) ? (v6 = v5 == 0) : (v6 = 0), v6))
    {
      Value = AGGraphGetValue();
      v7 = 0;
      goto LABEL_12;
    }
  }

  *(v0 + 40) = *AGGraphGetValue();
  return 1;
}

{
  v19 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 40);
  if (v1 == *AGGraphGetValue())
  {
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for EventListenerPhase<TappableEvent>.Value, &type metadata for TappableEvent, &protocol witness table for TappableEvent, type metadata accessor for EventListenerPhase.Value);
    OutputValue = AGGraphGetOutputValue();
    if (OutputValue)
    {
      v3 = OutputValue[2].u8[1];
      if (v3 == 2 || v3 == 3 && ((v4 = vorrq_s8(*OutputValue, OutputValue[1]), v5 = vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)), !OutputValue[2].i8[0]) ? (v6 = *&v5 == 0) : (v6 = 0), v6))
      {
        Value = AGGraphGetValue();
        result = 0;
        *(v0 + 40) = *Value;
        return result;
      }
    }
  }

  else
  {
    *(v0 + 24) = 0;
    *(v0 + 32) = 0;
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for EventListenerPhase<TappableEvent>.Value, &type metadata for TappableEvent, &protocol witness table for TappableEvent, type metadata accessor for EventListenerPhase.Value);
    AGGraphSetOutputValue();
    v11[0] = 0;
    v11[1] = 0;
    v12 = xmmword_18DD85500;
    v13 = 0;
    v14 = v9;
    v15 = v10;
    v16 = 0;
    v17 = 0;
    v18 = 5;
    outlined destroy of EventListenerPhase<TappableEvent>.Value(v11);
  }

  *(v0 + 40) = *AGGraphGetValue();
  return 1;
}

uint64_t specialized LazyHVStack<>.lengthAndSpacing(subviews:predecessors:minorGeometry:)(uint64_t result, uint64_t a2, double a3)
{
  if (*(result + 16))
  {
    result = outlined init with copy of _LazyLayout_Subview(result + 32, v17);
    if (!a2)
    {
      memset(v16, 0, sizeof(v16));
      goto LABEL_6;
    }

    if (*(a2 + 16))
    {
      outlined init with copy of _LazyLayout_Subview(a2 + 32, v16);
LABEL_6:
      v5 = v17[2];
      v6 = *(LazyLayoutViewCache.item(data:)(v18) + 44);

      v7 = *MEMORY[0x1E698D3F8];
      v13 = v5;
      v14 = v6;
      v15 = v7;
      v9 = 0;
      v10 = 1;
      v11 = a3;
      v12 = 0;
      v8 = LayoutProxy.lengthThatFits(_:in:)(&v9, 0);
      MEMORY[0x1EEE9AC00](v8);
      _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI19_LazyLayout_SubviewV_s5NeverO12CoreGraphics7CGFloatVTg5(closure #1 in _LazyLayout_Subview.lengthAndSpacing(size:axis:predecessor:uniformSpacing:)partial apply);
      outlined destroy of GlassEntryView?(v16, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
      return outlined destroy of _LazyLayout_Subview(v17);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  if (*(result + 16))
  {
    result = outlined init with copy of _LazyLayout_Subview(result + 32, v17);
    if (!a2)
    {
      memset(v16, 0, sizeof(v16));
      goto LABEL_6;
    }

    if (*(a2 + 16))
    {
      outlined init with copy of _LazyLayout_Subview(a2 + 32, v16);
LABEL_6:
      v5 = v17[2];
      v6 = *(LazyLayoutViewCache.item(data:)(v18) + 44);

      v7 = *MEMORY[0x1E698D3F8];
      v13 = v5;
      v14 = v6;
      v15 = v7;
      v9 = a3;
      v10 = 0;
      v11 = 0;
      v12 = 1;
      v8 = LayoutProxy.lengthThatFits(_:in:)(&v9, 1);
      MEMORY[0x1EEE9AC00](v8);
      _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI19_LazyLayout_SubviewV_s5NeverO12CoreGraphics7CGFloatVTg5(partial apply for closure #1 in _LazyLayout_Subview.lengthAndSpacing(size:axis:predecessor:uniformSpacing:));
      outlined destroy of GlassEntryView?(v16, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
      return outlined destroy of _LazyLayout_Subview(v17);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized LazyStack<>.place(subviews:context:cache:in:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v142 = a4;
  v144 = a7;
  v145 = a7 & 0xFFFFFFFF00000000;
  v141 = type metadata accessor for IndexSet();
  v140 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v139 = &v132 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for StackPlacement<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for StackPlacement);
  v138 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v132 - v16;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for (StackPlacement<LazyHStackLayout>, PlacementProperties<LazyHStackLayout>)?, type metadata accessor for (StackPlacement<LazyHStackLayout>, PlacementProperties<LazyHStackLayout>), MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v132 - v19;
  type metadata accessor for (StackPlacement<LazyHStackLayout>, PlacementProperties<LazyHStackLayout>)();
  v22 = v21;
  v23 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v132 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v143 = &v132 - v27;
  v28 = *(a2 + 280);
  v29 = *(a2 + 288);
  v30 = *(a2 + 296);
  v31 = *(a2 + 104);
  v32 = *(a2 + 136);
  v152 = *(a2 + 120);
  v153 = v32;
  v154 = *(a2 + 152);
  v33 = *(a2 + 72);
  v148 = *(a2 + 56);
  v34 = *(a2 + 88);
  v151 = v31;
  v149 = v33;
  v150 = v34;
  if (v30)
  {
    v137 = a5;
    ScrollGeometry.outsetForAX(limit:)(__PAIR128__(v29, v28));
    a5 = v137;
  }

  v36 = *(&v153 + 1);
  v35 = *&v153;
  v38 = *(&v154 + 1);
  v37 = *&v154;
  LOBYTE(v148) = v144 & 1;
  specialized LazyStack<>.resolvedPlacerProperties(subviews:context:cache:)(a1, a2, a3, a5, a6, v145 | v144 & 1, v20);
  if ((*(v23 + 48))(v20, 1, v22) == 1)
  {
    *&result = COERCE_DOUBLE(outlined destroy of ObservationTracking._AccessList?(v20, &lazy cache variable for type metadata for (StackPlacement<LazyHStackLayout>, PlacementProperties<LazyHStackLayout>)?, type metadata accessor for (StackPlacement<LazyHStackLayout>, PlacementProperties<LazyHStackLayout>), MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?));
    return result;
  }

  v40 = v143;
  outlined init with take of (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>)(v20, v143, type metadata accessor for (StackPlacement<LazyHStackLayout>, PlacementProperties<LazyHStackLayout>));
  v41 = v22;
  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v40, v25, type metadata accessor for (StackPlacement<LazyHStackLayout>, PlacementProperties<LazyHStackLayout>));
  outlined init with take of StackPlacement<LazyHStackLayout>(v25, v17, &lazy cache variable for type metadata for StackPlacement<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout);
  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v40, v25, type metadata accessor for (StackPlacement<LazyHStackLayout>, PlacementProperties<LazyHStackLayout>));
  v42 = *(v25 + *(v22 + 48));
  outlined destroy of StackPlacement<LazyHStackLayout>(v25);
  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v40, v25, type metadata accessor for (StackPlacement<LazyHStackLayout>, PlacementProperties<LazyHStackLayout>));
  v43 = v25 + *(v22 + 48);
  v44 = *(v43 + 24);
  v45 = *(v43 + 32);
  outlined destroy of StackPlacement<LazyHStackLayout>(v25);
  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v40, v25, type metadata accessor for (StackPlacement<LazyHStackLayout>, PlacementProperties<LazyHStackLayout>));
  v46 = *(v25 + *(v22 + 48) + 40);
  outlined destroy of StackPlacement<LazyHStackLayout>(v25);
  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v40, v25, type metadata accessor for (StackPlacement<LazyHStackLayout>, PlacementProperties<LazyHStackLayout>));
  v47 = *(v25 + *(v22 + 48) + 41);
  outlined destroy of StackPlacement<LazyHStackLayout>(v25);
  v144 = v41;
  v48 = (v40 + *(v41 + 48));
  v49 = v48[1];
  v148 = *v48;
  v50 = v48[2];
  v151 = v48[3];
  v149 = v49;
  v150 = v50;
  v145 = a1;
  v51 = _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE23resolveIndexAndPosition33_973C9973BC16DEAF0CF3109FFDE313218subviews7context5cache6placer10propertiesSi5index_12CoreGraphics7CGFloatV8positiontSgAA01_C15Layout_SubviewsV_AA01_cY17_PlacementContextVAFzAA0D9PlacementAJLLVyxGzAA19PlacementPropertiesAJLLVyxGtFAA0c6HStackY0V_Tt4B5(a1, a2, a3, v17, &v148);
  if (v53)
  {
    goto LABEL_118;
  }

  v54 = v51;
  v134 = v47;
  v136 = a3;
  v55 = v52;
  specialized StackPlacement.log(_:)(v52, *(v17 + 7), *(v17 + 8), v17, v51);
  v56 = (v17 + 136);
  *(v17 + 12) = *&v54;
  v17[104] = 0;
  *(v17 + 14) = v55;
  *(v17 + 15) = 0;
  v17[128] = 1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v58 = *(v17 + 17);
  if (isUniquelyReferenced_nonNull_native)
  {
    v59 = *(v58 + 2);
    v60 = swift_isUniquelyReferenced_nonNull_native();
    *v56 = v58;
    if ((v60 & 1) == 0)
    {
      v58 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v59, 1, v58);
      *v56 = v58;
    }

    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, v59, 0);
  }

  else
  {
    v61 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI19_LazyLayout_SubviewV_Tt1g5(0, *(v58 + 3) >> 1);

    v58 = v61;
  }

  *(v17 + 17) = v58;

  *(v17 + 18) = 0;
  outlined destroy of GlassEntryView?((v17 + 152), &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
  *(v17 + 152) = 0u;
  *(v17 + 168) = 0u;
  *(v17 + 184) = 0u;
  *(v17 + 200) = 0u;
  *(v17 + 216) = 0u;
  *(v17 + 232) = 0u;
  *(v17 + 248) = 0u;
  v62 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *(v17 + 33);
  v137 = v42;
  v135 = v46;
  if (v62)
  {
    v64 = *(v63 + 2);
    v65 = swift_isUniquelyReferenced_nonNull_native();
    *(v17 + 33) = v63;
    if ((v65 & 1) == 0)
    {
      v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v64, 1, v63);
      *(v17 + 33) = v63;
    }

    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, v64, 0);
  }

  else
  {
    v66 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI25_LazyLayout_PlacedSubviewV_Tt1g5(0, *(v63 + 3) >> 1);

    v63 = v66;
  }

  *(v17 + 33) = v63;
  *(v17 + 17) = xmmword_18DDAB4E0;
  *(v17 + 18) = xmmword_18DDAB4F0;
  *(v17 + 19) = xmmword_18DDAB4F0;
  v17[320] = 0;
  v67 = &v17[*(v138 + 104)];
  *&v68 = MEMORY[0x1E69E7CC0];
  v69 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

  *v67 = v69;
  v70 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v68);

  v67[1] = v70;
  v147 = *&v68;
  lazy protocol witness table accessor for type TouchEvent and conformance TouchEvent(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50]);
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for [Int], MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [Int] and conformance [A]();
  v71 = v139;
  v72 = v141;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v73 = type metadata accessor for EstimationCache();
  v74 = *(v73 + 24);
  v75 = (*(v140 + 40))(v67 + v74, v71, v72);
  v76 = *(v17 + 4);
  v77 = __OFSUB__(v54, v76);
  v78 = v54 - v76;
  if (v78 < 0 == v77)
  {
    v17[104] = 1;
    if (v77)
    {
      __break(1u);
      goto LABEL_127;
    }

    *(v17 + 12) = v78;
    v54 = v78;
  }

  v140 = v73;
  v141 = v74;
  v79 = 2 * v137;
  v147 = *&v54;
  v146 = 2 * v137;
  MEMORY[0x1EEE9AC00](v75);
  *(&v132 - 2) = v17;
  v80 = _LazyLayout_Subviews.applyNodes(from:style:to:)(&v147, &v146, closure #1 in StackPlacement.place(subviews:from:position:stopping:style:)specialized partial apply, (&v132 - 4));
  specialized StackPlacement.flushMinorGroup()();
  v81 = (v80 & 1) != 0 && vabdd_f64(*(v17 + 14), *(v17 + 37)) < 0.01;
  v82 = v142;
  if (AGGraphHasDeadlinePassed())
  {
    AGGraphCancelUpdate();
    goto LABEL_24;
  }

  if (v17[320] == 1)
  {
LABEL_24:
    outlined destroy of StackPlacement<LazyHStackLayout>(v17);
    *&result = COERCE_DOUBLE(outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v40, type metadata accessor for (StackPlacement<LazyHStackLayout>, PlacementProperties<LazyHStackLayout>)));
    *(v82 + 64) = 1;
    return result;
  }

  v83 = *(v17 + 33);

  v133 = v83;
  *v82 = v83;
  v155.origin.x = v35;
  v155.origin.y = v36;
  v155.size.width = v37;
  v155.size.height = v38;
  IsNull = CGRectIsNull(v155);
  v85 = 0.0;
  v86 = 0.0;
  if (!IsNull)
  {
    v86 = v36 + v38;
    if (v36 + v38 >= v36)
    {
      v85 = v36;
    }

    else
    {
      v85 = v36 + v38;
    }

    if (v36 > v86)
    {
      v86 = v36;
    }

    if (v85 > v86)
    {
      v86 = 0.0;
      v85 = 0.0;
    }
  }

  v8 = *(v17 + 36);
  v7 = *(v17 + 37);
  v139 = v79;
  if (v8 >= v7)
  {
    v89 = *MEMORY[0x1E695F050];
    v85 = *(MEMORY[0x1E695F050] + 8);
    v90 = *(MEMORY[0x1E695F050] + 16);
    v87 = *(MEMORY[0x1E695F050] + 24);
  }

  else
  {
    v87 = v7 - v8;
    v88 = v86 - v85;
    if (v17[24])
    {
      v89 = v85;
    }

    else
    {
      v89 = v8;
    }

    if (v17[24])
    {
      v85 = v8;
      v90 = v88;
    }

    else
    {
      v90 = v7 - v8;
    }

    if (!v17[24])
    {
      v87 = v88;
    }
  }

  v156.origin.x = v35;
  v156.origin.y = v36;
  v156.size.width = v37;
  v156.size.height = v38;
  *(v82 + 8) = CGRectUnion(*(&v85 - 1), v156);
  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v40, v25, type metadata accessor for (StackPlacement<LazyHStackLayout>, PlacementProperties<LazyHStackLayout>));
  v71 = v144;
  v91 = v25 + *(v144 + 48);
  v72 = v136;
  *v136 = *v91;
  *(v72 + 8) = *(v91 + 8);
  *(v72 + 24) = 0;
  outlined destroy of StackPlacement<LazyHStackLayout>(v25);
  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v40, v25, type metadata accessor for (StackPlacement<LazyHStackLayout>, PlacementProperties<LazyHStackLayout>));
  *(v72 + 80) = *(v25 + *(v71 + 48) + 24);
  outlined destroy of StackPlacement<LazyHStackLayout>(v25);
  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v40, v25, type metadata accessor for (StackPlacement<LazyHStackLayout>, PlacementProperties<LazyHStackLayout>));
  *(v72 + 96) = *(v25 + *(v71 + 48) + 48);
  outlined destroy of StackPlacement<LazyHStackLayout>(v25);
  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v40, v25, type metadata accessor for (StackPlacement<LazyHStackLayout>, PlacementProperties<LazyHStackLayout>));
  *(v72 + 104) = *(v25 + *(v71 + 48) + 56);
  *&result = COERCE_DOUBLE(outlined destroy of StackPlacement<LazyHStackLayout>(v25));
  v74 = *(v72 + 48);
  v73 = *(v17 + 34);
  v92 = *(v17 + 35);
  if (v74 != *(v72 + 56))
  {
    goto LABEL_47;
  }

  if (v92 >= v73)
  {
    if (v92 + 1 < v73)
    {
      __break(1u);
      goto LABEL_133;
    }

    if (v73 != v92 + 1)
    {
LABEL_47:
      if (v92 >= v73)
      {
        v93 = v92 + 1;
        if (v92 + 1 < v73)
        {
          goto LABEL_130;
        }

        v74 = *(v17 + 34);
      }

      else
      {
        v74 = *(v17 + 12);
        v93 = v74;
      }

      *(v72 + 48) = v74;
      *(v72 + 56) = v93;
      if (v8 < v7)
      {
        v94 = v8;
        v95 = v7;
        if (v8 <= v7)
        {
LABEL_55:
          *(v72 + 64) = v94;
          *(v72 + 72) = v95;
          if (v81)
          {
            if (v92 >= v73)
            {
              v96 = v92 + 1;
              if (v92 + 1 < v73)
              {
LABEL_135:
                __break(1u);
                goto LABEL_136;
              }
            }

            else
            {
              v96 = *(v17 + 12);
            }
          }

          else
          {
            v96 = 0;
          }

          *(v72 + 32) = v96;
          *(v72 + 40) = !v81;
          if (v94 < 0.01 && v95 < 0.01)
          {
            v74 = 0;
            *(v72 + 48) = 0;
            *(v72 + 56) = 0;
          }

          goto LABEL_63;
        }

        __break(1u);
      }

      v94 = *(v17 + 14);
      v95 = v94;
      goto LABEL_55;
    }
  }

LABEL_63:
  v144 = v92;
  LODWORD(v138) = v81;
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for _LazyStack_Cache<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for _LazyStack_Cache);
  v98 = (v72 + *(v97 + 60));
  v99 = *v67;

  v100 = swift_isUniquelyReferenced_nonNull_native();
  v147 = *v98;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v99, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v100, &v147);
  v101 = v147;
  *v98 = v147;
  v102 = v67[1];

  v103 = swift_isUniquelyReferenced_nonNull_native();
  v147 = v98[1];
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v102, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v103, &v147);
  v98[1] = v147;
  v71 = *(v140 + 24);
  *&result = COERCE_DOUBLE(IndexSet.formUnion(_:)());
  if (*(*&v101 + 16))
  {
    *&result = COERCE_DOUBLE(EstimationCache.average.getter());
    v105 = *&result;
    if (v106)
    {
      v105 = 0.0;
    }

    v36 = v104 + v105;
  }

  else
  {
    v36 = 32.0;
  }

  v25 = v137;
  LODWORD(v67) = v135;
  v147 = 0.0;
  v72 = v136;
  v107 = *(v136 + 64);
  v40 = v143;
  v108 = &protocol conformance descriptor for GestureGraph;
  if (v137 != 1)
  {
    if (v137)
    {
      if (v74 != 0x8000000000000000 || v137 != -1)
      {
        v74 /= v137;
        goto LABEL_73;
      }

LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
      goto LABEL_135;
    }

LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

LABEL_73:
  v35 = 0.0;
  if (v135)
  {
    goto LABEL_82;
  }

  if (!v74)
  {
    if (fabs(v107) <= 0.01)
    {
      goto LABEL_82;
    }

    v35 = -v107;
    goto LABEL_81;
  }

  if (v107 < 0.01)
  {
    if (v74 < 0)
    {
LABEL_136:
      __break(1u);
      goto LABEL_137;
    }

    v109 = IndexSet.contains(integersIn:)();
    v72 = v136;
    v108 = &protocol conformance descriptor for GestureGraph;
    if ((v109 & 1) == 0)
    {
      v35 = v36 * v74;
LABEL_81:
      v147 = v35;
    }
  }

LABEL_82:
  v37 = v108[168];
  v71 = v142;
  if (fabs(v35) <= v37)
  {
    goto LABEL_91;
  }

  v110 = v35 + *(v72 + 72);
  if (v107 + v35 > v110)
  {
LABEL_128:
    __break(1u);
    __break(1u);
    goto LABEL_129;
  }

  *(v72 + 64) = v107 + v35;
  *(v72 + 72) = v110;
  *(v71 + 48) = v35;
  v74 = *(v133 + 2);
  if (!v74)
  {
    goto LABEL_90;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_131;
  }

  while (1)
  {
    v111 = v74 - 1;
    v112 = v133;
    v113 = 0;
    if (v74 == 1)
    {
      goto LABEL_87;
    }

    v128 = !is_mul_ok(v111, 0x50uLL);
    if (&v133[80 * v111 + 88] < v133 + 88)
    {
      goto LABEL_87;
    }

    if (v128)
    {
      goto LABEL_87;
    }

    v113 = v74 & 0x7FFFFFFFFFFFFFFELL;
    v129 = (v133 + 168);
    v130 = v74 & 0x7FFFFFFFFFFFFFFELL;
    do
    {
      v131 = v35 + *v129;
      *(v129 - 10) = v35 + *(v129 - 10);
      *v129 = v131;
      v129 += 20;
      v130 -= 2;
    }

    while (v130);
    if (v74 != v113)
    {
LABEL_87:
      v114 = &v112[80 * v113 + 88];
      v115 = v74 - v113;
      do
      {
        *v114 = v35 + *v114;
        v114 += 10;
        --v115;
      }

      while (v115);
    }

    *v71 = v112;
LABEL_90:
    _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12HStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e54VyxG0E0RtzrlE5place8subviews7context5cache2inyAA01_C15m11_SubviewsV_x26_cK17_PlacementContextVAFzX29_cK11_PlacementsVztFSSyXEfu1_12CoreGraphics7CGFloatVTf1c_n();
LABEL_91:
    v116 = v144;
    if (v8 < v7)
    {
      if (v8 <= v7)
      {
        goto LABEL_95;
      }

      __break(1u);
    }

    v7 = *(v17 + 14);
LABEL_95:
    if (v116 < v73)
    {
      break;
    }

    v74 = v116 + 1;
    v118 = v116 + 1 < v73;
    v117 = v139;
    if (!v118)
    {
      goto LABEL_98;
    }

LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
    __break(1u);
LABEL_131:
    v133 = specialized _ArrayBuffer._consumeAndCreateNew()(v133);
  }

  v74 = *(v17 + 12);
  v117 = v139;
LABEL_98:
  v119 = *(a2 + 32);
  if (v138)
  {
    v120 = vabdd_f64(v7, v119);
    *(v71 + 40) = v120 >= 1.0;
    if (v120 >= 1.0)
    {
      _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12HStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e54VyxG0E0RtzrlE5place8subviews7context5cache2inyAA01_C15m11_SubviewsV_x26_cK17_PlacementContextVAFzX29_cK11_PlacementsVztFSSyXEfu2_12CoreGraphics7CGFloatVAA01_cM17_PlacementContextVAA4AxisOTf1c_n(a2, 0);
    }

    goto LABEL_117;
  }

  if (v119 + v37 < v7)
  {
    *(v71 + 40) = 1;
    _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12HStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e54VyxG0E0RtzrlE5place8subviews7context5cache2inyAA01_C15m11_SubviewsV_x26_cK17_PlacementContextVAFzX29_cK11_PlacementsVztFSSyXEfu3_12CoreGraphics7CGFloatVAA01_cM17_PlacementContextVAA4AxisOTf1c_n(a2, 0);
    goto LABEL_117;
  }

  v147 = *&v117;
  *&result = COERCE_DOUBLE(_ViewList_Node.estimatedCount(style:)(&v147));
  if (__OFSUB__(result, v74))
  {
    goto LABEL_134;
  }

  v121 = (result - v74) & ~((result - v74) >> 63);
  v72 = v136;
  if (v25 == 1)
  {
LABEL_110:
    v124 = v7 + v36 * v121;
    if (v124 >= v119)
    {
      v125 = v119;
    }

    else
    {
      v125 = v7 + v36 * v121;
    }

    v126 = v125 * 0.1;
    if ((v67 & v134) != 0)
    {
      v126 = v37;
    }

    v127 = vabdd_f64(v119, v124);
    *(v71 + 40) = v126 < v127;
    if (v126 < v127)
    {
      _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12HStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e54VyxG0E0RtzrlE5place8subviews7context5cache2inyAA01_C15m11_SubviewsV_x26_cK17_PlacementContextVAFzX29_cK11_PlacementsVztFSSyXEfu5_12CoreGraphics7CGFloatVAPTf1c_n();
    }

LABEL_117:
    _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12HStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e54VyxG0E0RtzrlE5place8subviews7context5cache2inyAA01_C15m11_SubviewsV_x26_cK17_PlacementContextVAFzx34_cK11_PlacementsVztFSSyXEfu6_AA0c6L7K0V_Tg5SNy12CoreGraphics7CGFloatVGAEyALGAA01_cM11_PlacementsVTf1c_n(v72, v71, v44, v45);
LABEL_118:
    outlined destroy of StackPlacement<LazyHStackLayout>(v17);
    *&result = COERCE_DOUBLE(outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v40, type metadata accessor for (StackPlacement<LazyHStackLayout>, PlacementProperties<LazyHStackLayout>)));
    return result;
  }

  v77 = __OFADD__(v121, v25);
  v122 = v121 + v25;
  if (v77)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (!v25)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  v123 = v122 - 1;
  if (v123 != 0x8000000000000000 || v25 != -1)
  {
    v121 = v123 / v25;
    goto LABEL_110;
  }

LABEL_139:
  __break(1u);
  return result;
}

{
  v142 = a4;
  v144 = a7;
  v145 = a7 & 0xFFFFFFFF00000000;
  v141 = type metadata accessor for IndexSet();
  v140 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v139 = &v132 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for StackPlacement<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for StackPlacement);
  v138 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v132 - v16;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>)?, type metadata accessor for (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>), MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v132 - v19;
  type metadata accessor for (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>)();
  v22 = v21;
  v23 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v132 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v143 = &v132 - v27;
  v28 = *(a2 + 280);
  v29 = *(a2 + 288);
  v30 = *(a2 + 296);
  v31 = *(a2 + 104);
  v32 = *(a2 + 136);
  v152 = *(a2 + 120);
  v153 = v32;
  v154 = *(a2 + 152);
  v33 = *(a2 + 72);
  v148 = *(a2 + 56);
  v34 = *(a2 + 88);
  v151 = v31;
  v149 = v33;
  v150 = v34;
  if (v30)
  {
    v137 = a5;
    ScrollGeometry.outsetForAX(limit:)(__PAIR128__(v29, v28));
    a5 = v137;
  }

  v36 = *(&v153 + 1);
  v35 = *&v153;
  v38 = *(&v154 + 1);
  v37 = *&v154;
  LOBYTE(v148) = v144 & 1;
  specialized LazyStack<>.resolvedPlacerProperties(subviews:context:cache:)(a1, a2, a3, a5, a6, v145 | v144 & 1, v20);
  if ((*(v23 + 48))(v20, 1, v22) == 1)
  {
    *&result = COERCE_DOUBLE(outlined destroy of ObservationTracking._AccessList?(v20, &lazy cache variable for type metadata for (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>)?, type metadata accessor for (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>), MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?));
    return result;
  }

  v40 = v143;
  outlined init with take of (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>)(v20, v143, type metadata accessor for (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>));
  v41 = v22;
  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v40, v25, type metadata accessor for (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>));
  outlined init with take of StackPlacement<LazyHStackLayout>(v25, v17, &lazy cache variable for type metadata for StackPlacement<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout);
  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v40, v25, type metadata accessor for (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>));
  v42 = *(v25 + *(v22 + 48));
  outlined destroy of StackPlacement<LazyVStackLayout>(v25);
  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v40, v25, type metadata accessor for (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>));
  v43 = v25 + *(v22 + 48);
  v44 = *(v43 + 24);
  v45 = *(v43 + 32);
  outlined destroy of StackPlacement<LazyVStackLayout>(v25);
  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v40, v25, type metadata accessor for (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>));
  v46 = *(v25 + *(v22 + 48) + 40);
  outlined destroy of StackPlacement<LazyVStackLayout>(v25);
  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v40, v25, type metadata accessor for (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>));
  v47 = *(v25 + *(v22 + 48) + 41);
  outlined destroy of StackPlacement<LazyVStackLayout>(v25);
  v144 = v41;
  v48 = (v40 + *(v41 + 48));
  v49 = v48[1];
  v148 = *v48;
  v50 = v48[2];
  v151 = v48[3];
  v149 = v49;
  v150 = v50;
  v145 = a1;
  v51 = _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE23resolveIndexAndPosition33_973C9973BC16DEAF0CF3109FFDE313218subviews7context5cache6placer10propertiesSi5index_12CoreGraphics7CGFloatV8positiontSgAA01_C15Layout_SubviewsV_AA01_cY17_PlacementContextVAFzAA0D9PlacementAJLLVyxGzAA19PlacementPropertiesAJLLVyxGtFAA0c6VStackY0V_Tt4B5(a1, a2, a3, v17, &v148);
  if (v53)
  {
    goto LABEL_118;
  }

  v54 = v51;
  v134 = v47;
  v136 = a3;
  v55 = v52;
  specialized StackPlacement.log(_:)(v52, *(v17 + 7), *(v17 + 8), v17, v51);
  v56 = (v17 + 136);
  *(v17 + 12) = *&v54;
  v17[104] = 0;
  *(v17 + 14) = v55;
  *(v17 + 15) = 0;
  v17[128] = 1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v58 = *(v17 + 17);
  if (isUniquelyReferenced_nonNull_native)
  {
    v59 = *(v58 + 2);
    v60 = swift_isUniquelyReferenced_nonNull_native();
    *v56 = v58;
    if ((v60 & 1) == 0)
    {
      v58 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v59, 1, v58);
      *v56 = v58;
    }

    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, v59, 0);
  }

  else
  {
    v61 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI19_LazyLayout_SubviewV_Tt1g5(0, *(v58 + 3) >> 1);

    v58 = v61;
  }

  *(v17 + 17) = v58;

  *(v17 + 18) = 0;
  outlined destroy of GlassEntryView?((v17 + 152), &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
  *(v17 + 152) = 0u;
  *(v17 + 168) = 0u;
  *(v17 + 184) = 0u;
  *(v17 + 200) = 0u;
  *(v17 + 216) = 0u;
  *(v17 + 232) = 0u;
  *(v17 + 248) = 0u;
  v62 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *(v17 + 33);
  v137 = v42;
  v135 = v46;
  if (v62)
  {
    v64 = *(v63 + 2);
    v65 = swift_isUniquelyReferenced_nonNull_native();
    *(v17 + 33) = v63;
    if ((v65 & 1) == 0)
    {
      v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v64, 1, v63);
      *(v17 + 33) = v63;
    }

    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, v64, 0);
  }

  else
  {
    v66 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI25_LazyLayout_PlacedSubviewV_Tt1g5(0, *(v63 + 3) >> 1);

    v63 = v66;
  }

  *(v17 + 33) = v63;
  *(v17 + 17) = xmmword_18DDAB4E0;
  *(v17 + 18) = xmmword_18DDAB4F0;
  *(v17 + 19) = xmmword_18DDAB4F0;
  v17[320] = 0;
  v67 = &v17[*(v138 + 104)];
  *&v68 = MEMORY[0x1E69E7CC0];
  v69 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

  *v67 = v69;
  v70 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v68);

  v67[1] = v70;
  v147 = *&v68;
  lazy protocol witness table accessor for type TouchEvent and conformance TouchEvent(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50]);
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for [Int], MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [Int] and conformance [A]();
  v71 = v139;
  v72 = v141;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v73 = type metadata accessor for EstimationCache();
  v74 = *(v73 + 24);
  v75 = (*(v140 + 40))(v67 + v74, v71, v72);
  v76 = *(v17 + 4);
  v77 = __OFSUB__(v54, v76);
  v78 = v54 - v76;
  if (v78 < 0 == v77)
  {
    v17[104] = 1;
    if (v77)
    {
      __break(1u);
      goto LABEL_127;
    }

    *(v17 + 12) = v78;
    v54 = v78;
  }

  v140 = v73;
  v141 = v74;
  v79 = 2 * v137;
  v147 = *&v54;
  v146 = 2 * v137;
  MEMORY[0x1EEE9AC00](v75);
  *(&v132 - 2) = v17;
  v80 = _LazyLayout_Subviews.applyNodes(from:style:to:)(&v147, &v146, closure #1 in StackPlacement.place(subviews:from:position:stopping:style:)specialized partial apply, (&v132 - 4));
  specialized StackPlacement.flushMinorGroup()();
  v81 = (v80 & 1) != 0 && vabdd_f64(*(v17 + 14), *(v17 + 37)) < 0.01;
  v82 = v142;
  if (AGGraphHasDeadlinePassed())
  {
    AGGraphCancelUpdate();
    goto LABEL_24;
  }

  if (v17[320] == 1)
  {
LABEL_24:
    outlined destroy of StackPlacement<LazyVStackLayout>(v17);
    *&result = COERCE_DOUBLE(outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v40, type metadata accessor for (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>)));
    *(v82 + 64) = 1;
    return result;
  }

  v83 = *(v17 + 33);

  v133 = v83;
  *v82 = v83;
  v155.origin.x = v35;
  v155.origin.y = v36;
  v155.size.width = v37;
  v155.size.height = v38;
  IsNull = CGRectIsNull(v155);
  v85 = 0.0;
  v86 = 0.0;
  if (!IsNull)
  {
    v86 = v35 + v37;
    if (v35 + v37 >= v35)
    {
      v85 = v35;
    }

    else
    {
      v85 = v35 + v37;
    }

    if (v35 > v86)
    {
      v86 = v35;
    }

    if (v85 > v86)
    {
      v86 = 0.0;
      v85 = 0.0;
    }
  }

  v8 = *(v17 + 36);
  v7 = *(v17 + 37);
  v139 = v79;
  if (v8 >= v7)
  {
    v89 = *MEMORY[0x1E695F050];
    v85 = *(MEMORY[0x1E695F050] + 8);
    v90 = *(MEMORY[0x1E695F050] + 16);
    v87 = *(MEMORY[0x1E695F050] + 24);
  }

  else
  {
    v87 = v7 - v8;
    v88 = v86 - v85;
    if (v17[24])
    {
      v89 = v85;
    }

    else
    {
      v89 = v8;
    }

    if (v17[24])
    {
      v85 = v8;
      v90 = v88;
    }

    else
    {
      v90 = v7 - v8;
    }

    if (!v17[24])
    {
      v87 = v88;
    }
  }

  v156.origin.x = v35;
  v156.origin.y = v36;
  v156.size.width = v37;
  v156.size.height = v38;
  *(v82 + 8) = CGRectUnion(*(&v85 - 1), v156);
  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v40, v25, type metadata accessor for (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>));
  v71 = v144;
  v91 = v25 + *(v144 + 48);
  v72 = v136;
  *v136 = *v91;
  *(v72 + 8) = *(v91 + 8);
  *(v72 + 24) = 0;
  outlined destroy of StackPlacement<LazyVStackLayout>(v25);
  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v40, v25, type metadata accessor for (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>));
  *(v72 + 80) = *(v25 + *(v71 + 48) + 24);
  outlined destroy of StackPlacement<LazyVStackLayout>(v25);
  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v40, v25, type metadata accessor for (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>));
  *(v72 + 96) = *(v25 + *(v71 + 48) + 48);
  outlined destroy of StackPlacement<LazyVStackLayout>(v25);
  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v40, v25, type metadata accessor for (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>));
  *(v72 + 104) = *(v25 + *(v71 + 48) + 56);
  *&result = COERCE_DOUBLE(outlined destroy of StackPlacement<LazyVStackLayout>(v25));
  v74 = *(v72 + 48);
  v73 = *(v17 + 34);
  v92 = *(v17 + 35);
  if (v74 != *(v72 + 56))
  {
    goto LABEL_47;
  }

  if (v92 >= v73)
  {
    if (v92 + 1 < v73)
    {
      __break(1u);
      goto LABEL_133;
    }

    if (v73 != v92 + 1)
    {
LABEL_47:
      if (v92 >= v73)
      {
        v93 = v92 + 1;
        if (v92 + 1 < v73)
        {
          goto LABEL_130;
        }

        v74 = *(v17 + 34);
      }

      else
      {
        v74 = *(v17 + 12);
        v93 = v74;
      }

      *(v72 + 48) = v74;
      *(v72 + 56) = v93;
      if (v8 < v7)
      {
        v94 = v8;
        v95 = v7;
        if (v8 <= v7)
        {
LABEL_55:
          *(v72 + 64) = v94;
          *(v72 + 72) = v95;
          if (v81)
          {
            if (v92 >= v73)
            {
              v96 = v92 + 1;
              if (v92 + 1 < v73)
              {
LABEL_135:
                __break(1u);
                goto LABEL_136;
              }
            }

            else
            {
              v96 = *(v17 + 12);
            }
          }

          else
          {
            v96 = 0;
          }

          *(v72 + 32) = v96;
          *(v72 + 40) = !v81;
          if (v94 < 0.01 && v95 < 0.01)
          {
            v74 = 0;
            *(v72 + 48) = 0;
            *(v72 + 56) = 0;
          }

          goto LABEL_63;
        }

        __break(1u);
      }

      v94 = *(v17 + 14);
      v95 = v94;
      goto LABEL_55;
    }
  }

LABEL_63:
  v144 = v92;
  LODWORD(v138) = v81;
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for _LazyStack_Cache<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for _LazyStack_Cache);
  v98 = (v72 + *(v97 + 60));
  v99 = *v67;

  v100 = swift_isUniquelyReferenced_nonNull_native();
  v147 = *v98;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v99, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v100, &v147);
  v101 = v147;
  *v98 = v147;
  v102 = v67[1];

  v103 = swift_isUniquelyReferenced_nonNull_native();
  v147 = v98[1];
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v102, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v103, &v147);
  v98[1] = v147;
  v71 = *(v140 + 24);
  *&result = COERCE_DOUBLE(IndexSet.formUnion(_:)());
  if (*(*&v101 + 16))
  {
    *&result = COERCE_DOUBLE(EstimationCache.average.getter());
    v105 = *&result;
    if (v106)
    {
      v105 = 0.0;
    }

    v36 = v104 + v105;
  }

  else
  {
    v36 = 32.0;
  }

  v25 = v137;
  LODWORD(v67) = v135;
  v147 = 0.0;
  v72 = v136;
  v107 = *(v136 + 64);
  v40 = v143;
  v108 = &protocol conformance descriptor for GestureGraph;
  if (v137 != 1)
  {
    if (v137)
    {
      if (v74 != 0x8000000000000000 || v137 != -1)
      {
        v74 /= v137;
        goto LABEL_73;
      }

LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
      goto LABEL_135;
    }

LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

LABEL_73:
  v35 = 0.0;
  if (v135)
  {
    goto LABEL_82;
  }

  if (!v74)
  {
    if (fabs(v107) <= 0.01)
    {
      goto LABEL_82;
    }

    v35 = -v107;
    goto LABEL_81;
  }

  if (v107 < 0.01)
  {
    if (v74 < 0)
    {
LABEL_136:
      __break(1u);
      goto LABEL_137;
    }

    v109 = IndexSet.contains(integersIn:)();
    v72 = v136;
    v108 = &protocol conformance descriptor for GestureGraph;
    if ((v109 & 1) == 0)
    {
      v35 = v36 * v74;
LABEL_81:
      v147 = v35;
    }
  }

LABEL_82:
  v37 = v108[168];
  v71 = v142;
  if (fabs(v35) <= v37)
  {
    goto LABEL_91;
  }

  v110 = v35 + *(v72 + 72);
  if (v107 + v35 > v110)
  {
LABEL_128:
    __break(1u);
    __break(1u);
    goto LABEL_129;
  }

  *(v72 + 64) = v107 + v35;
  *(v72 + 72) = v110;
  *(v71 + 56) = v35;
  v74 = *(v133 + 2);
  if (!v74)
  {
    goto LABEL_90;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_131;
  }

  while (1)
  {
    v111 = v74 - 1;
    v112 = v133;
    v113 = 0;
    if (v74 == 1)
    {
      goto LABEL_87;
    }

    v128 = !is_mul_ok(v111, 0x50uLL);
    if (&v133[80 * v111 + 96] < v133 + 96)
    {
      goto LABEL_87;
    }

    if (v128)
    {
      goto LABEL_87;
    }

    v113 = v74 & 0x7FFFFFFFFFFFFFFELL;
    v129 = (v133 + 176);
    v130 = v74 & 0x7FFFFFFFFFFFFFFELL;
    do
    {
      v131 = v35 + *v129;
      *(v129 - 10) = v35 + *(v129 - 10);
      *v129 = v131;
      v129 += 20;
      v130 -= 2;
    }

    while (v130);
    if (v74 != v113)
    {
LABEL_87:
      v114 = &v112[80 * v113 + 96];
      v115 = v74 - v113;
      do
      {
        *v114 = v35 + *v114;
        v114 += 10;
        --v115;
      }

      while (v115);
    }

    *v71 = v112;
LABEL_90:
    _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12VStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e54VyxG0E0RtzrlE5place8subviews7context5cache2inyAA01_C15m11_SubviewsV_x26_cK17_PlacementContextVAFzX29_cK11_PlacementsVztFSSyXEfu1_12CoreGraphics7CGFloatVTf1c_n();
LABEL_91:
    v116 = v144;
    if (v8 < v7)
    {
      if (v8 <= v7)
      {
        goto LABEL_95;
      }

      __break(1u);
    }

    v7 = *(v17 + 14);
LABEL_95:
    if (v116 < v73)
    {
      break;
    }

    v74 = v116 + 1;
    v118 = v116 + 1 < v73;
    v117 = v139;
    if (!v118)
    {
      goto LABEL_98;
    }

LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
    __break(1u);
LABEL_131:
    v133 = specialized _ArrayBuffer._consumeAndCreateNew()(v133);
  }

  v74 = *(v17 + 12);
  v117 = v139;
LABEL_98:
  v119 = *(a2 + 40);
  if (v138)
  {
    v120 = vabdd_f64(v7, v119);
    *(v71 + 40) = v120 >= 1.0;
    if (v120 >= 1.0)
    {
      _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12VStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e54VyxG0E0RtzrlE5place8subviews7context5cache2inyAA01_C15m11_SubviewsV_x26_cK17_PlacementContextVAFzX29_cK11_PlacementsVztFSSyXEfu2_12CoreGraphics7CGFloatVAA01_cM17_PlacementContextVAA4AxisOTf1c_n(a2, 1);
    }

    goto LABEL_117;
  }

  if (v119 + v37 < v7)
  {
    *(v71 + 40) = 1;
    _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12VStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e54VyxG0E0RtzrlE5place8subviews7context5cache2inyAA01_C15m11_SubviewsV_x26_cK17_PlacementContextVAFzX29_cK11_PlacementsVztFSSyXEfu3_12CoreGraphics7CGFloatVAA01_cM17_PlacementContextVAA4AxisOTf1c_n(a2, 1);
    goto LABEL_117;
  }

  v147 = *&v117;
  *&result = COERCE_DOUBLE(_ViewList_Node.estimatedCount(style:)(&v147));
  if (__OFSUB__(result, v74))
  {
    goto LABEL_134;
  }

  v121 = (result - v74) & ~((result - v74) >> 63);
  v72 = v136;
  if (v25 == 1)
  {
LABEL_110:
    v124 = v7 + v36 * v121;
    if (v124 >= v119)
    {
      v125 = v119;
    }

    else
    {
      v125 = v7 + v36 * v121;
    }

    v126 = v125 * 0.1;
    if ((v67 & v134) != 0)
    {
      v126 = v37;
    }

    v127 = vabdd_f64(v119, v124);
    *(v71 + 40) = v126 < v127;
    if (v126 < v127)
    {
      _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12VStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e54VyxG0E0RtzrlE5place8subviews7context5cache2inyAA01_C15m11_SubviewsV_x26_cK17_PlacementContextVAFzX29_cK11_PlacementsVztFSSyXEfu5_12CoreGraphics7CGFloatVAPTf1c_n();
    }

LABEL_117:
    _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12VStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e54VyxG0E0RtzrlE5place8subviews7context5cache2inyAA01_C15m11_SubviewsV_x26_cK17_PlacementContextVAFzx34_cK11_PlacementsVztFSSyXEfu6_AA0c6L7K0V_Tg5SNy12CoreGraphics7CGFloatVGAEyALGAA01_cM11_PlacementsVTf1c_n(v72, v71, v44, v45);
LABEL_118:
    outlined destroy of StackPlacement<LazyVStackLayout>(v17);
    *&result = COERCE_DOUBLE(outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v40, type metadata accessor for (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>)));
    return result;
  }

  v77 = __OFADD__(v121, v25);
  v122 = v121 + v25;
  if (v77)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (!v25)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  v123 = v122 - 1;
  if (v123 != 0x8000000000000000 || v25 != -1)
  {
    v121 = v123 / v25;
    goto LABEL_110;
  }

LABEL_139:
  __break(1u);
  return result;
}

uint64_t specialized LazyStack<>.estimatedPlacement(subviews:context:cache:in:)(void *a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v71 = a5;
  v72 = a6;
  v62 = a4;
  v68 = a2;
  v69 = a3;
  v67 = a1;
  v70 = a7 & 0xFFFFFFFF00000000;
  v8 = type metadata accessor for IndexSet();
  v65 = *(v8 - 8);
  v66 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v64 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for StackPlacement<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for StackPlacement);
  v63 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v62 - v11;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for (StackPlacement<LazyHStackLayout>, PlacementProperties<LazyHStackLayout>)?, type metadata accessor for (StackPlacement<LazyHStackLayout>, PlacementProperties<LazyHStackLayout>), MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v62 - v14;
  type metadata accessor for (StackPlacement<LazyHStackLayout>, PlacementProperties<LazyHStackLayout>)();
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v62 - v22;
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for _LazyStack_Cache<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for _LazyStack_Cache);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v62 - v25;
  v27 = v67;
  memcpy(v75, v68, 0x129uLL);
  outlined init with copy of _LazyStack_Cache<LazyHStackLayout>(v69, v26);
  specialized LazyStack<>.resolvedPlacerProperties(subviews:context:cache:)(v27, v75, v26, v71, v72, v70 | v7 & 1, v15);
  if ((*(v18 + 48))(v15, 1, v17) == 1)
  {
    outlined destroy of _LazyStack_Cache<LazyHStackLayout>(v26);
    return outlined destroy of ObservationTracking._AccessList?(v15, &lazy cache variable for type metadata for (StackPlacement<LazyHStackLayout>, PlacementProperties<LazyHStackLayout>)?, type metadata accessor for (StackPlacement<LazyHStackLayout>, PlacementProperties<LazyHStackLayout>), MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  }

  outlined init with take of (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>)(v15, v23, type metadata accessor for (StackPlacement<LazyHStackLayout>, PlacementProperties<LazyHStackLayout>));
  v29 = v26;
  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v23, v20, type metadata accessor for (StackPlacement<LazyHStackLayout>, PlacementProperties<LazyHStackLayout>));
  v30 = *&v20[*(v17 + 48)];
  outlined destroy of StackPlacement<LazyHStackLayout>(v20);
  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v23, v20, type metadata accessor for (StackPlacement<LazyHStackLayout>, PlacementProperties<LazyHStackLayout>));
  outlined init with take of StackPlacement<LazyHStackLayout>(v20, v12, &lazy cache variable for type metadata for StackPlacement<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout);
  v31 = &v23[*(v17 + 48)];
  v32 = *(v31 + 1);
  v76[0] = *v31;
  v76[1] = v32;
  v33 = *(v31 + 3);
  v76[2] = *(v31 + 2);
  v76[3] = v33;
  v34 = _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE23resolveIndexAndPosition33_973C9973BC16DEAF0CF3109FFDE313218subviews7context5cache6placer10propertiesSi5index_12CoreGraphics7CGFloatV8positiontSgAA01_C15Layout_SubviewsV_AA01_cY17_PlacementContextVAFzAA0D9PlacementAJLLVyxGzAA19PlacementPropertiesAJLLVyxGtFAA0c6HStackY0V_Tt4B5(v27, v75, v26, v12, v76);
  if (v36)
  {
    outlined destroy of StackPlacement<LazyHStackLayout>(v12);
    outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v23, type metadata accessor for (StackPlacement<LazyHStackLayout>, PlacementProperties<LazyHStackLayout>));
    v37 = v26;
  }

  else
  {
    v38 = v34;
    v72 = v29;
    v39 = v35;
    specialized StackPlacement.log(_:)(v35, *(v12 + 7), *(v12 + 8), v12, v34);
    v40 = (v12 + 136);
    *(v12 + 12) = v38;
    v12[104] = 0;
    *(v12 + 14) = v39;
    *(v12 + 15) = 0;
    v12[128] = 1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = *(v12 + 17);
    if (isUniquelyReferenced_nonNull_native)
    {
      v43 = *(v42 + 2);
      v44 = swift_isUniquelyReferenced_nonNull_native();
      *v40 = v42;
      if ((v44 & 1) == 0)
      {
        v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v43, 1, v42);
        *v40 = v42;
      }

      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, v43, 0);
    }

    else
    {
      v45 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI19_LazyLayout_SubviewV_Tt1g5(0, *(v42 + 3) >> 1);

      v42 = v45;
    }

    *(v12 + 17) = v42;

    *(v12 + 18) = 0;
    outlined destroy of GlassEntryView?((v12 + 152), &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
    *(v12 + 152) = 0u;
    *(v12 + 168) = 0u;
    *(v12 + 184) = 0u;
    *(v12 + 200) = 0u;
    *(v12 + 216) = 0u;
    *(v12 + 232) = 0u;
    *(v12 + 248) = 0u;
    v46 = swift_isUniquelyReferenced_nonNull_native();
    v47 = *(v12 + 33);
    if (v46)
    {
      v48 = *(v47 + 2);
      v49 = swift_isUniquelyReferenced_nonNull_native();
      *(v12 + 33) = v47;
      if ((v49 & 1) == 0)
      {
        v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v48, 1, v47);
        *(v12 + 33) = v47;
      }

      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, v48, 0);
    }

    else
    {
      v50 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI25_LazyLayout_PlacedSubviewV_Tt1g5(0, *(v47 + 3) >> 1);

      v47 = v50;
    }

    *(v12 + 33) = v47;
    *(v12 + 17) = xmmword_18DDAB4E0;
    *(v12 + 18) = xmmword_18DDAB4F0;
    *(v12 + 19) = xmmword_18DDAB4F0;
    v12[320] = 0;
    v51 = &v12[*(v63 + 104)];
    v52 = MEMORY[0x1E69E7CC0];
    v53 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

    *v51 = v53;
    v54 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v52);

    v51[1] = v54;
    v74 = v52;
    lazy protocol witness table accessor for type TouchEvent and conformance TouchEvent(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50]);
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for [Int], MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [Int] and conformance [A]();
    v55 = v64;
    v56 = v66;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v57 = type metadata accessor for EstimationCache();
    result = (*(v65 + 40))(v51 + *(v57 + 24), v55, v56);
    v58 = *(v12 + 4);
    v59 = __OFSUB__(v38, v58);
    v60 = v38 - v58;
    if (v60 < 0 == v59)
    {
      v12[104] = 1;
      if (v59)
      {
        __break(1u);
        return result;
      }

      *(v12 + 12) = v60;
      v38 = v60;
    }

    v73 = 2 * v30;
    v74 = v38;
    MEMORY[0x1EEE9AC00](result);
    *(&v62 - 2) = v12;
    _LazyLayout_Subviews.applyNodes(from:style:to:)(&v74, &v73, closure #1 in StackPlacement.place(subviews:from:position:stopping:style:)specialized partial apply, (&v62 - 4));
    specialized StackPlacement.flushMinorGroup()();

    specialized Array.append<A>(contentsOf:)(v61);
    outlined destroy of StackPlacement<LazyHStackLayout>(v12);
    outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v23, type metadata accessor for (StackPlacement<LazyHStackLayout>, PlacementProperties<LazyHStackLayout>));
    v37 = v72;
  }

  return outlined destroy of _LazyStack_Cache<LazyHStackLayout>(v37);
}

{
  v7 = a7;
  v71 = a5;
  v72 = a6;
  v62 = a4;
  v68 = a2;
  v69 = a3;
  v67 = a1;
  v70 = a7 & 0xFFFFFFFF00000000;
  v8 = type metadata accessor for IndexSet();
  v65 = *(v8 - 8);
  v66 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v64 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for StackPlacement<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for StackPlacement);
  v63 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v62 - v11;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>)?, type metadata accessor for (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>), MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v62 - v14;
  type metadata accessor for (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>)();
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v62 - v22;
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for _LazyStack_Cache<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for _LazyStack_Cache);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v62 - v25;
  v27 = v67;
  memcpy(v75, v68, 0x129uLL);
  outlined init with copy of _LazyStack_Cache<LazyVStackLayout>(v69, v26);
  specialized LazyStack<>.resolvedPlacerProperties(subviews:context:cache:)(v27, v75, v26, v71, v72, v70 | v7 & 1, v15);
  if ((*(v18 + 48))(v15, 1, v17) == 1)
  {
    outlined destroy of _LazyStack_Cache<LazyVStackLayout>(v26);
    return outlined destroy of ObservationTracking._AccessList?(v15, &lazy cache variable for type metadata for (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>)?, type metadata accessor for (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>), MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  }

  outlined init with take of (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>)(v15, v23, type metadata accessor for (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>));
  v29 = v26;
  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v23, v20, type metadata accessor for (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>));
  v30 = *&v20[*(v17 + 48)];
  outlined destroy of StackPlacement<LazyVStackLayout>(v20);
  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v23, v20, type metadata accessor for (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>));
  outlined init with take of StackPlacement<LazyHStackLayout>(v20, v12, &lazy cache variable for type metadata for StackPlacement<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout);
  v31 = &v23[*(v17 + 48)];
  v32 = *(v31 + 1);
  v76[0] = *v31;
  v76[1] = v32;
  v33 = *(v31 + 3);
  v76[2] = *(v31 + 2);
  v76[3] = v33;
  v34 = _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE23resolveIndexAndPosition33_973C9973BC16DEAF0CF3109FFDE313218subviews7context5cache6placer10propertiesSi5index_12CoreGraphics7CGFloatV8positiontSgAA01_C15Layout_SubviewsV_AA01_cY17_PlacementContextVAFzAA0D9PlacementAJLLVyxGzAA19PlacementPropertiesAJLLVyxGtFAA0c6VStackY0V_Tt4B5(v27, v75, v26, v12, v76);
  if (v36)
  {
    outlined destroy of StackPlacement<LazyVStackLayout>(v12);
    outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v23, type metadata accessor for (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>));
    v37 = v26;
  }

  else
  {
    v38 = v34;
    v72 = v29;
    v39 = v35;
    specialized StackPlacement.log(_:)(v35, *(v12 + 7), *(v12 + 8), v12, v34);
    v40 = (v12 + 136);
    *(v12 + 12) = v38;
    v12[104] = 0;
    *(v12 + 14) = v39;
    *(v12 + 15) = 0;
    v12[128] = 1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = *(v12 + 17);
    if (isUniquelyReferenced_nonNull_native)
    {
      v43 = *(v42 + 2);
      v44 = swift_isUniquelyReferenced_nonNull_native();
      *v40 = v42;
      if ((v44 & 1) == 0)
      {
        v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v43, 1, v42);
        *v40 = v42;
      }

      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, v43, 0);
    }

    else
    {
      v45 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI19_LazyLayout_SubviewV_Tt1g5(0, *(v42 + 3) >> 1);

      v42 = v45;
    }

    *(v12 + 17) = v42;

    *(v12 + 18) = 0;
    outlined destroy of GlassEntryView?((v12 + 152), &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
    *(v12 + 152) = 0u;
    *(v12 + 168) = 0u;
    *(v12 + 184) = 0u;
    *(v12 + 200) = 0u;
    *(v12 + 216) = 0u;
    *(v12 + 232) = 0u;
    *(v12 + 248) = 0u;
    v46 = swift_isUniquelyReferenced_nonNull_native();
    v47 = *(v12 + 33);
    if (v46)
    {
      v48 = *(v47 + 2);
      v49 = swift_isUniquelyReferenced_nonNull_native();
      *(v12 + 33) = v47;
      if ((v49 & 1) == 0)
      {
        v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v48, 1, v47);
        *(v12 + 33) = v47;
      }

      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, v48, 0);
    }

    else
    {
      v50 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI25_LazyLayout_PlacedSubviewV_Tt1g5(0, *(v47 + 3) >> 1);

      v47 = v50;
    }

    *(v12 + 33) = v47;
    *(v12 + 17) = xmmword_18DDAB4E0;
    *(v12 + 18) = xmmword_18DDAB4F0;
    *(v12 + 19) = xmmword_18DDAB4F0;
    v12[320] = 0;
    v51 = &v12[*(v63 + 104)];
    v52 = MEMORY[0x1E69E7CC0];
    v53 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

    *v51 = v53;
    v54 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v52);

    v51[1] = v54;
    v74 = v52;
    lazy protocol witness table accessor for type TouchEvent and conformance TouchEvent(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50]);
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for [Int], MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [Int] and conformance [A]();
    v55 = v64;
    v56 = v66;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v57 = type metadata accessor for EstimationCache();
    result = (*(v65 + 40))(v51 + *(v57 + 24), v55, v56);
    v58 = *(v12 + 4);
    v59 = __OFSUB__(v38, v58);
    v60 = v38 - v58;
    if (v60 < 0 == v59)
    {
      v12[104] = 1;
      if (v59)
      {
        __break(1u);
        return result;
      }

      *(v12 + 12) = v60;
      v38 = v60;
    }

    v73 = 2 * v30;
    v74 = v38;
    MEMORY[0x1EEE9AC00](result);
    *(&v62 - 2) = v12;
    _LazyLayout_Subviews.applyNodes(from:style:to:)(&v74, &v73, closure #1 in StackPlacement.place(subviews:from:position:stopping:style:)specialized partial apply, (&v62 - 4));
    specialized StackPlacement.flushMinorGroup()();

    specialized Array.append<A>(contentsOf:)(v61);
    outlined destroy of StackPlacement<LazyVStackLayout>(v12);
    outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v23, type metadata accessor for (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>));
    v37 = v72;
  }

  return outlined destroy of _LazyStack_Cache<LazyVStackLayout>(v37);
}

uint64_t _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE12proposeSizes2at8subviews7context5cache2inySi_AA01_C15Layout_SubviewsVAA01_cM17_PlacementContextVAfA01_cm9_ProposedG0VztFAA0c6HStackM0V_Tt1B5(uint64_t result, char *a2, uint64_t a3, char **a4, unint64_t a5)
{
  if ((*(a3 + 24) & 1) == 0)
  {
    v10 = *(a3 + 16);
    v11 = *(a3 + 8);
    v32[0] = *a3;
    v32[1] = v11;
    v32[2] = v10;
    if (v32[0] >= 1)
    {
      v22 = a4;
      v14 = result;

      v31 = MEMORY[0x1E69E7CC0];
      if ((v14 / v32[0] * v32[0]) >> 64 == (v14 / v32[0] * v32[0]) >> 63)
      {
        v29 = v14 / v32[0] * v32[0];
        v30 = MEMORY[0x1E69E7CC0];
        v24[0] = 2 * v32[0];
        MEMORY[0x1EEE9AC00](v15);
        v19[2] = &v30;
        v19[3] = v32;
        v20 = 0;
        v21 = &v31;
        _LazyLayout_Subviews.apply(from:style:to:)(&v29, v24, partial apply for specialized closure #1 in LazyStack<>.proposeSizes(at:subviews:context:cache:in:), v19);
        if (!*(v30 + 16))
        {

          a2 = v31;
LABEL_10:
          *v22 = a2;
          return result;
        }

        AlignmentKey.fraction.getter(a5);
        LOBYTE(v24[0]) = 1;
        v23 = 0;
        _LazyLayout_Subview.proposeSize(_:)(0, 1, v10, 0, v24);
        a5 = v24[0];
        v5 = v24[1];
        v6 = v25;
        v7 = v26;
        v8 = v27;
        v9 = v28;
        a2 = v31;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_6:
          v17 = *(a2 + 2);
          v16 = *(a2 + 3);
          if (v17 >= v16 >> 1)
          {
            a2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, a2);
          }

          *(a2 + 2) = v17 + 1;
          v18 = &a2[48 * v17];
          *(v18 + 4) = a5;
          *(v18 + 5) = v5;
          v18[48] = v6;
          *(v18 + 7) = v7;
          v18[64] = v8;
          *(v18 + 9) = v9;

          goto LABEL_10;
        }
      }

      else
      {
        __break(1u);
      }

      a2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a2 + 2) + 1, 1, a2);
      goto LABEL_6;
    }
  }

  return result;
}

uint64_t _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE12proposeSizes2at8subviews7context5cache2inySi_AA01_C15Layout_SubviewsVAA01_cM17_PlacementContextVAfA01_cm9_ProposedG0VztFAA0c6VStackM0V_Tt1B5(uint64_t result, char *a2, uint64_t a3, char **a4, unint64_t a5)
{
  if ((*(a3 + 24) & 1) == 0)
  {
    v10 = *(a3 + 16);
    v11 = *(a3 + 8);
    v32[0] = *a3;
    v32[1] = v11;
    v32[2] = v10;
    if (v32[0] >= 1)
    {
      v22 = a4;
      v14 = result;

      v31 = MEMORY[0x1E69E7CC0];
      if ((v14 / v32[0] * v32[0]) >> 64 == (v14 / v32[0] * v32[0]) >> 63)
      {
        v29 = v14 / v32[0] * v32[0];
        v30 = MEMORY[0x1E69E7CC0];
        v24[0] = 2 * v32[0];
        MEMORY[0x1EEE9AC00](v15);
        v19[2] = &v30;
        v19[3] = v32;
        v20 = 1;
        v21 = &v31;
        _LazyLayout_Subviews.apply(from:style:to:)(&v29, v24, partial apply for specialized closure #1 in LazyStack<>.proposeSizes(at:subviews:context:cache:in:), v19);
        if (!*(v30 + 16))
        {

          a2 = v31;
LABEL_10:
          *v22 = a2;
          return result;
        }

        AlignmentKey.fraction.getter(a5);
        LOBYTE(v24[0]) = 0;
        v23 = 1;
        _LazyLayout_Subview.proposeSize(_:)(v10, 0, 0, 1, v24);
        a5 = v24[0];
        v5 = v24[1];
        v6 = v25;
        v7 = v26;
        v8 = v27;
        v9 = v28;
        a2 = v31;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_6:
          v17 = *(a2 + 2);
          v16 = *(a2 + 3);
          if (v17 >= v16 >> 1)
          {
            a2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, a2);
          }

          *(a2 + 2) = v17 + 1;
          v18 = &a2[48 * v17];
          *(v18 + 4) = a5;
          *(v18 + 5) = v5;
          v18[48] = v6;
          *(v18 + 7) = v7;
          v18[64] = v8;
          *(v18 + 9) = v9;

          goto LABEL_10;
        }
      }

      else
      {
        __break(1u);
      }

      a2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a2 + 2) + 1, 1, a2);
      goto LABEL_6;
    }
  }

  return result;
}

void specialized LazyStack<>.boundingRect(at:subviews:context:cache:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *&v198 = a7;
  *&v195 = a6;
  v194 = a5;
  v196 = a2;
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for StackPlacement<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for StackPlacement);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v201 = &v175 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v175 - v16;
  v197 = type metadata accessor for IndexSet();
  v193 = *(v197 - 8);
  MEMORY[0x1EEE9AC00](v197);
  v192 = &v175 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for _LazyStack_Cache<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for _LazyStack_Cache);
  v20 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v175 - v21;
  *&v23 = *(a3 + 40);
  if (*&v23 <= 0.0)
  {
    v24 = 0uLL;
    v25 = 0.0;
LABEL_125:
    *a8 = v25;
    *(a8 + 8) = 0;
    *(a8 + 16) = v24;
    *(a8 + 32) = *&v23 <= 0.0;
    return;
  }

  v200 = v23;
  v26 = *(a3 + 136);
  v27 = *(a3 + 144);
  v28 = *(a3 + 152);
  v29 = *(a3 + 160);
  outlined init with copy of _LazyStack_Cache<LazyHStackLayout>(a4, &v175 - v21);
  v205.origin.x = v26;
  v205.origin.y = v27;
  v205.size.width = v28;
  v205.size.height = v29;
  IsNull = CGRectIsNull(v205);
  v31 = 0.0;
  v32 = v26 + v28;
  if (v26 + v28 >= v26)
  {
    v33 = v26;
  }

  else
  {
    v33 = v26 + v28;
  }

  if (v26 > v32)
  {
    v32 = v26;
  }

  if (v33 > v32)
  {
    v34 = 0.0;
  }

  else
  {
    v34 = v32 - v33;
  }

  if (IsNull)
  {
    v35 = 0.0;
  }

  else
  {
    v35 = v34;
  }

  v36 = *(a3 + 12) == *MEMORY[0x1E698D3F8];
  v191 = v13;
  if (v36)
  {
    v37 = 0;
    v38 = *(v22 + 12);
    if (v38 > 0.0 && v35 > 0.0)
    {
LABEL_21:
      v39 = vabdd_f64(v38, v35);
      v40 = *(v22 + 13);
      if (v40 > 0.0 && v31 > 0.0)
      {
        if (v39 < 0.01 && vabdd_f64(v40, v31) < 0.01)
        {
          goto LABEL_25;
        }

        goto LABEL_31;
      }

      if (v39 >= 0.01)
      {
LABEL_31:
        v42 = *(v20 + 60);
        *&v199 = a8;
        v43 = a1;
        v44 = &v22[v42];
        v45 = MEMORY[0x1E69E7CC0];
        v46 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

        *v44 = v46;
        v47 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v45);

        v44[1] = v47;
        v204 = v45;
        lazy protocol witness table accessor for type TouchEvent and conformance TouchEvent(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50]);
        type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for [Int], MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
        lazy protocol witness table accessor for type [Int] and conformance [A]();
        v48 = v192;
        v49 = v197;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v50 = v44 + *(type metadata accessor for EstimationCache() + 24);
        a1 = v43;
        a8 = v199;
        (*(v193 + 40))(v50, v48, v49);
        v37 = 1;
        goto LABEL_32;
      }

LABEL_25:
      v37 = 0;
    }
  }

  else
  {
    v31 = *AGGraphGetValue();
    v38 = *(v22 + 12);
    if (v38 > 0.0 && v35 > 0.0)
    {
      goto LABEL_21;
    }

    v37 = 0;
    v41 = *(v22 + 13);
    if (v41 > 0.0 && v31 > 0.0)
    {
      if (vabdd_f64(v41, v31) >= 0.01)
      {
        goto LABEL_31;
      }

      goto LABEL_25;
    }
  }

LABEL_32:
  v51 = *(v20 + 60);
  if (!*(*&v22[v51] + 16))
  {
    v203 = 0;
    v204 = 0;
    v202[0] = v198 & 1;
    specialized LazyStack<>.measureEstimates(updatingPosition:index:minor:subviews:cache:)(&v204, &v203, 1, v196, v22, v194, v195, v198 & 0xFFFFFFFF00000001, *&v200, *&v200, &lazy cache variable for type metadata for _LazyStack_Cache<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, 0, partial apply for specialized closure #1 in LazyStack<>.measureEstimates(updatingPosition:index:minor:subviews:cache:), specialized LazyHVStack<>.lengthAndSpacing(subviews:predecessors:minorGeometry:));
  }

  v52 = COERCE_DOUBLE(EstimationCache.average.getter());
  if (v53)
  {
    v56 = 0.0;
  }

  else
  {
    v56 = v52;
  }

  v25 = (v54 + v56) * a1;
  v57 = *(v22 + 6);
  if (v57 == *(v22 + 7) || (v22[24] & 1) != 0)
  {
    goto LABEL_121;
  }

  v58 = *&v200 != *(v22 + 1);
  if (*&v200 != *(v22 + 2))
  {
    v58 = 1;
  }

  v59 = *v22 != 1 || v58;
  if ((v37 | v59))
  {
    goto LABEL_121;
  }

  if (!((a1 < 1) | v53 & 1))
  {
    v25 = v25 - v52;
  }

  v60 = a1 - v57;
  if (__OFSUB__(a1, v57))
  {
    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  v61 = a1 - v57;
  if (v60 < 0)
  {
    v61 = v57 - a1;
    if (__OFSUB__(0, v60))
    {
      goto LABEL_128;
    }
  }

  *&v199 = a1;
  v62 = *&v22[v51];
  v63 = *(v62 + 16);
  v64 = v61;
  v190 = v54;
  v189 = DWORD1(v198);
  if (v63)
  {
    *&v55 = EstimationCache.average.getter();
    if (v66)
    {
      *&v55 = 0.0;
    }

    v67 = (v65 + *&v55) * v64;
    v68 = *(v22 + 10);
    v69 = *(v22 + 11);
    v70 = *(v22 + 8);
    if (*(v62 + 16))
    {
      *&v55 = EstimationCache.average.getter();
      if (v72)
      {
        *&v55 = 0.0;
      }

      v73 = v71 + *&v55;
    }

    else
    {
      v73 = 32.0;
    }

    v54 = v190;
  }

  else
  {
    v73 = 32.0;
    v67 = v64 * 32.0;
    v68 = *(v22 + 10);
    v69 = *(v22 + 11);
    v70 = *(v22 + 8);
  }

  a1 = v199;
  v74 = v70 + v73 * v60;
  if (v74 >= 0.0)
  {
    v25 = v74;
  }

  v75 = v69 - v68;
  if (v67 >= v75 * 3.0)
  {
    *&v55 = -1.0;
    if (v57 <= v199)
    {
LABEL_115:
      v25 = v56 + v25;
      goto LABEL_120;
    }

    goto LABEL_99;
  }

  v188 = v57;
  *(v17 + 152) = 0u;
  v180 = v17 + 152;
  *(v17 + 248) = 0u;
  *(v17 + 232) = 0u;
  *(v17 + 216) = 0u;
  *(v17 + 200) = 0u;
  *(v17 + 184) = 0u;
  *(v17 + 168) = 0u;
  v76 = &v17[*(v191 + 104)];
  v77 = MEMORY[0x1E69E7CC0];
  v177 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *v76 = v177;
  v178 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v77);
  v76[1] = v178;
  v78 = type metadata accessor for EstimationCache();
  v179 = v60;
  v79 = *(v78 + 24);
  v204 = v77;
  v80 = lazy protocol witness table accessor for type TouchEvent and conformance TouchEvent(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50]);
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for [Int], MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
  v82 = v81;
  v83 = lazy protocol witness table accessor for type [Int] and conformance [A]();
  v187 = v76;
  v186 = v79;
  v84 = MEMORY[0x1E69E7CC0];
  v184 = v82;
  v183 = v83;
  v185 = v80;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v85 = v195;
  *v17 = v194;
  *(v17 + 1) = v85;
  v17[16] = v198 & 1;
  *(v17 + 5) = v189;
  *(v17 + 4) = 1;
  v86 = v200;
  *(v17 + 5) = v200;
  *(v17 + 6) = v86;
  v17[24] = 0;
  *(v17 + 56) = vdupq_n_s64(0x7FF0000000000000uLL);
  *(v17 + 18) = 0;
  *(v17 + 10) = a1;
  v17[88] = 0;
  *(v17 + 12) = 0;
  v17[104] = 0;
  *(v17 + 14) = 0;
  *(v17 + 15) = 0;
  v17[128] = 1;
  *(v17 + 17) = v84;
  v87 = (v17 + 136);
  *(v17 + 18) = 0;
  *(v17 + 33) = v84;
  v181 = xmmword_18DDAB4E0;
  *(v17 + 17) = xmmword_18DDAB4E0;
  *(v17 + 18) = xmmword_18DDAB4F0;
  v182 = xmmword_18DDAB4F0;
  *(v17 + 19) = xmmword_18DDAB4F0;
  v17[320] = 0;
  if ((v179 & 0x8000000000000000) == 0)
  {
    v88 = v188;
    specialized StackPlacement.log(_:)(v70, INFINITY, INFINITY, v17, v188);
    *(v17 + 12) = v88;
    *(v17 + 14) = v70;
    v17[104] = 0;
    *(v17 + 15) = a1;
    v17[128] = 0;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v90 = *(v17 + 17);
    if (isUniquelyReferenced_nonNull_native)
    {
      v91 = *(v90 + 2);
      v92 = swift_isUniquelyReferenced_nonNull_native();
      *v87 = v90;
      if ((v92 & 1) == 0)
      {
        v90 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v91, 1, v90);
        *v87 = v90;
      }

      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, v91, 0);
    }

    else
    {
      v101 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI19_LazyLayout_SubviewV_Tt1g5(0, *(v90 + 3) >> 1);

      v90 = v101;
    }

    *(v17 + 17) = v90;
    *(v17 + 18) = 0;
    v102 = v180;
    outlined destroy of GlassEntryView?(v180, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
    *v102 = 0u;
    *(v102 + 1) = 0u;
    *(v102 + 2) = 0u;
    *(v102 + 3) = 0u;
    *(v102 + 4) = 0u;
    *(v102 + 5) = 0u;
    *(v102 + 6) = 0u;
    v103 = swift_isUniquelyReferenced_nonNull_native();
    v104 = *(v17 + 33);
    v176 = v51;
    if (v103)
    {
      v105 = *(v104 + 2);
      v106 = swift_isUniquelyReferenced_nonNull_native();
      *(v17 + 33) = v104;
      if ((v106 & 1) == 0)
      {
        v104 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v105, 1, v104);
        *(v17 + 33) = v104;
      }

      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, v105, 0);
    }

    else
    {
      v107 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI25_LazyLayout_PlacedSubviewV_Tt1g5(0, *(v104 + 3) >> 1);

      v104 = v107;
    }

    *(v17 + 33) = v104;
    v108 = v182;
    *(v17 + 17) = v181;
    *(v17 + 18) = v108;
    *(v17 + 19) = v108;
    v17[320] = 0;
    v109 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v84);

    v110 = v187;
    *v187 = v109;
    v111 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v84);

    *(v110 + 1) = v111;
    v204 = v84;
    v112 = v192;
    v113 = v197;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v114 = (*(v193 + 40))(&v110[v186], v112, v113);
    v115 = v188;
    if (v57 >= 1)
    {
      v17[104] = 1;
      *(v17 + 12) = v57 - 1;
      v115 = v57 - 1;
    }

    v203 = 2;
    v204 = v115;
    MEMORY[0x1EEE9AC00](v114);
    v174 = v17;
    _LazyLayout_Subviews.applyNodes(from:style:to:)(&v204, &v203, closure #1 in StackPlacement.place(subviews:from:position:stopping:style:)specialized partial apply, &v173);
    specialized StackPlacement.flushMinorGroup()();
    v51 = v176;
LABEL_93:
    v135 = *(v17 + 38);
    v136 = *(v17 + 39);
    a1 = v199;
    if (v135 >= v136)
    {
      outlined destroy of StackPlacement<LazyHStackLayout>(v17);
      *&v55 = -1.0;
      if (v57 > a1)
      {
LABEL_99:
        LODWORD(v182) = 0;
        goto LABEL_100;
      }

      v54 = v190;
      v25 = v56 + v25;
    }

    else
    {
      if (v135 > v136)
      {
LABEL_129:
        __break(1u);
LABEL_130:
        __break(1u);
        goto LABEL_131;
      }

      outlined destroy of StackPlacement<LazyHStackLayout>(v17);
      if (v135 < 0.0)
      {
        *&v55 = -1.0;
        v54 = v190;
        if (v57 <= a1)
        {
          goto LABEL_115;
        }

        goto LABEL_99;
      }

      *&v55 = v136 - v135;
      v54 = v190;
      if (v57 > a1)
      {
        LODWORD(v182) = 1;
        v25 = v135;
LABEL_100:
        v199 = v55;
        v137 = v201;
        if (v75 >= 0.0)
        {
          *(v201 + 152) = 0u;
          v138 = (v137 + 152);
          *(v137 + 248) = 0u;
          *(v137 + 232) = 0u;
          *(v137 + 216) = 0u;
          *(v137 + 200) = 0u;
          *(v137 + 184) = 0u;
          *(v137 + 168) = 0u;
          v139 = (v137 + *(v191 + 104));
          v140 = MEMORY[0x1E69E7CC0];
          v187 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
          *v139 = v187;
          v141 = v140;
          v188 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v140);
          v139[1] = v188;
          v142 = *(type metadata accessor for EstimationCache() + 24);
          v204 = v141;
          v143 = lazy protocol witness table accessor for type TouchEvent and conformance TouchEvent(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50]);
          type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for [Int], MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
          v145 = v144;
          v146 = lazy protocol witness table accessor for type [Int] and conformance [A]();
          v191 = v142;
          v184 = v139;
          v185 = v145;
          v183 = v146;
          v186 = v143;
          v147 = MEMORY[0x1E69E7CC0];
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v148 = v195;
          *v137 = v194;
          *(v137 + 8) = v148;
          *(v137 + 16) = v198 & 1;
          *(v137 + 20) = v189;
          *(v201 + 32) = 1;
          v149 = v200;
          *(v201 + 40) = v200;
          *(v201 + 48) = v149;
          *(v201 + 24) = 0;
          *(v201 + 56) = 0;
          *(v201 + 64) = v75;
          *(v201 + 72) = 0;
          *(v201 + 80) = a1;
          *(v201 + 88) = 0;
          *(v201 + 96) = 0;
          *(v201 + 104) = 0;
          *(v201 + 120) = 0;
          *(v201 + 112) = 0;
          *(v201 + 128) = 1;
          v150 = v201;
          *(v201 + 136) = v147;
          v151 = (v150 + 136);
          *(v201 + 144) = 0;
          *(v201 + 264) = v147;
          v198 = xmmword_18DDAB4E0;
          *(v201 + 272) = xmmword_18DDAB4E0;
          *(v201 + 288) = xmmword_18DDAB4F0;
          v195 = xmmword_18DDAB4F0;
          *(v201 + 304) = xmmword_18DDAB4F0;
          *(v201 + 320) = 0;
          specialized StackPlacement.log(_:)(0.0, 0.0, v75, v201, 0);
          *(v201 + 96) = 0;
          *(v201 + 104) = 0;
          *(v201 + 120) = 0;
          *(v201 + 112) = 0;
          *(v201 + 128) = 1;
          v152 = v201;
          v153 = swift_isUniquelyReferenced_nonNull_native();
          v154 = *v151;
          if (v153)
          {
            v155 = *(v154 + 2);
            v156 = swift_isUniquelyReferenced_nonNull_native();
            *v151 = v154;
            if ((v156 & 1) == 0)
            {
              v154 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v155, 1, v154);
              *v151 = v154;
            }

            v157 = v184;
            specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, v155, 0);
            v152 = v201;
          }

          else
          {
            v158 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI19_LazyLayout_SubviewV_Tt1g5(0, *(v154 + 3) >> 1);

            v154 = v158;
            v157 = v184;
          }

          *(v152 + 136) = v154;
          *(v152 + 144) = 0;
          outlined destroy of GlassEntryView?(v138, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
          *v138 = 0u;
          v138[1] = 0u;
          v138[2] = 0u;
          v138[3] = 0u;
          v138[4] = 0u;
          v138[5] = 0u;
          v138[6] = 0u;
          v159 = swift_isUniquelyReferenced_nonNull_native();
          v160 = *(v152 + 264);
          if (v159)
          {
            v161 = *(v160 + 2);
            v162 = swift_isUniquelyReferenced_nonNull_native();
            *(v152 + 264) = v160;
            if ((v162 & 1) == 0)
            {
              v160 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v161, 1, v160);
              *(v152 + 264) = v160;
            }

            specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, v161, 0);
          }

          else
          {
            v163 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI25_LazyLayout_PlacedSubviewV_Tt1g5(0, *(v160 + 3) >> 1);

            v160 = v163;
          }

          *(v152 + 264) = v160;
          v164 = v195;
          *(v152 + 272) = v198;
          *(v152 + 288) = v164;
          *(v152 + 304) = v164;
          *(v152 + 320) = 0;
          v165 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v147);

          *v157 = v165;
          v166 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v147);

          v157[1] = v166;
          v204 = v147;
          v167 = v192;
          v168 = v197;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v169 = (*(v193 + 40))(v157 + v191, v167, v168);
          v203 = 2;
          v204 = 0;
          MEMORY[0x1EEE9AC00](v169);
          v174 = v201;
          _LazyLayout_Subviews.applyNodes(from:style:to:)(&v204, &v203, partial apply for specialized closure #1 in StackPlacement.place(subviews:from:position:stopping:style:), &v173);
          v170 = v201;
          specialized StackPlacement.flushMinorGroup()();
          v171 = *(v170 + 304);
          v172 = *(v170 + 312);
          if (v171 >= v172)
          {
            outlined destroy of StackPlacement<LazyHStackLayout>(v170);
            v54 = v190;
            v55 = v199;
            if (v182)
            {
              goto LABEL_120;
            }

            goto LABEL_115;
          }

          if (v171 <= v172)
          {
            outlined destroy of StackPlacement<LazyHStackLayout>(v170);
            *&v55 = v172 - v171;
            v25 = v171;
            v54 = v190;
            goto LABEL_120;
          }

          goto LABEL_130;
        }

        goto LABEL_127;
      }

      v25 = v135;
    }

LABEL_120:
    if (*&v55 >= 0.0)
    {
LABEL_124:
      v199 = v55;
      _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12HStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e76VyxG0E0RtzrlE12boundingRect2at8subviews7context5cacheSo6CGRectVSgSi_AA01_C15M50_SubviewsVAA01_cM17_PlacementContextVAFtFSSyXEfu0_SiSo0Z0VTf1c_n(a1, v25, 0.0, *&v55, *&v200);
      outlined destroy of _LazyStack_Cache<LazyHStackLayout>(v22);
      *&v24 = v199;
      *&v23 = v200;
      *(&v24 + 1) = v200;
      goto LABEL_125;
    }

LABEL_121:
    if (*(*&v22[v51] + 16))
    {
      *&v55 = v54;
    }

    else
    {
      *&v55 = 0.0;
    }

    goto LABEL_124;
  }

  v202[0] = 0;
  v93 = v188;
  v94 = _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE16collectBackwards33_973C9973BC16DEAF0CF3109FFDE313214from2to8subviews5style5atEndSaySayAA01_C14Layout_SubviewVGGSi_SiAA01_cS9_SubviewsVAA23_ViewList_IteratorStyleVSbztFAA0c6HStackS0V_Tt4B5Tm(a1, v188, v196, 2uLL, v202, closure #1 in LazyStack<>.collectBackwards(from:to:subviews:style:atEnd:)partial apply);
  specialized StackPlacement.measureBackwards(subviews:lastIndex:lastPosition:atStart:atEnd:allowBeforeFirst:)(v94, v93, a1 == 0, v202[0], 0, &lazy cache variable for type metadata for StackPlacement<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, v70, specialized flushBackwards #1 <A>(includeEmpty:) in StackPlacement.measureBackwards(subviews:lastIndex:lastPosition:atStart:atEnd:allowBeforeFirst:), specialized LazyHVStack<>.lengthAndSpacing(subviews:predecessors:minorGeometry:));

  v95 = *(v17 + 12);
  v96 = *(v17 + 14);
  specialized StackPlacement.log(_:)(v96, *(v17 + 7), *(v17 + 8), v17, v95);
  *(v17 + 12) = v95;
  *(v17 + 14) = v96;
  v17[104] = 0;
  *(v17 + 15) = a1;
  v17[128] = 0;
  v97 = swift_isUniquelyReferenced_nonNull_native();
  v98 = *(v17 + 17);
  if (v97)
  {
    v99 = *(v98 + 2);
    v100 = swift_isUniquelyReferenced_nonNull_native();
    *v87 = v98;
    if ((v100 & 1) == 0)
    {
      v98 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v99, 1, v98);
      *v87 = v98;
    }

    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, v99, 0);
  }

  else
  {
    v116 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI19_LazyLayout_SubviewV_Tt1g5(0, *(v98 + 3) >> 1);

    v98 = v116;
  }

  *(v17 + 17) = v98;

  *(v17 + 18) = 0;
  v117 = v180;
  outlined destroy of GlassEntryView?(v180, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
  *v117 = 0u;
  *(v117 + 1) = 0u;
  *(v117 + 2) = 0u;
  *(v117 + 3) = 0u;
  *(v117 + 4) = 0u;
  *(v117 + 5) = 0u;
  *(v117 + 6) = 0u;
  v118 = swift_isUniquelyReferenced_nonNull_native();
  v119 = *(v17 + 33);
  if (v118)
  {
    v120 = *(v119 + 2);
    v121 = swift_isUniquelyReferenced_nonNull_native();
    *(v17 + 33) = v119;
    if ((v121 & 1) == 0)
    {
      v119 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v120, 1, v119);
      *(v17 + 33) = v119;
    }

    v122 = v51;
    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, v120, 0);
  }

  else
  {
    v122 = v51;
    v123 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI25_LazyLayout_PlacedSubviewV_Tt1g5(0, *(v119 + 3) >> 1);

    v119 = v123;
  }

  *(v17 + 33) = v119;
  v124 = v182;
  *(v17 + 17) = v181;
  *(v17 + 18) = v124;
  *(v17 + 19) = v124;
  v17[320] = 0;
  v125 = MEMORY[0x1E69E7CC0];
  v126 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v127 = v187;

  *v127 = v126;
  v128 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v125);

  v127[1] = v128;
  v204 = v125;
  v129 = v192;
  v130 = v197;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v131 = (*(v193 + 40))(v127 + v186, v129, v130);
  v132 = *(v17 + 4);
  v133 = __OFSUB__(v95, v132);
  v134 = v95 - v132;
  v51 = v122;
  if (v134 < 0 != v133)
  {
LABEL_92:
    v203 = 2;
    v204 = v95;
    MEMORY[0x1EEE9AC00](v131);
    v174 = v17;
    _LazyLayout_Subviews.applyNodes(from:style:to:)(&v204, &v203, closure #1 in StackPlacement.place(subviews:from:position:stopping:style:)specialized partial apply, &v173);
    specialized StackPlacement.flushMinorGroup()();
    goto LABEL_93;
  }

  v17[104] = 1;
  if (!v133)
  {
    *(v17 + 12) = v134;
    v95 = v134;
    goto LABEL_92;
  }

LABEL_131:
  __break(1u);
}

{
  *&v200 = a7;
  *&v197 = a6;
  v196 = a5;
  v198 = a2;
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for StackPlacement<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for StackPlacement);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v202 = &v175 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v175 - v16;
  v199 = type metadata accessor for IndexSet();
  v195 = *(v199 - 8);
  MEMORY[0x1EEE9AC00](v199);
  v194 = &v175 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for _LazyStack_Cache<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for _LazyStack_Cache);
  v20 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v175 - v21;
  *&v23 = *(a3 + 32);
  if (*&v23 <= 0.0)
  {
    v24 = 0uLL;
    v25 = 0.0;
LABEL_128:
    *a8 = 0;
    *(a8 + 8) = v24;
    *(a8 + 24) = v25;
    *(a8 + 32) = *&v23 <= 0.0;
    return;
  }

  v201 = v23;
  v26 = *(a3 + 136);
  v27 = *(a3 + 144);
  v28 = *(a3 + 152);
  v29 = *(a3 + 160);
  outlined init with copy of _LazyStack_Cache<LazyVStackLayout>(a4, &v175 - v21);
  v206.origin.x = v26;
  v206.origin.y = v27;
  v206.size.width = v28;
  v206.size.height = v29;
  IsNull = CGRectIsNull(v206);
  v31 = 0.0;
  v32 = v27 + v29;
  if (v27 + v29 >= v27)
  {
    v33 = v27;
  }

  else
  {
    v33 = v27 + v29;
  }

  if (v27 > v32)
  {
    v32 = v27;
  }

  if (v33 > v32)
  {
    v34 = 0.0;
  }

  else
  {
    v34 = v32 - v33;
  }

  if (IsNull)
  {
    v35 = 0.0;
  }

  else
  {
    v35 = v34;
  }

  v36 = *(a3 + 12) == *MEMORY[0x1E698D3F8];
  v192 = v13;
  if (v36)
  {
    v37 = 0;
    v38 = *(v22 + 12);
    if (v38 > 0.0 && v35 > 0.0)
    {
LABEL_21:
      v39 = vabdd_f64(v38, v35);
      v40 = *(v22 + 13);
      if (v40 > 0.0 && v31 > 0.0)
      {
        if (v39 < 0.01 && vabdd_f64(v40, v31) < 0.01)
        {
          goto LABEL_25;
        }

        goto LABEL_31;
      }

      if (v39 >= 0.01)
      {
LABEL_31:
        v42 = *(v20 + 60);
        *&v193 = a8;
        v43 = a1;
        v44 = &v22[v42];
        v45 = MEMORY[0x1E69E7CC0];
        v46 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

        *v44 = v46;
        v47 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v45);

        v44[1] = v47;
        *&v205[0] = v45;
        lazy protocol witness table accessor for type TouchEvent and conformance TouchEvent(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50]);
        type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for [Int], MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
        lazy protocol witness table accessor for type [Int] and conformance [A]();
        v48 = v194;
        v49 = v199;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v50 = v44 + *(type metadata accessor for EstimationCache() + 24);
        a1 = v43;
        a8 = v193;
        (*(v195 + 40))(v50, v48, v49);
        v37 = 1;
        goto LABEL_32;
      }

LABEL_25:
      v37 = 0;
    }
  }

  else
  {
    v31 = *(AGGraphGetValue() + 8);
    v38 = *(v22 + 12);
    if (v38 > 0.0 && v35 > 0.0)
    {
      goto LABEL_21;
    }

    v37 = 0;
    v41 = *(v22 + 13);
    if (v41 > 0.0 && v31 > 0.0)
    {
      if (vabdd_f64(v41, v31) >= 0.01)
      {
        goto LABEL_31;
      }

      goto LABEL_25;
    }
  }

LABEL_32:
  v51 = *(v20 + 60);
  if (!*(*&v22[v51] + 16))
  {
    v204 = 0;
    v205[0] = 0.0;
    v203[0] = v200 & 1;
    specialized LazyStack<>.measureEstimates(updatingPosition:index:minor:subviews:cache:)(v205, &v204, 1, v198, v22, v196, v197, v200 & 0xFFFFFFFF00000001, *&v201, *&v201, &lazy cache variable for type metadata for _LazyStack_Cache<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, 1u, partial apply for specialized closure #1 in LazyStack<>.measureEstimates(updatingPosition:index:minor:subviews:cache:), specialized LazyHVStack<>.lengthAndSpacing(subviews:predecessors:minorGeometry:));
  }

  v52 = COERCE_DOUBLE(EstimationCache.average.getter());
  if (v53)
  {
    v56 = 0.0;
  }

  else
  {
    v56 = v52;
  }

  *&v55 = (v54 + v56) * a1;
  v57 = *(v22 + 6);
  if (v57 == *(v22 + 7) || (v22[24] & 1) != 0)
  {
    goto LABEL_124;
  }

  v58 = *&v201 != *(v22 + 1);
  if (*&v201 != *(v22 + 2))
  {
    v58 = 1;
  }

  v59 = *v22 != 1 || v58;
  if ((v37 | v59))
  {
    goto LABEL_124;
  }

  if ((a1 < 1) | v53 & 1)
  {
    v60 = (v54 + v56) * a1;
  }

  else
  {
    v60 = *&v55 - v52;
  }

  v61 = a1 - v57;
  if (__OFSUB__(a1, v57))
  {
    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v62 = a1 - v57;
  if (v61 < 0)
  {
    v62 = v57 - a1;
    if (__OFSUB__(0, v61))
    {
      goto LABEL_133;
    }
  }

  v191 = a1;
  v63 = *&v22[v51];
  v64 = *(v63 + 16);
  v65 = v62;
  v190 = v54;
  v189 = DWORD1(v200);
  if (v64)
  {
    *&v55 = EstimationCache.average.getter();
    if (v67)
    {
      *&v55 = 0.0;
    }

    v68 = (v66 + *&v55) * v65;
    v69 = *(v22 + 10);
    v70 = *(v22 + 11);
    v71 = *(v22 + 8);
    if (*(v63 + 16))
    {
      *&v55 = EstimationCache.average.getter();
      if (v73)
      {
        *&v55 = 0.0;
      }

      v74 = v72 + *&v55;
    }

    else
    {
      v74 = 32.0;
    }

    v54 = v190;
  }

  else
  {
    v74 = 32.0;
    v68 = v65 * 32.0;
    v69 = *(v22 + 10);
    v70 = *(v22 + 11);
    v71 = *(v22 + 8);
  }

  a1 = v191;
  *&v55 = v71 + v74 * v61;
  if (*&v55 < 0.0)
  {
    *&v55 = v60;
  }

  v75 = v70 - v69;
  if (v68 >= (v70 - v69) * 3.0)
  {
    v25 = -1.0;
    if (v57 <= v191)
    {
      goto LABEL_122;
    }

    LODWORD(v183) = 0;
    goto LABEL_106;
  }

  v193 = v55;
  v188 = v57;
  *(v17 + 152) = 0u;
  v180 = v17 + 152;
  *(v17 + 248) = 0u;
  *(v17 + 232) = 0u;
  *(v17 + 216) = 0u;
  *(v17 + 200) = 0u;
  *(v17 + 184) = 0u;
  *(v17 + 168) = 0u;
  v76 = &v17[*(v192 + 104)];
  v77 = MEMORY[0x1E69E7CC0];
  v177 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *v76 = v177;
  v178 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v77);
  v76[1] = v178;
  v78 = type metadata accessor for EstimationCache();
  v179 = v61;
  v79 = *(v78 + 24);
  *&v205[0] = v77;
  v80 = lazy protocol witness table accessor for type TouchEvent and conformance TouchEvent(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50]);
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for [Int], MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
  v82 = v81;
  v83 = lazy protocol witness table accessor for type [Int] and conformance [A]();
  v187 = v76;
  v186 = v79;
  v84 = MEMORY[0x1E69E7CC0];
  v184 = v82;
  v183 = v83;
  v185 = v80;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v85 = v197;
  *v17 = v196;
  *(v17 + 1) = v85;
  v17[16] = v200 & 1;
  *(v17 + 5) = v189;
  *(v17 + 4) = 1;
  v86 = v201;
  *(v17 + 5) = v201;
  *(v17 + 6) = v86;
  v17[24] = 1;
  *(v17 + 56) = vdupq_n_s64(0x7FF0000000000000uLL);
  *(v17 + 18) = 0;
  *(v17 + 10) = a1;
  v17[88] = 0;
  *(v17 + 12) = 0;
  v17[104] = 0;
  *(v17 + 14) = 0;
  *(v17 + 15) = 0;
  v17[128] = 1;
  *(v17 + 17) = v84;
  v87 = (v17 + 136);
  *(v17 + 18) = 0;
  *(v17 + 33) = v84;
  v181 = xmmword_18DDAB4E0;
  *(v17 + 17) = xmmword_18DDAB4E0;
  *(v17 + 18) = xmmword_18DDAB4F0;
  v182 = xmmword_18DDAB4F0;
  *(v17 + 19) = xmmword_18DDAB4F0;
  v17[320] = 0;
  if ((v179 & 0x8000000000000000) == 0)
  {
    v88 = v188;
    specialized StackPlacement.log(_:)(v71, INFINITY, INFINITY, v17, v188);
    *(v17 + 12) = v88;
    *(v17 + 14) = v71;
    v17[104] = 0;
    *(v17 + 15) = a1;
    v17[128] = 0;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v90 = *(v17 + 17);
    if (isUniquelyReferenced_nonNull_native)
    {
      v91 = *(v90 + 2);
      v92 = swift_isUniquelyReferenced_nonNull_native();
      *v87 = v90;
      if ((v92 & 1) == 0)
      {
        v90 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v91, 1, v90);
        *v87 = v90;
      }

      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, v91, 0);
    }

    else
    {
      v101 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI19_LazyLayout_SubviewV_Tt1g5(0, *(v90 + 3) >> 1);

      v90 = v101;
    }

    *(v17 + 17) = v90;
    *(v17 + 18) = 0;
    v102 = v180;
    outlined destroy of GlassEntryView?(v180, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
    *v102 = 0u;
    *(v102 + 1) = 0u;
    *(v102 + 2) = 0u;
    *(v102 + 3) = 0u;
    *(v102 + 4) = 0u;
    *(v102 + 5) = 0u;
    *(v102 + 6) = 0u;
    v103 = swift_isUniquelyReferenced_nonNull_native();
    v104 = *(v17 + 33);
    v176 = v51;
    if (v103)
    {
      v105 = *(v104 + 2);
      v106 = swift_isUniquelyReferenced_nonNull_native();
      *(v17 + 33) = v104;
      if ((v106 & 1) == 0)
      {
        v104 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v105, 1, v104);
        *(v17 + 33) = v104;
      }

      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, v105, 0);
    }

    else
    {
      v107 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI25_LazyLayout_PlacedSubviewV_Tt1g5(0, *(v104 + 3) >> 1);

      v104 = v107;
    }

    *(v17 + 33) = v104;
    v108 = v182;
    *(v17 + 17) = v181;
    *(v17 + 18) = v108;
    *(v17 + 19) = v108;
    v17[320] = 0;
    v109 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v84);

    v110 = v187;
    *v187 = v109;
    v111 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v84);

    *(v110 + 1) = v111;
    *&v205[0] = v84;
    v112 = v194;
    v113 = v199;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v114 = (*(v195 + 40))(&v110[v186], v112, v113);
    v115 = *&v188;
    if (v57 >= 1)
    {
      v17[104] = 1;
      *(v17 + 12) = v57 - 1;
      *&v115 = v57 - 1;
    }

    v204 = 2;
    v205[0] = v115;
    MEMORY[0x1EEE9AC00](v114);
    v174 = v17;
    _LazyLayout_Subviews.applyNodes(from:style:to:)(v205, &v204, closure #1 in StackPlacement.place(subviews:from:position:stopping:style:)specialized partial apply, &v173);
    specialized StackPlacement.flushMinorGroup()();
    v51 = v176;
    goto LABEL_94;
  }

  v203[0] = 0;
  v93 = v188;
  v94 = _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE16collectBackwards33_973C9973BC16DEAF0CF3109FFDE313214from2to8subviews5style5atEndSaySayAA01_C14Layout_SubviewVGGSi_SiAA01_cS9_SubviewsVAA23_ViewList_IteratorStyleVSbztFAA0c6HStackS0V_Tt4B5Tm(a1, v188, v198, 2uLL, v203, partial apply for closure #1 in LazyStack<>.collectBackwards(from:to:subviews:style:atEnd:));
  specialized StackPlacement.measureBackwards(subviews:lastIndex:lastPosition:atStart:atEnd:allowBeforeFirst:)(v94, v93, a1 == 0, v203[0], 0, &lazy cache variable for type metadata for StackPlacement<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, v71, specialized flushBackwards #1 <A>(includeEmpty:) in StackPlacement.measureBackwards(subviews:lastIndex:lastPosition:atStart:atEnd:allowBeforeFirst:), specialized LazyHVStack<>.lengthAndSpacing(subviews:predecessors:minorGeometry:));

  v95 = *(v17 + 12);
  v96 = *(v17 + 14);
  specialized StackPlacement.log(_:)(v96, *(v17 + 7), *(v17 + 8), v17, v95);
  *(v17 + 12) = v95;
  *(v17 + 14) = v96;
  v17[104] = 0;
  *(v17 + 15) = a1;
  v17[128] = 0;
  v97 = swift_isUniquelyReferenced_nonNull_native();
  v98 = *(v17 + 17);
  if (v97)
  {
    v99 = *(v98 + 2);
    v100 = swift_isUniquelyReferenced_nonNull_native();
    *v87 = v98;
    if ((v100 & 1) == 0)
    {
      v98 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v99, 1, v98);
      *v87 = v98;
    }

    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, v99, 0);
  }

  else
  {
    v116 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI19_LazyLayout_SubviewV_Tt1g5(0, *(v98 + 3) >> 1);

    v98 = v116;
  }

  *(v17 + 17) = v98;

  *(v17 + 18) = 0;
  v117 = v180;
  outlined destroy of GlassEntryView?(v180, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
  *v117 = 0u;
  *(v117 + 1) = 0u;
  *(v117 + 2) = 0u;
  *(v117 + 3) = 0u;
  *(v117 + 4) = 0u;
  *(v117 + 5) = 0u;
  *(v117 + 6) = 0u;
  v118 = swift_isUniquelyReferenced_nonNull_native();
  v119 = *(v17 + 33);
  if (v118)
  {
    v120 = *(v119 + 2);
    v121 = swift_isUniquelyReferenced_nonNull_native();
    *(v17 + 33) = v119;
    if ((v121 & 1) == 0)
    {
      v119 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v120, 1, v119);
      *(v17 + 33) = v119;
    }

    v122 = v51;
    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, v120, 0);
  }

  else
  {
    v122 = v51;
    v123 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI25_LazyLayout_PlacedSubviewV_Tt1g5(0, *(v119 + 3) >> 1);

    v119 = v123;
  }

  *(v17 + 33) = v119;
  v124 = v182;
  *(v17 + 17) = v181;
  *(v17 + 18) = v124;
  *(v17 + 19) = v124;
  v17[320] = 0;
  v125 = MEMORY[0x1E69E7CC0];
  v126 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v127 = v187;

  *v127 = v126;
  v128 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v125);

  v127[1] = v128;
  *&v205[0] = v125;
  v129 = v194;
  v130 = v199;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v131 = (*(v195 + 40))(v127 + v186, v129, v130);
  v132 = *(v17 + 4);
  v133 = __OFSUB__(v95, v132);
  v134 = v95 - v132;
  v51 = v122;
  if (v134 < 0 != v133)
  {
LABEL_93:
    v204 = 2;
    *&v205[0] = v95;
    MEMORY[0x1EEE9AC00](v131);
    v174 = v17;
    _LazyLayout_Subviews.applyNodes(from:style:to:)(v205, &v204, closure #1 in StackPlacement.place(subviews:from:position:stopping:style:)specialized partial apply, &v173);
    specialized StackPlacement.flushMinorGroup()();
LABEL_94:
    v136 = *(v17 + 38);
    v135 = *(v17 + 39);
    a1 = v191;
    if (v136 >= v135)
    {
      outlined destroy of StackPlacement<LazyVStackLayout>(v17);
      v25 = -1.0;
      if (v57 <= a1)
      {
        v54 = v190;
        goto LABEL_102;
      }

      goto LABEL_100;
    }

    if (v136 > v135)
    {
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
      goto LABEL_136;
    }

    outlined destroy of StackPlacement<LazyVStackLayout>(v17);
    if (v136 < 0.0)
    {
      v25 = -1.0;
      v54 = v190;
      if (v57 <= a1)
      {
LABEL_102:
        *(&v55 + 1) = *(&v193 + 1);
        *&v55 = v56 + *&v193;
        if (v25 >= 0.0)
        {
          goto LABEL_127;
        }

        goto LABEL_124;
      }

LABEL_100:
      LODWORD(v183) = 0;
      v55 = v193;
      goto LABEL_106;
    }

    v25 = v135 - v136;
    v54 = v190;
    if (v57 <= a1)
    {
      *&v55 = v136;
      if (v25 >= 0.0)
      {
        goto LABEL_127;
      }

      goto LABEL_124;
    }

    LODWORD(v183) = 1;
    *&v55 = v136;
LABEL_106:
    v193 = v55;
    v137 = v202;
    if (v75 >= 0.0)
    {
      *(v202 + 152) = 0u;
      v138 = (v137 + 152);
      *(v137 + 248) = 0u;
      *(v137 + 232) = 0u;
      *(v137 + 216) = 0u;
      *(v137 + 200) = 0u;
      *(v137 + 184) = 0u;
      *(v137 + 168) = 0u;
      v139 = (v137 + *(v192 + 104));
      v140 = MEMORY[0x1E69E7CC0];
      v188 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      *v139 = v188;
      v141 = *&v140;
      v191 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v140);
      v139[1] = v191;
      v142 = *(type metadata accessor for EstimationCache() + 24);
      v205[0] = v141;
      v143 = lazy protocol witness table accessor for type TouchEvent and conformance TouchEvent(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50]);
      type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for [Int], MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
      v145 = v144;
      v146 = lazy protocol witness table accessor for type [Int] and conformance [A]();
      v192 = v142;
      v185 = v139;
      v186 = v145;
      v184 = v146;
      v187 = v143;
      v147 = MEMORY[0x1E69E7CC0];
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v148 = v197;
      *v137 = v196;
      *(v137 + 8) = v148;
      *(v137 + 16) = v200 & 1;
      *(v137 + 20) = v189;
      *(v202 + 32) = 1;
      v149 = v201;
      *(v202 + 40) = v201;
      *(v202 + 48) = v149;
      *(v202 + 24) = 1;
      *(v202 + 56) = 0;
      *(v202 + 64) = v75;
      *(v202 + 72) = 0;
      *(v202 + 80) = a1;
      *(v202 + 88) = 0;
      *(v202 + 96) = 0;
      *(v202 + 104) = 0;
      *(v202 + 120) = 0;
      *(v202 + 112) = 0;
      *(v202 + 128) = 1;
      v150 = v202;
      *(v202 + 136) = v147;
      v151 = (v150 + 136);
      *(v202 + 144) = 0;
      *(v202 + 264) = v147;
      v200 = xmmword_18DDAB4E0;
      *(v202 + 272) = xmmword_18DDAB4E0;
      *(v202 + 288) = xmmword_18DDAB4F0;
      v197 = xmmword_18DDAB4F0;
      *(v202 + 304) = xmmword_18DDAB4F0;
      *(v202 + 320) = 0;
      specialized StackPlacement.log(_:)(0.0, 0.0, v70 - v69, v202, 0);
      *(v202 + 96) = 0;
      *(v202 + 104) = 0;
      *(v202 + 120) = 0;
      *(v202 + 112) = 0;
      *(v202 + 128) = 1;
      v152 = v202;
      v153 = swift_isUniquelyReferenced_nonNull_native();
      v154 = *v151;
      if (v153)
      {
        v155 = *(v154 + 2);
        v156 = swift_isUniquelyReferenced_nonNull_native();
        *v151 = v154;
        if ((v156 & 1) == 0)
        {
          v154 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v155, 1, v154);
          *v151 = v154;
        }

        v157 = v185;
        specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, v155, 0);
        v152 = v202;
      }

      else
      {
        v158 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI19_LazyLayout_SubviewV_Tt1g5(0, *(v154 + 3) >> 1);

        v154 = v158;
        v157 = v185;
      }

      *(v152 + 136) = v154;
      *(v152 + 144) = 0;
      outlined destroy of GlassEntryView?(v138, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
      *v138 = 0u;
      v138[1] = 0u;
      v138[2] = 0u;
      v138[3] = 0u;
      v138[4] = 0u;
      v138[5] = 0u;
      v138[6] = 0u;
      v159 = swift_isUniquelyReferenced_nonNull_native();
      v160 = *(v152 + 264);
      if (v159)
      {
        v161 = *(v160 + 2);
        v162 = swift_isUniquelyReferenced_nonNull_native();
        *(v152 + 264) = v160;
        if ((v162 & 1) == 0)
        {
          v160 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v161, 1, v160);
          *(v152 + 264) = v160;
        }

        specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, v161, 0);
      }

      else
      {
        v163 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI25_LazyLayout_PlacedSubviewV_Tt1g5(0, *(v160 + 3) >> 1);

        v160 = v163;
      }

      *(v152 + 264) = v160;
      v164 = v197;
      *(v152 + 272) = v200;
      *(v152 + 288) = v164;
      *(v152 + 304) = v164;
      *(v152 + 320) = 0;
      v165 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v147);

      *v157 = v165;
      v166 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v147);

      v157[1] = v166;
      *&v205[0] = v147;
      v167 = v194;
      v168 = v199;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v169 = (*(v195 + 40))(v157 + v192, v167, v168);
      v204 = 2;
      v205[0] = 0.0;
      MEMORY[0x1EEE9AC00](v169);
      v174 = v202;
      _LazyLayout_Subviews.applyNodes(from:style:to:)(v205, &v204, partial apply for specialized closure #1 in StackPlacement.place(subviews:from:position:stopping:style:), &v173);
      v170 = v202;
      specialized StackPlacement.flushMinorGroup()();
      v171 = *(v170 + 304);
      v172 = *(v170 + 312);
      if (v171 < v172)
      {
        if (v171 <= v172)
        {
          outlined destroy of StackPlacement<LazyVStackLayout>(v170);
          v25 = v172 - v171;
          *&v55 = v171;
          v54 = v190;
          if (v172 - v171 >= 0.0)
          {
            goto LABEL_127;
          }

          goto LABEL_124;
        }

        goto LABEL_135;
      }

      outlined destroy of StackPlacement<LazyVStackLayout>(v170);
      v54 = v190;
      v55 = v193;
      if (v183)
      {
LABEL_123:
        if (v25 >= 0.0)
        {
LABEL_127:
          v193 = v55;
          _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12VStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e76VyxG0E0RtzrlE12boundingRect2at8subviews7context5cacheSo6CGRectVSgSi_AA01_C15M50_SubviewsVAA01_cM17_PlacementContextVAFtFSSyXEfu0_SiSo0Z0VTf1c_n(a1, 0.0, *&v55, *&v201, v25);
          outlined destroy of _LazyStack_Cache<LazyVStackLayout>(v22);
          *&v24 = v193;
          *&v23 = v201;
          *(&v24 + 1) = v201;
          goto LABEL_128;
        }

LABEL_124:
        if (*(*&v22[v51] + 16))
        {
          v25 = v54;
        }

        else
        {
          v25 = 0.0;
        }

        goto LABEL_127;
      }

LABEL_122:
      *&v55 = v56 + *&v55;
      goto LABEL_123;
    }

    goto LABEL_132;
  }

  v17[104] = 1;
  if (!v133)
  {
    *(v17 + 12) = v134;
    v95 = v134;
    goto LABEL_93;
  }

LABEL_136:
  __break(1u);
}

void specialized LazySubviewPrefetcher.updateValue()()
{
  v1 = v0;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  v3 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v26 - v4;
  Value = AGGraphGetValue();
  v7 = *Value;
  if (*(v0 + 32) != *Value)
  {
    v8 = *(Value + 8);
    v9 = *(Value + 16);
    v10 = *(v0 + 40);
    *(v0 + 32) = v7;
    *(v0 + 40) = v9;
    if (v9 != v10)
    {
      type metadata accessor for LazyLayoutViewCache();
      AGGraphGetValue();

      LazyLayoutViewCache.resetPrefetchPhases()();
    }

    type metadata accessor for LazyLayoutViewCache();
    if ((*(*AGGraphGetValue() + 312) & v9) != 0)
    {
      if (one-time initialization token for lazyLayoutPrefetch != -1)
      {
        swift_once();
      }

      v11 = __swift_project_value_buffer(v3, static Log.lazyLayoutPrefetch);
      outlined init with copy of ObservationTracking._AccessList?(v11, v5, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
      v12 = type metadata accessor for Logger();
      v13 = *(v12 - 8);
      if ((*(v13 + 48))(v5, 1, v12) == 1)
      {
        outlined destroy of ObservationTracking._AccessList?(v5, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
      }

      else
      {
        v14 = Logger.logObject.getter();
        v15 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          v27 = v15;
          v17 = v16;
          v28 = swift_slowAlloc();
          v29 = v28;
          *v17 = 136446466;
          *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000018DD75AB0, &v29);
          *(v17 + 12) = 2082;
          v18 = AGAttribute.description.getter();
          v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v29);
          v26 = v14;
          v21 = v8;
          v22 = v20;

          *(v17 + 14) = v22;
          v8 = v21;
          v23 = v26;
          _os_log_impl(&dword_18D018000, v26, v27, "%{public}s %{public}s start prefetch", v17, 0x16u);
          v24 = v28;
          swift_arrayDestroy();
          MEMORY[0x193AC4820](v24, -1, -1);
          MEMORY[0x193AC4820](v17, -1, -1);
        }

        else
        {
        }

        (*(v13 + 8))(v5, v12);
      }

      if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
      {
        __break(1u);
      }

      else
      {
        v25 = AGGraphGetAttributeGraph();
        AGGraphGetDeadline();
        AGGraphSetDeadline();
        specialized closure #1 in LazySubviewPrefetcher.updateValue()(v1, v7, v8, v9, outlined init with copy of LazySubviewPrefetcher<LazyHStackLayout>, outlined destroy of LazySubviewPrefetcher<LazyHStackLayout>, specialized LazySubviewPrefetcher.makeLayoutPrefetchResult(info:offset:owner:));
        AGGraphSetDeadline();
      }
    }
  }
}

{
  v1 = v0;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  v3 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v26 - v4;
  Value = AGGraphGetValue();
  v7 = *Value;
  if (*(v0 + 32) != *Value)
  {
    v8 = *(Value + 8);
    v9 = *(Value + 16);
    v10 = *(v0 + 40);
    *(v0 + 32) = v7;
    *(v0 + 40) = v9;
    if (v9 != v10)
    {
      type metadata accessor for LazyLayoutViewCache();
      AGGraphGetValue();

      LazyLayoutViewCache.resetPrefetchPhases()();
    }

    type metadata accessor for LazyLayoutViewCache();
    if ((*(*AGGraphGetValue() + 312) & v9) != 0)
    {
      if (one-time initialization token for lazyLayoutPrefetch != -1)
      {
        swift_once();
      }

      v11 = __swift_project_value_buffer(v3, static Log.lazyLayoutPrefetch);
      outlined init with copy of ObservationTracking._AccessList?(v11, v5, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
      v12 = type metadata accessor for Logger();
      v13 = *(v12 - 8);
      if ((*(v13 + 48))(v5, 1, v12) == 1)
      {
        outlined destroy of ObservationTracking._AccessList?(v5, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
      }

      else
      {
        v14 = Logger.logObject.getter();
        v15 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          v27 = v15;
          v17 = v16;
          v28 = swift_slowAlloc();
          v29 = v28;
          *v17 = 136446466;
          *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000018DD758E0, &v29);
          *(v17 + 12) = 2082;
          v18 = AGAttribute.description.getter();
          v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v29);
          v26 = v14;
          v21 = v8;
          v22 = v20;

          *(v17 + 14) = v22;
          v8 = v21;
          v23 = v26;
          _os_log_impl(&dword_18D018000, v26, v27, "%{public}s %{public}s start prefetch", v17, 0x16u);
          v24 = v28;
          swift_arrayDestroy();
          MEMORY[0x193AC4820](v24, -1, -1);
          MEMORY[0x193AC4820](v17, -1, -1);
        }

        else
        {
        }

        (*(v13 + 8))(v5, v12);
      }

      if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
      {
        __break(1u);
      }

      else
      {
        v25 = AGGraphGetAttributeGraph();
        AGGraphGetDeadline();
        AGGraphSetDeadline();
        specialized closure #1 in LazySubviewPrefetcher.updateValue()(v1, v7, v8, v9, outlined init with copy of LazySubviewPrefetcher<LazyVStackLayout>, outlined destroy of LazySubviewPrefetcher<LazyVStackLayout>, specialized LazySubviewPrefetcher.makeLayoutPrefetchResult(info:offset:owner:));
        AGGraphSetDeadline();
      }
    }
  }
}

void specialized closure #1 in LazySubviewPrefetcher.updateValue()(uint64_t a1, void (*a2)(char *, void (**)(char *, uint64_t), uint64_t), uint64_t (*a3)(char *, uint64_t, uint64_t), int a4, void (*a5)(_OWORD *, _OWORD *), void (*a6)(_OWORD *), uint64_t a7)
{
  v14 = *(a1 + 44);
  v15 = *(a1 + 48);
  v28[2] = *(a1 + 32);
  v29[0] = v15;
  *(v29 + 9) = *(a1 + 57);
  v16 = *(a1 + 16);
  v28[0] = *a1;
  v28[1] = v16;
  type metadata accessor for LazyLayoutViewCache();
  a5(v28, v26);
  v17 = *AGGraphGetValue();

  v24 = a6;
  a6(v28);
  LODWORD(a6) = *(v17 + 228);

  if (v14 != a6)
  {
    v18 = *(a1 + 48);
    v26[2] = *(a1 + 32);
    v27[0] = v18;
    *(v27 + 9) = *(a1 + 57);
    v19 = *(a1 + 16);
    v26[0] = *a1;
    v26[1] = v19;
    a5(v26, v25);
    v20 = *AGGraphGetValue();

    v24(v26);
    v21 = *(v20 + 228);

    *(a1 + 44) = v21;
    LazyPrefetchState.reset()();
  }

  v22 = *MEMORY[0x1E698D3F8];
  while (1)
  {
    CurrentAttribute = AGGraphGetCurrentAttribute();
    if (CurrentAttribute == v22)
    {
      break;
    }

    specialized LazySubviewPrefetcher.update(info:owner:)(a2, a3, a4, CurrentAttribute, a7);
    if ((*(a1 + 72) & 1) == 0)
    {
      return;
    }
  }

  __break(1u);
}

void specialized LazySubviewPrefetcher.update(info:owner:)(void (*a1)(char *, void (**)(char *, uint64_t), uint64_t), uint64_t (*a2)(char *, uint64_t, uint64_t), int a3, int a4, uint64_t a5)
{
  v268 = a5;
  v6 = v5;
  LODWORD(v267) = a3;
  v265 = a1;
  v266 = a2;
  v286 = *MEMORY[0x1E69E9840];
  v8 = type metadata accessor for OSSignpostID();
  v276 = *(v8 - 8);
  v277 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v250 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v250 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v250 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v250 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v275 = &v250 - v21;
  MEMORY[0x1EEE9AC00](v22);
  MEMORY[0x1EEE9AC00](v23);
  v272 = &v250 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v250 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v271 = &v250 - v29;
  MEMORY[0x1EEE9AC00](v30);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v250 - v32;
  MEMORY[0x1EEE9AC00](v34);
  MEMORY[0x1EEE9AC00](v35);
  v274 = &v250 - v36;
  MEMORY[0x1EEE9AC00](v37);
  *(v6 + 72) = 0;
  v42 = *(v6 + 48);
  if (*(v42 + 2))
  {
    v258 = &v250 - v38;
    v264 = v41;
    v255 = v40;
    v256 = v39;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v43 = *(v42 + 2);
      if (v43)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v42 = specialized _ArrayBuffer._consumeAndCreateNew()(v42);
      v43 = *(v42 + 2);
      if (v43)
      {
LABEL_4:
        v44 = v43 - 1;
        v45 = v42[v44 + 32];
        *(v42 + 2) = v44;
        *(v6 + 48) = v42;
        v280[0] = 1;
        v270 = v6;
        v269 = v45;
        if (v45 > 1)
        {
          LOBYTE(v281) = 0;
          if (v45 == 2)
          {
            type metadata accessor for LazyLayoutViewCache();
            AGGraphGetValue();

            specialized LazyLayoutViewCache.advancePrefetchPhaseForRemoval(notify:)(v57, a4, &v281, &v279);
          }

          else
          {
            type metadata accessor for LazyLayoutViewCache();
            AGGraphGetValue();

            specialized LazyLayoutViewCache.advancePrefetchPhaseForDisplay(notify:)(v65, a4, &v281, &v279);
          }

          if (v279 == 1)
          {
            v280[0] = 0;
          }

          if ((v281 & 1) == 0)
          {
            *(v6 + 72) = 1;
          }

          goto LABEL_271;
        }

        v253 = v42;
        v257 = a4;
        if (v45)
        {
          v262 = v16;
          v263 = v10;
          v260 = v19;
          v261 = v13;
          if (one-time initialization token for prefetchOutputs != -1)
          {
            swift_once();
          }

          v10 = &static Signpost.prefetchOutputs;
          v58 = *(&static Signpost.prefetchOutputs + 1);
          v51 = static Signpost.prefetchOutputs;
          v59 = word_1EAB0EAE0;
          LOBYTE(v49) = HIBYTE(word_1EAB0EAE0);
          v60 = byte_1EAB0EAE2;
          LOBYTE(v46) = static os_signpost_type_t.begin.getter();
          v281 = v51;
          v282 = v58;
          v283 = v59;
          v284 = v49;
          v285 = v60;
          if ((Signpost.isEnabled.getter() & 1) == 0)
          {
LABEL_58:
            type metadata accessor for LazyLayoutViewCache();
            AGGraphGetValue();

            LazyLayoutViewCache.prefetchOutputs()();

            v85 = v281;
            v86 = *v10;
            v87 = *(v10 + 8);
            v88 = *(v10 + 0x10);
            LOBYTE(v89) = *(v10 + 0x11);
            v90 = *(v10 + 0x12);
            LOBYTE(v10) = static os_signpost_type_t.end.getter();
            if (v85 == 1)
            {
              v281 = v86;
              v282 = v87;
              v283 = v88;
              v284 = v89;
              v285 = v90;
              v91 = Signpost.isEnabled.getter();
              v92 = v257;
              if ((v91 & 1) == 0)
              {
                goto LABEL_207;
              }

              static OSSignpostID.exclusive.getter();
              type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_18DDAB4C0;
              *(inited + 32) = v92;
              v94 = (inited + 32);
              v95 = MEMORY[0x1E69E76D0];
              *(inited + 56) = MEMORY[0x1E69E7668];
              *(inited + 64) = v95;
              v96 = MEMORY[0x1E69E7358];
              *(inited + 96) = MEMORY[0x1E69E72F0];
              *(inited + 104) = v96;
              v278 = inited;
              *(inited + 72) = 0;
              if (one-time initialization token for _signpostLog == -1)
              {
                if ((v89 & 1) == 0)
                {
                  goto LABEL_114;
                }

                goto LABEL_62;
              }

LABEL_113:
              swift_once();
              if ((v89 & 1) == 0)
              {
LABEL_114:
                if (v86 == 20)
                {
                  v145 = 3;
                }

                else
                {
                  v145 = 4;
                }

                v6 = bswap32(v86) | (4 * (v86 >> 16));
                v147 = v276 + 16;
                v146 = *(v276 + 16);
                v266 = v94;
                v267 = v146;
                v146(v262, v260, v277);
                LOBYTE(v281) = 1;
                v275 = v145;
                v276 = v147;
                v272 = (16 * v145);
                v273 = (v147 - 8);

                v149 = 0;
                v271 = (v148 + 32);
                v268 = v86;
                do
                {
                  v274 = &v250;
                  MEMORY[0x1EEE9AC00](v148);
                  v89 = &v250 - ((v150 + 15) & 0xFFFFFFFFFFFFFFF0);
                  v86 = (v89 + 8);
                  v151 = v275;
                  v152 = (v89 + 8);
                  do
                  {
                    *(v152 - 1) = 0;
                    *v152 = 0;
                    v152 += 16;
                    --v151;
                  }

                  while (v151);
                  v153 = &v271[40 * v149];
                  v101 = v275;
                  while (1)
                  {
                    v154 = *(v278 + 16);
                    if (v149 == v154)
                    {
                      break;
                    }

                    if (v149 >= v154)
                    {
                      __break(1u);
                      goto LABEL_143;
                    }

                    ++v149;
                    v155 = *(v153 + 3);
                    __swift_project_boxed_opaque_existential_1(v153, v155);
                    *(v86 - 1) = CVarArg.kdebugValue(_:)(v6 | v10, v155);
                    *v86 = v156 & 1;
                    v86 += 16;
                    v153 += 40;
                    if (!--v101)
                    {
                      goto LABEL_126;
                    }
                  }

                  LOBYTE(v281) = 0;
LABEL_126:
                  v157 = v268;
                  if (v268 == 20)
                  {
                    v158 = v262;
                    OSSignpostID.rawValue.getter();
                    kdebug_trace();
                  }

                  else
                  {
                    kdebug_trace();
                    v158 = v262;
                  }

                  if (*(v89 + 8) == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (*(v89 + 24) == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (*(v89 + 40) == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (v157 != 20 && *(v89 + 56) == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (one-time initialization token for continuation != -1)
                  {
                    swift_once();
                  }

                  v159 = *v273;
                  v160 = v277;
                  (*v273)(v158, v277);
                  v161 = __swift_project_value_buffer(v160, static OSSignpostID.continuation);
                  v148 = (v267)(v158, v161, v160);
                }

                while ((v281 & 1) != 0);

                v162 = v277;
                v159(v158, v277);
                v159(v260, v162);
                swift_setDeallocating();
                type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for CVarArg);
LABEL_206:
                swift_arrayDestroy();
                goto LABEL_207;
              }

LABEL_62:
              swift_setDeallocating();
              type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for CVarArg);
              swift_arrayDestroy();
              v97 = v260;
LABEL_103:
              os_signpost(_:dso:log:name:signpostID:)();
              (*(v276 + 8))(v97, v277);
              v280[0] = 0;
LABEL_271:
              specialized $defer #1 <A>() in LazySubviewPrefetcher.update(info:owner:)(v280, v270, v269);
              return;
            }

            v281 = v86;
            v282 = v87;
            v283 = v88;
            v284 = v89;
            v285 = v90;
            v98 = Signpost.isEnabled.getter();
            v99 = v257;
            if ((v98 & 1) == 0)
            {
LABEL_172:
              v169 = v253;
              if (swift_isUniquelyReferenced_nonNull_native())
              {
LABEL_173:
                v185 = *(v169 + 2);
                v184 = *(v169 + 3);
                if (v185 >= v184 >> 1)
                {
                  v169 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v184 > 1), v185 + 1, 1, v169);
                }

                *(v169 + 2) = v185 + 1;
                v169[v185 + 32] = 3;
                *(v6 + 48) = v169;
                goto LABEL_271;
              }

LABEL_177:
              v169 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v169 + 2) + 1, 1, v169);
              goto LABEL_173;
            }

            static OSSignpostID.exclusive.getter();
            type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
            v100 = swift_initStackObject();
            *(v100 + 32) = v99;
            v101 = (v100 + 32);
            *(v100 + 16) = xmmword_18DDAB4C0;
            v102 = MEMORY[0x1E69E76D0];
            *(v100 + 56) = MEMORY[0x1E69E7668];
            *(v100 + 64) = v102;
            v103 = MEMORY[0x1E69E7358];
            *(v100 + 96) = MEMORY[0x1E69E72F0];
            *(v100 + 104) = v103;
            v278 = v100;
            *(v100 + 72) = 1;
            if (one-time initialization token for _signpostLog == -1)
            {
              if (v89)
              {
LABEL_66:
                swift_setDeallocating();
                type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for CVarArg);
                swift_arrayDestroy();
                v104 = v261;
                os_signpost(_:dso:log:name:signpostID:)();
                (*(v276 + 8))(v104, v277);
                goto LABEL_172;
              }
            }

            else
            {
LABEL_143:
              swift_once();
              if (v89)
              {
                goto LABEL_66;
              }
            }

            if (v86 == 20)
            {
              v163 = 3;
            }

            else
            {
              v163 = 4;
            }

            v6 = bswap32(v86) | (4 * (v86 >> 16));
            v165 = v276 + 16;
            v164 = *(v276 + 16);
            v266 = v101;
            v267 = v164;
            v164(v263, v261, v277);
            LOBYTE(v281) = 1;
            v275 = v163;
            v276 = v165;
            v272 = (16 * v163);
            v273 = (v165 - 8);

            v167 = 0;
            v271 = (v166 + 32);
            v268 = v86;
LABEL_148:
            v274 = &v250;
            MEMORY[0x1EEE9AC00](v166);
            v169 = &v250 - ((v168 + 15) & 0xFFFFFFFFFFFFFFF0);
            v170 = v169 + 8;
            v171 = v275;
            v172 = v169 + 8;
            do
            {
              *(v172 - 1) = 0;
              *v172 = 0;
              v172 += 16;
              --v171;
            }

            while (v171);
            v173 = &v271[40 * v167];
            v174 = v275;
            while (1)
            {
              v175 = *(v278 + 16);
              if (v167 == v175)
              {
                LOBYTE(v281) = 0;
LABEL_156:
                v178 = v268;
                if (v268 == 20)
                {
                  v179 = v263;
                  OSSignpostID.rawValue.getter();
                  kdebug_trace();
                }

                else
                {
                  kdebug_trace();
                  v179 = v263;
                }

                if (v169[8] == 1)
                {
                  kdebug_trace_string();
                }

                if (v169[24] == 1)
                {
                  kdebug_trace_string();
                }

                if (v169[40] == 1)
                {
                  kdebug_trace_string();
                }

                if (v178 != 20 && v169[56] == 1)
                {
                  kdebug_trace_string();
                }

                if (one-time initialization token for continuation != -1)
                {
                  swift_once();
                }

                v180 = *v273;
                v181 = v277;
                (*v273)(v179, v277);
                v182 = __swift_project_value_buffer(v181, static OSSignpostID.continuation);
                v166 = (v267)(v179, v182, v181);
                if ((v281 & 1) == 0)
                {

                  v183 = v277;
                  v180(v179, v277);
                  v180(v261, v183);
                  swift_setDeallocating();
                  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for CVarArg);
                  swift_arrayDestroy();
                  v6 = v270;
                  goto LABEL_172;
                }

                goto LABEL_148;
              }

              if (v167 >= v175)
              {
                break;
              }

              ++v167;
              v176 = *(v173 + 3);
              __swift_project_boxed_opaque_existential_1(v173, v176);
              *(v170 - 1) = CVarArg.kdebugValue(_:)(v6 | v10, v176);
              *v170 = v177 & 1;
              v170 += 16;
              v173 += 40;
              if (!--v174)
              {
                goto LABEL_156;
              }
            }

            __break(1u);
            goto LABEL_177;
          }

          static OSSignpostID.exclusive.getter();
          type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
          v61 = swift_initStackObject();
          *(v61 + 32) = v257;
          v259 = (v61 + 32);
          v62 = MEMORY[0x1E69E7668];
          v63 = MEMORY[0x1E69E76D0];
          *(v61 + 16) = xmmword_18DDA6EB0;
          *(v61 + 56) = v62;
          *(v61 + 64) = v63;
          v278 = v61;
          if (one-time initialization token for _signpostLog == -1)
          {
            if ((v49 & 1) == 0)
            {
LABEL_31:
              if (v51 == 20)
              {
                v66 = 3;
              }

              else
              {
                v66 = 4;
              }

              v67 = bswap32(v51) | (4 * WORD1(v51));
              v10 = v46;
              v68 = (v276 + 16);
              v265 = *(v276 + 16);
              v265(v275, v264, v277);
              LOBYTE(v281) = 1;
              v274 = v66;
              v266 = v68;
              v271 = (16 * v66);
              v272 = v68 - 8;

              v70 = 0;
              v267 = v51;
              v268 = v69 + 32;
LABEL_35:
              v273 = &v250;
              MEMORY[0x1EEE9AC00](v69);
              v49 = &v250 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
              v53 = v49 + 8;
              v72 = v274;
              v73 = v49 + 8;
              do
              {
                *(v73 - 1) = 0;
                *v73 = 0;
                v73 += 16;
                --v72;
              }

              while (v72);
              v74 = (v268 + 40 * v70);
              v75 = v274;
              while (1)
              {
                v76 = *(v278 + 16);
                if (v70 == v76)
                {
                  LOBYTE(v281) = 0;
LABEL_43:
                  v79 = v267;
                  if (v267 == 20)
                  {
                    OSSignpostID.rawValue.getter();
                  }

                  kdebug_trace();
                  if (v49[8] == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (v49[24] == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (v49[40] == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (v79 != 20 && v49[56] == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (one-time initialization token for continuation != -1)
                  {
                    swift_once();
                  }

                  v80 = *v272;
                  v81 = v275;
                  v82 = v277;
                  (*v272)(v275, v277);
                  v83 = __swift_project_value_buffer(v82, static OSSignpostID.continuation);
                  v69 = (v265)(v81, v83, v82);
                  if ((v281 & 1) == 0)
                  {

                    v84 = v277;
                    v80(v275, v277);
                    v80(v264, v84);
                    swift_setDeallocating();
                    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for CVarArg);
                    swift_arrayDestroy();
                    v6 = v270;
                    v10 = &static Signpost.prefetchOutputs;
                    goto LABEL_58;
                  }

                  goto LABEL_35;
                }

                if (v70 >= v76)
                {
                  break;
                }

                ++v70;
                v77 = v74[3];
                __swift_project_boxed_opaque_existential_1(v74, v77);
                *(v53 - 1) = CVarArg.kdebugValue(_:)(v67 | v10, v77);
                *v53 = v78 & 1;
                v53 += 16;
                v74 += 5;
                if (!--v75)
                {
                  goto LABEL_43;
                }
              }

              __break(1u);
              goto LABEL_68;
            }

            goto LABEL_20;
          }

LABEL_30:
          swift_once();
          if ((v49 & 1) == 0)
          {
            goto LABEL_31;
          }

LABEL_20:
          swift_setDeallocating();
          type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for CVarArg);
          swift_arrayDestroy();
          v64 = v264;
          os_signpost(_:dso:log:name:signpostID:)();
          (*(v276 + 8))(v64, v277);
          goto LABEL_58;
        }

        v251 = v27;
        v10 = *(v6 + 56);
        if (one-time initialization token for prefetchMakeView == -1)
        {
LABEL_7:
          v49 = *(&static Signpost.prefetchMakeView + 1);
          v6 = static Signpost.prefetchMakeView;
          v46 = word_1EAB0EAB8;
          v47 = HIBYTE(word_1EAB0EAB8);
          v48 = byte_1EAB0EABA;
          LODWORD(v275) = static os_signpost_type_t.begin.getter();
          v273 = v6;
          v281 = v6;
          v282 = v49;
          v263 = v49;
          LOBYTE(v49) = v47;
          LODWORD(v264) = v46;
          v283 = v46;
          v284 = v47;
          v285 = v48;
          v50 = Signpost.isEnabled.getter();
          v254 = v33;
          v51 = v257;
          v252 = v10;
          if ((v50 & 1) == 0)
          {
LABEL_97:
            AGGraphClearUpdate();
            (v268)(&v281, v265, v266, v267, v10, v51);
            AGGraphSetUpdate();
            v124 = v281;
            v125 = *(&static Signpost.prefetchMakeView + 1);
            v126 = static Signpost.prefetchMakeView;
            v127 = word_1EAB0EAB8;
            LOBYTE(v128) = HIBYTE(word_1EAB0EAB8);
            v129 = byte_1EAB0EABA;
            LOBYTE(v130) = static os_signpost_type_t.end.getter();
            if (!v124)
            {
              v281 = v126;
              v282 = v125;
              v283 = v127;
              v284 = v128;
              v285 = v129;
              if ((Signpost.isEnabled.getter() & 1) == 0)
              {
                goto LABEL_271;
              }

              static OSSignpostID.exclusive.getter();
              type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
              v135 = swift_initStackObject();
              *(v135 + 16) = xmmword_18DDAB4C0;
              *(v135 + 32) = v51;
              v136 = v135 + 32;
              v137 = MEMORY[0x1E69E76D0];
              *(v135 + 56) = MEMORY[0x1E69E7668];
              *(v135 + 64) = v137;
              v138 = MEMORY[0x1E69E7358];
              *(v135 + 96) = MEMORY[0x1E69E72F0];
              *(v135 + 104) = v138;
              v278 = v135;
              *(v135 + 72) = 0;
              if (one-time initialization token for _signpostLog == -1)
              {
                if ((v128 & 1) == 0)
                {
LABEL_210:
                  v204 = v126;
                  if (v126 == 20)
                  {
                    v205 = 3;
                  }

                  else
                  {
                    v205 = 4;
                  }

                  v128 = bswap32(v126) | (4 * WORD1(v126));
                  LODWORD(v126) = v130;
                  v207 = v276 + 16;
                  v206 = *(v276 + 16);
                  v266 = v136;
                  v267 = v206;
                  v206(v254, v255, v277);
                  LOBYTE(v281) = 1;
                  v275 = v205;
                  v276 = v207;
                  v272 = (16 * v205);
                  v273 = (v207 - 8);

                  v209 = 0;
                  v271 = (v208 + 32);
                  v268 = v204;
LABEL_214:
                  v274 = &v250;
                  MEMORY[0x1EEE9AC00](v208);
                  v142 = &v250 - ((v210 + 15) & 0xFFFFFFFFFFFFFFF0);
                  v211 = v142 + 8;
                  v212 = v275;
                  v213 = v142 + 8;
                  do
                  {
                    *(v213 - 1) = 0;
                    *v213 = 0;
                    v213 += 16;
                    --v212;
                  }

                  while (v212);
                  v214 = &v271[40 * v209];
                  v140 = v275;
                  while (1)
                  {
                    v215 = *(v278 + 16);
                    if (v209 == v215)
                    {
                      LOBYTE(v281) = 0;
LABEL_222:
                      v218 = v268;
                      if (v268 == 20)
                      {
                        v219 = v254;
                        OSSignpostID.rawValue.getter();
                        kdebug_trace();
                      }

                      else
                      {
                        kdebug_trace();
                        v219 = v254;
                      }

                      if (v142[8] == 1)
                      {
                        kdebug_trace_string();
                      }

                      if (v142[24] == 1)
                      {
                        kdebug_trace_string();
                      }

                      if (v142[40] == 1)
                      {
                        kdebug_trace_string();
                      }

                      if (v218 != 20 && v142[56] == 1)
                      {
                        kdebug_trace_string();
                      }

                      if (one-time initialization token for continuation != -1)
                      {
                        swift_once();
                      }

                      v220 = *v273;
                      v221 = v277;
                      (*v273)(v219, v277);
                      v222 = __swift_project_value_buffer(v221, static OSSignpostID.continuation);
                      v208 = (v267)(v219, v222, v221);
                      if ((v281 & 1) == 0)
                      {

                        v223 = v277;
                        v220(v219, v277);
                        v220(v255, v223);
                        swift_setDeallocating();
                        type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for CVarArg);
                        swift_arrayDestroy();
                        goto LABEL_271;
                      }

                      goto LABEL_214;
                    }

                    if (v209 >= v215)
                    {
                      break;
                    }

                    ++v209;
                    v216 = *(v214 + 3);
                    v130 = *(v214 + 4);
                    __swift_project_boxed_opaque_existential_1(v214, v216);
                    *(v211 - 1) = CVarArg.kdebugValue(_:)(v128 | v126, v216);
                    *v211 = v217 & 1;
                    v211 += 16;
                    v214 += 40;
                    if (!--v140)
                    {
                      goto LABEL_222;
                    }
                  }

                  __break(1u);
                  goto LABEL_239;
                }

LABEL_107:
                swift_setDeallocating();
                type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for CVarArg);
                swift_arrayDestroy();
                v139 = v255;
                os_signpost(_:dso:log:name:signpostID:)();
                (*(v276 + 8))(v139, v277);
                goto LABEL_271;
              }

LABEL_209:
              swift_once();
              if ((v128 & 1) == 0)
              {
                goto LABEL_210;
              }

              goto LABEL_107;
            }

            if (v124 != 1)
            {
              v281 = v126;
              v282 = v125;
              v283 = v127;
              v284 = v128;
              v285 = v129;
              if ((Signpost.isEnabled.getter() & 1) == 0)
              {
                goto LABEL_267;
              }

              v140 = v251;
              static OSSignpostID.exclusive.getter();
              type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
              v141 = swift_initStackObject();
              *(v141 + 32) = v51;
              v142 = (v141 + 32);
              *(v141 + 16) = xmmword_18DDAB4C0;
              v143 = MEMORY[0x1E69E76D0];
              *(v141 + 56) = MEMORY[0x1E69E7668];
              *(v141 + 64) = v143;
              v144 = MEMORY[0x1E69E7358];
              *(v141 + 96) = MEMORY[0x1E69E72F0];
              *(v141 + 104) = v144;
              v278 = v141;
              *(v141 + 72) = 1;
              if (one-time initialization token for _signpostLog == -1)
              {
                if ((v128 & 1) == 0)
                {
LABEL_240:
                  v224 = v126;
                  if (v126 == 20)
                  {
                    v225 = 3;
                  }

                  else
                  {
                    v225 = 4;
                  }

                  v226 = (bswap32(v126) | (4 * WORD1(v126)));
                  v227 = v130;
                  v229 = v276 + 16;
                  v228 = *(v276 + 16);
                  v265 = v142;
                  v266 = v228;
                  v228(v272, v140, v277);
                  LOBYTE(v281) = 1;
                  v275 = v225;
                  v276 = v229;
                  v271 = (16 * v225);
                  v273 = (v229 - 8);

                  v231 = 0;
                  v267 = v224;
                  v268 = v230 + 32;
LABEL_244:
                  v274 = &v250;
                  MEMORY[0x1EEE9AC00](v230);
                  v233 = &v250 - ((v232 + 15) & 0xFFFFFFFFFFFFFFF0);
                  v234 = v233 + 8;
                  v235 = v275;
                  v236 = v233 + 8;
                  do
                  {
                    *(v236 - 1) = 0;
                    *v236 = 0;
                    v236 += 16;
                    --v235;
                  }

                  while (v235);
                  v237 = (v268 + 40 * v231);
                  v238 = v275;
                  while (1)
                  {
                    v239 = *(v278 + 16);
                    if (v231 == v239)
                    {
                      LOBYTE(v281) = 0;
LABEL_252:
                      v242 = v267;
                      if (v267 == 20)
                      {
                        OSSignpostID.rawValue.getter();
                      }

                      kdebug_trace();
                      if (v233[8] == 1)
                      {
                        kdebug_trace_string();
                      }

                      if (v233[24] == 1)
                      {
                        kdebug_trace_string();
                      }

                      if (v233[40] == 1)
                      {
                        kdebug_trace_string();
                      }

                      if (v242 != 20 && v233[56] == 1)
                      {
                        kdebug_trace_string();
                      }

                      if (one-time initialization token for continuation != -1)
                      {
                        swift_once();
                      }

                      v243 = v272;
                      v244 = *v273;
                      v245 = v277;
                      (*v273)(v272, v277);
                      v246 = __swift_project_value_buffer(v245, static OSSignpostID.continuation);
                      v230 = v266(v243, v246, v245);
                      if ((v281 & 1) == 0)
                      {

                        v247 = v277;
                        v244(v272, v277);
                        v244(v251, v247);
                        swift_setDeallocating();
                        type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for CVarArg);
                        swift_arrayDestroy();
                        goto LABEL_267;
                      }

                      goto LABEL_244;
                    }

                    if (v231 >= v239)
                    {
                      break;
                    }

                    ++v231;
                    v240 = v237[3];
                    __swift_project_boxed_opaque_existential_1(v237, v240);
                    *(v234 - 1) = CVarArg.kdebugValue(_:)(v226 | v227, v240);
                    *v234 = v241 & 1;
                    v234 += 16;
                    v237 += 5;
                    if (!--v238)
                    {
                      goto LABEL_252;
                    }
                  }

                  __break(1u);
                  goto LABEL_274;
                }

                goto LABEL_111;
              }

LABEL_239:
              swift_once();
              if ((v128 & 1) == 0)
              {
                goto LABEL_240;
              }

LABEL_111:
              swift_setDeallocating();
              type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for CVarArg);
              swift_arrayDestroy();
              os_signpost(_:dso:log:name:signpostID:)();
              (*(v276 + 8))(v140, v277);
LABEL_267:
              v226 = v253;
              v233 = v270;
              *(v270 + 7) = v252 + 1;
              if (swift_isUniquelyReferenced_nonNull_native())
              {
LABEL_268:
                v249 = *(v226 + 2);
                v248 = *(v226 + 3);
                if (v249 >= v248 >> 1)
                {
                  v226 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v248 > 1), v249 + 1, 1, v226);
                }

                *(v226 + 2) = v249 + 1;
                v226[v249 + 32] = 1;
                *(v233 + 6) = v226;
                goto LABEL_271;
              }

LABEL_274:
              v226 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v226 + 2) + 1, 1, v226);
              goto LABEL_268;
            }

            v281 = v126;
            v282 = v125;
            v283 = v127;
            v284 = v128;
            v285 = v129;
            if (Signpost.isEnabled.getter())
            {
              static OSSignpostID.exclusive.getter();
              type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
              v131 = swift_initStackObject();
              *(v131 + 16) = xmmword_18DDAB4C0;
              *(v131 + 32) = v51;
              v132 = (v131 + 32);
              v133 = MEMORY[0x1E69E76D0];
              *(v131 + 56) = MEMORY[0x1E69E7668];
              *(v131 + 64) = v133;
              v134 = MEMORY[0x1E69E7358];
              *(v131 + 96) = MEMORY[0x1E69E72F0];
              *(v131 + 104) = v134;
              v278 = v131;
              *(v131 + 72) = 0;
              if (one-time initialization token for _signpostLog == -1)
              {
                if (v128)
                {
LABEL_102:
                  swift_setDeallocating();
                  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for CVarArg);
                  swift_arrayDestroy();
                  v97 = v256;
                  goto LABEL_103;
                }
              }

              else
              {
                swift_once();
                if (v128)
                {
                  goto LABEL_102;
                }
              }

              v268 = v126;
              if (v126 == 20)
              {
                v186 = 3;
              }

              else
              {
                v186 = 4;
              }

              v128 = bswap32(v126) | (4 * WORD1(v126));
              LODWORD(v126) = v130;
              v188 = v276 + 16;
              v187 = *(v276 + 16);
              v265 = v132;
              v266 = v187;
              v187(v271, v256, v277);
              LOBYTE(v281) = 1;
              v276 = v188;
              v273 = (16 * v186);
              v274 = (v188 - 8);

              v136 = 0;
              v272 = (v189 + 32);
              v267 = v186;
LABEL_183:
              v275 = &v250;
              MEMORY[0x1EEE9AC00](v189);
              v191 = &v250 - ((v190 + 15) & 0xFFFFFFFFFFFFFFF0);
              v192 = v191 + 8;
              v193 = v186;
              v194 = v191 + 8;
              do
              {
                *(v194 - 1) = 0;
                *v194 = 0;
                v194 += 16;
                --v193;
              }

              while (v193);
              v130 = &v272[40 * v136];
              while (1)
              {
                v195 = *(v278 + 16);
                if (v136 == v195)
                {
                  LOBYTE(v281) = 0;
LABEL_191:
                  v198 = v268;
                  if (v268 == 20)
                  {
                    OSSignpostID.rawValue.getter();
                  }

                  kdebug_trace();
                  if (v191[8] == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (v191[24] == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (v191[40] == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (v198 != 20 && v191[56] == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (one-time initialization token for continuation != -1)
                  {
                    swift_once();
                  }

                  v199 = *v274;
                  v200 = v271;
                  v201 = v277;
                  (*v274)(v271, v277);
                  v202 = __swift_project_value_buffer(v201, static OSSignpostID.continuation);
                  v189 = v266(v200, v202, v201);
                  v186 = v267;
                  if ((v281 & 1) == 0)
                  {

                    v203 = v277;
                    v199(v271, v277);
                    v199(v256, v203);
                    swift_setDeallocating();
                    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for CVarArg);
                    goto LABEL_206;
                  }

                  goto LABEL_183;
                }

                if (v136 >= v195)
                {
                  break;
                }

                ++v136;
                v196 = *(v130 + 3);
                __swift_project_boxed_opaque_existential_1(v130, v196);
                *(v192 - 1) = CVarArg.kdebugValue(_:)(v128 | v126, v196);
                *v192 = v197 & 1;
                v192 += 16;
                v130 += 40;
                if (!--v186)
                {
                  goto LABEL_191;
                }
              }

              __break(1u);
              goto LABEL_209;
            }

LABEL_207:
            v280[0] = 0;
            goto LABEL_271;
          }

          static OSSignpostID.exclusive.getter();
          type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
          v52 = swift_initStackObject();
          *(v52 + 16) = xmmword_18DDAB4C0;
          *(v52 + 32) = v51;
          v53 = (v52 + 32);
          v54 = MEMORY[0x1E69E76D0];
          *(v52 + 56) = MEMORY[0x1E69E7668];
          *(v52 + 64) = v54;
          v55 = MEMORY[0x1E69E7358];
          *(v52 + 96) = MEMORY[0x1E69E72F0];
          *(v52 + 104) = v55;
          v278 = v52;
          if (v10 >= 0xFFFFFFFF80000000)
          {
            if (v10 <= 0x7FFFFFFF)
            {
              *(v278 + 72) = v10;
              if (one-time initialization token for _signpostLog == -1)
              {
                if (v49)
                {
LABEL_12:
                  swift_setDeallocating();
                  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for CVarArg);
                  swift_arrayDestroy();
                  v56 = v258;
                  os_signpost(_:dso:log:name:signpostID:)();
                  (*(v276 + 8))(v56, v277);
                  v51 = v257;
                  goto LABEL_97;
                }

                goto LABEL_70;
              }

LABEL_69:
              swift_once();
              if (v49)
              {
                goto LABEL_12;
              }

LABEL_70:
              v250 = v53;
              v105 = v273;
              if (v273 == 20)
              {
                v106 = 3;
              }

              else
              {
                v106 = 4;
              }

              v107 = bswap32(v273) | (4 * (v273 >> 16));
              v108 = v275;
              v109 = (v276 + 16);
              v259 = *(v276 + 16);
              v259(v274, v258, v277);
              LOBYTE(v281) = 1;
              v275 = v106;
              v260 = v109;
              v263 = 16 * v106;
              v264 = (v109 - 8);

              v89 = 0;
              v261 = v105;
              v262 = (v110 + 32);
LABEL_74:
              v273 = &v250;
              MEMORY[0x1EEE9AC00](v110);
              v86 = &v250 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
              v112 = v86 + 8;
              v113 = v275;
              v114 = v86 + 8;
              do
              {
                *(v114 - 1) = 0;
                *v114 = 0;
                v114 += 16;
                --v113;
              }

              while (v113);
              v94 = &v262[40 * v89];
              v10 = v275;
              while (1)
              {
                v115 = *(v278 + 16);
                if (v89 == v115)
                {
                  LOBYTE(v281) = 0;
LABEL_82:
                  v118 = v261;
                  if (v261 == 20)
                  {
                    OSSignpostID.rawValue.getter();
                  }

                  kdebug_trace();
                  if (v86[8] == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (v86[24] == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (v86[40] == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (v118 != 20 && v86[56] == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (one-time initialization token for continuation != -1)
                  {
                    swift_once();
                  }

                  v119 = *v264;
                  v120 = v274;
                  v121 = v277;
                  (*v264)(v274, v277);
                  v122 = __swift_project_value_buffer(v121, static OSSignpostID.continuation);
                  v110 = (v259)(v120, v122, v121);
                  if ((v281 & 1) == 0)
                  {

                    v123 = v277;
                    v119(v274, v277);
                    v119(v258, v123);
                    swift_setDeallocating();
                    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for CVarArg);
                    swift_arrayDestroy();
                    v51 = v257;
                    v10 = v252;
                    goto LABEL_97;
                  }

                  goto LABEL_74;
                }

                if (v89 >= v115)
                {
                  break;
                }

                ++v89;
                v116 = *(v94 + 3);
                __swift_project_boxed_opaque_existential_1(v94, v116);
                *(v112 - 1) = CVarArg.kdebugValue(_:)(v107 | v108, v116);
                *v112 = v117 & 1;
                v112 += 16;
                v94 += 40;
                if (!--v10)
                {
                  goto LABEL_82;
                }
              }

              __break(1u);
              goto LABEL_113;
            }

LABEL_68:
            __break(1u);
            goto LABEL_69;
          }

          __break(1u);
          goto LABEL_30;
        }

LABEL_28:
        swift_once();
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_28;
  }
}

uint64_t specialized $defer #1 <A>() in LazySubviewPrefetcher.update(info:owner:)(uint64_t result, uint64_t a2, char a3)
{
  if ((*result & 1) == 0)
  {
    v5 = *(a2 + 48);
    result = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 48) = v5;
    if ((result & 1) == 0)
    {
      v8 = *(v5 + 16);

      *(a2 + 48) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8 + 1, 1, v5);

      v5 = *(a2 + 48);
    }

    v7 = *(v5 + 16);
    v6 = *(v5 + 24);
    if (v7 >= v6 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v5);
      v5 = result;
      *(a2 + 48) = result;
    }

    *(v5 + 16) = v7 + 1;
    *(*(a2 + 48) + v7 + 32) = a3;
  }

  return result;
}

uint64_t specialized LazySubviewPrefetcher.makeLayoutPrefetchResult(info:offset:owner:)@<X0>(uint64_t result@<X0>, char a2@<W2>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  v5 = a2 & 0xA;
  if ((byte_1F00451C8 & 1) != 0 || (a2 & 0xA) == 0 || (LOBYTE(v10) = 1, v6 = result, v7 = a2, v8 = a3, specialized LazySubviewPrefetcher.makeLayoutPrefetchResult(info:offset:axis:owner:)(a2, a3, 0, &lazy cache variable for type metadata for _LazyStack_Cache<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &v11, &type metadata for LazyHStackLayout, v10, _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE12proposeSizes2at8subviews7context5cache2inySi_AA01_C15Layout_SubviewsVAA01_cM17_PlacementContextVAfA01_cm9_ProposedG0VztFAA0c6HStackM0V_Tt1B5, outlined destroy of _LazyStack_Cache<LazyHStackLayout>, COERCE_DOUBLE(&unk_1F004C5E0), closure #1 in LazyLayoutViewCache.signalPrefetch()partial apply), result = v6, a2 = v7, a3 = v8, (v9 = v11) == 0))
  {
    v9 = 0;
    if ((byte_1F00451C9 & 1) == 0 && v5)
    {
      LOBYTE(v10) = 1;
      result = specialized LazySubviewPrefetcher.makeLayoutPrefetchResult(info:offset:axis:owner:)(a2, a3, 0, &lazy cache variable for type metadata for _LazyStack_Cache<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &v11, &type metadata for LazyHStackLayout, v10, _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE12proposeSizes2at8subviews7context5cache2inySi_AA01_C15Layout_SubviewsVAA01_cM17_PlacementContextVAfA01_cm9_ProposedG0VztFAA0c6HStackM0V_Tt1B5, outlined destroy of _LazyStack_Cache<LazyHStackLayout>, COERCE_DOUBLE(&unk_1F004C5E0), closure #1 in LazyLayoutViewCache.signalPrefetch()partial apply);
      v9 = v11;
    }
  }

  *a4 = v9;
  return result;
}

{
  v5 = a2 & 5;
  v6 = byte_1F00451F0 != 1 || v5 == 0;
  if (v6 || (LOBYTE(v12) = 2, v7 = result, v8 = a2, v9 = a3, specialized LazySubviewPrefetcher.makeLayoutPrefetchResult(info:offset:axis:owner:)(a2, a3, 1, &lazy cache variable for type metadata for _LazyStack_Cache<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &v13, &type metadata for LazyVStackLayout, v12, _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE12proposeSizes2at8subviews7context5cache2inySi_AA01_C15Layout_SubviewsVAA01_cM17_PlacementContextVAfA01_cm9_ProposedG0VztFAA0c6VStackM0V_Tt1B5, outlined destroy of _LazyStack_Cache<LazyVStackLayout>, COERCE_DOUBLE(&unk_1F004C4A0), partial apply for closure #1 in LazyLayoutViewCache.signalPrefetch()), result = v7, a2 = v8, a3 = v9, (v10 = v13) == 0))
  {
    if (byte_1F00451F1 != 1 || v5 == 0)
    {
      v10 = 0;
    }

    else
    {
      LOBYTE(v12) = 2;
      result = specialized LazySubviewPrefetcher.makeLayoutPrefetchResult(info:offset:axis:owner:)(a2, a3, 1, &lazy cache variable for type metadata for _LazyStack_Cache<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &v13, &type metadata for LazyVStackLayout, v12, _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE12proposeSizes2at8subviews7context5cache2inySi_AA01_C15Layout_SubviewsVAA01_cM17_PlacementContextVAfA01_cm9_ProposedG0VztFAA0c6VStackM0V_Tt1B5, outlined destroy of _LazyStack_Cache<LazyVStackLayout>, COERCE_DOUBLE(&unk_1F004C4A0), partial apply for closure #1 in LazyLayoutViewCache.signalPrefetch());
      v10 = v13;
    }
  }

  *a4 = v10;
  return result;
}

uint64_t specialized LazySubviewPrefetcher.makeLayoutPrefetchResult(info:offset:axis:owner:)@<X0>(char a1@<W2>, uint64_t a2@<X3>, int a3@<W4>, unint64_t *a4@<X6>, uint64_t (*a5)(void)@<X7>, _BYTE *a6@<X8>, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, __int128 *, char *, uint64_t *, uint64_t, uint64_t, unint64_t), void (*a10)(char *), double a11, uint64_t a12)
{
  LODWORD(v155) = a3;
  v156 = a2;
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, a4, a5, a7, type metadata accessor for _LazyStack_Cache);
  v16 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v18 = v131 - v17;
  v157 = *(v12 + 64);
  type metadata accessor for LazyLayoutViewCache();
  Value = AGGraphGetValue();
  v20 = *(*Value + 280);
  v158 = *(*Value + 288);
  result = AGGraphGetValue();
  v22 = floor(*(*result + 296));
  if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_163;
  }

  if (v22 <= -9.22337204e18)
  {
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    __break(1u);
    goto LABEL_167;
  }

  if (v22 >= 9.22337204e18)
  {
    goto LABEL_164;
  }

  if (v20 < 0 || v158 < 0)
  {
    goto LABEL_11;
  }

  if ((v156 * v157) >> 64 != (v156 * v157) >> 63)
  {
    goto LABEL_166;
  }

  v23 = v22 * 0.75;
  if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_167:
    __break(1u);
    goto LABEL_168;
  }

  if (v23 <= -9.22337204e18)
  {
LABEL_168:
    __break(1u);
    goto LABEL_169;
  }

  if (v23 >= 9.22337204e18)
  {
LABEL_169:
    __break(1u);
    goto LABEL_170;
  }

  if (v156 * v157 > v23)
  {
LABEL_11:
    *a6 = 0;
    return result;
  }

  v149 = v156 * v157;
  if (v155)
  {
    result = Axis.Set.contains(_:)(SwiftUI_Axis_vertical);
    if ((result & 1) == 0 || (a1 & 5) == 0)
    {
      goto LABEL_11;
    }

    v151 = v18;
    v152 = a7;
    v132 = a6;
    v24 = SwiftUI_Edge_bottom;
  }

  else
  {
    result = Axis.Set.contains(_:)(SwiftUI_Axis_horizontal);
    if ((result & 1) == 0 || (a1 & 0xA) == 0)
    {
      goto LABEL_11;
    }

    v151 = v18;
    v152 = a7;
    v132 = a6;
    v24 = SwiftUI_Edge_trailing;
  }

  v150 = Edge.Set.contains(_:)(v24);
  AGGraphGetValue();

  v148 = *AGGraphGetValue();

  type metadata accessor for CGPoint(0);
  v25 = AGGraphGetValue();
  v26 = *v25;
  v27 = v25[1];
  v28 = AGGraphGetValue();
  v29 = *v28;
  v30 = v28[1];
  v31 = AGGraphGetValue();
  v32 = *v31;
  v33 = *(v31 + 8);
  v34 = *(v31 + 16);
  v35 = *(v31 + 24);
  v36 = *(v31 + 32);
  v37 = *(v31 + 40);

  AGGraphGetValue();

  v38 = *AGGraphGetValue();

  v131[1] = *v12;
  AGGraphGetValue();
  v180 = 1;
  v39 = v36 - (v26 - v34);
  v166 = 0u;
  v167 = 0u;
  v40 = v37 - (v27 - v35);
  v168 = 0u;
  v169 = 0u;
  v170 = 0u;
  v171 = 0u;
  v172 = 0u;
  v173 = 1;
  v174 = v32;
  v175 = v33;
  v145 = v33;
  v144 = v26;
  v176 = v26;
  v177 = v27;
  v142 = v27;
  v178 = v39;
  v179 = v40;
  specialized ViewTransform.forEach(inverted:_:)(0, &v174, &v166);
  v41 = *&v167;
  if (v173)
  {
    v41 = v29;
  }

  v140 = v41;
  if (v173)
  {
    v42 = v30;
  }

  else
  {
    v42 = *(&v167 + 1);
  }

  v139 = v42;
  if (v173)
  {
    v43 = 0.0;
  }

  else
  {
    v43 = *&v168;
  }

  v138 = v43;
  if (v173)
  {
    v44 = 0.0;
  }

  else
  {
    v44 = *(&v168 + 1);
  }

  if (v173)
  {
    v45 = 0.0;
  }

  else
  {
    v45 = *&v169;
  }

  v136 = v45;
  v137 = v44;
  if (v173)
  {
    v46 = 0.0;
  }

  else
  {
    v46 = *(&v169 + 1);
  }

  v135 = v46;
  if (v173)
  {
    v47 = v29;
  }

  else
  {
    v47 = *&v172;
  }

  if (v173)
  {
    v48 = v30;
  }

  else
  {
    v48 = *(&v172 + 1);
  }

  v153 = v48;
  v154 = v47;
  if (v173)
  {
    v49 = 0.0;
  }

  else
  {
    v49 = *(&v171 + 1);
  }

  if (v173)
  {
    v50 = 0.0;
  }

  else
  {
    v50 = *&v171;
  }

  v51 = *(&v170 + 1);
  if (v173)
  {
    v52 = v29;
  }

  else
  {
    v52 = *&v170;
  }

  v146 = v30;
  v147 = v29;
  if (v173)
  {
    v51 = v30;
    v53 = 0.0;
  }

  else
  {
    v53 = *&v166;
  }

  if (v173)
  {
    v54 = 0.0;
  }

  else
  {
    v54 = *(&v166 + 1);
  }

  v133 = v51;
  v134 = v52;
  if (v38 == 1)
  {
    v55 = v53;
    v56 = v54;
    v57 = v29 - CGRectGetMaxX(*(&v51 - 3));
    v141 = v50 + v57 - v53;
    v143 = v49 + v54 - v54;
    v53 = v57;
  }

  else
  {
    v141 = v50;
    v143 = v49;
  }

  v171 = 0u;
  v172 = 0u;
  v169 = 0u;
  v170 = 0u;
  v167 = 0u;
  v168 = 0u;
  v166 = 0u;
  v173 = 1;
  v174 = v32;
  v175 = v145;
  v176 = v144;
  v177 = v142;
  v178 = v39;
  v179 = v40;
  specialized ViewTransform.forEach(inverted:_:)(0, &v174, &v166);
  if (v38)
  {
    v59 = *(&v166 + 1);
    v58 = *&v166;
    v61 = *(&v170 + 1);
    v60 = *&v170;
    if (v173)
    {
      v59 = 0.0;
      v58 = 0.0;
      v61 = v146;
      v60 = v147;
    }

    CGRectGetMaxX(*&v58);
  }

  v62 = AGGraphGetValue();
  v63 = *(*v62 + 232);
  v64 = *(*v62 + 240);
  v66 = *(*v62 + 248);
  v65 = *(*v62 + 256);
  *&v166 = v53;
  *(&v166 + 1) = v54;
  *&v167 = v140;
  *(&v167 + 1) = v139;
  *&v168 = v138;
  *(&v168 + 1) = v137;
  *&v169 = v136;
  *(&v169 + 1) = v135;
  *&v170 = v134;
  *(&v170 + 1) = v133;
  v67 = v141;
  v68 = v143;
  *&v171 = v141;
  *(&v171 + 1) = v143;
  *&v172 = v154;
  *(&v172 + 1) = v153;
  if (v148)
  {
    ScrollGeometry.outsetForAX(limit:)(__PAIR128__(*&v146, *&v147));
    v68 = *(&v171 + 1);
    v67 = *&v171;
    v153 = *(&v172 + 1);
    v154 = *&v172;
  }

  v181.origin.x = v63;
  v181.origin.y = v64;
  v181.size.width = v66;
  v181.size.height = v65;
  IsNull = CGRectIsNull(v181);
  v70 = 0.0;
  v71 = 0.0;
  if (v150)
  {
    if (!IsNull)
    {
      if (v155)
      {
        v72 = v65;
      }

      else
      {
        v72 = v66;
      }

      if (v155)
      {
        v73 = v64;
      }

      else
      {
        v73 = v63;
      }

      v74 = v73 + v72;
      if (v74 >= v73)
      {
        v75 = v73;
      }

      else
      {
        v75 = v74;
      }

      if (v73 > v74)
      {
        v74 = v73;
      }

      if (v75 <= v74)
      {
        v71 = v74;
      }
    }

    v182.origin.x = v67;
    v182.origin.y = v68;
    v77 = v153;
    v76 = v154;
    v182.size.width = v154;
    v182.size.height = v153;
    result = CGRectIsNull(v182);
    v78 = v12;
    if ((result & 1) == 0)
    {
      if (v155)
      {
        v79 = v77;
      }

      else
      {
        v79 = v76;
      }

      if (v155)
      {
        v80 = v68;
      }

      else
      {
        v80 = v67;
      }

      v81 = v80 + v79;
      if (v81 >= v80)
      {
        v82 = v80;
      }

      else
      {
        v82 = v81;
      }

      if (v80 > v81)
      {
        v81 = v80;
      }

      if (v82 <= v81)
      {
        v70 = v81;
      }
    }

    if (v70 >= v71)
    {
      goto LABEL_161;
    }
  }

  else
  {
    if (!IsNull)
    {
      if (v155)
      {
        v83 = v65;
      }

      else
      {
        v83 = v66;
      }

      if (v155)
      {
        v84 = v64;
      }

      else
      {
        v84 = v63;
      }

      v85 = v84 + v83;
      if (v84 + v83 >= v84)
      {
        v86 = v84;
      }

      else
      {
        v86 = v84 + v83;
      }

      if (v84 <= v85)
      {
        v84 = v85;
      }

      if (v86 <= v84)
      {
        v71 = v86;
      }
    }

    v183.origin.x = v67;
    v183.origin.y = v68;
    v88 = v153;
    v87 = v154;
    v183.size.width = v154;
    v183.size.height = v153;
    result = CGRectIsNull(v183);
    if ((result & 1) == 0)
    {
      if (v155)
      {
        v89 = v88;
      }

      else
      {
        v89 = v87;
      }

      if (v155)
      {
        v90 = v68;
      }

      else
      {
        v90 = v67;
      }

      v91 = v90 + v89;
      if (v90 + v89 >= v90)
      {
        v92 = v90;
      }

      else
      {
        v92 = v90 + v89;
      }

      if (v90 <= v91)
      {
        v90 = v91;
      }

      if (v92 <= v90)
      {
        v70 = v92;
      }
    }

    v78 = v12;
    if (v71 >= v70)
    {
      goto LABEL_161;
    }
  }

  v155 = a10;
  v93 = *MEMORY[0x1E698D3F8];
  AGGraphGetValue();

  LazyLayoutViewCache.subviews(context:)(v93, &v166);

  v94 = *(**AGGraphGetValue() + 400);

  v94(v16, v16);

  if (v150)
  {
    v95 = v149 + v158 + 1;
    v96 = v78;
    v97 = v151;
    goto LABEL_131;
  }

  v98 = (v156 + 1) * v157;
  if (((v156 + 1) * v157) >> 64 == v98 >> 63)
  {
    v95 = v20 - v98;
    v99 = v20 - v98 < 0;
    v97 = v151;
    if (v99)
    {
      goto LABEL_160;
    }

    v96 = v78;
LABEL_131:
    v165 = MEMORY[0x1E69E7CC0];
    v100 = AGGraphGetValue();
    v101 = *v100;
    v102 = *(v100 + 8);
    v103 = *(v100 + 20);
    LOBYTE(v174) = *(v100 + 16);
    result = a9(v95, &v166, v97, &v165, v101, v102, v174 | (v103 << 32));
    v104 = v165;
    v105 = *(v165 + 16);
    if (v105)
    {
      v151 = v97;
      v156 = a12;
      v154 = a11;
      if (v157 != v105)
      {
        *(v96 + 64) = v105;
      }

      v106 = 0;
      v107 = (v104 + 64);
      v158 = v104;
      while (1)
      {
        if (v106 >= *(v104 + 16))
        {
          goto LABEL_165;
        }

        v109 = *(v107 - 4);
        if (*(v109 + 224) == 1)
        {
          break;
        }

LABEL_138:
        ++v106;
        v107 += 48;
        if (v105 == v106)
        {

          v126 = AGGraphGetValue();
          v127 = *v126;
          v128 = *(*v126 + 156);
          swift_beginAccess();
          v129 = *(v127 + 32);

          LOBYTE(v129) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE028UpdateCycleUseSetNeedsLayoutF033_49A76CA1B5E4F66260081F1C9EDD4305LLV_Tt2g5(v129);
          swift_endAccess();
          LOBYTE(v159[0]) = 10;
          v130 = swift_allocObject();
          *(v130 + 16) = v128;
          *(v130 + 24) = v129 & 1;
          static Update.enqueueAction(reason:_:)(v159, v156, v130);

          v155(v151);
          result = outlined destroy of _LazyLayout_Subviews(&v166);
          *v132 = 2;
          return result;
        }
      }

      v110 = (v109 + 264);
      v111 = (v109 + 257);
      v112 = 0uLL;
      v113 = 0uLL;
      if ((*(v109 + 296) & 1) == 0)
      {
        v112 = *v110;
        v113 = *(v109 + 280);
        v163[0] = *(v109 + 241);
        *(v163 + 3) = *(v109 + 244);
        v161[0] = *v111;
        *(v161 + 3) = *(v109 + 260);
      }

      v114 = *(v107 - 3);
      v116 = *(v107 - 1);
      v117 = *v107;
      v164 = *(v107 - 16);
      v115 = v164;
      v162 = v117;
      v160 = 0;
      *(v109 + 232) = v114;
      *(v109 + 240) = v115;
      *(v109 + 241) = v163[0];
      *(v109 + 244) = *(v163 + 3);
      *(v109 + 248) = v116;
      *(v109 + 256) = v117;
      *v111 = v161[0];
      *(v109 + 260) = *(v161 + 3);
      *v110 = v112;
      *(v109 + 280) = v113;
      *(v109 + 296) = 0;
      swift_beginAccess();
      v118 = *(v109 + 16);
      result = swift_unownedRetainStrong();
      if (!v118)
      {
        goto LABEL_171;
      }

      v119 = *(v118 + 228);
      swift_retain_n();

      *(v109 + 208) = v119;
      v120 = *(v109 + 16);
      result = swift_unownedRetainStrong();
      if (!v120)
      {
        goto LABEL_172;
      }

      if (((*(*v120 + 360))(result) & 1) == 0)
      {
        goto LABEL_152;
      }

      if (one-time initialization token for v7 != -1)
      {
        swift_once();
      }

      v121 = static Semantics.v7;
      if (one-time initialization token for forced != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      if (byte_1ED53C51C == 1)
      {
        v122 = dyld_program_sdk_at_least();
        v104 = v158;
        if ((v122 & 1) == 0)
        {
LABEL_152:

LABEL_153:
          v108 = 0;
          goto LABEL_137;
        }
      }

      else
      {
        v104 = v158;
        if (static Semantics.forced < v121)
        {
          goto LABEL_152;
        }
      }

      swift_beginAccess();
      v123 = v120[4];
      BloomFilter.init(hashValue:)(&type metadata for UsingGraphicsRenderer);
      v124 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA21UsingGraphicsRendererV_Tt0B5(v123, v159[0]);
      if (v124)
      {
        v125 = *(v124 + 72);

        if (v125)
        {
          goto LABEL_153;
        }
      }

      else
      {
      }

      v108 = 1;
LABEL_137:
      *(v109 + 212) = v108;

      goto LABEL_138;
    }

LABEL_160:
    v155(v97);
    result = outlined destroy of _LazyLayout_Subviews(&v166);
LABEL_161:
    *v132 = 0;
    return result;
  }

LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
  return result;
}

uint64_t specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(double a1, double a2, double a3, double a4)
{
  v71 = *MEMORY[0x1E69E9840];
  v55 = type metadata accessor for OSSignpostID();
  v56 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v47[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v48 = &v47[-v10];
  if (one-time initialization token for bodyInvoke != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v11 = static Signpost.bodyInvoke;
    v12 = word_1ED539040;
    v13 = HIBYTE(word_1ED539040);
    v14 = byte_1ED539042;
    v15 = static os_signpost_type_t.begin.getter();
    v67 = v11;
    LOBYTE(v68) = v12;
    BYTE1(v68) = v13;
    BYTE2(v68) = v14;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      break;
    }

    v54 = *(&v11 + 1);
    LODWORD(v58) = v15;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_18DDAB4C0;
    v17 = AGTypeID.description.getter();
    v19 = v18;
    v20 = MEMORY[0x1E69E6158];
    *(v16 + 56) = MEMORY[0x1E69E6158];
    v21 = lazy protocol witness table accessor for type String and conformance String();
    *(v16 + 64) = v21;
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    v22 = specialized static Tracing.libraryName(defining:)();
    *(v16 + 96) = v20;
    *(v16 + 104) = v21;
    *(v16 + 72) = v22;
    *(v16 + 80) = v23;
    v59 = v16;
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    if (v13)
    {
      v66 = v58;
      v64 = _signpostLog;
      v65 = &dword_18D018000;
      *&v67 = v11;
      *(&v67 + 1) = v54;
      LOBYTE(v68) = v12;
      v61 = "%{public}@.body [in %{public}@]";
      v62 = 31;
      v63 = 2;
      v60 = v59;
      v24 = v48;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
      (*(v56 + 8))(v24, v55);
LABEL_34:

      break;
    }

    if (v11 == 20)
    {
      v25 = 3;
    }

    else
    {
      v25 = 4;
    }

    v26 = bswap32(v11) | (4 * WORD1(v11));
    v27 = v58;
    v28 = v56 + 16;
    v49 = *(v56 + 16);
    v29 = v49(v57, v48, v55);
    v30 = 0;
    LOBYTE(v61) = 1;
    v53 = 16 * *(&v11 + 1);
    v56 = v28;
    v54 = (v28 - 8);
    v52 = v59 + 32;
    v51 = v11;
    v50 = *(&v11 + 1);
LABEL_11:
    v58 = v47;
    MEMORY[0x1EEE9AC00](v29);
    v32 = &v47[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v33 = v32 + 8;
    v34 = v25;
    v35 = v32 + 8;
    do
    {
      *(v35 - 1) = 0;
      *v35 = 0;
      v35 += 16;
      --v34;
    }

    while (v34);
    v36 = v52 + 40 * v30;
    while (1)
    {
      v37 = *(v59 + 16);
      if (v30 == v37)
      {
        LOBYTE(v61) = 0;
LABEL_19:
        v40 = v51;
        if (v51 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v32[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v32[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v32[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v40 != 20 && v32[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v41 = *v54;
        v42 = v57;
        v43 = v55;
        (*v54)(v57, v55);
        v44 = __swift_project_value_buffer(v43, static OSSignpostID.continuation);
        v29 = v49(v42, v44, v43);
        v25 = v50;
        if ((v61 & 1) == 0)
        {
          v45 = v55;
          v41(v57, v55);
          v41(v48, v45);
          goto LABEL_34;
        }

        goto LABEL_11;
      }

      if (v30 >= v37)
      {
        break;
      }

      ++v30;
      outlined init with copy of AnyTrackedValue(v36, &v67);
      v38 = v69;
      __swift_project_boxed_opaque_existential_1(&v67, v69);
      *(v33 - 1) = CVarArg.kdebugValue(_:)(v26 | v27, v38);
      *v33 = v39 & 1;
      v33 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v67);
      v36 += 40;
      if (!--v25)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
  }

  AGGraphClearUpdate();
  *&v67 = a1;
  *(&v67 + 1) = a2;
  v68 = a3;
  v69 = *&a4;
  LOWORD(v70) = 256;
  AGGraphSetUpdate();
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for _ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>();
  return AGGraphSetOutputValue();
}

uint64_t specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(_OWORD *a1)
{
  v45 = a1;
  v70 = *MEMORY[0x1E69E9840];
  v52 = type metadata accessor for OSSignpostID();
  v53 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v44[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v2);
  v46 = &v44[-v3];
  if (one-time initialization token for bodyInvoke != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v4 = static Signpost.bodyInvoke;
    v5 = word_1ED539040;
    v6 = HIBYTE(word_1ED539040);
    v7 = byte_1ED539042;
    v8 = static os_signpost_type_t.begin.getter();
    v65 = v4;
    v66 = v5;
    v67 = v6;
    v68 = v7;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      break;
    }

    v55 = *(&v4 + 1);
    LODWORD(v56) = v8;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_18DDAB4C0;
    v10 = AGTypeID.description.getter();
    v12 = v11;
    v13 = MEMORY[0x1E69E6158];
    *(v9 + 56) = MEMORY[0x1E69E6158];
    v14 = lazy protocol witness table accessor for type String and conformance String();
    *(v9 + 64) = v14;
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    v15 = specialized static Tracing.libraryName(defining:)();
    *(v9 + 96) = v13;
    *(v9 + 104) = v14;
    *(v9 + 72) = v15;
    *(v9 + 80) = v16;
    v57 = v9;
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    if (v6)
    {
      v64 = v56;
      v62 = _signpostLog;
      v63 = &dword_18D018000;
      *&v65 = v4;
      *(&v65 + 1) = v55;
      v66 = v5;
      v59 = "%{public}@.body [in %{public}@]";
      v60 = 31;
      v61 = 2;
      v58 = v57;
      v17 = v46;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
      (*(v53 + 8))(v17, v52);
LABEL_34:

      break;
    }

    if (v4 == 20)
    {
      v18 = 3;
    }

    else
    {
      v18 = 4;
    }

    v19 = bswap32(v4) | (4 * WORD1(v4));
    v20 = v56;
    v21 = v53 + 16;
    v47 = *(v53 + 16);
    v22 = v47(v54, v46, v52);
    v23 = 0;
    LOBYTE(v59) = 1;
    v56 = v18;
    v50 = 16 * v18;
    v53 = v21;
    v51 = (v21 - 8);
    v49 = v57 + 32;
    v48 = v4;
LABEL_11:
    v55 = v44;
    MEMORY[0x1EEE9AC00](v22);
    v25 = &v44[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v26 = v25 + 8;
    v27 = v56;
    v28 = v25 + 8;
    do
    {
      *(v28 - 1) = 0;
      *v28 = 0;
      v28 += 16;
      --v27;
    }

    while (v27);
    v29 = v49 + 40 * v23;
    v30 = v56;
    while (1)
    {
      v31 = *(v57 + 16);
      if (v23 == v31)
      {
        LOBYTE(v59) = 0;
LABEL_19:
        v34 = v48;
        if (v48 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v25[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v25[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v25[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v34 != 20 && v25[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v35 = *v51;
        v36 = v54;
        v37 = v52;
        (*v51)(v54, v52);
        v38 = __swift_project_value_buffer(v37, static OSSignpostID.continuation);
        v22 = v47(v36, v38, v37);
        if ((v59 & 1) == 0)
        {
          v39 = v52;
          v35(v54, v52);
          v35(v46, v39);
          goto LABEL_34;
        }

        goto LABEL_11;
      }

      if (v23 >= v31)
      {
        break;
      }

      ++v23;
      outlined init with copy of AnyTrackedValue(v29, &v65);
      v32 = v69;
      __swift_project_boxed_opaque_existential_1(&v65, v69);
      *(v26 - 1) = CVarArg.kdebugValue(_:)(v19 | v20, v32);
      *v26 = v33 & 1;
      v26 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v65);
      v29 += 40;
      if (!--v30)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
  }

  AGGraphClearUpdate();
  v40 = swift_allocObject();
  v41 = v45;
  v42 = v45[1];
  v40[1] = *v45;
  v40[2] = v42;
  v40[3] = *(v41 + 32);
  *(v40 + 57) = *(v41 + 41);
  outlined init with copy of UncheckedSendable<GlassEffectShapeModifier>(v41, &v65, &lazy cache variable for type metadata for UncheckedSendable<_GlassContainerStorageView>, &type metadata for _GlassContainerStorageView, type metadata accessor for UncheckedSendable);
  AGGraphSetUpdate();
  *&v65 = partial apply for closure #1 in _GlassContainerStorageView.body.getter;
  *(&v65 + 1) = v40;
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>(0, &lazy cache variable for type metadata for ModifiedContent<GeometryReader<ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>, _GeometryGroupEffect>, type metadata accessor for GeometryReader<ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>, &type metadata for _GeometryGroupEffect, type metadata accessor for ModifiedContent);
  AGGraphSetOutputValue();
}

{
  v93 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  v63 = v2;
  v64 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v65 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v56 - v6;
  if (one-time initialization token for bodyInvoke != -1)
  {
    swift_once();
  }

  v8 = static Signpost.bodyInvoke;
  v9 = word_1ED539040;
  v10 = HIBYTE(word_1ED539040);
  v11 = byte_1ED539042;
  v12 = static os_signpost_type_t.begin.getter();
  v69 = v8;
  v77 = v8;
  LODWORD(v67) = v9;
  LOBYTE(v78) = v9;
  BYTE1(v78) = v10;
  BYTE2(v78) = v11;
  if (Signpost.isEnabled.getter())
  {
    v62 = *(&v8 + 1);
    LODWORD(v66) = v12;
    v56 = a1;
    v57 = v7;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18DDAB4C0;
    v14 = AGTypeID.description.getter();
    v16 = v15;
    v17 = MEMORY[0x1E69E6158];
    *(v13 + 56) = MEMORY[0x1E69E6158];
    v18 = lazy protocol witness table accessor for type String and conformance String();
    *(v13 + 64) = v18;
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    v19 = specialized static Tracing.libraryName(defining:)();
    *(v13 + 96) = v17;
    *(v13 + 104) = v18;
    *(v13 + 72) = v19;
    *(v13 + 80) = v20;
    v68 = v13;
    if (one-time initialization token for _signpostLog == -1)
    {
      v21 = v62;
      if (v10)
      {
LABEL_6:
        v76 = v66;
        v74 = _signpostLog;
        v75 = &dword_18D018000;
        *&v77 = v69;
        *(&v77 + 1) = v21;
        LOBYTE(v78) = v67;
        v71 = "%{public}@.body [in %{public}@]";
        v72 = 31;
        v73 = 2;
        v70 = v68;
        v22 = v57;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
        (*(v64 + 8))(v22, v63);
LABEL_35:

        a1 = v56;
        goto LABEL_36;
      }
    }

    else
    {
      swift_once();
      v21 = v62;
      if (v10)
      {
        goto LABEL_6;
      }
    }

    v23 = v69;
    if (v69 == 20)
    {
      v24 = 3;
    }

    else
    {
      v24 = 4;
    }

    v25 = bswap32(v69) | (4 * WORD1(v69));
    LODWORD(v69) = v66;
    v26 = v64 + 16;
    v58 = *(v64 + 16);
    v27 = v58(v65, v57, v63);
    v28 = 0;
    LOBYTE(v71) = 1;
    v67 = v24;
    v64 = v26;
    v61 = 16 * v24;
    v62 = (v26 - 8);
    v59 = v23;
    v60 = v68 + 32;
    do
    {
      v66 = &v56;
      MEMORY[0x1EEE9AC00](v27);
      v30 = &v56 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
      v31 = v30 + 8;
      v32 = v67;
      v33 = v30 + 8;
      do
      {
        *(v33 - 1) = 0;
        *v33 = 0;
        v33 += 16;
        --v32;
      }

      while (v32);
      v34 = v60 + 40 * v28;
      v35 = v67;
      while (1)
      {
        v36 = *(v68 + 16);
        if (v28 == v36)
        {
          break;
        }

        if (v28 >= v36)
        {
          __break(1u);
        }

        ++v28;
        outlined init with copy of AnyTrackedValue(v34, &v77);
        v37 = *(&v78 + 1);
        __swift_project_boxed_opaque_existential_1(&v77, *(&v78 + 1));
        *(v31 - 1) = CVarArg.kdebugValue(_:)(v25 | v69, v37);
        *v31 = v38 & 1;
        v31 += 16;
        __swift_destroy_boxed_opaque_existential_1(&v77);
        v34 += 40;
        if (!--v35)
        {
          goto LABEL_20;
        }
      }

      LOBYTE(v71) = 0;
LABEL_20:
      v39 = v59;
      if (v59 == 20)
      {
        OSSignpostID.rawValue.getter();
      }

      kdebug_trace();
      if (v30[8] == 1)
      {
        kdebug_trace_string();
      }

      if (v30[24] == 1)
      {
        kdebug_trace_string();
      }

      if (v30[40] == 1)
      {
        kdebug_trace_string();
      }

      if (v39 != 20 && v30[56] == 1)
      {
        kdebug_trace_string();
      }

      if (one-time initialization token for continuation != -1)
      {
        swift_once();
      }

      v40 = v63;
      v41 = *v62;
      v42 = v65;
      (*v62)(v65, v63);
      v43 = __swift_project_value_buffer(v40, static OSSignpostID.continuation);
      v27 = v58(v42, v43, v40);
    }

    while ((v71 & 1) != 0);
    v44 = v63;
    v41(v65, v63);
    v41(v57, v44);
    goto LABEL_35;
  }

LABEL_36:
  AGGraphClearUpdate();
  v45 = a1[12];
  v46 = a1[13];
  v47 = a1[10];
  v88 = a1[11];
  v89 = v45;
  v48 = a1[14];
  v90 = v46;
  v91 = v48;
  v49 = a1[8];
  v50 = a1[9];
  v51 = a1[6];
  v84 = a1[7];
  v85 = v49;
  v86 = v50;
  v87 = v47;
  v52 = a1[4];
  v82 = a1[5];
  v83 = v51;
  v53 = a1[1];
  v77 = *a1;
  v78 = v53;
  v54 = a1[2];
  v80 = a1[3];
  v81 = v52;
  v79 = v54;
  v92 = 256;
  AGGraphSetUpdate();
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for _ShapeView<PartialContainerRelativeShape, ForegroundStyle>();
  return AGGraphSetOutputValue();
}

uint64_t specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(const void *a1)
{
  v73 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  v54 = v2;
  v55 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v56 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v47 - v6;
  if (one-time initialization token for bodyInvoke != -1)
  {
    swift_once();
  }

  v8 = static Signpost.bodyInvoke;
  v9 = word_1ED539040;
  v10 = HIBYTE(word_1ED539040);
  v11 = byte_1ED539042;
  v12 = static os_signpost_type_t.begin.getter();
  v60 = v8;
  v68 = v8;
  LODWORD(v58) = v9;
  v69 = v9;
  v70 = v10;
  v71 = v11;
  if (Signpost.isEnabled.getter())
  {
    v53 = *(&v8 + 1);
    LODWORD(v57) = v12;
    v47 = a1;
    v48 = v7;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18DDAB4C0;
    v14 = AGTypeID.description.getter();
    v16 = v15;
    v17 = MEMORY[0x1E69E6158];
    *(v13 + 56) = MEMORY[0x1E69E6158];
    v18 = lazy protocol witness table accessor for type String and conformance String();
    *(v13 + 64) = v18;
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    v19 = specialized static Tracing.libraryName(defining:)();
    *(v13 + 96) = v17;
    *(v13 + 104) = v18;
    *(v13 + 72) = v19;
    *(v13 + 80) = v20;
    v59 = v13;
    if (one-time initialization token for _signpostLog == -1)
    {
      v21 = v53;
      if (v10)
      {
LABEL_6:
        v67 = v57;
        v65 = _signpostLog;
        v66 = &dword_18D018000;
        *&v68 = v60;
        *(&v68 + 1) = v21;
        v69 = v58;
        v62 = "%{public}@.body [in %{public}@]";
        v63 = 31;
        v64 = 2;
        v61 = v59;
        v22 = v48;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
        (*(v55 + 8))(v22, v54);
LABEL_35:

        a1 = v47;
        goto LABEL_36;
      }
    }

    else
    {
      swift_once();
      v21 = v53;
      if (v10)
      {
        goto LABEL_6;
      }
    }

    v23 = v60;
    if (v60 == 20)
    {
      v24 = 3;
    }

    else
    {
      v24 = 4;
    }

    v25 = bswap32(v60) | (4 * WORD1(v60));
    LODWORD(v60) = v57;
    v26 = v55 + 16;
    v49 = *(v55 + 16);
    v27 = v49(v56, v48, v54);
    v28 = 0;
    LOBYTE(v62) = 1;
    v58 = v24;
    v55 = v26;
    v52 = 16 * v24;
    v53 = (v26 - 8);
    v50 = v23;
    v51 = v59 + 32;
    do
    {
      v57 = &v47;
      MEMORY[0x1EEE9AC00](v27);
      v30 = &v47 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
      v31 = v30 + 8;
      v32 = v58;
      v33 = v30 + 8;
      do
      {
        *(v33 - 1) = 0;
        *v33 = 0;
        v33 += 16;
        --v32;
      }

      while (v32);
      v34 = v51 + 40 * v28;
      v35 = v58;
      while (1)
      {
        v36 = *(v59 + 16);
        if (v28 == v36)
        {
          break;
        }

        if (v28 >= v36)
        {
          __break(1u);
        }

        ++v28;
        outlined init with copy of AnyTrackedValue(v34, &v68);
        v37 = v72;
        __swift_project_boxed_opaque_existential_1(&v68, v72);
        *(v31 - 1) = CVarArg.kdebugValue(_:)(v25 | v60, v37);
        *v31 = v38 & 1;
        v31 += 16;
        __swift_destroy_boxed_opaque_existential_1(&v68);
        v34 += 40;
        if (!--v35)
        {
          goto LABEL_20;
        }
      }

      LOBYTE(v62) = 0;
LABEL_20:
      v39 = v50;
      if (v50 == 20)
      {
        OSSignpostID.rawValue.getter();
      }

      kdebug_trace();
      if (v30[8] == 1)
      {
        kdebug_trace_string();
      }

      if (v30[24] == 1)
      {
        kdebug_trace_string();
      }

      if (v30[40] == 1)
      {
        kdebug_trace_string();
      }

      if (v39 != 20 && v30[56] == 1)
      {
        kdebug_trace_string();
      }

      if (one-time initialization token for continuation != -1)
      {
        swift_once();
      }

      v40 = v54;
      v41 = *v53;
      v42 = v56;
      (*v53)(v56, v54);
      v43 = __swift_project_value_buffer(v40, static OSSignpostID.continuation);
      v27 = v49(v42, v43, v40);
    }

    while ((v62 & 1) != 0);
    v44 = v54;
    v41(v56, v54);
    v41(v48, v44);
    goto LABEL_35;
  }

LABEL_36:
  AGGraphClearUpdate();
  v45 = swift_allocObject();
  memcpy((v45 + 16), a1, 0x230uLL);
  outlined init with copy of UncheckedSendable<GlassEffectShapeModifier>(a1, &v68, &lazy cache variable for type metadata for UncheckedSendable<GlassEntryContainerView>, &type metadata for GlassEntryContainerView, type metadata accessor for UncheckedSendable);
  AGGraphSetUpdate();
  *&v68 = partial apply for closure #1 in GlassEntryContainerView.body.getter;
  *(&v68 + 1) = v45;
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for GeometryReader<GlassEntryView>, lazy protocol witness table accessor for type GlassEntryView and conformance GlassEntryView, &type metadata for GlassEntryView, type metadata accessor for GeometryReader);
  AGGraphSetOutputValue();
}

{
  v67 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  v54 = v2;
  v55 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v56 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v46 - v6;
  if (one-time initialization token for bodyInvoke != -1)
  {
    swift_once();
  }

  v8 = static Signpost.bodyInvoke;
  v9 = word_1ED539040;
  v10 = HIBYTE(word_1ED539040);
  v11 = byte_1ED539042;
  v12 = static os_signpost_type_t.begin.getter();
  v60 = v8;
  *v66 = v8;
  LODWORD(v58) = v9;
  v66[16] = v9;
  v66[17] = v10;
  v66[18] = v11;
  if (Signpost.isEnabled.getter())
  {
    v53 = *(&v8 + 1);
    LODWORD(v57) = v12;
    v47 = a1;
    v48 = v7;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18DDAB4C0;
    v14 = AGTypeID.description.getter();
    v16 = v15;
    v17 = MEMORY[0x1E69E6158];
    *(v13 + 56) = MEMORY[0x1E69E6158];
    v18 = lazy protocol witness table accessor for type String and conformance String();
    *(v13 + 64) = v18;
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    v19 = specialized static Tracing.libraryName(defining:)();
    *(v13 + 96) = v17;
    *(v13 + 104) = v18;
    *(v13 + 72) = v19;
    *(v13 + 80) = v20;
    v59 = v13;
    if (one-time initialization token for _signpostLog == -1)
    {
      v21 = v53;
      if (v10)
      {
LABEL_6:
        v64 = v57;
        v62 = _signpostLog;
        v63 = &dword_18D018000;
        *v66 = v60;
        *&v66[8] = v21;
        v66[16] = v58;
        v65[0] = "%{public}@.body [in %{public}@]";
        v65[1] = 31;
        LOBYTE(v65[2]) = 2;
        v61 = v59;
        v22 = v48;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
        (*(v55 + 8))(v22, v54);
LABEL_35:

        a1 = v47;
        goto LABEL_36;
      }
    }

    else
    {
      swift_once();
      v21 = v53;
      if (v10)
      {
        goto LABEL_6;
      }
    }

    v23 = v60;
    if (v60 == 20)
    {
      v24 = 3;
    }

    else
    {
      v24 = 4;
    }

    v25 = bswap32(v60) | (4 * WORD1(v60));
    LODWORD(v60) = v57;
    v26 = v55 + 16;
    v49 = *(v55 + 16);
    v27 = v49(v56, v48, v54);
    v28 = 0;
    LOBYTE(v65[0]) = 1;
    v58 = v24;
    v55 = v26;
    v52 = 16 * v24;
    v53 = (v26 - 8);
    v50 = v23;
    v51 = v59 + 32;
    do
    {
      v57 = &v46;
      MEMORY[0x1EEE9AC00](v27);
      v30 = &v46 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
      v31 = v30 + 8;
      v32 = v58;
      v33 = v30 + 8;
      do
      {
        *(v33 - 1) = 0;
        *v33 = 0;
        v33 += 16;
        --v32;
      }

      while (v32);
      v34 = v51 + 40 * v28;
      v35 = v58;
      while (1)
      {
        v36 = *(v59 + 16);
        if (v28 == v36)
        {
          break;
        }

        if (v28 >= v36)
        {
          __break(1u);
        }

        ++v28;
        outlined init with copy of AnyTrackedValue(v34, v66);
        v37 = *&v66[24];
        __swift_project_boxed_opaque_existential_1(v66, *&v66[24]);
        *(v31 - 1) = CVarArg.kdebugValue(_:)(v25 | v60, v37);
        *v31 = v38 & 1;
        v31 += 16;
        __swift_destroy_boxed_opaque_existential_1(v66);
        v34 += 40;
        if (!--v35)
        {
          goto LABEL_20;
        }
      }

      LOBYTE(v65[0]) = 0;
LABEL_20:
      v39 = v50;
      if (v50 == 20)
      {
        OSSignpostID.rawValue.getter();
      }

      kdebug_trace();
      if (v30[8] == 1)
      {
        kdebug_trace_string();
      }

      if (v30[24] == 1)
      {
        kdebug_trace_string();
      }

      if (v30[40] == 1)
      {
        kdebug_trace_string();
      }

      if (v39 != 20 && v30[56] == 1)
      {
        kdebug_trace_string();
      }

      if (one-time initialization token for continuation != -1)
      {
        swift_once();
      }

      v40 = v54;
      v41 = *v53;
      v42 = v56;
      (*v53)(v56, v54);
      v43 = __swift_project_value_buffer(v40, static OSSignpostID.continuation);
      v27 = v49(v42, v43, v40);
    }

    while ((v65[0] & 1) != 0);
    v44 = v54;
    v41(v56, v54);
    v41(v48, v44);
    goto LABEL_35;
  }

LABEL_36:
  AGGraphClearUpdate();
  memcpy(v65, a1, 0x11CuLL);
  GlassEffectView.body.getter(v66);
  AGGraphSetUpdate();
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>(0, &lazy cache variable for type metadata for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEffectLayout>, ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>>, GlassMaterialEffect>, type metadata accessor for _VariadicView.Tree<_LayoutRoot<GlassEffectLayout>, ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>>, &type metadata for GlassMaterialEffect, type metadata accessor for ModifiedContent);
  AGGraphSetOutputValue();
  memcpy(v65, v66, 0x194uLL);
  return outlined destroy of ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, GlassEffectContainerModifier>(v65, &lazy cache variable for type metadata for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEffectLayout>, ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>>, GlassMaterialEffect>, type metadata accessor for _VariadicView.Tree<_LayoutRoot<GlassEffectLayout>, ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>>, &type metadata for GlassMaterialEffect, type metadata accessor for ModifiedContent);
}

{
  v71 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  v55 = v2;
  v56 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v57 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v47 - v6;
  if (one-time initialization token for bodyInvoke != -1)
  {
    swift_once();
  }

  v8 = static Signpost.bodyInvoke;
  v9 = word_1ED539040;
  v10 = HIBYTE(word_1ED539040);
  v11 = byte_1ED539042;
  v12 = static os_signpost_type_t.begin.getter();
  v61 = v8;
  v69[0] = v8;
  LODWORD(v59) = v9;
  LOBYTE(v69[1]) = v9;
  v13 = v10;
  BYTE1(v69[1]) = v10;
  BYTE2(v69[1]) = v11;
  if (Signpost.isEnabled.getter())
  {
    v54 = *(&v8 + 1);
    LODWORD(v58) = v12;
    v48 = a1;
    v49 = v7;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_18DDAB4C0;
    v15 = AGTypeID.description.getter();
    v17 = v16;
    v18 = MEMORY[0x1E69E6158];
    *(v14 + 56) = MEMORY[0x1E69E6158];
    v19 = lazy protocol witness table accessor for type String and conformance String();
    *(v14 + 64) = v19;
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    v20 = specialized static Tracing.libraryName(defining:)();
    *(v14 + 96) = v18;
    *(v14 + 104) = v19;
    *(v14 + 72) = v20;
    *(v14 + 80) = v21;
    v60 = v14;
    if (one-time initialization token for _signpostLog == -1)
    {
      v22 = v54;
      if (v13)
      {
LABEL_6:
        v68 = v58;
        v66 = _signpostLog;
        v67 = &dword_18D018000;
        *&v69[0] = v61;
        *(&v69[0] + 1) = v22;
        LOBYTE(v69[1]) = v59;
        v63 = "%{public}@.body [in %{public}@]";
        v64 = 31;
        v65 = 2;
        v62 = v60;
        v23 = v49;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
        (*(v56 + 8))(v23, v55);
LABEL_35:

        a1 = v48;
        goto LABEL_36;
      }
    }

    else
    {
      swift_once();
      v22 = v54;
      if (v13)
      {
        goto LABEL_6;
      }
    }

    v24 = v61;
    if (v61 == 20)
    {
      v25 = 3;
    }

    else
    {
      v25 = 4;
    }

    v26 = bswap32(v61) | (4 * WORD1(v61));
    LODWORD(v61) = v58;
    v27 = v56 + 16;
    v50 = *(v56 + 16);
    v28 = v50(v57, v49, v55);
    v29 = 0;
    LOBYTE(v63) = 1;
    v59 = v25;
    v56 = v27;
    v53 = 16 * v25;
    v54 = (v27 - 8);
    v51 = v24;
    v52 = v60 + 32;
    do
    {
      v58 = &v47;
      MEMORY[0x1EEE9AC00](v28);
      v31 = &v47 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
      v32 = v31 + 8;
      v33 = v59;
      v34 = v31 + 8;
      do
      {
        *(v34 - 1) = 0;
        *v34 = 0;
        v34 += 16;
        --v33;
      }

      while (v33);
      v35 = v52 + 40 * v29;
      v36 = v59;
      while (1)
      {
        v37 = *(v60 + 16);
        if (v29 == v37)
        {
          break;
        }

        if (v29 >= v37)
        {
          __break(1u);
        }

        ++v29;
        outlined init with copy of AnyTrackedValue(v35, v69);
        v38 = *(&v69[1] + 1);
        __swift_project_boxed_opaque_existential_1(v69, *(&v69[1] + 1));
        *(v32 - 1) = CVarArg.kdebugValue(_:)(v26 | v61, v38);
        *v32 = v39 & 1;
        v32 += 16;
        __swift_destroy_boxed_opaque_existential_1(v69);
        v35 += 40;
        if (!--v36)
        {
          goto LABEL_20;
        }
      }

      LOBYTE(v63) = 0;
LABEL_20:
      v40 = v51;
      if (v51 == 20)
      {
        OSSignpostID.rawValue.getter();
      }

      kdebug_trace();
      if (v31[8] == 1)
      {
        kdebug_trace_string();
      }

      if (v31[24] == 1)
      {
        kdebug_trace_string();
      }

      if (v31[40] == 1)
      {
        kdebug_trace_string();
      }

      if (v40 != 20 && v31[56] == 1)
      {
        kdebug_trace_string();
      }

      if (one-time initialization token for continuation != -1)
      {
        swift_once();
      }

      v41 = v55;
      v42 = *v54;
      v43 = v57;
      (*v54)(v57, v55);
      v44 = __swift_project_value_buffer(v41, static OSSignpostID.continuation);
      v28 = v50(v43, v44, v41);
    }

    while ((v63 & 1) != 0);
    v45 = v55;
    v42(v57, v55);
    v42(v49, v45);
    goto LABEL_35;
  }

LABEL_36:
  AGGraphClearUpdate();
  memcpy(v69, a1, sizeof(v69));
  v70 = 256;
  AGGraphSetUpdate();
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for _ShapeView<ConcentricRectangle, ForegroundStyle>();
  return AGGraphSetOutputValue();
}

uint64_t specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(uint64_t a1, double a2)
{
  v46 = a1;
  v70 = *MEMORY[0x1E69E9840];
  v53 = type metadata accessor for OSSignpostID();
  v54 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v47 = &v45 - v5;
  if (one-time initialization token for bodyInvoke != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v6 = static Signpost.bodyInvoke;
    v7 = word_1ED539040;
    v8 = HIBYTE(word_1ED539040);
    v9 = byte_1ED539042;
    v10 = static os_signpost_type_t.begin.getter();
    v66 = v6;
    LOBYTE(v67) = v7;
    BYTE1(v67) = v8;
    BYTE2(v67) = v9;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      break;
    }

    v56 = *(&v6 + 1);
    LODWORD(v57) = v10;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_18DDAB4C0;
    v12 = AGTypeID.description.getter();
    v14 = v13;
    v15 = MEMORY[0x1E69E6158];
    *(v11 + 56) = MEMORY[0x1E69E6158];
    v16 = lazy protocol witness table accessor for type String and conformance String();
    *(v11 + 64) = v16;
    *(v11 + 32) = v12;
    *(v11 + 40) = v14;
    v17 = specialized static Tracing.libraryName(defining:)();
    *(v11 + 96) = v15;
    *(v11 + 104) = v16;
    *(v11 + 72) = v17;
    *(v11 + 80) = v18;
    v58 = v11;
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    if (v8)
    {
      v62 = v57;
      v60 = _signpostLog;
      v61 = &dword_18D018000;
      *&v66 = v6;
      *(&v66 + 1) = v56;
      LOBYTE(v67) = v7;
      v63 = "%{public}@.body [in %{public}@]";
      *&v64 = 31;
      BYTE8(v64) = 2;
      v59 = v58;
      v19 = v47;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
      (*(v54 + 8))(v19, v53);
LABEL_34:

      break;
    }

    if (v6 == 20)
    {
      v20 = 3;
    }

    else
    {
      v20 = 4;
    }

    v21 = bswap32(v6) | (4 * WORD1(v6));
    v22 = v57;
    v23 = v54 + 16;
    v48 = *(v54 + 16);
    v24 = v48(v55, v47, v53);
    v25 = 0;
    LOBYTE(v63) = 1;
    v57 = v20;
    v51 = 16 * v20;
    v54 = v23;
    v52 = (v23 - 8);
    v50 = v58 + 32;
    v49 = v6;
LABEL_11:
    v56 = &v45;
    MEMORY[0x1EEE9AC00](v24);
    v27 = &v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    v28 = v27 + 8;
    v29 = v57;
    v30 = v27 + 8;
    do
    {
      *(v30 - 1) = 0;
      *v30 = 0;
      v30 += 16;
      --v29;
    }

    while (v29);
    v31 = v50 + 40 * v25;
    v32 = v57;
    while (1)
    {
      v33 = *(v58 + 16);
      if (v25 == v33)
      {
        LOBYTE(v63) = 0;
LABEL_19:
        v36 = v49;
        if (v49 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v27[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v27[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v27[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v36 != 20 && v27[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v37 = *v52;
        v38 = v55;
        v39 = v53;
        (*v52)(v55, v53);
        v40 = __swift_project_value_buffer(v39, static OSSignpostID.continuation);
        v24 = v48(v38, v40, v39);
        if ((v63 & 1) == 0)
        {
          v41 = v53;
          v37(v55, v53);
          v37(v47, v41);
          goto LABEL_34;
        }

        goto LABEL_11;
      }

      if (v25 >= v33)
      {
        break;
      }

      ++v25;
      outlined init with copy of AnyTrackedValue(v31, &v66);
      v34 = *(&v67 + 1);
      __swift_project_boxed_opaque_existential_1(&v66, *(&v67 + 1));
      *(v28 - 1) = CVarArg.kdebugValue(_:)(v21 | v22, v34);
      *v28 = v35 & 1;
      v28 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v66);
      v31 += 40;
      if (!--v32)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_39:
    swift_once();
  }

  AGGraphClearUpdate();
  if (one-time initialization token for symbolImage != -1)
  {
    swift_once();
  }

  v42 = static SummarySymbol.symbolImage;
  v43 = v46;
  SummarySymbol.gradient.getter(v46, &v63, a2);
  *&v66 = v42;
  *(&v66 + 1) = v63;
  v67 = v64;
  v68 = v65;
  v69 = v43;

  AGGraphSetUpdate();
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for ModifiedContent<Text, _OverlayPreferenceModifier<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>>(0, &lazy cache variable for type metadata for ModifiedContent<Image, _ForegroundStyleModifier2<AngularGradient, Color>>, type metadata accessor for _ForegroundStyleModifier2<AngularGradient, Color>);
  AGGraphSetOutputValue();
}

uint64_t specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v50 = a3;
  *(&v49 + 1) = a2;
  *&v49 = a1;
  v73 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(v4 - 8);
  v58 = v4;
  v59 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v60 = &v48[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v52 = &v48[-v8];
  if (one-time initialization token for bodyInvoke != -1)
  {
    swift_once();
  }

  v9 = static Signpost.bodyInvoke;
  v10 = word_1ED539040;
  v11 = HIBYTE(word_1ED539040);
  v12 = byte_1ED539042;
  v13 = static os_signpost_type_t.begin.getter();
  v70 = v9;
  LOBYTE(v71) = v10;
  BYTE1(v71) = v11;
  BYTE2(v71) = v12;
  if (Signpost.isEnabled.getter())
  {
    v61 = *(&v9 + 1);
    LODWORD(v62) = v13;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_18DDAB4C0;
    v15 = AGTypeID.description.getter();
    v17 = v16;
    v18 = MEMORY[0x1E69E6158];
    *(v14 + 56) = MEMORY[0x1E69E6158];
    v19 = lazy protocol witness table accessor for type String and conformance String();
    *(v14 + 64) = v19;
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    v20 = specialized static Tracing.libraryName(defining:)();
    *(v14 + 96) = v18;
    *(v14 + 104) = v19;
    *(v14 + 72) = v20;
    *(v14 + 80) = v21;
    v63 = v14;
    if (one-time initialization token for _signpostLog == -1)
    {
      v22 = v61;
      if (v11)
      {
LABEL_6:
        v69 = v62;
        v67 = _signpostLog;
        v68 = &dword_18D018000;
        *&v70 = v9;
        *(&v70 + 1) = v22;
        LOBYTE(v71) = v10;
        v65[0] = "%{public}@.body [in %{public}@]";
        v65[1] = 31;
        v66 = 2;
        v64 = v63;
        v23 = v52;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
        (*(v59 + 8))(v23, v58);
LABEL_35:

        goto LABEL_36;
      }
    }

    else
    {
      swift_once();
      v22 = v61;
      if (v11)
      {
        goto LABEL_6;
      }
    }

    if (v9 == 20)
    {
      v24 = 3;
    }

    else
    {
      v24 = 4;
    }

    v25 = bswap32(v9) | (4 * WORD1(v9));
    v26 = v62;
    v27 = v59 + 16;
    v53 = *(v59 + 16);
    v28 = v53(v60, v52, v58);
    v29 = 0;
    LOBYTE(v65[0]) = 1;
    v62 = v24;
    v59 = v27;
    v56 = 16 * v24;
    v57 = (v27 - 8);
    v55 = v63 + 32;
    v54 = v9;
    do
    {
      v61 = v48;
      MEMORY[0x1EEE9AC00](v28);
      v31 = &v48[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
      v32 = v31 + 8;
      v33 = v62;
      v34 = v31 + 8;
      do
      {
        *(v34 - 1) = 0;
        *v34 = 0;
        v34 += 16;
        --v33;
      }

      while (v33);
      v35 = v55 + 40 * v29;
      v36 = v62;
      while (1)
      {
        v37 = *(v63 + 16);
        if (v29 == v37)
        {
          break;
        }

        if (v29 >= v37)
        {
          __break(1u);
        }

        ++v29;
        outlined init with copy of AnyTrackedValue(v35, &v70);
        v38 = v72;
        __swift_project_boxed_opaque_existential_1(&v70, v72);
        *(v32 - 1) = CVarArg.kdebugValue(_:)(v25 | v26, v38);
        *v32 = v39 & 1;
        v32 += 16;
        __swift_destroy_boxed_opaque_existential_1(&v70);
        v35 += 40;
        if (!--v36)
        {
          goto LABEL_20;
        }
      }

      LOBYTE(v65[0]) = 0;
LABEL_20:
      v40 = v54;
      if (v54 == 20)
      {
        OSSignpostID.rawValue.getter();
      }

      kdebug_trace();
      if (v31[8] == 1)
      {
        kdebug_trace_string();
      }

      if (v31[24] == 1)
      {
        kdebug_trace_string();
      }

      if (v31[40] == 1)
      {
        kdebug_trace_string();
      }

      if (v40 != 20 && v31[56] == 1)
      {
        kdebug_trace_string();
      }

      if (one-time initialization token for continuation != -1)
      {
        swift_once();
      }

      v41 = v58;
      v42 = *v57;
      v43 = v60;
      (*v57)(v60, v58);
      v44 = __swift_project_value_buffer(v41, static OSSignpostID.continuation);
      v28 = v53(v43, v44, v41);
    }

    while ((v65[0] & 1) != 0);
    v45 = v58;
    v42(v60, v58);
    v42(v52, v45);
    goto LABEL_35;
  }

LABEL_36:
  AGGraphClearUpdate();
  v70 = v49;
  v71 = v50;
  v72 = v51;
  _TestApp.RootView.body.getter(v65);
  v46 = v65[0];
  AGGraphSetUpdate();
  *&v70 = v46;
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  AGGraphSetOutputValue();
}

uint64_t specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(int a1)
{
  v44 = a1;
  v69 = *MEMORY[0x1E69E9840];
  v1 = type metadata accessor for OSSignpostID();
  v2 = *(v1 - 8);
  v51 = v1;
  v52 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v53 = &v43[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v45 = &v43[-v5];
  if (one-time initialization token for bodyInvoke != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v6 = static Signpost.bodyInvoke;
    v7 = word_1ED539040;
    v8 = HIBYTE(word_1ED539040);
    v9 = byte_1ED539042;
    v10 = static os_signpost_type_t.begin.getter();
    v64 = v6;
    v65 = v7;
    v66 = v8;
    v67 = v9;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      break;
    }

    v54 = *(&v6 + 1);
    LODWORD(v55) = v10;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_18DDAB4C0;
    v12 = AGTypeID.description.getter();
    v14 = v13;
    v15 = MEMORY[0x1E69E6158];
    *(v11 + 56) = MEMORY[0x1E69E6158];
    v16 = lazy protocol witness table accessor for type String and conformance String();
    *(v11 + 64) = v16;
    *(v11 + 32) = v12;
    *(v11 + 40) = v14;
    v17 = specialized static Tracing.libraryName(defining:)();
    *(v11 + 96) = v15;
    *(v11 + 104) = v16;
    *(v11 + 72) = v17;
    *(v11 + 80) = v18;
    v56 = v11;
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    if (v8)
    {
      v63 = v55;
      v61 = _signpostLog;
      v62 = &dword_18D018000;
      *&v64 = v6;
      *(&v64 + 1) = v54;
      v65 = v7;
      v58 = "%{public}@.body [in %{public}@]";
      v59 = 31;
      v60 = 2;
      v57 = v56;
      v19 = v45;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
      (*(v52 + 8))(v19, v51);
LABEL_34:

      break;
    }

    if (v6 == 20)
    {
      v20 = 3;
    }

    else
    {
      v20 = 4;
    }

    v21 = bswap32(v6) | (4 * WORD1(v6));
    v22 = v55;
    v23 = v52 + 16;
    v46 = *(v52 + 16);
    v24 = v46(v53, v45, v51);
    v25 = 0;
    LOBYTE(v58) = 1;
    v55 = v20;
    v52 = v23;
    v49 = 16 * v20;
    v50 = (v23 - 8);
    v48 = v56 + 32;
    v47 = v6;
LABEL_11:
    v54 = v43;
    MEMORY[0x1EEE9AC00](v24);
    v27 = &v43[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v28 = v27 + 8;
    v29 = v55;
    v30 = v27 + 8;
    do
    {
      *(v30 - 1) = 0;
      *v30 = 0;
      v30 += 16;
      --v29;
    }

    while (v29);
    v31 = v48 + 40 * v25;
    v32 = v55;
    while (1)
    {
      v33 = *(v56 + 16);
      if (v25 == v33)
      {
        LOBYTE(v58) = 0;
LABEL_19:
        v36 = v47;
        if (v47 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v27[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v27[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v27[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v36 != 20 && v27[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v37 = v51;
        v38 = *v50;
        v39 = v53;
        (*v50)(v53, v51);
        v40 = __swift_project_value_buffer(v37, static OSSignpostID.continuation);
        v24 = v46(v39, v40, v37);
        if ((v58 & 1) == 0)
        {
          v41 = v51;
          v38(v53, v51);
          v38(v45, v41);
          goto LABEL_34;
        }

        goto LABEL_11;
      }

      if (v25 >= v33)
      {
        break;
      }

      ++v25;
      outlined init with copy of AnyTrackedValue(v31, &v64);
      v34 = v68;
      __swift_project_boxed_opaque_existential_1(&v64, v68);
      *(v28 - 1) = CVarArg.kdebugValue(_:)(v21 | v22, v34);
      *v28 = v35 & 1;
      v28 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v64);
      v31 += 40;
      if (!--v32)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
  }

  AGGraphClearUpdate();
  LOBYTE(v64) = v44 & 1;
  *(&v64 + 1) = 256;
  AGGraphSetUpdate();
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for _ShapeView<Capsule, ForegroundStyle>();
  return AGGraphSetOutputValue();
}

{
  v44 = a1;
  v69 = *MEMORY[0x1E69E9840];
  v1 = type metadata accessor for OSSignpostID();
  v2 = *(v1 - 8);
  v51 = v1;
  v52 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v53 = &v43[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v45 = &v43[-v5];
  if (one-time initialization token for bodyInvoke != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v6 = static Signpost.bodyInvoke;
    v7 = word_1ED539040;
    v8 = HIBYTE(word_1ED539040);
    v9 = byte_1ED539042;
    v10 = static os_signpost_type_t.begin.getter();
    v64 = v6;
    v65 = v7;
    v66 = v8;
    v67 = v9;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      break;
    }

    v54 = *(&v6 + 1);
    LODWORD(v55) = v10;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_18DDAB4C0;
    v12 = AGTypeID.description.getter();
    v14 = v13;
    v15 = MEMORY[0x1E69E6158];
    *(v11 + 56) = MEMORY[0x1E69E6158];
    v16 = lazy protocol witness table accessor for type String and conformance String();
    *(v11 + 64) = v16;
    *(v11 + 32) = v12;
    *(v11 + 40) = v14;
    v17 = specialized static Tracing.libraryName(defining:)();
    *(v11 + 96) = v15;
    *(v11 + 104) = v16;
    *(v11 + 72) = v17;
    *(v11 + 80) = v18;
    v56 = v11;
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    if (v8)
    {
      v63 = v55;
      v61 = _signpostLog;
      v62 = &dword_18D018000;
      *&v64 = v6;
      *(&v64 + 1) = v54;
      v65 = v7;
      v58 = "%{public}@.body [in %{public}@]";
      v59 = 31;
      v60 = 2;
      v57 = v56;
      v19 = v45;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
      (*(v52 + 8))(v19, v51);
LABEL_34:

      break;
    }

    if (v6 == 20)
    {
      v20 = 3;
    }

    else
    {
      v20 = 4;
    }

    v21 = bswap32(v6) | (4 * WORD1(v6));
    v22 = v55;
    v23 = v52 + 16;
    v46 = *(v52 + 16);
    v24 = v46(v53, v45, v51);
    v25 = 0;
    LOBYTE(v58) = 1;
    v55 = v20;
    v52 = v23;
    v49 = 16 * v20;
    v50 = (v23 - 8);
    v48 = v56 + 32;
    v47 = v6;
LABEL_11:
    v54 = v43;
    MEMORY[0x1EEE9AC00](v24);
    v27 = &v43[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v28 = v27 + 8;
    v29 = v55;
    v30 = v27 + 8;
    do
    {
      *(v30 - 1) = 0;
      *v30 = 0;
      v30 += 16;
      --v29;
    }

    while (v29);
    v31 = v48 + 40 * v25;
    v32 = v55;
    while (1)
    {
      v33 = *(v56 + 16);
      if (v25 == v33)
      {
        LOBYTE(v58) = 0;
LABEL_19:
        v36 = v47;
        if (v47 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v27[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v27[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v27[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v36 != 20 && v27[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v37 = v51;
        v38 = *v50;
        v39 = v53;
        (*v50)(v53, v51);
        v40 = __swift_project_value_buffer(v37, static OSSignpostID.continuation);
        v24 = v46(v39, v40, v37);
        if ((v58 & 1) == 0)
        {
          v41 = v51;
          v38(v53, v51);
          v38(v45, v41);
          goto LABEL_34;
        }

        goto LABEL_11;
      }

      if (v25 >= v33)
      {
        break;
      }

      ++v25;
      outlined init with copy of AnyTrackedValue(v31, &v64);
      v34 = v68;
      __swift_project_boxed_opaque_existential_1(&v64, v68);
      *(v28 - 1) = CVarArg.kdebugValue(_:)(v21 | v22, v34);
      *v28 = v35 & 1;
      v28 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v64);
      v31 += 40;
      if (!--v32)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
  }

  AGGraphClearUpdate();
  LOBYTE(v64) = v44 & 1;
  *(&v64 + 1) = 256;
  AGGraphSetUpdate();
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for _ShapeView<DefaultGlassEffectShape, ForegroundStyle>();
  return AGGraphSetOutputValue();
}

uint64_t specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(__int128 *a1)
{
  v43 = a1;
  v67 = *MEMORY[0x1E69E9840];
  v50 = type metadata accessor for OSSignpostID();
  v51 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v42[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v2);
  v44 = &v42[-v3];
  if (one-time initialization token for bodyInvoke != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v4 = static Signpost.bodyInvoke;
    v5 = word_1ED539040;
    v6 = HIBYTE(word_1ED539040);
    v7 = byte_1ED539042;
    v8 = static os_signpost_type_t.begin.getter();
    v63 = v4;
    LOBYTE(v64) = v5;
    BYTE1(v64) = v6;
    BYTE2(v64) = v7;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      break;
    }

    v53 = *(&v4 + 1);
    LODWORD(v54) = v8;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_18DDAB4C0;
    v10 = AGTypeID.description.getter();
    v12 = v11;
    v13 = MEMORY[0x1E69E6158];
    *(v9 + 56) = MEMORY[0x1E69E6158];
    v14 = lazy protocol witness table accessor for type String and conformance String();
    *(v9 + 64) = v14;
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    v15 = specialized static Tracing.libraryName(defining:)();
    *(v9 + 96) = v13;
    *(v9 + 104) = v14;
    *(v9 + 72) = v15;
    *(v9 + 80) = v16;
    v55 = v9;
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    if (v6)
    {
      v62 = v54;
      v60 = _signpostLog;
      v61 = &dword_18D018000;
      *&v63 = v4;
      *(&v63 + 1) = v53;
      LOBYTE(v64) = v5;
      v57 = "%{public}@.body [in %{public}@]";
      v58 = 31;
      v59 = 2;
      v56 = v55;
      v17 = v44;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
      (*(v51 + 8))(v17, v50);
LABEL_34:

      break;
    }

    if (v4 == 20)
    {
      v18 = 3;
    }

    else
    {
      v18 = 4;
    }

    v19 = bswap32(v4) | (4 * WORD1(v4));
    v20 = v54;
    v21 = v51 + 16;
    v45 = *(v51 + 16);
    v22 = v45(v52, v44, v50);
    v23 = 0;
    LOBYTE(v57) = 1;
    v54 = v18;
    v48 = 16 * v18;
    v51 = v21;
    v49 = (v21 - 8);
    v47 = v55 + 32;
    v46 = v4;
LABEL_11:
    v53 = v42;
    MEMORY[0x1EEE9AC00](v22);
    v25 = &v42[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v26 = v25 + 8;
    v27 = v54;
    v28 = v25 + 8;
    do
    {
      *(v28 - 1) = 0;
      *v28 = 0;
      v28 += 16;
      --v27;
    }

    while (v27);
    v29 = v47 + 40 * v23;
    v30 = v54;
    while (1)
    {
      v31 = *(v55 + 16);
      if (v23 == v31)
      {
        LOBYTE(v57) = 0;
LABEL_19:
        v34 = v46;
        if (v46 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v25[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v25[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v25[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v34 != 20 && v25[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v35 = *v49;
        v36 = v52;
        v37 = v50;
        (*v49)(v52, v50);
        v38 = __swift_project_value_buffer(v37, static OSSignpostID.continuation);
        v22 = v45(v36, v38, v37);
        if ((v57 & 1) == 0)
        {
          v39 = v50;
          v35(v52, v50);
          v35(v44, v39);
          goto LABEL_34;
        }

        goto LABEL_11;
      }

      if (v23 >= v31)
      {
        break;
      }

      ++v23;
      outlined init with copy of AnyTrackedValue(v29, &v63);
      v32 = *(&v64 + 1);
      __swift_project_boxed_opaque_existential_1(&v63, *(&v64 + 1));
      *(v26 - 1) = CVarArg.kdebugValue(_:)(v19 | v20, v32);
      *v26 = v33 & 1;
      v26 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v63);
      v29 += 40;
      if (!--v30)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
  }

  AGGraphClearUpdate();
  v40 = v43[1];
  v63 = *v43;
  v64 = v40;
  v65 = v43[2];
  v66 = 256;
  AGGraphSetUpdate();
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for _ShapeView<UnevenRoundedRectangle._Inset, ForegroundStyle>();
  return AGGraphSetOutputValue();
}

{
  v43 = a1;
  v66 = *MEMORY[0x1E69E9840];
  v50 = type metadata accessor for OSSignpostID();
  v51 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v42 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v44 = &v42 - v3;
  if (one-time initialization token for bodyInvoke != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v4 = static Signpost.bodyInvoke;
    v5 = word_1ED539040;
    v6 = HIBYTE(word_1ED539040);
    v7 = byte_1ED539042;
    v8 = static os_signpost_type_t.begin.getter();
    v62 = v4;
    LOBYTE(v63) = v5;
    BYTE1(v63) = v6;
    BYTE2(v63) = v7;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      break;
    }

    v53 = *(&v4 + 1);
    LODWORD(v54) = v8;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_18DDAB4C0;
    v10 = AGTypeID.description.getter();
    v12 = v11;
    v13 = MEMORY[0x1E69E6158];
    *(v9 + 56) = MEMORY[0x1E69E6158];
    v14 = lazy protocol witness table accessor for type String and conformance String();
    *(v9 + 64) = v14;
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    v15 = specialized static Tracing.libraryName(defining:)();
    *(v9 + 96) = v13;
    *(v9 + 104) = v14;
    *(v9 + 72) = v15;
    *(v9 + 80) = v16;
    v55 = v9;
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    if (v6)
    {
      v59 = v54;
      v57 = _signpostLog;
      v58 = &dword_18D018000;
      *&v62 = v4;
      *(&v62 + 1) = v53;
      LOBYTE(v63) = v5;
      v60[0] = "%{public}@.body [in %{public}@]";
      v60[1] = 31;
      v61 = 2;
      v56 = v55;
      v17 = v44;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
      (*(v51 + 8))(v17, v50);
LABEL_34:

      break;
    }

    if (v4 == 20)
    {
      v18 = 3;
    }

    else
    {
      v18 = 4;
    }

    v19 = bswap32(v4) | (4 * WORD1(v4));
    v20 = v54;
    v21 = v51 + 16;
    v45 = *(v51 + 16);
    v22 = v45(v52, v44, v50);
    v23 = 0;
    LOBYTE(v60[0]) = 1;
    v54 = v18;
    v48 = 16 * v18;
    v51 = v21;
    v49 = (v21 - 8);
    v47 = v55 + 32;
    v46 = v4;
LABEL_11:
    v53 = &v42;
    MEMORY[0x1EEE9AC00](v22);
    v25 = &v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    v26 = v25 + 8;
    v27 = v54;
    v28 = v25 + 8;
    do
    {
      *(v28 - 1) = 0;
      *v28 = 0;
      v28 += 16;
      --v27;
    }

    while (v27);
    v29 = v47 + 40 * v23;
    v30 = v54;
    while (1)
    {
      v31 = *(v55 + 16);
      if (v23 == v31)
      {
        LOBYTE(v60[0]) = 0;
LABEL_19:
        v34 = v46;
        if (v46 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v25[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v25[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v25[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v34 != 20 && v25[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v35 = *v49;
        v36 = v52;
        v37 = v50;
        (*v49)(v52, v50);
        v38 = __swift_project_value_buffer(v37, static OSSignpostID.continuation);
        v22 = v45(v36, v38, v37);
        if ((v60[0] & 1) == 0)
        {
          v39 = v50;
          v35(v52, v50);
          v35(v44, v39);
          goto LABEL_34;
        }

        goto LABEL_11;
      }

      if (v23 >= v31)
      {
        break;
      }

      ++v23;
      outlined init with copy of AnyTrackedValue(v29, &v62);
      v32 = *(&v63 + 1);
      __swift_project_boxed_opaque_existential_1(&v62, *(&v63 + 1));
      *(v26 - 1) = CVarArg.kdebugValue(_:)(v19 | v20, v32);
      *v26 = v33 & 1;
      v26 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v62);
      v29 += 40;
      if (!--v30)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
  }

  AGGraphClearUpdate();
  v40 = v43[1];
  v62 = *v43;
  v63 = v40;
  *v64 = v43[2];
  *&v64[10] = *(v43 + 42);
  v65 = 256;
  outlined init with copy of UncheckedSendable<GlassEffectShapeModifier>(v43, v60, &lazy cache variable for type metadata for UncheckedSendable<MeshGradient>, &type metadata for MeshGradient, type metadata accessor for UncheckedSendable);
  AGGraphSetUpdate();
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for _ShapeView<Rectangle, MeshGradient>();
  AGGraphSetOutputValue();
}
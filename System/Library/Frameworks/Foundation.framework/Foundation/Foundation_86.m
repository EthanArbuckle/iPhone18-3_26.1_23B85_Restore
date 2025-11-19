uint64_t DiscontiguousAttributedSubstring.subscript.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v34 = a3;
  v4 = *(*a1 + *MEMORY[0x1E69E77B0] + 8);
  v37 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  v31 = *(v5 - 8);
  v32 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v33 = &v30 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v35 = *(v7 - 8);
  v8 = v35;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - v13;
  type metadata accessor for DiscontiguousAttributedSubstring();
  v56 = 0u;
  v57 = 0u;
  v58 = 0;
  v54 = 0u;
  v55 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v38 = v3;
  RangeSet.ranges.getter();
  (*(v8 + 16))(v14, v10, v7);
  v15 = *(v12 + 44);
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  dispatch thunk of Collection.startIndex.getter();
  (*(v35 + 8))(v10, v7);
  dispatch thunk of Collection.endIndex.getter();
  if (*&v14[v15] != v49)
  {
    while (1)
    {
      v21 = dispatch thunk of Collection.subscript.read();
      v23 = v22[3];
      v25 = *v22;
      v24 = v22[1];
      v59[2] = v22[2];
      v59[3] = v23;
      v59[0] = v25;
      v59[1] = v24;
      v21(&v49, 0);
      dispatch thunk of Collection.formIndex(after:)();
      AttributedString.Guts.getUniformValue<A>(in:key:)(v59, v4, v37, &v44);
      if (!*(&v45 + 1))
      {
        break;
      }

      v51 = v46;
      v52 = v47;
      v53 = v48;
      v49 = v44;
      v50 = v45;
      outlined init with copy of FloatingPointRoundingRule?(&v54, &v39, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      if (*(&v40 + 1))
      {
        v46 = v41;
        v47 = v42;
        v48 = v43;
        v44 = v39;
        v45 = v40;
        v26 = specialized static AttributedString._AttributeValue.== infix(_:_:)(&v44, &v49);
        outlined destroy of AttributedString._AttributeValue(&v44);
        if ((v26 & 1) == 0)
        {
          outlined destroy of AttributedString._AttributeValue(&v49);
          v27 = &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd;
          v28 = v14;
          goto LABEL_13;
        }
      }

      else
      {
        outlined destroy of TermOfAddress?(&v39, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      }

      outlined destroy of TermOfAddress?(&v54, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      v56 = v51;
      v57 = v52;
      v58 = v53;
      v54 = v49;
      v55 = v50;
      dispatch thunk of Collection.endIndex.getter();
      if (*&v14[v15] == v49)
      {
        goto LABEL_2;
      }
    }

    outlined destroy of TermOfAddress?(v14, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
    v27 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMd;
    v28 = &v44;
LABEL_13:
    outlined destroy of TermOfAddress?(v28, v27);
    goto LABEL_14;
  }

LABEL_2:
  outlined destroy of TermOfAddress?(v14, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  if (!*(&v55 + 1))
  {
LABEL_14:
    (*(*(AssociatedTypeWitness - 8) + 56))(v34, 1, 1);
    return outlined destroy of TermOfAddress?(&v54, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
  }

  outlined init with copy of AttributedString._AttributeValue(&v54, &v49);
  outlined init with copy of Hashable & Sendable(&v49, &v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
  v16 = v33;
  v17 = AssociatedTypeWitness;
  if (swift_dynamicCast())
  {
    outlined destroy of AttributedString._AttributeValue(&v49);
    v18 = *(v17 - 8);
    v19 = *(v18 + 56);
    v19(v16, 0, 1, v17);
    v20 = v34;
    (*(v18 + 32))(v34, v16, v17);
    v19(v20, 0, 1, v17);
    return outlined destroy of TermOfAddress?(&v54, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
  }

  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  result = (*(v31 + 8))(v16, v32);
  __break(1u);
  return result;
}

uint64_t DiscontiguousAttributedSubstring.subscript.setter(uint64_t *a1, void *a2, uint64_t a3)
{
  specialized DiscontiguousAttributedSubstring.subscript.setter(a1, a2, a3);
  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1, v4);
}

void (*DiscontiguousAttributedSubstring.subscript.modify(void *a1, void *a2, uint64_t a3))(uint64_t *a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x6B0uLL);
  }

  v7 = v6;
  *a1 = v6;
  v6[183] = v56;
  v6[182] = a3;
  v8 = *(*a2 + *MEMORY[0x1E69E77B0] + 8);
  v6[184] = v8;
  v54 = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v7 + 1480) = AssociatedTypeWitness;
  v10 = *(AssociatedTypeWitness - 8);
  v51 = v10;
  *(v7 + 1488) = v10;
  v11 = *(v10 + 64);
  if (v5)
  {
    *(v7 + 1496) = swift_coroFrameAlloc();
    *(v7 + 1504) = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    *(v7 + 1496) = malloc(*(v10 + 64));
    *(v7 + 1504) = malloc(v11);
    v12 = malloc(v11);
  }

  *(v7 + 1512) = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  *(v7 + 1520) = v13;
  v14 = *(v13 - 8);
  if (v5)
  {
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v15 = malloc(*(*(v13 - 8) + 64));
  }

  v16 = v15;
  *(v7 + 1528) = v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  *(v7 + 1536) = v17;
  v18 = *(*(v17 - 8) + 64);
  if (v5)
  {
    *(v7 + 1544) = swift_coroFrameAlloc();
    *(v7 + 1552) = swift_coroFrameAlloc();
    *(v7 + 1560) = swift_coroFrameAlloc();
    *(v7 + 1568) = swift_coroFrameAlloc();
    v19 = swift_coroFrameAlloc();
  }

  else
  {
    *(v7 + 1544) = malloc(*(*(v17 - 8) + 64));
    *(v7 + 1552) = malloc(v18);
    *(v7 + 1560) = malloc(v18);
    *(v7 + 1568) = malloc(v18);
    v19 = malloc(v18);
  }

  v20 = v19;
  *(v7 + 1576) = v19;
  v21 = type metadata accessor for Optional();
  *(v7 + 1584) = v21;
  v22 = *(v21 - 8);
  v48 = v22;
  v49 = v21;
  *(v7 + 1592) = v22;
  v23 = *(v22 + 64);
  if (v5)
  {
    *(v7 + 1600) = swift_coroFrameAlloc();
    *(v7 + 1608) = swift_coroFrameAlloc();
    *(v7 + 1616) = swift_coroFrameAlloc();
    *(v7 + 1624) = swift_coroFrameAlloc();
    *(v7 + 1632) = swift_coroFrameAlloc();
    v50 = swift_coroFrameAlloc();
    *(v7 + 1640) = v50;
    v24 = swift_coroFrameAlloc();
  }

  else
  {
    *(v7 + 1600) = malloc(*(v22 + 64));
    *(v7 + 1608) = malloc(v23);
    *(v7 + 1616) = malloc(v23);
    *(v7 + 1624) = malloc(v23);
    *(v7 + 1632) = malloc(v23);
    v50 = malloc(v23);
    *(v7 + 1640) = v50;
    v24 = malloc(v23);
  }

  v52 = v24;
  *(v7 + 1648) = v24;
  v25 = type metadata accessor for DiscontiguousAttributedSubstring();
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0;
  *(v7 + 1704) = *(v25 + 20);
  *(v7 + 1656) = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  RangeSet.ranges.getter();
  v26 = *(v14 + 16);
  *(v7 + 1664) = v26;
  *(v7 + 1672) = (v14 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v26(v20, v16, v13);
  v27 = *(v17 + 36);
  *(v7 + 1680) = lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  dispatch thunk of Collection.startIndex.getter();
  v28 = *(v14 + 8);
  *(v7 + 1688) = v28;
  *(v7 + 1696) = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v28(v16, v13);
  dispatch thunk of Collection.endIndex.getter();
  if (*(v20 + v27) != *(v7 + 1416))
  {
    v30 = (v7 + 504);
    v53 = v20;
    while (1)
    {
      v33 = dispatch thunk of Collection.subscript.read();
      v35 = v34[3];
      v37 = *v34;
      v36 = v34[1];
      *(v7 + 608) = v34[2];
      *(v7 + 624) = v35;
      *(v7 + 576) = v37;
      *(v7 + 592) = v36;
      v33(v7 + 1256, 0);
      dispatch thunk of Collection.formIndex(after:)();
      AttributedString.Guts.getUniformValue<A>(in:key:)((v7 + 576), v54, a3, v7 + 432);
      if (!*(v7 + 456))
      {
        break;
      }

      v38 = v27;
      v39 = v13;
      v40 = *(v7 + 480);
      *(v7 + 536) = *(v7 + 464);
      *(v7 + 552) = v40;
      *(v7 + 568) = *(v7 + 496);
      v41 = *(v7 + 448);
      *v30 = *(v7 + 432);
      *(v7 + 520) = v41;
      outlined init with copy of FloatingPointRoundingRule?(v7, v7 + 144, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      if (*(v7 + 168))
      {
        v42 = *(v7 + 192);
        *(v7 + 248) = *(v7 + 176);
        *(v7 + 264) = v42;
        *(v7 + 280) = *(v7 + 208);
        v43 = *(v7 + 160);
        *(v7 + 216) = *(v7 + 144);
        *(v7 + 232) = v43;
        v44 = specialized static AttributedString._AttributeValue.== infix(_:_:)((v7 + 216), (v7 + 504));
        outlined destroy of AttributedString._AttributeValue(v7 + 216);
        if ((v44 & 1) == 0)
        {
          outlined destroy of AttributedString._AttributeValue(v7 + 504);
          v45 = &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd;
          v46 = v53;
          goto LABEL_29;
        }
      }

      else
      {
        outlined destroy of TermOfAddress?(v7 + 144, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      }

      outlined destroy of TermOfAddress?(v7, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      v31 = *(v7 + 552);
      *(v7 + 32) = *(v7 + 536);
      *(v7 + 48) = v31;
      *(v7 + 64) = *(v7 + 568);
      v32 = *(v7 + 520);
      *v7 = *v30;
      *(v7 + 16) = v32;
      v13 = v39;
      dispatch thunk of Collection.endIndex.getter();
      v27 = v38;
      v20 = v53;
      if (*(v53 + v27) == *(v7 + 1416))
      {
        goto LABEL_17;
      }
    }

    outlined destroy of TermOfAddress?(v20, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
    v45 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMd;
    v46 = v7 + 432;
LABEL_29:
    outlined destroy of TermOfAddress?(v46, v45);
    (*(v51 + 56))(v52, 1, 1, AssociatedTypeWitness);
    goto LABEL_30;
  }

LABEL_17:
  outlined destroy of TermOfAddress?(v20, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  if (!*(v7 + 24))
  {
    (*(v51 + 56))(v52, 1, 1, AssociatedTypeWitness);
    goto LABEL_30;
  }

  outlined init with copy of AttributedString._AttributeValue(v7, v7 + 72);
  outlined init with copy of Hashable & Sendable(v7 + 72, v7 + 1216);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
  if (swift_dynamicCast())
  {
    outlined destroy of AttributedString._AttributeValue(v7 + 72);
    v29 = *(v51 + 56);
    v29(v50, 0, 1, AssociatedTypeWitness);
    (*(v51 + 32))(v52, v50, AssociatedTypeWitness);
    v29(v52, 0, 1, AssociatedTypeWitness);
LABEL_30:
    outlined destroy of TermOfAddress?(v7, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    return DiscontiguousAttributedSubstring.subscript.modify;
  }

  (*(v51 + 56))(v50, 1, 1, AssociatedTypeWitness);
  result = (*(v48 + 8))(v50, v49);
  __break(1u);
  return result;
}

uint64_t DiscontiguousAttributedSubstring.subscript.getter@<X0>(uint64_t *a1@<X8>)
{
  v103 = a1;
  v146 = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v101 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v101 - v8;
  type metadata accessor for DiscontiguousAttributedSubstring();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v108 = v1;
  RangeSet.ranges.getter();
  (*(v3 + 16))(v9, v5, v2);
  v10 = *(v7 + 44);
  v11 = lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  dispatch thunk of Collection.startIndex.getter();
  v12 = v5;
  v13 = v10;
  (*(v3 + 8))(v12, v2);
  v102 = 0;
  v104 = MEMORY[0x1E69E7CD0];
  v14 = MEMORY[0x1E69E7CC8];
  v15 = 1;
  v106 = v9;
  v107 = v2;
  v105 = v13;
  v115 = v11;
LABEL_2:
  v16 = v14;
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter();
    if (*&v9[v13] == v139)
    {
      v69 = v16;
LABEL_61:
      result = outlined destroy of TermOfAddress?(v9, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
      v99 = v103;
      v100 = v104;
      v103[2] = 0;
      v99[3] = 0;
      *v99 = v69;
      v99[1] = v100;
      return result;
    }

    v17 = dispatch thunk of Collection.subscript.read();
    v19 = v18[3];
    v21 = *v18;
    v20 = v18[1];
    v145[2] = v18[2];
    v145[3] = v19;
    v145[0] = v21;
    v145[1] = v20;
    v17(&v139, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v22 = AttributedString.Guts.getUniformValues(in:)(v145);
    v14 = v22;
    if (v15)
    {
      v97 = v23;

      v15 = 0;
      v104 = v97;
      goto LABEL_2;
    }

    v113 = &v101;
    MEMORY[0x1EEE9AC00](v22);
    *(&v101 - 2) = v14;
    *(&v101 - 1) = v24;
    v114 = v24;
    MEMORY[0x1EEE9AC00](v25);
    *(&v101 - 2) = partial apply for closure #1 in DiscontiguousAttributedSubstring.subscript.getter;
    *(&v101 - 1) = v27;
    v28 = *(v16 + 32);
    v109 = ((1 << v28) + 63) >> 6;
    v121 = v14;
    if ((v28 & 0x3Fu) <= 0xD)
    {
      goto LABEL_6;
    }

    if (swift_stdlib_isStackAllocationSafe())
    {

LABEL_6:
      MEMORY[0x1EEE9AC00](v26);
      v116 = (&v101 - ((v29 + 15) & 0x3FFFFFFFFFFFFFF0));
      bzero(v116, v29);
      v123 = 0;
      v124 = v16;
      v30 = 0;
      v31 = v16 + 64;
      v32 = 1 << *(v16 + 32);
      if (v32 < 64)
      {
        v33 = ~(-1 << v32);
      }

      else
      {
        v33 = -1;
      }

      v34 = v33 & *(v16 + 64);
      v35 = (v32 + 63) >> 6;
LABEL_12:
      if (v34)
      {
        v36 = __clz(__rbit64(v34));
        v126 = (v34 - 1) & v34;
        goto LABEL_19;
      }

      v37 = v30;
      while (1)
      {
        v30 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
        }

        if (v30 >= v35)
        {
          break;
        }

        v38 = *(v31 + 8 * v30);
        ++v37;
        if (v38)
        {
          v36 = __clz(__rbit64(v38));
          v126 = (v38 - 1) & v38;
LABEL_19:
          v39 = v36 | (v30 << 6);
          v40 = *(v16 + 56);
          v41 = (*(v16 + 48) + 16 * v39);
          v42 = *v41;
          v43 = v41[1];
          v122 = v39;
          outlined init with copy of AttributedString._AttributeValue(v40 + 72 * v39, v144);
          *&v139 = v42;
          *(&v139 + 1) = v43;
          outlined init with copy of AttributedString._AttributeValue(v144, &v140);
          outlined init with copy of FloatingPointRoundingRule?(&v139, &v129, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);
          v44 = *(&v129 + 1);
          v45 = v129;
          v46 = v14;
          v47 = *(v14 + 16);
          v125 = v43;
          swift_bridgeObjectRetain_n();
          if (!v47)
          {

            v14 = v46;
LABEL_11:
            outlined destroy of TermOfAddress?(&v139, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);
            outlined destroy of AttributedString._AttributeValue(&v130);
            outlined destroy of AttributedString._AttributeValue(v144);

            v16 = v124;
            v34 = v126;
            goto LABEL_12;
          }

          v48 = specialized __RawDictionaryStorage.find<A>(_:)(v45, v44);
          v50 = v49;

          v14 = v46;
          if ((v50 & 1) == 0)
          {
            goto LABEL_11;
          }

          outlined init with copy of AttributedString._AttributeValue(*(v46 + 56) + 72 * v48, v127);
          v136 = v127[2];
          v137 = v127[3];
          v138 = v128;
          v134 = v127[0];
          v135 = v127[1];
          outlined destroy of AttributedString._AttributeValue(&v130);
          v51 = *(&v135 + 1);
          v112 = v136;
          v111 = __swift_project_boxed_opaque_existential_1(&v134, *(&v135 + 1));
          v52 = __swift_project_boxed_opaque_existential_1(&v140, *(&v141 + 1));
          v120 = &v101;
          v117 = *(v51 - 8);
          MEMORY[0x1EEE9AC00](v52);
          v110 = &v101 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
          v119 = &v101;
          v55 = MEMORY[0x1EEE9AC00](v54);
          (*(v57 + 16))(&v101 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0), v55);
          v58 = type metadata accessor for Optional();
          v118 = &v101;
          v59 = v58;
          v60 = *(v58 - 8);
          MEMORY[0x1EEE9AC00](v58);
          v62 = &v101 - v61;
          v63 = v117;
          v64 = swift_dynamicCast();
          v65 = *(v63 + 56);
          if (!v64)
          {
            v65(v62, 1, 1, v51);
            (*(v60 + 8))(v62, v59);
            outlined destroy of AttributedString._AttributeValue(&v134);
            outlined destroy of TermOfAddress?(&v139, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);
            outlined destroy of AttributedString._AttributeValue(v144);

            v16 = v124;
            v14 = v121;
            v34 = v126;
            goto LABEL_12;
          }

          v65(v62, 0, 1, v51);
          v66 = v110;
          (*(v63 + 32))(v110, v62, v51);
          v67 = dispatch thunk of static Equatable.== infix(_:_:)();
          (*(v63 + 8))(v66, v51);
          outlined destroy of AttributedString._AttributeValue(&v134);
          outlined destroy of TermOfAddress?(&v139, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);
          outlined destroy of AttributedString._AttributeValue(v144);

          v16 = v124;
          v14 = v121;
          v34 = v126;
          if (v67)
          {
            *(v116 + ((v122 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v122;
            if (__OFADD__(v123++, 1))
            {
              goto LABEL_65;
            }
          }

          goto LABEL_12;
        }
      }

      if (v123)
      {
        v9 = v106;
        if (v123 == *(v16 + 16))
        {

          v69 = v16;
LABEL_30:
          v13 = v105;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
          v69 = static _DictionaryStorage.allocate(capacity:)();
          v70 = 0;
          v71 = v116;
          v72 = *v116;
          v73 = v69 + 64;
          do
          {
            if (v72)
            {
              v77 = __clz(__rbit64(v72));
              v72 &= v72 - 1;
            }

            else
            {
              v78 = v70;
              do
              {
                v70 = v78 + 1;
                if (__OFADD__(v78, 1))
                {
                  goto LABEL_63;
                }

                if (v70 >= v109)
                {
                  goto LABEL_30;
                }

                v79 = v71[v70];
                ++v78;
              }

              while (!v79);
              v77 = __clz(__rbit64(v79));
              v72 = (v79 - 1) & v79;
            }

            v80 = v77 | (v70 << 6);
            v81 = *(v16 + 56);
            v82 = (*(v16 + 48) + 16 * v80);
            v83 = *v82;
            v84 = v82[1];
            outlined init with copy of AttributedString._AttributeValue(v81 + 72 * v80, &v139);
            v131 = v141;
            v132 = v142;
            v133 = v143;
            v129 = v139;
            v130 = v140;
            Hasher.init(_seed:)();

            String.hash(into:)();
            v85 = Hasher._finalize()();
            v86 = -1 << *(v69 + 32);
            v87 = v85 & ~v86;
            v88 = v87 >> 6;
            if (((-1 << v87) & ~*(v73 + 8 * (v87 >> 6))) != 0)
            {
              v74 = __clz(__rbit64((-1 << v87) & ~*(v73 + 8 * (v87 >> 6)))) | v87 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v89 = 0;
              v90 = (63 - v86) >> 6;
              do
              {
                if (++v88 == v90 && (v89 & 1) != 0)
                {
                  goto LABEL_64;
                }

                v91 = v88 == v90;
                if (v88 == v90)
                {
                  v88 = 0;
                }

                v89 |= v91;
                v92 = *(v73 + 8 * v88);
              }

              while (v92 == -1);
              v74 = __clz(__rbit64(~v92)) + (v88 << 6);
            }

            *(v73 + ((v74 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v74;
            v75 = (*(v69 + 48) + 16 * v74);
            *v75 = v83;
            v75[1] = v84;
            v76 = *(v69 + 56) + 72 * v74;
            *(v76 + 16) = v130;
            *(v76 + 32) = v131;
            *(v76 + 48) = v132;
            *(v76 + 64) = v133;
            *v76 = v129;
            ++*(v69 + 16);
            v16 = v124;
            --v123;
            v71 = v116;
          }

          while (v123);
          v13 = v105;
        }
      }

      else
      {
        v69 = MEMORY[0x1E69E7CC8];
        v9 = v106;
        v13 = v105;
      }

      goto LABEL_33;
    }

    v93 = v16;
    v94 = swift_slowAlloc();

    v95 = v102;
    _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySS10Foundation16AttributedStringV15_AttributeValueVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab24VKXEfU_SS_10Foundation16jk4V15_lM4VTG5AMxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSALIsgnndzo_Tf1nc_n(v94, v109, v93, partial apply for thunk for @callee_guaranteed (@guaranteed String, @in_guaranteed AttributedString._AttributeValue) -> (@unowned Bool, @error @owned Error));
    if (v95)
    {
      break;
    }

    v69 = v96;
    v102 = 0;

    MEMORY[0x1865D2690](v94, -1, -1);

LABEL_33:

    v15 = 0;
    v16 = v69;
    if (!*(v69 + 16))
    {
      goto LABEL_61;
    }
  }

  result = MEMORY[0x1865D2690](v94, -1, -1);
  __break(1u);
  return result;
}

uint64_t key path setter for DiscontiguousAttributedSubstring.subscript<A>(dynamicMember:) : <A>DiscontiguousAttributedSubstringA(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];

  v5 = DiscontiguousAttributedSubstring.subscript.modify(v8);
  *v6 = v1;
  v6[1] = v2;
  v6[2] = v4;
  v6[3] = v3;

  return (v5)(v8, 0);
}

void (*DiscontiguousAttributedSubstring.subscript.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x378uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 816) = v1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  *(v6 + 824) = v7;
  v8 = *(v7 - 8);
  *(v6 + 832) = v8;
  if (v4)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v8 + 64));
  }

  *(v6 + 840) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  *(v6 + 848) = v10;
  v11 = *(*(v10 - 8) + 64);
  if (v4)
  {
    *(v6 + 856) = swift_coroFrameAlloc();
    *(v6 + 864) = swift_coroFrameAlloc();
    *(v6 + 872) = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    *(v6 + 856) = malloc(v11);
    *(v6 + 864) = malloc(v11);
    *(v6 + 872) = malloc(v11);
    v12 = malloc(v11);
  }

  *(v6 + 880) = v12;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = *v2;
    v14 = *(*v2 + 24);
    v15 = *(*v2 + 56);
    *(v6 + 160) = *(*v2 + 40);
    *(v6 + 176) = v15;
    *(v6 + 144) = v14;
    v16 = v13[9];
    v17 = v13[10];
    v18 = v13[11];
    v19 = v13[12];
    type metadata accessor for AttributedString.Guts();
    v20 = swift_allocObject();
    v21 = BigString.isEmpty.getter() & 1;
    outlined init with copy of BigString(v6 + 144, v6 + 576);
    v22 = swift_unknownObjectRetain();
    specialized Rope._endPath.getter(v22);
    if (v16)
    {
      v23 = v18 == 0;
    }

    else
    {
      v23 = 1;
    }

    v24 = v23;
    if (v24 == v21)
    {
      if (one-time initialization token for _nextVersion == -1)
      {
LABEL_19:
        *(v20 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
        v25 = *(v6 + 144);
        v26 = *(v6 + 160);
        *(v20 + 56) = *(v6 + 176);
        *(v20 + 40) = v26;
        *(v20 + 24) = v25;
        *(v20 + 72) = v16;
        *(v20 + 80) = v17;
        *(v20 + 88) = v18;
        *(v20 + 96) = v19;
        *(v20 + 104) = MEMORY[0x1E69E7CC0];

        *v2 = v20;
        goto LABEL_20;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_19;
  }

LABEL_20:
  *(v6 + 640) = 0u;
  v27 = MEMORY[0x1E69E7CD0];
  *(v6 + 624) = MEMORY[0x1E69E7CC8];
  *(v6 + 632) = v27;
  return DiscontiguousAttributedSubstring.subscript.modify;
}

uint64_t closure #1 in DiscontiguousAttributedSubstring.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[0] = a1;
  v16[1] = a2;
  outlined init with copy of AttributedString._AttributeValue(a3, v17);
  outlined init with copy of FloatingPointRoundingRule?(v16, v13, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);
  v6 = v13[0];
  v5 = v13[1];
  v7 = *(a4 + 16);

  if (!v7)
  {

    goto LABEL_5;
  }

  v8 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v5);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
LABEL_5:
    outlined destroy of TermOfAddress?(v16, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);
    outlined destroy of AttributedString._AttributeValue(v14);
    v11 = 0;
    return v11 & 1;
  }

  outlined init with copy of AttributedString._AttributeValue(*(a4 + 56) + 72 * v8, v15);
  outlined destroy of AttributedString._AttributeValue(v14);
  v11 = specialized static AttributedString._AttributeValue.== infix(_:_:)(v15, v17);
  outlined destroy of AttributedString._AttributeValue(v15);
  outlined destroy of TermOfAddress?(v16, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);
  return v11 & 1;
}

uint64_t DiscontiguousAttributedSubstring.subscript.setter(int64_t *a1, uint64_t a2)
{
  v3 = v2;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v6 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v86 = &v75 - v7;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  MEMORY[0x1EEE9AC00](v85);
  v9 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v75 - v11;
  v13 = *a1;
  v14 = a1[1];
  v15 = a1[2];
  v16 = a1[3];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v75 = a2;
  v80 = v3;
  v77 = v14;
  v79 = v15;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_11;
  }

  v84 = v12;
  v76 = v9;
  v18 = *v3;
  v19 = *(*v3 + 24);
  v20 = *(*v3 + 56);
  v95 = *(*v3 + 40);
  v96 = v20;
  v94 = v19;
  v22 = v18[9];
  v21 = v18[10];
  v23 = v18[11];
  v24 = v18[12];
  type metadata accessor for AttributedString.Guts();
  v25 = swift_allocObject();
  v26 = BigString.isEmpty.getter() & 1;
  outlined init with copy of BigString(&v94, v87);
  v27 = swift_unknownObjectRetain();
  v83 = v21;
  specialized Rope._endPath.getter(v27);
  if (v22)
  {
    v28 = v23 == 0;
  }

  else
  {
    v28 = 1;
  }

  v29 = v28;
  if (v29 != v26)
  {
    goto LABEL_43;
  }

  if (one-time initialization token for _nextVersion != -1)
  {
    goto LABEL_44;
  }

  while (1)
  {
    add_explicit = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
    v31 = v95;
    *(v25 + 24) = v94;
    *(v25 + 16) = add_explicit;
    *(v25 + 40) = v31;
    *(v25 + 56) = v96;
    v32 = v83;
    *(v25 + 72) = v22;
    *(v25 + 80) = v32;
    *(v25 + 88) = v23;
    *(v25 + 96) = v24;
    *(v25 + 104) = MEMORY[0x1E69E7CC0];

    *v80 = v25;
    v9 = v76;
    v12 = v84;
LABEL_11:

    v82 = v13;
    if (v16)
    {
      break;
    }

    type metadata accessor for DiscontiguousAttributedSubstring();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
    v36 = v86;
    RangeSet.ranges.getter();
    v37 = v81;
    (*(v6 + 16))(v9, v36, v81);
    v38 = *(v85 + 36);
    v39 = lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
    dispatch thunk of Collection.startIndex.getter();
    (*(v6 + 8))(v36, v37);
    v78 = v39;
    dispatch thunk of Collection.endIndex.getter();
    v79 = v38;
    if (*&v9[v38] == *&v87[0])
    {
      v12 = v9;
      goto LABEL_41;
    }

    v23 = v13 + 64;
    v76 = v9;
    while (1)
    {
      v51 = dispatch thunk of Collection.subscript.read();
      v16 = v52[3];
      v53 = v52[5];
      v86 = v52[4];
      v85 = v53;
      v54 = v52[7];
      v84 = v52[6];
      v83 = v54;
      v51(v87, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v55 = *v80;
      v56 = *(*v80 + 40);
      v91 = *(*v80 + 24);
      v92 = v56;
      v93 = *(v55 + 56);
      swift_unknownObjectRetain();
      v57 = v82;

      v58 = BigString.UnicodeScalarView.index(roundingDown:)();
      swift_unknownObjectRelease();
      v59 = *(v55 + 40);
      v90[0] = *(v55 + 24);
      v90[1] = v59;
      v90[2] = *(v55 + 56);
      v25 = *&v90[0];
      swift_unknownObjectRetain();
      v60 = BigString.UnicodeScalarView.index(roundingDown:)();
      swift_unknownObjectRelease();
      v61 = v58 >> 11;
      v6 = v60 >> 11;

      specialized AttributedString._InternalRunsSlice.updateEach(with:)(v55, v61, v60 >> 11, v57, 0);

      if (specialized AttributedString._AttributeStorage.hasConstrainedAttributes.getter(v57))
      {
        break;
      }

LABEL_21:

      v50 = v76;
      dispatch thunk of Collection.endIndex.getter();
      if (*&v50[v79] == *&v87[0])
      {
        v12 = v50;
        goto LABEL_41;
      }
    }

    v62 = 1 << *(v57 + 32);
    if (v62 < 64)
    {
      v63 = ~(-1 << v62);
    }

    else
    {
      v63 = -1;
    }

    v22 = v63 & *(v57 + 64);
    v64 = (v62 + 63) >> 6;

    v13 = 0;
    v24 = MEMORY[0x1E69E7CC0];
    if (!v22)
    {
      goto LABEL_29;
    }

    do
    {
LABEL_27:
      while (1)
      {
        v65 = __clz(__rbit64(v22));
        v22 &= v22 - 1;
        outlined init with copy of AttributedString._AttributeValue(*(v82 + 56) + 72 * (v65 | (v13 << 6)), v87);
        v25 = *(&v88 + 1);
        v16 = v89;
        outlined copy of AttributedString.AttributeRunBoundaries?(*(&v88 + 1), v89);
        outlined destroy of AttributedString._AttributeValue(v87);
        if (v16 != 1)
        {
          break;
        }

        if (!v22)
        {
          goto LABEL_29;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 2) + 1, 1, v24);
      }

      v68 = *(v24 + 2);
      v67 = *(v24 + 3);
      v69 = (v68 + 1);
      if (v68 >= v67 >> 1)
      {
        v86 = (v68 + 1);
        v71 = v24;
        v72 = v68;
        v73 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v67 > 1), v68 + 1, 1, v71);
        v69 = v86;
        v68 = v72;
        v24 = v73;
      }

      *(v24 + 2) = v69;
      v70 = &v24[16 * v68];
      *(v70 + 4) = v25;
      *(v70 + 5) = v16;
    }

    while (v22);
LABEL_29:
    while (1)
    {
      v66 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v66 >= v64)
      {

        AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v61, v6, 0, v24);

        goto LABEL_21;
      }

      v22 = *(v23 + 8 * v66);
      ++v13;
      if (v22)
      {
        v13 = v66;
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    swift_once();
  }

  type metadata accessor for DiscontiguousAttributedSubstring();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v33 = v86;
  RangeSet.ranges.getter();
  v34 = v81;
  (*(v6 + 16))(v12, v33, v81);
  v35 = *(v85 + 36);
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  dispatch thunk of Collection.startIndex.getter();
  (*(v6 + 8))(v33, v34);
  dispatch thunk of Collection.endIndex.getter();
  if (*&v12[v35] != *&v90[0])
  {
    v78 = v16;
    do
    {
      v40 = dispatch thunk of Collection.subscript.read();
      v42 = v41[5];
      v86 = v41[4];
      v85 = v42;
      v43 = v41[7];
      v84 = v41[6];
      v83 = v43;
      v40(v90, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v44 = *v80;
      v45 = *(*v80 + 40);
      v87[0] = *(*v80 + 24);
      v87[1] = v45;
      v88 = *(v44 + 56);
      swift_unknownObjectRetain();
      v46 = BigString.UnicodeScalarView.index(roundingDown:)();
      swift_unknownObjectRelease();
      v47 = *(v44 + 40);
      v91 = *(v44 + 24);
      v92 = v47;
      v93 = *(v44 + 56);
      swift_unknownObjectRetain();
      v48 = v78;
      v49 = BigString.UnicodeScalarView.index(roundingDown:)();
      swift_unknownObjectRelease();
      AttributedString.Guts.removeAttributeValue(forKey:in:adjustConstrainedAttributes:)(v79, v48, v46 >> 11, v49 >> 11, 1);
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*&v12[v35] != *&v90[0]);
  }

LABEL_41:

  outlined destroy of TermOfAddress?(v12, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
}

uint64_t AttributedString.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v4 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - v8;
  BigString.init()();
  v39[0] = 0;
  MEMORY[0x1865D26B0](v39, 8);
  v10 = v39[0];
  type metadata accessor for AttributedString.Guts();
  v11 = swift_allocObject();
  if (BigString.isEmpty.getter())
  {
    v30 = a2;
    if (one-time initialization token for _nextVersion == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  add_explicit = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
  v13 = v37;
  *(v11 + 24) = v36;
  *(v11 + 16) = add_explicit;
  *(v11 + 40) = v13;
  *(v11 + 56) = v38;
  *(v11 + 72) = 0;
  *(v11 + 80) = 0;
  *(v11 + 88) = 0;
  *(v11 + 96) = v10;
  *(v11 + 104) = MEMORY[0x1E69E7CC0];
  type metadata accessor for DiscontiguousAttributedSubstring();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  RangeSet.ranges.getter();
  v14 = v32;
  (*(v4 + 16))(v9, v6, v32);
  v15 = *(v7 + 36);
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  dispatch thunk of Collection.startIndex.getter();
  (*(v4 + 8))(v6, v14);
  dispatch thunk of Collection.endIndex.getter();
  v16 = *&v9[v15];
  v31 = a1;
  if (v16 != v33[0])
  {
    do
    {
      v17 = dispatch thunk of Collection.subscript.read();
      v19 = v18[3];
      v21 = *v18;
      v20 = v18[1];
      v53 = v18[2];
      v54 = v19;
      v51 = v21;
      v52 = v20;
      v17(v33, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v22 = *(v11 + 40);
      v58 = *(v11 + 24);
      v59 = v22;
      v60 = *(v11 + 56);
      v44[0] = BigString.endIndex.getter();
      v44[1] = v23;
      v44[2] = v24;
      v44[3] = v25;
      v44[4] = v44[0];
      v44[5] = v23;
      v44[6] = v24;
      v44[7] = v25;
      v26 = *v31;
      v27 = *(*v31 + 40);
      v55 = *(*v31 + 24);
      v56 = v27;
      v57 = *(v26 + 56);
      swift_unknownObjectRetain();

      BigString.UnicodeScalarView.subscript.getter();
      swift_unknownObjectRelease();
      outlined destroy of BigSubstring.UnicodeScalarView(v39);
      v34 = v42;
      v35 = v43;
      v46 = v40;
      v47 = v41;
      v48 = v42;
      v49 = v43;
      v45 = v26;
      v50 = 0;
      specialized AttributedString.Guts.replaceSubrange<A>(_:with:)(v44, &v45);
      outlined destroy of AttributedSubstring(&v45);
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*&v9[v15] != v33[0]);
  }

  _s10Foundation16AttributedStringV4RunsVWOhTm_1(v31, type metadata accessor for DiscontiguousAttributedSubstring);
  result = outlined destroy of TermOfAddress?(v9, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  *v30 = v11;
  return result;
}

uint64_t AttributedStringProtocol.subscript.getter@<X0>(ValueMetadata *a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v73 = a3;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  MEMORY[0x1EEE9AC00](v70);
  v69 = &v58 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy10Foundation16AttributedStringV5IndexV_GMd);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v58 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v66 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v74 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v65 = &v58 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v64 = &v58 - v16;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v58 - v19;
  (*(a2 + 32))(&v87, a1, a2, v18);
  v62 = v88;
  v63 = v87;
  v21 = *(a2 + 40);
  v67 = a1;
  v68 = v3;
  v59 = a2;
  v21(&v94, a1, a2);
  v60 = v95;
  v61 = v94;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy10Foundation16AttributedStringV5IndexVGMd);
  RangeSet.ranges.getter();
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<AttributedString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy10Foundation16AttributedStringV5IndexV_GMd);
  v22 = dispatch thunk of Collection.count.getter();
  v71 = v11;
  v72 = v20;
  if (v22)
  {
    v23 = v22;
    v58 = v8;
    *&v94 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22 & ~(v22 >> 63), 0);
    v24 = v94;
    result = dispatch thunk of Collection.startIndex.getter();
    if (v23 < 0)
    {
      goto LABEL_24;
    }

    do
    {
      v26 = dispatch thunk of Collection.subscript.read();
      v28 = *v27;
      v77 = v27[1];
      v78 = v28;
      v29 = *(v27 + 40);
      v75 = *(v27 + 56);
      v76 = v29;
      v26(&v87, 0);
      *&v94 = v24;
      v31 = *(v24 + 16);
      v30 = *(v24 + 24);
      if (v31 >= v30 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1);
        v24 = v94;
      }

      *(v24 + 16) = v31 + 1;
      v32 = (v24 + (v31 << 6));
      v33 = v77;
      v32[2] = v78;
      v32[3] = v33;
      v34 = v75;
      v32[4] = v76;
      v32[5] = v34;
      dispatch thunk of Collection.formIndex(after:)();
      --v23;
    }

    while (v23);
    (*(v58 + 8))(v10, v7);
    v20 = v72;
    v35 = v73;
    v11 = v71;
  }

  else
  {
    (*(v8 + 8))(v10, v7);
    v24 = MEMORY[0x1E69E7CC0];
    v35 = v73;
  }

  *&v87 = v24;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySny19CollectionsInternal9BigStringV5IndexVGGMd);
  v37 = lazy protocol witness table accessor for type BigString.Index and conformance BigString.Index();
  v38 = lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type [Range<BigString.Index>] and conformance [A], &_sSaySny19CollectionsInternal9BigStringV5IndexVGGMd);
  RangeSet.init<A>(_:)();
  v87 = v63;
  v88 = v62;
  v89 = v61;
  v90 = v60;
  v39 = v65;
  *&v77 = v37;
  RangeSet.init(_:)();
  RangeSet.intersection(_:)();
  v40 = v66;
  v41 = v66 + 8;
  v65 = *(v66 + 8);
  (v65)(v39, v11);
  *&v76 = v38;
  *&v75 = v41;
  if (v67 == &type metadata for AttributedString || v67 == &type metadata for AttributedSubstring)
  {
    v42 = *v68;
  }

  else
  {
    (*(v59 + 56))(&v87);
    v42 = v87;
  }

  (*(v40 + 16))(v74, v20, v11);
  *&v78 = type metadata accessor for DiscontiguousAttributedSubstring();
  *(v35 + *(v78 + 24)) = 0;
  *v35 = v42;
  RangeSet.ranges.getter();
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v43 = dispatch thunk of Sequence._copyToContiguousArray()();
  v44 = *(v43 + 16);
  if (!v44)
  {
LABEL_21:
    *&v83 = v43;

    RangeSet.init<A>(_:)();
    v57 = v65;
    (v65)(v74, v11);
    v57(v72, v11);
  }

  v70 = v36;
  v45 = 0;
  v46 = *(v42 + 40);
  v98 = *(v42 + 24);
  v99 = v46;
  v100 = *(v42 + 56);
  v47 = v44 - 1;
  v48 = 32;
  while (1)
  {
    v49 = *(v43 + v48);
    v50 = *(v43 + v48 + 16);
    v51 = *(v43 + v48 + 48);
    v96 = *(v43 + v48 + 32);
    v97 = v51;
    v94 = v49;
    v95 = v50;
    swift_unknownObjectRetain();
    BigString.UnicodeScalarView.subscript.getter();
    swift_unknownObjectRelease();
    v79 = v90;
    v80 = v91;
    v81 = v92;
    v82 = v93;
    v83 = v90;
    v84 = v91;
    v85 = v92;
    v86 = v93;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = specialized _ArrayBuffer._consumeAndCreateNew()(v43);
    }

    result = outlined destroy of BigSubstring.UnicodeScalarView(&v87);
    if (v45 >= *(v43 + 16))
    {
      break;
    }

    v52 = (v43 + v48);
    v53 = v83;
    v54 = v84;
    v55 = v86;
    v52[2] = v85;
    v52[3] = v55;
    *v52 = v53;
    v52[1] = v54;
    if (v47 == v45)
    {
      v11 = v71;
      goto LABEL_21;
    }

    v56 = *(v42 + 40);
    v98 = *(v42 + 24);
    v99 = v56;
    v100 = *(v42 + 56);
    ++v45;
    v48 += 64;
    if (v45 >= *(v43 + 16))
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t AttributedString.subscript.getter@<X0>(void *a1@<X8>)
{
  v81 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v64 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy10Foundation16AttributedStringV5IndexV_GMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v64 - v7;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v76 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v79 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v75 = &v64 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v74 = &v64 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v78 = &v64 - v15;
  v16 = *v1;
  v17 = *(*v1 + 40);
  v106 = *(*v1 + 24);
  v107 = v17;
  v108 = *(v16 + 56);
  v18 = BigString.startIndex.getter();
  v72 = v19;
  v73 = v18;
  v70 = v21;
  v71 = v20;
  v22 = BigString.endIndex.getter();
  v68 = v23;
  v69 = v22;
  v66 = v25;
  v67 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy10Foundation16AttributedStringV5IndexVGMd);
  RangeSet.ranges.getter();
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<AttributedString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy10Foundation16AttributedStringV5IndexV_GMd);
  v26 = dispatch thunk of Collection.count.getter();
  v77 = v4;
  if (v26)
  {
    v27 = v26;
    v65 = v6;
    *&v99 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26 & ~(v26 >> 63), 0);
    v28 = v99;
    result = dispatch thunk of Collection.startIndex.getter();
    if (v27 < 0)
    {
      goto LABEL_20;
    }

    v64 = v2;
    do
    {
      v30 = dispatch thunk of Collection.subscript.read();
      v32 = *v31;
      v84 = v31[1];
      v85 = v32;
      v33 = *(v31 + 40);
      v82 = *(v31 + 56);
      v83 = v33;
      v30(v94, 0);
      *&v99 = v28;
      v35 = *(v28 + 16);
      v34 = *(v28 + 24);
      if (v35 >= v34 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1);
        v28 = v99;
      }

      *(v28 + 16) = v35 + 1;
      v36 = (v28 + (v35 << 6));
      v37 = v84;
      v36[2] = v85;
      v36[3] = v37;
      v38 = v82;
      v36[4] = v83;
      v36[5] = v38;
      dispatch thunk of Collection.formIndex(after:)();
      --v27;
    }

    while (v27);
    (*(v65 + 8))(v8, v5);
  }

  else
  {
    (*(v6 + 8))(v8, v5);
    v28 = MEMORY[0x1E69E7CC0];
  }

  v94[0] = v28;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySny19CollectionsInternal9BigStringV5IndexVGGMd);
  v40 = lazy protocol witness table accessor for type BigString.Index and conformance BigString.Index();
  *&v84 = lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type [Range<BigString.Index>] and conformance [A], &_sSaySny19CollectionsInternal9BigStringV5IndexVGGMd);
  RangeSet.init<A>(_:)();
  v94[0] = v73;
  v94[1] = v72;
  v94[2] = v71;
  v94[3] = v70;
  v94[4] = v69;
  v94[5] = v68;
  *&v95 = v67;
  *(&v95 + 1) = v66;
  v41 = v75;
  *&v85 = v40;
  RangeSet.init(_:)();
  v42 = v78;
  v43 = v80;
  RangeSet.intersection(_:)();
  v44 = v76;
  v45 = *(v76 + 8);
  *&v83 = v76 + 8;
  *&v82 = v45;
  v45(v41, v43);
  (*(v44 + 16))(v79, v42, v43);
  v46 = type metadata accessor for DiscontiguousAttributedSubstring();
  v47 = v81;
  *(v81 + *(v46 + 24)) = 0;
  *v47 = v16;

  RangeSet.ranges.getter();
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v48 = dispatch thunk of Sequence._copyToContiguousArray()();
  v49 = *(v48 + 16);
  if (!v49)
  {
LABEL_17:
    *&v90 = v48;

    RangeSet.init<A>(_:)();
    v62 = v80;
    v63 = v82;
    (v82)(v79, v80);
    v63(v78, v62);
  }

  v76 = v46;
  v77 = v39;
  v50 = 0;
  v51 = *(v16 + 40);
  v103 = *(v16 + 24);
  v104 = v51;
  v105 = *(v16 + 56);
  v52 = v49 - 1;
  v53 = 32;
  while (1)
  {
    v54 = *(v48 + v53);
    v55 = *(v48 + v53 + 16);
    v56 = *(v48 + v53 + 48);
    v101 = *(v48 + v53 + 32);
    v102 = v56;
    v99 = v54;
    v100 = v55;
    swift_unknownObjectRetain();
    BigString.UnicodeScalarView.subscript.getter();
    swift_unknownObjectRelease();
    v86 = v95;
    v87 = v96;
    v88 = v97;
    v89 = v98;
    v90 = v95;
    v91 = v96;
    v92 = v97;
    v93 = v98;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v48 = specialized _ArrayBuffer._consumeAndCreateNew()(v48);
    }

    result = outlined destroy of BigSubstring.UnicodeScalarView(v94);
    if (v50 >= *(v48 + 16))
    {
      break;
    }

    v57 = (v48 + v53);
    v58 = v90;
    v59 = v91;
    v60 = v93;
    v57[2] = v92;
    v57[3] = v60;
    *v57 = v58;
    v57[1] = v59;
    if (v52 == v50)
    {
      goto LABEL_17;
    }

    v61 = *(v16 + 40);
    v103 = *(v16 + 24);
    v104 = v61;
    v105 = *(v16 + 56);
    ++v50;
    v53 += 64;
    if (v50 >= *(v48 + 16))
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t key path setter for AttributedString.subscript(_:) : AttributedString(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DiscontiguousAttributedSubstring();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy10Foundation16AttributedStringV5IndexVGMd);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a3, v9);
  _s10Foundation16AttributedStringV4RunsVWOcTm_0(a1, v7, type metadata accessor for DiscontiguousAttributedSubstring);
  return AttributedString.subscript.setter(v7, v11);
}

uint64_t AttributedString.subscript.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v122 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionVys12LazySequenceVys8RangeSetV6RangesVy10Foundation16AttributedStringV5IndexV_GGGMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v142 = &v118 - v6;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionV8IteratorVys12LazySequenceVys8RangeSetV6RangesVy10Foundation16AttributedStringV5IndexV_GG_GMd);
  MEMORY[0x1EEE9AC00](v120);
  v127 = &v118 - v7;
  *&v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v8 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v10 = (&v118 - v9);
  *&v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  MEMORY[0x1EEE9AC00](v141);
  v12 = &v118 - v11;
  v140 = type metadata accessor for DiscontiguousAttributedSubstring();
  MEMORY[0x1EEE9AC00](v140);
  v14 = &v118 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v17 = &unk_1EA7B2000;
  v121 = a1;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_11;
  }

  *&v139 = v8;
  *(&v139 + 1) = v14;
  v18 = *(v16 + 40);
  v258 = *(v16 + 24);
  v259 = v18;
  v260 = *(v16 + 56);
  v8 = *(v16 + 72);
  v19 = *(v16 + 80);
  v20 = v16;
  v16 = *(v16 + 88);
  v21 = *(v20 + 96);
  type metadata accessor for AttributedString.Guts();
  v128 = swift_allocObject();
  v22 = BigString.isEmpty.getter() & 1;
  outlined init with copy of BigString(&v258, v173);
  v23 = swift_unknownObjectRetain();
  v14 = v19;
  a1 = v21;
  specialized Rope._endPath.getter(v23);
  if (v8)
  {
    v24 = v16 == 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = v24;
  if (v25 != v22)
  {
    goto LABEL_38;
  }

  if (one-time initialization token for _nextVersion != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    add_explicit = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
    v27 = v259;
    v28 = v128;
    *(v128 + 24) = v258;
    *(v28 + 16) = add_explicit;
    *(v28 + 40) = v27;
    *(v28 + 56) = v260;
    *(v28 + 72) = v8;
    *(v28 + 80) = v14;
    *(v28 + 88) = v16;
    *(v28 + 96) = a1;
    v16 = v28;
    *(v28 + 104) = MEMORY[0x1E69E7CC0];

    *v3 = v28;
    v14 = *(&v139 + 1);
    v8 = v139;
    v17 = &unk_1EA7B2000;
    a1 = v121;
LABEL_11:
    *(&v139 + 1) = v10;
    if (v17[147] != -1)
    {
      swift_once();
    }

    *(v16 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
    _s10Foundation16AttributedStringV4RunsVWOcTm_0(a1, v14, type metadata accessor for DiscontiguousAttributedSubstring);
    BigString.init()();
    v173[0] = 0;
    MEMORY[0x1865D26B0](v173, 8);
    v29 = v173[0];
    type metadata accessor for AttributedString.Guts();
    v3 = swift_allocObject();
    v10 = &static AttributedString.Guts._nextVersion;
    if (BigString.isEmpty.getter())
    {
      break;
    }

    __break(1u);
LABEL_37:
    outlined destroy of AttributedString.UnicodeScalarView(v148);
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    swift_once();
  }

  v128 = v16;
  v30 = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
  v31 = v157;
  *(v3 + 24) = v156;
  *(v3 + 16) = v30;
  *(v3 + 40) = v31;
  *(v3 + 56) = v158;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
  *(v3 + 88) = 0;
  *(v3 + 96) = v29;
  *(v3 + 104) = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v32 = *(&v139 + 1);
  RangeSet.ranges.getter();
  v33 = v143;
  (*(v8 + 16))(v12, v32, v143);
  v34 = v8;
  v35 = *(v141 + 36);
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v36 = v14;
  dispatch thunk of Collection.startIndex.getter();
  (*(v34 + 8))(v32, v33);
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter();
    if (*&v12[v35] == v173[0])
    {
      break;
    }

    v37 = dispatch thunk of Collection.subscript.read();
    v39 = v38[2];
    v41 = *v38;
    v40 = v38[1];
    v251 = v38[3];
    v250 = v39;
    v248 = v41;
    v249 = v40;
    v37(v173, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v42 = *(v3 + 40);
    v255 = *(v3 + 24);
    v256 = v42;
    v257 = *(v3 + 56);
    v241[0] = BigString.endIndex.getter();
    v241[1] = v43;
    v241[2] = v44;
    v241[3] = v45;
    v241[4] = v241[0];
    v241[5] = v43;
    v241[6] = v44;
    v241[7] = v45;
    v46 = v36;
    v47 = *v36;
    v48 = *(v47 + 40);
    v252 = *(v47 + 24);
    v253 = v48;
    v254 = *(v47 + 56);
    swift_unknownObjectRetain();

    BigString.UnicodeScalarView.subscript.getter();
    swift_unknownObjectRelease();
    outlined destroy of BigSubstring.UnicodeScalarView(v164);
    v174 = v165;
    v175 = v166;
    v243 = v164[3];
    v244 = v164[4];
    v245 = v165;
    v246 = v166;
    v242 = v47;
    v36 = v46;
    v247 = 0;
    specialized AttributedString.Guts.replaceSubrange<A>(_:with:)(v241, &v242);
    outlined destroy of AttributedSubstring(&v242);
  }

  outlined destroy of TermOfAddress?(v12, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  _s10Foundation16AttributedStringV4RunsVWOhTm_1(v36, type metadata accessor for DiscontiguousAttributedSubstring);
  v49 = *(v3 + 40);
  v240[0] = *(v3 + 24);
  v240[1] = v49;
  v240[2] = *(v3 + 56);
  v50 = *(v3 + 56);
  v51 = *(v3 + 64);
  v143 = *(v3 + 24);
  v141 = *(v3 + 40);
  v52 = BigString.startIndex.getter();
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v59 = BigString.endIndex.getter();
  v228 = v52;
  v229 = v54;
  v230 = v56;
  v231 = v58;
  v232 = v59;
  v233 = v60;
  v234 = v61;
  v235 = v62;
  v237 = v141;
  v236 = v143;
  v238 = v50;
  v239 = v51;
  swift_retain_n();
  outlined init with copy of BigString(v240, v173);
  BigString.UnicodeScalarView.subscript.getter();

  outlined destroy of BigString(v240);
  outlined destroy of BigSubstring.UnicodeScalarView(&v159);
  v149[5] = v160;
  v149[6] = v161;
  v149[7] = v162;
  v149[8] = v163;
  v153 = v162;
  v154 = v163;
  v151 = v160;
  v152 = v161;
  v126 = v3;
  v150 = v3;
  v155 = 0;
  v138 = *(&v162 + 1);
  *&v143 = v162;
  v139 = v163;
  outlined destroy of AttributedString.UnicodeScalarView(&v150);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy10Foundation16AttributedStringV5IndexVGMd);
  v64 = v142;
  v119 = v63;
  RangeSet.ranges.getter();
  v14 = v127;
  outlined init with copy of FloatingPointRoundingRule?(v64, v127, &_ss12LazySequenceVys8RangeSetV6RangesVy10Foundation16AttributedStringV5IndexV_GGMd);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy10Foundation16AttributedStringV5IndexV_GMd);
  v66 = lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<AttributedString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy10Foundation16AttributedStringV5IndexV_GMd);
  dispatch thunk of Collection.endIndex.getter();
  a1 = v173[0];
  outlined destroy of TermOfAddress?(v64, &_ss12LazySequenceVys8RangeSetV6RangesVy10Foundation16AttributedStringV5IndexV_GGMd);
  dispatch thunk of Collection.startIndex.getter();
  if (a1 != *&v149[0])
  {
    v67 = lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<AttributedString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy10Foundation16AttributedStringV5IndexV_GMd);
    v124 = v65;
    v125 = v67;
    v68 = v128;
    v69 = v126;
    v123 = v66;
    while (1)
    {
      v147 = a1;
      dispatch thunk of BidirectionalCollection.index(before:)();
      v134 = v144[0];
      v147 = v144[0];
      v70 = dispatch thunk of Collection.subscript.read();
      v72 = *v71;
      v73 = v71[1];
      v74 = v71[2];
      v75 = v71[3];
      v76 = v71[5];
      v142 = v71[6];
      v77 = v71[7];
      v140 = v71[8];
      *&v141 = v77;
      v70(v144, 0);
      v78 = *(v68 + 40);
      v227[3] = *(v68 + 24);
      v227[4] = v78;
      v227[5] = *(v68 + 56);
      swift_unknownObjectRetain();
      v132 = v73;
      v133 = v72;
      v130 = v75;
      v131 = v74;
      v129 = v76;
      v79 = BigString.UnicodeScalarView.distance(from:to:)();
      swift_unknownObjectRelease();
      v80 = *(v69 + 40);
      v227[0] = *(v69 + 24);
      v227[1] = v80;
      v227[2] = *(v69 + 56);
      v81 = *(v69 + 56);
      v82 = *(v69 + 64);
      v83 = *(v69 + 24);
      v136 = *(v69 + 40);
      v137 = v83;
      v84 = BigString.startIndex.getter();
      a1 = v85;
      v87 = v86;
      v14 = v88;
      v89 = BigString.endIndex.getter();
      v215 = v84;
      v216 = a1;
      v217 = v87;
      v218 = v14;
      v219 = v89;
      v220 = v90;
      v221 = v91;
      v222 = v92;
      v224 = v136;
      v223 = v137;
      v225 = v81;
      v226 = v82;

      outlined init with copy of BigString(v227, v144);
      BigString.UnicodeScalarView.subscript.getter();
      outlined destroy of BigString(v227);
      outlined destroy of BigSubstring.UnicodeScalarView(v167);
      v145 = v168;
      v146 = v169;
      *(v148 + 8) = v167[3];
      *(&v148[1] + 8) = v167[4];
      *(&v148[2] + 8) = v168;
      *(&v148[3] + 8) = v169;
      *&v148[0] = v69;
      *(&v148[4] + 1) = 0;
      if (__OFSUB__(0, v79))
      {
        break;
      }

      v135 = -v79;
      v93 = *(v69 + 40);
      v214[0] = *(v69 + 24);
      v214[1] = v93;
      v214[2] = *(v69 + 56);
      v94 = *(v69 + 56);
      v95 = *(v69 + 64);
      v96 = *(v69 + 24);
      v136 = *(v69 + 40);
      v137 = v96;
      v97 = BigString.startIndex.getter();
      a1 = v98;
      v100 = v99;
      v14 = v101;
      v102 = BigString.endIndex.getter();
      v202 = v97;
      v203 = a1;
      v204 = v100;
      v205 = v14;
      v206 = v102;
      v207 = v103;
      v208 = v104;
      v209 = v105;
      v211 = v136;
      v210 = v137;
      v212 = v94;
      v213 = v95;
      swift_retain_n();
      outlined init with copy of BigString(v214, v144);
      BigString.UnicodeScalarView.subscript.getter();

      outlined destroy of BigString(v214);
      outlined destroy of BigSubstring.UnicodeScalarView(v170);
      v145 = v171;
      v146 = v172;
      *(v149 + 8) = v170[3];
      *(&v149[1] + 8) = v170[4];
      *(&v149[2] + 8) = v171;
      *(&v149[3] + 8) = v172;
      *&v149[0] = v69;
      *(&v149[4] + 1) = 0;
      outlined destroy of AttributedString.UnicodeScalarView(v149);
      v16 = *(&v148[2] + 1) >> 10;
      if (*(&v148[2] + 1) >> 10 < *(&v149[0] + 1) >> 10)
      {
        goto LABEL_32;
      }

      v106 = *(&v148[0] + 1) >> 10;
      if (*(&v149[0] + 1) >> 10 < *(&v148[0] + 1) >> 10)
      {
        goto LABEL_32;
      }

      v8 = v143 >> 10;
      if (v143 >> 10 < v106 || v16 < v8)
      {
        goto LABEL_32;
      }

      v107 = *(*&v148[0] + 40);
      v199 = *(*&v148[0] + 24);
      v200 = v107;
      v201 = *(*&v148[0] + 56);
      v14 = v199;
      swift_unknownObjectRetain();
      v3 = BigString.UnicodeScalarView.index(_:offsetBy:limitedBy:)();
      v12 = v108;
      a1 = v109;
      v10 = v110;
      swift_unknownObjectRelease();
      if (v10 == 2)
      {
        goto LABEL_37;
      }

      v111 = v3 >> 10;
      if (v3 >> 10 < v106 || v16 < v111)
      {
        goto LABEL_33;
      }

      outlined destroy of AttributedString.UnicodeScalarView(v148);
      if (v8 < v111)
      {
        goto LABEL_34;
      }

      v112 = v3;
      *&v137 = v3;
      v69 = v126;
      v113 = *(v126 + 40);
      v196 = *(v126 + 24);
      v197 = v113;
      v198 = *(v126 + 56);
      BigString.startIndex.getter();
      BigString.endIndex.getter();
      v186 = v112;
      v187 = v12;
      v188 = a1;
      v189 = v10;
      v190 = v143;
      v191 = v138;
      v192 = v139;
      v114 = *(v69 + 40);
      v193 = *(v69 + 24);
      v194 = v114;
      v195 = *(v69 + 56);
      swift_unknownObjectRetain();
      swift_retain_n();
      BigString.UnicodeScalarView.subscript.getter();
      swift_unknownObjectRelease();

      outlined destroy of BigSubstring.UnicodeScalarView(v173);
      v145 = v177;
      v146 = v178;
      v181 = v175;
      v182 = v176;
      v183 = v177;
      v184 = v178;
      v180 = v69;
      v185 = 0;
      v179[0] = v133;
      v179[1] = v132;
      v179[2] = v131;
      v179[3] = v130;
      v68 = v128;
      v179[4] = v129;
      v179[5] = v142;
      v179[6] = v141;
      v179[7] = v140;
      specialized AttributedString.Guts.replaceSubrange<A>(_:with:)(v179, &v180);
      outlined destroy of AttributedSubstring(&v180);
      v14 = v127;
      dispatch thunk of Collection.startIndex.getter();
      v115 = v137;
      *&v139 = a1;
      *(&v139 + 1) = v10;
      v138 = v12;
      *&v143 = v137;
      a1 = v134;
      if (v134 == *&v149[0])
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  v115 = v143;
  v69 = v126;
LABEL_29:
  *&v14[*(v120 + 36)] = a1;
  outlined destroy of TermOfAddress?(v14, &_ss18ReversedCollectionV8IteratorVys12LazySequenceVys8RangeSetV6RangesVy10Foundation16AttributedStringV5IndexV_GG_GMd);
  v116 = AttributedString.UnicodeScalarView.init(_:)(v69, v148);
  (*(*(v119 - 8) + 8))(v122, v116);
  _s10Foundation16AttributedStringV4RunsVWOhTm_1(v121, type metadata accessor for DiscontiguousAttributedSubstring);
  v149[2] = v148[2];
  v149[3] = v148[3];
  v149[4] = v148[4];
  v149[0] = v148[0];
  v149[1] = v148[1];
  result = outlined destroy of AttributedString.UnicodeScalarView(v149);
  if ((*(&v149[0] + 1) ^ v115) > 0x3FF)
  {
    __break(1u);
  }

  return result;
}

uint64_t AttributedString.removeSubranges(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionVys12LazySequenceVys8RangeSetV6RangesVy10Foundation16AttributedStringV5IndexV_GGGMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v26 - v5;
  v26[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionV8IteratorVys12LazySequenceVys8RangeSetV6RangesVy10Foundation16AttributedStringV5IndexV_GG_GMd);
  MEMORY[0x1EEE9AC00](v26[0]);
  v8 = v26 - v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v10 + 40);
    v37[0] = *(v10 + 24);
    v37[1] = v11;
    v37[2] = *(v10 + 56);
    *&v30 = a1;
    v12 = *(v10 + 72);
    v13 = *(v10 + 80);
    v15 = *(v10 + 88);
    v14 = *(v10 + 96);
    type metadata accessor for AttributedString.Guts();
    swift_allocObject();
    outlined init with copy of BigString(v37, v36);
    swift_unknownObjectRetain();
    v10 = AttributedString.Guts.init(string:runs:)(v37, v12, v13, v15, v14);

    *v2 = v10;
  }

  if (one-time initialization token for _nextVersion != -1)
  {
    goto LABEL_10;
  }

  while (1)
  {
    add_explicit = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
    v26[1] = v10;
    *(v10 + 16) = add_explicit;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy10Foundation16AttributedStringV5IndexVGMd);
    RangeSet.ranges.getter();
    outlined init with copy of FloatingPointRoundingRule?(v6, v8, &_ss12LazySequenceVys8RangeSetV6RangesVy10Foundation16AttributedStringV5IndexV_GGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy10Foundation16AttributedStringV5IndexV_GMd);
    lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<AttributedString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy10Foundation16AttributedStringV5IndexV_GMd);
    dispatch thunk of Collection.endIndex.getter();
    v10 = *&v36[0];
    outlined destroy of TermOfAddress?(v6, &_ss12LazySequenceVys8RangeSetV6RangesVy10Foundation16AttributedStringV5IndexV_GGMd);
    dispatch thunk of Collection.startIndex.getter();
    if (v10 == v31[0])
    {
      break;
    }

    v6 = lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<AttributedString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy10Foundation16AttributedStringV5IndexV_GMd);
    while (1)
    {
      v32 = v10;
      dispatch thunk of BidirectionalCollection.index(before:)();
      v10 = v31[0];
      v32 = v31[0];
      v17 = dispatch thunk of Collection.subscript.read();
      v19 = *v18;
      v20 = v18[1];
      v29 = *(v18 + 40);
      v30 = v19;
      v27 = *(v18 + 56);
      v28 = v20;
      v17(v31, 0);
      v36[0] = v30;
      v36[1] = v28;
      v36[2] = v29;
      v36[3] = v27;
      BigString.init()();
      v31[0] = 0;
      MEMORY[0x1865D26B0](v31, 8);
      v21 = v31[0];
      type metadata accessor for AttributedString.Guts();
      inited = swift_initStackObject();
      v23 = BigString.isEmpty.getter();
      specialized Rope._endPath.getter(0);
      if ((v23 & 1) == 0)
      {
        break;
      }

      *(inited + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
      v24 = v34;
      *(inited + 24) = v33;
      *(inited + 40) = v24;
      *(inited + 56) = v35;
      *(inited + 72) = 0;
      *(inited + 80) = 0;
      *(inited + 88) = 0;
      *(inited + 96) = v21;
      *(inited + 104) = MEMORY[0x1E69E7CC0];
      specialized AttributedString.Guts.replaceSubrange<A>(_:with:)(v36, inited);
      swift_setDeallocating();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      dispatch thunk of Collection.startIndex.getter();
      if (v10 == v31[0])
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_10:
    swift_once();
  }

LABEL_8:
  *&v8[*(v26[0] + 36)] = v10;
  return outlined destroy of TermOfAddress?(v8, &_ss18ReversedCollectionV8IteratorVys12LazySequenceVys8RangeSetV6RangesVy10Foundation16AttributedStringV5IndexV_GG_GMd);
}

uint64_t type metadata accessor for DiscontiguousAttributedSubstring()
{
  result = type metadata singleton initialization cache for DiscontiguousAttributedSubstring;
  if (!type metadata singleton initialization cache for DiscontiguousAttributedSubstring)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t specialized static DiscontiguousAttributedSubstring.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v540 = a2;
  v525 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
  MEMORY[0x1EEE9AC00](v525);
  v532 = &v509 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v533 = &v509 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v555 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v527 = &v509 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v534 = &v509 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v531 = &v509 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v541 = &v509 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v530 = &v509 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v535 = &v509 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v509 - v19;
  v544 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  MEMORY[0x1EEE9AC00](v544);
  v561 = &v509 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v559 = &v509 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v528 = &v509 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v526 = &v509 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v557 = &v509 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v545 = &v509 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v509 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v509 - v37;
  v552 = type metadata accessor for AttributedString.Runs();
  MEMORY[0x1EEE9AC00](v552);
  v524 = &v509 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v551 = &v509 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v542 = &v509 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v46 = (&v509 - v45);
  MEMORY[0x1EEE9AC00](v47);
  v548 = (&v509 - v48);
  v49 = *a1;
  v539 = type metadata accessor for DiscontiguousAttributedSubstring();
  v50 = *(v539 + 20);
  v546 = v25;
  v51 = v25;
  v52 = v559;
  v549 = *(v51 + 16);
  v550 = v51 + 16;
  v549(v38, a1 + v50, v24);
  v547 = v46;
  *v46 = v49;
  v53 = lazy protocol witness table accessor for type BigString.Index and conformance BigString.Index();
  v560 = v49;

  v556 = v35;
  v543 = v53;
  RangeSet.init()();
  v562 = v24;
  v536 = v38;
  RangeSet.ranges.getter();
  v54 = v555;
  v537 = *(v555 + 16);
  v538 = v555 + 16;
  v537(v52, v20, v6);
  v55 = *(v544 + 36);
  v56 = lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  dispatch thunk of Collection.startIndex.getter();
  v57 = *(v54 + 8);
  v553 = v20;
  v554 = v57;
  v555 = v54 + 8;
  v57(v20, v6);
  dispatch thunk of Collection.endIndex.getter();
  v58 = *(v52 + v55);
  v566 = v56;
  v567 = v6;
  if (v58 != v583)
  {
    v558 = v55;
    do
    {
      v67 = dispatch thunk of Collection.subscript.read();
      v69 = v68[4];
      v70 = v68[7];
      v564 = v68[6];
      v565 = v69;
      v563 = v70;
      v67(&v583, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v71 = v560;
      v692 = *(v560 + 24);
      v693 = *(v560 + 40);
      v694 = *(v560 + 56);
      swift_unknownObjectRetain();
      v72 = BigString.UnicodeScalarView.index(roundingDown:)();
      v74 = v73;
      v76 = v75;
      v78 = v77;
      swift_unknownObjectRelease();
      v689 = *(v71 + 24);
      v690 = *(v71 + 40);
      v691 = *(v71 + 56);
      swift_unknownObjectRetain();
      v79 = BigString.UnicodeScalarView.index(roundingDown:)();
      v81 = v80;
      v83 = v82;
      v85 = v84;
      v6 = v567;
      swift_unknownObjectRelease();
      v583 = v72;
      v584 = v74;
      v585 = v76;
      *&v586 = v78;
      *(&v586 + 1) = v79;
      v587 = v81;
      v588 = v83;
      *&v589 = v85;
      if ((v79 ^ v72) >= 0x400)
      {
        v86 = RangeSet._ranges.modify();
        RangeSet.Ranges._insert(contentsOf:)();
        v86(v613, 0);
      }

      v52 = v559;
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*(v52 + v558) != v583);
  }

  outlined destroy of TermOfAddress?(v52, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  v59 = v552;
  v60 = v547;
  v549(v547 + *(v552 + 24), v556, v562);
  v61 = v553;
  RangeSet.ranges.getter();
  v62 = RangeSet.Ranges.count.getter();
  v63 = v554;
  v554(v61, v6);
  v64 = *(v59 + 28);
  LODWORD(v529) = v62 > 1;
  *(v60 + v64) = v529;
  v65 = v535;
  RangeSet.ranges.getter();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v613[0] == v583)
  {
    v66 = v65;
LABEL_10:
    v63(v66, v6);
    v92 = v560;
    v93 = *(v560 + 72);
    v94 = v562;
    if (v93)
    {
      v565 = *(v93 + 18);
    }

    else
    {
      v565 = 0;
    }

    v564 = *(v560 + 96);
    v686 = *(v560 + 24);
    v687 = *(v560 + 40);
    v688 = *(v560 + 56);
    v95 = BigString.startIndex.getter();
    v97 = v96;
    v563 = v98;
    v99 = *(v92 + 72);
    v100 = *(v92 + 96);
    v559 = v101;
    v560 = v100;
    if (v99)
    {
      v535 = *(v99 + 18);
      v102 = *(v546 + 8);
      swift_unknownObjectRetain();
      v102(v556, v94);
      v558 = v102;
      v102(v536, v94);
      swift_unknownObjectRelease();
    }

    else
    {
      v103 = *(v546 + 8);
      v103(v556, v94);
      v558 = v103;
      v103(v536, v94);
      v535 = 0;
    }

    v683 = *(v92 + 24);
    v684 = *(v92 + 40);
    v685 = *(v92 + 56);
    v104 = BigString.startIndex.getter();
    v108 = 0;
    v109 = 0;
    v110 = 0;
    v111 = 0;
    v112 = 0;
    v113 = -1;
    v114 = v95;
    v115 = v97;
    v116 = v563;
    v117 = v563;
    v118 = v559;
    v119 = v559;
    v120 = v104;
    v121 = v105;
    v122 = v106;
    v123 = v107;
    v124 = -1;
    v125 = v551;
    v126 = v565;
    goto LABEL_26;
  }

  v87 = dispatch thunk of Collection.subscript.read();
  v89 = *v88;
  v522 = v88[1];
  v523 = v89;
  v90 = v88[2];
  v520 = v88[3];
  v521 = v90;
  v87(&v583, 0);
  v63(v65, v6);
  v91 = v530;
  RangeSet.ranges.getter();
  if (dispatch thunk of Collection.isEmpty.getter())
  {
    v66 = v91;
    goto LABEL_10;
  }

  dispatch thunk of Collection.endIndex.getter();
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  dispatch thunk of BidirectionalCollection.index(before:)();
  v127 = dispatch thunk of Collection.subscript.read();
  v120 = v128[4];
  v129 = v128[5];
  v130 = v128[6];
  v131 = v128[7];
  v127(&v583, 0);
  v63(v91, v6);
  v132 = v560;
  AttributedString.Guts.findRun(at:)(v523, v520, &v583);
  v564 = v583;
  v565 = v584;
  v515 = v586;
  v516 = v585;
  v530 = v587;
  v519 = v588;
  v559 = *(&v589 + 1);
  v563 = v589;
  v686 = *(v132 + 24);
  v687 = *(v132 + 40);
  v688 = *(v132 + 56);
  v133 = BigString.endIndex.getter();
  v517 = v131;
  v518 = v130;
  if ((v133 ^ v120) > 0x3FF)
  {
    AttributedString.Guts.findRun(at:)(v120, v131, &v583);
    v560 = v583;
    v535 = v584;
    v112 = v585;
    v141 = v63;
    v111 = v586;
    v512 = v588;
    v513 = v587;
    v510 = *(&v589 + 1);
    v511 = v589;
    v514 = v129;
    v142 = v553;
    v143 = v562;
    RangeSet.ranges.getter();
    v124 = RangeSet.Ranges.count.getter();
    v144 = v6;
    v94 = v143;
    v141(v142, v144);
    v145 = *(v546 + 8);
    v145(v556, v143);
    v558 = v145;
    v145(v536, v143);
    v107 = v510;
    v106 = v511;
    v105 = v512;
    v104 = v513;
    v113 = 0;
    v126 = v565;
    v125 = v551;
    v110 = v529;
    v115 = v522;
    v114 = v523;
    v119 = v520;
    v117 = v521;
    v95 = v530;
    v122 = v518;
    v97 = v519;
    v116 = v563;
    v118 = v559;
    v121 = v514;
    v123 = v517;
  }

  else
  {
    v134 = v129;
    v135 = *(v132 + 72);
    if (v135)
    {
      v111 = *(v132 + 80);
    }

    else
    {
      v111 = 0;
    }

    v136 = *(v132 + 96);
    v137 = swift_unknownObjectRetain();
    v560 = v136;
    v535 = specialized Rope._endPath.getter(v137);
    if (v135)
    {
      swift_unknownObjectRelease();
    }

    v138 = v553;
    v94 = v562;
    RangeSet.ranges.getter();
    v139 = v567;
    v124 = RangeSet.Ranges.count.getter();
    v554(v138, v139);
    v140 = *(v546 + 8);
    v140(v556, v94);
    v558 = v140;
    v140(v536, v94);
    v113 = 0;
    v112 = 0;
    v104 = v120;
    v121 = v134;
    v105 = v134;
    v123 = v517;
    v122 = v518;
    v106 = v518;
    v107 = v517;
    v126 = v565;
    v125 = v551;
    v110 = v529;
    v115 = v522;
    v114 = v523;
    v119 = v520;
    v117 = v521;
    v95 = v530;
    v97 = v519;
    v116 = v563;
    v118 = v559;
  }

  v108 = v515;
  v109 = v516;
LABEL_26:
  v146 = v547;
  v547[1] = v108;
  *(v146 + 16) = v564;
  *(v146 + 24) = v126;
  *(v146 + 32) = v109;
  *(v146 + 40) = v95;
  *(v146 + 48) = v97;
  *(v146 + 56) = v116;
  *(v146 + 64) = v118;
  *(v146 + 72) = v114;
  *(v146 + 80) = v115;
  *(v146 + 88) = v117;
  *(v146 + 96) = v119;
  *(v146 + 104) = v113;
  *(v146 + 112) = 0;
  *(v146 + 113) = v110;
  v147 = v560;
  *(v146 + 120) = v111;
  *(v146 + 128) = v147;
  *(v146 + 136) = v535;
  *(v146 + 144) = v112;
  *(v146 + 152) = v104;
  *(v146 + 160) = v105;
  *(v146 + 168) = v106;
  *(v146 + 176) = v107;
  *(v146 + 184) = v120;
  *(v146 + 192) = v121;
  *(v146 + 200) = v122;
  *(v146 + 208) = v123;
  *(v146 + 216) = v124;
  *(v146 + 224) = 0;
  *(v146 + 225) = v110;
  outlined init with take of AttributedString.Runs(v146, v548, type metadata accessor for AttributedString.Runs);
  v148 = *v540;
  v549(v545, v540 + *(v539 + 20), v94);
  *v125 = v148;
  v560 = v148;

  RangeSet.init()();
  v149 = v553;
  RangeSet.ranges.getter();
  v150 = v561;
  v151 = v567;
  v537(v561, v149, v567);
  v152 = *(v544 + 36);
  dispatch thunk of Collection.startIndex.getter();
  v554(v149, v151);
  dispatch thunk of Collection.endIndex.getter();
  if (*(v150 + v152) != v583)
  {
    v559 = v152;
    do
    {
      v161 = dispatch thunk of Collection.subscript.read();
      v163 = v162[4];
      v564 = v162[5];
      v565 = v163;
      v563 = v162[6];
      v161(&v583, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v164 = v560;
      v680 = *(v560 + 24);
      v681 = *(v560 + 40);
      v682 = *(v560 + 56);
      swift_unknownObjectRetain();
      v165 = BigString.UnicodeScalarView.index(roundingDown:)();
      v167 = v166;
      v169 = v168;
      v171 = v170;
      swift_unknownObjectRelease();
      v677 = *(v164 + 24);
      v678 = *(v164 + 40);
      v679 = *(v164 + 56);
      swift_unknownObjectRetain();
      v172 = BigString.UnicodeScalarView.index(roundingDown:)();
      v174 = v173;
      v176 = v175;
      v178 = v177;
      swift_unknownObjectRelease();
      v583 = v165;
      v584 = v167;
      v585 = v169;
      *&v586 = v171;
      *(&v586 + 1) = v172;
      v587 = v174;
      v151 = v567;
      v588 = v176;
      *&v589 = v178;
      if ((v172 ^ v165) >= 0x400)
      {
        v179 = RangeSet._ranges.modify();
        RangeSet.Ranges._insert(contentsOf:)();
        v179(v613, 0);
      }

      v150 = v561;
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*(v150 + v559) != v583);
  }

  outlined destroy of TermOfAddress?(v150, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  v154 = v551;
  v153 = v552;
  v549(&v551[*(v552 + 24)], v557, v562);
  v155 = v553;
  RangeSet.ranges.getter();
  v156 = RangeSet.Ranges.count.getter();
  v157 = v554;
  v554(v155, v151);
  v158 = *(v153 + 28);
  LODWORD(v556) = v156 > 1;
  v154[v158] = v556;
  v159 = v541;
  RangeSet.ranges.getter();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v613[0] == v583)
  {
    v160 = v159;
LABEL_35:
    v157(v160, v151);
    v185 = v560;
    v186 = *(v560 + 72);
    v187 = v551;
    if (v186)
    {
      v565 = *(v186 + 18);
    }

    else
    {
      v565 = 0;
    }

    v188 = *(v560 + 96);
    v674 = *(v560 + 24);
    v675 = *(v560 + 40);
    v676 = *(v560 + 56);
    v189 = BigString.startIndex.getter();
    v191 = v190;
    v563 = v193;
    v564 = v192;
    v194 = *(v185 + 72);
    v561 = *(v185 + 96);
    if (v194)
    {
      v559 = *(v194 + 18);
      swift_unknownObjectRetain();
      v195 = v562;
      v196 = v191;
      v197 = v189;
      v198 = v188;
      v199 = v558;
      (v558)(v557, v562);
      v199(v545, v195);
      v188 = v198;
      v189 = v197;
      v191 = v196;
      swift_unknownObjectRelease();
    }

    else
    {
      v200 = v558;
      v201 = v562;
      (v558)(v557, v562);
      v200(v545, v201);
      v559 = 0;
    }

    v673[15] = *(v185 + 24);
    v673[16] = *(v185 + 40);
    v673[17] = *(v185 + 56);
    v202 = BigString.startIndex.getter();
    v206 = 0;
    v207 = 0;
    v208 = 0;
    v209 = 0;
    v210 = 0;
    v211 = -1;
    v212 = v189;
    v213 = v191;
    v215 = v563;
    v214 = v564;
    v216 = v564;
    v217 = v563;
    v218 = v202;
    v219 = v203;
    v220 = v204;
    v221 = v205;
    v222 = -1;
    v223 = v565;
    goto LABEL_51;
  }

  v180 = dispatch thunk of Collection.subscript.read();
  v182 = v181[1];
  v547 = *v181;
  v544 = v182;
  v183 = v181[2];
  v539 = v181[3];
  v540 = v183;
  v180(&v583, 0);
  v157(v159, v151);
  v184 = v531;
  RangeSet.ranges.getter();
  if (dispatch thunk of Collection.isEmpty.getter())
  {
    v160 = v184;
    goto LABEL_35;
  }

  dispatch thunk of Collection.endIndex.getter();
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  dispatch thunk of BidirectionalCollection.index(before:)();
  v224 = dispatch thunk of Collection.subscript.read();
  v218 = v225[4];
  v541 = v225[5];
  v226 = v225[7];
  v538 = v225[6];
  v224(&v583, 0);
  v157(v184, v151);
  v227 = v560;
  AttributedString.Guts.findRun(at:)(v547, v539, &v583);
  v530 = v586;
  v531 = v585;
  v189 = v587;
  v536 = v588;
  v537 = v583;
  v564 = v589;
  v565 = v584;
  v563 = *(&v589 + 1);
  v674 = *(v227 + 24);
  v675 = *(v227 + 40);
  v676 = *(v227 + 56);
  v228 = BigString.endIndex.getter();
  v535 = v226;
  if ((v228 ^ v218) > 0x3FF)
  {
    AttributedString.Guts.findRun(at:)(v218, v226, &v583);
    v559 = v584;
    v210 = v585;
    v235 = v151;
    v209 = v586;
    v560 = v587;
    v561 = v583;
    v529 = v588;
    v522 = *(&v589 + 1);
    v523 = v589;
    v236 = v553;
    v237 = v562;
    RangeSet.ranges.getter();
    v222 = RangeSet.Ranges.count.getter();
    v157(v236, v235);
    v185 = v558;
    (v558)(v557, v237);
    (v185)(v545, v237);
    v187 = v551;
    v205 = v522;
    v204 = v523;
    v203 = v529;
    v202 = v560;
    v211 = 0;
    v208 = v556;
    v212 = v547;
    v213 = v544;
    v217 = v539;
    v216 = v540;
    v214 = v564;
    v223 = v565;
    v191 = v536;
    v188 = v537;
    v215 = v563;
    v219 = v541;
    v220 = v538;
    v221 = v535;
  }

  else
  {
    v229 = *(v227 + 72);
    if (v229)
    {
      v209 = *(v227 + 80);
    }

    else
    {
      v209 = 0;
    }

    v230 = *(v227 + 96);
    v231 = swift_unknownObjectRetain();
    v561 = v230;
    v559 = specialized Rope._endPath.getter(v231);
    if (v229)
    {
      swift_unknownObjectRelease();
    }

    v187 = v551;
    v232 = v553;
    v233 = v562;
    RangeSet.ranges.getter();
    v234 = v567;
    v222 = RangeSet.Ranges.count.getter();
    v554(v232, v234);
    v185 = v558;
    (v558)(v557, v233);
    (v185)(v545, v233);
    v211 = 0;
    v210 = 0;
    v202 = v218;
    v216 = v540;
    v219 = v541;
    v203 = v541;
    v220 = v538;
    v217 = v539;
    v204 = v538;
    v221 = v535;
    v191 = v536;
    v205 = v535;
    v208 = v556;
    v212 = v547;
    v213 = v544;
    v214 = v564;
    v223 = v565;
    v188 = v537;
    v215 = v563;
  }

  v206 = v530;
  v207 = v531;
LABEL_51:
  *(v187 + 8) = v206;
  *(v187 + 16) = v188;
  *(v187 + 24) = v223;
  *(v187 + 32) = v207;
  *(v187 + 40) = v189;
  *(v187 + 48) = v191;
  *(v187 + 56) = v214;
  *(v187 + 64) = v215;
  *(v187 + 72) = v212;
  *(v187 + 80) = v213;
  *(v187 + 88) = v216;
  *(v187 + 96) = v217;
  *(v187 + 104) = v211;
  *(v187 + 112) = 0;
  *(v187 + 113) = v208;
  v238 = v561;
  *(v187 + 120) = v209;
  *(v187 + 128) = v238;
  *(v187 + 136) = v559;
  *(v187 + 144) = v210;
  *(v187 + 152) = v202;
  *(v187 + 160) = v203;
  *(v187 + 168) = v204;
  *(v187 + 176) = v205;
  *(v187 + 184) = v218;
  *(v187 + 192) = v219;
  *(v187 + 200) = v220;
  *(v187 + 208) = v221;
  *(v187 + 216) = v222;
  *(v187 + 224) = 0;
  *(v187 + 225) = v208;
  v239 = v542;
  result = outlined init with take of AttributedString.Runs(v187, v542, type metadata accessor for AttributedString.Runs);
  v244 = v548;
  v245 = *v548;
  v246 = *v239;
  if (*v548 == *v239)
  {
    result = static RangeSet.== infix(_:_:)();
    if (result)
    {
LABEL_76:
      v261 = 1;
      goto LABEL_85;
    }
  }

  v247 = v244[1];
  v248 = v244[9];
  v249 = v244[12];
  v250 = v244[15];
  v251 = v244[23];
  v252 = v244[26];
  v253 = v552;
  if (*(v244 + *(v552 + 28)) == 1)
  {
    v242 = 0;
    v321 = *(v244 + 112);
    v322 = v244;
    v323 = v244[13];
    v521 = v251 >> 10;
    v324 = v322[8];
    v536 = v322[7];
    v325 = v322[5];
    v537 = v322[6];
    v538 = v247;
    v523 = v248 >> 10;
    v522 = v546 + 8;
    v326 = v322[3];
    v561 = v322[4];
    v327 = v247;
    v328 = v248;
    v329 = v249;
    v243 = v252;
    result = v250;
    v563 = v326;
    v330 = v322[2];
    v547 = v245;
    v551 = v246;
    v539 = v249;
    v540 = v248;
    while (1)
    {
      LOBYTE(v613[0]) = v321;
      if (v327 >= v250 && (v250 < v327 || v252 == 2 || v329 != 2 && v328 >> 10 >= v521))
      {
        goto LABEL_305;
      }

      if (v327 < v247)
      {
        goto LABEL_318;
      }

      v331 = v247 < v327 || v249 == 2;
      v332 = v331;
      v333 = v561;
      if (!v331)
      {
        if (v329 == 2)
        {
          goto LABEL_355;
        }

        if (v523 > v328 >> 10)
        {
          goto LABEL_331;
        }
      }

      if (v327 >= result)
      {
        if (result < v327)
        {
          goto LABEL_332;
        }

        if (v243 == 2)
        {
          goto LABEL_356;
        }

        if (v329 == 2)
        {
          if (!v332)
          {
            goto LABEL_351;
          }

          goto LABEL_128;
        }

        if (v328 >> 10 >= v251 >> 10)
        {
          goto LABEL_343;
        }
      }

      if ((v332 & 1) == 0)
      {
        if (v329 == 2)
        {
          goto LABEL_351;
        }

        if (v523 > v328 >> 10)
        {
          goto LABEL_337;
        }
      }

LABEL_128:
      if (result < v327)
      {
        goto LABEL_319;
      }

      if (v327 >= result && v329 != 2)
      {
        if (v243 == 2)
        {
          goto LABEL_357;
        }

        if (v251 >> 10 < v328 >> 10)
        {
          goto LABEL_333;
        }
      }

      if (v561 == 1 || v330 != *(v245 + 96))
      {
        goto LABEL_349;
      }

      v559 = v242;
      v560 = v324;
      v564 = v327;
      v565 = v330;
      v556 = v243;
      v557 = v251;
      v545 = result;
      v543 = v328;
      v541 = v329;
      v530 = v325;
      v531 = (v325 >> 11);
      if (v324 == 2)
      {
        v334 = *(v245 + 72);
        if (v334)
        {
          v335 = *(v245 + 80);
          v336 = *(v245 + 88);
          swift_unknownObjectRetain();
          v544 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v565, v563, v333, v334, v335, v336);
          swift_unknownObjectRelease();
        }

        else
        {
          v544 = 0;
        }

        v340 = *(v245 + 24);
        v341 = *(v245 + 56);
        v633 = *(v245 + 40);
        v634 = v341;
        v342 = *(v245 + 40);
        v629 = *(v245 + 24);
        v630 = v342;
        v631 = *(v245 + 56);
        v632 = v340;
        BigString.startIndex.getter();
        v535 = v343;
        v529 = v344;
        v703[0] = v632;
        v703[1] = v633;
        v704 = v634;
        outlined init with copy of Rope<BigString._Chunk>._Node?(v703, &v583);
        v345 = v544;
        v535 = BigString.UTF8View.index(_:offsetBy:)();
        result = outlined destroy of BigString(&v632);
        v339 = v345;
      }

      else
      {
        v337 = *(v245 + 40);
        v338 = v325 >> 11;
        v626 = *(v245 + 24);
        v627 = v337;
        v628 = *(v245 + 56);
        swift_unknownObjectRetain();
        v333 = v561;
        v535 = BigString.UTF8View.index(roundingDown:)();
        result = swift_unknownObjectRelease();
        v339 = v338;
      }

      v346 = *(v245 + 72);
      v347 = *(v245 + 96);
      v583 = v565;
      v584 = v563;
      v585 = v333;
      if (__OFADD__(v564, 1))
      {
        goto LABEL_321;
      }

      if (v565 != v347)
      {
        goto LABEL_322;
      }

      ++v564;
      if (v333)
      {
        v348 = *(v333 + 24 * ((v563 >> ((4 * *(v333 + 18) + 8) & 0x3C)) & 0xF) + 24);
        v544 = v339 + v348;
        if (__OFADD__(v339, v348))
        {
          goto LABEL_326;
        }

        if (!v346)
        {
          goto LABEL_320;
        }

        result = swift_unknownObjectRetain();
        v349 = v563;
      }

      else
      {
        v350 = v563;
        v544 = v339;
        swift_unknownObjectRetain();
        v351 = specialized Rope._Node.subscript.getter(v350, v346);
        v529 = v352;

        v353 = __OFADD__(v544, v351);
        v544 += v351;
        if (v353)
        {
          goto LABEL_338;
        }

        v349 = v563;
        if (!v346)
        {
          goto LABEL_320;
        }
      }

      if (v349 >= (((-15 << ((4 * *(v346 + 18) + 8) & 0x3C)) - 1) & *(v346 + 18) | (*(v346 + 16) << ((4 * *(v346 + 18) + 8) & 0x3C))))
      {
        goto LABEL_320;
      }

      if (v333 && (v354 = v333, v355 = (4 * *(v333 + 18) + 8) & 0x3C, v356 = ((v349 >> v355) & 0xF) + 1, v356 < *(v354 + 16)))
      {
        v357 = v349;
        swift_unknownObjectRelease();
        v358 = (v356 << v355) | ((-15 << v355) - 1) & v357;
      }

      else if (specialized Rope._Node.formSuccessor(of:)(&v583, v346))
      {
        swift_unknownObjectRelease();
        v358 = v584;
      }

      else
      {
        v359 = *(v346 + 18);
        v360 = *(v346 + 16);
        swift_unknownObjectRelease();
        v358 = ((-15 << ((4 * v359 + 8) & 0x3C)) - 1) & v359 | (v360 << ((4 * v359 + 8) & 0x3C));
        v583 = v565;
        v584 = v358;
        v585 = 0;
      }

      v239 = v542;
      v361 = v554;
      v362 = v560;
      v563 = v358;
      v565 = v583;
      v561 = v585;
      if (v613[0])
      {
        v549(v526, v548 + *(v552 + 24), v562);
        if (v541 == 2)
        {
          v363 = v535;
        }

        else
        {
          v363 = v543;
        }

        v364 = v553;
        RangeSet.ranges.getter();
        v365 = v567;
        v366 = RangeSet.Ranges.count.getter();
        v367 = v361;
        v368 = v366;
        result = (v367)(v364, v365);
        if (v368 < 1)
        {
          goto LABEL_307;
        }

        v369 = 0;
        v370 = v363 >> 10;
        while (1)
        {
          while (1)
          {
            if (__OFADD__(v369, v368))
            {
              goto LABEL_309;
            }

            v371 = (v369 + v368) / 2;
            v372 = v553;
            RangeSet.ranges.getter();
            v373 = v567;
            RangeSet.Ranges.subscript.getter();
            result = (v554)(v372, v373);
            if (v370 >= v583 >> 10)
            {
              break;
            }

            v368 = (v369 + v368) / 2;
            if (v369 >= v371)
            {
              goto LABEL_307;
            }
          }

          v323 = (v369 + v368) / 2;
          v374 = *(&v586 + 1);
          if (v370 < *(&v586 + 1) >> 10)
          {
            break;
          }

          v369 = v371 + 1;
          if (v371 + 1 >= v368)
          {
            goto LABEL_307;
          }
        }

        result = (v558)(v526, v562);
        v239 = v542;
        v362 = v560;
        v361 = v554;
      }

      else
      {
        v375 = v553;
        RangeSet.ranges.getter();
        v376 = v567;
        RangeSet.Ranges.subscript.getter();
        result = (v361)(v375, v376);
        v374 = *(&v586 + 1);
      }

      if (v544 >= (v374 >> 11))
      {
        v353 = __OFADD__(v323++, 1);
        if (v353)
        {
          goto LABEL_334;
        }

        v386 = v548;
        v565 = *(v552 + 24);
        v387 = v553;
        RangeSet.ranges.getter();
        v388 = v567;
        v389 = RangeSet.Ranges.count.getter();
        v361(v387, v388);
        if (v323 == v389)
        {
          v327 = v386[15];
          v565 = v386[16];
          v390 = v386[18];
          v563 = v386[17];
          v561 = v390;
          v325 = v386[19];
          v391 = v386[20];
          v324 = v386[22];
          v536 = v386[21];
          v537 = v391;
          v328 = v386[23];
          v329 = v386[26];
          v323 = v386[27];
          v251 = v328;
          v243 = v329;
          result = v327;
          v321 = *(v386 + 224);
          v246 = v551;
          v253 = v552;
          v245 = v547;
          v249 = v539;
          v248 = v540;
          v247 = v538;
          v392 = v559;
        }

        else
        {
          RangeSet.ranges.getter();
          RangeSet.Ranges.subscript.getter();
          v361(v387, v388);
          v245 = v547;
          result = v547[9];
          v397 = v547[11];
          v398 = v583 >> 11;
          if (result)
          {
            v399 = v547[11];
          }

          else
          {
            v399 = 0;
          }

          if (v399 < v398)
          {
            goto LABEL_345;
          }

          v565 = v547[12];
          v543 = v583;
          v544 = v585;
          v541 = v586;
          v560 = v584;
          if (result)
          {
            v536 = v547[10];
            v537 = v397;
            v400 = (result + 16);
            if (v398 < v397 && *(result + 16))
            {
              v401 = *(result + 18);
              result = swift_unknownObjectRetain_n();
              v402 = v401;
              v535 = result;
              if (v401)
              {
                v564 = v401;
                v403 = result;
                do
                {
                  v404 = *v400;
                  if (*v400)
                  {
                    v406 = 0;
                    v407 = (v403 + 40);
                    while (1)
                    {
                      v408 = *v407;
                      v407 += 3;
                      v409 = v398 - v408;
                      if (__OFSUB__(v398, v408))
                      {
                        goto LABEL_310;
                      }

                      if (__OFADD__(v409, 1))
                      {
                        goto LABEL_311;
                      }

                      if (v409 + 1 < 1)
                      {
                        break;
                      }

                      ++v406;
                      v398 = v409;
                      if (v404 == v406)
                      {
                        goto LABEL_198;
                      }
                    }

                    v404 = v406;
                  }

                  else
                  {
                    v409 = v398;
LABEL_198:
                    if (v409)
                    {
                      goto LABEL_324;
                    }

                    v398 = 0;
                  }

                  v564 = (v404 << ((4 * v402 + 8) & 0x3C)) | ((-15 << ((4 * v402 + 8) & 0x3C)) - 1) & v564;
                  v405 = *(v403 + 24 + 24 * v404);
                  swift_unknownObjectRetain();
                  result = swift_unknownObjectRelease();
                  v400 = (v405 + 16);
                  v402 = *(v405 + 18);
                  v403 = v405;
                }

                while (v402);
                v415 = v405;
                v564 &= 0xFFFFFFFFFFFFF0FFLL;
              }

              else
              {
                v564 = 0;
                v415 = result;
              }

              result = specialized Rope._UnsafeHandle.findSlot<A>(at:in:preferEnd:)(v398, 0, v400, (v415 + 24));
              if (result < 0)
              {
                goto LABEL_347;
              }

              v417 = result;
              v410 = v416;
              swift_unknownObjectRelease();
              v413 = v564 | (v417 << 8);
              v414 = v535;
            }

            else
            {
              v411 = ((-15 << ((4 * *(result + 18) + 8) & 0x3C)) - 1) & *(result + 18) | (*(result + 16) << ((4 * *(result + 18) + 8) & 0x3C));
              v412 = swift_unknownObjectRetain();
              v413 = v411;
              v410 = 0;
              v414 = v412;
              v415 = 0;
            }

            v563 = v413;
            v561 = v415;
            v564 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v565, v413, v415, v414, v536);
            result = swift_unknownObjectRelease();
          }

          else
          {
            v410 = 0;
            v561 = 0;
            v563 = 0;
            v564 = 0;
          }

          v418 = *(v245 + 24);
          v419 = *(v245 + 40);
          v623 = v418;
          v624 = v419;
          v625 = *(v245 + 56);
          if (__OFSUB__(0, v410))
          {
            goto LABEL_346;
          }

          v535 = v418;
          swift_unknownObjectRetain();
          v420 = v543;
          v421 = v541;
          v422 = BigString.UTF8View.index(_:offsetBy:)();
          v536 = v424;
          v537 = v423;
          v324 = v425;
          swift_unknownObjectRelease();
          v325 = v422;
          v329 = v421;
          v328 = v420;
          v321 = 0;
          v246 = v551;
          v253 = v552;
          v249 = v539;
          v248 = v540;
          v247 = v538;
          v243 = v556;
          v251 = v557;
          v392 = v559;
          result = v545;
          v327 = v564;
        }
      }

      else
      {
        if (v362 == 2)
        {
          v245 = v547;
          v377 = *(v547 + 3);
          v378 = *(v547 + 7);
          v621 = *(v547 + 5);
          v622 = v378;
          v379 = *(v547 + 5);
          v617 = *(v547 + 3);
          v618 = v379;
          v619 = *(v547 + 7);
          v620 = v377;
          BigString.startIndex.getter();
          v560 = v380;
          v543 = v381;
          v705[0] = v620;
          v705[1] = v621;
          v706 = v622;
          outlined init with copy of Rope<BigString._Chunk>._Node?(v705, &v583);
          v382 = BigString.UTF8View.index(_:offsetBy:)();
          v536 = v384;
          v537 = v383;
          v324 = v385;
          outlined destroy of BigString(&v620);
        }

        else
        {
          v245 = v547;
          v393 = *(v547 + 5);
          v614 = *(v547 + 3);
          v615 = v393;
          v616 = *(v547 + 7);
          if (__OFSUB__(v544, v531))
          {
            goto LABEL_344;
          }

          swift_unknownObjectRetain();
          v382 = BigString.UTF8View.index(_:offsetBy:)();
          v536 = v395;
          v537 = v394;
          v324 = v396;
          swift_unknownObjectRelease();
        }

        v321 = 0;
        v328 = v382;
        v329 = v324;
        v246 = v551;
        v253 = v552;
        v249 = v539;
        v248 = v540;
        v247 = v538;
        v243 = v556;
        v251 = v557;
        v392 = v559;
        result = v545;
        v327 = v564;
        v325 = v382;
      }

      v353 = __OFADD__(v392, 1);
      v242 = v392 + 1;
      if (v353)
      {
        goto LABEL_323;
      }

      v330 = v565;
    }
  }

  v254 = v250 - v247;
  if (__OFSUB__(v250, v247))
  {
    __break(1u);
  }

  else
  {
    v255 = v244[22];
    if (v252 == 2)
    {
      v256 = v255 != 2;
    }

    else
    {
      v256 = v255 == 2 || (v251 ^ v244[19]) > 0x3FF;
    }

    v242 = v254 + v256;
    if (!__OFADD__(v254, v256))
    {
      v243 = v244[26];
      result = v244[15];
      goto LABEL_62;
    }
  }

  __break(1u);
  while (2)
  {
    v253 = 0;
    v426 = *(v239 + 112);
    v427 = *(v239 + 96);
    v565 = *(v239 + 104);
    v428 = *(v239 + 64);
    v429 = *(v239 + 72);
    v531 = *(v239 + 56);
    v430 = *(v239 + 40);
    v535 = *(v239 + 48);
    v516 = v185 >> 10;
    v518 = v429 >> 10;
    v519 = v189;
    v517 = v546 + 8;
    v431 = v252;
    v520 = v241;
    v521 = v427;
    v432 = v427;
    v523 = v241;
    v433 = v189;
    v434 = *(v239 + 32);
    v564 = *(v239 + 24);
    v435 = *(v239 + 16);
    v556 = v243;
    v557 = v251;
    v559 = v242;
    v545 = result;
    v547 = v245;
    v551 = v246;
    v539 = v249;
    v540 = v248;
    v538 = v247;
    while (1)
    {
      LOBYTE(v613[0]) = v426;
      if (v431 >= v189 && (v189 < v431 || v241 == 2 || v432 != 2 && v429 >> 10 >= v516))
      {
        break;
      }

      if (v431 < v252)
      {
        goto LABEL_312;
      }

      v436 = v252 < v431 || v521 == 2;
      v437 = v436;
      if (!v436)
      {
        if (v432 == 2)
        {
          goto LABEL_352;
        }

        if (v518 > v429 >> 10)
        {
          goto LABEL_327;
        }
      }

      if (v431 >= v433)
      {
        if (v433 < v431)
        {
          goto LABEL_328;
        }

        if (v523 == 2)
        {
          goto LABEL_353;
        }

        if (v432 == 2)
        {
          if (!v437)
          {
            goto LABEL_350;
          }

          goto LABEL_239;
        }

        if (v429 >> 10 >= v185 >> 10)
        {
          goto LABEL_339;
        }
      }

      if ((v437 & 1) == 0)
      {
        if (v432 == 2)
        {
          goto LABEL_350;
        }

        if (v518 > v429 >> 10)
        {
          goto LABEL_335;
        }
      }

LABEL_239:
      if (v433 < v431)
      {
        goto LABEL_313;
      }

      if (v431 >= v433 && v432 != 2)
      {
        if (v523 == 2)
        {
          goto LABEL_354;
        }

        if (v185 >> 10 < v429 >> 10)
        {
          goto LABEL_329;
        }
      }

      if (v434 == 1 || v435 != *(v246 + 12))
      {
        goto LABEL_348;
      }

      v560 = v431;
      v561 = v435;
      v563 = v434;
      v536 = v253;
      v537 = v428;
      v529 = v433;
      v530 = (v430 >> 11);
      v522 = v430;
      v546 = v429;
      v541 = v432;
      if (v428 == 2)
      {
        v438 = v246;
        v439 = *(v246 + 9);
        if (v439)
        {
          v440 = *(v438 + 10);
          v441 = *(v438 + 11);
          swift_unknownObjectRetain();
          v442 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v561, v564, v563, v439, v440, v441);
          swift_unknownObjectRelease();
        }

        else
        {
          v442 = 0;
        }

        v443 = *(v438 + 24);
        v654 = *(v438 + 40);
        v655 = *(v438 + 56);
        v653 = v443;
        v650 = *(v438 + 24);
        v651 = *(v438 + 40);
        v652 = *(v438 + 56);
        BigString.startIndex.getter();
        v543 = v445;
        v544 = v444;
        v526 = v446;
        v699[0] = v653;
        v699[1] = v654;
        v700 = v655;
        outlined init with copy of Rope<BigString._Chunk>._Node?(v699, &v583);
        v543 = v442;
        v526 = BigString.UTF8View.index(_:offsetBy:)();
        result = outlined destroy of BigString(&v653);
      }

      else
      {
        v647 = *(v246 + 24);
        v648 = *(v246 + 40);
        v649 = *(v246 + 56);
        v544 = v647;
        swift_unknownObjectRetain();
        v438 = v246;
        v526 = BigString.UTF8View.index(roundingDown:)();
        result = swift_unknownObjectRelease();
        v543 = v530;
      }

      v447 = *(v438 + 9);
      v544 = *(v438 + 10);
      v448 = *(v438 + 12);
      v583 = v561;
      v584 = v564;
      v585 = v563;
      if (__OFADD__(v560, 1))
      {
        goto LABEL_315;
      }

      if (v561 != v448)
      {
        goto LABEL_316;
      }

      ++v560;
      if (v563)
      {
        v449 = *(v563 + 24 * ((v564 >> ((4 * *(v563 + 18) + 8) & 0x3C)) & 0xF) + 24);
        v353 = __OFADD__(v543, v449);
        v543 += v449;
        if (v353)
        {
          goto LABEL_325;
        }

        if (!v447)
        {
          goto LABEL_314;
        }

        v450 = v245;
        result = swift_unknownObjectRetain();
        v451 = v563;
      }

      else
      {
        swift_unknownObjectRetain();
        v452 = specialized Rope._Node.subscript.getter(v564, v447);

        v353 = __OFADD__(v543, v452);
        v543 += v452;
        if (v353)
        {
          goto LABEL_336;
        }

        v450 = v245;
        v451 = v563;
        if (!v447)
        {
          goto LABEL_314;
        }
      }

      if (v564 >= (((-15 << ((4 * *(v447 + 18) + 8) & 0x3C)) - 1) & *(v447 + 18) | (*(v447 + 16) << ((4 * *(v447 + 18) + 8) & 0x3C))))
      {
        goto LABEL_314;
      }

      if (v451)
      {
        v453 = (4 * *(v451 + 18) + 8) & 0x3C;
        v454 = ((v564 >> v453) & 0xF) + 1;
        if (v454 < *(v451 + 16))
        {
          swift_unknownObjectRelease();
          v455 = (v454 << v453) | ((-15 << v453) - 1) & v564;
LABEL_266:
          v564 = v455;
          goto LABEL_268;
        }
      }

      if (specialized Rope._Node.formSuccessor(of:)(&v583, v447))
      {
        swift_unknownObjectRelease();
        v455 = v584;
        goto LABEL_266;
      }

      v456 = *(v447 + 18);
      v457 = *(v447 + 16);
      swift_unknownObjectRelease();
      v583 = v561;
      v564 = ((-15 << ((4 * v456 + 8) & 0x3C)) - 1) & v456 | (v457 << ((4 * v456 + 8) & 0x3C));
      v584 = v564;
      v585 = 0;
LABEL_268:
      v239 = v542;
      v458 = v554;
      v245 = v450;
      v561 = v583;
      v563 = v585;
      v459 = v567;
      if (v613[0])
      {
        v549(v528, (v542 + *(v552 + 24)), v562);
        if (v541 == 2)
        {
          v460 = v526;
        }

        else
        {
          v460 = v546;
        }

        v461 = v553;
        RangeSet.ranges.getter();
        v462 = RangeSet.Ranges.count.getter();
        result = (v458)(v461, v459);
        if (v462 < 1)
        {
LABEL_306:
          __break(1u);
LABEL_307:
          __break(1u);
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
LABEL_314:
          __break(1u);
LABEL_315:
          __break(1u);
LABEL_316:
          __break(1u);
LABEL_317:
          __break(1u);
LABEL_318:
          __break(1u);
LABEL_319:
          __break(1u);
LABEL_320:
          __break(1u);
LABEL_321:
          __break(1u);
LABEL_322:
          __break(1u);
LABEL_323:
          __break(1u);
LABEL_324:
          __break(1u);
LABEL_325:
          __break(1u);
LABEL_326:
          __break(1u);
LABEL_327:
          __break(1u);
LABEL_328:
          __break(1u);
LABEL_329:
          __break(1u);
LABEL_330:
          __break(1u);
LABEL_331:
          __break(1u);
LABEL_332:
          __break(1u);
LABEL_333:
          __break(1u);
LABEL_334:
          __break(1u);
LABEL_335:
          __break(1u);
LABEL_336:
          __break(1u);
LABEL_337:
          __break(1u);
LABEL_338:
          __break(1u);
LABEL_339:
          __break(1u);
LABEL_340:
          __break(1u);
LABEL_341:
          __break(1u);
LABEL_342:
          __break(1u);
LABEL_343:
          __break(1u);
LABEL_344:
          __break(1u);
LABEL_345:
          __break(1u);
LABEL_346:
          __break(1u);
LABEL_347:
          __break(1u);
LABEL_348:
          __break(1u);
LABEL_349:
          __break(1u);
LABEL_350:
          __break(1u);
LABEL_351:
          __break(1u);
LABEL_352:
          __break(1u);
LABEL_353:
          __break(1u);
LABEL_354:
          __break(1u);
LABEL_355:
          __break(1u);
LABEL_356:
          __break(1u);
LABEL_357:
          __break(1u);
          return result;
        }

        v463 = 0;
        v464 = v460 >> 10;
        while (1)
        {
          while (1)
          {
            if (__OFADD__(v463, v462))
            {
              goto LABEL_308;
            }

            v465 = (v463 + v462) / 2;
            v466 = v553;
            RangeSet.ranges.getter();
            v467 = v567;
            RangeSet.Ranges.subscript.getter();
            result = (v554)(v466, v467);
            if (v464 >= v583 >> 10)
            {
              break;
            }

            v462 = (v463 + v462) / 2;
            if (v463 >= v465)
            {
              goto LABEL_306;
            }
          }

          v565 = (v463 + v462) / 2;
          v468 = *(&v586 + 1);
          if (v464 < *(&v586 + 1) >> 10)
          {
            break;
          }

          v463 = v565 + 1;
          if ((v565 + 1) >= v462)
          {
            goto LABEL_306;
          }
        }

        result = (v558)(v528, v562);
        v239 = v542;
        v458 = v554;
        v245 = v547;
        v189 = v519;
      }

      else
      {
        v469 = v553;
        RangeSet.ranges.getter();
        RangeSet.Ranges.subscript.getter();
        result = (v458)(v469, v459);
        v468 = *(&v586 + 1);
      }

      if (v543 >= (v468 >> 11))
      {
        v480 = v565 + 1;
        if (__OFADD__(v565, 1))
        {
          goto LABEL_330;
        }

        v565 = *(v552 + 24);
        v481 = v553;
        RangeSet.ranges.getter();
        v482 = v567;
        v483 = RangeSet.Ranges.count.getter();
        v458(v481, v482);
        if (v480 == v483)
        {
          v431 = *(v239 + 120);
          v435 = *(v239 + 128);
          v484 = *(v239 + 136);
          v434 = *(v239 + 144);
          v430 = *(v239 + 152);
          v535 = *(v239 + 160);
          v428 = *(v239 + 176);
          v531 = *(v239 + 168);
          v429 = *(v239 + 184);
          v432 = *(v239 + 208);
          v485 = *(v239 + 216);
          v564 = v484;
          v565 = v485;
          v185 = v429;
          v523 = v432;
          v433 = v431;
          v426 = *(v239 + 224);
          v245 = v547;
          v244 = v548;
          v249 = v539;
          v248 = v540;
          v247 = v538;
          v243 = v556;
          v251 = v557;
          v242 = v559;
          result = v545;
          v189 = v519;
          v241 = v520;
          v486 = v536;
        }

        else
        {
          RangeSet.ranges.getter();
          v565 = v480;
          RangeSet.Ranges.subscript.getter();
          v458(v481, v482);
          v492 = v585;
          v541 = v586;
          v493 = *(v551 + 9);
          v494 = *(v551 + 10);
          v496 = *(v551 + 11);
          v495 = *(v551 + 12);
          v546 = v583;
          v564 = v583 >> 11;
          swift_unknownObjectRetain();
          result = specialized Rope.find<A>(at:in:preferEnd:)(v564, 0, v493, v494, v496, v495);
          v564 = v499;
          if (result != v495)
          {
            goto LABEL_341;
          }

          v544 = v492;
          v561 = v495;
          v563 = v497;
          if (v493)
          {
            v500 = v498;
            v560 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v495, v564, v497, v493, v494);
            result = swift_unknownObjectRelease();
            v498 = v500;
          }

          else
          {
            v560 = 0;
          }

          v245 = v547;
          v248 = v540;
          v189 = v519;
          v501 = *(v551 + 24);
          v502 = *(v551 + 40);
          v644 = v501;
          v645 = v502;
          v646 = *(v551 + 56);
          if (__OFSUB__(0, v498))
          {
            goto LABEL_342;
          }

          v543 = v501;
          swift_unknownObjectRetain();
          v503 = v541;
          v504 = BigString.UTF8View.index(_:offsetBy:)();
          v535 = v505;
          v531 = v506;
          v508 = v507;
          swift_unknownObjectRelease();
          v432 = v503;
          result = v545;
          v429 = v546;
          v428 = v508;
          v430 = v504;
          v426 = 0;
          v244 = v548;
          v247 = v538;
          v249 = v539;
          v243 = v556;
          v251 = v557;
          v242 = v559;
          v431 = v560;
          v241 = v520;
          v486 = v536;
          v433 = v529;
          v435 = v561;
          v434 = v563;
        }
      }

      else
      {
        if (v537 == 2)
        {
          v470 = *(v551 + 24);
          v471 = *(v551 + 56);
          v642 = *(v551 + 40);
          v643 = v471;
          v472 = *(v551 + 40);
          v638 = *(v551 + 24);
          v639 = v472;
          v640 = *(v551 + 56);
          v641 = v470;
          BigString.startIndex.getter();
          v546 = v473;
          v544 = v474;
          v701[0] = v641;
          v701[1] = v642;
          v702 = v643;
          outlined init with copy of Rope<BigString._Chunk>._Node?(v701, &v583);
          v475 = BigString.UTF8View.index(_:offsetBy:)();
          v535 = v476;
          v531 = v477;
          v479 = v478;
          outlined destroy of BigString(&v641);
          v248 = v540;
        }

        else
        {
          v487 = *(v551 + 24);
          v488 = *(v551 + 40);
          v635 = v487;
          v636 = v488;
          v637 = *(v551 + 56);
          v248 = v540;
          if (__OFSUB__(v543, v530))
          {
            goto LABEL_340;
          }

          v546 = v487;
          swift_unknownObjectRetain();
          v475 = BigString.UTF8View.index(_:offsetBy:)();
          v535 = v489;
          v531 = v490;
          v479 = v491;
          swift_unknownObjectRelease();
        }

        v426 = 0;
        v429 = v475;
        v432 = v479;
        v244 = v548;
        v247 = v538;
        v249 = v539;
        v243 = v556;
        v251 = v557;
        result = v545;
        v241 = v520;
        v486 = v536;
        v433 = v529;
        v430 = v475;
        v242 = v559;
        v431 = v560;
        v435 = v561;
        v434 = v563;
        v428 = v479;
      }

      v353 = __OFADD__(v486, 1);
      v253 = v486 + 1;
      if (v353)
      {
        goto LABEL_317;
      }

      v246 = v551;
    }

LABEL_301:
    v260 = v534;
    if (v242 != v253)
    {
      goto LABEL_84;
    }

LABEL_70:
    if (v247 == result)
    {
      if (v249 == 2)
      {
        if (v243 == 2)
        {
          goto LABEL_76;
        }
      }

      else if (v243 != 2 && (v251 ^ v248) < 0x400)
      {
        goto LABEL_76;
      }
    }

    v551 = v246;
    if ((AttributedString.Runs._isPartial.getter() & 1) == 0 && (AttributedString.Runs._isPartial.getter() & 1) == 0)
    {
      v673[12] = *(v245 + 24);
      v673[13] = *(v245 + 40);
      v673[14] = *(v245 + 56);
      v262 = BigString.count.getter();
      v673[9] = *(v551 + 24);
      v673[10] = *(v551 + 40);
      v673[11] = *(v551 + 56);
      if (v262 != BigString.count.getter())
      {
        goto LABEL_84;
      }
    }

    v547 = v245;
    RangeSet.ranges.getter();
    v263 = v567;
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    if (v613[0] == v583)
    {
      v554(v260, v263);
      goto LABEL_84;
    }

    v264 = dispatch thunk of Collection.subscript.read();
    v266 = v265[1];
    v565 = *v265;
    v267 = v265[3];
    v558 = v265[2];
    v560 = v266;
    v561 = v267;
    v264(&v583, 0);
    v554(v260, v263);
    v268 = v527;
    RangeSet.ranges.getter();
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    if (v611 == v583)
    {
      v554(v268, v263);
      goto LABEL_84;
    }

    v269 = dispatch thunk of Collection.subscript.read();
    v271 = v270[1];
    v559 = *v270;
    v566 = v271;
    v272 = v270[2];
    v563 = v270[3];
    v564 = v272;
    v269(&v583, 0);
    v554(v268, v263);
    v273 = v524;
    _s10Foundation16AttributedStringV4RunsVWOcTm_0(v244, v524, type metadata accessor for AttributedString.Runs);
    v274 = v533;
    _s10Foundation16AttributedStringV4RunsVWOcTm_0(v273, v533, type metadata accessor for AttributedString.Runs);
    v275 = v525;
    v276 = (v274 + *(v525 + 36));
    v277 = *(v273 + 56);
    v278 = *(v273 + 88);
    v603 = *(v273 + 72);
    v604[0] = v278;
    *(v604 + 10) = *(v273 + 98);
    v279 = *(v273 + 24);
    v599 = *(v273 + 8);
    v600 = v279;
    v601 = *(v273 + 40);
    v602 = v277;
    _s10Foundation16AttributedStringV4RunsVWOhTm_1(v273, type metadata accessor for AttributedString.Runs);
    v280 = v604[0];
    v276[4] = v603;
    v276[5] = v280;
    *(v276 + 90) = *(v604 + 10);
    v281 = v600;
    *v276 = v599;
    v276[1] = v281;
    v282 = v602;
    v276[2] = v601;
    v276[3] = v282;
    _s10Foundation16AttributedStringV4RunsVWOcTm_0(v239, v273, type metadata accessor for AttributedString.Runs);
    v283 = v532;
    _s10Foundation16AttributedStringV4RunsVWOcTm_0(v273, v532, type metadata accessor for AttributedString.Runs);
    v284 = (v283 + *(v275 + 36));
    v285 = *(v273 + 56);
    v286 = *(v273 + 88);
    v609 = *(v273 + 72);
    v610[0] = v286;
    *(v610 + 10) = *(v273 + 98);
    v287 = *(v273 + 24);
    v605 = *(v273 + 8);
    v606 = v287;
    v607 = *(v273 + 40);
    v608 = v285;
    _s10Foundation16AttributedStringV4RunsVWOhTm_1(v273, type metadata accessor for AttributedString.Runs);
    v288 = v610[0];
    v284[4] = v609;
    v284[5] = v288;
    *(v284 + 90) = *(v610 + 10);
    v289 = v606;
    *v284 = v605;
    v284[1] = v289;
    v290 = v608;
    v284[2] = v607;
    v284[3] = v290;
    v291 = v558;
    v292 = v561;
    while (2)
    {
      specialized IndexingIterator.next()(v577);
      v293 = v577[0];
      v294 = v577[1];
      v295 = v577[2];
      v296 = v580;
      specialized IndexingIterator.next()(&v569);
      v297 = v569;
      v298 = v570;
      v594 = v572;
      v595 = v573;
      v597 = v575;
      v598 = v576;
      v583 = v293;
      v584 = v294;
      v586 = v578;
      v587 = v579;
      v585 = v295;
      v588 = v296;
      v590 = v582;
      v589 = v581;
      v591 = v569;
      v592 = v570;
      v593 = v571;
      v596 = v574;
      if (!v293)
      {
        outlined destroy of TermOfAddress?(v532, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
        outlined destroy of TermOfAddress?(v533, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
        outlined destroy of TermOfAddress?(&v583, &_s10Foundation16AttributedStringV4RunsV3RunVSg_AHtMd);
        if (!v297)
        {
          v261 = 1;
          v239 = v542;
          goto LABEL_85;
        }

        goto LABEL_98;
      }

      if (!v569)
      {
        outlined destroy of TermOfAddress?(&v583, &_s10Foundation16AttributedStringV4RunsV3RunVSg_AHtMd);
        outlined destroy of TermOfAddress?(v532, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
        outlined destroy of TermOfAddress?(v533, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
LABEL_98:
        v261 = 0;
        v239 = v542;
        goto LABEL_85;
      }

      v557 = v574;
      v558 = v571;

      if ((_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10Foundation16AttributedStringV15_AttributeValueVTt1g5(v293, v297) & 1) == 0)
      {

LABEL_100:
        outlined destroy of TermOfAddress?(&v583, &_s10Foundation16AttributedStringV4RunsV3RunVSg_AHtMd);
LABEL_101:
        outlined destroy of TermOfAddress?(v532, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
        outlined destroy of TermOfAddress?(v533, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
        v261 = 0;
        v239 = v542;
        v244 = v548;
        goto LABEL_85;
      }

      v299 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v294, v298);

      if ((v299 & 1) == 0)
      {
        goto LABEL_100;
      }

      v300 = v547;
      v248 = &v599;
      v673[6] = *(v547 + 3);
      v673[7] = *(v547 + 5);
      v673[8] = *(v547 + 7);
      swift_unknownObjectRetain();
      v301 = v292;
      v239 = v560;
      v561 = v301;
      v567 = BigString.UTF8View.index(_:offsetBy:)();
      v555 = v303;
      v556 = v302;
      v562 = v304;
      swift_unknownObjectRelease();
      v305 = v551;
      v673[3] = *(v551 + 24);
      v673[4] = *(v551 + 40);
      v673[5] = *(v551 + 56);
      swift_unknownObjectRetain();
      v306 = v559;
      v307 = BigString.UTF8View.index(_:offsetBy:)();
      v557 = v308;
      v558 = v307;
      v246 = v309;
      v554 = v310;
      result = swift_unknownObjectRelease();
      v245 = v565;
      v673[0] = *(v300 + 24);
      v673[1] = *(v300 + 40);
      v673[2] = *(v300 + 56);
      if (v567 >> 10 >= v565 >> 10)
      {
        v553 = v246;
        v665 = v565;
        v666 = v239;
        v667 = v291;
        v668 = v561;
        v669 = v567;
        v311 = v555;
        v239 = v556;
        v670 = v556;
        v671 = v555;
        v672 = v562;
        v312 = *(v300 + 24);
        v696 = *(v300 + 56);
        v695[1] = *(v300 + 40);
        v695[0] = v312;
        outlined init with copy of Rope<BigString._Chunk>._Node?(v695, v568);
        v246 = v673;
        BigString.subscript.getter();
        result = outlined destroy of BigString(v673);
        v313 = *(v305 + 24);
        v664[1] = *(v305 + 40);
        v664[2] = *(v305 + 56);
        v664[0] = v313;
        v245 = v558;
        if (v558 >> 10 < v306 >> 10)
        {
          goto LABEL_304;
        }

        v314 = v311;
        v315 = v239;
        v656 = v306;
        v657 = v566;
        v658 = v564;
        v659 = v563;
        v660 = v558;
        v316 = v557;
        v661 = v557;
        v317 = v553;
        v318 = v554;
        v662 = v553;
        v663 = v554;
        v319 = *(v305 + 24);
        v698 = *(v305 + 7);
        v697[1] = *(v305 + 40);
        v697[0] = v319;
        outlined init with copy of Rope<BigString._Chunk>._Node?(v697, v568);
        BigString.subscript.getter();
        outlined destroy of BigString(v664);
        v320 = MEMORY[0x1865CA260](v612, v613);
        outlined destroy of BigSubstring(v612);
        outlined destroy of TermOfAddress?(&v583, &_s10Foundation16AttributedStringV4RunsV3RunVSg_AHtMd);
        outlined destroy of BigSubstring(v613);
        if ((v320 & 1) == 0)
        {
          goto LABEL_101;
        }

        v559 = v245;
        v560 = v315;
        v563 = v318;
        v564 = v317;
        v565 = v567;
        v566 = v316;
        v291 = v314;
        v292 = v562;
        v244 = v548;
        continue;
      }

      break;
    }

    __break(1u);
LABEL_304:
    __break(1u);
LABEL_305:
    v244 = v548;
LABEL_62:
    v252 = *(v239 + 8);
    v189 = *(v239 + 120);
    v185 = *(v239 + 184);
    v241 = *(v239 + 208);
    if (*(v239 + *(v253 + 28)))
    {
      continue;
    }

    break;
  }

  v257 = v189 - v252;
  if (__OFSUB__(v189, v252))
  {
    __break(1u);
LABEL_300:
    __break(1u);
    goto LABEL_301;
  }

  v258 = *(v239 + 176);
  v259 = (v185 ^ *(v239 + 152)) > 0x3FF;
  if (v258 == 2)
  {
    v259 = 1;
  }

  if (v241 == 2)
  {
    v259 = v258 != 2;
  }

  v253 = v257 + v259;
  v260 = v534;
  if (__OFADD__(v257, v259))
  {
    goto LABEL_300;
  }

  if (v242 == v253)
  {
    goto LABEL_70;
  }

LABEL_84:
  v261 = 0;
LABEL_85:
  _s10Foundation16AttributedStringV4RunsVWOhTm_1(v239, type metadata accessor for AttributedString.Runs);
  _s10Foundation16AttributedStringV4RunsVWOhTm_1(v244, type metadata accessor for AttributedString.Runs);
  return v261;
}

uint64_t outlined init with take of AttributedString.Runs(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t specialized DiscontiguousAttributedSubstring.subscript.setter(uint64_t *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v126 = a1;
  v6 = *a2;
  v102 = a2;
  v7 = v6;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v121 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v123 = &v100 - v8;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  MEMORY[0x1EEE9AC00](v122);
  v119 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  *&v116 = &v100 - v11;
  v124 = *(v7 + *MEMORY[0x1E69E77B0] + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v115 = (&v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v118 = &v100 - v16;
  v17 = type metadata accessor for Optional();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v100 - v23;
  v25 = *(v18 + 16);
  v25(&v100 - v23, v126, v17, v22);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v126 = v4;
  v125 = a3;
  v117 = AssociatedTypeWitness;
  v104 = v17;
  v105 = v18;
  v103 = v24;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v120 = v25;
    v27 = *v4;
    v28 = *(*v4 + 24);
    v29 = *(*v4 + 56);
    v139 = *(*v4 + 40);
    v140 = v29;
    v138 = v28;
    v31 = v27[9];
    v30 = v27[10];
    v32 = v27[11];
    v33 = v27[12];
    type metadata accessor for AttributedString.Guts();
    v34 = swift_allocObject();
    v35 = BigString.isEmpty.getter() & 1;
    outlined init with copy of BigString(&v138, &v129);
    v36 = swift_unknownObjectRetain();
    specialized Rope._endPath.getter(v36);
    if (v31)
    {
      v37 = v32 == 0;
    }

    else
    {
      v37 = 1;
    }

    v38 = v37;
    if (v38 == v35)
    {
      if (one-time initialization token for _nextVersion == -1)
      {
LABEL_10:
        add_explicit = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
        v40 = v139;
        *(v34 + 24) = v138;
        *(v34 + 16) = add_explicit;
        *(v34 + 40) = v40;
        *(v34 + 56) = v140;
        *(v34 + 72) = v31;
        *(v34 + 80) = v30;
        *(v34 + 88) = v32;
        *(v34 + 96) = v33;
        *(v34 + 104) = MEMORY[0x1E69E7CC0];

        v4 = v126;
        *v126 = v34;
        a3 = v125;
        v17 = v104;
        v18 = v105;
        v24 = v103;
        AssociatedTypeWitness = v117;
        v25 = v120;
        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_10;
  }

LABEL_11:
  (v25)(v20, v24, v17);
  v41 = (*(v13 + 48))(v20, 1, AssociatedTypeWitness);
  v42 = v121;
  if (v41 == 1)
  {
    v43 = *(v18 + 8);
    v105 = v18 + 8;
    v115 = v43;
    v43(v20, v17);
    type metadata accessor for DiscontiguousAttributedSubstring();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
    v44 = v123;
    RangeSet.ranges.getter();
    v45 = v119;
    v46 = v127;
    (*(v42 + 16))(v119, v44, v127);
    v47 = v46;
    v48 = *(v122 + 36);
    v49 = lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
    dispatch thunk of Collection.startIndex.getter();
    (*(v42 + 8))(v44, v47);
    dispatch thunk of Collection.endIndex.getter();
    if (*&v48[v45] != *&v134[0])
    {
      v116 = xmmword_181218E20;
      v118 = v48;
      v117 = v49;
      do
      {
        v58 = dispatch thunk of Collection.subscript.read();
        v60 = v59[5];
        v123 = v59[4];
        v122 = v60;
        v61 = v59[7];
        v121 = v59[6];
        v120 = v61;
        v58(v134, 0);
        dispatch thunk of Collection.formIndex(after:)();
        v62 = *v4;
        v63 = *(*v4 + 40);
        v129 = *(*v4 + 24);
        v130 = v63;
        *v131 = *(v62 + 56);
        swift_unknownObjectRetain();
        v64 = BigString.UnicodeScalarView.index(roundingDown:)();
        swift_unknownObjectRelease();
        v65 = *(v62 + 40);
        v135 = *(v62 + 24);
        v136 = v65;
        v137 = *(v62 + 56);
        swift_unknownObjectRetain();
        v66 = v125;
        v67 = BigString.UnicodeScalarView.index(roundingDown:)();
        v68 = swift_unknownObjectRelease();
        v69 = v64 >> 11;
        v70 = v67 >> 11;
        MEMORY[0x1EEE9AC00](v68);
        v71 = v124;
        *(&v100 - 2) = v124;
        *(&v100 - 1) = v66;
        AttributedString._InternalRunsSlice.updateEach(with:)(closure #1 in AttributedString.Guts.removeAttributeValue<A>(forKey:in:)partial apply, (&v100 - 4), v62, v64 >> 11, v70);
        v72 = *(v66 + 32);
        v72(v134, v71, v66);
        if (*(&v134[0] + 1) == 1)
        {
          v45 = v119;
          v57 = v118;
        }

        else
        {
          outlined consume of AttributedString.AttributeRunBoundaries?(*&v134[0], *(&v134[0] + 1));
          v72(v134, v71, v66);
          v73 = *(&v134[0] + 1);
          if (*(&v134[0] + 1) == 1)
          {
            v74 = MEMORY[0x1E69E7CC0];
          }

          else
          {
            v75 = *&v134[0];
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOGMd);
            v74 = swift_allocObject();
            *(v74 + 16) = v116;
            *(v74 + 32) = v75;
            *(v74 + 40) = v73;
          }

          v45 = v119;
          v57 = v118;
          AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v69, v70, 0, v74);
        }

        dispatch thunk of Collection.endIndex.getter();
        v4 = v126;
      }

      while (*&v57[v45] != *&v134[0]);
    }

    v115(v103, v104);
    outlined destroy of TermOfAddress?(v45, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  }

  else
  {
    v101 = v13;
    (*(v13 + 32))(v118, v20, AssociatedTypeWitness);
    type metadata accessor for DiscontiguousAttributedSubstring();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
    v50 = v123;
    RangeSet.ranges.getter();
    v51 = v116;
    v52 = v127;
    (*(v42 + 16))(v116, v50, v127);
    v53 = v52;
    v54 = (v51 + *(v122 + 36));
    v55 = lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
    dispatch thunk of Collection.startIndex.getter();
    (*(v42 + 8))(v50, v53);
    dispatch thunk of Collection.endIndex.getter();
    if (*v54 != v129)
    {
      v112 = (v101 + 16);
      v111 = a3 + 32;
      v110 = a3 + 40;
      v109 = a3 + 48;
      v108 = (v101 + 8);
      v107 = a3 + 24;
      v106 = xmmword_181218E20;
      v114 = v54;
      v113 = v55;
      do
      {
        v76 = dispatch thunk of Collection.subscript.read();
        v119 = v77[1];
        v78 = v77[5];
        v123 = v77[4];
        v122 = v78;
        v79 = v77[7];
        v121 = v77[6];
        v120 = v79;
        v76(&v129, 0);
        dispatch thunk of Collection.formIndex(after:)();
        v80 = *v126;
        v81 = *v112;
        v82 = v115;
        v83 = v117;
        (*v112)(v115, v118, v117);
        *(&v130 + 1) = v83;
        v84 = v124;
        *v131 = swift_getAssociatedConformanceWitness();
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v129);
        v81(boxed_opaque_existential_0, v82, v83);
        (*(a3 + 32))(&v128, v84, a3);
        *&v131[8] = v128;
        v132 = (*(a3 + 40))(v84, a3) & 1;
        v86 = (*(a3 + 48))(v84, a3);
        (*v108)(v82, v83);
        v133 = v86;
        v87 = (*(a3 + 24))(v84, a3);
        v89 = v88;
        v90 = *(v80 + 40);
        v135 = *(v80 + 24);
        v136 = v90;
        v137 = *(v80 + 56);
        swift_unknownObjectRetain();
        v91 = BigString.UnicodeScalarView.index(roundingDown:)();
        swift_unknownObjectRelease();
        v92 = *(v80 + 40);
        v134[0] = *(v80 + 24);
        v134[1] = v92;
        v134[2] = *(v80 + 56);
        swift_unknownObjectRetain();
        v93 = BigString.UnicodeScalarView.index(roundingDown:)();
        v94 = swift_unknownObjectRelease();
        v95 = v91 >> 11;
        v96 = v93 >> 11;
        MEMORY[0x1EEE9AC00](v94);
        *(&v100 - 4) = v87;
        *(&v100 - 3) = v89;
        *(&v100 - 2) = &v129;
        AttributedString._InternalRunsSlice.updateEach(with:)(closure #1 in AttributedString.Guts.setAttributeValue(_:forKey:in:)partial apply, (&v100 - 6), v80, v95, v96);

        v97 = *&v131[16];
        if (*&v131[16] != 1)
        {
          v98 = *&v131[8];
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOGMd);
          v99 = swift_allocObject();
          *(v99 + 16) = v106;
          *(v99 + 32) = v98;
          *(v99 + 40) = v97;
          outlined copy of AttributedString.AttributeRunBoundaries?(v98, v97);
          AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v95, v96, 0, v99);
        }

        outlined destroy of AttributedString._AttributeValue(&v129);
        v51 = v116;
        dispatch thunk of Collection.endIndex.getter();
        a3 = v125;
      }

      while (*v114 != v129);
    }

    (*(v105 + 8))(v103, v104);
    outlined destroy of TermOfAddress?(v51, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
    (*(v101 + 8))(v118, v117);
  }
}

unint64_t lazy protocol witness table accessor for type DiscontiguousAttributedSubstring and conformance DiscontiguousAttributedSubstring()
{
  result = lazy protocol witness table cache variable for type DiscontiguousAttributedSubstring and conformance DiscontiguousAttributedSubstring;
  if (!lazy protocol witness table cache variable for type DiscontiguousAttributedSubstring and conformance DiscontiguousAttributedSubstring)
  {
    type metadata accessor for DiscontiguousAttributedSubstring();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DiscontiguousAttributedSubstring and conformance DiscontiguousAttributedSubstring);
  }

  return result;
}

void type metadata completion function for DiscontiguousAttributedSubstring()
{
  type metadata accessor for AttributedString.Guts();
  if (v0 <= 0x3F)
  {
    type metadata accessor for RangeSet<BigString.Index>();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for RangeSet<BigString.Index>()
{
  if (!lazy cache variable for type metadata for RangeSet<BigString.Index>)
  {
    lazy protocol witness table accessor for type BigString.Index and conformance BigString.Index();
    v0 = type metadata accessor for RangeSet();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for RangeSet<BigString.Index>);
    }
  }
}

uint64_t _s10Foundation14AttributeScopePAAE16scopeDescription33_4D406B8DD906487F9F362CE42830919ELLAA0cE0AELLVvgZAA01_a4PlusC0VyAA0B6ScopesO0A10AttributesVG_Ttg5()
{
  if (one-time initialization token for _loadedScopeCache != -1)
  {
LABEL_88:
    swift_once();
  }

  v0 = _loadedScopeCache;
  os_unfair_lock_lock(_loadedScopeCache + 10);
  v1 = specialized closure #1 in static AttributeScope.scopeDescription.getter(&v0[4]);
  os_unfair_lock_unlock(v0 + 10);
  if (v1)
  {
    return v1;
  }

  v2 = MEMORY[0x1E69E7CC8];
  v98 = MEMORY[0x1E69E7CC8];
  v99 = MEMORY[0x1E69E7CC8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation01_A9PlusScopeVyAA15AttributeScopesO0A10AttributesVGMd);
  v4 = Fields.endIndex.getter();
  if (!v4)
  {
    v1 = v2;
LABEL_81:
    MEMORY[0x1EEE9AC00](v4);

    os_unfair_lock_lock(v0 + 10);
    partial apply for specialized closure #2 in static AttributeScope.scopeDescription.getter(&v0[4]);
    os_unfair_lock_unlock(v0 + 10);

    return v1;
  }

  v5 = 0;
  v96 = v0;
  v97 = v3;
  while (1)
  {
    if (v5 >= Fields.endIndex.getter())
    {
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    v8 = *v3;
    v9 = static Metadata.Kind.tuple.getter();
    if (v8 > 0x7FF)
    {
      if (v9 - 2048 < 0xFFFFFFFFFFFFF801)
      {
        goto LABEL_14;
      }
    }

    else if (v9 >= 0x800)
    {
      if (!v8)
      {
LABEL_14:
        TupleMetadata.init(_:)();
        TupleMetadata.Elements.subscript.getter();
        v10 = TupleMetadata.Elements.Element.metadata.getter();
LABEL_18:
        v13 = v10;
        goto LABEL_19;
      }
    }

    else if (v8 == v9)
    {
      goto LABEL_14;
    }

    v11 = (FieldDescriptor.subscript.getter() + 4);
    v12 = *v11;
    v13 = MangledTypeReference.standardSubstitution.getter();
    if (!v13)
    {
      v10 = MEMORY[0x1865C9F00](v11 + v12, v3);
      goto LABEL_18;
    }

LABEL_19:
    v14 = swift_conformsToProtocol2();
    if (!v14 || !v13)
    {
      if (swift_conformsToProtocol2() && v13)
      {
        v29 = static AttributeScope.scopeDescription.getter(v13);
        ScopeDescription.merge(_:)(v29, v30);
      }

      goto LABEL_7;
    }

    v15 = v14;
    v16 = (*(v14 + 24))(v13, v14);
    v18 = v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v18);
    v22 = *(v98 + 16);
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      goto LABEL_84;
    }

    v25 = v20;
    if (*(v98 + 24) >= v24)
    {
      break;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v24, isUniquelyReferenced_nonNull_native);
    v26 = v98;
    v27 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v18);
    if ((v25 & 1) != (v28 & 1))
    {
      goto LABEL_91;
    }

    v21 = v27;
    if (v25)
    {
LABEL_31:

      v31 = (*(v26 + 56) + 16 * v21);
      *v31 = v13;
      v31[1] = v15;
      goto LABEL_51;
    }

LABEL_49:
    *(v26 + 8 * (v21 >> 6) + 64) |= 1 << v21;
    v50 = (*(v26 + 48) + 16 * v21);
    *v50 = v16;
    v50[1] = v18;
    v51 = (*(v26 + 56) + 16 * v21);
    *v51 = v13;
    v51[1] = v15;
    v52 = *(v26 + 16);
    v53 = __OFADD__(v52, 1);
    v54 = v52 + 1;
    if (v53)
    {
      goto LABEL_86;
    }

    *(v26 + 16) = v54;
LABEL_51:
    v98 = v26;
    v55 = swift_conformsToProtocol2();
    v0 = v96;
    v3 = v97;
    if (!v55)
    {
      goto LABEL_7;
    }

    v56 = v55;
    v57 = (*(v55 + 24))(v13, v55);
    v59 = v58;
    v60 = swift_isUniquelyReferenced_nonNull_native();
    v61 = specialized __RawDictionaryStorage.find<A>(_:)(v57, v59);
    v63 = *(v99 + 16);
    v64 = (v62 & 1) == 0;
    v53 = __OFADD__(v63, v64);
    v65 = v63 + v64;
    if (v53)
    {
      goto LABEL_85;
    }

    v66 = v62;
    if (*(v99 + 24) < v65)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v65, v60);
      v67 = v99;
      v61 = specialized __RawDictionaryStorage.find<A>(_:)(v57, v59);
      if ((v66 & 1) != (v68 & 1))
      {
        goto LABEL_91;
      }

LABEL_58:
      if ((v66 & 1) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_5;
    }

    if (v60)
    {
      v67 = v99;
      goto LABEL_58;
    }

    v93 = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation36MarkdownDecodableAttributedStringKey_pXpGMd);
    v73 = static _DictionaryStorage.copy(original:)();
    v67 = v73;
    if (*(v99 + 16))
    {
      v74 = (v73 + 64);
      v75 = (v99 + 64);
      v76 = ((1 << *(v67 + 32)) + 63) >> 6;
      if (v67 != v99 || v74 >= &v75[8 * v76])
      {
        memmove(v74, v75, 8 * v76);
      }

      v77 = 0;
      *(v67 + 16) = *(v99 + 16);
      v78 = 1 << *(v99 + 32);
      if (v78 < 64)
      {
        v79 = ~(-1 << v78);
      }

      else
      {
        v79 = -1;
      }

      v80 = v79 & *(v99 + 64);
      v81 = (v78 + 63) >> 6;
      if (v80)
      {
        do
        {
          v82 = __clz(__rbit64(v80));
          v95 = (v80 - 1) & v80;
LABEL_75:
          v85 = 16 * (v82 | (v77 << 6));
          v86 = (*(v99 + 48) + v85);
          v88 = *v86;
          v87 = v86[1];
          v89 = *(*(v99 + 56) + v85);
          v90 = (*(v67 + 48) + v85);
          *v90 = v88;
          v90[1] = v87;
          *(*(v67 + 56) + v85) = v89;

          v80 = v95;
        }

        while (v95);
      }

      v83 = v77;
      while (1)
      {
        v77 = v83 + 1;
        if (__OFADD__(v83, 1))
        {
          goto LABEL_90;
        }

        if (v77 >= v81)
        {
          break;
        }

        v84 = *(v99 + 64 + 8 * v77);
        ++v83;
        if (v84)
        {
          v82 = __clz(__rbit64(v84));
          v95 = (v84 - 1) & v84;
          goto LABEL_75;
        }
      }
    }

    v61 = v93;
    v0 = v96;
    if ((v66 & 1) == 0)
    {
LABEL_59:
      *(v67 + 8 * (v61 >> 6) + 64) |= 1 << v61;
      v69 = (*(v67 + 48) + 16 * v61);
      *v69 = v57;
      v69[1] = v59;
      v70 = (*(v67 + 56) + 16 * v61);
      *v70 = v13;
      v70[1] = v56;
      v71 = *(v67 + 16);
      v53 = __OFADD__(v71, 1);
      v72 = v71 + 1;
      if (v53)
      {
        goto LABEL_87;
      }

      *(v67 + 16) = v72;
      goto LABEL_6;
    }

LABEL_5:
    v6 = v61;

    v7 = (*(v67 + 56) + 16 * v6);
    *v7 = v13;
    v7[1] = v56;
LABEL_6:
    v99 = v67;
    v3 = v97;
LABEL_7:
    ++v5;
    v4 = Fields.endIndex.getter();
    if (v5 == v4)
    {
      v1 = v98;
      goto LABEL_81;
    }
  }

  if (isUniquelyReferenced_nonNull_native)
  {
    v26 = v98;
    if (v20)
    {
      goto LABEL_31;
    }

    goto LABEL_49;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation19AttributedStringKey_pXpGMd);
  v32 = static _DictionaryStorage.copy(original:)();
  v26 = v32;
  if (!*(v98 + 16))
  {
LABEL_48:

    if (v25)
    {
      goto LABEL_31;
    }

    goto LABEL_49;
  }

  v33 = (v32 + 64);
  v34 = (v98 + 64);
  v35 = ((1 << *(v26 + 32)) + 63) >> 6;
  if (v26 != v98 || v33 >= &v34[8 * v35])
  {
    memmove(v33, v34, 8 * v35);
  }

  v36 = 0;
  *(v26 + 16) = *(v98 + 16);
  v37 = 1 << *(v98 + 32);
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  else
  {
    v38 = -1;
  }

  v39 = v38 & *(v98 + 64);
  v40 = (v37 + 63) >> 6;
  v92 = v40;
  if (v39)
  {
    do
    {
      v41 = __clz(__rbit64(v39));
      v94 = (v39 - 1) & v39;
LABEL_46:
      v44 = 16 * (v41 | (v36 << 6));
      v45 = (*(v98 + 48) + v44);
      v47 = *v45;
      v46 = v45[1];
      v48 = *(*(v98 + 56) + v44);
      v49 = (*(v26 + 48) + v44);
      *v49 = v47;
      v49[1] = v46;
      *(*(v26 + 56) + v44) = v48;

      v40 = v92;
      v39 = v94;
    }

    while (v94);
  }

  v42 = v36;
  while (1)
  {
    v36 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      break;
    }

    if (v36 >= v40)
    {
      goto LABEL_48;
    }

    v43 = *(v98 + 64 + 8 * v36);
    ++v42;
    if (v43)
    {
      v41 = __clz(__rbit64(v43));
      v94 = (v43 - 1) & v43;
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t _s10Foundation14AttributeScopePAAE16scopeDescription33_4D406B8DD906487F9F362CE42830919ELLAA0cE0AELLVvgZAA0B6ScopesO0A10AttributesV012NumberFormatM0V_Ttg5()
{
  if (one-time initialization token for _loadedScopeCache != -1)
  {
LABEL_83:
    swift_once();
  }

  v0 = _loadedScopeCache;
  os_unfair_lock_lock(_loadedScopeCache + 10);
  v1 = specialized closure #1 in static AttributeScope.scopeDescription.getter(&v0[4], &type metadata for AttributeScopes.FoundationAttributes.NumberFormatAttributes);
  os_unfair_lock_unlock(v0 + 10);
  if (v1)
  {
    return v1;
  }

  v2 = MEMORY[0x1E69E7CC8];
  v94 = MEMORY[0x1E69E7CC8];
  v95 = MEMORY[0x1E69E7CC8];
  v3 = Fields.endIndex.getter();
  if (!v3)
  {
    v1 = v2;
LABEL_76:
    MEMORY[0x1EEE9AC00](v3);

    os_unfair_lock_lock(v0 + 10);
    partial apply for specialized closure #2 in static AttributeScope.scopeDescription.getter(&v0[4]);
    os_unfair_lock_unlock(v0 + 10);

    return v1;
  }

  v4 = 0;
  v93 = v0;
  while (1)
  {
    if (v4 >= Fields.endIndex.getter())
    {
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    if (static Metadata.Kind.tuple.getter() == 512)
    {
      TupleMetadata.init(_:)();
      TupleMetadata.Elements.subscript.getter();
      v7 = TupleMetadata.Elements.Element.metadata.getter();
LABEL_13:
      v10 = v7;
      goto LABEL_14;
    }

    v8 = (FieldDescriptor.subscript.getter() + 4);
    v9 = *v8;
    v10 = MangledTypeReference.standardSubstitution.getter();
    if (!v10)
    {
      v7 = MEMORY[0x1865C9F00](v8 + v9, &type metadata for AttributeScopes.FoundationAttributes.NumberFormatAttributes);
      goto LABEL_13;
    }

LABEL_14:
    v11 = swift_conformsToProtocol2();
    if (!v11 || !v10)
    {
      if (swift_conformsToProtocol2() && v10)
      {
        v26 = static AttributeScope.scopeDescription.getter(v10);
        ScopeDescription.merge(_:)(v26, v27);
      }

      goto LABEL_7;
    }

    v12 = v11;
    v13 = (*(v11 + 24))(v10, v11);
    v15 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v15);
    v19 = *(v94 + 16);
    v20 = (v17 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      goto LABEL_79;
    }

    v22 = v17;
    if (*(v94 + 24) >= v21)
    {
      break;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v21, isUniquelyReferenced_nonNull_native);
    v23 = v94;
    v24 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v15);
    if ((v22 & 1) != (v25 & 1))
    {
      goto LABEL_86;
    }

    v18 = v24;
    if (v22)
    {
LABEL_26:

      v28 = (*(v23 + 56) + 16 * v18);
      *v28 = v10;
      v28[1] = v12;
      goto LABEL_46;
    }

LABEL_44:
    *(v23 + 8 * (v18 >> 6) + 64) |= 1 << v18;
    v47 = (*(v23 + 48) + 16 * v18);
    *v47 = v13;
    v47[1] = v15;
    v48 = (*(v23 + 56) + 16 * v18);
    *v48 = v10;
    v48[1] = v12;
    v49 = *(v23 + 16);
    v50 = __OFADD__(v49, 1);
    v51 = v49 + 1;
    if (v50)
    {
      goto LABEL_81;
    }

    *(v23 + 16) = v51;
LABEL_46:
    v94 = v23;
    v52 = swift_conformsToProtocol2();
    v0 = v93;
    if (!v52)
    {
      goto LABEL_7;
    }

    v53 = v52;
    v54 = (*(v52 + 24))(v10, v52);
    v56 = v55;
    v57 = swift_isUniquelyReferenced_nonNull_native();
    v58 = specialized __RawDictionaryStorage.find<A>(_:)(v54, v56);
    v60 = *(v95 + 16);
    v61 = (v59 & 1) == 0;
    v50 = __OFADD__(v60, v61);
    v62 = v60 + v61;
    if (v50)
    {
      goto LABEL_80;
    }

    v63 = v59;
    if (*(v95 + 24) < v62)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v62, v57);
      v64 = v95;
      v58 = specialized __RawDictionaryStorage.find<A>(_:)(v54, v56);
      if ((v63 & 1) != (v65 & 1))
      {
        goto LABEL_86;
      }

LABEL_53:
      if ((v63 & 1) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_5;
    }

    if (v57)
    {
      v64 = v95;
      goto LABEL_53;
    }

    v90 = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation36MarkdownDecodableAttributedStringKey_pXpGMd);
    v70 = static _DictionaryStorage.copy(original:)();
    v64 = v70;
    if (*(v95 + 16))
    {
      v71 = (v70 + 64);
      v72 = (v95 + 64);
      v73 = ((1 << *(v64 + 32)) + 63) >> 6;
      if (v64 != v95 || v71 >= &v72[8 * v73])
      {
        memmove(v71, v72, 8 * v73);
      }

      v74 = 0;
      *(v64 + 16) = *(v95 + 16);
      v75 = 1 << *(v95 + 32);
      if (v75 < 64)
      {
        v76 = ~(-1 << v75);
      }

      else
      {
        v76 = -1;
      }

      v77 = v76 & *(v95 + 64);
      v78 = (v75 + 63) >> 6;
      if (v77)
      {
        do
        {
          v79 = __clz(__rbit64(v77));
          v92 = (v77 - 1) & v77;
LABEL_70:
          v82 = 16 * (v79 | (v74 << 6));
          v83 = (*(v95 + 48) + v82);
          v85 = *v83;
          v84 = v83[1];
          v86 = *(*(v95 + 56) + v82);
          v87 = (*(v64 + 48) + v82);
          *v87 = v85;
          v87[1] = v84;
          *(*(v64 + 56) + v82) = v86;

          v77 = v92;
        }

        while (v92);
      }

      v80 = v74;
      while (1)
      {
        v74 = v80 + 1;
        if (__OFADD__(v80, 1))
        {
          goto LABEL_85;
        }

        if (v74 >= v78)
        {
          break;
        }

        v81 = *(v95 + 64 + 8 * v74);
        ++v80;
        if (v81)
        {
          v79 = __clz(__rbit64(v81));
          v92 = (v81 - 1) & v81;
          goto LABEL_70;
        }
      }
    }

    v58 = v90;
    v0 = v93;
    if ((v63 & 1) == 0)
    {
LABEL_54:
      *(v64 + 8 * (v58 >> 6) + 64) |= 1 << v58;
      v66 = (*(v64 + 48) + 16 * v58);
      *v66 = v54;
      v66[1] = v56;
      v67 = (*(v64 + 56) + 16 * v58);
      *v67 = v10;
      v67[1] = v53;
      v68 = *(v64 + 16);
      v50 = __OFADD__(v68, 1);
      v69 = v68 + 1;
      if (v50)
      {
        goto LABEL_82;
      }

      *(v64 + 16) = v69;
      goto LABEL_6;
    }

LABEL_5:
    v5 = v58;

    v6 = (*(v64 + 56) + 16 * v5);
    *v6 = v10;
    v6[1] = v53;
LABEL_6:
    v95 = v64;
LABEL_7:
    ++v4;
    v3 = Fields.endIndex.getter();
    if (v4 == v3)
    {
      v1 = v94;
      goto LABEL_76;
    }
  }

  if (isUniquelyReferenced_nonNull_native)
  {
    v23 = v94;
    if (v17)
    {
      goto LABEL_26;
    }

    goto LABEL_44;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation19AttributedStringKey_pXpGMd);
  v29 = static _DictionaryStorage.copy(original:)();
  v23 = v29;
  if (!*(v94 + 16))
  {
LABEL_43:

    if (v22)
    {
      goto LABEL_26;
    }

    goto LABEL_44;
  }

  v30 = (v29 + 64);
  v31 = (v94 + 64);
  v32 = ((1 << *(v23 + 32)) + 63) >> 6;
  if (v23 != v94 || v30 >= &v31[8 * v32])
  {
    memmove(v30, v31, 8 * v32);
  }

  v33 = 0;
  *(v23 + 16) = *(v94 + 16);
  v34 = 1 << *(v94 + 32);
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  else
  {
    v35 = -1;
  }

  v36 = v35 & *(v94 + 64);
  v37 = (v34 + 63) >> 6;
  v89 = v37;
  if (v36)
  {
    do
    {
      v38 = __clz(__rbit64(v36));
      v91 = (v36 - 1) & v36;
LABEL_41:
      v41 = 16 * (v38 | (v33 << 6));
      v42 = (*(v94 + 48) + v41);
      v44 = *v42;
      v43 = v42[1];
      v45 = *(*(v94 + 56) + v41);
      v46 = (*(v23 + 48) + v41);
      *v46 = v44;
      v46[1] = v43;
      *(*(v23 + 56) + v41) = v45;

      v37 = v89;
      v36 = v91;
    }

    while (v91);
  }

  v39 = v33;
  while (1)
  {
    v33 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v33 >= v37)
    {
      goto LABEL_43;
    }

    v40 = *(v94 + 64 + 8 * v33);
    ++v39;
    if (v40)
    {
      v38 = __clz(__rbit64(v40));
      v91 = (v40 - 1) & v40;
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized closure #1 in static AttributeScope.scopeDescription.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation01_A9PlusScopeVyAA15AttributeScopesO0A10AttributesVGMd);
  v3 = specialized __RawDictionaryStorage.find<A>(_:)(v2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(v1 + 56) + 16 * v3);

  return v5;
}

char *specialized closure #2 in static AttributeScope.scopeDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation01_A9PlusScopeVyAA15AttributeScopesO0A10AttributesVGMd);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(a1 + 16);
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7);
  v12 = *(v9 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    v3 = v11;
    if (*(v9 + 24) < v15)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, isUniquelyReferenced_nonNull_native);
      v16 = v9;
      v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7);
      if ((v3 & 1) == (v17 & 1))
      {
        goto LABEL_7;
      }

      v10 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v16 = v9;
LABEL_7:
      if (v3)
      {
LABEL_8:
        v18 = (*(v16 + 56) + 16 * v10);
        *v18 = a2;
        v18[1] = a3;

LABEL_27:
        *(a1 + 16) = v16;
        return result;
      }

LABEL_26:
      specialized _NativeDictionary._insert(at:key:value:)(v10, v7, a2, a3, v16);

      goto LABEL_27;
    }
  }

  v32 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy18ReflectionInternal4TypeV10Foundation16ScopeDescription33_4D406B8DD906487F9F362CE42830919ELLVGMd);
  v20 = static _DictionaryStorage.copy(original:)();
  v16 = v20;
  if (!*(v9 + 16))
  {
LABEL_25:

    v10 = v32;
    if (v3)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

  result = (v20 + 64);
  __src = (v9 + 64);
  v21 = ((1 << *(v16 + 32)) + 63) >> 6;
  if (v16 != v9 || result >= &__src[8 * v21])
  {
    result = memmove(result, __src, 8 * v21);
  }

  v22 = 0;
  *(v16 + 16) = *(v9 + 16);
  v23 = 1 << *(v9 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v9 + 64);
  v26 = (v23 + 63) >> 6;
  if (v25)
  {
    do
    {
      v27 = __clz(__rbit64(v25));
      v33 = (v25 - 1) & v25;
LABEL_23:
      v30 = v27 | (v22 << 6);
      v31 = *(*(v9 + 56) + 16 * v30);
      *(*(v16 + 48) + 8 * v30) = *(*(v9 + 48) + 8 * v30);
      *(*(v16 + 56) + 16 * v30) = v31;

      v25 = v33;
    }

    while (v33);
  }

  v28 = v22;
  while (1)
  {
    v22 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v22 >= v26)
    {
      goto LABEL_25;
    }

    v29 = *&__src[8 * v22];
    ++v28;
    if (v29)
    {
      v27 = __clz(__rbit64(v29));
      v33 = (v29 - 1) & v29;
      goto LABEL_23;
    }
  }

  __break(1u);
  return result;
}

char *specialized closure #2 in static AttributeScope.scopeDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(a1 + 16);
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a4);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v4 = v12;
    if (*(v10 + 24) < v16)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, isUniquelyReferenced_nonNull_native);
      v17 = v10;
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(a4);
      if ((v4 & 1) == (v18 & 1))
      {
        goto LABEL_7;
      }

      v11 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v17 = v10;
LABEL_7:
      if (v4)
      {
LABEL_8:
        v19 = (*(v17 + 56) + 16 * v11);
        *v19 = a2;
        v19[1] = a3;

LABEL_27:
        *(a1 + 16) = v17;
        return result;
      }

LABEL_26:
      specialized _NativeDictionary._insert(at:key:value:)(v11, a4, a2, a3, v17);

      goto LABEL_27;
    }
  }

  v33 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy18ReflectionInternal4TypeV10Foundation16ScopeDescription33_4D406B8DD906487F9F362CE42830919ELLVGMd);
  v21 = static _DictionaryStorage.copy(original:)();
  v17 = v21;
  if (!*(v10 + 16))
  {
LABEL_25:

    v11 = v33;
    if (v4)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

  result = (v21 + 64);
  __src = (v10 + 64);
  v22 = ((1 << *(v17 + 32)) + 63) >> 6;
  if (v17 != v10 || result >= &__src[8 * v22])
  {
    result = memmove(result, __src, 8 * v22);
  }

  v23 = 0;
  *(v17 + 16) = *(v10 + 16);
  v24 = 1 << *(v10 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v10 + 64);
  v27 = (v24 + 63) >> 6;
  if (v26)
  {
    do
    {
      v28 = __clz(__rbit64(v26));
      v34 = (v26 - 1) & v26;
LABEL_23:
      v31 = v28 | (v23 << 6);
      v32 = *(*(v10 + 56) + 16 * v31);
      *(*(v17 + 48) + 8 * v31) = *(*(v10 + 48) + 8 * v31);
      *(*(v17 + 56) + 16 * v31) = v32;

      v26 = v34;
    }

    while (v34);
  }

  v29 = v23;
  while (1)
  {
    v23 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v23 >= v27)
    {
      goto LABEL_25;
    }

    v30 = *&__src[8 * v23];
    ++v29;
    if (v30)
    {
      v28 = __clz(__rbit64(v30));
      v34 = (v30 - 1) & v30;
      goto LABEL_23;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSo18NSAttributedStringC10FoundationE_9includingAbC010AttributedB0V_xmtKcAC14AttributeScopeRzlufCAC0F6ScopesO0C10AttributesV_Tt0t1B5(uint64_t a1)
{
  v128 = _s10Foundation14AttributeScopePAAE16scopeDescription33_4D406B8DD906487F9F362CE42830919ELLAA0cE0AELLVvgZAA0B6ScopesO0A10AttributesV_Ttg5();

  v2 = *(a1 + 40);
  v165[0] = *(a1 + 24);
  v165[1] = v2;
  v165[2] = *(a1 + 56);
  v166[0] = v165[0];
  v166[1] = v2;
  v167 = *(a1 + 56);
  outlined init with copy of Rope<BigString._Chunk>._Node?(v166, v150);
  MEMORY[0x1865CAF80](v165);
  v3 = objc_allocWithZone(NSMutableAttributedString);
  v4 = String._bridgeToObjectiveCImpl()();

  v127 = [v3 initWithString_];
  swift_unknownObjectRelease();
  v5 = *(a1 + 40);
  v162 = *(a1 + 24);
  v163 = v5;
  v164 = *(a1 + 56);
  isUniquelyReferenced_nonNull_native = BigString.startIndex.getter();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = *(a1 + 72);
  v14 = *(a1 + 80);
  v16 = *(a1 + 88);
  v15 = *(a1 + 96);
  v130 = a1;
  v131 = v15;
  v17 = v13;
  v150[0] = v13;
  v150[1] = v14;
  v132 = v14;
  v140 = v16;
  v150[2] = v16;
  v150[3] = v15;
  if (v13)
  {
    v18 = *(v13 + 18);
    swift_unknownObjectRetain();
  }

  else
  {
    v18 = 0;
  }

  v19 = 0;
  v139 = 0;
  v20 = 0;
  v151 = v131;
  v152 = v18;
  v154 = 0;
  v155 = 0;
  v153 = 0;
  v129 = v17;
  while (1)
  {
    if (v17)
    {
      if (v20 == v140)
      {
        goto LABEL_88;
      }
    }

    else if (!v20)
    {
LABEL_88:

      swift_unknownObjectRelease();
      v113 = objc_allocWithZone(NSAttributedString);
      v114 = v127;
      v115 = [v113 initWithAttributedString_];

      return v115;
    }

    if (v151 != v131)
    {
      break;
    }

    v135 = v12;
    v136 = v10;
    v137 = v8;
    v138 = isUniquelyReferenced_nonNull_native;
    v23 = v20;
    v134 = v19;
    v12 = v152;
    v24 = v153;
    if (v153)
    {
      v25 = (v153 + 24 * ((v152 >> ((4 * *(v153 + 18) + 8) & 0x3C)) & 0xF));
      v26 = v25[3];
      v3 = v25[4];
      isUniquelyReferenced_nonNull_native = v25[5];
      v27 = v139 + 1;
      v28 = __OFADD__(v139, 1);

      v144 = isUniquelyReferenced_nonNull_native;

      if (v28)
      {
        goto LABEL_93;
      }

      v154 = v27;
      v22 = __OFADD__(v23, v26);
      v29 = v23 + v26;
      if (v22)
      {
        goto LABEL_95;
      }
    }

    else
    {
      specialized Rope._Node.subscript.getter(v152, v17);
      v144 = v31;
      if (__OFADD__(v139, 1))
      {
        goto LABEL_93;
      }

      v3 = v30;
      v27 = v139 + 1;
      v154 = v139 + 1;
      v145 = specialized Rope._Node.subscript.getter(v12, v17);
      isUniquelyReferenced_nonNull_native = v32;

      v22 = __OFADD__(v23, v145);
      v29 = v23 + v145;
      if (v22)
      {
        goto LABEL_96;
      }
    }

    v155 = v29;
    if (!v17 || v12 >= (((-15 << ((4 * *(v17 + 18) + 8) & 0x3C)) - 1) & *(v17 + 18) | (*(v17 + 16) << ((4 * *(v17 + 18) + 8) & 0x3C))))
    {
      goto LABEL_100;
    }

    v133 = v29;
    v139 = v27;
    v145 = v3;
    if (v24 && (v33 = (4 * *(v24 + 18) + 8) & 0x3C, v34 = ((v12 >> v33) & 0xF) + 1, v34 < *(v24 + 16)))
    {
      v152 = (v34 << v33) | ((-15 << v33) - 1) & v12;
    }

    else if ((specialized Rope._Node.formSuccessor(of:)(&v151, v17) & 1) == 0)
    {
      v35 = ((-15 << ((4 * *(v17 + 18) + 8) & 0x3C)) - 1) & *(v17 + 18) | (*(v17 + 16) << ((4 * *(v17 + 18) + 8) & 0x3C));
      v151 = v131;
      v152 = v35;
      v153 = 0;
    }

    v36 = v130;
    v37 = *(v130 + 40);
    v159 = *(v130 + 24);
    v160 = v37;
    v161 = *(v130 + 56);
    swift_unknownObjectRetain();
    v3 = v138;
    v38 = BigString.UTF8View.index(_:offsetBy:)();
    v142 = v39;
    v143 = v38;
    v141 = v40;
    v42 = v41;
    swift_unknownObjectRelease();
    v43 = *(v36 + 40);
    v156 = *(v36 + 24);
    v157 = v43;
    v158 = *(v36 + 56);
    swift_unknownObjectRetain();
    v8 = v142;
    isUniquelyReferenced_nonNull_native = v143;
    v10 = v141;
    v138 = v42;
    v137 = BigString.UTF16View.distance(from:to:)();
    swift_unknownObjectRelease();
    v44 = v145;
    if (!*(v145 + 16))
    {

      v17 = v129;
      v21 = v134;
      goto LABEL_6;
    }

    v45 = v145 + 64;
    v46 = 1 << *(v145 + 32);
    if (v46 < 64)
    {
      v47 = ~(-1 << v46);
    }

    else
    {
      v47 = -1;
    }

    v48 = v47 & *(v145 + 64);
    v49 = (v46 + 63) >> 6;
    swift_bridgeObjectRetain_n();

    v50 = 0;
    v136 = MEMORY[0x1E69E7CC8];
    isUniquelyReferenced_nonNull_native = v128;
    while (v48)
    {
      v51 = v48;
LABEL_41:
      v48 = (v51 - 1) & v51;
      if (*(isUniquelyReferenced_nonNull_native + 16))
      {
        v53 = (*(v44 + 48) + ((v50 << 10) | (16 * __clz(__rbit64(v51)))));
        v3 = *v53;
        v54 = v53[1];

        v55 = specialized __RawDictionaryStorage.find<A>(_:)(v3, v54);
        if (v56)
        {
          v57 = (*(isUniquelyReferenced_nonNull_native + 56) + 16 * v55);
          v58 = *v57;
          v59 = v57[1];
          v123 = String._bridgeToObjectiveCImpl()();
          AssociatedTypeWitness = swift_getAssociatedTypeWitness();
          v119 = &v117;
          v124 = *(AssociatedTypeWitness - 8);
          v125 = AssociatedTypeWitness;
          v120 = *(v124 + 64);
          v61 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
          v135 = (&v117 - v62);
          v63 = v59[3];
          v121 = v58;
          v64 = v63(v58, v59, v61);
          isUniquelyReferenced_nonNull_native = v65;
          v12 = v145;
          if (!*(v145 + 16))
          {
            goto LABEL_102;
          }

          v3 = specialized __RawDictionaryStorage.find<A>(_:)(v64, v65);
          LODWORD(v122) = v66;

          if ((v122 & 1) == 0)
          {
            goto LABEL_103;
          }

          outlined init with copy of AttributedString._AttributeValue(*(v12 + 56) + 72 * v3, v147);
          outlined init with copy of Hashable & Sendable(v147, v146);
          v3 = v125;
          isUniquelyReferenced_nonNull_native = type metadata accessor for Optional();
          v122 = &v117;
          v118 = *(isUniquelyReferenced_nonNull_native - 8);
          MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
          v12 = &v117 - v67;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
          if (!swift_dynamicCast())
          {
            goto LABEL_104;
          }

          outlined destroy of AttributedString._AttributeValue(v147);
          isUniquelyReferenced_nonNull_native = v124;
          (*(v124 + 56))(v12, 0, 1, v3);
          (*(isUniquelyReferenced_nonNull_native + 32))(v135, v12, v3);
          v12 = v121;
          v68 = swift_conformsToProtocol2();
          if (v68 && v12)
          {
            v69 = v68;
            v122 = &v117;
            v70 = MEMORY[0x1EEE9AC00](v68);
            v118 = &v117 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(isUniquelyReferenced_nonNull_native + 16))(v70);
            v72 = swift_getAssociatedTypeWitness();
            v120 = &v117;
            v3 = *(v72 - 8);
            MEMORY[0x1EEE9AC00](v72);
            isUniquelyReferenced_nonNull_native = &v117 - v73;
            v118 = v74;
            swift_dynamicCast();
            v75 = v126;
            v76 = (*(v69 + 24))(isUniquelyReferenced_nonNull_native, v12, v69);
            v126 = v75;
            if (v75)
            {
LABEL_91:

              swift_bridgeObjectRelease_n();
              swift_bridgeObjectRelease_n();
              swift_unknownObjectRelease();
              (*(v3 + 8))(isUniquelyReferenced_nonNull_native, v118);
              (*(v124 + 8))(v135, v125);

              v115 = v126;
              swift_willThrow();

              swift_unknownObjectRelease();
              return v115;
            }

            v77 = v76;
            (*(v3 + 8))(isUniquelyReferenced_nonNull_native, v118);
            v78 = v123;
            isUniquelyReferenced_nonNull_native = v124;
            v3 = v125;
            v79 = v135;
          }

          else
          {
            isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
            if (isClassOrObjCExistentialType)
            {
              v78 = v123;
              v79 = v135;
              if (v120 != 8)
              {
                goto LABEL_98;
              }

              v77 = *v135;
              swift_unknownObjectRetain();
            }

            else
            {
              v87 = MEMORY[0x1EEE9AC00](isClassOrObjCExistentialType);
              v89 = v135;
              (*(isUniquelyReferenced_nonNull_native + 16))(&v117 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0), v135, v125, v87);
              v79 = v89;
              v77 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
              v3 = v125;
              v78 = v123;
            }
          }

          (*(isUniquelyReferenced_nonNull_native + 8))(v79, v3);
          ObjectType = swift_getObjectType();
          *&v148 = v77;
          outlined init with take of Any(&v148, v147);
          v12 = v136;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v168 = v12;
          v81 = specialized __RawDictionaryStorage.find<A>(_:)(v78);
          v83 = *(v12 + 16);
          v84 = (v82 & 1) == 0;
          v22 = __OFADD__(v83, v84);
          v85 = v83 + v84;
          if (v22)
          {
            goto LABEL_97;
          }

          v3 = v82;
          if (*(v12 + 24) >= v85)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v12 = v136;
              isUniquelyReferenced_nonNull_native = v128;
              if (v82)
              {
                goto LABEL_61;
              }
            }

            else
            {
              v121 = v81;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo21NSAttributedStringKeyaypGMd);
              v90 = v136;
              v91 = static _DictionaryStorage.copy(original:)();
              v12 = v91;
              if (v90[2])
              {
                v92 = (v91 + 64);
                v93 = (v90 + 8);
                v94 = ((1 << *(v12 + 32)) + 63) >> 6;
                v120 = v90 + 8;
                if (v12 != v90 || v92 >= &v93[8 * v94])
                {
                  memmove(v92, v93, 8 * v94);
                }

                v95 = 0;
                v96 = v136;
                *(v12 + 16) = v136[2];
                v97 = 1 << *(v96 + 32);
                v98 = v96[8];
                if (v97 < 64)
                {
                  v99 = ~(-1 << v97);
                }

                else
                {
                  v99 = -1;
                }

                v100 = v99 & v98;
                v101 = (v97 + 63) >> 6;
                v122 = v101;
                isUniquelyReferenced_nonNull_native = v128;
                if (v100)
                {
                  do
                  {
                    v102 = __clz(__rbit64(v100));
                    v135 = ((v100 - 1) & v100);
LABEL_77:
                    v105 = v102 | (v95 << 6);
                    v106 = v136[7];
                    v107 = *(v136[6] + 8 * v105);
                    v124 = v105;
                    v125 = 32 * v105;
                    outlined init with copy of Any(v106 + 32 * v105, v146);
                    v108 = v125;
                    *(*(v12 + 48) + 8 * v124) = v107;
                    outlined init with take of Any(v146, (*(v12 + 56) + v108));
                    v109 = v107;
                    v101 = v122;
                    v100 = v135;
                    isUniquelyReferenced_nonNull_native = v128;
                  }

                  while (v135);
                }

                v103 = v95;
                while (1)
                {
                  v95 = v103 + 1;
                  if (__OFADD__(v103, 1))
                  {
                    goto LABEL_101;
                  }

                  if (v95 >= v101)
                  {
                    v78 = v123;
                    goto LABEL_81;
                  }

                  v104 = v120[v95];
                  ++v103;
                  if (v104)
                  {
                    v102 = __clz(__rbit64(v104));
                    v135 = ((v104 - 1) & v104);
                    goto LABEL_77;
                  }
                }
              }

              isUniquelyReferenced_nonNull_native = v128;
LABEL_81:

              v81 = v121;
              if (v3)
              {
LABEL_61:
                v3 = *(v12 + 56) + 32 * v81;
                __swift_destroy_boxed_opaque_existential_1(v3);
                outlined init with take of Any(v147, v3);
                swift_unknownObjectRelease();
                goto LABEL_84;
              }
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v85, isUniquelyReferenced_nonNull_native);
            v12 = v168;
            v81 = specialized __RawDictionaryStorage.find<A>(_:)(v78);
            if ((v3 & 1) != (v86 & 1))
            {
              goto LABEL_105;
            }

            isUniquelyReferenced_nonNull_native = v128;
            if (v3)
            {
              goto LABEL_61;
            }
          }

          *(v12 + 8 * (v81 >> 6) + 64) |= 1 << v81;
          *(*(v12 + 48) + 8 * v81) = v78;
          outlined init with take of Any(v147, (*(v12 + 56) + 32 * v81));
          v110 = *(v12 + 16);
          v22 = __OFADD__(v110, 1);
          v111 = v110 + 1;
          if (v22)
          {
            goto LABEL_99;
          }

          *(v12 + 16) = v111;
LABEL_84:
          v136 = v12;
          v44 = v145;
        }

        else
        {

          v44 = v145;
        }
      }
    }

    while (1)
    {
      v52 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        __break(1u);
        goto LABEL_91;
      }

      if (v52 >= v49)
      {
        break;
      }

      v51 = *(v45 + 8 * v52);
      ++v50;
      if (v51)
      {
        v50 = v52;
        goto LABEL_41;
      }
    }

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    if (v136[2])
    {
      type metadata accessor for NSAttributedStringKey(0);
      lazy protocol witness table accessor for type NSDecimal and conformance NSDecimal(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
      v112 = _NativeDictionary.bridged()();
      v21 = v134;
      v3 = v137;
      [v127 setAttributes:v112 range:{v134, v137}];
      swift_unknownObjectRelease();
      v17 = v129;
      v8 = v142;
      isUniquelyReferenced_nonNull_native = v143;
      v10 = v141;
      goto LABEL_7;
    }

    v17 = v129;
    v21 = v134;
    v8 = v142;
    isUniquelyReferenced_nonNull_native = v143;
    v10 = v141;
LABEL_6:
    v3 = v137;
LABEL_7:
    v12 = v138;
    v22 = __OFADD__(v21, v3);
    v19 = v21 + v3;
    v20 = v133;
    if (v22)
    {
      goto LABEL_94;
    }
  }

  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:

LABEL_103:
  __break(1u);
LABEL_104:
  (*(v124 + 56))(v12, 1, 1, v3);
  (*(v118 + 1))(v12, isUniquelyReferenced_nonNull_native);
  __break(1u);
LABEL_105:
  type metadata accessor for NSAttributedStringKey(0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t (*static AttributeScopes.FoundationAttributes.LinkAttribute.name.modify(void *a1))()
{
  *a1 = 0x6B6E694C534ELL;
  a1[1] = 0xE600000000000000;
  return static AttributeScopes.FoundationAttributes.LinkAttribute.name.modify;
}

uint64_t AttributeScopes.FoundationAttributes.LocalizedNumberFormatAttribute.Value.init(from:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    v3 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    if ((v3 & 1) == 0)
    {
      type metadata accessor for DecodingError();
      swift_allocError();
      static DecodingError.dataCorruptedError(in:debugDescription:)();
      swift_willThrow();
    }

    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

Swift::Int AttributeScopes.FoundationAttributes.LocalizedNumberFormatAttribute.Value.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](0);
  return Hasher._finalize()();
}

uint64_t AttributeScopes.FoundationAttributes.PersonNameComponentAttribute.Component.init(rawValue:)@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AttributeScopes.FoundationAttributes.PersonNameComponentAttribute.Component.init(rawValue:), v3);

  v7 = 7;
  if (v5 < 7)
  {
    v7 = v5;
  }

  *a2 = v7;
  return result;
}

uint64_t AttributeScopes.FoundationAttributes.PersonNameComponentAttribute.Component.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6D614E6E65766967;
  v3 = 0x656D616E6B63696ELL;
  if (v1 != 5)
  {
    v3 = 0x6574696D696C6564;
  }

  v4 = 0x66657250656D616ELL;
  if (v1 != 3)
  {
    v4 = 0x66667553656D616ELL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x614E796C696D6166;
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

uint64_t protocol witness for Hashable.hash(into:) in conformance AttributeScopes.FoundationAttributes.PersonNameComponentAttribute.Component()
{
  String.hash(into:)();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance AttributeScopes.FoundationAttributes.PersonNameComponentAttribute.Component(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0x6D614E6E65766967;
  v4 = 0xE800000000000000;
  v5 = 0x656D616E6B63696ELL;
  if (v2 != 5)
  {
    v5 = 0x6574696D696C6564;
    v4 = 0xE900000000000072;
  }

  v6 = 0x66657250656D616ELL;
  if (v2 != 3)
  {
    v6 = 0x66667553656D616ELL;
  }

  if (*v1 <= 4u)
  {
    v5 = v6;
    v4 = 0xEA00000000007869;
  }

  v7 = 0x614E796C696D6166;
  if (v2 != 1)
  {
    v7 = 0x614E656C6464696DLL;
  }

  if (*v1)
  {
    v3 = v7;
    v8 = 0xEA0000000000656DLL;
  }

  else
  {
    v8 = 0xE900000000000065;
  }

  if (*v1 <= 2u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  *a1 = v9;
  a1[1] = v10;
}

unint64_t AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 5;
  if (result < 5)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

unint64_t AttributeScopes.FoundationAttributes.DateFieldAttribute.Field.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v27, v27[3]);
    v26 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    v28 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation15AttributeScopesO0C10AttributesV09DateFieldD0O0H0OGMd);
    v6 = 37;
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = &byte_1EEECF2E0;
    do
    {
      v9 = *(v8 - 2);
      v10 = *(v8 - 1);
      v11 = *v8;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v9, v10);
      if (v13)
      {
        __break(1u);
LABEL_12:
        __break(1u);
        return result;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v7[6] + 16 * result);
      *v14 = v9;
      v14[1] = v10;
      *(v7[7] + result) = v11;
      v15 = v7[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_12;
      }

      v8 += 24;
      v7[2] = v17;
      --v6;
    }

    while (v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation15AttributeScopesO0A10AttributesV09DateFieldB0O0F0OtMd);
    swift_arrayDestroy();
    v18 = v28;
    if (v7[2])
    {
      v19 = specialized __RawDictionaryStorage.find<A>(_:)(v26, v28);
      if (v20)
      {
        v21 = v19;

        v22 = *(v7[7] + v21);

        __swift_destroy_boxed_opaque_existential_1(v27);
        *a2 = v22;
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }
    }

    v23 = type metadata accessor for DecodingError();
    swift_allocError();
    v25 = v24;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    dispatch thunk of Decoder.codingPath.getter();
    _StringGuts.grow(_:)(27);

    MEMORY[0x1865CB0E0](v26, v18);

    MEMORY[0x1865CB0E0](11838, 0xE200000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v23 - 8) + 104))(v25, *MEMORY[0x1E69E6B00], v23);
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v27);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t AttributeScopes.FoundationAttributes.DateFieldAttribute.Field.encode(to:)(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v6 = v2;
  AttributeScopes.FoundationAttributes.DateFieldAttribute.Field.rawValue.getter();
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();

  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t static AttributeScopes.FoundationAttributes.InflectionAlternativeAttribute.decodeMarkdown(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    v5 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    _s10Foundation16AttributedStringV09_markdownC09including7options7baseURLACSS_xmAC22MarkdownParsingOptionsVAA0H0VSgtKcAA14AttributeScopeRzlufCAA0L6ScopesO0A10AttributesV_Tt1t4B5(v5, v6, 512, 0, 0, 0, 0, 0, &v8);
    *a2 = v8;
    return __swift_destroy_boxed_opaque_existential_1(v7);
  }

  return result;
}

id static AttributeScopes.FoundationAttributes.InflectionAlternativeAttribute.value(for:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v91;
  v101 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v82 = a2;
    v7 = a1;
    v8 = _s10Foundation14AttributeScopePAAE16scopeDescription33_4D406B8DD906487F9F362CE42830919ELLAA0cE0AELLVvgZAA0B6ScopesO0A10AttributesV_Ttg5();

    v9 = [v6 string];
    if (!v9)
    {
LABEL_40:
      BigString.init(_:)();
      v89[0] = 0;
      MEMORY[0x1865D26B0](v89, 8);
      v95 = 0;
      v96 = 0;
      v97 = v89[0];
      v93 = 0;
      v94 = 0;
      v28 = BigString.startIndex.getter();
      v92[1] = v29;
      v92[2] = v30;
      v92[3] = v31;
      v91[0] = v28;
      v91[1] = v29;
      v91[2] = v30;
      v91[3] = v31;
      v92[0] = v28;
      v84 = 0;
      v85 = MEMORY[0x1E69E7CC8];
      v86 = MEMORY[0x1E69E7CD0];
      v83 = 0;
      v32 = [v6 length];
      v33 = swift_allocObject();
      *(v33 + 16) = v8;
      *(v33 + 24) = 0;
      *(v33 + 32) = &v93;
      *(v33 + 40) = v91;
      *(v33 + 48) = v92;
      *(v33 + 56) = v98;
      *(v33 + 72) = v99;
      *(v33 + 88) = v100;
      *(v33 + 104) = &v84;
      *(v33 + 112) = &v94;
      *(v33 + 120) = &v83;
      v34 = swift_allocObject();
      *(v34 + 16) = partial apply for closure #1 in AttributedString.init(_:attributeTable:options:);
      *(v34 + 24) = v33;
      v89[4] = _sSDySo21NSAttributedStringKeyaypGSo8_NSRangeVSpy10ObjectiveC8ObjCBoolVGIggyy_AceIIeggyy_TRTA_0;
      v90 = v34;
      v89[0] = MEMORY[0x1E69E9820];
      v89[1] = 1107296256;
      v89[2] = thunk for @escaping @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
      v89[3] = &block_descriptor_3;
      v35 = _Block_copy(v89);
      v36 = v90;

      outlined init with copy of BigString(&v98, &v87);

      [v6 enumerateAttributesInRange:0 options:v32 usingBlock:{0, v35}];
      _Block_release(v35);
      LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

      if (v32)
      {
        __break(1u);
      }

      else
      {
        v37 = v93;
        if (v93)
        {
          swift_willThrow();
          v38 = v37;
          outlined destroy of BigString(&v98);

          return swift_unknownObjectRelease();
        }

        v39 = v84;
        if (v84 >= 1)
        {
          v40 = v85;
          v41 = v86;

          specialized Rope.append(_:)(v39, v40, v41);
        }

        v36 = v94;
        v4 = v95;
        v34 = v96;
        v35 = v97;
        type metadata accessor for AttributedString.Guts();
        v6 = swift_allocObject();
        v42 = BigString.isEmpty.getter() & 1;
        outlined init with copy of BigString(&v98, v89);
        v43 = swift_unknownObjectRetain();
        specialized Rope._endPath.getter(v43);
        if (v36)
        {
          v44 = v34 == 0;
        }

        else
        {
          v44 = 1;
        }

        v45 = v44;
        if (v45 == v42)
        {
          if (one-time initialization token for _nextVersion == -1)
          {
LABEL_53:
            *(v6 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
            *(v6 + 24) = v98;
            *(v6 + 40) = v99;
            *(v6 + 56) = v100;
            *(v6 + 72) = v36;
            *(v6 + 80) = v4;
            *(v6 + 88) = v34;
            *(v6 + 96) = v35;
            *(v6 + 104) = MEMORY[0x1E69E7CC0];
            if (v83 == 1)
            {
              AttributedString.Guts.adjustConstrainedAttributesForUntrustedRuns()();
            }

            outlined destroy of BigString(&v98);

            result = swift_unknownObjectRelease();
            *v82 = v6;
            return result;
          }

LABEL_120:
          swift_once();
          goto LABEL_53;
        }
      }

      __break(1u);
      goto LABEL_120;
    }

    v10 = v9;
    isTaggedPointer = _objc_isTaggedPointer(v9);
    v12 = v10;
    v13 = v12;
    if (!isTaggedPointer)
    {
      goto LABEL_13;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v12);
    if (!TaggedPointerTag)
    {
      LOWORD(v94) = 0;
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (v25)
      {
      }

      else
      {
        [v13 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
      }

LABEL_39:

      goto LABEL_40;
    }

    if (TaggedPointerTag != 22)
    {
      if (TaggedPointerTag == 2)
      {
        MEMORY[0x1EEE9AC00](TaggedPointerTag);
        String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

        v4 = v91;
        goto LABEL_40;
      }

LABEL_13:
      LOBYTE(v87) = 0;
      v89[0] = 0;
      LOBYTE(v94) = 0;
      LOBYTE(v92[0]) = 0;
      if (__CFStringIsCF())
      {
LABEL_14:

        goto LABEL_40;
      }

      v19 = v13;
      String.init(_nativeStorage:)();
      if (v20 || (v89[0] = [v19 length]) == 0)
      {

        goto LABEL_40;
      }

      String.init(_cocoaString:)();
      goto LABEL_39;
    }

    result = [v13 UTF8String];
    if (result)
    {
      result = String.init(utf8String:)(result);
      if (v24)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_124;
  }

  v15 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
  v16 = @"NSCocoaErrorDomain";
  v17 = v16;
  if (v15)
  {
    v18 = _objc_getTaggedPointerTag(v16);
    if (v18)
    {
      if (v18 != 22)
      {
        if (v18 == 2)
        {
          MEMORY[0x1EEE9AC00](v18);
          String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

          goto LABEL_57;
        }

        goto LABEL_16;
      }

      result = [(__CFString *)v17 UTF8String];
      if (!result)
      {
LABEL_124:
        __break(1u);
        goto LABEL_125;
      }

      String.init(utf8String:)(result);
      if (v26)
      {
        goto LABEL_17;
      }

      __break(1u);
    }

    LOWORD(v94) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v27)
    {
      goto LABEL_17;
    }

    [(__CFString *)v17 mutableCopy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    swift_dynamicCast();
    goto LABEL_57;
  }

LABEL_16:
  LOBYTE(v87) = 0;
  v89[0] = 0;
  LOBYTE(v94) = 0;
  LOBYTE(v92[0]) = 0;
  if (__CFStringIsCF())
  {
LABEL_17:

    goto LABEL_57;
  }

  v21 = v17;
  String.init(_nativeStorage:)();
  if (!v22 && (v89[0] = [(__CFString *)v21 length]) != 0)
  {
    String.init(_cocoaString:)();
  }

  else
  {
  }

LABEL_57:
  v46 = objc_allocWithZone(NSError);
  v47 = String._bridgeToObjectiveCImpl()();

  v48 = [v46 initWithDomain:v47 code:4866 userInfo:_NativeDictionary.bridged()()];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v49 = [v48 domain];
  if (!v49)
  {
LABEL_67:
    v55 = 0;
    v57 = 0xE000000000000000;
    goto LABEL_78;
  }

  v50 = v49;
  v51 = _objc_isTaggedPointer(v49);
  v52 = v50;
  v53 = v52;
  if ((v51 & 1) == 0)
  {
    goto LABEL_63;
  }

  v54 = _objc_getTaggedPointerTag(v52);
  switch(v54)
  {
    case 0:
      goto LABEL_71;
    case 0x16:
      result = [v53 UTF8String];
      if (!result)
      {
LABEL_126:
        __break(1u);
        return result;
      }

      v61 = String.init(utf8String:)(result);
      if (v62)
      {
LABEL_72:
        v55 = v61;
        v57 = v62;

        goto LABEL_77;
      }

      __break(1u);
LABEL_71:
      LOWORD(v94) = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v61 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v62)
      {
        [v53 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v55 = v87;
        v57 = v88;
        goto LABEL_77;
      }

      goto LABEL_72;
    case 2:
      MEMORY[0x1EEE9AC00](v54);
      v55 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v57 = v56;

      goto LABEL_78;
  }

LABEL_63:
  LOBYTE(v87) = 0;
  v89[0] = 0;
  LOBYTE(v94) = 0;
  LOBYTE(v92[0]) = 0;
  if (__CFStringIsCF())
  {

    goto LABEL_67;
  }

  v58 = v53;
  v59 = String.init(_nativeStorage:)();
  if (v60)
  {
    v55 = v59;
    v57 = v60;

    goto LABEL_78;
  }

  v89[0] = [v58 length];
  if (!v89[0])
  {

    goto LABEL_67;
  }

  v55 = String.init(_cocoaString:)();
  v57 = v63;
LABEL_77:

LABEL_78:
  v64 = v17;
  v65 = v64;
  if (!v15)
  {
    goto LABEL_83;
  }

  v66 = _objc_getTaggedPointerTag(v64);
  switch(v66)
  {
    case 0:
      goto LABEL_95;
    case 0x16:
      result = [(__CFString *)v65 UTF8String];
      if (!result)
      {
LABEL_125:
        __break(1u);
        goto LABEL_126;
      }

      v74 = String.init(utf8String:)(result);
      if (v75)
      {
        goto LABEL_96;
      }

      __break(1u);
LABEL_95:
      LOWORD(v94) = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v74 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v75)
      {
        [(__CFString *)v65 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v67 = v87;
        v69 = v88;
        goto LABEL_113;
      }

LABEL_96:
      v67 = v74;
      v69 = v75;

      goto LABEL_113;
    case 2:
      MEMORY[0x1EEE9AC00](v66);
      v67 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v69 = v68;

      goto LABEL_113;
  }

LABEL_83:
  LOBYTE(v87) = 0;
  v89[0] = 0;
  LOBYTE(v94) = 0;
  LOBYTE(v92[0]) = 0;
  IsCF = __CFStringIsCF();
  if (!IsCF)
  {
    v71 = v65;
    v72 = String.init(_nativeStorage:)();
    if (v73)
    {
      v67 = v72;
      v69 = v73;

      goto LABEL_113;
    }

    v89[0] = [(__CFString *)v71 length];
    if (v89[0])
    {
      goto LABEL_111;
    }

LABEL_91:
    v67 = 0;
    v69 = 0xE000000000000000;
    goto LABEL_113;
  }

  if (!v89[0])
  {

    goto LABEL_91;
  }

  if (LOBYTE(v92[0]) == 1)
  {
    if (v87)
    {
      lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
    }

    else
    {
      lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
    }

    v76 = String.init<A>(_immortalCocoaString:count:encoding:)();
    goto LABEL_112;
  }

  if (v94)
  {
    if (v87 != 1)
    {
      IsCF = [(__CFString *)v65 lengthOfBytesUsingEncoding:4];
    }

    MEMORY[0x1EEE9AC00](IsCF);
    v78 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
    v69 = v79;
    v80 = HIBYTE(v79) & 0xF;
    if ((v79 & 0x2000000000000000) == 0)
    {
      v80 = v78 & 0xFFFFFFFFFFFFLL;
    }

    if (v80)
    {
      v67 = v78;

      goto LABEL_113;
    }
  }

LABEL_111:
  v76 = String.init(_cocoaString:)();
LABEL_112:
  v67 = v76;
  v69 = v77;
LABEL_113:
  if (v55 == v67 && v57 == v69)
  {
  }

  else
  {
    v81 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v81 & 1) == 0)
    {
      __break(1u);
    }
  }

  return swift_willThrow();
}

id protocol witness for static ObjectiveCConvertibleAttributedStringKey.value(for:) in conformance AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = [a1 unsignedIntegerValue];
  *a2 = result;
  return result;
}

uint64_t static AttributeScopes.FoundationAttributes.ReferentConceptAttribute.name.getter(void *a1, void *a2)
{
  if (*a1 != -1)
  {
    v4 = a2;
    swift_once();
    a2 = v4;
  }

  v2 = *a2;

  return v2;
}

uint64_t static AttributeScopes.FoundationAttributes.ListItemDelimiterAttribute.encode(_:to:)(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t protocol witness for static EncodableAttributedStringKey.encode(_:to:) in conformance AttributeScopes.FoundationAttributes.ListItemDelimiterAttribute(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t protocol witness for static DecodableAttributedStringKey.decode(from:) in conformance AttributeScopes.FoundationAttributes.ListItemDelimiterAttribute@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized static AttributeScopes.FoundationAttributes.ListItemDelimiterAttribute.decode(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

id protocol witness for static ObjectiveCConvertibleAttributedStringKey.value(for:) in conformance AttributeScopes.FoundationAttributes.ListItemDelimiterAttribute@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = specialized static AttributeScopes.FoundationAttributes.ListItemDelimiterAttribute.value(for:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t AttributeScopes.FoundationAttributes.MeasurementAttribute.Component.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

BOOL static AttributeScopes.FoundationAttributes.ByteCountAttribute.Component.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(v2)
  {
    case 11:
      return v3 == 11;
    case 10:
      return v3 == 10;
    case 9:
      return v3 == 9;
  }

  if ((v3 - 9) < 3)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Component.CodingKeys()
{
  v1 = 0x65756C6176;
  v2 = 1953066613;
  if (*v0 != 2)
  {
    v2 = 0x79426C6175746361;
  }

  if (*v0)
  {
    v1 = 0x4F64656C6C657073;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Component.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized AttributeScopes.FoundationAttributes.ByteCountAttribute.Component.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Component.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.ByteCountAttribute.Component.CodingKeys and conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Component.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Component.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.ByteCountAttribute.Component.CodingKeys and conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Component.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AttributeScopes.FoundationAttributes.ByteCountAttribute.Component.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation33DefaultAssociatedValueCodingKeys1OGMd);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v18 - v4;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation15EmptyCodingKeysOGMd);
  v5 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v7 = &v18 - v6;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation15AttributeScopesO0D10AttributesV09ByteCountE0O9ComponentO10CodingKeys33_163072BBDC91CE21DC09F272FDEEA67DLLOGMd);
  v8 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v10 = &v18 - v9;
  v11 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.ByteCountAttribute.Component.CodingKeys and conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Component.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  switch(v11)
  {
    case 11:
      v27 = 3;
      lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
      goto LABEL_7;
    case 10:
      v24 = 1;
      lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
LABEL_7:
      v14 = v22;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v5 + 8))(v7, v21);
      return (*(v8 + 8))(v10, v14);
    case 9:
      v23 = 0;
      lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
      v12 = v22;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v5 + 8))(v7, v21);
      return (*(v8 + 8))(v10, v12);
    default:
      v26 = 2;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      v15 = v18;
      v16 = v22;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v25 = v11;
      lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit and conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit();
      v17 = v20;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v19 + 8))(v15, v17);
      return (*(v8 + 8))(v10, v16);
  }
}

uint64_t AttributeScopes.FoundationAttributes.ByteCountAttribute.Component.hash(into:)()
{
  v1 = *v0;
  if ((v1 - 9) >= 3u)
  {
    MEMORY[0x1865CD060](2);
  }

  else
  {
    v1 = qword_181231A18[(v1 - 9)];
  }

  return MEMORY[0x1865CD060](v1);
}

Swift::Int AttributeScopes.FoundationAttributes.ByteCountAttribute.Component.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if ((v1 - 9) >= 3u)
  {
    MEMORY[0x1865CD060](2);
  }

  else
  {
    v1 = qword_181231A18[(v1 - 9)];
  }

  MEMORY[0x1865CD060](v1);
  return Hasher._finalize()();
}

uint64_t AttributeScopes.FoundationAttributes.ByteCountAttribute.Component.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation33DefaultAssociatedValueCodingKeys1OGMd);
  v4 = *(v3 - 8);
  v40 = v3;
  v41 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v44 = &v40 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation15EmptyCodingKeysOGMd);
  v43 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v40 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation15AttributeScopesO0D10AttributesV09ByteCountE0O9ComponentO10CodingKeys33_163072BBDC91CE21DC09F272FDEEA67DLLOGMd);
  v45 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v40 - v16;
  v18 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.ByteCountAttribute.Component.CodingKeys and conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Component.CodingKeys();
  v19 = v46;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(v47);
  }

  v46 = 0;
  v20 = v44;
  v21 = v17;
  v22 = KeyedDecodingContainer.allKeys.getter();
  v23 = *(v22 + 16);
  if (!v23 || ((v24 = *(v22 + 32), v23 == 1) ? (v25 = v24 == 4) : (v25 = 1), v25))
  {
    v26 = type metadata accessor for DecodingError();
    swift_allocError();
    v27 = v15;
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v29 = &type metadata for AttributeScopes.FoundationAttributes.ByteCountAttribute.Component;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v26 - 8) + 104))(v29, *MEMORY[0x1E69E6AF8], v26);
    swift_willThrow();
    (*(v45 + 8))(v21, v27);
LABEL_9:
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v47);
  }

  if (*(v22 + 32) > 1u)
  {
    v34 = v43;
    if (v24 == 2)
    {
      v51 = 2;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      v35 = v20;
      v36 = v46;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v36)
      {
        lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit and conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit();
        v39 = v40;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v41 + 8))(v35, v39);
        (*(v45 + 8))(v17, v15);
        swift_unknownObjectRelease();
        v33 = v50;
        goto LABEL_27;
      }

      (*(v45 + 8))(v17, v15);
    }

    else
    {
      v52 = 3;
      lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
      v38 = v46;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v38)
      {
        (*(v34 + 8))(v8, v6);
        (*(v45 + 8))(v17, v15);
        swift_unknownObjectRelease();
        v33 = 11;
        goto LABEL_27;
      }

      (*(v45 + 8))(v17, v15);
    }

    goto LABEL_9;
  }

  v31 = v45;
  if (*(v22 + 32))
  {
    v49 = 1;
    lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
    v37 = v46;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    if (!v37)
    {
      (*(v43 + 8))(v11, v6);
      (*(v31 + 8))(v17, v15);
      swift_unknownObjectRelease();
      v33 = 10;
      goto LABEL_27;
    }
  }

  else
  {
    v48 = 0;
    lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
    v32 = v46;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    if (!v32)
    {
      (*(v43 + 8))(v14, v6);
      (*(v31 + 8))(v17, v15);
      swift_unknownObjectRelease();
      v33 = 9;
LABEL_27:
      *v42 = v33;
      return __swift_destroy_boxed_opaque_existential_1(v47);
    }
  }

  (*(v31 + 8))(v17, v15);
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v47);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Component()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if ((v1 - 9) >= 3u)
  {
    MEMORY[0x1865CD060](2);
  }

  else
  {
    v1 = qword_181231A18[(v1 - 9)];
  }

  MEMORY[0x1865CD060](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Component()
{
  v1 = *v0;
  if ((v1 - 9) >= 3u)
  {
    MEMORY[0x1865CD060](2);
  }

  else
  {
    v1 = qword_181231A18[(v1 - 9)];
  }

  return MEMORY[0x1865CD060](v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Component()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if ((v1 - 9) >= 3u)
  {
    MEMORY[0x1865CD060](2);
  }

  else
  {
    v1 = qword_181231A18[(v1 - 9)];
  }

  MEMORY[0x1865CD060](v1);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Component(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(v2)
  {
    case 11:
      return v3 == 11;
    case 10:
      return v3 == 10;
    case 9:
      return v3 == 9;
  }

  if ((v3 - 9) < 3)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 1702132066;
    v6 = 25197;
    if (a1 != 2)
    {
      v6 = 25191;
    }

    if (a1)
    {
      v5 = 25195;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 25189;
    v2 = 25210;
    if (a1 != 7)
    {
      v2 = 25209;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 25204;
    if (a1 != 4)
    {
      v3 = 25200;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit.CodingKeys and conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit.CodingKeys and conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit.encode(to:)(void *a1)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation15EmptyCodingKeysOGMd);
  v3 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v5 = &v12 - v4;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation15AttributeScopesO0D10AttributesV09ByteCountE0O4UnitO10CodingKeys33_163072BBDC91CE21DC09F272FDEEA67DLLOGMd);
  v6 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v8 = &v12 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit.CodingKeys and conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v9 <= 3)
  {
    if (v9 > 1)
    {
      if (v9 == 2)
      {
        v16 = 2;
      }

      else
      {
        v17 = 3;
      }
    }

    else if (v9)
    {
      v15 = 1;
    }

    else
    {
      v14 = 0;
    }
  }

  else if (v9 <= 5)
  {
    if (v9 == 4)
    {
      v18 = 4;
    }

    else
    {
      v19 = 5;
    }
  }

  else
  {
    if (v9 == 6)
    {
      v20 = 6;
      lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
      goto LABEL_19;
    }

    if (v9 == 7)
    {
      v21 = 7;
    }

    else
    {
      v22 = 8;
    }
  }

  lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
LABEL_19:
  v10 = v13;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v3 + 8))(v5, v12);
  return (*(v6 + 8))(v8, v10);
}

uint64_t AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v71 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation15EmptyCodingKeysOGMd);
  v4 = *(v3 - 8);
  v68 = v3;
  v69 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v67 = &v61[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v66 = &v61[-v7];
  MEMORY[0x1EEE9AC00](v8);
  v65 = &v61[-v9];
  MEMORY[0x1EEE9AC00](v10);
  v70 = &v61[-v11];
  MEMORY[0x1EEE9AC00](v12);
  v64 = &v61[-v13];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v61[-v15];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v61[-v18];
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v61[-v21];
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v61[-v24];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation15AttributeScopesO0D10AttributesV09ByteCountE0O4UnitO10CodingKeys33_163072BBDC91CE21DC09F272FDEEA67DLLOGMd);
  v72 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v61[-v27];
  v29 = a1[3];
  v74 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit.CodingKeys and conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit.CodingKeys();
  v30 = v73;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v30)
  {
    goto LABEL_10;
  }

  v63 = 0;
  v32 = v70;
  v31 = v71;
  v73 = v28;
  v33 = KeyedDecodingContainer.allKeys.getter();
  v34 = *(v33 + 16);
  if (v34)
  {
    v35 = *(v33 + 32);
    if (v34 == 1 && v35 != 9)
    {
      v62 = *(v33 + 32);
      if (v35 > 3)
      {
        v43 = v73;
        if (v35 > 5)
        {
          v44 = v31;
          v45 = v72;
          if (v35 == 6)
          {
            v81 = 6;
            lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
            v56 = v65;
            v57 = v63;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            if (v57)
            {
LABEL_35:
              (*(v45 + 8))(v43, v26);
              goto LABEL_9;
            }

            (*(v69 + 8))(v56, v68);
          }

          else
          {
            v46 = v63;
            if (v35 == 7)
            {
              v82 = 7;
              lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
              v47 = v66;
            }

            else
            {
              v83 = 8;
              lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
              v47 = v67;
            }

            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            if (v46)
            {
              goto LABEL_35;
            }

            (*(v69 + 8))(v47, v68);
          }

          (*(v45 + 8))(v43, v26);
          goto LABEL_46;
        }

        v44 = v31;
        if (v35 == 4)
        {
          v79 = 4;
          lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
          v54 = v63;
          v55 = v64;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v54)
          {
            (*(v69 + 8))(v55, v68);
LABEL_45:
            (*(v72 + 8))(v43, v26);
LABEL_46:
            swift_unknownObjectRelease();
            v41 = v74;
            goto LABEL_47;
          }
        }

        else
        {
          v80 = 5;
          lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
          v60 = v63;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v60)
          {
            (*(v69 + 8))(v32, v68);
            goto LABEL_45;
          }
        }

        (*(v72 + 8))(v43, v26);
        goto LABEL_9;
      }

      if (v35 <= 1)
      {
        v44 = v31;
        v48 = v72;
        if (v35)
        {
          v76 = 1;
          lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
          v49 = v73;
          v58 = v63;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (v58)
          {
            goto LABEL_20;
          }

          (*(v69 + 8))(v22, v68);
          (*(v48 + 8))(v49, v26);
          swift_unknownObjectRelease();
          v41 = v74;
        }

        else
        {
          v75 = 0;
          lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
          v49 = v73;
          v50 = v63;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (v50)
          {
LABEL_20:
            (*(v48 + 8))(v49, v26);
            swift_unknownObjectRelease();
            v41 = v74;
            return __swift_destroy_boxed_opaque_existential_1(v41);
          }

          (*(v69 + 8))(v25, v68);
          (*(v48 + 8))(v49, v26);
          swift_unknownObjectRelease();
          v41 = v74;
        }

LABEL_47:
        *v44 = v62;
        return __swift_destroy_boxed_opaque_existential_1(v41);
      }

      v51 = v72;
      if (v35 == 2)
      {
        v77 = 2;
        lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
        v52 = v73;
        v53 = v63;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v53)
        {
          (*(v69 + 8))(v19, v68);
LABEL_43:
          (*(v51 + 8))(v52, v26);
          swift_unknownObjectRelease();
          v41 = v74;
          v44 = v31;
          goto LABEL_47;
        }
      }

      else
      {
        v78 = 3;
        lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
        v52 = v73;
        v59 = v63;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v59)
        {
          (*(v69 + 8))(v16, v68);
          goto LABEL_43;
        }
      }

      (*(v51 + 8))(v52, v26);
      swift_unknownObjectRelease();
      v41 = v74;
      return __swift_destroy_boxed_opaque_existential_1(v41);
    }
  }

  v37 = type metadata accessor for DecodingError();
  swift_allocError();
  v39 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
  *v39 = &type metadata for AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit;
  v40 = v73;
  KeyedDecodingContainer.codingPath.getter();
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v37);
  swift_willThrow();
  (*(v72 + 8))(v40, v26);
LABEL_9:
  swift_unknownObjectRelease();
LABEL_10:
  v41 = v74;
  return __swift_destroy_boxed_opaque_existential_1(v41);
}

unint64_t AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 8;
  if (result < 8)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value.CodingKeys()
{
  v1 = 1953393013;
  v2 = 0x656C62756F64;
  if (*v0 != 2)
  {
    v2 = 0x6C616D69636564;
  }

  if (*v0)
  {
    v1 = 7630441;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value.CodingKeys and conformance AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value.CodingKeys and conformance AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation33DefaultAssociatedValueCodingKeys1OGMd);
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v38 = &v32[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v37 = &v32[-v6];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32[-v8];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32[-v11];
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation15AttributeScopesO0D10AttributesV023LocalizedStringArgumentG0V0h7NumericjE0O5ValueO10CodingKeys33_163072BBDC91CE21DC09F272FDEEA67DLLOGMd);
  v40 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v14 = &v32[-v13];
  v15 = v1[1];
  v39 = *v1;
  v36 = *(v1 + 4);
  v16 = *(v1 + 20);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value.CodingKeys and conformance AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value.CodingKeys();
  v17 = v14;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v16 <= 1)
  {
    if (!v16)
    {
      LOBYTE(v44) = 0;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      v18 = v43;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v19 = v42;
      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v41 + 8))(v12, v19);
      return (*(v40 + 8))(v14, v18);
    }

    LOBYTE(v44) = 1;
    lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
    v22 = v43;
    v23 = v14;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v25 = v42;
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v41 + 8))(v9, v25);
    return (*(v40 + 8))(v23, v22);
  }

  if (v16 == 2)
  {
    LOBYTE(v44) = 2;
    lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
    v21 = v37;
    v22 = v43;
    v23 = v14;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v24 = v42;
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v41 + 8))(v21, v24);
    return (*(v40 + 8))(v23, v22);
  }

  v26 = v39;
  v27 = HIDWORD(v39);
  v28 = HIWORD(v39);
  v34 = v15 >> 16;
  v35 = HIDWORD(v15);
  v37 = HIWORD(v15);
  LOBYTE(v44) = 3;
  v29 = v36;
  v33 = HIWORD(v36);
  lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
  v30 = v38;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v44 = v26;
  v45 = v27;
  v46 = v28;
  v47 = v15;
  v48 = v34;
  v49 = v35;
  v50 = v37;
  v51 = v29;
  v52 = v33;
  type metadata accessor for NSDecimal(0);
  lazy protocol witness table accessor for type NSDecimal and conformance NSDecimal(&lazy protocol witness table cache variable for type NSDecimal and conformance NSDecimal, type metadata accessor for NSDecimal);
  v31 = v42;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v41 + 8))(v30, v31);
  return (*(v40 + 8))(v17, v43);
}

uint64_t AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 20);
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      MEMORY[0x1865CD060](2);
      if ((v1 & 0x7FFFFFFFFFFFFFFFLL) == 0)
      {
        v1 = 0;
      }
    }

    else
    {
      v3 = *(v0 + 16);
      v4 = *(v0 + 8);
      MEMORY[0x1865CD060](3);
      NSDecimal.doubleValue.getter(v1, v4, v3);
      if (v5 == 0.0)
      {
        v5 = 0.0;
      }

      v1 = *&v5;
    }
  }

  else
  {
    MEMORY[0x1865CD060](v2 != 0);
  }

  return MEMORY[0x1865CD090](v1);
}

Swift::Int AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 20);
  Hasher.init(_seed:)();
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      MEMORY[0x1865CD060](2);
      if ((v1 & 0x7FFFFFFFFFFFFFFFLL) == 0)
      {
        v1 = 0;
      }
    }

    else
    {
      MEMORY[0x1865CD060](3);
      NSDecimal.doubleValue.getter(v1, v2, v3);
      if (v5 == 0.0)
      {
        v5 = 0.0;
      }

      v1 = *&v5;
    }
  }

  else
  {
    MEMORY[0x1865CD060](v4 != 0);
  }

  MEMORY[0x1865CD090](v1);
  return Hasher._finalize()();
}

uint64_t AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation33DefaultAssociatedValueCodingKeys1OGMd);
  v4 = *(v3 - 8);
  v51 = v3;
  v52 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v50 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v50 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v50 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation15AttributeScopesO0D10AttributesV023LocalizedStringArgumentG0V0h7NumericjE0O5ValueO10CodingKeys33_163072BBDC91CE21DC09F272FDEEA67DLLOGMd);
  v54 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v50 - v17;
  v19 = a1[3];
  v56 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value.CodingKeys and conformance AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value.CodingKeys();
  v20 = v55;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v20)
  {
    v55 = v18;
    v21 = KeyedDecodingContainer.allKeys.getter();
    v22 = v21;
    v23 = *(v21 + 16);
    if (v23)
    {
      v24 = *(v21 + 32);
      if (v23 == 1 && v24 != 4)
      {
        if (*(v21 + 32) > 1u)
        {
          if (v24 == 2)
          {
            LOBYTE(v57) = 2;
            lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
            v39 = v55;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            v40 = v51;
            KeyedDecodingContainer.decode(_:forKey:)();
            v49 = v48;
            (*(v52 + 8))(v9, v40);
            (*(v54 + 8))(v39, v16);
            swift_unknownObjectRelease();
            v37 = 0;
            v38 = 0;
            v36 = v49;
          }

          else
          {
            LOBYTE(v57) = 3;
            lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
            v44 = v55;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            v50 = v22;
            type metadata accessor for NSDecimal(0);
            lazy protocol witness table accessor for type NSDecimal and conformance NSDecimal(&lazy protocol witness table cache variable for type NSDecimal and conformance NSDecimal, type metadata accessor for NSDecimal);
            v46 = v51;
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            v47 = v54;
            (*(v52 + 8))(v6, v46);
            (*(v47 + 8))(v44, v16);
            swift_unknownObjectRelease();
            v36 = v57;
            v37 = v58;
            v38 = v59;
          }
        }

        else
        {
          v50 = v21;
          v31 = v53;
          if (!v24)
          {
            LOBYTE(v57) = 0;
            lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
            v32 = v15;
            v33 = v55;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            v34 = v54;
            v35 = v51;
            v36 = KeyedDecodingContainer.decode(_:forKey:)();
            (*(v52 + 8))(v32, v35);
            (*(v34 + 8))(v33, v16);
            swift_unknownObjectRelease();
            v37 = 0;
            v38 = 0;
LABEL_18:
            *v31 = v36;
            *(v31 + 8) = v37;
            *(v31 + 16) = v38;
            *(v31 + 20) = v24;
            return __swift_destroy_boxed_opaque_existential_1(v56);
          }

          LOBYTE(v57) = 1;
          lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
          v41 = v12;
          v42 = v55;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v43 = v54;
          v45 = v51;
          v36 = KeyedDecodingContainer.decode(_:forKey:)();
          (*(v52 + 8))(v41, v45);
          (*(v43 + 8))(v42, v16);
          swift_unknownObjectRelease();
          v37 = 0;
          v38 = 0;
        }

        v31 = v53;
        goto LABEL_18;
      }
    }

    v26 = type metadata accessor for DecodingError();
    swift_allocError();
    v28 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v28 = &type metadata for AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value;
    v29 = v55;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
    swift_willThrow();
    (*(v54 + 8))(v29, v16);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v56);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 20);
  Hasher.init(_seed:)();
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      MEMORY[0x1865CD060](2);
      if ((v1 & 0x7FFFFFFFFFFFFFFFLL) == 0)
      {
        v1 = 0;
      }
    }

    else
    {
      MEMORY[0x1865CD060](3);
      NSDecimal.doubleValue.getter(v1, v2, v3);
      if (v5 == 0.0)
      {
        v5 = 0.0;
      }

      v1 = *&v5;
    }
  }

  else
  {
    MEMORY[0x1865CD060](v4 != 0);
  }

  MEMORY[0x1865CD090](v1);
  return Hasher._finalize()();
}

uint64_t static AttributeScopes.FoundationAttributes.LinkAttribute.objectiveCValue(for:)(uint64_t a1)
{
  v1 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 432))(ObjectType, v1);
}

void static AttributeScopes.FoundationAttributes.LinkAttribute.value(for:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v92 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = a1;
    if (_foundation_swift_nsurl_feature_enabled())
    {
      type metadata accessor for _NSSwiftURL();
      v7 = swift_dynamicCastClass();
      if (v7)
      {
        v8 = v7;
        type metadata accessor for _BridgedNSSwiftURL();
        *(swift_allocObject() + 16) = v8;
        v9 = v6;
        v10 = _BridgedNSSwiftURL.convertingFileReference()();
        v12 = v11;

LABEL_16:
        *a2 = v10;
        a2[1] = v12;
        return;
      }

      v25 = type metadata accessor for _BridgedURL();
      v26 = objc_allocWithZone(v25);
      *&v26[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] = v5;
      v85.receiver = v26;
      v85.super_class = v25;
      v23 = v6;
      v24 = objc_msgSendSuper2(&v85, sel_init, v85.receiver, v85.super_class, v86.receiver, v86.super_class);
    }

    else
    {
      v21 = type metadata accessor for _BridgedURL();
      v22 = objc_allocWithZone(v21);
      *&v22[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] = v5;
      v86.receiver = v22;
      v86.super_class = v21;
      v23 = v6;
      v24 = objc_msgSendSuper2(&v86, sel_init, v85.receiver, v85.super_class, v86.receiver, v86.super_class);
    }

    v27 = v24;
    v10 = _BridgedURL.convertingFileReference()();
    v12 = v28;

    goto LABEL_16;
  }

  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (!v13)
  {
    goto LABEL_37;
  }

  v14 = v13;
  isTaggedPointer = _objc_isTaggedPointer(v13);
  v16 = a1;
  if (!isTaggedPointer)
  {
    goto LABEL_12;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v14);
  if (!TaggedPointerTag)
  {
    v89 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v34 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v35)
    {
      v18 = v34;
      v20 = v35;
    }

    else
    {
      [v14 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v18 = v87;
      v20 = v88;
    }

    goto LABEL_28;
  }

  if (TaggedPointerTag == 22)
  {
    v29 = v16;
    v32 = [v14 UTF8String];
    v33 = v14;
    if (v32)
    {
      v30 = String.init(utf8String:)(v32);
      if (v31)
      {
        goto LABEL_23;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_102;
  }

  if (TaggedPointerTag != 2)
  {
LABEL_12:
    LOBYTE(v87) = 0;
    v91 = 0;
    LOBYTE(v89) = 0;
    v90 = 0;
    if (__CFStringIsCF())
    {

LABEL_20:
      v18 = 0;
      v20 = 0xE000000000000000;
      goto LABEL_28;
    }

    v29 = v16;
    v30 = String.init(_nativeStorage:)();
    if (!v31)
    {
      v91 = [v14 length];
      if (v91)
      {
        v18 = String.init(_cocoaString:)();
        v20 = v36;
        goto LABEL_28;
      }

      goto LABEL_20;
    }

LABEL_23:
    v18 = v30;
    v20 = v31;

    goto LABEL_28;
  }

  MEMORY[0x1EEE9AC00](TaggedPointerTag);
  v18 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v20 = v19;

LABEL_28:
  if (one-time initialization token for compatibility2 != -1)
  {
    swift_once();
  }

  if ((static URL.compatibility2 & 1) != 0 || (_foundation_swift_url_feature_enabled() & 1) == 0)
  {
    v37 = type metadata accessor for _BridgedURL();
    v38 = &protocol witness table for _BridgedURL;
  }

  else
  {
    v37 = type metadata accessor for _SwiftURL();
    v38 = &protocol witness table for _SwiftURL;
  }

  v39 = v38[1];

  if (v39(v18, v20, v37, v38))
  {
    v40 = (v38[56])(v37, v38);
    v42 = v41;

    swift_unknownObjectRelease();
    *a2 = v40;
    a2[1] = v42;
    return;
  }

LABEL_37:
  v43 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
  v44 = @"NSCocoaErrorDomain";
  v45 = v44;
  if (!v43)
  {
    goto LABEL_42;
  }

  v46 = _objc_getTaggedPointerTag(v44);
  switch(v46)
  {
    case 0:
LABEL_48:
      v89 = 0;
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v51)
      {
        [(__CFString *)v45 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        goto LABEL_55;
      }

      goto LABEL_53;
    case 0x16:
      v49 = [(__CFString *)v45 UTF8String];
      if (v49)
      {
        String.init(utf8String:)(v49);
        if (v50)
        {
          goto LABEL_53;
        }

        __break(1u);
        goto LABEL_48;
      }

LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
      goto LABEL_104;
    case 2:
      MEMORY[0x1EEE9AC00](v46);
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      goto LABEL_55;
  }

LABEL_42:
  LOBYTE(v87) = 0;
  v91 = 0;
  LOBYTE(v89) = 0;
  v90 = 0;
  if (__CFStringIsCF())
  {
LABEL_53:

    goto LABEL_55;
  }

  v47 = v45;
  String.init(_nativeStorage:)();
  if (!v48 && [(__CFString *)v47 length])
  {
    String.init(_cocoaString:)();
  }

  else
  {
  }

LABEL_55:
  v52 = objc_allocWithZone(NSError);
  v53 = String._bridgeToObjectiveCImpl()();

  v54 = [v52 initWithDomain:v53 code:4866 userInfo:_NativeDictionary.bridged()()];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v55 = [v54 domain];
  if (!v55)
  {
LABEL_65:
    v61 = 0;
    v63 = 0xE000000000000000;
    goto LABEL_76;
  }

  v56 = v55;
  v57 = _objc_isTaggedPointer(v55);
  v58 = v56;
  v59 = v58;
  if ((v57 & 1) == 0)
  {
    goto LABEL_61;
  }

  v60 = _objc_getTaggedPointerTag(v58);
  switch(v60)
  {
    case 0:
      goto LABEL_69;
    case 0x16:
      v67 = [v59 UTF8String];
      if (!v67)
      {
LABEL_104:
        __break(1u);
        return;
      }

      v68 = String.init(utf8String:)(v67);
      if (v69)
      {
LABEL_70:
        v61 = v68;
        v63 = v69;

        goto LABEL_75;
      }

      __break(1u);
LABEL_69:
      v89 = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v68 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v69)
      {
        [v59 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v61 = v87;
        v63 = v88;
        goto LABEL_75;
      }

      goto LABEL_70;
    case 2:
      MEMORY[0x1EEE9AC00](v60);
      v61 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v63 = v62;

      goto LABEL_76;
  }

LABEL_61:
  LOBYTE(v87) = 0;
  v91 = 0;
  LOBYTE(v89) = 0;
  v90 = 0;
  if (__CFStringIsCF())
  {

    goto LABEL_65;
  }

  v64 = v59;
  v65 = String.init(_nativeStorage:)();
  if (v66)
  {
    v61 = v65;
    v63 = v66;

    goto LABEL_76;
  }

  if (![v64 length])
  {

    goto LABEL_65;
  }

  v61 = String.init(_cocoaString:)();
  v63 = v70;
LABEL_75:

LABEL_76:
  v71 = v45;
  v72 = v71;
  if (!v43)
  {
    goto LABEL_81;
  }

  v73 = _objc_getTaggedPointerTag(v71);
  if (!v73)
  {
    goto LABEL_88;
  }

  if (v73 != 22)
  {
    if (v73 == 2)
    {
      MEMORY[0x1EEE9AC00](v73);
      v74 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v76 = v75;

      goto LABEL_94;
    }

LABEL_81:
    LOBYTE(v87) = 0;
    v91 = 0;
    LOBYTE(v89) = 0;
    v90 = 0;
    if (__CFStringIsCF())
    {
      v74 = v91;

      v76 = 0xE000000000000000;
    }

    else
    {
      v77 = v72;
      v78 = String.init(_nativeStorage:)();
      if (v79)
      {
        v74 = v78;
        v76 = v79;
      }

      else if ([(__CFString *)v77 length])
      {
        v74 = String.init(_cocoaString:)();
        v76 = v83;
      }

      else
      {

        v74 = 0;
        v76 = 0xE000000000000000;
      }
    }

    goto LABEL_94;
  }

  v80 = [(__CFString *)v72 UTF8String];
  if (!v80)
  {
    goto LABEL_103;
  }

  v81 = String.init(utf8String:)(v80);
  if (v82)
  {
LABEL_89:
    v74 = v81;
    v76 = v82;

    goto LABEL_94;
  }

  __break(1u);
LABEL_88:
  v89 = 0;
  _CFIndirectTaggedPointerStringGetContents();
  v81 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
  if (v82)
  {
    goto LABEL_89;
  }

  [(__CFString *)v72 mutableCopy];
  _bridgeAnyObjectToAny(_:)();

  swift_unknownObjectRelease();
  swift_dynamicCast();
  v74 = v87;
  v76 = v88;
LABEL_94:
  if (v61 == v74 && v63 == v76)
  {
  }

  else
  {
    v84 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v84 & 1) == 0)
    {
      __break(1u);
    }
  }

  swift_willThrow();
}

uint64_t protocol witness for static ObjectiveCConvertibleAttributedStringKey.objectiveCValue(for:) in conformance AttributeScopes.FoundationAttributes.LinkAttribute(uint64_t a1)
{
  v1 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 432))(ObjectType, v1);
}

NSLocalizedNumberFormatRule __swiftcall AttributeScopes.FoundationAttributes.LocalizedNumberFormatAttribute.Value._bridgeToObjectiveC()()
{
  v0 = [objc_opt_self() automatic];

  return v0;
}

id protocol witness for _ObjectiveCBridgeable._bridgeToObjectiveC() in conformance AttributeScopes.FoundationAttributes.LocalizedNumberFormatAttribute.Value()
{
  v0 = [objc_opt_self() automatic];

  return v0;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance AttributedString.WritingDirection.CodingKeys()
{
  if (*v0)
  {
    return 0x4C6F547468676972;
  }

  else
  {
    return 0x69526F547466656CLL;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AttributedString.WritingDirection.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0x69526F547466656CLL && a2 == 0xEB00000000746867 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x4C6F547468676972 && a2 == 0xEB00000000746665)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AttributedString.WritingDirection.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AttributedString.WritingDirection.CodingKeys and conformance AttributedString.WritingDirection.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttributedString.WritingDirection.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AttributedString.WritingDirection.CodingKeys and conformance AttributedString.WritingDirection.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AttributedString.WritingDirection.encode(to:)(void *a1, int a2)
{
  v13 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation15EmptyCodingKeysOGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation16AttributedStringV16WritingDirectionO10CodingKeys33_163072BBDC91CE21DC09F272FDEEA67DLLOGMd);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AttributedString.WritingDirection.CodingKeys and conformance AttributedString.WritingDirection.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v13)
  {
    v15 = 1;
  }

  else
  {
    v14 = 0;
  }

  lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}
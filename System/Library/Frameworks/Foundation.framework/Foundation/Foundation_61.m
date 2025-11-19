Swift::Int AttributedString.Runs.subscript.getter@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v53 = a4;
  v54 = a5;
  v52 = a9;
  v14 = type metadata accessor for AttributedString.Runs();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttributedString.Runs(v9, v16, type metadata accessor for AttributedString.Runs);
  v51 = v16;
  outlined init with copy of AttributedString.Runs(v16, a5, type metadata accessor for AttributedString.Runs);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_18121D6C0;
  *(v17 + 32) = (*(a6 + 24))(a1, a6);
  *(v17 + 40) = v18;
  *(v17 + 48) = (*(a7 + 24))(a2, a7);
  *(v17 + 56) = v19;
  *(v17 + 64) = (*(a8 + 24))(a3, a8);
  *(v17 + 72) = v20;
  v21 = v52;
  v22 = v53;
  *(v17 + 80) = (*(v52 + 24))(v53, v52);
  *(v17 + 88) = v23;
  v56 = a1;
  v57 = a2;
  v58 = a3;
  v59 = v22;
  v60 = a6;
  v61 = a7;
  v62 = a8;
  v63 = v21;
  v50 = type metadata accessor for AttributedString.Runs.AttributesSlice4();
  *(v54 + *(v50 + 84)) = v17;
  v24 = *(a6 + 32);
  v55 = &v64;
  v24(a1, a6);
  (*(a7 + 32))(a2, a7);
  (*(a8 + 32))(a3, a8);
  (*(v21 + 32))(v22, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOSgGMd);
  v25 = static _SetStorage.allocate(capacity:)();
  v26 = 0;
  v27 = v25 + 56;
  while (1)
  {
    v30 = &v55[2 * v26];
    v31 = *v30;
    v32 = v30[1];
    Hasher.init(_seed:)();
    if (v32 == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      if (v32)
      {
        MEMORY[0x1865CD060](1);
        String.hash(into:)();
      }

      else
      {
        MEMORY[0x1865CD060](0);
      }
    }

    result = Hasher._finalize()();
    v34 = ~(-1 << *(v25 + 32));
    v35 = result & v34;
    v36 = (result & v34) >> 6;
    v37 = *(v27 + 8 * v36);
    v38 = 1 << (result & v34);
    if ((v38 & v37) == 0)
    {
      break;
    }

    while (1)
    {
      v39 = (*(v25 + 48) + 16 * v35);
      v41 = *v39;
      v40 = v39[1];
      if (v40 == 1)
      {
        if (v32 == 1)
        {
          outlined copy of AttributedString.AttributeRunBoundaries?(*v39, 1);
          v28 = v41;
          v29 = 1;
          goto LABEL_2;
        }

LABEL_14:
        outlined copy of AttributedString.AttributeRunBoundaries?(*v39, v39[1]);
        outlined copy of AttributedString.AttributeRunBoundaries?(v31, v32);
        outlined consume of AttributedString.AttributeRunBoundaries?(v41, v40);
        v42 = v31;
        v43 = v32;
LABEL_15:
        result = outlined consume of AttributedString.AttributeRunBoundaries?(v42, v43);
        goto LABEL_16;
      }

      if (v32 == 1)
      {
        goto LABEL_14;
      }

      if (!v40)
      {
        break;
      }

      if (!v32)
      {
        outlined copy of AttributedString.AttributeRunBoundaries?(*v39, v39[1]);
        outlined copy of AttributedString.AttributeRunBoundaries?(v31, 0);
        outlined copy of AttributedString.AttributeRunBoundaries?(v41, v40);

        v42 = v41;
        v43 = v40;
        goto LABEL_15;
      }

      if (v41 == v31 && v40 == v32)
      {
        outlined copy of AttributedString.AttributeRunBoundaries?(v31, v32);
        outlined copy of AttributedString.AttributeRunBoundaries?(v31, v32);

LABEL_33:
        v28 = v31;
        v29 = v32;
        goto LABEL_2;
      }

      v45 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined copy of AttributedString.AttributeRunBoundaries?(v41, v40);
      outlined copy of AttributedString.AttributeRunBoundaries?(v31, v32);
      outlined copy of AttributedString.AttributeRunBoundaries?(v41, v40);

      if (v45)
      {
        outlined consume of AttributedString.AttributeRunBoundaries?(v31, v32);
        v31 = v41;
        v32 = v40;
        goto LABEL_33;
      }

      result = outlined consume of AttributedString.AttributeRunBoundaries?(v41, v40);
LABEL_16:
      v35 = (v35 + 1) & v34;
      v36 = v35 >> 6;
      v37 = *(v27 + 8 * (v35 >> 6));
      v38 = 1 << v35;
      if ((v37 & (1 << v35)) == 0)
      {
        goto LABEL_29;
      }
    }

    outlined copy of AttributedString.AttributeRunBoundaries?(*v39, 0);
    if (v32)
    {
      outlined copy of AttributedString.AttributeRunBoundaries?(v31, v32);

      v42 = v41;
      v43 = 0;
      goto LABEL_15;
    }

    swift_bridgeObjectRelease_n();
    v28 = v41;
    v29 = 0;
LABEL_2:
    outlined consume of AttributedString.AttributeRunBoundaries?(v28, v29);
LABEL_3:
    if (++v26 == 4)
    {
      outlined destroy of AttributedString.Runs(v51, type metadata accessor for AttributedString.Runs);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV22AttributeRunBoundariesOSgMd);
      result = swift_arrayDestroy();
      *(v54 + *(v50 + 88)) = v25;
      return result;
    }
  }

LABEL_29:
  *(v27 + 8 * v36) = v37 | v38;
  v46 = (*(v25 + 48) + 16 * v35);
  *v46 = v31;
  v46[1] = v32;
  v47 = *(v25 + 16);
  v48 = __OFADD__(v47, 1);
  v49 = v47 + 1;
  if (!v48)
  {
    *(v25 + 16) = v49;
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

uint64_t AttributedString.Runs.AttributesSlice4.makeIterator()@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 1);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v4 + 16);
  v8(v7, v5);
  result = (v8)(a2, v7, a1);
  v10 = *(v7 + 12);
  if (v10 == 2)
  {
    __break(1u);
  }

  else
  {
    v11 = *(v7 + 11);
    v16[0] = *(v7 + 72);
    v12 = *(*v7 + 16);
    (*(v4 + 8))(v7, a1);
    v13 = a1[2];
    v16[1] = a1[1];
    v16[2] = v13;
    v14 = a1[4];
    v16[3] = a1[3];
    v16[4] = v14;
    result = type metadata accessor for AttributedString.Runs.AttributesSlice4.Iterator();
    v15 = a2 + *(result + 84);
    *v15 = v16[0];
    *(v15 + 16) = v11;
    *(v15 + 24) = v10;
    *(v15 + 32) = v12;
  }

  return result;
}

uint64_t AttributedString.Runs.AttributesSlice4.Iterator.next()@<X0>(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  v3 = v2;
  v541 = a2;
  v5 = *(a1 + 40);
  *(&v549 + 1) = *(a1 + 72);
  v551 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v539.i64[1] = type metadata accessor for Optional();
  v506 = *(v539.i64[1] - 8);
  MEMORY[0x1EEE9AC00](v539.i64[1]);
  v509 = &v477 - v6;
  v7 = *(a1 + 32);
  *&v549 = *(a1 + 64);
  v552 = v7;
  v522 = swift_getAssociatedTypeWitness();
  v539.i64[0] = type metadata accessor for Optional();
  v505 = *(v539.i64[0] - 8);
  MEMORY[0x1EEE9AC00](v539.i64[0]);
  v511 = (&v477 - v8);
  v9 = *(a1 + 24);
  v550 = *(a1 + 56);
  v553 = v9;
  v524 = swift_getAssociatedTypeWitness();
  v538.i64[1] = type metadata accessor for Optional();
  v504 = *(v538.i64[1] - 8);
  MEMORY[0x1EEE9AC00](v538.i64[1]);
  v525 = &v477 - v10;
  v11 = *(a1 + 48);
  v12 = *(a1 + 16);
  v523 = swift_getAssociatedTypeWitness();
  v538.i64[0] = type metadata accessor for Optional();
  v503 = *(v538.i64[0] - 8);
  MEMORY[0x1EEE9AC00](v538.i64[0]);
  v510 = &v477 - v13;
  v560.i64[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v561 = *(v560.i64[0] - 8);
  MEMORY[0x1EEE9AC00](v560.i64[0]);
  v565.i64[0] = &v477 - v14;
  v542 = type metadata accessor for AttributedString.Runs();
  MEMORY[0x1EEE9AC00](v542);
  v563 = (&v477 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v529 = (&v477 - v17);
  MEMORY[0x1EEE9AC00](v18);
  v559 = &v477 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v477 - v21);
  MEMORY[0x1EEE9AC00](v23);
  v558.i64[0] = &v477 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v557 = &v477 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  *&v515 = &v477 - v28;
  MEMORY[0x1EEE9AC00](v29);
  *(&v514 + 1) = &v477 - v30;
  MEMORY[0x1EEE9AC00](v31);
  *&v514 = &v477 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v547.i64[0] = &v477 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v544 = &v477 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v537 = (&v477 - v38);
  MEMORY[0x1EEE9AC00](v39);
  v548.i64[0] = &v477 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v562 = &v477 - v42;
  v44 = MEMORY[0x1EEE9AC00](v43);
  v46 = &v477 - v45;
  v540 = (v2 + *(a1 + 84));
  v47 = *v540;
  v49 = *(v48 + 16);
  v556 = v3;
  v554 = a1;
  v555 = (v48 + 16);
  (v49)(&v477 - v45, v3, a1, v44);
  if (*(v46 + 208) == 2)
  {
    goto LABEL_412;
  }

  v50 = *(v46 + 184);
  v519 = v12;
  v520 = v11;
  v51.i64[0] = v12;
  v51.i64[1] = v553;
  v52.i64[0] = v552;
  v52.i64[1] = v551;
  *&v53 = v11;
  *(&v53 + 1) = v550;
  v571 = v51;
  v572 = v52;
  *v573 = v53;
  *&v573[16] = v549;
  v54 = type metadata accessor for AttributedString.Runs.AttributesSlice4();
  v55 = *(v54 - 8);
  v56 = *(v55 + 8);
  v57 = v55 + 8;
  v56(v46, v54);
  if (v47 >> 10 == v50 >> 10)
  {
    v571 = v538;
    v572 = v539;
    *v573 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSny10Foundation16AttributedStringV5IndexVGMd);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    return (*(*(TupleTypeMetadata - 8) + 56))(v541, 1, 1, TupleTypeMetadata);
  }

  v543 = v47;
  *&v564 = v47 >> 10;
  v60 = v562;
  v61 = v556;
  v47 = v554;
  (v49)(v562, v556, v554);
  v62 = v558.i64[0];
  outlined init with copy of AttributedString.Runs(v60, v558.i64[0], type metadata accessor for AttributedString.Runs);
  v530 = v56;
  v56(v60, v54);
  LODWORD(v60) = *(v62 + *(v542 + 28));
  outlined destroy of AttributedString.Runs(v62, type metadata accessor for AttributedString.Runs);
  v11 = &v561->u64[1];
  v561 = (v561 + 8);
  v518 = v49;
  v512 = v54;
  v546 = v57;
  if (v60 != 1)
  {
    v70 = v557;
    (v49)(v557, v61, v47);
    outlined init with copy of AttributedString.Runs(v70, v563, type metadata accessor for AttributedString.Runs);
    (v530)(v70, v54);
    v71 = v540[2];
    v559 = v540[1];
    v558.i64[0] = v71;
    v557 = v540[3];
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
    v72 = v11;
    v11 = v565.i64[0];
    RangeSet.ranges.getter();
    v73 = v560.i64[0];
    v74 = RangeSet.Ranges.count.getter();
    v75 = *v72;
    (*v72)(v11, v73);
    if (v74 >= 1)
    {
      v47 = 0;
      do
      {
        if (__OFADD__(v47, v74))
        {
          goto LABEL_363;
        }

        v76 = (v47 + v74) / 2;
        v77 = v565.i64[0];
        RangeSet.ranges.getter();
        v78 = v560.i64[0];
        RangeSet.Ranges.subscript.getter();
        v75(v77, v78);
        v11 = v571.i64[0] >> 10;
        if (v564 >= v571.i64[0] >> 10)
        {
          v47 = *v573;
          if (v564 < *v573 >> 10)
          {
            v560 = v571;
            v548 = v572;
            v113 = v563->i64[0];
            v114 = v543;
            AttributedString.Guts.findRun(at:)(v543, v557, v571.i64);
            v561 = v571.i64[1];
            *&v564 = v571.i64[0];
            v115 = v572.i64[0];
            v547 = *&v573[24];
            v565 = *&v573[8];
            v117 = *(v113 + 72);
            v116 = *(v113 + 80);
            v12 = *(v113 + 88);
            v118 = *(v113 + 96);
            swift_unknownObjectRetain();
            v49 = specialized Rope.subscript.getter(v564, v561, v115, v117, v116, v12, v118);
            v545 = v119;
            v121 = v120;
            swift_unknownObjectRelease();
            v46 = v11 < v565.i64[0] >> 10;
            v122 = v49 + (v565.i64[0] >> 11);
            if (__OFADD__(v49, v565.i64[0] >> 11))
            {
              goto LABEL_377;
            }

            v527 = v121;
            if ((v47 >> 11) < v122)
            {
              v122 = v47 >> 11;
            }

            v123 = *(v113 + 40);
            v571 = *(v113 + 24);
            v572 = v123;
            *v573 = *(v113 + 56);
            v47 = v122 - (v114 >> 11);
            v124 = v541;
            v11 = v555;
            v12 = v512;
            if (__OFSUB__(v122, v114 >> 11))
            {
              goto LABEL_379;
            }

            swift_unknownObjectRetain();
            v125 = BigString.UTF8View.index(_:offsetBy:)();
            v499 = v126;
            v500 = v125;
            v497 = v128;
            v498 = v127;
            swift_unknownObjectRelease();
            v501 = v113;

            outlined destroy of AttributedString.Runs(v563, type metadata accessor for AttributedString.Runs);
            v49 = v562;
            v518(v562, v556, v554);
            v129 = v540;
            v130 = v540[4];
            v131 = *(v540 + 1);
            v593 = *v540;
            v594 = v131;
            *&v595 = v130;

            AttributedString.Runs.AttributesSlice4.index(after:)(&v593, v12, &v598);
            (v530)(v49, v12);
            v12 = *v129;
            v47 = v525;
            if (v598 >> 10 < *v129 >> 10)
            {
              goto LABEL_381;
            }

            v132 = v129;
            v133 = vdup_n_s32(v46);
            v134.i64[0] = v133.u32[0];
            v134.i64[1] = v133.u32[1];
            v135 = vcltzq_s64(vshlq_n_s64(v134, 0x3FuLL));
            v496 = vbslq_s8(v135, v547, v548);
            v495 = vbslq_s8(v135, v565, v560);
            v136 = *(&v598 + 1);
            v138 = *(&v599 + 1);
            v137 = v599;
            v139 = v600;
            v140 = *(v132 + 3);
            v564 = *(v132 + 1);
            v565 = v140;
            v544 = v598;
            *v132 = v598;
            v132[1] = v136;
            v536.i64[0] = v136;
            v537 = v137;
            *(v132 + 1) = __PAIR128__(v138, v137);
            v532 = v139;
            v132[4] = v139;
            v141 = v553;
            v142 = v520;
            v11 = v550;
            goto LABEL_327;
          }

          v47 = v76 + 1;
          v76 = v74;
        }

        v74 = v76;
      }

      while (v47 < v76);
    }

LABEL_359:
    __break(1u);
    goto LABEL_360;
  }

  v63 = v548.i64[0];
  (v49)(v548.i64[0], v61, v47);
  outlined init with copy of AttributedString.Runs(v63, v22, type metadata accessor for AttributedString.Runs);
  (v530)(v63, v54);
  v64 = v540[1];
  *(&v515 + 1) = v540[2];
  v516 = v540[3];
  v517 = v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v66 = v565.i64[0];
  v562 = v65;
  RangeSet.ranges.getter();
  v12 = v560.i64[0];
  v67 = RangeSet.Ranges.count.getter();
  v563 = *v11;
  (v563)(v66, v12);
  if (v67 < 1)
  {
LABEL_358:
    __break(1u);
    goto LABEL_359;
  }

  v68 = 0;
  while (1)
  {
    if (__OFADD__(v68, v67))
    {
      goto LABEL_362;
    }

    v69 = (v68 + v67) / 2;
    v11 = v565.i64[0];
    RangeSet.ranges.getter();
    RangeSet.Ranges.subscript.getter();
    (v563)(v11, v12);
    v47 = v571.i64[0] >> 10;
    if (v564 < v571.i64[0] >> 10)
    {
      goto LABEL_7;
    }

    v11 = *v573;
    if (v564 < *v573 >> 10)
    {
      break;
    }

    v68 = v69 + 1;
    v69 = v67;
LABEL_7:
    v67 = v69;
    if (v68 >= v69)
    {
      goto LABEL_358;
    }
  }

  v536 = v571;
  v535 = v572;
  v49 = *v22;
  AttributedString.Guts.findRun(at:)(v543, v516, v571.i64);
  v548.i64[0] = v571.i64[1];
  v557 = v571.i64[0];
  v79 = v572.i64[0];
  v534 = *&v573[24];
  v558 = *&v573[8];
  v46 = *(v49 + 72);
  v80 = *(v49 + 80);
  v12 = *(v49 + 88);
  v81 = *(v49 + 96);
  swift_unknownObjectRetain();
  v82 = specialized Rope.subscript.getter(v557, v548.u64[0], v79, v46, v80, v12, v81);
  v545 = v83;
  v527 = v84;
  swift_unknownObjectRelease();
  v85 = v82 + (v558.i64[0] >> 11);
  if (__OFADD__(v82, v558.i64[0] >> 11))
  {
    goto LABEL_376;
  }

  LODWORD(v557) = v47 < v558.i64[0] >> 10;
  if ((v11 >> 11) < v85)
  {
    v85 = v11 >> 11;
  }

  v86 = *(v49 + 40);
  v673 = *(v49 + 24);
  v674 = v86;
  v675 = *(v49 + 56);
  v47 = v560.i64[0];
  v12 = v561;
  v46 = v559;
  if (__OFSUB__(v85, v543 >> 11))
  {
    goto LABEL_378;
  }

  swift_unknownObjectRetain();
  v87 = BigString.UTF8View.index(_:offsetBy:)();
  v499 = v88;
  v500 = v87;
  v497 = v90;
  v498 = v89;
  swift_unknownObjectRelease();
  v501 = v49;

  outlined destroy of AttributedString.Runs(v22, type metadata accessor for AttributedString.Runs);
  v91 = v537;
  v92 = v556;
  v93 = v518;
  v518(v537->i8, v556, v554);
  outlined init with copy of AttributedString.Runs(v91, v46, type metadata accessor for AttributedString.Runs);

  v94 = v91;
  v11 = v512;
  v95 = v530;
  (v530)(v94, v512);
  v46 = v95;
  v96 = v544;
  v97 = v92;
  v98 = v554;
  v93(v544, v97, v554);
  v49 = *(v96 + *(v11 + 84));

  (v46)(v96, v11);
  v99 = v547.i64[0];
  v93(v547.i64[0], v556, v98);
  v508 = *(v99 + *(v11 + 88));

  (v46)(v99, v11);
  v547.i64[0] = v49;
  v528 = *(v49 + 16);
  if (!v528)
  {
    goto LABEL_380;
  }

  v502 = *v559;
  AttributedString.Guts.findRun(at:)(v543, v516, v571.i64);
  v507 = v571.u64[1];
  v100 = v572.i64[1];
  v494 = v572.i64[0];
  v492 = v571.i64[0];
  v493 = *v573;
  v526 = *&v573[8];
  v488 = *&v573[24];
  v489 = *&v573[16];
  v487 = *&v573[32];
  v11 = *(v542 + 24);
  v101 = v565.i64[0];
  RangeSet.ranges.getter();
  v102 = RangeSet.Ranges.count.getter();
  (v563)(v101, v47);
  if (v102 >= 1)
  {
    v103 = 0;
    v104 = vdup_n_s32(v557);
    v105.i64[0] = v104.u32[0];
    v105.i64[1] = v104.u32[1];
    v106 = vcltzq_s64(vshlq_n_s64(v105, 0x3FuLL));
    v496 = vbslq_s8(v106, v534, v535);
    v495 = vbslq_s8(v106, v558, v536);
    do
    {
      if (__OFADD__(v103, v102))
      {
        goto LABEL_364;
      }

      v107 = (v103 + v102) / 2;
      v46 = v565.i64[0];
      RangeSet.ranges.getter();
      RangeSet.Ranges.subscript.getter();
      (v563)(v46, v47);
      if (v564 >= v571.i64[0] >> 10)
      {
        v49 = *v573;
        if (v564 < *v573 >> 10)
        {
          v491 = *v573 >> 10;
          v536.i64[0] = *&v573[8];
          v537 = *&v573[16];
          v108 = *&v573[24];
          v109 = v508;
          v110 = *(v508 + 16);
          v544 = *v573;
          v548.i64[0] = *&v573[24];
          if (v110 == 1 && (specialized Set.contains(_:)(0, 1, v508) & 1) == 0)
          {

            v143 = v502;
            v144 = v502[3];
            v145 = v502[4];
            v146 = v502[6];
            v557 = v502[5];
            v147 = v502[8];
            v558.i64[0] = v502[7];
            v547.i64[0] = v147;
            v148 = v109;
            v149 = v543;
            v150 = v517;
            v662 = v543;
            v663 = v517;
            v151 = v108;
            v152 = *(&v515 + 1);
            v11 = v516;
            v664 = *(&v515 + 1);
            v665 = v516;
            v666 = v49;
            v153 = v144;
            v667 = v536.i64[0];
            v668 = v537;
            v669 = v151;
            swift_unknownObjectRetain();
            v154 = specialized Set.contains(_:)(0, 0, v148);
            v533 = v146;
            v534.i64[0] = v145;
            v535.i64[0] = v153;
            if (v154)
            {
              *&v670 = v153;
              *(&v670 + 1) = v145;
              v47 = v557;
              *&v671 = v557;
              *(&v671 + 1) = v146;
              v46 = v558.i64[0];
              *&v672 = v558.i64[0];
              *(&v672 + 1) = v547.i64[0];
              BigString.UTF8View.subscript.getter();
              v654 = v149;
              v655 = v150;
              v656 = v152;
              v657 = v11;
              v658 = v149;
              v659 = v150;
              v660 = v152;
              v661 = v11;
              v49 = v590;
              specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v654, &v571);
              outlined destroy of BigSubstring.UTF8View(v590);
              v155 = v508;
              v156 = v548.i64[0];
              v157 = v536.i64[0];
              v12 = v537;
              if (*&v573[24] != 2)
              {
                v544 = *v573;
                if (v564 > *v573 >> 10)
                {
                  goto LABEL_404;
                }

                v157 = *&v573[8];
                v12 = *&v573[16];
                v156 = *&v573[24];
              }
            }

            else
            {
              v155 = v508;
              v47 = v557;
              v46 = v558.i64[0];
              v156 = v548.i64[0];
              v157 = v536.i64[0];
              v12 = v537;
            }

            v640 = v543;
            v641 = v517;
            v642 = *(&v515 + 1);
            v643 = v11;
            v644 = v544;
            v645 = v157;
            v646 = v12;
            v647 = v156;
            v250 = specialized Collection<>._containsScalarConstraint.getter(v155);
            v536.i64[0] = v157;
            v537 = v12;
            v548.i64[0] = v156;
            if ((v250 & 1) == 0)
            {

              swift_unknownObjectRelease();
              v483 = 0;
              goto LABEL_357;
            }

            v49 = v155 + 56;
            v251 = 1 << *(v155 + 32);
            v252 = -1;
            if (v251 < 64)
            {
              v252 = ~(-1 << v251);
            }

            v11 = v252 & *(v155 + 56);
            v253 = (v251 + 63) >> 6;

            v254 = 0;
            v483 = 0;
            v255 = MEMORY[0x1E69E7CC0];
            v12 = v533;
            v256 = v534.i64[0];
            while (1)
            {
              if (!v11)
              {
                do
                {
                  v257 = v254 + 1;
                  if (__OFADD__(v254, 1))
                  {
                    goto LABEL_373;
                  }

                  if (v257 >= v253)
                  {

                    v648 = v535.i64[0];
                    v649 = v256;
                    v650 = v47;
                    v651 = v12;
                    v652 = v46;
                    v653 = v547.i64[0];
                    BigString.UnicodeScalarView.subscript.getter();
                    v49 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v255);
                    v269 = v268;
                    v11 = v270;
                    v272 = v271;

                    swift_unknownObjectRelease();
                    outlined destroy of BigSubstring.UnicodeScalarView(&v593);
                    if (v272 == 2)
                    {
                      v46 = v529;
                      goto LABEL_195;
                    }

                    v46 = v529;
                    v47 = v560.i64[0];
                    v12 = v561;
                    v143 = v502;
                    if (v564 <= v49 >> 10)
                    {
                      v544 = v49;
                      v536.i64[0] = v269;
                      v537 = v11;
                      v548.i64[0] = v272;
                      goto LABEL_196;
                    }

                    goto LABEL_405;
                  }

                  v11 = *(v49 + 8 * v257);
                  ++v254;
                }

                while (!v11);
                v254 = v257;
              }

              v258 = __clz(__rbit64(v11));
              v11 &= v11 - 1;
              v259 = (*(v508 + 48) + ((v254 << 10) | (16 * v258)));
              v260 = v259[1];
              if (v260 >= 2)
              {
                v261 = specialized Collection.first.getter(*v259, v260);
                if ((v261 & 0x100000000) == 0)
                {
                  v557 = v261;
                  v262 = v47;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v255 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v255 + 2) + 1, 1, v255);
                  }

                  v264 = *(v255 + 2);
                  v263 = *(v255 + 3);
                  v265 = v264 + 1;
                  v266 = v557;
                  if (v264 >= v263 >> 1)
                  {
                    v543 = v264 + 1;
                    v267 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v263 > 1), v264 + 1, 1, v255);
                    v265 = v543;
                    v255 = v267;
                    v266 = v557;
                  }

                  *(v255 + 2) = v265;
                  *&v255[4 * v264 + 32] = v266;
                  v47 = v262;
                  v46 = v558.i64[0];
                }
              }
            }
          }

          v111 = *(v559 + 120);
          v11 = v526;
          if (v100 == v111)
          {
            v112 = *(v559 + 176);
            if (*(v559 + 208) == 2)
            {
              if (v112 != 2)
              {
                goto LABEL_104;
              }
            }

            else if (v112 == 2 || (*(v559 + 184) ^ *(v559 + 152)) >= 1024)
            {
              goto LABEL_104;
            }
          }

          v482 = *(v559 + 120);
          if (v100 >= v111)
          {
            goto LABEL_395;
          }

          v11 = v502;
          v158 = v502[9];
          v159 = v502[10];
          v160 = v502[11];
          v161 = v502[12];
          swift_unknownObjectRetain();
          v47 = v492;
          v12 = v507;
          v162 = v494;
          specialized Rope.subscript.getter(v492, v507, v494, v158, v159, v160, v161);
          v513 = v163;
          v480 = v164;
          swift_unknownObjectRelease();
          v483 = 0;
          v49 = *(v11 + 72);
          v165 = v100 + 1;
          v481 = v547.i64[0] + 40;
          v46 = *(v11 + 88);
          v166 = *(v11 + 96);
          v571.i64[0] = v47;
          v571.i64[1] = v12;
          v572.i64[0] = v162;
          while (2)
          {
            if (v47 != v166)
            {
              goto LABEL_386;
            }

            v486 = v165;
            v490 = v166;
            v494 = v162;
            v12 = &v571;
            if (v162)
            {
              v167 = v162 + 24 * ((v507 >> ((4 * *(v162 + 18) + 8) & 0x3C)) & 0xF);
              v168 = *(v167 + 24);
              v11 = *(v167 + 40);
              swift_unknownObjectRetain();
            }

            else
            {
              swift_unknownObjectRetain();
              v168 = specialized Rope._Node.subscript.getter(v507, v49);
              v11 = v169;
            }

            v170 = v513;

            if (__OFADD__(v493, v168))
            {
              goto LABEL_387;
            }

            if (v49)
            {
              v171 = ((-15 << ((4 * *(v49 + 18) + 8) & 0x3C)) - 1) & *(v49 + 18) | (*(v49 + 16) << ((4 * *(v49 + 18) + 8) & 0x3C));
            }

            else
            {
              v171 = 0;
            }

            if (v507 >= v171)
            {
              goto LABEL_388;
            }

            v479 = (v493 + v168);
            if (v494)
            {
              v172 = (4 * *(v494 + 18) + 8) & 0x3C;
              v173 = ((v507 >> v172) & 0xF) + 1;
              if (v173 < *(v494 + 16))
              {
                v485 = (v173 << v172) | ((-15 << v172) - 1) & v507;
                swift_unknownObjectRelease();
                goto LABEL_65;
              }
            }

            if (specialized Rope._Node.formSuccessor(of:)(&v571, v49))
            {
              swift_unknownObjectRelease();
              v485 = v571.u64[1];
LABEL_65:
              v46 = v559;
              v11 = v526;
              v174 = v572.i64[0];
              v175 = v571.i64[0];
            }

            else
            {
              v46 = v559;
              v11 = v526;
              if (v49)
              {
                v176 = *(v49 + 18);
                v177 = *(v49 + 16);
                swift_unknownObjectRelease();
                v174 = 0;
                v485 = ((-15 << ((4 * v176 + 8) & 0x3C)) - 1) & v176 | (v177 << ((4 * v176 + 8) & 0x3C));
              }

              else
              {
                v485 = 0;
                v174 = 0;
              }

              v175 = v490;
            }

            if (v482 < v486)
            {
              goto LABEL_109;
            }

            if (v486 == v482)
            {
              v178 = *(v46 + 176);
              if (*(v46 + 208) == 2)
              {
                if (v178 == 2)
                {
                  goto LABEL_109;
                }
              }

              else if (v178 != 2 && (*(v46 + 152) ^ *(v46 + 184)) < 1024)
              {
                goto LABEL_109;
              }
            }

            if (v175 != v502[12])
            {
              goto LABEL_391;
            }

            v492 = v175;
            v478 = v174;
            if (v174)
            {
              v179 = v174 + 24 * ((v485 >> ((4 * *(v174 + 18) + 8) & 0x3C)) & 0xF);
              v49 = *(v179 + 40);
              v533 = *(v179 + 32);

              v484 = v49;
            }

            else
            {
              v49 = v502[9];
              swift_unknownObjectRetain();
              specialized Rope._Node.subscript.getter(v485, v49);
              v533 = v180;
              v484 = v181;
              swift_unknownObjectRelease();
            }

            v182 = 0;
            v183 = v481;
LABEL_85:
            if (v182 >= *(v547.i64[0] + 16))
            {
              __break(1u);
LABEL_371:
              __break(1u);
LABEL_372:
              __break(1u);
LABEL_373:
              __break(1u);
LABEL_374:
              __break(1u);
LABEL_375:
              __break(1u);
LABEL_376:
              __break(1u);
LABEL_377:
              __break(1u);
LABEL_378:
              __break(1u);
LABEL_379:
              __break(1u);
LABEL_380:
              __break(1u);
LABEL_381:
              __break(1u);
LABEL_382:
              __break(1u);
LABEL_383:
              __break(1u);
LABEL_384:
              __break(1u);
LABEL_385:
              __break(1u);
LABEL_386:
              __break(1u);
LABEL_387:
              __break(1u);
LABEL_388:
              __break(1u);
LABEL_389:
              __break(1u);
LABEL_390:
              __break(1u);
LABEL_391:
              __break(1u);
LABEL_392:
              __break(1u);
LABEL_393:
              __break(1u);
LABEL_394:
              __break(1u);
LABEL_395:
              __break(1u);
LABEL_396:
              __break(1u);
LABEL_397:
              __break(1u);
LABEL_398:
              __break(1u);
LABEL_399:
              __break(1u);
LABEL_400:
              __break(1u);
LABEL_401:
              __break(1u);
LABEL_402:
              __break(1u);
LABEL_403:
              __break(1u);
LABEL_404:
              __break(1u);
LABEL_405:
              __break(1u);
LABEL_406:
              __break(1u);
LABEL_407:
              __break(1u);
LABEL_408:
              __break(1u);
LABEL_409:
              __break(1u);
              goto LABEL_410;
            }

            v558.i64[0] = v182;
            v185 = *(v183 - 1);
            v184 = *v183;
            v557 = v183;
            if (*(v170 + 16))
            {

              v186 = specialized __RawDictionaryStorage.find<A>(_:)(v185, v184);
              if (v187)
              {
                outlined init with copy of AttributedString._AttributeValue(*(v170 + 56) + 72 * v186, &v598);
              }

              else
              {
                v602 = 0;
                v601 = 0u;
                v600 = 0u;
                v599 = 0u;
                v598 = 0u;
              }
            }

            else
            {
              v602 = 0;
              v601 = 0u;
              v600 = 0u;
              v599 = 0u;
              v598 = 0u;
            }

            v188 = v533;
            if (v533[1].i64[0])
            {
              v189 = specialized __RawDictionaryStorage.find<A>(_:)(v185, v184);
              v191 = v190;

              if (v191)
              {
                outlined init with copy of AttributedString._AttributeValue(v188[3].i64[1] + 72 * v189, &v593);
                goto LABEL_96;
              }
            }

            else
            {
            }

            v597 = 0;
            v596 = 0u;
            v595 = 0u;
            v594 = 0u;
            v593 = 0u;
LABEL_96:
            outlined init with copy of AttributedString._AttributeValue?(&v598, &v571);
            outlined init with copy of AttributedString._AttributeValue?(&v593, &v574);
            if (v572.i64[1])
            {
              outlined init with copy of AttributedString._AttributeValue?(&v571, v590);
              if (!v575.i64[1])
              {
                outlined destroy of TermOfAddress?(&v593, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                outlined destroy of TermOfAddress?(&v598, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                outlined destroy of AttributedString._AttributeValue(v590);
LABEL_106:
                outlined destroy of TermOfAddress?(&v571, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMd);
LABEL_108:

                goto LABEL_109;
              }

              v585 = v576;
              v586 = v577;
              v587 = v578;
              v584 = v575;
              v583 = v574;
              v192 = v591;
              v532 = v592;
              v531 = __swift_project_boxed_opaque_existential_1(v590, v591);
              v193 = __swift_project_boxed_opaque_existential_1(&v583, v584.i64[1]);
              v535.i64[0] = &v477;
              v194 = *(v192 - 8);
              MEMORY[0x1EEE9AC00](v193);
              v46 = &v477 - ((v195 + 15) & 0xFFFFFFFFFFFFFFF0);
              v534.i64[0] = &v477;
              v197 = MEMORY[0x1EEE9AC00](v196);
              v12 = (&v477 - ((v198 + 15) & 0xFFFFFFFFFFFFFFF0));
              (*(v199 + 16))(v12, v197);
              v200 = type metadata accessor for Optional();
              v47 = *(v200 - 8);
              MEMORY[0x1EEE9AC00](v200);
              v202 = &v477 - v201;
              if (!swift_dynamicCast())
              {
                outlined destroy of TermOfAddress?(&v593, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                outlined destroy of TermOfAddress?(&v598, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                (*(v194 + 56))(v202, 1, 1, v192);
                v204 = *(v47 + 8);
                v47 += 8;
                v204(v202, v200);
                outlined destroy of AttributedString._AttributeValue(&v583);
                outlined destroy of AttributedString._AttributeValue(v590);
                outlined destroy of TermOfAddress?(&v571, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                v11 = v526;
                goto LABEL_108;
              }

              (*(v194 + 56))(v202, 0, 1, v192);
              (*(v194 + 32))(v46, v202, v192);
              v203 = dispatch thunk of static Equatable.== infix(_:_:)();
              (*(v194 + 8))(v46, v192);
              v49 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMd;
              outlined destroy of TermOfAddress?(&v593, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
              outlined destroy of TermOfAddress?(&v598, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
              outlined destroy of AttributedString._AttributeValue(&v583);
              outlined destroy of AttributedString._AttributeValue(v590);
              outlined destroy of TermOfAddress?(&v571, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
              v11 = v526;
              v170 = v513;
              v12 = &v571;
              if ((v203 & 1) == 0)
              {
                goto LABEL_108;
              }
            }

            else
            {
              v49 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMd;
              outlined destroy of TermOfAddress?(&v593, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
              outlined destroy of TermOfAddress?(&v598, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
              if (v575.i64[1])
              {
                goto LABEL_106;
              }

              outlined destroy of TermOfAddress?(&v571, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
            }

            v182 = v558.i64[0] + 1;
            v183 = (v557 + 16);
            if (v528 == (v558.i64[0] + 1))
            {

              v49 = v502[9];
              v46 = v502[11];
              v166 = v502[12];
              v493 = v479;
              v47 = v492;
              v571.i64[0] = v492;
              v571.i64[1] = v485;
              v162 = v478;
              v507 = v485;
              v572.i64[0] = v478;
              v165 = v486 + 1;
              if (__OFADD__(v486, 1))
              {
                __break(1u);
LABEL_104:

                v483 = 0;
                v490 = v492;
                goto LABEL_110;
              }

              continue;
            }

            goto LABEL_85;
          }
        }

        v103 = v107 + 1;
        v107 = v102;
      }

      v102 = v107;
    }

    while (v103 < v107);
  }

LABEL_360:
  __break(1u);
  while (2)
  {
    while (2)
    {
      __break(1u);
LABEL_362:
      __break(1u);
LABEL_363:
      __break(1u);
LABEL_364:
      __break(1u);
LABEL_365:
      __break(1u);
LABEL_109:

LABEL_110:
      v205 = v502;
      v49 = v502[9];
      v206 = v502[10];
      v207 = v502[11];
      v208 = v502[12];
      swift_unknownObjectRetain();
      v209 = specialized Rope.subscript.getter(v490, v507, v494, v49, v206, v207, v208);
      v46 = v210;
      swift_unknownObjectRelease();

      if (__OFADD__(v493, v209))
      {
        goto LABEL_384;
      }

      v211 = *(v205 + 5);
      v670 = *(v205 + 3);
      v671 = v211;
      v672 = *(v205 + 7);
      if (__OFSUB__(v493 + v209, v11 >> 11))
      {
        goto LABEL_385;
      }

      swift_unknownObjectRetain();
      v46 = BigString.UTF8View.index(_:offsetBy:)();
      v213 = v212;
      v12 = v214;
      v11 = v215;
      swift_unknownObjectRelease();
      v216 = v46 >> 10;
      v47 = v205[3];
      v534.i64[0] = v205[4];
      v217 = v205[6];
      v535.i64[0] = v205[5];
      v547.i64[0] = v217;
      v218 = v205[8];
      v557 = v205[7];
      v558.i64[0] = v218;
      if (v46 >> 10 >= v491)
      {
        v222 = v543;
        v49 = v516;
        v11 = v517;
        v662 = v543;
        v663 = v517;
        v223 = *(&v515 + 1);
        v664 = *(&v515 + 1);
        v665 = v516;
        v224 = v544;
        v12 = v536.i64[0];
        v666 = v544;
        v667 = v536.i64[0];
        v225 = v537;
        v226 = v548.i64[0];
        v668 = v537;
        v669 = v548.i64[0];
        swift_unknownObjectRetain();
        v227 = specialized Set.contains(_:)(0, 0, v508);
        v533 = v47;
        if (v227)
        {
          v648 = v47;
          v649 = v534.i64[0];
          v650 = v535.i64[0];
          v651 = v547.i64[0];
          v652 = v557;
          v653 = v558.i64[0];
          BigString.UTF8View.subscript.getter();
          v654 = v222;
          v655 = v11;
          v656 = v223;
          v657 = v516;
          v658 = v222;
          v659 = v11;
          v660 = v223;
          v661 = v516;
          specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v654, &v571);
          v49 = v516;
          outlined destroy of BigSubstring.UTF8View(v590);
          v46 = v529;
          if (*&v573[24] != 2)
          {
            v224 = *v573;
            if (v564 > *v573 >> 10)
            {
              goto LABEL_400;
            }

            v12 = *&v573[8];
            v225 = *&v573[16];
            v226 = *&v573[24];
          }
        }

        else
        {
          v46 = v529;
        }

        v640 = v222;
        v641 = v517;
        v642 = *(&v515 + 1);
        v643 = v49;
        v644 = v224;
        v645 = v12;
        v646 = v225;
        v647 = v226;
        v228 = v508;
        if (specialized Collection<>._containsScalarConstraint.getter(v508))
        {
          v46 = v228 + 56;
          v229 = 1 << *(v228 + 32);
          v230 = -1;
          if (v229 < 64)
          {
            v230 = ~(-1 << v229);
          }

          v231 = v230 & *(v228 + 56);
          v11 = (v229 + 63) >> 6;

          v49 = 0;
          v543 = MEMORY[0x1E69E7CC0];
          while (v231)
          {
LABEL_130:
            v233 = __clz(__rbit64(v231));
            v231 &= v231 - 1;
            v234 = (*(v508 + 48) + ((v49 << 10) | (16 * v233)));
            v235 = v234[1];
            if (v235 >= 2)
            {
              v236 = specialized Collection.first.getter(*v234, v235);
              if ((v236 & 0x100000000) == 0)
              {
                v532 = v236;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v543 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v543 + 16) + 1, 1, v543);
                }

                v47 = *(v543 + 16);
                v237 = *(v543 + 24);
                v238 = (v47 + 1);
                v239 = v532;
                if (v47 >= v237 >> 1)
                {
                  v531 = (v47 + 1);
                  v241 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v237 > 1), v47 + 1, 1, v543);
                  v238 = v531;
                  v239 = v532;
                  v543 = v241;
                }

                v240 = v543;
                *(v543 + 16) = v238;
                *(v240 + 4 * v47 + 32) = v239;
              }
            }
          }

          while (1)
          {
            v232 = v49 + 1;
            if (__OFADD__(v49, 1))
            {
              goto LABEL_372;
            }

            if (v232 >= v11)
            {
              break;
            }

            v231 = *(v46 + 8 * v232);
            ++v49;
            if (v231)
            {
              v49 = v232;
              goto LABEL_130;
            }
          }

          v532 = v12;

          v47 = v533;
          v634 = v533;
          v635 = v534.i64[0];
          v636 = v535.i64[0];
          v637 = v547.i64[0];
          v638 = v557;
          v639 = v558.i64[0];
          BigString.UnicodeScalarView.subscript.getter();
          v12 = v543;
          v49 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v543);
          v247 = v246;
          v46 = v248;
          v11 = v249;

          swift_unknownObjectRelease();
          outlined destroy of BigSubstring.UnicodeScalarView(&v593);
          if (v11 == 2)
          {
            v46 = v529;
            v242 = v491;
            v12 = v532;
          }

          else
          {
            v242 = v491;
            if (v564 > v49 >> 10)
            {
              goto LABEL_401;
            }

            v224 = v49;
            v12 = v247;
            v225 = v46;
            v226 = v11;
            v46 = v529;
          }
        }

        else
        {

          swift_unknownObjectRelease();
          v242 = v491;
        }

        v288 = v544;
        if (v224 >> 10 != v242)
        {
          v288 = v224;
        }

        v544 = v288;
        v289 = v536.i64[0];
        if (v224 >> 10 != v242)
        {
          v289 = v12;
        }

        v536.i64[0] = v289;
        v290 = v537;
        if (v224 >> 10 != v242)
        {
          v290 = v225;
        }

        v537 = v290;
        v291 = v548.i64[0];
        if (v224 >> 10 != v242)
        {
          v291 = v226;
        }

        v548.i64[0] = v291;
LABEL_195:
        v47 = v560.i64[0];
        v12 = v561;
        v143 = v502;
        goto LABEL_196;
      }

      v219 = *(&v515 + 1);
      v49 = v516;
      v220 = v517;
      if (v216 < v564)
      {
        goto LABEL_397;
      }

      v662 = v543;
      v663 = v517;
      v664 = *(&v515 + 1);
      v665 = v516;
      v666 = v46;
      v667 = v213;
      v668 = v12;
      v669 = v11;
      v221 = v508;
      if (v564 == v216)
      {

        goto LABEL_182;
      }

      v548.i64[0] = v12;
      swift_unknownObjectRetain();
      v243 = specialized Set.contains(_:)(0, 0, v221);
      v533 = v47;
      if (v243)
      {
        v648 = v47;
        v649 = v534.i64[0];
        v650 = v535.i64[0];
        v651 = v547.i64[0];
        v652 = v557;
        v653 = v558.i64[0];
        BigString.UTF8View.subscript.getter();
        v244 = v543;
        v654 = v543;
        v655 = v517;
        v656 = v219;
        v657 = v516;
        v658 = v543;
        v659 = v517;
        v660 = v219;
        v661 = v516;
        specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v654, &v571);
        v49 = v516;
        outlined destroy of BigSubstring.UTF8View(v590);
        v245 = v244;
        v220 = v517;
        v12 = v548.i64[0];
        if (*&v573[24] != 2)
        {
          v46 = *v573;
          if (v564 > *v573 >> 10)
          {
            goto LABEL_408;
          }

          v213 = *&v573[8];
          v12 = *&v573[16];
          v11 = *&v573[24];
        }
      }

      else
      {
        v245 = v543;
        v12 = v548.i64[0];
      }

      v640 = v245;
      v641 = v220;
      v642 = v219;
      v643 = v49;
      v644 = v46;
      v645 = v213;
      v646 = v12;
      v647 = v11;
      if ((specialized Collection<>._containsScalarConstraint.getter(v221) & 1) == 0)
      {

        swift_unknownObjectRelease();
LABEL_182:
        v544 = v46;
        v536.i64[0] = v213;
        v537 = v12;
LABEL_183:
        v548.i64[0] = v11;
        v46 = v529;
        goto LABEL_195;
      }

      v548.i64[0] = v12;
      v543 = v213;
      v273 = v221 + 56;
      v274 = 1 << *(v221 + 32);
      v275 = -1;
      if (v274 < 64)
      {
        v275 = ~(-1 << v274);
      }

      v276 = v275 & *(v221 + 56);
      v277 = (v274 + 63) >> 6;

      v49 = 0;
      v12 = MEMORY[0x1E69E7CC0];
      while (v276)
      {
LABEL_174:
        v279 = __clz(__rbit64(v276));
        v276 &= v276 - 1;
        v280 = (*(v221 + 48) + ((v49 << 10) | (16 * v279)));
        v281 = v280[1];
        if (v281 >= 2)
        {
          v282 = specialized Collection.first.getter(*v280, v281);
          if ((v282 & 0x100000000) == 0)
          {
            v283 = v282;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12[1].i64[0] + 1, 1, v12->i8);
            }

            v47 = v12[1].u64[0];
            v284 = v12[1].u64[1];
            v285 = v47 + 1;
            if (v47 >= v284 >> 1)
            {
              v544 = v47 + 1;
              v287 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v284 > 1), v47 + 1, 1, v12->i8);
              v285 = v544;
              v12 = v287;
            }

            v286 = v283;
            v221 = v508;
            v12[1].i64[0] = v285;
            v12[2].i32[v47] = v286;
          }
        }
      }

      while (1)
      {
        v278 = v49 + 1;
        if (__OFADD__(v49, 1))
        {
          goto LABEL_375;
        }

        if (v278 >= v277)
        {
          break;
        }

        v276 = *(v273 + 8 * v278);
        ++v49;
        if (v276)
        {
          v49 = v278;
          goto LABEL_174;
        }
      }

      v634 = v533;
      v635 = v534.i64[0];
      v636 = v535.i64[0];
      v637 = v547.i64[0];
      v638 = v557;
      v639 = v558.i64[0];
      BigString.UnicodeScalarView.subscript.getter();
      v49 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v12);
      v423 = v422;
      v537 = v424;
      v426 = v425;

      swift_unknownObjectRelease();
      outlined destroy of BigSubstring.UnicodeScalarView(&v593);
      if (v426 == 2)
      {
        v544 = v46;
        v536.i64[0] = v543;
        v537 = v548.i64[0];
        goto LABEL_183;
      }

      v536.i64[0] = v423;
      v544 = v49;
      v143 = v502;
      if (v564 > v49 >> 10)
      {
        goto LABEL_409;
      }

      v548.i64[0] = v426;
LABEL_357:
      v46 = v529;
      v47 = v560.i64[0];
      v12 = v561;
LABEL_196:
      v532 = v143[2];
      outlined destroy of AttributedString.Runs(v559, type metadata accessor for AttributedString.Runs);
      v292 = v514;
      v293 = v554;
      v518(v514, v556, v554);
      outlined init with copy of AttributedString.Runs(v292, v46, type metadata accessor for AttributedString.Runs);
      v294 = v292;
      v295 = v512;
      v49 = v530;
      (v530)(v294, v512);
      v296 = *(&v514 + 1);
      v297 = v518;
      v518(*(&v514 + 1), v556, v293);
      v298 = *(v296 + v295[5].i32[1]);

      (v49)(v296, v295);
      v11 = v515;
      v297(v515, v556, v554);
      v531 = *(v11 + v295[5].i32[2]);

      (v49)(v11, v295);
      v556 = v298;
      v535.i64[0] = *(v298 + 16);
      if (!v535.i64[0])
      {
        goto LABEL_382;
      }

      v533 = *v46;
      AttributedString.Guts.findRun(at:)(v544, v548.u64[0], v571.i64);
      v530 = v571.u64[1];
      v518 = v571.i64[0];
      v299 = v572.i64[1];
      v528 = v572.i64[0];
      v526 = *v573;
      v512 = *&v573[16];
      v513 = *&v573[8];
      v507 = *&v573[32];
      v508 = *&v573[24];
      v559 = *(v542 + 24);
      v300 = v565.i64[0];
      RangeSet.ranges.getter();
      v301 = RangeSet.Ranges.count.getter();
      (v563)(v300, v47);
      if (v301 < 1)
      {
        continue;
      }

      break;
    }

    v302 = 0;
    *&v564 = v544 >> 10;
LABEL_200:
    if (__OFADD__(v302, v301))
    {
      goto LABEL_365;
    }

    v11 = (v302 + v301) / 2;
    v303 = v565.i64[0];
    RangeSet.ranges.getter();
    RangeSet.Ranges.subscript.getter();
    (v563)(v303, v47);
    if (v564 < v571.i64[0] >> 10)
    {
LABEL_199:
      v301 = v11;
      if (v302 >= v11)
      {
        continue;
      }

      goto LABEL_200;
    }

    break;
  }

  v304 = *v573;
  if (v564 >= *v573 >> 10)
  {
    v302 = v11 + 1;
    v11 = v301;
    goto LABEL_199;
  }

  v515 = *&v573[16];
  v516 = *v573 >> 10;
  v49 = v531;
  v305 = v531[2];
  v514 = *v573;
  if (v305 == 1 && (specialized Set.contains(_:)(0, 1, v531) & 1) == 0)
  {

    v308 = v533[1].i64[1];
    v555 = v533[2].i64[0];
    v309 = v533[3].i64[0];
    v554 = v533[2].i64[1];
    v547.i64[0] = v309;
    v310 = v533[4].i64[0];
    v546 = v533[3].u64[1];
    v543 = v310;
    v566.i64[0] = v544;
    v47 = v536.i64[0];
    v566.i64[1] = v536.i64[0];
    v46 = v304;
    v311 = v537;
    v567.i64[0] = v537;
    v12 = v548.i64[0];
    v567.i64[1] = v548.i64[0];
    v568.i64[0] = v46;
    v313 = *(&v514 + 1);
    v312 = v515;
    v568.i64[1] = *(&v514 + 1);
    v569 = v515;
    v314 = *(&v515 + 1);
    v556 = v308;
    swift_unknownObjectRetain();
    v315 = specialized Set.contains(_:)(0, 0, v49);
    v316 = v314;
    v141 = v553;
    if (v315)
    {
      *&v631 = v556;
      *(&v631 + 1) = v555;
      *&v632 = v554;
      *(&v632 + 1) = v547.i64[0];
      *&v633 = v546;
      *(&v633 + 1) = v543;
      BigString.UTF8View.subscript.getter();
      v623 = v544;
      v624 = v47;
      v625 = v311;
      v626 = v12;
      v627 = v544;
      v628 = v47;
      v629 = v311;
      v630 = v12;
      v49 = &v598;
      specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v623, &v571);
      outlined destroy of BigSubstring.UTF8View(&v598);
      v313 = *(&v514 + 1);
      v46 = v514;
      v316 = *(&v515 + 1);
      v312 = v515;
      if (*&v573[24] != 2)
      {
        v46 = *v573;
        if (v564 > *v573 >> 10)
        {
          goto LABEL_406;
        }

        v313 = *&v573[8];
        v312 = *&v573[16];
        v316 = *&v573[24];
        v47 = v536.i64[0];
        v311 = v537;
        v12 = v548.i64[0];
      }
    }

    v609 = v544;
    v610 = v47;
    v611 = v311;
    v612 = v12;
    v613 = v46;
    v614 = v313;
    v558.i64[0] = v312;
    v615 = v312;
    v557 = v316;
    v616 = v316;
    v317 = v531;
    v318 = v313;
    if (specialized Collection<>._containsScalarConstraint.getter(v531))
    {
      v49 = (v317 + 7);
      v319 = 1 << *(v317 + 32);
      v320 = -1;
      if (v319 < 64)
      {
        v320 = ~(-1 << v319);
      }

      v321 = v320 & v317[7];
      v322 = (v319 + 63) >> 6;

      v323 = 0;
      v12 = MEMORY[0x1E69E7CC0];
LABEL_218:
      v47 = v525;
      while (v321)
      {
LABEL_224:
        v325 = __clz(__rbit64(v321));
        v321 &= v321 - 1;
        v326 = (v531[6] + ((v323 << 10) | (16 * v325)));
        v327 = v326[1];
        if (v327 >= 2)
        {
          v328 = specialized Collection.first.getter(*v326, v327);
          if ((v328 & 0x100000000) == 0)
          {
            v542 = v328;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12[1].i64[0] + 1, 1, v12->i8);
            }

            v330 = v12[1].u64[0];
            v329 = v12[1].u64[1];
            v331 = v330 + 1;
            v332 = v542;
            if (v330 >= v329 >> 1)
            {
              v535.i64[0] = v330 + 1;
              v333 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v329 > 1), v330 + 1, 1, v12->i8);
              v331 = v535.i64[0];
              v12 = v333;
              v332 = v542;
            }

            v12[1].i64[0] = v331;
            v12[2].i32[v330] = v332;
            goto LABEL_218;
          }
        }
      }

      while (1)
      {
        v324 = v323 + 1;
        if (__OFADD__(v323, 1))
        {
          goto LABEL_374;
        }

        if (v324 >= v322)
        {
          break;
        }

        v321 = *(v49 + 8 * v324);
        ++v323;
        if (v321)
        {
          v323 = v324;
          goto LABEL_224;
        }
      }

      v313 = v318;

      v617 = v556;
      v618 = v555;
      v619 = v554;
      v620 = v547.i64[0];
      v621 = v546;
      v622 = v543;
      BigString.UnicodeScalarView.subscript.getter();
      v49 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v12);
      v415 = v414;
      v417 = v416;
      v12 = v418;

      swift_unknownObjectRelease();
      outlined destroy of BigSubstring.UnicodeScalarView(&v571);
      v141 = v553;
      if (v12 != 2)
      {
        if (v564 > v49 >> 10)
        {
          goto LABEL_407;
        }

        v46 = v49;
        v313 = v415;
        v558.i64[0] = v417;
        v557 = v12;
      }
    }

    else
    {

      swift_unknownObjectRelease();
      v47 = v525;
    }

    if (v516 == v46 >> 10)
    {
      v46 = v565.i64[0];
      RangeSet.ranges.getter();
      v419 = v560.i64[0];
      v49 = RangeSet.Ranges.count.getter();
      (v563)(v46, v419);
      v410 = v49 - 1;
      v124 = v541;
      if (__OFSUB__(v49, 1))
      {
        goto LABEL_399;
      }

      goto LABEL_310;
    }

LABEL_313:
    v49 = v533[1].u64[0];
    v124 = v541;
    v11 = v550;
LABEL_325:
    v138 = v548.i64[0];
    outlined destroy of AttributedString.Runs(v529, type metadata accessor for AttributedString.Runs);
    v433 = v540;
    v12 = *v540;
    if (v564 < *v540 >> 10)
    {
      goto LABEL_383;
    }

    v434 = *(v540 + 3);
    v564 = *(v540 + 1);
    v565 = v434;
    *v540 = v46;
    v433[1] = v313;
    v435 = v557;
    v433[2] = v558.i64[0];
    v433[3] = v435;
    v433[4] = v49;
    v142 = v520;
LABEL_327:
    v548.i64[0] = v138;
    v436 = (*(v142 + 24))();
    v46 = v523;
    if (*(v545 + 16))
    {
      v49 = specialized __RawDictionaryStorage.find<A>(_:)(v436, v437);
      v439 = v438;

      if (v439)
      {
        v440 = v11;
        v11 = v12;
        v12 = v47;
        outlined init with copy of AttributedString._AttributeValue(*(v545 + 56) + 72 * v49, &v583);
        outlined init with copy of Hashable & Sendable(&v583, v580);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
        v47 = v510;
        if (!swift_dynamicCast())
        {
          goto LABEL_413;
        }

        outlined destroy of AttributedString._AttributeValue(&v583);
        v441 = *(v46 - 8);
        v442 = *(v441 + 56);
        v442(v47, 0, 1, v46);
        (*(v441 + 32))(v124, v47, v46);
        v442(v124, 0, 1, v46);
        v47 = v12;
        v12 = v11;
        v11 = v440;
        v141 = v553;
LABEL_333:
        v583 = v538;
        v584 = v539;
        v585.i64[0] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSny10Foundation16AttributedStringV5IndexVGMd);
        v443 = swift_getTupleTypeMetadata();
        v444 = v443[12];
        v445 = (*(v11 + 24))(v141, v11);
        v11 = v545;
        if (*(v545 + 16))
        {
          v447 = specialized __RawDictionaryStorage.find<A>(_:)(v445, v446);
          v449 = v448;

          v450 = v552;
          if (v449)
          {
            outlined init with copy of AttributedString._AttributeValue(*(v11 + 56) + 72 * v447, &v583);
            outlined init with copy of Hashable & Sendable(&v583, v580);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
            v49 = v524;
            v11 = v47;
            if (!swift_dynamicCast())
            {
              goto LABEL_414;
            }

            outlined destroy of AttributedString._AttributeValue(&v583);
            v451 = v49;
            v452 = *(v49 - 8);
            v453 = *(v452 + 56);
            v453(v11, 0, 1, v451);
            (*(v452 + 32))(v124 + v444, v11, v451);
            v453(v124 + v444, 0, 1, v451);
            v450 = v552;
            v11 = v545;
LABEL_339:
            v454 = v443[16];
            v455 = (*(v549 + 24))(v450);
            if (*(v11 + 16))
            {
              v457 = specialized __RawDictionaryStorage.find<A>(_:)(v455, v456);
              v459 = v458;

              v460 = v551;
              if (v459)
              {
                v563 = v12;
                outlined init with copy of AttributedString._AttributeValue(*(v11 + 56) + 72 * v457, &v583);
                outlined init with copy of Hashable & Sendable(&v583, v580);
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
                v12 = v511;
                v47 = v522;
                if (!swift_dynamicCast())
                {
                  goto LABEL_415;
                }

                outlined destroy of AttributedString._AttributeValue(&v583);
                v461 = *(v47 - 8);
                v462 = *(v461 + 56);
                v462(v12, 0, 1, v47);
                (*(v461 + 32))(v124 + v454, v12, v47);
                v462((v124 + v454), 0, 1, v47);
                v460 = v551;
                v12 = v563;
LABEL_345:
                v583.i64[0] = v11;
                v583.i64[1] = v527;
                v584 = v495;
                v585 = v496;
                *&v586 = v500;
                *(&v586 + 1) = v499;
                v587 = v498;
                v588 = v497;
                v589 = v501;
                v463 = v443[20];
                v464 = (*(*(&v549 + 1) + 24))(v460);
                if (*(v11 + 16))
                {
                  v466 = specialized __RawDictionaryStorage.find<A>(_:)(v464, v465);
                  v468 = v467;

                  if (v468)
                  {
                    outlined init with copy of AttributedString._AttributeValue(*(v11 + 56) + 72 * v466, v580);

                    outlined init with copy of Hashable & Sendable(v580, &v579);
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
                    v11 = v509;
                    v47 = AssociatedTypeWitness;
                    if ((swift_dynamicCast() & 1) == 0)
                    {
                      goto LABEL_416;
                    }

                    outlined destroy of AttributedString._AttributeValue(v580);
                    outlined destroy of AttributedString.Runs.Run(&v583);
                    v469 = *(v47 - 8);
                    v470 = *(v469 + 56);
                    v470(v11, 0, 1, v47);
                    (*(v469 + 32))(v124 + v463, v11, v47);
                    v470(v124 + v463, 0, 1, v47);
                    goto LABEL_352;
                  }

                  outlined destroy of AttributedString.Runs.Run(&v583);
                }

                else
                {
                  outlined destroy of AttributedString.Runs.Run(&v583);
                }

                (*(*(AssociatedTypeWitness - 8) + 56))(v124 + v463, 1, 1);
LABEL_352:
                v471 = v536.i64[0];
                v472 = v537;
                v473 = v532;
                v474 = v124 + v443[24];
                *v474 = v12;
                v475 = v565;
                *(v474 + 8) = v564;
                *(v474 + 24) = v475;
                *(v474 + 40) = v544;
                *(v474 + 48) = v471;
                v476 = v548.i64[0];
                *(v474 + 56) = v472;
                *(v474 + 64) = v476;
                *(v474 + 72) = v473;
                return (*(*(v443 - 1) + 56))(v124, 0, 1, v443);
              }
            }

            else
            {

              v460 = v551;
            }

            (*(*(v522 - 8) + 56))(v124 + v454, 1, 1);
            goto LABEL_345;
          }
        }

        else
        {

          v450 = v552;
        }

        (*(*(v524 - 8) + 56))(v124 + v444, 1, 1);
        goto LABEL_339;
      }
    }

    else
    {
    }

    (*(*(v46 - 8) + 56))(v124, 1, 1, v46);
    goto LABEL_333;
  }

  v306 = *(v46 + 120);
  if (v299 == v306)
  {
    v307 = *(v46 + 176);
    if (*(v46 + 208) == 2)
    {
      if (v307 != 2)
      {
        goto LABEL_274;
      }
    }

    else if (v307 == 2 || (*(v46 + 184) ^ *(v46 + 152)) >= 1024)
    {
      goto LABEL_274;
    }
  }

  v493 = *(v46 + 120);
  v558.i64[0] = v299;
  if (v299 >= v306)
  {
    goto LABEL_396;
  }

  v334 = v533;
  v335 = v533[4].i64[1];
  v336 = v533[5].i64[0];
  v337 = v533[5].i64[1];
  v46 = v533[6].u64[0];
  swift_unknownObjectRetain();
  v47 = v518;
  v338 = v530;
  v12 = v528;
  specialized Rope.subscript.getter(v518, v530, v528, v335, v336, v337, v46);
  v534.i64[0] = v339;
  v491 = v340;
  swift_unknownObjectRelease();
  v49 = v334[9];
  v341 = v334[10];
  v342 = v558.i64[0] + 1;
  v344 = v334[11];
  v343 = v334[12];
  v492 = (v556 + 40);
  v571.i64[0] = v47;
  v571.i64[1] = v338;
  v572.i64[0] = v12;
  while (2)
  {
    if (v47 != v343)
    {
      goto LABEL_392;
    }

    v502 = v342;
    v517 = v343;
    v528 = v12;
    if (v12)
    {
      v47 = v341;
      v345 = &v12->i8[24 * ((v530 >> ((4 * v12[1].i8[2] + 8) & 0x3C)) & 0xF)];
      v346 = *(v345 + 3);
      v46 = *(v345 + 4);
      swift_unknownObjectRetain();
    }

    else
    {
      swift_unknownObjectRetain();
      v47 = v341;
      v346 = specialized Rope._Node.subscript.getter(v530, v49);
      v46 = v347;
    }

    v348 = __OFADD__(v526, v346);
    v349 = v526 + v346;
    v12 = &v571;
    if (v348)
    {
      goto LABEL_393;
    }

    specialized Rope.formIndex(after:)(&v571, v49, v47, v344, v517);
    swift_unknownObjectRelease();
    v350 = v534.i64[0];
    if (v493 < v502)
    {
      goto LABEL_279;
    }

    v46 = v571.u64[1];
    if (v502 == v493)
    {
      v351 = v529[22];
      if (v529[26] == 2)
      {
        if (v351 == 2)
        {
LABEL_279:

          goto LABEL_280;
        }
      }

      else if (v351 != 2 && (v529[19] ^ v529[23]) < 1024)
      {
        goto LABEL_279;
      }
    }

    if (v571.i64[0] != v533[6].i64[0])
    {
      goto LABEL_394;
    }

    v489 = v571.u64[1];
    v490 = v349;
    v518 = v571.i64[0];
    v488 = v572.i64[0];
    if (v572.i64[0])
    {
      v352 = v572.i64[0] + 24 * ((v571.i64[1] >> ((4 * *(v572.i64[0] + 18) + 8) & 0x3C)) & 0xF);
      v49 = *(v352 + 40);
      v546 = *(v352 + 32);

      v494 = v49;
    }

    else
    {
      v49 = v533[4].u64[1];
      swift_unknownObjectRetain();
      specialized Rope._Node.subscript.getter(v46, v49);
      v546 = v353;
      v494 = v354;
      swift_unknownObjectRelease();
    }

    v355 = 0;
    v356 = v492;
    while (2)
    {
      if (v355 >= *(v556 + 16))
      {
        goto LABEL_371;
      }

      v558.i64[0] = v355;
      v358 = *(v356 - 1);
      v357 = *v356;
      v557 = v356;
      if (*(v350 + 16))
      {

        v359 = specialized __RawDictionaryStorage.find<A>(_:)(v358, v357);
        if (v360)
        {
          outlined init with copy of AttributedString._AttributeValue(*(v350 + 56) + 72 * v359, &v598);
        }

        else
        {
          v602 = 0;
          v601 = 0u;
          v600 = 0u;
          v599 = 0u;
          v598 = 0u;
        }
      }

      else
      {
        v602 = 0;
        v601 = 0u;
        v600 = 0u;
        v599 = 0u;
        v598 = 0u;
      }

      v47 = v546;
      if (*(v546 + 16))
      {
        v361 = specialized __RawDictionaryStorage.find<A>(_:)(v358, v357);
        v363 = v362;

        if (v363)
        {
          outlined init with copy of AttributedString._AttributeValue(*(v47 + 56) + 72 * v361, &v583);
          goto LABEL_264;
        }
      }

      else
      {
      }

      v587 = 0;
      v586 = 0u;
      v585 = 0u;
      v584 = 0u;
      v583 = 0u;
LABEL_264:
      outlined init with copy of AttributedString._AttributeValue?(&v598, &v571);
      outlined init with copy of AttributedString._AttributeValue?(&v583, &v574);
      if (v572.i64[1])
      {
        outlined init with copy of AttributedString._AttributeValue?(&v571, v580);
        if (!v575.i64[1])
        {
          outlined destroy of TermOfAddress?(&v583, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of TermOfAddress?(&v598, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of AttributedString._AttributeValue(v580);
LABEL_276:
          outlined destroy of TermOfAddress?(&v571, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMd);
LABEL_278:

          goto LABEL_279;
        }

        v568 = v576;
        v569 = v577;
        v570 = v578;
        v566 = v574;
        v567 = v575;
        v364 = v581;
        v543 = v582;
        v542 = __swift_project_boxed_opaque_existential_1(v580, v581);
        v365 = __swift_project_boxed_opaque_existential_1(&v566, v567.i64[1]);
        v555 = &v477;
        v366 = *(v364 - 8);
        MEMORY[0x1EEE9AC00](v365);
        v46 = &v477 - ((v367 + 15) & 0xFFFFFFFFFFFFFFF0);
        v554 = &v477;
        v369 = MEMORY[0x1EEE9AC00](v368);
        v12 = (&v477 - ((v370 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v371 + 16))(v12, v369);
        v372 = type metadata accessor for Optional();
        v547.i64[0] = &v477;
        v47 = *(v372 - 8);
        MEMORY[0x1EEE9AC00](v372);
        v374 = &v477 - v373;
        v375 = swift_dynamicCast();
        v376 = *(v366 + 56);
        if (!v375)
        {
          v376(v374, 1, 1, v364);
          outlined destroy of TermOfAddress?(&v583, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of TermOfAddress?(&v598, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          v378 = *(v47 + 8);
          v47 += 8;
          v378(v374, v372);
          outlined destroy of AttributedString._AttributeValue(&v566);
          outlined destroy of AttributedString._AttributeValue(v580);
          outlined destroy of TermOfAddress?(&v571, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          goto LABEL_278;
        }

        v376(v374, 0, 1, v364);
        (*(v366 + 32))(v46, v374, v364);
        v377 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v366 + 8))(v46, v364);
        v49 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMd;
        outlined destroy of TermOfAddress?(&v583, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?(&v598, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of AttributedString._AttributeValue(&v566);
        outlined destroy of AttributedString._AttributeValue(v580);
        outlined destroy of TermOfAddress?(&v571, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        v350 = v534.i64[0];
        v12 = &v571;
        if ((v377 & 1) == 0)
        {
          goto LABEL_278;
        }
      }

      else
      {
        v49 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMd;
        outlined destroy of TermOfAddress?(&v583, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?(&v598, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        if (v575.i64[1])
        {
          goto LABEL_276;
        }

        outlined destroy of TermOfAddress?(&v571, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      }

      v355 = v558.i64[0] + 1;
      v356 = (v557 + 16);
      if (v535.i64[0] != v558.i64[0] + 1)
      {
        continue;
      }

      break;
    }

    v49 = v533[4].u64[1];
    v341 = v533[5].u64[0];
    v344 = v533[5].i64[1];
    v343 = v533[6].u64[0];
    v526 = v490;
    v47 = v518;
    v571.i64[0] = v518;
    v571.i64[1] = v489;
    v12 = v488;
    v530 = v489;
    v572.i64[0] = v488;
    v342 = v502 + 1;
    if (!__OFADD__(v502, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_274:

  v517 = v518;
LABEL_280:
  v379 = v533;
  v49 = v533[4].u64[1];
  v380 = v533[5].i64[0];
  v381 = v533[5].i64[1];
  v382 = v533[6].i64[0];
  swift_unknownObjectRetain();
  v383 = specialized Rope.subscript.getter(v517, v530, v528, v49, v380, v381, v382);
  v46 = v384;
  swift_unknownObjectRelease();

  if (__OFADD__(v526, v383))
  {
    goto LABEL_389;
  }

  v385 = *(&v379[2] + 8);
  v631 = *(&v379[1] + 8);
  v632 = v385;
  v633 = *(&v379[3] + 8);
  if (__OFSUB__(v526 + v383, v513 >> 11))
  {
    goto LABEL_390;
  }

  swift_unknownObjectRetain();
  v46 = BigString.UTF8View.index(_:offsetBy:)();
  v12 = v386;
  v388 = v387;
  v49 = v389;
  swift_unknownObjectRelease();
  v390 = v46 >> 10;
  v391 = v379[1].i64[1];
  v546 = v379[2].u64[0];
  v392 = v379[3].i64[0];
  v547.i64[0] = v379[2].i64[1];
  v554 = v392;
  v393 = v379[4].i64[0];
  v555 = v379[3].i64[1];
  v556 = v393;
  if (v46 >> 10 >= v516)
  {
    v396 = v544;
    v566.i64[0] = v544;
    v47 = v536.i64[0];
    v566.i64[1] = v536.i64[0];
    v397 = v537;
    v567.i64[0] = v537;
    v398 = v548.i64[0];
    v567.i64[1] = v548.i64[0];
    v12 = *(&v514 + 1);
    v46 = v514;
    v568 = v514;
    v49 = *(&v515 + 1);
    v399 = v515;
    v569 = v515;
    v543 = v391;
    swift_unknownObjectRetain();
    if (specialized Set.contains(_:)(0, 0, v531))
    {
      v617 = v543;
      v618 = v546;
      v619 = v547.i64[0];
      v620 = v554;
      v621 = v555;
      v622 = v556;
      BigString.UTF8View.subscript.getter();
      v400 = _ss10SetAlgebraPs7ElementQz012ArrayLiteralC0RtzrlE05arrayE0xAFd_tcfCSS10FoundationE22_BlockSearchingOptionsV_Tt1g5Tf4g_n(&outlined read-only object #1 of AttributedString.Runs.AttributesSlice4.Iterator.next());
      v623 = v396;
      v624 = v47;
      v625 = v397;
      v626 = v398;
      v627 = v396;
      v628 = v47;
      v629 = v397;
      v630 = v398;
      specialized BidirectionalCollection<>._getBlock(for:in:)(v400, &v623, &v571);
      outlined destroy of BigSubstring.UTF8View(&v598);
      v12 = *(&v514 + 1);
      v46 = v514;
      v49 = *(&v515 + 1);
      v399 = v515;
      if (*&v573[24] != 2)
      {
        v46 = *v573;
        if (v564 > *v573 >> 10)
        {
          goto LABEL_402;
        }

        v12 = *&v573[8];
        v399 = *&v573[16];
        v49 = *&v573[24];
        v396 = v544;
        v47 = v536.i64[0];
        v397 = v537;
        v398 = v548.i64[0];
      }
    }

    v609 = v396;
    v610 = v47;
    v611 = v397;
    v612 = v398;
    v613 = v46;
    v614 = v12;
    v558.i64[0] = v399;
    v615 = v399;
    v557 = v49;
    v616 = v49;
    v401 = v531;
    if (specialized Collection<>._containsScalarConstraint.getter(v531))
    {
      v402 = specialized Sequence.compactMap<A>(_:)(v401);

      v603 = v543;
      v604 = v546;
      v605 = v547.i64[0];
      v606 = v554;
      v607 = v555;
      v608 = v556;
      BigString.UnicodeScalarView.subscript.getter();
      v403 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v402);
      v405 = v404;
      v556 = v406;
      v49 = v407;

      swift_unknownObjectRelease();
      outlined destroy of BigSubstring.UnicodeScalarView(&v571);
      v141 = v553;
      v47 = v525;
      if (v49 != 2)
      {
        if (v564 > v403 >> 10)
        {
          goto LABEL_403;
        }

        v46 = v403;
        v12 = v405;
        v558.i64[0] = v556;
        v557 = v49;
      }
    }

    else
    {

      swift_unknownObjectRelease();
      v141 = v553;
      v47 = v525;
    }

    if (v516 == v46 >> 10)
    {
      v46 = v565.i64[0];
      RangeSet.ranges.getter();
      v408 = v560.i64[0];
      v409 = RangeSet.Ranges.count.getter();
      (v563)(v46, v408);
      v410 = v409 - 1;
      v124 = v541;
      if (!__OFSUB__(v409, 1))
      {
LABEL_310:
        if (v11 == v410)
        {
          v49 = v533[1].u64[0];
          v313 = *(&v514 + 1);
          v46 = v514;
          v557 = *(&v515 + 1);
          v558.i64[0] = v515;
        }

        else
        {
          v420 = v565.i64[0];
          RangeSet.ranges.getter();
          v421 = v560.i64[0];
          RangeSet.Ranges.subscript.getter();
          (v563)(v420, v421);
          v313 = v583.i64[1];
          v46 = v583.i64[0];
          v557 = v584.i64[1];
          v558.i64[0] = v584.i64[0];
          v49 = v533[1].u64[0];
        }

        v11 = v550;
        goto LABEL_325;
      }

      __break(1u);
    }

    v313 = v12;
    goto LABEL_313;
  }

  v394 = v548.i64[0];
  if (v390 < v564)
  {
    goto LABEL_398;
  }

  v566.i64[0] = v544;
  v566.i64[1] = v536.i64[0];
  v567.i64[0] = v537;
  v567.i64[1] = v548.i64[0];
  v568.i64[0] = v46;
  v568.i64[1] = v12;
  *&v569 = v388;
  *(&v569 + 1) = v49;
  v11 = v550;
  v395 = v531;
  if (v564 == v390)
  {
    v557 = v49;
    v558.i64[0] = v388;

    goto LABEL_323;
  }

  v411 = v391;
  swift_unknownObjectRetain();
  if ((specialized Set.contains(_:)(0, 0, v395) & 1) == 0)
  {
    v412 = v411;
LABEL_318:
    v609 = v544;
    v610 = v536.i64[0];
    v611 = v537;
    v612 = v394;
    v613 = v46;
    v614 = v12;
    v558.i64[0] = v388;
    v615 = v388;
    v557 = v49;
    v616 = v49;
    if (specialized Collection<>._containsScalarConstraint.getter(v395))
    {
      v427 = specialized Sequence.compactMap<A>(_:)(v395);

      v603 = v412;
      v604 = v546;
      v605 = v547.i64[0];
      v606 = v554;
      v607 = v555;
      v608 = v556;
      BigString.UnicodeScalarView.subscript.getter();
      v47 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v427);
      v429 = v428;
      v431 = v430;
      v49 = v432;
      v11 = v550;

      swift_unknownObjectRelease();
      outlined destroy of BigSubstring.UnicodeScalarView(&v571);
      v124 = v541;
      v141 = v553;
      if (v49 != 2)
      {
        if (v564 > v47 >> 10)
        {
          goto LABEL_411;
        }

        v46 = v47;
        v12 = v429;
        v558.i64[0] = v431;
        v557 = v49;
      }
    }

    else
    {

      swift_unknownObjectRelease();
LABEL_323:
      v124 = v541;
      v141 = v553;
    }

    v313 = v12;
    v49 = v533[1].u64[0];
    v47 = v525;
    goto LABEL_325;
  }

  v412 = v411;
  v617 = v411;
  v618 = v546;
  v619 = v547.i64[0];
  v620 = v554;
  v621 = v555;
  v622 = v556;
  v47 = v11;
  BigString.UTF8View.subscript.getter();
  v413 = _ss10SetAlgebraPs7ElementQz012ArrayLiteralC0RtzrlE05arrayE0xAFd_tcfCSS10FoundationE22_BlockSearchingOptionsV_Tt1g5Tf4g_n(&outlined read-only object #0 of AttributedString.Runs.AttributesSlice4.Iterator.next());
  v623 = v544;
  v624 = v536.i64[0];
  v625 = v537;
  v626 = v394;
  v627 = v544;
  v628 = v536.i64[0];
  v629 = v537;
  v630 = v394;
  specialized BidirectionalCollection<>._getBlock(for:in:)(v413, &v623, &v571);
  outlined destroy of BigSubstring.UTF8View(&v598);
  if (*&v573[24] == 2)
  {
    goto LABEL_318;
  }

  v46 = *v573;
  if (v564 <= *v573 >> 10)
  {
    v12 = *&v573[8];
    v388 = *&v573[16];
    v49 = *&v573[24];
    goto LABEL_318;
  }

LABEL_410:
  __break(1u);
LABEL_411:
  __break(1u);
LABEL_412:
  __break(1u);
LABEL_413:
  (*(*(v46 - 8) + 56))(v47, 1, 1, v46);
  (*(v503 + 8))(v47, v538.i64[0]);
  __break(1u);
LABEL_414:
  (*(*(v49 - 8) + 56))(v11, 1, 1, v49);
  (*(v504 + 8))(v11, v538.i64[1]);
  __break(1u);
LABEL_415:
  (*(*(v47 - 8) + 56))(v12, 1, 1, v47);
  (*(v505 + 8))(v12, v539.i64[0]);
  __break(1u);
LABEL_416:
  (*(*(v47 - 8) + 56))(v11, 1, 1, v47);
  result = (*(v506 + 8))(v11, v539.i64[1]);
  __break(1u);
  return result;
}

Swift::Int AttributedString.Runs.subscript.getter@<X0>(uint64_t a1@<X5>, uint64_t a2@<X6>, uint64_t a3@<X7>, uint64_t a4@<X8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v58 = a4;
  v59 = a11;
  v60 = a6;
  v57 = a5;
  v56 = a10;
  v16 = type metadata accessor for AttributedString.Runs();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttributedString.Runs(v11, v18, type metadata accessor for AttributedString.Runs);
  v55 = v18;
  outlined init with copy of AttributedString.Runs(v18, a4, type metadata accessor for AttributedString.Runs);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_18121D6C0;
  *(v19 + 32) = (*(a7 + 24))(a1, a7);
  *(v19 + 40) = v20;
  *(v19 + 48) = (*(a8 + 24))(a2, a8);
  *(v19 + 56) = v21;
  v22 = a3;
  *(v19 + 64) = (*(a9 + 24))(a3, a9);
  *(v19 + 72) = v23;
  v24 = v56;
  v25 = v57;
  *(v19 + 80) = (*(v56 + 24))(v57, v56);
  *(v19 + 88) = v26;
  v63[2] = a1;
  v63[3] = a2;
  v63[4] = v22;
  v63[5] = v25;
  v63[6] = v60;
  v63[7] = a7;
  v63[8] = a8;
  v63[9] = a9;
  v63[10] = v24;
  v63[11] = v59;
  v54 = type metadata accessor for AttributedString.Runs.AttributesSlice5();
  *(v58 + *(v54 + 100)) = v19;
  v27 = *(a7 + 32);
  v61 = &v62;
  v27(a1, a7);
  (*(a8 + 32))(a2, a8);
  (*(a9 + 32))(v22, a9);
  (*(v24 + 32))(v25, v24);
  (*(v59 + 32))(v63);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOSgGMd);
  v28 = static _SetStorage.allocate(capacity:)();
  v29 = 0;
  v30 = v28 + 56;
  while (1)
  {
    v33 = &v61[2 * v29];
    v34 = *v33;
    v35 = v33[1];
    Hasher.init(_seed:)();
    if (v35 == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      if (v35)
      {
        MEMORY[0x1865CD060](1);
        String.hash(into:)();
      }

      else
      {
        MEMORY[0x1865CD060](0);
      }
    }

    result = Hasher._finalize()();
    v37 = ~(-1 << *(v28 + 32));
    v38 = result & v37;
    v39 = (result & v37) >> 6;
    v40 = *(v30 + 8 * v39);
    v41 = 1 << (result & v37);
    if ((v41 & v40) == 0)
    {
      break;
    }

    while (1)
    {
      v42 = (*(v28 + 48) + 16 * v38);
      v43 = *v42;
      v44 = v42[1];
      if (v44 == 1)
      {
        if (v35 == 1)
        {
          outlined copy of AttributedString.AttributeRunBoundaries?(*v42, 1);
          v31 = v43;
          v32 = 1;
          goto LABEL_2;
        }

LABEL_14:
        outlined copy of AttributedString.AttributeRunBoundaries?(*v42, v42[1]);
        outlined copy of AttributedString.AttributeRunBoundaries?(v34, v35);
        outlined consume of AttributedString.AttributeRunBoundaries?(v43, v44);
        v45 = v34;
        v46 = v35;
LABEL_15:
        result = outlined consume of AttributedString.AttributeRunBoundaries?(v45, v46);
        goto LABEL_16;
      }

      if (v35 == 1)
      {
        goto LABEL_14;
      }

      if (!v44)
      {
        break;
      }

      if (!v35)
      {
        outlined copy of AttributedString.AttributeRunBoundaries?(*v42, v42[1]);
        outlined copy of AttributedString.AttributeRunBoundaries?(v34, 0);
        outlined copy of AttributedString.AttributeRunBoundaries?(v43, v44);

        v45 = v43;
        v46 = v44;
        goto LABEL_15;
      }

      if (v43 == v34 && v44 == v35)
      {
        outlined copy of AttributedString.AttributeRunBoundaries?(v34, v35);
        outlined copy of AttributedString.AttributeRunBoundaries?(v34, v35);

LABEL_33:
        v31 = v34;
        v32 = v35;
        goto LABEL_2;
      }

      v48 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined copy of AttributedString.AttributeRunBoundaries?(v43, v44);
      outlined copy of AttributedString.AttributeRunBoundaries?(v34, v35);
      outlined copy of AttributedString.AttributeRunBoundaries?(v43, v44);

      if (v48)
      {
        outlined consume of AttributedString.AttributeRunBoundaries?(v34, v35);
        v34 = v43;
        v35 = v44;
        goto LABEL_33;
      }

      result = outlined consume of AttributedString.AttributeRunBoundaries?(v43, v44);
LABEL_16:
      v38 = (v38 + 1) & v37;
      v39 = v38 >> 6;
      v40 = *(v30 + 8 * (v38 >> 6));
      v41 = 1 << v38;
      if ((v40 & (1 << v38)) == 0)
      {
        goto LABEL_29;
      }
    }

    outlined copy of AttributedString.AttributeRunBoundaries?(*v42, 0);
    if (v35)
    {
      outlined copy of AttributedString.AttributeRunBoundaries?(v34, v35);

      v45 = v43;
      v46 = 0;
      goto LABEL_15;
    }

    swift_bridgeObjectRelease_n();
    v31 = v43;
    v32 = 0;
LABEL_2:
    outlined consume of AttributedString.AttributeRunBoundaries?(v31, v32);
LABEL_3:
    if (++v29 == 5)
    {
      outlined destroy of AttributedString.Runs(v55, type metadata accessor for AttributedString.Runs);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV22AttributeRunBoundariesOSgMd);
      result = swift_arrayDestroy();
      *(v58 + *(v54 + 104)) = v28;
      return result;
    }
  }

LABEL_29:
  *(v30 + 8 * v39) = v40 | v41;
  v49 = (*(v28 + 48) + 16 * v38);
  *v49 = v34;
  v49[1] = v35;
  v50 = *(v28 + 16);
  v51 = __OFADD__(v50, 1);
  v52 = v50 + 1;
  if (!v51)
  {
    *(v28 + 16) = v52;
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

uint64_t AttributedString.Runs.AttributesSlice5.makeIterator()@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 1);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v4 + 16);
  v8(v7, v5);
  result = (v8)(a2, v7, a1);
  v10 = *(v7 + 12);
  if (v10 == 2)
  {
    __break(1u);
  }

  else
  {
    v11 = *(v7 + 11);
    v16[0] = *(v7 + 72);
    v12 = *(*v7 + 16);
    (*(v4 + 8))(v7, a1);
    v13 = a1[2];
    v16[1] = a1[1];
    v16[2] = v13;
    v14 = a1[4];
    v16[3] = a1[3];
    v16[4] = v14;
    v16[5] = a1[5];
    result = type metadata accessor for AttributedString.Runs.AttributesSlice5.Iterator();
    v15 = a2 + *(result + 100);
    *v15 = v16[0];
    *(v15 + 16) = v11;
    *(v15 + 24) = v10;
    *(v15 + 32) = v12;
  }

  return result;
}

uint64_t AttributedString.Runs.AttributesSlice5.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v591 = a2;
  v4 = *(a1 + 88);
  v600 = *(a1 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v590 = type metadata accessor for Optional();
  v551 = *(v590 - 8);
  MEMORY[0x1EEE9AC00](v590);
  v554 = &v520 - v5;
  v6 = *(a1 + 40);
  v602 = *(a1 + 80);
  v605 = v6;
  v570 = swift_getAssociatedTypeWitness();
  v589.i64[1] = type metadata accessor for Optional();
  v550 = *(v589.i64[1] - 8);
  MEMORY[0x1EEE9AC00](v589.i64[1]);
  v553 = &v520 - v7;
  v8 = *(a1 + 32);
  v601 = *(a1 + 72);
  v606 = v8;
  v571 = swift_getAssociatedTypeWitness();
  v589.i64[0] = type metadata accessor for Optional();
  v549 = *(v589.i64[0] - 8);
  MEMORY[0x1EEE9AC00](v589.i64[0]);
  v557 = &v520 - v9;
  v10 = *(a1 + 24);
  v604 = *(a1 + 64);
  v603 = v10;
  v572 = swift_getAssociatedTypeWitness();
  v588.i64[1] = type metadata accessor for Optional();
  v548 = *(v588.i64[1] - 8);
  MEMORY[0x1EEE9AC00](v588.i64[1]);
  v556 = &v520 - v11;
  v12 = *(a1 + 56);
  v13 = *(a1 + 16);
  v573 = swift_getAssociatedTypeWitness();
  v588.i64[0] = type metadata accessor for Optional();
  v547 = *(v588.i64[0] - 8);
  MEMORY[0x1EEE9AC00](v588.i64[0]);
  v555 = &v520 - v14;
  v616 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  *&v614 = *(v616 - 8);
  MEMORY[0x1EEE9AC00](v616);
  v615.i64[0] = &v520 - v15;
  v593 = type metadata accessor for AttributedString.Runs();
  MEMORY[0x1EEE9AC00](v593);
  v612 = (&v520 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v578 = (&v520 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v610 = &v520 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v520 - v22);
  MEMORY[0x1EEE9AC00](v24);
  v609.i64[0] = &v520 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v608 = &v520 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v562 = &v520 - v29;
  MEMORY[0x1EEE9AC00](v30);
  *(&v561 + 1) = &v520 - v31;
  MEMORY[0x1EEE9AC00](v32);
  *&v561 = &v520 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v595.i64[0] = &v520 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v587 = &v520 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v586 = &v520 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v596.i64[0] = &v520 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v611 = &v520 - v43;
  v45 = MEMORY[0x1EEE9AC00](v44);
  v47 = &v520 - v46;
  v592 = (v2 + *(a1 + 100));
  v48 = *v592;
  v50 = *(v49 + 16);
  v599 = v2;
  v597 = a1;
  v607 = v49 + 16;
  v598 = v50;
  (v50)(&v520 - v46, v2, a1, v45);
  if (*(v47 + 208) == 2)
  {
    goto LABEL_414;
  }

  v51 = *(v47 + 184);
  v567 = v13;
  v568 = v12;
  v52.i64[0] = v13;
  v52.i64[1] = v603;
  v53.i64[0] = v606;
  v53.i64[1] = v605;
  v622 = v52;
  v623 = v53;
  v52.i64[0] = v600;
  v52.i64[1] = v12;
  v53.i64[0] = v604;
  v53.i64[1] = v601;
  *&v624[16] = v53;
  *v624 = v52;
  *&v624[32] = v602;
  v575 = v4;
  v625.i64[0] = v4;
  v54 = type metadata accessor for AttributedString.Runs.AttributesSlice5();
  v55 = *(v54 - 8);
  v56 = *(v55 + 8);
  v57 = v55 + 8;
  v58 = v47;
  v59 = v54;
  v56(v58, v54);
  if (v48 >> 10 == v51 >> 10)
  {
    v622 = v588;
    v623 = v589;
    *v624 = v590;
    *&v624[8] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSny10Foundation16AttributedStringV5IndexVGMd);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    return (*(*(TupleTypeMetadata - 8) + 56))(v591, 1, 1, TupleTypeMetadata);
  }

  v594 = v48;
  v613.i64[0] = v48 >> 10;
  v62 = v611;
  v63 = v599;
  v64 = v597;
  v65 = v59;
  v47 = v598;
  (v598)(v611, v599, v597);
  v66 = v609.i64[0];
  outlined init with copy of AttributedString.Runs(v62, v609.i64[0], type metadata accessor for AttributedString.Runs);
  v579 = v65;
  v56(v62, v65);
  LODWORD(v65) = *(v66 + *(v593 + 28));
  outlined destroy of AttributedString.Runs(v66, type metadata accessor for AttributedString.Runs);
  v67 = (v614 + 8);
  *&v614 = v614 + 8;
  v558 = v57;
  v559 = v56;
  if (v65 != 1)
  {
    v78 = v608;
    (v47)(v608, v63, v64);
    outlined init with copy of AttributedString.Runs(v78, v612, type metadata accessor for AttributedString.Runs);
    v56(v78, v579);
    v79 = v592[2];
    v610 = v592[1];
    v609.i64[0] = v79;
    v608 = v592[3];
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
    v80 = v615.i64[0];
    RangeSet.ranges.getter();
    v81 = v616;
    v82 = RangeSet.Ranges.count.getter();
    v13 = *v67;
    (*v67)(v80, v81);
    if (v82 >= 1)
    {
      v83 = 0;
      while (1)
      {
        if (__OFADD__(v83, v82))
        {
          goto LABEL_366;
        }

        v84 = (v83 + v82) / 2;
        v85 = v615.i64[0];
        RangeSet.ranges.getter();
        v86 = v616;
        RangeSet.Ranges.subscript.getter();
        (v13)(v85, v86);
        v12 = v622.i64[0] >> 10;
        if (v613.i64[0] >= v622.i64[0] >> 10)
        {
          v87 = *v624;
          if (v613.i64[0] < *v624 >> 10)
          {
            v613 = v622;
            v596 = v623;
            v122 = *v612;
            v123 = v594;
            AttributedString.Guts.findRun(at:)(v594, v608, v622.i64);
            v616 = v622.i64[1];
            v124 = v622.i64[0];
            *&v614 = v623.i64[0];
            v595 = *&v624[24];
            v615 = *&v624[8];
            v13 = *(v122 + 72);
            v125 = *(v122 + 80);
            v126 = *(v122 + 88);
            v4 = *(v122 + 96);
            swift_unknownObjectRetain();
            v127 = specialized Rope.subscript.getter(v124, v616, v614, v13, v125, v126, v4);
            v47 = v128;
            v576 = v129;
            swift_unknownObjectRelease();
            v130 = v12 < v615.i64[0] >> 10;
            v131 = v127 + (v615.i64[0] >> 11);
            if (!__OFADD__(v127, v615.i64[0] >> 11))
            {
              if ((v87 >> 11) < v131)
              {
                v131 = v87 >> 11;
              }

              v132 = *(v122 + 40);
              v622 = *(v122 + 24);
              v623 = v132;
              *v624 = *(v122 + 56);
              v4 = v131 - (v123 >> 11);
              v13 = v604;
              v12 = v573;
              if (!__OFSUB__(v131, v123 >> 11))
              {
                swift_unknownObjectRetain();
                v133 = BigString.UTF8View.index(_:offsetBy:)();
                v544 = v134;
                v545 = v133;
                v542 = v136;
                v543 = v135;
                swift_unknownObjectRelease();
                v563 = v122;

                outlined destroy of AttributedString.Runs(v612, type metadata accessor for AttributedString.Runs);
                v137 = v611;
                (v598)(v611, v599, v597);
                v138 = v592;
                v139 = v592[4];
                v140 = *(v592 + 1);
                v644 = *v592;
                v645 = v140;
                *&v646 = v139;

                v141 = v579;
                AttributedString.Runs.AttributesSlice5.index(after:)(&v644, v579, &v649);
                (v559)(v137, v141);
                if (v649 >> 10 >= *v138 >> 10)
                {
                  v616 = *v138;
                  v142 = vdup_n_s32(v130);
                  v143.i64[0] = v142.u32[0];
                  v143.i64[1] = v142.u32[1];
                  v144 = vcltzq_s64(vshlq_n_s64(v143, 0x3FuLL));
                  v541 = vbslq_s8(v144, v595, v596);
                  v540 = vbslq_s8(v144, v615, v613);
                  v145 = *(&v649 + 1);
                  v146 = v650;
                  v147 = v651;
                  v148 = *(v138 + 3);
                  v614 = *(v138 + 1);
                  v615 = v148;
                  v595.i64[0] = v649;
                  *v138 = v649;
                  v138[1] = v145;
                  v587 = v145;
                  v585.i64[0] = v146;
                  *(v138 + 1) = v146;
                  v586 = *(&v146 + 1);
                  v581 = v147;
                  v138[4] = v147;
                  v149 = v591;
                  v4 = v603;
                  goto LABEL_324;
                }

LABEL_383:
                __break(1u);
LABEL_384:
                __break(1u);
LABEL_385:
                __break(1u);
LABEL_386:
                __break(1u);
LABEL_387:
                __break(1u);
LABEL_388:
                __break(1u);
LABEL_389:
                __break(1u);
LABEL_390:
                __break(1u);
LABEL_391:
                __break(1u);
LABEL_392:
                __break(1u);
LABEL_393:
                __break(1u);
LABEL_394:
                __break(1u);
LABEL_395:
                __break(1u);
LABEL_396:
                __break(1u);
LABEL_397:
                __break(1u);
LABEL_398:
                __break(1u);
LABEL_399:
                __break(1u);
LABEL_400:
                __break(1u);
LABEL_401:
                __break(1u);
LABEL_402:
                __break(1u);
LABEL_403:
                __break(1u);
LABEL_404:
                __break(1u);
LABEL_405:
                __break(1u);
LABEL_406:
                __break(1u);
                goto LABEL_407;
              }

LABEL_381:
              __break(1u);
LABEL_382:
              __break(1u);
              goto LABEL_383;
            }

LABEL_379:
            __break(1u);
LABEL_380:
            __break(1u);
            goto LABEL_381;
          }

          v83 = v84 + 1;
          v84 = v82;
        }

        v82 = v84;
        if (v83 >= v84)
        {
          goto LABEL_362;
        }
      }
    }

    goto LABEL_362;
  }

  v68 = v596.i64[0];
  (v47)(v596.i64[0], v63, v64);
  outlined init with copy of AttributedString.Runs(v68, v23, type metadata accessor for AttributedString.Runs);
  v56(v68, v579);
  v69 = v592[1];
  v565 = v592[2];
  v566 = v69;
  v564 = v592[3];
  v13 = v67;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v71 = v615.i64[0];
  v611 = v70;
  RangeSet.ranges.getter();
  v72 = v616;
  v73 = RangeSet.Ranges.count.getter();
  v612 = *v67;
  v612(v71, v72);
  if (v73 < 1)
  {
LABEL_361:
    __break(1u);
LABEL_362:
    __break(1u);
    goto LABEL_363;
  }

  v13 = 0;
  v74 = v615.i64[0];
  while (1)
  {
    if (__OFADD__(v13, v73))
    {
      goto LABEL_365;
    }

    v75 = (v13 + v73) / 2;
    RangeSet.ranges.getter();
    v76 = v616;
    RangeSet.Ranges.subscript.getter();
    v612(v74, v76);
    v77 = v622.i64[0] >> 10;
    if (v613.i64[0] >= v622.i64[0] >> 10)
    {
      break;
    }

LABEL_7:
    v73 = v75;
    if (v13 >= v75)
    {
      goto LABEL_361;
    }
  }

  v13 = *v624;
  if (v613.i64[0] >= *v624 >> 10)
  {
    v13 = v75 + 1;
    v75 = v73;
    goto LABEL_7;
  }

  v585 = v622;
  v584 = v623;
  v88 = *v23;
  AttributedString.Guts.findRun(at:)(v594, v564, v622.i64);
  v596.i64[0] = v622.i64[1];
  v608 = v622.i64[0];
  v89 = v623.i64[0];
  v583 = *&v624[24];
  v609 = *&v624[8];
  v12 = *(v88 + 72);
  v90 = *(v88 + 80);
  v47 = *(v88 + 88);
  v91 = *(v88 + 96);
  swift_unknownObjectRetain();
  v92 = specialized Rope.subscript.getter(v608, v596.u64[0], v89, v12, v90, v47, v91);
  v4 = v93;
  v576 = v94;
  swift_unknownObjectRelease();
  v95 = v92 + (v609.i64[0] >> 11);
  if (__OFADD__(v92, v609.i64[0] >> 11))
  {
LABEL_378:
    __break(1u);
    goto LABEL_379;
  }

  LODWORD(v608) = v77 < v609.i64[0] >> 10;
  if ((v13 >> 11) < v95)
  {
    v95 = v13 >> 11;
  }

  v96 = *(v88 + 40);
  v724 = *(v88 + 24);
  v725 = v96;
  v726 = *(v88 + 56);
  if (__OFSUB__(v95, v594 >> 11))
  {
    goto LABEL_380;
  }

  swift_unknownObjectRetain();
  v97 = BigString.UTF8View.index(_:offsetBy:)();
  v544 = v98;
  v545 = v97;
  v542 = v100;
  v543 = v99;
  swift_unknownObjectRelease();
  v563 = v88;

  outlined destroy of AttributedString.Runs(v23, type metadata accessor for AttributedString.Runs);
  v101 = v586;
  v102 = v599;
  v103 = v597;
  v104 = v598;
  (v598)(v586, v599, v597);
  outlined init with copy of AttributedString.Runs(v101, v610, type metadata accessor for AttributedString.Runs);
  v535 = v4;

  v105 = v101;
  v13 = v579;
  v4 = v558;
  v106 = v559;
  (v559)(v105, v579);
  v107 = v587;
  (v104)(v587, v102, v103);
  v12 = *&v107[*(v13 + 100)];

  v106(v107, v13);
  v47 = v595.i64[0];
  (v104)(v595.i64[0], v102, v103);
  v552 = *(v47 + *(v13 + 104));

  v106(v47, v13);
  v596.i64[0] = v12;
  v577 = *(v12 + 16);
  if (!v577)
  {
    goto LABEL_382;
  }

  v47 = v610;
  v546 = *v610;
  AttributedString.Guts.findRun(at:)(v594, v564, v622.i64);
  v538 = v622.u64[1];
  v13 = v623.u64[1];
  v539 = v623.i64[0];
  v536 = v622.i64[0];
  v537 = *v624;
  v574 = *&v624[8];
  v531 = *&v624[24];
  v532 = *&v624[16];
  v530 = *&v624[32];
  v108 = v615.i64[0];
  RangeSet.ranges.getter();
  v109 = v616;
  v110 = RangeSet.Ranges.count.getter();
  v612(v108, v109);
  if (v110 < 1)
  {
LABEL_363:
    __break(1u);
LABEL_364:
    __break(1u);
LABEL_365:
    __break(1u);
LABEL_366:
    __break(1u);
LABEL_367:
    __break(1u);
    goto LABEL_368;
  }

  v4 = 0;
  v111 = vdup_n_s32(v608);
  v112.i64[0] = v111.u32[0];
  v112.i64[1] = v111.u32[1];
  v113 = vcltzq_s64(vshlq_n_s64(v112, 0x3FuLL));
  v541 = vbslq_s8(v113, v583, v584);
  v540 = vbslq_s8(v113, v609, v585);
  while (1)
  {
    if (__OFADD__(v4, v110))
    {
      goto LABEL_367;
    }

    v114 = (v4 + v110) / 2;
    v115 = v615.i64[0];
    RangeSet.ranges.getter();
    v12 = v616;
    RangeSet.Ranges.subscript.getter();
    v612(v115, v12);
    if (v613.i64[0] >= v622.i64[0] >> 10)
    {
      break;
    }

LABEL_27:
    v110 = v114;
    v47 = v610;
    if (v4 >= v114)
    {
      goto LABEL_363;
    }
  }

  v116 = *v624;
  if (v613.i64[0] >= *v624 >> 10)
  {
    v4 = v114 + 1;
    v114 = v110;
    goto LABEL_27;
  }

  v587 = *&v624[8];
  v585.i64[0] = *&v624[16];
  v586 = *&v624[24];
  v117 = v552;
  v118 = *(v552 + 16);
  v595.i64[0] = *v624;
  if (v118 == 1 && (specialized Set.contains(_:)(0, 1, v552) & 1) == 0)
  {

    v150 = v546;
    v151 = v546[3];
    v152 = v546[4];
    v153 = v546[6];
    v609.i64[0] = v546[5];
    v154 = v546[8];
    v608 = v546[7];
    v596.i64[0] = v154;
    v155 = v117;
    v156 = v594;
    v157 = v565;
    v158 = v566;
    v713 = v594;
    v714 = v566;
    v13 = v564;
    v715 = v565;
    v716 = v564;
    v717 = v116;
    v159 = v151;
    v718 = v587;
    v719 = v585.i64[0];
    v720 = v586;
    swift_unknownObjectRetain();
    v160 = specialized Set.contains(_:)(0, 0, v155);
    v583.i64[0] = v152;
    v584.i64[0] = v159;
    v582 = v153;
    if (v160)
    {
      *&v721 = v159;
      *(&v721 + 1) = v152;
      v47 = v609.i64[0];
      *&v722 = v609.i64[0];
      *(&v722 + 1) = v153;
      v12 = v608;
      *&v723 = v608;
      *(&v723 + 1) = v596.i64[0];
      BigString.UTF8View.subscript.getter();
      v705 = v156;
      v706 = v158;
      v707 = v157;
      v708 = v13;
      v709 = v156;
      v710 = v158;
      v711 = v157;
      v712 = v13;
      specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v705, &v622);
      outlined destroy of BigSubstring.UTF8View(v641);
      v161 = v552;
      v162 = v12;
      v4 = v587;
      if (*&v624[24] != 2)
      {
        v595.i64[0] = *v624;
        if (v613.i64[0] > *v624 >> 10)
        {
          goto LABEL_406;
        }

        v4 = *&v624[8];
        v585.i64[0] = *&v624[16];
        v586 = *&v624[24];
      }
    }

    else
    {
      v161 = v552;
      v47 = v609.i64[0];
      v162 = v608;
      v4 = v587;
    }

    v691 = v594;
    v692 = v566;
    v693 = v157;
    v694 = v13;
    v695 = v595.i64[0];
    v696 = v4;
    v697 = v585.i64[0];
    v698 = v586;
    v263 = specialized Collection<>._containsScalarConstraint.getter(v161);
    v587 = v4;
    if ((v263 & 1) == 0)
    {

      swift_unknownObjectRelease();
      v526 = 0;
      v12 = v578;
      v4 = v614;
      goto LABEL_360;
    }

    v264 = v162;
    v265 = v161 + 56;
    v266 = 1 << *(v161 + 32);
    v267 = -1;
    if (v266 < 64)
    {
      v267 = ~(-1 << v266);
    }

    v268 = v267 & *(v161 + 56);
    v269 = (v266 + 63) >> 6;

    v13 = 0;
    v526 = 0;
    v270 = MEMORY[0x1E69E7CC0];
    v4 = v583.i64[0];
    v12 = v582;
    while (1)
    {
      if (v268)
      {
        goto LABEL_151;
      }

      do
      {
        v271 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_375;
        }

        if (v271 >= v269)
        {

          v699 = v584.i64[0];
          v700 = v4;
          v701 = v47;
          v702 = v12;
          v703 = v264;
          v704 = v596.i64[0];
          BigString.UnicodeScalarView.subscript.getter();
          v283 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v270);
          v285 = v284;
          v287 = v286;
          v4 = v288;

          swift_unknownObjectRelease();
          outlined destroy of BigSubstring.UnicodeScalarView(&v644);
          if (v4 == 2)
          {
            v12 = v578;
            goto LABEL_191;
          }

          v12 = v578;
          v13 = v597;
          v309 = v599;
          v150 = v546;
          if (v613.i64[0] <= v283 >> 10)
          {
            v595.i64[0] = v283;
            v587 = v285;
            v585.i64[0] = v287;
            v586 = v4;
            v4 = v614;
            goto LABEL_193;
          }

LABEL_407:
          __break(1u);
LABEL_408:
          __break(1u);
LABEL_409:
          __break(1u);
LABEL_410:
          __break(1u);
LABEL_411:
          __break(1u);
          goto LABEL_412;
        }

        v268 = *(v265 + 8 * v271);
        ++v13;
      }

      while (!v268);
      v13 = v271;
LABEL_151:
      v272 = __clz(__rbit64(v268));
      v268 &= v268 - 1;
      v273 = (*(v552 + 48) + ((v13 << 10) | (16 * v272)));
      v274 = v273[1];
      if (v274 >= 2)
      {
        v275 = specialized Collection.first.getter(*v273, v274);
        if ((v275 & 0x100000000) == 0)
        {
          v609.i64[0] = v275;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v270 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v270 + 2) + 1, 1, v270);
          }

          v277 = *(v270 + 2);
          v276 = *(v270 + 3);
          v278 = v277 + 1;
          v279 = v609.i32[0];
          if (v277 >= v276 >> 1)
          {
            v608 = v277 + 1;
            v280 = v270;
            v281 = v277;
            v282 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v276 > 1), v277 + 1, 1, v280);
            v278 = v608;
            v277 = v281;
            v270 = v282;
            v279 = v609.i32[0];
          }

          *(v270 + 2) = v278;
          *&v270[4 * v277 + 32] = v279;
        }
      }
    }
  }

  v533 = v116 >> 10;
  v119 = *(v610 + 120);
  v120 = v574;
  if (v13 == v119)
  {
    v121 = *(v610 + 176);
    if (*(v610 + 208) == 2)
    {
      if (v121 != 2)
      {
        goto LABEL_101;
      }
    }

    else if (v121 == 2 || (*(v610 + 184) ^ *(v610 + 152)) >= 1024)
    {
      goto LABEL_101;
    }
  }

  v525 = *(v610 + 120);
  v609.i64[0] = v13;
  if (v13 >= v119)
  {
    goto LABEL_397;
  }

  v163 = v546;
  v164 = v546[9];
  v165 = v546[10];
  v166 = v546[11];
  v167 = v546[12];
  swift_unknownObjectRetain();
  v13 = v536;
  v4 = v538;
  v47 = v539;
  specialized Rope.subscript.getter(v536, v538, v539, v164, v165, v166, v167);
  v12 = v168;
  v523 = v169;
  swift_unknownObjectRelease();
  v526 = 0;
  v170 = v163[9];
  v171 = v163[10];
  v172 = v609.i64[0] + 1;
  v524 = v596.i64[0] + 40;
  v174 = v163[11];
  v173 = v163[12];
  v120 = v4;
  v622.i64[0] = v13;
  v622.i64[1] = v4;
  v623.i64[0] = v47;
  v560 = v12;
  while (2)
  {
    if (v13 != v173)
    {
      goto LABEL_388;
    }

    v529 = v172;
    v534 = v173;
    if (v47)
    {
      v4 = v171;
      v13 = v174;
      v175 = v47 + 24 * ((v120 >> ((4 * *(v47 + 18) + 8) & 0x3C)) & 0xF);
      v176 = *(v175 + 24);
      v12 = *(v175 + 40);
      swift_unknownObjectRetain();
    }

    else
    {
      swift_unknownObjectRetain();
      v4 = v171;
      v13 = v174;
      v176 = specialized Rope._Node.subscript.getter(v120, v170);
      v12 = v177;
    }

    if (__OFADD__(v537, v176))
    {
      goto LABEL_389;
    }

    v12 = v560;
    if (!v170 || v120 >= (((-15 << ((4 * *(v170 + 18) + 8) & 0x3C)) - 1) & *(v170 + 18) | (*(v170 + 16) << ((4 * *(v170 + 18) + 8) & 0x3C))))
    {
      goto LABEL_390;
    }

    v522 = v537 + v176;
    v538 = v120;
    v539 = v47;
    if (v47)
    {
      v178 = (4 * *(v47 + 18) + 8) & 0x3C;
      v179 = ((v120 >> v178) & 0xF) + 1;
      if (v179 < *(v47 + 16))
      {
        v528 = (v179 << v178) | ((-15 << v178) - 1) & v120;
        swift_unknownObjectRelease();
        goto LABEL_65;
      }
    }

    if (specialized Rope._Node.formSuccessor(of:)(&v622, v170))
    {
      swift_unknownObjectRelease();
      v528 = v622.u64[1];
LABEL_65:
      v120 = v574;
      v4 = &v622;
      v47 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMd;
      v180 = v623.i64[0];
      v181 = v622.i64[0];
    }

    else
    {
      v120 = v574;
      v4 = &v622;
      v47 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMd;
      v182 = *(v170 + 18);
      v183 = *(v170 + 16);
      swift_unknownObjectRelease();
      v180 = 0;
      v528 = ((-15 << ((4 * v182 + 8) & 0x3C)) - 1) & v182 | (v183 << ((4 * v182 + 8) & 0x3C));
      v181 = v534;
    }

    if (v525 < v529)
    {
      goto LABEL_106;
    }

    if (v529 == v525)
    {
      v184 = *(v610 + 176);
      if (*(v610 + 208) == 2)
      {
        if (v184 == 2)
        {
          goto LABEL_106;
        }
      }

      else if (v184 != 2 && (*(v610 + 152) ^ *(v610 + 184)) < 1024)
      {
        goto LABEL_106;
      }
    }

    if (v181 != v546[12])
    {
      goto LABEL_393;
    }

    v536 = v181;
    v521 = v180;
    if (v180)
    {
      v185 = v180 + 24 * ((v528 >> ((4 * *(v180 + 18) + 8) & 0x3C)) & 0xF);
      v186 = *(v185 + 40);
      v582 = *(v185 + 32);

      v527 = v186;
    }

    else
    {
      v187 = v546[9];
      swift_unknownObjectRetain();
      specialized Rope._Node.subscript.getter(v528, v187);
      v582 = v188;
      v527 = v189;
      swift_unknownObjectRelease();
    }

    v190 = 0;
    v191 = v524;
    while (2)
    {
      if (v190 >= *(v596.i64[0] + 16))
      {
        __break(1u);
LABEL_373:
        __break(1u);
LABEL_374:
        __break(1u);
LABEL_375:
        __break(1u);
LABEL_376:
        __break(1u);
LABEL_377:
        __break(1u);
        goto LABEL_378;
      }

      v609.i64[0] = v190;
      v193 = *(v191 - 1);
      v192 = *v191;
      v608 = v191;
      if (*(v12 + 16))
      {

        v194 = specialized __RawDictionaryStorage.find<A>(_:)(v193, v192);
        if (v195)
        {
          outlined init with copy of AttributedString._AttributeValue(*(v12 + 56) + 72 * v194, &v649);
        }

        else
        {
          v653 = 0;
          v652 = 0u;
          v651 = 0u;
          v650 = 0u;
          v649 = 0u;
        }
      }

      else
      {
        v653 = 0;
        v652 = 0u;
        v651 = 0u;
        v650 = 0u;
        v649 = 0u;
      }

      v13 = v582;
      if (v582[2])
      {
        v196 = specialized __RawDictionaryStorage.find<A>(_:)(v193, v192);
        v198 = v197;

        if (v198)
        {
          outlined init with copy of AttributedString._AttributeValue(*(v13 + 56) + 72 * v196, &v644);
          goto LABEL_93;
        }
      }

      else
      {
      }

      v648 = 0;
      v647 = 0u;
      v646 = 0u;
      v645 = 0u;
      v644 = 0u;
LABEL_93:
      outlined init with copy of AttributedString._AttributeValue?(&v649, &v622);
      outlined init with copy of AttributedString._AttributeValue?(&v644, &v625);
      if (v623.i64[1])
      {
        outlined init with copy of AttributedString._AttributeValue?(&v622, v641);
        if (!v626.i64[1])
        {
          outlined destroy of TermOfAddress?(&v644, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of TermOfAddress?(&v649, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of AttributedString._AttributeValue(v641);
LABEL_103:
          outlined destroy of TermOfAddress?(&v622, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMd);
LABEL_105:

          goto LABEL_106;
        }

        v636 = v627;
        v637 = v628;
        v638 = v629;
        v635 = v626;
        v634 = v625;
        v199 = v642;
        v581 = v643;
        v580 = __swift_project_boxed_opaque_existential_1(v641, v642);
        v200 = __swift_project_boxed_opaque_existential_1(&v634, v635.i64[1]);
        v584.i64[0] = &v520;
        v201 = *(v199 - 8);
        MEMORY[0x1EEE9AC00](v200);
        v47 = &v520 - ((v202 + 15) & 0xFFFFFFFFFFFFFFF0);
        v583.i64[0] = &v520;
        v204 = MEMORY[0x1EEE9AC00](v203);
        (*(v206 + 16))(&v520 - ((v205 + 15) & 0xFFFFFFFFFFFFFFF0), v204);
        v207 = type metadata accessor for Optional();
        v13 = &v520;
        v208 = *(v207 - 8);
        MEMORY[0x1EEE9AC00](v207);
        v210 = &v520 - v209;
        if (!swift_dynamicCast())
        {
          outlined destroy of TermOfAddress?(&v644, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of TermOfAddress?(&v649, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          (*(v201 + 56))(v210, 1, 1, v199);
          (*(v208 + 8))(v210, v207);
          outlined destroy of AttributedString._AttributeValue(&v634);
          outlined destroy of AttributedString._AttributeValue(v641);
          outlined destroy of TermOfAddress?(&v622, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          v120 = v574;
          goto LABEL_105;
        }

        (*(v201 + 56))(v210, 0, 1, v199);
        (*(v201 + 32))(v47, v210, v199);
        v211 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v201 + 8))(v47, v199);
        v47 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMd;
        outlined destroy of TermOfAddress?(&v644, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?(&v649, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of AttributedString._AttributeValue(&v634);
        outlined destroy of AttributedString._AttributeValue(v641);
        outlined destroy of TermOfAddress?(&v622, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        v120 = v574;
        v12 = v560;
        v4 = &v622;
        if ((v211 & 1) == 0)
        {
          goto LABEL_105;
        }
      }

      else
      {
        outlined destroy of TermOfAddress?(&v644, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?(&v649, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        if (v626.i64[1])
        {
          goto LABEL_103;
        }

        outlined destroy of TermOfAddress?(&v622, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      }

      v190 = v609.i64[0] + 1;
      v191 = (v608 + 16);
      if (v577 != v609.i64[0] + 1)
      {
        continue;
      }

      break;
    }

    v170 = v546[9];
    v171 = v546[10];
    v174 = v546[11];
    v173 = v546[12];
    v537 = v522;
    v13 = v536;
    v622.i64[0] = v536;
    v120 = v528;
    v622.i64[1] = v528;
    v47 = v521;
    v623.i64[0] = v521;
    v172 = v529 + 1;
    if (!__OFADD__(v529, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_101:

  v526 = 0;
  v534 = v536;
  while (2)
  {
    v4 = v546;
    v212 = v546[9];
    v213 = v546[10];
    v214 = v546[11];
    v215 = v546[12];
    swift_unknownObjectRetain();
    v216 = specialized Rope.subscript.getter(v534, v538, v539, v212, v213, v214, v215);
    v12 = v217;
    swift_unknownObjectRelease();

    if (__OFADD__(v537, v216))
    {
      goto LABEL_386;
    }

    v218 = *(v4 + 40);
    v721 = *(v4 + 24);
    v722 = v218;
    v723 = *(v4 + 56);
    if (__OFSUB__(v537 + v216, v120 >> 11))
    {
      goto LABEL_387;
    }

    swift_unknownObjectRetain();
    v219 = BigString.UTF8View.index(_:offsetBy:)();
    v47 = v220;
    v13 = v221;
    v12 = v222;
    swift_unknownObjectRelease();
    v223 = v219 >> 10;
    v224 = *(v4 + 24);
    v583.i64[0] = *(v4 + 32);
    v225 = *(v4 + 48);
    v584.i64[0] = *(v4 + 40);
    v596.i64[0] = v225;
    v226 = *(v4 + 64);
    v608 = *(v4 + 56);
    v609.i64[0] = v226;
    if (v219 >> 10 >= v533)
    {
      v229 = v594;
      v230 = v565;
      v231 = v566;
      v713 = v594;
      v714 = v566;
      v232 = v564;
      v715 = v565;
      v716 = v564;
      v13 = v595.i64[0];
      v47 = v587;
      v717 = v595.i64[0];
      v718 = v587;
      v4 = v585.i64[0];
      v233 = v586;
      v719 = v585.i64[0];
      v720 = v586;
      v234 = v224;
      swift_unknownObjectRetain();
      v235 = specialized Set.contains(_:)(0, 0, v552);
      v582 = v234;
      if (v235)
      {
        v699 = v234;
        v700 = v583.i64[0];
        v701 = v584.i64[0];
        v702 = v596.i64[0];
        v703 = v608;
        v704 = v609.i64[0];
        BigString.UTF8View.subscript.getter();
        v705 = v229;
        v706 = v231;
        v707 = v565;
        v708 = v232;
        v709 = v229;
        v710 = v231;
        v711 = v565;
        v712 = v232;
        specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v705, &v622);
        v230 = v565;
        outlined destroy of BigSubstring.UTF8View(v641);
        v12 = v578;
        if (*&v624[24] != 2)
        {
          v13 = *v624;
          if (v613.i64[0] > *v624 >> 10)
          {
            goto LABEL_402;
          }

          v47 = *&v624[8];
          v4 = *&v624[16];
          v233 = *&v624[24];
        }
      }

      else
      {
        v12 = v578;
      }

      v691 = v229;
      v692 = v566;
      v693 = v230;
      v694 = v564;
      v695 = v13;
      v696 = v47;
      v697 = v4;
      v698 = v233;
      v236 = v552;
      if (specialized Collection<>._containsScalarConstraint.getter(v552))
      {
        v12 = v236 + 56;
        v237 = 1 << *(v236 + 32);
        v238 = -1;
        if (v237 < 64)
        {
          v238 = ~(-1 << v237);
        }

        v239 = v238 & *(v236 + 56);
        v240 = (v237 + 63) >> 6;

        v241 = 0;
        v594 = MEMORY[0x1E69E7CC0];
        while (v239)
        {
LABEL_127:
          v243 = __clz(__rbit64(v239));
          v239 &= v239 - 1;
          v244 = (*(v552 + 48) + ((v241 << 10) | (16 * v243)));
          v245 = v244[1];
          if (v245 >= 2)
          {
            v246 = specialized Collection.first.getter(*v244, v245);
            if ((v246 & 0x100000000) == 0)
            {
              v581 = v246;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v594 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v594 + 16) + 1, 1, v594);
              }

              v248 = *(v594 + 16);
              v247 = *(v594 + 24);
              v249 = (v248 + 1);
              v250 = v581;
              if (v248 >= v247 >> 1)
              {
                v580 = (v248 + 1);
                v252 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v247 > 1), v248 + 1, 1, v594);
                v249 = v580;
                v250 = v581;
                v594 = v252;
              }

              v251 = v594;
              *(v594 + 16) = v249;
              *(v251 + 4 * v248 + 32) = v250;
            }
          }
        }

        while (1)
        {
          v242 = v241 + 1;
          if (__OFADD__(v241, 1))
          {
            goto LABEL_374;
          }

          if (v242 >= v240)
          {
            break;
          }

          v239 = *(v12 + 8 * v242);
          ++v241;
          if (v239)
          {
            v241 = v242;
            goto LABEL_127;
          }
        }

        v580 = v4;
        v581 = v47;

        v685 = v582;
        v686 = v583.i64[0];
        v687 = v584.i64[0];
        v688 = v596.i64[0];
        v689 = v608;
        v690 = v609.i64[0];
        BigString.UnicodeScalarView.subscript.getter();
        v4 = v594;
        v257 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v594);
        v259 = v258;
        v12 = v260;
        v262 = v261;

        swift_unknownObjectRelease();
        outlined destroy of BigSubstring.UnicodeScalarView(&v644);
        if (v262 == 2)
        {
          v12 = v578;
          v4 = v580;
          v47 = v581;
        }

        else
        {
          if (v613.i64[0] > v257 >> 10)
          {
            goto LABEL_403;
          }

          v13 = v257;
          v47 = v259;
          v4 = v12;
          v233 = v262;
          v12 = v578;
        }
      }

      else
      {

        swift_unknownObjectRelease();
      }

      v305 = v595.i64[0];
      if (v13 >> 10 != v533)
      {
        v305 = v13;
      }

      v595.i64[0] = v305;
      v306 = v587;
      if (v13 >> 10 != v533)
      {
        v306 = v47;
      }

      v587 = v306;
      v307 = v585.i64[0];
      if (v13 >> 10 != v533)
      {
        v307 = v4;
      }

      v585.i64[0] = v307;
      v308 = v586;
      if (v13 >> 10 != v533)
      {
        v308 = v233;
      }

      v586 = v308;
LABEL_191:
      v4 = v614;
      goto LABEL_192;
    }

    v4 = v614;
    v227 = v565;
    if (v223 < v613.i64[0])
    {
      goto LABEL_399;
    }

    v713 = v594;
    v714 = v566;
    v715 = v565;
    v716 = v564;
    v717 = v219;
    v718 = v47;
    v719 = v13;
    v720 = v12;
    v228 = v552;
    if (v613.i64[0] == v223)
    {

      goto LABEL_179;
    }

    v253 = v224;
    swift_unknownObjectRetain();
    v254 = specialized Set.contains(_:)(0, 0, v228);
    v582 = v253;
    if (v254)
    {
      v699 = v253;
      v700 = v583.i64[0];
      v701 = v584.i64[0];
      v702 = v596.i64[0];
      v703 = v608;
      v704 = v609.i64[0];
      BigString.UTF8View.subscript.getter();
      v255 = v594;
      v705 = v594;
      v706 = v566;
      v707 = v565;
      v708 = v564;
      v709 = v594;
      v710 = v566;
      v711 = v565;
      v712 = v564;
      specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v705, &v622);
      v227 = v565;
      outlined destroy of BigSubstring.UTF8View(v641);
      v256 = v255;
      if (*&v624[24] != 2)
      {
        v219 = *v624;
        if (v613.i64[0] > *v624 >> 10)
        {
          goto LABEL_410;
        }

        v47 = *&v624[8];
        v13 = *&v624[16];
        v12 = *&v624[24];
      }
    }

    else
    {
      v256 = v594;
    }

    v691 = v256;
    v692 = v566;
    v693 = v227;
    v694 = v564;
    v695 = v219;
    v696 = v47;
    v697 = v13;
    v698 = v12;
    if ((specialized Collection<>._containsScalarConstraint.getter(v228) & 1) == 0)
    {

      swift_unknownObjectRelease();
LABEL_179:
      v595.i64[0] = v219;
      v587 = v47;
      v585.i64[0] = v13;
      v586 = v12;
      v12 = v578;
LABEL_192:
      v13 = v597;
      v309 = v599;
      v150 = v546;
      goto LABEL_193;
    }

    v594 = v13;
    v13 = v228 + 56;
    v289 = 1 << *(v228 + 32);
    v290 = -1;
    if (v289 < 64)
    {
      v290 = ~(-1 << v289);
    }

    v291 = v290 & *(v228 + 56);
    v4 = (v289 + 63) >> 6;

    v292 = 0;
    v595.i64[0] = MEMORY[0x1E69E7CC0];
    while (v291)
    {
LABEL_171:
      v294 = __clz(__rbit64(v291));
      v291 &= v291 - 1;
      v295 = (*(v228 + 48) + ((v292 << 10) | (16 * v294)));
      v296 = v295[1];
      if (v296 >= 2)
      {
        v297 = specialized Collection.first.getter(*v295, v296);
        if ((v297 & 0x100000000) == 0)
        {
          v298 = v297;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v595.i64[0] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v595.i64[0] + 16) + 1, 1, v595.i64[0]);
          }

          v300 = *(v595.i64[0] + 16);
          v299 = *(v595.i64[0] + 24);
          v301 = (v300 + 1);
          if (v300 >= v299 >> 1)
          {
            v587 = (v300 + 1);
            v304 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v299 > 1), v300 + 1, 1, v595.i64[0]);
            v301 = v587;
            v595.i64[0] = v304;
          }

          v302 = v298;
          v228 = v552;
          v303 = v595.i64[0];
          *(v595.i64[0] + 16) = v301;
          *(v303 + 4 * v300 + 32) = v302;
        }
      }
    }

    while (1)
    {
      v293 = v292 + 1;
      if (__OFADD__(v292, 1))
      {
        goto LABEL_377;
      }

      if (v293 >= v4)
      {
        break;
      }

      v291 = *(v13 + 8 * v293);
      ++v292;
      if (v291)
      {
        v292 = v293;
        goto LABEL_171;
      }
    }

    v685 = v582;
    v686 = v583.i64[0];
    v687 = v584.i64[0];
    v688 = v596.i64[0];
    v689 = v608;
    v690 = v609.i64[0];
    BigString.UnicodeScalarView.subscript.getter();
    v13 = v595.i64[0];
    v455 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v595.i64[0]);
    v457 = v456;
    v459 = v458;
    v461 = v460;

    swift_unknownObjectRelease();
    outlined destroy of BigSubstring.UnicodeScalarView(&v644);
    v586 = v461;
    if (v461 == 2)
    {
      v595.i64[0] = v219;
      v587 = v47;
      v585.i64[0] = v594;
      v586 = v12;
      v12 = v578;
      goto LABEL_191;
    }

    v587 = v457;
    v595.i64[0] = v455;
    v4 = v614;
    v150 = v546;
    if (v613.i64[0] > v455 >> 10)
    {
      goto LABEL_411;
    }

    v585.i64[0] = v459;
    v12 = v578;
LABEL_360:
    v13 = v597;
    v309 = v599;
LABEL_193:
    v581 = v150[2];
    outlined destroy of AttributedString.Runs(v610, type metadata accessor for AttributedString.Runs);
    v310 = v561;
    (v598)(v561, v309, v13);
    outlined init with copy of AttributedString.Runs(v310, v12, type metadata accessor for AttributedString.Runs);
    v311 = v579;
    v312 = v559;
    (v559)(v310, v579);
    v313 = *(&v561 + 1);
    v314 = v309;
    v315 = v598;
    (v598)(*(&v561 + 1), v314, v13);
    v47 = *(v313 + *(v311 + 100));

    v312(v313, v311);
    v316 = v562;
    (v315)(v562, v599, v13);
    v580 = *&v316[*(v311 + 104)];

    v312(v316, v311);
    v607 = v47;
    v584.i64[0] = *(v47 + 16);
    if (!v584.i64[0])
    {
      goto LABEL_384;
    }

    v582 = *v12;
    AttributedString.Guts.findRun(at:)(v595.u64[0], v586, v622.i64);
    v579 = v622.u64[1];
    v566 = v622.i64[0];
    v13 = v623.u64[1];
    v577 = v623.i64[0];
    v574 = *v624;
    v558 = *&v624[16];
    v559 = *&v624[8];
    v552 = *&v624[24];
    v546 = *&v624[32];
    v610 = *(v593 + 24);
    v317 = v615.i64[0];
    RangeSet.ranges.getter();
    v318 = v616;
    v319 = RangeSet.Ranges.count.getter();
    v612(v317, v318);
    if (v319 < 1)
    {
      goto LABEL_364;
    }

    v320 = 0;
    v613.i64[0] = v595.i64[0] >> 10;
    v120 = v616;
LABEL_197:
    if (__OFADD__(v320, v319))
    {
      __break(1u);
LABEL_106:

      continue;
    }

    break;
  }

  v47 = (v320 + v319) / 2;
  v321 = v615.i64[0];
  RangeSet.ranges.getter();
  RangeSet.Ranges.subscript.getter();
  v612(v321, v120);
  if (v613.i64[0] < v622.i64[0] >> 10)
  {
LABEL_196:
    v319 = v47;
    if (v320 >= v47)
    {
      goto LABEL_364;
    }

    goto LABEL_197;
  }

  if (v613.i64[0] >= *v624 >> 10)
  {
    v320 = v47 + 1;
    v47 = v319;
    goto LABEL_196;
  }

  v562 = *v624;
  v560 = *&v624[8];
  v561 = *&v624[16];
  v322 = v580;
  v323 = v580[2];
  v564 = *v624 >> 10;
  if (v323 == 1 && (specialized Set.contains(_:)(0, 1, v580) & 1) == 0)
  {

    v326 = v582[3];
    v599 = v582[4];
    v327 = v582[6];
    v598 = v582[5];
    v597 = v327;
    v328 = v582[8];
    v596.i64[0] = v582[7];
    v594 = v328;
    v617.i64[0] = v595.i64[0];
    v329 = v587;
    v617.i64[1] = v587;
    v330 = v585.i64[0];
    v618.i64[0] = v585.i64[0];
    v4 = v586;
    v618.i64[1] = v586;
    v331 = *(&v561 + 1);
    v12 = v562;
    v619.i64[0] = v562;
    v333 = v560;
    v332 = v561;
    v619.i64[1] = v560;
    v620 = v561;
    v607 = v326;
    swift_unknownObjectRetain();
    v334 = specialized Set.contains(_:)(0, 0, v322);
    v335 = v333;
    v336 = v332;
    v337 = v331;
    v13 = v604;
    if (v334)
    {
      *&v682 = v607;
      *(&v682 + 1) = v599;
      *&v683 = v598;
      *(&v683 + 1) = v597;
      *&v684 = v596.i64[0];
      *(&v684 + 1) = v594;
      BigString.UTF8View.subscript.getter();
      v674 = v595.i64[0];
      v675 = v329;
      v676 = v330;
      v677 = v4;
      v678 = v595.i64[0];
      v679 = v329;
      v680 = v330;
      v681 = v4;
      specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v674, &v622);
      outlined destroy of BigSubstring.UTF8View(&v649);
      v337 = *(&v561 + 1);
      v12 = v562;
      v335 = v560;
      v336 = v561;
      if (*&v624[24] != 2)
      {
        v12 = *v624;
        if (v613.i64[0] > *v624 >> 10)
        {
          goto LABEL_408;
        }

        v335 = *&v624[8];
        v336 = *&v624[16];
        v337 = *&v624[24];
        v329 = v587;
        v330 = v585.i64[0];
        v4 = v586;
      }
    }

    v660 = v595.i64[0];
    v661 = v329;
    v662 = v330;
    v663 = v4;
    v593 = v12;
    v664 = v12;
    v608 = v335;
    v665 = v335;
    v609.i64[0] = v336;
    v666 = v336;
    v12 = v337;
    v667 = v337;
    v338 = v580;
    if ((specialized Collection<>._containsScalarConstraint.getter(v580) & 1) == 0)
    {

      swift_unknownObjectRelease();
      v417 = v593;
      goto LABEL_304;
    }

    v339 = v338 + 7;
    v340 = 1 << *(v338 + 32);
    v341 = -1;
    if (v340 < 64)
    {
      v341 = ~(-1 << v340);
    }

    v342 = v341 & v338[7];
    v343 = (v340 + 63) >> 6;

    v13 = 0;
    v4 = MEMORY[0x1E69E7CC0];
LABEL_215:
    if (v342)
    {
      goto LABEL_220;
    }

    while (1)
    {
      v344 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_376;
      }

      if (v344 >= v343)
      {
        break;
      }

      v342 = v339[v344];
      ++v13;
      if (v342)
      {
        v13 = v344;
LABEL_220:
        v345 = __clz(__rbit64(v342));
        v342 &= v342 - 1;
        v346 = (v580[6] + ((v13 << 10) | (16 * v345)));
        v347 = v346[1];
        if (v347 >= 2)
        {
          v348 = specialized Collection.first.getter(*v346, v347);
          if ((v348 & 0x100000000) == 0)
          {
            v584.i64[0] = v348;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 16) + 1, 1, v4);
            }

            v350 = *(v4 + 16);
            v349 = *(v4 + 24);
            v351 = v584.i32[0];
            if (v350 >= v349 >> 1)
            {
              v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v349 > 1), v350 + 1, 1, v4);
              v351 = v584.i32[0];
            }

            *(v4 + 16) = v350 + 1;
            *(v4 + 4 * v350 + 32) = v351;
          }
        }

        goto LABEL_215;
      }
    }

    v668 = v607;
    v669 = v599;
    v670 = v598;
    v671 = v597;
    v672 = v596.i64[0];
    v673 = v594;
    BigString.UnicodeScalarView.subscript.getter();
    v444 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v4);
    v446 = v445;
    v4 = v447;
    v449 = v448;

    swift_unknownObjectRelease();
    outlined destroy of BigSubstring.UnicodeScalarView(&v622);
    v13 = v604;
    v417 = v593;
    if (v449 != 2)
    {
      if (v613.i64[0] > v444 >> 10)
      {
        goto LABEL_409;
      }

      v417 = v444;
      v608 = v446;
      v609.i64[0] = v4;
      v12 = v449;
    }

LABEL_304:
    if (v564 == v417 >> 10)
    {
      v450 = v615.i64[0];
      RangeSet.ranges.getter();
      v451 = v616;
      v452 = RangeSet.Ranges.count.getter();
      v612(v450, v451);
      v439 = v452 - 1;
      v149 = v591;
      v4 = v603;
      if (__OFSUB__(v452, 1))
      {
        goto LABEL_401;
      }

      goto LABEL_306;
    }

    v440 = v582[2];
    v149 = v591;
    v47 = v535;
LABEL_321:
    v4 = v603;
    goto LABEL_322;
  }

  v324 = *(v12 + 120);
  if (v13 == v324)
  {
    v325 = *(v12 + 176);
    if (*(v12 + 208) == 2)
    {
      if (v325 != 2)
      {
        goto LABEL_270;
      }
    }

    else if (v325 == 2 || (*(v12 + 184) ^ *(v12 + 152)) >= 1024)
    {
      goto LABEL_270;
    }
  }

  v537 = *(v12 + 120);
  v609.i64[0] = v13;
  if (v13 >= v324)
  {
    goto LABEL_398;
  }

  v352 = v582;
  v353 = v582[9];
  v354 = v582[10];
  v355 = v582[11];
  v356 = v582[12];
  swift_unknownObjectRetain();
  v357 = v566;
  v13 = v579;
  v4 = v577;
  specialized Rope.subscript.getter(v566, v579, v577, v353, v354, v355, v356);
  v12 = v358;
  v534 = v359;
  swift_unknownObjectRelease();
  v360 = v352[9];
  v361 = v352[10];
  v362 = v609.i64[0] + 1;
  v364 = v352[11];
  v363 = v352[12];
  v536 = (v607 + 40);
  v622.i64[0] = v357;
  v622.i64[1] = v13;
  v623.i64[0] = v4;
  v583.i64[0] = v12;
  while (2)
  {
    if (v357 != v363)
    {
      goto LABEL_394;
    }

    v539 = v362;
    v565 = v363;
    v577 = v4;
    if (v4)
    {
      v365 = v361;
      v366 = v4 + 24 * ((v579 >> ((4 * *(v4 + 18) + 8) & 0x3C)) & 0xF);
      v367 = *(v366 + 24);
      v12 = *(v366 + 32);
      swift_unknownObjectRetain();
    }

    else
    {
      swift_unknownObjectRetain();
      v365 = v361;
      v367 = specialized Rope._Node.subscript.getter(v579, v360);
      v12 = v368;
    }

    v533 = v574 + v367;
    v4 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMd;
    if (__OFADD__(v574, v367))
    {
      goto LABEL_395;
    }

    specialized Rope.formIndex(after:)(&v622, v360, v365, v364, v565);
    swift_unknownObjectRelease();
    v12 = v583.i64[0];
    if (v537 < v539)
    {
      goto LABEL_368;
    }

    v13 = v622.u64[1];
    if (v539 == v537)
    {
      v369 = v578[22];
      if (v578[26] == 2)
      {
        if (v369 == 2)
        {
          goto LABEL_368;
        }
      }

      else if (v369 != 2 && (v578[19] ^ v578[23]) < 1024)
      {
LABEL_368:

LABEL_275:

        goto LABEL_276;
      }
    }

    if (v622.i64[0] != v582[12])
    {
      goto LABEL_396;
    }

    v566 = v622.i64[0];
    v531 = v623.i64[0];
    v532 = v622.u64[1];
    if (v623.i64[0])
    {
      v370 = v623.i64[0] + 24 * ((v622.i64[1] >> ((4 * *(v623.i64[0] + 18) + 8) & 0x3C)) & 0xF);
      v371 = *(v370 + 40);
      v596.i64[0] = *(v370 + 32);

      v538 = v371;
    }

    else
    {
      v372 = v582[9];
      swift_unknownObjectRetain();
      specialized Rope._Node.subscript.getter(v13, v372);
      v596.i64[0] = v373;
      v538 = v374;
      swift_unknownObjectRelease();
    }

    v375 = 0;
    v376 = v536;
    while (2)
    {
      if (v375 >= *(v607 + 16))
      {
        goto LABEL_373;
      }

      v609.i64[0] = v375;
      v378 = *(v376 - 1);
      v377 = *v376;
      v608 = v376;
      if (*(v12 + 16))
      {

        v379 = specialized __RawDictionaryStorage.find<A>(_:)(v378, v377);
        if (v380)
        {
          outlined init with copy of AttributedString._AttributeValue(*(v12 + 56) + 72 * v379, &v649);
        }

        else
        {
          v653 = 0;
          v652 = 0u;
          v651 = 0u;
          v650 = 0u;
          v649 = 0u;
        }
      }

      else
      {
        v653 = 0;
        v652 = 0u;
        v651 = 0u;
        v650 = 0u;
        v649 = 0u;
      }

      v13 = v596.i64[0];
      if (*(v596.i64[0] + 16))
      {
        v381 = specialized __RawDictionaryStorage.find<A>(_:)(v378, v377);
        v383 = v382;

        if (v383)
        {
          outlined init with copy of AttributedString._AttributeValue(*(v13 + 56) + 72 * v381, &v634);
          goto LABEL_260;
        }
      }

      else
      {
      }

      v638 = 0;
      v637 = 0u;
      v636 = 0u;
      v635 = 0u;
      v634 = 0u;
LABEL_260:
      outlined init with copy of AttributedString._AttributeValue?(&v649, &v622);
      outlined init with copy of AttributedString._AttributeValue?(&v634, &v625);
      if (v623.i64[1])
      {
        outlined init with copy of AttributedString._AttributeValue?(&v622, v631);
        if (!v626.i64[1])
        {
          outlined destroy of TermOfAddress?(&v634, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of TermOfAddress?(&v649, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of AttributedString._AttributeValue(v631);
LABEL_272:
          outlined destroy of TermOfAddress?(&v622, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMd);
LABEL_274:

          goto LABEL_275;
        }

        v619 = v627;
        v620 = v628;
        v621 = v629;
        v617 = v625;
        v618 = v626;
        v384 = v632;
        v594 = v633;
        v593 = __swift_project_boxed_opaque_existential_1(v631, v632);
        v385 = __swift_project_boxed_opaque_existential_1(&v617, v618.i64[1]);
        v599 = &v520;
        v13 = *(v384 - 8);
        MEMORY[0x1EEE9AC00](v385);
        v387 = &v520 - ((v386 + 15) & 0xFFFFFFFFFFFFFFF0);
        v598 = &v520;
        v389 = MEMORY[0x1EEE9AC00](v388);
        (*(v391 + 16))(&v520 - ((v390 + 15) & 0xFFFFFFFFFFFFFFF0), v389);
        v392 = type metadata accessor for Optional();
        v597 = &v520;
        v393 = *(v392 - 8);
        MEMORY[0x1EEE9AC00](v392);
        v395 = &v520 - v394;
        v396 = swift_dynamicCast();
        v397 = *(v13 + 56);
        if (!v396)
        {
          v397(v395, 1, 1, v384);
          outlined destroy of TermOfAddress?(&v634, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of TermOfAddress?(&v649, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          (*(v393 + 8))(v395, v392);
          outlined destroy of AttributedString._AttributeValue(&v617);
          outlined destroy of AttributedString._AttributeValue(v631);
          outlined destroy of TermOfAddress?(&v622, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          goto LABEL_274;
        }

        v397(v395, 0, 1, v384);
        (*(v13 + 32))(v387, v395, v384);
        v398 = dispatch thunk of static Equatable.== infix(_:_:)();
        v399 = *(v13 + 8);
        v13 += 8;
        v399(v387, v384);
        v4 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMd;
        outlined destroy of TermOfAddress?(&v634, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?(&v649, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of AttributedString._AttributeValue(&v617);
        outlined destroy of AttributedString._AttributeValue(v631);
        outlined destroy of TermOfAddress?(&v622, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        v12 = v583.i64[0];
        if ((v398 & 1) == 0)
        {
          goto LABEL_274;
        }
      }

      else
      {
        outlined destroy of TermOfAddress?(&v634, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?(&v649, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        if (v626.i64[1])
        {
          goto LABEL_272;
        }

        outlined destroy of TermOfAddress?(&v622, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      }

      v375 = v609.i64[0] + 1;
      v376 = (v608 + 16);
      if (v584.i64[0] != v609.i64[0] + 1)
      {
        continue;
      }

      break;
    }

    v360 = v582[9];
    v361 = v582[10];
    v364 = v582[11];
    v363 = v582[12];
    v574 = v533;
    v357 = v566;
    v622.i64[0] = v566;
    v622.i64[1] = v532;
    v4 = v531;
    v579 = v532;
    v623.i64[0] = v531;
    v362 = v539 + 1;
    if (!__OFADD__(v539, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_270:

  v565 = v566;
LABEL_276:
  v4 = v582;
  v400 = v582[9];
  v401 = v582[10];
  v402 = v582[11];
  v403 = v582[12];
  swift_unknownObjectRetain();
  v404 = specialized Rope.subscript.getter(v565, v579, v577, v400, v401, v402, v403);
  v12 = v405;
  swift_unknownObjectRelease();

  if (__OFADD__(v574, v404))
  {
    goto LABEL_391;
  }

  v406 = *(v4 + 40);
  v682 = *(v4 + 24);
  v683 = v406;
  v684 = *(v4 + 56);
  v12 = v559;
  if (__OFSUB__(v574 + v404, v559 >> 11))
  {
    goto LABEL_392;
  }

  swift_unknownObjectRetain();
  v12 = BigString.UTF8View.index(_:offsetBy:)();
  v408 = v407;
  v410 = v409;
  v412 = v411;
  swift_unknownObjectRelease();
  v413 = v12 >> 10;
  v414 = *(v4 + 24);
  v596.i64[0] = *(v4 + 32);
  v415 = *(v4 + 48);
  v597 = *(v4 + 40);
  v598 = v415;
  v416 = *(v4 + 64);
  v599 = *(v4 + 56);
  v607 = v416;
  if (v12 >> 10 >= v564)
  {
    v419 = v595.i64[0];
    v617.i64[0] = v595.i64[0];
    v420 = v587;
    v617.i64[1] = v587;
    v4 = v585.i64[0];
    v618.i64[0] = v585.i64[0];
    v13 = v586;
    v618.i64[1] = v586;
    v421 = *(&v561 + 1);
    v422 = v562;
    v619.i64[0] = v562;
    v424 = v560;
    v423 = v561;
    v619.i64[1] = v560;
    v620 = v561;
    v594 = v414;
    swift_unknownObjectRetain();
    v425 = specialized Set.contains(_:)(0, 0, v580);
    v426 = v422;
    v12 = v421;
    if (v425)
    {
      v668 = v594;
      v669 = v596.i64[0];
      v670 = v597;
      v671 = v598;
      v672 = v599;
      v673 = v607;
      BigString.UTF8View.subscript.getter();
      v427 = _ss10SetAlgebraPs7ElementQz012ArrayLiteralC0RtzrlE05arrayE0xAFd_tcfCSS10FoundationE22_BlockSearchingOptionsV_Tt1g5Tf4g_n(&outlined read-only object #1 of AttributedString.Runs.AttributesSlice5.Iterator.next());
      v674 = v419;
      v675 = v420;
      v676 = v4;
      v677 = v13;
      v678 = v419;
      v679 = v420;
      v680 = v4;
      v681 = v13;
      specialized BidirectionalCollection<>._getBlock(for:in:)(v427, &v674, &v622);
      outlined destroy of BigSubstring.UTF8View(&v649);
      v12 = *(&v561 + 1);
      v426 = v562;
      v424 = v560;
      v423 = v561;
      if (*&v624[24] != 2)
      {
        v426 = *v624;
        if (v613.i64[0] > *v624 >> 10)
        {
          goto LABEL_404;
        }

        v424 = *&v624[8];
        v423 = *&v624[16];
        v12 = *&v624[24];
        v419 = v595.i64[0];
        v420 = v587;
        v4 = v585.i64[0];
        v13 = v586;
      }
    }

    v660 = v419;
    v661 = v420;
    v662 = v4;
    v663 = v13;
    v417 = v426;
    v664 = v426;
    v608 = v424;
    v665 = v424;
    v609.i64[0] = v423;
    v666 = v423;
    v667 = v12;
    v428 = v580;
    if (specialized Collection<>._containsScalarConstraint.getter(v580))
    {
      v429 = specialized Sequence.compactMap<A>(_:)(v428);

      v654 = v594;
      v655 = v596.i64[0];
      v656 = v597;
      v657 = v598;
      v658 = v599;
      v659 = v607;
      BigString.UnicodeScalarView.subscript.getter();
      v4 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v429);
      v431 = v430;
      v607 = v432;
      v434 = v433;

      swift_unknownObjectRelease();
      outlined destroy of BigSubstring.UnicodeScalarView(&v622);
      v149 = v591;
      v13 = v604;
      if (v434 != 2)
      {
        if (v613.i64[0] > v4 >> 10)
        {
          goto LABEL_405;
        }

        v417 = v4;
        v608 = v431;
        v609.i64[0] = v607;
        v12 = v434;
      }
    }

    else
    {

      swift_unknownObjectRelease();
      v149 = v591;
      v13 = v604;
    }

    if (v564 == v417 >> 10)
    {
      v435 = v615.i64[0];
      RangeSet.ranges.getter();
      v436 = v616;
      v437 = RangeSet.Ranges.count.getter();
      v438 = v435;
      v417 = v614;
      v612(v438, v436);
      v439 = v437 - 1;
      v4 = v603;
      if (!__OFSUB__(v437, 1))
      {
LABEL_306:
        if (v47 == v439)
        {
          v440 = v582[2];
          v12 = *(&v561 + 1);
          v417 = v562;
          v608 = v560;
          v609.i64[0] = v561;
        }

        else
        {
          v453 = v615.i64[0];
          RangeSet.ranges.getter();
          v454 = v616;
          RangeSet.Ranges.subscript.getter();
          v612(v453, v454);
          v608 = v634.i64[1];
          v417 = v634.i64[0];
          v12 = v635.u64[1];
          v609.i64[0] = v635.i64[0];
          v440 = v582[2];
        }

        v47 = v535;
LABEL_322:
        outlined destroy of AttributedString.Runs(v578, type metadata accessor for AttributedString.Runs);
        v468 = v592;
        if (v613.i64[0] < *v592 >> 10)
        {
          goto LABEL_385;
        }

        v616 = *v592;
        v469 = *(v592 + 3);
        v614 = *(v592 + 1);
        v615 = v469;
        v470 = v608;
        *v592 = v417;
        v468[1] = v470;
        v468[2] = v609.i64[0];
        v468[3] = v12;
        v468[4] = v440;
        v12 = v573;
LABEL_324:
        v471 = (*(v568 + 24))();
        if (*(v47 + 16))
        {
          v473 = specialized __RawDictionaryStorage.find<A>(_:)(v471, v472);
          v475 = v474;

          if (v475)
          {
            v476 = v4;
            v4 = v47;
            outlined init with copy of AttributedString._AttributeValue(*(v47 + 56) + 72 * v473, &v634);
            outlined init with copy of Hashable & Sendable(&v634, v631);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
            v47 = v555;
            if (!swift_dynamicCast())
            {
              goto LABEL_415;
            }

            outlined destroy of AttributedString._AttributeValue(&v634);
            v477 = *(v12 - 8);
            v478 = *(v477 + 56);
            v478(v47, 0, 1, v12);
            (*(v477 + 32))(v149, v47, v12);
            v478(v149, 0, 1, v12);
            v47 = v4;
            v4 = v476;
LABEL_330:
            v634 = v588;
            v635 = v589;
            v636.i64[0] = v590;
            v636.i64[1] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSny10Foundation16AttributedStringV5IndexVGMd);
            v479 = swift_getTupleTypeMetadata();
            v480 = v479[12];
            v481 = (*(v13 + 24))(v4, v13);
            if (*(v47 + 16))
            {
              v483 = specialized __RawDictionaryStorage.find<A>(_:)(v481, v482);
              v485 = v484;

              v486 = v606;
              v487 = v563;
              if (v485)
              {
                v4 = v47;
                outlined init with copy of AttributedString._AttributeValue(*(v47 + 56) + 72 * v483, &v634);
                outlined init with copy of Hashable & Sendable(&v634, v631);
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
                v13 = v556;
                v47 = v572;
                if (!swift_dynamicCast())
                {
                  goto LABEL_416;
                }

                outlined destroy of AttributedString._AttributeValue(&v634);
                v488 = *(v47 - 8);
                v489 = *(v488 + 56);
                v489(v13, 0, 1, v47);
                (*(v488 + 32))(v149 + v480, v13, v47);
                v489(v149 + v480, 0, 1, v47);
                v486 = v606;
                v47 = v4;
                v487 = v563;
LABEL_336:
                v490 = v479[16];
                v491 = (*(v601 + 24))(v486);
                if (*(v47 + 16))
                {
                  v493 = specialized __RawDictionaryStorage.find<A>(_:)(v491, v492);
                  v495 = v494;

                  v496 = v605;
                  if (v495)
                  {
                    v4 = v47;
                    outlined init with copy of AttributedString._AttributeValue(*(v47 + 56) + 72 * v493, &v634);
                    outlined init with copy of Hashable & Sendable(&v634, v631);
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
                    v13 = v557;
                    v47 = v571;
                    if (!swift_dynamicCast())
                    {
                      goto LABEL_417;
                    }

                    outlined destroy of AttributedString._AttributeValue(&v634);
                    v497 = *(v47 - 8);
                    v498 = *(v497 + 56);
                    v498(v13, 0, 1, v47);
                    (*(v497 + 32))(v149 + v490, v13, v47);
                    v498(v149 + v490, 0, 1, v47);
                    v496 = v605;
                    v47 = v4;
                    v487 = v563;
LABEL_342:
                    v499 = v479[20];
                    v500 = (*(v602 + 24))(v496);
                    if (*(v47 + 16))
                    {
                      v502 = specialized __RawDictionaryStorage.find<A>(_:)(v500, v501);
                      v504 = v503;

                      v505 = v575;
                      if (v504)
                      {
                        v4 = v47;
                        outlined init with copy of AttributedString._AttributeValue(*(v47 + 56) + 72 * v502, &v634);
                        outlined init with copy of Hashable & Sendable(&v634, v631);
                        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
                        v13 = v553;
                        v47 = v570;
                        if (!swift_dynamicCast())
                        {
                          goto LABEL_418;
                        }

                        outlined destroy of AttributedString._AttributeValue(&v634);
                        v506 = *(v47 - 8);
                        v507 = *(v506 + 56);
                        v507(v13, 0, 1, v47);
                        (*(v506 + 32))(v149 + v499, v13, v47);
                        v507(v149 + v499, 0, 1, v47);
                        v505 = v575;
                        v47 = v4;
                        v487 = v563;
LABEL_348:
                        v634.i64[0] = v47;
                        v634.i64[1] = v576;
                        v635 = v540;
                        v636 = v541;
                        *&v637 = v545;
                        *(&v637 + 1) = v544;
                        v638 = v543;
                        v639 = v542;
                        v640 = v487;
                        v508 = v479[24];
                        v509 = (*(v505 + 24))();
                        if (*(v47 + 16))
                        {
                          v511 = specialized __RawDictionaryStorage.find<A>(_:)(v509, v510);
                          v513 = v512;

                          v514 = v587;
                          if (v513)
                          {
                            outlined init with copy of AttributedString._AttributeValue(*(v47 + 56) + 72 * v511, v631);

                            outlined init with copy of Hashable & Sendable(v631, &v630);
                            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
                            v47 = v554;
                            v4 = AssociatedTypeWitness;
                            if ((swift_dynamicCast() & 1) == 0)
                            {
                              goto LABEL_419;
                            }

                            outlined destroy of AttributedString._AttributeValue(v631);
                            outlined destroy of AttributedString.Runs.Run(&v634);
                            v515 = *(v4 - 8);
                            v516 = *(v515 + 56);
                            v516(v47, 0, 1, v4);
                            (*(v515 + 32))(v149 + v508, v47, v4);
                            v516(v149 + v508, 0, 1, v4);
                            goto LABEL_355;
                          }

                          outlined destroy of AttributedString.Runs.Run(&v634);
                        }

                        else
                        {
                          outlined destroy of AttributedString.Runs.Run(&v634);

                          v514 = v587;
                        }

                        (*(*(AssociatedTypeWitness - 8) + 56))(v149 + v508, 1, 1);
LABEL_355:
                        v517 = v149 + v479[28];
                        *v517 = v616;
                        v518 = v615;
                        *(v517 + 8) = v614;
                        *(v517 + 24) = v518;
                        *(v517 + 40) = v595.i64[0];
                        *(v517 + 48) = v514;
                        v519 = v586;
                        *(v517 + 56) = v585.i64[0];
                        *(v517 + 64) = v519;
                        *(v517 + 72) = v581;
                        return (*(*(v479 - 1) + 56))(v149, 0, 1, v479);
                      }
                    }

                    else
                    {

                      v505 = v575;
                    }

                    (*(*(v570 - 8) + 56))(v149 + v499, 1, 1);
                    goto LABEL_348;
                  }
                }

                else
                {

                  v496 = v605;
                }

                (*(*(v571 - 8) + 56))(v149 + v490, 1, 1);
                goto LABEL_342;
              }
            }

            else
            {

              v486 = v606;
              v487 = v563;
            }

            (*(*(v572 - 8) + 56))(v149 + v480, 1, 1);
            goto LABEL_336;
          }
        }

        else
        {
        }

        (*(*(v12 - 8) + 56))(v149, 1, 1, v12);
        goto LABEL_330;
      }

      __break(1u);
    }

    v440 = v582[2];
    v47 = v535;
    goto LABEL_321;
  }

  if (v413 < v613.i64[0])
  {
    goto LABEL_400;
  }

  v617.i64[0] = v595.i64[0];
  v617.i64[1] = v587;
  v618.i64[0] = v585.i64[0];
  v618.i64[1] = v586;
  v417 = v12;
  v619.i64[0] = v12;
  v619.i64[1] = v408;
  *&v620 = v410;
  v12 = v412;
  *(&v620 + 1) = v412;
  v47 = v535;
  v418 = v580;
  if (v613.i64[0] == v413)
  {
    v609.i64[0] = v410;
    v608 = v408;

    goto LABEL_319;
  }

  v13 = v414;
  swift_unknownObjectRetain();
  v441 = specialized Set.contains(_:)(0, 0, v418);
  v594 = v13;
  if ((v441 & 1) == 0)
  {
    v443 = v417;
LABEL_314:
    v660 = v595.i64[0];
    v661 = v587;
    v662 = v585.i64[0];
    v663 = v586;
    v417 = v443;
    v664 = v443;
    v608 = v408;
    v665 = v408;
    v609.i64[0] = v410;
    v666 = v410;
    v667 = v12;
    if (specialized Collection<>._containsScalarConstraint.getter(v418))
    {
      v4 = specialized Sequence.compactMap<A>(_:)(v418);

      v654 = v594;
      v655 = v596.i64[0];
      v656 = v597;
      v657 = v598;
      v658 = v599;
      v659 = v607;
      BigString.UnicodeScalarView.subscript.getter();
      v462 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v4);
      v464 = v463;
      v616 = v465;
      v467 = v466;

      swift_unknownObjectRelease();
      outlined destroy of BigSubstring.UnicodeScalarView(&v622);
      v149 = v591;
      v13 = v604;
      if (v467 != 2)
      {
        if (v613.i64[0] > v462 >> 10)
        {
          goto LABEL_413;
        }

        v417 = v462;
        v608 = v464;
        v609.i64[0] = v616;
        v12 = v467;
      }
    }

    else
    {

      swift_unknownObjectRelease();
LABEL_319:
      v149 = v591;
      v13 = v604;
    }

    v440 = v582[2];
    goto LABEL_321;
  }

  v668 = v13;
  v669 = v596.i64[0];
  v670 = v597;
  v671 = v598;
  v672 = v599;
  v673 = v607;
  v609.i64[0] = v410;
  BigString.UTF8View.subscript.getter();
  v442 = _ss10SetAlgebraPs7ElementQz012ArrayLiteralC0RtzrlE05arrayE0xAFd_tcfCSS10FoundationE22_BlockSearchingOptionsV_Tt1g5Tf4g_n(&outlined read-only object #0 of AttributedString.Runs.AttributesSlice5.Iterator.next());
  v674 = v595.i64[0];
  v675 = v587;
  v676 = v585.i64[0];
  v677 = v586;
  v678 = v595.i64[0];
  v679 = v587;
  v680 = v585.i64[0];
  v681 = v586;
  specialized BidirectionalCollection<>._getBlock(for:in:)(v442, &v674, &v622);
  v410 = v609.i64[0];
  outlined destroy of BigSubstring.UTF8View(&v649);
  v443 = v417;
  if (*&v624[24] == 2)
  {
    goto LABEL_314;
  }

  v443 = *v624;
  if (v613.i64[0] <= *v624 >> 10)
  {
    v408 = *&v624[8];
    v410 = *&v624[16];
    v12 = *&v624[24];
    goto LABEL_314;
  }

LABEL_412:
  __break(1u);
LABEL_413:
  __break(1u);
LABEL_414:
  __break(1u);
LABEL_415:
  (*(*(v12 - 8) + 56))(v47, 1, 1, v12);
  (*(v547 + 8))(v47, v588.i64[0]);
  __break(1u);
LABEL_416:
  (*(*(v47 - 8) + 56))(v13, 1, 1, v47);
  (*(v548 + 8))(v13, v588.i64[1]);
  __break(1u);
LABEL_417:
  (*(*(v47 - 8) + 56))(v13, 1, 1, v47);
  (*(v549 + 8))(v13, v589.i64[0]);
  __break(1u);
LABEL_418:
  (*(*(v47 - 8) + 56))(v13, 1, 1, v47);
  (*(v550 + 8))(v13, v589.i64[1]);
  __break(1u);
LABEL_419:
  (*(*(v4 - 8) + 56))(v47, 1, 1, v4);
  result = (*(v551 + 8))(v47, v590);
  __break(1u);
  return result;
}

uint64_t specialized BidirectionalCollection<>._getBlock(for:in:)@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t *a3@<X8>)
{
  v6 = v3[6];
  v7 = v3[10];
  v8 = v7 >> 10;
  v9 = v6 >> 10;
  if (v7 >> 10 < v6 >> 10)
  {
    __break(1u);
LABEL_55:
    swift_once();
    goto LABEL_12;
  }

  v11 = v3[7];
  v10 = v3[8];
  v12 = v3[9];
  v14 = v3[11];
  v13 = v3[12];
  v15 = v3[13];
  v4 = *a2 >> 10;
  if (v4 == v9 && v8 == a2[4] >> 10 && (result & 4) == 0)
  {
    *a3 = v6;
    a3[1] = v11;
    a3[2] = v10;
    a3[3] = v12;
    a3[4] = v7;
    a3[5] = v14;
    a3[6] = v13;
    a3[7] = v15;
    a3[8] = 0;
    a3[9] = 0;
    a3[10] = 0;
    a3[11] = 2;
    return result;
  }

  if (v4 < v9 || (v71 = a2[4], v70 = v71 >> 10, v8 < v71 >> 10))
  {
    *a3 = v6;
    a3[1] = v11;
    a3[2] = v10;
    a3[3] = v12;
    a3[4] = v7;
    a3[5] = v14;
    a3[6] = v13;
    a3[7] = v15;
    a3[8] = v7;
    a3[9] = v14;
    a3[10] = v13;
    a3[11] = v15;
    return result;
  }

  v65 = a2[5];
  v66 = a2[6];
  v67 = a2[7];
  v74 = v7 >> 10;
  v72 = result;
  if ((result & 8) == 0)
  {
    v16 = &outlined read-only object #1 of one-time initialization function for paragraphSeparators;
    goto LABEL_13;
  }

  v57 = v3[7];
  v59 = v3[8];
  v61 = v3[9];
  if (one-time initialization token for lineSeparators != -1)
  {
    goto LABEL_55;
  }

LABEL_12:
  v16 = static String.lineSeparators;

  v8 = v74;
  v10 = v59;
  v12 = v61;
  v11 = v57;
LABEL_13:
  v73 = v16;
  if ((v72 & 1) == 0)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 2;
    goto LABEL_36;
  }

  if (v4 == v9)
  {
    v17 = v6;
    v18 = v11;
    v19 = v10;
    v20 = v12;
    goto LABEL_36;
  }

  v58 = v11;
  v60 = v10;
  v62 = v12;
  v21 = BigSubstring.UTF8View.index(before:)();
  v8 = v74;
  v55 = v21;
  v56 = v23;
  v68 = v22;
  v20 = v24;
  if (v4 >= v74)
  {
    v17 = v21;
    v19 = v23;
    v18 = v22;
    goto LABEL_26;
  }

  v63 = v24;
  if (BigSubstring.UTF8View.subscript.getter() != 10)
  {
    v8 = v74;
    v17 = v55;
    v19 = v56;
    v18 = v68;
LABEL_25:
    v20 = v63;
    goto LABEL_26;
  }

  v17 = v55;
  v19 = v56;
  v18 = v68;
  if (BigSubstring.UTF8View.subscript.getter() != 13)
  {
    v8 = v74;
    goto LABEL_25;
  }

  if (v9 >= v55 >> 10)
  {
LABEL_33:
    v17 = v6;
    v18 = v58;
    v19 = v60;
    v20 = v62;
    v8 = v74;
    goto LABEL_36;
  }

  v17 = BigSubstring.UTF8View.index(before:)();
  v18 = v25;
  v19 = v26;
  v20 = v27;
  v8 = v74;
LABEL_26:
  v28 = v17 >> 10;
  if (v17 >> 10 >= v9 && v28 < v8)
  {
    while (1)
    {
      specialized BidirectionalCollection<>._matchesSeparators(_:from:reverse:)(v73, v17, v18, v19, v20, 1, &v75);
      if (v78 != 2)
      {
        break;
      }

      if (v9 >= v28)
      {
        goto LABEL_33;
      }

      v17 = BigSubstring.UTF8View.index(before:)();
      v18 = v29;
      v19 = v30;
      v20 = v31;
      v28 = v17 >> 10;
      if (v17 >> 10 < v9)
      {
        goto LABEL_35;
      }

      v8 = v74;
      if (v28 >= v74)
      {
        goto LABEL_36;
      }
    }

    v17 = BigSubstring.UTF8View.index(after:)();
    v18 = v32;
    v19 = v33;
    v20 = v34;
LABEL_35:
    v8 = v74;
  }

LABEL_36:
  v69 = v18;
  if ((v72 & 6) != 0)
  {
    v35 = v70;
    v64 = v20;
    if (v4 == v70)
    {
      v36 = v71;
      v38 = v66;
      v37 = v67;
      v39 = v65;
      if (v70 >= v8)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v36 = BigSubstring.UTF8View.index(before:)();
      v39 = v49;
      v38 = v50;
      v37 = v51;
      v35 = v36 >> 10;
      if (v36 >> 10 >= v74)
      {
        goto LABEL_47;
      }
    }

    specialized BidirectionalCollection<>._matchesSeparators(_:from:reverse:)(v73, v36, v39, v38, v37, 1, &v75);
    v47 = v78;
    if (v78 == 2)
    {
      specialized BidirectionalCollection<>._matchesSeparators(_:from:reverse:)(v73, v36, v39, v38, v37, 0, &v75);
      v47 = v78;
      if (v78 != 2)
      {
LABEL_49:

        v41 = v75;
        v42 = v76;
        v43 = v77;
        v44 = v79;
        v45 = v80;
        v46 = v81;
        v48 = v82;
        goto LABEL_50;
      }

      while (1)
      {
        v36 = BigSubstring.UTF8View.index(after:)();
        v39 = v52;
        v38 = v53;
        v37 = v54;
        v35 = v36 >> 10;
        if (v36 >> 10 >= v74)
        {
          break;
        }

        specialized BidirectionalCollection<>._matchesSeparators(_:from:reverse:)(v73, v36, v52, v53, v54, 0, &v75);
        v47 = v78;
        if (v78 != 2)
        {
          goto LABEL_49;
        }
      }

LABEL_47:

      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v46 = 0;
      v47 = 2;
      v48 = 2;
LABEL_50:
      if (v35 == v74)
      {
        v41 = v36;
        v42 = v39;
        v43 = v38;
        v47 = v37;
        v44 = v36;
        v45 = v39;
        v46 = v38;
        v48 = v37;
      }

      v40 = v64;
      goto LABEL_53;
    }

    v41 = v75;
    v42 = v76;
    v43 = v77;
    v44 = v79;
    v45 = v80;
    v46 = v81;
    v48 = v82;
    v40 = v64;
  }

  else
  {
    v40 = v20;

    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 2;
    v48 = 2;
  }

LABEL_53:
  *a3 = v17;
  a3[1] = v69;
  a3[2] = v19;
  a3[3] = v40;
  a3[4] = v44;
  a3[5] = v45;
  a3[6] = v46;
  a3[7] = v48;
  a3[8] = v41;
  a3[9] = v42;
  a3[10] = v43;
  a3[11] = v47;
  return result;
}

unint64_t specialized BidirectionalCollection<>._getBlock(for:in:)@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v14 = a5 >> 14;
  v15 = a4 >> 14;
  if (a5 >> 14 < a4 >> 14)
  {
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    swift_once();
    goto LABEL_12;
  }

  v9 = a5;
  v10 = a4;
  v12 = result;
  v8 = a8;
  v11 = a2 >> 14;
  v49 = a3;
  v13 = a3 >> 14;
  if (a2 >> 14 == v15 && v13 == v14 && (result & 4) == 0)
  {
    v16 = 0;
    v17 = 0;
    LOBYTE(v14) = 0;
    v18 = 1;
    v19 = a4;
LABEL_76:
    *v8 = v19;
    *(v8 + 8) = v14;
    *(v8 + 16) = v9;
    *(v8 + 24) = v17;
    *(v8 + 32) = v16;
    *(v8 + 40) = v18;
    return result;
  }

  v18 = 0;
  if (v11 < v15 || v14 < v13)
  {
    v16 = a5;
    v17 = 0;
    v19 = a4;
    LOBYTE(v14) = 0;
    goto LABEL_76;
  }

  v50 = a7;
  v51 = a6;
  if ((result & 8) == 0)
  {
    v20 = &outlined read-only object #1 of one-time initialization function for paragraphSeparators;
    goto LABEL_13;
  }

  if (one-time initialization token for lineSeparators != -1)
  {
    goto LABEL_79;
  }

LABEL_12:

LABEL_13:
  v48 = v20;
  v52 = v14;
  LOBYTE(v14) = (v12 & 1) == 0;
  v19 = ((v12 << 63) >> 63) & v10;
  if ((v12 & 1) == 0 || v11 == v15)
  {
    goto LABEL_41;
  }

  v19 = Substring.UTF8View.index(before:)();
  if (v11 < v52 && Substring.UTF8View.subscript.getter() == 10 && Substring.UTF8View.subscript.getter() == 13)
  {
    if (v15 >= v19 >> 14)
    {
LABEL_40:
      LOBYTE(v14) = 0;
      v19 = v10;
      goto LABEL_41;
    }

    v19 = Substring.UTF8View.index(before:)();
  }

  v14 = 0;
  v21 = v19 >> 14;
  if (v19 >> 14 < v15 || (v22 = v51, v23 = v50, v21 >= v52))
  {
LABEL_41:
    if ((v12 & 6) == 0)
    {
LABEL_64:

      v16 = 0;
      v9 = 0;
      v18 = 1;
      v17 = 1;
      goto LABEL_76;
    }

LABEL_42:
    if (v11 != v13)
    {
      v49 = Substring.UTF8View.index(before:)();
      v13 = v49 >> 14;
    }

    v29 = v52;
    if (v13 >= v52)
    {
LABEL_67:

      v43 = 0;
      v44 = 0;
    }

    else
    {
      v30 = specialized BidirectionalCollection<>._matchesSeparators(_:from:reverse:)(v48, v49, 1, v10, v9, v51, v50);
      if ((v32 & 1) == 0)
      {
        v16 = v30;
        v9 = v31;

        v18 = 0;
        v17 = 0;
        goto LABEL_76;
      }

      v33 = (v50 & 0x1000000000000000) == 0 || (v51 & 0x800000000000000) != 0;
      v34 = HIBYTE(v50) & 0xF;
      if ((v50 & 0x2000000000000000) == 0)
      {
        v34 = v51 & 0xFFFFFFFFFFFFLL;
      }

      v47 = v34;
      result = specialized BidirectionalCollection<>._matchesSeparators(_:from:reverse:)(v48, v49, 0, v10, v9, v51, v50);
      if (v36)
      {
        v37 = v49;
        while (1)
        {
          if ((v37 & 0xC) == 4 << v33)
          {
            result = _StringGuts._slowEnsureMatchingEncoding(_:)(v37, v51, v50);
            v38 = v50;
            v37 = result;
            if ((v50 & 0x1000000000000000) == 0)
            {
LABEL_55:
              v37 = (v37 & 0xFFFFFFFFFFFF0000) + 65540;
              v39 = v51;
              goto LABEL_56;
            }
          }

          else
          {
            v38 = v50;
            if ((v50 & 0x1000000000000000) == 0)
            {
              goto LABEL_55;
            }
          }

          if (v47 <= v37 >> 16)
          {
            goto LABEL_81;
          }

          v42 = String.UTF8View._foreignIndex(after:)();
          v38 = v50;
          v39 = v51;
          v37 = v42;
LABEL_56:
          v13 = v37 >> 14;
          if (v37 >> 14 >= v52)
          {
            v49 = v37;
            v29 = v52;
            goto LABEL_67;
          }

          result = specialized BidirectionalCollection<>._matchesSeparators(_:from:reverse:)(v48, v37, 0, v10, v9, v39, v38);
          if ((v41 & 1) == 0)
          {
            v49 = v37;
            v43 = result;
            v44 = v40;
            goto LABEL_68;
          }
        }
      }

      v43 = result;
      v44 = v35;
LABEL_68:

      v29 = v52;
    }

    if (v13 == v29)
    {
      v16 = v49;
    }

    else
    {
      v16 = v43;
    }

    v18 = v13 > v29;
    if (v13 == v29)
    {
      v9 = v49;
    }

    else
    {
      v9 = v44;
    }

    v17 = v13 > v29;
    goto LABEL_76;
  }

  v24 = (v51 >> 59) & 1;
  if ((v50 & 0x1000000000000000) == 0)
  {
    LOBYTE(v24) = 1;
  }

  v25 = 4 << v24;
  v26 = HIBYTE(v50) & 0xF;
  if ((v50 & 0x2000000000000000) == 0)
  {
    v26 = v51 & 0xFFFFFFFFFFFFLL;
  }

  v45 = v26;
  v46 = v25;
  while (1)
  {
    result = specialized BidirectionalCollection<>._matchesSeparators(_:from:reverse:)(v48, v19, 1, v10, v9, v22, v23);
    if ((v27 & 1) == 0)
    {
      v19 = Substring.UTF8View.index(after:)();
      LOBYTE(v14) = 0;
      if ((v12 & 6) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_42;
    }

    if (v15 >= v21)
    {
      goto LABEL_40;
    }

    v22 = v51;
    if ((v19 & 0xC) == v46)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v19, v51, v50);
      v22 = v51;
      v19 = result;
      if (result < 0x4000)
      {
        goto LABEL_78;
      }
    }

    else if (v19 < 0x4000)
    {
      goto LABEL_78;
    }

    v23 = v50;
    if ((v50 & 0x1000000000000000) == 0)
    {
      v19 = (v19 & 0xFFFFFFFFFFFF0000) - 65532;
      goto LABEL_33;
    }

    if (v45 < v19 >> 16)
    {
      break;
    }

    v28 = String.UTF8View._foreignIndex(before:)();
    v23 = v50;
    v22 = v51;
    v19 = v28;
LABEL_33:
    v14 = 0;
    v21 = v19 >> 14;
    if (v19 >> 14 < v15 || v21 >= v52)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_81:
  __break(1u);
  return result;
}

void AttributedString.Runs.AttributesSlice1.index(before:)(__int128 *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v90 - v9;
  v11 = *(v3 + *(a2 + 36));
  if (!*(v11 + 16))
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v103 = a3;
  v12 = *a1;
  v105 = a1[1];
  v106 = v12;
  v13 = *(v3 + *(a2 + 40));
  v14 = v3[23];
  v101 = v11;
  v102 = v14;
  v15 = v3[26];
  v16 = v12;
  v17 = *(type metadata accessor for AttributedString.Runs() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v110 = v3;
  v107 = v17;
  RangeSet.ranges.getter();
  v18 = v10;
  v19 = RangeSet.Ranges.count.getter();
  v20 = *(v8 + 8);
  v109 = v8 + 8;
  *&v108 = v20;
  v20(v10, v7);
  v104 = v13;
  if (v15 == 2 || (v102 ^ v16) >= 0x400)
  {
    if (v19 >= 1)
    {
      v22 = 0;
      v23 = v16 >> 10;
      while (!__OFADD__(v22, v19))
      {
        v15 = (v22 + v19) / 2;
        RangeSet.ranges.getter();
        RangeSet.Ranges.subscript.getter();
        (v108)(v10, v7);
        v18 = v120;
        if (v23 < v120 >> 10)
        {
          v19 = (v22 + v19) / 2;
          if (v22 >= v15)
          {
            goto LABEL_12;
          }
        }

        else
        {
          if (v23 < v123 >> 10)
          {
            goto LABEL_13;
          }

          v22 = v15 + 1;
          if (v15 + 1 >= v19)
          {
            goto LABEL_12;
          }
        }
      }

      goto LABEL_69;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    v21 = v104;
    if ((v18 ^ v16) > 0x3FF)
    {
      v108 = v121;
      v25 = v122;
      v24 = v110;
      goto LABEL_17;
    }
  }

  else
  {
    v15 = v19;
    v21 = v13;
  }

  v24 = v110;
  if (v15 < 1)
  {
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  type metadata accessor for AttributedString.Runs();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  RangeSet.ranges.getter();
  RangeSet.Ranges.subscript.getter();
  (v108)(v10, v7);
  v108 = v121;
  v18 = v120;
  v25 = v122;
  v105 = v124;
  v106 = v123;
LABEL_17:
  if (*(v21 + 16) != 1 || (specialized Set.contains(_:)(0, 1, v21) & 1) != 0)
  {
    v107 = v18;
    v26 = *v24;
    v27 = *(*v24 + 24);
    v102 = *v24 + 24;
    v28 = *(v26 + 40);
    v125 = v27;
    v126 = v28;
    v127 = *(v26 + 56);
    swift_unknownObjectRetain();
    v29 = *(&v106 + 1);
    v100 = v106;
    v93 = *(&v105 + 1);
    v94 = v105;
    v30 = BigString.UTF8View.index(before:)();
    v96 = v32;
    v97 = v31;
    v95 = v33;
    swift_unknownObjectRelease();
    v34 = *(v26 + 72);
    v35 = *(v26 + 88);
    if (v34)
    {
      v36 = *(v26 + 88);
    }

    else
    {
      v36 = 0;
    }

    v109 = v30 >> 11;
    if (v36 < (v30 >> 11))
    {
      goto LABEL_75;
    }

    v91 = v29;
    v92 = v30;
    v37 = *(v26 + 96);
    v98 = *(v26 + 80);
    v99 = v37;
    if (v34)
    {
      if (v109 < v35)
      {
        v39 = (v34 + 16);
        LODWORD(v38) = *(v34 + 16);
        if (*(v34 + 16))
        {
          v90[1] = v35;
          v40 = *(v34 + 18);
          swift_unknownObjectRetain_n();
          if (!v40)
          {
            v42 = 0;
            v41 = v109;
            v45 = v34;
LABEL_47:
            v62 = 0;
            v63 = 24;
            v54 = v41;
            v38 = v38;
            while (1)
            {
              v64 = *(v45 + v63);
              v65 = v54 - v64;
              if (__OFSUB__(v54, v64))
              {
                goto LABEL_70;
              }

              if (__OFADD__(v65, 1))
              {
                goto LABEL_71;
              }

              if (v65 + 1 < 1)
              {
                v50 = v25;
                v38 = v62;
                goto LABEL_55;
              }

              ++v62;
              v63 += 24;
              v54 -= v64;
              if (v38 == v62)
              {
                if (v65)
                {
                  goto LABEL_66;
                }

                goto LABEL_53;
              }
            }
          }

          v90[0] = v25;
          v41 = v109;
          v42 = v40;
          v43 = v34;
          do
          {
            v44 = *v39;
            if (*v39)
            {
              v46 = 0;
              v47 = (v43 + 40);
              while (1)
              {
                v48 = *v47;
                v47 += 3;
                v49 = v41 - v48;
                if (__OFSUB__(v41, v48))
                {
                  goto LABEL_67;
                }

                if (__OFADD__(v49, 1))
                {
                  goto LABEL_68;
                }

                if (v49 + 1 < 1)
                {
                  v44 = v46;
                  goto LABEL_29;
                }

                ++v46;
                v41 = v49;
                if (v44 == v46)
                {
                  goto LABEL_38;
                }
              }
            }

            v49 = v41;
LABEL_38:
            if (v49)
            {
              goto LABEL_72;
            }

            v41 = 0;
LABEL_29:
            v42 = (v44 << ((4 * v40 + 8) & 0x3C)) | ((-15 << ((4 * v40 + 8) & 0x3C)) - 1) & v42;
            v45 = *(v43 + 24 + 24 * v44);
            swift_unknownObjectRetain();
            swift_unknownObjectRelease();
            v39 = (v45 + 16);
            LOBYTE(v40) = *(v45 + 18);
            v43 = v45;
          }

          while (v40);
          LODWORD(v38) = *v39;
          if (*v39)
          {
            v25 = v90[0];
            goto LABEL_47;
          }

          v38 = 0;
          v25 = v90[0];
          if (!v41)
          {
LABEL_53:
            v50 = v25;
            v54 = 0;
LABEL_55:
            swift_unknownObjectRelease();
            v53 = v42 & 0xFFFFFFFFFFFFF0FFLL | (v38 << 8);
            v52 = v99;
            goto LABEL_41;
          }

LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
          goto LABEL_73;
        }
      }
    }

    v50 = v25;
    v51 = swift_unknownObjectRetain();
    v52 = v99;
    v53 = specialized Rope._endPath.getter(v51);
    v45 = 0;
    v54 = 0;
    if (v34)
    {
LABEL_41:
      v55 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v52, v53, v45, v34, v98);
      swift_unknownObjectRelease();
    }

    else
    {
      v55 = 0;
    }

    if (__OFSUB__(v109, v54))
    {
      goto LABEL_76;
    }

    v119[0] = v52;
    v119[1] = v53;
    v119[2] = v45;
    v119[3] = v55;
    v119[4] = v109 - v54;
    AttributedString.Runs._firstOfMatchingRuns(with:comparing:)(v119, v101, v112);
    if (v112[4] >= (v107 >> 11))
    {
      v70 = *(v26 + 40);
      v116 = *(v26 + 24);
      v117 = v70;
      v118 = *(v26 + 56);
      swift_unknownObjectRetain();
      v71 = BigString.UTF8View.index(_:offsetBy:)();
      v73 = v72;
      v75 = v74;
      v77 = v76;
      swift_unknownObjectRelease();
      v78 = *(v102 + 16);
      v113 = *v102;
      v114 = v78;
      v115 = *(v102 + 32);
      v67 = v104;
      if (v100 >> 10 < v71 >> 10)
      {
LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

      v120 = v71;
      *&v121 = v73;
      *(&v121 + 1) = v75;
      v122 = v77;
      v123 = v106;
      v124 = v105;
      v79 = *v102;
      v80 = *(v102 + 16);
      v129 = *(v102 + 32);
      v128[0] = v79;
      v128[1] = v80;
      outlined init with copy of Rope<BigString._Chunk>._Node?(v128, &v111);
      v60 = &v113;
    }

    else
    {
      v66 = *(v102 + 16);
      v116 = *v102;
      v117 = v66;
      v118 = *(v102 + 32);
      v67 = v104;
      if (v100 >> 10 < v107 >> 10)
      {
LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

      v121 = v108;
      v120 = v107;
      v122 = v50;
      *&v123 = v100;
      *(&v123 + 1) = v91;
      *&v124 = v94;
      *(&v124 + 1) = v93;
      v68 = *v102;
      v69 = *(v102 + 16);
      *&v115 = *(v102 + 32);
      v113 = v68;
      v114 = v69;
      outlined init with copy of Rope<BigString._Chunk>._Node?(&v113, v128);
      v60 = &v116;
    }

    v61 = v67;
LABEL_64:
    v81 = BigString._lastConstraintBreak(in:with:)(&v120, v61);
    v83 = v82;
    v85 = v84;
    v87 = v86;
    outlined destroy of BigString(v60);
    v88 = *(v26 + 16);
    v89 = v103;
    *v103 = v81;
    v89[1] = v83;
    v89[2] = v85;
    v89[3] = v87;
    v89[4] = v88;
    return;
  }

  v26 = *v24;
  v56 = *(*v24 + 24);
  v57 = *(*v24 + 56);
  v126 = *(*v24 + 40);
  v127 = v57;
  v125 = v56;
  if (v106 >> 10 >= v18 >> 10)
  {
    v121 = v108;
    v120 = v18;
    v122 = v25;
    v123 = v106;
    v124 = v105;
    v58 = *(v26 + 24);
    *&v118 = *(v26 + 56);
    v59 = *(v26 + 40);
    v116 = v58;
    v117 = v59;
    outlined init with copy of Rope<BigString._Chunk>._Node?(&v116, &v113);
    v60 = &v125;
    v61 = v21;
    goto LABEL_64;
  }

LABEL_79:
  __break(1u);
}

uint64_t AttributedString.Runs.AttributesSlice1.subscript.getter(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v245 = a2;
  v248 = a1;
  v8 = *(a4 + 24);
  v246 = *(a4 + 16);
  v247 = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v225 = *(v9 - 8);
  v226 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v230 = &v222 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v275 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v222 - v12;
  v14 = *a3;
  v15 = *(a3 + 8);
  v16 = *(a3 + 16);
  *&v308 = *a3;
  *(&v308 + 1) = v15;
  v309[0] = v16;
  v276 = *(a3 + 24);
  *&v309[1] = v276;
  v17 = *(v5 + *(a4 + 36));
  v18 = *(v5 + *(a4 + 40));
  AttributedString.Runs._slicedRunBoundary(roundingDown:attributeNames:constraints:)(&v291, &v308, v17, v18, &v303);
  v273 = v17;
  v267 = v17[2];
  if (!v267)
  {
    goto LABEL_185;
  }

  v265 = v18;
  v243 = *(&v303 + 1);
  v244 = v303;
  v242 = v304;
  v240 = v292;
  v241 = v291;
  v239 = v293;
  v19 = *v5;
  v259 = v14;
  v254 = v15;
  v251 = v16;
  v252 = v276;
  v264 = v19;
  AttributedString.Guts.findRun(at:)(v14, v276, &v291);
  v262 = *(&v291 + 1);
  v255 = v291;
  v272 = *(&v292 + 1);
  v258 = v292;
  v253 = v293;
  v236 = v295;
  v237 = v294;
  v234 = v297;
  v235 = v296;
  v20 = *(type metadata accessor for AttributedString.Runs() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  *&v276 = v5;
  v274 = v20;
  RangeSet.ranges.getter();
  v18 = RangeSet.Ranges.count.getter();
  v21 = v275 + 8;
  v22 = *(v275 + 8);
  v22(v13, v11);
  if (v18 < 1)
  {
LABEL_179:
    __break(1u);
LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
    goto LABEL_182;
  }

  v23 = 0;
  v275 = v259 >> 10;
  while (1)
  {
    if (__OFADD__(v23, v18))
    {
      goto LABEL_180;
    }

    v24 = (v23 + v18) / 2;
    v25 = v21;
    RangeSet.ranges.getter();
    RangeSet.Ranges.subscript.getter();
    v22(v13, v11);
    if (v275 >= v291 >> 10)
    {
      break;
    }

LABEL_4:
    v18 = v24;
    if (v23 >= v24)
    {
      goto LABEL_179;
    }
  }

  v26 = v293;
  if (v275 >= v293 >> 10)
  {
    v23 = v24 + 1;
    v24 = v18;
    v21 = v25;
    goto LABEL_4;
  }

  v250 = v293 >> 10;
  v18 = v294;
  v11 = v295;
  v260 = v293;
  v261 = v296;
  v27 = v265;
  if (*(v265 + 16) == 1 && (specialized Set.contains(_:)(0, 1, v265) & 1) == 0)
  {
    v31 = v264[3];
    v30 = v264[4];
    v33 = v264[5];
    v32 = v264[6];
    v34 = v264[7];
    v273 = v264[8];
    v274 = v34;
    v282 = v259;
    v283 = v254;
    v35 = v251;
    v284 = v251;
    v285 = v252;
    v286 = v26;
    v287 = v18;
    v288 = v11;
    v289 = v261;
    swift_unknownObjectRetain();
    v36 = specialized Set.contains(_:)(0, 0, v27);
    v271 = v33;
    v272 = v30;
    *&v276 = v31;
    v270 = v32;
    if (v36)
    {
      *&v332 = v31;
      *(&v332 + 1) = v30;
      *&v333 = v33;
      *(&v333 + 1) = v32;
      *&v334 = v274;
      *(&v334 + 1) = v273;
      BigString.UTF8View.subscript.getter();
      v37 = v259;
      *&v277 = v259;
      *(&v277 + 1) = v254;
      v38 = v252;
      *&v278 = v35;
      *(&v278 + 1) = v252;
      *&v279 = v259;
      *(&v279 + 1) = v254;
      *&v280 = v35;
      *(&v280 + 1) = v252;
      specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v277, &v291);
      v26 = v260;
      outlined destroy of BigSubstring.UTF8View(&v308);
      if (v296 != 2)
      {
        v26 = v293;
        if (v275 > v293 >> 10)
        {
LABEL_197:
          __break(1u);
          goto LABEL_198;
        }

        v18 = v294;
        v11 = v295;
        v261 = v296;
      }
    }

    else
    {
      v37 = v259;
      v38 = v252;
    }

    v318 = v37;
    v319 = v254;
    v320 = v251;
    v321 = v38;
    v260 = v26;
    v322 = v26;
    v323 = v18;
    v256 = v11;
    v257 = v18;
    v324 = v11;
    v325 = v261;
    if ((specialized Collection<>._containsScalarConstraint.getter(v27) & 1) == 0)
    {
      swift_unknownObjectRelease();
      v104 = v264;
      goto LABEL_170;
    }

    v152 = v27 + 56;
    v153 = 1 << *(v27 + 32);
    v154 = -1;
    if (v153 < 64)
    {
      v154 = ~(-1 << v153);
    }

    v11 = v154 & *(v27 + 56);
    v155 = (v153 + 63) >> 6;

    v18 = 0;
    v156 = MEMORY[0x1E69E7CC0];
    v158 = v271;
    v157 = v272;
    v159 = v276;
    v160 = v270;
LABEL_133:
    if (v11)
    {
      goto LABEL_138;
    }

    while (1)
    {
      v161 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_183;
      }

      if (v161 >= v155)
      {
        break;
      }

      v11 = *(v152 + 8 * v161);
      ++v18;
      if (v11)
      {
        v18 = v161;
LABEL_138:
        v162 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v163 = (*(v265 + 48) + ((v18 << 10) | (16 * v162)));
        v164 = v163[1];
        if (v164 >= 2)
        {
          v165 = specialized Collection.first.getter(*v163, v164);
          if ((v165 & 0x100000000) == 0)
          {
            v269 = v165;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v156 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v156 + 2) + 1, 1, v156);
            }

            v167 = *(v156 + 2);
            v166 = *(v156 + 3);
            v168 = (v167 + 1);
            v169 = v269;
            if (v167 >= v166 >> 1)
            {
              v268 = (v167 + 1);
              v170 = v156;
              v171 = v167;
              v172 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v166 > 1), v167 + 1, 1, v170);
              v168 = v268;
              v169 = v269;
              v167 = v171;
              v156 = v172;
            }

            *(v156 + 2) = v168;
            *&v156[4 * v167 + 32] = v169;
          }
        }

        goto LABEL_133;
      }
    }

    v326 = v159;
    v327 = v157;
    v328 = v158;
    v329 = v160;
    v330 = v274;
    v331 = v273;
    BigString.UnicodeScalarView.subscript.getter();
    v173 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v156);
    v18 = v174;
    v11 = v175;
    v177 = v176;

    swift_unknownObjectRelease();
    outlined destroy of BigSubstring.UnicodeScalarView(&v291);
    v104 = v264;
    if (v177 != 2)
    {
      if (v275 > v173 >> 10)
      {
LABEL_198:
        __break(1u);
        goto LABEL_199;
      }

      v260 = v173;
      v261 = v177;
      v256 = v11;
      v257 = v18;
    }

    goto LABEL_170;
  }

  v28 = *(v276 + 120);
  v256 = v11;
  v257 = v18;
  if (v272 == v28)
  {
    v29 = *(v276 + 176);
    if (*(v276 + 208) == 2)
    {
      if (v29 != 2)
      {
        goto LABEL_76;
      }
    }

    else if (v29 == 2 || (*(v276 + 152) ^ *(v276 + 184)) >= 1024)
    {
      goto LABEL_76;
    }
  }

  if (v272 >= v28)
  {
    goto LABEL_193;
  }

  v229 = v28;
  v39 = v264;
  v40 = v264[9];
  v41 = v264[10];
  v18 = v264[11];
  v42 = v264[12];
  swift_unknownObjectRetain();
  v43 = v255;
  v44 = v262;
  v45 = v258;
  specialized Rope.subscript.getter(v255, v262, v258, v40, v41, v18, v42);
  v47 = v46;
  v227 = v48;
  swift_unknownObjectRelease();
  v49 = v39[9];
  v11 = v39[10];
  v50 = v272 + 1;
  v228 = v273 + 5;
  v51 = v39[12];
  v52 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMd;
  *&v291 = v43;
  *(&v291 + 1) = v44;
  *&v292 = v45;
  v263 = v47;
  while (2)
  {
    if (v43 != v51)
    {
      goto LABEL_187;
    }

    v233 = v50;
    v238 = v51;
    v258 = v45;
    if (v45)
    {
      v18 = *(v45 + 24 * ((v262 >> ((4 * *(v45 + 18) + 8) & 0x3C)) & 0xF) + 24);
      swift_unknownObjectRetain();
    }

    else
    {
      swift_unknownObjectRetain();
      v18 = specialized Rope._Node.subscript.getter(v262, v49);
    }

    if (__OFADD__(v253, v18))
    {
      goto LABEL_188;
    }

    if (v49)
    {
      v53 = ((-15 << ((4 * *(v49 + 18) + 8) & 0x3C)) - 1) & *(v49 + 18) | (*(v49 + 16) << ((4 * *(v49 + 18) + 8) & 0x3C));
    }

    else
    {
      v53 = 0;
    }

    if (v262 >= v53)
    {
      goto LABEL_189;
    }

    v224 = v253 + v18;
    if (v258)
    {
      v54 = (4 * *(v258 + 18) + 8) & 0x3C;
      v55 = ((v262 >> v54) & 0xF) + 1;
      if (v55 < *(v258 + 16))
      {
        v232 = (v55 << v54) | ((-15 << v54) - 1) & v262;
        swift_unknownObjectRelease();
        goto LABEL_37;
      }
    }

    if (specialized Rope._Node.formSuccessor(of:)(&v291, v49))
    {
      swift_unknownObjectRelease();
      v232 = *(&v291 + 1);
LABEL_37:
      v11 = &v291;
      v56 = v292;
      v57 = v291;
    }

    else
    {
      v11 = &v291;
      if (v49)
      {
        v18 = v52;
        v58 = *(v49 + 18);
        v59 = *(v49 + 16);
        swift_unknownObjectRelease();
        v56 = 0;
        v60 = (4 * v58 + 8) & 0x3C;
        v61 = ((-15 << v60) - 1) & v58;
        v52 = v18;
        v232 = v61 | (v59 << v60);
      }

      else
      {
        v232 = 0;
        v56 = 0;
      }

      v57 = v238;
    }

    if (v229 < v233)
    {
LABEL_81:

      goto LABEL_82;
    }

    v255 = v57;
    if (v233 == v229)
    {
      v62 = *(v276 + 176);
      if (*(v276 + 208) == 2)
      {
        v57 = v255;
        if (v62 == 2)
        {
          goto LABEL_81;
        }
      }

      else
      {
        v57 = v255;
        if (v62 != 2)
        {
          v57 = v255;
          if ((*(v276 + 152) ^ *(v276 + 184)) < 1024)
          {
            goto LABEL_81;
          }
        }
      }
    }

    if (v57 != v264[12])
    {
      goto LABEL_190;
    }

    v223 = v56;
    if (v56)
    {
      v63 = v56 + 24 * ((v232 >> ((4 * *(v56 + 18) + 8) & 0x3C)) & 0xF);
      v65 = *(v63 + 32);
      v64 = *(v63 + 40);

      v231 = v64;
    }

    else
    {
      v66 = v264[9];
      v18 = v264[11];
      swift_unknownObjectRetain();
      specialized Rope._Node.subscript.getter(v232, v66);
      v65 = v67;
      v231 = v68;
      swift_unknownObjectRelease();
    }

    v69 = 0;
    v70 = v228;
    v266 = v65;
    do
    {
      if (v69 >= v273[2])
      {
        goto LABEL_181;
      }

      v18 = *(v70 - 1);
      v71 = *v70;
      v274 = v70;
      if (*(v47 + 16))
      {

        v72 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v71);
        if (v73)
        {
          outlined init with copy of AttributedString._AttributeValue(*(v47 + 56) + 72 * v72, &v308);
          if (!*(v65 + 16))
          {
            goto LABEL_66;
          }
        }

        else
        {
          v311 = 0;
          v310 = 0u;
          v308 = 0u;
          memset(v309, 0, sizeof(v309));
          if (!*(v65 + 16))
          {
LABEL_66:

            goto LABEL_67;
          }
        }
      }

      else
      {
        v311 = 0;
        v310 = 0u;
        v308 = 0u;
        memset(v309, 0, sizeof(v309));

        if (!*(v65 + 16))
        {
          goto LABEL_66;
        }
      }

      v74 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v71);
      v18 = v75;

      if (v18)
      {
        outlined init with copy of AttributedString._AttributeValue(*(v65 + 56) + 72 * v74, &v303);
        goto LABEL_68;
      }

LABEL_67:
      v307 = 0;
      v305 = 0u;
      v306 = 0u;
      v303 = 0u;
      v304 = 0u;
LABEL_68:
      outlined init with copy of AttributedString._AttributeValue?(&v308, &v291);
      outlined init with copy of AttributedString._AttributeValue?(&v303, &v298);
      if (*(&v292 + 1))
      {
        outlined init with copy of AttributedString._AttributeValue?(&v291, &v282);
        if (!*(&v299 + 1))
        {
          outlined destroy of TermOfAddress?(&v303, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of TermOfAddress?(&v308, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of AttributedString._AttributeValue(&v282);
LABEL_78:
          outlined destroy of TermOfAddress?(&v291, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMd);
LABEL_80:

          goto LABEL_81;
        }

        v279 = v300;
        v280 = v301;
        v281 = v302;
        v277 = v298;
        v278 = v299;
        v76 = v285;
        v269 = v286;
        v270 = v69;
        v268 = __swift_project_boxed_opaque_existential_1(&v282, v285);
        v18 = *(&v278 + 1);
        v77 = __swift_project_boxed_opaque_existential_1(&v277, *(&v278 + 1));
        v272 = &v222;
        v78 = *(v76 - 8);
        MEMORY[0x1EEE9AC00](v77);
        v80 = &v222 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
        v271 = &v222;
        v82 = MEMORY[0x1EEE9AC00](v81);
        (*(v84 + 16))(&v222 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0), v82);
        v85 = type metadata accessor for Optional();
        v86 = *(v85 - 8);
        MEMORY[0x1EEE9AC00](v85);
        v88 = &v222 - v87;
        v89 = swift_dynamicCast();
        v90 = *(v78 + 56);
        if (!v89)
        {
          v90(v88, 1, 1, v76);
          outlined destroy of TermOfAddress?(&v303, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of TermOfAddress?(&v308, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          (*(v86 + 8))(v88, v85);
          outlined destroy of AttributedString._AttributeValue(&v277);
          outlined destroy of AttributedString._AttributeValue(&v282);
          outlined destroy of TermOfAddress?(&v291, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          goto LABEL_80;
        }

        v90(v88, 0, 1, v76);
        (*(v78 + 32))(v80, v88, v76);
        v91 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v78 + 8))(v80, v76);
        v52 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMd;
        outlined destroy of TermOfAddress?(&v303, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?(&v308, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of AttributedString._AttributeValue(&v277);
        outlined destroy of AttributedString._AttributeValue(&v282);
        outlined destroy of TermOfAddress?(&v291, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        v47 = v263;
        v11 = &v291;
        v65 = v266;
        v69 = v270;
        if ((v91 & 1) == 0)
        {
          goto LABEL_80;
        }
      }

      else
      {
        outlined destroy of TermOfAddress?(&v303, v52);
        outlined destroy of TermOfAddress?(&v308, v52);
        if (*(&v299 + 1))
        {
          goto LABEL_78;
        }

        outlined destroy of TermOfAddress?(&v291, v52);
      }

      ++v69;
      v70 = v274 + 2;
    }

    while (v267 != v69);

    v49 = v264[9];
    v11 = v264[10];
    v51 = v264[12];
    v253 = v224;
    v43 = v255;
    *&v291 = v255;
    *(&v291 + 1) = v232;
    v45 = v223;
    v262 = v232;
    *&v292 = v223;
    v50 = v233 + 1;
    if (!__OFADD__(v233, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_76:
  v238 = v255;
LABEL_82:
  v11 = v264;
  v92 = v264[9];
  v93 = v264[10];
  v94 = v264[11];
  v95 = v264[12];
  swift_unknownObjectRetain();
  v96 = specialized Rope.subscript.getter(v238, v262, v258, v92, v93, v94, v95);
  v18 = v97;
  swift_unknownObjectRelease();

  if (__OFADD__(v253, v96))
  {
    goto LABEL_191;
  }

  v98 = *(v11 + 40);
  v332 = *(v11 + 24);
  v333 = v98;
  v334 = *(v11 + 56);
  if (__OFSUB__(v253 + v96, v237 >> 11))
  {
LABEL_192:
    __break(1u);
LABEL_193:
    __break(1u);
    goto LABEL_194;
  }

  swift_unknownObjectRetain();
  v99 = BigString.UTF8View.index(_:offsetBy:)();
  v18 = v100;
  v11 = v101;
  v103 = v102;
  swift_unknownObjectRelease();
  v104 = v264;
  v105 = v99 >> 10;
  v106 = v264[3];
  v107 = v264[5];
  v271 = v264[4];
  v272 = v107;
  v108 = v264[7];
  v273 = v264[6];
  v274 = v108;
  *&v276 = v264[8];
  if (v99 >> 10 >= v250)
  {
    v113 = v259;
    v112 = v260;
    v282 = v259;
    v114 = v254;
    v283 = v254;
    v116 = v251;
    v115 = v252;
    v284 = v251;
    v285 = v252;
    v286 = v260;
    v117 = v256;
    v11 = v257;
    v287 = v257;
    v288 = v256;
    v118 = v261;
    v289 = v261;
    v18 = v106;
    swift_unknownObjectRetain();
    v119 = specialized Set.contains(_:)(0, 0, v265);
    v270 = v18;
    if (v119)
    {
      v326 = v18;
      v327 = v271;
      v328 = v272;
      v329 = v273;
      v330 = v274;
      v331 = v276;
      BigString.UTF8View.subscript.getter();
      *&v277 = v113;
      *(&v277 + 1) = v254;
      *&v278 = v116;
      *(&v278 + 1) = v115;
      *&v279 = v113;
      *(&v279 + 1) = v254;
      *&v280 = v116;
      *(&v280 + 1) = v115;
      specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v277, &v291);
      v114 = v254;
      outlined destroy of BigSubstring.UTF8View(&v308);
      v112 = v260;
      v120 = v11;
      if (v296 != 2)
      {
        v112 = v293;
        if (v275 > v293 >> 10)
        {
          goto LABEL_195;
        }

        v120 = v294;
        v117 = v295;
        v118 = v296;
      }
    }

    else
    {
      v120 = v11;
    }

    v318 = v259;
    v319 = v114;
    v320 = v116;
    v321 = v252;
    v322 = v112;
    v323 = v120;
    v324 = v117;
    v325 = v118;
    v121 = v265;
    if ((specialized Collection<>._containsScalarConstraint.getter(v265) & 1) == 0)
    {
      swift_unknownObjectRelease();
      v104 = v264;
      v139 = v250;
LABEL_117:
      v147 = v112 >> 10 == v139;
      if (v112 >> 10 == v139)
      {
        v148 = v260;
      }

      else
      {
        v148 = v112;
      }

      if (v147)
      {
        v149 = v257;
      }

      else
      {
        v149 = v120;
      }

      v150 = v256;
      if (!v147)
      {
        v150 = v117;
      }

      v256 = v150;
      v257 = v149;
      v151 = v261;
      if (!v147)
      {
        v151 = v118;
      }

      v260 = v148;
      v261 = v151;
      goto LABEL_170;
    }

    v18 = v121 + 56;
    v122 = 1 << *(v121 + 32);
    v123 = -1;
    if (v122 < 64)
    {
      v123 = ~(-1 << v122);
    }

    v124 = v123 & *(v121 + 56);
    v11 = (v122 + 63) >> 6;

    v125 = 0;
    v126 = MEMORY[0x1E69E7CC0];
    while (v124)
    {
LABEL_102:
      v128 = __clz(__rbit64(v124));
      v124 &= v124 - 1;
      v129 = (*(v265 + 48) + ((v125 << 10) | (16 * v128)));
      v130 = v129[1];
      if (v130 >= 2)
      {
        v131 = specialized Collection.first.getter(*v129, v130);
        if ((v131 & 0x100000000) == 0)
        {
          v269 = v131;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v126 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v126 + 2) + 1, 1, v126);
          }

          v133 = *(v126 + 2);
          v132 = *(v126 + 3);
          v134 = (v133 + 1);
          v135 = v269;
          if (v133 >= v132 >> 1)
          {
            v268 = (v133 + 1);
            v136 = v126;
            v137 = v133;
            v138 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v132 > 1), v133 + 1, 1, v136);
            v134 = v268;
            v135 = v269;
            v133 = v137;
            v126 = v138;
          }

          *(v126 + 2) = v134;
          *&v126[4 * v133 + 32] = v135;
        }
      }
    }

    while (1)
    {
      v127 = v125 + 1;
      if (__OFADD__(v125, 1))
      {
        break;
      }

      if (v127 >= v11)
      {

        v18 = v118;
        v312 = v270;
        v313 = v271;
        v314 = v272;
        v315 = v273;
        v316 = v274;
        v317 = v276;
        BigString.UnicodeScalarView.subscript.getter();
        v142 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v126);
        *&v276 = v143;
        v11 = v144;
        v146 = v145;

        swift_unknownObjectRelease();
        outlined destroy of BigSubstring.UnicodeScalarView(&v291);
        v104 = v264;
        v139 = v250;
        if (v146 == 2)
        {
          goto LABEL_117;
        }

        if (v275 <= v142 >> 10)
        {
          v112 = v142;
          v120 = v276;
          v117 = v11;
          v118 = v146;
          goto LABEL_117;
        }

        goto LABEL_196;
      }

      v124 = *(v18 + 8 * v127);
      ++v125;
      if (v124)
      {
        v125 = v127;
        goto LABEL_102;
      }
    }

LABEL_182:
    __break(1u);
LABEL_183:
    __break(1u);
    goto LABEL_184;
  }

  v109 = v251;
  v110 = v252;
  v111 = v254;
  if (v105 < v275)
  {
LABEL_194:
    __break(1u);
LABEL_195:
    __break(1u);
LABEL_196:
    __break(1u);
    goto LABEL_197;
  }

  v282 = v259;
  v283 = v254;
  v284 = v251;
  v285 = v252;
  v286 = v99;
  v287 = v18;
  v288 = v11;
  v289 = v103;
  if (v275 == v105)
  {
    v260 = v99;
    v261 = v103;
    v256 = v11;
    v257 = v18;
    goto LABEL_170;
  }

  v140 = v106;
  swift_unknownObjectRetain();
  if ((specialized Set.contains(_:)(0, 0, v265) & 1) == 0)
  {
    v141 = v140;
LABEL_150:
    v318 = v259;
    v319 = v111;
    v320 = v109;
    v321 = v110;
    v322 = v99;
    v323 = v18;
    v324 = v11;
    v325 = v103;
    v178 = v265;
    if (specialized Collection<>._containsScalarConstraint.getter(v265))
    {
      v179 = v178 + 56;
      v180 = 1 << *(v178 + 32);
      v181 = -1;
      if (v180 < 64)
      {
        v181 = ~(-1 << v180);
      }

      v182 = v181 & *(v178 + 56);
      v183 = (v180 + 63) >> 6;

      v184 = 0;
      v269 = MEMORY[0x1E69E7CC0];
      while (v182)
      {
LABEL_159:
        v186 = __clz(__rbit64(v182));
        v182 &= v182 - 1;
        v187 = (*(v265 + 48) + ((v184 << 10) | (16 * v186)));
        v188 = v187[1];
        if (v188 >= 2)
        {
          v189 = specialized Collection.first.getter(*v187, v188);
          if ((v189 & 0x100000000) == 0)
          {
            v268 = v189;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v269 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v269 + 2) + 1, 1, v269);
            }

            v191 = *(v269 + 2);
            v190 = *(v269 + 3);
            v192 = v191 + 1;
            v193 = v268;
            if (v191 >= v190 >> 1)
            {
              v266 = *(v269 + 2);
              v267 = v191 + 1;
              v195 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v190 > 1), v191 + 1, 1, v269);
              v191 = v266;
              v192 = v267;
              v269 = v195;
              v193 = v268;
            }

            v194 = v269;
            *(v269 + 2) = v192;
            *&v194[4 * v191 + 32] = v193;
          }
        }
      }

      while (1)
      {
        v185 = v184 + 1;
        if (__OFADD__(v184, 1))
        {
          break;
        }

        if (v185 >= v183)
        {

          v312 = v141;
          v313 = v271;
          v314 = v272;
          v315 = v273;
          v316 = v274;
          v317 = v276;
          BigString.UnicodeScalarView.subscript.getter();
          v196 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v269);
          v198 = v197;
          *&v276 = v199;
          v201 = v200;

          swift_unknownObjectRelease();
          outlined destroy of BigSubstring.UnicodeScalarView(&v291);
          v260 = v99;
          v261 = v103;
          v256 = v11;
          v257 = v18;
          v104 = v264;
          if (v201 == 2)
          {
            goto LABEL_170;
          }

          if (v275 <= v196 >> 10)
          {
            v260 = v196;
            v261 = v201;
            v256 = v276;
            v257 = v198;
            goto LABEL_170;
          }

          goto LABEL_200;
        }

        v182 = *(v179 + 8 * v185);
        ++v184;
        if (v182)
        {
          v184 = v185;
          goto LABEL_159;
        }
      }

LABEL_184:
      __break(1u);
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
LABEL_190:
      __break(1u);
LABEL_191:
      __break(1u);
      goto LABEL_192;
    }

    swift_unknownObjectRelease();
    v260 = v99;
    v261 = v103;
    v256 = v11;
    v257 = v18;
    v104 = v264;
LABEL_170:
    v202 = v104[2];
    v203 = v104[9];
    v204 = v104[10];
    v205 = v104[11];
    v206 = v104[12];
    swift_unknownObjectRetain();
    specialized Rope.subscript.getter(v244, v243, v242, v203, v204, v205, v206);
    v208 = v207;
    swift_unknownObjectRelease();
    v209 = (*(v247 + 24))();
    if (*(v208 + 16))
    {
      v211 = specialized __RawDictionaryStorage.find<A>(_:)(v209, v210);
      v11 = v212;

      v213 = v248;
      v18 = AssociatedTypeWitness;
      if (v11)
      {
        outlined init with copy of AttributedString._AttributeValue(*(v208 + 56) + 72 * v211, &v303);

        outlined init with copy of Hashable & Sendable(&v303, &v290);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
        v11 = v230;
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_201;
        }

        outlined destroy of AttributedString._AttributeValue(&v303);
        v214 = *(v18 - 8);
        v215 = *(v214 + 56);
        v215(v11, 0, 1, v18);
        (*(v214 + 32))(v213, v11, v18);
        result = (v215)(v213, 0, 1, v18);
LABEL_177:
        v217 = v260;
        v218 = v261;
        v220 = v256;
        v219 = v257;
        if (v260 >> 10 >= v241 >> 10)
        {
          v221 = v245;
          *v245 = v241;
          v221[1] = v240;
          *(v221 + 4) = v239;
          *(v221 + 5) = v217;
          *(v221 + 6) = v219;
          *(v221 + 7) = v220;
          *(v221 + 8) = v218;
          *(v221 + 9) = v202;
          return result;
        }

        goto LABEL_186;
      }
    }

    else
    {

      v213 = v248;
      v18 = AssociatedTypeWitness;
    }

    result = (*(*(v18 - 8) + 56))(v213, 1, 1, v18);
    goto LABEL_177;
  }

  v141 = v140;
  v326 = v140;
  v327 = v271;
  v328 = v272;
  v329 = v273;
  v330 = v274;
  v331 = v276;
  BigString.UTF8View.subscript.getter();
  *&v277 = v259;
  *(&v277 + 1) = v254;
  *&v278 = v109;
  *(&v278 + 1) = v110;
  *&v279 = v259;
  *(&v279 + 1) = v254;
  *&v280 = v109;
  *(&v280 + 1) = v110;
  specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v277, &v291);
  v111 = v254;
  outlined destroy of BigSubstring.UTF8View(&v308);
  if (v296 == 2)
  {
    goto LABEL_150;
  }

  v99 = v293;
  if (v275 <= v293 >> 10)
  {
    v18 = v294;
    v11 = v295;
    v103 = v296;
    goto LABEL_150;
  }

LABEL_199:
  __break(1u);
LABEL_200:
  __break(1u);
LABEL_201:
  (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
  result = (*(v225 + 8))(v11, v226);
  __break(1u);
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance AttributedString.Runs.AttributesSlice1<A>(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, uint64_t a2)
{
  v6 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  v8 = v7;
  *a1 = v7;
  swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSny10Foundation16AttributedStringV5IndexVGMd);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8[4] = TupleTypeMetadata2;
  v11 = *(TupleTypeMetadata2 - 8);
  v8[5] = v11;
  if (v6)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  v13 = v12;
  v8[6] = v12;
  v14 = AttributedString.Runs.AttributesSlice1.subscript.read(v8, a2, a3);
  v16 = v15;
  v8[7] = v14;
  (*(*(v9 - 8) + 16))(v13);
  memmove((v13 + *(TupleTypeMetadata2 + 48)), v16, 0x50uLL);
  return protocol witness for Collection.subscript.read in conformance AttributedString.Runs.AttributesSlice1<A>;
}

void protocol witness for Collection.subscript.read in conformance AttributedString.Runs.AttributesSlice1<A>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  (*(*(*a1 + 40) + 8))(*(*a1 + 48), *(*a1 + 32));
  v4 = *(v3 + 48);
  (*(v3 + 56))(v3, a2);
  free(v4);

  free(v3);
}

uint64_t (*AttributedString.Runs.AttributesSlice1.subscript.read(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for Optional();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSny10Foundation16AttributedStringV5IndexVGMd);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *a1 = TupleTypeMetadata2;
  v7 = *(TupleTypeMetadata2 - 8);
  a1[1] = v7;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  a1[2] = v8;
  AttributedString.Runs.AttributesSlice1.subscript.getter(v8, (v8 + *(TupleTypeMetadata2 + 48)), a2, a3);
  return AttributedString.Runs.AttributesSlice1.subscript.read;
}

uint64_t protocol witness for Collection.index(_:offsetBy:) in conformance AttributedString.Runs.AttributesSlice1<A>()
{
  swift_getWitnessTable();

  return BidirectionalCollection.index(_:offsetBy:)();
}

uint64_t protocol witness for Collection.index(_:offsetBy:limitedBy:) in conformance AttributedString.Runs.AttributesSlice1<A>()
{
  swift_getWitnessTable();

  return BidirectionalCollection.index(_:offsetBy:limitedBy:)();
}

void protocol witness for Collection.distance(from:to:) in conformance AttributedString.Runs.AttributesSlice1<A>()
{
  swift_getWitnessTable();

  JUMPOUT(0x1865CAD30);
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance AttributedString.Runs.AttributesSlice1<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance AttributedString.Runs.AttributesSlice1<A>(uint64_t a1)
{
  return protocol witness for Sequence._copyToContiguousArray() in conformance AttributedString.Runs.AttributesSlice1<A>(a1);
}

{
  swift_getWitnessTable();
  v3 = specialized Collection._copyToContiguousArray()(v1, a1);
  (*(*(a1 - 8) + 8))(v1, a1);
  return v3;
}

void AttributedString.Runs.AttributesSlice2.index(after:)(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v227 - v10;
  *(&v264 + 1) = *&v3[*(a2 + 52)];
  v258 = *(*(&v264 + 1) + 16);
  if (!v258)
  {
    goto LABEL_177;
  }

  v243 = a3;
  v12 = *a1;
  v13 = a1[1];
  v14 = a1[2];
  v15 = a1[3];
  v255 = *&v3[*(a2 + 56)];
  v16 = v3;
  v17 = *v3;
  v253 = v12;
  v247 = v15;
  v248 = v13;
  v251 = v14;
  AttributedString.Guts.findRun(at:)(v12, v15, &v290);
  v254 = v291;
  v252 = v292;
  v18 = v293;
  v249 = v290;
  v250 = v294;
  v238 = v296;
  v239 = v295;
  v236 = v297;
  v237 = *(&v296 + 1);
  v19 = *(type metadata accessor for AttributedString.Runs() + 24);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v272 = v16;
  v269 = v20;
  v270 = v19;
  RangeSet.ranges.getter();
  v21 = RangeSet.Ranges.count.getter();
  v22 = *(v9 + 8);
  v267 = v11;
  v268 = v9 + 8;
  v271 = v22;
  (v22)(v11, v8);
  if (v21 < 1)
  {
LABEL_170:
    __break(1u);
    goto LABEL_171;
  }

  v23 = 0;
  v24 = v253 >> 10;
  while (1)
  {
    if (__OFADD__(v23, v21))
    {
      __break(1u);
LABEL_173:
      __break(1u);
      goto LABEL_174;
    }

    v4 = (v23 + v21) / 2;
    v25 = v267;
    RangeSet.ranges.getter();
    RangeSet.Ranges.subscript.getter();
    (v271)(v25, v8);
    if (v24 >= v290 >> 10)
    {
      break;
    }

LABEL_4:
    v21 = v4;
    if (v23 >= v4)
    {
      goto LABEL_170;
    }
  }

  v26 = v294;
  if (v24 >= v294 >> 10)
  {
    v23 = v4 + 1;
    v4 = v21;
    goto LABEL_4;
  }

  v246 = v294 >> 10;
  v244 = v295;
  v245 = v296;
  v27 = v255;
  v28 = *(v255 + 16);
  v257 = v17;
  v240 = v294;
  v241 = v24;
  v231 = v8;
  if (v28 == 1 && (specialized Set.contains(_:)(0, 1, v255) & 1) == 0)
  {
    v31 = v17[3];
    v32 = v17[4];
    v33 = v17[6];
    *(&v264 + 1) = v17[5];
    v265 = v32;
    v34 = v17[8];
    v263 = v17[7];
    *&v264 = v33;
    v262 = v34;
    *&v303 = v253;
    v35 = v247;
    *(&v303 + 1) = v248;
    v36 = v251;
    *&v304 = v251;
    *(&v304 + 1) = v247;
    *&v305 = v26;
    v38 = v244;
    v37 = v245;
    *(&v305 + 1) = v244;
    v306 = v245;
    v39 = *(&v245 + 1);
    v266 = v31;
    swift_unknownObjectRetain();
    v40 = specialized Set.contains(_:)(0, 0, v27);
    v41 = v38;
    v42 = v37;
    v43 = v35;
    v44 = v36;
    v45 = v248;
    if (v40)
    {
      *&v323 = v266;
      *(&v323 + 1) = v265;
      *&v324 = *(&v264 + 1);
      *(&v324 + 1) = v264;
      *&v325 = v263;
      *(&v325 + 1) = v262;
      BigString.UTF8View.subscript.getter();
      v278 = v253;
      v279 = v45;
      v280 = v44;
      v281 = v43;
      v282 = v253;
      v283 = v45;
      v284 = v44;
      v285 = v43;
      specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v278, &v290);
      outlined destroy of BigSubstring.UTF8View(&v308);
      v26 = v240;
      v41 = v244;
      v39 = *(&v245 + 1);
      v42 = v245;
      if (*(&v296 + 1) != 2)
      {
        v26 = v294;
        if (v24 > v294 >> 10)
        {
          goto LABEL_189;
        }

        v41 = v295;
        v39 = *(&v296 + 1);
        v42 = v296;
        v43 = v247;
        v45 = v248;
        v44 = v251;
      }
    }

    *&v273 = v253;
    *(&v273 + 1) = v45;
    *&v274 = v44;
    *(&v274 + 1) = v43;
    *&v275 = v26;
    *(&v275 + 1) = v41;
    v261 = v41;
    *&v276 = v42;
    *(&v276 + 1) = v39;
    v46 = v255;
    if (specialized Collection<>._containsScalarConstraint.getter(v255))
    {
      v47 = v46 + 56;
      v48 = 1 << *(v46 + 32);
      v49 = -1;
      if (v48 < 64)
      {
        v49 = ~(-1 << v48);
      }

      v50 = v49 & *(v46 + 56);
      v51 = (v48 + 63) >> 6;

      v52 = 0;
      v53 = MEMORY[0x1E69E7CC0];
      while (v50)
      {
LABEL_28:
        v55 = __clz(__rbit64(v50));
        v50 &= v50 - 1;
        v56 = (*(v255 + 48) + ((v52 << 10) | (16 * v55)));
        v57 = v56[1];
        if (v57 >= 2)
        {
          v58 = specialized Collection.first.getter(*v56, v57);
          if ((v58 & 0x100000000) == 0)
          {
            v260 = v58;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v53 + 2) + 1, 1, v53);
            }

            v60 = *(v53 + 2);
            v59 = *(v53 + 3);
            v61 = v60 + 1;
            v62 = v260;
            if (v60 >= v59 >> 1)
            {
              v259 = v60 + 1;
              v63 = v53;
              v64 = v60;
              v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1, v63);
              v61 = v259;
              v62 = v260;
              v60 = v64;
              v53 = v65;
            }

            *(v53 + 2) = v61;
            *&v53[4 * v60 + 32] = v62;
          }
        }
      }

      while (1)
      {
        v54 = v52 + 1;
        if (__OFADD__(v52, 1))
        {
          goto LABEL_175;
        }

        if (v54 >= v51)
        {

          v318 = v266;
          v319 = v265;
          *&v320 = *(&v264 + 1);
          *(&v320 + 1) = v264;
          v321 = v263;
          v322 = v262;
          BigString.UnicodeScalarView.subscript.getter();
          v189 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v53);
          v265 = v190;
          v192 = v191;
          v194 = v193;

          swift_unknownObjectRelease();
          outlined destroy of BigSubstring.UnicodeScalarView(&v290);
          if (v194 == 2)
          {
            goto LABEL_140;
          }

          if (v241 <= v189 >> 10)
          {
            v26 = v189;
            v261 = v265;
            v42 = v192;
            v39 = v194;
            goto LABEL_140;
          }

          goto LABEL_190;
        }

        v50 = *(v47 + 8 * v54);
        ++v52;
        if (v50)
        {
          v52 = v54;
          goto LABEL_28;
        }
      }
    }

    swift_unknownObjectRelease();
LABEL_140:
    if (v246 == v26 >> 10)
    {
      v151 = v267;
      RangeSet.ranges.getter();
      v184 = v231;
      v195 = RangeSet.Ranges.count.getter();
      (v271)(v151, v184);
      v186 = v195 - 1;
      v39 = v243;
      if (__OFSUB__(v195, 1))
      {
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        __break(1u);
LABEL_189:
        __break(1u);
LABEL_190:
        __break(1u);
        goto LABEL_191;
      }

LABEL_142:
      v196 = v257;
      if (v4 == v186)
      {
        v197 = v257[2];
        v199 = v244;
        v198 = v245;
        *v39 = v240;
        v39[1] = v199;
        *(v39 + 1) = __PAIR128__(*(&v245 + 1), v198);
      }

      else
      {
        RangeSet.ranges.getter();
        RangeSet.Ranges.subscript.getter();
        (v271)(v151, v184);
        v197 = v196[2];
        v200 = v287;
        *v39 = v286;
        *(v39 + 1) = v200;
      }

      v39[4] = v197;
      return;
    }

    v187 = v257[2];
    v188 = v243;
    v201 = v261;
    *v243 = v26;
    v188[1] = v201;
    v188[2] = v42;
LABEL_147:
    v188[3] = v39;
    v188[4] = v187;
    return;
  }

  v29 = *(v272 + 15);
  if (v18 != v29)
  {
LABEL_37:
    if (v18 >= v29)
    {
LABEL_184:
      __break(1u);
      goto LABEL_185;
    }

    v232 = *(v272 + 15);
    v66 = v17[9];
    v67 = v17[10];
    v68 = v17[11];
    v69 = v17[12];
    v266 = v18;
    swift_unknownObjectRetain();
    v70 = v249;
    v71 = v254;
    v72 = v252;
    specialized Rope.subscript.getter(v249, v254, v252, v66, v67, v68, v69);
    v256 = v73;
    v229 = v74;
    swift_unknownObjectRelease();
    v75 = v70;
    v76 = v17[9];
    v77 = v266 + 1;
    v18 = v72;
    v230 = *(&v264 + 1) + 40;
    v79 = v17[11];
    v78 = v17[12];
    v290 = v75;
    v291 = v71;
    v292 = v72;
LABEL_39:
    if (v75 != v78)
    {
      goto LABEL_178;
    }

    v235 = v77;
    v242 = v78;
    v266 = v79;
    if (v18)
    {
      v80 = *(v18 + 24 * ((v254 >> ((4 * *(v18 + 18) + 8) & 0x3C)) & 0xF) + 24);
      swift_unknownObjectRetain();
    }

    else
    {
      swift_unknownObjectRetain();
      v80 = specialized Rope._Node.subscript.getter(v254, v76);
    }

    if (__OFADD__(v250, v80))
    {
      goto LABEL_179;
    }

    if (v76)
    {
      v81 = ((-15 << ((4 * *(v76 + 18) + 8) & 0x3C)) - 1) & *(v76 + 18) | (*(v76 + 16) << ((4 * *(v76 + 18) + 8) & 0x3C));
    }

    else
    {
      v81 = 0;
    }

    if (v254 >= v81)
    {
      goto LABEL_180;
    }

    v228 = v250 + v80;
    if (v18 && (v82 = (4 * *(v18 + 18) + 8) & 0x3C, v83 = ((v254 >> v82) & 0xF) + 1, v83 < *(v18 + 16)))
    {
      v234 = (v83 << v82) | ((-15 << v82) - 1) & v254;
      swift_unknownObjectRelease();
    }

    else
    {
      if ((specialized Rope._Node.formSuccessor(of:)(&v290, v76) & 1) == 0)
      {
        v84 = v256;
        if (v76)
        {
          v87 = *(v76 + 18);
          v88 = *(v76 + 16);
          swift_unknownObjectRelease();
          v85 = 0;
          v234 = ((-15 << ((4 * v87 + 8) & 0x3C)) - 1) & v87 | (v88 << ((4 * v87 + 8) & 0x3C));
        }

        else
        {
          v234 = 0;
          v85 = 0;
        }

        v86 = v242;
LABEL_58:
        if (v232 >= v235)
        {
          if (v235 == v232)
          {
            v89 = *(v272 + 22);
            if (*(v272 + 26) == 2)
            {
              if (v89 == 2)
              {
                goto LABEL_171;
              }
            }

            else if (v89 != 2 && (*(v272 + 19) ^ *(v272 + 23)) < 1024)
            {
              goto LABEL_171;
            }
          }

          if (v86 != v17[12])
          {
LABEL_181:
            __break(1u);
LABEL_182:
            __break(1u);
            goto LABEL_183;
          }

          v249 = v86;
          v252 = v18;
          v227 = v85;
          if (v85)
          {
            v90 = v85 + 24 * ((v234 >> ((4 * *(v85 + 18) + 8) & 0x3C)) & 0xF);
            v92 = *(v90 + 32);
            v91 = *(v90 + 40);

            v233 = v91;
          }

          else
          {
            v93 = v17[9];
            swift_unknownObjectRetain();
            specialized Rope._Node.subscript.getter(v234, v93);
            v92 = v94;
            v233 = v95;
            swift_unknownObjectRelease();
          }

          v96 = 0;
          v97 = v230;
          v259 = v92;
          while (1)
          {
            if (v96 >= *(*(&v264 + 1) + 16))
            {
              goto LABEL_173;
            }

            v265 = v97;
            v266 = v96;
            v99 = *(v97 - 1);
            v98 = *v97;
            if (*(v84 + 16))
            {

              v100 = specialized __RawDictionaryStorage.find<A>(_:)(v99, v98);
              if (v101)
              {
                outlined init with copy of AttributedString._AttributeValue(*(v84 + 56) + 72 * v100, &v308);
                if (!*(v92 + 16))
                {
                  goto LABEL_82;
                }
              }

              else
              {
                v312 = 0;
                v310 = 0u;
                v311 = 0u;
                v308 = 0u;
                v309 = 0u;
                if (!*(v92 + 16))
                {
LABEL_82:

LABEL_83:
                  v307 = 0;
                  v305 = 0u;
                  v306 = 0u;
                  v303 = 0u;
                  v304 = 0u;
                  goto LABEL_84;
                }
              }
            }

            else
            {
              v312 = 0;
              v310 = 0u;
              v311 = 0u;
              v308 = 0u;
              v309 = 0u;

              if (!*(v92 + 16))
              {
                goto LABEL_82;
              }
            }

            v102 = specialized __RawDictionaryStorage.find<A>(_:)(v99, v98);
            v104 = v103;

            if ((v104 & 1) == 0)
            {
              goto LABEL_83;
            }

            outlined init with copy of AttributedString._AttributeValue(*(v92 + 56) + 72 * v102, &v303);
LABEL_84:
            outlined init with copy of AttributedString._AttributeValue?(&v308, &v290);
            outlined init with copy of AttributedString._AttributeValue?(&v303, &v298);
            if (v293)
            {
              outlined init with copy of AttributedString._AttributeValue?(&v290, &v278);
              if (!*(&v299 + 1))
              {
                outlined destroy of TermOfAddress?(&v303, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                outlined destroy of TermOfAddress?(&v308, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                outlined destroy of AttributedString._AttributeValue(&v278);
LABEL_94:
                outlined destroy of TermOfAddress?(&v290, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMd);
LABEL_96:

                goto LABEL_97;
              }

              v275 = v300;
              v276 = v301;
              v277 = v302;
              v273 = v298;
              v274 = v299;
              v105 = v281;
              v261 = v282;
              v260 = __swift_project_boxed_opaque_existential_1(&v278, v281);
              v106 = __swift_project_boxed_opaque_existential_1(&v273, *(&v274 + 1));
              *&v264 = &v227;
              v107 = *(v105 - 8);
              MEMORY[0x1EEE9AC00](v106);
              v109 = &v227 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
              v263 = &v227;
              v111 = MEMORY[0x1EEE9AC00](v110);
              (*(v113 + 16))(&v227 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0), v111);
              v114 = type metadata accessor for Optional();
              v262 = &v227;
              v115 = *(v114 - 8);
              MEMORY[0x1EEE9AC00](v114);
              v117 = &v227 - v116;
              v118 = swift_dynamicCast();
              v119 = *(v107 + 56);
              if (!v118)
              {
                v119(v117, 1, 1, v105);
                outlined destroy of TermOfAddress?(&v303, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                outlined destroy of TermOfAddress?(&v308, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                (*(v115 + 8))(v117, v114);
                outlined destroy of AttributedString._AttributeValue(&v273);
                outlined destroy of AttributedString._AttributeValue(&v278);
                outlined destroy of TermOfAddress?(&v290, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                v17 = v257;
                goto LABEL_96;
              }

              v119(v117, 0, 1, v105);
              (*(v107 + 32))(v109, v117, v105);
              v120 = dispatch thunk of static Equatable.== infix(_:_:)();
              (*(v107 + 8))(v109, v105);
              outlined destroy of TermOfAddress?(&v303, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
              outlined destroy of TermOfAddress?(&v308, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
              outlined destroy of AttributedString._AttributeValue(&v273);
              outlined destroy of AttributedString._AttributeValue(&v278);
              outlined destroy of TermOfAddress?(&v290, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
              v84 = v256;
              v17 = v257;
              if ((v120 & 1) == 0)
              {
                goto LABEL_96;
              }
            }

            else
            {
              outlined destroy of TermOfAddress?(&v303, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
              outlined destroy of TermOfAddress?(&v308, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
              if (*(&v299 + 1))
              {
                goto LABEL_94;
              }

              outlined destroy of TermOfAddress?(&v290, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
            }

            v96 = v266 + 1;
            v97 = v265 + 2;
            v92 = v259;
            if (v258 == v266 + 1)
            {

              v76 = v17[9];
              v79 = v17[11];
              v78 = v17[12];
              v250 = v228;
              v75 = v249;
              v290 = v249;
              v291 = v234;
              v18 = v227;
              v254 = v234;
              v292 = v227;
              v77 = v235 + 1;
              if (!__OFADD__(v235, 1))
              {
                goto LABEL_39;
              }

              __break(1u);
              goto LABEL_92;
            }
          }
        }

LABEL_171:

        goto LABEL_98;
      }

      swift_unknownObjectRelease();
      v234 = v291;
    }

    v84 = v256;
    v85 = v292;
    v86 = v290;
    goto LABEL_58;
  }

  v30 = *(v272 + 22);
  if (*(v272 + 26) != 2)
  {
    if (v30 == 2 || (*(v272 + 19) ^ *(v272 + 23)) >= 1024)
    {
      goto LABEL_92;
    }

    goto LABEL_37;
  }

  if (v30 == 2)
  {
    goto LABEL_37;
  }

LABEL_92:
  v242 = v249;
LABEL_97:
  v18 = v252;
LABEL_98:
  v121 = v17[9];
  v122 = v17[10];
  v123 = v17[11];
  v124 = v17[12];
  swift_unknownObjectRetain();
  v125 = specialized Rope.subscript.getter(v242, v254, v18, v121, v122, v123, v124);
  swift_unknownObjectRelease();

  if (__OFADD__(v250, v125))
  {
    goto LABEL_182;
  }

  v126 = *(v17 + 5);
  v323 = *(v17 + 3);
  v324 = v126;
  v325 = *(v17 + 7);
  if (__OFSUB__(v250 + v125, v239 >> 11))
  {
LABEL_183:
    __break(1u);
    goto LABEL_184;
  }

  swift_unknownObjectRetain();
  v127 = BigString.UTF8View.index(_:offsetBy:)();
  v129 = v128;
  v131 = v130;
  v133 = v132;
  swift_unknownObjectRelease();
  v134 = v127 >> 10;
  v135 = v17[3];
  v137 = v17[5];
  v136 = v17[6];
  v263 = v17[4];
  *&v264 = v137;
  *(&v264 + 1) = v136;
  v138 = v17[8];
  v265 = v17[7];
  v266 = v138;
  if (v127 >> 10 >= v246)
  {
    v147 = v253;
    *&v303 = v253;
    v149 = v247;
    v148 = v248;
    *(&v303 + 1) = v248;
    v150 = v251;
    *&v304 = v251;
    *(&v304 + 1) = v247;
    v151 = v240;
    *&v305 = v240;
    v152 = v244;
    v153 = v245;
    *(&v305 + 1) = v244;
    v306 = v245;
    v39 = *(&v245 + 1);
    v262 = v135;
    swift_unknownObjectRetain();
    v154 = specialized Set.contains(_:)(0, 0, v255);
    v155 = v152;
    v156 = v241;
    if (v154)
    {
      v318 = v262;
      v319 = v263;
      v320 = v264;
      v321 = v265;
      v322 = v266;
      BigString.UTF8View.subscript.getter();
      v278 = v147;
      v279 = v148;
      v280 = v251;
      v281 = v149;
      v282 = v147;
      v283 = v148;
      v284 = v251;
      v285 = v149;
      specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v278, &v290);
      v150 = v251;
      outlined destroy of BigSubstring.UTF8View(&v308);
      v151 = v240;
      v155 = v244;
      v39 = *(&v245 + 1);
      v153 = v245;
      if (*(&v296 + 1) != 2)
      {
        v151 = v294;
        if (v156 > v294 >> 10)
        {
          goto LABEL_187;
        }

        v155 = v295;
        v39 = *(&v296 + 1);
        v153 = v296;
        v148 = v248;
        v147 = v253;
      }
    }

    *&v273 = v147;
    *(&v273 + 1) = v148;
    *&v274 = v150;
    *(&v274 + 1) = v149;
    *&v275 = v151;
    *(&v275 + 1) = v155;
    v261 = v155;
    *&v276 = v153;
    *(&v276 + 1) = v39;
    v157 = v255;
    if (specialized Collection<>._containsScalarConstraint.getter(v255))
    {
      v158 = v157 + 56;
      v159 = 1 << *(v157 + 32);
      v160 = -1;
      if (v159 < 64)
      {
        v160 = ~(-1 << v159);
      }

      v161 = v160 & *(v157 + 56);
      v162 = (v159 + 63) >> 6;

      v163 = 0;
      v164 = MEMORY[0x1E69E7CC0];
      while (v161)
      {
LABEL_120:
        v166 = __clz(__rbit64(v161));
        v161 &= v161 - 1;
        v167 = (*(v255 + 48) + ((v163 << 10) | (16 * v166)));
        v168 = v167[1];
        if (v168 >= 2)
        {
          v169 = specialized Collection.first.getter(*v167, v168);
          if ((v169 & 0x100000000) == 0)
          {
            v260 = v169;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v164 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v164 + 2) + 1, 1, v164);
            }

            v171 = *(v164 + 2);
            v170 = *(v164 + 3);
            v172 = v171 + 1;
            v173 = v260;
            if (v171 >= v170 >> 1)
            {
              v259 = v171 + 1;
              v174 = v164;
              v175 = v171;
              v176 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v170 > 1), v171 + 1, 1, v174);
              v172 = v259;
              v173 = v260;
              v171 = v175;
              v164 = v176;
            }

            *(v164 + 2) = v172;
            *&v164[4 * v171 + 32] = v173;
          }
        }
      }

      while (1)
      {
        v165 = v163 + 1;
        if (__OFADD__(v163, 1))
        {
          break;
        }

        if (v165 >= v162)
        {

          v313 = v262;
          v314 = v263;
          v315 = v264;
          v316 = v265;
          v317 = v266;
          BigString.UnicodeScalarView.subscript.getter();
          v178 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v164);
          v266 = v179;
          v181 = v180;
          v183 = v182;

          swift_unknownObjectRelease();
          outlined destroy of BigSubstring.UnicodeScalarView(&v290);
          v177 = v261;
          if (v183 == 2)
          {
            goto LABEL_131;
          }

          if (v241 <= v178 >> 10)
          {
            v151 = v178;
            v177 = v266;
            v153 = v181;
            v39 = v183;
            goto LABEL_131;
          }

          goto LABEL_188;
        }

        v161 = *(v158 + 8 * v165);
        ++v163;
        if (v161)
        {
          v163 = v165;
          goto LABEL_120;
        }
      }

LABEL_174:
      __break(1u);
LABEL_175:
      __break(1u);
LABEL_176:
      __break(1u);
LABEL_177:
      __break(1u);
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
LABEL_180:
      __break(1u);
      goto LABEL_181;
    }

    swift_unknownObjectRelease();
    v177 = v261;
LABEL_131:
    if (v246 == v151 >> 10)
    {
      v151 = v267;
      RangeSet.ranges.getter();
      v184 = v231;
      v185 = RangeSet.Ranges.count.getter();
      (v271)(v151, v184);
      v186 = v185 - 1;
      v39 = v243;
      if (!__OFSUB__(v185, 1))
      {
        goto LABEL_142;
      }

      __break(1u);
    }

    v187 = v257[2];
    v188 = v243;
    *v243 = v151;
    v188[1] = v177;
    v188[2] = v153;
    goto LABEL_147;
  }

  v139 = v241;
  v140 = v255;
  v141 = v251;
  v142 = v248;
  if (v134 < v241)
  {
LABEL_185:
    __break(1u);
    goto LABEL_186;
  }

  *&v303 = v253;
  *(&v303 + 1) = v248;
  *&v304 = v251;
  *(&v304 + 1) = v247;
  *&v305 = v127;
  v143 = v129;
  *(&v305 + 1) = v129;
  *&v306 = v131;
  *(&v306 + 1) = v133;
  if (v241 == v134)
  {
    goto LABEL_169;
  }

  v144 = v135;
  swift_unknownObjectRetain();
  v145 = specialized Set.contains(_:)(0, 0, v140);
  v262 = v144;
  if ((v145 & 1) == 0)
  {
    v146 = v143;
LABEL_149:
    *&v273 = v253;
    *(&v273 + 1) = v142;
    *&v274 = v141;
    *(&v274 + 1) = v247;
    *&v275 = v127;
    *(&v275 + 1) = v146;
    v143 = v146;
    *&v276 = v131;
    *(&v276 + 1) = v133;
    if (specialized Collection<>._containsScalarConstraint.getter(v140))
    {
      v202 = v140 + 56;
      v203 = 1 << *(v140 + 32);
      v204 = -1;
      if (v203 < 64)
      {
        v204 = ~(-1 << v203);
      }

      v205 = v204 & *(v140 + 56);
      v206 = (v203 + 63) >> 6;

      v207 = 0;
      v272 = MEMORY[0x1E69E7CC0];
      while (v205)
      {
LABEL_158:
        v209 = __clz(__rbit64(v205));
        v205 &= v205 - 1;
        v210 = (*(v140 + 48) + ((v207 << 10) | (16 * v209)));
        v211 = v210[1];
        if (v211 >= 2)
        {
          v212 = specialized Collection.first.getter(*v210, v211);
          if ((v212 & 0x100000000) == 0)
          {
            v271 = v212;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v272 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v272 + 2) + 1, 1, v272);
            }

            v213 = v271;
            v215 = *(v272 + 2);
            v214 = *(v272 + 3);
            v216 = v215 + 1;
            if (v215 >= v214 >> 1)
            {
              v270 = v215 + 1;
              v218 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v214 > 1), v215 + 1, 1, v272);
              v216 = v270;
              v213 = v271;
              v272 = v218;
            }

            v217 = v272;
            *(v272 + 2) = v216;
            *&v217[4 * v215 + 32] = v213;
            v140 = v255;
          }
        }
      }

      while (1)
      {
        v208 = v207 + 1;
        if (__OFADD__(v207, 1))
        {
          goto LABEL_176;
        }

        if (v208 >= v206)
        {

          v318 = v262;
          v319 = v263;
          v320 = v264;
          v321 = v265;
          v322 = v266;
          BigString.UnicodeScalarView.subscript.getter();
          v219 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v272);
          v271 = v220;
          v222 = v221;
          v224 = v223;

          swift_unknownObjectRelease();
          outlined destroy of BigSubstring.UnicodeScalarView(&v290);
          if (v224 == 2)
          {
            goto LABEL_169;
          }

          if (v241 <= v219 >> 10)
          {
            v127 = v219;
            v143 = v271;
            v131 = v222;
            v133 = v224;
            goto LABEL_169;
          }

          goto LABEL_192;
        }

        v205 = *(v202 + 8 * v208);
        ++v207;
        if (v205)
        {
          v207 = v208;
          goto LABEL_158;
        }
      }
    }

    swift_unknownObjectRelease();
LABEL_169:
    v225 = v257[2];
    v226 = v243;
    *v243 = v127;
    v226[1] = v143;
    v226[2] = v131;
    v226[3] = v133;
    v226[4] = v225;
    return;
  }

  *&v286 = v144;
  *(&v286 + 1) = v263;
  v287 = v264;
  v288 = v265;
  v289 = v266;
  BigString.UTF8View.subscript.getter();
  v278 = v253;
  v279 = v142;
  v280 = v251;
  v281 = v247;
  v282 = v253;
  v283 = v142;
  v284 = v251;
  v285 = v247;
  specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v278, &v290);
  v141 = v251;
  outlined destroy of BigSubstring.UTF8View(&v308);
  v146 = v143;
  if (*(&v296 + 1) == 2)
  {
    goto LABEL_149;
  }

  v127 = v294;
  if (v139 <= v294 >> 10)
  {
    v146 = v295;
    v133 = *(&v296 + 1);
    v131 = v296;
    goto LABEL_149;
  }

LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
}
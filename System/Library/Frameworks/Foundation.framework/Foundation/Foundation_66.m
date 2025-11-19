uint64_t specialized AttributedString.UnicodeScalarView._replaceSubrange<A>(_:with:)(uint64_t a1, int a2)
{
  v5 = v2;
  v610 = a1;
  v746 = *MEMORY[0x1E69E9840];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v600 = 0;
  v609 = v2;
  LODWORD(v607) = a2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v729[0] = *(v8 + 24);
    v729[1] = *(v8 + 40);
    v729[2] = *(v8 + 56);
    v9 = *(v8 + 72);
    v10 = *(v8 + 80);
    i = *(v8 + 88);
    v11 = *(v8 + 96);
    type metadata accessor for AttributedString.Guts();
    v4 = swift_allocObject();
    outlined init with copy of BigString(v729, &v629);
    swift_unknownObjectRetain();
    v12 = AttributedString.Guts.init(string:runs:)(v729, v9, v10, i, v11);

    *v5 = v12;
    v8 = v12;
  }

  v13 = *(v8 + 24);
  v14 = *(v8 + 40);
  v728 = *(v8 + 56);
  v727 = v14;
  v726 = v13;
  v15 = *(v8 + 40);
  v616 = *(v8 + 24);
  v617 = v15;
  v16 = *(v8 + 56);
  v17 = *(v8 + 64);
  v618 = v8;
  if (BigString.isEmpty.getter())
  {
    v18 = MEMORY[0x1E69E7CC8];
    goto LABEL_37;
  }

  v19 = *v610;
  if (*v610 >= 0x800uLL && (*(v610 + 32) ^ v19) <= 0x3FF)
  {
    v723[3] = v616;
    v723[4] = v617;
    v724 = v16;
    v725 = v17;
    v730[0] = v726;
    v730[1] = v727;
    v731 = v728;
    outlined init with copy of Rope<BigString._Chunk>._Node?(v730, &v629);
    v19 = BigString.UTF8View.index(before:)();
    outlined destroy of BigString(&v726);
  }

  v20 = *(v8 + 72);
  v4 = *(v8 + 80);
  i = *(v8 + 88);
  v18 = *(v8 + 96);
  swift_unknownObjectRetain();
  if (specialized Rope.find<A>(at:in:preferEnd:)(v19 >> 11, 0, v20, v4, i, v18) == v18)
  {
    v23 = v21;
    v24 = v22;
    if (v20)
    {
      specialized Rope._Node.distanceFromStart<A>(to:in:)(v18, v21, v22, v20, v4);
      swift_unknownObjectRelease();
    }

    v25 = *(v8 + 72);
    v26 = *(v8 + 80);
    v27 = *(v8 + 88);
    v28 = *(v8 + 96);
    swift_unknownObjectRetain();
    specialized Rope.subscript.getter(v18, v23, v24, v25, v26, v27, v28);
    v4 = v29;
    v20 = v30;
    swift_unknownObjectRelease();
    v31 = v4[32];
    v32 = v31 & 0x3F;
    i = ((1 << v31) + 63) >> 6;
    v18 = 8 * i;

    if (v32 <= 0xD)
    {
      goto LABEL_12;
    }

    goto LABEL_556;
  }

  while (2)
  {
    __break(1u);
LABEL_556:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      goto LABEL_569;
    }

LABEL_12:
    v612 = i;
    v614 = &v578;
    v615 = v20;
    MEMORY[0x1EEE9AC00](v33);
    v613 = &v578 - ((v18 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v613, v18);
    *&v616 = 0;
    v34 = 0;
    *&v617 = v4;
    v35 = v4 + 64;
    v36 = 1 << v4[32];
    v37 = -1;
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    v38 = v37 & *(v4 + 8);
    v39 = (v36 + 63) >> 6;
    v4 = &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMR;
    do
    {
      do
      {
        while (1)
        {
          if (v38)
          {
            v40 = __clz(__rbit64(v38));
            v38 &= v38 - 1;
          }

          else
          {
            v41 = v34;
            do
            {
              v34 = v41 + 1;
              if (__OFADD__(v41, 1))
              {
                goto LABEL_459;
              }

              if (v34 >= v39)
              {
                goto LABEL_31;
              }

              v42 = *&v35[8 * v34];
              ++v41;
            }

            while (!v42);
            v40 = __clz(__rbit64(v42));
            v38 = (v42 - 1) & v42;
          }

          v43 = v40 | (v34 << 6);
          v44 = (*(v617 + 48) + 16 * v43);
          v46 = *v44;
          v45 = v44[1];
          outlined init with copy of AttributedString._AttributeValue(*(v617 + 56) + 72 * v43, &v645);
          *&v629 = v46;
          *(&v629 + 1) = v45;
          outlined init with copy of AttributedString._AttributeValue(&v645, &v630);
          outlined init with copy of FloatingPointRoundingRule?(&v629, &v622, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);

          i = BYTE8(v626);
          outlined destroy of AttributedString._AttributeValue(&v623);
          if (i == 1)
          {
            break;
          }

          outlined destroy of TermOfAddress?(&v629, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);
          outlined destroy of AttributedString._AttributeValue(&v645);
          v8 = v618;
        }

        outlined init with copy of FloatingPointRoundingRule?(&v629, &v636, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);

        v8 = v618;
        if (!v644)
        {
          outlined destroy of TermOfAddress?(&v629, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);
          outlined destroy of AttributedString._AttributeValue(&v645);
          outlined destroy of AttributedString._AttributeValue(&v637);
          break;
        }

        i = specialized Set.contains(_:)(0, 0, v644);
        outlined destroy of TermOfAddress?(&v629, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);
        outlined destroy of AttributedString._AttributeValue(&v645);
        outlined destroy of AttributedString._AttributeValue(&v637);
      }

      while ((i & 1) != 0);
      *(v613 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
      v47 = __OFADD__(v616, 1);
      *&v616 = v616 + 1;
    }

    while (!v47);
    __break(1u);
LABEL_31:
    v48 = v616;
    if (v616)
    {
      v4 = v617;
      if (v616 == *(v617 + 16))
      {

        v18 = v4;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
        v18 = static _DictionaryStorage.allocate(capacity:)();
        v20 = 0;
        v109 = *v613;
        i = v18 + 64;
        do
        {
          if (v109)
          {
            v113 = __clz(__rbit64(v109));
            v109 &= v109 - 1;
          }

          else
          {
            v114 = v20;
            do
            {
              v20 = v114 + 1;
              if (__OFADD__(v114, 1))
              {
                goto LABEL_522;
              }

              if (v20 >= v612)
              {
                goto LABEL_36;
              }

              v115 = *(v613 + 8 * v20);
              ++v114;
            }

            while (!v115);
            v113 = __clz(__rbit64(v115));
            v109 = (v115 - 1) & v115;
          }

          v116 = v113 | (v20 << 6);
          v117 = (*(v4 + 6) + 16 * v116);
          v118 = *v117;
          v8 = v117[1];
          outlined init with copy of AttributedString._AttributeValue(*(v4 + 7) + 72 * v116, &v629);
          v624 = v631;
          v625 = v632;
          *&v626 = v633;
          v622 = v629;
          v623 = v630;
          Hasher.init(_seed:)();

          String.hash(into:)();
          v119 = Hasher._finalize()();
          v120 = -1 << *(v18 + 32);
          v121 = v119 & ~v120;
          v122 = v121 >> 6;
          if (((-1 << v121) & ~*(i + 8 * (v121 >> 6))) != 0)
          {
            v110 = __clz(__rbit64((-1 << v121) & ~*(i + 8 * (v121 >> 6)))) | v121 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v123 = 0;
            v124 = (63 - v120) >> 6;
            do
            {
              if (++v122 == v124 && (v123 & 1) != 0)
              {
                goto LABEL_528;
              }

              v125 = v122 == v124;
              if (v122 == v124)
              {
                v122 = 0;
              }

              v123 |= v125;
              v126 = *(i + 8 * v122);
            }

            while (v126 == -1);
            v110 = __clz(__rbit64(~v126)) + (v122 << 6);
          }

          *(i + ((v110 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v110;
          v111 = (*(v18 + 48) + 16 * v110);
          *v111 = v118;
          v111[1] = v8;
          v112 = *(v18 + 56) + 72 * v110;
          *(v112 + 16) = v623;
          *(v112 + 32) = v624;
          *(v112 + 48) = v625;
          *(v112 + 64) = v626;
          *v112 = v622;
          ++*(v18 + 16);
          --v48;
          v8 = v618;
        }

        while (v48);
      }
    }

    else
    {
      v18 = MEMORY[0x1E69E7CC8];
      v4 = v617;
    }

LABEL_36:

    swift_bridgeObjectRelease_n();
LABEL_37:
    v606 = v18;
    v49 = *v610;
    v663 = *(v610 + 8);
    v50 = *(v610 + 32);
    v664 = *(v610 + 24);
    v611 = v49;
    v661 = *(v610 + 40);
    v662 = *(v610 + 56);
    *&v617 = v49 >> 11;
    *&v645 = v49 >> 11;
    v719[0] = v50 >> 11;
    v614 = v50;
    v608 = (v50 >> 11);
    if (v50 < 0x800)
    {
      v613 = MEMORY[0x1E69E7CD0];
      v615 = MEMORY[0x1E69E7CC8];
      goto LABEL_65;
    }

    v51 = (v50 >> 11) - 1;
    v52 = *(v8 + 72);
    i = *(v8 + 80);
    v54 = *(v8 + 88);
    v53 = *(v8 + 96);
    swift_unknownObjectRetain();
    if (specialized Rope.find<A>(at:in:preferEnd:)(v51, 0, v52, i, v54, v53) == v53)
    {
      v57 = v55;
      v4 = v56;
      if (v52)
      {
        specialized Rope._Node.distanceFromStart<A>(to:in:)(v53, v55, v56, v52, i);
        swift_unknownObjectRelease();
      }

      v58 = *(v8 + 72);
      v59 = *(v8 + 80);
      v60 = *(v8 + 88);
      v61 = *(v8 + 96);
      swift_unknownObjectRetain();
      specialized Rope.subscript.getter(v53, v57, v4, v58, v59, v60, v61);
      v613 = v62;
      v52 = v63;
      swift_unknownObjectRelease();
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation16AttributedStringV15_AttributeValueVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

      v65 = *(v52 + 32);
      i = ((1 << v65) + 63) >> 6;
      if ((v65 & 0x3Fu) <= 0xD)
      {
        goto LABEL_43;
      }
    }

    else
    {
      __break(1u);
    }

    v573 = v52;

    if (swift_stdlib_isStackAllocationSafe())
    {

LABEL_43:
      v603 = i;
      v605 = &v578;
      MEMORY[0x1EEE9AC00](v64);
      v604 = (&v578 - ((v66 + 15) & 0x3FFFFFFFFFFFFFF0));
      bzero(v604, v66);
      v612 = 0;
      v8 = 0;
      v67 = v52 + 64;
      v68 = 1 << *(v52 + 32);
      v69 = -1;
      if (v68 < 64)
      {
        v69 = ~(-1 << v68);
      }

      v70 = v69 & *(v52 + 64);
      v4 = ((v68 + 63) >> 6);
      v34 = &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMR;
      *&v616 = v52;
      while (v70)
      {
        v71 = __clz(__rbit64(v70));
        v70 &= v70 - 1;
LABEL_54:
        v74 = v71 | (v8 << 6);
        v75 = (*(v52 + 48) + 16 * v74);
        v76 = *v75;
        v77 = v75[1];
        outlined init with copy of AttributedString._AttributeValue(*(v52 + 56) + 72 * v74, &v636);
        *&v629 = v76;
        *(&v629 + 1) = v77;
        outlined init with copy of AttributedString._AttributeValue(&v636, &v630);
        outlined init with copy of FloatingPointRoundingRule?(&v629, &v622, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);
        i = *(&v622 + 1);
        swift_bridgeObjectRetain_n();

        if (v627)
        {
          i = specialized Set.contains(_:)(0, 0, v627);
          outlined destroy of TermOfAddress?(&v629, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);
          outlined destroy of AttributedString._AttributeValue(&v623);
          outlined destroy of AttributedString._AttributeValue(&v636);

          v52 = v616;
          if (i)
          {
            *(v604 + ((v74 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v74;
            v47 = __OFADD__(v612++, 1);
            if (v47)
            {
              __break(1u);
              goto LABEL_59;
            }
          }
        }

        else
        {
          outlined destroy of TermOfAddress?(&v629, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);
          outlined destroy of AttributedString._AttributeValue(&v623);
          outlined destroy of AttributedString._AttributeValue(&v636);

          v52 = v616;
        }
      }

      v72 = v8;
      while (1)
      {
        v8 = v72 + 1;
        if (__OFADD__(v72, 1))
        {
          goto LABEL_460;
        }

        if (v8 >= v4)
        {
          break;
        }

        v73 = *(v67 + 8 * v8);
        ++v72;
        if (v73)
        {
          v71 = __clz(__rbit64(v73));
          v70 = (v73 - 1) & v73;
          goto LABEL_54;
        }
      }

LABEL_59:
      v20 = v612;
      if (v612)
      {
        if (v612 == *(v52 + 16))
        {

          v615 = v52;
        }

        else
        {
          v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
          v127 = static _DictionaryStorage.allocate(capacity:)();
          v128 = 0;
          v8 = *v604;
          v615 = v127;
          i = v127 + 64;
          do
          {
            if (v8)
            {
              v612 = v20;
              v133 = __clz(__rbit64(v8));
              v8 &= v8 - 1;
            }

            else
            {
              v134 = v128;
              v8 = v618;
              do
              {
                v128 = v134 + 1;
                if (__OFADD__(v134, 1))
                {
                  goto LABEL_523;
                }

                if (v128 >= v603)
                {
                  goto LABEL_64;
                }

                v135 = v604[v128];
                ++v134;
              }

              while (!v135);
              v612 = v20;
              v133 = __clz(__rbit64(v135));
              v8 = (v135 - 1) & v135;
            }

            v136 = v133 | (v128 << 6);
            v137 = (*(v52 + 48) + 16 * v136);
            v20 = *v137;
            v138 = v137[1];
            outlined init with copy of AttributedString._AttributeValue(*(v52 + 56) + 72 * v136, &v629);
            v624 = v631;
            v625 = v632;
            *&v626 = v633;
            v622 = v629;
            v623 = v630;
            v4 = v615;
            Hasher.init(_seed:)();

            String.hash(into:)();
            v18 = &v636;
            v139 = Hasher._finalize()();
            v140 = -1 << v4[32];
            v141 = v139 & ~v140;
            v142 = v141 >> 6;
            if (((-1 << v141) & ~*(i + 8 * (v141 >> 6))) != 0)
            {
              v129 = __clz(__rbit64((-1 << v141) & ~*(i + 8 * (v141 >> 6)))) | v141 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v143 = 0;
              v144 = (63 - v140) >> 6;
              do
              {
                if (++v142 == v144 && (v143 & 1) != 0)
                {
                  goto LABEL_529;
                }

                v145 = v142 == v144;
                if (v142 == v144)
                {
                  v142 = 0;
                }

                v143 |= v145;
                v146 = *(i + 8 * v142);
              }

              while (v146 == -1);
              v129 = __clz(__rbit64(~v146)) + (v142 << 6);
            }

            *(i + ((v129 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v129;
            v130 = v615;
            v131 = (*(v615 + 6) + 16 * v129);
            *v131 = v20;
            v131[1] = v138;
            v132 = *(v130 + 56) + 72 * v129;
            *(v132 + 16) = v623;
            *(v132 + 32) = v624;
            *(v132 + 48) = v625;
            *(v132 + 64) = v626;
            *v132 = v622;
            ++*(v130 + 16);
            v20 = v612 - 1;
          }

          while (v612 != 1);
        }
      }

      else
      {
        v615 = MEMORY[0x1E69E7CC8];
      }

      v8 = v618;
    }

    else
    {
      v384 = swift_slowAlloc();

      v576 = v600;
      _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySS10Foundation16AttributedStringV15_AttributeValueVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab24VKXEfU_SS_10Foundation16jk4V15_lM4VTG5AMxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSALIsgnndzo_Tf1nc_n(v384, i, v573, specialized thunk for @callee_guaranteed (@guaranteed String, @in_guaranteed AttributedString._AttributeValue) -> (@unowned Bool, @error @owned Error));
      v615 = v577;
      v600 = v576;
      if (v576)
      {
        goto LABEL_588;
      }

      MEMORY[0x1865D2690](v384, -1, -1);
    }

LABEL_64:

LABEL_65:
    v723[0] = *(v8 + 24);
    v723[1] = *(v8 + 40);
    v723[2] = *(v8 + 56);
    v18 = v723;
    v78 = BigString.UTF8View.count.getter();
    v20 = v617;
    if (v617 >= v78)
    {
      goto LABEL_152;
    }

    v79 = *(v8 + 72);
    i = *(v8 + 80);
    v81 = *(v8 + 88);
    v80 = *(v8 + 96);
    swift_unknownObjectRetain();
    if (specialized Rope.find<A>(at:in:preferEnd:)(v20, 0, v79, i, v81, v80) != v80)
    {
      __break(1u);
LABEL_562:
      __break(1u);
LABEL_563:
      __break(1u);
LABEL_564:
      __break(1u);
      goto LABEL_565;
    }

    v84 = v82;
    v85 = v83;
    if (v79)
    {
      specialized Rope._Node.distanceFromStart<A>(to:in:)(v80, v82, v83, v79, i);
      swift_unknownObjectRelease();
    }

    v86 = *(v8 + 72);
    v87 = *(v8 + 80);
    v88 = *(v8 + 88);
    v89 = *(v8 + 96);
    swift_unknownObjectRetain();
    specialized Rope.subscript.getter(v80, v84, v85, v86, v87, v88, v89);
    v612 = v90;
    swift_unknownObjectRelease();
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation16AttributedStringV15_AttributeValueVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

    v92 = v600;
    i = specialized Dictionary.filter(_:)(v91);
    v600 = v92;

    swift_bridgeObjectRelease_n();
    v4 = 0;
    *&v622 = MEMORY[0x1865CB700](*(i + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
    *&v616 = i;
    v93 = 1 << *(i + 32);
    v94 = -1;
    if (v93 < 64)
    {
      v94 = ~(-1 << v93);
    }

    v95 = i + 64;
    v96 = v94 & *(i + 64);
    v34 = (v93 + 63) >> 6;
    if (v96)
    {
      while (1)
      {
        v97 = v4;
LABEL_77:
        v98 = __clz(__rbit64(v96));
        v96 &= v96 - 1;
        v99 = (*(v616 + 48) + ((v97 << 10) | (16 * v98)));
        v100 = *v99;
        i = v99[1];

        specialized Set._Variant.insert(_:)(&v629, v100, i);

        if (!v96)
        {
          goto LABEL_73;
        }
      }
    }

    while (1)
    {
LABEL_73:
      v97 = (v4 + 1);
      if (__OFADD__(v4, 1))
      {
        goto LABEL_461;
      }

      if (v97 >= v34)
      {
        break;
      }

      v96 = *(v95 + 8 * v97);
      ++v4;
      if (v96)
      {
        v4 = v97;
        goto LABEL_77;
      }
    }

    *&v636 = v622;
    v102 = *(v8 + 72);
    v101 = *(v8 + 80);
    v18 = *(v8 + 88);
    v103 = *(v8 + 96);
    swift_unknownObjectRetain();

    if (v611 <= 0x7FF)
    {
      if (specialized Rope.find<A>(at:in:preferEnd:)(0, 0, v102, v101, v18, v103) == v103)
      {
        v107 = v104;
        v108 = v105;
        i = v106;
        if (v102)
        {
          v101 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v103, v104, v105, v102, v101);
          swift_unknownObjectRelease();
          v18 = -i;
          if (!__OFSUB__(0, i))
          {
            goto LABEL_127;
          }
        }

        else
        {
          v101 = 0;
          v18 = -v106;
          if (!__OFSUB__(0, v106))
          {
            goto LABEL_127;
          }
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_575:
      __break(1u);
LABEL_576:
      __break(1u);
      goto LABEL_577;
    }

    v107 = specialized Rope._endPath.getter(v102);
    if (v102)
    {
      swift_unknownObjectRelease();
      v108 = 0;
    }

    else
    {
      v108 = 0;
      v101 = 0;
      v18 = 0;
    }

LABEL_127:
    *&v629 = v103;
    *(&v629 + 1) = v107;
    *&v630 = v108;
    *(&v630 + 1) = v101;
    *&v631 = v18;
    v147 = v618[9];
    v20 = v618[10];
    v148 = v618[11];
    v8 = v618[12];
    swift_unknownObjectRetain();
    if (specialized Rope.find<A>(at:in:preferEnd:)(0, 0, v147, v20, v148, v8) != v8)
    {
      goto LABEL_463;
    }

    v152 = v151;
    while (2)
    {
      if (v147)
      {
        specialized Rope._Node.distanceFromStart<A>(to:in:)(v8, v149, v150, v147, v20);
        swift_unknownObjectRelease();
      }

      if (__OFSUB__(0, v152))
      {
        goto LABEL_515;
      }

      if (-v152 < v18 && *(v636 + 16))
      {
        v20 = v618[9];
        if (v20)
        {
          if (v18 == v618[11])
          {
LABEL_138:
            v18 = v618[10];
            i = v618[11];
            v159 = v618[12];
            swift_unknownObjectRetain();
            if (specialized Rope.find<A>(at:in:preferEnd:)(v617, 1, v20, v18, i, v159) != v159)
            {
              goto LABEL_531;
            }

            v8 = v160;
            v163 = v161;
            v4 = v162;
            if (v20)
            {
              v164 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v159, v160, v161, v20, v18);
              swift_unknownObjectRelease();
            }

            else
            {
              v164 = 0;
            }

            v153 = v617 - v4;
            if (__OFSUB__(v617, v4))
            {
              __break(1u);
              break;
            }

            goto LABEL_130;
          }
        }

        else if (!v18)
        {
          goto LABEL_138;
        }

        v34 = v618[10];
        v4 = v618[11];
        v159 = v618[12];
        v622 = v629;
        *&v623 = v630;
        v164 = *(&v630 + 1) - 1;
        if (__OFSUB__(*(&v630 + 1), 1))
        {
          goto LABEL_524;
        }

        swift_unknownObjectRetain();
        specialized Rope.formIndex(before:)(&v622, v20, v34, v4, v159);
        if (v622 != v159)
        {
          goto LABEL_525;
        }

        v8 = *(&v622 + 1);
        v163 = v623;
        if (v623)
        {
          i = *(v623 + 24 * ((*(&v622 + 1) >> ((4 * *(v623 + 18) + 8) & 0x3C)) & 0xFLL) + 24);

          swift_unknownObjectRelease();
          v153 = v18 - i;
          if (__OFSUB__(v18, i))
          {
            goto LABEL_532;
          }
        }

        else
        {
          i = specialized Rope._Node.subscript.getter(*(&v622 + 1), v20);
          v4 = v165;
          v34 = v166;
          swift_unknownObjectRelease();

          v153 = v18 - i;
          if (__OFSUB__(v18, i))
          {
            goto LABEL_538;
          }

          v163 = 0;
        }

LABEL_130:
        *&v629 = v159;
        *(&v629 + 1) = v8;
        *&v630 = v163;
        *(&v630 + 1) = v164;
        *&v631 = v153;
        v154 = v616;

        v155 = v612;

        i = v618;
        specialized AttributedString.Guts.updateRun(at:within:with:)(&v629, 0, v617, v618, &v636, v154, v155, &v645);

        v18 = v631;
        v147 = *(i + 72);
        v20 = *(i + 80);
        v156 = *(i + 88);
        v8 = *(i + 96);
        swift_unknownObjectRetain();
        v157 = specialized Rope.find<A>(at:in:preferEnd:)(0, 0, v147, v20, v156, v8);
        v152 = v158;
        if (v157 != v8)
        {
          goto LABEL_463;
        }

        continue;
      }

      break;
    }

    v8 = v618;

LABEL_152:
    if (v614 < 0x800)
    {

      goto LABEL_203;
    }

    v167 = v615;
    v168 = *(v615 + 2);

    v4 = 0;
    *&v622 = MEMORY[0x1865CB700](v168, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
    v171 = *(v167 + 64);
    v170 = v167 + 64;
    v169 = v171;
    v172 = 1 << *(v170 - 32);
    v173 = -1;
    if (v172 < 64)
    {
      v173 = ~(-1 << v172);
    }

    v174 = v173 & v169;
    v34 = (v172 + 63) >> 6;
    if ((v173 & v169) != 0)
    {
      while (1)
      {
        v175 = v4;
LABEL_162:
        v176 = __clz(__rbit64(v174));
        v174 &= v174 - 1;
        v177 = (*(v615 + 6) + ((v175 << 10) | (16 * v176)));
        v178 = *v177;
        i = v177[1];

        specialized Set._Variant.insert(_:)(&v629, v178, i);

        if (!v174)
        {
          goto LABEL_158;
        }
      }
    }

    while (1)
    {
LABEL_158:
      v175 = (v4 + 1);
      if (__OFADD__(v4, 1))
      {
        goto LABEL_462;
      }

      if (v175 >= v34)
      {
        break;
      }

      v174 = *(v170 + 8 * v175);
      ++v4;
      if (v174)
      {
        v4 = v175;
        goto LABEL_162;
      }
    }

    *&v636 = v622;
    v720 = *(v8 + 24);
    v721 = *(v8 + 40);
    v722 = *(v8 + 56);
    *&v616 = BigString.UTF8View.count.getter();
    v18 = v608;
    if (v616 < v608)
    {
      goto LABEL_562;
    }

    v20 = *(v8 + 72);
    v179 = *(v8 + 80);
    v181 = *(v8 + 88);
    v180 = *(v8 + 96);
    swift_unknownObjectRetain();

    if (specialized Rope.find<A>(at:in:preferEnd:)(v18, 0, v20, v179, v181, v180) != v180)
    {
      goto LABEL_563;
    }

    v4 = v182;
    v185 = v183;
    i = v184;
    if (v20)
    {
      v186 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v180, v182, v183, v20, v179);
      swift_unknownObjectRelease();
      v187 = v18 - i;
      if (!__OFSUB__(v18, i))
      {
        goto LABEL_168;
      }

LABEL_277:
      __break(1u);
LABEL_278:
      v605 = 0;
      goto LABEL_279;
    }

    v186 = 0;
    v187 = v18 - v184;
    if (__OFSUB__(v18, v184))
    {
      goto LABEL_277;
    }

LABEL_168:
    *&v629 = v180;
    *(&v629 + 1) = v4;
    *&v630 = v185;
    *(&v630 + 1) = v186;
LABEL_171:
    *&v631 = v187;
    v189 = *(v8 + 72);
    if (v18 == v616)
    {
      i = *(v8 + 80);
      v20 = *(v8 + 88);
      v4 = *(v8 + 96);
      swift_unknownObjectRetain();
      if (specialized Rope.find<A>(at:in:preferEnd:)(v18, 0, v189, i, v20, v4) != v4)
      {
        goto LABEL_526;
      }

      v193 = v192;
      if (v189)
      {
        specialized Rope._Node.distanceFromStart<A>(to:in:)(v4, v190, v191, v189, i);
        swift_unknownObjectRelease();
      }

      if (__OFSUB__(v18, v193))
      {
        goto LABEL_527;
      }

      if (v187 >= (v18 - v193))
      {
        goto LABEL_202;
      }
    }

    else if (v189)
    {
      if (v187 >= *(v8 + 88))
      {
        goto LABEL_202;
      }
    }

    else if (v187 >= 0)
    {
      goto LABEL_202;
    }

    if (!*(v636 + 16))
    {
      goto LABEL_202;
    }

    i = v615;

    v194 = v613;

    specialized AttributedString.Guts.updateRun(at:within:with:)(&v629, v18, v616, v8, &v636, i, v194, v719);

    v195 = *(&v629 + 1);
    v20 = v629;
    v18 = v631;
    v4 = *(v8 + 72);
    v196 = *(v8 + 80);
    v198 = *(v8 + 88);
    v197 = *(v8 + 96);
    v622 = v629;
    *&v623 = v630;
    v199 = *(&v630 + 1) + 1;
    if (__OFADD__(*(&v630 + 1), 1))
    {
      goto LABEL_516;
    }

    if (v629 != v197)
    {
LABEL_517:
      __break(1u);
LABEL_518:
      __break(1u);
LABEL_519:
      __break(1u);
LABEL_520:
      __break(1u);
LABEL_521:
      __break(1u);
LABEL_522:
      __break(1u);
LABEL_523:
      __break(1u);
LABEL_524:
      __break(1u);
LABEL_525:
      __break(1u);
LABEL_526:
      __break(1u);
LABEL_527:
      __break(1u);
LABEL_528:
      __break(1u);
LABEL_529:
      __break(1u);
LABEL_530:
      __break(1u);
LABEL_531:
      __break(1u);
LABEL_532:
      __break(1u);
LABEL_533:
      __break(1u);
LABEL_534:
      __break(1u);
LABEL_535:
      __break(1u);
LABEL_536:
      __break(1u);
LABEL_537:
      __break(1u);
LABEL_538:
      __break(1u);
LABEL_539:
      __break(1u);
LABEL_540:
      __break(1u);
LABEL_541:
      __break(1u);
LABEL_542:
      __break(1u);
LABEL_543:
      __break(1u);
LABEL_544:
      __break(1u);
LABEL_545:
      __break(1u);
LABEL_546:
      __break(1u);
LABEL_547:
      __break(1u);
LABEL_548:
      __break(1u);
LABEL_549:
      __break(1u);
LABEL_550:
      __break(1u);
LABEL_551:
      __break(1u);
LABEL_552:
      __break(1u);
LABEL_553:
      __break(1u);
LABEL_554:
      __break(1u);
      continue;
    }

    break;
  }

  if (v630)
  {
    v200 = (v630 + 24 * ((*(&v629 + 1) >> ((4 * *(v630 + 18) + 8) & 0x3C)) & 0xFLL));
    v201 = v200[3];
    i = v200[4];
    v8 = v200[5];
    swift_unknownObjectRetain();
  }

  else
  {
    swift_unknownObjectRetain();
    v201 = specialized Rope._Node.subscript.getter(v195, v4);
    i = v202;
    v8 = v203;
  }

  v47 = __OFADD__(v18, v201);
  v187 = v18 + v201;
  if (v47)
  {
    goto LABEL_518;
  }

  specialized Rope.formIndex(after:)(&v622, v4, v196, v198, v20);
  swift_unknownObjectRelease();
  if (v187 < v616)
  {
    v188 = *(&v622 + 1);
    v20 = v622;
    v4 = v623;
    v8 = v618;
    v18 = v608;
    goto LABEL_170;
  }

  v8 = v618;
  v204 = v618[9];
  v18 = v608;
  if (v608 != v616)
  {
    v20 = v618[12];
    if (v204)
    {
      v4 = 0;
      v199 = v618[10];
      v187 = v618[11];
      v188 = ((-15 << ((4 * *(v204 + 18) + 8) & 0x3C)) - 1) & *(v204 + 18) | (*(v204 + 16) << ((4 * *(v204 + 18) + 8) & 0x3C));
    }

    else
    {
      v188 = 0;
      v4 = 0;
      v199 = 0;
      v187 = 0;
    }

    goto LABEL_170;
  }

  v205 = v618[10];
  i = v618[11];
  v20 = v618[12];
  swift_unknownObjectRetain();
  if (specialized Rope.find<A>(at:in:preferEnd:)(v18, 0, v204, v205, i, v20) != v20)
  {
    goto LABEL_537;
  }

  v188 = v206;
  v4 = v207;
  v209 = v208;
  if (v204)
  {
    v199 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v20, v206, v207, v204, v205);
    swift_unknownObjectRelease();
    v47 = __OFSUB__(v18, v209);
    v187 = v18 - v209;
    if (v47)
    {
      goto LABEL_201;
    }

    goto LABEL_170;
  }

  v199 = 0;
  v187 = v18 - v208;
  if (!__OFSUB__(v18, v208))
  {
LABEL_170:
    *&v629 = v20;
    *(&v629 + 1) = v188;
    *&v630 = v4;
    *(&v630 + 1) = v199;
    goto LABEL_171;
  }

LABEL_201:
  __break(1u);
LABEL_202:

LABEL_203:

  if (v719[0] < v645)
  {
    goto LABEL_539;
  }

  v605 = v719[0];
  v595 = v645;
  v210 = *(v8 + 104);
  v211 = specialized Array.count.getter(v210);
  if (v211 < 0)
  {
    goto LABEL_540;
  }

  v18 = v211;
  if (v211)
  {
    i = 0;
    v20 = v611 >> 10;
    v4 = (v614 >> 10);
    v34 = 88;
    v615 = v211;
    *&v616 = v614 >> 10;
    while (1)
    {
      if (i >= *(v210 + 2))
      {
        goto LABEL_456;
      }

      v214 = *&v210[v34 - 56];
      v215 = v20 >= v214 >> 10 || v214 >> 10 >= v4;
      v216 = !v215;
      v217 = *&v210[v34 - 24];
      v218 = v217 >> 10;
      if (v20 >= v217 >> 10)
      {
        break;
      }

      if (v216)
      {
        if (v218 < v4)
        {
          v629 = v663;
          *&v630 = v664;
          v622 = v663;
          *&v623 = v664;
          v219 = swift_isUniquelyReferenced_nonNull_native();
          *(v8 + 104) = v210;
          if ((v219 & 1) == 0)
          {
            v210 = specialized _ArrayBuffer._consumeAndCreateNew()(v210);
          }

          if (i >= *(v210 + 2))
          {
            goto LABEL_535;
          }

          v220 = &v210[v34];
          v221 = v611;
          *(v220 - 7) = v611;
          v222 = v630;
          *(v220 - 3) = v629;
          *(v220 - 4) = v222;
          *(v220 - 3) = v221;
          v223 = v622;
          *v220 = v623;
          *(v220 - 1) = v223;
          *(v8 + 104) = v210;
          goto LABEL_208;
        }

        goto LABEL_224;
      }

      if (v218 < v4)
      {
        v18 = *&v210[v34 - 48];
        v228 = *&v210[v34 - 40];
        v229 = v8;
        v8 = *&v210[v34 - 32];
        v629 = v663;
        *&v630 = v664;
        v230 = swift_isUniquelyReferenced_nonNull_native();
        *(v229 + 104) = v210;
        if ((v230 & 1) == 0)
        {
          v210 = specialized _ArrayBuffer._consumeAndCreateNew()(v210);
        }

        v4 = v616;
        if (i >= *(v210 + 2))
        {
          goto LABEL_536;
        }

        v212 = &v210[v34];
        *(v212 - 7) = v214;
        *(v212 - 6) = v18;
        *(v212 - 5) = v228;
        *(v212 - 4) = v8;
        *(v212 - 3) = v611;
        v213 = v629;
        *v212 = v630;
        *(v212 - 1) = v213;
        v8 = v618;
        v618[13] = v210;
        v18 = v615;
      }

LABEL_208:
      ++i;
      v34 += 64;
      if (v18 == i)
      {
        goto LABEL_233;
      }
    }

    if (!v216)
    {
      goto LABEL_208;
    }

LABEL_224:
    v224 = *&v210[v34 - 16];
    v4 = *&v210[v34 - 8];
    v18 = *&v210[v34];
    v629 = v661;
    *&v630 = v662;
    v225 = swift_isUniquelyReferenced_nonNull_native();
    *(v8 + 104) = v210;
    if ((v225 & 1) == 0)
    {
      v210 = specialized _ArrayBuffer._consumeAndCreateNew()(v210);
    }

    if (i >= *(v210 + 2))
    {
      goto LABEL_519;
    }

    v226 = &v210[v34];
    *(v226 - 7) = v614;
    v227 = v630;
    *(v226 - 3) = v629;
    *(v226 - 4) = v227;
    *(v226 - 3) = v217;
    *(v226 - 2) = v224;
    *(v226 - 1) = v4;
    *v226 = v18;
    v8 = v618;
    v618[13] = v210;
    v18 = v615;
    v4 = v616;
    goto LABEL_208;
  }

LABEL_233:
  v231 = *(v8 + 24);
  v615 = *(v8 + 32);
  v232 = *(v8 + 40);
  v34 = *(v8 + 48);
  v233 = *(v8 + 56);
  v234 = *(v8 + 64);
  v719[0] = v231;
  v719[1] = v615;
  v719[2] = v232;
  v719[3] = v34;
  v719[4] = v233;
  v719[5] = v234;
  *&v616 = BigString.UTF8View.count.getter();
  v235 = v609;
  v236 = *(v609 + 24);
  v632 = *(v609 + 8);
  v633 = v236;
  v237 = *(v609 + 56);
  v634 = *(v609 + 40);
  v635 = v237;
  *&v629 = v231;
  *(&v629 + 1) = v615;
  *&v630 = v232;
  *(&v630 + 1) = v34;
  *&v631 = v233;
  *(&v631 + 1) = v234;
  swift_unknownObjectRetain();
  BigString.init()();
  v238 = v651;
  *(v8 + 24) = v650;
  *(v8 + 40) = v238;
  *(v8 + 56) = v652;
  swift_unknownObjectRelease();
  LODWORD(v622) = v607;
  i = "|X)";
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15CollectionOfOneVys7UnicodeO6ScalarVGMd);
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type CollectionOfOne<Unicode.Scalar> and conformance CollectionOfOne<A>, &_ss15CollectionOfOneVys7UnicodeO6ScalarVGMd);
  BigSubstring.UnicodeScalarView.replaceSubrange<A>(_:with:)();
  *(v8 + 24) = v629;
  *(v8 + 40) = v630;
  *(v8 + 56) = v631;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v239 = v633;
  *(v235 + 8) = v632;
  *(v235 + 24) = v239;
  v240 = v635;
  *(v235 + 40) = v634;
  *(v235 + 56) = v240;
  v20 = v616;
  v718[0] = *(v8 + 24);
  v718[1] = *(v8 + 40);
  v718[2] = *(v8 + 56);
  v18 = v718;
  v241 = BigString.UTF8View.count.getter();
  v242 = v241 - v20;
  if (__OFSUB__(v241, v20))
  {
    goto LABEL_541;
  }

  if (__OFADD__(&v608[-v617], v242))
  {
    goto LABEL_542;
  }

  i = MEMORY[0x1E69E7CD0];
  v8 = v618;
  specialized AttributedString._InternalRuns.replaceUTF8Subrange<A>(_:with:)(v617, v608, &v608[v242 - v617], v606, MEMORY[0x1E69E7CD0]);

  v717[0] = *(v8 + 24);
  v717[1] = *(v8 + 40);
  v717[2] = *(v8 + 56);
  v18 = v717;
  v243 = BigString.UTF8View.count.getter();
  v244 = v243 - v20;
  if (__OFSUB__(v243, v20))
  {
    goto LABEL_543;
  }

  v18 = *(v8 + 104);
  v245 = specialized Array.count.getter(v18);
  if (v245 < 0)
  {
    goto LABEL_544;
  }

  if (v245)
  {
    v246 = 0;
    i = 88;
    v247 = v617;
    v609 = v244;
    v607 = v245;
    do
    {
      if (v246 >= *(v18 + 16))
      {
        goto LABEL_457;
      }

      v613 = i;
      v614 = v246;
      v248 = *(v18 + i - 56);
      v4 = *(v18 + i - 48);
      v20 = *(v18 + i - 24);
      v611 = *(v18 + i - 16);
      v249 = *(v18 + i);
      v610 = *(v18 + i - 8);
      v615 = v249;
      v250 = (v248 >> 11);
      if (v247 >= v248 >> 11)
      {
        if (v608 != v247 || (v250 == v247 ? (v251 = v244 == 0) : (v251 = 1), v251))
        {
LABEL_250:
          v708 = *(v618 + 3);
          v709 = *(v618 + 5);
          v710 = *(v618 + 7);
          i = v708;
          swift_unknownObjectRetain();
          v254 = BigString.UTF8View.index(_:offsetBy:)();
          v4 = v258;
          v8 = v259;
          v18 = v260;
          swift_unknownObjectRelease();
          goto LABEL_251;
        }
      }

      else if (!v244)
      {
        goto LABEL_250;
      }

      v252 = *(v618 + 3);
      v715 = *(v618 + 5);
      v716 = *(v618 + 7);
      v714 = v252;
      v711 = *(v618 + 3);
      v712 = *(v618 + 5);
      v713 = *(v618 + 7);
      v18 = &v714;
      BigString.startIndex.getter();
      v8 = &v250[v244];
      if (__OFADD__(v250, v244))
      {
        __break(1u);
LABEL_508:
        __break(1u);
LABEL_509:
        __break(1u);
LABEL_510:
        __break(1u);
LABEL_511:
        __break(1u);
LABEL_512:
        __break(1u);
LABEL_513:
        __break(1u);
LABEL_514:
        __break(1u);
LABEL_515:
        __break(1u);
LABEL_516:
        __break(1u);
        goto LABEL_517;
      }

      i = v253;
      v732[0] = v714;
      v732[1] = v715;
      v733 = v716;
      outlined init with copy of Rope<BigString._Chunk>._Node?(v732, &v622);
      v254 = BigString.UTF8View.index(_:offsetBy:)();
      v4 = v255;
      v8 = v256;
      v18 = v257;
      outlined destroy of BigString(&v714);
      v244 = v609;
LABEL_251:
      *&v616 = v18;
      if (v617 >= v20 >> 11)
      {
        v267 = v618[13];
        if (v614 >= *(v267 + 16))
        {
          goto LABEL_514;
        }

        if ((*(v267 + v613 - 56) ^ v254) >= 0x400 && v244 != 0)
        {
LABEL_253:
          v612 = v254;
          v261 = *(v618 + 3);
          v706 = *(v618 + 5);
          v707 = *(v618 + 7);
          v705 = v261;
          v704[6] = *(v618 + 3);
          v704[7] = *(v618 + 5);
          v704[8] = *(v618 + 7);
          v18 = &v705;
          BigString.startIndex.getter();
          if (__OFADD__(v20 >> 11, v244))
          {
            goto LABEL_508;
          }

          v734[0] = v705;
          v734[1] = v706;
          v735 = v707;
          outlined init with copy of Rope<BigString._Chunk>._Node?(v734, &v622);
          v20 = BigString.UTF8View.index(_:offsetBy:)();
          v34 = v262;
          v264 = v263;
          v615 = v265;
          outlined destroy of BigString(&v705);
          v266 = v618;
          v244 = v609;
          goto LABEL_262;
        }
      }

      else if (v244)
      {
        goto LABEL_253;
      }

      v266 = v618;
      v704[3] = *(v618 + 3);
      v704[4] = *(v618 + 5);
      v704[5] = *(v618 + 7);
      swift_unknownObjectRetain();
      v612 = BigString.UTF8View.index(_:offsetBy:)();
      v4 = v269;
      v8 = v270;
      *&v616 = v271;
      swift_unknownObjectRelease();
      v264 = v610;
      v34 = v611;
LABEL_262:
      v18 = v266[13];
      v272 = swift_isUniquelyReferenced_nonNull_native();
      v266[13] = v18;
      v274 = v613;
      v273 = v614;
      if ((v272 & 1) == 0)
      {
        v18 = specialized _ArrayBuffer._consumeAndCreateNew()(v18);
      }

      v247 = v617;
      if (v273 >= *(v18 + 16))
      {
        goto LABEL_458;
      }

      v246 = v273 + 1;
      v275 = (v18 + v274);
      *(v275 - 7) = v612;
      *(v275 - 6) = v4;
      v276 = v616;
      *(v275 - 5) = v8;
      *(v275 - 4) = v276;
      *(v275 - 3) = v20;
      *(v275 - 2) = v34;
      v277 = v615;
      *(v275 - 1) = v264;
      *v275 = v277;
      i = v274 + 64;
      v8 = v618;
      v618[13] = v18;
    }

    while (v607 != v246);
  }

  if (__OFADD__(v605, v244))
  {
    goto LABEL_545;
  }

  if ((v605 + v244) < v595)
  {
    goto LABEL_546;
  }

  v591 = v605 + v244;
  v278 = *(v8 + 80);
  v279 = *(v8 + 88);
  v280 = swift_unknownObjectRetain();
  LOBYTE(v278) = specialized Collection.isEmpty.getter(v280, v278, v279);
  swift_unknownObjectRelease();
  if (v278)
  {
    goto LABEL_269;
  }

  v282 = *(v8 + 24);
  v704[1] = *(v8 + 40);
  v704[2] = *(v8 + 56);
  v704[0] = v282;
  v701 = *(v8 + 24);
  v702 = *(v8 + 40);
  v703 = *(v8 + 56);
  v283 = *(v8 + 24);
  v736[1] = *(v8 + 40);
  v737 = *(v8 + 56);
  v736[0] = v283;
  BigString.startIndex.getter();
  i = v284;
  v4 = v285;
  outlined init with copy of Rope<BigString._Chunk>._Node?(v736, &v622);
  v286 = v595;
  v287 = BigString.UTF8View.index(_:offsetBy:)();
  v289 = v288;
  v291 = v290;
  v293 = v292;
  outlined destroy of BigString(v704);
  v698 = *(v8 + 24);
  v699 = *(v8 + 40);
  v700 = *(v8 + 56);
  if (__OFSUB__(v591, v286))
  {
    goto LABEL_564;
  }

  swift_unknownObjectRetain();
  v294 = BigString.UTF8View.index(_:offsetBy:)();
  v586 = v295;
  v587 = v294;
  v584 = v297;
  v585 = v296;
  swift_unknownObjectRelease();
  v590 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySnySiGGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v695 = *(v8 + 24);
  v696 = *(v8 + 40);
  v697 = *(v8 + 56);
  swift_unknownObjectRetain();
  v582 = v289;
  v583 = v287;
  v580 = v291;
  v581 = v293;
  v298 = BigString.UnicodeScalarView.index(roundingDown:)();
  v186 = v299;
  v301 = v300;
  v588 = v302;
  swift_unknownObjectRelease();
  v692 = *(v8 + 24);
  v693 = *(v8 + 40);
  v694 = *(v8 + 56);
  v4 = v586;
  swift_unknownObjectRetain();
  v303 = BigString.UnicodeScalarView.index(roundingUp:)();
  v187 = v298;
  swift_unknownObjectRelease();
  i = v298 >> 11;
  if (v303 >> 11 < i)
  {
LABEL_565:
    __break(1u);
    goto LABEL_566;
  }

  v599 = v301;
  v610 = v303 >> 11;
  v304 = *(v8 + 72);
  v305 = *(v8 + 80);
  v306 = *(v8 + 88);
  v4 = *(v8 + 96);
  swift_unknownObjectRetain();
  swift_retain_n();
  v606 = i;
  if (specialized Rope.find<A>(at:in:preferEnd:)(i, 0, v304, v305, v306, v4) != v4)
  {
LABEL_566:
    __break(1u);
LABEL_567:
    __break(1u);
LABEL_568:
    __break(1u);
LABEL_569:
    v384 = swift_slowAlloc();

    v574 = v600;
    _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySS10Foundation16AttributedStringV15_AttributeValueVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab24VKXEfU_SS_10Foundation16jk4V15_lM4VTG5AMxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSALIsgnndzo_Tf1nc_n(v384, i, v4, closure #1 in AttributedString._AttributeStorage.attributesForAddedText());
    v600 = v574;
    if (!v574)
    {
      i = v575;

      MEMORY[0x1865D2690](v384, -1, -1);
      v18 = i;
      goto LABEL_36;
    }

    goto LABEL_588;
  }

  v185 = v309;
  v608 = v307;
  v609 = v4;
  v607 = v308;
  if (!v304)
  {
    goto LABEL_278;
  }

  v605 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v4, v307, v308, v304, v305);
  swift_unknownObjectRelease();
LABEL_279:
  v310 = v187;

  v4 = v606;
  if (__OFSUB__(v606, v185))
  {
    goto LABEL_567;
  }

  v613 = &v606[-v185];
  v594 = v590;
LABEL_281:
  v20 = v186;
  v604 = v599;
  v602 = v310;
  v603 = v588;
  while (1)
  {
    v311 = *(v8 + 72);
    v312 = *(v8 + 80);
    v18 = *(v8 + 88);
    v313 = *(v8 + 96);
    swift_unknownObjectRetain();
    if (v4 == v610)
    {
      if (specialized Rope.find<A>(at:in:preferEnd:)(v4, 0, v311, v312, v18, v313) != v313)
      {
        goto LABEL_520;
      }

      i = v316;
      if (v311)
      {
        specialized Rope._Node.distanceFromStart<A>(to:in:)(v313, v314, v315, v311, v312);
        swift_unknownObjectRelease();
      }

      v18 = &v4[-i];
      if (__OFSUB__(v4, i))
      {
        goto LABEL_521;
      }
    }

    else
    {
      specialized Rope._endPath.getter(v311);
      if (v311)
      {
        swift_unknownObjectRelease();
      }

      else
      {
        v18 = 0;
      }
    }

    if (v613 == v18)
    {
      break;
    }

    v317 = *(v8 + 72);
    v318 = *(v8 + 80);
    v319 = *(v8 + 88);
    v320 = *(v8 + 96);
    swift_unknownObjectRetain();
    v321 = v608;
    v4 = v609;
    v322 = v607;
    specialized Rope.subscript.getter(v609, v608, v607, v317, v318, v319, v320);
    v612 = v323;
    v598 = v324;
    swift_unknownObjectRelease();
    v18 = *(v8 + 72);
    v325 = *(v8 + 80);
    v326 = *(v8 + 88);
    v327 = *(v8 + 96);
    swift_unknownObjectRetain();
    v328 = specialized Rope.subscript.getter(v4, v321, v322, v18, v325, v326, v327);
    i = v329;
    swift_unknownObjectRelease();

    v330 = (v613 + v328);
    if (__OFADD__(v613, v328))
    {
      goto LABEL_509;
    }

    if (v610 >= v613)
    {
      v331 = v613;
    }

    else
    {
      v331 = v610;
    }

    if (v613 < v606)
    {
      v331 = v606;
    }

    if (v330 <= v606)
    {
      v332 = v606;
    }

    else
    {
      v332 = (v613 + v328);
    }

    if (v610 >= v330)
    {
      v333 = v332;
    }

    else
    {
      v333 = v610;
    }

    if (v331 == v333)
    {
      goto LABEL_510;
    }

    if (__OFSUB__(v333, v331))
    {
      goto LABEL_511;
    }

    v601 = v20;
    v18 = *(v8 + 72);
    v334 = *(v8 + 80);
    v336 = *(v8 + 88);
    v335 = *(v8 + 96);
    v4 = v608;
    i = v609;
    *&v622 = v609;
    *(&v622 + 1) = v608;
    v20 = v607;
    *&v623 = v607;
    if (__OFADD__(v605, 1))
    {
      goto LABEL_512;
    }

    v605 = (v605 + 1);
    swift_unknownObjectRetain();
    i = specialized Rope.subscript.getter(i, v4, v20, v18, v334, v336, v335);
    v4 = v337;

    if (__OFADD__(v613, i))
    {
      goto LABEL_513;
    }

    v613 += i;
    specialized Rope.formIndex(after:)(&v622, v18, v334, v336, v335);
    swift_unknownObjectRelease();
    i = v610;
    if (v613 >= v610)
    {
      v18 = *(v8 + 72);
      v338 = *(v8 + 80);
      v339 = *(v8 + 88);
      v4 = *(v8 + 96);
      swift_unknownObjectRetain();
      v20 = v601;
      v609 = v4;
      if (v606 == i)
      {
        if (specialized Rope.find<A>(at:in:preferEnd:)(v606, 0, v18, v338, v339, v4) != v4)
        {
          goto LABEL_533;
        }

        i = v342;
        v607 = v341;
        v608 = v340;
        if (v18)
        {
          v605 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v4, v340, v341, v18, v338);
          swift_unknownObjectRelease();
        }

        else
        {
          v605 = 0;
        }

        if (__OFSUB__(v606, i))
        {
          goto LABEL_534;
        }

        v613 = &v606[-i];
      }

      else
      {
        v605 = v338;
        v613 = v339;
        v608 = specialized Rope._endPath.getter(v18);
        if (v18)
        {
          swift_unknownObjectRelease();
          v607 = 0;
        }

        else
        {
          v607 = 0;
          v605 = 0;
          v613 = 0;
        }
      }
    }

    else
    {
      v608 = *(&v622 + 1);
      v609 = v622;
      v607 = v623;
    }

    v689 = *(v8 + 24);
    v690 = *(v8 + 40);
    v691 = *(v8 + 56);
    swift_unknownObjectRetain();
    v343 = v602;
    v344 = BigString.UTF8View.index(_:offsetBy:)();
    v20 = v345;
    v599 = v346;
    v348 = v347;
    swift_unknownObjectRelease();
    v349 = v612;

    i = v598;

    v350 = v600;
    v351 = specialized Sequence.contains(where:)(v349);
    v600 = v350;

    if ((v351 & 1) != 0 && v344 >> 10 > v343 >> 10)
    {
      v578 = v344;
      v579 = v20;
      v588 = v348;
      v589 = v344 >> 10;
      v611 = v349 + 64;
LABEL_326:
      v686 = *(v8 + 24);
      v687 = *(v8 + 40);
      v688 = *(v8 + 56);
      swift_unknownObjectRetain();
      v596 = BigString.UnicodeScalarView.subscript.getter();
      swift_unknownObjectRelease();
      v352 = *(v8 + 40);
      v683 = *(v8 + 24);
      v684 = v352;
      v685 = *(v8 + 56);
      swift_unknownObjectRetain();
      v18 = BigString.UnicodeScalarView.index(after:)();
      v601 = v353;
      v603 = v355;
      v604 = v354;
      swift_unknownObjectRelease();
      v356 = 1 << *(v349 + 32);
      v357 = *(v349 + 64);
      v597 = (v356 + 63) >> 6;
      if (v356 < 64)
      {
        v358 = ~(-1 << v356);
      }

      else
      {
        v358 = -1;
      }

      v20 = v358 & v357;
      v602 = v18;
      v592 = v18 >> 11;
      v593 = v343 >> 11;

      v8 = 0;
      v359 = v611;
      if (!v20)
      {
LABEL_333:
        if (v597 <= v8 + 1)
        {
          v361 = v8 + 1;
        }

        else
        {
          v361 = v597;
        }

        v362 = v361 - 1;
        while (1)
        {
          v360 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v360 >= v597)
          {
            v377 = 0;
            v373 = 0;
            v376 = 0;
            v374 = 0;
            v375 = 0;
            v368 = 0;
            v369 = 0;
            v370 = 0;
            v371 = 0;
            i = 0;
            v372 = 0;
            v20 = 0;
            v8 = v362;
            goto LABEL_342;
          }

          v20 = *(v359 + 8 * v360);
          ++v8;
          if (v20)
          {
            v8 = v360;
            goto LABEL_341;
          }
        }

        __break(1u);
LABEL_422:

        v619 = 1;
        v449 = v18 >> 10;
        v20 = v587 >> 10;
        if (v18 >> 10 == v587 >> 10)
        {
          v450 = *(v8 + 40);
          v645 = *(v8 + 24);
          v646 = v450;
          v647 = *(v8 + 56);
          if (v449 <= BigString.startIndex.getter() >> 10 || v449 >= BigString.endIndex.getter() >> 10)
          {
            goto LABEL_269;
          }

          if (!__OFSUB__(v595, 1))
          {
            if ((AttributedString.Guts._needsParagraphFixing(from:to:)(v595 - 1, v595) & 1) == 0)
            {
              goto LABEL_269;
            }

            v451 = *(v8 + 24);
            v452 = *(v8 + 56);
            v681 = *(v8 + 40);
            v682 = v452;
            v680 = v451;
            v453 = *(v8 + 24);
            v454 = *(v8 + 40);
            *&v670 = *(v8 + 56);
            v668 = v453;
            v669 = v454;
            outlined init with copy of Rope<BigString._Chunk>._Node?(&v668, &v622);
            v455 = BigString.index(before:)();
            v457 = v456;
            v459 = v458;
            v461 = v460;
            outlined destroy of BigString(&v680);
            v617 = *(v8 + 24);
            v462 = *(v8 + 40);
            v674 = v617;
            v675 = v462;
            v676 = *(v8 + 56);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS10FoundationE22_BlockSearchingOptionsVGMd);
            v463 = swift_allocObject();
            v464 = _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZSS10FoundationE22_BlockSearchingOptionsV_Tt1g5(v463, 1);
            *v465 = 2;
            v466 = _NSBundleDeallocatingImmortalBundle(v464, v465);
            *&v616 = _ss10SetAlgebraPs7ElementQz012ArrayLiteralC0RtzrlE05arrayE0xAFd_tcfCSS10FoundationE22_BlockSearchingOptionsV_Tt1g5Tf4g_n(v466);
            swift_unknownObjectRetain();

            v467 = *(v8 + 24);
            v468 = *(v8 + 56);
            v678 = *(v8 + 40);
            v679 = v468;
            v677 = v467;
            v469 = *(v8 + 24);
            v470 = *(v8 + 40);
            *&v673 = *(v8 + 56);
            v671 = v469;
            v672 = v470;
            outlined init with copy of Rope<BigString._Chunk>._Node?(&v671, &v622);
            v471 = v455;
            v472 = v457;
            v473 = v459;
            v474 = BigString.index(after:)();
            v476 = v475;
            v478 = v477;
            v480 = v479;
            outlined destroy of BigString(&v677);
            v481 = v471;
            v482 = v471 >> 10;
            if (v482 > v474 >> 10)
            {
              goto LABEL_581;
            }

            *&v617 = v481;
            *&v636 = v481;
            *(&v636 + 1) = v472;
            v637 = v473;
            v638 = v461;
            v639 = v474;
            v640 = v476;
            v641 = v478;
            v642 = v480;
            v384 = &v674;
            specialized BidirectionalCollection<>._getBlock(for:in:)(v616, &v636, &v622);
            swift_unknownObjectRelease();
            if (*(&v625 + 1) != 2)
            {
              v8 = v618;
              if (v482 <= v624 >> 10)
              {
                LOBYTE(i) = 0;
                v483 = 0;
                v484 = 0;
                v485 = 0;
                v619 = 0;
                v34 = v617 >> 11;
                v4 = (v624 >> 11);
                goto LABEL_466;
              }

              goto LABEL_582;
            }

            goto LABEL_586;
          }

          goto LABEL_576;
        }

        v486 = *(v8 + 40);
        v680 = *(v8 + 24);
        v681 = v486;
        v682 = *(v8 + 56);
        if (v449 <= BigString.startIndex.getter() >> 10)
        {
          goto LABEL_441;
        }

        if (__OFSUB__(v595, 1))
        {
          goto LABEL_575;
        }

        if ((AttributedString.Guts._needsParagraphFixing(from:to:)(v595 - 1, v595) & 1) == 0)
        {
          goto LABEL_441;
        }

        v487 = *(v8 + 24);
        v488 = *(v8 + 56);
        v678 = *(v8 + 40);
        v679 = v488;
        v677 = v487;
        v489 = *(v8 + 24);
        v738[1] = *(v8 + 40);
        v739 = *(v8 + 56);
        v738[0] = v489;
        outlined init with copy of Rope<BigString._Chunk>._Node?(v738, &v622);
        v490 = BigString.index(before:)();
        v492 = v491;
        v494 = v493;
        *&v617 = v495;
        outlined destroy of BigString(&v677);
        v616 = *(v8 + 24);
        v496 = *(v8 + 40);
        v671 = v616;
        v672 = v496;
        v673 = *(v8 + 56);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS10FoundationE22_BlockSearchingOptionsVGMd);
        v497 = swift_allocObject();
        v498 = _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZSS10FoundationE22_BlockSearchingOptionsV_Tt1g5(v497, 1);
        *v499 = 2;
        v500 = _NSBundleDeallocatingImmortalBundle(v498, v499);
        v615 = _ss10SetAlgebraPs7ElementQz012ArrayLiteralC0RtzrlE05arrayE0xAFd_tcfCSS10FoundationE22_BlockSearchingOptionsV_Tt1g5Tf4g_n(v500);
        swift_unknownObjectRetain();

        v501 = *(v8 + 24);
        v502 = *(v8 + 56);
        v675 = *(v8 + 40);
        v676 = v502;
        v674 = v501;
        v503 = *(v8 + 24);
        v740[1] = *(v8 + 40);
        v741 = *(v8 + 56);
        v740[0] = v503;
        outlined init with copy of Rope<BigString._Chunk>._Node?(v740, &v622);
        v504 = v494;
        v505 = BigString.index(after:)();
        v507 = v506;
        v509 = v508;
        v511 = v510;
        outlined destroy of BigString(&v674);
        if (v490 >> 10 > v505 >> 10)
        {
LABEL_577:
          __break(1u);
        }

        else
        {
          v614 = v490;
          *&v636 = v490;
          *(&v636 + 1) = v492;
          v637 = v504;
          v638 = v617;
          v639 = v505;
          v640 = v507;
          v641 = v509;
          v642 = v511;
          v384 = &v671;
          specialized BidirectionalCollection<>._getBlock(for:in:)(v615, &v636, &v622);
          swift_unknownObjectRelease();
          if (*(&v625 + 1) == 2)
          {
            __break(1u);
            goto LABEL_585;
          }

          v8 = v618;
          if (v490 >> 10 <= v624 >> 10)
          {
            LOBYTE(i) = 0;
            v34 = v614 >> 11;
            v4 = (v624 >> 11);
            v619 = 0;
            goto LABEL_442;
          }
        }

        __break(1u);
        goto LABEL_579;
      }

      while (1)
      {
LABEL_332:
        v360 = v8;
LABEL_341:
        v363 = __clz(__rbit64(v20));
        v20 &= v20 - 1;
        v364 = v363 | (v360 << 6);
        v365 = *(v612 + 56);
        v366 = (*(v612 + 48) + 16 * v364);
        v367 = v366[1];
        *&v617 = *v366;
        outlined init with copy of AttributedString._AttributeValue(v365 + 72 * v364, &v636);
        v615 = *(&v636 + 1);
        *&v616 = v636;
        v614 = v637;
        v368 = v638;
        v369 = v639;
        v370 = v640;
        v371 = v641;
        i = v642;
        v18 = v643;

        v372 = v18;
        v373 = v367;
        v375 = v614;
        v374 = v615;
        v376 = v616;
        v377 = v617;
LABEL_342:
        *&v622 = v377;
        *(&v622 + 1) = v373;
        *&v623 = v376;
        *(&v623 + 1) = v374;
        *&v624 = v375;
        *(&v624 + 1) = v368;
        *&v625 = v369;
        *(&v625 + 1) = v370;
        *&v626 = v371;
        *(&v626 + 1) = i;
        *&v627 = v372;
        if (!v373)
        {
          v349 = v612;

          v343 = v602;
          v8 = v618;
          if (v589 > v602 >> 10)
          {
            goto LABEL_326;
          }

          v4 = v606;
          v310 = v578;
          v186 = v579;
          goto LABEL_281;
        }

        v4 = v373;
        outlined copy of AttributedString.AttributeRunBoundaries?(v370, v371);
        outlined destroy of AttributedString._AttributeValue(&v623);
        if (v371 >= 2)
        {
          i = specialized Collection.first.getter(v370, v371);
          outlined consume of AttributedString.AttributeRunBoundaries?(v370, v371);
          if ((i & 0x100000000) == 0 && v596 != i)
          {
            break;
          }
        }

        v359 = v611;
        if (!v20)
        {
          goto LABEL_333;
        }
      }

      if (v592 < v593)
      {
        goto LABEL_553;
      }

      v18 = v590;
      i = swift_isUniquelyReferenced_nonNull_native();
      *&v636 = v18;
      v379 = specialized __RawDictionaryStorage.find<A>(_:)(v377, v4);
      v380 = *(v18 + 16);
      v381 = (v378 & 1) == 0;
      v382 = v380 + v381;
      if (__OFADD__(v380, v381))
      {
        goto LABEL_554;
      }

      v383 = v378;
      if (*(v18 + 24) >= v382)
      {
        if (i)
        {
          v594 = v18;
          if (v378)
          {
            goto LABEL_351;
          }
        }

        else
        {
          LODWORD(v616) = v378;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSaySnySiGGGMd);
          v594 = static _DictionaryStorage.copy(original:)();
          if (*(v18 + 16))
          {
            v392 = (v594 + 64);
            v393 = v590 + 8;
            v394 = ((1 << *(v594 + 32)) + 63) >> 6;
            if (v594 != v590 || v392 >= &v393[v394])
            {
              memmove(v392, v590 + 8, 8 * v394);
            }

            v395 = 0;
            v396 = v590;
            *(v594 + 16) = v590[2];
            v397 = 1 << *(v396 + 32);
            v398 = v396[8];
            if (v397 < 64)
            {
              v399 = ~(-1 << v397);
            }

            else
            {
              v399 = -1;
            }

            v400 = v399 & v398;
            v401 = (v397 + 63) >> 6;
            if (!v400)
            {
              goto LABEL_368;
            }

            while (1)
            {
              v402 = __clz(__rbit64(v400));
              for (*&v617 = (v400 - 1) & v400; ; *&v617 = (v404 - 1) & v404)
              {
                v405 = v402 | (v395 << 6);
                v406 = (v590[6] + 16 * v405);
                v407 = v406[1];
                i = *(v590[7] + 8 * v405);
                v408 = v594;
                v409 = (*(v594 + 48) + 16 * v405);
                *v409 = *v406;
                v409[1] = v407;
                *(*(v408 + 56) + 8 * v405) = i;

                v400 = v617;
                if (v617)
                {
                  break;
                }

LABEL_368:
                v403 = v395;
                do
                {
                  v395 = v403 + 1;
                  if (__OFADD__(v403, 1))
                  {
                    goto LABEL_583;
                  }

                  if (v395 >= v401)
                  {
                    goto LABEL_375;
                  }

                  v404 = v393[v395];
                  ++v403;
                }

                while (!v404);
                v402 = __clz(__rbit64(v404));
              }
            }
          }

LABEL_375:

          if (v616)
          {
            goto LABEL_351;
          }
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v382, i);
        v384 = v636;
        v594 = v636;
        v385 = specialized __RawDictionaryStorage.find<A>(_:)(v377, v4);
        if ((v383 & 1) != (v386 & 1))
        {
          goto LABEL_587;
        }

        v379 = v385;
        if (v383)
        {
LABEL_351:

          v387 = v594;
          goto LABEL_357;
        }
      }

      v387 = v594;
      *(v594 + 8 * (v379 >> 6) + 64) |= 1 << v379;
      v388 = (v387[6] + 16 * v379);
      *v388 = v377;
      v388[1] = v4;
      *(v387[7] + 8 * v379) = MEMORY[0x1E69E7CC0];
      v389 = v387[2];
      v47 = __OFADD__(v389, 1);
      v390 = v389 + 1;
      if (v47)
      {
        goto LABEL_568;
      }

      v387[2] = v390;
LABEL_357:
      v391 = v387;
      v18 = v387[7] + 8 * v379;
      Array<A>._extend(with:)(v593, v592);
      v590 = v391;
      v359 = v611;
      if (!v20)
      {
        goto LABEL_333;
      }

      goto LABEL_332;
    }

    v602 = v344;
    v603 = v348;
    v604 = v599;
    v4 = v606;
  }

  v410 = 0;
  v411 = v594 + 64;
  v412 = 1 << *(v594 + 32);
  v413 = -1;
  if (v412 < 64)
  {
    v413 = ~(-1 << v412);
  }

  v414 = v413 & *(v594 + 64);
  v415 = (v412 + 63) >> 6;
  v18 = v583;
  do
  {
LABEL_381:
    if (!v414)
    {
      do
      {
        v416 = v410 + 1;
        if (__OFADD__(v410, 1))
        {
          goto LABEL_530;
        }

        if (v416 >= v415)
        {
          goto LABEL_422;
        }

        v414 = *(v411 + 8 * v416);
        ++v410;
      }

      while (!v414);
      v410 = v416;
    }

    v417 = __clz(__rbit64(v414));
    v414 &= v414 - 1;
    v418 = v417 | (v410 << 6);
    v419 = *(*(v594 + 56) + 8 * v418);
    v612 = *(v419 + 16);
  }

  while (!v612);
  v607 = v414;
  v608 = v415;
  v609 = v410;
  v610 = v411;
  v420 = (*(v594 + 48) + 16 * v418);
  v421 = v420[1];
  v615 = *v420;
  v613 = v419 + 32;
  v422 = v419;

  v423 = v422;
  v424 = 0;
  v611 = v423;
  while (2)
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v424, 1, v423);
    v425 = (v613 + 16 * v424);
    v34 = *v425;
    v426 = v425[1];
    v614 = v424 + 1;

    AttributedString._InternalRunsSlice.startIndex.getter(v8, v34, v653);
    v427 = v654;
    v622 = v653[0];
    v623 = v653[1];
    *&v624 = v654;
    *&v617 = v426;
    *&v616 = v34;
LABEL_392:
    v429 = *(v8 + 72);
    if (v34 == v426)
    {
      i = *(v8 + 80);
      v20 = *(v8 + 88);
      v430 = *(v8 + 96);
      swift_unknownObjectRetain();
      if (specialized Rope.find<A>(at:in:preferEnd:)(v34, 0, v429, i, v20, v430) != v430)
      {
        __break(1u);
LABEL_447:
        __break(1u);
        goto LABEL_448;
      }

      v4 = v433;
      if (v429)
      {
        specialized Rope._Node.distanceFromStart<A>(to:in:)(v430, v431, v432, v429, i);
        swift_unknownObjectRelease();
      }

      v434 = v34 - v4;
      if (__OFSUB__(v34, v4))
      {
        goto LABEL_447;
      }

      v426 = v617;
    }

    else if (v429)
    {
      v434 = *(v8 + 88);
    }

    else
    {
      v434 = 0;
    }

    if (v427 >= v434)
    {

      v423 = v611;
      v424 = v614;
      if (v614 == v612)
      {

        v18 = v583;
        v410 = v609;
        v411 = v610;
        v414 = v607;
        v415 = v608;
        goto LABEL_381;
      }

      continue;
    }

    break;
  }

  specialized AttributedString.Guts.updateRun(at:within:with:)(&v622, v34, v426, v8, v615, v421);
  v34 = v421;

  i = *(&v622 + 1);
  v435 = v622;
  v436 = v624;
  v437 = v8;
  v8 = *(v8 + 72);
  v4 = v437[10];
  v20 = v437[11];
  v438 = v437[12];
  v636 = v622;
  v637 = v623;
  v439 = *(&v623 + 1) + 1;
  if (__OFADD__(*(&v623 + 1), 1))
  {
    __break(1u);
LABEL_439:
    __break(1u);
LABEL_440:
    __break(1u);
LABEL_441:
    v34 = 0;
    v4 = 0;
    LOBYTE(i) = 1;
LABEL_442:
    v512 = *(v8 + 40);
    v668 = *(v8 + 24);
    v669 = v512;
    v670 = *(v8 + 56);
    if (v20 >= BigString.endIndex.getter() >> 10)
    {
      goto LABEL_465;
    }

    if (i)
    {
      if (v591 < 1)
      {
        goto LABEL_269;
      }

LABEL_449:
      if ((AttributedString.Guts._needsParagraphFixing(from:to:)(v591 - 1, v591) & 1) == 0)
      {
        goto LABEL_465;
      }

      v614 = v4;
      v615 = v34;
      v513 = *(v8 + 24);
      v514 = *(v8 + 56);
      v667[1] = *(v8 + 40);
      v667[2] = v514;
      v667[0] = v513;
      v515 = *(v8 + 24);
      v742[1] = *(v8 + 40);
      v743 = *(v8 + 56);
      v742[0] = v515;
      outlined init with copy of Rope<BigString._Chunk>._Node?(v742, &v622);
      v516 = BigString.index(before:)();
      v518 = v517;
      v520 = v519;
      v522 = v521;
      outlined destroy of BigString(v667);
      v617 = *(v8 + 24);
      v523 = *(v8 + 40);
      v665[0] = v617;
      v665[1] = v523;
      v665[2] = *(v8 + 56);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS10FoundationE22_BlockSearchingOptionsVGMd);
      v524 = swift_allocObject();
      v525 = _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZSS10FoundationE22_BlockSearchingOptionsV_Tt1g5(v524, 1);
      *v526 = 2;
      v527 = _NSBundleDeallocatingImmortalBundle(v525, v526);
      *&v616 = _ss10SetAlgebraPs7ElementQz012ArrayLiteralC0RtzrlE05arrayE0xAFd_tcfCSS10FoundationE22_BlockSearchingOptionsV_Tt1g5Tf4g_n(v527);
      swift_unknownObjectRetain();

      v528 = *(v8 + 24);
      v529 = *(v8 + 56);
      v666[1] = *(v8 + 40);
      v666[2] = v529;
      v666[0] = v528;
      v530 = *(v8 + 24);
      v744[1] = *(v8 + 40);
      v745 = *(v8 + 56);
      v744[0] = v530;
      outlined init with copy of Rope<BigString._Chunk>._Node?(v744, &v622);
      v531 = v518;
      v532 = BigString.index(after:)();
      v534 = v533;
      v536 = v535;
      v538 = v537;
      outlined destroy of BigString(v666);
      if (v516 >> 10 <= v532 >> 10)
      {
        v613 = v516;
        *&v645 = v516;
        *(&v645 + 1) = v531;
        *&v646 = v520;
        *(&v646 + 1) = v522;
        *&v647 = v532;
        *(&v647 + 1) = v534;
        v648 = v536;
        v649 = v538;
        v384 = v665;
        specialized BidirectionalCollection<>._getBlock(for:in:)(v616, &v645, &v622);
        swift_unknownObjectRelease();
        if (*(&v625 + 1) != 2)
        {
          v8 = v618;
          v4 = v614;
          if (v516 >> 10 <= v624 >> 10)
          {
            v483 = v613 >> 11;
            v484 = v624 >> 11;
            v485 = 1;
            LOBYTE(i) = v619;
            v34 = v615;
            goto LABEL_466;
          }

LABEL_580:
          __break(1u);
LABEL_581:
          __break(1u);
LABEL_582:
          __break(1u);
LABEL_583:
          __break(1u);
        }

LABEL_585:
        __break(1u);
LABEL_586:
        __break(1u);
LABEL_587:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
LABEL_588:

        result = MEMORY[0x1865D2690](v384, -1, -1);
        __break(1u);
        return result;
      }

LABEL_579:
      __break(1u);
      goto LABEL_580;
    }

LABEL_448:
    if (v4 >= v591)
    {
      goto LABEL_464;
    }

    goto LABEL_449;
  }

  if (v622 != v438)
  {
    goto LABEL_439;
  }

  if (v623)
  {
    v440 = *(v623 + 24 * ((*(&v622 + 1) >> ((4 * *(v623 + 18) + 8) & 0x3C)) & 0xFLL) + 24);
    swift_unknownObjectRetain();
    v47 = __OFADD__(v436, v440);
    v427 = v436 + v440;
    if (v47)
    {
      goto LABEL_440;
    }
  }

  else
  {
    swift_unknownObjectRetain();
    v441 = specialized Rope._Node.subscript.getter(i, v8);
    i = v442;

    v47 = __OFADD__(v436, v441);
    v427 = v436 + v441;
    if (v47)
    {
      goto LABEL_440;
    }
  }

  specialized Rope.formIndex(after:)(&v636, v8, v4, v20, v435);
  swift_unknownObjectRelease();
  v426 = v617;
  if (v427 < v617)
  {
    v4 = *(&v636 + 1);
    v8 = v636;
    v428 = v637;
LABEL_391:
    *&v622 = v8;
    *(&v622 + 1) = v4;
    *&v623 = v428;
    *(&v623 + 1) = v439;
    *&v624 = v427;
    v8 = v618;
    v421 = v34;
    v34 = v616;
    goto LABEL_392;
  }

  v20 = v618[9];
  v443 = v616;
  if (v616 != v617)
  {
    v8 = v618[12];
    if (v20)
    {
      v428 = 0;
      v439 = v618[10];
      v427 = v618[11];
      v4 = (((-15 << ((4 * *(v20 + 18) + 8) & 0x3C)) - 1) & *(v20 + 18) | (*(v20 + 16) << ((4 * *(v20 + 18) + 8) & 0x3C)));
    }

    else
    {
      v4 = 0;
      v428 = 0;
      v439 = 0;
      v427 = 0;
    }

    goto LABEL_391;
  }

  i = v618[10];
  v444 = v618[11];
  v8 = v618[12];
  swift_unknownObjectRetain();
  if (specialized Rope.find<A>(at:in:preferEnd:)(v443, 0, v20, i, v444, v8) == v8)
  {
    v4 = v445;
    v428 = v446;
    v448 = v447;
    if (v20)
    {
      v439 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v8, v445, v446, v20, i);
      swift_unknownObjectRelease();
    }

    else
    {
      v439 = 0;
    }

    v427 = v616 - v448;
    if (__OFSUB__(v616, v448))
    {
      goto LABEL_455;
    }

    v426 = v617;
    goto LABEL_391;
  }

  __break(1u);
LABEL_455:
  __break(1u);
LABEL_456:
  __break(1u);
LABEL_457:
  __break(1u);
LABEL_458:
  __break(1u);
LABEL_459:
  __break(1u);
LABEL_460:
  __break(1u);
LABEL_461:
  __break(1u);
LABEL_462:
  __break(1u);
LABEL_463:
  __break(1u);
LABEL_464:
  LOBYTE(i) = 0;
LABEL_465:
  v483 = 0;
  v484 = 0;
  v485 = 0;
LABEL_466:
  v539 = v595;
  *&v617 = v484;
  if ((i & 1) != 0 || v595 >= v4)
  {
    v556 = v591;
  }

  else
  {
    LODWORD(v612) = v485;
    v613 = v483;
    v622 = 0uLL;
    v540 = AttributedString.Guts._constrainedAttributes(at:with:)(v34, &v622);
    v542 = v541;
    *&v616 = v540;

    v615 = v542;

    AttributedString._InternalRunsSlice.startIndex.getter(v8, v539, v655);
    i = v656;
    v622 = v655[0];
    v623 = v655[1];
    *&v624 = v656;
    v614 = v4;
    while (1)
    {
      v546 = *(v8 + 72);
      if (v546)
      {
        v546 = *(v8 + 88);
      }

      if (i >= v546)
      {
        break;
      }

      v547 = v616;

      specialized AttributedString.Guts.updateRun(at:within:with:)(&v622, v595, v4, v8, v547, 0, 0);

      v20 = *(&v622 + 1);
      v548 = v622;
      v18 = v624;
      v549 = v8;
      v550 = *(v8 + 72);
      v8 = *(v8 + 80);
      v552 = *(v549 + 88);
      v551 = *(v549 + 96);
      v620 = v622;
      v621 = v623;
      v553 = *(&v623 + 1) + 1;
      if (__OFADD__(*(&v623 + 1), 1))
      {
        goto LABEL_547;
      }

      if (v622 != v551)
      {
        goto LABEL_548;
      }

      if (v623)
      {
        v554 = v623 + 24 * ((*(&v622 + 1) >> ((4 * *(v623 + 18) + 8) & 0x3C)) & 0xFLL);
        v20 = *(v554 + 24);
        v4 = *(v554 + 40);
        swift_unknownObjectRetain();
      }

      else
      {
        swift_unknownObjectRetain();
        v20 = specialized Rope._Node.subscript.getter(v20, v550);
        v4 = v555;
      }

      i = v18 + v20;
      if (__OFADD__(v18, v20))
      {
        goto LABEL_549;
      }

      specialized Rope.formIndex(after:)(&v620, v550, v8, v552, v548);
      swift_unknownObjectRelease();
      v4 = v614;
      if (i < v614)
      {
        v544 = *(&v620 + 1);
        v543 = v620;
        v545 = v621;
        v8 = v618;
        v484 = v617;
      }

      else
      {
        v8 = v618;
        v544 = v618[9];
        v543 = v618[12];
        v484 = v617;
        v545 = 0;
        if (v544)
        {
          v553 = v618[10];
          i = v618[11];
          v544 = ((-15 << ((4 * *(v544 + 18) + 8) & 0x3C)) - 1) & *(v544 + 18) | (*(v544 + 16) << ((4 * *(v544 + 18) + 8) & 0x3C));
        }

        else
        {
          v553 = 0;
          i = 0;
        }
      }

      *&v622 = v543;
      *(&v622 + 1) = v544;
      *&v623 = v545;
      *(&v623 + 1) = v553;
      *&v624 = i;
    }

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v556 = v591;
    v483 = v613;
    v485 = v612;
  }

  if (v556 < v484)
  {
    v557 = v485;
  }

  else
  {
    v557 = 0;
  }

  if (v557 == 1)
  {
    v622 = 0uLL;
    v558 = AttributedString.Guts._constrainedAttributes(at:with:)(v483, &v622);
    v560 = v559;
    *&v616 = v558;

    v615 = v560;

    AttributedString._InternalRunsSlice.startIndex.getter(v8, v591, &v657);
    for (i = v660; ; v660 = i)
    {
      v564 = *(v8 + 72);
      if (v564)
      {
        v564 = *(v8 + 88);
      }

      if (i >= v564)
      {
        break;
      }

      v565 = v616;

      specialized AttributedString.Guts.updateRun(at:within:with:)(&v657, v591, v484, v8, v565, 0, 0);

      v20 = *(&v657 + 1);
      v4 = v657;
      v18 = v660;
      v566 = *(v8 + 72);
      v567 = *(v8 + 80);
      v569 = *(v8 + 88);
      v568 = *(v8 + 96);
      v622 = v657;
      *&v623 = v658;
      v570 = v659 + 1;
      if (__OFADD__(v659, 1))
      {
        goto LABEL_550;
      }

      if (v657 != v568)
      {
        goto LABEL_551;
      }

      if (v658)
      {
        v571 = v658 + 24 * ((*(&v657 + 1) >> ((4 * *(v658 + 18) + 8) & 0x3C)) & 0xFLL);
        v20 = *(v571 + 24);
        v8 = *(v571 + 40);
        swift_unknownObjectRetain();
      }

      else
      {
        swift_unknownObjectRetain();
        v20 = specialized Rope._Node.subscript.getter(v20, v566);
        v8 = v572;
      }

      i = v18 + v20;
      if (__OFADD__(v18, v20))
      {
        goto LABEL_552;
      }

      specialized Rope.formIndex(after:)(&v622, v566, v567, v569, v4);
      swift_unknownObjectRelease();
      v484 = v617;
      if (i < v617)
      {
        v562 = *(&v622 + 1);
        v561 = v622;
        v563 = v623;
        v8 = v618;
      }

      else
      {
        v8 = v618;
        v562 = v618[9];
        v561 = v618[12];
        v563 = 0;
        if (v562)
        {
          v570 = v618[10];
          i = v618[11];
          v562 = ((-15 << ((4 * *(v562 + 18) + 8) & 0x3C)) - 1) & *(v562 + 18) | (*(v562 + 16) << ((4 * *(v562 + 18) + 8) & 0x3C));
        }

        else
        {
          v570 = 0;
          i = 0;
        }
      }

      *&v657 = v561;
      *(&v657 + 1) = v562;
      v658 = v563;
      v659 = v570;
    }

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

LABEL_269:
  v626 = v633;
  v627 = v634;
  v628 = v635;
  v622 = v629;
  v623 = v630;
  v624 = v631;
  v625 = v632;
  return outlined destroy of BigSubstring.UnicodeScalarView(&v622);
}

uint64_t AttributedString.UnicodeScalarView._replaceSubrange<A>(_:with:)(uint64_t a1, _OWORD *a2, uint64_t a3, void *a4)
{
  v6 = v4;
  v114 = a4;
  v7 = a3;
  v8 = a2;
  v146 = *MEMORY[0x1E69E9840];
  v113 = a2;
  v115 = a3;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_11;
  }

  v10 = a1;
  v11 = *v4;
  v12 = *(*v4 + 24);
  v13 = *(*v4 + 56);
  v142 = *(*v4 + 40);
  v143 = v13;
  v141 = v12;
  v7 = v11[9];
  v5 = v11[10];
  a1 = v11[11];
  v14 = v11[12];
  type metadata accessor for AttributedString.Guts();
  v15 = swift_allocObject();
  v16 = BigString.isEmpty.getter() & 1;
  outlined init with copy of BigString(&v141, v139);
  v17 = swift_unknownObjectRetain();
  specialized Rope._endPath.getter(v17);
  if (v7)
  {
    v18 = a1 == 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = v18;
  if (v19 != v16)
  {
    goto LABEL_117;
  }

  if (one-time initialization token for _nextVersion != -1)
  {
    goto LABEL_119;
  }

  while (1)
  {
    add_explicit = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
    v21 = v142;
    *(v15 + 24) = v141;
    *(v15 + 16) = add_explicit;
    *(v15 + 40) = v21;
    *(v15 + 56) = v143;
    *(v15 + 72) = v7;
    *(v15 + 80) = v5;
    *(v15 + 88) = a1;
    *(v15 + 96) = v14;
    *(v15 + 104) = MEMORY[0x1E69E7CC0];

    *v6 = v15;
    a1 = v10;
    v8 = v113;
    v7 = v115;
LABEL_11:
    v119 = 1;
    if (v7 == MEMORY[0x1E69955E0])
    {
      v22 = v8[6];
      v139[5] = v8[5];
      v139[6] = v22;
      v23 = v8[4];
      v139[3] = v8[3];
      v139[4] = v23;
      v24 = v8[2];
      v139[1] = v8[1];
      v139[2] = v24;
      v139[0] = *v8;
      v25 = *(v6 + 8);
      v26 = *(v6 + 40);
      v27 = *(*v6 + 24);
      v28 = *(*v6 + 56);
      v140[1] = *(*v6 + 40);
      v140[2] = v28;
      v29 = *a1 >> 10;
      v140[0] = v27;
      if (v29 < v25 >> 10 || v26 >> 10 < *(a1 + 32) >> 10)
      {
        __break(1u);
        goto LABEL_123;
      }

      outlined init with copy of BigSubstring.UnicodeScalarView(v139, v133);
      outlined init with copy of BigString(v140, v133);
      BigSubstring.UnicodeScalarView.init(_:in:)();
      v30 = BigSubstring.UnicodeScalarView.isIdentical(to:)();
      outlined destroy of BigSubstring.UnicodeScalarView(v139);
      outlined destroy of BigSubstring.UnicodeScalarView(v133);
      if (v30)
      {
        v119 = 0;
      }
    }

    v10 = *v6;
    v31 = *(*v6 + 24);
    v32 = *(*v6 + 56);
    v137 = *(*v6 + 40);
    v138 = v32;
    v136 = v31;
    v33 = *(v10 + 40);
    v117 = *(v10 + 24);
    v118 = v33;
    v34 = *(v10 + 56);
    v35 = *(v10 + 64);
    v36 = BigString.isEmpty.getter();
    v112 = v6;
    if (v36)
    {
      v6 = MEMORY[0x1E69E7CC8];
      v37 = v115;
LABEL_78:
      MEMORY[0x1EEE9AC00](v36);
      v80 = v114;
      *(&v107 - 4) = v37;
      *(&v107 - 3) = v80;
      *(&v107 - 2) = &v119;
      *(&v107 - 1) = v8;
      AttributedString.UnicodeScalarView._mutateStringContents(in:attributes:with:)(a1, v6, MEMORY[0x1E69E7CD0], partial apply for closure #1 in AttributedString.UnicodeScalarView._replaceSubrange<A>(_:with:), (&v107 - 6));
    }

    v38 = *a1;
    v39 = *a1 >= 0x800uLL;
    v111 = a1;
    if (v39 && (*(a1 + 32) ^ v38) <= 0x3FF)
    {
      v5 = *(a1 + 16);
      v7 = *(a1 + 24);
      a1 = *(a1 + 8);
      v133[7] = v117;
      v133[8] = v118;
      v134 = v34;
      v135 = v35;
      v144[0] = v136;
      v144[1] = v137;
      v145 = v138;
      outlined init with copy of Rope<BigString._Chunk>._Node?(v144, &v129);
      v38 = BigString.UTF8View.index(before:)();
      outlined destroy of BigString(&v136);
    }

    v15 = *(v10 + 72);
    v14 = *(v10 + 88);
    v40 = v38 >> 11;
    v41 = v15 ? *(v10 + 88) : 0;
    if (v41 >= v40)
    {
      break;
    }

LABEL_118:
    __break(1u);
LABEL_119:
    swift_once();
  }

  v5 = *(v10 + 80);
  *&v118 = *(v10 + 96);
  v107 = 0;
  if (!v15 || v40 >= v14 || (a1 = v15 + 16, v7 = *(v15 + 16), !*(v15 + 16)))
  {
    v47 = swift_unknownObjectRetain();
    v48 = specialized Rope._endPath.getter(v47);
    v49 = v5;
    v5 = 0;
    v50 = 0;
    if (v15)
    {
      goto LABEL_44;
    }

    goto LABEL_45;
  }

  v116 = v5;
  *&v117 = v14;
  v6 = *(v15 + 18);
  swift_unknownObjectRetain_n();
  if (!v6)
  {
    v14 = 0;
    v5 = v15;
    goto LABEL_101;
  }

  v14 = v6;
  v7 = v15;
  do
  {
    v42 = *a1;
    if (*a1)
    {
      v43 = 0;
      v44 = (v7 + 40);
      while (1)
      {
        v45 = *v44;
        v44 += 3;
        v46 = v40 - v45;
        if (__OFSUB__(v40, v45))
        {
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
          goto LABEL_111;
        }

        if (__OFADD__(v46, 1))
        {
          goto LABEL_109;
        }

        if (v46 + 1 < 1)
        {
          break;
        }

        ++v43;
        v40 = v46;
        if (v42 == v43)
        {
          goto LABEL_41;
        }
      }

      v42 = v43;
    }

    else
    {
      v46 = v40;
LABEL_41:
      if (v46)
      {
        goto LABEL_115;
      }

      v40 = 0;
    }

    v14 = (v42 << ((4 * v6 + 8) & 0x3C)) | ((-15 << ((4 * v6 + 8) & 0x3C)) - 1) & v14;
    v5 = *(v7 + 24 + 24 * v42);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    a1 = v5 + 16;
    v6 = *(v5 + 18);
    v7 = v5;
  }

  while (*(v5 + 18));
  v7 = *a1;
  if (*a1)
  {
LABEL_101:
    v101 = 0;
    v100 = v7;
    v102 = 24;
    while (1)
    {
      v103 = *(v5 + v102);
      v79 = __OFSUB__(v40, v103);
      v40 -= v103;
      if (v79)
      {
        goto LABEL_113;
      }

      if (__OFADD__(v40, 1))
      {
        break;
      }

      if (v40 + 1 < 1)
      {
        goto LABEL_107;
      }

      ++v101;
      v102 += 24;
      if (v7 == v101)
      {
        goto LABEL_106;
      }
    }

LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  v100 = 0;
LABEL_106:
  v101 = v100;
  if (v40)
  {
    __break(1u);
  }

LABEL_107:
  swift_unknownObjectRelease();
  v48 = v14 & 0xFFFFFFFFFFFFF0FFLL | (v101 << 8);
  v49 = v116;
LABEL_44:
  specialized Rope._Node.distanceFromStart<A>(to:in:)(v118, v48, v5, v15, v49);
  swift_unknownObjectRelease();
  v50 = v5;
LABEL_45:
  v51 = *(v10 + 72);
  v52 = *(v10 + 80);
  v53 = *(v10 + 88);
  v54 = *(v10 + 96);
  swift_unknownObjectRetain();
  specialized Rope.subscript.getter(v118, v48, v50, v51, v52, v53, v54);
  v7 = v55;
  v57 = v56;
  swift_unknownObjectRelease();
  v58 = *(v7 + 32);
  v59 = v58 & 0x3F;
  v108 = ((1 << v58) + 63) >> 6;
  v60 = 8 * v108;

  if (v59 <= 0xD)
  {
LABEL_46:
    v109 = v57;
    v110 = &v107;
    MEMORY[0x1EEE9AC00](v61);
    v14 = &v107 - ((v60 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v14, v60);
    *&v118 = 0;
    v62 = 0;
    a1 = v7 + 64;
    v63 = 1 << *(v7 + 32);
    if (v63 < 64)
    {
      v64 = ~(-1 << v63);
    }

    else
    {
      v64 = -1;
    }

    v5 = v64 & *(v7 + 64);
    v6 = (v63 + 63) >> 6;
    v116 = &v107 - ((v60 + 15) & 0x3FFFFFFFFFFFFFF0);
    *&v117 = v7;
    v15 = &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMR;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          if (!v5)
          {
            v66 = v62;
            while (1)
            {
              v62 = v66 + 1;
              if (__OFADD__(v66, 1))
              {
                goto LABEL_110;
              }

              if (v62 >= v6)
              {
                break;
              }

              v67 = *(a1 + 8 * v62);
              ++v66;
              if (v67)
              {
                v65 = __clz(__rbit64(v67));
                v5 = (v67 - 1) & v67;
                goto LABEL_58;
              }
            }

            if (!v118)
            {
              v6 = MEMORY[0x1E69E7CC8];
              goto LABEL_76;
            }

            if (v118 == *(v7 + 16))
            {

              v6 = v7;
LABEL_76:
              a1 = v111;
              v8 = v113;
              v37 = v115;
              goto LABEL_77;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
            v6 = static _DictionaryStorage.allocate(capacity:)();
            a1 = 0;
            v10 = *v14;
            v82 = v6 + 64;
            v15 = 72;
            while (v10)
            {
              v86 = __clz(__rbit64(v10));
              v10 &= v10 - 1;
LABEL_89:
              v89 = v86 | (a1 << 6);
              v90 = *(v7 + 56);
              v91 = (*(v7 + 48) + 16 * v89);
              v5 = *v91;
              v7 = v91[1];
              outlined init with copy of AttributedString._AttributeValue(v90 + 72 * v89, &v129);
              v125 = v130[1];
              v126 = v130[2];
              v127 = v131;
              v123 = v129;
              v124 = v130[0];
              Hasher.init(_seed:)();

              String.hash(into:)();
              v92 = Hasher._finalize()();
              v93 = -1 << *(v6 + 32);
              v94 = v92 & ~v93;
              v95 = v94 >> 6;
              if (((-1 << v94) & ~*(v82 + 8 * (v94 >> 6))) == 0)
              {
                v96 = 0;
                v97 = (63 - v93) >> 6;
                while (++v95 != v97 || (v96 & 1) == 0)
                {
                  v98 = v95 == v97;
                  if (v95 == v97)
                  {
                    v95 = 0;
                  }

                  v96 |= v98;
                  v99 = *(v82 + 8 * v95);
                  if (v99 != -1)
                  {
                    v83 = __clz(__rbit64(~v99)) + (v95 << 6);
                    goto LABEL_81;
                  }
                }

                goto LABEL_112;
              }

              v83 = __clz(__rbit64((-1 << v94) & ~*(v82 + 8 * (v94 >> 6)))) | v94 & 0x7FFFFFFFFFFFFFC0;
LABEL_81:
              *(v82 + ((v83 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v83;
              v84 = (*(v6 + 48) + 16 * v83);
              *v84 = v5;
              v84[1] = v7;
              v85 = *(v6 + 56) + 72 * v83;
              *(v85 + 16) = v124;
              *(v85 + 32) = v125;
              *(v85 + 48) = v126;
              *(v85 + 64) = v127;
              *v85 = v123;
              ++*(v6 + 16);
              *&v118 = v118 - 1;
              v7 = v117;
              if (!v118)
              {
                goto LABEL_76;
              }
            }

            v87 = a1;
            while (1)
            {
              a1 = v87 + 1;
              if (__OFADD__(v87, 1))
              {
                break;
              }

              if (a1 >= v108)
              {
                goto LABEL_76;
              }

              v88 = *(v14 + 8 * a1);
              ++v87;
              if (v88)
              {
                v86 = __clz(__rbit64(v88));
                v10 = (v88 - 1) & v88;
                goto LABEL_89;
              }
            }

LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
            goto LABEL_114;
          }

          v65 = __clz(__rbit64(v5));
          v5 &= v5 - 1;
LABEL_58:
          v10 = v65 | (v62 << 6);
          v68 = *(v7 + 56);
          v69 = (*(v7 + 48) + 16 * v10);
          v71 = *v69;
          v70 = v69[1];
          outlined init with copy of AttributedString._AttributeValue(v68 + 72 * v10, v132);
          *&v129 = v71;
          *(&v129 + 1) = v70;
          outlined init with copy of AttributedString._AttributeValue(v132, v130);
          outlined init with copy of FloatingPointRoundingRule?(&v129, &v123, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);

          LODWORD(v70) = v128;
          outlined destroy of AttributedString._AttributeValue(&v124);
          if (v70 == 1)
          {
            break;
          }

          outlined destroy of TermOfAddress?(&v129, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);
          outlined destroy of AttributedString._AttributeValue(v132);
          v14 = v116;
          v7 = v117;
        }

        outlined init with copy of FloatingPointRoundingRule?(&v129, &v120, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);

        v72 = v122;
        if (v122)
        {
          break;
        }

        v14 = v116;
        v7 = v117;
LABEL_65:
        outlined destroy of TermOfAddress?(&v129, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);
        outlined destroy of AttributedString._AttributeValue(v132);
        outlined destroy of AttributedString._AttributeValue(v121);
        *(v14 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
        v79 = __OFADD__(v118, 1);
        *&v118 = v118 + 1;
        if (v79)
        {
          goto LABEL_116;
        }
      }

      v14 = v116;
      if (!*(v122 + 16))
      {
        v7 = v117;
        goto LABEL_65;
      }

      Hasher.init(_seed:)();
      MEMORY[0x1865CD060](0);
      v73 = Hasher._finalize()();
      v74 = v72 + 56;
      v75 = -1 << *(v72 + 32);
      v76 = v73 & ~v75;
      if (((*(v72 + 56 + ((v76 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v76) & 1) == 0)
      {
        v7 = v117;
        goto LABEL_65;
      }

      v77 = ~v75;
      v78 = *(v72 + 48);
      v7 = v117;
      while (*(v78 + 16 * v76 + 8))
      {
        v76 = (v76 + 1) & v77;
        if (((*(v74 + ((v76 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v76) & 1) == 0)
        {
          goto LABEL_65;
        }
      }

      outlined destroy of TermOfAddress?(&v129, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);
      outlined destroy of AttributedString._AttributeValue(v132);
      outlined destroy of AttributedString._AttributeValue(v121);
    }
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_46;
  }

LABEL_123:
  v104 = swift_slowAlloc();

  v105 = v107;
  _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySS10Foundation16AttributedStringV15_AttributeValueVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab24VKXEfU_SS_10Foundation16jk4V15_lM4VTG5AMxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSALIsgnndzo_Tf1nc_n(v104, v108, v7, closure #1 in AttributedString._AttributeStorage.attributesForAddedText());
  if (!v105)
  {
    v6 = v106;

    MEMORY[0x1865D2690](v104, -1, -1);
    a1 = v111;
    v8 = v113;
    v37 = v115;
LABEL_77:

    v36 = swift_bridgeObjectRelease_n();
    goto LABEL_78;
  }

  result = MEMORY[0x1865D2690](v104, -1, -1);
  __break(1u);
  return result;
}

void closure #1 in AttributedString.UnicodeScalarView._replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MEMORY[0x1EEE9AC00](a1);
  if (*v10 == 1)
  {
    (*(v8 + 16))(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v6, a5, v9);
    BigSubstring.UnicodeScalarView.replaceSubrange<A>(_:with:)();
  }
}

__n128 protocol witness for RangeReplaceableCollection.init() in conformance AttributedString.UnicodeScalarView@<Q0>(uint64_t a1@<X8>)
{
  BigString.init()();
  *&v10[0] = 0;
  MEMORY[0x1865D26B0](v10, 8);
  v2 = *&v10[0];
  type metadata accessor for AttributedString.Guts();
  v3 = swift_allocObject();
  if ((BigString.isEmpty.getter() & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (one-time initialization token for _nextVersion != -1)
  {
LABEL_5:
    swift_once();
  }

  add_explicit = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
  *(v3 + 24) = v7;
  *(v3 + 16) = add_explicit;
  *(v3 + 40) = v8;
  *(v3 + 56) = v9;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
  *(v3 + 88) = 0;
  *(v3 + 96) = v2;
  *(v3 + 104) = MEMORY[0x1E69E7CC0];
  AttributedString.UnicodeScalarView.init(_:)(v3, v10);
  v5 = v10[3];
  *(a1 + 32) = v10[2];
  *(a1 + 48) = v5;
  *(a1 + 64) = v10[4];
  result = v10[1];
  *a1 = v10[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t protocol witness for RangeReplaceableCollection.replaceSubrange<A>(_:with:) in conformance AttributedString.UnicodeScalarView(void *a1, __int128 *a2, ValueMetadata *a3, void *a4)
{
  AttributedString.UnicodeScalarView.replaceSubrange<A>(_:with:)(a1, a2, a3, a4);
  v6 = *(a3[-1].Description + 1);

  return v6(a2, a3);
}

void *protocol witness for RangeReplaceableCollection.insert(_:at:) in conformance AttributedString.UnicodeScalarView(int *a1, void *a2)
{
  v2 = *a1;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v8[0] = *a2;
  v8[1] = v3;
  v8[2] = v4;
  v8[3] = v5;
  v8[4] = v6;
  v8[5] = v8[0];
  v8[6] = v3;
  v8[7] = v4;
  v8[8] = v5;
  v8[9] = v6;
  return specialized AttributedString.UnicodeScalarView.replaceSubrange<A>(_:with:)(v8, v2);
}

uint64_t protocol witness for RangeReplaceableCollection.insert<A>(contentsOf:at:) in conformance AttributedString.UnicodeScalarView(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v6;
  v10 = *(a2 + 32);
  specialized RangeReplaceableCollection.insert<A>(contentsOf:at:)(a1, v9, a3, a4);
  v7 = *(*(a3 - 8) + 8);

  return v7(a1, a3);
}

void *protocol witness for RangeReplaceableCollection.remove(at:) in conformance AttributedString.UnicodeScalarView@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v6 = *(a1 + 32);
  result = specialized RangeReplaceableCollection.remove(at:)(v5);
  *a2 = result;
  return result;
}

void *protocol witness for RangeReplaceableCollection.removeSubrange(_:) in conformance AttributedString.UnicodeScalarView(_OWORD *a1)
{
  v1 = a1[3];
  v4[2] = a1[2];
  v4[3] = v1;
  v4[4] = a1[4];
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  return specialized AttributedString.UnicodeScalarView.replaceSubrange<A>(_:with:)(v4);
}

void protocol witness for RangeReplaceableCollection.removeFirst() in conformance AttributedString.UnicodeScalarView(_DWORD *a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 40) >> 10;
  if (v3 >> 10 == v4)
  {
    __break(1u);
  }

  else if (v3 >> 10 < v4)
  {
    swift_unknownObjectRetain();
    v5 = BigString.UnicodeScalarView.subscript.getter();
    swift_unknownObjectRelease();
    specialized RangeReplaceableCollection.removeFirst(_:)(1);
    *a1 = v5;
    return;
  }

  __break(1u);
}

uint64_t lazy protocol witness table accessor for type DefaultIndices<AttributedString.UnicodeScalarView> and conformance <> DefaultIndices<A>(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    lazy protocol witness table accessor for type AttributedString.UnicodeScalarView and conformance AttributedString.UnicodeScalarView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Slice<AttributedString.UnicodeScalarView> and conformance <> Slice<A>()
{
  result = lazy protocol witness table cache variable for type Slice<AttributedString.UnicodeScalarView> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<AttributedString.UnicodeScalarView> and conformance <> Slice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVy10Foundation16AttributedStringV17UnicodeScalarViewVGMd);
    lazy protocol witness table accessor for type AttributedString.UnicodeScalarView and conformance AttributedString.UnicodeScalarView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<AttributedString.UnicodeScalarView> and conformance <> Slice<A>);
  }

  return result;
}

uint64_t *specialized RangeReplaceableCollection.append(_:)(unint64_t a1, uint64_t a2)
{
  v3 = v2[6];
  v4 = v2[7];
  v5 = v2[8];
  v6 = *(*v2 + 16);
  v8[0] = v2[5];
  v8[1] = v3;
  v8[2] = v4;
  v8[3] = v5;
  v8[4] = v6;
  v8[5] = v8[0];
  v8[6] = v3;
  v8[7] = v4;
  v8[8] = v5;
  v8[9] = v6;
  return specialized AttributedString.CharacterView.replaceSubrange<A>(_:with:)(v8, a1, a2);
}

unint64_t lazy protocol witness table accessor for type BigSubstring.UnicodeScalarView and conformance BigSubstring.UnicodeScalarView()
{
  result = lazy protocol witness table cache variable for type BigSubstring.UnicodeScalarView and conformance BigSubstring.UnicodeScalarView;
  if (!lazy protocol witness table cache variable for type BigSubstring.UnicodeScalarView and conformance BigSubstring.UnicodeScalarView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BigSubstring.UnicodeScalarView and conformance BigSubstring.UnicodeScalarView);
  }

  return result;
}

uint64_t protocol witness for AttributedStringProtocol.utf8.getter in conformance AttributedString@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = BigString.startIndex.getter();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = BigString.endIndex.getter();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v8;
  a1[4] = v10;
  a1[5] = v11;
  a1[6] = v12;
  a1[7] = v13;
  a1[8] = v14;
  a1[9] = 0;
}

uint64_t AttributedString.utf8.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = BigString.startIndex.getter();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = BigString.endIndex.getter();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v8;
  a1[4] = v10;
  a1[5] = v11;
  a1[6] = v12;
  a1[7] = v13;
  a1[8] = v14;
  a1[9] = 0;
}

uint64_t AttributedSubstring.utf8.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *(a1 + 72) = 0;
  *a1 = v2;
  *(a1 + 8) = *(v1 + 1);
  *(a1 + 24) = *(v1 + 3);
  *(a1 + 40) = *(v1 + 5);
  *(a1 + 56) = *(v1 + 7);
}

__n128 AttributedString.UTF8View.startIndex.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(*v1 + 16);
  result = *(v1 + 8);
  v4 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 AttributedString.UTF8View.endIndex.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(*v1 + 16);
  result = *(v1 + 40);
  v4 = *(v1 + 56);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

uint64_t AttributedString.UTF8View.count.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v8[0] = *(*v0 + 24);
  v8[1] = v2;
  v3 = *(v1 + 56);
  v4 = *(v0 + 7);
  v5 = *(v0 + 3);
  v11 = *(v0 + 5);
  v12 = v4;
  v6 = *(v0 + 1);
  v8[2] = v3;
  v9 = v6;
  v10 = v5;
  swift_unknownObjectRetain();
  result = outlined destroy of BigSubstring.UTF8View(v8);
  if (v11 >> 10 >= v9 >> 10)
  {
    return (v11 >> 11) - (v9 >> 11);
  }

  __break(1u);
  return result;
}

void *AttributedString.UTF8View.index(before:)@<X0>(void *result@<X0>, unint64_t *a2@<X8>)
{
  v4 = v2[1] >> 10;
  v5 = *result >> 10;
  if (v4 < v5 && v2[5] >> 10 >= v5)
  {
    v7 = *v2;
    swift_unknownObjectRetain();
    v8 = BigString.UTF8View.index(before:)();
    v10 = v9;
    v12 = v11;
    v14 = v13;
    result = swift_unknownObjectRelease();
    if (v4 <= v8 >> 10)
    {
      v15 = *(v7 + 16);
      *a2 = v8;
      a2[1] = v10;
      a2[2] = v12;
      a2[3] = v14;
      a2[4] = v15;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *AttributedString.UTF8View.index(after:)@<X0>(void *result@<X0>, unint64_t *a2@<X8>)
{
  v4 = *result >> 10;
  v5 = v2[5] >> 10;
  if (v4 < v2[1] >> 10 || v4 >= v5)
  {
    __break(1u);
  }

  else
  {
    v7 = *v2;
    swift_unknownObjectRetain();
    v8 = BigString.UTF8View.index(after:)();
    v10 = v9;
    v12 = v11;
    v14 = v13;
    result = swift_unknownObjectRelease();
    if (v5 >= v8 >> 10)
    {
      v15 = *(v7 + 16);
      *a2 = v8;
      a2[1] = v10;
      a2[2] = v12;
      a2[3] = v14;
      a2[4] = v15;
      return result;
    }
  }

  __break(1u);
  return result;
}

void *AttributedString.UTF8View.index(_:offsetBy:)@<X0>(void *result@<X0>, unint64_t *a2@<X8>)
{
  v4 = *result >> 10;
  v5 = v2[1] >> 10;
  if (v4 >= v5 && v2[5] >> 10 >= v4)
  {
    v7 = *v2;
    v17 = v2[5] >> 10;
    swift_unknownObjectRetain();
    v8 = BigString.UTF8View.index(_:offsetBy:)();
    v10 = v9;
    v12 = v11;
    v14 = v13;
    result = swift_unknownObjectRelease();
    if (v8 >> 10 >= v5 && v17 >= v8 >> 10)
    {
      v16 = *(v7 + 16);
      *a2 = v8;
      a2[1] = v10;
      a2[2] = v12;
      a2[3] = v14;
      a2[4] = v16;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *AttributedString.UTF8View.index(_:offsetBy:limitedBy:)@<X0>(void *result@<X0>, void *a2@<X2>, unint64_t *a3@<X8>)
{
  v5 = *result >> 10;
  v6 = v3[1] >> 10;
  v7 = v3[5] >> 10;
  v8 = *a2 >> 10;
  if (v7 >= v8 && v8 >= v6 && v5 >= v6 && v7 >= v5)
  {
    v12 = *v3;
    v21 = v3[5] >> 10;
    swift_unknownObjectRetain();
    v13 = BigString.UTF8View.index(_:offsetBy:limitedBy:)();
    v15 = v14;
    v17 = v16;
    v19 = v18;
    result = swift_unknownObjectRelease();
    if (v19 == 2)
    {
      v20 = 0;
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      a3[3] = 2;
    }

    else
    {
      if (v13 >> 10 < v6 || v21 < v13 >> 10)
      {
        goto LABEL_18;
      }

      v20 = *(v12 + 16);
      *a3 = v13;
      a3[1] = v15;
      a3[2] = v17;
      a3[3] = v19;
    }

    a3[4] = v20;
    return result;
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

void *AttributedString.UTF8View.distance(from:to:)(void *result, void *a2)
{
  v3 = *result >> 10;
  v4 = *(v2 + 8) >> 10;
  v5 = *(v2 + 40) >> 10;
  v6 = *a2 >> 10;
  if (v5 >= v6 && v6 >= v4 && v3 >= v4 && v5 >= v3)
  {
    return ((*a2 >> 11) - (*result >> 11));
  }

  __break(1u);
  return result;
}

void *AttributedString.UTF8View.subscript.getter(void *result)
{
  v2 = *result >> 10;
  if (v2 < *(v1 + 8) >> 10 || v2 >= *(v1 + 40) >> 10)
  {
    __break(1u);
  }

  else
  {
    swift_unknownObjectRetain();
    v4 = BigString.UTF8View.subscript.getter();
    swift_unknownObjectRelease();
    return v4;
  }

  return result;
}

uint64_t AttributedString.UTF8View.subscript.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *(result + 40);
  v5 = *result >> 10;
  v6 = v2[1] >> 10;
  v7 = v2[5] >> 10;
  if (v7 >= v4 >> 10 && v4 >> 10 >= v6 && v5 >= v6 && v7 >= v5)
  {
    v11 = *(result + 64);
    v12 = *(result + 24);
    *a2 = *v2;
    *(a2 + 8) = v3;
    *(a2 + 16) = *(result + 8);
    *(a2 + 32) = v12;
    *(a2 + 40) = v4;
    *(a2 + 48) = *(result + 48);
    *(a2 + 64) = v11;
    *(a2 + 72) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributedString.UTF8View and conformance AttributedString.UTF8View()
{
  result = lazy protocol witness table cache variable for type AttributedString.UTF8View and conformance AttributedString.UTF8View;
  if (!lazy protocol witness table cache variable for type AttributedString.UTF8View and conformance AttributedString.UTF8View)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.UTF8View and conformance AttributedString.UTF8View);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString.UTF8View and conformance AttributedString.UTF8View;
  if (!lazy protocol witness table cache variable for type AttributedString.UTF8View and conformance AttributedString.UTF8View)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.UTF8View and conformance AttributedString.UTF8View);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString.UTF8View and conformance AttributedString.UTF8View;
  if (!lazy protocol witness table cache variable for type AttributedString.UTF8View and conformance AttributedString.UTF8View)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.UTF8View and conformance AttributedString.UTF8View);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DefaultIndices<AttributedString.UTF8View> and conformance <> DefaultIndices<A>()
{
  result = lazy protocol witness table cache variable for type DefaultIndices<AttributedString.UTF8View> and conformance <> DefaultIndices<A>;
  if (!lazy protocol witness table cache variable for type DefaultIndices<AttributedString.UTF8View> and conformance <> DefaultIndices<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSIy10Foundation16AttributedStringV8UTF8ViewVGMd);
    lazy protocol witness table accessor for type AttributedString.UTF8View and conformance AttributedString.UTF8View();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultIndices<AttributedString.UTF8View> and conformance <> DefaultIndices<A>);
  }

  return result;
}

unint64_t *protocol witness for BidirectionalCollection.formIndex(before:) in conformance AttributedString.UTF8View(unint64_t *result)
{
  v2 = v1[1] >> 10;
  v3 = *result >> 10;
  if (v2 < v3 && v1[5] >> 10 >= v3)
  {
    v5 = result;
    v6 = *v1;
    swift_unknownObjectRetain();
    v7 = BigString.UTF8View.index(before:)();
    v9 = v8;
    v11 = v10;
    v13 = v12;
    result = swift_unknownObjectRelease();
    if (v2 <= v7 >> 10)
    {
      v14 = *(v6 + 16);
      *v5 = v7;
      v5[1] = v9;
      v5[2] = v11;
      v5[3] = v13;
      v5[4] = v14;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance AttributedString.UTF8View(void (**a1)(void **a1), void *a2))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x31uLL);
  }

  v6 = result;
  *a1 = result;
  v7 = *a2 >> 10;
  if (v7 < v2[1] >> 10 || v7 >= v2[5] >> 10)
  {
    __break(1u);
  }

  else
  {
    v9 = *(*v2 + 40);
    v10 = *(*v2 + 56);
    *result = *(*v2 + 24);
    *(result + 1) = v9;
    *(result + 2) = v10;
    swift_unknownObjectRetain();
    v11 = BigString.UTF8View.subscript.getter();
    swift_unknownObjectRelease();
    *(v6 + 48) = v11;
    return protocol witness for Collection.subscript.read in conformance AttributedString.UnicodeScalarView;
  }

  return result;
}

uint64_t protocol witness for Collection.indices.getter in conformance AttributedString.UTF8View@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[3];
  *&v10[32] = v1[2];
  *&v10[48] = v2;
  *&v10[64] = v1[4];
  v3 = *&v10[64];
  v5 = v1[1];
  *v10 = *v1;
  v4 = *v10;
  *&v10[16] = v5;
  *(a1 + 32) = *&v10[32];
  *(a1 + 48) = v2;
  *a1 = v4;
  *(a1 + 16) = v5;
  v6 = *(*v10 + 16);
  v7 = *&v10[8];
  *(a1 + 64) = v3;
  *(a1 + 80) = v7;
  *(a1 + 96) = *&v10[24];
  *(a1 + 112) = v6;
  *(a1 + 120) = *&v10[40];
  *(a1 + 136) = *&v10[56];
  *(a1 + 152) = v6;
  return outlined init with copy of AttributedString.UTF8View(v10, &v9);
}

unint64_t *protocol witness for Collection.formIndex(after:) in conformance AttributedString.UTF8View(unint64_t *result)
{
  v2 = *result >> 10;
  v3 = v1[5] >> 10;
  if (v2 < v1[1] >> 10 || v2 >= v3)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    v6 = *v1;
    swift_unknownObjectRetain();
    v7 = BigString.UTF8View.index(after:)();
    v9 = v8;
    v11 = v10;
    v13 = v12;
    result = swift_unknownObjectRelease();
    if (v3 >= v7 >> 10)
    {
      v14 = *(v6 + 16);
      *v5 = v7;
      v5[1] = v9;
      v5[2] = v11;
      v5[3] = v13;
      v5[4] = v14;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance AttributedString.UTF8View()
{
  v1 = v0[3];
  v5[2] = v0[2];
  v5[3] = v1;
  v5[4] = v0[4];
  v2 = v0[1];
  v5[0] = *v0;
  v5[1] = v2;
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(v5);
  outlined destroy of AttributedString.UTF8View(v5);
  return v3;
}

uint64_t protocol witness for AttributedStringProtocol.utf8.getter in conformance AttributedSubstring@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *(a1 + 72) = 0;
  *a1 = v2;
  *(a1 + 8) = *(v1 + 1);
  *(a1 + 24) = *(v1 + 3);
  *(a1 + 40) = *(v1 + 5);
  *(a1 + 56) = *(v1 + 7);
}

uint64_t AttributedString.utf16.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = BigString.startIndex.getter();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = BigString.endIndex.getter();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v8;
  a1[4] = v10;
  a1[5] = v11;
  a1[6] = v12;
  a1[7] = v13;
  a1[8] = v14;
  a1[9] = 0;
}

uint64_t AttributedSubstring.utf16.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *(a1 + 72) = 0;
  *a1 = v2;
  *(a1 + 8) = *(v1 + 1);
  *(a1 + 24) = *(v1 + 3);
  *(a1 + 40) = *(v1 + 5);
  *(a1 + 56) = *(v1 + 7);
}

__n128 AttributedString.UTF16View.startIndex.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(*v1 + 16);
  result = *(v1 + 8);
  v4 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 AttributedString.UTF16View.endIndex.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(*v1 + 16);
  result = *(v1 + 40);
  v4 = *(v1 + 56);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

uint64_t AttributedString.UTF16View.count.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v9[0] = *(*v0 + 24);
  v9[1] = v2;
  v3 = *(v1 + 56);
  v4 = *(v0 + 7);
  v5 = *(v0 + 3);
  v9[5] = *(v0 + 5);
  v9[6] = v4;
  v6 = *(v0 + 1);
  v9[2] = v3;
  v9[3] = v6;
  v9[4] = v5;
  swift_unknownObjectRetain();
  v7 = BigSubstring.UTF16View.count.getter();
  outlined destroy of BigSubstring.UTF16View(v9);
  return v7;
}

void *AttributedString.UTF16View.index(before:)@<X0>(void *result@<X0>, unint64_t *a2@<X8>)
{
  v4 = v2[1] >> 10;
  v5 = *result >> 10;
  if (v4 < v5 && v2[5] >> 10 >= v5)
  {
    v7 = *v2;
    swift_unknownObjectRetain();
    v8 = BigString.UTF16View.index(before:)();
    v10 = v9;
    v12 = v11;
    v14 = v13;
    result = swift_unknownObjectRelease();
    if (v4 <= v8 >> 10)
    {
      v15 = *(v7 + 16);
      *a2 = v8;
      a2[1] = v10;
      a2[2] = v12;
      a2[3] = v14;
      a2[4] = v15;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *AttributedString.UTF16View.index(after:)@<X0>(void *result@<X0>, unint64_t *a2@<X8>)
{
  v4 = *result >> 10;
  v5 = v2[5] >> 10;
  if (v4 < v2[1] >> 10 || v4 >= v5)
  {
    __break(1u);
  }

  else
  {
    v7 = *v2;
    swift_unknownObjectRetain();
    v8 = BigString.UTF16View.index(after:)();
    v10 = v9;
    v12 = v11;
    v14 = v13;
    result = swift_unknownObjectRelease();
    if (v5 >= v8 >> 10)
    {
      v15 = *(v7 + 16);
      *a2 = v8;
      a2[1] = v10;
      a2[2] = v12;
      a2[3] = v14;
      a2[4] = v15;
      return result;
    }
  }

  __break(1u);
  return result;
}

void *AttributedString.UTF16View.index(_:offsetBy:)@<X0>(void *result@<X0>, unint64_t *a2@<X8>)
{
  v4 = *result >> 10;
  v5 = v2[1] >> 10;
  if (v4 >= v5 && v2[5] >> 10 >= v4)
  {
    v7 = *v2;
    v17 = v2[5] >> 10;
    swift_unknownObjectRetain();
    v8 = BigString.UTF16View.index(_:offsetBy:)();
    v10 = v9;
    v12 = v11;
    v14 = v13;
    result = swift_unknownObjectRelease();
    if (v8 >> 10 >= v5 && v17 >= v8 >> 10)
    {
      v16 = *(v7 + 16);
      *a2 = v8;
      a2[1] = v10;
      a2[2] = v12;
      a2[3] = v14;
      a2[4] = v16;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *AttributedString.UTF16View.index(_:offsetBy:limitedBy:)@<X0>(void *result@<X0>, void *a2@<X2>, unint64_t *a3@<X8>)
{
  v5 = *result >> 10;
  v6 = v3[1] >> 10;
  v7 = v3[5] >> 10;
  v8 = *a2 >> 10;
  if (v7 >= v8 && v8 >= v6 && v5 >= v6 && v7 >= v5)
  {
    v12 = *v3;
    v21 = v3[5] >> 10;
    swift_unknownObjectRetain();
    v13 = BigString.UTF16View.index(_:offsetBy:limitedBy:)();
    v15 = v14;
    v17 = v16;
    v19 = v18;
    result = swift_unknownObjectRelease();
    if (v19 == 2)
    {
      v20 = 0;
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      a3[3] = 2;
    }

    else
    {
      if (v13 >> 10 < v6 || v21 < v13 >> 10)
      {
        goto LABEL_18;
      }

      v20 = *(v12 + 16);
      *a3 = v13;
      a3[1] = v15;
      a3[2] = v17;
      a3[3] = v19;
    }

    a3[4] = v20;
    return result;
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

void *AttributedString.UTF16View.distance(from:to:)(void *result, void *a2)
{
  v3 = *result >> 10;
  v4 = *(v2 + 8) >> 10;
  v5 = *(v2 + 40) >> 10;
  v6 = *a2 >> 10;
  if (v5 >= v6 && v6 >= v4 && v3 >= v4 && v5 >= v3)
  {
    swift_unknownObjectRetain();
    v10 = BigString.UTF16View.distance(from:to:)();
    swift_unknownObjectRelease();
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *AttributedString.UTF16View.subscript.getter(void *result)
{
  v2 = *result >> 10;
  if (v2 < *(v1 + 8) >> 10 || v2 >= *(v1 + 40) >> 10)
  {
    __break(1u);
  }

  else
  {
    swift_unknownObjectRetain();
    v4 = BigString.UTF16View.subscript.getter();
    swift_unknownObjectRelease();
    return v4;
  }

  return result;
}

uint64_t AttributedString.UTF16View.subscript.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *(result + 40);
  v5 = *result >> 10;
  v6 = v2[1] >> 10;
  v7 = v2[5] >> 10;
  if (v7 >= v4 >> 10 && v4 >> 10 >= v6 && v5 >= v6 && v7 >= v5)
  {
    v11 = *(result + 64);
    v12 = *(result + 24);
    *a2 = *v2;
    *(a2 + 8) = v3;
    *(a2 + 16) = *(result + 8);
    *(a2 + 32) = v12;
    *(a2 + 40) = v4;
    *(a2 + 48) = *(result + 48);
    *(a2 + 64) = v11;
    *(a2 + 72) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributedString.UTF16View and conformance AttributedString.UTF16View()
{
  result = lazy protocol witness table cache variable for type AttributedString.UTF16View and conformance AttributedString.UTF16View;
  if (!lazy protocol witness table cache variable for type AttributedString.UTF16View and conformance AttributedString.UTF16View)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.UTF16View and conformance AttributedString.UTF16View);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString.UTF16View and conformance AttributedString.UTF16View;
  if (!lazy protocol witness table cache variable for type AttributedString.UTF16View and conformance AttributedString.UTF16View)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.UTF16View and conformance AttributedString.UTF16View);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString.UTF16View and conformance AttributedString.UTF16View;
  if (!lazy protocol witness table cache variable for type AttributedString.UTF16View and conformance AttributedString.UTF16View)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.UTF16View and conformance AttributedString.UTF16View);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DefaultIndices<AttributedString.UTF16View> and conformance <> DefaultIndices<A>()
{
  result = lazy protocol witness table cache variable for type DefaultIndices<AttributedString.UTF16View> and conformance <> DefaultIndices<A>;
  if (!lazy protocol witness table cache variable for type DefaultIndices<AttributedString.UTF16View> and conformance <> DefaultIndices<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSIy10Foundation16AttributedStringV9UTF16ViewVGMd);
    lazy protocol witness table accessor for type AttributedString.UTF16View and conformance AttributedString.UTF16View();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultIndices<AttributedString.UTF16View> and conformance <> DefaultIndices<A>);
  }

  return result;
}

unint64_t *protocol witness for BidirectionalCollection.formIndex(before:) in conformance AttributedString.UTF16View(unint64_t *result)
{
  v2 = v1[1] >> 10;
  v3 = *result >> 10;
  if (v2 < v3 && v1[5] >> 10 >= v3)
  {
    v5 = result;
    v6 = *v1;
    swift_unknownObjectRetain();
    v7 = BigString.UTF16View.index(before:)();
    v9 = v8;
    v11 = v10;
    v13 = v12;
    result = swift_unknownObjectRelease();
    if (v2 <= v7 >> 10)
    {
      v14 = *(v6 + 16);
      *v5 = v7;
      v5[1] = v9;
      v5[2] = v11;
      v5[3] = v13;
      v5[4] = v14;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance AttributedString.UTF16View(void (**a1)(void **a1), void *a2))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x32uLL);
  }

  v6 = result;
  *a1 = result;
  v7 = *a2 >> 10;
  if (v7 < v2[1] >> 10 || v7 >= v2[5] >> 10)
  {
    __break(1u);
  }

  else
  {
    v9 = *(*v2 + 40);
    v10 = *(*v2 + 56);
    *result = *(*v2 + 24);
    *(result + 1) = v9;
    *(result + 2) = v10;
    swift_unknownObjectRetain();
    v11 = BigString.UTF16View.subscript.getter();
    swift_unknownObjectRelease();
    *(v6 + 24) = v11;
    return protocol witness for Collection.subscript.read in conformance AttributedString.UnicodeScalarView;
  }

  return result;
}

uint64_t protocol witness for Collection.indices.getter in conformance AttributedString.UTF16View@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[3];
  *&v10[32] = v1[2];
  *&v10[48] = v2;
  *&v10[64] = v1[4];
  v3 = *&v10[64];
  v5 = v1[1];
  *v10 = *v1;
  v4 = *v10;
  *&v10[16] = v5;
  *(a1 + 32) = *&v10[32];
  *(a1 + 48) = v2;
  *a1 = v4;
  *(a1 + 16) = v5;
  v6 = *(*v10 + 16);
  v7 = *&v10[8];
  *(a1 + 64) = v3;
  *(a1 + 80) = v7;
  *(a1 + 96) = *&v10[24];
  *(a1 + 112) = v6;
  *(a1 + 120) = *&v10[40];
  *(a1 + 136) = *&v10[56];
  *(a1 + 152) = v6;
  return outlined init with copy of AttributedString.UTF16View(v10, &v9);
}

unint64_t *protocol witness for Collection.formIndex(after:) in conformance AttributedString.UTF16View(unint64_t *result)
{
  v2 = *result >> 10;
  v3 = v1[5] >> 10;
  if (v2 < v1[1] >> 10 || v2 >= v3)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    v6 = *v1;
    swift_unknownObjectRetain();
    v7 = BigString.UTF16View.index(after:)();
    v9 = v8;
    v11 = v10;
    v13 = v12;
    result = swift_unknownObjectRelease();
    if (v3 >= v7 >> 10)
    {
      v14 = *(v6 + 16);
      *v5 = v7;
      v5[1] = v9;
      v5[2] = v11;
      v5[3] = v13;
      v5[4] = v14;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for Collection.count.getter in conformance AttributedString.UTF16View()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v9[0] = *(*v0 + 24);
  v9[1] = v2;
  v3 = *(v1 + 56);
  v4 = *(v0 + 7);
  v5 = *(v0 + 3);
  v9[5] = *(v0 + 5);
  v9[6] = v4;
  v6 = *(v0 + 1);
  v9[2] = v3;
  v9[3] = v6;
  v9[4] = v5;
  swift_unknownObjectRetain();
  v7 = BigSubstring.UTF16View.count.getter();
  outlined destroy of BigSubstring.UTF16View(v9);
  return v7;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance AttributedString.UTF16View()
{
  v1 = v0[3];
  v5[2] = v0[2];
  v5[3] = v1;
  v5[4] = v0[4];
  v2 = v0[1];
  v5[0] = *v0;
  v5[1] = v2;
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(v5);
  outlined destroy of AttributedString.UTF16View(v5);
  return v3;
}

void _CalendarBridged.copy(changingLocale:changingTimeZone:changingFirstWeekday:changingMinimumDaysInFirstWeek:)(uint64_t *a1, uint64_t *a2, void *a3, char a4, void *a5, char a6)
{
  v10 = *a1;
  v9 = a1[1];
  v12 = *a2;
  v11 = a2[1];
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v13 = *(v6 + 16);
  v14 = [v13 calendarIdentifier];
  static Calendar._fromNSCalendarIdentifier(_:)(v14, v35);

  v15 = LOBYTE(v35[0]);
  if (LOBYTE(v35[0]) == 27)
  {
    __break(1u);
    goto LABEL_26;
  }

  v16 = v10;
  if (!v10)
  {
    v18 = [v13 locale];
    if (v18)
    {
      v19 = v18;
      type metadata accessor for _NSSwiftLocale();
      v20 = swift_dynamicCastClass();
      if (v20)
      {
        v16 = *(v20 + OBJC_IVAR____NSSwiftLocale_locale);
        v9 = *(v20 + OBJC_IVAR____NSSwiftLocale_locale + 8);
        swift_unknownObjectRetain();
      }

      else
      {
        type metadata accessor for _LocaleBridged();
        v16 = swift_allocObject();
        *(v16 + 16) = v19;
        v9 = lazy protocol witness table accessor for type _CalendarBridged and conformance _CalendarBridged(&lazy protocol witness table cache variable for type _LocaleBridged and conformance _LocaleBridged, 255, type metadata accessor for _LocaleBridged);
      }
    }

    else
    {
      v16 = 0;
      v9 = 0;
    }
  }

  if (!v12)
  {
    swift_unknownObjectRetain();
    v21 = [v13 timeZone];
    if (v21)
    {
      v22 = v21;
      type metadata accessor for _NSSwiftTimeZone();
      v23 = swift_dynamicCastClass();
      if (v23)
      {
        v17 = *(v23 + OBJC_IVAR____NSSwiftTimeZone_timeZone);
        v11 = *(v23 + OBJC_IVAR____NSSwiftTimeZone_timeZone + 8);
        swift_unknownObjectRetain();
      }

      else
      {
        type metadata accessor for _TimeZoneBridged();
        v17 = swift_allocObject();
        *(v17 + 16) = v22;
        v11 = lazy protocol witness table accessor for type _CalendarBridged and conformance _CalendarBridged(&lazy protocol witness table cache variable for type _TimeZoneBridged and conformance _TimeZoneBridged, 255, type metadata accessor for _TimeZoneBridged);
      }

      goto LABEL_15;
    }

LABEL_26:
    __break(1u);
    return;
  }

  swift_unknownObjectRetain();
  v17 = v12;
LABEL_15:
  swift_unknownObjectRetain();
  v24 = a3;
  if (a4)
  {
    v24 = [v13 firstWeekday];
  }

  v25 = a5;
  if (a6)
  {
    v25 = [v13 minimumDaysInFirstWeek];
  }

  if (v15 != 7 && v15)
  {
    v26 = type metadata accessor for _CalendarICU();
    v27 = &lazy protocol witness table cache variable for type _CalendarICU and conformance _CalendarICU;
    v28 = type metadata accessor for _CalendarICU;
  }

  else
  {
    v26 = type metadata accessor for _CalendarGregorian();
    v27 = &lazy protocol witness table cache variable for type _CalendarGregorian and conformance _CalendarGregorian;
    v28 = type metadata accessor for _CalendarGregorian;
  }

  v29 = lazy protocol witness table accessor for type _CalendarBridged and conformance _CalendarBridged(v27, 255, v28);
  v36 = v15;
  v35[0] = v17;
  v35[1] = v11;
  v34[0] = v16;
  v34[1] = v9;
  v32 = 0;
  v33 = 1;
  (*(v29 + 16))(&v36, v35, v34, v24, 0, v25, 0, &v32, v26, v29);
}

id _CalendarBridged.localeIdentifier.getter()
{
  v1 = [*(v0 + 16) locale];
  if (v1)
  {
    type metadata accessor for _NSSwiftLocale();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      v3 = *(v2 + OBJC_IVAR____NSSwiftLocale_locale + 8);
      swift_unknownObjectRetain();
    }

    else
    {
      type metadata accessor for _LocaleBridged();
      *(swift_allocObject() + 16) = v1;
      v3 = lazy protocol witness table accessor for type _CalendarBridged and conformance _CalendarBridged(&lazy protocol witness table cache variable for type _LocaleBridged and conformance _LocaleBridged, 255, type metadata accessor for _LocaleBridged);
    }

    ObjectType = swift_getObjectType();
    v1 = (*(v3 + 64))(ObjectType, v3);
    swift_unknownObjectRelease();
  }

  return v1;
}

unint64_t _CalendarBridged.minimumRange(of:)(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation8CalendarV9ComponentOGMd);
  v4 = static _SetStorage.allocate(capacity:)();
  v5 = v4 + 56;
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v2);
  result = Hasher._finalize()();
  v7 = -1 << *(v4 + 32);
  v8 = result & ~v7;
  v9 = v8 >> 6;
  v10 = *(v4 + 56 + 8 * (v8 >> 6));
  v11 = 1 << v8;
  v12 = *(v4 + 48);
  if (((1 << v8) & v10) != 0)
  {
    v13 = ~v7;
    while (*(v12 + v8) != v2)
    {
      v8 = (v8 + 1) & v13;
      v9 = v8 >> 6;
      v10 = *(v5 + 8 * (v8 >> 6));
      v11 = 1 << v8;
      if (((1 << v8) & v10) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    *(v5 + 8 * v9) = v11 | v10;
    *(v12 + v8) = v2;
    v14 = *(v4 + 16);
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      goto LABEL_34;
    }

    *(v4 + 16) = v16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV9ComponentOSo14NSCalendarUnitVGMd);
  v17 = 16;
  v18 = static _DictionaryStorage.allocate(capacity:)();
  v19 = &qword_1EEECDA20;
  do
  {
    v20 = *(v19 - 8);
    v21 = *v19;
    result = specialized __RawDictionaryStorage.find<A>(_:)(v20);
    if (v22)
    {
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    *(v18 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v18[6] + result) = v20;
    *(v18[7] + 8 * result) = v21;
    v23 = v18[2];
    v15 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (v15)
    {
      goto LABEL_30;
    }

    v19 += 2;
    v18[2] = v24;
    --v17;
  }

  while (v17);
  v25 = 0;
  v26 = 0;
  v27 = 1 << *(v4 + 32);
  v28 = *(v4 + 56);
  v29 = -1;
  if (v27 < 64)
  {
    v29 = ~(-1 << v27);
  }

  v30 = v29 & v28;
  v31 = (v27 + 63) >> 6;
  if ((v29 & v28) == 0)
  {
LABEL_15:
    while (1)
    {
      v32 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_31;
      }

      if (v32 >= v31)
      {

        result = [v3 minimumRangeOfUnit_];
        if (result == 0x7FFFFFFFFFFFFFFFLL)
        {
          return 0;
        }

        if (__OFADD__(result, v35))
        {
          goto LABEL_35;
        }

        return result;
      }

      v30 = *(v5 + 8 * v32);
      ++v25;
      if (v30)
      {
        goto LABEL_18;
      }
    }
  }

  while (1)
  {
    v32 = v25;
LABEL_18:
    if (!v18[2])
    {
      break;
    }

    result = specialized __RawDictionaryStorage.find<A>(_:)(*(*(v4 + 48) + (__clz(__rbit64(v30)) | (v32 << 6))));
    if ((v33 & 1) == 0)
    {
      goto LABEL_33;
    }

    v30 &= v30 - 1;
    v34 = *(v18[7] + 8 * result);
    if ((v34 & ~v26) == 0)
    {
      v34 = 0;
    }

    v26 |= v34;
    v25 = v32;
    if (!v30)
    {
      goto LABEL_15;
    }
  }

LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

unint64_t _CalendarBridged.maximumRange(of:)(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation8CalendarV9ComponentOGMd);
  v4 = static _SetStorage.allocate(capacity:)();
  v5 = v4 + 56;
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v2);
  result = Hasher._finalize()();
  v7 = -1 << *(v4 + 32);
  v8 = result & ~v7;
  v9 = v8 >> 6;
  v10 = *(v4 + 56 + 8 * (v8 >> 6));
  v11 = 1 << v8;
  v12 = *(v4 + 48);
  if (((1 << v8) & v10) != 0)
  {
    v13 = ~v7;
    while (*(v12 + v8) != v2)
    {
      v8 = (v8 + 1) & v13;
      v9 = v8 >> 6;
      v10 = *(v5 + 8 * (v8 >> 6));
      v11 = 1 << v8;
      if (((1 << v8) & v10) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    *(v5 + 8 * v9) = v11 | v10;
    *(v12 + v8) = v2;
    v14 = *(v4 + 16);
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      goto LABEL_34;
    }

    *(v4 + 16) = v16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV9ComponentOSo14NSCalendarUnitVGMd);
  v17 = 16;
  v18 = static _DictionaryStorage.allocate(capacity:)();
  v19 = &qword_1EEECD900;
  do
  {
    v20 = *(v19 - 8);
    v21 = *v19;
    result = specialized __RawDictionaryStorage.find<A>(_:)(v20);
    if (v22)
    {
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    *(v18 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v18[6] + result) = v20;
    *(v18[7] + 8 * result) = v21;
    v23 = v18[2];
    v15 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (v15)
    {
      goto LABEL_30;
    }

    v19 += 2;
    v18[2] = v24;
    --v17;
  }

  while (v17);
  v25 = 0;
  v26 = 0;
  v27 = 1 << *(v4 + 32);
  v28 = *(v4 + 56);
  v29 = -1;
  if (v27 < 64)
  {
    v29 = ~(-1 << v27);
  }

  v30 = v29 & v28;
  v31 = (v27 + 63) >> 6;
  if ((v29 & v28) == 0)
  {
LABEL_15:
    while (1)
    {
      v32 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_31;
      }

      if (v32 >= v31)
      {

        result = [v3 maximumRangeOfUnit_];
        if (result == 0x7FFFFFFFFFFFFFFFLL)
        {
          return 0;
        }

        if (__OFADD__(result, v35))
        {
          goto LABEL_35;
        }

        return result;
      }

      v30 = *(v5 + 8 * v32);
      ++v25;
      if (v30)
      {
        goto LABEL_18;
      }
    }
  }

  while (1)
  {
    v32 = v25;
LABEL_18:
    if (!v18[2])
    {
      break;
    }

    result = specialized __RawDictionaryStorage.find<A>(_:)(*(*(v4 + 48) + (__clz(__rbit64(v30)) | (v32 << 6))));
    if ((v33 & 1) == 0)
    {
      goto LABEL_33;
    }

    v30 &= v30 - 1;
    v34 = *(v18[7] + 8 * result);
    if ((v34 & ~v26) == 0)
    {
      v34 = 0;
    }

    v26 |= v34;
    v25 = v32;
    if (!v30)
    {
      goto LABEL_15;
    }
  }

LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

void _CalendarBridged.range(of:in:for:)(unsigned __int8 *a1, unsigned __int8 *a2, double *a3)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  v7 = *(v3 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation8CalendarV9ComponentOGMd);
  v8 = static _SetStorage.allocate(capacity:)();
  v9 = v8 + 56;
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v4);
  v10 = Hasher._finalize()();
  v11 = -1 << *(v8 + 32);
  v12 = v10 & ~v11;
  v13 = v12 >> 6;
  v14 = *(v8 + 56 + 8 * (v12 >> 6));
  v15 = 1 << v12;
  v16 = *(v8 + 48);
  if (((1 << v12) & v14) != 0)
  {
    v17 = ~v11;
    while (*(v16 + v12) != v4)
    {
      v12 = (v12 + 1) & v17;
      v13 = v12 >> 6;
      v14 = *(v9 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    *(v9 + 8 * v13) = v15 | v14;
    *(v16 + v12) = v4;
    v18 = *(v8 + 16);
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_60;
    }

    *(v8 + 16) = v20;
  }

  v77 = v7;
  v21 = 16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV9ComponentOSo14NSCalendarUnitVGMd);
  v22 = static _DictionaryStorage.allocate(capacity:)();
  v23 = &qword_1EEECDD80;
  do
  {
    v24 = *(v23 - 8);
    v25 = *v23;
    v26 = specialized __RawDictionaryStorage.find<A>(_:)(v24);
    if (v27)
    {
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    *(v22 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v26;
    *(v22[6] + v26) = v24;
    *(v22[7] + 8 * v26) = v25;
    v28 = v22[2];
    v19 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (v19)
    {
      goto LABEL_51;
    }

    v23 += 2;
    v22[2] = v29;
    --v21;
  }

  while (v21);
  v30 = 0;
  v31 = 0;
  v32 = 1 << *(v8 + 32);
  v33 = *(v8 + 56);
  v34 = -1;
  if (v32 < 64)
  {
    v34 = ~(-1 << v32);
  }

  v35 = v34 & v33;
  v36 = (v32 + 63) >> 6;
  if ((v34 & v33) != 0)
  {
    do
    {
      v37 = v30;
LABEL_18:
      if (!v22[2])
      {
        goto LABEL_56;
      }

      v38 = specialized __RawDictionaryStorage.find<A>(_:)(*(*(v8 + 48) + (__clz(__rbit64(v35)) | (v37 << 6))));
      if ((v39 & 1) == 0)
      {
        goto LABEL_57;
      }

      v35 &= v35 - 1;
      v40 = *(v22[7] + 8 * v38);
      if ((v40 & ~v31) == 0)
      {
        v40 = 0;
      }

      v31 |= v40;
      v30 = v37;
    }

    while (v35);
  }

  while (1)
  {
    v37 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v37 >= v36)
    {

      v41 = static _SetStorage.allocate(capacity:)();
      v42 = v41 + 56;
      Hasher.init(_seed:)();
      MEMORY[0x1865CD060](v5);
      v43 = Hasher._finalize()();
      v44 = -1 << *(v41 + 32);
      v45 = v43 & ~v44;
      v46 = v45 >> 6;
      v47 = *(v41 + 56 + 8 * (v45 >> 6));
      v48 = 1 << v45;
      v49 = *(v41 + 48);
      if (((1 << v45) & v47) != 0)
      {
        v50 = ~v44;
        while (*(v49 + v45) != v5)
        {
          v45 = (v45 + 1) & v50;
          v46 = v45 >> 6;
          v47 = *(v42 + 8 * (v45 >> 6));
          v48 = 1 << v45;
          if (((1 << v45) & v47) == 0)
          {
            goto LABEL_28;
          }
        }
      }

      else
      {
LABEL_28:
        *(v42 + 8 * v46) = v48 | v47;
        *(v49 + v45) = v5;
        v51 = *(v41 + 16);
        v19 = __OFADD__(v51, 1);
        v52 = v51 + 1;
        if (v19)
        {
          goto LABEL_61;
        }

        *(v41 + 16) = v52;
      }

      v53 = 16;
      v54 = static _DictionaryStorage.allocate(capacity:)();
      v55 = &qword_1EEECDEA0;
      while (1)
      {
        v56 = *(v55 - 8);
        v57 = *v55;
        v58 = specialized __RawDictionaryStorage.find<A>(_:)(v56);
        if (v59)
        {
          goto LABEL_53;
        }

        *(v54 + ((v58 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v58;
        *(v54[6] + v58) = v56;
        *(v54[7] + 8 * v58) = v57;
        v60 = v54[2];
        v19 = __OFADD__(v60, 1);
        v61 = v60 + 1;
        if (v19)
        {
          goto LABEL_54;
        }

        v55 += 2;
        v54[2] = v61;
        if (!--v53)
        {
          v62 = 0;
          v63 = 0;
          v64 = 1 << *(v41 + 32);
          v65 = *(v41 + 56);
          v66 = -1;
          if (v64 < 64)
          {
            v66 = ~(-1 << v64);
          }

          v67 = v66 & v65;
          v68 = (v64 + 63) >> 6;
          if ((v66 & v65) != 0)
          {
            do
            {
              v69 = v62;
LABEL_41:
              if (!v54[2])
              {
                goto LABEL_58;
              }

              v70 = specialized __RawDictionaryStorage.find<A>(_:)(*(*(v41 + 48) + (__clz(__rbit64(v67)) | (v69 << 6))));
              if ((v71 & 1) == 0)
              {
                goto LABEL_59;
              }

              v67 &= v67 - 1;
              v72 = *(v54[7] + 8 * v70);
              if ((v72 & ~v63) == 0)
              {
                v72 = 0;
              }

              v63 |= v72;
              v62 = v69;
            }

            while (v67);
          }

          while (1)
          {
            v69 = v62 + 1;
            if (__OFADD__(v62, 1))
            {
              goto LABEL_55;
            }

            if (v69 >= v68)
            {

              v73 = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate_];
              v74 = [v77 rangeOfUnit:v31 inUnit:v63 forDate:v73];
              v76 = v75;

              if (v74 != 0x7FFFFFFFFFFFFFFFLL && __OFADD__(v74, v76))
              {
                goto LABEL_62;
              }

              return;
            }

            v67 = *(v42 + 8 * v69);
            ++v62;
            if (v67)
            {
              goto LABEL_41;
            }
          }
        }
      }
    }

    v35 = *(v9 + 8 * v37);
    ++v30;
    if (v35)
    {
      goto LABEL_18;
    }
  }

LABEL_52:
  __break(1u);
LABEL_53:
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
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
}

Foundation::DateInterval_optional __swiftcall _CalendarBridged.dateInterval(of:for:)(Foundation::Calendar::Component of, Foundation::Date a2)
{
  v5 = v3;
  v56[1] = *MEMORY[0x1E69E9840];
  v6 = *of;
  v7 = *v2;
  v56[0] = 0;
  v8 = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate_];
  v9 = *(v4 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation8CalendarV9ComponentOGMd);
  v10 = static _SetStorage.allocate(capacity:)();
  v11 = v10 + 56;
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v6);
  v12 = Hasher._finalize()();
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  v15 = v14 >> 6;
  v16 = *(v10 + 56 + 8 * (v14 >> 6));
  v17 = 1 << v14;
  v18 = *(v10 + 48);
  if (((1 << v14) & v16) != 0)
  {
    v19 = ~v13;
    while (*(v18 + v14) != v6)
    {
      v14 = (v14 + 1) & v19;
      v15 = v14 >> 6;
      v16 = *(v11 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    *(v11 + 8 * v15) = v17 | v16;
    *(v18 + v14) = v6;
    v20 = *(v10 + 16);
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    *(v10 + 16) = v22;
  }

  v53 = v9;
  v54 = v5;
  v23 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV9ComponentOSo14NSCalendarUnitVGMd);
  v24 = 16;
  v25 = static _DictionaryStorage.allocate(capacity:)();
  v26 = &qword_1EEECDC60;
  do
  {
    v27 = *(v26 - 8);
    v28 = *v26;
    v29 = specialized __RawDictionaryStorage.find<A>(_:)(v27);
    if (v30)
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
      goto LABEL_35;
    }

    *(v25 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v29;
    *(v25[6] + v29) = v27;
    *(v25[7] + 8 * v29) = v28;
    v31 = v25[2];
    v21 = __OFADD__(v31, 1);
    v32 = v31 + 1;
    if (v21)
    {
      goto LABEL_31;
    }

    v26 += 2;
    v25[2] = v32;
    --v24;
  }

  while (v24);
  v33 = 0;
  v34 = 0;
  v35 = 1 << *(v10 + 32);
  v36 = *(v10 + 56);
  v37 = -1;
  if (v35 < 64)
  {
    v37 = ~(-1 << v35);
  }

  v38 = v37 & v36;
  v39 = (v35 + 63) >> 6;
  if ((v37 & v36) != 0)
  {
    while (1)
    {
      v40 = v33;
LABEL_18:
      if (!v25[2])
      {
        goto LABEL_33;
      }

      v41 = specialized __RawDictionaryStorage.find<A>(_:)(*(*(v10 + 48) + (__clz(__rbit64(v38)) | (v40 << 6))));
      if ((v42 & 1) == 0)
      {
        goto LABEL_34;
      }

      v38 &= v38 - 1;
      v43 = *(v25[7] + 8 * v41);
      if ((v43 & ~v34) == 0)
      {
        v43 = 0;
      }

      v34 |= v43;
      v33 = v40;
      if (!v38)
      {
        goto LABEL_15;
      }
    }
  }

  while (1)
  {
LABEL_15:
    v40 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      goto LABEL_32;
    }

    if (v40 >= v39)
    {
      break;
    }

    v38 = *(v11 + 8 * v40);
    ++v33;
    if (v38)
    {
      goto LABEL_18;
    }
  }

  v44 = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate_];
  v55[0] = v8;
  v45 = [v53 rangeOfUnit:v34 startDate:v55 interval:v56 forDate:v44];

  v46 = v55[0];
  if ((v45 & 1) == 0)
  {

    *v54 = 0;
    *(v54 + 8) = 0;
    *(v54 + 16) = 1;
    goto LABEL_37;
  }

  if (!v46)
  {
    *v54 = 0;
    *(v54 + 8) = 0;
    *(v54 + 16) = 1;
    goto LABEL_37;
  }

  [v46 timeIntervalSinceReferenceDate];
  v51 = v50;
  v52 = *v56;

  if (v52 < 0.0)
  {
LABEL_36:
    __break(1u);
  }

  *v54 = v51;
  *(v54 + 8) = v52;
  *(v54 + 16) = 0;
LABEL_37:
  result.value.duration = v49;
  result.value.start._time = v48;
  result.is_nil = v47;
  return result;
}

Swift::Int_optional __swiftcall _CalendarBridged.ordinality(of:in:for:)(Foundation::Calendar::Component of, Foundation::Calendar::Component in, Foundation::Date a3)
{
  v5 = *of;
  v6 = *in;
  v7 = *v3;
  v8 = *(v4 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation8CalendarV9ComponentOGMd);
  v9 = static _SetStorage.allocate(capacity:)();
  v10 = v9 + 56;
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v5);
  v11 = Hasher._finalize()();
  v13 = -1 << *(v9 + 32);
  v14 = v11 & ~v13;
  v15 = v14 >> 6;
  v16 = *(v9 + 56 + 8 * (v14 >> 6));
  v17 = 1 << v14;
  v18 = *(v9 + 48);
  if (((1 << v14) & v16) != 0)
  {
    v19 = ~v13;
    while (*(v18 + v14) != v5)
    {
      v14 = (v14 + 1) & v19;
      v15 = v14 >> 6;
      v16 = *(v10 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    *(v10 + 8 * v15) = v17 | v16;
    *(v18 + v14) = v5;
    v20 = *(v9 + 16);
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_60;
    }

    *(v9 + 16) = v22;
  }

  v68 = v8;
  v23 = 16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV9ComponentOSo14NSCalendarUnitVGMd);
  v24 = static _DictionaryStorage.allocate(capacity:)();
  v25 = &qword_1EEED0888;
  do
  {
    v26 = *(v25 - 8);
    v27 = *v25;
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(v26);
    if (v12)
    {
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    *(v24 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v11;
    *(v24[6] + v11) = v26;
    *(v24[7] + 8 * v11) = v27;
    v28 = v24[2];
    v21 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (v21)
    {
      goto LABEL_51;
    }

    v25 += 2;
    v24[2] = v29;
    --v23;
  }

  while (v23);
  v30 = 0;
  v31 = 0;
  v32 = 1 << *(v9 + 32);
  v33 = *(v9 + 56);
  v34 = -1;
  if (v32 < 64)
  {
    v34 = ~(-1 << v32);
  }

  v35 = v34 & v33;
  v36 = (v32 + 63) >> 6;
  if ((v34 & v33) != 0)
  {
    do
    {
      v37 = v30;
LABEL_18:
      if (!v24[2])
      {
        goto LABEL_56;
      }

      v11 = specialized __RawDictionaryStorage.find<A>(_:)(*(*(v9 + 48) + (__clz(__rbit64(v35)) | (v37 << 6))));
      if (!v12)
      {
        goto LABEL_57;
      }

      v35 &= v35 - 1;
      v38 = *(v24[7] + 8 * v11);
      if ((v38 & ~v31) == 0)
      {
        v38 = 0;
      }

      v31 |= v38;
      v30 = v37;
    }

    while (v35);
  }

  while (1)
  {
    v37 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v37 >= v36)
    {

      v39 = static _SetStorage.allocate(capacity:)();
      v40 = v39 + 56;
      Hasher.init(_seed:)();
      MEMORY[0x1865CD060](v6);
      v11 = Hasher._finalize()();
      v41 = -1 << *(v39 + 32);
      v42 = v11 & ~v41;
      v43 = v42 >> 6;
      v44 = *(v39 + 56 + 8 * (v42 >> 6));
      v45 = 1 << v42;
      v46 = *(v39 + 48);
      if (((1 << v42) & v44) != 0)
      {
        v47 = ~v41;
        while (*(v46 + v42) != v6)
        {
          v42 = (v42 + 1) & v47;
          v43 = v42 >> 6;
          v44 = *(v40 + 8 * (v42 >> 6));
          v45 = 1 << v42;
          if (((1 << v42) & v44) == 0)
          {
            goto LABEL_28;
          }
        }
      }

      else
      {
LABEL_28:
        *(v40 + 8 * v43) = v45 | v44;
        *(v46 + v42) = v6;
        v48 = *(v39 + 16);
        v21 = __OFADD__(v48, 1);
        v49 = v48 + 1;
        if (v21)
        {
          goto LABEL_61;
        }

        *(v39 + 16) = v49;
      }

      v50 = 16;
      v51 = static _DictionaryStorage.allocate(capacity:)();
      v52 = &qword_1EEED09A8;
      while (1)
      {
        v53 = *(v52 - 8);
        v54 = *v52;
        v11 = specialized __RawDictionaryStorage.find<A>(_:)(v53);
        if (v12)
        {
          goto LABEL_53;
        }

        *(v51 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v11;
        *(v51[6] + v11) = v53;
        *(v51[7] + 8 * v11) = v54;
        v55 = v51[2];
        v21 = __OFADD__(v55, 1);
        v56 = v55 + 1;
        if (v21)
        {
          goto LABEL_54;
        }

        v52 += 2;
        v51[2] = v56;
        if (!--v50)
        {
          v57 = 0;
          v58 = 0;
          v59 = 1 << *(v39 + 32);
          v60 = *(v39 + 56);
          v61 = -1;
          if (v59 < 64)
          {
            v61 = ~(-1 << v59);
          }

          v62 = v61 & v60;
          v63 = (v59 + 63) >> 6;
          if ((v61 & v60) != 0)
          {
            do
            {
              v64 = v57;
LABEL_41:
              if (!v51[2])
              {
                goto LABEL_58;
              }

              v11 = specialized __RawDictionaryStorage.find<A>(_:)(*(*(v39 + 48) + (__clz(__rbit64(v62)) | (v64 << 6))));
              if (!v12)
              {
                goto LABEL_59;
              }

              v62 &= v62 - 1;
              v65 = *(v51[7] + 8 * v11);
              if ((v65 & ~v58) == 0)
              {
                v65 = 0;
              }

              v58 |= v65;
              v57 = v64;
            }

            while (v62);
          }

          while (1)
          {
            v64 = v57 + 1;
            if (__OFADD__(v57, 1))
            {
              goto LABEL_55;
            }

            if (v64 >= v63)
            {

              v66 = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate_];
              v67 = [v68 ordinalityOfUnit:v31 inUnit:v58 forDate:v66];

              v12 = v67 == 0x7FFFFFFFFFFFFFFFLL;
              if (v67 == 0x7FFFFFFFFFFFFFFFLL)
              {
                v11 = 0;
              }

              else
              {
                v11 = v67;
              }

              goto LABEL_62;
            }

            v62 = *(v40 + 8 * v64);
            ++v57;
            if (v62)
            {
              goto LABEL_41;
            }
          }
        }
      }
    }

    v35 = *(v10 + 8 * v37);
    ++v30;
    if (v35)
    {
      goto LABEL_18;
    }
  }

LABEL_52:
  __break(1u);
LABEL_53:
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
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  result.value = v11;
  result.is_nil = v12;
  return result;
}

void _CalendarBridged.date(byAdding:to:wrappingComponents:)(void *__src@<X0>, double *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  memcpy(v15, __src, sizeof(v15));
  v8 = *a2;
  v9 = *(v4 + 16);
  isa = DateComponents._bridgeToObjectiveC()().super.isa;
  v11 = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate_];
  v12 = [v9 dateByAddingComponents:isa toDate:v11 options:a3 & 1];

  if (v12)
  {
    [v12 timeIntervalSinceReferenceDate];
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  *a4 = v14;
  *(a4 + 8) = v12 == 0;
}

void _CalendarBridged.date(from:)(void *__src@<X0>, uint64_t a2@<X8>)
{
  memcpy(v9, __src, sizeof(v9));
  v4 = *(v2 + 16);
  isa = DateComponents._bridgeToObjectiveC()().super.isa;
  v6 = [v4 dateFromComponents_];

  if (v6)
  {
    [v6 timeIntervalSinceReferenceDate];
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  *(a2 + 8) = v6 == 0;
}

unint64_t _CalendarBridged.dateComponents(_:from:)@<X0>(uint64_t *a1@<X0>, double *a2@<X1>, void *a3@<X8>)
{
  v5 = *a2;
  v6 = *(v3 + 16);
  v30 = *a1;
  v7 = Calendar.ComponentSet.set.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV9ComponentOSo14NSCalendarUnitVGMd);
  v8 = 16;
  v9 = static _DictionaryStorage.allocate(capacity:)();
  v10 = &qword_1EEECDB40;
  do
  {
    v11 = *(v10 - 8);
    v12 = *v10;
    result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
    if (v14)
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v9[6] + result) = v11;
    *(v9[7] + 8 * result) = v12;
    v15 = v9[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      goto LABEL_20;
    }

    v10 += 2;
    v9[2] = v17;
    --v8;
  }

  while (v8);
  v18 = 0;
  v19 = 0;
  v20 = 1 << *(v7 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v7 + 56);
  v23 = (v20 + 63) >> 6;
  if (!v22)
  {
LABEL_9:
    while (1)
    {
      v24 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_21;
      }

      if (v24 >= v23)
      {

        v27 = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate_];
        v28 = [v6 components:v19 fromDate:v27];

        static DateComponents._unconditionallyBridgeFromObjectiveC(_:)(v28, v29);
        return memcpy(a3, v29, 0x11BuLL);
      }

      v22 = *(v7 + 56 + 8 * v24);
      ++v18;
      if (v22)
      {
        goto LABEL_12;
      }
    }
  }

  while (1)
  {
    v24 = v18;
LABEL_12:
    if (!v9[2])
    {
      break;
    }

    result = specialized __RawDictionaryStorage.find<A>(_:)(*(*(v7 + 48) + (__clz(__rbit64(v22)) | (v24 << 6))));
    if ((v25 & 1) == 0)
    {
      goto LABEL_23;
    }

    v22 &= v22 - 1;
    v26 = *(v9[7] + 8 * result);
    if ((v26 & ~v19) == 0)
    {
      v26 = 0;
    }

    v19 |= v26;
    v18 = v24;
    if (!v22)
    {
      goto LABEL_9;
    }
  }

LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

void _CalendarBridged.dateComponents(_:from:in:)(double *a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = *(a2 + 8);
  v7 = *(v3 + 16);
  v8 = [v7 timeZone];
  if (!v8)
  {
    goto LABEL_30;
  }

  v9 = v8;
  type metadata accessor for _NSSwiftTimeZone();
  v10 = swift_dynamicCastClass();
  __dst = a3;
  if (v10)
  {
    v37 = *(v10 + OBJC_IVAR____NSSwiftTimeZone_timeZone + 8);
    swift_unknownObjectRetain();
  }

  else
  {
    type metadata accessor for _TimeZoneBridged();
    *(swift_allocObject() + 16) = v9;
    v37 = lazy protocol witness table accessor for type _CalendarBridged and conformance _CalendarBridged(&lazy protocol witness table cache variable for type _TimeZoneBridged and conformance _TimeZoneBridged, 255, type metadata accessor for _TimeZoneBridged);
  }

  ObjectType = swift_getObjectType();
  v12 = (*(v6 + 128))(ObjectType, v6);
  [v7 setTimeZone_];

  v41 = 0xFFFFLL;
  v13 = Calendar.ComponentSet.set.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV9ComponentOSo14NSCalendarUnitVGMd);
  v14 = 16;
  v15 = static _DictionaryStorage.allocate(capacity:)();
  v16 = &qword_1EEECEBB8;
  do
  {
    v17 = *(v16 - 8);
    v18 = *v16;
    v19 = specialized __RawDictionaryStorage.find<A>(_:)(v17);
    if (v20)
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v19;
    *(v15[6] + v19) = v17;
    *(v15[7] + 8 * v19) = v18;
    v21 = v15[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_26;
    }

    v16 += 2;
    v15[2] = v23;
    --v14;
  }

  while (v14);
  v24 = 0;
  v25 = 0;
  v26 = 1 << *(v13 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(v13 + 56);
  v29 = (v26 + 63) >> 6;
  if (!v28)
  {
LABEL_13:
    while (1)
    {
      v30 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        goto LABEL_27;
      }

      if (v30 >= v29)
      {

        v34 = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate_];
        v35 = [v7 components:v25 fromDate:v34];

        static DateComponents._unconditionallyBridgeFromObjectiveC(_:)(v35, __src);
        memcpy(__dst, __src, 0x11BuLL);
        v36 = swift_getObjectType();
        __dsta = (*(v37 + 128))(v36);
        [v7 setTimeZone_];
        swift_unknownObjectRelease();

        return;
      }

      v28 = *(v13 + 56 + 8 * v30);
      ++v24;
      if (v28)
      {
        goto LABEL_16;
      }
    }
  }

  while (1)
  {
    v30 = v24;
LABEL_16:
    if (!v15[2])
    {
      break;
    }

    v31 = specialized __RawDictionaryStorage.find<A>(_:)(*(*(v13 + 48) + (__clz(__rbit64(v28)) | (v30 << 6))));
    if ((v32 & 1) == 0)
    {
      goto LABEL_29;
    }

    v28 &= v28 - 1;
    v33 = *(v15[7] + 8 * v31);
    if ((v33 & ~v25) == 0)
    {
      v33 = 0;
    }

    v25 |= v33;
    v24 = v30;
    if (!v28)
    {
      goto LABEL_13;
    }
  }

LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

unint64_t _CalendarBridged.dateComponents(_:from:to:)@<X0>(uint64_t *a1@<X0>, double *a2@<X1>, double *a3@<X2>, void *a4@<X8>)
{
  v6 = *a2;
  v7 = *a3;
  v8 = *(v4 + 16);
  v33 = *a1;
  v9 = Calendar.ComponentSet.set.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV9ComponentOSo14NSCalendarUnitVGMd);
  v10 = 16;
  v11 = static _DictionaryStorage.allocate(capacity:)();
  v12 = &qword_1EEECE620;
  do
  {
    v13 = *(v12 - 8);
    v14 = *v12;
    result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
    if (v16)
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    *(v11 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v11[6] + result) = v13;
    *(v11[7] + 8 * result) = v14;
    v17 = v11[2];
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      goto LABEL_20;
    }

    v12 += 2;
    v11[2] = v19;
    --v10;
  }

  while (v10);
  v20 = 0;
  v21 = 0;
  v22 = 1 << *(v9 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v9 + 56);
  v25 = (v22 + 63) >> 6;
  if (!v24)
  {
LABEL_9:
    while (1)
    {
      v26 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_21;
      }

      if (v26 >= v25)
      {

        v29 = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate_];
        v30 = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate_];
        v31 = [v8 components:v21 fromDate:v29 toDate:v30 options:0];

        static DateComponents._unconditionallyBridgeFromObjectiveC(_:)(v31, v32);
        return memcpy(a4, v32, 0x11BuLL);
      }

      v24 = *(v9 + 56 + 8 * v26);
      ++v20;
      if (v24)
      {
        goto LABEL_12;
      }
    }
  }

  while (1)
  {
    v26 = v20;
LABEL_12:
    if (!v11[2])
    {
      break;
    }

    result = specialized __RawDictionaryStorage.find<A>(_:)(*(*(v9 + 48) + (__clz(__rbit64(v24)) | (v26 << 6))));
    if ((v27 & 1) == 0)
    {
      goto LABEL_23;
    }

    v24 &= v24 - 1;
    v28 = *(v11[7] + 8 * result);
    if ((v28 & ~v21) == 0)
    {
      v28 = 0;
    }

    v21 |= v28;
    v20 = v26;
    if (!v24)
    {
      goto LABEL_9;
    }
  }

LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t _CalendarBridged.debugDescription.getter()
{
  v1 = [*(v0 + 16) debugDescription];
  if (!v1)
  {
    v9 = 0xE000000000000000;
    goto LABEL_23;
  }

  v2 = v1;
  isTaggedPointer = _objc_isTaggedPointer(v1);
  v4 = v2;
  v5 = v4;
  if (!isTaggedPointer)
  {
    goto LABEL_7;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v4);
  if (!TaggedPointerTag)
  {
    _CFIndirectTaggedPointerStringGetContents();
    v17 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v18)
    {
      v9 = v18;
      v16 = v17;
    }

    else
    {
      [v5 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v16 = v20;
      v9 = v21;
    }

    goto LABEL_22;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v7 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v9 = v8;

      v1 = v7;
LABEL_23:
      MEMORY[0x1865CB0E0](v1, v9);

      return 0x2064656764697262;
    }

LABEL_7:
    if (__CFStringIsCF())
    {

LABEL_12:
      v1 = 0;
      v9 = 0xE000000000000000;
      goto LABEL_23;
    }

    v10 = v5;
    v11 = String.init(_nativeStorage:)();
    if (v12)
    {
      v9 = v12;
      v13 = v11;

      v1 = v13;
      goto LABEL_23;
    }

    if (![v10 length])
    {

      goto LABEL_12;
    }

    v16 = String.init(_cocoaString:)();
    v9 = v19;
LABEL_22:

    v1 = v16;
    goto LABEL_23;
  }

  result = [v5 UTF8String];
  if (result)
  {
    result = String.init(utf8String:)(result);
    if (v15)
    {
      v16 = result;
      v9 = v15;

      goto LABEL_22;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void protocol witness for _CalendarProtocol.identifier.getter in conformance _CalendarBridged(_BYTE *a1@<X8>)
{
  v3 = [*(v1 + 16) calendarIdentifier];
  static Calendar._fromNSCalendarIdentifier(_:)(v3, &v4);

  if (v4 == 27)
  {
    __break(1u);
  }

  else
  {
    *a1 = v4;
  }
}

void protocol witness for _CalendarProtocol.locale.getter in conformance _CalendarBridged(uint64_t *a1@<X8>)
{
  v3 = [*(v1 + 16) locale];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for _NSSwiftLocale();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = *(v5 + OBJC_IVAR____NSSwiftLocale_locale);
      v7 = *(v5 + OBJC_IVAR____NSSwiftLocale_locale + 8);
      swift_unknownObjectRetain();
    }

    else
    {
      type metadata accessor for _LocaleBridged();
      v6 = swift_allocObject();
      *(v6 + 16) = v4;
      v7 = lazy protocol witness table accessor for type _CalendarBridged and conformance _CalendarBridged(&lazy protocol witness table cache variable for type _LocaleBridged and conformance _LocaleBridged, 255, type metadata accessor for _LocaleBridged);
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  *a1 = v6;
  a1[1] = v7;
}

void protocol witness for _CalendarProtocol.timeZone.getter in conformance _CalendarBridged(uint64_t *a1@<X8>)
{
  v3 = [*(v1 + 16) timeZone];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for _NSSwiftTimeZone();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = *(v5 + OBJC_IVAR____NSSwiftTimeZone_timeZone);
      v7 = *(v5 + OBJC_IVAR____NSSwiftTimeZone_timeZone + 8);
      swift_unknownObjectRetain();
    }

    else
    {
      type metadata accessor for _TimeZoneBridged();
      v6 = swift_allocObject();
      *(v6 + 16) = v4;
      v7 = lazy protocol witness table accessor for type _CalendarBridged and conformance _CalendarBridged(&lazy protocol witness table cache variable for type _TimeZoneBridged and conformance _TimeZoneBridged, 255, type metadata accessor for _TimeZoneBridged);
    }

    *a1 = v6;
    a1[1] = v7;
  }

  else
  {
    __break(1u);
  }
}

id protocol witness for _CalendarProtocol.isDateInWeekend(_:) in conformance _CalendarBridged(double *a1)
{
  v2 = *(v1 + 16);
  v3 = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate_];
  v4 = [v2 isDateInWeekend_];

  return v4;
}

uint64_t protocol witness for _CalendarProtocol.bridgeToNSCalendar() in conformance _CalendarBridged()
{
  [*(v0 + 16) copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for NSCalendar();
  swift_dynamicCast();
  return v2;
}

uint64_t instantiation function for generic protocol witness table for _CalendarBridged(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type _CalendarBridged and conformance _CalendarBridged(&lazy protocol witness table cache variable for type _CalendarBridged and conformance _CalendarBridged, a2, type metadata accessor for _CalendarBridged);
  *(a1 + 8) = result;
  return result;
}

unint64_t type metadata accessor for NSCalendar()
{
  result = lazy cache variable for type metadata for NSCalendar;
  if (!lazy cache variable for type metadata for NSCalendar)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSCalendar);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _CalendarBridged and conformance _CalendarBridged(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _CalendarICU.init(identifier:timeZone:locale:firstWeekday:minimumDaysInFirstWeek:gregorianStartDate:)(unsigned __int8 *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t *a8)
{
  v9 = v8;
  v12 = *a1;
  v13 = *a2;
  v14 = a2[1];
  v15 = *a3;
  v16 = a3[1];
  v17 = *a8;
  v18 = *(a8 + 8);
  *(v9 + 56) = 0;
  *(v9 + 64) = 1;
  *(v9 + 72) = 0;
  *(v9 + 80) = 1;
  *(v9 + 104) = 0;
  *(v9 + 112) = 0;
  *(v9 + 24) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyyt_GMd);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v9 + 16) = v19;
  *(v9 + 104) = v15;
  *(v9 + 112) = v16;
  swift_unknownObjectRetain();
  if (!v13)
  {
    v26 = a6;
    if (one-time initialization token for cache != -1)
    {
      swift_once();
    }

    v20 = static TimeZoneCache.cache;
    os_unfair_lock_lock((static TimeZoneCache.cache + 120));
    if (*(v20 + 32))
    {
      v14 = *(v20 + 40);
      v13 = *(v20 + 32);
    }

    else
    {
      v13 = *(v20 + 16);
      if (v13)
      {
        v14 = *(v20 + 24);
        swift_unknownObjectRetain();
      }

      else
      {
        TimeZoneCache.State.findCurrentTimeZone()(&v32);
        v13 = v32;
        v14 = v33;
        *(v20 + 16) = v32;
        *(v20 + 24) = v14;
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
      }
    }

    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v20 + 120));
    a6 = v26;
  }

  *(v9 + 40) = v13;
  *(v9 + 48) = v14;
  *(v9 + 56) = a4;
  *(v9 + 64) = a5 & 1;
  *(v9 + 72) = a6;
  *(v9 + 80) = a7 & 1;
  *(v9 + 88) = v17;
  *(v9 + 96) = v18;
  v31 = v12;
  v32 = v13;
  v33 = v14;
  if (v15)
  {
    swift_unknownObjectRetain();
  }

  else
  {
    v21 = one-time initialization token for cache;
    v22 = swift_unknownObjectRetain();
    if (v21 != -1)
    {
      v22 = swift_once();
    }

    v23 = static LocaleCache.cache;
    MEMORY[0x1EEE9AC00](v22);
    os_unfair_lock_lock((v23 + 48));
    closure #1 in LocaleCache.fixed(_:)partial apply((v23 + 16), &v29);
    os_unfair_lock_unlock((v23 + 48));
    v15 = v29;
    v16 = v30;
  }

  v29 = v15;
  v30 = v16;
  v24 = specialized static _CalendarICU.icuCalendar(identifier:timeZone:locale:firstWeekday:minimumDaysInFirstWeek:gregorianStartDate:)(&v31, &v32, &v29, a4, a5 & 1, a6, a7 & 1);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  *(v9 + 32) = v24;
  return v9;
}

uint64_t _CalendarICU.preferredFirstWeekday.getter()
{
  if (!*(v0 + 104))
  {
    return 0;
  }

  v1 = v0;
  v2 = *(v0 + 112);
  ObjectType = swift_getObjectType();
  v4 = *(v2 + 464);
  swift_unknownObjectRetain();
  v4(v10, ObjectType, v2);
  swift_unknownObjectRelease();
  v16 = v10[6];
  v17[0] = v11[0];
  *(v17 + 12) = *(v11 + 12);
  v12[2] = v10[2];
  v13 = v10[3];
  v14 = v10[4];
  v15 = v10[5];
  v12[0] = v10[0];
  v12[1] = v10[1];
  if (_s10Foundation17LocalePreferencesVSgWOg(v12) == 1)
  {
    return 0;
  }

  v5 = v13;

  outlined destroy of LocalePreferences?(v10);
  if (!v5)
  {
    return 0;
  }

  if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(*(v1 + 24)), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t _CalendarICU.preferredMinimumDaysInFirstweek.getter()
{
  if (!*(v0 + 104))
  {
    return 0;
  }

  v1 = v0;
  v2 = *(v0 + 112);
  ObjectType = swift_getObjectType();
  v4 = *(v2 + 464);
  swift_unknownObjectRetain();
  v4(v10, ObjectType, v2);
  swift_unknownObjectRelease();
  v16 = v10[6];
  v17[0] = v11[0];
  *(v17 + 12) = *(v11 + 12);
  v12[2] = v10[2];
  v13 = v10[3];
  v14 = v10[4];
  v15 = v10[5];
  v12[0] = v10[0];
  v12[1] = v10[1];
  if (_s10Foundation17LocalePreferencesVSgWOg(v12) == 1)
  {
    return 0;
  }

  v5 = *(&v13 + 1);

  outlined destroy of LocalePreferences?(v10);
  if (!v5)
  {
    return 0;
  }

  if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(*(v1 + 24)), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t _CalendarICU.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 16);

  os_unfair_lock_lock(v4 + 4);

  MEMORY[0x1865CD060](*(v2 + 24));
  v5 = *(v2 + 48);
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 120);
  swift_unknownObjectRetain();
  v7(a1, ObjectType, v5);
  swift_unknownObjectRelease();
  if (*(v2 + 64) == 1)
  {
    Attribute = ucal_getAttribute();
  }

  else
  {
    Attribute = *(v2 + 56);
  }

  MEMORY[0x1865CD060](Attribute);
  if (*(v2 + 80) == 1)
  {
    v9 = ucal_getAttribute();
  }

  else
  {
    v9 = *(v2 + 72);
  }

  MEMORY[0x1865CD060](v9);
  if (*(v2 + 104))
  {
    v10 = *(v2 + 112);
    v11 = swift_getObjectType();
    v12 = *(v10 + 64);
    swift_unknownObjectRetain();
    v12(v11, v10);
    swift_unknownObjectRelease();
  }

  String.hash(into:)();

  v13 = _CalendarICU.preferredFirstWeekday.getter();
  if (v14)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v15 = v13;
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v15);
  }

  v16 = _CalendarICU.preferredMinimumDaysInFirstweek.getter();
  if (v17)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v18 = v16;
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v18);
  }

  v19 = *(v2 + 16);

  os_unfair_lock_unlock(v19 + 4);
}

BOOL _CalendarICU.easyMinMaxRange(of:)(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 > 9)
  {
    if (*a1 > 0xDu)
    {
      if (v1 - 14 >= 2 && v1 - 17 >= 2)
      {
        return 0;
      }

      return 0;
    }

    if (v1 - 10 < 3)
    {
      return 0;
    }

    return 0;
  }

  else
  {
    if (*a1 <= 4u)
    {
      if (v1 >= 4)
      {
        return 0;
      }

      return 0;
    }

    if (*a1 <= 6u)
    {
      return 0;
    }

    else
    {
      if (v1 != 7)
      {
        return v1 != 8;
      }

      return 1;
    }
  }
}

BOOL _CalendarICU.minimumRange(of:)(_BYTE *a1)
{
  v2 = *a1;
  LOBYTE(v9) = *a1;
  v3 = _CalendarICU.easyMinMaxRange(of:)(&v9);
  if ((v4 & 1) == 0)
  {
    return v3;
  }

  v5 = 0;
  switch(v2)
  {
    case 13:
    case 14:
    case 15:
      return v5;
    default:
      v6 = *(v1 + 16);
      MEMORY[0x1EEE9AC00](v3);
      MEMORY[0x1EEE9AC00](v7);
      os_unfair_lock_lock(v6 + 4);
      closure #1 in LockedState<A>.withLock<A>(_:)specialized partial apply(&v9);
      os_unfair_lock_unlock(v6 + 4);
      v5 = v9;
      break;
  }

  return v5;
}

uint64_t closure #1 in _CalendarICU.minimumRange(of:)@<X0>(char a1@<W2>, uint64_t a2@<X8>)
{
  Limit = ucal_getLimit();
  result = ucal_getLimit();
  if (a1 != 2)
  {
LABEL_6:
    v7 = result + 1;
    if (!__OFADD__(result, 1))
    {
      if (v7 >= Limit)
      {
        v6 = Limit;
        goto LABEL_9;
      }

LABEL_13:
      __break(1u);
    }

    goto LABEL_11;
  }

  LODWORD(v6) = Limit + 1;
  if (__OFADD__(Limit, 1))
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = result + 2;
  if (__OFADD__(result, 2))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = v6;
  if (v7 < v6)
  {
    __break(1u);
    goto LABEL_6;
  }

LABEL_9:
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = 0;
  return result;
}

uint64_t _CalendarICU._locked_maximumRange(of:)(unsigned __int8 *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  v8 = *a1;
  result = _CalendarICU.easyMinMaxRange(of:)(&v8);
  if (v3)
  {
    result = 0;
    switch(v1)
    {
      case 13:
      case 14:
      case 15:
        return result;
      default:
        Limit = ucal_getLimit();
        v5 = ucal_getLimit();
        if (v1 == 2)
        {
          v6 = Limit + 1;
          if (!__OFADD__(Limit, 1))
          {
            v7 = v5 + 2;
            if (!__OFADD__(v5, 2))
            {
              result = v6;
              if (v7 >= v6)
              {
                return result;
              }

LABEL_16:
              __break(1u);
            }

            goto LABEL_14;
          }

          __break(1u);
        }

        else if (!__OFADD__(v5, 1))
        {
          if (v5 + 1 >= Limit)
          {
            return Limit;
          }

          goto LABEL_15;
        }

        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
    }
  }

  return result;
}

Swift::Int _CalendarICU._locked_algorithmA(smaller:larger:at:)(char *a1, unsigned __int8 *a2, double *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  v12 = *a2;
  v11 = v5;
  _CalendarICU._locked_dateInterval(of:at:)(&v12, &v11, v13);
  if (v14)
  {
    return 0;
  }

  time = v13[0]._time;
  v6 = v13[1]._time;
  LOBYTE(v11) = v3;
  v12 = v4;
  v13[0]._time = v13[0]._time + 0.1;
  v15 = _CalendarICU._locked_ordinality(of:in:for:)(&v11, &v12, v13[0]);
  if (v15.is_nil)
  {
    return 0;
  }

  value = v15.value;
  LOBYTE(v11) = v3;
  v12 = v4;
  v13[0]._time = v6 + time + -0.1;
  v16 = _CalendarICU._locked_ordinality(of:in:for:)(&v11, &v12, v13[0]);
  if (v16.is_nil)
  {
    return 0;
  }

  v10 = v16.value;
  result = value;
  if (v10 >= value)
  {
    if (__OFADD__(v10, 1))
    {
      __break(1u);
    }

    else if (v10 + 1 >= value)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unsigned __int8 *_CalendarICU._locked_dateInterval(of:at:)@<X0>(unsigned __int8 *result@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = *result;
  v6 = *a2;
  if (one-time initialization token for validCalendarRange != -1)
  {
    result = swift_once();
  }

  v7 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v6)
  {
    v7 = v6;
  }

  if (*&static Date.validCalendarRange >= v7)
  {
    v8 = *&static Date.validCalendarRange;
  }

  else
  {
    v8 = v7;
  }

  if (v5 > 5)
  {
    if (v5 <= 0x12)
    {
      if (((1 << v5) & 0x41E00) != 0)
      {
        goto LABEL_23;
      }

      if (((1 << v5) & 0x3C000) != 0)
      {
LABEL_81:
        *a3 = 0;
        *(a3 + 8) = 0;
        *(a3 + 16) = 1;
        return result;
      }

      if (v5 == 13)
      {
        *a3 = floor(v8 * 1000000000.0) * 0.000000001;
        v9 = 0x3E112E0BE826D695;
LABEL_55:
        *(a3 + 8) = v9;
        *(a3 + 16) = 0;
        return result;
      }
    }

    if ((v5 - 7) >= 2)
    {
      *a3 = floor(v8);
      v9 = 0x3FF0000000000000;
      goto LABEL_55;
    }

    v5 = 3;
LABEL_23:
    LOBYTE(v24) = v5;
    v26 = v8;
    _CalendarICU._locked_setToFirstInstant(of:at:)(&v24);
    v25 = 0;
    ucal_getMillis();
    v17 = v16 / 1000.0 + -978307200.0;
    if (v5 <= 8)
    {
      if (v5 > 1)
      {
        if (v5 != 2 && v5 != 3)
        {
          goto LABEL_47;
        }
      }

      else if (!v5)
      {
        v18 = v16;
        ucal_add();
        result = ucal_getMillis();
        if (v19 == v18)
        {
          *a3 = v17;
          v9 = 0x4290000000000000;
          goto LABEL_55;
        }

        goto LABEL_47;
      }
    }

    else if (v5 <= 10)
    {
      if (v5 == 9)
      {
        ucal_add();
        if (ucal_get() == 12)
        {
          ucal_add();
          v20 = ucal_get();
          if (v20 != ucal_getLimit())
          {
            ucal_set();
          }
        }

        goto LABEL_47;
      }
    }

    else if (v5 != 11 && v5 != 12 && v5 != 18)
    {
      goto LABEL_47;
    }

    ucal_add();
LABEL_47:
    ucal_getLimit();
    ucal_set();
    ucal_getLimit();
    ucal_set();
    ucal_getLimit();
    ucal_set();
    ucal_set();
    v25 = 0;
    ucal_getMillis();
    v22 = v21 / 1000.0 + -978307200.0;
    v24 = v22;
    result = _CalendarICU._locked_timeZoneTransitionInterval(at:)(&v24, &v26);
    if ((v28 & 1) == 0)
    {
      if (v22 - v27 >= v17)
      {
        v23 = v22 - v27 - v17;
        goto LABEL_53;
      }

      __break(1u);
LABEL_88:
      __break(1u);
    }

    if (v17 < v22)
    {
      if (v22 >= v17)
      {
        v23 = v22 - v17;
LABEL_53:
        *a3 = v17;
        *(a3 + 8) = v23;
        *(a3 + 16) = 0;
        return result;
      }

      goto LABEL_88;
    }

    goto LABEL_81;
  }

  if (v5 <= 3)
  {
    if ((v5 - 1) >= 3)
    {
      switch(*(v3 + 24))
      {
        case 1:
          if (v8 < -8.02498752e10)
          {
            goto LABEL_81;
          }

          v10 = xmmword_18121F3A0;
          goto LABEL_86;
        case 2:
        case 0x19:
        case 0x1A:
          if (v8 < -1.46325744e11)
          {
            goto LABEL_81;
          }

          goto LABEL_77;
        case 3:
          if (v8 >= -5.41625184e10)
          {
            v10 = xmmword_18121F3B0;
          }

          else
          {
            v10 = xmmword_18121F3C0;
          }

          goto LABEL_86;
        case 4:
          if (v8 < -2.36439216e11)
          {
            goto LABEL_81;
          }

          if (v8 >= -6.2872416e10)
          {
            v10 = xmmword_18121F330;
          }

          else
          {
            v10 = xmmword_18121F340;
          }

          goto LABEL_86;
        case 5:
          if (v8 < -2.36439216e11)
          {
            goto LABEL_81;
          }

          v10 = xmmword_18121F350;
          goto LABEL_86;
        case 6:
          if (v8 < -1.81778083e11)
          {
            goto LABEL_81;
          }

          v10 = xmmword_18121F370;
          goto LABEL_86;
        case 8:
        case 0x10:
        case 0x11:
        case 0x12:
        case 0x13:
        case 0x14:
        case 0x15:
        case 0x16:
        case 0x17:
        case 0x18:
          if (v8 < -6.06455424e10)
          {
            goto LABEL_81;
          }

          v10 = xmmword_18121F320;
          goto LABEL_86;
        case 9:
        case 0xE:
        case 0xF:
          if (v8 < -4.34999808e10)
          {
            goto LABEL_81;
          }

          v10 = xmmword_18121F390;
          goto LABEL_86;
        case 0xA:
          if (v8 < -4.34998944e10)
          {
            goto LABEL_81;
          }

          v10 = xmmword_18121F380;
          goto LABEL_86;
        case 0xB:
          if (v8 < -4.27909824e10)
          {
            goto LABEL_81;
          }

LABEL_77:
          v5 = 0;
          goto LABEL_23;
        case 0xC:
          if (v8 < -4.3510176e10)
          {
            goto LABEL_81;
          }

          v10 = xmmword_18121F360;
LABEL_86:
          *a3 = v10;
          *(a3 + 16) = 0;
          return result;
        case 0xD:
          if (v8 >= -2808691200.0)
          {
            v10 = xmmword_18121F3D0;
          }

          else
          {
            v10 = xmmword_18121F3E0;
          }

          goto LABEL_86;
        default:
          if (v8 >= -6.3113904e10)
          {
            v10 = xmmword_18121F3F0;
          }

          else
          {
            v10 = xmmword_18121F400;
          }

          goto LABEL_86;
      }
    }

    goto LABEL_23;
  }

  if (v5 == 4)
  {
    v11 = *(v3 + 48);
    ObjectType = swift_getObjectType();
    v26 = v8;
    v13 = *(v11 + 40);
    swift_unknownObjectRetain();
    v14 = v13(&v26, ObjectType, v11);
    result = swift_unknownObjectRelease();
    *(a3 + 8) = 0x40AC200000000000;
    v15 = floor((v8 + v14) / 3600.0) * 3600.0 - v14;
  }

  else
  {
    *(a3 + 8) = 0x404E000000000000;
    v15 = floor(v8 / 60.0) * 60.0;
  }

  *a3 = v15;
  *(a3 + 16) = 0;
  return result;
}

Swift::Int_optional __swiftcall _CalendarICU._locked_ordinality(of:in:for:)(Foundation::Calendar::Component of, Foundation::Calendar::Component in, Foundation::Date a3)
{
  value = 0;
  v184 = *MEMORY[0x1E69E9840];
  LODWORD(v8) = *of;
  v10 = *v9;
  v11 = *v3;
  LOBYTE(v9) = 1;
  if (v10 > 6)
  {
    if (v10 <= 9)
    {
LABEL_27:
      if (v10 == 7)
      {
        goto LABEL_40;
      }

      if (v10 != 9)
      {
        goto LABEL_475;
      }

      value = 0;
      if (v8 <= 6)
      {
        if (v8 > 3)
        {
          if (v8 == 4)
          {
            LODWORD(v179) = 0;
            v181 = 3;
            v180 = 9;
            v182._time = v11;
            v206 = _CalendarICU._locked_ordinality(of:in:for:)(&v181, &v180, a3);
            value = v206.value;
            if (v206.is_nil)
            {
              goto LABEL_400;
            }

            v117 = v206.value - 1;
            if (__OFSUB__(v206.value, 1))
            {
LABEL_555:
              __break(1u);
              goto LABEL_556;
            }

            v118 = 24 * v117;
            if ((v117 * 24) >> 64 != (24 * v117) >> 63)
            {
LABEL_560:
              __break(1u);
              goto LABEL_561;
            }

            v119 = ucal_get();
            v120 = v118 + v119;
            if (__OFADD__(v118, v119))
            {
LABEL_565:
              __break(1u);
              goto LABEL_566;
            }

            value = v120 + 1;
            if (!__OFADD__(v120, 1))
            {
              goto LABEL_474;
            }

            __break(1u);
          }

          else if (v8 != 5)
          {
            LODWORD(v179) = 0;
            v181 = 5;
            v180 = 9;
            v182._time = v11;
            v186 = _CalendarICU._locked_ordinality(of:in:for:)(&v181, &v180, a3);
            value = v186.value;
            if (v186.is_nil)
            {
              goto LABEL_400;
            }

            v14 = v186.value - 1;
            if (__OFSUB__(v186.value, 1))
            {
LABEL_556:
              __break(1u);
              goto LABEL_557;
            }

            v15 = 60 * v14;
            if ((v14 * 60) >> 64 != (60 * v14) >> 63)
            {
LABEL_561:
              __break(1u);
              goto LABEL_562;
            }

            *&of = ucal_get();
            v8 = v15 + of;
            if (__OFADD__(v15, of))
            {
LABEL_566:
              __break(1u);
              goto LABEL_567;
            }

            value = v8 + 1;
            if (!__OFADD__(v8, 1))
            {
              goto LABEL_474;
            }

            __break(1u);
            goto LABEL_40;
          }

          LODWORD(v179) = 0;
          v181 = 4;
          v180 = 9;
          v182._time = v11;
          v207 = _CalendarICU._locked_ordinality(of:in:for:)(&v181, &v180, a3);
          value = v207.value;
          if (v207.is_nil)
          {
            goto LABEL_400;
          }

          v121 = v207.value - 1;
          if (__OFSUB__(v207.value, 1))
          {
LABEL_557:
            __break(1u);
            goto LABEL_558;
          }

          v122 = 60 * v121;
          if ((v121 * 60) >> 64 != (60 * v121) >> 63)
          {
LABEL_562:
            __break(1u);
            goto LABEL_563;
          }

          v123 = ucal_get();
          v124 = v122 + v123;
          if (__OFADD__(v122, v123))
          {
LABEL_567:
            __break(1u);
            goto LABEL_568;
          }

          value = v124 + 1;
          if (!__OFADD__(v124, 1))
          {
            goto LABEL_474;
          }

          __break(1u);
LABEL_355:
          v181 = 11;
          v180 = 1;
          v182._time = v6 / 1000.0 + -978307200.0;
          *&of = _CalendarICU._locked_ordinality(of:in:for:)(&v181, &v180, v182);
          value = of;
          if (v126)
          {
            goto LABEL_400;
          }

          if (*(v4 + 80) == 1)
          {
            *&of = ucal_getAttribute();
            v127 = of;
          }

          else
          {
            v127 = *(v4 + 72);
          }

          if (v5 < v127 || (v49 = __OFSUB__(value, 1), --value, !v49))
          {
            v181 = 11;
            v180 = 1;
            v182._time = v11;
            *&of = _CalendarICU._locked_ordinality(of:in:for:)(&v181, &v180, v125);
            if (v164)
            {
              v165 = 1;
              value = of;
              goto LABEL_475;
            }

            v166 = of - value;
            if (!__OFSUB__(of, value))
            {
              value = v166 + 1;
              if (!__OFADD__(v166, 1))
              {
                goto LABEL_474;
              }

              __break(1u);
LABEL_455:
              v167 = value - 1;
              if (!__OFSUB__(value, 1))
              {
                if ((value - 0x2000000000000001) >> 62 != 3)
                {
LABEL_597:
                  __break(1u);
LABEL_598:
                  __break(1u);
LABEL_599:
                  __break(1u);
LABEL_600:
                  __break(1u);
                  goto LABEL_601;
                }

                value = of + 4 * v167;
                if (__OFADD__(of, 4 * v167))
                {
                  __break(1u);
                  goto LABEL_460;
                }

LABEL_474:
                v178 = 0;
                goto LABEL_475;
              }

LABEL_594:
              __break(1u);
LABEL_595:
              __break(1u);
LABEL_596:
              __break(1u);
              goto LABEL_597;
            }

            goto LABEL_592;
          }

LABEL_591:
          __break(1u);
LABEL_592:
          __break(1u);
LABEL_593:
          __break(1u);
          goto LABEL_594;
        }

        if (v8 == 2)
        {
          LODWORD(v182._time) = 0;
          MEMORY[0x1865D2A80](*(v4 + 32));
          ucal_setMillis();
          v114 = ucal_get();
          if (*(v4 + 24) != 6)
          {
            goto LABEL_408;
          }

          if (v114 <= 0xC)
          {
            v115 = 0;
            v116 = &outlined read-only object #2 of _CalendarICU._locked_ordinality(of:in:for:);
            goto LABEL_410;
          }

          goto LABEL_553;
        }

        if (v8 != 3)
        {
          goto LABEL_475;
        }

        v181 = 9;
        v179 = v11;
        _CalendarICU._locked_start(of:at:)(&v181, &v179, &v182);
        time = v182._time;
        v92 = v183;
        LODWORD(v182._time) = 0;
        MEMORY[0x1865D2A80](*(v4 + 32));
        ucal_setMillis();
        if (v92)
        {
          goto LABEL_399;
        }

        v93 = floor((v11 - time) / 86400.0);
        if ((*&v93 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
LABEL_552:
          __break(1u);
LABEL_553:
          __break(1u);
LABEL_554:
          __break(1u);
          goto LABEL_555;
        }

        if (v93 <= -9.22337204e18)
        {
LABEL_559:
          __break(1u);
          goto LABEL_560;
        }

        if (v93 >= 9.22337204e18)
        {
LABEL_564:
          __break(1u);
          goto LABEL_565;
        }

        v8 = v93;
        value = v93 + 1;
        if (!__OFADD__(v93, 1))
        {
          goto LABEL_474;
        }

        __break(1u);
        goto LABEL_278;
      }

      if ((v8 - 7) < 2)
      {
        v181 = 9;
        v179 = v11;
        _CalendarICU._locked_start(of:at:)(&v181, &v179, &v182);
        if (v183)
        {
          goto LABEL_399;
        }

        v95 = v182._time;
        LODWORD(v179) = 0;
        v181 = 11;
        v180 = 1;
        v182._time = v11;
        v200 = _CalendarICU._locked_ordinality(of:in:for:)(&v181, &v180, v94);
        v27 = v200.value;
        is_nil = v200.is_nil;
        v97 = ucal_get();
        if (is_nil)
        {
          goto LABEL_283;
        }

        v147 = v97;
        LODWORD(v179) = 0;
        MEMORY[0x1865D2A80](*(v4 + 32));
        v148 = (floor(v95) + 978307200.0) * 1000.0;
        ucal_setMillis();
        while (ucal_get() != v147)
        {
          _CalendarICU._locked_add(_:amount:wrap:status:)(5, 1, 0);
          v148 = v149;
        }

        v181 = 11;
        v180 = 1;
        v182._time = v148 / 1000.0 + -978307200.0;
        *&of = _CalendarICU._locked_ordinality(of:in:for:)(&v181, &v180, v182);
        value = of;
        if (v150)
        {
          goto LABEL_400;
        }

        v151 = v27 - of;
        if (!__OFSUB__(v27, of))
        {
          value = v151 + 1;
          if (__OFADD__(v151, 1))
          {
            __break(1u);
            goto LABEL_419;
          }

          goto LABEL_474;
        }

        __break(1u);
        goto LABEL_591;
      }

      if ((v8 - 10) < 2)
      {
        v181 = 9;
        v179 = v11;
        _CalendarICU._locked_start(of:at:)(&v181, &v179, &v182);
        if (v183)
        {
          goto LABEL_399;
        }

        v47 = v182._time;
        LODWORD(v179) = 0;
        MEMORY[0x1865D2A80](*(v4 + 32));
        v6 = (floor(v47) + 978307200.0) * 1000.0;
        ucal_setMillis();
        v5 = 0;
        do
        {
          value = ucal_get();
          if (*(v4 + 64) == 1)
          {
            Attribute = ucal_getAttribute();
          }

          else
          {
            Attribute = *(v4 + 56);
          }

          if (Attribute == value)
          {
            goto LABEL_355;
          }

          _CalendarICU._locked_add(_:amount:wrap:status:)(5, 1, 0);
          v6 = a3._time;
          v49 = __OFADD__(v5++, 1);
        }

        while (!v49);
        __break(1u);
        goto LABEL_159;
      }

      if (v8 != 13)
      {
        goto LABEL_475;
      }

      LOBYTE(v179) = 6;
      v181 = 9;
      v182._time = v11;
      v201 = _CalendarICU._locked_ordinality(of:in:for:)(&v179, &v181, a3);
      value = v201.value;
      if (v201.is_nil)
      {
        goto LABEL_400;
      }

      v99 = (v11 - floor(v11) + v201.value + -1.0) * 1000000000.0;
      if ((*&v99 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_558:
        __break(1u);
        goto LABEL_559;
      }

      if (v99 <= -9.22337204e18)
      {
LABEL_563:
        __break(1u);
        goto LABEL_564;
      }

      if (v99 >= 9.22337204e18)
      {
LABEL_568:
        __break(1u);
        goto LABEL_569;
      }

      value = v99 + 1;
      if (!__OFADD__(v99, 1))
      {
        goto LABEL_474;
      }

      __break(1u);
LABEL_292:
      v181 = 12;
      v179 = v11;
      _CalendarICU._locked_start(of:at:)(&v181, &v179, &v182);
      if ((v183 & 1) == 0)
      {
        a3._time = floor((v11 - v182._time) / 86400.0);
        if ((a3._time & 0x7FFFFFFFFFFFFFFFLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (a3._time <= -9.22337204e18)
          {
LABEL_534:
            __break(1u);
            goto LABEL_535;
          }

          if (a3._time >= 9.22337204e18)
          {
LABEL_543:
            __break(1u);
            goto LABEL_544;
          }

          value = a3._time + 1;
          if (!__OFADD__(a3._time, 1))
          {
            goto LABEL_474;
          }

          __break(1u);
LABEL_299:
          LODWORD(v179) = 0;
          v181 = 4;
          v180 = 12;
          v182._time = v11;
          v202 = _CalendarICU._locked_ordinality(of:in:for:)(&v181, &v180, a3);
          value = v202.value;
          if (v202.is_nil)
          {
            goto LABEL_400;
          }

          v100 = v202.value - 1;
          if (!__OFSUB__(v202.value, 1))
          {
            v101 = 60 * v100;
            if ((v100 * 60) >> 64 != (60 * v100) >> 63)
            {
LABEL_535:
              __break(1u);
              goto LABEL_536;
            }

            v102 = ucal_get();
            v103 = v101 + v102;
            if (__OFADD__(v101, v102))
            {
LABEL_544:
              __break(1u);
              goto LABEL_545;
            }

            value = v103 + 1;
            if (!__OFADD__(v103, 1))
            {
              goto LABEL_474;
            }

            __break(1u);
            goto LABEL_337;
          }

LABEL_526:
          __break(1u);
LABEL_527:
          __break(1u);
LABEL_528:
          __break(1u);
LABEL_529:
          __break(1u);
LABEL_530:
          __break(1u);
LABEL_531:
          __break(1u);
          goto LABEL_532;
        }

LABEL_525:
        __break(1u);
        goto LABEL_526;
      }

      goto LABEL_399;
    }

    if ((v10 - 10) >= 2)
    {
      if (v10 != 12)
      {
        if (v10 != 18)
        {
          goto LABEL_475;
        }

        goto LABEL_40;
      }

      value = 0;
      if (*of > 6u)
      {
        if ((v8 - 7) < 2)
        {
          goto LABEL_261;
        }

        if (v8 == 13)
        {
LABEL_314:
          LOBYTE(v179) = 6;
          v181 = 12;
          v182._time = v11;
          v204 = _CalendarICU._locked_ordinality(of:in:for:)(&v179, &v181, a3);
          value = v204.value;
          if (v204.is_nil)
          {
            goto LABEL_400;
          }

          a3._time = (v11 - floor(v11) + v204.value + -1.0) * 1000000000.0;
          if ((a3._time & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
LABEL_532:
            __break(1u);
            goto LABEL_533;
          }

          if (a3._time <= -9.22337204e18)
          {
LABEL_541:
            __break(1u);
            goto LABEL_542;
          }

          if (a3._time >= 9.22337204e18)
          {
LABEL_550:
            __break(1u);
            goto LABEL_551;
          }

          value = a3._time + 1;
          if (!__OFADD__(a3._time, 1))
          {
            goto LABEL_474;
          }

          __break(1u);
          goto LABEL_321;
        }

        if (v8 != 11)
        {
          goto LABEL_475;
        }

        LODWORD(v182._time) = 0;
        MEMORY[0x1865D2A80](*(v4 + 32), 1, *&a3._time);
        ucal_setMillis();
        v46 = ucal_get();
LABEL_384:
        v137 = 0;
        value = v46;
        goto LABEL_475;
      }

      if (*of > 4u)
      {
        goto LABEL_243;
      }

      if (v8 != 3)
      {
        if (v8 != 4)
        {
          goto LABEL_475;
        }

        LODWORD(v179) = 0;
        v181 = 3;
        v180 = 12;
        v182._time = v11;
        v190 = _CalendarICU._locked_ordinality(of:in:for:)(&v181, &v180, a3);
        value = v190.value;
        if (v190.is_nil)
        {
          goto LABEL_400;
        }

        v32 = v190.value - 1;
        if (__OFSUB__(v190.value, 1))
        {
          goto LABEL_528;
        }

        v33 = 24 * v32;
        if ((v32 * 24) >> 64 != (24 * v32) >> 63)
        {
LABEL_537:
          __break(1u);
          goto LABEL_538;
        }

        v34 = ucal_get();
        v35 = v33 + v34;
        if (__OFADD__(v33, v34))
        {
LABEL_546:
          __break(1u);
          goto LABEL_547;
        }

        value = v35 + 1;
        if (!__OFADD__(v35, 1))
        {
          goto LABEL_474;
        }

        __break(1u);
        goto LABEL_117;
      }

      goto LABEL_292;
    }

    value = 0;
    if (*of > 5u)
    {
      if (v8 == 6)
      {
LABEL_177:
        LODWORD(v179) = 0;
        v181 = 5;
        v180 = 11;
        v182._time = v11;
        v194 = _CalendarICU._locked_ordinality(of:in:for:)(&v181, &v180, a3);
        value = v194.value;
        if (v194.is_nil)
        {
          goto LABEL_400;
        }

        v54 = v194.value - 1;
        if (__OFSUB__(v194.value, 1))
        {
          goto LABEL_495;
        }

        v55 = 60 * v54;
        if ((v54 * 60) >> 64 != (60 * v54) >> 63)
        {
LABEL_499:
          __break(1u);
          goto LABEL_500;
        }

        v56 = ucal_get();
        v57 = v55 + v56;
        if (__OFADD__(v55, v56))
        {
LABEL_503:
          __break(1u);
          goto LABEL_504;
        }

        value = v57 + 1;
        if (!__OFADD__(v57, 1))
        {
          goto LABEL_474;
        }

        __break(1u);
        goto LABEL_184;
      }

      if (v8 == 13)
      {
LABEL_197:
        LOBYTE(v179) = 6;
        v181 = 11;
        v182._time = v11;
        *&of = _CalendarICU._locked_ordinality(of:in:for:)(&v179, &v181, a3);
        value = of;
        if (v64)
        {
          goto LABEL_400;
        }

        a3._time = (v11 - floor(v11) + of + -1.0) * 1000000000.0;
        if ((a3._time & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_498;
        }

        if (a3._time <= -9.22337204e18)
        {
LABEL_502:
          __break(1u);
          goto LABEL_503;
        }

        if (a3._time >= 9.22337204e18)
        {
LABEL_506:
          __break(1u);
LABEL_507:
          __break(1u);
LABEL_508:
          __break(1u);
          goto LABEL_509;
        }

        v8 = a3._time;
        value = a3._time + 1;
        if (!__OFADD__(a3._time, 1))
        {
          goto LABEL_474;
        }

        __break(1u);
        goto LABEL_204;
      }

      if (v8 != 7)
      {
        goto LABEL_475;
      }
    }

    else if (v8 != 3)
    {
      if (v8 != 4)
      {
        if (v8 != 5)
        {
          goto LABEL_475;
        }

        LODWORD(v179) = 0;
        v181 = 4;
        v180 = 11;
        v182._time = v11;
        v188 = _CalendarICU._locked_ordinality(of:in:for:)(&v181, &v180, a3);
        value = v188.value;
        if (v188.is_nil)
        {
          goto LABEL_400;
        }

        v20 = v188.value - 1;
        if (__OFSUB__(v188.value, 1))
        {
          goto LABEL_496;
        }

        v21 = 60 * v20;
        if ((v20 * 60) >> 64 != (60 * v20) >> 63)
        {
LABEL_500:
          __break(1u);
          goto LABEL_501;
        }

        *&of = ucal_get();
        v8 = v21 + of;
        if (__OFADD__(v21, of))
        {
LABEL_504:
          __break(1u);
          goto LABEL_505;
        }

        value = v8 + 1;
        if (!__OFADD__(v8, 1))
        {
          goto LABEL_474;
        }

        __break(1u);
LABEL_68:
        if (v8 != 6)
        {
          if (v8 != 13)
          {
            goto LABEL_475;
          }

          LOBYTE(v179) = 6;
          v181 = 3;
          v182._time = v11;
          *&of = _CalendarICU._locked_ordinality(of:in:for:)(&v179, &v181, a3);
          value = of;
          if (v22)
          {
            goto LABEL_400;
          }

          a3._time = (v11 - floor(v11) + of + -1.0) * 1000000000.0;
          if ((a3._time & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_484;
          }

          if (a3._time <= -9.22337204e18)
          {
LABEL_487:
            __break(1u);
            goto LABEL_488;
          }

          if (a3._time >= 9.22337204e18)
          {
LABEL_490:
            __break(1u);
            goto LABEL_491;
          }

          v8 = a3._time;
          value = a3._time + 1;
          if (!__OFADD__(a3._time, 1))
          {
            goto LABEL_474;
          }

          __break(1u);
          goto LABEL_77;
        }

        LODWORD(v179) = 0;
        v181 = 5;
        v180 = 3;
        v182._time = v11;
        v191 = _CalendarICU._locked_ordinality(of:in:for:)(&v181, &v180, a3);
        value = v191.value;
        if (v191.is_nil)
        {
          goto LABEL_400;
        }

        v37 = v191.value - 1;
        if (__OFSUB__(v191.value, 1))
        {
          goto LABEL_485;
        }

        v38 = 60 * v37;
        if ((v37 * 60) >> 64 != (60 * v37) >> 63)
        {
LABEL_488:
          __break(1u);
          goto LABEL_489;
        }

        *&of = ucal_get();
        v8 = v38 + of;
        if (__OFADD__(v38, of))
        {
LABEL_491:
          __break(1u);
LABEL_492:
          __break(1u);
          goto LABEL_493;
        }

        value = v8 + 1;
        if (!__OFADD__(v8, 1))
        {
          goto LABEL_474;
        }

        __break(1u);
        goto LABEL_126;
      }

      LODWORD(v179) = 0;
      v181 = 3;
      v180 = 11;
      v182._time = v11;
      v195 = _CalendarICU._locked_ordinality(of:in:for:)(&v181, &v180, a3);
      value = v195.value;
      if (v195.is_nil)
      {
        goto LABEL_400;
      }

      v60 = v195.value - 1;
      if (__OFSUB__(v195.value, 1))
      {
        goto LABEL_497;
      }

      v61 = 24 * v60;
      if ((v60 * 24) >> 64 != (24 * v60) >> 63)
      {
LABEL_501:
        __break(1u);
        goto LABEL_502;
      }

      v62 = ucal_get();
      v63 = v61 + v62;
      if (__OFADD__(v61, v62))
      {
LABEL_505:
        __break(1u);
        goto LABEL_506;
      }

      value = v63 + 1;
      if (!__OFADD__(v63, 1))
      {
        goto LABEL_474;
      }

      __break(1u);
      goto LABEL_197;
    }

    LODWORD(v182._time) = 0;
    MEMORY[0x1865D2A80](*(v4 + 32), 1, *&a3._time);
    ucal_setMillis();
    value = ucal_get() + 1;
    if (*(v4 + 64) == 1)
    {
      v31 = ucal_getAttribute();
      goto LABEL_185;
    }

LABEL_184:
    v31 = *(v4 + 56);
LABEL_185:
    v49 = __OFSUB__(value, v31);
    v58 = value - v31;
    if (!v49)
    {
      if (v58 <= 0)
      {
        value = v58 + 7;
      }

      else
      {
        value = v58;
      }

      v59 = 0;
      goto LABEL_475;
    }

    goto LABEL_479;
  }

  if (v10 <= 2)
  {
    if (v10)
    {
      if (v10 != 1)
      {
        value = 0;
        if (*of <= 6u)
        {
          if (*of > 4u)
          {
            goto LABEL_252;
          }

          if (v8 == 3)
          {
            goto LABEL_337;
          }

          if (v8 != 4)
          {
            goto LABEL_475;
          }

          LODWORD(v179) = 0;
          v181 = 3;
          v180 = 2;
          v182._time = v11;
          v185 = _CalendarICU._locked_ordinality(of:in:for:)(&v181, &v180, a3);
          value = v185.value;
          if (v185.is_nil)
          {
            goto LABEL_400;
          }

          v12 = v185.value - 1;
          if (__OFSUB__(v185.value, 1))
          {
            goto LABEL_530;
          }

          v13 = 24 * v12;
          if ((v12 * 24) >> 64 != (24 * v12) >> 63)
          {
LABEL_539:
            __break(1u);
            goto LABEL_540;
          }

          *&of = ucal_get();
          v8 = v13 + of;
          if (__OFADD__(v13, of))
          {
LABEL_548:
            __break(1u);
            goto LABEL_549;
          }

          value = v8 + 1;
          if (!__OFADD__(v8, 1))
          {
            goto LABEL_474;
          }

          __break(1u);
          goto LABEL_27;
        }

        if ((v8 - 7) < 2)
        {
          LOBYTE(v179) = 3;
          v181 = 2;
          v182._time = v11;
          *&of = _CalendarICU._locked_ordinality(of:in:for:)(&v179, &v181, a3);
          value = of;
          if (v89)
          {
            goto LABEL_400;
          }

          if (!__OFADD__(of, 6))
          {
            v90 = 0;
            value = (of + 6) / 7;
            goto LABEL_475;
          }

          goto LABEL_513;
        }

        if (v8 == 13)
        {
LABEL_321:
          LOBYTE(v179) = 6;
          v181 = 2;
          v182._time = v11;
          *&of = _CalendarICU._locked_ordinality(of:in:for:)(&v179, &v181, a3);
          value = of;
          if ((v108 & 1) == 0)
          {
            v109 = (v11 - floor(v11) + of + -1.0) * 1000000000.0;
            if ((*&v109 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
LABEL_533:
              __break(1u);
              goto LABEL_534;
            }

            if (v109 <= -9.22337204e18)
            {
LABEL_542:
              __break(1u);
              goto LABEL_543;
            }

            if (v109 >= 9.22337204e18)
            {
LABEL_551:
              __break(1u);
              goto LABEL_552;
            }

            v8 = v109;
            value = v109 + 1;
            if (!__OFADD__(v109, 1))
            {
              goto LABEL_474;
            }

            __break(1u);
LABEL_328:
            if (v8 != 9)
            {
              goto LABEL_475;
            }

            LODWORD(v182._time) = 0;
            MEMORY[0x1865D2A80](*(v4 + 32));
            ucal_setMillis();
            *&of = ucal_get();
            if (*(v4 + 24) == 6)
            {
              if (of > Foundation_Calendar_Component_yearForWeekOfYear)
              {
LABEL_571:
                __break(1u);
                goto LABEL_572;
              }

              v110 = 0;
              v111 = &outlined read-only object #0 of _CalendarICU._locked_ordinality(of:in:for:);
LABEL_421:
              value = v111[of + 4];
              goto LABEL_475;
            }

LABEL_419:
            if (of > Foundation_Calendar_Component_yearForWeekOfYear)
            {
LABEL_572:
              __break(1u);
              goto LABEL_573;
            }

            v152 = 0;
            v111 = &outlined read-only object #1 of _CalendarICU._locked_ordinality(of:in:for:);
            goto LABEL_421;
          }

LABEL_400:
          v145 = 1;
          goto LABEL_475;
        }

        if (v8 != 10)
        {
          goto LABEL_475;
        }

LABEL_382:
        LODWORD(v182._time) = 0;
        MEMORY[0x1865D2A80](*(v4 + 32), 1, *&a3._time);
        ucal_setMillis();
        goto LABEL_383;
      }
    }

    else
    {
      value = 0;
      if (*of > 6u)
      {
LABEL_126:
        if (v8 > 9)
        {
          goto LABEL_226;
        }

        if ((v8 - 7) < 2)
        {
          v181 = 0;
          v179 = v11;
          _CalendarICU._locked_start(of:at:)(&v181, &v179, &v182);
          if ((v183 & 1) == 0)
          {
            v39 = v182._time;
            v40 = (floor(v11) + 978307200.0) * 1000.0;
            v41 = (floor(v182._time) + 978307200.0) * 1000.0;
            LODWORD(v182._time) = 0;
            MEMORY[0x1865D2A80](*(v4 + 32));
            ucal_setMillis();
            v42 = ucal_get();
            MEMORY[0x1865D2A80](*(v4 + 32));
            ucal_setMillis();
            for (; ucal_get() != v42; v41 = v41 + 86400000.0)
            {
              _CalendarICU._locked_add(_:amount:wrap:status:)(5, 1, 0);
            }

            v43 = floor((v11 - v39) / 86400.0 / 7.0);
            if ((*&v43 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_519;
            }

            if (v43 <= -9.22337204e18)
            {
LABEL_520:
              __break(1u);
              goto LABEL_521;
            }

            if (v43 >= 9.22337204e18)
            {
LABEL_521:
              __break(1u);
LABEL_522:
              __break(1u);
              goto LABEL_523;
            }

            if (v43 <= 10)
            {
              v44 = 0;
            }

            else
            {
              v44 = v43 - 10;
            }

            while (1)
            {
              value = v44 + 1;
              if (__OFADD__(v44, 1))
              {
                break;
              }

              LODWORD(v182._time) = 0;
              MEMORY[0x1865D2A80](*(v4 + 32));
              ucal_setMillis();
              _CalendarICU._locked_add(_:amount:wrap:status:)(3, ++v44, 0);
              if (v45 >= v40)
              {
                goto LABEL_474;
              }
            }

            __break(1u);
            goto LABEL_477;
          }

LABEL_399:
          value = 0;
          goto LABEL_400;
        }

        if (v8 != 9)
        {
          goto LABEL_475;
        }

        LOBYTE(v179) = 1;
        v181 = 0;
        v182._time = v11;
        v205 = _CalendarICU._locked_ordinality(of:in:for:)(&v179, &v181, a3);
        value = v205.value;
        if (v205.is_nil)
        {
          goto LABEL_400;
        }

        LOBYTE(v179) = 9;
        v181 = 1;
        v182._time = v11;
        *&of = _CalendarICU._locked_ordinality(of:in:for:)(&v179, &v181, v112);
        if (v113)
        {
          value = of;
          goto LABEL_400;
        }

        goto LABEL_455;
      }

      if (*of > 3u)
      {
        goto LABEL_215;
      }

      if (v8 == 1)
      {
        goto LABEL_382;
      }

      if (v8 == 2)
      {
LABEL_393:
        v181 = 0;
        v179 = v11;
        _CalendarICU._locked_start(of:at:)(&v181, &v179, &v182);
        if (v183)
        {
          goto LABEL_399;
        }

        v6 = v182._time;
        LOBYTE(v182._time) = 3;
        *&of = _CalendarICU._locked_maximumRange(of:)(&v182);
        if (v142)
        {
          value = 0;
          goto LABEL_474;
        }

LABEL_460:
        v169 = v168 - of;
        if (!__OFSUB__(v168, of))
        {
          v49 = __OFADD__(v169, 1);
          v170 = v169 + 1;
          if (!v49)
          {
            v171 = floor((v11 - v6) / 86400.0 / v170 * 0.96875);
            if ((*&v171 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              if (v171 > -9.22337204e18)
              {
                if (v171 < 9.22337204e18)
                {
                  v172 = (floor(v11) + 978307200.0) * 1000.0;
                  if (v171 <= 10)
                  {
                    v173 = 0;
                  }

                  else
                  {
                    v173 = v171 - 10;
                  }

                  while (1)
                  {
                    value = v173 + 1;
                    if (__OFADD__(v173, 1))
                    {
                      goto LABEL_478;
                    }

                    LODWORD(v182._time) = 0;
                    MEMORY[0x1865D2A80](*(v4 + 32));
                    ucal_setMillis();
                    _CalendarICU._locked_add(_:amount:wrap:status:)(2, v173 + 1, 0);
                    v174 = 0;
                    ++v173;
                    if (v175 > v172)
                    {
                      goto LABEL_475;
                    }
                  }
                }

LABEL_607:
                __break(1u);
                goto LABEL_608;
              }

              goto LABEL_605;
            }

            goto LABEL_603;
          }

          goto LABEL_599;
        }

        goto LABEL_595;
      }

      if (v8 != 3)
      {
        goto LABEL_475;
      }

      v181 = 0;
      v179 = v11;
      _CalendarICU._locked_start(of:at:)(&v181, &v179, &v182);
      v23 = v182._time;
      v24 = v183;
      LODWORD(v182._time) = 0;
      MEMORY[0x1865D2A80](*(v4 + 32));
      ucal_setMillis();
      if (v24)
      {
        goto LABEL_399;
      }

      a3._time = floor((v11 - v23) / 86400.0);
      if ((a3._time & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_583:
        __break(1u);
        goto LABEL_584;
      }

      if (a3._time <= -9.22337204e18)
      {
LABEL_587:
        __break(1u);
        goto LABEL_588;
      }

      if (a3._time >= 9.22337204e18)
      {
LABEL_588:
        __break(1u);
LABEL_589:
        __break(1u);
      }

      v8 = a3._time;
      value = a3._time + 1;
      if (!__OFADD__(a3._time, 1))
      {
        goto LABEL_474;
      }

      __break(1u);
    }

    value = 0;
    if (v8 <= 6)
    {
LABEL_159:
      if (v8 <= 3)
      {
LABEL_278:
        if (v8 == 2)
        {
          goto LABEL_79;
        }

        if (v8 != 3)
        {
          goto LABEL_475;
        }

LABEL_337:
        LODWORD(v182._time) = 0;
        MEMORY[0x1865D2A80](*(v4 + 32));
        ucal_setMillis();
LABEL_383:
        v46 = ucal_get();
        goto LABEL_384;
      }

      if (v8 == 4)
      {
        goto LABEL_373;
      }

      if (v8 != 5)
      {
        if (v8 != 6)
        {
          goto LABEL_475;
        }

        LODWORD(v179) = 0;
        v181 = 5;
        v180 = 1;
        v182._time = v11;
        v192 = _CalendarICU._locked_ordinality(of:in:for:)(&v181, &v180, a3);
        value = v192.value;
        if (v192.is_nil)
        {
          goto LABEL_400;
        }

        v50 = v192.value - 1;
        if (__OFSUB__(v192.value, 1))
        {
LABEL_573:
          __break(1u);
          goto LABEL_574;
        }

        v51 = 60 * v50;
        if ((v50 * 60) >> 64 != (60 * v50) >> 63)
        {
LABEL_577:
          __break(1u);
          goto LABEL_578;
        }

        v52 = ucal_get();
        v53 = v51 + v52;
        if (__OFADD__(v51, v52))
        {
LABEL_581:
          __break(1u);
          goto LABEL_582;
        }

        value = v53 + 1;
        if (!__OFADD__(v53, 1))
        {
          goto LABEL_474;
        }

        __break(1u);
LABEL_170:
        LOBYTE(v179) = 6;
        v181 = 5;
        v182._time = v11;
        v193 = _CalendarICU._locked_ordinality(of:in:for:)(&v179, &v181, a3);
        value = v193.value;
        if (v193.is_nil)
        {
          goto LABEL_400;
        }

        a3._time = (v11 - floor(v11) + v193.value + -1.0) * 1000000000.0;
        if ((a3._time & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_492;
        }

        if (a3._time <= -9.22337204e18)
        {
LABEL_493:
          __break(1u);
          goto LABEL_494;
        }

        if (a3._time >= 9.22337204e18)
        {
LABEL_494:
          __break(1u);
LABEL_495:
          __break(1u);
LABEL_496:
          __break(1u);
LABEL_497:
          __break(1u);
LABEL_498:
          __break(1u);
          goto LABEL_499;
        }

        value = a3._time + 1;
        if (!__OFADD__(a3._time, 1))
        {
          goto LABEL_474;
        }

        __break(1u);
        goto LABEL_177;
      }

      LODWORD(v179) = 0;
      v181 = 4;
      v180 = 1;
      v182._time = v11;
      v208 = _CalendarICU._locked_ordinality(of:in:for:)(&v181, &v180, a3);
      value = v208.value;
      if (v208.is_nil)
      {
        goto LABEL_400;
      }

      v128 = v208.value - 1;
      if (__OFSUB__(v208.value, 1))
      {
LABEL_569:
        __break(1u);
        goto LABEL_570;
      }

      v129 = 60 * v128;
      if ((v128 * 60) >> 64 != (60 * v128) >> 63)
      {
LABEL_575:
        __break(1u);
        goto LABEL_576;
      }

      v130 = ucal_get();
      v131 = v129 + v130;
      if (__OFADD__(v129, v130))
      {
LABEL_579:
        __break(1u);
        goto LABEL_580;
      }

      value = v131 + 1;
      if (!__OFADD__(v131, 1))
      {
        goto LABEL_474;
      }

      __break(1u);
LABEL_366:
      LOBYTE(v179) = 6;
      v181 = 1;
      v182._time = v11;
      v209 = _CalendarICU._locked_ordinality(of:in:for:)(&v179, &v181, a3);
      value = v209.value;
      if (v209.is_nil)
      {
        goto LABEL_400;
      }

      a3._time = (v11 - floor(v11) + v209.value + -1.0) * 1000000000.0;
      if ((a3._time & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_570:
        __break(1u);
        goto LABEL_571;
      }

      if (a3._time <= -9.22337204e18)
      {
LABEL_576:
        __break(1u);
        goto LABEL_577;
      }

      if (a3._time >= 9.22337204e18)
      {
LABEL_580:
        __break(1u);
        goto LABEL_581;
      }

      value = a3._time + 1;
      if (!__OFADD__(a3._time, 1))
      {
        goto LABEL_474;
      }

      __break(1u);
LABEL_373:
      LODWORD(v179) = 0;
      v181 = 3;
      v180 = 1;
      v182._time = v11;
      v210 = _CalendarICU._locked_ordinality(of:in:for:)(&v181, &v180, a3);
      value = v210.value;
      if (v210.is_nil)
      {
        goto LABEL_400;
      }

      v132 = v210.value - 1;
      if (__OFSUB__(v210.value, 1))
      {
LABEL_574:
        __break(1u);
        goto LABEL_575;
      }

      v133 = 24 * v132;
      if ((v132 * 24) >> 64 != (24 * v132) >> 63)
      {
LABEL_578:
        __break(1u);
        goto LABEL_579;
      }

      v134 = ucal_get();
      v135 = v133 + v134;
      if (__OFADD__(v133, v134))
      {
LABEL_582:
        __break(1u);
        goto LABEL_583;
      }

      value = v135 + 1;
      if (!__OFADD__(v135, 1))
      {
        goto LABEL_474;
      }

      __break(1u);
LABEL_380:
      LODWORD(v182._time) = 0;
      MEMORY[0x1865D2A80](*(v4 + 32));
      ucal_setMillis();
      LODWORD(v27) = ucal_get();
      ucal_set();
      LODWORD(value) = ucal_get();
      if (*(v4 + 64) == 1)
      {
        v136 = ucal_getAttribute();
        goto LABEL_428;
      }

LABEL_427:
      v136 = *(v4 + 56);
LABEL_428:
      if (*(v4 + 80) == 1)
      {
        v155 = ucal_getAttribute();
      }

      else
      {
        v155 = *(v4 + 72);
      }

      v156 = v27 + 7 - v155;
      if (!__OFSUB__(v27 + 7, v155))
      {
        v49 = __OFADD__(value, v155);
        v157 = value + v155;
        if (!v49)
        {
          v49 = __OFSUB__(v157, v136);
          v158 = v157 - v136;
          if (!v49)
          {
            if (!__OFADD__(v158, 6))
            {
              v159 = (v158 + 6) % 7;
              v49 = __OFADD__(v156, v159);
              v160 = v156 + v159;
              if (!v49)
              {
                value = v160 / 7;
                LODWORD(v182._time) = 0;
                MEMORY[0x1865D2A80](*(v4 + 32));
                ucal_setMillis();
                goto LABEL_474;
              }

              goto LABEL_518;
            }

LABEL_517:
            __break(1u);
LABEL_518:
            __break(1u);
LABEL_519:
            __break(1u);
            goto LABEL_520;
          }

LABEL_516:
          __break(1u);
          goto LABEL_517;
        }

LABEL_515:
        __break(1u);
        goto LABEL_516;
      }

LABEL_514:
      __break(1u);
      goto LABEL_515;
    }

    if (v8 <= 10)
    {
      if ((v8 - 7) >= 2)
      {
        goto LABEL_328;
      }

      v181 = 1;
      v179 = v11;
      _CalendarICU._locked_start(of:at:)(&v181, &v179, &v182);
      if (v183)
      {
        goto LABEL_399;
      }

      v26 = v182._time;
      LODWORD(v179) = 0;
      v181 = 11;
      v180 = 1;
      v182._time = v11;
      v189 = _CalendarICU._locked_ordinality(of:in:for:)(&v181, &v180, v25);
      v27 = v189.value;
      if (v189.is_nil)
      {
LABEL_283:
        v98 = 1;
        value = v27;
        goto LABEL_475;
      }

      v28 = ucal_get();
      LODWORD(v179) = 0;
      MEMORY[0x1865D2A80](*(v4 + 32));
      v29 = (floor(v26) + 978307200.0) * 1000.0;
      ucal_setMillis();
      while (ucal_get() != v28)
      {
        _CalendarICU._locked_add(_:amount:wrap:status:)(5, 1, 0);
        v29 = v30;
      }

      v181 = 11;
      v180 = 1;
      v182._time = v29 / 1000.0 + -978307200.0;
      *&of = _CalendarICU._locked_ordinality(of:in:for:)(&v181, &v180, v182);
      value = of;
      if (v153)
      {
        goto LABEL_400;
      }

      v154 = v27 - of;
      if (__OFSUB__(v27, of))
      {
        goto LABEL_593;
      }

      value = v154 + 1;
      if (!__OFADD__(v154, 1))
      {
        goto LABEL_474;
      }

      __break(1u);
      goto LABEL_427;
    }

LABEL_204:
    if (v8 == 11)
    {
      goto LABEL_380;
    }

    if (v8 != 13)
    {
      if (v8 != 18)
      {
        goto LABEL_475;
      }

      goto LABEL_337;
    }

    goto LABEL_366;
  }

  if (v10 > 4)
  {
    goto LABEL_50;
  }

  if (v10 == 3)
  {
LABEL_40:
    value = 0;
    if (v8 <= 5)
    {
      if (v8 != 4)
      {
        if (v8 != 5)
        {
          goto LABEL_475;
        }

        LODWORD(v179) = 0;
        v181 = 4;
        v180 = 3;
        v182._time = v11;
        v187 = _CalendarICU._locked_ordinality(of:in:for:)(&v181, &v180, a3);
        value = v187.value;
        if (v187.is_nil)
        {
          goto LABEL_400;
        }

        v16 = v187.value - 1;
        if (__OFSUB__(v187.value, 1))
        {
          goto LABEL_483;
        }

        v17 = 60 * v16;
        if ((v16 * 60) >> 64 != (60 * v16) >> 63)
        {
LABEL_486:
          __break(1u);
          goto LABEL_487;
        }

        *&of = ucal_get();
        v8 = v17 + of;
        if (__OFADD__(v17, of))
        {
LABEL_489:
          __break(1u);
          goto LABEL_490;
        }

        value = v8 + 1;
        if (!__OFADD__(v8, 1))
        {
          goto LABEL_474;
        }

        __break(1u);
LABEL_50:
        if (v10 != 5)
        {
          if (v10 != 6)
          {
            goto LABEL_475;
          }

          if (v8 != 13)
          {
            goto LABEL_80;
          }

          v18 = (v11 - floor(v11)) * 1000000000.0 + 1.0;
          if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v18 > -9.22337204e18)
            {
              if (v18 < 9.22337204e18)
              {
                v19 = 0;
                value = v18;
                goto LABEL_475;
              }

              goto LABEL_482;
            }

LABEL_481:
            __break(1u);
LABEL_482:
            __break(1u);
LABEL_483:
            __break(1u);
LABEL_484:
            __break(1u);
LABEL_485:
            __break(1u);
            goto LABEL_486;
          }

LABEL_480:
          __break(1u);
          goto LABEL_481;
        }

LABEL_77:
        if (v8 != 13)
        {
          if (v8 != 6)
          {
            goto LABEL_80;
          }

LABEL_79:
          LODWORD(v182._time) = 0;
          MEMORY[0x1865D2A80](*(v4 + 32));
          ucal_setMillis();
          goto LABEL_118;
        }

        goto LABEL_170;
      }

LABEL_117:
      LODWORD(v182._time) = 0;
      MEMORY[0x1865D2A80](*(v4 + 32));
      ucal_setMillis();
      goto LABEL_118;
    }

    goto LABEL_68;
  }

  if (v8 == 13)
  {
    goto LABEL_236;
  }

  if (v8 != 6)
  {
    if (v8 == 5)
    {
      LODWORD(v182._time) = 0;
      MEMORY[0x1865D2A80](*(v4 + 32), 1, *&a3._time);
      ucal_setMillis();
LABEL_118:
      *&of = ucal_get();
      v36 = 0;
      value = of + 1;
      goto LABEL_475;
    }

LABEL_80:
    value = 0;
    goto LABEL_475;
  }

  LODWORD(v179) = 0;
  v181 = 5;
  v180 = 4;
  v182._time = v11;
  v196 = _CalendarICU._locked_ordinality(of:in:for:)(&v181, &v180, a3);
  value = v196.value;
  if (v196.is_nil)
  {
    goto LABEL_400;
  }

  v65 = v196.value - 1;
  if (__OFSUB__(v196.value, 1))
  {
    goto LABEL_507;
  }

  v66 = 60 * v65;
  if ((v65 * 60) >> 64 != (60 * v65) >> 63)
  {
LABEL_509:
    __break(1u);
    goto LABEL_510;
  }

  *&of = ucal_get();
  v8 = v66 + of;
  if (__OFADD__(v66, of))
  {
LABEL_511:
    __break(1u);
    goto LABEL_512;
  }

  value = v8 + 1;
  if (!__OFADD__(v8, 1))
  {
    goto LABEL_474;
  }

  __break(1u);
LABEL_215:
  if (v8 == 4)
  {
    LOBYTE(v179) = 3;
    v181 = 0;
    v182._time = v11;
    *&of = _CalendarICU._locked_ordinality(of:in:for:)(&v179, &v181, a3);
    value = of;
    if (v138)
    {
      goto LABEL_400;
    }

    v139 = of - 1;
    if (__OFSUB__(of, 1))
    {
LABEL_585:
      __break(1u);
      goto LABEL_586;
    }

    if (v139 > 0x555555555555554)
    {
      goto LABEL_399;
    }

    LODWORD(v182._time) = 0;
    v140 = 24 * v139;
    if ((v139 * 24) >> 64 != (24 * v139) >> 63)
    {
      goto LABEL_598;
    }

    *&of = ucal_get();
    v141 = v140 + of;
    if (__OFADD__(v140, of))
    {
LABEL_602:
      __break(1u);
LABEL_603:
      __break(1u);
LABEL_604:
      __break(1u);
LABEL_605:
      __break(1u);
LABEL_606:
      __break(1u);
      goto LABEL_607;
    }

    value = v141 + 1;
    if (!__OFADD__(v141, 1))
    {
      goto LABEL_474;
    }

    __break(1u);
    goto LABEL_393;
  }

  if (v8 == 5)
  {
    LOBYTE(v179) = 4;
    v181 = 0;
    v182._time = v11;
    *&of = _CalendarICU._locked_ordinality(of:in:for:)(&v179, &v181, a3);
    value = of;
    if (v143)
    {
      goto LABEL_400;
    }

    v144 = of - 1;
    if (__OFSUB__(of, 1))
    {
LABEL_586:
      __break(1u);
      goto LABEL_587;
    }

    if (v144 > 0x222222222222221)
    {
      goto LABEL_399;
    }

    LODWORD(v182._time) = 0;
    v176 = 60 * v144;
    if ((v144 * 60) >> 64 == (60 * v144) >> 63)
    {
      *&of = ucal_get();
      v177 = v176 + of;
      if (!__OFADD__(v176, of))
      {
        value = v177 + 1;
        if (!__OFADD__(v177, 1))
        {
          goto LABEL_474;
        }

        goto LABEL_606;
      }

      goto LABEL_604;
    }

    goto LABEL_600;
  }

  if (v8 != 6)
  {
    goto LABEL_475;
  }

  LOBYTE(v179) = 5;
  v181 = 0;
  v182._time = v11;
  *&of = _CalendarICU._locked_ordinality(of:in:for:)(&v179, &v181, a3);
  value = of;
  if (v67)
  {
    goto LABEL_400;
  }

  v68 = of - 1;
  if (__OFSUB__(of, 1))
  {
LABEL_584:
    __break(1u);
    goto LABEL_585;
  }

  if (v68 > 0x222222222222221)
  {
    goto LABEL_399;
  }

  LODWORD(v182._time) = 0;
  v69 = 60 * v68;
  if ((v68 * 60) >> 64 != (60 * v68) >> 63)
  {
    goto LABEL_596;
  }

  *&of = ucal_get();
  v8 = v69 + of;
  if (__OFADD__(v69, of))
  {
LABEL_601:
    __break(1u);
    goto LABEL_602;
  }

  value = v8 + 1;
  if (!__OFADD__(v8, 1))
  {
    goto LABEL_474;
  }

  __break(1u);
LABEL_226:
  if ((v8 - 10) >= 2)
  {
    if (v8 != 12)
    {
      goto LABEL_475;
    }

    goto LABEL_337;
  }

  v181 = 0;
  v179 = v11;
  _CalendarICU._locked_start(of:at:)(&v181, &v179, &v182);
  if (v183)
  {
    goto LABEL_399;
  }

  v70 = 0;
  v71 = v182._time;
  v72 = (floor(v11) + 978307200.0) * 1000.0;
  LODWORD(v182._time) = 0;
  do
  {
    v73 = ucal_get();
    if (*(v4 + 64) == 1)
    {
      v74 = ucal_getAttribute();
    }

    else
    {
      v74 = *(v4 + 56);
    }

    if (v74 == v73)
    {
      if (*(v4 + 80) == 1)
      {
        ucal_getAttribute();
      }

      v161 = floor((v11 - v71) / 86400.0 / 7.0);
      if ((*&v161 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_522;
      }

      if (v161 <= -9.22337204e18)
      {
LABEL_523:
        __break(1u);
        goto LABEL_524;
      }

      if (v161 >= 9.22337204e18)
      {
LABEL_524:
        __break(1u);
        goto LABEL_525;
      }

      if (v161 <= 10)
      {
        v162 = 0;
      }

      else
      {
        v162 = v161 - 109;
      }

      while (1)
      {
        value = v162 + 1;
        if (__OFADD__(v162, 1))
        {
          break;
        }

        MEMORY[0x1865D2A80](*(v4 + 32));
        ucal_setMillis();
        _CalendarICU._locked_add(_:amount:wrap:status:)(3, ++v162, 0);
        if (v163 > v72)
        {
          goto LABEL_474;
        }
      }

LABEL_477:
      __break(1u);
LABEL_478:
      __break(1u);
LABEL_479:
      __break(1u);
      goto LABEL_480;
    }

    _CalendarICU._locked_add(_:amount:wrap:status:)(5, 1, 0);
    v49 = __OFADD__(v70++, 1);
  }

  while (!v49);
  __break(1u);
LABEL_236:
  LOBYTE(v179) = 6;
  v181 = 4;
  v182._time = v11;
  *&of = _CalendarICU._locked_ordinality(of:in:for:)(&v179, &v181, a3);
  value = of;
  if (v75)
  {
    goto LABEL_400;
  }

  a3._time = (v11 - floor(v11) + of + -1.0) * 1000000000.0;
  if ((a3._time & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_508;
  }

  if (a3._time <= -9.22337204e18)
  {
LABEL_510:
    __break(1u);
    goto LABEL_511;
  }

  if (a3._time >= 9.22337204e18)
  {
LABEL_512:
    __break(1u);
LABEL_513:
    __break(1u);
    goto LABEL_514;
  }

  v8 = a3._time;
  value = a3._time + 1;
  if (!__OFADD__(a3._time, 1))
  {
    goto LABEL_474;
  }

  __break(1u);
LABEL_243:
  if (v8 == 5)
  {
    goto LABEL_299;
  }

  if (v8 != 6)
  {
    goto LABEL_475;
  }

  LODWORD(v179) = 0;
  v181 = 5;
  v180 = 12;
  v182._time = v11;
  v197 = _CalendarICU._locked_ordinality(of:in:for:)(&v181, &v180, a3);
  value = v197.value;
  if (v197.is_nil)
  {
    goto LABEL_400;
  }

  v76 = v197.value - 1;
  if (__OFSUB__(v197.value, 1))
  {
    goto LABEL_529;
  }

  v77 = 60 * v76;
  if ((v76 * 60) >> 64 != (60 * v76) >> 63)
  {
LABEL_538:
    __break(1u);
    goto LABEL_539;
  }

  *&of = ucal_get();
  v8 = v77 + of;
  if (__OFADD__(v77, of))
  {
LABEL_547:
    __break(1u);
    goto LABEL_548;
  }

  value = v8 + 1;
  if (!__OFADD__(v8, 1))
  {
    goto LABEL_474;
  }

  __break(1u);
LABEL_252:
  if (v8 == 5)
  {
    LODWORD(v179) = 0;
    v181 = 4;
    v180 = 2;
    v182._time = v11;
    v203 = _CalendarICU._locked_ordinality(of:in:for:)(&v181, &v180, a3);
    value = v203.value;
    if (v203.is_nil)
    {
      goto LABEL_400;
    }

    v104 = v203.value - 1;
    if (!__OFSUB__(v203.value, 1))
    {
      v105 = 60 * v104;
      if ((v104 * 60) >> 64 != (60 * v104) >> 63)
      {
LABEL_536:
        __break(1u);
        goto LABEL_537;
      }

      v106 = ucal_get();
      v107 = v105 + v106;
      if (__OFADD__(v105, v106))
      {
LABEL_545:
        __break(1u);
        goto LABEL_546;
      }

      value = v107 + 1;
      if (!__OFADD__(v107, 1))
      {
        goto LABEL_474;
      }

      __break(1u);
      goto LABEL_314;
    }

    goto LABEL_527;
  }

  if (v8 != 6)
  {
    goto LABEL_475;
  }

  LODWORD(v179) = 0;
  v181 = 5;
  v180 = 2;
  v182._time = v11;
  v198 = _CalendarICU._locked_ordinality(of:in:for:)(&v181, &v180, a3);
  value = v198.value;
  if (v198.is_nil)
  {
    goto LABEL_400;
  }

  v78 = v198.value - 1;
  if (__OFSUB__(v198.value, 1))
  {
    goto LABEL_531;
  }

  v79 = 60 * v78;
  if ((v78 * 60) >> 64 != (60 * v78) >> 63)
  {
LABEL_540:
    __break(1u);
    goto LABEL_541;
  }

  v80 = ucal_get();
  v81 = v79 + v80;
  if (__OFADD__(v79, v80))
  {
LABEL_549:
    __break(1u);
    goto LABEL_550;
  }

  value = v81 + 1;
  if (!__OFADD__(v81, 1))
  {
    goto LABEL_474;
  }

  __break(1u);
LABEL_261:
  v181 = 12;
  v179 = v11;
  _CalendarICU._locked_start(of:at:)(&v181, &v179, &v182);
  if (v183)
  {
    goto LABEL_399;
  }

  v83 = v182._time;
  LODWORD(v179) = 0;
  v181 = 11;
  v180 = 12;
  v182._time = v11;
  v199 = _CalendarICU._locked_ordinality(of:in:for:)(&v181, &v180, v82);
  v27 = v199.value;
  v84 = v199.is_nil;
  v85 = ucal_get();
  if (v84)
  {
    goto LABEL_283;
  }

  v86 = v85;
  LODWORD(v179) = 0;
  MEMORY[0x1865D2A80](*(v4 + 32));
  v87 = (floor(v83) + 978307200.0) * 1000.0;
  ucal_setMillis();
  while (ucal_get() != v86)
  {
    _CalendarICU._locked_add(_:amount:wrap:status:)(5, 1, 0);
    v87 = v88;
  }

  v181 = 11;
  v180 = 12;
  v182._time = v87 / 1000.0 + -978307200.0;
  v211 = _CalendarICU._locked_ordinality(of:in:for:)(&v181, &v180, v182);
  value = v211.value;
  if (v211.is_nil)
  {
    goto LABEL_400;
  }

  v114 = v27 - v211.value;
  if (__OFSUB__(v27, v211.value))
  {
    goto LABEL_589;
  }

  value = v114 + 1;
  if (!__OFADD__(v114, 1))
  {
    goto LABEL_474;
  }

  __break(1u);
LABEL_408:
  if (v114 > 0xC)
  {
    goto LABEL_554;
  }

  v146 = 0;
  v116 = &outlined read-only object #3 of _CalendarICU._locked_ordinality(of:in:for:);
LABEL_410:
  value = v116[v114 + 4];
LABEL_475:
  *&of = value;
LABEL_608:
  LOBYTE(result.value) = of;
  return result;
}
unint64_t *AttributedString.Runs._lastOfMatchingRuns(with:comparing:)@<X0>(unint64_t *result@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  v80 = a2[2];
  if (!v80)
  {
    goto LABEL_73;
  }

  v5 = *result;
  v4 = result[1];
  v7 = result[2];
  v6 = result[3];
  v85 = result[4];
  v86 = v4;
  v8 = v3[15];
  if (v6 == v8)
  {
    v9 = v3[22];
    if (v3[26] == 2)
    {
      if (v9 != 2)
      {
        goto LABEL_67;
      }
    }

    else if (v9 == 2 || (v3[19] ^ v3[23]) >= 1024)
    {
      goto LABEL_67;
    }
  }

  if (v6 < v8)
  {
    v78 = v3[15];
    v75 = a3;
    v73 = v3;
    v10 = *v3;
    v11 = *(*v3 + 72);
    v12 = v10[10];
    v13 = v10[11];
    v14 = v10[12];
    v15 = v6;
    v95 = a2;
    swift_unknownObjectRetain();
    specialized Rope.subscript.getter(v5, v86, v7, v11, v12, v13, v14);
    v17 = v16;
    v74 = v18;
    result = swift_unknownObjectRelease();
    v19 = v7;
    v20 = v15;
    v21 = v10[9];
    v22 = v15 + 1;
    v76 = v95 + 5;
    v23 = v10[12];
    v83 = v10;
    v104 = v5;
    v105 = v86;
    v106 = v7;
    v87 = v17;
LABEL_10:
    if (v5 == v23)
    {
      v89 = v22;
      v81 = v23;
      v77 = v20;
      v84 = v19;
      if (v19)
      {
        v24 = *(v19 + 24 * ((v86 >> ((4 * *(v19 + 18) + 8) & 0x3C)) & 0xF) + 24);
        swift_unknownObjectRetain();
      }

      else
      {
        swift_unknownObjectRetain();
        v24 = specialized Rope._Node.subscript.getter(v86, v21);
      }

      if (!__OFADD__(v85, v24))
      {
        if (v21)
        {
          v25 = ((-15 << ((4 * *(v21 + 18) + 8) & 0x3C)) - 1) & *(v21 + 18) | (*(v21 + 16) << ((4 * *(v21 + 18) + 8) & 0x3C));
        }

        else
        {
          v25 = 0;
        }

        v26 = v89;
        if (v86 < v25)
        {
          v72 = v85 + v24;
          if (v84 && (v27 = (4 * *(v84 + 18) + 8) & 0x3C, v28 = ((v86 >> v27) & 0xF) + 1, v28 < *(v84 + 16)))
          {
            v82 = (v28 << v27) | ((-15 << v27) - 1) & v86;
            result = swift_unknownObjectRelease();
          }

          else
          {
            result = specialized Rope._Node.formSuccessor(of:)(&v104, v21);
            if ((result & 1) == 0)
            {
              if (v21)
              {
                v31 = *(v21 + 18);
                v32 = *(v21 + 16);
                result = swift_unknownObjectRelease();
                v29 = 0;
                v82 = ((-15 << ((4 * v31 + 8) & 0x3C)) - 1) & v31 | (v32 << ((4 * v31 + 8) & 0x3C));
              }

              else
              {
                v82 = 0;
                v29 = 0;
              }

              v30 = v81;
LABEL_29:
              if (v78 < v26)
              {
LABEL_68:

                v5 = v81;
                a3 = v75;
                v6 = v77;
                v7 = v84;
LABEL_67:
                v66 = v85;
                v67 = v86;
                *a3 = v5;
                a3[1] = v67;
                a3[2] = v7;
                a3[3] = v6;
                a3[4] = v66;
                return result;
              }

              if (v26 == v78)
              {
                v33 = v73[22];
                if (v73[26] == 2)
                {
                  if (v33 == 2)
                  {
                    goto LABEL_68;
                  }
                }

                else if (v33 != 2 && (v73[19] ^ v73[23]) < 1024)
                {
                  goto LABEL_68;
                }
              }

              if (v30 == v83[12])
              {
                v70 = v29;
                v71 = v30;
                if (v29)
                {
                  v34 = v29 + 24 * ((v82 >> ((4 * *(v29 + 18) + 8) & 0x3C)) & 0xF);
                  v36 = *(v34 + 32);
                  v35 = *(v34 + 40);

                  v79 = v35;
                }

                else
                {
                  v37 = v83[9];
                  swift_unknownObjectRetain();
                  specialized Rope._Node.subscript.getter(v82, v37);
                  v36 = v38;
                  v79 = v39;
                  result = swift_unknownObjectRelease();
                }

                v69 = v26;
                v40 = v76;
                v41 = v80;
                v88 = v36;
                while (1)
                {
                  if (!v41)
                  {
                    __break(1u);
                    goto LABEL_70;
                  }

                  v94 = v41;
                  v95 = v40;
                  v43 = *(v40 - 1);
                  v42 = *v40;
                  if (*(v17 + 16))
                  {

                    v44 = specialized __RawDictionaryStorage.find<A>(_:)(v43, v42);
                    if (v45)
                    {
                      outlined init with copy of AttributedString._AttributeValue(*(v17 + 56) + 72 * v44, &v115);
                      if (!*(v36 + 16))
                      {
                        goto LABEL_51;
                      }
                    }

                    else
                    {
                      v119 = 0;
                      v117 = 0u;
                      v118 = 0u;
                      v115 = 0u;
                      v116 = 0u;
                      if (!*(v36 + 16))
                      {
LABEL_51:

                        goto LABEL_52;
                      }
                    }
                  }

                  else
                  {
                    v119 = 0;
                    v117 = 0u;
                    v118 = 0u;
                    v115 = 0u;
                    v116 = 0u;

                    if (!*(v36 + 16))
                    {
                      goto LABEL_51;
                    }
                  }

                  v46 = specialized __RawDictionaryStorage.find<A>(_:)(v43, v42);
                  v48 = v47;

                  if (v48)
                  {
                    outlined init with copy of AttributedString._AttributeValue(*(v36 + 56) + 72 * v46, v113);
                    goto LABEL_53;
                  }

LABEL_52:
                  v114 = 0;
                  memset(v113, 0, sizeof(v113));
LABEL_53:
                  outlined init with copy of AttributedString._AttributeValue?(&v115, &v104);
                  outlined init with copy of AttributedString._AttributeValue?(v113, &v108);
                  if (v107)
                  {
                    outlined init with copy of AttributedString._AttributeValue?(&v104, v101);
                    if (!*(&v109 + 1))
                    {
                      goto LABEL_63;
                    }

                    v98 = v110;
                    v99 = v111;
                    v100 = v112;
                    v96 = v108;
                    v97 = v109;
                    v49 = v102;
                    v91 = v103;
                    v90 = __swift_project_boxed_opaque_existential_1(v101, v102);
                    v50 = __swift_project_boxed_opaque_existential_1(&v96, *(&v97 + 1));
                    v93 = &v68;
                    v51 = *(v49 - 8);
                    MEMORY[0x1EEE9AC00](v50);
                    v53 = &v68 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
                    v92 = &v68;
                    v55 = MEMORY[0x1EEE9AC00](v54);
                    (*(v57 + 16))(&v68 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0), v55);
                    v58 = type metadata accessor for Optional();
                    v59 = *(v58 - 8);
                    MEMORY[0x1EEE9AC00](v58);
                    v61 = &v68 - v60;
                    v62 = swift_dynamicCast();
                    v63 = *(v51 + 56);
                    if (!v62)
                    {
                      v63(v61, 1, 1, v49);
                      outlined destroy of TermOfAddress?(v113, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                      outlined destroy of TermOfAddress?(&v115, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                      (*(v59 + 8))(v61, v58);
                      outlined destroy of AttributedString._AttributeValue(&v96);
                      outlined destroy of AttributedString._AttributeValue(v101);
                      outlined destroy of TermOfAddress?(&v104, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                      goto LABEL_66;
                    }

                    v63(v61, 0, 1, v49);
                    (*(v51 + 32))(v53, v61, v49);
                    v64 = dispatch thunk of static Equatable.== infix(_:_:)();
                    (*(v51 + 8))(v53, v49);
                    outlined destroy of TermOfAddress?(v113, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                    outlined destroy of TermOfAddress?(&v115, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                    outlined destroy of AttributedString._AttributeValue(&v96);
                    outlined destroy of AttributedString._AttributeValue(v101);
                    result = outlined destroy of TermOfAddress?(&v104, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                    v17 = v87;
                    v36 = v88;
                    v26 = v89;
                    if ((v64 & 1) == 0)
                    {
                      goto LABEL_66;
                    }
                  }

                  else
                  {
                    outlined destroy of TermOfAddress?(v113, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                    outlined destroy of TermOfAddress?(&v115, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                    if (*(&v109 + 1))
                    {
                      goto LABEL_64;
                    }

                    result = outlined destroy of TermOfAddress?(&v104, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                  }

                  v40 = v95 + 2;
                  v41 = v94 - 1;
                  if (v94 == 1)
                  {

                    v21 = v83[9];
                    v23 = v83[12];
                    v5 = v71;
                    v85 = v72;
                    v86 = v82;
                    v20 = v69;
                    v104 = v71;
                    v105 = v82;
                    v19 = v70;
                    v106 = v70;
                    v65 = __OFADD__(v26, 1);
                    v22 = v26 + 1;
                    if (!v65)
                    {
                      goto LABEL_10;
                    }

                    __break(1u);
LABEL_63:
                    outlined destroy of TermOfAddress?(v113, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                    outlined destroy of TermOfAddress?(&v115, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                    outlined destroy of AttributedString._AttributeValue(v101);
LABEL_64:
                    outlined destroy of TermOfAddress?(&v104, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMd);
LABEL_66:

                    a3 = v75;
                    v6 = v77;
                    v7 = v84;
                    v5 = v81;
                    goto LABEL_67;
                  }
                }
              }

              goto LABEL_74;
            }

            result = swift_unknownObjectRelease();
            v82 = v105;
          }

          v29 = v106;
          v30 = v104;
          goto LABEL_29;
        }

        goto LABEL_72;
      }
    }

    else
    {
LABEL_70:
      __break(1u);
    }

    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
  }

  __break(1u);
  return result;
}

void AttributedString.Runs._slicedRunBoundary(after:attributeNames:constraints:endOfCurrent:)(unint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, unint64_t *a5@<X8>)
{
  v6 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v88 - v14;
  if (!a2[2])
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v98 = a2;
  v94 = a4;
  v16 = *a1;
  v17 = a1[1];
  v18 = a1[2];
  v19 = a1[3];
  v20 = *v6;
  v107 = a3;
  v108 = v16;
  v102 = a5;
  v103 = v17;
  *&v104 = v18;
  *(&v104 + 1) = v19;
  v106 = v20;
  AttributedString.Guts.findRun(at:)(v16, v19, &v116);
  v105 = v119;
  v96 = v121;
  v97 = v120;
  v95 = v122;
  v127[0] = v116;
  v127[1] = v117;
  v128 = v118;
  v21 = *(type metadata accessor for AttributedString.Runs() + 24);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v111 = v21;
  RangeSet.ranges.getter();
  v22 = RangeSet.Ranges.count.getter();
  v112 = *(v13 + 8);
  v112(v15, v12);
  if (v22 < 1)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v23 = 0;
  v24 = v108 >> 10;
  v109 = v12;
  while (1)
  {
    if (__OFADD__(v23, v22))
    {
      goto LABEL_32;
    }

    v25 = (v23 + v22) / 2;
    RangeSet.ranges.getter();
    RangeSet.Ranges.subscript.getter();
    v112(v15, v12);
    if (v24 >= v116 >> 10)
    {
      break;
    }

LABEL_4:
    v22 = v25;
    if (v23 >= v25)
    {
      goto LABEL_31;
    }
  }

  v26 = v118;
  v27 = v118 >> 10;
  if (v24 >= v118 >> 10)
  {
    v23 = v25 + 1;
    v25 = v22;
    v12 = v109;
    goto LABEL_4;
  }

  v99 = v119;
  v100 = v120;
  v101 = v121;
  v28 = v107;
  if (*(v107 + 16) == 1 && (specialized Set.contains(_:)(0, 1, v107) & 1) == 0)
  {
    goto LABEL_21;
  }

  AttributedString.Runs._lastOfMatchingRuns(with:comparing:)(v127, v98, v123);
  v29 = v106;
  v31 = *(v106 + 72);
  v30 = *(v106 + 80);
  v32 = *(v106 + 96);
  v92 = *(v106 + 88);
  v93 = v30;
  v90 = v123[0];
  v91 = v32;
  v98 = v123[4];
  v88 = v123[2];
  v89 = v123[1];
  swift_unknownObjectRetain();
  v33 = specialized Rope.subscript.getter(v90, v89, v88, v31, v93, v92, v91);
  v92 = v34;
  v93 = v33;
  v91 = v35;
  swift_unknownObjectRelease();

  v36 = v98 + v93;
  if (__OFADD__(v98, v93))
  {
    goto LABEL_34;
  }

  v38 = *(v29 + 24);
  v37 = (v29 + 24);
  v39 = v38;
  v40 = v37[1];
  v41 = v37[2];
  v129 = v38;
  v130 = v40;
  v131 = v41;
  v42 = __OFSUB__(v36, v105 >> 11);
  v43 = &v36[-(v105 >> 11)];
  if (!v42)
  {
    v98 = v39;
    v93 = v43;
    swift_unknownObjectRetain();
    v44 = BigString.UTF8View.index(_:offsetBy:)();
    v105 = v45;
    v96 = v47;
    v97 = v46;
    swift_unknownObjectRelease();
    if (v44 >> 10 < v27)
    {
      v48 = v37[1];
      v113 = *v37;
      v114 = v48;
      v115 = v37[2];
      if (v44 >> 10 < v24)
      {
        goto LABEL_36;
      }

      *&v116 = v108;
      *(&v116 + 1) = v103;
      v117 = v104;
      v118 = v44;
      v119 = v105;
      v120 = v97;
      v121 = v96;
      v49 = *v37;
      v50 = v37[1];
      *&v126 = *(v37 + 4);
      v124 = v49;
      v125 = v50;
      outlined init with copy of Rope<BigString._Chunk>._Node?(&v124, v132);
      v51 = BigString._firstConstraintBreak(in:with:)(&v116, v107);
      v53 = v52;
      v55 = v54;
      v57 = v56;
      outlined destroy of BigString(&v113);
      v58 = *(v106 + 16);
      v59 = v102;
      *v102 = v51;
      v59[1] = v53;
      v59[2] = v55;
      v59[3] = v57;
      goto LABEL_30;
    }

    v60 = *v37;
    v61 = v37[2];
    v125 = v37[1];
    v126 = v61;
    v124 = v60;
    *&v116 = v108;
    *(&v116 + 1) = v103;
    v117 = v104;
    v118 = v26;
    v119 = v99;
    v120 = v100;
    v121 = v101;
    v62 = *v37;
    v63 = v37[1];
    v133 = *(v37 + 4);
    v132[0] = v62;
    v132[1] = v63;
    outlined init with copy of Rope<BigString._Chunk>._Node?(v132, &v113);
    v64 = BigString._firstConstraintBreak(in:with:)(&v116, v107);
    v66 = v65;
    v108 = v67;
    v28 = v68;
    outlined destroy of BigString(&v124);
    if (v27 == v64 >> 10)
    {
      v69 = v106;
      if (v94)
      {
        goto LABEL_25;
      }

      RangeSet.ranges.getter();
      v27 = v109;
      v70 = RangeSet.Ranges.count.getter();
      v112(v15, v27);
      v71 = v70 - 1;
      if (!__OFSUB__(v70, 1))
      {
        goto LABEL_24;
      }

      __break(1u);
LABEL_21:
      v69 = v106;
      v72 = *(v106 + 24);
      v73 = *(v106 + 56);
      v130 = *(v106 + 40);
      v131 = v73;
      v129 = v72;
      *&v116 = v108;
      *(&v116 + 1) = v103;
      v117 = v104;
      v118 = v26;
      v119 = v99;
      v120 = v100;
      v121 = v101;
      v74 = *(v106 + 24);
      v75 = *(v106 + 40);
      *&v126 = *(v106 + 56);
      v124 = v74;
      v125 = v75;
      outlined init with copy of Rope<BigString._Chunk>._Node?(&v124, &v113);
      v76 = BigString._firstConstraintBreak(in:with:)(&v116, v28);
      v107 = v78;
      v108 = v77;
      v28 = v79;
      outlined destroy of BigString(&v129);
      if ((v94 & 1) == 0 && v76 >> 10 == v27)
      {
        RangeSet.ranges.getter();
        v80 = v109;
        v81 = RangeSet.Ranges.count.getter();
        v112(v15, v80);
        v71 = v81 - 1;
        if (__OFSUB__(v81, 1))
        {
          goto LABEL_37;
        }

LABEL_24:
        if (v25 == v71)
        {
LABEL_25:
          v58 = *(v69 + 16);
          v59 = v102;
          v83 = v99;
          v82 = v100;
          *v102 = v26;
          v59[1] = v83;
          v59[2] = v82;
          v59[3] = v101;
        }

        else
        {
          RangeSet.ranges.getter();
          v86 = v109;
          RangeSet.Ranges.subscript.getter();
          v112(v15, v86);
          v58 = *(v69 + 16);
          v87 = v114;
          v59 = v102;
          *v102 = v113;
          *(v59 + 1) = v87;
        }

LABEL_30:
        v59[4] = v58;
        return;
      }

      v58 = *(v69 + 16);
      v59 = v102;
      v84 = v107;
      v85 = v108;
      *v102 = v76;
      v59[1] = v85;
    }

    else
    {
      v58 = *(v106 + 16);
      v59 = v102;
      *v102 = v64;
      v59[1] = v66;
      v84 = v108;
    }

    v59[2] = v84;
    v59[3] = v28;
    goto LABEL_30;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

unint64_t BigString._firstConstraintBreak(in:with:)(uint64_t *a1, uint64_t a2)
{
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *a1;
  v79 = *(a1 + 1);
  v10 = a1[4];
  v80 = a1[3];
  v11 = a1[5];
  v12 = a1[6];
  v53 = a1[3];
  v13 = v9 >> 10;
  v14 = a1[7];
  v52 = *(a1 + 1);
  if (v9 >> 10 == v10 >> 10)
  {
    return v10;
  }

  v40 = v7;
  v41 = v6;
  v42 = v5;
  v43 = v4;
  v44 = v3;
  v39 = v8;
  if ((specialized Set.contains(_:)(0, 0, a2) & 1) == 0)
  {
    v18 = (a1 + 1);
    goto LABEL_8;
  }

  v73 = v44;
  v74 = v43;
  v75 = v42;
  v76 = v41;
  v77 = v40;
  v78 = v8;
  BigString.UTF8View.subscript.getter();
  v68 = v52;
  v71 = v52;
  v69 = v53;
  v70 = v9;
  v67 = v9;
  v72 = v53;
  specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v67, v47);
  result = outlined destroy of BigSubstring.UTF8View(v46);
  if (v51 == 2)
  {
    v18 = &v79;
    goto LABEL_8;
  }

  v10 = v48;
  if (v13 <= v48 >> 10)
  {
    v11 = v49;
    v12 = v50;
    v18 = &v52;
    v14 = v51;
LABEL_8:
    v45 = *(v18 + 2);
    v55 = *v18;
    v54 = v9;
    v56 = v45;
    v57 = v10;
    v58 = v11;
    v59 = v12;
    v60 = v14;
    if (specialized Collection<>._containsScalarConstraint.getter(a2))
    {
      v19 = 1 << *(a2 + 32);
      v20 = -1;
      if (v19 < 64)
      {
        v20 = ~(-1 << v19);
      }

      v21 = v20 & *(a2 + 56);
      v22 = (v19 + 63) >> 6;

      v23 = 0;
      v38 = MEMORY[0x1E69E7CC0];
      while (v21)
      {
LABEL_17:
        v25 = __clz(__rbit64(v21));
        v21 &= v21 - 1;
        v26 = (*(a2 + 48) + ((v23 << 10) | (16 * v25)));
        v27 = v26[1];
        if (v27 >= 2)
        {
          result = specialized Collection.first.getter(*v26, v27);
          if ((result & 0x100000000) == 0)
          {
            v37 = result;
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v38 + 16) + 1, 1, v38);
              v38 = result;
            }

            v28 = v37;
            v30 = *(v38 + 16);
            v29 = *(v38 + 24);
            v31 = v30 + 1;
            if (v30 >= v29 >> 1)
            {
              v35 = *(v38 + 16);
              v36 = v30 + 1;
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v38);
              v30 = v35;
              v31 = v36;
              v38 = result;
              v28 = v37;
            }

            *(v38 + 16) = v31;
            *(v38 + 4 * v30 + 32) = v28;
          }
        }
      }

      while (1)
      {
        v24 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          __break(1u);
          goto LABEL_29;
        }

        if (v24 >= v22)
        {
          break;
        }

        v21 = *(a2 + 56 + 8 * v24);
        ++v23;
        if (v21)
        {
          v23 = v24;
          goto LABEL_17;
        }
      }

      v61 = v44;
      v62 = v43;
      v63 = v42;
      v64 = v41;
      v65 = v40;
      v66 = v39;
      BigString.UnicodeScalarView.subscript.getter();
      v32 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v38);
      v34 = v33;

      result = outlined destroy of BigSubstring.UnicodeScalarView(v47);
      if (v34 == 2)
      {
        return v10;
      }

      if (v13 <= v32 >> 10)
      {
        return v32;
      }

      goto LABEL_30;
    }

    return v10;
  }

LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

unint64_t BigString._lastConstraintBreak(in:with:)(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[4];
  if (v5 >> 10 == *a1 >> 10)
  {
    return v3;
  }

  v44 = v5 >> 10;
  v45 = a1[3];
  v46 = a1[2];
  v42 = v2[1];
  v43 = *v2;
  v40 = v2[3];
  v41 = v2[2];
  v38 = v2[5];
  v39 = v2[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = a1[7];
  if ((specialized Set.contains(_:)(0, 0, a2) & 1) == 0 || v44 <= BigString.startIndex.getter() >> 10)
  {
    v15 = v46;
LABEL_9:
    v50 = v3;
    v51 = v4;
    v52 = v15;
    v53 = v45;
    v54 = v5;
    v55 = v7;
    v56 = v8;
    v57 = v9;
    if (specialized Collection<>._containsScalarConstraint.getter(a2))
    {
      v16 = 1 << *(a2 + 32);
      v17 = -1;
      if (v16 < 64)
      {
        v17 = ~(-1 << v16);
      }

      v18 = v17 & *(a2 + 56);
      v19 = (v16 + 63) >> 6;

      v20 = 0;
      v21 = MEMORY[0x1E69E7CC0];
      while (v18)
      {
LABEL_18:
        v23 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
        v24 = (*(a2 + 48) + ((v20 << 10) | (16 * v23)));
        v25 = v24[1];
        if (v25 >= 2)
        {
          result = specialized Collection.first.getter(*v24, v25);
          if ((result & 0x100000000) == 0)
          {
            v37 = result;
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 16) + 1, 1, v21);
              v21 = result;
            }

            v27 = *(v21 + 16);
            v26 = *(v21 + 24);
            v28 = v27 + 1;
            v29 = v37;
            if (v27 >= v26 >> 1)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v21);
              v28 = v27 + 1;
              v29 = v37;
              v21 = result;
            }

            *(v21 + 16) = v28;
            *(v21 + 4 * v27 + 32) = v29;
          }
        }
      }

      while (1)
      {
        v22 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          __break(1u);
          goto LABEL_31;
        }

        if (v22 >= v19)
        {
          break;
        }

        v18 = *(a2 + 56 + 8 * v22);
        ++v20;
        if (v18)
        {
          v20 = v22;
          goto LABEL_18;
        }
      }

      v58 = v43;
      v59 = v42;
      v60 = v41;
      v61 = v40;
      v62 = v39;
      v63 = v38;
      BigString.UnicodeScalarView.subscript.getter();
      v30 = BigSubstring.UnicodeScalarView._findLastScalarBoundary(for:)(v21);
      v32 = v31;

      result = outlined destroy of BigSubstring.UnicodeScalarView(v48);
      if (v32 == 2)
      {
        return v3;
      }

      if (v44 >= v30 >> 10)
      {
        return v30;
      }

      goto LABEL_32;
    }

    return v3;
  }

  v36 = v4;
  v64[8] = v43;
  v64[9] = v42;
  v64[10] = v41;
  v64[11] = v40;
  v64[12] = v39;
  v64[13] = v38;
  v10 = BigString.UTF8View.index(before:)();
  v34 = v12;
  v35 = v11;
  v33 = v13;
  result = BigString.UTF8View.subscript.getter();
  if (v44 < v10 >> 10)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v64[0] = v10;
  v64[1] = v35;
  v64[2] = v34;
  v64[3] = v33;
  v64[4] = v5;
  v64[5] = v7;
  v64[6] = v8;
  v64[7] = v9;
  specialized BidirectionalCollection<>._getBlock(for:in:)(1, v64, v48);
  result = outlined destroy of BigSubstring.UTF8View(v47);
  v4 = v36;
  v15 = v46;
  if (v49 == 2)
  {
    goto LABEL_9;
  }

  v3 = v48[0];
  if (v44 >= v48[0] >> 10)
  {
    v4 = v48[1];
    v15 = v48[2];
    v45 = v49;
    goto LABEL_9;
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t AttributedString.Runs._slicedRunBoundary(roundingDown:attributeNames:constraints:)@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = v5;
  v304 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v274 - v13);
  v284 = a3[2];
  if (!v284)
  {
    goto LABEL_249;
  }

  v290 = a1;
  v291 = a5;
  v15 = *a2;
  v16 = a2[1];
  v17 = a2[2];
  v18 = a2[3];
  v19 = *v6;
  v301 = v15;
  v293 = v17;
  v294 = v16;
  v292 = v18;
  v308 = a3;
  v309 = v19;
  AttributedString.Guts.findRun(at:)(v15, v18, &v329);
  v299 = v330;
  v300 = v331;
  v310 = v332;
  v311 = v329;
  v303 = v333;
  v287 = v335;
  v288 = v334;
  v285 = v337;
  v286 = v336;
  v20 = *(type metadata accessor for AttributedString.Runs() + 24);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v313 = v20;
  v314 = v6;
  v312 = v21;
  RangeSet.ranges.getter();
  v22 = v14;
  v23 = RangeSet.Ranges.count.getter();
  v24 = *(v12 + 8);
  v24(v14, v11);
  if (v23 < 1)
  {
LABEL_237:
    __break(1u);
LABEL_238:
    __break(1u);
    goto LABEL_239;
  }

  v25 = 0;
  v26 = v301 >> 10;
  while (1)
  {
    if (__OFADD__(v25, v23))
    {
      goto LABEL_238;
    }

    v27 = (v25 + v23) / 2;
    RangeSet.ranges.getter();
    v22 = v14;
    RangeSet.Ranges.subscript.getter();
    v24(v14, v11);
    if (v26 >= v329 >> 10)
    {
      break;
    }

LABEL_4:
    v23 = v27;
    if (v25 >= v27)
    {
      goto LABEL_237;
    }
  }

  if (v26 >= v333 >> 10)
  {
    v25 = v27 + 1;
    v27 = v23;
    goto LABEL_4;
  }

  v289 = v329 >> 10;
  v297 = v330;
  v298 = v329;
  v295 = v332;
  v296 = v331;
  if (*(v304 + 16) == 1 && (specialized Set.contains(_:)(0, 1, v304) & 1) == 0)
  {
    v101 = (v309 + 24);
    v102 = *(v309 + 40);
    v103 = *(v309 + 56);
    v366[3] = *(v309 + 24);
    v366[4] = v102;
    v366[5] = v103;
    swift_unknownObjectRetain();
    v104 = BigString.UnicodeScalarView.index(after:)();
    v106 = v105;
    v108 = v107;
    v110 = v109;
    result = swift_unknownObjectRelease();
    v111 = *v101;
    v112 = v101[2];
    v366[1] = v101[1];
    v366[2] = v112;
    v366[0] = v111;
    v113 = v104 >> 10;
    v114 = v300;
    if (v104 >> 10 < v289)
    {
LABEL_259:
      __break(1u);
      goto LABEL_260;
    }

    v116 = *v101;
    v115 = *(v101 + 1);
    v117 = *(v101 + 2);
    v118 = *(v101 + 3);
    v119 = *(v101 + 4);
    v120 = *(v101 + 5);
    *&v343 = v298;
    *(&v343 + 1) = v297;
    *&v344 = v296;
    *(&v344 + 1) = v295;
    *&v345 = v104;
    *(&v345 + 1) = v106;
    *&v346 = v108;
    *(&v346 + 1) = v110;
    if (v289 != v113)
    {
      v307 = v120;
      v308 = v119;
      v312 = v118;
      v313 = v117;
      v314 = v115;
      v121 = v101[1];
      v353 = *v101;
      v354 = v121;
      v355 = *(v101 + 4);
      outlined init with copy of Rope<BigString._Chunk>._Node?(&v353, &v329);
      if ((specialized Set.contains(_:)(0, 0, v304) & 1) != 0 && v113 > BigString.startIndex.getter() >> 10)
      {
        v306 = v116;
        *&v363 = v116;
        *(&v363 + 1) = v314;
        *&v364 = v313;
        *(&v364 + 1) = v312;
        *&v365 = v308;
        *(&v365 + 1) = v307;
        v122 = BigString.UTF8View.index(before:)();
        v305 = v123;
        v125 = v124;
        v127 = v126;
        result = BigString.UTF8View.subscript.getter();
        if (v113 < v122 >> 10)
        {
          goto LABEL_265;
        }

        v321 = v122;
        v322 = v305;
        v323 = v125;
        v324 = v127;
        v325 = v104;
        v326 = v106;
        v327 = v108;
        v328 = v110;
        specialized BidirectionalCollection<>._getBlock(for:in:)(1, &v321, &v329);
        result = outlined destroy of BigSubstring.UTF8View(&v348);
        v114 = v300;
        v128 = v298;
        v116 = v306;
        if (v332 != 2)
        {
          v128 = v329;
          if (v113 < v329 >> 10)
          {
            goto LABEL_267;
          }

          v296 = v331;
          v297 = v330;
          v295 = v332;
        }
      }

      else
      {
        v128 = v298;
      }

      v298 = v128;
      *&v316 = v128;
      *(&v316 + 1) = v297;
      *&v317 = v296;
      *(&v317 + 1) = v295;
      *&v318 = v104;
      *(&v318 + 1) = v106;
      *&v319 = v108;
      *(&v319 + 1) = v110;
      v183 = v304;
      if (specialized Collection<>._containsScalarConstraint.getter(v304))
      {
        v306 = v116;
        v184 = 1 << *(v183 + 32);
        v185 = -1;
        if (v184 < 64)
        {
          v185 = ~(-1 << v184);
        }

        v186 = v185 & *(v183 + 56);
        v187 = (v184 + 63) >> 6;

        v188 = 0;
        v189 = MEMORY[0x1E69E7CC0];
        v168 = v303;
        while (1)
        {
          if (v186)
          {
            goto LABEL_132;
          }

          do
          {
            v190 = v188 + 1;
            if (__OFADD__(v188, 1))
            {
              goto LABEL_247;
            }

            if (v190 >= v187)
            {

              v357 = v306;
              v358 = v314;
              v359 = v313;
              v360 = v312;
              v361 = v308;
              v362 = v307;
              BigString.UnicodeScalarView.subscript.getter();
              v262 = BigSubstring.UnicodeScalarView._findLastScalarBoundary(for:)(v189);
              v264 = v263;
              v266 = v265;
              v268 = v267;
              outlined destroy of BigString(v366);

              result = outlined destroy of BigSubstring.UnicodeScalarView(&v329);
              v225 = v309;
              v224 = v310;
              if (v268 != 2)
              {
                if (v113 < v262 >> 10)
                {
                  goto LABEL_266;
                }

                v297 = v264;
                v298 = v262;
                v295 = v268;
                v296 = v266;
              }

LABEL_163:
              v169 = v299;
              *&v367 = v311;
              *(&v367 + 1) = v299;
              *&v368 = v114;
              v226 = v298 >> 11;
              if ((v298 >> 11) >= v168)
              {
                goto LABEL_235;
              }

              v227 = __OFSUB__(v224, 1);
              v228 = v224 - 1;
              if (!v227)
              {
                v314 = (v298 >> 11);
                while (1)
                {
                  v310 = v228;
                  if (v311 != v225[12])
                  {
                    goto LABEL_243;
                  }

                  v229 = v225[9];
                  if (v229)
                  {
                    v230 = *(v229 + 18);
                    swift_unknownObjectRetain();
                    if (v230 >= v169)
                    {
                      goto LABEL_244;
                    }
                  }

                  else if (!v169)
                  {
                    goto LABEL_244;
                  }

                  if (v114)
                  {
                    v231 = (4 * *(v114 + 18) + 8) & 0x3C;
                    if (((v169 >> v231) & 0xF) != 0)
                    {
                      v169 = ((((v169 >> v231) & 0xF) - 1) << v231) | ((-15 << v231) - 1) & v169;
                      *(&v367 + 1) = v169;
                      goto LABEL_201;
                    }
                  }

                  v232 = (4 * *(v229 + 18) + 8) & 0x3C;
                  v233 = (v169 >> v232) & 0xF;
                  if (*(v229 + 18))
                  {
                    break;
                  }

                  if (!v233)
                  {
                    goto LABEL_251;
                  }

                  v169 = ((v233 - 1) << v232) | v169 & 0xFFFFFFFFFFFFF0FFLL;
                  *(&v367 + 1) = v169;
                  *&v368 = v229;
                  v114 = v229;
LABEL_202:
                  if (v367 != v311)
                  {
                    goto LABEL_245;
                  }

                  if (v114)
                  {
                    v256 = *(v114 + 24 * ((v169 >> ((4 * *(v114 + 18) + 8) & 0x3C)) & 0xF) + 24);

                    result = swift_unknownObjectRelease();
                    v227 = __OFSUB__(v168, v256);
                    v168 -= v256;
                    if (v227)
                    {
                      goto LABEL_246;
                    }

                    v225 = v309;
                    if (v226 >= v168)
                    {
                      goto LABEL_235;
                    }
                  }

                  else
                  {
                    v257 = specialized Rope._Node.subscript.getter(v169, v229);
                    swift_unknownObjectRelease();

                    v227 = __OFSUB__(v168, v257);
                    v168 -= v257;
                    if (v227)
                    {
                      goto LABEL_248;
                    }

                    if (v226 >= v168)
                    {
                      v114 = 0;
                      v225 = v309;
LABEL_235:
                      v269 = v225[2];
                      v270 = v290;
                      v271 = v297;
                      *v290 = v298;
                      v270[1] = v271;
                      v272 = v295;
                      v270[2] = v296;
                      v270[3] = v272;
                      v270[4] = v269;
                      v223 = v291;
LABEL_236:
                      v273 = v310;
                      *v223 = v311;
                      v223[1] = v169;
                      v223[2] = v114;
                      v223[3] = v273;
                      v223[4] = v168;
                      return result;
                    }

                    v225 = v309;
                  }

                  v228 = v310 - 1;
                  if (__OFSUB__(v310, 1))
                  {
                    goto LABEL_241;
                  }
                }

                if (v233 < *(v229 + 16))
                {
                  v303 = v168;
                  v234 = *(v229 + 24 * ((v169 >> v232) & 0xF) + 24);
                  v235 = v169;
                  v236 = (4 * *(v234 + 18) + 8) & 0x3C;
                  v237 = v235;
                  v238 = (v235 >> v236) & 0xF;
                  if (!*(v234 + 18))
                  {
                    if (v238)
                    {
                      *(&v367 + 1) = ((v238 - 1) << v236) | v235 & 0xFFFFFFFFFFFFF0FFLL;
                      *&v368 = v234;
                      swift_unknownObjectRetain();
                      v168 = v303;
                      goto LABEL_200;
                    }

                    swift_unknownObjectRetain();
                    goto LABEL_198;
                  }

                  if (v238 >= *(v234 + 16))
                  {
                    swift_unknownObjectRetain();
                    swift_unknownObjectRetain();
                    goto LABEL_194;
                  }

                  v239 = *(v234 + 24 * ((v235 >> v236) & 0xF) + 24);
                  v240 = ((4 * *(v239 + 18) + 8) & 0x3C);
                  v241 = (v235 >> v240) & 0xF;
                  if (!*(v239 + 18))
                  {
                    if (v241)
                    {
                      *(&v367 + 1) = ((v241 - 1) << v240) | v235 & 0xFFFFFFFFFFFFF0FFLL;
                      *&v368 = v239;
                      swift_unknownObjectRetain();
                      swift_unknownObjectRetain();
                      v168 = v303;
                      v226 = v314;
                      goto LABEL_230;
                    }

                    swift_unknownObjectRetain();
                    swift_unknownObjectRetain();
                    v226 = v314;
                    goto LABEL_194;
                  }

                  v242 = *(v239 + 16);
                  v313 = *(v234 + 24 * ((v235 >> v236) & 0xF) + 24);
                  if (v241 >= v242)
                  {
                    v308 = v240;
                    v312 = (v235 >> v240) & 0xF;
                    swift_unknownObjectRetain();
                    swift_unknownObjectRetain();
                  }

                  else
                  {
                    v243 = *(v239 + 24 * ((v235 >> v240) & 0xF) + 24);
                    v244 = (4 * *(v243 + 18) + 8) & 0x3C;
                    v245 = (v237 >> v244) & 0xF;
                    if (*(v243 + 18))
                    {
                      v246 = *(v243 + 16);
                      v307 = *(v239 + 24 * v241 + 24);
                      if (v245 < v246)
                      {
                        v247 = *(v243 + 24 * ((v237 >> v244) & 0xF) + 24);
                        v248 = *(v247 + 18);
                        v249 = (4 * v248 + 8) & 0x3C;
                        v250 = (v237 >> v249) & 0xF;
                        v315 = v250;
                        if (v248)
                        {
                          v305 = v244;
                          v306 = (v237 >> v244) & 0xF;
                          v308 = v240;
                          v312 = v241;
                          v251 = v247;
                          LODWORD(v304) = v248;
                          swift_unknownObjectRetain();
                          swift_unknownObjectRetain();
                          swift_unknownObjectRetain();
                          swift_unknownObjectRetain();
                          swift_unknownObjectRetain();
                          LODWORD(v304) = specialized closure #1 in Rope._Node.formPredecessor(of:)((v251 + 16), v251 + 24, &v315, &v367, v304);
                          swift_unknownObjectRelease();
                          v226 = v314;
                          if (v304)
                          {
LABEL_228:
                            swift_unknownObjectRelease();
LABEL_229:
                            swift_unknownObjectRelease();
                            v168 = v303;
LABEL_230:
                            swift_unknownObjectRelease();
LABEL_200:
                            swift_unknownObjectRelease();
                            v169 = *(&v367 + 1);
LABEL_201:
                            v114 = v368;
                            goto LABEL_202;
                          }

LABEL_222:
                          if (v306)
                          {
                            *(&v367 + 1) = *(&v367 + 1) & ((-15 << v305) - 1) | ((v306 - 1) << v305);
                            v260 = *(v307 + 24 * v306);
                            swift_unknownObjectRetain();
                            v261 = specialized Rope._Node.descendToLastItem(under:)(&v367 + 1, v260);
                            swift_unknownObjectRelease();
                            *&v368 = v261;
                            goto LABEL_228;
                          }

                          swift_unknownObjectRelease();
LABEL_214:
                          if (v312)
                          {
                            *(&v367 + 1) = *(&v367 + 1) & ((-15 << v308) - 1) | ((v312 - 1) << v308);
                            v258 = *(v313 + 24 * v312);
                            swift_unknownObjectRetain();
                            v259 = specialized Rope._Node.descendToLastItem(under:)(&v367 + 1, v258);
                            swift_unknownObjectRelease();
                            *&v368 = v259;
LABEL_220:
                            v226 = v314;
                            goto LABEL_229;
                          }

                          swift_unknownObjectRelease();
LABEL_194:
                          if (v238)
                          {
                            *(&v367 + 1) = *(&v367 + 1) & ((-15 << v236) - 1) | ((v238 - 1) << v236);
                            v252 = *(v234 + 24 * v238);
                            swift_unknownObjectRetain();
                            v253 = specialized Rope._Node.descendToLastItem(under:)(&v367 + 1, v252);
                            swift_unknownObjectRelease();
                            *&v368 = v253;
                            swift_unknownObjectRelease();
                            v168 = v303;
                            goto LABEL_200;
                          }

                          swift_unknownObjectRelease();
LABEL_198:
                          v168 = v303;
                          if (!v233)
                          {
                            goto LABEL_250;
                          }

LABEL_199:
                          *(&v367 + 1) = *(&v367 + 1) & ((-15 << v232) - 1) | ((v233 - 1) << v232);
                          v254 = *(v229 + 24 * v233);
                          swift_unknownObjectRetain();
                          v255 = specialized Rope._Node.descendToLastItem(under:)(&v367 + 1, v254);
                          swift_unknownObjectRelease();
                          *&v368 = v255;
                          goto LABEL_200;
                        }

                        if (v250)
                        {
                          *(&v367 + 1) = ((v250 - 1) << v249) | v237 & 0xFFFFFFFFFFFFF0FFLL;
                          *&v368 = v247;
                          swift_unknownObjectRetain();
                          swift_unknownObjectRetain();
                          swift_unknownObjectRetain();
                          swift_unknownObjectRetain();
                          v226 = v314;
                          goto LABEL_228;
                        }
                      }

                      v305 = v244;
                      v306 = (v237 >> v244) & 0xF;
                      v308 = v240;
                      v312 = v241;
                      swift_unknownObjectRetain();
                      swift_unknownObjectRetain();
                      swift_unknownObjectRetain();
                      swift_unknownObjectRetain();
                      v226 = v314;
                      goto LABEL_222;
                    }

                    if (v245)
                    {
                      *(&v367 + 1) = ((v245 - 1) << v244) | v237 & 0xFFFFFFFFFFFFF0FFLL;
                      *&v368 = v243;
                      swift_unknownObjectRetain();
                      swift_unknownObjectRetain();
                      swift_unknownObjectRetain();
                      goto LABEL_220;
                    }

                    v308 = v240;
                    v312 = v241;
                    swift_unknownObjectRetain();
                    swift_unknownObjectRetain();
                  }

                  swift_unknownObjectRetain();
                  v226 = v314;
                  goto LABEL_214;
                }

                swift_unknownObjectRetain();
                if (!v233)
                {
                  goto LABEL_250;
                }

                goto LABEL_199;
              }

LABEL_241:
              __break(1u);
LABEL_242:
              __break(1u);
LABEL_243:
              __break(1u);
LABEL_244:
              __break(1u);
LABEL_245:
              __break(1u);
LABEL_246:
              __break(1u);
LABEL_247:
              __break(1u);
LABEL_248:
              __break(1u);
LABEL_249:
              __break(1u);
LABEL_250:
              swift_unknownObjectRelease();
              __break(1u);
LABEL_251:
              __break(1u);
              goto LABEL_252;
            }

            v186 = *(v183 + 56 + 8 * v190);
            ++v188;
          }

          while (!v186);
          v188 = v190;
LABEL_132:
          v191 = __clz(__rbit64(v186));
          v186 &= v186 - 1;
          v192 = (*(v304 + 48) + ((v188 << 10) | (16 * v191)));
          v193 = v192[1];
          if (v193 >= 2)
          {
            v194 = specialized Collection.first.getter(*v192, v193);
            if ((v194 & 0x100000000) == 0)
            {
              v195 = v194;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v189 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v189 + 2) + 1, 1, v189);
              }

              v197 = *(v189 + 2);
              v196 = *(v189 + 3);
              if (v197 >= v196 >> 1)
              {
                v189 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v196 > 1), v197 + 1, 1, v189);
              }

              v198 = v195;
              v168 = v303;
              *(v189 + 2) = v197 + 1;
              *&v189[4 * v197 + 32] = v198;
              v114 = v300;
            }
          }
        }
      }

      result = outlined destroy of BigString(v366);
    }

    v225 = v309;
    v224 = v310;
    v168 = v303;
    goto LABEL_163;
  }

  v28 = *(v309 + 72);
  v29 = *(v309 + 80);
  v30 = *(v309 + 88);
  v31 = *(v309 + 96);
  swift_unknownObjectRetain();
  v32 = v299;
  v33 = v300;
  specialized Rope.subscript.getter(v311, v299, v300, v28, v29, v30, v31);
  v35 = v34;
  v37 = v36;
  result = swift_unknownObjectRelease();
  v39 = v314[1];
  v14 = &v343;
  if (v39 >= v310)
  {

    v100 = v303;
    goto LABEL_101;
  }

  v277 = v37;
  v278 = v308 + 5;
  v283 = v310;
  v40 = v303;
  v302 = v35;
  v275 = v39;
  while (2)
  {
    v41 = *(v309 + 72);
    v43 = *(v309 + 88);
    v42 = *(v309 + 96);
    v329 = v311;
    v330 = v32;
    v331 = v33;
    if (v311 != v42)
    {
      goto LABEL_254;
    }

    v282 = v40;
    if (v41)
    {
      v44 = *(v41 + 18);
      result = swift_unknownObjectRetain();
      if (v44 >= v32)
      {
LABEL_255:
        __break(1u);
LABEL_256:
        __break(1u);
LABEL_257:
        __break(1u);
        goto LABEL_258;
      }
    }

    else if (!v32)
    {
      goto LABEL_255;
    }

    if (v33)
    {
      v45 = (4 * *(v33 + 18) + 8) & 0x3C;
      if (((v32 >> v45) & 0xF) != 0)
      {
        v46 = ((((v32 >> v45) & 0xF) - 1) << v45) | ((-15 << v45) - 1) & v32;
        v330 = v46;
        goto LABEL_54;
      }
    }

    v47 = (4 * *(v41 + 18) + 8) & 0x3C;
    v48 = (v32 >> v47) & 0xF;
    if (!*(v41 + 18))
    {
      if (!v48)
      {
        goto LABEL_261;
      }

      v46 = ((v48 - 1) << v47) | v32 & 0xFFFFFFFFFFFFF0FFLL;
      v330 = v46;
      v331 = v41;
      v33 = v41;
      if (v41)
      {
        goto LABEL_54;
      }

      goto LABEL_32;
    }

    if (v48 >= *(v41 + 16))
    {
      swift_unknownObjectRetain();
      if (v48)
      {
        goto LABEL_51;
      }

      goto LABEL_260;
    }

    v314 = v43;
    v49 = *(v41 + 24 * ((v32 >> v47) & 0xF) + 24);
    v50 = (4 * *(v49 + 18) + 8) & 0x3C;
    v51 = v32;
    v52 = (v32 >> v50) & 0xF;
    if (*(v49 + 18))
    {
      v53 = *(v41 + 24 * ((v32 >> v47) & 0xF) + 24);
      if (v52 >= *(v49 + 16))
      {
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        if (!v52)
        {
          goto LABEL_49;
        }

        goto LABEL_38;
      }

      v54 = *(v49 + 24 * v52 + 24);
      v55 = (4 * *(v54 + 18) + 8) & 0x3C;
      v56 = (v51 >> v55) & 0xF;
      if (*(v54 + 18))
      {
        v57 = *(v54 + 16);
        v313 = v53[3 * v52 + 3];
        if (v56 >= v57)
        {
          v312 = v55;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
        }

        else
        {
          v308 = v53;
          v58 = *(v54 + 24 * ((v51 >> v55) & 0xF) + 24);
          v59 = *(v58 + 18);
          v60 = (4 * v59 + 8) & 0x3C;
          v61 = (v51 >> v60) & 0xF;
          *&v348 = v61;
          if (v59)
          {
            v312 = v55;
            LODWORD(v307) = v59;
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            v62 = specialized closure #1 in Rope._Node.formPredecessor(of:)((v58 + 16), v58 + 24, &v348, &v329, v307);
            v53 = v308;
            swift_unknownObjectRelease();
            if (v62)
            {
              v33 = v331;
              goto LABEL_84;
            }

LABEL_44:
            if (v56)
            {
              v330 = v330 & ((-15 << v312) - 1) | ((v56 - 1) << v312);
              v66 = *(v313 + 24 * v56);
              swift_unknownObjectRetain();
              v33 = specialized Rope._Node.descendToLastItem(under:)(&v330, v66);
              swift_unknownObjectRelease();
              v331 = v33;
              swift_unknownObjectRelease();
              v14 = &v343;
              v35 = v302;
              goto LABEL_86;
            }

            swift_unknownObjectRelease();
LABEL_48:
            v14 = &v343;
            v35 = v302;
            if (!v52)
            {
LABEL_49:
              swift_unknownObjectRelease();
LABEL_50:
              if (v48)
              {
LABEL_51:
                v330 = v330 & ((-15 << v47) - 1) | ((v48 - 1) << v47);
                v67 = *(v41 + 24 * v48);
                swift_unknownObjectRetain();
                v33 = specialized Rope._Node.descendToLastItem(under:)(&v330, v67);
                swift_unknownObjectRelease();
                v331 = v33;
                goto LABEL_52;
              }

LABEL_260:
              result = swift_unknownObjectRelease();
              __break(1u);
LABEL_261:
              __break(1u);
LABEL_262:
              __break(1u);
LABEL_263:
              __break(1u);
              goto LABEL_264;
            }

LABEL_38:
            v330 = v330 & ((-15 << v50) - 1) | ((v52 - 1) << v50);
            v65 = v53[3 * v52];
            swift_unknownObjectRetain();
            v33 = specialized Rope._Node.descendToLastItem(under:)(&v330, v65);
            swift_unknownObjectRelease();
            v331 = v33;
            swift_unknownObjectRelease();
            goto LABEL_52;
          }

          if (v61)
          {
            v330 = ((v61 - 1) << v60) | v51 & 0xFFFFFFFFFFFFF0FFLL;
            v331 = v58;
            v33 = v58;
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
LABEL_84:
            swift_unknownObjectRelease();
            goto LABEL_85;
          }

          v312 = v55;
          swift_unknownObjectRetain();
          v53 = v308;
          swift_unknownObjectRetain();
        }

        swift_unknownObjectRetain();
        goto LABEL_44;
      }

      if (!v56)
      {
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        goto LABEL_48;
      }

      v330 = ((v56 - 1) << v55) | v51 & 0xFFFFFFFFFFFFF0FFLL;
      v331 = v54;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v33 = v54;
LABEL_85:
      v14 = &v343;
      v35 = v302;
LABEL_86:
      swift_unknownObjectRelease();
    }

    else
    {
      if (!v52)
      {
        swift_unknownObjectRetain();
        goto LABEL_50;
      }

      v330 = ((v52 - 1) << v50) | v32 & 0xFFFFFFFFFFFFF0FFLL;
      v331 = v49;
      v33 = v49;
      swift_unknownObjectRetain();
    }

LABEL_52:
    swift_unknownObjectRelease();
    if (v329 != v311)
    {
      goto LABEL_256;
    }

    v46 = v330;
    if (!v33)
    {
LABEL_32:
      v281 = v46;
      v63 = specialized Rope._Node.subscript.getter(v46, v41);
      swift_unknownObjectRelease();
      v279 = 0;
      v64 = 1;
      goto LABEL_55;
    }

LABEL_54:
    v68 = (4 * *(v33 + 18) + 8) & 0x3C;
    v281 = v46;
    v279 = v33;
    v63 = v33[3 * ((v46 >> v68) & 0xF) + 3];

    swift_unknownObjectRelease();
    v64 = 0;
LABEL_55:

    if (__OFSUB__(v282, v63))
    {
      goto LABEL_257;
    }

    if (v311 != *(v309 + 96))
    {
LABEL_258:
      __break(1u);
      goto LABEL_259;
    }

    v276 = (v282 - v63);
    if (v64)
    {
      v69 = *(v309 + 72);
      swift_unknownObjectRetain();
      specialized Rope._Node.subscript.getter(v281, v69);
      v71 = v70;
      v280 = v72;
      swift_unknownObjectRelease();
    }

    else
    {
      v73 = &v279[3 * ((v281 >> ((4 * *(v279 + 18) + 8) & 0x3C)) & 0xF)];
      v71 = v73[4];
      v74 = v73[5];

      v280 = v74;
    }

    v75 = v284;
    --v283;
    v76 = v278;
    v305 = v71;
    do
    {
      if (!v75)
      {
        goto LABEL_242;
      }

      v313 = v75;
      v314 = v76;
      v78 = *(v76 - 1);
      v77 = *v76;
      if (*(v35 + 16))
      {

        v79 = specialized __RawDictionaryStorage.find<A>(_:)(v78, v77);
        if (v80)
        {
          outlined init with copy of AttributedString._AttributeValue(*(v35 + 56) + 72 * v79, &v348);
          if (!*(v71 + 16))
          {
            goto LABEL_71;
          }
        }

        else
        {
          v352 = 0;
          v350 = 0u;
          v351 = 0u;
          v348 = 0u;
          v349 = 0u;
          if (!*(v71 + 16))
          {
LABEL_71:

            goto LABEL_72;
          }
        }
      }

      else
      {
        v352 = 0;
        v350 = 0u;
        v351 = 0u;
        v348 = 0u;
        v349 = 0u;

        if (!*(v71 + 16))
        {
          goto LABEL_71;
        }
      }

      v81 = specialized __RawDictionaryStorage.find<A>(_:)(v78, v77);
      v83 = v82;

      if (v83)
      {
        outlined init with copy of AttributedString._AttributeValue(*(v71 + 56) + 72 * v81, &v343);
        goto LABEL_73;
      }

LABEL_72:
      v347 = 0;
      v345 = 0u;
      v346 = 0u;
      v343 = 0u;
      v344 = 0u;
LABEL_73:
      outlined init with copy of AttributedString._AttributeValue?(&v348, &v329);
      outlined init with copy of AttributedString._AttributeValue?(&v343, &v338);
      if (v332)
      {
        outlined init with copy of AttributedString._AttributeValue?(&v329, &v321);
        if (!*(&v339 + 1))
        {
          outlined destroy of TermOfAddress?(&v343, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of TermOfAddress?(&v348, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of AttributedString._AttributeValue(&v321);
LABEL_98:
          outlined destroy of TermOfAddress?(&v329, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMd);
LABEL_100:

          v100 = v282;
          goto LABEL_101;
        }

        v318 = v340;
        v319 = v341;
        v320 = v342;
        v316 = v338;
        v317 = v339;
        v84 = v324;
        v307 = v325;
        v306 = __swift_project_boxed_opaque_existential_1(&v321, v324);
        v85 = __swift_project_boxed_opaque_existential_1(&v316, *(&v317 + 1));
        v312 = &v274;
        v86 = *(v84 - 8);
        MEMORY[0x1EEE9AC00](v85);
        v88 = &v274 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
        v308 = &v274;
        v90 = MEMORY[0x1EEE9AC00](v89);
        (*(v92 + 16))(&v274 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0), v90);
        v93 = type metadata accessor for Optional();
        v94 = *(v93 - 8);
        MEMORY[0x1EEE9AC00](v93);
        v96 = &v274 - v95;
        v97 = swift_dynamicCast();
        v98 = *(v86 + 56);
        if (!v97)
        {
          v98(v96, 1, 1, v84);
          outlined destroy of TermOfAddress?(&v343, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of TermOfAddress?(&v348, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          (*(v94 + 8))(v96, v93);
          outlined destroy of AttributedString._AttributeValue(&v316);
          outlined destroy of AttributedString._AttributeValue(&v321);
          outlined destroy of TermOfAddress?(&v329, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          v14 = &v343;
          goto LABEL_100;
        }

        v98(v96, 0, 1, v84);
        (*(v86 + 32))(v88, v96, v84);
        v99 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v86 + 8))(v88, v84);
        outlined destroy of TermOfAddress?(&v343, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?(&v348, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of AttributedString._AttributeValue(&v316);
        outlined destroy of AttributedString._AttributeValue(&v321);
        outlined destroy of TermOfAddress?(&v329, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        v14 = &v343;
        v35 = v302;
        if ((v99 & 1) == 0)
        {
          goto LABEL_100;
        }
      }

      else
      {
        outlined destroy of TermOfAddress?(&v343, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?(&v348, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        if (*(&v339 + 1))
        {
          goto LABEL_98;
        }

        outlined destroy of TermOfAddress?(&v329, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      }

      v76 = v314 + 2;
      v75 = v313 - 1;
      v71 = v305;
    }

    while (v313 != 1);

    v22 = v276;
    v40 = v276;
    v33 = v279;
    v32 = v281;
    if (v275 < v283)
    {
      continue;
    }

    break;
  }

LABEL_239:

  v100 = v22;
LABEL_101:
  v129 = v309;
  v130 = (v309 + 24);
  v131 = *(v309 + 40);
  v132 = *(v309 + 56);
  v14[24] = *(v309 + 24);
  v14[25] = v131;
  v14[26] = v132;
  if (__OFSUB__(v100, v288 >> 11))
  {
LABEL_252:
    __break(1u);
LABEL_253:
    __break(1u);
LABEL_254:
    __break(1u);
    goto LABEL_255;
  }

  swift_unknownObjectRetain();
  v133 = BigString.UTF8View.index(_:offsetBy:)();
  v135 = v134;
  v137 = v136;
  v139 = v138;
  swift_unknownObjectRelease();
  if (v289 >= v133 >> 10)
  {
    v140 = v298;
  }

  else
  {
    v140 = v133;
  }

  if (v289 >= v133 >> 10)
  {
    v141 = v297;
  }

  else
  {
    v141 = v135;
  }

  v142 = v296;
  if (v289 < v133 >> 10)
  {
    v142 = v137;
  }

  v313 = v142;
  v314 = v141;
  v143 = v295;
  if (v289 < v133 >> 10)
  {
    v143 = v139;
  }

  v312 = v143;
  v144 = *(v129 + 40);
  v14[21] = *(v129 + 24);
  v14[22] = v144;
  v14[23] = *(v129 + 56);
  swift_unknownObjectRetain();
  v145 = BigString.UnicodeScalarView.index(after:)();
  v147 = v146;
  v149 = v148;
  v151 = v150;
  swift_unknownObjectRelease();
  v152 = *v130;
  v153 = v130[2];
  v364 = v130[1];
  v365 = v153;
  v363 = v152;
  v154 = v145 >> 10;
  v155 = v140 >> 10;
  if (v145 >> 10 < v140 >> 10)
  {
    goto LABEL_253;
  }

  v156 = v140;
  v157 = v145;
  v158 = *(v129 + 24);
  v159 = *(v129 + 32);
  v160 = *(v129 + 40);
  v161 = *(v129 + 48);
  v162 = *(v129 + 56);
  v163 = *(v129 + 64);
  *&v343 = v140;
  v164 = v313;
  v165 = v314;
  *(&v343 + 1) = v314;
  *&v344 = v313;
  result = v312;
  *(&v344 + 1) = v312;
  *&v345 = v145;
  v166 = v147;
  *(&v345 + 1) = v147;
  *&v346 = v149;
  *(&v346 + 1) = v151;
  v167 = v312;
  if (v155 == v154)
  {
    v168 = v303;
    v169 = v299;
    goto LABEL_160;
  }

  v305 = v166;
  v306 = v151;
  v307 = v149;
  v308 = v156;
  v295 = v163;
  v296 = v162;
  v297 = v161;
  v298 = v160;
  v301 = v159;
  v302 = v158;
  v170 = v312;
  v171 = v313;
  v172 = v314;
  v173 = v130[1];
  v367 = *v130;
  v368 = v173;
  v369 = *(v130 + 4);
  outlined init with copy of Rope<BigString._Chunk>._Node?(&v367, &v329);
  if ((specialized Set.contains(_:)(0, 0, v304) & 1) == 0)
  {
    v169 = v299;
    v182 = v308;
    v174 = v305;
LABEL_140:
    v308 = v182;
    *&v316 = v182;
    *(&v316 + 1) = v172;
    v313 = v171;
    v314 = v172;
    *&v317 = v171;
    *(&v317 + 1) = v170;
    v312 = v170;
    *&v318 = v157;
    *(&v318 + 1) = v174;
    *&v319 = v307;
    *(&v319 + 1) = v306;
    v199 = v304;
    if ((specialized Collection<>._containsScalarConstraint.getter(v304) & 1) == 0)
    {
      result = outlined destroy of BigString(&v363);
      v168 = v303;
      v156 = v308;
      v129 = v309;
      v164 = v313;
      v165 = v314;
      v167 = v312;
LABEL_160:
      v221 = *(v129 + 16);
      v222 = v290;
      *v290 = v156;
      v222[1] = v165;
      v222[2] = v164;
      v222[3] = v167;
      v222[4] = v221;
      v223 = v291;
      v114 = v300;
      goto LABEL_236;
    }

    v294 = v154;
    v200 = 1 << *(v199 + 32);
    v201 = -1;
    if (v200 < 64)
    {
      v201 = ~(-1 << v200);
    }

    v202 = v201 & *(v199 + 56);
    v203 = (v200 + 63) >> 6;

    v204 = 0;
    v205 = MEMORY[0x1E69E7CC0];
    while (v202)
    {
LABEL_149:
      v207 = __clz(__rbit64(v202));
      v202 &= v202 - 1;
      v208 = (*(v304 + 48) + ((v204 << 10) | (16 * v207)));
      v209 = v208[1];
      if (v209 >= 2)
      {
        v210 = specialized Collection.first.getter(*v208, v209);
        if ((v210 & 0x100000000) == 0)
        {
          v307 = v210;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v205 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v205 + 2) + 1, 1, v205);
          }

          v212 = *(v205 + 2);
          v211 = *(v205 + 3);
          v213 = v307;
          if (v212 >= v211 >> 1)
          {
            v205 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v211 > 1), v212 + 1, 1, v205);
            v213 = v307;
          }

          *(v205 + 2) = v212 + 1;
          *&v205[4 * v212 + 32] = v213;
          v169 = v299;
        }
      }
    }

    while (1)
    {
      v206 = v204 + 1;
      if (__OFADD__(v204, 1))
      {
        __break(1u);
        goto LABEL_241;
      }

      if (v206 >= v203)
      {
        break;
      }

      v202 = *(v199 + 56 + 8 * v206);
      ++v204;
      if (v202)
      {
        v204 = v206;
        goto LABEL_149;
      }
    }

    *&v353 = v302;
    *(&v353 + 1) = v301;
    *&v354 = v298;
    *(&v354 + 1) = v297;
    v355 = v296;
    v356 = v295;
    BigString.UnicodeScalarView.subscript.getter();
    v214 = BigSubstring.UnicodeScalarView._findLastScalarBoundary(for:)(v205);
    v216 = v215;
    v218 = v217;
    v220 = v219;
    outlined destroy of BigString(&v363);

    result = outlined destroy of BigSubstring.UnicodeScalarView(&v329);
    v168 = v303;
    v156 = v308;
    v129 = v309;
    v164 = v313;
    v165 = v314;
    v167 = v312;
    if (v220 == 2)
    {
      goto LABEL_160;
    }

    if (v294 >= v214 >> 10)
    {
      v156 = v214;
      v165 = v216;
      v164 = v218;
      v167 = v220;
      goto LABEL_160;
    }

    goto LABEL_263;
  }

  v174 = v305;
  if (v154 <= BigString.startIndex.getter() >> 10)
  {
    v169 = v299;
    v182 = v308;
    goto LABEL_140;
  }

  v357 = v302;
  v358 = v301;
  v359 = v298;
  v360 = v297;
  v361 = v296;
  v362 = v295;
  v293 = v157;
  v175 = v306;
  v176 = v154;
  v177 = BigString.UTF8View.index(before:)();
  v292 = v178;
  v288 = v180;
  v289 = v179;
  result = BigString.UTF8View.subscript.getter();
  v294 = v176;
  v169 = v299;
  if (v176 < v177 >> 10)
  {
    goto LABEL_262;
  }

  v181 = v293;
  v321 = v177;
  v322 = v292;
  v323 = v289;
  v324 = v288;
  v325 = v293;
  v326 = v174;
  v327 = v307;
  v328 = v175;
  specialized BidirectionalCollection<>._getBlock(for:in:)(1, &v321, &v329);
  result = outlined destroy of BigSubstring.UTF8View(&v348);
  v182 = v308;
  v154 = v294;
  v157 = v181;
  if (v332 == 2)
  {
    goto LABEL_140;
  }

  v182 = v329;
  if (v294 >= v329 >> 10)
  {
    v172 = v330;
    v171 = v331;
    v170 = v332;
    goto LABEL_140;
  }

LABEL_264:
  __break(1u);
LABEL_265:
  __break(1u);
LABEL_266:
  __break(1u);
LABEL_267:
  __break(1u);
  return result;
}

uint64_t BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(uint64_t a1)
{
  v2 = *(v1 + 80) >> 10;
  if (v2 <= *(v1 + 48) >> 10)
  {
    return 0;
  }

  v4 = BigSubstring.UnicodeScalarView.subscript.getter();
  v5 = *(a1 + 16);
  v6 = (a1 + 32);
  v7 = v5;
  v8 = v6;
  while (v7)
  {
    v9 = *v8++;
    --v7;
    if (v9 == v4)
    {
      return BigSubstring.UnicodeScalarView.index(after:)();
    }
  }

  v11 = BigSubstring.UnicodeScalarView.index(after:)();
  if (v2 <= v11 >> 10)
  {
    return 0;
  }

  v12 = v11;
  do
  {
    v13 = BigSubstring.UnicodeScalarView.subscript.getter();
    v14 = v5;
    v15 = v6;
    while (v14)
    {
      v16 = *v15++;
      --v14;
      if (v16 == v13)
      {
        return v12;
      }
    }

    v12 = BigSubstring.UnicodeScalarView.index(after:)();
    result = 0;
  }

  while (v2 > v12 >> 10);
  return result;
}

unint64_t BigSubstring.UnicodeScalarView._findLastScalarBoundary(for:)(uint64_t a1)
{
  v3 = *(v1 + 48) >> 10;
  if (v3 == *(v1 + 80) >> 10)
  {
    return 0;
  }

  v4 = BigSubstring.UnicodeScalarView.index(before:)();
  v5 = BigSubstring.UnicodeScalarView.subscript.getter();
  v6 = *(a1 + 16);
  v7 = v6;
  v8 = (a1 + 32);
  while (v7)
  {
    v9 = *v8++;
    --v7;
    if (v9 == v5)
    {
      return v4;
    }
  }

  if (v3 >= v4 >> 10)
  {
    return 0;
  }

  do
  {
    v15 = v4;
    v4 = BigSubstring.UnicodeScalarView.index(before:)();
    v11 = BigSubstring.UnicodeScalarView.subscript.getter();
    v12 = v6;
    v13 = (a1 + 32);
    while (v12)
    {
      v14 = *v13++;
      --v12;
      if (v14 == v11)
      {
        return v15;
      }
    }

    result = 0;
  }

  while (v3 < v4 >> 10);
  return result;
}

uint64_t specialized Rope._Node.distance<A>(from:to:in:)(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a7 + 16;
  v9 = *(a7 + 16);
  v11 = *(a7 + 18);
  v12 = (4 * v11 + 8) & 0x3C;
  v13 = (a2 >> v12) & 0xF;
  v14 = (a5 >> v12) & 0xF;
  if (v13 >= v9 || v14 > v9)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v14 != v9)
  {
    goto LABEL_10;
  }

  if ((a5 & (~(-1 << ((4 * v11) & 0x3C)) << 8)) != 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v10 = a9;
  v16 = specialized Rope._Node.distanceFromStart<A>(to:in:)(result, a2, a3, a7, a8, a9);
  v17 = __OFSUB__(a9, v16);
  result = a9 - v16;
  if (!v17)
  {
    return result;
  }

  __break(1u);
LABEL_10:
  v18 = a7 + 24;
  if (v11)
  {
    v19 = result;
    v20 = a2;
    v21 = a3;
    v35 = a4;
    v36 = a5;
    v37 = a6;
    v22 = (v18 + 24 * v13);
    v23 = *v22;
    v24 = v22[1];
    v25 = v22[2];
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    if (v13 == v14)
    {
      v26 = specialized Rope._Node.distance<A>(from:to:in:)(v19, v20, v21, v35, v36, v37, v23, v24, v25);
      swift_unknownObjectRelease();
LABEL_19:
      swift_unknownObjectRelease();
      return v26;
    }

    v27 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v19, v20, v21, v23, v24, v25);
    result = swift_unknownObjectRelease();
    v17 = __OFSUB__(v25, v27);
    v28 = v25 - v27;
    if (!v17)
    {
      result = specialized Rope._UnsafeHandle.distance<A>(from:to:in:)(v13 + 1, v14, v10, v18);
      v29 = v28 + result;
      if (!__OFADD__(v28, result))
      {
        v30 = (v18 + 24 * v14);
        v31 = *v30;
        v32 = v30[1];
        v33 = v30[2];
        swift_unknownObjectRetain();
        v34 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v35, v36, v37, v31, v32, v33);
        result = swift_unknownObjectRelease();
        v26 = v29 + v34;
        if (!__OFADD__(v29, v34))
        {
          goto LABEL_19;
        }

LABEL_24:
        __break(1u);
        return result;
      }

LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  return specialized Rope._UnsafeHandle.distance<A>(from:to:in:)(v13, v14, v10, a7 + 24);
}

uint64_t specialized Rope._Node.distance<A>(from:to:in:)(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a7 + 16;
  v8 = *(a7 + 16);
  v10 = *(a7 + 18);
  v11 = (4 * v10 + 8) & 0x3C;
  v12 = (a2 >> v11) & 0xF;
  v13 = (a5 >> v11) & 0xF;
  if (v12 >= v8 || v13 > v8)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v13 != v8)
  {
    goto LABEL_10;
  }

  if ((a5 & (~(-1 << ((4 * v10) & 0x3C)) << 8)) != 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = specialized Rope._Node.distanceFromStart<A>(to:in:)(result, a2, a3, a7, a8);
  v17 = __OFSUB__(a8, v16);
  result = a8 - v16;
  if (!v17)
  {
    return result;
  }

  __break(1u);
LABEL_10:
  if (v10)
  {
    v18 = result;
    v19 = a2;
    v20 = a3;
    v34 = a4;
    v35 = a5;
    v36 = a6;
    v21 = a7 + 24;
    v22 = (a7 + 24 + 24 * v12);
    v23 = *v22;
    v24 = v22[1];
    v25 = v22[2];
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    if (v12 == v13)
    {
      v26 = specialized Rope._Node.distance<A>(from:to:in:)(v18, v19, v20, v34, v35, v36, v23, v24, v25);
      swift_unknownObjectRelease();
LABEL_19:
      swift_unknownObjectRelease();
      return v26;
    }

    v27 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v18, v19, v20, v23, v24);
    result = swift_unknownObjectRelease();
    v17 = __OFSUB__(v24, v27);
    v28 = v24 - v27;
    if (!v17)
    {
      result = specialized Rope._UnsafeHandle.distance<A>(from:to:in:)(v12 + 1, v13, v9, v21);
      v29 = v28 + result;
      if (!__OFADD__(v28, result))
      {
        v30 = (v21 + 24 * v13);
        v31 = *v30;
        v32 = v30[1];
        swift_unknownObjectRetain();
        v33 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v34, v35, v36, v31, v32);
        result = swift_unknownObjectRelease();
        v26 = v29 + v33;
        if (!__OFADD__(v29, v33))
        {
          goto LABEL_19;
        }

        goto LABEL_26;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  result = v13 - v12;
  if (v13 < v12)
  {
    if ((v12 - v13) >= 0)
    {
      return v13 - v12;
    }

    goto LABEL_27;
  }

  if ((v13 - v12) < 0)
  {
LABEL_28:
    __break(1u);
  }

  return result;
}

void *specialized Rope.formIndex<A>(_:offsetBy:in:preferEnd:)(void *result, uint64_t *a2, char a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (*result != a7)
  {
    __break(1u);
    goto LABEL_77;
  }

  v12 = *a2;
  if (a4)
  {
    v10 = result;
    if (v12 > 0)
    {
      v13 = result[2];
      if (v13)
      {
        v14 = *(v13 + 16);
        v15 = result[1];
        v16 = (v15 >> 8) & 0xF;
        if (v16 < v14)
        {
          v17 = 1;
          if (a3)
          {
            v17 = 2;
          }

          v18 = v17 - 1;
          if (v12 < v17 - 1)
          {
            v18 = *a2;
          }

          v19 = v12 - v18;
          if (~v16 + v14 < v19)
          {
            v19 = ~v16 + v14;
          }

          v20 = v19 + 1;
          if (v19 + 1 > 4)
          {
            v21 = v20 & 3;
            if ((v20 & 3) == 0)
            {
              v21 = 4;
            }

            v22 = v20 - v21;
            v16 += v22;
            v23 = v12 - v22;
            v24 = ~v19 + v21;
            do
            {
              v12 -= 4;
              v24 += 4;
            }

            while (v24);
            *a2 = v12;
            v12 = v23;
          }

          v25 = v16 << 8;
          v26 = v14 - v16;
          while (v12 >= v17)
          {
            *a2 = --v12;
            v25 += 256;
            if (!--v26)
            {
              v16 = v14;
              goto LABEL_22;
            }
          }

          result[1] = v25 | v15 & 0xFFFFFFFFFFFFF0FFLL;
          return result;
        }

LABEL_22:
        result[1] = v15 & 0xFFFFFFFFFFFFF0FFLL | (v16 << 8);
      }

      if (*(a4 + 18))
      {
        v27 = a4;
        v28 = a7;
        swift_unknownObjectRetain();
        v30 = specialized closure #2 in Rope._Node.seekForward<A>(from:by:in:preferEnd:)(v27 + 16, v27 + 24, v10, v27, a2, a3 & 1);
        result = swift_unknownObjectRelease();
        a7 = v28;
        a4 = v27;
        if (v30)
        {
          return result;
        }

        goto LABEL_43;
      }

LABEL_34:
      v31 = *(a4 + 16);
      v34 = *(v10 + 8);
      v35 = (v34 >> 8) & 0xF;
      if (v35 >= v31)
      {
LABEL_43:
        v37 = *a2;
LABEL_44:
        if (!v37)
        {
          v38 = a7;
          result = specialized Rope._endPath.getter(a4);
          *v10 = v38;
          *(v10 + 8) = result;
          *(v10 + 16) = 0;
          return result;
        }

        goto LABEL_78;
      }

      v7 = 1;
      if (a3)
      {
        v7 = 2;
      }

      v36 = v7 - 1;
      if (v12 < v7 - 1)
      {
        v36 = v12;
      }

      v9 = v12 - v36;
      if (~v35 + v31 < v9)
      {
        v9 = ~v35 + v31;
      }

      v8 = v9 + 1;
      if (v9 + 1 < 5)
      {
        v37 = v12;
        goto LABEL_69;
      }

LABEL_64:
      v43 = v8 & 3;
      if ((v8 & 3) == 0)
      {
        v43 = 4;
      }

      v44 = v8 - v43;
      v35 += v44;
      v37 = v12 - v44;
      v45 = ~v9 + v43;
      do
      {
        v12 -= 4;
        v45 += 4;
      }

      while (v45);
      *a2 = v12;
LABEL_69:
      v46 = v35 << 8;
      v47 = v31 - v35;
      while (v37 >= v7)
      {
        *a2 = --v37;
        v46 += 256;
        if (!--v47)
        {
          goto LABEL_44;
        }
      }

      *(v10 + 8) = v46 | v34 & 0xFFFFFFFFFFFFF0FFLL;
      *(v10 + 16) = a4;
      return result;
    }
  }

  else
  {
    if (!v12)
    {
      return result;
    }

    __break(1u);
  }

  v31 = -v12;
  if (__OFSUB__(0, v12))
  {
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    return result;
  }

  *a2 = v31;
  if (v12 >= 0 && (a3 & 1) == 0)
  {
    return result;
  }

  if (*(a4 + 18))
  {
    v32 = a4;
    swift_unknownObjectRetain();
    v10 = specialized closure #2 in Rope._Node.seekBackward<A>(from:by:in:preferEnd:)(v32 + 16, v32 + 24, v10, v32, a2, a3 & 1);
    result = swift_unknownObjectRelease();
    if (v10)
    {
      return result;
    }

    __break(1u);
    goto LABEL_34;
  }

  v34 = *(v10 + 8);
  v35 = (v34 >> 8) & 0xF;
  if (!v35)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v7 = 1;
  if ((a3 & 1) == 0)
  {
    v7 = 2;
  }

  v39 = v7 - 1;
  if (v31 < v7 - 1)
  {
    v39 = -v12;
  }

  v40 = v31 - v39;
  if (v40 >= v35 - 1)
  {
    v40 = v35 - 1;
  }

  v9 = v40 + 1;
  if (v40 + 1 > 4)
  {
    v41 = v9 & 3;
    if ((v9 & 3) == 0)
    {
      v41 = 4;
    }

    v9 -= v41;
    v35 -= v9;
    v31 -= v9;
    v42 = ~v40 + v41;
    do
    {
      v12 += 4;
      v42 += 4;
    }

    while (v42);
    *a2 = -v12;
  }

  v8 = v35 + 1;
  v35 = (v35 << 8) - 256;
  v12 = v31 - 1;
  while (1)
  {
    v31 = v12 + 1;
    if (v12 + 1 < v7)
    {
      break;
    }

    *a2 = v12;
    --v8;
    v35 -= 256;
    --v12;
    if (v8 < 2)
    {
      goto LABEL_63;
    }
  }

  *(v10 + 8) = v35 | v34 & 0xFFFFFFFFFFFFF0FFLL;
  *a2 = -v12;
  return result;
}

uint64_t specialized Rope._UnsafeHandle.distance<A>(from:to:in:)(uint64_t a1, uint64_t a2)
{
  v3 = __OFSUB__(a2, a1);
  result = a2 - a1;
  if (result < 0 != v3)
  {
    v5 = a1 - a2;
    if (v5 >= 0)
    {
      return -v5;
    }

    __break(1u);
    goto LABEL_8;
  }

  if (result < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t specialized Rope._UnsafeHandle.distance<A>(from:to:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  v5 = (a2 - a1);
  if (a2 >= a1)
  {
LABEL_7:
    result = 0;
    v6 = a4 + 24 * v4 + 8;
    v10 = v5 + 1;
    while (--v10)
    {
      v11 = *v6;
      v6 += 24;
      v8 = __OFADD__(result, v11);
      result += v11;
      if (v8)
      {
        __break(1u);
        goto LABEL_12;
      }
    }
  }

  else
  {
    v6 = 0;
    v5 = (a4 + 24 * a2 + 8);
    v4 = a1 - a2 + 1;
    while (--v4)
    {
      v7 = *v5;
      v5 += 3;
      v8 = __OFADD__(v6, v7);
      v6 += v7;
      if (v8)
      {
        __break(1u);
        goto LABEL_7;
      }
    }

LABEL_12:
    result = -v6;
    if (__OFSUB__(0, v6))
    {
      __break(1u);
    }
  }

  return result;
}

{
  v4 = a1;
  v5 = (a2 - a1);
  if (a2 >= a1)
  {
LABEL_7:
    result = 0;
    v6 = a4 + 24 * v4;
    v10 = v5 + 1;
    while (--v10)
    {
      v11 = *v6;
      v6 += 24;
      v8 = __OFADD__(result, v11);
      result += v11;
      if (v8)
      {
        __break(1u);
        goto LABEL_12;
      }
    }
  }

  else
  {
    v6 = 0;
    v5 = (a4 + 24 * a2);
    v4 = a1 - a2 + 1;
    while (--v4)
    {
      v7 = *v5;
      v5 += 3;
      v8 = __OFADD__(v6, v7);
      v6 += v7;
      if (v8)
      {
        __break(1u);
        goto LABEL_7;
      }
    }

LABEL_12:
    result = -v6;
    if (__OFSUB__(0, v6))
    {
      __break(1u);
    }
  }

  return result;
}

{
  v4 = a1;
  v5 = (a2 - a1);
  if (a2 >= a1)
  {
LABEL_7:
    result = 0;
    v6 = a4 + 24 * v4 + 16;
    v10 = v5 + 1;
    while (--v10)
    {
      v11 = *v6;
      v6 += 24;
      v8 = __OFADD__(result, v11);
      result += v11;
      if (v8)
      {
        __break(1u);
        goto LABEL_12;
      }
    }
  }

  else
  {
    v6 = 0;
    v5 = (a4 + 24 * a2 + 16);
    v4 = a1 - a2 + 1;
    while (--v4)
    {
      v7 = *v5;
      v5 += 3;
      v8 = __OFADD__(v6, v7);
      v6 += v7;
      if (v8)
      {
        __break(1u);
        goto LABEL_7;
      }
    }

LABEL_12:
    result = -v6;
    if (__OFSUB__(0, v6))
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t specialized closure #2 in Rope._Node.seekForward<A>(from:by:in:preferEnd:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, char a6)
{
  v6 = *(a3 + 8);
  v7 = (v6 >> ((4 * *(a4 + 18) + 8) & 0x3C)) & 0xF;
  if (v7 >= *(a4 + 16))
  {
    __break(1u);
LABEL_33:
    __break(1u);
    return result;
  }

  v12 = result;
  v13 = *result;
  v14 = *(a2 + 24 * ((v6 >> ((4 * *(a4 + 18) + 8) & 0x3C)) & 0xF));
  if (*(v14 + 18))
  {
    swift_unknownObjectRetain();
    v15 = specialized closure #2 in Rope._Node.seekForward<A>(from:by:in:preferEnd:)(v14 + 16, v14 + 24, a3, v14, a5, a6 & 1);
    result = swift_unknownObjectRelease();
    if (v15)
    {
      return 1;
    }
  }

  else
  {
    v16 = *(v14 + 16);
    v17 = (v6 >> 8) & 0xF;
    if (v17 < v16)
    {
      v18 = *a5;
      do
      {
        if (a6)
        {
          if (v18 < 2)
          {
            goto LABEL_30;
          }
        }

        else if (v18 < 1)
        {
LABEL_30:
          *(a3 + 8) = v6 & 0xFFFFFFFFFFFFF0FFLL | (v17 << 8);
          *(a3 + 16) = v14;
          return 1;
        }

        *a5 = --v18;
        ++v17;
      }

      while (v16 != v17);
      v17 = v16;
    }

    *(a3 + 8) = v6 & 0xFFFFFFFFFFFFF0FFLL | (v17 << 8);
  }

  v19 = v7 + 1;
  if (v7 + 1 >= v13)
  {
    return 0;
  }

  v20 = *a5;
  v21 = (a2 + 24 * v7 + 32);
  while ((a6 & 1) == 0)
  {
    if (v20 < *v21)
    {
      goto LABEL_20;
    }

LABEL_17:
    v20 -= *v21;
    *a5 = v20;
    ++v19;
    v21 += 3;
    if (v13 == v19)
    {
      return 0;
    }
  }

  if (v20 > *v21)
  {
    goto LABEL_17;
  }

LABEL_20:
  v22 = (4 * *(v12 + 2) + 8) & 0x3C;
  v23 = ((-15 << v22) - 1) & *(a3 + 8) | (v19 << v22);
  *(a3 + 8) = v23;
  v6 = v23 & ((-256 << (4 * (*(v12 + 2) & 0xFu))) | 0xFF);
  *(a3 + 8) = v6;
  v14 = *(v21 - 1);
  if (!*(v14 + 18))
  {
    v25 = *(v14 + 16);
    v17 = (v6 >> 8) & 0xF;
    if (v17 < v25)
    {
      v26 = *a5;
      while (1)
      {
        if (a6)
        {
          if (v26 < 2)
          {
            goto LABEL_30;
          }
        }

        else if (v26 < 1)
        {
          goto LABEL_30;
        }

        *a5 = --v26;
        if (v25 == ++v17)
        {
          goto LABEL_33;
        }
      }
    }

    goto LABEL_33;
  }

  swift_unknownObjectRetain();
  v24 = specialized closure #2 in Rope._Node.seekForward<A>(from:by:in:preferEnd:)(v14 + 16, v14 + 24, a3, v14, a5, a6 & 1);
  swift_unknownObjectRelease();
  if (v24)
  {
    return 1;
  }

  __break(1u);
  return 0;
}

uint64_t specialized closure #2 in Rope._Node.seekBackward<A>(from:by:in:preferEnd:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, char a6)
{
  v6 = *(a3 + 8);
  v7 = (v6 >> ((4 * *(a4 + 18) + 8) & 0x3C)) & 0xF;
  v8 = *(a4 + 16);
  if (v7 > v8)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    return result;
  }

  v10 = a5;
  if (v7 < v8)
  {
    v12 = *(a2 + 24 * ((v6 >> ((4 * *(a4 + 18) + 8) & 0x3C)) & 0xF));
    if (*a5 <= 0 && (a6 & 1) == 0)
    {
      return 1;
    }

    if (*(v12 + 18))
    {
      v13 = result;
      v14 = a2;
      swift_unknownObjectRetain();
      v15 = specialized closure #2 in Rope._Node.seekBackward<A>(from:by:in:preferEnd:)(v12 + 16, v12 + 24, a3, v12, v10, a6 & 1);
      swift_unknownObjectRelease();
      a2 = v14;
      result = v13;
      if (v15)
      {
        return 1;
      }
    }

    else
    {
      v16 = (v6 >> 8) & 0xF;
      if (v16)
      {
        v17 = 1;
        if ((a6 & 1) == 0)
        {
          v17 = 2;
        }

        v18 = v16 + 1;
        v19 = (v16 << 8) - 256;
        v20 = *a5 - 1;
        do
        {
          if (v20 + 1 < v17)
          {
            *(a3 + 8) = v19 | v6 & 0xFFFFFFFFFFFFF0FFLL;
            *a5 = -v20;
            return 1;
          }

          *a5 = v20;
          --v18;
          v19 -= 256;
          --v20;
        }

        while (v18 >= 2);
      }
    }
  }

  if (!v7)
  {
    return 0;
  }

  v21 = *v10;
  v22 = v7 + 1;
  for (i = (a2 + 24 * v7 - 24); ; i -= 3)
  {
    v24 = i[1];
    if ((a6 & 1) == 0)
    {
      break;
    }

    if (v21 < v24)
    {
      goto LABEL_23;
    }

LABEL_20:
    v25 = __OFSUB__(v21, v24);
    v21 -= v24;
    if (v25)
    {
      __break(1u);
      goto LABEL_49;
    }

    *v10 = v21;
    if (--v22 < 2)
    {
      return 0;
    }
  }

  if (v24 < v21)
  {
    goto LABEL_20;
  }

LABEL_23:
  v26 = (4 * *(result + 2) + 8) & 0x3C;
  v27 = ((-15 << v26) - 1) & *(a3 + 8) | ((v22 - 2) << v26);
  *(a3 + 8) = v27;
  *(a3 + 8) = v27 & ((-256 << (4 * (*(result + 2) & 0xFu))) | 0xFF);
  v28 = *v10;
  v29 = v24 - *v10;
  if (__OFSUB__(v24, *v10))
  {
    goto LABEL_50;
  }

  *v10 = v29;
  v30 = *i;
  if (*(*i + 18))
  {
    swift_unknownObjectRetain();
    v10 = specialized closure #2 in Rope._Node.seekForward<A>(from:by:in:preferEnd:)(v30 + 16, v30 + 24, a3, v30, v10, a6 & 1);
    swift_unknownObjectRelease();
    if (v10)
    {
      return 1;
    }

    __break(1u);
  }

  v31 = *(v30 + 16);
  v32 = *(a3 + 8);
  v33 = (v32 >> 8) & 0xF;
  if (v33 >= v31)
  {
LABEL_44:
    __break(1u);
  }

  else
  {
    v34 = 1;
    if (a6)
    {
      v34 = 2;
    }

    v35 = v34 - 1;
    if (v29 < v34 - 1)
    {
      v35 = v29;
    }

    v36 = v24 - v28 - v35;
    if (v36 >= ~v33 + v31)
    {
      v36 = ~v33 + v31;
    }

    v37 = v36 + 1;
    if (v37 >= 5)
    {
      v39 = v37 & 3;
      if ((v37 & 3) == 0)
      {
        v39 = 4;
      }

      v40 = v37 - v39;
      v33 += v40;
      v38 = v29 - v40;
      do
      {
        v29 -= 4;
        v40 -= 4;
      }

      while (v40);
      *v10 = v29;
    }

    else
    {
      v38 = v29;
    }

    v29 = v33 << 8;
    v41 = v31 - v33;
    while (v38 >= v34)
    {
      *v10 = --v38;
      v29 += 256;
      if (!--v41)
      {
        goto LABEL_44;
      }
    }
  }

  *(a3 + 8) = v29 | v32 & 0xFFFFFFFFFFFFF0FFLL;
  *(a3 + 16) = v30;
  return 1;
}

uint64_t specialized static AttributedString.Runs.== infix(_:_:)(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v61 - v9;
  v66 = type metadata accessor for AttributedString.Runs();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v61 = a1;
  v63 = v11;
  RangeSet.ranges.getter();
  swift_getKeyPath();
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v12 = dispatch thunk of Collection.count.getter();
  v65 = a2;
  v64 = v5;
  if (v12)
  {
    v13 = v12;
    v76 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12 & ~(v12 >> 63), 0);
    v14 = v76;
    result = dispatch thunk of Collection.startIndex.getter();
    if (v13 < 0)
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    for (i = v13 - 1; ; --i)
    {
      v17 = dispatch thunk of Collection.subscript.read();
      v19 = v18[3];
      v21 = *v18;
      v20 = v18[1];
      v74 = v18[2];
      v75 = v19;
      v72 = v21;
      v73 = v20;
      v17(&v67, 0);
      v67 = v72;
      v68 = v73;
      v69 = v74;
      v70 = v75;
      swift_getAtKeyPath();
      v76 = v14;
      v23 = v14[2];
      v22 = v14[3];
      if (v23 >= v22 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
        v14 = v76;
      }

      v24 = v71;
      v14[2] = v23 + 1;
      v14[v23 + 4] = v24;
      dispatch thunk of Collection.formIndex(after:)();
      if (!i)
      {
        break;
      }
    }

    v25 = *(v64 + 8);
    v25(v10, v4);

    a2 = v65;
    v26 = v14[2];
    if (v26)
    {
      goto LABEL_9;
    }
  }

  else
  {

    v25 = *(v5 + 8);
    result = (v25)(v10, v4);
    v14 = MEMORY[0x1E69E7CC0];
    v26 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v26)
    {
LABEL_9:
      v27 = 0;
      v28 = v14 + 4;
      while (1)
      {
        v29 = *v28++;
        v30 = __OFADD__(v27, v29);
        v27 += v29;
        if (v30)
        {
          break;
        }

        if (!--v26)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_55;
    }
  }

  v27 = 0;
LABEL_15:
  v62 = v25;

  RangeSet.ranges.getter();
  swift_getKeyPath();
  v31 = dispatch thunk of Collection.count.getter();
  if (v31)
  {
    v32 = v31;
    v76 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31 & ~(v31 >> 63), 0);
    v33 = v76;
    result = dispatch thunk of Collection.startIndex.getter();
    if (v32 < 0)
    {
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    for (j = v32 - 1; ; --j)
    {
      v35 = dispatch thunk of Collection.subscript.read();
      v37 = v36[3];
      v39 = *v36;
      v38 = v36[1];
      v74 = v36[2];
      v75 = v37;
      v72 = v39;
      v73 = v38;
      v35(&v67, 0);
      v67 = v72;
      v68 = v73;
      v69 = v74;
      v70 = v75;
      swift_getAtKeyPath();
      v76 = v33;
      v41 = v33[2];
      v40 = v33[3];
      if (v41 >= v40 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1);
        v33 = v76;
      }

      v42 = v71;
      v33[2] = v41 + 1;
      v33[v41 + 4] = v42;
      dispatch thunk of Collection.formIndex(after:)();
      if (!j)
      {
        break;
      }
    }

    v62(v7, v4);

    a2 = v65;
    v43 = v33[2];
    if (v43)
    {
      goto LABEL_23;
    }
  }

  else
  {

    result = (v62)(v7, v4);
    v33 = MEMORY[0x1E69E7CC0];
    v43 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v43)
    {
LABEL_23:
      v44 = 0;
      v45 = 4;
      while (1)
      {
        v46 = v33[v45];
        v30 = __OFADD__(v44, v46);
        v44 += v46;
        if (v30)
        {
          break;
        }

        ++v45;
        if (!--v43)
        {

          if (v27 == v44)
          {
            goto LABEL_31;
          }

          goto LABEL_30;
        }
      }

LABEL_55:
      __break(1u);
      goto LABEL_56;
    }
  }

  if (v27)
  {
    goto LABEL_30;
  }

LABEL_31:
  v48 = *(v66 + 28);
  if (*(v61 + v48) & 1) != 0 || (*(a2 + v48))
  {
LABEL_52:
    specialized Sequence<>.elementsEqual<A>(_:)(a2);
    return v47 & 1;
  }

  v49 = v61[15];
  v50 = v61[1];
  v30 = __OFSUB__(v49, v50);
  v51 = v49 - v50;
  if (v30)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v52 = v61[22];
  if (v61[26] != 2)
  {
    if (v52 == 2 || (v61[19] ^ v61[23]) >= 1024)
    {
      goto LABEL_40;
    }

LABEL_39:
    v53 = 0;
    goto LABEL_41;
  }

  if (v52 == 2)
  {
    goto LABEL_39;
  }

LABEL_40:
  v53 = 1;
LABEL_41:
  v30 = __OFADD__(v51, v53);
  v54 = v51 + v53;
  if (v30)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v55 = a2[15];
  v56 = a2[1];
  v30 = __OFSUB__(v55, v56);
  v57 = v55 - v56;
  if (v30)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v58 = a2[22];
  if (a2[26] != 2)
  {
    if (v58 == 2 || (a2[19] ^ a2[23]) >= 1024)
    {
      goto LABEL_49;
    }

LABEL_48:
    v59 = 0;
    goto LABEL_50;
  }

  if (v58 == 2)
  {
    goto LABEL_48;
  }

LABEL_49:
  v59 = 1;
LABEL_50:
  v30 = __OFADD__(v57, v59);
  v60 = v57 + v59;
  if (!v30)
  {
    if (v54 != v60)
    {
LABEL_30:
      v47 = 0;
      return v47 & 1;
    }

    goto LABEL_52;
  }

LABEL_61:
  __break(1u);
  return result;
}

uint64_t partial apply for implicit closure #5 in implicit closure #4 in AttributedString.Runs._index(_:offsetBy:)(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for AttributedString.Runs() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t lazy protocol witness table accessor for type DefaultIndices<AttributedString.Runs> and conformance <> DefaultIndices<A>(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    lazy protocol witness table accessor for type AttributedString.Runs and conformance AttributedString.Runs(&lazy protocol witness table cache variable for type AttributedString.Runs and conformance AttributedString.Runs);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy106_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 90) = *(a2 + 90);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AttributedString.Runs.Index(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 106))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for AttributedString.Runs.Index(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 106) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 106) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

unint64_t specialized Sequence.compactMap<A>(_:)(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (v5)
  {
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = (*(a1 + 48) + ((v8 << 10) | (16 * v11)));
    v13 = v12[1];
    if (v13 >= 2)
    {
      result = specialized Collection.first.getter(*v12, v13);
      if ((result & 0x100000000) == 0)
      {
        v14 = result;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 16) + 1, 1, v9);
          v9 = result;
        }

        v15 = *(v9 + 16);
        v16 = *(v9 + 24);
        v17 = v15 + 1;
        if (v15 >= v16 >> 1)
        {
          v20 = v15 + 1;
          v18 = v9;
          v19 = *(v9 + 16);
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v15 + 1, 1, v18);
          v15 = v19;
          v17 = v20;
          v9 = result;
        }

        *(v9 + 16) = v17;
        *(v9 + 4 * v15 + 32) = v14;
      }
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v9;
    }

    v5 = *(v2 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

double specialized Dictionary.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 72 * v6;

    outlined init with copy of AttributedString._AttributeValue(v8, a4);
  }

  else
  {
    *(a4 + 64) = 0;
    result = 0.0;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

uint64_t specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)();
  if (v4)
  {
    return *(*(a2 + 56) + 8 * v3);
  }

  else
  {
    return 0;
  }
}

Swift::Int AttributedString.Runs.subscript.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for AttributedString.Runs();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttributedString.Runs(v4, v10, type metadata accessor for AttributedString.Runs);
  outlined init with copy of AttributedString.Runs(v10, a3, type metadata accessor for AttributedString.Runs);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_181218E20;
  *(v11 + 32) = (*(a2 + 24))(a1, a2);
  *(v11 + 40) = v12;
  v13 = type metadata accessor for AttributedString.Runs.AttributesSlice1();
  *(a3 + *(v13 + 36)) = v11;
  (*(a2 + 32))(v42, a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOSgGMd);
  v14 = static _SetStorage.allocate(capacity:)();
  v15 = v14 + 56;
  v16 = v42[0];
  v17 = v42[1];
  Hasher.init(_seed:)();
  v41 = v13;
  if (v17 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    if (v17)
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
  v19 = -1 << *(v14 + 32);
  v20 = result & ~v19;
  v21 = v20 >> 6;
  v22 = *(v15 + 8 * (v20 >> 6));
  v23 = 1 << v20;
  if (((1 << v20) & v22) != 0)
  {
    v39 = v10;
    v40 = a3;
    v24 = ~v19;
    while (1)
    {
      v27 = (*(v14 + 48) + 16 * v20);
      v28 = *v27;
      v29 = v27[1];
      if (v29 == 1)
      {
        break;
      }

      if (v17 == 1)
      {
        goto LABEL_9;
      }

      if (v29)
      {
        if (v17)
        {
          if (v28 == v16 && v29 == v17)
          {
            outlined copy of AttributedString.AttributeRunBoundaries?(v16, v17);
            outlined copy of AttributedString.AttributeRunBoundaries?(v16, v17);

            goto LABEL_30;
          }

          v31 = _stringCompareWithSmolCheck(_:_:expecting:)();
          outlined copy of AttributedString.AttributeRunBoundaries?(v28, v29);
          outlined copy of AttributedString.AttributeRunBoundaries?(v16, v17);
          outlined copy of AttributedString.AttributeRunBoundaries?(v28, v29);

          if (v31)
          {
            outlined consume of AttributedString.AttributeRunBoundaries?(v16, v17);
            v16 = v28;
            v17 = v29;
LABEL_30:
            v36 = v16;
            v37 = v17;
            goto LABEL_32;
          }
        }

        else
        {
          outlined copy of AttributedString.AttributeRunBoundaries?(*v27, v27[1]);
          outlined copy of AttributedString.AttributeRunBoundaries?(v16, 0);
          outlined copy of AttributedString.AttributeRunBoundaries?(v28, v29);
        }

        v25 = v28;
        v26 = v29;
      }

      else
      {
        outlined copy of AttributedString.AttributeRunBoundaries?(*v27, 0);
        if (!v17)
        {
          swift_bridgeObjectRelease_n();
          v36 = v28;
          v37 = 0;
LABEL_32:
          outlined consume of AttributedString.AttributeRunBoundaries?(v36, v37);
          v10 = v39;
          a3 = v40;
LABEL_33:
          v38 = v41;
          outlined destroy of AttributedString.Runs(v10, type metadata accessor for AttributedString.Runs);
          result = outlined destroy of TermOfAddress?(v42, &_s10Foundation16AttributedStringV22AttributeRunBoundariesOSgMd);
          *(a3 + *(v38 + 40)) = v14;
          return result;
        }

        outlined copy of AttributedString.AttributeRunBoundaries?(v16, v17);

        v25 = v28;
        v26 = 0;
      }

LABEL_10:
      result = outlined consume of AttributedString.AttributeRunBoundaries?(v25, v26);
      v20 = (v20 + 1) & v24;
      v21 = v20 >> 6;
      v22 = *(v15 + 8 * (v20 >> 6));
      v23 = 1 << v20;
      if ((v22 & (1 << v20)) == 0)
      {
        v10 = v39;
        a3 = v40;
        goto LABEL_26;
      }
    }

    if (v17 == 1)
    {
      outlined copy of AttributedString.AttributeRunBoundaries?(*v27, 1);
      v36 = v28;
      v37 = 1;
      goto LABEL_32;
    }

LABEL_9:
    outlined copy of AttributedString.AttributeRunBoundaries?(*v27, v27[1]);
    outlined copy of AttributedString.AttributeRunBoundaries?(v16, v17);
    outlined consume of AttributedString.AttributeRunBoundaries?(v28, v29);
    v25 = v16;
    v26 = v17;
    goto LABEL_10;
  }

LABEL_26:
  *(v15 + 8 * v21) = v22 | v23;
  v32 = (*(v14 + 48) + 16 * v20);
  *v32 = v16;
  v32[1] = v17;
  v33 = *(v14 + 16);
  v34 = __OFADD__(v33, 1);
  v35 = v33 + 1;
  if (!v34)
  {
    *(v14 + 16) = v35;
    goto LABEL_33;
  }

  __break(1u);
  return result;
}

Swift::Int AttributedString.Runs.subscript.getter@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v11 = type metadata accessor for AttributedString.Runs();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttributedString.Runs(v5, v13, type metadata accessor for AttributedString.Runs);
  v48 = v13;
  outlined init with copy of AttributedString.Runs(v13, a5, type metadata accessor for AttributedString.Runs);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_181215ED0;
  *(v14 + 32) = (*(a3 + 24))(a1, a3);
  *(v14 + 40) = v15;
  *(v14 + 48) = (*(a4 + 24))(a2, a4);
  *(v14 + 56) = v16;
  v52 = a1;
  v53 = a2;
  v54 = a3;
  v55 = a4;
  v47 = type metadata accessor for AttributedString.Runs.AttributesSlice2();
  v17 = *(v47 + 52);
  v49 = a5;
  *(a5 + v17) = v14;
  v18 = *(a3 + 32);
  v50 = &v56;
  v18(a1, a3);
  (*(a4 + 32))(v57, a2, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOSgGMd);
  v19 = static _SetStorage.allocate(capacity:)();
  v20 = 0;
  v21 = 0;
  v22 = v19 + 56;
  while (1)
  {
    v25 = v20;
    v26 = &v50[2 * v21];
    v27 = *v26;
    v28 = v26[1];
    Hasher.init(_seed:)();
    v51 = v25;
    if (v28 == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      if (v28)
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
    v30 = ~(-1 << *(v19 + 32));
    v31 = result & v30;
    v32 = (result & v30) >> 6;
    v33 = *(v22 + 8 * v32);
    v34 = 1 << (result & v30);
    if ((v34 & v33) == 0)
    {
      break;
    }

    while (1)
    {
      v41 = (*(v19 + 48) + 16 * v31);
      v42 = *v41;
      v43 = v41[1];
      if (v43 == 1)
      {
        if (v28 == 1)
        {
          outlined copy of AttributedString.AttributeRunBoundaries?(*v41, 1);
          v23 = v42;
          v24 = 1;
          goto LABEL_3;
        }

LABEL_14:
        outlined copy of AttributedString.AttributeRunBoundaries?(*v41, v41[1]);
        outlined copy of AttributedString.AttributeRunBoundaries?(v27, v28);
        outlined consume of AttributedString.AttributeRunBoundaries?(v42, v43);
        v39 = v27;
        v40 = v28;
        goto LABEL_15;
      }

      if (v28 == 1)
      {
        goto LABEL_14;
      }

      if (!v43)
      {
        break;
      }

      if (v28)
      {
        if (v42 == v27 && v43 == v28)
        {
          outlined copy of AttributedString.AttributeRunBoundaries?(v27, v28);
          outlined copy of AttributedString.AttributeRunBoundaries?(v27, v28);

          goto LABEL_31;
        }

        v45 = _stringCompareWithSmolCheck(_:_:expecting:)();
        outlined copy of AttributedString.AttributeRunBoundaries?(v42, v43);
        outlined copy of AttributedString.AttributeRunBoundaries?(v27, v28);
        outlined copy of AttributedString.AttributeRunBoundaries?(v42, v43);

        if (v45)
        {
          outlined consume of AttributedString.AttributeRunBoundaries?(v27, v28);
          v27 = v42;
          v28 = v43;
LABEL_31:
          v23 = v27;
          v24 = v28;
          goto LABEL_3;
        }
      }

      else
      {
        outlined copy of AttributedString.AttributeRunBoundaries?(*v41, v41[1]);
        outlined copy of AttributedString.AttributeRunBoundaries?(v27, 0);
        outlined copy of AttributedString.AttributeRunBoundaries?(v42, v43);
      }

      v39 = v42;
      v40 = v43;
LABEL_15:
      result = outlined consume of AttributedString.AttributeRunBoundaries?(v39, v40);
      v31 = (v31 + 1) & v30;
      v32 = v31 >> 6;
      v33 = *(v22 + 8 * (v31 >> 6));
      v34 = 1 << v31;
      if ((v33 & (1 << v31)) == 0)
      {
        goto LABEL_11;
      }
    }

    outlined copy of AttributedString.AttributeRunBoundaries?(*v41, 0);
    if (v28)
    {
      outlined copy of AttributedString.AttributeRunBoundaries?(v27, v28);

      v39 = v42;
      v40 = 0;
      goto LABEL_15;
    }

    swift_bridgeObjectRelease_n();
    v23 = v42;
    v24 = 0;
LABEL_3:
    outlined consume of AttributedString.AttributeRunBoundaries?(v23, v24);
LABEL_4:
    v20 = 1;
    v21 = 1;
    if (v51)
    {
      outlined destroy of AttributedString.Runs(v48, type metadata accessor for AttributedString.Runs);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV22AttributeRunBoundariesOSgMd);
      result = swift_arrayDestroy();
      *(v49 + *(v47 + 56)) = v19;
      return result;
    }
  }

LABEL_11:
  *(v22 + 8 * v32) = v33 | v34;
  v35 = (*(v19 + 48) + 16 * v31);
  *v35 = v27;
  v35[1] = v28;
  v36 = *(v19 + 16);
  v37 = __OFADD__(v36, 1);
  v38 = v36 + 1;
  if (!v37)
  {
    *(v19 + 16) = v38;
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

uint64_t AttributedString.Runs.AttributesSlice2.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    v15[0] = *(v7 + 72);
    v12 = *(*v7 + 16);
    (*(v4 + 8))(v7, a1);
    v13 = *(a1 + 32);
    v15[1] = *(a1 + 16);
    v15[2] = v13;
    result = type metadata accessor for AttributedString.Runs.AttributesSlice2.Iterator();
    v14 = a2 + *(result + 52);
    *v14 = v15[0];
    *(v14 + 16) = v11;
    *(v14 + 24) = v10;
    *(v14 + 32) = v12;
  }

  return result;
}

uint64_t AttributedString.Runs.AttributesSlice2.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v591 = a2;
  v611 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v608.i64[0] = *(v611 - 8);
  MEMORY[0x1EEE9AC00](v611);
  v610.i64[0] = &v538 - v4;
  v601.i64[0] = type metadata accessor for AttributedString.Runs();
  MEMORY[0x1EEE9AC00](v601.i64[0]);
  v607 = (&v538 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v583 = (&v538 - v7);
  MEMORY[0x1EEE9AC00](v8);
  v605 = (&v538 - v9);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v538 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v604.i64[0] = &v538 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v603 = &v538 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v576 = &v538 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v575 = &v538 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v574 = &v538 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v596 = &v538 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v595 = &v538 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v594 = &v538 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v600.i64[0] = &v538 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v606 = &v538 - v32;
  v34 = MEMORY[0x1EEE9AC00](v33);
  v36 = &v538 - v35;
  v592 = (v2 + *(a1 + 52));
  v37 = *v592;
  v39 = *(v38 + 16);
  v598 = v2;
  v602 = v38 + 16;
  v599 = v39;
  result = (v39)(&v538 - v35, v2, a1, v34);
  if (*(v36 + 26) == 2)
  {
    goto LABEL_404;
  }

  v609 = *(v36 + 23);
  v41 = *(a1 + 16);
  v42 = *(a1 + 24);
  v43 = *(a1 + 32);
  v44 = *(a1 + 40);
  v625.i64[0] = v41;
  v625.i64[1] = v42;
  v626.i64[0] = v43;
  v626.i64[1] = v44;
  v45 = type metadata accessor for AttributedString.Runs.AttributesSlice2();
  v46 = v36;
  v47 = (*(v45 - 8) + 8);
  v597 = *v47;
  (v597)(v46, v45);
  if (v37 >> 10 == v609 >> 10)
  {
    swift_getAssociatedTypeWitness();
    type metadata accessor for Optional();
    swift_getAssociatedTypeWitness();
    type metadata accessor for Optional();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSny10Foundation16AttributedStringV5IndexVGMd);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    return (*(*(TupleTypeMetadata3 - 8) + 56))(v591, 1, 1, TupleTypeMetadata3);
  }

  v593 = v37;
  v609 = v37 >> 10;
  v578 = v43;
  v564 = v41;
  v565 = v44;
  v566 = v42;
  v49 = v606;
  v50 = v598;
  v51 = v599;
  (v599)(v606, v598, a1);
  v52 = v604.i64[0];
  outlined init with copy of AttributedString.Runs(v49, v604.i64[0], type metadata accessor for AttributedString.Runs);
  v53 = v49;
  v54 = v597;
  (v597)(v53, v45);
  v55 = *(v52 + *(v601.i64[0] + 28));
  outlined destroy of AttributedString.Runs(v52, type metadata accessor for AttributedString.Runs);
  v56 = v47;
  v57 = (v608.i64[0] + 8);
  v608.i64[0] += 8;
  v58 = a1;
  v581 = a1;
  v571 = v56;
  v572 = v45;
  if (v55 != 1)
  {
    v68 = v603;
    (v51)(v603, v50, v58);
    outlined init with copy of AttributedString.Runs(v68, v607, type metadata accessor for AttributedString.Runs);
    v54(v68, v45);
    v69 = v592[2];
    v605 = v592[1];
    v604.i64[0] = v69;
    v603 = v592[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
    v62 = v610.i64[0];
    RangeSet.ranges.getter();
    v70 = v611;
    v71 = RangeSet.Ranges.count.getter();
    v72 = *v57;
    (v72)(v62, v70);
    if (v71 >= 1)
    {
      v62 = 0;
      do
      {
        if (__OFADD__(v62, v71))
        {
          goto LABEL_353;
        }

        v73 = (v62 + v71) / 2;
        v74 = v610.i64[0];
        RangeSet.ranges.getter();
        v75 = v611;
        RangeSet.Ranges.subscript.getter();
        (v72)(v74, v75);
        v51 = v625.i64[0] >> 10;
        if (v609 >= v625.i64[0] >> 10)
        {
          v76 = *v627;
          if (v609 < *v627 >> 10)
          {
            v608 = v625;
            v601 = v626;
            v122 = *v607;
            v123 = v593;
            AttributedString.Guts.findRun(at:)(v593, v603, v625.i64);
            v609 = v625.u64[1];
            v611 = v625.i64[0];
            v124 = v626.i64[0];
            v600 = v628;
            v610 = *&v627[8];
            v125 = *(v122 + 72);
            v126 = *(v122 + 80);
            v128 = *(v122 + 88);
            v127 = *(v122 + 96);
            swift_unknownObjectRetain();
            v129 = specialized Rope.subscript.getter(v611, v609, v124, v125, v126, v128, v127);
            v131 = v130;
            v570 = v132;
            result = swift_unknownObjectRelease();
            v133 = v51 < v610.i64[0] >> 10;
            v134 = v129 + (v610.i64[0] >> 11);
            if (__OFADD__(v129, v610.i64[0] >> 11))
            {
              goto LABEL_368;
            }

            if ((v76 >> 11) < v134)
            {
              v134 = v76 >> 11;
            }

            v135 = *(v122 + 40);
            v625 = *(v122 + 24);
            v626 = v135;
            *v627 = *(v122 + 56);
            v136 = v566;
            v137 = v599;
            if (__OFSUB__(v134, v123 >> 11))
            {
              goto LABEL_370;
            }

            swift_unknownObjectRetain();
            v138 = BigString.UTF8View.index(_:offsetBy:)();
            v560 = v139;
            v561 = v138;
            v558 = v141;
            v559 = v140;
            swift_unknownObjectRelease();
            v562 = v122;

            outlined destroy of AttributedString.Runs(v607, type metadata accessor for AttributedString.Runs);
            v142 = v606;
            (v137)(v606, v598, v581);
            v143 = v592;
            v144 = v592[4];
            v145 = *(v592 + 1);
            v644 = *v592;
            v645 = v145;
            *&v646 = v144;
            v563 = v131;

            v146 = v572;
            AttributedString.Runs.AttributesSlice2.index(after:)(&v644, v572, &v649);
            result = (v597)(v142, v146);
            if (v649 >> 10 < *v143 >> 10)
            {
              goto LABEL_372;
            }

            v611 = *v143;
            v147 = vdup_n_s32(v133);
            v148.i64[0] = v147.u32[0];
            v148.i64[1] = v147.u32[1];
            v149 = vcltzq_s64(vshlq_n_s64(v148, 0x3FuLL));
            v150 = *(&v649 + 1);
            v151 = v650;
            v152 = vbslq_s8(v149, v610, v608);
            v153 = vbslq_s8(v149, v600, v601);
            v154 = *(&v650 + 1);
            v155 = v651;
            v156 = v143[3];
            v610.i64[0] = v143[4];
            v609 = v156;
            v157 = v143[1];
            v608.i64[0] = v143[2];
            v607 = v157;
            v595 = *(&v649 + 1);
            v596 = v649;
            *v143 = v649;
            v143[1] = v150;
            v590.i64[0] = v151;
            v143[2] = v151;
            v143[3] = v154;
            v600.i64[0] = v154;
            v586 = v155;
            v143[4] = v155;
            v158 = v564;
LABEL_345:
            v526 = v563;
            *&v634 = v563;
            *(&v634 + 1) = v570;
            v635 = v152;
            v636 = v153;
            *&v637 = v561;
            *(&v637 + 1) = v560;
            v638 = v559;
            v639 = v558;
            v640 = v562;
            swift_getAssociatedTypeWitness();
            type metadata accessor for Optional();
            v527 = v565;
            swift_getAssociatedTypeWitness();
            type metadata accessor for Optional();
            __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSny10Foundation16AttributedStringV5IndexVGMd);
            v528 = swift_getTupleTypeMetadata3();
            v529 = *(v528 + 48);
            v530 = v591;
            v531 = (v591 + *(v528 + 64));
            AttributedString._AttributeStorage.subscript.getter(v526, v158, v578, v591);
            AttributedString._AttributeStorage.subscript.getter(v526, v136, v527, v530 + v529);
            outlined destroy of AttributedString.Runs.Run(&v634);

            v532 = v607;
            *v531 = v611;
            v531[1] = v532;
            v533 = v609;
            v531[2] = v608.i64[0];
            v531[3] = v533;
            v535 = v595;
            v534 = v596;
            v531[4] = v610.i64[0];
            v531[5] = v534;
            v536 = v590.i64[0];
            v531[6] = v535;
            v531[7] = v536;
            v537 = v586;
            v531[8] = v600.i64[0];
            v531[9] = v537;
            return (*(*(v528 - 8) + 56))(v530, 0, 1, v528);
          }

          v62 = v73 + 1;
          v73 = v71;
        }

        v71 = v73;
      }

      while (v62 < v73);
    }

    goto LABEL_349;
  }

  v59 = v600.i64[0];
  (v51)(v600.i64[0], v50, v58);
  outlined init with copy of AttributedString.Runs(v59, v12, type metadata accessor for AttributedString.Runs);
  v54(v59, v45);
  v60 = v592[2];
  v579 = v592[1];
  v580 = v60;
  v577 = v592[3];
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v62 = v610.i64[0];
  v606 = v61;
  RangeSet.ranges.getter();
  v63 = v611;
  v64 = RangeSet.Ranges.count.getter();
  v607 = *v57;
  (v607)(v62, v63);
  if (v64 < 1)
  {
LABEL_348:
    __break(1u);
LABEL_349:
    __break(1u);
    goto LABEL_350;
  }

  v65 = 0;
  while (1)
  {
    if (__OFADD__(v65, v64))
    {
      goto LABEL_352;
    }

    v66 = (v65 + v64) / 2;
    v51 = v610.i64[0];
    RangeSet.ranges.getter();
    v67 = v611;
    RangeSet.Ranges.subscript.getter();
    (v607)(v51, v67);
    v62 = v625.i64[0] >> 10;
    if (v609 < v625.i64[0] >> 10)
    {
      goto LABEL_7;
    }

    v51 = *v627;
    if (v609 < *v627 >> 10)
    {
      break;
    }

    v65 = v66 + 1;
    v66 = v64;
LABEL_7:
    v64 = v66;
    if (v65 >= v66)
    {
      goto LABEL_348;
    }
  }

  v590 = v625;
  v589 = v626;
  v77 = *v12;
  AttributedString.Guts.findRun(at:)(v593, v577, v625.i64);
  v600.i64[0] = v625.i64[1];
  v603 = v625.i64[0];
  v78 = v626.i64[0];
  v588 = v628;
  v604 = *&v627[8];
  v80 = *(v77 + 72);
  v79 = *(v77 + 80);
  v82 = *(v77 + 88);
  v81 = *(v77 + 96);
  swift_unknownObjectRetain();
  v83 = specialized Rope.subscript.getter(v603, v600.u64[0], v78, v80, v79, v82, v81);
  v85 = v84;
  v87 = v86;
  result = swift_unknownObjectRelease();
  v88 = v83 + (v604.i64[0] >> 11);
  if (__OFADD__(v83, v604.i64[0] >> 11))
  {
    goto LABEL_367;
  }

  LODWORD(v603) = v62 < v604.i64[0] >> 10;
  if ((v51 >> 11) < v88)
  {
    v88 = v51 >> 11;
  }

  v89 = *(v77 + 40);
  v716 = *(v77 + 24);
  v717 = v89;
  v718 = *(v77 + 56);
  if (__OFSUB__(v88, v593 >> 11))
  {
    goto LABEL_369;
  }

  swift_unknownObjectRetain();
  v90 = BigString.UTF8View.index(_:offsetBy:)();
  v560 = v91;
  v561 = v90;
  v558 = v93;
  v559 = v92;
  swift_unknownObjectRelease();
  v562 = v77;

  outlined destroy of AttributedString.Runs(v12, type metadata accessor for AttributedString.Runs);
  v94 = v594;
  v95 = v598;
  v96 = v581;
  v97 = v599;
  (v599)(v594, v598, v581);
  outlined init with copy of AttributedString.Runs(v94, v605, type metadata accessor for AttributedString.Runs);
  v563 = v85;

  v570 = v87;

  v98 = v572;
  v99 = v597;
  (v597)(v94, v572);
  v100 = v595;
  (v97)(v595, v95, v96);
  v101 = *&v100[*(v98 + 52)];

  v99(v100, v98);
  v102 = v596;
  (v97)(v596, v95, v96);
  v569 = *(v102 + *(v98 + 56));

  result = (v99)(v102, v98);
  v594 = v101;
  v584 = *(v101 + 2);
  if (!v584)
  {
    goto LABEL_371;
  }

  v103 = *v605;
  AttributedString.Guts.findRun(at:)(v593, v577, v625.i64);
  v567 = v625.u64[1];
  v104 = v626.i64[1];
  v557 = v626.i64[0];
  v555 = v625.i64[0];
  v556 = *v627;
  v582 = *&v627[8];
  v549 = v628.i64[0];
  v550 = *&v627[16];
  v548 = v628.i64[1];
  v51 = *(v601.i64[0] + 24);
  v62 = v103;
  v105 = v610.i64[0];
  RangeSet.ranges.getter();
  v106 = v611;
  v107 = RangeSet.Ranges.count.getter();
  (v607)(v105, v106);
  if (v107 < 1)
  {
LABEL_350:
    __break(1u);
LABEL_351:
    while (1)
    {
      __break(1u);
LABEL_352:
      __break(1u);
LABEL_353:
      __break(1u);
LABEL_354:
      __break(1u);
LABEL_355:
      __break(1u);
LABEL_110:

LABEL_111:
      v229 = *(v62 + 72);
      v230 = *(v62 + 80);
      v231 = *(v62 + 88);
      v232 = *(v62 + 96);
      swift_unknownObjectRetain();
      v233 = specialized Rope.subscript.getter(v551, v567, v557, v229, v230, v231, v232);
      swift_unknownObjectRelease();

      if (__OFADD__(v556, v233))
      {
        goto LABEL_375;
      }

      v234 = *(v62 + 40);
      v713 = *(v62 + 24);
      v714 = v234;
      v715 = *(v62 + 56);
      if (__OFSUB__(v556 + v233, v51 >> 11))
      {
        goto LABEL_376;
      }

      swift_unknownObjectRetain();
      v235 = BigString.UTF8View.index(_:offsetBy:)();
      v237 = v236;
      v239 = v238;
      v241 = v240;
      result = swift_unknownObjectRelease();
      v242 = v235 >> 10;
      v243 = *(v62 + 24);
      v589.i64[0] = *(v62 + 32);
      v244 = *(v62 + 48);
      v594 = *(v62 + 40);
      v603 = v244;
      v245 = *(v62 + 64);
      v604.i64[0] = *(v62 + 56);
      if (v235 >> 10 >= v554)
      {
        v587 = v245;
        v249 = v593;
        v251 = v579;
        v250 = v580;
        v705 = v593;
        v706 = v579;
        v252 = v577;
        v707 = v580;
        v708 = v577;
        v253 = v595;
        v709 = v596;
        v710 = v595;
        v254 = v590.i64[0];
        v711 = v590.i64[0];
        v712 = v600.i64[0];
        v255 = v243;
        swift_unknownObjectRetain();
        v256 = v569;
        v257 = specialized Set.contains(_:)(0, 0, v569);
        v588.i64[0] = v255;
        if (v257)
        {
          v691 = v255;
          v692 = v589.i64[0];
          v693 = v594;
          v694 = v603;
          v695 = v604.i64[0];
          v696 = v587;
          BigString.UTF8View.subscript.getter();
          v697 = v249;
          v698 = v251;
          v699 = v580;
          v700 = v252;
          v701 = v249;
          v702 = v251;
          v703 = v580;
          v704 = v252;
          specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v697, &v625);
          v250 = v580;
          result = outlined destroy of BigSubstring.UTF8View(v641);
          v258 = v596;
          v259 = v253;
          v260 = v254;
          v261 = v254;
          v262 = v600.i64[0];
          if (v628.i64[0] != 2)
          {
            v258 = *v627;
            if (v609 > *v627 >> 10)
            {
              goto LABEL_392;
            }

            v259 = *&v627[8];
            v261 = *&v627[16];
            v262 = v628.i64[0];
          }
        }

        else
        {
          v258 = v596;
          v259 = v253;
          v260 = v254;
          v261 = v254;
          v262 = v600.i64[0];
        }

        v683 = v249;
        v684 = v579;
        v685 = v250;
        v686 = v577;
        v687 = v258;
        v688 = v259;
        v593 = v261;
        v689 = v261;
        v690 = v262;
        if (specialized Collection<>._containsScalarConstraint.getter(v256))
        {
          v263 = v256 + 56;
          v264 = 1 << *(v256 + 32);
          v265 = -1;
          if (v264 < 64)
          {
            v265 = ~(-1 << v264);
          }

          v266 = v265 & *(v256 + 56);
          v267 = (v264 + 63) >> 6;

          v268 = 0;
          v269 = MEMORY[0x1E69E7CC0];
          while (v266)
          {
LABEL_131:
            v271 = __clz(__rbit64(v266));
            v266 &= v266 - 1;
            v272 = (*(v569 + 48) + ((v268 << 10) | (16 * v271)));
            v273 = v272[1];
            if (v273 >= 2)
            {
              result = specialized Collection.first.getter(*v272, v273);
              if ((result & 0x100000000) == 0)
              {
                v586 = result;
                result = swift_isUniquelyReferenced_nonNull_native();
                v568 = v62;
                if ((result & 1) == 0)
                {
                  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v269 + 16) + 1, 1, v269);
                  v269 = result;
                }

                v275 = *(v269 + 16);
                v274 = *(v269 + 24);
                v276 = (v275 + 1);
                v277 = v586;
                if (v275 >= v274 >> 1)
                {
                  v585 = (v275 + 1);
                  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v274 > 1), v275 + 1, 1, v269);
                  v276 = v585;
                  v277 = v586;
                  v269 = result;
                }

                *(v269 + 16) = v276;
                *(v269 + 4 * v275 + 32) = v277;
                v62 = v568;
              }
            }
          }

          while (1)
          {
            v270 = v268 + 1;
            if (__OFADD__(v268, 1))
            {
              goto LABEL_362;
            }

            if (v270 >= v267)
            {
              v586 = v259;

              v677 = v588.i64[0];
              v678 = v589.i64[0];
              v679 = v594;
              v680 = v603;
              v681 = v604.i64[0];
              v682 = v587;
              BigString.UnicodeScalarView.subscript.getter();
              v285 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v269);
              v287 = v286;
              v289 = v288;
              v291 = v290;

              swift_unknownObjectRelease();
              result = outlined destroy of BigSubstring.UnicodeScalarView(&v644);
              if (v291 == 2)
              {
                v253 = v595;
                v260 = v590.i64[0];
                v278 = v554;
                v259 = v586;
                goto LABEL_145;
              }

              v278 = v554;
              if (v609 <= v285 >> 10)
              {
                v258 = v285;
                v259 = v287;
                v292 = v289;
                v262 = v291;
                v253 = v595;
                v260 = v590.i64[0];
                goto LABEL_189;
              }

              goto LABEL_393;
            }

            v266 = *(v263 + 8 * v270);
            ++v268;
            if (v266)
            {
              v268 = v270;
              goto LABEL_131;
            }
          }
        }

        swift_unknownObjectRelease();
        v278 = v554;
LABEL_145:
        v292 = v593;
LABEL_189:
        v335 = v596;
        if (v258 >> 10 != v278)
        {
          v335 = v258;
          v253 = v259;
        }

        v595 = v253;
        v596 = v335;
        if (v258 >> 10 != v278)
        {
          v260 = v292;
        }

        v590.i64[0] = v260;
        v336 = v600.i64[0];
        if (v258 >> 10 != v278)
        {
          v336 = v262;
        }

        v600.i64[0] = v336;
      }

      else
      {
        v246 = v569;
        v247 = v577;
        v248 = v579;
        if (v242 < v609)
        {
          goto LABEL_388;
        }

        v705 = v593;
        v706 = v579;
        v707 = v580;
        v708 = v577;
        v709 = v235;
        v710 = v237;
        v711 = v239;
        v712 = v241;
        if (v609 == v242)
        {
        }

        else
        {
          v600.i64[0] = v237;
          v279 = v243;
          swift_unknownObjectRetain();
          v280 = specialized Set.contains(_:)(0, 0, v246);
          v588.i64[0] = v279;
          if (v280)
          {
            v691 = v279;
            v692 = v589.i64[0];
            v693 = v594;
            v694 = v603;
            v695 = v604.i64[0];
            v696 = v245;
            BigString.UTF8View.subscript.getter();
            v281 = v593;
            v697 = v593;
            v698 = v248;
            v282 = v580;
            v699 = v580;
            v700 = v577;
            v701 = v593;
            v702 = v248;
            v703 = v580;
            v704 = v577;
            specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v697, &v625);
            v283 = v282;
            result = outlined destroy of BigSubstring.UTF8View(v641);
            v284 = v281;
            v247 = v577;
            v237 = v600.i64[0];
            if (v628.i64[0] != 2)
            {
              v235 = *v627;
              if (v609 > *v627 >> 10)
              {
                goto LABEL_400;
              }

              v237 = *&v627[8];
              v239 = *&v627[16];
              v241 = v628.i64[0];
            }
          }

          else
          {
            v284 = v593;
            v283 = v580;
            v237 = v600.i64[0];
          }

          v683 = v284;
          v684 = v579;
          v685 = v283;
          v686 = v247;
          v687 = v235;
          v688 = v237;
          v689 = v239;
          v690 = v241;
          v319 = v569;
          if (specialized Collection<>._containsScalarConstraint.getter(v569))
          {
            v600.i64[0] = v237;
            v587 = v245;
            v320 = v319 + 56;
            v321 = 1 << *(v319 + 32);
            v322 = -1;
            if (v321 < 64)
            {
              v322 = ~(-1 << v321);
            }

            v323 = v322 & *(v319 + 56);
            v324 = (v321 + 63) >> 6;

            v325 = 0;
            v596 = MEMORY[0x1E69E7CC0];
            while (v323)
            {
LABEL_177:
              v327 = __clz(__rbit64(v323));
              v323 &= v323 - 1;
              v328 = (*(v569 + 48) + ((v325 << 10) | (16 * v327)));
              v329 = v328[1];
              if (v329 >= 2)
              {
                result = specialized Collection.first.getter(*v328, v329);
                if ((result & 0x100000000) == 0)
                {
                  v330 = result;
                  result = swift_isUniquelyReferenced_nonNull_native();
                  v568 = v62;
                  if ((result & 1) == 0)
                  {
                    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v596 + 16) + 1, 1, v596);
                    v596 = result;
                  }

                  v332 = *(v596 + 16);
                  v331 = *(v596 + 24);
                  v333 = (v332 + 1);
                  if (v332 >= v331 >> 1)
                  {
                    v595 = (v332 + 1);
                    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v331 > 1), v332 + 1, 1, v596);
                    v333 = v595;
                    v596 = result;
                  }

                  v334 = v596;
                  *(v596 + 16) = v333;
                  *(v334 + 4 * v332 + 32) = v330;
                  v62 = v568;
                }
              }
            }

            while (1)
            {
              v326 = v325 + 1;
              if (__OFADD__(v325, 1))
              {
                goto LABEL_365;
              }

              if (v326 >= v324)
              {

                v677 = v588.i64[0];
                v678 = v589.i64[0];
                v679 = v594;
                v680 = v603;
                v681 = v604.i64[0];
                v682 = v587;
                BigString.UnicodeScalarView.subscript.getter();
                v509 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v596);
                v595 = v510;
                v590.i64[0] = v511;
                v513 = v512;

                swift_unknownObjectRelease();
                result = outlined destroy of BigSubstring.UnicodeScalarView(&v644);
                if (v513 == 2)
                {
                  v595 = v600.i64[0];
                  v596 = v235;
                  goto LABEL_186;
                }

                v596 = v509;
                if (v609 <= v509 >> 10)
                {
                  v600.i64[0] = v513;
                  goto LABEL_196;
                }

                goto LABEL_401;
              }

              v323 = *(v320 + 8 * v326);
              ++v325;
              if (v323)
              {
                v325 = v326;
                goto LABEL_177;
              }
            }
          }

          swift_unknownObjectRelease();
        }

        v595 = v237;
        v596 = v235;
LABEL_186:
        v590.i64[0] = v239;
        v600.i64[0] = v241;
      }

LABEL_196:
      v318 = v583;
LABEL_197:
      v586 = *(v62 + 16);
      outlined destroy of AttributedString.Runs(v605, type metadata accessor for AttributedString.Runs);
      v337 = v574;
      v338 = v598;
      v339 = v581;
      v340 = v599;
      (v599)(v574, v598, v581);
      outlined init with copy of AttributedString.Runs(v337, v318, type metadata accessor for AttributedString.Runs);
      v341 = v572;
      v342 = v597;
      (v597)(v337, v572);
      v343 = v575;
      (v340)(v575, v338, v339);
      v344 = *&v343[*(v341 + 52)];

      v342(v343, v341);
      v345 = v576;
      (v340)(v576, v338, v581);
      v585 = *&v345[*(v341 + 56)];

      result = (v342)(v345, v341);
      v602 = v344;
      v589.i64[0] = *(v344 + 16);
      if (!v589.i64[0])
      {
        goto LABEL_373;
      }

      v587 = *v318;
      AttributedString.Guts.findRun(at:)(v596, v600.u64[0], v625.i64);
      v584 = v625.u64[1];
      v346 = v625.i64[0];
      v62 = v626.i64[1];
      v581 = *v627;
      v582 = v626.i64[0];
      v572 = *&v627[16];
      v573 = *&v627[8];
      v569 = v628.i64[1];
      v571 = v628.i64[0];
      v605 = *(v601.i64[0] + 24);
      v51 = v610.i64[0];
      RangeSet.ranges.getter();
      v347 = v611;
      v348 = RangeSet.Ranges.count.getter();
      (v607)(v51, v347);
      if (v348 >= 1)
      {
        v349 = 0;
        v609 = v596 >> 10;
        v51 = v611;
        while (1)
        {
          if (__OFADD__(v349, v348))
          {
            goto LABEL_355;
          }

          v350 = (v349 + v348) / 2;
          v351 = v610.i64[0];
          RangeSet.ranges.getter();
          RangeSet.Ranges.subscript.getter();
          result = (v607)(v351, v51);
          if (v609 >= v625.i64[0] >> 10)
          {
            v352 = *v627;
            if (v609 < *v627 >> 10)
            {
              v579 = *v627 >> 10;
              v575 = *&v627[8];
              v576 = *&v627[16];
              v577 = v628.i64[0];
              v353 = v585;
              v354 = v585[2];
              v574 = *v627;
              if (v354 == 1 && (result = specialized Set.contains(_:)(0, 1, v585), (result & 1) == 0))
              {

                v357 = v587[3];
                v601.i64[0] = v587[4];
                v358 = v587[6];
                v599 = v587[5];
                v598 = v358;
                v359 = v587[8];
                v597 = v587[7];
                v593 = v359;
                v360 = v596;
                v617 = v596;
                v618 = v595;
                v619 = v590.i64[0];
                v361 = v600.i64[0];
                v620 = v600.i64[0];
                v621 = v352;
                v363 = v575;
                v362 = v576;
                v622 = v575;
                v623 = v576;
                v364 = v577;
                v624 = v577;
                v602 = v357;
                swift_unknownObjectRetain();
                v365 = specialized Set.contains(_:)(0, 0, v353);
                v366 = v352;
                v367 = v360;
                v368 = v366;
                if (v365)
                {
                  *&v674 = v602;
                  *(&v674 + 1) = v601.i64[0];
                  *&v675 = v599;
                  *(&v675 + 1) = v598;
                  *&v676 = v597;
                  *(&v676 + 1) = v593;
                  BigString.UTF8View.subscript.getter();
                  *&v612 = v367;
                  *(&v612 + 1) = v595;
                  v613.i64[0] = v590.i64[0];
                  v613.i64[1] = v361;
                  v614.i64[0] = v367;
                  v614.i64[1] = v595;
                  *&v615 = v590.i64[0];
                  *(&v615 + 1) = v361;
                  specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v612, &v625);
                  result = outlined destroy of BigSubstring.UTF8View(&v649);
                  v368 = v574;
                  v363 = v575;
                  v362 = v576;
                  v364 = v577;
                  if (v628.i64[0] != 2)
                  {
                    v368 = *v627;
                    if (v609 > *v627 >> 10)
                    {
                      goto LABEL_398;
                    }

                    v363 = *&v627[8];
                    v362 = *&v627[16];
                    v364 = v628.i64[0];
                    v367 = v596;
                    v361 = v600.i64[0];
                  }
                }

                v660 = v367;
                v661 = v595;
                v662 = v590.i64[0];
                v663 = v361;
                v664 = v368;
                v594 = v363;
                v665 = v363;
                v604.i64[0] = v362;
                v666 = v362;
                v667 = v364;
                v369 = v585;
                v370 = specialized Collection<>._containsScalarConstraint.getter(v585);
                v603 = v364;
                if (v370)
                {
                  v371 = v369 + 7;
                  v372 = 1 << *(v369 + 32);
                  v373 = -1;
                  if (v372 < 64)
                  {
                    v373 = ~(-1 << v372);
                  }

                  v374 = v373 & v369[7];
                  v375 = (v372 + 63) >> 6;

                  v376 = 0;
                  v377 = MEMORY[0x1E69E7CC0];
                  while (v374)
                  {
LABEL_224:
                    v379 = __clz(__rbit64(v374));
                    v374 &= v374 - 1;
                    v380 = (v585[6] + ((v376 << 10) | (16 * v379)));
                    v381 = v380[1];
                    if (v381 >= 2)
                    {
                      result = specialized Collection.first.getter(*v380, v381);
                      if ((result & 0x100000000) == 0)
                      {
                        v589.i64[0] = result;
                        result = swift_isUniquelyReferenced_nonNull_native();
                        v382 = v368;
                        if ((result & 1) == 0)
                        {
                          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v377 + 16) + 1, 1, v377);
                          v377 = result;
                        }

                        v384 = *(v377 + 16);
                        v383 = *(v377 + 24);
                        v385 = v384 + 1;
                        v386 = v589.i32[0];
                        if (v384 >= v383 >> 1)
                        {
                          v588.i64[0] = v384 + 1;
                          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v383 > 1), v384 + 1, 1, v377);
                          v385 = v588.i64[0];
                          v377 = result;
                          v386 = v589.i32[0];
                        }

                        *(v377 + 16) = v385;
                        *(v377 + 4 * v384 + 32) = v386;
                        v368 = v382;
                      }
                    }
                  }

                  while (1)
                  {
                    v378 = v376 + 1;
                    if (__OFADD__(v376, 1))
                    {
                      goto LABEL_364;
                    }

                    if (v378 >= v375)
                    {

                      v668 = v602;
                      v669 = v601.i64[0];
                      v670 = v599;
                      v671 = v598;
                      v672 = v597;
                      v673 = v593;
                      BigString.UnicodeScalarView.subscript.getter();
                      v499 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v377);
                      v501 = v500;
                      v503 = v502;
                      v505 = v504;

                      swift_unknownObjectRelease();
                      result = outlined destroy of BigSubstring.UnicodeScalarView(&v625);
                      v318 = v583;
                      v361 = v600.i64[0];
                      if (v505 == 2)
                      {
                        goto LABEL_325;
                      }

                      if (v609 <= v499 >> 10)
                      {
                        v368 = v499;
                        v594 = v501;
                        v604.i64[0] = v503;
                        v603 = v505;
                        goto LABEL_325;
                      }

                      goto LABEL_399;
                    }

                    v374 = v371[v378];
                    ++v376;
                    if (v374)
                    {
                      v376 = v378;
                      goto LABEL_224;
                    }
                  }
                }

                swift_unknownObjectRelease();
LABEL_325:
                if (v579 != v368 >> 10)
                {
                  v481 = v587[2];
                  v136 = v566;
                  v459 = v594;
                  v456 = v595;
                  goto LABEL_336;
                }

                v506 = v610.i64[0];
                RangeSet.ranges.getter();
                v507 = v611;
                v508 = RangeSet.Ranges.count.getter();
                result = (v607)(v506, v507);
                if (__OFSUB__(v508, 1))
                {
                  goto LABEL_391;
                }

                if (v350 != v508 - 1)
                {
                  goto LABEL_341;
                }

                v481 = v587[2];
                v368 = v574;
LABEL_329:
                v459 = v575;
                v604.i64[0] = v576;
                v469 = v577;
              }

              else
              {
                v355 = v318[15];
                if (v62 != v355)
                {
                  goto LABEL_233;
                }

                v356 = v318[22];
                if (v318[26] != 2)
                {
                  if (v356 != 2 && (v318[23] ^ v318[19]) < 1024)
                  {
                    goto LABEL_233;
                  }

                  goto LABEL_275;
                }

                if (v356 != 2)
                {
                  goto LABEL_275;
                }

LABEL_233:
                v557 = v318[15];
                if (v62 >= v355)
                {
                  goto LABEL_387;
                }

                v387 = v62;
                v388 = v587;
                v389 = v587[9];
                v390 = v587[10];
                v391 = v587[11];
                v392 = v587[12];
                swift_unknownObjectRetain();
                v393 = v582;
                specialized Rope.subscript.getter(v346, v584, v582, v389, v390, v391, v392);
                v395 = v394;
                v555 = v396;
                result = swift_unknownObjectRelease();
                v397 = v388[9];
                v398 = v388[10];
                v399 = v387 + 1;
                v401 = v388[11];
                v400 = v388[12];
                v556 = (v602 + 40);
                v625.i64[0] = v346;
                v625.i64[1] = v584;
                v626.i64[0] = v393;
                v588.i64[0] = v395;
                while (2)
                {
                  if (v346 != v400)
                  {
                    goto LABEL_383;
                  }

                  v568 = v399;
                  v580 = v400;
                  v582 = v393;
                  if (v393)
                  {
                    v402 = v398;
                    v403 = *(v393 + 24 * ((v584 >> ((4 * *(v393 + 18) + 8) & 0x3C)) & 0xF) + 24);
                    swift_unknownObjectRetain();
                  }

                  else
                  {
                    swift_unknownObjectRetain();
                    v402 = v398;
                    v403 = specialized Rope._Node.subscript.getter(v584, v397);
                  }

                  v554 = v581 + v403;
                  if (__OFADD__(v581, v403))
                  {
                    goto LABEL_384;
                  }

                  specialized Rope.formIndex(after:)(&v625, v397, v402, v401, v580);
                  result = swift_unknownObjectRelease();
                  v404 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMd;
                  if (v557 < v568)
                  {
LABEL_357:

LABEL_280:
                  }

                  else
                  {
                    v405 = v625.u64[1];
                    if (v568 == v557)
                    {
                      v406 = v583[22];
                      if (v583[26] == 2)
                      {
                        if (v406 == 2)
                        {
                          goto LABEL_357;
                        }
                      }

                      else if (v406 != 2 && (v583[19] ^ v583[23]) < 1024)
                      {
                        goto LABEL_357;
                      }
                    }

                    if (v625.i64[0] != v587[12])
                    {
                      goto LABEL_385;
                    }

                    v550 = v625.u64[1];
                    v551 = v625.i64[0];
                    v549 = v626.i64[0];
                    if (v626.i64[0])
                    {
                      v407 = v626.i64[0] + 24 * ((v625.i64[1] >> ((4 * *(v626.i64[0] + 18) + 8) & 0x3C)) & 0xF);
                      v408 = *(v407 + 40);
                      v597 = *(v407 + 32);

                      v567 = v408;
                    }

                    else
                    {
                      v409 = v587[9];
                      swift_unknownObjectRetain();
                      specialized Rope._Node.subscript.getter(v405, v409);
                      v597 = v410;
                      v567 = v411;
                      result = swift_unknownObjectRelease();
                    }

                    v412 = 0;
                    v413 = v556;
                    v414 = v588.i64[0];
                    do
                    {
                      if (v412 >= *(v602 + 16))
                      {
                        goto LABEL_361;
                      }

                      v604.i64[0] = v412;
                      v416 = *(v413 - 1);
                      v415 = *v413;
                      v603 = v413;
                      if (*(v414 + 16))
                      {

                        v417 = specialized __RawDictionaryStorage.find<A>(_:)(v416, v415);
                        if (v418)
                        {
                          outlined init with copy of AttributedString._AttributeValue(*(v414 + 56) + 72 * v417, &v649);
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

                      if (*(v597 + 16))
                      {
                        v419 = v404;
                        v420 = v414;
                        v421 = v597;
                        v422 = specialized __RawDictionaryStorage.find<A>(_:)(v416, v415);
                        v424 = v423;

                        if (v424)
                        {
                          outlined init with copy of AttributedString._AttributeValue(*(v421 + 56) + 72 * v422, &v634);
                        }

                        else
                        {
                          v638 = 0;
                          v637 = 0u;
                          v636 = 0u;
                          v634 = 0u;
                          v635 = 0u;
                        }

                        v414 = v420;
                        v404 = v419;
                      }

                      else
                      {

                        v638 = 0;
                        v637 = 0u;
                        v636 = 0u;
                        v634 = 0u;
                        v635 = 0u;
                      }

                      outlined init with copy of AttributedString._AttributeValue?(&v649, &v625);
                      outlined init with copy of AttributedString._AttributeValue?(&v634, &v629);
                      if (v626.i64[1])
                      {
                        outlined init with copy of AttributedString._AttributeValue?(&v625, &v617);
                        if (!v630.i64[1])
                        {
                          outlined destroy of TermOfAddress?(&v634, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                          outlined destroy of TermOfAddress?(&v649, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                          outlined destroy of AttributedString._AttributeValue(&v617);
LABEL_277:
                          outlined destroy of TermOfAddress?(&v625, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMd);
LABEL_279:

                          goto LABEL_280;
                        }

                        v614 = v631;
                        v615 = v632;
                        v616 = v633;
                        v612 = v629;
                        v613 = v630;
                        v425 = v620;
                        v594 = v621;
                        v593 = __swift_project_boxed_opaque_existential_1(&v617, v620);
                        v426 = __swift_project_boxed_opaque_existential_1(&v612, v613.i64[1]);
                        v601.i64[0] = &v538;
                        v427 = *(v425 - 8);
                        MEMORY[0x1EEE9AC00](v426);
                        v429 = &v538 - ((v428 + 15) & 0xFFFFFFFFFFFFFFF0);
                        v599 = &v538;
                        v431 = MEMORY[0x1EEE9AC00](v430);
                        (*(v433 + 16))(&v538 - ((v432 + 15) & 0xFFFFFFFFFFFFFFF0), v431);
                        v434 = type metadata accessor for Optional();
                        v598 = &v538;
                        v435 = *(v434 - 8);
                        MEMORY[0x1EEE9AC00](v434);
                        v437 = &v538 - v436;
                        if (!swift_dynamicCast())
                        {
                          outlined destroy of TermOfAddress?(&v634, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                          outlined destroy of TermOfAddress?(&v649, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                          (*(v427 + 56))(v437, 1, 1, v425);
                          (*(v435 + 8))(v437, v434);
                          outlined destroy of AttributedString._AttributeValue(&v612);
                          outlined destroy of AttributedString._AttributeValue(&v617);
                          outlined destroy of TermOfAddress?(&v625, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                          goto LABEL_279;
                        }

                        (*(v427 + 56))(v437, 0, 1, v425);
                        (*(v427 + 32))(v429, v437, v425);
                        v438 = dispatch thunk of static Equatable.== infix(_:_:)();
                        (*(v427 + 8))(v429, v425);
                        v404 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMd;
                        outlined destroy of TermOfAddress?(&v634, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                        outlined destroy of TermOfAddress?(&v649, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                        outlined destroy of AttributedString._AttributeValue(&v612);
                        outlined destroy of AttributedString._AttributeValue(&v617);
                        result = outlined destroy of TermOfAddress?(&v625, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                        v414 = v588.i64[0];
                        if ((v438 & 1) == 0)
                        {
                          goto LABEL_279;
                        }
                      }

                      else
                      {
                        outlined destroy of TermOfAddress?(&v634, v404);
                        outlined destroy of TermOfAddress?(&v649, v404);
                        if (v630.i64[1])
                        {
                          goto LABEL_277;
                        }

                        result = outlined destroy of TermOfAddress?(&v625, v404);
                      }

                      v412 = v604.i64[0] + 1;
                      v413 = (v603 + 16);
                    }

                    while (v589.i64[0] != v604.i64[0] + 1);

                    v397 = v587[9];
                    v398 = v587[10];
                    v401 = v587[11];
                    v400 = v587[12];
                    v581 = v554;
                    v346 = v551;
                    v625.i64[0] = v551;
                    v625.i64[1] = v550;
                    v393 = v549;
                    v584 = v550;
                    v626.i64[0] = v549;
                    v399 = v568 + 1;
                    if (!__OFADD__(v568, 1))
                    {
                      continue;
                    }

                    __break(1u);
LABEL_275:

                    v580 = v346;
                  }

                  break;
                }

                v439 = v587;
                v440 = v587[9];
                v441 = v587[10];
                v442 = v587[11];
                v443 = v587[12];
                swift_unknownObjectRetain();
                v444 = specialized Rope.subscript.getter(v580, v584, v582, v440, v441, v442, v443);
                swift_unknownObjectRelease();

                if (__OFADD__(v581, v444))
                {
                  goto LABEL_380;
                }

                v445 = *(v439 + 5);
                v674 = *(v439 + 3);
                v675 = v445;
                v676 = *(v439 + 7);
                if (__OFSUB__(v581 + v444, v573 >> 11))
                {
                  goto LABEL_381;
                }

                swift_unknownObjectRetain();
                v446 = BigString.UTF8View.index(_:offsetBy:)();
                v448 = v447;
                v450 = v449;
                v603 = v451;
                result = swift_unknownObjectRelease();
                v452 = v446 >> 10;
                v453 = v439[3];
                v597 = v439[4];
                v454 = v439[6];
                v598 = v439[5];
                v599 = v454;
                v455 = v439[8];
                v601.i64[0] = v439[7];
                v602 = v455;
                if (v446 >> 10 < v579)
                {
                  v610.i64[0] = v453;
                  v456 = v595;
                  v361 = v600.i64[0];
                  if (v452 < v609)
                  {
                    goto LABEL_389;
                  }

                  v617 = v596;
                  v618 = v595;
                  v619 = v590.i64[0];
                  v620 = v600.i64[0];
                  v621 = v446;
                  v622 = v448;
                  v623 = v450;
                  v457 = v603;
                  v624 = v603;
                  v136 = v566;
                  v458 = v585;
                  if (v609 == v452)
                  {
                    v604.i64[0] = v450;
                    v459 = v448;
                    v611 = v446;
                  }

                  else
                  {
                    v482 = v610.i64[0];
                    swift_unknownObjectRetain();
                    if (specialized Set.contains(_:)(0, 0, v458))
                    {
                      v668 = v482;
                      v669 = v597;
                      v670 = v598;
                      v671 = v599;
                      v672 = v601.i64[0];
                      v673 = v602;
                      BigString.UTF8View.subscript.getter();
                      *&v612 = v596;
                      *(&v612 + 1) = v456;
                      v613.i64[0] = v590.i64[0];
                      v613.i64[1] = v361;
                      v614.i64[0] = v596;
                      v614.i64[1] = v456;
                      *&v615 = v590.i64[0];
                      *(&v615 + 1) = v361;
                      specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v612, &v625);
                      result = outlined destroy of BigSubstring.UTF8View(&v649);
                      if (v628.i64[0] != 2)
                      {
                        v446 = *v627;
                        if (v609 > *v627 >> 10)
                        {
                          goto LABEL_402;
                        }

                        v448 = *&v627[8];
                        v450 = *&v627[16];
                        v457 = v628.i64[0];
                      }
                    }

                    v660 = v596;
                    v661 = v456;
                    v662 = v590.i64[0];
                    v663 = v361;
                    v611 = v446;
                    v664 = v446;
                    v459 = v448;
                    v665 = v448;
                    v666 = v450;
                    v603 = v457;
                    v667 = v457;
                    v483 = specialized Collection<>._containsScalarConstraint.getter(v458);
                    v604.i64[0] = v450;
                    if (v483)
                    {
                      v484 = 1 << *(v458 + 32);
                      v485 = -1;
                      if (v484 < 64)
                      {
                        v485 = ~(-1 << v484);
                      }

                      v486 = v485 & v458[7];
                      v487 = (v484 + 63) >> 6;

                      v488 = 0;
                      v489 = MEMORY[0x1E69E7CC0];
                      while (v486)
                      {
LABEL_314:
                        v491 = __clz(__rbit64(v486));
                        v486 &= v486 - 1;
                        v492 = (v458[6] + ((v488 << 10) | (16 * v491)));
                        v493 = v492[1];
                        if (v493 >= 2)
                        {
                          result = specialized Collection.first.getter(*v492, v493);
                          if ((result & 0x100000000) == 0)
                          {
                            v608.i64[0] = result;
                            result = swift_isUniquelyReferenced_nonNull_native();
                            v494 = v450;
                            if ((result & 1) == 0)
                            {
                              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v489 + 16) + 1, 1, v489);
                              v489 = result;
                            }

                            v496 = *(v489 + 16);
                            v495 = *(v489 + 24);
                            v497 = (v496 + 1);
                            v498 = v608.i32[0];
                            if (v496 >= v495 >> 1)
                            {
                              v607 = (v496 + 1);
                              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v495 > 1), v496 + 1, 1, v489);
                              v497 = v607;
                              v489 = result;
                              v498 = v608.i32[0];
                            }

                            *(v489 + 16) = v497;
                            *(v489 + 4 * v496 + 32) = v498;
                            v450 = v494;
                          }
                        }
                      }

                      while (1)
                      {
                        v490 = v488 + 1;
                        if (__OFADD__(v488, 1))
                        {
                          goto LABEL_366;
                        }

                        if (v490 >= v487)
                        {

                          v654 = v610.i64[0];
                          v655 = v597;
                          v656 = v598;
                          v657 = v599;
                          v658 = v601.i64[0];
                          v659 = v602;
                          BigString.UnicodeScalarView.subscript.getter();
                          v514 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v489);
                          v516 = v515;
                          v518 = v517;
                          v520 = v519;

                          swift_unknownObjectRelease();
                          result = outlined destroy of BigSubstring.UnicodeScalarView(&v625);
                          v136 = v566;
                          v318 = v583;
                          v456 = v595;
                          v361 = v600.i64[0];
                          if (v520 == 2)
                          {
                            goto LABEL_335;
                          }

                          if (v609 <= v514 >> 10)
                          {
                            v611 = v514;
                            v459 = v516;
                            v604.i64[0] = v518;
                            v603 = v520;
                            goto LABEL_335;
                          }

                          goto LABEL_403;
                        }

                        v486 = v458[v490 + 7];
                        ++v488;
                        if (v486)
                        {
                          v488 = v490;
                          goto LABEL_314;
                        }
                      }
                    }

                    swift_unknownObjectRelease();
                  }

                  v318 = v583;
LABEL_335:
                  v481 = v587[2];
                  v368 = v611;
LABEL_336:
                  v469 = v603;
LABEL_343:
                  result = outlined destroy of AttributedString.Runs(v318, type metadata accessor for AttributedString.Runs);
                  v523 = v592;
                  if (v609 < *v592 >> 10)
                  {
                    goto LABEL_374;
                  }

                  v611 = *v592;
                  v524 = v592[3];
                  v610.i64[0] = v592[4];
                  v609 = v524;
                  v525 = v592[1];
                  v608.i64[0] = v592[2];
                  v607 = v525;
                  *v592 = v368;
                  v523[1] = v459;
                  v523[2] = v604.i64[0];
                  v523[3] = v469;
                  v523[4] = v481;
                  v158 = v564;
                  v152 = v552;
                  v153 = v553;
                  v595 = v456;
                  v600.i64[0] = v361;
                  goto LABEL_345;
                }

                v617 = v596;
                v460 = v595;
                v618 = v595;
                v461 = v590.i64[0];
                v619 = v590.i64[0];
                v361 = v600.i64[0];
                v620 = v600.i64[0];
                v462 = v574;
                v463 = v575;
                v621 = v574;
                v622 = v575;
                v464 = v576;
                v465 = v577;
                v623 = v576;
                v624 = v577;
                swift_unknownObjectRetain();
                v466 = specialized Set.contains(_:)(0, 0, v585);
                v467 = v464;
                v368 = v462;
                v468 = v467;
                if (v466)
                {
                  v668 = v453;
                  v669 = v597;
                  v670 = v598;
                  v671 = v599;
                  v672 = v601.i64[0];
                  v673 = v602;
                  BigString.UTF8View.subscript.getter();
                  *&v612 = v596;
                  *(&v612 + 1) = v460;
                  v613.i64[0] = v461;
                  v613.i64[1] = v361;
                  v614.i64[0] = v596;
                  v614.i64[1] = v460;
                  *&v615 = v461;
                  *(&v615 + 1) = v361;
                  specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v612, &v625);
                  result = outlined destroy of BigSubstring.UTF8View(&v649);
                  v368 = v574;
                  v463 = v575;
                  v468 = v576;
                  v465 = v577;
                  if (v628.i64[0] != 2)
                  {
                    v368 = *v627;
                    if (v609 > *v627 >> 10)
                    {
                      goto LABEL_394;
                    }

                    v463 = *&v627[8];
                    v468 = *&v627[16];
                    v465 = v628.i64[0];
                    v460 = v595;
                    v461 = v590.i64[0];
                    v361 = v600.i64[0];
                  }
                }

                v660 = v596;
                v661 = v460;
                v662 = v461;
                v663 = v361;
                v664 = v368;
                v594 = v463;
                v665 = v463;
                v604.i64[0] = v468;
                v666 = v468;
                v469 = v465;
                v667 = v465;
                v470 = v585;
                if (specialized Collection<>._containsScalarConstraint.getter(v585))
                {
                  v471 = specialized Sequence.compactMap<A>(_:)(v470);

                  v654 = v453;
                  v655 = v597;
                  v656 = v598;
                  v657 = v599;
                  v658 = v601.i64[0];
                  v659 = v602;
                  BigString.UnicodeScalarView.subscript.getter();
                  v472 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v471);
                  v603 = v473;
                  v475 = v474;
                  v477 = v476;

                  swift_unknownObjectRelease();
                  result = outlined destroy of BigSubstring.UnicodeScalarView(&v625);
                  v318 = v583;
                  if (v477 != 2)
                  {
                    if (v609 > v472 >> 10)
                    {
                      goto LABEL_395;
                    }

                    v368 = v472;
                    v594 = v603;
                    v604.i64[0] = v475;
                    v469 = v477;
                  }
                }

                else
                {

                  swift_unknownObjectRelease();
                  v318 = v583;
                }

                if (v579 != v368 >> 10)
                {
                  v481 = v587[2];
                  v136 = v566;
                  v459 = v594;
                  v456 = v595;
                  goto LABEL_343;
                }

                v478 = v610.i64[0];
                RangeSet.ranges.getter();
                v479 = v611;
                v480 = RangeSet.Ranges.count.getter();
                result = (v607)(v478, v479);
                if (__OFSUB__(v480, 1))
                {
                  goto LABEL_390;
                }

                if (v350 == v480 - 1)
                {
                  v481 = v587[2];
                  v368 = v574;
                  goto LABEL_329;
                }

LABEL_341:
                v521 = v610.i64[0];
                RangeSet.ranges.getter();
                v522 = v611;
                RangeSet.Ranges.subscript.getter();
                (v607)(v521, v522);
                v459 = *(&v634 + 1);
                v368 = v634;
                v469 = v635.u64[1];
                v604.i64[0] = v635.i64[0];
                v481 = v587[2];
              }

              v136 = v566;
              v456 = v595;
              v361 = v600.i64[0];
              goto LABEL_343;
            }

            v349 = v350 + 1;
            v350 = v348;
          }

          v348 = v350;
          if (v349 >= v350)
          {
            goto LABEL_351;
          }
        }
      }
    }
  }

  v108 = 0;
  v109 = vdup_n_s32(v603);
  v110.i64[0] = v109.u32[0];
  v110.i64[1] = v109.u32[1];
  v111 = vcltzq_s64(vshlq_n_s64(v110, 0x3FuLL));
  v553 = vbslq_s8(v111, v588, v589);
  v552 = vbslq_s8(v111, v604, v590);
  v112 = v610.i64[0];
  while (1)
  {
    if (__OFADD__(v108, v107))
    {
      goto LABEL_354;
    }

    v113 = (v108 + v107) / 2;
    RangeSet.ranges.getter();
    v114 = v611;
    RangeSet.Ranges.subscript.getter();
    result = (v607)(v112, v114);
    if (v609 < v625.i64[0] >> 10)
    {
      goto LABEL_27;
    }

    v115 = *v627;
    if (v609 < *v627 >> 10)
    {
      break;
    }

    v108 = v113 + 1;
    v113 = v107;
LABEL_27:
    v107 = v113;
    if (v108 >= v113)
    {
      goto LABEL_350;
    }
  }

  v554 = *v627 >> 10;
  v116 = *&v627[8];
  v117 = *&v627[16];
  v600.i64[0] = v628.i64[0];
  v118 = v569;
  v119 = *(v569 + 16);
  v595 = *&v627[8];
  v596 = *v627;
  v590.i64[0] = *&v627[16];
  if (v119 == 1)
  {
    result = specialized Set.contains(_:)(0, 1, v569);
    if ((result & 1) == 0)
    {

      v159 = *(v62 + 24);
      v160 = *(v62 + 32);
      v161 = *(v62 + 48);
      v604.i64[0] = *(v62 + 40);
      v162 = *(v62 + 56);
      v163 = *(v62 + 64);
      v164 = v117;
      v165 = v593;
      v705 = v593;
      v706 = v579;
      v166 = v116;
      v167 = v577;
      v707 = v580;
      v708 = v577;
      v709 = v115;
      v710 = v166;
      v168 = v159;
      v711 = v164;
      v712 = v600.i64[0];
      swift_unknownObjectRetain();
      v169 = specialized Set.contains(_:)(0, 0, v118);
      v594 = v160;
      v603 = v168;
      v589.i64[0] = v161;
      v587 = v163;
      v588.i64[0] = v162;
      if (v169)
      {
        *&v713 = v168;
        *(&v713 + 1) = v160;
        v170 = v604.i64[0];
        *&v714 = v604.i64[0];
        *(&v714 + 1) = v161;
        *&v715 = v162;
        *(&v715 + 1) = v163;
        BigString.UTF8View.subscript.getter();
        v697 = v165;
        v171 = v580;
        v698 = v579;
        v699 = v580;
        v700 = v167;
        v701 = v165;
        v702 = v579;
        v703 = v580;
        v704 = v167;
        specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v697, &v625);
        result = outlined destroy of BigSubstring.UTF8View(v641);
        v172 = v167;
        v173 = v171;
        v174 = v590.i64[0];
        v175 = v600.i64[0];
        if (v628.i64[0] != 2)
        {
          v596 = *v627;
          if (v609 > *v627 >> 10)
          {
            goto LABEL_396;
          }

          v595 = *&v627[8];
          v174 = *&v627[16];
          v175 = v628.i64[0];
        }
      }

      else
      {
        v172 = v167;
        v173 = v580;
        v174 = v590.i64[0];
        v170 = v604.i64[0];
        v175 = v600.i64[0];
      }

      v683 = v593;
      v684 = v579;
      v685 = v173;
      v686 = v172;
      v687 = v596;
      v688 = v595;
      v689 = v174;
      v690 = v175;
      v293 = specialized Collection<>._containsScalarConstraint.getter(v118);
      v590.i64[0] = v174;
      v600.i64[0] = v175;
      if ((v293 & 1) == 0)
      {

        swift_unknownObjectRelease();
        v542 = 0;
        goto LABEL_196;
      }

      v294 = v118 + 56;
      v295 = 1 << *(v118 + 32);
      v296 = -1;
      if (v295 < 64)
      {
        v296 = ~(-1 << v295);
      }

      v297 = v296 & *(v118 + 56);
      v298 = (v295 + 63) >> 6;

      v299 = 0;
      v542 = 0;
      v300 = MEMORY[0x1E69E7CC0];
      v301 = v594;
      v302 = v589.i64[0];
      while (v297)
      {
LABEL_156:
        v304 = __clz(__rbit64(v297));
        v297 &= v297 - 1;
        v305 = (*(v569 + 48) + ((v299 << 10) | (16 * v304)));
        v306 = v305[1];
        if (v306 >= 2)
        {
          result = specialized Collection.first.getter(*v305, v306);
          if ((result & 0x100000000) == 0)
          {
            v604.i64[0] = result;
            result = swift_isUniquelyReferenced_nonNull_native();
            v568 = v62;
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v300 + 16) + 1, 1, v300);
              v300 = result;
            }

            v308 = *(v300 + 16);
            v307 = *(v300 + 24);
            v309 = v308 + 1;
            v310 = v604.i32[0];
            if (v308 >= v307 >> 1)
            {
              v593 = v308 + 1;
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v307 > 1), v308 + 1, 1, v300);
              v309 = v593;
              v300 = result;
              v310 = v604.i32[0];
            }

            *(v300 + 16) = v309;
            *(v300 + 4 * v308 + 32) = v310;
            v62 = v568;
          }
        }
      }

      while (1)
      {
        v303 = v299 + 1;
        if (__OFADD__(v299, 1))
        {
          goto LABEL_363;
        }

        if (v303 >= v298)
        {

          v691 = v603;
          v692 = v301;
          v693 = v170;
          v694 = v302;
          v695 = v588.i64[0];
          v696 = v587;
          BigString.UnicodeScalarView.subscript.getter();
          v311 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v300);
          v313 = v312;
          v315 = v314;
          v317 = v316;

          swift_unknownObjectRelease();
          result = outlined destroy of BigSubstring.UnicodeScalarView(&v644);
          if (v317 == 2)
          {
            goto LABEL_196;
          }

          v318 = v583;
          if (v609 <= v311 >> 10)
          {
            v595 = v313;
            v596 = v311;
            v590.i64[0] = v315;
            v600.i64[0] = v317;
            goto LABEL_197;
          }

          goto LABEL_397;
        }

        v297 = *(v294 + 8 * v303);
        ++v299;
        if (v297)
        {
          v299 = v303;
          goto LABEL_156;
        }
      }
    }
  }

  v120 = v605[15];
  v51 = v582;
  if (v104 == v120)
  {
    v121 = v605[22];
    if (v605[26] == 2)
    {
      if (v121 != 2)
      {
        goto LABEL_105;
      }
    }

    else if (v121 == 2 || (v605[23] ^ v605[19]) >= 0x400)
    {
      goto LABEL_105;
    }
  }

  v544 = v605[15];
  if (v104 < v120)
  {
    v176 = *(v62 + 72);
    v177 = *(v62 + 80);
    v178 = *(v62 + 88);
    v179 = *(v62 + 96);
    swift_unknownObjectRetain();
    v180 = v555;
    v181 = v567;
    v51 = v557;
    specialized Rope.subscript.getter(v555, v567, v557, v176, v177, v178, v179);
    v573 = v182;
    v541 = v183;
    result = swift_unknownObjectRelease();
    v184 = v180;
    v185 = *(v62 + 72);
    v186 = v104 + 1;
    v542 = 0;
    v543 = (v594 + 40);
    v187 = *(v62 + 96);
    v625.i64[0] = v180;
    v625.i64[1] = v181;
    v626.i64[0] = v51;
    v568 = v62;
LABEL_51:
    if (v184 != v187)
    {
      goto LABEL_377;
    }

    v547 = v186;
    v551 = v187;
    v557 = v51;
    if (v51)
    {
      v188 = *(v51 + 24 * ((v567 >> ((4 * *(v51 + 18) + 8) & 0x3C)) & 0xF) + 24);
      swift_unknownObjectRetain();
    }

    else
    {
      swift_unknownObjectRetain();
      v188 = specialized Rope._Node.subscript.getter(v567, v185);
    }

    if (__OFADD__(v556, v188))
    {
      goto LABEL_378;
    }

    v51 = v582;
    if (v185)
    {
      v189 = ((-15 << ((4 * *(v185 + 18) + 8) & 0x3C)) - 1) & *(v185 + 18) | (*(v185 + 16) << ((4 * *(v185 + 18) + 8) & 0x3C));
    }

    else
    {
      v189 = 0;
    }

    if (v567 >= v189)
    {
      goto LABEL_379;
    }

    v540 = (v556 + v188);
    if (v557)
    {
      v190 = (4 * *(v557 + 18) + 8) & 0x3C;
      v191 = ((v567 >> v190) & 0xF) + 1;
      if (v191 < *(v557 + 16))
      {
        v546 = (v191 << v190) | ((-15 << v190) - 1) & v567;
        result = swift_unknownObjectRelease();
        goto LABEL_65;
      }
    }

    result = specialized Rope._Node.formSuccessor(of:)(&v625, v185);
    if (result)
    {
      result = swift_unknownObjectRelease();
      v546 = v625.u64[1];
LABEL_65:
      v192 = v605;
      v193 = v573;
      v194 = v626.i64[0];
      v195 = v625.i64[0];
    }

    else
    {
      v192 = v605;
      v193 = v573;
      if (v185)
      {
        v196 = *(v185 + 18);
        v197 = *(v185 + 16);
        result = swift_unknownObjectRelease();
        v194 = 0;
        v546 = ((-15 << ((4 * v196 + 8) & 0x3C)) - 1) & v196 | (v197 << ((4 * v196 + 8) & 0x3C));
      }

      else
      {
        v546 = 0;
        v194 = 0;
      }

      v195 = v551;
    }

    if (v544 < v547)
    {
      goto LABEL_110;
    }

    if (v547 == v544)
    {
      v198 = v192[22];
      if (v192[26] == 2)
      {
        if (v198 == 2)
        {
          goto LABEL_110;
        }
      }

      else if (v198 != 2 && (v192[19] ^ v192[23]) < 0x400)
      {
        goto LABEL_110;
      }
    }

    if (v195 != *(v62 + 96))
    {
      goto LABEL_382;
    }

    v555 = v195;
    v539 = v194;
    if (v194)
    {
      v199 = v194 + 24 * ((v546 >> ((4 * *(v194 + 18) + 8) & 0x3C)) & 0xF);
      v200 = *(v199 + 40);
      v587 = *(v199 + 32);

      v545 = v200;
    }

    else
    {
      v201 = *(v62 + 72);
      swift_unknownObjectRetain();
      specialized Rope._Node.subscript.getter(v546, v201);
      v587 = v202;
      v545 = v203;
      result = swift_unknownObjectRelease();
    }

    v204 = 0;
    v205 = v543;
    while (v204 < *(v594 + 2))
    {
      v604.i64[0] = v204;
      v207 = *(v205 - 1);
      v206 = *v205;
      v603 = v205;
      if (*(v193 + 16))
      {

        v208 = specialized __RawDictionaryStorage.find<A>(_:)(v207, v206);
        if (v209)
        {
          outlined init with copy of AttributedString._AttributeValue(*(v193 + 56) + 72 * v208, &v649);
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

      if (v587[2])
      {
        v210 = v62;
        v211 = v587;
        v212 = specialized __RawDictionaryStorage.find<A>(_:)(v207, v206);
        v214 = v213;

        if (v214)
        {
          outlined init with copy of AttributedString._AttributeValue(v211[7] + 72 * v212, &v644);
        }

        else
        {
          v648 = 0;
          v647 = 0u;
          v646 = 0u;
          v645 = 0u;
          v644 = 0u;
        }

        v62 = v210;
      }

      else
      {

        v648 = 0;
        v647 = 0u;
        v646 = 0u;
        v645 = 0u;
        v644 = 0u;
      }

      outlined init with copy of AttributedString._AttributeValue?(&v649, &v625);
      outlined init with copy of AttributedString._AttributeValue?(&v644, &v629);
      if (v626.i64[1])
      {
        outlined init with copy of AttributedString._AttributeValue?(&v625, v641);
        if (!v630.i64[1])
        {
          outlined destroy of TermOfAddress?(&v644, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of TermOfAddress?(&v649, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of AttributedString._AttributeValue(v641);
LABEL_107:
          outlined destroy of TermOfAddress?(&v625, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMd);
LABEL_109:

          goto LABEL_110;
        }

        v636 = v631;
        v637 = v632;
        v638 = v633;
        v634 = v629;
        v635 = v630;
        v215 = v642;
        v586 = v643;
        v585 = __swift_project_boxed_opaque_existential_1(v641, v642);
        v216 = __swift_project_boxed_opaque_existential_1(&v634, v635.i64[1]);
        v589.i64[0] = &v538;
        v217 = *(v215 - 8);
        MEMORY[0x1EEE9AC00](v216);
        v219 = &v538 - ((v218 + 15) & 0xFFFFFFFFFFFFFFF0);
        v588.i64[0] = &v538;
        v221 = MEMORY[0x1EEE9AC00](v220);
        (*(v223 + 16))(&v538 - ((v222 + 15) & 0xFFFFFFFFFFFFFFF0), v221);
        v224 = type metadata accessor for Optional();
        v225 = *(v224 - 8);
        MEMORY[0x1EEE9AC00](v224);
        v227 = &v538 - v226;
        if (!swift_dynamicCast())
        {
          outlined destroy of TermOfAddress?(&v644, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of TermOfAddress?(&v649, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          (*(v217 + 56))(v227, 1, 1, v215);
          (*(v225 + 8))(v227, v224);
          outlined destroy of AttributedString._AttributeValue(&v634);
          outlined destroy of AttributedString._AttributeValue(v641);
          outlined destroy of TermOfAddress?(&v625, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          v62 = v568;
          v51 = v582;
          goto LABEL_109;
        }

        (*(v217 + 56))(v227, 0, 1, v215);
        (*(v217 + 32))(v219, v227, v215);
        v228 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v217 + 8))(v219, v215);
        outlined destroy of TermOfAddress?(&v644, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?(&v649, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of AttributedString._AttributeValue(&v634);
        outlined destroy of AttributedString._AttributeValue(v641);
        result = outlined destroy of TermOfAddress?(&v625, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        v62 = v568;
        v51 = v582;
        v193 = v573;
        if ((v228 & 1) == 0)
        {
          goto LABEL_109;
        }
      }

      else
      {
        outlined destroy of TermOfAddress?(&v644, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?(&v649, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        if (v630.i64[1])
        {
          goto LABEL_107;
        }

        result = outlined destroy of TermOfAddress?(&v625, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      }

      v204 = v604.i64[0] + 1;
      v205 = (v603 + 16);
      if (v584 == v604.i64[0] + 1)
      {

        v185 = *(v62 + 72);
        v187 = *(v62 + 96);
        v556 = v540;
        v184 = v555;
        v625.i64[0] = v555;
        v625.i64[1] = v546;
        v51 = v539;
        v567 = v546;
        v626.i64[0] = v539;
        v186 = v547 + 1;
        if (__OFADD__(v547, 1))
        {
          __break(1u);
LABEL_105:

          v542 = 0;
          v551 = v555;
          goto LABEL_111;
        }

        goto LABEL_51;
      }
    }

    __break(1u);
LABEL_361:
    __break(1u);
LABEL_362:
    __break(1u);
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
LABEL_368:
    __break(1u);
LABEL_369:
    __break(1u);
LABEL_370:
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
  }

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
  return result;
}

Swift::Int AttributedString.Runs.subscript.getter@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>, uint64_t a7)
{
  v14 = type metadata accessor for AttributedString.Runs();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttributedString.Runs(v7, v16, type metadata accessor for AttributedString.Runs);
  v49 = v16;
  outlined init with copy of AttributedString.Runs(v16, a6, type metadata accessor for AttributedString.Runs);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_18121D6B0;
  *(v17 + 32) = (*(a4 + 24))(a1, a4);
  *(v17 + 40) = v18;
  *(v17 + 48) = (*(a5 + 24))(a2, a5);
  *(v17 + 56) = v19;
  *(v17 + 64) = (*(a7 + 24))(a3, a7);
  *(v17 + 72) = v20;
  v52 = a1;
  v53 = a2;
  v54 = a3;
  v55 = a4;
  v56 = a5;
  v57 = a7;
  v48 = type metadata accessor for AttributedString.Runs.AttributesSlice3();
  v21 = *(v48 + 68);
  v50 = a6;
  *(a6 + v21) = v17;
  v22 = *(a4 + 32);
  v51 = &v58;
  v22(a1, a4);
  (*(a5 + 32))(a2, a5);
  (*(a7 + 32))(a3, a7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOSgGMd);
  v23 = static _SetStorage.allocate(capacity:)();
  v24 = 0;
  v25 = v23 + 56;
  while (1)
  {
    v28 = &v51[2 * v24];
    v29 = *v28;
    v30 = v28[1];
    Hasher.init(_seed:)();
    if (v30 == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      if (v30)
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
    v32 = ~(-1 << *(v23 + 32));
    v33 = result & v32;
    v34 = (result & v32) >> 6;
    v35 = *(v25 + 8 * v34);
    v36 = 1 << (result & v32);
    if ((v36 & v35) == 0)
    {
      break;
    }

    while (1)
    {
      v37 = (*(v23 + 48) + 16 * v33);
      v38 = *v37;
      v39 = v37[1];
      if (v39 == 1)
      {
        if (v30 == 1)
        {
          outlined copy of AttributedString.AttributeRunBoundaries?(*v37, 1);
          v26 = v38;
          v27 = 1;
          goto LABEL_2;
        }

LABEL_14:
        outlined copy of AttributedString.AttributeRunBoundaries?(*v37, v37[1]);
        outlined copy of AttributedString.AttributeRunBoundaries?(v29, v30);
        outlined consume of AttributedString.AttributeRunBoundaries?(v38, v39);
        v40 = v29;
        v41 = v30;
LABEL_15:
        result = outlined consume of AttributedString.AttributeRunBoundaries?(v40, v41);
        goto LABEL_16;
      }

      if (v30 == 1)
      {
        goto LABEL_14;
      }

      if (!v39)
      {
        break;
      }

      if (!v30)
      {
        outlined copy of AttributedString.AttributeRunBoundaries?(*v37, v37[1]);
        outlined copy of AttributedString.AttributeRunBoundaries?(v29, 0);
        outlined copy of AttributedString.AttributeRunBoundaries?(v38, v39);

        v40 = v38;
        v41 = v39;
        goto LABEL_15;
      }

      if (v38 == v29 && v39 == v30)
      {
        outlined copy of AttributedString.AttributeRunBoundaries?(v29, v30);
        outlined copy of AttributedString.AttributeRunBoundaries?(v29, v30);

LABEL_33:
        v26 = v29;
        v27 = v30;
        goto LABEL_2;
      }

      v43 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined copy of AttributedString.AttributeRunBoundaries?(v38, v39);
      outlined copy of AttributedString.AttributeRunBoundaries?(v29, v30);
      outlined copy of AttributedString.AttributeRunBoundaries?(v38, v39);

      if (v43)
      {
        outlined consume of AttributedString.AttributeRunBoundaries?(v29, v30);
        v29 = v38;
        v30 = v39;
        goto LABEL_33;
      }

      result = outlined consume of AttributedString.AttributeRunBoundaries?(v38, v39);
LABEL_16:
      v33 = (v33 + 1) & v32;
      v34 = v33 >> 6;
      v35 = *(v25 + 8 * (v33 >> 6));
      v36 = 1 << v33;
      if ((v35 & (1 << v33)) == 0)
      {
        goto LABEL_29;
      }
    }

    outlined copy of AttributedString.AttributeRunBoundaries?(*v37, 0);
    if (v30)
    {
      outlined copy of AttributedString.AttributeRunBoundaries?(v29, v30);

      v40 = v38;
      v41 = 0;
      goto LABEL_15;
    }

    swift_bridgeObjectRelease_n();
    v26 = v38;
    v27 = 0;
LABEL_2:
    outlined consume of AttributedString.AttributeRunBoundaries?(v26, v27);
LABEL_3:
    if (++v24 == 3)
    {
      outlined destroy of AttributedString.Runs(v49, type metadata accessor for AttributedString.Runs);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV22AttributeRunBoundariesOSgMd);
      result = swift_arrayDestroy();
      *(v50 + *(v48 + 72)) = v23;
      return result;
    }
  }

LABEL_29:
  *(v25 + 8 * v34) = v35 | v36;
  v44 = (*(v23 + 48) + 16 * v33);
  *v44 = v29;
  v44[1] = v30;
  v45 = *(v23 + 16);
  v46 = __OFADD__(v45, 1);
  v47 = v45 + 1;
  if (!v46)
  {
    *(v23 + 16) = v47;
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

uint64_t AttributedString.Runs.AttributesSlice3.makeIterator()@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 1);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    v15[0] = *(v7 + 72);
    v12 = *(*v7 + 16);
    (*(v4 + 8))(v7, a1);
    v13 = a1[2];
    v15[1] = a1[1];
    v15[2] = v13;
    v15[3] = a1[3];
    result = type metadata accessor for AttributedString.Runs.AttributesSlice3.Iterator();
    v14 = a2 + *(result + 68);
    *v14 = v15[0];
    *(v14 + 16) = v11;
    *(v14 + 24) = v10;
    *(v14 + 32) = v12;
  }

  return result;
}

uint64_t AttributedString.Runs.AttributesSlice3.Iterator.next()@<X0>(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  v3 = v2;
  v543 = a2;
  v5 = *(a1 + 32);
  v6 = &protocol requirements base descriptor for AttributedStringKey;
  v553 = *(a1 + 56);
  v552 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v541 = type metadata accessor for Optional();
  v512 = *(v541 - 8);
  MEMORY[0x1EEE9AC00](v541);
  v514 = &v484 - v7;
  v8 = *(a1 + 24);
  v554 = *(a1 + 48);
  v555 = v8;
  v525 = swift_getAssociatedTypeWitness();
  v540.i64[1] = type metadata accessor for Optional();
  v511 = *(v540.i64[1] - 8);
  MEMORY[0x1EEE9AC00](v540.i64[1]);
  v527 = &v484 - v9;
  v10 = *(a1 + 40);
  v11 = *(a1 + 16);
  v526 = swift_getAssociatedTypeWitness();
  v540.i64[0] = type metadata accessor for Optional();
  v510 = *(v540.i64[0] - 8);
  MEMORY[0x1EEE9AC00](v540.i64[0]);
  v528 = &v484 - v12;
  v567.i64[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v562.i64[0] = *(v567.i64[0] - 8);
  MEMORY[0x1EEE9AC00](v567.i64[0]);
  *&v566 = &v484 - v13;
  v545 = type metadata accessor for AttributedString.Runs();
  MEMORY[0x1EEE9AC00](v545);
  v564 = (&v484 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v532 = (&v484 - v16);
  MEMORY[0x1EEE9AC00](v17);
  v560 = (&v484 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v484 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v484 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v559.i64[0] = &v484 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  *(&v519 + 1) = &v484 - v28;
  MEMORY[0x1EEE9AC00](v29);
  *&v519 = &v484 - v30;
  MEMORY[0x1EEE9AC00](v31);
  *(&v518 + 1) = &v484 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v548.i64[0] = &v484 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v547.i64[0] = &v484 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v546 = &v484 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v558 = &v484 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v563 = &v484 - v42;
  v44 = MEMORY[0x1EEE9AC00](v43);
  v46 = &v484 - v45;
  v542 = (v3 + *(a1 + 68));
  v47 = *v542;
  v49 = *(v48 + 16);
  v550 = v3;
  v551 = a1;
  v50 = a1;
  v51 = v49;
  v557 = (v48 + 16);
  (v49)(&v484 - v45, v3, v50, v44);
  if (*(v46 + 208) == 2)
  {
    goto LABEL_405;
  }

  v52 = *(v46 + 184);
  v523 = v11;
  v53.i64[0] = v11;
  v53.i64[1] = v555;
  v54.i64[0] = v552;
  v54.i64[1] = v10;
  v573 = v53;
  v574 = v54;
  *v575 = v554;
  *&v575[8] = v553;
  v55 = type metadata accessor for AttributedString.Runs.AttributesSlice3();
  v56 = *(v55 - 8);
  v57 = *(v56 + 8);
  v58 = v46;
  v59 = v56 + 8;
  v57(v58, v55);
  if (v47 >> 10 == v52 >> 10)
  {
    v573 = v540;
    v574.i64[0] = v541;
    v574.i64[1] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSny10Foundation16AttributedStringV5IndexVGMd);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    return (*(*(TupleTypeMetadata - 8) + 56))(v543, 1, 1, TupleTypeMetadata);
  }

  v556 = v47;
  v565 = v47 >> 10;
  v509 = v10;
  v62 = v563;
  v10 = v550;
  v63 = v551;
  v51(v563, v550, v551);
  outlined init with copy of AttributedString.Runs(v62, v24, type metadata accessor for AttributedString.Runs);
  v533 = v59;
  v534 = v55;
  v57(v62, v55);
  v46 = v57;
  v64 = v545;
  LODWORD(v62) = v24[*(v545 + 28)];
  outlined destroy of AttributedString.Runs(v24, type metadata accessor for AttributedString.Runs);
  v562.i64[0] += 8;
  v561 = v51;
  v517 = v57;
  if (v62 != 1)
  {
    v75 = v559.i64[0];
    v51(v559.i64[0], v10, v63);
    outlined init with copy of AttributedString.Runs(v75, v564, type metadata accessor for AttributedString.Runs);
    v57(v75, v534);
    v76 = *(v542 + 2);
    v560 = *(v542 + 1);
    v559.i64[0] = v76;
    v558 = *(v542 + 3);
    v46 = *(v64 + 24);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
    v77 = v566;
    RangeSet.ranges.getter();
    v78 = v567.i64[0];
    v79 = RangeSet.Ranges.count.getter();
    v10 = *v562.i64[0];
    (*v562.i64[0])(v77, v78);
    if (v79 >= 1)
    {
      v80 = 0;
      do
      {
        if (__OFADD__(v80, v79))
        {
          goto LABEL_357;
        }

        v81 = (v80 + v79) / 2;
        v82 = v566;
        RangeSet.ranges.getter();
        v83 = v567.i64[0];
        RangeSet.Ranges.subscript.getter();
        v84 = v82;
        v85 = v561;
        (v10)(v84, v83);
        v86 = v573.i64[0] >> 10;
        if (v565 >= v573.i64[0] >> 10)
        {
          v87 = *v575;
          if (v565 < *v575 >> 10)
          {
            v562 = v573;
            v548 = v574;
            v123 = *v564;
            AttributedString.Guts.findRun(at:)(v556, v558, v573.i64);
            *&v566 = v573.i64[1];
            v124 = v573.i64[0];
            v565 = v574.i64[0];
            v547 = *&v575[24];
            v567 = *&v575[8];
            v125 = *(v123 + 72);
            v126 = *(v123 + 80);
            v21 = *(v123 + 88);
            v46 = *(v123 + 96);
            swift_unknownObjectRetain();
            v6 = specialized Rope.subscript.getter(v124, v566, v565, v125, v126, v21, v46);
            v549 = v127;
            v529 = v128;
            swift_unknownObjectRelease();
            v10 = v86 < v567.i64[0] >> 10;
            v129 = v6 + (v567.i64[0] >> 11);
            if (__OFADD__(v6, v567.i64[0] >> 11))
            {
              goto LABEL_371;
            }

            if ((v87 >> 11) < v129)
            {
              v129 = v87 >> 11;
            }

            v130 = *(v123 + 40);
            v573 = *(v123 + 24);
            v574 = v130;
            *v575 = *(v123 + 56);
            v46 = v129 - (v556 >> 11);
            v131 = v543;
            v132 = v555;
            v21 = v526;
            if (__OFSUB__(v129, v556 >> 11))
            {
              goto LABEL_373;
            }

            swift_unknownObjectRetain();
            v133 = BigString.UTF8View.index(_:offsetBy:)();
            v506 = v134;
            v507 = v133;
            v504 = v136;
            v505 = v135;
            swift_unknownObjectRelease();
            v508 = v123;

            outlined destroy of AttributedString.Runs(v564, type metadata accessor for AttributedString.Runs);
            v6 = v563;
            v85(v563, v550, v551);
            v137 = v542;
            v138 = *(v542 + 4);
            v139 = v542[1];
            v595 = *v542;
            v596 = v139;
            *&v597 = v138;

            v140 = v534;
            AttributedString.Runs.AttributesSlice3.index(after:)(&v595, v534, &v600);
            (v517)(v6, v140);
            v141 = *v137;
            if (v600 >> 10 < *v137 >> 10)
            {
              goto LABEL_375;
            }

            v142 = v137;
            v143 = vdup_n_s32(v10);
            v144.i64[0] = v143.u32[0];
            v144.i64[1] = v143.u32[1];
            v145 = vcltzq_s64(vshlq_n_s64(v144, 0x3FuLL));
            v503 = vbslq_s8(v145, v547, v548);
            v502 = vbslq_s8(v145, v567, v562);
            v146 = *(&v600 + 1);
            v148 = *(&v601 + 1);
            v147 = v601;
            v149 = v602;
            v150 = *(v142 + 3);
            v566 = *(v142 + 1);
            v567 = v150;
            v546 = v600;
            *v142 = v600;
            v142[1] = v146;
            v544.i64[0] = v146;
            v539.i64[0] = v147;
            *(v142 + 1) = __PAIR128__(v148, v147);
            v535 = v149;
            v142[4] = v149;
            v46 = v527;
            v10 = v528;
            goto LABEL_328;
          }

          v80 = v81 + 1;
          v81 = v79;
        }

        v79 = v81;
      }

      while (v80 < v81);
    }

LABEL_353:
    __break(1u);
    goto LABEL_354;
  }

  v65 = v558;
  v51(v558, v10, v63);
  outlined init with copy of AttributedString.Runs(v65, v21, type metadata accessor for AttributedString.Runs);
  v57(v65, v534);
  v66 = *(v542 + 2);
  v520 = *(v542 + 1);
  v521 = v66;
  v522 = *(v542 + 3);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v68 = v566;
  v563 = v67;
  RangeSet.ranges.getter();
  v69 = v567.i64[0];
  v70 = RangeSet.Ranges.count.getter();
  v564 = *v562.i64[0];
  (v564)(v68, v69);
  if (v70 < 1)
  {
LABEL_352:
    __break(1u);
    goto LABEL_353;
  }

  v10 = 0;
  v71 = v566;
  while (1)
  {
    if (__OFADD__(v10, v70))
    {
      goto LABEL_356;
    }

    v72 = (v10 + v70) / 2;
    RangeSet.ranges.getter();
    v73 = v567.i64[0];
    RangeSet.Ranges.subscript.getter();
    (v564)(v71, v73);
    v74 = v573.i64[0] >> 10;
    if (v565 < v573.i64[0] >> 10)
    {
      goto LABEL_7;
    }

    v10 = *v575;
    if (v565 < *v575 >> 10)
    {
      break;
    }

    v10 = v72 + 1;
    v72 = v70;
LABEL_7:
    v70 = v72;
    if (v10 >= v72)
    {
      goto LABEL_352;
    }
  }

  v544 = v573;
  v539 = v574;
  v6 = *v21;
  AttributedString.Guts.findRun(at:)(v556, v522, v573.i64);
  v549 = v573.i64[1];
  v558 = v573.i64[0];
  v88 = v574.i64[0];
  v538 = *&v575[24];
  v559 = *&v575[8];
  v89 = *(v6 + 72);
  v90 = *(v6 + 80);
  v46 = *(v6 + 88);
  v91 = *(v6 + 96);
  swift_unknownObjectRetain();
  v92 = specialized Rope.subscript.getter(v558, v549, v88, v89, v90, v46, v91);
  v94 = v93;
  v529 = v95;
  swift_unknownObjectRelease();
  v96 = v92 + (v559.i64[0] >> 11);
  if (__OFADD__(v92, v559.i64[0] >> 11))
  {
    goto LABEL_370;
  }

  LODWORD(v558) = v74 < v559.i64[0] >> 10;
  if ((v10 >> 11) < v96)
  {
    v96 = v10 >> 11;
  }

  v97 = *(v6 + 40);
  v675 = *(v6 + 24);
  v676 = v97;
  v677 = *(v6 + 56);
  v46 = v551;
  v10 = v550;
  if (__OFSUB__(v96, v556 >> 11))
  {
    goto LABEL_372;
  }

  swift_unknownObjectRetain();
  v98 = BigString.UTF8View.index(_:offsetBy:)();
  v506 = v99;
  v507 = v98;
  v504 = v101;
  v505 = v100;
  swift_unknownObjectRelease();
  v508 = v6;

  outlined destroy of AttributedString.Runs(v21, type metadata accessor for AttributedString.Runs);
  v102 = v546;
  v6 = v557;
  v103 = v561;
  v561(v546, v10, v46);
  outlined init with copy of AttributedString.Runs(v102, v560, type metadata accessor for AttributedString.Runs);
  v549 = v94;

  v104 = v102;
  v105 = v534;
  v106 = v517;
  (v517)(v104, v534);
  v21 = v10;
  v107 = v547.i64[0];
  v103(v547.i64[0], v21, v46);
  v108 = *(v107 + *(v105 + 68));

  v106(v107, v105);
  v10 = v548.i64[0];
  v103(v548.i64[0], v21, v46);
  v516 = *(v10 + *(v105 + 72));

  v106(v10, v105);
  v547.i64[0] = v108;
  v530 = *(v108 + 16);
  if (!v530)
  {
    goto LABEL_374;
  }

  v515 = *v560;
  AttributedString.Guts.findRun(at:)(v556, v522, v573.i64);
  v513 = v573.u64[1];
  v10 = v574.u64[1];
  v501 = v574.i64[0];
  v499 = v573.i64[0];
  v500 = *v575;
  v495 = *&v575[16];
  v496 = *&v575[8];
  v493 = *&v575[32];
  v494 = *&v575[24];
  v109 = v566;
  RangeSet.ranges.getter();
  v110 = v567.i64[0];
  v111 = RangeSet.Ranges.count.getter();
  v21 = v562.i64[0];
  (v564)(v109, v110);
  if (v111 >= 1)
  {
    v46 = 0;
    v112 = vdup_n_s32(v558);
    v113.i64[0] = v112.u32[0];
    v113.i64[1] = v112.u32[1];
    v114 = vcltzq_s64(vshlq_n_s64(v113, 0x3FuLL));
    v503 = vbslq_s8(v114, v538, v539);
    v502 = vbslq_s8(v114, v559, v544);
    do
    {
      if (__OFADD__(v46, v111))
      {
        goto LABEL_358;
      }

      v115 = (v46 + v111) / 2;
      v116 = v566;
      RangeSet.ranges.getter();
      v117 = v567.i64[0];
      RangeSet.Ranges.subscript.getter();
      (v564)(v116, v117);
      if (v565 >= v573.i64[0] >> 10)
      {
        v6 = *v575;
        if (v565 < *v575 >> 10)
        {
          v498 = (*v575 >> 10);
          v544.i64[0] = *&v575[8];
          v539.i64[0] = *&v575[16];
          v118 = *&v575[24];
          v119 = v516;
          v120 = *(v516 + 16);
          v546 = *v575;
          v548.i64[0] = *&v575[24];
          if (v120 == 1 && (specialized Set.contains(_:)(0, 1, v516) & 1) == 0)
          {

            v151 = v515[3];
            v152 = v515[4];
            v153 = v515[6];
            v559.i64[0] = v515[5];
            v154 = v515[8];
            v558 = v515[7];
            v155 = v556;
            v156 = v118;
            v157 = v520;
            v10 = v521;
            v664 = v556;
            v665 = v520;
            v158 = v522;
            v666 = v521;
            v667 = v522;
            v668 = v6;
            v159 = v151;
            v669 = v544.i64[0];
            v670 = v539.i64[0];
            v671 = v156;
            swift_unknownObjectRetain();
            v160 = specialized Set.contains(_:)(0, 0, v119);
            v161 = v532;
            v537 = v152;
            v538.i64[0] = v153;
            v547.i64[0] = v159;
            v536 = v154;
            if (v160)
            {
              *&v672 = v159;
              *(&v672 + 1) = v152;
              v46 = v559.i64[0];
              *&v673 = v559.i64[0];
              *(&v673 + 1) = v153;
              v162 = v558;
              *&v674 = v558;
              *(&v674 + 1) = v154;
              BigString.UTF8View.subscript.getter();
              v656 = v155;
              v657 = v157;
              v658 = v10;
              v659 = v158;
              v660 = v155;
              v661 = v157;
              v662 = v10;
              v663 = v158;
              specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v656, &v573);
              outlined destroy of BigSubstring.UTF8View(v592);
              v6 = v548.i64[0];
              v163 = v544.i64[0];
              v21 = v539.i64[0];
              if (*&v575[24] != 2)
              {
                v546 = *v575;
                if (v565 > *v575 >> 10)
                {
                  goto LABEL_398;
                }

                v163 = *&v575[8];
                v21 = *&v575[16];
                v6 = *&v575[24];
              }
            }

            else
            {
              v46 = v559.i64[0];
              v162 = v558;
              v6 = v548.i64[0];
              v163 = v544.i64[0];
              v21 = v539.i64[0];
            }

            v642 = v556;
            v643 = v520;
            v644 = v10;
            v645 = v158;
            v646 = v546;
            v647 = v163;
            v648 = v21;
            v649 = v6;
            v262 = v516;
            v263 = specialized Collection<>._containsScalarConstraint.getter(v516);
            v539.i64[0] = v21;
            v548.i64[0] = v6;
            if ((v263 & 1) == 0)
            {
              v544.i64[0] = v163;

              swift_unknownObjectRelease();
              v489 = 0;
              goto LABEL_197;
            }

            v264 = v163;
            v6 = v262 + 56;
            v265 = 1 << *(v262 + 32);
            v266 = -1;
            if (v265 < 64)
            {
              v266 = ~(-1 << v265);
            }

            v267 = v266 & *(v262 + 56);
            v268 = (v265 + 63) >> 6;

            v10 = 0;
            v489 = 0;
            v269 = MEMORY[0x1E69E7CC0];
            v21 = v538.i64[0];
            while (1)
            {
              if (!v267)
              {
                do
                {
                  v270 = v10 + 1;
                  if (__OFADD__(v10, 1))
                  {
                    goto LABEL_367;
                  }

                  if (v270 >= v268)
                  {

                    v650 = v547.i64[0];
                    v651 = v537;
                    v652 = v46;
                    v653 = v21;
                    v654 = v162;
                    v655 = v536;
                    BigString.UnicodeScalarView.subscript.getter();
                    v6 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v269);
                    v283 = v282;
                    v285 = v284;
                    v46 = v286;

                    swift_unknownObjectRelease();
                    outlined destroy of BigSubstring.UnicodeScalarView(&v595);
                    if (v46 == 2)
                    {
                      v161 = v532;
                      v21 = v562.i64[0];
                      v544.i64[0] = v264;
                      goto LABEL_198;
                    }

                    v21 = v562.i64[0];
                    v251 = v515;
                    if (v565 <= v6 >> 10)
                    {
                      v546 = v6;
                      v544.i64[0] = v283;
                      v539.i64[0] = v285;
                      v548.i64[0] = v46;
                      v161 = v532;
                      goto LABEL_194;
                    }

                    goto LABEL_399;
                  }

                  v267 = *(v6 + 8 * v270);
                  ++v10;
                }

                while (!v267);
                v10 = v270;
              }

              v271 = __clz(__rbit64(v267));
              v267 &= v267 - 1;
              v272 = (*(v516 + 48) + ((v10 << 10) | (16 * v271)));
              v273 = v272[1];
              if (v273 >= 2)
              {
                v274 = specialized Collection.first.getter(*v272, v273);
                if ((v274 & 0x100000000) == 0)
                {
                  v559.i64[0] = v274;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v269 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v269 + 2) + 1, 1, v269);
                  }

                  v276 = *(v269 + 2);
                  v275 = *(v269 + 3);
                  v277 = v276 + 1;
                  v278 = v559.i32[0];
                  if (v276 >= v275 >> 1)
                  {
                    v558 = v276 + 1;
                    v279 = v269;
                    v280 = v276;
                    v281 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v275 > 1), v276 + 1, 1, v279);
                    v277 = v558;
                    v276 = v280;
                    v269 = v281;
                    v278 = v559.i32[0];
                  }

                  *(v269 + 2) = v277;
                  *&v269[4 * v276 + 32] = v278;
                }
              }
            }
          }

          v121 = v560[15];
          if (v10 == v121)
          {
            v122 = v560[22];
            if (v560[26] == 2)
            {
              if (v122 != 2)
              {
                goto LABEL_104;
              }
            }

            else if (v122 == 2 || (v560[23] ^ v560[19]) >= 1024)
            {
              goto LABEL_104;
            }
          }

          v488 = v560[15];
          if (v10 >= v121)
          {
            goto LABEL_389;
          }

          v164 = v515[9];
          v165 = v515[10];
          v166 = v515[11];
          v167 = v515[12];
          swift_unknownObjectRetain();
          v168 = v499;
          v46 = v513;
          v169 = v501;
          specialized Rope.subscript.getter(v499, v513, v501, v164, v165, v166, v167);
          *&v518 = v170;
          v486 = v171;
          swift_unknownObjectRelease();
          v172 = v168;
          v489 = 0;
          v6 = v515[9];
          v173 = v10 + 1;
          v10 = &v573;
          v487 = v547.i64[0] + 40;
          v174 = v515[12];
          v573.i64[0] = v168;
          v573.i64[1] = v46;
          v574.i64[0] = v169;
          while (2)
          {
            if (v172 != v174)
            {
              goto LABEL_380;
            }

            v492 = v173;
            v497 = v174;
            v501 = v169;
            if (v169)
            {
              v175 = v169 + 24 * ((v513 >> ((4 * *(v169 + 18) + 8) & 0x3C)) & 0xF);
              v176 = *(v175 + 24);
              v46 = *(v175 + 40);
              swift_unknownObjectRetain();
            }

            else
            {
              swift_unknownObjectRetain();
              v176 = specialized Rope._Node.subscript.getter(v513, v6);
              v46 = v177;
            }

            if (__OFADD__(v500, v176))
            {
              goto LABEL_381;
            }

            v46 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMR;
            if (v6)
            {
              v178 = ((-15 << ((4 * *(v6 + 18) + 8) & 0x3C)) - 1) & *(v6 + 18) | (*(v6 + 16) << ((4 * *(v6 + 18) + 8) & 0x3C));
            }

            else
            {
              v178 = 0;
            }

            if (v513 >= v178)
            {
              goto LABEL_382;
            }

            v485 = v500 + v176;
            if (v501)
            {
              v179 = (4 * *(v501 + 18) + 8) & 0x3C;
              v180 = ((v513 >> v179) & 0xF) + 1;
              if (v180 < *(v501 + 16))
              {
                v491 = (v180 << v179) | ((-15 << v179) - 1) & v513;
                swift_unknownObjectRelease();
                goto LABEL_65;
              }
            }

            if (specialized Rope._Node.formSuccessor(of:)(&v573, v6))
            {
              swift_unknownObjectRelease();
              v491 = v573.u64[1];
LABEL_65:
              v181 = v518;
              v182 = v574.i64[0];
              v183 = v573.i64[0];
            }

            else
            {
              v181 = v518;
              if (v6)
              {
                v184 = *(v6 + 18);
                v185 = *(v6 + 16);
                swift_unknownObjectRelease();
                v182 = 0;
                v491 = ((-15 << ((4 * v184 + 8) & 0x3C)) - 1) & v184 | (v185 << ((4 * v184 + 8) & 0x3C));
              }

              else
              {
                v491 = 0;
                v182 = 0;
              }

              v183 = v497;
            }

            if (v488 < v492)
            {
              goto LABEL_109;
            }

            if (v492 == v488)
            {
              v186 = v560[22];
              if (v560[26] == 2)
              {
                if (v186 == 2)
                {
                  goto LABEL_109;
                }
              }

              else if (v186 != 2 && (v560[19] ^ v560[23]) < 1024)
              {
                goto LABEL_109;
              }
            }

            if (v183 != v515[12])
            {
              goto LABEL_385;
            }

            v499 = v183;
            v484 = v182;
            if (v182)
            {
              v187 = v182 + 24 * ((v491 >> ((4 * *(v182 + 18) + 8) & 0x3C)) & 0xF);
              v188 = *(v187 + 32);
              v6 = *(v187 + 40);

              v490 = v6;
            }

            else
            {
              v6 = v515[9];
              swift_unknownObjectRetain();
              specialized Rope._Node.subscript.getter(v491, v6);
              v188 = v189;
              v490 = v190;
              swift_unknownObjectRelease();
            }

            v191 = 0;
            v192 = v487;
            v531 = v188;
LABEL_85:
            if (v191 >= *(v547.i64[0] + 16))
            {
              __break(1u);
LABEL_365:
              __break(1u);
LABEL_366:
              __break(1u);
LABEL_367:
              __break(1u);
LABEL_368:
              __break(1u);
LABEL_369:
              __break(1u);
LABEL_370:
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
              goto LABEL_403;
            }

            v559.i64[0] = v191;
            v194 = *(v192 - 1);
            v193 = *v192;
            v558 = v192;
            if (*(v181 + 16))
            {

              v6 = v181;
              v195 = specialized __RawDictionaryStorage.find<A>(_:)(v194, v193);
              if (v196)
              {
                outlined init with copy of AttributedString._AttributeValue(*(v181 + 56) + 72 * v195, &v600);
                if (!*(v188 + 16))
                {
LABEL_94:

LABEL_95:
                  v599 = 0;
                  v598 = 0u;
                  v597 = 0u;
                  v596 = 0u;
                  v595 = 0u;
                  goto LABEL_96;
                }
              }

              else
              {
                v604 = 0;
                v603 = 0u;
                v602 = 0u;
                v601 = 0u;
                v600 = 0u;
                if (!*(v188 + 16))
                {
                  goto LABEL_94;
                }
              }
            }

            else
            {
              v604 = 0;
              v603 = 0u;
              v602 = 0u;
              v601 = 0u;
              v600 = 0u;

              if (!*(v188 + 16))
              {
                goto LABEL_94;
              }
            }

            v6 = specialized __RawDictionaryStorage.find<A>(_:)(v194, v193);
            v198 = v197;

            if ((v198 & 1) == 0)
            {
              goto LABEL_95;
            }

            outlined init with copy of AttributedString._AttributeValue(*(v188 + 56) + 72 * v6, &v595);
LABEL_96:
            outlined init with copy of AttributedString._AttributeValue?(&v600, &v573);
            outlined init with copy of AttributedString._AttributeValue?(&v595, &v576);
            if (v574.i64[1])
            {
              outlined init with copy of AttributedString._AttributeValue?(&v573, v592);
              if (!v577.i64[1])
              {
                outlined destroy of TermOfAddress?(&v595, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                outlined destroy of TermOfAddress?(&v600, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                outlined destroy of AttributedString._AttributeValue(v592);
LABEL_106:
                outlined destroy of TermOfAddress?(&v573, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMd);
LABEL_108:

                goto LABEL_109;
              }

              v587 = v578;
              v588 = v579;
              v589 = v580;
              v586 = v577;
              v585 = v576;
              v6 = v593;
              v536 = v594;
              v535 = __swift_project_boxed_opaque_existential_1(v592, v593);
              v46 = v586.i64[1];
              v199 = __swift_project_boxed_opaque_existential_1(&v585, v586.i64[1]);
              v538.i64[0] = &v484;
              v200 = *(v6 - 8);
              MEMORY[0x1EEE9AC00](v199);
              v202 = &v484 - ((v201 + 15) & 0xFFFFFFFFFFFFFFF0);
              v537 = &v484;
              v204 = MEMORY[0x1EEE9AC00](v203);
              (*(v206 + 16))(&v484 - ((v205 + 15) & 0xFFFFFFFFFFFFFFF0), v204);
              v207 = type metadata accessor for Optional();
              v10 = &v484;
              v208 = *(v207 - 8);
              MEMORY[0x1EEE9AC00](v207);
              v210 = &v484 - v209;
              if (!swift_dynamicCast())
              {
                outlined destroy of TermOfAddress?(&v595, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                outlined destroy of TermOfAddress?(&v600, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                (*(v200 + 56))(v210, 1, 1, v6);
                (*(v208 + 8))(v210, v207);
                outlined destroy of AttributedString._AttributeValue(&v585);
                outlined destroy of AttributedString._AttributeValue(v592);
                outlined destroy of TermOfAddress?(&v573, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                v21 = v562.i64[0];
                goto LABEL_108;
              }

              (*(v200 + 56))(v210, 0, 1, v6);
              (*(v200 + 32))(v202, v210, v6);
              v211 = dispatch thunk of static Equatable.== infix(_:_:)();
              (*(v200 + 8))(v202, v6);
              v46 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMR;
              outlined destroy of TermOfAddress?(&v595, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
              outlined destroy of TermOfAddress?(&v600, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
              outlined destroy of AttributedString._AttributeValue(&v585);
              outlined destroy of AttributedString._AttributeValue(v592);
              outlined destroy of TermOfAddress?(&v573, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
              v21 = v562.i64[0];
              v181 = v518;
              v10 = &v573;
              if ((v211 & 1) == 0)
              {
                goto LABEL_108;
              }
            }

            else
            {
              outlined destroy of TermOfAddress?(&v595, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
              outlined destroy of TermOfAddress?(&v600, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
              if (v577.i64[1])
              {
                goto LABEL_106;
              }

              outlined destroy of TermOfAddress?(&v573, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
            }

            v191 = v559.i64[0] + 1;
            v192 = (v558 + 16);
            v188 = v531;
            if (v530 == v559.i64[0] + 1)
            {

              v6 = v515[9];
              v174 = v515[12];
              v500 = v485;
              v172 = v499;
              v573.i64[0] = v499;
              v573.i64[1] = v491;
              v169 = v484;
              v513 = v491;
              v574.i64[0] = v484;
              v173 = v492 + 1;
              if (__OFADD__(v492, 1))
              {
                __break(1u);
LABEL_104:

                v489 = 0;
                v497 = v499;
                goto LABEL_110;
              }

              continue;
            }

            goto LABEL_85;
          }
        }

        v46 = v115 + 1;
        v115 = v111;
      }

      v111 = v115;
    }

    while (v46 < v115);
  }

LABEL_354:
  __break(1u);
  while (2)
  {
    while (2)
    {
      __break(1u);
LABEL_356:
      __break(1u);
LABEL_357:
      __break(1u);
LABEL_358:
      __break(1u);
LABEL_359:
      __break(1u);
LABEL_109:

LABEL_110:
      v212 = v515;
      v6 = v515[9];
      v213 = v515[10];
      v214 = v515[11];
      v215 = v515[12];
      swift_unknownObjectRetain();
      v216 = specialized Rope.subscript.getter(v497, v513, v501, v6, v213, v214, v215);
      swift_unknownObjectRelease();

      if (__OFADD__(v500, v216))
      {
        goto LABEL_378;
      }

      v217 = *(v212 + 5);
      v672 = *(v212 + 3);
      v673 = v217;
      v674 = *(v212 + 7);
      if (__OFSUB__(v500 + v216, v496 >> 11))
      {
        goto LABEL_379;
      }

      swift_unknownObjectRetain();
      v218 = BigString.UTF8View.index(_:offsetBy:)();
      v10 = v219;
      v46 = v220;
      v222 = v221;
      swift_unknownObjectRelease();
      v223 = v218 >> 10;
      v224 = v212[3];
      v225 = v212[5];
      v537 = v212[4];
      v538.i64[0] = v225;
      v226 = v212[7];
      v547.i64[0] = v212[6];
      v558 = v226;
      v559.i64[0] = v212[8];
      if (v218 >> 10 >= v498)
      {
        v228 = v556;
        v230 = v520;
        v229 = v521;
        v664 = v556;
        v665 = v520;
        v6 = v522;
        v666 = v521;
        v667 = v522;
        v10 = v546;
        v46 = v544.i64[0];
        v668 = v546;
        v669 = v544.i64[0];
        v21 = v539.i64[0];
        v670 = v539.i64[0];
        v671 = v548.i64[0];
        v231 = v224;
        swift_unknownObjectRetain();
        v232 = v516;
        v233 = specialized Set.contains(_:)(0, 0, v516);
        v536 = v231;
        if (v233)
        {
          v650 = v231;
          v651 = v537;
          v652 = v538.i64[0];
          v653 = v547.i64[0];
          v654 = v558;
          v655 = v559.i64[0];
          BigString.UTF8View.subscript.getter();
          v656 = v228;
          v657 = v230;
          v658 = v229;
          v659 = v522;
          v660 = v228;
          v661 = v230;
          v662 = v229;
          v663 = v522;
          specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v656, &v573);
          v6 = v522;
          outlined destroy of BigSubstring.UTF8View(v592);
          v234 = v548.i64[0];
          if (*&v575[24] != 2)
          {
            v10 = *v575;
            if (v565 > *v575 >> 10)
            {
              goto LABEL_394;
            }

            v46 = *&v575[8];
            v21 = *&v575[16];
            v234 = *&v575[24];
          }
        }

        else
        {
          v234 = v548.i64[0];
        }

        v642 = v228;
        v643 = v230;
        v644 = v521;
        v645 = v6;
        v646 = v10;
        v647 = v46;
        v648 = v21;
        v649 = v234;
        if (specialized Collection<>._containsScalarConstraint.getter(v232))
        {
          v235 = v232 + 56;
          v236 = 1 << *(v232 + 32);
          v237 = -1;
          if (v236 < 64)
          {
            v237 = ~(-1 << v236);
          }

          v238 = v237 & *(v232 + 56);
          v239 = (v236 + 63) >> 6;

          v6 = 0;
          v556 = MEMORY[0x1E69E7CC0];
          while (v238)
          {
LABEL_130:
            v241 = __clz(__rbit64(v238));
            v238 &= v238 - 1;
            v242 = (*(v516 + 48) + ((v6 << 10) | (16 * v241)));
            v243 = v242[1];
            if (v243 >= 2)
            {
              v244 = specialized Collection.first.getter(*v242, v243);
              if ((v244 & 0x100000000) == 0)
              {
                v535 = v244;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v556 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v556 + 16) + 1, 1, v556);
                }

                v246 = *(v556 + 16);
                v245 = *(v556 + 24);
                v247 = v246 + 1;
                v248 = v535;
                if (v246 >= v245 >> 1)
                {
                  v531 = v246 + 1;
                  v250 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v245 > 1), v246 + 1, 1, v556);
                  v247 = v531;
                  v556 = v250;
                  v248 = v535;
                }

                v249 = v556;
                *(v556 + 16) = v247;
                *(v249 + 4 * v246 + 32) = v248;
              }
            }
          }

          while (1)
          {
            v240 = v6 + 1;
            if (__OFADD__(v6, 1))
            {
              goto LABEL_366;
            }

            if (v240 >= v239)
            {
              break;
            }

            v238 = *(v235 + 8 * v240);
            ++v6;
            if (v238)
            {
              v6 = v240;
              goto LABEL_130;
            }
          }

          v535 = v46;

          v636 = v536;
          v637 = v537;
          v638 = v538.i64[0];
          v639 = v547.i64[0];
          v640 = v558;
          v641 = v559.i64[0];
          BigString.UnicodeScalarView.subscript.getter();
          v46 = v556;
          v6 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v556);
          v257 = v256;
          v259 = v258;
          v261 = v260;

          swift_unknownObjectRelease();
          outlined destroy of BigSubstring.UnicodeScalarView(&v595);
          if (v261 == 2)
          {
            v161 = v532;
            v251 = v515;
            v46 = v535;
          }

          else
          {
            v251 = v515;
            if (v565 > v6 >> 10)
            {
              goto LABEL_395;
            }

            v10 = v6;
            v46 = v257;
            v21 = v259;
            v234 = v261;
            v161 = v532;
          }
        }

        else
        {

          swift_unknownObjectRelease();
          v161 = v532;
          v251 = v515;
        }

        v305 = v546;
        if ((v10 >> 10) != v498)
        {
          v305 = v10;
        }

        v546 = v305;
        v306 = v544.i64[0];
        if ((v10 >> 10) != v498)
        {
          v306 = v46;
        }

        v544.i64[0] = v306;
        v307 = v539.i64[0];
        if ((v10 >> 10) != v498)
        {
          v307 = v21;
        }

        v539.i64[0] = v307;
        v308 = v548.i64[0];
        if ((v10 >> 10) != v498)
        {
          v308 = v234;
        }

        v548.i64[0] = v308;
        v21 = v562.i64[0];
        goto LABEL_194;
      }

      v161 = v532;
      v227 = v521;
      v6 = v522;
      if (v223 < v565)
      {
        goto LABEL_391;
      }

      v664 = v556;
      v665 = v520;
      v666 = v521;
      v667 = v522;
      v668 = v218;
      v669 = v10;
      v670 = v46;
      v671 = v222;
      if (v565 == v223)
      {

        v546 = v218;
        v544.i64[0] = v10;
        goto LABEL_182;
      }

      v252 = v10;
      v10 = v224;
      swift_unknownObjectRetain();
      v253 = specialized Set.contains(_:)(0, 0, v516);
      v536 = v10;
      if (v253)
      {
        v650 = v10;
        v651 = v537;
        v652 = v538.i64[0];
        v653 = v547.i64[0];
        v654 = v558;
        v655 = v559.i64[0];
        BigString.UTF8View.subscript.getter();
        v254 = v556;
        v656 = v556;
        v657 = v520;
        v658 = v521;
        v659 = v522;
        v660 = v556;
        v661 = v520;
        v662 = v521;
        v663 = v522;
        specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v656, &v573);
        v6 = v522;
        outlined destroy of BigSubstring.UTF8View(v592);
        v255 = v254;
        v227 = v521;
        if (*&v575[24] != 2)
        {
          v218 = *v575;
          if (v565 > *v575 >> 10)
          {
            goto LABEL_402;
          }

          v252 = *&v575[8];
          v46 = *&v575[16];
          v222 = *&v575[24];
        }
      }

      else
      {
        v255 = v556;
      }

      v642 = v255;
      v643 = v520;
      v644 = v227;
      v645 = v6;
      v646 = v218;
      v647 = v252;
      v648 = v46;
      v649 = v222;
      v287 = v516;
      if (specialized Collection<>._containsScalarConstraint.getter(v516))
      {
        v556 = v252;
        v10 = v287 + 56;
        v288 = 1 << *(v287 + 32);
        v289 = -1;
        if (v288 < 64)
        {
          v289 = ~(-1 << v288);
        }

        v290 = v289 & *(v287 + 56);
        v21 = (v288 + 63) >> 6;

        v6 = 0;
        v291 = MEMORY[0x1E69E7CC0];
        while (v290)
        {
LABEL_174:
          v293 = __clz(__rbit64(v290));
          v290 &= v290 - 1;
          v294 = (*(v516 + 48) + ((v6 << 10) | (16 * v293)));
          v295 = v294[1];
          if (v295 >= 2)
          {
            v296 = specialized Collection.first.getter(*v294, v295);
            if ((v296 & 0x100000000) == 0)
            {
              v297 = v296;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v291 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v291 + 2) + 1, 1, v291);
              }

              v299 = *(v291 + 2);
              v298 = *(v291 + 3);
              v300 = v299 + 1;
              if (v299 >= v298 >> 1)
              {
                v548.i64[0] = v299 + 1;
                v302 = v291;
                v303 = v299;
                v304 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v298 > 1), v299 + 1, 1, v302);
                v300 = v548.i64[0];
                v299 = v303;
                v291 = v304;
              }

              v301 = v297;
              v161 = v532;
              *(v291 + 2) = v300;
              *&v291[4 * v299 + 32] = v301;
            }
          }
        }

        while (1)
        {
          v292 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_369;
          }

          if (v292 >= v21)
          {
            break;
          }

          v290 = *(v10 + 8 * v292);
          ++v6;
          if (v290)
          {
            v6 = v292;
            goto LABEL_174;
          }
        }

        v10 = v536;
        v636 = v536;
        v637 = v537;
        v638 = v538.i64[0];
        v639 = v547.i64[0];
        v640 = v558;
        v641 = v559.i64[0];
        BigString.UnicodeScalarView.subscript.getter();
        v312 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v291);
        v544.i64[0] = v313;
        v315 = v314;
        v317 = v316;

        swift_unknownObjectRelease();
        outlined destroy of BigSubstring.UnicodeScalarView(&v595);
        v548.i64[0] = v317;
        if (v317 == 2)
        {
          v546 = v218;
          v544.i64[0] = v556;
          v539.i64[0] = v46;
          v548.i64[0] = v222;
LABEL_197:
          v21 = v562.i64[0];
          goto LABEL_198;
        }

        v539.i64[0] = v315;
        v546 = v312;
        v21 = v562.i64[0];
        v251 = v515;
        if (v565 > v312 >> 10)
        {
          __break(1u);
          goto LABEL_352;
        }

LABEL_194:
        v309 = v551;
        v310 = v550;
        v10 = v557;
        v311 = v534;
      }

      else
      {

        swift_unknownObjectRelease();
        v546 = v218;
        v544.i64[0] = v252;
LABEL_182:
        v539.i64[0] = v46;
        v548.i64[0] = v222;
LABEL_198:
        v309 = v551;
        v310 = v550;
        v10 = v557;
        v311 = v534;
        v251 = v515;
      }

      v535 = v251[2];
      outlined destroy of AttributedString.Runs(v560, type metadata accessor for AttributedString.Runs);
      v318 = *(&v518 + 1);
      v561(*(&v518 + 1), v310, v309);
      outlined init with copy of AttributedString.Runs(v318, v161, type metadata accessor for AttributedString.Runs);
      v46 = v517;
      (v517)(v318, v311);
      v319 = v519;
      v320 = v309;
      v321 = v561;
      v561(v519, v310, v320);
      v322 = *(v319 + *(v311 + 68));

      (v46)(v319, v311);
      v6 = *(&v519 + 1);
      v321(*(&v519 + 1), v550, v551);
      v534 = *(v6 + *(v311 + 72));

      (v46)(v6, v311);
      v558 = v322;
      v538.i64[0] = *(v322 + 16);
      if (!v538.i64[0])
      {
        goto LABEL_376;
      }

      v536 = *v161;
      AttributedString.Guts.findRun(at:)(v546, v548.u64[0], v573.i64);
      v533 = v573.u64[1];
      v522 = v573.i64[0];
      v10 = v574.u64[1];
      v530 = *v575;
      v531 = v574.i64[0];
      v516 = *&v575[16];
      v517 = *&v575[8];
      v513 = *&v575[32];
      v515 = *&v575[24];
      v561 = *(v545 + 24);
      v323 = v566;
      RangeSet.ranges.getter();
      v324 = v567.i64[0];
      v325 = RangeSet.Ranges.count.getter();
      (v564)(v323, v324);
      if (v325 < 1)
      {
        continue;
      }

      break;
    }

    v326 = 0;
    v565 = v546 >> 10;
LABEL_203:
    if (__OFADD__(v326, v325))
    {
      goto LABEL_359;
    }

    v46 = (v326 + v325) / 2;
    v327 = v566;
    RangeSet.ranges.getter();
    v328 = v567.i64[0];
    RangeSet.Ranges.subscript.getter();
    (v564)(v327, v328);
    if (v565 < v573.i64[0] >> 10)
    {
LABEL_202:
      v325 = v46;
      if (v326 >= v46)
      {
        continue;
      }

      goto LABEL_203;
    }

    break;
  }

  v329 = *v575;
  if (v565 >= *v575 >> 10)
  {
    v326 = v46 + 1;
    v46 = v325;
    goto LABEL_202;
  }

  v520 = *v575 >> 10;
  v519 = *&v575[16];
  v6 = v534;
  v330 = *(v534 + 16);
  v518 = *v575;
  if (v330 == 1 && (specialized Set.contains(_:)(0, 1, v534) & 1) == 0)
  {

    v333 = v536[3];
    v557 = v536[4];
    v334 = v536[6];
    v556 = v536[5];
    v551 = v334;
    v335 = v536[8];
    v550 = v536[7];
    v547.i64[0] = v335;
    v336 = v546;
    v568.i64[0] = v546;
    v568.i64[1] = v544.i64[0];
    v337 = v539.i64[0];
    v569.i64[0] = v539.i64[0];
    v21 = v548.i64[0];
    v569.i64[1] = v548.i64[0];
    v570.i64[0] = v329;
    v339 = *(&v518 + 1);
    v338 = v519;
    v570.i64[1] = *(&v518 + 1);
    v571 = v519;
    v340 = *(&v519 + 1);
    v558 = v333;
    swift_unknownObjectRetain();
    v341 = specialized Set.contains(_:)(0, 0, v6);
    v342 = v340;
    v10 = v528;
    if (v341)
    {
      *&v633 = v558;
      *(&v633 + 1) = v557;
      *&v634 = v556;
      *(&v634 + 1) = v551;
      *&v635 = v550;
      *(&v635 + 1) = v547.i64[0];
      BigString.UTF8View.subscript.getter();
      v625 = v336;
      v626 = v544.i64[0];
      v627 = v337;
      v628 = v21;
      v629 = v336;
      v630 = v544.i64[0];
      v631 = v337;
      v632 = v21;
      v6 = &v600;
      specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v625, &v573);
      outlined destroy of BigSubstring.UTF8View(&v600);
      v339 = *(&v518 + 1);
      v329 = v518;
      v342 = *(&v519 + 1);
      v338 = v519;
      if (*&v575[24] != 2)
      {
        v329 = *v575;
        if (v565 > *v575 >> 10)
        {
          goto LABEL_400;
        }

        v339 = *&v575[8];
        v338 = *&v575[16];
        v342 = *&v575[24];
        v337 = v539.i64[0];
        v21 = v548.i64[0];
      }
    }

    v611 = v336;
    v612 = v544.i64[0];
    v613 = v337;
    v614 = v21;
    v615 = v329;
    v343 = v339;
    v616 = v339;
    v559.i64[0] = v338;
    v617 = v338;
    v560 = v342;
    v618 = v342;
    v344 = v534;
    if ((specialized Collection<>._containsScalarConstraint.getter(v534) & 1) == 0)
    {

      swift_unknownObjectRelease();
      goto LABEL_314;
    }

    v6 = v344 + 56;
    v345 = 1 << *(v344 + 32);
    v346 = -1;
    if (v345 < 64)
    {
      v346 = ~(-1 << v345);
    }

    v10 = v346 & *(v344 + 56);
    v347 = (v345 + 63) >> 6;

    v348 = 0;
    v21 = MEMORY[0x1E69E7CC0];
LABEL_221:
    if (v10)
    {
      goto LABEL_226;
    }

    while (1)
    {
      v349 = v348 + 1;
      if (__OFADD__(v348, 1))
      {
        goto LABEL_368;
      }

      if (v349 >= v347)
      {
        break;
      }

      v10 = *(v6 + 8 * v349);
      ++v348;
      if (v10)
      {
        v348 = v349;
LABEL_226:
        v350 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        v351 = (*(v534 + 48) + ((v348 << 10) | (16 * v350)));
        v352 = v351[1];
        if (v352 >= 2)
        {
          v353 = specialized Collection.first.getter(*v351, v352);
          if ((v353 & 0x100000000) == 0)
          {
            v545 = v353;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 16) + 1, 1, v21);
            }

            v355 = *(v21 + 16);
            v354 = *(v21 + 24);
            v356 = v355 + 1;
            v357 = v545;
            if (v355 >= v354 >> 1)
            {
              v538.i64[0] = v355 + 1;
              v358 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v354 > 1), v355 + 1, 1, v21);
              v356 = v538.i64[0];
              v21 = v358;
              v357 = v545;
            }

            *(v21 + 16) = v356;
            *(v21 + 4 * v355 + 32) = v357;
          }
        }

        goto LABEL_221;
      }
    }

    v619 = v558;
    v620 = v557;
    v621 = v556;
    v622 = v551;
    v623 = v550;
    v624 = v547.i64[0];
    BigString.UnicodeScalarView.subscript.getter();
    v6 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v21);
    v442 = v441;
    v21 = v443;
    v445 = v444;

    swift_unknownObjectRelease();
    outlined destroy of BigSubstring.UnicodeScalarView(&v573);
    v10 = v528;
    if (v445 != 2)
    {
      if (v565 > v6 >> 10)
      {
        goto LABEL_401;
      }

      v329 = v6;
      v343 = v442;
      v559.i64[0] = v21;
      v560 = v445;
    }

LABEL_314:
    if (v520 != v329 >> 10)
    {
      v6 = v536[2];
      v21 = v526;
      v46 = v527;
      v132 = v555;
      v148 = v548.i64[0];
      v418 = v343;
LABEL_326:
      outlined destroy of AttributedString.Runs(v532, type metadata accessor for AttributedString.Runs);
      v450 = v542;
      v141 = *v542;
      if (v565 < *v542 >> 10)
      {
        goto LABEL_377;
      }

      v451 = *(v542 + 24);
      v566 = *(v542 + 8);
      v567 = v451;
      *v542 = v329;
      v450[1] = v418;
      v452 = v560;
      v450[2] = v559.i64[0];
      v450[3] = v452;
      v450[4] = v6;
      v131 = v543;
LABEL_328:
      v548.i64[0] = v148;
      v453 = (*(v509 + 24))();
      if (*(v549 + 16))
      {
        v6 = specialized __RawDictionaryStorage.find<A>(_:)(v453, v454);
        v456 = v455;

        if (v456)
        {
          outlined init with copy of AttributedString._AttributeValue(*(v549 + 56) + 72 * v6, &v585);
          outlined init with copy of Hashable & Sendable(&v585, v582);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
          if (!swift_dynamicCast())
          {
            goto LABEL_406;
          }

          outlined destroy of AttributedString._AttributeValue(&v585);
          v457 = *(v21 - 8);
          v458 = *(v457 + 56);
          v458(v10, 0, 1, v21);
          (*(v457 + 32))(v131, v10, v21);
          v458(v131, 0, 1, v21);
LABEL_334:
          v585 = v540;
          v586.i64[0] = v541;
          v586.i64[1] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSny10Foundation16AttributedStringV5IndexVGMd);
          v459 = swift_getTupleTypeMetadata();
          v460 = v459[12];
          v461 = (*(v554 + 24))(v132);
          if (*(v549 + 16))
          {
            v463 = specialized __RawDictionaryStorage.find<A>(_:)(v461, v462);
            v465 = v464;

            if (v465)
            {
              outlined init with copy of AttributedString._AttributeValue(*(v549 + 56) + 72 * v463, &v585);
              outlined init with copy of Hashable & Sendable(&v585, v582);
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
              v6 = v525;
              v21 = v46;
              if (!swift_dynamicCast())
              {
                goto LABEL_407;
              }

              outlined destroy of AttributedString._AttributeValue(&v585);
              v466 = v6;
              v467 = *(v6 - 8);
              v468 = *(v467 + 56);
              v468(v21, 0, 1, v466);
              (*(v467 + 32))(v131 + v460, v21, v466);
              v468(v131 + v460, 0, 1, v466);
LABEL_340:
              v469 = v549;
              v585.i64[0] = v549;
              v585.i64[1] = v529;
              v586 = v502;
              v587 = v503;
              *&v588 = v507;
              *(&v588 + 1) = v506;
              v589 = v505;
              v590 = v504;
              v591 = v508;
              v470 = v459[16];
              v471 = (*(v553 + 24))();
              if (*(v469 + 16))
              {
                v473 = specialized __RawDictionaryStorage.find<A>(_:)(v471, v472);
                v475 = v474;

                if (v475)
                {
                  outlined init with copy of AttributedString._AttributeValue(*(v469 + 56) + 72 * v473, v582);

                  outlined init with copy of Hashable & Sendable(v582, &v581);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
                  v21 = v514;
                  v46 = AssociatedTypeWitness;
                  if ((swift_dynamicCast() & 1) == 0)
                  {
                    goto LABEL_408;
                  }

                  outlined destroy of AttributedString._AttributeValue(v582);
                  outlined destroy of AttributedString.Runs.Run(&v585);
                  v476 = *(v46 - 8);
                  v477 = *(v476 + 56);
                  v477(v21, 0, 1, v46);
                  (*(v476 + 32))(v131 + v470, v21, v46);
                  v477(v131 + v470, 0, 1, v46);
                  goto LABEL_347;
                }

                outlined destroy of AttributedString.Runs.Run(&v585);
              }

              else
              {
                outlined destroy of AttributedString.Runs.Run(&v585);
              }

              (*(*(AssociatedTypeWitness - 8) + 56))(v131 + v470, 1, 1);
LABEL_347:
              v478 = v546;
              v479 = v535;
              v480 = v131 + v459[20];
              *v480 = v141;
              v481 = v567;
              *(v480 + 8) = v566;
              *(v480 + 24) = v481;
              v482 = v544.i64[0];
              *(v480 + 40) = v478;
              *(v480 + 48) = v482;
              v483 = v548.i64[0];
              *(v480 + 56) = v539.i64[0];
              *(v480 + 64) = v483;
              *(v480 + 72) = v479;
              return (*(*(v459 - 1) + 56))(v131, 0, 1, v459);
            }
          }

          else
          {
          }

          (*(*(v525 - 8) + 56))(v131 + v460, 1, 1);
          goto LABEL_340;
        }
      }

      else
      {
      }

      (*(*(v21 - 8) + 56))(v131, 1, 1, v21);
      goto LABEL_334;
    }

    v446 = v566;
    RangeSet.ranges.getter();
    v447 = v567.i64[0];
    v6 = RangeSet.Ranges.count.getter();
    (v564)(v446, v447);
    v432 = v6 - 1;
    v132 = v555;
    v21 = v526;
    if (__OFSUB__(v6, 1))
    {
      goto LABEL_393;
    }

    goto LABEL_316;
  }

  v331 = v161[15];
  if (v10 == v331)
  {
    v332 = v161[22];
    if (v161[26] == 2)
    {
      if (v332 != 2)
      {
        goto LABEL_276;
      }
    }

    else if (v332 == 2 || (v161[23] ^ v161[19]) >= 1024)
    {
      goto LABEL_276;
    }
  }

  v499 = v161[15];
  v560 = v10;
  if (v10 >= v331)
  {
    goto LABEL_390;
  }

  v359 = v536;
  v360 = v536[9];
  v361 = v536[10];
  v362 = v536[11];
  v363 = v536[12];
  swift_unknownObjectRetain();
  v10 = v522;
  v364 = v533;
  v365 = v531;
  specialized Rope.subscript.getter(v522, v533, v531, v360, v361, v362, v363);
  v367 = v366;
  v497 = v368;
  swift_unknownObjectRelease();
  v6 = v359[9];
  v369 = v359[10];
  v370 = v560 + 1;
  v372 = v359[11];
  v371 = v359[12];
  v498 = (v558 + 40);
  v573.i64[0] = v10;
  v573.i64[1] = v364;
  v21 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMR;
  v574.i64[0] = v365;
  v545 = v367;
  while (2)
  {
    if (v10 != v371)
    {
      goto LABEL_386;
    }

    v501 = v370;
    v521 = v371;
    v531 = v365;
    if (v365)
    {
      v373 = v369;
      v374 = *(v365 + 24 * ((v533 >> ((4 * *(v365 + 18) + 8) & 0x3C)) & 0xF) + 24);
      swift_unknownObjectRetain();
    }

    else
    {
      swift_unknownObjectRetain();
      v373 = v369;
      v374 = specialized Rope._Node.subscript.getter(v533, v6);
    }

    v496 = v530 + v374;
    if (__OFADD__(v530, v374))
    {
      goto LABEL_387;
    }

    specialized Rope.formIndex(after:)(&v573, v6, v373, v372, v521);
    swift_unknownObjectRelease();
    v375 = v545;
    v10 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMd;
    if (v499 < v501)
    {
      goto LABEL_281;
    }

    v376 = v573.u64[1];
    if (v501 == v499)
    {
      v377 = v532[22];
      if (v532[26] == 2)
      {
        if (v377 == 2)
        {
LABEL_281:

          goto LABEL_282;
        }
      }

      else if (v377 != 2 && (v532[19] ^ v532[23]) < 1024)
      {
        goto LABEL_281;
      }
    }

    if (v573.i64[0] != v536[12])
    {
      goto LABEL_388;
    }

    v522 = v573.i64[0];
    v494 = v574.i64[0];
    v495 = v573.u64[1];
    if (v574.i64[0])
    {
      v378 = v574.i64[0] + 24 * ((v573.i64[1] >> ((4 * *(v574.i64[0] + 18) + 8) & 0x3C)) & 0xF);
      v379 = *(v378 + 32);
      v6 = *(v378 + 40);

      v500 = v6;
    }

    else
    {
      v6 = v536[9];
      swift_unknownObjectRetain();
      specialized Rope._Node.subscript.getter(v376, v6);
      v379 = v380;
      v500 = v381;
      swift_unknownObjectRelease();
    }

    v382 = 0;
    v383 = v498;
    v537 = v379;
    while (2)
    {
      if (v382 >= *(v558 + 16))
      {
        goto LABEL_365;
      }

      v560 = v382;
      v385 = *(v383 - 1);
      v384 = *v383;
      v559.i64[0] = v383;
      if (*(v375 + 16))
      {

        v6 = v375;
        v386 = specialized __RawDictionaryStorage.find<A>(_:)(v385, v384);
        if (v387)
        {
          outlined init with copy of AttributedString._AttributeValue(*(v375 + 56) + 72 * v386, &v600);
          if (!v379[2])
          {
LABEL_264:

LABEL_265:
            v589 = 0;
            v588 = 0u;
            v587 = 0u;
            v586 = 0u;
            v585 = 0u;
            goto LABEL_266;
          }
        }

        else
        {
          v604 = 0;
          v603 = 0u;
          v602 = 0u;
          v601 = 0u;
          v600 = 0u;
          if (!v379[2])
          {
            goto LABEL_264;
          }
        }
      }

      else
      {
        v604 = 0;
        v603 = 0u;
        v602 = 0u;
        v601 = 0u;
        v600 = 0u;

        if (!v379[2])
        {
          goto LABEL_264;
        }
      }

      v6 = specialized __RawDictionaryStorage.find<A>(_:)(v385, v384);
      v389 = v388;

      if ((v389 & 1) == 0)
      {
        goto LABEL_265;
      }

      outlined init with copy of AttributedString._AttributeValue(v379[7] + 72 * v6, &v585);
LABEL_266:
      outlined init with copy of AttributedString._AttributeValue?(&v600, &v573);
      outlined init with copy of AttributedString._AttributeValue?(&v585, &v576);
      if (v574.i64[1])
      {
        outlined init with copy of AttributedString._AttributeValue?(&v573, v582);
        if (!v577.i64[1])
        {
          outlined destroy of TermOfAddress?(&v585, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of TermOfAddress?(&v600, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of AttributedString._AttributeValue(v582);
LABEL_278:
          outlined destroy of TermOfAddress?(&v573, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMd);
LABEL_280:

          goto LABEL_281;
        }

        v570 = v578;
        v571 = v579;
        v572 = v580;
        v568 = v576;
        v569 = v577;
        v6 = v583;
        v550 = v584;
        v547.i64[0] = __swift_project_boxed_opaque_existential_1(v582, v583);
        v390 = __swift_project_boxed_opaque_existential_1(&v568, v569.i64[1]);
        v557 = &v484;
        v10 = *(v6 - 8);
        MEMORY[0x1EEE9AC00](v390);
        v392 = &v484 - ((v391 + 15) & 0xFFFFFFFFFFFFFFF0);
        v556 = &v484;
        v394 = MEMORY[0x1EEE9AC00](v393);
        (*(v396 + 16))(&v484 - ((v395 + 15) & 0xFFFFFFFFFFFFFFF0), v394);
        v21 = type metadata accessor for Optional();
        v551 = &v484;
        v397 = *(v21 - 8);
        MEMORY[0x1EEE9AC00](v21);
        v399 = &v484 - v398;
        v400 = swift_dynamicCast();
        v401 = *(v10 + 56);
        if (!v400)
        {
          v401(v399, 1, 1, v6);
          outlined destroy of TermOfAddress?(&v585, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of TermOfAddress?(&v600, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          (*(v397 + 8))(v399, v21);
          outlined destroy of AttributedString._AttributeValue(&v568);
          outlined destroy of AttributedString._AttributeValue(v582);
          outlined destroy of TermOfAddress?(&v573, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          goto LABEL_280;
        }

        v401(v399, 0, 1, v6);
        (*(v10 + 32))(v392, v399, v6);
        v402 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v10 + 8))(v392, v6);
        v10 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMd;
        v21 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMR;
        outlined destroy of TermOfAddress?(&v585, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?(&v600, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of AttributedString._AttributeValue(&v568);
        outlined destroy of AttributedString._AttributeValue(v582);
        outlined destroy of TermOfAddress?(&v573, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        v375 = v545;
        v379 = v537;
        if ((v402 & 1) == 0)
        {
          goto LABEL_280;
        }
      }

      else
      {
        outlined destroy of TermOfAddress?(&v585, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?(&v600, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        if (v577.i64[1])
        {
          goto LABEL_278;
        }

        outlined destroy of TermOfAddress?(&v573, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      }

      v382 = (v560 + 1);
      v383 = (v559.i64[0] + 16);
      if (v538.i64[0] != (v560 + 1))
      {
        continue;
      }

      break;
    }

    v6 = v536[9];
    v369 = v536[10];
    v372 = v536[11];
    v371 = v536[12];
    v530 = v496;
    v10 = v522;
    v573.i64[0] = v522;
    v573.i64[1] = v495;
    v365 = v494;
    v533 = v495;
    v574.i64[0] = v494;
    v370 = v501 + 1;
    if (!__OFADD__(v501, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_276:

  v521 = v522;
LABEL_282:
  v403 = v536;
  v6 = v536[9];
  v404 = v536[10];
  v405 = v536[11];
  v406 = v536[12];
  swift_unknownObjectRetain();
  v407 = specialized Rope.subscript.getter(v521, v533, v531, v6, v404, v405, v406);
  swift_unknownObjectRelease();

  if (__OFADD__(v530, v407))
  {
    goto LABEL_383;
  }

  v408 = *(v403 + 5);
  v633 = *(v403 + 3);
  v634 = v408;
  v635 = *(v403 + 7);
  if (__OFSUB__(v530 + v407, v517 >> 11))
  {
    goto LABEL_384;
  }

  swift_unknownObjectRetain();
  v329 = BigString.UTF8View.index(_:offsetBy:)();
  v6 = v409;
  v10 = v410;
  v560 = v411;
  swift_unknownObjectRelease();
  v412 = v329 >> 10;
  v413 = v403[3];
  v551 = v403[4];
  v414 = v403[6];
  v556 = v403[5];
  v557 = v414;
  v415 = v403[7];
  v416 = v403[8];
  v558 = v415;
  if (v329 >> 10 >= v520)
  {
    v547.i64[0] = v416;
    v420 = v546;
    v568.i64[0] = v546;
    v421 = v544.i64[0];
    v568.i64[1] = v544.i64[0];
    v21 = v539.i64[0];
    v569.i64[0] = v539.i64[0];
    v422 = v548.i64[0];
    v569.i64[1] = v548.i64[0];
    v418 = *(&v518 + 1);
    v329 = v518;
    v570 = v518;
    v6 = *(&v519 + 1);
    v10 = v519;
    v571 = v519;
    v550 = v413;
    swift_unknownObjectRetain();
    if (specialized Set.contains(_:)(0, 0, v534))
    {
      v619 = v550;
      v620 = v551;
      v621 = v556;
      v622 = v557;
      v623 = v558;
      v624 = v547.i64[0];
      BigString.UTF8View.subscript.getter();
      v423 = _ss10SetAlgebraPs7ElementQz012ArrayLiteralC0RtzrlE05arrayE0xAFd_tcfCSS10FoundationE22_BlockSearchingOptionsV_Tt1g5Tf4g_n(&outlined read-only object #0 of AttributedString.Runs.AttributesSlice3.Iterator.next());
      v625 = v420;
      v626 = v421;
      v627 = v21;
      v628 = v422;
      v629 = v420;
      v630 = v421;
      v631 = v21;
      v632 = v422;
      specialized BidirectionalCollection<>._getBlock(for:in:)(v423, &v625, &v573);
      outlined destroy of BigSubstring.UTF8View(&v600);
      v418 = *(&v518 + 1);
      v329 = v518;
      v6 = *(&v519 + 1);
      v10 = v519;
      if (*&v575[24] != 2)
      {
        v329 = *v575;
        if (v565 > *v575 >> 10)
        {
          goto LABEL_396;
        }

        v418 = *&v575[8];
        v10 = *&v575[16];
        v6 = *&v575[24];
        v420 = v546;
        v421 = v544.i64[0];
        v21 = v539.i64[0];
        v422 = v548.i64[0];
      }
    }

    v611 = v420;
    v612 = v421;
    v613 = v21;
    v614 = v422;
    v615 = v329;
    v616 = v418;
    v559.i64[0] = v10;
    v617 = v10;
    v560 = v6;
    v618 = v6;
    v424 = v534;
    if (specialized Collection<>._containsScalarConstraint.getter(v534))
    {
      v425 = specialized Sequence.compactMap<A>(_:)(v424);

      v605 = v550;
      v606 = v551;
      v607 = v556;
      v608 = v557;
      v609 = v558;
      v610 = v547.i64[0];
      BigString.UnicodeScalarView.subscript.getter();
      v21 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v425);
      v427 = v426;
      v558 = v428;
      v6 = v429;

      swift_unknownObjectRelease();
      outlined destroy of BigSubstring.UnicodeScalarView(&v573);
      v10 = v528;
      if (v6 != 2)
      {
        if (v565 > v21 >> 10)
        {
          goto LABEL_397;
        }

        v329 = v21;
        v418 = v427;
        v559.i64[0] = v558;
        v560 = v6;
      }
    }

    else
    {

      swift_unknownObjectRelease();
      v10 = v528;
    }

    if (v520 == v329 >> 10)
    {
      v418 = v566;
      RangeSet.ranges.getter();
      v430 = v567.i64[0];
      v431 = RangeSet.Ranges.count.getter();
      (v564)(v418, v430);
      v432 = v431 - 1;
      v132 = v555;
      v21 = v526;
      if (!__OFSUB__(v431, 1))
      {
LABEL_316:
        v329 = v518;
        if (v46 == v432)
        {
          v6 = v536[2];
          v418 = *(&v518 + 1);
          v560 = *(&v519 + 1);
          v559.i64[0] = v519;
        }

        else
        {
          v448 = v566;
          RangeSet.ranges.getter();
          v449 = v567.i64[0];
          RangeSet.Ranges.subscript.getter();
          (v564)(v448, v449);
          v418 = v585.u64[1];
          v329 = v585.i64[0];
          v560 = v586.i64[1];
          v559.i64[0] = v586.i64[0];
          v6 = v536[2];
        }

        v46 = v527;
        goto LABEL_325;
      }

      __break(1u);
    }

    v6 = v536[2];
    v21 = v526;
    v46 = v527;
LABEL_324:
    v132 = v555;
LABEL_325:
    v148 = v548.i64[0];
    goto LABEL_326;
  }

  v417 = v548.i64[0];
  if (v412 < v565)
  {
    goto LABEL_392;
  }

  v568.i64[0] = v546;
  v568.i64[1] = v544.i64[0];
  v569.i64[0] = v539.i64[0];
  v569.i64[1] = v548.i64[0];
  v570.i64[0] = v329;
  v418 = v6;
  v570.i64[1] = v6;
  *&v571 = v10;
  v6 = v560;
  *(&v571 + 1) = v560;
  v46 = v527;
  v419 = v534;
  if (v565 == v412)
  {
    v559.i64[0] = v10;

    goto LABEL_322;
  }

  v21 = v413;
  swift_unknownObjectRetain();
  v433 = specialized Set.contains(_:)(0, 0, v419);
  v550 = v21;
  if ((v433 & 1) == 0 || (v619 = v21, v620 = v551, v621 = v556, v622 = v557, v623 = v558, v624 = v416, BigString.UTF8View.subscript.getter(), v625 = v546, v626 = v544.i64[0], v627 = v539.i64[0], v628 = v417, v629 = v546, v630 = v544.i64[0], v631 = v539.i64[0], v632 = v417, specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v625, &v573), v6 = v560, outlined destroy of BigSubstring.UTF8View(&v600), *&v575[24] == 2))
  {
LABEL_306:
    v611 = v546;
    v612 = v544.i64[0];
    v613 = v539.i64[0];
    v614 = v417;
    v615 = v329;
    v616 = v418;
    v559.i64[0] = v10;
    v617 = v10;
    v560 = v6;
    v618 = v6;
    if (specialized Collection<>._containsScalarConstraint.getter(v419))
    {
      v434 = specialized Sequence.compactMap<A>(_:)(v419);

      v605 = v550;
      v606 = v551;
      v607 = v556;
      v608 = v557;
      v609 = v558;
      v610 = v416;
      BigString.UnicodeScalarView.subscript.getter();
      v435 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v434);
      v437 = v436;
      v439 = v438;
      v6 = v440;
      v46 = v527;

      swift_unknownObjectRelease();
      outlined destroy of BigSubstring.UnicodeScalarView(&v573);
      v21 = v526;
      v10 = v528;
      if (v6 != 2)
      {
        if (v565 > v435 >> 10)
        {
          goto LABEL_404;
        }

        v329 = v435;
        v418 = v437;
        v559.i64[0] = v439;
        v560 = v6;
      }
    }

    else
    {

      swift_unknownObjectRelease();
LABEL_322:
      v21 = v526;
      v10 = v528;
    }

    v6 = v536[2];
    goto LABEL_324;
  }

  v329 = *v575;
  if (v565 <= *v575 >> 10)
  {
    v418 = *&v575[8];
    v10 = *&v575[16];
    v6 = *&v575[24];
    goto LABEL_306;
  }

LABEL_403:
  __break(1u);
LABEL_404:
  __break(1u);
LABEL_405:
  __break(1u);
LABEL_406:
  (*(*(v21 - 8) + 56))(v10, 1, 1, v21);
  (*(v510 + 8))(v10, v540.i64[0]);
  __break(1u);
LABEL_407:
  (*(*(v6 - 8) + 56))(v21, 1, 1, v6);
  (*(v511 + 8))(v21, v540.i64[1]);
  __break(1u);
LABEL_408:
  (*(*(v46 - 8) + 56))(v21, 1, 1, v46);
  result = (*(v512 + 8))(v21, v541);
  __break(1u);
  return result;
}
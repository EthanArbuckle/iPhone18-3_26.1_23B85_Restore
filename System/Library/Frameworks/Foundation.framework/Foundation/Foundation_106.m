uint64_t protocol witness for ConvertibleExpression.convert(state:) in conformance PredicateExpressions.StringContainsRegex<A, B>(uint64_t a1, void *a2)
{
  result = PredicateExpressions.StringContainsRegex.convert(state:)(a1, a2);
  if (v2)
  {
    return v4;
  }

  return result;
}

uint64_t NSComparisonResult.expression.getter(uint64_t a1)
{
  type metadata accessor for NSComparisonResult(0);
  v16[3] = v3;
  v16[0] = a1;
  _expressionCompatibleValue(for:)(v16, v17);
  result = __swift_destroy_boxed_opaque_existential_1(v16);
  if (!v1)
  {
    v5 = v18;
    if (v18)
    {
      v6 = __swift_project_boxed_opaque_existential_1(v17, v18);
      v7 = *(v5 - 8);
      v8 = v7[8];
      v9 = MEMORY[0x1EEE9AC00](v6);
      v10 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
      v11 = v7[2];
      v11(v16 - v10, v9);
      result = _swift_isClassOrObjCExistentialType();
      if (result)
      {
        if (v8 != 8)
        {
          __break(1u);
          return result;
        }

        v12 = *(v16 - v10);
        v13 = v7[1];
        swift_unknownObjectRetain();
        v13(v16 - v10, v5);
      }

      else
      {
        v19 = v16;
        v15 = MEMORY[0x1EEE9AC00](result);
        (v11)(v16 - v10, v16 - v10, v5, v15);
        v12 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        (v7[1])(v16 - v10, v5);
      }

      __swift_destroy_boxed_opaque_existential_1(v17);
    }

    else
    {
      v12 = 0;
    }

    v14 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();
    return v14;
  }

  return result;
}

uint64_t _expressionForComparisonResult<A, B>(_:_:state:options:)(char *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v9 = v8;
  v188 = a4;
  v199 = a2;
  v193 = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v191 = type metadata accessor for Optional();
  v190 = *(v191 - 8);
  MEMORY[0x1EEE9AC00](v191);
  v182 = v175 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v195 = v175 - v18;
  v194 = AssociatedTypeWitness;
  v197 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v19);
  v180 = v175 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v189 = v175 - v22;
  v196 = a6;
  v200 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v181 = v175 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = v175 - v26;
  v203 = a7;
  v28 = swift_getAssociatedTypeWitness();
  v29 = type metadata accessor for Optional();
  v201 = *(v29 - 8);
  v202 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v184 = v175 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = v175 - v32;
  v214 = v28;
  v205 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v183 = v175 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = v175 - v37;
  MEMORY[0x1EEE9AC00](v39);
  v186 = v175 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x1EEE9AC00](v41);
  v44 = *(v43 + 16);
  v204 = a1;
  v187 = v43 + 16;
  v185 = v44;
  (v44)(v175 - v45, a1, a5, v42);
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pMd);
  v46 = swift_dynamicCast();
  v47 = MEMORY[0x1E69E7CC0];
  v192 = a3;
  if (v46)
  {
    outlined init with take of Equatable(&v208, &v211);
    v48 = v212;
    a1 = v213;
    __swift_project_boxed_opaque_existential_1(&v211, v212);
    v49 = (*(a1 + 2))(a3, v48, a1);
    if (!v8)
    {
      v57 = v49;
      v58 = v50;
      __swift_destroy_boxed_opaque_existential_1(&v211);
      if (v58)
      {
        LOBYTE(v211) = 1;
        v59 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        v60 = objc_opt_self();
        v61 = [v60 expressionForConstantValue_];
        swift_unknownObjectRelease();
        LOBYTE(v211) = 0;
        v62 = [v60 expressionForConstantValue_];
        swift_unknownObjectRelease();
        v63 = [v60 expressionForConditional:v57 trueExpression:v61 falseExpression:v62];

        v57 = v63;
      }

      v64 = v197;
      v65 = v196;
      v66 = v199;
      v67 = v200;
      goto LABEL_20;
    }

    __swift_destroy_boxed_opaque_existential_1(&v211);
    v9 = 0;
    v51 = v8;
    v47 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v210 = 0;
    v208 = 0u;
    v209 = 0u;
    outlined destroy of TermOfAddress?(&v208, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMd);
    v51 = 0;
  }

  *&v211 = v47;
  (v203[2])(&v211, a5);
  if (v9)
  {

    (v205[7])(v33, 1, 1, v214);
    (*(v201 + 8))(v33, v202);
    if (v51)
    {
LABEL_8:
      swift_willThrow();
      return a1;
    }

LABEL_7:
    lazy protocol witness table accessor for type NSPredicateConversionError and conformance NSPredicateConversionError();
    swift_allocError();
    *v52 = 2;
    goto LABEL_8;
  }

  v53 = 0;

  v54 = v205;
  v55 = v214;
  (v205[7])(v33, 0, 1, v214);
  (v54[4])(v38, v33, v55);
  v207 = v55;
  v56 = __swift_allocate_boxed_opaque_existential_0(&v206);
  (v54[2])(v56, v38, v55);
  _expressionCompatibleValue(for:)(&v206, &v208);
  __swift_destroy_boxed_opaque_existential_1(&v206);
  if (!*(&v209 + 1))
  {
    (v54[1])(v38, v55);
    outlined destroy of TermOfAddress?(&v208, &_sypSgMd);
    if (v51)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  outlined init with take of Any(&v208, &v211);
  v68 = v212;
  v69 = __swift_project_boxed_opaque_existential_1(&v211, v212);
  v178 = v175;
  v70 = *(v68 - 1);
  v71 = v70[8];
  v72 = MEMORY[0x1EEE9AC00](v69);
  v177 = ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = (v175 - v177);
  v179 = v70;
  v176 = v70[2];
  v176(v175 - v177, v72);
  result = _swift_isClassOrObjCExistentialType();
  if (result)
  {
    if (v71 != 8)
    {
      __break(1u);
      goto LABEL_79;
    }

    v75 = *v73;
    v76 = v179[1];
    swift_unknownObjectRetain();
    v76(v73, v68);
  }

  else
  {
    v175[1] = v175;
    v171 = MEMORY[0x1EEE9AC00](result);
    (v176)(v175 - v177, v73, v68, v171);
    v75 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    (v179[1])(v73, v68);
  }

  v67 = v200;
  v77 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v78 = v51;
  v57 = v77;

  __swift_destroy_boxed_opaque_existential_1(&v211);
  (v205[1])(v38, v214);
  v64 = v197;
  v65 = v196;
  v66 = v199;
LABEL_20:
  v179 = v57;
  v80 = *(v67 + 2);
  a1 = v67 + 16;
  v79 = v80;
  v80(v27, v66, v65);
  if (!swift_dynamicCast())
  {
    v210 = 0;
    v208 = 0u;
    v209 = 0u;
    outlined destroy of TermOfAddress?(&v208, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMd);
    v83 = v195;
    *&v211 = MEMORY[0x1E69E7CC0];
    (*(v193 + 16))(&v211, v65);
    v195 = 0;

    v85 = v194;
    (*(v64 + 56))(v83, 0, 1, v194);
    v86 = v189;
    (*(v64 + 32))(v189, v83, v85);
    v207 = v85;
    v87 = __swift_allocate_boxed_opaque_existential_0(&v206);
    (*(v64 + 16))(v87, v86, v85);
    _expressionCompatibleValue(for:)(&v206, &v208);
    v51 = 0;
    __swift_destroy_boxed_opaque_existential_1(&v206);
    if (!*(&v209 + 1))
    {
      (*(v64 + 8))(v86, v85);
      outlined destroy of TermOfAddress?(&v208, &_sypSgMd);
      if (!v195)
      {
        lazy protocol witness table accessor for type NSPredicateConversionError and conformance NSPredicateConversionError();
        swift_allocError();
        *v84 = 2;
      }

      swift_willThrow();

      return a1;
    }

    v178 = v79;
    v200 = a1;
    outlined init with take of Any(&v208, &v211);
    v53 = v212;
    v97 = __swift_project_boxed_opaque_existential_1(&v211, v212);
    v177 = v175;
    v73 = *(v53 - 1);
    a1 = v73[8];
    v98 = MEMORY[0x1EEE9AC00](v97);
    v71 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF0);
    v68 = (v175 - v71);
    v99 = v73 + 2;
    v27 = v73[2];
    (v27)(v175 - v71, v98);
    result = _swift_isClassOrObjCExistentialType();
    if (result)
    {
      if (a1 != 8)
      {
        __break(1u);
        goto LABEL_81;
      }

      v100 = *v68;
      v101 = v73[1];
      swift_unknownObjectRetain();
      v101(v175 - v71, v53);
      goto LABEL_33;
    }

LABEL_79:
    v176 = v175;
    v172 = MEMORY[0x1EEE9AC00](result);
    (v27)(v175 - v71, v68, v53, v172);
    v100 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    (v73[1])(v68, v53);
LABEL_33:
    v64 = v197;
    v102 = v189;
    v88 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(&v211);
    (*(v64 + 8))(v102, v194);
    goto LABEL_34;
  }

  v178 = v79;
  v200 = a1;
  outlined init with take of Equatable(&v208, &v211);
  v81 = v212;
  v82 = v213;
  __swift_project_boxed_opaque_existential_1(&v211, v212);
  v51 = 0;
  v88 = (*(v82 + 2))(v192, v81, v82);
  v90 = v89;
  __swift_destroy_boxed_opaque_existential_1(&v211);
  if (v90)
  {
    LOBYTE(v211) = 1;
    v91 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v92 = objc_opt_self();
    v93 = [v92 expressionForConstantValue_];
    swift_unknownObjectRelease();
    LOBYTE(v211) = 0;
    v94 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v64 = v197;
    v95 = [v92 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v96 = [v92 expressionForConditional:v88 trueExpression:v93 falseExpression:v95];

    v88 = v96;
  }

LABEL_34:
  a1 = v188;
  v103 = v186;
  v104 = objc_allocWithZone(NSComparisonPredicate);
  v105 = v179;
  v106 = [v104 initWithLeftExpression:v179 rightExpression:v88 modifier:0 type:4 options:a1];

  v185(v103, v204, a5);
  if (!swift_dynamicCast())
  {
    v210 = 0;
    v208 = 0u;
    v209 = 0u;
    outlined destroy of TermOfAddress?(&v208, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMd);
    v27 = 0;
LABEL_38:
    *&v211 = MEMORY[0x1E69E7CC0];
    v111 = v184;
    (v203[2])(&v211, a5);
    v112 = v205;
    if (v51)
    {

      (v112[7])(v111, 1, 1, v214);
      (*(v201 + 8))(v111, v202);
      if (v27)
      {
LABEL_41:
        swift_willThrow();

        return a1;
      }

LABEL_40:
      lazy protocol witness table accessor for type NSPredicateConversionError and conformance NSPredicateConversionError();
      swift_allocError();
      *v113 = 2;
      goto LABEL_41;
    }

    v204 = v106;
    v53 = 0;

    v114 = v214;
    (v112[7])(v111, 0, 1, v214);
    v115 = v183;
    (v112[4])(v183, v111, v114);
    v207 = v114;
    v116 = __swift_allocate_boxed_opaque_existential_0(&v206);
    (v112[2])(v116, v115, v114);
    _expressionCompatibleValue(for:)(&v206, &v208);
    __swift_destroy_boxed_opaque_existential_1(&v206);
    if (!*(&v209 + 1))
    {
      (v112[1])(v115, v114);
      outlined destroy of TermOfAddress?(&v208, &_sypSgMd);
      v106 = v204;
      if (v27)
      {
        goto LABEL_41;
      }

      goto LABEL_40;
    }

    outlined init with take of Any(&v208, &v211);
    v68 = v212;
    v127 = __swift_project_boxed_opaque_existential_1(&v211, v212);
    v203 = v175;
    v99 = *(v68 - 1);
    v128 = v99[8];
    v129 = MEMORY[0x1EEE9AC00](v127);
    v51 = ((v128 + 15) & 0xFFFFFFFFFFFFFFF0);
    a1 = (v175 - v51);
    v130 = v99 + 2;
    v71 = v99[2];
    (v71)(v175 - v51, v129);
    result = _swift_isClassOrObjCExistentialType();
    if (result)
    {
      if (v128 != 8)
      {
        __break(1u);
LABEL_83:
        v205 = v175;
        v174 = MEMORY[0x1EEE9AC00](result);
        (v99)(v175 - v71, v27, v53, v174);
        v154 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        (v130[1])(v27, v53);
        goto LABEL_72;
      }

      v131 = *a1;
      v132 = v99[1];
      swift_unknownObjectRetain();
      v132(v175 - v51, v68);
      goto LABEL_53;
    }

LABEL_81:
    v202 = v175;
    v173 = MEMORY[0x1EEE9AC00](result);
    (v71)(v175 - v51, a1, v68, v173);
    v131 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    (v99[1])(a1, v68);
LABEL_53:
    v64 = v197;
    v124 = v193;
    v126 = v192;
    a1 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(&v211);
    (v205[1])(v183, v214);
    v123 = v182;
    v125 = v199;
    goto LABEL_54;
  }

  outlined init with take of Equatable(&v208, &v211);
  v107 = v212;
  a1 = v213;
  __swift_project_boxed_opaque_existential_1(&v211, v212);
  v108 = v51;
  v109 = (*(a1 + 2))(v192, v107, a1);
  v53 = v51;
  if (v51)
  {
    __swift_destroy_boxed_opaque_existential_1(&v211);
    v51 = 0;
    v27 = v108;
    goto LABEL_38;
  }

  a1 = v109;
  v117 = v110;
  v204 = v106;
  __swift_destroy_boxed_opaque_existential_1(&v211);
  if (v117)
  {
    LOBYTE(v211) = 1;
    v118 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v119 = objc_opt_self();
    v120 = [v119 expressionForConstantValue_];
    swift_unknownObjectRelease();
    LOBYTE(v211) = 0;
    v121 = [v119 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v122 = [v119 expressionForConditional:a1 trueExpression:v120 falseExpression:v121];

    a1 = v122;
  }

  v123 = v182;
  v124 = v193;
  v125 = v199;
  v126 = v192;
LABEL_54:
  v178(v181, v125, v196);
  if (swift_dynamicCast())
  {
    outlined init with take of Equatable(&v208, &v211);
    v133 = v212;
    v134 = v213;
    __swift_project_boxed_opaque_existential_1(&v211, v212);
    v135 = v53;
    v136 = (*(v134 + 2))(v126, v133, v134);
    v68 = v53;
    if (!v53)
    {
      v144 = v136;
      v145 = v137;
      __swift_destroy_boxed_opaque_existential_1(&v211);
      if (v145)
      {
        LOBYTE(v211) = 1;
        v146 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        v147 = objc_opt_self();
        v148 = [v147 expressionForConstantValue_];
        swift_unknownObjectRelease();
        LOBYTE(v211) = 0;
        v149 = [v147 expressionForConstantValue_];
        swift_unknownObjectRelease();
        v150 = [v147 expressionForConditional:v144 trueExpression:v148 falseExpression:v149];

        v144 = v150;
      }

      goto LABEL_73;
    }

    __swift_destroy_boxed_opaque_existential_1(&v211);
    v53 = 0;
    v138 = v135;
  }

  else
  {
    v210 = 0;
    v208 = 0u;
    v209 = 0u;
    outlined destroy of TermOfAddress?(&v208, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMd);
    v138 = 0;
  }

  *&v211 = MEMORY[0x1E69E7CC0];
  (*(v124 + 16))(&v211, v196, v124);
  if (v53)
  {

    (*(v64 + 56))(v123, 1, 1, v194);
    (*(v190 + 8))(v123, v191);
LABEL_61:
    v142 = v204;
    if (!v138)
    {
      lazy protocol witness table accessor for type NSPredicateConversionError and conformance NSPredicateConversionError();
      swift_allocError();
      *v143 = 2;
    }

    swift_willThrow();

    return a1;
  }

  v139 = v194;
  (*(v64 + 56))(v123, 0, 1, v194);
  v140 = v180;
  (*(v64 + 32))(v180, v123, v139);
  v207 = v139;
  v141 = __swift_allocate_boxed_opaque_existential_0(&v206);
  (*(v64 + 16))(v141, v140, v139);
  _expressionCompatibleValue(for:)(&v206, &v208);
  v68 = 0;
  __swift_destroy_boxed_opaque_existential_1(&v206);
  if (!*(&v209 + 1))
  {
    (*(v64 + 8))(v180, v194);
    outlined destroy of TermOfAddress?(&v208, &_sypSgMd);
    goto LABEL_61;
  }

  v195 = v138;
  outlined init with take of Any(&v208, &v211);
  v53 = v212;
  v151 = __swift_project_boxed_opaque_existential_1(&v211, v212);
  v214 = v175;
  v130 = *(v53 - 1);
  v152 = v130[8];
  v153 = MEMORY[0x1EEE9AC00](v151);
  v71 = ((v152 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = (v175 - v71);
  v99 = v130[2];
  (v99)(v175 - v71, v153);
  result = _swift_isClassOrObjCExistentialType();
  if ((result & 1) == 0)
  {
    goto LABEL_83;
  }

  if (v152 == 8)
  {
    v154 = *v27;
    v155 = v130[1];
    swift_unknownObjectRetain();
    v155(v175 - v71, v53);
LABEL_72:
    v156 = v197;
    v157 = v180;
    v158 = v195;
    v144 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(&v211);
    (*(v156 + 8))(v157, v194);
LABEL_73:
    v159 = v204;
    v160 = objc_allocWithZone(NSComparisonPredicate);
    v161 = [v160 initWithLeftExpression:a1 rightExpression:v144 modifier:0 type:0 options:v188];

    v162 = NSComparisonResult.expression.getter(-1);
    if (v68)
    {
    }

    else
    {
      v163 = v162;
      v164 = NSComparisonResult.expression.getter(1);
      v165 = objc_opt_self();
      v166 = v161;
      v167 = v163;
      v168 = [v165 expressionForConditional:v166 trueExpression:v163 falseExpression:v164];

      v169 = NSComparisonResult.expression.getter(0);
      v170 = v159;
      a1 = [v165 expressionForConditional:v170 trueExpression:v169 falseExpression:v168];
    }

    return a1;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for ConvertibleExpression.convert(state:) in conformance PredicateExpressions.StringCaseInsensitiveCompare<A, B>(uint64_t a1, uint64_t a2)
{
  result = PredicateExpressions.StringCaseInsensitiveCompare.convert(state:)(a1, a2, 1);
  if (v2)
  {
    return v4;
  }

  return result;
}

uint64_t PredicateExpressions.StringCaseInsensitiveCompare.convert(state:)(uint64_t a1, uint64_t a2, char *a3)
{
  result = _expressionForComparisonResult<A, B>(_:_:state:options:)(v3, &v3[*(a2 + 68)], a1, a3, *(a2 + 16), *(a2 + 24), *(a2 + 32), *(a2 + 40));
  if (v4)
  {
    return v6;
  }

  return result;
}

uint64_t protocol witness for ConvertibleExpression.convert(state:) in conformance PredicateExpressions.StringLocalizedCompare<A, B>(uint64_t a1, uint64_t a2)
{
  result = PredicateExpressions.StringCaseInsensitiveCompare.convert(state:)(a1, a2, 8);
  if (v2)
  {
    return v4;
  }

  return result;
}

uint64_t PredicateExpressions.StringLocalizedStandardContains.convert(state:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v109 = a1;
  v5 = a2[3];
  v99 = a2[5];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  v97 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v106 = &v94 - v8;
  v100 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v9);
  v96 = &v94 - v10;
  v101 = v5;
  v104 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v103 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a2[4];
  v105 = a2;
  v14 = a2[2];
  v15 = swift_getAssociatedTypeWitness();
  v108 = type metadata accessor for Optional();
  v16 = *(v108 - 1);
  MEMORY[0x1EEE9AC00](v108);
  v18 = &v94 - v17;
  v110 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v107 = &v94 - v20;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v25 + 16);
  v120 = v3;
  v26(v24, v3, v14, v22);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pMd);
  v27 = swift_dynamicCast();
  v28 = MEMORY[0x1E69E7CC0];
  if (v27)
  {
    v95 = v7;
    v98 = AssociatedTypeWitness;
    outlined init with take of Equatable(&v114, &v117);
    v30 = v118;
    v29 = v119;
    __swift_project_boxed_opaque_existential_1(&v117, v118);
    v31 = v111;
    v32 = (*(v29 + 16))(v109, v30, v29);
    v34 = v31;
    if (!v31)
    {
      v41 = v32;
      v42 = v33;
      v111 = 0;
      __swift_destroy_boxed_opaque_existential_1(&v117);
      if (v42)
      {
        LOBYTE(v117) = 1;
        v43 = v41;
        v44 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        v45 = objc_opt_self();
        v46 = [v45 expressionForConstantValue_];
        swift_unknownObjectRelease();
        LOBYTE(v117) = 0;
        v47 = [v45 expressionForConstantValue_];
        swift_unknownObjectRelease();
        v48 = [v45 expressionForConditional:v43 trueExpression:v46 falseExpression:v47];

        v41 = v48;
      }

      v49 = v98;
      v50 = v106;
      v51 = v120;
      v52 = v101;
      goto LABEL_20;
    }

    __swift_destroy_boxed_opaque_existential_1(&v117);
    v35 = 0;
    AssociatedTypeWitness = v98;
    v7 = v95;
    v28 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v116 = 0;
    v114 = 0u;
    v115 = 0u;
    outlined destroy of TermOfAddress?(&v114, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMd);
    v34 = 0;
    v35 = v111;
  }

  *&v117 = v28;
  v36 = v120;
  (*(v13 + 16))(&v117, v14, v13);
  if (v35)
  {

    (*(v110 + 56))(v18, 1, 1, v15);
    (*(v16 + 8))(v18, v108);
    if (v34)
    {
LABEL_8:
      swift_willThrow();
      return v36;
    }

LABEL_7:
    lazy protocol witness table accessor for type NSPredicateConversionError and conformance NSPredicateConversionError();
    swift_allocError();
    *v37 = 2;
    goto LABEL_8;
  }

  v38 = v110;
  (*(v110 + 56))(v18, 0, 1, v15);
  v39 = v107;
  (*(v38 + 32))(v107, v18, v15);
  v113 = v15;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v112);
  (*(v38 + 16))(boxed_opaque_existential_0, v39, v15);
  _expressionCompatibleValue(for:)(v112, &v114);
  __swift_destroy_boxed_opaque_existential_1(v112);
  if (!*(&v115 + 1))
  {
    v85 = *(v38 + 8);
    v36 = (v38 + 8);
    v85(v39, v15);
    outlined destroy of TermOfAddress?(&v114, &_sypSgMd);
    if (v34)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v111 = 0;
  v108 = v34;
  v95 = v7;
  v98 = AssociatedTypeWitness;
  outlined init with take of Any(&v114, &v117);
  v53 = v118;
  v54 = __swift_project_boxed_opaque_existential_1(&v117, v118);
  v55 = &v94;
  v56 = *(v53 - 8);
  v57 = v56[8];
  v58 = MEMORY[0x1EEE9AC00](v54);
  v59 = ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = (&v94 - v59);
  v61 = v56[2];
  v61(&v94 - v59, v58);
  result = _swift_isClassOrObjCExistentialType();
  if (result)
  {
    if (v57 != 8)
    {
      __break(1u);
LABEL_45:
      v111 = &v94;
      v93 = MEMORY[0x1EEE9AC00](result);
      (v61)(&v94 - v55, v60, v53, v93);
      v89 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      (*(v57 + 8))(v60, v53);
      goto LABEL_40;
    }

    v63 = *v60;
    v64 = v56[1];
    swift_unknownObjectRetain();
    v64(&v94 - v59, v53);
  }

  else
  {
    v94 = &v94;
    v92 = MEMORY[0x1EEE9AC00](result);
    (v61)(&v94 - v59, v60, v53, v92);
    v63 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    (v56[1])(v60, v53);
  }

  v52 = v101;
  v41 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(&v117);
  (*(v110 + 8))(v107, v15);
  v49 = v98;
  v50 = v106;
  v51 = v120;
LABEL_20:
  v65 = MEMORY[0x1E69E7CC0];
  v120 = v41;
  v66 = *(v105 + 17);
  (*(v104 + 16))(v103, &v51[v66], v52);
  if (swift_dynamicCast())
  {
    outlined init with take of Equatable(&v114, &v117);
    v67 = v118;
    v68 = v119;
    __swift_project_boxed_opaque_existential_1(&v117, v118);
    v69 = v111;
    v70 = (*(v68 + 16))(v109, v67, v68);
    v59 = v69;
    if (!v69)
    {
      v77 = v70;
      v78 = v71;
      __swift_destroy_boxed_opaque_existential_1(&v117);
      if (v78)
      {
        LOBYTE(v117) = 1;
        v79 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        v80 = objc_opt_self();
        v81 = [v80 expressionForConstantValue_];
        swift_unknownObjectRelease();
        LOBYTE(v117) = 0;
        v82 = [v80 expressionForConstantValue_];
        swift_unknownObjectRelease();
        v83 = [v80 expressionForConditional:v77 trueExpression:v81 falseExpression:v82];

        v77 = v83;
      }

      v84 = v120;
      goto LABEL_41;
    }

    __swift_destroy_boxed_opaque_existential_1(&v117);
    v72 = 0;
  }

  else
  {
    v116 = 0;
    v114 = 0u;
    v115 = 0u;
    outlined destroy of TermOfAddress?(&v114, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMd);
    v59 = 0;
    v72 = v111;
  }

  *&v117 = v65;
  v36 = &v51[v66];
  (*(v99 + 16))(&v117, v52);
  if (v72)
  {

    (*(v100 + 56))(v50, 1, 1, v49);
    (*(v97 + 8))(v50, v95);
    if (v59)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v73 = v100;
  (*(v100 + 56))(v50, 0, 1, v49);
  v74 = v96;
  (*(v73 + 32))(v96, v50, v49);
  v113 = v49;
  v75 = __swift_allocate_boxed_opaque_existential_0(v112);
  (*(v73 + 16))(v75, v74, v49);
  _expressionCompatibleValue(for:)(v112, &v114);
  v108 = 0;
  __swift_destroy_boxed_opaque_existential_1(v112);
  if (!*(&v115 + 1))
  {
    v91 = *(v73 + 8);
    v36 = (v73 + 8);
    v91(v74, v49);
    outlined destroy of TermOfAddress?(&v114, &_sypSgMd);
    if (v59)
    {
      goto LABEL_30;
    }

LABEL_29:
    lazy protocol witness table accessor for type NSPredicateConversionError and conformance NSPredicateConversionError();
    swift_allocError();
    *v76 = 2;
LABEL_30:
    swift_willThrow();

    return v36;
  }

  v98 = v49;
  outlined init with take of Any(&v114, &v117);
  v53 = v118;
  v86 = __swift_project_boxed_opaque_existential_1(&v117, v118);
  v57 = *(v53 - 8);
  v87 = *(v57 + 64);
  v88 = MEMORY[0x1EEE9AC00](v86);
  v55 = ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = (&v94 - v55);
  v61 = *(v57 + 16);
  v61(&v94 - v55, v88);
  result = _swift_isClassOrObjCExistentialType();
  if ((result & 1) == 0)
  {
    goto LABEL_45;
  }

  if (v87 == 8)
  {
    v89 = *v60;
    v90 = *(v57 + 8);
    swift_unknownObjectRetain();
    v90(&v94 - v55, v53);
LABEL_40:
    v77 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(&v117);
    (*(v100 + 8))(v96, v98);
    v84 = v120;
LABEL_41:
    v36 = [objc_allocWithZone(NSComparisonPredicate) initWithLeftExpression:v84 rightExpression:v77 modifier:0 type:99 options:11];

    return v36;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for ConvertibleExpression.convert(state:) in conformance PredicateExpressions.StringLocalizedStandardContains<A, B>(uint64_t a1, void *a2)
{
  result = PredicateExpressions.StringLocalizedStandardContains.convert(state:)(a1, a2);
  if (v2)
  {
    return v4;
  }

  return result;
}

uint64_t NSPredicate.init<A>(_:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v43 = a2;
  v6 = &v52;
  v53[0] = a1[5];
  v5 = v53[0];
  v7 = objc_opt_self();
  v8 = [v7 expressionForEvaluatedObject];
  v53[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation20PredicateExpressionsO10VariableIDVSo12NSExpressionCGMd);
  v9 = static _DictionaryStorage.allocate(capacity:)();

  v10 = v8;
  outlined destroy of TermOfAddress?(v53, &_s10Foundation20PredicateExpressionsO10VariableIDV_So12NSExpressionCtMd);
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(v5);
  v13 = v12;

  if (v13)
  {
    __break(1u);
    goto LABEL_20;
  }

  v9[(v11 >> 6) + 8] |= 1 << v11;
  *(v9[6] + 8 * v11) = v5;
  *(v9[7] + 8 * v11) = v10;
  v15 = v9[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9[2] = v17;
  v54[0] = 1;
  v54[1] = v9;
  v19 = a1[3];
  v18 = a1[4];
  v20 = __swift_project_boxed_opaque_existential_1(a1, v19);
  v21 = MEMORY[0x1EEE9AC00](v20);
  (*(v23 + 16))(&v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v20, v19, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pMd);
  if (swift_dynamicCast())
  {
    outlined init with take of Equatable(&v46, &v49);
    v24 = v50;
    v25 = v51;
    __swift_project_boxed_opaque_existential_1(&v49, v50);
    v29 = (*(v25 + 16))(v54, v24, v25);
    v31 = v30;

    __swift_destroy_boxed_opaque_existential_1(&v49);
    if (v31)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  outlined destroy of TermOfAddress?(&v46, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMd);
  v10 = 0;
  *&v49 = MEMORY[0x1E69E7CC0];
  (*(*(v18 + 8) + 16))(&v45, &v49, v19);

  v44[3] = MEMORY[0x1E69E6370];
  LOBYTE(v44[0]) = v45 & 1;
  _expressionCompatibleValue(for:)(v44, &v46);
  __swift_destroy_boxed_opaque_existential_1(v44);
  if (*(&v47 + 1))
  {
    outlined init with take of Any(&v46, &v49);
    v9 = v50;
    v32 = __swift_project_boxed_opaque_existential_1(&v49, v50);
    v42 = &v40;
    v13 = *(v9 - 1);
    v33 = v13[8];
    v34 = MEMORY[0x1EEE9AC00](v32);
    v6 = ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
    v5 = (&v40 - v6);
    v41 = v13[2];
    v41(&v40 - v6, v34);
    result = _swift_isClassOrObjCExistentialType();
    if (result)
    {
      if (v33 != 8)
      {
        __break(1u);
        return result;
      }

      v35 = *v5;
      v36 = v13[1];
      swift_unknownObjectRetain();
      v36(v5, v9);
      goto LABEL_15;
    }

LABEL_21:
    v40 = &v40;
    v39 = MEMORY[0x1EEE9AC00](result);
    (v41)(&v40 - v6, v5, v9, v39);
    v35 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    (v13[1])(v5, v9);
LABEL_15:
    v29 = [v7 expressionForConstantValue_];
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(&v49);
LABEL_16:
    LOBYTE(v49) = 1;
    v37 = [v7 expressionForConstantValue_];
    swift_unknownObjectRelease();
    [objc_allocWithZone(NSComparisonPredicate) initWithLeftExpression:v29 rightExpression:v37 modifier:0 type:4 options:0];

LABEL_17:
    *&v46 = swift_dynamicCastUnknownClassUnconditional();
    (*(*(v3 - 8) + 32))(&v49, &v46, v3);
    v44[0] = v43;
    v38 = type metadata accessor for Predicate();
    (*(*(v38 - 8) + 8))(a1, v38);
    return v49;
  }

  outlined destroy of TermOfAddress?(&v46, &_sypSgMd);
  lazy protocol witness table accessor for type NSPredicateConversionError and conformance NSPredicateConversionError();
  v26 = swift_allocError();
  *v27 = 2;
  swift_willThrow();

  *&v49 = v43;
  v28 = type metadata accessor for Predicate();
  (*(*(v28 - 8) + 8))(a1, v28);
  return 0;
}

uint64_t NSExpression.init<A, B>(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v59 = a2;
  v57 = type metadata accessor for Optional();
  v56 = *(v57 - 1);
  MEMORY[0x1EEE9AC00](v57);
  v6 = &v53 - v5;
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v55 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &v67;
  v68[0] = a1[5];
  v10 = v68[0];
  v53 = objc_opt_self();
  v12 = [v53 expressionForEvaluatedObject];
  v68[1] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation20PredicateExpressionsO10VariableIDVSo12NSExpressionCGMd);
  v13 = static _DictionaryStorage.allocate(capacity:)();

  v14 = v12;
  outlined destroy of TermOfAddress?(v68, &_s10Foundation20PredicateExpressionsO10VariableIDV_So12NSExpressionCtMd);
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(v10);
  v17 = v16;

  if (v17)
  {
    __break(1u);
    goto LABEL_20;
  }

  v13[(v15 >> 6) + 8] |= 1 << v15;
  *(v13[6] + 8 * v15) = v10;
  *(v13[7] + 8 * v15) = v14;
  v19 = v13[2];
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v13[2] = v21;
  v69[0] = 1;
  v69[1] = v13;
  v23 = a1[3];
  v22 = a1[4];
  v58 = a1;
  v24 = __swift_project_boxed_opaque_existential_1(a1, v23);
  v25 = MEMORY[0x1EEE9AC00](v24);
  (*(v27 + 16))(&v53 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v24, v23, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pMd);
  if (swift_dynamicCast())
  {
    outlined init with take of Equatable(&v61, &v64);
    v28 = v65;
    v29 = v66;
    __swift_project_boxed_opaque_existential_1(&v64, v65);
    v36 = (*(v29 + 16))(v69, v28, v29);
    v38 = v37;

    __swift_destroy_boxed_opaque_existential_1(&v64);
    v39 = v59;
    v40 = v54;
    if (v38)
    {
      LOBYTE(v64) = 1;
      v41 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      v42 = v53;
      v43 = [v53 expressionForConstantValue_];
      swift_unknownObjectRelease();
      LOBYTE(v64) = 0;
      v44 = [v42 expressionForConstantValue_];
      swift_unknownObjectRelease();
      [v42 expressionForConditional:v36 trueExpression:v43 falseExpression:v44];
    }

    goto LABEL_16;
  }

  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  outlined destroy of TermOfAddress?(&v61, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMd);
  a1 = 0;
  *&v64 = MEMORY[0x1E69E7CC0];
  (*(*(v22 + 8) + 16))(&v64, v23);

  (*(v7 + 56))(v6, 0, 1, a3);
  v30 = v55;
  (*(v7 + 32))(v55, v6, a3);
  v60[3] = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v60);
  (*(v7 + 16))(boxed_opaque_existential_0, v30, a3);
  _expressionCompatibleValue(for:)(v60, &v61);
  __swift_destroy_boxed_opaque_existential_1(v60);
  if (*(&v62 + 1))
  {
    outlined init with take of Any(&v61, &v64);
    v13 = v65;
    v45 = __swift_project_boxed_opaque_existential_1(&v64, v65);
    v57 = &v53;
    v15 = *(v13 - 1);
    v46 = *(v15 + 64);
    v47 = MEMORY[0x1EEE9AC00](v45);
    v6 = ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
    v10 = (&v53 - v6);
    v11 = *(v15 + 16);
    (v11)(&v53 - v6, v47);
    result = _swift_isClassOrObjCExistentialType();
    if (result)
    {
      if (v46 != 8)
      {
        __break(1u);
        return result;
      }

      v48 = *v10;
      v49 = *(v15 + 8);
      swift_unknownObjectRetain();
      v49(&v53 - v6, v13);
      goto LABEL_15;
    }

LABEL_21:
    v56 = &v53;
    v52 = MEMORY[0x1EEE9AC00](result);
    (v11)(&v53 - v6, v10, v13, v52);
    v48 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    (*(v15 + 8))(v10, v13);
LABEL_15:
    v39 = v59;
    v40 = v54;
    v50 = [v53 expressionForConstantValue_];
    swift_unknownObjectRelease();

    (*(v7 + 8))(v55, a3);
    __swift_destroy_boxed_opaque_existential_1(&v64);
LABEL_16:
    *&v61 = swift_dynamicCastUnknownClassUnconditional();
    (*(*(v40 - 8) + 32))(&v64, &v61, v40);
    v60[0] = v39;
    v51 = type metadata accessor for Expression();
    (*(*(v51 - 8) + 8))(v58, v51);
    return v64;
  }

  (*(v7 + 8))(v30, a3);
  outlined destroy of TermOfAddress?(&v61, &_sypSgMd);
  v32 = v59;
  lazy protocol witness table accessor for type NSPredicateConversionError and conformance NSPredicateConversionError();
  v33 = swift_allocError();
  *v34 = 2;
  swift_willThrow();

  *&v64 = v32;
  v35 = type metadata accessor for Expression();
  (*(*(v35 - 8) + 8))(v58, v35);
  return 0;
}

id @nonobjc NSKeyPathExpression.init(operand:andKeyPath:)(void *a1, void *a2)
{
  v4 = a1[3];
  if (!v4)
  {
    v11 = 0;
    v12 = a2[3];
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_5:
    v18 = 0;
    goto LABEL_6;
  }

  v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = *(v4 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v8);
  v11 = _bridgeAnythingToObjectiveC<A>(_:)();
  (*(v7 + 8))(v10, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v12 = a2[3];
  if (!v12)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = __swift_project_boxed_opaque_existential_1(a2, v12);
  v14 = *(v12 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, v15);
  v18 = _bridgeAnythingToObjectiveC<A>(_:)();
  (*(v14 + 8))(v17, v12);
  __swift_destroy_boxed_opaque_existential_1(a2);
LABEL_6:
  v19 = [v2 initWithOperand:v11 andKeyPath:v18];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v19;
}

unint64_t lazy protocol witness table accessor for type NSPredicateConversionError and conformance NSPredicateConversionError()
{
  result = lazy protocol witness table cache variable for type NSPredicateConversionError and conformance NSPredicateConversionError;
  if (!lazy protocol witness table cache variable for type NSPredicateConversionError and conformance NSPredicateConversionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSPredicateConversionError and conformance NSPredicateConversionError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSPredicateConversionError and conformance NSPredicateConversionError;
  if (!lazy protocol witness table cache variable for type NSPredicateConversionError and conformance NSPredicateConversionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSPredicateConversionError and conformance NSPredicateConversionError);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for PredicateExpressions.Value<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for PredicateExpressions.Variable<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for PredicateExpressions.KeyPath<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for PredicateExpressions.ExpressionEvaluate<A, Pack{repeat B}, C>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for PredicateExpressions.Arithmetic<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for PredicateExpressions.UnaryMinus<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for PredicateExpressions.Filter<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for PredicateExpressions.FloatDivision<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for PredicateExpressions.ClosedRange<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for PredicateExpressions.SequenceMaximum<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for PredicateExpressions.SequenceMinimum<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for PredicateExpressions.Conditional<A, B, C>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for PredicateExpressions.NilCoalesce<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for PredicateExpressions.OptionalFlatMap<A, B, C, D>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for [A](uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for <> PredicateExpressions.CollectionIndexSubscript<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

{
  return instantiation function for generic protocol witness table for <> PredicateExpressions.StringLocalizedStandardContains<A, B>(a1);
}

uint64_t instantiation function for generic protocol witness table for PredicateExpressions.DictionaryKeySubscript<A, B, C>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for PredicateExpressions.NilLiteral<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t specialized PredicateExpressions.Variable.convert(state:)(uint64_t result)
{
  v2 = v1;
  v3 = *(result + 8);
  if (*(v3 + 16))
  {
    result = specialized __RawDictionaryStorage.find<A>(_:)(*v2);
    if (v4)
    {
      return *(*(v3 + 56) + 8 * result);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized PredicateExpressions.RangeExpressionContains._expressionForBound(_:)(void *a1)
{
  v2 = a1[3];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v2);
  v17[3] = v2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v17);
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_0, v3, v2);
  _expressionCompatibleValue(for:)(v17, v18);
  result = __swift_destroy_boxed_opaque_existential_1(v17);
  if (!v1)
  {
    v6 = v19;
    if (v19)
    {
      v7 = __swift_project_boxed_opaque_existential_1(v18, v19);
      v8 = *(v6 - 8);
      v9 = v8[8];
      v10 = MEMORY[0x1EEE9AC00](v7);
      v11 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
      v12 = v8[2];
      v12(v17 - v11, v10);
      result = _swift_isClassOrObjCExistentialType();
      if (result)
      {
        if (v9 != 8)
        {
          __break(1u);
          return result;
        }

        v13 = *(v17 - v11);
        v14 = v8[1];
        swift_unknownObjectRetain();
        v14(v17 - v11, v6);
      }

      else
      {
        v20 = v17;
        v16 = MEMORY[0x1EEE9AC00](result);
        (v12)(v17 - v11, v17 - v11, v6, v16);
        v13 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        (v8[1])(v17 - v11, v6);
      }

      __swift_destroy_boxed_opaque_existential_1(v18);
    }

    else
    {
      v13 = 0;
    }

    v15 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();
    return v15;
  }

  return result;
}

uint64_t outlined init with take of PredicateExpressions.PredicateRegex(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PredicateExpressions.PredicateRegex(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AnyRange(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 81))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 80);
  if (v3 >= 5)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AnyRange(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for AnyRange(uint64_t result, unsigned int a2)
{
  if (a2 > 4)
  {
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 5;
    LOBYTE(a2) = 5;
  }

  *(result + 80) = a2;
  return result;
}

unint64_t static Predicate.true.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if (a1 == 1)
  {
    TupleTypeMetadata = type metadata accessor for PredicateExpressions.Variable();
    v9 = TupleTypeMetadata;
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
    if (a1)
    {
      v12 = a2 & 0xFFFFFFFFFFFFFFFELL;
      v13 = (&v23 - v11);
      v14 = a1;
      do
      {
        v12 += 8;
        *v13++ = type metadata accessor for PredicateExpressions.Variable();
        --v14;
      }

      while (v14);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v9 = TupleTypeMetadata;
  }

  v15 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (one-time initialization token for nextID != -1)
    {
      swift_once();
    }

    v18 = (v9 + 32);
    v19 = a1;
    do
    {
      if (a1 == 1)
      {
        v20 = 0;
      }

      else
      {
        v20 = *v18;
      }

      *&v17[v20] = atomic_fetch_add_explicit(&static PredicateExpressions.VariableID.nextID, 1uLL, memory_order_relaxed);
      v18 += 4;
      --v19;
    }

    while (v19);
  }

  v21 = type metadata accessor for Predicate();
  (*(v15 + 32))(a4 + *(v21 + 36), v17, v9);
  *(a4 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_SbGMd);
  result = lazy protocol witness table accessor for type PredicateExpressions.Value<Bool> and conformance <A> PredicateExpressions.Value<A>();
  *(a4 + 32) = result;
  *a4 = a3;
  return result;
}

uint64_t Sequence.filter(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = MEMORY[0x1EEE9AC00](a1);
  (*(v9 + 16))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v3, a2, v7);
  v12 = a2;
  v13 = a3;
  v14 = a1;
  return Sequence.filter(_:)();
}

uint64_t closure #1 in Sequence.filter(_:)(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v10 - v5;
  (*(v3 + 16))(&v10 - v5, a1, AssociatedTypeWitness, v4);
  v10 = AssociatedTypeWitness;
  v11 = v6;
  v7 = type metadata accessor for Predicate();
  v8 = Predicate.evaluate(_:)(&v11, v7);
  (*(v3 + 8))(v6, AssociatedTypeWitness);
  return v8 & 1;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Value<Bool> and conformance <A> PredicateExpressions.Value<A>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Value<Bool> and conformance <A> PredicateExpressions.Value<A>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Value<Bool> and conformance <A> PredicateExpressions.Value<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO5ValueVy_SbGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Value<Bool> and conformance <A> PredicateExpressions.Value<A>);
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay10Foundation20PredicateExpressionsO10VariableIDVG_SSs5NeverOTg50118_s10Foundation17createDescription33_0E6808C72783E37C9BBD8DD29A9ABF15LL8variable10expression8typeName10outputTypeSSAA20ef2O8G70Vy_xGxQp_q0_SSq_mtRvzAA08StandardR10ExpressionR0_r1_lFSSAI0T2IDVXEfU0_AF26DebugStringConversionStateVTf1cn_n(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v20 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = v20;
    v6 = (a1 + 32);
    do
    {
      v8 = *v6++;
      v7 = v8;
      v9 = *a2;
      if (*(*a2 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
      {
        v12 = (*(v9 + 56) + 16 * v10);
        v13 = *v12;
        v14 = v12[1];
      }

      else
      {
        _StringGuts.grow(_:)(17);

        v15 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x1865CB0E0](v15);

        v13 = 0x566E776F6E6B6E75;
        v14 = 0xEF656C6261697261;
      }

      v17 = *(v20 + 16);
      v16 = *(v20 + 24);
      if (v17 >= v16 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
      }

      *(v20 + 16) = v17 + 1;
      v18 = v20 + 16 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v14;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t DebugStringConversionState.subscript.getter(void *a1)
{
  v2 = *v1;
  if (*(v2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(*a1), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 16 * v3);

    return v5;
  }

  else
  {
    _StringGuts.grow(_:)(17);

    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v7);

    return 0x566E776F6E6B6E75;
  }
}

uint64_t PredicateExpressions.Variable.debugString(state:)(__int128 *a1)
{
  v2 = *v1;
  v3 = *(a1 + 2);
  v4 = *(a1 + 3);
  v7 = *a1;
  v8 = v3;
  v9 = v4;
  v6 = v2;
  return DebugStringConversionState.subscript.getter(&v6);
}

unint64_t PredicateExpressions.KeyPath<>.debugString(state:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a3 + 16))(a1, *(a2 + 16));
  v5 = v4;
  v6 = AnyKeyPath.debugDescription.getter();
  v24 = 46;
  v25 = 0xE100000000000000;
  v23[2] = &v24;
  result = specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(0x7FFFFFFFFFFFFFFFLL, 1, partial apply for specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:), v23, v6, v7, &v24);
  v9 = result;
  v10 = *(result + 16);
  v11 = result + 16 + 32 * v10;
  v12 = v10;
  do
  {
    v13 = v12;
    if (v12 < 2)
    {
      break;
    }

    if (v12 > *(v9 + 16))
    {
      __break(1u);
      goto LABEL_13;
    }

    v14 = *(v11 - 16);
    v15 = *(v11 - 8);
    v11 -= 32;

    LOBYTE(v14) = specialized Sequence<>.starts<A>(with:)(62, 0xE100000000000000, v14, v15);

    v12 = v13 - 1;
  }

  while ((v14 & 1) == 0);
  if (v10 < v13)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v16 = *(v9 + 16);
  if (v16 >= v13 && v16 >= v10)
  {
    v24 = v9;
    v25 = v9 + 32;
    v26 = v13;
    v27 = (2 * v10) | 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVySsGMd);
    lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type ArraySlice<Substring> and conformance ArraySlice<A>, &_ss10ArraySliceVySsGMd);
    lazy protocol witness table accessor for type Substring and conformance Substring();
    v18 = Sequence<>.joined(separator:)();
    v20 = v19;

    v24 = 46;
    v25 = 0xE100000000000000;
    MEMORY[0x1865CB0E0](v18, v20);

    v21 = v24;
    v22 = v25;
    v24 = v3;
    v25 = v5;

    MEMORY[0x1865CB0E0](v21, v22);

    return v24;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t PredicateExpressions.Value<A>.debugString(state:)(uint64_t a1, uint64_t a2)
{
  v39 = *(a2 + 16);
  v4 = v39;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v38);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_0, v2, v4);
  outlined init with copy of Any(v38, v37);
  outlined init with copy of Any(v37, &v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
  swift_dynamicCast();
  if (!v36)
  {
    v9 = 0xE300000000000000;
    v8 = 7104878;
    goto LABEL_18;
  }

  outlined destroy of TermOfAddress?(&v35, &_sypSgMd);
  if (swift_dynamicCast())
  {
    *&v35 = 0;
    *(&v35 + 1) = 0xE000000000000000;
    if (v27)
    {
      v6 = 1702195828;
    }

    else
    {
      v6 = 0x65736C6166;
    }

    if (v27)
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xE500000000000000;
    }

    MEMORY[0x1865CB0E0](v6, v7);

    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSj_pMd);
  if (swift_dynamicCast())
  {
    outlined init with take of Equatable(&v35, &v27);
    *&v34 = 0;
    *(&v34 + 1) = 0xE000000000000000;
    _print_unlocked<A, B>(_:_:)();
    v9 = *(&v34 + 1);
    v8 = v34;
    __swift_destroy_boxed_opaque_existential_1(&v27);
    goto LABEL_18;
  }

  if (swift_dynamicCast())
  {
    v27 = 34;
    v28 = 0xE100000000000000;
    v33 = v35;
    v31 = 34;
    v32 = 0xE100000000000000;
    v29 = 8796;
    v30 = 0xE200000000000000;
    lazy protocol witness table accessor for type String and conformance String();
    lazy protocol witness table accessor for type String and conformance String();
    RangeReplaceableCollection<>.replacing<A, B>(_:with:maxReplacements:)();

    MEMORY[0x1865CB0E0](v34, *(&v34 + 1));

    v10 = 34;
  }

  else
  {
    if (swift_dynamicCast())
    {
      *&v35 = 0;
      *(&v35 + 1) = 0xE000000000000000;
      MEMORY[0x1865CB0E0](0x20657461443CLL, 0xE600000000000000);
      Double.write<A>(to:)();
      MEMORY[0x1865CB0E0](62, 0xE100000000000000);
LABEL_10:
      v9 = *(&v35 + 1);
      v8 = v35;
      goto LABEL_18;
    }

    if (swift_dynamicCast())
    {
      v21 = v35;
      v27 = 0x20617461443CLL;
      v28 = 0xE600000000000000;
      v22 = _s10Foundation6Base64O14encodeToString5bytes7optionsSSx_So06NSDataB15EncodingOptionsVtSlRzs5UInt8V7ElementRtzlFZAA4DataV_Tt1g5(v35, *(&v35 + 1), 0);
      MEMORY[0x1865CB0E0](v22);

      MEMORY[0x1865CB0E0](62, 0xE100000000000000);
      outlined consume of Data._Representation(v21, *(&v21 + 1));
      goto LABEL_17;
    }

    if (swift_dynamicCast())
    {
      v34 = v35;
      v27 = 0x20444955553CLL;
      v28 = 0xE600000000000000;
      v23 = UUID.uuidString.getter();
    }

    else
    {
      v27 = 60;
      v28 = 0xE100000000000000;
      __swift_project_boxed_opaque_existential_1(v38, v39);
      swift_getDynamicType();
      v25 = _typeName(_:qualified:)();
      MEMORY[0x1865CB0E0](v25);

      MEMORY[0x1865CB0E0](8250, 0xE200000000000000);
      outlined init with copy of Any(v38, &v35);
      *&v34 = String.init<A>(describing:)();
      *(&v34 + 1) = v26;
      *&v33 = 10;
      *(&v33 + 1) = 0xE100000000000000;
      v31 = 8236;
      v32 = 0xE200000000000000;
      lazy protocol witness table accessor for type String and conformance String();
      lazy protocol witness table accessor for type String and conformance String();
      RangeReplaceableCollection<>.replacing<A, B>(_:with:maxReplacements:)();

      v24 = *(&v35 + 1);
      v23 = v35;
    }

    MEMORY[0x1865CB0E0](v23, v24);

    v10 = 62;
  }

  MEMORY[0x1865CB0E0](v10, 0xE100000000000000);
LABEL_17:
  v8 = v27;
  v9 = v28;
LABEL_18:
  __swift_destroy_boxed_opaque_existential_1(v37);
  *&v35 = 0;
  *(&v35 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(18);

  *&v35 = 0x65727574706163;
  *(&v35 + 1) = 0xE700000000000000;
  v11 = *(a1 + 24);
  v27 = v11;
  v12 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v12);

  MEMORY[0x1865CB0E0](10272, 0xE200000000000000);
  __swift_project_boxed_opaque_existential_1(v38, v39);
  swift_getDynamicType();
  v13 = _typeName(_:qualified:)();
  MEMORY[0x1865CB0E0](v13);

  MEMORY[0x1865CB0E0](2112041, 0xE300000000000000);
  MEMORY[0x1865CB0E0](v8, v9);

  v14 = v35;
  v15 = *(a1 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
  }

  v17 = *(v15 + 2);
  v16 = *(v15 + 3);
  if (v17 >= v16 >> 1)
  {
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v15);
  }

  *(v15 + 2) = v17 + 1;
  *&v15[16 * v17 + 32] = v14;
  *(a1 + 16) = v15;
  *&v35 = 0x65727574706163;
  *(&v35 + 1) = 0xE700000000000000;
  v27 = v11;
  v18 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v18);

  if (__OFADD__(v11, 1))
  {
    __break(1u);
  }

  else
  {
    v20 = v35;
    *(a1 + 24) = v11 + 1;
    __swift_destroy_boxed_opaque_existential_1(v38);
    return v20;
  }

  return result;
}

uint64_t PredicateExpressions.Arithmetic<>.debugString(state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *&asc_181245BA0[8 * *v4];
  v9 = (*(a3 + 16))(a1, *(a2 + 16));
  MEMORY[0x1865CB0E0](v9);

  MEMORY[0x1865CB0E0](32, 0xE100000000000000);
  MEMORY[0x1865CB0E0](v8, 0xE100000000000000);

  MEMORY[0x1865CB0E0](32, 0xE100000000000000);
  v10 = (*(a4 + 16))(a1, *(a2 + 24), a4);
  MEMORY[0x1865CB0E0](v10);

  MEMORY[0x1865CB0E0](41, 0xE100000000000000);
  return 40;
}

uint64_t PredicateExpressions.Comparison<>.debugString(state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 62;
  v6 = 0xE200000000000000;
  if (*v4 == 2)
  {
    v6 = 0xE100000000000000;
  }

  else
  {
    v5 = 15678;
  }

  v7 = 60;
  v8 = 0xE200000000000000;
  if (*v4)
  {
    v7 = 15676;
  }

  else
  {
    v8 = 0xE100000000000000;
  }

  if (*v4 <= 1u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  if (*v4 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  v14 = (*(a3 + 16))(a1, *(a2 + 16));
  MEMORY[0x1865CB0E0](v14);

  MEMORY[0x1865CB0E0](32, 0xE100000000000000);
  MEMORY[0x1865CB0E0](v9, v10);

  MEMORY[0x1865CB0E0](32, 0xE100000000000000);
  v15 = (*(a4 + 16))(a1, *(a2 + 24), a4);
  MEMORY[0x1865CB0E0](v15);

  MEMORY[0x1865CB0E0](41, 0xE100000000000000);
  return 40;
}

uint64_t PredicateExpressions.Conditional<>.debugString(state:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  _StringGuts.grow(_:)(32);

  v10 = (*(a3 + 16))(a1, a2[2], a3);
  MEMORY[0x1865CB0E0](v10);

  MEMORY[0x1865CB0E0](0x202020200A7B20, 0xE700000000000000);
  v11 = (*(a4 + 16))(a1, a2[3], a4);
  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v11;
  }

  v14 = 7;
  if (((v12 >> 60) & ((v11 & 0x800000000000000) == 0)) != 0)
  {
    v14 = 11;
  }

  v15 = v14 | (v13 << 16);
  if (specialized Sequence<>.starts<A>(with:)())
  {
    v16 = String.index(after:)();
  }

  else
  {
    v16 = 15;
  }

  v17._countAndFlagsBits = 41;
  v17._object = 0xE100000000000000;
  result = String.hasSuffix(_:)(v17);
  if (result)
  {
    result = String.index(before:)();
    v15 = result;
  }

  if (v15 >> 14 < v16 >> 14)
  {
    __break(1u);
  }

  else
  {
    String.subscript.getter();
    lazy protocol witness table accessor for type Substring and conformance Substring();
    lazy protocol witness table accessor for type String and conformance String();
    RangeReplaceableCollection<>.replacing<A, B>(_:with:maxReplacements:)();

    v19 = MEMORY[0x1865CAE80](0, 0xE000000000000000);
    v21 = v20;

    MEMORY[0x1865CB0E0](v19, v21);

    MEMORY[0x1865CB0E0](0x2065736C65207D0ALL, 0xEE00202020200A7BLL);
    v22 = (*(a5 + 16))(a1, a2[4], a5);
    v24 = HIBYTE(v23) & 0xF;
    if ((v23 & 0x2000000000000000) == 0)
    {
      v24 = v22;
    }

    v25 = 7;
    if (((v23 >> 60) & ((v22 & 0x800000000000000) == 0)) != 0)
    {
      v25 = 11;
    }

    v26 = v25 | (v24 << 16);
    if (specialized Sequence<>.starts<A>(with:)())
    {
      v27 = String.index(after:)();
    }

    else
    {
      v27 = 15;
    }

    v28._countAndFlagsBits = 41;
    v28._object = 0xE100000000000000;
    result = String.hasSuffix(_:)(v28);
    if (result)
    {
      result = String.index(before:)();
      v26 = result;
    }

    if (v26 >> 14 >= v27 >> 14)
    {
      String.subscript.getter();
      RangeReplaceableCollection<>.replacing<A, B>(_:with:maxReplacements:)();

      v29 = MEMORY[0x1865CAE80](0, 0xE000000000000000);
      v31 = v30;

      MEMORY[0x1865CB0E0](v29, v31);

      MEMORY[0x1865CB0E0](32010, 0xE200000000000000);
      return 2123369;
    }
  }

  __break(1u);
  return result;
}

uint64_t PredicateExpressions.CollectionContainsCollection<>.debugString(state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = (*(a3 + 16))(a1, *(a2 + 16));
  MEMORY[0x1865CB0E0](0x6E6961746E6F632ELL, 0xEA00000000002873);
  v7 = (*(a4 + 16))(a1, *(a2 + 24), a4);
  MEMORY[0x1865CB0E0](v7);

  MEMORY[0x1865CB0E0](41, 0xE100000000000000);
  return v9;
}

uint64_t PredicateExpressions.ConditionalCast<>.debugString(state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = (*(a3 + 16))(a1, *(a2 + 16));
  MEMORY[0x1865CB0E0](v7);

  MEMORY[0x1865CB0E0](a4, a5);
  v8 = _typeName(_:qualified:)();
  MEMORY[0x1865CB0E0](v8);

  MEMORY[0x1865CB0E0](41, 0xE100000000000000);
  return 40;
}

uint64_t PredicateExpressions.SequenceMinimum<>.debugString(state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(a3 + 16))(a1, *(a2 + 16));
  MEMORY[0x1865CB0E0](a4, a5);
  return v8;
}

uint64_t PredicateExpressions.OptionalFlatMap<>.debugString(state:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v67 = *(a2 + 72);
  v9 = *(v4 + v67);
  *&v71 = 0x656C626169726176;
  *(&v71 + 1) = 0xE800000000000000;
  v10 = a1[1];
  v70[0] = v10;
  v11 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v11);

  v69 = v71;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v71 = *a1;
  v13 = v71;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(v9);
  v16 = *(v71 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = v14;
  if (*(v71 + 24) >= v18)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v19 = v71;
      v23 = *(&v69 + 1);
      v22 = v69;
      if ((v14 & 1) == 0)
      {
LABEL_26:
        specialized _NativeDictionary._insert(at:key:value:)(v15, v9, v22, v23, v19);
        goto LABEL_27;
      }

LABEL_8:
      v24 = (*(v19 + 56) + 16 * v15);
      *v24 = v22;
      v24[1] = v23;

LABEL_27:
      *a1 = v19;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
      }

      else
      {
        a1[1] = v10 + 1;
        *&v71 = 0;
        *(&v71 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(28);
        v42 = (*(a3 + 16))(a1, *(a2 + 16));
        v44 = v43;

        v74 = v42;
        v75 = v44;
        MEMORY[0x1865CB0E0](0x70614D74616C662ELL, 0xEB00000000207B28);
        v45 = a1[2];
        v46 = a1[3];
        v47 = *(v6 + v67);
        v71 = *a1;
        v72 = v45;
        v73 = v46;
        v70[0] = v47;
        v48 = DebugStringConversionState.subscript.getter(v70);
        MEMORY[0x1865CB0E0](v48);

        MEMORY[0x1865CB0E0](0x202020200A6E6920, 0xE800000000000000);
        v49 = (*(a4 + 16))(a1, *(a2 + 32));
        v51 = HIBYTE(v50) & 0xF;
        if ((v50 & 0x2000000000000000) == 0)
        {
          v51 = v49;
        }

        v52 = 7;
        if (((v50 >> 60) & ((v49 & 0x800000000000000) == 0)) != 0)
        {
          v52 = 11;
        }

        v53 = v52 | (v51 << 16);
        if (specialized Sequence<>.starts<A>(with:)())
        {
          v54 = String.index(after:)();
        }

        else
        {
          v54 = 15;
        }

        v55._countAndFlagsBits = 41;
        v55._object = 0xE100000000000000;
        if (String.hasSuffix(_:)(v55))
        {
          v53 = String.index(before:)();
        }

        if (v53 >> 14 >= v54 >> 14)
        {
          v70[0] = String.subscript.getter();
          v70[1] = v56;
          v70[2] = v57;
          v70[3] = v58;
          lazy protocol witness table accessor for type Substring and conformance Substring();
          lazy protocol witness table accessor for type String and conformance String();
          RangeReplaceableCollection<>.replacing<A, B>(_:with:maxReplacements:)();

          v59 = MEMORY[0x1865CAE80](v71, *(&v71 + 1), v72, v73);
          v61 = v60;

          MEMORY[0x1865CB0E0](v59, v61);

          MEMORY[0x1865CB0E0](2718986, 0xE300000000000000);
          return v74;
        }
      }

      __break(1u);
      goto LABEL_41;
    }

LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation20PredicateExpressionsO10VariableIDVSSGMd);
    v25 = static _DictionaryStorage.copy(original:)();
    v19 = v25;
    if (*(v71 + 16))
    {
      v26 = (v25 + 64);
      v27 = (v71 + 64);
      v28 = ((1 << *(v19 + 32)) + 63) >> 6;
      v63 = v71 + 64;
      if (v19 != v71 || v26 >= &v27[8 * v28])
      {
        memmove(v26, v27, 8 * v28);
      }

      v29 = 0;
      *(v19 + 16) = *(v71 + 16);
      v30 = 1 << *(v13 + 32);
      v31 = -1;
      if (v30 < 64)
      {
        v31 = ~(-1 << v30);
      }

      v32 = v31 & *(v13 + 64);
      v33 = (v30 + 63) >> 6;
      v64 = v33;
      if (v32)
      {
        do
        {
          v34 = __clz(__rbit64(v32));
          v65 = (v32 - 1) & v32;
LABEL_23:
          v37 = v34 | (v29 << 6);
          v38 = (*(v13 + 56) + 16 * v37);
          v40 = *v38;
          v39 = v38[1];
          *(*(v19 + 48) + 8 * v37) = *(*(v13 + 48) + 8 * v37);
          v41 = (*(v19 + 56) + 16 * v37);
          *v41 = v40;
          v41[1] = v39;

          v33 = v64;
          v32 = v65;
        }

        while (v65);
      }

      v35 = v29;
      while (1)
      {
        v29 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        if (v29 >= v33)
        {
          goto LABEL_25;
        }

        v36 = *(v63 + 8 * v29);
        ++v35;
        if (v36)
        {
          v34 = __clz(__rbit64(v36));
          v65 = (v36 - 1) & v36;
          goto LABEL_23;
        }
      }

LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

LABEL_25:

    v23 = *(&v69 + 1);
    v22 = v69;
    if ((v5 & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_8;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, isUniquelyReferenced_nonNull_native);
  v19 = v71;
  v20 = specialized __RawDictionaryStorage.find<A>(_:)(v9);
  if ((v5 & 1) == (v21 & 1))
  {
    v15 = v20;
    v23 = *(&v69 + 1);
    v22 = v69;
    if ((v5 & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_8;
  }

LABEL_42:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t PredicateExpressions.DictionaryKeyDefaultValueSubscript<>.debugString(state:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  _StringGuts.grow(_:)(19);
  v10 = (*(a3 + 16))(a1, a2[2], a3);

  MEMORY[0x1865CB0E0](91, 0xE100000000000000);
  v11 = (*(a4 + 16))(a1, a2[3], a4);
  MEMORY[0x1865CB0E0](v11);

  MEMORY[0x1865CB0E0](0x6C7561666564202CLL, 0xEB00000000203A74);
  v12 = (*(a5 + 16))(a1, a2[4], a5);
  MEMORY[0x1865CB0E0](v12);

  MEMORY[0x1865CB0E0](93, 0xE100000000000000);
  return v10;
}

uint64_t PredicateExpressions.Equal<>.debugString(state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = (*(a3 + 16))(a1, *(a2 + 16));
  MEMORY[0x1865CB0E0](v11);

  MEMORY[0x1865CB0E0](a5, a6);
  v12 = (*(a4 + 16))(a1, *(a2 + 24), a4);
  MEMORY[0x1865CB0E0](v12);

  MEMORY[0x1865CB0E0](41, 0xE100000000000000);
  return 40;
}

uint64_t PredicateExpressions.UnaryMinus<>.debugString(state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (*(a3 + 16))(a1, *(a2 + 16));
  MEMORY[0x1865CB0E0](v4);

  return a4;
}

uint64_t PredicateExpressions.Conjunction<>.debugString(state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(a3 + 16))(a1, *(a2 + 16));
  MEMORY[0x1865CB0E0](v9);

  MEMORY[0x1865CB0E0](a5, 0xE400000000000000);
  v10 = (*(a4 + 16))(a1, *(a2 + 24), a4);
  MEMORY[0x1865CB0E0](v10);

  MEMORY[0x1865CB0E0](41, 0xE100000000000000);
  return 40;
}

uint64_t PredicateExpressions.CollectionIndexSubscript<>.debugString(state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = (*(a3 + 16))(a1, *(a2 + 16));
  MEMORY[0x1865CB0E0](a5, a6);
  v13 = (*(a4 + 16))(a1, *(a2 + 24), a4);
  MEMORY[0x1865CB0E0](v13);

  MEMORY[0x1865CB0E0](a7, 0xE100000000000000);
  return v15;
}

uint64_t PredicateExpressions.DictionaryKeySubscript<>.debugString(state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = (*(a3 + 16))(a1, *(a2 + 16));
  MEMORY[0x1865CB0E0](a5, a6);
  v13 = (*(a4 + 16))(a1, *(a2 + 24), a4);
  MEMORY[0x1865CB0E0](v13);

  MEMORY[0x1865CB0E0](a7, 0xE100000000000000);
  return v15;
}

uint64_t PredicateExpressions.SequenceStartsWith<>.debugString(state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _StringGuts.grow(_:)(19);
  v8 = (*(a3 + 16))(a1, *(a2 + 16), a3);

  MEMORY[0x1865CB0E0](0x287374726174732ELL, 0xEE00203A68746977);
  v9 = (*(a4 + 16))(a1, *(a2 + 24), a4);
  MEMORY[0x1865CB0E0](v9);

  MEMORY[0x1865CB0E0](41, 0xE100000000000000);
  return v8;
}

uint64_t PredicateExpressions.SequenceContainsWhere<>.debugString(state:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v67 = *(a2 + 64);
  v9 = *(v4 + v67);
  *&v71 = 0x656C626169726176;
  *(&v71 + 1) = 0xE800000000000000;
  v10 = a1[1];
  v70[0] = v10;
  v11 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v11);

  v69 = v71;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v71 = *a1;
  v13 = v71;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(v9);
  v16 = *(v71 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = v14;
  if (*(v71 + 24) >= v18)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v19 = v71;
      v23 = *(&v69 + 1);
      v22 = v69;
      if ((v14 & 1) == 0)
      {
LABEL_26:
        specialized _NativeDictionary._insert(at:key:value:)(v15, v9, v22, v23, v19);
        goto LABEL_27;
      }

LABEL_8:
      v24 = (*(v19 + 56) + 16 * v15);
      *v24 = v22;
      v24[1] = v23;

LABEL_27:
      *a1 = v19;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
      }

      else
      {
        a1[1] = v10 + 1;
        *&v71 = 0;
        *(&v71 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(36);
        v42 = (*(a3 + 16))(a1, *(a2 + 16));
        v44 = v43;

        v74 = v42;
        v75 = v44;
        MEMORY[0x1865CB0E0](0xD000000000000013, 0x80000001814840F0);
        v45 = a1[2];
        v46 = a1[3];
        v47 = *(v6 + v67);
        v71 = *a1;
        v72 = v45;
        v73 = v46;
        v70[0] = v47;
        v48 = DebugStringConversionState.subscript.getter(v70);
        MEMORY[0x1865CB0E0](v48);

        MEMORY[0x1865CB0E0](0x202020200A6E6920, 0xE800000000000000);
        v49 = (*(a4 + 16))(a1, *(a2 + 24));
        v51 = HIBYTE(v50) & 0xF;
        if ((v50 & 0x2000000000000000) == 0)
        {
          v51 = v49;
        }

        v52 = 7;
        if (((v50 >> 60) & ((v49 & 0x800000000000000) == 0)) != 0)
        {
          v52 = 11;
        }

        v53 = v52 | (v51 << 16);
        if (specialized Sequence<>.starts<A>(with:)())
        {
          v54 = String.index(after:)();
        }

        else
        {
          v54 = 15;
        }

        v55._countAndFlagsBits = 41;
        v55._object = 0xE100000000000000;
        if (String.hasSuffix(_:)(v55))
        {
          v53 = String.index(before:)();
        }

        if (v53 >> 14 >= v54 >> 14)
        {
          v70[0] = String.subscript.getter();
          v70[1] = v56;
          v70[2] = v57;
          v70[3] = v58;
          lazy protocol witness table accessor for type Substring and conformance Substring();
          lazy protocol witness table accessor for type String and conformance String();
          RangeReplaceableCollection<>.replacing<A, B>(_:with:maxReplacements:)();

          v59 = MEMORY[0x1865CAE80](v71, *(&v71 + 1), v72, v73);
          v61 = v60;

          MEMORY[0x1865CB0E0](v59, v61);

          MEMORY[0x1865CB0E0](2718986, 0xE300000000000000);
          return v74;
        }
      }

      __break(1u);
      goto LABEL_41;
    }

LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation20PredicateExpressionsO10VariableIDVSSGMd);
    v25 = static _DictionaryStorage.copy(original:)();
    v19 = v25;
    if (*(v71 + 16))
    {
      v26 = (v25 + 64);
      v27 = (v71 + 64);
      v28 = ((1 << *(v19 + 32)) + 63) >> 6;
      v63 = v71 + 64;
      if (v19 != v71 || v26 >= &v27[8 * v28])
      {
        memmove(v26, v27, 8 * v28);
      }

      v29 = 0;
      *(v19 + 16) = *(v71 + 16);
      v30 = 1 << *(v13 + 32);
      v31 = -1;
      if (v30 < 64)
      {
        v31 = ~(-1 << v30);
      }

      v32 = v31 & *(v13 + 64);
      v33 = (v30 + 63) >> 6;
      v64 = v33;
      if (v32)
      {
        do
        {
          v34 = __clz(__rbit64(v32));
          v65 = (v32 - 1) & v32;
LABEL_23:
          v37 = v34 | (v29 << 6);
          v38 = (*(v13 + 56) + 16 * v37);
          v40 = *v38;
          v39 = v38[1];
          *(*(v19 + 48) + 8 * v37) = *(*(v13 + 48) + 8 * v37);
          v41 = (*(v19 + 56) + 16 * v37);
          *v41 = v40;
          v41[1] = v39;

          v33 = v64;
          v32 = v65;
        }

        while (v65);
      }

      v35 = v29;
      while (1)
      {
        v29 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        if (v29 >= v33)
        {
          goto LABEL_25;
        }

        v36 = *(v63 + 8 * v29);
        ++v35;
        if (v36)
        {
          v34 = __clz(__rbit64(v36));
          v65 = (v36 - 1) & v36;
          goto LABEL_23;
        }
      }

LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

LABEL_25:

    v23 = *(&v69 + 1);
    v22 = v69;
    if ((v5 & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_8;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, isUniquelyReferenced_nonNull_native);
  v19 = v71;
  v20 = specialized __RawDictionaryStorage.find<A>(_:)(v9);
  if ((v5 & 1) == (v21 & 1))
  {
    v15 = v20;
    v23 = *(&v69 + 1);
    v22 = v69;
    if ((v5 & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_8;
  }

LABEL_42:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t PredicateExpressions.SequenceAllSatisfy<>.debugString(state:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, Swift::Int a5, uint64_t a6, uint64_t a7)
{
  v9 = v7;
  v71 = *(a2 + 64);
  v12 = *(v7 + v71);
  *&v77 = 0x656C626169726176;
  *(&v77 + 1) = 0xE800000000000000;
  v13 = a1[1];
  v76[0] = v13;
  v14 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v14);

  v75 = v77;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v77 = *a1;
  v16 = v77;
  v18 = specialized __RawDictionaryStorage.find<A>(_:)(v12);
  v19 = *(v77 + 16);
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_10;
  }

  v8 = v17;
  if (*(v77 + 24) >= v21)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v22 = v77;
      v26 = *(&v75 + 1);
      v25 = v75;
      if ((v17 & 1) == 0)
      {
LABEL_26:
        specialized _NativeDictionary._insert(at:key:value:)(v18, v12, v25, v26, v22);
        goto LABEL_27;
      }

LABEL_8:
      v27 = (*(v22 + 56) + 16 * v18);
      *v27 = v25;
      v27[1] = v26;

LABEL_27:
      *a1 = v22;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
      }

      else
      {
        a1[1] = v13 + 1;
        *&v77 = 0;
        *(&v77 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(a5);
        v45 = (*(a3 + 16))(a1, *(a2 + 16));
        v47 = v46;

        v80 = v45;
        v81 = v47;
        MEMORY[0x1865CB0E0](a6, a7);
        v48 = a1[2];
        v49 = a1[3];
        v50 = *(v9 + v71);
        v77 = *a1;
        v78 = v48;
        v79 = v49;
        v76[0] = v50;
        v51 = DebugStringConversionState.subscript.getter(v76);
        MEMORY[0x1865CB0E0](v51);

        MEMORY[0x1865CB0E0](0x202020200A6E6920, 0xE800000000000000);
        v52 = (*(a4 + 16))(a1, *(a2 + 24));
        v54 = HIBYTE(v53) & 0xF;
        if ((v53 & 0x2000000000000000) == 0)
        {
          v54 = v52;
        }

        v55 = 7;
        if (((v53 >> 60) & ((v52 & 0x800000000000000) == 0)) != 0)
        {
          v55 = 11;
        }

        v56 = v55 | (v54 << 16);
        if (specialized Sequence<>.starts<A>(with:)())
        {
          v57 = String.index(after:)();
        }

        else
        {
          v57 = 15;
        }

        v58._countAndFlagsBits = 41;
        v58._object = 0xE100000000000000;
        if (String.hasSuffix(_:)(v58))
        {
          v56 = String.index(before:)();
        }

        if (v56 >> 14 >= v57 >> 14)
        {
          v76[0] = String.subscript.getter();
          v76[1] = v59;
          v76[2] = v60;
          v76[3] = v61;
          lazy protocol witness table accessor for type Substring and conformance Substring();
          lazy protocol witness table accessor for type String and conformance String();
          RangeReplaceableCollection<>.replacing<A, B>(_:with:maxReplacements:)();

          v62 = MEMORY[0x1865CAE80](v77, *(&v77 + 1), v78, v79);
          v64 = v63;

          MEMORY[0x1865CB0E0](v62, v64);

          MEMORY[0x1865CB0E0](2718986, 0xE300000000000000);
          return v80;
        }
      }

      __break(1u);
      goto LABEL_41;
    }

LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation20PredicateExpressionsO10VariableIDVSSGMd);
    v28 = static _DictionaryStorage.copy(original:)();
    v22 = v28;
    if (*(v77 + 16))
    {
      v29 = (v28 + 64);
      v30 = (v77 + 64);
      v31 = ((1 << *(v22 + 32)) + 63) >> 6;
      v66 = v77 + 64;
      if (v22 != v77 || v29 >= &v30[8 * v31])
      {
        memmove(v29, v30, 8 * v31);
      }

      v32 = 0;
      *(v22 + 16) = *(v77 + 16);
      v33 = 1 << *(v16 + 32);
      v34 = -1;
      if (v33 < 64)
      {
        v34 = ~(-1 << v33);
      }

      v35 = v34 & *(v16 + 64);
      v36 = (v33 + 63) >> 6;
      v67 = v36;
      if (v35)
      {
        do
        {
          v37 = __clz(__rbit64(v35));
          v68 = (v35 - 1) & v35;
LABEL_23:
          v40 = v37 | (v32 << 6);
          v41 = (*(v16 + 56) + 16 * v40);
          v43 = *v41;
          v42 = v41[1];
          *(*(v22 + 48) + 8 * v40) = *(*(v16 + 48) + 8 * v40);
          v44 = (*(v22 + 56) + 16 * v40);
          *v44 = v43;
          v44[1] = v42;

          v36 = v67;
          v35 = v68;
        }

        while (v68);
      }

      v38 = v32;
      while (1)
      {
        v32 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          break;
        }

        if (v32 >= v36)
        {
          goto LABEL_25;
        }

        v39 = *(v66 + 8 * v32);
        ++v38;
        if (v39)
        {
          v37 = __clz(__rbit64(v39));
          v68 = (v39 - 1) & v39;
          goto LABEL_23;
        }
      }

LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

LABEL_25:

    v26 = *(&v75 + 1);
    v25 = v75;
    if ((v8 & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_8;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v21, isUniquelyReferenced_nonNull_native);
  v22 = v77;
  v23 = specialized __RawDictionaryStorage.find<A>(_:)(v12);
  if ((v8 & 1) == (v24 & 1))
  {
    v18 = v23;
    v26 = *(&v75 + 1);
    v25 = v75;
    if ((v8 & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_8;
  }

LABEL_42:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t PredicateExpressions.StringContainsRegex<>.debugString(state:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(a2 + 16);
  v9 = v5(a1, v6);
  MEMORY[0x1865CB0E0](0x6E6961746E6F632ELL, 0xEA00000000002873);
  v7 = (v5)(a1, v6, a3);
  MEMORY[0x1865CB0E0](v7);

  MEMORY[0x1865CB0E0](41, 0xE100000000000000);
  return v9;
}

uint64_t PredicateExpressions.ExpressionEvaluate<>.debugString(state:)(uint64_t TupleTypeMetadata, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a3;
  v58 = TupleTypeMetadata;
  v7 = *(a2 + 16);
  if (v7 == 1)
  {
    v8 = *(*(a2 + 32) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = *(a2 + 32) & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v7 != v11)
      {
LABEL_9:
        v17 = v7 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v8 = TupleTypeMetadata;
  }

  v22 = MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v51 = v24;
  v25 = *(v24 + 16);
  v54 = v4;
  v57 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  isUniquelyReferenced_nonNull_native = v25(v22);
  v52 = v8;
  v53 = a2;
  if (v7)
  {
    v27 = (*(a2 + 32) & 0xFFFFFFFFFFFFFFFELL);
    v28 = (a4 & 0xFFFFFFFFFFFFFFFELL);
    v29 = v8 + 32;
    v30 = MEMORY[0x1E69E7CC0];
    v31 = v7;
    v56 = v7;
    do
    {
      v59 = v30;
      v32 = *v27;
      v33 = *v28;
      v34 = *(*v27 - 8);
      v35 = MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
      v37 = &v51 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v34 + 16))(v37, &v57[v38], v32, v35);
      v39 = (*(v33 + 16))(v58, v32, v33);
      v41 = v40;
      (*(v34 + 8))(v37, v32);
      v30 = v59;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 16) + 1, 1, v30);
        v30 = isUniquelyReferenced_nonNull_native;
      }

      v43 = *(v30 + 16);
      v42 = *(v30 + 24);
      if (v43 >= v42 >> 1)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v30);
        v30 = isUniquelyReferenced_nonNull_native;
      }

      *(v30 + 16) = v43 + 1;
      v44 = v30 + 16 * v43;
      *(v44 + 32) = v39;
      *(v44 + 40) = v41;
      v29 += 16;
      ++v28;
      ++v27;
      --v31;
    }

    while (v31);
  }

  else
  {
    v30 = MEMORY[0x1E69E7CC0];
  }

  v61 = (*(v55 + 16))(v58, *(v53 + 24));
  v62 = v45;
  MEMORY[0x1865CB0E0](0x7461756C6176652ELL, 0xEA00000000002865);
  v60 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
  v46 = BidirectionalCollection<>.joined(separator:)();
  v48 = v47;

  MEMORY[0x1865CB0E0](v46, v48);

  MEMORY[0x1865CB0E0](41, 0xE100000000000000);
  v49 = v61;
  (*(v51 + 8))(v57, v52);
  return v49;
}

uint64_t PredicateExpressions.PredicateEvaluate<>.debugString(state:)(uint64_t TupleTypeMetadata, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a3;
  v58 = TupleTypeMetadata;
  v7 = *(a2 + 16);
  if (v7 == 1)
  {
    v8 = *(*(a2 + 32) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = *(a2 + 32) & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v7 != v11)
      {
LABEL_9:
        v17 = v7 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v8 = TupleTypeMetadata;
  }

  v22 = MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v51 = v24;
  v25 = *(v24 + 16);
  v54 = v4;
  v57 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  isUniquelyReferenced_nonNull_native = v25(v22);
  v52 = v8;
  v53 = a2;
  if (v7)
  {
    v27 = (*(a2 + 32) & 0xFFFFFFFFFFFFFFFELL);
    v28 = (a4 & 0xFFFFFFFFFFFFFFFELL);
    v29 = v8 + 32;
    v30 = MEMORY[0x1E69E7CC0];
    v31 = v7;
    v56 = v7;
    do
    {
      v59 = v30;
      v32 = *v27;
      v33 = *v28;
      v34 = *(*v27 - 8);
      v35 = MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
      v37 = &v51 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v34 + 16))(v37, &v57[v38], v32, v35);
      v39 = (*(v33 + 16))(v58, v32, v33);
      v41 = v40;
      (*(v34 + 8))(v37, v32);
      v30 = v59;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 16) + 1, 1, v30);
        v30 = isUniquelyReferenced_nonNull_native;
      }

      v43 = *(v30 + 16);
      v42 = *(v30 + 24);
      if (v43 >= v42 >> 1)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v30);
        v30 = isUniquelyReferenced_nonNull_native;
      }

      *(v30 + 16) = v43 + 1;
      v44 = v30 + 16 * v43;
      *(v44 + 32) = v39;
      *(v44 + 40) = v41;
      v29 += 16;
      ++v28;
      ++v27;
      --v31;
    }

    while (v31);
  }

  else
  {
    v30 = MEMORY[0x1E69E7CC0];
  }

  v61 = (*(v55 + 16))(v58, *(v53 + 24));
  v62 = v45;
  MEMORY[0x1865CB0E0](0x7461756C6176652ELL, 0xEA00000000002865);
  v60 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
  v46 = BidirectionalCollection<>.joined(separator:)();
  v48 = v47;

  MEMORY[0x1865CB0E0](v46, v48);

  MEMORY[0x1865CB0E0](41, 0xE100000000000000);
  v49 = v61;
  (*(v51 + 8))(v57, v52);
  return v49;
}

uint64_t PredicateExpressions.StringCaseInsensitiveCompare<>.debugString(state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _StringGuts.grow(_:)(29);
  v8 = (*(a3 + 16))(a1, *(a2 + 16), a3);

  MEMORY[0x1865CB0E0](0xD000000000000018, 0x8000000181484110);
  v9 = (*(a4 + 16))(a1, *(a2 + 24), a4);
  MEMORY[0x1865CB0E0](v9);

  MEMORY[0x1865CB0E0](41, 0xE100000000000000);
  return v8;
}

id createDescription<each A, B, C>(variable:expression:typeName:outputType:)(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v122 = a7;
  v118 = a5;
  v120 = a4;
  v119 = a3;
  v10 = a1;
  v11 = *(a9 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v15)
  {
    v16 = v12;
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v12 = v16;
    v18 = v17;
    v19 = *(v17 + 2);
    v20 = a6;
    do
    {
      v21 = **v10;
      v22 = *(v18 + 24);
      if (v19 >= v22 >> 1)
      {
        v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v19 + 1, 1, v18);
        v12 = v16;
        v18 = v23;
      }

      *(v18 + 16) = v19 + 1;
      *(v18 + 8 * v19 + 32) = v21;
      ++v10;
      ++v19;
      --v20;
    }

    while (v20);
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
  }

  v123 = v18;
  (*(v11 + 16))(v14, v12, a9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation41DebugStringConvertiblePredicateExpression_pMd);
  if (!swift_dynamicCast())
  {
    goto LABEL_74;
  }

  outlined init with take of Equatable(&v140, &v143);
  v24 = MEMORY[0x1E69E7CC0];
  if (a6)
  {
    v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v26 = (v122 & 0xFFFFFFFFFFFFFFFELL);
    v27 = *(v25 + 2);
    do
    {
      v28 = *(v25 + 3);
      v29 = v27 + 1;
      if (v27 >= v28 >> 1)
      {
        v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v27 + 1, 1, v25);
      }

      v30 = *v26++;
      *(v25 + 2) = v29;
      *&v25[8 * v27++ + 32] = v30;
      --a6;
    }

    while (a6);
  }

  else
  {
    v29 = *(MEMORY[0x1E69E7CC0] + 16);
    v31 = MEMORY[0x1E69E7CC0];
    if (!v29)
    {
      goto LABEL_20;
    }
  }

  *&v140 = v24;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29, 0);
  v32 = 32;
  v31 = v140;
  do
  {
    v33 = _typeName(_:qualified:)();
    *&v140 = v31;
    v36 = *(v31 + 16);
    v35 = *(v31 + 24);
    if (v36 >= v35 >> 1)
    {
      v38 = v33;
      v39 = v34;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1);
      v34 = v39;
      v33 = v38;
      v31 = v140;
    }

    *(v31 + 16) = v36 + 1;
    v37 = v31 + 16 * v36;
    *(v37 + 32) = v33;
    *(v37 + 40) = v34;
    v32 += 8;
    --v29;
  }

  while (v29);
LABEL_20:
  *&v140 = v31;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  v41 = lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
  v116 = v40;
  v115 = v41;
  v117 = BidirectionalCollection<>.joined(separator:)();
  v43 = v42;

  v44 = *(v123 + 16);
  if (v44)
  {
    v114 = v43;
    v132 = v24;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v44, 0);
    v45 = v123;
    v46 = 0;
    v122 = *(v123 + 16);
    v121 = v123 + 32;
    v47 = v132;
    while (v122 != v46)
    {
      if (v46 >= *(v45 + 16))
      {
        goto LABEL_64;
      }

      v48 = v44;
      v49 = *(v121 + 8 * v46);
      v50 = v46 + 1;
      *&v140 = 0x7475706E69;
      *(&v140 + 1) = 0xE500000000000000;
      v128 = v46 + 1;
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865CB0E0](v51);

      v52 = v140;
      v132 = v47;
      v54 = v47[2];
      v53 = v47[3];
      if (v54 >= v53 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1);
        v47 = v132;
      }

      v47[2] = v54 + 1;
      v55 = &v47[3 * v54];
      v55[4] = v49;
      *(v55 + 5) = v52;
      v46 = v50;
      v56 = v48 == v50;
      v44 = v48;
      v45 = v123;
      if (v56)
      {
        v24 = MEMORY[0x1E69E7CC0];
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  if (*(v24 + 16))
  {
    v114 = v43;
    v47 = v24;
LABEL_31:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation20PredicateExpressionsO10VariableIDVSSGMd);
    v57 = static _DictionaryStorage.allocate(capacity:)();
    v58 = v47[2];
    v132 = v57;
    if (v58)
    {
      v59 = 0;
      v60 = v47 + 6;
      do
      {
        if (v59 >= v47[2])
        {
          goto LABEL_65;
        }

        v61 = *(v60 - 1);
        v62 = *v60;
        v63 = *(v60 - 2);

        if (!v62)
        {
          break;
        }

        v128 = v63;
        v64 = specialized __RawDictionaryStorage.find<A>(_:)(v63);
        v66 = v57[2];
        v67 = (v65 & 1) == 0;
        v68 = __OFADD__(v66, v67);
        v69 = v66 + v67;
        if (v68)
        {
          goto LABEL_66;
        }

        v70 = v65;
        if (v57[3] < v69)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v69, 1);
          v57 = v132;
          v64 = specialized __RawDictionaryStorage.find<A>(_:)(v128);
          if ((v70 & 1) != (v71 & 1))
          {
            goto LABEL_72;
          }
        }

        if (v70)
        {
          goto LABEL_69;
        }

        v57[(v64 >> 6) + 8] |= 1 << v64;
        *(v57[6] + 8 * v64) = v128;
        v72 = (v57[7] + 16 * v64);
        *v72 = v61;
        v72[1] = v62;
        v73 = v57[2];
        v68 = __OFADD__(v73, 1);
        v74 = v73 + 1;
        if (v68)
        {
          goto LABEL_67;
        }

        ++v59;
        v57[2] = v74;
        v60 += 3;
      }

      while (v58 != v59);
      v24 = MEMORY[0x1E69E7CC0];
    }

    v43 = v114;
  }

  else
  {
    v57 = MEMORY[0x1E69E7CC8];
    v132 = MEMORY[0x1E69E7CC8];
  }

  *&v140 = v57;
  *(&v140 + 1) = 1;
  *&v141 = v24;
  *(&v141 + 1) = 1;
  v75 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay10Foundation20PredicateExpressionsO10VariableIDVG_SSs5NeverOTg50118_s10Foundation17createDescription33_0E6808C72783E37C9BBD8DD29A9ABF158variable10expression8typeName10outputTypeSSAA20ef2O8G70Vy_xGxQp_q0_SSq_mtRvzAA08StandardR10ExpressionR0_r1_lFSSAI0T2IDVXEfU0_AF26DebugStringConversionStateVTf1cn_n(v123, &v140);

  v132 = v75;
  v76 = BidirectionalCollection<>.joined(separator:)();
  v78 = v77;

  v79 = v144;
  v80 = v145;
  __swift_project_boxed_opaque_existential_1(&v143, v144);
  v81 = (*(v80 + 16))(&v140, v79, v80);
  v83 = v82;
  v84 = v141;
  v132 = v141;

  v85 = BidirectionalCollection<>.joined(separator:)();
  v87 = v86;

  v88 = (HIBYTE(v87) & 0xF);
  if ((v87 & 0x2000000000000000) == 0)
  {
    v88 = (v85 & 0xFFFFFFFFFFFFLL);
  }

  if (v88)
  {
    v132 = v84;

    v89 = BidirectionalCollection<>.joined(separator:)();
    v91 = v90;

    v132 = v89;
    v133 = v91;
    MEMORY[0x1865CB0E0](10, 0xE100000000000000);
    v88 = v132;
    v92 = v133;
  }

  else
  {
    v92 = 0xE000000000000000;
  }

  v93 = v117;
  v138 = v88;
  v139 = v92;
  if (v118 == MEMORY[0x1E69E7CA8] + 8)
  {
    v96 = 0;
    v95 = 0xE000000000000000;
  }

  else
  {
    v132 = 8236;
    v133 = 0xE200000000000000;
    v94 = _typeName(_:qualified:)();
    MEMORY[0x1865CB0E0](v94);

    v96 = v132;
    v95 = v133;
  }

  v132 = 0;
  v133 = 0xE000000000000000;
  _StringGuts.grow(_:)(25);
  v97 = v120;

  v136 = v119;
  v137 = v97;
  MEMORY[0x1865CB0E0](60, 0xE100000000000000);
  MEMORY[0x1865CB0E0](v93, v43);

  MEMORY[0x1865CB0E0](v96, v95);

  MEMORY[0x1865CB0E0](544940094, 0xE400000000000000);
  MEMORY[0x1865CB0E0](v76, v78);

  MEMORY[0x1865CB0E0](0x202020200A6E6920, 0xE800000000000000);
  v98 = HIBYTE(v83) & 0xF;
  if ((v83 & 0x2000000000000000) == 0)
  {
    v98 = v81;
  }

  v99 = 7;
  if (((v83 >> 60) & ((v81 & 0x800000000000000) == 0)) != 0)
  {
    v99 = 11;
  }

  v100 = v99 | (v98 << 16);
  if (specialized Sequence<>.starts<A>(with:)())
  {
    v101 = String.index(after:)();
  }

  else
  {
    v101 = 15;
  }

  v102._countAndFlagsBits = 41;
  v102._object = 0xE100000000000000;
  if (String.hasSuffix(_:)(v102))
  {
    v100 = String.index(before:)();
  }

  if (v100 >> 14 < v101 >> 14)
  {
LABEL_68:
    __break(1u);
LABEL_69:

    v111 = swift_allocError();
    swift_willThrow();
    v138 = v111;
    v112 = v111;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_73;
    }

    *&v140 = 0;
    *(&v140 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(30);
    MEMORY[0x1865CB0E0](0xD00000000000001BLL, 0x800000018147F480);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1865CB0E0](39, 0xE100000000000000);
    while (1)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_72:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
LABEL_73:

      swift_unexpectedError();
      __break(1u);
LABEL_74:
      v142 = 0;
      v140 = 0u;
      v141 = 0u;
      outlined destroy of TermOfAddress?(&v140, &_s10Foundation41DebugStringConvertiblePredicateExpression_pSgMd);
    }
  }

  v128 = String.subscript.getter();
  v129 = v103;
  v130 = v104;
  v131 = v105;
  v126 = 10;
  v127 = 0xE100000000000000;
  v124 = 0x202020200ALL;
  v125 = 0xE500000000000000;
  lazy protocol witness table accessor for type Substring and conformance Substring();
  lazy protocol witness table accessor for type String and conformance String();
  RangeReplaceableCollection<>.replacing<A, B>(_:with:maxReplacements:)();

  v106 = MEMORY[0x1865CAE80](v132, v133, v134, v135);
  v108 = v107;

  MEMORY[0x1865CB0E0](v106, v108);

  MEMORY[0x1865CB0E0](32010, 0xE200000000000000);
  MEMORY[0x1865CB0E0](v136, v137);

  v109 = v138;

  __swift_destroy_boxed_opaque_existential_1(&v143);
  return v109;
}

id Predicate.description.getter(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  if (v4 == 1)
  {
    TupleTypeMetadata = type metadata accessor for PredicateExpressions.Variable();
    v6 = TupleTypeMetadata;
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    for (i = 0; i < v4; ++i)
    {
      *&v8[8 * i] = type metadata accessor for PredicateExpressions.Variable();
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v10 = *(v6 - 8);
  v33 = &v29;
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = &v29;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - v14;
  outlined init with copy of Hashable & Sendable(v2, v34);
  v16 = v35;
  v30 = __swift_project_boxed_opaque_existential_1(v34, v35);
  v31 = &v29;
  v17 = MEMORY[0x1EEE9AC00](v30);
  v19 = (&v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v12, v2 + *(a1 + 36), v6, v17);
  for (j = 0; j != v4; ++j)
  {
    if (v4 == 1)
    {
      v21 = 0;
    }

    else
    {
      v21 = *(v6 + 24 + 16 * j + 8);
    }

    v22 = &v15[v21];
    if (v4 == 1)
    {
      v23 = 0;
    }

    else
    {
      v23 = *(v6 + 24 + 16 * j + 8);
    }

    *v22 = *&v12[v23];
    v19[j] = v22;
  }

  v24 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Predicate", 9uLL, 1);
  v25 = *(a1 + 24);
  v26 = MEMORY[0x1E69E7CA8] + 8;
  _NSBundleDeallocatingImmortalBundle(v4, v25);
  v27 = createDescription<each A, B, C>(variable:expression:typeName:outputType:)(v19, v30, v24._countAndFlagsBits, v24._object, v26, v4, v25, v26, v16);

  __swift_destroy_boxed_opaque_existential_1(v34);
  return v27;
}

id Expression.description.getter(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = 8 * v4;
  if (v4 == 1)
  {
    TupleTypeMetadata = type metadata accessor for PredicateExpressions.Variable();
    v7 = TupleTypeMetadata;
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    if (v4)
    {
      v8 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
      v9 = (v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
      v10 = v4;
      do
      {
        v8 += 8;
        *v9++ = type metadata accessor for PredicateExpressions.Variable();
        --v10;
      }

      while (v10);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v7 = TupleTypeMetadata;
  }

  v11 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[2] = v28;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v28 - v15;
  outlined init with copy of Hashable & Sendable(v2, v29);
  v17 = v30;
  v28[0] = v31;
  v18 = __swift_project_boxed_opaque_existential_1(v29, v30);
  v28[1] = v28;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v20 = (v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v13, v2 + *(a1 + 44), v7, v19);
  if (v4)
  {
    v21 = (v7 + 32);
    v22 = v20;
    v23 = v4;
    do
    {
      if (v4 == 1)
      {
        v24 = 0;
        v25 = v16;
      }

      else
      {
        v24 = *v21;
        v25 = &v16[v24];
      }

      *&v16[v24] = *&v13[v24];
      *v22++ = v25;
      v21 += 4;
      --v23;
    }

    while (v23);
  }

  v26 = createDescription<each A, B, C>(variable:expression:typeName:outputType:)(v20, v18, 0x6973736572707845, 0xEA00000000006E6FLL, *(a1 + 32), v4, *(a1 + 24), *(a1 + 32), v17);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return v26;
}

uint64_t Predicate.debugDescription.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (v3 == 1)
  {
    TupleTypeMetadata = type metadata accessor for PredicateExpressions.Variable();
    v5 = TupleTypeMetadata;
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    if (v3)
    {
      v7 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
      v8 = (v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      v9 = v3;
      do
      {
        v7 += 8;
        *v8++ = type metadata accessor for PredicateExpressions.Variable();
        --v9;
      }

      while (v9);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v5 = TupleTypeMetadata;
  }

  v10 = MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29[1] = a1;
  v29[2] = v1;
  (*(v13 + 16))(v12, v1 + *(a1 + 36), v5, v10);
  if (v3)
  {
    v14 = (v5 + 32);
    v15 = MEMORY[0x1E69E7CC0];
    v16 = v3;
    do
    {
      if (v3 == 1)
      {
        v17 = 0;
      }

      else
      {
        v17 = *v14;
      }

      v30 = *&v12[v17];
      v31 = 0x656C626169726156;
      v32 = 0xE900000000000028;
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865CB0E0](v18);

      MEMORY[0x1865CB0E0](41, 0xE100000000000000);
      v20 = v31;
      v19 = v32;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
      }

      v22 = *(v15 + 2);
      v21 = *(v15 + 3);
      if (v22 >= v21 >> 1)
      {
        v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v15);
      }

      *(v15 + 2) = v22 + 1;
      v23 = &v15[16 * v22];
      *(v23 + 4) = v20;
      *(v23 + 5) = v19;
      v14 += 4;
      --v16;
    }

    while (v16);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  v31 = 0;
  v32 = 0xE000000000000000;
  _StringGuts.grow(_:)(34);
  v24 = _typeName(_:qualified:)();
  MEMORY[0x1865CB0E0](v24);

  MEMORY[0x1865CB0E0](0x6C62616972617628, 0xEC00000028203A65);
  v30 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
  v25 = BidirectionalCollection<>.joined(separator:)();
  v27 = v26;

  MEMORY[0x1865CB0E0](v25, v27);

  MEMORY[0x1865CB0E0](0x6572707865202C29, 0xEF203A6E6F697373);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation27StandardPredicateExpression_pSb6OutputAA0cD0PRts_XPMd);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](41, 0xE100000000000000);
  return v31;
}

uint64_t Expression.debugDescription.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (v3 == 1)
  {
    TupleTypeMetadata = type metadata accessor for PredicateExpressions.Variable();
    v5 = TupleTypeMetadata;
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    if (v3)
    {
      v7 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
      v8 = (&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      v9 = v3;
      do
      {
        v7 += 8;
        *v8++ = type metadata accessor for PredicateExpressions.Variable();
        --v9;
      }

      while (v9);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v5 = TupleTypeMetadata;
  }

  v10 = MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a1;
  v32 = v1;
  (*(v13 + 16))(v12, v1 + *(a1 + 44), v5, v10);
  if (v3)
  {
    v14 = (v5 + 32);
    v15 = MEMORY[0x1E69E7CC0];
    v16 = v3;
    do
    {
      if (v3 == 1)
      {
        v17 = 0;
      }

      else
      {
        v17 = *v14;
      }

      v33 = *&v12[v17];
      v34 = 0x656C626169726156;
      v35 = 0xE900000000000028;
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865CB0E0](v18);

      MEMORY[0x1865CB0E0](41, 0xE100000000000000);
      v20 = v34;
      v19 = v35;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
      }

      v22 = *(v15 + 2);
      v21 = *(v15 + 3);
      if (v22 >= v21 >> 1)
      {
        v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v15);
      }

      *(v15 + 2) = v22 + 1;
      v23 = &v15[16 * v22];
      *(v23 + 4) = v20;
      *(v23 + 5) = v19;
      v14 += 4;
      --v16;
    }

    while (v16);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  v34 = 0;
  v35 = 0xE000000000000000;
  _StringGuts.grow(_:)(34);
  v24 = v31;
  v25 = _typeName(_:qualified:)();
  MEMORY[0x1865CB0E0](v25);

  MEMORY[0x1865CB0E0](0x6C62616972617628, 0xEC00000028203A65);
  v33 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
  v26 = BidirectionalCollection<>.joined(separator:)();
  v28 = v27;

  MEMORY[0x1865CB0E0](v26, v28);

  MEMORY[0x1865CB0E0](0x6572707865202C29, 0xEF203A6E6F697373);
  v33 = *(v24 + 32);
  swift_getExtendedExistentialTypeMetadata();
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](41, 0xE100000000000000);
  return v34;
}

uint64_t instantiation function for generic protocol witness table for <> PredicateExpressions.KeyPath<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for <A> PredicateExpressions.Value<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for <> PredicateExpressions.UnaryMinus<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for <> PredicateExpressions.SequenceMinimum<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for <> PredicateExpressions.SequenceMaximum<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for <> PredicateExpressions.Conditional<A, B, C>(uint64_t a1)
{
  return instantiation function for generic protocol witness table for <> PredicateExpressions.Conditional<A, B, C>(a1);
}

{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for <> PredicateExpressions.ConditionalCast<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for <> PredicateExpressions.ForceCast<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for <> PredicateExpressions.ForcedUnwrap<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for <> PredicateExpressions.ExpressionEvaluate<A, Pack{repeat B}, C>(uint64_t a1)
{
  return instantiation function for generic protocol witness table for <> PredicateExpressions.ExpressionEvaluate<A, Pack{repeat B}, C>(a1);
}

{
  MEMORY[0x1EEE9AC00](a1);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4)
  {
    v7 = (*(v2 + 8) & 0xFFFFFFFFFFFFFFFELL);
    v8 = v6;
    do
    {
      v9 = *v7++;
      *v8++ = *(v9 + 8);
      --v4;
    }

    while (v4);
  }

  v11[0] = v3;
  v11[1] = v6;
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

_OWORD *PredicateBindings.subscript.setter(_BOOL8 a1, uint64_t *a2, uint64_t a3)
{
  v39 = type metadata accessor for Optional();
  v8 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v10 = &v36 - v9;
  v38 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v37 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a2;
  v14 = *v3;
  v15 = *(*v3 + 16);
  v40 = a1;
  if (v15)
  {
    v36 = v3;
    v16 = 0;
    v17 = (v14 + 4);
    while (v16 < v14[2])
    {
      outlined init with copy of (id: PredicateExpressions.VariableID, value: Any)(v17, &v43);
      v3 = v43;
      outlined destroy of (id: PredicateExpressions.VariableID, value: Any)(&v43);
      v4 = v3 != v13;
      if (v3 == v13)
      {
        goto LABEL_7;
      }

      ++v16;
      v17 += 40;
      if (v15 == v16)
      {
        v16 = 0;
LABEL_7:
        v3 = v36;
        a1 = v40;
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  v16 = 0;
  LODWORD(v4) = 1;
LABEL_9:
  v18 = a1;
  v19 = v39;
  (*(v8 + 16))(v10, v18, v39);
  v20 = v38;
  if ((*(v38 + 48))(v10, 1, a3) == 1)
  {
    v21 = *(v8 + 8);
    v21(v10, v19);
    if (v4)
    {
      return (v21)(v40, v19);
    }

    else
    {
      specialized Array.remove(at:)(v16, &v43);
      v21(v40, v19);
      return __swift_destroy_boxed_opaque_existential_1(&v43 + 8);
    }
  }

  else
  {
    v17 = v37;
    (*(v20 + 32))(v37, v10, a3);
    v23 = (v20 + 16);
    if (v4)
    {
      v42 = a3;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v41);
      (*v23)(boxed_opaque_existential_0, v17, a3);
      *&v43 = v13;
      outlined init with take of Any(&v41, (&v43 + 8));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v3 = v14;
      v4 = v40;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_14:
        v27 = v14[2];
        v26 = v14[3];
        if (v27 >= v26 >> 1)
        {
          v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v14);
          *v3 = v14;
        }

        (*(v8 + 8))(v4, v39);
        result = (*(v38 + 8))(v17, a3);
        v14[2] = v27 + 1;
        v28 = &v14[5 * v27];
        v29 = v43;
        v30 = v44;
        v28[8] = v45;
        *(v28 + 2) = v29;
        *(v28 + 3) = v30;
        goto LABEL_22;
      }

LABEL_24:
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14[2] + 1, 1, v14);
      *v3 = v14;
      goto LABEL_14;
    }

    *(&v44 + 1) = a3;
    v31 = __swift_allocate_boxed_opaque_existential_0(&v43);
    (*v23)(v31, v17, a3);
    v32 = swift_isUniquelyReferenced_nonNull_native();
    *v3 = v14;
    v33 = v40;
    if ((v32 & 1) == 0)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew()(v14);
      *v3 = v14;
    }

    v34 = v38;
    (*(v8 + 8))(v33, v39);
    result = (*(v34 + 8))(v17, a3);
    if (v16 < v14[2])
    {
      v35 = &v14[5 * v16];
      __swift_destroy_boxed_opaque_existential_1((v35 + 5));
      result = outlined init with take of Any(&v43, v35 + 5);
LABEL_22:
      *v3 = v14;
      return result;
    }

    __break(1u);
  }

  return result;
}

_OWORD *key path setter for PredicateBindings.subscript<A>(_:) : <A>PredicateBindingsA(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 8);
  v7 = type metadata accessor for Optional();
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  v11 = *a3;
  (*(v12 + 16))(&v14 - v9, a1, v8);
  v15 = v11;
  return PredicateBindings.subscript.setter(v10, &v15, v6);
}

void (*PredicateBindings.subscript.modify(void *a1, uint64_t *a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  *v8 = a3;
  v8[1] = v3;
  v10 = type metadata accessor for Optional();
  v9[2] = v10;
  v11 = *(v10 - 8);
  v9[3] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v9[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v9[4] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v14 = *a2;
  v9[5] = v13;
  v9[6] = v14;
  v15 = *v3;
  v17[0] = v14;
  v17[1] = v15;
  PredicateBindings.subscript.getter(v17, a3, v13);
  return PredicateBindings.subscript.modify;
}

void PredicateBindings.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v5 = (*a1)[4];
  if (a2)
  {
    v6 = v2[2];
    v7 = v2[3];
    v8 = *v2;
    (*(v7 + 16))((*a1)[4], v3, v6);
    v10 = v4;
    PredicateBindings.subscript.setter(v5, &v10, v8);
    (*(v7 + 8))(v3, v6);
  }

  else
  {
    v9 = *v2;
    v10 = (*a1)[6];
    PredicateBindings.subscript.setter(v3, &v10, v9);
  }

  free(v3);
  free(v5);

  free(v2);
}

_OWORD *PredicateBindings.binding<A>(_:to:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v9 = type metadata accessor for Optional();
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v16 - v11;
  v13 = *a1;
  *a4 = *v4;
  v14 = *(a3 - 8);
  (*(v14 + 16))(&v16 - v11, a2, a3, v10);
  (*(v14 + 56))(v12, 0, 1, a3);
  v17 = v13;

  return PredicateBindings.subscript.setter(v12, &v17, a3);
}

uint64_t outlined destroy of (id: PredicateExpressions.VariableID, value: Any)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO10VariableIDV2id_yp5valuetMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t KeyPath._unsafeAssumeSendable.getter()
{
  type metadata accessor for KeyPath();

  swift_dynamicCast();
  return v1;
}

uint64_t AnyKeyPath._unsafeAssumeSendableAnyKeyPath.getter()
{
  type metadata accessor for AnyKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_s10AnyKeyPathCXcMd);
  swift_dynamicCast();
  return v1;
}

uint64_t key path getter for String.count : String@<X0>(uint64_t *a1@<X8>)
{
  result = String.count.getter();
  *a1 = result;
  return result;
}

uint64_t key path getter for Collection.count : Substring@<X0>(uint64_t *a1@<X8>)
{
  result = Substring.distance(from:to:)();
  *a1 = result;
  return result;
}

void *key path getter for String.isEmpty : String@<X0>(void *result@<X0>, BOOL *a2@<X8>)
{
  v2 = result[1];
  v3 = *result & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  *a2 = v3 == 0;
  return result;
}

uint64_t PredicateExpressions.Variable.init()@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for nextID != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = atomic_fetch_add_explicit(&static PredicateExpressions.VariableID.nextID, 1uLL, memory_order_relaxed);
  return result;
}

void PredicateError._Error.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 > 1u)
  {
    if (a4 != 2)
    {
      MEMORY[0x1865CD060](0);
      return;
    }

    MEMORY[0x1865CD060](3);
    if (!a3)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (!a4)
    {
      MEMORY[0x1865CD060](1);
      if (!a3)
      {
        goto LABEL_11;
      }

      goto LABEL_7;
    }

    MEMORY[0x1865CD060](2);
    if (!a3)
    {
LABEL_11:
      Hasher._combine(_:)(0);
      return;
    }
  }

LABEL_7:
  Hasher._combine(_:)(1u);

  String.hash(into:)();
}

Swift::Int PredicateError._Error.hashValue.getter(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  Hasher.init(_seed:)();
  if (a3 > 1u)
  {
    if (a3 != 2)
    {
      MEMORY[0x1865CD060](0);
      return Hasher._finalize()();
    }

    v5 = 3;
  }

  else if (a3)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  MEMORY[0x1865CD060](v5);
  if (a2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

unint64_t PredicateError.debugDescription.getter()
{
  v2 = *v0;
  v1 = v0[1];
  if (*(v0 + 16) > 1u)
  {
    if (*(v0 + 16) != 2)
    {
      return 0xD000000000000021;
    }

    if (!v1)
    {
      return 0xD000000000000029;
    }

    goto LABEL_9;
  }

  if (*(v0 + 16))
  {
    if (!v1)
    {
      return 0xD00000000000002ALL;
    }

    goto LABEL_9;
  }

  if (v1)
  {
LABEL_9:

    return v2;
  }

  return 0xD000000000000025;
}

uint64_t static PredicateError.== infix(_:_:)(uint64_t a1, __int128 *a2)
{
  v2 = *(a2 + 16);
  if (*(a1 + 16) > 1u)
  {
    if (*(a1 + 16) == 2)
    {
      v5 = v2 == 2;
    }

    else
    {
      v7 = *a1;
      v6 = *(a1 + 8);
      v11 = *a2;
      v12 = v2;
      v9[0] = v7;
      v9[1] = v6;
      v10 = 3;
      v5 = static PredicateError.== infix(_:_:)(&v11, v9);
      outlined consume of PredicateError._Error(v7, v6, 3u);
    }
  }

  else
  {
    v3 = v2 == 0;
    v4 = v2 == 1;
    if (*(a1 + 16))
    {
      v5 = v4;
    }

    else
    {
      v5 = v3;
    }
  }

  return v5 & 1;
}

void static PredicateError.undefinedVariable.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 3;
}

void static PredicateError.forceUnwrapFailure.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

void static PredicateError.forceCastFailure.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

void static PredicateError.invalidInput.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
}

void PredicateError.hash(into:)()
{
  v1 = *(v0 + 8);
  if (*(v0 + 16) > 1u)
  {
    if (*(v0 + 16) != 2)
    {
      MEMORY[0x1865CD060](0);
      return;
    }

    MEMORY[0x1865CD060](3);
    if (!v1)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (!*(v0 + 16))
    {
      MEMORY[0x1865CD060](1);
      if (!v1)
      {
        goto LABEL_11;
      }

      goto LABEL_7;
    }

    MEMORY[0x1865CD060](2);
    if (!v1)
    {
LABEL_11:
      Hasher._combine(_:)(0);
      return;
    }
  }

LABEL_7:
  Hasher._combine(_:)(1u);

  String.hash(into:)();
}

Swift::Int PredicateError.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  Hasher.init(_seed:)();
  if (v2 > 1)
  {
    if (v2 != 2)
    {
      MEMORY[0x1865CD060](0);
      return Hasher._finalize()();
    }

    v3 = 3;
  }

  else if (v2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  MEMORY[0x1865CD060](v3);
  if (v1)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PredicateError._Error()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  Hasher.init(_seed:)();
  if (v2 > 1)
  {
    if (v2 != 2)
    {
      MEMORY[0x1865CD060](0);
      return Hasher._finalize()();
    }

    v3 = 3;
  }

  else if (v2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  MEMORY[0x1865CD060](v3);
  if (v1)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t PredicateExpressions.VariableID.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

Swift::Int PredicateExpressions.VariableID.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v1);
  return Hasher._finalize()();
}

uint64_t PredicateExpressions.Variable.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 7955819 && a2 == 0xE300000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PredicateExpressions.Variable<A>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = PredicateExpressions.Variable.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance PredicateExpressions.Variable<A>.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = protocol witness for static Equatable.== infix(_:_:) in conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.CodingKeys();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PredicateExpressions.Variable<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PredicateExpressions.Variable<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t PredicateExpressions.KeyPath.init(root:keyPath:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{

  AnyKeyPath._validateForPredicateUsage(restrictArguments:)(0);

  (*(*(a3 - 8) + 32))(a4, a1, a3);
  result = type metadata accessor for PredicateExpressions.KeyPath();
  *(a4 + *(result + 44)) = a2;
  return result;
}

uint64_t PredicateExpressions.KeyPath<>.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1953460082 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    return 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t PredicateExpressions.KeyPath<>.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x696669746E656469;
  }

  else
  {
    return 1953460082;
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PredicateExpressions.KeyPath<A, B><>.CodingKeys()
{
  Hasher.init(_seed:)();
  NSDecimal.ParseStrategy.CodingKeys.hash(into:)(v2, *v0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PredicateExpressions.KeyPath<A, B><>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = PredicateExpressions.KeyPath<>.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance PredicateExpressions.KeyPath<A, B><>.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = protocol witness for Sequence._customContainsEquatableElement(_:) in conformance AttributedString._InternalRuns();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PredicateExpressions.KeyPath<A, B><>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PredicateExpressions.KeyPath<A, B><>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t PredicateExpressions.KeyPath<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a4;
  v6 = *(a2 + 32);
  v26 = *(a2 + 16);
  v29 = v26;
  v30 = v6;
  v31 = a3;
  v32 = a4;
  type metadata accessor for PredicateExpressions.KeyPath<>.CodingKeys();
  swift_getWitnessTable();
  v7 = type metadata accessor for KeyedEncodingContainer();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = v27;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v29) = 0;
  v12 = v33;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v12)
  {
    return (*(v8 + 8))(v10, v7);
  }

  v33 = v8;
  if (one-time initialization token for predicateArchivingState != -1)
  {
    swift_once();
  }

  v14 = pthread_getspecific(static _ThreadLocal.Key<A>.predicateArchivingState);
  v15 = a2;
  if (v14 && (v16 = *(*v14 + 24), v17 = *(*v14 + 32), *&v29 = *(*v14 + 16), *(&v29 + 1) = v16, v18 = *(v11 + *(a2 + 44)), LOBYTE(v30) = v17, , , , specialized PredicateCodableConfiguration._identifier(for:)(v18, &v29), v20 = v19, , , , v20))
  {
    LOBYTE(v29) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v33 + 8))(v10, v7);
  }

  else
  {
    v21 = type metadata accessor for EncodingError();
    swift_allocError();
    v23 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_syp_s13EncodingErrorO7ContextVtMd);
    v24 = *(v11 + *(v15 + 44));
    v23[3] = *v24;
    *v23 = v24;

    KeyedEncodingContainer.codingPath.getter();
    *&v29 = 0;
    *(&v29 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(49);

    *&v29 = 0x2720656854;
    *(&v29 + 1) = 0xE500000000000000;
    v25 = AnyKeyPath.debugDescription.getter();
    MEMORY[0x1865CB0E0](v25);

    MEMORY[0x1865CB0E0](0xD00000000000002ALL, 0x80000001814842B0);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v21 - 8) + 104))(v23, *MEMORY[0x1E69E6B30], v21);
    swift_willThrow();
    return (*(v33 + 8))(v10, v7);
  }
}

uint64_t PredicateExpressions.KeyPath<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v52 = a5;
  v54 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v59 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v10;
  v62 = v11;
  v63 = v12;
  v64 = v13;
  v56 = v13;
  v65 = v14;
  type metadata accessor for PredicateExpressions.KeyPath<>.CodingKeys();
  swift_getWitnessTable();
  v15 = type metadata accessor for KeyedDecodingContainer();
  v57 = *(v15 - 8);
  v58 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v50 - v16;
  v53 = a3;
  v55 = a4;
  v18 = type metadata accessor for PredicateExpressions.KeyPath();
  v51 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v50 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v21 = v60;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v50 = v18;
  v60 = v20;
  LOBYTE(v61) = 0;
  v22 = v17;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v24 = a2;
  v25 = v54;
  (*(v54 + 32))(v60, v59, a2);
  LOBYTE(v61) = 1;
  v59 = KeyedDecodingContainer.decode(_:forKey:)();
  v27 = v26;
  v56 = v22;
  if (one-time initialization token for predicateArchivingState != -1)
  {
    swift_once();
  }

  v28 = pthread_getspecific(static _ThreadLocal.Key<A>.predicateArchivingState);
  if (v28 && (v29 = *(*v28 + 24), v30 = *(*v28 + 32), v61 = *(*v28 + 16), v62 = v29, LOBYTE(v63) = v30, AssociatedTypeWitness = swift_getAssociatedTypeWitness(), , , v32 = PredicateCodableConfiguration._keyPath(for:rootType:)(v59, v27), , , v32))
  {
    v55 = AssociatedTypeWitness;
    type metadata accessor for KeyPath();
    v33 = swift_dynamicCastClass();
    if (v33)
    {
      v34 = v33;
      (*(v57 + 8))(v56, v58);

      v66 = v34;
      swift_dynamicCast();
      v35 = v60;
      v36 = v50;
      v37 = v51;
      *&v60[*(v50 + 44)] = v61;
      (*(v37 + 16))(v52, v35, v36);
      __swift_destroy_boxed_opaque_existential_1(a1);
      return (*(v37 + 8))(v35, v36);
    }

    LOBYTE(v66) = 1;
    v61 = 0;
    v62 = 0xE000000000000000;
    _StringGuts.grow(_:)(114);
    MEMORY[0x1865CB0E0](0x687461702079654BLL, 0xEA00000000002720);

    v42 = AnyKeyPath.debugDescription.getter();
    v44 = v43;

    MEMORY[0x1865CB0E0](v42, v44);

    MEMORY[0x1865CB0E0](0x615079654B282027, 0xEB000000003C6874);
    dispatch thunk of static AnyKeyPath._rootAndValueType.getter();
    v45 = _typeName(_:qualified:)();
    MEMORY[0x1865CB0E0](v45);

    MEMORY[0x1865CB0E0](8236, 0xE200000000000000);
    dispatch thunk of static AnyKeyPath._rootAndValueType.getter();
    v46 = _typeName(_:qualified:)();
    MEMORY[0x1865CB0E0](v46);

    MEMORY[0x1865CB0E0](0xD000000000000013, 0x8000000181484330);
    MEMORY[0x1865CB0E0](v59, v27);

    MEMORY[0x1865CB0E0](0xD000000000000039, 0x8000000181484350);
    v47 = _typeName(_:qualified:)();
    MEMORY[0x1865CB0E0](v47);

    MEMORY[0x1865CB0E0](8236, 0xE200000000000000);
    v48 = _typeName(_:qualified:)();
    MEMORY[0x1865CB0E0](v48);

    MEMORY[0x1865CB0E0](62, 0xE100000000000000);
    type metadata accessor for DecodingError();
    swift_allocError();
    v49 = v58;
    swift_getWitnessTable();
    v39 = v56;
    v40 = v49;
    static DecodingError.dataCorruptedError<A>(forKey:in:debugDescription:)();

    swift_willThrow();

    v25 = v54;
  }

  else
  {
    LOBYTE(v66) = 1;
    v61 = 0;
    v62 = 0xE000000000000000;
    _StringGuts.grow(_:)(66);
    MEMORY[0x1865CB0E0](0xD000000000000013, 0x80000001814842E0);
    MEMORY[0x1865CB0E0](v59, v27);

    MEMORY[0x1865CB0E0](0xD00000000000002DLL, 0x8000000181484300);
    type metadata accessor for DecodingError();
    swift_allocError();
    v38 = v58;
    swift_getWitnessTable();
    v39 = v56;
    v40 = v38;
    static DecodingError.dataCorruptedError<A>(forKey:in:debugDescription:)();

    swift_willThrow();
  }

  (*(v57 + 8))(v39, v40);
  v41 = v60;
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v25 + 8))(v41, v24);
}

uint64_t PredicateExpressions.KeyPath.description.getter()
{
  _StringGuts.grow(_:)(30);
  MEMORY[0x1865CB0E0](0x286874615079654BLL, 0xEE00203A746F6F72);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](0x74615079656B202CLL, 0xEB00000000203A68);
  v0 = AnyKeyPath.debugDescription.getter();
  MEMORY[0x1865CB0E0](v0);

  MEMORY[0x1865CB0E0](41, 0xE100000000000000);
  return 0;
}

Swift::Int PredicateExpressions.KeyPath.CommonKeyPathKind.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PredicateExpressions.KeyPath<A, B>.CommonKeyPathKind()
{
  Hasher.init(_seed:)();
  PredicateExpressions.KeyPath.CommonKeyPathKind.hash(into:)();
  return Hasher._finalize()();
}

uint64_t outlined consume of PredicateError._Error(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t key path getter for Collection.isEmpty : <A, B><A1>[A1.Element]@<X0>(_BYTE *a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for Array();
  swift_getWitnessTable();
  result = Collection.isEmpty.getter();
  *a1 = result & 1;
  return result;
}

uint64_t key path getter for Collection.first : <A, B><A1>[A1.Element](uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  return a5(v6, WitnessTable);
}

uint64_t static PredicateExpressions.KeyPath.kind<A, B>(_:hashableElementType:)@<X0>(char *a1@<X8>)
{
  swift_getKeyPath();
  type metadata accessor for AnyKeyPath();
  v1 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v1)
  {
    v3 = 0;
  }

  else
  {
    MEMORY[0x1EEE9AC00](result);
    swift_getKeyPath();
    v4 = dispatch thunk of static Equatable.== infix(_:_:)();

    if (v4)
    {
      v3 = 1;
    }

    else
    {
      v3 = 4;
    }
  }

  *a1 = v3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation14PredicateErrorV01_C0O(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t getEnumTagSinglePayload for PredicateExpressions.KeyPath(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
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

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *storeEnumTagSinglePayload for PredicateExpressions.KeyPath(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
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

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t destructiveInjectEnumTag for PredicateError._Error(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateError._Error and conformance PredicateError._Error()
{
  result = lazy protocol witness table cache variable for type PredicateError._Error and conformance PredicateError._Error;
  if (!lazy protocol witness table cache variable for type PredicateError._Error and conformance PredicateError._Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateError._Error and conformance PredicateError._Error);
  }

  return result;
}

BOOL specialized static PredicateError._Error.== infix(_:_:)(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 > 1u)
  {
    if (a3 != 2)
    {
      return a6 == 3 && !(a5 | a4);
    }

    if (a6 != 2)
    {
      return 0;
    }
  }

  else if (a3)
  {
    if (a6 != 1)
    {
      return 0;
    }
  }

  else if (a6)
  {
    return 0;
  }

  if (a2)
  {
    return a5 && (a1 == a4 && a2 == a5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
  }

  return !a5;
}

uint64_t get_witness_table_10Foundation19PredicateExpressionRzSlRd__r0__lSay7ElementQyd__GSlHPyHCTm()
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for Array();

  return swift_getWitnessTable();
}

uint64_t closure #1 in _ProcessInfo.processName.getter@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = a1[1];
  if (v4)
  {
    *a2 = *a1;
    a2[1] = v4;
  }

  else
  {
    if (_CFProcessPath())
    {
      v5 = String.init(cString:)();
      v7 = String.standardizingPath.getter(v5, v6);
      v9 = v8;

      Path = String._lastPathComponent.getter(v7, v9);
      v12 = v11;
    }

    else
    {
      Path = 0;
      v12 = 0xE000000000000000;
    }

    *a1 = Path;
    a1[1] = v12;
    *a2 = Path;
    a2[1] = v12;
  }
}

uint64_t closure #1 in _ProcessInfo.processName.setter(void *a1, uint64_t a2, uint64_t a3)
{

  *a1 = a2;
  a1[1] = a3;
  return result;
}

uint64_t _ProcessInfo.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for _ProcessInfo.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for _ProcessInfo.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

id closure #1 in _ProcessInfo.hostName.getter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[1];
  if (v3)
  {
    *a2 = *a1;
    a2[1] = v3;
  }

  v4 = a1;
  v6 = _getCurrentNSHostName();
  if (!v6)
  {
    v14 = 0xE900000000000074;
    v12 = 0x736F686C61636F6CLL;
    goto LABEL_25;
  }

  v7 = v6;
  isTaggedPointer = _objc_isTaggedPointer(v6);
  v9 = v7;
  v10 = v9;
  if (!isTaggedPointer)
  {
    goto LABEL_9;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v9);
  if (!TaggedPointerTag)
  {
    goto LABEL_18;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v12 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v14 = v13;

LABEL_25:
      *v4 = v12;
      v4[1] = v14;
      *a2 = v12;
      a2[1] = v14;
    }

LABEL_9:
    if (__CFStringIsCF())
    {

LABEL_14:
      v12 = 0;
      v14 = 0xE000000000000000;
      goto LABEL_25;
    }

    v15 = v10;
    v16 = String.init(_nativeStorage:)();
    if (v17)
    {
      v12 = v16;
      v14 = v17;

      goto LABEL_25;
    }

    if (![v15 length])
    {

      goto LABEL_14;
    }

    v12 = String.init(_cocoaString:)();
    v14 = v21;
LABEL_24:

    goto LABEL_25;
  }

  result = [v10 UTF8String];
  if (result)
  {
    v19 = String.init(utf8String:)(result);
    if (v20)
    {
LABEL_19:
      v12 = v19;
      v14 = v20;

      goto LABEL_24;
    }

    __break(1u);
LABEL_18:
    _CFIndirectTaggedPointerStringGetContents();
    v19 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v20)
    {
      [v10 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v12 = v22;
      v14 = v23;
      goto LABEL_24;
    }

    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t specialized _ProcessInfo.activeProcessorCount.getter()
{

  return specialized _ProcessInfo.processorCount.getter(COERCE_DOUBLE(0x1900000006));
}

uint64_t specialized String.withUTF8<A>(_:)(uint64_t (*a1)(void *, uint64_t))
{
  v3 = *v1;
  v4 = v1[1];
  if ((v4 & 0x1000000000000000) != 0)
  {
    v8 = static String._copying(_:)();
    v10 = v9;

    v3 = v8;
    *v1 = v8;
    v1[1] = v10;
    v4 = v10;
    if ((v10 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v6 = HIBYTE(v4) & 0xF;
    v12[0] = v3;
    v12[1] = v4 & 0xFFFFFFFFFFFFFFLL;
    v7 = v12;
    return a1(v7, v6);
  }

  if ((v4 & 0x2000000000000000) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((v3 & 0x1000000000000000) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = _StringObject.sharedUTF8.getter();
  }

  v7 = v5;
  return a1(v7, v6);
}

uint64_t _PlistKeyedEncodingContainerBPlist.encodeNil(forKey:)()
{
  v1 = *v0;
  v2 = v0[1];
  v28 = *(*v0 + 56);

  v3 = dispatch thunk of CodingKey.stringValue.getter();
  v5 = v4;
  if (specialized Sequence.allSatisfy(_:)(implicit closure #1 in _BPlistEncodingFormat.string(_:), 0, v3, v4))
  {

    v6 = MEMORY[0x1865CB280](v3, v5);
    v7 = 1;
  }

  else
  {
    v8 = String._bridgeToObjectiveCImpl()();

    v6 = [v8 hash];
    swift_unknownObjectRelease();
    v7 = 0;
  }

  v9 = *(v1 + 88);
  v10 = *(v9 + 16);
  v11 = *(v9 + 24);
  v12 = *(v9 + 32);
  *(v9 + 16) = v3;
  *(v9 + 24) = v5;
  *(v9 + 32) = v6;
  v13 = *(v9 + 40);
  *(v9 + 40) = v7;

  outlined consume of _BPlistEncodingFormat.Reference.Backing(v10, v11, v12, v13);

  v14 = specialized Set._Variant.insert(_:)(&v26, v9);

  v15 = v26;
  if (v14)
  {
    type metadata accessor for _BPlistEncodingFormat.Reference();
    v16 = swift_allocObject();
    *(v16 + 24) = 0;
    *(v16 + 32) = 0;
    *(v16 + 16) = 2;
    *(v16 + 40) = -112;
    *(v16 + 48) = -1;

    *(v1 + 88) = v16;
  }

  v18 = *(v2 + 40);
  if ((v18 & 0xF0) == 0x60)
  {
    v20 = *(v2 + 24);
    v19 = *(v2 + 32);
    v26 = *(v2 + 16);
    v21 = v26;
    *&v27 = v20;
    *(&v27 + 1) = v19;
    *(v2 + 24) = 0;
    *(v2 + 32) = 0;
    *(v2 + 16) = 2;
    *(v2 + 40) = -112;

    outlined consume of _BPlistEncodingFormat.Reference.Backing(v21, v20, v19, v18);
    specialized OrderedDictionary.subscript.setter(v28, v15);
    v22 = *(v2 + 16);
    v23 = *(v2 + 24);
    v24 = *(v2 + 32);
    *(v2 + 16) = v26;
    *(v2 + 24) = v27;
    v25 = *(v2 + 40);
    *(v2 + 40) = 96;
    return outlined consume of _BPlistEncodingFormat.Reference.Backing(v22, v23, v24, v25);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _PlistKeyedEncodingContainerBPlist.encode(_:forKey:)(__int16 a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(*v1 + 88);
  v5 = a1;
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(v4 + 32);
  *(v4 + 16) = v5;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  v9 = *(v4 + 40);
  *(v4 + 40) = 32;
  outlined consume of _BPlistEncodingFormat.Reference.Backing(v6, v7, v8, v9);
  v10 = *(v2 + 88);

  v11 = specialized Set._Variant.insert(_:)(&v36, v10);
  v38 = v36;
  if (v11)
  {
    type metadata accessor for _BPlistEncodingFormat.Reference();
    v12 = swift_allocObject();
    *(v12 + 24) = 0;
    *(v12 + 32) = 0;
    *(v12 + 16) = 2;
    *(v12 + 40) = -112;
    *(v12 + 48) = -1;
    *(v2 + 88) = v12;
  }

  v13 = dispatch thunk of CodingKey.stringValue.getter();
  v15 = v14;
  if (specialized Sequence.allSatisfy(_:)(implicit closure #1 in _BPlistEncodingFormat.string(_:), 0, v13, v14))
  {

    v16 = MEMORY[0x1865CB280](v13, v15);
    v17 = 1;
  }

  else
  {
    v18 = String._bridgeToObjectiveCImpl()();

    v16 = [v18 hash];
    swift_unknownObjectRelease();
    v17 = 0;
  }

  v19 = *(v2 + 88);
  v20 = *(v19 + 16);
  v21 = *(v19 + 24);
  v22 = *(v19 + 32);
  *(v19 + 16) = v13;
  *(v19 + 24) = v15;
  *(v19 + 32) = v16;
  v23 = *(v19 + 40);
  *(v19 + 40) = v17;

  outlined consume of _BPlistEncodingFormat.Reference.Backing(v20, v21, v22, v23);

  v24 = specialized Set._Variant.insert(_:)(&v36, v19);

  v25 = v36;
  if (v24)
  {
    type metadata accessor for _BPlistEncodingFormat.Reference();
    v26 = swift_allocObject();
    *(v26 + 24) = 0;
    *(v26 + 32) = 0;
    *(v26 + 16) = 2;
    *(v26 + 40) = -112;
    *(v26 + 48) = -1;

    *(v2 + 88) = v26;
  }

  v28 = *(v3 + 40);
  if ((v28 & 0xF0) == 0x60)
  {
    v30 = *(v3 + 24);
    v29 = *(v3 + 32);
    v36 = *(v3 + 16);
    v31 = v36;
    *&v37 = v30;
    *(&v37 + 1) = v29;
    *(v3 + 24) = 0;
    *(v3 + 32) = 0;
    *(v3 + 16) = 2;
    *(v3 + 40) = -112;

    outlined consume of _BPlistEncodingFormat.Reference.Backing(v31, v30, v29, v28);
    specialized OrderedDictionary.subscript.setter(v38, v25);
    v32 = *(v3 + 16);
    v33 = *(v3 + 24);
    v34 = *(v3 + 32);
    *(v3 + 16) = v36;
    *(v3 + 24) = v37;
    v35 = *(v3 + 40);
    *(v3 + 40) = 96;
    return outlined consume of _BPlistEncodingFormat.Reference.Backing(v32, v33, v34, v35);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _PlistKeyedEncodingContainerBPlist.encode(_:forKey:)(int a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(*v1 + 88);
  v5 = a1;
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(v4 + 32);
  *(v4 + 16) = v5;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  v9 = *(v4 + 40);
  *(v4 + 40) = 32;
  outlined consume of _BPlistEncodingFormat.Reference.Backing(v6, v7, v8, v9);
  v10 = *(v2 + 88);

  v11 = specialized Set._Variant.insert(_:)(&v36, v10);
  v38 = v36;
  if (v11)
  {
    type metadata accessor for _BPlistEncodingFormat.Reference();
    v12 = swift_allocObject();
    *(v12 + 24) = 0;
    *(v12 + 32) = 0;
    *(v12 + 16) = 2;
    *(v12 + 40) = -112;
    *(v12 + 48) = -1;
    *(v2 + 88) = v12;
  }

  v13 = dispatch thunk of CodingKey.stringValue.getter();
  v15 = v14;
  if (specialized Sequence.allSatisfy(_:)(implicit closure #1 in _BPlistEncodingFormat.string(_:), 0, v13, v14))
  {

    v16 = MEMORY[0x1865CB280](v13, v15);
    v17 = 1;
  }

  else
  {
    v18 = String._bridgeToObjectiveCImpl()();

    v16 = [v18 hash];
    swift_unknownObjectRelease();
    v17 = 0;
  }

  v19 = *(v2 + 88);
  v20 = *(v19 + 16);
  v21 = *(v19 + 24);
  v22 = *(v19 + 32);
  *(v19 + 16) = v13;
  *(v19 + 24) = v15;
  *(v19 + 32) = v16;
  v23 = *(v19 + 40);
  *(v19 + 40) = v17;

  outlined consume of _BPlistEncodingFormat.Reference.Backing(v20, v21, v22, v23);

  v24 = specialized Set._Variant.insert(_:)(&v36, v19);

  v25 = v36;
  if (v24)
  {
    type metadata accessor for _BPlistEncodingFormat.Reference();
    v26 = swift_allocObject();
    *(v26 + 24) = 0;
    *(v26 + 32) = 0;
    *(v26 + 16) = 2;
    *(v26 + 40) = -112;
    *(v26 + 48) = -1;

    *(v2 + 88) = v26;
  }

  v28 = *(v3 + 40);
  if ((v28 & 0xF0) == 0x60)
  {
    v30 = *(v3 + 24);
    v29 = *(v3 + 32);
    v36 = *(v3 + 16);
    v31 = v36;
    *&v37 = v30;
    *(&v37 + 1) = v29;
    *(v3 + 24) = 0;
    *(v3 + 32) = 0;
    *(v3 + 16) = 2;
    *(v3 + 40) = -112;

    outlined consume of _BPlistEncodingFormat.Reference.Backing(v31, v30, v29, v28);
    specialized OrderedDictionary.subscript.setter(v38, v25);
    v32 = *(v3 + 16);
    v33 = *(v3 + 24);
    v34 = *(v3 + 32);
    *(v3 + 16) = v36;
    *(v3 + 24) = v37;
    v35 = *(v3 + 40);
    *(v3 + 40) = 96;
    return outlined consume of _BPlistEncodingFormat.Reference.Backing(v32, v33, v34, v35);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _PlistKeyedEncodingContainerBPlist.encode(_:forKey:)(unsigned __int8 a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(*v1 + 88);
  v5 = a1;
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(v4 + 32);
  *(v4 + 16) = v5;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  v9 = *(v4 + 40);
  *(v4 + 40) = 32;
  outlined consume of _BPlistEncodingFormat.Reference.Backing(v6, v7, v8, v9);
  v10 = *(v2 + 88);

  v11 = specialized Set._Variant.insert(_:)(&v36, v10);
  v38 = v36;
  if (v11)
  {
    type metadata accessor for _BPlistEncodingFormat.Reference();
    v12 = swift_allocObject();
    *(v12 + 24) = 0;
    *(v12 + 32) = 0;
    *(v12 + 16) = 2;
    *(v12 + 40) = -112;
    *(v12 + 48) = -1;
    *(v2 + 88) = v12;
  }

  v13 = dispatch thunk of CodingKey.stringValue.getter();
  v15 = v14;
  if (specialized Sequence.allSatisfy(_:)(implicit closure #1 in _BPlistEncodingFormat.string(_:), 0, v13, v14))
  {

    v16 = MEMORY[0x1865CB280](v13, v15);
    v17 = 1;
  }

  else
  {
    v18 = String._bridgeToObjectiveCImpl()();

    v16 = [v18 hash];
    swift_unknownObjectRelease();
    v17 = 0;
  }

  v19 = *(v2 + 88);
  v20 = *(v19 + 16);
  v21 = *(v19 + 24);
  v22 = *(v19 + 32);
  *(v19 + 16) = v13;
  *(v19 + 24) = v15;
  *(v19 + 32) = v16;
  v23 = *(v19 + 40);
  *(v19 + 40) = v17;

  outlined consume of _BPlistEncodingFormat.Reference.Backing(v20, v21, v22, v23);

  v24 = specialized Set._Variant.insert(_:)(&v36, v19);

  v25 = v36;
  if (v24)
  {
    type metadata accessor for _BPlistEncodingFormat.Reference();
    v26 = swift_allocObject();
    *(v26 + 24) = 0;
    *(v26 + 32) = 0;
    *(v26 + 16) = 2;
    *(v26 + 40) = -112;
    *(v26 + 48) = -1;

    *(v2 + 88) = v26;
  }

  v28 = *(v3 + 40);
  if ((v28 & 0xF0) == 0x60)
  {
    v30 = *(v3 + 24);
    v29 = *(v3 + 32);
    v36 = *(v3 + 16);
    v31 = v36;
    *&v37 = v30;
    *(&v37 + 1) = v29;
    *(v3 + 24) = 0;
    *(v3 + 32) = 0;
    *(v3 + 16) = 2;
    *(v3 + 40) = -112;

    outlined consume of _BPlistEncodingFormat.Reference.Backing(v31, v30, v29, v28);
    specialized OrderedDictionary.subscript.setter(v38, v25);
    v32 = *(v3 + 16);
    v33 = *(v3 + 24);
    v34 = *(v3 + 32);
    *(v3 + 16) = v36;
    *(v3 + 24) = v37;
    v35 = *(v3 + 40);
    *(v3 + 40) = 96;
    return outlined consume of _BPlistEncodingFormat.Reference.Backing(v32, v33, v34, v35);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _PlistKeyedEncodingContainerBPlist.encode(_:forKey:)(unsigned __int16 a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(*v1 + 88);
  v5 = a1;
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(v4 + 32);
  *(v4 + 16) = v5;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  v9 = *(v4 + 40);
  *(v4 + 40) = 32;
  outlined consume of _BPlistEncodingFormat.Reference.Backing(v6, v7, v8, v9);
  v10 = *(v2 + 88);

  v11 = specialized Set._Variant.insert(_:)(&v36, v10);
  v38 = v36;
  if (v11)
  {
    type metadata accessor for _BPlistEncodingFormat.Reference();
    v12 = swift_allocObject();
    *(v12 + 24) = 0;
    *(v12 + 32) = 0;
    *(v12 + 16) = 2;
    *(v12 + 40) = -112;
    *(v12 + 48) = -1;
    *(v2 + 88) = v12;
  }

  v13 = dispatch thunk of CodingKey.stringValue.getter();
  v15 = v14;
  if (specialized Sequence.allSatisfy(_:)(implicit closure #1 in _BPlistEncodingFormat.string(_:), 0, v13, v14))
  {

    v16 = MEMORY[0x1865CB280](v13, v15);
    v17 = 1;
  }

  else
  {
    v18 = String._bridgeToObjectiveCImpl()();

    v16 = [v18 hash];
    swift_unknownObjectRelease();
    v17 = 0;
  }

  v19 = *(v2 + 88);
  v20 = *(v19 + 16);
  v21 = *(v19 + 24);
  v22 = *(v19 + 32);
  *(v19 + 16) = v13;
  *(v19 + 24) = v15;
  *(v19 + 32) = v16;
  v23 = *(v19 + 40);
  *(v19 + 40) = v17;

  outlined consume of _BPlistEncodingFormat.Reference.Backing(v20, v21, v22, v23);

  v24 = specialized Set._Variant.insert(_:)(&v36, v19);

  v25 = v36;
  if (v24)
  {
    type metadata accessor for _BPlistEncodingFormat.Reference();
    v26 = swift_allocObject();
    *(v26 + 24) = 0;
    *(v26 + 32) = 0;
    *(v26 + 16) = 2;
    *(v26 + 40) = -112;
    *(v26 + 48) = -1;

    *(v2 + 88) = v26;
  }

  v28 = *(v3 + 40);
  if ((v28 & 0xF0) == 0x60)
  {
    v30 = *(v3 + 24);
    v29 = *(v3 + 32);
    v36 = *(v3 + 16);
    v31 = v36;
    *&v37 = v30;
    *(&v37 + 1) = v29;
    *(v3 + 24) = 0;
    *(v3 + 32) = 0;
    *(v3 + 16) = 2;
    *(v3 + 40) = -112;

    outlined consume of _BPlistEncodingFormat.Reference.Backing(v31, v30, v29, v28);
    specialized OrderedDictionary.subscript.setter(v38, v25);
    v32 = *(v3 + 16);
    v33 = *(v3 + 24);
    v34 = *(v3 + 32);
    *(v3 + 16) = v36;
    *(v3 + 24) = v37;
    v35 = *(v3 + 40);
    *(v3 + 40) = 96;
    return outlined consume of _BPlistEncodingFormat.Reference.Backing(v32, v33, v34, v35);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _PlistKeyedEncodingContainerBPlist.encode(_:forKey:)(float a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(*v1 + 88);
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(v4 + 32);
  *(v4 + 16) = LODWORD(a1);
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  v8 = *(v4 + 40);
  *(v4 + 40) = 64;
  outlined consume of _BPlistEncodingFormat.Reference.Backing(v5, v6, v7, v8);
  v9 = *(v2 + 88);

  v10 = specialized Set._Variant.insert(_:)(&v35, v9);
  v37 = v35;
  if (v10)
  {
    type metadata accessor for _BPlistEncodingFormat.Reference();
    v11 = swift_allocObject();
    *(v11 + 24) = 0;
    *(v11 + 32) = 0;
    *(v11 + 16) = 2;
    *(v11 + 40) = -112;
    *(v11 + 48) = -1;
    *(v2 + 88) = v11;
  }

  v12 = dispatch thunk of CodingKey.stringValue.getter();
  v14 = v13;
  if (specialized Sequence.allSatisfy(_:)(implicit closure #1 in _BPlistEncodingFormat.string(_:), 0, v12, v13))
  {

    v15 = MEMORY[0x1865CB280](v12, v14);
    v16 = 1;
  }

  else
  {
    v17 = String._bridgeToObjectiveCImpl()();

    v15 = [v17 hash];
    swift_unknownObjectRelease();
    v16 = 0;
  }

  v18 = *(v2 + 88);
  v19 = *(v18 + 16);
  v20 = *(v18 + 24);
  v21 = *(v18 + 32);
  *(v18 + 16) = v12;
  *(v18 + 24) = v14;
  *(v18 + 32) = v15;
  v22 = *(v18 + 40);
  *(v18 + 40) = v16;

  outlined consume of _BPlistEncodingFormat.Reference.Backing(v19, v20, v21, v22);

  v23 = specialized Set._Variant.insert(_:)(&v35, v18);

  v24 = v35;
  if (v23)
  {
    type metadata accessor for _BPlistEncodingFormat.Reference();
    v25 = swift_allocObject();
    *(v25 + 24) = 0;
    *(v25 + 32) = 0;
    *(v25 + 16) = 2;
    *(v25 + 40) = -112;
    *(v25 + 48) = -1;

    *(v2 + 88) = v25;
  }

  v27 = *(v3 + 40);
  if ((v27 & 0xF0) == 0x60)
  {
    v29 = *(v3 + 24);
    v28 = *(v3 + 32);
    v35 = *(v3 + 16);
    v30 = v35;
    *&v36 = v29;
    *(&v36 + 1) = v28;
    *(v3 + 24) = 0;
    *(v3 + 32) = 0;
    *(v3 + 16) = 2;
    *(v3 + 40) = -112;

    outlined consume of _BPlistEncodingFormat.Reference.Backing(v30, v29, v28, v27);
    specialized OrderedDictionary.subscript.setter(v37, v24);
    v31 = *(v3 + 16);
    v32 = *(v3 + 24);
    v33 = *(v3 + 32);
    *(v3 + 16) = v35;
    *(v3 + 24) = v36;
    v34 = *(v3 + 40);
    *(v3 + 40) = 96;
    return outlined consume of _BPlistEncodingFormat.Reference.Backing(v31, v32, v33, v34);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _PlistKeyedEncodingContainerBPlist.nestedUnkeyedContainer(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v67 = a3;
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v66 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v69 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v72 = &v65 - v13;
  v14 = v3;
  v73 = *v3;
  v15 = *(a2 + 24);
  v68 = a1;
  v65 = v15;
  v16 = dispatch thunk of CodingKey.stringValue.getter();
  v18 = v17;
  v19 = specialized Sequence.allSatisfy(_:)(implicit closure #1 in _BPlistEncodingFormat.string(_:), 0, v16, v17);
  v70 = v10;
  v71 = v9;
  if (v19)
  {

    v20 = MEMORY[0x1865CB280](v16, v18);
    v21 = 1;
  }

  else
  {
    v22 = String._bridgeToObjectiveCImpl()();

    v20 = [v22 hash];
    swift_unknownObjectRelease();
    v21 = 0;
  }

  v23 = v73;
  v24 = *(v73 + 88);
  v26 = *(v24 + 16);
  v25 = *(v24 + 24);
  v27 = *(v24 + 32);
  *(v24 + 16) = v16;
  *(v24 + 24) = v18;
  *(v24 + 32) = v20;
  v28 = v23;
  v29 = *(v24 + 40);
  *(v24 + 40) = v21;

  outlined consume of _BPlistEncodingFormat.Reference.Backing(v26, v25, v27, v29);

  LOBYTE(v25) = specialized Set._Variant.insert(_:)(&v75, v24);

  v74 = v75;
  if (v25)
  {
    type metadata accessor for _BPlistEncodingFormat.Reference();
    v30 = swift_allocObject();
    *(v30 + 24) = 0;
    *(v30 + 32) = 0;
    *(v30 + 16) = 2;
    *(v30 + 40) = -112;
    *(v30 + 48) = -1;

    *(v28 + 88) = v30;
  }

  v32 = v14[1];
  v33 = v72;
  if ((*(v32 + 40) & 0xF0) != 0x60)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v35 = *(v32 + 24);
  v34 = *(v32 + 32);
  v36 = *(v32 + 16);

  v37 = specialized OrderedDictionary.subscript.getter(v74, v36, v35, v34);

  if (v37)
  {
    v38 = v37;
    if ((*(v37 + 40) & 0xF0) == 0x50)
    {
LABEL_12:
      v49 = v14[2];
      (*(v7 + 16))(v33, v68, v6);
      (*(v7 + 56))(v33, 0, 1, v6);
      v50 = v69;
      v51 = v70;
      v52 = v71;
      (*(v70 + 16))(v69, v33, v71);
      if ((*(v7 + 48))(v50, 1, v6) == 1)
      {
        v53 = *(v51 + 8);
        v54 = v73;

        v53(v33, v52);
        v53(v50, v52);

LABEL_20:
        v64 = v67;
        v67[3] = &unk_1EEEEC460;
        v64[4] = lazy protocol witness table accessor for type _PlistUnkeyedEncodingContainerBPlist and conformance _PlistUnkeyedEncodingContainerBPlist();

        *v64 = v54;
        v64[1] = v38;
        v64[2] = v49;
        return result;
      }

      v55 = v66;
      v56 = *(v7 + 32);
      v56(v66, v50, v6);
      v57 = swift_allocObject();
      v58 = v65;
      v57[5] = v6;
      v57[6] = v58;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v57 + 2);
      v56(boxed_opaque_existential_0, v55, v6);
      v60 = *(v51 + 8);
      v54 = v73;

      v60(v72, v52);
      v57[7] = v49;
      if (v49 >> 62)
      {
        if (v49 >> 62 != 1)
        {
          v63 = 1;
          goto LABEL_19;
        }

        v61 = ((v49 & 0x3FFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v61 = (v49 + 64);
      }

      v62 = *v61;

      v63 = v62 + 1;
      if (!__OFADD__(v62, 1))
      {
LABEL_19:
        v57[8] = v63;
        v49 = v57;
        goto LABEL_20;
      }

      __break(1u);
      goto LABEL_23;
    }

    __break(1u);
  }

  v39 = _ss15ContiguousArrayV12arrayLiteralAByxGxd_tcfC10Foundation21_BPlistEncodingFormatV9ReferenceC_Tt0g5(MEMORY[0x1E69E7CC0]);
  type metadata accessor for _BPlistEncodingFormat.Reference();
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = v39;
  *(result + 40) = 80;
  *(result + 48) = -1;
  v40 = *(v32 + 40);
  if ((v40 & 0xF0) == 0x60)
  {
    v38 = result;
    v42 = *(v32 + 24);
    v41 = *(v32 + 32);
    v75 = *(v32 + 16);
    v43 = v75;
    *&v76 = v42;
    *(&v76 + 1) = v41;
    *(v32 + 16) = 2;
    *(v32 + 24) = 0;
    *(v32 + 32) = 0;
    *(v32 + 40) = -112;

    outlined copy of _BPlistEncodingFormat.Reference.Backing(v43, v42, v41, v40);
    outlined consume of _BPlistEncodingFormat.Reference.Backing(v43, v42, v41, v40);

    v44 = v74;

    specialized OrderedDictionary.subscript.setter(v38, v44);
    v45 = *(v32 + 16);
    v46 = *(v32 + 24);
    v47 = *(v32 + 32);
    *(v32 + 16) = v75;
    *(v32 + 24) = v76;
    v48 = *(v32 + 40);
    *(v32 + 40) = 96;
    outlined consume of _BPlistEncodingFormat.Reference.Backing(v45, v46, v47, v48);
    v33 = v72;
    goto LABEL_12;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t _PlistKeyedEncodingContainerBPlist.superEncoder()@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = *(v4 + 40);
  v6 = type metadata accessor for __PlistReferencingEncoderBPlist();
  v7 = swift_allocObject();

  v9 = specialized __PlistReferencingEncoderBPlist.init(referencing:at:codingPathNode:wrapping:)(v8, 0x7265707573, 0xE500000000000000, 0, 0, v5, v3, v7);
  a1[3] = v6;
  result = lazy protocol witness table accessor for type _BPlistEncodingFormat.Reference and conformance _BPlistEncodingFormat.Reference(&lazy protocol witness table cache variable for type __PlistReferencingEncoderBPlist and conformance __PlistEncoderBPlist, 255, type metadata accessor for __PlistReferencingEncoderBPlist);
  a1[4] = result;
  *a1 = v9;
  return result;
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance _PlistKeyedEncodingContainerBPlist<A>()
{
  return KeyedEncodingContainerProtocol.encode(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encode(_:forKey:)();
}

uint64_t _PlistUnkeyedEncodingContainerBPlist.encode(_:)(char a1)
{
  v2 = *v1;
  v3 = a1;
  v4 = *(*v1 + 88);
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(v4 + 32);
  *(v4 + 16) = v3;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  v8 = *(v4 + 40);
  *(v4 + 40) = 32;
  outlined consume of _BPlistEncodingFormat.Reference.Backing(v5, v6, v7, v8);
  v9 = *(v2 + 88);

  if (specialized Set._Variant.insert(_:)(&v12, v9))
  {
    type metadata accessor for _BPlistEncodingFormat.Reference();
    v10 = swift_allocObject();
    *(v10 + 24) = 0;
    *(v10 + 32) = 0;
    *(v10 + 16) = 2;
    *(v10 + 40) = -112;
    *(v10 + 48) = -1;
    *(v2 + 88) = v10;
  }

  _BPlistEncodingFormat.Reference.insert(_:)();
}

uint64_t _PlistUnkeyedEncodingContainerBPlist.encode(_:)(__int16 a1)
{
  v2 = *v1;
  v3 = a1;
  v4 = *(*v1 + 88);
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(v4 + 32);
  *(v4 + 16) = v3;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  v8 = *(v4 + 40);
  *(v4 + 40) = 32;
  outlined consume of _BPlistEncodingFormat.Reference.Backing(v5, v6, v7, v8);
  v9 = *(v2 + 88);

  if (specialized Set._Variant.insert(_:)(&v12, v9))
  {
    type metadata accessor for _BPlistEncodingFormat.Reference();
    v10 = swift_allocObject();
    *(v10 + 24) = 0;
    *(v10 + 32) = 0;
    *(v10 + 16) = 2;
    *(v10 + 40) = -112;
    *(v10 + 48) = -1;
    *(v2 + 88) = v10;
  }

  _BPlistEncodingFormat.Reference.insert(_:)();
}

uint64_t _PlistUnkeyedEncodingContainerBPlist.encode(_:)(int a1)
{
  v2 = *v1;
  v3 = a1;
  v4 = *(*v1 + 88);
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(v4 + 32);
  *(v4 + 16) = v3;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  v8 = *(v4 + 40);
  *(v4 + 40) = 32;
  outlined consume of _BPlistEncodingFormat.Reference.Backing(v5, v6, v7, v8);
  v9 = *(v2 + 88);

  if (specialized Set._Variant.insert(_:)(&v12, v9))
  {
    type metadata accessor for _BPlistEncodingFormat.Reference();
    v10 = swift_allocObject();
    *(v10 + 24) = 0;
    *(v10 + 32) = 0;
    *(v10 + 16) = 2;
    *(v10 + 40) = -112;
    *(v10 + 48) = -1;
    *(v2 + 88) = v10;
  }

  _BPlistEncodingFormat.Reference.insert(_:)();
}

uint64_t _PlistUnkeyedEncodingContainerBPlist.encode(_:)(unsigned __int16 a1)
{
  v2 = *v1;
  v3 = a1;
  v4 = *(*v1 + 88);
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(v4 + 32);
  *(v4 + 16) = v3;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  v8 = *(v4 + 40);
  *(v4 + 40) = 32;
  outlined consume of _BPlistEncodingFormat.Reference.Backing(v5, v6, v7, v8);
  v9 = *(v2 + 88);

  if (specialized Set._Variant.insert(_:)(&v12, v9))
  {
    type metadata accessor for _BPlistEncodingFormat.Reference();
    v10 = swift_allocObject();
    *(v10 + 24) = 0;
    *(v10 + 32) = 0;
    *(v10 + 16) = 2;
    *(v10 + 40) = -112;
    *(v10 + 48) = -1;
    *(v2 + 88) = v10;
  }

  _BPlistEncodingFormat.Reference.insert(_:)();
}

uint64_t _PlistUnkeyedEncodingContainerBPlist.encode(_:)(unsigned int a1)
{
  v2 = *v1;
  v3 = a1;
  v4 = *(*v1 + 88);
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(v4 + 32);
  *(v4 + 16) = v3;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  v8 = *(v4 + 40);
  *(v4 + 40) = 32;
  outlined consume of _BPlistEncodingFormat.Reference.Backing(v5, v6, v7, v8);
  v9 = *(v2 + 88);

  if (specialized Set._Variant.insert(_:)(&v12, v9))
  {
    type metadata accessor for _BPlistEncodingFormat.Reference();
    v10 = swift_allocObject();
    *(v10 + 24) = 0;
    *(v10 + 32) = 0;
    *(v10 + 16) = 2;
    *(v10 + 40) = -112;
    *(v10 + 48) = -1;
    *(v2 + 88) = v10;
  }

  _BPlistEncodingFormat.Reference.insert(_:)();
}

uint64_t _PlistUnkeyedEncodingContainerBPlist.encode(_:)(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(v4 + 32);
  *(v4 + 16) = a1;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  v8 = *(v4 + 40);
  *(v4 + 40) = a2;
  outlined consume of _BPlistEncodingFormat.Reference.Backing(v5, v6, v7, v8);
  v9 = *(v3 + 88);

  if (specialized Set._Variant.insert(_:)(&v12, v9))
  {
    type metadata accessor for _BPlistEncodingFormat.Reference();
    v10 = swift_allocObject();
    *(v10 + 24) = 0;
    *(v10 + 32) = 0;
    *(v10 + 16) = 2;
    *(v10 + 40) = -112;
    *(v10 + 48) = -1;
    *(v3 + 88) = v10;
  }

  _BPlistEncodingFormat.Reference.insert(_:)();
}

uint64_t _PlistUnkeyedEncodingContainerBPlist.encode(_:)(float a1)
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  *(v3 + 16) = LODWORD(a1);
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  v7 = *(v3 + 40);
  *(v3 + 40) = 64;
  outlined consume of _BPlistEncodingFormat.Reference.Backing(v4, v5, v6, v7);
  v8 = *(v2 + 88);

  if (specialized Set._Variant.insert(_:)(&v11, v8))
  {
    type metadata accessor for _BPlistEncodingFormat.Reference();
    v9 = swift_allocObject();
    *(v9 + 24) = 0;
    *(v9 + 32) = 0;
    *(v9 + 16) = 2;
    *(v9 + 40) = -112;
    *(v9 + 48) = -1;
    *(v2 + 88) = v9;
  }

  _BPlistEncodingFormat.Reference.insert(_:)();
}

void _PlistUnkeyedEncodingContainerBPlist.nestedContainer<A>(keyedBy:)()
{
  v1 = v0;
  v2 = *(v0 + 8);
  v3 = *(v2 + 40) >> 4;
  if (v3 == 5)
  {
    v4 = 16;
  }

  else
  {
    if (v3 != 6)
    {
      goto LABEL_13;
    }

    v4 = 32;
  }

  v5 = *(*(v2 + v4) + 16);
  v6 = _s19CollectionsInternal17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufC10Foundation21_BPlistEncodingFormatV9ReferenceC_ALSayAL_ALtGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v8 = v7;
  v10 = v9;
  type metadata accessor for _BPlistEncodingFormat.Reference();
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  *(v11 + 24) = v8;
  *(v11 + 32) = v10;
  *(v11 + 40) = 96;
  *(v11 + 48) = -1;
  _BPlistEncodingFormat.Reference.insert(_:)();
  v12 = *(v1 + 16);
  v13 = swift_allocObject();
  v13[5] = &type metadata for _CodingKey;
  v13[6] = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  v14 = swift_allocObject();
  v13[2] = v14;
  *(v14 + 24) = 0;
  *(v14 + 32) = 0;
  *(v14 + 16) = v5;
  *(v14 + 40) = 2;
  v13[7] = v12;
  if (!(v12 >> 62))
  {
    v16 = (v12 + 64);
    goto LABEL_9;
  }

  v15 = 0;
  if (v12 >> 62 == 1)
  {
    v16 = ((v12 & 0x3FFFFFFFFFFFFFFFLL) + 32);
LABEL_9:
    v15 = *v16;
  }

  if (!__OFADD__(v15, 1))
  {
    v13[8] = v15 + 1;
    type metadata accessor for _PlistKeyedEncodingContainerBPlist();

    swift_getWitnessTable();
    KeyedEncodingContainer.init<A>(_:)();
    return;
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

void _PlistUnkeyedEncodingContainerBPlist.nestedUnkeyedContainer()(void *a1@<X8>)
{
  v2 = v1;
  v4 = v1[1];
  v5 = *(v4 + 40) >> 4;
  if (v5 == 5)
  {
    v6 = 16;
  }

  else
  {
    if (v5 != 6)
    {
LABEL_15:
      __break(1u);
      return;
    }

    v6 = 32;
  }

  v7 = *(*(v4 + v6) + 16);
  v8 = _ss15ContiguousArrayV12arrayLiteralAByxGxd_tcfC10Foundation21_BPlistEncodingFormatV9ReferenceC_Tt0g5(MEMORY[0x1E69E7CC0]);
  type metadata accessor for _BPlistEncodingFormat.Reference();
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  *(v9 + 32) = 0;
  *(v9 + 16) = v8;
  *(v9 + 40) = 80;
  *(v9 + 48) = -1;
  _BPlistEncodingFormat.Reference.insert(_:)();
  v10 = *v2;
  v11 = v2[2];
  v12 = swift_allocObject();
  v12[5] = &type metadata for _CodingKey;
  v12[6] = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  v13 = swift_allocObject();
  v12[2] = v13;
  *(v13 + 24) = 0;
  *(v13 + 32) = 0;
  *(v13 + 16) = v7;
  *(v13 + 40) = 2;
  v12[7] = v11;
  if (v11 >> 62)
  {
    v14 = 0;
    if (v11 >> 62 != 1)
    {
      goto LABEL_10;
    }

    v15 = ((v11 & 0x3FFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v15 = (v11 + 64);
  }

  v14 = *v15;

LABEL_10:
  if (__OFADD__(v14, 1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v12[8] = v14 + 1;
  a1[3] = &unk_1EEEEC460;
  a1[4] = lazy protocol witness table accessor for type _PlistUnkeyedEncodingContainerBPlist and conformance _PlistUnkeyedEncodingContainerBPlist();
  *a1 = v10;
  a1[1] = v9;
  a1[2] = v12;
}

void _PlistUnkeyedEncodingContainerBPlist.superEncoder()(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = *(v3 + 40) >> 4;
  if (v5 == 5)
  {
    v6 = 16;
  }

  else
  {
    if (v5 != 6)
    {
LABEL_21:
      __break(1u);
      return;
    }

    v6 = 32;
  }

  v7 = *(*(v3 + v6) + 16);
  v8 = v4[5];
  v9 = type metadata accessor for __PlistReferencingEncoderBPlist();
  v10 = swift_allocObject();
  *(v10 + 96) = v4;
  *(v10 + 104) = v3;
  *(v10 + 112) = v7;
  *(v10 + 120) = 0;
  v11 = v4[4];
  v21 = v4[3];
  v12 = swift_allocObject();
  v12[5] = &type metadata for _CodingKey;
  v12[6] = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  v13 = swift_allocObject();
  v12[2] = v13;
  *(v13 + 24) = 0;
  *(v13 + 32) = 0;
  *(v13 + 16) = v7;
  *(v13 + 40) = 2;
  v14 = v8 >> 62;
  v12[7] = v8;
  if (v8 >> 62)
  {
    v15 = 0;
    if (v14 != 1)
    {
      goto LABEL_10;
    }

    v16 = ((v8 & 0x3FFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v16 = (v8 + 64);
  }

  v15 = *v16;

LABEL_10:
  if (__OFADD__(v15, 1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v12[8] = v15 + 1;
  if (v14)
  {
    if (v14 != 1)
    {
      v19 = 0;
      v18 = v21;
      goto LABEL_17;
    }

    v8 &= 0x3FFFFFFFFFFFFFFFuLL;
    v17 = 32;
  }

  else
  {
    v17 = 64;
  }

  v18 = v21;
  v19 = *(v8 + v17);
LABEL_17:
  *(v10 + 16) = MEMORY[0x1E69E7CC0];
  *(v10 + 24) = v18;
  *(v10 + 32) = v11;
  *(v10 + 40) = v12;
  *(v10 + 48) = v19;
  specialized _BPlistEncodingFormat.init()(v22);
  v20 = v22[1];
  *(v10 + 56) = v22[0];
  *(v10 + 72) = v20;
  *(v10 + 88) = v23;
  a1[3] = v9;
  a1[4] = lazy protocol witness table accessor for type _BPlistEncodingFormat.Reference and conformance _BPlistEncodingFormat.Reference(&lazy protocol witness table cache variable for type __PlistReferencingEncoderBPlist and conformance __PlistEncoderBPlist, 255, type metadata accessor for __PlistReferencingEncoderBPlist);
  *a1 = v10;
}

uint64_t protocol witness for UnkeyedEncodingContainer.count.getter in conformance _PlistUnkeyedEncodingContainerBPlist()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + 40) >> 4;
  if (v2 == 5)
  {
    v3 = 16;
    return *(*(v1 + v3) + 16);
  }

  if (v2 == 6)
  {
    v3 = 32;
    return *(*(v1 + v3) + 16);
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for UnkeyedEncodingContainer.encodeNil() in conformance _PlistUnkeyedEncodingContainerBPlist()
{

  _BPlistEncodingFormat.Reference.insert(_:)();
}

uint64_t protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _PlistUnkeyedEncodingContainerBPlist()
{

  _BPlistEncodingFormat.Reference.insert(_:)();
}

{
  return UnkeyedEncodingContainer.encode(_:)();
}

{
  return UnkeyedEncodingContainer.encode(_:)();
}

uint64_t protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _PlistUnkeyedEncodingContainerBPlist(unint64_t a1, unint64_t a2)
{
  _BPlistEncodingFormat.string(_:)(a1, a2);
  _BPlistEncodingFormat.Reference.insert(_:)();
}

uint64_t protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _PlistUnkeyedEncodingContainerBPlist(double a1)
{
  specialized _BPlistEncodingFormat.number<A>(from:)(a1);
  _BPlistEncodingFormat.Reference.insert(_:)();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> __PlistEncoderBPlist.encode(_:)(Swift::Int8 a1)
{
  if ((*(*v1 + 240))())
  {
    v3 = v1[11];
    v4 = *(v3 + 16);
    v5 = *(v3 + 24);
    v6 = *(v3 + 32);
    *(v3 + 16) = a1;
    *(v3 + 24) = 0;
    *(v3 + 32) = 0;
    v7 = *(v3 + 40);
    *(v3 + 40) = 32;
    outlined consume of _BPlistEncodingFormat.Reference.Backing(v4, v5, v6, v7);
    v8 = v1[11];

    if (specialized Set._Variant.insert(_:)(&v10, v8))
    {
      type metadata accessor for _BPlistEncodingFormat.Reference();
      v9 = swift_allocObject();
      *(v9 + 24) = 0;
      *(v9 + 32) = 0;
      *(v9 + 16) = 2;
      *(v9 + 40) = -112;
      *(v9 + 48) = -1;
      v1[11] = v9;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> __PlistEncoderBPlist.encode(_:)(Swift::Int16 a1)
{
  if ((*(*v1 + 240))())
  {
    v3 = v1[11];
    v4 = *(v3 + 16);
    v5 = *(v3 + 24);
    v6 = *(v3 + 32);
    *(v3 + 16) = a1;
    *(v3 + 24) = 0;
    *(v3 + 32) = 0;
    v7 = *(v3 + 40);
    *(v3 + 40) = 32;
    outlined consume of _BPlistEncodingFormat.Reference.Backing(v4, v5, v6, v7);
    v8 = v1[11];

    if (specialized Set._Variant.insert(_:)(&v10, v8))
    {
      type metadata accessor for _BPlistEncodingFormat.Reference();
      v9 = swift_allocObject();
      *(v9 + 24) = 0;
      *(v9 + 32) = 0;
      *(v9 + 16) = 2;
      *(v9 + 40) = -112;
      *(v9 + 48) = -1;
      v1[11] = v9;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> __PlistEncoderBPlist.encode(_:)(Swift::Int32 a1)
{
  if ((*(*v1 + 240))())
  {
    v3 = v1[11];
    v4 = *(v3 + 16);
    v5 = *(v3 + 24);
    v6 = *(v3 + 32);
    *(v3 + 16) = a1;
    *(v3 + 24) = 0;
    *(v3 + 32) = 0;
    v7 = *(v3 + 40);
    *(v3 + 40) = 32;
    outlined consume of _BPlistEncodingFormat.Reference.Backing(v4, v5, v6, v7);
    v8 = v1[11];

    if (specialized Set._Variant.insert(_:)(&v10, v8))
    {
      type metadata accessor for _BPlistEncodingFormat.Reference();
      v9 = swift_allocObject();
      *(v9 + 24) = 0;
      *(v9 + 32) = 0;
      *(v9 + 16) = 2;
      *(v9 + 40) = -112;
      *(v9 + 48) = -1;
      v1[11] = v9;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> __PlistEncoderBPlist.encode(_:)(Swift::UInt8 a1)
{
  if ((*(*v1 + 240))())
  {
    v3 = v1[11];
    v4 = *(v3 + 16);
    v5 = *(v3 + 24);
    v6 = *(v3 + 32);
    *(v3 + 16) = a1;
    *(v3 + 24) = 0;
    *(v3 + 32) = 0;
    v7 = *(v3 + 40);
    *(v3 + 40) = 32;
    outlined consume of _BPlistEncodingFormat.Reference.Backing(v4, v5, v6, v7);
    v8 = v1[11];

    if (specialized Set._Variant.insert(_:)(&v10, v8))
    {
      type metadata accessor for _BPlistEncodingFormat.Reference();
      v9 = swift_allocObject();
      *(v9 + 24) = 0;
      *(v9 + 32) = 0;
      *(v9 + 16) = 2;
      *(v9 + 40) = -112;
      *(v9 + 48) = -1;
      v1[11] = v9;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> __PlistEncoderBPlist.encode(_:)(Swift::UInt16 a1)
{
  if ((*(*v1 + 240))())
  {
    v3 = v1[11];
    v4 = *(v3 + 16);
    v5 = *(v3 + 24);
    v6 = *(v3 + 32);
    *(v3 + 16) = a1;
    *(v3 + 24) = 0;
    *(v3 + 32) = 0;
    v7 = *(v3 + 40);
    *(v3 + 40) = 32;
    outlined consume of _BPlistEncodingFormat.Reference.Backing(v4, v5, v6, v7);
    v8 = v1[11];

    if (specialized Set._Variant.insert(_:)(&v10, v8))
    {
      type metadata accessor for _BPlistEncodingFormat.Reference();
      v9 = swift_allocObject();
      *(v9 + 24) = 0;
      *(v9 + 32) = 0;
      *(v9 + 16) = 2;
      *(v9 + 40) = -112;
      *(v9 + 48) = -1;
      v1[11] = v9;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> __PlistEncoderBPlist.encode(_:)(Swift::UInt32 a1)
{
  if ((*(*v1 + 240))())
  {
    v3 = v1[11];
    v4 = *(v3 + 16);
    v5 = *(v3 + 24);
    v6 = *(v3 + 32);
    *(v3 + 16) = a1;
    *(v3 + 24) = 0;
    *(v3 + 32) = 0;
    v7 = *(v3 + 40);
    *(v3 + 40) = 32;
    outlined consume of _BPlistEncodingFormat.Reference.Backing(v4, v5, v6, v7);
    v8 = v1[11];

    if (specialized Set._Variant.insert(_:)(&v10, v8))
    {
      type metadata accessor for _BPlistEncodingFormat.Reference();
      v9 = swift_allocObject();
      *(v9 + 24) = 0;
      *(v9 + 32) = 0;
      *(v9 + 16) = 2;
      *(v9 + 40) = -112;
      *(v9 + 48) = -1;
      v1[11] = v9;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> __PlistEncoderBPlist.encode(_:)(Swift::Float a1)
{
  if ((*(*v1 + 240))())
  {
    v3 = v1[11];
    v4 = *(v3 + 16);
    v5 = *(v3 + 24);
    v6 = *(v3 + 32);
    *(v3 + 16) = LODWORD(a1);
    *(v3 + 24) = 0;
    *(v3 + 32) = 0;
    v7 = *(v3 + 40);
    *(v3 + 40) = 64;
    outlined consume of _BPlistEncodingFormat.Reference.Backing(v4, v5, v6, v7);
    v8 = v1[11];

    if (specialized Set._Variant.insert(_:)(&v10, v8))
    {
      type metadata accessor for _BPlistEncodingFormat.Reference();
      v9 = swift_allocObject();
      *(v9 + 24) = 0;
      *(v9 + 32) = 0;
      *(v9 + 16) = 2;
      *(v9 + 40) = -112;
      *(v9 + 48) = -1;
      v1[11] = v9;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  else
  {
    __break(1u);
  }
}

uint64_t protocol witness for Encoder.codingPath.getter in conformance __PlistEncoderBPlist()
{
  v1 = *(*v0 + 40);

  v2 = _CodingPathNode.path.getter(v1);

  return v2;
}

uint64_t protocol witness for SingleValueEncodingContainer.encode(_:) in conformance __PlistEncoderBPlist()
{
  return SingleValueEncodingContainer.encode(_:)();
}

{
  return SingleValueEncodingContainer.encode(_:)();
}

uint64_t _BPlistEncodingFormat.string(_:)(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (specialized Sequence.allSatisfy(_:)(implicit closure #1 in _BPlistEncodingFormat.string(_:), 0, a1, a2))
  {

    v6 = MEMORY[0x1865CB280](a1, a2);
    v7 = 1;
  }

  else
  {
    v8 = String._bridgeToObjectiveCImpl()();

    v6 = [v8 hash];
    swift_unknownObjectRelease();
    v7 = 0;
  }

  v9 = *(v3 + 32);
  v10 = *(v9 + 16);
  v11 = *(v9 + 24);
  v12 = *(v9 + 32);
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = v6;
  v13 = *(v9 + 40);
  *(v9 + 40) = v7;

  outlined consume of _BPlistEncodingFormat.Reference.Backing(v10, v11, v12, v13);

  v14 = specialized Set._Variant.insert(_:)(&v18, v9);

  v15 = v18;
  if (v14)
  {
    type metadata accessor for _BPlistEncodingFormat.Reference();
    v16 = swift_allocObject();
    *(v16 + 24) = 0;
    *(v16 + 32) = 0;
    *(v16 + 16) = 2;
    *(v16 + 40) = -112;
    *(v16 + 48) = -1;

    *(v3 + 32) = v16;
  }

  return v15;
}

uint64_t specialized __PlistEncoderBPlist.wrap<A>(_:for:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v8 = a6;
  v96 = a5;
  v10 = ~a6;
  v74 = *(*(v6 + 16) + 16);
  v11 = _s19CollectionsInternal17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufC10Foundation21_BPlistEncodingFormatV9ReferenceC_ALSayAL_ALtGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v13 = v12;
  v15 = v14;
  type metadata accessor for _BPlistEncodingFormat.Reference();
  v16 = swift_allocObject();
  *(v16 + 24) = v13;
  v81 = (v16 + 24);
  *(v16 + 16) = v11;
  *(v16 + 32) = v15;
  *(v16 + 40) = 96;
  *(v16 + 48) = -1;

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v75 = v6 + 16;
  specialized ContiguousArray._endMutation()();
  if (!v10)
  {

    goto LABEL_9;
  }

  v17 = swift_allocObject();
  v17[5] = &type metadata for _CodingKey;
  v17[6] = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  v18 = swift_allocObject();
  v17[2] = v18;
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  *(v18 + 32) = v96;
  *(v18 + 40) = v8;
  v17[7] = a2;
  if (!(a2 >> 62))
  {
    v19 = (a2 + 64);
LABEL_7:
    v20 = *v19;

    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
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
      goto LABEL_71;
    }

    goto LABEL_8;
  }

  if (a2 >> 62 == 1)
  {
    v19 = ((a2 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    goto LABEL_7;
  }

  v21 = 1;
LABEL_8:
  v17[8] = v21;
  a2 = v17;
LABEL_9:
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS3key_SE_p5valuet_Tt1g5(*(a1 + 16), 0);
    v71 = specialized Sequence._copyContents(initializing:)(&v93, (v23 + 4), v22, a1);
    outlined copy of _CodingKey?(a3, a4, v96, v8);

    outlined consume of Set<AnyKeyPath>.Iterator._Variant();
    if (v71 == v22)
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  outlined copy of _CodingKey?(a3, a4, v96, v8);
  v23 = MEMORY[0x1E69E7CC0];
LABEL_13:
  *&v93 = v23;
  specialized MutableCollection<>.sort(by:)(&v93);
  v8 = v76;
  if (v76)
  {
LABEL_71:

    __break(1u);
    return result;
  }

  v24 = 0;
  v25 = *(v93 + 16);
  v79 = v93;
  v77 = v93 + 32;
  v82 = a2;
  v84 = v16;
  v80 = v25;
  if (!v25)
  {
    goto LABEL_18;
  }

LABEL_15:
  if ((v24 & 0x8000000000000000) != 0)
  {
    goto LABEL_68;
  }

  if (v24 >= *(v79 + 16))
  {
    goto LABEL_69;
  }

  outlined init with copy of (key: String, value: Encodable)(v77 + 56 * v24, &v89);
  v26 = v24 + 1;
  while (1)
  {
    v93 = v89;
    v94[0] = v90;
    v94[1] = v91;
    v95 = v92;
    v27 = *(&v89 + 1);
    if (!*(&v89 + 1))
    {
      break;
    }

    v86 = v26;
    v96 = 0;
    v28 = v93;
    outlined init with take of Equatable(v94, &v89);
    if ((v27 & 0x2000000000000000) != 0)
    {
      v29 = HIBYTE(v27) & 0xF;
    }

    else
    {
      v29 = v28 & 0xFFFFFFFFFFFFLL;
    }

    v30 = (v28 >> 59) & 1;
    if ((v27 & 0x1000000000000000) == 0)
    {
      LOBYTE(v30) = 1;
    }

    v31 = 4 << v30;
    v8 = (v27 & 0xFFFFFFFFFFFFFFLL);
    v32 = 15;
    do
    {
      while (1)
      {
        if (4 * v29 == v32 >> 14)
        {

          v39 = MEMORY[0x1865CB280](v28, v27);
          v40 = 1;
          goto LABEL_46;
        }

        v33 = v32 & 0xC;
        v34 = v32;
        if (v33 == v31)
        {
          v38 = v32;
          v34 = _StringGuts._slowEnsureMatchingEncoding(_:)(v32, v28, v27);
          v32 = v38;
        }

        v35 = v34 >> 16;
        if (v34 >> 16 >= v29)
        {
          goto LABEL_66;
        }

        if ((v27 & 0x1000000000000000) != 0)
        {
          break;
        }

        if ((v27 & 0x2000000000000000) != 0)
        {
          v87 = v28;
          *&v88 = v27 & 0xFFFFFFFFFFFFFFLL;
          v36 = &v87;
        }

        else
        {
          v36 = ((v27 & 0xFFFFFFFFFFFFFFFLL) + 32);
          if ((v28 & 0x1000000000000000) == 0)
          {
            v72 = v32;
            v36 = _StringObject.sharedUTF8.getter();
            v32 = v72;
          }
        }

        v37 = *(v36 + v35);
        if (v33 == v31)
        {
          goto LABEL_42;
        }

LABEL_37:
        if ((v27 & 0x1000000000000000) != 0)
        {
          goto LABEL_38;
        }

LABEL_26:
        v32 = (v32 & 0xFFFFFFFFFFFF0000) + 65540;
        if (v37 < 0)
        {
          goto LABEL_45;
        }
      }

      v73 = v32;
      v37 = String.UTF8View._foreignSubscript(position:)();
      v32 = v73;
      if (v33 != v31)
      {
        goto LABEL_37;
      }

LABEL_42:
      v32 = _StringGuts._slowEnsureMatchingEncoding(_:)(v32, v28, v27);
      if ((v27 & 0x1000000000000000) == 0)
      {
        goto LABEL_26;
      }

LABEL_38:
      if (v29 <= v32 >> 16)
      {
        goto LABEL_67;
      }

      v32 = String.UTF8View._foreignIndex(after:)();
    }

    while ((v37 & 0x80) == 0);
LABEL_45:
    v41 = String._bridgeToObjectiveCImpl()();

    v39 = [v41 hash];
    swift_unknownObjectRelease();
    v40 = 0;
LABEL_46:
    v42 = *(v7 + 88);
    v44 = *(v42 + 16);
    v43 = *(v42 + 24);
    v45 = *(v42 + 32);
    *(v42 + 16) = v28;
    *(v42 + 24) = v27;
    *(v42 + 32) = v39;
    v46 = *(v42 + 40);
    *(v42 + 40) = v40;

    outlined consume of _BPlistEncodingFormat.Reference.Backing(v44, v43, v45, v46);
    v47 = *(v7 + 88);

    LOBYTE(v43) = specialized Set._Variant.insert(_:)(&v87, v47);

    v48 = v87;
    v8 = v96;
    if (v43)
    {
      v49 = swift_allocObject();
      *(v49 + 24) = 0;
      *(v49 + 32) = 0;
      *(v49 + 16) = 2;
      *(v49 + 40) = -112;
      *(v49 + 48) = -1;
      *(v7 + 88) = v49;
    }

    v50 = *(&v90 + 1);
    v51 = v91;
    v52 = __swift_project_boxed_opaque_existential_1(&v89, *(&v90 + 1));
    v53 = specialized __PlistEncoderBPlist.wrapGeneric<A, B>(_:for:_:)(v52, v82, v28, v27, 0, 0, v50, v51);
    if (v8)
    {

      __swift_destroy_boxed_opaque_existential_1(&v89);
      if (v74 < *(*v75 + 16))
      {
        if (!specialized ContiguousArray._customRemoveLast()(specialized _ContiguousArrayBuffer._consumeAndCreateNew()))
        {
          specialized ContiguousArray.remove(at:)(*(*v75 + 16) - 1, specialized _ContiguousArrayBuffer._consumeAndCreateNew());
        }
      }

      swift_willThrow();
    }

    v54 = v53;

    if (!v54)
    {
      v55 = _s19CollectionsInternal17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufC10Foundation21_BPlistEncodingFormatV9ReferenceC_ALSayAL_ALtGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v57 = v56;
      v59 = v58;
      v54 = swift_allocObject();
      *(v54 + 16) = v55;
      *(v54 + 24) = v57;
      *(v54 + 32) = v59;
      *(v54 + 40) = 96;
      *(v54 + 48) = -1;
    }

    v60 = *(v84 + 40);
    if ((v60 & 0xF0) != 0x60)
    {
      goto LABEL_70;
    }

    v62 = *(v84 + 24);
    v61 = *(v84 + 32);
    v87 = *(v84 + 16);
    v63 = v87;
    *&v88 = v62;
    *(&v88 + 1) = v61;
    *(v84 + 16) = 2;
    *v81 = 0;
    v81[1] = 0;
    *(v84 + 40) = -112;

    outlined consume of _BPlistEncodingFormat.Reference.Backing(v63, v62, v61, v60);
    specialized OrderedDictionary.subscript.setter(v54, v48);
    v64 = *(v84 + 16);
    v65 = *(v84 + 24);
    v66 = *(v84 + 32);
    *(v84 + 16) = v87;
    *(v84 + 24) = v88;
    v67 = *(v84 + 40);
    *(v84 + 40) = 96;
    outlined consume of _BPlistEncodingFormat.Reference.Backing(v64, v65, v66, v67);
    __swift_destroy_boxed_opaque_existential_1(&v89);
    v25 = v80;
    v24 = v86;
    if (v86 != v80)
    {
      goto LABEL_15;
    }

LABEL_18:
    v92 = 0;
    v90 = 0u;
    v91 = 0u;
    v26 = v25;
    v89 = 0u;
  }

  if (v74 >= *(*v75 + 16))
  {

    return 0;
  }

  else
  {
    v68 = specialized ContiguousArray._customRemoveLast()(specialized _ContiguousArrayBuffer._consumeAndCreateNew());
    if (!v68)
    {
      v68 = specialized ContiguousArray.remove(at:)(*(*v75 + 16) - 1, specialized _ContiguousArrayBuffer._consumeAndCreateNew());
    }

    v69 = v68;

    return v69;
  }
}

uint64_t __PlistReferencingEncoderBPlist.__ivar_destroyer()
{

  v1 = *(v0 + 104);

  return outlined consume of __JSONReferencingEncoder.Reference(v1);
}

uint64_t getEnumTagSinglePayload for _BPlistEncodingFormat.Reference.Backing(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x77 && *(a1 + 25))
  {
    return (*a1 + 119);
  }

  v3 = ((*(a1 + 24) >> 4) & 0xFFFFFF8F | (16 * ((*(a1 + 24) >> 1) & 7))) ^ 0x7F;
  if (v3 >= 0x76)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for _BPlistEncodingFormat.Reference.Backing(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x76)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 119;
    if (a3 >= 0x77)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x77)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 2 * (((-a2 >> 4) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for _BPlistEncodingFormat.Reference.Backing(uint64_t result, unsigned int a2)
{
  if (a2 < 9)
  {
    *(result + 24) = *(result + 24) & 1 | (16 * a2);
  }

  else
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 9;
    *(result + 24) = -112;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _BPlistEncodingFormat(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for _BPlistEncodingFormat(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Void __swiftcall _BPlistEncodingFormat.Writer.append(_:isASCII:)(Swift::String _, Swift::Bool isASCII)
{
  if (isASCII)
  {
    v11 = _;

    specialized String.withUTF8<A>(_:)(&v11._countAndFlagsBits);

    return;
  }

  v11._countAndFlagsBits = 2415919360;
  v2 = String.data(using:allowLossyConversion:)(&v11._countAndFlagsBits, 0, _._countAndFlagsBits, _._object);
  if (v3 >> 60 == 15)
  {
    goto LABEL_20;
  }

  v4 = v2;
  v5 = v3;
  v6 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v6 != 2)
    {
      v7 = 0;
      goto LABEL_16;
    }

    v9 = *(v2 + 16);
    v8 = *(v2 + 24);
    v10 = __OFSUB__(v8, v9);
    v7 = v8 - v9;
    if (!v10)
    {
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_13;
  }

  if (v6)
  {
LABEL_13:
    LODWORD(v7) = HIDWORD(v2) - v2;
    if (!__OFSUB__(HIDWORD(v2), v2))
    {
      v7 = v7;
      goto LABEL_16;
    }

    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  v7 = BYTE6(v3);
LABEL_16:
  _BPlistEncodingFormat.Writer.append(_:count:)(7, v7 / 2);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v4, v5);

  outlined consume of Data?(v4, v5);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance _BPlistEncodingFormat.Reference()
{
  Hasher.init(_seed:)();
  _BPlistEncodingFormat.Reference.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance _BPlistEncodingFormat.Reference()
{
  Hasher.init(_seed:)();
  _BPlistEncodingFormat.Reference.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(char **a1, unint64_t a2, uint64_t *a3)
{
  v4 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_66;
  }

  while (1)
  {
    *a1 = v4;
    v6 = *(v4 + 2);
    if (v6 < 2)
    {
      return 1;
    }

    while (1)
    {
      v7 = *a3;
      if (!*a3)
      {
        __break(1u);
        return result;
      }

      v8 = a2;
      v53 = v6;
      v54 = v4;
      v9 = *&v4[16 * v6];
      v52 = v6 - 1;
      v12 = &v4[16 * v6 + 16];
      v10 = *v12;
      v11 = *(v12 + 1);
      v60 = v9;
      v13 = 56 * v9;
      v14 = (v7 + 56 * v9);
      v15 = 56 * v10;
      v4 = (v7 + 56 * v10);
      v55 = v11;
      v16 = 56 * v11;
      v17 = v7 + 56 * v11;
      v18 = 56 * v10 - 56 * v9;
      v19 = v18 / 56;
      v20 = 56 * v11 - 56 * v10;
      v21 = v20 / 56;
      if (v18 / 56 >= v20 / 56)
      {
        v34 = v8;
        if (v4 != v8 || v17 <= v8)
        {
          memmove(v8, v4, 56 * v21);
        }

        v24 = &v34[56 * v21];
        v36 = v20 < 56 || v15 <= v13;
        a2 = v34;
        if (v36)
        {
LABEL_54:
          v26 = a2;
          v33 = v4;
        }

        else
        {
          do
          {
            v33 = v4 - 56;
            v37 = v24 - 56;
            v17 -= 56;
            while (1)
            {
              outlined init with copy of (key: String, value: Encodable)(v37, &v58);
              outlined init with copy of (key: String, value: Encodable)((v4 - 56), &v56);
              v39 = v58 == v56 && v59 == v57;
              v40 = v39 ? 0 : _stringCompareWithSmolCheck(_:_:expecting:)();
              outlined destroy of TermOfAddress?(&v56, &_sSS3key_SE_p5valuetMd);
              outlined destroy of TermOfAddress?(&v58, &_sSS3key_SE_p5valuetMd);
              if (v40)
              {
                break;
              }

              if (v17 + 56 != v37 + 56)
              {
                v41 = *v37;
                v42 = *(v37 + 16);
                v43 = *(v37 + 32);
                *(v17 + 48) = *(v37 + 48);
                *(v17 + 16) = v42;
                *(v17 + 32) = v43;
                *v17 = v41;
              }

              v38 = v37 - 56;
              v17 -= 56;
              v22 = v37 > a2;
              v37 -= 56;
              if (!v22)
              {
                v24 = v38 + 56;
                goto LABEL_54;
              }
            }

            if ((v17 + 56) != v4)
            {
              v44 = *v33;
              v45 = *(v4 - 40);
              v46 = *(v4 - 24);
              *(v17 + 48) = *(v4 - 1);
              *(v17 + 16) = v45;
              *(v17 + 32) = v46;
              *v17 = v44;
            }

            v24 = v37 + 56;
            if (v37 + 56 <= a2)
            {
              break;
            }

            v4 -= 56;
          }

          while (v14 < v33);
          v24 = v37 + 56;
          v26 = a2;
        }
      }

      else
      {
        a2 = v8;
        v22 = v14 == v8 && v4 > v8;
        if (!v22)
        {
          v23 = v18;
          memmove(v8, v14, 56 * v19);
          v18 = v23;
        }

        v24 = a2 + 56 * v19;
        v25 = v18 < 56 || v16 <= v15;
        v26 = a2;
        if (!v25)
        {
          while (1)
          {
            outlined init with copy of (key: String, value: Encodable)(v4, &v58);
            outlined init with copy of (key: String, value: Encodable)(v26, &v56);
            v27 = v58 == v56 && v59 == v57;
            if (v27)
            {
              break;
            }

            v28 = _stringCompareWithSmolCheck(_:_:expecting:)();
            outlined destroy of TermOfAddress?(&v56, &_sSS3key_SE_p5valuetMd);
            outlined destroy of TermOfAddress?(&v58, &_sSS3key_SE_p5valuetMd);
            if ((v28 & 1) == 0)
            {
              goto LABEL_23;
            }

            v29 = v4;
            v27 = v14 == v4;
            v4 += 56;
            if (!v27)
            {
              goto LABEL_24;
            }

LABEL_25:
            v14 += 56;
            if (v26 >= v24 || v4 >= v17)
            {
              goto LABEL_27;
            }
          }

          outlined destroy of TermOfAddress?(&v56, &_sSS3key_SE_p5valuetMd);
          outlined destroy of TermOfAddress?(&v58, &_sSS3key_SE_p5valuetMd);
LABEL_23:
          v29 = v26;
          v27 = v14 == v26;
          v26 += 56;
          if (v27)
          {
            goto LABEL_25;
          }

LABEL_24:
          v30 = *v29;
          v31 = *(v29 + 1);
          v32 = *(v29 + 2);
          *(v14 + 6) = *(v29 + 6);
          *(v14 + 1) = v31;
          *(v14 + 2) = v32;
          *v14 = v30;
          goto LABEL_25;
        }

LABEL_27:
        v33 = v14;
      }

      v47 = (v24 - v26) / 56;
      if (v33 != v26 || v33 >= &v26[56 * v47])
      {
        memmove(v33, v26, 56 * v47);
      }

      v48 = v60;
      if (v55 < v60)
      {
        break;
      }

      v4 = v54;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v54);
      }

      if ((v53 - 2) >= *(v4 + 2))
      {
        goto LABEL_65;
      }

      v49 = &v4[16 * v53];
      *v49 = v48;
      *(v49 + 1) = v55;
      *a1 = v4;
      result = specialized Array.remove(at:)(v52);
      v4 = *a1;
      v6 = *(*a1 + 2);
      if (v6 <= 1)
      {
        return 1;
      }
    }

    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
    v4 = result;
  }
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 56;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 56;
  if (v9 >= v11)
  {
    if (a4 != __src || &__src[56 * v11] <= a4)
    {
      memmove(a4, __src, 56 * v11);
    }

    v36 = &v4[56 * v11];
    if (v10 < 56 || v6 <= v7)
    {
      v18 = v6;
    }

    else
    {
      do
      {
        v18 = v6 - 56;
        v19 = (v36 - 56);
        v5 -= 56;
        while (1)
        {
          outlined init with copy of (key: String, value: Encodable)(v19, &v34);
          outlined init with copy of (key: String, value: Encodable)((v6 - 56), &v32);
          v22 = v34 == v32 && v35 == v33;
          v23 = v22 ? 0 : _stringCompareWithSmolCheck(_:_:expecting:)();
          outlined destroy of TermOfAddress?(&v32, &_sSS3key_SE_p5valuetMd);
          outlined destroy of TermOfAddress?(&v34, &_sSS3key_SE_p5valuetMd);
          if (v23)
          {
            break;
          }

          if (v5 + 56 != v19 + 56)
          {
            v24 = *v19;
            v25 = *(v19 + 16);
            v26 = *(v19 + 32);
            *(v5 + 48) = *(v19 + 48);
            *(v5 + 16) = v25;
            *(v5 + 32) = v26;
            *v5 = v24;
          }

          v20 = v19 - 56;
          v5 -= 56;
          v21 = v19 > v4;
          v19 -= 56;
          if (!v21)
          {
            v36 = (v20 + 56);
            v18 = v6;
            goto LABEL_44;
          }
        }

        if ((v5 + 56) != v6)
        {
          v27 = *v18;
          v28 = *(v6 - 40);
          v29 = *(v6 - 24);
          *(v5 + 48) = *(v6 - 1);
          *(v5 + 16) = v28;
          *(v5 + 32) = v29;
          *v5 = v27;
        }

        v36 = (v19 + 56);
        if (v19 + 56 <= v4)
        {
          break;
        }

        v6 -= 56;
      }

      while (v18 > v7);
      v36 = (v19 + 56);
    }
  }

  else
  {
    if (a4 != __dst || &__dst[56 * v9] <= a4)
    {
      memmove(a4, __dst, 56 * v9);
    }

    v36 = &v4[56 * v9];
    if (v8 >= 56 && v6 < v5)
    {
      while (1)
      {
        outlined init with copy of (key: String, value: Encodable)(v6, &v34);
        outlined init with copy of (key: String, value: Encodable)(v4, &v32);
        v12 = v34 == v32 && v35 == v33;
        if (v12)
        {
          break;
        }

        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        outlined destroy of TermOfAddress?(&v32, &_sSS3key_SE_p5valuetMd);
        outlined destroy of TermOfAddress?(&v34, &_sSS3key_SE_p5valuetMd);
        if ((v13 & 1) == 0)
        {
          goto LABEL_16;
        }

        v14 = v6;
        v12 = v7 == v6;
        v6 += 56;
        if (!v12)
        {
          goto LABEL_17;
        }

LABEL_18:
        v7 += 56;
        if (v4 >= v36 || v6 >= v5)
        {
          goto LABEL_20;
        }
      }

      outlined destroy of TermOfAddress?(&v32, &_sSS3key_SE_p5valuetMd);
      outlined destroy of TermOfAddress?(&v34, &_sSS3key_SE_p5valuetMd);
LABEL_16:
      v14 = v4;
      v12 = v7 == v4;
      v4 += 56;
      if (v12)
      {
        goto LABEL_18;
      }

LABEL_17:
      v15 = *v14;
      v16 = *(v14 + 1);
      v17 = *(v14 + 2);
      *(v7 + 6) = *(v14 + 6);
      *(v7 + 1) = v16;
      *(v7 + 2) = v17;
      *v7 = v15;
      goto LABEL_18;
    }

LABEL_20:
    v18 = v7;
  }

LABEL_44:
  v30 = (v36 - v4) / 56;
  if (v18 != v4 || v18 >= &v4[56 * v30])
  {
    memmove(v18, v4, 56 * v30);
  }

  return 1;
}

unint64_t specialized OrderedSet._removeExistingMember(at:in:)(int64_t a1, uint64_t a2)
{
  v4 = v2[1];
  v5 = *(v4 + 16);
  v6 = *v2;
  if (!*v2)
  {
    if (!v5)
    {
      goto LABEL_16;
    }

    return specialized ContiguousArray.remove(at:)(a1, specialized _ContiguousArrayBuffer._consumeAndCreateNew());
  }

  if ((*(v6 + 16) & 0x3FLL) == (*(v6 + 24) & 0x3FLL))
  {
    if (!v5)
    {
      goto LABEL_16;
    }
  }

  else if (v5 <= MEMORY[0x1865CA190](*(v6 + 16) & 0x3FLL))
  {
LABEL_16:
    v11 = specialized ContiguousArray.remove(at:)(a1, specialized _ContiguousArrayBuffer._consumeAndCreateNew());
    specialized OrderedSet._regenerateHashTable()();
    return v11;
  }

  result = swift_isUniquelyReferenced_native();
  v9 = *v2;
  if ((result & 1) == 0)
  {
    if (!v9)
    {
      goto LABEL_20;
    }

    v10 = _HashTable.copy()();

    *v2 = v10;
    v9 = v10;
  }

  if (v9)
  {

    result = specialized _HashTable.UnsafeHandle.delete(bucket:hashValueGenerator:)(a2, (v9 + 16), v9 + 32, v2);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (a1 + 1 >= a1)
    {

      specialized _HashTable.UnsafeHandle.adjustContents<A>(preparingForRemovalOf:in:)(a1, a1 + 1, v4, (v9 + 16), v9 + 32);

      return specialized ContiguousArray.remove(at:)(a1, specialized _ContiguousArrayBuffer._consumeAndCreateNew());
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized ContiguousArray.remove(at:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 24 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 16);
    *a2 = v10;
    *(a2 + 16) = v11;
    result = memmove(v9, (v9 + 24), 24 * (v8 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t specialized ContiguousArray.remove(at:)(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((result & 1) == 0)
  {
    result = a2(v5);
    v5 = result;
    *v2 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 8 * a1;
    v10 = *(v9 + 32);
    memmove((v9 + 32), (v9 + 40), 8 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    specialized ContiguousArray._endMutation()();
    return v10;
  }

  return result;
}

unint64_t specialized _HashTable.UnsafeHandle.delete(bucket:hashValueGenerator:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  *&v16 = a2;
  *(&v16 + 1) = a3;
  *&v17 = a1;
  *(&v17 + 1) = _HashTable.UnsafeHandle._startIterator(bucket:)();
  *&v18 = v7;
  *(&v18 + 1) = v8;
  v19 = 0;
  _HashTable.BucketIterator.advance()();
  if (*(&v17 + 1))
  {
    v9 = _HashTable.UnsafeHandle.firstOccupiedBucketInChain(with:)();
    do
    {
      v24 = v16;
      v25 = v17;
      v26 = v18;
      v27 = v19;
      result = _HashTable.BucketIterator.currentValue.getter();
      if (v11)
      {
LABEL_20:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      if (result >= *(*(a4 + 8) + 16))
      {
        goto LABEL_18;
      }

      Hasher.init(_seed:)();

      _BPlistEncodingFormat.Reference.hash(into:)(&v15);
      v12 = Hasher._finalize()();

      v13 = 1 << *a2;
      if (__OFSUB__(v13, 1))
      {
        goto LABEL_19;
      }

      v14 = (v13 - 1) & v12;
      if (v6 >= v9)
      {
        if (v14 < v9)
        {
          goto LABEL_3;
        }
      }

      else if (v14 >= v9)
      {
        goto LABEL_13;
      }

      if (v6 >= v14)
      {
LABEL_13:
        v20 = v16;
        v21 = v17;
        v22 = v18;
        v23 = v19;
        _HashTable.BucketIterator.currentValue.getter();
        v6 = v21;
        _HashTable.UnsafeHandle.subscript.setter();
      }

LABEL_3:
      _HashTable.BucketIterator.advance()();
    }

    while (*(&v17 + 1));
  }

  return _HashTable.UnsafeHandle.subscript.setter();
}

void specialized _HashTable.UnsafeHandle.adjustContents<A>(preparingForRemovalOf:in:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    goto LABEL_58;
  }

  if (v6 >= 1)
  {
    v10 = *(a3 + 16);
    if (a1 < (v10 - v6) / 2)
    {
      if (MEMORY[0x1865CA180](*a4 & 0x3FLL) / 3 > a1)
      {
        if (a1 < 0)
        {
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        if (v10 < a1)
        {
LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

        if (a1)
        {
          v11 = 0;
          while (1)
          {
            Hasher.init(_seed:)();

            _BPlistEncodingFormat.Reference.hash(into:)(&v43);
            v12 = Hasher._finalize()();
            v13 = 1 << *a4;
            v14 = __OFSUB__(v13, 1);
            v15 = v13 - 1;
            if (v14)
            {
              break;
            }

            v16 = v15 & v12;
            v17 = _HashTable.UnsafeHandle._startIterator(bucket:)();
            *&v43 = a4;
            *(&v43 + 1) = a5;
            *&v44 = v16;
            *(&v44 + 1) = v17;
            *&v45 = v18;
            *(&v45 + 1) = v19;
            v46 = 0;
            while (*(&v44 + 1))
            {
              v47 = v43;
              v48 = v44;
              v49 = v45;
              v50 = v46;
              v20 = _HashTable.BucketIterator.currentValue.getter();
              if ((v21 & 1) == 0 && v20 == v11)
              {
                break;
              }

              _HashTable.BucketIterator.advance()();
            }

            if (__OFADD__(v11, v6))
            {
              goto LABEL_55;
            }

            ++v11;
            _HashTable.BucketIterator.currentValue.setter();

            if (v11 == a1)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

LABEL_17:

        goto LABEL_18;
      }

      *&v47 = a4;
      *(&v47 + 1) = a5;
      *&v48 = 0;
      *(&v48 + 1) = _HashTable.UnsafeHandle._startIterator(bucket:)();
      *&v49 = v26;
      *(&v49 + 1) = v27;
      v50 = 0;
      v43 = v47;
      v44 = v48;
      v45 = v49;
      v46 = v50;
      v28 = _HashTable.BucketIterator.currentValue.getter();
      if ((v29 & 1) != 0 || v28 >= a1)
      {
LABEL_33:
        _HashTable.BucketIterator.advance()();
LABEL_18:
        v22 = a4[1];
        if (__OFSUB__(v22 >> 6, v6))
        {
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        v23 = 1 << *a4;
        v14 = __OFSUB__(v23, 1);
        v24 = v23 - 1;
        if (v14)
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        v25 = (v24 & (((v22 >> 6) - v6) >> 63)) + (v22 >> 6) - v6;
        if (v25 < v24)
        {
          v24 = 0;
        }

        a4[1] = a4[1] & 0x3FLL | ((v25 - v24) << 6);
        return;
      }

      if (!__OFADD__(v28, v6))
      {
        _HashTable.BucketIterator.currentValue.setter();
        goto LABEL_33;
      }

      __break(1u);
LABEL_39:
      *&v47 = a4;
      *(&v47 + 1) = a5;
      *&v48 = 0;
      *(&v48 + 1) = _HashTable.UnsafeHandle._startIterator(bucket:)();
      *&v49 = v30;
      *(&v49 + 1) = v31;
      v50 = 0;
      v43 = v47;
      v44 = v48;
      v45 = v49;
      v46 = v50;
      v32 = _HashTable.BucketIterator.currentValue.getter();
      if ((v33 & 1) == 0 && v32 >= v5)
      {
        if (__OFSUB__(v32, v6))
        {
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        _HashTable.BucketIterator.currentValue.setter();
      }

      _HashTable.BucketIterator.advance()();
      return;
    }

    v5 = a2;
    if (__OFSUB__(v10, a2))
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    if ((v10 - a2) >= MEMORY[0x1865CA180](*a4 & 0x3FLL) / 3)
    {
      goto LABEL_39;
    }

    if (v10 < v5)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if (v5 < 0)
    {
LABEL_65:
      __break(1u);
      return;
    }

    if (v10 != v5)
    {
      do
      {
        Hasher.init(_seed:)();

        _BPlistEncodingFormat.Reference.hash(into:)(&v43);
        v34 = Hasher._finalize()();
        v35 = 1 << *a4;
        v14 = __OFSUB__(v35, 1);
        v36 = v35 - 1;
        if (v14)
        {
          goto LABEL_57;
        }

        v37 = v36 & v34;
        v38 = _HashTable.UnsafeHandle._startIterator(bucket:)();
        *&v43 = a4;
        *(&v43 + 1) = a5;
        *&v44 = v37;
        *(&v44 + 1) = v38;
        *&v45 = v39;
        *(&v45 + 1) = v40;
        v46 = 0;
        while (*(&v44 + 1))
        {
          v47 = v43;
          v48 = v44;
          v49 = v45;
          v50 = v46;
          v41 = _HashTable.BucketIterator.currentValue.getter();
          if ((v42 & 1) == 0 && v41 == v5)
          {
            break;
          }

          _HashTable.BucketIterator.advance()();
        }

        _HashTable.BucketIterator.currentValue.setter();
      }

      while (++v5 != v10);
    }
  }
}

uint64_t specialized __PlistReferencingEncoderBPlist.init(referencing:at:codingPathNode:wrapping:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v53 = a6;
  v54[3] = &type metadata for _CodingKey;
  v48 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  v54[4] = v48;
  v15 = swift_allocObject();
  v54[0] = v15;
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  *(v15 + 32) = a4;
  *(v15 + 40) = a5;
  *(a8 + 96) = a1;

  v16 = _CodingKey.stringValue.getter(a2, a3, a4, a5);
  *(a8 + 104) = a7 | 0x8000000000000000;
  *(a8 + 112) = v16;
  *(a8 + 120) = v17;
  v18 = *(a1 + 32);
  v49 = *(a1 + 24);
  v51 = a1;
  v52 = v18;
  v50 = __swift_project_boxed_opaque_existential_1(v54, &type metadata for _CodingKey);
  v19 = type metadata accessor for Optional();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22.n128_f64[0] = MEMORY[0x1EEE9AC00](v19);
  v23 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v24 = off_1EEEEF548;
  (*(off_1EEEEF548 + 2))(&v48 - v23, v50, &type metadata for _CodingKey, v22);
  v25 = v24[7](&v48 - v23, 0, 1, &type metadata for _CodingKey);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v48 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v28);
  (*(v20 + 16))(&v48 - v23, &v48 - v23, v19, v29);
  if ((v24[6])(&v48 - v23, 1, &type metadata for _CodingKey) == 1)
  {
    v30 = v52;

    v31 = *(v20 + 8);
    v31(&v48 - v23, v19);
    v31(&v48 - v23, v19);
    v32 = v53;
    v33 = v53 >> 62;
    v34 = v53;
    if (v53 >> 62)
    {
LABEL_3:
      if (v33 != 1)
      {
        v42 = 0;
LABEL_14:
        v46 = v49;
        *(a8 + 16) = MEMORY[0x1E69E7CC0];
        *(a8 + 24) = v46;
        *(a8 + 32) = v30;
        *(a8 + 40) = v34;
        *(a8 + 48) = v42;
        specialized _BPlistEncodingFormat.init()(v55);
        v47 = v55[1];
        *(a8 + 56) = v55[0];
        *(a8 + 72) = v47;
        *(a8 + 88) = v56;
        __swift_destroy_boxed_opaque_existential_1(v54);
        return a8;
      }

      v32 &= 0x3FFFFFFFFFFFFFFFuLL;
      v35 = 32;
LABEL_13:
      v42 = *(v32 + v35);
      goto LABEL_14;
    }

LABEL_12:
    v35 = 64;
    goto LABEL_13;
  }

  v36 = v24[4];
  v36(v27, &v48 - v23, &type metadata for _CodingKey);
  v34 = swift_allocObject();
  v37 = v48;
  v34[5] = &type metadata for _CodingKey;
  v34[6] = v37;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v34 + 2);
  v36(boxed_opaque_existential_0, v27, &type metadata for _CodingKey);
  v30 = v52;

  result = (*(v20 + 8))(&v48 - v23, v19);
  v32 = v53;
  v34[7] = v53;
  v33 = v32 >> 62;
  if (!(v32 >> 62))
  {
    v41 = 64;
    v40 = v32;
LABEL_10:
    v43 = *(v40 + v41);
    v44 = __OFADD__(v43, 1);
    v45 = v43 + 1;
    if (!v44)
    {
      goto LABEL_11;
    }

    goto LABEL_17;
  }

  if (v33 == 1)
  {
    v40 = v32 & 0x3FFFFFFFFFFFFFFFLL;
    v41 = 32;
    goto LABEL_10;
  }

  v45 = 1;
  if (!__OFSUB__(v33, 1))
  {
LABEL_11:
    v34[8] = v45;
    if (v33)
    {
      goto LABEL_3;
    }

    goto LABEL_12;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t outlined copy of __PlistReferencingEncoderBPlist.Reference(uint64_t a1)
{
  if (a1 < 0)
  {
  }

  else
  {
  }
}

uint64_t getEnumTagSinglePayload for _BPlistEncodingFormat.Writer(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for _BPlistEncodingFormat.Writer(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _PlistUnkeyedEncodingContainerBPlist(uint64_t a1)
{
  return sub_180A4B470(a1);
}

{
  return sub_180A4B48C(a1);
}

uint64_t protocol witness for PlistDecodingMap.topObject.getter in conformance BPlistMap@<X0>(unint64_t *a1@<X8>)
{
  v3 = v1;
  v5 = *(v1 + 48);
  v6 = *(v1 + 64);

  os_unfair_lock_lock(v6 + 10);
  closure #1 in BPlistMap.loadValue(at:)(&v6[4], v5, v3, &v9);
  os_unfair_lock_unlock(v6 + 10);
  if (v2)
  {
  }

  v8 = v9;

  *a1 = v8;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance BPlistError(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (!v3)
  {
    return !v4;
  }

  if (v3 == 1)
  {
    return v4 == 1;
  }

  if (v4 < 2)
  {
    return 0;
  }

  if (*a1 != *a2 || v3 != v4)
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return 1;
}

uint64_t get_enum_tag_for_layout_string_10Foundation11BPlistErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for BPlistError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BPlistError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BPlistMap.DictionaryIterator(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 40))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for BPlistMap.DictionaryIterator(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = 0u;
      *(result + 24) = 0u;
    }
  }

  return result;
}